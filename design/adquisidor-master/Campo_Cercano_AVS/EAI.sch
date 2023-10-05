EESchema Schematic File Version 4
EELAYER 30 0
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
L EAI-rescue:ADA4530_1ARZ-FrontEnd-rescue U?
U 1 1 5B9A9873
P 4320 2875
AR Path="/5B9A8D2D/5B9A9873" Ref="U?"  Part="1" 
AR Path="/5B9A9BFE/5B9A9873" Ref="U?"  Part="1" 
AR Path="/5B9D77B6/5B9A9873" Ref="U1"  Part="1" 
AR Path="/5B9A9873" Ref="U1"  Part="1" 
F 0 "U1" H 3870 3415 60  0000 C CNN
F 1 "ADA4530_1ARZ" H 4500 2300 60  0000 C CNN
F 2 "ADA4530-lib:ADA4530_1ARZ" H 5120 3115 60  0001 C CNN
F 3 "" H 4320 2875 60  0000 C CNN
F 4 "ADA4530-1ARZ" H 4320 2875 60  0001 C CNN "Part N"
F 5 "Analog Devices Inc." H 4320 2875 60  0001 C CNN "Fab"
F 6 "ADA4530-1ARZ-ND" H 4320 2875 60  0001 C CNN "DigiKey"
F 7 "X" H 4320 2875 50  0001 C CNN "Spice_Primitive"
F 8 "ADA4530-1" H 4320 2875 50  0001 C CNN "Spice_Model"
F 9 "Y" H 4320 2875 50  0001 C CNN "Spice_Netlist_Enabled"
F 10 "G:\\.shortcut-targets-by-id\\0BxRC6m7OGuuYbmw2Y0EyWmoxb28\\Adquisidor\\Front-End 2023\\PCB\\adquisidor-master\\FrontEnd\\ADA4530-lib\\ADA4530_1ARZ.lib" H 4320 2875 50  0001 C CNN "Spice_Lib_File"
	1    4320 2875
	1    0    0    -1  
$EndComp
$Comp
L EAI-rescue:GNDA-FrontEnd-rescue #PWR?
U 1 1 5B9A987A
P 3370 3475
AR Path="/5B9A8D2D/5B9A987A" Ref="#PWR?"  Part="1" 
AR Path="/5B9A9BFE/5B9A987A" Ref="#PWR?"  Part="1" 
AR Path="/5B9D77B6/5B9A987A" Ref="#PWR043"  Part="1" 
AR Path="/5B9A987A" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 3370 3225 50  0001 C CNN
F 1 "GNDA" H 3370 3325 50  0000 C CNN
F 2 "" H 3370 3475 50  0000 C CNN
F 3 "" H 3370 3475 50  0000 C CNN
	1    3370 3475
	1    0    0    -1  
$EndComp
$Comp
L EAI-rescue:GNDA-FrontEnd-rescue #PWR?
U 1 1 5B9A9880
P 5620 3630
AR Path="/5B9A8D2D/5B9A9880" Ref="#PWR?"  Part="1" 
AR Path="/5B9A9BFE/5B9A9880" Ref="#PWR?"  Part="1" 
AR Path="/5B9D77B6/5B9A9880" Ref="#PWR044"  Part="1" 
AR Path="/5B9A9880" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 5620 3380 50  0001 C CNN
F 1 "GNDA" H 5620 3480 50  0000 C CNN
F 2 "" H 5620 3630 50  0000 C CNN
F 3 "" H 5620 3630 50  0000 C CNN
	1    5620 3630
	1    0    0    -1  
$EndComp
$Comp
L EAI-rescue:C-FrontEnd-rescue C?
U 1 1 5B9A988D
P 2895 2845
AR Path="/5B9A8D2D/5B9A988D" Ref="C?"  Part="1" 
AR Path="/5B9A9BFE/5B9A988D" Ref="C?"  Part="1" 
AR Path="/5B9D77B6/5B9A988D" Ref="C22"  Part="1" 
AR Path="/5B9A988D" Ref="C22"  Part="1" 
F 0 "C22" H 2920 2945 50  0000 L CNN
F 1 "100pF 50V" H 2650 2730 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2933 2695 50  0001 C CNN
F 3 "" H 2895 2845 50  0000 C CNN
F 4 "08051A101FAT2A" H 2895 2845 60  0001 C CNN "Part N"
F 5 "AVX Corporation" H 2895 2845 60  0001 C CNN "Fab"
F 6 "478-3732-1-ND" H 2895 2845 60  0001 C CNN "DigiKey"
	1    2895 2845
	1    0    0    -1  
