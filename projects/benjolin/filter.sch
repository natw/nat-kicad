EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1150 2550 0    50   Input ~ 0
TRIANGLE2
Text HLabel 1150 2350 0    50   Input ~ 0
TRIANGLE1
Wire Wire Line
	1150 2550 1250 2550
Wire Wire Line
	1150 2350 1250 2350
Text HLabel 2100 3550 2    50   Output ~ 0
PWM_OUT
$Comp
L 00-cool_stuff:resistor R37
U 1 1 5CB96900
P 2100 2250
F 0 "R37" V 1954 2318 50  0000 L CNN
F 1 "150k" V 2045 2318 50  0000 L CNN
F 2 "00-Mine:resistor-TH-10mm" H 2010 2290 50  0001 C CNN
F 3 "~" V 2000 2250 50  0001 C CNN
	1    2100 2250
	0    1    1    0   
$EndComp
$Comp
L 00-cool_stuff:resistor R40
U 1 1 5CB97A59
P 2450 2600
F 0 "R40" V 2304 2668 50  0000 L CNN
F 1 "10k" V 2395 2668 50  0000 L CNN
F 2 "00-Mine:resistor-TH-10mm" H 2360 2640 50  0001 C CNN
F 3 "~" V 2350 2600 50  0001 C CNN
	1    2450 2600
	0    1    1    0   
$EndComp
$Comp
L 00-cool_stuff:0V #PWR?
U 1 1 5CB98C43
P 2450 2750
AR Path="/5CB98C43" Ref="#PWR?"  Part="1" 
AR Path="/5CB2CC25/5CB98C43" Ref="#PWR?"  Part="1" 
AR Path="/5CB8FD1C/5CB98C43" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 2450 2500 50  0001 C CNN
F 1 "0V" H 2455 2577 50  0000 C CNN
F 2 "" H 2450 2750 50  0001 C CNN
F 3 "" H 2450 2750 50  0001 C CNN
	1    2450 2750
	1    0    0    -1  
$EndComp
Text HLabel 1250 1700 0    50   Input ~ 0
RUNGLER_CV
$Comp
L 00-cool_stuff:resistor R32
U 1 1 5CB99376
P 2000 1700
F 0 "R32" H 1900 1800 50  0000 C CNN
F 1 "51k" H 1900 1600 50  0000 C CNN
F 2 "00-Mine:resistor-TH-10mm" H 1910 1740 50  0001 C CNN
F 3 "~" V 1900 1700 50  0001 C CNN
	1    2000 1700
	1    0    0    -1  
$EndComp
$Comp
L 00-cool_stuff:0V #PWR?
U 1 1 5CB9C25E
P 2850 1950
AR Path="/5CB9C25E" Ref="#PWR?"  Part="1" 
AR Path="/5CB2CC25/5CB9C25E" Ref="#PWR?"  Part="1" 
AR Path="/5CB8FD1C/5CB9C25E" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 2850 1700 50  0001 C CNN
F 1 "0V" H 2855 1777 50  0000 C CNN
F 2 "" H 2850 1950 50  0001 C CNN
F 3 "" H 2850 1950 50  0001 C CNN
	1    2850 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1950 2850 1900
Wire Wire Line
	2850 1900 2950 1900
Wire Wire Line
	2700 1150 2700 1700
Wire Wire Line
	2700 1700 2950 1700
$Comp
L 00-cool_stuff:resistor R31
U 1 1 5CB9FF9C
P 3350 1150
F 0 "R31" H 3250 1250 50  0000 C CNN
F 1 "30k" H 3250 1050 50  0000 C CNN
F 2 "00-Mine:resistor-TH-10mm" H 3260 1190 50  0001 C CNN
F 3 "~" V 3250 1150 50  0001 C CNN
	1    3350 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1150 2700 1150
Connection ~ 2700 1150
Wire Wire Line
	3400 1150 3600 1150
Wire Wire Line
	3600 1150 3600 1800
Wire Wire Line
	3600 1800 3550 1800
$Comp
L 00-cool_stuff:resistor R34
U 1 1 5CBACD46
P 3950 1800
F 0 "R34" H 3850 1900 50  0000 C CNN
F 1 "30k" H 3850 1700 50  0000 C CNN
F 2 "00-Mine:resistor-TH-10mm" H 3860 1840 50  0001 C CNN
F 3 "~" V 3850 1800 50  0001 C CNN
	1    3950 1800
	1    0    0    -1  
$EndComp
$Comp
L 4ms-ic:V2164 U4
U 3 1 5CBAE059
P 5150 1800
F 0 "U4" H 5250 1650 60  0000 C CNN
F 1 "V2164" H 5300 1950 60  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 5150 1800 60  0001 C CNN
F 3 "" H 5150 1800 60  0000 C CNN
	3    5150 1800
	1    0    0    1   
