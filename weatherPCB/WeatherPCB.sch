EESchema Schematic File Version 4
LIBS:WeatherPCB-cache
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Weather Station PCB"
Date ""
Rev "1.0"
Comp "github.com/mwyoung"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L wemos_mini:WeMos_mini U2
U 1 1 5D654E45
P 5500 3300
F 0 "U2" H 5500 3650 60  0000 C CNN
F 1 "WeMos_mini" H 5500 2650 60  0000 C CNN
F 2 "Modules2:WEMOS_D1_mini_light" H 6050 2600 60  0001 C CNN
F 3 "https://wiki.wemos.cc/_media/products:d1:sch_d1_mini_v3.0.0.pdf" H 5500 3831 60  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B076F53B6S/" H 0   0   50  0001 C CNN "Where to Buy"
	1    5500 3300
	-1   0    0    1   
$EndComp
$Comp
L WeatherPCB_Components:TFTLCD_ST7735R U3
U 1 1 5D6562B8
P 7400 3200
F 0 "U3" H 7375 3765 50  0000 C CNN
F 1 "TFTLCD_ST7735R" H 7375 3674 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x16_Pitch2.54mm" H 7800 3600 50  0001 C CNN
F 3 "" H 7800 3600 50  0001 C CNN
F 4 "https://www.amazon.com/HiLetgo-ST7735R-128160-Display-Arduino/dp/B00LSG51MM" H 7750 4050 50  0001 C CNN "Where to Buy"
	1    7400 3200
	-1   0    0    -1  
$EndComp
NoConn ~ 6000 3500
NoConn ~ 5000 3400
NoConn ~ 5000 3500
Text Notes 5250 2400 0    50   ~ 0
PIN MAP\nLCD----ESP8266 (Old)\nRESET---D6 (D4)\nCS-----D8\nA0/DC--D0 (D3)\nSDA----D7\nSCL----D5
NoConn ~ 8050 3000
NoConn ~ 8050 3100
NoConn ~ 8050 3200
NoConn ~ 8050 3300
NoConn ~ 8050 3400
NoConn ~ 8050 3500
NoConn ~ 8050 3600
$Comp
L power:GND #PWR01
U 1 1 5D69B9AA
P 4600 2750
F 0 "#PWR01" H 4600 2500 50  0001 C CNN
F 1 "GND" H 4605 2577 50  0000 C CNN
F 2 "" H 4600 2750 50  0001 C CNN
F 3 "" H 4600 2750 50  0001 C CNN
	1    4600 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 5D69BA3D
P 4900 2750
F 0 "#PWR02" H 4900 2600 50  0001 C CNN
F 1 "+5V" H 4915 2923 50  0000 C CNN
F 2 "" H 4900 2750 50  0001 C CNN
F 3 "" H 4900 2750 50  0001 C CNN
	1    4900 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 5D69BAB3
P 6150 2750
F 0 "#PWR03" H 6150 2600 50  0001 C CNN
F 1 "+3.3V" H 6165 2923 50  0000 C CNN
F 2 "" H 6150 2750 50  0001 C CNN
F 3 "" H 6150 2750 50  0001 C CNN
	1    6150 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2800 6150 2800
Wire Wire Line
	6150 2800 6150 2750
Wire Wire Line
	5000 2800 4900 2800
Wire Wire Line
	4900 2800 4900 2750
Wire Wire Line
	5000 2900 4800 2900
Wire Wire Line
	4800 2900 4800 2700
Wire Wire Line
	4800 2700 4600 2700
Wire Wire Line
	4600 2700 4600 2750
Wire Wire Line
	6000 2900 6350 2900
Wire Wire Line
	6350 2900 6350 3500
Wire Wire Line
	6350 3500 6800 3500
Wire Wire Line
	6800 3400 6250 3400
Wire Wire Line
	6250 3400 6250 3200
Wire Wire Line
	6250 3200 6000 3200
Wire Wire Line
	6000 3300 6400 3300
Wire Wire Line
	6400 3300 6400 3200
Wire Wire Line
	6400 3200 6800 3200
Wire Wire Line
	6000 3100 6800 3100
Wire Wire Line
	6000 3000 6450 3000
Wire Wire Line
	6450 3000 6450 3300
Wire Wire Line
	6450 3300 6800 3300
$Comp
L power:GND #PWR05
U 1 1 5D69CD81
P 6550 2850
F 0 "#PWR05" H 6550 2600 50  0001 C CNN
F 1 "GND" H 6555 2677 50  0000 C CNN
F 2 "" H 6550 2850 50  0001 C CNN
F 3 "" H 6550 2850 50  0001 C CNN
	1    6550 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 5D69CD90
