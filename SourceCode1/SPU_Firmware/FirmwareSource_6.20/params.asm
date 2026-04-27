;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Thu Aug 18 12:16:22 2016                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("params.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)
;**************************************************************
;* CINIT RECORDS                                              *
;**************************************************************
	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_PreviousWIOEnabledState$1+0,32
	.field  	65535,16			; _PreviousWIOEnabledState$1 @ 0


DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("sprintf"), DW_AT_symbol_name("_sprintf")
	.dwattr DW$1, DW_AT_type(*DW$T$10)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$66)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$68)
DW$4	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$1


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("strcpy"), DW_AT_symbol_name("_strcpy")
	.dwattr DW$5, DW_AT_type(*DW$T$66)
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$66)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$68)
	.dwendtag DW$5


DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("memset"), DW_AT_symbol_name("_memset")
	.dwattr DW$8, DW_AT_type(*DW$T$3)
	.dwattr DW$8, DW_AT_declaration(0x01)
	.dwattr DW$8, DW_AT_external(0x01)
DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
	.dwendtag DW$8


DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("SlowDownBlipControl"), DW_AT_symbol_name("_SlowDownBlipControl")
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)

DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("SetupNormalModeAlarmLevels"), DW_AT_symbol_name("_SetupNormalModeAlarmLevels")
	.dwattr DW$13, DW_AT_declaration(0x01)
	.dwattr DW$13, DW_AT_external(0x01)

DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("NominalSpeedUpdate"), DW_AT_symbol_name("_NominalSpeedUpdate")
	.dwattr DW$14, DW_AT_declaration(0x01)
	.dwattr DW$14, DW_AT_external(0x01)

DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteDamagemontoNVMEM"), DW_AT_symbol_name("_WriteDamagemontoNVMEM")
	.dwattr DW$15, DW_AT_declaration(0x01)
	.dwattr DW$15, DW_AT_external(0x01)

DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("SetupLearningModeAlarmLevels"), DW_AT_symbol_name("_SetupLearningModeAlarmLevels")
	.dwattr DW$16, DW_AT_declaration(0x01)
	.dwattr DW$16, DW_AT_external(0x01)

DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteWIOSettingstoNVMEM"), DW_AT_symbol_name("_WriteWIOSettingstoNVMEM")
	.dwattr DW$17, DW_AT_declaration(0x01)
	.dwattr DW$17, DW_AT_external(0x01)

DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("WIOCommsOORClearDown"), DW_AT_symbol_name("_WIOCommsOORClearDown")
	.dwattr DW$18, DW_AT_declaration(0x01)
	.dwattr DW$18, DW_AT_external(0x01)

DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearEventCodeListArea"), DW_AT_symbol_name("_ClearEventCodeListArea")
	.dwattr DW$19, DW_AT_declaration(0x01)
	.dwattr DW$19, DW_AT_external(0x01)

DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearAlarmEvent"), DW_AT_symbol_name("_ClearAlarmEvent")
	.dwattr DW$20, DW_AT_declaration(0x01)
	.dwattr DW$20, DW_AT_external(0x01)
DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$20


DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("CheckAlarmBitSet"), DW_AT_symbol_name("_CheckAlarmBitSet")
	.dwattr DW$22, DW_AT_type(*DW$T$10)
	.dwattr DW$22, DW_AT_declaration(0x01)
	.dwattr DW$22, DW_AT_external(0x01)
DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$22


DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteConfigStructtoNVMEM"), DW_AT_symbol_name("_WriteConfigStructtoNVMEM")
	.dwattr DW$24, DW_AT_declaration(0x01)
	.dwattr DW$24, DW_AT_external(0x01)

DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteSLEMSettingstoNVMEM"), DW_AT_symbol_name("_WriteSLEMSettingstoNVMEM")
	.dwattr DW$25, DW_AT_declaration(0x01)
	.dwattr DW$25, DW_AT_external(0x01)

DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteCPPSettingstoNVMEM"), DW_AT_symbol_name("_WriteCPPSettingstoNVMEM")
	.dwattr DW$26, DW_AT_declaration(0x01)
	.dwattr DW$26, DW_AT_external(0x01)

DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteSensorSettingstoNVMEM"), DW_AT_symbol_name("_WriteSensorSettingstoNVMEM")
	.dwattr DW$27, DW_AT_declaration(0x01)
	.dwattr DW$27, DW_AT_external(0x01)

DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteDCModeChecksSettingstoNVMEM"), DW_AT_symbol_name("_WriteDCModeChecksSettingstoNVMEM")
	.dwattr DW$28, DW_AT_declaration(0x01)
	.dwattr DW$28, DW_AT_external(0x01)

DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteNVMemory"), DW_AT_symbol_name("_WriteNVMemory")
	.dwattr DW$29, DW_AT_type(*DW$T$10)
	.dwattr DW$29, DW_AT_declaration(0x01)
	.dwattr DW$29, DW_AT_external(0x01)
DW$30	.dwtag  DW_TAG_variable, DW_AT_name("pcmodbus"), DW_AT_symbol_name("_pcmodbus")
	.dwattr DW$30, DW_AT_type(*DW$T$92)
	.dwattr DW$30, DW_AT_declaration(0x01)
	.dwattr DW$30, DW_AT_external(0x01)
DW$31	.dwtag  DW_TAG_variable, DW_AT_name("settings"), DW_AT_symbol_name("_settings")
	.dwattr DW$31, DW_AT_type(*DW$T$94)
	.dwattr DW$31, DW_AT_declaration(0x01)
	.dwattr DW$31, DW_AT_external(0x01)
DW$32	.dwtag  DW_TAG_variable, DW_AT_name("allsensors"), DW_AT_symbol_name("_allsensors")
	.dwattr DW$32, DW_AT_type(*DW$T$97)
	.dwattr DW$32, DW_AT_declaration(0x01)
	.dwattr DW$32, DW_AT_external(0x01)
DW$33	.dwtag  DW_TAG_variable, DW_AT_name("config"), DW_AT_symbol_name("_config")
	.dwattr DW$33, DW_AT_type(*DW$T$100)
	.dwattr DW$33, DW_AT_declaration(0x01)
	.dwattr DW$33, DW_AT_external(0x01)
DW$34	.dwtag  DW_TAG_variable, DW_AT_name("manref"), DW_AT_symbol_name("_manref")
	.dwattr DW$34, DW_AT_type(*DW$T$104)
	.dwattr DW$34, DW_AT_declaration(0x01)
	.dwattr DW$34, DW_AT_external(0x01)
DW$35	.dwtag  DW_TAG_variable, DW_AT_name("manrefsum"), DW_AT_symbol_name("_manrefsum")
	.dwattr DW$35, DW_AT_type(*DW$T$108)
	.dwattr DW$35, DW_AT_declaration(0x01)
	.dwattr DW$35, DW_AT_external(0x01)
DW$36	.dwtag  DW_TAG_variable, DW_AT_name("damagemon"), DW_AT_symbol_name("_damagemon")
	.dwattr DW$36, DW_AT_type(*DW$T$111)
	.dwattr DW$36, DW_AT_declaration(0x01)
	.dwattr DW$36, DW_AT_external(0x01)
DW$37	.dwtag  DW_TAG_variable, DW_AT_name("damalarms"), DW_AT_symbol_name("_damalarms")
	.dwattr DW$37, DW_AT_type(*DW$T$114)
	.dwattr DW$37, DW_AT_declaration(0x01)
	.dwattr DW$37, DW_AT_external(0x01)
DW$38	.dwtag  DW_TAG_variable, DW_AT_name("speedcompcoeffs"), DW_AT_symbol_name("_speedcompcoeffs")
	.dwattr DW$38, DW_AT_type(*DW$T$116)
	.dwattr DW$38, DW_AT_declaration(0x01)
	.dwattr DW$38, DW_AT_external(0x01)
DW$39	.dwtag  DW_TAG_variable, DW_AT_name("wiosettings"), DW_AT_symbol_name("_wiosettings")
	.dwattr DW$39, DW_AT_type(*DW$T$119)
	.dwattr DW$39, DW_AT_declaration(0x01)
	.dwattr DW$39, DW_AT_external(0x01)
DW$40	.dwtag  DW_TAG_variable, DW_AT_name("damagemonignore"), DW_AT_symbol_name("_damagemonignore")
	.dwattr DW$40, DW_AT_type(*DW$T$78)
	.dwattr DW$40, DW_AT_declaration(0x01)
	.dwattr DW$40, DW_AT_external(0x01)
DW$41	.dwtag  DW_TAG_variable, DW_AT_name("alarms"), DW_AT_symbol_name("_alarms")
	.dwattr DW$41, DW_AT_type(*DW$T$122)
	.dwattr DW$41, DW_AT_declaration(0x01)
	.dwattr DW$41, DW_AT_external(0x01)
DW$42	.dwtag  DW_TAG_variable, DW_AT_name("slave485mb"), DW_AT_symbol_name("_slave485mb")
	.dwattr DW$42, DW_AT_type(*DW$T$124)
	.dwattr DW$42, DW_AT_declaration(0x01)
	.dwattr DW$42, DW_AT_external(0x01)
DW$43	.dwtag  DW_TAG_variable, DW_AT_name("slemsettings"), DW_AT_symbol_name("_slemsettings")
	.dwattr DW$43, DW_AT_type(*DW$T$125)
	.dwattr DW$43, DW_AT_declaration(0x01)
	.dwattr DW$43, DW_AT_external(0x01)
DW$44	.dwtag  DW_TAG_variable, DW_AT_name("cppsettings"), DW_AT_symbol_name("_cppsettings")
	.dwattr DW$44, DW_AT_type(*DW$T$128)
	.dwattr DW$44, DW_AT_declaration(0x01)
	.dwattr DW$44, DW_AT_external(0x01)
DW$45	.dwtag  DW_TAG_variable, DW_AT_name("sensorMoving"), DW_AT_symbol_name("_sensorMoving")
	.dwattr DW$45, DW_AT_type(*DW$T$131)
	.dwattr DW$45, DW_AT_declaration(0x01)
	.dwattr DW$45, DW_AT_external(0x01)
DW$46	.dwtag  DW_TAG_variable, DW_AT_name("dcmodechecks"), DW_AT_symbol_name("_dcmodechecks")
	.dwattr DW$46, DW_AT_type(*DW$T$133)
	.dwattr DW$46, DW_AT_declaration(0x01)
	.dwattr DW$46, DW_AT_external(0x01)
	.global	_parameters
	.sect	".econst"
	.align	2
