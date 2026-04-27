;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Thu Aug 18 12:16:27 2016                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("reprog.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("sprintf"), DW_AT_symbol_name("_sprintf")
	.dwattr DW$1, DW_AT_type(*DW$T$10)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$49)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$64)
DW$4	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$1


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("DebugStringOut"), DW_AT_symbol_name("_DebugStringOut")
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$49)
	.dwendtag DW$5


DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("MastertoSlaveSendBuffer"), DW_AT_symbol_name("_MastertoSlaveSendBuffer")
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$7


DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("CLITransmitBuffer"), DW_AT_symbol_name("_CLITransmitBuffer")
	.dwattr DW$10, DW_AT_declaration(0x01)
	.dwattr DW$10, DW_AT_external(0x01)
DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$49)
	.dwendtag DW$10


DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("CalcCRC"), DW_AT_symbol_name("_CalcCRC")
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)
DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
	.dwendtag DW$12


DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("Slave485Modbus"), DW_AT_symbol_name("_Slave485Modbus")
	.dwattr DW$16, DW_AT_declaration(0x01)
	.dwattr DW$16, DW_AT_external(0x01)

DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("SPUUnitReset"), DW_AT_symbol_name("_SPUUnitReset")
	.dwattr DW$17, DW_AT_type(*DW$T$10)
	.dwattr DW$17, DW_AT_declaration(0x01)
	.dwattr DW$17, DW_AT_external(0x01)

DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("NOPDelay"), DW_AT_symbol_name("_NOPDelay")
	.dwattr DW$18, DW_AT_type(*DW$T$10)
	.dwattr DW$18, DW_AT_declaration(0x01)
	.dwattr DW$18, DW_AT_external(0x01)

DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("TransmitByte"), DW_AT_symbol_name("_TransmitByte")
	.dwattr DW$19, DW_AT_type(*DW$T$10)
	.dwattr DW$19, DW_AT_declaration(0x01)
	.dwattr DW$19, DW_AT_external(0x01)

DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("ReceiveByte"), DW_AT_symbol_name("_ReceiveByte")
	.dwattr DW$20, DW_AT_type(*DW$T$10)
	.dwattr DW$20, DW_AT_declaration(0x01)
	.dwattr DW$20, DW_AT_external(0x01)
DW$21	.dwtag  DW_TAG_variable, DW_AT_name("gpa"), DW_AT_symbol_name("_gpa")
	.dwattr DW$21, DW_AT_type(*DW$T$96)
	.dwattr DW$21, DW_AT_declaration(0x01)
	.dwattr DW$21, DW_AT_external(0x01)
DW$22	.dwtag  DW_TAG_variable, DW_AT_name("gpd"), DW_AT_symbol_name("_gpd")
	.dwattr DW$22, DW_AT_type(*DW$T$100)
	.dwattr DW$22, DW_AT_declaration(0x01)
	.dwattr DW$22, DW_AT_external(0x01)
DW$23	.dwtag  DW_TAG_variable, DW_AT_name("receiveA"), DW_AT_symbol_name("_receiveA")
	.dwattr DW$23, DW_AT_type(*DW$T$104)
	.dwattr DW$23, DW_AT_declaration(0x01)
	.dwattr DW$23, DW_AT_external(0x01)
DW$24	.dwtag  DW_TAG_variable, DW_AT_name("settings"), DW_AT_symbol_name("_settings")
	.dwattr DW$24, DW_AT_type(*DW$T$106)
	.dwattr DW$24, DW_AT_declaration(0x01)
	.dwattr DW$24, DW_AT_external(0x01)
DW$25	.dwtag  DW_TAG_variable, DW_AT_name("timers"), DW_AT_symbol_name("_timers")
	.dwattr DW$25, DW_AT_type(*DW$T$108)
	.dwattr DW$25, DW_AT_declaration(0x01)
	.dwattr DW$25, DW_AT_external(0x01)
DW$26	.dwtag  DW_TAG_variable, DW_AT_name("allsensors"), DW_AT_symbol_name("_allsensors")
	.dwattr DW$26, DW_AT_type(*DW$T$110)
	.dwattr DW$26, DW_AT_declaration(0x01)
	.dwattr DW$26, DW_AT_external(0x01)
DW$27	.dwtag  DW_TAG_variable, DW_AT_name("config"), DW_AT_symbol_name("_config")
	.dwattr DW$27, DW_AT_type(*DW$T$111)
	.dwattr DW$27, DW_AT_declaration(0x01)
	.dwattr DW$27, DW_AT_external(0x01)
DW$28	.dwtag  DW_TAG_variable, DW_AT_name("transferbuffer"), DW_AT_symbol_name("_transferbuffer")
	.dwattr DW$28, DW_AT_type(*DW$T$84)
	.dwattr DW$28, DW_AT_declaration(0x01)
	.dwattr DW$28, DW_AT_external(0x01)
DW$29	.dwtag  DW_TAG_variable, DW_AT_name("modbuscmdbuf"), DW_AT_symbol_name("_modbuscmdbuf")
	.dwattr DW$29, DW_AT_type(*DW$T$43)
	.dwattr DW$29, DW_AT_declaration(0x01)
	.dwattr DW$29, DW_AT_external(0x01)
DW$30	.dwtag  DW_TAG_variable, DW_AT_name("pcmodbus"), DW_AT_symbol_name("_pcmodbus")
	.dwattr DW$30, DW_AT_type(*DW$T$112)
	.dwattr DW$30, DW_AT_declaration(0x01)
	.dwattr DW$30, DW_AT_external(0x01)
DW$31	.dwtag  DW_TAG_variable, DW_AT_name("slave485mb"), DW_AT_symbol_name("_slave485mb")
	.dwattr DW$31, DW_AT_type(*DW$T$113)
	.dwattr DW$31, DW_AT_declaration(0x01)
	.dwattr DW$31, DW_AT_external(0x01)
DW$32	.dwtag  DW_TAG_variable, DW_AT_name("receivingmode"), DW_AT_symbol_name("_receivingmode")
	.dwattr DW$32, DW_AT_type(*DW$T$11)
	.dwattr DW$32, DW_AT_declaration(0x01)
	.dwattr DW$32, DW_AT_external(0x01)
DW$33	.dwtag  DW_TAG_variable, DW_AT_name("slaveresponsemsg"), DW_AT_symbol_name("_slaveresponsemsg")
	.dwattr DW$33, DW_AT_type(*DW$T$85)
	.dwattr DW$33, DW_AT_declaration(0x01)
	.dwattr DW$33, DW_AT_external(0x01)
DW$34	.dwtag  DW_TAG_variable, DW_AT_name("stringbuffer"), DW_AT_symbol_name("_stringbuffer")
	.dwattr DW$34, DW_AT_type(*DW$T$103)
	.dwattr DW$34, DW_AT_declaration(0x01)
	.dwattr DW$34, DW_AT_external(0x01)
	.global	_reprogram
_reprogram:	.usect	".ebss",16,1,1
DW$35	.dwtag  DW_TAG_variable, DW_AT_name("reprogram"), DW_AT_symbol_name("_reprogram")
	.dwattr DW$35, DW_AT_location[DW_OP_addr _reprogram]
	.dwattr DW$35, DW_AT_type(*DW$T$114)
	.dwattr DW$35, DW_AT_external(0x01)
	.global	_BootloaderArray
	.sect	".econst"
	.align	1
