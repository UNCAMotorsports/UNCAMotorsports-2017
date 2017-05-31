EESchema Schematic File Version 2
LIBS:VehicleController-rescue
LIBS:UNCAMotorsports
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
LIBS:Common-Parts-Library-CPL
LIBS:relays
LIBS:SystemBlocks
LIBS:dc-dc
LIBS:Power_Management
LIBS:switches
LIBS:VehicleController-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
Title "Vehicle Controller"
Date "2017-03-11"
Rev "001"
Comp "UNC Asheville Motorsports"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L D_Schottky D5
U 1 1 587C7BB2
P 3000 2750
F 0 "D5" H 3000 2534 50  0000 C CNN
F 1 "D_Schottky" H 3000 2625 50  0000 C CNN
F 2 "Diodes_SMD:SMA_Handsoldering" H 3000 2750 50  0001 C CNN
F 3 "" H 3000 2750 50  0000 C CNN
	1    3000 2750
	-1   0    0    1   
$EndComp
$Comp
L Polyfuse F9
U 1 1 587C7BB9
P 2450 2750
F 0 "F9" V 2225 2750 50  0000 C CNN
F 1 "3A" V 2316 2750 50  0000 C CNN
F 2 "Resistors_SMD:R_1210_HandSoldering" H 2500 2550 50  0001 L CNN
F 3 "" H 2450 2750 50  0001 C CNN
	1    2450 2750
	0    1    1    0   
$EndComp
$Comp
L TL431 U9
U 1 1 587C7BC0
P 4850 3850
F 0 "U9" H 4671 3903 60  0000 R CNN
F 1 "TL431" H 4671 3797 60  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 4850 3800 60  0001 C CNN
F 3 "" H 4850 3800 60  0000 C CNN
	1    4850 3850
	-1   0    0    -1  
$EndComp
$Comp
L BTS6133D U10
U 1 1 587C7BC7
P 6550 2850
F 0 "U10" H 6550 3237 60  0000 C CNN
F 1 "BTS6133D" H 6550 3131 60  0000 C CNN
F 2 "UNCAMotorsports:TO-252-5" H 6700 3050 60  0001 C CNN
F 3 "" H 6700 3050 60  0000 C CNN
	1    6550 2850
	1    0    0    -1  
$EndComp
$Comp
L R R24
U 1 1 587C7BCE
P 4300 3550
F 0 "R24" H 4369 3596 50  0000 L CNN
F 1 "330k" H 4369 3505 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4230 3550 50  0001 C CNN
F 3 "" H 4300 3550 50  0000 C CNN
	1    4300 3550
	-1   0    0    -1  
$EndComp
$Comp
L R R25
U 1 1 587C7BD5
P 4300 4100
F 0 "R25" H 4369 4146 50  0000 L CNN
F 1 "120k" H 4369 4055 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4230 4100 50  0001 C CNN
F 3 "" H 4300 4100 50  0000 C CNN
	1    4300 4100
	-1   0    0    -1  
$EndComp
$Comp
L R R27
U 1 1 587C7BDC
P 5850 3300
F 0 "R27" H 5919 3346 50  0000 L CNN
F 1 "620" H 5919 3255 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5780 3300 50  0001 C CNN
F 3 "" H 5850 3300 50  0000 C CNN
	1    5850 3300
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR042
U 1 1 587C7BE3
P 5850 3650
F 0 "#PWR042" H 5850 3400 50  0001 C CNN
F 1 "GND" H 5855 3477 50  0000 C CNN
F 2 "" H 5850 3650 50  0000 C CNN
F 3 "" H 5850 3650 50  0000 C CNN
	1    5850 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR043
U 1 1 587C7BF7
P 4300 4700
F 0 "#PWR043" H 4300 4450 50  0001 C CNN
F 1 "GND" H 4305 4527 50  0000 C CNN
F 2 "" H 4300 4700 50  0000 C CNN
F 3 "" H 4300 4700 50  0000 C CNN
	1    4300 4700
	1    0    0    -1  
