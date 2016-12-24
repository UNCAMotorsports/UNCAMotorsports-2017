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
L MotorController MC?
U 1 1 585DC538
P 6250 3150
F 0 "MC?" H 6275 3587 60  0000 C CNN
F 1 "MotorController" H 6275 3481 60  0000 C CNN
F 2 "" H 6250 3150 60  0001 C CNN
F 3 "" H 6250 3150 60  0001 C CNN
	1    6250 3150
	1    0    0    -1  
$EndComp
$Comp
L MotorController MC?
U 1 1 585DC635
P 6250 4150
F 0 "MC?" H 6275 4587 60  0000 C CNN
F 1 "MotorController" H 6275 4481 60  0000 C CNN
F 2 "" H 6250 4150 60  0001 C CNN
F 3 "" H 6250 4150 60  0001 C CNN
	1    6250 4150
	1    0    0    -1  
$EndComp
$Comp
L Battery BT?
U 1 1 585DC67D
P 4050 3650
F 0 "BT?" H 4158 3696 50  0000 L CNN
F 1 "Battery" H 4158 3605 50  0000 L CNN
F 2 "" V 4050 3710 50  0000 C CNN
F 3 "" V 4050 3710 50  0000 C CNN
	1    4050 3650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4050 3450 4050 3000
Wire Wire Line
	4050 3000 4350 3000
Wire Wire Line
	5150 3000 5750 3000
Wire Wire Line
	5750 4000 5350 4000
Wire Wire Line
	5350 4000 5350 3000
Connection ~ 5350 3000
Wire Wire Line
	4050 4300 4350 4300
Wire Wire Line
	5150 4300 5750 4300
Wire Wire Line
	4050 4300 4050 3850
Wire Wire Line
	5750 3300 5600 3300
Wire Wire Line
	5600 3300 5600 4300
Connection ~ 5600 4300
$Comp
L Motor M?
U 1 1 585DCBC0
P 7550 3150
F 0 "M?" H 7719 3150 60  0000 L CNN
F 1 "Motor" H 7500 3450 60  0001 C CNN
F 2 "" H 7550 3150 60  0001 C CNN
F 3 "" H 7550 3150 60  0001 C CNN
	1    7550 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3000 6900 3000
Wire Wire Line
	6900 3000 6900 2850
Wire Wire Line
	6900 2850 7550 2850
Wire Wire Line
	6800 3300 6900 3300
Wire Wire Line
	6900 3300 6900 3450
Wire Wire Line
	6900 3450 7550 3450
$Comp
L L L?
U 1 1 585DD077
P 7350 3150
F 0 "L?" H 7402 3196 50  0000 L CNN
F 1 "Field" H 7402 3105 50  0000 L CNN
F 2 "" H 7350 3150 50  0000 C CNN
F 3 "" H 7350 3150 50  0000 C CNN
	1    7350 3150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6800 3100 7000 3100
Wire Wire Line
	7000 3100 7000 2950
Wire Wire Line
	7000 2950 7350 2950
Wire Wire Line
	7350 2950 7350 3000
Wire Wire Line
	6800 3200 7000 3200
Wire Wire Line
	7000 3200 7000 3350
Wire Wire Line
	7000 3350 7350 3350
Wire Wire Line
	7350 3350 7350 3300
$Comp
L Motor M?
U 1 1 585DD474
P 7550 4150
F 0 "M?" H 7719 4150 60  0000 L CNN
F 1 "Motor" H 7500 4450 60  0001 C CNN
F 2 "" H 7550 4150 60  0001 C CNN
F 3 "" H 7550 4150 60  0001 C CNN
	1    7550 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 4000 6900 4000
Wire Wire Line
	6900 4000 6900 3850
Wire Wire Line
	6900 3850 7550 3850
Wire Wire Line
	6800 4300 6900 4300
Wire Wire Line
	6900 4300 6900 4450
Wire Wire Line
	6900 4450 7550 4450
$Comp
L L L?
U 1 1 585DD480
P 7350 4150
F 0 "L?" H 7402 4196 50  0000 L CNN
F 1 "Field" H 7402 4105 50  0000 L CNN
F 2 "" H 7350 4150 50  0000 C CNN
F 3 "" H 7350 4150 50  0000 C CNN
	1    7350 4150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6800 4100 7000 4100
Wire Wire Line
	7000 4100 7000 3950
Wire Wire Line
	7000 3950 7350 3950
Wire Wire Line
	7350 3950 7350 4000
Wire Wire Line
	6800 4200 7000 4200
Wire Wire Line
	7000 4200 7000 4350
Wire Wire Line
	7000 4350 7350 4350
Wire Wire Line
	7350 4350 7350 4300
$Comp
L Generic_1x1 U?
U 1 1 585DE2C8
P 4750 3000
F 0 "U?" H 4650 3250 60  0000 C CNN
F 1 "AIR" H 4750 3000 60  0000 C CNN
F 2 "" H 4750 3000 60  0001 C CNN
F 3 "" H 4750 3000 60  0001 C CNN
	1    4750 3000
	1    0    0    -1  
$EndComp
$Comp
L Generic_1x1 U?
U 1 1 585DEC17
P 4750 4300
F 0 "U?" H 4650 4550 60  0000 C CNN
F 1 "AIR" H 4750 4300 60  0000 C CNN
F 2 "" H 4750 4300 60  0001 C CNN
F 3 "" H 4750 4300 60  0001 C CNN
	1    4750 4300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
