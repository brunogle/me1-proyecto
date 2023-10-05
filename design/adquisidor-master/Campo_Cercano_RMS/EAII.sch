EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
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
L FrontEnd-rescue:POT-RESCUE-FrontEnd RV4
U 1 1 5BAB103A
P 6550 3570
F 0 "RV4" H 6550 3470 50  0000 C CNN
F 1 "10K" H 6550 3570 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Trimmer_Bourns_3269W" H 6550 3570 50  0001 C CNN
F 3 "3269 - 1/4 ” Square SMD Trimpot ® Trimming Potentiometer" H 6550 3570 50  0001 C CNN
F 4 "3269W-1-103GLF" H 6550 3570 60  0001 C CNN "Part N"
F 5 "Bourns Inc." H 6550 3570 60  0001 C CNN "Fab"
F 6 "3269W-1-103GLFCT-ND" H 6550 3570 60  0001 C CNN "DigiKey"
	1    6550 3570
	0    1    1    0   
$EndComp
Text Label 2070 2775 0    60   ~ 0
signal_IN
Text Label 5230 3475 0    60   ~ 0
signal_OUT
$Comp
L FrontEnd-rescue:C C26
U 1 1 5BAB10B9
P 6920 4575
F 0 "C26" H 6945 4675 50  0000 L CNN
F 1 "100nF 10V" H 6685 4445 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6958 4425 50  0001 C CNN
F 3 "" H 6920 4575 50  0000 C CNN
F 4 "06033C104KAT4A" H 6920 4575 60  0001 C CNN "Part N"
F 5 "AVX Corporation" H 6920 4575 60  0001 C CNN "Fab"
F 6 "478-7018-2-ND" H 6920 4575 60  0001 C CNN "DigiKey"
	1    6920 4575
	1    0    0    -1  
$EndComp
$Comp
L FrontEnd-rescue:POT-RESCUE-FrontEnd RV6
U 1 1 5BAB10C6
P 7820 4715
F 0 "RV6" H 7820 4615 50  0000 C CNN
F 1 "200K" H 7820 4715 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Trimmer_Vishay_TS53YJ" H 7820 4715 50  0001 C CNN
F 3 "5 mm Square Surface Mount Miniature Trimmers Single-Turn Cermet Sealed" H 7820 4715 50  0001 C CNN
F 4 "TS53YL204MR10" H 7820 4715 60  0001 C CNN "Part N"
F 5 "Vishay Sfernice" H 7820 4715 60  0001 C CNN "Fab"
F 6 "TS53YL-200KCT-ND" H 7820 4715 60  0001 C CNN "DigiKey"
	1    7820 4715
	-1   0    0    1   
$EndComp
Text Notes 1895 4495 0    60   ~ 0
Grid = 5mills
Text Label 3220 3275 0    60   ~ 0
GRD
$Comp
L FrontEnd-rescue:R R15
U 1 1 5BAB112A
P 8710 3335
F 0 "R15" V 8790 3335 50  0000 C CNN
F 1 "10K 1%" V 8640 3335 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8640 3335 50  0001 C CNN
F 3 "" H 8710 3335 50  0000 C CNN
F 4 "CRG0603F10K" V 8710 3335 60  0001 C CNN "Part N"
F 5 "TE Connectivity Passive Product" V 8710 3335 60  0001 C CNN "Fab"
F 6 "A106048TR-ND" V 8710 3335 60  0001 C CNN "DigiKey"
	1    8710 3335
	0    1    1    0   
$EndComp
$Comp
L FrontEnd-rescue:TLC2272_D_8 U7
U 1 1 5BAB1133
P 7325 3670
F 0 "U7" H 7685 3915 60  0000 C CNN
F 1 "TLC2272_D_8" H 9525 3105 60  0000 C CNN
F 2 "TLC2272-lib:TLC2272_D_8" H 8725 3910 60  0001 C CNN
F 3 "" H 7325 3670 60  0000 C CNN
F 4 "TLC2272ACDR" H 7325 3670 60  0001 C CNN "Part N"
F 5 "Texas Instruments" H 7325 3670 60  0001 C CNN "Fab"
F 6 "296-1303-1-ND" H 7325 3670 60  0001 C CNN "DigiKey"
	1    7325 3670
	1    0    0    -1  
