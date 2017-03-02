EESchema Schematic File Version 2
LIBS:VehicleController-rescue
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
LIBS:Common-Parts-Library-CPL
LIBS:relays
LIBS:SystemBlocks
LIBS:VehicleController-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
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
L Teensy_3.5 U1
U 1 1 587C74D8
P 5650 3750
F 0 "U1" H 5650 5187 60  0000 C CNN
F 1 "Teensy_3.5" H 5650 5081 60  0000 C CNN
F 2 "" H 6100 4450 60  0000 C CNN
F 3 "" H 6100 4450 60  0000 C CNN
	1    5650 3750
	1    0    0    -1  
$EndComp
$Sheet
S 1550 900  1200 400 
U 587C78BB
F0 "PowerDistribution" 60
F1 "PowerDistribution.sch" 60
F2 "CurrentSense" I R 2750 1200 60 
F3 "PWR_IN" I L 1550 1000 60 
F4 "12V" I R 2750 1000 60 
F5 "5V" I R 2750 1100 60 
$EndSheet
Text Label 3500 1200 2    60   ~ 0
CurrentSense
$Comp
L CONN_01X02 P2
U 1 1 587C9F5C
P 1150 1050
F 0 "P2" H 1069 775 50  0000 C CNN
F 1 "BATT_IN" H 1069 866 50  0000 C CNN
F 2 "" H 1150 1050 50  0000 C CNN
F 3 "" H 1150 1050 50  0000 C CNN
	1    1150 1050
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR02
U 1 1 587C9FD6
P 1400 1250
F 0 "#PWR02" H 1400 1000 50  0001 C CNN
F 1 "GND" H 1405 1077 50  0000 C CNN
F 2 "" H 1400 1250 50  0000 C CNN
F 3 "" H 1400 1250 50  0000 C CNN
	1    1400 1250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 587CB465
P 6900 2400
F 0 "#PWR03" H 6900 2250 50  0001 C CNN
F 1 "+5V" H 6915 2573 50  0000 C CNN
F 2 "" H 6900 2400 50  0000 C CNN
F 3 "" H 6900 2400 50  0000 C CNN
	1    6900 2400
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 587CB49D
P 7150 2600
F 0 "C2" V 6921 2600 50  0000 C CNN
F 1 "C_Small" V 7012 2600 50  0000 C CNN
F 2 "" H 7150 2600 50  0000 C CNN
F 3 "" H 7150 2600 50  0000 C CNN
	1    7150 2600
	0    1    1    0   
$EndComp
$Comp
L GND #PWR04
U 1 1 587CB8C9
P 7600 2650
F 0 "#PWR04" H 7600 2400 50  0001 C CNN
F 1 "GND" H 7605 2477 50  0000 C CNN
F 2 "" H 7600 2650 50  0000 C CNN
F 3 "" H 7600 2650 50  0000 C CNN
	1    7600 2650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR09
U 1 1 58AED925
P 3250 900
F 0 "#PWR09" H 3250 750 50  0001 C CNN
F 1 "+5V" H 3265 1073 50  0000 C CNN
F 2 "" H 3250 900 50  0000 C CNN
F 3 "" H 3250 900 50  0000 C CNN
	1    3250 900 
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR011
U 1 1 587C97FC
P 3000 900
F 0 "#PWR011" H 3000 750 50  0001 C CNN
F 1 "+12V" H 3015 1073 50  0000 C CNN
F 2 "" H 3000 900 50  0000 C CNN
F 3 "" H 3000 900 50  0000 C CNN
	1    3000 900 
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X16 P5
U 1 1 58AF97B5
P 9750 1900
F 0 "P5" H 9750 2865 50  0000 C CNN
F 1 "SMALL_SIG_MX150" H 9750 2774 50  0000 C CNN
F 2 "" H 9750 800 50  0000 C CNN
F 3 "" H 9750 800 50  0000 C CNN
	1    9750 1900
	1    0    0    -1  
