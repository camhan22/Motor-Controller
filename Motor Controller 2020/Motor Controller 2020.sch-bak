EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Motor Controller"
Date ""
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Transistor_FET:IRF3205 Q7
U 1 1 609957AD
P 6300 1100
F 0 "Q7" H 6505 1146 50  0000 L CNN
F 1 "IRF1404" H 6505 1055 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-263-3_TabPin2" H 6300 1100 50  0001 C CIN
F 3 "https://www.infineon.com/dgdl/Infineon-IRF40DM229-DS-v02_00-EN.pdf?fileId=5546d462557e6e890155a15c899160ea" H 6300 1100 50  0001 L CNN
F 4 "M" H 6300 1100 50  0001 C CNN "Spice_Primitive"
F 5 "IRF1404" H 6300 1100 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6300 1100 50  0001 C CNN "Spice_Netlist_Enabled"
	1    6300 1100
	-1   0    0    -1  
$EndComp
$Comp
L power:+12V #PWR02
U 1 1 609A3C83
P 1050 800
F 0 "#PWR02" H 1050 650 50  0001 C CNN
F 1 "+12V" H 1065 973 50  0000 C CNN
F 2 "" H 1050 800 50  0001 C CNN
F 3 "" H 1050 800 50  0001 C CNN
	1    1050 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 609A4234
P 1050 1050
F 0 "#PWR03" H 1050 800 50  0001 C CNN
F 1 "GND" H 1055 877 50  0000 C CNN
F 2 "" H 1050 1050 50  0001 C CNN
F 3 "" H 1050 1050 50  0001 C CNN
	1    1050 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  900  1050 900 
Wire Wire Line
	1050 900  1050 800 
Wire Wire Line
	800  1000 1050 1000
Wire Wire Line
	1050 1000 1050 1050
Text GLabel 10000 800  0    39   Input ~ 0
MOTOR+
Text GLabel 10000 900  0    39   Input ~ 0
MOTOR-
Wire Wire Line
	10000 800  10100 800 
Wire Wire Line
	10000 900  10100 900 
$Comp
L Regulator_Linear:L7805 U1
U 1 1 609AEEA5
P 1100 1700
F 0 "U1" H 1100 1942 50  0000 C CNN
F 1 "L7805" H 1100 1851 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 1125 1550 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 1100 1650 50  0001 C CNN
	1    1100 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR01
U 1 1 609B1DFF
P 600 1650
F 0 "#PWR01" H 600 1500 50  0001 C CNN
F 1 "+12V" H 615 1823 50  0000 C CNN
F 2 "" H 600 1650 50  0001 C CNN
F 3 "" H 600 1650 50  0001 C CNN
	1    600  1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 609B217E
P 1100 2300
F 0 "#PWR04" H 1100 2050 50  0001 C CNN
F 1 "GND" H 1105 2127 50  0000 C CNN
F 2 "" H 1100 2300 50  0001 C CNN
F 3 "" H 1100 2300 50  0001 C CNN
	1    1100 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  1700 700  1700
Wire Wire Line
	700  1700 700  1850
Wire Wire Line
	600  1650 600  1700
Wire Wire Line
	600  1700 700  1700
Connection ~ 700  1700
Wire Wire Line
	1500 1700 1400 1700
Wire Wire Line
	1500 2200 1100 2200
Wire Wire Line
	1100 2200 1100 2300
Wire Wire Line
	700  2200 1100 2200
Connection ~ 1100 2200
Wire Wire Line
	1500 1850 1500 1700
Wire Wire Line
	1500 2150 1500 2200
Wire Wire Line
	700  2150 700  2200
$Comp
L Device:C C1
U 1 1 609B5D22
P 700 2000
F 0 "C1" H 815 2046 50  0000 L CNN
F 1 "0.33uF" H 815 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_1812_4532Metric_Pad1.57x3.40mm_HandSolder" H 738 1850 50  0001 C CNN
F 3 "~" H 700 2000 50  0001 C CNN
	1    700  2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 609B68BD
P 1500 2000
F 0 "C2" H 1615 2046 50  0000 L CNN
F 1 "0.1uF" H 1615 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_1812_4532Metric_Pad1.57x3.40mm_HandSolder" H 1538 1850 50  0001 C CNN
F 3 "~" H 1500 2000 50  0001 C CNN
	1    1500 2000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 609B6DB1
P 1600 1650
F 0 "#PWR05" H 1600 1500 50  0001 C CNN
F 1 "+5V" H 1615 1823 50  0000 C CNN
F 2 "" H 1600 1650 50  0001 C CNN
F 3 "" H 1600 1650 50  0001 C CNN
	1    1600 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1650 1600 1700
Wire Wire Line
	1600 1700 1500 1700
Connection ~ 1500 1700
$Comp
L power:+12V #PWR06
U 1 1 609B9E0E
P 5500 750
F 0 "#PWR06" H 5500 600 50  0001 C CNN
F 1 "+12V" H 5515 923 50  0000 C CNN
F 2 "" H 5500 750 50  0001 C CNN
F 3 "" H 5500 750 50  0001 C CNN
	1    5500 750 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 609BA856
