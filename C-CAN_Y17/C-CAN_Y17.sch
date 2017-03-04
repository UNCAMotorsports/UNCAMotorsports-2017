EESchema Schematic File Version 2
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
LIBS:Cypress_cy8c5xlp
LIBS:relays
LIBS:SystemBlocks
LIBS:switches
LIBS:C-CAN_Y17-cache
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
L Cypress_5LP U3
U 1 1 58B77315
P 8800 2600
F 0 "U3" H 8250 4050 60  0000 C CNN
F 1 "Cypress_5LP" H 8300 3950 60  0000 C CNN
F 2 "UNCAMotorsports:CypressPSoC" H 8800 2800 60  0001 C CNN
F 3 "" H 8800 2800 60  0000 C CNN
	1    8800 2600
	1    0    0    -1  
$EndComp
$Comp
L MCP2551-I/SN U1
U 1 1 58B7735B
P 2200 3350
F 0 "U1" H 2550 3700 50  0000 C CNN
F 1 "MCP2551-I/SN" H 1800 3700 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 2200 2850 50  0001 C CIN
F 3 "" H 2200 3350 50  0000 C CNN
	1    2200 3350
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X04 P1
U 1 1 58B775B9
P 1500 1100
F 0 "P1" H 1500 1465 50  0000 C CNN
F 1 "CAN_Connector" H 1500 1374 50  0000 C CNN
F 2 "UNCAMotorsports:MX150_8Pin" H 1500 -100 50  0001 C CNN
F 3 "" H 1500 -100 50  0000 C CNN
	1    1500 1100
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X08 P2
U 1 1 58B77DCE
P 3400 5350
F 0 "P2" H 3400 5915 50  0000 C CNN
F 1 "Sensor_Connector" H 3400 5824 50  0000 C CNN
F 2 "UNCAMotorsports:MX150_16pin" H 3400 4150 50  0001 C CNN
F 3 "" H 3400 4150 50  0000 C CNN
	1    3400 5350
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR01
U 1 1 58B77F9E
P 3150 1300
F 0 "#PWR01" H 3150 1150 50  0001 C CNN
F 1 "+12V" H 3165 1473 50  0000 C CNN
F 2 "" H 3150 1300 50  0000 C CNN
F 3 "" H 3150 1300 50  0000 C CNN
	1    3150 1300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 58B77FBC
P 5200 1300
F 0 "#PWR02" H 5200 1150 50  0001 C CNN
F 1 "+5V" H 5215 1473 50  0000 C CNN
F 2 "" H 5200 1300 50  0000 C CNN
F 3 "" H 5200 1300 50  0000 C CNN
	1    5200 1300
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 58B77FDA
P 3150 1600
F 0 "C2" H 3265 1646 50  0000 L CNN
F 1 "10u" H 3265 1555 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3188 1450 50  0001 C CNN
F 3 "" H 3150 1600 50  0000 C CNN
	1    3150 1600
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 58B78024
P 3650 1600
F 0 "C3" H 3765 1646 50  0000 L CNN
F 1 "1u" H 3765 1555 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3688 1450 50  0001 C CNN
F 3 "" H 3650 1600 50  0000 C CNN
	1    3650 1600
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 58B7804C
P 4850 1600
F 0 "C4" H 4965 1646 50  0000 L CNN
F 1 "10u" H 4965 1555 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4888 1450 50  0001 C CNN
F 3 "" H 4850 1600 50  0000 C CNN
	1    4850 1600
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 58B7807E
P 5200 1600
F 0 "C5" H 5315 1646 50  0000 L CNN
F 1 "1u" H 5315 1555 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5238 1450 50  0001 C CNN
F 3 "" H 5200 1600 50  0000 C CNN
	1    5200 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1300 3150 1450
Wire Wire Line
	3150 1450 3950 1450
Connection ~ 3650 1450
Wire Wire Line
	4550 1450 5200 1450
Connection ~ 4850 1450
Wire Wire Line
	5200 1450 5200 1300