$EndComp
Text Notes 7085 2595 0    60   ~ 0
Deje como opcion para la R que convierte corriente\nen tension una R fija y el preset+trimmpot\nLa segunda etapa habria que modificarla para que\ntambien invierta, asi compensa con la primera
Text HLabel 9495 4340 0    60   Output ~ 0
VoRMS
Text HLabel 5130 3275 2    60   Input ~ 0
GRD2
$Comp
L FrontEnd-rescue:-3V3A #PWR010
U 1 1 5BB4D9C6
P 6900 3810
F 0 "#PWR010" H 6900 3660 50  0001 C CNN
F 1 "-3V3A" H 6900 3950 50  0000 C CNN
F 2 "" H 6900 3810 50  0000 C CNN
F 3 "" H 6900 3810 50  0000 C CNN
	1    6900 3810
	1    0    0    -1  
$EndComp
$Comp
L FrontEnd-rescue:JUMPER3 JP6
U 1 1 5BB62729
P 6205 3980
F 0 "JP6" H 6255 3880 50  0000 L CNN
F 1 "JUMPER3" H 6205 4080 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.00mm" H 6205 3980 50  0001 C CNN
F 3 "" H 6205 3980 50  0000 C CNN
	1    6205 3980
	1    0    0    -1  
$EndComp
$Comp
L FrontEnd-rescue:VCOM #PWR013
U 1 1 5BBE0BFE
P 10830 3920
F 0 "#PWR013" H 10830 3770 50  0001 C CNN
F 1 "VCOM" H 10830 4070 50  0000 C CNN
F 2 "" H 10830 3920 50  0000 C CNN
F 3 "" H 10830 3920 50  0000 C CNN
	1    10830 3920
	1    0    0    -1  
$EndComp
NoConn ~ 3470 3475
Wire Wire Line
	8560 3335 7305 3335
Wire Wire Line
	10830 3970 10830 3920
Wire Wire Line
	10745 3970 10830 3970
Wire Wire Line
	10390 4390 10390 4455
Connection ~ 10390 3970
Wire Wire Line
	10390 4090 10390 3970
Wire Wire Line
	10125 3970 10390 3970
Connection ~ 10620 3770
Wire Wire Line
	10620 3770 10575 3770
Wire Wire Line
	10620 3870 10125 3870
Connection ~ 5445 3675
Wire Wire Line
	5070 3675 5445 3675
Connection ~ 6205 4325
Wire Wire Line
	6205 4080 6205 4325
Wire Wire Line
	6550 3820 6550 3860
Connection ~ 5940 3075
Wire Wire Line
	5940 3075 5940 2670
Wire Wire Line
	5940 2670 6550 2670
Wire Wire Line
	6550 2670 6550 2720
Wire Wire Line
	5945 3075 5945 3205
Wire Wire Line
	6550 3980 6455 3980
Wire Wire Line
	5945 3980 5955 3980
Wire Wire Line
	5070 3075 5120 3075
Wire Wire Line
	6900 3970 7325 3970
Wire Wire Line
	6900 3810 6900 3970
Wire Wire Line
	1860 2775 5120 2775
Wire Wire Line
	7305 4340 8145 4340
Wire Wire Line
	5770 4325 6205 4325
Connection ~ 5120 3075
Wire Wire Line
	5120 2775 5120 3075
Wire Wire Line
	2795 3075 2795 3125
Wire Wire Line
	3470 3075 2795 3075
Wire Wire Line
	9600 4340 9495 4340
Wire Wire Line
	9600 4490 9600 4340
Wire Wire Line
	10225 4490 9600 4490
Wire Wire Line
	8145 4340 8145 4715
Wire Wire Line
	8145 4715 8070 4715
Wire Wire Line
	7270 5115 7270 5080
Connection ~ 10225 3770
Wire Wire Line
	10225 3770 10225 4490
Wire Wire Line
	10125 3770 10225 3770
Connection ~ 7305 3670
Wire Wire Line
	7270 4715 7480 4715
Connection ~ 7270 4715
Wire Wire Line
	7820 4880 7480 4880
Wire Wire Line
	7820 4865 7820 4880
