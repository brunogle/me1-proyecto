from os import listdir
from os.path import isfile, join
import re
import matplotlib.pyplot as plt
from mpl_toolkits.axes_grid1 import make_axes_locatable
import matplotlib as mpl
import neurokit2 as nk
import numpy as np
import pickle
import warnings
from scipy import signal


# Ubicación de los datos producidos por acquire_calibration_data.py
data_folder = "./calibration_data"


# Cantidad de muestras por cada tipo de parametros usadas para la calibracion
# El resto se utilizan para probar la calibracion.abs
calib_sample_size = 5 


sample_rate = 500 # Frecuencia de muestreo teorico del ADC

amp_gain = 8.631 # Ganancia teorica de la etapa analogica



progress = False

calib_pickle_file = "./pickles/calib_labeled_measurements.pickle" 
test_pickle_file = "./pickles/test_labeled_measurements.pickle"

update_measurement_pickles = True



def filter_signal(waveform):

    bandpass_filt_coef = signal.butter(2, [0.5, 100], btype='bandpass', output='sos', fs=sample_rate)
    notch_filt_coef = signal.tf2sos(*signal.iirnotch(50, 2, fs=sample_rate))


    zi1 = np.mean(waveform[:])*signal.sosfilt_zi(bandpass_filt_coef)

    waveform_filt1, zo = signal.sosfilt(bandpass_filt_coef, waveform, zi=zi1)

    zi2 = np.mean(waveform_filt1[:])*signal.sosfilt_zi(notch_filt_coef)

    waveform_filt2, zo = signal.sosfilt(notch_filt_coef, waveform_filt1, zi=zi2)

    return waveform_filt2


def read_file(filename):

    data = []

    with open(filename, 'r') as file:
        data = np.array([float(line) for line in file])
    
    return data

def read_all_waveforms(folder):
    filenames = [join(folder, f) for f in listdir(folder) if isfile(join(folder, f))]

    calib_labeled_data = []
    test_labeled_data = []

    for filename in filenames:
        split_filename = re.split('/|-|.txt', filename)
        sample_num = int(split_filename[-4])
        heart_rate = float(split_filename[-3])
        amplitude = float(split_filename[-2])
        if progress:
            print("Reading " + str(heart_rate) + "BMP @" + str(amplitude) + "Vp")
        data = read_file(filename)

        if sample_num <= calib_sample_size:
            calib_labeled_data.append({"heart_rate":heart_rate, "amplitude":amplitude, "data":data})
        else:   
            test_labeled_data.append({"heart_rate":heart_rate, "amplitude":amplitude, "data":data})

    return calib_labeled_data, test_labeled_data

def analyze_ecg(waveform, sample_rate, time_correcction=1, amp_correction=1):


    waveform_corrected = waveform*amp_correction/amp_gain

    corrected_sample_rate = sample_rate*time_correcction

    waveform_filt = filter_signal(waveform_corrected)

    #signal = signal - np.min(signal)
    # amplitude = np.sqrt(np.mean(signal**2)) #RMS

    with warnings.catch_warnings(action='ignore'):
        ecg_data, _ = nk.ecg_process(waveform_filt, sampling_rate=corrected_sample_rate, method='engzeemod2012')

    p_peak_pos = np.where(ecg_data.loc[:,"ECG_P_Peaks"])
    r_peak_pos = np.where(ecg_data.loc[:,"ECG_R_Peaks"])
    s_peak_pos = np.where(ecg_data.loc[:,"ECG_S_Peaks"])
    t_peak_pos = np.where(ecg_data.loc[:,"ECG_T_Peaks"])

    heart_rate = np.mean(ecg_data.loc[:,"ECG_Rate"][r_peak_pos[0][2]:])

    r_peak_amp = [waveform_filt[i] for i in r_peak_pos]
    s_peak_amp = [waveform_filt[i] for i in s_peak_pos]

    amplitude = (np.mean(r_peak_amp) - np.mean(s_peak_amp))

    
    # print(amplitude/8.631)
    # plt.plot(waveform_filt)
    # plt.plot([0, len(waveform_filt)], [np.mean(r_peak_amp), np.mean(r_peak_amp)])
    # plt.plot([0, len(waveform_filt)], [np.mean(s_peak_amp), np.mean(s_peak_amp)])
    # plt.show()
    

    return heart_rate, amplitude