_parameters:
	.field  	997,16			; _parameters[0]._reg @ 0
	.field  	60,16			; _parameters[0]._lowlim @ 16
	.field  	3600,16			; _parameters[0]._hilim @ 32
	.space	16
	.field  	_config+7,32		; _parameters[0]._ptr @ 64
	.field  	76,16			; _parameters[0]._stringbuf[0] @ 96
	.field  	111,16			; _parameters[0]._stringbuf[1] @ 112
	.field  	110,16			; _parameters[0]._stringbuf[2] @ 128
	.field  	103,16			; _parameters[0]._stringbuf[3] @ 144
	.field  	108,16			; _parameters[0]._stringbuf[4] @ 160
	.field  	114,16			; _parameters[0]._stringbuf[5] @ 176
	.field  	97,16			; _parameters[0]._stringbuf[6] @ 192
	.field  	116,16			; _parameters[0]._stringbuf[7] @ 208
	.field  	101,16			; _parameters[0]._stringbuf[8] @ 224
	.field  	32,16			; _parameters[0]._stringbuf[9] @ 240
	.field  	32,16			; _parameters[0]._stringbuf[10] @ 256
	.field  	0,16			; _parameters[0]._stringbuf[11] @ 272
	.field  	_WriteConfigStructtoNVMEM,32		; _parameters[0]._paramfunc @ 288
	.field  	998,16			; _parameters[1]._reg @ 320
	.field  	10,16			; _parameters[1]._lowlim @ 336
	.field  	3600,16			; _parameters[1]._hilim @ 352
	.space	16
	.field  	_config+6,32		; _parameters[1]._ptr @ 384
	.field  	83,16			; _parameters[1]._stringbuf[0] @ 416
	.field  	104,16			; _parameters[1]._stringbuf[1] @ 432
	.field  	114,16			; _parameters[1]._stringbuf[2] @ 448
	.field  	116,16			; _parameters[1]._stringbuf[3] @ 464
	.field  	108,16			; _parameters[1]._stringbuf[4] @ 480
	.field  	114,16			; _parameters[1]._stringbuf[5] @ 496
	.field  	97,16			; _parameters[1]._stringbuf[6] @ 512
	.field  	116,16			; _parameters[1]._stringbuf[7] @ 528
	.field  	101,16			; _parameters[1]._stringbuf[8] @ 544
	.field  	32,16			; _parameters[1]._stringbuf[9] @ 560
	.field  	32,16			; _parameters[1]._stringbuf[10] @ 576
	.field  	0,16			; _parameters[1]._stringbuf[11] @ 592
	.field  	_WriteConfigStructtoNVMEM,32		; _parameters[1]._paramfunc @ 608
	.field  	1001,16			; _parameters[2]._reg @ 640
	.field  	0,16			; _parameters[2]._lowlim @ 656
	.field  	999,16			; _parameters[2]._hilim @ 672
	.space	16
	.field  	_allsensors+43,32		; _parameters[2]._ptr @ 704
	.field  	66,16			; _parameters[2]._stringbuf[0] @ 736
	.field  	65,16			; _parameters[2]._stringbuf[1] @ 752
	.field  	82,16			; _parameters[2]._stringbuf[2] @ 768
	.field  	82,16			; _parameters[2]._stringbuf[3] @ 784
	.field  	69,16			; _parameters[2]._stringbuf[4] @ 800
	.field  	68,16			; _parameters[2]._stringbuf[5] @ 816
	.field  	76,16			; _parameters[2]._stringbuf[6] @ 832
	.field  	79,16			; _parameters[2]._stringbuf[7] @ 848
	.field  	87,16			; _parameters[2]._stringbuf[8] @ 864
	.field  	32,16			; _parameters[2]._stringbuf[9] @ 880
	.field  	32,16			; _parameters[2]._stringbuf[10] @ 896
	.field  	0,16			; _parameters[2]._stringbuf[11] @ 912
	.field  	_UpdateAllSensor,32		; _parameters[2]._paramfunc @ 928
	.field  	1002,16			; _parameters[3]._reg @ 960
	.field  	0,16			; _parameters[3]._lowlim @ 976
	.field  	999,16			; _parameters[3]._hilim @ 992
	.space	16
	.field  	_allsensors+44,32		; _parameters[3]._ptr @ 1024
	.field  	66,16			; _parameters[3]._stringbuf[0] @ 1056
	.field  	65,16			; _parameters[3]._stringbuf[1] @ 1072
	.field  	82,16			; _parameters[3]._stringbuf[2] @ 1088
	.field  	82,16			; _parameters[3]._stringbuf[3] @ 1104
	.field  	69,16			; _parameters[3]._stringbuf[4] @ 1120
	.field  	68,16			; _parameters[3]._stringbuf[5] @ 1136
	.field  	72,16			; _parameters[3]._stringbuf[6] @ 1152
	.field  	73,16			; _parameters[3]._stringbuf[7] @ 1168
	.field  	71,16			; _parameters[3]._stringbuf[8] @ 1184
	.field  	72,16			; _parameters[3]._stringbuf[9] @ 1200
	.field  	32,16			; _parameters[3]._stringbuf[10] @ 1216
	.field  	0,16			; _parameters[3]._stringbuf[11] @ 1232
	.field  	_UpdateAllSensor,32		; _parameters[3]._paramfunc @ 1248
	.field  	1005,16			; _parameters[4]._reg @ 1280
	.field  	0,16			; _parameters[4]._lowlim @ 1296
	.field  	999,16			; _parameters[4]._hilim @ 1312
	.space	16
	.field  	_cppsettings+6,32		; _parameters[4]._ptr @ 1344
	.field  	68,16			; _parameters[4]._stringbuf[0] @ 1376
	.field  	69,16			; _parameters[4]._stringbuf[1] @ 1392
	.field  	76,16			; _parameters[4]._stringbuf[2] @ 1408
	.field  	84,16			; _parameters[4]._stringbuf[3] @ 1424
	.field  	65,16			; _parameters[4]._stringbuf[4] @ 1440
	.field  	82,16			; _parameters[4]._stringbuf[5] @ 1456
	.field  	80,16			; _parameters[4]._stringbuf[6] @ 1472
	.field  	77,16			; _parameters[4]._stringbuf[7] @ 1488
	.field  	0,16			; _parameters[4]._stringbuf[8] @ 1504
	.space	48
	.field  	_CPPUpdate,32		; _parameters[4]._paramfunc @ 1568
	.field  	1012,16			; _parameters[5]._reg @ 1600
	.field  	0,16			; _parameters[5]._lowlim @ 1616
	.field  	999,16			; _parameters[5]._hilim @ 1632
	.space	16
	.field  	_allsensors+38,32		; _parameters[5]._ptr @ 1664
	.field  	68,16			; _parameters[5]._stringbuf[0] @ 1696
	.field  	83,16			; _parameters[5]._stringbuf[1] @ 1712
	.field  	83,16			; _parameters[5]._stringbuf[2] @ 1728
	.field  	83,16			; _parameters[5]._stringbuf[3] @ 1744
	.field  	32,16			; _parameters[5]._stringbuf[4] @ 1760
	.field  	32,16			; _parameters[5]._stringbuf[5] @ 1776
	.field  	32,16			; _parameters[5]._stringbuf[6] @ 1792
	.field  	32,16			; _parameters[5]._stringbuf[7] @ 1808
	.field  	32,16			; _parameters[5]._stringbuf[8] @ 1824
	.field  	32,16			; _parameters[5]._stringbuf[9] @ 1840
	.field  	32,16			; _parameters[5]._stringbuf[10] @ 1856
	.field  	0,16			; _parameters[5]._stringbuf[11] @ 1872
	.field  	_UpdateAllSensor,32		; _parameters[5]._paramfunc @ 1888
	.field  	1028,16			; _parameters[6]._reg @ 1920
	.field  	500,16			; _parameters[6]._lowlim @ 1936
	.field  	2000,16			; _parameters[6]._hilim @ 1952
	.space	16
	.field  	_config+3,32		; _parameters[6]._ptr @ 1984
	.field  	67,16			; _parameters[6]._stringbuf[0] @ 2016
	.field  	104,16			; _parameters[6]._stringbuf[1] @ 2032
	.field  	76,16			; _parameters[6]._stringbuf[2] @ 2048
	.field  	111,16			; _parameters[6]._stringbuf[3] @ 2064
	.field  	119,16			; _parameters[6]._stringbuf[4] @ 2080
	.field  	84,16			; _parameters[6]._stringbuf[5] @ 2096
	.field  	104,16			; _parameters[6]._stringbuf[6] @ 2112
	.field  	114,16			; _parameters[6]._stringbuf[7] @ 2128
	.field  	101,16			; _parameters[6]._stringbuf[8] @ 2144
	.field  	115,16			; _parameters[6]._stringbuf[9] @ 2160
	.field  	32,16			; _parameters[6]._stringbuf[10] @ 2176
	.field  	0,16			; _parameters[6]._stringbuf[11] @ 2192
	.field  	_ConfigurationUpdate,32		; _parameters[6]._paramfunc @ 2208
	.field  	1029,16			; _parameters[7]._reg @ 2240
	.field  	500,16			; _parameters[7]._lowlim @ 2256
	.field  	2000,16			; _parameters[7]._hilim @ 2272
	.space	16
	.field  	_config+4,32		; _parameters[7]._ptr @ 2304
	.field  	67,16			; _parameters[7]._stringbuf[0] @ 2336
	.field  	104,16			; _parameters[7]._stringbuf[1] @ 2352
	.field  	72,16			; _parameters[7]._stringbuf[2] @ 2368
	.field  	105,16			; _parameters[7]._stringbuf[3] @ 2384
	.field  	84,16			; _parameters[7]._stringbuf[4] @ 2400
	.field  	104,16			; _parameters[7]._stringbuf[5] @ 2416
	.field  	114,16			; _parameters[7]._stringbuf[6] @ 2432
	.field  	101,16			; _parameters[7]._stringbuf[7] @ 2448
	.field  	115,16			; _parameters[7]._stringbuf[8] @ 2464
	.field  	32,16			; _parameters[7]._stringbuf[9] @ 2480
	.field  	32,16			; _parameters[7]._stringbuf[10] @ 2496
	.field  	0,16			; _parameters[7]._stringbuf[11] @ 2512
	.field  	_ConfigurationUpdate,32		; _parameters[7]._paramfunc @ 2528
	.field  	1030,16			; _parameters[8]._reg @ 2560
	.field  	2000,16			; _parameters[8]._lowlim @ 2576
	.field  	8000,16			; _parameters[8]._hilim @ 2592
	.space	16
	.field  	_config+5,32		; _parameters[8]._ptr @ 2624
	.field  	83,16			; _parameters[8]._stringbuf[0] @ 2656
	.field  	101,16			; _parameters[8]._stringbuf[1] @ 2672
	.field  	110,16			; _parameters[8]._stringbuf[2] @ 2688
	.field  	115,16			; _parameters[8]._stringbuf[3] @ 2704
	.field  	83,16			; _parameters[8]._stringbuf[4] @ 2720
	.field  	99,16			; _parameters[8]._stringbuf[5] @ 2736
	.field  	108,16			; _parameters[8]._stringbuf[6] @ 2752
	.field  	32,16			; _parameters[8]._stringbuf[7] @ 2768
	.field  	32,16			; _parameters[8]._stringbuf[8] @ 2784
	.field  	32,16			; _parameters[8]._stringbuf[9] @ 2800
	.field  	32,16			; _parameters[8]._stringbuf[10] @ 2816
	.field  	0,16			; _parameters[8]._stringbuf[11] @ 2832
	.field  	_ConfigurationUpdate,32		; _parameters[8]._paramfunc @ 2848
	.field  	1032,16			; _parameters[9]._reg @ 2880
	.field  	20,16			; _parameters[9]._lowlim @ 2896
	.field  	2000,16			; _parameters[9]._hilim @ 2912
	.space	16
	.field  	_config+2,32		; _parameters[9]._ptr @ 2944
	.field  	84,16			; _parameters[9]._stringbuf[0] @ 2976
	.field  	71,16			; _parameters[9]._stringbuf[1] @ 2992
	.field  	114,16			; _parameters[9]._stringbuf[2] @ 3008
	.field  	97,16			; _parameters[9]._stringbuf[3] @ 3024
	.field  	112,16			; _parameters[9]._stringbuf[4] @ 3040
	.field  	104,16			; _parameters[9]._stringbuf[5] @ 3056
	.field  	77,16			; _parameters[9]._stringbuf[6] @ 3072
	.field  	97,16			; _parameters[9]._stringbuf[7] @ 3088
	.field  	120,16			; _parameters[9]._stringbuf[8] @ 3104
	.field  	32,16			; _parameters[9]._stringbuf[9] @ 3120
	.field  	32,16			; _parameters[9]._stringbuf[10] @ 3136
	.field  	0,16			; _parameters[9]._stringbuf[11] @ 3152
	.field  	_WriteConfigStructtoNVMEM,32		; _parameters[9]._paramfunc @ 3168
	.field  	1034,16			; _parameters[10]._reg @ 3200
	.field  	0,16			; _parameters[10]._lowlim @ 3216
	.field  	100,16			; _parameters[10]._hilim @ 3232
	.space	16
	.field  	_allsensors+37,32		; _parameters[10]._ptr @ 3264
	.field  	82,16			; _parameters[10]._stringbuf[0] @ 3296
	.field  	80,16			; _parameters[10]._stringbuf[1] @ 3312
	.field  	77,16			; _parameters[10]._stringbuf[2] @ 3328
	.field  	76,16			; _parameters[10]._stringbuf[3] @ 3344
	.field  	105,16			; _parameters[10]._stringbuf[4] @ 3360
	.field  	109,16			; _parameters[10]._stringbuf[5] @ 3376
	.field  	105,16			; _parameters[10]._stringbuf[6] @ 3392
	.field  	116,16			; _parameters[10]._stringbuf[7] @ 3408
	.field  	32,16			; _parameters[10]._stringbuf[8] @ 3424
	.field  	32,16			; _parameters[10]._stringbuf[9] @ 3440
	.field  	32,16			; _parameters[10]._stringbuf[10] @ 3456
	.field  	0,16			; _parameters[10]._stringbuf[11] @ 3472
	.field  	_UpdateAllSensor,32		; _parameters[10]._paramfunc @ 3488
	.field  	1037,16			; _parameters[11]._reg @ 3520
	.field  	0,16			; _parameters[11]._lowlim @ 3536
	.field  	8,16			; _parameters[11]._hilim @ 3552
	.space	16
	.field  	_config+1,32		; _parameters[11]._ptr @ 3584
	.field  	65,16			; _parameters[11]._stringbuf[0] @ 3616
	.field  	108,16			; _parameters[11]._stringbuf[1] @ 3632
	.field  	97,16			; _parameters[11]._stringbuf[2] @ 3648
	.field  	114,16			; _parameters[11]._stringbuf[3] @ 3664
	.field  	109,16			; _parameters[11]._stringbuf[4] @ 3680
	.field  	66,16			; _parameters[11]._stringbuf[5] @ 3696
	.field  	105,16			; _parameters[11]._stringbuf[6] @ 3712
	.field  	116,16			; _parameters[11]._stringbuf[7] @ 3728
	.field  	109,16			; _parameters[11]._stringbuf[8] @ 3744
	.field  	97,16			; _parameters[11]._stringbuf[9] @ 3760
	.field  	112,16			; _parameters[11]._stringbuf[10] @ 3776
	.field  	0,16			; _parameters[11]._stringbuf[11] @ 3792
	.field  	_WriteConfigStructtoNVMEM,32		; _parameters[11]._paramfunc @ 3808
	.field  	1045,16			; _parameters[12]._reg @ 3840
	.field  	0,16			; _parameters[12]._lowlim @ 3856
	.field  	2,16			; _parameters[12]._hilim @ 3872
	.space	16
	.field  	_wiosettings,32		; _parameters[12]._ptr @ 3904
	.field  	87,16			; _parameters[12]._stringbuf[0] @ 3936
	.field  	73,16			; _parameters[12]._stringbuf[1] @ 3952
	.field  	79,16			; _parameters[12]._stringbuf[2] @ 3968
	.field  	69,16			; _parameters[12]._stringbuf[3] @ 3984
	.field  	110,16			; _parameters[12]._stringbuf[4] @ 4000
	.field  	98,16			; _parameters[12]._stringbuf[5] @ 4016
	.field  	32,16			; _parameters[12]._stringbuf[6] @ 4032
	.field  	32,16			; _parameters[12]._stringbuf[7] @ 4048
	.field  	32,16			; _parameters[12]._stringbuf[8] @ 4064
	.field  	32,16			; _parameters[12]._stringbuf[9] @ 4080
	.field  	32,16			; _parameters[12]._stringbuf[10] @ 4096
	.field  	0,16			; _parameters[12]._stringbuf[11] @ 4112
	.field  	_WioUpdate,32		; _parameters[12]._paramfunc @ 4128
	.field  	1046,16			; _parameters[13]._reg @ 4160
	.field  	0,16			; _parameters[13]._lowlim @ 4176
	.field  	1,16			; _parameters[13]._hilim @ 4192
	.space	16
	.field  	_wiosettings+1,32		; _parameters[13]._ptr @ 4224
	.field  	87,16			; _parameters[13]._stringbuf[0] @ 4256
	.field  	73,16			; _parameters[13]._stringbuf[1] @ 4272
	.field  	79,16			; _parameters[13]._stringbuf[2] @ 4288
	.field  	65,16			; _parameters[13]._stringbuf[3] @ 4304
	.field  	108,16			; _parameters[13]._stringbuf[4] @ 4320
	.field  	114,16			; _parameters[13]._stringbuf[5] @ 4336
	.field  	109,16			; _parameters[13]._stringbuf[6] @ 4352
	.field  	66,16			; _parameters[13]._stringbuf[7] @ 4368
	.field  	116,16			; _parameters[13]._stringbuf[8] @ 4384
	.field  	109,16			; _parameters[13]._stringbuf[9] @ 4400
	.field  	112,16			; _parameters[13]._stringbuf[10] @ 4416
	.field  	0,16			; _parameters[13]._stringbuf[11] @ 4432
	.field  	_WioUpdate,32		; _parameters[13]._paramfunc @ 4448
	.field  	1050,16			; _parameters[14]._reg @ 4480
	.field  	0,16			; _parameters[14]._lowlim @ 4496
	.field  	1,16			; _parameters[14]._hilim @ 4512
	.space	16
	.field  	_slemsettings,32		; _parameters[14]._ptr @ 4544
	.field  	83,16			; _parameters[14]._stringbuf[0] @ 4576
	.field  	76,16			; _parameters[14]._stringbuf[1] @ 4592
	.field  	69,16			; _parameters[14]._stringbuf[2] @ 4608
	.field  	77,16			; _parameters[14]._stringbuf[3] @ 4624
	.field  	69,16			; _parameters[14]._stringbuf[4] @ 4640
	.field  	110,16			; _parameters[14]._stringbuf[5] @ 4656
	.field  	97,16			; _parameters[14]._stringbuf[6] @ 4672
	.field  	98,16			; _parameters[14]._stringbuf[7] @ 4688
	.field  	108,16			; _parameters[14]._stringbuf[8] @ 4704
	.field  	101,16			; _parameters[14]._stringbuf[9] @ 4720
	.field  	32,16			; _parameters[14]._stringbuf[10] @ 4736
	.field  	0,16			; _parameters[14]._stringbuf[11] @ 4752
	.field  	_SLEMUpdate,32		; _parameters[14]._paramfunc @ 4768
	.field  	1051,16			; _parameters[15]._reg @ 4800
	.field  	0,16			; _parameters[15]._lowlim @ 4816
	.field  	1,16			; _parameters[15]._hilim @ 4832
	.space	16
	.field  	_slemsettings+1,32		; _parameters[15]._ptr @ 4864
	.field  	83,16			; _parameters[15]._stringbuf[0] @ 4896
	.field  	76,16			; _parameters[15]._stringbuf[1] @ 4912
	.field  	69,16			; _parameters[15]._stringbuf[2] @ 4928
	.field  	77,16			; _parameters[15]._stringbuf[3] @ 4944
	.field  	65,16			; _parameters[15]._stringbuf[4] @ 4960
	.field  	108,16			; _parameters[15]._stringbuf[5] @ 4976
	.field  	114,16			; _parameters[15]._stringbuf[6] @ 4992
	.field  	109,16			; _parameters[15]._stringbuf[7] @ 5008
	.field  	97,16			; _parameters[15]._stringbuf[8] @ 5024
	.field  	115,16			; _parameters[15]._stringbuf[9] @ 5040
	.field  	107,16			; _parameters[15]._stringbuf[10] @ 5056
	.field  	0,16			; _parameters[15]._stringbuf[11] @ 5072
	.field  	_SLEMUpdate,32		; _parameters[15]._paramfunc @ 5088
	.field  	1052,16			; _parameters[16]._reg @ 5120
	.field  	0,16			; _parameters[16]._lowlim @ 5136
	.field  	65535,16			; _parameters[16]._hilim @ 5152
	.space	16
	.field  	_slemsettings+3,32		; _parameters[16]._ptr @ 5184
	.field  	83,16			; _parameters[16]._stringbuf[0] @ 5216
	.field  	76,16			; _parameters[16]._stringbuf[1] @ 5232
	.field  	69,16			; _parameters[16]._stringbuf[2] @ 5248
	.field  	77,16			; _parameters[16]._stringbuf[3] @ 5264
	.field  	32,16			; _parameters[16]._stringbuf[4] @ 5280
	.field  	109,16			; _parameters[16]._stringbuf[5] @ 5296
	.field  	86,16			; _parameters[16]._stringbuf[6] @ 5312
	.field  	32,16			; _parameters[16]._stringbuf[7] @ 5328
	.field  	70,16			; _parameters[16]._stringbuf[8] @ 5344
	.field  	83,16			; _parameters[16]._stringbuf[9] @ 5360
	.field  	68,16			; _parameters[16]._stringbuf[10] @ 5376
	.field  	0,16			; _parameters[16]._stringbuf[11] @ 5392
	.field  	_SLEMUpdate,32		; _parameters[16]._paramfunc @ 5408
	.field  	1053,16			; _parameters[17]._reg @ 5440
	.field  	0,16			; _parameters[17]._lowlim @ 5456
	.field  	1,16			; _parameters[17]._hilim @ 5472
	.space	16
	.field  	_allsensors+42,32		; _parameters[17]._ptr @ 5504
	.field  	66,16			; _parameters[17]._stringbuf[0] @ 5536
	.field  	108,16			; _parameters[17]._stringbuf[1] @ 5552
	.field  	105,16			; _parameters[17]._stringbuf[2] @ 5568
	.field  	112,16			; _parameters[17]._stringbuf[3] @ 5584
	.field  	67,16			; _parameters[17]._stringbuf[4] @ 5600
	.field  	111,16			; _parameters[17]._stringbuf[5] @ 5616
	.field  	110,16			; _parameters[17]._stringbuf[6] @ 5632
	.field  	116,16			; _parameters[17]._stringbuf[7] @ 5648
	.field  	114,16			; _parameters[17]._stringbuf[8] @ 5664
	.field  	111,16			; _parameters[17]._stringbuf[9] @ 5680
	.field  	108,16			; _parameters[17]._stringbuf[10] @ 5696
	.field  	0,16			; _parameters[17]._stringbuf[11] @ 5712
	.field  	_SlowDownBlipControl,32		; _parameters[17]._paramfunc @ 5728
	.field  	1054,16			; _parameters[18]._reg @ 5760
	.field  	0,16			; _parameters[18]._lowlim @ 5776
	.field  	5000,16			; _parameters[18]._hilim @ 5792
	.space	16
	.field  	_slemsettings+2,32		; _parameters[18]._ptr @ 5824
	.field  	83,16			; _parameters[18]._stringbuf[0] @ 5856
	.field  	76,16			; _parameters[18]._stringbuf[1] @ 5872
	.field  	69,16			; _parameters[18]._stringbuf[2] @ 5888
	.field  	77,16			; _parameters[18]._stringbuf[3] @ 5904
	.field  	76,16			; _parameters[18]._stringbuf[4] @ 5920
	.field  	101,16			; _parameters[18]._stringbuf[5] @ 5936
	.field  	118,16			; _parameters[18]._stringbuf[6] @ 5952
	.field  	101,16			; _parameters[18]._stringbuf[7] @ 5968
	.field  	108,16			; _parameters[18]._stringbuf[8] @ 5984
	.field  	32,16			; _parameters[18]._stringbuf[9] @ 6000
	.field  	32,16			; _parameters[18]._stringbuf[10] @ 6016
	.field  	0,16			; _parameters[18]._stringbuf[11] @ 6032
	.field  	_SLEMUpdate,32		; _parameters[18]._paramfunc @ 6048
	.field  	1055,16			; _parameters[19]._reg @ 6080
	.field  	0,16			; _parameters[19]._lowlim @ 6096
	.field  	1000,16			; _parameters[19]._hilim @ 6112
	.space	16
	.field  	_slemsettings+4,32		; _parameters[19]._ptr @ 6144
	.field  	83,16			; _parameters[19]._stringbuf[0] @ 6176
	.field  	76,16			; _parameters[19]._stringbuf[1] @ 6192
	.field  	69,16			; _parameters[19]._stringbuf[2] @ 6208
	.field  	77,16			; _parameters[19]._stringbuf[3] @ 6224
	.field  	72,16			; _parameters[19]._stringbuf[4] @ 6240
	.field  	121,16			; _parameters[19]._stringbuf[5] @ 6256
	.field  	115,16			; _parameters[19]._stringbuf[6] @ 6272
	.field  	0,16			; _parameters[19]._stringbuf[7] @ 6288
	.space	64
	.field  	_SLEMUpdate,32		; _parameters[19]._paramfunc @ 6368
	.field  	1056,16			; _parameters[20]._reg @ 6400
	.field  	0,16			; _parameters[20]._lowlim @ 6416
	.field  	3600,16			; _parameters[20]._hilim @ 6432
	.space	16
	.field  	_slemsettings+5,32		; _parameters[20]._ptr @ 6464
	.field  	83,16			; _parameters[20]._stringbuf[0] @ 6496
	.field  	76,16			; _parameters[20]._stringbuf[1] @ 6512
	.field  	69,16			; _parameters[20]._stringbuf[2] @ 6528
	.field  	77,16			; _parameters[20]._stringbuf[3] @ 6544
	.field  	68,16			; _parameters[20]._stringbuf[4] @ 6560
	.field  	101,16			; _parameters[20]._stringbuf[5] @ 6576
	.field  	108,16			; _parameters[20]._stringbuf[6] @ 6592
	.field  	97,16			; _parameters[20]._stringbuf[7] @ 6608
	.field  	121,16			; _parameters[20]._stringbuf[8] @ 6624
	.field  	0,16			; _parameters[20]._stringbuf[9] @ 6640
	.space	32
	.field  	_SLEMUpdate,32		; _parameters[20]._paramfunc @ 6688
	.field  	2048,16			; _parameters[21]._reg @ 6720
	.field  	0,16			; _parameters[21]._lowlim @ 6736
	.field  	28,16			; _parameters[21]._hilim @ 6752
	.space	16
	.field  	_allsensors,32		; _parameters[21]._ptr @ 6784
	.field  	78,16			; _parameters[21]._stringbuf[0] @ 6816
	.field  	117,16			; _parameters[21]._stringbuf[1] @ 6832
	.field  	109,16			; _parameters[21]._stringbuf[2] @ 6848
	.field  	83,16			; _parameters[21]._stringbuf[3] @ 6864
	.field  	101,16			; _parameters[21]._stringbuf[4] @ 6880
	.field  	110,16			; _parameters[21]._stringbuf[5] @ 6896
	.field  	115,16			; _parameters[21]._stringbuf[6] @ 6912
	.field  	32,16			; _parameters[21]._stringbuf[7] @ 6928
	.field  	84,16			; _parameters[21]._stringbuf[8] @ 6944
	.field  	111,16			; _parameters[21]._stringbuf[9] @ 6960
	.field  	116,16			; _parameters[21]._stringbuf[10] @ 6976
	.field  	0,16			; _parameters[21]._stringbuf[11] @ 6992
	.field  	_SensorNumChanged,32		; _parameters[21]._paramfunc @ 7008
	.field  	2049,16			; _parameters[22]._reg @ 7040
	.field  	0,16			; _parameters[22]._lowlim @ 7056
	.field  	14,16			; _parameters[22]._hilim @ 7072
	.space	16
	.field  	_allsensors+1,32		; _parameters[22]._ptr @ 7104
	.field  	78,16			; _parameters[22]._stringbuf[0] @ 7136
	.field  	117,16			; _parameters[22]._stringbuf[1] @ 7152
	.field  	109,16			; _parameters[22]._stringbuf[2] @ 7168
	.field  	83,16			; _parameters[22]._stringbuf[3] @ 7184
	.field  	101,16			; _parameters[22]._stringbuf[4] @ 7200
	.field  	110,16			; _parameters[22]._stringbuf[5] @ 7216
	.field  	115,16			; _parameters[22]._stringbuf[6] @ 7232
	.field  	83,16			; _parameters[22]._stringbuf[7] @ 7248
	.field  	80,16			; _parameters[22]._stringbuf[8] @ 7264
	.field  	85,16			; _parameters[22]._stringbuf[9] @ 7280
	.field  	49,16			; _parameters[22]._stringbuf[10] @ 7296
	.field  	0,16			; _parameters[22]._stringbuf[11] @ 7312
	.field  	_SensorNumChanged,32		; _parameters[22]._paramfunc @ 7328
	.field  	2050,16			; _parameters[23]._reg @ 7360
	.field  	0,16			; _parameters[23]._lowlim @ 7376
	.field  	14,16			; _parameters[23]._hilim @ 7392
	.space	16
	.field  	_allsensors+2,32		; _parameters[23]._ptr @ 7424
	.field  	78,16			; _parameters[23]._stringbuf[0] @ 7456
	.field  	117,16			; _parameters[23]._stringbuf[1] @ 7472
	.field  	109,16			; _parameters[23]._stringbuf[2] @ 7488
	.field  	83,16			; _parameters[23]._stringbuf[3] @ 7504
	.field  	101,16			; _parameters[23]._stringbuf[4] @ 7520
	.field  	110,16			; _parameters[23]._stringbuf[5] @ 7536
	.field  	115,16			; _parameters[23]._stringbuf[6] @ 7552
	.field  	83,16			; _parameters[23]._stringbuf[7] @ 7568
	.field  	80,16			; _parameters[23]._stringbuf[8] @ 7584
	.field  	85,16			; _parameters[23]._stringbuf[9] @ 7600
	.field  	50,16			; _parameters[23]._stringbuf[10] @ 7616
	.field  	0,16			; _parameters[23]._stringbuf[11] @ 7632
	.field  	_SPU2ValUpdate,32		; _parameters[23]._paramfunc @ 7648
	.field  	2051,16			; _parameters[24]._reg @ 7680
	.field  	0,16			; _parameters[24]._lowlim @ 7696
	.field  	2500,16			; _parameters[24]._hilim @ 7712
	.space	16
	.field  	_allsensors+7,32		; _parameters[24]._ptr @ 7744
	.field  	83,16			; _parameters[24]._stringbuf[0] @ 7776
	.field  	101,16			; _parameters[24]._stringbuf[1] @ 7792
	.field  	110,16			; _parameters[24]._stringbuf[2] @ 7808
	.field  	115,16			; _parameters[24]._stringbuf[3] @ 7824
	.field  	72,16			; _parameters[24]._stringbuf[4] @ 7840
	.field  	121,16			; _parameters[24]._stringbuf[5] @ 7856
	.field  	115,16			; _parameters[24]._stringbuf[6] @ 7872
	.field  	32,16			; _parameters[24]._stringbuf[7] @ 7888
	.field  	32,16			; _parameters[24]._stringbuf[8] @ 7904
	.field  	32,16			; _parameters[24]._stringbuf[9] @ 7920
	.field  	32,16			; _parameters[24]._stringbuf[10] @ 7936
	.field  	0,16			; _parameters[24]._stringbuf[11] @ 7952
	.field  	_UpdateAllSensor,32		; _parameters[24]._paramfunc @ 7968
	.field  	2052,16			; _parameters[25]._reg @ 8000
	.field  	0,16			; _parameters[25]._lowlim @ 8016
	.field  	2500,16			; _parameters[25]._hilim @ 8032
	.space	16
	.field  	_allsensors+8,32		; _parameters[25]._ptr @ 8064
	.field  	67,16			; _parameters[25]._stringbuf[0] @ 8096
	.field  	121,16			; _parameters[25]._stringbuf[1] @ 8112
	.field  	108,16			; _parameters[25]._stringbuf[2] @ 8128
	.field  	72,16			; _parameters[25]._stringbuf[3] @ 8144
	.field  	121,16			; _parameters[25]._stringbuf[4] @ 8160
	.field  	115,16			; _parameters[25]._stringbuf[5] @ 8176
	.field  	32,16			; _parameters[25]._stringbuf[6] @ 8192
	.field  	32,16			; _parameters[25]._stringbuf[7] @ 8208
	.field  	32,16			; _parameters[25]._stringbuf[8] @ 8224
	.field  	32,16			; _parameters[25]._stringbuf[9] @ 8240
	.field  	32,16			; _parameters[25]._stringbuf[10] @ 8256
	.field  	0,16			; _parameters[25]._stringbuf[11] @ 8272
	.field  	_UpdateAllSensor,32		; _parameters[25]._paramfunc @ 8288
	.field  	2053,16			; _parameters[26]._reg @ 8320
	.field  	0,16			; _parameters[26]._lowlim @ 8336
	.field  	2500,16			; _parameters[26]._hilim @ 8352
	.space	16
	.field  	_allsensors+9,32		; _parameters[26]._ptr @ 8384
	.field  	83,16			; _parameters[26]._stringbuf[0] @ 8416
	.field  	101,16			; _parameters[26]._stringbuf[1] @ 8432
	.field  	110,16			; _parameters[26]._stringbuf[2] @ 8448
	.field  	83,16			; _parameters[26]._stringbuf[3] @ 8464
	.field  	108,16			; _parameters[26]._stringbuf[4] @ 8480
	.field  	111,16			; _parameters[26]._stringbuf[5] @ 8496
	.field  	119,16			; _parameters[26]._stringbuf[6] @ 8512
	.field  	76,16			; _parameters[26]._stringbuf[7] @ 8528
	.field  	32,16			; _parameters[26]._stringbuf[8] @ 8544
	.field  	32,16			; _parameters[26]._stringbuf[9] @ 8560
	.field  	32,16			; _parameters[26]._stringbuf[10] @ 8576
	.field  	0,16			; _parameters[26]._stringbuf[11] @ 8592
	.field  	_SetupAlarmLevels,32		; _parameters[26]._paramfunc @ 8608
	.field  	2054,16			; _parameters[27]._reg @ 8640
	.field  	0,16			; _parameters[27]._lowlim @ 8656
	.field  	2500,16			; _parameters[27]._hilim @ 8672
	.space	16
	.field  	_allsensors+10,32		; _parameters[27]._ptr @ 8704
	.field  	83,16			; _parameters[27]._stringbuf[0] @ 8736
	.field  	101,16			; _parameters[27]._stringbuf[1] @ 8752
	.field  	110,16			; _parameters[27]._stringbuf[2] @ 8768
	.field  	115,16			; _parameters[27]._stringbuf[3] @ 8784
	.field  	65,16			; _parameters[27]._stringbuf[4] @ 8800
	.field  	108,16			; _parameters[27]._stringbuf[5] @ 8816
	.field  	114,16			; _parameters[27]._stringbuf[6] @ 8832
	.field  	109,16			; _parameters[27]._stringbuf[7] @ 8848
	.field  	76,16			; _parameters[27]._stringbuf[8] @ 8864
	.field  	32,16			; _parameters[27]._stringbuf[9] @ 8880
	.field  	32,16			; _parameters[27]._stringbuf[10] @ 8896
	.field  	0,16			; _parameters[27]._stringbuf[11] @ 8912
	.field  	_SetupAlarmLevels,32		; _parameters[27]._paramfunc @ 8928
	.field  	2055,16			; _parameters[28]._reg @ 8960
	.field  	0,16			; _parameters[28]._lowlim @ 8976
	.field  	2500,16			; _parameters[28]._hilim @ 8992
	.space	16
	.field  	_allsensors+11,32		; _parameters[28]._ptr @ 9024
	.field  	83,16			; _parameters[28]._stringbuf[0] @ 9056
	.field  	108,16			; _parameters[28]._stringbuf[1] @ 9072
	.field  	119,16			; _parameters[28]._stringbuf[2] @ 9088
	.field  	67,16			; _parameters[28]._stringbuf[3] @ 9104
	.field  	97,16			; _parameters[28]._stringbuf[4] @ 9120
	.field  	108,16			; _parameters[28]._stringbuf[5] @ 9136
	.field  	76,16			; _parameters[28]._stringbuf[6] @ 9152
	.field  	32,16			; _parameters[28]._stringbuf[7] @ 9168
	.field  	32,16			; _parameters[28]._stringbuf[8] @ 9184
	.field  	32,16			; _parameters[28]._stringbuf[9] @ 9200
	.field  	32,16			; _parameters[28]._stringbuf[10] @ 9216
	.field  	0,16			; _parameters[28]._stringbuf[11] @ 9232
	.field  	_SetupAlarmLevels,32		; _parameters[28]._paramfunc @ 9248
	.field  	2056,16			; _parameters[29]._reg @ 9280
	.field  	0,16			; _parameters[29]._lowlim @ 9296
	.field  	2500,16			; _parameters[29]._hilim @ 9312
	.space	16
	.field  	_allsensors+12,32		; _parameters[29]._ptr @ 9344
	.field  	65,16			; _parameters[29]._stringbuf[0] @ 9376
	.field  	108,16			; _parameters[29]._stringbuf[1] @ 9392
	.field  	114,16			; _parameters[29]._stringbuf[2] @ 9408
	.field  	68,16			; _parameters[29]._stringbuf[3] @ 9424
	.field  	101,16			; _parameters[29]._stringbuf[4] @ 9440
	.field  	118,16			; _parameters[29]._stringbuf[5] @ 9456
	.field  	67,16			; _parameters[29]._stringbuf[6] @ 9472
	.field  	76,16			; _parameters[29]._stringbuf[7] @ 9488
	.field  	32,16			; _parameters[29]._stringbuf[8] @ 9504
	.field  	32,16			; _parameters[29]._stringbuf[9] @ 9520
	.field  	32,16			; _parameters[29]._stringbuf[10] @ 9536
	.field  	0,16			; _parameters[29]._stringbuf[11] @ 9552
	.field  	_SetupAlarmLevels,32		; _parameters[29]._paramfunc @ 9568
	.field  	2057,16			; _parameters[30]._reg @ 9600
	.field  	0,16			; _parameters[30]._lowlim @ 9616
	.field  	2500,16			; _parameters[30]._hilim @ 9632
	.space	16
	.field  	_allsensors+13,32		; _parameters[30]._ptr @ 9664
	.field  	83,16			; _parameters[30]._stringbuf[0] @ 9696
	.field  	108,16			; _parameters[30]._stringbuf[1] @ 9712
	.field  	119,16			; _parameters[30]._stringbuf[2] @ 9728
	.field  	68,16			; _parameters[30]._stringbuf[3] @ 9744
	.field  	101,16			; _parameters[30]._stringbuf[4] @ 9760
	.field  	118,16			; _parameters[30]._stringbuf[5] @ 9776
	.field  	76,16			; _parameters[30]._stringbuf[6] @ 9792
	.field  	32,16			; _parameters[30]._stringbuf[7] @ 9808
	.field  	32,16			; _parameters[30]._stringbuf[8] @ 9824
	.field  	32,16			; _parameters[30]._stringbuf[9] @ 9840
	.field  	32,16			; _parameters[30]._stringbuf[10] @ 9856
	.field  	0,16			; _parameters[30]._stringbuf[11] @ 9872
	.field  	_SetupAlarmLevels,32		; _parameters[30]._paramfunc @ 9888
	.field  	2058,16			; _parameters[31]._reg @ 9920
	.field  	0,16			; _parameters[31]._lowlim @ 9936
	.field  	2500,16			; _parameters[31]._hilim @ 9952
	.space	16
	.field  	_allsensors+14,32		; _parameters[31]._ptr @ 9984
	.field  	65,16			; _parameters[31]._stringbuf[0] @ 10016
	.field  	108,16			; _parameters[31]._stringbuf[1] @ 10032
	.field  	114,16			; _parameters[31]._stringbuf[2] @ 10048
	.field  	68,16			; _parameters[31]._stringbuf[3] @ 10064
	.field  	101,16			; _parameters[31]._stringbuf[4] @ 10080
	.field  	118,16			; _parameters[31]._stringbuf[5] @ 10096
	.field  	76,16			; _parameters[31]._stringbuf[6] @ 10112
	.field  	32,16			; _parameters[31]._stringbuf[7] @ 10128
	.field  	32,16			; _parameters[31]._stringbuf[8] @ 10144
	.field  	32,16			; _parameters[31]._stringbuf[9] @ 10160
	.field  	32,16			; _parameters[31]._stringbuf[10] @ 10176
	.field  	0,16			; _parameters[31]._stringbuf[11] @ 10192
	.field  	_SetupAlarmLevels,32		; _parameters[31]._paramfunc @ 10208
	.field  	2059,16			; _parameters[32]._reg @ 10240
	.field  	0,16			; _parameters[32]._lowlim @ 10256
	.field  	2500,16			; _parameters[32]._hilim @ 10272
	.space	16
	.field  	_allsensors+15,32		; _parameters[32]._ptr @ 10304
	.field  	67,16			; _parameters[32]._stringbuf[0] @ 10336
	.field  	121,16			; _parameters[32]._stringbuf[1] @ 10352
	.field  	108,16			; _parameters[32]._stringbuf[2] @ 10368
	.field  	65,16			; _parameters[32]._stringbuf[3] @ 10384
	.field  	114,16			; _parameters[32]._stringbuf[4] @ 10400
	.field  	109,16			; _parameters[32]._stringbuf[5] @ 10416
	.field  	76,16			; _parameters[32]._stringbuf[6] @ 10432
	.field  	32,16			; _parameters[32]._stringbuf[7] @ 10448
	.field  	32,16			; _parameters[32]._stringbuf[8] @ 10464
	.field  	32,16			; _parameters[32]._stringbuf[9] @ 10480
	.field  	32,16			; _parameters[32]._stringbuf[10] @ 10496
	.field  	0,16			; _parameters[32]._stringbuf[11] @ 10512
	.field  	_SetupAlarmLevels,32		; _parameters[32]._paramfunc @ 10528
	.field  	2062,16			; _parameters[33]._reg @ 10560
	.field  	50,16			; _parameters[33]._lowlim @ 10576
	.field  	167,16			; _parameters[33]._hilim @ 10592
	.space	16
	.field  	_allsensors+3,32		; _parameters[33]._ptr @ 10624
	.field  	78,16			; _parameters[33]._stringbuf[0] @ 10656
	.field  	111,16			; _parameters[33]._stringbuf[1] @ 10672
	.field  	109,16			; _parameters[33]._stringbuf[2] @ 10688
	.field  	83,16			; _parameters[33]._stringbuf[3] @ 10704
	.field  	112,16			; _parameters[33]._stringbuf[4] @ 10720
	.field  	101,16			; _parameters[33]._stringbuf[5] @ 10736
	.field  	101,16			; _parameters[33]._stringbuf[6] @ 10752
	.field  	100,16			; _parameters[33]._stringbuf[7] @ 10768
	.field  	32,16			; _parameters[33]._stringbuf[8] @ 10784
	.field  	32,16			; _parameters[33]._stringbuf[9] @ 10800
	.field  	32,16			; _parameters[33]._stringbuf[10] @ 10816
	.field  	0,16			; _parameters[33]._stringbuf[11] @ 10832
	.field  	_SpeedCompStructUpdate,32		; _parameters[33]._paramfunc @ 10848
	.field  	2064,16			; _parameters[34]._reg @ 10880
	.field  	0,16			; _parameters[34]._lowlim @ 10896
	.field  	10100,16			; _parameters[34]._hilim @ 10912
	.space	16
	.field  	_wiosettings+2,32		; _parameters[34]._ptr @ 10944
	.field  	87,16			; _parameters[34]._stringbuf[0] @ 10976
	.field  	73,16			; _parameters[34]._stringbuf[1] @ 10992
	.field  	79,16			; _parameters[34]._stringbuf[2] @ 11008
	.field  	65,16			; _parameters[34]._stringbuf[3] @ 11024
	.field  	108,16			; _parameters[34]._stringbuf[4] @ 11040
	.field  	97,16			; _parameters[34]._stringbuf[5] @ 11056
	.field  	114,16			; _parameters[34]._stringbuf[6] @ 11072
	.field  	109,16			; _parameters[34]._stringbuf[7] @ 11088
	.field  	85,16			; _parameters[34]._stringbuf[8] @ 11104
	.field  	76,16			; _parameters[34]._stringbuf[9] @ 11120
	.field  	32,16			; _parameters[34]._stringbuf[10] @ 11136
	.field  	0,16			; _parameters[34]._stringbuf[11] @ 11152
	.field  	_WioUpdate,32		; _parameters[34]._paramfunc @ 11168
	.field  	2065,16			; _parameters[35]._reg @ 11200
	.field  	0,16			; _parameters[35]._lowlim @ 11216
	.field  	10100,16			; _parameters[35]._hilim @ 11232
	.space	16
	.field  	_wiosettings+3,32		; _parameters[35]._ptr @ 11264
	.field  	87,16			; _parameters[35]._stringbuf[0] @ 11296
	.field  	73,16			; _parameters[35]._stringbuf[1] @ 11312
	.field  	79,16			; _parameters[35]._stringbuf[2] @ 11328
	.field  	65,16			; _parameters[35]._stringbuf[3] @ 11344
	.field  	108,16			; _parameters[35]._stringbuf[4] @ 11360
	.field  	97,16			; _parameters[35]._stringbuf[5] @ 11376
	.field  	114,16			; _parameters[35]._stringbuf[6] @ 11392
	.field  	109,16			; _parameters[35]._stringbuf[7] @ 11408
	.field  	76,16			; _parameters[35]._stringbuf[8] @ 11424
	.field  	32,16			; _parameters[35]._stringbuf[9] @ 11440
	.field  	32,16			; _parameters[35]._stringbuf[10] @ 11456
	.field  	0,16			; _parameters[35]._stringbuf[11] @ 11472
	.field  	_WioUpdate,32		; _parameters[35]._paramfunc @ 11488
	.field  	2066,16			; _parameters[36]._reg @ 11520
	.field  	0,16			; _parameters[36]._lowlim @ 11536
	.field  	10100,16			; _parameters[36]._hilim @ 11552
	.space	16
	.field  	_wiosettings+4,32		; _parameters[36]._ptr @ 11584
	.field  	87,16			; _parameters[36]._stringbuf[0] @ 11616
	.field  	73,16			; _parameters[36]._stringbuf[1] @ 11632
	.field  	79,16			; _parameters[36]._stringbuf[2] @ 11648
	.field  	72,16			; _parameters[36]._stringbuf[3] @ 11664
	.field  	115,16			; _parameters[36]._stringbuf[4] @ 11680
	.field  	121,16			; _parameters[36]._stringbuf[5] @ 11696
	.field  	116,16			; _parameters[36]._stringbuf[6] @ 11712
	.field  	76,16			; _parameters[36]._stringbuf[7] @ 11728
	.field  	32,16			; _parameters[36]._stringbuf[8] @ 11744
	.field  	32,16			; _parameters[36]._stringbuf[9] @ 11760
	.field  	32,16			; _parameters[36]._stringbuf[10] @ 11776
	.field  	0,16			; _parameters[36]._stringbuf[11] @ 11792
	.field  	_WioUpdate,32		; _parameters[36]._paramfunc @ 11808
	.field  	2067,16			; _parameters[37]._reg @ 11840
	.field  	0,16			; _parameters[37]._lowlim @ 11856
	.field  	60,16			; _parameters[37]._hilim @ 11872
	.space	16
	.field  	_allsensors+6,32		; _parameters[37]._ptr @ 11904
	.field  	82,16			; _parameters[37]._stringbuf[0] @ 11936
	.field  	101,16			; _parameters[37]._stringbuf[1] @ 11952
	.field  	102,16			; _parameters[37]._stringbuf[2] @ 11968
	.field  	108,16			; _parameters[37]._stringbuf[3] @ 11984
	.field  	97,16			; _parameters[37]._stringbuf[4] @ 12000
	.field  	115,16			; _parameters[37]._stringbuf[5] @ 12016
	.field  	104,16			; _parameters[37]._stringbuf[6] @ 12032
	.field  	32,16			; _parameters[37]._stringbuf[7] @ 12048
	.field  	32,16			; _parameters[37]._stringbuf[8] @ 12064
	.field  	32,16			; _parameters[37]._stringbuf[9] @ 12080
	.field  	32,16			; _parameters[37]._stringbuf[10] @ 12096
	.field  	0,16			; _parameters[37]._stringbuf[11] @ 12112
	.field  	_UpdateAllSensor,32		; _parameters[37]._paramfunc @ 12128
	.field  	2068,16			; _parameters[38]._reg @ 12160
	.field  	50,16			; _parameters[38]._lowlim @ 12176
	.field  	2000,16			; _parameters[38]._hilim @ 12192
	.space	16
	.field  	_config,32		; _parameters[38]._ptr @ 12224
	.field  	70,16			; _parameters[38]._stringbuf[0] @ 12256
	.field  	105,16			; _parameters[38]._stringbuf[1] @ 12272
	.field  	108,16			; _parameters[38]._stringbuf[2] @ 12288
	.field  	116,16			; _parameters[38]._stringbuf[3] @ 12304
	.field  	101,16			; _parameters[38]._stringbuf[4] @ 12320
	.field  	114,16			; _parameters[38]._stringbuf[5] @ 12336
	.field  	99,16			; _parameters[38]._stringbuf[6] @ 12352
	.field  	111,16			; _parameters[38]._stringbuf[7] @ 12368
	.field  	101,16			; _parameters[38]._stringbuf[8] @ 12384
	.field  	102,16			; _parameters[38]._stringbuf[9] @ 12400
	.field  	32,16			; _parameters[38]._stringbuf[10] @ 12416
	.field  	0,16			; _parameters[38]._stringbuf[11] @ 12432
	.field  	_WriteConfigStructtoNVMEM,32		; _parameters[38]._paramfunc @ 12448
	.field  	2069,16			; _parameters[39]._reg @ 12480
	.field  	1,16			; _parameters[39]._lowlim @ 12496
	.field  	1000,16			; _parameters[39]._hilim @ 12512
	.space	16
	.field  	_allsensors+35,32		; _parameters[39]._ptr @ 12544
	.field  	80,16			; _parameters[39]._stringbuf[0] @ 12576
	.field  	114,16			; _parameters[39]._stringbuf[1] @ 12592
	.field  	101,16			; _parameters[39]._stringbuf[2] @ 12608
	.field  	119,16			; _parameters[39]._stringbuf[3] @ 12624
	.field  	97,16			; _parameters[39]._stringbuf[4] @ 12640
	.field  	114,16			; _parameters[39]._stringbuf[5] @ 12656
	.field  	110,16			; _parameters[39]._stringbuf[6] @ 12672
	.field  	105,16			; _parameters[39]._stringbuf[7] @ 12688
	.field  	110,16			; _parameters[39]._stringbuf[8] @ 12704
	.field  	103,16			; _parameters[39]._stringbuf[9] @ 12720
	.field  	32,16			; _parameters[39]._stringbuf[10] @ 12736
	.field  	0,16			; _parameters[39]._stringbuf[11] @ 12752
	.field  	_UpdateAllSensor,32		; _parameters[39]._paramfunc @ 12768
	.field  	2070,16			; _parameters[40]._reg @ 12800
	.field  	0,16			; _parameters[40]._lowlim @ 12816
	.field  	2500,16			; _parameters[40]._hilim @ 12832
	.space	16
	.field  	_allsensors+36,32		; _parameters[40]._ptr @ 12864
	.field  	80,16			; _parameters[40]._stringbuf[0] @ 12896
	.field  	114,16			; _parameters[40]._stringbuf[1] @ 12912
	.field  	101,16			; _parameters[40]._stringbuf[2] @ 12928
	.field  	87,16			; _parameters[40]._stringbuf[3] @ 12944
	.field  	97,16			; _parameters[40]._stringbuf[4] @ 12960
	.field  	114,16			; _parameters[40]._stringbuf[5] @ 12976
	.field  	110,16			; _parameters[40]._stringbuf[6] @ 12992
	.field  	76,16			; _parameters[40]._stringbuf[7] @ 13008
	.field  	32,16			; _parameters[40]._stringbuf[8] @ 13024
	.field  	32,16			; _parameters[40]._stringbuf[9] @ 13040
	.field  	32,16			; _parameters[40]._stringbuf[10] @ 13056
	.field  	0,16			; _parameters[40]._stringbuf[11] @ 13072
	.field  	_UpdateAllSensor,32		; _parameters[40]._paramfunc @ 13088
	.field  	2075,16			; _parameters[41]._reg @ 13120
	.field  	1,16			; _parameters[41]._lowlim @ 13136
	.field  	5000,16			; _parameters[41]._hilim @ 13152
	.space	16
	.field  	_speedcompcoeffs+15,32		; _parameters[41]._ptr @ 13184
	.field  	65,16			; _parameters[41]._stringbuf[0] @ 13216
	.field  	112,16			; _parameters[41]._stringbuf[1] @ 13232
	.field  	112,16			; _parameters[41]._stringbuf[2] @ 13248
	.field  	83,16			; _parameters[41]._stringbuf[3] @ 13264
	.field  	97,16			; _parameters[41]._stringbuf[4] @ 13280
	.field  	109,16			; _parameters[41]._stringbuf[5] @ 13296
	.field  	112,16			; _parameters[41]._stringbuf[6] @ 13312
	.field  	108,16			; _parameters[41]._stringbuf[7] @ 13328
	.field  	101,16			; _parameters[41]._stringbuf[8] @ 13344
	.field  	115,16			; _parameters[41]._stringbuf[9] @ 13360
	.field  	32,16			; _parameters[41]._stringbuf[10] @ 13376
	.field  	0,16			; _parameters[41]._stringbuf[11] @ 13392
	.field  	_SpeedCompStructUpdate,32		; _parameters[41]._paramfunc @ 13408
	.field  	2076,16			; _parameters[42]._reg @ 13440
	.field  	0,16			; _parameters[42]._lowlim @ 13456
	.field  	2500,16			; _parameters[42]._hilim @ 13472
	.space	16
	.field  	_allsensors+39,32		; _parameters[42]._ptr @ 13504
	.field  	83,16			; _parameters[42]._stringbuf[0] @ 13536
	.field  	108,16			; _parameters[42]._stringbuf[1] @ 13552
	.field  	119,16			; _parameters[42]._stringbuf[2] @ 13568
	.field  	67,16			; _parameters[42]._stringbuf[3] @ 13584
	.field  	97,16			; _parameters[42]._stringbuf[4] @ 13600
	.field  	108,16			; _parameters[42]._stringbuf[5] @ 13616
	.field  	76,16			; _parameters[42]._stringbuf[6] @ 13632
	.field  	32,16			; _parameters[42]._stringbuf[7] @ 13648
	.field  	32,16			; _parameters[42]._stringbuf[8] @ 13664
	.field  	32,16			; _parameters[42]._stringbuf[9] @ 13680
	.field  	32,16			; _parameters[42]._stringbuf[10] @ 13696
	.field  	0,16			; _parameters[42]._stringbuf[11] @ 13712
	.field  	_SetupAlarmLevels,32		; _parameters[42]._paramfunc @ 13728
	.field  	2077,16			; _parameters[43]._reg @ 13760
	.field  	0,16			; _parameters[43]._lowlim @ 13776
	.field  	2500,16			; _parameters[43]._hilim @ 13792
	.space	16
	.field  	_allsensors+40,32		; _parameters[43]._ptr @ 13824
	.field  	65,16			; _parameters[43]._stringbuf[0] @ 13856
	.field  	108,16			; _parameters[43]._stringbuf[1] @ 13872
	.field  	114,16			; _parameters[43]._stringbuf[2] @ 13888
	.field  	67,16			; _parameters[43]._stringbuf[3] @ 13904
	.field  	97,16			; _parameters[43]._stringbuf[4] @ 13920
	.field  	108,16			; _parameters[43]._stringbuf[5] @ 13936
	.field  	76,16			; _parameters[43]._stringbuf[6] @ 13952
	.field  	32,16			; _parameters[43]._stringbuf[7] @ 13968
	.field  	32,16			; _parameters[43]._stringbuf[8] @ 13984
	.field  	32,16			; _parameters[43]._stringbuf[9] @ 14000
	.field  	32,16			; _parameters[43]._stringbuf[10] @ 14016
	.field  	0,16			; _parameters[43]._stringbuf[11] @ 14032
	.field  	_SetupAlarmLevels,32		; _parameters[43]._paramfunc @ 14048
	.field  	2078,16			; _parameters[44]._reg @ 14080
	.field  	0,16			; _parameters[44]._lowlim @ 14096
	.field  	2500,16			; _parameters[44]._hilim @ 14112
	.space	16
	.field  	_allsensors+41,32		; _parameters[44]._ptr @ 14144
	.field  	67,16			; _parameters[44]._stringbuf[0] @ 14176
	.field  	121,16			; _parameters[44]._stringbuf[1] @ 14192
	.field  	108,16			; _parameters[44]._stringbuf[2] @ 14208
	.field  	65,16			; _parameters[44]._stringbuf[3] @ 14224
	.field  	108,16			; _parameters[44]._stringbuf[4] @ 14240
	.field  	114,16			; _parameters[44]._stringbuf[5] @ 14256
	.field  	67,16			; _parameters[44]._stringbuf[6] @ 14272
	.field  	97,16			; _parameters[44]._stringbuf[7] @ 14288
	.field  	108,16			; _parameters[44]._stringbuf[8] @ 14304
	.field  	76,16			; _parameters[44]._stringbuf[9] @ 14320
	.field  	32,16			; _parameters[44]._stringbuf[10] @ 14336
	.field  	0,16			; _parameters[44]._stringbuf[11] @ 14352
	.field  	_SetupAlarmLevels,32		; _parameters[44]._paramfunc @ 14368
	.field  	2079,16			; _parameters[45]._reg @ 14400
	.field  	0,16			; _parameters[45]._lowlim @ 14416
	.field  	0,16			; _parameters[45]._hilim @ 14432
	.space	16
	.field  	_settings+24,32		; _parameters[45]._ptr @ 14464
	.field  	0,16			; _parameters[45]._stringbuf[0] @ 14496
	.space	176
	.field  	0,32			; _parameters[45]._paramfunc @ 14688
	.field  	2080,16			; _parameters[46]._reg @ 14720
	.field  	0,16			; _parameters[46]._lowlim @ 14736
	.field  	0,16			; _parameters[46]._hilim @ 14752
	.space	16
	.field  	_settings+25,32		; _parameters[46]._ptr @ 14784
	.field  	0,16			; _parameters[46]._stringbuf[0] @ 14816
	.space	176
	.field  	0,32			; _parameters[46]._paramfunc @ 15008
	.field  	2081,16			; _parameters[47]._reg @ 15040
	.field  	0,16			; _parameters[47]._lowlim @ 15056
	.field  	0,16			; _parameters[47]._hilim @ 15072
	.space	16
	.field  	_settings+26,32		; _parameters[47]._ptr @ 15104
	.field  	0,16			; _parameters[47]._stringbuf[0] @ 15136
	.space	176
	.field  	0,32			; _parameters[47]._paramfunc @ 15328
	.field  	2082,16			; _parameters[48]._reg @ 15360
	.field  	0,16			; _parameters[48]._lowlim @ 15376
	.field  	0,16			; _parameters[48]._hilim @ 15392
	.space	16
	.field  	_settings+27,32		; _parameters[48]._ptr @ 15424
	.field  	0,16			; _parameters[48]._stringbuf[0] @ 15456
	.space	176
	.field  	0,32			; _parameters[48]._paramfunc @ 15648
	.field  	2083,16			; _parameters[49]._reg @ 15680
	.field  	0,16			; _parameters[49]._lowlim @ 15696
	.field  	0,16			; _parameters[49]._hilim @ 15712
	.space	16
	.field  	_settings+28,32		; _parameters[49]._ptr @ 15744
	.field  	0,16			; _parameters[49]._stringbuf[0] @ 15776
	.space	176
	.field  	0,32			; _parameters[49]._paramfunc @ 15968
	.field  	2084,16			; _parameters[50]._reg @ 16000
	.field  	0,16			; _parameters[50]._lowlim @ 16016
	.field  	65535,16			; _parameters[50]._hilim @ 16032
	.space	16
	.field  	_wiosettings+5,32		; _parameters[50]._ptr @ 16064
	.field  	87,16			; _parameters[50]._stringbuf[0] @ 16096
	.field  	73,16			; _parameters[50]._stringbuf[1] @ 16112
	.field  	79,16			; _parameters[50]._stringbuf[2] @ 16128
	.field  	83,16			; _parameters[50]._stringbuf[3] @ 16144
	.field  	99,16			; _parameters[50]._stringbuf[4] @ 16160
	.field  	97,16			; _parameters[50]._stringbuf[5] @ 16176
	.field  	108,16			; _parameters[50]._stringbuf[6] @ 16192
	.field  	101,16			; _parameters[50]._stringbuf[7] @ 16208
	.field  	77,16			; _parameters[50]._stringbuf[8] @ 16224
	.field  	105,16			; _parameters[50]._stringbuf[9] @ 16240
	.field  	110,16			; _parameters[50]._stringbuf[10] @ 16256
	.field  	0,16			; _parameters[50]._stringbuf[11] @ 16272
	.field  	_WioUpdate,32		; _parameters[50]._paramfunc @ 16288
	.field  	2085,16			; _parameters[51]._reg @ 16320
	.field  	0,16			; _parameters[51]._lowlim @ 16336
	.field  	65535,16			; _parameters[51]._hilim @ 16352
	.space	16
	.field  	_wiosettings+6,32		; _parameters[51]._ptr @ 16384
	.field  	87,16			; _parameters[51]._stringbuf[0] @ 16416
	.field  	73,16			; _parameters[51]._stringbuf[1] @ 16432
	.field  	79,16			; _parameters[51]._stringbuf[2] @ 16448
	.field  	83,16			; _parameters[51]._stringbuf[3] @ 16464
	.field  	99,16			; _parameters[51]._stringbuf[4] @ 16480
	.field  	97,16			; _parameters[51]._stringbuf[5] @ 16496
	.field  	108,16			; _parameters[51]._stringbuf[6] @ 16512
	.field  	101,16			; _parameters[51]._stringbuf[7] @ 16528
	.field  	77,16			; _parameters[51]._stringbuf[8] @ 16544
	.field  	97,16			; _parameters[51]._stringbuf[9] @ 16560
	.field  	120,16			; _parameters[51]._stringbuf[10] @ 16576
	.field  	0,16			; _parameters[51]._stringbuf[11] @ 16592
	.field  	_WioUpdate,32		; _parameters[51]._paramfunc @ 16608
	.field  	2086,16			; _parameters[52]._reg @ 16640
	.field  	0,16			; _parameters[52]._lowlim @ 16656
	.field  	65535,16			; _parameters[52]._hilim @ 16672
	.space	16
	.field  	_wiosettings+7,32		; _parameters[52]._ptr @ 16704
	.field  	87,16			; _parameters[52]._stringbuf[0] @ 16736
	.field  	73,16			; _parameters[52]._stringbuf[1] @ 16752
	.field  	79,16			; _parameters[52]._stringbuf[2] @ 16768
	.field  	85,16			; _parameters[52]._stringbuf[3] @ 16784
	.field  	110,16			; _parameters[52]._stringbuf[4] @ 16800
	.field  	105,16			; _parameters[52]._stringbuf[5] @ 16816
	.field  	116,16			; _parameters[52]._stringbuf[6] @ 16832
	.field  	115,16			; _parameters[52]._stringbuf[7] @ 16848
	.field  	0,16			; _parameters[52]._stringbuf[8] @ 16864
	.space	48
	.field  	_WioUpdate,32		; _parameters[52]._paramfunc @ 16928
	.field  	2087,16			; _parameters[53]._reg @ 16960
	.field  	0,16			; _parameters[53]._lowlim @ 16976
	.field  	21000,16			; _parameters[53]._hilim @ 16992
	.space	16
	.field  	_dcmodechecks,32		; _parameters[53]._ptr @ 17024
	.field  	68,16			; _parameters[53]._stringbuf[0] @ 17056
	.field  	67,16			; _parameters[53]._stringbuf[1] @ 17072
	.field  	73,16			; _parameters[53]._stringbuf[2] @ 17088
	.field  	100,16			; _parameters[53]._stringbuf[3] @ 17104
	.field  	101,16			; _parameters[53]._stringbuf[4] @ 17120
	.field  	97,16			; _parameters[53]._stringbuf[5] @ 17136
	.field  	108,16			; _parameters[53]._stringbuf[6] @ 17152
	.field  	76,16			; _parameters[53]._stringbuf[7] @ 17168
	.field  	111,16			; _parameters[53]._stringbuf[8] @ 17184
	.field  	0,16			; _parameters[53]._stringbuf[9] @ 17200
	.space	32
	.field  	_WriteDCModeChecksSettingstoNVMEM,32		; _parameters[53]._paramfunc @ 17248
	.field  	2088,16			; _parameters[54]._reg @ 17280
	.field  	0,16			; _parameters[54]._lowlim @ 17296
	.field  	21000,16			; _parameters[54]._hilim @ 17312
	.space	16
	.field  	_dcmodechecks+1,32		; _parameters[54]._ptr @ 17344
	.field  	68,16			; _parameters[54]._stringbuf[0] @ 17376
	.field  	67,16			; _parameters[54]._stringbuf[1] @ 17392
	.field  	73,16			; _parameters[54]._stringbuf[2] @ 17408
	.field  	100,16			; _parameters[54]._stringbuf[3] @ 17424
	.field  	101,16			; _parameters[54]._stringbuf[4] @ 17440
	.field  	97,16			; _parameters[54]._stringbuf[5] @ 17456
	.field  	108,16			; _parameters[54]._stringbuf[6] @ 17472
	.field  	72,16			; _parameters[54]._stringbuf[7] @ 17488
	.field  	105,16			; _parameters[54]._stringbuf[8] @ 17504
	.field  	0,16			; _parameters[54]._stringbuf[9] @ 17520
	.space	32
	.field  	_WriteDCModeChecksSettingstoNVMEM,32		; _parameters[54]._paramfunc @ 17568
	.field  	2089,16			; _parameters[55]._reg @ 17600
	.field  	0,16			; _parameters[55]._lowlim @ 17616
	.field  	21000,16			; _parameters[55]._hilim @ 17632
	.space	16
	.field  	_dcmodechecks+2,32		; _parameters[55]._ptr @ 17664
	.field  	68,16			; _parameters[55]._stringbuf[0] @ 17696
	.field  	67,16			; _parameters[55]._stringbuf[1] @ 17712
	.field  	79,16			; _parameters[55]._stringbuf[2] @ 17728
	.field  	75,16			; _parameters[55]._stringbuf[3] @ 17744
	.field  	76,16			; _parameters[55]._stringbuf[4] @ 17760
	.field  	111,16			; _parameters[55]._stringbuf[5] @ 17776
	.field  	0,16			; _parameters[55]._stringbuf[6] @ 17792
	.space	80
	.field  	_WriteDCModeChecksSettingstoNVMEM,32		; _parameters[55]._paramfunc @ 17888
	.field  	2090,16			; _parameters[56]._reg @ 17920
	.field  	0,16			; _parameters[56]._lowlim @ 17936
	.field  	21000,16			; _parameters[56]._hilim @ 17952
	.space	16
	.field  	_dcmodechecks+3,32		; _parameters[56]._ptr @ 17984
	.field  	68,16			; _parameters[56]._stringbuf[0] @ 18016
	.field  	67,16			; _parameters[56]._stringbuf[1] @ 18032
	.field  	79,16			; _parameters[56]._stringbuf[2] @ 18048
	.field  	75,16			; _parameters[56]._stringbuf[3] @ 18064
	.field  	72,16			; _parameters[56]._stringbuf[4] @ 18080
	.field  	105,16			; _parameters[56]._stringbuf[5] @ 18096
	.field  	0,16			; _parameters[56]._stringbuf[6] @ 18112
	.space	80
	.field  	_WriteDCModeChecksSettingstoNVMEM,32		; _parameters[56]._paramfunc @ 18208
	.field  	2091,16			; _parameters[57]._reg @ 18240
	.field  	0,16			; _parameters[57]._lowlim @ 18256
	.field  	21000,16			; _parameters[57]._hilim @ 18272
	.space	16
	.field  	_dcmodechecks+4,32		; _parameters[57]._ptr @ 18304
	.field  	68,16			; _parameters[57]._stringbuf[0] @ 18336
	.field  	67,16			; _parameters[57]._stringbuf[1] @ 18352
	.field  	67,16			; _parameters[57]._stringbuf[2] @ 18368
	.field  	121,16			; _parameters[57]._stringbuf[3] @ 18384
	.field  	67,16			; _parameters[57]._stringbuf[4] @ 18400
	.field  	111,16			; _parameters[57]._stringbuf[5] @ 18416
	.field  	109,16			; _parameters[57]._stringbuf[6] @ 18432
	.field  	112,16			; _parameters[57]._stringbuf[7] @ 18448
	.field  	77,16			; _parameters[57]._stringbuf[8] @ 18464
	.field  	97,16			; _parameters[57]._stringbuf[9] @ 18480
	.field  	120,16			; _parameters[57]._stringbuf[10] @ 18496
	.field  	0,16			; _parameters[57]._stringbuf[11] @ 18512
	.field  	_WriteDCModeChecksSettingstoNVMEM,32		; _parameters[57]._paramfunc @ 18528
	.field  	2092,16			; _parameters[58]._reg @ 18560
	.field  	0,16			; _parameters[58]._lowlim @ 18576
	.field  	21000,16			; _parameters[58]._hilim @ 18592
	.space	16
	.field  	_dcmodechecks+5,32		; _parameters[58]._ptr @ 18624
	.field  	68,16			; _parameters[58]._stringbuf[0] @ 18656
	.field  	67,16			; _parameters[58]._stringbuf[1] @ 18672
	.field  	67,16			; _parameters[58]._stringbuf[2] @ 18688
	.field  	121,16			; _parameters[58]._stringbuf[3] @ 18704
	.field  	67,16			; _parameters[58]._stringbuf[4] @ 18720
	.field  	111,16			; _parameters[58]._stringbuf[5] @ 18736
	.field  	109,16			; _parameters[58]._stringbuf[6] @ 18752
	.field  	112,16			; _parameters[58]._stringbuf[7] @ 18768
	.field  	84,16			; _parameters[58]._stringbuf[8] @ 18784
	.field  	104,16			; _parameters[58]._stringbuf[9] @ 18800
	.field  	114,16			; _parameters[58]._stringbuf[10] @ 18816
	.field  	0,16			; _parameters[58]._stringbuf[11] @ 18832
	.field  	_WriteDCModeChecksSettingstoNVMEM,32		; _parameters[58]._paramfunc @ 18848
	.field  	3002,16			; _parameters[59]._reg @ 18880
	.field  	10,16			; _parameters[59]._lowlim @ 18896
	.field  	110,16			; _parameters[59]._hilim @ 18912
	.space	16
	.field  	_speedcompcoeffs+2,32		; _parameters[59]._ptr @ 18944
	.field  	83,16			; _parameters[59]._stringbuf[0] @ 18976
	.field  	112,16			; _parameters[59]._stringbuf[1] @ 18992
	.field  	101,16			; _parameters[59]._stringbuf[2] @ 19008
	.field  	101,16			; _parameters[59]._stringbuf[3] @ 19024
	.field  	100,16			; _parameters[59]._stringbuf[4] @ 19040
	.field  	66,16			; _parameters[59]._stringbuf[5] @ 19056
	.field  	110,16			; _parameters[59]._stringbuf[6] @ 19072
	.field  	100,16			; _parameters[59]._stringbuf[7] @ 19088
	.field  	0,16			; _parameters[59]._stringbuf[8] @ 19104
	.space	48
	.field  	_SpeedCompStructUpdate,32		; _parameters[59]._paramfunc @ 19168
	.field  	3003,16			; _parameters[60]._reg @ 19200
	.field  	10,16			; _parameters[60]._lowlim @ 19216
	.field  	110,16			; _parameters[60]._hilim @ 19232
	.space	16
	.field  	_speedcompcoeffs+3,32		; _parameters[60]._ptr @ 19264
	.field  	83,16			; _parameters[60]._stringbuf[0] @ 19296
	.field  	112,16			; _parameters[60]._stringbuf[1] @ 19312
	.field  	101,16			; _parameters[60]._stringbuf[2] @ 19328
	.field  	101,16			; _parameters[60]._stringbuf[3] @ 19344
	.field  	100,16			; _parameters[60]._stringbuf[4] @ 19360
	.field  	66,16			; _parameters[60]._stringbuf[5] @ 19376
	.field  	110,16			; _parameters[60]._stringbuf[6] @ 19392
	.field  	100,16			; _parameters[60]._stringbuf[7] @ 19408
	.field  	0,16			; _parameters[60]._stringbuf[8] @ 19424
	.space	48
	.field  	_SpeedCompStructUpdate,32		; _parameters[60]._paramfunc @ 19488
	.field  	3004,16			; _parameters[61]._reg @ 19520
	.field  	10,16			; _parameters[61]._lowlim @ 19536
	.field  	110,16			; _parameters[61]._hilim @ 19552
	.space	16
	.field  	_speedcompcoeffs+4,32		; _parameters[61]._ptr @ 19584
	.field  	83,16			; _parameters[61]._stringbuf[0] @ 19616
	.field  	112,16			; _parameters[61]._stringbuf[1] @ 19632
	.field  	101,16			; _parameters[61]._stringbuf[2] @ 19648
	.field  	101,16			; _parameters[61]._stringbuf[3] @ 19664
	.field  	100,16			; _parameters[61]._stringbuf[4] @ 19680
	.field  	66,16			; _parameters[61]._stringbuf[5] @ 19696
	.field  	110,16			; _parameters[61]._stringbuf[6] @ 19712
	.field  	100,16			; _parameters[61]._stringbuf[7] @ 19728
	.field  	0,16			; _parameters[61]._stringbuf[8] @ 19744
	.space	48
	.field  	_SpeedCompStructUpdate,32		; _parameters[61]._paramfunc @ 19808
	.field  	3005,16			; _parameters[62]._reg @ 19840
	.field  	10,16			; _parameters[62]._lowlim @ 19856
	.field  	110,16			; _parameters[62]._hilim @ 19872
	.space	16
	.field  	_speedcompcoeffs+5,32		; _parameters[62]._ptr @ 19904
	.field  	83,16			; _parameters[62]._stringbuf[0] @ 19936
	.field  	112,16			; _parameters[62]._stringbuf[1] @ 19952
	.field  	101,16			; _parameters[62]._stringbuf[2] @ 19968
	.field  	101,16			; _parameters[62]._stringbuf[3] @ 19984
	.field  	100,16			; _parameters[62]._stringbuf[4] @ 20000
	.field  	66,16			; _parameters[62]._stringbuf[5] @ 20016
	.field  	110,16			; _parameters[62]._stringbuf[6] @ 20032
	.field  	100,16			; _parameters[62]._stringbuf[7] @ 20048
	.field  	0,16			; _parameters[62]._stringbuf[8] @ 20064
	.space	48
	.field  	_SpeedCompStructUpdate,32		; _parameters[62]._paramfunc @ 20128
	.field  	3006,16			; _parameters[63]._reg @ 20160
	.field  	10,16			; _parameters[63]._lowlim @ 20176
	.field  	110,16			; _parameters[63]._hilim @ 20192
	.space	16
	.field  	_speedcompcoeffs+6,32		; _parameters[63]._ptr @ 20224
	.field  	83,16			; _parameters[63]._stringbuf[0] @ 20256
	.field  	112,16			; _parameters[63]._stringbuf[1] @ 20272
	.field  	101,16			; _parameters[63]._stringbuf[2] @ 20288
	.field  	101,16			; _parameters[63]._stringbuf[3] @ 20304
	.field  	100,16			; _parameters[63]._stringbuf[4] @ 20320
	.field  	66,16			; _parameters[63]._stringbuf[5] @ 20336
	.field  	110,16			; _parameters[63]._stringbuf[6] @ 20352
	.field  	100,16			; _parameters[63]._stringbuf[7] @ 20368
	.field  	0,16			; _parameters[63]._stringbuf[8] @ 20384
	.space	48
	.field  	_SpeedCompStructUpdate,32		; _parameters[63]._paramfunc @ 20448
	.field  	3007,16			; _parameters[64]._reg @ 20480
	.field  	10,16			; _parameters[64]._lowlim @ 20496
	.field  	110,16			; _parameters[64]._hilim @ 20512
	.space	16
	.field  	_speedcompcoeffs+7,32		; _parameters[64]._ptr @ 20544
	.field  	83,16			; _parameters[64]._stringbuf[0] @ 20576
	.field  	112,16			; _parameters[64]._stringbuf[1] @ 20592
	.field  	101,16			; _parameters[64]._stringbuf[2] @ 20608
	.field  	101,16			; _parameters[64]._stringbuf[3] @ 20624
	.field  	100,16			; _parameters[64]._stringbuf[4] @ 20640
	.field  	66,16			; _parameters[64]._stringbuf[5] @ 20656
	.field  	110,16			; _parameters[64]._stringbuf[6] @ 20672
	.field  	100,16			; _parameters[64]._stringbuf[7] @ 20688
	.field  	0,16			; _parameters[64]._stringbuf[8] @ 20704
	.space	48
	.field  	_SpeedCompStructUpdate,32		; _parameters[64]._paramfunc @ 20768
	.field  	3008,16			; _parameters[65]._reg @ 20800
	.field  	10,16			; _parameters[65]._lowlim @ 20816
	.field  	1000,16			; _parameters[65]._hilim @ 20832
	.space	16
	.field  	_speedcompcoeffs+8,32		; _parameters[65]._ptr @ 20864
	.field  	83,16			; _parameters[65]._stringbuf[0] @ 20896
	.field  	108,16			; _parameters[65]._stringbuf[1] @ 20912
	.field  	111,16			; _parameters[65]._stringbuf[2] @ 20928
	.field  	112,16			; _parameters[65]._stringbuf[3] @ 20944
	.field  	101,16			; _parameters[65]._stringbuf[4] @ 20960
	.field  	67,16			; _parameters[65]._stringbuf[5] @ 20976
	.field  	111,16			; _parameters[65]._stringbuf[6] @ 20992
	.field  	101,16			; _parameters[65]._stringbuf[7] @ 21008
	.field  	102,16			; _parameters[65]._stringbuf[8] @ 21024
	.field  	0,16			; _parameters[65]._stringbuf[9] @ 21040
	.space	32
	.field  	_SpeedCompStructUpdate,32		; _parameters[65]._paramfunc @ 21088
	.field  	3009,16			; _parameters[66]._reg @ 21120
	.field  	1,16			; _parameters[66]._lowlim @ 21136
	.field  	60,16			; _parameters[66]._hilim @ 21152
	.space	16
	.field  	_speedcompcoeffs+9,32		; _parameters[66]._ptr @ 21184
	.field  	73,16			; _parameters[66]._stringbuf[0] @ 21216
	.field  	110,16			; _parameters[66]._stringbuf[1] @ 21232
	.field  	105,16			; _parameters[66]._stringbuf[2] @ 21248
	.field  	116,16			; _parameters[66]._stringbuf[3] @ 21264
	.field  	105,16			; _parameters[66]._stringbuf[4] @ 21280
	.field  	97,16			; _parameters[66]._stringbuf[5] @ 21296
	.field  	108,16			; _parameters[66]._stringbuf[6] @ 21312
	.field  	84,16			; _parameters[66]._stringbuf[7] @ 21328
	.field  	0,16			; _parameters[66]._stringbuf[8] @ 21344
	.space	48
	.field  	_SpeedCompStructUpdate,32		; _parameters[66]._paramfunc @ 21408
	.field  	3010,16			; _parameters[67]._reg @ 21440
	.field  	1,16			; _parameters[67]._lowlim @ 21456
	.field  	60000,16			; _parameters[67]._hilim @ 21472
	.space	16
	.field  	_speedcompcoeffs+10,32		; _parameters[67]._ptr @ 21504
	.field  	76,16			; _parameters[67]._stringbuf[0] @ 21536
	.field  	101,16			; _parameters[67]._stringbuf[1] @ 21552
	.field  	97,16			; _parameters[67]._stringbuf[2] @ 21568
	.field  	114,16			; _parameters[67]._stringbuf[3] @ 21584
	.field  	110,16			; _parameters[67]._stringbuf[4] @ 21600
	.field  	84,16			; _parameters[67]._stringbuf[5] @ 21616
	.field  	0,16			; _parameters[67]._stringbuf[6] @ 21632
	.space	80
	.field  	_SpeedCompStructUpdate,32		; _parameters[67]._paramfunc @ 21728
	.field  	3011,16			; _parameters[68]._reg @ 21760
	.field  	1,16			; _parameters[68]._lowlim @ 21776
	.field  	6000,16			; _parameters[68]._hilim @ 21792
	.space	16
	.field  	_speedcompcoeffs+11,32		; _parameters[68]._ptr @ 21824
	.field  	73,16			; _parameters[68]._stringbuf[0] @ 21856
	.field  	110,16			; _parameters[68]._stringbuf[1] @ 21872
	.field  	116,16			; _parameters[68]._stringbuf[2] @ 21888
	.field  	101,16			; _parameters[68]._stringbuf[3] @ 21904
	.field  	114,16			; _parameters[68]._stringbuf[4] @ 21920
	.field  	118,16			; _parameters[68]._stringbuf[5] @ 21936
	.field  	97,16			; _parameters[68]._stringbuf[6] @ 21952
	.field  	108,16			; _parameters[68]._stringbuf[7] @ 21968
	.field  	84,16			; _parameters[68]._stringbuf[8] @ 21984
	.field  	0,16			; _parameters[68]._stringbuf[9] @ 22000
	.space	32
	.field  	_SpeedCompStructUpdate,32		; _parameters[68]._paramfunc @ 22048
	.field  	3012,16			; _parameters[69]._reg @ 22080
	.field  	1,16			; _parameters[69]._lowlim @ 22096
	.field  	5000,16			; _parameters[69]._hilim @ 22112
	.space	16
	.field  	_speedcompcoeffs+12,32		; _parameters[69]._ptr @ 22144
	.field  	78,16			; _parameters[69]._stringbuf[0] @ 22176
	.field  	117,16			; _parameters[69]._stringbuf[1] @ 22192
	.field  	109,16			; _parameters[69]._stringbuf[2] @ 22208
	.field  	83,16			; _parameters[69]._stringbuf[3] @ 22224
	.field  	97,16			; _parameters[69]._stringbuf[4] @ 22240
	.field  	109,16			; _parameters[69]._stringbuf[5] @ 22256
	.field  	112,16			; _parameters[69]._stringbuf[6] @ 22272
	.field  	108,16			; _parameters[69]._stringbuf[7] @ 22288
	.field  	101,16			; _parameters[69]._stringbuf[8] @ 22304
	.field  	115,16			; _parameters[69]._stringbuf[9] @ 22320
	.field  	0,16			; _parameters[69]._stringbuf[10] @ 22336
	.space	16
	.field  	_SpeedCompStructUpdate,32		; _parameters[69]._paramfunc @ 22368
	.field  	4616,16			; _parameters[70]._reg @ 22400
	.field  	0,16			; _parameters[70]._lowlim @ 22416
	.field  	13,16			; _parameters[70]._hilim @ 22432
	.space	16
	.field  	_damagemon,32		; _parameters[70]._ptr @ 22464
	.field  	67,16			; _parameters[70]._stringbuf[0] @ 22496
	.field  	67,16			; _parameters[70]._stringbuf[1] @ 22512
	.field  	83,16			; _parameters[70]._stringbuf[2] @ 22528
	.field  	112,16			; _parameters[70]._stringbuf[3] @ 22544
	.field  	108,16			; _parameters[70]._stringbuf[4] @ 22560
	.field  	105,16			; _parameters[70]._stringbuf[5] @ 22576
	.field  	116,16			; _parameters[70]._stringbuf[6] @ 22592
	.field  	0,16			; _parameters[70]._stringbuf[7] @ 22608
	.space	64
	.field  	_DamageMonStructUpdate,32		; _parameters[70]._paramfunc @ 22688
	.field  	4617,16			; _parameters[71]._reg @ 22720
	.field  	1,16			; _parameters[71]._lowlim @ 22736
	.field  	65000,16			; _parameters[71]._hilim @ 22752
	.space	16
	.field  	_damagemon+1,32		; _parameters[71]._ptr @ 22784
	.field  	75,16			; _parameters[71]._stringbuf[0] @ 22816
	.field  	86,16			; _parameters[71]._stringbuf[1] @ 22832
	.field  	97,16			; _parameters[71]._stringbuf[2] @ 22848
	.field  	108,16			; _parameters[71]._stringbuf[3] @ 22864
	.field  	117,16			; _parameters[71]._stringbuf[4] @ 22880
	.field  	101,16			; _parameters[71]._stringbuf[5] @ 22896
	.field  	0,16			; _parameters[71]._stringbuf[6] @ 22912
	.space	80
	.field  	_DamageMonStructUpdate,32		; _parameters[71]._paramfunc @ 23008
	.field  	4618,16			; _parameters[72]._reg @ 23040
	.field  	1,16			; _parameters[72]._lowlim @ 23056
	.field  	10000,16			; _parameters[72]._hilim @ 23072
	.space	16
	.field  	_damagemon+2,32		; _parameters[72]._ptr @ 23104
	.field  	66,16			; _parameters[72]._stringbuf[0] @ 23136
	.field  	101,16			; _parameters[72]._stringbuf[1] @ 23152
	.field  	116,16			; _parameters[72]._stringbuf[2] @ 23168
	.field  	97,16			; _parameters[72]._stringbuf[3] @ 23184
	.field  	86,16			; _parameters[72]._stringbuf[4] @ 23200
	.field  	97,16			; _parameters[72]._stringbuf[5] @ 23216
	.field  	108,16			; _parameters[72]._stringbuf[6] @ 23232
	.field  	0,16			; _parameters[72]._stringbuf[7] @ 23248
	.space	64
	.field  	_DamageMonStructUpdate,32		; _parameters[72]._paramfunc @ 23328
	.field  	4619,16			; _parameters[73]._reg @ 23360
	.field  	1,16			; _parameters[73]._lowlim @ 23376
	.field  	65000,16			; _parameters[73]._hilim @ 23392
	.space	16
	.field  	_damagemon+3,32		; _parameters[73]._ptr @ 23424
	.field  	82,16			; _parameters[73]._stringbuf[0] @ 23456
	.field  	80,16			; _parameters[73]._stringbuf[1] @ 23472
	.field  	77,16			; _parameters[73]._stringbuf[2] @ 23488
	.field  	32,16			; _parameters[73]._stringbuf[3] @ 23504
	.field  	88,16			; _parameters[73]._stringbuf[4] @ 23520
	.field  	0,16			; _parameters[73]._stringbuf[5] @ 23536
	.space	96
	.field  	_DamageMonStructUpdate,32		; _parameters[73]._paramfunc @ 23648
	.field  	4620,16			; _parameters[74]._reg @ 23680
	.field  	1,16			; _parameters[74]._lowlim @ 23696
	.field  	65000,16			; _parameters[74]._hilim @ 23712
	.space	16
	.field  	_damagemon+4,32		; _parameters[74]._ptr @ 23744
	.field  	82,16			; _parameters[74]._stringbuf[0] @ 23776
	.field  	69,16			; _parameters[74]._stringbuf[1] @ 23792
	.field  	70,16			; _parameters[74]._stringbuf[2] @ 23808
	.field  	32,16			; _parameters[74]._stringbuf[3] @ 23824
	.field  	88,16			; _parameters[74]._stringbuf[4] @ 23840
	.field  	0,16			; _parameters[74]._stringbuf[5] @ 23856
	.space	96
	.field  	_DamageMonStructUpdate,32		; _parameters[74]._paramfunc @ 23968
	.field  	4621,16			; _parameters[75]._reg @ 24000
	.field  	1,16			; _parameters[75]._lowlim @ 24016
	.field  	65000,16			; _parameters[75]._hilim @ 24032
	.space	16
	.field  	_damagemon+5,32		; _parameters[75]._ptr @ 24064
	.field  	80,16			; _parameters[75]._stringbuf[0] @ 24096
	.field  	82,16			; _parameters[75]._stringbuf[1] @ 24112
	.field  	69,16			; _parameters[75]._stringbuf[2] @ 24128
	.field  	83,16			; _parameters[75]._stringbuf[3] @ 24144
	.field  	69,16			; _parameters[75]._stringbuf[4] @ 24160
	.field  	78,16			; _parameters[75]._stringbuf[5] @ 24176
	.field  	84,16			; _parameters[75]._stringbuf[6] @ 24192
	.field  	32,16			; _parameters[75]._stringbuf[7] @ 24208
	.field  	88,16			; _parameters[75]._stringbuf[8] @ 24224
	.field  	0,16			; _parameters[75]._stringbuf[9] @ 24240
	.space	32
	.field  	_DamageMonStructUpdate,32		; _parameters[75]._paramfunc @ 24288
	.field  	4622,16			; _parameters[76]._reg @ 24320
	.field  	10,16			; _parameters[76]._lowlim @ 24336
	.field  	1000,16			; _parameters[76]._hilim @ 24352
	.space	16
	.field  	_damagemon+6,32		; _parameters[76]._ptr @ 24384
	.field  	65,16			; _parameters[76]._stringbuf[0] @ 24416
	.field  	108,16			; _parameters[76]._stringbuf[1] @ 24432
	.field  	114,16			; _parameters[76]._stringbuf[2] @ 24448
	.field  	109,16			; _parameters[76]._stringbuf[3] @ 24464
	.field  	76,16			; _parameters[76]._stringbuf[4] @ 24480
	.field  	118,16			; _parameters[76]._stringbuf[5] @ 24496
	.field  	108,16			; _parameters[76]._stringbuf[6] @ 24512
	.field  	83,16			; _parameters[76]._stringbuf[7] @ 24528
	.field  	110,16			; _parameters[76]._stringbuf[8] @ 24544
	.field  	103,16			; _parameters[76]._stringbuf[9] @ 24560
	.field  	108,16			; _parameters[76]._stringbuf[10] @ 24576
	.field  	0,16			; _parameters[76]._stringbuf[11] @ 24592
	.field  	_DamageMonStructUpdate,32		; _parameters[76]._paramfunc @ 24608
	.field  	4623,16			; _parameters[77]._reg @ 24640
	.field  	10,16			; _parameters[77]._lowlim @ 24656
	.field  	1000,16			; _parameters[77]._hilim @ 24672
	.space	16
	.field  	_damagemon+7,32		; _parameters[77]._ptr @ 24704
	.field  	65,16			; _parameters[77]._stringbuf[0] @ 24736
	.field  	108,16			; _parameters[77]._stringbuf[1] @ 24752
	.field  	114,16			; _parameters[77]._stringbuf[2] @ 24768
	.field  	109,16			; _parameters[77]._stringbuf[3] @ 24784
	.field  	76,16			; _parameters[77]._stringbuf[4] @ 24800
	.field  	118,16			; _parameters[77]._stringbuf[5] @ 24816
	.field  	108,16			; _parameters[77]._stringbuf[6] @ 24832
	.field  	67,16			; _parameters[77]._stringbuf[7] @ 24848
	.field  	121,16			; _parameters[77]._stringbuf[8] @ 24864
	.field  	108,16			; _parameters[77]._stringbuf[9] @ 24880
	.field  	0,16			; _parameters[77]._stringbuf[10] @ 24896
	.space	16
	.field  	_DamageMonStructUpdate,32		; _parameters[77]._paramfunc @ 24928
	.field  	4624,16			; _parameters[78]._reg @ 24960
	.field  	10,16			; _parameters[78]._lowlim @ 24976
	.field  	1000,16			; _parameters[78]._hilim @ 24992
	.space	16
	.field  	_damagemon+8,32		; _parameters[78]._ptr @ 25024
	.field  	65,16			; _parameters[78]._stringbuf[0] @ 25056
	.field  	108,16			; _parameters[78]._stringbuf[1] @ 25072
	.field  	114,16			; _parameters[78]._stringbuf[2] @ 25088
	.field  	109,16			; _parameters[78]._stringbuf[3] @ 25104
	.field  	76,16			; _parameters[78]._stringbuf[4] @ 25120
	.field  	118,16			; _parameters[78]._stringbuf[5] @ 25136
	.field  	108,16			; _parameters[78]._stringbuf[6] @ 25152
	.field  	77,16			; _parameters[78]._stringbuf[7] @ 25168
	.field  	66,16			; _parameters[78]._stringbuf[8] @ 25184
	.field  	83,16			; _parameters[78]._stringbuf[9] @ 25200
	.field  	0,16			; _parameters[78]._stringbuf[10] @ 25216
	.space	16
	.field  	_DamageMonStructUpdate,32		; _parameters[78]._paramfunc @ 25248
	.field  	4625,16			; _parameters[79]._reg @ 25280
	.field  	0,16			; _parameters[79]._lowlim @ 25296
	.field  	16383,16			; _parameters[79]._hilim @ 25312
	.space	16
	.field  	_damagemon+9,32		; _parameters[79]._ptr @ 25344
	.field  	67,16			; _parameters[79]._stringbuf[0] @ 25376
	.field  	121,16			; _parameters[79]._stringbuf[1] @ 25392
	.field  	108,16			; _parameters[79]._stringbuf[2] @ 25408
	.field  	78,16			; _parameters[79]._stringbuf[3] @ 25424
	.field  	101,16			; _parameters[79]._stringbuf[4] @ 25440
	.field  	105,16			; _parameters[79]._stringbuf[5] @ 25456
	.field  	103,16			; _parameters[79]._stringbuf[6] @ 25472
	.field  	104,16			; _parameters[79]._stringbuf[7] @ 25488
	.field  	98,16			; _parameters[79]._stringbuf[8] @ 25504
	.field  	114,16			; _parameters[79]._stringbuf[9] @ 25520
	.field  	0,16			; _parameters[79]._stringbuf[10] @ 25536
	.space	16
	.field  	_DamageMonStructUpdate,32		; _parameters[79]._paramfunc @ 25568
	.field  	4626,16			; _parameters[80]._reg @ 25600
	.field  	0,16			; _parameters[80]._lowlim @ 25616
	.field  	16383,16			; _parameters[80]._hilim @ 25632
	.space	16
	.field  	_damagemon+10,32		; _parameters[80]._ptr @ 25664
	.field  	77,16			; _parameters[80]._stringbuf[0] @ 25696
	.field  	66,16			; _parameters[80]._stringbuf[1] @ 25712
	.field  	78,16			; _parameters[80]._stringbuf[2] @ 25728
	.field  	101,16			; _parameters[80]._stringbuf[3] @ 25744
	.field  	105,16			; _parameters[80]._stringbuf[4] @ 25760
	.field  	103,16			; _parameters[80]._stringbuf[5] @ 25776
	.field  	104,16			; _parameters[80]._stringbuf[6] @ 25792
	.field  	98,16			; _parameters[80]._stringbuf[7] @ 25808
	.field  	114,16			; _parameters[80]._stringbuf[8] @ 25824
	.field  	0,16			; _parameters[80]._stringbuf[9] @ 25840
	.space	32
	.field  	_DamageMonStructUpdate,32		; _parameters[80]._paramfunc @ 25888
	.field  	4627,16			; _parameters[81]._reg @ 25920
	.field  	0,16			; _parameters[81]._lowlim @ 25936
	.field  	16383,16			; _parameters[81]._hilim @ 25952
	.space	16
	.field  	_damagemon+11,32		; _parameters[81]._ptr @ 25984
	.field  	67,16			; _parameters[81]._stringbuf[0] @ 26016
	.field  	121,16			; _parameters[81]._stringbuf[1] @ 26032
	.field  	108,16			; _parameters[81]._stringbuf[2] @ 26048
	.field  	78,16			; _parameters[81]._stringbuf[3] @ 26064
	.field  	65,16			; _parameters[81]._stringbuf[4] @ 26080
	.field  	108,16			; _parameters[81]._stringbuf[5] @ 26096
	.field  	114,16			; _parameters[81]._stringbuf[6] @ 26112
	.field  	109,16			; _parameters[81]._stringbuf[7] @ 26128
	.field  	0,16			; _parameters[81]._stringbuf[8] @ 26144
	.space	48
	.field  	_DamageMonStructUpdate,32		; _parameters[81]._paramfunc @ 26208
	.field  	4628,16			; _parameters[82]._reg @ 26240
	.field  	0,16			; _parameters[82]._lowlim @ 26256
	.field  	16383,16			; _parameters[82]._hilim @ 26272
	.space	16
	.field  	_damagemon+12,32		; _parameters[82]._ptr @ 26304
	.field  	77,16			; _parameters[82]._stringbuf[0] @ 26336
	.field  	66,16			; _parameters[82]._stringbuf[1] @ 26352
	.field  	78,16			; _parameters[82]._stringbuf[2] @ 26368
	.field  	65,16			; _parameters[82]._stringbuf[3] @ 26384
	.field  	108,16			; _parameters[82]._stringbuf[4] @ 26400
	.field  	114,16			; _parameters[82]._stringbuf[5] @ 26416
	.field  	109,16			; _parameters[82]._stringbuf[6] @ 26432
	.field  	0,16			; _parameters[82]._stringbuf[7] @ 26448
	.space	64
	.field  	_DamageMonStructUpdate,32		; _parameters[82]._paramfunc @ 26528
	.field  	4629,16			; _parameters[83]._reg @ 26560
	.field  	1,16			; _parameters[83]._lowlim @ 26576
	.field  	100,16			; _parameters[83]._hilim @ 26592
	.space	16
	.field  	_damagemon+13,32		; _parameters[83]._ptr @ 26624
	.field  	68,16			; _parameters[83]._stringbuf[0] @ 26656
	.field  	101,16			; _parameters[83]._stringbuf[1] @ 26672
	.field  	108,16			; _parameters[83]._stringbuf[2] @ 26688
	.field  	116,16			; _parameters[83]._stringbuf[3] @ 26704
	.field  	97,16			; _parameters[83]._stringbuf[4] @ 26720
	.field  	82,16			; _parameters[83]._stringbuf[5] @ 26736
	.field  	80,16			; _parameters[83]._stringbuf[6] @ 26752
	.field  	77,16			; _parameters[83]._stringbuf[7] @ 26768
	.field  	76,16			; _parameters[83]._stringbuf[8] @ 26784
	.field  	105,16			; _parameters[83]._stringbuf[9] @ 26800
	.field  	109,16			; _parameters[83]._stringbuf[10] @ 26816
	.field  	0,16			; _parameters[83]._stringbuf[11] @ 26832
	.field  	_DamageMonStructUpdate,32		; _parameters[83]._paramfunc @ 26848
	.field  	4630,16			; _parameters[84]._reg @ 26880
	.field  	0,16			; _parameters[84]._lowlim @ 26896
	.field  	2500,16			; _parameters[84]._hilim @ 26912
	.space	16
	.field  	_damagemon+14,32		; _parameters[84]._ptr @ 26944
	.field  	68,16			; _parameters[84]._stringbuf[0] @ 26976
	.field  	97,16			; _parameters[84]._stringbuf[1] @ 26992
	.field  	109,16			; _parameters[84]._stringbuf[2] @ 27008
	.field  	97,16			; _parameters[84]._stringbuf[3] @ 27024
	.field  	103,16			; _parameters[84]._stringbuf[4] @ 27040
	.field  	101,16			; _parameters[84]._stringbuf[5] @ 27056
	.field  	72,16			; _parameters[84]._stringbuf[6] @ 27072
	.field  	121,16			; _parameters[84]._stringbuf[7] @ 27088
	.field  	115,16			; _parameters[84]._stringbuf[8] @ 27104
	.field  	0,16			; _parameters[84]._stringbuf[9] @ 27120
	.space	32
	.field  	_DamageMonStructUpdate,32		; _parameters[84]._paramfunc @ 27168
	.field  	4631,16			; _parameters[85]._reg @ 27200
	.field  	0,16			; _parameters[85]._lowlim @ 27216
	.field  	1,16			; _parameters[85]._hilim @ 27232
	.space	16
	.field  	_damagemon+15,32		; _parameters[85]._ptr @ 27264
	.field  	68,16			; _parameters[85]._stringbuf[0] @ 27296
	.field  	97,16			; _parameters[85]._stringbuf[1] @ 27312
	.field  	109,16			; _parameters[85]._stringbuf[2] @ 27328
	.field  	77,16			; _parameters[85]._stringbuf[3] @ 27344
	.field  	111,16			; _parameters[85]._stringbuf[4] @ 27360
	.field  	110,16			; _parameters[85]._stringbuf[5] @ 27376
	.field  	69,16			; _parameters[85]._stringbuf[6] @ 27392
	.field  	78,16			; _parameters[85]._stringbuf[7] @ 27408
	.field  	66,16			; _parameters[85]._stringbuf[8] @ 27424
	.field  	0,16			; _parameters[85]._stringbuf[9] @ 27440
	.space	32
	.field  	_DamageMonENBChange,32		; _parameters[85]._paramfunc @ 27488
	.field  	4632,16			; _parameters[86]._reg @ 27520
	.field  	0,16			; _parameters[86]._lowlim @ 27536
	.field  	1,16			; _parameters[86]._hilim @ 27552
	.space	16
	.field  	_cppsettings,32		; _parameters[86]._ptr @ 27584
	.field  	67,16			; _parameters[86]._stringbuf[0] @ 27616
	.field  	80,16			; _parameters[86]._stringbuf[1] @ 27632
	.field  	80,16			; _parameters[86]._stringbuf[2] @ 27648
	.field  	69,16			; _parameters[86]._stringbuf[3] @ 27664
	.field  	78,16			; _parameters[86]._stringbuf[4] @ 27680
	.field  	65,16			; _parameters[86]._stringbuf[5] @ 27696
	.field  	66,16			; _parameters[86]._stringbuf[6] @ 27712
	.field  	76,16			; _parameters[86]._stringbuf[7] @ 27728
	.field  	69,16			; _parameters[86]._stringbuf[8] @ 27744
	.field  	32,16			; _parameters[86]._stringbuf[9] @ 27760
	.field  	0,16			; _parameters[86]._stringbuf[10] @ 27776
	.space	16
	.field  	_CPPUpdate,32		; _parameters[86]._paramfunc @ 27808
	.field  	4633,16			; _parameters[87]._reg @ 27840
	.field  	0,16			; _parameters[87]._lowlim @ 27856
	.field  	100,16			; _parameters[87]._hilim @ 27872
	.space	16
	.field  	_cppsettings+1,32		; _parameters[87]._ptr @ 27904
	.field  	67,16			; _parameters[87]._stringbuf[0] @ 27936
	.field  	80,16			; _parameters[87]._stringbuf[1] @ 27952
	.field  	80,16			; _parameters[87]._stringbuf[2] @ 27968
	.field  	76,16			; _parameters[87]._stringbuf[3] @ 27984
	.field  	111,16			; _parameters[87]._stringbuf[4] @ 28000
	.field  	119,16			; _parameters[87]._stringbuf[5] @ 28016
	.field  	32,16			; _parameters[87]._stringbuf[6] @ 28032
	.field  	0,16			; _parameters[87]._stringbuf[7] @ 28048
	.space	64
	.field  	_CPPUpdate,32		; _parameters[87]._paramfunc @ 28128
	.field  	4634,16			; _parameters[88]._reg @ 28160
	.field  	0,16			; _parameters[88]._lowlim @ 28176
	.field  	110,16			; _parameters[88]._hilim @ 28192
	.space	16
	.field  	_cppsettings+2,32		; _parameters[88]._ptr @ 28224
	.field  	67,16			; _parameters[88]._stringbuf[0] @ 28256
	.field  	80,16			; _parameters[88]._stringbuf[1] @ 28272
	.field  	80,16			; _parameters[88]._stringbuf[2] @ 28288
	.field  	72,16			; _parameters[88]._stringbuf[3] @ 28304
	.field  	105,16			; _parameters[88]._stringbuf[4] @ 28320
	.field  	103,16			; _parameters[88]._stringbuf[5] @ 28336
	.field  	104,16			; _parameters[88]._stringbuf[6] @ 28352
	.field  	32,16			; _parameters[88]._stringbuf[7] @ 28368
	.field  	0,16			; _parameters[88]._stringbuf[8] @ 28384
	.space	48
	.field  	_CPPUpdate,32		; _parameters[88]._paramfunc @ 28448
	.field  	4635,16			; _parameters[89]._reg @ 28480
	.field  	0,16			; _parameters[89]._lowlim @ 28496
	.field  	100,16			; _parameters[89]._hilim @ 28512
	.space	16
	.field  	_cppsettings+3,32		; _parameters[89]._ptr @ 28544
	.field  	67,16			; _parameters[89]._stringbuf[0] @ 28576
	.field  	80,16			; _parameters[89]._stringbuf[1] @ 28592
	.field  	80,16			; _parameters[89]._stringbuf[2] @ 28608
	.field  	75,16			; _parameters[89]._stringbuf[3] @ 28624
	.field  	86,16			; _parameters[89]._stringbuf[4] @ 28640
	.field  	65,16			; _parameters[89]._stringbuf[5] @ 28656
	.field  	76,16			; _parameters[89]._stringbuf[6] @ 28672
	.field  	85,16			; _parameters[89]._stringbuf[7] @ 28688
	.field  	69,16			; _parameters[89]._stringbuf[8] @ 28704
	.field  	32,16			; _parameters[89]._stringbuf[9] @ 28720
	.field  	0,16			; _parameters[89]._stringbuf[10] @ 28736
	.space	16
	.field  	_CPPUpdate,32		; _parameters[89]._paramfunc @ 28768
	.field  	4636,16			; _parameters[90]._reg @ 28800
	.field  	0,16			; _parameters[90]._lowlim @ 28816
	.field  	5000,16			; _parameters[90]._hilim @ 28832
	.space	16
	.field  	_cppsettings+4,32		; _parameters[90]._ptr @ 28864
	.field  	67,16			; _parameters[90]._stringbuf[0] @ 28896
	.field  	80,16			; _parameters[90]._stringbuf[1] @ 28912
	.field  	80,16			; _parameters[90]._stringbuf[2] @ 28928
	.field  	71,16			; _parameters[90]._stringbuf[3] @ 28944
	.field  	65,16			; _parameters[90]._stringbuf[4] @ 28960
	.field  	77,16			; _parameters[90]._stringbuf[5] @ 28976
	.field  	77,16			; _parameters[90]._stringbuf[6] @ 28992
	.field  	65,16			; _parameters[90]._stringbuf[7] @ 29008
	.field  	32,16			; _parameters[90]._stringbuf[8] @ 29024
	.field  	0,16			; _parameters[90]._stringbuf[9] @ 29040
	.space	32
	.field  	_CPPUpdate,32		; _parameters[90]._paramfunc @ 29088
	.field  	4637,16			; _parameters[91]._reg @ 29120
	.field  	0,16			; _parameters[91]._lowlim @ 29136
	.field  	1000,16			; _parameters[91]._hilim @ 29152
	.space	16
	.field  	_cppsettings+5,32		; _parameters[91]._ptr @ 29184
	.field  	67,16			; _parameters[91]._stringbuf[0] @ 29216
	.field  	80,16			; _parameters[91]._stringbuf[1] @ 29232
	.field  	80,16			; _parameters[91]._stringbuf[2] @ 29248
	.field  	88,16			; _parameters[91]._stringbuf[3] @ 29264
	.field  	86,16			; _parameters[91]._stringbuf[4] @ 29280
	.field  	65,16			; _parameters[91]._stringbuf[5] @ 29296
	.field  	76,16			; _parameters[91]._stringbuf[6] @ 29312
	.field  	85,16			; _parameters[91]._stringbuf[7] @ 29328
	.field  	69,16			; _parameters[91]._stringbuf[8] @ 29344
	.field  	32,16			; _parameters[91]._stringbuf[9] @ 29360
	.field  	0,16			; _parameters[91]._stringbuf[10] @ 29376
	.space	16
	.field  	_CPPUpdate,32		; _parameters[91]._paramfunc @ 29408
	.field  	4640,16			; _parameters[92]._reg @ 29440
	.field  	0,16			; _parameters[92]._lowlim @ 29456
	.field  	1000,16			; _parameters[92]._hilim @ 29472
	.space	16
	.field  	_sensorMoving,32		; _parameters[92]._ptr @ 29504
	.field  	67,16			; _parameters[92]._stringbuf[0] @ 29536
	.field  	65,16			; _parameters[92]._stringbuf[1] @ 29552
	.field  	76,16			; _parameters[92]._stringbuf[2] @ 29568
	.field  	65,16			; _parameters[92]._stringbuf[3] @ 29584
	.field  	76,16			; _parameters[92]._stringbuf[4] @ 29600
	.field  	65,16			; _parameters[92]._stringbuf[5] @ 29616
	.field  	82,16			; _parameters[92]._stringbuf[6] @ 29632
	.field  	77,16			; _parameters[92]._stringbuf[7] @ 29648
	.field  	0,16			; _parameters[92]._stringbuf[8] @ 29664
	.space	48
	.field  	_SensorUpdate,32		; _parameters[92]._paramfunc @ 29728

