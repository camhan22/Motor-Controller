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
P 7550 1100
F 0 "Q7" H 7755 1146 50  0000 L CNN
F 1 "IRF1404" H 7755 1055 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-263-2" H 7550 1100 50  0001 C CIN
F 3 "https://www.infineon.com/dgdl/Infineon-IRF40DM229-DS-v02_00-EN.pdf?fileId=5546d462557e6e890155a15c899160ea" H 7550 1100 50  0001 L CNN
F 4 "M" H 7550 1100 50  0001 C CNN "Spice_Primitive"
F 5 "IRF1404" H 7550 1100 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7550 1100 50  0001 C CNN "Spice_Netlist_Enabled"
	1    7550 1100
	-1   0    0    -1  
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
L power:GND #PWR07
U 1 1 609BA856
P 6750 2200
F 0 "#PWR07" H 6750 1950 50  0001 C CNN
F 1 "GND" H 6755 2027 50  0000 C CNN
F 2 "" H 6750 2200 50  0001 C CNN
F 3 "" H 6750 2200 50  0001 C CNN
	1    6750 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 750  6750 850 
Wire Wire Line
	6750 850  7450 850 
Wire Wire Line
	7450 850  7450 900 
Wire Wire Line
	6750 850  6100 850 
Wire Wire Line
	6100 850  6100 900 
Connection ~ 6750 850 
Wire Wire Line
	7450 2100 7450 2150
Wire Wire Line
	7450 2150 6750 2150
Wire Wire Line
	6750 2150 6750 2200
Connection ~ 7450 2150
Wire Wire Line
	8200 2100 8200 2150
Wire Wire Line
	6100 2100 6100 2150
Wire Wire Line
	6100 2150 6750 2150
Connection ~ 6750 2150
Connection ~ 6100 2150
Wire Wire Line
	7450 1300 7450 1350
Wire Wire Line
	8200 1300 8200 1500
Wire Wire Line
	6100 1300 6100 1350
Wire Wire Line
	5350 1300 5350 1500
Connection ~ 6100 1500
Wire Wire Line
	6100 1500 6100 1700
Connection ~ 5350 1500
Wire Wire Line
	5350 1500 5350 1700
Connection ~ 7450 1500
Wire Wire Line
	7450 1500 7450 1700
Connection ~ 8200 1500
Wire Wire Line
	8200 1500 8200 1700
Text GLabel 6150 1500 2    39   Input ~ 0
MOTOR+
Text GLabel 7400 1500 0    39   Input ~ 0
MOTOR-
Wire Wire Line
	5800 1100 5800 650 
Wire Wire Line
	4850 650  4850 1100
Wire Wire Line
	4850 1100 5050 1100
Wire Wire Line
	7750 1100 7750 650 
Wire Wire Line
	8750 650  8750 1100
Wire Wire Line
	8750 1100 8500 1100
Wire Wire Line
	5800 1900 5800 2350
Wire Wire Line
	7750 1900 7750 2350
Wire Wire Line
	8750 2350 8750 1900
Wire Wire Line
	8750 1900 8500 1900
Text GLabel 9350 650  2    39   Input ~ 0
GHB
Text GLabel 9350 2350 2    39   Input ~ 0
GLB
Text GLabel 4250 2350 0    39   Input ~ 0
GLA
Text GLabel 4250 650  0    39   Input ~ 0
GHA
Wire Wire Line
	8950 650  8750 650 
Connection ~ 8750 650 
Wire Wire Line
	8950 2350 8750 2350
Connection ~ 8750 2350
Connection ~ 4850 650 
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
Text Notes 3350 4750 0    39   ~ 0
This pin will detect that the driver went into a fault mode \nand will relay that message to the main controller by \nI2C about the error.\nIt is held high by the input pullup resistor
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
	7450 2150 8200 2150
Wire Wire Line
	4850 650  5800 650 
Wire Wire Line
	5350 1500 6100 1500
Wire Wire Line
	6100 1500 6150 1500
Wire Wire Line
	4850 1900 5050 1900
Wire Wire Line
	5350 2100 5350 2150
Wire Wire Line
	5350 2150 6100 2150
Wire Wire Line
	5350 850  5350 900 
Wire Wire Line
	5350 850  6100 850 
Wire Wire Line
	4850 1900 4850 2350
Wire Wire Line
	7400 1500 7450 1500
Wire Wire Line
	7450 1500 8200 1500
Wire Wire Line
	4850 2350 5800 2350
Connection ~ 6100 850 
Wire Wire Line
	7750 650  8750 650 
