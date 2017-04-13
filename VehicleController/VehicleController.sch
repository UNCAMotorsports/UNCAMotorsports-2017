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
$Descr B 17000 11000
encoding utf-8
Sheet 1 5
Title "Vehicle Controller"
Date "2017-03-11"
Rev "001"
Comp "UNC Asheville Motorsports"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
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
L +5V #PWR26
U 1 1 587CB465
P 11900 2600
F 0 "#PWR26" H 11900 2450 50  0001 C CNN
F 1 "+5V" H 11915 2773 50  0000 C CNN
F 2 "" H 11900 2600 50  0000 C CNN
F 3 "" H 11900 2600 50  0000 C CNN
	1    11900 2600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C4
U 1 1 587CB49D
P 12150 2800
F 0 "C4" V 11921 2800 50  0000 C CNN
F 1 "1uF" V 12012 2800 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 12150 2800 50  0001 C CNN
F 3 "" H 12150 2800 50  0000 C CNN
	1    12150 2800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR29
U 1 1 587CB8C9
P 12600 2850
F 0 "#PWR29" H 12600 2600 50  0001 C CNN
F 1 "GND" H 12605 2677 50  0000 C CNN
F 2 "" H 12600 2850 50  0000 C CNN
F 3 "" H 12600 2850 50  0000 C CNN
	1    12600 2850
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR7
U 1 1 587C97FC
P 2500 850
F 0 "#PWR7" H 2500 700 50  0001 C CNN
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
F 2 "" V 6600 3810 50  0001 C CNN
F 3 "" V 6600 3810 50  0000 C CNN
	1    6600 3750
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR15
U 1 1 58B264AD
P 6600 3900
F 0 "#PWR15" H 6600 3650 50  0001 C CNN
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
L UltimateSensorFusion U3
U 1 1 58B0145C
P 11850 8150
F 0 "U3" H 11850 8637 60  0000 C CNN
F 1 "UltimateSensorFusion" H 11850 8531 60  0000 C CNN
F 2 "UNCAMotorsports:UltimateSensorFusion" H 11850 8050 60  0001 C CNN
F 3 "" H 11850 8050 60  0001 C CNN
	1    11850 8150
	-1   0    0    -1  
$EndComp
$Comp
L +3.3V #PWR21
U 1 1 58B0A4BD
P 13000 7850
F 0 "#PWR21" H 13000 7700 50  0001 C CNN
F 1 "+3.3V" H 13015 8023 50  0000 C CNN
F 2 "" H 13000 7850 50  0000 C CNN
F 3 "" H 13000 7850 50  0000 C CNN
	1    13000 7850
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR22
U 1 1 58B0C04F
P 13000 8450
F 0 "#PWR22" H 13000 8200 50  0001 C CNN
F 1 "GND" H 13005 8277 50  0000 C CNN
F 2 "" H 13000 8450 50  0000 C CNN
F 3 "" H 13000 8450 50  0000 C CNN
	1    13000 8450
	-1   0    0    -1  
$EndComp
Text Label 12700 4000 2    60   ~ 0
GLV_CURRENT
Text Label 12300 4600 2    60   ~ 0
SDA1
Text Label 12300 4700 2    60   ~ 0
SCL1
$Sheet
S 12450 4400 1400 900 
U 58B1642E
F0 "Isolation" 60
F1 "file58B1642D.sch" 60
F2 "SDA_IN" I L 12450 4600 60 
F3 "SCL_IN" I L 12450 4700 60 
F4 "DAC_LATCH" I L 12450 4500 60 
F5 "Shutdown_In" I R 13850 4900 60 
F6 "Shutdown_Out" O R 13850 5000 60 
F7 "PRECHARGE" I R 13850 4750 60 
F8 "+5V" I R 13850 4500 60 
F9 "TSMS" I R 13850 4650 60 
F10 "F_L1" O L 12450 4800 60 
F11 "F_L2" O L 12450 4900 60 
F12 "F_R1" O L 12450 5000 60 
F13 "F_R2" O L 12450 5100 60 
$EndSheet
Text Label 12300 4500 2    60   ~ 0
DAC_LATCH
NoConn ~ 11750 3100
NoConn ~ 11750 3200
$Comp
L C_Small C3
U 1 1 58B36668
P 13000 8150
F 0 "C3" H 13092 8196 50  0000 L CNN
F 1 "1uF" H 13092 8105 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 13000 8150 50  0001 C CNN
F 3 "" H 13000 8150 50  0000 C CNN
	1    13000 8150
	1    0    0    -1  
$EndComp
Text Label 12800 8050 2    60   ~ 0
SCL0
Text Label 12800 8150 2    60   ~ 0
SDA0
Text Label 12800 8250 2    60   ~ 0
IMU_INT
Text Label 12700 3700 2    60   ~ 0
IMU_INT
Text Label 8950 4200 0    60   ~ 0
+3.3V
$Comp
L BTS6133D U1
U 1 1 58B4C751
P 3150 3050
F 0 "U1" H 3150 3437 60  0000 C CNN
F 1 "BTS6133D" H 3150 3331 60  0000 C CNN
F 2 "UNCAMotorsports:TO-252-5" H 3300 3250 60  0001 C CNN
F 3 "" H 3300 3250 60  0000 C CNN
	1    3150 3050
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q1
U 1 1 58B4E444
P 1650 3900
F 0 "Q1" H 1856 3946 50  0000 L CNN
F 1 "Shutdown_FET" H 1856 3855 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 1850 4000 50  0001 C CNN
F 3 "" H 1650 3900 50  0000 C CNN
	1    1650 3900
	1    0    0    -1  
$EndComp
$Comp
L R_Small R1
U 1 1 58B4FE92
P 1400 4100
F 0 "R1" H 1459 4146 50  0000 L CNN
F 1 "10k" H 1459 4055 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1400 4100 50  0001 C CNN
F 3 "" H 1400 4100 50  0000 C CNN
	1    1400 4100
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR5
U 1 1 58B5001F
P 1750 4350
F 0 "#PWR5" H 1750 4100 50  0001 C CNN
F 1 "GND" H 1755 4177 50  0000 C CNN
F 2 "" H 1750 4350 50  0000 C CNN
F 3 "" H 1750 4350 50  0000 C CNN
	1    1750 4350
	-1   0    0    -1  
$EndComp
$Comp
L R_Small R3
U 1 1 58B518F1
P 2650 3350
F 0 "R3" H 2709 3396 50  0000 L CNN
F 1 "1k" H 2709 3305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2650 3350 50  0001 C CNN
F 3 "" H 2650 3350 50  0000 C CNN
	1    2650 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR8
U 1 1 58B51B03
P 2650 3550
F 0 "#PWR8" H 2650 3300 50  0001 C CNN
F 1 "GND" H 2655 3377 50  0000 C CNN
F 2 "" H 2650 3550 50  0000 C CNN
F 3 "" H 2650 3550 50  0000 C CNN
	1    2650 3550
	-1   0    0    -1  