$Comp
L GND #PWR03
U 1 1 58B78147
P 4250 1900
F 0 "#PWR03" H 4250 1650 50  0001 C CNN
F 1 "GND" H 4255 1727 50  0000 C CNN
F 2 "" H 4250 1900 50  0000 C CNN
F 3 "" H 4250 1900 50  0000 C CNN
	1    4250 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1750 4250 1900
Wire Wire Line
	3150 1750 5200 1750
Connection ~ 3650 1750
Connection ~ 4250 1750
Connection ~ 4850 1750
$Comp
L GND #PWR04
U 1 1 58B78482
P 2200 3900
F 0 "#PWR04" H 2200 3650 50  0001 C CNN
F 1 "GND" H 2205 3727 50  0000 C CNN
F 2 "" H 2200 3900 50  0000 C CNN
F 3 "" H 2200 3900 50  0000 C CNN
	1    2200 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3900 2200 3750
Wire Wire Line
	1700 3550 1700 3800
Wire Wire Line
	1700 3800 2200 3800
Connection ~ 2200 3800
Text Label 1300 3150 0    60   ~ 0
CAN_TX
Wire Wire Line
	1300 3150 1700 3150
Text Label 1300 3250 0    60   ~ 0
CAN_RX
Wire Wire Line
	1300 3250 1700 3250
NoConn ~ 1700 3450
Text Label 3000 3250 2    60   ~ 0
CAN_H
Text Label 3000 3450 2    60   ~ 0
CAN_L
Wire Wire Line
	3000 3250 2700 3250
Wire Wire Line
	2700 3450 3000 3450
$Comp
L +5V #PWR05
U 1 1 58B786DB
P 2200 2450
F 0 "#PWR05" H 2200 2300 50  0001 C CNN
F 1 "+5V" H 2215 2623 50  0000 C CNN
F 2 "" H 2200 2450 50  0000 C CNN
F 3 "" H 2200 2450 50  0000 C CNN
	1    2200 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 2450 2200 2950
$Comp
L C C1
U 1 1 58B78755
P 2350 2600
F 0 "C1" H 2465 2646 50  0000 L CNN
F 1 "1u" H 2465 2555 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2388 2450 50  0001 C CNN
F 3 "" H 2350 2600 50  0000 C CNN
	1    2350 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 58B7879B
P 2350 2800
F 0 "#PWR06" H 2350 2550 50  0001 C CNN
F 1 "GND" H 2355 2627 50  0000 C CNN
F 2 "" H 2350 2800 50  0000 C CNN
F 3 "" H 2350 2800 50  0000 C CNN
	1    2350 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2750 2350 2800
Wire Wire Line
	2350 2450 2200 2450
Connection ~ 2200 2450
Text Label 950  1050 0    60   ~ 0
CAN_H
Text Label 2100 950  2    60   ~ 0
CAN_H
Wire Wire Line
	2100 950  1750 950 
$Comp
L +12V #PWR07
U 1 1 58B7A343
P 850 950
F 0 "#PWR07" H 850 800 50  0001 C CNN
F 1 "+12V" H 865 1123 50  0000 C CNN
F 2 "" H 850 950 50  0000 C CNN
F 3 "" H 850 950 50  0000 C CNN
	1    850  950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  950  1250 950 
$Comp
L +12V #PWR08
U 1 1 58B7A390
P 2200 1050
F 0 "#PWR08" H 2200 900 50  0001 C CNN
F 1 "+12V" H 2215 1223 50  0000 C CNN
F 2 "" H 2200 1050 50  0000 C CNN
F 3 "" H 2200 1050 50  0000 C CNN
	1    2200 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1050 1750 1050
$Comp
L GND #PWR09
U 1 1 58B7A3DE
P 850 1150
F 0 "#PWR09" H 850 900 50  0001 C CNN
F 1 "GND" H 855 977 50  0000 C CNN
F 2 "" H 850 1150 50  0000 C CNN
F 3 "" H 850 1150 50  0000 C CNN
	1    850  1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  1150 1250 1150