P 5500 2200
F 0 "#PWR07" H 5500 1950 50  0001 C CNN
F 1 "GND" H 5505 2027 50  0000 C CNN
F 2 "" H 5500 2200 50  0001 C CNN
F 3 "" H 5500 2200 50  0001 C CNN
	1    5500 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 750  5500 850 
Wire Wire Line
	5500 850  6200 850 
Wire Wire Line
	6200 850  6200 900 
Wire Wire Line
	5500 850  4850 850 
Wire Wire Line
	4850 850  4850 900 
Connection ~ 5500 850 
Wire Wire Line
	6200 2100 6200 2150
Wire Wire Line
	6200 2150 5500 2150
Wire Wire Line
	5500 2150 5500 2200
Connection ~ 6200 2150
Wire Wire Line
	6950 2100 6950 2150
Wire Wire Line
	4850 2100 4850 2150
Wire Wire Line
	4850 2150 5500 2150
Connection ~ 5500 2150
Connection ~ 4850 2150
Wire Wire Line
	6200 1300 6200 1500
Wire Wire Line
	6950 1300 6950 1500
Wire Wire Line
	4850 1300 4850 1500
Wire Wire Line
	4100 1300 4100 1500
Connection ~ 4850 1500
Wire Wire Line
	4850 1500 4850 1700
Connection ~ 4100 1500
Wire Wire Line
	4100 1500 4100 1700
Connection ~ 6200 1500
Wire Wire Line
	6200 1500 6200 1700
Connection ~ 6950 1500
Wire Wire Line
	6950 1500 6950 1700
Text GLabel 4900 1500 2    39   Input ~ 0
MOTOR+
Text GLabel 6150 1500 0    39   Input ~ 0
MOTOR-
Wire Wire Line
	4550 1100 4550 650 
Wire Wire Line
	3600 650  3600 1100
Wire Wire Line
	3600 1100 3800 1100
Wire Wire Line
	6500 1100 6500 650 
Wire Wire Line
	7500 650  7500 1100
Wire Wire Line
	7500 1100 7250 1100
Wire Wire Line
	4550 1900 4550 2350
Wire Wire Line
	6500 1900 6500 2350
Wire Wire Line
	7500 2350 7500 1900
Wire Wire Line
	7500 1900 7250 1900
Text GLabel 8100 650  2    39   Input ~ 0
GHB
Text GLabel 8100 2350 2    39   Input ~ 0
GLB
Text GLabel 3000 2350 0    39   Input ~ 0
GLA
Text GLabel 3000 650  0    39   Input ~ 0
GHA
Wire Wire Line
	7700 650  7500 650 
Connection ~ 7500 650 
Wire Wire Line
	7700 2350 7500 2350
Connection ~ 7500 2350
Connection ~ 3600 650 
$Comp
L Device:CP C9
U 1 1 60B9C6BC
P 1300 950
F 0 "C9" H 1418 996 50  0000 L CNN
F 1 "4700uF" H 1418 905 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_18x17.5" H 1338 800 50  0001 C CNN
F 3 "~" H 1300 950 50  0001 C CNN
	1    1300 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 800  1150 800 
Wire Wire Line
	1150 800  1150 900 
Wire Wire Line
	1150 900  1050 900 
Connection ~ 1050 900 
Wire Wire Line
	1300 1100 1150 1100
Wire Wire Line
	1150 1100 1150 1000
Wire Wire Line
	1150 1000 1050 1000
Connection ~ 1050 1000
$Comp
L Motor-Controller-2020-rescue:Attiny4313-Created_Components U3
U 1 1 60BC11AB
P 2450 4200
F 0 "U3" H 2450 4000 39  0000 C CNN
F 1 "Attiny4313" H 2450 4100 39  0000 C CNN
F 2 "Package_DFN_QFN:VQFN-20-1EP_3x3mm_P0.4mm_EP1.7x1.7mm_ThermalVias" H 2450 4200 39  0001 C CNN
F 3 "" H 2450 4200 39  0001 C CNN
	1    2450 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 60BC2B0F
P 2050 3550
F 0 "C11" V 2100 3700 50  0000 C CNN
F 1 "0.1uF" V 2211 3550 50  0000 C CNN
F 2 "Capacitor_SMD:C_1812_4532Metric_Pad1.57x3.40mm_HandSolder" H 2088 3400 50  0001 C CNN
F 3 "~" H 2050 3550 50  0001 C CNN
	1    2050 3550
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 60BC4BAD
P 2350 3300
F 0 "#PWR013" H 2350 3150 50  0001 C CNN
F 1 "+5V" H 2350 3450 50  0000 C CNN
F 2 "" H 2350 3300 50  0001 C CNN
F 3 "" H 2350 3300 50  0001 C CNN
	1    2350 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 60BC4FE1
