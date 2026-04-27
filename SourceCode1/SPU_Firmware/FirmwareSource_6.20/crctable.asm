;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Thu Aug 18 12:16:10 2016                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("crctable.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)
	.global	_CRCHiTbl
	.sect	".econst"
	.align	1
_CRCHiTbl:
	.field  	0,16			; _CRCHiTbl[0] @ 0
	.field  	193,16			; _CRCHiTbl[1] @ 16
	.field  	129,16			; _CRCHiTbl[2] @ 32
	.field  	64,16			; _CRCHiTbl[3] @ 48
	.field  	1,16			; _CRCHiTbl[4] @ 64
	.field  	192,16			; _CRCHiTbl[5] @ 80
	.field  	128,16			; _CRCHiTbl[6] @ 96
	.field  	65,16			; _CRCHiTbl[7] @ 112
	.field  	1,16			; _CRCHiTbl[8] @ 128
	.field  	192,16			; _CRCHiTbl[9] @ 144
	.field  	128,16			; _CRCHiTbl[10] @ 160
	.field  	65,16			; _CRCHiTbl[11] @ 176
	.field  	0,16			; _CRCHiTbl[12] @ 192
	.field  	193,16			; _CRCHiTbl[13] @ 208
	.field  	129,16			; _CRCHiTbl[14] @ 224
	.field  	64,16			; _CRCHiTbl[15] @ 240
	.field  	1,16			; _CRCHiTbl[16] @ 256
	.field  	192,16			; _CRCHiTbl[17] @ 272
	.field  	128,16			; _CRCHiTbl[18] @ 288
	.field  	65,16			; _CRCHiTbl[19] @ 304
	.field  	0,16			; _CRCHiTbl[20] @ 320
	.field  	193,16			; _CRCHiTbl[21] @ 336
	.field  	129,16			; _CRCHiTbl[22] @ 352
	.field  	64,16			; _CRCHiTbl[23] @ 368
	.field  	0,16			; _CRCHiTbl[24] @ 384
	.field  	193,16			; _CRCHiTbl[25] @ 400
	.field  	129,16			; _CRCHiTbl[26] @ 416
	.field  	64,16			; _CRCHiTbl[27] @ 432
	.field  	1,16			; _CRCHiTbl[28] @ 448
	.field  	192,16			; _CRCHiTbl[29] @ 464
	.field  	128,16			; _CRCHiTbl[30] @ 480
	.field  	65,16			; _CRCHiTbl[31] @ 496
	.field  	1,16			; _CRCHiTbl[32] @ 512
	.field  	192,16			; _CRCHiTbl[33] @ 528
	.field  	128,16			; _CRCHiTbl[34] @ 544
	.field  	65,16			; _CRCHiTbl[35] @ 560
	.field  	0,16			; _CRCHiTbl[36] @ 576
	.field  	193,16			; _CRCHiTbl[37] @ 592
	.field  	129,16			; _CRCHiTbl[38] @ 608
	.field  	64,16			; _CRCHiTbl[39] @ 624
	.field  	0,16			; _CRCHiTbl[40] @ 640
	.field  	193,16			; _CRCHiTbl[41] @ 656
	.field  	129,16			; _CRCHiTbl[42] @ 672
	.field  	64,16			; _CRCHiTbl[43] @ 688
	.field  	1,16			; _CRCHiTbl[44] @ 704
	.field  	192,16			; _CRCHiTbl[45] @ 720
	.field  	128,16			; _CRCHiTbl[46] @ 736
	.field  	65,16			; _CRCHiTbl[47] @ 752
	.field  	0,16			; _CRCHiTbl[48] @ 768
	.field  	193,16			; _CRCHiTbl[49] @ 784
	.field  	129,16			; _CRCHiTbl[50] @ 800
	.field  	64,16			; _CRCHiTbl[51] @ 816
	.field  	1,16			; _CRCHiTbl[52] @ 832
	.field  	192,16			; _CRCHiTbl[53] @ 848
	.field  	128,16			; _CRCHiTbl[54] @ 864
	.field  	65,16			; _CRCHiTbl[55] @ 880
	.field  	1,16			; _CRCHiTbl[56] @ 896
	.field  	192,16			; _CRCHiTbl[57] @ 912
	.field  	128,16			; _CRCHiTbl[58] @ 928
	.field  	65,16			; _CRCHiTbl[59] @ 944
	.field  	0,16			; _CRCHiTbl[60] @ 960
	.field  	193,16			; _CRCHiTbl[61] @ 976
	.field  	129,16			; _CRCHiTbl[62] @ 992
	.field  	64,16			; _CRCHiTbl[63] @ 1008
	.field  	1,16			; _CRCHiTbl[64] @ 1024
	.field  	192,16			; _CRCHiTbl[65] @ 1040
	.field  	128,16			; _CRCHiTbl[66] @ 1056
	.field  	65,16			; _CRCHiTbl[67] @ 1072
	.field  	0,16			; _CRCHiTbl[68] @ 1088
	.field  	193,16			; _CRCHiTbl[69] @ 1104
	.field  	129,16			; _CRCHiTbl[70] @ 1120
	.field  	64,16			; _CRCHiTbl[71] @ 1136
	.field  	0,16			; _CRCHiTbl[72] @ 1152
	.field  	193,16			; _CRCHiTbl[73] @ 1168
	.field  	129,16			; _CRCHiTbl[74] @ 1184
	.field  	64,16			; _CRCHiTbl[75] @ 1200
	.field  	1,16			; _CRCHiTbl[76] @ 1216
	.field  	192,16			; _CRCHiTbl[77] @ 1232
	.field  	128,16			; _CRCHiTbl[78] @ 1248
	.field  	65,16			; _CRCHiTbl[79] @ 1264
	.field  	0,16			; _CRCHiTbl[80] @ 1280
	.field  	193,16			; _CRCHiTbl[81] @ 1296
	.field  	129,16			; _CRCHiTbl[82] @ 1312
	.field  	64,16			; _CRCHiTbl[83] @ 1328
	.field  	1,16			; _CRCHiTbl[84] @ 1344
	.field  	192,16			; _CRCHiTbl[85] @ 1360
	.field  	128,16			; _CRCHiTbl[86] @ 1376
	.field  	65,16			; _CRCHiTbl[87] @ 1392
	.field  	1,16			; _CRCHiTbl[88] @ 1408
	.field  	192,16			; _CRCHiTbl[89] @ 1424
	.field  	128,16			; _CRCHiTbl[90] @ 1440
	.field  	65,16			; _CRCHiTbl[91] @ 1456
	.field  	0,16			; _CRCHiTbl[92] @ 1472
	.field  	193,16			; _CRCHiTbl[93] @ 1488
	.field  	129,16			; _CRCHiTbl[94] @ 1504
	.field  	64,16			; _CRCHiTbl[95] @ 1520
	.field  	0,16			; _CRCHiTbl[96] @ 1536
	.field  	193,16			; _CRCHiTbl[97] @ 1552
	.field  	129,16			; _CRCHiTbl[98] @ 1568
	.field  	64,16			; _CRCHiTbl[99] @ 1584
	.field  	1,16			; _CRCHiTbl[100] @ 1600
	.field  	192,16			; _CRCHiTbl[101] @ 1616
	.field  	128,16			; _CRCHiTbl[102] @ 1632
	.field  	65,16			; _CRCHiTbl[103] @ 1648
	.field  	1,16			; _CRCHiTbl[104] @ 1664
	.field  	192,16			; _CRCHiTbl[105] @ 1680
	.field  	128,16			; _CRCHiTbl[106] @ 1696
	.field  	65,16			; _CRCHiTbl[107] @ 1712
	.field  	0,16			; _CRCHiTbl[108] @ 1728
	.field  	193,16			; _CRCHiTbl[109] @ 1744
	.field  	129,16			; _CRCHiTbl[110] @ 1760
	.field  	64,16			; _CRCHiTbl[111] @ 1776
	.field  	1,16			; _CRCHiTbl[112] @ 1792
	.field  	192,16			; _CRCHiTbl[113] @ 1808
	.field  	128,16			; _CRCHiTbl[114] @ 1824
	.field  	65,16			; _CRCHiTbl[115] @ 1840
	.field  	0,16			; _CRCHiTbl[116] @ 1856
	.field  	193,16			; _CRCHiTbl[117] @ 1872
	.field  	129,16			; _CRCHiTbl[118] @ 1888
	.field  	64,16			; _CRCHiTbl[119] @ 1904
	.field  	0,16			; _CRCHiTbl[120] @ 1920
	.field  	193,16			; _CRCHiTbl[121] @ 1936
	.field  	129,16			; _CRCHiTbl[122] @ 1952
	.field  	64,16			; _CRCHiTbl[123] @ 1968
	.field  	1,16			; _CRCHiTbl[124] @ 1984
	.field  	192,16			; _CRCHiTbl[125] @ 2000
	.field  	128,16			; _CRCHiTbl[126] @ 2016
	.field  	65,16			; _CRCHiTbl[127] @ 2032
	.field  	1,16			; _CRCHiTbl[128] @ 2048
	.field  	192,16			; _CRCHiTbl[129] @ 2064
	.field  	128,16			; _CRCHiTbl[130] @ 2080
	.field  	65,16			; _CRCHiTbl[131] @ 2096
	.field  	0,16			; _CRCHiTbl[132] @ 2112
	.field  	193,16			; _CRCHiTbl[133] @ 2128
	.field  	129,16			; _CRCHiTbl[134] @ 2144
	.field  	64,16			; _CRCHiTbl[135] @ 2160
	.field  	0,16			; _CRCHiTbl[136] @ 2176
	.field  	193,16			; _CRCHiTbl[137] @ 2192
	.field  	129,16			; _CRCHiTbl[138] @ 2208
	.field  	64,16			; _CRCHiTbl[139] @ 2224
	.field  	1,16			; _CRCHiTbl[140] @ 2240
	.field  	192,16			; _CRCHiTbl[141] @ 2256
	.field  	128,16			; _CRCHiTbl[142] @ 2272
	.field  	65,16			; _CRCHiTbl[143] @ 2288
	.field  	0,16			; _CRCHiTbl[144] @ 2304
	.field  	193,16			; _CRCHiTbl[145] @ 2320
	.field  	129,16			; _CRCHiTbl[146] @ 2336
	.field  	64,16			; _CRCHiTbl[147] @ 2352
	.field  	1,16			; _CRCHiTbl[148] @ 2368
	.field  	192,16			; _CRCHiTbl[149] @ 2384
	.field  	128,16			; _CRCHiTbl[150] @ 2400
	.field  	65,16			; _CRCHiTbl[151] @ 2416
	.field  	1,16			; _CRCHiTbl[152] @ 2432
	.field  	192,16			; _CRCHiTbl[153] @ 2448
	.field  	128,16			; _CRCHiTbl[154] @ 2464
	.field  	65,16			; _CRCHiTbl[155] @ 2480
	.field  	0,16			; _CRCHiTbl[156] @ 2496
	.field  	193,16			; _CRCHiTbl[157] @ 2512
	.field  	129,16			; _CRCHiTbl[158] @ 2528
	.field  	64,16			; _CRCHiTbl[159] @ 2544
	.field  	0,16			; _CRCHiTbl[160] @ 2560
	.field  	193,16			; _CRCHiTbl[161] @ 2576
	.field  	129,16			; _CRCHiTbl[162] @ 2592
	.field  	64,16			; _CRCHiTbl[163] @ 2608
	.field  	1,16			; _CRCHiTbl[164] @ 2624
	.field  	192,16			; _CRCHiTbl[165] @ 2640
	.field  	128,16			; _CRCHiTbl[166] @ 2656
	.field  	65,16			; _CRCHiTbl[167] @ 2672
	.field  	1,16			; _CRCHiTbl[168] @ 2688
	.field  	192,16			; _CRCHiTbl[169] @ 2704
	.field  	128,16			; _CRCHiTbl[170] @ 2720
	.field  	65,16			; _CRCHiTbl[171] @ 2736
	.field  	0,16			; _CRCHiTbl[172] @ 2752
	.field  	193,16			; _CRCHiTbl[173] @ 2768
	.field  	129,16			; _CRCHiTbl[174] @ 2784
	.field  	64,16			; _CRCHiTbl[175] @ 2800
	.field  	1,16			; _CRCHiTbl[176] @ 2816
	.field  	192,16			; _CRCHiTbl[177] @ 2832
	.field  	128,16			; _CRCHiTbl[178] @ 2848
	.field  	65,16			; _CRCHiTbl[179] @ 2864
	.field  	0,16			; _CRCHiTbl[180] @ 2880
	.field  	193,16			; _CRCHiTbl[181] @ 2896
	.field  	129,16			; _CRCHiTbl[182] @ 2912
	.field  	64,16			; _CRCHiTbl[183] @ 2928
	.field  	0,16			; _CRCHiTbl[184] @ 2944
	.field  	193,16			; _CRCHiTbl[185] @ 2960
	.field  	129,16			; _CRCHiTbl[186] @ 2976
	.field  	64,16			; _CRCHiTbl[187] @ 2992
	.field  	1,16			; _CRCHiTbl[188] @ 3008
	.field  	192,16			; _CRCHiTbl[189] @ 3024
	.field  	128,16			; _CRCHiTbl[190] @ 3040
	.field  	65,16			; _CRCHiTbl[191] @ 3056
	.field  	0,16			; _CRCHiTbl[192] @ 3072
	.field  	193,16			; _CRCHiTbl[193] @ 3088
	.field  	129,16			; _CRCHiTbl[194] @ 3104
	.field  	64,16			; _CRCHiTbl[195] @ 3120
	.field  	1,16			; _CRCHiTbl[196] @ 3136
	.field  	192,16			; _CRCHiTbl[197] @ 3152
	.field  	128,16			; _CRCHiTbl[198] @ 3168
	.field  	65,16			; _CRCHiTbl[199] @ 3184
	.field  	1,16			; _CRCHiTbl[200] @ 3200
	.field  	192,16			; _CRCHiTbl[201] @ 3216
	.field  	128,16			; _CRCHiTbl[202] @ 3232
	.field  	65,16			; _CRCHiTbl[203] @ 3248
	.field  	0,16			; _CRCHiTbl[204] @ 3264
	.field  	193,16			; _CRCHiTbl[205] @ 3280
	.field  	129,16			; _CRCHiTbl[206] @ 3296
	.field  	64,16			; _CRCHiTbl[207] @ 3312
	.field  	1,16			; _CRCHiTbl[208] @ 3328
	.field  	192,16			; _CRCHiTbl[209] @ 3344
	.field  	128,16			; _CRCHiTbl[210] @ 3360
	.field  	65,16			; _CRCHiTbl[211] @ 3376
	.field  	0,16			; _CRCHiTbl[212] @ 3392
	.field  	193,16			; _CRCHiTbl[213] @ 3408
	.field  	129,16			; _CRCHiTbl[214] @ 3424
	.field  	64,16			; _CRCHiTbl[215] @ 3440
	.field  	0,16			; _CRCHiTbl[216] @ 3456
	.field  	193,16			; _CRCHiTbl[217] @ 3472
	.field  	129,16			; _CRCHiTbl[218] @ 3488
	.field  	64,16			; _CRCHiTbl[219] @ 3504
	.field  	1,16			; _CRCHiTbl[220] @ 3520
	.field  	192,16			; _CRCHiTbl[221] @ 3536
	.field  	128,16			; _CRCHiTbl[222] @ 3552
	.field  	65,16			; _CRCHiTbl[223] @ 3568
	.field  	1,16			; _CRCHiTbl[224] @ 3584
	.field  	192,16			; _CRCHiTbl[225] @ 3600
	.field  	128,16			; _CRCHiTbl[226] @ 3616
	.field  	65,16			; _CRCHiTbl[227] @ 3632
	.field  	0,16			; _CRCHiTbl[228] @ 3648
	.field  	193,16			; _CRCHiTbl[229] @ 3664
	.field  	129,16			; _CRCHiTbl[230] @ 3680
	.field  	64,16			; _CRCHiTbl[231] @ 3696
	.field  	0,16			; _CRCHiTbl[232] @ 3712
	.field  	193,16			; _CRCHiTbl[233] @ 3728
	.field  	129,16			; _CRCHiTbl[234] @ 3744
	.field  	64,16			; _CRCHiTbl[235] @ 3760
	.field  	1,16			; _CRCHiTbl[236] @ 3776
	.field  	192,16			; _CRCHiTbl[237] @ 3792
	.field  	128,16			; _CRCHiTbl[238] @ 3808
	.field  	65,16			; _CRCHiTbl[239] @ 3824
	.field  	0,16			; _CRCHiTbl[240] @ 3840
	.field  	193,16			; _CRCHiTbl[241] @ 3856
	.field  	129,16			; _CRCHiTbl[242] @ 3872
	.field  	64,16			; _CRCHiTbl[243] @ 3888
	.field  	1,16			; _CRCHiTbl[244] @ 3904
	.field  	192,16			; _CRCHiTbl[245] @ 3920
	.field  	128,16			; _CRCHiTbl[246] @ 3936
	.field  	65,16			; _CRCHiTbl[247] @ 3952
	.field  	1,16			; _CRCHiTbl[248] @ 3968
	.field  	192,16			; _CRCHiTbl[249] @ 3984
	.field  	128,16			; _CRCHiTbl[250] @ 4000
	.field  	65,16			; _CRCHiTbl[251] @ 4016
	.field  	0,16			; _CRCHiTbl[252] @ 4032
	.field  	193,16			; _CRCHiTbl[253] @ 4048
	.field  	129,16			; _CRCHiTbl[254] @ 4064
	.field  	64,16			; _CRCHiTbl[255] @ 4080

DW$1	.dwtag  DW_TAG_variable, DW_AT_name("CRCHiTbl"), DW_AT_symbol_name("_CRCHiTbl")
	.dwattr DW$1, DW_AT_location[DW_OP_addr _CRCHiTbl]
	.dwattr DW$1, DW_AT_type(*DW$T$20)
	.dwattr DW$1, DW_AT_external(0x01)
	.global	_CRCLoTbl
	.sect	".econst"
	.align	1
_CRCLoTbl:
	.field  	0,16			; _CRCLoTbl[0] @ 0
	.field  	192,16			; _CRCLoTbl[1] @ 16
	.field  	193,16			; _CRCLoTbl[2] @ 32
	.field  	1,16			; _CRCLoTbl[3] @ 48
	.field  	195,16			; _CRCLoTbl[4] @ 64
	.field  	3,16			; _CRCLoTbl[5] @ 80
	.field  	2,16			; _CRCLoTbl[6] @ 96
	.field  	194,16			; _CRCLoTbl[7] @ 112
	.field  	198,16			; _CRCLoTbl[8] @ 128
	.field  	6,16			; _CRCLoTbl[9] @ 144
	.field  	7,16			; _CRCLoTbl[10] @ 160
	.field  	199,16			; _CRCLoTbl[11] @ 176
	.field  	5,16			; _CRCLoTbl[12] @ 192
	.field  	197,16			; _CRCLoTbl[13] @ 208
	.field  	196,16			; _CRCLoTbl[14] @ 224
	.field  	4,16			; _CRCLoTbl[15] @ 240
	.field  	204,16			; _CRCLoTbl[16] @ 256
	.field  	12,16			; _CRCLoTbl[17] @ 272
	.field  	13,16			; _CRCLoTbl[18] @ 288
	.field  	205,16			; _CRCLoTbl[19] @ 304
	.field  	15,16			; _CRCLoTbl[20] @ 320
	.field  	207,16			; _CRCLoTbl[21] @ 336
	.field  	206,16			; _CRCLoTbl[22] @ 352
	.field  	14,16			; _CRCLoTbl[23] @ 368
	.field  	10,16			; _CRCLoTbl[24] @ 384
	.field  	202,16			; _CRCLoTbl[25] @ 400
	.field  	203,16			; _CRCLoTbl[26] @ 416
	.field  	11,16			; _CRCLoTbl[27] @ 432
	.field  	201,16			; _CRCLoTbl[28] @ 448
	.field  	9,16			; _CRCLoTbl[29] @ 464
	.field  	8,16			; _CRCLoTbl[30] @ 480
	.field  	200,16			; _CRCLoTbl[31] @ 496
	.field  	216,16			; _CRCLoTbl[32] @ 512
	.field  	24,16			; _CRCLoTbl[33] @ 528
	.field  	25,16			; _CRCLoTbl[34] @ 544
	.field  	217,16			; _CRCLoTbl[35] @ 560
	.field  	27,16			; _CRCLoTbl[36] @ 576
	.field  	219,16			; _CRCLoTbl[37] @ 592
	.field  	218,16			; _CRCLoTbl[38] @ 608
	.field  	26,16			; _CRCLoTbl[39] @ 624
	.field  	30,16			; _CRCLoTbl[40] @ 640
	.field  	222,16			; _CRCLoTbl[41] @ 656
	.field  	223,16			; _CRCLoTbl[42] @ 672
	.field  	31,16			; _CRCLoTbl[43] @ 688
	.field  	221,16			; _CRCLoTbl[44] @ 704
	.field  	29,16			; _CRCLoTbl[45] @ 720
	.field  	28,16			; _CRCLoTbl[46] @ 736
	.field  	220,16			; _CRCLoTbl[47] @ 752
	.field  	20,16			; _CRCLoTbl[48] @ 768
	.field  	212,16			; _CRCLoTbl[49] @ 784
	.field  	213,16			; _CRCLoTbl[50] @ 800
	.field  	21,16			; _CRCLoTbl[51] @ 816
	.field  	215,16			; _CRCLoTbl[52] @ 832
	.field  	23,16			; _CRCLoTbl[53] @ 848
	.field  	22,16			; _CRCLoTbl[54] @ 864
	.field  	214,16			; _CRCLoTbl[55] @ 880
	.field  	210,16			; _CRCLoTbl[56] @ 896
	.field  	18,16			; _CRCLoTbl[57] @ 912
	.field  	19,16			; _CRCLoTbl[58] @ 928
	.field  	211,16			; _CRCLoTbl[59] @ 944
	.field  	17,16			; _CRCLoTbl[60] @ 960
	.field  	209,16			; _CRCLoTbl[61] @ 976
	.field  	208,16			; _CRCLoTbl[62] @ 992
	.field  	16,16			; _CRCLoTbl[63] @ 1008
	.field  	240,16			; _CRCLoTbl[64] @ 1024
	.field  	48,16			; _CRCLoTbl[65] @ 1040
	.field  	49,16			; _CRCLoTbl[66] @ 1056
	.field  	241,16			; _CRCLoTbl[67] @ 1072
	.field  	51,16			; _CRCLoTbl[68] @ 1088
	.field  	243,16			; _CRCLoTbl[69] @ 1104
	.field  	242,16			; _CRCLoTbl[70] @ 1120
	.field  	50,16			; _CRCLoTbl[71] @ 1136
	.field  	54,16			; _CRCLoTbl[72] @ 1152
	.field  	246,16			; _CRCLoTbl[73] @ 1168
	.field  	247,16			; _CRCLoTbl[74] @ 1184
	.field  	55,16			; _CRCLoTbl[75] @ 1200
	.field  	245,16			; _CRCLoTbl[76] @ 1216
	.field  	53,16			; _CRCLoTbl[77] @ 1232
	.field  	52,16			; _CRCLoTbl[78] @ 1248
	.field  	244,16			; _CRCLoTbl[79] @ 1264
	.field  	60,16			; _CRCLoTbl[80] @ 1280
	.field  	252,16			; _CRCLoTbl[81] @ 1296
	.field  	253,16			; _CRCLoTbl[82] @ 1312
	.field  	61,16			; _CRCLoTbl[83] @ 1328
	.field  	255,16			; _CRCLoTbl[84] @ 1344
	.field  	63,16			; _CRCLoTbl[85] @ 1360
	.field  	62,16			; _CRCLoTbl[86] @ 1376
	.field  	254,16			; _CRCLoTbl[87] @ 1392
	.field  	250,16			; _CRCLoTbl[88] @ 1408
	.field  	58,16			; _CRCLoTbl[89] @ 1424
	.field  	59,16			; _CRCLoTbl[90] @ 1440
	.field  	251,16			; _CRCLoTbl[91] @ 1456
	.field  	57,16			; _CRCLoTbl[92] @ 1472
	.field  	249,16			; _CRCLoTbl[93] @ 1488
	.field  	248,16			; _CRCLoTbl[94] @ 1504
	.field  	56,16			; _CRCLoTbl[95] @ 1520
	.field  	40,16			; _CRCLoTbl[96] @ 1536
	.field  	232,16			; _CRCLoTbl[97] @ 1552
	.field  	233,16			; _CRCLoTbl[98] @ 1568
	.field  	41,16			; _CRCLoTbl[99] @ 1584
	.field  	235,16			; _CRCLoTbl[100] @ 1600
	.field  	43,16			; _CRCLoTbl[101] @ 1616
	.field  	42,16			; _CRCLoTbl[102] @ 1632
	.field  	234,16			; _CRCLoTbl[103] @ 1648
	.field  	238,16			; _CRCLoTbl[104] @ 1664
	.field  	46,16			; _CRCLoTbl[105] @ 1680
	.field  	47,16			; _CRCLoTbl[106] @ 1696
	.field  	239,16			; _CRCLoTbl[107] @ 1712
	.field  	45,16			; _CRCLoTbl[108] @ 1728
	.field  	237,16			; _CRCLoTbl[109] @ 1744
	.field  	236,16			; _CRCLoTbl[110] @ 1760
	.field  	44,16			; _CRCLoTbl[111] @ 1776
	.field  	228,16			; _CRCLoTbl[112] @ 1792
	.field  	36,16			; _CRCLoTbl[113] @ 1808
	.field  	37,16			; _CRCLoTbl[114] @ 1824
	.field  	229,16			; _CRCLoTbl[115] @ 1840
	.field  	39,16			; _CRCLoTbl[116] @ 1856
	.field  	231,16			; _CRCLoTbl[117] @ 1872
	.field  	230,16			; _CRCLoTbl[118] @ 1888
	.field  	38,16			; _CRCLoTbl[119] @ 1904
	.field  	34,16			; _CRCLoTbl[120] @ 1920
	.field  	226,16			; _CRCLoTbl[121] @ 1936
	.field  	227,16			; _CRCLoTbl[122] @ 1952
	.field  	35,16			; _CRCLoTbl[123] @ 1968
	.field  	225,16			; _CRCLoTbl[124] @ 1984
	.field  	33,16			; _CRCLoTbl[125] @ 2000
	.field  	32,16			; _CRCLoTbl[126] @ 2016
	.field  	224,16			; _CRCLoTbl[127] @ 2032
	.field  	160,16			; _CRCLoTbl[128] @ 2048
	.field  	96,16			; _CRCLoTbl[129] @ 2064
	.field  	97,16			; _CRCLoTbl[130] @ 2080
	.field  	161,16			; _CRCLoTbl[131] @ 2096
	.field  	99,16			; _CRCLoTbl[132] @ 2112
	.field  	163,16			; _CRCLoTbl[133] @ 2128
	.field  	162,16			; _CRCLoTbl[134] @ 2144
	.field  	98,16			; _CRCLoTbl[135] @ 2160
	.field  	102,16			; _CRCLoTbl[136] @ 2176
	.field  	166,16			; _CRCLoTbl[137] @ 2192
	.field  	167,16			; _CRCLoTbl[138] @ 2208
	.field  	103,16			; _CRCLoTbl[139] @ 2224
	.field  	165,16			; _CRCLoTbl[140] @ 2240
	.field  	101,16			; _CRCLoTbl[141] @ 2256
	.field  	100,16			; _CRCLoTbl[142] @ 2272
	.field  	164,16			; _CRCLoTbl[143] @ 2288
	.field  	108,16			; _CRCLoTbl[144] @ 2304
	.field  	172,16			; _CRCLoTbl[145] @ 2320
	.field  	173,16			; _CRCLoTbl[146] @ 2336
	.field  	109,16			; _CRCLoTbl[147] @ 2352
	.field  	175,16			; _CRCLoTbl[148] @ 2368
	.field  	111,16			; _CRCLoTbl[149] @ 2384
	.field  	110,16			; _CRCLoTbl[150] @ 2400
	.field  	174,16			; _CRCLoTbl[151] @ 2416
	.field  	170,16			; _CRCLoTbl[152] @ 2432
	.field  	106,16			; _CRCLoTbl[153] @ 2448
	.field  	107,16			; _CRCLoTbl[154] @ 2464
	.field  	171,16			; _CRCLoTbl[155] @ 2480
	.field  	105,16			; _CRCLoTbl[156] @ 2496
	.field  	169,16			; _CRCLoTbl[157] @ 2512
	.field  	168,16			; _CRCLoTbl[158] @ 2528
	.field  	104,16			; _CRCLoTbl[159] @ 2544
	.field  	120,16			; _CRCLoTbl[160] @ 2560
	.field  	184,16			; _CRCLoTbl[161] @ 2576
	.field  	185,16			; _CRCLoTbl[162] @ 2592
	.field  	121,16			; _CRCLoTbl[163] @ 2608
	.field  	187,16			; _CRCLoTbl[164] @ 2624
	.field  	123,16			; _CRCLoTbl[165] @ 2640
	.field  	122,16			; _CRCLoTbl[166] @ 2656
	.field  	186,16			; _CRCLoTbl[167] @ 2672
	.field  	190,16			; _CRCLoTbl[168] @ 2688
	.field  	126,16			; _CRCLoTbl[169] @ 2704
	.field  	127,16			; _CRCLoTbl[170] @ 2720
	.field  	191,16			; _CRCLoTbl[171] @ 2736
	.field  	125,16			; _CRCLoTbl[172] @ 2752
	.field  	189,16			; _CRCLoTbl[173] @ 2768
	.field  	188,16			; _CRCLoTbl[174] @ 2784
	.field  	124,16			; _CRCLoTbl[175] @ 2800
	.field  	180,16			; _CRCLoTbl[176] @ 2816
	.field  	116,16			; _CRCLoTbl[177] @ 2832
	.field  	117,16			; _CRCLoTbl[178] @ 2848
	.field  	181,16			; _CRCLoTbl[179] @ 2864
	.field  	119,16			; _CRCLoTbl[180] @ 2880
	.field  	183,16			; _CRCLoTbl[181] @ 2896
	.field  	182,16			; _CRCLoTbl[182] @ 2912
	.field  	118,16			; _CRCLoTbl[183] @ 2928
	.field  	114,16			; _CRCLoTbl[184] @ 2944
	.field  	178,16			; _CRCLoTbl[185] @ 2960
	.field  	179,16			; _CRCLoTbl[186] @ 2976
	.field  	115,16			; _CRCLoTbl[187] @ 2992
	.field  	177,16			; _CRCLoTbl[188] @ 3008
	.field  	113,16			; _CRCLoTbl[189] @ 3024
	.field  	112,16			; _CRCLoTbl[190] @ 3040
	.field  	176,16			; _CRCLoTbl[191] @ 3056
	.field  	80,16			; _CRCLoTbl[192] @ 3072
	.field  	144,16			; _CRCLoTbl[193] @ 3088
	.field  	145,16			; _CRCLoTbl[194] @ 3104
	.field  	81,16			; _CRCLoTbl[195] @ 3120
	.field  	147,16			; _CRCLoTbl[196] @ 3136
	.field  	83,16			; _CRCLoTbl[197] @ 3152
	.field  	82,16			; _CRCLoTbl[198] @ 3168
	.field  	146,16			; _CRCLoTbl[199] @ 3184
	.field  	150,16			; _CRCLoTbl[200] @ 3200
	.field  	86,16			; _CRCLoTbl[201] @ 3216
	.field  	87,16			; _CRCLoTbl[202] @ 3232
	.field  	151,16			; _CRCLoTbl[203] @ 3248
	.field  	85,16			; _CRCLoTbl[204] @ 3264
	.field  	149,16			; _CRCLoTbl[205] @ 3280
	.field  	148,16			; _CRCLoTbl[206] @ 3296
	.field  	84,16			; _CRCLoTbl[207] @ 3312
	.field  	156,16			; _CRCLoTbl[208] @ 3328
	.field  	92,16			; _CRCLoTbl[209] @ 3344
	.field  	93,16			; _CRCLoTbl[210] @ 3360
	.field  	157,16			; _CRCLoTbl[211] @ 3376
	.field  	95,16			; _CRCLoTbl[212] @ 3392
	.field  	159,16			; _CRCLoTbl[213] @ 3408
	.field  	158,16			; _CRCLoTbl[214] @ 3424
	.field  	94,16			; _CRCLoTbl[215] @ 3440
	.field  	90,16			; _CRCLoTbl[216] @ 3456
	.field  	154,16			; _CRCLoTbl[217] @ 3472
	.field  	155,16			; _CRCLoTbl[218] @ 3488
	.field  	91,16			; _CRCLoTbl[219] @ 3504
	.field  	153,16			; _CRCLoTbl[220] @ 3520
	.field  	89,16			; _CRCLoTbl[221] @ 3536
	.field  	88,16			; _CRCLoTbl[222] @ 3552
	.field  	152,16			; _CRCLoTbl[223] @ 3568
	.field  	136,16			; _CRCLoTbl[224] @ 3584
	.field  	72,16			; _CRCLoTbl[225] @ 3600
	.field  	73,16			; _CRCLoTbl[226] @ 3616
	.field  	137,16			; _CRCLoTbl[227] @ 3632
	.field  	75,16			; _CRCLoTbl[228] @ 3648
	.field  	139,16			; _CRCLoTbl[229] @ 3664
	.field  	138,16			; _CRCLoTbl[230] @ 3680
	.field  	74,16			; _CRCLoTbl[231] @ 3696
	.field  	78,16			; _CRCLoTbl[232] @ 3712
	.field  	142,16			; _CRCLoTbl[233] @ 3728
	.field  	143,16			; _CRCLoTbl[234] @ 3744
	.field  	79,16			; _CRCLoTbl[235] @ 3760
	.field  	141,16			; _CRCLoTbl[236] @ 3776
	.field  	77,16			; _CRCLoTbl[237] @ 3792
	.field  	76,16			; _CRCLoTbl[238] @ 3808
	.field  	140,16			; _CRCLoTbl[239] @ 3824
	.field  	68,16			; _CRCLoTbl[240] @ 3840
	.field  	132,16			; _CRCLoTbl[241] @ 3856
	.field  	133,16			; _CRCLoTbl[242] @ 3872
	.field  	69,16			; _CRCLoTbl[243] @ 3888
	.field  	135,16			; _CRCLoTbl[244] @ 3904
	.field  	71,16			; _CRCLoTbl[245] @ 3920
	.field  	70,16			; _CRCLoTbl[246] @ 3936
	.field  	134,16			; _CRCLoTbl[247] @ 3952
	.field  	130,16			; _CRCLoTbl[248] @ 3968
	.field  	66,16			; _CRCLoTbl[249] @ 3984
	.field  	67,16			; _CRCLoTbl[250] @ 4000
	.field  	131,16			; _CRCLoTbl[251] @ 4016
	.field  	65,16			; _CRCLoTbl[252] @ 4032
	.field  	129,16			; _CRCLoTbl[253] @ 4048
	.field  	128,16			; _CRCLoTbl[254] @ 4064
	.field  	64,16			; _CRCLoTbl[255] @ 4080

DW$2	.dwtag  DW_TAG_variable, DW_AT_name("CRCLoTbl"), DW_AT_symbol_name("_CRCLoTbl")
	.dwattr DW$2, DW_AT_location[DW_OP_addr _CRCLoTbl]
	.dwattr DW$2, DW_AT_type(*DW$T$20)
	.dwattr DW$2, DW_AT_external(0x01)
;	C:\CCStudio_v3.3\C2000\cgtools\bin\opt2000.exe C:\Users\Andrew\AppData\Local\Temp\TI6202 C:\Users\Andrew\AppData\Local\Temp\TI6204 
;	C:\CCStudio_v3.3\C2000\cgtools\bin\ac2000.exe -q -D_INLINE -DLARGE_MODEL -IC:/CCStudio_v3.3/C2000/xdais/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/bios/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/rtdx/include/c2000 -IC:/CCStudio_v3.3/C2000/cgtools/include --version=28 --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\Andrew\AppData\Local\Temp\TI6202 --template_info_file C:\Users\Andrew\AppData\Local\Temp\TI6206 --object_file 

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

DW$T$20	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$20, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$20, DW_AT_byte_size(0x100)
DW$3	.dwtag  DW_TAG_subrange_type
	.dwattr DW$3, DW_AT_upper_bound(0xff)
	.dwendtag DW$T$20

DW$4	.dwtag  DW_TAG_far_type
	.dwattr DW$4, DW_AT_type(*DW$T$11)
DW$T$19	.dwtag  DW_TAG_const_type
	.dwattr DW$T$19, DW_AT_type(*DW$4)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)