$EndComp
Text Label 4100 2600 0    60   ~ 0
GND
Text Label 7200 2800 2    60   ~ 0
+3.3V
Text Label 7700 4000 2    60   ~ 0
GND
NoConn ~ 6750 2700
Text Label 4100 3000 0    60   ~ 0
CANTX
Text Label 4100 3100 0    60   ~ 0
CANRX
NoConn ~ 6750 4100
NoConn ~ 6750 4200
Text Label 7700 3300 2    60   ~ 0
SCL0
Text Label 7700 3400 2    60   ~ 0
SDA0
$Comp
L Battery_Cell BT?
U 1 1 58B1FCEA
P 2200 3050
F 0 "BT?" H 2318 3146 50  0000 L CNN
F 1 "CR1220" H 2318 3055 50  0000 L CNN
F 2 "" V 2200 3110 50  0000 C CNN
F 3 "" V 2200 3110 50  0000 C CNN
	1    2200 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58B264AD
P 2200 3200
F 0 "#PWR?" H 2200 2950 50  0001 C CNN
F 1 "GND" H 2205 3027 50  0000 C CNN
F 2 "" H 2200 3200 50  0000 C CNN
F 3 "" H 2200 3200 50  0000 C CNN
	1    2200 3200
	1    0    0    -1  
$EndComp
Text Label 4100 2700 0    60   ~ 0
GPS_TX
Text Label 4100 2800 0    60   ~ 0
GPS_RX
$Sheet
S 2600 2600 1000 400 
U 58B2371C
F0 "GPS" 60
F1 "file58B2371B.sch" 60
F2 "3D-FIX" I R 3600 2900 60 
F3 "GPS_TX" I R 3600 2700 60 
F4 "GPS_RX" I R 3600 2800 60 
F5 "VBACKUP" I L 2600 2800 60 
$EndSheet
Text Label 4100 2900 0    60   ~ 0
3D_FIX
$Sheet
S 2600 3250 550  300 
U 58B363B1
F0 "CAN Bus" 60
F1 "file58B363B0.sch" 60
F2 "CANTX" I R 3150 3350 60 
F3 "CANRX" I R 3150 3450 60 
$EndSheet
$Comp
L UltimateSensorFusion U?
U 1 1 58B0145C
P 6050 6750
F 0 "U?" H 6050 7237 60  0000 C CNN
F 1 "UltimateSensorFusion" H 6050 7131 60  0000 C CNN
F 2 "" H 6050 6650 60  0001 C CNN
F 3 "" H 6050 6650 60  0001 C CNN
	1    6050 6750
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 58B0A4BD
P 4750 6450
F 0 "#PWR?" H 4750 6300 50  0001 C CNN
F 1 "+3.3V" H 4765 6623 50  0000 C CNN
F 2 "" H 4750 6450 50  0000 C CNN
F 3 "" H 4750 6450 50  0000 C CNN
	1    4750 6450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58B0C04F
P 4750 7050
F 0 "#PWR?" H 4750 6800 50  0001 C CNN
F 1 "GND" H 4755 6877 50  0000 C CNN
F 2 "" H 4750 7050 50  0000 C CNN
F 3 "" H 4750 7050 50  0000 C CNN
	1    4750 7050
	1    0    0    -1  
