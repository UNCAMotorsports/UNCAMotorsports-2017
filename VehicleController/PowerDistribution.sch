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
L D_Schottky D?
U 1 1 587C7BB2
P 4650 2700
F 0 "D?" H 4650 2484 50  0000 C CNN
F 1 "D_Schottky" H 4650 2575 50  0000 C CNN
F 2 "" H 4650 2700 50  0000 C CNN
F 3 "" H 4650 2700 50  0000 C CNN
	1    4650 2700
	-1   0    0    1   
$EndComp
$Comp
L Polyfuse F?
U 1 1 587C7BB9
P 4100 2700
F 0 "F?" V 3875 2700 50  0000 C CNN
F 1 "Polyfuse" V 3966 2700 50  0000 C CNN
F 2 "" H 4150 2500 50  0001 L CNN
F 3 "" H 4100 2700 50  0001 C CNN
	1    4100 2700
	0    1    1    0   
$EndComp
$Comp
L TL431 U?
U 1 1 587C7BC0
P 5700 3800
F 0 "U?" H 5521 3853 60  0000 R CNN
F 1 "TL431" H 5521 3747 60  0000 R CNN
F 2 "" H 5700 3750 60  0000 C CNN
F 3 "" H 5700 3750 60  0000 C CNN
	1    5700 3800
	-1   0    0    -1  
$EndComp
$Comp
L BTS6133D U?
U 1 1 587C7BC7
P 7400 2800
F 0 "U?" H 7400 3187 60  0000 C CNN
F 1 "BTS6133D" H 7400 3081 60  0000 C CNN
F 2 "" H 7550 3000 60  0000 C CNN
F 3 "" H 7550 3000 60  0000 C CNN
	1    7400 2800
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 587C7BCE
P 5150 3500
F 0 "R?" H 5219 3546 50  0000 L CNN
F 1 "330k" H 5219 3455 50  0000 L CNN
F 2 "" V 5080 3500 50  0000 C CNN
F 3 "" H 5150 3500 50  0000 C CNN
	1    5150 3500
	-1   0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 587C7BD5
P 5150 4050
F 0 "R?" H 5219 4096 50  0000 L CNN
F 1 "120k" H 5219 4005 50  0000 L CNN
F 2 "" V 5080 4050 50  0000 C CNN
F 3 "" H 5150 4050 50  0000 C CNN
	1    5150 4050
	-1   0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 587C7BDC
P 6850 3250
F 0 "R?" H 6919 3296 50  0000 L CNN
F 1 "1k" H 6919 3205 50  0000 L CNN
F 2 "" V 6780 3250 50  0000 C CNN
F 3 "" H 6850 3250 50  0000 C CNN
	1    6850 3250
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 587C7BE3
P 6850 3500
F 0 "#PWR?" H 6850 3250 50  0001 C CNN
F 1 "GND" H 6855 3327 50  0000 C CNN
F 2 "" H 6850 3500 50  0000 C CNN
F 3 "" H 6850 3500 50  0000 C CNN
	1    6850 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3100 6850 2900
Wire Wire Line
	6650 2900 6850 2900
Wire Wire Line
	6850 2900 7000 2900
Wire Wire Line
	5700 3500 5700 2800
Wire Wire Line
	5700 2800 7000 2800
Wire Wire Line
	4800 2700 5150 2700
Wire Wire Line
	5150 2700 7000 2700
Wire Wire Line
	5150 2700 5150 3350
Connection ~ 5150 2700
Wire Wire Line
	6850 3500 6850 3400
Wire Wire Line
	5150 3650 5150 3800
Wire Wire Line
	5150 3800 5150 3900
Wire Wire Line
	5350 3800 5150 3800
Connection ~ 5150 3800
Wire Wire Line
	4250 2700 4500 2700
Wire Wire Line
	3650 2700 3950 2700
$Comp
L GND #PWR?
U 1 1 587C7BF7
P 5150 4450
F 0 "#PWR?" H 5150 4200 50  0001 C CNN
F 1 "GND" H 5155 4277 50  0000 C CNN
F 2 "" H 5150 4450 50  0000 C CNN
F 3 "" H 5150 4450 50  0000 C CNN
	1    5150 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4200 5150 4350
Wire Wire Line
	5150 4350 5150 4450
Wire Wire Line
	5150 4350 5700 4350
Wire Wire Line
	5700 4350 5700 4100
Connection ~ 5150 4350
Wire Wire Line
	7800 2800 8000 2800
Wire Wire Line
	7800 2700 8000 2700
Wire Wire Line
	8000 2700 8200 2700
Wire Wire Line
	8000 2800 8000 2700
Connection ~ 8000 2700
Text HLabel 3650 2700 0    60   Input ~ 0
PowerIn
Text HLabel 8200 2700 2    60   Input ~ 0
PowerOut
Text HLabel 6650 2900 0    60   Input ~ 0
CurrentSense
Connection ~ 6850 2900
$EndSCHEMATC
