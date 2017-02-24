EESchema Schematic File Version 2
LIBS:VehicleController-rescue
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
LIBS:Common-Parts-Library-CPL
LIBS:relays
LIBS:SystemBlocks
LIBS:VehicleController-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
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
L D_Schottky D1
U 1 1 587C7BB2
P 3000 2750
F 0 "D1" H 3000 2534 50  0000 C CNN
F 1 "D_Schottky" H 3000 2625 50  0000 C CNN
F 2 "" H 3000 2750 50  0000 C CNN
F 3 "" H 3000 2750 50  0000 C CNN
	1    3000 2750
	-1   0    0    1   
$EndComp
$Comp
L Polyfuse F1
U 1 1 587C7BB9
P 2450 2750
F 0 "F1" V 2225 2750 50  0000 C CNN
F 1 "Polyfuse" V 2316 2750 50  0000 C CNN
F 2 "" H 2500 2550 50  0001 L CNN
F 3 "" H 2450 2750 50  0001 C CNN
	1    2450 2750
	0    1    1    0   
$EndComp
$Comp
L TL431 U2
U 1 1 587C7BC0
P 4850 3850
F 0 "U2" H 4671 3903 60  0000 R CNN
F 1 "TL431" H 4671 3797 60  0000 R CNN
F 2 "" H 4850 3800 60  0000 C CNN
F 3 "" H 4850 3800 60  0000 C CNN
	1    4850 3850
	-1   0    0    -1  
$EndComp
$Comp
L BTS6133D U3
U 1 1 587C7BC7
P 6550 2850
F 0 "U3" H 6550 3237 60  0000 C CNN
F 1 "BTS6133D" H 6550 3131 60  0000 C CNN
F 2 "" H 6700 3050 60  0000 C CNN
F 3 "" H 6700 3050 60  0000 C CNN
	1    6550 2850
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 587C7BCE
P 4300 3550
F 0 "R1" H 4369 3596 50  0000 L CNN
F 1 "330k" H 4369 3505 50  0000 L CNN
F 2 "" V 4230 3550 50  0000 C CNN
F 3 "" H 4300 3550 50  0000 C CNN
	1    4300 3550
	-1   0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 587C7BD5
P 4300 4100
F 0 "R2" H 4369 4146 50  0000 L CNN
F 1 "120k" H 4369 4055 50  0000 L CNN
F 2 "" V 4230 4100 50  0000 C CNN
F 3 "" H 4300 4100 50  0000 C CNN
	1    4300 4100
	-1   0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 587C7BDC
P 6000 3300
F 0 "R3" H 6069 3346 50  0000 L CNN
F 1 "1k" H 6069 3255 50  0000 L CNN
F 2 "" V 5930 3300 50  0000 C CNN
F 3 "" H 6000 3300 50  0000 C CNN
	1    6000 3300
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 587C7BE3
P 6000 3550
F 0 "#PWR014" H 6000 3300 50  0001 C CNN
F 1 "GND" H 6005 3377 50  0000 C CNN
F 2 "" H 6000 3550 50  0000 C CNN
F 3 "" H 6000 3550 50  0000 C CNN
	1    6000 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3150 6000 2950
Wire Wire Line
	5800 2950 6150 2950
Wire Wire Line
	4850 3550 4850 2850
Wire Wire Line
	4850 2850 6150 2850
Wire Wire Line
	3150 2750 6150 2750
Wire Wire Line
	4300 2750 4300 3400
Connection ~ 4300 2750
Wire Wire Line
	6000 3550 6000 3450
Wire Wire Line
	4300 3700 4300 3950
Wire Wire Line
	4500 3850 4300 3850
Connection ~ 4300 3850
Wire Wire Line
	2600 2750 2850 2750
Wire Wire Line
	2000 2750 2300 2750
$Comp
L GND #PWR015
U 1 1 587C7BF7
P 4300 4700
F 0 "#PWR015" H 4300 4450 50  0001 C CNN
F 1 "GND" H 4305 4527 50  0000 C CNN
F 2 "" H 4300 4700 50  0000 C CNN
F 3 "" H 4300 4700 50  0000 C CNN
	1    4300 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4250 4300 4700