$EndComp
NoConn ~ 6600 6550
NoConn ~ 6600 6650
NoConn ~ 6600 6750
NoConn ~ 6600 6950
NoConn ~ 6600 6850
Text Label 7700 3800 2    60   ~ 0
CurrentSense
Text Label 4100 3900 0    60   ~ 0
MISO0
Text Label 4100 3800 0    60   ~ 0
MOSI0
Text Label 4100 3700 0    60   ~ 0
CS0
Text Label 7700 3900 2    60   ~ 0
SCK0
Text Label 7150 4400 2    60   ~ 0
SDA1
Text Label 7150 4500 2    60   ~ 0
SCL1
$Sheet
S 8550 4200 700  600 
U 58B1642E
F0 "Isolation" 60
F1 "file58B1642D.sch" 60
F2 "SDA_IN" I L 8550 4400 60 
F3 "SCL_IN" I L 8550 4500 60 
F4 "DAC_LATCH" I L 8550 4600 60 
$EndSheet
Text Label 7400 4600 2    60   ~ 0
DAC_LATCH
$Comp
L R_Small R?
U 1 1 58B23CA5
P 8000 4200
F 0 "R?" H 8059 4246 50  0000 L CNN
F 1 "2.2k" H 8059 4155 50  0000 L CNN
F 2 "" H 8000 4200 50  0000 C CNN
F 3 "" H 8000 4200 50  0000 C CNN
	1    8000 4200
	-1   0    0    -1  
$EndComp
$Comp
L R_Small R?
U 1 1 58B23F0F
P 8100 4200
F 0 "R?" H 8159 4246 50  0000 L CNN
F 1 "2.2k" H 8159 4155 50  0000 L CNN
F 2 "" H 8100 4200 50  0000 C CNN
F 3 "" H 8100 4200 50  0000 C CNN
	1    8100 4200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 58B24302
P 8050 4000
F 0 "#PWR?" H 8050 3850 50  0001 C CNN
F 1 "+5V" H 8065 4173 50  0000 C CNN
F 2 "" H 8050 4000 50  0000 C CNN
F 3 "" H 8050 4000 50  0000 C CNN
	1    8050 4000
	1    0    0    -1  
$EndComp
NoConn ~ 6750 2900
NoConn ~ 6750 3000
NoConn ~ 6750 3100
NoConn ~ 6750 3200
$Comp
L Q_NMOS_GDS Q?
U 1 1 58B2A69D
P 1600 3800
F 0 "Q?" H 1806 3846 50  0000 L CNN
F 1 "Q_NMOS_GDS" H 1806 3755 50  0000 L CNN
F 2 "" H 1800 3900 50  0000 C CNN
F 3 "" H 1600 3800 50  0000 C CNN
	1    1600 3800
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 58B2C100
P 1250 3100
F 0 "P?" H 1328 3141 50  0000 L CNN
F 1 "Buzzer" H 1328 3050 50  0000 L CNN
F 2 "" H 1250 3100 50  0000 C CNN
F 3 "" H 1250 3100 50  0000 C CNN
	1    1250 3100
	-1   0    0    -1  
$EndComp
$Comp
L Polyfuse_Small F?
U 1 1 58B2C268
P 1500 3450
F 0 "F?" H 1568 3496 50  0000 L CNN
F 1 "1A" H 1568 3405 50  0000 L CNN
F 2 "" H 1550 3250 50  0001 L CNN
F 3 "" H 1500 3450 50  0001 C CNN
	1    1500 3450
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58B2C3E8
P 1500 4200
F 0 "#PWR?" H 1500 3950 50  0001 C CNN
F 1 "GND" H 1505 4027 50  0000 C CNN
F 2 "" H 1500 4200 50  0000 C CNN
F 3 "" H 1500 4200 50  0000 C CNN
	1    1500 4200
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR?
U 1 1 58B2DE62
P 1500 2900
F 0 "#PWR?" H 1500 2750 50  0001 C CNN
F 1 "+12V" H 1515 3073 50  0000 C CNN
F 2 "" H 1500 2900 50  0000 C CNN
F 3 "" H 1500 2900 50  0000 C CNN
	1    1500 2900
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 58B36668
P 4750 6750
F 0 "C?" H 4842 6796 50  0000 L CNN
F 1 "C_Small" H 4842 6705 50  0000 L CNN
F 2 "" H 4750 6750 50  0000 C CNN
F 3 "" H 4750 6750 50  0000 C CNN
	1    4750 6750
	-1   0    0    -1  