P 1800 3600
F 0 "#PWR012" H 1800 3350 50  0001 C CNN
F 1 "GND" H 1805 3427 50  0000 C CNN
F 2 "" H 1800 3600 50  0001 C CNN
F 3 "" H 1800 3600 50  0001 C CNN
	1    1800 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3550 2350 3550
Connection ~ 2350 3550
Wire Wire Line
	2350 3550 2350 3750
Wire Wire Line
	1900 3550 1800 3550
Wire Wire Line
	1800 3550 1800 3600
Wire Wire Line
	3100 4850 3000 4850
Text Notes 3350 5000 0    39   ~ 0
This pin will detect that the driver went into a fault mode \nand will relay that message to the main controller by \nI2C about the error.\nIt is held high by the input pullup resistor
$Comp
L power:GND #PWR014
U 1 1 60BF2F84
P 2450 5250
F 0 "#PWR014" H 2450 5000 50  0001 C CNN
F 1 "GND" H 2455 5077 50  0000 C CNN
F 2 "" H 2450 5250 50  0001 C CNN
F 3 "" H 2450 5250 50  0001 C CNN
	1    2450 5250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J1
U 1 1 60C053EA
P 600 900
F 0 "J1" H 600 700 50  0000 C CNN
F 1 "Batt+" H 600 800 50  0000 C CNN
F 2 "TerminalBlock_Wuerth:Wuerth_REDCUBE-THR_WP-THRBU_74650195_THR" H 600 900 50  0001 C CNN
F 3 "~" H 600 900 50  0001 C CNN
	1    600  900 
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 60C05DF1
P 600 1000
F 0 "J2" H 600 1200 50  0000 C CNN
F 1 "Batt-" H 600 1100 50  0000 C CNN
F 2 "TerminalBlock_Wuerth:Wuerth_REDCUBE-THR_WP-THRBU_74650195_THR" H 600 1000 50  0001 C CNN
F 3 "~" H 600 1000 50  0001 C CNN
	1    600  1000
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J5
U 1 1 60C083CD
P 10300 900
F 0 "J5" H 10300 700 50  0000 C CNN
F 1 "Motor-" H 10200 800 50  0000 C CNN
F 2 "TerminalBlock_Wuerth:Wuerth_REDCUBE-THR_WP-THRBU_74650195_THR" H 10300 900 50  0001 C CNN
F 3 "~" H 10300 900 50  0001 C CNN
	1    10300 900 
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 60C083D3
P 10300 800
F 0 "J4" H 10300 1000 50  0000 C CNN
F 1 "Motor+" H 10200 900 50  0000 C CNN
F 2 "TerminalBlock_Wuerth:Wuerth_REDCUBE-THR_WP-THRBU_74650195_THR" H 10300 800 50  0001 C CNN
F 3 "~" H 10300 800 50  0001 C CNN
	1    10300 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 60D499DC
P 1050 2850
F 0 "#PWR016" H 1050 2600 50  0001 C CNN
F 1 "GND" H 1055 2677 50  0000 C CNN
F 2 "" H 1050 2850 50  0001 C CNN
F 3 "" H 1050 2850 50  0001 C CNN
	1    1050 2850
	-1   0    0    1   
$EndComp
Text GLabel 1050 3000 2    39   Input ~ 0
SDA_MOSI
Wire Wire Line
	1050 3200 950  3200
Wire Wire Line
	1050 3000 950  3000
Wire Wire Line
	1050 2850 1050 2900
Wire Wire Line
	1050 2900 950  2900
Wire Wire Line
	1850 4200 1950 4200
Wire Wire Line
	1850 4300 1950 4300
Wire Wire Line
	1100 2000 1100 2200
Wire Wire Line
	6200 2150 6950 2150
Wire Wire Line
	3600 650  4550 650 
Wire Wire Line
	4100 1500 4850 1500
Wire Wire Line
	4850 1500 4900 1500
Wire Wire Line
	3600 1900 3800 1900
Wire Wire Line
	4100 2100 4100 2150
Wire Wire Line
	4100 2150 4850 2150
Wire Wire Line
	4100 850  4100 900 
Wire Wire Line
	4100 850  4850 850 
Wire Wire Line
	3600 1900 3600 2350
Wire Wire Line
	6150 1500 6200 1500
Wire Wire Line
	6200 1500 6950 1500
Wire Wire Line
	3600 2350 4550 2350
Connection ~ 4850 850 
Wire Wire Line
	6500 650  7500 650 
Wire Wire Line
	6950 900  6950 850 
Wire Wire Line
	6950 850  6200 850 
Connection ~ 6200 850 
Wire Wire Line
	6500 2350 7500 2350