$EndComp
$Comp
L 00-cool_stuff:resistor R36
U 1 1 5CBB1FCF
P 4100 2200
F 0 "R36" V 3954 2268 50  0000 L CNN
F 1 "510R" V 4045 2268 50  0000 L CNN
F 2 "00-Mine:resistor-TH-10mm" H 4010 2240 50  0001 C CNN
F 3 "~" V 4000 2200 50  0001 C CNN
	1    4100 2200
	0    1    1    0   
$EndComp
$Comp
L 00-cool_stuff:cap_small C17
U 1 1 5CBB3772
P 4100 2500
F 0 "C17" V 4146 2408 50  0000 R CNN
F 1 "560p" V 4055 2408 50  0000 R CNN
F 2 "00-Mine:capacitor-TH-2.54mm_5mm" V 4100 2500 50  0001 C CNN
F 3 "~" V 4100 2500 50  0001 C CNN
	1    4100 2500
	0    -1   -1   0   
$EndComp
$Comp
L 00-cool_stuff:0V #PWR?
U 1 1 5CBB66C3
P 4100 2700
AR Path="/5CBB66C3" Ref="#PWR?"  Part="1" 
AR Path="/5CB2CC25/5CBB66C3" Ref="#PWR?"  Part="1" 
AR Path="/5CB8FD1C/5CBB66C3" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 4100 2450 50  0001 C CNN
F 1 "0V" H 4105 2527 50  0000 C CNN
F 2 "" H 4100 2700 50  0001 C CNN
F 3 "" H 4100 2700 50  0001 C CNN
	1    4100 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2700 4100 2600
Wire Wire Line
	4100 2400 4100 2250
Wire Wire Line
	4100 1950 4100 1800
Wire Wire Line
	5550 1800 5850 1800
$Comp
L 00-cool_stuff:0V #PWR?
U 1 1 5CBBBE08
P 5850 2000
AR Path="/5CBBBE08" Ref="#PWR?"  Part="1" 
AR Path="/5CB2CC25/5CBBBE08" Ref="#PWR?"  Part="1" 
AR Path="/5CB8FD1C/5CBBBE08" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 5850 1750 50  0001 C CNN
F 1 "0V" H 5850 1850 50  0000 C CNN
F 2 "" H 5850 2000 50  0001 C CNN
F 3 "" H 5850 2000 50  0001 C CNN
	1    5850 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2000 5950 2000
$Comp
L 00-cool_stuff:cap_small C13
U 1 1 5CBBF482
P 6250 1350
F 0 "C13" H 6250 1579 50  0000 C CNN
F 1 "220p" H 6250 1488 50  0000 C CNN
F 2 "00-Mine:capacitor-TH-2.54mm_5mm" V 6250 1350 50  0001 C CNN
F 3 "~" V 6250 1350 50  0001 C CNN
	1    6250 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 1350 5850 1350
Wire Wire Line
	5850 1350 5850 1800
Connection ~ 5850 1800
Wire Wire Line
	5850 1800 5950 1800
Wire Wire Line
	6550 1900 6650 1900
Wire Wire Line
	6650 1900 6650 1350
Wire Wire Line
	6650 1350 6350 1350
$Comp
L 00-cool_stuff:resistor R35
U 1 1 5CBC189C
P 7050 1900
F 0 "R35" H 6950 2000 50  0000 C CNN
F 1 "30k" H 6950 1800 50  0000 C CNN
F 2 "00-Mine:resistor-TH-10mm" H 6960 1940 50  0001 C CNN
F 3 "~" V 6950 1900 50  0001 C CNN
	1    7050 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 1900 6800 1900
Connection ~ 6650 1900
$Comp
L 4ms-ic:V2164 U4
U 4 1 5CBC303B
P 8600 1900
F 0 "U4" H 8650 1700 60  0000 C CNN
F 1 "V2164" H 8700 2100 60  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 8600 1900 60  0001 C CNN
F 3 "" H 8600 1900 60  0000 C CNN
	4    8600 1900
	1    0    0    1   
$EndComp
Wire Wire Line
	4650 1000 4650 1550
$Comp
L 00-cool_stuff:cap_small C15
U 1 1 5CBC98F0
P 9200 1900
F 0 "C15" H 9100 1950 50  0000 C CNN
F 1 "220p" H 9050 1850 50  0000 C CNN
F 2 "00-Mine:capacitor-TH-2.54mm_5mm" V 9200 1900 50  0001 C CNN
F 3 "~" V 9200 1900 50  0001 C CNN
	1    9200 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 1900 9100 1900
Wire Wire Line
	9300 1900 9350 1900
$Comp
L 00-cool_stuff:0V #PWR?
U 1 1 5CBCC1A2
P 9350 2150
AR Path="/5CBCC1A2" Ref="#PWR?"  Part="1" 
AR Path="/5CB2CC25/5CBCC1A2" Ref="#PWR?"  Part="1" 
AR Path="/5CB8FD1C/5CBCC1A2" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 9350 1900 50  0001 C CNN
F 1 "0V" H 9355 1977 50  0000 C CNN
F 2 "" H 9350 2150 50  0001 C CNN
F 3 "" H 9350 2150 50  0001 C CNN
	1    9350 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 2150 9350 2100
