EESchema Schematic File Version 2
LIBS:UNCAMotorsports
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
LIBS:Common-Parts-Library-CPL
LIBS:relays
LIBS:SystemBlocks
LIBS:dc-dc
LIBS:Power_Management
LIBS:switches
LIBS:VehicleController-cache
EELAYER 26 0
EELAYER END
$Descr B 17000 11000
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
P 10650 3950
F 0 "U1" H 10650 5387 60  0000 C CNN
F 1 "Teensy_3.5" H 10650 5281 60  0000 C CNN
F 2 "" H 11100 4650 60  0000 C CNN
F 3 "" H 11100 4650 60  0000 C CNN
	1    10650 3950
	1    0    0    -1  
$EndComp
$Sheet
S 1050 850  1200 400 
U 587C78BB
F0 "PowerDistribution" 60
F1 "PowerDistribution.sch" 60
F2 "CurrentSense" O R 2250 1150 60 
F3 "PWR_IN" I L 1050 950 60 
F4 "12V" O R 2250 950 60 
F5 "5V" O R 2250 1050 60 
$EndSheet
Text Label 3000 1150 2    60   ~ 0
GLV_CURRENT
$Comp
L +5V #PWR01
U 1 1 587CB465
P 11900 2600
F 0 "#PWR01" H 11900 2450 50  0001 C CNN
F 1 "+5V" H 11915 2773 50  0000 C CNN
F 2 "" H 11900 2600 50  0000 C CNN
F 3 "" H 11900 2600 50  0000 C CNN
	1    11900 2600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 587CB49D
P 12150 2800
F 0 "C2" V 11921 2800 50  0000 C CNN
F 1 "C_Small" V 12012 2800 50  0000 C CNN
F 2 "" H 12150 2800 50  0000 C CNN
F 3 "" H 12150 2800 50  0000 C CNN
	1    12150 2800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR02
U 1 1 587CB8C9
P 12600 2850
F 0 "#PWR02" H 12600 2600 50  0001 C CNN
F 1 "GND" H 12605 2677 50  0000 C CNN
F 2 "" H 12600 2850 50  0000 C CNN
F 3 "" H 12600 2850 50  0000 C CNN
	1    12600 2850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 58AED925
P 2750 850
F 0 "#PWR03" H 2750 700 50  0001 C CNN
F 1 "+5V" H 2765 1023 50  0000 C CNN
F 2 "" H 2750 850 50  0000 C CNN
F 3 "" H 2750 850 50  0000 C CNN
	1    2750 850 
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR04
U 1 1 587C97FC
P 2500 850
F 0 "#PWR04" H 2500 700 50  0001 C CNN
F 1 "+12V" H 2515 1023 50  0000 C CNN
F 2 "" H 2500 850 50  0000 C CNN
F 3 "" H 2500 850 50  0000 C CNN
	1    2500 850 
	1    0    0    -1  
$EndComp
Text Label 8950 2800 0    60   ~ 0
GND
Text Label 12200 3000 2    60   ~ 0
+3.3V
NoConn ~ 11750 2900
Text Label 8950 3200 0    60   ~ 0
CANTX
Text Label 8950 3300 0    60   ~ 0
CANRX
NoConn ~ 11750 4300
NoConn ~ 11750 4400
Text Label 12700 3500 2    60   ~ 0
SCL0
Text Label 12700 3600 2    60   ~ 0
SDA0
$Comp
L Battery_Cell BT1
U 1 1 58B1FCEA
P 6600 3750
F 0 "BT1" H 6718 3846 50  0000 L CNN
F 1 "CR1220" H 6718 3755 50  0000 L CNN
F 2 "" V 6600 3810 50  0000 C CNN
F 3 "" V 6600 3810 50  0000 C CNN
	1    6600 3750
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 58B264AD
P 6600 3900
F 0 "#PWR05" H 6600 3650 50  0001 C CNN
F 1 "GND" H 6605 3727 50  0000 C CNN
F 2 "" H 6600 3900 50  0000 C CNN
F 3 "" H 6600 3900 50  0000 C CNN
	1    6600 3900
	1    0    0    -1  