NoConn ~ 3000 4450
NoConn ~ 3000 4550
NoConn ~ 3000 4750
NoConn ~ 1950 3950
NoConn ~ 1950 4050
$Comp
L Transistor_FET:IRF3205 Q6
U 1 1 609CB6EF
P 7050 1100
F 0 "Q6" H 7255 1146 50  0000 L CNN
F 1 "IRF1404" H 7255 1055 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-263-3_TabPin2" H 7050 1100 50  0001 C CIN
F 3 "https://www.infineon.com/dgdl/Infineon-IRF40DM229-DS-v02_00-EN.pdf?fileId=5546d462557e6e890155a15c899160ea" H 7050 1100 50  0001 L CNN
F 4 "M" H 7050 1100 50  0001 C CNN "Spice_Primitive"
F 5 "IRF1404" H 7050 1100 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7050 1100 50  0001 C CNN "Spice_Netlist_Enabled"
	1    7050 1100
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF3205 Q3
U 1 1 609CBF98
P 4750 1100
F 0 "Q3" H 4955 1146 50  0000 L CNN
F 1 "IRF1404" H 4955 1055 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-263-3_TabPin2" H 4750 1100 50  0001 C CIN
F 3 "https://www.infineon.com/dgdl/Infineon-IRF40DM229-DS-v02_00-EN.pdf?fileId=5546d462557e6e890155a15c899160ea" H 4750 1100 50  0001 L CNN
F 4 "M" H 4750 1100 50  0001 C CNN "Spice_Primitive"
F 5 "IRF1404" H 4750 1100 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4750 1100 50  0001 C CNN "Spice_Netlist_Enabled"
	1    4750 1100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF3205 Q1
U 1 1 609CDD55
P 4000 1100
F 0 "Q1" H 4205 1146 50  0000 L CNN
F 1 "IRF1404" H 4205 1055 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-263-3_TabPin2" H 4000 1100 50  0001 C CIN
F 3 "https://www.infineon.com/dgdl/Infineon-IRF40DM229-DS-v02_00-EN.pdf?fileId=5546d462557e6e890155a15c899160ea" H 4000 1100 50  0001 L CNN
F 4 "M" H 4000 1100 50  0001 C CNN "Spice_Primitive"
F 5 "IRF1404" H 4000 1100 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4000 1100 50  0001 C CNN "Spice_Netlist_Enabled"
	1    4000 1100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF3205 Q2
U 1 1 609CF79E
P 4000 1900
F 0 "Q2" H 4205 1946 50  0000 L CNN
F 1 "IRF1404" H 4205 1855 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-263-3_TabPin2" H 4000 1900 50  0001 C CIN
F 3 "https://www.infineon.com/dgdl/Infineon-IRF40DM229-DS-v02_00-EN.pdf?fileId=5546d462557e6e890155a15c899160ea" H 4000 1900 50  0001 L CNN
F 4 "M" H 4000 1900 50  0001 C CNN "Spice_Primitive"
F 5 "IRF1404" H 4000 1900 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4000 1900 50  0001 C CNN "Spice_Netlist_Enabled"
	1    4000 1900
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF3205 Q4
U 1 1 609D01D3
P 4750 1900
F 0 "Q4" H 4955 1946 50  0000 L CNN
F 1 "IRF1404" H 4955 1855 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-263-3_TabPin2" H 4750 1900 50  0001 C CIN
F 3 "https://www.infineon.com/dgdl/Infineon-IRF40DM229-DS-v02_00-EN.pdf?fileId=5546d462557e6e890155a15c899160ea" H 4750 1900 50  0001 L CNN
F 4 "M" H 4750 1900 50  0001 C CNN "Spice_Primitive"
F 5 "IRF1404" H 4750 1900 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4750 1900 50  0001 C CNN "Spice_Netlist_Enabled"
	1    4750 1900
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF3205 Q5
U 1 1 609D0EA0
P 6300 1900
F 0 "Q5" H 6505 1946 50  0000 L CNN
F 1 "IRF1404" H 6505 1855 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-263-3_TabPin2" H 6300 1900 50  0001 C CIN
F 3 "https://www.infineon.com/dgdl/Infineon-IRF40DM229-DS-v02_00-EN.pdf?fileId=5546d462557e6e890155a15c899160ea" H 6300 1900 50  0001 L CNN
F 4 "M" H 6300 1900 50  0001 C CNN "Spice_Primitive"
F 5 "IRF1404" H 6300 1900 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6300 1900 50  0001 C CNN "Spice_Netlist_Enabled"
	1    6300 1900
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF3205 Q8
U 1 1 609DB338
P 7050 1900
F 0 "Q8" H 7255 1946 50  0000 L CNN
F 1 "IRF1404" H 7255 1855 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-263-3_TabPin2" H 7050 1900 50  0001 C CIN
F 3 "https://www.infineon.com/dgdl/Infineon-IRF40DM229-DS-v02_00-EN.pdf?fileId=5546d462557e6e890155a15c899160ea" H 7050 1900 50  0001 L CNN
F 4 "M" H 7050 1900 50  0001 C CNN "Spice_Primitive"
F 5 "IRF1404" H 7050 1900 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7050 1900 50  0001 C CNN "Spice_Netlist_Enabled"
	1    7050 1900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2450 5150 2450 5200
$Comp
L Jumper:Jumper_2_Open JP2
U 1 1 609F3D76
P 7350 1500
F 0 "JP2" H 7350 1735 50  0000 C CNN
F 1 "Thermal Jumper" H 7350 1644 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric" H 7350 1500 50  0001 C CNN
F 3 "~" H 7350 1500 50  0001 C CNN
	1    7350 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1500 6950 1500