$EndComp
Text Label 5000 6650 0    60   ~ 0
SCL0
Text Label 5000 6750 0    60   ~ 0
SDA0
Text Label 5000 6850 0    60   ~ 0
IMU_INT
Text Label 7700 3500 2    60   ~ 0
IMU_INT
$Comp
L R_Small R?
U 1 1 58B3A701
P 1900 4000
F 0 "R?" H 1959 4046 50  0000 L CNN
F 1 "R_Small" H 1959 3955 50  0000 L CNN
F 2 "" H 1900 4000 50  0000 C CNN
F 3 "" H 1900 4000 50  0000 C CNN
	1    1900 4000
	1    0    0    -1  
$EndComp
Text Label 2300 3800 2    60   ~ 0
BUZZER
Text Label 4100 3200 0    60   ~ 0
BUZZER
Text Label 4100 4000 0    60   ~ 0
+3.3V
$Comp
L C_Small C?
U 1 1 58B474E4
P 1600 3100
F 0 "C?" H 1692 3146 50  0000 L CNN
F 1 "C_Small" H 1692 3055 50  0000 L CNN
F 2 "" H 1600 3100 50  0000 C CNN
F 3 "" H 1600 3100 50  0000 C CNN
	1    1600 3100
	1    0    0    -1  
$EndComp
$Comp
L BTS6133D U?
U 1 1 58B4C751
P 1600 5050
F 0 "U?" H 1600 5437 60  0000 C CNN
F 1 "BTS6133D" H 1600 5331 60  0000 C CNN
F 2 "" H 1750 5250 60  0000 C CNN
F 3 "" H 1750 5250 60  0000 C CNN
	1    1600 5050
	-1   0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q?
U 1 1 58B4E444
P 3100 5450
F 0 "Q?" H 3306 5496 50  0000 L CNN
F 1 "Q_NMOS_GDS" H 3306 5405 50  0000 L CNN
F 2 "" H 3300 5550 50  0000 C CNN
F 3 "" H 3100 5450 50  0000 C CNN
	1    3100 5450
	-1   0    0    -1  
$EndComp
$Comp
L R_Small R?
U 1 1 58B4FE92
P 3450 5600
F 0 "R?" H 3509 5646 50  0000 L CNN
F 1 "R_Small" H 3509 5555 50  0000 L CNN
F 2 "" H 3450 5600 50  0000 C CNN
F 3 "" H 3450 5600 50  0000 C CNN
	1    3450 5600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58B5001F
P 3000 5900
F 0 "#PWR?" H 3000 5650 50  0001 C CNN
F 1 "GND" H 3005 5727 50  0000 C CNN
F 2 "" H 3000 5900 50  0000 C CNN
F 3 "" H 3000 5900 50  0000 C CNN
	1    3000 5900
	1    0    0    -1  
$EndComp
Text Label 650  4950 0    60   ~ 0
-SHTDWN
$Comp
L R_Small R?
U 1 1 58B518F1
P 2100 5350
F 0 "R?" H 2159 5396 50  0000 L CNN
F 1 "R_Small" H 2159 5305 50  0000 L CNN
F 2 "" H 2100 5350 50  0000 C CNN
F 3 "" H 2100 5350 50  0000 C CNN
	1    2100 5350
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58B51B03
P 2100 5550
F 0 "#PWR?" H 2100 5300 50  0001 C CNN
F 1 "GND" H 2105 5377 50  0000 C CNN
F 2 "" H 2100 5550 50  0000 C CNN
F 3 "" H 2100 5550 50  0000 C CNN
	1    2100 5550
	1    0    0    -1  
