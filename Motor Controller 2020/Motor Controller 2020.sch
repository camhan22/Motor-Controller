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
P 6750 2550
F 0 "#PWR07" H 6750 2300 50  0001 C CNN
F 1 "GND" H 6755 2377 50  0000 C CNN
F 2 "" H 6750 2550 50  0001 C CNN
F 3 "" H 6750 2550 50  0001 C CNN
	1    6750 2550
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
P 3750 6650
F 0 "U3" H 3750 6450 39  0000 C CNN
F 1 "Attiny4313" H 3750 6550 39  0000 C CNN
F 2 "Package_DFN_QFN:VQFN-20-1EP_3x3mm_P0.4mm_EP1.7x1.7mm_ThermalVias" H 3750 6650 39  0001 C CNN
F 3 "" H 3750 6650 39  0001 C CNN
	1    3750 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 60BC2B0F
P 3350 6000
F 0 "C11" V 3400 6150 50  0000 C CNN
F 1 "0.1uF" V 3511 6000 50  0000 C CNN
F 2 "Capacitor_SMD:C_1812_4532Metric_Pad1.57x3.40mm_HandSolder" H 3388 5850 50  0001 C CNN
F 3 "~" H 3350 6000 50  0001 C CNN
	1    3350 6000
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 60BC4BAD
P 3650 5750
F 0 "#PWR013" H 3650 5600 50  0001 C CNN
F 1 "+5V" H 3650 5900 50  0000 C CNN
F 2 "" H 3650 5750 50  0001 C CNN
F 3 "" H 3650 5750 50  0001 C CNN
	1    3650 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 6000 3650 6000
Connection ~ 3650 6000
Wire Wire Line
	3650 6000 3650 6200
Wire Wire Line
	3200 6000 3100 6000
Wire Wire Line
	3100 6000 3100 6050
Wire Wire Line
	4400 7300 4300 7300
Text Notes 4950 7450 0    39   ~ 0
This pin will detect that the driver \nwent into a fault mode and will \nrelay that message to the main \ncontroller by I2C about the error.\nIt is held high by the input pullup resistor
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
	3150 6650 3250 6650
Wire Wire Line
	3150 6750 3250 6750
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
NoConn ~ 4300 6900
NoConn ~ 4300 7000
NoConn ~ 4300 7200
NoConn ~ 3250 6400
NoConn ~ 3250 6500
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
	3750 7600 3750 7650
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
	3850 7600 3850 7650
Wire Wire Line
	3850 7650 3750 7650
Connection ~ 3750 7650
Wire Wire Line
	3750 7650 3750 7700
NoConn ~ 4300 6550
NoConn ~ 4300 6650
$Comp
L Switch:SW_DIP_x03 SW1
U 1 1 60A283F8
P 1600 7450
F 0 "SW1" H 1600 7917 50  0000 C CNN
F 1 "SW_DIP_x03" H 1600 7826 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_DIP_SPSTx03_Slide_6.7x9.18mm_W8.61mm_P2.54mm_LowProfile" H 1600 7450 50  0001 C CNN
F 3 "~" H 1600 7450 50  0001 C CNN
	1    1600 7450
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 60A34A34
P 2000 7650
F 0 "#PWR0102" H 2000 7400 50  0001 C CNN
F 1 "GND" H 2005 7477 50  0000 C CNN
F 2 "" H 2000 7650 50  0001 C CNN
F 3 "" H 2000 7650 50  0001 C CNN
	1    2000 7650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1900 7250 2000 7250
Wire Wire Line
	2000 7250 2000 7350
Wire Wire Line
	1900 7350 2000 7350
Connection ~ 2000 7350
Wire Wire Line
	2000 7350 2000 7450
Wire Wire Line
	1900 7450 2000 7450
Connection ~ 2000 7450
Wire Wire Line
	2000 7450 2000 7650