$EndComp
Text Label 8950 3600 0    60   ~ 0
GPS_TX
Text Label 8950 3700 0    60   ~ 0
GPS_RX
$Sheet
S 6800 3400 1000 600 
U 58B2371C
F0 "GPS" 60
F1 "file58B2371B.sch" 60
F2 "3D-FIX" O R 7800 3800 60 
F3 "GPS_TX" O R 7800 3600 60 
F4 "GPS_RX" I R 7800 3700 60 
F5 "VBACKUP" I L 6800 3500 60 
F6 "1PPS" O R 7800 3500 60 
F7 "GPS_RST" I R 7800 3900 60 
$EndSheet
Text Label 8950 3800 0    60   ~ 0
3D_FIX
$Sheet
S 7900 3100 550  300 
U 58B363B1
F0 "CAN Bus" 60
F1 "file58B363B0.sch" 60
F2 "CANTX" I R 8450 3200 60 
F3 "CANRX" O R 8450 3300 60 
$EndSheet
$Comp
L UltimateSensorFusion U6
U 1 1 58B0145C
P 8750 8600
F 0 "U6" H 8750 9087 60  0000 C CNN
F 1 "UltimateSensorFusion" H 8750 8981 60  0000 C CNN
F 2 "" H 8750 8500 60  0001 C CNN
F 3 "" H 8750 8500 60  0001 C CNN
	1    8750 8600
	-1   0    0    -1  
$EndComp
$Comp
L +3.3V #PWR06
U 1 1 58B0A4BD
P 10050 8300
F 0 "#PWR06" H 10050 8150 50  0001 C CNN
F 1 "+3.3V" H 10065 8473 50  0000 C CNN
F 2 "" H 10050 8300 50  0000 C CNN
F 3 "" H 10050 8300 50  0000 C CNN
	1    10050 8300
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 58B0C04F
P 10050 8900
F 0 "#PWR07" H 10050 8650 50  0001 C CNN
F 1 "GND" H 10055 8727 50  0000 C CNN
F 2 "" H 10050 8900 50  0000 C CNN
F 3 "" H 10050 8900 50  0000 C CNN
	1    10050 8900
	-1   0    0    -1  
$EndComp
Text Label 12700 4000 2    60   ~ 0
GLV_CURRENT
Text Label 12700 4600 2    60   ~ 0
SDA1
Text Label 12700 4700 2    60   ~ 0
SCL1
$Sheet
S 13400 4400 1400 600 
U 58B1642E
F0 "Isolation" 60
F1 "file58B1642D.sch" 60
F2 "SDA_IN" I L 13400 4600 60 
F3 "SCL_IN" I L 13400 4700 60 
F4 "DAC_LATCH" I L 13400 4800 60 
F5 "Shutdown_In" I R 14800 4750 60 
F6 "Shutdown_Out" O R 14800 4850 60 
F7 "PRECHARGE" I R 14800 4600 60 
F8 "+5V" I L 13400 4500 60 
$EndSheet
Text Label 12700 4800 2    60   ~ 0
DAC_LATCH
NoConn ~ 11750 3100
NoConn ~ 11750 3200
NoConn ~ 11750 3300
$Comp
L Polyfuse_Small F2
U 1 1 58B2C268
P 10300 1050
F 0 "F2" H 10368 1096 50  0000 L CNN
F 1 "1A" H 10368 1005 50  0000 L CNN
F 2 "" H 10350 850 50  0001 L CNN
F 3 "" H 10300 1050 50  0001 C CNN
	1    10300 1050
	-1   0    0    -1  
$EndComp
$Comp
L +12V #PWR08
U 1 1 58B2DE62
P 10300 900
F 0 "#PWR08" H 10300 750 50  0001 C CNN
F 1 "+12V" H 10315 1073 50  0000 C CNN
F 2 "" H 10300 900 50  0000 C CNN
F 3 "" H 10300 900 50  0000 C CNN
	1    10300 900 
	1    0    0    -1  
$EndComp
$Comp
L C_Small C5
U 1 1 58B36668
P 10050 8600
F 0 "C5" H 10142 8646 50  0000 L CNN
F 1 "C_Small" H 10142 8555 50  0000 L CNN
F 2 "" H 10050 8600 50  0000 C CNN
F 3 "" H 10050 8600 50  0000 C CNN
	1    10050 8600
	1    0    0    -1  