DW$47	.dwtag  DW_TAG_variable, DW_AT_name("parameters"), DW_AT_symbol_name("_parameters")
	.dwattr DW$47, DW_AT_location[DW_OP_addr _parameters]
	.dwattr DW$47, DW_AT_type(*DW$T$140)
	.dwattr DW$47, DW_AT_external(0x01)
_PreviousWIOEnabledState$1:	.usect	".ebss",1,1,0
;	C:\CCStudio_v3.3\C2000\cgtools\bin\opt2000.exe C:\Users\Andrew\AppData\Local\Temp\TI4522 C:\Users\Andrew\AppData\Local\Temp\TI4524 
;	C:\CCStudio_v3.3\C2000\cgtools\bin\ac2000.exe -q -D_INLINE -DLARGE_MODEL -IC:/CCStudio_v3.3/C2000/xdais/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/bios/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/rtdx/include/c2000 -IC:/CCStudio_v3.3/C2000/cgtools/include --version=28 --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\Andrew\AppData\Local\Temp\TI4522 --template_info_file C:\Users\Andrew\AppData\Local\Temp\TI4526 --object_file 
	.sect	".text"
	.global	_PCModifyParameter

DW$48	.dwtag  DW_TAG_subprogram, DW_AT_name("PCModifyParameter"), DW_AT_symbol_name("_PCModifyParameter")
	.dwattr DW$48, DW_AT_low_pc(_PCModifyParameter)
	.dwattr DW$48, DW_AT_high_pc(0x00)
	.dwattr DW$48, DW_AT_begin_file("params.c")
	.dwattr DW$48, DW_AT_begin_line(0x94)
	.dwattr DW$48, DW_AT_begin_column(0x05)
	.dwattr DW$48, DW_AT_frame_base[DW_OP_breg20 -44]
	.dwattr DW$48, DW_AT_skeletal(0x01)
	.dwpsn	"params.c",149,1