$EndComp
Text Label 1900 3150 0    60   ~ 0
SHTDWN_CURRENT
Text Label 800  3900 0    60   ~ 0
SHTDWN_SIG
Text Label 12700 3900 2    60   ~ 0
SHTDWN_CURRENT
Text Label 12700 3800 2    60   ~ 0
SHTDWN_SIG
$Comp
L R R7
U 1 1 58B1F97D
P 8600 5350
F 0 "R7" V 8500 5350 50  0000 C CNN
F 1 "10k" V 8600 5350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8530 5350 50  0001 C CNN
F 3 "" H 8600 5350 50  0000 C CNN
	1    8600 5350
	0    -1   1    0   
$EndComp
$Comp
L +12V #PWR19
U 1 1 58B1FDAA
P 8350 5300
F 0 "#PWR19" H 8350 5150 50  0001 C CNN
F 1 "+12V" H 8365 5473 50  0000 C CNN
F 2 "" H 8350 5300 50  0000 C CNN
F 3 "" H 8350 5300 50  0000 C CNN
	1    8350 5300
	-1   0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 58B201FD
P 9150 5350
F 0 "R6" V 9050 5350 50  0000 C CNN
F 1 "2.2k" V 9150 5350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9080 5350 50  0001 C CNN
F 3 "" H 9150 5350 50  0000 C CNN
	1    9150 5350
	0    -1   1    0   
$EndComp
$Comp
L D_Zener D1
U 1 1 58B209FD
P 9150 5500
F 0 "D1" H 9150 5400 50  0000 C CNN
F 1 "3.1v" H 9150 5300 50  0000 C CNN
F 2 "Diodes_SMD:SMA_Handsoldering" H 9150 5500 50  0001 C CNN
F 3 "" H 9150 5500 50  0000 C CNN
	1    9150 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR20
U 1 1 58B20DC5
P 9400 5600
F 0 "#PWR20" H 9400 5350 50  0001 C CNN
F 1 "GND" H 9405 5427 50  0000 C CNN
F 2 "" H 9400 5600 50  0000 C CNN
F 3 "" H 9400 5600 50  0000 C CNN
	1    9400 5600
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR14
U 1 1 58B96CF4
P 9300 9150
F 0 "#PWR14" H 9300 8900 50  0001 C CNN
F 1 "GND" H 9305 8977 50  0000 C CNN
F 2 "" H 9300 9150 50  0000 C CNN
F 3 "" H 9300 9150 50  0000 C CNN
	1    9300 9150
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR13
U 1 1 58B97704
P 9300 7750
F 0 "#PWR13" H 9300 7600 50  0001 C CNN
F 1 "+3.3V" H 9315 7923 50  0000 C CNN
F 2 "" H 9300 7750 50  0000 C CNN
F 3 "" H 9300 7750 50  0000 C CNN
	1    9300 7750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR17
U 1 1 58BA0C16
P 10800 8200
F 0 "#PWR17" H 10800 7950 50  0001 C CNN
F 1 "GND" H 10700 8150 50  0001 C CNN
F 2 "" H 10800 8200 50  0000 C CNN
F 3 "" H 10800 8200 50  0000 C CNN
	1    10800 8200
	1    0    0    -1  
$EndComp
$Comp
L H3LIS331DL U2
U 1 1 58B960C0
P 10100 8450
F 0 "U2" H 10100 9237 60  0000 C CNN
F 1 "H3LIS331DL" H 10100 9131 60  0000 C CNN
F 2 "UNCAMotorsports:LGA-16-3x3" H 9900 8550 60  0001 C CNN
F 3 "" H 9900 8550 60  0000 C CNN
	1    10100 8450
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR18
U 1 1 58BA297F
P 11000 8900
F 0 "#PWR18" H 11000 8750 50  0001 C CNN
F 1 "+3.3V" H 11015 9073 50  0000 C CNN
F 2 "" H 11000 8900 50  0000 C CNN
F 3 "" H 11000 8900 50  0000 C CNN
	1    11000 8900
	1    0    0    -1  
$EndComp
$Comp
L R_Small R4
U 1 1 58BA2B5D
P 10850 8950
F 0 "R4" H 10909 8996 50  0000 L CNN
F 1 "10k" H 10909 8905 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 10850 8950 50  0001 C CNN
F 3 "" H 10850 8950 50  0000 C CNN
	1    10850 8950
	0    1    1    0   
$EndComp
$Comp
L C_Small C2
U 1 1 58BA45FE
P 9300 8350
F 0 "C2" H 9391 8396 50  0000 L CNN
F 1 "100nF" H 9391 8305 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9300 8350 50  0001 C CNN
F 3 "" H 9300 8350 50  0000 C CNN
	1    9300 8350
	-1   0    0    -1  
$EndComp
$Comp
L +BATT #PWR2
U 1 1 58BAD131
P 1250 1750
F 0 "#PWR2" H 1250 1600 50  0001 C CNN
F 1 "+BATT" H 1265 1923 50  0000 C CNN
F 2 "" H 1250 1750 50  0000 C CNN
F 3 "" H 1250 1750 50  0000 C CNN
	1    1250 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR3
U 1 1 58BAD6C3
P 1250 2500
F 0 "#PWR3" H 1250 2250 50  0001 C CNN
F 1 "GND" H 1255 2327 50  0000 C CNN
F 2 "" H 1250 2500 50  0000 C CNN
F 3 "" H 1250 2500 50  0000 C CNN
	1    1250 2500
	1    0    0    -1  
$EndComp
Text Label 750  2150 0    60   ~ 0
SHTDWN_OUT
Text Label 14650 5000 2    60   ~ 0
SHTDWN_OUT
Text Label 2250 2950 0    60   ~ 0
SHTDWN_IN
Text Label 4250 2950 2    60   ~ 0
SHTDWN_ISO
Text Label 14650 4900 2    60   ~ 0
SHTDWN_ISO
Text Label 750  2050 0    60   ~ 0
SHTDWN_IN
$Comp
L GND #PWR12
U 1 1 58BE950D
P 8800 8600
F 0 "#PWR12" H 8800 8350 50  0001 C CNN
F 1 "GND" H 8805 8427 50  0000 C CNN
F 2 "" H 8800 8600 50  0000 C CNN
F 3 "" H 8800 8600 50  0000 C CNN
	1    8800 8600
	1    0    0    -1  
$EndComp
Text Label 10750 8550 0    60   ~ 0
HighG
NoConn ~ 11300 8350
$Comp
L GND #PWR27
U 1 1 58C0833B
P 12050 4250
F 0 "#PWR27" H 12050 4000 50  0001 C CNN
F 1 "GND" H 12055 4077 50  0001 C CNN
F 2 "" H 12050 4250 50  0000 C CNN
F 3 "" H 12050 4250 50  0000 C CNN
	1    12050 4250
	1    0    0    -1  
