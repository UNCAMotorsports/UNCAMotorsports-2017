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
LIBS:VehicleIMU-cache
EELAYER 25 0
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
L Teensy_3.2 U8
U 1 1 5828D574
P 8900 2100
F 0 "U8" H 8900 3489 60  0000 C CNN
F 1 "Teensy_3.2" H 8900 3383 60  0000 C CNN
F 2 "UNCAMotorsports:Teensy_3.2+4" H 9250 3000 60  0001 C CNN
F 3 "" H 9250 3000 60  0000 C CNN
	1    8900 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5828D676
P 7450 3400
F 0 "#PWR01" H 7450 3150 50  0001 C CNN
F 1 "GND" H 7455 3227 50  0000 C CNN
F 2 "" H 7450 3400 50  0000 C CNN
F 3 "" H 7450 3400 50  0000 C CNN
	1    7450 3400
	1    0    0    -1  
$EndComp
$Comp
L MCP2551-I/SN U6
U 1 1 5828D841
P 4900 5000
F 0 "U6" H 4550 5350 50  0000 C CNN
F 1 "MCP2551-I/SN" H 5250 5350 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 4900 4500 50  0001 C CIN
F 3 "" H 4900 5000 50  0000 C CNN
	1    4900 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5828DBF5
P 4900 5550
F 0 "#PWR02" H 4900 5300 50  0001 C CNN
F 1 "GND" H 4905 5377 50  0000 C CNN
F 2 "" H 4900 5550 50  0000 C CNN
F 3 "" H 4900 5550 50  0000 C CNN
	1    4900 5550
	1    0    0    -1  
$EndComp
$Comp
L R_Small R2
U 1 1 5828DD1B
P 4300 5350
F 0 "R2" H 4359 5396 50  0000 L CNN
F 1 "R_Small" H 4359 5305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 4300 5350 50  0001 C CNN
F 3 "" H 4300 5350 50  0000 C CNN
	1    4300 5350
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5828DD62
P 4300 5550
F 0 "#PWR03" H 4300 5300 50  0001 C CNN
F 1 "GND" H 4305 5377 50  0000 C CNN
F 2 "" H 4300 5550 50  0000 C CNN
F 3 "" H 4300 5550 50  0000 C CNN
	1    4300 5550
	1    0    0    -1  
$EndComp
Text Label 5700 4900 2    60   ~ 0
CANH
Text Label 5700 5100 2    60   ~ 0
CANL
Text Label 10350 1300 2    60   ~ 0
CANTX
Text Label 10350 1400 2    60   ~ 0
CANRX
Text Label 4050 4800 0    60   ~ 0
CANTX
Text Label 4050 4900 0    60   ~ 0
CANRX
$Comp
L MPU-9250 U3
U 1 1 5828E7A7
P 2250 2700
F 0 "U3" H 2250 3487 60  0000 C CNN
F 1 "MPU-9250" H 2250 3381 60  0000 C CNN
F 2 "UNCAMotorsports:MPU-9250" H 2050 2650 60  0001 C CNN
F 3 "" H 2050 2650 60  0000 C CNN
	1    2250 2700
	1    0    0    -1  
$EndComp
$Comp
L RJ45 J1
U 1 1 5828EA9A
P 5000 2350
F 0 "J1" V 5123 2828 50  0000 L CNN
F 1 "RJ45" V 5032 2828 50  0000 L CNN
F 2 "UNCAMotorsports:8P8C_SHD" H 5000 2350 50  0001 C CNN
F 3 "" H 5000 2350 50  0000 C CNN
	1    5000 2350
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR04
U 1 1 5828EC98
P 4900 4500
F 0 "#PWR04" H 4900 4350 50  0001 C CNN
F 1 "+5V" H 4915 4673 50  0000 C CNN
F 2 "" H 4900 4500 50  0000 C CNN
F 3 "" H 4900 4500 50  0000 C CNN
	1    4900 4500
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR05
U 1 1 5828ECB1
P 7700 1350
F 0 "#PWR05" H 7700 1200 50  0001 C CNN
F 1 "+3.3V" H 7715 1523 50  0000 C CNN
F 2 "" H 7700 1350 50  0000 C CNN
F 3 "" H 7700 1350 50  0000 C CNN
	1    7700 1350
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR06
U 1 1 5828EDA8
P 1400 2100
F 0 "#PWR06" H 1400 1950 50  0001 C CNN
F 1 "+3.3V" H 1415 2273 50  0000 C CNN
F 2 "" H 1400 2100 50  0000 C CNN
F 3 "" H 1400 2100 50  0000 C CNN
	1    1400 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5828EE27
