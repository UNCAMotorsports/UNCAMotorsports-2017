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
$Descr A 8500 11000 portrait
encoding utf-8
Sheet 1 3
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
L MotorController MC1
U 1 1 585DC538
P 4850 1400
F 0 "MC1" H 4875 1837 60  0000 C CNN
F 1 "MotorController" H 4875 1731 60  0000 C CNN
F 2 "" H 4850 1400 60  0001 C CNN
F 3 "" H 4850 1400 60  0001 C CNN
	1    4850 1400
	1    0    0    -1  
$EndComp
$Comp
L MotorController MC2
U 1 1 585DC635
P 4850 2400
F 0 "MC2" H 4875 2837 60  0000 C CNN
F 1 "MotorController" H 4875 2731 60  0000 C CNN
F 2 "" H 4850 2400 60  0001 C CNN
F 3 "" H 4850 2400 60  0001 C CNN
	1    4850 2400
	1    0    0    -1  
$EndComp
$Comp
L Battery BT1
U 1 1 585DC67D
P 1600 1900
F 0 "BT1" H 1708 1946 50  0000 L CNN
F 1 "48V" H 1708 1855 50  0000 L CNN
F 2 "" V 1600 1960 50  0000 C CNN
F 3 "" V 1600 1960 50  0000 C CNN
	1    1600 1900
	-1   0    0    -1  
$EndComp
$Comp
L Motor M1
U 1 1 585DCBC0
P 6150 1400
F 0 "M1" H 6319 1400 60  0000 L CNN
F 1 "Motor" H 6100 1700 60  0001 C CNN
F 2 "" H 6150 1400 60  0001 C CNN
F 3 "" H 6150 1400 60  0001 C CNN
	1    6150 1400
	1    0    0    -1  
$EndComp
$Comp
L L L1
U 1 1 585DD077
P 5950 1400
F 0 "L1" H 6002 1446 50  0000 L CNN
F 1 "Field" H 6002 1355 50  0000 L CNN
F 2 "" H 5950 1400 50  0000 C CNN
F 3 "" H 5950 1400 50  0000 C CNN
	1    5950 1400
	-1   0    0    -1  
$EndComp
$Comp
L Motor M2
U 1 1 585DD474
P 6150 2400
F 0 "M2" H 6319 2400 60  0000 L CNN
F 1 "Motor" H 6100 2700 60  0001 C CNN
F 2 "" H 6150 2400 60  0001 C CNN
F 3 "" H 6150 2400 60  0001 C CNN
	1    6150 2400
	1    0    0    -1  
$EndComp
$Comp
L L L2
U 1 1 585DD480
P 5950 2400
F 0 "L2" H 6002 2446 50  0000 L CNN
F 1 "Field" H 6002 2355 50  0000 L CNN
F 2 "" H 5950 2400 50  0000 C CNN
F 3 "" H 5950 2400 50  0000 C CNN
	1    5950 2400
	-1   0    0    -1  
$EndComp
$Comp
L Generic_1x1 U2
U 1 1 585DE2C8
P 2150 1250
F 0 "U2" H 2050 1500 60  0001 C CNN
F 1 "AIR" H 2150 1250 60  0000 C CNN
F 2 "" H 2150 1250 60  0001 C CNN
F 3 "" H 2150 1250 60  0001 C CNN
	1    2150 1250
	1    0    0    -1  
$EndComp
$Comp
L Generic_1x1 U3
U 1 1 585DEC17
P 2150 2550
F 0 "U3" H 2050 2800 60  0001 C CNN
F 1 "AIR" H 2150 2550 60  0000 C CNN
F 2 "" H 2150 2550 60  0001 C CNN
F 3 "" H 2150 2550 60  0001 C CNN
	1    2150 2550
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5861E4C0
P 1400 3650
F 0 "R1" H 1469 3696 50  0000 L CNN
F 1 "120" H 1469 3605 50  0000 L CNN
F 2 "" V 1330 3650 50  0000 C CNN
F 3 "" H 1400 3650 50  0000 C CNN
	1    1400 3650
	-1   0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 586209EA
P 6300 3650
F 0 "R2" H 6370 3696 50  0000 L CNN
F 1 "120" H 6370 3605 50  0000 L CNN
F 2 "" V 6230 3650 50  0000 C CNN
F 3 "" H 6300 3650 50  0000 C CNN
	1    6300 3650
	1    0    0    -1  
$EndComp
Text Label 1500 3500 0    60   ~ 0
CANH
Text Label 6000 3500 0    60   ~ 0
CANH
Text Label 1500 3800 0    60   ~ 0
CANL
Text Label 6000 3800 0    60   ~ 0
CANL
$Comp
L Fuse F1
U 1 1 5862563B
P 3100 1250
F 0 "F1" V 2903 1250 50  0000 C CNN
F 1 "Main Fuse (800A)" V 2994 1250 50  0000 C CNN
F 2 "" V 3030 1250 50  0000 C CNN
F 3 "" H 3100 1250 50  0000 C CNN
	1    3100 1250
	0    1    1    0   
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 586C92FA
P 3500 5550
F 0 "BT?" H 3618 5646 50  0000 L CNN
F 1 "Battery_Cell" H 3618 5555 50  0000 L CNN
F 2 "" V 3500 5610 50  0000 C CNN
F 3 "" V 3500 5610 50  0000 C CNN
	1    3500 5550
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 586C96F8
P 3200 5550
F 0 "BT?" H 3318 5646 50  0000 L CNN
F 1 "Battery_Cell" H 3318 5555 50  0000 L CNN
F 2 "" V 3200 5610 50  0000 C CNN
F 3 "" V 3200 5610 50  0000 C CNN
	1    3200 5550
	-1   0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 586C9B67