Wire Wire Line
	8200 900  8200 850 
Wire Wire Line
	8200 850  7450 850 
Connection ~ 7450 850 
Wire Wire Line
	7750 2350 8750 2350
NoConn ~ 3000 4450
NoConn ~ 3000 4550
NoConn ~ 3000 4750
NoConn ~ 1950 3950
NoConn ~ 1950 4050
$Comp
L Transistor_FET:IRF3205 Q6
U 1 1 609CB6EF
P 8300 1100
F 0 "Q6" H 8505 1146 50  0000 L CNN
F 1 "IRF1404" H 8505 1055 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-263-2" H 8300 1100 50  0001 C CIN
F 3 "https://www.infineon.com/dgdl/Infineon-IRF40DM229-DS-v02_00-EN.pdf?fileId=5546d462557e6e890155a15c899160ea" H 8300 1100 50  0001 L CNN
F 4 "M" H 8300 1100 50  0001 C CNN "Spice_Primitive"
F 5 "IRF1404" H 8300 1100 50  0001 C CNN "Spice_Model"
F 6 "Y" H 8300 1100 50  0001 C CNN "Spice_Netlist_Enabled"
	1    8300 1100
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF3205 Q3
U 1 1 609CBF98
P 6000 1100
F 0 "Q3" H 6205 1146 50  0000 L CNN
F 1 "IRF1404" H 6205 1055 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-263-2" H 6000 1100 50  0001 C CIN
F 3 "https://www.infineon.com/dgdl/Infineon-IRF40DM229-DS-v02_00-EN.pdf?fileId=5546d462557e6e890155a15c899160ea" H 6000 1100 50  0001 L CNN
F 4 "M" H 6000 1100 50  0001 C CNN "Spice_Primitive"
F 5 "IRF1404" H 6000 1100 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6000 1100 50  0001 C CNN "Spice_Netlist_Enabled"
	1    6000 1100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF3205 Q1
U 1 1 609CDD55
P 5250 1100
F 0 "Q1" H 5455 1146 50  0000 L CNN
F 1 "IRF1404" H 5455 1055 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-263-2" H 5250 1100 50  0001 C CIN
F 3 "https://www.infineon.com/dgdl/Infineon-IRF40DM229-DS-v02_00-EN.pdf?fileId=5546d462557e6e890155a15c899160ea" H 5250 1100 50  0001 L CNN
F 4 "M" H 5250 1100 50  0001 C CNN "Spice_Primitive"
F 5 "IRF1404" H 5250 1100 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5250 1100 50  0001 C CNN "Spice_Netlist_Enabled"
	1    5250 1100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF3205 Q2
U 1 1 609CF79E
P 5250 1900
F 0 "Q2" H 5455 1946 50  0000 L CNN
F 1 "IRF1404" H 5455 1855 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-263-2" H 5250 1900 50  0001 C CIN
F 3 "https://www.infineon.com/dgdl/Infineon-IRF40DM229-DS-v02_00-EN.pdf?fileId=5546d462557e6e890155a15c899160ea" H 5250 1900 50  0001 L CNN
F 4 "M" H 5250 1900 50  0001 C CNN "Spice_Primitive"
F 5 "IRF1404" H 5250 1900 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5250 1900 50  0001 C CNN "Spice_Netlist_Enabled"
	1    5250 1900
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF3205 Q4
U 1 1 609D01D3
P 6000 1900
F 0 "Q4" H 6205 1946 50  0000 L CNN
F 1 "IRF1404" H 6205 1855 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-263-2" H 6000 1900 50  0001 C CIN
F 3 "https://www.infineon.com/dgdl/Infineon-IRF40DM229-DS-v02_00-EN.pdf?fileId=5546d462557e6e890155a15c899160ea" H 6000 1900 50  0001 L CNN
F 4 "M" H 6000 1900 50  0001 C CNN "Spice_Primitive"
F 5 "IRF1404" H 6000 1900 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6000 1900 50  0001 C CNN "Spice_Netlist_Enabled"
	1    6000 1900
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF3205 Q5
U 1 1 609D0EA0
P 7550 1900
F 0 "Q5" H 7755 1946 50  0000 L CNN
F 1 "IRF1404" H 7755 1855 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-263-2" H 7550 1900 50  0001 C CIN
F 3 "https://www.infineon.com/dgdl/Infineon-IRF40DM229-DS-v02_00-EN.pdf?fileId=5546d462557e6e890155a15c899160ea" H 7550 1900 50  0001 L CNN
F 4 "M" H 7550 1900 50  0001 C CNN "Spice_Primitive"
F 5 "IRF1404" H 7550 1900 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7550 1900 50  0001 C CNN "Spice_Netlist_Enabled"
	1    7550 1900
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF3205 Q8
U 1 1 609DB338
P 8300 1900
F 0 "Q8" H 8505 1946 50  0000 L CNN
F 1 "IRF1404" H 8505 1855 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-263-2" H 8300 1900 50  0001 C CIN
F 3 "https://www.infineon.com/dgdl/Infineon-IRF40DM229-DS-v02_00-EN.pdf?fileId=5546d462557e6e890155a15c899160ea" H 8300 1900 50  0001 L CNN
F 4 "M" H 8300 1900 50  0001 C CNN "Spice_Primitive"
F 5 "IRF1404" H 8300 1900 50  0001 C CNN "Spice_Model"
F 6 "Y" H 8300 1900 50  0001 C CNN "Spice_Netlist_Enabled"
	1    8300 1900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2450 5150 2450 5200