Wire Wire Line
	4300 4400 4850 4400
Wire Wire Line
	4850 4400 4850 4150
Connection ~ 4300 4400
Wire Wire Line
	6950 2850 7150 2850
Wire Wire Line
	7150 2850 7150 2750
Connection ~ 7150 2750
Text HLabel 2000 2750 0    60   Input ~ 0
PWR_IN
Text HLabel 5800 2950 0    60   Input ~ 0
CurrentSense
Connection ~ 6000 2950
$Comp
L AP1117 U4
U 1 1 58AEB84B
P 8100 2750
F 0 "U4" H 8100 3117 50  0000 C CNN
F 1 "AP1117" H 8100 3026 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 8100 2400 50  0001 C CNN
F 3 "" H 8200 2500 50  0000 C CNN
	1    8100 2750
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 58AEB852
P 7600 3000
F 0 "C3" H 7692 3046 50  0000 L CNN
F 1 "C_Small" H 7692 2955 50  0000 L CNN
F 2 "" H 7600 3000 50  0000 C CNN
F 3 "" H 7600 3000 50  0000 C CNN
	1    7600 3000
	-1   0    0    -1  
$EndComp
$Comp
L C_Small C4
U 1 1 58AEB859
P 8600 3000
F 0 "C4" H 8692 3046 50  0000 L CNN
F 1 "C_Small" H 8692 2955 50  0000 L CNN
F 2 "" H 8600 3000 50  0000 C CNN
F 3 "" H 8600 3000 50  0000 C CNN
	1    8600 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 58AEB860
P 8100 3250
F 0 "#PWR016" H 8100 3000 50  0001 C CNN
F 1 "GND" H 8105 3077 50  0000 C CNN
F 2 "" H 8100 3250 50  0000 C CNN
F 3 "" H 8100 3250 50  0000 C CNN
	1    8100 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 3050 8100 3250
Wire Wire Line
	7600 3100 7600 3150
Wire Wire Line
	7600 3150 8600 3150
Connection ~ 8100 3150
Wire Wire Line
	8600 3150 8600 3100
Wire Wire Line
	7600 2750 7600 2900
Wire Wire Line
	6950 2750 7800 2750
Wire Wire Line
	8600 2900 8600 2750
Wire Wire Line
	8400 2750 8900 2750
Connection ~ 7600 2750
Connection ~ 8600 2750
Text HLabel 7350 2550 1    60   Input ~ 0
12V
Wire Wire Line
	7350 2550 7350 2750
Connection ~ 7350 2750
Text HLabel 8900 2750 2    60   Input ~ 0
5V
$Comp
L PWR_FLAG #FLG017
U 1 1 58AF2028
P 5550 1000
F 0 "#FLG017" H 5550 1095 50  0001 C CNN
F 1 "PWR_FLAG" H 5550 1224 50  0001 C CNN
F 2 "" H 5550 1000 50  0000 C CNN
F 3 "" H 5550 1000 50  0000 C CNN
	1    5550 1000
	1    0    0    -1  
$EndComp
Text HLabel 5550 1200 3    60   Input ~ 0
12V
Wire Wire Line
	5550 1200 5550 1000
$Comp
L PWR_FLAG #FLG018
U 1 1 58AF2853
P 5700 1000
F 0 "#FLG018" H 5700 1095 50  0001 C CNN
F 1 "PWR_FLAG" H 5700 1224 50  0001 C CNN
F 2 "" H 5700 1000 50  0000 C CNN
F 3 "" H 5700 1000 50  0000 C CNN
	1    5700 1000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 58AF29E4
P 5700 1200
F 0 "#PWR019" H 5700 950 50  0001 C CNN
F 1 "GND" H 5705 1027 50  0000 C CNN
F 2 "" H 5700 1200 50  0000 C CNN
F 3 "" H 5700 1200 50  0000 C CNN
	1    5700 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1200 5700 1000