Text GLabel 4400 7600 2    50   Input ~ 0
ADDR_Select_1
Text GLabel 3150 7200 0    50   Input ~ 0
ADDR_Select_2
Text GLabel 3150 6900 0    50   Input ~ 0
ADDR_Select_3
Wire Wire Line
	3150 6900 3250 6900
Wire Wire Line
	3150 7200 3250 7200
Wire Wire Line
	4400 7600 4350 7600
Wire Wire Line
	4350 7600 4350 7400
Wire Wire Line
	4350 7400 4300 7400
Text GLabel 1200 7350 0    50   Input ~ 0
ADDR_Select_2
Text GLabel 1200 7250 0    50   Input ~ 0
ADDR_Select_3
Wire Wire Line
	1300 7250 1200 7250
Wire Wire Line
	1300 7350 1200 7350
Wire Wire Line
	1300 7450 1200 7450
Text GLabel 1200 7450 0    50   Input ~ 0
ADDR_Select_1
Text Notes 1950 7050 0    50   ~ 0
This is the MSB for the address
Text GLabel 1050 3200 2    39   Input ~ 0
SCK_SCL
Text GLabel 1050 3100 2    50   Input ~ 0
MISO
Wire Wire Line
	950  3100 1050 3100
Text GLabel 3150 6650 0    39   Input ~ 0
SDA_MOSI
Text GLabel 3150 6750 0    39   Input ~ 0
SCK_SCL
Text GLabel 4400 6800 2    50   Input ~ 0
MISO
Wire Wire Line
	4300 6800 4400 6800
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
Text GLabel 3850 6100 1    50   Input ~ 0
A_RESET
$Comp
L Motor-Controller-2020-rescue:a4956-Created_Components U2
U 1 1 60B5A6BA
P 9050 4750
F 0 "U2" H 9050 4500 50  0000 C CNN
F 1 "a4956" H 9050 4400 50  0000 C CNN
F 2 "Package_DFN_QFN:MLF-20-1EP_4x4mm_P0.5mm_EP2.6x2.6mm_ThermalVias" H 9050 4550 50  0001 C CNN
F 3 "" H 9050 4550 50  0001 C CNN
	1    9050 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 60B5C3F8
P 9250 4100
F 0 "C5" V 9300 4200 50  0000 C CNN
F 1 "0.47uF" V 9411 4100 50  0000 C CNN
F 2 "Capacitor_SMD:C_1812_4532Metric_Pad1.57x3.40mm_HandSolder" H 9288 3950 50  0001 C CNN
F 3 "~" H 9250 4100 50  0001 C CNN
	1    9250 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 3850 9050 3900
Wire Wire Line
	9250 4250 9250 4300
Wire Wire Line
	9250 3950 9250 3900
Wire Wire Line
	9250 3900 9050 3900
Connection ~ 9050 3900
Wire Wire Line
	9050 3900 9050 4350
$Comp
L Device:C C4
U 1 1 60B89730
P 9400 3650
F 0 "C4" V 9450 3750 50  0000 C CNN
F 1 "0.1uF" V 9550 3650 50  0000 C CNN
F 2 "Capacitor_SMD:C_1812_4532Metric_Pad1.57x3.40mm_HandSolder" H 9438 3500 50  0001 C CNN
F 3 "~" H 9400 3650 50  0001 C CNN
	1    9400 3650
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 60BA2009
P 8550 4050
F 0 "C3" V 8600 4150 50  0000 C CNN
F 1 "0.1uF" V 8700 4050 50  0000 C CNN
F 2 "Capacitor_SMD:C_1812_4532Metric_Pad1.57x3.40mm_HandSolder" H 8588 3900 50  0001 C CNN
F 3 "~" H 8550 4050 50  0001 C CNN
	1    8550 4050
	0    1    -1   0   
$EndComp
Wire Wire Line
	8900 4350 8900 4050
Wire Wire Line
	8900 4050 8700 4050
Wire Wire Line
	8800 4350 8800 4250
Wire Wire Line
	8800 4250 8350 4250
Wire Wire Line
	8350 4250 8350 4050
Wire Wire Line
	8350 4050 8400 4050