P 1400 3200
F 0 "#PWR07" H 1400 2950 50  0001 C CNN
F 1 "GND" H 1405 3027 50  0000 C CNN
F 2 "" H 1400 3200 50  0000 C CNN
F 3 "" H 1400 3200 50  0000 C CNN
	1    1400 3200
	1    0    0    -1  
$EndComp
Text Label 3400 2200 2    60   ~ 0
SCL
Text Label 3400 2300 2    60   ~ 0
SDA
Text Label 11100 2600 2    60   ~ 0
SDA
Text Label 11100 2700 2    60   ~ 0
SCL
Text Label 3400 2450 2    60   ~ 0
IMU_INT
$Comp
L FGMMOPA6H U1
U 1 1 582900DC
P 2200 4550
F 0 "U1" H 2250 5237 60  0000 C CNN
F 1 "FGMMOPA6H" H 2250 5131 60  0000 C CNN
F 2 "Wetmelon:FGPMMOPA6H" H 2200 4800 60  0001 C CNN
F 3 "" H 2200 4800 60  0000 C CNN
	1    2200 4550
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR08
U 1 1 582902CC
P 1650 4050
F 0 "#PWR08" H 1650 3900 50  0001 C CNN
F 1 "+3.3V" H 1665 4223 50  0000 C CNN
F 2 "" H 1650 4050 50  0000 C CNN
F 3 "" H 1650 4050 50  0000 C CNN
	1    1650 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 582904F4
P 1650 5200
F 0 "#PWR09" H 1650 4950 50  0001 C CNN
F 1 "GND" H 1655 5027 50  0000 C CNN
F 2 "" H 1650 5200 50  0000 C CNN
F 3 "" H 1650 5200 50  0000 C CNN
	1    1650 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 582908F2
P 3400 5500
F 0 "#PWR010" H 3400 5250 50  0001 C CNN
F 1 "GND" H 3405 5327 50  0000 C CNN
F 2 "" H 3400 5500 50  0000 C CNN
F 3 "" H 3400 5500 50  0000 C CNN
	1    3400 5500
	1    0    0    -1  
$EndComp
$Comp
L U.FL_Antenna U5
U 1 1 582909C2
P 3100 5050
F 0 "U5" H 3000 4900 60  0000 C CNN
F 1 "U.FL_Antenna" H 2950 4700 60  0000 C CNN
F 2 "UNCAMotorsports:U.FL-CON" H 3100 5050 60  0001 C CNN
F 3 "" H 3100 5050 60  0000 C CNN
	1    3100 5050
	1    0    0    -1  
$EndComp
$Comp
L Battery BT1
U 1 1 58292924
P 1200 4750
F 0 "BT1" H 1318 4796 50  0000 L CNN
F 1 "Battery" H 1318 4705 50  0000 L CNN
F 2 "Connect:CR1220" V 1200 4790 50  0001 C CNN
F 3 "" V 1200 4790 50  0000 C CNN
	1    1200 4750
	-1   0    0    -1  
$EndComp
Text Label 1300 4950 0    60   ~ 0
GPS_TX
Text Label 1300 5050 0    60   ~ 0
GPS_RX
Text Label 10350 1000 2    60   ~ 0
GPS_TX
Text Label 10350 1100 2    60   ~ 0
GPS_RX
$Comp
L LED_Small D1
U 1 1 58293C53
P 950 4550
F 0 "D1" H 950 4650 50  0000 C CNN
F 1 "GPS_LED" H 900 4500 50  0000 C CNN
F 2 "LEDs:LED_0805" V 950 4550 50  0001 C CNN
F 3 "" V 950 4550 50  0000 C CNN
	1    950  4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 58293F52
P 700 4800
F 0 "#PWR011" H 700 4550 50  0001 C CNN
F 1 "GND" H 705 4627 50  0000 C CNN
F 2 "" H 700 4800 50  0000 C CNN
F 3 "" H 700 4800 50  0000 C CNN
	1    700  4800
	1    0    0    -1  
