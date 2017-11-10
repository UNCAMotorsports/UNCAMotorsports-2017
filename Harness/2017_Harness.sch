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
Sheet 1 9
Title ""
Date "2017-11-07"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2500 1500 1250 3150
U 5A01513B
F0 "VCU" 60
F1 "VehicleController.sch" 60
F2 "IMD_F_OUT" O L 2500 2550 60 
F3 "SHUTDOWN_OUT" O R 3750 1600 60 
F4 "START_CAR" I L 2500 2300 60 
F5 "TSMS" I R 3750 1850 60 
F6 "GLVMS" I L 2500 1750 60 
F7 "AMS_F_OUT" O L 2500 2750 60 
F8 "BRAKE_IN" I L 2500 2650 60 
F9 "AIR+" O R 3750 2750 60 
F10 "+BATT" I L 2500 1600 60 
F11 "GND" I L 2500 4550 60 
F12 "+12V" O R 3750 2050 60 
F13 "CANH" B R 3750 2150 60 
F14 "CANL" B R 3750 2250 60 
F15 "HV_BATT+" I R 3750 2850 60 
F16 "TS+" I R 3750 2950 60 
F17 "HVGND" I R 3750 4100 60 
F18 "KSI" O R 3750 3450 60 
F19 "CONTACT_L" O R 3750 3600 60 
F20 "DAC_L" O R 3750 3700 60 
F21 "FAULT_L2" I R 3750 4350 60 
F22 "FAULT_L1" I R 3750 4250 60 
F23 "CONTACT_R" O R 3750 3850 60 
F24 "DAC_R" O R 3750 3950 60 
F25 "FAULT_R2" I R 3750 4450 60 
F26 "FAULT_R1" I R 3750 4550 60 
$EndSheet
$Comp
L Battery BT2
U 1 1 5A0151A6
P 1700 1900
F 0 "BT2" H 1807 1946 50  0000 L CNN
F 1 "14.8V LiPo" H 1807 1855 50  0000 L CNN
F 2 "" V 1700 1960 50  0001 C CNN
F 3 "" V 1700 1960 50  0001 C CNN
	1    1700 1900
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 5A015212
P 1700 4650
F 0 "#PWR015" H 1700 4400 50  0001 C CNN
F 1 "GND" H 1705 4477 50  0000 C CNN
F 2 "" H 1700 4650 50  0001 C CNN
F 3 "" H 1700 4650 50  0001 C CNN
	1    1700 4650
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW?
U 1 1 5A04E7D1
P 2000 1600
F 0 "SW?" H 2000 1835 50  0000 C CNN
F 1 "GLVMS" H 2000 1744 50  0000 C CNN
F 2 "" H 2000 1600 50  0001 C CNN
F 3 "" H 2000 1600 50  0001 C CNN
	1    2000 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2100 1700 2300
Wire Wire Line
	1700 2300 1700 4550
Wire Wire Line
	1700 4550 1700 4650
Wire Wire Line
	1700 1700 1700 1600
Wire Wire Line
	1700 1600 1800 1600
Wire Wire Line
	2200 1600 2250 1600
Wire Wire Line
	2250 1600 2500 1600
Wire Wire Line
	2500 1750 2250 1750
Wire Wire Line
	2250 1750 2250 1600
Connection ~ 2250 1600
$Comp
L SW_SPST SW?
U 1 1 5A051EDD
P 4150 1600
F 0 "SW?" H 4150 1835 50  0000 C CNN
F 1 "BOTS" H 4150 1744 50  0000 C CNN
F 2 "" H 4150 1600 50  0001 C CNN
F 3 "" H 4150 1600 50  0001 C CNN
	1    4150 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 1600 3950 1600
$Comp
L SW_SPST SW?
U 1 1 5A0527F4
P 4700 1600
F 0 "SW?" H 4700 1835 50  0000 C CNN
F 1 "Dash" H 4700 1744 50  0000 C CNN
F 2 "" H 4700 1600 50  0001 C CNN
F 3 "" H 4700 1600 50  0001 C CNN
	1    4700 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1600 4350 1600
$Comp
L SW_SPST SW?
U 1 1 5A052B42
P 5700 1500
F 0 "SW?" H 5700 1735 50  0000 C CNN
F 1 "R_ESTOP" H 5700 1644 50  0000 C CNN
F 2 "" H 5700 1500 50  0001 C CNN
F 3 "" H 5700 1500 50  0001 C CNN
	1    5700 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1600 4900 1600
$Comp
L SW_SPST SW?
U 1 1 5A052D13
P 6200 1500
F 0 "SW?" H 6200 1735 50  0000 C CNN
F 1 "L_ESTOP" H 6200 1644 50  0000 C CNN
F 2 "" H 6200 1500 50  0001 C CNN
F 3 "" H 6200 1500 50  0001 C CNN
	1    6200 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1500 6000 1500
$Comp
L SW_SPST SW?
U 1 1 5A053690
P 2100 2300
F 0 "SW?" H 2100 2535 50  0000 C CNN
F 1 "START" H 2100 2444 50  0000 C CNN
F 2 "" H 2100 2300 50  0001 C CNN
F 3 "" H 2100 2300 50  0001 C CNN
	1    2100 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2300 1700 2300