Text GLabel 8300 4700 0    50   Input ~ 0
Mode
Text GLabel 8300 4800 0    50   Input ~ 0
PWM
Text GLabel 8300 4900 0    50   Input ~ 0
Dir
Text GLabel 8300 5400 0    50   Input ~ 0
Fault
NoConn ~ 8500 5500
Wire Wire Line
	9100 5750 9100 5850
Wire Wire Line
	9100 5850 9050 5850
Wire Wire Line
	9050 5850 9050 5900
Wire Wire Line
	9000 5750 9000 5850
Wire Wire Line
	9000 5850 9050 5850
Connection ~ 9050 5850
Text GLabel 9700 4700 2    39   Input ~ 0
GLB
Text GLabel 9700 4800 2    39   Input ~ 0
GLA
Text GLabel 9700 4900 2    39   Input ~ 0
GHB
Text GLabel 9700 5000 2    39   Input ~ 0
GHA
Wire Wire Line
	9600 4700 9700 4700
Wire Wire Line
	9600 4800 9700 4800
Wire Wire Line
	9600 4900 9700 4900
Wire Wire Line
	9600 5000 9700 5000
Text GLabel 9700 5250 2    39   Input ~ 0
MOTOR-
Text GLabel 9700 5150 2    39   Input ~ 0
MOTOR+
Wire Wire Line
	9600 5150 9700 5150
Wire Wire Line
	9600 5250 9700 5250
$Comp
L Device:R R1
U 1 1 60C51F91
P 8150 5150
F 0 "R1" V 8050 5000 50  0000 C CNN
F 1 "15k" V 8050 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_2010_5025Metric_Pad1.40x2.65mm_HandSolder" V 8080 5150 50  0001 C CNN
F 3 "~" H 8150 5150 50  0001 C CNN
	1    8150 5150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8300 5400 8350 5400
Wire Wire Line
	8300 5150 8500 5150
Wire Wire Line
	8000 5150 7900 5150
Wire Wire Line
	7900 5150 7900 5250
Wire Wire Line
	8300 4700 8450 4700
$Comp
L power:+5V #PWR09
U 1 1 60CDEBB0
P 8000 5600
F 0 "#PWR09" H 8000 5450 50  0001 C CNN
F 1 "+5V" H 8000 5750 50  0000 C CNN
F 2 "" H 8000 5600 50  0001 C CNN
F 3 "" H 8000 5600 50  0001 C CNN
	1    8000 5600
	-1   0    0    1   
$EndComp
Wire Wire Line
	8500 5300 8000 5300
Wire Wire Line
	8000 5300 8000 5600
Text GLabel 4400 6450 2    50   Input ~ 0
Dir
Text GLabel 4400 6350 2    50   Input ~ 0
PWM
Wire Wire Line
	4300 6350 4400 6350
Wire Wire Line
	4300 6450 4400 6450
Text GLabel 4400 7300 2    50   Input ~ 0
Mode
Wire Wire Line
	4300 7100 4400 7100
Text GLabel 4400 7100 2    50   Input ~ 0
Fault
Text Notes 9200 6150 0    50   ~ 0
The sense pin is not used in \nthis application and is \ngrounded to avoid driver faulting
Text Notes 7600 6050 0    50   ~ 0
Vref is held high \nbecause 5V is easy \nto make
Text Notes 6450 5200 0    50   ~ 0
Set gate drive current to maximum
$Comp
L Device:R R2
U 1 1 60C48EE6
P 7450 4700
F 0 "R2" V 7350 4550 50  0000 C CNN
F 1 "15k" V 7350 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_2010_5025Metric_Pad1.40x2.65mm_HandSolder" V 7380 4700 50  0001 C CNN
F 3 "~" H 7450 4700 50  0001 C CNN
	1    7450 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 60C4FE3E
P 7650 4700
F 0 "C6" V 7700 4800 50  0000 C CNN
F 1 "620pF" V 7800 4700 50  0000 C CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 7688 4550 50  0001 C CNN
F 3 "~" H 7650 4700 50  0001 C CNN
	1    7650 4700
	1    0    0    1   
