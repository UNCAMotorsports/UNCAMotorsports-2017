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
LIBS:74xgxx
LIBS:ac-dc
LIBS:actel
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos_ieee
LIBS:dc-dc
LIBS:diode
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:hc11
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:logo
LIBS:maxim
LIBS:mechanical
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:modules
LIBS:motor_drivers
LIBS:motors
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:Oscillators
LIBS:Power_Management
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:relays
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:transf
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:zetex
LIBS:Zilog
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
L G5Q-1A RL?
U 1 1 594DD57E
P 7150 2900
F 0 "RL?" H 7700 3250 50  0000 L CNN
F 1 "G5Q-1A" H 7700 3150 50  0000 L CNN
F 2 "Relays_THT:Relay_SPST-NO_OMRON-G5Q" H 7700 3050 50  0001 L CNN
F 3 "" H 7350 3500 50  0000 C CNN
	1    7150 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 594DD7EA
P 3900 2750
F 0 "#PWR?" H 3900 2500 50  0001 C CNN
F 1 "GND" H 3900 2600 50  0000 C CNN
F 2 "" H 3900 2750 50  0001 C CNN
F 3 "" H 3900 2750 50  0001 C CNN
	1    3900 2750
	1    0    0    -1  
$EndComp
$Comp
L Polyfuse F?
U 1 1 594DD8BA
P 4300 2650
F 0 "F?" V 4200 2650 50  0000 C CNN
F 1 "Polyfuse" V 4400 2650 50  0000 C CNN
F 2 "" H 4350 2450 50  0001 L CNN
F 3 "" H 4300 2650 50  0001 C CNN
	1    4300 2650
	0    1    1    0   
$EndComp
$Comp
L AP1117 U?
U 1 1 594DD924
P 4950 2650
F 0 "U?" H 5050 2400 50  0000 C CNN
F 1 "AP1117" H 4950 2900 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 4950 2300 50  0001 C CNN
F 3 "" H 5050 2400 50  0001 C CNN
	1    4950 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2650 4650 2650
$Comp
L C C?
U 1 1 594DD953
P 5450 2800
F 0 "C?" H 5475 2900 50  0000 L CNN
F 1 "1u" H 5475 2700 50  0000 L CNN
F 2 "" H 5488 2650 50  0001 C CNN
F 3 "" H 5450 2800 50  0001 C CNN
	1    5450 2800
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 594DD978
P 4550 2800
F 0 "C?" H 4575 2900 50  0000 L CNN
F 1 "1u" H 4575 2700 50  0000 L CNN
F 2 "" H 4588 2650 50  0001 C CNN
F 3 "" H 4550 2800 50  0001 C CNN
	1    4550 2800
	1    0    0    -1  
$EndComp
Connection ~ 4550 2650
Wire Wire Line
	4550 2950 5450 2950
Connection ~ 4950 2950
Wire Wire Line
	5250 2650 5800 2650
$Comp
L GND #PWR?
U 1 1 594DD9C9
P 4950 2950
F 0 "#PWR?" H 4950 2700 50  0001 C CNN
F 1 "GND" H 4950 2800 50  0000 C CNN
F 2 "" H 4950 2950 50  0001 C CNN
F 3 "" H 4950 2950 50  0001 C CNN
	1    4950 2950
	1    0    0    -1  
$EndComp
Connection ~ 5450 2650
$Comp
L +5V #PWR?
U 1 1 594DDA3D
P 5800 2650
F 0 "#PWR?" H 5800 2500 50  0001 C CNN
F 1 "+5V" H 5800 2790 50  0000 C CNN
F 2 "" H 5800 2650 50  0001 C CNN
F 3 "" H 5800 2650 50  0001 C CNN
	1    5800 2650
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR?
U 1 1 594DDA5D
P 4050 2650
F 0 "#PWR?" H 4050 2500 50  0001 C CNN
F 1 "+12V" H 4050 2790 50  0000 C CNN
F 2 "" H 4050 2650 50  0001 C CNN
F 3 "" H 4050 2650 50  0001 C CNN
	1    4050 2650
	1    0    0    -1  
$EndComp
Connection ~ 4050 2650
$Comp
L PWR_FLAG #FLG?
U 1 1 594DDA7F
P 4550 2350
F 0 "#FLG?" H 4550 2425 50  0001 C CNN
F 1 "PWR_FLAG" H 4550 2500 50  0000 C CNN
F 2 "" H 4550 2350 50  0001 C CNN
F 3 "" H 4550 2350 50  0001 C CNN
	1    4550 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2350 4550 2650