P 6750 2850
F 0 "#PWR06" H 6750 2700 50  0001 C CNN
F 1 "+5V" H 6765 3023 50  0000 C CNN
F 2 "" H 6750 2850 50  0001 C CNN
F 3 "" H 6750 2850 50  0001 C CNN
	1    6750 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2900 6750 2900
Wire Wire Line
	6750 2900 6750 2850
Wire Wire Line
	6800 3000 6650 3000
Wire Wire Line
	6650 3000 6650 2800
Wire Wire Line
	6650 2800 6550 2800
Wire Wire Line
	6550 2800 6550 2850
$Comp
L power:GND #PWR09
U 1 1 5D69D756
P 6700 3800
F 0 "#PWR09" H 6700 3550 50  0001 C CNN
F 1 "GND" H 6705 3627 50  0000 C CNN
F 2 "" H 6700 3800 50  0001 C CNN
F 3 "" H 6700 3800 50  0001 C CNN
	1    6700 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3800 6700 3700
Wire Wire Line
	6700 3700 6800 3700
$Comp
L digikey-kicad-library:2N4401-ND Q2
U 1 1 5D69BEDE
P 4550 4600
F 0 "Q2" H 4737 4653 60  0000 L CNN
F 1 "2N4401-ND" H 4000 4400 60  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 4816 4978 60  0001 L CNN
F 3 "" H 4750 4900 60  0001 L CNN
F 4 "https://www.digikey.com/product-detail/en/micro-commercial-co/2N4401-AP/2N4401-APCT-ND/950593" H 0   0   50  0001 C CNN "Where to Buy"
	1    4550 4600
	1    0    0    -1  
$EndComp
Text Notes 4750 2975 0    30   ~ 0
BUILTIN_LED
$Comp
L digikey-kicad-library:2N4403-ND Q1
U 1 1 5D69C8C7
P 5100 4400
F 0 "Q1" H 5287 4453 60  0000 L CNN
F 1 "2N4403-ND" H 4900 4100 60  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 5400 4700 60  0001 L CNN
F 3 "" H 5300 4700 60  0001 L CNN
F 4 "https://www.digikey.com/product-detail/en/micro-commercial-co/2N4403-AP/2N4403-APCT-ND/950594" H 0   0   50  0001 C CNN "Where to Buy"
	1    5100 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR010
U 1 1 5D69E044
P 5200 3950
F 0 "#PWR010" H 5200 3800 50  0001 C CNN
F 1 "+3.3V" H 5215 4123 50  0000 C CNN
F 2 "" H 5200 3950 50  0001 C CNN
F 3 "" H 5200 3950 50  0001 C CNN
	1    5200 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 5D69E708
P 4650 4200
F 0 "R3" V 4445 4200 50  0000 C CNN
F 1 "4.7k" V 4536 4200 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4690 4190 50  0001 C CNN
F 3 "~" H 4650 4200 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/stackpole-electronics-inc/CF14JT4K70/CF14JT4K70CT-ND/1830366" H 0   0   50  0001 C CNN "Where to Buy"
	1    4650 4200
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R1
U 1 1 5D69E765
P 4300 3950
F 0 "R1" H 4232 3904 50  0000 R CNN
F 1 "4.7k" H 4232 3995 50  0000 R CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4340 3940 50  0001 C CNN
F 3 "~" H 4300 3950 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/stackpole-electronics-inc/CF14JT4K70/CF14JT4K70CT-ND/1830366" H 0   0   50  0001 C CNN "Where to Buy"
	1    4300 3950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5D69E835
P 4650 4800
F 0 "#PWR013" H 4650 4550 50  0001 C CNN
F 1 "GND" H 4655 4627 50  0000 C CNN
F 2 "" H 4650 4800 50  0001 C CNN
F 3 "" H 4650 4800 50  0001 C CNN
	1    4650 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3800 4300 3100
Wire Wire Line
	4300 4600 4300 4100
Text Notes 4200 5150 0    50   ~ 0
Could use only resistor, or single PNP\nFor safety, using both
Wire Wire Line
	4300 3100 5000 3100
Wire Wire Line
	5900 3600 6800 3600
$Comp
L Device:R_US R2
U 1 1 5D6B65AE
P 6100 4150
F 0 "R2" H 6168 4196 50  0000 L CNN
F 1 "220" H 6168 4105 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 6140 4140 50  0001 C CNN
F 3 "~" H 6100 4150 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/stackpole-electronics-inc/CF14JT220R/CF14JT220RCT-ND/1830334" H 0   0   50  0001 C CNN "Where to Buy"
	1    6100 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R6
