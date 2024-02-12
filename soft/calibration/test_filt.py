
import numpy as np
from scipy import signal
import matplotlib.pyplot as plt



filename = './calibration_data_2024-02-08/1-100-0.002.txt'

sample_rate=500

def read_file(filename):

    data = []

    with open(filename, 'r') as file:
        data = [float(line) for line in file]
    
    return data


x = read_file(filename)#(np.arange(250) < 100).astype(int)

'''

sos = signal.bessel(2, 80, output='sos', fs=sample_rate)
zi = np.mean(x[:100])*signal.sosfilt_zi(sos)
f1 = signal.sosfilt(sos, x)
f2, zo = signal.sosfilt(sos, x, zi=zi)
plt.plot(x, 'k--', label='x')
plt.plot(f1, 'b', alpha=0.5, linewidth=2, label='filtered')
plt.plot(f2, 'g', alpha=0.25, linewidth=4, label='filtered with zi')
plt.legend(loc='best')
plt.show()

'''
import pickle
import numpy as np
import neurokit2 as nk
from os import listdir, remove
from os.path import isfile, join
import re
import warnings
import matplotlib.pyplot as plt
from scipy import signal

warnings.filterwarnings("ignore")

labeled_measurements = []


x = []
with open('../plotter/bruno_ecg.txt', 'rb') as f:
    x = pickle.load(f)


bandpass_filt_coef = signal.butter(2, [0.5,100], btype='bandpass', output='sos', fs=sample_rate)
notch_filt_coef = signal.tf2sos(*signal.iirnotch(50, 2, fs=sample_rate))


zi1 = np.mean(x[:100])*signal.sosfilt_zi(bandpass_filt_coef)
zi2 = np.mean(x[:100])*signal.sosfilt_zi(notch_filt_coef)

waveform_filt1, zo = signal.sosfilt(notch_filt_coef, x, zi=zi2)
waveform_filt2, zo = signal.sosfilt(bandpass_filt_coef, waveform_filt1, zi=zi1)

waveform_filt2 = waveform_filt2[1050:1450]
waveform_filt2 = waveform_filt2 - np.mean(waveform_filt2)

waveform_filt1 = waveform_filt1[1050:1450]
waveform_filt1 = waveform_filt1 - np.mean(waveform_filt1)

x = x[1050:1450]
x = x - np.mean(x)

t = np.linspace(0, 1000*len(x)/sample_rate, num=len(x))


plt.xlabel("Tiempo (ms)")
plt.ylabel("Amplitud (u.a.)")
plt.grid()
plt.plot(t, x, label="Tensión Medida")
plt.plot(t, waveform_filt1, label="Tension filtro pasa banda")
plt.plot(t, waveform_filt2, label="Tensión con ambos filtros")
plt.legend()
plt.show()