$EndComp
Text Label 2435 2275 0    60   ~ 0
signal_IN
Text Label 5445 2975 0    60   ~ 0
signal_OUT
$Comp
L EAI-rescue:R-FrontEnd-rescue R?
U 1 1 5B9A98C1
P 6720 3825
AR Path="/5B9A8D2D/5B9A98C1" Ref="R?"  Part="1" 
AR Path="/5B9A9BFE/5B9A98C1" Ref="R?"  Part="1" 
AR Path="/5B9D77B6/5B9A98C1" Ref="R1"  Part="1" 
AR Path="/5B9A98C1" Ref="R1"  Part="1" 
F 0 "R1" V 6810 3825 50  0000 C CNN
F 1 "150R 1%" V 6640 3825 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6650 3825 50  0001 C CNN
F 3 "" H 6720 3825 50  0000 C CNN
F 4 "CRGCQ0603F150R" V 6720 3825 60  0001 C CNN "Part N"
F 5 "TE Connectivity Passive Product" V 6720 3825 60  0001 C CNN "Fab"
F 6 "A130404CT-ND" V 6720 3825 60  0001 C CNN "DigiKey"
	1    6720 3825
	0    1    1    0   
$EndComp
$Comp
L EAI-rescue:GNDA-FrontEnd-rescue #PWR?
U 1 1 5B9A98CF
P 6970 4270
AR Path="/5B9A8D2D/5B9A98CF" Ref="#PWR?"  Part="1" 
AR Path="/5B9A9BFE/5B9A98CF" Ref="#PWR?"  Part="1" 
AR Path="/5B9D77B6/5B9A98CF" Ref="#PWR045"  Part="1" 
AR Path="/5B9A98CF" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 6970 4020 50  0001 C CNN
F 1 "GNDA" H 6970 4120 50  0000 C CNN
F 2 "" H 6970 4270 50  0000 C CNN
F 3 "" H 6970 4270 50  0000 C CNN
	1    6970 4270
	1    0    0    -1  
$EndComp
Text Label 3270 2775 0    60   ~ 0
GRD
$Comp
L EAI-rescue:GNDA-FrontEnd-rescue #PWR?
U 1 1 5B9A9967
P 10685 3825
AR Path="/5B9A8D2D/5B9A9967" Ref="#PWR?"  Part="1" 
AR Path="/5B9A9BFE/5B9A9967" Ref="#PWR?"  Part="1" 
AR Path="/5B9D77B6/5B9A9967" Ref="#PWR046"  Part="1" 
AR Path="/5B9A9967" Ref="#PWR046"  Part="1" 
F 0 "#PWR046" H 10685 3575 50  0001 C CNN
F 1 "GNDA" H 10685 3675 50  0000 C CNN
F 2 "" H 10685 3825 50  0000 C CNN
F 3 "" H 10685 3825 50  0000 C CNN
	1    10685 3825
	1    0    0    -1  
$EndComp
$Comp
L EAI-rescue:R-FrontEnd-rescue R?
U 1 1 5B9A9972
P 6970 3600
AR Path="/5B9A8D2D/5B9A9972" Ref="R?"  Part="1" 
AR Path="/5B9A9BFE/5B9A9972" Ref="R?"  Part="1" 
AR Path="/5B9D77B6/5B9A9972" Ref="R4"  Part="1" 
AR Path="/5B9A9972" Ref="R4"  Part="1" 
F 0 "R4" V 7050 3600 50  0000 C CNN
F 1 "3K3 1%" V 6970 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6900 3600 50  0001 C CNN
F 3 "" H 6970 3600 50  0000 C CNN
F 4 "CRGH0603F3K3" V 6970 3600 60  0001 C CNN "Part N"
F 5 "TE Connectivity Passive Product" V 6970 3600 60  0001 C CNN "Fab"
F 6 "A129543CT-ND" V 6970 3600 60  0001 C CNN "DigiKey"
	1    6970 3600
	1    0    0    -1  
