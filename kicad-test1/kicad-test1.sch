EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "test1"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R1
U 1 1 60A06C9B
P 4850 2500
F 0 "R1" V 5057 2500 50  0000 C CNN
F 1 "1k" V 4966 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 4780 2500 50  0001 C CNN
F 3 "~" H 4850 2500 50  0001 C CNN
F 4 "R" H 4850 2500 50  0001 C CNN "Spice_Primitive"
F 5 "1k" H 4850 2500 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4850 2500 50  0001 C CNN "Spice_Netlist_Enabled"
	1    4850 2500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D1
U 1 1 60A07E0E
P 5150 2500
F 0 "D1" H 5143 2245 50  0000 C CNN
F 1 "LED" H 5143 2336 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 5150 2500 50  0001 C CNN
F 3 "~" H 5150 2500 50  0001 C CNN
F 4 "D" H 5150 2500 50  0001 C CNN "Spice_Primitive"
F 5 "LED" H 5150 2500 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5150 2500 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "led.lib" H 5150 2500 50  0001 C CNN "Spice_Lib_File"
	1    5150 2500
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR03
U 1 1 60A0873D
P 4700 2500
F 0 "#PWR03" H 4700 2350 50  0001 C CNN
F 1 "VCC" V 4715 2627 50  0000 L CNN
F 2 "" H 4700 2500 50  0001 C CNN
F 3 "" H 4700 2500 50  0001 C CNN
	1    4700 2500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 60A091CC
P 5650 2500
F 0 "#PWR04" H 5650 2250 50  0001 C CNN
F 1 "GND" V 5655 2372 50  0000 R CNN
F 2 "" H 5650 2500 50  0001 C CNN
F 3 "" H 5650 2500 50  0001 C CNN
	1    5650 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5300 2500 5650 2500
$Comp
L power:PWR_FLAG #FLG01
U 1 1 60A0A86C
P 4100 1600
F 0 "#FLG01" H 4100 1675 50  0001 C CNN
F 1 "PWR_FLAG" H 4100 1773 50  0000 C CNN
F 2 "" H 4100 1600 50  0001 C CNN
F 3 "~" H 4100 1600 50  0001 C CNN
	1    4100 1600
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 60A0AC54
P 4300 1600
F 0 "#FLG02" H 4300 1675 50  0001 C CNN
F 1 "PWR_FLAG" H 4300 1773 50  0000 C CNN
F 2 "" H 4300 1600 50  0001 C CNN
F 3 "~" H 4300 1600 50  0001 C CNN
	1    4300 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 60A0B537
P 4100 1600
F 0 "#PWR01" H 4100 1350 50  0001 C CNN
F 1 "GND" H 4105 1427 50  0000 C CNN
F 2 "" H 4100 1600 50  0001 C CNN
F 3 "" H 4100 1600 50  0001 C CNN
	1    4100 1600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR02
U 1 1 60A0BB47
P 4300 1600
F 0 "#PWR02" H 4300 1450 50  0001 C CNN
F 1 "VCC" H 4315 1773 50  0000 C CNN
F 2 "" H 4300 1600 50  0001 C CNN
F 3 "" H 4300 1600 50  0001 C CNN
	1    4300 1600
	-1   0    0    1   
$EndComp
Text Notes 4900 1800 0    50   ~ 0
This is a test
$Comp
L pspice:VSOURCE V1
U 1 1 609FF3B0
P 2750 1950
F 0 "V1" H 2978 1996 50  0000 L CNN
F 1 "5" H 2978 1905 50  0000 L CNN
F 2 "" H 2750 1950 50  0001 C CNN
F 3 "~" H 2750 1950 50  0001 C CNN
	1    2750 1950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0101
U 1 1 60A0120A
P 2750 2250
F 0 "#PWR0101" H 2750 2100 50  0001 C CNN
F 1 "VCC" H 2765 2423 50  0000 C CNN
F 2 "" H 2750 2250 50  0001 C CNN
F 3 "" H 2750 2250 50  0001 C CNN
	1    2750 2250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 60A027CE
P 2750 1650
F 0 "#PWR0102" H 2750 1400 50  0001 C CNN
F 1 "GND" H 2755 1477 50  0000 C CNN
F 2 "" H 2750 1650 50  0001 C CNN
F 3 "" H 2750 1650 50  0001 C CNN
	1    2750 1650
	-1   0    0    1   
$EndComp
Text Notes 4850 1200 0    50   ~ 0
.tran 1u 1m
$EndSCHEMATC