$EndComp
Text Label 9800 8500 2    60   ~ 0
SCL0
Text Label 9800 8600 2    60   ~ 0
SDA0
Text Label 9800 8700 2    60   ~ 0
IMU_INT
Text Label 12700 3700 2    60   ~ 0
IMU_INT
Text Label 8950 3400 0    60   ~ 0
BUZZER
Text Label 8950 4200 0    60   ~ 0
+3.3V
$Comp
L BTS6133D U5
U 1 1 58B4C751
P 3150 3050
F 0 "U5" H 3150 3437 60  0000 C CNN
F 1 "BTS6133D" H 3150 3331 60  0000 C CNN
F 2 "" H 3300 3250 60  0000 C CNN
F 3 "" H 3300 3250 60  0000 C CNN
	1    3150 3050
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q2
U 1 1 58B4E444
P 1650 3450
F 0 "Q2" H 1856 3496 50  0000 L CNN
F 1 "Q_NMOS_GDS" H 1856 3405 50  0000 L CNN
F 2 "" H 1850 3550 50  0000 C CNN
F 3 "" H 1650 3450 50  0000 C CNN
	1    1650 3450
	1    0    0    -1  
$EndComp
$Comp
L R_Small R6
U 1 1 58B4FE92
P 1400 3650
F 0 "R6" H 1459 3696 50  0000 L CNN
F 1 "R_Small" H 1459 3605 50  0000 L CNN
F 2 "" H 1400 3650 50  0000 C CNN
F 3 "" H 1400 3650 50  0000 C CNN
	1    1400 3650
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 58B5001F
P 1750 3900
F 0 "#PWR09" H 1750 3650 50  0001 C CNN
F 1 "GND" H 1755 3727 50  0000 C CNN
F 2 "" H 1750 3900 50  0000 C CNN
F 3 "" H 1750 3900 50  0000 C CNN
	1    1750 3900
	-1   0    0    -1  
$EndComp
$Comp
L R_Small R5
U 1 1 58B518F1
P 2650 3350
F 0 "R5" H 2709 3396 50  0000 L CNN
F 1 "1k" H 2709 3305 50  0000 L CNN
F 2 "" H 2650 3350 50  0000 C CNN
F 3 "" H 2650 3350 50  0000 C CNN
	1    2650 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 58B51B03
P 2650 3550
F 0 "#PWR010" H 2650 3300 50  0001 C CNN
F 1 "GND" H 2655 3377 50  0000 C CNN
F 2 "" H 2650 3550 50  0000 C CNN
F 3 "" H 2650 3550 50  0000 C CNN
	1    2650 3550
	-1   0    0    -1  
$EndComp
Text Label 1900 3150 0    60   ~ 0
SHTDWN_CURRENT
Text Label 800  3450 0    60   ~ 0
SHTDWN_SIG
Text Label 12700 3900 2    60   ~ 0
SHTDWN_CURRENT
Text Label 12700 3800 2    60   ~ 0
SHTDWN_SIG
$Comp
L R R8
U 1 1 58B1F97D
P 12700 5350
F 0 "R8" V 12600 5350 50  0000 C CNN
F 1 "10k" V 12700 5350 50  0000 C CNN
F 2 "" V 12630 5350 50  0000 C CNN
F 3 "" H 12700 5350 50  0000 C CNN
	1    12700 5350
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR011
U 1 1 58B1FDAA
P 12950 5300
F 0 "#PWR011" H 12950 5150 50  0001 C CNN
F 1 "+12V" H 12965 5473 50  0000 C CNN
F 2 "" H 12950 5300 50  0000 C CNN
F 3 "" H 12950 5300 50  0000 C CNN
	1    12950 5300
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 58B201FD
P 12150 5350
F 0 "R7" V 12050 5350 50  0000 C CNN
F 1 "2.2k" V 12150 5350 50  0000 C CNN
F 2 "" V 12080 5350 50  0000 C CNN
F 3 "" H 12150 5350 50  0000 C CNN
	1    12150 5350
	0    1    1    0   