_BootloaderArray:
	.field  	8960,16			; _BootloaderArray[0] @ 0
	.field  	16128,16			; _BootloaderArray[1] @ 16
	.field  	32896,16			; _BootloaderArray[2] @ 32
	.field  	65279,16			; _BootloaderArray[3] @ 48
	.field  	5252,16			; _BootloaderArray[4] @ 64
	.field  	0,16			; _BootloaderArray[5] @ 80
	.field  	0,16			; _BootloaderArray[6] @ 96
	.field  	0,16			; _BootloaderArray[7] @ 112
	.field  	65279,16			; _BootloaderArray[8] @ 128
	.field  	5764,16			; _BootloaderArray[9] @ 144
	.field  	0,16			; _BootloaderArray[10] @ 160
	.field  	0,16			; _BootloaderArray[11] @ 176
	.field  	0,16			; _BootloaderArray[12] @ 192
	.field  	65535,16			; _BootloaderArray[13] @ 208
	.field  	16516,16			; _BootloaderArray[14] @ 224
	.field  	0,16			; _BootloaderArray[15] @ 240
	.field  	0,16			; _BootloaderArray[16] @ 256
	.field  	65279,16			; _BootloaderArray[17] @ 272
	.field  	17028,16			; _BootloaderArray[18] @ 288
	.field  	0,16			; _BootloaderArray[19] @ 304
	.field  	0,16			; _BootloaderArray[20] @ 320
	.field  	0,16			; _BootloaderArray[21] @ 336
	.field  	65279,16			; _BootloaderArray[22] @ 352
	.field  	17540,16			; _BootloaderArray[23] @ 368
	.field  	0,16			; _BootloaderArray[24] @ 384
	.field  	0,16			; _BootloaderArray[25] @ 400
	.field  	0,16			; _BootloaderArray[26] @ 416
	.field  	65279,16			; _BootloaderArray[27] @ 432
	.field  	4228,16			; _BootloaderArray[28] @ 448
	.field  	0,16			; _BootloaderArray[29] @ 464
	.field  	50568,16			; _BootloaderArray[30] @ 480
	.field  	16128,16			; _BootloaderArray[31] @ 496
	.field  	65279,16			; _BootloaderArray[32] @ 512
	.field  	4740,16			; _BootloaderArray[33] @ 528
	.field  	0,16			; _BootloaderArray[34] @ 544
	.field  	50568,16			; _BootloaderArray[35] @ 560
	.field  	16128,16			; _BootloaderArray[36] @ 576
	.field  	0,16			; _BootloaderArray[37] @ 592
	.field  	11016,16			; _BootloaderArray[38] @ 608
	.field  	16128,16			; _BootloaderArray[39] @ 624
	.field  	41856,16			; _BootloaderArray[40] @ 640
	.field  	48562,16			; _BootloaderArray[41] @ 656
	.field  	48546,16			; _BootloaderArray[42] @ 672
	.field  	766,16			; _BootloaderArray[43] @ 688
	.field  	16271,16			; _BootloaderArray[44] @ 704
	.field  	63615,16			; _BootloaderArray[45] @ 720
	.field  	43048,16			; _BootloaderArray[46] @ 736
	.field  	57089,16			; _BootloaderArray[47] @ 752
	.field  	8054,16			; _BootloaderArray[48] @ 768
	.field  	4098,16			; _BootloaderArray[49] @ 784
	.field  	16680,16			; _BootloaderArray[50] @ 800
	.field  	256,16			; _BootloaderArray[51] @ 816
	.field  	50322,16			; _BootloaderArray[52] @ 832
	.field  	16271,16			; _BootloaderArray[53] @ 848
	.field  	63871,16			; _BootloaderArray[54] @ 864
	.field  	49293,16			; _BootloaderArray[55] @ 880
	.field  	60528,16			; _BootloaderArray[56] @ 896
	.field  	50322,16			; _BootloaderArray[57] @ 912
	.field  	16271,16			; _BootloaderArray[58] @ 928
	.field  	64127,16			; _BootloaderArray[59] @ 944
	.field  	50322,16			; _BootloaderArray[60] @ 960
	.field  	16271,16			; _BootloaderArray[61] @ 976
	.field  	64383,16			; _BootloaderArray[62] @ 992
	.field  	50322,16			; _BootloaderArray[63] @ 1008
	.field  	16271,16			; _BootloaderArray[64] @ 1024
	.field  	64639,16			; _BootloaderArray[65] @ 1040
	.field  	50322,16			; _BootloaderArray[66] @ 1056
	.field  	16271,16			; _BootloaderArray[67] @ 1072
	.field  	64895,16			; _BootloaderArray[68] @ 1088
	.field  	50322,16			; _BootloaderArray[69] @ 1104
	.field  	16271,16			; _BootloaderArray[70] @ 1120
	.field  	65151,16			; _BootloaderArray[71] @ 1136
	.field  	50322,16			; _BootloaderArray[72] @ 1152
	.field  	16271,16			; _BootloaderArray[73] @ 1168
	.field  	65407,16			; _BootloaderArray[74] @ 1184
	.field  	50322,16			; _BootloaderArray[75] @ 1200
	.field  	43304,16			; _BootloaderArray[76] @ 1216
	.field  	56313,16			; _BootloaderArray[77] @ 1232
	.field  	5662,16			; _BootloaderArray[78] @ 1248
	.field  	8054,16			; _BootloaderArray[79] @ 1264
	.field  	4098,16			; _BootloaderArray[80] @ 1280
	.field  	2,16			; _BootloaderArray[81] @ 1296
	.field  	5150,16			; _BootloaderArray[82] @ 1312
	.field  	49946,16			; _BootloaderArray[83] @ 1328
	.field  	512,16			; _BootloaderArray[84] @ 1344
	.field  	32630,16			; _BootloaderArray[85] @ 1360
	.field  	48257,16			; _BootloaderArray[86] @ 1376
	.field  	32630,16			; _BootloaderArray[87] @ 1392
	.field  	64129,16			; _BootloaderArray[88] @ 1408
	.field  	32630,16			; _BootloaderArray[89] @ 1424
	.field  	22658,16			; _BootloaderArray[90] @ 1440
	.field  	32630,16			; _BootloaderArray[91] @ 1456
	.field  	35201,16			; _BootloaderArray[92] @ 1472
	.field  	43304,16			; _BootloaderArray[93] @ 1488
	.field  	65283,16			; _BootloaderArray[94] @ 1504
	.field  	143,16			; _BootloaderArray[95] @ 1520
	.field  	1668,16			; _BootloaderArray[96] @ 1536
	.field  	32630,16			; _BootloaderArray[97] @ 1552
	.field  	36739,16			; _BootloaderArray[98] @ 1568
	.field  	32630,16			; _BootloaderArray[99] @ 1584
	.field  	10881,16			; _BootloaderArray[100] @ 1600
	.field  	49944,16			; _BootloaderArray[101] @ 1616
	.field  	65023,16			; _BootloaderArray[102] @ 1632
	.field  	43304,16			; _BootloaderArray[103] @ 1648
	.field  	49377,16			; _BootloaderArray[104] @ 1664
	.field  	58523,16			; _BootloaderArray[105] @ 1680
	.field  	32630,16			; _BootloaderArray[106] @ 1696
	.field  	32897,16			; _BootloaderArray[107] @ 1712
	.field  	49946,16			; _BootloaderArray[108] @ 1728
	.field  	512,16			; _BootloaderArray[109] @ 1744
	.field  	8054,16			; _BootloaderArray[110] @ 1760
	.field  	4098,16			; _BootloaderArray[111] @ 1776
	.field  	2,16			; _BootloaderArray[112] @ 1792
	.field  	1054,16			; _BootloaderArray[113] @ 1808
	.field  	209,16			; _BootloaderArray[114] @ 1824
	.field  	410,16			; _BootloaderArray[115] @ 1840
	.field  	8054,16			; _BootloaderArray[116] @ 1856
	.field  	2,16			; _BootloaderArray[117] @ 1872
	.field  	406,16			; _BootloaderArray[118] @ 1888
	.field  	5100,16			; _BootloaderArray[119] @ 1904
	.field  	49946,16			; _BootloaderArray[120] @ 1920
	.field  	512,16			; _BootloaderArray[121] @ 1936
	.field  	32630,16			; _BootloaderArray[122] @ 1952
	.field  	45954,16			; _BootloaderArray[123] @ 1968
	.field  	49944,16			; _BootloaderArray[124] @ 1984
	.field  	65023,16			; _BootloaderArray[125] @ 2000
	.field  	43442,16			; _BootloaderArray[126] @ 2016
	.field  	32630,16			; _BootloaderArray[127] @ 2032
	.field  	2689,16			; _BootloaderArray[128] @ 2048
	.field  	82,16			; _BootloaderArray[129] @ 2064
	.field  	1004,16			; _BootloaderArray[130] @ 2080
	.field  	32512,16			; _BootloaderArray[131] @ 2096
	.field  	128,16			; _BootloaderArray[132] @ 2112
	.field  	8054,16			; _BootloaderArray[133] @ 2128
	.field  	2,16			; _BootloaderArray[134] @ 2144
	.field  	473,16			; _BootloaderArray[135] @ 2160
	.field  	402,16			; _BootloaderArray[136] @ 2176
	.field  	61421,16			; _BootloaderArray[137] @ 2192
	.field  	32630,16			; _BootloaderArray[138] @ 2208
	.field  	31105,16			; _BootloaderArray[139] @ 2224
	.field  	33534,16			; _BootloaderArray[140] @ 2240
	.field  	48770,16			; _BootloaderArray[141] @ 2256
	.field  	48779,16			; _BootloaderArray[142] @ 2272
	.field  	1536,16			; _BootloaderArray[143] @ 2288
	.field  	48562,16			; _BootloaderArray[144] @ 2304
	.field  	8054,16			; _BootloaderArray[145] @ 2320
	.field  	2,16			; _BootloaderArray[146] @ 2336
	.field  	48554,16			; _BootloaderArray[147] @ 2352
	.field  	43398,16			; _BootloaderArray[148] @ 2368
	.field  	766,16			; _BootloaderArray[149] @ 2384
	.field  	402,16			; _BootloaderArray[150] @ 2400
	.field  	5100,16			; _BootloaderArray[151] @ 2416
	.field  	143,16			; _BootloaderArray[152] @ 2432
	.field  	2692,16			; _BootloaderArray[153] @ 2448
	.field  	8054,16			; _BootloaderArray[154] @ 2464
	.field  	2,16			; _BootloaderArray[155] @ 2480
	.field  	17064,16			; _BootloaderArray[156] @ 2496
	.field  	650,16			; _BootloaderArray[157] @ 2512
	.field  	43278,16			; _BootloaderArray[158] @ 2528
	.field  	16527,16			; _BootloaderArray[159] @ 2544
	.field  	1152,16			; _BootloaderArray[160] @ 2560
	.field  	32630,16			; _BootloaderArray[161] @ 2576
	.field  	21637,16			; _BootloaderArray[162] @ 2592
	.field  	43353,16			; _BootloaderArray[163] @ 2608
	.field  	43434,16			; _BootloaderArray[164] @ 2624
	.field  	32630,16			; _BootloaderArray[165] @ 2640
	.field  	22401,16			; _BootloaderArray[166] @ 2656
	.field  	41362,16			; _BootloaderArray[167] @ 2672
	.field  	53078,16			; _BootloaderArray[168] @ 2688
	.field  	1024,16			; _BootloaderArray[169] @ 2704
	.field  	32630,16			; _BootloaderArray[170] @ 2720
	.field  	31105,16			; _BootloaderArray[171] @ 2736
	.field  	33534,16			; _BootloaderArray[172] @ 2752
	.field  	48774,16			; _BootloaderArray[173] @ 2768
	.field  	48779,16			; _BootloaderArray[174] @ 2784
	.field  	1536,16			; _BootloaderArray[175] @ 2800
	.field  	82,16			; _BootloaderArray[176] @ 2816
	.field  	48562,16			; _BootloaderArray[177] @ 2832
	.field  	6637,16			; _BootloaderArray[178] @ 2848
	.field  	209,16			; _BootloaderArray[179] @ 2864
	.field  	17818,16			; _BootloaderArray[180] @ 2880
	.field  	32630,16			; _BootloaderArray[181] @ 2896
	.field  	14978,16			; _BootloaderArray[182] @ 2912
	.field  	17306,16			; _BootloaderArray[183] @ 2928
	.field  	32630,16			; _BootloaderArray[184] @ 2944
	.field  	14978,16			; _BootloaderArray[185] @ 2960
	.field  	20634,16			; _BootloaderArray[186] @ 2976
	.field  	32630,16			; _BootloaderArray[187] @ 2992
	.field  	14978,16			; _BootloaderArray[188] @ 3008
	.field  	43304,16			; _BootloaderArray[189] @ 3024
	.field  	24803,16			; _BootloaderArray[190] @ 3040
	.field  	5787,16			; _BootloaderArray[191] @ 3056
	.field  	32630,16			; _BootloaderArray[192] @ 3072
	.field  	32897,16			; _BootloaderArray[193] @ 3088
	.field  	41362,16			; _BootloaderArray[194] @ 3104
	.field  	412,16			; _BootloaderArray[195] @ 3120
	.field  	1362,16			; _BootloaderArray[196] @ 3136
	.field  	43353,16			; _BootloaderArray[197] @ 3152
	.field  	50262,16			; _BootloaderArray[198] @ 3168
	.field  	61183,16			; _BootloaderArray[199] @ 3184
	.field  	154,16			; _BootloaderArray[200] @ 3200
	.field  	53078,16			; _BootloaderArray[201] @ 3216
	.field  	4608,16			; _BootloaderArray[202] @ 3232
	.field  	17818,16			; _BootloaderArray[203] @ 3248
	.field  	32630,16			; _BootloaderArray[204] @ 3264
	.field  	14978,16			; _BootloaderArray[205] @ 3280
	.field  	17306,16			; _BootloaderArray[206] @ 3296
	.field  	32630,16			; _BootloaderArray[207] @ 3312
	.field  	14978,16			; _BootloaderArray[208] @ 3328
	.field  	18074,16			; _BootloaderArray[209] @ 3344
	.field  	32630,16			; _BootloaderArray[210] @ 3360
	.field  	14978,16			; _BootloaderArray[211] @ 3376
	.field  	43304,16			; _BootloaderArray[212] @ 3392
	.field  	57456,16			; _BootloaderArray[213] @ 3408
	.field  	29339,16			; _BootloaderArray[214] @ 3424
	.field  	32630,16			; _BootloaderArray[215] @ 3440
	.field  	32897,16			; _BootloaderArray[216] @ 3456
	.field  	32630,16			; _BootloaderArray[217] @ 3472
	.field  	31105,16			; _BootloaderArray[218] @ 3488
	.field  	48779,16			; _BootloaderArray[219] @ 3504
	.field  	1536,16			; _BootloaderArray[220] @ 3520
	.field  	48562,16			; _BootloaderArray[221] @ 3536
	.field  	43403,16			; _BootloaderArray[222] @ 3552
	.field  	17050,16			; _BootloaderArray[223] @ 3568
	.field  	32630,16			; _BootloaderArray[224] @ 3584
	.field  	14978,16			; _BootloaderArray[225] @ 3600
	.field  	17306,16			; _BootloaderArray[226] @ 3616
	.field  	32630,16			; _BootloaderArray[227] @ 3632
	.field  	14978,16			; _BootloaderArray[228] @ 3648
	.field  	44072,16			; _BootloaderArray[229] @ 3664
	.field  	6144,16			; _BootloaderArray[230] @ 3680
	.field  	43442,16			; _BootloaderArray[231] @ 3696
	.field  	8790,16			; _BootloaderArray[232] @ 3712
	.field  	32630,16			; _BootloaderArray[233] @ 3728
	.field  	14978,16			; _BootloaderArray[234] @ 3744
	.field  	43442,16			; _BootloaderArray[235] @ 3760
	.field  	43022,16			; _BootloaderArray[236] @ 3776
	.field  	32630,16			; _BootloaderArray[237] @ 3792
	.field  	14978,16			; _BootloaderArray[238] @ 3808
	.field  	43442,16			; _BootloaderArray[239] @ 3824
	.field  	297,16			; _BootloaderArray[240] @ 3840
	.field  	18431,16			; _BootloaderArray[241] @ 3856
	.field  	32630,16			; _BootloaderArray[242] @ 3872
	.field  	14978,16			; _BootloaderArray[243] @ 3888
	.field  	43442,16			; _BootloaderArray[244] @ 3904
	.field  	65424,16			; _BootloaderArray[245] @ 3920
	.field  	32630,16			; _BootloaderArray[246] @ 3936
	.field  	14978,16			; _BootloaderArray[247] @ 3952
	.field  	43304,16			; _BootloaderArray[248] @ 3968
	.field  	45169,16			; _BootloaderArray[249] @ 3984
	.field  	2971,16			; _BootloaderArray[250] @ 4000
	.field  	32630,16			; _BootloaderArray[251] @ 4016
	.field  	32897,16			; _BootloaderArray[252] @ 4032
	.field  	48779,16			; _BootloaderArray[253] @ 4048
	.field  	1536,16			; _BootloaderArray[254] @ 4064
	.field  	8822,16			; _BootloaderArray[255] @ 4080
	.field  	12186,16			; _BootloaderArray[256] @ 4096
	.field  	43508,16			; _BootloaderArray[257] @ 4112
	.field  	10608,16			; _BootloaderArray[258] @ 4128
	.field  	6774,16			; _BootloaderArray[259] @ 4144
	.field  	53078,16			; _BootloaderArray[260] @ 4160
	.field  	0,16			; _BootloaderArray[261] @ 4176
	.field  	212,16			; _BootloaderArray[262] @ 4192
	.field  	22783,16			; _BootloaderArray[263] @ 4208
	.field  	1772,16			; _BootloaderArray[264] @ 4224
	.field  	119,16			; _BootloaderArray[265] @ 4240
	.field  	476,16			; _BootloaderArray[266] @ 4256
	.field  	41999,16			; _BootloaderArray[267] @ 4272
	.field  	50774,16			; _BootloaderArray[268] @ 4288
	.field  	65023,16			; _BootloaderArray[269] @ 4304
	.field  	1536,16			; _BootloaderArray[270] @ 4320
	.field  	182,16			; _BootloaderArray[271] @ 4336
	.field  	53078,16			; _BootloaderArray[272] @ 4352
	.field  	3584,16			; _BootloaderArray[273] @ 4368
	.field  	594,16			; _BootloaderArray[274] @ 4384
	.field  	2797,16			; _BootloaderArray[275] @ 4400
	.field  	8054,16			; _BootloaderArray[276] @ 4416
	.field  	49921,16			; _BootloaderArray[277] @ 4432
	.field  	11328,16			; _BootloaderArray[278] @ 4448
	.field  	1775,16			; _BootloaderArray[279] @ 4464
	.field  	8054,16			; _BootloaderArray[280] @ 4480
	.field  	4098,16			; _BootloaderArray[281] @ 4496
	.field  	3627,16			; _BootloaderArray[282] @ 4512
	.field  	53078,16			; _BootloaderArray[283] @ 4528
	.field  	6912,16			; _BootloaderArray[284] @ 4544
	.field  	438,16			; _BootloaderArray[285] @ 4560
	.field  	8054,16			; _BootloaderArray[286] @ 4576
	.field  	49921,16			; _BootloaderArray[287] @ 4592
	.field  	11328,16			; _BootloaderArray[288] @ 4608
	.field  	1263,16			; _BootloaderArray[289] @ 4624
	.field  	702,16			; _BootloaderArray[290] @ 4640
	.field  	53078,16			; _BootloaderArray[291] @ 4656
	.field  	768,16			; _BootloaderArray[292] @ 4672
	.field  	446,16			; _BootloaderArray[293] @ 4688
	.field  	43304,16			; _BootloaderArray[294] @ 4704
	.field  	57456,16			; _BootloaderArray[295] @ 4720
	.field  	29339,16			; _BootloaderArray[296] @ 4736
	.field  	32630,16			; _BootloaderArray[297] @ 4752
	.field  	32897,16			; _BootloaderArray[298] @ 4768
	.field  	42642,16			; _BootloaderArray[299] @ 4784
	.field  	338,16			; _BootloaderArray[300] @ 4800
	.field  	58861,16			; _BootloaderArray[301] @ 4816
	.field  	8054,16			; _BootloaderArray[302] @ 4832
	.field  	49921,16			; _BootloaderArray[303] @ 4848
	.field  	11328,16			; _BootloaderArray[304] @ 4864
	.field  	57838,16			; _BootloaderArray[305] @ 4880
	.field  	8054,16			; _BootloaderArray[306] @ 4896
	.field  	4098,16			; _BootloaderArray[307] @ 4912
	.field  	3624,16			; _BootloaderArray[308] @ 4928
	.field  	256,16			; _BootloaderArray[309] @ 4944
	.field  	42898,16			; _BootloaderArray[310] @ 4960
	.field  	338,16			; _BootloaderArray[311] @ 4976
	.field  	59116,16			; _BootloaderArray[312] @ 4992
	.field  	1536,16			; _BootloaderArray[313] @ 5008
	.field  	8022,16			; _BootloaderArray[314] @ 5024
	.field  	8822,16			; _BootloaderArray[315] @ 5040
	.field  	49337,16			; _BootloaderArray[316] @ 5056
	.field  	10536,16			; _BootloaderArray[317] @ 5072
	.field  	26624,16			; _BootloaderArray[318] @ 5088
	.field  	6774,16			; _BootloaderArray[319] @ 5104
	.field  	32512,16			; _BootloaderArray[320] @ 5120
	.field  	128,16			; _BootloaderArray[321] @ 5136
	.field  	8822,16			; _BootloaderArray[322] @ 5152
	.field  	43509,16			; _BootloaderArray[323] @ 5168
	.field  	54640,16			; _BootloaderArray[324] @ 5184
	.field  	4176,16			; _BootloaderArray[325] @ 5200
	.field  	43508,16			; _BootloaderArray[326] @ 5216
	.field  	54640,16			; _BootloaderArray[327] @ 5232
	.field  	119,16			; _BootloaderArray[328] @ 5248
	.field  	119,16			; _BootloaderArray[329] @ 5264
	.field  	43509,16			; _BootloaderArray[330] @ 5280
	.field  	54384,16			; _BootloaderArray[331] @ 5296
	.field  	12368,16			; _BootloaderArray[332] @ 5312
	.field  	43508,16			; _BootloaderArray[333] @ 5328
	.field  	54384,16			; _BootloaderArray[334] @ 5344
	.field  	119,16			; _BootloaderArray[335] @ 5360
	.field  	119,16			; _BootloaderArray[336] @ 5376
	.field  	43509,16			; _BootloaderArray[337] @ 5392
	.field  	7280,16			; _BootloaderArray[338] @ 5408
	.field  	43290,16			; _BootloaderArray[339] @ 5424
	.field  	4,16			; _BootloaderArray[340] @ 5440
	.field  	43508,16			; _BootloaderArray[341] @ 5456
	.field  	7280,16			; _BootloaderArray[342] @ 5472
	.field  	666,16			; _BootloaderArray[343] @ 5488
	.field  	43508,16			; _BootloaderArray[344] @ 5504
	.field  	7024,16			; _BootloaderArray[345] @ 5520
	.field  	6774,16			; _BootloaderArray[346] @ 5536
	.field  	9215,16			; _BootloaderArray[347] @ 5552
	.field  	19200,16			; _BootloaderArray[348] @ 5568
	.field  	32630,16			; _BootloaderArray[349] @ 5584
	.field  	32897,16			; _BootloaderArray[350] @ 5600
	.field  	8054,16			; _BootloaderArray[351] @ 5616
	.field  	49409,16			; _BootloaderArray[352] @ 5632
	.field  	4136,16			; _BootloaderArray[353] @ 5648
	.field  	1792,16			; _BootloaderArray[354] @ 5664
	.field  	8054,16			; _BootloaderArray[355] @ 5680
	.field  	49409,16			; _BootloaderArray[356] @ 5696
	.field  	4392,16			; _BootloaderArray[357] @ 5712
	.field  	8960,16			; _BootloaderArray[358] @ 5728
	.field  	8054,16			; _BootloaderArray[359] @ 5744
	.field  	49409,16			; _BootloaderArray[360] @ 5760
	.field  	4651,16			; _BootloaderArray[361] @ 5776
	.field  	8054,16			; _BootloaderArray[362] @ 5792
	.field  	49409,16			; _BootloaderArray[363] @ 5808
	.field  	4904,16			; _BootloaderArray[364] @ 5824
	.field  	30976,16			; _BootloaderArray[365] @ 5840
	.field  	8054,16			; _BootloaderArray[366] @ 5856
	.field  	49409,16			; _BootloaderArray[367] @ 5872
	.field  	6696,16			; _BootloaderArray[368] @ 5888
	.field  	128,16			; _BootloaderArray[369] @ 5904
	.field  	8054,16			; _BootloaderArray[370] @ 5920
	.field  	49409,16			; _BootloaderArray[371] @ 5936
	.field  	6955,16			; _BootloaderArray[372] @ 5952
	.field  	8054,16			; _BootloaderArray[373] @ 5968
	.field  	49409,16			; _BootloaderArray[374] @ 5984
	.field  	7211,16			; _BootloaderArray[375] @ 6000
	.field  	8054,16			; _BootloaderArray[376] @ 6016
	.field  	49409,16			; _BootloaderArray[377] @ 6032
	.field  	7467,16			; _BootloaderArray[378] @ 6048
	.field  	8054,16			; _BootloaderArray[379] @ 6064
	.field  	49921,16			; _BootloaderArray[380] @ 6080
	.field  	9242,16			; _BootloaderArray[381] @ 6096
	.field  	32,16			; _BootloaderArray[382] @ 6112
	.field  	1536,16			; _BootloaderArray[383] @ 6128
	.field  	8822,16			; _BootloaderArray[384] @ 6144
	.field  	43509,16			; _BootloaderArray[385] @ 6160
	.field  	55664,16			; _BootloaderArray[386] @ 6176
	.field  	4176,16			; _BootloaderArray[387] @ 6192
	.field  	43508,16			; _BootloaderArray[388] @ 6208
	.field  	55664,16			; _BootloaderArray[389] @ 6224
	.field  	119,16			; _BootloaderArray[390] @ 6240
	.field  	119,16			; _BootloaderArray[391] @ 6256
	.field  	43509,16			; _BootloaderArray[392] @ 6272
	.field  	55408,16			; _BootloaderArray[393] @ 6288
	.field  	12368,16			; _BootloaderArray[394] @ 6304
	.field  	43508,16			; _BootloaderArray[395] @ 6320
	.field  	55408,16			; _BootloaderArray[396] @ 6336
	.field  	119,16			; _BootloaderArray[397] @ 6352
	.field  	119,16			; _BootloaderArray[398] @ 6368
	.field  	43509,16			; _BootloaderArray[399] @ 6384
	.field  	7280,16			; _BootloaderArray[400] @ 6400
	.field  	43290,16			; _BootloaderArray[401] @ 6416
	.field  	8,16			; _BootloaderArray[402] @ 6432
	.field  	43508,16			; _BootloaderArray[403] @ 6448
	.field  	7280,16			; _BootloaderArray[404] @ 6464
	.field  	666,16			; _BootloaderArray[405] @ 6480
	.field  	43508,16			; _BootloaderArray[406] @ 6496
	.field  	7024,16			; _BootloaderArray[407] @ 6512
	.field  	6774,16			; _BootloaderArray[408] @ 6528
	.field  	9215,16			; _BootloaderArray[409] @ 6544
	.field  	19200,16			; _BootloaderArray[410] @ 6560
	.field  	32630,16			; _BootloaderArray[411] @ 6576
	.field  	32897,16			; _BootloaderArray[412] @ 6592
	.field  	8054,16			; _BootloaderArray[413] @ 6608
	.field  	56577,16			; _BootloaderArray[414] @ 6624
	.field  	4136,16			; _BootloaderArray[415] @ 6640
	.field  	1792,16			; _BootloaderArray[416] @ 6656
	.field  	8054,16			; _BootloaderArray[417] @ 6672
	.field  	56577,16			; _BootloaderArray[418] @ 6688
	.field  	4392,16			; _BootloaderArray[419] @ 6704
	.field  	8960,16			; _BootloaderArray[420] @ 6720
	.field  	8054,16			; _BootloaderArray[421] @ 6736
	.field  	56577,16			; _BootloaderArray[422] @ 6752
	.field  	4651,16			; _BootloaderArray[423] @ 6768
	.field  	8054,16			; _BootloaderArray[424] @ 6784
	.field  	56577,16			; _BootloaderArray[425] @ 6800
	.field  	4904,16			; _BootloaderArray[426] @ 6816
	.field  	30976,16			; _BootloaderArray[427] @ 6832
	.field  	8054,16			; _BootloaderArray[428] @ 6848
	.field  	56577,16			; _BootloaderArray[429] @ 6864
	.field  	6696,16			; _BootloaderArray[430] @ 6880
	.field  	128,16			; _BootloaderArray[431] @ 6896
	.field  	8054,16			; _BootloaderArray[432] @ 6912
	.field  	56577,16			; _BootloaderArray[433] @ 6928
	.field  	6955,16			; _BootloaderArray[434] @ 6944
	.field  	8054,16			; _BootloaderArray[435] @ 6960
	.field  	56577,16			; _BootloaderArray[436] @ 6976
	.field  	7211,16			; _BootloaderArray[437] @ 6992
	.field  	8054,16			; _BootloaderArray[438] @ 7008
	.field  	56577,16			; _BootloaderArray[439] @ 7024
	.field  	7467,16			; _BootloaderArray[440] @ 7040
	.field  	143,16			; _BootloaderArray[441] @ 7056
	.field  	62576,16			; _BootloaderArray[442] @ 7072
	.field  	50202,16			; _BootloaderArray[443] @ 7088
	.field  	8,16			; _BootloaderArray[444] @ 7104
	.field  	50202,16			; _BootloaderArray[445] @ 7120
	.field  	16,16			; _BootloaderArray[446] @ 7136
	.field  	1536,16			; _BootloaderArray[447] @ 7152
	.field  	8054,16			; _BootloaderArray[448] @ 7168
	.field  	4098,16			; _BootloaderArray[449] @ 7184
	.field  	3731,16			; _BootloaderArray[450] @ 7200
	.field  	339,16			; _BootloaderArray[451] @ 7216
	.field  	3820,16			; _BootloaderArray[452] @ 7232
	.field  	8054,16			; _BootloaderArray[453] @ 7248
	.field  	49409,16			; _BootloaderArray[454] @ 7264
	.field  	4378,16			; _BootloaderArray[455] @ 7280
	.field  	512,16			; _BootloaderArray[456] @ 7296
	.field  	8054,16			; _BootloaderArray[457] @ 7312
	.field  	49409,16			; _BootloaderArray[458] @ 7328
	.field  	5191,16			; _BootloaderArray[459] @ 7344
	.field  	65007,16			; _BootloaderArray[460] @ 7360
	.field  	8054,16			; _BootloaderArray[461] @ 7376
	.field  	49409,16			; _BootloaderArray[462] @ 7392
	.field  	6550,16			; _BootloaderArray[463] @ 7408
	.field  	53078,16			; _BootloaderArray[464] @ 7424
	.field  	3328,16			; _BootloaderArray[465] @ 7440
	.field  	8054,16			; _BootloaderArray[466] @ 7456
	.field  	56577,16			; _BootloaderArray[467] @ 7472
	.field  	4378,16			; _BootloaderArray[468] @ 7488
	.field  	512,16			; _BootloaderArray[469] @ 7504
	.field  	8054,16			; _BootloaderArray[470] @ 7520
	.field  	56577,16			; _BootloaderArray[471] @ 7536
	.field  	5191,16			; _BootloaderArray[472] @ 7552
	.field  	65007,16			; _BootloaderArray[473] @ 7568
	.field  	8054,16			; _BootloaderArray[474] @ 7584
	.field  	56577,16			; _BootloaderArray[475] @ 7600
	.field  	6550,16			; _BootloaderArray[476] @ 7616
	.field  	1536,16			; _BootloaderArray[477] @ 7632
	.field  	8822,16			; _BootloaderArray[478] @ 7648
	.field  	43509,16			; _BootloaderArray[479] @ 7664
	.field  	54384,16			; _BootloaderArray[480] @ 7680
	.field  	1872,16			; _BootloaderArray[481] @ 7696
	.field  	43508,16			; _BootloaderArray[482] @ 7712
	.field  	54384,16			; _BootloaderArray[483] @ 7728
	.field  	119,16			; _BootloaderArray[484] @ 7744
	.field  	119,16			; _BootloaderArray[485] @ 7760
	.field  	43509,16			; _BootloaderArray[486] @ 7776
	.field  	49520,16			; _BootloaderArray[487] @ 7792
	.field  	8016,16			; _BootloaderArray[488] @ 7808
	.field  	43508,16			; _BootloaderArray[489] @ 7824
	.field  	49520,16			; _BootloaderArray[490] @ 7840
	.field  	119,16			; _BootloaderArray[491] @ 7856
	.field  	143,16			; _BootloaderArray[492] @ 7872
	.field  	58480,16			; _BootloaderArray[493] @ 7888
	.field  	43509,16			; _BootloaderArray[494] @ 7904
	.field  	50544,16			; _BootloaderArray[495] @ 7920
	.field  	43290,16			; _BootloaderArray[496] @ 7936
	.field  	239,16			; _BootloaderArray[497] @ 7952
	.field  	43508,16			; _BootloaderArray[498] @ 7968
	.field  	50544,16			; _BootloaderArray[499] @ 7984
	.field  	8054,16			; _BootloaderArray[500] @ 8000
	.field  	49921,16			; _BootloaderArray[501] @ 8016
	.field  	16527,16			; _BootloaderArray[502] @ 8032
	.field  	16752,16			; _BootloaderArray[503] @ 8048
	.field  	43509,16			; _BootloaderArray[504] @ 8064
	.field  	54640,16			; _BootloaderArray[505] @ 8080
	.field  	43290,16			; _BootloaderArray[506] @ 8096
	.field  	52511,16			; _BootloaderArray[507] @ 8112
	.field  	43508,16			; _BootloaderArray[508] @ 8128
	.field  	54640,16			; _BootloaderArray[509] @ 8144
	.field  	50200,16			; _BootloaderArray[510] @ 8160
	.field  	65533,16			; _BootloaderArray[511] @ 8176
	.field  	50200,16			; _BootloaderArray[512] @ 8192
	.field  	65534,16			; _BootloaderArray[513] @ 8208
	.field  	13336,16			; _BootloaderArray[514] @ 8224
	.field  	63487,16			; _BootloaderArray[515] @ 8240
	.field  	8054,16			; _BootloaderArray[516] @ 8256
	.field  	49921,16			; _BootloaderArray[517] @ 8272
	.field  	8218,16			; _BootloaderArray[518] @ 8288
	.field  	2048,16			; _BootloaderArray[519] @ 8304
	.field  	50200,16			; _BootloaderArray[520] @ 8320
	.field  	65471,16			; _BootloaderArray[521] @ 8336
	.field  	8054,16			; _BootloaderArray[522] @ 8352
	.field  	49921,16			; _BootloaderArray[523] @ 8368
	.field  	13338,16			; _BootloaderArray[524] @ 8384
	.field  	7,16			; _BootloaderArray[525] @ 8400
	.field  	8054,16			; _BootloaderArray[526] @ 8416
	.field  	49921,16			; _BootloaderArray[527] @ 8432
	.field  	9242,16			; _BootloaderArray[528] @ 8448
	.field  	12,16			; _BootloaderArray[529] @ 8464
	.field  	43509,16			; _BootloaderArray[530] @ 8480
	.field  	7280,16			; _BootloaderArray[531] @ 8496
	.field  	43290,16			; _BootloaderArray[532] @ 8512
	.field  	1,16			; _BootloaderArray[533] @ 8528
	.field  	143,16			; _BootloaderArray[534] @ 8544
	.field  	16496,16			; _BootloaderArray[535] @ 8560
	.field  	43508,16			; _BootloaderArray[536] @ 8576
	.field  	7280,16			; _BootloaderArray[537] @ 8592
	.field  	50200,16			; _BootloaderArray[538] @ 8608
	.field  	32767,16			; _BootloaderArray[539] @ 8624
	.field  	50202,16			; _BootloaderArray[540] @ 8640
	.field  	16384,16			; _BootloaderArray[541] @ 8656
	.field  	50200,16			; _BootloaderArray[542] @ 8672
	.field  	61439,16			; _BootloaderArray[543] @ 8688
	.field  	50380,16			; _BootloaderArray[544] @ 8704
	.field  	61695,16			; _BootloaderArray[545] @ 8720
	.field  	1872,16			; _BootloaderArray[546] @ 8736
	.field  	50326,16			; _BootloaderArray[547] @ 8752
	.field  	50456,16			; _BootloaderArray[548] @ 8768
	.field  	61439,16			; _BootloaderArray[549] @ 8784
	.field  	50456,16			; _BootloaderArray[550] @ 8800
	.field  	63487,16			; _BootloaderArray[551] @ 8816
	.field  	50458,16			; _BootloaderArray[552] @ 8832
	.field  	1024,16			; _BootloaderArray[553] @ 8848
	.field  	50458,16			; _BootloaderArray[554] @ 8864
	.field  	512,16			; _BootloaderArray[555] @ 8880
	.field  	410,16			; _BootloaderArray[556] @ 8896
	.field  	50456,16			; _BootloaderArray[557] @ 8912
	.field  	65279,16			; _BootloaderArray[558] @ 8928
	.field  	43508,16			; _BootloaderArray[559] @ 8944
	.field  	17520,16			; _BootloaderArray[560] @ 8960
	.field  	50202,16			; _BootloaderArray[561] @ 8976
	.field  	32768,16			; _BootloaderArray[562] @ 8992
	.field  	6774,16			; _BootloaderArray[563] @ 9008
	.field  	50202,16			; _BootloaderArray[564] @ 9024
	.field  	16384,16			; _BootloaderArray[565] @ 9040
	.field  	32630,16			; _BootloaderArray[566] @ 9056
	.field  	30339,16			; _BootloaderArray[567] @ 9072
	.field  	1536,16			; _BootloaderArray[568] @ 9088
	.field  	8054,16			; _BootloaderArray[569] @ 9104
	.field  	4098,16			; _BootloaderArray[570] @ 9120
	.field  	1030,16			; _BootloaderArray[571] @ 9136
	.field  	32630,16			; _BootloaderArray[572] @ 9152
	.field  	19331,16			; _BootloaderArray[573] @ 9168
	.field  	8054,16			; _BootloaderArray[574] @ 9184
	.field  	2,16			; _BootloaderArray[575] @ 9200
	.field  	406,16			; _BootloaderArray[576] @ 9216
	.field  	8054,16			; _BootloaderArray[577] @ 9232
	.field  	4098,16			; _BootloaderArray[578] @ 9248
	.field  	1030,16			; _BootloaderArray[579] @ 9264
	.field  	8054,16			; _BootloaderArray[580] @ 9280
	.field  	4098,16			; _BootloaderArray[581] @ 9296
	.field  	521,16			; _BootloaderArray[582] @ 9312
	.field  	1054,16			; _BootloaderArray[583] @ 9328
	.field  	8054,16			; _BootloaderArray[584] @ 9344
	.field  	2,16			; _BootloaderArray[585] @ 9360
	.field  	402,16			; _BootloaderArray[586] @ 9376
	.field  	4844,16			; _BootloaderArray[587] @ 9392
	.field  	8054,16			; _BootloaderArray[588] @ 9408
	.field  	4098,16			; _BootloaderArray[589] @ 9424
	.field  	1030,16			; _BootloaderArray[590] @ 9440
	.field  	32630,16			; _BootloaderArray[591] @ 9456
	.field  	2947,16			; _BootloaderArray[592] @ 9472
	.field  	8054,16			; _BootloaderArray[593] @ 9488
	.field  	2,16			; _BootloaderArray[594] @ 9504
	.field  	542,16			; _BootloaderArray[595] @ 9520
	.field  	8054,16			; _BootloaderArray[596] @ 9536
	.field  	4098,16			; _BootloaderArray[597] @ 9552
	.field  	1030,16			; _BootloaderArray[598] @ 9568
	.field  	8054,16			; _BootloaderArray[599] @ 9584
	.field  	4098,16			; _BootloaderArray[600] @ 9600
	.field  	1033,16			; _BootloaderArray[601] @ 9616
	.field  	1054,16			; _BootloaderArray[602] @ 9632
	.field  	32630,16			; _BootloaderArray[603] @ 9648
	.field  	55426,16			; _BootloaderArray[604] @ 9664
	.field  	1536,16			; _BootloaderArray[605] @ 9680
	.field  	48562,16			; _BootloaderArray[606] @ 9696
	.field  	8054,16			; _BootloaderArray[607] @ 9712
	.field  	49921,16			; _BootloaderArray[608] @ 9728
	.field  	48554,16			; _BootloaderArray[609] @ 9744
	.field  	8216,16			; _BootloaderArray[610] @ 9760
	.field  	63487,16			; _BootloaderArray[611] @ 9776
	.field  	32630,16			; _BootloaderArray[612] @ 9792
	.field  	13443,16			; _BootloaderArray[613] @ 9808
	.field  	209,16			; _BootloaderArray[614] @ 9824
	.field  	8054,16			; _BootloaderArray[615] @ 9840
	.field  	2,16			; _BootloaderArray[616] @ 9856
	.field  	402,16			; _BootloaderArray[617] @ 9872
	.field  	8428,16			; _BootloaderArray[618] @ 9888
	.field  	32630,16			; _BootloaderArray[619] @ 9904
	.field  	30339,16			; _BootloaderArray[620] @ 9920
	.field  	43354,16			; _BootloaderArray[621] @ 9936
	.field  	32630,16			; _BootloaderArray[622] @ 9952
	.field  	30339,16			; _BootloaderArray[623] @ 9968
	.field  	41619,16			; _BootloaderArray[624] @ 9984
	.field  	315,16			; _BootloaderArray[625] @ 10000
	.field  	43321,16			; _BootloaderArray[626] @ 10016
	.field  	143,16			; _BootloaderArray[627] @ 10032
	.field  	1152,16			; _BootloaderArray[628] @ 10048
	.field  	41362,16			; _BootloaderArray[629] @ 10064
	.field  	43098,16			; _BootloaderArray[630] @ 10080
	.field  	43397,16			; _BootloaderArray[631] @ 10096
	.field  	342,16			; _BootloaderArray[632] @ 10112
	.field  	41984,16			; _BootloaderArray[633] @ 10128
	.field  	8054,16			; _BootloaderArray[634] @ 10144
	.field  	4098,16			; _BootloaderArray[635] @ 10160
	.field  	50298,16			; _BootloaderArray[636] @ 10176
	.field  	1030,16			; _BootloaderArray[637] @ 10192
	.field  	521,16			; _BootloaderArray[638] @ 10208
	.field  	8054,16			; _BootloaderArray[639] @ 10224
	.field  	4098,16			; _BootloaderArray[640] @ 10240
	.field  	1054,16			; _BootloaderArray[641] @ 10256
	.field  	8054,16			; _BootloaderArray[642] @ 10272
	.field  	2,16			; _BootloaderArray[643] @ 10288
	.field  	41362,16			; _BootloaderArray[644] @ 10304
	.field  	412,16			; _BootloaderArray[645] @ 10320
	.field  	340,16			; _BootloaderArray[646] @ 10336
	.field  	43353,16			; _BootloaderArray[647] @ 10352
	.field  	51286,16			; _BootloaderArray[648] @ 10368
	.field  	58367,16			; _BootloaderArray[649] @ 10384
	.field  	8054,16			; _BootloaderArray[650] @ 10400
	.field  	49921,16			; _BootloaderArray[651] @ 10416
	.field  	8218,16			; _BootloaderArray[652] @ 10432
	.field  	2048,16			; _BootloaderArray[653] @ 10448
	.field  	48774,16			; _BootloaderArray[654] @ 10464
	.field  	48779,16			; _BootloaderArray[655] @ 10480
	.field  	1536,16			; _BootloaderArray[656] @ 10496
	.field  	48562,16			; _BootloaderArray[657] @ 10512
	.field  	48554,16			; _BootloaderArray[658] @ 10528
	.field  	48546,16			; _BootloaderArray[659] @ 10544
	.field  	49293,16			; _BootloaderArray[660] @ 10560
	.field  	57456,16			; _BootloaderArray[661] @ 10576
	.field  	766,16			; _BootloaderArray[662] @ 10592
	.field  	49944,16			; _BootloaderArray[663] @ 10608
	.field  	63487,16			; _BootloaderArray[664] @ 10624
	.field  	32630,16			; _BootloaderArray[665] @ 10640
	.field  	13443,16			; _BootloaderArray[666] @ 10656
	.field  	32630,16			; _BootloaderArray[667] @ 10672
	.field  	30339,16			; _BootloaderArray[668] @ 10688
	.field  	43354,16			; _BootloaderArray[669] @ 10704
	.field  	32630,16			; _BootloaderArray[670] @ 10720
	.field  	30339,16			; _BootloaderArray[671] @ 10736
	.field  	43353,16			; _BootloaderArray[672] @ 10752
	.field  	32630,16			; _BootloaderArray[673] @ 10768
	.field  	30339,16			; _BootloaderArray[674] @ 10784
	.field  	43278,16			; _BootloaderArray[675] @ 10800
	.field  	16926,16			; _BootloaderArray[676] @ 10816
	.field  	32630,16			; _BootloaderArray[677] @ 10832
	.field  	30339,16			; _BootloaderArray[678] @ 10848
	.field  	43400,16			; _BootloaderArray[679] @ 10864
	.field  	43442,16			; _BootloaderArray[680] @ 10880
	.field  	14335,16			; _BootloaderArray[681] @ 10896
	.field  	41479,16			; _BootloaderArray[682] @ 10912
	.field  	14335,16			; _BootloaderArray[683] @ 10928
	.field  	42503,16			; _BootloaderArray[684] @ 10944
	.field  	14335,16			; _BootloaderArray[685] @ 10960
	.field  	43403,16			; _BootloaderArray[686] @ 10976
	.field  	16902,16			; _BootloaderArray[687] @ 10992
	.field  	33534,16			; _BootloaderArray[688] @ 11008
	.field  	49946,16			; _BootloaderArray[689] @ 11024
	.field  	2048,16			; _BootloaderArray[690] @ 11040
	.field  	65424,16			; _BootloaderArray[691] @ 11056
	.field  	155,16			; _BootloaderArray[692] @ 11072
	.field  	48770,16			; _BootloaderArray[693] @ 11088
	.field  	41223,16			; _BootloaderArray[694] @ 11104
	.field  	48774,16			; _BootloaderArray[695] @ 11120
	.field  	48779,16			; _BootloaderArray[696] @ 11136
	.field  	1536,16			; _BootloaderArray[697] @ 11152
	.field  	48562,16			; _BootloaderArray[698] @ 11168
	.field  	43403,16			; _BootloaderArray[699] @ 11184
	.field  	2970,16			; _BootloaderArray[700] @ 11200
	.field  	32630,16			; _BootloaderArray[701] @ 11216
	.field  	24707,16			; _BootloaderArray[702] @ 11232
	.field  	43442,16			; _BootloaderArray[703] @ 11248
	.field  	43022,16			; _BootloaderArray[704] @ 11264
	.field  	32630,16			; _BootloaderArray[705] @ 11280
	.field  	24707,16			; _BootloaderArray[706] @ 11296
	.field  	297,16			; _BootloaderArray[707] @ 11312
	.field  	43442,16			; _BootloaderArray[708] @ 11328
	.field  	18431,16			; _BootloaderArray[709] @ 11344
	.field  	32630,16			; _BootloaderArray[710] @ 11360
	.field  	24707,16			; _BootloaderArray[711] @ 11376
	.field  	43442,16			; _BootloaderArray[712] @ 11392
	.field  	65424,16			; _BootloaderArray[713] @ 11408
	.field  	32630,16			; _BootloaderArray[714] @ 11424
	.field  	24707,16			; _BootloaderArray[715] @ 11440
	.field  	43674,16			; _BootloaderArray[716] @ 11456
	.field  	32630,16			; _BootloaderArray[717] @ 11472
	.field  	24707,16			; _BootloaderArray[718] @ 11488
	.field  	48779,16			; _BootloaderArray[719] @ 11504
	.field  	1536,16			; _BootloaderArray[720] @ 11520
	.field  	48562,16			; _BootloaderArray[721] @ 11536
	.field  	48546,16			; _BootloaderArray[722] @ 11552
	.field  	49293,16			; _BootloaderArray[723] @ 11568
	.field  	57456,16			; _BootloaderArray[724] @ 11584
	.field  	49944,16			; _BootloaderArray[725] @ 11600
	.field  	63487,16			; _BootloaderArray[726] @ 11616
	.field  	32630,16			; _BootloaderArray[727] @ 11632
	.field  	13443,16			; _BootloaderArray[728] @ 11648
	.field  	32630,16			; _BootloaderArray[729] @ 11664
	.field  	30339,16			; _BootloaderArray[730] @ 11680
	.field  	43353,16			; _BootloaderArray[731] @ 11696
	.field  	32630,16			; _BootloaderArray[732] @ 11712
	.field  	30339,16			; _BootloaderArray[733] @ 11728
	.field  	49946,16			; _BootloaderArray[734] @ 11744
	.field  	2048,16			; _BootloaderArray[735] @ 11760
	.field  	48770,16			; _BootloaderArray[736] @ 11776
	.field  	41363,16			; _BootloaderArray[737] @ 11792
	.field  	48779,16			; _BootloaderArray[738] @ 11808
	.field  	43321,16			; _BootloaderArray[739] @ 11824
	.field  	43154,16			; _BootloaderArray[740] @ 11840
	.field  	1536,16			; _BootloaderArray[741] @ 11856
	.field  	8054,16			; _BootloaderArray[742] @ 11872
	.field  	49409,16			; _BootloaderArray[743] @ 11888
	.field  	65424,16			; _BootloaderArray[744] @ 11904
	.field  	44072,16			; _BootloaderArray[745] @ 11920
	.field  	257,16			; _BootloaderArray[746] @ 11936
	.field  	1939,16			; _BootloaderArray[747] @ 11952
	.field  	43282,16			; _BootloaderArray[748] @ 11968
	.field  	8054,16			; _BootloaderArray[749] @ 11984
	.field  	49409,16			; _BootloaderArray[750] @ 12000
	.field  	2198,16			; _BootloaderArray[751] @ 12016
	.field  	119,16			; _BootloaderArray[752] @ 12032
	.field  	119,16			; _BootloaderArray[753] @ 12048
	.field  	8054,16			; _BootloaderArray[754] @ 12064
	.field  	49409,16			; _BootloaderArray[755] @ 12080
	.field  	582,16			; _BootloaderArray[756] @ 12096
	.field  	65007,16			; _BootloaderArray[757] @ 12112
	.field  	119,16			; _BootloaderArray[758] @ 12128
	.field  	119,16			; _BootloaderArray[759] @ 12144
	.field  	8054,16			; _BootloaderArray[760] @ 12160
	.field  	49409,16			; _BootloaderArray[761] @ 12176
	.field  	1938,16			; _BootloaderArray[762] @ 12192
	.field  	1536,16			; _BootloaderArray[763] @ 12208
	.field  	8054,16			; _BootloaderArray[764] @ 12224
	.field  	49409,16			; _BootloaderArray[765] @ 12240
	.field  	282,16			; _BootloaderArray[766] @ 12256
	.field  	512,16			; _BootloaderArray[767] @ 12272
	.field  	8054,16			; _BootloaderArray[768] @ 12288
	.field  	49409,16			; _BootloaderArray[769] @ 12304
	.field  	2088,16			; _BootloaderArray[770] @ 12320
	.field  	65535,16			; _BootloaderArray[771] @ 12336
	.field  	119,16			; _BootloaderArray[772] @ 12352
	.field  	119,16			; _BootloaderArray[773] @ 12368
	.field  	8054,16			; _BootloaderArray[774] @ 12384
	.field  	49409,16			; _BootloaderArray[775] @ 12400
	.field  	582,16			; _BootloaderArray[776] @ 12416
	.field  	65007,16			; _BootloaderArray[777] @ 12432
	.field  	119,16			; _BootloaderArray[778] @ 12448
	.field  	119,16			; _BootloaderArray[779] @ 12464
	.field  	8054,16			; _BootloaderArray[780] @ 12480
	.field  	49409,16			; _BootloaderArray[781] @ 12496
	.field  	282,16			; _BootloaderArray[782] @ 12512
	.field  	512,16			; _BootloaderArray[783] @ 12528
	.field  	8054,16			; _BootloaderArray[784] @ 12544
	.field  	49409,16			; _BootloaderArray[785] @ 12560
	.field  	1996,16			; _BootloaderArray[786] @ 12576
	.field  	65280,16			; _BootloaderArray[787] @ 12592
	.field  	1536,16			; _BootloaderArray[788] @ 12608
	.field  	1790,16			; _BootloaderArray[789] @ 12624
	.field  	17576,16			; _BootloaderArray[790] @ 12640
	.field  	16790,16			; _BootloaderArray[791] @ 12656
	.field  	17546,16			; _BootloaderArray[792] @ 12672
	.field  	32630,16			; _BootloaderArray[793] @ 12688
	.field  	32900,16			; _BootloaderArray[794] @ 12704
	.field  	18070,16			; _BootloaderArray[795] @ 12720
	.field  	82,16			; _BootloaderArray[796] @ 12736
	.field  	1004,16			; _BootloaderArray[797] @ 12752
	.field  	61439,16			; _BootloaderArray[798] @ 12768
	.field  	34304,16			; _BootloaderArray[799] @ 12784
	.field  	17960,16			; _BootloaderArray[800] @ 12800
	.field  	59139,16			; _BootloaderArray[801] @ 12816
	.field  	16664,16			; _BootloaderArray[802] @ 12832
	.field  	65283,16			; _BootloaderArray[803] @ 12848
	.field  	16786,16			; _BootloaderArray[804] @ 12864
	.field  	1005,16			; _BootloaderArray[805] @ 12880
	.field  	5274,16			; _BootloaderArray[806] @ 12896
	.field  	32111,16			; _BootloaderArray[807] @ 12912
	.field  	32630,16			; _BootloaderArray[808] @ 12928
	.field  	54404,16			; _BootloaderArray[809] @ 12944
	.field  	17707,16			; _BootloaderArray[810] @ 12960
	.field  	17810,16			; _BootloaderArray[811] @ 12976
	.field  	2386,16			; _BootloaderArray[812] @ 12992
	.field  	5734,16			; _BootloaderArray[813] @ 13008
	.field  	17678,16			; _BootloaderArray[814] @ 13024
	.field  	16271,16			; _BootloaderArray[815] @ 13040
	.field  	55432,16			; _BootloaderArray[816] @ 13056
	.field  	12799,16			; _BootloaderArray[817] @ 13072
	.field  	342,16			; _BootloaderArray[818] @ 13088
	.field  	41984,16			; _BootloaderArray[819] @ 13104
	.field  	17539,16			; _BootloaderArray[820] @ 13120
	.field  	50314,16			; _BootloaderArray[821] @ 13136
	.field  	32922,16			; _BootloaderArray[822] @ 13152
	.field  	32630,16			; _BootloaderArray[823] @ 13168
	.field  	45702,16			; _BootloaderArray[824] @ 13184
	.field  	18070,16			; _BootloaderArray[825] @ 13200
	.field  	82,16			; _BootloaderArray[826] @ 13216
	.field  	1260,16			; _BootloaderArray[827] @ 13232
	.field  	17960,16			; _BootloaderArray[828] @ 13248
	.field  	6144,16			; _BootloaderArray[829] @ 13264
	.field  	1391,16			; _BootloaderArray[830] @ 13280
	.field  	17674,16			; _BootloaderArray[831] @ 13296
	.field  	17810,16			; _BootloaderArray[832] @ 13312
	.field  	2386,16			; _BootloaderArray[833] @ 13328
	.field  	60521,16			; _BootloaderArray[834] @ 13344
	.field  	18066,16			; _BootloaderArray[835] @ 13360
	.field  	24045,16			; _BootloaderArray[836] @ 13376
	.field  	17707,16			; _BootloaderArray[837] @ 13392
	.field  	17810,16			; _BootloaderArray[838] @ 13408
	.field  	2386,16			; _BootloaderArray[839] @ 13424
	.field  	22886,16			; _BootloaderArray[840] @ 13440
	.field  	17752,16			; _BootloaderArray[841] @ 13456
	.field  	16271,16			; _BootloaderArray[842] @ 13472
	.field  	52872,16			; _BootloaderArray[843] @ 13488
	.field  	38034,16			; _BootloaderArray[844] @ 13504
	.field  	16846,16			; _BootloaderArray[845] @ 13520
	.field  	19948,16			; _BootloaderArray[846] @ 13536
	.field  	17678,16			; _BootloaderArray[847] @ 13552
	.field  	16271,16			; _BootloaderArray[848] @ 13568
	.field  	55432,16			; _BootloaderArray[849] @ 13584
	.field  	32655,16			; _BootloaderArray[850] @ 13600
	.field  	55944,16			; _BootloaderArray[851] @ 13616
	.field  	12799,16			; _BootloaderArray[852] @ 13632
	.field  	342,16			; _BootloaderArray[853] @ 13648
	.field  	41984,16			; _BootloaderArray[854] @ 13664
	.field  	17678,16			; _BootloaderArray[855] @ 13680
	.field  	12799,16			; _BootloaderArray[856] @ 13696
	.field  	342,16			; _BootloaderArray[857] @ 13712
	.field  	42240,16			; _BootloaderArray[858] @ 13728
	.field  	50314,16			; _BootloaderArray[859] @ 13744
	.field  	50578,16			; _BootloaderArray[860] @ 13760
	.field  	17539,16			; _BootloaderArray[861] @ 13776
	.field  	32630,16			; _BootloaderArray[862] @ 13792
	.field  	30598,16			; _BootloaderArray[863] @ 13808
	.field  	18070,16			; _BootloaderArray[864] @ 13824
	.field  	82,16			; _BootloaderArray[865] @ 13840
	.field  	5101,16			; _BootloaderArray[866] @ 13856
	.field  	17678,16			; _BootloaderArray[867] @ 13872
	.field  	16271,16			; _BootloaderArray[868] @ 13888
	.field  	55432,16			; _BootloaderArray[869] @ 13904
	.field  	32655,16			; _BootloaderArray[870] @ 13920
	.field  	55944,16			; _BootloaderArray[871] @ 13936
	.field  	12799,16			; _BootloaderArray[872] @ 13952
	.field  	342,16			; _BootloaderArray[873] @ 13968
	.field  	41984,16			; _BootloaderArray[874] @ 13984
	.field  	17678,16			; _BootloaderArray[875] @ 14000
	.field  	12799,16			; _BootloaderArray[876] @ 14016
	.field  	342,16			; _BootloaderArray[877] @ 14032
	.field  	42240,16			; _BootloaderArray[878] @ 14048
	.field  	50314,16			; _BootloaderArray[879] @ 14064
	.field  	50578,16			; _BootloaderArray[880] @ 14080
	.field  	17539,16			; _BootloaderArray[881] @ 14096
	.field  	32630,16			; _BootloaderArray[882] @ 14112
	.field  	8324,16			; _BootloaderArray[883] @ 14128
	.field  	18070,16			; _BootloaderArray[884] @ 14144
	.field  	82,16			; _BootloaderArray[885] @ 14160
	.field  	5357,16			; _BootloaderArray[886] @ 14176
	.field  	17678,16			; _BootloaderArray[887] @ 14192
	.field  	16271,16			; _BootloaderArray[888] @ 14208
	.field  	55432,16			; _BootloaderArray[889] @ 14224
	.field  	32655,16			; _BootloaderArray[890] @ 14240
	.field  	55944,16			; _BootloaderArray[891] @ 14256
	.field  	12799,16			; _BootloaderArray[892] @ 14272
	.field  	342,16			; _BootloaderArray[893] @ 14288
	.field  	41984,16			; _BootloaderArray[894] @ 14304
	.field  	17678,16			; _BootloaderArray[895] @ 14320
	.field  	12799,16			; _BootloaderArray[896] @ 14336
	.field  	342,16			; _BootloaderArray[897] @ 14352
	.field  	42240,16			; _BootloaderArray[898] @ 14368
	.field  	50314,16			; _BootloaderArray[899] @ 14384
	.field  	50578,16			; _BootloaderArray[900] @ 14400
	.field  	17539,16			; _BootloaderArray[901] @ 14416
	.field  	32630,16			; _BootloaderArray[902] @ 14432
	.field  	45702,16			; _BootloaderArray[903] @ 14448
	.field  	18070,16			; _BootloaderArray[904] @ 14464
	.field  	4719,16			; _BootloaderArray[905] @ 14480
	.field  	17678,16			; _BootloaderArray[906] @ 14496
	.field  	16271,16			; _BootloaderArray[907] @ 14512
	.field  	55432,16			; _BootloaderArray[908] @ 14528
	.field  	32655,16			; _BootloaderArray[909] @ 14544
	.field  	55944,16			; _BootloaderArray[910] @ 14560
	.field  	12799,16			; _BootloaderArray[911] @ 14576
	.field  	342,16			; _BootloaderArray[912] @ 14592
	.field  	41984,16			; _BootloaderArray[913] @ 14608
	.field  	17678,16			; _BootloaderArray[914] @ 14624
	.field  	12799,16			; _BootloaderArray[915] @ 14640
	.field  	342,16			; _BootloaderArray[916] @ 14656
	.field  	42240,16			; _BootloaderArray[917] @ 14672
	.field  	50314,16			; _BootloaderArray[918] @ 14688
	.field  	50578,16			; _BootloaderArray[919] @ 14704
	.field  	17539,16			; _BootloaderArray[920] @ 14720
	.field  	32630,16			; _BootloaderArray[921] @ 14736
	.field  	45702,16			; _BootloaderArray[922] @ 14752
	.field  	18066,16			; _BootloaderArray[923] @ 14768
	.field  	1517,16			; _BootloaderArray[924] @ 14784
	.field  	17674,16			; _BootloaderArray[925] @ 14800
	.field  	17810,16			; _BootloaderArray[926] @ 14816
	.field  	2386,16			; _BootloaderArray[927] @ 14832
	.field  	43369,16			; _BootloaderArray[928] @ 14848
	.field  	32630,16			; _BootloaderArray[929] @ 14864
	.field  	51076,16			; _BootloaderArray[930] @ 14880
	.field  	18066,16			; _BootloaderArray[931] @ 14896
	.field  	34558,16			; _BootloaderArray[932] @ 14912
	.field  	1536,16			; _BootloaderArray[933] @ 14928
	.field  	4350,16			; _BootloaderArray[934] @ 14944
	.field  	18080,16			; _BootloaderArray[935] @ 14960
	.field  	17302,16			; _BootloaderArray[936] @ 14976
	.field  	17064,16			; _BootloaderArray[937] @ 14992
	.field  	17092,16			; _BootloaderArray[938] @ 15008
	.field  	15759,16			; _BootloaderArray[939] @ 15024
	.field  	128,16			; _BootloaderArray[940] @ 15040
	.field  	43432,16			; _BootloaderArray[941] @ 15056
	.field  	42511,16			; _BootloaderArray[942] @ 15072
	.field  	4454,16			; _BootloaderArray[943] @ 15088
	.field  	17280,16			; _BootloaderArray[944] @ 15104
	.field  	16902,16			; _BootloaderArray[945] @ 15120
	.field  	42765,16			; _BootloaderArray[946] @ 15136
	.field  	42526,16			; _BootloaderArray[947] @ 15152
	.field  	16271,16			; _BootloaderArray[948] @ 15168
	.field  	65407,16			; _BootloaderArray[949] @ 15184
	.field  	33246,16			; _BootloaderArray[950] @ 15200
	.field  	43432,16			; _BootloaderArray[951] @ 15216
	.field  	42511,16			; _BootloaderArray[952] @ 15232
	.field  	1896,16			; _BootloaderArray[953] @ 15248
	.field  	16902,16			; _BootloaderArray[954] @ 15264
	.field  	4095,16			; _BootloaderArray[955] @ 15280
	.field  	31488,16			; _BootloaderArray[956] @ 15296
	.field  	20510,16			; _BootloaderArray[957] @ 15312
	.field  	19755,16			; _BootloaderArray[958] @ 15328
	.field  	879,16			; _BootloaderArray[959] @ 15344
	.field  	3226,16			; _BootloaderArray[960] @ 15360
	.field  	17263,16			; _BootloaderArray[961] @ 15376
	.field  	18728,16			; _BootloaderArray[962] @ 15392
	.field  	5632,16			; _BootloaderArray[963] @ 15408
	.field  	18475,16			; _BootloaderArray[964] @ 15424
	.field  	19243,16			; _BootloaderArray[965] @ 15440
	.field  	18987,16			; _BootloaderArray[966] @ 15456
	.field  	19499,16			; _BootloaderArray[967] @ 15472
	.field  	19804,16			; _BootloaderArray[968] @ 15488
	.field  	20486,16			; _BootloaderArray[969] @ 15504
	.field  	32630,16			; _BootloaderArray[970] @ 15520
	.field  	8071,16			; _BootloaderArray[971] @ 15536
	.field  	18326,16			; _BootloaderArray[972] @ 15552
	.field  	8054,16			; _BootloaderArray[973] @ 15568
	.field  	4098,16			; _BootloaderArray[974] @ 15584
	.field  	5126,16			; _BootloaderArray[975] @ 15600
	.field  	190,16			; _BootloaderArray[976] @ 15616
	.field  	42511,16			; _BootloaderArray[977] @ 15632
	.field  	1004,16			; _BootloaderArray[978] @ 15648
	.field  	5317,16			; _BootloaderArray[979] @ 15664
	.field  	26430,16			; _BootloaderArray[980] @ 15680
	.field  	18203,16			; _BootloaderArray[981] @ 15696
	.field  	65535,16			; _BootloaderArray[982] @ 15712
	.field  	7404,16			; _BootloaderArray[983] @ 15728
	.field  	18971,16			; _BootloaderArray[984] @ 15744
	.field  	34835,16			; _BootloaderArray[985] @ 15760
	.field  	2408,16			; _BootloaderArray[986] @ 15776
	.field  	18058,16			; _BootloaderArray[987] @ 15792
	.field  	20486,16			; _BootloaderArray[988] @ 15808
	.field  	8191,16			; _BootloaderArray[989] @ 15824
	.field  	31488,16			; _BootloaderArray[990] @ 15840
	.field  	50206,16			; _BootloaderArray[991] @ 15856
	.field  	18728,16			; _BootloaderArray[992] @ 15872
	.field  	5632,16			; _BootloaderArray[993] @ 15888
	.field  	6255,16			; _BootloaderArray[994] @ 15904
	.field  	18524,16			; _BootloaderArray[995] @ 15920
	.field  	19805,16			; _BootloaderArray[996] @ 15936
	.field  	20486,16			; _BootloaderArray[997] @ 15952
	.field  	32630,16			; _BootloaderArray[998] @ 15968
	.field  	26503,16			; _BootloaderArray[999] @ 15984
	.field  	19210,16			; _BootloaderArray[1000] @ 16000
	.field  	18954,16			; _BootloaderArray[1001] @ 16016
	.field  	18578,16			; _BootloaderArray[1002] @ 16032
	.field  	2642,16			; _BootloaderArray[1003] @ 16048
	.field  	2919,16			; _BootloaderArray[1004] @ 16064
	.field  	19346,16			; _BootloaderArray[1005] @ 16080
	.field  	3922,16			; _BootloaderArray[1006] @ 16096
	.field  	2152,16			; _BootloaderArray[1007] @ 16112
	.field  	19243,16			; _BootloaderArray[1008] @ 16128
	.field  	18442,16			; _BootloaderArray[1009] @ 16144
	.field  	1391,16			; _BootloaderArray[1010] @ 16160
	.field  	19466,16			; _BootloaderArray[1011] @ 16176
	.field  	20486,16			; _BootloaderArray[1012] @ 16192
	.field  	265,16			; _BootloaderArray[1013] @ 16208
	.field  	20510,16			; _BootloaderArray[1014] @ 16224
	.field  	17298,16			; _BootloaderArray[1015] @ 16240
	.field  	19540,16			; _BootloaderArray[1016] @ 16256
	.field  	53094,16			; _BootloaderArray[1017] @ 16272
	.field  	32630,16			; _BootloaderArray[1018] @ 16288
	.field  	12933,16			; _BootloaderArray[1019] @ 16304
	.field  	17298,16			; _BootloaderArray[1020] @ 16320
	.field  	19540,16			; _BootloaderArray[1021] @ 16336
	.field  	1517,16			; _BootloaderArray[1022] @ 16352
	.field  	18203,16			; _BootloaderArray[1023] @ 16368
	.field  	65535,16			; _BootloaderArray[1024] @ 16384
	.field  	749,16			; _BootloaderArray[1025] @ 16400
	.field  	18731,16			; _BootloaderArray[1026] @ 16416
	.field  	18834,16			; _BootloaderArray[1027] @ 16432
	.field  	37118,16			; _BootloaderArray[1028] @ 16448
	.field  	1536,16			; _BootloaderArray[1029] @ 16464
	.field  	48562,16			; _BootloaderArray[1030] @ 16480
	.field  	42123,16			; _BootloaderArray[1031] @ 16496
	.field  	32630,16			; _BootloaderArray[1032] @ 16512
	.field  	46724,16			; _BootloaderArray[1033] @ 16528
	.field  	43442,16			; _BootloaderArray[1034] @ 16544
	.field  	1516,16			; _BootloaderArray[1035] @ 16560
	.field  	2,16			; _BootloaderArray[1036] @ 16576
	.field  	49438,16			; _BootloaderArray[1037] @ 16592
	.field  	53547,16			; _BootloaderArray[1038] @ 16608
	.field  	55595,16			; _BootloaderArray[1039] @ 16624
	.field  	43509,16			; _BootloaderArray[1040] @ 16640
	.field  	13323,16			; _BootloaderArray[1041] @ 16656
	.field  	43253,16			; _BootloaderArray[1042] @ 16672
	.field  	13323,16			; _BootloaderArray[1043] @ 16688
	.field  	43032,16			; _BootloaderArray[1044] @ 16704
	.field  	65534,16			; _BootloaderArray[1045] @ 16720
	.field  	43252,16			; _BootloaderArray[1046] @ 16736
	.field  	13323,16			; _BootloaderArray[1047] @ 16752
	.field  	2038,16			; _BootloaderArray[1048] @ 16768
	.field  	119,16			; _BootloaderArray[1049] @ 16784
	.field  	16271,16			; _BootloaderArray[1050] @ 16800
	.field  	47615,16			; _BootloaderArray[1051] @ 16816
	.field  	50203,16			; _BootloaderArray[1052] @ 16832
	.field  	65535,16			; _BootloaderArray[1053] @ 16848
	.field  	1516,16			; _BootloaderArray[1054] @ 16864
	.field  	43508,16			; _BootloaderArray[1055] @ 16880
	.field  	13323,16			; _BootloaderArray[1056] @ 16896
	.field  	3738,16			; _BootloaderArray[1057] @ 16912
	.field  	6255,16			; _BootloaderArray[1058] @ 16928
	.field  	43508,16			; _BootloaderArray[1059] @ 16944
	.field  	13323,16			; _BootloaderArray[1060] @ 16960
	.field  	43509,16			; _BootloaderArray[1061] @ 16976
	.field  	33288,16			; _BootloaderArray[1062] @ 16992
	.field  	338,16			; _BootloaderArray[1063] @ 17008
	.field  	1004,16			; _BootloaderArray[1064] @ 17024
	.field  	594,16			; _BootloaderArray[1065] @ 17040
	.field  	4077,16			; _BootloaderArray[1066] @ 17056
	.field  	43509,16			; _BootloaderArray[1067] @ 17072
	.field  	33544,16			; _BootloaderArray[1068] @ 17088
	.field  	850,16			; _BootloaderArray[1069] @ 17104
	.field  	871,16			; _BootloaderArray[1070] @ 17120
	.field  	2970,16			; _BootloaderArray[1071] @ 17136
	.field  	2671,16			; _BootloaderArray[1072] @ 17152
	.field  	43509,16			; _BootloaderArray[1073] @ 17168
	.field  	34826,16			; _BootloaderArray[1074] @ 17184
	.field  	82,16			; _BootloaderArray[1075] @ 17200
	.field  	1004,16			; _BootloaderArray[1076] @ 17216
	.field  	154,16			; _BootloaderArray[1077] @ 17232
	.field  	1135,16			; _BootloaderArray[1078] @ 17248
	.field  	2714,16			; _BootloaderArray[1079] @ 17264
	.field  	623,16			; _BootloaderArray[1080] @ 17280
	.field  	3482,16			; _BootloaderArray[1081] @ 17296
	.field  	48779,16			; _BootloaderArray[1082] @ 17312
	.field  	1536,16			; _BootloaderArray[1083] @ 17328
	.field  	8822,16			; _BootloaderArray[1084] @ 17344
	.field  	43509,16			; _BootloaderArray[1085] @ 17360
	.field  	10608,16			; _BootloaderArray[1086] @ 17376
	.field  	26704,16			; _BootloaderArray[1087] @ 17392
	.field  	43508,16			; _BootloaderArray[1088] @ 17408
	.field  	10608,16			; _BootloaderArray[1089] @ 17424
	.field  	6774,16			; _BootloaderArray[1090] @ 17440
	.field  	1536,16			; _BootloaderArray[1091] @ 17456
	.field  	43509,16			; _BootloaderArray[1092] @ 17472
	.field  	30576,16			; _BootloaderArray[1093] @ 17488
	.field  	43253,16			; _BootloaderArray[1094] @ 17504
	.field  	30576,16			; _BootloaderArray[1095] @ 17520
	.field  	43032,16			; _BootloaderArray[1096] @ 17536
	.field  	65279,16			; _BootloaderArray[1097] @ 17552
	.field  	43252,16			; _BootloaderArray[1098] @ 17568
	.field  	30576,16			; _BootloaderArray[1099] @ 17584
	.field  	1536,16			; _BootloaderArray[1100] @ 17600
	.field  	8822,16			; _BootloaderArray[1101] @ 17616
	.field  	32630,16			; _BootloaderArray[1102] @ 17632
	.field  	645,16			; _BootloaderArray[1103] @ 17648
	.field  	154,16			; _BootloaderArray[1104] @ 17664
	.field  	43508,16			; _BootloaderArray[1105] @ 17680
	.field  	33034,16			; _BootloaderArray[1106] @ 17696
	.field  	43509,16			; _BootloaderArray[1107] @ 17712
	.field  	36874,16			; _BootloaderArray[1108] @ 17728
	.field  	1264,16			; _BootloaderArray[1109] @ 17744
	.field  	43508,16			; _BootloaderArray[1110] @ 17760
	.field  	36874,16			; _BootloaderArray[1111] @ 17776
	.field  	6774,16			; _BootloaderArray[1112] @ 17792
	.field  	1536,16			; _BootloaderArray[1113] @ 17808
	.field  	8822,16			; _BootloaderArray[1114] @ 17824
	.field  	154,16			; _BootloaderArray[1115] @ 17840
	.field  	43508,16			; _BootloaderArray[1116] @ 17856
	.field  	33290,16			; _BootloaderArray[1117] @ 17872
	.field  	32630,16			; _BootloaderArray[1118] @ 17888
	.field  	645,16			; _BootloaderArray[1119] @ 17904
	.field  	43509,16			; _BootloaderArray[1120] @ 17920
	.field  	33544,16			; _BootloaderArray[1121] @ 17936
	.field  	1874,16			; _BootloaderArray[1122] @ 17952
	.field  	1640,16			; _BootloaderArray[1123] @ 17968
	.field  	43304,16			; _BootloaderArray[1124] @ 17984
	.field  	22186,16			; _BootloaderArray[1125] @ 18000
	.field  	43508,16			; _BootloaderArray[1126] @ 18016
	.field  	33034,16			; _BootloaderArray[1127] @ 18032
	.field  	1391,16			; _BootloaderArray[1128] @ 18048
	.field  	43304,16			; _BootloaderArray[1129] @ 18064
	.field  	21930,16			; _BootloaderArray[1130] @ 18080
	.field  	43508,16			; _BootloaderArray[1131] @ 18096
	.field  	33034,16			; _BootloaderArray[1132] @ 18112
	.field  	43304,16			; _BootloaderArray[1133] @ 18128
	.field  	3342,16			; _BootloaderArray[1134] @ 18144
	.field  	43508,16			; _BootloaderArray[1135] @ 18160
	.field  	36874,16			; _BootloaderArray[1136] @ 18176
	.field  	154,16			; _BootloaderArray[1137] @ 18192
	.field  	923,16			; _BootloaderArray[1138] @ 18208
	.field  	32630,16			; _BootloaderArray[1139] @ 18224
	.field  	2951,16			; _BootloaderArray[1140] @ 18240
	.field  	8054,16			; _BootloaderArray[1141] @ 18256
	.field  	4098,16			; _BootloaderArray[1142] @ 18272
	.field  	5126,16			; _BootloaderArray[1143] @ 18288
	.field  	190,16			; _BootloaderArray[1144] @ 18304
	.field  	42511,16			; _BootloaderArray[1145] @ 18320
	.field  	1004,16			; _BootloaderArray[1146] @ 18336
	.field  	5317,16			; _BootloaderArray[1147] @ 18352
	.field  	26430,16			; _BootloaderArray[1148] @ 18368
	.field  	43304,16			; _BootloaderArray[1149] @ 18384
	.field  	3850,16			; _BootloaderArray[1150] @ 18400
	.field  	43508,16			; _BootloaderArray[1151] @ 18416
	.field  	36874,16			; _BootloaderArray[1152] @ 18432
	.field  	43304,16			; _BootloaderArray[1153] @ 18448
	.field  	52300,16			; _BootloaderArray[1154] @ 18464
	.field  	923,16			; _BootloaderArray[1155] @ 18480
	.field  	32630,16			; _BootloaderArray[1156] @ 18496
	.field  	2951,16			; _BootloaderArray[1157] @ 18512
	.field  	6774,16			; _BootloaderArray[1158] @ 18528
	.field  	1536,16			; _BootloaderArray[1159] @ 18544
	.field  	154,16			; _BootloaderArray[1160] @ 18560
	.field  	43508,16			; _BootloaderArray[1161] @ 18576
	.field  	37130,16			; _BootloaderArray[1162] @ 18592
	.field  	43508,16			; _BootloaderArray[1163] @ 18608
	.field  	37898,16			; _BootloaderArray[1164] @ 18624
	.field  	43508,16			; _BootloaderArray[1165] @ 18640
	.field  	38922,16			; _BootloaderArray[1166] @ 18656
	.field  	43508,16			; _BootloaderArray[1167] @ 18672
	.field  	39178,16			; _BootloaderArray[1168] @ 18688
	.field  	43508,16			; _BootloaderArray[1169] @ 18704
	.field  	39434,16			; _BootloaderArray[1170] @ 18720
	.field  	43508,16			; _BootloaderArray[1171] @ 18736
	.field  	39690,16			; _BootloaderArray[1172] @ 18752
	.field  	43508,16			; _BootloaderArray[1173] @ 18768
	.field  	37386,16			; _BootloaderArray[1174] @ 18784
	.field  	43508,16			; _BootloaderArray[1175] @ 18800
	.field  	35082,16			; _BootloaderArray[1176] @ 18816
	.field  	43508,16			; _BootloaderArray[1177] @ 18832
	.field  	35338,16			; _BootloaderArray[1178] @ 18848
	.field  	43508,16			; _BootloaderArray[1179] @ 18864
	.field  	35594,16			; _BootloaderArray[1180] @ 18880
	.field  	43508,16			; _BootloaderArray[1181] @ 18896
	.field  	35850,16			; _BootloaderArray[1182] @ 18912
	.field  	2714,16			; _BootloaderArray[1183] @ 18928
	.field  	43508,16			; _BootloaderArray[1184] @ 18944
	.field  	34826,16			; _BootloaderArray[1185] @ 18960
	.field  	43304,16			; _BootloaderArray[1186] @ 18976
	.field  	3084,16			; _BootloaderArray[1187] @ 18992
	.field  	43508,16			; _BootloaderArray[1188] @ 19008
	.field  	36874,16			; _BootloaderArray[1189] @ 19024
	.field  	1536,16			; _BootloaderArray[1190] @ 19040
	.field  	766,16			; _BootloaderArray[1191] @ 19056
	.field  	16926,16			; _BootloaderArray[1192] @ 19072
	.field  	8822,16			; _BootloaderArray[1193] @ 19088
	.field  	43304,16			; _BootloaderArray[1194] @ 19104
	.field  	3850,16			; _BootloaderArray[1195] @ 19120
	.field  	43508,16			; _BootloaderArray[1196] @ 19136
	.field  	36874,16			; _BootloaderArray[1197] @ 19152
	.field  	143,16			; _BootloaderArray[1198] @ 19168
	.field  	37898,16			; _BootloaderArray[1199] @ 19184
	.field  	297,16			; _BootloaderArray[1200] @ 19200
	.field  	16902,16			; _BootloaderArray[1201] @ 19216
	.field  	16639,16			; _BootloaderArray[1202] @ 19232
	.field  	50326,16			; _BootloaderArray[1203] @ 19248
	.field  	16902,16			; _BootloaderArray[1204] @ 19264
	.field  	912,16			; _BootloaderArray[1205] @ 19280
	.field  	33534,16			; _BootloaderArray[1206] @ 19296
	.field  	1536,16			; _BootloaderArray[1207] @ 19312
	.field  	8822,16			; _BootloaderArray[1208] @ 19328
	.field  	154,16			; _BootloaderArray[1209] @ 19344
	.field  	43508,16			; _BootloaderArray[1210] @ 19360
	.field  	37130,16			; _BootloaderArray[1211] @ 19376
	.field  	43304,16			; _BootloaderArray[1212] @ 19392
	.field  	3850,16			; _BootloaderArray[1213] @ 19408
	.field  	43508,16			; _BootloaderArray[1214] @ 19424
	.field  	36874,16			; _BootloaderArray[1215] @ 19440
	.field  	154,16			; _BootloaderArray[1216] @ 19456
	.field  	43508,16			; _BootloaderArray[1217] @ 19472
	.field  	35082,16			; _BootloaderArray[1218] @ 19488
	.field  	43508,16			; _BootloaderArray[1219] @ 19504
	.field  	35338,16			; _BootloaderArray[1220] @ 19520
	.field  	43508,16			; _BootloaderArray[1221] @ 19536
	.field  	35594,16			; _BootloaderArray[1222] @ 19552
	.field  	43508,16			; _BootloaderArray[1223] @ 19568
	.field  	35850,16			; _BootloaderArray[1224] @ 19584
	.field  	8447,16			; _BootloaderArray[1225] @ 19600
	.field  	39193,16			; _BootloaderArray[1226] @ 19616
	.field  	32630,16			; _BootloaderArray[1227] @ 19632
	.field  	2951,16			; _BootloaderArray[1228] @ 19648
	.field  	6774,16			; _BootloaderArray[1229] @ 19664
	.field  	1536,16			; _BootloaderArray[1230] @ 19680
	.field  	43304,16			; _BootloaderArray[1231] @ 19696
	.field  	65535,16			; _BootloaderArray[1232] @ 19712
	.field  	43508,16			; _BootloaderArray[1233] @ 19728
	.field  	38922,16			; _BootloaderArray[1234] @ 19744
	.field  	43508,16			; _BootloaderArray[1235] @ 19760
	.field  	39178,16			; _BootloaderArray[1236] @ 19776
	.field  	43508,16			; _BootloaderArray[1237] @ 19792
	.field  	39434,16			; _BootloaderArray[1238] @ 19808
	.field  	43508,16			; _BootloaderArray[1239] @ 19824
	.field  	39690,16			; _BootloaderArray[1240] @ 19840
	.field  	1536,16			; _BootloaderArray[1241] @ 19856
	.field  	4862,16			; _BootloaderArray[1242] @ 19872
	.field  	17950,16			; _BootloaderArray[1243] @ 19888
	.field  	17568,16			; _BootloaderArray[1244] @ 19904
	.field  	17064,16			; _BootloaderArray[1245] @ 19920
	.field  	22154,16			; _BootloaderArray[1246] @ 19936
	.field  	32630,16			; _BootloaderArray[1247] @ 19952
	.field  	32900,16			; _BootloaderArray[1248] @ 19968
	.field  	19862,16			; _BootloaderArray[1249] @ 19984
	.field  	82,16			; _BootloaderArray[1250] @ 20000
	.field  	1004,16			; _BootloaderArray[1251] @ 20016
	.field  	61439,16			; _BootloaderArray[1252] @ 20032
	.field  	38912,16			; _BootloaderArray[1253] @ 20048
	.field  	19752,16			; _BootloaderArray[1254] @ 20064
	.field  	59139,16			; _BootloaderArray[1255] @ 20080
	.field  	16902,16			; _BootloaderArray[1256] @ 20096
	.field  	17927,16			; _BootloaderArray[1257] @ 20112
	.field  	281,16			; _BootloaderArray[1258] @ 20128
	.field  	18462,16			; _BootloaderArray[1259] @ 20144
	.field  	17092,16			; _BootloaderArray[1260] @ 20160
	.field  	15759,16			; _BootloaderArray[1261] @ 20176
	.field  	128,16			; _BootloaderArray[1262] @ 20192
	.field  	43432,16			; _BootloaderArray[1263] @ 20208
	.field  	42511,16			; _BootloaderArray[1264] @ 20224
	.field  	3430,16			; _BootloaderArray[1265] @ 20240
	.field  	18628,16			; _BootloaderArray[1266] @ 20256
	.field  	16271,16			; _BootloaderArray[1267] @ 20272
	.field  	65407,16			; _BootloaderArray[1268] @ 20288
	.field  	43432,16			; _BootloaderArray[1269] @ 20304
	.field  	42511,16			; _BootloaderArray[1270] @ 20320
	.field  	1896,16			; _BootloaderArray[1271] @ 20336
	.field  	16902,16			; _BootloaderArray[1272] @ 20352
	.field  	4095,16			; _BootloaderArray[1273] @ 20368
	.field  	31488,16			; _BootloaderArray[1274] @ 20384
	.field  	18974,16			; _BootloaderArray[1275] @ 20400
	.field  	20011,16			; _BootloaderArray[1276] @ 20416
	.field  	5743,16			; _BootloaderArray[1277] @ 20432
	.field  	17092,16			; _BootloaderArray[1278] @ 20448
	.field  	15759,16			; _BootloaderArray[1279] @ 20464
	.field  	120,16			; _BootloaderArray[1280] @ 20480
	.field  	43432,16			; _BootloaderArray[1281] @ 20496
	.field  	42511,16			; _BootloaderArray[1282] @ 20512
	.field  	3686,16			; _BootloaderArray[1283] @ 20528
	.field  	18628,16			; _BootloaderArray[1284] @ 20544
	.field  	15759,16			; _BootloaderArray[1285] @ 20560
	.field  	65403,16			; _BootloaderArray[1286] @ 20576
	.field  	43432,16			; _BootloaderArray[1287] @ 20592
	.field  	42511,16			; _BootloaderArray[1288] @ 20608
	.field  	2152,16			; _BootloaderArray[1289] @ 20624
	.field  	16902,16			; _BootloaderArray[1290] @ 20640
	.field  	3071,16			; _BootloaderArray[1291] @ 20656
	.field  	44807,16			; _BootloaderArray[1292] @ 20672
	.field  	18974,16			; _BootloaderArray[1293] @ 20688
	.field  	20008,16			; _BootloaderArray[1294] @ 20704
	.field  	4096,16			; _BootloaderArray[1295] @ 20720
	.field  	879,16			; _BootloaderArray[1296] @ 20736
	.field  	3226,16			; _BootloaderArray[1297] @ 20752
	.field  	27247,16			; _BootloaderArray[1298] @ 20768
	.field  	32630,16			; _BootloaderArray[1299] @ 20784
	.field  	54404,16			; _BootloaderArray[1300] @ 20800
	.field  	258,16			; _BootloaderArray[1301] @ 20816
	.field  	20510,16			; _BootloaderArray[1302] @ 20832
	.field  	17926,16			; _BootloaderArray[1303] @ 20848
	.field  	20495,16			; _BootloaderArray[1304] @ 20864
	.field  	23656,16			; _BootloaderArray[1305] @ 20880
	.field  	20060,16			; _BootloaderArray[1306] @ 20896
	.field  	18950,16			; _BootloaderArray[1307] @ 20912
	.field  	32630,16			; _BootloaderArray[1308] @ 20928
	.field  	63621,16			; _BootloaderArray[1309] @ 20944
	.field  	19350,16			; _BootloaderArray[1310] @ 20960
	.field  	20779,16			; _BootloaderArray[1311] @ 20976
	.field  	20882,16			; _BootloaderArray[1312] @ 20992
	.field  	11602,16			; _BootloaderArray[1313] @ 21008
	.field  	10599,16			; _BootloaderArray[1314] @ 21024
	.field  	8054,16			; _BootloaderArray[1315] @ 21040
	.field  	4098,16			; _BootloaderArray[1316] @ 21056
	.field  	5126,16			; _BootloaderArray[1317] @ 21072
	.field  	190,16			; _BootloaderArray[1318] @ 21088
	.field  	42511,16			; _BootloaderArray[1319] @ 21104
	.field  	1004,16			; _BootloaderArray[1320] @ 21120
	.field  	5317,16			; _BootloaderArray[1321] @ 21136
	.field  	26430,16			; _BootloaderArray[1322] @ 21152
	.field  	17546,16			; _BootloaderArray[1323] @ 21168
	.field  	19346,16			; _BootloaderArray[1324] @ 21184
	.field  	43292,16			; _BootloaderArray[1325] @ 21200
	.field  	65535,16			; _BootloaderArray[1326] @ 21216
	.field  	50382,16			; _BootloaderArray[1327] @ 21232
	.field  	1260,16			; _BootloaderArray[1328] @ 21248
	.field  	19752,16			; _BootloaderArray[1329] @ 21264
	.field  	7936,16			; _BootloaderArray[1330] @ 21280
	.field  	6255,16			; _BootloaderArray[1331] @ 21296
	.field  	17546,16			; _BootloaderArray[1332] @ 21312
	.field  	50322,16			; _BootloaderArray[1333] @ 21328
	.field  	19284,16			; _BootloaderArray[1334] @ 21344
	.field  	5356,16			; _BootloaderArray[1335] @ 21360
	.field  	17546,16			; _BootloaderArray[1336] @ 21376
	.field  	19346,16			; _BootloaderArray[1337] @ 21392
	.field  	24319,16			; _BootloaderArray[1338] @ 21408
	.field  	50378,16			; _BootloaderArray[1339] @ 21424
	.field  	19606,16			; _BootloaderArray[1340] @ 21440
	.field  	20061,16			; _BootloaderArray[1341] @ 21456
	.field  	19548,16			; _BootloaderArray[1342] @ 21472
	.field  	18950,16			; _BootloaderArray[1343] @ 21488
	.field  	32630,16			; _BootloaderArray[1344] @ 21504
	.field  	13702,16			; _BootloaderArray[1345] @ 21520
	.field  	20060,16			; _BootloaderArray[1346] @ 21536
	.field  	18950,16			; _BootloaderArray[1347] @ 21552
	.field  	32630,16			; _BootloaderArray[1348] @ 21568
	.field  	63621,16			; _BootloaderArray[1349] @ 21584
	.field  	19350,16			; _BootloaderArray[1350] @ 21600
	.field  	20746,16			; _BootloaderArray[1351] @ 21616
	.field  	20882,16			; _BootloaderArray[1352] @ 21632
	.field  	11602,16			; _BootloaderArray[1353] @ 21648
	.field  	55656,16			; _BootloaderArray[1354] @ 21664
	.field  	17546,16			; _BootloaderArray[1355] @ 21680
	.field  	50322,16			; _BootloaderArray[1356] @ 21696
	.field  	19284,16			; _BootloaderArray[1357] @ 21712
	.field  	7148,16			; _BootloaderArray[1358] @ 21728
	.field  	19739,16			; _BootloaderArray[1359] @ 21744
	.field  	59139,16			; _BootloaderArray[1360] @ 21760
	.field  	1005,16			; _BootloaderArray[1361] @ 21776
	.field  	19752,16			; _BootloaderArray[1362] @ 21792
	.field  	7680,16			; _BootloaderArray[1363] @ 21808
	.field  	22154,16			; _BootloaderArray[1364] @ 21824
	.field  	19346,16			; _BootloaderArray[1365] @ 21840
	.field  	56470,16			; _BootloaderArray[1366] @ 21856
	.field  	17546,16			; _BootloaderArray[1367] @ 21872
	.field  	50322,16			; _BootloaderArray[1368] @ 21888
	.field  	22154,16			; _BootloaderArray[1369] @ 21904
	.field  	54422,16			; _BootloaderArray[1370] @ 21920
	.field  	20114,16			; _BootloaderArray[1371] @ 21936
	.field  	2029,16			; _BootloaderArray[1372] @ 21952
	.field  	22154,16			; _BootloaderArray[1373] @ 21968
	.field  	18950,16			; _BootloaderArray[1374] @ 21984
	.field  	8191,16			; _BootloaderArray[1375] @ 22000
	.field  	31488,16			; _BootloaderArray[1376] @ 22016
	.field  	50206,16			; _BootloaderArray[1377] @ 22032
	.field  	4975,16			; _BootloaderArray[1378] @ 22048
	.field  	22154,16			; _BootloaderArray[1379] @ 22064
	.field  	18950,16			; _BootloaderArray[1380] @ 22080
	.field  	7167,16			; _BootloaderArray[1381] @ 22096
	.field  	44807,16			; _BootloaderArray[1382] @ 22112
	.field  	50206,16			; _BootloaderArray[1383] @ 22128
	.field  	3439,16			; _BootloaderArray[1384] @ 22144
	.field  	17414,16			; _BootloaderArray[1385] @ 22160
	.field  	265,16			; _BootloaderArray[1386] @ 22176
	.field  	17438,16			; _BootloaderArray[1387] @ 22192
	.field  	18950,16			; _BootloaderArray[1388] @ 22208
	.field  	265,16			; _BootloaderArray[1389] @ 22224
	.field  	18974,16			; _BootloaderArray[1390] @ 22240
	.field  	20486,16			; _BootloaderArray[1391] @ 22256
	.field  	265,16			; _BootloaderArray[1392] @ 22272
	.field  	20510,16			; _BootloaderArray[1393] @ 22288
	.field  	17926,16			; _BootloaderArray[1394] @ 22304
	.field  	20495,16			; _BootloaderArray[1395] @ 22320
	.field  	42599,16			; _BootloaderArray[1396] @ 22336
	.field  	32630,16			; _BootloaderArray[1397] @ 22352
	.field  	51076,16			; _BootloaderArray[1398] @ 22368
	.field  	19739,16			; _BootloaderArray[1399] @ 22384
	.field  	59139,16			; _BootloaderArray[1400] @ 22400
	.field  	749,16			; _BootloaderArray[1401] @ 22416
	.field  	19755,16			; _BootloaderArray[1402] @ 22432
	.field  	19858,16			; _BootloaderArray[1403] @ 22448
	.field  	37630,16			; _BootloaderArray[1404] @ 22464
	.field  	1536,16			; _BootloaderArray[1405] @ 22480
	.field  	2302,16			; _BootloaderArray[1406] @ 22496
	.field  	17276,16			; _BootloaderArray[1407] @ 22512
	.field  	16926,16			; _BootloaderArray[1408] @ 22528
	.field  	32630,16			; _BootloaderArray[1409] @ 22544
	.field  	48772,16			; _BootloaderArray[1410] @ 22560
	.field  	18326,16			; _BootloaderArray[1411] @ 22576
	.field  	32630,16			; _BootloaderArray[1412] @ 22592
	.field  	6279,16			; _BootloaderArray[1413] @ 22608
	.field  	18070,16			; _BootloaderArray[1414] @ 22624
	.field  	16902,16			; _BootloaderArray[1415] @ 22640
	.field  	32630,16			; _BootloaderArray[1416] @ 22656
	.field  	8581,16			; _BootloaderArray[1417] @ 22672
	.field  	17558,16			; _BootloaderArray[1418] @ 22688
	.field  	17298,16			; _BootloaderArray[1419] @ 22704
	.field  	43290,16			; _BootloaderArray[1420] @ 22720
	.field  	2826,16			; _BootloaderArray[1421] @ 22736
	.field  	43508,16			; _BootloaderArray[1422] @ 22752
	.field  	36874,16			; _BootloaderArray[1423] @ 22768
	.field  	410,16			; _BootloaderArray[1424] @ 22784
	.field  	43508,16			; _BootloaderArray[1425] @ 22800
	.field  	37130,16			; _BootloaderArray[1426] @ 22816
	.field  	1178,16			; _BootloaderArray[1427] @ 22832
	.field  	43508,16			; _BootloaderArray[1428] @ 22848
	.field  	35082,16			; _BootloaderArray[1429] @ 22864
	.field  	8447,16			; _BootloaderArray[1430] @ 22880
	.field  	39193,16			; _BootloaderArray[1431] @ 22896
	.field  	32630,16			; _BootloaderArray[1432] @ 22912
	.field  	2951,16			; _BootloaderArray[1433] @ 22928
	.field  	17298,16			; _BootloaderArray[1434] @ 22944
	.field  	43290,16			; _BootloaderArray[1435] @ 22960
	.field  	2818,16			; _BootloaderArray[1436] @ 22976
	.field  	43508,16			; _BootloaderArray[1437] @ 22992
	.field  	36874,16			; _BootloaderArray[1438] @ 23008
	.field  	8959,16			; _BootloaderArray[1439] @ 23024
	.field  	13107,16			; _BootloaderArray[1440] @ 23040
	.field  	32630,16			; _BootloaderArray[1441] @ 23056
	.field  	2951,16			; _BootloaderArray[1442] @ 23072
	.field  	17496,16			; _BootloaderArray[1443] @ 23088
	.field  	143,16			; _BootloaderArray[1444] @ 23104
	.field  	39946,16			; _BootloaderArray[1445] @ 23120
	.field  	38034,16			; _BootloaderArray[1446] @ 23136
	.field  	17814,16			; _BootloaderArray[1447] @ 23152
	.field  	17298,16			; _BootloaderArray[1448] @ 23168
	.field  	43290,16			; _BootloaderArray[1449] @ 23184
	.field  	2826,16			; _BootloaderArray[1450] @ 23200
	.field  	43508,16			; _BootloaderArray[1451] @ 23216
	.field  	36874,16			; _BootloaderArray[1452] @ 23232
	.field  	154,16			; _BootloaderArray[1453] @ 23248
	.field  	411,16			; _BootloaderArray[1454] @ 23264
	.field  	32630,16			; _BootloaderArray[1455] @ 23280
	.field  	2951,16			; _BootloaderArray[1456] @ 23296
	.field  	32630,16			; _BootloaderArray[1457] @ 23312
	.field  	12933,16			; _BootloaderArray[1458] @ 23328
	.field  	18066,16			; _BootloaderArray[1459] @ 23344
	.field  	32630,16			; _BootloaderArray[1460] @ 23360
	.field  	7303,16			; _BootloaderArray[1461] @ 23376
	.field  	18420,16			; _BootloaderArray[1462] @ 23392
	.field  	30576,16			; _BootloaderArray[1463] @ 23408
	.field  	17810,16			; _BootloaderArray[1464] @ 23424
	.field  	35070,16			; _BootloaderArray[1465] @ 23440
	.field  	1536,16			; _BootloaderArray[1466] @ 23456
	.field  	2302,16			; _BootloaderArray[1467] @ 23472
	.field  	17533,16			; _BootloaderArray[1468] @ 23488
	.field  	17276,16			; _BootloaderArray[1469] @ 23504
	.field  	16926,16			; _BootloaderArray[1470] @ 23520
	.field  	32630,16			; _BootloaderArray[1471] @ 23536
	.field  	48772,16			; _BootloaderArray[1472] @ 23552
	.field  	18326,16			; _BootloaderArray[1473] @ 23568
	.field  	32630,16			; _BootloaderArray[1474] @ 23584
	.field  	6279,16			; _BootloaderArray[1475] @ 23600
	.field  	18070,16			; _BootloaderArray[1476] @ 23616
	.field  	16902,16			; _BootloaderArray[1477] @ 23632
	.field  	32630,16			; _BootloaderArray[1478] @ 23648
	.field  	8581,16			; _BootloaderArray[1479] @ 23664
	.field  	17814,16			; _BootloaderArray[1480] @ 23680
	.field  	32630,16			; _BootloaderArray[1481] @ 23696
	.field  	18821,16			; _BootloaderArray[1482] @ 23712
	.field  	17752,16			; _BootloaderArray[1483] @ 23728
	.field  	143,16			; _BootloaderArray[1484] @ 23744
	.field  	38922,16			; _BootloaderArray[1485] @ 23760
	.field  	17298,16			; _BootloaderArray[1486] @ 23776
	.field  	38038,16			; _BootloaderArray[1487] @ 23792
	.field  	17554,16			; _BootloaderArray[1488] @ 23808
	.field  	43290,16			; _BootloaderArray[1489] @ 23824
	.field  	2826,16			; _BootloaderArray[1490] @ 23840
	.field  	43508,16			; _BootloaderArray[1491] @ 23856
	.field  	36874,16			; _BootloaderArray[1492] @ 23872
	.field  	666,16			; _BootloaderArray[1493] @ 23888
	.field  	43508,16			; _BootloaderArray[1494] @ 23904
	.field  	37130,16			; _BootloaderArray[1495] @ 23920
	.field  	2458,16			; _BootloaderArray[1496] @ 23936
	.field  	43508,16			; _BootloaderArray[1497] @ 23952
	.field  	35082,16			; _BootloaderArray[1498] @ 23968
	.field  	1690,16			; _BootloaderArray[1499] @ 23984
	.field  	43508,16			; _BootloaderArray[1500] @ 24000
	.field  	35594,16			; _BootloaderArray[1501] @ 24016
	.field  	8447,16			; _BootloaderArray[1502] @ 24032
	.field  	39193,16			; _BootloaderArray[1503] @ 24048
	.field  	32630,16			; _BootloaderArray[1504] @ 24064
	.field  	2951,16			; _BootloaderArray[1505] @ 24080
	.field  	17554,16			; _BootloaderArray[1506] @ 24096
	.field  	43290,16			; _BootloaderArray[1507] @ 24112
	.field  	2818,16			; _BootloaderArray[1508] @ 24128
	.field  	43508,16			; _BootloaderArray[1509] @ 24144
	.field  	36874,16			; _BootloaderArray[1510] @ 24160
	.field  	154,16			; _BootloaderArray[1511] @ 24176
	.field  	1179,16			; _BootloaderArray[1512] @ 24192
	.field  	32630,16			; _BootloaderArray[1513] @ 24208
	.field  	2951,16			; _BootloaderArray[1514] @ 24224
	.field  	17554,16			; _BootloaderArray[1515] @ 24240
	.field  	43290,16			; _BootloaderArray[1516] @ 24256
	.field  	2826,16			; _BootloaderArray[1517] @ 24272
	.field  	43508,16			; _BootloaderArray[1518] @ 24288
	.field  	36874,16			; _BootloaderArray[1519] @ 24304
	.field  	154,16			; _BootloaderArray[1520] @ 24320
	.field  	411,16			; _BootloaderArray[1521] @ 24336
	.field  	32630,16			; _BootloaderArray[1522] @ 24352
	.field  	2951,16			; _BootloaderArray[1523] @ 24368
	.field  	32630,16			; _BootloaderArray[1524] @ 24384
	.field  	12933,16			; _BootloaderArray[1525] @ 24400
	.field  	18066,16			; _BootloaderArray[1526] @ 24416
	.field  	32630,16			; _BootloaderArray[1527] @ 24432
	.field  	7303,16			; _BootloaderArray[1528] @ 24448
	.field  	18420,16			; _BootloaderArray[1529] @ 24464
	.field  	30576,16			; _BootloaderArray[1530] @ 24480
	.field  	35070,16			; _BootloaderArray[1531] @ 24496
	.field  	1536,16			; _BootloaderArray[1532] @ 24512
	.field  	3326,16			; _BootloaderArray[1533] @ 24528
	.field  	18592,16			; _BootloaderArray[1534] @ 24544
	.field  	17814,16			; _BootloaderArray[1535] @ 24560
	.field  	17576,16			; _BootloaderArray[1536] @ 24576
	.field  	17604,16			; _BootloaderArray[1537] @ 24592
	.field  	15759,16			; _BootloaderArray[1538] @ 24608
	.field  	128,16			; _BootloaderArray[1539] @ 24624
	.field  	43432,16			; _BootloaderArray[1540] @ 24640
	.field  	42511,16			; _BootloaderArray[1541] @ 24656
	.field  	4198,16			; _BootloaderArray[1542] @ 24672
	.field  	17792,16			; _BootloaderArray[1543] @ 24688
	.field  	17414,16			; _BootloaderArray[1544] @ 24704
	.field  	42765,16			; _BootloaderArray[1545] @ 24720
	.field  	42526,16			; _BootloaderArray[1546] @ 24736
	.field  	16271,16			; _BootloaderArray[1547] @ 24752
	.field  	65407,16			; _BootloaderArray[1548] @ 24768
	.field  	33246,16			; _BootloaderArray[1549] @ 24784
	.field  	43432,16			; _BootloaderArray[1550] @ 24800
	.field  	42511,16			; _BootloaderArray[1551] @ 24816
	.field  	1640,16			; _BootloaderArray[1552] @ 24832
	.field  	17414,16			; _BootloaderArray[1553] @ 24848
	.field  	4095,16			; _BootloaderArray[1554] @ 24864
	.field  	31488,16			; _BootloaderArray[1555] @ 24880
	.field  	19486,16			; _BootloaderArray[1556] @ 24896
	.field  	879,16			; _BootloaderArray[1557] @ 24912
	.field  	3226,16			; _BootloaderArray[1558] @ 24928
	.field  	8047,16			; _BootloaderArray[1559] @ 24944
	.field  	16680,16			; _BootloaderArray[1560] @ 24960
	.field  	16384,16			; _BootloaderArray[1561] @ 24976
	.field  	17757,16			; _BootloaderArray[1562] @ 24992
	.field  	18570,16			; _BootloaderArray[1563] @ 25008
	.field  	19462,16			; _BootloaderArray[1564] @ 25024
	.field  	32630,16			; _BootloaderArray[1565] @ 25040
	.field  	47495,16			; _BootloaderArray[1566] @ 25056
	.field  	16680,16			; _BootloaderArray[1567] @ 25072
	.field  	32768,16			; _BootloaderArray[1568] @ 25088
	.field  	16527,16			; _BootloaderArray[1569] @ 25104
	.field  	4,16			; _BootloaderArray[1570] @ 25120
	.field  	18570,16			; _BootloaderArray[1571] @ 25136
	.field  	19462,16			; _BootloaderArray[1572] @ 25152
	.field  	32630,16			; _BootloaderArray[1573] @ 25168
	.field  	47495,16			; _BootloaderArray[1574] @ 25184
	.field  	16683,16			; _BootloaderArray[1575] @ 25200
	.field  	17757,16			; _BootloaderArray[1576] @ 25216
	.field  	18570,16			; _BootloaderArray[1577] @ 25232
	.field  	19462,16			; _BootloaderArray[1578] @ 25248
	.field  	32630,16			; _BootloaderArray[1579] @ 25264
	.field  	47495,16			; _BootloaderArray[1580] @ 25280
	.field  	18838,16			; _BootloaderArray[1581] @ 25296
	.field  	82,16			; _BootloaderArray[1582] @ 25312
	.field  	1772,16			; _BootloaderArray[1583] @ 25328
	.field  	18570,16			; _BootloaderArray[1584] @ 25344
	.field  	50182,16			; _BootloaderArray[1585] @ 25360
	.field  	8191,16			; _BootloaderArray[1586] @ 25376
	.field  	31488,16			; _BootloaderArray[1587] @ 25392
	.field  	50206,16			; _BootloaderArray[1588] @ 25408
	.field  	18834,16			; _BootloaderArray[1589] @ 25424
	.field  	36094,16			; _BootloaderArray[1590] @ 25440
	.field  	1536,16			; _BootloaderArray[1591] @ 25456
	.field  	4350,16			; _BootloaderArray[1592] @ 25472
	.field  	18080,16			; _BootloaderArray[1593] @ 25488
	.field  	17302,16			; _BootloaderArray[1594] @ 25504
	.field  	17064,16			; _BootloaderArray[1595] @ 25520
	.field  	19240,16			; _BootloaderArray[1596] @ 25536
	.field  	59139,16			; _BootloaderArray[1597] @ 25552
	.field  	17092,16			; _BootloaderArray[1598] @ 25568
	.field  	15759,16			; _BootloaderArray[1599] @ 25584
	.field  	128,16			; _BootloaderArray[1600] @ 25600
	.field  	43432,16			; _BootloaderArray[1601] @ 25616
	.field  	42511,16			; _BootloaderArray[1602] @ 25632
	.field  	3430,16			; _BootloaderArray[1603] @ 25648
	.field  	17092,16			; _BootloaderArray[1604] @ 25664
	.field  	16271,16			; _BootloaderArray[1605] @ 25680
	.field  	65407,16			; _BootloaderArray[1606] @ 25696
	.field  	43432,16			; _BootloaderArray[1607] @ 25712
	.field  	42511,16			; _BootloaderArray[1608] @ 25728
	.field  	1896,16			; _BootloaderArray[1609] @ 25744
	.field  	16902,16			; _BootloaderArray[1610] @ 25760
	.field  	4095,16			; _BootloaderArray[1611] @ 25776
	.field  	31488,16			; _BootloaderArray[1612] @ 25792
	.field  	19998,16			; _BootloaderArray[1613] @ 25808
	.field  	20267,16			; _BootloaderArray[1614] @ 25824
	.field  	879,16			; _BootloaderArray[1615] @ 25840
	.field  	3226,16			; _BootloaderArray[1616] @ 25856
	.field  	15983,16			; _BootloaderArray[1617] @ 25872
	.field  	18472,16			; _BootloaderArray[1618] @ 25888
	.field  	256,16			; _BootloaderArray[1619] @ 25904
	.field  	18984,16			; _BootloaderArray[1620] @ 25920
	.field  	5888,16			; _BootloaderArray[1621] @ 25936
	.field  	18731,16			; _BootloaderArray[1622] @ 25952
	.field  	18715,16			; _BootloaderArray[1623] @ 25968
	.field  	53255,16			; _BootloaderArray[1624] @ 25984
	.field  	8550,16			; _BootloaderArray[1625] @ 26000
	.field  	20316,16			; _BootloaderArray[1626] @ 26016
	.field  	19974,16			; _BootloaderArray[1627] @ 26032
	.field  	32630,16			; _BootloaderArray[1628] @ 26048
	.field  	64903,16			; _BootloaderArray[1629] @ 26064
	.field  	18326,16			; _BootloaderArray[1630] @ 26080
	.field  	8054,16			; _BootloaderArray[1631] @ 26096
	.field  	4098,16			; _BootloaderArray[1632] @ 26112
	.field  	5126,16			; _BootloaderArray[1633] @ 26128
	.field  	190,16			; _BootloaderArray[1634] @ 26144
	.field  	42511,16			; _BootloaderArray[1635] @ 26160
	.field  	1004,16			; _BootloaderArray[1636] @ 26176
	.field  	5317,16			; _BootloaderArray[1637] @ 26192
	.field  	26430,16			; _BootloaderArray[1638] @ 26208
	.field  	18322,16			; _BootloaderArray[1639] @ 26224
	.field  	2284,16			; _BootloaderArray[1640] @ 26240
	.field  	24319,16			; _BootloaderArray[1641] @ 26256
	.field  	20317,16			; _BootloaderArray[1642] @ 26272
	.field  	43356,16			; _BootloaderArray[1643] @ 26288
	.field  	19974,16			; _BootloaderArray[1644] @ 26304
	.field  	32630,16			; _BootloaderArray[1645] @ 26320
	.field  	14216,16			; _BootloaderArray[1646] @ 26336
	.field  	1903,16			; _BootloaderArray[1647] @ 26352
	.field  	18987,16			; _BootloaderArray[1648] @ 26368
	.field  	19974,16			; _BootloaderArray[1649] @ 26384
	.field  	265,16			; _BootloaderArray[1650] @ 26400
	.field  	19998,16			; _BootloaderArray[1651] @ 26416
	.field  	18442,16			; _BootloaderArray[1652] @ 26432
	.field  	1391,16			; _BootloaderArray[1653] @ 26448
	.field  	18698,16			; _BootloaderArray[1654] @ 26464
	.field  	18715,16			; _BootloaderArray[1655] @ 26480
	.field  	53255,16			; _BootloaderArray[1656] @ 26496
	.field  	57705,16			; _BootloaderArray[1657] @ 26512
	.field  	19090,16			; _BootloaderArray[1658] @ 26528
	.field  	3308,16			; _BootloaderArray[1659] @ 26544
	.field  	18715,16			; _BootloaderArray[1660] @ 26560
	.field  	53255,16			; _BootloaderArray[1661] @ 26576
	.field  	2409,16			; _BootloaderArray[1662] @ 26592
	.field  	19240,16			; _BootloaderArray[1663] @ 26608
	.field  	5888,16			; _BootloaderArray[1664] @ 26624
	.field  	18058,16			; _BootloaderArray[1665] @ 26640
	.field  	19974,16			; _BootloaderArray[1666] @ 26656
	.field  	8191,16			; _BootloaderArray[1667] @ 26672
	.field  	31488,16			; _BootloaderArray[1668] @ 26688
	.field  	50206,16			; _BootloaderArray[1669] @ 26704
	.field  	1135,16			; _BootloaderArray[1670] @ 26720
	.field  	17298,16			; _BootloaderArray[1671] @ 26736
	.field  	18516,16			; _BootloaderArray[1672] @ 26752
	.field  	52071,16			; _BootloaderArray[1673] @ 26768
	.field  	19346,16			; _BootloaderArray[1674] @ 26784
	.field  	5970,16			; _BootloaderArray[1675] @ 26800
	.field  	748,16			; _BootloaderArray[1676] @ 26816
	.field  	19243,16			; _BootloaderArray[1677] @ 26832
	.field  	19346,16			; _BootloaderArray[1678] @ 26848
	.field  	37118,16			; _BootloaderArray[1679] @ 26864
	.field  	1536,16			; _BootloaderArray[1680] @ 26880
	.field  	8054,16			; _BootloaderArray[1681] @ 26896
	.field  	4098,16			; _BootloaderArray[1682] @ 26912
	.field  	43399,16			; _BootloaderArray[1683] @ 26928
	.field  	25430,16			; _BootloaderArray[1684] @ 26944
	.field  	5632,16			; _BootloaderArray[1685] @ 26960
	.field  	13337,16			; _BootloaderArray[1686] @ 26976
	.field  	50262,16			; _BootloaderArray[1687] @ 26992
	.field  	1536,16			; _BootloaderArray[1688] @ 27008
	.field  	17407,16			; _BootloaderArray[1689] @ 27024
	.field  	281,16			; _BootloaderArray[1690] @ 27040
	.field  	49750,16			; _BootloaderArray[1691] @ 27056
	.field  	65535,16			; _BootloaderArray[1692] @ 27072
	.field  	1536,16			; _BootloaderArray[1693] @ 27088
	.field  	2166,16			; _BootloaderArray[1694] @ 27104
	.field  	12347,16			; _BootloaderArray[1695] @ 27120
	.field  	48786,16			; _BootloaderArray[1696] @ 27136
	.field  	1536,16			; _BootloaderArray[1697] @ 27152
	.field  	48534,16			; _BootloaderArray[1698] @ 27168
	.field  	118,16			; _BootloaderArray[1699] @ 27184
	.field  	1536,16			; _BootloaderArray[1700] @ 27200
	.field  	2302,16			; _BootloaderArray[1701] @ 27216
	.field  	17276,16			; _BootloaderArray[1702] @ 27232
	.field  	16926,16			; _BootloaderArray[1703] @ 27248
	.field  	32630,16			; _BootloaderArray[1704] @ 27264
	.field  	48772,16			; _BootloaderArray[1705] @ 27280
	.field  	18326,16			; _BootloaderArray[1706] @ 27296
	.field  	32630,16			; _BootloaderArray[1707] @ 27312
	.field  	6279,16			; _BootloaderArray[1708] @ 27328
	.field  	18070,16			; _BootloaderArray[1709] @ 27344
	.field  	16902,16			; _BootloaderArray[1710] @ 27360
	.field  	32630,16			; _BootloaderArray[1711] @ 27376
	.field  	8581,16			; _BootloaderArray[1712] @ 27392
	.field  	17814,16			; _BootloaderArray[1713] @ 27408
	.field  	922,16			; _BootloaderArray[1714] @ 27424
	.field  	43508,16			; _BootloaderArray[1715] @ 27440
	.field  	37130,16			; _BootloaderArray[1716] @ 27456
	.field  	2714,16			; _BootloaderArray[1717] @ 27472
	.field  	43508,16			; _BootloaderArray[1718] @ 27488
	.field  	35850,16			; _BootloaderArray[1719] @ 27504
	.field  	154,16			; _BootloaderArray[1720] @ 27520
	.field  	667,16			; _BootloaderArray[1721] @ 27536
	.field  	32630,16			; _BootloaderArray[1722] @ 27552
	.field  	2951,16			; _BootloaderArray[1723] @ 27568
	.field  	17298,16			; _BootloaderArray[1724] @ 27584
	.field  	43290,16			; _BootloaderArray[1725] @ 27600
	.field  	2826,16			; _BootloaderArray[1726] @ 27616
	.field  	43508,16			; _BootloaderArray[1727] @ 27632
	.field  	36874,16			; _BootloaderArray[1728] @ 27648
	.field  	8447,16			; _BootloaderArray[1729] @ 27664
	.field  	39193,16			; _BootloaderArray[1730] @ 27680
	.field  	32630,16			; _BootloaderArray[1731] @ 27696
	.field  	2951,16			; _BootloaderArray[1732] @ 27712
	.field  	17298,16			; _BootloaderArray[1733] @ 27728
	.field  	43290,16			; _BootloaderArray[1734] @ 27744
	.field  	2818,16			; _BootloaderArray[1735] @ 27760
	.field  	43508,16			; _BootloaderArray[1736] @ 27776
	.field  	36874,16			; _BootloaderArray[1737] @ 27792
	.field  	12287,16			; _BootloaderArray[1738] @ 27808
	.field  	256,16			; _BootloaderArray[1739] @ 27824
	.field  	32630,16			; _BootloaderArray[1740] @ 27840
	.field  	2951,16			; _BootloaderArray[1741] @ 27856
	.field  	17752,16			; _BootloaderArray[1742] @ 27872
	.field  	143,16			; _BootloaderArray[1743] @ 27888
	.field  	39946,16			; _BootloaderArray[1744] @ 27904
	.field  	38034,16			; _BootloaderArray[1745] @ 27920
	.field  	17558,16			; _BootloaderArray[1746] @ 27936
	.field  	17298,16			; _BootloaderArray[1747] @ 27952
	.field  	43290,16			; _BootloaderArray[1748] @ 27968
	.field  	2826,16			; _BootloaderArray[1749] @ 27984
	.field  	43508,16			; _BootloaderArray[1750] @ 28000
	.field  	36874,16			; _BootloaderArray[1751] @ 28016
	.field  	154,16			; _BootloaderArray[1752] @ 28032
	.field  	411,16			; _BootloaderArray[1753] @ 28048
	.field  	32630,16			; _BootloaderArray[1754] @ 28064
	.field  	2951,16			; _BootloaderArray[1755] @ 28080
	.field  	43304,16			; _BootloaderArray[1756] @ 28096
	.field  	3850,16			; _BootloaderArray[1757] @ 28112
	.field  	43508,16			; _BootloaderArray[1758] @ 28128
	.field  	36874,16			; _BootloaderArray[1759] @ 28144
	.field  	8447,16			; _BootloaderArray[1760] @ 28160
	.field  	39193,16			; _BootloaderArray[1761] @ 28176
	.field  	32630,16			; _BootloaderArray[1762] @ 28192
	.field  	2951,16			; _BootloaderArray[1763] @ 28208
	.field  	6774,16			; _BootloaderArray[1764] @ 28224
	.field  	18066,16			; _BootloaderArray[1765] @ 28240
	.field  	32630,16			; _BootloaderArray[1766] @ 28256
	.field  	7303,16			; _BootloaderArray[1767] @ 28272
	.field  	18420,16			; _BootloaderArray[1768] @ 28288
	.field  	30576,16			; _BootloaderArray[1769] @ 28304
	.field  	17554,16			; _BootloaderArray[1770] @ 28320
	.field  	35070,16			; _BootloaderArray[1771] @ 28336
	.field  	1536,16			; _BootloaderArray[1772] @ 28352
	.field  	2302,16			; _BootloaderArray[1773] @ 28368
	.field  	17533,16			; _BootloaderArray[1774] @ 28384
	.field  	17276,16			; _BootloaderArray[1775] @ 28400
	.field  	16926,16			; _BootloaderArray[1776] @ 28416
	.field  	32630,16			; _BootloaderArray[1777] @ 28432
	.field  	48772,16			; _BootloaderArray[1778] @ 28448
	.field  	18326,16			; _BootloaderArray[1779] @ 28464
	.field  	32630,16			; _BootloaderArray[1780] @ 28480
	.field  	6279,16			; _BootloaderArray[1781] @ 28496
	.field  	18070,16			; _BootloaderArray[1782] @ 28512
	.field  	16902,16			; _BootloaderArray[1783] @ 28528
	.field  	32630,16			; _BootloaderArray[1784] @ 28544
	.field  	8581,16			; _BootloaderArray[1785] @ 28560
	.field  	1178,16			; _BootloaderArray[1786] @ 28576
	.field  	43508,16			; _BootloaderArray[1787] @ 28592
	.field  	37130,16			; _BootloaderArray[1788] @ 28608
	.field  	1690,16			; _BootloaderArray[1789] @ 28624
	.field  	43508,16			; _BootloaderArray[1790] @ 28640
	.field  	35594,16			; _BootloaderArray[1791] @ 28656
	.field  	2970,16			; _BootloaderArray[1792] @ 28672
	.field  	43508,16			; _BootloaderArray[1793] @ 28688
	.field  	35082,16			; _BootloaderArray[1794] @ 28704
	.field  	922,16			; _BootloaderArray[1795] @ 28720
	.field  	43508,16			; _BootloaderArray[1796] @ 28736
	.field  	35850,16			; _BootloaderArray[1797] @ 28752
	.field  	17396,16			; _BootloaderArray[1798] @ 28768
	.field  	35338,16			; _BootloaderArray[1799] @ 28784
	.field  	154,16			; _BootloaderArray[1800] @ 28800
	.field  	667,16			; _BootloaderArray[1801] @ 28816
	.field  	32630,16			; _BootloaderArray[1802] @ 28832
	.field  	2951,16			; _BootloaderArray[1803] @ 28848
	.field  	17554,16			; _BootloaderArray[1804] @ 28864
	.field  	43290,16			; _BootloaderArray[1805] @ 28880
	.field  	2826,16			; _BootloaderArray[1806] @ 28896
	.field  	43508,16			; _BootloaderArray[1807] @ 28912
	.field  	36874,16			; _BootloaderArray[1808] @ 28928
	.field  	17707,16			; _BootloaderArray[1809] @ 28944
	.field  	17298,16			; _BootloaderArray[1810] @ 28960
	.field  	17748,16			; _BootloaderArray[1811] @ 28976
	.field  	2408,16			; _BootloaderArray[1812] @ 28992
	.field  	154,16			; _BootloaderArray[1813] @ 29008
	.field  	667,16			; _BootloaderArray[1814] @ 29024
	.field  	32630,16			; _BootloaderArray[1815] @ 29040
	.field  	2951,16			; _BootloaderArray[1816] @ 29056
	.field  	17674,16			; _BootloaderArray[1817] @ 29072
	.field  	17298,16			; _BootloaderArray[1818] @ 29088
	.field  	17748,16			; _BootloaderArray[1819] @ 29104
	.field  	63847,16			; _BootloaderArray[1820] @ 29120
	.field  	17554,16			; _BootloaderArray[1821] @ 29136
	.field  	43290,16			; _BootloaderArray[1822] @ 29152
	.field  	2818,16			; _BootloaderArray[1823] @ 29168
	.field  	43508,16			; _BootloaderArray[1824] @ 29184
	.field  	36874,16			; _BootloaderArray[1825] @ 29200
	.field  	12287,16			; _BootloaderArray[1826] @ 29216
	.field  	6165,16			; _BootloaderArray[1827] @ 29232
	.field  	32630,16			; _BootloaderArray[1828] @ 29248
	.field  	2951,16			; _BootloaderArray[1829] @ 29264
	.field  	17554,16			; _BootloaderArray[1830] @ 29280
	.field  	43290,16			; _BootloaderArray[1831] @ 29296
	.field  	2826,16			; _BootloaderArray[1832] @ 29312
	.field  	43508,16			; _BootloaderArray[1833] @ 29328
	.field  	36874,16			; _BootloaderArray[1834] @ 29344
	.field  	154,16			; _BootloaderArray[1835] @ 29360
	.field  	10395,16			; _BootloaderArray[1836] @ 29376
	.field  	32630,16			; _BootloaderArray[1837] @ 29392
	.field  	2951,16			; _BootloaderArray[1838] @ 29408
	.field  	43304,16			; _BootloaderArray[1839] @ 29424
	.field  	3850,16			; _BootloaderArray[1840] @ 29440
	.field  	43508,16			; _BootloaderArray[1841] @ 29456
	.field  	36874,16			; _BootloaderArray[1842] @ 29472
	.field  	8447,16			; _BootloaderArray[1843] @ 29488
	.field  	39193,16			; _BootloaderArray[1844] @ 29504
	.field  	32630,16			; _BootloaderArray[1845] @ 29520
	.field  	2951,16			; _BootloaderArray[1846] @ 29536
	.field  	6774,16			; _BootloaderArray[1847] @ 29552
	.field  	18066,16			; _BootloaderArray[1848] @ 29568
	.field  	32630,16			; _BootloaderArray[1849] @ 29584
	.field  	7303,16			; _BootloaderArray[1850] @ 29600
	.field  	18420,16			; _BootloaderArray[1851] @ 29616
	.field  	30576,16			; _BootloaderArray[1852] @ 29632
	.field  	35070,16			; _BootloaderArray[1853] @ 29648
	.field  	1536,16			; _BootloaderArray[1854] @ 29664
	.field  	3326,16			; _BootloaderArray[1855] @ 29680
	.field  	18088,16			; _BootloaderArray[1856] @ 29696
	.field  	17277,16			; _BootloaderArray[1857] @ 29712
	.field  	16926,16			; _BootloaderArray[1858] @ 29728
	.field  	19240,16			; _BootloaderArray[1859] @ 29744
	.field  	59139,16			; _BootloaderArray[1860] @ 29760
	.field  	18728,16			; _BootloaderArray[1861] @ 29776
	.field  	256,16			; _BootloaderArray[1862] @ 29792
	.field  	17298,16			; _BootloaderArray[1863] @ 29808
	.field  	18772,16			; _BootloaderArray[1864] @ 29824
	.field  	12392,16			; _BootloaderArray[1865] @ 29840
	.field  	18987,16			; _BootloaderArray[1866] @ 29856
	.field  	19090,16			; _BootloaderArray[1867] @ 29872
	.field  	11602,16			; _BootloaderArray[1868] @ 29888
	.field  	7015,16			; _BootloaderArray[1869] @ 29904
	.field  	20316,16			; _BootloaderArray[1870] @ 29920
	.field  	16902,16			; _BootloaderArray[1871] @ 29936
	.field  	32630,16			; _BootloaderArray[1872] @ 29952
	.field  	63621,16			; _BootloaderArray[1873] @ 29968
	.field  	18326,16			; _BootloaderArray[1874] @ 29984
	.field  	8054,16			; _BootloaderArray[1875] @ 30000
	.field  	4098,16			; _BootloaderArray[1876] @ 30016
	.field  	5126,16			; _BootloaderArray[1877] @ 30032
	.field  	190,16			; _BootloaderArray[1878] @ 30048
	.field  	42511,16			; _BootloaderArray[1879] @ 30064
	.field  	1004,16			; _BootloaderArray[1880] @ 30080
	.field  	5317,16			; _BootloaderArray[1881] @ 30096
	.field  	26430,16			; _BootloaderArray[1882] @ 30112
	.field  	18322,16			; _BootloaderArray[1883] @ 30128
	.field  	3308,16			; _BootloaderArray[1884] @ 30144
	.field  	24319,16			; _BootloaderArray[1885] @ 30160
	.field  	18582,16			; _BootloaderArray[1886] @ 30176
	.field  	18524,16			; _BootloaderArray[1887] @ 30192
	.field  	20317,16			; _BootloaderArray[1888] @ 30208
	.field  	16902,16			; _BootloaderArray[1889] @ 30224
	.field  	32630,16			; _BootloaderArray[1890] @ 30240
	.field  	13702,16			; _BootloaderArray[1891] @ 30256
	.field  	18954,16			; _BootloaderArray[1892] @ 30272
	.field  	19090,16			; _BootloaderArray[1893] @ 30288
	.field  	11602,16			; _BootloaderArray[1894] @ 30304
	.field  	59240,16			; _BootloaderArray[1895] @ 30320
	.field  	18322,16			; _BootloaderArray[1896] @ 30336
	.field  	2540,16			; _BootloaderArray[1897] @ 30352
	.field  	20370,16			; _BootloaderArray[1898] @ 30368
	.field  	2029,16			; _BootloaderArray[1899] @ 30384
	.field  	18058,16			; _BootloaderArray[1900] @ 30400
	.field  	16902,16			; _BootloaderArray[1901] @ 30416
	.field  	50206,16			; _BootloaderArray[1902] @ 30432
	.field  	19240,16			; _BootloaderArray[1903] @ 30448
	.field  	5376,16			; _BootloaderArray[1904] @ 30464
	.field  	2159,16			; _BootloaderArray[1905] @ 30480
	.field  	16902,16			; _BootloaderArray[1906] @ 30496
	.field  	265,16			; _BootloaderArray[1907] @ 30512
	.field  	16926,16			; _BootloaderArray[1908] @ 30528
	.field  	18698,16			; _BootloaderArray[1909] @ 30544
	.field  	17298,16			; _BootloaderArray[1910] @ 30560
	.field  	18772,16			; _BootloaderArray[1911] @ 30576
	.field  	53863,16			; _BootloaderArray[1912] @ 30592
	.field  	19346,16			; _BootloaderArray[1913] @ 30608
	.field  	5458,16			; _BootloaderArray[1914] @ 30624
	.field  	1516,16			; _BootloaderArray[1915] @ 30640
	.field  	43291,16			; _BootloaderArray[1916] @ 30656
	.field  	59139,16			; _BootloaderArray[1917] @ 30672
	.field  	749,16			; _BootloaderArray[1918] @ 30688
	.field  	19243,16			; _BootloaderArray[1919] @ 30704
	.field  	19346,16			; _BootloaderArray[1920] @ 30720
	.field  	36094,16			; _BootloaderArray[1921] @ 30736
	.field  	1536,16			; _BootloaderArray[1922] @ 30752
	.field  	2302,16			; _BootloaderArray[1923] @ 30768
	.field  	17276,16			; _BootloaderArray[1924] @ 30784
	.field  	16926,16			; _BootloaderArray[1925] @ 30800
	.field  	32630,16			; _BootloaderArray[1926] @ 30816
	.field  	48772,16			; _BootloaderArray[1927] @ 30832
	.field  	18326,16			; _BootloaderArray[1928] @ 30848
	.field  	32630,16			; _BootloaderArray[1929] @ 30864
	.field  	6279,16			; _BootloaderArray[1930] @ 30880
	.field  	18070,16			; _BootloaderArray[1931] @ 30896
	.field  	16902,16			; _BootloaderArray[1932] @ 30912
	.field  	32630,16			; _BootloaderArray[1933] @ 30928
	.field  	8581,16			; _BootloaderArray[1934] @ 30944
	.field  	17814,16			; _BootloaderArray[1935] @ 30960
	.field  	17298,16			; _BootloaderArray[1936] @ 30976
	.field  	43290,16			; _BootloaderArray[1937] @ 30992
	.field  	2826,16			; _BootloaderArray[1938] @ 31008
	.field  	43508,16			; _BootloaderArray[1939] @ 31024
	.field  	36874,16			; _BootloaderArray[1940] @ 31040
	.field  	1434,16			; _BootloaderArray[1941] @ 31056
	.field  	43508,16			; _BootloaderArray[1942] @ 31072
	.field  	37130,16			; _BootloaderArray[1943] @ 31088
	.field  	8447,16			; _BootloaderArray[1944] @ 31104
	.field  	39193,16			; _BootloaderArray[1945] @ 31120
	.field  	32630,16			; _BootloaderArray[1946] @ 31136
	.field  	2951,16			; _BootloaderArray[1947] @ 31152
	.field  	17298,16			; _BootloaderArray[1948] @ 31168
	.field  	43290,16			; _BootloaderArray[1949] @ 31184
	.field  	2818,16			; _BootloaderArray[1950] @ 31200
	.field  	43508,16			; _BootloaderArray[1951] @ 31216
	.field  	36874,16			; _BootloaderArray[1952] @ 31232
	.field  	154,16			; _BootloaderArray[1953] @ 31248
	.field  	2203,16			; _BootloaderArray[1954] @ 31264
	.field  	32630,16			; _BootloaderArray[1955] @ 31280
	.field  	2951,16			; _BootloaderArray[1956] @ 31296
	.field  	17752,16			; _BootloaderArray[1957] @ 31312
	.field  	143,16			; _BootloaderArray[1958] @ 31328
	.field  	39946,16			; _BootloaderArray[1959] @ 31344
	.field  	38034,16			; _BootloaderArray[1960] @ 31360
	.field  	17558,16			; _BootloaderArray[1961] @ 31376
	.field  	17298,16			; _BootloaderArray[1962] @ 31392
	.field  	43290,16			; _BootloaderArray[1963] @ 31408
	.field  	2826,16			; _BootloaderArray[1964] @ 31424
	.field  	43508,16			; _BootloaderArray[1965] @ 31440
	.field  	36874,16			; _BootloaderArray[1966] @ 31456
	.field  	8447,16			; _BootloaderArray[1967] @ 31472
	.field  	39193,16			; _BootloaderArray[1968] @ 31488
	.field  	32630,16			; _BootloaderArray[1969] @ 31504
	.field  	2951,16			; _BootloaderArray[1970] @ 31520
	.field  	32630,16			; _BootloaderArray[1971] @ 31536
	.field  	12933,16			; _BootloaderArray[1972] @ 31552
	.field  	18066,16			; _BootloaderArray[1973] @ 31568
	.field  	32630,16			; _BootloaderArray[1974] @ 31584
	.field  	7303,16			; _BootloaderArray[1975] @ 31600
	.field  	18420,16			; _BootloaderArray[1976] @ 31616
	.field  	30576,16			; _BootloaderArray[1977] @ 31632
	.field  	17554,16			; _BootloaderArray[1978] @ 31648
	.field  	35070,16			; _BootloaderArray[1979] @ 31664
	.field  	1536,16			; _BootloaderArray[1980] @ 31680
	.field  	2302,16			; _BootloaderArray[1981] @ 31696
	.field  	17533,16			; _BootloaderArray[1982] @ 31712
	.field  	17276,16			; _BootloaderArray[1983] @ 31728
	.field  	16926,16			; _BootloaderArray[1984] @ 31744
	.field  	32630,16			; _BootloaderArray[1985] @ 31760
	.field  	48772,16			; _BootloaderArray[1986] @ 31776
	.field  	18326,16			; _BootloaderArray[1987] @ 31792
	.field  	32630,16			; _BootloaderArray[1988] @ 31808
	.field  	6279,16			; _BootloaderArray[1989] @ 31824
	.field  	18070,16			; _BootloaderArray[1990] @ 31840
	.field  	16902,16			; _BootloaderArray[1991] @ 31856
	.field  	32630,16			; _BootloaderArray[1992] @ 31872
	.field  	8581,16			; _BootloaderArray[1993] @ 31888
	.field  	17814,16			; _BootloaderArray[1994] @ 31904
	.field  	32630,16			; _BootloaderArray[1995] @ 31920
	.field  	18821,16			; _BootloaderArray[1996] @ 31936
	.field  	17752,16			; _BootloaderArray[1997] @ 31952
	.field  	143,16			; _BootloaderArray[1998] @ 31968
	.field  	38922,16			; _BootloaderArray[1999] @ 31984
	.field  	17298,16			; _BootloaderArray[2000] @ 32000
	.field  	38038,16			; _BootloaderArray[2001] @ 32016
	.field  	17554,16			; _BootloaderArray[2002] @ 32032
	.field  	43290,16			; _BootloaderArray[2003] @ 32048
	.field  	2826,16			; _BootloaderArray[2004] @ 32064
	.field  	43508,16			; _BootloaderArray[2005] @ 32080
	.field  	36874,16			; _BootloaderArray[2006] @ 32096
	.field  	1690,16			; _BootloaderArray[2007] @ 32112
	.field  	43508,16			; _BootloaderArray[2008] @ 32128
	.field  	37130,16			; _BootloaderArray[2009] @ 32144
	.field  	43508,16			; _BootloaderArray[2010] @ 32160
	.field  	35594,16			; _BootloaderArray[2011] @ 32176
	.field  	43508,16			; _BootloaderArray[2012] @ 32192
	.field  	35082,16			; _BootloaderArray[2013] @ 32208
	.field  	154,16			; _BootloaderArray[2014] @ 32224
	.field  	43508,16			; _BootloaderArray[2015] @ 32240
	.field  	35850,16			; _BootloaderArray[2016] @ 32256
	.field  	154,16			; _BootloaderArray[2017] @ 32272
	.field  	2715,16			; _BootloaderArray[2018] @ 32288
	.field  	32630,16			; _BootloaderArray[2019] @ 32304
	.field  	2951,16			; _BootloaderArray[2020] @ 32320
	.field  	17554,16			; _BootloaderArray[2021] @ 32336
	.field  	43290,16			; _BootloaderArray[2022] @ 32352
	.field  	2818,16			; _BootloaderArray[2023] @ 32368
	.field  	43508,16			; _BootloaderArray[2024] @ 32384
	.field  	36874,16			; _BootloaderArray[2025] @ 32400
	.field  	12287,16			; _BootloaderArray[2026] @ 32416
	.field  	59395,16			; _BootloaderArray[2027] @ 32432
	.field  	32630,16			; _BootloaderArray[2028] @ 32448
	.field  	2951,16			; _BootloaderArray[2029] @ 32464
	.field  	17554,16			; _BootloaderArray[2030] @ 32480
	.field  	43290,16			; _BootloaderArray[2031] @ 32496
	.field  	2826,16			; _BootloaderArray[2032] @ 32512
	.field  	43508,16			; _BootloaderArray[2033] @ 32528
	.field  	36874,16			; _BootloaderArray[2034] @ 32544
	.field  	154,16			; _BootloaderArray[2035] @ 32560
	.field  	411,16			; _BootloaderArray[2036] @ 32576
	.field  	32630,16			; _BootloaderArray[2037] @ 32592
	.field  	2951,16			; _BootloaderArray[2038] @ 32608
	.field  	32630,16			; _BootloaderArray[2039] @ 32624
	.field  	12933,16			; _BootloaderArray[2040] @ 32640
	.field  	18066,16			; _BootloaderArray[2041] @ 32656
	.field  	32630,16			; _BootloaderArray[2042] @ 32672
	.field  	7303,16			; _BootloaderArray[2043] @ 32688
	.field  	18420,16			; _BootloaderArray[2044] @ 32704
	.field  	30576,16			; _BootloaderArray[2045] @ 32720
	.field  	35070,16			; _BootloaderArray[2046] @ 32736
	.field  	1536,16			; _BootloaderArray[2047] @ 32752
	.field  	48562,16			; _BootloaderArray[2048] @ 32768
	.field  	8054,16			; _BootloaderArray[2049] @ 32784
	.field  	4098,16			; _BootloaderArray[2050] @ 32800
	.field  	48554,16			; _BootloaderArray[2051] @ 32816
	.field  	4805,16			; _BootloaderArray[2052] @ 32832
	.field  	26430,16			; _BootloaderArray[2053] @ 32848
	.field  	8054,16			; _BootloaderArray[2054] @ 32864
	.field  	4354,16			; _BootloaderArray[2055] @ 32880
	.field  	89,16			; _BootloaderArray[2056] @ 32896
	.field  	41362,16			; _BootloaderArray[2057] @ 32912
	.field  	4332,16			; _BootloaderArray[2058] @ 32928
	.field  	315,16			; _BootloaderArray[2059] @ 32944
	.field  	143,16			; _BootloaderArray[2060] @ 32960
	.field  	32900,16			; _BootloaderArray[2061] @ 32976
	.field  	854,16			; _BootloaderArray[2062] @ 32992
	.field  	41217,16			; _BootloaderArray[2063] @ 33008
	.field  	342,16			; _BootloaderArray[2064] @ 33024
	.field  	41984,16			; _BootloaderArray[2065] @ 33040
	.field  	42118,16			; _BootloaderArray[2066] @ 33056
	.field  	33498,16			; _BootloaderArray[2067] @ 33072
	.field  	49861,16			; _BootloaderArray[2068] @ 33088
	.field  	26430,16			; _BootloaderArray[2069] @ 33104
	.field  	41362,16			; _BootloaderArray[2070] @ 33120
	.field  	65436,16			; _BootloaderArray[2071] @ 33136
	.field  	43353,16			; _BootloaderArray[2072] @ 33152
	.field  	64237,16			; _BootloaderArray[2073] @ 33168
	.field  	8054,16			; _BootloaderArray[2074] @ 33184
	.field  	4354,16			; _BootloaderArray[2075] @ 33200
	.field  	518,16			; _BootloaderArray[2076] @ 33216
	.field  	1004,16			; _BootloaderArray[2077] @ 33232
	.field  	42782,16			; _BootloaderArray[2078] @ 33248
	.field  	26430,16			; _BootloaderArray[2079] @ 33264
	.field  	8054,16			; _BootloaderArray[2080] @ 33280
	.field  	4354,16			; _BootloaderArray[2081] @ 33296
	.field  	1030,16			; _BootloaderArray[2082] @ 33312
	.field  	1004,16			; _BootloaderArray[2083] @ 33328
	.field  	42782,16			; _BootloaderArray[2084] @ 33344
	.field  	26430,16			; _BootloaderArray[2085] @ 33360
	.field  	119,16			; _BootloaderArray[2086] @ 33376
	.field  	111,16			; _BootloaderArray[2087] @ 33392
	.field  	8054,16			; _BootloaderArray[2088] @ 33408
	.field  	4098,16			; _BootloaderArray[2089] @ 33424
	.field  	48562,16			; _BootloaderArray[2090] @ 33440
	.field  	4805,16			; _BootloaderArray[2091] @ 33456
	.field  	42123,16			; _BootloaderArray[2092] @ 33472
	.field  	26430,16			; _BootloaderArray[2093] @ 33488
	.field  	8054,16			; _BootloaderArray[2094] @ 33504
	.field  	4354,16			; _BootloaderArray[2095] @ 33520
	.field  	146,16			; _BootloaderArray[2096] @ 33536
	.field  	8274,16			; _BootloaderArray[2097] @ 33552
	.field  	1892,16			; _BootloaderArray[2098] @ 33568
	.field  	8054,16			; _BootloaderArray[2099] @ 33584
	.field  	4098,16			; _BootloaderArray[2100] @ 33600
	.field  	4293,16			; _BootloaderArray[2101] @ 33616
	.field  	26430,16			; _BootloaderArray[2102] @ 33632
	.field  	410,16			; _BootloaderArray[2103] @ 33648
	.field  	4207,16			; _BootloaderArray[2104] @ 33664
	.field  	147,16			; _BootloaderArray[2105] @ 33680
	.field  	315,16			; _BootloaderArray[2106] @ 33696
	.field  	143,16			; _BootloaderArray[2107] @ 33712
	.field  	32900,16			; _BootloaderArray[2108] @ 33728
	.field  	10,16			; _BootloaderArray[2109] @ 33744
	.field  	854,16			; _BootloaderArray[2110] @ 33760
	.field  	43009,16			; _BootloaderArray[2111] @ 33776
	.field  	342,16			; _BootloaderArray[2112] @ 33792
	.field  	41984,16			; _BootloaderArray[2113] @ 33808
	.field  	8054,16			; _BootloaderArray[2114] @ 33824
	.field  	4098,16			; _BootloaderArray[2115] @ 33840
	.field  	50354,16			; _BootloaderArray[2116] @ 33856
	.field  	4293,16			; _BootloaderArray[2117] @ 33872
	.field  	26430,16			; _BootloaderArray[2118] @ 33888
	.field  	154,16			; _BootloaderArray[2119] @ 33904
	.field  	48779,16			; _BootloaderArray[2120] @ 33920
	.field  	1536,16			; _BootloaderArray[2121] @ 33936
	.field  	111,16			; _BootloaderArray[2122] @ 33952
	.field  	1536,16			; _BootloaderArray[2123] @ 33968
	.field  	8054,16			; _BootloaderArray[2124] @ 33984
	.field  	4098,16			; _BootloaderArray[2125] @ 34000
	.field  	4776,16			; _BootloaderArray[2126] @ 34016
	.field  	1536,16			; _BootloaderArray[2127] @ 34032
	.field  	8054,16			; _BootloaderArray[2128] @ 34048
	.field  	4098,16			; _BootloaderArray[2129] @ 34064
	.field  	4264,16			; _BootloaderArray[2130] @ 34080
	.field  	1536,16			; _BootloaderArray[2131] @ 34096
	.field  	12800,16			; _BootloaderArray[2132] @ 34112
	.field  	16128,16			; _BootloaderArray[2133] @ 34128
	.field  	52872,16			; _BootloaderArray[2134] @ 34144
	.field  	2,16			; _BootloaderArray[2135] @ 34160
	.field  	1,16			; _BootloaderArray[2136] @ 34176
	.field  	32768,16			; _BootloaderArray[2137] @ 34192
	.field  	16384,16			; _BootloaderArray[2138] @ 34208
	.field  	8192,16			; _BootloaderArray[2139] @ 34224
	.field  	4096,16			; _BootloaderArray[2140] @ 34240
	.field  	2048,16			; _BootloaderArray[2141] @ 34256
	.field  	1024,16			; _BootloaderArray[2142] @ 34272
	.field  	512,16			; _BootloaderArray[2143] @ 34288
	.field  	256,16			; _BootloaderArray[2144] @ 34304
	.field  	128,16			; _BootloaderArray[2145] @ 34320
	.field  	15616,16			; _BootloaderArray[2146] @ 34336
	.field  	32,16			; _BootloaderArray[2147] @ 34352
	.field  	0,16			; _BootloaderArray[2148] @ 34368
	.field  	160,16			; _BootloaderArray[2149] @ 34384
	.field  	15616,16			; _BootloaderArray[2150] @ 34400
	.field  	32,16			; _BootloaderArray[2151] @ 34416
	.field  	0,16			; _BootloaderArray[2152] @ 34432
	.field  	192,16			; _BootloaderArray[2153] @ 34448
	.field  	15616,16			; _BootloaderArray[2154] @ 34464
	.field  	64,16			; _BootloaderArray[2155] @ 34480
	.field  	0,16			; _BootloaderArray[2156] @ 34496
	.field  	0,16			; _BootloaderArray[2157] @ 34512
	.field  	15872,16			; _BootloaderArray[2158] @ 34528
	.field  	64,16			; _BootloaderArray[2159] @ 34544
	.field  	0,16			; _BootloaderArray[2160] @ 34560
	.field  	64,16			; _BootloaderArray[2161] @ 34576
	.field  	15872,16			; _BootloaderArray[2162] @ 34592
	.field  	64,16			; _BootloaderArray[2163] @ 34608
	.field  	0,16			; _BootloaderArray[2164] @ 34624
	.field  	128,16			; _BootloaderArray[2165] @ 34640
	.field  	15872,16			; _BootloaderArray[2166] @ 34656
	.field  	64,16			; _BootloaderArray[2167] @ 34672
	.field  	0,16			; _BootloaderArray[2168] @ 34688
	.field  	192,16			; _BootloaderArray[2169] @ 34704
	.field  	15872,16			; _BootloaderArray[2170] @ 34720
	.field  	64,16			; _BootloaderArray[2171] @ 34736
	.field  	0,16			; _BootloaderArray[2172] @ 34752
	.field  	0,16			; _BootloaderArray[2173] @ 34768
	.field  	16128,16			; _BootloaderArray[2174] @ 34784
	.field  	64,16			; _BootloaderArray[2175] @ 34800
	.field  	0,16			; _BootloaderArray[2176] @ 34816
	.field  	64,16			; _BootloaderArray[2177] @ 34832
	.field  	16128,16			; _BootloaderArray[2178] @ 34848
	.field  	32,16			; _BootloaderArray[2179] @ 34864
	.field  	0,16			; _BootloaderArray[2180] @ 34880
	.field  	96,16			; _BootloaderArray[2181] @ 34896
	.field  	16128,16			; _BootloaderArray[2182] @ 34912
	.field  	32,16			; _BootloaderArray[2183] @ 34928
	.field  	0,16			; _BootloaderArray[2184] @ 34944
	.field  	17920,16			; _BootloaderArray[2185] @ 34960
	.field  	16128,16			; _BootloaderArray[2186] @ 34976
	.field  	128,16			; _BootloaderArray[2187] @ 34992
	.field  	44328,16			; _BootloaderArray[2188] @ 35008
	.field  	4,16			; _BootloaderArray[2189] @ 35024
	.field  	27135,16			; _BootloaderArray[2190] @ 35040
	.field  	8022,16			; _BootloaderArray[2191] @ 35056
	.field  	5718,16			; _BootloaderArray[2192] @ 35072
	.field  	6742,16			; _BootloaderArray[2193] @ 35088
	.field  	16425,16			; _BootloaderArray[2194] @ 35104
	.field  	8054,16			; _BootloaderArray[2195] @ 35120
	.field  	0,16			; _BootloaderArray[2196] @ 35136
	.field  	553,16			; _BootloaderArray[2197] @ 35152
	.field  	7030,16			; _BootloaderArray[2198] @ 35168
	.field  	8822,16			; _BootloaderArray[2199] @ 35184
	.field  	43304,16			; _BootloaderArray[2200] @ 35200
	.field  	32896,16			; _BootloaderArray[2201] @ 35216
	.field  	43048,16			; _BootloaderArray[2202] @ 35232
	.field  	16128,16			; _BootloaderArray[2203] @ 35248
	.field  	265,16			; _BootloaderArray[2204] @ 35264
	.field  	7521,16			; _BootloaderArray[2205] @ 35280
	.field  	65398,16			; _BootloaderArray[2206] @ 35296
	.field  	32896,16			; _BootloaderArray[2207] @ 35312
	.field  	1065,16			; _BootloaderArray[2208] @ 35328
	.field  	3951,16			; _BootloaderArray[2209] @ 35344
	.field  	155,16			; _BootloaderArray[2210] @ 35360
	.field  	43300,16			; _BootloaderArray[2211] @ 35376
	.field  	479,16			; _BootloaderArray[2212] @ 35392
	.field  	1132,16			; _BootloaderArray[2213] @ 35408
	.field  	1065,16			; _BootloaderArray[2214] @ 35424
	.field  	43044,16			; _BootloaderArray[2215] @ 35440
	.field  	479,16			; _BootloaderArray[2216] @ 35456
	.field  	42526,16			; _BootloaderArray[2217] @ 35472
	.field  	41463,16			; _BootloaderArray[2218] @ 35488
	.field  	34340,16			; _BootloaderArray[2219] @ 35504
	.field  	42758,16			; _BootloaderArray[2220] @ 35520
	.field  	41345,16			; _BootloaderArray[2221] @ 35536
	.field  	265,16			; _BootloaderArray[2222] @ 35552
	.field  	42782,16			; _BootloaderArray[2223] @ 35568
	.field  	43300,16			; _BootloaderArray[2224] @ 35584
	.field  	867,16			; _BootloaderArray[2225] @ 35600
	.field  	23807,16			; _BootloaderArray[2226] @ 35616
	.field  	1083,16			; _BootloaderArray[2227] @ 35632
	.field  	43353,16			; _BootloaderArray[2228] @ 35648
	.field  	119,16			; _BootloaderArray[2229] @ 35664
	.field  	119,16			; _BootloaderArray[2230] @ 35680
	.field  	479,16			; _BootloaderArray[2231] @ 35696
	.field  	2304,16			; _BootloaderArray[2232] @ 35712
	.field  	60159,16			; _BootloaderArray[2233] @ 35728
	.field  	6774,16			; _BootloaderArray[2234] @ 35744
	.field  	43304,16			; _BootloaderArray[2235] @ 35760
	.field  	65535,16			; _BootloaderArray[2236] @ 35776
	.field  	43048,16			; _BootloaderArray[2237] @ 35792
	.field  	65535,16			; _BootloaderArray[2238] @ 35808
	.field  	265,16			; _BootloaderArray[2239] @ 35824
	.field  	3681,16			; _BootloaderArray[2240] @ 35840
	.field  	65398,16			; _BootloaderArray[2241] @ 35856
	.field  	65535,16			; _BootloaderArray[2242] @ 35872
	.field  	1647,16			; _BootloaderArray[2243] @ 35888
	.field  	479,16			; _BootloaderArray[2244] @ 35904
	.field  	48579,16			; _BootloaderArray[2245] @ 35920
	.field  	42782,16			; _BootloaderArray[2246] @ 35936
	.field  	26430,16			; _BootloaderArray[2247] @ 35952
	.field  	48837,16			; _BootloaderArray[2248] @ 35968
	.field  	43300,16			; _BootloaderArray[2249] @ 35984
	.field  	479,16			; _BootloaderArray[2250] @ 36000
	.field  	43044,16			; _BootloaderArray[2251] @ 36016
	.field  	22783,16			; _BootloaderArray[2252] @ 36032
	.field  	63328,16			; _BootloaderArray[2253] @ 36048
	.field  	32630,16			; _BootloaderArray[2254] @ 36064
	.field  	41856,16			; _BootloaderArray[2255] @ 36080
	.field  	32630,16			; _BootloaderArray[2256] @ 36096
	.field  	31368,16			; _BootloaderArray[2257] @ 36112
	.field  	0,16			; _BootloaderArray[2258] @ 36128
	.field  	0,16			; _BootloaderArray[2259] @ 36144
	.field  	0,16			; _BootloaderArray[2260] @ 36160
	.field  	0,16			; _BootloaderArray[2261] @ 36176