$EndComp
$Comp
L MS5611 U2
U 1 1 582946FD
P 2200 6450
F 0 "U2" H 2200 6937 60  0000 C CNN
F 1 "MS5611" H 2200 6831 60  0000 C CNN
F 2 "UNCAMotorsports:MS5611" H 2100 6450 60  0001 C CNN
F 3 "" H 2100 6450 60  0000 C CNN
	1    2200 6450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 58294F49
P 1600 6750
F 0 "#PWR012" H 1600 6500 50  0001 C CNN
F 1 "GND" H 1605 6577 50  0000 C CNN
F 2 "" H 1600 6750 50  0000 C CNN
F 3 "" H 1600 6750 50  0000 C CNN
	1    1600 6750
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR013
U 1 1 58294FD3
P 1600 6150
F 0 "#PWR013" H 1600 6000 50  0001 C CNN
F 1 "+3.3V" H 1615 6323 50  0000 C CNN
F 2 "" H 1600 6150 50  0000 C CNN
F 3 "" H 1600 6150 50  0000 C CNN
	1    1600 6150
	1    0    0    -1  
$EndComp
Text Label 3000 6250 2    60   ~ 0
SDA
Text Label 3000 6350 2    60   ~ 0
SCL
$Comp
L AP1117 U4
U 1 1 58297008
P 3100 950
F 0 "U4" H 3100 1317 50  0000 C CNN
F 1 "AP1117" H 3100 1226 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 3100 600 50  0001 C CNN
F 3 "" H 3200 700 50  0000 C CNN
	1    3100 950 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 582974F4
P 3100 1400
F 0 "#PWR014" H 3100 1150 50  0001 C CNN
F 1 "GND" H 3105 1227 50  0000 C CNN
F 2 "" H 3100 1400 50  0000 C CNN
F 3 "" H 3100 1400 50  0000 C CNN
	1    3100 1400
	1    0    0    -1  
$EndComp
$Comp
L C_Small C6
U 1 1 58297524
P 2700 1150
F 0 "C6" H 2792 1196 50  0000 L CNN
F 1 "10uF" H 2792 1105 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2700 1150 50  0001 C CNN
F 3 "" H 2700 1150 50  0000 C CNN
	1    2700 1150
	-1   0    0    -1  
$EndComp
$Comp
L C_Small C7
U 1 1 5829771A
P 3550 1150
F 0 "C7" H 3642 1196 50  0000 L CNN
F 1 "10uF" H 3642 1105 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3550 1150 50  0001 C CNN
F 3 "" H 3550 1150 50  0000 C CNN
	1    3550 1150
	-1   0    0    -1  
$EndComp
$Comp
L +5V #PWR015
U 1 1 5829795E
P 3800 850
F 0 "#PWR015" H 3800 700 50  0001 C CNN
F 1 "+5V" H 3815 1023 50  0000 C CNN
F 2 "" H 3800 850 50  0000 C CNN
F 3 "" H 3800 850 50  0000 C CNN
	1    3800 850 
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR016
U 1 1 58297ABB
P 2150 850
F 0 "#PWR016" H 2150 700 50  0001 C CNN
F 1 "+12V" H 2165 1023 50  0000 C CNN
F 2 "" H 2150 850 50  0000 C CNN
F 3 "" H 2150 850 50  0000 C CNN
	1    2150 850 
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky_Small D2
U 1 1 5829A6D7
P 2450 950
F 0 "D2" H 2450 745 50  0000 C CNN
F 1 "RevProt" H 2450 836 50  0000 C CNN
F 2 "Diodes_SMD:SOD-123" V 2450 950 50  0001 C CNN
F 3 "" V 2450 950 50  0000 C CNN
	1    2450 950 
	-1   0    0    1   
$EndComp
$Comp
L +12V #PWR017
U 1 1 5829C3C5
P 5600 1900
F 0 "#PWR017" H 5600 1750 50  0001 C CNN
F 1 "+12V" H 5615 2073 50  0000 C CNN
F 2 "" H 5600 1900 50  0000 C CNN
F 3 "" H 5600 1900 50  0000 C CNN
	1    5600 1900
	1    0    0    -1  
