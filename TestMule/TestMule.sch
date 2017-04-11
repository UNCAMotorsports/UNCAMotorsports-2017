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
EELAYER 25 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 1 1
Title "TestMule Controller"
Date "2017-04-09"
Rev "1"
Comp "UNC Asheville Motorsports"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Teensy_3.2 U1
U 1 1 58E97B9D
P 6800 5650
F 0 "U1" H 6050 6900 60  0000 C CNN
F 1 "Teensy_3.2" H 7350 4300 60  0000 C CNN
F 2 "" H 7150 6550 60  0000 C CNN
F 3 "" H 7150 6550 60  0000 C CNN
	1    6800 5650
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 J2
U 1 1 58E97C96
P 10200 4200
F 0 "J2" H 10200 4400 50  0000 C CNN
F 1 "S0" V 10300 4200 50  0000 C CNN
F 2 "" H 10200 4200 50  0001 C CNN
F 3 "" H 10200 4200 50  0001 C CNN
	1    10200 4200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 J3
U 1 1 58E97E0B
P 10200 4950
F 0 "J3" H 10200 5150 50  0000 C CNN
F 1 "S1" V 10300 4950 50  0000 C CNN
F 2 "" H 10200 4950 50  0001 C CNN
F 3 "" H 10200 4950 50  0001 C CNN
	1    10200 4950
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR4
U 1 1 58E97E4D
P 5900 2850
F 0 "#PWR4" H 5900 2700 50  0001 C CNN
F 1 "+12V" H 5900 2990 50  0000 C CNN
F 2 "" H 5900 2850 50  0001 C CNN
F 3 "" H 5900 2850 50  0001 C CNN
	1    5900 2850
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J1
U 1 1 58E97E6B
P 5500 3050
F 0 "J1" H 5500 3200 50  0000 C CNN
F 1 "Battery_In" V 5600 3050 50  0000 C CNN
F 2 "" H 5500 3050 50  0001 C CNN
F 3 "" H 5500 3050 50  0001 C CNN
	1    5500 3050
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR5
U 1 1 58E97F48
P 5900 3250
F 0 "#PWR5" H 5900 3000 50  0001 C CNN
F 1 "GND" H 5900 3100 50  0000 C CNN
F 2 "" H 5900 3250 50  0001 C CNN
F 3 "" H 5900 3250 50  0001 C CNN
	1    5900 3250
	1    0    0    -1  
$EndComp
$Comp
L AP1117 U2
U 1 1 58E98126
P 6900 3000
F 0 "U2" H 7000 2750 50  0000 C CNN
F 1 "AP1117" H 6900 3250 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 6900 2650 50  0001 C CNN
F 3 "" H 7000 2750 50  0001 C CNN
	1    6900 3000
	1    0    0    -1  
$EndComp
$Comp
L Fuse F1
U 1 1 58E981B7
P 6150 3000
F 0 "F1" V 6230 3000 50  0000 C CNN
F 1 "Fuse" V 6075 3000 50  0000 C CNN
F 2 "" V 6080 3000 50  0001 C CNN
F 3 "" H 6150 3000 50  0001 C CNN
	1    6150 3000
	0    1    1    0   
$EndComp
$Comp
L C_Small C2
U 1 1 58E9832F
P 6500 3200
F 0 "C2" H 6510 3270 50  0000 L CNN
F 1 "10uF" H 6510 3120 50  0000 L CNN
F 2 "" H 6500 3200 50  0001 C CNN
F 3 "" H 6500 3200 50  0001 C CNN
	1    6500 3200
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR6
U 1 1 58E983CF
P 6900 3500
F 0 "#PWR6" H 6900 3250 50  0001 C CNN
F 1 "GND" H 6900 3350 50  0000 C CNN
F 2 "" H 6900 3500 50  0001 C CNN
F 3 "" H 6900 3500 50  0001 C CNN
	1    6900 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2850 5900 3000
Wire Wire Line
	5700 3000 5900 3000