U 1 1 5D6B6647
P 6100 4900
F 0 "R6" H 6168 4946 50  0000 L CNN
F 1 "10k" H 6168 4855 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 6140 4890 50  0001 C CNN
F 3 "~" H 6100 4900 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/stackpole-electronics-inc/CF14JT10K0/CF14JT10K0CT-ND/1830374" H 0   0   50  0001 C CNN "Where to Buy"
	1    6100 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_PHOTO R5
U 1 1 5D6B739F
P 6100 4500
F 0 "R5" H 6170 4546 50  0000 L CNN
F 1 "70-36k" H 6170 4455 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 6150 4250 50  0001 L CNN
F 3 "~" H 6100 4450 50  0001 C CNN
F 4 "https://www.amazon.com/GeeBat-Photoresistor-Resistors-Light-dependen-Optoresistor/dp/B01N0GJ6QP/ref=sr_1_9?keywords=photoresistor&qid=1568421612&sr=8-9" H 0   0   50  0001 C CNN "Where to Buy"
	1    6100 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4350 6100 4300
Wire Wire Line
	6100 4750 6100 4700
$Comp
L Device:C_Small C1
U 1 1 5D6B98B3
P 6500 4900
F 0 "C1" H 6592 4946 50  0000 L CNN
F 1 "0.1u" H 6592 4855 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D7.0mm_W2.5mm_P5.00mm" H 6500 4900 50  0001 C CNN
F 3 "~" H 6500 4900 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/avx-corporation/SR215C104KAR/478-3188-ND/936830" H 0   0   50  0001 C CNN "Where to Buy"
	1    6500 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4700 6500 4700
Wire Wire Line
	6500 4700 6500 4800
Connection ~ 6100 4700
Wire Wire Line
	6100 4700 6100 4650
Wire Wire Line
	6100 3400 6000 3400
Connection ~ 6500 4700
$Comp
L power:+3.3V #PWR011
U 1 1 5D6BCE0A
P 6100 3950
F 0 "#PWR011" H 6100 3800 50  0001 C CNN
F 1 "+3.3V" H 6115 4123 50  0000 C CNN
F 2 "" H 6100 3950 50  0001 C CNN
F 3 "" H 6100 3950 50  0001 C CNN
	1    6100 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4000 6100 3950
$Comp
L power:GND #PWR014
U 1 1 5D6BE7BB
P 6300 5150
F 0 "#PWR014" H 6300 4900 50  0001 C CNN
F 1 "GND" H 6305 4977 50  0000 C CNN
F 2 "" H 6300 5150 50  0001 C CNN
F 3 "" H 6300 5150 50  0001 C CNN
	1    6300 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5000 6500 5100
Wire Wire Line
	6500 5100 6300 5100
Wire Wire Line
	6100 5100 6100 5050
Wire Wire Line
	6300 5150 6300 5100
Connection ~ 6300 5100
Wire Wire Line
	6300 5100 6100 5100
Text Notes 5900 5550 0    50   ~ 0
Resistor above R_Photo for safety\nCapacitor smooths out ADC voltage
Wire Wire Line
	4350 4600 4300 4600
Wire Wire Line
	6500 4700 6500 3700
Wire Wire Line
	6500 3700 6100 3700
Wire Wire Line
	6100 3700 6100 3400
Wire Wire Line
	5200 4650 5200 4600
$Comp
L power:+3.3V #PWR08
U 1 1 5D76A74F
P 3000 3550
F 0 "#PWR08" H 3000 3400 50  0001 C CNN
F 1 "+3.3V" H 3015 3723 50  0000 C CNN
F 2 "" H 3000 3550 50  0001 C CNN
F 3 "" H 3000 3550 50  0001 C CNN
	1    3000 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5D76A7B9
P 3000 4500
F 0 "#PWR012" H 3000 4250 50  0001 C CNN
F 1 "GND" H 3005 4327 50  0000 C CNN
F 2 "" H 3000 4500 50  0001 C CNN
F 3 "" H 3000 4500 50  0001 C CNN
	1    3000 4500
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5D76A877
P 3000 3800
F 0 "SW1" V 2954 3948 50  0000 L CNN
F 1 "SW_Push" V 3045 3948 50  0000 L CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h5mm" H 3000 4000 50  0001 C CNN
F 3 "" H 3000 4000 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/te-connectivity-alcoswitch-switches/1825910-6/450-1650-ND/1632536" H 3000 3800 50  0001 C CNN "Where to Buy"
	1    3000 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R4