Connection ~ 1700 2300
Wire Wire Line
	2300 2300 2500 2300
$Comp
L SW_SPDT SW?
U 1 1 5A0553E3
P 5200 1600
F 0 "SW?" H 5200 1885 50  0000 C CNN
F 1 "Inertia" H 5200 1794 50  0000 C CNN
F 2 "" H 5200 1600 50  0001 C CNN
F 3 "" H 5200 1600 50  0001 C CNN
	1    5200 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1500 5500 1500
Wire Wire Line
	2500 4550 1700 4550
Connection ~ 1700 4550
$Comp
L SW_SPST SW?
U 1 1 5A051764
P 6700 1500
F 0 "SW?" H 6700 1735 50  0000 C CNN
F 1 "TSMS" H 6700 1644 50  0000 C CNN
F 2 "" H 6700 1500 50  0001 C CNN
F 3 "" H 6700 1500 50  0001 C CNN
	1    6700 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1500 6400 1500
Wire Wire Line
	3750 1850 5400 1850
Wire Wire Line
	5400 1850 7000 1850
Wire Wire Line
	7000 1850 7000 1500
Wire Wire Line
	7000 1500 6900 1500
$Sheet
S 4250 2650 750  500 
U 5A05254B
F0 "AMS" 60
F1 "file5A05254A.sch" 60
F2 "AIR+" I L 4250 2750 60 
F3 "HV_BATT+" O L 4250 2850 60 
F4 "TS+" O L 4250 2950 60 
F5 "HVGND" O L 4250 3050 60 
F6 "TSMS" I R 5000 2750 60 
$EndSheet
$Sheet
S 4300 3350 650  850 
U 5A0532C2
F0 "MotorControllers" 60
F1 "file5A0532C1.sch" 60
F2 "KSI" I L 4300 3450 60 
F3 "CONTACT_L" I L 4300 3600 60 
F4 "DAC_L" I L 4300 3700 60 
F5 "CONTACT_R" I L 4300 3850 60 
F6 "DAC_R" I L 4300 3950 60 
F7 "HVGND" I L 4300 4100 60 
$EndSheet
Wire Wire Line
	4300 3450 3750 3450
Wire Wire Line
	3750 3600 4300 3600
Wire Wire Line
	4300 3700 3750 3700
Wire Wire Line
	3750 3850 4300 3850
Wire Wire Line
	4300 3950 3750 3950
Wire Wire Line
	3750 4100 4100 4100
Wire Wire Line
	4100 4100 4300 4100
Wire Wire Line
	2500 2550 2250 2550
NoConn ~ 2250 2550
NoConn ~ 2250 2650
NoConn ~ 2250 2750
Wire Wire Line
	2250 2650 2500 2650
Wire Wire Line
	2250 2750 2500 2750
Wire Wire Line
	4250 3050 4100 3050
Connection ~ 4100 4100
Wire Wire Line
	3750 2950 4250 2950
Wire Wire Line
	4250 2850 3750 2850
Wire Wire Line
	3750 2750 4250 2750
$Comp
L GNDA #PWR?
U 1 1 5A05F289
P 4100 3100
F 0 "#PWR?" H 4100 2850 50  0001 C CNN
F 1 "GNDA" H 4105 2927 50  0000 C CNN
F 2 "" H 4100 3100 50  0001 C CNN
F 3 "" H 4100 3100 50  0001 C CNN
	1    4100 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3050 4100 3100
$Comp
L GNDA #PWR?
U 1 1 5A05F650
P 4100 4250
F 0 "#PWR?" H 4100 4000 50  0001 C CNN
F 1 "GNDA" H 4105 4077 50  0000 C CNN
F 2 "" H 4100 4250 50  0001 C CNN
F 3 "" H 4100 4250 50  0001 C CNN
	1    4100 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4250 4100 4100
Wire Wire Line
	5000 2750 5400 2750
Wire Wire Line
	5400 2750 5400 1850
Connection ~ 5400 1850
$Sheet
S 4250 1950 850  500 
U 5A051AEE
F0 "C-CAN" 60
F1 "C-CAN_Y17.sch" 60
F2 "+12V" I L 4250 2050 60 
F3 "CAN_H" B L 4250 2150 60 
F4 "GND" I L 4250 2350 60 
F5 "CAN_L" B L 4250 2250 60 
$EndSheet
Wire Wire Line
	3750 2050 4250 2050
Wire Wire Line
	4250 2150 3750 2150
Wire Wire Line
	3750 2250 4250 2250
$Comp
L GND #PWR?
U 1 1 5A05571C
P 4000 2450
F 0 "#PWR?" H 4000 2200 50  0001 C CNN
F 1 "GND" H 4005 2277 50  0000 C CNN
F 2 "" H 4000 2450 50  0001 C CNN
F 3 "" H 4000 2450 50  0001 C CNN
	1    4000 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2350 4000 2350
Wire Wire Line
	4000 2350 4000 2450
$EndSCHEMATC