$Comp
L GND #PWR010
U 1 1 58B7A438
P 2200 1250
F 0 "#PWR010" H 2200 1000 50  0001 C CNN
F 1 "GND" H 2205 1077 50  0000 C CNN
F 2 "" H 2200 1250 50  0000 C CNN
F 3 "" H 2200 1250 50  0000 C CNN
	1    2200 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1250 1750 1250
Text Label 2100 1150 2    60   ~ 0
CAN_L
Wire Wire Line
	2100 1150 1750 1150
Text Label 950  1250 0    60   ~ 0
CAN_L
Wire Wire Line
	950  1250 1250 1250
Wire Wire Line
	950  1050 1250 1050
$Comp
L +5V #PWR011
U 1 1 58B7AF23
P 2700 5000
F 0 "#PWR011" H 2700 4850 50  0001 C CNN
F 1 "+5V" H 2715 5173 50  0000 C CNN
F 2 "" H 2700 5000 50  0000 C CNN
F 3 "" H 2700 5000 50  0000 C CNN
	1    2700 5000
	1    0    0    -1  
$EndComp
Text Label 3900 5000 2    60   ~ 0
S1
Wire Wire Line
	3900 5000 3650 5000
$Comp
L GND #PWR012
U 1 1 58B7B062
P 2700 5100
F 0 "#PWR012" H 2700 4850 50  0001 C CNN
F 1 "GND" H 2705 4927 50  0000 C CNN
F 2 "" H 2700 5100 50  0000 C CNN
F 3 "" H 2700 5100 50  0000 C CNN
	1    2700 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 5100 3150 5100
$Comp
L +5V #PWR013
U 1 1 58B7B0B7
P 4200 5100
F 0 "#PWR013" H 4200 4950 50  0001 C CNN
F 1 "+5V" H 4215 5273 50  0000 C CNN
F 2 "" H 4200 5100 50  0000 C CNN
F 3 "" H 4200 5100 50  0000 C CNN
	1    4200 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5100 3650 5100
Text Label 3000 5200 0    60   ~ 0
S2
Wire Wire Line
	3000 5200 3150 5200
$Comp
L GND #PWR014
U 1 1 58B7B15B
P 4200 5200
F 0 "#PWR014" H 4200 4950 50  0001 C CNN
F 1 "GND" H 4205 5027 50  0000 C CNN
F 2 "" H 4200 5200 50  0000 C CNN
F 3 "" H 4200 5200 50  0000 C CNN
	1    4200 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5200 3650 5200
$Comp
L +5V #PWR015
U 1 1 58B7B1B3
P 2500 5300
F 0 "#PWR015" H 2500 5150 50  0001 C CNN
F 1 "+5V" H 2515 5473 50  0000 C CNN
F 2 "" H 2500 5300 50  0000 C CNN
F 3 "" H 2500 5300 50  0000 C CNN
	1    2500 5300
	1    0    0    -1  
$EndComp
Text Label 3900 5300 2    60   ~ 0
H1
Wire Wire Line
	3900 5300 3650 5300
Wire Wire Line
	3150 5400 2500 5400
Wire Wire Line
	2500 5400 2500 5300
Text Label 3900 5400 2    60   ~ 0
S3
Wire Wire Line
	3900 5400 3650 5400
$Comp
L GND #PWR016
U 1 1 58B9FCC5
P 2500 5500
F 0 "#PWR016" H 2500 5250 50  0001 C CNN
F 1 "GND" H 2505 5327 50  0000 C CNN
F 2 "" H 2500 5500 50  0000 C CNN
F 3 "" H 2500 5500 50  0000 C CNN
	1    2500 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 5500 3150 5500
$Comp
L +5V #PWR017
U 1 1 58B9FD2F
P 4350 5500
F 0 "#PWR017" H 4350 5350 50  0001 C CNN
F 1 "+5V" H 4365 5673 50  0000 C CNN
F 2 "" H 4350 5500 50  0000 C CNN
F 3 "" H 4350 5500 50  0000 C CNN
	1    4350 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 5500 3650 5500
Text Label 3000 5600 0    60   ~ 0
S4
Wire Wire Line
	3000 5600 3150 5600
Wire Wire Line
	2700 5500 2700 5700
