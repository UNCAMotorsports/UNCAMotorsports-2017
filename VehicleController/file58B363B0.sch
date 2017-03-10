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
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
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
L MCP2551 U12
U 1 1 58B36586
P 5450 3250
F 0 "U12" H 5450 3737 60  0000 C CNN
F 1 "MCP2551" H 5450 3631 60  0000 C CNN
F 2 "" H 5450 3250 60  0000 C CNN
F 3 "" H 5450 3250 60  0000 C CNN
	1    5450 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR46
U 1 1 58B3658D
P 5950 3500
F 0 "#PWR46" H 5950 3250 50  0001 C CNN
F 1 "GND" H 5955 3327 50  0000 C CNN
F 2 "" H 5950 3500 50  0000 C CNN
F 3 "" H 5950 3500 50  0000 C CNN
	1    5950 3500
	1    0    0    -1  
$EndComp
NoConn ~ 5850 3050
$Comp
L +5V #PWR44
U 1 1 58B36594
P 4900 2950
F 0 "#PWR44" H 4900 2800 50  0001 C CNN
F 1 "+5V" H 4915 3123 50  0000 C CNN
F 2 "" H 4900 2950 50  0000 C CNN
F 3 "" H 4900 2950 50  0000 C CNN
	1    4900 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR45
U 1 1 58B3659A
P 4950 3550
F 0 "#PWR45" H 4950 3300 50  0001 C CNN
F 1 "GND" H 4955 3377 50  0000 C CNN
F 2 "" H 4950 3550 50  0000 C CNN
F 3 "" H 4950 3550 50  0000 C CNN
	1    4950 3550
	1    0    0    -1  
$EndComp
$Comp
L R R18
U 1 1 58B365A2
P 5250 2500
F 0 "R18" V 5043 2500 50  0000 C CNN
F 1 "120" V 5134 2500 50  0000 C CNN
F 2 "" V 5180 2500 50  0000 C CNN
F 3 "" H 5250 2500 50  0000 C CNN
	1    5250 2500
	0    1    1    0   
$EndComp
Text Label 4800 2500 0    60   ~ 0
CANL
$Comp
L CONN_01X02 P3
U 1 1 58B365AA
P 5550 2250
F 0 "P3" V 5765 2245 50  0000 C CNN
F 1 "CONN_01X02" V 5674 2245 50  0000 C CNN
F 2 "" H 5550 2250 50  0000 C CNN
F 3 "" H 5550 2250 50  0000 C CNN
	1    5550 2250
	0    -1   -1   0   
$EndComp
Text Label 5900 2500 2    60   ~ 0
CANH
Text HLabel 4800 3150 0    60   Input ~ 0
CANTX
Text HLabel 4800 3250 0    60   Input ~ 0
CANRX
$Comp
L C_Small C12
U 1 1 58B0DDAC
P 4250 3200
F 0 "C12" H 4342 3246 50  0000 L CNN
F 1 "C_Small" H 4342 3155 50  0000 L CNN
F 2 "" H 4250 3200 50  0000 C CNN
F 3 "" H 4250 3200 50  0000 C CNN
	1    4250 3200
	-1   0    0    -1  
$EndComp
$Comp
L +5V #PWR41
U 1 1 58B0DEC8
P 4250 3000
F 0 "#PWR41" H 4250 2850 50  0001 C CNN
F 1 "+5V" H 4265 3173 50  0000 C CNN
F 2 "" H 4250 3000 50  0000 C CNN
F 3 "" H 4250 3000 50  0000 C CNN
	1    4250 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR42
U 1 1 58B0DF2A
P 4250 3450
F 0 "#PWR42" H 4250 3200 50  0001 C CNN
F 1 "GND" H 4255 3277 50  0000 C CNN
F 2 "" H 4250 3450 50  0000 C CNN
F 3 "" H 4250 3450 50  0000 C CNN
	1    4250 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3350 5950 3350
Wire Wire Line
	5950 3350 5950 3500
Wire Wire Line
	4900 2950 4900 3050
Wire Wire Line
	4900 3050 5050 3050
Wire Wire Line
	4950 3550 4950 3350
Wire Wire Line
	4950 3350 5050 3350
Wire Wire Line
	5050 3150 4800 3150
Wire Wire Line
	4800 3250 5050 3250
Wire Wire Line
	5400 2500 5500 2500
Wire Wire Line
	5100 2500 4800 2500
Wire Wire Line
	5500 2500 5500 2450
Wire Wire Line
	5600 2450 5600 2500
Wire Wire Line
	5600 2500 5900 2500
Wire Wire Line
	4250 3100 4250 3000
Wire Wire Line
	4250 3450 4250 3300
$Comp
L MX150_8 P4
U 1 1 58B7A4A8
P 7350 3200
F 0 "P4" H 7350 3565 50  0000 C CNN
F 1 "MX150_8" H 7350 3474 50  0000 C CNN
F 2 "" H 7350 2000 50  0000 C CNN
F 3 "" H 7350 2000 50  0000 C CNN
	1    7350 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3150 6150 3150
Text Label 6150 3150 2    60   ~ 0
CANH
Text Label 6150 3250 2    60   ~ 0
CANL
Wire Wire Line
	5850 3250 6150 3250
Text Label 6800 3150 0    60   ~ 0
CANH
Wire Wire Line
	6800 3150 7100 3150
Wire Wire Line
	7100 3250 7050 3250
Wire Wire Line
	7050 3250 7050 3150
Connection ~ 7050 3150
Wire Wire Line
	7000 2950 7000 3050