$EndComp
Text Label 2850 5150 2    60   ~ 0
SHTDWN_SENSE
Text Label 2850 4950 2    60   ~ 0
+SHTDWN
Text Label 3900 5450 2    60   ~ 0
SHTDWN_SIG
Text Label 7700 3700 2    60   ~ 0
SHTDWN_SENSE
Text Label 7700 3600 2    60   ~ 0
SHTDWN_SIG
Wire Wire Line
	3250 1100 3250 900 
Wire Wire Line
	2750 1100 3250 1100
Wire Wire Line
	4550 4000 4100 4000
Wire Wire Line
	7600 2600 7600 2650
Wire Wire Line
	7250 2600 7600 2600
Connection ~ 6900 2600
Wire Wire Line
	6750 2600 7050 2600
Wire Wire Line
	6900 2400 6900 2600
Wire Wire Line
	1350 1000 1550 1000
Wire Wire Line
	1400 1100 1400 1250
Wire Wire Line
	1350 1100 1400 1100
Wire Wire Line
	2750 1200 3500 1200
Wire Wire Line
	3000 1000 3000 900 
Wire Wire Line
	2750 1000 3000 1000
Wire Wire Line
	4100 2600 4550 2600
Wire Wire Line
	6750 2800 7200 2800
Wire Wire Line
	7700 4000 6750 4000
Wire Wire Line
	3700 3000 4550 3000
Wire Wire Line
	3800 3100 4550 3100
Wire Wire Line
	2200 2850 2200 2800
Wire Wire Line
	2200 2800 2600 2800
Wire Wire Line
	2200 3200 2200 3150
Wire Wire Line
	3600 2900 4550 2900
Wire Wire Line
	3150 3350 3700 3350
Wire Wire Line
	3150 3450 3800 3450
Wire Wire Line
	4750 6450 4750 6650
Wire Wire Line
	4750 6550 5500 6550
Wire Wire Line
	4750 6850 4750 7050
Wire Wire Line
	4750 6950 5500 6950
Wire Wire Line
	7700 3800 6750 3800
Wire Wire Line
	4550 3900 4100 3900
Wire Wire Line
	4100 3700 4550 3700
Wire Wire Line
	4100 3800 4550 3800
Wire Wire Line
	6750 3900 7700 3900
Wire Wire Line
	6750 4400 8550 4400
Wire Wire Line
	6750 4500 8550 4500
Wire Wire Line
	6750 4600 8550 4600
Wire Wire Line
	8000 4050 8100 4050
Wire Wire Line
	8100 4050 8100 4100
Wire Wire Line
	8000 4100 8000 4050
Wire Wire Line
	8000 4300 8000 4400
Connection ~ 8000 4400
Wire Wire Line
	8100 4300 8100 4500
Connection ~ 8100 4500
Wire Wire Line
	8050 4050 8050 4000
Connection ~ 8050 4050
Wire Wire Line
	1800 3800 3900 3800
Wire Wire Line
	1450 3150 1500 3150
Wire Wire Line
	1500 3150 1500 3350
Wire Wire Line
	1500 4000 1500 4200
Wire Wire Line
	1500 3600 1500 3600
Wire Wire Line
	1500 3050 1450 3050
Wire Wire Line
	1500 2900 1500 3050
Wire Wire Line
	3600 2700 4550 2700
Wire Wire Line
	3600 2800 4550 2800
Connection ~ 4750 6550
Connection ~ 4750 6950
Wire Wire Line
	5000 6650 5500 6650
Wire Wire Line
	5000 6750 5500 6750
Wire Wire Line
	5000 6850 5500 6850
Wire Wire Line
	6750 3300 7700 3300
Wire Wire Line
	6750 3400 7700 3400
Wire Wire Line
	6750 3500 7700 3500
Wire Wire Line
	1900 3900 1900 3800
Connection ~ 1900 3800
Wire Wire Line
	1900 4100 1900 4150
Wire Wire Line
	1900 4150 1500 4150
Connection ~ 1500 4150
Wire Wire Line
	3900 3200 4550 3200