Wire Wire Line
	9350 2100 9400 2100
$Comp
L 00-cool_stuff:cap_small C14
U 1 1 5CBCD038
P 9700 1450
F 0 "C14" H 9800 1500 50  0000 C CNN
F 1 "220p" H 9850 1400 50  0000 C CNN
F 2 "00-Mine:capacitor-TH-2.54mm_5mm" V 9700 1450 50  0001 C CNN
F 3 "~" V 9700 1450 50  0001 C CNN
	1    9700 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1450 9350 1450
Wire Wire Line
	9350 1450 9350 1900
Connection ~ 9350 1900
Wire Wire Line
	9350 1900 9400 1900
Wire Wire Line
	10000 2000 10100 2000
Wire Wire Line
	10100 2000 10100 1450
Wire Wire Line
	10100 1450 9800 1450
$Comp
L 00-cool_stuff:resistor R38
U 1 1 5CBCFDD7
P 7150 2250
F 0 "R38" V 7004 2318 50  0000 L CNN
F 1 "510R" V 7095 2318 50  0000 L CNN
F 2 "00-Mine:resistor-TH-10mm" H 7060 2290 50  0001 C CNN
F 3 "~" V 7050 2250 50  0001 C CNN
	1    7150 2250
	0    1    1    0   
$EndComp
$Comp
L 00-cool_stuff:cap_small C18
U 1 1 5CBCFDE1
P 7150 2550
F 0 "C18" V 7196 2458 50  0000 R CNN
F 1 "560p" V 7105 2458 50  0000 R CNN
F 2 "00-Mine:capacitor-TH-2.54mm_5mm" V 7150 2550 50  0001 C CNN
F 3 "~" V 7150 2550 50  0001 C CNN
	1    7150 2550
	0    -1   -1   0   
$EndComp
$Comp
L 00-cool_stuff:0V #PWR?
U 1 1 5CBCFDEB
P 7150 2750
AR Path="/5CBCFDEB" Ref="#PWR?"  Part="1" 
AR Path="/5CB2CC25/5CBCFDEB" Ref="#PWR?"  Part="1" 
AR Path="/5CB8FD1C/5CBCFDEB" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 7150 2500 50  0001 C CNN
F 1 "0V" H 7155 2577 50  0000 C CNN
F 2 "" H 7150 2750 50  0001 C CNN
F 3 "" H 7150 2750 50  0001 C CNN
	1    7150 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2750 7150 2650
Wire Wire Line
	7150 2450 7150 2300
$Comp
L 00-cool_stuff:resistor R39
U 1 1 5CBD6F59
P 9000 2550
F 0 "R39" H 8900 2650 50  0000 C CNN
F 1 "470k" H 8900 2450 50  0000 C CNN
F 2 "00-Mine:resistor-TH-10mm" H 8910 2590 50  0001 C CNN
F 3 "~" V 8900 2550 50  0001 C CNN
	1    9000 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 2550 10100 2550
Connection ~ 10100 2000
Wire Wire Line
	8750 2550 8050 2550
Wire Wire Line
	7150 2000 7150 1900
$Comp
L 00-cool_stuff:cap_small C16
U 1 1 5CBEAEA5
P 5450 2250
F 0 "C16" H 5550 2300 50  0000 C CNN
F 1 "220p" H 5600 2200 50  0000 C CNN
F 2 "00-Mine:capacitor-TH-2.54mm_5mm" V 5450 2250 50  0001 C CNN
F 3 "~" V 5450 2250 50  0001 C CNN
	1    5450 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2250 6650 2250
Wire Wire Line
	6650 2250 6650 2000
Wire Wire Line
	5350 2250 4550 2250
Wire Wire Line
	4550 2250 4550 1800
Wire Wire Line
	4550 1800 4650 1800
Wire Wire Line
	3600 1800 3700 1800
Connection ~ 3600 1800
Wire Wire Line
	4000 1800 4100 1800
Wire Wire Line
	4100 1800 4450 1800
Connection ~ 4100 1800
Connection ~ 4550 1800
$Comp
L 00-cool_stuff:resistor R30
U 1 1 5CC16F53
P 5850 800
F 0 "R30" H 5750 900 50  0000 C CNN
F 1 "30k" H 5750 700 50  0000 C CNN
F 2 "00-Mine:resistor-TH-10mm" H 5760 840 50  0001 C CNN
F 3 "~" V 5750 800 50  0001 C CNN
	1    5850 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 800  2700 800 
Wire Wire Line
	2700 800  2700 1150
Wire Wire Line
	10100 800  10100 1450