$Comp
L Jumper:Jumper_2_Open JP2
U 1 1 609F3D76
P 8600 1500
F 0 "JP2" H 8600 1735 50  0000 C CNN
F 1 "Thermal Jumper" H 8600 1644 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric" H 8600 1500 50  0001 C CNN
F 3 "~" H 8600 1500 50  0001 C CNN
	1    8600 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 1500 8200 1500
$Comp
L power:GND #PWR018
U 1 1 609FC8D4
P 8900 1500
F 0 "#PWR018" H 8900 1250 50  0001 C CNN
F 1 "GND" H 8905 1327 50  0000 C CNN
F 2 "" H 8900 1500 50  0001 C CNN
F 3 "" H 8900 1500 50  0001 C CNN
	1    8900 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 1500 8800 1500
$Comp
L Jumper:Jumper_2_Open JP1
U 1 1 60A05C6C
P 5000 1500
F 0 "JP1" H 5000 1275 50  0000 C CNN
F 1 "Thermal Jumper" H 5000 1366 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric" H 5000 1500 50  0001 C CNN
F 3 "~" H 5000 1500 50  0001 C CNN
	1    5000 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 1500 5200 1500
Wire Wire Line
	4600 1500 4600 1350
Wire Wire Line
	4600 1500 4800 1500
$Comp
L Device:R R5
U 1 1 60A422C9
P 9100 650
F 0 "R5" V 9000 500 50  0000 C CNN
F 1 "100" V 9000 650 50  0000 C CNN
F 2 "Resistor_SMD:R_2010_5025Metric" V 9030 650 50  0001 C CNN
F 3 "~" H 9100 650 50  0001 C CNN
	1    9100 650 
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 60A4B5A4
P 9100 2350
F 0 "R6" V 9000 2200 50  0000 C CNN
F 1 "100" V 9000 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_2010_5025Metric" V 9030 2350 50  0001 C CNN
F 3 "~" H 9100 2350 50  0001 C CNN
	1    9100 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 2350 4650 2350
Connection ~ 4850 2350
Wire Wire Line
	9250 650  9350 650 
Wire Wire Line
	9250 2350 9350 2350
$Comp
L Device:R R4
U 1 1 60A86988
P 4500 2350
F 0 "R4" V 4400 2200 50  0000 C CNN
F 1 "100" V 4400 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_2010_5025Metric" V 4430 2350 50  0001 C CNN
F 3 "~" H 4500 2350 50  0001 C CNN
	1    4500 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 2350 4350 2350
$Comp
L Device:R R3
U 1 1 60A97D35
P 4500 650
F 0 "R3" V 4400 500 50  0000 C CNN
F 1 "100" V 4400 650 50  0000 C CNN
F 2 "Resistor_SMD:R_2010_5025Metric" V 4430 650 50  0001 C CNN
F 3 "~" H 4500 650 50  0001 C CNN
	1    4500 650 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4650 650  4850 650 
Wire Wire Line
	4350 650  4250 650 
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
Text GLabel 2550 3650 1    50   Input ~ 0
A_RESET
$Comp
L Motor-Controller-2020-rescue:a4956-Created_Components U2
U 1 1 60B5A6BA
P 8300 4800
F 0 "U2" H 8300 4550 50  0000 C CNN
F 1 "a4956" H 8300 4450 50  0000 C CNN
F 2 "Package_DFN_QFN:MLF-20-1EP_4x4mm_P0.5mm_EP2.6x2.6mm_ThermalVias" H 8300 4600 50  0001 C CNN
F 3 "" H 8300 4600 50  0001 C CNN
	1    8300 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 60B5C3F8