Wire Wire Line
	3700 3350 3700 3000
Wire Wire Line
	3800 3450 3800 3100
Wire Wire Line
	3900 3800 3900 3200
Wire Wire Line
	1600 3000 1600 2950
Wire Wire Line
	1600 2950 1500 2950
Connection ~ 1500 2950
Wire Wire Line
	1600 3200 1600 3250
Wire Wire Line
	1600 3250 1500 3250
Connection ~ 1500 3250
Wire Wire Line
	1500 3550 1500 3600
Wire Wire Line
	650  4950 1200 4950
Wire Wire Line
	1200 5050 1100 5050
Wire Wire Line
	1100 5050 1100 4950
Connection ~ 1100 4950
Wire Wire Line
	2000 5050 3000 5050
Wire Wire Line
	3000 5050 3000 5250
Wire Wire Line
	3450 5500 3450 5450
Wire Wire Line
	3300 5450 3900 5450
Wire Wire Line
	3000 5650 3000 5900
Wire Wire Line
	3450 5700 3450 5800
Wire Wire Line
	3450 5800 3000 5800
Connection ~ 3000 5800
Connection ~ 3450 5450
Wire Wire Line
	2100 5250 2100 5150
Wire Wire Line
	2000 5150 2850 5150
Wire Wire Line
	2100 5550 2100 5450
Connection ~ 2100 5150
Wire Wire Line
	2000 4950 2850 4950
Wire Wire Line
	6750 3700 7700 3700
Wire Wire Line
	7700 3600 6750 3600
$Comp
L R R?
U 1 1 58B1F97D
P 7700 5050
F 0 "R?" V 7600 5050 50  0000 C CNN
F 1 "10k" V 7700 5050 50  0000 C CNN
F 2 "" V 7630 5050 50  0000 C CNN
F 3 "" H 7700 5050 50  0000 C CNN
	1    7700 5050
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR?
U 1 1 58B1FDAA
P 8050 5000
F 0 "#PWR?" H 8050 4850 50  0001 C CNN
F 1 "+12V" H 8065 5173 50  0000 C CNN
F 2 "" H 8050 5000 50  0000 C CNN
F 3 "" H 8050 5000 50  0000 C CNN
	1    8050 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 5000 8050 5050
Wire Wire Line
	8050 5050 7850 5050
$Comp
L R R?
U 1 1 58B201FD
P 7150 5050
F 0 "R?" V 7050 5050 50  0000 C CNN
F 1 "2.2k" V 7150 5050 50  0000 C CNN
F 2 "" V 7080 5050 50  0000 C CNN
F 3 "" H 7150 5050 50  0000 C CNN
	1    7150 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 5050 7550 5050
Wire Wire Line
	7500 5050 7500 4900
Wire Wire Line
	7500 4900 6750 4900
Connection ~ 7500 5050
$Comp
L D_Zener D?
U 1 1 58B209FD
P 7150 5200
F 0 "D?" H 7150 5100 50  0000 C CNN
F 1 "3.1v" H 7150 5000 50  0000 C CNN
F 2 "" H 7150 5200 50  0000 C CNN
F 3 "" H 7150 5200 50  0000 C CNN
	1    7150 5200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7300 5200 7400 5200
Wire Wire Line
	7400 5200 7400 5050
Connection ~ 7400 5050
$Comp
L GND #PWR?
U 1 1 58B20DC5
P 6900 5300
F 0 "#PWR?" H 6900 5050 50  0001 C CNN
F 1 "GND" H 6905 5127 50  0000 C CNN
F 2 "" H 6900 5300 50  0000 C CNN
F 3 "" H 6900 5300 50  0000 C CNN
	1    6900 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5050 6900 5300
Wire Wire Line
	6900 5050 7000 5050
Wire Wire Line
	7000 5200 6900 5200
Connection ~ 6900 5200
$EndSCHEMATC