Wire Wire Line
	3085 3275 3165 3275
Wire Wire Line
	3085 3275 3085 3485
Wire Wire Line
	7305 3670 7325 3670
Wire Wire Line
	10125 3670 10185 3670
Wire Wire Line
	7270 3770 7325 3770
Wire Wire Line
	7270 3770 7270 4715
Wire Wire Line
	7220 3870 7325 3870
Wire Wire Line
	7220 4325 7220 3870
Connection ~ 7480 4715
Wire Wire Line
	7480 4880 7480 4715
Connection ~ 6920 4325
Wire Wire Line
	6920 4425 6920 4325
Wire Wire Line
	6820 4325 6920 4325
Wire Wire Line
	5770 3475 5770 4325
Wire Wire Line
	5570 3675 5570 3715
Connection ~ 3420 3675
Wire Wire Line
	3320 3675 3420 3675
Wire Wire Line
	5070 3475 5770 3475
Connection ~ 6550 3270
Wire Wire Line
	6700 3270 6550 3270
Wire Wire Line
	6700 2970 6700 3270
Connection ~ 6550 3860
Wire Wire Line
	6700 3860 6550 3860
Wire Wire Line
	6700 3570 6700 3860
Wire Wire Line
	6550 3220 6550 3270
Wire Wire Line
	5945 3505 5945 3980
Wire Wire Line
	7305 3335 7305 3670
Wire Wire Line
	8860 3335 10620 3335
Wire Wire Line
	10620 3335 10620 3770
Wire Wire Line
	5070 3275 5095 3275
Wire Wire Line
	5095 3275 5095 3150
Wire Wire Line
	5095 3150 3165 3150
Wire Wire Line
	3165 3150 3165 3275
Connection ~ 3165 3275
Connection ~ 5095 3275
$Comp
L FrontEnd-rescue:C C24
U 1 1 5BE1DDBF
P 3320 3825
F 0 "C24" H 3345 3925 50  0000 L CNN
F 1 "100nF 10V" H 3065 3715 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3358 3675 50  0001 C CNN
F 3 "" H 3320 3825 50  0000 C CNN
F 4 "06033C104KAT4A" H 3320 3825 60  0001 C CNN "Part N"
F 5 "AVX Corporation" H 3320 3825 60  0001 C CNN "Fab"
F 6 "478-7018-2-ND" H 3320 3825 60  0001 C CNN "DigiKey"
	1    3320 3825
	1    0    0    -1  
$EndComp
$Comp
L FrontEnd-rescue:C C25
U 1 1 5BE1E05E
P 5570 3865
F 0 "C25" H 5595 3965 50  0000 L CNN
F 1 "100nF 10V" H 5320 3745 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5608 3715 50  0001 C CNN
F 3 "" H 5570 3865 50  0000 C CNN
F 4 "06033C104KAT4A" H 5570 3865 60  0001 C CNN "Part N"
F 5 "AVX Corporation" H 5570 3865 60  0001 C CNN "Fab"
F 6 "478-7018-2-ND" H 5570 3865 60  0001 C CNN "DigiKey"
	1    5570 3865
	1    0    0    -1  
$EndComp
$Comp
L FrontEnd-rescue:POT-RESCUE-FrontEnd RV5
U 1 1 5BE732E0
P 6550 2970
F 0 "RV5" H 6550 2870 50  0000 C CNN
F 1 "200K" H 6550 2970 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Trimmer_Vishay_TS53YJ" H 6550 2970 50  0001 C CNN
F 3 "5 mm Square Surface Mount Miniature Trimmers Single-Turn Cermet Sealed" H 6550 2970 50  0001 C CNN
F 4 "TS53YL204MR10" H 6550 2970 60  0001 C CNN "Part N"
F 5 "Vishay Sfernice" H 6550 2970 60  0001 C CNN "Fab"
F 6 "TS53YL-200KCT-ND" H 6550 2970 60  0001 C CNN "DigiKey"
	1    6550 2970
	0    1    1    0   