P 3200 5950
F 0 "BT?" H 3318 6046 50  0000 L CNN
F 1 "Battery_Cell" H 3318 5955 50  0000 L CNN
F 2 "" V 3200 6010 50  0000 C CNN
F 3 "" V 3200 6010 50  0000 C CNN
	1    3200 5950
	-1   0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 586C9C29
P 3500 5950
F 0 "BT?" H 3618 6046 50  0000 L CNN
F 1 "Battery_Cell" H 3618 5955 50  0000 L CNN
F 2 "" V 3500 6010 50  0000 C CNN
F 3 "" V 3500 6010 50  0000 C CNN
	1    3500 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1700 1600 1250
Wire Wire Line
	1600 1250 1750 1250
Wire Wire Line
	3250 1250 4350 1250
Wire Wire Line
	4350 2250 3950 2250
Wire Wire Line
	3950 2250 3950 1250
Connection ~ 3950 1250
Wire Wire Line
	1600 2550 1750 2550
Wire Wire Line
	1600 2550 1600 2100
Wire Wire Line
	4350 1550 4200 1550
Wire Wire Line
	4200 1550 4200 2550
Connection ~ 4200 2550
Wire Wire Line
	5400 1250 5500 1250
Wire Wire Line
	5500 1250 5500 1100
Wire Wire Line
	5500 1100 6150 1100
Wire Wire Line
	5400 1550 5500 1550
Wire Wire Line
	5500 1550 5500 1700
Wire Wire Line
	5500 1700 6150 1700
Wire Wire Line
	5400 1350 5600 1350
Wire Wire Line
	5600 1350 5600 1200
Wire Wire Line
	5600 1200 5950 1200
Wire Wire Line
	5950 1200 5950 1250
Wire Wire Line
	5400 1450 5600 1450
Wire Wire Line
	5600 1450 5600 1600
Wire Wire Line
	5600 1600 5950 1600
Wire Wire Line
	5950 1600 5950 1550
Wire Wire Line
	5400 2250 5500 2250
Wire Wire Line
	5500 2250 5500 2100
Wire Wire Line
	5500 2100 6150 2100
Wire Wire Line
	5400 2550 5500 2550
Wire Wire Line
	5500 2550 5500 2700
Wire Wire Line
	5500 2700 6150 2700
Wire Wire Line
	5400 2350 5600 2350
Wire Wire Line
	5600 2350 5600 2200
Wire Wire Line
	5600 2200 5950 2200
Wire Wire Line
	5950 2200 5950 2250
Wire Wire Line
	5400 2450 5600 2450
Wire Wire Line
	5600 2450 5600 2600
Wire Wire Line
	5600 2600 5950 2600
Wire Wire Line
	5950 2600 5950 2550
Wire Wire Line
	1400 3500 6300 3500
Wire Wire Line
	2000 3500 2000 4100
Wire Wire Line
	1800 3800 1800 4100
Wire Wire Line
	2500 3500 2500 4100
Connection ~ 2000 3500
Wire Wire Line
	3000 3500 3000 4100
Connection ~ 2500 3500
Wire Wire Line
	3500 3500 3500 4100
Connection ~ 3000 3500
Wire Wire Line
	4000 3500 4000 4100
Connection ~ 3500 3500
Wire Wire Line
	4650 3500 4650 4100
Connection ~ 4000 3500
Wire Wire Line
	5300 3500 5300 4100
Connection ~ 4650 3500
Wire Wire Line
	2300 3800 2300 4100
Connection ~ 1800 3800
Wire Wire Line
	2800 3800 2800 4100
Connection ~ 2300 3800
Wire Wire Line
	3300 3800 3300 4100
Connection ~ 2800 3800
Wire Wire Line
	3800 3800 3800 4100
Connection ~ 3300 3800
Wire Wire Line
	4450 3800 4450 4100
Connection ~ 3800 3800
Wire Wire Line
	5100 3800 5100 4100
Connection ~ 4450 3800
Connection ~ 5300 3500
Connection ~ 5100 3800
Wire Wire Line
	5950 4100 5950 3500
Connection ~ 5950 3500
Wire Wire Line
	5750 3800 5750 4100
Connection ~ 5750 3800
Wire Wire Line
	1400 3800 6300 3800
Wire Notes Line
	850  3100 7650 3100
Wire Notes Line
	750  5150 7750 5150
Wire Wire Line
	2950 1250 2550 1250
Wire Wire Line
	3200 5650 3200 5750
