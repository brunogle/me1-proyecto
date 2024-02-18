import time

import neurokit2 as nk
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import serial.tools.list_ports
import serial

from scipy import signal

from agilent_33522a import Agilent_33522A


# Parametros de conexion

serial_device_str = "/dev/ttyACM0" # Puerto serie del electrocardiografo
arbitrary_generator_visa_str = "TCPIP::10.42.0.2" # VISA ID del generador arbitrario

# Parametros para medir

test_heart_rates = [50, 75, 100, 200, 250] # Frecuencia cardiaca (BPM)
test_amplitudes = [0.002, 0.005, 0.01, 0.02, 0.1] #Amplitudes (pico a pico)
samples_per_test = 10
sample_duration = 10 # Duracion de muestras en segundos

# Sistema de archivos

output_folder = "./calibration_data"



def setup_arb_ecg(arb_instrument, heart_rate, amplitude, sample_rate = 2000):
    '''
    Crea una coneccion con el generador de ondas arbitrario Agilent 33522A
    y lo configura para generar una señal ECG de una determinada frecuencia
    y amplitud

    Parametros:
    arb_instrument: Objeto de comunicacion con el generador arbitrario
    heart_rate: frecuencia cardiaca en BPM
    amplitude: amplitud pico en volts
    sample_rate=2000: frecuencia de muestreo de salida

    Retorna: None
    '''
    
    ecg_signal = custom_generate_ecg(heart_rate, sample_rate)
    arb_instrument.load_arb_waveform(ecg_signal)
    arb_instrument.start_arb_wave(sample_rate, amplitude)


def custom_generate_ecg(heart_rate, sampling_rate, noise=0, heart_rate_std=0):
    '''
    Genera una vector de una señal ECG de una determinada frecuencia cardiaca,
    frecuencia de muestreo, ruido y desviacion de frecuencia cardiaca. El vector
    contiene solamente un pulso cardiaco.

    Parametros:

    heart_rate: freucencia cardiaca en BMP
    sampling_rate: frecuencia de muestro
    noise=0: ruido de la señal
    heart_rate_std=0: desviacion de frecuencia cardiaca

    Retorna: Vector de largo (60*sampling_rate)/heart_rate conteniendo la señal
    '''
    # Sacar los primeros segundos de la simulacion para dejar que la señal llegue a un valor de DC fijo
    dead_time_start = 5

    ti = (-70, -15, 0, 15, 100)
    ai = (1.2, -5, 30, -7.5, 0.75)
    bi = (0.25, 0.1, 0.1, 0.1, 0.4)

    sig = nk.ecg_simulate(duration=int(np.ceil(5/heart_rate)) + dead_time_start,
                                    noise=noise,
                                    heart_rate=heart_rate,
                                    sampling_rate=sampling_rate,
                                    heart_rate_std=heart_rate_std,
                                    ai=ai, bi=bi, ti=ti)
    
    sig = sig[-int((60*sampling_rate)/heart_rate):] # Me quedo solamente con el ultimo periodo

    sig = sig - np.mean(sig) # Remuevo la componente DC

    return sig



def read_from_serial(serial_device, duration):
    '''
    Crea una conexion a un puerto serie al electrocardiografo y lee por una cierta
    cantidad de tiempo.

    Parametros:

    serial_device_str: puerto serie (str)
    duration: duracion en segundos

    Retorna: Vector de lecturas
    '''

    

    start_time = time.time()

    v = []

    serial_device.reset_input_buffer()
    serial_device.flushInput()
    serial_device.readline()
    while time.time() < start_time + duration:
        if serial_device.in_waiting > 30:
           #try:
            serial_data = serial_device.readline()

            try:
                adc_count = int(serial_data.decode('utf-8').replace("\x00", "").strip())
            except Exception as e:
                pass

            if adc_count > 0x7FFF:
                continue

            voltage = 4.096*adc_count/0x7FFF


            v += [voltage]

            #except Exception as e:
                #pass
        

    #Descarto primer segundo, puede ser erronea
    #v = v[1000:]

    return v




num_heart_rates = len(test_heart_rates)
num_amplitudes = len(test_amplitudes)



# Inicio comunicacion serie
serial_device = serial.Serial(serial_device_str, baudrate=115200)


# Inicio comunicacion VISA
agilent_33522a_instr = Agilent_33522A()
agilent_33522a_instr.connect_to_inst(arbitrary_generator_visa_str)
agilent_33522a_instr.reset()


# Contador total de 
i_run = 0
num_tests = num_amplitudes*num_heart_rates*samples_per_test

#  Inicio de mediciones
for i_sample in range(samples_per_test):

    # Iterar por todas las combinaciones de frecuencias cardiacas y amplitudes
    for i_amp, amplitude in zip(range(num_amplitudes), test_amplitudes):
        for i_rate, heart_rate in zip(range(num_heart_rates), test_heart_rates):
            
            i_run += 1
            print("Testing:  Sample " + str(i_sample+1) + "  -  " + str(heart_rate) + "BPM  @" + str(1000*amplitude) + "mV     " + str(i_run) + "/" + str(num_tests))

            setup_arb_ecg(agilent_33522a_instr, heart_rate, amplitude)
            
            time.sleep(1) # Aseguro que la señal del generador este estable

            v =  read_from_serial(serial_device, sample_duration)
            
            
            with open(output_folder + "/" + str(i_sample+1) + "-"  + str(heart_rate) + "-" + str(amplitude) + ".txt", "w") as f:
                for x in v:
                    f.write(str(x) + '\n')


# Cierro comunicaciones
serial_device.close()
agilent_33522a_instr.close()