;***************************************************************
;* FNAME: _PCModifyParameter            FR SIZE:  42           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter, 31 Auto,  6 SOE     *
;***************************************************************

_PCModifyParameter:
;* AL    assigned to _reg
DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_name("reg"), DW_AT_symbol_name("_reg")
	.dwattr DW$49, DW_AT_type(*DW$T$11)
	.dwattr DW$49, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _NumReg
DW$50	.dwtag  DW_TAG_formal_parameter, DW_AT_name("NumReg"), DW_AT_symbol_name("_NumReg")
	.dwattr DW$50, DW_AT_type(*DW$T$11)
	.dwattr DW$50, DW_AT_location[DW_OP_reg1]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOVZ      AR1,AH                ; |149| 
        ADDB      SP,#36
        MOVZ      AR6,AL                ; |149| 
        MOVW      DP,#_parameters
        CMP       AL,@_parameters       ; |154| 
        MOV       *-SP[35],#0           ; |153| 
        BF        L2,EQ                 ; |154| 
        ; branchcc occurs ; |154| 
L1:    
DW$L$_PCModifyParameter$2$B:
	.dwpsn	"params.c",154,0
        MOV       AH,*-SP[35]
        CMPB      AH,#93                ; |154| 
        BF        L2,GEQ                ; |154| 
        ; branchcc occurs ; |154| 
