EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3050 2100 1500 1000
U 5CB2CC25
F0 "oscillators" 50
F1 "oscillators.sch" 50
F2 "OSC1_PULSE_OUT" O R 4550 2450 50 
F3 "OSC2_PULSE_OUT" O R 4550 2800 50 
F4 "OSC2_TRI_OUT" O R 4550 2650 50 
F5 "OSC1_TRI_OUT" O R 4550 2300 50 
F6 "OSC1_FREQ_CV" I L 3050 2300 50 
F7 "OSC2_FREQ_CV" I L 3050 2650 50 
$EndSheet
Wire Wire Line
	4550 2300 4650 2300
Wire Wire Line
	4550 2650 4800 2650
$Sheet
S 5950 2100 1400 1000
U 5CB3D08C
F0 "rungler" 50
F1 "rungler.sch" 50
F2 "CLOCK_IN" I L 5950 2800 50 
F3 "RUNGLER_CV_OUT" O R 7350 2300 50 
F4 "XOR_OUT" O R 7350 2600 50 
F5 "DATA_IN" I L 5950 2450 50 
$EndSheet
Wire Wire Line
	4550 2450 5950 2450
Wire Wire Line
	4550 2800 5950 2800
Wire Wire Line
	7350 2300 7600 2300
Wire Wire Line
	9750 4750 9350 4750
$Comp
L dk_Banana-and-Tip-Connectors-Jacks-Plugs:105-1103-001 J1
U 1 1 5D8A3B85
P 9900 4750
F 0 "J1" V 9854 4828 50  0000 L CNN
F 1 "LP OUT" V 9945 4828 50  0000 L CNN
F 2 "digikey-footprints:Test_Jack_Horiz" H 10100 4950 60  0001 L CNN
F 3 "https://belfuse.com/resources/Johnson/drawings/dr-1051101001.pdf" H 10100 5050 60  0001 L CNN
F 4 "J577-ND" H 10100 5150 60  0001 L CNN "Digi-Key_PN"
F 5 "105-1103-001" H 10100 5250 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 10100 5350 60  0001 L CNN "Category"
F 7 "Banana and Tip Connectors - Jacks, Plugs" H 10100 5450 60  0001 L CNN "Family"
F 8 "https://belfuse.com/resources/Johnson/drawings/dr-1051101001.pdf" H 10100 5550 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cinch-connectivity-solutions-johnson/105-1103-001/J577-ND/241122" H 10100 5650 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN TIP JACK SOLDER BLACK" H 10100 5750 60  0001 L CNN "Description"
F 11 "Cinch Connectivity Solutions Johnson" H 10100 5850 60  0001 L CNN "Manufacturer"
F 12 "Active" H 10100 5950 60  0001 L CNN "Status"
	1    9900 4750
	0    1    1    0   
$EndComp
$Sheet
S 7900 4100 1450 950 
U 5CB8FD1C
F0 "filter" 50
F1 "filter.sch" 50
F2 "TRIANGLE2" I L 7900 4650 50 
F3 "TRIANGLE1" I L 7900 4450 50 
F4 "PWM_OUT" O R 9350 4450 50 
F5 "RUNGLER_CV" I L 7900 4250 50 
F6 "LP_OUT" O R 9350 4750 50 
F7 "CUTOFF_CV" I L 7900 4850 50 
$EndSheet
$Comp
L 00-cool_stuff:0V #PWR0104
U 1 1 5EEAF91D
P 6800 5350
AR Path="/5EEAF91D" Ref="#PWR0104"  Part="1" 
AR Path="/5CB2CC25/5EEAF91D" Ref="#PWR?"  Part="1" 
AR Path="/5CB8FD1C/5EEAF91D" Ref="#PWR?"  Part="1" 
F 0 "#PWR0104" H 6800 5100 50  0001 C CNN
F 1 "0V" H 6805 5177 50  0000 C CNN
F 2 "" H 6800 5350 50  0001 C CNN
F 3 "" H 6800 5350 50  0001 C CNN
	1    6800 5350
	1    0    0    -1  