$Comp
L power:GND #PWR018
U 1 1 609FC8D4
P 7650 1500
F 0 "#PWR018" H 7650 1250 50  0001 C CNN
F 1 "GND" H 7655 1327 50  0000 C CNN
F 2 "" H 7650 1500 50  0001 C CNN
F 3 "" H 7650 1500 50  0001 C CNN
	1    7650 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1500 7550 1500
$Comp
L Jumper:Jumper_2_Open JP1
U 1 1 60A05C6C
P 3750 1500
F 0 "JP1" H 3750 1275 50  0000 C CNN
F 1 "Thermal Jumper" H 3750 1366 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric" H 3750 1500 50  0001 C CNN
F 3 "~" H 3750 1500 50  0001 C CNN
	1    3750 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 1500 3950 1500
$Comp
L power:+12V #PWR0101
U 1 1 60A33973
P 3350 1350
F 0 "#PWR0101" H 3350 1200 50  0001 C CNN
F 1 "+12V" H 3365 1523 50  0000 C CNN
F 2 "" H 3350 1350 50  0001 C CNN
F 3 "" H 3350 1350 50  0001 C CNN
	1    3350 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1500 3350 1350
Wire Wire Line
	3350 1500 3550 1500
$Comp
L Device:R R5
U 1 1 60A422C9
P 7850 650
F 0 "R5" V 7750 500 50  0000 C CNN
F 1 "100" V 7750 650 50  0000 C CNN
F 2 "Resistor_SMD:R_2010_5025Metric" V 7780 650 50  0001 C CNN
F 3 "~" H 7850 650 50  0001 C CNN
	1    7850 650 
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 60A4B5A4
P 7850 2350
F 0 "R6" V 7750 2200 50  0000 C CNN
F 1 "100" V 7750 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_2010_5025Metric" V 7780 2350 50  0001 C CNN
F 3 "~" H 7850 2350 50  0001 C CNN
	1    7850 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 2350 3400 2350
Connection ~ 3600 2350
Wire Wire Line
	8000 650  8100 650 
Wire Wire Line
	8000 2350 8100 2350
$Comp
L Device:R R4
U 1 1 60A86988
P 3250 2350
F 0 "R4" V 3150 2200 50  0000 C CNN
F 1 "100" V 3150 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_2010_5025Metric" V 3180 2350 50  0001 C CNN
F 3 "~" H 3250 2350 50  0001 C CNN
	1    3250 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3000 2350 3100 2350
$Comp
L Device:R R3
U 1 1 60A97D35
P 3250 650
F 0 "R3" V 3150 500 50  0000 C CNN
F 1 "100" V 3150 650 50  0000 C CNN
F 2 "Resistor_SMD:R_2010_5025Metric" V 3180 650 50  0001 C CNN
F 3 "~" H 3250 650 50  0001 C CNN
	1    3250 650 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3400 650  3600 650 
Wire Wire Line
	3100 650  3000 650 
Wire Wire Line
	2550 5150 2550 5200
Wire Wire Line
	2550 5200 2450 5200
Connection ~ 2450 5200
Wire Wire Line
	2450 5200 2450 5250
NoConn ~ 3000 4100
NoConn ~ 3000 4200
$Comp
L Switch:SW_DIP_x03 SW1
U 1 1 60A283F8
P 2100 6100
F 0 "SW1" H 2100 6567 50  0000 C CNN
F 1 "SW_DIP_x03" H 2100 6476 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_DIP_SPSTx03_Slide_6.7x9.18mm_W8.61mm_P2.54mm_LowProfile" H 2100 6100 50  0001 C CNN
F 3 "~" H 2100 6100 50  0001 C CNN
	1    2100 6100
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 60A34A34
P 2500 6300
F 0 "#PWR0102" H 2500 6050 50  0001 C CNN
F 1 "GND" H 2505 6127 50  0000 C CNN
F 2 "" H 2500 6300 50  0001 C CNN
F 3 "" H 2500 6300 50  0001 C CNN
	1    2500 6300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2400 5900 2500 5900
Wire Wire Line
	2500 5900 2500 6000
Wire Wire Line
	2400 6000 2500 6000
Connection ~ 2500 6000
Wire Wire Line
	2500 6000 2500 6100
Wire Wire Line
	2400 6100 2500 6100
Connection ~ 2500 6100
Wire Wire Line
	2500 6100 2500 6300
Text GLabel 3100 5150 2    50   Input ~ 0
ADDR_Select_1
Text GLabel 1850 4750 0    50   Input ~ 0
ADDR_Select_2
Text GLabel 1850 4450 0    50   Input ~ 0
ADDR_Select_3
Wire Wire Line
	1850 4450 1950 4450
Wire Wire Line
	1850 4750 1950 4750
Wire Wire Line
	3100 5150 3050 5150
Wire Wire Line
	3050 5150 3050 4950