Connection ~ 10100 1450
$Comp
L 00-cool_stuff:resistor R33
U 1 1 5CC21A47
P 2450 1700
F 0 "R33" H 2350 1800 50  0000 C CNN
F 1 "100k" H 2350 1600 50  0000 C CNN
F 2 "00-Mine:resistor-TH-10mm" H 2360 1740 50  0001 C CNN
F 3 "~" V 2350 1700 50  0001 C CNN
	1    2450 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1700 1750 1700
Wire Wire Line
	2050 1700 2100 1700
Wire Wire Line
	2500 1700 2700 1700
Connection ~ 2700 1700
Wire Wire Line
	2100 2000 2100 1950
Connection ~ 2100 1700
Wire Wire Line
	2100 1700 2200 1700
Wire Wire Line
	1850 2450 1950 2450
Wire Wire Line
	2100 2300 2100 2450
Wire Wire Line
	2100 1950 2450 1950
Connection ~ 2100 1950
Wire Wire Line
	2100 1950 2100 1700
Wire Wire Line
	2450 1950 2450 2250
Wire Wire Line
	2450 2650 2450 2750
Connection ~ 1950 2450
Wire Wire Line
	1950 2450 2100 2450
$Comp
L 00-cool_stuff:resistor R44
U 1 1 5CC394C2
P 4200 4250
F 0 "R44" H 4100 4350 50  0000 C CNN
F 1 "100k" H 4100 4150 50  0000 C CNN
F 2 "00-Mine:resistor-TH-10mm" H 4110 4290 50  0001 C CNN
F 3 "~" V 4100 4250 50  0001 C CNN
	1    4200 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2250 2800 2250
Wire Wire Line
	2800 2250 2800 4250
Wire Wire Line
	2800 4250 3950 4250
Connection ~ 2450 2250
Wire Wire Line
	2450 2250 2450 2350
Wire Wire Line
	4250 4250 5650 4250
$Comp
L 00-cool_stuff:TL074-f-separate U10
U 1 1 5CC54D04
P 1550 2450
F 0 "U10" H 1550 2817 50  0000 C CNN
F 1 "TL074" H 1550 2726 50  0000 C CNN
F 2 "00-Mine:DIP-8" H 1500 2550 50  0001 C CNN
F 3 "" H 1600 2650 50  0001 C CNN
	1    1550 2450
	1    0    0    -1  
$EndComp
$Comp
L 00-cool_stuff:resistor R41
U 1 1 5CC617F6
P 4950 2750
F 0 "R41" H 4850 2850 50  0000 C CNN
F 1 "15k" H 4850 2650 50  0000 C CNN
F 2 "00-Mine:resistor-TH-10mm" H 4860 2790 50  0001 C CNN
F 3 "~" V 4850 2750 50  0001 C CNN
	1    4950 2750
	1    0    0    -1  
$EndComp
$Comp
L 00-cool_stuff:resistor R42
U 1 1 5CC62158
P 5250 3100
F 0 "R42" V 5104 3168 50  0000 L CNN
F 1 "1k5" V 5195 3168 50  0000 L CNN
F 2 "00-Mine:resistor-TH-10mm" H 5160 3140 50  0001 C CNN
F 3 "~" V 5150 3100 50  0001 C CNN
	1    5250 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 2750 5250 2750
Wire Wire Line
	5250 2750 5250 2850
Wire Wire Line
	4700 2750 4450 2750
Wire Wire Line
	4450 2750 4450 1800
Connection ~ 4450 1800
Wire Wire Line
	4450 1800 4550 1800
Wire Wire Line
	5250 2750 5450 2750
Connection ~ 5250 2750
$Comp
L 00-cool_stuff:0V #PWR?
U 1 1 5CC6E399
P 5600 3350
AR Path="/5CC6E399" Ref="#PWR?"  Part="1" 
AR Path="/5CB2CC25/5CC6E399" Ref="#PWR?"  Part="1" 
AR Path="/5CB8FD1C/5CC6E399" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 5600 3100 50  0001 C CNN
F 1 "0V" H 5605 3177 50  0000 C CNN
F 2 "" H 5600 3350 50  0001 C CNN
F 3 "" H 5600 3350 50  0001 C CNN
	1    5600 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3350 5600 3250
$Comp
L 00-cool_stuff:resistor R43
U 1 1 5CC76C38
P 6100 3700
F 0 "R43" H 6000 3800 50  0000 C CNN
F 1 "30k" H 6000 3600 50  0000 C CNN
F 2 "00-Mine:resistor-TH-10mm" H 6010 3740 50  0001 C CNN
F 3 "~" V 6000 3700 50  0001 C CNN
	1    6100 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3700 5650 3700
Wire Wire Line
	5650 3700 5650 4250
Connection ~ 5650 4250
Wire Wire Line
	5650 4250 5750 4250
Wire Wire Line
	6350 4350 6400 4350
Wire Wire Line
	6400 4350 6400 3700
Wire Wire Line
	6400 3700 6150 3700
Wire Wire Line
	5600 2600 5600 2500
Wire Wire Line
	5600 2500 6650 2500
Wire Wire Line
	6650 2500 6650 4350