Wire Wire Line
	2700 5700 3150 5700
Connection ~ 2700 5500
$Comp
L GND #PWR018
U 1 1 58B9FEC2
P 4350 5700
F 0 "#PWR018" H 4350 5450 50  0001 C CNN
F 1 "GND" H 4355 5527 50  0000 C CNN
F 2 "" H 4350 5700 50  0000 C CNN
F 3 "" H 4350 5700 50  0000 C CNN
	1    4350 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 5700 3650 5700
Wire Wire Line
	3150 5300 3050 5300
Wire Wire Line
	3050 5300 3050 5400
Connection ~ 3050 5400
Wire Wire Line
	3650 5600 3800 5600
Wire Wire Line
	3800 5600 3800 5700
Connection ~ 3800 5700
Text Label 7250 3700 0    60   ~ 0
CAN_TX
Text Label 7250 3600 0    60   ~ 0
CAN_RX
Wire Wire Line
	7250 3600 7800 3600
Wire Wire Line
	7250 3700 7800 3700
$Comp
L GND #PWR019
U 1 1 58BA0B14
P 8800 4350
F 0 "#PWR019" H 8800 4100 50  0001 C CNN
F 1 "GND" H 8805 4177 50  0000 C CNN
F 2 "" H 8800 4350 50  0000 C CNN
F 3 "" H 8800 4350 50  0000 C CNN
	1    8800 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 4350 8800 4200
Wire Wire Line
	8900 4300 8900 4200
Wire Wire Line
	8700 4300 8900 4300
Connection ~ 8800 4300
Wire Wire Line
	8700 4300 8700 4200
$Comp
L +5V #PWR020
U 1 1 58BA0DD0
P 8700 800
F 0 "#PWR020" H 8700 650 50  0001 C CNN
F 1 "+5V" H 8715 973 50  0000 C CNN
F 2 "" H 8700 800 50  0000 C CNN
F 3 "" H 8700 800 50  0000 C CNN
	1    8700 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 800  8700 1100
Wire Wire Line
	8700 950  8800 950 
Wire Wire Line
	8800 950  8800 1100
Connection ~ 8700 950 
Text Label 10150 3700 2    60   ~ 0
S1
Wire Wire Line
	10150 3700 9800 3700
Text Label 10150 3600 2    60   ~ 0
S2
Wire Wire Line
	10150 3600 9800 3600
Text Label 10150 3400 2    60   ~ 0
S3
Text Label 10150 3300 2    60   ~ 0
S4
Wire Wire Line
	10150 3300 9800 3300
Wire Wire Line
	9800 3400 10150 3400
Text Label 7250 3800 0    60   ~ 0
H1
Wire Wire Line
	7250 3800 7800 3800
$Comp
L R R2
U 1 1 58BA033B
P 8950 950
F 0 "R2" V 8743 950 50  0000 C CNN
F 1 "1k" V 8834 950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8880 950 50  0001 C CNN
F 3 "" H 8950 950 50  0000 C CNN
	1    8950 950 
	0    1    1    0   
$EndComp
Connection ~ 8800 950 
Wire Wire Line
	8900 1100 9100 1100
Wire Wire Line
	9100 1100 9100 950 
$Comp
L SW_Push SW1
U 1 1 58BA0412
P 9350 950
F 0 "SW1" H 9350 1235 50  0000 C CNN
F 1 "SW_Push" H 9350 1144 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH_6mm" H 9350 1150 50  0001 C CNN
F 3 "" H 9350 1150 50  0000 C CNN
	1    9350 950 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 58BA0480
P 9600 950
F 0 "#PWR021" H 9600 700 50  0001 C CNN
F 1 "GND" H 9605 777 50  0000 C CNN
F 2 "" H 9600 950 50  0000 C CNN
F 3 "" H 9600 950 50  0000 C CNN
	1    9600 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 950  9550 950 
Wire Wire Line
	9100 950  9150 950 