$EndComp
$Comp
L FrontEnd-rescue:R R18
U 1 1 5BE768C5
P 5945 3355
F 0 "R18" V 6025 3355 50  0000 C CNN
F 1 "10K 1%" V 5865 3355 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5875 3355 50  0001 C CNN
F 3 "" H 5945 3355 50  0000 C CNN
F 4 "CRG0603F10K" V 5945 3355 60  0001 C CNN "Part N"
F 5 "TE Connectivity Passive Product" V 5945 3355 60  0001 C CNN "Fab"
F 6 "A106048TR-ND	" V 5945 3355 60  0001 C CNN "DigiKey"
	1    5945 3355
	-1   0    0    1   
$EndComp
$Comp
L FrontEnd-rescue:R R22
U 1 1 5BE76CBD
P 10595 3970
F 0 "R22" V 10675 3970 50  0000 C CNN
F 1 "10K 1%" V 10530 3970 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 10525 3970 50  0001 C CNN
F 3 "" H 10595 3970 50  0000 C CNN
F 4 "CRG0603F10K" V 10595 3970 60  0001 C CNN "Part N"
F 5 "TE Connectivity Passive Product" V 10595 3970 60  0001 C CNN "Fab"
F 6 "A106048TR-ND" V 10595 3970 60  0001 C CNN "DigiKey"
	1    10595 3970
	0    1    1    0   
$EndComp
$Comp
L FrontEnd-rescue:R R19
U 1 1 5BE76D77
P 10390 4240
F 0 "R19" V 10470 4240 50  0000 C CNN
F 1 "10K 1%" V 10310 4240 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 10320 4240 50  0001 C CNN
F 3 "" H 10390 4240 50  0000 C CNN
F 4 "CRG0603F10K" V 10390 4240 60  0001 C CNN "Part N"
F 5 "TE Connectivity Passive Product" V 10390 4240 60  0001 C CNN "Fab"
F 6 "A106048TR-ND" V 10390 4240 60  0001 C CNN "DigiKey"
	1    10390 4240
	-1   0    0    1   
$EndComp
$Comp
L FrontEnd-rescue:ADA4530_1ARZ U6
U 1 1 5BE7AC81
P 4270 3375
F 0 "U6" H 3820 3915 60  0000 C CNN
F 1 "ADA4530_1ARZ" H 4450 2800 60  0000 C CNN
F 2 "ADA4530-lib:ADA4530_1ARZ" H 5070 3615 60  0001 C CNN
F 3 "" H 4270 3375 60  0000 C CNN
F 4 "ADA4530-1ARZ" H 4270 3375 60  0001 C CNN "Part N"
F 5 "Analog Devices Inc." H 4270 3375 60  0001 C CNN "Fab"
F 6 "ADA4530-1ARZ-ND" H 4270 3375 60  0001 C CNN "DigiKey"
	1    4270 3375
	1    0    0    -1  
$EndComp
$Comp
L FrontEnd-rescue:R R17
U 1 1 5BE76BCA
P 10425 3770
F 0 "R17" V 10505 3770 50  0000 C CNN
F 1 "10K 1%" V 10345 3770 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 10355 3770 50  0001 C CNN
F 3 "" H 10425 3770 50  0000 C CNN
F 4 "CRG0603F10K" V 10425 3770 60  0001 C CNN "Part N"
F 5 "TE Connectivity Passive Product" V 10425 3770 60  0001 C CNN "Fab"
F 6 "A106048TR-ND" V 10425 3770 60  0001 C CNN "DigiKey"
	1    10425 3770
	0    1    1    0   
$EndComp
$Comp
L FrontEnd-rescue:R R21
U 1 1 5BEE8A0E
P 7270 4930
F 0 "R21" V 7350 4930 50  0000 C CNN
F 1 "100R 1%" V 7190 4925 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7200 4930 50  0001 C CNN
F 3 "" H 7270 4930 50  0000 C CNN
F 4 "CRGP0603F100R" V 7270 4930 60  0001 C CNN "Part N"
F 5 "TE Connectivity Passive Product" V 7270 4930 60  0001 C CNN "Fab"
F 6 "A130404CT-ND" V 7270 4930 60  0001 C CNN "DigiKey"
	1    7270 4930
	-1   0    0    1   