$EndComp
Text HLabel 9545 3840 0    60   Output ~ 0
VoAVS
$Comp
L EAI-rescue:GNDA-FrontEnd-rescue #PWR047
U 1 1 5BB2CC3C
P 5040 1850
F 0 "#PWR047" H 5040 1600 50  0001 C CNN
F 1 "GNDA" H 5040 1700 50  0000 C CNN
F 2 "" H 5040 1850 50  0000 C CNN
F 3 "" H 5040 1850 50  0000 C CNN
	1    5040 1850
	1    0    0    -1  
$EndComp
$Comp
L EAI-rescue:GRD1-FrontEnd-rescue #PWR048
U 1 1 5BB46F97
P 3135 2995
F 0 "#PWR048" H 3135 2845 50  0001 C CNN
F 1 "GRD1" H 3135 3145 50  0000 C CNN
F 2 "" H 3135 2995 50  0000 C CNN
F 3 "" H 3135 2995 50  0000 C CNN
	1    3135 2995
	-1   0    0    1   
$EndComp
$Comp
L EAI-rescue:TEST_1P-FrontEnd-rescue TP3
U 1 1 5BBE03A5
P 5820 3885
F 0 "TP3" H 5820 4155 50  0000 C CNN
F 1 "TEST_1P" H 5820 4085 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1mmDrill" H 6020 3885 50  0001 C CNN
F 3 "" H 6020 3885 50  0000 C CNN
	1    5820 3885
	-1   0    0    1   
$EndComp
$Comp
L EAI-rescue:TEST_1P-FrontEnd-rescue TP2
U 1 1 5BBE16FA
P 5120 2775
F 0 "TP2" H 5120 3045 50  0000 C CNN
F 1 "TEST_1P" H 5120 2975 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1mmDrill" H 5320 2775 50  0001 C CNN
F 3 "" H 5320 2775 50  0000 C CNN
	1    5120 2775
	0    1    1    0   
$EndComp
$Comp
L EAI-rescue:VCOM-FrontEnd-rescue #PWR053
U 1 1 5BBEC18D
P 10685 2875
F 0 "#PWR053" H 10685 2725 50  0001 C CNN
F 1 "VCOM" H 10685 3025 50  0000 C CNN
F 2 "" H 10685 2875 50  0000 C CNN
F 3 "" H 10685 2875 50  0000 C CNN
	1    10685 2875
	1    0    0    -1  
$EndComp
$Comp
L EAI-rescue:TLC2272_D_8-FrontEnd-rescue U?
U 1 1 5B9A9942
P 7375 3170
AR Path="/5B9A8D2D/5B9A9942" Ref="U?"  Part="1" 
AR Path="/5B9A9BFE/5B9A9942" Ref="U?"  Part="1" 
AR Path="/5B9D77B6/5B9A9942" Ref="U2"  Part="1" 
AR Path="/5B9A9942" Ref="U2"  Part="1" 
F 0 "U2" H 7720 3420 60  0000 C CNN
F 1 "TLC2272_D_8" H 9570 2610 60  0000 C CNN
F 2 "TLC2272-lib:TLC2272_D_8" H 8775 3410 60  0001 C CNN
F 3 "" H 7375 3170 60  0000 C CNN
F 4 "TLC2272ACDR" H 7375 3170 60  0001 C CNN "Part N"
F 5 "Texas Instruments" H 7375 3170 60  0001 C CNN "Fab"
F 6 "296-1303-1-ND" H 7375 3170 60  0001 C CNN "DigiKey"
F 7 "X" H 7375 3170 50  0001 C CNN "Spice_Primitive"
F 8 "TLC2272" H 7375 3170 50  0001 C CNN "Spice_Model"
F 9 "Y" H 7375 3170 50  0001 C CNN "Spice_Netlist_Enabled"
F 10 "G:\\.shortcut-targets-by-id\\0BxRC6m7OGuuYbmw2Y0EyWmoxb28\\Adquisidor\\Front-End 2023\\PCB\\adquisidor-master\\FrontEnd\\TLC2272-lib\\TLC2272_D_8.lib" H 7375 3170 50  0001 C CNN "Spice_Lib_File"
	1    7375 3170
	1    0    0    -1  