Wire Wire Line
	6650 4350 6400 4350
Connection ~ 6400 4350
Wire Wire Line
	5750 4450 5650 4450
Wire Wire Line
	5650 4450 5650 4900
Wire Wire Line
	5650 4900 6800 4900
Wire Wire Line
	6650 2000 6800 2000
Wire Wire Line
	6800 2000 6800 4900
Connection ~ 6650 2000
Wire Wire Line
	6650 2000 6650 1900
$Comp
L 00-cool_stuff:resistor R45
U 1 1 5CC99D6A
P 5400 4450
F 0 "R45" H 5300 4550 50  0000 C CNN
F 1 "100k" H 5300 4350 50  0000 C CNN
F 2 "00-Mine:resistor-TH-10mm" H 5310 4490 50  0001 C CNN
F 3 "~" V 5300 4450 50  0001 C CNN
	1    5400 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4450 5650 4450
Connection ~ 5650 4450
$Comp
L 00-cool_stuff:0V #PWR?
U 1 1 5CCA631A
P 5050 6150
AR Path="/5CCA631A" Ref="#PWR?"  Part="1" 
AR Path="/5CB2CC25/5CCA631A" Ref="#PWR?"  Part="1" 
AR Path="/5CB8FD1C/5CCA631A" Ref="#PWR049"  Part="1" 
F 0 "#PWR049" H 5050 5900 50  0001 C CNN
F 1 "0V" H 5055 5977 50  0000 C CNN
F 2 "" H 5050 6150 50  0001 C CNN
F 3 "" H 5050 6150 50  0001 C CNN
	1    5050 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 6150 5050 6100
Wire Wire Line
	5050 6100 5100 6100
$Comp
L 00-cool_stuff:diode D7
U 1 1 5CCAA729
P 5400 5500
F 0 "D7" H 5400 5600 50  0000 C CNN
F 1 "1n4148" H 5400 5400 50  0000 C CNN
F 2 "00-Mine:diode-TH" H 5400 5500 50  0001 C CNN
F 3 "~" H 5400 5500 50  0001 C CNN
	1    5400 5500
	1    0    0    -1  
$EndComp
$Comp
L 00-cool_stuff:resistor R46
U 1 1 5CCAB2BC
P 5500 5150
F 0 "R46" H 5400 5250 50  0000 C CNN
F 1 "10k" H 5400 5050 50  0000 C CNN
F 2 "00-Mine:resistor-TH-10mm" H 5410 5190 50  0001 C CNN
F 3 "~" V 5400 5150 50  0001 C CNN
	1    5500 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 6000 5800 6000
Wire Wire Line
	5550 5500 5800 5500
Wire Wire Line
	5100 5900 5000 5900
Wire Wire Line
	5000 5900 5000 5500
Wire Wire Line
	5000 5150 5250 5150
Wire Wire Line
	5250 5500 5000 5500
Connection ~ 5000 5500
Wire Wire Line
	5000 5500 5000 5150
Wire Wire Line
	5800 5500 5800 6000
$Comp
L 00-cool_stuff:diode D8
U 1 1 5CCC3E07
P 6100 6000
F 0 "D8" H 6100 6100 50  0000 C CNN
F 1 "1n4148" H 6100 5900 50  0000 C CNN
F 2 "00-Mine:diode-TH" H 6100 6000 50  0001 C CNN
F 3 "~" H 6100 6000 50  0001 C CNN
	1    6100 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 6000 5800 6000
Connection ~ 5800 6000
Wire Wire Line
	6250 6000 6350 6000
Wire Wire Line
	6350 6000 6350 5150
Wire Wire Line
	5550 5150 6350 5150
Connection ~ 6350 6000
Wire Wire Line
	5150 4450 5000 4450
Wire Wire Line
	5000 4450 5000 5150
Connection ~ 5000 5150
Wire Wire Line
	8100 1000 8100 1650
Wire Wire Line
	1950 3550 2100 3550
Wire Wire Line
	1950 2450 1950 3550
Text HLabel 10350 2000 2    50   Output ~ 0
LP_OUT
Wire Wire Line
	10350 2000 10100 2000
Wire Wire Line
	5250 3150 5250 3250
Wire Wire Line
	5250 3250 5600 3250
Connection ~ 5600 3250
Wire Wire Line
	5600 3250 5600 2900
Wire Wire Line
	3400 6200 3400 6250
Wire Wire Line
	3300 6200 3400 6200
Wire Wire Line
	2900 6200 3000 6200
Wire Wire Line
	2900 6250 2900 6200
$Comp
L 00-cool_stuff:0V #PWR?
U 1 1 5CCD9D1B
P 3400 6250
AR Path="/5CCD9D1B" Ref="#PWR?"  Part="1" 
AR Path="/5CB2CC25/5CCD9D1B" Ref="#PWR?"  Part="1" 
AR Path="/5CB8FD1C/5CCD9D1B" Ref="#PWR053"  Part="1" 
F 0 "#PWR053" H 3400 6000 50  0001 C CNN
F 1 "0V" H 3405 6077 50  0000 C CNN
F 2 "" H 3400 6250 50  0001 C CNN
F 3 "" H 3400 6250 50  0001 C CNN
	1    3400 6250
	1    0    0    -1  