Wire Wire Line
	3200 5350 3200 5300
Wire Wire Line
	3200 5300 4000 5300
Wire Wire Line
	3500 5350 3500 5300
Connection ~ 3500 5300
Wire Wire Line
	3500 5650 3500 5750
Wire Wire Line
	3200 5700 4000 5700
Connection ~ 3500 5700
Connection ~ 3200 5700
Wire Wire Line
	3200 6050 3200 6100
Wire Wire Line
	3200 6100 4000 6100
Wire Wire Line
	3500 6050 3500 6100
Connection ~ 3500 6100
$Comp
L Battery BT?
U 1 1 586CBB47
P 4850 5700
F 0 "BT?" H 4958 5746 50  0000 L CNN
F 1 "Battery" H 4958 5655 50  0000 L CNN
F 2 "" V 4850 5760 50  0000 C CNN
F 3 "" V 4850 5760 50  0000 C CNN
	1    4850 5700
	1    0    0    -1  
$EndComp
$Comp
L Battery BT?
U 1 1 586CBBAA
P 4650 5700
F 0 "BT?" H 4758 5746 50  0000 L CNN
F 1 "Battery" H 4758 5655 50  0000 L CNN
F 2 "" V 4650 5760 50  0000 C CNN
F 3 "" V 4650 5760 50  0000 C CNN
	1    4650 5700
	-1   0    0    -1  
$EndComp
$Comp
L Battery BT?
U 1 1 586CC445
P 4850 6200
F 0 "BT?" H 4958 6246 50  0000 L CNN
F 1 "Battery" H 4958 6155 50  0000 L CNN
F 2 "" V 4850 6260 50  0000 C CNN
F 3 "" V 4850 6260 50  0000 C CNN
	1    4850 6200
	1    0    0    -1  
$EndComp
$Comp
L Battery BT?
U 1 1 586CC44C
P 4650 6200
F 0 "BT?" H 4758 6246 50  0000 L CNN
F 1 "Battery" H 4758 6155 50  0000 L CNN
F 2 "" V 4650 6260 50  0000 C CNN
F 3 "" V 4650 6260 50  0000 C CNN
	1    4650 6200
	-1   0    0    -1  
$EndComp
$Comp
L Battery BT?
U 1 1 586CC5C3
P 4850 6700
F 0 "BT?" H 4958 6746 50  0000 L CNN
F 1 "Battery" H 4958 6655 50  0000 L CNN
F 2 "" V 4850 6760 50  0000 C CNN
F 3 "" V 4850 6760 50  0000 C CNN
	1    4850 6700
	1    0    0    -1  
$EndComp
$Comp
L Battery BT?
U 1 1 586CC5CA
P 4650 6700
F 0 "BT?" H 4758 6746 50  0000 L CNN
F 1 "Battery" H 4758 6655 50  0000 L CNN
F 2 "" V 4650 6760 50  0000 C CNN
F 3 "" V 4650 6760 50  0000 C CNN
	1    4650 6700
	-1   0    0    -1  
$EndComp
$Comp
L Battery BT?
U 1 1 586CC687
P 4850 7200
F 0 "BT?" H 4958 7246 50  0000 L CNN
F 1 "Battery" H 4958 7155 50  0000 L CNN
F 2 "" V 4850 7260 50  0000 C CNN
F 3 "" V 4850 7260 50  0000 C CNN
	1    4850 7200
	1    0    0    -1  
$EndComp
$Comp
L Battery BT?
U 1 1 586CC68E
P 4650 7200
F 0 "BT?" H 4758 7246 50  0000 L CNN
F 1 "Battery" H 4758 7155 50  0000 L CNN
F 2 "" V 4650 7260 50  0000 C CNN
F 3 "" V 4650 7260 50  0000 C CNN
	1    4650 7200
	-1   0    0    -1  
$EndComp
$Comp
L Battery BT?
U 1 1 586CC711
P 4850 7700
F 0 "BT?" H 4958 7746 50  0000 L CNN
F 1 "Battery" H 4958 7655 50  0000 L CNN
F 2 "" V 4850 7760 50  0000 C CNN
F 3 "" V 4850 7760 50  0000 C CNN
	1    4850 7700
	1    0    0    -1  
$EndComp
$Comp
L Battery BT?
U 1 1 586CC718
P 4650 7700
F 0 "BT?" H 4758 7746 50  0000 L CNN
F 1 "Battery" H 4758 7655 50  0000 L CNN
F 2 "" V 4650 7760 50  0000 C CNN
F 3 "" V 4650 7760 50  0000 C CNN
	1    4650 7700
	-1   0    0    -1  
$EndComp
$Comp
L Battery BT?
U 1 1 586CD083
P 4850 8200
F 0 "BT?" H 4958 8246 50  0000 L CNN
F 1 "Battery" H 4958 8155 50  0000 L CNN
F 2 "" V 4850 8260 50  0000 C CNN
F 3 "" V 4850 8260 50  0000 C CNN
	1    4850 8200
	1    0    0    -1  