$EndComp
$Comp
L EAI-rescue:GNDA-FrontEnd-rescue #PWR054
U 1 1 5BBEE2F4
P 7220 3435
F 0 "#PWR054" H 7220 3185 50  0001 C CNN
F 1 "GNDA" H 7220 3285 50  0000 C CNN
F 2 "" H 7220 3435 50  0000 C CNN
F 3 "" H 7220 3435 50  0000 C CNN
	1    7220 3435
	1    0    0    -1  
$EndComp
Wire Wire Line
	6120 3825 6120 3440
Connection ~ 6120 3825
Wire Wire Line
	2895 3825 5820 3825
Wire Wire Line
	3320 2575 3320 2275
Wire Wire Line
	5120 2975 5820 2975
Wire Wire Line
	5120 3175 5235 3175
Wire Wire Line
	3370 3175 3470 3175
Connection ~ 3470 3175
Connection ~ 5820 3825
Wire Wire Line
	5620 3175 5620 3215
Wire Wire Line
	5820 2975 5820 3825
Wire Wire Line
	6970 3750 6970 3825
Connection ~ 6970 3825
Wire Wire Line
	5620 3515 5620 3630
Wire Wire Line
	10175 3170 10400 3170
Connection ~ 3320 2575
Wire Wire Line
	2895 2695 2895 2575
Wire Wire Line
	3135 2440 3135 2775
Wire Wire Line
	3135 2775 3520 2775
Wire Wire Line
	10175 3370 10230 3370
Wire Wire Line
	10175 3270 10275 3270
Wire Wire Line
	10625 3370 10625 3270
Wire Wire Line
	10175 3470 10685 3470
Wire Wire Line
	10275 3270 10275 3840
Connection ~ 10275 3270
Wire Wire Line
	10685 3305 10685 3470
Connection ~ 10685 3470
Wire Wire Line
	10685 2875 10685 3005
Wire Wire Line
	10275 3840 9545 3840
Wire Wire Line
	3320 2275 2075 2275
Wire Wire Line
	3470 3175 3470 2190
Wire Wire Line
	5040 1830 5270 1830
Wire Wire Line
	5040 1830 5040 1850
Wire Wire Line
	5270 1830 5270 2025
Wire Wire Line
	10400 3170 10400 2850
Wire Wire Line
	5270 2325 5270 2575
Connection ~ 5270 2575
Connection ~ 5235 3175
Wire Wire Line
	2075 2440 3135 2440
Connection ~ 3135 2775
Wire Wire Line
	6970 4225 6970 4270
Wire Wire Line
	7375 3470 7360 3470
Wire Wire Line
	7360 3470 7360 3570
Wire Wire Line
	7360 3570 7560 3570
Wire Wire Line
	7560 3570 7560 3695
Wire Wire Line
	7120 2845 8580 2845
Wire Wire Line
	8880 2845 10230 2845
Wire Wire Line
	6970 3245 6970 3270
Wire Wire Line
	6970 3270 7375 3270
Connection ~ 6970 3270
Wire Wire Line
	6970 2745 7120 2745
Wire Wire Line
	7120 3170 7375 3170
Wire Wire Line
	7375 3370 7220 3370
Wire Wire Line
	7220 3370 7220 3435
Wire Wire Line
	6870 3825 6970 3825
Connection ~ 7120 2845
Connection ~ 10230 3370
Wire Wire Line
	10230 2845 10230 3370
NoConn ~ 3520 2975
Wire Wire Line
	5120 2575 5270 2575
Wire Wire Line
	5705 1955 6120 1955
Wire Wire Line
	5705 2575 5705 1955
$Comp
L EAI-rescue:C-FrontEnd-rescue C2
U 1 1 5BE702FB
P 3370 3325
F 0 "C2" H 3395 3425 50  0000 L CNN
F 1 "100nF 10V" H 3185 3210 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3408 3175 50  0001 C CNN
F 3 "" H 3370 3325 50  0000 C CNN
F 4 "06033C104KAT4A" H 3370 3325 60  0001 C CNN "Part N"
F 5 "AVX Corporation" H 3370 3325 60  0001 C CNN "Fab"
F 6 "478-7018-2-ND" H 3370 3325 60  0001 C CNN "DigiKey"
	1    3370 3325
	1    0    0    -1  
