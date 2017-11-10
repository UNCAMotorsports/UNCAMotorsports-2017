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
LIBS:Common-Parts-Library-CPL
LIBS:relays
LIBS:switches
LIBS:2017_Harness-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 9
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
L MCP2551 U15
U 1 1 58B36586
P 5450 3250
F 0 "U15" H 5450 3737 60  0000 C CNN
F 1 "MCP2551" H 5450 3631 60  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 5450 3250 60  0001 C CNN
F 3 "" H 5450 3250 60  0000 C CNN
	1    5450 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR059
U 1 1 58B3658D
P 5950 3500
F 0 "#PWR059" H 5950 3250 50  0001 C CNN
F 1 "GND" H 5955 3327 50  0000 C CNN
F 2 "" H 5950 3500 50  0000 C CNN
F 3 "" H 5950 3500 50  0000 C CNN
	1    5950 3500
	1    0    0    -1  
$EndComp
NoConn ~ 5850 3050
$Comp
L +5V #PWR060
U 1 1 58B36594
P 4900 2950
F 0 "#PWR060" H 4900 2800 50  0001 C CNN
F 1 "+5V" H 4915 3123 50  0000 C CNN
F 2 "" H 4900 2950 50  0000 C CNN
F 3 "" H 4900 2950 50  0000 C CNN
	1    4900 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR061
U 1 1 58B3659A
P 4950 3500
F 0 "#PWR061" H 4950 3250 50  0001 C CNN
F 1 "GND" H 4955 3327 50  0000 C CNN
F 2 "" H 4950 3500 50  0000 C CNN
F 3 "" H 4950 3500 50  0000 C CNN
	1    4950 3500
	1    0    0    -1  
$EndComp
$Comp
L R R32
U 1 1 58B365A2
P 5250 2500
F 0 "R32" V 5043 2500 50  0000 C CNN
F 1 "120" V 5134 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5180 2500 50  0001 C CNN
F 3 "" H 5250 2500 50  0000 C CNN
	1    5250 2500
	0    1    1    0   
$EndComp
Text Label 4800 2500 0    60   ~ 0
CANL
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
F 1 "1uF" H 4342 3155 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4250 3200 50  0001 C CNN
F 3 "" H 4250 3200 50  0000 C CNN
	1    4250 3200
	-1   0    0    -1  
$EndComp
$Comp
L +5V #PWR062
U 1 1 58B0DEC8
P 4250 3000
F 0 "#PWR062" H 4250 2850 50  0001 C CNN
F 1 "+5V" H 4265 3173 50  0000 C CNN
F 2 "" H 4250 3000 50  0000 C CNN
F 3 "" H 4250 3000 50  0000 C CNN
	1    4250 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR063
U 1 1 58B0DF2A
P 4250 3450
F 0 "#PWR063" H 4250 3200 50  0001 C CNN
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
	4950 3500 4950 3350
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
Wire Wire Line
	5850 3150 6200 3150
Text Label 6200 3150 2    60   ~ 0
CANH
Text Label 6200 3250 2    60   ~ 0
CANL
Wire Wire Line
	5850 3250 6200 3250
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
L GND #PWR064
U 1 1 58B7F609
P 7000 3450
F 0 "#PWR064" H 7000 3200 50  0001 C CNN
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
L GND #PWR065
U 1 1 58B7FA08
P 7700 3450
F 0 "#PWR065" H 7700 3200 50  0001 C CNN
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
L +12V #PWR066
U 1 1 58BABA64
P 7000 2950
F 0 "#PWR066" H 7000 2800 50  0001 C CNN
F 1 "+12V" H 7015 3123 50  0000 C CNN
F 2 "" H 7000 2950 50  0000 C CNN
F 3 "" H 7000 2950 50  0000 C CNN
	1    7000 2950
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR067
U 1 1 58BABA85
P 7700 2950
F 0 "#PWR067" H 7700 2800 50  0001 C CNN
F 1 "+12V" H 7715 3123 50  0000 C CNN
F 2 "" H 7700 2950 50  0000 C CNN
F 3 "" H 7700 2950 50  0000 C CNN
	1    7700 2950
	1    0    0    -1  