$EndComp
$Comp
L 00-cool_stuff:resistor R?
U 1 1 5EEAF923
P 7100 5200
AR Path="/5CB8FD1C/5EEAF923" Ref="R?"  Part="1" 
AR Path="/5EEAF923" Ref="R54"  Part="1" 
F 0 "R54" H 7000 4995 50  0000 C CNN
F 1 "51k" H 7000 5086 50  0000 C CNN
F 2 "00-Mine:resistor-TH-10mm" H 7010 5240 50  0001 C CNN
F 3 "~" V 7000 5200 50  0001 C CNN
	1    7100 5200
	-1   0    0    1   
$EndComp
$Comp
L 00-cool_stuff:0V #PWR0105
U 1 1 5EEAF92A
P 6800 6050
AR Path="/5EEAF92A" Ref="#PWR0105"  Part="1" 
AR Path="/5CB2CC25/5EEAF92A" Ref="#PWR?"  Part="1" 
AR Path="/5CB8FD1C/5EEAF92A" Ref="#PWR?"  Part="1" 
F 0 "#PWR0105" H 6800 5800 50  0001 C CNN
F 1 "0V" H 6805 5877 50  0000 C CNN
F 2 "" H 6800 6050 50  0001 C CNN
F 3 "" H 6800 6050 50  0001 C CNN
	1    6800 6050
	1    0    0    -1  
$EndComp
$Comp
L 00-cool_stuff:potentiometer RV?
U 1 1 5EEAF931
P 6800 5900
AR Path="/5CB8FD1C/5EEAF931" Ref="RV?"  Part="1" 
AR Path="/5EEAF931" Ref="RV17"  Part="1" 
F 0 "RV17" H 6732 5946 50  0000 R CNN
F 1 "10k" H 6732 5855 50  0000 R CNN
F 2 "00-Mine:MOLEX-1X3_LOCK" H 6800 5900 50  0001 C CNN
F 3 "~" H 6800 5900 50  0001 C CNN
F 4 "TRI2 -> Cutoff atten." H 6450 5750 31  0000 C CNN "Label"
	1    6800 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 5750 6800 5650
$Comp
L 00-cool_stuff:resistor R?
U 1 1 5EEAF938
P 7100 5900
AR Path="/5CB8FD1C/5EEAF938" Ref="R?"  Part="1" 
AR Path="/5EEAF938" Ref="R55"  Part="1" 
F 0 "R55" H 7000 5695 50  0000 C CNN
F 1 "51k" H 7000 5786 50  0000 C CNN
F 2 "00-Mine:resistor-TH-10mm" H 7010 5940 50  0001 C CNN
F 3 "~" V 7000 5900 50  0001 C CNN
	1    7100 5900
	-1   0    0    1   
$EndComp
$Comp
L 00-cool_stuff:potentiometer RV?
U 1 1 5EEAF93F
P 6800 5200
AR Path="/5CB8FD1C/5EEAF93F" Ref="RV?"  Part="1" 
AR Path="/5EEAF93F" Ref="RV16"  Part="1" 
F 0 "RV16" H 6733 5277 50  0000 R CNN
F 1 "10k" H 6733 5186 50  0000 R CNN
F 2 "00-Mine:MOLEX-1X3_LOCK" H 6800 5200 50  0001 C CNN
F 3 "~" H 6800 5200 50  0001 C CNN
F 4 "Rungler -> Cutoff Mod Atten." H 6733 5109 31  0000 R CNN "Label"
	1    6800 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 5200 6950 5200
Wire Wire Line
	6800 4950 6800 5050
Wire Wire Line
	7050 5900 6950 5900
Wire Wire Line
	7350 5900 7500 5900
Wire Wire Line
	7500 5900 7500 5200