Wire Wire Line
	5900 3000 6000 3000
Wire Wire Line
	5900 3250 5900 3100
Wire Wire Line
	5900 3100 5700 3100
Connection ~ 5900 3000
Wire Wire Line
	6300 3000 6500 3000
Wire Wire Line
	6500 3000 6600 3000
Wire Wire Line
	6500 3100 6500 3000
Connection ~ 6500 3000
Wire Wire Line
	6500 3300 6500 3400
Wire Wire Line
	6500 3400 6900 3400
Wire Wire Line
	6900 3400 7350 3400
Wire Wire Line
	6900 3300 6900 3400
Wire Wire Line
	6900 3400 6900 3500
Connection ~ 6900 3400
$Comp
L C_Small C3
U 1 1 58E98436
P 7350 3200
F 0 "C3" H 7360 3270 50  0000 L CNN
F 1 "10uF" H 7360 3120 50  0000 L CNN
F 2 "" H 7350 3200 50  0001 C CNN
F 3 "" H 7350 3200 50  0001 C CNN
	1    7350 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3000 7350 3000
Wire Wire Line
	7350 3000 7800 3000
Wire Wire Line
	7350 3000 7350 3100
Wire Wire Line
	7350 3400 7350 3300
$Comp
L C_Small C1
U 1 1 58E98514
P 5000 5600
F 0 "C1" H 5010 5670 50  0000 L CNN
F 1 "10uF" H 5010 5520 50  0000 L CNN
F 2 "" H 5000 5600 50  0001 C CNN
F 3 "" H 5000 5600 50  0001 C CNN
	1    5000 5600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5000 4350 5000 4650
Wire Wire Line
	5000 4650 5000 5500
Wire Wire Line
	5000 4650 5800 4650
$Comp
L +5V #PWR1
U 1 1 58E98967
P 5000 4350
F 0 "#PWR1" H 5000 4200 50  0001 C CNN
F 1 "+5V" H 5000 4490 50  0000 C CNN
F 2 "" H 5000 4350 50  0001 C CNN
F 3 "" H 5000 4350 50  0001 C CNN
	1    5000 4350
	1    0    0    -1  
$EndComp
Connection ~ 5000 4650
$Comp
L GND #PWR2
U 1 1 58E98B17
P 5000 7100
F 0 "#PWR2" H 5000 6850 50  0001 C CNN
F 1 "GND" H 5000 6950 50  0000 C CNN
F 2 "" H 5000 7100 50  0001 C CNN
F 3 "" H 5000 7100 50  0001 C CNN
	1    5000 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 5700 5000 6600
Wire Wire Line
	5000 6600 5000 6700
Wire Wire Line
	5000 6700 5000 6850
Wire Wire Line
	5000 6850 5000 7100
Wire Wire Line
	5800 6600 5000 6600
Connection ~ 5000 6600
Wire Wire Line
	5800 6700 5000 6700
Connection ~ 5000 6700
Wire Wire Line
	5800 6850 5000 6850
Connection ~ 5000 6850
$Comp
L +3.3V #PWR3
U 1 1 58E98FC5
P 5600 4350
F 0 "#PWR3" H 5600 4200 50  0001 C CNN
F 1 "+3.3V" H 5600 4490 50  0000 C CNN
F 2 "" H 5600 4350 50  0001 C CNN
F 3 "" H 5600 4350 50  0001 C CNN
	1    5600 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4350 5600 4950
Wire Wire Line
	5600 4950 5600 5050
Wire Wire Line
	5600 4950 5800 4950
Wire Wire Line
	5600 5050 5800 5050
Connection ~ 5600 4950
NoConn ~ 5800 5650
NoConn ~ 5800 5900
NoConn ~ 5800 6000
NoConn ~ 5800 6350
NoConn ~ 5800 5350
NoConn ~ 5800 4750
NoConn ~ 5800 4550
$Comp
L MCP47FEBX2 U3
U 1 1 58E9A1F1
P 10100 6200
F 0 "U3" H 9850 5850 60  0000 C CNN
F 1 "MCP47FEBX2" H 10050 6550 60  0000 C CNN
F 2 "" H 9900 6350 60  0000 C CNN
F 3 "" H 9900 6350 60  0000 C CNN
	1    10100 6200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR9