$EndComp
$Comp
L Battery BT?
U 1 1 586CD08A
P 4650 8200
F 0 "BT?" H 4758 8246 50  0000 L CNN
F 1 "Battery" H 4758 8155 50  0000 L CNN
F 2 "" V 4650 8260 50  0000 C CNN
F 3 "" V 4650 8260 50  0000 C CNN
	1    4650 8200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4650 7900 4650 8000
Wire Wire Line
	4850 7900 4850 8000
Wire Wire Line
	4650 7950 4850 7950
Connection ~ 4850 7950
Connection ~ 4650 7950
Wire Wire Line
	4650 7400 4650 7500
Wire Wire Line
	4650 7450 4850 7450
Wire Wire Line
	4850 7400 4850 7500
Connection ~ 4650 7450
Connection ~ 4850 7450
Wire Wire Line
	4650 6900 4650 7000
Wire Wire Line
	4850 6900 4850 7000
Wire Wire Line
	4650 6400 4650 6500
Wire Wire Line
	4850 6400 4850 6500
Wire Wire Line
	4650 5900 4650 6000
Wire Wire Line
	4850 5900 4850 6000
Wire Wire Line
	4650 5950 4850 5950
Connection ~ 4850 5950
Connection ~ 4650 5950
Wire Wire Line
	4650 6450 4850 6450
Connection ~ 4850 6450
Connection ~ 4650 6450
Wire Wire Line
	4650 6950 4850 6950
Connection ~ 4850 6950
Connection ~ 4650 6950
Wire Wire Line
	4650 8400 4650 8450
Wire Wire Line
	4650 8450 5450 8450
Wire Wire Line
	4850 8400 4850 8450
Connection ~ 4850 8450
Wire Wire Line
	4650 5500 4650 5450
Wire Wire Line
	4650 5450 5450 5450
Wire Wire Line
	4850 5500 4850 5450
Connection ~ 4850 5450
Text Label 5450 5450 2    60   ~ 0
TS+
Text Label 5450 8450 2    60   ~ 0
TS-
$Comp
L Generic_CAN_Node U?
U 1 1 5874A838
P 1900 4500
F 0 "U?" H 2128 4660 60  0001 L CNN
F 1 "FL" H 1900 4500 60  0000 C CNN
F 2 "" H 1900 4500 60  0001 C CNN
F 3 "" H 1900 4500 60  0001 C CNN
	1    1900 4500
	1    0    0    -1  
$EndComp
$Comp
L Generic_CAN_Node U?
U 1 1 5874AF63
P 2400 4500
F 0 "U?" H 2628 4660 60  0001 L CNN
F 1 "FR" H 2400 4500 60  0000 C CNN
F 2 "" H 2400 4500 60  0001 C CNN
F 3 "" H 2400 4500 60  0001 C CNN
	1    2400 4500
	1    0    0    -1  
$EndComp
$Comp
L Generic_CAN_Node U?
U 1 1 5874AFC2
P 2900 4500
F 0 "U?" H 3128 4660 60  0001 L CNN
F 1 "RL" H 2900 4500 60  0000 C CNN
F 2 "" H 2900 4500 60  0001 C CNN
F 3 "" H 2900 4500 60  0001 C CNN
	1    2900 4500
	1    0    0    -1  
$EndComp
$Comp
L Generic_CAN_Node U?
U 1 1 5874B021
P 3400 4500
F 0 "U?" H 3628 4660 60  0001 L CNN
F 1 "RR" H 3400 4500 60  0000 C CNN
F 2 "" H 3400 4500 60  0001 C CNN
F 3 "" H 3400 4500 60  0001 C CNN
	1    3400 4500
	1    0    0    -1  
$EndComp
$Comp
L Generic_CAN_Node U?
U 1 1 5874B080
P 3900 4500
F 0 "U?" H 4128 4660 60  0001 L CNN
F 1 "PED" H 3900 4500 60  0000 C CNN
F 2 "" H 3900 4500 60  0001 C CNN
F 3 "" H 3900 4500 60  0001 C CNN
	1    3900 4500
	1    0    0    -1  
$EndComp
$Comp
L Generic_CAN_Node U?
U 1 1 5874B0DF
P 4550 4500
F 0 "U?" H 4778 4660 60  0001 L CNN
F 1 "RPi" H 4550 4500 60  0000 C CNN
F 2 "" H 4550 4500 60  0001 C CNN
F 3 "" H 4550 4500 60  0001 C CNN
	1    4550 4500
	1    0    0    -1  
$EndComp
$Comp
L Generic_CAN_Node U?
U 1 1 5874B13E
P 5200 4500
F 0 "U?" H 5428 4660 60  0001 L CNN
F 1 "VCU" H 5200 4500 60  0000 C CNN
F 2 "" H 5200 4500 60  0001 C CNN
F 3 "" H 5200 4500 60  0001 C CNN
	1    5200 4500
	1    0    0    -1  
$EndComp
$Comp
L Generic_CAN_Node U?
U 1 1 5874B19D
P 5850 4500
F 0 "U?" H 6078 4660 60  0001 L CNN
F 1 "AMS" H 5850 4500 60  0000 C CNN
F 2 "" H 5850 4500 60  0001 C CNN
F 3 "" H 5850 4500 60  0001 C CNN
	1    5850 4500
	1    0    0    -1  