$EndComp
$Comp
L D_Zener D2
U 1 1 58B209FD
P 12150 5500
F 0 "D2" H 12150 5400 50  0000 C CNN
F 1 "3.1v" H 12150 5300 50  0000 C CNN
F 2 "" H 12150 5500 50  0000 C CNN
F 3 "" H 12150 5500 50  0000 C CNN
	1    12150 5500
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 58B20DC5
P 11900 5600
F 0 "#PWR012" H 11900 5350 50  0001 C CNN
F 1 "GND" H 11905 5427 50  0000 C CNN
F 2 "" H 11900 5600 50  0000 C CNN
F 3 "" H 11900 5600 50  0000 C CNN
	1    11900 5600
	1    0    0    -1  
$EndComp
NoConn ~ 11750 4500
NoConn ~ 11750 4900
NoConn ~ 11750 5000
NoConn ~ 9550 4300
NoConn ~ 9550 4400
NoConn ~ 9550 4500
NoConn ~ 9550 4600
NoConn ~ 9550 4700
NoConn ~ 9550 4800
NoConn ~ 9550 4900
NoConn ~ 9550 5000
NoConn ~ 9550 5100
$Comp
L GND #PWR013
U 1 1 58B96CF4
P 6200 9600
F 0 "#PWR013" H 6200 9350 50  0001 C CNN
F 1 "GND" H 6205 9427 50  0000 C CNN
F 2 "" H 6200 9600 50  0000 C CNN
F 3 "" H 6200 9600 50  0000 C CNN
	1    6200 9600
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR014
U 1 1 58B97704
P 6200 8300
F 0 "#PWR014" H 6200 8150 50  0001 C CNN
F 1 "+3.3V" H 6215 8473 50  0000 C CNN
F 2 "" H 6200 8300 50  0000 C CNN
F 3 "" H 6200 8300 50  0000 C CNN
	1    6200 8300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 58BA0C16
P 7700 8650
F 0 "#PWR015" H 7700 8400 50  0001 C CNN
F 1 "GND" H 7600 8600 50  0001 C CNN
F 2 "" H 7700 8650 50  0000 C CNN
F 3 "" H 7700 8650 50  0000 C CNN
	1    7700 8650
	1    0    0    -1  
$EndComp
$Comp
L H3LIS331DL U16
U 1 1 58B960C0
P 7000 8900
F 0 "U16" H 7000 9687 60  0000 C CNN
F 1 "H3LIS331DL" H 7000 9581 60  0000 C CNN
F 2 "" H 6800 9000 60  0000 C CNN
F 3 "" H 6800 9000 60  0000 C CNN
	1    7000 8900
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR016
U 1 1 58BA297F
P 7900 9350
F 0 "#PWR016" H 7900 9200 50  0001 C CNN
F 1 "+3.3V" H 7915 9523 50  0000 C CNN
F 2 "" H 7900 9350 50  0000 C CNN
F 3 "" H 7900 9350 50  0000 C CNN
	1    7900 9350
	1    0    0    -1  
$EndComp
$Comp
L R_Small R19
U 1 1 58BA2B5D
P 7750 9400
F 0 "R19" H 7809 9446 50  0000 L CNN
F 1 "10k" H 7809 9355 50  0000 L CNN
F 2 "" H 7750 9400 50  0000 C CNN
F 3 "" H 7750 9400 50  0000 C CNN
	1    7750 9400
	0    1    1    0   
$EndComp
$Comp
L C_Small C12
U 1 1 58BA45FE
P 6200 8800
F 0 "C12" H 6292 8846 50  0000 L CNN
F 1 "100nF_cer" H 6292 8755 50  0000 L CNN
F 2 "" H 6200 8800 50  0000 C CNN
F 3 "" H 6200 8800 50  0000 C CNN
	1    6200 8800
	-1   0    0    -1  
$EndComp
$Comp
L MX150_8 P2
U 1 1 58BAA520
P 1600 2100
F 0 "P2" H 1600 2465 50  0000 C CNN
F 1 "MX150_8" H 1600 2374 50  0000 C CNN
F 2 "" H 1600 900 50  0000 C CNN
F 3 "" H 1600 900 50  0000 C CNN
	1    1600 2100
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR017
U 1 1 58BAD131
P 1250 1750
F 0 "#PWR017" H 1250 1600 50  0001 C CNN
F 1 "+BATT" H 1265 1923 50  0000 C CNN
F 2 "" H 1250 1750 50  0000 C CNN
F 3 "" H 1250 1750 50  0000 C CNN
	1    1250 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 58BAD6C3