$EndComp
$Comp
L FrontEnd-rescue:R R20
U 1 1 5BF03EFB
P 6670 4325
F 0 "R20" V 6760 4325 50  0000 C CNN
F 1 "150R 1%" V 6590 4325 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6600 4325 50  0001 C CNN
F 3 "" H 6670 4325 50  0000 C CNN
F 4 "CRGCQ0603F150R" V 6670 4325 60  0001 C CNN "Part N"
F 5 "TE Connectivity Passive Product" V 6670 4325 60  0001 C CNN "Fab"
F 6 "A130404CT-ND" V 6670 4325 60  0001 C CNN "DigiKey"
	1    6670 4325
	0    1    1    0   
$EndComp
Wire Wire Line
	10390 3970 10445 3970
Wire Wire Line
	10620 3770 10620 3870
Wire Wire Line
	5445 3675 5570 3675
Wire Wire Line
	6205 4325 6520 4325
Wire Wire Line
	5940 3075 5945 3075
Wire Wire Line
	5120 3075 5940 3075
Wire Wire Line
	10225 3770 10275 3770
Wire Wire Line
	7305 3670 7305 4340
Wire Wire Line
	7270 4715 7270 4780
Wire Wire Line
	7480 4715 7570 4715
Wire Wire Line
	6920 4325 7220 4325
Wire Wire Line
	3420 3675 3470 3675
Wire Wire Line
	6550 3270 6550 3320
Wire Wire Line
	6550 3860 6550 3980
Wire Wire Line
	3165 3275 3470 3275
Wire Wire Line
	5095 3275 5130 3275
$Comp
L Simulation_SPICE:VPULSE V1
U 1 1 645CA4EE
P 1860 2980
F 0 "V1" H 1990 3071 50  0000 L CNN
F 1 "VPULSE" H 1990 2980 50  0000 L CNN
F 2 "" H 1860 2980 50  0001 C CNN
F 3 "~" H 1860 2980 50  0001 C CNN
F 4 "Y" H 1860 2980 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 1860 2980 50  0001 L CNN "Spice_Primitive"
F 6 "PULSE(0 0.1 0 1n 1n 5m 10m 10)" H 1990 2889 50  0000 L CNN "Spice_Model"
	1    1860 2980
	1    0    0    -1  
$EndComp
Wire Wire Line
	1860 2780 1860 2775
$Comp
L FrontEnd-rescue:GND #PWR04
U 1 1 645CD048
P 1860 3230
F 0 "#PWR04" H 1860 2980 50  0001 C CNN
F 1 "GND" H 1865 3057 50  0000 C CNN
F 2 "" H 1860 3230 50  0000 C CNN
F 3 "" H 1860 3230 50  0000 C CNN
	1    1860 3230
	1    0    0    -1  
$EndComp
Wire Wire Line
	1860 3230 1860 3180
$Comp
L FrontEnd-rescue:GND #PWR05
U 1 1 645D876C
P 2795 3125
F 0 "#PWR05" H 2795 2875 50  0001 C CNN
F 1 "GND" H 2800 2952 50  0000 C CNN
F 2 "" H 2795 3125 50  0000 C CNN
F 3 "" H 2795 3125 50  0000 C CNN
	1    2795 3125
	1    0    0    -1  
$EndComp
$Comp
L FrontEnd-rescue:GND #PWR06
U 1 1 645D884D
P 3085 3485
F 0 "#PWR06" H 3085 3235 50  0001 C CNN
F 1 "GND" H 3090 3312 50  0000 C CNN
F 2 "" H 3085 3485 50  0000 C CNN
F 3 "" H 3085 3485 50  0000 C CNN
	1    3085 3485
	1    0    0    -1  
$EndComp
$Comp
L FrontEnd-rescue:GND #PWR07
U 1 1 645D8952
P 3320 4010
F 0 "#PWR07" H 3320 3760 50  0001 C CNN
F 1 "GND" H 3325 3837 50  0000 C CNN
F 2 "" H 3320 4010 50  0000 C CNN
F 3 "" H 3320 4010 50  0000 C CNN
	1    3320 4010
	1    0    0    -1  
$EndComp
Wire Wire Line
	3320 4010 3320 3975
Wire Wire Line
	5570 4015 5570 4130