$EndComp
Text Notes 3250 3400 0    60   ~ 0
CAN Bus Architecture
$Sheet
S 6650 6850 1250 850 
U 5874D543
F0 "ShutdownCircuit" 60
F1 "file5874D542.sch" 60
$EndSheet
$Comp
L Generic_1x1 U?
U 1 1 58784B31
P 3250 2550
F 0 "U?" H 3100 2800 60  0001 C CNN
F 1 "E-Meter" H 3250 2550 60  0000 C CNN
F 2 "" H 3250 2550 60  0001 C CNN
F 3 "" H 3250 2550 60  0001 C CNN
	1    3250 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2550 2550 2550
Wire Wire Line
	3650 2550 4350 2550
$Comp
L Battery_Cell BT?
U 1 1 588FEA26
P 1100 9250
F 0 "BT?" H 1218 9346 50  0001 L CNN
F 1 "Battery_Cell" H 1200 9200 50  0001 L CNN
F 2 "" V 1100 9310 50  0000 C CNN
F 3 "" V 1100 9310 50  0000 C CNN
	1    1100 9250
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 588FEFE2
P 1350 9250
F 0 "BT?" H 1468 9346 50  0001 L CNN
F 1 "Battery_Cell" H 1450 9200 50  0001 L CNN
F 2 "" V 1350 9310 50  0000 C CNN
F 3 "" V 1350 9310 50  0000 C CNN
	1    1350 9250
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 588FF055
P 1600 9250
F 0 "BT?" H 1718 9346 50  0001 L CNN
F 1 "Battery_Cell" H 1700 9200 50  0001 L CNN
F 2 "" V 1600 9310 50  0000 C CNN
F 3 "" V 1600 9310 50  0000 C CNN
	1    1600 9250
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 588FF0AE
P 1850 9250
F 0 "BT?" H 1968 9346 50  0001 L CNN
F 1 "Battery_Cell" H 1950 9200 50  0001 L CNN
F 2 "" V 1850 9310 50  0000 C CNN
F 3 "" V 1850 9310 50  0000 C CNN
	1    1850 9250
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 588FF22B
P 1100 9650
F 0 "BT?" H 1218 9746 50  0001 L CNN
F 1 "Battery_Cell" H 1200 9600 50  0001 L CNN
F 2 "" V 1100 9710 50  0000 C CNN
F 3 "" V 1100 9710 50  0000 C CNN
	1    1100 9650
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 588FF231
P 1350 9650
F 0 "BT?" H 1468 9746 50  0001 L CNN
F 1 "Battery_Cell" H 1450 9600 50  0001 L CNN
F 2 "" V 1350 9710 50  0000 C CNN
F 3 "" V 1350 9710 50  0000 C CNN
	1    1350 9650
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 588FF237
P 1600 9650
F 0 "BT?" H 1718 9746 50  0001 L CNN
F 1 "Battery_Cell" H 1700 9600 50  0001 L CNN
F 2 "" V 1600 9710 50  0000 C CNN
F 3 "" V 1600 9710 50  0000 C CNN
	1    1600 9650
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 588FF23D
P 1850 9650
F 0 "BT?" H 1968 9746 50  0001 L CNN
F 1 "Battery_Cell" H 1950 9600 50  0001 L CNN
F 2 "" V 1850 9710 50  0000 C CNN
F 3 "" V 1850 9710 50  0000 C CNN
	1    1850 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 9350 1850 9350
Wire Wire Line
	1850 9450 1100 9450
Wire Wire Line
	1100 9750 1850 9750
Wire Wire Line
	1850 9050 1100 9050
Wire Wire Line
	1350 9350 1350 9450