$Comp
L PWR_FLAG #FLG?
U 1 1 594DDAB0
P 5450 2350
F 0 "#FLG?" H 5450 2425 50  0001 C CNN
F 1 "PWR_FLAG" H 5450 2500 50  0000 C CNN
F 2 "" H 5450 2350 50  0001 C CNN
F 3 "" H 5450 2350 50  0001 C CNN
	1    5450 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2350 5450 2650
$Comp
L Q_NMOS_GDS Q?
U 1 1 594DDBB9
P 7050 3450
F 0 "Q?" H 7250 3500 50  0000 L CNN
F 1 "Q_NMOS_GDS" H 6550 3650 50  0000 L CNN
F 2 "" H 7250 3550 50  0001 C CNN
F 3 "" H 7050 3450 50  0001 C CNN
	1    7050 3450
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR?
U 1 1 594DDD2C
P 7150 2300
F 0 "#PWR?" H 7150 2150 50  0001 C CNN
F 1 "+12V" H 7150 2440 50  0000 C CNN
F 2 "" H 7150 2300 50  0001 C CNN
F 3 "" H 7150 2300 50  0001 C CNN
	1    7150 2300
	1    0    0    -1  
$EndComp
$Comp
L D D?
U 1 1 594DDD7B
P 6700 2650
F 0 "D?" H 6700 2750 50  0000 C CNN
F 1 "D" H 6700 2550 50  0000 C CNN
F 2 "" H 6700 2650 50  0001 C CNN
F 3 "" H 6700 2650 50  0001 C CNN
	1    6700 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 2500 6700 2350
Wire Wire Line
	6700 2350 7150 2350
Wire Wire Line
	6700 2800 6700 3000
Wire Wire Line
	6700 3000 7150 3000
Wire Wire Line
	7150 3000 7150 3250
Wire Wire Line
	7150 2300 7150 2400
Connection ~ 7150 2350
$Comp
L GND #PWR?
U 1 1 594DDE75
P 7150 3750
F 0 "#PWR?" H 7150 3500 50  0001 C CNN
F 1 "GND" H 7150 3600 50  0000 C CNN
F 2 "" H 7150 3750 50  0001 C CNN
F 3 "" H 7150 3750 50  0001 C CNN
	1    7150 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3650 7150 3750
$Comp
L D_Zener D?
U 1 1 594DDF55
P 6600 3600
F 0 "D?" H 6600 3700 50  0000 C CNN
F 1 "12V" H 6600 3500 50  0000 C CNN
F 2 "" H 6600 3600 50  0001 C CNN
F 3 "" H 6600 3600 50  0001 C CNN
	1    6600 3600
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 594DDFA6
P 6800 3600
F 0 "R?" V 6880 3600 50  0000 C CNN
F 1 "10k" V 6800 3600 50  0000 C CNN
F 2 "" V 6730 3600 50  0001 C CNN
F 3 "" H 6800 3600 50  0001 C CNN
	1    6800 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3450 6850 3450
Connection ~ 6800 3450
Wire Wire Line
	7150 3750 6600 3750
Connection ~ 6800 3750
$Comp
L R R?
U 1 1 594DE11E
P 6300 3450
F 0 "R?" V 6380 3450 50  0000 C CNN
F 1 "1k" V 6300 3450 50  0000 C CNN
F 2 "" V 6230 3450 50  0001 C CNN
F 3 "" H 6300 3450 50  0001 C CNN
	1    6300 3450
	0    1    1    0   
$EndComp
Connection ~ 6600 3450
Text Label 8350 2400 2    60   ~ 0
SHUTDOWN_IN
Text Label 8350 3000 2    60   ~ 0
SHUTDOWN_OUT
Wire Wire Line
	8350 2400 7550 2400
Wire Wire Line
	7550 3000 8350 3000
Text Label 5700 3450 0    60   ~ 0
CONTROL
Wire Wire Line
	5700 3450 6150 3450
Text Label 3500 2650 0    60   ~ 0
PWR_IN
Text Label 3500 2750 0    60   ~ 0
GND_IN
Wire Wire Line
	3500 2650 4150 2650
Wire Wire Line
	3500 2750 3900 2750
$EndSCHEMATC
