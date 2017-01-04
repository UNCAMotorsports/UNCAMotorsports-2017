EESchema Schematic File Version 2
LIBS:UNCAMotorsports
LIBS:Common-Parts-Library-CPL
LIBS:relays
LIBS:SystemBlocks
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
LIBS:TSAL-cache
EELAYER 26 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Tractive System Active Light"
Date "2016-06-09"
Rev "1"
Comp "UNCA Motorsports"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R_Small R2
U 1 1 575A314D
P 4100 4750
F 0 "R2" H 4130 4770 50  0000 L CNN
F 1 "130k" H 4130 4710 50  0000 L CNN
F 2 "Tinkercad:0805" H 4100 4750 50  0001 C CNN
F 3 "" H 4100 4750 50  0000 C CNN
	1    4100 4750
	1    0    0    -1  
$EndComp
$Comp
L R_Small R1
U 1 1 575A3212
P 4100 4200
F 0 "R1" H 4130 4220 50  0000 L CNN
F 1 "500k" H 4130 4160 50  0000 L CNN
F 2 "Tinkercad:0805" H 4100 4200 50  0001 C CNN
F 3 "" H 4100 4200 50  0000 C CNN
	1    4100 4200
	-1   0    0    -1  
$EndComp
$Comp
L TL431 U2
U 1 1 575A710C
P 4700 4450
F 0 "U2" H 4600 4200 60  0000 C CNN
F 1 "TL431" H 4900 4700 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4700 4400 60  0001 C CNN
F 3 "" H 4700 4400 60  0000 C CNN
	1    4700 4450
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X02 P2
U 1 1 575ACF96
P 9750 3550
F 0 "P2" H 9750 3700 50  0000 C CNN
F 1 "TSAL" V 9850 3550 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_PT-3.5mm_2pol" H 9750 3550 50  0001 C CNN
F 3 "" H 9750 3550 50  0000 C CNN
	1    9750 3550
	-1   0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 575F4B1B
P 3750 4750
F 0 "C3" H 3760 4820 50  0000 L CNN
F 1 "C_Small" H 3760 4670 50  0000 L CNN
F 2 "Tinkercad:0805" H 3750 4750 50  0001 C CNN
F 3 "" H 3750 4750 50  0000 C CNN
	1    3750 4750
	1    0    0    -1  
$EndComp
$Comp
L BTS6133D U6
U 1 1 5764F002
P 9350 2900
F 0 "U6" H 9150 3150 60  0000 C CNN
F 1 "BTS6133D" H 9400 2650 60  0000 C CNN
F 2 "Wetmelon:TO-252-5" H 9500 3100 60  0001 C CNN
F 3 "" H 9500 3100 60  0000 C CNN
	1    9350 2900
	1    0    0    -1  
$EndComp
$Comp
L R_Small R10
U 1 1 57651478
P 8800 3250
F 0 "R10" H 8830 3270 50  0000 L CNN
F 1 "1k" H 8830 3210 50  0000 L CNN
F 2 "Tinkercad:0805" H 8800 3250 50  0001 C CNN
F 3 "" H 8800 3250 50  0000 C CNN
	1    8800 3250
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR01
U 1 1 5765272C
P 8800 2550
F 0 "#PWR01" H 8800 2400 50  0001 C CNN
F 1 "+12V" H 8800 2690 50  0000 C CNN
F 2 "" H 8800 2550 50  0000 C CNN
F 3 "" H 8800 2550 50  0000 C CNN
	1    8800 2550
	-1   0    0    -1  