$EndComp
Text Label 8950 2900 0    60   ~ 0
START_CAR
Text Label 14650 4750 2    60   ~ 0
PC_CTRL
Text Label 8950 3500 0    60   ~ 0
1PPS
NoConn ~ 11750 4100
$Comp
L +3.3V #PWR28
U 1 1 58BC100A
P 12400 2550
F 0 "#PWR28" H 12400 2400 50  0001 C CNN
F 1 "+3.3V" H 12415 2723 50  0000 C CNN
F 2 "" H 12400 2550 50  0000 C CNN
F 3 "" H 12400 2550 50  0000 C CNN
	1    12400 2550
	-1   0    0    -1  
$EndComp
Text Label 8950 3900 0    60   ~ 0
GPS_RST
$Comp
L +5V #PWR31
U 1 1 58BE2E38
P 14000 4400
F 0 "#PWR31" H 14050 4450 50  0001 C CNN
F 1 "+5V" H 14015 4573 50  0000 C CNN
F 2 "" H 950 50  50  0001 C CNN
F 3 "" H 950 50  50  0001 C CNN
	1    14000 4400
	-1   0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG1
U 1 1 58BF5EAE
P 900 1850
F 0 "#FLG1" H 350 1075 50  0001 C CNN
F 1 "PWR_FLAG" H 900 2024 50  0000 C CNN
F 2 "" H 350 1000 50  0001 C CNN
F 3 "" H 350 1000 50  0001 C CNN
	1    900  1850
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG2
U 1 1 58BF6049
P 900 2400
F 0 "#FLG2" H 350 1625 50  0001 C CNN
F 1 "PWR_FLAG" H 900 2574 50  0000 C CNN
F 2 "" H 350 1550 50  0001 C CNN
F 3 "" H 350 1550 50  0001 C CNN
	1    900  2400
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C1
U 1 1 58C40E3F
P 8800 8350
F 0 "C1" H 8891 8396 50  0000 L CNN
F 1 "10uF_Al" H 8891 8305 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_5x5.8" H 3200 -300 50  0001 C CNN
F 3 "" H 3200 -300 50  0001 C CNN
	1    8800 8350
	-1   0    0    -1  
$EndComp
$Comp
L R_Small R2
U 1 1 58C24A2C
P 1750 3400
F 0 "R2" H 1809 3446 50  0000 L CNN
F 1 "0R" H 1809 3355 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1750 3400 50  0001 C CNN
F 3 "" H 1750 3400 50  0000 C CNN
	1    1750 3400
	1    0    0    -1  
$EndComp
$Comp
L NDC7003P U5
U 1 1 58C317D9
P 13600 3450
F 0 "U5" H 13600 3847 60  0000 C CNN
F 1 "NDC7003P" H 13600 3741 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6" H -400 -100 60  0001 C CNN
F 3 "" H -400 -100 60  0000 C CNN
	1    13600 3450
	1    0    0    -1  
$EndComp
$Comp
L R_Small R8
U 1 1 58C3389C
P 14150 3350
F 0 "R8" V 13954 3350 50  0000 C CNN
F 1 "220" V 14045 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H -750 0   50  0001 C CNN
F 3 "" H -750 0   50  0001 C CNN
	1    14150 3350
	0    1    1    0   
$EndComp
$Comp
L R_Small R9
U 1 1 58C339BB
P 14150 3550
F 0 "R9" V 14254 3550 50  0000 C CNN
F 1 "220" V 14345 3550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H -750 200 50  0001 C CNN
F 3 "" H -750 200 50  0001 C CNN
	1    14150 3550
	0    1    1    0   
$EndComp
$Comp
L LED_Small_ALT D2
U 1 1 58C33D7C
P 14450 3350
F 0 "D2" H 14450 3585 50  0000 C CNN
F 1 "SCL0" H 14450 3494 50  0000 C CNN
F 2 "LEDs:LED-0805" V -650 -100 50  0001 C CNN
F 3 "" V -650 -100 50  0001 C CNN
	1    14450 3350
	-1   0    0    -1  
$EndComp
$Comp
L LED_Small_ALT D3
U 1 1 58C340EC
P 14450 3550
F 0 "D3" H 14450 3437 50  0000 C CNN
F 1 "SDA0" H 14450 3346 50  0000 C CNN
F 2 "LEDs:LED-0805" V -650 100 50  0001 C CNN
F 3 "" V -650 100 50  0001 C CNN
	1    14450 3550
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR32
U 1 1 58C3449D
P 14750 3650
F 0 "#PWR32" H 14800 3700 50  0001 C CNN
F 1 "GND" H 14755 3477 50  0000 C CNN
F 2 "" H -600 100 50  0001 C CNN
F 3 "" H -600 100 50  0001 C CNN
	1    14750 3650
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR30
U 1 1 58C3B6E9
P 13100 3200
F 0 "#PWR30" H 13100 3050 50  0001 C CNN
F 1 "+3.3V" H 13115 3373 50  0000 C CNN
F 2 "" H 13100 3200 50  0000 C CNN
F 3 "" H 13100 3200 50  0000 C CNN
	1    13100 3200
	-1   0    0    -1  
$EndComp
Text Notes 11250 7600 0    60   ~ 0
I2C Pull-up Resistors \nincluded on Sensor Fusion\nBreakout
$Comp
L +BATT #PWR1
U 1 1 58C2BCC7
P 850 850
F 0 "#PWR1" H 0   -100 50  0001 C CNN
F 1 "+BATT" H 865 1023 50  0000 C CNN
F 2 "" H 0   50  50  0001 C CNN
F 3 "" H 0   50  50  0001 C CNN
	1    850  850 
	1    0    0    -1  
$EndComp
Text Label 8950 3000 0    60   ~ 0
CLOSE_AIR
Text Label 14650 4650 2    60   ~ 0
TSMS
$Comp
L BTS6133D U21
U 1 1 58CA2FE2
P 3150 4950
F 0 "U21" H 2950 5200 60  0000 C CNN
F 1 "BTS6133D" H 3200 4700 60  0000 C CNN
F 2 "" H 3300 5150 60  0000 C CNN
F 3 "" H 3300 5150 60  0000 C CNN
	1    3150 4950
	1    0    0    -1  
$EndComp
Text Label 3950 4850 2    60   ~ 0
AIR+
$Comp
L Q_NMOS_GDS Q6
U 1 1 58CA5DE9
P 2150 5500
F 0 "Q6" H 2356 5546 50  0000 L CNN
F 1 "AIR_FET" H 2356 5455 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 2350 5600 50  0001 C CNN
F 3 "" H 2150 5500 50  0000 C CNN
	1    2150 5500
	1    0    0    -1  