$EndComp
Text HLabel 2000 2750 0    60   Input ~ 0
PWR_IN
Text HLabel 5650 2950 0    60   Input ~ 0
CurrentSense
$Comp
L C_Small C7
U 1 1 58AEB852
P 8150 3000
F 0 "C7" H 8242 3046 50  0000 L CNN
F 1 "10uF" H 8242 2955 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8150 3000 50  0001 C CNN
F 3 "" H 8150 3000 50  0000 C CNN
	1    8150 3000
	-1   0    0    -1  
$EndComp
$Comp
L C_Small C8
U 1 1 58AEB859
P 9150 3000
F 0 "C8" H 9242 3046 50  0000 L CNN
F 1 "10uF" H 9242 2955 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9150 3000 50  0001 C CNN
F 3 "" H 9150 3000 50  0000 C CNN
	1    9150 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR044
U 1 1 58AEB860
P 8650 3250
F 0 "#PWR044" H 8650 3000 50  0001 C CNN
F 1 "GND" H 8655 3077 50  0000 C CNN
F 2 "" H 8650 3250 50  0000 C CNN
F 3 "" H 8650 3250 50  0000 C CNN
	1    8650 3250
	1    0    0    -1  
$EndComp
Text HLabel 7350 2550 1    60   Input ~ 0
12V
Text HLabel 9950 2750 2    60   Input ~ 0
5V
$Comp
L PWR_FLAG #FLG045
U 1 1 58AF2028
P 5550 1000
F 0 "#FLG045" H 5550 1095 50  0001 C CNN
F 1 "PWR_FLAG" H 5550 1224 50  0001 C CNN
F 2 "" H 5550 1000 50  0000 C CNN
F 3 "" H 5550 1000 50  0000 C CNN
	1    5550 1000
	1    0    0    -1  
$EndComp
Text HLabel 5550 1200 3    60   Input ~ 0
12V
$Comp
L GND #PWR046
U 1 1 58B0EFE3
P 3350 3250
F 0 "#PWR046" H 3350 3000 50  0001 C CNN
F 1 "GND" H 3355 3077 50  0000 C CNN
F 2 "" H 3350 3250 50  0000 C CNN
F 3 "" H 3350 3250 50  0000 C CNN
	1    3350 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR047
U 1 1 58B0F09D
P 3550 3250
F 0 "#PWR047" H 3550 3000 50  0001 C CNN
F 1 "GND" H 3555 3077 50  0000 C CNN
F 2 "" H 3550 3250 50  0000 C CNN
F 3 "" H 3550 3250 50  0000 C CNN
	1    3550 3250
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D6
U 1 1 58B90308
P 5400 3850
F 0 "D6" V 5354 3929 50  0000 L CNN
F 1 "D_ALT" V 5445 3929 50  0000 L CNN
F 2 "Diodes_SMD:SMA_Handsoldering" H 5400 3850 50  0001 C CNN
F 3 "" H 5400 3850 50  0000 C CNN
	1    5400 3850
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR048
U 1 1 58BE7A1A
P 9300 2600
F 0 "#PWR048" H 9350 2650 50  0001 C CNN
F 1 "+5V" H 9315 2773 50  0000 C CNN
F 2 "" H 550 -100 50  0001 C CNN
F 3 "" H 550 -100 50  0001 C CNN
	1    9300 2600
	1    0    0    -1  
$EndComp
$Comp
L Polyfuse F10
U 1 1 58C2ADFE
P 7850 2750
F 0 "F10" V 7625 2750 50  0000 C CNN
F 1 "1A" V 7716 2750 50  0000 C CNN
F 2 "Resistors_SMD:R_1210_HandSoldering" H 7900 2550 50  0001 L CNN
F 3 "" H 7850 2750 50  0001 C CNN
	1    7850 2750
	0    1    1    0   