Wire Wire Line
	3050 4950 3000 4950
Text GLabel 1700 6000 0    50   Input ~ 0
ADDR_Select_2
Text GLabel 1700 5900 0    50   Input ~ 0
ADDR_Select_3
Wire Wire Line
	1800 5900 1700 5900
Wire Wire Line
	1800 6000 1700 6000
Wire Wire Line
	1800 6100 1700 6100
Text GLabel 1700 6100 0    50   Input ~ 0
ADDR_Select_1
Text Notes 650  4600 0    50   ~ 0
This is the MSB for the address
Text GLabel 1050 3200 2    39   Input ~ 0
SCK_SCL
Text GLabel 1050 3100 2    50   Input ~ 0
MISO
Wire Wire Line
	950  3100 1050 3100
Text GLabel 1850 4200 0    39   Input ~ 0
SDA_MOSI
Text GLabel 1850 4300 0    39   Input ~ 0
SCK_SCL
Text GLabel 3100 4350 2    50   Input ~ 0
MISO
Wire Wire Line
	3000 4350 3100 4350
$Comp
L Connector_Generic:Conn_01x05 J3
U 1 1 60AD9C0E
P 750 3100
F 0 "J3" H 750 2800 50  0000 C CNN
F 1 "Input" V 850 3100 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-05A_1x05_P2.54mm_Vertical" H 750 3100 50  0001 C CNN
F 3 "~" H 750 3100 50  0001 C CNN
	1    750  3100
	-1   0    0    1   
$EndComp
Text GLabel 1050 3300 2    50   Input ~ 0
A_RESET
Wire Wire Line
	950  3300 1050 3300
Text GLabel 3050 3550 2    50   Input ~ 0
A_RESET
$Comp
L Motor-Controller-2020-rescue:a4956-Created_Components U2
U 1 1 60B5A6BA
P 8550 4100
F 0 "U2" H 8550 3850 50  0000 C CNN
F 1 "a4956" H 8550 3750 50  0000 C CNN
F 2 "Package_DFN_QFN:MLF-20-1EP_4x4mm_P0.5mm_EP2.6x2.6mm_ThermalVias" H 8550 3900 50  0001 C CNN
F 3 "" H 8550 3900 50  0001 C CNN
	1    8550 4100
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR011
U 1 1 60B5C0F4
P 8550 3200
F 0 "#PWR011" H 8550 3050 50  0001 C CNN
F 1 "+12V" H 8550 3350 50  0000 C CNN
F 2 "" H 8550 3200 50  0001 C CNN
F 3 "" H 8550 3200 50  0001 C CNN
	1    8550 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 60B5C3F8
P 8750 3450
F 0 "C5" V 8800 3550 50  0000 C CNN
F 1 "0.47uF" V 8911 3450 50  0000 C CNN
F 2 "Capacitor_SMD:C_1812_4532Metric_Pad1.57x3.40mm_HandSolder" H 8788 3300 50  0001 C CNN
F 3 "~" H 8750 3450 50  0001 C CNN
	1    8750 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 3200 8550 3250
Wire Wire Line
	8750 3600 8750 3700
Wire Wire Line
	8750 3300 8750 3250
Wire Wire Line
	8750 3250 8550 3250
Connection ~ 8550 3250
Wire Wire Line
	8550 3250 8550 3700
$Comp
L Device:C C4
U 1 1 60B89730
P 8300 3000
F 0 "C4" V 8350 3100 50  0000 C CNN
F 1 "0.1uF" V 8450 3000 50  0000 C CNN
F 2 "Capacitor_SMD:C_1812_4532Metric_Pad1.57x3.40mm_HandSolder" H 8338 2850 50  0001 C CNN
F 3 "~" H 8300 3000 50  0001 C CNN
	1    8300 3000
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 60B8A336
P 8300 2750
F 0 "#PWR010" H 8300 2500 50  0001 C CNN
F 1 "GND" H 8305 2577 50  0000 C CNN
F 2 "" H 8300 2750 50  0001 C CNN
F 3 "" H 8300 2750 50  0001 C CNN
	1    8300 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	8300 3150 8300 3250
Wire Wire Line
	8300 3250 8550 3250
Wire Wire Line
	8300 2850 8300 2750
$Comp
L Device:C C3
U 1 1 60BA2009
P 8050 3400
F 0 "C3" V 8100 3500 50  0000 C CNN
F 1 "0.1uF" V 8200 3400 50  0000 C CNN
F 2 "Capacitor_SMD:C_1812_4532Metric_Pad1.57x3.40mm_HandSolder" H 8088 3250 50  0001 C CNN
F 3 "~" H 8050 3400 50  0001 C CNN
	1    8050 3400
	0    1    -1   0   
$EndComp
Wire Wire Line
	8400 3700 8400 3400
Wire Wire Line
	8400 3400 8200 3400
Wire Wire Line
	8300 3700 8300 3600
Wire Wire Line
	8300 3600 7850 3600
Wire Wire Line
	7850 3600 7850 3400
Wire Wire Line
	7850 3400 7900 3400
