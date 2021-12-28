EESchema Schematic File Version 4
LIBS:benjolin-cache
LIBS:droner-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
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
L Connector:Barrel_Jack J?
U 1 1 5D042D76
P 1750 1650
F 0 "J?" H 1807 2065 50  0000 C CNN
F 1 "DC in" H 1807 1974 50  0000 C CNN
F 2 "" H 1800 1610 50  0001 C CNN
F 3 "~" H 1800 1610 50  0001 C CNN
F 4 "DC 15-18V or so" H 1807 1883 50  0000 C CNN "Label"
	1    1750 1650
	1    0    0    -1  
$EndComp
$Comp
L 4ms-passives:D_Schottky D?
U 1 1 5D043891
P 3800 1550
F 0 "D?" H 3800 1244 50  0000 C CNN
F 1 "1N5819" H 3800 1335 50  0000 C CNN
F 2 "" H 3800 1550 50  0001 C CNN
F 3 "" H 3800 1550 50  0001 C CNN
F 4 "or similar schottky" H 3800 1426 50  0000 C CNN "Label"
	1    3800 1550
	-1   0    0    1   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB?
U 1 1 5D044723
P 2950 1550
F 0 "FB?" V 2713 1550 50  0000 C CNN
F 1 "Ferrite_Bead_Small" V 2804 1550 50  0000 C CNN
F 2 "" V 2880 1550 50  0001 C CNN
F 3 "~" H 2950 1550 50  0001 C CNN
	1    2950 1550
	0    1    1    0   
$EndComp
$Comp
L 00-cool_stuff:cap_small C?
U 1 1 5D045376
P 3250 1700
F 0 "C?" V 3204 1792 50  0000 L CNN
F 1 "100pF" V 3295 1792 50  0000 L CNN
F 2 "" V 3250 1700 50  0001 C CNN
F 3 "~" V 3250 1700 50  0001 C CNN
	1    3250 1700
	0    1    1    0   
$EndComp
$Comp
L 00-cool_stuff:cap_polarized_small C?
U 1 1 5D045C9C
P 4100 1700
F 0 "C?" H 4191 1746 50  0000 L CNN
F 1 "10uF" H 4191 1655 50  0000 L CNN
F 2 "" H 4100 1700 50  0001 C CNN
F 3 "~" H 4100 1700 50  0001 C CNN
	1    4100 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1550 3250 1550
Wire Wire Line
	3250 1550 3250 1600
Wire Wire Line
	3250 1550 3650 1550
Connection ~ 3250 1550
Wire Wire Line
	3950 1550 4100 1550
Wire Wire Line
	4100 1550 4100 1600
Wire Wire Line
	2050 1550 2850 1550
$Comp
L 4ms-passives:D_Schottky D?
U 1 1 5D047EF2
P 2750 2150
F 0 "D?" H 2750 2456 50  0000 C CNN
F 1 "1N5819" H 2750 2365 50  0000 C CNN
F 2 "" H 2750 2150 50  0001 C CNN
F 3 "" H 2750 2150 50  0001 C CNN
F 4 "or similar schottky" H 2750 2274 50  0000 C CNN "Label"
	1    2750 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1800 3250 2150
Wire Wire Line
	3250 2150 2900 2150
Wire Wire Line
	3250 2150 4100 2150
Wire Wire Line
	4100 2150 4100 1800
Connection ~ 3250 2150
Wire Wire Line
	2050 1750 2150 1750
Wire Wire Line
	2150 1750 2150 2150
Wire Wire Line
	2150 2150 2600 2150
$Comp
L Regulator_Linear:L78L05_TO92 U?
U 1 1 5D4D7BCC
P 3600 3200
F 0 "U?" H 3600 3442 50  0000 C CNN
F 1 "L78L05_TO92" H 3600 3351 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3600 3425 50  0001 C CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/15/55/e5/aa/23/5b/43/fd/CD00000446.pdf/files/CD00000446.pdf/jcr:content/translations/en.CD00000446.pdf" H 3600 3150 50  0001 C CNN
	1    3600 3200
	1    0    0    -1  
$EndComp
$Comp
L 00-cool_stuff:0V #PWR?
U 1 1 5D4D89E1
P 3600 3700
F 0 "#PWR?" H 3600 3450 50  0001 C CNN
F 1 "0V" H 3605 3527 50  0000 C CNN
F 2 "" H 3600 3700 50  0001 C CNN
F 3 "" H 3600 3700 50  0001 C CNN
	1    3600 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 3700 3600 3600
$Comp
L 00-cool_stuff:Vcc #PWR?
U 1 1 5D4D91C2
P 2850 3100
F 0 "#PWR?" H 2850 2950 50  0001 C CNN
F 1 "Vcc" H 2865 3273 50  0000 C CNN
F 2 "" H 2850 3100 50  0001 C CNN
F 3 "" H 2850 3100 50  0001 C CNN
	1    2850 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3100 2850 3200
$Comp
L 4ms-power:+5V #PWR?
U 1 1 5D4D9E1E
P 4300 3100
F 0 "#PWR?" H 4300 2950 50  0001 C CNN
F 1 "+5V" H 4315 3273 50  0000 C CNN
F 2 "" H 4300 3100 50  0001 C CNN
F 3 "" H 4300 3100 50  0001 C CNN
	1    4300 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3100 4300 3200
Wire Wire Line
	4300 3200 3950 3200
$Comp
L 00-cool_stuff:cap_small C?
U 1 1 5D4DAF05
P 3200 3400
F 0 "C?" V 3154 3309 50  0000 R CNN
F 1 "330nF" V 3245 3309 50  0000 R CNN
F 2 "" V 3200 3400 50  0001 C CNN
F 3 "~" V 3200 3400 50  0001 C CNN
	1    3200 3400
	0    1    1    0   
$EndComp
$Comp
L 00-cool_stuff:cap_small C?
U 1 1 5D4DBDF9
P 3950 3400
F 0 "C?" V 3904 3492 50  0000 L CNN
F 1 "330nF" V 3995 3492 50  0000 L CNN
F 2 "" V 3950 3400 50  0001 C CNN
F 3 "~" V 3950 3400 50  0001 C CNN
	1    3950 3400
	0    1    1    0   
$EndComp
Connection ~ 3200 3200
Wire Wire Line
	3200 3300 3200 3200
Wire Wire Line
	3200 3200 3300 3200
Wire Wire Line
	2850 3200 3200 3200
Wire Wire Line
	3200 3500 3200 3600
Wire Wire Line
	3200 3600 3600 3600
Connection ~ 3600 3600
Wire Wire Line
	3600 3600 3600 3500
Wire Wire Line
	3600 3600 3950 3600
Wire Wire Line
	3950 3600 3950 3500
Wire Wire Line
	3950 3300 3950 3200
Connection ~ 3950 3200
Wire Wire Line
	3950 3200 3900 3200
$EndSCHEMATC