P 1250 2500
F 0 "#PWR018" H 1250 2250 50  0001 C CNN
F 1 "GND" H 1255 2327 50  0000 C CNN
F 2 "" H 1250 2500 50  0000 C CNN
F 3 "" H 1250 2500 50  0000 C CNN
	1    1250 2500
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR019
U 1 1 58BADBFA
P 850 850
F 0 "#PWR019" H 850 700 50  0001 C CNN
F 1 "+BATT" H 865 1023 50  0000 C CNN
F 2 "" H 850 850 50  0000 C CNN
F 3 "" H 850 850 50  0000 C CNN
	1    850  850 
	1    0    0    -1  
$EndComp
Text Label 750  2150 0    60   ~ 0
SHTDWN_OUT
Text Label 15500 4850 2    60   ~ 0
SHTDWN_OUT
Text Label 2250 2950 0    60   ~ 0
SHTDWN_IN
Text Label 4250 2950 2    60   ~ 0
SHTDWN_ISO
Text Label 15500 4750 2    60   ~ 0
SHTDWN_ISO
Text Label 750  2050 0    60   ~ 0
SHTDWN_IN
$Comp
L C_Small C13
U 1 1 58BE72D2
P 5600 8650
F 0 "C13" H 5692 8696 50  0000 L CNN
F 1 "10uF_Al" H 5692 8605 50  0000 L CNN
F 2 "" H 5600 8650 50  0000 C CNN
F 3 "" H 5600 8650 50  0000 C CNN
	1    5600 8650
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 58BE950D
P 5600 8900
F 0 "#PWR020" H 5600 8650 50  0001 C CNN
F 1 "GND" H 5605 8727 50  0000 C CNN
F 2 "" H 5600 8900 50  0000 C CNN
F 3 "" H 5600 8900 50  0000 C CNN
	1    5600 8900
	1    0    0    -1  
$EndComp
Text Label 7650 9000 0    60   ~ 0
HighG
NoConn ~ 8200 8800
NoConn ~ 11750 3400
$Comp
L GND #PWR021
U 1 1 58C0833B
P 12050 4250
F 0 "#PWR021" H 12050 4000 50  0001 C CNN
F 1 "GND" H 12055 4077 50  0001 C CNN
F 2 "" H 12050 4250 50  0000 C CNN
F 3 "" H 12050 4250 50  0000 C CNN
	1    12050 4250
	1    0    0    -1  
$EndComp
Text Label 8950 2900 0    60   ~ 0
START_CAR
Text Label 2450 2250 2    60   ~ 0
START_CAR
$Comp
L Q_PMOS_GDS Q1
U 1 1 58B8351B
P 10400 1550
F 0 "Q1" H 10606 1504 50  0000 L CNN
F 1 "Q_PMOS_GDS" H 10606 1595 50  0000 L CNN
F 2 "" H 10600 1650 50  0000 C CNN
F 3 "" H 10400 1550 50  0000 C CNN
	1    10400 1550
	-1   0    0    1   
$EndComp
$Comp
L R_Small R4
U 1 1 58B85D79
P 10700 1350
F 0 "R4" H 10759 1396 50  0000 L CNN
F 1 "R_Small" H 10759 1305 50  0000 L CNN
F 2 "" H 10700 1350 50  0000 C CNN
F 3 "" H 10700 1350 50  0000 C CNN
	1    10700 1350
	1    0    0    -1  
$EndComp
Text Label 2450 1950 2    60   ~ 0
BUZZER_OUT
Text Label 10900 1950 2    60   ~ 0
BUZZER_OUT
Text Label 8950 3000 0    60   ~ 0
PRECHARGE
Text Label 15500 4600 2    60   ~ 0
PRECHARGE
Text Label 11100 1550 2    60   ~ 0
BUZZER
Wire Wire Line
	2750 1050 2750 850 
Wire Wire Line
	2250 1050 2750 1050
Wire Wire Line
	9550 4200 8950 4200
Wire Wire Line
	12600 2800 12600 2850
Wire Wire Line
	12250 2800 12600 2800
Connection ~ 11900 2800
Wire Wire Line
	11750 2800 12050 2800
Wire Wire Line
	11900 2600 11900 2800
Wire Wire Line
	850  950  1050 950 
Wire Wire Line
	2250 1150 3000 1150
Wire Wire Line
	2500 950  2500 850 