Wire Wire Line
	7500 4850 7900 4850
Wire Wire Line
	7350 5200 7500 5200
Connection ~ 7500 5200
Wire Wire Line
	7500 5200 7500 4850
Wire Wire Line
	5350 4450 7900 4450
Wire Wire Line
	5350 2300 5350 4450
Wire Wire Line
	5050 4650 7900 4650
Wire Wire Line
	5050 2650 5050 4650
Wire Wire Line
	5050 4650 5050 5650
Wire Wire Line
	5050 5650 6800 5650
Connection ~ 5050 4650
Connection ~ 7600 2300
Wire Wire Line
	6100 4950 6800 4950
Wire Wire Line
	7600 3600 6100 3600
Wire Wire Line
	7600 2300 7600 3600
Wire Wire Line
	6100 3600 6100 4950
Wire Wire Line
	7600 3600 7600 4250
Wire Wire Line
	7600 4250 7900 4250
Connection ~ 7600 3600
$Comp
L 00-cool_stuff:0V #PWR0106
U 1 1 5F0296AD
P 1500 1150
AR Path="/5F0296AD" Ref="#PWR0106"  Part="1" 
AR Path="/5CB2CC25/5F0296AD" Ref="#PWR?"  Part="1" 
AR Path="/5CB8FD1C/5F0296AD" Ref="#PWR?"  Part="1" 
F 0 "#PWR0106" H 1500 900 50  0001 C CNN
F 1 "0V" H 1505 977 50  0000 C CNN
F 2 "" H 1500 1150 50  0001 C CNN
F 3 "" H 1500 1150 50  0001 C CNN
	1    1500 1150
	-1   0    0    -1  
$EndComp
$Comp
L 00-cool_stuff:resistor R?
U 1 1 5F0296B3
P 1600 1400
AR Path="/5CB8FD1C/5F0296B3" Ref="R?"  Part="1" 
AR Path="/5F0296B3" Ref="R48"  Part="1" 
F 0 "R48" H 1500 1195 50  0000 C CNN
F 1 "51k" H 1500 1286 50  0000 C CNN
F 2 "00-Mine:resistor-TH-10mm" H 1510 1440 50  0001 C CNN
F 3 "~" V 1500 1400 50  0001 C CNN
	1    1600 1400
	-1   0    0    1   
$EndComp
$Comp
L 00-cool_stuff:potentiometer RV?
U 1 1 5F0296BA
P 1350 1150
AR Path="/5CB8FD1C/5F0296BA" Ref="RV?"  Part="1" 
AR Path="/5F0296BA" Ref="RV10"  Part="1" 
F 0 "RV10" V 1083 1150 50  0000 C CNN
F 1 "10k" V 1174 1150 50  0000 C CNN
F 2 "00-Mine:MOLEX-1X3_LOCK" H 1350 1150 50  0001 C CNN
F 3 "~" H 1350 1150 50  0001 C CNN
F 4 "TRI2 -> OSC1 Freq" V 1251 1150 31  0000 C CNN "Label"
	1    1350 1150
	0    -1   1    0   
$EndComp
Wire Wire Line
	1350 1300 1350 1400
Wire Wire Line
	1350 1400 1550 1400
$Comp
L 00-cool_stuff:0V #PWR0107
U 1 1 5F02D3DF
P 1500 1850
AR Path="/5F02D3DF" Ref="#PWR0107"  Part="1" 
AR Path="/5CB2CC25/5F02D3DF" Ref="#PWR?"  Part="1" 
AR Path="/5CB8FD1C/5F02D3DF" Ref="#PWR?"  Part="1" 
F 0 "#PWR0107" H 1500 1600 50  0001 C CNN
F 1 "0V" H 1505 1677 50  0000 C CNN
F 2 "" H 1500 1850 50  0001 C CNN
F 3 "" H 1500 1850 50  0001 C CNN
	1    1500 1850
	-1   0    0    -1  