U 1 1 58E9A8D3
P 9500 5900
F 0 "#PWR9" H 9500 5750 50  0001 C CNN
F 1 "+5V" H 9500 6040 50  0000 C CNN
F 2 "" H 9500 5900 50  0001 C CNN
F 3 "" H 9500 5900 50  0001 C CNN
	1    9500 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 5900 9500 6000
Wire Wire Line
	9600 6100 9200 6100
Text Label 9200 6100 0    60   ~ 0
SCL
Wire Wire Line
	9200 6200 9600 6200
Text Label 9200 6200 0    60   ~ 0
SDA
$Comp
L GND #PWR10
U 1 1 58E9AB56
P 9500 6500
F 0 "#PWR10" H 9500 6250 50  0001 C CNN
F 1 "GND" H 9500 6350 50  0000 C CNN
F 2 "" H 9500 6500 50  0001 C CNN
F 3 "" H 9500 6500 50  0001 C CNN
	1    9500 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 6300 9500 6400
Wire Wire Line
	9500 6400 9500 6500
Wire Wire Line
	9500 6400 9600 6400
Wire Wire Line
	9600 6300 9500 6300
Connection ~ 9500 6400
Text Label 11050 6000 2    60   ~ 0
VOUT0
Text Label 11050 6100 2    60   ~ 0
VOUT1
$Comp
L GND #PWR17
U 1 1 58E9ADC3
P 10700 6500
F 0 "#PWR17" H 10700 6250 50  0001 C CNN
F 1 "GND" H 10700 6350 50  0000 C CNN
F 2 "" H 10700 6500 50  0001 C CNN
F 3 "" H 10700 6500 50  0001 C CNN
	1    10700 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 6400 10700 6400
Wire Wire Line
	10700 6400 10700 6500
Wire Wire Line
	10600 6100 11250 6100
Wire Wire Line
	10600 6000 11250 6000
Connection ~ 7350 3000
$Comp
L +5V #PWR7
U 1 1 58E9B2F6
P 7800 2900
F 0 "#PWR7" H 7800 2750 50  0001 C CNN
F 1 "+5V" H 7800 3040 50  0000 C CNN
F 2 "" H 7800 2900 50  0001 C CNN
F 3 "" H 7800 2900 50  0001 C CNN
	1    7800 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3000 7800 2900
$Comp
L +5V #PWR11
U 1 1 58E9BC05
P 9900 4000
F 0 "#PWR11" H 9900 3850 50  0001 C CNN
F 1 "+5V" H 9900 4140 50  0000 C CNN
F 2 "" H 9900 4000 50  0001 C CNN
F 3 "" H 9900 4000 50  0001 C CNN
	1    9900 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 4000 9900 4100
Wire Wire Line
	9900 4100 10000 4100
$Comp
L GND #PWR12
U 1 1 58E9BED1
P 9900 4350
F 0 "#PWR12" H 9900 4100 50  0001 C CNN
F 1 "GND" H 9900 4200 50  0000 C CNN
F 2 "" H 9900 4350 50  0001 C CNN
F 3 "" H 9900 4350 50  0001 C CNN
	1    9900 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 4350 9900 4300
Wire Wire Line
	9900 4300 10000 4300
$Comp
L GND #PWR14
U 1 1 58E9BFCC
P 9900 5150
F 0 "#PWR14" H 9900 4900 50  0001 C CNN
F 1 "GND" H 9900 5000 50  0000 C CNN
F 2 "" H 9900 5150 50  0001 C CNN
F 3 "" H 9900 5150 50  0001 C CNN
	1    9900 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 5150 9900 5050