Wire Wire Line
	2250 950  2500 950 
Wire Wire Line
	8950 2800 9550 2800
Wire Wire Line
	11750 3000 12400 3000
Wire Wire Line
	6600 3550 6600 3500
Wire Wire Line
	6600 3500 6800 3500
Wire Wire Line
	6600 3900 6600 3850
Wire Wire Line
	7800 3800 9550 3800
Wire Wire Line
	10050 8300 10050 8500
Wire Wire Line
	10050 8400 9300 8400
Wire Wire Line
	10050 8700 10050 8900
Wire Wire Line
	10050 8800 9300 8800
Wire Wire Line
	12700 4000 11750 4000
Wire Wire Line
	11750 4600 13400 4600
Wire Wire Line
	11750 4700 13400 4700
Wire Wire Line
	11750 4800 13400 4800
Wire Wire Line
	7800 3600 9550 3600
Wire Wire Line
	7800 3700 9550 3700
Connection ~ 10050 8400
Connection ~ 10050 8800
Wire Wire Line
	9800 8500 9300 8500
Wire Wire Line
	9800 8600 9300 8600
Wire Wire Line
	9800 8700 9300 8700
Wire Wire Line
	11750 3500 12700 3500
Wire Wire Line
	11750 3600 12700 3600
Wire Wire Line
	11750 3700 12700 3700
Wire Wire Line
	8950 3400 9550 3400
Wire Wire Line
	3550 2950 4250 2950
Wire Wire Line
	3550 3050 3650 3050
Wire Wire Line
	3650 3050 3650 2950
Connection ~ 3650 2950
Wire Wire Line
	2750 3050 1750 3050
Wire Wire Line
	1750 3050 1750 3250
Wire Wire Line
	1400 3550 1400 3450
Wire Wire Line
	800  3450 1450 3450
Wire Wire Line
	1750 3650 1750 3900
Wire Wire Line
	1400 3750 1400 3800
Wire Wire Line
	1400 3800 1750 3800
Connection ~ 1750 3800
Connection ~ 1400 3450
Wire Wire Line
	2650 3250 2650 3150
Wire Wire Line
	1900 3150 2750 3150
Wire Wire Line
	2650 3550 2650 3450
Connection ~ 2650 3150
Wire Wire Line
	11750 3900 12700 3900
Wire Wire Line
	12700 3800 11750 3800
Wire Wire Line
	12950 5300 12950 5350
Wire Wire Line
	12950 5350 12850 5350
Wire Wire Line
	12300 5350 12550 5350
Wire Wire Line
	12500 5350 12500 5100
Wire Wire Line
	12500 5100 11750 5100
Connection ~ 12500 5350
Wire Wire Line
	12300 5500 12400 5500
Wire Wire Line
	12400 5500 12400 5350
Connection ~ 12400 5350
Wire Wire Line
	11900 5350 11900 5600
Wire Wire Line
	11900 5350 12000 5350
Wire Wire Line
	12000 5500 11900 5500
Connection ~ 11900 5500
Wire Wire Line
	6400 9000 6200 9000
Wire Wire Line
	6200 8900 6200 9600
Wire Wire Line
	6400 9400 6200 9400
Connection ~ 6200 9400
Wire Wire Line
	6400 9300 6200 9300
Connection ~ 6200 9300
Wire Wire Line
	6400 9200 6200 9200
Connection ~ 6200 9200
Wire Wire Line
	6400 9100 6200 9100
Connection ~ 6200 9100
Wire Wire Line
	6200 8300 6200 8700
Wire Wire Line
	6200 8400 6400 8400
Wire Wire Line
	6200 8500 6400 8500
Connection ~ 6200 8400
Wire Wire Line
	6200 8600 6400 8600
Connection ~ 6200 8500
Wire Wire Line
	8200 8400 7600 8400
Wire Wire Line
	7600 8500 8200 8500
Wire Wire Line
	7600 8900 7900 8900
Wire Wire Line
	7900 8900 7900 8600
Wire Wire Line
	7900 8600 8200 8600
Wire Wire Line
	7600 8600 7700 8600
Wire Wire Line
	7700 8600 7700 8650
Wire Wire Line
	7850 9400 7900 9400
Wire Wire Line
	7900 9400 7900 9350