$EndComp
$Comp
L EAI-rescue:C-FrontEnd-rescue C4
U 1 1 5BE7084E
P 5620 3365
F 0 "C4" H 5645 3465 50  0000 L CNN
F 1 "100nF 10V" H 5385 3235 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5658 3215 50  0001 C CNN
F 3 "" H 5620 3365 50  0000 C CNN
F 4 "06033C104KAT4A" H 5620 3365 60  0001 C CNN "Part N"
F 5 "AVX Corporation" H 5620 3365 60  0001 C CNN "Fab"
F 6 "478-7018-2-ND" H 5620 3365 60  0001 C CNN "DigiKey"
	1    5620 3365
	1    0    0    -1  
$EndComp
$Comp
L EAI-rescue:C-FrontEnd-rescue C6
U 1 1 5BE70B9D
P 6970 4075
F 0 "C6" H 6995 4175 50  0000 L CNN
F 1 "100nF 10V" H 6995 3975 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7008 3925 50  0001 C CNN
F 3 "" H 6970 4075 50  0000 C CNN
F 4 "06033C104KAT4A" H 6970 4075 60  0001 C CNN "Part N"
F 5 "AVX Corporation" H 6970 4075 60  0001 C CNN "Fab"
F 6 "478-7018-2-ND" H 6970 4075 60  0001 C CNN "DigiKey"
	1    6970 4075
	1    0    0    -1  
$EndComp
$Comp
L EAI-rescue:R-FrontEnd-rescue R16
U 1 1 5BE7745D
P 6120 3290
F 0 "R16" V 6200 3290 50  0000 C CNN
F 1 "10K 1%" V 6045 3290 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6050 3290 50  0001 C CNN
F 3 "" H 6120 3290 50  0000 C CNN
F 4 "CRG0603F10K" V 6120 3290 60  0001 C CNN "Part N"
F 5 "TE Connectivity Passive Product" V 6120 3290 60  0001 C CNN "Fab"
F 6 "A106048TR-ND" V 6120 3290 60  0001 C CNN "DigiKey"
	1    6120 3290
	-1   0    0    1   
$EndComp
$Comp
L EAI-rescue:R-FrontEnd-rescue R6
U 1 1 5BE77A1A
P 10475 3270
F 0 "R6" V 10555 3270 50  0000 C CNN
F 1 "10K 1%" V 10400 3235 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 10405 3270 50  0001 C CNN
F 3 "" H 10475 3270 50  0000 C CNN
F 4 "CRG0603F10K" V 10475 3270 60  0001 C CNN "Part N"
F 5 "TE Connectivity Passive Product" V 10475 3270 60  0001 C CNN "Fab"
F 6 "A106048TR-ND" V 10475 3270 60  0001 C CNN "DigiKey"
	1    10475 3270
	0    1    1    0   
$EndComp
$Comp
L EAI-rescue:R-FrontEnd-rescue R7
U 1 1 5BE77CFD
P 10685 3155
F 0 "R7" V 10765 3155 50  0000 C CNN
F 1 "10K 1%" V 10610 3155 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 10615 3155 50  0001 C CNN
F 3 "" H 10685 3155 50  0000 C CNN
F 4 "CRG0603F10K" V 10685 3155 60  0001 C CNN "Part N"
F 5 "TE Connectivity Passive Product" V 10685 3155 60  0001 C CNN "Fab"
F 6 "A106048TR-ND" V 10685 3155 60  0001 C CNN "DigiKey"
	1    10685 3155
	-1   0    0    1   
$EndComp
$Comp
L EAI-rescue:R-FrontEnd-rescue R8
U 1 1 5BE78074
P 10685 3675
F 0 "R8" V 10765 3675 50  0000 C CNN
F 1 "10K 1%" V 10600 3675 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 10615 3675 50  0001 C CNN
F 3 "" H 10685 3675 50  0000 C CNN
F 4 "CRG0603F10K" V 10685 3675 60  0001 C CNN "Part N"
F 5 "TE Connectivity Passive Product" V 10685 3675 60  0001 C CNN "Fab"
F 6 "A106048TR-ND" V 10685 3675 60  0001 C CNN "DigiKey"
	1    10685 3675
	-1   0    0    1   