def analyze_labeled_data(labeled_data, sample_rate, time_correcction=1, amp_correction=1):

    labeled_measurements = {}

    i = 0
    for data in labeled_data:
        i += 1

        if progress:
            print("Analyzing " + str(i) + "/" + str(len(labeled_data)) + "   "  + str(data['heart_rate']) + "BMP @" + str(data['amplitude']) + "Vp")
        
        heart_rate, amplitude = analyze_ecg(data["data"], sample_rate, time_correcction, amp_correction)

        if (data['heart_rate'],data['amplitude']) not in labeled_measurements:
            labeled_measurements[(data['heart_rate'],data['amplitude'])] = []

        labeled_measurements[(data['heart_rate'],data['amplitude'])].append({"heart_rate_meas":heart_rate,
                                                                             "amplitude_meas":amplitude})

    return labeled_measurements

def plot_error_maps(heart_rate_error_map, amplitude_error_map, heart_rates, amplitudes, title=""):

    # Subplots


    fig, ax = plt.subplots(1,2, figsize=(12, 5.3))

    fig.suptitle(title, fontsize=20)

    # Images
    peak_value1 = np.max(np.abs(heart_rate_error_map))
    peak_value2 = np.max(np.abs(amplitude_error_map))

    cmap_norm1 = mpl.colors.Normalize(vmin=-peak_value1, vmax=peak_value1)
    cmap_norm2 = mpl.colors.Normalize(vmin=-peak_value2, vmax=peak_value2)

    im1 = ax[0].imshow(heart_rate_error_map, cmap=mpl.cm.ScalarMappable(norm=cmap_norm1, cmap='RdBu_r').get_cmap(), vmin=-peak_value1, vmax=peak_value1)
    im2 = ax[1].imshow(amplitude_error_map, cmap=mpl.cm.ScalarMappable(norm=cmap_norm2, cmap='RdBu_r').get_cmap(), vmin=-peak_value2, vmax=peak_value2)


    # Tick labels
    ax[0].set_xticks(np.arange(len(heart_rates)), labels=heart_rates)
    ax[0].set_yticks(np.arange(len(amplitudes)), labels=amplitudes)
    ax[1].set_xticks(np.arange(len(heart_rates)), labels=heart_rates)
    ax[1].set_yticks(np.arange(len(amplitudes)), labels=amplitudes)

    plt.setp(ax[0].get_xticklabels(), rotation=45, ha="right", rotation_mode="anchor")
    plt.setp(ax[1].get_xticklabels(), rotation=45, ha="right", rotation_mode="anchor")

    # Center text

    for i in range(len(heart_rates)):
        for j in range(len(amplitudes)):
            ax[0].text(j, i, round(heart_rate_error_map[i, j], 2), ha="center", va="center", color="darkgray")
            ax[1].text(j, i, round(amplitude_error_map[i, j], 2), ha="center", va="center", color="darkgray")

    # Axis titles
    ax[0].set_xlabel('Frecuencia Cardíaca (BPM)')
    ax[0].set_ylabel('Amplitud (Vpp)')
    ax[1].set_xlabel('Frecuencia Cardíaca (BPM)')
    ax[1].set_ylabel('Amplitud (Vpp)')

    # Titles
    ax[0].set_title("Error Frecuencia Cardíaca")
    ax[1].set_title("Error Amplitud R-S")



    # Create colorbar

    cbar_kwargs={
        "shrink": 1,
        "aspect": 30,
        "fraction": 0.2,
        "pad": 0.3,
        "anchor": (0,0.5),
        "location": "right"
    }

    divider1 = make_axes_locatable(ax[0])
    cax1 = divider1.append_axes("right", size="5%", pad=0.1)
    cbar1 = fig.colorbar(im1, cax=cax1, label="Error (%)", **cbar_kwargs)
    #cbar1.ax.set_ylabel("Error (%)", rotation=-90, va="bottom")

    divider2 = make_axes_locatable(ax[1])
    cax2 = divider2.append_axes("right", size="5%", pad=0.1)
    cbar2 = fig.colorbar(im2, cax=cax2, label="Error (%)", **cbar_kwargs)
    #cbar2.ax.set_ylabel("Error (%)", rotation=-90, va="bottom")


    fig.tight_layout()
    #plt.show()