$EndComp
Text Label 5800 2700 2    60   ~ 0
CANH
Text Label 5800 2600 2    60   ~ 0
CANL
Text Label 5800 2500 2    60   ~ 0
RST0
Text Label 5800 2400 2    60   ~ 0
RST1
$Comp
L RJ45 J2
U 1 1 5829D22A
P 5000 3550
F 0 "J2" V 5123 4028 50  0000 L CNN
F 1 "RJ45" V 5032 4028 50  0000 L CNN
F 2 "UNCAMotorsports:8P8C_SHD" H 5000 3550 50  0001 C CNN
F 3 "" H 5000 3550 50  0000 C CNN
	1    5000 3550
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR018
U 1 1 5829D230
P 5600 3100
F 0 "#PWR018" H 5600 2950 50  0001 C CNN
F 1 "+12V" H 5615 3273 50  0000 C CNN
F 2 "" H 5600 3100 50  0000 C CNN
F 3 "" H 5600 3100 50  0000 C CNN
	1    5600 3100
	1    0    0    -1  
$EndComp
Text Label 5800 3900 2    60   ~ 0
CANH
Text Label 5800 3800 2    60   ~ 0
CANL
Text Label 5800 3700 2    60   ~ 0
RST0
Text Label 5800 3600 2    60   ~ 0
RST1
$Comp
L +5V #PWR019
U 1 1 582A449A
P 7200 1000
F 0 "#PWR019" H 7200 850 50  0001 C CNN
F 1 "+5V" H 7215 1173 50  0000 C CNN
F 2 "" H 7200 1000 50  0000 C CNN
F 3 "" H 7200 1000 50  0000 C CNN
	1    7200 1000
	1    0    0    -1  
$EndComp
NoConn ~ 2750 4850
NoConn ~ 2750 4750
$Comp
L R R1
U 1 1 582A9A0B
P 1400 4550
F 0 "R1" V 1300 4550 50  0000 C CNN
F 1 "10k" V 1400 4550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1330 4550 50  0001 C CNN
F 3 "" H 1400 4550 50  0000 C CNN
	1    1400 4550
	0    1    -1   0   
$EndComp
$Comp
L C_Small C1
U 1 1 582A9F25
P 700 4250
F 0 "C1" H 792 4296 50  0000 L CNN
F 1 "10uF" H 792 4205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 700 4250 50  0001 C CNN
F 3 "" H 700 4250 50  0000 C CNN
	1    700  4250
	1    0    0    -1  
$EndComp
NoConn ~ 2700 6450
$Comp
L +3.3V #PWR020
U 1 1 582AD4F3
P 10700 2050
F 0 "#PWR020" H 10700 1900 50  0001 C CNN
F 1 "+3.3V" H 10715 2223 50  0000 C CNN
F 2 "" H 10700 2050 50  0000 C CNN
F 3 "" H 10700 2050 50  0000 C CNN
	1    10700 2050
	1    0    0    -1  
$EndComp
$Comp
L C_Small C5
U 1 1 582AE963
P 1450 6450
F 0 "C5" H 1541 6496 50  0000 L CNN
F 1 "1uF" H 1541 6405 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1450 6450 50  0001 C CNN
F 3 "" H 1450 6450 50  0000 C CNN
	1    1450 6450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7450 3050 7900 3050
Wire Wire Line
	7450 1700 7450 3400
Wire Wire Line
	7900 3150 7450 3150
Connection ~ 7450 3150
Wire Wire Line
	7200 1100 7900 1100
Wire Wire Line
	5400 4900 5700 4900
Wire Wire Line
	5400 5100 5700 5100
Wire Wire Line
	4900 5550 4900 5400
Wire Wire Line
	4400 5200 4300 5200
Wire Wire Line
	4300 5200 4300 5250
Wire Wire Line
	4300 5550 4300 5450
Wire Wire Line
	4900 4500 4900 4600
Wire Wire Line
	9900 1300 10350 1300
Wire Wire Line
	9900 1400 10350 1400
Wire Wire Line
	4050 4800 4400 4800
Wire Wire Line
	4050 4900 4400 4900
Wire Wire Line
	7700 1350 7700 1500
Wire Wire Line
	7700 1400 7900 1400