$EndComp
$Comp
L NDC7002N U14
U 1 1 58C2C3D8
P 5150 4750
F 0 "U14" H 5150 5147 60  0000 C CNN
F 1 "NDC7002N" H 5150 5041 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6" H 1200 1900 60  0001 C CNN
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
L GND #PWR068
U 1 1 58C2C777
P 4700 5000
F 0 "#PWR068" H 1200 2500 50  0001 C CNN
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
L LED_Small_ALT D11
U 1 1 58C2C900
P 5650 4650
F 0 "D11" H 5650 4885 50  0000 C CNN
F 1 "CANRX" H 5650 4794 50  0000 C CNN
F 2 "LEDs:LED-0805" V 1100 3550 50  0001 C CNN
F 3 "" V 1100 3550 50  0001 C CNN
	1    5650 4650
	1    0    0    -1  
$EndComp
$Comp
L LED_Small_ALT D12
U 1 1 58C2C94C
P 5650 4850
F 0 "D12" H 5650 4650 50  0000 C CNN
F 1 "CANTX" H 5650 4750 50  0000 C CNN
F 2 "LEDs:LED-0805" V 1100 3750 50  0001 C CNN
F 3 "" V 1100 3750 50  0001 C CNN
	1    5650 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 4650 5500 4650
Wire Wire Line
	5500 4850 5550 4850
$Comp
L R_Small R33
U 1 1 58C2D567
P 6050 4650
F 0 "R33" V 5854 4650 50  0000 C CNN
F 1 "220" V 5945 4650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 650 3100 50  0001 C CNN
F 3 "" H 650 3100 50  0001 C CNN
	1    6050 4650
	0    1    1    0   
$EndComp
$Comp
L R_Small R34
U 1 1 58C2D5C7
P 6050 4850
F 0 "R34" V 6154 4850 50  0000 C CNN
F 1 "220" V 6245 4850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 650 3300 50  0001 C CNN
F 3 "" H 650 3300 50  0001 C CNN
	1    6050 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	5950 4650 5750 4650
Wire Wire Line
	5750 4850 5950 4850
Wire Wire Line
	6150 4650 6350 4650
Wire Wire Line
	6350 4450 6350 4850
Wire Wire Line
	6350 4850 6150 4850
Connection ~ 6350 4650
$Comp
L CONN_02X04 P5
U 1 1 590C075D
P 7350 3200
F 0 "P5" H 7350 3450 50  0000 C CNN
F 1 "CONN_02X04" H 7350 2950 50  0000 C CNN
F 2 "Connectors_Molex:Molex_NanoFit_2x04x2.50mm_Straight" H 7350 2000 50  0001 C CNN
F 3 "" H 7350 2000 50  0000 C CNN
	1    7350 3200
	1    0    0    -1  
$EndComp
Text HLabel 3500 3100 2    60   Input ~ 0
CANTX
Text HLabel 3500 3200 2    60   Input ~ 0
CANRX
$Comp
L GND #PWR069
U 1 1 59121912
P 3450 3400
F 0 "#PWR069" H 3450 3150 50  0001 C CNN
F 1 "GND" H 3455 3227 50  0000 C CNN
F 2 "" H 3450 3400 50  0000 C CNN
F 3 "" H 3450 3400 50  0000 C CNN
	1    3450 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3300 3450 3300
Wire Wire Line
	3450 3300 3450 3400
Wire Wire Line
	3300 3200 3500 3200
Wire Wire Line
	3300 3100 3500 3100
$Comp
L +3V3 #PWR070
U 1 1 5919DAF9
P 6350 4450
F 0 "#PWR070" H 6350 4300 50  0001 C CNN
F 1 "+3V3" H 6365 4623 50  0000 C CNN
F 2 "" H 6350 4450 50  0001 C CNN
F 3 "" H 6350 4450 50  0001 C CNN
	1    6350 4450
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x03 J8
U 1 1 5A01F546
P 3100 3200
F 0 "J8" H 3180 3242 50  0000 L CNN
F 1 "CAN_SER" H 3180 3151 50  0000 L CNN
F 2 "" H 3100 3200 50  0001 C CNN
F 3 "" H 3100 3200 50  0001 C CNN
	1    3100 3200
	-1   0    0    -1  
$EndComp
$Comp
L Conn_01x02 J9
U 1 1 5A01F696
P 5500 2250
F 0 "J9" V 5466 2062 50  0000 R CNN
F 1 "Conn_01x02" V 5600 2350 50  0000 R CNN
F 2 "" H 5500 2250 50  0001 C CNN
F 3 "" H 5500 2250 50  0001 C CNN
	1    5500 2250
	0    -1   -1   0   
$EndComp
Text HLabel 7900 3150 2    60   BiDi ~ 0
CANL
Text HLabel 6800 3150 0    60   BiDi ~ 0
CANH
$EndSCHEMATC