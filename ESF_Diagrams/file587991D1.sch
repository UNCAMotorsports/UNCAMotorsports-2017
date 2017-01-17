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
LIBS:switches
LIBS:ESF_Diagrams-cache
EELAYER 26 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 3 3
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
L Battery BT?
U 1 1 587BE422
P 1900 2000
F 0 "BT?" H 2008 2046 50  0000 L CNN
F 1 "Battery" H 2008 1955 50  0000 L CNN
F 2 "" V 1900 2060 50  0000 C CNN
F 3 "" V 1900 2060 50  0000 C CNN
	1    1900 2000
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 587BE464
P 1900 2450
F 0 "#PWR?" H 1900 2200 50  0001 C CNN
F 1 "GND" H 1905 2277 50  0000 C CNN
F 2 "" H 1900 2450 50  0000 C CNN
F 3 "" H 1900 2450 50  0000 C CNN
	1    1900 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2450 1900 2200
Wire Wire Line
	1900 1800 1900 1650
Wire Wire Line
	1900 1650 2400 1650
$Comp
L Generic_2x2 U?
U 1 1 587BE706
P 2750 1750
F 0 "U?" H 2750 2137 60  0000 C CNN
F 1 "VCU" H 2750 2031 60  0000 C CNN
F 2 "" H 2750 1750 60  0001 C CNN
F 3 "" H 2750 1750 60  0001 C CNN
	1    2750 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 587BE798
P 2250 2050
F 0 "#PWR?" H 2250 1800 50  0001 C CNN
F 1 "GND" H 2255 1877 50  0000 C CNN
F 2 "" H 2250 2050 50  0000 C CNN
F 3 "" H 2250 2050 50  0000 C CNN
	1    2250 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2050 2250 1850
Wire Wire Line
	2250 1850 2400 1850
$Comp
L Generic_CAN_Node U?
U 1 1 587BED8A
P 3450 2450
F 0 "U?" H 3678 2610 60  0001 L CNN
F 1 "FL" H 3450 2450 60  0000 C CNN
F 2 "" H 3450 2450 60  0001 C CNN
F 3 "" H 3450 2450 60  0001 C CNN
	1    3450 2450
	1    0    0    -1  
$EndComp
$Comp
L Generic_CAN_Node U?
U 1 1 587BED90
P 3950 2450
F 0 "U?" H 4178 2610 60  0001 L CNN
F 1 "FR" H 3950 2450 60  0000 C CNN
F 2 "" H 3950 2450 60  0001 C CNN
F 3 "" H 3950 2450 60  0001 C CNN
	1    3950 2450
	1    0    0    -1  
$EndComp
$Comp
L Generic_CAN_Node U?
U 1 1 587BED96
P 4450 2450
F 0 "U?" H 4678 2610 60  0001 L CNN
F 1 "RL" H 4450 2450 60  0000 C CNN
F 2 "" H 4450 2450 60  0001 C CNN
F 3 "" H 4450 2450 60  0001 C CNN
	1    4450 2450
	1    0    0    -1  
$EndComp
$Comp
L Generic_CAN_Node U?
U 1 1 587BED9C
P 4950 2450
F 0 "U?" H 5178 2610 60  0001 L CNN
F 1 "RR" H 4950 2450 60  0000 C CNN
F 2 "" H 4950 2450 60  0001 C CNN
F 3 "" H 4950 2450 60  0001 C CNN
	1    4950 2450
	1    0    0    -1  
$EndComp
$Comp
L Generic_CAN_Node U?
U 1 1 587BEDA2
P 5450 2450
F 0 "U?" H 5678 2610 60  0001 L CNN
F 1 "PED" H 5450 2450 60  0000 C CNN
F 2 "" H 5450 2450 60  0001 C CNN
F 3 "" H 5450 2450 60  0001 C CNN
	1    5450 2450
	1    0    0    -1  
$EndComp
$Comp
L Generic_CAN_Node U?
U 1 1 587BEDA8
P 6100 3400
F 0 "U?" H 6328 3560 60  0001 L CNN
F 1 "RPi" H 6100 3400 60  0000 C CNN
F 2 "" H 6100 3400 60  0001 C CNN
F 3 "" H 6100 3400 60  0001 C CNN
	1    6100 3400
	1    0    0    -1  
$EndComp
$Comp
L Generic_CAN_Node U?
U 1 1 587BEDB4
P 6800 3400
F 0 "U?" H 7028 3560 60  0001 L CNN
F 1 "AMS" H 6800 3400 60  0000 C CNN
F 2 "" H 6800 3400 60  0001 C CNN
F 3 "" H 6800 3400 60  0001 C CNN
	1    6800 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1650 7500 1650
Text Label 7500 1650 2    60   ~ 0
+12v
Wire Wire Line
	3100 1850 7500 1850
Text Label 7500 1850 2    60   ~ 0
GND
Wire Wire Line
	3350 2050 3350 1650
Connection ~ 3350 1650
Wire Wire Line
	3550 2050 3550 1850
Connection ~ 3550 1850
Wire Wire Line
	3850 2050 3850 1650
Connection ~ 3850 1650
Wire Wire Line
	4050 2050 4050 1850
Connection ~ 4050 1850
Wire Wire Line
	4350 2050 4350 1650
Connection ~ 4350 1650
Wire Wire Line
	4550 2050 4550 1850
Connection ~ 4550 1850
Wire Wire Line
	4850 2050 4850 1650
Connection ~ 4850 1650
Wire Wire Line
	5050 2050 5050 1850
Connection ~ 5050 1850
Wire Wire Line
	5350 2050 5350 1650
Connection ~ 5350 1650
Wire Wire Line
	5550 2050 5550 1850
Connection ~ 5550 1850
Wire Wire Line
	6000 1650 6000 2100
Connection ~ 6000 1650
Wire Wire Line
	6200 2100 6200 1850
Connection ~ 6200 1850
Wire Wire Line
	6700 2100 6700 1650
Connection ~ 6700 1650
Wire Wire Line
	6900 2100 6900 1850
Connection ~ 6900 1850
Wire Wire Line
	3200 900  3200 1650
Connection ~ 3200 1650
Wire Wire Line
	6200 2800 6200 3000
Wire Wire Line
	6000 2800 6000 3000
$Comp
L Generic_2x2 U?
U 1 1 587BF073
P 6100 2450
F 0 "U?" V 6047 2678 60  0001 L CNN
F 1 "5v Reg" V 6100 2300 60  0000 L CNN
F 2 "" H 6100 2450 60  0001 C CNN
F 3 "" H 6100 2450 60  0001 C CNN
	1    6100 2450
	0    1    1    0   
$EndComp
$Comp
L Generic_2x2 U?
U 1 1 587C3E0C
P 6800 2450
F 0 "U?" V 6747 2678 60  0001 L CNN
F 1 "5v Reg" V 6800 2300 60  0000 L CNN
F 2 "" H 6800 2450 60  0001 C CNN
F 3 "" H 6800 2450 60  0001 C CNN
	1    6800 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 3000 6700 2800
Wire Wire Line
	6900 3000 6900 2800
Text Notes 6350 1600 0    60   ~ 0
CAT6 Cable
Text Notes 4000 1600 0    60   ~ 0
CAT6 Cable
Text Notes 5200 1600 0    60   ~ 0
CAT6 Cable
Wire Wire Line
	3200 900  4000 900 
Connection ~ 3200 1300
Wire Wire Line
	3200 1300 4000 1300
$EndSCHEMATC
