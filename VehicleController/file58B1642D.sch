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
LIBS:dc-dc
LIBS:Power_Management
LIBS:switches
LIBS:VehicleController-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L ISO1540 U13
U 1 1 58B166B2
P 5550 4450
F 0 "U13" H 5550 4887 60  0000 C CNN
F 1 "ISO1540" H 5550 4781 60  0000 C CNN
F 2 "" H 5550 4450 60  0000 C CNN
F 3 "" H 5550 4450 60  0000 C CNN
	1    5550 4450
	1    0    0    -1  
$EndComp
$Comp
L +5VA #PWR54
U 1 1 58B166C2
P 6100 4000
F 0 "#PWR54" H 6100 3850 50  0001 C CNN
F 1 "+5VA" H 6115 4173 50  0000 C CNN
F 2 "" H 6100 4000 50  0000 C CNN
F 3 "" H 6100 4000 50  0000 C CNN
	1    6100 4000
	1    0    0    -1  
$EndComp
$Comp
L R_Small R17
U 1 1 58B166C8
P 6250 4200
F 0 "R17" H 6309 4246 50  0000 L CNN
F 1 "4.7k" H 6309 4155 50  0000 L CNN
F 2 "" H 6250 4200 50  0000 C CNN
F 3 "" H 6250 4200 50  0000 C CNN
	1    6250 4200
	1    0    0    -1  
$EndComp
Text Label 7100 4400 2    60   ~ 0
SDA_ISO
Text Label 7100 4500 2    60   ~ 0
SCL_ISO
$Comp
L R_Small R18
U 1 1 58B166DB
P 6550 4200
F 0 "R18" H 6609 4246 50  0000 L CNN
F 1 "4.7k" H 6609 4155 50  0000 L CNN
F 2 "" H 6550 4200 50  0000 C CNN
F 3 "" H 6550 4200 50  0000 C CNN
	1    6550 4200
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR55
U 1 1 58B166E6
P 6100 4750
F 0 "#PWR55" H 6100 4500 50  0001 C CNN
F 1 "GNDA" H 6105 4577 50  0000 C CNN
F 2 "" H 6100 4750 50  0000 C CNN
F 3 "" H 6100 4750 50  0000 C CNN
	1    6100 4750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR49
U 1 1 58B166F7
P 5000 4750
F 0 "#PWR49" H 5000 4500 50  0001 C CNN
F 1 "GND" H 5005 4577 50  0000 C CNN
F 2 "" H 5000 4750 50  0000 C CNN
F 3 "" H 5000 4750 50  0000 C CNN
	1    5000 4750
	1    0    0    -1  
$EndComp
Text Notes 6800 1100 0    60   ~ 0
HIGH VOLTAGE
$Comp
L RI-0505S U12
U 1 1 58B16FEF
P 5550 3150
F 0 "U12" H 5550 3487 60  0000 C CNN
F 1 "RI-0505S" H 5550 3381 60  0000 C CNN
F 2 "" H 5550 3150 60  0001 C CNN
F 3 "" H 5550 3150 60  0001 C CNN
	1    5550 3150
	1    0    0    -1  
$EndComp
$Comp
L +5VA #PWR52
U 1 1 58B17364
P 6100 3000
F 0 "#PWR52" H 6100 2850 50  0001 C CNN
F 1 "+5VA" H 6115 3173 50  0000 C CNN
F 2 "" H 6100 3000 50  0000 C CNN
F 3 "" H 6100 3000 50  0000 C CNN
	1    6100 3000
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR53
U 1 1 58B173AF
P 6100 3350
F 0 "#PWR53" H 6100 3100 50  0001 C CNN
F 1 "GNDA" H 6105 3177 50  0000 C CNN
F 2 "" H 6100 3350 50  0000 C CNN
F 3 "" H 6100 3350 50  0000 C CNN
	1    6100 3350
	1    0    0    -1  