P 8500 4150
F 0 "C5" V 8550 4250 50  0000 C CNN
F 1 "0.47uF" V 8661 4150 50  0000 C CNN
F 2 "Capacitor_SMD:C_1812_4532Metric_Pad1.57x3.40mm_HandSolder" H 8538 4000 50  0001 C CNN
F 3 "~" H 8500 4150 50  0001 C CNN
	1    8500 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3900 8300 3950
Wire Wire Line
	8500 4300 8500 4350
Wire Wire Line
	8500 4000 8500 3950
Wire Wire Line
	8500 3950 8300 3950
Connection ~ 8300 3950
Wire Wire Line
	8300 3950 8300 4400
$Comp
L Device:C C4
U 1 1 60B89730
P 8650 3700
F 0 "C4" V 8700 3800 50  0000 C CNN
F 1 "0.1uF" V 8800 3700 50  0000 C CNN
F 2 "Capacitor_SMD:C_1812_4532Metric_Pad1.57x3.40mm_HandSolder" H 8688 3550 50  0001 C CNN
F 3 "~" H 8650 3700 50  0001 C CNN
	1    8650 3700
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 60BA2009
P 7800 4100
F 0 "C3" V 7850 4200 50  0000 C CNN
F 1 "0.1uF" V 7950 4100 50  0000 C CNN
F 2 "Capacitor_SMD:C_1812_4532Metric_Pad1.57x3.40mm_HandSolder" H 7838 3950 50  0001 C CNN
F 3 "~" H 7800 4100 50  0001 C CNN
	1    7800 4100
	0    1    -1   0   
$EndComp
Wire Wire Line
	8150 4400 8150 4100
Wire Wire Line
	8150 4100 7950 4100
Wire Wire Line
	8050 4400 8050 4300
Wire Wire Line
	8050 4300 7600 4300
Wire Wire Line
	7600 4300 7600 4100
Wire Wire Line
	7600 4100 7650 4100
Text GLabel 7550 4750 0    50   Input ~ 0
Mode
Text GLabel 7550 4850 0    50   Input ~ 0
PWM
Text GLabel 7550 4950 0    50   Input ~ 0
Dir
Text GLabel 7550 5450 0    50   Input ~ 0
Fault
NoConn ~ 7750 5550
Wire Wire Line
	8350 5800 8350 5900
Wire Wire Line
	8350 5900 8300 5900
Wire Wire Line
	8300 5900 8300 5950
Wire Wire Line
	8250 5800 8250 5900
Wire Wire Line
	8250 5900 8300 5900
Connection ~ 8300 5900
Text GLabel 8950 4750 2    39   Input ~ 0
GLB
Text GLabel 8950 4850 2    39   Input ~ 0
GLA
Text GLabel 8950 4950 2    39   Input ~ 0
GHB
Text GLabel 8950 5050 2    39   Input ~ 0
GHA
Wire Wire Line
	8850 4750 8950 4750
Wire Wire Line
	8850 4850 8950 4850
Wire Wire Line
	8850 4950 8950 4950
Wire Wire Line
	8850 5050 8950 5050
Text GLabel 8950 5300 2    39   Input ~ 0
MOTOR-
Text GLabel 8950 5200 2    39   Input ~ 0
MOTOR+
Wire Wire Line
	8850 5200 8950 5200
Wire Wire Line
	8850 5300 8950 5300
$Comp
L Device:R R1
U 1 1 60C51F91
P 7400 5200
F 0 "R1" V 7300 5050 50  0000 C CNN
F 1 "15k" V 7300 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_2010_5025Metric_Pad1.40x2.65mm_HandSolder" V 7330 5200 50  0001 C CNN
F 3 "~" H 7400 5200 50  0001 C CNN
	1    7400 5200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7550 5450 7600 5450
Wire Wire Line
	7550 5200 7750 5200
Wire Wire Line
	7250 5200 7150 5200
Wire Wire Line
	7150 5200 7150 5300
Wire Wire Line
	7550 4750 7700 4750
Wire Wire Line
	8850 5450 8950 5450
Wire Wire Line
	8950 5450 8950 5900
Wire Wire Line
	8950 5900 8350 5900
Connection ~ 8350 5900
$Comp
L power:+5V #PWR09
U 1 1 60CDEBB0
P 7250 5650
F 0 "#PWR09" H 7250 5500 50  0001 C CNN
F 1 "+5V" H 7250 5800 50  0000 C CNN
F 2 "" H 7250 5650 50  0001 C CNN
F 3 "" H 7250 5650 50  0001 C CNN
	1    7250 5650
	-1   0    0    1   