Wire Wire Line
	7700 1500 7900 1500
Connection ~ 7700 1400
Wire Wire Line
	850  2200 1550 2200
Wire Wire Line
	1050 2300 1550 2300
Connection ~ 1400 2200
Connection ~ 1400 2300
Wire Wire Line
	1400 2900 1400 3200
Wire Wire Line
	1400 3050 1550 3050
Connection ~ 1400 3050
Wire Wire Line
	2950 2200 3400 2200
Wire Wire Line
	2950 2300 3400 2300
Wire Wire Line
	9900 2600 11100 2600
Wire Wire Line
	9900 2700 11100 2700
Wire Wire Line
	2950 2450 3400 2450
Wire Wire Line
	1650 4050 1650 4250
Wire Wire Line
	1650 4150 1750 4150
Wire Wire Line
	1650 4250 1750 4250
Connection ~ 1650 4150
Wire Wire Line
	1750 4350 1650 4350
Wire Wire Line
	1650 4350 1650 5200
Wire Wire Line
	1750 4850 1650 4850
Connection ~ 1650 4850
Wire Wire Line
	2750 4950 3400 4950
Wire Wire Line
	3400 4250 3400 5500
Wire Wire Line
	3400 4250 2750 4250
Connection ~ 3400 4950
Wire Wire Line
	2750 5050 2850 5050
Wire Wire Line
	3250 5250 3400 5250
Connection ~ 3400 5250
Wire Wire Line
	3250 5350 3400 5350
Connection ~ 3400 5350
Wire Wire Line
	1200 4600 1200 4450
Wire Wire Line
	1200 4450 1750 4450
Wire Wire Line
	1200 4900 1200 5150
Wire Wire Line
	1200 5150 1650 5150
Connection ~ 1650 5150
Wire Wire Line
	1300 4950 1750 4950
Wire Wire Line
	1300 5050 1750 5050
Wire Wire Line
	10350 1100 9900 1100
Wire Wire Line
	10350 1000 9900 1000
Wire Wire Line
	1050 4550 1250 4550
Wire Wire Line
	1550 4550 1750 4550
Wire Wire Line
	700  4350 700  4800
Wire Wire Line
	1600 6750 1600 6650
Wire Wire Line
	1450 6650 1700 6650
Wire Wire Line
	1600 6150 1600 6550
Wire Wire Line
	1600 6350 1700 6350
Wire Wire Line
	3000 6350 2700 6350
Wire Wire Line
	3000 6250 2700 6250
Wire Wire Line
	2550 950  2800 950 
Wire Wire Line
	2700 950  2700 1050
Wire Wire Line
	3100 1250 3100 1400
Wire Wire Line
	2700 1250 2700 1350
Wire Wire Line
	2700 1350 3850 1350
Connection ~ 3100 1350
Wire Wire Line
	3550 1350 3550 1250
Connection ~ 2700 950 
Connection ~ 3550 950 
Wire Wire Line
	2150 850  2150 950 
Wire Wire Line
	1850 950  2350 950 
Wire Wire Line
	5600 2300 5450 2300
Wire Wire Line
	5600 1900 5600 2300
Wire Wire Line
	5450 2200 5600 2200
Connection ~ 5600 2200
Wire Wire Line
	5450 2100 5600 2100
Connection ~ 5600 2100
Wire Wire Line
	5450 2000 5600 2000
Connection ~ 5600 2000
Wire Wire Line
	5800 2400 5450 2400
Wire Wire Line
	5800 2500 5450 2500
Wire Wire Line
	5800 2600 5450 2600
Wire Wire Line
	5800 2700 5450 2700
Wire Wire Line
	5600 3500 5450 3500
Wire Wire Line
	5600 3100 5600 3500
Wire Wire Line
	5450 3400 5600 3400
Connection ~ 5600 3400
Wire Wire Line
	5450 3300 5600 3300
Connection ~ 5600 3300
Wire Wire Line
	5450 3200 5600 3200
Connection ~ 5600 3200
Wire Wire Line
	5800 3600 5450 3600
Wire Wire Line
	5800 3700 5450 3700
Wire Wire Line
	5800 3800 5450 3800
Wire Wire Line
	5800 3900 5450 3900
Wire Wire Line
	3400 950  3800 950 