Connection ~ 1350 9450
Connection ~ 1350 9350
Connection ~ 1600 9350
Connection ~ 1600 9450
Connection ~ 1600 9050
Connection ~ 1350 9050
Connection ~ 1350 9750
Connection ~ 1600 9750
$Comp
L Battery_Cell BT?
U 1 1 588FF894
P 1100 10000
F 0 "BT?" H 1218 10096 50  0001 L CNN
F 1 "Battery_Cell" H 1200 9950 50  0001 L CNN
F 2 "" V 1100 10060 50  0000 C CNN
F 3 "" V 1100 10060 50  0000 C CNN
	1    1100 10000
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 588FF89A
P 1350 10000
F 0 "BT?" H 1468 10096 50  0001 L CNN
F 1 "Battery_Cell" H 1450 9950 50  0001 L CNN
F 2 "" V 1350 10060 50  0000 C CNN
F 3 "" V 1350 10060 50  0000 C CNN
	1    1350 10000
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 588FF8A0
P 1600 10000
F 0 "BT?" H 1718 10096 50  0001 L CNN
F 1 "Battery_Cell" H 1700 9950 50  0001 L CNN
F 2 "" V 1600 10060 50  0000 C CNN
F 3 "" V 1600 10060 50  0000 C CNN
	1    1600 10000
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 588FF8A6
P 1850 10000
F 0 "BT?" H 1968 10096 50  0001 L CNN
F 1 "Battery_Cell" H 1950 9950 50  0001 L CNN
F 2 "" V 1850 10060 50  0000 C CNN
F 3 "" V 1850 10060 50  0000 C CNN
	1    1850 10000
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 588FF8AC
P 1100 10400
F 0 "BT?" H 1218 10496 50  0001 L CNN
F 1 "Battery_Cell" H 1200 10350 50  0001 L CNN
F 2 "" V 1100 10460 50  0000 C CNN
F 3 "" V 1100 10460 50  0000 C CNN
	1    1100 10400
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 588FF8B2
P 1350 10400
F 0 "BT?" H 1468 10496 50  0001 L CNN
F 1 "Battery_Cell" H 1450 10350 50  0001 L CNN
F 2 "" V 1350 10460 50  0000 C CNN
F 3 "" V 1350 10460 50  0000 C CNN
	1    1350 10400
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 588FF8B8
P 1600 10400
F 0 "BT?" H 1718 10496 50  0001 L CNN
F 1 "Battery_Cell" H 1700 10350 50  0001 L CNN
F 2 "" V 1600 10460 50  0000 C CNN
F 3 "" V 1600 10460 50  0000 C CNN
	1    1600 10400
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 588FF8BE
P 1850 10400
F 0 "BT?" H 1968 10496 50  0001 L CNN
F 1 "Battery_Cell" H 1950 10350 50  0001 L CNN
F 2 "" V 1850 10460 50  0000 C CNN
F 3 "" V 1850 10460 50  0000 C CNN
	1    1850 10400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 10100 1850 10100
Wire Wire Line
	1850 10200 1100 10200
Wire Wire Line
	1100 10500 1850 10500
Wire Wire Line
	1850 9800 1100 9800
Wire Wire Line
	1350 10100 1350 10200
Connection ~ 1350 10200
Connection ~ 1350 10100
Connection ~ 1600 10100
Connection ~ 1600 10200
Connection ~ 1600 9800
Connection ~ 1350 9800
Connection ~ 1350 10500
Connection ~ 1600 10500
$Comp
L Battery_Cell BT?
U 1 1 588FFBF7
P 1100 7750
F 0 "BT?" H 1218 7846 50  0001 L CNN
F 1 "Battery_Cell" H 1200 7700 50  0001 L CNN
F 2 "" V 1100 7810 50  0000 C CNN
F 3 "" V 1100 7810 50  0000 C CNN
	1    1100 7750
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 588FFBFD
P 1350 7750
F 0 "BT?" H 1468 7846 50  0001 L CNN
F 1 "Battery_Cell" H 1450 7700 50  0001 L CNN
F 2 "" V 1350 7810 50  0000 C CNN
F 3 "" V 1350 7810 50  0000 C CNN
	1    1350 7750
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 588FFC03
P 1600 7750
F 0 "BT?" H 1718 7846 50  0001 L CNN
F 1 "Battery_Cell" H 1700 7700 50  0001 L CNN
F 2 "" V 1600 7810 50  0000 C CNN
F 3 "" V 1600 7810 50  0000 C CNN
	1    1600 7750
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 588FFC09
P 1850 7750
F 0 "BT?" H 1968 7846 50  0001 L CNN
F 1 "Battery_Cell" H 1950 7700 50  0001 L CNN
F 2 "" V 1850 7810 50  0000 C CNN
F 3 "" V 1850 7810 50  0000 C CNN
	1    1850 7750
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 588FFC0F
P 1100 8150
F 0 "BT?" H 1218 8246 50  0001 L CNN
F 1 "Battery_Cell" H 1200 8100 50  0001 L CNN
F 2 "" V 1100 8210 50  0000 C CNN
F 3 "" V 1100 8210 50  0000 C CNN
	1    1100 8150
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 588FFC15
P 1350 8150
F 0 "BT?" H 1468 8246 50  0001 L CNN
F 1 "Battery_Cell" H 1450 8100 50  0001 L CNN
F 2 "" V 1350 8210 50  0000 C CNN
F 3 "" V 1350 8210 50  0000 C CNN
	1    1350 8150
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 588FFC1B
P 1600 8150
F 0 "BT?" H 1718 8246 50  0001 L CNN
F 1 "Battery_Cell" H 1700 8100 50  0001 L CNN
F 2 "" V 1600 8210 50  0000 C CNN
F 3 "" V 1600 8210 50  0000 C CNN
	1    1600 8150
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 588FFC21
P 1850 8150
F 0 "BT?" H 1968 8246 50  0001 L CNN
F 1 "Battery_Cell" H 1950 8100 50  0001 L CNN
F 2 "" V 1850 8210 50  0000 C CNN
F 3 "" V 1850 8210 50  0000 C CNN
	1    1850 8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 7850 1850 7850
Wire Wire Line
	1850 7950 1100 7950
Wire Wire Line
	1100 8250 1850 8250
Wire Wire Line
	1850 7550 1100 7550