$EndComp
$Comp
L 00-cool_stuff:Vee #PWR052
U 1 1 5CCD985E
P 2900 6250
F 0 "#PWR052" H 2900 6350 50  0001 C CNN
F 1 "Vee" H 2915 6423 50  0000 C CNN
F 2 "" H 2900 6250 50  0001 C CNN
F 3 "" H 2900 6250 50  0001 C CNN
	1    2900 6250
	1    0    0    1   
$EndComp
$Comp
L 00-cool_stuff:potentiometer RV11
U 1 1 5CCD87C3
P 3150 6200
F 0 "RV11" V 3037 6200 50  0000 C CNN
F 1 "10k" V 2946 6200 50  0000 C CNN
F 2 "00-Mine:MOLEX-1X3_LOCK" H 3150 6200 50  0001 C CNN
F 3 "~" H 3150 6200 50  0001 C CNN
F 4 "Cutoff Offset" V 2855 6200 31  0000 C CNN "Label"
	1    3150 6200
	0    1    -1   0   
$EndComp
$Comp
L 00-cool_stuff:resistor R49
U 1 1 5CCD75D3
P 4000 5900
F 0 "R49" H 3900 5695 50  0000 C CNN
F 1 "51k" H 3900 5786 50  0000 C CNN
F 2 "00-Mine:MOLEX-1X3_LOCK" H 3910 5940 50  0001 C CNN
F 3 "~" V 3900 5900 50  0001 C CNN
	1    4000 5900
	-1   0    0    1   
$EndComp
$Comp
L 00-cool_stuff:potentiometer RV8
U 1 1 5CC6A68A
P 5600 2750
F 0 "RV8" H 5532 2704 50  0000 R CNN
F 1 "10k" H 5532 2795 50  0000 R CNN
F 2 "00-Mine:MOLEX-1X3_LOCK" H 5600 2750 50  0001 C CNN
F 3 "~" H 5600 2750 50  0001 C CNN
F 4 "Resonance" H 5550 2900 50  0000 R CNN "Label"
	1    5600 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	7100 1900 7150 1900
Wire Wire Line
	4650 1000 7500 1000
Wire Wire Line
	5900 800  10100 800 
Wire Wire Line
	7500 1000 7500 6000
Wire Wire Line
	6350 6000 7500 6000
Connection ~ 7500 1000
Wire Wire Line
	7500 1000 8100 1000
Connection ~ 7150 1900
Wire Wire Line
	3950 5900 3150 5900
Wire Wire Line
	3150 5900 3150 6050
$Comp
L 00-cool_stuff:TL074-f-separate U10
U 5 1 5D4B086D
P 9800 4000
F 0 "U10" H 10030 4046 50  0000 L CNN
F 1 "TL074" H 10030 3955 50  0000 L CNN
F 2 "00-Mine:DIP-8" H 9750 4100 50  0001 C CNN
F 3 "" H 9850 4200 50  0001 C CNN
	5    9800 4000
	1    0    0    -1  
$EndComp
$Comp
L 00-cool_stuff:TL072-separate U11
U 1 1 5D755777
P 6050 4350
F 0 "U11" H 6050 4717 50  0000 C CNN
F 1 "TL072" H 6050 4626 50  0000 C CNN
F 2 "00-Mine:DIP-8" H 6050 4350 50  0001 C CNN
F 3 "" H 6050 4350 50  0001 C CNN
	1    6050 4350
	1    0    0    -1  
$EndComp
$Comp
L 00-cool_stuff:TL072-separate U11
U 2 1 5D756311
P 5400 6000
F 0 "U11" H 5400 5725 50  0000 C CNN
F 1 "TL072" H 5400 5634 50  0000 C CNN
F 2 "00-Mine:DIP-8" H 5400 6000 50  0001 C CNN
F 3 "" H 5400 6000 50  0001 C CNN
	2    5400 6000
	1    0    0    -1  
$EndComp
$Comp
L 00-cool_stuff:TL072-separate U11
U 3 1 5D756E31
P 9800 5550
F 0 "U11" H 10030 5596 50  0000 L CNN
F 1 "TL072" H 10030 5505 50  0000 L CNN
F 2 "00-Mine:DIP-8" H 9800 5550 50  0001 C CNN
F 3 "" H 9800 5550 50  0001 C CNN
	3    9800 5550
	1    0    0    -1  
$EndComp
$Comp
L 00-cool_stuff:TL074-f-separate U10
U 2 1 5D896F7D
P 3250 1800
F 0 "U10" H 3250 2167 50  0000 C CNN
F 1 "TL074" H 3250 2076 50  0000 C CNN
F 2 "00-Mine:DIP-8" H 3200 1900 50  0001 C CNN
F 3 "" H 3300 2000 50  0001 C CNN
	2    3250 1800
	1    0    0    -1  