$EndComp
$Comp
L R R28
U 1 1 58C314B1
P 7500 3000
F 0 "R28" H 7569 3046 50  0000 L CNN
F 1 "2.2k" H 7569 2955 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7430 3000 50  0001 C CNN
F 3 "" H 7500 3000 50  0000 C CNN
	1    7500 3000
	-1   0    0    -1  
$EndComp
$Comp
L LED_Small_ALT D8
U 1 1 58C318C7
P 7500 3300
F 0 "D8" V 7546 3232 50  0000 R CNN
F 1 "12V_Status" V 7455 3232 50  0000 R CNN
F 2 "LEDs:LED-0805" V 750 -300 50  0001 C CNN
F 3 "" V 750 -300 50  0001 C CNN
	1    7500 3300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR049
U 1 1 58C31B60
P 7500 3500
F 0 "#PWR049" H 7500 3250 50  0001 C CNN
F 1 "GND" H 7505 3327 50  0000 C CNN
F 2 "" H 7500 3500 50  0000 C CNN
F 3 "" H 7500 3500 50  0000 C CNN
	1    7500 3500
	1    0    0    -1  
$EndComp
$Comp
L LED_Small_ALT D9
U 1 1 58C3218B
P 9650 3300
F 0 "D9" V 9696 3232 50  0000 R CNN
F 1 "5V_Status" V 9605 3232 50  0000 R CNN
F 2 "LEDs:LED-0805" V 2900 -300 50  0001 C CNN
F 3 "" V 2900 -300 50  0001 C CNN
	1    9650 3300
	0    -1   -1   0   
$EndComp
$Comp
L R R29
U 1 1 58C321FD
P 9650 3000
F 0 "R29" H 9719 3046 50  0000 L CNN
F 1 "470" H 9719 2955 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9580 3000 50  0001 C CNN
F 3 "" H 9650 3000 50  0000 C CNN
	1    9650 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR050
U 1 1 58C32364
P 9650 3500
F 0 "#PWR050" H 9650 3250 50  0001 C CNN
F 1 "GND" H 9655 3327 50  0000 C CNN
F 2 "" H 9650 3500 50  0000 C CNN
F 3 "" H 9650 3500 50  0000 C CNN
	1    9650 3500
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C5
U 1 1 58C33250
P 3350 3000
F 0 "C5" H 3441 3046 50  0000 L CNN
F 1 "100uF_Al" H 3441 2955 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_6.3x7.7" H 700 -350 50  0001 C CNN
F 3 "" H 700 -350 50  0001 C CNN
	1    3350 3000
	-1   0    0    -1  
$EndComp
$Comp
L CP1_Small C6
U 1 1 58C33352
P 3550 3000
F 0 "C6" H 3641 3046 50  0000 L CNN
F 1 "1uF_Al" H 3641 2955 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 900 -350 50  0001 C CNN
F 3 "" H 900 -350 50  0001 C CNN
	1    3550 3000
	1    0    0    -1  
$EndComp
$Comp
L R R26
U 1 1 58C342F9
P 4850 3150
F 0 "R26" H 4919 3196 50  0000 L CNN
F 1 "0R" H 4919 3105 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4780 3150 50  0001 C CNN
F 3 "" H 4850 3150 50  0000 C CNN
	1    4850 3150
	-1   0    0    -1  
$EndComp
$Comp
L R-78E5.0-1.0 U11
U 1 1 58C571BC
P 8650 2750
F 0 "U11" H 8650 3037 60  0000 C CNN
F 1 "R-78E5.0-1.0" H 8650 2931 60  0000 C CNN
F 2 "UNCAMotorsports:R-78Cxx-1.0" H 2600 1150 60  0001 C CNN
F 3 "" H 2600 1150 60  0000 C CNN
	1    8650 2750
	1    0    0    -1  