$EndComp
$Comp
L R_Small R30
U 1 1 58CA5DF0
P 1900 5700
F 0 "R30" H 1959 5746 50  0000 L CNN
F 1 "10k" H 1959 5655 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1900 5700 50  0001 C CNN
F 3 "" H 1900 5700 50  0000 C CNN
	1    1900 5700
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR6
U 1 1 58CA5DF7
P 2250 5950
F 0 "#PWR6" H 2250 5700 50  0001 C CNN
F 1 "GND" H 2255 5777 50  0000 C CNN
F 2 "" H 2250 5950 50  0000 C CNN
F 3 "" H 2250 5950 50  0000 C CNN
	1    2250 5950
	-1   0    0    -1  
$EndComp
$Comp
L R_Small R31
U 1 1 58CA5DFE
P 2250 5150
F 0 "R31" H 2309 5196 50  0000 L CNN
F 1 "0R" H 2309 5105 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2250 5150 50  0001 C CNN
F 3 "" H 2250 5150 50  0000 C CNN
	1    2250 5150
	-1   0    0    -1  
$EndComp
Text Label 2300 4850 0    60   ~ 0
TSMS
$Comp
L R_Small R32
U 1 1 58CAF3FA
P 2650 5200
F 0 "R32" H 2709 5246 50  0000 L CNN
F 1 "1k" H 2709 5155 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2650 5200 50  0001 C CNN
F 3 "" H 2650 5200 50  0000 C CNN
	1    2650 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR9
U 1 1 58CAF4EF
P 2650 5350
F 0 "#PWR9" H 2650 5100 50  0001 C CNN
F 1 "GND" H 2655 5177 50  0001 C CNN
F 2 "" H 2650 5350 50  0000 C CNN
F 3 "" H 2650 5350 50  0000 C CNN
	1    2650 5350
	-1   0    0    -1  
$EndComp
Text Label 1400 5500 0    60   ~ 0
CLOSE_AIR
Text Label 8950 3100 0    60   ~ 0
PC_CTRL
$Comp
L Teensy_3.5 U4
U 1 1 587C74D8
P 10650 3950
F 0 "U4" H 10650 5387 60  0000 C CNN
F 1 "Teensy_3.5" H 10650 5281 60  0000 C CNN
F 2 "UNCAMotorsports:Teensy_3.5" H 11100 4650 60  0001 C CNN
F 3 "" H 11100 4650 60  0000 C CNN
	1    10650 3950
	1    0    0    -1  
$EndComp
Text Label 8950 4000 0    60   ~ 0
IMD_F_OUT
Text Label 8950 4100 0    60   ~ 0
AMS_F_OUT
$Comp
L CONN_02X04 P1
U 1 1 58EDA1C3
P 1600 2100
F 0 "P1" H 1600 2350 50  0000 C CNN
F 1 "CONN_02X04" H 1600 1850 50  0000 C CNN
F 2 "" H 1600 900 50  0000 C CNN
F 3 "" H 1600 900 50  0000 C CNN
	1    1600 2100
	1    0    0    -1  
$EndComp
$Comp
L Polyfuse_Small F4
U 1 1 58EDEDFD
P 2900 7450
F 0 "F4" V 2825 7450 50  0000 C CNN
F 1 "3A" V 2975 7450 50  0001 C CNN
F 2 "" H 2950 7250 50  0001 L CNN
F 3 "" H 2900 7450 50  0001 C CNN
	1    2900 7450
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR10
U 1 1 58AED925
P 2750 850
F 0 "#PWR10" H 2750 700 50  0001 C CNN
F 1 "+5V" H 2765 1023 50  0000 C CNN
F 2 "" H 2750 850 50  0000 C CNN
F 3 "" H 2750 850 50  0000 C CNN
	1    2750 850 
	1    0    0    -1  
$EndComp
$Comp
L USB_A J1
U 1 1 58F06FB6
P 10200 1450
F 0 "J1" H 10000 1900 50  0000 L CNN
F 1 "USB_A" H 10000 1800 50  0000 L CNN
F 2 "" H 10350 1400 50  0001 C CNN
F 3 "" H 10350 1400 50  0001 C CNN
	1    10200 1450
	1    0    0    -1  
$EndComp
$Comp
L USB_A J2
U 1 1 58F072A8
P 11000 1450
F 0 "J2" H 10800 1900 50  0000 L CNN
F 1 "USB_A" H 10800 1800 50  0000 L CNN
F 2 "" H 11150 1400 50  0001 C CNN
F 3 "" H 11150 1400 50  0001 C CNN
	1    11000 1450
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR23
U 1 1 58F08C0C
P 10200 1950
F 0 "#PWR23" H 10200 1700 50  0001 C CNN
F 1 "GND" H 10200 1800 50  0000 C CNN
F 2 "" H 10200 1950 50  0001 C CNN
F 3 "" H 10200 1950 50  0001 C CNN
	1    10200 1950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR24
U 1 1 58F0B671
P 10600 1150
F 0 "#PWR24" H 10600 1000 50  0001 C CNN
F 1 "+5V" H 10615 1323 50  0000 C CNN
F 2 "" H 10600 1150 50  0000 C CNN
F 3 "" H 10600 1150 50  0000 C CNN
	1    10600 1150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR25
U 1 1 58F0D6CF
P 11100 1950
F 0 "#PWR25" H 11100 1700 50  0001 C CNN
F 1 "GND" H 11100 1800 50  0000 C CNN
F 2 "" H 11100 1950 50  0001 C CNN
F 3 "" H 11100 1950 50  0001 C CNN
	1    11100 1950
	1    0    0    -1  
$EndComp
Text Notes 9950 850  0    60   ~ 0
Run USB from Teensy to J1, and J2 to exterior
$Comp
L CONN_02X04 P?
U 1 1 58F36668
P 7950 9200
F 0 "P?" H 7950 9450 50  0000 C CNN
F 1 "INPUTS" H 7950 8950 50  0000 C CNN
F 2 "" H 7950 8000 50  0000 C CNN
F 3 "" H 7950 8000 50  0000 C CNN
	1    7950 9200
	1    0    0    -1  
$EndComp
Text Label 7200 9050 0    60   ~ 0
START_CAR
Text Label 7200 9150 0    60   ~ 0
BRAKE_IN
$Comp
L CONN_02X04 P?
U 1 1 58F54EE1
P 3350 7600
F 0 "P?" H 3350 7850 50  0000 C CNN
F 1 "OUTPUTS" H 3350 7350 50  0000 C CNN
F 2 "" H 3350 6400 50  0000 C CNN
F 3 "" H 3350 6400 50  0000 C CNN
	1    3350 7600
	1    0    0    -1  
