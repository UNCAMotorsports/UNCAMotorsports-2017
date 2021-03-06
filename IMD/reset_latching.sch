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
LIBS:UNCAMotorsports
LIBS:bspd-cache
LIBS:74xgxx
LIBS:SystemBlocks
LIBS:relays
LIBS:IMD-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L 74LVC2G74 U?
U 1 1 59092DDB
P 5400 2800
F 0 "U?" H 5500 3050 60  0000 C CNN
F 1 "74LVC2G74" H 5700 2600 60  0000 C CNN
F 2 "" H 5400 2800 60  0001 C CNN
F 3 "" H 5400 2800 60  0001 C CNN
	1    5400 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59092DE2
P 5000 2700
F 0 "#PWR?" H 5000 2450 50  0001 C CNN
F 1 "GND" H 5000 2550 50  0000 C CNN
F 2 "" H 5000 2700 50  0001 C CNN
F 3 "" H 5000 2700 50  0001 C CNN
	1    5000 2700
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 59092DE8
P 4750 2700
F 0 "R?" V 4830 2700 50  0000 C CNN
F 1 "2.2k" V 4750 2700 50  0000 C CNN
F 2 "" V 4680 2700 50  0001 C CNN
F 3 "" H 4750 2700 50  0001 C CNN
	1    4750 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 2550 5400 2550
Text Label 4200 2550 0    60   ~ 0
IMD_OUT
Connection ~ 4600 2550
Wire Wire Line
	4900 2700 5150 2700
Wire Wire Line
	4600 2700 4600 2550
$Comp
L C C?
U 1 1 59092DF4
P 4000 3100
F 0 "C?" H 4025 3200 50  0000 L CNN
F 1 "10uF" H 4100 3100 50  0000 L CNN
F 2 "" H 4038 2950 50  0001 C CNN
F 3 "" H 4000 3100 50  0001 C CNN
	1    4000 3100
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 59092DFB
P 4000 2750
F 0 "R?" V 4080 2750 50  0000 C CNN
F 1 "300k" V 4000 2750 50  0000 C CNN
F 2 "" V 3930 2750 50  0001 C CNN
F 3 "" H 4000 2750 50  0001 C CNN
	1    4000 2750
	1    0    0    -1  
$EndComp
$Comp
L D D?
U 1 1 59092E02
P 3750 2750
F 0 "D?" H 3750 2850 50  0000 C CNN
F 1 "Schottky" H 3800 2650 50  0000 C CNN
F 2 "" H 3750 2750 50  0001 C CNN
F 3 "" H 3750 2750 50  0001 C CNN
	1    3750 2750
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 59092E09
P 3550 3100
F 0 "R?" V 3630 3100 50  0000 C CNN
F 1 "1k" V 3550 3100 50  0000 C CNN
F 2 "" V 3480 3100 50  0001 C CNN
F 3 "" H 3550 3100 50  0001 C CNN
	1    3550 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2950 3550 2600
Wire Wire Line
	3550 2600 4000 2600
Wire Wire Line
	4000 2900 4000 2950
Connection ~ 4000 2900
Wire Wire Line
	4000 3250 3550 3250
$Comp
L GND #PWR?
U 1 1 59092E15
P 4000 3300
F 0 "#PWR?" H 4000 3050 50  0001 C CNN
F 1 "GND" H 4000 3150 50  0000 C CNN
F 2 "" H 4000 3300 50  0001 C CNN
F 3 "" H 4000 3300 50  0001 C CNN
	1    4000 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3300 4000 3250
$Comp
L +5V #PWR?
U 1 1 59092E1C
P 3750 2600
F 0 "#PWR?" H 3750 2450 50  0001 C CNN
F 1 "+5V" H 3750 2740 50  0000 C CNN
F 2 "" H 3750 2600 50  0001 C CNN
F 3 "" H 3750 2600 50  0001 C CNN
	1    3750 2600
	1    0    0    -1  
$EndComp
$Comp
L 74AUC2G00 U?
U 1 1 59092E22
P 5400 3400
F 0 "U?" H 5300 3550 50  0000 C CNN
F 1 "74AUC2G00" H 5400 3250 50  0000 C CNN
F 2 "" H 5400 3400 50  0001 C CNN
F 3 "" H 5400 3400 50  0001 C CNN
	1    5400 3400
	0    -1   -1   0   
$EndComp
$Comp
L 74AUC2G00 U?
U 1 1 59092E29
P 5100 3850
F 0 "U?" H 5000 4000 50  0000 C CNN
F 1 "74AUC2G00" H 5100 3700 50  0000 C CNN
F 2 "" H 5100 3850 50  0001 C CNN
F 3 "" H 5100 3850 50  0001 C CNN
	1    5100 3850
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 59092E30
P 5200 3150
F 0 "R?" V 5280 3150 50  0000 C CNN
F 1 "10k" V 5200 3150 50  0000 C CNN
F 2 "" V 5130 3150 50  0001 C CNN
F 3 "" H 5200 3150 50  0001 C CNN
	1    5200 3150
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 59092E37
P 5000 3150
F 0 "#PWR?" H 5000 3000 50  0001 C CNN
F 1 "+5V" H 5000 3290 50  0000 C CNN
F 2 "" H 5000 3150 50  0001 C CNN
F 3 "" H 5000 3150 50  0001 C CNN
	1    5000 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3150 5050 3150