$EndComp
$Comp
L D_Zener_Small D7
U 1 1 58FBF2F0
P 6050 3300
F 0 "D7" H 6050 3390 50  0000 C CNN
F 1 "3.3V" H 6050 3210 50  0000 C CNN
F 2 "Diodes_SMD:SOD-323" V 6050 3300 50  0001 C CNN
F 3 "" V 6050 3300 50  0001 C CNN
	1    6050 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 3150 5850 2950
Wire Wire Line
	5650 2950 6150 2950
Wire Wire Line
	4850 2850 6150 2850
Wire Wire Line
	3150 2750 6150 2750
Wire Wire Line
	4300 2750 4300 3400
Connection ~ 4300 2750
Wire Wire Line
	5850 3450 5850 3650
Wire Wire Line
	4300 3700 4300 3950
Wire Wire Line
	4500 3850 4300 3850
Connection ~ 4300 3850
Wire Wire Line
	2600 2750 2850 2750
Wire Wire Line
	2000 2750 2300 2750
Wire Wire Line
	4300 4250 4300 4700
Wire Wire Line
	4850 4400 4300 4400
Wire Wire Line
	4850 4150 4850 4400
Connection ~ 4300 4400
Wire Wire Line
	6950 2850 7150 2850
Wire Wire Line
	7150 2850 7150 2750
Connection ~ 7150 2750
Connection ~ 5850 2950
Wire Wire Line
	8650 3050 8650 3250
Wire Wire Line
	8150 3100 8150 3150
Wire Wire Line
	8150 3150 9150 3150
Connection ~ 8650 3150
Wire Wire Line
	9150 3150 9150 3100
Wire Wire Line
	8150 2750 8150 2900
Wire Wire Line
	6950 2750 7700 2750
Wire Wire Line
	8000 2750 8350 2750
Wire Wire Line
	9150 2900 9150 2750
Wire Wire Line
	8950 2750 9950 2750
Connection ~ 8150 2750
Connection ~ 9150 2750
Wire Wire Line
	7350 2750 7350 2550
Connection ~ 7350 2750
Wire Wire Line
	5550 1200 5550 1000
Wire Wire Line
	3350 2900 3350 2750
Connection ~ 3350 2750
Wire Wire Line
	3550 2900 3550 2750
Connection ~ 3550 2750
Wire Wire Line
	3350 3250 3350 3100
Wire Wire Line
	3550 3250 3550 3100
Wire Wire Line
	5400 3700 5400 3450
Wire Wire Line
	5400 3450 4850 3450
Connection ~ 4850 3450
Wire Wire Line
	5400 4000 5400 4250
Wire Wire Line
	5400 4250 4850 4250
Connection ~ 4850 4250
Wire Wire Line
	4850 3300 4850 3550
Wire Wire Line
	9300 2600 9300 2750
Connection ~ 9300 2750
Wire Wire Line
	7500 3150 7500 3200
Wire Wire Line
	7500 2850 7500 2750
Connection ~ 7500 2750
Wire Wire Line
	7500 3500 7500 3400
Wire Wire Line
	9650 2850 9650 2750
Connection ~ 9650 2750
Wire Wire Line
	9650 3200 9650 3150
Wire Wire Line
	9650 3500 9650 3400
Wire Wire Line
	4850 3000 4850 2850
Connection ~ 5850 3550
Wire Wire Line
	6050 3200 6050 2950
Connection ~ 6050 2950
Wire Wire Line
	6050 3400 6050 3550
Wire Wire Line
	6050 3550 5850 3550
$Comp
L V7805W-500 U25
U 1 1 5930FD3A
P 7750 4300
F 0 "U25" H 7900 4104 50  0000 C CNN
F 1 "V7805W-2000" H 7750 4500 50  0000 C CNN
F 2 "UNCAMotorsports:R-78Cxx-1.0" H 7750 4300 50  0001 C CNN
F 3 "" H 7750 4300 50  0000 C CNN
	1    7750 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 4250 7350 4250