$EndComp
$Comp
L TLP785 U14
U 1 1 58B178D0
P 5550 5850
F 0 "U14" H 5550 6265 50  0000 C CNN
F 1 "TLP785" H 5550 6174 50  0000 C CNN
F 2 "DIP-4" H 5550 6083 50  0000 C CIN
F 3 "" H 5550 5850 50  0000 L CNN
	1    5550 5850
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR50
U 1 1 58B17D44
P 5950 6100
F 0 "#PWR50" H 5950 5850 50  0001 C CNN
F 1 "GNDA" H 5955 5927 50  0000 C CNN
F 2 "" H 5950 6100 50  0000 C CNN
F 3 "" H 5950 6100 50  0000 C CNN
	1    5950 6100
	1    0    0    -1  
$EndComp
$Comp
L MCP47FEBX2 U15
U 1 1 58B18194
P 9750 3850
F 0 "U15" H 9750 4337 60  0000 C CNN
F 1 "MCP47FEBX2" H 9750 4231 60  0000 C CNN
F 2 "" H 9550 4000 60  0000 C CNN
F 3 "" H 9550 4000 60  0000 C CNN
	1    9750 3850
	1    0    0    -1  
$EndComp
Text Label 8700 3750 0    60   ~ 0
SCL_ISO
Text Label 8700 3850 0    60   ~ 0
SDA_ISO
Text Label 8700 3950 0    60   ~ 0
LATCH_ISO
Text Label 10600 3650 2    60   ~ 0
DACL
Text Label 10600 3750 2    60   ~ 0
DACR
NoConn ~ 10250 4050
$Comp
L GNDA #PWR58
U 1 1 58B181A1
P 9150 4150
F 0 "#PWR58" H 9150 3900 50  0001 C CNN
F 1 "GNDA" H 9155 3977 50  0000 C CNN
F 2 "" H 9150 4150 50  0000 C CNN
F 3 "" H 9150 4150 50  0000 C CNN
	1    9150 4150
	1    0    0    -1  
$EndComp
$Comp
L +5VA #PWR57
U 1 1 58B181A7
P 9150 3550
F 0 "#PWR57" H 9150 3400 50  0001 C CNN
F 1 "+5VA" H 9165 3723 50  0000 C CNN
F 2 "" H 9150 3550 50  0000 C CNN
F 3 "" H 9150 3550 50  0000 C CNN
	1    9150 3550
	1    0    0    -1  
$EndComp
Text Label 6800 5750 2    60   ~ 0
LATCH_ISO
$Comp
L R_Small R16
U 1 1 58B18581
P 6050 5550
F 0 "R16" H 6109 5596 50  0000 L CNN
F 1 "10k" H 6109 5505 50  0000 L CNN
F 2 "" H 6050 5550 50  0000 C CNN
F 3 "" H 6050 5550 50  0000 C CNN
	1    6050 5550
	1    0    0    -1  
$EndComp
$Comp
L +5VA #PWR51
U 1 1 58B1875A
P 6050 5350
F 0 "#PWR51" H 6050 5200 50  0001 C CNN
F 1 "+5VA" H 6065 5523 50  0000 C CNN
F 2 "" H 6050 5350 50  0000 C CNN
F 3 "" H 6050 5350 50  0000 C CNN
	1    6050 5350
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q4
U 1 1 58B1899E
P 4850 6300
F 0 "Q4" H 5055 6346 50  0000 L CNN
F 1 "Q_NMOS_GDS" H 5055 6255 50  0000 L CNN
F 2 "" H 5050 6400 50  0000 C CNN
F 3 "" H 4850 6300 50  0000 C CNN
	1    4850 6300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR45
U 1 1 58B18A8E
P 4950 6800
F 0 "#PWR45" H 4950 6550 50  0001 C CNN
F 1 "GND" H 4955 6627 50  0000 C CNN
F 2 "" H 4950 6800 50  0000 C CNN
F 3 "" H 4950 6800 50  0000 C CNN
	1    4950 6800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR44
U 1 1 58B18AFA
P 4850 5650
F 0 "#PWR44" H 4850 5500 50  0001 C CNN
F 1 "+5V" H 4865 5823 50  0000 C CNN
F 2 "" H 4850 5650 50  0000 C CNN
F 3 "" H 4850 5650 50  0000 C CNN
	1    4850 5650
	1    0    0    -1  
$EndComp
$Comp
L R_Small R15
U 1 1 58B18B84
P 5100 5750
F 0 "R15" V 4904 5750 50  0000 C CNN
F 1 "220" V 4995 5750 50  0000 C CNN
F 2 "" H 5100 5750 50  0000 C CNN
F 3 "" H 5100 5750 50  0000 C CNN
	1    5100 5750
	0    1    1    0   