$EndComp
$Comp
L R_Small R4
U 1 1 5765DA27
P 5100 2550
F 0 "R4" H 5130 2570 50  0000 L CNN
F 1 "100k" H 5130 2510 50  0000 L CNN
F 2 "Tinkercad:0805" H 5100 2550 50  0001 C CNN
F 3 "" H 5100 2550 50  0000 C CNN
	1    5100 2550
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR02
U 1 1 5765F5DB
P 10200 5050
F 0 "#PWR02" H 10200 4800 50  0001 C CNN
F 1 "GND" H 10200 4900 50  0000 C CNN
F 2 "" H 10200 5050 50  0000 C CNN
F 3 "" H 10200 5050 50  0000 C CNN
	1    10200 5050
	1    0    0    -1  
$EndComp
$Comp
L R_Small R6
U 1 1 5766124A
P 5700 3950
F 0 "R6" H 5730 3970 50  0000 L CNN
F 1 "10k" H 5730 3910 50  0000 L CNN
F 2 "Tinkercad:0805" H 5700 3950 50  0001 C CNN
F 3 "" H 5700 3950 50  0000 C CNN
	1    5700 3950
	-1   0    0    -1  
$EndComp
$Comp
L C_Small C6
U 1 1 576631C9
P 7400 4550
F 0 "C6" H 7410 4620 50  0000 L CNN
F 1 "1uF" H 7410 4470 50  0000 L CNN
F 2 "Tinkercad:0805" H 7400 4550 50  0001 C CNN
F 3 "" H 7400 4550 50  0000 C CNN
	1    7400 4550
	1    0    0    -1  
$EndComp
$Comp
L R_Small R7
U 1 1 576635E7
P 7400 4000
F 0 "R7" H 7430 4020 50  0000 L CNN
F 1 "220k" H 7430 3960 50  0000 L CNN
F 2 "Tinkercad:0805" H 7400 4000 50  0001 C CNN
F 3 "" H 7400 4000 50  0000 C CNN
	1    7400 4000
	1    0    0    -1  
$EndComp
$Comp
L C_Small C4
U 1 1 57663C20
P 5900 4300
F 0 "C4" H 5910 4370 50  0000 L CNN
F 1 "C_100nF_50V" H 5910 4220 50  0000 L CNN
F 2 "Tinkercad:0805" H 5900 4300 50  0001 C CNN
F 3 "" H 5900 4300 50  0000 C CNN
	1    5900 4300
	1    0    0    -1  
$EndComp
$Comp
L R_Small R9
U 1 1 57664DD7
P 8650 2900
F 0 "R9" H 8680 2920 50  0000 L CNN
F 1 "1k" H 8680 2860 50  0000 L CNN
F 2 "Tinkercad:0805" H 8650 2900 50  0001 C CNN
F 3 "" H 8650 2900 50  0000 C CNN
	1    8650 2900
	0    1    1    0   
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 5765B923
P 8350 4050
F 0 "SW2" H 8500 4160 50  0000 C CNN
F 1 "SW_PUSH" H 8350 3970 50  0000 C CNN
F 2 "Wetmelon:B3U-1100P" H 8350 4050 50  0001 C CNN
F 3 "" H 8350 4050 50  0000 C CNN
	1    8350 4050
	0    1    1    0   
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 5765BED8
P 5100 3450
F 0 "SW1" H 5250 3560 50  0000 C CNN
F 1 "SW_PUSH" H 5100 3370 50  0000 C CNN
F 2 "Wetmelon:B3U-1100P" H 5100 3450 50  0001 C CNN
F 3 "" H 5100 3450 50  0000 C CNN
	1    5100 3450
	0    1    1    0   
$EndComp
$Comp
L CONN_01X02 P4
U 1 1 5766F536
P 5300 4350
F 0 "P4" H 5300 4500 50  0000 C CNN
F 1 "ACC_LED" V 5400 4350 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_PT-3.5mm_2pol" H 5300 4350 50  0001 C CNN
F 3 "" H 5300 4350 50  0000 C CNN
	1    5300 4350
	-1   0    0    -1  