Text HLabel 5400 1200 3    60   Input ~ 0
PWR_IN
$Comp
L PWR_FLAG #FLG020
U 1 1 58AF2E1D
P 5400 1000
F 0 "#FLG020" H 5400 1095 50  0001 C CNN
F 1 "PWR_FLAG" H 5400 1224 50  0000 C CNN
F 2 "" H 5400 1000 50  0000 C CNN
F 3 "" H 5400 1000 50  0000 C CNN
	1    5400 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1200 5400 1000
$Comp
L USB_A P?
U 1 1 58B30D8B
P 8050 4350
F 0 "P?" V 7625 4274 50  0000 C CNN
F 1 "RPi_USB_PWR" V 7716 4274 50  0000 C CNN
F 2 "" V 8000 4250 50  0000 C CNN
F 3 "" V 8000 4250 50  0000 C CNN
	1    8050 4350
	0    -1   1    0   
$EndComp
$Comp
L C_Small C?
U 1 1 58B30D92
P 8550 4300
F 0 "C?" H 8642 4346 50  0000 L CNN
F 1 "C_Small" H 8642 4255 50  0000 L CNN
F 2 "" H 8550 4300 50  0000 C CNN
F 3 "" H 8550 4300 50  0000 C CNN
	1    8550 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58B30D9F
P 7950 4750
F 0 "#PWR?" H 7950 4500 50  0001 C CNN
F 1 "GND" H 7955 4577 50  0000 C CNN
F 2 "" H 7950 4750 50  0000 C CNN
F 3 "" H 7950 4750 50  0000 C CNN
	1    7950 4750
	1    0    0    -1  
$EndComp
NoConn ~ 8350 4250
NoConn ~ 8350 4350
Connection ~ 8550 4150
Wire Wire Line
	8550 4200 8550 4150
Connection ~ 8550 4450
Wire Wire Line
	8550 4400 8550 4450
Wire Wire Line
	8700 4450 8700 4550
Wire Wire Line
	8350 4450 8700 4450
Wire Wire Line
	7950 4750 7950 4650
Wire Wire Line
	8700 4150 8700 4050
Wire Wire Line
	8350 4150 8700 4150
Text HLabel 8700 4050 1    60   Input ~ 0
12V
$Comp
L GND #PWR?
U 1 1 58B31164
P 8700 4550
F 0 "#PWR?" H 8700 4300 50  0001 C CNN
F 1 "GND" H 8705 4377 50  0000 C CNN
F 2 "" H 8700 4550 50  0000 C CNN
F 3 "" H 8700 4550 50  0000 C CNN
	1    8700 4550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 58B0EE62
P 3350 3000
F 0 "C?" H 3442 3046 50  0000 L CNN
F 1 "C_Small" H 3442 2955 50  0000 L CNN
F 2 "" H 3350 3000 50  0000 C CNN
F 3 "" H 3350 3000 50  0000 C CNN
	1    3350 3000
	-1   0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 58B0EEFF
P 3550 3000
F 0 "C?" H 3642 3046 50  0000 L CNN
F 1 "C_Small" H 3642 2955 50  0000 L CNN
F 2 "" H 3550 3000 50  0000 C CNN
F 3 "" H 3550 3000 50  0000 C CNN
	1    3550 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 2900 3350 2750
Connection ~ 3350 2750
Wire Wire Line
	3550 2900 3550 2750
Connection ~ 3550 2750
$Comp
L GND #PWR?
U 1 1 58B0EFE3
P 3350 3250
F 0 "#PWR?" H 3350 3000 50  0001 C CNN
F 1 "GND" H 3355 3077 50  0000 C CNN
F 2 "" H 3350 3250 50  0000 C CNN
F 3 "" H 3350 3250 50  0000 C CNN
	1    3350 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3250 3350 3100
Wire Wire Line
	3550 3250 3550 3100
$Comp
L GND #PWR?
U 1 1 58B0F09D
P 3550 3250
F 0 "#PWR?" H 3550 3000 50  0001 C CNN
F 1 "GND" H 3555 3077 50  0000 C CNN
F 2 "" H 3550 3250 50  0000 C CNN
F 3 "" H 3550 3250 50  0000 C CNN
	1    3550 3250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
