import pyvisa
import numpy as np

class Agilent_33522A():

    def __init__(self):
        self.rm = pyvisa.ResourceManager()
        self.instr = None

    def connect_to_inst(self, visa_str):
        self.instr = self.rm.open_resource(visa_str)

    def reset(self):
        self.instr.write("*RST")

    def load_arb_waveform(self, waveform_points):
        #Normalizo la waveform para que el valor pico sea +1 o -1
        max_abs = np.max(np.abs(waveform_points))

        waveform_points /= max_abs

        self.instr.write("SOUR:DATA:VOL:CLE")

        command_str = "SOUR:DATA:ARB ECG_CALIB "

        for point in waveform_points:
            command_str += ","
            command_str += str(point)
            
        self.instr.write(command_str)

    def start_arb_wave(self, sampling_rate, peak_voltage):

        self.instr.write("OUTP1:LOAD INF")
        self.instr.write("SOUR1:FUNC ARB")
        self.instr.write("SOUR1:FUNC:ARB:SRAT " + str(sampling_rate))
        self.instr.write("SOUR1:FUNC:ARB ECG_CALIB")
        self.instr.write("SOUR1:VOLT:UNIT VPP")
        self.instr.write("SOUR1:VOLT " + str(peak_voltage))
        self.instr.write("OUTP1 ON")

    def close(self):
        self.instr.close()