$EndComp
$Comp
L 00-cool_stuff:resistor R?
U 1 1 5F02D3E5
P 1600 2100
AR Path="/5CB8FD1C/5F02D3E5" Ref="R?"  Part="1" 
AR Path="/5F02D3E5" Ref="R50"  Part="1" 
F 0 "R50" H 1500 1895 50  0000 C CNN
F 1 "51k" H 1500 1986 50  0000 C CNN
F 2 "00-Mine:resistor-TH-10mm" H 1510 2140 50  0001 C CNN
F 3 "~" V 1500 2100 50  0001 C CNN
	1    1600 2100
	-1   0    0    1   
$EndComp
$Comp
L 00-cool_stuff:potentiometer RV?
U 1 1 5F02D3EC
P 1350 1850
AR Path="/5CB8FD1C/5F02D3EC" Ref="RV?"  Part="1" 
AR Path="/5F02D3EC" Ref="RV12"  Part="1" 
F 0 "RV12" V 1083 1850 50  0000 C CNN
F 1 "10k" V 1174 1850 50  0000 C CNN
F 2 "00-Mine:MOLEX-1X3_LOCK" H 1350 1850 50  0001 C CNN
F 3 "~" H 1350 1850 50  0001 C CNN
F 4 "RUNGLER_OUT -> OSC1 Freq" V 1251 1850 31  0000 C CNN "Label"
	1    1350 1850
	0    -1   1    0   
$EndComp
Wire Wire Line
	1350 2000 1350 2100
Wire Wire Line
	1350 2100 1550 2100
Wire Wire Line
	7600 700  900  700 
Wire Wire Line
	900  700  900  1850
Wire Wire Line
	900  1850 1200 1850
Wire Wire Line
	7600 700  7600 2300
$Comp
L 00-cool_stuff:0V #PWR0110
U 1 1 5F040B3E
P 1500 3250
AR Path="/5F040B3E" Ref="#PWR0110"  Part="1" 
AR Path="/5CB2CC25/5F040B3E" Ref="#PWR?"  Part="1" 
AR Path="/5CB8FD1C/5F040B3E" Ref="#PWR?"  Part="1" 
F 0 "#PWR0110" H 1500 3000 50  0001 C CNN
F 1 "0V" H 1505 3077 50  0000 C CNN
F 2 "" H 1500 3250 50  0001 C CNN
F 3 "" H 1500 3250 50  0001 C CNN
	1    1500 3250
	-1   0    0    -1  
$EndComp
$Comp
L 00-cool_stuff:resistor R?
U 1 1 5F040B44
P 1600 3500
AR Path="/5CB8FD1C/5F040B44" Ref="R?"  Part="1" 
AR Path="/5F040B44" Ref="R52"  Part="1" 
F 0 "R52" H 1500 3295 50  0000 C CNN
F 1 "51k" H 1500 3386 50  0000 C CNN
F 2 "00-Mine:resistor-TH-10mm" H 1510 3540 50  0001 C CNN
F 3 "~" V 1500 3500 50  0001 C CNN
	1    1600 3500
	-1   0    0    1   
$EndComp
$Comp
L 00-cool_stuff:potentiometer RV?
U 1 1 5F040B4B
P 1350 3250
AR Path="/5CB8FD1C/5F040B4B" Ref="RV?"  Part="1" 
AR Path="/5F040B4B" Ref="RV14"  Part="1" 
F 0 "RV14" V 1083 3250 50  0000 C CNN
F 1 "10k" V 1174 3250 50  0000 C CNN
F 2 "00-Mine:MOLEX-1X3_LOCK" H 1350 3250 50  0001 C CNN
F 3 "~" H 1350 3250 50  0001 C CNN
F 4 "TRI1 -> OSC2 Freq" V 1251 3250 31  0000 C CNN "Label"
	1    1350 3250
	0    -1   1    0   