$EndComp
Wire Wire Line
	8500 5050 7650 5050
Wire Wire Line
	7650 5050 7650 4850
Wire Wire Line
	7650 5050 7450 5050
Wire Wire Line
	7450 5050 7450 4850
Connection ~ 7650 5050
Wire Wire Line
	7450 4550 7450 4500
Wire Wire Line
	7650 4550 7650 4500
Wire Wire Line
	7650 4500 7450 4500
Connection ~ 7450 4500
Wire Wire Line
	7450 4500 7450 4450
$Comp
L Connector:TestPoint TP2
U 1 1 60C55301
P 7650 3600
F 0 "TP2" H 7708 3718 50  0000 L CNN
F 1 "PWM" H 7708 3627 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7850 3600 50  0001 C CNN
F 3 "~" H 7850 3600 50  0001 C CNN
	1    7650 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 60C56293
P 7200 3600
F 0 "TP1" H 7258 3718 50  0000 L CNN
F 1 "Direction" H 7250 3650 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7400 3600 50  0001 C CNN
F 3 "~" H 7400 3600 50  0001 C CNN
	1    7200 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 60C56652
P 8450 6250
F 0 "TP3" H 8392 6276 50  0000 R CNN
F 1 "Fault" H 8392 6367 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8650 6250 50  0001 C CNN
F 3 "~" H 8650 6250 50  0001 C CNN
	1    8450 6250
	-1   0    0    1   
$EndComp
Wire Wire Line
	8450 6250 8450 5650
Wire Wire Line
	8450 5650 8350 5650
Wire Wire Line
	8350 5650 8350 5400
Connection ~ 8350 5400
Wire Wire Line
	8350 5400 8500 5400
Wire Wire Line
	8400 4900 8400 5000
Wire Wire Line
	8400 5000 7900 5000
Wire Wire Line
	8300 4900 8400 4900
Connection ~ 8400 4900
Wire Wire Line
	8400 4900 8500 4900
$Comp
L Connector:TestPoint TP4
U 1 1 60CA529A
P 8100 3600
F 0 "TP4" H 8158 3718 50  0000 L CNN
F 1 "Mode" H 8150 3650 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8300 3600 50  0001 C CNN
F 3 "~" H 8300 3600 50  0001 C CNN
	1    8100 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 4800 8350 4800
Wire Wire Line
	7900 5000 7900 4150
Wire Wire Line
	7900 4150 7200 4150
Wire Wire Line
	7200 3600 7200 4150
Wire Wire Line
	8450 4700 8450 4350
Wire Wire Line
	8450 4350 8100 4350
Wire Wire Line
	8100 4350 8100 3600
Connection ~ 8450 4700
Wire Wire Line
	8450 4700 8500 4700
Wire Wire Line
	8350 4800 8350 4400
Wire Wire Line
	8350 4400 8000 4400
Wire Wire Line
	8000 4400 8000 3850
Wire Wire Line
	8000 3850 7650 3850
Wire Wire Line
	7650 3850 7650 3600
Connection ~ 8350 4800
Wire Wire Line
	8350 4800 8500 4800
Wire Wire Line
	3650 5750 3650 6000
Wire Wire Line
	3850 6200 3850 6100
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
P 3750 7700
F 0 "#PWR0104" H 3750 7450 50  0001 C CNN
F 1 "GNDD" H 3754 7545 50  0000 C CNN
F 2 "" H 3750 7700 50  0001 C CNN
F 3 "" H 3750 7700 50  0001 C CNN
	1    3750 7700
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0105
U 1 1 60E4276C
P 3100 6050
F 0 "#PWR0105" H 3100 5800 50  0001 C CNN
F 1 "GNDD" H 3104 5895 50  0000 C CNN
F 2 "" H 3100 6050 50  0001 C CNN
F 3 "" H 3100 6050 50  0001 C CNN
	1    3100 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0106