$EndComp
Text Label 7150 9700 0    60   ~ 0
BRAKE_OUT
Text Label 7150 9800 0    60   ~ 0
BUZZER_OUT
Text Label 2450 2150 2    60   ~ 0
AIR+
Text Label 2450 2050 2    60   ~ 0
TSMS
Text Label 2450 1950 2    60   ~ 0
BUZZER_OUT
$Comp
L +12V #PWR11
U 1 1 58CDFDD8
P 2850 1900
F 0 "#PWR11" H 2850 1750 50  0001 C CNN
F 1 "+12V" H 2850 2040 50  0000 C CNN
F 2 "" H 2850 1900 50  0001 C CNN
F 3 "" H 2850 1900 50  0001 C CNN
	1    2850 1900
	1    0    0    -1  
$EndComp
$Comp
L Polyfuse_Small F1
U 1 1 58B2C268
P 2550 1950
F 0 "F1" H 2618 1996 50  0000 L CNN
F 1 "1A" H 2618 1905 50  0000 L CNN
F 2 "Fuse_Holders_and_Fuses:Fuse_SMD1206_HandSoldering" H 2600 1750 50  0001 L CNN
F 3 "" H 2550 1950 50  0001 C CNN
	1    2550 1950
	0    1    -1   0   
$EndComp
Text Label 12350 3400 2    60   ~ 0
BRAKE_IN
$Comp
L GND #PWR?
U 1 1 58FD372B
P 3800 7850
F 0 "#PWR?" H 3800 7600 50  0001 C CNN
F 1 "GND" H 3800 7700 50  0000 C CNN
F 2 "" H 3800 7850 50  0001 C CNN
F 3 "" H 3800 7850 50  0001 C CNN
	1    3800 7850
	1    0    0    -1  
$EndComp
$Comp
L BTS4130QGA U?
U 1 1 58FD86D4
P 2100 7100
F 0 "U?" H 1800 7500 60  0000 C CNN
F 1 "BTS4130QGA" H 2050 6300 60  0000 C CNN
F 2 "" H 2100 7100 60  0001 C CNN
F 3 "" H 2100 7100 60  0001 C CNN
	1    2100 7100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58FE3D21
P 1400 7850
F 0 "#PWR?" H 1400 7600 50  0001 C CNN
F 1 "GND" H 1400 7700 50  0000 C CNN
F 2 "" H 1400 7850 50  0001 C CNN
F 3 "" H 1400 7850 50  0001 C CNN
	1    1400 7850
	1    0    0    -1  
$EndComp
Text Label 3100 7050 2    60   ~ 0
5VOUT0
Text Label 3100 7150 2    60   ~ 0
5VOUT1
Text Label 3100 7250 2    60   ~ 0
5VOUT2
Text Label 3100 7350 2    60   ~ 0
5VOUT3
Text Label 8950 4700 0    60   ~ 0
5VOUT0
Text Label 8950 4800 0    60   ~ 0
5VOUT1
Text Label 8950 4900 0    60   ~ 0
5VOUT2
Text Label 8950 5000 0    60   ~ 0
5VOUT3
$Comp
L R_Small R?
U 1 1 59005386
P 3300 7050
F 0 "R?" H 3330 7070 50  0000 L CNN
F 1 "10k" H 3330 7010 50  0000 L CNN
F 2 "" H 3300 7050 50  0001 C CNN
F 3 "" H 3300 7050 50  0001 C CNN
	1    3300 7050
	0    -1   -1   0   
$EndComp
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
	13000 7850 13000 8050
Wire Wire Line
	13000 7950 12400 7950
Wire Wire Line
	13000 8250 13000 8450
Wire Wire Line
	13000 8350 12400 8350
Wire Wire Line
	12700 4000 11750 4000
Wire Wire Line
	11750 4600 12450 4600
Wire Wire Line
	11750 4700 12450 4700
Wire Wire Line
	11750 4500 12450 4500
Wire Wire Line
	7800 3600 9550 3600
Wire Wire Line
	7800 3700 9550 3700
Connection ~ 13000 7950
Connection ~ 13000 8350
Wire Wire Line
	12800 8050 12400 8050
Wire Wire Line
	12800 8150 12400 8150
Wire Wire Line
	12800 8250 12400 8250
Wire Wire Line
	11750 3500 13250 3500
Wire Wire Line
	11750 3600 13250 3600
Wire Wire Line
	11750 3700 12700 3700
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
	1400 4000 1400 3900
Wire Wire Line
	800  3900 1450 3900
Wire Wire Line
	1750 4100 1750 4350
Wire Wire Line
	1400 4200 1400 4250
Wire Wire Line
	1400 4250 1750 4250
Connection ~ 1750 4250
Connection ~ 1400 3900
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
	8350 5300 8350 5350
Wire Wire Line
	8350 5350 8450 5350
Wire Wire Line
	8750 5350 9000 5350
Wire Wire Line
	8800 5350 8800 5100
Wire Wire Line
	8800 5100 9550 5100
Connection ~ 8800 5350
Wire Wire Line
	9000 5500 8900 5500
Wire Wire Line
	8900 5500 8900 5350
Connection ~ 8900 5350
Wire Wire Line
	9400 5350 9400 5600
Wire Wire Line
	9400 5350 9300 5350
Wire Wire Line
	9300 5500 9400 5500
Connection ~ 9400 5500
Wire Wire Line
	9500 8550 9300 8550
Wire Wire Line
	9300 8450 9300 9150
Wire Wire Line
	9500 8950 9300 8950
Connection ~ 9300 8950
Wire Wire Line
	9500 8850 9300 8850
Connection ~ 9300 8850
Wire Wire Line
	9500 8750 9300 8750
Connection ~ 9300 8750
Wire Wire Line
	9500 8650 9300 8650
Connection ~ 9300 8650
Wire Wire Line
	9300 7750 9300 8250
Wire Wire Line
	9300 7950 9500 7950
Wire Wire Line
	9300 8050 9500 8050
Connection ~ 9300 7950
Wire Wire Line
	9300 8150 9500 8150
Connection ~ 9300 8050
Wire Wire Line
	11300 7950 10700 7950
Wire Wire Line
	10700 8050 11300 8050
Wire Wire Line
	10700 8450 11000 8450
Wire Wire Line
	11000 8450 11000 8150
Wire Wire Line
	11000 8150 11300 8150
Wire Wire Line
	10700 8150 10800 8150
Wire Wire Line
	10800 8150 10800 8200
Wire Wire Line
	10950 8950 11000 8950
Wire Wire Line
	11000 8950 11000 8900
Wire Wire Line
	10750 8950 10700 8950
Connection ~ 9300 8150
Connection ~ 9300 8550
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
	13850 5000 14650 5000
Wire Wire Line
	2750 2950 2250 2950
Wire Wire Line
	13850 4900 14650 4900
Wire Wire Line
	750  2050 1350 2050
Connection ~ 9300 7850
Wire Wire Line
	8800 7850 8800 8250
Wire Wire Line
	8800 8600 8800 8450