DW$L$_PCModifyParameter$2$E:
DW$L$_PCModifyParameter$3$B:
        ADDB      AH,#1                 ; |154| 
        MOV       *-SP[35],AH           ; |154| 
        MOVL      XAR4,#_parameters     ; |154| 
        MOV       T,*-SP[35]            ; |154| 
        MPYB      ACC,T,#20             ; |154| 
        ADDL      XAR4,ACC
        MOV       AL,AR6                ; |154| 
        CMP       AL,*+XAR4[0]          ; |154| 
        BF        L1,NEQ                ; |154| 
        ; branchcc occurs ; |154| 
DW$L$_PCModifyParameter$3$E:
L2:    
        MOV       AL,*-SP[35]
        CMPB      AL,#93                ; |155| 
        BF        L3,NEQ                ; |155| 
        ; branchcc occurs ; |155| 
        MOVB      AL,#0
        BF        L7,UNC                ; |155| 
        ; branch occurs ; |155| 
L3:    
        MOVZ      AR4,SP                ; |157| 
        MOVB      ACC,#30
        MOVB      XAR5,#0
        SUBB      XAR4,#34              ; |157| 
        LCR       #_memset              ; |157| 
        ; call occurs [#_memset] ; |157| 
        MOVW      DP,#_pcmodbus+1
        MOV       AL,@_pcmodbus+1       ; |159| 
        CMPB      AL,#16                ; |159| 
        BF        L4,EQ                 ; |159| 
        ; branchcc occurs ; |159| 
        CMPB      AL,#6                 ; |159| 
        BF        L4,EQ                 ; |159| 
        ; branchcc occurs ; |159| 
        MOV       T,*-SP[35]
        MOVL      XAR4,#_parameters+4   ; |185| 
        MPYB      ACC,T,#20             ; |185| 
        ADDL      XAR4,ACC
        MOVL      XAR4,*+XAR4[0]        ; |185| 
        MOV       AL,*+XAR4[0]          ; |185| 
        MOVL      XAR4,#_pcmodbus+5     ; |185| 
        MOV       *+XAR4[AR1],AL        ; |185| 
        BF        L6,UNC                ; |185| 
        ; branch occurs ; |185| 
L4:    
        MOVL      XAR4,#_pcmodbus+5     ; |162| 
        MOV       T,*-SP[35]            ; |162| 
        MOVL      ACC,XAR4              ; |162| 
        ADDU      ACC,AR1               ; |162| 
        MOVL      XAR3,ACC              ; |162| 
        MOVL      XAR4,#_parameters     ; |162| 
        MPYB      ACC,T,#20             ; |162| 
        ADDL      XAR4,ACC
        MOVL      XAR2,XAR4             ; |162| 
        MOVL      XAR4,*+XAR2[4]        ; |162| 
        MOV       AL,*+XAR3[0]          ; |162| 
        CMP       AL,*+XAR4[0]          ; |162| 
        BF        L6,EQ                 ; |162| 
        ; branchcc occurs ; |162| 
        MOVZ      AR4,SP                ; |164| 
        MOVB      ACC,#6
        ADDL      ACC,XAR2
        MOVL      XAR5,ACC              ; |164| 
        SUBB      XAR4,#34              ; |164| 
        LCR       #_strcpy              ; |164| 
        ; call occurs [#_strcpy] ; |164| 
        MOV       AL,*+XAR3[0]          ; |165| 
        CMP       AL,*+XAR2[1]          ; |165| 
        BF        L5,LO                 ; |165| 
        ; branchcc occurs ; |165| 
        CMP       AL,*+XAR2[2]          ; |165| 
        BF        L5,HI                 ; |165| 
        ; branchcc occurs ; |165| 
        MOVL      XAR4,#FSL1            ; |170| 
        MOVL      *-SP[2],XAR4          ; |170| 
        MOVL      XAR4,*+XAR2[4]        ; |170| 
        MOV       AH,*+XAR4[0]          ; |170| 
        MOVZ      AR4,SP                ; |170| 
        MOV       *-SP[3],AH            ; |170| 
        MOV       *-SP[4],AL            ; |170| 
        SUBB      XAR4,#23              ; |170| 
        LCR       #_sprintf             ; |170| 
        ; call occurs [#_sprintf] ; |170| 
        MOVL      XAR4,*+XAR2[4]        ; |171| 
        MOV       AL,*+XAR3[0]          ; |171| 
        MOVB      XAR0,#18              ; |172| 
        MOV       *+XAR4[0],AL          ; |171| 
        MOVL      ACC,*+XAR2[AR0]       ; |172| 
        BF        L6,EQ                 ; |172| 
        ; branchcc occurs ; |172| 
        MOVL      XAR7,ACC              ; |174| 
        LCR       *XAR7                 ; |174| 
        ; call occurs [XAR7] ; |174| 
        BF        L6,UNC                ; |174| 
        ; branch occurs ; |174| 
L5:    
        MOVL      XAR4,#FSL2            ; |180| 
        MOVL      *-SP[2],XAR4          ; |180| 
        MOV       T,*-SP[35]            ; |180| 
        MOVL      XAR4,#_pcmodbus+5     ; |180| 
        MOV       AL,*+XAR4[AR1]        ; |180| 
        MOV       *-SP[3],AL            ; |180| 
        MOVL      XAR4,#_parameters+4   ; |180| 
        MPYB      ACC,T,#20             ; |180| 
        ADDL      XAR4,ACC
        MOVL      XAR4,*+XAR4[0]        ; |180| 
        MOV       AL,*+XAR4[0]          ; |180| 
        MOVZ      AR4,SP                ; |180| 
        MOV       *-SP[4],AL            ; |180| 
        SUBB      XAR4,#22              ; |180| 
        LCR       #_sprintf             ; |180| 
        ; call occurs [#_sprintf] ; |180| 
L6:    
        MOVB      AL,#1                 ; |187| 
L7:    
        SUBB      SP,#36                ; |187| 
        MOVL      XAR3,*--SP            ; |187| 
        MOVL      XAR2,*--SP            ; |187| 
        MOVL      XAR1,*--SP            ; |187| 
	.dwpsn	"params.c",188,1
        LRETR
        ; return occurs

DW$51	.dwtag  DW_TAG_loop
	.dwattr DW$51, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\params.asm:L1:1:1471518982")
	.dwattr DW$51, DW_AT_begin_file("params.c")
	.dwattr DW$51, DW_AT_begin_line(0x9a)
	.dwattr DW$51, DW_AT_end_line(0x9a)
DW$52	.dwtag  DW_TAG_loop_range
	.dwattr DW$52, DW_AT_low_pc(DW$L$_PCModifyParameter$2$B)
	.dwattr DW$52, DW_AT_high_pc(DW$L$_PCModifyParameter$2$E)
DW$53	.dwtag  DW_TAG_loop_range
	.dwattr DW$53, DW_AT_low_pc(DW$L$_PCModifyParameter$3$B)
	.dwattr DW$53, DW_AT_high_pc(DW$L$_PCModifyParameter$3$E)
	.dwendtag DW$51

	.dwattr DW$48, DW_AT_end_file("params.c")
	.dwattr DW$48, DW_AT_end_line(0xbc)
	.dwattr DW$48, DW_AT_end_column(0x01)
	.dwendtag DW$48

	.sect	".text"
	.global	_DamageMonENBChange

DW$54	.dwtag  DW_TAG_subprogram, DW_AT_name("DamageMonENBChange"), DW_AT_symbol_name("_DamageMonENBChange")
	.dwattr DW$54, DW_AT_low_pc(_DamageMonENBChange)
	.dwattr DW$54, DW_AT_high_pc(0x00)
	.dwattr DW$54, DW_AT_begin_file("params.c")
	.dwattr DW$54, DW_AT_begin_line(0xbf)
	.dwattr DW$54, DW_AT_begin_column(0x06)
	.dwattr DW$54, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$54, DW_AT_skeletal(0x01)
	.dwpsn	"params.c",192,1

;***************************************************************
;* FNAME: _DamageMonENBChange           FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_DamageMonENBChange:
        MOVW      DP,#_damagemon+15
        MOVL      *SP++,XAR1
        MOV       AL,@_damagemon+15     ; |194| 
        CMPB      AL,#1                 ; |194| 
        BF        L14,EQ                ; |194| 
        ; branchcc occurs ; |194| 
        MOVW      DP,#_allsensors
        MOVB      XAR1,#0
        MOV       AL,@_allsensors       ; |203| 
        BF        L9,EQ                 ; |203| 
        ; branchcc occurs ; |203| 
L8:    
DW$L$_DamageMonENBChange$3$B:
	.dwpsn	"params.c",204,0
        MOV       T,AR1
        MOVL      XAR4,#_manref         ; |206| 
        MPYB      ACC,T,#10             ; |206| 
        ADDL      XAR4,ACC
        MOVB      XAR0,#8               ; |211| 
        MOV       AH,#0
        MOV       AL,#0
        MOVL      *+XAR4[0],ACC         ; |206| 
        MOVL      *+XAR4[2],ACC         ; |207| 
        MOVL      *+XAR4[4],ACC         ; |208| 
        MOV       *+XAR4[6],#0          ; |209| 
        MOV       AL,#300               ; |212| 
        MOV       *+XAR4[7],#0          ; |210| 
        ADD       AL,AR1                ; |212| 
        MOV       *+XAR4[AR0],#0        ; |211| 
        LCR       #_ClearAlarmEvent     ; |212| 
        ; call occurs [#_ClearAlarmEvent] ; |212| 
        MOV       AL,AR1                ; |212| 
        ADDB      AL,#1                 ; |203| 
        MOVZ      AR1,AL                ; |203| 
        MOVW      DP,#_allsensors
        CMP       AL,@_allsensors       ; |203| 
	.dwpsn	"params.c",213,0
        BF        L8,LO                 ; |203| 
        ; branchcc occurs ; |203| 
DW$L$_DamageMonENBChange$3$E:
L9:    
        MOVL      XAR4,#_damalarms      ; |214| 
        MOVB      AL,#0
        MOVB      XAR5,#2               ; |216| 
        MOV       *+XAR4[0],#0          ; |214| 
        MOV       AH,#28922             ; |216| 
        MOV       *+XAR4[1],#0          ; |215| 
        LCR       #_WriteNVMemory       ; |216| 
        ; call occurs [#_WriteNVMemory] ; |216| 
        MOVB      XAR1,#0
        MOVW      DP,#_allsensors
        AND       AL,@_allsensors,#0xfffe ; |218| 
        BF        L11,EQ                ; |218| 
        ; branchcc occurs ; |218| 
L10:    
DW$L$_DamageMonENBChange$5$B:
	.dwpsn	"params.c",219,0
        SETC      SXM
        MOVL      XAR4,#_manrefsum      ; |220| 
        MOV       ACC,AR1 << 1          ; |220| 
        ADDL      XAR4,ACC
        MOV       AL,#328               ; |221| 
        MOV       *+XAR4[0],#0          ; |220| 
        ADD       AL,AR1                ; |221| 
        LCR       #_ClearAlarmEvent     ; |221| 
        ; call occurs [#_ClearAlarmEvent] ; |221| 
        MOV       AL,AR1                ; |221| 
        ADDB      AL,#1                 ; |218| 
        MOVZ      AR1,AL                ; |218| 
        MOVW      DP,#_allsensors
        MOV       AL,@_allsensors       ; |218| 
        LSR       AL,1                  ; |218| 
        CMP       AL,AR1                ; |218| 
	.dwpsn	"params.c",222,0
        BF        L10,HI                ; |218| 
        ; branchcc occurs ; |218| 
DW$L$_DamageMonENBChange$5$E:
L11:    
        MOVW      DP,#_damalarms+2
        MOVB      AL,#0
        MOVB      XAR5,#1               ; |224| 
        MOVL      XAR4,#_damalarms+2    ; |224| 
        MOV       @_damalarms+2,#0      ; |223| 
        MOV       AH,#28926             ; |224| 
        LCR       #_WriteNVMemory       ; |224| 
        ; call occurs [#_WriteNVMemory] ; |224| 
        MOVB      XAR1,#0
        MOVW      DP,#_allsensors
        AND       AL,@_allsensors,#0xfffe ; |226| 
        BF        L13,EQ                ; |226| 
        ; branchcc occurs ; |226| 
L12:    
DW$L$_DamageMonENBChange$7$B:
	.dwpsn	"params.c",227,0
        SETC      SXM
        MOVL      XAR4,#_manrefsum+1    ; |228| 
        MOV       ACC,AR1 << 1          ; |228| 
        ADDL      XAR4,ACC
        MOV       AL,#342               ; |229| 
        MOV       *+XAR4[0],#0          ; |228| 
        ADD       AL,AR1                ; |229| 
        LCR       #_ClearAlarmEvent     ; |229| 
        ; call occurs [#_ClearAlarmEvent] ; |229| 
        MOV       AL,AR1                ; |229| 
        ADDB      AL,#1                 ; |226| 
        MOVZ      AR1,AL                ; |226| 
        MOVW      DP,#_allsensors
        MOV       AL,@_allsensors       ; |226| 
        LSR       AL,1                  ; |226| 
        CMP       AL,AR1                ; |226| 
	.dwpsn	"params.c",230,0
        BF        L12,HI                ; |226| 
        ; branchcc occurs ; |226| 
DW$L$_DamageMonENBChange$7$E:
L13:    
        MOVW      DP,#_damalarms+3
        MOVB      AL,#0
        MOVB      XAR5,#1               ; |232| 
        MOVL      XAR4,#_damalarms+3    ; |232| 
        MOV       @_damalarms+3,#0      ; |231| 
        MOV       AH,#28928             ; |232| 
        LCR       #_WriteNVMemory       ; |232| 
        ; call occurs [#_WriteNVMemory] ; |232| 
        BF        L16,UNC               ; |232| 
        ; branch occurs ; |232| 
L14:    
        MOVW      DP,#_allsensors
        MOV       AL,@_allsensors       ; |196| 
        MOVB      XAR1,#0
        BF        L16,EQ                ; |196| 
        ; branchcc occurs ; |196| 
L15:    
DW$L$_DamageMonENBChange$10$B:
	.dwpsn	"params.c",197,0
        SETC      SXM
        MOV       AL,AR1
        MOVL      XAR4,#_damagemonignore ; |198| 
        MOV       ACC,AL                ; |198| 
        MOVW      DP,#_allsensors
        ADDL      XAR4,ACC
        MOV       AL,AR1                ; |198| 
        ADDB      AL,#1                 ; |196| 
        MOVZ      AR1,AL                ; |196| 
        MOV       *+XAR4[0],#3          ; |198| 
        CMP       AL,@_allsensors       ; |196| 
	.dwpsn	"params.c",199,0
        BF        L15,LO                ; |196| 
        ; branchcc occurs ; |196| 
DW$L$_DamageMonENBChange$10$E:
L16:    
        LCR       #_DamageMonStructUpdate ; |235| 
        ; call occurs [#_DamageMonStructUpdate] ; |235| 
        MOVL      XAR1,*--SP
	.dwpsn	"params.c",236,1
        LRETR
        ; return occurs

DW$55	.dwtag  DW_TAG_loop
	.dwattr DW$55, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\params.asm:L15:1:1471518982")
	.dwattr DW$55, DW_AT_begin_file("params.c")
	.dwattr DW$55, DW_AT_begin_line(0xc4)
	.dwattr DW$55, DW_AT_end_line(0xc7)
DW$56	.dwtag  DW_TAG_loop_range
	.dwattr DW$56, DW_AT_low_pc(DW$L$_DamageMonENBChange$10$B)
	.dwattr DW$56, DW_AT_high_pc(DW$L$_DamageMonENBChange$10$E)
	.dwendtag DW$55


DW$57	.dwtag  DW_TAG_loop
	.dwattr DW$57, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\params.asm:L12:1:1471518982")
	.dwattr DW$57, DW_AT_begin_file("params.c")
	.dwattr DW$57, DW_AT_begin_line(0xe2)
	.dwattr DW$57, DW_AT_end_line(0xe6)
DW$58	.dwtag  DW_TAG_loop_range
	.dwattr DW$58, DW_AT_low_pc(DW$L$_DamageMonENBChange$7$B)
	.dwattr DW$58, DW_AT_high_pc(DW$L$_DamageMonENBChange$7$E)
	.dwendtag DW$57


DW$59	.dwtag  DW_TAG_loop
	.dwattr DW$59, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\params.asm:L10:1:1471518982")
	.dwattr DW$59, DW_AT_begin_file("params.c")
	.dwattr DW$59, DW_AT_begin_line(0xda)
	.dwattr DW$59, DW_AT_end_line(0xde)
DW$60	.dwtag  DW_TAG_loop_range
	.dwattr DW$60, DW_AT_low_pc(DW$L$_DamageMonENBChange$5$B)
	.dwattr DW$60, DW_AT_high_pc(DW$L$_DamageMonENBChange$5$E)
	.dwendtag DW$59


DW$61	.dwtag  DW_TAG_loop
	.dwattr DW$61, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\params.asm:L8:1:1471518982")
	.dwattr DW$61, DW_AT_begin_file("params.c")
	.dwattr DW$61, DW_AT_begin_line(0xcb)
	.dwattr DW$61, DW_AT_end_line(0xd5)
DW$62	.dwtag  DW_TAG_loop_range
	.dwattr DW$62, DW_AT_low_pc(DW$L$_DamageMonENBChange$3$B)
	.dwattr DW$62, DW_AT_high_pc(DW$L$_DamageMonENBChange$3$E)
	.dwendtag DW$61

	.dwattr DW$54, DW_AT_end_file("params.c")
	.dwattr DW$54, DW_AT_end_line(0xec)
	.dwattr DW$54, DW_AT_end_column(0x01)
	.dwendtag DW$54

	.sect	".text"
	.global	_Safe1Update

DW$63	.dwtag  DW_TAG_subprogram, DW_AT_name("Safe1Update"), DW_AT_symbol_name("_Safe1Update")
	.dwattr DW$63, DW_AT_low_pc(_Safe1Update)
	.dwattr DW$63, DW_AT_high_pc(0x00)
	.dwattr DW$63, DW_AT_begin_file("params.c")
	.dwattr DW$63, DW_AT_begin_line(0xee)
	.dwattr DW$63, DW_AT_begin_column(0x06)
	.dwattr DW$63, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$63, DW_AT_skeletal(0x01)
	.dwpsn	"params.c",239,1

;***************************************************************
;* FNAME: _Safe1Update                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_Safe1Update:
        MOVW      DP,#_settings+2
        MOV       @_settings+2,#1       ; |240| 
	.dwpsn	"params.c",241,1
        LRETR
        ; return occurs
	.dwattr DW$63, DW_AT_end_file("params.c")
	.dwattr DW$63, DW_AT_end_line(0xf1)
	.dwattr DW$63, DW_AT_end_column(0x01)
	.dwendtag DW$63

	.sect	".text"
	.global	_SLEMUpdate

DW$64	.dwtag  DW_TAG_subprogram, DW_AT_name("SLEMUpdate"), DW_AT_symbol_name("_SLEMUpdate")
	.dwattr DW$64, DW_AT_low_pc(_SLEMUpdate)
	.dwattr DW$64, DW_AT_high_pc(0x00)
	.dwattr DW$64, DW_AT_begin_file("params.c")
	.dwattr DW$64, DW_AT_begin_line(0xf4)
	.dwattr DW$64, DW_AT_begin_column(0x06)
	.dwattr DW$64, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$64, DW_AT_skeletal(0x01)
	.dwpsn	"params.c",245,1

;***************************************************************
;* FNAME: _SLEMUpdate                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SLEMUpdate:
        LCR       #_WriteSLEMSettingstoNVMEM ; |246| 
        ; call occurs [#_WriteSLEMSettingstoNVMEM] ; |246| 
	.dwpsn	"params.c",247,1
        LRETR
        ; return occurs
	.dwattr DW$64, DW_AT_end_file("params.c")
	.dwattr DW$64, DW_AT_end_line(0xf7)
	.dwattr DW$64, DW_AT_end_column(0x01)
	.dwendtag DW$64

	.sect	".text"
	.global	_CPPUpdate

DW$65	.dwtag  DW_TAG_subprogram, DW_AT_name("CPPUpdate"), DW_AT_symbol_name("_CPPUpdate")
	.dwattr DW$65, DW_AT_low_pc(_CPPUpdate)
	.dwattr DW$65, DW_AT_high_pc(0x00)
	.dwattr DW$65, DW_AT_begin_file("params.c")
	.dwattr DW$65, DW_AT_begin_line(0xfa)
	.dwattr DW$65, DW_AT_begin_column(0x06)
	.dwattr DW$65, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$65, DW_AT_skeletal(0x01)
	.dwpsn	"params.c",251,1

;***************************************************************
;* FNAME: _CPPUpdate                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CPPUpdate:
        LCR       #_WriteCPPSettingstoNVMEM ; |252| 
        ; call occurs [#_WriteCPPSettingstoNVMEM] ; |252| 
	.dwpsn	"params.c",253,1
        LRETR
        ; return occurs
	.dwattr DW$65, DW_AT_end_file("params.c")
	.dwattr DW$65, DW_AT_end_line(0xfd)
	.dwattr DW$65, DW_AT_end_column(0x01)
	.dwendtag DW$65

	.sect	".text"
	.global	_SensorUpdate

DW$66	.dwtag  DW_TAG_subprogram, DW_AT_name("SensorUpdate"), DW_AT_symbol_name("_SensorUpdate")
	.dwattr DW$66, DW_AT_low_pc(_SensorUpdate)
	.dwattr DW$66, DW_AT_high_pc(0x00)
	.dwattr DW$66, DW_AT_begin_file("params.c")
	.dwattr DW$66, DW_AT_begin_line(0xff)
	.dwattr DW$66, DW_AT_begin_column(0x06)
	.dwattr DW$66, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$66, DW_AT_skeletal(0x01)
	.dwpsn	"params.c",256,1

;***************************************************************
;* FNAME: _SensorUpdate                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SensorUpdate:
        LCR       #_WriteSensorSettingstoNVMEM ; |257| 
        ; call occurs [#_WriteSensorSettingstoNVMEM] ; |257| 
	.dwpsn	"params.c",258,1
        LRETR
        ; return occurs
	.dwattr DW$66, DW_AT_end_file("params.c")
	.dwattr DW$66, DW_AT_end_line(0x102)
	.dwattr DW$66, DW_AT_end_column(0x01)
	.dwendtag DW$66

	.sect	".text"
	.global	_DamageMonStructUpdate

DW$67	.dwtag  DW_TAG_subprogram, DW_AT_name("DamageMonStructUpdate"), DW_AT_symbol_name("_DamageMonStructUpdate")
	.dwattr DW$67, DW_AT_low_pc(_DamageMonStructUpdate)
	.dwattr DW$67, DW_AT_high_pc(0x00)
	.dwattr DW$67, DW_AT_begin_file("params.c")
	.dwattr DW$67, DW_AT_begin_line(0x106)
	.dwattr DW$67, DW_AT_begin_column(0x06)
	.dwattr DW$67, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$67, DW_AT_skeletal(0x01)
	.dwpsn	"params.c",263,1

;***************************************************************
;* FNAME: _DamageMonStructUpdate        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_DamageMonStructUpdate:
        LCR       #_WriteDamagemontoNVMEM ; |264| 
        ; call occurs [#_WriteDamagemontoNVMEM] ; |264| 
	.dwpsn	"params.c",265,1
        LRETR
        ; return occurs
	.dwattr DW$67, DW_AT_end_file("params.c")
	.dwattr DW$67, DW_AT_end_line(0x109)
	.dwattr DW$67, DW_AT_end_column(0x01)
	.dwendtag DW$67

	.sect	".text"
	.global	_ConfigurationUpdate

DW$68	.dwtag  DW_TAG_subprogram, DW_AT_name("ConfigurationUpdate"), DW_AT_symbol_name("_ConfigurationUpdate")
	.dwattr DW$68, DW_AT_low_pc(_ConfigurationUpdate)
	.dwattr DW$68, DW_AT_high_pc(0x00)
	.dwattr DW$68, DW_AT_begin_file("params.c")
	.dwattr DW$68, DW_AT_begin_line(0x10d)
	.dwattr DW$68, DW_AT_begin_column(0x06)
	.dwattr DW$68, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$68, DW_AT_skeletal(0x01)
	.dwpsn	"params.c",270,1

;***************************************************************
;* FNAME: _ConfigurationUpdate          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ConfigurationUpdate:
        MOVW      DP,#_settings+2
        MOV       @_settings+2,#2       ; |271| 
        MOVW      DP,#_settings+18
        MOV       @_settings+18,#1      ; |272| 
        LCR       #_WriteConfigStructtoNVMEM ; |273| 
        ; call occurs [#_WriteConfigStructtoNVMEM] ; |273| 
	.dwpsn	"params.c",274,1
        LRETR
        ; return occurs
	.dwattr DW$68, DW_AT_end_file("params.c")
	.dwattr DW$68, DW_AT_end_line(0x112)
	.dwattr DW$68, DW_AT_end_column(0x01)
	.dwendtag DW$68

	.sect	".text"
	.global	_SpeedCompStructUpdate

DW$69	.dwtag  DW_TAG_subprogram, DW_AT_name("SpeedCompStructUpdate"), DW_AT_symbol_name("_SpeedCompStructUpdate")
	.dwattr DW$69, DW_AT_low_pc(_SpeedCompStructUpdate)
	.dwattr DW$69, DW_AT_high_pc(0x00)
	.dwattr DW$69, DW_AT_begin_file("params.c")
	.dwattr DW$69, DW_AT_begin_line(0x115)
	.dwattr DW$69, DW_AT_begin_column(0x06)
	.dwattr DW$69, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$69, DW_AT_skeletal(0x01)
	.dwpsn	"params.c",278,1

;***************************************************************
;* FNAME: _SpeedCompStructUpdate        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SpeedCompStructUpdate:
        LCR       #_NominalSpeedUpdate  ; |279| 
        ; call occurs [#_NominalSpeedUpdate] ; |279| 
        MOVW      DP,#_settings+10
        MOV       @_settings+10,#1      ; |281| 
	.dwpsn	"params.c",282,1
        LRETR
        ; return occurs
	.dwattr DW$69, DW_AT_end_file("params.c")
	.dwattr DW$69, DW_AT_end_line(0x11a)
	.dwattr DW$69, DW_AT_end_column(0x01)
	.dwendtag DW$69

	.sect	".text"
	.global	_WioUpdate

DW$70	.dwtag  DW_TAG_subprogram, DW_AT_name("WioUpdate"), DW_AT_symbol_name("_WioUpdate")
	.dwattr DW$70, DW_AT_low_pc(_WioUpdate)
	.dwattr DW$70, DW_AT_high_pc(0x00)
	.dwattr DW$70, DW_AT_begin_file("params.c")
	.dwattr DW$70, DW_AT_begin_line(0x11c)
	.dwattr DW$70, DW_AT_begin_column(0x06)
	.dwattr DW$70, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$70, DW_AT_skeletal(0x01)
	.dwpsn	"params.c",285,1
DW$71	.dwtag  DW_TAG_variable, DW_AT_name("PreviousWIOEnabledState"), DW_AT_symbol_name("_PreviousWIOEnabledState$1")
	.dwattr DW$71, DW_AT_type(*DW$T$11)
	.dwattr DW$71, DW_AT_location[DW_OP_addr _PreviousWIOEnabledState$1]

;***************************************************************
;* FNAME: _WioUpdate                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WioUpdate:
        MOVW      DP,#_wiosettings
        MOV       AL,@_wiosettings      ; |294| 
        MOVW      DP,#_PreviousWIOEnabledState$1
        CMP       AL,@_PreviousWIOEnabledState$1 ; |294| 
        BF        L17,EQ                ; |294| 
        ; branchcc occurs ; |294| 
        MOVW      DP,#_PreviousWIOEnabledState$1
        MOV       @_PreviousWIOEnabledState$1,AL ; |297| 
        LCR       #_WIOCommsOORClearDown ; |298| 
        ; call occurs [#_WIOCommsOORClearDown] ; |298| 
L17:    
        LCR       #_WriteWIOSettingstoNVMEM ; |301| 
        ; call occurs [#_WriteWIOSettingstoNVMEM] ; |301| 
	.dwpsn	"params.c",302,1
        LRETR
        ; return occurs
	.dwattr DW$70, DW_AT_end_file("params.c")
	.dwattr DW$70, DW_AT_end_line(0x12e)
	.dwattr DW$70, DW_AT_end_column(0x01)
	.dwendtag DW$70

	.sect	".text"
	.global	_SPU2ValUpdate

DW$72	.dwtag  DW_TAG_subprogram, DW_AT_name("SPU2ValUpdate"), DW_AT_symbol_name("_SPU2ValUpdate")
	.dwattr DW$72, DW_AT_low_pc(_SPU2ValUpdate)
	.dwattr DW$72, DW_AT_high_pc(0x00)
	.dwattr DW$72, DW_AT_begin_file("params.c")
	.dwattr DW$72, DW_AT_begin_line(0x133)
	.dwattr DW$72, DW_AT_begin_column(0x06)
	.dwattr DW$72, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$72, DW_AT_skeletal(0x01)
	.dwpsn	"params.c",308,1

;***************************************************************
;* FNAME: _SPU2ValUpdate                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SPU2ValUpdate:
        MOVW      DP,#_slave485mb+70
        MOV       AL,#268               ; |314| 
        MOV       @_slave485mb+70,#0    ; |313| 
        LCR       #_CheckAlarmBitSet    ; |314| 
        ; call occurs [#_CheckAlarmBitSet] ; |314| 
        CMPB      AL,#1                 ; |314| 
        BF        L18,EQ                ; |314| 
        ; branchcc occurs ; |314| 
        MOVW      DP,#_alarms
        TBIT      @_alarms,#1           ; |314| 
        BF        L19,NTC               ; |314| 
        ; branchcc occurs ; |314| 
L18:    
        MOV       AL,#268               ; |317| 
        LCR       #_ClearAlarmEvent     ; |317| 
        ; call occurs [#_ClearAlarmEvent] ; |317| 
        MOVW      DP,#_alarms
        AND       @_alarms,#0xfffc      ; |318| 
L19:    
        LCR       #_SensorNumChanged    ; |322| 
        ; call occurs [#_SensorNumChanged] ; |322| 
	.dwpsn	"params.c",323,1
        LRETR
        ; return occurs
	.dwattr DW$72, DW_AT_end_file("params.c")
	.dwattr DW$72, DW_AT_end_line(0x143)
	.dwattr DW$72, DW_AT_end_column(0x01)
	.dwendtag DW$72

	.sect	".text"
	.global	_SetupAlarmLevels

DW$73	.dwtag  DW_TAG_subprogram, DW_AT_name("SetupAlarmLevels"), DW_AT_symbol_name("_SetupAlarmLevels")
	.dwattr DW$73, DW_AT_low_pc(_SetupAlarmLevels)
	.dwattr DW$73, DW_AT_high_pc(0x00)
	.dwattr DW$73, DW_AT_begin_file("params.c")
	.dwattr DW$73, DW_AT_begin_line(0x145)
	.dwattr DW$73, DW_AT_begin_column(0x06)
	.dwattr DW$73, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$73, DW_AT_skeletal(0x01)
	.dwpsn	"params.c",326,1

;***************************************************************
;* FNAME: _SetupAlarmLevels             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SetupAlarmLevels:
        MOVW      DP,#_allsensors+16
        TBIT      @_allsensors+16,#1    ; |327| 
        BF        L20,TC                ; |327| 
        ; branchcc occurs ; |327| 
        LCR       #_SetupNormalModeAlarmLevels ; |331| 
        ; call occurs [#_SetupNormalModeAlarmLevels] ; |331| 
        BF        L21,UNC               ; |331| 
        ; branch occurs ; |331| 
L20:    
        LCR       #_SetupLearningModeAlarmLevels ; |329| 
        ; call occurs [#_SetupLearningModeAlarmLevels] ; |329| 
L21:    
	.dwpsn	"params.c",333,1
        LRETR
        ; return occurs
	.dwattr DW$73, DW_AT_end_file("params.c")
	.dwattr DW$73, DW_AT_end_line(0x14d)
	.dwattr DW$73, DW_AT_end_column(0x01)
	.dwendtag DW$73

	.sect	".text"
	.global	_SensorNumChanged

DW$74	.dwtag  DW_TAG_subprogram, DW_AT_name("SensorNumChanged"), DW_AT_symbol_name("_SensorNumChanged")
	.dwattr DW$74, DW_AT_low_pc(_SensorNumChanged)
	.dwattr DW$74, DW_AT_high_pc(0x00)
	.dwattr DW$74, DW_AT_begin_file("params.c")
	.dwattr DW$74, DW_AT_begin_line(0x151)
	.dwattr DW$74, DW_AT_begin_column(0x06)
	.dwattr DW$74, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$74, DW_AT_skeletal(0x01)
	.dwpsn	"params.c",337,29

;***************************************************************
;* FNAME: _SensorNumChanged             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SensorNumChanged:
        MOVW      DP,#_allsensors+2
        MOV       AL,@_allsensors+2     ; |339| 
        MOVW      DP,#_allsensors+1
        ADD       AL,@_allsensors+1     ; |339| 
        MOVW      DP,#_allsensors
        MOV       @_allsensors,AL       ; |339| 
        LCR       #_ClearEventCodeListArea ; |340| 
        ; call occurs [#_ClearEventCodeListArea] ; |340| 
        LCR       #_UpdateAllSensor     ; |341| 
        ; call occurs [#_UpdateAllSensor] ; |341| 
	.dwpsn	"params.c",342,1
        LRETR
        ; return occurs
	.dwattr DW$74, DW_AT_end_file("params.c")
	.dwattr DW$74, DW_AT_end_line(0x156)
	.dwattr DW$74, DW_AT_end_column(0x01)
	.dwendtag DW$74

	.sect	".text"
	.global	_UpdateAllSensor

DW$75	.dwtag  DW_TAG_subprogram, DW_AT_name("UpdateAllSensor"), DW_AT_symbol_name("_UpdateAllSensor")
	.dwattr DW$75, DW_AT_low_pc(_UpdateAllSensor)
	.dwattr DW$75, DW_AT_high_pc(0x00)
	.dwattr DW$75, DW_AT_begin_file("params.c")
	.dwattr DW$75, DW_AT_begin_line(0x158)
	.dwattr DW$75, DW_AT_begin_column(0x06)
	.dwattr DW$75, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$75, DW_AT_skeletal(0x01)
	.dwpsn	"params.c",345,1

;***************************************************************
;* FNAME: _UpdateAllSensor              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_UpdateAllSensor:
        MOVW      DP,#_settings+10
        MOV       @_settings+10,#1      ; |346| 
	.dwpsn	"params.c",347,1
        LRETR
        ; return occurs
	.dwattr DW$75, DW_AT_end_file("params.c")
	.dwattr DW$75, DW_AT_end_line(0x15b)
	.dwattr DW$75, DW_AT_end_column(0x01)
	.dwendtag DW$75

;***************************************************************
;* FAR STRINGS                                                 *
;***************************************************************
	.sect	".econst"
	.align	2
FSL1:	.string	"old:%u new:%u",0
	.align	2
FSL2:	.string	"OOR:%u :%u",0
;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_sprintf
	.global	_strcpy
	.global	_memset
	.global	_SlowDownBlipControl
	.global	_SetupNormalModeAlarmLevels
	.global	_NominalSpeedUpdate
	.global	_WriteDamagemontoNVMEM
	.global	_SetupLearningModeAlarmLevels
	.global	_WriteWIOSettingstoNVMEM
	.global	_WIOCommsOORClearDown
	.global	_ClearEventCodeListArea
	.global	_ClearAlarmEvent
	.global	_CheckAlarmBitSet
	.global	_WriteConfigStructtoNVMEM
	.global	_WriteSLEMSettingstoNVMEM
	.global	_WriteCPPSettingstoNVMEM
	.global	_WriteSensorSettingstoNVMEM
	.global	_WriteDCModeChecksSettingstoNVMEM
	.global	_WriteNVMemory
	.global	_pcmodbus
	.global	_settings
	.global	_allsensors
	.global	_config
	.global	_manref
	.global	_manrefsum
	.global	_damagemon
	.global	_damalarms
	.global	_speedcompcoeffs
	.global	_wiosettings
	.global	_damagemonignore
	.global	_alarms
	.global	_slave485mb
	.global	_slemsettings
	.global	_cppsettings
	.global	_sensorMoving
	.global	_dcmodechecks

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x16)

DW$T$60	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$60, DW_AT_language(DW_LANG_C)
DW$76	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$77	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$78	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
	.dwendtag DW$T$60


DW$T$55	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$55, DW_AT_language(DW_LANG_C)

DW$T$63	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$63, DW_AT_language(DW_LANG_C)
DW$79	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$63

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)

DW$T$71	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$71, DW_AT_language(DW_LANG_C)
DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$66)
DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$68)
DW$82	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$71


DW$T$73	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$73, DW_AT_language(DW_LANG_C)
DW$83	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$73


DW$T$75	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$75, DW_AT_language(DW_LANG_C)
DW$84	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$85	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$75


DW$T$76	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$76, DW_AT_language(DW_LANG_C)

DW$T$78	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$78, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$78, DW_AT_byte_size(0x1c)
DW$86	.dwtag  DW_TAG_subrange_type
	.dwattr DW$86, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$78

DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)
DW$T$59	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$59, DW_AT_language(DW_LANG_C)
DW$T$92	.dwtag  DW_TAG_typedef, DW_AT_name("PCCmdStruct"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$92, DW_AT_language(DW_LANG_C)
DW$T$94	.dwtag  DW_TAG_typedef, DW_AT_name("settingsstruct"), DW_AT_type(*DW$T$22)
	.dwattr DW$T$94, DW_AT_language(DW_LANG_C)
DW$T$97	.dwtag  DW_TAG_typedef, DW_AT_name("allsensorstruct"), DW_AT_type(*DW$T$26)
	.dwattr DW$T$97, DW_AT_language(DW_LANG_C)
DW$T$100	.dwtag  DW_TAG_typedef, DW_AT_name("configstruct"), DW_AT_type(*DW$T$33)
	.dwattr DW$T$100, DW_AT_language(DW_LANG_C)

DW$T$104	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$103)
	.dwattr DW$T$104, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$104, DW_AT_byte_size(0x118)
DW$87	.dwtag  DW_TAG_subrange_type
	.dwattr DW$87, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$104


DW$T$108	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$107)
	.dwattr DW$T$108, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$108, DW_AT_byte_size(0x1c)
DW$88	.dwtag  DW_TAG_subrange_type
	.dwattr DW$88, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$108

DW$T$111	.dwtag  DW_TAG_typedef, DW_AT_name("damagemonstruct"), DW_AT_type(*DW$T$36)
	.dwattr DW$T$111, DW_AT_language(DW_LANG_C)
DW$T$114	.dwtag  DW_TAG_typedef, DW_AT_name("damalarmsstruct"), DW_AT_type(*DW$T$38)
	.dwattr DW$T$114, DW_AT_language(DW_LANG_C)
DW$T$116	.dwtag  DW_TAG_typedef, DW_AT_name("speedcompstruct"), DW_AT_type(*DW$T$40)
	.dwattr DW$T$116, DW_AT_language(DW_LANG_C)
DW$T$119	.dwtag  DW_TAG_typedef, DW_AT_name("wiosettingsstruct"), DW_AT_type(*DW$T$41)
	.dwattr DW$T$119, DW_AT_language(DW_LANG_C)
DW$T$122	.dwtag  DW_TAG_typedef, DW_AT_name("alarmsstruct"), DW_AT_type(*DW$T$42)
	.dwattr DW$T$122, DW_AT_language(DW_LANG_C)
DW$T$124	.dwtag  DW_TAG_typedef, DW_AT_name("slavecmdstruct"), DW_AT_type(*DW$T$44)
	.dwattr DW$T$124, DW_AT_language(DW_LANG_C)
DW$T$125	.dwtag  DW_TAG_typedef, DW_AT_name("slemsettingsstruct"), DW_AT_type(*DW$T$45)
	.dwattr DW$T$125, DW_AT_language(DW_LANG_C)
DW$T$128	.dwtag  DW_TAG_typedef, DW_AT_name("cppsettingsstruct"), DW_AT_type(*DW$T$46)
	.dwattr DW$T$128, DW_AT_language(DW_LANG_C)
DW$T$131	.dwtag  DW_TAG_typedef, DW_AT_name("sensorMovingstruct"), DW_AT_type(*DW$T$47)
	.dwattr DW$T$131, DW_AT_language(DW_LANG_C)
DW$T$133	.dwtag  DW_TAG_typedef, DW_AT_name("dcmodechecksstruct"), DW_AT_type(*DW$T$51)
	.dwattr DW$T$133, DW_AT_language(DW_LANG_C)
DW$T$66	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$53)
	.dwattr DW$T$66, DW_AT_address_class(0x16)

DW$T$136	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$66)
	.dwattr DW$T$136, DW_AT_language(DW_LANG_C)
DW$89	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$66)
DW$90	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$68)
	.dwendtag DW$T$136

DW$T$68	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$67)
	.dwattr DW$T$68, DW_AT_address_class(0x16)

DW$T$140	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$139)
	.dwattr DW$T$140, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$140, DW_AT_byte_size(0x744)
DW$91	.dwtag  DW_TAG_subrange_type
	.dwattr DW$91, DW_AT_upper_bound(0x5c)
	.dwendtag DW$T$140

DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("tag_PCCmdStruct")
	.dwattr DW$T$20, DW_AT_byte_size(0x110)
DW$92	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$6)
	.dwattr DW$92, DW_AT_name("SlaveAddr"), DW_AT_symbol_name("_SlaveAddr")
	.dwattr DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$92, DW_AT_accessibility(DW_ACCESS_public)
DW$93	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$6)
	.dwattr DW$93, DW_AT_name("Func"), DW_AT_symbol_name("_Func")
	.dwattr DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$93, DW_AT_accessibility(DW_ACCESS_public)
DW$94	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$94, DW_AT_name("StartAdd"), DW_AT_symbol_name("_StartAdd")
	.dwattr DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$94, DW_AT_accessibility(DW_ACCESS_public)
DW$95	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$95, DW_AT_name("NoReg"), DW_AT_symbol_name("_NoReg")
	.dwattr DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$95, DW_AT_accessibility(DW_ACCESS_public)
DW$96	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$96, DW_AT_name("ByteCount"), DW_AT_symbol_name("_ByteCount")
	.dwattr DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$96, DW_AT_accessibility(DW_ACCESS_public)
DW$97	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$97, DW_AT_name("Data"), DW_AT_symbol_name("_Data")
	.dwattr DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$97, DW_AT_accessibility(DW_ACCESS_public)
DW$98	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$98, DW_AT_name("errorflag"), DW_AT_symbol_name("_errorflag")
	.dwattr DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x10f]
	.dwattr DW$98, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_name("tag_settingsstruct")
	.dwattr DW$T$22, DW_AT_byte_size(0x24)
DW$99	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$99, DW_AT_name("watchdog"), DW_AT_symbol_name("_watchdog")
	.dwattr DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$99, DW_AT_accessibility(DW_ACCESS_public)
DW$100	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$100, DW_AT_name("ledflashflag"), DW_AT_symbol_name("_ledflashflag")
	.dwattr DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$100, DW_AT_accessibility(DW_ACCESS_public)
DW$101	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$101, DW_AT_name("updatesafe"), DW_AT_symbol_name("_updatesafe")
	.dwattr DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$101, DW_AT_accessibility(DW_ACCESS_public)
DW$102	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$102, DW_AT_name("tableconfigtype"), DW_AT_symbol_name("_tableconfigtype")
	.dwattr DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$102, DW_AT_accessibility(DW_ACCESS_public)
DW$103	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$103, DW_AT_name("caltableconfigtype"), DW_AT_symbol_name("_caltableconfigtype")
	.dwattr DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$103, DW_AT_accessibility(DW_ACCESS_public)
DW$104	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$104, DW_AT_name("eventmsgid"), DW_AT_symbol_name("_eventmsgid")
	.dwattr DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$104, DW_AT_accessibility(DW_ACCESS_public)
DW$105	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$105, DW_AT_name("configoperationcomplete"), DW_AT_symbol_name("_configoperationcomplete")
	.dwattr DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$105, DW_AT_accessibility(DW_ACCESS_public)
DW$106	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$106, DW_AT_name("sdcarderr"), DW_AT_symbol_name("_sdcarderr")
	.dwattr DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$106, DW_AT_accessibility(DW_ACCESS_public)
DW$107	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$107, DW_AT_name("sderase"), DW_AT_symbol_name("_sderase")
	.dwattr DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$107, DW_AT_accessibility(DW_ACCESS_public)
DW$108	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$108, DW_AT_name("sdreinit"), DW_AT_symbol_name("_sdreinit")
	.dwattr DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$108, DW_AT_accessibility(DW_ACCESS_public)
DW$109	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$109, DW_AT_name("sdcardupdate"), DW_AT_symbol_name("_sdcardupdate")
	.dwattr DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$109, DW_AT_accessibility(DW_ACCESS_public)
DW$110	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$110, DW_AT_name("cardreadflag"), DW_AT_symbol_name("_cardreadflag")
	.dwattr DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$110, DW_AT_accessibility(DW_ACCESS_public)
DW$111	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$111, DW_AT_name("ignore"), DW_AT_symbol_name("_ignore")
	.dwattr DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$111, DW_AT_accessibility(DW_ACCESS_public)
DW$112	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$112, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$112, DW_AT_accessibility(DW_ACCESS_public)
DW$113	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$113, DW_AT_name("spiinuse"), DW_AT_symbol_name("_spiinuse")
	.dwattr DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$113, DW_AT_accessibility(DW_ACCESS_public)
DW$114	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$114, DW_AT_name("dcpeakhold"), DW_AT_symbol_name("_dcpeakhold")
	.dwattr DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$114, DW_AT_accessibility(DW_ACCESS_public)
DW$115	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$115, DW_AT_name("dcpause"), DW_AT_symbol_name("_dcpause")
	.dwattr DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$115, DW_AT_accessibility(DW_ACCESS_public)
DW$116	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$116, DW_AT_name("mastermode"), DW_AT_symbol_name("_mastermode")
	.dwattr DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$116, DW_AT_accessibility(DW_ACCESS_public)
DW$117	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$117, DW_AT_name("updatescaling"), DW_AT_symbol_name("_updatescaling")
	.dwattr DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$117, DW_AT_accessibility(DW_ACCESS_public)
DW$118	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$118, DW_AT_name("forwardasternflag"), DW_AT_symbol_name("_forwardasternflag")
	.dwattr DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$118, DW_AT_accessibility(DW_ACCESS_public)
DW$119	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$119, DW_AT_name("initprogress"), DW_AT_symbol_name("_initprogress")
	.dwattr DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$119, DW_AT_accessibility(DW_ACCESS_public)
DW$120	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$120, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$120, DW_AT_accessibility(DW_ACCESS_public)
DW$121	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$121, DW_AT_name("slowdowncounter"), DW_AT_symbol_name("_slowdowncounter")
	.dwattr DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$121, DW_AT_accessibility(DW_ACCESS_public)
DW$122	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$122, DW_AT_name("slowdowncondition"), DW_AT_symbol_name("_slowdowncondition")
	.dwattr DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$122, DW_AT_accessibility(DW_ACCESS_public)
DW$123	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$123, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$123, DW_AT_accessibility(DW_ACCESS_public)
DW$124	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$124, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$124, DW_AT_accessibility(DW_ACCESS_public)
DW$125	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$125, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$125, DW_AT_accessibility(DW_ACCESS_public)
DW$126	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$126, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$126, DW_AT_accessibility(DW_ACCESS_public)
DW$127	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$127, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$127, DW_AT_accessibility(DW_ACCESS_public)
DW$128	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$128, DW_AT_name("temperaturealarm"), DW_AT_symbol_name("_temperaturealarm")
	.dwattr DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$128, DW_AT_accessibility(DW_ACCESS_public)
DW$129	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$129, DW_AT_name("temperatureslowdown"), DW_AT_symbol_name("_temperatureslowdown")
	.dwattr DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$129, DW_AT_accessibility(DW_ACCESS_public)
DW$130	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$130, DW_AT_name("anadebug"), DW_AT_symbol_name("_anadebug")
	.dwattr DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$130, DW_AT_accessibility(DW_ACCESS_public)
DW$131	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$131, DW_AT_name("serialdebug"), DW_AT_symbol_name("_serialdebug")
	.dwattr DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr DW$131, DW_AT_accessibility(DW_ACCESS_public)
DW$132	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$132, DW_AT_name("timerrunning"), DW_AT_symbol_name("_timerrunning")
	.dwattr DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$132, DW_AT_accessibility(DW_ACCESS_public)
DW$133	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$133, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$133, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_name("tag_allsensorstruct")
	.dwattr DW$T$26, DW_AT_byte_size(0x2d)
DW$134	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$134, DW_AT_name("numsensors"), DW_AT_symbol_name("_numsensors")
	.dwattr DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$134, DW_AT_accessibility(DW_ACCESS_public)
DW$135	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$135, DW_AT_name("numsensorsspu1"), DW_AT_symbol_name("_numsensorsspu1")
	.dwattr DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$135, DW_AT_accessibility(DW_ACCESS_public)
DW$136	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$136, DW_AT_name("numsensorsspu2"), DW_AT_symbol_name("_numsensorsspu2")
	.dwattr DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$136, DW_AT_accessibility(DW_ACCESS_public)
DW$137	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$137, DW_AT_name("nominalspeed"), DW_AT_symbol_name("_nominalspeed")
	.dwattr DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$137, DW_AT_accessibility(DW_ACCESS_public)
DW$138	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$138, DW_AT_name("rpmmin"), DW_AT_symbol_name("_rpmmin")
	.dwattr DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$138, DW_AT_accessibility(DW_ACCESS_public)
DW$139	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$139, DW_AT_name("rpmmax"), DW_AT_symbol_name("_rpmmax")
	.dwattr DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$139, DW_AT_accessibility(DW_ACCESS_public)
DW$140	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$140, DW_AT_name("reflash"), DW_AT_symbol_name("_reflash")
	.dwattr DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$140, DW_AT_accessibility(DW_ACCESS_public)
DW$141	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$141, DW_AT_name("sensorhysteresis"), DW_AT_symbol_name("_sensorhysteresis")
	.dwattr DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$141, DW_AT_accessibility(DW_ACCESS_public)
DW$142	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$142, DW_AT_name("cylinderhysteresis"), DW_AT_symbol_name("_cylinderhysteresis")
	.dwattr DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$142, DW_AT_accessibility(DW_ACCESS_public)
DW$143	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$143, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$143, DW_AT_accessibility(DW_ACCESS_public)
DW$144	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$144, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$144, DW_AT_accessibility(DW_ACCESS_public)
DW$145	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$145, DW_AT_name("slowdowndevcallevel"), DW_AT_symbol_name("_slowdowndevcallevel")
	.dwattr DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$145, DW_AT_accessibility(DW_ACCESS_public)
DW$146	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$146, DW_AT_name("alarmdevcallevel"), DW_AT_symbol_name("_alarmdevcallevel")
	.dwattr DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$146, DW_AT_accessibility(DW_ACCESS_public)
DW$147	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$147, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$147, DW_AT_accessibility(DW_ACCESS_public)
DW$148	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$148, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$148, DW_AT_accessibility(DW_ACCESS_public)
DW$149	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$149, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$149, DW_AT_accessibility(DW_ACCESS_public)
DW$150	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$150, DW_AT_name("flags"), DW_AT_symbol_name("_flags")
	.dwattr DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$150, DW_AT_accessibility(DW_ACCESS_public)
DW$151	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$151, DW_AT_name("slowdownack"), DW_AT_symbol_name("_slowdownack")
	.dwattr DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$151, DW_AT_accessibility(DW_ACCESS_public)
DW$152	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$152, DW_AT_name("alarmack"), DW_AT_symbol_name("_alarmack")
	.dwattr DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$152, DW_AT_accessibility(DW_ACCESS_public)
DW$153	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$153, DW_AT_name("maxmintimer"), DW_AT_symbol_name("_maxmintimer")
	.dwattr DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$153, DW_AT_accessibility(DW_ACCESS_public)
DW$154	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$154, DW_AT_name("enginedircal"), DW_AT_symbol_name("_enginedircal")
	.dwattr DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$154, DW_AT_accessibility(DW_ACCESS_public)
DW$155	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$155, DW_AT_name("dirorder"), DW_AT_symbol_name("_dirorder")
	.dwattr DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$155, DW_AT_accessibility(DW_ACCESS_public)
DW$156	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$156, DW_AT_name("prewarningtimer"), DW_AT_symbol_name("_prewarningtimer")
	.dwattr DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$156, DW_AT_accessibility(DW_ACCESS_public)
DW$157	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$157, DW_AT_name("prewarninglevel"), DW_AT_symbol_name("_prewarninglevel")
	.dwattr DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$157, DW_AT_accessibility(DW_ACCESS_public)
DW$158	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$158, DW_AT_name("rpmlimit"), DW_AT_symbol_name("_rpmlimit")
	.dwattr DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr DW$158, DW_AT_accessibility(DW_ACCESS_public)
DW$159	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$159, DW_AT_name("dsss"), DW_AT_symbol_name("_dsss")
	.dwattr DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$159, DW_AT_accessibility(DW_ACCESS_public)
DW$160	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$160, DW_AT_name("slowdowncallevel"), DW_AT_symbol_name("_slowdowncallevel")
	.dwattr DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$160, DW_AT_accessibility(DW_ACCESS_public)
DW$161	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$161, DW_AT_name("alarmcallevel"), DW_AT_symbol_name("_alarmcallevel")
	.dwattr DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$161, DW_AT_accessibility(DW_ACCESS_public)
DW$162	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$162, DW_AT_name("cylinderalarmcallevel"), DW_AT_symbol_name("_cylinderalarmcallevel")
	.dwattr DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$162, DW_AT_accessibility(DW_ACCESS_public)
DW$163	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$163, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$163, DW_AT_accessibility(DW_ACCESS_public)
DW$164	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$164, DW_AT_name("iBarredVibrationSpeedLow"), DW_AT_symbol_name("_iBarredVibrationSpeedLow")
	.dwattr DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$164, DW_AT_accessibility(DW_ACCESS_public)
DW$165	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$165, DW_AT_name("iBarredVibrationSpeedHigh"), DW_AT_symbol_name("_iBarredVibrationSpeedHigh")
	.dwattr DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$165, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$33, DW_AT_name("tag_configstruct")
	.dwattr DW$T$33, DW_AT_byte_size(0x18)
DW$166	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$166, DW_AT_name("filter"), DW_AT_symbol_name("_filter")
	.dwattr DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$166, DW_AT_accessibility(DW_ACCESS_public)
DW$167	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$167, DW_AT_name("alarmenable"), DW_AT_symbol_name("_alarmenable")
	.dwattr DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$167, DW_AT_accessibility(DW_ACCESS_public)
DW$168	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$168, DW_AT_name("trendmax"), DW_AT_symbol_name("_trendmax")
	.dwattr DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$168, DW_AT_accessibility(DW_ACCESS_public)
DW$169	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$169, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$169, DW_AT_accessibility(DW_ACCESS_public)
DW$170	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$170, DW_AT_name("sdsettings"), DW_AT_symbol_name("_sdsettings")
	.dwattr DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$170, DW_AT_accessibility(DW_ACCESS_public)
DW$171	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$171, DW_AT_name("comms"), DW_AT_symbol_name("_comms")
	.dwattr DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$171, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33

DW$T$103	.dwtag  DW_TAG_typedef, DW_AT_name("manrefstruct"), DW_AT_type(*DW$T$34)
	.dwattr DW$T$103, DW_AT_language(DW_LANG_C)
DW$T$107	.dwtag  DW_TAG_typedef, DW_AT_name("manrefsumstruct"), DW_AT_type(*DW$T$35)
	.dwattr DW$T$107, DW_AT_language(DW_LANG_C)

DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$36, DW_AT_name("tag_damagemonstruct")
	.dwattr DW$T$36, DW_AT_byte_size(0x10)
DW$172	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$172, DW_AT_name("ccsplit"), DW_AT_symbol_name("_ccsplit")
	.dwattr DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$172, DW_AT_accessibility(DW_ACCESS_public)
DW$173	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$173, DW_AT_name("kvalue"), DW_AT_symbol_name("_kvalue")
	.dwattr DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$173, DW_AT_accessibility(DW_ACCESS_public)
DW$174	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$174, DW_AT_name("betavalue"), DW_AT_symbol_name("_betavalue")
	.dwattr DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$174, DW_AT_accessibility(DW_ACCESS_public)
DW$175	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$175, DW_AT_name("rpmlevelx"), DW_AT_symbol_name("_rpmlevelx")
	.dwattr DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$175, DW_AT_accessibility(DW_ACCESS_public)
DW$176	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$176, DW_AT_name("reflevelx"), DW_AT_symbol_name("_reflevelx")
	.dwattr DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$176, DW_AT_accessibility(DW_ACCESS_public)
DW$177	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$177, DW_AT_name("presentstatex"), DW_AT_symbol_name("_presentstatex")
	.dwattr DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$177, DW_AT_accessibility(DW_ACCESS_public)
DW$178	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$178, DW_AT_name("alarmlevelsingle"), DW_AT_symbol_name("_alarmlevelsingle")
	.dwattr DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$178, DW_AT_accessibility(DW_ACCESS_public)
DW$179	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$179, DW_AT_name("alarmlevelcyl"), DW_AT_symbol_name("_alarmlevelcyl")
	.dwattr DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$179, DW_AT_accessibility(DW_ACCESS_public)
DW$180	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$180, DW_AT_name("alarmlevelmbsum"), DW_AT_symbol_name("_alarmlevelmbsum")
	.dwattr DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$180, DW_AT_accessibility(DW_ACCESS_public)
DW$181	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$181, DW_AT_name("cylneighbour"), DW_AT_symbol_name("_cylneighbour")
	.dwattr DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$181, DW_AT_accessibility(DW_ACCESS_public)
DW$182	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$182, DW_AT_name("mbneighbour"), DW_AT_symbol_name("_mbneighbour")
	.dwattr DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$182, DW_AT_accessibility(DW_ACCESS_public)
DW$183	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$183, DW_AT_name("cylneighbouralarms"), DW_AT_symbol_name("_cylneighbouralarms")
	.dwattr DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$183, DW_AT_accessibility(DW_ACCESS_public)
DW$184	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$184, DW_AT_name("mbneighbouralarms"), DW_AT_symbol_name("_mbneighbouralarms")
	.dwattr DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$184, DW_AT_accessibility(DW_ACCESS_public)
DW$185	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$185, DW_AT_name("deltarpmlimit"), DW_AT_symbol_name("_deltarpmlimit")
	.dwattr DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$185, DW_AT_accessibility(DW_ACCESS_public)
DW$186	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$186, DW_AT_name("hysteresis"), DW_AT_symbol_name("_hysteresis")
	.dwattr DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$186, DW_AT_accessibility(DW_ACCESS_public)
DW$187	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$187, DW_AT_name("damagemonenb"), DW_AT_symbol_name("_damagemonenb")
	.dwattr DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$187, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$36


DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_name("tag_damalarmsstruct")
	.dwattr DW$T$38, DW_AT_byte_size(0x04)
DW$188	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$188, DW_AT_name("single"), DW_AT_symbol_name("_single")
	.dwattr DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$188, DW_AT_accessibility(DW_ACCESS_public)
DW$189	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$189, DW_AT_name("cylinder"), DW_AT_symbol_name("_cylinder")
	.dwattr DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$189, DW_AT_accessibility(DW_ACCESS_public)
DW$190	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$190, DW_AT_name("mbneighbour"), DW_AT_symbol_name("_mbneighbour")
	.dwattr DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$190, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38


DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$40, DW_AT_name("tag_speedcompstruct")
	.dwattr DW$T$40, DW_AT_byte_size(0x19)
DW$191	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$191, DW_AT_name("stageflag"), DW_AT_symbol_name("_stageflag")
	.dwattr DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$191, DW_AT_accessibility(DW_ACCESS_public)
DW$192	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$192, DW_AT_name("status"), DW_AT_symbol_name("_status")
	.dwattr DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$192, DW_AT_accessibility(DW_ACCESS_public)
DW$193	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$193, DW_AT_name("speedbands"), DW_AT_symbol_name("_speedbands")
	.dwattr DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$193, DW_AT_accessibility(DW_ACCESS_public)
DW$194	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$194, DW_AT_name("slopecoeff"), DW_AT_symbol_name("_slopecoeff")
	.dwattr DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$194, DW_AT_accessibility(DW_ACCESS_public)
DW$195	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$195, DW_AT_name("initialtimer"), DW_AT_symbol_name("_initialtimer")
	.dwattr DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$195, DW_AT_accessibility(DW_ACCESS_public)
DW$196	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$196, DW_AT_name("learningmodetimer"), DW_AT_symbol_name("_learningmodetimer")
	.dwattr DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$196, DW_AT_accessibility(DW_ACCESS_public)
DW$197	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$197, DW_AT_name("intervaltimer"), DW_AT_symbol_name("_intervaltimer")
	.dwattr DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$197, DW_AT_accessibility(DW_ACCESS_public)
DW$198	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$198, DW_AT_name("numsamples"), DW_AT_symbol_name("_numsamples")
	.dwattr DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$198, DW_AT_accessibility(DW_ACCESS_public)
DW$199	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$199, DW_AT_name("learningleft"), DW_AT_symbol_name("_learningleft")
	.dwattr DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$199, DW_AT_accessibility(DW_ACCESS_public)
DW$200	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$200, DW_AT_name("intervalleft"), DW_AT_symbol_name("_intervalleft")
	.dwattr DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$200, DW_AT_accessibility(DW_ACCESS_public)
DW$201	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$201, DW_AT_name("manappliedminsamples"), DW_AT_symbol_name("_manappliedminsamples")
	.dwattr DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$201, DW_AT_accessibility(DW_ACCESS_public)
DW$202	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$202, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$202, DW_AT_accessibility(DW_ACCESS_public)
DW$203	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$203, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$203, DW_AT_accessibility(DW_ACCESS_public)
DW$204	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$204, DW_AT_name("unused3"), DW_AT_symbol_name("_unused3")
	.dwattr DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$204, DW_AT_accessibility(DW_ACCESS_public)
DW$205	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$205, DW_AT_name("unused4"), DW_AT_symbol_name("_unused4")
	.dwattr DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$205, DW_AT_accessibility(DW_ACCESS_public)
DW$206	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$206, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$206, DW_AT_accessibility(DW_ACCESS_public)
DW$207	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$207, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$207, DW_AT_accessibility(DW_ACCESS_public)
DW$208	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$208, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$208, DW_AT_accessibility(DW_ACCESS_public)
DW$209	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$209, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$209, DW_AT_accessibility(DW_ACCESS_public)
DW$210	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$210, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$210, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40


DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$41, DW_AT_name("tag_wiosettingsstruct")
	.dwattr DW$T$41, DW_AT_byte_size(0x0a)
DW$211	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$211, DW_AT_name("enabled"), DW_AT_symbol_name("_enabled")
	.dwattr DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$211, DW_AT_accessibility(DW_ACCESS_public)
DW$212	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$212, DW_AT_name("alarmmask"), DW_AT_symbol_name("_alarmmask")
	.dwattr DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$212, DW_AT_accessibility(DW_ACCESS_public)
DW$213	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$213, DW_AT_name("alarmupperlevel"), DW_AT_symbol_name("_alarmupperlevel")
	.dwattr DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$213, DW_AT_accessibility(DW_ACCESS_public)
DW$214	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$214, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$214, DW_AT_accessibility(DW_ACCESS_public)
DW$215	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$215, DW_AT_name("hysteresis"), DW_AT_symbol_name("_hysteresis")
	.dwattr DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$215, DW_AT_accessibility(DW_ACCESS_public)
DW$216	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$216, DW_AT_name("scaledmin"), DW_AT_symbol_name("_scaledmin")
	.dwattr DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$216, DW_AT_accessibility(DW_ACCESS_public)
DW$217	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$217, DW_AT_name("scaledmax"), DW_AT_symbol_name("_scaledmax")
	.dwattr DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$217, DW_AT_accessibility(DW_ACCESS_public)
DW$218	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$218, DW_AT_name("units"), DW_AT_symbol_name("_units")
	.dwattr DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$218, DW_AT_accessibility(DW_ACCESS_public)
DW$219	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$219, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$219, DW_AT_accessibility(DW_ACCESS_public)
DW$220	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$220, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$220, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$41


DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$42, DW_AT_name("tag_alarmsstruct")
	.dwattr DW$T$42, DW_AT_byte_size(0x01)
DW$221	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$221, DW_AT_name("slavefailure"), DW_AT_symbol_name("_slavefailure")
	.dwattr DW$221, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$221, DW_AT_accessibility(DW_ACCESS_public)
DW$222	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$222, DW_AT_name("slavefailurelatched"), DW_AT_symbol_name("_slavefailurelatched")
	.dwattr DW$222, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$222, DW_AT_accessibility(DW_ACCESS_public)
DW$223	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$223, DW_AT_name("framfailure"), DW_AT_symbol_name("_framfailure")
	.dwattr DW$223, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$223, DW_AT_accessibility(DW_ACCESS_public)
DW$224	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$224, DW_AT_name("framfailurelatched"), DW_AT_symbol_name("_framfailurelatched")
	.dwattr DW$224, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$224, DW_AT_accessibility(DW_ACCESS_public)
DW$225	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$225, DW_AT_name("pccommsfailure"), DW_AT_symbol_name("_pccommsfailure")
	.dwattr DW$225, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$225, DW_AT_accessibility(DW_ACCESS_public)
DW$226	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$226, DW_AT_name("pccommsfailurelatched"), DW_AT_symbol_name("_pccommsfailurelatched")
	.dwattr DW$226, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$226, DW_AT_accessibility(DW_ACCESS_public)
DW$227	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$227, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$227, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$227, DW_AT_accessibility(DW_ACCESS_public)
DW$228	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$228, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$228, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$228, DW_AT_accessibility(DW_ACCESS_public)
DW$229	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$229, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$229, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$229, DW_AT_accessibility(DW_ACCESS_public)
DW$230	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$230, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$230, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$230, DW_AT_accessibility(DW_ACCESS_public)
DW$231	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$231, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$231, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$231, DW_AT_accessibility(DW_ACCESS_public)
DW$232	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$232, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$232, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$232, DW_AT_accessibility(DW_ACCESS_public)
DW$233	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$233, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$233, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$233, DW_AT_accessibility(DW_ACCESS_public)
DW$234	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$234, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$234, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$234, DW_AT_accessibility(DW_ACCESS_public)
DW$235	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$235, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$235, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$235, DW_AT_accessibility(DW_ACCESS_public)
DW$236	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$236, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$236, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$236, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$42


DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$44, DW_AT_name("tag_slavecmdstruct")
	.dwattr DW$T$44, DW_AT_byte_size(0x48)
DW$237	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$237, DW_AT_name("SlaveAddr"), DW_AT_symbol_name("_SlaveAddr")
	.dwattr DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$237, DW_AT_accessibility(DW_ACCESS_public)
DW$238	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$238, DW_AT_name("Func"), DW_AT_symbol_name("_Func")
	.dwattr DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$238, DW_AT_accessibility(DW_ACCESS_public)
DW$239	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$239, DW_AT_name("StartAdd"), DW_AT_symbol_name("_StartAdd")
	.dwattr DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$239, DW_AT_accessibility(DW_ACCESS_public)
DW$240	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$240, DW_AT_name("NoReg"), DW_AT_symbol_name("_NoReg")
	.dwattr DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$240, DW_AT_accessibility(DW_ACCESS_public)
DW$241	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$241, DW_AT_name("ByteCount"), DW_AT_symbol_name("_ByteCount")
	.dwattr DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$241, DW_AT_accessibility(DW_ACCESS_public)
DW$242	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$43)
	.dwattr DW$242, DW_AT_name("Data"), DW_AT_symbol_name("_Data")
	.dwattr DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$242, DW_AT_accessibility(DW_ACCESS_public)
DW$243	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$243, DW_AT_name("txmode"), DW_AT_symbol_name("_txmode")
	.dwattr DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr DW$243, DW_AT_accessibility(DW_ACCESS_public)
DW$244	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$244, DW_AT_name("slavelost"), DW_AT_symbol_name("_slavelost")
	.dwattr DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$244, DW_AT_accessibility(DW_ACCESS_public)
DW$245	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$245, DW_AT_name("slavenotready"), DW_AT_symbol_name("_slavenotready")
	.dwattr DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr DW$245, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$44


DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$45, DW_AT_name("tag_slemsettingsstruct")
	.dwattr DW$T$45, DW_AT_byte_size(0x06)
DW$246	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$246, DW_AT_name("enabled"), DW_AT_symbol_name("_enabled")
	.dwattr DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$246, DW_AT_accessibility(DW_ACCESS_public)
DW$247	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$247, DW_AT_name("alarmmask"), DW_AT_symbol_name("_alarmmask")
	.dwattr DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$247, DW_AT_accessibility(DW_ACCESS_public)
DW$248	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$248, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$248, DW_AT_accessibility(DW_ACCESS_public)
DW$249	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$249, DW_AT_name("mVfsd"), DW_AT_symbol_name("_mVfsd")
	.dwattr DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$249, DW_AT_accessibility(DW_ACCESS_public)
DW$250	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$250, DW_AT_name("hysteresis"), DW_AT_symbol_name("_hysteresis")
	.dwattr DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$250, DW_AT_accessibility(DW_ACCESS_public)
DW$251	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$251, DW_AT_name("alarmdelay"), DW_AT_symbol_name("_alarmdelay")
	.dwattr DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$251, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$45


DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$46, DW_AT_name("tag_cppsettingsstruct")
	.dwattr DW$T$46, DW_AT_byte_size(0x10)
DW$252	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$252, DW_AT_name("iCppEnable"), DW_AT_symbol_name("_iCppEnable")
	.dwattr DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$252, DW_AT_accessibility(DW_ACCESS_public)
DW$253	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$253, DW_AT_name("iCppLowLimit"), DW_AT_symbol_name("_iCppLowLimit")
	.dwattr DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$253, DW_AT_accessibility(DW_ACCESS_public)
DW$254	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$254, DW_AT_name("iCppHighLimit"), DW_AT_symbol_name("_iCppHighLimit")
	.dwattr DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$254, DW_AT_accessibility(DW_ACCESS_public)
DW$255	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$255, DW_AT_name("cppkvalue"), DW_AT_symbol_name("_cppkvalue")
	.dwattr DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$255, DW_AT_accessibility(DW_ACCESS_public)
DW$256	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$256, DW_AT_name("gammavalue"), DW_AT_symbol_name("_gammavalue")
	.dwattr DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$256, DW_AT_accessibility(DW_ACCESS_public)
DW$257	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$257, DW_AT_name("cpplevelx"), DW_AT_symbol_name("_cpplevelx")
	.dwattr DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$257, DW_AT_accessibility(DW_ACCESS_public)
DW$258	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$258, DW_AT_name("delatRpmPauseDelay"), DW_AT_symbol_name("_delatRpmPauseDelay")
	.dwattr DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$258, DW_AT_accessibility(DW_ACCESS_public)
DW$259	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$259, DW_AT_name("calAlarmThreshhold"), DW_AT_symbol_name("_calAlarmThreshhold")
	.dwattr DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$259, DW_AT_accessibility(DW_ACCESS_public)
DW$260	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$260, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$260, DW_AT_accessibility(DW_ACCESS_public)
DW$261	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$261, DW_AT_name("unused3"), DW_AT_symbol_name("_unused3")
	.dwattr DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$261, DW_AT_accessibility(DW_ACCESS_public)
DW$262	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$262, DW_AT_name("unused4"), DW_AT_symbol_name("_unused4")
	.dwattr DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$262, DW_AT_accessibility(DW_ACCESS_public)
DW$263	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$263, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$263, DW_AT_accessibility(DW_ACCESS_public)
DW$264	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$264, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$264, DW_AT_accessibility(DW_ACCESS_public)
DW$265	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$265, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$265, DW_AT_accessibility(DW_ACCESS_public)
DW$266	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$266, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$266, DW_AT_accessibility(DW_ACCESS_public)
DW$267	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$267, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$267, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$46


DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$47, DW_AT_name("tag_sensorMoving")
	.dwattr DW$T$47, DW_AT_byte_size(0x02)
DW$268	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$268, DW_AT_name("calAlarmThreshhold"), DW_AT_symbol_name("_calAlarmThreshhold")
	.dwattr DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$268, DW_AT_accessibility(DW_ACCESS_public)
DW$269	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$269, DW_AT_name("unusedByte"), DW_AT_symbol_name("_unusedByte")
	.dwattr DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$269, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$47


DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$51, DW_AT_name("tag_dcmodechecksstruct")
	.dwattr DW$T$51, DW_AT_byte_size(0x0f)
DW$270	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$270, DW_AT_name("ideal"), DW_AT_symbol_name("_ideal")
	.dwattr DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$270, DW_AT_accessibility(DW_ACCESS_public)
DW$271	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$271, DW_AT_name("ok"), DW_AT_symbol_name("_ok")
	.dwattr DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$271, DW_AT_accessibility(DW_ACCESS_public)
DW$272	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$272, DW_AT_name("cylinderComparison"), DW_AT_symbol_name("_cylinderComparison")
	.dwattr DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$272, DW_AT_accessibility(DW_ACCESS_public)
DW$273	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$273, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$273, DW_AT_accessibility(DW_ACCESS_public)
DW$274	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$274, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$274, DW_AT_accessibility(DW_ACCESS_public)
DW$275	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$275, DW_AT_name("unused3"), DW_AT_symbol_name("_unused3")
	.dwattr DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$275, DW_AT_accessibility(DW_ACCESS_public)
DW$276	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$276, DW_AT_name("unused4"), DW_AT_symbol_name("_unused4")
	.dwattr DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$276, DW_AT_accessibility(DW_ACCESS_public)
DW$277	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$277, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$277, DW_AT_accessibility(DW_ACCESS_public)
DW$278	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$278, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$278, DW_AT_accessibility(DW_ACCESS_public)
DW$279	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$279, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$279, DW_AT_accessibility(DW_ACCESS_public)
DW$280	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$280, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$280, DW_AT_accessibility(DW_ACCESS_public)
DW$281	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$281, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$281, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$51

DW$T$53	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$53, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$53, DW_AT_byte_size(0x01)
DW$282	.dwtag  DW_TAG_far_type
	.dwattr DW$282, DW_AT_type(*DW$T$53)
DW$T$67	.dwtag  DW_TAG_const_type
	.dwattr DW$T$67, DW_AT_type(*DW$282)
DW$283	.dwtag  DW_TAG_far_type
	.dwattr DW$283, DW_AT_type(*DW$T$138)
DW$T$139	.dwtag  DW_TAG_const_type
	.dwattr DW$T$139, DW_AT_type(*DW$283)
DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)

DW$T$19	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$19, DW_AT_byte_size(0x10a)
DW$284	.dwtag  DW_TAG_subrange_type
	.dwattr DW$284, DW_AT_upper_bound(0x109)
	.dwendtag DW$T$19


DW$T$25	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$25, DW_AT_byte_size(0x0e)
DW$285	.dwtag  DW_TAG_subrange_type
	.dwattr DW$285, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$25


DW$T$37	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$37, DW_AT_byte_size(0x02)
DW$286	.dwtag  DW_TAG_subrange_type
	.dwattr DW$286, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$37


DW$T$39	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$39, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$39, DW_AT_byte_size(0x06)
DW$287	.dwtag  DW_TAG_subrange_type
	.dwattr DW$287, DW_AT_upper_bound(0x02)
DW$288	.dwtag  DW_TAG_subrange_type
	.dwattr DW$288, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$39


DW$T$43	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$43, DW_AT_byte_size(0x40)
DW$289	.dwtag  DW_TAG_subrange_type
	.dwattr DW$289, DW_AT_upper_bound(0x3f)
	.dwendtag DW$T$43


DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$21, DW_AT_byte_size(0x02)
DW$290	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$290, DW_AT_name("enb"), DW_AT_symbol_name("_enb")
	.dwattr DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$290, DW_AT_accessibility(DW_ACCESS_public)
DW$291	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$291, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$291, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21


DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$23, DW_AT_byte_size(0x01)
DW$292	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$292, DW_AT_name("newval"), DW_AT_symbol_name("_newval")
	.dwattr DW$292, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$292, DW_AT_accessibility(DW_ACCESS_public)
DW$293	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$293, DW_AT_name("calmode"), DW_AT_symbol_name("_calmode")
	.dwattr DW$293, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$293, DW_AT_accessibility(DW_ACCESS_public)
DW$294	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$294, DW_AT_name("startcal"), DW_AT_symbol_name("_startcal")
	.dwattr DW$294, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$294, DW_AT_accessibility(DW_ACCESS_public)
DW$295	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$295, DW_AT_name("newvalspu2"), DW_AT_symbol_name("_newvalspu2")
	.dwattr DW$295, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$295, DW_AT_accessibility(DW_ACCESS_public)
DW$296	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$296, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$296, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$296, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_byte_size(0x01)
DW$297	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$297, DW_AT_name("slowdowncntrl"), DW_AT_symbol_name("_slowdowncntrl")
	.dwattr DW$297, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$297, DW_AT_accessibility(DW_ACCESS_public)
DW$298	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$298, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$298, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0f)
	.dwattr DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$298, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$27, DW_AT_byte_size(0x01)
DW$299	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$299, DW_AT_name("inputtap"), DW_AT_symbol_name("_inputtap")
	.dwattr DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$299, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_byte_size(0x01)
DW$300	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$300, DW_AT_name("bitmap"), DW_AT_symbol_name("_bitmap")
	.dwattr DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$300, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$29, DW_AT_byte_size(0x01)
DW$301	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$301, DW_AT_name("graphvalue"), DW_AT_symbol_name("_graphvalue")
	.dwattr DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$301, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$29


DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$30, DW_AT_byte_size(0x03)
DW$302	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$302, DW_AT_name("chanlowthreshold"), DW_AT_symbol_name("_chanlowthreshold")
	.dwattr DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$302, DW_AT_accessibility(DW_ACCESS_public)
DW$303	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$303, DW_AT_name("chanhighthreshold"), DW_AT_symbol_name("_chanhighthreshold")
	.dwattr DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$303, DW_AT_accessibility(DW_ACCESS_public)
DW$304	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$304, DW_AT_name("sensorscalingfactor"), DW_AT_symbol_name("_sensorscalingfactor")
	.dwattr DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$304, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30


DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$31, DW_AT_byte_size(0x02)
DW$305	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$305, DW_AT_name("shortlrate"), DW_AT_symbol_name("_shortlrate")
	.dwattr DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$305, DW_AT_accessibility(DW_ACCESS_public)
DW$306	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$306, DW_AT_name("longlrate"), DW_AT_symbol_name("_longlrate")
	.dwattr DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$306, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_byte_size(0x10)
DW$307	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$307, DW_AT_name("wiorequest"), DW_AT_symbol_name("_wiorequest")
	.dwattr DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$307, DW_AT_accessibility(DW_ACCESS_public)
DW$308	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$308, DW_AT_name("wiocancelled"), DW_AT_symbol_name("_wiocancelled")
	.dwattr DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$308, DW_AT_accessibility(DW_ACCESS_public)
DW$309	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$309, DW_AT_name("wioreceived"), DW_AT_symbol_name("_wioreceived")
	.dwattr DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$309, DW_AT_accessibility(DW_ACCESS_public)
DW$310	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$310, DW_AT_name("slaverequest"), DW_AT_symbol_name("_slaverequest")
	.dwattr DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$310, DW_AT_accessibility(DW_ACCESS_public)
DW$311	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$311, DW_AT_name("slavereceived"), DW_AT_symbol_name("_slavereceived")
	.dwattr DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$311, DW_AT_accessibility(DW_ACCESS_public)
DW$312	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$312, DW_AT_name("slaveretry"), DW_AT_symbol_name("_slaveretry")
	.dwattr DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$312, DW_AT_accessibility(DW_ACCESS_public)
DW$313	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$313, DW_AT_name("pcrequest"), DW_AT_symbol_name("_pcrequest")
	.dwattr DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$313, DW_AT_accessibility(DW_ACCESS_public)
DW$314	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$314, DW_AT_name("pcreqtimeout"), DW_AT_symbol_name("_pcreqtimeout")
	.dwattr DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$314, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$34, DW_AT_name("tag_manrefstruct")
	.dwattr DW$T$34, DW_AT_byte_size(0x0a)
DW$315	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$315, DW_AT_name("reflevel"), DW_AT_symbol_name("_reflevel")
	.dwattr DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$315, DW_AT_accessibility(DW_ACCESS_public)
DW$316	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$316, DW_AT_name("presentstate"), DW_AT_symbol_name("_presentstate")
	.dwattr DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$316, DW_AT_accessibility(DW_ACCESS_public)
DW$317	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$317, DW_AT_name("refvalue"), DW_AT_symbol_name("_refvalue")
	.dwattr DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$317, DW_AT_accessibility(DW_ACCESS_public)
DW$318	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$318, DW_AT_name("reflevel_int"), DW_AT_symbol_name("_reflevel_int")
	.dwattr DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$318, DW_AT_accessibility(DW_ACCESS_public)
DW$319	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$319, DW_AT_name("presentstate_int"), DW_AT_symbol_name("_presentstate_int")
	.dwattr DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$319, DW_AT_accessibility(DW_ACCESS_public)
DW$320	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$320, DW_AT_name("refvalue_int"), DW_AT_symbol_name("_refvalue_int")
	.dwattr DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$320, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34


DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$35, DW_AT_name("tag_manrefsumstruct")
	.dwattr DW$T$35, DW_AT_byte_size(0x02)
DW$321	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$321, DW_AT_name("cylsum"), DW_AT_symbol_name("_cylsum")
	.dwattr DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$321, DW_AT_accessibility(DW_ACCESS_public)
DW$322	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$322, DW_AT_name("mbnsum"), DW_AT_symbol_name("_mbnsum")
	.dwattr DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$322, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35


DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$48, DW_AT_byte_size(0x02)
DW$323	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$323, DW_AT_name("lo"), DW_AT_symbol_name("_lo")
	.dwattr DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$323, DW_AT_accessibility(DW_ACCESS_public)
DW$324	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$324, DW_AT_name("hi"), DW_AT_symbol_name("_hi")
	.dwattr DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$324, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$48


DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$49, DW_AT_byte_size(0x02)
DW$325	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$325, DW_AT_name("lo"), DW_AT_symbol_name("_lo")
	.dwattr DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$325, DW_AT_accessibility(DW_ACCESS_public)
DW$326	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$326, DW_AT_name("hi"), DW_AT_symbol_name("_hi")
	.dwattr DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$326, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$49


DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$50, DW_AT_byte_size(0x02)
DW$327	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$327, DW_AT_name("max"), DW_AT_symbol_name("_max")
	.dwattr DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$327, DW_AT_accessibility(DW_ACCESS_public)
DW$328	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$328, DW_AT_name("threshold"), DW_AT_symbol_name("_threshold")
	.dwattr DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$328, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$50

DW$T$138	.dwtag  DW_TAG_typedef, DW_AT_name("parameterstruct"), DW_AT_type(*DW$T$58)
	.dwattr DW$T$138, DW_AT_language(DW_LANG_C)
DW$T$16	.dwtag  DW_TAG_base_type, DW_AT_name("float")
	.dwattr DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$16, DW_AT_byte_size(0x02)

DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$58, DW_AT_name("tag_parameterstruct")
	.dwattr DW$T$58, DW_AT_byte_size(0x14)
DW$329	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$329, DW_AT_name("reg"), DW_AT_symbol_name("_reg")
	.dwattr DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$329, DW_AT_accessibility(DW_ACCESS_public)
DW$330	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$330, DW_AT_name("lowlim"), DW_AT_symbol_name("_lowlim")
	.dwattr DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$330, DW_AT_accessibility(DW_ACCESS_public)
DW$331	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$331, DW_AT_name("hilim"), DW_AT_symbol_name("_hilim")
	.dwattr DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$331, DW_AT_accessibility(DW_ACCESS_public)
DW$332	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$52)
	.dwattr DW$332, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$332, DW_AT_accessibility(DW_ACCESS_public)
DW$333	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$54)
	.dwattr DW$333, DW_AT_name("stringbuf"), DW_AT_symbol_name("_stringbuf")
	.dwattr DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$333, DW_AT_accessibility(DW_ACCESS_public)
DW$334	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$57)
	.dwattr DW$334, DW_AT_name("paramfunc"), DW_AT_symbol_name("_paramfunc")
	.dwattr DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$334, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$58

DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("F_PARAMFUNC"), DW_AT_type(*DW$T$56)
	.dwattr DW$T$57, DW_AT_language(DW_LANG_C)
DW$T$52	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$52, DW_AT_address_class(0x16)

DW$T$54	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$53)
	.dwattr DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$54, DW_AT_byte_size(0x0c)
DW$335	.dwtag  DW_TAG_subrange_type
	.dwattr DW$335, DW_AT_upper_bound(0x0b)
	.dwendtag DW$T$54

DW$T$56	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$55)
	.dwattr DW$T$56, DW_AT_address_class(0x16)

	.dwattr DW$65, DW_AT_external(0x01)
	.dwattr DW$68, DW_AT_external(0x01)
	.dwattr DW$54, DW_AT_external(0x01)
	.dwattr DW$67, DW_AT_external(0x01)
	.dwattr DW$48, DW_AT_external(0x01)
	.dwattr DW$48, DW_AT_type(*DW$T$10)
	.dwattr DW$64, DW_AT_external(0x01)
	.dwattr DW$72, DW_AT_external(0x01)
	.dwattr DW$63, DW_AT_external(0x01)
	.dwattr DW$74, DW_AT_external(0x01)
	.dwattr DW$66, DW_AT_external(0x01)
	.dwattr DW$73, DW_AT_external(0x01)
	.dwattr DW$69, DW_AT_external(0x01)
	.dwattr DW$75, DW_AT_external(0x01)
	.dwattr DW$70, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$336	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$336, DW_AT_location[DW_OP_reg0]
DW$337	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$337, DW_AT_location[DW_OP_reg1]
DW$338	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$338, DW_AT_location[DW_OP_reg2]
DW$339	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$339, DW_AT_location[DW_OP_reg3]
DW$340	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$340, DW_AT_location[DW_OP_reg4]
DW$341	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$341, DW_AT_location[DW_OP_reg5]
DW$342	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$342, DW_AT_location[DW_OP_reg6]
DW$343	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$343, DW_AT_location[DW_OP_reg7]
DW$344	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$344, DW_AT_location[DW_OP_reg8]
DW$345	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$345, DW_AT_location[DW_OP_reg9]
DW$346	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$346, DW_AT_location[DW_OP_reg10]
DW$347	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$347, DW_AT_location[DW_OP_reg11]
DW$348	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$348, DW_AT_location[DW_OP_reg12]
DW$349	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$349, DW_AT_location[DW_OP_reg13]
DW$350	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$350, DW_AT_location[DW_OP_reg14]
DW$351	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$351, DW_AT_location[DW_OP_reg15]
DW$352	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$352, DW_AT_location[DW_OP_reg16]
DW$353	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$353, DW_AT_location[DW_OP_reg17]
DW$354	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$354, DW_AT_location[DW_OP_reg18]
DW$355	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$355, DW_AT_location[DW_OP_reg19]
DW$356	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$356, DW_AT_location[DW_OP_reg20]
DW$357	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$357, DW_AT_location[DW_OP_reg21]
DW$358	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$358, DW_AT_location[DW_OP_reg22]
DW$359	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$359, DW_AT_location[DW_OP_reg23]
DW$360	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$360, DW_AT_location[DW_OP_reg24]
DW$361	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$361, DW_AT_location[DW_OP_reg25]
DW$362	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$362, DW_AT_location[DW_OP_reg26]
DW$363	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$363, DW_AT_location[DW_OP_reg27]
DW$364	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$364, DW_AT_location[DW_OP_reg28]
DW$365	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$365, DW_AT_location[DW_OP_reg29]
DW$366	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$366, DW_AT_location[DW_OP_reg30]
DW$367	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$367, DW_AT_location[DW_OP_reg31]
DW$368	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$368, DW_AT_location[DW_OP_regx 0x20]
DW$369	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$369, DW_AT_location[DW_OP_regx 0x21]
DW$370	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$370, DW_AT_location[DW_OP_regx 0x22]
DW$371	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$371, DW_AT_location[DW_OP_regx 0x23]
DW$372	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$372, DW_AT_location[DW_OP_regx 0x24]
DW$373	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$373, DW_AT_location[DW_OP_regx 0x25]
DW$374	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$374, DW_AT_location[DW_OP_regx 0x26]
DW$375	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$375, DW_AT_location[DW_OP_regx 0x27]
DW$376	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$376, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