Wire Wire Line
	7650 9400 7600 9400
Connection ~ 6200 8600
Connection ~ 6200 9000
Wire Wire Line
	1250 1750 1250 1950
Wire Wire Line
	900  1950 1350 1950
Wire Wire Line
	1250 2250 1250 2500
Wire Wire Line
	1250 2250 1350 2250
Wire Wire Line
	850  950  850  850 
Wire Wire Line
	1350 2150 750  2150
Wire Wire Line
	14800 4850 15500 4850
Wire Wire Line
	2750 2950 2250 2950
Wire Wire Line
	14800 4750 15500 4750
Wire Wire Line
	750  2050 1350 2050
Connection ~ 6200 8450
Wire Wire Line
	5600 8450 6200 8450
Wire Wire Line
	5600 8550 5600 8450
Wire Wire Line
	5600 8900 5600 8750
Wire Wire Line
	7600 9000 8000 9000
Wire Wire Line
	8000 9000 8000 8700
Wire Wire Line
	8000 8700 8200 8700
Wire Wire Line
	11750 4200 12050 4200
Wire Wire Line
	12050 4200 12050 4250
Wire Wire Line
	9550 2900 8950 2900
Wire Wire Line
	1850 2250 2450 2250
Wire Wire Line
	10300 900  10300 950 
Wire Wire Line
	10300 1150 10300 1350
Wire Wire Line
	10700 1450 10700 1550
Wire Wire Line
	10600 1550 11100 1550
Wire Wire Line
	10700 1250 10700 1200
Wire Wire Line
	10700 1200 10300 1200
Connection ~ 10300 1200
Connection ~ 10700 1550
Wire Wire Line
	1850 1950 2450 1950
Wire Wire Line
	10300 1750 10300 1950
Wire Wire Line
	10300 1950 10900 1950
Wire Wire Line
	9550 3000 8950 3000
Wire Wire Line
	14800 4600 15500 4600
Wire Wire Line
	8450 3200 9550 3200
Wire Wire Line
	8450 3300 9550 3300
Wire Wire Line
	7800 3500 9550 3500
Text Label 8950 3500 0    60   ~ 0
1PPS
NoConn ~ 11750 4100
NoConn ~ 9550 4100
NoConn ~ 9550 4000
NoConn ~ 9550 3100
NoConn ~ 1850 2050
NoConn ~ 1850 2150
$Comp
L +3.3V #PWR022
U 1 1 58BC100A
P 12400 2900
F 0 "#PWR022" H 12400 2750 50  0001 C CNN
F 1 "+3.3V" H 12415 3073 50  0000 C CNN
F 2 "" H 12400 2900 50  0000 C CNN
F 3 "" H 12400 2900 50  0000 C CNN
	1    12400 2900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	12400 3000 12400 2900
Wire Wire Line
	7800 3900 9550 3900
Text Label 8950 3900 0    60   ~ 0
GPS_RST
$Comp
L +5V #PWR023
U 1 1 58BE2E38
P 13250 4400
F 0 "#PWR023" H 13300 4450 50  0001 C CNN
F 1 "+5V" H 13265 4573 50  0000 C CNN
F 2 "" H 200 50  50  0001 C CNN
F 3 "" H 200 50  50  0001 C CNN
	1    13250 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	13250 4400 13250 4500
Wire Wire Line
	13250 4500 13400 4500
$Comp
L PWR_FLAG #FLG024
U 1 1 58BF5EAE
P 900 1850
F 0 "#FLG024" H 350 1075 50  0001 C CNN
F 1 "PWR_FLAG" H 900 2024 50  0000 C CNN
F 2 "" H 350 1000 50  0001 C CNN
F 3 "" H 350 1000 50  0001 C CNN
	1    900  1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  1850 900  1950
Connection ~ 1250 1950
$Comp
L PWR_FLAG #FLG025
U 1 1 58BF6049
P 900 2400
F 0 "#FLG025" H 350 1625 50  0001 C CNN
F 1 "PWR_FLAG" H 900 2574 50  0000 C CNN
F 2 "" H 350 1550 50  0001 C CNN
F 3 "" H 350 1550 50  0001 C CNN
	1    900  2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  2400 900  2450
Wire Wire Line
	900  2450 1250 2450
Connection ~ 1250 2450
$EndSCHEMATC