$Comp
L Crystal Y1
U 1 1 58BA0BB2
P 10600 2800
F 0 "Y1" H 10600 3068 50  0000 C CNN
F 1 "Crystal" H 10600 2977 50  0000 C CNN
F 2 "Crystals:Crystal_SMD_HC49-SD_HandSoldering" H 10600 2800 50  0001 C CNN
F 3 "" H 10600 2800 50  0000 C CNN
	1    10600 2800
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 58BA0BEC
P 10300 2950
F 0 "C7" H 10415 2996 50  0000 L CNN
F 1 "27pF" H 10415 2905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10338 2800 50  0001 C CNN
F 3 "" H 10300 2950 50  0000 C CNN
	1    10300 2950
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 58BA0C22
P 10900 2950
F 0 "C8" H 11015 2996 50  0000 L CNN
F 1 "27pF" H 11015 2905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10938 2800 50  0001 C CNN
F 3 "" H 10900 2950 50  0000 C CNN
	1    10900 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 3100 10900 3100
$Comp
L GND #PWR022
U 1 1 58BA0CB8
P 10600 3100
F 0 "#PWR022" H 10600 2850 50  0001 C CNN
F 1 "GND" H 10605 2927 50  0000 C CNN
F 2 "" H 10600 3100 50  0000 C CNN
F 3 "" H 10600 3100 50  0000 C CNN
	1    10600 3100
	1    0    0    -1  
$EndComp
Connection ~ 10600 3100
Wire Wire Line
	9800 2800 10450 2800
Connection ~ 10300 2800
Wire Wire Line
	9800 2700 10100 2700
Wire Wire Line
	10100 2700 10100 2450
Wire Wire Line
	10100 2450 10900 2450
Wire Wire Line
	10900 2450 10900 2800
Wire Wire Line
	10900 2800 10750 2800
Connection ~ 10900 2800
$Comp
L C C6
U 1 1 58BA105A
P 10150 1850
F 0 "C6" H 10265 1896 50  0000 L CNN
F 1 "1uF" H 10265 1805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10188 1700 50  0001 C CNN
F 3 "" H 10150 1850 50  0000 C CNN
	1    10150 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 1700 9800 1700
$Comp
L GND #PWR023
U 1 1 58BA1105
P 10150 2050
F 0 "#PWR023" H 10150 1800 50  0001 C CNN
F 1 "GND" H 10155 1877 50  0000 C CNN
F 2 "" H 10150 2050 50  0000 C CNN
F 3 "" H 10150 2050 50  0000 C CNN
	1    10150 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 2050 10150 2000
$Comp
L CONN_01X02 P3
U 1 1 58BA1376
P 9100 5250
F 0 "P3" H 9177 5291 50  0000 L CNN
F 1 "CAN_Terminate" H 9177 5200 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 9100 5250 50  0001 C CNN
F 3 "" H 9100 5250 50  0000 C CNN
	1    9100 5250
	1    0    0    -1  
$EndComp
Text Label 8050 5200 0    60   ~ 0
CAN_H
Text Label 8050 5300 0    60   ~ 0
CAN_L
$Comp
L R R1
U 1 1 58BA14DC
P 8600 5200
F 0 "R1" V 8393 5200 50  0000 C CNN
F 1 "120" V 8484 5200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8530 5200 50  0001 C CNN
F 3 "" H 8600 5200 50  0000 C CNN
	1    8600 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 5200 8450 5200
Wire Wire Line
	8750 5200 8900 5200
Wire Wire Line
	8900 5300 8050 5300