$EndComp
$Comp
L R_Small R13
U 1 1 58B19029
P 4550 6500
F 0 "R13" H 4491 6454 50  0000 R CNN
F 1 "10k" H 4491 6545 50  0000 R CNN
F 2 "" H 4550 6500 50  0000 C CNN
F 3 "" H 4550 6500 50  0000 C CNN
	1    4550 6500
	1    0    0    1   
$EndComp
Text HLabel 4400 4400 0    60   Input ~ 0
SDA_IN
Text HLabel 4400 4500 0    60   Input ~ 0
SCL_IN
$Comp
L GND #PWR47
U 1 1 58B1731B
P 5000 3350
F 0 "#PWR47" H 5000 3100 50  0001 C CNN
F 1 "GND" H 5005 3177 50  0000 C CNN
F 2 "" H 5000 3350 50  0000 C CNN
F 3 "" H 5000 3350 50  0000 C CNN
	1    5000 3350
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR46
U 1 1 58B172D4
P 5000 3000
F 0 "#PWR46" H 5000 2850 50  0001 C CNN
F 1 "+5V" H 5015 3173 50  0000 C CNN
F 2 "" H 5000 3000 50  0000 C CNN
F 3 "" H 5000 3000 50  0000 C CNN
	1    5000 3000
	1    0    0    -1  
$EndComp
Text HLabel 4250 6300 0    60   Input ~ 0
DAC_LATCH
$Comp
L +5V #PWR48
U 1 1 58B166EE
P 5000 4000
F 0 "#PWR48" H 5000 3850 50  0001 C CNN
F 1 "+5V" H 5015 4173 50  0000 C CNN
F 2 "" H 5000 4000 50  0000 C CNN
F 3 "" H 5000 4000 50  0000 C CNN
	1    5000 4000
	1    0    0    -1  
$EndComp
$Comp
L MX150_16 P6
U 1 1 58B93178
P 9750 2350
F 0 "P6" H 9750 2915 50  0000 C CNN
F 1 "MX150_16" H 9750 2824 50  0000 C CNN
F 2 "" H 9750 1150 50  0000 C CNN
F 3 "" H 9750 1150 50  0000 C CNN
	1    9750 2350
	-1   0    0    -1  
$EndComp
Text Label 10500 2000 2    60   ~ 0
KSI
Text Label 10500 2100 2    60   ~ 0
Mode1
Text Label 10500 2200 2    60   ~ 0
Mode2
Text Label 10500 2300 2    60   ~ 0
Fwd
Text Label 10500 2400 2    60   ~ 0
ContactorL
$Comp
L GNDA #PWR60
U 1 1 58B932D6
P 10100 2800
F 0 "#PWR60" H 10100 2550 50  0001 C CNN
F 1 "GNDA" H 10105 2627 50  0000 C CNN
F 2 "" H 10100 2800 50  0000 C CNN
F 3 "" H 10100 2800 50  0000 C CNN
	1    10100 2800
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR59
U 1 1 58B93532
P 9400 2800
F 0 "#PWR59" H 9400 2550 50  0001 C CNN
F 1 "GNDA" H 9405 2627 50  0000 C CNN
F 2 "" H 9400 2800 50  0000 C CNN
F 3 "" H 9400 2800 50  0000 C CNN
	1    9400 2800
	1    0    0    -1  
$EndComp
Text Label 10500 2600 2    60   ~ 0
DACL
Text Label 8950 2000 0    60   ~ 0
KSI
Text Label 8950 2100 0    60   ~ 0
Mode1
Text Label 8950 2200 0    60   ~ 0
Mode2
Text Label 8950 2300 0    60   ~ 0
Fwd
Text Label 8950 2400 0    60   ~ 0
ContactorR
Text Label 8950 2600 0    60   ~ 0
DACR
Text Label 8950 2500 0    60   ~ 0
CoilReturn
Text Label 10500 2500 2    60   ~ 0
CoilReturn
$Comp
L Relay_SPST U10
U 1 1 58B7D65B
P 5500 1300
F 0 "U10" V 5447 1578 60  0000 L CNN
F 1 "Relay_SPST" V 5553 1578 60  0000 L CNN
F 2 "" H 5500 1300 60  0001 C CNN
F 3 "" H 5500 1300 60  0001 C CNN
	1    5500 1300
	0    1    1    0   
