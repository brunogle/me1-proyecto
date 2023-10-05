EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ADS1294_PAG_64
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ADS1294_PAG_64 U1
U 1 1 5B8D8034
P 4055 2315
F 0 "U1" H 5855 2715 60  0000 C CNN
F 1 "ADS1294_PAG_64" H 5855 2615 60  0000 C CNN
F 2 "ADS1294-lib:ADS1294_PAG_64" H 5855 2555 60  0001 C CNN
F 3 "" H 4055 2315 60  0000 C CNN
	1    4055 2315
	1    0    0    -1  
$EndComp
Text Label 4205 1765 0    60   ~ 0
AVDD
Wire Wire Line
	7655 3115 7795 3115
Wire Wire Line
	7795 3115 7795 1765
Wire Wire Line
	7795 1765 3880 1765
Wire Wire Line
	3880 1765 3880 3015
Wire Wire Line
	3880 3015 4055 3015
Wire Wire Line
	3880 2915 4055 2915
Connection ~ 3880 2915
Wire Wire Line
	3880 2815 4055 2815
Connection ~ 3880 2815
Wire Wire Line
	4055 2715 3880 2715
Connection ~ 3880 2715
Wire Wire Line
	4055 2615 3880 2615
Connection ~ 3880 2615
Wire Wire Line
	4055 2515 3880 2515
Connection ~ 3880 2515
Wire Wire Line
	4055 2415 3880 2415
Connection ~ 3880 2415
Wire Wire Line
	4055 2315 3880 2315
Connection ~ 3880 2315
Wire Wire Line
	4055 4115 3880 4115
Wire Wire Line
	3880 3010 3880 4415
Connection ~ 3880 3010
Wire Wire Line
	3880 4315 4055 4315
Connection ~ 3880 4115
Wire Wire Line
	3880 4415 4055 4415
Connection ~ 3880 4315
Wire Wire Line
	7655 2815 7795 2815
Wire Wire Line
	7795 2815 7795 2810
Connection ~ 7795 2810
Wire Wire Line
	7895 3015 7655 3015
Wire Wire Line
	7895 1630 7895 3015
Wire Wire Line
	7895 2915 7655 2915
Wire Wire Line
	4055 4215 3745 4215
Wire Wire Line
	3745 1630 3745 5415
Wire Wire Line
	3745 4515 4055 4515
Wire Wire Line
	3745 5415 4055 5415
Connection ~ 3745 4515
Wire Wire Line
	7895 1630 3745 1630
Connection ~ 3745 4215
Connection ~ 7895 2915
Wire Wire Line
	7655 3615 7765 3615
Wire Wire Line
	7765 3615 7765 3815
Wire Wire Line
	7765 3815 7655 3815
Wire Wire Line
	7655 5415 7765 5415
Wire Wire Line
	7765 5415 7765 3810
Connection ~ 7765 3810
Wire Wire Line
	7655 3715 7885 3715
Wire Wire Line
	7885 3715 7885 3915
Wire Wire Line
	7885 3915 7655 3915
Text Label 5090 1630 0    60   ~ 0
AVSS
Text Label 7765 5035 0    60   ~ 0
DGND
Text Label 7870 3715 0    60   ~ 0
DVDD
$EndSCHEMATC