Wire Wire Line
	1350 7850 1350 7950
Connection ~ 1350 7950
Connection ~ 1350 7850
Connection ~ 1600 7850
Connection ~ 1600 7950
Connection ~ 1600 7550
Connection ~ 1350 7550
Connection ~ 1350 8250
Connection ~ 1600 8250
$Comp
L Battery_Cell BT?
U 1 1 588FFC34
P 1100 8500
F 0 "BT?" H 1218 8596 50  0001 L CNN
F 1 "Battery_Cell" H 1200 8450 50  0001 L CNN
F 2 "" V 1100 8560 50  0000 C CNN
F 3 "" V 1100 8560 50  0000 C CNN
	1    1100 8500
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 588FFC3A
P 1350 8500
F 0 "BT?" H 1468 8596 50  0001 L CNN
F 1 "Battery_Cell" H 1450 8450 50  0001 L CNN
F 2 "" V 1350 8560 50  0000 C CNN
F 3 "" V 1350 8560 50  0000 C CNN
	1    1350 8500
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 588FFC40
P 1600 8500
F 0 "BT?" H 1718 8596 50  0001 L CNN
F 1 "Battery_Cell" H 1700 8450 50  0001 L CNN
F 2 "" V 1600 8560 50  0000 C CNN
F 3 "" V 1600 8560 50  0000 C CNN
	1    1600 8500
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 588FFC46
P 1850 8500
F 0 "BT?" H 1968 8596 50  0001 L CNN
F 1 "Battery_Cell" H 1950 8450 50  0001 L CNN
F 2 "" V 1850 8560 50  0000 C CNN
F 3 "" V 1850 8560 50  0000 C CNN
	1    1850 8500
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 588FFC4C
P 1100 8900
F 0 "BT?" H 1218 8996 50  0001 L CNN
F 1 "Battery_Cell" H 1200 8850 50  0001 L CNN
F 2 "" V 1100 8960 50  0000 C CNN
F 3 "" V 1100 8960 50  0000 C CNN
	1    1100 8900
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 588FFC52
P 1350 8900
F 0 "BT?" H 1468 8996 50  0001 L CNN
F 1 "Battery_Cell" H 1450 8850 50  0001 L CNN
F 2 "" V 1350 8960 50  0000 C CNN
F 3 "" V 1350 8960 50  0000 C CNN
	1    1350 8900
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 588FFC58
P 1600 8900
F 0 "BT?" H 1718 8996 50  0001 L CNN
F 1 "Battery_Cell" H 1700 8850 50  0001 L CNN
F 2 "" V 1600 8960 50  0000 C CNN
F 3 "" V 1600 8960 50  0000 C CNN
	1    1600 8900
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 588FFC5E
P 1850 8900
F 0 "BT?" H 1968 8996 50  0001 L CNN
F 1 "Battery_Cell" H 1950 8850 50  0001 L CNN
F 2 "" V 1850 8960 50  0000 C CNN
F 3 "" V 1850 8960 50  0000 C CNN
	1    1850 8900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 8600 1850 8600
Wire Wire Line
	1850 8700 1100 8700
Wire Wire Line
	1100 9000 1850 9000
Wire Wire Line
	1850 8300 1100 8300
Wire Wire Line
	1350 8600 1350 8700
Connection ~ 1350 8700
Connection ~ 1350 8600
Connection ~ 1600 8600
Connection ~ 1600 8700
Connection ~ 1600 8300
Connection ~ 1350 8300
Connection ~ 1350 9000
Connection ~ 1600 9000
$Comp
L Battery_Cell BT?
U 1 1 588FFFFF
P 1100 7000
F 0 "BT?" H 1218 7096 50  0001 L CNN
F 1 "Battery_Cell" H 1200 6950 50  0001 L CNN
F 2 "" V 1100 7060 50  0000 C CNN
F 3 "" V 1100 7060 50  0000 C CNN
	1    1100 7000
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 58900005
P 1350 7000
F 0 "BT?" H 1468 7096 50  0001 L CNN
F 1 "Battery_Cell" H 1450 6950 50  0001 L CNN
F 2 "" V 1350 7060 50  0000 C CNN
F 3 "" V 1350 7060 50  0000 C CNN
	1    1350 7000
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 5890000B
P 1600 7000
F 0 "BT?" H 1718 7096 50  0001 L CNN
F 1 "Battery_Cell" H 1700 6950 50  0001 L CNN
F 2 "" V 1600 7060 50  0000 C CNN
F 3 "" V 1600 7060 50  0000 C CNN
	1    1600 7000
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 58900011
P 1850 7000
F 0 "BT?" H 1968 7096 50  0001 L CNN
F 1 "Battery_Cell" H 1950 6950 50  0001 L CNN
F 2 "" V 1850 7060 50  0000 C CNN
F 3 "" V 1850 7060 50  0000 C CNN
	1    1850 7000
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 58900017
P 1100 7400
F 0 "BT?" H 1218 7496 50  0001 L CNN
F 1 "Battery_Cell" H 1200 7350 50  0001 L CNN
F 2 "" V 1100 7460 50  0000 C CNN
F 3 "" V 1100 7460 50  0000 C CNN
	1    1100 7400
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 5890001D
P 1350 7400
F 0 "BT?" H 1468 7496 50  0001 L CNN
F 1 "Battery_Cell" H 1450 7350 50  0001 L CNN
F 2 "" V 1350 7460 50  0000 C CNN
F 3 "" V 1350 7460 50  0000 C CNN
	1    1350 7400
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 58900023
P 1600 7400
F 0 "BT?" H 1718 7496 50  0001 L CNN
F 1 "Battery_Cell" H 1700 7350 50  0001 L CNN
F 2 "" V 1600 7460 50  0000 C CNN
F 3 "" V 1600 7460 50  0000 C CNN
	1    1600 7400
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 58900029
P 1850 7400
F 0 "BT?" H 1968 7496 50  0001 L CNN
F 1 "Battery_Cell" H 1950 7350 50  0001 L CNN
F 2 "" V 1850 7460 50  0000 C CNN
F 3 "" V 1850 7460 50  0000 C CNN
	1    1850 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 7100 1850 7100