Text GLabel 7800 4050 0    50   Input ~ 0
Mode
Text GLabel 7800 4150 0    50   Input ~ 0
PWM
Text GLabel 7800 4250 0    50   Input ~ 0
Dir
Text GLabel 7800 4750 0    50   Input ~ 0
Fault
NoConn ~ 8000 4850
$Comp
L power:GND #PWR015
U 1 1 60BE7979
P 8550 5250
F 0 "#PWR015" H 8550 5000 50  0001 C CNN
F 1 "GND" H 8555 5077 50  0000 C CNN
F 2 "" H 8550 5250 50  0001 C CNN
F 3 "" H 8550 5250 50  0001 C CNN
	1    8550 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5100 8600 5200
Wire Wire Line
	8600 5200 8550 5200
Wire Wire Line
	8550 5200 8550 5250
Wire Wire Line
	8500 5100 8500 5200
Wire Wire Line
	8500 5200 8550 5200
Connection ~ 8550 5200
Text GLabel 9200 4050 2    39   Input ~ 0
GLB
Text GLabel 9200 4150 2    39   Input ~ 0
GLA
Text GLabel 9200 4250 2    39   Input ~ 0
GHB
Text GLabel 9200 4350 2    39   Input ~ 0
GHA
Wire Wire Line
	9100 4050 9200 4050
Wire Wire Line
	9100 4150 9200 4150
Wire Wire Line
	9100 4250 9200 4250
Wire Wire Line
	9100 4350 9200 4350
Text GLabel 9200 4600 2    39   Input ~ 0
MOTOR-
Text GLabel 9200 4500 2    39   Input ~ 0
MOTOR+
Wire Wire Line
	9100 4500 9200 4500
Wire Wire Line
	9100 4600 9200 4600
$Comp
L Device:R R1
U 1 1 60C51F91
P 7650 4500
F 0 "R1" V 7550 4350 50  0000 C CNN
F 1 "15k" V 7550 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_2010_5025Metric_Pad1.40x2.65mm_HandSolder" V 7580 4500 50  0001 C CNN
F 3 "~" H 7650 4500 50  0001 C CNN
	1    7650 4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7800 4750 7850 4750
Wire Wire Line
	7800 4500 8000 4500
$Comp
L power:GND #PWR08
U 1 1 60C770C5
P 7400 4600
F 0 "#PWR08" H 7400 4350 50  0001 C CNN
F 1 "GND" H 7405 4427 50  0000 C CNN
F 2 "" H 7400 4600 50  0001 C CNN
F 3 "" H 7400 4600 50  0001 C CNN
	1    7400 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4500 7400 4500
Wire Wire Line
	7400 4500 7400 4600
Wire Wire Line
	7800 4050 7950 4050
Wire Wire Line
	9100 4750 9200 4750
Wire Wire Line
	9200 4750 9200 5200
Wire Wire Line
	9200 5200 8600 5200
Connection ~ 8600 5200
$Comp
L power:+5V #PWR09
U 1 1 60CDEBB0
P 7500 4950
F 0 "#PWR09" H 7500 4800 50  0001 C CNN
F 1 "+5V" H 7500 5100 50  0000 C CNN
F 2 "" H 7500 4950 50  0001 C CNN
F 3 "" H 7500 4950 50  0001 C CNN
	1    7500 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	8000 4650 7500 4650
Wire Wire Line
	7500 4650 7500 4950
Text GLabel 3100 4000 2    50   Input ~ 0
Dir
Text GLabel 3100 3900 2    50   Input ~ 0
PWM
Wire Wire Line
	3000 3900 3100 3900
Wire Wire Line
	3000 4000 3100 4000
Text GLabel 3100 4650 2    50   Input ~ 0
Mode
Wire Wire Line
	3000 4650 3100 4650
Text GLabel 3100 4850 2    50   Input ~ 0
Fault
Text Notes 9250 4950 0    50   ~ 0
The sense pin is not used in \nthis application and is \ngrounded to avoid driver faulting
Text Notes 7100 5400 0    50   ~ 0
Vref is held high to \navoid driver internal \ncurrent chopping
Text Notes 5950 4550 0    50   ~ 0
Set gate drive current to maximum
$Comp
L Device:R R2
U 1 1 60C48EE6
P 6950 4050
F 0 "R2" V 6850 3900 50  0000 C CNN
F 1 "15k" V 6850 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_2010_5025Metric_Pad1.40x2.65mm_HandSolder" V 6880 4050 50  0001 C CNN
F 3 "~" H 6950 4050 50  0001 C CNN
	1    6950 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 60C4941C
P 6950 3800
F 0 "#PWR017" H 6950 3550 50  0001 C CNN
F 1 "GND" H 6955 3627 50  0000 C CNN
F 2 "" H 6950 3800 50  0001 C CNN
F 3 "" H 6950 3800 50  0001 C CNN
	1    6950 3800
	-1   0    0    1   