$EndComp
$Comp
L +48V #PWR56
U 1 1 58B81C94
P 6500 850
F 0 "#PWR56" H 6500 700 50  0001 C CNN
F 1 "+48V" H 6515 1023 50  0000 C CNN
F 2 "" H 6500 850 50  0000 C CNN
F 3 "" H 6500 850 50  0000 C CNN
	1    6500 850 
	1    0    0    -1  
$EndComp
Text Label 6250 1600 2    60   ~ 0
ContactorR
$Comp
L Relay_SPST U11
U 1 1 58B8225E
P 5500 2050
F 0 "U11" V 5447 2328 60  0000 L CNN
F 1 "Relay_SPST" V 5553 2328 60  0000 L CNN
F 2 "" H 5500 2050 60  0001 C CNN
F 3 "" H 5500 2050 60  0001 C CNN
	1    5500 2050
	0    1    1    0   
$EndComp
Text Label 6250 2350 2    60   ~ 0
ContactorL
Text HLabel 5000 950  0    60   Input ~ 0
Shutdown_In
Text HLabel 5000 2350 0    60   Input ~ 0
Shutdown_Out
$Comp
L R_Small R12
U 1 1 58B84918
P 4550 4200
F 0 "R12" H 4609 4246 50  0000 L CNN
F 1 "4.7k" H 4609 4155 50  0000 L CNN
F 2 "" H 4550 4200 50  0000 C CNN
F 3 "" H 4550 4200 50  0000 C CNN
	1    4550 4200
	-1   0    0    -1  
$EndComp
$Comp
L R_Small R14
U 1 1 58B84B94
P 4850 4200
F 0 "R14" H 4909 4246 50  0000 L CNN
F 1 "4.7k" H 4909 4155 50  0000 L CNN
F 2 "" H 4850 4200 50  0000 C CNN
F 3 "" H 4850 4200 50  0000 C CNN
	1    4850 4200
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X02 P7
U 1 1 58B8D9FD
P 10600 900
F 0 "P7" H 10678 941 50  0000 L CNN
F 1 "CONN_01X02" H 10678 850 50  0000 L CNN
F 2 "" H 10600 900 50  0000 C CNN
F 3 "" H 10600 900 50  0000 C CNN
	1    10600 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4300 6000 4300
Wire Wire Line
	6100 4000 6100 4300
Wire Wire Line
	6100 4050 6550 4050
Wire Wire Line
	6250 4050 6250 4100
Connection ~ 6100 4050
Wire Wire Line
	6000 4400 7100 4400
Wire Wire Line
	6250 4400 6250 4300
Connection ~ 6250 4400
Wire Wire Line
	6000 4500 7100 4500
Wire Wire Line
	6550 4050 6550 4100
Connection ~ 6250 4050
Wire Wire Line
	6550 4300 6550 4500
Connection ~ 6550 4500
Wire Wire Line
	6000 4600 6100 4600
Wire Wire Line
	6100 4600 6100 4750
Wire Wire Line
	5000 4300 5100 4300
Wire Wire Line
	5000 4750 5000 4600
Wire Wire Line
	5000 4600 5100 4600
Wire Wire Line
	5000 3100 5100 3100
Wire Wire Line
	5000 3200 5100 3200
Wire Wire Line
	6100 3000 6100 3100
Wire Wire Line
	6100 3100 6000 3100
Wire Wire Line
	6000 3200 6100 3200
Wire Wire Line
	6100 3200 6100 3350
Wire Wire Line
	5850 5950 5950 5950
Wire Wire Line
	5950 5950 5950 6100
Wire Wire Line
	9150 3550 9150 3650
Wire Wire Line
	9150 3650 9250 3650
Wire Wire Line
	8700 3750 9250 3750
Wire Wire Line
	8700 3850 9250 3850
Wire Wire Line
	9250 4050 9150 4050
Wire Wire Line
	9150 4050 9150 4150
Wire Wire Line
	8700 3950 9250 3950
Wire Wire Line
	10250 3650 10600 3650
Wire Wire Line
	10250 3750 10600 3750