Wire Wire Line
	1850 7200 1100 7200
Wire Wire Line
	1100 7500 1850 7500
Wire Wire Line
	1850 6800 1100 6800
Wire Wire Line
	1350 7100 1350 7200
Connection ~ 1350 7200
Connection ~ 1350 7100
Connection ~ 1600 7100
Connection ~ 1600 7200
Connection ~ 1600 6800
Connection ~ 1350 6800
Connection ~ 1350 7500
Connection ~ 1600 7500
Wire Wire Line
	1350 7500 1350 7550
Wire Wire Line
	1350 9750 1350 9800
Wire Wire Line
	1350 9050 1350 9000
Wire Wire Line
	1350 8300 1350 8250
$Comp
L Battery_Cell BT?
U 1 1 58900BE0
P 1100 6250
F 0 "BT?" H 1218 6346 50  0001 L CNN
F 1 "Battery_Cell" H 1200 6200 50  0001 L CNN
F 2 "" V 1100 6310 50  0000 C CNN
F 3 "" V 1100 6310 50  0000 C CNN
	1    1100 6250
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 58900BE6
P 1350 6250
F 0 "BT?" H 1468 6346 50  0001 L CNN
F 1 "Battery_Cell" H 1450 6200 50  0001 L CNN
F 2 "" V 1350 6310 50  0000 C CNN
F 3 "" V 1350 6310 50  0000 C CNN
	1    1350 6250
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 58900BEC
P 1600 6250
F 0 "BT?" H 1718 6346 50  0001 L CNN
F 1 "Battery_Cell" H 1700 6200 50  0001 L CNN
F 2 "" V 1600 6310 50  0000 C CNN
F 3 "" V 1600 6310 50  0000 C CNN
	1    1600 6250
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 58900BF2
P 1850 6250
F 0 "BT?" H 1968 6346 50  0001 L CNN
F 1 "Battery_Cell" H 1950 6200 50  0001 L CNN
F 2 "" V 1850 6310 50  0000 C CNN
F 3 "" V 1850 6310 50  0000 C CNN
	1    1850 6250
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 58900BF8
P 1100 6650
F 0 "BT?" H 1218 6746 50  0001 L CNN
F 1 "Battery_Cell" H 1200 6600 50  0001 L CNN
F 2 "" V 1100 6710 50  0000 C CNN
F 3 "" V 1100 6710 50  0000 C CNN
	1    1100 6650
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 58900BFE
P 1350 6650
F 0 "BT?" H 1468 6746 50  0001 L CNN
F 1 "Battery_Cell" H 1450 6600 50  0001 L CNN
F 2 "" V 1350 6710 50  0000 C CNN
F 3 "" V 1350 6710 50  0000 C CNN
	1    1350 6650
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 58900C04
P 1600 6650
F 0 "BT?" H 1718 6746 50  0001 L CNN
F 1 "Battery_Cell" H 1700 6600 50  0001 L CNN
F 2 "" V 1600 6710 50  0000 C CNN
F 3 "" V 1600 6710 50  0000 C CNN
	1    1600 6650
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT?
U 1 1 58900C0A
P 1850 6650
F 0 "BT?" H 1968 6746 50  0001 L CNN
F 1 "Battery_Cell" H 1950 6600 50  0001 L CNN
F 2 "" V 1850 6710 50  0000 C CNN
F 3 "" V 1850 6710 50  0000 C CNN
	1    1850 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 6350 1850 6350
Wire Wire Line
	1850 6450 1100 6450
Wire Wire Line
	1100 6750 1850 6750
Wire Wire Line
	1850 6050 1100 6050
Wire Wire Line
	1350 6350 1350 6450
Connection ~ 1350 6450
Connection ~ 1350 6350
Connection ~ 1600 6350
Connection ~ 1600 6450
Connection ~ 1600 6050
Connection ~ 1350 6050
Connection ~ 1350 6750
Connection ~ 1600 6750
Wire Wire Line
	1350 6750 1350 6800
$EndSCHEMATC