$EndComp
Wire Wire Line
	7750 5350 7250 5350
Wire Wire Line
	7250 5350 7250 5650
Text GLabel 3100 4000 2    50   Input ~ 0
Dir
Text GLabel 3100 3900 2    50   Input ~ 0
PWM
Wire Wire Line
	3000 3900 3100 3900
Wire Wire Line
	3000 4000 3100 4000
Text GLabel 3100 4850 2    50   Input ~ 0
Mode
Wire Wire Line
	3000 4650 3100 4650
Text GLabel 3100 4650 2    50   Input ~ 0
Fault
Text Notes 9000 5650 0    50   ~ 0
The sense pin is not used in \nthis application and is \ngrounded to avoid driver faulting
Text Notes 6850 6100 0    50   ~ 0
Vref is held high to \navoid driver internal \ncurrent chopping
Text Notes 5700 5250 0    50   ~ 0
Set gate drive current to maximum
$Comp
L Device:R R2
U 1 1 60C48EE6
P 6700 4750
F 0 "R2" V 6600 4600 50  0000 C CNN
F 1 "15k" V 6600 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_2010_5025Metric_Pad1.40x2.65mm_HandSolder" V 6630 4750 50  0001 C CNN
F 3 "~" H 6700 4750 50  0001 C CNN
	1    6700 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 60C4FE3E
P 6900 4750
F 0 "C6" V 6950 4850 50  0000 C CNN
F 1 "620pF" V 7050 4750 50  0000 C CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 6938 4600 50  0001 C CNN
F 3 "~" H 6900 4750 50  0001 C CNN
	1    6900 4750
	1    0    0    1   
$EndComp
Wire Wire Line
	7750 5100 6900 5100
Wire Wire Line
	6900 5100 6900 4900
Wire Wire Line
	6900 5100 6700 5100
Wire Wire Line
	6700 5100 6700 4900
Connection ~ 6900 5100
Wire Wire Line
	6700 4600 6700 4550
Wire Wire Line
	6900 4600 6900 4550
Wire Wire Line
	6900 4550 6700 4550
Connection ~ 6700 4550
Wire Wire Line
	6700 4550 6700 4500
$Comp
L Connector:TestPoint TP2
U 1 1 60C55301
P 6900 3650
F 0 "TP2" H 6958 3768 50  0000 L CNN
F 1 "PWM" H 6958 3677 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7100 3650 50  0001 C CNN
F 3 "~" H 7100 3650 50  0001 C CNN
	1    6900 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 60C56293
P 6450 3650
F 0 "TP1" H 6508 3768 50  0000 L CNN
F 1 "Direction" H 6500 3700 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6650 3650 50  0001 C CNN
F 3 "~" H 6650 3650 50  0001 C CNN
	1    6450 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 60C56652
P 7700 6300
F 0 "TP3" H 7642 6326 50  0000 R CNN
F 1 "Fault" H 7642 6417 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7900 6300 50  0001 C CNN
F 3 "~" H 7900 6300 50  0001 C CNN
	1    7700 6300
	-1   0    0    1   
$EndComp
Wire Wire Line
	7700 6300 7700 5700
Wire Wire Line
	7700 5700 7600 5700
Wire Wire Line
	7600 5700 7600 5450
Connection ~ 7600 5450
Wire Wire Line
	7600 5450 7750 5450
Wire Wire Line
	7650 4950 7650 5050
Wire Wire Line
	7650 5050 7150 5050
Wire Wire Line
	7550 4950 7650 4950
Connection ~ 7650 4950
Wire Wire Line
	7650 4950 7750 4950
$Comp
L Connector:TestPoint TP4
U 1 1 60CA529A
P 7350 3650
F 0 "TP4" H 7408 3768 50  0000 L CNN
F 1 "Mode" H 7400 3700 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7550 3650 50  0001 C CNN
F 3 "~" H 7550 3650 50  0001 C CNN
	1    7350 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 4850 7600 4850
Wire Wire Line
	7150 5050 7150 4200
Wire Wire Line
	7150 4200 6450 4200
Wire Wire Line
	6450 3650 6450 4200
Wire Wire Line
	7700 4750 7700 4400
Wire Wire Line
	7700 4400 7350 4400
Wire Wire Line
	7350 4400 7350 3650
Connection ~ 7700 4750
Wire Wire Line
	7700 4750 7750 4750
Wire Wire Line
	7600 4850 7600 4450
Wire Wire Line
	7600 4450 7250 4450