Wire Wire Line
	7000 3050 7100 3050
$Comp
L GND #PWR49
U 1 1 58B7F609
P 7000 3450
F 0 "#PWR49" H 7000 3200 50  0001 C CNN
F 1 "GND" H 7005 3277 50  0000 C CNN
F 2 "" H 7000 3450 50  0000 C CNN
F 3 "" H 7000 3450 50  0000 C CNN
	1    7000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3450 7000 3350
Wire Wire Line
	7000 3350 7100 3350
Wire Wire Line
	7600 3150 7900 3150
Text Label 7900 3150 2    60   ~ 0
CANL
Wire Wire Line
	7600 3250 7650 3250
Wire Wire Line
	7650 3250 7650 3150
Connection ~ 7650 3150
Wire Wire Line
	7600 3050 7700 3050
Wire Wire Line
	7700 3050 7700 2950
$Comp
L GND #PWR51
U 1 1 58B7FA08
P 7700 3450
F 0 "#PWR51" H 7700 3200 50  0001 C CNN
F 1 "GND" H 7705 3277 50  0000 C CNN
F 2 "" H 7700 3450 50  0000 C CNN
F 3 "" H 7700 3450 50  0000 C CNN
	1    7700 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3350 7700 3350
Wire Wire Line
	7700 3350 7700 3450
$Comp
L +12V #PWR48
U 1 1 58BABA64
P 7000 2950
F 0 "#PWR48" H 7000 2800 50  0001 C CNN
F 1 "+12V" H 7015 3123 50  0000 C CNN
F 2 "" H 7000 2950 50  0000 C CNN
F 3 "" H 7000 2950 50  0000 C CNN
	1    7000 2950
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR50
U 1 1 58BABA85
P 7700 2950
F 0 "#PWR50" H 7700 2800 50  0001 C CNN
F 1 "+12V" H 7715 3123 50  0000 C CNN
F 2 "" H 7700 2950 50  0000 C CNN
F 3 "" H 7700 2950 50  0000 C CNN
	1    7700 2950
	1    0    0    -1  
$EndComp
$Comp
L NDC7002N U11
U 1 1 58C2C3D8
P 5150 4750
F 0 "U11" H 5150 5147 60  0000 C CNN
F 1 "NDC7002N" H 5150 5041 60  0000 C CNN
F 2 "" H 1200 1900 60  0000 C CNN
F 3 "" H 1200 1900 60  0000 C CNN
	1    5150 4750
	1    0    0    -1  
$EndComp
Text HLabel 4600 4600 0    60   Input ~ 0
CANTX
Text HLabel 4600 4700 0    60   Input ~ 0
CANRX
Wire Wire Line
	4600 4600 4800 4600
Wire Wire Line
	4600 4700 4800 4700
$Comp
L GND #PWR43
U 1 1 58C2C777
P 4700 5000
F 0 "#PWR43" H 1200 2500 50  0001 C CNN
F 1 "GND" H 4705 4827 50  0000 C CNN
F 2 "" H 1200 2750 50  0001 C CNN
F 3 "" H 1200 2750 50  0001 C CNN
	1    4700 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4800 4700 5000
Wire Wire Line
	4700 4800 4800 4800
Wire Wire Line
	4800 4900 4700 4900
Connection ~ 4700 4900
$Comp
L LED_Small_ALT D9
U 1 1 58C2C900
P 5650 4650
F 0 "D9" H 5650 4885 50  0000 C CNN
F 1 "LED_Yel" H 5650 4794 50  0000 C CNN
F 2 "" V 1100 3550 50  0001 C CNN
F 3 "" V 1100 3550 50  0001 C CNN
	1    5650 4650
	1    0    0    -1  
$EndComp
$Comp
L LED_Small_ALT D10
U 1 1 58C2C94C
P 5650 4850
F 0 "D10" H 5550 4750 50  0000 C CNN
F 1 "LED_Yel" H 5550 4650 50  0000 C CNN
F 2 "" V 1100 3750 50  0001 C CNN
F 3 "" V 1100 3750 50  0001 C CNN
	1    5650 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 4650 5500 4650
Wire Wire Line
	5500 4850 5550 4850
$Comp
L R_Small R19
U 1 1 58C2D567
P 5950 4650
F 0 "R19" V 5750 4750 50  0000 C CNN
F 1 "R_Small" V 5850 4750 50  0000 C CNN
F 2 "" H 550 3100 50  0001 C CNN
F 3 "" H 550 3100 50  0001 C CNN
	1    5950 4650
	0    1    1    0   
$EndComp
$Comp
L R_Small R20
U 1 1 58C2D5C7
P 5950 4850
F 0 "R20" V 6054 4850 50  0000 C CNN
F 1 "R_Small" V 6145 4850 50  0000 C CNN
F 2 "" H 550 3300 50  0001 C CNN
F 3 "" H 550 3300 50  0001 C CNN
	1    5950 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 4650 5750 4650
Wire Wire Line
	5750 4850 5850 4850
$Comp
L +5V #PWR47
U 1 1 58C2D6D1
P 6350 4450
F 0 "#PWR47" H 850 2600 50  0001 C CNN
F 1 "+5V" H 6365 4623 50  0000 C CNN
F 2 "" H 850 2750 50  0001 C CNN
F 3 "" H 850 2750 50  0001 C CNN
	1    6350 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4650 6350 4650
Wire Wire Line
	6350 4450 6350 4850
Wire Wire Line
	6350 4850 6050 4850
Connection ~ 6350 4650
$EndSCHEMATC