Wire Wire Line
	9900 5050 10000 5050
$Comp
L +5V #PWR13
U 1 1 58E9C096
P 9900 4800
F 0 "#PWR13" H 9900 4650 50  0001 C CNN
F 1 "+5V" H 9900 4940 50  0000 C CNN
F 2 "" H 9900 4800 50  0001 C CNN
F 3 "" H 9900 4800 50  0001 C CNN
	1    9900 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 4800 9900 4850
Wire Wire Line
	9900 4850 10000 4850
Wire Wire Line
	10000 4200 9600 4200
Text Label 9600 4200 0    60   ~ 0
SENSOR0
Text Label 9600 4950 0    60   ~ 0
SENSOR1
Wire Wire Line
	9600 4950 10000 4950
Wire Wire Line
	7800 4550 8250 4550
Wire Wire Line
	7800 4650 8250 4650
Text Label 8250 4550 2    60   ~ 0
SENSOR0
Text Label 8250 4650 2    60   ~ 0
SENSOR1
NoConn ~ 7800 4850
NoConn ~ 7800 4750
NoConn ~ 7800 4950
NoConn ~ 7800 5050
NoConn ~ 7800 5150
NoConn ~ 7800 5250
NoConn ~ 7800 5350
NoConn ~ 7800 5450
NoConn ~ 7800 5550
NoConn ~ 7800 5650
NoConn ~ 7800 5750
NoConn ~ 7800 5850
NoConn ~ 7800 5950
NoConn ~ 7800 6050
NoConn ~ 7800 6350
NoConn ~ 7800 6450
NoConn ~ 7800 6550
NoConn ~ 7800 6650
NoConn ~ 7800 6750
NoConn ~ 7800 6850
Wire Wire Line
	7800 6150 8300 6150
Text Label 8200 6150 2    60   ~ 0
SDA
Text Label 8200 6250 2    60   ~ 0
SCL
Wire Wire Line
	7800 6250 8500 6250
$Comp
L R R1
U 1 1 58E9DA6A
P 8300 5800
F 0 "R1" V 8380 5800 50  0000 C CNN
F 1 "R" V 8300 5800 50  0000 C CNN
F 2 "" V 8230 5800 50  0001 C CNN
F 3 "" H 8300 5800 50  0001 C CNN
	1    8300 5800
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 58E9DAFC
P 8500 5800
F 0 "R2" V 8580 5800 50  0000 C CNN
F 1 "R" V 8500 5800 50  0000 C CNN
F 2 "" V 8430 5800 50  0001 C CNN
F 3 "" H 8500 5800 50  0001 C CNN
	1    8500 5800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR8
U 1 1 58E9DB40
P 8300 5500
F 0 "#PWR8" H 8300 5350 50  0001 C CNN
F 1 "+5V" H 8300 5640 50  0000 C CNN
F 2 "" H 8300 5500 50  0001 C CNN
F 3 "" H 8300 5500 50  0001 C CNN
	1    8300 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 5500 8300 5550
Wire Wire Line
	8300 5550 8300 5650
Wire Wire Line
	8300 5550 8500 5550
Wire Wire Line
	8500 5550 8500 5650
Connection ~ 8300 5550
Wire Wire Line
	8300 6150 8300 5950
Wire Wire Line
	8500 6250 8500 5950
$Comp
L C_Small C5
U 1 1 58E9E4E2
P 10850 4200
F 0 "C5" H 10860 4270 50  0000 L CNN
F 1 "10uF" H 10860 4120 50  0000 L CNN
F 2 "" H 10850 4200 50  0001 C CNN
F 3 "" H 10850 4200 50  0001 C CNN
	1    10850 4200
	-1   0    0    -1  
$EndComp
$Comp
L C_Small C4
U 1 1 58E9EA94
P 10600 4200
F 0 "C4" H 10610 4270 50  0000 L CNN
F 1 "10uF" H 10610 4120 50  0000 L CNN
F 2 "" H 10600 4200 50  0001 C CNN
F 3 "" H 10600 4200 50  0001 C CNN
	1    10600 4200
	-1   0    0    -1  