$EndComp
$Comp
L R_Small R5
U 1 1 57671201
P 5500 3900
F 0 "R5" H 5530 3920 50  0000 L CNN
F 1 "1k" H 5530 3860 50  0000 L CNN
F 2 "Tinkercad:0805" H 5500 3900 50  0001 C CNN
F 3 "" H 5500 3900 50  0000 C CNN
	1    5500 3900
	-1   0    0    -1  
$EndComp
$Comp
L R_Small R8
U 1 1 57676579
P 7600 3300
F 0 "R8" H 7630 3320 50  0000 L CNN
F 1 "1k" H 7630 3260 50  0000 L CNN
F 2 "Tinkercad:0805" H 7600 3300 50  0001 C CNN
F 3 "" H 7600 3300 50  0000 C CNN
	1    7600 3300
	0    1    -1   0   
$EndComp
$Comp
L Q_PMOS_GSD Q1
U 1 1 576A2167
P 5600 2900
F 0 "Q1" H 5850 2800 50  0000 R CNN
F 1 "BSS84" H 6000 2900 50  0000 R CNN
F 2 "Tinkercad:SOT23-3" H 5800 3000 50  0001 C CNN
F 3 "" H 5600 2900 50  0000 C CNN
	1    5600 2900
	1    0    0    1   
$EndComp
NoConn ~ 6950 3400
$Comp
L Q_NMOS_GSD Q2
U 1 1 576A834C
P 8000 3300
F 0 "Q2" H 8300 3350 50  0000 R CNN
F 1 "BSS138" H 8450 3250 50  0000 R CNN
F 2 "Tinkercad:SOT23-3" H 8200 3400 50  0001 C CNN
F 3 "" H 8000 3300 50  0000 C CNN
	1    8000 3300
	1    0    0    -1  
$EndComp
Text Label 9800 2800 0    60   ~ 0
LIGHT
Text Label 6900 3000 0    60   ~ 0
TRIGGER
Text Label 5750 3500 0    60   ~ 0
555_RES
Text Label 5500 4200 1    60   ~ 0
LED
$Comp
L CONN_01X02 P1
U 1 1 575A1492
P 1100 3250
F 0 "P1" H 1100 3400 50  0000 C CNN
F 1 "TS_VCC" V 1200 3250 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_PT-3.5mm_2pol" H 1100 3250 50  0001 C CNN
F 3 "" H 1100 3250 50  0000 C CNN
	1    1100 3250
	-1   0    0    1   
$EndComp
$Comp
L NE555 U4
U 1 1 586858A5
P 6550 3400
F 0 "U4" H 6700 3650 50  0000 C CNN
F 1 "NE555" H 6300 3650 50  0000 C CNN
F 2 "" H 6550 3400 50  0000 C CNN
F 3 "" H 6550 3400 50  0000 C CNN
	1    6550 3400
	1    0    0    -1  
$EndComp
Text Label 3700 4000 0    60   ~ 0
V_SENSE
$Comp
L V7812W-500 U1
U 1 1 58688F32
P 2350 2950
F 0 "U1" H 2350 3265 50  0000 C CNN
F 1 "V7812W-500" H 2350 3174 50  0000 C CNN
F 2 "" H 2350 2950 50  0000 C CNN
F 3 "" H 2350 2950 50  0000 C CNN
	1    2350 2950
	1    0    0    -1  
$EndComp
$Comp
L AP1117 U3
U 1 1 58689294
P 3400 3350
F 0 "U3" H 3400 3717 50  0000 C CNN
F 1 "AP1117" H 3400 3626 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 3400 3000 50  0001 C CNN
F 3 "" H 3500 3100 50  0000 C CNN
	1    3400 3350
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 5868A562
P 3850 3600
F 0 "C2" H 3860 3670 50  0000 L CNN
F 1 ".1uF" H 3860 3520 50  0000 L CNN
F 2 "Tinkercad:0805" H 3850 3600 50  0001 C CNN
F 3 "" H 3850 3600 50  0000 C CNN
	1    3850 3600
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR03
U 1 1 5868B7CE
P 2950 2700
F 0 "#PWR03" H 2950 2550 50  0001 C CNN
F 1 "+12V" H 2950 2840 50  0000 C CNN
F 2 "" H 2950 2700 50  0000 C CNN
F 3 "" H 2950 2700 50  0000 C CNN
	1    2950 2700
	-1   0    0    -1  