Connection ~ 7250 2750
$Comp
L GND #PWR051
U 1 1 5930FE1B
P 7750 4700
F 0 "#PWR051" H 7750 4450 50  0001 C CNN
F 1 "GND" H 7750 4550 50  0000 C CNN
F 2 "" H 7750 4700 50  0001 C CNN
F 3 "" H 7750 4700 50  0001 C CNN
	1    7750 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4700 7750 4550
$Comp
L C C9
U 1 1 5930FEB3
P 7250 4400
F 0 "C9" H 7275 4500 50  0000 L CNN
F 1 "10u" H 7275 4300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7288 4250 50  0001 C CNN
F 3 "" H 7250 4400 50  0001 C CNN
	1    7250 4400
	1    0    0    -1  
$EndComp
$Comp
L C C18
U 1 1 5930FF1A
P 8200 4400
F 0 "C18" H 8225 4500 50  0000 L CNN
F 1 "22u" H 8225 4300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8238 4250 50  0001 C CNN
F 3 "" H 8200 4400 50  0001 C CNN
	1    8200 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 4250 9500 4250
Wire Wire Line
	7250 4550 7250 4650
Wire Wire Line
	7250 4650 8200 4650
Connection ~ 7750 4650
Wire Wire Line
	8200 4650 8200 4550
Connection ~ 7250 4250
Connection ~ 8200 4250
$Comp
L R R51
U 1 1 59310885
P 8750 4400
F 0 "R51" V 8830 4400 50  0000 C CNN
F 1 "470" V 8750 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8680 4400 50  0001 C CNN
F 3 "" H 8750 4400 50  0001 C CNN
	1    8750 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 4550 8750 4650
$Comp
L GND #PWR052
U 1 1 593109F8
P 8750 4950
F 0 "#PWR052" H 8750 4700 50  0001 C CNN
F 1 "GND" H 8750 4800 50  0000 C CNN
F 2 "" H 8750 4950 50  0001 C CNN
F 3 "" H 8750 4950 50  0001 C CNN
	1    8750 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 4850 8750 4950
$Comp
L CONN_01X02 J11
U 1 1 59310B7F
P 9700 4300
F 0 "J11" H 9700 4450 50  0000 C CNN
F 1 "RPI_PWR" V 9800 4300 50  0000 C CNN
F 2 "Connectors_Molex:Molex_NanoFit_1x02x2.50mm_Straight" H 9700 4300 50  0001 C CNN
F 3 "" H 9700 4300 50  0001 C CNN
	1    9700 4300
	1    0    0    -1  
$EndComp
Connection ~ 8750 4250
$Comp
L GND #PWR053
U 1 1 59310C3E
P 9500 4400
F 0 "#PWR053" H 9500 4150 50  0001 C CNN
F 1 "GND" H 9500 4250 50  0000 C CNN
F 2 "" H 9500 4400 50  0001 C CNN
F 3 "" H 9500 4400 50  0001 C CNN
	1    9500 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 4400 9500 4350
$Comp
L LED_Small_ALT D20
U 1 1 59310E6C
P 8750 4750
F 0 "D20" V 8800 4550 50  0000 L CNN
F 1 "RPI_PWR" V 8650 4400 50  0000 L CNN
F 2 "LEDs:LED_0805" V 8750 4750 50  0001 C CNN
F 3 "" V 8750 4750 50  0001 C CNN
	1    8750 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7250 3750 7250 2750
Wire Wire Line
	7250 4050 7250 4250
$Comp
L Polyfuse F11
U 1 1 59311313
P 7250 3900
F 0 "F11" V 7150 3900 50  0000 C CNN
F 1 "2A" V 7350 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_1210_HandSoldering" H 7300 3700 50  0001 L CNN
F 3 "" H 7250 3900 50  0001 C CNN
	1    7250 3900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