$EndComp
$Comp
L C_Small C6
U 1 1 58E9EAE8
P 12100 6150
F 0 "C6" H 12110 6220 50  0000 L CNN
F 1 "10uF" H 12110 6070 50  0000 L CNN
F 2 "" H 12100 6150 50  0001 C CNN
F 3 "" H 12100 6150 50  0001 C CNN
	1    12100 6150
	-1   0    0    -1  
$EndComp
$Comp
L +5V #PWR18
U 1 1 58E9F013
P 10850 4000
F 0 "#PWR18" H 10850 3850 50  0001 C CNN
F 1 "+5V" H 10850 4140 50  0000 C CNN
F 2 "" H 10850 4000 50  0001 C CNN
F 3 "" H 10850 4000 50  0001 C CNN
	1    10850 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 4000 10850 4100
$Comp
L GND #PWR19
U 1 1 58E9F109
P 10850 4400
F 0 "#PWR19" H 10850 4150 50  0001 C CNN
F 1 "GND" H 10850 4250 50  0000 C CNN
F 2 "" H 10850 4400 50  0001 C CNN
F 3 "" H 10850 4400 50  0001 C CNN
	1    10850 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 4400 10850 4300
$Comp
L +5V #PWR15
U 1 1 58E9F197
P 10600 4000
F 0 "#PWR15" H 10600 3850 50  0001 C CNN
F 1 "+5V" H 10600 4140 50  0000 C CNN
F 2 "" H 10600 4000 50  0001 C CNN
F 3 "" H 10600 4000 50  0001 C CNN
	1    10600 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR16
U 1 1 58E9F1ED
P 10600 4400
F 0 "#PWR16" H 10600 4150 50  0001 C CNN
F 1 "GND" H 10600 4250 50  0000 C CNN
F 2 "" H 10600 4400 50  0001 C CNN
F 3 "" H 10600 4400 50  0001 C CNN
	1    10600 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 4400 10600 4300
Wire Wire Line
	10600 4000 10600 4100
$Comp
L CONN_01X04 J4
U 1 1 58EA0661
P 11450 6150
F 0 "J4" H 11450 6400 50  0000 C CNN
F 1 "CONN_01X04" V 11550 6150 50  0000 C CNN
F 2 "" H 11450 6150 50  0001 C CNN
F 3 "" H 11450 6150 50  0001 C CNN
	1    11450 6150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR20
U 1 1 58EA09BF
P 11150 6400
F 0 "#PWR20" H 11150 6150 50  0001 C CNN
F 1 "GND" H 11150 6250 50  0000 C CNN
F 2 "" H 11150 6400 50  0001 C CNN
F 3 "" H 11150 6400 50  0001 C CNN
	1    11150 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	11150 6400 11150 6300
Wire Wire Line
	11150 6300 11150 6200
Wire Wire Line
	11150 6200 11250 6200
Wire Wire Line
	11250 6300 11150 6300
Connection ~ 11150 6300
Wire Wire Line
	9500 6000 9600 6000
$Comp
L +5V #PWR21
U 1 1 58EA1F73
P 12100 5950
F 0 "#PWR21" H 12100 5800 50  0001 C CNN
F 1 "+5V" H 12100 6090 50  0000 C CNN
F 2 "" H 12100 5950 50  0001 C CNN
F 3 "" H 12100 5950 50  0001 C CNN
	1    12100 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	12100 5950 12100 6050
$Comp
L GND #PWR22
U 1 1 58EA2168
P 12100 6350
F 0 "#PWR22" H 12100 6100 50  0001 C CNN
F 1 "GND" H 12100 6200 50  0000 C CNN
F 2 "" H 12100 6350 50  0001 C CNN
F 3 "" H 12100 6350 50  0001 C CNN
	1    12100 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	12100 6350 12100 6250
$EndSCHEMATC