$EndComp
$Comp
L +48V #PWR04
U 1 1 5868F5B1
P 1400 2700
F 0 "#PWR04" H 1400 2550 50  0001 C CNN
F 1 "+48V" H 1415 2873 50  0000 C CNN
F 2 "" H 1400 2700 50  0000 C CNN
F 3 "" H 1400 2700 50  0000 C CNN
	1    1400 2700
	1    0    0    -1  
$EndComp
$Comp
L D D1
U 1 1 5869031C
P 1700 2900
F 0 "D1" H 1700 2684 50  0000 C CNN
F 1 "D" H 1700 2775 50  0000 C CNN
F 2 "" H 1700 2900 50  0000 C CNN
F 3 "" H 1700 2900 50  0000 C CNN
	1    1700 2900
	-1   0    0    1   
$EndComp
$Comp
L C_Small C1
U 1 1 586905E1
P 1900 3200
F 0 "C1" H 1910 3270 50  0000 L CNN
F 1 "10uF" H 1910 3120 50  0000 L CNN
F 2 "Tinkercad:0805" H 1900 3200 50  0001 C CNN
F 3 "" H 1900 3200 50  0000 C CNN
	1    1900 3200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3750 4450 4350 4450
Wire Wire Line
	4100 4300 4100 4650
Connection ~ 4100 4450
Wire Wire Line
	4700 4950 4700 4750
Wire Wire Line
	4100 4950 4100 4850
Wire Wire Line
	4100 4000 4100 4100
Wire Wire Line
	10050 2800 10050 3500
Wire Wire Line
	10050 3500 9950 3500
Wire Wire Line
	3750 4650 3750 4450
Wire Wire Line
	3750 4950 3750 4850
Wire Wire Line
	8950 3000 8800 3000
Wire Wire Line
	8800 3000 8800 3150
Wire Wire Line
	8800 2550 8800 2800
Wire Wire Line
	8800 2800 8950 2800
Wire Wire Line
	9750 2800 10050 2800
Wire Wire Line
	9750 2900 10050 2900
Connection ~ 10050 2900
Wire Wire Line
	8950 2900 8750 2900
Wire Wire Line
	4900 3350 4900 2550
Wire Wire Line
	3700 3350 4150 3350
Wire Wire Line
	4450 3350 4900 3350
Wire Wire Line
	5400 2900 4900 2900
Wire Wire Line
	5200 2550 6550 2550
Wire Wire Line
	5700 2550 5700 2700
Wire Wire Line
	4900 2550 5000 2550
Connection ~ 4900 2900
Wire Wire Line
	5700 3500 6150 3500
Wire Wire Line
	5700 3100 5700 3850
Wire Wire Line
	1400 4950 10200 4950
Connection ~ 5700 2550
Connection ~ 5700 3500
Wire Wire Line
	5700 4050 5700 4950
Connection ~ 5700 4950
Wire Wire Line
	6550 3700 6550 4950
Connection ~ 6550 4950
Wire Wire Line
	6550 2350 6550 3100
Connection ~ 6550 2550
Wire Wire Line
	5900 3300 6150 3300
Wire Wire Line
	5900 3300 5900 3000
Wire Wire Line
	5900 3000 7250 3000
Wire Wire Line
	7250 3000 7250 4300
Wire Wire Line
	6950 3500 7250 3500
Wire Wire Line
	7400 4100 7400 4450
Wire Wire Line
	7400 4650 7400 4950
Connection ~ 7250 3500
Wire Wire Line
	7250 4300 7400 4300