Wire Wire Line
	10700 8550 11100 8550
Wire Wire Line
	11100 8550 11100 8250
Wire Wire Line
	11100 8250 11300 8250
Wire Wire Line
	11750 4200 12050 4200
Wire Wire Line
	12050 4200 12050 4250
Wire Wire Line
	9550 2900 8950 2900
Wire Wire Line
	13850 4750 14650 4750
Wire Wire Line
	8450 3200 9550 3200
Wire Wire Line
	8450 3300 9550 3300
Wire Wire Line
	7800 3500 9550 3500
Wire Wire Line
	12400 3000 12400 2550
Wire Wire Line
	7800 3900 9550 3900
Wire Wire Line
	14000 4400 14000 4500
Wire Wire Line
	14000 4500 13850 4500
Wire Wire Line
	900  1850 900  1950
Connection ~ 1250 1950
Wire Wire Line
	900  2400 900  2450
Wire Wire Line
	900  2450 1250 2450
Connection ~ 1250 2450
Wire Wire Line
	1750 3500 1750 3700
Wire Wire Line
	1750 3050 1750 3300
Wire Wire Line
	13950 3550 14050 3550
Wire Wire Line
	13950 3350 14050 3350
Wire Wire Line
	14350 3550 14250 3550
Wire Wire Line
	14250 3350 14350 3350
Wire Wire Line
	14750 3350 14750 3650
Wire Wire Line
	14750 3350 14550 3350
Wire Wire Line
	14550 3550 14750 3550
Connection ~ 14750 3550
Wire Wire Line
	13100 3200 13100 3400
Wire Wire Line
	13100 3300 13250 3300
Wire Wire Line
	13100 3400 13250 3400
Connection ~ 13100 3300
Wire Wire Line
	8800 7850 9300 7850
Wire Wire Line
	9550 3000 8950 3000
Wire Wire Line
	13850 4650 14650 4650
Wire Wire Line
	3550 4850 3950 4850
Wire Wire Line
	3550 4950 3650 4950
Wire Wire Line
	3650 4950 3650 4850
Connection ~ 3650 4850
Wire Wire Line
	1900 5600 1900 5500
Wire Wire Line
	1400 5500 1950 5500
Wire Wire Line
	2250 5700 2250 5950
Wire Wire Line
	1900 5800 1900 5850
Wire Wire Line
	1900 5850 2250 5850
Connection ~ 2250 5850
Connection ~ 1900 5500
Wire Wire Line
	2250 5250 2250 5300
Wire Wire Line
	2250 4950 2250 5050
Wire Wire Line
	2250 4950 2750 4950
Wire Wire Line
	2300 4850 2750 4850
Wire Wire Line
	2650 5350 2650 5300
Wire Wire Line
	2650 5100 2650 5050
Wire Wire Line
	2650 5050 2750 5050
Wire Wire Line
	11750 4800 12450 4800
Wire Wire Line
	12450 4900 11750 4900
Wire Wire Line
	11750 5000 12450 5000
Wire Wire Line
	12450 5100 11750 5100
Wire Wire Line
	9550 3100 8950 3100
Wire Wire Line
	9550 4000 8950 4000
Wire Wire Line
	9550 4100 8950 4100
Wire Wire Line
	10700 1450 10500 1450
Wire Wire Line
	10500 1550 10700 1550
Wire Wire Line
	10100 1850 10100 1900
Wire Wire Line
	10100 1900 10200 1900
Wire Wire Line
	10200 1850 10200 1950
Connection ~ 10200 1900
Wire Wire Line
	10500 1250 10700 1250
Wire Wire Line
	10600 1150 10600 1250
Connection ~ 10600 1250
Wire Wire Line
	11000 1850 11000 1900
Wire Wire Line
	11000 1900 11100 1900
Wire Wire Line
	11100 1850 11100 1950
Connection ~ 11100 1900
Wire Wire Line
	7700 9050 7200 9050
Wire Wire Line
	7700 9150 7200 9150
Wire Wire Line
	7200 9250 7700 9250
Wire Wire Line
	7700 9700 7150 9700
Wire Wire Line
	7700 9800 7150 9800
Wire Wire Line
	1850 2150 2450 2150
Wire Wire Line
	1850 2050 2450 2050
Wire Wire Line
	1850 1950 2450 1950
Wire Wire Line
	2850 1900 2850 1950
Wire Wire Line
	2850 1950 2650 1950
Wire Wire Line
	11750 3400 12350 3400
Wire Wire Line
	3800 7050 3800 7850
Wire Wire Line
	3800 7450 3800 7550
Wire Wire Line
	3800 7750 3600 7750
Wire Wire Line
	3600 7650 3800 7650
Connection ~ 3800 7750
Wire Wire Line
	3800 7550 3600 7550
Connection ~ 3800 7650
Wire Wire Line
	3600 7450 3800 7450
Connection ~ 3800 7550
Wire Wire Line
	1400 7550 1500 7550
Wire Wire Line
	1400 6750 1400 7550
Wire Wire Line
	1500 7450 1400 7450
Connection ~ 1400 7450
Wire Wire Line
	1500 7350 1400 7350
Connection ~ 1400 7350
Wire Wire Line
	1500 7250 1400 7250
Connection ~ 1400 7250
Wire Wire Line
	1500 7150 1400 7150
Connection ~ 1400 7150
Wire Wire Line
	1500 7050 1400 7050
Connection ~ 1400 7050
Wire Wire Line
	1500 6950 1400 6950
Connection ~ 1400 6950
Wire Wire Line
	1500 6850 1400 6850
Connection ~ 1400 6850
Wire Wire Line
	1400 7650 1400 7850
Wire Wire Line
	1400 7650 1500 7650
Wire Wire Line
	1500 7750 1400 7750
Connection ~ 1400 7750
Wire Wire Line
	3100 7450 3000 7450
Wire Wire Line
	3100 7550 3000 7550
Wire Wire Line
	3000 7650 3100 7650
Wire Wire Line
	3000 7750 3100 7750
Wire Wire Line
	2700 7450 2800 7450
Wire Wire Line
	2700 7550 2800 7550
Wire Wire Line
	2700 7650 2800 7650
Wire Wire Line
	2700 7750 2800 7750
Wire Wire Line
	2700 7050 3200 7050
Wire Wire Line
	2700 7350 3200 7350
Wire Wire Line
	2700 7250 3200 7250
Wire Wire Line
	2700 7150 3200 7150
Wire Wire Line
	9550 4700 8950 4700
Wire Wire Line
	9550 4800 8950 4800
Wire Wire Line
	8950 4900 9550 4900
Wire Wire Line
	9550 5000 8950 5000