def calculate_error_maps(labeled_measurements):


    heart_rates = sorted(list({x[0] for x in labeled_measurements.keys()}))
    amplitudes = sorted(list({x[1] for x in labeled_measurements.keys()}))

    heart_rate_error_map = np.ndarray((len(heart_rates), len(amplitudes)))
    amplitude_error_map = np.ndarray((len(heart_rates), len(amplitudes)))

    for hr, hr_i in zip(heart_rates, range(len(heart_rates))):
        for amp, amp_i in zip(amplitudes, range(len(amplitudes))):
            hr_meas_list = [measurement['heart_rate_meas'] for measurement in labeled_measurements[(hr,amp)]]
            amp_meas_list = [measurement['amplitude_meas'] for measurement  in labeled_measurements[(hr,amp)]]


            hr_meas = np.mean(hr_meas_list)
            amp_meas = np.mean(amp_meas_list)

            heart_rate_error_map[amp_i][hr_i] = 100*hr_meas/hr - 100
            amplitude_error_map[amp_i][hr_i] = 100*amp_meas/amp - 100

    return heart_rate_error_map, amplitude_error_map



######## COMPIENZO DE EJECUCION #########


# Realizo mediciones si hay que generar los pickes, si no leo directamente los valores de los pickles

calib_labeled_measurements = None
test_labeled_measurements = None

if update_measurement_pickles:
    calib_data, test_data = read_all_waveforms(data_folder)
    calib_labeled_measurements = analyze_labeled_data(calib_data, sample_rate)
    with open(calib_pickle_file, 'wb') as labeled_measurements_pickle_calib:
        pickle.dump(calib_labeled_measurements, labeled_measurements_pickle_calib)


else:
    with open(calib_pickle_file, 'rb') as labeled_measurements_pickle_calib:
        calib_labeled_measurements = pickle.load(labeled_measurements_pickle_calib)





# Calcular errores de dataset de calibracion y grafico

heart_rate_error_map, amplitude_error_map = calculate_error_maps(calib_labeled_measurements)

heart_rates = sorted(list({x[0] for x in calib_labeled_measurements.keys()}))
amplitudes = sorted(list({x[1] for x in calib_labeled_measurements.keys()}))

plot_error_maps(heart_rate_error_map, amplitude_error_map, heart_rates, amplitudes, title="")

# Calculo factores de correccion y su incertidumbres

hr_error_list = []
amp_error_list = []

for items in calib_labeled_measurements.items():
    for sample in items[1]:
        hr_error_list.append(items[0][0]/sample["heart_rate_meas"])
        amp_error_list.append(items[0][1]/(sample["amplitude_meas"]))


hr_calibration = np.mean(hr_error_list)
amp_calibration = np.mean(amp_error_list)

k = 2

print("Factor correccion temporal: " + str(round(hr_calibration,10)) + " ± " + str(round(k*np.std(hr_error_list),6))
                                     + "  (k=" + str(k) + "  nu=" + str(len(hr_error_list)-1) + ")")


print("Factor correccion amplitud: " + str(round(amp_calibration,10)) + " ± " + str(round(k*np.std(amp_error_list),6))
                                     + "  (k=" + str(k) + "  nu=" + str(len(amp_error_list)-1) + ")")



if update_measurement_pickles:
    test_labeled_measurements = analyze_labeled_data(test_data, sample_rate, hr_calibration, amp_calibration)

    with open(test_pickle_file, 'wb') as labeled_measurements_pickle_calib:
        pickle.dump(test_labeled_measurements, labeled_measurements_pickle_calib)
else:
    with open(test_pickle_file, 'rb') as labeled_measurements_pickle_test:
        test_labeled_measurements = pickle.load(labeled_measurements_pickle_test)

# Corrigo el dataset de prueba con los factores de calibracion

calibrated_labeled_measurements_test = dict((key,[]) for key in test_labeled_measurements.keys())
for items in test_labeled_measurements.items():
    for sample in items[1]:
        calibrated_labeled_measurements_test[items[0]].append({"heart_rate_meas":sample["heart_rate_meas"],
                                                               "amplitude_meas":sample["amplitude_meas"]})
            

# Genero mapa de error de dataset de prueba calibrado

calibrated_heart_rate_error_map, calibrated_amplitude_error_map = calculate_error_maps(calibrated_labeled_measurements_test)

plot_error_maps(calibrated_heart_rate_error_map, calibrated_amplitude_error_map, heart_rates, amplitudes, title="")


plt.show()



input()