$EndComp
$Comp
L 00-cool_stuff:TL074-f-separate U10
U 3 1 5D8983B9
P 6250 1900
F 0 "U10" H 6250 2267 50  0000 C CNN
F 1 "TL074" H 6250 2176 50  0000 C CNN
F 2 "00-Mine:DIP-8" H 6200 2000 50  0001 C CNN
F 3 "" H 6300 2100 50  0001 C CNN
	3    6250 1900
	1    0    0    -1  
$EndComp
$Comp
L 00-cool_stuff:TL074-f-separate U10
U 4 1 5D899796
P 9700 2000
F 0 "U10" H 9700 2367 50  0000 C CNN
F 1 "TL074" H 9700 2276 50  0000 C CNN
F 2 "00-Mine:DIP-8" H 9650 2100 50  0001 C CNN
F 3 "" H 9750 2200 50  0001 C CNN
	4    9700 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1900 8050 1900
Wire Wire Line
	8050 1900 8050 2550
Connection ~ 8050 1900
Wire Wire Line
	8050 1900 8100 1900
Wire Wire Line
	10100 2000 10100 2550
Wire Wire Line
	4250 5900 4650 5900
Connection ~ 5000 5900
Text HLabel 2400 5400 0    50   Input ~ 0
CUTOFF_CV
Wire Wire Line
	2400 5400 4650 5400
Wire Wire Line
	4650 5400 4650 5900
Connection ~ 4650 5900
Wire Wire Line
	4650 5900 5000 5900
$Comp
L 00-cool_stuff:Vcc #PWR?
U 1 1 5EFAE76F
P 9700 3500
AR Path="/5CB2CC25/5EFAE76F" Ref="#PWR?"  Part="1" 
AR Path="/5CB8FD1C/5EFAE76F" Ref="#PWR0120"  Part="1" 
F 0 "#PWR0120" H 9700 3350 50  0001 C CNN
F 1 "Vcc" H 9715 3673 50  0000 C CNN
F 2 "" H 9700 3500 50  0001 C CNN
F 3 "" H 9700 3500 50  0001 C CNN
	1    9700 3500
	1    0    0    -1  
$EndComp
$Comp
L 00-cool_stuff:Vee #PWR?
U 1 1 5EFAE775
P 9700 4500
AR Path="/5CB2CC25/5EFAE775" Ref="#PWR?"  Part="1" 
AR Path="/5CB8FD1C/5EFAE775" Ref="#PWR0121"  Part="1" 
F 0 "#PWR0121" H 9700 4600 50  0001 C CNN
F 1 "Vee" H 9715 4673 50  0000 C CNN
F 2 "" H 9700 4500 50  0001 C CNN
F 3 "" H 9700 4500 50  0001 C CNN
	1    9700 4500
	-1   0    0    1   
$EndComp
Wire Wire Line
	9700 4500 9700 4400
$Comp
L 00-cool_stuff:cap_small C?
U 1 1 5EFAE782
P 10000 3600
AR Path="/5CB2CC25/5EFAE782" Ref="C?"  Part="1" 
AR Path="/5CB8FD1C/5EFAE782" Ref="C23"  Part="1" 
F 0 "C23" H 10000 3829 50  0000 C CNN
F 1 "100n" H 10000 3738 50  0000 C CNN
F 2 "00-Mine:capacitor-TH-2.54mm_5mm" V 10000 3600 50  0001 C CNN
F 3 "~" V 10000 3600 50  0001 C CNN
	1    10000 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 3600 9700 3600
Wire Wire Line
	9700 3600 9700 3500
$Comp
L 00-cool_stuff:cap_small C?
U 1 1 5EFAE78B
P 10000 4400
AR Path="/5CB2CC25/5EFAE78B" Ref="C?"  Part="1" 
AR Path="/5CB8FD1C/5EFAE78B" Ref="C24"  Part="1" 
F 0 "C24" H 10000 4629 50  0000 C CNN
F 1 "100n" H 10000 4538 50  0000 C CNN
F 2 "00-Mine:capacitor-TH-2.54mm_5mm" V 10000 4400 50  0001 C CNN
F 3 "~" V 10000 4400 50  0001 C CNN
	1    10000 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 4400 9900 4400
$Comp
L 00-cool_stuff:0V #PWR?
U 1 1 5EFAE793
P 10400 4500
AR Path="/5CB2CC25/5EFAE793" Ref="#PWR?"  Part="1" 
AR Path="/5CB8FD1C/5EFAE793" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 10400 4250 50  0001 C CNN
F 1 "0V" H 10405 4327 50  0000 C CNN
F 2 "" H 10400 4500 50  0001 C CNN
F 3 "" H 10400 4500 50  0001 C CNN
	1    10400 4500
	1    0    0    -1  