$EndComp
Wire Wire Line
	1350 3400 1350 3500
Wire Wire Line
	1350 3500 1550 3500
$Comp
L 00-cool_stuff:0V #PWR0111
U 1 1 5F040B53
P 1500 3950
AR Path="/5F040B53" Ref="#PWR0111"  Part="1" 
AR Path="/5CB2CC25/5F040B53" Ref="#PWR?"  Part="1" 
AR Path="/5CB8FD1C/5F040B53" Ref="#PWR?"  Part="1" 
F 0 "#PWR0111" H 1500 3700 50  0001 C CNN
F 1 "0V" H 1505 3777 50  0000 C CNN
F 2 "" H 1500 3950 50  0001 C CNN
F 3 "" H 1500 3950 50  0001 C CNN
	1    1500 3950
	-1   0    0    -1  
$EndComp
$Comp
L 00-cool_stuff:resistor R?
U 1 1 5F040B59
P 1600 4200
AR Path="/5CB8FD1C/5F040B59" Ref="R?"  Part="1" 
AR Path="/5F040B59" Ref="R53"  Part="1" 
F 0 "R53" H 1500 3995 50  0000 C CNN
F 1 "51k" H 1500 4086 50  0000 C CNN
F 2 "00-Mine:resistor-TH-10mm" H 1510 4240 50  0001 C CNN
F 3 "~" V 1500 4200 50  0001 C CNN
	1    1600 4200
	-1   0    0    1   
$EndComp
$Comp
L 00-cool_stuff:potentiometer RV?
U 1 1 5F040B60
P 1350 3950
AR Path="/5CB8FD1C/5F040B60" Ref="RV?"  Part="1" 
AR Path="/5F040B60" Ref="RV15"  Part="1" 
F 0 "RV15" V 1083 3950 50  0000 C CNN
F 1 "10k" V 1174 3950 50  0000 C CNN
F 2 "00-Mine:MOLEX-1X3_LOCK" H 1350 3950 50  0001 C CNN
F 3 "~" H 1350 3950 50  0001 C CNN
F 4 "RUNGLER_OUT -> OSC2 Freq" V 1251 3950 31  0000 C CNN "Label"
	1    1350 3950
	0    -1   1    0   
$EndComp
Wire Wire Line
	1350 4100 1350 4200
Wire Wire Line
	1350 4200 1550 4200
Wire Wire Line
	900  3950 1200 3950
Wire Wire Line
	3050 2300 2100 2300
Wire Wire Line
	2100 2300 2100 2450
Wire Wire Line
	2100 2300 2100 2100
Wire Wire Line
	2100 1400 1850 1400
Connection ~ 2100 2300
Wire Wire Line
	1850 2100 2100 2100
Connection ~ 2100 2100
Wire Wire Line
	2100 2100 2100 1400
Wire Wire Line
	1850 3500 2400 3500
Wire Wire Line
	2400 3500 2400 2650
Wire Wire Line
	2400 2650 3050 2650
Wire Wire Line
	1850 4200 2400 4200
Wire Wire Line
	2400 4200 2400 3500
Connection ~ 2400 3500
Wire Wire Line
	4650 2300 4650 5350
Wire Wire Line
	4650 5350 650  5350
Wire Wire Line
	650  5350 650  3250
Wire Wire Line
	650  3250 1200 3250
Connection ~ 4650 2300
Wire Wire Line
	4650 2300 5350 2300
Wire Wire Line
	900  1850 900  3950
Connection ~ 900  1850
Wire Wire Line
	4800 2650 4800 1500
Wire Wire Line
	4800 1500 1050 1500
Wire Wire Line
	1050 1500 1050 1150
Wire Wire Line
	1050 1150 1200 1150
Connection ~ 4800 2650
Wire Wire Line
	4800 2650 5050 2650