DW$36	.dwtag  DW_TAG_variable, DW_AT_name("BootloaderArray"), DW_AT_symbol_name("_BootloaderArray")
	.dwattr DW$36, DW_AT_location[DW_OP_addr _BootloaderArray]
	.dwattr DW$36, DW_AT_type(*DW$T$89)
	.dwattr DW$36, DW_AT_external(0x01)
;	C:\CCStudio_v3.3\C2000\cgtools\bin\opt2000.exe C:\Users\Andrew\AppData\Local\Temp\TI1122 C:\Users\Andrew\AppData\Local\Temp\TI1124 
;	C:\CCStudio_v3.3\C2000\cgtools\bin\ac2000.exe -q -D_INLINE -DLARGE_MODEL -IC:/CCStudio_v3.3/C2000/xdais/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/bios/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/rtdx/include/c2000 -IC:/CCStudio_v3.3/C2000/cgtools/include --version=28 --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\Andrew\AppData\Local\Temp\TI1122 --template_info_file C:\Users\Andrew\AppData\Local\Temp\TI1126 --object_file 
	.sect	".text"
	.global	_ReprogramStartupInit

DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("ReprogramStartupInit"), DW_AT_symbol_name("_ReprogramStartupInit")
	.dwattr DW$37, DW_AT_low_pc(_ReprogramStartupInit)
	.dwattr DW$37, DW_AT_high_pc(0x00)
	.dwattr DW$37, DW_AT_begin_file("reprog.c")
	.dwattr DW$37, DW_AT_begin_line(0x6b)
	.dwattr DW$37, DW_AT_begin_column(0x06)
	.dwattr DW$37, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$37, DW_AT_skeletal(0x01)
	.dwpsn	"reprog.c",108,1