$Comp
L R_Small R?
U 1 1 5900657B
P 3300 7150
F 0 "R?" H 3330 7170 50  0000 L CNN
F 1 "10k" H 3330 7110 50  0000 L CNN
F 2 "" H 3300 7150 50  0001 C CNN
F 3 "" H 3300 7150 50  0001 C CNN
	1    3300 7150
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R?
U 1 1 590066E3
P 3300 7250
F 0 "R?" H 3330 7270 50  0000 L CNN
F 1 "10k" H 3330 7210 50  0000 L CNN
F 2 "" H 3300 7250 50  0001 C CNN
F 3 "" H 3300 7250 50  0001 C CNN
	1    3300 7250
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R?
U 1 1 59006802
P 3300 7350
F 0 "R?" H 3330 7370 50  0000 L CNN
F 1 "10k" H 3330 7310 50  0000 L CNN
F 2 "" H 3300 7350 50  0001 C CNN
F 3 "" H 3300 7350 50  0001 C CNN
	1    3300 7350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3400 7350 3800 7350
Connection ~ 3800 7450
Wire Wire Line
	3400 7250 3800 7250
Connection ~ 3800 7350
Wire Wire Line
	3400 7150 3800 7150
Connection ~ 3800 7250
Wire Wire Line
	3400 7050 3800 7050
Connection ~ 3800 7150
$Comp
L +3.3V #PWR?
U 1 1 59029AA0
P 3800 6750
F 0 "#PWR?" H 3800 6600 50  0001 C CNN
F 1 "+3.3V" H 3800 6890 50  0000 C CNN
F 2 "" H 3800 6750 50  0001 C CNN
F 3 "" H 3800 6750 50  0001 C CNN
	1    3800 6750
	1    0    0    -1  
$EndComp
$Comp
L R_Small R?
U 1 1 5902F1E6
P 3300 6950
F 0 "R?" H 3330 6970 50  0000 L CNN
F 1 "10k" H 3330 6910 50  0000 L CNN
F 2 "" H 3300 6950 50  0001 C CNN
F 3 "" H 3300 6950 50  0001 C CNN
	1    3300 6950
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R?
U 1 1 5902F323
P 3300 6850
F 0 "R?" H 3330 6870 50  0000 L CNN
F 1 "10k" H 3330 6810 50  0000 L CNN
F 2 "" H 3300 6850 50  0001 C CNN
F 3 "" H 3300 6850 50  0001 C CNN
	1    3300 6850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3800 6950 3400 6950
Wire Wire Line
	3800 6750 3800 6950
Wire Wire Line
	3400 6850 3800 6850
Connection ~ 3800 6850
Wire Wire Line
	2700 6950 3200 6950
Wire Wire Line
	2700 6850 3200 6850
Text Label 3100 6850 2    60   ~ 0
5VST0/1
Text Label 3100 6950 2    60   ~ 0
5VST1/2
$Comp
L +5V #PWR?
U 1 1 59066F2C
P 1400 6750
F 0 "#PWR?" H 1400 6600 50  0001 C CNN
F 1 "+5V" H 1400 6890 50  0000 C CNN
F 2 "" H 1400 6750 50  0001 C CNN
F 3 "" H 1400 6750 50  0001 C CNN
	1    1400 6750
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X04 P?
U 1 1 59068A7E
P 3350 9500
F 0 "P?" H 3350 9750 50  0000 C CNN
F 1 "OUTPUTS" H 3350 9250 50  0000 C CNN
F 2 "" H 3350 8300 50  0000 C CNN
F 3 "" H 3350 8300 50  0000 C CNN
	1    3350 9500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59068A84
P 3750 9750
F 0 "#PWR?" H 3750 9500 50  0001 C CNN
F 1 "GND" H 3750 9600 50  0000 C CNN
F 2 "" H 3750 9750 50  0001 C CNN
F 3 "" H 3750 9750 50  0001 C CNN
	1    3750 9750
	1    0    0    -1  
$EndComp
$Comp
L BTS4130QGA U?
U 1 1 59068A8A
P 2100 9000
F 0 "U?" H 1800 9400 60  0000 C CNN
F 1 "BTS4130QGA" H 2050 8200 60  0000 C CNN
F 2 "" H 2100 9000 60  0001 C CNN
F 3 "" H 2100 9000 60  0001 C CNN
	1    2100 9000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59068A90
P 1400 9750
F 0 "#PWR?" H 1400 9500 50  0001 C CNN
F 1 "GND" H 1400 9600 50  0000 C CNN
F 2 "" H 1400 9750 50  0001 C CNN
F 3 "" H 1400 9750 50  0001 C CNN
	1    1400 9750
	1    0    0    -1  
$EndComp
Text Label 3100 8950 2    60   ~ 0
12VOUT0
Text Label 3100 9050 2    60   ~ 0
12VOUT1
Text Label 3100 9150 2    60   ~ 0
12VOUT2
Text Label 3100 9250 2    60   ~ 0
12VOUT3
$Comp
L R_Small R?
U 1 1 59068A9A
P 3300 8950
F 0 "R?" H 3330 8970 50  0000 L CNN
F 1 "10k" H 3330 8910 50  0000 L CNN
F 2 "" H 3300 8950 50  0001 C CNN
F 3 "" H 3300 8950 50  0001 C CNN
	1    3300 8950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3750 8950 3750 9750
Wire Wire Line
	3750 9350 3750 9450
Wire Wire Line
	3750 9650 3600 9650
Wire Wire Line
	3600 9550 3750 9550
Connection ~ 3750 9650
Wire Wire Line
	3750 9450 3600 9450
Connection ~ 3750 9550
Wire Wire Line
	3600 9350 3750 9350
Connection ~ 3750 9450
Wire Wire Line
	1400 9450 1500 9450
Wire Wire Line
	1400 8650 1400 9450
Wire Wire Line
	1500 9350 1400 9350
Connection ~ 1400 9350
Wire Wire Line
	1500 9250 1400 9250
Connection ~ 1400 9250
Wire Wire Line
	1500 9150 1400 9150
Connection ~ 1400 9150
Wire Wire Line
	1500 9050 1400 9050
Connection ~ 1400 9050
Wire Wire Line
	1500 8950 1400 8950
Connection ~ 1400 8950
Wire Wire Line
	1500 8850 1400 8850
Connection ~ 1400 8850
Wire Wire Line
	1500 8750 1400 8750
Connection ~ 1400 8750
Wire Wire Line
	1400 9550 1400 9750
Wire Wire Line
	1400 9550 1500 9550
Wire Wire Line
	1500 9650 1400 9650
Connection ~ 1400 9650
Wire Wire Line
	3100 9350 3000 9350
Wire Wire Line
	3100 9450 3000 9450
Wire Wire Line
	3000 9550 3100 9550
Wire Wire Line
	3000 9650 3100 9650
Wire Wire Line
	2700 9350 2800 9350
Wire Wire Line
	2700 9450 2800 9450
Wire Wire Line
	2700 9550 2800 9550
Wire Wire Line
	2700 9650 2800 9650