Wire Wire Line
	7250 4450 7250 3900
Wire Wire Line
	7250 3900 6900 3900
Wire Wire Line
	6900 3900 6900 3650
Connection ~ 7600 4850
Wire Wire Line
	7600 4850 7750 4850
Wire Wire Line
	2350 3300 2350 3550
Wire Wire Line
	2550 3750 2550 3650
$Comp
L Mechanical:MountingHole H1
U 1 1 60CD765C
P 9850 1450
F 0 "H1" H 9950 1496 50  0000 L CNN
F 1 "MountingHole" H 9950 1405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 9850 1450 50  0001 C CNN
F 3 "~" H 9850 1450 50  0001 C CNN
	1    9850 1450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 60CD840C
P 9850 1650
F 0 "H2" H 9950 1696 50  0000 L CNN
F 1 "MountingHole" H 9950 1605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 9850 1650 50  0001 C CNN
F 3 "~" H 9850 1650 50  0001 C CNN
	1    9850 1650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 60CD8691
P 9850 1850
F 0 "H3" H 9950 1896 50  0000 L CNN
F 1 "MountingHole" H 9950 1805 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 9850 1850 50  0001 C CNN
F 3 "~" H 9850 1850 50  0001 C CNN
	1    9850 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 60DEE6AB
P 1550 2450
F 0 "#PWR04" H 1550 2200 50  0001 C CNN
F 1 "GND" H 1555 2277 50  0000 C CNN
F 2 "" H 1550 2450 50  0001 C CNN
F 3 "" H 1550 2450 50  0001 C CNN
	1    1550 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  1550 800  1650
$Comp
L Device:C C1
U 1 1 60E08CD4
P 800 1850
F 0 "C1" H 600 1850 50  0000 L CNN
F 1 "1uF" H 550 1750 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 838 1700 50  0001 C CNN
F 3 "~" H 800 1850 50  0001 C CNN
	1    800  1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 60E132D1
P 2650 2050
F 0 "C2" H 2450 2050 50  0000 L CNN
F 1 "10uF" H 2400 1950 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 2688 1900 50  0001 C CNN
F 3 "~" H 2650 2050 50  0001 C CNN
	1    2650 2050
	1    0    0    -1  
$EndComp
$Comp
L pspice:INDUCTOR L1
U 1 1 60E26EB0
P 2350 1650
F 0 "L1" H 2350 1600 50  0000 C CNN
F 1 "47uH" H 2350 1774 50  0000 C CNN
F 2 "Inductor_SMD:L_1210_3225Metric" H 2350 1650 50  0001 C CNN
F 3 "~" H 2350 1650 50  0001 C CNN
	1    2350 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 60EADC54
P 2650 1600
F 0 "#PWR05" H 2650 1450 50  0001 C CNN
F 1 "+5V" H 2665 1773 50  0000 C CNN
F 2 "" H 2650 1600 50  0001 C CNN
F 3 "" H 2650 1600 50  0001 C CNN
	1    2650 1600
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Switching:MAX15062A U1
U 1 1 60EDDFD6
P 1550 1850
F 0 "U1" H 1550 2317 50  0000 C CNN
F 1 "MAX15062A" H 1550 2226 50  0000 C CNN
F 2 "Package_DFN_QFN:DFN-8_2x2mm_P0.5mm" H 1550 2400 50  0001 C CIN
F 3 "http://datasheets.maximintegrated.com/en/ds/MAX15062.pdf" H 1550 1800 50  0001 C CNN
	1    1550 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1650 950  1650
Connection ~ 800  1650
Wire Wire Line
	800  1650 800  1700
Wire Wire Line
	1050 1750 950  1750
Wire Wire Line
	950  1750 950  1650
Connection ~ 950  1650
Wire Wire Line
	950  1650 800  1650
NoConn ~ 1050 1950
$Comp
L Device:C C7
U 1 1 60F059A1
P 950 2200
F 0 "C7" H 1050 2200 50  0000 L CNN
F 1 "1uF" H 950 2100 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 988 2050 50  0001 C CNN
F 3 "~" H 950 2200 50  0001 C CNN
	1    950  2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2250 1550 2400
Wire Wire Line
	950  2350 950  2400
Wire Wire Line
	950  2400 1550 2400
Connection ~ 1550 2400
Wire Wire Line
	1550 2400 1550 2450
Wire Wire Line
	800  2400 950  2400
Wire Wire Line
	800  2000 800  2400
Connection ~ 950  2400
Wire Wire Line
	1050 2050 950  2050