Wire Wire Line
	3800 950  3800 850 
Wire Wire Line
	7200 1000 7200 1100
Wire Wire Line
	700  4550 850  4550
Connection ~ 700  4550
Wire Wire Line
	700  4150 700  4100
Wire Wire Line
	700  4100 1650 4100
Connection ~ 1650 4100
Wire Wire Line
	1450 6250 1700 6250
Connection ~ 1600 6250
Wire Wire Line
	1600 6550 1700 6550
Connection ~ 1600 6350
Wire Wire Line
	1700 6450 1600 6450
Connection ~ 1600 6450
Wire Wire Line
	10650 2450 10650 2600
Wire Wire Line
	10750 2700 10750 2450
Wire Wire Line
	10650 2100 10650 2250
Wire Wire Line
	10650 2100 10750 2100
Wire Wire Line
	10700 2100 10700 2050
Wire Wire Line
	10750 2100 10750 2250
Connection ~ 10700 2100
Wire Wire Line
	7900 3300 7450 3300
Connection ~ 7450 3300
Wire Wire Line
	1450 6350 1450 6250
Wire Wire Line
	1450 6550 1450 6650
Connection ~ 1600 6650
$Comp
L C_Small C2
U 1 1 58290D0B
P 850 2450
F 0 "C2" H 941 2496 50  0000 L CNN
F 1 "1uF" H 941 2405 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 850 2450 50  0001 C CNN
F 3 "" H 850 2450 50  0000 C CNN
	1    850  2450
	-1   0    0    -1  
$EndComp
Connection ~ 1400 2950
$Comp
L C_Small C3
U 1 1 582913C1
P 1050 2450
F 0 "C3" H 1141 2496 50  0000 L CNN
F 1 "0.1uF" H 1141 2405 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1050 2450 50  0001 C CNN
F 3 "" H 1050 2450 50  0000 C CNN
	1    1050 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 1500 10350 1500
Text Label 10350 1500 2    60   ~ 0
IMU_INT
Wire Wire Line
	9900 2300 10350 2300
Text Label 10350 2300 2    60   ~ 0
SCK
Text Label 10350 2200 2    60   ~ 0
MISO
Text Label 10350 2100 2    60   ~ 0
MOSI
Wire Wire Line
	10350 2100 9900 2100
Wire Wire Line
	9900 2200 10350 2200
$Comp
L CONN_01X02 P2
U 1 1 58298181
P 5150 1450
F 0 "P2" H 5228 1491 50  0000 L CNN
F 1 "CONN_01X02" H 5228 1400 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 5150 1450 50  0001 C CNN
F 3 "" H 5150 1450 50  0000 C CNN
	1    5150 1450
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 58298685
P 4700 1500
F 0 "R3" V 4600 1500 50  0000 C CNN
F 1 "120" V 4700 1500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4630 1500 50  0001 C CNN
F 3 "" H 4700 1500 50  0000 C CNN
	1    4700 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 1500 4950 1500
Text Label 4250 1500 0    60   ~ 0
CANL
Wire Wire Line
	4250 1500 4550 1500
Text Label 4650 1400 0    60   ~ 0
CANH
Wire Wire Line
	4650 1400 4950 1400
NoConn ~ 7900 1000
NoConn ~ 7900 1200
NoConn ~ 7900 1800
NoConn ~ 7900 2350
NoConn ~ 7900 2450
NoConn ~ 7900 2100
NoConn ~ 7900 2800
Connection ~ 10650 2600
Connection ~ 10750 2700
$Comp
L R_Small R7
U 1 1 582A04CE
P 10750 2350
F 0 "R7" H 10809 2396 50  0000 L CNN
F 1 "2.2k" H 10809 2305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 10750 2350 50  0001 C CNN
F 3 "" H 10750 2350 50  0000 C CNN
	1    10750 2350
	1    0    0    -1  
$EndComp
$Comp
L R_Small R6
U 1 1 582A0848
P 10650 2350
F 0 "R6" H 10709 2396 50  0000 L CNN
F 1 "2.2k" H 10709 2305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 10650 2350 50  0001 C CNN
F 3 "" H 10650 2350 50  0000 C CNN
	1    10650 2350
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 582A28C7
P 3100 3100
F 0 "#PWR021" H 3100 2850 50  0001 C CNN
F 1 "GND" H 3105 2927 50  0000 C CNN
F 2 "" H 3100 3100 50  0000 C CNN
F 3 "" H 3100 3100 50  0000 C CNN
	1    3100 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 3000 3100 3000