U 1 1 5D76AA6E
P 3000 4250
F 0 "R4" H 3068 4296 50  0000 L CNN
F 1 "10k" H 3068 4205 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3040 4240 50  0001 C CNN
F 3 "~" H 3000 4250 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/stackpole-electronics-inc/CF14JT10K0/CF14JT10K0CT-ND/1830374" H 0   0   50  0001 C CNN "Where to Buy"
	1    3000 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3600 3000 3550
Wire Wire Line
	3000 4500 3000 4400
Wire Wire Line
	3000 4000 3000 4050
Wire Wire Line
	4050 4050 4050 3300
Wire Wire Line
	4050 3300 5000 3300
$Comp
L WeatherPCB_Components:PIR_MTN_SNR U1
U 1 1 5D76F590
P 3400 2500
F 0 "U1" H 3600 2450 50  0000 L CNN
F 1 "PIR_MTN_SNR" H 3600 2350 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x03_Pitch2.54mm" H 3400 2500 50  0001 C CNN
F 3 "" H 3400 2500 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B07LF47TRC" H 0   0   50  0001 C CNN "Where to Buy"
	1    3400 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3200 3400 3200
Wire Wire Line
	3400 3200 3400 2900
$Comp
L power:GND #PWR07
U 1 1 5D770DDA
P 3500 2950
F 0 "#PWR07" H 3500 2700 50  0001 C CNN
F 1 "GND" H 3505 2777 50  0000 C CNN
F 2 "" H 3500 2950 50  0001 C CNN
F 3 "" H 3500 2950 50  0001 C CNN
	1    3500 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR04
U 1 1 5D770E2A
P 3050 2800
F 0 "#PWR04" H 3050 2650 50  0001 C CNN
F 1 "+3.3V" H 3065 2973 50  0000 C CNN
F 2 "" H 3050 2800 50  0001 C CNN
F 3 "" H 3050 2800 50  0001 C CNN
	1    3050 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2950 3500 2900
Wire Wire Line
	3300 2900 3300 2950
Wire Wire Line
	3300 2950 3050 2950
Wire Wire Line
	3050 2950 3050 2800
Text Notes 3600 2800 0    30   ~ 0
Smaller model - volt reg side up
Wire Wire Line
	4650 4350 4650 4400
Wire Wire Line
	4900 4400 4650 4400
Connection ~ 4650 4400
Wire Wire Line
	5200 4650 5450 4650
Wire Wire Line
	5200 4050 5200 4200
Wire Wire Line
	4650 4050 5200 4050
Connection ~ 5200 4050
Wire Wire Line
	3000 4050 4050 4050
Connection ~ 3000 4050
Wire Wire Line
	3000 4050 3000 4100
$Comp
L Switch:SW_SPDT SW2
U 1 1 5D7AFB50
P 5650 4150
F 0 "SW2" H 5650 3850 50  0000 C CNN
F 1 "SW_SPDT" H 5700 3950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 5650 4150 50  0001 C CNN
F 3 "" H 5650 4150 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B007QAJUUS/" H 0   0   50  0001 C CNN "Where to Buy"
	1    5650 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 3600 5900 4150
Wire Wire Line
	5450 4250 5450 4650
Wire Wire Line
	5450 4050 5350 4050
Wire Wire Line
	5350 4050 5350 4000
Wire Wire Line
	5350 4000 5200 4000
Wire Wire Line
	5200 4000 5200 4050
Wire Wire Line
	5200 4000 5200 3950
Connection ~ 5200 4000
$Comp
L power:GND #PWR0101
U 1 1 5D7DAD12
P 4270 5410
F 0 "#PWR0101" H 4270 5160 50  0001 C CNN
F 1 "GND" H 4275 5237 50  0000 C CNN
F 2 "" H 4270 5410 50  0001 C CNN
F 3 "" H 4270 5410 50  0001 C CNN
	1    4270 5410
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0102
U 1 1 5D7DADA4
P 4520 5410
F 0 "#PWR0102" H 4520 5210 50  0001 C CNN
F 1 "GNDPWR" H 4524 5256 50  0000 C CNN
F 2 "" H 4520 5360 50  0001 C CNN
F 3 "" H 4520 5360 50  0001 C CNN
	1    4520 5410
	1    0    0    -1  
$EndComp
Wire Wire Line
	4520 5410 4520 5310
Wire Wire Line
	4520 5310 4270 5310
Wire Wire Line
	4270 5310 4270 5410