Wire Wire Line
	5350 3150 5400 3150
Wire Wire Line
	5350 3850 5350 3700
Wire Wire Line
	4800 3800 4800 3900
$Comp
L R R?
U 1 1 59092E41
P 4700 3700
F 0 "R?" V 4780 3700 50  0000 C CNN
F 1 "10k" V 4700 3700 50  0000 C CNN
F 2 "" V 4630 3700 50  0001 C CNN
F 3 "" H 4700 3700 50  0001 C CNN
	1    4700 3700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 59092E48
P 4700 3500
F 0 "#PWR?" H 4700 3350 50  0001 C CNN
F 1 "+5V" H 4700 3640 50  0000 C CNN
F 2 "" H 4700 3500 50  0001 C CNN
F 3 "" H 4700 3500 50  0001 C CNN
	1    4700 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3500 4700 3550
Wire Wire Line
	4700 3850 4800 3850
Connection ~ 4800 3850
Wire Wire Line
	5450 3850 7000 3850
Wire Wire Line
	5450 3850 5450 3700
$Comp
L SW_Push SW?
U 1 1 59092E53
P 4700 4150
F 0 "SW?" H 4750 4250 50  0000 L CNN
F 1 "RESET" H 4700 4090 50  0000 C CNN
F 2 "" H 4700 4350 50  0001 C CNN
F 3 "" H 4700 4350 50  0001 C CNN
	1    4700 4150
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 59092E5A
P 4700 4400
F 0 "#PWR?" H 4700 4150 50  0001 C CNN
F 1 "GND" H 4700 4250 50  0000 C CNN
F 2 "" H 4700 4400 50  0001 C CNN
F 3 "" H 4700 4400 50  0001 C CNN
	1    4700 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4400 4700 4350
Wire Wire Line
	4700 3950 4700 3850
Connection ~ 5000 2700
Wire Wire Line
	3750 2900 5150 2900
Connection ~ 3750 2600
Wire Wire Line
	5400 3150 5400 3050
Wire Wire Line
	5650 2900 7100 2900
$Comp
L GND #PWR?
U 1 1 59092E67
P 6550 2400
F 0 "#PWR?" H 6550 2150 50  0001 C CNN
F 1 "GND" H 6550 2250 50  0000 C CNN
F 2 "" H 6550 2400 50  0001 C CNN
F 3 "" H 6550 2400 50  0001 C CNN
	1    6550 2400
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 59092E6D
P 5950 2200
F 0 "R?" V 6030 2200 50  0000 C CNN
F 1 "1k" V 5950 2200 50  0000 C CNN
F 2 "" V 5880 2200 50  0001 C CNN
F 3 "" H 5950 2200 50  0001 C CNN
	1    5950 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 2200 5800 2200
Wire Wire Line
	6100 2200 6250 2200
$Comp
L LED D?
U 1 1 59092E76
P 6300 1900
F 0 "D?" H 6300 2000 50  0000 C CNN
F 1 "LED" H 6300 1800 50  0000 C CNN
F 2 "" H 6300 1900 50  0001 C CNN
F 3 "" H 6300 1900 50  0001 C CNN
	1    6300 1900
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 59092E7D
P 5950 1900
F 0 "R?" V 6030 1900 50  0000 C CNN
F 1 "1k" V 5950 1900 50  0000 C CNN
F 2 "" V 5880 1900 50  0001 C CNN
F 3 "" H 5950 1900 50  0001 C CNN
	1    5950 1900
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 59092E84
P 5700 1900
F 0 "#PWR?" H 5700 1750 50  0001 C CNN
F 1 "+5V" H 5700 2040 50  0000 C CNN
F 2 "" H 5700 1900 50  0001 C CNN
F 3 "" H 5700 1900 50  0001 C CNN
	1    5700 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1900 5800 1900
Wire Wire Line
	6100 1900 6150 1900
Wire Wire Line
	6450 1900 6550 1900
Wire Wire Line
	6550 1900 6550 2000
Text Label 7100 2900 2    60   ~ 0
IMD_Latched_Out
$Comp
L Q_NMOS_DGS Q?
U 1 1 59092E8F
P 6450 2200
F 0 "Q?" H 6650 2250 50  0000 L CNN
F 1 "Q_NMOS_DGS" H 6650 2150 50  0000 L CNN
F 2 "" H 6650 2300 50  0001 C CNN
F 3 "" H 6450 2200 50  0001 C CNN
	1    6450 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2200 5650 2700
Text Label 7000 3850 2    60   ~ 0
IMD_OUT
$EndSCHEMATC