;***************************************************************
;* FNAME: _ReprogramStartupInit         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReprogramStartupInit:
        MOVW      DP,#_reprogram+10
        MOVB      ACC,#0
        MOV       @_reprogram+10,#0     ; |109| 
        MOVW      DP,#_reprogram+8
        MOVL      @_reprogram+8,ACC     ; |110| 
        MOVW      DP,#_reprogram
        MOV       @_reprogram,#0        ; |111| 
        MOVW      DP,#_reprogram+13
        MOV       @_reprogram+13,#0     ; |112| 
        MOVW      DP,#_reprogram+14
        MOV       @_reprogram+14,#0     ; |113| 
        MOVW      DP,#_reprogram+12
        MOV       @_reprogram+12,#0     ; |114| 
        MOVW      DP,#_reprogram+15
        MOV       @_reprogram+15,#0     ; |115| 
	.dwpsn	"reprog.c",116,1
        LRETR
        ; return occurs
	.dwattr DW$37, DW_AT_end_file("reprog.c")
	.dwattr DW$37, DW_AT_end_line(0x74)
	.dwattr DW$37, DW_AT_end_column(0x01)
	.dwendtag DW$37

	.sect	".text"
	.global	_ReprogramTimeoutCheck

DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("ReprogramTimeoutCheck"), DW_AT_symbol_name("_ReprogramTimeoutCheck")
	.dwattr DW$38, DW_AT_low_pc(_ReprogramTimeoutCheck)
	.dwattr DW$38, DW_AT_high_pc(0x00)
	.dwattr DW$38, DW_AT_begin_file("reprog.c")
	.dwattr DW$38, DW_AT_begin_line(0x77)
	.dwattr DW$38, DW_AT_begin_column(0x06)
	.dwattr DW$38, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$38, DW_AT_skeletal(0x01)
	.dwpsn	"reprog.c",120,1