NoConn ~ 9800 1400
NoConn ~ 9800 1500
NoConn ~ 9800 1600
NoConn ~ 9800 1800
NoConn ~ 9800 1900
NoConn ~ 9800 2000
NoConn ~ 9800 2100
NoConn ~ 7800 2100
NoConn ~ 7800 2000
NoConn ~ 7800 1900
NoConn ~ 7800 1800
NoConn ~ 7800 1700
NoConn ~ 7800 1600
NoConn ~ 7800 1500
NoConn ~ 7800 1400
NoConn ~ 7800 2300
NoConn ~ 7800 2400
NoConn ~ 7800 2500
NoConn ~ 7800 2600
NoConn ~ 7800 2700
NoConn ~ 7800 2800
NoConn ~ 7800 2900
NoConn ~ 7800 3000
NoConn ~ 7800 3200
NoConn ~ 7800 3300
NoConn ~ 7800 3400
NoConn ~ 7800 3500
NoConn ~ 7800 3900
NoConn ~ 9800 2300
NoConn ~ 9800 2400
NoConn ~ 9800 2500
NoConn ~ 9800 2600
NoConn ~ 9800 3000
NoConn ~ 9800 3100
NoConn ~ 9800 3200
NoConn ~ 9800 3500
$Comp
L PWR_FLAG #FLG024
U 1 1 58BA2BC0
P 3650 1450
F 0 "#FLG024" H 3650 1545 50  0001 C CNN
F 1 "PWR_FLAG" H 3650 1674 50  0000 C CNN
F 2 "" H 3650 1450 50  0000 C CNN
F 3 "" H 3650 1450 50  0000 C CNN
	1    3650 1450
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG025
U 1 1 58BA2BF8
P 3650 1750
F 0 "#FLG025" H 3650 1845 50  0001 C CNN
F 1 "PWR_FLAG" H 3650 1973 50  0000 C CNN
F 2 "" H 3650 1750 50  0000 C CNN
F 3 "" H 3650 1750 50  0000 C CNN
	1    3650 1750
	-1   0    0    1   
$EndComp
$Comp
L AP111750 U2
U 1 1 58BA14E8
P 4250 1450
F 0 "U2" H 4250 1817 50  0000 C CNN
F 1 "AP111750" H 4250 1726 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H -100 -200 50  0001 C CNN
F 3 "" H 0   -100 50  0001 C CNN
	1    4250 1450
	1    0    0    -1  
$EndComp
Connection ~ 8700 1100
Connection ~ 8800 1100
Connection ~ 2200 2950
Connection ~ 1700 3150
Connection ~ 1700 3250
Connection ~ 1700 3550
Connection ~ 2700 3450
Connection ~ 2700 3250
Connection ~ 3950 1450
Connection ~ 4550 1450
Connection ~ 8900 1100
Wire Wire Line
	2700 5000 3150 5000
Connection ~ 5200 1300
Connection ~ 5200 1450
Connection ~ 3150 1300
Connection ~ 3150 1450
Connection ~ 3150 1750
Connection ~ 5200 1750
Connection ~ 4250 1900
Connection ~ 850  950 
Connection ~ 850  1150
Connection ~ 2200 1050
Connection ~ 2200 1250
Connection ~ 1750 1150
Connection ~ 1750 950 
Connection ~ 1250 950 
Connection ~ 1250 1050
Connection ~ 1250 1150
Connection ~ 1250 1250
Connection ~ 1750 1050
Connection ~ 1750 1250
Connection ~ 3150 5000
Connection ~ 3150 5100
Connection ~ 3150 5200
Connection ~ 3150 5300
Connection ~ 3150 5400
Connection ~ 3150 5500
Connection ~ 3150 5600
Connection ~ 3150 5700
Connection ~ 3650 5000
Connection ~ 3650 5100
Connection ~ 3650 5200
Connection ~ 3650 5300
Connection ~ 3650 5400
Connection ~ 3650 5500
Connection ~ 3650 5600
Connection ~ 3650 5700
Connection ~ 9800 2700
Connection ~ 9800 2800
Connection ~ 9800 3300
Connection ~ 9800 3400
Connection ~ 9800 3600
Connection ~ 9800 3700
Connection ~ 8700 4200
Connection ~ 8800 4200
Connection ~ 8900 4200
Connection ~ 7800 3600
Connection ~ 7800 3700
Connection ~ 7800 3800
Connection ~ 8900 5200
Connection ~ 8900 5300
$Comp
L PWR_FLAG #FLG026
U 1 1 58BA3F4D
P 4850 1450
F 0 "#FLG026" H 0   125 50  0001 C CNN
F 1 "PWR_FLAG" H 4850 1624 50  0000 C CNN
F 2 "" H 0   50  50  0001 C CNN
F 3 "" H 0   50  50  0001 C CNN
	1    4850 1450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