$Sheet
S 1650 6450 1550 650 
U 5F05E9B1
F0 "power" 50
F1 "file5F05E9B0.sch" 50
$EndSheet
$Comp
L dk_Banana-and-Tip-Connectors-Jacks-Plugs:105-1103-001 J3
U 1 1 5F0839C1
P 9900 4450
F 0 "J3" V 9854 4528 50  0000 L CNN
F 1 "PWM OUT" V 9945 4528 50  0000 L CNN
F 2 "digikey-footprints:Test_Jack_Horiz" H 10100 4650 60  0001 L CNN
F 3 "https://belfuse.com/resources/Johnson/drawings/dr-1051101001.pdf" H 10100 4750 60  0001 L CNN
F 4 "J577-ND" H 10100 4850 60  0001 L CNN "Digi-Key_PN"
F 5 "105-1103-001" H 10100 4950 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 10100 5050 60  0001 L CNN "Category"
F 7 "Banana and Tip Connectors - Jacks, Plugs" H 10100 5150 60  0001 L CNN "Family"
F 8 "https://belfuse.com/resources/Johnson/drawings/dr-1051101001.pdf" H 10100 5250 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cinch-connectivity-solutions-johnson/105-1103-001/J577-ND/241122" H 10100 5350 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN TIP JACK SOLDER BLACK" H 10100 5450 60  0001 L CNN "Description"
F 11 "Cinch Connectivity Solutions Johnson" H 10100 5550 60  0001 L CNN "Manufacturer"
F 12 "Active" H 10100 5650 60  0001 L CNN "Status"
	1    9900 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	9350 4450 9750 4450
$Comp
L dk_Banana-and-Tip-Connectors-Jacks-Plugs:105-1103-001 J?
U 1 1 5F0BA976
P 7950 2600
F 0 "J?" V 7904 2678 50  0000 L CNN
F 1 "XOR OUT" V 7995 2678 50  0000 L CNN
F 2 "digikey-footprints:Test_Jack_Horiz" H 8150 2800 60  0001 L CNN
F 3 "https://belfuse.com/resources/Johnson/drawings/dr-1051101001.pdf" H 8150 2900 60  0001 L CNN
F 4 "J577-ND" H 8150 3000 60  0001 L CNN "Digi-Key_PN"
F 5 "105-1103-001" H 8150 3100 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 8150 3200 60  0001 L CNN "Category"
F 7 "Banana and Tip Connectors - Jacks, Plugs" H 8150 3300 60  0001 L CNN "Family"
F 8 "https://belfuse.com/resources/Johnson/drawings/dr-1051101001.pdf" H 8150 3400 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cinch-connectivity-solutions-johnson/105-1103-001/J577-ND/241122" H 8150 3500 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN TIP JACK SOLDER BLACK" H 8150 3600 60  0001 L CNN "Description"
F 11 "Cinch Connectivity Solutions Johnson" H 8150 3700 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8150 3800 60  0001 L CNN "Status"
	1    7950 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	7800 2600 7350 2600
$Comp
L 00-cool_stuff:resistor R?
U 1 1 5F0BDA3B
P 1600 2450
AR Path="/5CB8FD1C/5F0BDA3B" Ref="R?"  Part="1" 
AR Path="/5F0BDA3B" Ref="R?"  Part="1" 
F 0 "R?" H 1500 2245 50  0000 C CNN
F 1 "51k" H 1500 2336 50  0000 C CNN
F 2 "00-Mine:resistor-TH-10mm" H 1510 2490 50  0001 C CNN
F 3 "~" V 1500 2450 50  0001 C CNN
	1    1600 2450
	-1   0    0    1   