$EndComp
$Comp
L Device:C C6
U 1 1 60C4FE3E
P 7150 4050
F 0 "C6" V 7200 4150 50  0000 C CNN
F 1 "620pF" V 7300 4050 50  0000 C CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 7188 3900 50  0001 C CNN
F 3 "~" H 7150 4050 50  0001 C CNN
	1    7150 4050
	1    0    0    1   
$EndComp
Wire Wire Line
	8000 4400 7150 4400
Wire Wire Line
	7150 4400 7150 4200
Wire Wire Line
	7150 4400 6950 4400
Wire Wire Line
	6950 4400 6950 4200
Connection ~ 7150 4400
Wire Wire Line
	6950 3900 6950 3850
Wire Wire Line
	7150 3900 7150 3850
Wire Wire Line
	7150 3850 6950 3850
Connection ~ 6950 3850
Wire Wire Line
	6950 3850 6950 3800
$Comp
L Connector:TestPoint TP2
U 1 1 60C55301
P 7150 2950
F 0 "TP2" H 7208 3068 50  0000 L CNN
F 1 "TestPoint" H 7208 2977 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7350 2950 50  0001 C CNN
F 3 "~" H 7350 2950 50  0001 C CNN
	1    7150 2950
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 60C56293
P 6700 2950
F 0 "TP1" H 6758 3068 50  0000 L CNN
F 1 "TestPoint" H 6750 3000 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6900 2950 50  0001 C CNN
F 3 "~" H 6900 2950 50  0001 C CNN
	1    6700 2950
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 60C56652
P 7950 5600
F 0 "TP3" H 7892 5626 50  0000 R CNN
F 1 "TestPoint" H 7892 5717 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8150 5600 50  0001 C CNN
F 3 "~" H 8150 5600 50  0001 C CNN
	1    7950 5600
	-1   0    0    1   
$EndComp
Wire Wire Line
	7950 5600 7950 5000
Wire Wire Line
	7950 5000 7850 5000
Wire Wire Line
	7850 5000 7850 4750
Connection ~ 7850 4750
Wire Wire Line
	7850 4750 8000 4750
Wire Wire Line
	7900 4250 7900 4350
Wire Wire Line
	7900 4350 7400 4350
Wire Wire Line
	7800 4250 7900 4250
Connection ~ 7900 4250
Wire Wire Line
	7900 4250 8000 4250
$Comp
L Connector:TestPoint TP4
U 1 1 60CA529A
P 7600 2950
F 0 "TP4" H 7658 3068 50  0000 L CNN
F 1 "TestPoint" H 7650 3000 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7800 2950 50  0001 C CNN
F 3 "~" H 7800 2950 50  0001 C CNN
	1    7600 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 4150 7850 4150
Wire Wire Line
	7400 4350 7400 3500
Wire Wire Line
	7400 3500 6700 3500
Wire Wire Line
	6700 2950 6700 3500
Wire Wire Line
	7950 4050 7950 3700
Wire Wire Line
	7950 3700 7600 3700
Wire Wire Line
	7600 3700 7600 2950
Connection ~ 7950 4050
Wire Wire Line
	7950 4050 8000 4050
Wire Wire Line
	7850 4150 7850 3750
Wire Wire Line
	7850 3750 7500 3750
Wire Wire Line
	7500 3750 7500 3200
Wire Wire Line
	7500 3200 7150 3200
Wire Wire Line
	7150 3200 7150 2950
Connection ~ 7850 4150
Wire Wire Line
	7850 4150 8000 4150
$Comp
L Device:Jumper_NO_Small JP3
U 1 1 60CC469F
P 2600 3550
F 0 "JP3" H 2600 3650 50  0000 C CNN
F 1 "Program/Reset" H 2650 3600 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 2600 3550 50  0001 C CNN
F 3 "~" H 2600 3550 50  0001 C CNN
	1    2600 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3300 2350 3550
Wire Wire Line
	2550 3750 2550 3650
Wire Wire Line
	2550 3650 2850 3650
Wire Wire Line
	2850 3650 2850 3550
Wire Wire Line
	2850 3550 3050 3550
Wire Wire Line
	2350 3550 2500 3550
Wire Wire Line
	2700 3550 2850 3550
Connection ~ 2850 3550
$Comp
L Mechanical:MountingHole H1
U 1 1 60CD765C
P 8500 700
F 0 "H1" H 8600 746 50  0000 L CNN
F 1 "MountingHole" H 8600 655 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 8500 700 50  0001 C CNN
F 3 "~" H 8500 700 50  0001 C CNN
	1    8500 700 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 60CD840C
P 8500 900
F 0 "H2" H 8600 946 50  0000 L CNN
F 1 "MountingHole" H 8600 855 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 8500 900 50  0001 C CNN
F 3 "~" H 8500 900 50  0001 C CNN
	1    8500 900 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 60CD8691
P 8500 1100
F 0 "H3" H 8600 1146 50  0000 L CNN
F 1 "MountingHole" H 8600 1055 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 8500 1100 50  0001 C CNN
F 3 "~" H 8500 1100 50  0001 C CNN
	1    8500 1100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