;***************************************************************
;* FNAME: _ReprogramTimeoutCheck        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReprogramTimeoutCheck:
        MOV       AL,#13107
        MOV       AH,#4660
        MOVW      DP,#_reprogram+8
        CMPL      ACC,@_reprogram+8     ; |121| 
        BF        L1,NEQ                ; |121| 
        ; branchcc occurs ; |121| 
        MOVW      DP,#_timers+69
        MOV       AL,@_timers+69        ; |123| 
        BF        L1,NEQ                ; |123| 
        ; branchcc occurs ; |123| 
        MOVB      ACC,#0
        MOVW      DP,#_reprogram+8
        MOVL      @_reprogram+8,ACC     ; |125| 
        LCR       #_SPUUnitReset        ; |126| 
        ; call occurs [#_SPUUnitReset] ; |126| 
L1:    
	.dwpsn	"reprog.c",129,1
        LRETR
        ; return occurs
	.dwattr DW$38, DW_AT_end_file("reprog.c")
	.dwattr DW$38, DW_AT_end_line(0x81)
	.dwattr DW$38, DW_AT_end_column(0x01)
	.dwendtag DW$38

	.sect	".text"
	.global	_ProcessReprogrammingTransferral

DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("ProcessReprogrammingTransferral"), DW_AT_symbol_name("_ProcessReprogrammingTransferral")
	.dwattr DW$39, DW_AT_low_pc(_ProcessReprogrammingTransferral)
	.dwattr DW$39, DW_AT_high_pc(0x00)
	.dwattr DW$39, DW_AT_begin_file("reprog.c")
	.dwattr DW$39, DW_AT_begin_line(0x8a)
	.dwattr DW$39, DW_AT_begin_column(0x06)
	.dwattr DW$39, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$39, DW_AT_skeletal(0x01)
	.dwpsn	"reprog.c",139,1

;***************************************************************
;* FNAME: _ProcessReprogrammingTransferral FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ProcessReprogrammingTransferral:
;* AL    assigned to _regadd
DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_name("regadd"), DW_AT_symbol_name("_regadd")
	.dwattr DW$40, DW_AT_type(*DW$T$11)
	.dwattr DW$40, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _NumReg
DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_name("NumReg"), DW_AT_symbol_name("_NumReg")
	.dwattr DW$41, DW_AT_type(*DW$T$11)
	.dwattr DW$41, DW_AT_location[DW_OP_reg1]
;* AR5   assigned to _func
DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_name("func"), DW_AT_symbol_name("_func")
	.dwattr DW$42, DW_AT_type(*DW$T$11)
	.dwattr DW$42, DW_AT_location[DW_OP_reg14]
;* AR4   assigned to _databuf
DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_name("databuf"), DW_AT_symbol_name("_databuf")
	.dwattr DW$43, DW_AT_type(*DW$T$25)
	.dwattr DW$43, DW_AT_location[DW_OP_reg12]
        MOVZ      AR0,AL                ; |139| 
        MOVW      DP,#_timers+69
        MOV       AL,AR5                ; |139| 
        MOV       @_timers+69,#24000    ; |140| 
        MOVL      XAR5,XAR4             ; |139| 
        CMP       AR0,#8400             ; |143| 
        BF        L13,EQ                ; |143| 
        ; branchcc occurs ; |143| 
        CMP       AR0,#8401             ; |150| 
        BF        L12,EQ                ; |150| 
        ; branchcc occurs ; |150| 
        CMP       AR0,#8402             ; |156| 
        BF        L11,EQ                ; |156| 
        ; branchcc occurs ; |156| 
        CMP       AR0,#8403             ; |160| 
        BF        L10,EQ                ; |160| 
        ; branchcc occurs ; |160| 
        CMP       AR0,#8404             ; |169| 
        BF        L7,EQ                 ; |169| 
        ; branchcc occurs ; |169| 
        CMP       AR0,#8405             ; |179| 
        BF        L6,EQ                 ; |179| 
        ; branchcc occurs ; |179| 
        CMP       AR0,#8406             ; |183| 
        BF        L5,EQ                 ; |183| 
        ; branchcc occurs ; |183| 
        CMP       AR0,#8407             ; |187| 
        BF        L16,LO                ; |187| 
        ; branchcc occurs ; |187| 
        CMP       AR0,#8534             ; |187| 
        BF        L3,LOS                ; |187| 
        ; branchcc occurs ; |187| 
        CMP       AR0,#8535             ; |200| 
        BF        L16,NEQ               ; |200| 
        ; branchcc occurs ; |200| 
        CMPB      AL,#16                ; |202| 
        BF        L2,NEQ                ; |202| 
        ; branchcc occurs ; |202| 
        MOV       AL,*+XAR5[0]          ; |202| 
        CMPB      AL,#1                 ; |202| 
        BF        L2,NEQ                ; |202| 
        ; branchcc occurs ; |202| 
        MOVB      ACC,#0
        MOVW      DP,#_reprogram+15
        MOV       @_reprogram+15,#0     ; |204| 
        MOVW      DP,#_reprogram+8
        MOVL      @_reprogram+8,ACC     ; |205| 
        BF        L16,UNC               ; |206| 
        ; branch occurs ; |206| 
L2:    
        MOVW      DP,#_reprogram+12
        MOV       AL,@_reprogram+12     ; |210| 
        BF        L8,UNC                ; |210| 
        ; branch occurs ; |210| 
L3:    
        CMPB      AL,#16                ; |189| 
        BF        L4,EQ                 ; |189| 
        ; branchcc occurs ; |189| 
        SUB       AR0,#8407             ; |198| 
        MOVL      XAR4,#_transferbuffer ; |198| 
        MOV       AL,*+XAR4[AR0]        ; |198| 
        BF        L8,UNC                ; |198| 
        ; branch occurs ; |198| 
L4:    
        SUB       AR0,#8407             ; |191| 
        MOVL      XAR4,#_transferbuffer ; |191| 
        MOV       AL,*+XAR5[0]          ; |191| 
        MOVW      DP,#_reprogram
        MOV       *+XAR4[AR0],AL        ; |191| 
        MOVB      AL,#1                 ; |192| 
        MOV       @_reprogram,AL        ; |192| 
        MOVW      DP,#_reprogram+1
        MOV       @_reprogram+1,AL      ; |193| 
        MOVW      DP,#_reprogram+13
        MOV       @_reprogram+13,AL     ; |194| 
        BF        L15,UNC               ; |197| 
        ; branch occurs ; |197| 
L5:    
        MOVL      XAR4,#_reprogram+4    ; |185| 
        LCR       #_LongLowerReg        ; |185| 
        ; call occurs [#_LongLowerReg] ; |185| 
        BF        L16,UNC               ; |186| 
        ; branch occurs ; |186| 
L6:    
        MOVL      XAR4,#_reprogram+4    ; |181| 
        LCR       #_LongUpperReg        ; |181| 
        ; call occurs [#_LongUpperReg] ; |181| 
        BF        L16,UNC               ; |182| 
        ; branch occurs ; |182| 
L7:    
        CMPB      AL,#16                ; |171| 
        BF        L9,EQ                 ; |171| 
        ; branchcc occurs ; |171| 
        MOVW      DP,#_reprogram+6
        MOV       AL,@_reprogram+6      ; |177| 
L8:    
        MOV       *+XAR5[0],AL          ; |177| 
        BF        L16,UNC               ; |177| 
        ; branch occurs ; |177| 
L9:    
        MOV       AL,*+XAR5[0]          ; |173| 
        MOVW      DP,#_reprogram+6
        MOV       @_reprogram+6,AL      ; |173| 
        BF        L14,UNC               ; |176| 
        ; branch occurs ; |176| 
L10:    
        CMPB      AL,#16                ; |162| 
        BF        L16,NEQ               ; |162| 
        ; branchcc occurs ; |162| 
        MOV       AL,*+XAR5[0]          ; |162| 
        CMPB      AL,#1                 ; |162| 
        BF        L16,NEQ               ; |162| 
        ; branchcc occurs ; |162| 
        LCR       #_EraseSPIFlash       ; |164| 
        ; call occurs [#_EraseSPIFlash] ; |164| 
        BF        L14,UNC               ; |166| 
        ; branch occurs ; |166| 
L11:    
        CMPB      AL,#3                 ; |158| 
        BF        L16,NEQ               ; |158| 
        ; branchcc occurs ; |158| 
        MOVW      DP,#_reprogram+1
        MOV       AL,@_reprogram+1      ; |158| 
        BF        L8,UNC                ; |158| 
        ; branch occurs ; |158| 
L12:    
        MOVL      XAR4,#_reprogram+8    ; |152| 
        LCR       #_LongLowerReg        ; |152| 
        ; call occurs [#_LongLowerReg] ; |152| 
        BF        L14,UNC               ; |155| 
        ; branch occurs ; |155| 
L13:    
        MOVL      XAR4,#_reprogram+8    ; |145| 
        LCR       #_LongUpperReg        ; |145| 
        ; call occurs [#_LongUpperReg] ; |145| 
        MOVW      DP,#_reprogram+12
        MOV       @_reprogram+12,#0     ; |146| 
L14:    
        MOVW      DP,#_reprogram+13
        MOV       @_reprogram+13,#1     ; |147| 
L15:    
        MOVW      DP,#_timers+42
        MOV       @_timers+42,#0        ; |148| 
        NOP
        NOP
L16:    
	.dwpsn	"reprog.c",213,1
        LRETR
        ; return occurs
	.dwattr DW$39, DW_AT_end_file("reprog.c")
	.dwattr DW$39, DW_AT_end_line(0xd5)
	.dwattr DW$39, DW_AT_end_column(0x01)
	.dwendtag DW$39

	.sect	".text"
	.global	_TxNowtoSlave

DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("TxNowtoSlave"), DW_AT_symbol_name("_TxNowtoSlave")
	.dwattr DW$44, DW_AT_low_pc(_TxNowtoSlave)
	.dwattr DW$44, DW_AT_high_pc(0x00)
	.dwattr DW$44, DW_AT_begin_file("reprog.c")
	.dwattr DW$44, DW_AT_begin_line(0xd9)
	.dwattr DW$44, DW_AT_begin_column(0x06)
	.dwattr DW$44, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$44, DW_AT_skeletal(0x01)
	.dwpsn	"reprog.c",218,1

;***************************************************************
;* FNAME: _TxNowtoSlave                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_TxNowtoSlave:
        MOVW      DP,#_reprogram+13
        MOV       AL,@_reprogram+13     ; |219| 
        CMPB      AL,#1                 ; |219| 
        BF        L20,NEQ               ; |219| 
        ; branchcc occurs ; |219| 
        MOVW      DP,#_settings+17
        MOV       AL,@_settings+17      ; |221| 
        CMPB      AL,#1                 ; |221| 
        BF        L19,NEQ               ; |221| 
        ; branchcc occurs ; |221| 
        MOVW      DP,#_allsensors+2
        MOV       AL,@_allsensors+2     ; |221| 
        BF        L19,EQ                ; |221| 
        ; branchcc occurs ; |221| 
        MOVW      DP,#_reprogram+15
        MOV       AL,@_reprogram+15     ; |221| 
        MOVW      DP,#_settings+31
        OR        AL,@_settings+31      ; |221| 
        BF        L19,NEQ               ; |221| 
        ; branchcc occurs ; |221| 
        MOVW      DP,#_timers+42
        MOV       @_timers+42,#0        ; |225| 
        MOVW      DP,#_slave485mb+69
        MOV       AL,@_slave485mb+69    ; |226| 
        BF        L18,EQ                ; |226| 
        ; branchcc occurs ; |226| 
L17:    
DW$L$_TxNowtoSlave$6$B:
	.dwpsn	"reprog.c",227,0
        MOVW      DP,#_timers+42
        MOV       @_timers+42,#0        ; |228| 
        LCR       #_Slave485Modbus      ; |229| 
        ; call occurs [#_Slave485Modbus] ; |229| 
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |231| 
        MOVW      DP,#_slave485mb+69
        MOV       AL,@_slave485mb+69    ; |231| 
	.dwpsn	"reprog.c",232,0
        BF        L17,NEQ               ; |231| 
        ; branchcc occurs ; |231| 
DW$L$_TxNowtoSlave$6$E:
L18:    
        MOVW      DP,#_reprogram+13
        MOV       AL,@_reprogram+13     ; |226| 
        CMPB      AL,#1                 ; |226| 
        BF        L17,EQ                ; |226| 
        ; branchcc occurs ; |226| 
        MOVW      DP,#_reprogram+11
        MOV       AL,@_reprogram+11     ; |233| 
        CMPB      AL,#1                 ; |233| 
        BF        L19,NEQ               ; |233| 
        ; branchcc occurs ; |233| 
        MOV       AL,#8738
        MOVW      DP,#_reprogram+8
        MOV       AH,#4660
        CMPL      ACC,@_reprogram+8     ; |233| 
        BF        L19,NEQ               ; |233| 
        ; branchcc occurs ; |233| 
        MOVW      DP,#_reprogram+15
        MOV       @_reprogram+15,#1     ; |233| 
L19:    
        MOVW      DP,#_timers+39
        MOV       @_timers+39,#200      ; |236| 
        NOP
        NOP
L20:    
	.dwpsn	"reprog.c",238,1
        LRETR
        ; return occurs

DW$45	.dwtag  DW_TAG_loop
	.dwattr DW$45, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\reprog.asm:L17:1:1471518987")
	.dwattr DW$45, DW_AT_begin_file("reprog.c")
	.dwattr DW$45, DW_AT_begin_line(0xe2)
	.dwattr DW$45, DW_AT_end_line(0xe8)
DW$46	.dwtag  DW_TAG_loop_range
	.dwattr DW$46, DW_AT_low_pc(DW$L$_TxNowtoSlave$6$B)
	.dwattr DW$46, DW_AT_high_pc(DW$L$_TxNowtoSlave$6$E)
	.dwendtag DW$45

	.dwattr DW$44, DW_AT_end_file("reprog.c")
	.dwattr DW$44, DW_AT_end_line(0xee)
	.dwattr DW$44, DW_AT_end_column(0x01)
	.dwendtag DW$44

	.sect	".text"
	.global	_LongUpperReg

DW$47	.dwtag  DW_TAG_subprogram, DW_AT_name("LongUpperReg"), DW_AT_symbol_name("_LongUpperReg")
	.dwattr DW$47, DW_AT_low_pc(_LongUpperReg)
	.dwattr DW$47, DW_AT_high_pc(0x00)
	.dwattr DW$47, DW_AT_begin_file("reprog.c")
	.dwattr DW$47, DW_AT_begin_line(0xf2)
	.dwattr DW$47, DW_AT_begin_column(0x06)
	.dwattr DW$47, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$47, DW_AT_skeletal(0x01)
	.dwpsn	"reprog.c",243,1

;***************************************************************
;* FNAME: _LongUpperReg                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_LongUpperReg:
;* AR4   assigned to _val
DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$48, DW_AT_type(*DW$T$59)
	.dwattr DW$48, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _func
DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_name("func"), DW_AT_symbol_name("_func")
	.dwattr DW$49, DW_AT_type(*DW$T$11)
	.dwattr DW$49, DW_AT_location[DW_OP_reg0]
;* AR5   assigned to _databuf
DW$50	.dwtag  DW_TAG_formal_parameter, DW_AT_name("databuf"), DW_AT_symbol_name("_databuf")
	.dwattr DW$50, DW_AT_type(*DW$T$25)
	.dwattr DW$50, DW_AT_location[DW_OP_reg14]
        CMPB      AL,#6                 ; |246| 
        BF        L21,EQ                ; |246| 
        ; branchcc occurs ; |246| 
        CMPB      AL,#16                ; |246| 
        BF        L21,EQ                ; |246| 
        ; branchcc occurs ; |246| 
        MOVL      ACC,*+XAR4[0]         ; |256| 
        MOVH      *+XAR5[0],ACC << 0    ; |258| 
        BF        L22,UNC               ; |258| 
        ; branch occurs ; |258| 
L21:    
        MOVU      ACC,*+XAR5[0]
        MOVW      DP,#_reprogram+13
        LSL       ACC,16                ; |250| 
        MOVL      *+XAR4[0],ACC         ; |250| 
        MOV       @_reprogram+13,#1     ; |251| 
        MOVW      DP,#_timers+42
        MOV       @_timers+42,#0        ; |252| 
        NOP
        NOP
L22:    
	.dwpsn	"reprog.c",260,1
        LRETR
        ; return occurs
	.dwattr DW$47, DW_AT_end_file("reprog.c")
	.dwattr DW$47, DW_AT_end_line(0x104)
	.dwattr DW$47, DW_AT_end_column(0x01)
	.dwendtag DW$47

	.sect	".text"
	.global	_LongLowerReg

DW$51	.dwtag  DW_TAG_subprogram, DW_AT_name("LongLowerReg"), DW_AT_symbol_name("_LongLowerReg")
	.dwattr DW$51, DW_AT_low_pc(_LongLowerReg)
	.dwattr DW$51, DW_AT_high_pc(0x00)
	.dwattr DW$51, DW_AT_begin_file("reprog.c")
	.dwattr DW$51, DW_AT_begin_line(0x107)
	.dwattr DW$51, DW_AT_begin_column(0x06)
	.dwattr DW$51, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$51, DW_AT_skeletal(0x01)
	.dwpsn	"reprog.c",264,1

;***************************************************************
;* FNAME: _LongLowerReg                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_LongLowerReg:
;* AR4   assigned to _val
DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$52, DW_AT_type(*DW$T$59)
	.dwattr DW$52, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _func
DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_name("func"), DW_AT_symbol_name("_func")
	.dwattr DW$53, DW_AT_type(*DW$T$11)
	.dwattr DW$53, DW_AT_location[DW_OP_reg0]
;* AR5   assigned to _databuf
DW$54	.dwtag  DW_TAG_formal_parameter, DW_AT_name("databuf"), DW_AT_symbol_name("_databuf")
	.dwattr DW$54, DW_AT_type(*DW$T$25)
	.dwattr DW$54, DW_AT_location[DW_OP_reg14]
        CMPB      AL,#6                 ; |267| 
        BF        L23,EQ                ; |267| 
        ; branchcc occurs ; |267| 
        CMPB      AL,#16                ; |267| 
        BF        L23,EQ                ; |267| 
        ; branchcc occurs ; |267| 
        MOV       AL,*+XAR4[0]          ; |274| 
        MOV       *+XAR5[0],AL          ; |274| 
        BF        L24,UNC               ; |274| 
        ; branch occurs ; |274| 
L23:    
        MOVU      ACC,*+XAR5[0]
        ADDL      *+XAR4[0],ACC         ; |270| 
        MOVW      DP,#_reprogram+13
        MOV       @_reprogram+13,#1     ; |271| 
        MOVW      DP,#_timers+42
        MOV       @_timers+42,#0        ; |272| 
        NOP
        NOP
L24:    
	.dwpsn	"reprog.c",275,1
        LRETR
        ; return occurs
	.dwattr DW$51, DW_AT_end_file("reprog.c")
	.dwattr DW$51, DW_AT_end_line(0x113)
	.dwattr DW$51, DW_AT_end_column(0x01)
	.dwendtag DW$51

	.sect	".text"
	.global	_TxRegtoSlave

DW$55	.dwtag  DW_TAG_subprogram, DW_AT_name("TxRegtoSlave"), DW_AT_symbol_name("_TxRegtoSlave")
	.dwattr DW$55, DW_AT_low_pc(_TxRegtoSlave)
	.dwattr DW$55, DW_AT_high_pc(0x00)
	.dwattr DW$55, DW_AT_begin_file("reprog.c")
	.dwattr DW$55, DW_AT_begin_line(0x11a)
	.dwattr DW$55, DW_AT_begin_column(0x06)
	.dwattr DW$55, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$55, DW_AT_skeletal(0x01)
	.dwpsn	"reprog.c",283,1

;***************************************************************
;* FNAME: _TxRegtoSlave                 FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  4 SOE     *
;***************************************************************

_TxRegtoSlave:
        MOVL      *SP++,XAR1
        MOVW      DP,#_reprogram+11
        MOVL      *SP++,XAR3
        MOVB      AL,#9                 ; |292| 
        MOVL      XAR3,#_modbuscmdbuf   ; |291| 
        MOV       @_reprogram+11,#0     ; |290| 
        ADDB      SP,#2
        MOVW      DP,#_pcmodbus+4
        MOV       *+XAR3[0],#1          ; |291| 
        MOV       AH,@_pcmodbus+4       ; |292| 
        MOVZ      AR5,SP                ; |293| 
        ADD       AL,AH                 ; |292| 
        MOVL      XAR4,XAR3             ; |293| 
        MOVZ      AR1,AL                ; |292| 
        SUBB      XAR5,#2               ; |293| 
        MOVB      AL,#7                 ; |293| 
        ADD       AL,AH                 ; |293| 
        LCR       #_CalcCRC             ; |293| 
        ; call occurs [#_CalcCRC] ; |293| 
        MOVW      DP,#_pcmodbus+4
        MOVB      XAR0,#7               ; |294| 
        MOV       AL,@_pcmodbus+4       ; |294| 
        ADD       AR0,AL                ; |294| 
        MOV       AH,*-SP[2]            ; |294| 
        MOV       *+XAR3[AR0],AH        ; |294| 
        MOVB      XAR0,#8               ; |295| 
        ADD       AR0,AL                ; |295| 
        MOV       AL,*-SP[1]            ; |295| 
        MOVL      XAR4,XAR3             ; |296| 
        MOV       *+XAR3[AR0],AL        ; |295| 
        MOV       AL,AR1                ; |296| 
        LCR       #_MastertoSlaveSendBuffer ; |296| 
        ; call occurs [#_MastertoSlaveSendBuffer] ; |296| 
        MOVW      DP,#_reprogram+13
        MOV       @_reprogram+13,#0     ; |298| 
        MOVW      DP,#_slave485mb+69
        INC       @_slave485mb+69       ; |299| 
        MOVW      DP,#_timers+5
        SUBB      SP,#2
        MOV       @_timers+5,#200       ; |300| 
        MOVW      DP,#_receivingmode
        MOV       @_receivingmode,#3    ; |301| 
        MOVL      XAR3,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"reprog.c",302,1
        LRETR
        ; return occurs
	.dwattr DW$55, DW_AT_end_file("reprog.c")
	.dwattr DW$55, DW_AT_end_line(0x12e)
	.dwattr DW$55, DW_AT_end_column(0x01)
	.dwendtag DW$55

	.sect	".text"
	.global	_RxStatusfromSlave

DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("RxStatusfromSlave"), DW_AT_symbol_name("_RxStatusfromSlave")
	.dwattr DW$56, DW_AT_low_pc(_RxStatusfromSlave)
	.dwattr DW$56, DW_AT_high_pc(0x00)
	.dwattr DW$56, DW_AT_begin_file("reprog.c")
	.dwattr DW$56, DW_AT_begin_line(0x132)
	.dwattr DW$56, DW_AT_begin_column(0x06)
	.dwattr DW$56, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$56, DW_AT_skeletal(0x01)
	.dwpsn	"reprog.c",307,1

;***************************************************************
;* FNAME: _RxStatusfromSlave            FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  2 SOE     *
;***************************************************************

_RxStatusfromSlave:
        MOVL      *SP++,XAR3
        MOVB      ACC,#1
        MOVW      DP,#_config+14
        ADDB      SP,#2
        MOVL      XAR3,#_slaveresponsemsg ; |313| 
        ADDL      @_config+14,ACC       ; |310| 
        MOVZ      AR5,SP                ; |323| 
        MOV       *+XAR3[0],#1          ; |313| 
        MOV       *+XAR3[1],#3          ; |316| 
        MOVL      XAR4,XAR3             ; |323| 
        MOV       *+XAR3[2],#32         ; |318| 
        SUBB      XAR5,#2               ; |323| 
        MOV       *+XAR3[3],#210        ; |319| 
        MOVB      AL,#6                 ; |323| 
        MOV       *+XAR3[4],#0          ; |320| 
        MOV       *+XAR3[5],#1          ; |321| 
        LCR       #_CalcCRC             ; |323| 
        ; call occurs [#_CalcCRC] ; |323| 
        MOV       AL,*-SP[2]            ; |324| 
        MOV       *+XAR3[6],AL          ; |324| 
        MOV       AL,*-SP[1]            ; |325| 
        MOVL      XAR4,XAR3             ; |327| 
        MOV       *+XAR3[7],AL          ; |325| 
        MOVB      AL,#8                 ; |327| 
        LCR       #_MastertoSlaveSendBuffer ; |327| 
        ; call occurs [#_MastertoSlaveSendBuffer] ; |327| 
        MOVW      DP,#_reprogram+14
        MOV       @_reprogram+14,#0     ; |328| 
        MOVW      DP,#_slave485mb+69
        INC       @_slave485mb+69       ; |329| 
        MOVW      DP,#_timers+5
        SUBB      SP,#2
        MOV       @_timers+5,#200       ; |330| 
        MOVW      DP,#_receivingmode
        MOV       @_receivingmode,#4    ; |331| 
        MOVL      XAR3,*--SP
	.dwpsn	"reprog.c",333,1
        LRETR
        ; return occurs
	.dwattr DW$56, DW_AT_end_file("reprog.c")
	.dwattr DW$56, DW_AT_end_line(0x14d)
	.dwattr DW$56, DW_AT_end_column(0x01)
	.dwendtag DW$56

	.sect	".text"
	.global	_ReprogrammingCalls

DW$57	.dwtag  DW_TAG_subprogram, DW_AT_name("ReprogrammingCalls"), DW_AT_symbol_name("_ReprogrammingCalls")
	.dwattr DW$57, DW_AT_low_pc(_ReprogrammingCalls)
	.dwattr DW$57, DW_AT_high_pc(0x00)
	.dwattr DW$57, DW_AT_begin_file("reprog.c")
	.dwattr DW$57, DW_AT_begin_line(0x152)
	.dwattr DW$57, DW_AT_begin_column(0x06)
	.dwattr DW$57, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$57, DW_AT_skeletal(0x01)
	.dwpsn	"reprog.c",339,1

;***************************************************************
;* FNAME: _ReprogrammingCalls           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReprogrammingCalls:
        LCR       #_ProgramSPIFlashBlock ; |340| 
        ; call occurs [#_ProgramSPIFlashBlock] ; |340| 
        LCR       #_CheckEraseProgress  ; |341| 
        ; call occurs [#_CheckEraseProgress] ; |341| 
        LCR       #_Reprogramming       ; |342| 
        ; call occurs [#_Reprogramming] ; |342| 
        LCR       #_ReprogramTimeoutCheck ; |343| 
        ; call occurs [#_ReprogramTimeoutCheck] ; |343| 
	.dwpsn	"reprog.c",344,1
        LRETR
        ; return occurs
	.dwattr DW$57, DW_AT_end_file("reprog.c")
	.dwattr DW$57, DW_AT_end_line(0x158)
	.dwattr DW$57, DW_AT_end_column(0x01)
	.dwendtag DW$57

	.sect	".text"
	.global	_ProgramCheckFunc

DW$58	.dwtag  DW_TAG_subprogram, DW_AT_name("ProgramCheckFunc"), DW_AT_symbol_name("_ProgramCheckFunc")
	.dwattr DW$58, DW_AT_low_pc(_ProgramCheckFunc)
	.dwattr DW$58, DW_AT_high_pc(0x00)
	.dwattr DW$58, DW_AT_begin_file("reprog.c")
	.dwattr DW$58, DW_AT_begin_line(0x15c)
	.dwattr DW$58, DW_AT_begin_column(0x05)
	.dwattr DW$58, DW_AT_frame_base[DW_OP_breg20 -14]
	.dwattr DW$58, DW_AT_skeletal(0x01)
	.dwpsn	"reprog.c",349,1

;***************************************************************
;* FNAME: _ProgramCheckFunc             FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            6 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_ProgramCheckFunc:
        MOVL      *SP++,XAR1
        MOVW      DP,#_reprogram+6
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOVB      XAR2,#0
        ADDB      SP,#6
        MOV       @_reprogram+6,#64     ; |410| 
	.dwpsn	"reprog.c",412,0
        MOVB      XAR1,#0
L25:    
DW$L$_ProgramCheckFunc$2$B:
        MOVW      DP,#_reprogram+4
        MOVL      @_reprogram+4,XAR1    ; |413| 
        MOVB      XAR0,#0
        MOVW      DP,#_reprogram+6
        MOV       AL,@_reprogram+6      ; |415| 
        BF        L27,EQ                ; |415| 
        ; branchcc occurs ; |415| 
DW$L$_ProgramCheckFunc$2$E:
L26:    
DW$L$_ProgramCheckFunc$3$B:
	.dwpsn	"reprog.c",415,0
        MOV       AH,AR2                ; |416| 
        MOVL      XAR4,#_transferbuffer ; |416| 
        MOVB      AL,#1                 ; |416| 
        MOVW      DP,#_reprogram+6
        MOV       *+XAR4[AR0],AH        ; |416| 
        ADD       AL,AH                 ; |416| 
        ADDB      XAR0,#1               ; |415| 
        MOVZ      AR2,AL                ; |416| 
        MOV       AL,AR0                ; |415| 
        CMP       AL,@_reprogram+6      ; |415| 
	.dwpsn	"reprog.c",417,0
        BF        L26,LO                ; |415| 
        ; branchcc occurs ; |415| 
DW$L$_ProgramCheckFunc$3$E:
L27:    
DW$L$_ProgramCheckFunc$4$B:
        MOVW      DP,#_reprogram
        MOV       @_reprogram,#1        ; |418| 
        MOVW      DP,#_reprogram+1
        MOV       @_reprogram+1,#10     ; |419| 
        LCR       #_ProgramSPIFlashBlock ; |420| 
        ; call occurs [#_ProgramSPIFlashBlock] ; |420| 
        MOVW      DP,#_reprogram+1
        MOV       AL,@_reprogram+1      ; |422| 
        BF        L28,EQ                ; |422| 
        ; branchcc occurs ; |422| 
DW$L$_ProgramCheckFunc$4$E:
        MOVL      XAR4,#FSL1            ; |423| 
        MOVL      XAR3,#_stringbuffer   ; |423| 
        MOVL      *-SP[2],XAR4          ; |423| 
        MOVL      XAR4,XAR3             ; |423| 
        MOV       *-SP[3],AL            ; |423| 
        MOVL      *-SP[6],XAR1          ; |423| 
        LCR       #_sprintf             ; |423| 
        ; call occurs [#_sprintf] ; |423| 
        MOVL      XAR4,XAR3             ; |423| 
        LCR       #_CLITransmitBuffer   ; |423| 
        ; call occurs [#_CLITransmitBuffer] ; |423| 
        MOVB      AL,#1                 ; |424| 
        BF        L29,UNC               ; |424| 
        ; branch occurs ; |424| 
L28:    
DW$L$_ProgramCheckFunc$6$B:
        MOVL      ACC,XAR1
        ADDB      ACC,#128              ; |412| 
        MOVL      XAR1,ACC              ; |412| 
        MOVL      XAR4,#524287          ; |412| 
        MOVL      ACC,XAR4              ; |412| 
        CMPL      ACC,XAR1              ; |412| 
	.dwpsn	"reprog.c",426,0
        BF        L25,HI                ; |412| 
        ; branchcc occurs ; |412| 
DW$L$_ProgramCheckFunc$6$E:
        MOVB      AL,#0
L29:    
        SUBB      SP,#6                 ; |428| 
        MOVL      XAR3,*--SP            ; |428| 
        MOVL      XAR2,*--SP            ; |428| 
        MOVL      XAR1,*--SP            ; |428| 
	.dwpsn	"reprog.c",430,1
        LRETR
        ; return occurs

DW$59	.dwtag  DW_TAG_loop
	.dwattr DW$59, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\reprog.asm:L25:1:1471518987")
	.dwattr DW$59, DW_AT_begin_file("reprog.c")
	.dwattr DW$59, DW_AT_begin_line(0x19c)
	.dwattr DW$59, DW_AT_end_line(0x1aa)
DW$60	.dwtag  DW_TAG_loop_range
	.dwattr DW$60, DW_AT_low_pc(DW$L$_ProgramCheckFunc$2$B)
	.dwattr DW$60, DW_AT_high_pc(DW$L$_ProgramCheckFunc$2$E)
DW$61	.dwtag  DW_TAG_loop_range
	.dwattr DW$61, DW_AT_low_pc(DW$L$_ProgramCheckFunc$4$B)
	.dwattr DW$61, DW_AT_high_pc(DW$L$_ProgramCheckFunc$4$E)
DW$62	.dwtag  DW_TAG_loop_range
	.dwattr DW$62, DW_AT_low_pc(DW$L$_ProgramCheckFunc$6$B)
	.dwattr DW$62, DW_AT_high_pc(DW$L$_ProgramCheckFunc$6$E)

DW$63	.dwtag  DW_TAG_loop
	.dwattr DW$63, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\reprog.asm:L26:2:1471518987")
	.dwattr DW$63, DW_AT_begin_file("reprog.c")
	.dwattr DW$63, DW_AT_begin_line(0x19f)
	.dwattr DW$63, DW_AT_end_line(0x1a1)
DW$64	.dwtag  DW_TAG_loop_range
	.dwattr DW$64, DW_AT_low_pc(DW$L$_ProgramCheckFunc$3$B)
	.dwattr DW$64, DW_AT_high_pc(DW$L$_ProgramCheckFunc$3$E)
	.dwendtag DW$63

	.dwendtag DW$59

	.dwattr DW$58, DW_AT_end_file("reprog.c")
	.dwattr DW$58, DW_AT_end_line(0x1ae)
	.dwattr DW$58, DW_AT_end_column(0x01)
	.dwendtag DW$58

	.sect	".text"
	.global	_ProgramSPIFlashBlock

DW$65	.dwtag  DW_TAG_subprogram, DW_AT_name("ProgramSPIFlashBlock"), DW_AT_symbol_name("_ProgramSPIFlashBlock")
	.dwattr DW$65, DW_AT_low_pc(_ProgramSPIFlashBlock)
	.dwattr DW$65, DW_AT_high_pc(0x00)
	.dwattr DW$65, DW_AT_begin_file("reprog.c")
	.dwattr DW$65, DW_AT_begin_line(0x1b7)
	.dwattr DW$65, DW_AT_begin_column(0x06)
	.dwattr DW$65, DW_AT_frame_base[DW_OP_breg20 -84]
	.dwattr DW$65, DW_AT_skeletal(0x01)
	.dwpsn	"reprog.c",440,1

;***************************************************************
;* FNAME: _ProgramSPIFlashBlock         FR SIZE:  82           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            7 Parameter, 68 Auto,  6 SOE     *
;***************************************************************

_ProgramSPIFlashBlock:
        MOVL      *SP++,XAR1
        MOVB      AH,#0
        MOVW      DP,#_reprogram+1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOVZ      AR2,SP
        MOV       AL,@_reprogram+1      ; |454| 
        ADDB      SP,#76
        CMPB      AL,#10                ; |454| 
        SUBB      FP,#8
        BF        L30,NEQ               ; |454| 
        ; branchcc occurs ; |454| 
        MOVB      AH,#1                 ; |454| 
L30:    
        MOVL      XAR0,#12              ; |454| 
        MOVW      DP,#_reprogram
        MOV       AL,@_reprogram        ; |454| 
        CMPB      AL,#1                 ; |454| 
        MOV       *+FP[AR0],AH          ; |454| 
        BF        L46,NEQ               ; |454| 
        ; branchcc occurs ; |454| 
        MOVW      DP,#_reprogram
        MOV       @_reprogram,#0        ; |459| 
        MOVW      DP,#_reprogram+1
        MOV       @_reprogram+1,#1      ; |460| 
        MOVW      DP,#_reprogram+4
        MOVL      XAR6,@_reprogram+4    ; |462| 
        MOVL      XAR0,#11              ; |463| 
        CLRC      SXM
        MOVL      ACC,XAR6              ; |462| 
        MOVU      ACC,AH                ; |462| 
        ANDB      AL,#0xff              ; |462| 
        MOVZ      AR3,AL                ; |462| 
        MOVL      ACC,XAR6              ; |463| 
        SFR       ACC,8                 ; |463| 
        ANDB      AL,#0xff              ; |463| 
        MOV       *+FP[AR0],AL          ; |463| 
        MOVL      XAR0,#10              ; |464| 
        MOVL      ACC,XAR6              ; |464| 
        ANDB      AL,#0xff              ; |464| 
        MOV       *+FP[AR0],AL          ; |464| 
        LCR       #_WriteEnable         ; |466| 
        ; call occurs [#_WriteEnable] ; |466| 
        MOVB      AL,#200               ; |476| 
        LCR       #_NOPDelay            ; |476| 
        ; call occurs [#_NOPDelay] ; |476| 
        MOVW      DP,#_gpa
        AND       @_gpa,#0xfff7         ; |477| 
        MOVB      AL,#2                 ; |478| 
        LCR       #_TransmitByte        ; |478| 
        ; call occurs [#_TransmitByte] ; |478| 
        MOVB      AL,#200               ; |479| 
        LCR       #_NOPDelay            ; |479| 
        ; call occurs [#_NOPDelay] ; |479| 
        MOV       AL,AR3                ; |480| 
        LCR       #_TransmitByte        ; |480| 
        ; call occurs [#_TransmitByte] ; |480| 
        MOVL      XAR0,#11              ; |480| 
        MOV       AL,*+FP[AR0]          ; |480| 
        LCR       #_TransmitByte        ; |481| 
        ; call occurs [#_TransmitByte] ; |481| 
        MOVL      XAR0,#10              ; |481| 
        MOV       AL,*+FP[AR0]          ; |481| 
        LCR       #_TransmitByte        ; |482| 
        ; call occurs [#_TransmitByte] ; |482| 
        MOVB      XAR1,#0
        MOVW      DP,#_reprogram+6
        MOV       AL,@_reprogram+6      ; |484| 
        BF        L32,EQ                ; |484| 
        ; branchcc occurs ; |484| 
L31:    
DW$L$_ProgramSPIFlashBlock$5$B:
	.dwpsn	"reprog.c",485,0
        MOVL      XAR4,#_transferbuffer ; |488| 
        MOVL      XAR0,#9               ; |488| 
        MOV       AL,*+XAR4[AR1]        ; |488| 
        AND       AH,AL,#0x00ff         ; |488| 
        LSR       AL,8                  ; |489| 
        MOV       *+FP[AR0],AH          ; |488| 
        LCR       #_TransmitByte        ; |489| 
        ; call occurs [#_TransmitByte] ; |489| 
        MOVB      AL,#200               ; |489| 
        LCR       #_NOPDelay            ; |489| 
        ; call occurs [#_NOPDelay] ; |489| 
        MOVL      XAR0,#9               ; |489| 
        MOV       AL,*+FP[AR0]          ; |489| 
        LCR       #_TransmitByte        ; |490| 
        ; call occurs [#_TransmitByte] ; |490| 
        MOVB      AL,#200               ; |490| 
        LCR       #_NOPDelay            ; |490| 
        ; call occurs [#_NOPDelay] ; |490| 
        ADDB      XAR1,#1               ; |484| 
        MOVW      DP,#_reprogram+6
        MOV       AL,AR1                ; |484| 
        CMP       AL,@_reprogram+6      ; |484| 
	.dwpsn	"reprog.c",491,0
        BF        L31,LO                ; |484| 
        ; branchcc occurs ; |484| 
DW$L$_ProgramSPIFlashBlock$5$E:
L32:    
        MOVB      AL,#200               ; |492| 
        LCR       #_NOPDelay            ; |492| 
        ; call occurs [#_NOPDelay] ; |492| 
        MOVW      DP,#_gpa
        OR        @_gpa,#0x0008         ; |493| 
        MOV       AL,#500               ; |494| 
        LCR       #_NOPDelay            ; |494| 
        ; call occurs [#_NOPDelay] ; |494| 
        MOVW      DP,#_timers+68
        MOV       @_timers+68,#400      ; |497| 
	.dwpsn	"reprog.c",501,0
        NOP
L33:    
DW$L$_ProgramSPIFlashBlock$7$B:
	.dwpsn	"reprog.c",502,0
        MOVW      DP,#_timers+68
        MOV       AL,@_timers+68        ; |501| 
        BF        L34,EQ                ; |501| 
        ; branchcc occurs ; |501| 
DW$L$_ProgramSPIFlashBlock$7$E:
DW$L$_ProgramSPIFlashBlock$8$B:
        LCR       #_CheckSPIBusy        ; |503| 
        ; call occurs [#_CheckSPIBusy] ; |503| 
        MOVW      DP,#_settings
        CMPB      AL,#0                 ; |504| 
        MOV       @_settings,#1         ; |504| 
	.dwpsn	"reprog.c",505,0
        BF        L33,NEQ               ; |504| 
        ; branchcc occurs ; |504| 
DW$L$_ProgramSPIFlashBlock$8$E:
L34:    
        MOVW      DP,#_timers+68
        MOV       AL,@_timers+68        ; |506| 
        BF        L45,EQ                ; |506| 
        ; branchcc occurs ; |506| 
        LCR       #_CheckEraseProgError ; |514| 
        ; call occurs [#_CheckEraseProgError] ; |514| 
        CMPB      AL,#0                 ; |514| 
        BF        L43,NEQ               ; |514| 
        ; branchcc occurs ; |514| 
        MOVW      DP,#_gpa
        AND       @_gpa,#0xfff7         ; |518| 
        MOVB      AL,#4                 ; |519| 
        LCR       #_TransmitByte        ; |519| 
        ; call occurs [#_TransmitByte] ; |519| 
        MOVB      AL,#200               ; |520| 
        LCR       #_NOPDelay            ; |520| 
        ; call occurs [#_NOPDelay] ; |520| 
        MOVW      DP,#_gpa
        OR        @_gpa,#0x0008         ; |521| 
        MOVW      DP,#_gpa
        AND       @_gpa,#0xfff7         ; |523| 
        MOVB      AL,#200               ; |524| 
        LCR       #_NOPDelay            ; |524| 
        ; call occurs [#_NOPDelay] ; |524| 
        MOVB      AL,#3                 ; |525| 
        LCR       #_TransmitByte        ; |525| 
        ; call occurs [#_TransmitByte] ; |525| 
        MOV       AL,AR3                ; |526| 
        LCR       #_TransmitByte        ; |526| 
        ; call occurs [#_TransmitByte] ; |526| 
        MOVL      XAR0,#11              ; |526| 
        MOV       AL,*+FP[AR0]          ; |526| 
        LCR       #_TransmitByte        ; |527| 
        ; call occurs [#_TransmitByte] ; |527| 
        MOVL      XAR0,#10              ; |527| 
        MOV       AL,*+FP[AR0]          ; |527| 
        LCR       #_TransmitByte        ; |528| 
        ; call occurs [#_TransmitByte] ; |528| 
        MOVB      AL,#200               ; |529| 
        LCR       #_NOPDelay            ; |529| 
        ; call occurs [#_NOPDelay] ; |529| 
        MOVB      XAR1,#0
        MOVW      DP,#_reprogram+6
        MOV       AL,@_reprogram+6      ; |533| 
        BF        L36,EQ                ; |533| 
        ; branchcc occurs ; |533| 
L35:    
DW$L$_ProgramSPIFlashBlock$12$B:
	.dwpsn	"reprog.c",534,0
        LCR       #_ReceiveByte         ; |535| 
        ; call occurs [#_ReceiveByte] ; |535| 
        MOVL      XAR0,#10              ; |535| 
        MOV       *+FP[AR0],AL          ; |535| 
        MOVB      AL,#200               ; |535| 
        LCR       #_NOPDelay            ; |535| 
        ; call occurs [#_NOPDelay] ; |535| 
        LCR       #_ReceiveByte         ; |536| 
        ; call occurs [#_ReceiveByte] ; |536| 
        MOVZ      AR3,AL                ; |536| 
        MOVB      AL,#200               ; |536| 
        LCR       #_NOPDelay            ; |536| 
        ; call occurs [#_NOPDelay] ; |536| 
        MOVL      XAR0,#10              ; |540| 
        MOVZ      AR4,SP                ; |540| 
        MOV       AL,AR3                ; |540| 
        MOV       AH,*+FP[AR0]          ; |540| 
        SUBB      XAR4,#71              ; |540| 
        MOVB      AL.MSB,AH             ; |540| 
        MOV       *+XAR4[AR1],AL        ; |540| 
        ADDB      XAR1,#1               ; |533| 
        MOVW      DP,#_reprogram+6
        MOV       AL,AR1                ; |533| 
        CMP       AL,@_reprogram+6      ; |533| 
	.dwpsn	"reprog.c",541,0
        BF        L35,LO                ; |533| 
        ; branchcc occurs ; |533| 
DW$L$_ProgramSPIFlashBlock$12$E:
L36:    
        MOVW      DP,#_gpa
        OR        @_gpa,#0x0008         ; |542| 
        MOVB      XAR1,#0
        MOVB      AL,#0
        MOVW      DP,#_reprogram+6
        MOV       AH,@_reprogram+6      ; |548| 
        BF        L39,EQ                ; |548| 
        ; branchcc occurs ; |548| 
L37:    
DW$L$_ProgramSPIFlashBlock$14$B:
	.dwpsn	"reprog.c",549,0
        CMPB      AL,#0                 ; |548| 
        BF        L39,NEQ               ; |548| 
        ; branchcc occurs ; |548| 
DW$L$_ProgramSPIFlashBlock$14$E:
DW$L$_ProgramSPIFlashBlock$15$B:
        MOVZ      AR4,SP                ; |553| 
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |552| 
        SUBB      XAR4,#71              ; |553| 
        MOV       AH,*+XAR4[AR1]        ; |553| 
        MOVL      XAR4,#_transferbuffer ; |553| 
        MOVZ      AR6,*+XAR4[AR1]       ; |553| 
        CMP       AH,AR6                ; |553| 
        BF        L38,EQ                ; |553| 
        ; branchcc occurs ; |553| 
DW$L$_ProgramSPIFlashBlock$15$E:
DW$L$_ProgramSPIFlashBlock$16$B:
        MOVW      DP,#_reprogram+4
        MOVL      XAR7,@_reprogram+4    ; |595| 
        MOVL      XAR4,#FSL2            ; |595| 
        MOVL      XAR3,#_stringbuffer   ; |595| 
        MOVL      *-SP[2],XAR4          ; |595| 
        MOVL      *-SP[4],XAR7          ; |595| 
        MOV       *-SP[5],AR1           ; |595| 
        MOVL      XAR4,XAR3             ; |595| 
        MOV       *-SP[6],AR6           ; |595| 
        MOV       *-SP[7],AH            ; |595| 
        LCR       #_sprintf             ; |595| 
        ; call occurs [#_sprintf] ; |595| 
        MOVL      XAR4,XAR3             ; |595| 
        LCR       #_DebugStringOut      ; |595| 
        ; call occurs [#_DebugStringOut] ; |595| 
        MOVB      AL,#1                 ; |596| 
DW$L$_ProgramSPIFlashBlock$16$E:
L38:    
DW$L$_ProgramSPIFlashBlock$17$B:
        ADDB      XAR1,#1               ; |598| 
        MOVW      DP,#_reprogram+6
        MOV       AH,AR1                ; |598| 
        CMP       AH,@_reprogram+6      ; |598| 
	.dwpsn	"reprog.c",599,0
        BF        L37,LO                ; |598| 
        ; branchcc occurs ; |598| 
DW$L$_ProgramSPIFlashBlock$17$E:
L39:    
        CMPB      AL,#1                 ; |600| 
        BF        L43,EQ                ; |600| 
        ; branchcc occurs ; |600| 
        MOVW      DP,#_settings+17
        MOV       AL,@_settings+17      ; |610| 
        CMPB      AL,#1                 ; |610| 
        BF        L44,NEQ               ; |610| 
        ; branchcc occurs ; |610| 
        MOVW      DP,#_allsensors+2
        MOV       AL,@_allsensors+2     ; |610| 
        BF        L44,EQ                ; |610| 
        ; branchcc occurs ; |610| 
        MOVL      XAR0,#12              ; |610| 
        MOVW      DP,#_settings+31
        MOV       AL,@_settings+31      ; |610| 
        OR        AL,*+FP[AR0]          ; |610| 
        BF        L44,NEQ               ; |610| 
        ; branchcc occurs ; |610| 
        MOVW      DP,#_reprogram+14
        MOV       @_reprogram+14,#1     ; |612| 
        MOVW      DP,#_timers+42
        MOV       @_timers+42,#0        ; |613| 
        MOVW      DP,#_slave485mb+69
        MOV       AL,@_slave485mb+69    ; |614| 
        BF        L41,EQ                ; |614| 
        ; branchcc occurs ; |614| 
L40:    
DW$L$_ProgramSPIFlashBlock$23$B:
	.dwpsn	"reprog.c",615,0
        MOVW      DP,#_timers+42
        MOV       @_timers+42,#0        ; |616| 
        LCR       #_Slave485Modbus      ; |617| 
        ; call occurs [#_Slave485Modbus] ; |617| 
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |619| 
        MOVW      DP,#_slave485mb+69
        MOV       AL,@_slave485mb+69    ; |619| 
	.dwpsn	"reprog.c",620,0
        BF        L40,NEQ               ; |619| 
        ; branchcc occurs ; |619| 
DW$L$_ProgramSPIFlashBlock$23$E:
L41:    
        MOVW      DP,#_reprogram+14
        MOV       AL,@_reprogram+14     ; |614| 
        CMPB      AL,#1                 ; |614| 
        BF        L40,EQ                ; |614| 
        ; branchcc occurs ; |614| 
        MOVW      DP,#_reprogram+11
        MOV       AL,@_reprogram+11     ; |621| 
        CMPB      AL,#1                 ; |621| 
        BF        L42,NEQ               ; |621| 
        ; branchcc occurs ; |621| 
        MOVW      DP,#_reprogram+12
        MOV       AL,@_reprogram+12     ; |621| 
        BF        L44,EQ                ; |621| 
        ; branchcc occurs ; |621| 
L42:    
        MOVL      XAR4,#FSL3            ; |624| 
        MOVL      XAR3,#_stringbuffer   ; |624| 
        MOVL      *-SP[2],XAR4          ; |624| 
        MOVL      XAR4,XAR3             ; |624| 
        LCR       #_sprintf             ; |624| 
        ; call occurs [#_sprintf] ; |624| 
        MOVL      XAR4,XAR3             ; |625| 
        LCR       #_CLITransmitBuffer   ; |625| 
        ; call occurs [#_CLITransmitBuffer] ; |625| 
L43:    
        MOVW      DP,#_reprogram+1
        MOV       @_reprogram+1,#2      ; |626| 
        BF        L46,UNC               ; |626| 
        ; branch occurs ; |626| 
L44:    
        MOVW      DP,#_reprogram+1
        MOV       @_reprogram+1,#0      ; |629| 
        BF        L46,UNC               ; |629| 
        ; branch occurs ; |629| 
L45:    
        MOVL      XAR4,#FSL4            ; |509| 
        MOVL      XAR3,#_stringbuffer   ; |509| 
        MOVL      *-SP[2],XAR4          ; |509| 
        MOVL      XAR4,XAR3             ; |509| 
        MOVW      DP,#_reprogram+1
        MOV       @_reprogram+1,#2      ; |508| 
        LCR       #_sprintf             ; |509| 
        ; call occurs [#_sprintf] ; |509| 
        MOVL      XAR4,XAR3             ; |509| 
        LCR       #_DebugStringOut      ; |509| 
        ; call occurs [#_DebugStringOut] ; |509| 
L46:    
        SUBB      SP,#76
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"reprog.c",635,1
        LRETR
        ; return occurs

DW$66	.dwtag  DW_TAG_loop
	.dwattr DW$66, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\reprog.asm:L40:1:1471518987")
	.dwattr DW$66, DW_AT_begin_file("reprog.c")
	.dwattr DW$66, DW_AT_begin_line(0x266)
	.dwattr DW$66, DW_AT_end_line(0x26c)
DW$67	.dwtag  DW_TAG_loop_range
	.dwattr DW$67, DW_AT_low_pc(DW$L$_ProgramSPIFlashBlock$23$B)
	.dwattr DW$67, DW_AT_high_pc(DW$L$_ProgramSPIFlashBlock$23$E)
	.dwendtag DW$66


DW$68	.dwtag  DW_TAG_loop
	.dwattr DW$68, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\reprog.asm:L37:1:1471518987")
	.dwattr DW$68, DW_AT_begin_file("reprog.c")
	.dwattr DW$68, DW_AT_begin_line(0x224)
	.dwattr DW$68, DW_AT_end_line(0x257)
DW$69	.dwtag  DW_TAG_loop_range
	.dwattr DW$69, DW_AT_low_pc(DW$L$_ProgramSPIFlashBlock$14$B)
	.dwattr DW$69, DW_AT_high_pc(DW$L$_ProgramSPIFlashBlock$14$E)
DW$70	.dwtag  DW_TAG_loop_range
	.dwattr DW$70, DW_AT_low_pc(DW$L$_ProgramSPIFlashBlock$15$B)
	.dwattr DW$70, DW_AT_high_pc(DW$L$_ProgramSPIFlashBlock$15$E)
DW$71	.dwtag  DW_TAG_loop_range
	.dwattr DW$71, DW_AT_low_pc(DW$L$_ProgramSPIFlashBlock$16$B)
	.dwattr DW$71, DW_AT_high_pc(DW$L$_ProgramSPIFlashBlock$16$E)
DW$72	.dwtag  DW_TAG_loop_range
	.dwattr DW$72, DW_AT_low_pc(DW$L$_ProgramSPIFlashBlock$17$B)
	.dwattr DW$72, DW_AT_high_pc(DW$L$_ProgramSPIFlashBlock$17$E)
	.dwendtag DW$68


DW$73	.dwtag  DW_TAG_loop
	.dwattr DW$73, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\reprog.asm:L35:1:1471518987")
	.dwattr DW$73, DW_AT_begin_file("reprog.c")
	.dwattr DW$73, DW_AT_begin_line(0x215)
	.dwattr DW$73, DW_AT_end_line(0x21d)
DW$74	.dwtag  DW_TAG_loop_range
	.dwattr DW$74, DW_AT_low_pc(DW$L$_ProgramSPIFlashBlock$12$B)
	.dwattr DW$74, DW_AT_high_pc(DW$L$_ProgramSPIFlashBlock$12$E)
	.dwendtag DW$73


DW$75	.dwtag  DW_TAG_loop
	.dwattr DW$75, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\reprog.asm:L33:1:1471518987")
	.dwattr DW$75, DW_AT_begin_file("reprog.c")
	.dwattr DW$75, DW_AT_begin_line(0x1f5)
	.dwattr DW$75, DW_AT_end_line(0x1f9)
DW$76	.dwtag  DW_TAG_loop_range
	.dwattr DW$76, DW_AT_low_pc(DW$L$_ProgramSPIFlashBlock$7$B)
	.dwattr DW$76, DW_AT_high_pc(DW$L$_ProgramSPIFlashBlock$7$E)
DW$77	.dwtag  DW_TAG_loop_range
	.dwattr DW$77, DW_AT_low_pc(DW$L$_ProgramSPIFlashBlock$8$B)
	.dwattr DW$77, DW_AT_high_pc(DW$L$_ProgramSPIFlashBlock$8$E)
	.dwendtag DW$75


DW$78	.dwtag  DW_TAG_loop
	.dwattr DW$78, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\reprog.asm:L31:1:1471518987")
	.dwattr DW$78, DW_AT_begin_file("reprog.c")
	.dwattr DW$78, DW_AT_begin_line(0x1e4)
	.dwattr DW$78, DW_AT_end_line(0x1eb)
DW$79	.dwtag  DW_TAG_loop_range
	.dwattr DW$79, DW_AT_low_pc(DW$L$_ProgramSPIFlashBlock$5$B)
	.dwattr DW$79, DW_AT_high_pc(DW$L$_ProgramSPIFlashBlock$5$E)
	.dwendtag DW$78

	.dwattr DW$65, DW_AT_end_file("reprog.c")
	.dwattr DW$65, DW_AT_end_line(0x27b)
	.dwattr DW$65, DW_AT_end_column(0x01)
	.dwendtag DW$65

	.sect	".text"
	.global	_EraseSPIFlash

DW$80	.dwtag  DW_TAG_subprogram, DW_AT_name("EraseSPIFlash"), DW_AT_symbol_name("_EraseSPIFlash")
	.dwattr DW$80, DW_AT_low_pc(_EraseSPIFlash)
	.dwattr DW$80, DW_AT_high_pc(0x00)
	.dwattr DW$80, DW_AT_begin_file("reprog.c")
	.dwattr DW$80, DW_AT_begin_line(0x280)
	.dwattr DW$80, DW_AT_begin_column(0x06)
	.dwattr DW$80, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$80, DW_AT_skeletal(0x01)
	.dwpsn	"reprog.c",641,1

;***************************************************************
;* FNAME: _EraseSPIFlash                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_EraseSPIFlash:
        MOVB      AL,#1                 ; |643| 
        MOVW      DP,#_reprogram+1
        MOV       @_reprogram+1,AL      ; |643| 
        MOVW      DP,#_reprogram+2
        MOV       @_reprogram+2,AL      ; |644| 
        LCR       #_WriteEnable         ; |649| 
        ; call occurs [#_WriteEnable] ; |649| 
        MOV       AL,#1000              ; |650| 
        LCR       #_NOPDelay            ; |650| 
        ; call occurs [#_NOPDelay] ; |650| 
        MOVW      DP,#_gpa
        AND       @_gpa,#0xfff7         ; |653| 
        MOV       AL,#1000              ; |654| 
        LCR       #_NOPDelay            ; |654| 
        ; call occurs [#_NOPDelay] ; |654| 
        MOVB      AL,#1                 ; |655| 
        LCR       #_TransmitByte        ; |655| 
        ; call occurs [#_TransmitByte] ; |655| 
        MOVB      AL,#0
        LCR       #_TransmitByte        ; |656| 
        ; call occurs [#_TransmitByte] ; |656| 
        MOVB      AL,#85                ; |657| 
        LCR       #_TransmitByte        ; |657| 
        ; call occurs [#_TransmitByte] ; |657| 
        MOVW      DP,#_gpa
        OR        @_gpa,#0x0008         ; |658| 
        MOV       AL,#1000              ; |660| 
        LCR       #_NOPDelay            ; |660| 
        ; call occurs [#_NOPDelay] ; |660| 
        LCR       #_WriteEnable         ; |662| 
        ; call occurs [#_WriteEnable] ; |662| 
        MOVW      DP,#_gpa
        AND       @_gpa,#0xfff7         ; |664| 
        MOV       AL,#1000              ; |665| 
        LCR       #_NOPDelay            ; |665| 
        ; call occurs [#_NOPDelay] ; |665| 
        MOVB      AL,#96                ; |666| 
        LCR       #_TransmitByte        ; |666| 
        ; call occurs [#_TransmitByte] ; |666| 
        MOVW      DP,#_gpa
        OR        @_gpa,#0x0008         ; |667| 
        MOVW      DP,#_timers+68
        MOV       @_timers+68,#2000     ; |670| 
        NOP
        NOP
	.dwpsn	"reprog.c",671,1
        LRETR
        ; return occurs
	.dwattr DW$80, DW_AT_end_file("reprog.c")
	.dwattr DW$80, DW_AT_end_line(0x29f)
	.dwattr DW$80, DW_AT_end_column(0x01)
	.dwendtag DW$80

	.sect	".text"
	.global	_CheckEraseProgress

DW$81	.dwtag  DW_TAG_subprogram, DW_AT_name("CheckEraseProgress"), DW_AT_symbol_name("_CheckEraseProgress")
	.dwattr DW$81, DW_AT_low_pc(_CheckEraseProgress)
	.dwattr DW$81, DW_AT_high_pc(0x00)
	.dwattr DW$81, DW_AT_begin_file("reprog.c")
	.dwattr DW$81, DW_AT_begin_line(0x2a3)
	.dwattr DW$81, DW_AT_begin_column(0x06)
	.dwattr DW$81, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$81, DW_AT_skeletal(0x01)
	.dwpsn	"reprog.c",676,1

;***************************************************************
;* FNAME: _CheckEraseProgress           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CheckEraseProgress:
        MOVW      DP,#_reprogram+2
        MOV       AL,@_reprogram+2      ; |680| 
        CMPB      AL,#1                 ; |680| 
        BF        L55,NEQ               ; |680| 
        ; branchcc occurs ; |680| 
        LCR       #_CheckSPIBusy        ; |682| 
        ; call occurs [#_CheckSPIBusy] ; |682| 
        CMPB      AL,#0                 ; |682| 
        BF        L55,NEQ               ; |682| 
        ; branchcc occurs ; |682| 
        MOVW      DP,#_timers+68
        MOV       AL,@_timers+68        ; |685| 
        BF        L53,EQ                ; |685| 
        ; branchcc occurs ; |685| 
        LCR       #_CheckEraseProgError ; |693| 
        ; call occurs [#_CheckEraseProgError] ; |693| 
        CMPB      AL,#0                 ; |693| 
        BF        L53,NEQ               ; |693| 
        ; branchcc occurs ; |693| 
        MOVW      DP,#_settings+17
        MOV       AL,@_settings+17      ; |698| 
        CMPB      AL,#1                 ; |698| 
        BF        L52,NEQ               ; |698| 
        ; branchcc occurs ; |698| 
        MOVW      DP,#_allsensors+2
        MOV       AL,@_allsensors+2     ; |698| 
        BF        L52,EQ                ; |698| 
        ; branchcc occurs ; |698| 
        MOVW      DP,#_settings+31
        MOV       AL,@_settings+31      ; |698| 
        BF        L52,NEQ               ; |698| 
        ; branchcc occurs ; |698| 
        MOVW      DP,#_timers+68
        MOV       @_timers+68,#100      ; |700| 
        NOP
        MOVW      DP,#_timers+68
        MOV       AL,@_timers+68        ; |701| 
        BF        L48,EQ                ; |701| 
        ; branchcc occurs ; |701| 
L47:    
DW$L$_CheckEraseProgress$9$B:
	.dwpsn	"reprog.c",701,0
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |701| 
        MOVW      DP,#_timers+68
        MOV       AL,@_timers+68        ; |701| 
        BF        L47,NEQ               ; |701| 
        ; branchcc occurs ; |701| 
DW$L$_CheckEraseProgress$9$E:
L48:    
        MOVB      AL,#1                 ; |702| 
        MOVW      DP,#_reprogram+14
        MOV       @_reprogram+14,AL     ; |702| 
        MOVW      DP,#_timers+42
        MOV       @_timers+42,#0        ; |703| 
        MOVW      DP,#_reprogram+12
        MOV       @_reprogram+12,AL     ; |704| 
        MOVW      DP,#_slave485mb+69
        MOV       AL,@_slave485mb+69    ; |705| 
        BF        L51,EQ                ; |705| 
        ; branchcc occurs ; |705| 
L49:    
DW$L$_CheckEraseProgress$11$B:
	.dwpsn	"reprog.c",706,0
        MOVW      DP,#_reprogram+12
        MOV       AL,@_reprogram+12     ; |707| 
        CMPB      AL,#1                 ; |707| 
        BF        L50,NEQ               ; |707| 
        ; branchcc occurs ; |707| 
DW$L$_CheckEraseProgress$11$E:
DW$L$_CheckEraseProgress$12$B:
        MOVW      DP,#_reprogram+14
        MOV       @_reprogram+14,#1     ; |707| 
DW$L$_CheckEraseProgress$12$E:
L50:    
DW$L$_CheckEraseProgress$13$B:
        MOVW      DP,#_timers+42
        MOV       @_timers+42,#0        ; |708| 
        LCR       #_Slave485Modbus      ; |709| 
        ; call occurs [#_Slave485Modbus] ; |709| 
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |711| 
        MOVW      DP,#_slave485mb+69
        MOV       AL,@_slave485mb+69    ; |711| 
	.dwpsn	"reprog.c",712,0
        BF        L49,NEQ               ; |711| 
        ; branchcc occurs ; |711| 
DW$L$_CheckEraseProgress$13$E:
L51:    
        MOVW      DP,#_reprogram+14
        MOV       AL,@_reprogram+14     ; |705| 
        CMPB      AL,#1                 ; |705| 
        BF        L49,EQ                ; |705| 
        ; branchcc occurs ; |705| 
        MOVW      DP,#_reprogram+12
        MOV       AL,@_reprogram+12     ; |705| 
        CMPB      AL,#1                 ; |705| 
        BF        L49,EQ                ; |705| 
        ; branchcc occurs ; |705| 
        MOVW      DP,#_reprogram+11
        MOV       AL,@_reprogram+11     ; |713| 
        CMPB      AL,#1                 ; |713| 
        BF        L53,NEQ               ; |713| 
        ; branchcc occurs ; |713| 
        MOVW      DP,#_reprogram+12
        MOV       AL,@_reprogram+12     ; |713| 
        BF        L53,NEQ               ; |713| 
        ; branchcc occurs ; |713| 
L52:    
        MOVW      DP,#_reprogram+1
        MOV       @_reprogram+1,#0      ; |716| 
        BF        L54,UNC               ; |716| 
        ; branch occurs ; |716| 
L53:    
        MOVW      DP,#_reprogram+1
        MOV       @_reprogram+1,#2      ; |687| 
L54:    
        MOVW      DP,#_reprogram+2
        MOV       @_reprogram+2,#0      ; |688| 
L55:    
	.dwpsn	"reprog.c",722,1
        LRETR
        ; return occurs

DW$82	.dwtag  DW_TAG_loop
	.dwattr DW$82, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\reprog.asm:L49:1:1471518987")
	.dwattr DW$82, DW_AT_begin_file("reprog.c")
	.dwattr DW$82, DW_AT_begin_line(0x2c1)
	.dwattr DW$82, DW_AT_end_line(0x2c8)
DW$83	.dwtag  DW_TAG_loop_range
	.dwattr DW$83, DW_AT_low_pc(DW$L$_CheckEraseProgress$11$B)
	.dwattr DW$83, DW_AT_high_pc(DW$L$_CheckEraseProgress$11$E)
DW$84	.dwtag  DW_TAG_loop_range
	.dwattr DW$84, DW_AT_low_pc(DW$L$_CheckEraseProgress$12$B)
	.dwattr DW$84, DW_AT_high_pc(DW$L$_CheckEraseProgress$12$E)
DW$85	.dwtag  DW_TAG_loop_range
	.dwattr DW$85, DW_AT_low_pc(DW$L$_CheckEraseProgress$13$B)
	.dwattr DW$85, DW_AT_high_pc(DW$L$_CheckEraseProgress$13$E)
	.dwendtag DW$82


DW$86	.dwtag  DW_TAG_loop
	.dwattr DW$86, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\reprog.asm:L47:1:1471518987")
	.dwattr DW$86, DW_AT_begin_file("reprog.c")
	.dwattr DW$86, DW_AT_begin_line(0x2bd)
	.dwattr DW$86, DW_AT_end_line(0x2bd)
DW$87	.dwtag  DW_TAG_loop_range
	.dwattr DW$87, DW_AT_low_pc(DW$L$_CheckEraseProgress$9$B)
	.dwattr DW$87, DW_AT_high_pc(DW$L$_CheckEraseProgress$9$E)
	.dwendtag DW$86

	.dwattr DW$81, DW_AT_end_file("reprog.c")
	.dwattr DW$81, DW_AT_end_line(0x2d2)
	.dwattr DW$81, DW_AT_end_column(0x01)
	.dwendtag DW$81

	.sect	".text"
	.global	_WriteEnable

DW$88	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteEnable"), DW_AT_symbol_name("_WriteEnable")
	.dwattr DW$88, DW_AT_low_pc(_WriteEnable)
	.dwattr DW$88, DW_AT_high_pc(0x00)
	.dwattr DW$88, DW_AT_begin_file("reprog.c")
	.dwattr DW$88, DW_AT_begin_line(0x2d4)
	.dwattr DW$88, DW_AT_begin_column(0x06)
	.dwattr DW$88, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$88, DW_AT_skeletal(0x01)
	.dwpsn	"reprog.c",725,1

;***************************************************************
;* FNAME: _WriteEnable                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WriteEnable:
        MOVW      DP,#_gpa
        AND       @_gpa,#0xfff7         ; |726| 
        MOVB      AL,#6                 ; |727| 
        LCR       #_TransmitByte        ; |727| 
        ; call occurs [#_TransmitByte] ; |727| 
        MOVW      DP,#_gpa
        OR        @_gpa,#0x0008         ; |728| 
        MOVB      AL,#100               ; |729| 
        LCR       #_NOPDelay            ; |729| 
        ; call occurs [#_NOPDelay] ; |729| 
	.dwpsn	"reprog.c",730,1
        LRETR
        ; return occurs
	.dwattr DW$88, DW_AT_end_file("reprog.c")
	.dwattr DW$88, DW_AT_end_line(0x2da)
	.dwattr DW$88, DW_AT_end_column(0x01)
	.dwendtag DW$88

	.sect	".text"
	.global	_CheckSPIBusy

DW$89	.dwtag  DW_TAG_subprogram, DW_AT_name("CheckSPIBusy"), DW_AT_symbol_name("_CheckSPIBusy")
	.dwattr DW$89, DW_AT_low_pc(_CheckSPIBusy)
	.dwattr DW$89, DW_AT_high_pc(0x00)
	.dwattr DW$89, DW_AT_begin_file("reprog.c")
	.dwattr DW$89, DW_AT_begin_line(0x2de)
	.dwattr DW$89, DW_AT_begin_column(0x0e)
	.dwattr DW$89, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$89, DW_AT_skeletal(0x01)
	.dwpsn	"reprog.c",735,1

;***************************************************************
;* FNAME: _CheckSPIBusy                 FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_CheckSPIBusy:
        MOVW      DP,#_gpa
        MOVL      *SP++,XAR1
        AND       @_gpa,#0xfff7         ; |738| 
        MOVB      AL,#5                 ; |739| 
        LCR       #_TransmitByte        ; |739| 
        ; call occurs [#_TransmitByte] ; |739| 
        LCR       #_ReceiveByte         ; |740| 
        ; call occurs [#_ReceiveByte] ; |740| 
        MOVW      DP,#_gpa
        MOVZ      AR1,AL                ; |740| 
        OR        @_gpa,#0x0008         ; |742| 
        MOVB      AL,#100               ; |743| 
        LCR       #_NOPDelay            ; |743| 
        ; call occurs [#_NOPDelay] ; |743| 
        MOV       AL,AR1                ; |743| 
        MOVL      XAR1,*--SP            ; |744| 
        ANDB      AL,#0x01              ; |744| 
	.dwpsn	"reprog.c",745,1
        LRETR
        ; return occurs
	.dwattr DW$89, DW_AT_end_file("reprog.c")
	.dwattr DW$89, DW_AT_end_line(0x2e9)
	.dwattr DW$89, DW_AT_end_column(0x01)
	.dwendtag DW$89

	.sect	".text"
	.global	_CheckEraseProgError

DW$90	.dwtag  DW_TAG_subprogram, DW_AT_name("CheckEraseProgError"), DW_AT_symbol_name("_CheckEraseProgError")
	.dwattr DW$90, DW_AT_low_pc(_CheckEraseProgError)
	.dwattr DW$90, DW_AT_high_pc(0x00)
	.dwattr DW$90, DW_AT_begin_file("reprog.c")
	.dwattr DW$90, DW_AT_begin_line(0x2eb)
	.dwattr DW$90, DW_AT_begin_column(0x0e)
	.dwattr DW$90, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$90, DW_AT_skeletal(0x01)
	.dwpsn	"reprog.c",748,1

;***************************************************************
;* FNAME: _CheckEraseProgError          FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_CheckEraseProgError:
        MOVW      DP,#_gpa
        MOVL      *SP++,XAR1
        AND       @_gpa,#0xfff7         ; |751| 
        MOVB      AL,#5                 ; |752| 
        LCR       #_TransmitByte        ; |752| 
        ; call occurs [#_TransmitByte] ; |752| 
        LCR       #_ReceiveByte         ; |753| 
        ; call occurs [#_ReceiveByte] ; |753| 
        MOVW      DP,#_gpa
        MOVZ      AR1,AL                ; |753| 
        OR        @_gpa,#0x0008         ; |754| 
        MOVB      AL,#100               ; |755| 
        LCR       #_NOPDelay            ; |755| 
        ; call occurs [#_NOPDelay] ; |755| 
        MOV       AL,AR1                ; |756| 
        MOVL      XAR1,*--SP            ; |756| 
        ASR       AL,5                  ; |756| 
        ANDB      AL,#0x01              ; |756| 
	.dwpsn	"reprog.c",758,1
        LRETR
        ; return occurs
	.dwattr DW$90, DW_AT_end_file("reprog.c")
	.dwattr DW$90, DW_AT_end_line(0x2f6)
	.dwattr DW$90, DW_AT_end_column(0x01)
	.dwendtag DW$90

	.sect	".text"
	.global	_ProcessorReProgramInit

DW$91	.dwtag  DW_TAG_subprogram, DW_AT_name("ProcessorReProgramInit"), DW_AT_symbol_name("_ProcessorReProgramInit")
	.dwattr DW$91, DW_AT_low_pc(_ProcessorReProgramInit)
	.dwattr DW$91, DW_AT_high_pc(0x00)
	.dwattr DW$91, DW_AT_begin_file("reprog.c")
	.dwattr DW$91, DW_AT_begin_line(0x2fa)
	.dwattr DW$91, DW_AT_begin_column(0x06)
	.dwattr DW$91, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$91, DW_AT_skeletal(0x01)
	.dwpsn	"reprog.c",763,1

;***************************************************************
;* FNAME: _ProcessorReProgramInit       FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_ProcessorReProgramInit:
        MOVL      *SP++,XAR1
 eallow             ; Enable accesses to PIE control registers
        AND       IER,#0                ; |770| 
        MOVB      AL,#0
        MOV       *(0:0x0ce2),AL        ; |771| 
        MOV       *(0:0x0cf2),AL        ; |772| 
        MOVB      AL,#111               ; |775| 
        MOV       *(0:0x7029),AL        ; |775| 
        NOP
        NOP
        MOV       AL,*(0:0x0b34)        ; |776| 
        ORB       AL,#0x08              ; |776| 
        MOV       *(0:0x0b34),AL        ; |776| 
        MOVB      AL,#10                ; |777| 
        MOV       *(0:0x7021),AL        ; |777| 
        MOVB      AL,#1                 ; |778| 
        MOV       *(0:0x70d1),AL        ; |778| 
	.dwpsn	"reprog.c",782,0
        MOVB      XAR1,#0
L56:    
DW$L$_ProcessorReProgramInit$2$B:
	.dwpsn	"reprog.c",783,0
        MOVB      AL,#85                ; |784| 
        MOV       *(0:0x7025),AL        ; |784| 
        ADDB      XAR1,#1               ; |782| 
        MOVB      AL,#170               ; |785| 
        MOV       *(0:0x7025),AL        ; |785| 
        MOV       ACC,#9362             ; |782| 
        CMPL      ACC,XAR1              ; |782| 
	.dwpsn	"reprog.c",786,0
        BF        L56,HI                ; |782| 
        ; branchcc occurs ; |782| 
DW$L$_ProcessorReProgramInit$2$E:
        MOVB      AL,#2                 ; |788| 
        MOV       *(0:0x701b),AL        ; |788| 
 edis               ; Disable accesses to PIE control registers
	.dwpsn	"reprog.c",790,0
        MOVB      XAR1,#0
L57:    
DW$L$_ProcessorReProgramInit$4$B:
	.dwpsn	"reprog.c",791,0
        MOVW      DP,#_gpd
        SPM       #0
        OR        @_gpd,#0x0002         ; |792| 
        MOV       ACC,#1875 << 5
        LCR       #_NOPDelay            ; |793| 
        ; call occurs [#_NOPDelay] ; |793| 
        MOV       ACC,#1875 << 5
        LCR       #_NOPDelay            ; |794| 
        ; call occurs [#_NOPDelay] ; |794| 
        MOV       ACC,#1875 << 5
        LCR       #_NOPDelay            ; |795| 
        ; call occurs [#_NOPDelay] ; |795| 
        MOV       ACC,#1875 << 5
        LCR       #_NOPDelay            ; |796| 
        ; call occurs [#_NOPDelay] ; |796| 
        MOV       ACC,#1875 << 5
        LCR       #_NOPDelay            ; |797| 
        ; call occurs [#_NOPDelay] ; |797| 
        MOVW      DP,#_gpd
        AND       @_gpd,#0xfffd         ; |798| 
        MOV       ACC,#1875 << 5
        LCR       #_NOPDelay            ; |799| 
        ; call occurs [#_NOPDelay] ; |799| 
        MOV       ACC,#1875 << 5
        LCR       #_NOPDelay            ; |800| 
        ; call occurs [#_NOPDelay] ; |800| 
        MOV       ACC,#1875 << 5
        LCR       #_NOPDelay            ; |801| 
        ; call occurs [#_NOPDelay] ; |801| 
        MOV       ACC,#1875 << 5
        LCR       #_NOPDelay            ; |802| 
        ; call occurs [#_NOPDelay] ; |802| 
        MOV       ACC,#1875 << 5
        LCR       #_NOPDelay            ; |803| 
        ; call occurs [#_NOPDelay] ; |803| 
        ADDB      XAR1,#1               ; |790| 
        MOVB      ACC,#10
        CMPL      ACC,XAR1              ; |790| 
	.dwpsn	"reprog.c",804,0
        BF        L57,HI                ; |790| 
        ; branchcc occurs ; |790| 
DW$L$_ProcessorReProgramInit$4$E:
        MOVW      DP,#_gpd
        OR        @_gpd,#0x0002         ; |805| 
        MOVL      XAR1,*--SP
	.dwpsn	"reprog.c",806,1
        LRETR
        ; return occurs

DW$92	.dwtag  DW_TAG_loop
	.dwattr DW$92, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\reprog.asm:L57:1:1471518987")
	.dwattr DW$92, DW_AT_begin_file("reprog.c")
	.dwattr DW$92, DW_AT_begin_line(0x316)
	.dwattr DW$92, DW_AT_end_line(0x324)
DW$93	.dwtag  DW_TAG_loop_range
	.dwattr DW$93, DW_AT_low_pc(DW$L$_ProcessorReProgramInit$4$B)
	.dwattr DW$93, DW_AT_high_pc(DW$L$_ProcessorReProgramInit$4$E)
	.dwendtag DW$92


DW$94	.dwtag  DW_TAG_loop
	.dwattr DW$94, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\reprog.asm:L56:1:1471518987")
	.dwattr DW$94, DW_AT_begin_file("reprog.c")
	.dwattr DW$94, DW_AT_begin_line(0x30e)
	.dwattr DW$94, DW_AT_end_line(0x312)
DW$95	.dwtag  DW_TAG_loop_range
	.dwattr DW$95, DW_AT_low_pc(DW$L$_ProcessorReProgramInit$2$B)
	.dwattr DW$95, DW_AT_high_pc(DW$L$_ProcessorReProgramInit$2$E)
	.dwendtag DW$94

	.dwattr DW$91, DW_AT_end_file("reprog.c")
	.dwattr DW$91, DW_AT_end_line(0x326)
	.dwattr DW$91, DW_AT_end_column(0x01)
	.dwendtag DW$91

	.sect	".text"
	.global	_Reprogramming

DW$96	.dwtag  DW_TAG_subprogram, DW_AT_name("Reprogramming"), DW_AT_symbol_name("_Reprogramming")
	.dwattr DW$96, DW_AT_low_pc(_Reprogramming)
	.dwattr DW$96, DW_AT_high_pc(0x00)
	.dwattr DW$96, DW_AT_begin_file("reprog.c")
	.dwattr DW$96, DW_AT_begin_line(0x32e)
	.dwattr DW$96, DW_AT_begin_column(0x06)
	.dwattr DW$96, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$96, DW_AT_skeletal(0x01)
	.dwpsn	"reprog.c",815,1

;***************************************************************
;* FNAME: _Reprogramming                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_Reprogramming:
        MOV       AL,#4369
        MOVW      DP,#_reprogram+8
        MOV       AH,#4660
        CMPL      ACC,@_reprogram+8     ; |820| 
        BF        L58,NEQ               ; |820| 
        ; branchcc occurs ; |820| 
        MOVW      DP,#_settings+17
        MOV       AL,@_settings+17      ; |820| 
        CMPB      AL,#1                 ; |820| 
        BF        L58,NEQ               ; |820| 
        ; branchcc occurs ; |820| 
        LCR       #_MasterSlaveCodeCopy ; |822| 
        ; call occurs [#_MasterSlaveCodeCopy] ; |822| 
L58:    
        MOV       AL,#8738
        MOV       AH,#4660
        MOVW      DP,#_reprogram+8
        CMPL      ACC,@_reprogram+8     ; |825| 
        BF        L67,NEQ               ; |825| 
        ; branchcc occurs ; |825| 
        MOVW      DP,#_settings+17
        MOV       AL,@_settings+17      ; |825| 
        BF        L59,NEQ               ; |825| 
        ; branchcc occurs ; |825| 
        LCR       #_MasterSlaveCodeCopy ; |827| 
        ; call occurs [#_MasterSlaveCodeCopy] ; |827| 
L59:    
        MOV       AL,#8738
        MOV       AH,#4660
        MOVW      DP,#_reprogram+8
        CMPL      ACC,@_reprogram+8     ; |829| 
        BF        L67,NEQ               ; |829| 
        ; branchcc occurs ; |829| 
        MOVW      DP,#_settings+17
        MOV       AL,@_settings+17      ; |829| 
        CMPB      AL,#1                 ; |829| 
        BF        L67,NEQ               ; |829| 
        ; branchcc occurs ; |829| 
        MOVW      DP,#_reprogram+15
        MOV       AL,@_reprogram+15     ; |829| 
        CMPB      AL,#1                 ; |829| 
        BF        L67,NEQ               ; |829| 
        ; branchcc occurs ; |829| 
        MOVW      DP,#_receiveA+7
        MOV       AL,@_receiveA+7       ; |834| 
        BF        L60,EQ                ; |834| 
        ; branchcc occurs ; |834| 
        MOVW      DP,#_receiveA+8
        CMP       AL,@_receiveA+8       ; |834| 
        BF        L66,NEQ               ; |834| 
        ; branchcc occurs ; |834| 
L60:    
        MOVW      DP,#_timers+6
        MOV       AL,@_timers+6         ; |839| 
        BF        L67,NEQ               ; |839| 
        ; branchcc occurs ; |839| 
        MOVW      DP,#_receiveA+7
        MOV       AL,@_receiveA+7       ; |839| 
        CMPB      AL,#2                 ; |839| 
        BF        L67,LOS               ; |839| 
        ; branchcc occurs ; |839| 
        MOVL      XAR4,#_receiveA+9     ; |841| 
        MOV       AL,*+XAR4[0]          ; |841| 
        CMPB      AL,#69                ; |841| 
        BF        L62,NEQ               ; |841| 
        ; branchcc occurs ; |841| 
        MOV       AL,*+XAR4[1]          ; |841| 
        CMPB      AL,#67                ; |841| 
        BF        L61,NEQ               ; |841| 
        ; branchcc occurs ; |841| 
        MOV       AL,*+XAR4[2]          ; |841| 
        CMPB      AL,#80                ; |841| 
        BF        L64,EQ                ; |841| 
        ; branchcc occurs ; |841| 
L61:    
        MOV       AL,*+XAR4[0]          ; |842| 
        CMPB      AL,#69                ; |842| 
        BF        L62,NEQ               ; |842| 
        ; branchcc occurs ; |842| 
        MOV       AL,*+XAR4[1]          ; |842| 
        CMPB      AL,#67                ; |842| 
        BF        L62,NEQ               ; |842| 
        ; branchcc occurs ; |842| 
        MOV       AL,*+XAR4[2]          ; |842| 
        CMPB      AL,#70                ; |842| 
        BF        L63,EQ                ; |842| 
        ; branchcc occurs ; |842| 
L62:    
        MOV       AL,*+XAR4[0]          ; |843| 
        CMPB      AL,#66                ; |843| 
        BF        L65,NEQ               ; |843| 
        ; branchcc occurs ; |843| 
        MOV       AL,*+XAR4[1]          ; |843| 
        CMPB      AL,#67                ; |843| 
        BF        L65,NEQ               ; |843| 
        ; branchcc occurs ; |843| 
        CLRC      SXM
        MOV       ACC,*+XAR4[4] << 8    ; |847| 
        MOVL      XAR6,ACC              ; |847| 
        MOV       AL,*+XAR4[5]          ; |848| 
        ANDB      AL,#0xff              ; |848| 
        MOVZ      AR7,AL                ; |848| 
        MOVL      ACC,XAR6              ; |848| 
        ADDU      ACC,AR7               ; |848| 
        MOVL      XAR6,ACC              ; |848| 
        MOVW      DP,#_reprogram+12
        MOV       AL,AR6                ; |848| 
        OR        AL,#0xc000            ; |850| 
        MOV       @_reprogram+12,AL     ; |850| 
        BF        L65,UNC               ; |850| 
        ; branch occurs ; |850| 
L63:    
        MOVW      DP,#_reprogram+12
        MOV       @_reprogram+12,#32768 ; |842| 
        BF        L65,UNC               ; |842| 
        ; branch occurs ; |842| 
L64:    
        MOVW      DP,#_reprogram+12
        MOV       @_reprogram+12,#49152 ; |841| 
L65:    
        MOVW      DP,#_receiveA+8
        MOV       @_receiveA+8,#0       ; |854| 
        MOVW      DP,#_receiveA+7
        MOV       @_receiveA+7,#0       ; |855| 
        BF        L67,UNC               ; |855| 
        ; branch occurs ; |855| 
L66:    
        MOVW      DP,#_receiveA+8
        MOV       @_receiveA+8,AL       ; |836| 
        MOVW      DP,#_timers+6
        MOV       @_timers+6,#2         ; |837| 
        NOP
        NOP
L67:    
	.dwpsn	"reprog.c",858,1
        LRETR
        ; return occurs
	.dwattr DW$96, DW_AT_end_file("reprog.c")
	.dwattr DW$96, DW_AT_end_line(0x35a)
	.dwattr DW$96, DW_AT_end_column(0x01)
	.dwendtag DW$96

	.sect	".text"
	.global	_MasterSlaveCodeCopy

DW$97	.dwtag  DW_TAG_subprogram, DW_AT_name("MasterSlaveCodeCopy"), DW_AT_symbol_name("_MasterSlaveCodeCopy")
	.dwattr DW$97, DW_AT_low_pc(_MasterSlaveCodeCopy)
	.dwattr DW$97, DW_AT_high_pc(0x00)
	.dwattr DW$97, DW_AT_begin_file("reprog.c")
	.dwattr DW$97, DW_AT_begin_line(0x35c)
	.dwattr DW$97, DW_AT_begin_column(0x06)
	.dwattr DW$97, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$97, DW_AT_skeletal(0x01)
	.dwpsn	"reprog.c",861,1

;***************************************************************
;* FNAME: _MasterSlaveCodeCopy          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_MasterSlaveCodeCopy:
        MOVW      DP,#_reprogram+10
        MOV       AL,@_reprogram+10     ; |862| 
        CMPB      AL,#1                 ; |862| 
        BF        L69,NEQ               ; |862| 
        ; branchcc occurs ; |862| 
        MOVW      DP,#_timers+68
        MOV       AL,@_timers+68        ; |864| 
        BF        L70,NEQ               ; |864| 
        ; branchcc occurs ; |864| 
L68:    
DW$L$_MasterSlaveCodeCopy$3$B:
	.dwpsn	"reprog.c",867,0
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |868| 
        LCR       #_ProcessorReProgramInit ; |869| 
        ; call occurs [#_ProcessorReProgramInit] ; |869| 
        LCR       #_CopyProgramtoRam    ; |870| 
        ; call occurs [#_CopyProgramtoRam] ; |870| 
	.dwpsn	"reprog.c",872,0
        BF        L68,UNC               ; |866| 
        ; branch occurs ; |866| 
DW$L$_MasterSlaveCodeCopy$3$E:
L69:    
        MOVW      DP,#_timers+68
        MOV       @_timers+68,#200      ; |877| 
        NOP
        MOVW      DP,#_reprogram+10
        MOV       @_reprogram+10,#1     ; |878| 
L70:    
	.dwpsn	"reprog.c",880,1
        LRETR
        ; return occurs

DW$98	.dwtag  DW_TAG_loop
	.dwattr DW$98, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\reprog.asm:L68:1:1471518987")
	.dwattr DW$98, DW_AT_begin_file("reprog.c")
	.dwattr DW$98, DW_AT_begin_line(0x362)
	.dwattr DW$98, DW_AT_end_line(0x368)
DW$99	.dwtag  DW_TAG_loop_range
	.dwattr DW$99, DW_AT_low_pc(DW$L$_MasterSlaveCodeCopy$3$B)
	.dwattr DW$99, DW_AT_high_pc(DW$L$_MasterSlaveCodeCopy$3$E)
	.dwendtag DW$98

	.dwattr DW$97, DW_AT_end_file("reprog.c")
	.dwattr DW$97, DW_AT_end_line(0x370)
	.dwattr DW$97, DW_AT_end_column(0x01)
	.dwendtag DW$97

	.sect	".text"
	.global	_CopyProgramtoRam

DW$100	.dwtag  DW_TAG_subprogram, DW_AT_name("CopyProgramtoRam"), DW_AT_symbol_name("_CopyProgramtoRam")
	.dwattr DW$100, DW_AT_low_pc(_CopyProgramtoRam)
	.dwattr DW$100, DW_AT_high_pc(0x00)
	.dwattr DW$100, DW_AT_begin_file("reprog.c")
	.dwattr DW$100, DW_AT_begin_line(0x379)
	.dwattr DW$100, DW_AT_begin_column(0x06)
	.dwattr DW$100, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$100, DW_AT_skeletal(0x01)
	.dwpsn	"reprog.c",890,1

;***************************************************************
;* FNAME: _CopyProgramtoRam             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CopyProgramtoRam:
	.dwpsn	"reprog.c",902,0
        MOVB      XAR7,#0
L71:    
DW$L$_CopyProgramtoRam$2$B:
	.dwpsn	"reprog.c",903,0
        MOVL      XAR4,#_BootloaderArray ; |907| 
        MOVL      ACC,XAR4              ; |907| 
        ADDL      ACC,XAR7
        MOVL      XAR5,ACC              ; |907| 
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |904| 
        MOV       ACC,*+XAR5[0] << #8   ; |907| 
        MOV       AH,*+XAR5[0]          ; |907| 
        LSR       AH,8                  ; |907| 
        ADD       AH,AL                 ; |907| 
        MOV       PH,AH                 ; |907| 
        ADDB      XAR7,#1               ; |908| 
        MOV       AL,PH                 ; |908| 
        BF        L73,EQ                ; |909| 
        ; branchcc occurs ; |909| 
DW$L$_CopyProgramtoRam$2$E:
DW$L$_CopyProgramtoRam$3$B:
        MOVL      ACC,XAR4              ; |913| 
        ADDL      ACC,XAR7
        MOVL      XAR6,ACC              ; |913| 
        MOV       AL,*+XAR6[0]          ; |913| 
        LSR       AL,8                  ; |913| 
        MOVZ      AR5,AL
        MOV       ACC,*+XAR6[0] << #8   ; |913| 
        MOVZ      AR6,AL                ; |913| 
        ADDB      XAR7,#1               ; |917| 
        MOVL      ACC,XAR5              ; |913| 
        ADDU      ACC,AR6               ; |913| 
        LSL       ACC,16                ; |913| 
        MOVL      XAR5,ACC              ; |913| 
        MOVL      ACC,XAR4              ; |917| 
        ADDL      ACC,XAR7
        MOVL      XAR4,ACC              ; |917| 
        MOV       ACC,*+XAR4[0] << #8   ; |917| 
        MOV       AH,*+XAR4[0]          ; |917| 
        LSR       AH,8                  ; |917| 
        MOVZ      AR6,AH                ; |917| 
        ADD       AR6,AL                ; |917| 
        MOVL      ACC,XAR5              ; |917| 
        ADDU      ACC,AR6               ; |917| 
        MOVL      XAR5,ACC              ; |917| 
        ADDB      XAR7,#1               ; |918| 
        MOV       AL,PH                 ; |921| 
        MOVB      XAR6,#0
        BF        L73,EQ                ; |921| 
        ; branchcc occurs ; |921| 
DW$L$_CopyProgramtoRam$3$E:
L72:    
DW$L$_CopyProgramtoRam$4$B:
	.dwpsn	"reprog.c",922,0
        MOVL      ACC,XAR7              ; |923| 
        MOVL      XAR4,#_BootloaderArray ; |923| 
        ADDL      XAR4,ACC
        ADDB      XAR6,#1               ; |921| 
        MOVW      DP,#_settings
        MOV       AL,*+XAR4[0]          ; |923| 
        LSR       AL,8                  ; |923| 
        ADDB      XAR7,#1               ; |925| 
        MOV       PL,AL                 ; |923| 
        MOV       ACC,*+XAR4[0] << #8   ; |924| 
        ADD       PL,AL                 ; |926| 
        MOV       AL,PH                 ; |921| 
        MOV       *XAR5++,P             ; |926| 
        CMP       AL,AR6                ; |921| 
        MOV       @_settings,#1         ; |927| 
	.dwpsn	"reprog.c",928,0
        BF        L72,HI                ; |921| 
        ; branchcc occurs ; |921| 
DW$L$_CopyProgramtoRam$4$E:
DW$L$_CopyProgramtoRam$5$B:
        CMPB      AL,#0                 ; |902| 
	.dwpsn	"reprog.c",930,0
        BF        L71,NEQ               ; |902| 
        ; branchcc occurs ; |902| 
DW$L$_CopyProgramtoRam$5$E:
L73:    
        LCR       #_RunCodefromRam      ; |932| 
        ; call occurs [#_RunCodefromRam] ; |932| 
	.dwpsn	"reprog.c",935,1
        LRETR
        ; return occurs

DW$101	.dwtag  DW_TAG_loop
	.dwattr DW$101, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\reprog.asm:L71:1:1471518987")
	.dwattr DW$101, DW_AT_begin_file("reprog.c")
	.dwattr DW$101, DW_AT_begin_line(0x386)
	.dwattr DW$101, DW_AT_end_line(0x3a2)
DW$102	.dwtag  DW_TAG_loop_range
	.dwattr DW$102, DW_AT_low_pc(DW$L$_CopyProgramtoRam$2$B)
	.dwattr DW$102, DW_AT_high_pc(DW$L$_CopyProgramtoRam$2$E)
DW$103	.dwtag  DW_TAG_loop_range
	.dwattr DW$103, DW_AT_low_pc(DW$L$_CopyProgramtoRam$3$B)
	.dwattr DW$103, DW_AT_high_pc(DW$L$_CopyProgramtoRam$3$E)
DW$104	.dwtag  DW_TAG_loop_range
	.dwattr DW$104, DW_AT_low_pc(DW$L$_CopyProgramtoRam$5$B)
	.dwattr DW$104, DW_AT_high_pc(DW$L$_CopyProgramtoRam$5$E)

DW$105	.dwtag  DW_TAG_loop
	.dwattr DW$105, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\reprog.asm:L72:2:1471518987")
	.dwattr DW$105, DW_AT_begin_file("reprog.c")
	.dwattr DW$105, DW_AT_begin_line(0x399)
	.dwattr DW$105, DW_AT_end_line(0x3a0)
DW$106	.dwtag  DW_TAG_loop_range
	.dwattr DW$106, DW_AT_low_pc(DW$L$_CopyProgramtoRam$4$B)
	.dwattr DW$106, DW_AT_high_pc(DW$L$_CopyProgramtoRam$4$E)
	.dwendtag DW$105

	.dwendtag DW$101

	.dwattr DW$100, DW_AT_end_file("reprog.c")
	.dwattr DW$100, DW_AT_end_line(0x3a7)
	.dwattr DW$100, DW_AT_end_column(0x01)
	.dwendtag DW$100

	.sect	".text"
	.global	_RunCodefromRam

DW$107	.dwtag  DW_TAG_subprogram, DW_AT_name("RunCodefromRam"), DW_AT_symbol_name("_RunCodefromRam")
	.dwattr DW$107, DW_AT_low_pc(_RunCodefromRam)
	.dwattr DW$107, DW_AT_high_pc(0x00)
	.dwattr DW$107, DW_AT_begin_file("reprog.c")
	.dwattr DW$107, DW_AT_begin_line(0x3ab)
	.dwattr DW$107, DW_AT_begin_column(0x06)
	.dwattr DW$107, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$107, DW_AT_skeletal(0x01)
	.dwpsn	"reprog.c",940,1

;***************************************************************
;* FNAME: _RunCodefromRam               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_RunCodefromRam:
 LB 0x3f8000
        SPM       #0
	.dwpsn	"reprog.c",944,1
        LRETR
        ; return occurs
	.dwattr DW$107, DW_AT_end_file("reprog.c")
	.dwattr DW$107, DW_AT_end_line(0x3b0)
	.dwattr DW$107, DW_AT_end_column(0x01)
	.dwendtag DW$107

;***************************************************************
;* FAR STRINGS                                                 *
;***************************************************************
	.sect	".econst"
	.align	2
FSL1:	.string	"Error %u .. Address ... %lx ...",0
	.align	2
FSL2:	.string	13,10,"Addr:%lx %u T:%x R:%x",0
	.align	2
FSL3:	.string	"FIRMWARE",13,10,0
	.align	2
FSL4:	.string	".Busy.",0
;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_sprintf
	.global	_DebugStringOut
	.global	_MastertoSlaveSendBuffer
	.global	_CLITransmitBuffer
	.global	_CalcCRC
	.global	_Slave485Modbus
	.global	_SPUUnitReset
	.global	_NOPDelay
	.global	_TransmitByte
	.global	_ReceiveByte
	.global	_gpa
	.global	_gpd
	.global	_receiveA
	.global	_settings
	.global	_timers
	.global	_allsensors
	.global	_config
	.global	_transferbuffer
	.global	_modbuscmdbuf
	.global	_pcmodbus
	.global	_slave485mb
	.global	_receivingmode
	.global	_slaveresponsemsg
	.global	_stringbuffer

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

DW$T$50	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$50, DW_AT_language(DW_LANG_C)
DW$108	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$49)
	.dwendtag DW$T$50


DW$T$52	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$52, DW_AT_language(DW_LANG_C)
DW$109	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
DW$110	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$52


DW$T$54	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$54, DW_AT_language(DW_LANG_C)
DW$111	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
DW$112	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$113	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
	.dwendtag DW$T$54


DW$T$56	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$56, DW_AT_language(DW_LANG_C)

DW$T$58	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$58, DW_AT_language(DW_LANG_C)
DW$114	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$115	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$116	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$117	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
	.dwendtag DW$T$58


DW$T$60	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$60, DW_AT_language(DW_LANG_C)
DW$118	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
DW$119	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$120	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
	.dwendtag DW$T$60

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)

DW$T$65	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$65, DW_AT_language(DW_LANG_C)
DW$121	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$49)
DW$122	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$64)
DW$123	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$65


DW$T$67	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$67, DW_AT_language(DW_LANG_C)

DW$T$69	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$69, DW_AT_language(DW_LANG_C)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)
DW$T$25	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$25, DW_AT_address_class(0x16)

DW$T$43	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$43, DW_AT_byte_size(0x10a)
DW$124	.dwtag  DW_TAG_subrange_type
	.dwattr DW$124, DW_AT_upper_bound(0x109)
	.dwendtag DW$T$43


DW$T$82	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$82, DW_AT_language(DW_LANG_C)

DW$T$84	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$84, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$84, DW_AT_byte_size(0x80)
DW$125	.dwtag  DW_TAG_subrange_type
	.dwattr DW$125, DW_AT_upper_bound(0x7f)
	.dwendtag DW$T$84


DW$T$85	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$85, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$85, DW_AT_byte_size(0x64)
DW$126	.dwtag  DW_TAG_subrange_type
	.dwattr DW$126, DW_AT_upper_bound(0x63)
	.dwendtag DW$T$85

DW$127	.dwtag  DW_TAG_far_type
	.dwattr DW$127, DW_AT_type(*DW$T$86)
DW$T$87	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$87, DW_AT_type(*DW$127)

DW$T$89	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$88)
	.dwattr DW$T$89, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$89, DW_AT_byte_size(0x8d6)
DW$128	.dwtag  DW_TAG_subrange_type
	.dwattr DW$128, DW_AT_upper_bound(0x8d5)
	.dwendtag DW$T$89

DW$T$59	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$59, DW_AT_address_class(0x16)
DW$129	.dwtag  DW_TAG_far_type
	.dwattr DW$129, DW_AT_type(*DW$T$95)
DW$T$96	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$96, DW_AT_type(*DW$129)
DW$130	.dwtag  DW_TAG_far_type
	.dwattr DW$130, DW_AT_type(*DW$T$99)
DW$T$100	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$100, DW_AT_type(*DW$130)
DW$T$49	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$27)
	.dwattr DW$T$49, DW_AT_address_class(0x16)
DW$T$64	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$63)
	.dwattr DW$T$64, DW_AT_address_class(0x16)

DW$T$103	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$27)
	.dwattr DW$T$103, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$103, DW_AT_byte_size(0x64)
DW$131	.dwtag  DW_TAG_subrange_type
	.dwattr DW$131, DW_AT_upper_bound(0x63)
	.dwendtag DW$T$103

DW$T$104	.dwtag  DW_TAG_typedef, DW_AT_name("uartreadA"), DW_AT_type(*DW$T$28)
	.dwattr DW$T$104, DW_AT_language(DW_LANG_C)
DW$T$106	.dwtag  DW_TAG_typedef, DW_AT_name("settingsstruct"), DW_AT_type(*DW$T$30)
	.dwattr DW$T$106, DW_AT_language(DW_LANG_C)
DW$132	.dwtag  DW_TAG_far_type
	.dwattr DW$132, DW_AT_type(*DW$T$107)
DW$T$108	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$108, DW_AT_type(*DW$132)
DW$T$110	.dwtag  DW_TAG_typedef, DW_AT_name("allsensorstruct"), DW_AT_type(*DW$T$35)
	.dwattr DW$T$110, DW_AT_language(DW_LANG_C)
DW$T$111	.dwtag  DW_TAG_typedef, DW_AT_name("configstruct"), DW_AT_type(*DW$T$42)
	.dwattr DW$T$111, DW_AT_language(DW_LANG_C)
DW$T$112	.dwtag  DW_TAG_typedef, DW_AT_name("PCCmdStruct"), DW_AT_type(*DW$T$44)
	.dwattr DW$T$112, DW_AT_language(DW_LANG_C)
DW$T$113	.dwtag  DW_TAG_typedef, DW_AT_name("slavecmdstruct"), DW_AT_type(*DW$T$46)
	.dwattr DW$T$113, DW_AT_language(DW_LANG_C)
DW$T$114	.dwtag  DW_TAG_typedef, DW_AT_name("reprogramstruct"), DW_AT_type(*DW$T$48)
	.dwattr DW$T$114, DW_AT_language(DW_LANG_C)
DW$T$86	.dwtag  DW_TAG_typedef, DW_AT_name("uint"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$86, DW_AT_language(DW_LANG_C)
DW$133	.dwtag  DW_TAG_far_type
	.dwattr DW$133, DW_AT_type(*DW$T$11)
DW$T$88	.dwtag  DW_TAG_const_type
	.dwattr DW$T$88, DW_AT_type(*DW$133)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)
DW$T$95	.dwtag  DW_TAG_typedef, DW_AT_name("gpaport"), DW_AT_type(*DW$T$21)
	.dwattr DW$T$95, DW_AT_language(DW_LANG_C)
DW$T$99	.dwtag  DW_TAG_typedef, DW_AT_name("gpdport"), DW_AT_type(*DW$T$24)
	.dwattr DW$T$99, DW_AT_language(DW_LANG_C)
DW$T$27	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$27, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$27, DW_AT_byte_size(0x01)
DW$134	.dwtag  DW_TAG_far_type
	.dwattr DW$134, DW_AT_type(*DW$T$27)
DW$T$63	.dwtag  DW_TAG_const_type
	.dwattr DW$T$63, DW_AT_type(*DW$134)

DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_name("tag_uartreadA")
	.dwattr DW$T$28, DW_AT_byte_size(0x96)
DW$135	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$135, DW_AT_name("headptr"), DW_AT_symbol_name("_headptr")
	.dwattr DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$135, DW_AT_accessibility(DW_ACCESS_public)
DW$136	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$136, DW_AT_name("tailptr"), DW_AT_symbol_name("_tailptr")
	.dwattr DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$136, DW_AT_accessibility(DW_ACCESS_public)
DW$137	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$137, DW_AT_name("eobuf"), DW_AT_symbol_name("_eobuf")
	.dwattr DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$137, DW_AT_accessibility(DW_ACCESS_public)
DW$138	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$138, DW_AT_name("charcount"), DW_AT_symbol_name("_charcount")
	.dwattr DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$138, DW_AT_accessibility(DW_ACCESS_public)
DW$139	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$139, DW_AT_name("currentcharcount"), DW_AT_symbol_name("_currentcharcount")
	.dwattr DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$139, DW_AT_accessibility(DW_ACCESS_public)
DW$140	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$140, DW_AT_name("previouscharcount"), DW_AT_symbol_name("_previouscharcount")
	.dwattr DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$140, DW_AT_accessibility(DW_ACCESS_public)
DW$141	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$141, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$141, DW_AT_accessibility(DW_ACCESS_public)
DW$142	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$142, DW_AT_name("uartcharrx"), DW_AT_symbol_name("_uartcharrx")
	.dwattr DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x95]
	.dwattr DW$142, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$30, DW_AT_name("tag_settingsstruct")
	.dwattr DW$T$30, DW_AT_byte_size(0x24)
DW$143	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$143, DW_AT_name("watchdog"), DW_AT_symbol_name("_watchdog")
	.dwattr DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$143, DW_AT_accessibility(DW_ACCESS_public)
DW$144	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$144, DW_AT_name("ledflashflag"), DW_AT_symbol_name("_ledflashflag")
	.dwattr DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$144, DW_AT_accessibility(DW_ACCESS_public)
DW$145	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$145, DW_AT_name("updatesafe"), DW_AT_symbol_name("_updatesafe")
	.dwattr DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$145, DW_AT_accessibility(DW_ACCESS_public)
DW$146	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$146, DW_AT_name("tableconfigtype"), DW_AT_symbol_name("_tableconfigtype")
	.dwattr DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$146, DW_AT_accessibility(DW_ACCESS_public)
DW$147	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$147, DW_AT_name("caltableconfigtype"), DW_AT_symbol_name("_caltableconfigtype")
	.dwattr DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$147, DW_AT_accessibility(DW_ACCESS_public)
DW$148	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$148, DW_AT_name("eventmsgid"), DW_AT_symbol_name("_eventmsgid")
	.dwattr DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$148, DW_AT_accessibility(DW_ACCESS_public)
DW$149	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$149, DW_AT_name("configoperationcomplete"), DW_AT_symbol_name("_configoperationcomplete")
	.dwattr DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$149, DW_AT_accessibility(DW_ACCESS_public)
DW$150	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$150, DW_AT_name("sdcarderr"), DW_AT_symbol_name("_sdcarderr")
	.dwattr DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$150, DW_AT_accessibility(DW_ACCESS_public)
DW$151	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$151, DW_AT_name("sderase"), DW_AT_symbol_name("_sderase")
	.dwattr DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$151, DW_AT_accessibility(DW_ACCESS_public)
DW$152	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$152, DW_AT_name("sdreinit"), DW_AT_symbol_name("_sdreinit")
	.dwattr DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$152, DW_AT_accessibility(DW_ACCESS_public)
DW$153	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$153, DW_AT_name("sdcardupdate"), DW_AT_symbol_name("_sdcardupdate")
	.dwattr DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$153, DW_AT_accessibility(DW_ACCESS_public)
DW$154	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$154, DW_AT_name("cardreadflag"), DW_AT_symbol_name("_cardreadflag")
	.dwattr DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$154, DW_AT_accessibility(DW_ACCESS_public)
DW$155	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$155, DW_AT_name("ignore"), DW_AT_symbol_name("_ignore")
	.dwattr DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$155, DW_AT_accessibility(DW_ACCESS_public)
DW$156	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$156, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$156, DW_AT_accessibility(DW_ACCESS_public)
DW$157	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$157, DW_AT_name("spiinuse"), DW_AT_symbol_name("_spiinuse")
	.dwattr DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$157, DW_AT_accessibility(DW_ACCESS_public)
DW$158	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$158, DW_AT_name("dcpeakhold"), DW_AT_symbol_name("_dcpeakhold")
	.dwattr DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$158, DW_AT_accessibility(DW_ACCESS_public)
DW$159	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$159, DW_AT_name("dcpause"), DW_AT_symbol_name("_dcpause")
	.dwattr DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$159, DW_AT_accessibility(DW_ACCESS_public)
DW$160	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$160, DW_AT_name("mastermode"), DW_AT_symbol_name("_mastermode")
	.dwattr DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$160, DW_AT_accessibility(DW_ACCESS_public)
DW$161	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$161, DW_AT_name("updatescaling"), DW_AT_symbol_name("_updatescaling")
	.dwattr DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$161, DW_AT_accessibility(DW_ACCESS_public)
DW$162	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$162, DW_AT_name("forwardasternflag"), DW_AT_symbol_name("_forwardasternflag")
	.dwattr DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$162, DW_AT_accessibility(DW_ACCESS_public)
DW$163	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$163, DW_AT_name("initprogress"), DW_AT_symbol_name("_initprogress")
	.dwattr DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$163, DW_AT_accessibility(DW_ACCESS_public)
DW$164	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$164, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$164, DW_AT_accessibility(DW_ACCESS_public)
DW$165	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$165, DW_AT_name("slowdowncounter"), DW_AT_symbol_name("_slowdowncounter")
	.dwattr DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$165, DW_AT_accessibility(DW_ACCESS_public)
DW$166	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$166, DW_AT_name("slowdowncondition"), DW_AT_symbol_name("_slowdowncondition")
	.dwattr DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$166, DW_AT_accessibility(DW_ACCESS_public)
DW$167	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$167, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$167, DW_AT_accessibility(DW_ACCESS_public)
DW$168	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$168, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$168, DW_AT_accessibility(DW_ACCESS_public)
DW$169	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$169, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$169, DW_AT_accessibility(DW_ACCESS_public)
DW$170	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$170, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$170, DW_AT_accessibility(DW_ACCESS_public)
DW$171	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$171, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$171, DW_AT_accessibility(DW_ACCESS_public)
DW$172	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$172, DW_AT_name("temperaturealarm"), DW_AT_symbol_name("_temperaturealarm")
	.dwattr DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$172, DW_AT_accessibility(DW_ACCESS_public)
DW$173	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$173, DW_AT_name("temperatureslowdown"), DW_AT_symbol_name("_temperatureslowdown")
	.dwattr DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$173, DW_AT_accessibility(DW_ACCESS_public)
DW$174	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$174, DW_AT_name("anadebug"), DW_AT_symbol_name("_anadebug")
	.dwattr DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$174, DW_AT_accessibility(DW_ACCESS_public)
DW$175	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$175, DW_AT_name("serialdebug"), DW_AT_symbol_name("_serialdebug")
	.dwattr DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr DW$175, DW_AT_accessibility(DW_ACCESS_public)
DW$176	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$176, DW_AT_name("timerrunning"), DW_AT_symbol_name("_timerrunning")
	.dwattr DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$176, DW_AT_accessibility(DW_ACCESS_public)
DW$177	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$177, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$177, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30

DW$T$107	.dwtag  DW_TAG_typedef, DW_AT_name("timersstruct"), DW_AT_type(*DW$T$32)
	.dwattr DW$T$107, DW_AT_language(DW_LANG_C)

DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$35, DW_AT_name("tag_allsensorstruct")
	.dwattr DW$T$35, DW_AT_byte_size(0x2d)
DW$178	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$178, DW_AT_name("numsensors"), DW_AT_symbol_name("_numsensors")
	.dwattr DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$178, DW_AT_accessibility(DW_ACCESS_public)
DW$179	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$179, DW_AT_name("numsensorsspu1"), DW_AT_symbol_name("_numsensorsspu1")
	.dwattr DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$179, DW_AT_accessibility(DW_ACCESS_public)
DW$180	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$180, DW_AT_name("numsensorsspu2"), DW_AT_symbol_name("_numsensorsspu2")
	.dwattr DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$180, DW_AT_accessibility(DW_ACCESS_public)
DW$181	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$181, DW_AT_name("nominalspeed"), DW_AT_symbol_name("_nominalspeed")
	.dwattr DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$181, DW_AT_accessibility(DW_ACCESS_public)
DW$182	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$182, DW_AT_name("rpmmin"), DW_AT_symbol_name("_rpmmin")
	.dwattr DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$182, DW_AT_accessibility(DW_ACCESS_public)
DW$183	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$183, DW_AT_name("rpmmax"), DW_AT_symbol_name("_rpmmax")
	.dwattr DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$183, DW_AT_accessibility(DW_ACCESS_public)
DW$184	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$184, DW_AT_name("reflash"), DW_AT_symbol_name("_reflash")
	.dwattr DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$184, DW_AT_accessibility(DW_ACCESS_public)
DW$185	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$185, DW_AT_name("sensorhysteresis"), DW_AT_symbol_name("_sensorhysteresis")
	.dwattr DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$185, DW_AT_accessibility(DW_ACCESS_public)
DW$186	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$186, DW_AT_name("cylinderhysteresis"), DW_AT_symbol_name("_cylinderhysteresis")
	.dwattr DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$186, DW_AT_accessibility(DW_ACCESS_public)
DW$187	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$187, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$187, DW_AT_accessibility(DW_ACCESS_public)
DW$188	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$188, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$188, DW_AT_accessibility(DW_ACCESS_public)
DW$189	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$189, DW_AT_name("slowdowndevcallevel"), DW_AT_symbol_name("_slowdowndevcallevel")
	.dwattr DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$189, DW_AT_accessibility(DW_ACCESS_public)
DW$190	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$190, DW_AT_name("alarmdevcallevel"), DW_AT_symbol_name("_alarmdevcallevel")
	.dwattr DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$190, DW_AT_accessibility(DW_ACCESS_public)
DW$191	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$191, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$191, DW_AT_accessibility(DW_ACCESS_public)
DW$192	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$192, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$192, DW_AT_accessibility(DW_ACCESS_public)
DW$193	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$193, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$193, DW_AT_accessibility(DW_ACCESS_public)
DW$194	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$194, DW_AT_name("flags"), DW_AT_symbol_name("_flags")
	.dwattr DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$194, DW_AT_accessibility(DW_ACCESS_public)
DW$195	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$195, DW_AT_name("slowdownack"), DW_AT_symbol_name("_slowdownack")
	.dwattr DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$195, DW_AT_accessibility(DW_ACCESS_public)
DW$196	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$196, DW_AT_name("alarmack"), DW_AT_symbol_name("_alarmack")
	.dwattr DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$196, DW_AT_accessibility(DW_ACCESS_public)
DW$197	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$197, DW_AT_name("maxmintimer"), DW_AT_symbol_name("_maxmintimer")
	.dwattr DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$197, DW_AT_accessibility(DW_ACCESS_public)
DW$198	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$198, DW_AT_name("enginedircal"), DW_AT_symbol_name("_enginedircal")
	.dwattr DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$198, DW_AT_accessibility(DW_ACCESS_public)
DW$199	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$199, DW_AT_name("dirorder"), DW_AT_symbol_name("_dirorder")
	.dwattr DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$199, DW_AT_accessibility(DW_ACCESS_public)
DW$200	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$200, DW_AT_name("prewarningtimer"), DW_AT_symbol_name("_prewarningtimer")
	.dwattr DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$200, DW_AT_accessibility(DW_ACCESS_public)
DW$201	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$201, DW_AT_name("prewarninglevel"), DW_AT_symbol_name("_prewarninglevel")
	.dwattr DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$201, DW_AT_accessibility(DW_ACCESS_public)
DW$202	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$202, DW_AT_name("rpmlimit"), DW_AT_symbol_name("_rpmlimit")
	.dwattr DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr DW$202, DW_AT_accessibility(DW_ACCESS_public)
DW$203	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$203, DW_AT_name("dsss"), DW_AT_symbol_name("_dsss")
	.dwattr DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$203, DW_AT_accessibility(DW_ACCESS_public)
DW$204	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$204, DW_AT_name("slowdowncallevel"), DW_AT_symbol_name("_slowdowncallevel")
	.dwattr DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$204, DW_AT_accessibility(DW_ACCESS_public)
DW$205	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$205, DW_AT_name("alarmcallevel"), DW_AT_symbol_name("_alarmcallevel")
	.dwattr DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$205, DW_AT_accessibility(DW_ACCESS_public)
DW$206	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$206, DW_AT_name("cylinderalarmcallevel"), DW_AT_symbol_name("_cylinderalarmcallevel")
	.dwattr DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$206, DW_AT_accessibility(DW_ACCESS_public)
DW$207	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$207, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$207, DW_AT_accessibility(DW_ACCESS_public)
DW$208	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$208, DW_AT_name("iBarredVibrationSpeedLow"), DW_AT_symbol_name("_iBarredVibrationSpeedLow")
	.dwattr DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$208, DW_AT_accessibility(DW_ACCESS_public)
DW$209	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$209, DW_AT_name("iBarredVibrationSpeedHigh"), DW_AT_symbol_name("_iBarredVibrationSpeedHigh")
	.dwattr DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$209, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35


DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$42, DW_AT_name("tag_configstruct")
	.dwattr DW$T$42, DW_AT_byte_size(0x18)
DW$210	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$210, DW_AT_name("filter"), DW_AT_symbol_name("_filter")
	.dwattr DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$210, DW_AT_accessibility(DW_ACCESS_public)
DW$211	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$211, DW_AT_name("alarmenable"), DW_AT_symbol_name("_alarmenable")
	.dwattr DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$211, DW_AT_accessibility(DW_ACCESS_public)
DW$212	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$38)
	.dwattr DW$212, DW_AT_name("trendmax"), DW_AT_symbol_name("_trendmax")
	.dwattr DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$212, DW_AT_accessibility(DW_ACCESS_public)
DW$213	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$213, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$213, DW_AT_accessibility(DW_ACCESS_public)
DW$214	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$214, DW_AT_name("sdsettings"), DW_AT_symbol_name("_sdsettings")
	.dwattr DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$214, DW_AT_accessibility(DW_ACCESS_public)
DW$215	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$215, DW_AT_name("comms"), DW_AT_symbol_name("_comms")
	.dwattr DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$215, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$42


DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$44, DW_AT_name("tag_PCCmdStruct")
	.dwattr DW$T$44, DW_AT_byte_size(0x110)
DW$216	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$6)
	.dwattr DW$216, DW_AT_name("SlaveAddr"), DW_AT_symbol_name("_SlaveAddr")
	.dwattr DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$216, DW_AT_accessibility(DW_ACCESS_public)
DW$217	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$6)
	.dwattr DW$217, DW_AT_name("Func"), DW_AT_symbol_name("_Func")
	.dwattr DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$217, DW_AT_accessibility(DW_ACCESS_public)
DW$218	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$218, DW_AT_name("StartAdd"), DW_AT_symbol_name("_StartAdd")
	.dwattr DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$218, DW_AT_accessibility(DW_ACCESS_public)
DW$219	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$219, DW_AT_name("NoReg"), DW_AT_symbol_name("_NoReg")
	.dwattr DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$219, DW_AT_accessibility(DW_ACCESS_public)
DW$220	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$220, DW_AT_name("ByteCount"), DW_AT_symbol_name("_ByteCount")
	.dwattr DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$220, DW_AT_accessibility(DW_ACCESS_public)
DW$221	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$43)
	.dwattr DW$221, DW_AT_name("Data"), DW_AT_symbol_name("_Data")
	.dwattr DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$221, DW_AT_accessibility(DW_ACCESS_public)
DW$222	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$222, DW_AT_name("errorflag"), DW_AT_symbol_name("_errorflag")
	.dwattr DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x10f]
	.dwattr DW$222, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$44


DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$46, DW_AT_name("tag_slavecmdstruct")
	.dwattr DW$T$46, DW_AT_byte_size(0x48)
DW$223	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$223, DW_AT_name("SlaveAddr"), DW_AT_symbol_name("_SlaveAddr")
	.dwattr DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$223, DW_AT_accessibility(DW_ACCESS_public)
DW$224	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$224, DW_AT_name("Func"), DW_AT_symbol_name("_Func")
	.dwattr DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$224, DW_AT_accessibility(DW_ACCESS_public)
DW$225	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$225, DW_AT_name("StartAdd"), DW_AT_symbol_name("_StartAdd")
	.dwattr DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$225, DW_AT_accessibility(DW_ACCESS_public)
DW$226	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$226, DW_AT_name("NoReg"), DW_AT_symbol_name("_NoReg")
	.dwattr DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$226, DW_AT_accessibility(DW_ACCESS_public)
DW$227	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$227, DW_AT_name("ByteCount"), DW_AT_symbol_name("_ByteCount")
	.dwattr DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$227, DW_AT_accessibility(DW_ACCESS_public)
DW$228	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$228, DW_AT_name("Data"), DW_AT_symbol_name("_Data")
	.dwattr DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$228, DW_AT_accessibility(DW_ACCESS_public)
DW$229	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$229, DW_AT_name("txmode"), DW_AT_symbol_name("_txmode")
	.dwattr DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr DW$229, DW_AT_accessibility(DW_ACCESS_public)
DW$230	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$230, DW_AT_name("slavelost"), DW_AT_symbol_name("_slavelost")
	.dwattr DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$230, DW_AT_accessibility(DW_ACCESS_public)
DW$231	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$231, DW_AT_name("slavenotready"), DW_AT_symbol_name("_slavenotready")
	.dwattr DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr DW$231, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$46


DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$48, DW_AT_name("tag_reprogramstruct")
	.dwattr DW$T$48, DW_AT_byte_size(0x10)
DW$232	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$232, DW_AT_name("spi"), DW_AT_symbol_name("_spi")
	.dwattr DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$232, DW_AT_accessibility(DW_ACCESS_public)
DW$233	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$233, DW_AT_name("programkey"), DW_AT_symbol_name("_programkey")
	.dwattr DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$233, DW_AT_accessibility(DW_ACCESS_public)
DW$234	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$234, DW_AT_name("reprogramnow"), DW_AT_symbol_name("_reprogramnow")
	.dwattr DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$234, DW_AT_accessibility(DW_ACCESS_public)
DW$235	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$235, DW_AT_name("slavecmdok"), DW_AT_symbol_name("_slavecmdok")
	.dwattr DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$235, DW_AT_accessibility(DW_ACCESS_public)
DW$236	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$236, DW_AT_name("slavestatus"), DW_AT_symbol_name("_slavestatus")
	.dwattr DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$236, DW_AT_accessibility(DW_ACCESS_public)
DW$237	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$237, DW_AT_name("slavetx"), DW_AT_symbol_name("_slavetx")
	.dwattr DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$237, DW_AT_accessibility(DW_ACCESS_public)
DW$238	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$238, DW_AT_name("slaverx"), DW_AT_symbol_name("_slaverx")
	.dwattr DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$238, DW_AT_accessibility(DW_ACCESS_public)
DW$239	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$239, DW_AT_name("slaveset"), DW_AT_symbol_name("_slaveset")
	.dwattr DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$239, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$48

DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)

DW$T$26	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$26, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$26, DW_AT_byte_size(0x8c)
DW$240	.dwtag  DW_TAG_subrange_type
	.dwattr DW$240, DW_AT_upper_bound(0x8b)
	.dwendtag DW$T$26


DW$T$31	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$31, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$31, DW_AT_byte_size(0x0e)
DW$241	.dwtag  DW_TAG_subrange_type
	.dwattr DW$241, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$31


DW$T$45	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$45, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$45, DW_AT_byte_size(0x40)
DW$242	.dwtag  DW_TAG_subrange_type
	.dwattr DW$242, DW_AT_upper_bound(0x3f)
	.dwendtag DW$T$45


DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$21, DW_AT_name("taggpaport")
	.dwattr DW$T$21, DW_AT_byte_size(0x01)
DW$243	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$243, DW_AT_name("selunion"), DW_AT_symbol_name("_selunion")
	.dwattr DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$243, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21


DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_name("taggpdport")
	.dwattr DW$T$24, DW_AT_byte_size(0x01)
DW$244	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$244, DW_AT_name("selunion"), DW_AT_symbol_name("_selunion")
	.dwattr DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$244, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$29, DW_AT_byte_size(0x02)
DW$245	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$245, DW_AT_name("enb"), DW_AT_symbol_name("_enb")
	.dwattr DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$245, DW_AT_accessibility(DW_ACCESS_public)
DW$246	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$246, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$246, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$29


DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_name("tag_timers")
	.dwattr DW$T$32, DW_AT_byte_size(0x4c)
DW$247	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$247, DW_AT_name("update"), DW_AT_symbol_name("_update")
	.dwattr DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$247, DW_AT_accessibility(DW_ACCESS_public)
DW$248	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$248, DW_AT_name("general"), DW_AT_symbol_name("_general")
	.dwattr DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$248, DW_AT_accessibility(DW_ACCESS_public)
DW$249	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$249, DW_AT_name("rxcharTimeout"), DW_AT_symbol_name("_rxcharTimeout")
	.dwattr DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$249, DW_AT_accessibility(DW_ACCESS_public)
DW$250	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$250, DW_AT_name("wiorxtimeout"), DW_AT_symbol_name("_wiorxtimeout")
	.dwattr DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$250, DW_AT_accessibility(DW_ACCESS_public)
DW$251	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$251, DW_AT_name("wiomasterrxtimeout"), DW_AT_symbol_name("_wiomasterrxtimeout")
	.dwattr DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$251, DW_AT_accessibility(DW_ACCESS_public)
DW$252	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$252, DW_AT_name("masterrxtimeout"), DW_AT_symbol_name("_masterrxtimeout")
	.dwattr DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$252, DW_AT_accessibility(DW_ACCESS_public)
DW$253	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$253, DW_AT_name("slaverxtimeout"), DW_AT_symbol_name("_slaverxtimeout")
	.dwattr DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$253, DW_AT_accessibility(DW_ACCESS_public)
DW$254	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$254, DW_AT_name("sectick"), DW_AT_symbol_name("_sectick")
	.dwattr DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$254, DW_AT_accessibility(DW_ACCESS_public)
DW$255	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$255, DW_AT_name("ledflash"), DW_AT_symbol_name("_ledflash")
	.dwattr DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$255, DW_AT_accessibility(DW_ACCESS_public)
DW$256	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$256, DW_AT_name("prtsettle"), DW_AT_symbol_name("_prtsettle")
	.dwattr DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$256, DW_AT_accessibility(DW_ACCESS_public)
DW$257	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$257, DW_AT_name("chantimeout"), DW_AT_symbol_name("_chantimeout")
	.dwattr DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$257, DW_AT_accessibility(DW_ACCESS_public)
DW$258	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$258, DW_AT_name("chanwait"), DW_AT_symbol_name("_chanwait")
	.dwattr DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$258, DW_AT_accessibility(DW_ACCESS_public)
DW$259	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$259, DW_AT_name("pcrxtimeout"), DW_AT_symbol_name("_pcrxtimeout")
	.dwattr DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$259, DW_AT_accessibility(DW_ACCESS_public)
DW$260	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$260, DW_AT_name("pctxtimeout"), DW_AT_symbol_name("_pctxtimeout")
	.dwattr DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$260, DW_AT_accessibility(DW_ACCESS_public)
DW$261	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$261, DW_AT_name("spistatus"), DW_AT_symbol_name("_spistatus")
	.dwattr DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$261, DW_AT_accessibility(DW_ACCESS_public)
DW$262	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$262, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$262, DW_AT_accessibility(DW_ACCESS_public)
DW$263	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$263, DW_AT_name("slaverqst"), DW_AT_symbol_name("_slaverqst")
	.dwattr DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$263, DW_AT_accessibility(DW_ACCESS_public)
DW$264	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$264, DW_AT_name("mastermodebutton"), DW_AT_symbol_name("_mastermodebutton")
	.dwattr DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$264, DW_AT_accessibility(DW_ACCESS_public)
DW$265	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$265, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$265, DW_AT_accessibility(DW_ACCESS_public)
DW$266	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$266, DW_AT_name("calibrate"), DW_AT_symbol_name("_calibrate")
	.dwattr DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$266, DW_AT_accessibility(DW_ACCESS_public)
DW$267	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$267, DW_AT_name("calibrate2"), DW_AT_symbol_name("_calibrate2")
	.dwattr DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$267, DW_AT_accessibility(DW_ACCESS_public)
DW$268	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$268, DW_AT_name("alarmreflash"), DW_AT_symbol_name("_alarmreflash")
	.dwattr DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$268, DW_AT_accessibility(DW_ACCESS_public)
DW$269	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$269, DW_AT_name("slowdownreflash"), DW_AT_symbol_name("_slowdownreflash")
	.dwattr DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr DW$269, DW_AT_accessibility(DW_ACCESS_public)
DW$270	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$270, DW_AT_name("wiorqst"), DW_AT_symbol_name("_wiorqst")
	.dwattr DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$270, DW_AT_accessibility(DW_ACCESS_public)
DW$271	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$271, DW_AT_name("rpmtimeout"), DW_AT_symbol_name("_rpmtimeout")
	.dwattr DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr DW$271, DW_AT_accessibility(DW_ACCESS_public)
DW$272	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$272, DW_AT_name("analogoor"), DW_AT_symbol_name("_analogoor")
	.dwattr DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$272, DW_AT_accessibility(DW_ACCESS_public)
DW$273	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$273, DW_AT_name("motioncal"), DW_AT_symbol_name("_motioncal")
	.dwattr DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr DW$273, DW_AT_accessibility(DW_ACCESS_public)
DW$274	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$274, DW_AT_name("framcheck"), DW_AT_symbol_name("_framcheck")
	.dwattr DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$274, DW_AT_accessibility(DW_ACCESS_public)
DW$275	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$275, DW_AT_name("pcmodbus"), DW_AT_symbol_name("_pcmodbus")
	.dwattr DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr DW$275, DW_AT_accessibility(DW_ACCESS_public)
DW$276	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$276, DW_AT_name("statusreflash"), DW_AT_symbol_name("_statusreflash")
	.dwattr DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$276, DW_AT_accessibility(DW_ACCESS_public)
DW$277	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$277, DW_AT_name("prewarn"), DW_AT_symbol_name("_prewarn")
	.dwattr DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$277, DW_AT_accessibility(DW_ACCESS_public)
DW$278	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$278, DW_AT_name("clocktofram"), DW_AT_symbol_name("_clocktofram")
	.dwattr DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr DW$278, DW_AT_accessibility(DW_ACCESS_public)
DW$279	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$279, DW_AT_name("debugrapidfast"), DW_AT_symbol_name("_debugrapidfast")
	.dwattr DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x3f]
	.dwattr DW$279, DW_AT_accessibility(DW_ACCESS_public)
DW$280	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$280, DW_AT_name("debugupdate"), DW_AT_symbol_name("_debugupdate")
	.dwattr DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$280, DW_AT_accessibility(DW_ACCESS_public)
DW$281	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$281, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr DW$281, DW_AT_accessibility(DW_ACCESS_public)
DW$282	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$282, DW_AT_name("startup"), DW_AT_symbol_name("_startup")
	.dwattr DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr DW$282, DW_AT_accessibility(DW_ACCESS_public)
DW$283	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$283, DW_AT_name("analogsettle"), DW_AT_symbol_name("_analogsettle")
	.dwattr DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr DW$283, DW_AT_accessibility(DW_ACCESS_public)
DW$284	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$284, DW_AT_name("reprogram"), DW_AT_symbol_name("_reprogram")
	.dwattr DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr DW$284, DW_AT_accessibility(DW_ACCESS_public)
DW$285	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$285, DW_AT_name("reprogramtimeout"), DW_AT_symbol_name("_reprogramtimeout")
	.dwattr DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr DW$285, DW_AT_accessibility(DW_ACCESS_public)
DW$286	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$286, DW_AT_name("dcmodestayalive"), DW_AT_symbol_name("_dcmodestayalive")
	.dwattr DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$286, DW_AT_accessibility(DW_ACCESS_public)
DW$287	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$287, DW_AT_name("biteventchange"), DW_AT_symbol_name("_biteventchange")
	.dwattr DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr DW$287, DW_AT_accessibility(DW_ACCESS_public)
DW$288	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$288, DW_AT_name("iSensorReplace"), DW_AT_symbol_name("_iSensorReplace")
	.dwattr DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr DW$288, DW_AT_accessibility(DW_ACCESS_public)
DW$289	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$289, DW_AT_name("deltarpm15Delay"), DW_AT_symbol_name("_deltarpm15Delay")
	.dwattr DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr DW$289, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$33, DW_AT_byte_size(0x01)
DW$290	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$290, DW_AT_name("newval"), DW_AT_symbol_name("_newval")
	.dwattr DW$290, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$290, DW_AT_accessibility(DW_ACCESS_public)
DW$291	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$291, DW_AT_name("calmode"), DW_AT_symbol_name("_calmode")
	.dwattr DW$291, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$291, DW_AT_accessibility(DW_ACCESS_public)
DW$292	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$292, DW_AT_name("startcal"), DW_AT_symbol_name("_startcal")
	.dwattr DW$292, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$292, DW_AT_accessibility(DW_ACCESS_public)
DW$293	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$293, DW_AT_name("newvalspu2"), DW_AT_symbol_name("_newvalspu2")
	.dwattr DW$293, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$293, DW_AT_accessibility(DW_ACCESS_public)
DW$294	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$294, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$294, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$294, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$34, DW_AT_byte_size(0x01)
DW$295	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$295, DW_AT_name("slowdowncntrl"), DW_AT_symbol_name("_slowdowncntrl")
	.dwattr DW$295, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$295, DW_AT_accessibility(DW_ACCESS_public)
DW$296	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$296, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$296, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0f)
	.dwattr DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$296, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34


DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$36, DW_AT_byte_size(0x01)
DW$297	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$297, DW_AT_name("inputtap"), DW_AT_symbol_name("_inputtap")
	.dwattr DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$297, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$36


DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$37, DW_AT_byte_size(0x01)
DW$298	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$298, DW_AT_name("bitmap"), DW_AT_symbol_name("_bitmap")
	.dwattr DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$298, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$37


DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_byte_size(0x01)
DW$299	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$299, DW_AT_name("graphvalue"), DW_AT_symbol_name("_graphvalue")
	.dwattr DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$299, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38


DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$39, DW_AT_byte_size(0x03)
DW$300	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$300, DW_AT_name("chanlowthreshold"), DW_AT_symbol_name("_chanlowthreshold")
	.dwattr DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$300, DW_AT_accessibility(DW_ACCESS_public)
DW$301	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$301, DW_AT_name("chanhighthreshold"), DW_AT_symbol_name("_chanhighthreshold")
	.dwattr DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$301, DW_AT_accessibility(DW_ACCESS_public)
DW$302	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$302, DW_AT_name("sensorscalingfactor"), DW_AT_symbol_name("_sensorscalingfactor")
	.dwattr DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$302, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39


DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$40, DW_AT_byte_size(0x02)
DW$303	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$303, DW_AT_name("shortlrate"), DW_AT_symbol_name("_shortlrate")
	.dwattr DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$303, DW_AT_accessibility(DW_ACCESS_public)
DW$304	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$304, DW_AT_name("longlrate"), DW_AT_symbol_name("_longlrate")
	.dwattr DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$304, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40


DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$41, DW_AT_byte_size(0x10)
DW$305	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$305, DW_AT_name("wiorequest"), DW_AT_symbol_name("_wiorequest")
	.dwattr DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$305, DW_AT_accessibility(DW_ACCESS_public)
DW$306	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$306, DW_AT_name("wiocancelled"), DW_AT_symbol_name("_wiocancelled")
	.dwattr DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$306, DW_AT_accessibility(DW_ACCESS_public)
DW$307	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$307, DW_AT_name("wioreceived"), DW_AT_symbol_name("_wioreceived")
	.dwattr DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$307, DW_AT_accessibility(DW_ACCESS_public)
DW$308	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$308, DW_AT_name("slaverequest"), DW_AT_symbol_name("_slaverequest")
	.dwattr DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$308, DW_AT_accessibility(DW_ACCESS_public)
DW$309	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$309, DW_AT_name("slavereceived"), DW_AT_symbol_name("_slavereceived")
	.dwattr DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$309, DW_AT_accessibility(DW_ACCESS_public)
DW$310	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$310, DW_AT_name("slaveretry"), DW_AT_symbol_name("_slaveretry")
	.dwattr DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$310, DW_AT_accessibility(DW_ACCESS_public)
DW$311	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$311, DW_AT_name("pcrequest"), DW_AT_symbol_name("_pcrequest")
	.dwattr DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$311, DW_AT_accessibility(DW_ACCESS_public)
DW$312	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$312, DW_AT_name("pcreqtimeout"), DW_AT_symbol_name("_pcreqtimeout")
	.dwattr DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$312, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$41


DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$47, DW_AT_byte_size(0x08)
DW$313	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$313, DW_AT_name("programgo"), DW_AT_symbol_name("_programgo")
	.dwattr DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$313, DW_AT_accessibility(DW_ACCESS_public)
DW$314	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$314, DW_AT_name("status"), DW_AT_symbol_name("_status")
	.dwattr DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$314, DW_AT_accessibility(DW_ACCESS_public)
DW$315	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$315, DW_AT_name("erase"), DW_AT_symbol_name("_erase")
	.dwattr DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$315, DW_AT_accessibility(DW_ACCESS_public)
DW$316	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$316, DW_AT_name("address"), DW_AT_symbol_name("_address")
	.dwattr DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$316, DW_AT_accessibility(DW_ACCESS_public)
DW$317	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$317, DW_AT_name("size"), DW_AT_symbol_name("_size")
	.dwattr DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$317, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$47


DW$T$20	.dwtag  DW_TAG_union_type
	.dwattr DW$T$20, DW_AT_byte_size(0x01)
DW$318	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$318, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$318, DW_AT_accessibility(DW_ACCESS_public)
DW$319	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$319, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$319, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$23	.dwtag  DW_TAG_union_type
	.dwattr DW$T$23, DW_AT_byte_size(0x01)
DW$320	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$320, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$320, DW_AT_accessibility(DW_ACCESS_public)
DW$321	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$321, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$321, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$19, DW_AT_byte_size(0x01)
DW$322	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$322, DW_AT_name("anain_select1"), DW_AT_symbol_name("_anain_select1")
	.dwattr DW$322, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$322, DW_AT_accessibility(DW_ACCESS_public)
DW$323	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$323, DW_AT_name("anain_select2"), DW_AT_symbol_name("_anain_select2")
	.dwattr DW$323, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$323, DW_AT_accessibility(DW_ACCESS_public)
DW$324	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$324, DW_AT_name("anain_select3"), DW_AT_symbol_name("_anain_select3")
	.dwattr DW$324, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$324, DW_AT_accessibility(DW_ACCESS_public)
DW$325	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$325, DW_AT_name("program_cs"), DW_AT_symbol_name("_program_cs")
	.dwattr DW$325, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$325, DW_AT_accessibility(DW_ACCESS_public)
DW$326	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$326, DW_AT_name("com_select"), DW_AT_symbol_name("_com_select")
	.dwattr DW$326, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$326, DW_AT_accessibility(DW_ACCESS_public)
DW$327	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$327, DW_AT_name("s1"), DW_AT_symbol_name("_s1")
	.dwattr DW$327, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$327, DW_AT_accessibility(DW_ACCESS_public)
DW$328	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$328, DW_AT_name("s2"), DW_AT_symbol_name("_s2")
	.dwattr DW$328, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$328, DW_AT_accessibility(DW_ACCESS_public)
DW$329	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$329, DW_AT_name("s3"), DW_AT_symbol_name("_s3")
	.dwattr DW$329, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$329, DW_AT_accessibility(DW_ACCESS_public)
DW$330	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$330, DW_AT_name("s4"), DW_AT_symbol_name("_s4")
	.dwattr DW$330, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$330, DW_AT_accessibility(DW_ACCESS_public)
DW$331	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$331, DW_AT_name("s5"), DW_AT_symbol_name("_s5")
	.dwattr DW$331, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$331, DW_AT_accessibility(DW_ACCESS_public)
DW$332	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$332, DW_AT_name("s6"), DW_AT_symbol_name("_s6")
	.dwattr DW$332, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$332, DW_AT_accessibility(DW_ACCESS_public)
DW$333	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$333, DW_AT_name("s7"), DW_AT_symbol_name("_s7")
	.dwattr DW$333, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$333, DW_AT_accessibility(DW_ACCESS_public)
DW$334	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$334, DW_AT_name("s8"), DW_AT_symbol_name("_s8")
	.dwattr DW$334, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$334, DW_AT_accessibility(DW_ACCESS_public)
DW$335	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$335, DW_AT_name("s9"), DW_AT_symbol_name("_s9")
	.dwattr DW$335, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$335, DW_AT_accessibility(DW_ACCESS_public)
DW$336	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$336, DW_AT_name("s10"), DW_AT_symbol_name("_s10")
	.dwattr DW$336, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$336, DW_AT_accessibility(DW_ACCESS_public)
DW$337	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$337, DW_AT_name("s11"), DW_AT_symbol_name("_s11")
	.dwattr DW$337, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$337, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$19


DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_byte_size(0x01)
DW$338	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$338, DW_AT_name("modeswitch"), DW_AT_symbol_name("_modeswitch")
	.dwattr DW$338, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$338, DW_AT_accessibility(DW_ACCESS_public)
DW$339	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$339, DW_AT_name("led1"), DW_AT_symbol_name("_led1")
	.dwattr DW$339, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$339, DW_AT_accessibility(DW_ACCESS_public)
DW$340	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$340, DW_AT_name("bit2"), DW_AT_symbol_name("_bit2")
	.dwattr DW$340, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$340, DW_AT_accessibility(DW_ACCESS_public)
DW$341	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$341, DW_AT_name("bit3"), DW_AT_symbol_name("_bit3")
	.dwattr DW$341, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$341, DW_AT_accessibility(DW_ACCESS_public)
DW$342	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$342, DW_AT_name("bit4"), DW_AT_symbol_name("_bit4")
	.dwattr DW$342, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$342, DW_AT_accessibility(DW_ACCESS_public)
DW$343	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$343, DW_AT_name("ccselect1"), DW_AT_symbol_name("_ccselect1")
	.dwattr DW$343, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$343, DW_AT_accessibility(DW_ACCESS_public)
DW$344	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$344, DW_AT_name("ccselect2"), DW_AT_symbol_name("_ccselect2")
	.dwattr DW$344, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$344, DW_AT_accessibility(DW_ACCESS_public)
DW$345	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$345, DW_AT_name("bit7"), DW_AT_symbol_name("_bit7")
	.dwattr DW$345, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$345, DW_AT_accessibility(DW_ACCESS_public)
DW$346	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$346, DW_AT_name("bit8"), DW_AT_symbol_name("_bit8")
	.dwattr DW$346, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$346, DW_AT_accessibility(DW_ACCESS_public)
DW$347	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$347, DW_AT_name("bit9"), DW_AT_symbol_name("_bit9")
	.dwattr DW$347, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$347, DW_AT_accessibility(DW_ACCESS_public)
DW$348	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$348, DW_AT_name("bit10"), DW_AT_symbol_name("_bit10")
	.dwattr DW$348, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$348, DW_AT_accessibility(DW_ACCESS_public)
DW$349	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$349, DW_AT_name("bit11"), DW_AT_symbol_name("_bit11")
	.dwattr DW$349, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$349, DW_AT_accessibility(DW_ACCESS_public)
DW$350	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$350, DW_AT_name("bit12"), DW_AT_symbol_name("_bit12")
	.dwattr DW$350, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$350, DW_AT_accessibility(DW_ACCESS_public)
DW$351	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$351, DW_AT_name("bit13"), DW_AT_symbol_name("_bit13")
	.dwattr DW$351, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$351, DW_AT_accessibility(DW_ACCESS_public)
DW$352	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$352, DW_AT_name("bit14"), DW_AT_symbol_name("_bit14")
	.dwattr DW$352, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$352, DW_AT_accessibility(DW_ACCESS_public)
DW$353	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$353, DW_AT_name("bit15"), DW_AT_symbol_name("_bit15")
	.dwattr DW$353, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$353, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


	.dwattr DW$90, DW_AT_external(0x01)
	.dwattr DW$90, DW_AT_type(*DW$T$11)
	.dwattr DW$81, DW_AT_external(0x01)
	.dwattr DW$89, DW_AT_external(0x01)
	.dwattr DW$89, DW_AT_type(*DW$T$11)
	.dwattr DW$100, DW_AT_external(0x01)
	.dwattr DW$80, DW_AT_external(0x01)
	.dwattr DW$51, DW_AT_external(0x01)
	.dwattr DW$47, DW_AT_external(0x01)
	.dwattr DW$97, DW_AT_external(0x01)
	.dwattr DW$39, DW_AT_external(0x01)
	.dwattr DW$91, DW_AT_external(0x01)
	.dwattr DW$58, DW_AT_external(0x01)
	.dwattr DW$58, DW_AT_type(*DW$T$10)
	.dwattr DW$65, DW_AT_external(0x01)
	.dwattr DW$37, DW_AT_external(0x01)
	.dwattr DW$38, DW_AT_external(0x01)
	.dwattr DW$96, DW_AT_external(0x01)
	.dwattr DW$57, DW_AT_external(0x01)
	.dwattr DW$107, DW_AT_external(0x01)
	.dwattr DW$56, DW_AT_external(0x01)
	.dwattr DW$44, DW_AT_external(0x01)
	.dwattr DW$55, DW_AT_external(0x01)
	.dwattr DW$88, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$354	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$354, DW_AT_location[DW_OP_reg0]
DW$355	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$355, DW_AT_location[DW_OP_reg1]
DW$356	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$356, DW_AT_location[DW_OP_reg2]
DW$357	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$357, DW_AT_location[DW_OP_reg3]
DW$358	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$358, DW_AT_location[DW_OP_reg4]
DW$359	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$359, DW_AT_location[DW_OP_reg5]
DW$360	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$360, DW_AT_location[DW_OP_reg6]
DW$361	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$361, DW_AT_location[DW_OP_reg7]
DW$362	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$362, DW_AT_location[DW_OP_reg8]
DW$363	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$363, DW_AT_location[DW_OP_reg9]
DW$364	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$364, DW_AT_location[DW_OP_reg10]
DW$365	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$365, DW_AT_location[DW_OP_reg11]
DW$366	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$366, DW_AT_location[DW_OP_reg12]
DW$367	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$367, DW_AT_location[DW_OP_reg13]
DW$368	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$368, DW_AT_location[DW_OP_reg14]
DW$369	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$369, DW_AT_location[DW_OP_reg15]
DW$370	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$370, DW_AT_location[DW_OP_reg16]
DW$371	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$371, DW_AT_location[DW_OP_reg17]
DW$372	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$372, DW_AT_location[DW_OP_reg18]
DW$373	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$373, DW_AT_location[DW_OP_reg19]
DW$374	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$374, DW_AT_location[DW_OP_reg20]
DW$375	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$375, DW_AT_location[DW_OP_reg21]
DW$376	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$376, DW_AT_location[DW_OP_reg22]
DW$377	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$377, DW_AT_location[DW_OP_reg23]
DW$378	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$378, DW_AT_location[DW_OP_reg24]
DW$379	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$379, DW_AT_location[DW_OP_reg25]
DW$380	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$380, DW_AT_location[DW_OP_reg26]
DW$381	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$381, DW_AT_location[DW_OP_reg27]
DW$382	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$382, DW_AT_location[DW_OP_reg28]
DW$383	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$383, DW_AT_location[DW_OP_reg29]
DW$384	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$384, DW_AT_location[DW_OP_reg30]
DW$385	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$385, DW_AT_location[DW_OP_reg31]
DW$386	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$386, DW_AT_location[DW_OP_regx 0x20]
DW$387	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$387, DW_AT_location[DW_OP_regx 0x21]
DW$388	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$388, DW_AT_location[DW_OP_regx 0x22]
DW$389	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$389, DW_AT_location[DW_OP_regx 0x23]
DW$390	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$390, DW_AT_location[DW_OP_regx 0x24]
DW$391	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$391, DW_AT_location[DW_OP_regx 0x25]
DW$392	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$392, DW_AT_location[DW_OP_regx 0x26]
DW$393	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$393, DW_AT_location[DW_OP_regx 0x27]
DW$394	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$394, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