$EndComp
$Comp
L EAI-rescue:R-FrontEnd-rescue R14
U 1 1 5BE7850E
P 8730 2845
F 0 "R14" V 8810 2845 50  0000 C CNN
F 1 "10K 1%" V 8660 2845 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8660 2845 50  0001 C CNN
F 3 "" H 8730 2845 50  0000 C CNN
F 4 "CRG0603F10K" V 8730 2845 60  0001 C CNN "Part N"
F 5 "TE Connectivity Passive Product" V 8730 2845 60  0001 C CNN "Fab"
F 6 "A106048TR-ND" V 8730 2845 60  0001 C CNN "DigiKey"
	1    8730 2845
	0    1    1    0   
$EndComp
$Comp
L EAI-rescue:R-FrontEnd-rescue R3
U 1 1 5BE78858
P 5270 2175
F 0 "R3" V 5350 2175 50  0000 C CNN
F 1 "10K 1%" V 5195 2175 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5200 2175 50  0001 C CNN
F 3 "" H 5270 2175 50  0000 C CNN
F 4 "CRG0603F10K" V 5270 2175 60  0001 C CNN "Part N"
F 5 "TE Connectivity Passive Product" V 5270 2175 60  0001 C CNN "Fab"
F 6 "A106048TR-ND" V 5270 2175 60  0001 C CNN "DigiKey"
	1    5270 2175
	-1   0    0    1   
$EndComp
$Comp
L EAI-rescue:POT-RESCUE-FrontEnd-FrontEnd-rescue RV3
U 1 1 5BEBB32D
P 6970 2995
F 0 "RV3" H 6970 2895 50  0000 C CNN
F 1 "200K" H 6970 2995 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Trimmer_Vishay_TS53YJ" H 6970 2995 50  0001 C CNN
F 3 "5 mm Square Surface Mount Miniature Trimmers Single-Turn Cermet Sealed" H 6970 2995 50  0001 C CNN
F 4 "TS53YL204MR10" H 6970 2995 60  0001 C CNN "Part N"
F 5 "Vishay Sfernice" H 6970 2995 60  0001 C CNN "Fab"
F 6 "TS53YL-200KCT-ND" H 6970 2995 60  0001 C CNN "DigiKey"
	1    6970 2995
	0    1    1    0   
$EndComp
Wire Wire Line
	7120 2745 7120 2845
Connection ~ 7120 2995
Wire Wire Line
	3470 3175 3520 3175
Wire Wire Line
	5820 3825 6120 3825
Wire Wire Line
	5820 3825 5820 3885
Wire Wire Line
	6970 3825 6970 3925
Wire Wire Line
	3320 2575 3520 2575
Wire Wire Line
	2895 2575 3320 2575
Wire Wire Line
	10275 3270 10325 3270
Wire Wire Line
	10685 3470 10685 3525
Wire Wire Line
	5270 2575 5705 2575
Wire Wire Line
	5235 3175 5620 3175
Wire Wire Line
	3135 2775 3135 2995
Wire Wire Line
	6970 3270 6970 3450
Wire Wire Line
	7120 2845 7120 2995
Wire Wire Line
	10230 3370 10625 3370
Wire Wire Line
	7120 2995 7120 3170
$Comp
L Simulation_SPICE:VPULSE V1
U 1 1 645C9BD5
P 1300 2420
F 0 "V1" H 1430 2511 50  0000 L CNN
F 1 "VPULSE" H 1430 2420 50  0000 L CNN
F 2 "" H 1300 2420 50  0001 C CNN
F 3 "~" H 1300 2420 50  0001 C CNN
F 4 "Y" H 1300 2420 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 1300 2420 50  0001 L CNN "Spice_Primitive"
F 6 "pulse(0 1 2n 2n 2n 50n 100n)" H 1430 2329 50  0000 L CNN "Spice_Model"
	1    1300 2420
	1    0    0    -1  
$EndComp
$Comp
L Simulation_SPICE:VDC V2
U 1 1 645CB524
P 2805 1145
F 0 "V2" H 2675 1054 50  0000 R CNN
F 1 "VDC" H 2675 1145 50  0000 R CNN
F 2 "" H 2805 1145 50  0001 C CNN
F 3 "~" H 2805 1145 50  0001 C CNN
F 4 "Y" H 2805 1145 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 2805 1145 50  0001 L CNN "Spice_Primitive"
F 6 "dc -3.3" H 2675 1236 50  0000 R CNN "Spice_Model"
	1    2805 1145
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 645D0BD8
P 2805 1370
F 0 "#PWR02" H 2805 1120 50  0001 C CNN
F 1 "GND" H 2810 1197 50  0000 C CNN
F 2 "" H 2805 1370 50  0001 C CNN
F 3 "" H 2805 1370 50  0001 C CNN
	1    2805 1370
	1    0    0    -1  
