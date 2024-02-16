import sys

from PyQt5 import QtCore, QtWidgets
from PyQt5.QtWidgets import QApplication, QMainWindow, QWidget, QVBoxLayout
from PyQt5.uic import loadUi

from pyqtgraph import PlotWidget
import pyqtgraph as pg


import serial.tools.list_ports
import serial

import numpy as np

from scipy import signal


class QtGraphWidget(QWidget):
    def __init__(self, parent=None):
        super(QtGraphWidget, self).__init__(parent)

        self.plotWidget = PlotWidget(self)

        layout = QVBoxLayout(self)
        layout.addWidget(self.plotWidget)




class MainWindow(QMainWindow):
    def __init__(self):
        super(MainWindow, self).__init__()
        loadUi('plotter.ui', self)

        pg.setConfigOption('background', 'w')
        pg.setConfigOption('foreground', 'k')


        self.sample_rate = 500

        self.amp_calibration = 0.969
        self.time_calibration = 1.01692

        self.amp_gain = 8.631*4

        self.running_time = 0
        
        self.serial_device = None

        self.corrected_sr = self.sample_rate*self.time_calibration


        # QtGraph create
        self.signal_plot = QtGraphWidget(self.signal_plot_widget)

        # Serial device ComboBox init
        self.serial_device_comboBox.installEventFilter(self)

        # Serial device connect button init
        self.serial_connect_pushButton.clicked.connect(self.connect_serial)


        self.pause_pushButton.clicked.connect(self.pause_resume)

        self.interval_ok_pushButton.clicked.connect(self.update_interval)

        # Signal plot data
        self.n_data_max = 500
        self.update_interval()
        self.xdata = []
        self.ydata = []
        self.filtered_ydata = []

        # Signal plot init
        self.signal_plot.setFixedWidth(self.signal_plot_widget.width())
        self.signal_plot.setFixedHeight(self.signal_plot_widget.height())
  
        self.signal_plot.plotWidget.setMouseEnabled(x=False, y=False)
        self.signal_plot.plotWidget.setXRange(0, self.n_data_max, padding=0)
        self.signal_plot.plotWidget.setYRange(-200, 200, padding=0)
        self.signal_plot.plotWidget.getAxis('bottom').setLabel(text='Tiempo (ms)')
        self.signal_plot.plotWidget.getAxis('left').setLabel(text='Tension Electrodos(mV)')
        self.signal_plot.plotWidget.showGrid(True, True)
         
        self.plot_item = self.signal_plot.plotWidget.plot(self.xdata, self.ydata, pen=pg.mkPen(color='b', width=5))
        

        # Serial data read timer


        self.timer = QtCore.QTimer()
        self.timer.setInterval(20)
        self.timer.timeout.connect(self.update_plot)
        self.timer.start()

        self.filt_coef = signal.butter(2, [0.5, 200], btype='bandpass', analog=False, output='sos', fs=self.corrected_sr)
        self.notch_filt_coef = signal.tf2sos(*signal.iirnotch(50, 2, fs=self.corrected_sr))

        self.filt_z = signal.sosfilt_zi(self.filt_coef)
        self.notch_filt_z = signal.sosfilt_zi(self.notch_filt_coef)

        self.ydata = np.zeros(self.n_data_max)
        self.xdata = [1000*x/self.corrected_sr for x in range(self.n_data_max)]

    # Function executed when connect button is pressed
    def connect_serial(self):
        if self.serial_device is None:
            selected_comport = self.serial_device_comboBox.currentText()
            self.serial_device = serial.Serial(selected_comport, baudrate=115200)
            if self.serial_device.is_open:
                self.serial_connect_pushButton.setText("Desconectar")
        else:
            self.serial_device.close()
            self.serial_device = None
            self.serial_connect_pushButton.setText("Conectar")
    
    # Function executed periodically to read data and update plot


    def update_plot(self):
        new_timestamps = []
        new_values = []
        
        if self.serial_device is not None:
            if self.serial_device.isOpen():

                while self.serial_device.in_waiting > 10:
                    adc_reading = self.amp_calibration*4096*float(self.serial_device.readline().decode("utf-8").replace('\x00', '').replace('\n', '').replace('\r', ''))/0x7FFF/self.amp_gain

                    
                    filtered_adc_reading1, self.filt_z = signal.sosfilt(self.filt_coef, [adc_reading], zi=self.filt_z)
                    filtered_adc_reading2, self.notch_filt_z = signal.sosfilt(self.notch_filt_coef, filtered_adc_reading1, zi=self.notch_filt_z)

                    new_values += list(filtered_adc_reading2)
                    new_timestamps += [self.running_time]
                    

                    self.running_time += 1
                
                #self.xdata += new_timestamps
                self.ydata = self.ydata[len(new_values):]
                self.ydata = np.append(self.ydata, new_values)

                if len(self.xdata) > self.n_data_max:
                    #self.xdata = self.xdata[-self.n_data_max:]
                    self.ydata = self.ydata[-self.n_data_max:]

                self.plot_item.setData(self.xdata, self.ydata)
                if(len(self.xdata) > 0):
                    self.signal_plot.plotWidget.setXRange(self.xdata[0], self.xdata[-1], padding=0)

            ymax = np.max(self.ydata)
            ymin = np.min(self.ydata)
            self.midpoint = (ymax + ymin)/2
            self.signal_plot.plotWidget.setYRange(ymin - 0.5*abs(ymin), ymax + 0.5*abs(ymax), padding=0)

                

    # Function called when combo box is opened
    def populate_serial_combobox(self):
        prev_port_selected = self.serial_device_comboBox.currentText()
        ports = serial.tools.list_ports.comports()
        self.serial_device_comboBox.clear()

        for port, desc, hwid in sorted(ports):
            self.serial_device_comboBox.addItem(port)
            if port == prev_port_selected:
                self.serial_device_comboBox.setCurrentIndex(self.serial_device_comboBox.count()-1)

    def eventFilter(self,target,event):
        if target == self.serial_device_comboBox and event.type() == QtCore.QEvent.MouseButtonPress:
            self.populate_serial_combobox()
        return super(MainWindow, self).eventFilter(target, event)

    def pause_resume(self):
        if self.timer.isActive():
            self.timer.stop()
            self.pause_pushButton.setText("Resumir")
        else:
            self.serial_device.read_all()
            self.timer.start()
            self.pause_pushButton.setText("Pausar")

    def update_interval(self):
        self.n_data_max = int(self.interval_doubleSpinBox.value()*self.corrected_sr)
        self.xdata = [1000*x/self.corrected_sr for x in range(self.n_data_max)]
        self.ydata = np.zeros(self.n_data_max)

if __name__ == "__main__":
    app = QApplication(sys.argv)
    main_window = MainWindow()
    main_window.show()
    sys.exit(app.exec_())