Wire Wire Line
	3100 3000 3100 3100
Wire Wire Line
	1550 2550 1500 2550
Wire Wire Line
	1500 2550 1500 3050
Connection ~ 1500 3050
$Comp
L C_Small C4
U 1 1 582A6666
P 1400 2800
F 0 "C4" H 1491 2846 50  0000 L CNN
F 1 "0.1uF" H 1491 2755 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1400 2800 50  0001 C CNN
F 3 "" H 1400 2800 50  0000 C CNN
	1    1400 2800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1400 2700 1400 2650
Wire Wire Line
	1400 2650 1550 2650
Wire Wire Line
	1550 2950 1400 2950
Wire Wire Line
	1400 2100 1400 2400
Wire Wire Line
	1050 2350 1050 2300
$Comp
L GND #PWR022
U 1 1 582A9F61
P 1050 2900
F 0 "#PWR022" H 1050 2650 50  0001 C CNN
F 1 "GND" H 1055 2727 50  0000 C CNN
F 2 "" H 1050 2900 50  0000 C CNN
F 3 "" H 1050 2900 50  0000 C CNN
	1    1050 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 2550 1050 2900
Wire Wire Line
	850  2350 850  2200
Wire Wire Line
	850  2550 850  2700
Wire Wire Line
	850  2700 1050 2700
Connection ~ 1050 2700
Wire Wire Line
	1400 2400 1550 2400
NoConn ~ 2950 2850
NoConn ~ 2950 2750
$Comp
L +3.3V #PWR023
U 1 1 582AB000
P 3550 2400
F 0 "#PWR023" H 3550 2250 50  0001 C CNN
F 1 "+3.3V" H 3565 2573 50  0000 C CNN
F 2 "" H 3550 2400 50  0000 C CNN
F 3 "" H 3550 2400 50  0000 C CNN
	1    3550 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2600 3550 2600
Wire Wire Line
	3550 2600 3550 2400
NoConn ~ 4400 5100
NoConn ~ 9900 1200
NoConn ~ 9900 1800
NoConn ~ 9900 1900
NoConn ~ 9900 2000
NoConn ~ 9900 2400
NoConn ~ 9900 2500
NoConn ~ 9900 2800
NoConn ~ 9900 2900
NoConn ~ 9900 3000
NoConn ~ 9900 3100
NoConn ~ 9900 3200
NoConn ~ 9900 3300
$Comp
L C_Small C10
U 1 1 582B8E2B
P 7450 1600
F 0 "C10" H 7541 1646 50  0000 L CNN
F 1 "1uF" H 7541 1555 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7450 1600 50  0001 C CNN
F 3 "" H 7450 1600 50  0000 C CNN
	1    7450 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7450 1500 7450 1100
Connection ~ 7450 1100
Connection ~ 7450 3050
$Comp
L PWR_FLAG #FLG024
U 1 1 58592554
P 1850 850
F 0 "#FLG024" H 1850 945 50  0001 C CNN
F 1 "PWR_FLAG" H 1850 1074 50  0000 C CNN
F 2 "" H 1850 850 50  0000 C CNN
F 3 "" H 1850 850 50  0000 C CNN
	1    1850 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 850  1850 950 
Connection ~ 2150 950 
$Comp
L PWR_FLAG #FLG025
U 1 1 585947C7
P 3850 1250
F 0 "#FLG025" H 3850 1345 50  0001 C CNN
F 1 "PWR_FLAG" H 3850 1474 50  0000 C CNN
F 2 "" H 3850 1250 50  0000 C CNN
F 3 "" H 3850 1250 50  0000 C CNN
	1    3850 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1350 3850 1250
Connection ~ 3550 1350
NoConn ~ 4650 1800
NoConn ~ 4650 3000
Wire Wire Line
	3550 1050 3550 950 
NoConn ~ 9900 1600
NoConn ~ 9900 1700
NoConn ~ 10350 2100
NoConn ~ 10350 2200
NoConn ~ 10350 2300
$EndSCHEMATC