$EndComp
Wire Wire Line
	2805 1370 2805 1345
$Comp
L Simulation_SPICE:VDC V3
U 1 1 645DB295
P 3250 1145
F 0 "V3" H 3380 1236 50  0000 L CNN
F 1 "VDC" H 3380 1145 50  0000 L CNN
F 2 "" H 3250 1145 50  0001 C CNN
F 3 "~" H 3250 1145 50  0001 C CNN
F 4 "Y" H 3250 1145 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 3250 1145 50  0001 L CNN "Spice_Primitive"
F 6 "dc 3.3" H 3380 1054 50  0000 L CNN "Spice_Model"
	1    3250 1145
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 645DC2D6
P 3250 1385
F 0 "#PWR04" H 3250 1135 50  0001 C CNN
F 1 "GND" H 3255 1212 50  0000 C CNN
F 2 "" H 3250 1385 50  0001 C CNN
F 3 "" H 3250 1385 50  0001 C CNN
	1    3250 1385
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1345 3250 1385
Wire Wire Line
	5235 3175 5235 4765
$Comp
L power:+3.3V #PWR03
U 1 1 645ECF2E
P 3250 915
F 0 "#PWR03" H 3250 765 50  0001 C CNN
F 1 "+3.3V" H 3265 1088 50  0000 C CNN
F 2 "" H 3250 915 50  0001 C CNN
F 3 "" H 3250 915 50  0001 C CNN
	1    3250 915 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 915  3250 945 
$Comp
L power:-3V3 #PWR01
U 1 1 645F126B
P 2805 915
F 0 "#PWR01" H 2805 1015 50  0001 C CNN
F 1 "-3V3" H 2820 1088 50  0000 C CNN
F 2 "" H 2805 915 50  0001 C CNN
F 3 "" H 2805 915 50  0001 C CNN
	1    2805 915 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2805 915  2805 945 
$Comp
L power:-3V3 #PWR05
U 1 1 645F581C
P 3470 2190
F 0 "#PWR05" H 3470 2290 50  0001 C CNN
F 1 "-3V3" H 3485 2363 50  0000 C CNN
F 2 "" H 3470 2190 50  0001 C CNN
F 3 "" H 3470 2190 50  0001 C CNN
	1    3470 2190
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR06
U 1 1 645F5EAF
P 5235 4765
F 0 "#PWR06" H 5235 4615 50  0001 C CNN
F 1 "+3.3V" H 5250 4938 50  0000 C CNN
F 2 "" H 5235 4765 50  0001 C CNN
F 3 "" H 5235 4765 50  0001 C CNN
	1    5235 4765
	-1   0    0    1   
$EndComp
$Comp
L power:-3V3 #PWR07
U 1 1 645F6F70
P 7560 3695
F 0 "#PWR07" H 7560 3795 50  0001 C CNN
F 1 "-3V3" H 7575 3868 50  0000 C CNN
F 2 "" H 7560 3695 50  0001 C CNN
F 3 "" H 7560 3695 50  0001 C CNN
	1    7560 3695
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR08
U 1 1 645F783D
P 10400 2850
F 0 "#PWR08" H 10400 2700 50  0001 C CNN
F 1 "+3.3V" H 10415 3023 50  0000 C CNN
F 2 "" H 10400 2850 50  0001 C CNN
F 3 "" H 10400 2850 50  0001 C CNN
	1    10400 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2220 2075 2220
Wire Wire Line
	2075 2220 2075 2275
Wire Wire Line
	2075 2440 2075 2620
Wire Wire Line
	2075 2620 1300 2620
Wire Wire Line
	6120 3825 6570 3825
Wire Wire Line
	6120 1955 6120 3140
Text Notes 6385 2110 0    50   ~ 0
NOTA aca hay otro jumper (en paralelo a R16)\n\n
Wire Wire Line
	2895 2995 2895 3825
Text Notes 945  3455 0    50   ~ 0
NOTA aca hay otro jumper (rama capacitores)\n\n
$EndSCHEMATC