$EndComp
$Comp
L 00-cool_stuff:resistor R?
U 1 1 5F0BDC4B
P 1600 2750
AR Path="/5CB8FD1C/5F0BDC4B" Ref="R?"  Part="1" 
AR Path="/5F0BDC4B" Ref="R?"  Part="1" 
F 0 "R?" H 1500 2545 50  0000 C CNN
F 1 "51k" H 1500 2636 50  0000 C CNN
F 2 "00-Mine:resistor-TH-10mm" H 1510 2790 50  0001 C CNN
F 3 "~" V 1500 2750 50  0001 C CNN
	1    1600 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	1850 2750 2100 2750
Wire Wire Line
	1850 2450 2100 2450
Connection ~ 2100 2450
Wire Wire Line
	2100 2450 2100 2750
$Comp
L dk_Banana-and-Tip-Connectors-Jacks-Plugs:105-1103-001 J?
U 1 1 5F0C0DFE
P 1300 2450
F 0 "J?" V 1254 2528 50  0000 L CNN
F 1 "OSC1 FREQ IN 1" V 1345 2528 50  0000 L CNN
F 2 "digikey-footprints:Test_Jack_Horiz" H 1500 2650 60  0001 L CNN
F 3 "https://belfuse.com/resources/Johnson/drawings/dr-1051101001.pdf" H 1500 2750 60  0001 L CNN
F 4 "J577-ND" H 1500 2850 60  0001 L CNN "Digi-Key_PN"
F 5 "105-1103-001" H 1500 2950 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 1500 3050 60  0001 L CNN "Category"
F 7 "Banana and Tip Connectors - Jacks, Plugs" H 1500 3150 60  0001 L CNN "Family"
F 8 "https://belfuse.com/resources/Johnson/drawings/dr-1051101001.pdf" H 1500 3250 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cinch-connectivity-solutions-johnson/105-1103-001/J577-ND/241122" H 1500 3350 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN TIP JACK SOLDER BLACK" H 1500 3450 60  0001 L CNN "Description"
F 11 "Cinch Connectivity Solutions Johnson" H 1500 3550 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1500 3650 60  0001 L CNN "Status"
	1    1300 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1450 2450 1550 2450
$Comp
L dk_Banana-and-Tip-Connectors-Jacks-Plugs:105-1103-001 J?
U 1 1 5F0C3542
P 1300 2750
F 0 "J?" V 1254 2828 50  0000 L CNN
F 1 "OSC1 FREQ IN 2" V 1345 2828 50  0000 L CNN
F 2 "digikey-footprints:Test_Jack_Horiz" H 1500 2950 60  0001 L CNN
F 3 "https://belfuse.com/resources/Johnson/drawings/dr-1051101001.pdf" H 1500 3050 60  0001 L CNN
F 4 "J577-ND" H 1500 3150 60  0001 L CNN "Digi-Key_PN"
F 5 "105-1103-001" H 1500 3250 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 1500 3350 60  0001 L CNN "Category"
F 7 "Banana and Tip Connectors - Jacks, Plugs" H 1500 3450 60  0001 L CNN "Family"
F 8 "https://belfuse.com/resources/Johnson/drawings/dr-1051101001.pdf" H 1500 3550 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cinch-connectivity-solutions-johnson/105-1103-001/J577-ND/241122" H 1500 3650 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN TIP JACK SOLDER BLACK" H 1500 3750 60  0001 L CNN "Description"
F 11 "Cinch Connectivity Solutions Johnson" H 1500 3850 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1500 3950 60  0001 L CNN "Status"
	1    1300 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1450 2750 1550 2750
$Comp
L 00-cool_stuff:resistor R?
U 1 1 5F0CED26
P 1900 4550
AR Path="/5CB8FD1C/5F0CED26" Ref="R?"  Part="1" 
AR Path="/5F0CED26" Ref="R?"  Part="1" 
F 0 "R?" H 1800 4345 50  0000 C CNN
F 1 "51k" H 1800 4436 50  0000 C CNN
F 2 "00-Mine:resistor-TH-10mm" H 1810 4590 50  0001 C CNN
F 3 "~" V 1800 4550 50  0001 C CNN
	1    1900 4550
	-1   0    0    1   