$EndComp
$Comp
L 00-cool_stuff:0V #PWR?
U 1 1 5EFAE799
P 10400 3700
AR Path="/5CB2CC25/5EFAE799" Ref="#PWR?"  Part="1" 
AR Path="/5CB8FD1C/5EFAE799" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 10400 3450 50  0001 C CNN
F 1 "0V" H 10405 3527 50  0000 C CNN
F 2 "" H 10400 3700 50  0001 C CNN
F 3 "" H 10400 3700 50  0001 C CNN
	1    10400 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 4500 10400 4400
Wire Wire Line
	10400 4400 10100 4400
Wire Wire Line
	10400 3700 10400 3600
Wire Wire Line
	10400 3600 10100 3600
$Comp
L 00-cool_stuff:Vcc #PWR?
U 1 1 5EFB574D
P 9700 5100
AR Path="/5CB2CC25/5EFB574D" Ref="#PWR?"  Part="1" 
AR Path="/5CB8FD1C/5EFB574D" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 9700 4950 50  0001 C CNN
F 1 "Vcc" H 9715 5273 50  0000 C CNN
F 2 "" H 9700 5100 50  0001 C CNN
F 3 "" H 9700 5100 50  0001 C CNN
	1    9700 5100
	1    0    0    -1  
$EndComp
$Comp
L 00-cool_stuff:Vee #PWR?
U 1 1 5EFB5753
P 9700 6100
AR Path="/5CB2CC25/5EFB5753" Ref="#PWR?"  Part="1" 
AR Path="/5CB8FD1C/5EFB5753" Ref="#PWR0125"  Part="1" 
F 0 "#PWR0125" H 9700 6200 50  0001 C CNN
F 1 "Vee" H 9715 6273 50  0000 C CNN
F 2 "" H 9700 6100 50  0001 C CNN
F 3 "" H 9700 6100 50  0001 C CNN
	1    9700 6100
	-1   0    0    1   
$EndComp
Wire Wire Line
	9700 6100 9700 6000
$Comp
L 00-cool_stuff:cap_small C?
U 1 1 5EFB5760
P 10000 5200
AR Path="/5CB2CC25/5EFB5760" Ref="C?"  Part="1" 
AR Path="/5CB8FD1C/5EFB5760" Ref="C25"  Part="1" 
F 0 "C25" H 10000 5429 50  0000 C CNN
F 1 "100n" H 10000 5338 50  0000 C CNN
F 2 "00-Mine:capacitor-TH-2.54mm_5mm" V 10000 5200 50  0001 C CNN
F 3 "~" V 10000 5200 50  0001 C CNN
	1    10000 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 5200 9700 5200
Connection ~ 9700 5200
Wire Wire Line
	9700 5200 9700 5100
$Comp
L 00-cool_stuff:cap_small C?
U 1 1 5EFB5769
P 10000 6000
AR Path="/5CB2CC25/5EFB5769" Ref="C?"  Part="1" 
AR Path="/5CB8FD1C/5EFB5769" Ref="C26"  Part="1" 
F 0 "C26" H 10000 6229 50  0000 C CNN
F 1 "100n" H 10000 6138 50  0000 C CNN
F 2 "00-Mine:capacitor-TH-2.54mm_5mm" V 10000 6000 50  0001 C CNN
F 3 "~" V 10000 6000 50  0001 C CNN
	1    10000 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 6000 9900 6000
Connection ~ 9700 6000
$Comp
L 00-cool_stuff:0V #PWR?
U 1 1 5EFB5771
P 10400 6100
AR Path="/5CB2CC25/5EFB5771" Ref="#PWR?"  Part="1" 
AR Path="/5CB8FD1C/5EFB5771" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 10400 5850 50  0001 C CNN
F 1 "0V" H 10405 5927 50  0000 C CNN
F 2 "" H 10400 6100 50  0001 C CNN
F 3 "" H 10400 6100 50  0001 C CNN
	1    10400 6100
	1    0    0    -1  
$EndComp
$Comp
L 00-cool_stuff:0V #PWR?
U 1 1 5EFB5777
P 10400 5300
AR Path="/5CB2CC25/5EFB5777" Ref="#PWR?"  Part="1" 
AR Path="/5CB8FD1C/5EFB5777" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 10400 5050 50  0001 C CNN
F 1 "0V" H 10405 5127 50  0000 C CNN
F 2 "" H 10400 5300 50  0001 C CNN
F 3 "" H 10400 5300 50  0001 C CNN
	1    10400 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 6100 10400 6000
Wire Wire Line
	10400 6000 10100 6000
Wire Wire Line
	10400 5300 10400 5200
Wire Wire Line
	10400 5200 10100 5200
Wire Wire Line
	9700 5200 9700 5300
Wire Wire Line
	9700 5800 9700 6000
Wire Wire Line
	9700 3700 9700 3600
Connection ~ 9700 3600
Wire Wire Line
	9700 4400 9700 4300
Connection ~ 9700 4400
$EndSCHEMATC