Wire Wire Line
	2700 8950 3200 8950
Wire Wire Line
	2700 9250 3200 9250
Wire Wire Line
	2700 9150 3200 9150
Wire Wire Line
	2700 9050 3200 9050
$Comp
L R_Small R?
U 1 1 59068AD8
P 3300 9050
F 0 "R?" H 3330 9070 50  0000 L CNN
F 1 "10k" H 3330 9010 50  0000 L CNN
F 2 "" H 3300 9050 50  0001 C CNN
F 3 "" H 3300 9050 50  0001 C CNN
	1    3300 9050
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R?
U 1 1 59068ADE
P 3300 9150
F 0 "R?" H 3330 9170 50  0000 L CNN
F 1 "10k" H 3330 9110 50  0000 L CNN
F 2 "" H 3300 9150 50  0001 C CNN
F 3 "" H 3300 9150 50  0001 C CNN
	1    3300 9150
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R?
U 1 1 59068AE4
P 3300 9250
F 0 "R?" H 3330 9270 50  0000 L CNN
F 1 "10k" H 3330 9210 50  0000 L CNN
F 2 "" H 3300 9250 50  0001 C CNN
F 3 "" H 3300 9250 50  0001 C CNN
	1    3300 9250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3400 9250 3750 9250
Connection ~ 3750 9350
Wire Wire Line
	3400 9150 3750 9150
Connection ~ 3750 9250
Wire Wire Line
	3400 9050 3750 9050
Connection ~ 3750 9150
Wire Wire Line
	3400 8950 3750 8950
Connection ~ 3750 9050
$Comp
L +3.3V #PWR?
U 1 1 59068AF2
P 3750 8650
F 0 "#PWR?" H 3750 8500 50  0001 C CNN
F 1 "+3.3V" H 3750 8790 50  0000 C CNN
F 2 "" H 3750 8650 50  0001 C CNN
F 3 "" H 3750 8650 50  0001 C CNN
	1    3750 8650
	1    0    0    -1  
$EndComp
$Comp
L R_Small R?
U 1 1 59068AF8
P 3300 8850
F 0 "R?" H 3330 8870 50  0000 L CNN
F 1 "10k" H 3330 8810 50  0000 L CNN
F 2 "" H 3300 8850 50  0001 C CNN
F 3 "" H 3300 8850 50  0001 C CNN
	1    3300 8850
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R?
U 1 1 59068AFE
P 3300 8750
F 0 "R?" H 3330 8770 50  0000 L CNN
F 1 "10k" H 3330 8710 50  0000 L CNN
F 2 "" H 3300 8750 50  0001 C CNN
F 3 "" H 3300 8750 50  0001 C CNN
	1    3300 8750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3750 8850 3400 8850
Wire Wire Line
	3750 8650 3750 8850
Wire Wire Line
	3400 8750 3750 8750
Connection ~ 3750 8750
Wire Wire Line
	2700 8850 3200 8850
Wire Wire Line
	2700 8750 3200 8750
Text Label 3100 8750 2    60   ~ 0
12VST0/1
Text Label 3100 8850 2    60   ~ 0
12VST1/2
$Comp
L +12V #PWR?
U 1 1 5906A516
P 1400 8650
F 0 "#PWR?" H 1400 8500 50  0001 C CNN
F 1 "+12V" H 1400 8790 50  0000 C CNN
F 2 "" H 1400 8650 50  0001 C CNN
F 3 "" H 1400 8650 50  0001 C CNN
	1    1400 8650
	1    0    0    -1  
$EndComp
Text Label 8950 4300 0    60   ~ 0
12VOUT0
Text Label 8950 4400 0    60   ~ 0
12VOUT1
Text Label 8950 4500 0    60   ~ 0
12VOUT2
Text Label 8950 4600 0    60   ~ 0
12VOUT3
Wire Wire Line
	8950 4300 9550 4300
Wire Wire Line
	9550 4400 8950 4400
Wire Wire Line
	8950 4500 9550 4500
Wire Wire Line
	9550 4600 8950 4600
$Comp
L Polyfuse_Small F?
U 1 1 590A2978
P 2900 7550
F 0 "F?" V 2825 7550 50  0000 C CNN
F 1 "3A" V 2975 7550 50  0001 C CNN
F 2 "" H 2950 7350 50  0001 L CNN
F 3 "" H 2900 7550 50  0001 C CNN
	1    2900 7550
	0    1    1    0   
$EndComp
$Comp
L Polyfuse_Small F?
U 1 1 590A2ABE
P 2900 7650
F 0 "F?" V 2825 7650 50  0000 C CNN
F 1 "3A" V 2975 7650 50  0001 C CNN
F 2 "" H 2950 7450 50  0001 L CNN
F 3 "" H 2900 7650 50  0001 C CNN
	1    2900 7650
	0    1    1    0   
$EndComp
$Comp
L Polyfuse_Small F?
U 1 1 590A2C03
P 2900 7750
F 0 "F?" V 2825 7750 50  0000 C CNN
F 1 "3A" V 2975 7750 50  0001 C CNN
F 2 "" H 2950 7550 50  0001 L CNN
F 3 "" H 2900 7750 50  0001 C CNN
	1    2900 7750
	0    1    1    0   
$EndComp
$Comp
L Polyfuse_Small F?
U 1 1 590A3065
P 2900 9350
F 0 "F?" V 2825 9350 50  0000 C CNN
F 1 "3A" V 2975 9350 50  0001 C CNN
F 2 "" H 2950 9150 50  0001 L CNN
F 3 "" H 2900 9350 50  0001 C CNN
	1    2900 9350
	0    1    1    0   
$EndComp
$Comp
L Polyfuse_Small F?
U 1 1 590A306B
P 2900 9450
F 0 "F?" V 2825 9450 50  0000 C CNN
F 1 "3A" V 2975 9450 50  0001 C CNN
F 2 "" H 2950 9250 50  0001 L CNN
F 3 "" H 2900 9450 50  0001 C CNN
	1    2900 9450
	0    1    1    0   
$EndComp
$Comp
L Polyfuse_Small F?
U 1 1 590A3071
P 2900 9550
F 0 "F?" V 2825 9550 50  0000 C CNN
F 1 "3A" V 2975 9550 50  0001 C CNN
F 2 "" H 2950 9350 50  0001 L CNN
F 3 "" H 2900 9550 50  0001 C CNN
	1    2900 9550
	0    1    1    0   
$EndComp
$Comp
L Polyfuse_Small F?
U 1 1 590A3077
P 2900 9650
F 0 "F?" V 2825 9650 50  0000 C CNN
F 1 "3A" V 2975 9650 50  0001 C CNN
F 2 "" H 2950 9450 50  0001 L CNN
F 3 "" H 2900 9650 50  0001 C CNN
	1    2900 9650
	0    1    1    0   
$EndComp
$EndSCHEMATC