$EndComp
$Comp
L 00-cool_stuff:resistor R?
U 1 1 5F0CED2C
P 1900 4850
AR Path="/5CB8FD1C/5F0CED2C" Ref="R?"  Part="1" 
AR Path="/5F0CED2C" Ref="R?"  Part="1" 
F 0 "R?" H 1800 4645 50  0000 C CNN
F 1 "51k" H 1800 4736 50  0000 C CNN
F 2 "00-Mine:resistor-TH-10mm" H 1810 4890 50  0001 C CNN
F 3 "~" V 1800 4850 50  0001 C CNN
	1    1900 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2150 4850 2400 4850
Wire Wire Line
	2150 4550 2400 4550
Connection ~ 2400 4550
Wire Wire Line
	2400 4550 2400 4850
$Comp
L dk_Banana-and-Tip-Connectors-Jacks-Plugs:105-1103-001 J?
U 1 1 5F0CED3F
P 1600 4550
F 0 "J?" V 1554 4628 50  0000 L CNN
F 1 "OSC2 FREQ IN 1" V 1645 4628 50  0000 L CNN
F 2 "digikey-footprints:Test_Jack_Horiz" H 1800 4750 60  0001 L CNN
F 3 "https://belfuse.com/resources/Johnson/drawings/dr-1051101001.pdf" H 1800 4850 60  0001 L CNN
F 4 "J577-ND" H 1800 4950 60  0001 L CNN "Digi-Key_PN"
F 5 "105-1103-001" H 1800 5050 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 1800 5150 60  0001 L CNN "Category"
F 7 "Banana and Tip Connectors - Jacks, Plugs" H 1800 5250 60  0001 L CNN "Family"
F 8 "https://belfuse.com/resources/Johnson/drawings/dr-1051101001.pdf" H 1800 5350 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cinch-connectivity-solutions-johnson/105-1103-001/J577-ND/241122" H 1800 5450 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN TIP JACK SOLDER BLACK" H 1800 5550 60  0001 L CNN "Description"
F 11 "Cinch Connectivity Solutions Johnson" H 1800 5650 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1800 5750 60  0001 L CNN "Status"
	1    1600 4550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1750 4550 1850 4550
$Comp
L dk_Banana-and-Tip-Connectors-Jacks-Plugs:105-1103-001 J?
U 1 1 5F0CED4F
P 1600 4850
F 0 "J?" V 1554 4928 50  0000 L CNN
F 1 "OSC2 FREQ IN 2" V 1645 4928 50  0000 L CNN
F 2 "digikey-footprints:Test_Jack_Horiz" H 1800 5050 60  0001 L CNN
F 3 "https://belfuse.com/resources/Johnson/drawings/dr-1051101001.pdf" H 1800 5150 60  0001 L CNN
F 4 "J577-ND" H 1800 5250 60  0001 L CNN "Digi-Key_PN"
F 5 "105-1103-001" H 1800 5350 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 1800 5450 60  0001 L CNN "Category"
F 7 "Banana and Tip Connectors - Jacks, Plugs" H 1800 5550 60  0001 L CNN "Family"
F 8 "https://belfuse.com/resources/Johnson/drawings/dr-1051101001.pdf" H 1800 5650 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cinch-connectivity-solutions-johnson/105-1103-001/J577-ND/241122" H 1800 5750 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN TIP JACK SOLDER BLACK" H 1800 5850 60  0001 L CNN "Description"
F 11 "Cinch Connectivity Solutions Johnson" H 1800 5950 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1800 6050 60  0001 L CNN "Status"
	1    1600 4850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1750 4850 1850 4850
Wire Wire Line
	2400 4200 2400 4550
$Sheet
S 8550 5800 1050 650 
U 5F0D4608
F0 "mixer" 50
F1 "file5F0D4607.sch" 50
$EndSheet
$EndSCHEMATC