Connection ~ 7400 4300
Connection ~ 7400 4950
Wire Wire Line
	5900 3400 5900 4200
Wire Wire Line
	5900 4400 5900 4950
Connection ~ 5900 4950
Wire Wire Line
	6950 3300 7500 3300
Wire Wire Line
	7400 3300 7400 3900
Connection ~ 7400 3300
Wire Wire Line
	8100 2900 8550 2900
Wire Wire Line
	8100 2900 8100 3100
Wire Wire Line
	8800 3350 8800 4950
Connection ~ 8800 4950
Wire Wire Line
	8100 3500 8100 4950
Connection ~ 8100 4950
Wire Wire Line
	9950 3600 10050 3600
Wire Wire Line
	8350 3750 8350 2900
Connection ~ 8350 2900
Wire Wire Line
	8350 4350 8350 4950
Connection ~ 8350 4950
Wire Wire Line
	5100 3750 5100 4950
Connection ~ 5100 4950
Wire Wire Line
	5100 3150 5100 3100
Wire Wire Line
	5100 3100 4900 3100
Connection ~ 4900 3100
Wire Wire Line
	5500 3300 5700 3300
Connection ~ 5700 3300
Wire Wire Line
	5500 4400 5500 4950
Connection ~ 5500 4950
Wire Wire Line
	5500 3800 5500 3300
Wire Wire Line
	7700 3300 7800 3300
Wire Wire Line
	5500 4300 5500 4000
Wire Wire Line
	5900 3400 6150 3400
Wire Wire Line
	4700 3350 4700 4150
Connection ~ 4700 4950
Connection ~ 4100 4950
Wire Wire Line
	4100 4000 3700 4000
Connection ~ 4700 3350
Wire Wire Line
	3400 3650 3400 4950
Connection ~ 3750 4950
Wire Wire Line
	3850 3700 3850 3800
Wire Wire Line
	3850 3800 3400 3800
Connection ~ 3400 3800
Wire Wire Line
	3850 3350 3850 3500
Connection ~ 3850 3350
Wire Wire Line
	2950 3350 3100 3350
Connection ~ 3400 4950
Wire Wire Line
	2750 2900 2950 2900
Connection ~ 2950 2900
Wire Wire Line
	2350 3200 2350 4950
Wire Wire Line
	10050 3600 10050 4950
Wire Wire Line
	10200 4950 10200 5050
Connection ~ 10050 4950
Wire Wire Line
	1400 3200 1300 3200
Wire Wire Line
	1400 2700 1400 3200
Connection ~ 1400 2900
Wire Wire Line
	1400 2900 1550 2900
Wire Wire Line
	1850 2900 1950 2900
Wire Wire Line
	1900 3100 1900 2900
Connection ~ 1900 2900
Wire Wire Line
	1900 3300 1900 4950
Connection ~ 2350 4950
Wire Wire Line
	2950 2700 2950 3350
$Comp
L +5V #PWR05
U 1 1 58693C0C
P 6550 2350
F 0 "#PWR05" H 6550 2200 50  0001 C CNN
F 1 "+5V" H 6565 2523 50  0000 C CNN
F 2 "" H 6550 2350 50  0000 C CNN
F 3 "" H 6550 2350 50  0000 C CNN
	1    6550 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 3300 1400 3300
Wire Wire Line
	1400 3300 1400 4950
Connection ~ 1900 4950
$Comp
L R R3
U 1 1 586B0DF5
P 4300 3350
F 0 "R3" V 4093 3350 50  0000 C CNN
F 1 "10k" V 4184 3350 50  0000 C CNN
F 2 "" V 4230 3350 50  0000 C CNN
F 3 "" H 4300 3350 50  0000 C CNN
	1    4300 3350
	0    1    1    0   
$EndComp
Text Label 3900 3350 0    60   ~ 0
+5V
$EndSCHEMATC