NoConn ~ 2050 2050
Wire Wire Line
	2650 1600 2650 1650
Wire Wire Line
	2650 1650 2600 1650
Connection ~ 2650 1650
Wire Wire Line
	2650 1650 2650 1850
Wire Wire Line
	1550 2400 2650 2400
Wire Wire Line
	2650 2400 2650 2200
Wire Wire Line
	2050 1850 2650 1850
Connection ~ 2650 1850
Wire Wire Line
	2650 1850 2650 1900
Text Notes 1150 750  0    50   ~ 0
System can operate from 12-48V
Wire Wire Line
	2050 1650 2100 1650
$Comp
L Device:C C8
U 1 1 60DE7EE1
P 1950 950
F 0 "C8" H 2050 950 50  0000 L CNN
F 1 "1uF" H 2000 850 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 1988 800 50  0001 C CNN
F 3 "~" H 1950 950 50  0001 C CNN
	1    1950 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 800  1300 800 
Connection ~ 1300 800 
Wire Wire Line
	1950 1100 1300 1100
Connection ~ 1300 1100
$Comp
L Device:C C10
U 1 1 60DFEE39
P 6750 1350
F 0 "C10" H 6850 1350 50  0000 L CNN
F 1 "1uF" H 6800 1250 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 6788 1200 50  0001 C CNN
F 3 "~" H 6750 1350 50  0001 C CNN
	1    6750 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 1350 7450 1350
Connection ~ 7450 1350
Wire Wire Line
	7450 1350 7450 1500
Wire Wire Line
	6600 1350 6100 1350
Connection ~ 6100 1350
Wire Wire Line
	6100 1350 6100 1500
$Comp
L power:GNDD #PWR0103
U 1 1 60E412FF
P 1050 2850
F 0 "#PWR0103" H 1050 2600 50  0001 C CNN
F 1 "GNDD" H 1054 2695 50  0000 C CNN
F 2 "" H 1050 2850 50  0001 C CNN
F 3 "" H 1050 2850 50  0001 C CNN
	1    1050 2850
	-1   0    0    1   
$EndComp
$Comp
L power:GNDD #PWR0104
U 1 1 60E423BA
P 2450 5250
F 0 "#PWR0104" H 2450 5000 50  0001 C CNN
F 1 "GNDD" H 2454 5095 50  0000 C CNN
F 2 "" H 2450 5250 50  0001 C CNN
F 3 "" H 2450 5250 50  0001 C CNN
	1    2450 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0105
U 1 1 60E4276C
P 1800 3600
F 0 "#PWR0105" H 1800 3350 50  0001 C CNN
F 1 "GNDD" H 1804 3445 50  0000 C CNN
F 2 "" H 1800 3600 50  0001 C CNN
F 3 "" H 1800 3600 50  0001 C CNN
	1    1800 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0106
U 1 1 60E43F9D
P 8300 5950
F 0 "#PWR0106" H 8300 5700 50  0001 C CNN
F 1 "GNDD" H 8304 5795 50  0000 C CNN
F 2 "" H 8300 5950 50  0001 C CNN
F 3 "" H 8300 5950 50  0001 C CNN
	1    8300 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0109
U 1 1 60E45DA5
P 7150 5300
F 0 "#PWR0109" H 7150 5050 50  0001 C CNN
F 1 "GNDD" H 7154 5145 50  0000 C CNN
F 2 "" H 7150 5300 50  0001 C CNN
F 3 "" H 7150 5300 50  0001 C CNN
	1    7150 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0111
U 1 1 60E876F0
P 6700 4500
F 0 "#PWR0111" H 6700 4250 50  0001 C CNN
F 1 "GNDD" H 6704 4345 50  0000 C CNN
F 2 "" H 6700 4500 50  0001 C CNN
F 3 "" H 6700 4500 50  0001 C CNN
	1    6700 4500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 60F182EE
P 8650 3450
F 0 "#PWR0107" H 8650 3200 50  0001 C CNN
F 1 "GND" H 8655 3277 50  0000 C CNN
F 2 "" H 8650 3450 50  0001 C CNN
F 3 "" H 8650 3450 50  0001 C CNN
	1    8650 3450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 60F318AF
P 3200 900
F 0 "#PWR08" H 3200 650 50  0001 C CNN
F 1 "GND" H 3205 727 50  0000 C CNN
F 2 "" H 3200 900 50  0001 C CNN
F 3 "" H 3200 900 50  0001 C CNN
	1    3200 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR010