$Comp
L FrontEnd-rescue:GND #PWR09
U 1 1 645DB2F7
P 5570 4130
F 0 "#PWR09" H 5570 3880 50  0001 C CNN
F 1 "GND" H 5575 3957 50  0000 C CNN
F 2 "" H 5570 4130 50  0000 C CNN
F 3 "" H 5570 4130 50  0000 C CNN
	1    5570 4130
	1    0    0    -1  
$EndComp
$Comp
L FrontEnd-rescue:GND #PWR011
U 1 1 645DB45F
P 6920 4780
F 0 "#PWR011" H 6920 4530 50  0001 C CNN
F 1 "GND" H 6925 4607 50  0000 C CNN
F 2 "" H 6920 4780 50  0000 C CNN
F 3 "" H 6920 4780 50  0000 C CNN
	1    6920 4780
	1    0    0    -1  
$EndComp
Wire Wire Line
	6920 4725 6920 4780
$Comp
L FrontEnd-rescue:GND #PWR012
U 1 1 645DDCF3
P 7270 5115
F 0 "#PWR012" H 7270 4865 50  0001 C CNN
F 1 "GND" H 7275 4942 50  0000 C CNN
F 2 "" H 7270 5115 50  0000 C CNN
F 3 "" H 7270 5115 50  0000 C CNN
	1    7270 5115
	1    0    0    -1  
$EndComp
$Comp
L FrontEnd-rescue:GND #PWR014
U 1 1 645DDE00
P 10390 4455
F 0 "#PWR014" H 10390 4205 50  0001 C CNN
F 1 "GND" H 10395 4282 50  0000 C CNN
F 2 "" H 10390 4455 50  0000 C CNN
F 3 "" H 10390 4455 50  0000 C CNN
	1    10390 4455
	1    0    0    -1  
$EndComp
$Comp
L Simulation_SPICE:VDC V3
U 1 1 645DE7EB
P 10695 2735
F 0 "V3" H 10825 2826 50  0000 L CNN
F 1 "VDC" H 10825 2735 50  0000 L CNN
F 2 "" H 10695 2735 50  0001 C CNN
F 3 "~" H 10695 2735 50  0001 C CNN
F 4 "Y" H 10695 2735 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 10695 2735 50  0001 L CNN "Spice_Primitive"
F 6 "dc 3.3" H 10825 2644 50  0000 L CNN "Spice_Model"
	1    10695 2735
	1    0    0    -1  
$EndComp
$Comp
L FrontEnd-rescue:GND #PWR015
U 1 1 645DEADB
P 10695 2965
F 0 "#PWR015" H 10695 2715 50  0001 C CNN
F 1 "GND" H 10700 2792 50  0000 C CNN
F 2 "" H 10695 2965 50  0000 C CNN
F 3 "" H 10695 2965 50  0000 C CNN
	1    10695 2965
	1    0    0    -1  
$EndComp
Wire Wire Line
	10695 2965 10695 2935
$Comp
L FrontEnd-rescue:GND #PWR08
U 1 1 645E4454
P 3420 2050
F 0 "#PWR08" H 3420 1800 50  0001 C CNN
F 1 "GND" H 3425 1877 50  0000 C CNN
F 2 "" H 3420 2050 50  0000 C CNN
F 3 "" H 3420 2050 50  0000 C CNN
	1    3420 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	3420 2050 3420 2080
Wire Wire Line
	3420 2480 3420 3675
$Comp
L Simulation_SPICE:VDC V2
U 1 1 645E444E
P 3420 2280
F 0 "V2" H 3550 2371 50  0000 L CNN
F 1 "VDC" H 3550 2280 50  0000 L CNN
F 2 "" H 3420 2280 50  0001 C CNN
F 3 "~" H 3420 2280 50  0001 C CNN
F 4 "Y" H 3420 2280 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 3420 2280 50  0001 L CNN "Spice_Primitive"
F 6 "dc -3.3" H 3550 2189 50  0000 L CNN "Spice_Model"
	1    3420 2280
	-1   0    0    1   
$EndComp
Wire Wire Line
	5445 2465 10185 2465
Wire Wire Line
	10695 2465 10695 2535
Wire Wire Line
	5445 2465 5445 3675
Wire Wire Line
	10185 2465 10185 3670
Connection ~ 10185 2465
Wire Wire Line
	10185 2465 10695 2465
$EndSCHEMATC