$Comp
L power:+3.3V #PWR0103
U 1 1 5D7DD273
P 3970 5460
F 0 "#PWR0103" H 3970 5310 50  0001 C CNN
F 1 "+3.3V" H 3985 5633 50  0000 C CNN
F 2 "" H 3970 5460 50  0001 C CNN
F 3 "" H 3970 5460 50  0001 C CNN
	1    3970 5460
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5D7DD2FE
P 3670 5460
F 0 "#FLG0101" H 3670 5535 50  0001 C CNN
F 1 "PWR_FLAG" H 3670 5634 50  0000 C CNN
F 2 "" H 3670 5460 50  0001 C CNN
F 3 "~" H 3670 5460 50  0001 C CNN
	1    3670 5460
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5D7DD3BD
P 2920 5460
F 0 "#PWR0104" H 2920 5310 50  0001 C CNN
F 1 "+5V" H 2935 5633 50  0000 C CNN
F 2 "" H 2920 5460 50  0001 C CNN
F 3 "" H 2920 5460 50  0001 C CNN
	1    2920 5460
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5D7DD3EB
P 3220 5460
F 0 "#FLG0102" H 3220 5535 50  0001 C CNN
F 1 "PWR_FLAG" H 3220 5634 50  0000 C CNN
F 2 "" H 3220 5460 50  0001 C CNN
F 3 "~" H 3220 5460 50  0001 C CNN
	1    3220 5460
	1    0    0    -1  
$EndComp
Wire Wire Line
	3970 5460 3970 5610
Wire Wire Line
	3970 5610 3670 5610
Wire Wire Line
	3670 5610 3670 5460
Wire Wire Line
	3220 5460 3220 5610
Wire Wire Line
	3220 5610 2920 5610
Wire Wire Line
	2920 5610 2920 5460
Wire Wire Line
	5900 4150 5850 4150
$Comp
L Mechanical:MountingHole H4
U 1 1 5D803844
P 6920 4410
F 0 "H4" H 7020 4456 50  0000 L CNN
F 1 "MountingHole" H 7020 4365 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_2.7mm" H 6920 4410 50  0001 C CNN
F 3 "~" H 6920 4410 50  0001 C CNN
	1    6920 4410
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5D805BF3
P 6920 4260
F 0 "H3" H 7020 4306 50  0000 L CNN
F 1 "MountingHole" H 7020 4215 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_2.7mm" H 6920 4260 50  0001 C CNN
F 3 "~" H 6920 4260 50  0001 C CNN
	1    6920 4260
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5D805C29
P 6920 4110
F 0 "H2" H 7020 4156 50  0000 L CNN
F 1 "MountingHole" H 7020 4065 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_2.7mm" H 6920 4110 50  0001 C CNN
F 3 "~" H 6920 4110 50  0001 C CNN
	1    6920 4110
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5D805C61
P 6920 3960
F 0 "H1" H 7020 4006 50  0000 L CNN
F 1 "MountingHole" H 7020 3915 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_2.7mm" H 6920 3960 50  0001 C CNN
F 3 "~" H 6920 3960 50  0001 C CNN
	1    6920 3960
	1    0    0    -1  
$EndComp
Text Notes 3240 4400 0    50   ~ 0
Optionally, can use 4.7k \nresistors instead of 10k \n(or vice versa).
$Comp
L Sensor_Temperature:DS1822 U4
U 1 1 5DA67D1B
P 4350 2025
F 0 "U4" H 4120 2071 50  0000 R CNN
F 1 "DS1822" H 4120 1980 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 3350 1775 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS1822.pdf" H 4200 2275 50  0001 C CNN
	1    4350 2025
	1    0    0    -1  
$EndComp
Wire Wire Line
	5025 3000 5000 3000
Wire Wire Line
	4475 3000 4475 2375
Wire Wire Line
	4475 2375 4700 2375
Wire Wire Line
	4700 2375 4700 2025
Wire Wire Line
	4700 2025 4650 2025
Connection ~ 5000 3000
Wire Wire Line
	5000 3000 4475 3000
Text Notes 3750 1900 0    50   ~ 0
OPTIONAL
$Comp
L power:GND #PWR0105
U 1 1 5DA6A555
P 4350 2375
F 0 "#PWR0105" H 4350 2125 50  0001 C CNN
F 1 "GND" H 4355 2202 50  0000 C CNN
F 2 "" H 4350 2375 50  0001 C CNN
F 3 "" H 4350 2375 50  0001 C CNN
	1    4350 2375
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0106
U 1 1 5DA6A586
P 4350 1675
F 0 "#PWR0106" H 4350 1525 50  0001 C CNN
F 1 "+3.3V" H 4365 1848 50  0000 C CNN
F 2 "" H 4350 1675 50  0001 C CNN
F 3 "" H 4350 1675 50  0001 C CNN
	1    4350 1675
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2375 4350 2325
Wire Wire Line
	4350 1725 4350 1675
$EndSCHEMATC
