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
LIBS:SystemBlocks
LIBS:UNCAMotorsports
LIBS:relays
LIBS:ESF_Diagrams-cache
EELAYER 26 0
EELAYER END
$Descr A 8500 11000 portrait
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
L +12V #PWR?
U 1 1 5874EB9C
P 850 2000
F 0 "#PWR?" H 850 1850 50  0001 C CNN
F 1 "+12V" H 865 2173 50  0000 C CNN
F 2 "" H 850 2000 50  0000 C CNN
F 3 "" H 850 2000 50  0000 C CNN
	1    850  2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  2000 850  2150
$Comp
L Generic_1x1 U?
U 1 1 5874EC29
P 1950 2950
F 0 "U?" H 1950 3337 60  0001 C CNN
F 1 "IMD" H 1950 2950 60  0000 C CNN
F 2 "" H 1950 2950 60  0001 C CNN
F 3 "" H 1950 2950 60  0001 C CNN
	1    1950 2950
	1    0    0    -1  
$EndComp
$Comp
L Generic_1x1 U?
U 1 1 5874F2C6
P 1500 2150
F 0 "U?" H 1500 2537 60  0001 C CNN
F 1 "GLVMS" H 1500 2150 60  0000 C CNN
F 2 "" H 1500 2150 60  0001 C CNN
F 3 "" H 1500 2150 60  0001 C CNN
	1    1500 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	850  2150 1100 2150
$Comp
L Generic_1x1 U?
U 1 1 5874F5A3
P 5550 2950
F 0 "U?" H 5550 3337 60  0001 C CNN
F 1 "TSMS" H 5550 2950 60  0000 C CNN
F 2 "" H 5550 2950 60  0001 C CNN
F 3 "" H 5550 2950 60  0001 C CNN
	1    5550 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	1900 2150 2000 2150
$Comp
L Generic_1x1 U?
U 1 1 5874EC8F
P 2850 2950
F 0 "U?" H 2850 3337 60  0001 C CNN
F 1 "BSPD" H 2850 2950 60  0000 C CNN
F 2 "" H 2850 2950 60  0001 C CNN
F 3 "" H 2850 2950 60  0001 C CNN
	1    2850 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2950 2450 2950
$Comp
L Generic_1x1 U?
U 1 1 5874F5EF
P 3750 2950
F 0 "U?" H 3750 3337 60  0001 C CNN
F 1 "Inertia" H 3750 2950 60  0000 C CNN
F 2 "" H 3750 2950 60  0001 C CNN
F 3 "" H 3750 2950 60  0001 C CNN
	1    3750 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 2950 3250 2950
$Comp
L Generic_1x1 U?
U 1 1 5874F606
P 2400 2150
F 0 "U?" H 2400 2537 60  0001 C CNN
F 1 "L_Estop" H 2400 2150 60  0000 C CNN
F 2 "" H 2400 2150 60  0001 C CNN
F 3 "" H 2400 2150 60  0001 C CNN
	1    2400 2150
	1    0    0    -1  
$EndComp
$Comp
L Generic_1x1 U?
U 1 1 5874F61C
P 3300 2150
F 0 "U?" H 3300 2537 60  0001 C CNN
F 1 "R_Estop" H 3300 2150 60  0000 C CNN
F 2 "" H 3300 2150 60  0001 C CNN
F 3 "" H 3300 2150 60  0001 C CNN
	1    3300 2150
	1    0    0    -1  
$EndComp
$Comp
L Generic_1x1 U?
U 1 1 5874F62C
P 4200 2150
F 0 "U?" H 4200 2537 60  0001 C CNN
F 1 "C_Estop" H 4200 2150 60  0000 C CNN
F 2 "" H 4200 2150 60  0001 C CNN
F 3 "" H 4200 2150 60  0001 C CNN
	1    4200 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2150 2900 2150
Wire Wire Line
	3700 2150 3800 2150
$Comp
L Generic_1x1 U?
U 1 1 5874F65E
P 4650 2950
F 0 "U?" H 4650 3337 60  0001 C CNN
F 1 "BOTS" H 4650 2950 60  0000 C CNN
F 2 "" H 4650 2950 60  0001 C CNN
F 3 "" H 4650 2950 60  0001 C CNN
	1    4650 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2950 4150 2950
Wire Wire Line
	4600 2150 4850 2150
Wire Wire Line
	4850 2150 4850 2550
Wire Wire Line
	4850 2550 1300 2550
Wire Wire Line
	1300 2550 1300 2950
Wire Wire Line
	1300 2950 1550 2950
$EndSCHEMATC
