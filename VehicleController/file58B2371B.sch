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
Sheet 3 5
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
L FGMMOPA6H U9
U 1 1 58B2411D
P 6950 3150
F 0 "U9" H 7000 3837 60  0000 C CNN
F 1 "FGMMOPA6H" H 7000 3731 60  0000 C CNN
F 2 "UNCAMotorsports:GPS_16x16" H 6950 3400 60  0001 C CNN
F 3 "" H 6950 3400 60  0000 C CNN
	1    6950 3150
	1    0    0    -1  
$EndComp
$Comp
L C_Small C10
U 1 1 58B24124
P 5450 3000
F 0 "C10" H 5542 3046 50  0000 L CNN
F 1 "0.1uF" H 5542 2955 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5450 3000 50  0001 C CNN
F 3 "" H 5450 3000 50  0000 C CNN
	1    5450 3000
	-1   0    0    -1  
$EndComp
$Comp
L R_Small R17
U 1 1 58B2412B
P 6150 2600
F 0 "R17" V 6250 2600 50  0000 C CNN
F 1 "10k" V 6050 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 6150 2600 50  0001 C CNN
F 3 "" H 6150 2600 50  0000 C CNN
	1    6150 2600
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR46
U 1 1 58B24137
P 5450 3800
F 0 "#PWR46" H 5450 3550 50  0001 C CNN
F 1 "GND" H 5455 3627 50  0000 C CNN
F 2 "" H 5450 3800 50  0000 C CNN
F 3 "" H 5450 3800 50  0000 C CNN
	1    5450 3800
	1    0    0    -1  
$EndComp
$Comp
L U.FL_Antenna U10
U 1 1 58B24140
P 7850 3650
F 0 "U10" H 7700 3500 60  0000 C CNN
F 1 "U.FL_Antenna" H 8150 3800 60  0001 C CNN
F 2 "UNCAMotorsports:U.FL-CON" H 7850 3650 60  0001 C CNN
F 3 "" H 7850 3650 60  0000 C CNN
	1    7850 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR47
U 1 1 58B24148
P 8100 4050
F 0 "#PWR47" H 8100 3800 50  0001 C CNN
F 1 "GND" H 8105 3877 50  0000 C CNN
F 2 "" H 8100 4050 50  0000 C CNN
F 3 "" H 8100 4050 50  0000 C CNN
	1    8100 4050
	1    0    0    -1  
$EndComp
Text HLabel 6050 3150 0    60   Input ~ 0
3D-FIX
Text HLabel 6250 3550 0    60   Input ~ 0
GPS_TX
Text HLabel 6250 3650 0    60   Input ~ 0
GPS_RX
Text HLabel 6050 3050 0    60   Input ~ 0
VBACKUP
$Comp
L +3.3V #PWR45
U 1 1 58B276E4
P 5450 2300
F 0 "#PWR45" H 5450 2150 50  0001 C CNN
F 1 "+3.3V" H 5465 2473 50  0000 C CNN
F 2 "" H 5450 2300 50  0000 C CNN
F 3 "" H 5450 2300 50  0000 C CNN
	1    5450 2300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR44
U 1 1 58B23C84
P 3700 3600
F 0 "#PWR44" H 3700 3350 50  0001 C CNN
F 1 "GND" H 3705 3427 50  0000 C CNN
F 2 "" H 3700 3600 50  0000 C CNN
F 3 "" H 3700 3600 50  0000 C CNN
	1    3700 3600
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q3
U 1 1 58B23C7C
P 3800 3300
F 0 "Q3" H 4006 3346 50  0000 L CNN
F 1 "Q_NMOS_GDS" H 4006 3255 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 4000 3400 50  0001 C CNN
F 3 "" H 3800 3300 50  0000 C CNN
	1    3800 3300
	-1   0    0    -1  
$EndComp
$Comp
L +3.3V #PWR43
U 1 1 58B23C75
P 3700 2400
F 0 "#PWR43" H 3700 2250 50  0001 C CNN
F 1 "+3.3V" H 3715 2573 50  0000 C CNN
F 2 "" H 3700 2400 50  0000 C CNN
F 3 "" H 3700 2400 50  0000 C CNN
	1    3700 2400
	1    0    0    -1  
$EndComp
$Comp
L R_Small R16
U 1 1 58B23C6D
P 3700 2600
F 0 "R16" H 3759 2646 50  0000 L CNN
F 1 "220" H 3759 2555 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 3700 2600 50  0001 C CNN
F 3 "" H 3700 2600 50  0000 C CNN
	1    3700 2600
	1    0    0    -1  
$EndComp
Text HLabel 4250 3300 2    60   Input ~ 0
3D-FIX
Text HLabel 7750 3450 2    60   Input ~ 0
1PPS
Text HLabel 6050 2850 0    60   Input ~ 0
GPS_RST
Wire Wire Line
	5450 2300 5450 2900
Wire Wire Line
	6050 2850 6500 2850
Wire Wire Line
	5450 3100 5450 3800
Wire Wire Line
	5450 3450 6500 3450
Connection ~ 5450 3450
Wire Wire Line
	7600 3650 7500 3650
Wire Wire Line
	8100 3950 8000 3950
Wire Wire Line
	8100 2850 8100 4050
Wire Wire Line
	8000 3850 8100 3850
Connection ~ 8100 3950
Wire Wire Line
	7500 2850 8100 2850
Connection ~ 8100 3850
Wire Wire Line
	7500 3450 7750 3450
Wire Wire Line
	7500 3550 8100 3550
Connection ~ 8100 3550
Wire Wire Line
	6050 3150 6500 3150
Wire Wire Line
	6250 3550 6500 3550
Wire Wire Line
	6250 3650 6500 3650
Wire Wire Line
	6500 2950 6400 2950
Wire Wire Line
	6400 2950 6400 3450
Connection ~ 6400 3450
Wire Wire Line
	6050 3050 6500 3050
Wire Wire Line
	4000 3300 4250 3300
Wire Wire Line
	3700 3600 3700 3500
Wire Wire Line
	3700 3100 3700 3000
Wire Wire Line
	3700 2400 3700 2500
Wire Wire Line
	3700 2700 3700 2800
Wire Wire Line
	6150 2850 6150 2700
Wire Wire Line
	5450 2400 6400 2400
Wire Wire Line
	6400 2400 6400 2750
Wire Wire Line
	6400 2750 6500 2750
Connection ~ 5450 2400
Wire Wire Line
	6150 2500 6150 2400
Connection ~ 6150 2400
Connection ~ 6150 2850
NoConn ~ 7500 3350
$Comp
L C_Small C11
U 1 1 58B346B2
P 6250 3300
F 0 "C11" H 6342 3346 50  0000 L CNN
F 1 "0.1uF" H 6342 3255 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6250 3300 50  0001 C CNN
F 3 "" H 6250 3300 50  0000 C CNN
	1    6250 3300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6250 3200 6250 3050
Connection ~ 6250 3050
Wire Wire Line
	6250 3400 6250 3450
Connection ~ 6250 3450
$Comp
L LED_Small_ALT D8
U 1 1 58C36B03
P 3700 2900
F 0 "D8" V 3746 2832 50  0000 R CNN
F 1 "3DFix" V 3655 2832 50  0000 R CNN
F 2 "LEDs:LED-0805" V 0   0   50  0001 C CNN
F 3 "" V 0   0   50  0001 C CNN
	1    3700 2900
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