U 1 1 60E43F9D
P 9050 5900
F 0 "#PWR0106" H 9050 5650 50  0001 C CNN
F 1 "GNDD" H 9054 5745 50  0000 C CNN
F 2 "" H 9050 5900 50  0001 C CNN
F 3 "" H 9050 5900 50  0001 C CNN
	1    9050 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0109
U 1 1 60E45DA5
P 7900 5250
F 0 "#PWR0109" H 7900 5000 50  0001 C CNN
F 1 "GNDD" H 7904 5095 50  0000 C CNN
F 2 "" H 7900 5250 50  0001 C CNN
F 3 "" H 7900 5250 50  0001 C CNN
	1    7900 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0111
U 1 1 60E876F0
P 7450 4450
F 0 "#PWR0111" H 7450 4200 50  0001 C CNN
F 1 "GNDD" H 7454 4295 50  0000 C CNN
F 2 "" H 7450 4450 50  0001 C CNN
F 3 "" H 7450 4450 50  0001 C CNN
	1    7450 4450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 60F182EE
P 9400 3400
F 0 "#PWR0107" H 9400 3150 50  0001 C CNN
F 1 "GND" H 9405 3227 50  0000 C CNN
F 2 "" H 9400 3400 50  0001 C CNN
F 3 "" H 9400 3400 50  0001 C CNN
	1    9400 3400
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
	9250 3900 9400 3900
Wire Wire Line
	9400 3900 9400 3800
Connection ~ 9250 3900
Wire Wire Line
	9400 3500 9400 3400
$Comp
L Connector:TestPoint TP6
U 1 1 60F8CF30
P 8900 3450
F 0 "TP6" H 8958 3568 50  0000 L CNN
F 1 "CP2" H 8950 3500 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 9100 3450 50  0001 C CNN
F 3 "~" H 9100 3450 50  0001 C CNN
	1    8900 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 60F8D930
P 8500 3450
F 0 "TP5" H 8558 3568 50  0000 L CNN
F 1 "CP1" H 8550 3500 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8700 3450 50  0001 C CNN
F 3 "~" H 8700 3450 50  0001 C CNN
	1    8500 3450
	1    0    0    -1  
$EndComp
Connection ~ 8900 4050
Wire Wire Line
	8500 3450 8550 3450
Wire Wire Line
	8550 3450 8550 3750
Wire Wire Line
	8550 3750 8350 3750
Wire Wire Line
	8350 3750 8350 4050
Connection ~ 8350 4050
$Comp
L Connector:TestPoint TP7
U 1 1 60FA77BA
P 9800 3600
F 0 "TP7" H 9858 3718 50  0000 L CNN
F 1 "VCP" H 9850 3650 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 10000 3600 50  0001 C CNN
F 3 "~" H 10000 3600 50  0001 C CNN
	1    9800 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4300 9800 4300
Wire Wire Line
	9800 3600 9800 4300
Connection ~ 9250 4300
Wire Wire Line
	9250 4300 9250 4350
Wire Wire Line
	8900 3450 8900 4050
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
P 9050 3850
F 0 "#PWR0114" H 9050 3700 50  0001 C CNN
F 1 "VCC" H 9065 4023 50  0000 C CNN
F 2 "" H 9050 3850 50  0001 C CNN
F 3 "" H 9050 3850 50  0001 C CNN
	1    9050 3850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR012
U 1 1 60F1A74F
P 4600 1350
F 0 "#PWR012" H 4600 1200 50  0001 C CNN
F 1 "VCC" H 4615 1523 50  0000 C CNN
F 2 "" H 4600 1350 50  0001 C CNN
F 3 "" H 4600 1350 50  0001 C CNN
	1    4600 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 2150 6750 2550
Wire Wire Line
	9800 5400 9800 5850
Wire Wire Line
	9800 5850 9100 5850
Wire Wire Line
	9600 5400 9800 5400
Connection ~ 9100 5850
$EndSCHEMATC