;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$5	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$5, DW_AT_location[DW_OP_reg0]
DW$6	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$6, DW_AT_location[DW_OP_reg1]
DW$7	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$7, DW_AT_location[DW_OP_reg2]
DW$8	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$8, DW_AT_location[DW_OP_reg3]
DW$9	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$9, DW_AT_location[DW_OP_reg4]
DW$10	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$10, DW_AT_location[DW_OP_reg5]
DW$11	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$11, DW_AT_location[DW_OP_reg6]
DW$12	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$12, DW_AT_location[DW_OP_reg7]
DW$13	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$13, DW_AT_location[DW_OP_reg8]
DW$14	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$14, DW_AT_location[DW_OP_reg9]
DW$15	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$15, DW_AT_location[DW_OP_reg10]
DW$16	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$16, DW_AT_location[DW_OP_reg11]
DW$17	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$17, DW_AT_location[DW_OP_reg12]
DW$18	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$18, DW_AT_location[DW_OP_reg13]
DW$19	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$19, DW_AT_location[DW_OP_reg14]
DW$20	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$20, DW_AT_location[DW_OP_reg15]
DW$21	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$21, DW_AT_location[DW_OP_reg16]
DW$22	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$22, DW_AT_location[DW_OP_reg17]
DW$23	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$23, DW_AT_location[DW_OP_reg18]
DW$24	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$24, DW_AT_location[DW_OP_reg19]
DW$25	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$25, DW_AT_location[DW_OP_reg20]
DW$26	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$26, DW_AT_location[DW_OP_reg21]
DW$27	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$27, DW_AT_location[DW_OP_reg22]
DW$28	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$28, DW_AT_location[DW_OP_reg23]
DW$29	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$29, DW_AT_location[DW_OP_reg24]
DW$30	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$30, DW_AT_location[DW_OP_reg25]
DW$31	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$31, DW_AT_location[DW_OP_reg26]
DW$32	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$32, DW_AT_location[DW_OP_reg27]
DW$33	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$33, DW_AT_location[DW_OP_reg28]
DW$34	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$34, DW_AT_location[DW_OP_reg29]
DW$35	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$35, DW_AT_location[DW_OP_reg30]
DW$36	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$36, DW_AT_location[DW_OP_reg31]
DW$37	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$37, DW_AT_location[DW_OP_regx 0x20]
DW$38	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$38, DW_AT_location[DW_OP_regx 0x21]
DW$39	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$39, DW_AT_location[DW_OP_regx 0x22]
DW$40	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$40, DW_AT_location[DW_OP_regx 0x23]
DW$41	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$41, DW_AT_location[DW_OP_regx 0x24]
DW$42	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$42, DW_AT_location[DW_OP_regx 0x25]
DW$43	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$43, DW_AT_location[DW_OP_regx 0x26]
DW$44	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$44, DW_AT_location[DW_OP_regx 0x27]
DW$45	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$45, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

