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
LIBS:Cypress_cy8c5xlp
LIBS:UNCAMotorsports
LIBS:relays
LIBS:SystemBlocks
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
F 2 "" H 8800 2800 60  0001 C CNN
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
L AP111750 U2
U 1 1 58B7742F
P 4250 1450
F 0 "U2" H 4250 1817 50  0000 C CNN
F 1 "AP111750" H 4250 1726 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 4250 1100 50  0001 C CNN
F 3 "" H 4350 1200 50  0000 C CNN
	1    4250 1450
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X04 P1
U 1 1 58B775B9
P 1500 1100
F 0 "P1" H 1500 1465 50  0000 C CNN
F 1 "CAN_Connector" H 1500 1374 50  0000 C CNN
F 2 "" H 1500 -100 50  0001 C CNN
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
F 2 "" H 3188 1450 50  0001 C CNN
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
F 2 "" H 3688 1450 50  0001 C CNN
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
F 2 "" H 4888 1450 50  0001 C CNN
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
F 2 "" H 5238 1450 50  0001 C CNN
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
F 2 "" H 2388 2450 50  0001 C CNN
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
L +12V #PWR?
U 1 1 58B7A343
P 850 950
F 0 "#PWR?" H 850 800 50  0001 C CNN
F 1 "+12V" H 865 1123 50  0000 C CNN
F 2 "" H 850 950 50  0000 C CNN
F 3 "" H 850 950 50  0000 C CNN
	1    850  950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  950  1250 950 
$Comp
L +12V #PWR?
U 1 1 58B7A390
P 2200 1050
F 0 "#PWR?" H 2200 900 50  0001 C CNN
F 1 "+12V" H 2215 1223 50  0000 C CNN
F 2 "" H 2200 1050 50  0000 C CNN
F 3 "" H 2200 1050 50  0000 C CNN
	1    2200 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1050 1750 1050
$Comp
L GND #PWR?
U 1 1 58B7A3DE
P 850 1150
F 0 "#PWR?" H 850 900 50  0001 C CNN
F 1 "GND" H 855 977 50  0000 C CNN
F 2 "" H 850 1150 50  0000 C CNN
F 3 "" H 850 1150 50  0000 C CNN
	1    850  1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  1150 1250 1150
$Comp
L GND #PWR?
U 1 1 58B7A438
P 2200 1250
F 0 "#PWR?" H 2200 1000 50  0001 C CNN
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
L +5V #PWR?
U 1 1 58B7AF23
P 2700 5000
F 0 "#PWR?" H 2700 4850 50  0001 C CNN
F 1 "+5V" H 2715 5173 50  0000 C CNN
F 2 "" H 2700 5000 50  0000 C CNN
F 3 "" H 2700 5000 50  0000 C CNN
	1    2700 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 5000 3150 5000
Text Label 3900 5000 2    60   ~ 0
S1
Wire Wire Line
	3900 5000 3650 5000
$Comp
L GND #PWR?
U 1 1 58B7B062
P 2700 5100
F 0 "#PWR?" H 2700 4850 50  0001 C CNN
F 1 "GND" H 2705 4927 50  0000 C CNN
F 2 "" H 2700 5100 50  0000 C CNN
F 3 "" H 2700 5100 50  0000 C CNN
	1    2700 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 5100 3150 5100
$Comp
L +5V #PWR?
U 1 1 58B7B0B7
P 4200 5100
F 0 "#PWR?" H 4200 4950 50  0001 C CNN
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
L GND #PWR?
U 1 1 58B7B15B
P 4200 5200
F 0 "#PWR?" H 4200 4950 50  0001 C CNN
F 1 "GND" H 4205 5027 50  0000 C CNN
F 2 "" H 4200 5200 50  0000 C CNN
F 3 "" H 4200 5200 50  0000 C CNN
	1    4200 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5200 3650 5200
$Comp
L +5V #PWR?
U 1 1 58B7B1B3
P 2500 5300
F 0 "#PWR?" H 2500 5150 50  0001 C CNN
F 1 "+5V" H 2515 5473 50  0000 C CNN
F 2 "" H 2500 5300 50  0000 C CNN
F 3 "" H 2500 5300 50  0000 C CNN
	1    2500 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 5300 3150 5300
Text Label 3900 5300 2    60   ~ 0
H1
Wire Wire Line
	3900 5300 3650 5300
Wire Wire Line
	3150 5400 2500 5400
Wire Wire Line
	2500 5400 2500 5300
Connection ~ 2500 5300
$EndSCHEMATC