Wire Wire Line
	5850 5750 6800 5750
Wire Wire Line
	6050 5650 6050 5750
Connection ~ 6050 5750
Wire Wire Line
	6050 5350 6050 5450
Wire Wire Line
	4950 6100 4950 5950
Wire Wire Line
	4950 5950 5250 5950
Wire Wire Line
	4250 6300 4650 6300
Wire Wire Line
	4950 6500 4950 6800
Wire Wire Line
	4850 5650 4850 5750
Wire Wire Line
	5200 5750 5250 5750
Wire Wire Line
	4850 5750 5000 5750
Wire Wire Line
	4550 6600 4550 6700
Wire Wire Line
	4550 6700 4950 6700
Connection ~ 4950 6700
Wire Wire Line
	4550 6400 4550 6300
Connection ~ 4550 6300
Wire Wire Line
	5000 3000 5000 3100
Wire Wire Line
	5000 3350 5000 3200
Wire Wire Line
	4400 4400 5100 4400
Wire Wire Line
	4400 4500 5100 4500
Wire Wire Line
	5000 4000 5000 4300
Wire Wire Line
	10000 2000 10500 2000
Wire Wire Line
	10500 2100 10000 2100
Wire Wire Line
	10000 2200 10500 2200
Wire Wire Line
	10500 2300 10000 2300
Wire Wire Line
	10000 2400 10500 2400
Wire Wire Line
	10000 2600 10500 2600
Wire Wire Line
	10000 2700 10100 2700
Wire Wire Line
	10100 2700 10100 2800
Wire Wire Line
	9400 2800 9400 2700
Wire Wire Line
	9400 2700 9500 2700
Wire Wire Line
	8950 2000 9500 2000
Wire Wire Line
	8950 2100 9500 2100
Wire Wire Line
	8950 2300 9500 2300
Wire Wire Line
	8950 2200 9500 2200
Wire Wire Line
	8950 2400 9500 2400
Wire Wire Line
	8950 2600 9500 2600
Wire Wire Line
	9500 2500 8950 2500
Wire Wire Line
	10000 2500 10500 2500
Wire Wire Line
	5650 1500 5650 1600
Wire Wire Line
	5650 1600 6250 1600
Wire Wire Line
	6500 850  6500 1750
Wire Wire Line
	6500 1750 5650 1750
Wire Wire Line
	5650 1750 5650 1850
Wire Wire Line
	5650 1100 5650 1050
Wire Wire Line
	5650 1050 6500 1050
Connection ~ 6500 1050
Wire Wire Line
	5650 2250 5650 2350
Wire Wire Line
	5650 2350 6250 2350
Wire Wire Line
	5000 950  5400 950 
Wire Wire Line
	5400 950  5400 1100
Wire Wire Line
	5400 1500 5400 1850
Wire Wire Line
	5400 2250 5400 2350
Wire Wire Line
	5400 2350 5000 2350
Wire Wire Line
	4550 4100 4550 4050
Wire Wire Line
	4550 4050 5000 4050
Connection ~ 5000 4050
Wire Wire Line
	4550 4300 4550 4400
Connection ~ 4550 4400
Wire Wire Line
	4850 4100 4850 4050
Connection ~ 4850 4050
Wire Wire Line
	4850 4300 4850 4500
Connection ~ 4850 4500
Wire Notes Line
	5550 600  5550 7200
$Comp
L +48V #PWR61
U 1 1 58B8EA23
P 10300 750
F 0 "#PWR61" H 10300 600 50  0001 C CNN
F 1 "+48V" H 10315 923 50  0000 C CNN
F 2 "" H 10300 750 50  0000 C CNN
F 3 "" H 10300 750 50  0000 C CNN
	1    10300 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 750  10300 850 
Wire Wire Line
	10300 850  10400 850 
$Comp
L GNDA #PWR62
U 1 1 58B8EAD8
P 10300 1050
F 0 "#PWR62" H 10300 800 50  0001 C CNN
F 1 "GNDA" H 10305 877 50  0000 C CNN
F 2 "" H 10300 1050 50  0000 C CNN
F 3 "" H 10300 1050 50  0000 C CNN
	1    10300 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 1050 10300 950 
Wire Wire Line
	10300 950  10400 950 
$EndSCHEMATC