U 1 1 60F31C6D
P 3400 900
F 0 "#PWR010" H 3400 650 50  0001 C CNN
F 1 "GNDD" H 3404 745 50  0000 C CNN
F 2 "" H 3400 900 50  0001 C CNN
F 3 "" H 3400 900 50  0001 C CNN
	1    3400 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:Net-Tie_2 NT1
U 1 1 60F32F60
P 3300 700
F 0 "NT1" H 3300 881 50  0000 C CNN
F 1 "Net-Tie_2" H 3300 790 50  0000 C CNN
F 2 "NetTie:NetTie-2_SMD_Pad2.0mm" H 3300 700 50  0001 C CNN
F 3 "~" H 3300 700 50  0001 C CNN
	1    3300 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 700  3400 900 
Wire Wire Line
	3200 700  3200 900 
Wire Wire Line
	8500 3950 8650 3950
Wire Wire Line
	8650 3950 8650 3850
Connection ~ 8500 3950
Wire Wire Line
	8650 3550 8650 3450
$Comp
L Connector:TestPoint TP6
U 1 1 60F8CF30
P 8150 3500
F 0 "TP6" H 8208 3618 50  0000 L CNN
F 1 "CP2" H 8200 3550 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8350 3500 50  0001 C CNN
F 3 "~" H 8350 3500 50  0001 C CNN
	1    8150 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 60F8D930
P 7750 3500
F 0 "TP5" H 7808 3618 50  0000 L CNN
F 1 "CP1" H 7800 3550 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7950 3500 50  0001 C CNN
F 3 "~" H 7950 3500 50  0001 C CNN
	1    7750 3500
	1    0    0    -1  
$EndComp
Connection ~ 8150 4100
Wire Wire Line
	7750 3500 7800 3500
Wire Wire Line
	7800 3500 7800 3800
Wire Wire Line
	7800 3800 7600 3800
Wire Wire Line
	7600 3800 7600 4100
Connection ~ 7600 4100
$Comp
L Connector:TestPoint TP7
U 1 1 60FA77BA
P 9050 3650
F 0 "TP7" H 9108 3768 50  0000 L CNN
F 1 "VCP" H 9100 3700 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 9250 3650 50  0001 C CNN
F 3 "~" H 9250 3650 50  0001 C CNN
	1    9050 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 4350 9050 4350
Wire Wire Line
	9050 3650 9050 4350
Connection ~ 8500 4350
Wire Wire Line
	8500 4350 8500 4400
Wire Wire Line
	8150 3500 8150 4100
$Comp
L power:VCC #PWR0108
U 1 1 60F157CF
P 2700 0
F 0 "#PWR0108" H 2700 -150 50  0001 C CNN
F 1 "VCC" H 2715 173 50  0000 C CNN
F 2 "" H 2700 0   50  0001 C CNN
F 3 "" H 2700 0   50  0001 C CNN
	1    2700 0   
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0110
U 1 1 60F15E5C
P 1050 800
F 0 "#PWR0110" H 1050 650 50  0001 C CNN
F 1 "VCC" H 1065 973 50  0000 C CNN
F 2 "" H 1050 800 50  0001 C CNN
F 3 "" H 1050 800 50  0001 C CNN
	1    1050 800 
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0112
U 1 1 60F16565
P 800 1550
F 0 "#PWR0112" H 800 1400 50  0001 C CNN
F 1 "VCC" H 815 1723 50  0000 C CNN
F 2 "" H 800 1550 50  0001 C CNN
F 3 "" H 800 1550 50  0001 C CNN
	1    800  1550
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0113
U 1 1 60F16DF9
P 6750 750
F 0 "#PWR0113" H 6750 600 50  0001 C CNN
F 1 "VCC" H 6765 923 50  0000 C CNN
F 2 "" H 6750 750 50  0001 C CNN
F 3 "" H 6750 750 50  0001 C CNN
	1    6750 750 
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0114
U 1 1 60F175DC
P 8300 3900
F 0 "#PWR0114" H 8300 3750 50  0001 C CNN
F 1 "VCC" H 8315 4073 50  0000 C CNN
F 2 "" H 8300 3900 50  0001 C CNN
F 3 "" H 8300 3900 50  0001 C CNN
	1    8300 3900
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 60F1A74F
P 4600 1350
F 0 "#PWR?" H 4600 1200 50  0001 C CNN
F 1 "VCC" H 4615 1523 50  0000 C CNN
F 2 "" H 4600 1350 50  0001 C CNN
F 3 "" H 4600 1350 50  0001 C CNN
	1    4600 1350
	1    0    0    -1  
$EndComp
$EndSCHEMATC
