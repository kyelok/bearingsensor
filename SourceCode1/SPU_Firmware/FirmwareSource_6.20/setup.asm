;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Thu Aug 18 12:16:30 2016                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("setup.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("PerformIsr1"), DW_AT_symbol_name("_PerformIsr1")
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)

DW$2	.dwtag  DW_TAG_subprogram, DW_AT_name("PerformIsr13"), DW_AT_symbol_name("_PerformIsr13")
	.dwattr DW$2, DW_AT_declaration(0x01)
	.dwattr DW$2, DW_AT_external(0x01)

DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("PerformIsr14"), DW_AT_symbol_name("_PerformIsr14")
	.dwattr DW$3, DW_AT_declaration(0x01)
	.dwattr DW$3, DW_AT_external(0x01)

DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("WatchdogKick"), DW_AT_symbol_name("_WatchdogKick")
	.dwattr DW$4, DW_AT_declaration(0x01)
	.dwattr DW$4, DW_AT_external(0x01)

DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("PerformSciTxIntA"), DW_AT_symbol_name("_PerformSciTxIntA")
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)

DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("PerformSciRxIntA"), DW_AT_symbol_name("_PerformSciRxIntA")
	.dwattr DW$6, DW_AT_declaration(0x01)
	.dwattr DW$6, DW_AT_external(0x01)

DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("PerformSciTxIntB"), DW_AT_symbol_name("_PerformSciTxIntB")
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)

DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("PerformSciRxIntB"), DW_AT_symbol_name("_PerformSciRxIntB")
	.dwattr DW$8, DW_AT_declaration(0x01)
	.dwattr DW$8, DW_AT_external(0x01)

DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("PerformSciRxIntC"), DW_AT_symbol_name("_PerformSciRxIntC")
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)

DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("IntADCIsr"), DW_AT_symbol_name("_IntADCIsr")
	.dwattr DW$10, DW_AT_declaration(0x01)
	.dwattr DW$10, DW_AT_external(0x01)

DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteSLEMSettingstoNVMEM"), DW_AT_symbol_name("_WriteSLEMSettingstoNVMEM")
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)

DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("LoadSLEMDefaults"), DW_AT_symbol_name("_LoadSLEMDefaults")
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)

DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteCPPSettingstoNVMEM"), DW_AT_symbol_name("_WriteCPPSettingstoNVMEM")
	.dwattr DW$13, DW_AT_declaration(0x01)
	.dwattr DW$13, DW_AT_external(0x01)

DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("LoadCPPDefaults"), DW_AT_symbol_name("_LoadCPPDefaults")
	.dwattr DW$14, DW_AT_declaration(0x01)
	.dwattr DW$14, DW_AT_external(0x01)

DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteSensorSettingstoNVMEM"), DW_AT_symbol_name("_WriteSensorSettingstoNVMEM")
	.dwattr DW$15, DW_AT_declaration(0x01)
	.dwattr DW$15, DW_AT_external(0x01)

DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("LoadSensorDefaults"), DW_AT_symbol_name("_LoadSensorDefaults")
	.dwattr DW$16, DW_AT_declaration(0x01)
	.dwattr DW$16, DW_AT_external(0x01)

DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("SaveTimetoFram"), DW_AT_symbol_name("_SaveTimetoFram")
	.dwattr DW$17, DW_AT_declaration(0x01)
	.dwattr DW$17, DW_AT_external(0x01)

DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteConfigStructtoNVMEM"), DW_AT_symbol_name("_WriteConfigStructtoNVMEM")
	.dwattr DW$18, DW_AT_declaration(0x01)
	.dwattr DW$18, DW_AT_external(0x01)

DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearAlarmListandEventLog"), DW_AT_symbol_name("_ClearAlarmListandEventLog")
	.dwattr DW$19, DW_AT_declaration(0x01)
	.dwattr DW$19, DW_AT_external(0x01)

DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("InitStatus1Flags"), DW_AT_symbol_name("_InitStatus1Flags")
	.dwattr DW$20, DW_AT_declaration(0x01)
	.dwattr DW$20, DW_AT_external(0x01)

DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteDamagemontoNVMEM"), DW_AT_symbol_name("_WriteDamagemontoNVMEM")
	.dwattr DW$21, DW_AT_declaration(0x01)
	.dwattr DW$21, DW_AT_external(0x01)

DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("SetSensorEnabled"), DW_AT_symbol_name("_SetSensorEnabled")
	.dwattr DW$22, DW_AT_declaration(0x01)
	.dwattr DW$22, DW_AT_external(0x01)
DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$22


DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("SetCalMode"), DW_AT_symbol_name("_SetCalMode")
	.dwattr DW$25, DW_AT_declaration(0x01)
	.dwattr DW$25, DW_AT_external(0x01)
DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$25


DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("SetAlarmMask"), DW_AT_symbol_name("_SetAlarmMask")
	.dwattr DW$28, DW_AT_declaration(0x01)
	.dwattr DW$28, DW_AT_external(0x01)
DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$28


DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteSensorStatustoNVMEM"), DW_AT_symbol_name("_WriteSensorStatustoNVMEM")
	.dwattr DW$31, DW_AT_declaration(0x01)
	.dwattr DW$31, DW_AT_external(0x01)
DW$32	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$31


DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteOffsetAtoNVMEM"), DW_AT_symbol_name("_WriteOffsetAtoNVMEM")
	.dwattr DW$33, DW_AT_declaration(0x01)
	.dwattr DW$33, DW_AT_external(0x01)
DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$33


DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteOffsetBtoNVMEM"), DW_AT_symbol_name("_WriteOffsetBtoNVMEM")
	.dwattr DW$35, DW_AT_declaration(0x01)
	.dwattr DW$35, DW_AT_external(0x01)
DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$35


DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteWIOSettingstoNVMEM"), DW_AT_symbol_name("_WriteWIOSettingstoNVMEM")
	.dwattr DW$37, DW_AT_declaration(0x01)
	.dwattr DW$37, DW_AT_external(0x01)

DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("SDCardInitialise"), DW_AT_symbol_name("_SDCardInitialise")
	.dwattr DW$38, DW_AT_type(*DW$T$10)
	.dwattr DW$38, DW_AT_declaration(0x01)
	.dwattr DW$38, DW_AT_external(0x01)

DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("SaveSDSettings"), DW_AT_symbol_name("_SaveSDSettings")
	.dwattr DW$39, DW_AT_declaration(0x01)
	.dwattr DW$39, DW_AT_external(0x01)

DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("OffsetstoSDCardFile"), DW_AT_symbol_name("_OffsetstoSDCardFile")
	.dwattr DW$40, DW_AT_type(*DW$T$10)
	.dwattr DW$40, DW_AT_declaration(0x01)
	.dwattr DW$40, DW_AT_external(0x01)

DW$41	.dwtag  DW_TAG_subprogram, DW_AT_name("SensorStatustoSDCardFile"), DW_AT_symbol_name("_SensorStatustoSDCardFile")
	.dwattr DW$41, DW_AT_type(*DW$T$10)
	.dwattr DW$41, DW_AT_declaration(0x01)
	.dwattr DW$41, DW_AT_external(0x01)

DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("GeneralSettingstoSDCardFile"), DW_AT_symbol_name("_GeneralSettingstoSDCardFile")
	.dwattr DW$42, DW_AT_type(*DW$T$10)
	.dwattr DW$42, DW_AT_declaration(0x01)
	.dwattr DW$42, DW_AT_external(0x01)

DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("BuildTimeStamp"), DW_AT_symbol_name("_BuildTimeStamp")
	.dwattr DW$43, DW_AT_type(*DW$T$13)
	.dwattr DW$43, DW_AT_declaration(0x01)
	.dwattr DW$43, DW_AT_external(0x01)

DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("LoadDamagemonDefaults"), DW_AT_symbol_name("_LoadDamagemonDefaults")
	.dwattr DW$44, DW_AT_type(*DW$T$10)
	.dwattr DW$44, DW_AT_declaration(0x01)
	.dwattr DW$44, DW_AT_external(0x01)

DW$45	.dwtag  DW_TAG_subprogram, DW_AT_name("SaveSafeStruct1"), DW_AT_symbol_name("_SaveSafeStruct1")
	.dwattr DW$45, DW_AT_type(*DW$T$10)
	.dwattr DW$45, DW_AT_declaration(0x01)
	.dwattr DW$45, DW_AT_external(0x01)

DW$46	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteSpeedCompStructtoNVMEM"), DW_AT_symbol_name("_WriteSpeedCompStructtoNVMEM")
	.dwattr DW$46, DW_AT_type(*DW$T$10)
	.dwattr DW$46, DW_AT_declaration(0x01)
	.dwattr DW$46, DW_AT_external(0x01)

DW$47	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteAllSensorStructtoNVMEM"), DW_AT_symbol_name("_WriteAllSensorStructtoNVMEM")
	.dwattr DW$47, DW_AT_type(*DW$T$10)
	.dwattr DW$47, DW_AT_declaration(0x01)
	.dwattr DW$47, DW_AT_external(0x01)

DW$48	.dwtag  DW_TAG_subprogram, DW_AT_name("PrewarnReset"), DW_AT_symbol_name("_PrewarnReset")
	.dwattr DW$48, DW_AT_type(*DW$T$10)
	.dwattr DW$48, DW_AT_declaration(0x01)
	.dwattr DW$48, DW_AT_external(0x01)

DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearEventCodeListArea"), DW_AT_symbol_name("_ClearEventCodeListArea")
	.dwattr DW$49, DW_AT_type(*DW$T$10)
	.dwattr DW$49, DW_AT_declaration(0x01)
	.dwattr DW$49, DW_AT_external(0x01)
DW$50	.dwtag  DW_TAG_variable, DW_AT_name("settings"), DW_AT_symbol_name("_settings")
	.dwattr DW$50, DW_AT_type(*DW$T$97)
	.dwattr DW$50, DW_AT_declaration(0x01)
	.dwattr DW$50, DW_AT_external(0x01)
DW$51	.dwtag  DW_TAG_variable, DW_AT_name("safe1"), DW_AT_symbol_name("_safe1")
	.dwattr DW$51, DW_AT_type(*DW$T$98)
	.dwattr DW$51, DW_AT_declaration(0x01)
	.dwattr DW$51, DW_AT_external(0x01)
DW$52	.dwtag  DW_TAG_variable, DW_AT_name("safe2"), DW_AT_symbol_name("_safe2")
	.dwattr DW$52, DW_AT_type(*DW$T$99)
	.dwattr DW$52, DW_AT_declaration(0x01)
	.dwattr DW$52, DW_AT_external(0x01)
DW$53	.dwtag  DW_TAG_variable, DW_AT_name("clocktime"), DW_AT_symbol_name("_clocktime")
	.dwattr DW$53, DW_AT_type(*DW$T$100)
	.dwattr DW$53, DW_AT_declaration(0x01)
	.dwattr DW$53, DW_AT_external(0x01)
DW$54	.dwtag  DW_TAG_variable, DW_AT_name("timers"), DW_AT_symbol_name("_timers")
	.dwattr DW$54, DW_AT_type(*DW$T$102)
	.dwattr DW$54, DW_AT_declaration(0x01)
	.dwattr DW$54, DW_AT_external(0x01)
DW$55	.dwtag  DW_TAG_variable, DW_AT_name("allsensors"), DW_AT_symbol_name("_allsensors")
	.dwattr DW$55, DW_AT_type(*DW$T$105)
	.dwattr DW$55, DW_AT_declaration(0x01)
	.dwattr DW$55, DW_AT_external(0x01)
DW$56	.dwtag  DW_TAG_variable, DW_AT_name("config"), DW_AT_symbol_name("_config")
	.dwattr DW$56, DW_AT_type(*DW$T$107)
	.dwattr DW$56, DW_AT_declaration(0x01)
	.dwattr DW$56, DW_AT_external(0x01)
DW$57	.dwtag  DW_TAG_variable, DW_AT_name("receiveC"), DW_AT_symbol_name("_receiveC")
	.dwattr DW$57, DW_AT_type(*DW$T$108)
	.dwattr DW$57, DW_AT_declaration(0x01)
	.dwattr DW$57, DW_AT_external(0x01)
DW$58	.dwtag  DW_TAG_variable, DW_AT_name("rpmdata"), DW_AT_symbol_name("_rpmdata")
	.dwattr DW$58, DW_AT_type(*DW$T$109)
	.dwattr DW$58, DW_AT_declaration(0x01)
	.dwattr DW$58, DW_AT_external(0x01)
DW$59	.dwtag  DW_TAG_variable, DW_AT_name("speedcompcoeffs"), DW_AT_symbol_name("_speedcompcoeffs")
	.dwattr DW$59, DW_AT_type(*DW$T$110)
	.dwattr DW$59, DW_AT_declaration(0x01)
	.dwattr DW$59, DW_AT_external(0x01)
DW$60	.dwtag  DW_TAG_variable, DW_AT_name("prewarn"), DW_AT_symbol_name("_prewarn")
	.dwattr DW$60, DW_AT_type(*DW$T$112)
	.dwattr DW$60, DW_AT_declaration(0x01)
	.dwattr DW$60, DW_AT_external(0x01)
DW$61	.dwtag  DW_TAG_variable, DW_AT_name("offsetA"), DW_AT_symbol_name("_offsetA")
	.dwattr DW$61, DW_AT_type(*DW$T$113)
	.dwattr DW$61, DW_AT_declaration(0x01)
	.dwattr DW$61, DW_AT_external(0x01)
DW$62	.dwtag  DW_TAG_variable, DW_AT_name("offsetB"), DW_AT_symbol_name("_offsetB")
	.dwattr DW$62, DW_AT_type(*DW$T$113)
	.dwattr DW$62, DW_AT_declaration(0x01)
	.dwattr DW$62, DW_AT_external(0x01)
DW$63	.dwtag  DW_TAG_variable, DW_AT_name("wiosettings"), DW_AT_symbol_name("_wiosettings")
	.dwattr DW$63, DW_AT_type(*DW$T$115)
	.dwattr DW$63, DW_AT_declaration(0x01)
	.dwattr DW$63, DW_AT_external(0x01)
DW$64	.dwtag  DW_TAG_variable, DW_AT_name("sdsettings"), DW_AT_symbol_name("_sdsettings")
	.dwattr DW$64, DW_AT_type(*DW$T$116)
	.dwattr DW$64, DW_AT_declaration(0x01)
	.dwattr DW$64, DW_AT_external(0x01)
	.global	_vec
	.sect	".econst"
	.align	2
_vec:
	.field  	_UnusedIsr,32		; _vec[0] @ 0
	.field  	_UnusedIsr,32		; _vec[1] @ 32
	.field  	_UnusedIsr,32		; _vec[2] @ 64
	.field  	_UnusedIsr,32		; _vec[3] @ 96
	.field  	_UnusedIsr,32		; _vec[4] @ 128
	.field  	_UnusedIsr,32		; _vec[5] @ 160
	.field  	_UnusedIsr,32		; _vec[6] @ 192
	.field  	_UnusedIsr,32		; _vec[7] @ 224
	.field  	_UnusedIsr,32		; _vec[8] @ 256
	.field  	_UnusedIsr,32		; _vec[9] @ 288
	.field  	_UnusedIsr,32		; _vec[10] @ 320
	.field  	_UnusedIsr,32		; _vec[11] @ 352
	.field  	_Int13Isr,32		; _vec[12] @ 384
	.field  	_Int14Isr,32		; _vec[13] @ 416
	.field  	_UnusedIsr,32		; _vec[14] @ 448
	.field  	_UnusedIsr,32		; _vec[15] @ 480
	.field  	_UnusedIsr,32		; _vec[16] @ 512
	.field  	_SPIUart_XMNI,32		; _vec[17] @ 544
	.field  	_UnusedIsr,32		; _vec[18] @ 576
	.field  	_UnusedIsr,32		; _vec[19] @ 608
	.field  	_UnusedIsr,32		; _vec[20] @ 640
	.field  	_UnusedIsr,32		; _vec[21] @ 672
	.field  	_UnusedIsr,32		; _vec[22] @ 704
	.field  	_UnusedIsr,32		; _vec[23] @ 736
	.field  	_UnusedIsr,32		; _vec[24] @ 768
	.field  	_UnusedIsr,32		; _vec[25] @ 800
	.field  	_UnusedIsr,32		; _vec[26] @ 832
	.field  	_UnusedIsr,32		; _vec[27] @ 864
	.field  	_UnusedIsr,32		; _vec[28] @ 896
	.field  	_UnusedIsr,32		; _vec[29] @ 928
	.field  	_UnusedIsr,32		; _vec[30] @ 960
	.field  	_UnusedIsr,32		; _vec[31] @ 992
	.field  	_UnusedIsr,32		; _vec[32] @ 1024
	.field  	_UnusedIsr,32		; _vec[33] @ 1056
	.field  	_Int1Xint1Isr,32		; _vec[34] @ 1088
	.field  	_Int1Xint2Isr,32		; _vec[35] @ 1120
	.field  	_IntADCIsr,32		; _vec[36] @ 1152
	.field  	_Int1Isr,32		; _vec[37] @ 1184
	.field  	_UnusedIsr,32		; _vec[38] @ 1216
	.field  	_UnusedIsr,32		; _vec[39] @ 1248
	.field  	_UnusedIsr,32		; _vec[40] @ 1280
	.field  	_UnusedIsr,32		; _vec[41] @ 1312
	.field  	_UnusedIsr,32		; _vec[42] @ 1344
	.field  	_UnusedIsr,32		; _vec[43] @ 1376
	.field  	_UnusedIsr,32		; _vec[44] @ 1408
	.field  	_UnusedIsr,32		; _vec[45] @ 1440
	.field  	_UnusedIsr,32		; _vec[46] @ 1472
	.field  	_UnusedIsr,32		; _vec[47] @ 1504
	.field  	_UnusedIsr,32		; _vec[48] @ 1536
	.field  	_UnusedIsr,32		; _vec[49] @ 1568
	.field  	_UnusedIsr,32		; _vec[50] @ 1600
	.field  	_UnusedIsr,32		; _vec[51] @ 1632
	.field  	_UnusedIsr,32		; _vec[52] @ 1664
	.field  	_UnusedIsr,32		; _vec[53] @ 1696
	.field  	_UnusedIsr,32		; _vec[54] @ 1728
	.field  	_UnusedIsr,32		; _vec[55] @ 1760
	.field  	_UnusedIsr,32		; _vec[56] @ 1792
	.field  	_UnusedIsr,32		; _vec[57] @ 1824
	.field  	_UnusedIsr,32		; _vec[58] @ 1856
	.field  	_UnusedIsr,32		; _vec[59] @ 1888
	.field  	_UnusedIsr,32		; _vec[60] @ 1920
	.field  	_UnusedIsr,32		; _vec[61] @ 1952
	.field  	_UnusedIsr,32		; _vec[62] @ 1984
	.field  	_UnusedIsr,32		; _vec[63] @ 2016
	.field  	_UnusedIsr,32		; _vec[64] @ 2048
	.field  	_UnusedIsr,32		; _vec[65] @ 2080
	.field  	_UnusedIsr,32		; _vec[66] @ 2112
	.field  	_UnusedIsr,32		; _vec[67] @ 2144
	.field  	_UnusedIsr,32		; _vec[68] @ 2176
	.field  	_UnusedIsr,32		; _vec[69] @ 2208
	.field  	_UnusedIsr,32		; _vec[70] @ 2240
	.field  	_UnusedIsr,32		; _vec[71] @ 2272
	.field  	_UnusedIsr,32		; _vec[72] @ 2304
	.field  	_UnusedIsr,32		; _vec[73] @ 2336
	.field  	_UnusedIsr,32		; _vec[74] @ 2368
	.field  	_UnusedIsr,32		; _vec[75] @ 2400
	.field  	_UnusedIsr,32		; _vec[76] @ 2432
	.field  	_UnusedIsr,32		; _vec[77] @ 2464
	.field  	_UnusedIsr,32		; _vec[78] @ 2496
	.field  	_UnusedIsr,32		; _vec[79] @ 2528
	.field  	_UnusedIsr,32		; _vec[80] @ 2560
	.field  	_UnusedIsr,32		; _vec[81] @ 2592
	.field  	_UnusedIsr,32		; _vec[82] @ 2624
	.field  	_UnusedIsr,32		; _vec[83] @ 2656
	.field  	_UnusedIsr,32		; _vec[84] @ 2688
	.field  	_UnusedIsr,32		; _vec[85] @ 2720
	.field  	_UnusedIsr,32		; _vec[86] @ 2752
	.field  	_UnusedIsr,32		; _vec[87] @ 2784
	.field  	_UnusedIsr,32		; _vec[88] @ 2816
	.field  	_UnusedIsr,32		; _vec[89] @ 2848
	.field  	_UnusedIsr,32		; _vec[90] @ 2880
	.field  	_UnusedIsr,32		; _vec[91] @ 2912
	.field  	_UnusedIsr,32		; _vec[92] @ 2944
	.field  	_UnusedIsr,32		; _vec[93] @ 2976
	.field  	_UnusedIsr,32		; _vec[94] @ 3008
	.field  	_Int9SciRxIntA,32		; _vec[95] @ 3040
	.field  	_UnusedIsr,32		; _vec[96] @ 3072
	.field  	_Int9SciRxIntB,32		; _vec[97] @ 3104
	.field  	_UnusedIsr,32		; _vec[98] @ 3136
	.field  	_UnusedIsr,32		; _vec[99] @ 3168
	.field  	_UnusedIsr,32		; _vec[100] @ 3200
	.field  	_UnusedIsr,32		; _vec[101] @ 3232
	.field  	_UnusedIsr,32		; _vec[102] @ 3264
	.field  	_UnusedIsr,32		; _vec[103] @ 3296
	.field  	_UnusedIsr,32		; _vec[104] @ 3328

DW$65	.dwtag  DW_TAG_variable, DW_AT_name("vec"), DW_AT_symbol_name("_vec")
	.dwattr DW$65, DW_AT_location[DW_OP_addr _vec]
	.dwattr DW$65, DW_AT_type(*DW$T$78)
	.dwattr DW$65, DW_AT_external(0x01)
;	C:\CCStudio_v3.3\C2000\cgtools\bin\opt2000.exe C:\Users\Andrew\AppData\Local\Temp\TI9042 C:\Users\Andrew\AppData\Local\Temp\TI9044 
;	C:\CCStudio_v3.3\C2000\cgtools\bin\ac2000.exe -q -D_INLINE -DLARGE_MODEL -IC:/CCStudio_v3.3/C2000/xdais/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/bios/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/rtdx/include/c2000 -IC:/CCStudio_v3.3/C2000/cgtools/include --version=28 --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\Andrew\AppData\Local\Temp\TI9042 --template_info_file C:\Users\Andrew\AppData\Local\Temp\TI9046 --object_file 
	.sect	".text"
	.global	_UnusedIsr

DW$66	.dwtag  DW_TAG_subprogram, DW_AT_name("UnusedIsr"), DW_AT_symbol_name("_UnusedIsr")
	.dwattr DW$66, DW_AT_low_pc(_UnusedIsr)
	.dwattr DW$66, DW_AT_high_pc(0x00)
	.dwattr DW$66, DW_AT_begin_file("setup.c")
	.dwattr DW$66, DW_AT_begin_line(0xa6)
	.dwattr DW$66, DW_AT_begin_column(0x10)
	.dwattr DW$66, DW_AT_TI_interrupt(0x01)
	.dwattr DW$66, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$66, DW_AT_skeletal(0x01)
	.dwpsn	"setup.c",167,1

;***************************************************************
;* FNAME: _UnusedIsr                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_UnusedIsr:
        ASP
        CLRC      PAGE0,OVM
        CLRC      AMODE
        NASP
	.dwpsn	"setup.c",169,1
        IRET
        ; return occurs
	.dwattr DW$66, DW_AT_end_file("setup.c")
	.dwattr DW$66, DW_AT_end_line(0xa9)
	.dwattr DW$66, DW_AT_end_column(0x01)
	.dwendtag DW$66

	.sect	".text"
	.global	_Int1Xint1Isr

DW$67	.dwtag  DW_TAG_subprogram, DW_AT_name("Int1Xint1Isr"), DW_AT_symbol_name("_Int1Xint1Isr")
	.dwattr DW$67, DW_AT_low_pc(_Int1Xint1Isr)
	.dwattr DW$67, DW_AT_high_pc(0x00)
	.dwattr DW$67, DW_AT_begin_file("setup.c")
	.dwattr DW$67, DW_AT_begin_line(0xb0)
	.dwattr DW$67, DW_AT_begin_column(0x10)
	.dwattr DW$67, DW_AT_TI_interrupt(0x01)
	.dwattr DW$67, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$67, DW_AT_skeletal(0x01)
	.dwpsn	"setup.c",177,1

;***************************************************************
;* FNAME: _Int1Xint1Isr                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_Int1Xint1Isr:
        ASP
        CLRC      PAGE0,OVM
        CLRC      AMODE
        OR        IER,#0x0001           ; |179| 
        MOV       AL,*(0:0x0ce1)        ; |180| 
        ORB       AL,#0x01              ; |180| 
        MOV       *(0:0x0ce1),AL        ; |180| 
        NOP
        NASP
	.dwpsn	"setup.c",181,1
        IRET
        ; return occurs
	.dwattr DW$67, DW_AT_end_file("setup.c")
	.dwattr DW$67, DW_AT_end_line(0xb5)
	.dwattr DW$67, DW_AT_end_column(0x01)
	.dwendtag DW$67

	.sect	".text"
	.global	_SPIUart_XMNI

DW$68	.dwtag  DW_TAG_subprogram, DW_AT_name("SPIUart_XMNI"), DW_AT_symbol_name("_SPIUart_XMNI")
	.dwattr DW$68, DW_AT_low_pc(_SPIUart_XMNI)
	.dwattr DW$68, DW_AT_high_pc(0x00)
	.dwattr DW$68, DW_AT_begin_file("setup.c")
	.dwattr DW$68, DW_AT_begin_line(0xbc)
	.dwattr DW$68, DW_AT_begin_column(0x10)
	.dwattr DW$68, DW_AT_TI_interrupt(0x01)
	.dwattr DW$68, DW_AT_frame_base[DW_OP_breg20 -14]
	.dwattr DW$68, DW_AT_skeletal(0x01)
	.dwpsn	"setup.c",189,1

;***************************************************************
;* FNAME: _SPIUart_XMNI                 FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto, 12 SOE     *
;***************************************************************

_SPIUart_XMNI:
        ASP
        PUSH      AR1H:AR0H
        SPM       0
        MOVL      *SP++,XAR4
        MOVL      *SP++,XAR5
        MOVL      *SP++,XAR6
        MOVL      *SP++,XAR7
        MOVL      *SP++,XT
        CLRC      PAGE0,OVM
        CLRC      AMODE
        MOVW      DP,#_settings+14
        MOV       AL,@_settings+14      ; |191| 
        BF        L1,NEQ                ; |191| 
        ; branchcc occurs ; |191| 
        LCR       #_PerformSciRxIntC    ; |193| 
        ; call occurs [#_PerformSciRxIntC] ; |193| 
        BF        L2,UNC                ; |194| 
        ; branch occurs ; |194| 
L1:    
        MOVW      DP,#_receiveC
        MOV       @_receiveC,#1         ; |195| 
L2:    
        MOVL      XT,*--SP
        MOVL      XAR7,*--SP
        MOVL      XAR6,*--SP
        MOVL      XAR5,*--SP
        MOVL      XAR4,*--SP
        POP       AR1H:AR0H
        NASP
	.dwpsn	"setup.c",196,1
        IRET
        ; return occurs
	.dwattr DW$68, DW_AT_end_file("setup.c")
	.dwattr DW$68, DW_AT_end_line(0xc4)
	.dwattr DW$68, DW_AT_end_column(0x01)
	.dwendtag DW$68

	.sect	".text"
	.global	_Int1Xint2Isr

DW$69	.dwtag  DW_TAG_subprogram, DW_AT_name("Int1Xint2Isr"), DW_AT_symbol_name("_Int1Xint2Isr")
	.dwattr DW$69, DW_AT_low_pc(_Int1Xint2Isr)
	.dwattr DW$69, DW_AT_high_pc(0x00)
	.dwattr DW$69, DW_AT_begin_file("setup.c")
	.dwattr DW$69, DW_AT_begin_line(0xcb)
	.dwattr DW$69, DW_AT_begin_column(0x10)
	.dwattr DW$69, DW_AT_TI_interrupt(0x01)
	.dwattr DW$69, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$69, DW_AT_skeletal(0x01)
	.dwpsn	"setup.c",204,1

;***************************************************************
;* FNAME: _Int1Xint2Isr                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_Int1Xint2Isr:
        ASP
        CLRC      PAGE0,OVM
        CLRC      AMODE
        OR        IER,#0x0001           ; |206| 
        MOVW      DP,#_rpmdata
        INC       @_rpmdata             ; |208| 
        MOVW      DP,#_timers+41
        CMP       @_timers+41,#400      ; |209| 
        BF        L3,LO                 ; |209| 
        ; branchcc occurs ; |209| 
        MOVW      DP,#_rpmdata+1
        MOV       @_rpmdata+1,#1        ; |211| 
        MOVW      DP,#_timers+41
        MOV       AL,@_timers+41        ; |212| 
        MOVW      DP,#_rpmdata+3
        MOV       @_rpmdata+3,AL        ; |212| 
        MOVW      DP,#_rpmdata
        MOV       AL,@_rpmdata          ; |213| 
        MOVW      DP,#_rpmdata+2
        MOV       @_rpmdata+2,AL        ; |213| 
        MOVW      DP,#_timers+41
        MOV       @_timers+41,#0        ; |214| 
        MOVW      DP,#_rpmdata
        MOV       @_rpmdata,#0          ; |215| 
L3:    
        MOV       AL,*(0:0x0ce1)        ; |217| 
        ORB       AL,#0x01              ; |217| 
        MOV       *(0:0x0ce1),AL        ; |217| 
        NOP
        NASP
	.dwpsn	"setup.c",218,1
        IRET
        ; return occurs
	.dwattr DW$69, DW_AT_end_file("setup.c")
	.dwattr DW$69, DW_AT_end_line(0xda)
	.dwattr DW$69, DW_AT_end_column(0x01)
	.dwendtag DW$69

	.sect	".text"
	.global	_Int1Isr

DW$70	.dwtag  DW_TAG_subprogram, DW_AT_name("Int1Isr"), DW_AT_symbol_name("_Int1Isr")
	.dwattr DW$70, DW_AT_low_pc(_Int1Isr)
	.dwattr DW$70, DW_AT_high_pc(0x00)
	.dwattr DW$70, DW_AT_begin_file("setup.c")
	.dwattr DW$70, DW_AT_begin_line(0xe3)
	.dwattr DW$70, DW_AT_begin_column(0x10)
	.dwattr DW$70, DW_AT_TI_interrupt(0x01)
	.dwattr DW$70, DW_AT_frame_base[DW_OP_breg20 -14]
	.dwattr DW$70, DW_AT_skeletal(0x01)
	.dwpsn	"setup.c",228,1

;***************************************************************
;* FNAME: _Int1Isr                      FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto, 12 SOE     *
;***************************************************************

_Int1Isr:
        ASP
        PUSH      AR1H:AR0H
        SPM       0
        MOVL      *SP++,XAR4
        MOVL      *SP++,XAR5
        MOVL      *SP++,XAR6
        MOVL      *SP++,XAR7
        MOVL      *SP++,XT
        CLRC      PAGE0,OVM
        CLRC      AMODE
        OR        IER,#0x0001           ; |230| 
        LCR       #_PerformIsr1         ; |231| 
        ; call occurs [#_PerformIsr1] ; |231| 
        MOV       AL,*(0:0x0ce1)        ; |232| 
        ORB       AL,#0x01              ; |232| 
        MOV       *(0:0x0ce1),AL        ; |232| 
        MOVL      XT,*--SP
        MOVL      XAR7,*--SP
        MOVL      XAR6,*--SP
        MOVL      XAR5,*--SP
        MOVL      XAR4,*--SP
        POP       AR1H:AR0H
        NASP
	.dwpsn	"setup.c",233,1
        IRET
        ; return occurs
	.dwattr DW$70, DW_AT_end_file("setup.c")
	.dwattr DW$70, DW_AT_end_line(0xe9)
	.dwattr DW$70, DW_AT_end_column(0x01)
	.dwendtag DW$70

	.sect	".text"
	.global	_Int13Isr

DW$71	.dwtag  DW_TAG_subprogram, DW_AT_name("Int13Isr"), DW_AT_symbol_name("_Int13Isr")
	.dwattr DW$71, DW_AT_low_pc(_Int13Isr)
	.dwattr DW$71, DW_AT_high_pc(0x00)
	.dwattr DW$71, DW_AT_begin_file("setup.c")
	.dwattr DW$71, DW_AT_begin_line(0xf1)
	.dwattr DW$71, DW_AT_begin_column(0x10)
	.dwattr DW$71, DW_AT_TI_interrupt(0x01)
	.dwattr DW$71, DW_AT_frame_base[DW_OP_breg20 -14]
	.dwattr DW$71, DW_AT_skeletal(0x01)
	.dwpsn	"setup.c",242,1

;***************************************************************
;* FNAME: _Int13Isr                     FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto, 12 SOE     *
;***************************************************************

_Int13Isr:
        ASP
        PUSH      AR1H:AR0H
        SPM       0
        MOVL      *SP++,XAR4
        MOVL      *SP++,XAR5
        MOVL      *SP++,XAR6
        MOVL      *SP++,XAR7
        MOVL      *SP++,XT
        CLRC      PAGE0,OVM
        CLRC      AMODE
        OR        IER,#0x0001           ; |244| 
 clrc INTM, DBGM    ; Enable global interrupts and debug accesses
        SPM       #0
        LCR       #_PerformIsr13        ; |246| 
        ; call occurs [#_PerformIsr13] ; |246| 
        MOVL      XT,*--SP
        MOVL      XAR7,*--SP
        MOVL      XAR6,*--SP
        MOVL      XAR5,*--SP
        MOVL      XAR4,*--SP
        POP       AR1H:AR0H
        NASP
	.dwpsn	"setup.c",247,1
        IRET
        ; return occurs
	.dwattr DW$71, DW_AT_end_file("setup.c")
	.dwattr DW$71, DW_AT_end_line(0xf7)
	.dwattr DW$71, DW_AT_end_column(0x01)
	.dwendtag DW$71

	.sect	".text"
	.global	_Int14Isr

DW$72	.dwtag  DW_TAG_subprogram, DW_AT_name("Int14Isr"), DW_AT_symbol_name("_Int14Isr")
	.dwattr DW$72, DW_AT_low_pc(_Int14Isr)
	.dwattr DW$72, DW_AT_high_pc(0x00)
	.dwattr DW$72, DW_AT_begin_file("setup.c")
	.dwattr DW$72, DW_AT_begin_line(0x101)
	.dwattr DW$72, DW_AT_begin_column(0x10)
	.dwattr DW$72, DW_AT_TI_interrupt(0x01)
	.dwattr DW$72, DW_AT_frame_base[DW_OP_breg20 -14]
	.dwattr DW$72, DW_AT_skeletal(0x01)
	.dwpsn	"setup.c",258,1

;***************************************************************
;* FNAME: _Int14Isr                     FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto, 12 SOE     *
;***************************************************************

_Int14Isr:
        ASP
        PUSH      AR1H:AR0H
        SPM       0
        MOVL      *SP++,XAR4
        MOVL      *SP++,XAR5
        MOVL      *SP++,XAR6
        MOVL      *SP++,XAR7
        MOVL      *SP++,XT
        CLRC      PAGE0,OVM
        CLRC      AMODE
 clrc INTM, DBGM    ; Enable global interrupts and debug accesses
        SPM       #0
        LCR       #_PerformIsr14        ; |260| 
        ; call occurs [#_PerformIsr14] ; |260| 
        MOVL      XT,*--SP
        MOVL      XAR7,*--SP
        MOVL      XAR6,*--SP
        MOVL      XAR5,*--SP
        MOVL      XAR4,*--SP
        POP       AR1H:AR0H
        NASP
	.dwpsn	"setup.c",261,1
        IRET
        ; return occurs
	.dwattr DW$72, DW_AT_end_file("setup.c")
	.dwattr DW$72, DW_AT_end_line(0x105)
	.dwattr DW$72, DW_AT_end_column(0x01)
	.dwendtag DW$72

	.sect	".text"
	.global	_Int9SciRxIntA

DW$73	.dwtag  DW_TAG_subprogram, DW_AT_name("Int9SciRxIntA"), DW_AT_symbol_name("_Int9SciRxIntA")
	.dwattr DW$73, DW_AT_low_pc(_Int9SciRxIntA)
	.dwattr DW$73, DW_AT_high_pc(0x00)
	.dwattr DW$73, DW_AT_begin_file("setup.c")
	.dwattr DW$73, DW_AT_begin_line(0x10b)
	.dwattr DW$73, DW_AT_begin_column(0x10)
	.dwattr DW$73, DW_AT_TI_interrupt(0x01)
	.dwattr DW$73, DW_AT_frame_base[DW_OP_breg20 -14]
	.dwattr DW$73, DW_AT_skeletal(0x01)
	.dwpsn	"setup.c",268,1

;***************************************************************
;* FNAME: _Int9SciRxIntA                FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto, 12 SOE     *
;***************************************************************

_Int9SciRxIntA:
        ASP
        PUSH      AR1H:AR0H
        SPM       0
        MOVL      *SP++,XAR4
        MOVL      *SP++,XAR5
        MOVL      *SP++,XAR6
        MOVL      *SP++,XAR7
        MOVL      *SP++,XT
        CLRC      PAGE0,OVM
        CLRC      AMODE
        OR        IER,#0x0100           ; |270| 
        LCR       #_PerformSciRxIntA    ; |271| 
        ; call occurs [#_PerformSciRxIntA] ; |271| 
        MOV       AL,*(0:0x0ce1)        ; |272| 
        OR        AL,#0x0100            ; |272| 
        MOV       *(0:0x0ce1),AL        ; |272| 
        MOVL      XT,*--SP
        MOVL      XAR7,*--SP
        MOVL      XAR6,*--SP
        MOVL      XAR5,*--SP
        MOVL      XAR4,*--SP
        POP       AR1H:AR0H
        NASP
	.dwpsn	"setup.c",273,1
        IRET
        ; return occurs
	.dwattr DW$73, DW_AT_end_file("setup.c")
	.dwattr DW$73, DW_AT_end_line(0x111)
	.dwattr DW$73, DW_AT_end_column(0x01)
	.dwendtag DW$73

	.sect	".text"
	.global	_Int9SciTxIntA

DW$74	.dwtag  DW_TAG_subprogram, DW_AT_name("Int9SciTxIntA"), DW_AT_symbol_name("_Int9SciTxIntA")
	.dwattr DW$74, DW_AT_low_pc(_Int9SciTxIntA)
	.dwattr DW$74, DW_AT_high_pc(0x00)
	.dwattr DW$74, DW_AT_begin_file("setup.c")
	.dwattr DW$74, DW_AT_begin_line(0x116)
	.dwattr DW$74, DW_AT_begin_column(0x10)
	.dwattr DW$74, DW_AT_TI_interrupt(0x01)
	.dwattr DW$74, DW_AT_frame_base[DW_OP_breg20 -14]
	.dwattr DW$74, DW_AT_skeletal(0x01)
	.dwpsn	"setup.c",279,1

;***************************************************************
;* FNAME: _Int9SciTxIntA                FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto, 12 SOE     *
;***************************************************************

_Int9SciTxIntA:
        ASP
        PUSH      AR1H:AR0H
        SPM       0
        MOVL      *SP++,XAR4
        MOVL      *SP++,XAR5
        MOVL      *SP++,XAR6
        MOVL      *SP++,XAR7
        MOVL      *SP++,XT
        CLRC      PAGE0,OVM
        CLRC      AMODE
        OR        IER,#0x0100           ; |281| 
        LCR       #_PerformSciTxIntA    ; |282| 
        ; call occurs [#_PerformSciTxIntA] ; |282| 
        MOV       AL,*(0:0x0ce1)        ; |283| 
        OR        AL,#0x0100            ; |283| 
        MOV       *(0:0x0ce1),AL        ; |283| 
        MOVL      XT,*--SP
        MOVL      XAR7,*--SP
        MOVL      XAR6,*--SP
        MOVL      XAR5,*--SP
        MOVL      XAR4,*--SP
        POP       AR1H:AR0H
        NASP
	.dwpsn	"setup.c",284,1
        IRET
        ; return occurs
	.dwattr DW$74, DW_AT_end_file("setup.c")
	.dwattr DW$74, DW_AT_end_line(0x11c)
	.dwattr DW$74, DW_AT_end_column(0x01)
	.dwendtag DW$74

	.sect	".text"
	.global	_Int9SciRxIntB

DW$75	.dwtag  DW_TAG_subprogram, DW_AT_name("Int9SciRxIntB"), DW_AT_symbol_name("_Int9SciRxIntB")
	.dwattr DW$75, DW_AT_low_pc(_Int9SciRxIntB)
	.dwattr DW$75, DW_AT_high_pc(0x00)
	.dwattr DW$75, DW_AT_begin_file("setup.c")
	.dwattr DW$75, DW_AT_begin_line(0x121)
	.dwattr DW$75, DW_AT_begin_column(0x10)
	.dwattr DW$75, DW_AT_TI_interrupt(0x01)
	.dwattr DW$75, DW_AT_frame_base[DW_OP_breg20 -14]
	.dwattr DW$75, DW_AT_skeletal(0x01)
	.dwpsn	"setup.c",290,1

;***************************************************************
;* FNAME: _Int9SciRxIntB                FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto, 12 SOE     *
;***************************************************************

_Int9SciRxIntB:
        ASP
        PUSH      AR1H:AR0H
        SPM       0
        MOVL      *SP++,XAR4
        MOVL      *SP++,XAR5
        MOVL      *SP++,XAR6
        MOVL      *SP++,XAR7
        MOVL      *SP++,XT
        CLRC      PAGE0,OVM
        CLRC      AMODE
        OR        IER,#0x0100           ; |292| 
        LCR       #_PerformSciRxIntB    ; |293| 
        ; call occurs [#_PerformSciRxIntB] ; |293| 
        MOV       AL,*(0:0x0ce1)        ; |294| 
        OR        AL,#0x0100            ; |294| 
        MOV       *(0:0x0ce1),AL        ; |294| 
        MOVL      XT,*--SP
        MOVL      XAR7,*--SP
        MOVL      XAR6,*--SP
        MOVL      XAR5,*--SP
        MOVL      XAR4,*--SP
        POP       AR1H:AR0H
        NASP
	.dwpsn	"setup.c",295,1
        IRET
        ; return occurs
	.dwattr DW$75, DW_AT_end_file("setup.c")
	.dwattr DW$75, DW_AT_end_line(0x127)
	.dwattr DW$75, DW_AT_end_column(0x01)
	.dwendtag DW$75

	.sect	".text"
	.global	_Int9SciTxIntB

DW$76	.dwtag  DW_TAG_subprogram, DW_AT_name("Int9SciTxIntB"), DW_AT_symbol_name("_Int9SciTxIntB")
	.dwattr DW$76, DW_AT_low_pc(_Int9SciTxIntB)
	.dwattr DW$76, DW_AT_high_pc(0x00)
	.dwattr DW$76, DW_AT_begin_file("setup.c")
	.dwattr DW$76, DW_AT_begin_line(0x12c)
	.dwattr DW$76, DW_AT_begin_column(0x10)
	.dwattr DW$76, DW_AT_TI_interrupt(0x01)
	.dwattr DW$76, DW_AT_frame_base[DW_OP_breg20 -14]
	.dwattr DW$76, DW_AT_skeletal(0x01)
	.dwpsn	"setup.c",301,1

;***************************************************************
;* FNAME: _Int9SciTxIntB                FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto, 12 SOE     *
;***************************************************************

_Int9SciTxIntB:
        ASP
        PUSH      AR1H:AR0H
        SPM       0
        MOVL      *SP++,XAR4
        MOVL      *SP++,XAR5
        MOVL      *SP++,XAR6
        MOVL      *SP++,XAR7
        MOVL      *SP++,XT
        CLRC      PAGE0,OVM
        CLRC      AMODE
        OR        IER,#0x0100           ; |304| 
        LCR       #_PerformSciTxIntB    ; |305| 
        ; call occurs [#_PerformSciTxIntB] ; |305| 
        MOV       AL,*(0:0x0ce1)        ; |306| 
        OR        AL,#0x0100            ; |306| 
        MOV       *(0:0x0ce1),AL        ; |306| 
        MOVL      XT,*--SP
        MOVL      XAR7,*--SP
        MOVL      XAR6,*--SP
        MOVL      XAR5,*--SP
        MOVL      XAR4,*--SP
        POP       AR1H:AR0H
        NASP
	.dwpsn	"setup.c",307,1
        IRET
        ; return occurs
	.dwattr DW$76, DW_AT_end_file("setup.c")
	.dwattr DW$76, DW_AT_end_line(0x133)
	.dwattr DW$76, DW_AT_end_column(0x01)
	.dwendtag DW$76

	.sect	".text"
	.global	_SetupInterruptsandTimers

DW$77	.dwtag  DW_TAG_subprogram, DW_AT_name("SetupInterruptsandTimers"), DW_AT_symbol_name("_SetupInterruptsandTimers")
	.dwattr DW$77, DW_AT_low_pc(_SetupInterruptsandTimers)
	.dwattr DW$77, DW_AT_high_pc(0x00)
	.dwattr DW$77, DW_AT_begin_file("setup.c")
	.dwattr DW$77, DW_AT_begin_line(0x13e)
	.dwattr DW$77, DW_AT_begin_column(0x06)
	.dwattr DW$77, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$77, DW_AT_skeletal(0x01)
	.dwpsn	"setup.c",319,1

;***************************************************************
;* FNAME: _SetupInterruptsandTimers     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SetupInterruptsandTimers:
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |329| 
 eallow             ; Enable accesses to PIE control registers
        MOVB      AL,#47                ; |333| 
        SPM       #0
        MOV       *(0:0x7029),AL        ; |333| 
        LCR       #_WatchdogKick        ; |338| 
        ; call occurs [#_WatchdogKick] ; |338| 
        MOVL      XAR5,#750000          ; |347| 
        MOVL      XAR4,#3072            ; |347| 
        MOVL      *+XAR4[0],XAR5        ; |347| 
        MOVB      ACC,#0
        MOVL      *+XAR4[2],XAR5        ; |348| 
        MOVL      *+XAR4[6],ACC         ; |349| 
        MOV       *+XAR4[4],#18464      ; |350| 
        MOVL      XAR4,#3080            ; |352| 
        MOVL      *+XAR4[0],XAR5        ; |352| 
        MOVL      *+XAR4[2],XAR5        ; |353| 
        MOVL      *+XAR4[6],ACC         ; |354| 
        MOV       *+XAR4[4],#2080       ; |355| 
        MOVL      XAR4,#3088            ; |357| 
        MOVL      *+XAR4[0],XAR5        ; |357| 
        MOVL      *+XAR4[2],XAR5        ; |358| 
        MOVL      *+XAR4[6],ACC         ; |359| 
        MOVB      AL,#5                 ; |363| 
        MOV       *+XAR4[4],#2080       ; |360| 
        MOV       *(0:0x7071),AL        ; |363| 
        MOVB      AL,#255               ; |364| 
        MOV       *(0:0x70d2),AL        ; |364| 
        MOVB      AL,#1                 ; |368| 
        MOV       *(0:0x7077),AL        ; |368| 
        MOVB      AL,#112               ; |371| 
        MOV       *(0:0x0ce2),AL        ; |371| 
        MOVB      AL,#15                ; |372| 
        MOV       *(0:0x0cf2),AL        ; |372| 
        NOP
        NOP
        MOV       AL,*(0:0x0ce0)        ; |373| 
        ORB       AL,#0x01              ; |373| 
        MOV       *(0:0x0ce0),AL        ; |373| 
 edis               ; Disable accesses to PIE control registers
        OR        IER,#0x0101           ; |382| 
 clrc INTM		     ; Enable global interrupts
        MOVL      XAR4,#_timers         ; |397| 
	.dwpsn	"setup.c",395,0
        MOVB      XAR0,#0
L4:    
DW$L$_SetupInterruptsandTimers$2$B:
	.dwpsn	"setup.c",396,0
        MOV       *+XAR4[AR0],#0        ; |397| 
        ADDB      XAR0,#1               ; |395| 
        MOV       AL,AR0                ; |395| 
        CMPB      AL,#76                ; |395| 
	.dwpsn	"setup.c",398,0
        BF        L4,LO                 ; |395| 
        ; branchcc occurs ; |395| 
DW$L$_SetupInterruptsandTimers$2$E:
        SPM       #0
        MOVW      DP,#_timers+42
        MOV       @_timers+42,#200      ; |400| 
        MOVW      DP,#_timers+66
        MOV       @_timers+66,#1000     ; |402| 
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |404| 
	.dwpsn	"setup.c",406,1
        LRETR
        ; return occurs

DW$78	.dwtag  DW_TAG_loop
	.dwattr DW$78, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\setup.asm:L4:1:1471518990")
	.dwattr DW$78, DW_AT_begin_file("setup.c")
	.dwattr DW$78, DW_AT_begin_line(0x18b)
	.dwattr DW$78, DW_AT_end_line(0x18e)
DW$79	.dwtag  DW_TAG_loop_range
	.dwattr DW$79, DW_AT_low_pc(DW$L$_SetupInterruptsandTimers$2$B)
	.dwattr DW$79, DW_AT_high_pc(DW$L$_SetupInterruptsandTimers$2$E)
	.dwendtag DW$78

	.dwattr DW$77, DW_AT_end_file("setup.c")
	.dwattr DW$77, DW_AT_end_line(0x196)
	.dwattr DW$77, DW_AT_end_column(0x01)
	.dwendtag DW$77

	.sect	".text"
	.global	_SetupPIEVectors

DW$80	.dwtag  DW_TAG_subprogram, DW_AT_name("SetupPIEVectors"), DW_AT_symbol_name("_SetupPIEVectors")
	.dwattr DW$80, DW_AT_low_pc(_SetupPIEVectors)
	.dwattr DW$80, DW_AT_high_pc(0x00)
	.dwattr DW$80, DW_AT_begin_file("setup.c")
	.dwattr DW$80, DW_AT_begin_line(0x199)
	.dwattr DW$80, DW_AT_begin_column(0x06)
	.dwattr DW$80, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$80, DW_AT_skeletal(0x01)
	.dwpsn	"setup.c",410,1

;***************************************************************
;* FNAME: _SetupPIEVectors              FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_SetupPIEVectors:
        ADDB      SP,#2
        MOVL      XAR4,#3330            ; |413| 
        MOVL      XAR5,#_vec            ; |412| 
 eallow             ; Enable accesses to PIE control registers
        MOV       *-SP[1],#0            ; |416| 
        MOV       AL,*-SP[1]            ; |416| 
        CMPB      AL,#210               ; |416| 
        BF        L6,HIS                ; |416| 
        ; branchcc occurs ; |416| 
L5:    
DW$L$_SetupPIEVectors$2$B:
	.dwpsn	"setup.c",417,0
        MOVL      ACC,*XAR5++           ; |417| 
        MOVL      *XAR4++,ACC           ; |417| 
        INC       *-SP[1]               ; |416| 
        MOV       AL,*-SP[1]            ; |416| 
        CMPB      AL,#210               ; |416| 
        BF        L5,LO                 ; |416| 
        ; branchcc occurs ; |416| 
DW$L$_SetupPIEVectors$2$E:
L6:    
 edis               ; Disable accesses to PIE control registers
        SPM       #0
        SUBB      SP,#2
	.dwpsn	"setup.c",419,1
        LRETR
        ; return occurs

DW$81	.dwtag  DW_TAG_loop
	.dwattr DW$81, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\setup.asm:L5:1:1471518990")
	.dwattr DW$81, DW_AT_begin_file("setup.c")
	.dwattr DW$81, DW_AT_begin_line(0x1a0)
	.dwattr DW$81, DW_AT_end_line(0x1a1)
DW$82	.dwtag  DW_TAG_loop_range
	.dwattr DW$82, DW_AT_low_pc(DW$L$_SetupPIEVectors$2$B)
	.dwattr DW$82, DW_AT_high_pc(DW$L$_SetupPIEVectors$2$E)
	.dwendtag DW$81

	.dwattr DW$80, DW_AT_end_file("setup.c")
	.dwattr DW$80, DW_AT_end_line(0x1a3)
	.dwattr DW$80, DW_AT_end_column(0x01)
	.dwendtag DW$80

	.sect	".text"
	.global	_TimingSetup

DW$83	.dwtag  DW_TAG_subprogram, DW_AT_name("TimingSetup"), DW_AT_symbol_name("_TimingSetup")
	.dwattr DW$83, DW_AT_low_pc(_TimingSetup)
	.dwattr DW$83, DW_AT_high_pc(0x00)
	.dwattr DW$83, DW_AT_begin_file("setup.c")
	.dwattr DW$83, DW_AT_begin_line(0x1a6)
	.dwattr DW$83, DW_AT_begin_column(0x06)
	.dwattr DW$83, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$83, DW_AT_skeletal(0x01)
	.dwpsn	"setup.c",423,1

;***************************************************************
;* FNAME: _TimingSetup                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_TimingSetup:
 eallow             ; Enable accesses to PIE control registers
        MOV       AL,*(0:0x0b34)        ; |432| 
        ORB       AL,#0x08              ; |432| 
        MOVB      XAR6,#0
        MOV       *(0:0x0b34),AL        ; |432| 
        MOVB      AL,#10                ; |433| 
	.dwpsn	"setup.c",440,0
        MOV       *(0:0x7021),AL        ; |433| 
L7:    
DW$L$_TimingSetup$2$B:
	.dwpsn	"setup.c",441,0
        MOVB      AL,#85                ; |442| 
        MOV       *(0:0x7025),AL        ; |442| 
        MOVB      AL,#170               ; |443| 
        MOV       *(0:0x7025),AL        ; |443| 
        MOVL      ACC,XAR6              ; |443| 
        ADDB      ACC,#1                ; |440| 
        MOVL      XAR6,ACC              ; |440| 
        MOV       ACC,#9362             ; |440| 
        CMPL      ACC,XAR6              ; |440| 
	.dwpsn	"setup.c",444,0
        BF        L7,GT                 ; |440| 
        ; branchcc occurs ; |440| 
DW$L$_TimingSetup$2$E:
        MOVL      XAR4,#2848            ; |447| 
        AND       *+XAR4[0],#49151      ; |447| 
        MOVL      XAR4,#2850            ; |448| 
        AND       *+XAR4[0],#49151      ; |448| 
        MOVL      XAR4,#2852            ; |457| 
        MOVL      XAR5,#201252          ; |457| 
        MOVL      *+XAR4[0],XAR5        ; |457| 
        MOVL      XAR4,#2860            ; |459| 
        AND       *+XAR4[0],#49151      ; |459| 
        MOVL      XAR4,#2862            ; |460| 
        AND       *+XAR4[0],#49151      ; |460| 
        MOVB      AL,#62                ; |461| 
        MOV       *(0:0x0b38),AL        ; |461| 
        NOP
 edis               ; Disable accesses to PIE control registers
        SPM       #0
	.dwpsn	"setup.c",463,1
        LRETR
        ; return occurs

DW$84	.dwtag  DW_TAG_loop
	.dwattr DW$84, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\setup.asm:L7:1:1471518990")
	.dwattr DW$84, DW_AT_begin_file("setup.c")
	.dwattr DW$84, DW_AT_begin_line(0x1b8)
	.dwattr DW$84, DW_AT_end_line(0x1bc)
DW$85	.dwtag  DW_TAG_loop_range
	.dwattr DW$85, DW_AT_low_pc(DW$L$_TimingSetup$2$B)
	.dwattr DW$85, DW_AT_high_pc(DW$L$_TimingSetup$2$E)
	.dwendtag DW$84

	.dwattr DW$83, DW_AT_end_file("setup.c")
	.dwattr DW$83, DW_AT_end_line(0x1cf)
	.dwattr DW$83, DW_AT_end_column(0x01)
	.dwendtag DW$83

	.sect	".text"
	.global	_FlashSetup

DW$86	.dwtag  DW_TAG_subprogram, DW_AT_name("FlashSetup"), DW_AT_symbol_name("_FlashSetup")
	.dwattr DW$86, DW_AT_low_pc(_FlashSetup)
	.dwattr DW$86, DW_AT_high_pc(0x00)
	.dwattr DW$86, DW_AT_begin_file("setup.c")
	.dwattr DW$86, DW_AT_begin_line(0x1d3)
	.dwattr DW$86, DW_AT_begin_column(0x06)
	.dwattr DW$86, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$86, DW_AT_skeletal(0x01)
	.dwpsn	"setup.c",468,1

;***************************************************************
;* FNAME: _FlashSetup                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_FlashSetup:
 eallow             ; Enable accesses to PIE control registers
        MOV       AL,*(0:0x0a80)        ; |470| 
        ORB       AL,#0x01              ; |470| 
        MOV       *(0:0x0a80),AL        ; |470| 
        NOP
 edis               ; Disable accesses to PIE control registers
        SPM       #0
	.dwpsn	"setup.c",472,1
        LRETR
        ; return occurs
	.dwattr DW$86, DW_AT_end_file("setup.c")
	.dwattr DW$86, DW_AT_end_line(0x1d8)
	.dwattr DW$86, DW_AT_end_column(0x01)
	.dwendtag DW$86

	.sect	".text"
	.global	_InternalRamSetup

DW$87	.dwtag  DW_TAG_subprogram, DW_AT_name("InternalRamSetup"), DW_AT_symbol_name("_InternalRamSetup")
	.dwattr DW$87, DW_AT_low_pc(_InternalRamSetup)
	.dwattr DW$87, DW_AT_high_pc(0x00)
	.dwattr DW$87, DW_AT_begin_file("setup.c")
	.dwattr DW$87, DW_AT_begin_line(0x1da)
	.dwattr DW$87, DW_AT_begin_column(0x06)
	.dwattr DW$87, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$87, DW_AT_skeletal(0x01)
	.dwpsn	"setup.c",475,1

;***************************************************************
;* FNAME: _InternalRamSetup             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_InternalRamSetup:
 eallow             ; Enable accesses to PIE control registers
        MOV       AL,#768               ; |477| 
        MOV       *(0:0x0950),AL        ; |477| 
        MOV       *(0:0x0951),AL        ; |478| 
        MOV       *(0:0x0952),AL        ; |479| 
        MOV       *(0:0x0953),AL        ; |480| 
        MOV       *(0:0x0954),AL        ; |481| 
        NOP
 edis               ; Disable accesses to PIE control registers
        SPM       #0
	.dwpsn	"setup.c",483,1
        LRETR
        ; return occurs
	.dwattr DW$87, DW_AT_end_file("setup.c")
	.dwattr DW$87, DW_AT_end_line(0x1e3)
	.dwattr DW$87, DW_AT_end_column(0x01)
	.dwendtag DW$87

	.sect	".text"
	.global	_AllSensorInit

DW$88	.dwtag  DW_TAG_subprogram, DW_AT_name("AllSensorInit"), DW_AT_symbol_name("_AllSensorInit")
	.dwattr DW$88, DW_AT_low_pc(_AllSensorInit)
	.dwattr DW$88, DW_AT_high_pc(0x00)
	.dwattr DW$88, DW_AT_begin_file("setup.c")
	.dwattr DW$88, DW_AT_begin_line(0x1e6)
	.dwattr DW$88, DW_AT_begin_column(0x06)
	.dwattr DW$88, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$88, DW_AT_skeletal(0x01)
	.dwpsn	"setup.c",487,1

;***************************************************************
;* FNAME: _AllSensorInit                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_AllSensorInit:
        MOVW      DP,#_allsensors+16
        AND       @_allsensors+16,#0xfffe ; |488| 
        MOVW      DP,#_allsensors+17
        MOV       @_allsensors+17,#0    ; |489| 
        MOVW      DP,#_allsensors+18
        MOV       @_allsensors+18,#0    ; |490| 
        MOVW      DP,#_allsensors+19
        MOV       @_allsensors+19,#60   ; |491| 
	.dwpsn	"setup.c",492,1
        LRETR
        ; return occurs
	.dwattr DW$88, DW_AT_end_file("setup.c")
	.dwattr DW$88, DW_AT_end_line(0x1ec)
	.dwattr DW$88, DW_AT_end_column(0x01)
	.dwendtag DW$88

	.sect	".text"
	.global	_SetupDefaultSettings

DW$89	.dwtag  DW_TAG_subprogram, DW_AT_name("SetupDefaultSettings"), DW_AT_symbol_name("_SetupDefaultSettings")
	.dwattr DW$89, DW_AT_low_pc(_SetupDefaultSettings)
	.dwattr DW$89, DW_AT_high_pc(0x00)
	.dwattr DW$89, DW_AT_begin_file("setup.c")
	.dwattr DW$89, DW_AT_begin_line(0x203)
	.dwattr DW$89, DW_AT_begin_column(0x06)
	.dwattr DW$89, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$89, DW_AT_skeletal(0x01)
	.dwpsn	"setup.c",516,1

;***************************************************************
;* FNAME: _SetupDefaultSettings         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SetupDefaultSettings:
        MOVW      DP,#_allsensors
        MOV       @_allsensors,#0       ; |520| 
        MOVW      DP,#_allsensors+1
        MOV       @_allsensors+1,#0     ; |522| 
        MOVB      AL,#50                ; |528| 
        MOVW      DP,#_allsensors+2
        MOV       @_allsensors+2,#0     ; |523| 
        MOVW      DP,#_allsensors+3
        MOVL      XAR5,#_allsensors     ; |543| 
        MOV       @_allsensors+3,#100   ; |524| 
        MOVW      DP,#_allsensors+4
        MOV       @_allsensors+4,#20    ; |525| 
        MOVW      DP,#_allsensors+5
        MOV       @_allsensors+5,#110   ; |526| 
        MOVW      DP,#_allsensors+6
        MOV       @_allsensors+6,#10    ; |527| 
        MOVW      DP,#_allsensors+7
        MOV       @_allsensors+7,AL     ; |528| 
        MOVW      DP,#_allsensors+8
        MOV       @_allsensors+8,AL     ; |529| 
        MOVW      DP,#_allsensors+10
        MOV       @_allsensors+10,#500  ; |531| 
        MOVW      DP,#_allsensors+14
        MOV       @_allsensors+14,#400  ; |532| 
        MOVW      DP,#_allsensors+15
        MOV       @_allsensors+15,#300  ; |533| 
        MOVW      DP,#_allsensors+9
        MOV       @_allsensors+9,#700   ; |534| 
        MOVW      DP,#_allsensors+13
        MOV       @_allsensors+13,#500  ; |535| 
        MOVW      DP,#_allsensors+40
        MOV       @_allsensors+40,#800  ; |537| 
        MOVW      DP,#_allsensors+12
        MOV       @_allsensors+12,#500  ; |538| 
        MOVB      ACC,#16
        MOVW      DP,#_allsensors+41
        MOV       @_allsensors+41,#400  ; |539| 
        ADDL      ACC,XAR5
        MOVW      DP,#_allsensors+39
        MOV       @_allsensors+39,#900  ; |540| 
        MOVL      XAR4,ACC              ; |543| 
        MOVW      DP,#_allsensors+11
        MOV       @_allsensors+11,#700  ; |541| 
        MOVW      DP,#_allsensors+19
        AND       *+XAR4[0],#0xfff9     ; |543| 
        MOV       @_allsensors+19,#60   ; |545| 
        MOVW      DP,#_allsensors+17
        MOV       @_allsensors+17,#0    ; |546| 
        MOVB      AL,#18                ; |548| 
        MOVW      DP,#_allsensors+18
        MOV       @_allsensors+18,#0    ; |547| 
        MOVW      DP,#_allsensors+37
        MOV       @_allsensors+37,AL    ; |548| 
        MOVW      DP,#_allsensors+38
        MOV       @_allsensors+38,AL    ; |549| 
        MOVW      DP,#_allsensors+20
        MOV       @_allsensors+20,#0    ; |550| 
        MOVW      DP,#_allsensors+36
        MOV       @_allsensors+36,#250  ; |551| 
        MOVW      DP,#_allsensors+35
        MOV       @_allsensors+35,#360  ; |552| 
        MOVB      ACC,#42
        MOVW      DP,#_allsensors+43
        ADDL      ACC,XAR5
        MOV       @_allsensors+43,#0    ; |554| 
        MOVL      XAR4,ACC              ; |558| 
        MOVW      DP,#_allsensors+44
        MOV       @_allsensors+44,#0    ; |555| 
        MOVW      DP,#_prewarn+168
        AND       *+XAR4[0],#0xfffe     ; |558| 
        MOV       @_prewarn+168,#0      ; |560| 
        MOVB      AL,#0
	.dwpsn	"setup.c",562,0
        SETC      SXM
L8:    
DW$L$_SetupDefaultSettings$2$B:
        MOV       ACC,AL                ; |562| 
        MOVL      XAR4,#_allsensors+21  ; |562| 
        ADDL      XAR4,ACC
        ADDB      AL,#1                 ; |562| 
        CMPB      AL,#14                ; |562| 
        MOV       *+XAR4[0],#0          ; |562| 
        BF        L8,LT                 ; |562| 
        ; branchcc occurs ; |562| 
DW$L$_SetupDefaultSettings$2$E:
        MOVW      DP,#_config+5
        MOV       @_config+5,#3300      ; |564| 
        MOVW      DP,#_safe2+8
        MOV       @_safe2+8,#3300       ; |565| 
        MOV       AL,#1000              ; |569| 
        MOVW      DP,#_config+1
        MOV       @_config+1,#7         ; |566| 
        MOVW      DP,#_config+2
        MOVL      XAR4,#_speedcompcoeffs+2 ; |576| 
        MOV       @_config+2,#110       ; |567| 
        MOVW      DP,#_config
        MOV       @_config,#500         ; |568| 
        MOVW      DP,#_config+3
        MOV       @_config+3,AL         ; |569| 
        MOVW      DP,#_safe1
        MOV       @_safe1,AL            ; |569| 
        MOVW      DP,#_config+4
        MOV       AL,#500               ; |570| 
        MOV       @_config+4,AL         ; |570| 
        MOVW      DP,#_safe1+1
        MOV       @_safe1+1,AL          ; |570| 
        MOVW      DP,#_config+6
        MOV       @_config+6,#10        ; |571| 
        MOVW      DP,#_config+7
        MOV       @_config+7,#60        ; |572| 
        MOVW      DP,#_speedcompcoeffs
        MOV       @_speedcompcoeffs,#0  ; |574| 
        MOVW      DP,#_speedcompcoeffs+1
        MOV       @_speedcompcoeffs+1,#0 ; |575| 
        MOV       *+XAR4[0],#20         ; |576| 
        MOV       *+XAR4[1],#34         ; |577| 
        MOV       *+XAR4[2],#54         ; |578| 
        MOV       *+XAR4[3],#67         ; |579| 
        MOVW      DP,#_speedcompcoeffs+8
        MOV       *+XAR4[4],#87         ; |580| 
        MOV       *+XAR4[5],#100        ; |581| 
        MOV       @_speedcompcoeffs+8,#150 ; |583| 
        MOVW      DP,#_speedcompcoeffs+9
        MOV       @_speedcompcoeffs+9,#10 ; |584| 
        MOVW      DP,#_speedcompcoeffs+10
        MOV       @_speedcompcoeffs+10,#30000 ; |585| 
        MOVW      DP,#_speedcompcoeffs+11
        MOV       @_speedcompcoeffs+11,#3000 ; |586| 
        MOVW      DP,#_speedcompcoeffs+12
        MOV       @_speedcompcoeffs+12,#1000 ; |587| 
        MOVW      DP,#_speedcompcoeffs+13
        MOV       @_speedcompcoeffs+13,#30000 ; |588| 
        MOVW      DP,#_speedcompcoeffs+14
        MOV       @_speedcompcoeffs+14,#3000 ; |589| 
        MOVW      DP,#_speedcompcoeffs+15
        MOV       @_speedcompcoeffs+15,#100 ; |590| 
        MOVW      DP,#_wiosettings
        MOV       @_wiosettings,#0      ; |592| 
        MOVW      DP,#_wiosettings+1
        MOV       @_wiosettings+1,#0    ; |593| 
        MOVW      DP,#_wiosettings+2
        MOV       @_wiosettings+2,#9000 ; |595| 
        MOVW      DP,#_wiosettings+3
        MOV       @_wiosettings+3,#5000 ; |596| 
        MOVW      DP,#_wiosettings+4
        MOV       @_wiosettings+4,#500  ; |597| 
        LCR       #_LoadDamagemonDefaults ; |600| 
        ; call occurs [#_LoadDamagemonDefaults] ; |600| 
        LCR       #_LoadSLEMDefaults    ; |601| 
        ; call occurs [#_LoadSLEMDefaults] ; |601| 
        LCR       #_LoadCPPDefaults     ; |602| 
        ; call occurs [#_LoadCPPDefaults] ; |602| 
        LCR       #_LoadSensorDefaults  ; |603| 
        ; call occurs [#_LoadSensorDefaults] ; |603| 
        LCR       #_BuildTimeStamp      ; |604| 
        ; call occurs [#_BuildTimeStamp] ; |604| 
        MOVW      DP,#_clocktime+10
        MOVL      @_clocktime+10,ACC    ; |605| 
        LCR       #_SaveTimetoFram      ; |606| 
        ; call occurs [#_SaveTimetoFram] ; |606| 
        MOVW      DP,#_sdsettings
        MOV       @_sdsettings,#1       ; |609| 
        LCR       #_SDCardInitialise    ; |612| 
        ; call occurs [#_SDCardInitialise] ; |612| 
        LCR       #_SaveSDSettings      ; |613| 
        ; call occurs [#_SaveSDSettings] ; |613| 
        LCR       #_ClearAlarmListandEventLog ; |615| 
        ; call occurs [#_ClearAlarmListandEventLog] ; |615| 
        LCR       #_SaveSafeStruct1     ; |617| 
        ; call occurs [#_SaveSafeStruct1] ; |617| 
        LCR       #_GeneralSettingstoSDCardFile ; |618| 
        ; call occurs [#_GeneralSettingstoSDCardFile] ; |618| 
        LCR       #_WriteConfigStructtoNVMEM ; |619| 
        ; call occurs [#_WriteConfigStructtoNVMEM] ; |619| 
        LCR       #_WriteSpeedCompStructtoNVMEM ; |620| 
        ; call occurs [#_WriteSpeedCompStructtoNVMEM] ; |620| 
        LCR       #_WriteAllSensorStructtoNVMEM ; |621| 
        ; call occurs [#_WriteAllSensorStructtoNVMEM] ; |621| 
        LCR       #_WriteWIOSettingstoNVMEM ; |622| 
        ; call occurs [#_WriteWIOSettingstoNVMEM] ; |622| 
        LCR       #_WriteDamagemontoNVMEM ; |623| 
        ; call occurs [#_WriteDamagemontoNVMEM] ; |623| 
        LCR       #_WriteSLEMSettingstoNVMEM ; |624| 
        ; call occurs [#_WriteSLEMSettingstoNVMEM] ; |624| 
        LCR       #_WriteCPPSettingstoNVMEM ; |625| 
        ; call occurs [#_WriteCPPSettingstoNVMEM] ; |625| 
        LCR       #_WriteSensorSettingstoNVMEM ; |626| 
        ; call occurs [#_WriteSensorSettingstoNVMEM] ; |626| 
        LCR       #_PrewarnReset        ; |628| 
        ; call occurs [#_PrewarnReset] ; |628| 
        LCR       #_ClearEventCodeListArea ; |630| 
        ; call occurs [#_ClearEventCodeListArea] ; |630| 
	.dwpsn	"setup.c",631,1
        LRETR
        ; return occurs

DW$90	.dwtag  DW_TAG_loop
	.dwattr DW$90, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\setup.asm:L8:1:1471518990")
	.dwattr DW$90, DW_AT_begin_file("setup.c")
	.dwattr DW$90, DW_AT_begin_line(0x232)
	.dwattr DW$90, DW_AT_end_line(0x232)
DW$91	.dwtag  DW_TAG_loop_range
	.dwattr DW$91, DW_AT_low_pc(DW$L$_SetupDefaultSettings$2$B)
	.dwattr DW$91, DW_AT_high_pc(DW$L$_SetupDefaultSettings$2$E)
	.dwendtag DW$90

	.dwattr DW$89, DW_AT_end_file("setup.c")
	.dwattr DW$89, DW_AT_end_line(0x277)
	.dwattr DW$89, DW_AT_end_column(0x01)
	.dwendtag DW$89

	.sect	".text"
	.global	_SetupSensorStatusDefaults

DW$92	.dwtag  DW_TAG_subprogram, DW_AT_name("SetupSensorStatusDefaults"), DW_AT_symbol_name("_SetupSensorStatusDefaults")
	.dwattr DW$92, DW_AT_low_pc(_SetupSensorStatusDefaults)
	.dwattr DW$92, DW_AT_high_pc(0x00)
	.dwattr DW$92, DW_AT_begin_file("setup.c")
	.dwattr DW$92, DW_AT_begin_line(0x27a)
	.dwattr DW$92, DW_AT_begin_column(0x06)
	.dwattr DW$92, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$92, DW_AT_skeletal(0x01)
	.dwpsn	"setup.c",635,1

;***************************************************************
;* FNAME: _SetupSensorStatusDefaults    FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_SetupSensorStatusDefaults:
        MOVL      *SP++,XAR1
        LCR       #_InitStatus1Flags    ; |638| 
        ; call occurs [#_InitStatus1Flags] ; |638| 
	.dwpsn	"setup.c",640,0
        MOVB      XAR1,#0
L9:    
DW$L$_SetupSensorStatusDefaults$2$B:
	.dwpsn	"setup.c",641,0
        MOV       AL,AR1
        CMPB      AL,#14                ; |642| 
        BF        L10,LT                ; |642| 
        ; branchcc occurs ; |642| 
DW$L$_SetupSensorStatusDefaults$2$E:
DW$L$_SetupSensorStatusDefaults$3$B:
        MOVB      AH,#0
        BF        L11,UNC               ; |643| 
        ; branch occurs ; |643| 
DW$L$_SetupSensorStatusDefaults$3$E:
L10:    
DW$L$_SetupSensorStatusDefaults$4$B:
        MOVB      AH,#1                 ; |642| 
DW$L$_SetupSensorStatusDefaults$4$E:
L11:    
DW$L$_SetupSensorStatusDefaults$5$B:
        LCR       #_SetSensorEnabled    ; |642| 
        ; call occurs [#_SetSensorEnabled] ; |642| 
        MOV       AL,AR1
        MOVB      AH,#0
        LCR       #_SetCalMode          ; |644| 
        ; call occurs [#_SetCalMode] ; |644| 
        MOV       AL,AR1                ; |644| 
        MOVB      AH,#0
        LCR       #_SetAlarmMask        ; |645| 
        ; call occurs [#_SetAlarmMask] ; |645| 
        MOV       AL,AR1                ; |645| 
        LCR       #_WriteSensorStatustoNVMEM ; |646| 
        ; call occurs [#_WriteSensorStatustoNVMEM] ; |646| 
        MOV       AL,AR1                ; |646| 
        ADDB      AL,#1                 ; |640| 
        MOVZ      AR1,AL                ; |640| 
        CMPB      AL,#28                ; |640| 
	.dwpsn	"setup.c",647,0
        BF        L9,LT                 ; |640| 
        ; branchcc occurs ; |640| 
DW$L$_SetupSensorStatusDefaults$5$E:
        LCR       #_SensorStatustoSDCardFile ; |648| 
        ; call occurs [#_SensorStatustoSDCardFile] ; |648| 
        MOVL      XAR1,*--SP
	.dwpsn	"setup.c",649,1
        LRETR
        ; return occurs

DW$93	.dwtag  DW_TAG_loop
	.dwattr DW$93, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\setup.asm:L9:1:1471518990")
	.dwattr DW$93, DW_AT_begin_file("setup.c")
	.dwattr DW$93, DW_AT_begin_line(0x280)
	.dwattr DW$93, DW_AT_end_line(0x287)
DW$94	.dwtag  DW_TAG_loop_range
	.dwattr DW$94, DW_AT_low_pc(DW$L$_SetupSensorStatusDefaults$2$B)
	.dwattr DW$94, DW_AT_high_pc(DW$L$_SetupSensorStatusDefaults$2$E)
DW$95	.dwtag  DW_TAG_loop_range
	.dwattr DW$95, DW_AT_low_pc(DW$L$_SetupSensorStatusDefaults$3$B)
	.dwattr DW$95, DW_AT_high_pc(DW$L$_SetupSensorStatusDefaults$3$E)
DW$96	.dwtag  DW_TAG_loop_range
	.dwattr DW$96, DW_AT_low_pc(DW$L$_SetupSensorStatusDefaults$4$B)
	.dwattr DW$96, DW_AT_high_pc(DW$L$_SetupSensorStatusDefaults$4$E)
DW$97	.dwtag  DW_TAG_loop_range
	.dwattr DW$97, DW_AT_low_pc(DW$L$_SetupSensorStatusDefaults$5$B)
	.dwattr DW$97, DW_AT_high_pc(DW$L$_SetupSensorStatusDefaults$5$E)
	.dwendtag DW$93

	.dwattr DW$92, DW_AT_end_file("setup.c")
	.dwattr DW$92, DW_AT_end_line(0x289)
	.dwattr DW$92, DW_AT_end_column(0x01)
	.dwendtag DW$92

	.sect	".text"
	.global	_SetupOffsetDefaults

DW$98	.dwtag  DW_TAG_subprogram, DW_AT_name("SetupOffsetDefaults"), DW_AT_symbol_name("_SetupOffsetDefaults")
	.dwattr DW$98, DW_AT_low_pc(_SetupOffsetDefaults)
	.dwattr DW$98, DW_AT_high_pc(0x00)
	.dwattr DW$98, DW_AT_begin_file("setup.c")
	.dwattr DW$98, DW_AT_begin_line(0x28c)
	.dwattr DW$98, DW_AT_begin_column(0x06)
	.dwattr DW$98, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$98, DW_AT_skeletal(0x01)
	.dwpsn	"setup.c",653,1

;***************************************************************
;* FNAME: _SetupOffsetDefaults          FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_SetupOffsetDefaults:
        SETC      SXM
        MOVL      *SP++,XAR1
	.dwpsn	"setup.c",656,0
        MOVB      XAR1,#0
L12:    
DW$L$_SetupOffsetDefaults$2$B:
	.dwpsn	"setup.c",657,0
        MOV       AL,AR1
        MOVL      XAR4,#_offsetA        ; |658| 
        MOV       ACC,AL                ; |658| 
        ADDL      XAR4,ACC
        MOV       AL,AR1                ; |658| 
        MOV       *+XAR4[0],#0          ; |658| 
        MOV       ACC,AL                ; |659| 
        MOVL      XAR4,#_offsetB        ; |659| 
        ADDL      XAR4,ACC
        MOV       AL,AR1                ; |659| 
        ADDB      AL,#1                 ; |656| 
        MOVZ      AR1,AL                ; |656| 
        CMPB      AL,#28                ; |656| 
        MOV       *+XAR4[0],#0          ; |659| 
	.dwpsn	"setup.c",660,0
        BF        L12,LT                ; |656| 
        ; branchcc occurs ; |656| 
DW$L$_SetupOffsetDefaults$2$E:
        LCR       #_OffsetstoSDCardFile ; |661| 
        ; call occurs [#_OffsetstoSDCardFile] ; |661| 
	.dwpsn	"setup.c",662,0
        MOVB      XAR1,#0
L13:    
DW$L$_SetupOffsetDefaults$4$B:
        MOV       AL,AR1
        LCR       #_WriteOffsetAtoNVMEM ; |662| 
        ; call occurs [#_WriteOffsetAtoNVMEM] ; |662| 
        MOV       AL,AR1                ; |662| 
        ADDB      AL,#1                 ; |662| 
        MOVZ      AR1,AL                ; |662| 
        CMPB      AL,#28                ; |662| 
        BF        L13,LT                ; |662| 
        ; branchcc occurs ; |662| 
DW$L$_SetupOffsetDefaults$4$E:
	.dwpsn	"setup.c",663,0
        MOVB      XAR1,#0
L14:    
DW$L$_SetupOffsetDefaults$6$B:
        MOV       AL,AR1
        LCR       #_WriteOffsetBtoNVMEM ; |663| 
        ; call occurs [#_WriteOffsetBtoNVMEM] ; |663| 
        MOV       AL,AR1                ; |663| 
        ADDB      AL,#1                 ; |663| 
        MOVZ      AR1,AL                ; |663| 
        CMPB      AL,#28                ; |663| 
        BF        L14,LT                ; |663| 
        ; branchcc occurs ; |663| 
DW$L$_SetupOffsetDefaults$6$E:
        MOVL      XAR1,*--SP
	.dwpsn	"setup.c",664,1
        LRETR
        ; return occurs

DW$99	.dwtag  DW_TAG_loop
	.dwattr DW$99, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\setup.asm:L14:1:1471518990")
	.dwattr DW$99, DW_AT_begin_file("setup.c")
	.dwattr DW$99, DW_AT_begin_line(0x297)
	.dwattr DW$99, DW_AT_end_line(0x297)
DW$100	.dwtag  DW_TAG_loop_range
	.dwattr DW$100, DW_AT_low_pc(DW$L$_SetupOffsetDefaults$6$B)
	.dwattr DW$100, DW_AT_high_pc(DW$L$_SetupOffsetDefaults$6$E)
	.dwendtag DW$99


DW$101	.dwtag  DW_TAG_loop
	.dwattr DW$101, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\setup.asm:L13:1:1471518990")
	.dwattr DW$101, DW_AT_begin_file("setup.c")
	.dwattr DW$101, DW_AT_begin_line(0x296)
	.dwattr DW$101, DW_AT_end_line(0x296)
DW$102	.dwtag  DW_TAG_loop_range
	.dwattr DW$102, DW_AT_low_pc(DW$L$_SetupOffsetDefaults$4$B)
	.dwattr DW$102, DW_AT_high_pc(DW$L$_SetupOffsetDefaults$4$E)
	.dwendtag DW$101


DW$103	.dwtag  DW_TAG_loop
	.dwattr DW$103, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\setup.asm:L12:1:1471518990")
	.dwattr DW$103, DW_AT_begin_file("setup.c")
	.dwattr DW$103, DW_AT_begin_line(0x290)
	.dwattr DW$103, DW_AT_end_line(0x294)
DW$104	.dwtag  DW_TAG_loop_range
	.dwattr DW$104, DW_AT_low_pc(DW$L$_SetupOffsetDefaults$2$B)
	.dwattr DW$104, DW_AT_high_pc(DW$L$_SetupOffsetDefaults$2$E)
	.dwendtag DW$103

	.dwattr DW$98, DW_AT_end_file("setup.c")
	.dwattr DW$98, DW_AT_end_line(0x298)
	.dwattr DW$98, DW_AT_end_column(0x01)
	.dwendtag DW$98

;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_PerformIsr1
	.global	_PerformIsr13
	.global	_PerformIsr14
	.global	_WatchdogKick
	.global	_PerformSciTxIntA
	.global	_PerformSciRxIntA
	.global	_PerformSciTxIntB
	.global	_PerformSciRxIntB
	.global	_PerformSciRxIntC
	.global	_IntADCIsr
	.global	_WriteSLEMSettingstoNVMEM
	.global	_LoadSLEMDefaults
	.global	_WriteCPPSettingstoNVMEM
	.global	_LoadCPPDefaults
	.global	_WriteSensorSettingstoNVMEM
	.global	_LoadSensorDefaults
	.global	_SaveTimetoFram
	.global	_WriteConfigStructtoNVMEM
	.global	_ClearAlarmListandEventLog
	.global	_InitStatus1Flags
	.global	_WriteDamagemontoNVMEM
	.global	_SetSensorEnabled
	.global	_SetCalMode
	.global	_SetAlarmMask
	.global	_WriteSensorStatustoNVMEM
	.global	_WriteOffsetAtoNVMEM
	.global	_WriteOffsetBtoNVMEM
	.global	_WriteWIOSettingstoNVMEM
	.global	_SDCardInitialise
	.global	_SaveSDSettings
	.global	_OffsetstoSDCardFile
	.global	_SensorStatustoSDCardFile
	.global	_GeneralSettingstoSDCardFile
	.global	_BuildTimeStamp
	.global	_LoadDamagemonDefaults
	.global	_SaveSafeStruct1
	.global	_WriteSpeedCompStructtoNVMEM
	.global	_WriteAllSensorStructtoNVMEM
	.global	_PrewarnReset
	.global	_ClearEventCodeListArea
	.global	_settings
	.global	_safe1
	.global	_safe2
	.global	_clocktime
	.global	_timers
	.global	_allsensors
	.global	_config
	.global	_receiveC
	.global	_rpmdata
	.global	_speedcompcoeffs
	.global	_prewarn
	.global	_offsetA
	.global	_offsetB
	.global	_wiosettings
	.global	_sdsettings

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

DW$T$68	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$68, DW_AT_language(DW_LANG_C)

DW$T$70	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$70, DW_AT_language(DW_LANG_C)
DW$105	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$106	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$70


DW$T$72	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$72, DW_AT_language(DW_LANG_C)
DW$107	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$72


DW$T$78	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$77)
	.dwattr DW$T$78, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$78, DW_AT_byte_size(0xd2)
DW$108	.dwtag  DW_TAG_subrange_type
	.dwattr DW$108, DW_AT_upper_bound(0x68)
	.dwendtag DW$T$78

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)

DW$T$83	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$83, DW_AT_language(DW_LANG_C)

DW$T$85	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$85, DW_AT_language(DW_LANG_C)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)
DW$109	.dwtag  DW_TAG_far_type
	.dwattr DW$109, DW_AT_type(*DW$T$89)
DW$T$90	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$90, DW_AT_type(*DW$109)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)

DW$T$93	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$93, DW_AT_language(DW_LANG_C)
DW$T$97	.dwtag  DW_TAG_typedef, DW_AT_name("settingsstruct"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$97, DW_AT_language(DW_LANG_C)
DW$T$98	.dwtag  DW_TAG_typedef, DW_AT_name("safestruct1struct"), DW_AT_type(*DW$T$24)
	.dwattr DW$T$98, DW_AT_language(DW_LANG_C)
DW$T$99	.dwtag  DW_TAG_typedef, DW_AT_name("safestruct2struct"), DW_AT_type(*DW$T$37)
	.dwattr DW$T$99, DW_AT_language(DW_LANG_C)
DW$T$100	.dwtag  DW_TAG_typedef, DW_AT_name("clockstruct"), DW_AT_type(*DW$T$38)
	.dwattr DW$T$100, DW_AT_language(DW_LANG_C)
DW$110	.dwtag  DW_TAG_far_type
	.dwattr DW$110, DW_AT_type(*DW$T$101)
DW$T$102	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$102, DW_AT_type(*DW$110)
DW$T$105	.dwtag  DW_TAG_typedef, DW_AT_name("allsensorstruct"), DW_AT_type(*DW$T$42)
	.dwattr DW$T$105, DW_AT_language(DW_LANG_C)
DW$T$107	.dwtag  DW_TAG_typedef, DW_AT_name("configstruct"), DW_AT_type(*DW$T$49)
	.dwattr DW$T$107, DW_AT_language(DW_LANG_C)
DW$T$108	.dwtag  DW_TAG_typedef, DW_AT_name("uartreadC"), DW_AT_type(*DW$T$52)
	.dwattr DW$T$108, DW_AT_language(DW_LANG_C)
DW$T$109	.dwtag  DW_TAG_typedef, DW_AT_name("rpmstruct"), DW_AT_type(*DW$T$54)
	.dwattr DW$T$109, DW_AT_language(DW_LANG_C)
DW$T$110	.dwtag  DW_TAG_typedef, DW_AT_name("speedcompstruct"), DW_AT_type(*DW$T$57)
	.dwattr DW$T$110, DW_AT_language(DW_LANG_C)
DW$T$112	.dwtag  DW_TAG_typedef, DW_AT_name("prewarnstruct"), DW_AT_type(*DW$T$60)
	.dwattr DW$T$112, DW_AT_language(DW_LANG_C)
DW$T$113	.dwtag  DW_TAG_typedef, DW_AT_name("offsetstruct"), DW_AT_type(*DW$T$61)
	.dwattr DW$T$113, DW_AT_language(DW_LANG_C)
DW$T$115	.dwtag  DW_TAG_typedef, DW_AT_name("wiosettingsstruct"), DW_AT_type(*DW$T$62)
	.dwattr DW$T$115, DW_AT_language(DW_LANG_C)
DW$T$116	.dwtag  DW_TAG_typedef, DW_AT_name("sdsettingsstruct"), DW_AT_type(*DW$T$64)
	.dwattr DW$T$116, DW_AT_language(DW_LANG_C)
DW$111	.dwtag  DW_TAG_far_type
	.dwattr DW$111, DW_AT_type(*DW$T$76)
DW$T$77	.dwtag  DW_TAG_const_type
	.dwattr DW$T$77, DW_AT_type(*DW$111)
DW$T$89	.dwtag  DW_TAG_typedef, DW_AT_name("uint"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$89, DW_AT_language(DW_LANG_C)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("tag_settingsstruct")
	.dwattr DW$T$20, DW_AT_byte_size(0x24)
DW$112	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$112, DW_AT_name("watchdog"), DW_AT_symbol_name("_watchdog")
	.dwattr DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$112, DW_AT_accessibility(DW_ACCESS_public)
DW$113	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$113, DW_AT_name("ledflashflag"), DW_AT_symbol_name("_ledflashflag")
	.dwattr DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$113, DW_AT_accessibility(DW_ACCESS_public)
DW$114	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$114, DW_AT_name("updatesafe"), DW_AT_symbol_name("_updatesafe")
	.dwattr DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$114, DW_AT_accessibility(DW_ACCESS_public)
DW$115	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$115, DW_AT_name("tableconfigtype"), DW_AT_symbol_name("_tableconfigtype")
	.dwattr DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$115, DW_AT_accessibility(DW_ACCESS_public)
DW$116	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$116, DW_AT_name("caltableconfigtype"), DW_AT_symbol_name("_caltableconfigtype")
	.dwattr DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$116, DW_AT_accessibility(DW_ACCESS_public)
DW$117	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$117, DW_AT_name("eventmsgid"), DW_AT_symbol_name("_eventmsgid")
	.dwattr DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$117, DW_AT_accessibility(DW_ACCESS_public)
DW$118	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$118, DW_AT_name("configoperationcomplete"), DW_AT_symbol_name("_configoperationcomplete")
	.dwattr DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$118, DW_AT_accessibility(DW_ACCESS_public)
DW$119	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$119, DW_AT_name("sdcarderr"), DW_AT_symbol_name("_sdcarderr")
	.dwattr DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$119, DW_AT_accessibility(DW_ACCESS_public)
DW$120	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$120, DW_AT_name("sderase"), DW_AT_symbol_name("_sderase")
	.dwattr DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$120, DW_AT_accessibility(DW_ACCESS_public)
DW$121	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$121, DW_AT_name("sdreinit"), DW_AT_symbol_name("_sdreinit")
	.dwattr DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$121, DW_AT_accessibility(DW_ACCESS_public)
DW$122	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$122, DW_AT_name("sdcardupdate"), DW_AT_symbol_name("_sdcardupdate")
	.dwattr DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$122, DW_AT_accessibility(DW_ACCESS_public)
DW$123	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$123, DW_AT_name("cardreadflag"), DW_AT_symbol_name("_cardreadflag")
	.dwattr DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$123, DW_AT_accessibility(DW_ACCESS_public)
DW$124	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$124, DW_AT_name("ignore"), DW_AT_symbol_name("_ignore")
	.dwattr DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$124, DW_AT_accessibility(DW_ACCESS_public)
DW$125	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$125, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$125, DW_AT_accessibility(DW_ACCESS_public)
DW$126	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$126, DW_AT_name("spiinuse"), DW_AT_symbol_name("_spiinuse")
	.dwattr DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$126, DW_AT_accessibility(DW_ACCESS_public)
DW$127	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$127, DW_AT_name("dcpeakhold"), DW_AT_symbol_name("_dcpeakhold")
	.dwattr DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$127, DW_AT_accessibility(DW_ACCESS_public)
DW$128	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$128, DW_AT_name("dcpause"), DW_AT_symbol_name("_dcpause")
	.dwattr DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$128, DW_AT_accessibility(DW_ACCESS_public)
DW$129	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$129, DW_AT_name("mastermode"), DW_AT_symbol_name("_mastermode")
	.dwattr DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$129, DW_AT_accessibility(DW_ACCESS_public)
DW$130	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$130, DW_AT_name("updatescaling"), DW_AT_symbol_name("_updatescaling")
	.dwattr DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$130, DW_AT_accessibility(DW_ACCESS_public)
DW$131	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$131, DW_AT_name("forwardasternflag"), DW_AT_symbol_name("_forwardasternflag")
	.dwattr DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$131, DW_AT_accessibility(DW_ACCESS_public)
DW$132	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$132, DW_AT_name("initprogress"), DW_AT_symbol_name("_initprogress")
	.dwattr DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$132, DW_AT_accessibility(DW_ACCESS_public)
DW$133	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$133, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$133, DW_AT_accessibility(DW_ACCESS_public)
DW$134	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$134, DW_AT_name("slowdowncounter"), DW_AT_symbol_name("_slowdowncounter")
	.dwattr DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$134, DW_AT_accessibility(DW_ACCESS_public)
DW$135	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$135, DW_AT_name("slowdowncondition"), DW_AT_symbol_name("_slowdowncondition")
	.dwattr DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$135, DW_AT_accessibility(DW_ACCESS_public)
DW$136	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$136, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$136, DW_AT_accessibility(DW_ACCESS_public)
DW$137	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$137, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$137, DW_AT_accessibility(DW_ACCESS_public)
DW$138	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$138, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$138, DW_AT_accessibility(DW_ACCESS_public)
DW$139	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$139, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$139, DW_AT_accessibility(DW_ACCESS_public)
DW$140	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$140, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$140, DW_AT_accessibility(DW_ACCESS_public)
DW$141	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$141, DW_AT_name("temperaturealarm"), DW_AT_symbol_name("_temperaturealarm")
	.dwattr DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$141, DW_AT_accessibility(DW_ACCESS_public)
DW$142	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$142, DW_AT_name("temperatureslowdown"), DW_AT_symbol_name("_temperatureslowdown")
	.dwattr DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$142, DW_AT_accessibility(DW_ACCESS_public)
DW$143	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$143, DW_AT_name("anadebug"), DW_AT_symbol_name("_anadebug")
	.dwattr DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$143, DW_AT_accessibility(DW_ACCESS_public)
DW$144	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$144, DW_AT_name("serialdebug"), DW_AT_symbol_name("_serialdebug")
	.dwattr DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr DW$144, DW_AT_accessibility(DW_ACCESS_public)
DW$145	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$145, DW_AT_name("timerrunning"), DW_AT_symbol_name("_timerrunning")
	.dwattr DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$145, DW_AT_accessibility(DW_ACCESS_public)
DW$146	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$146, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$146, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_name("tag_safestruct1struct")
	.dwattr DW$T$24, DW_AT_byte_size(0x1f)
DW$147	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$147, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$147, DW_AT_accessibility(DW_ACCESS_public)
DW$148	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$148, DW_AT_name("watchdog"), DW_AT_symbol_name("_watchdog")
	.dwattr DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$148, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$37, DW_AT_name("tag_safestruct2struct")
	.dwattr DW$T$37, DW_AT_byte_size(0x1e)
DW$149	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$149, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$149, DW_AT_accessibility(DW_ACCESS_public)
DW$150	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$150, DW_AT_name("log"), DW_AT_symbol_name("_log")
	.dwattr DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$150, DW_AT_accessibility(DW_ACCESS_public)
DW$151	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$151, DW_AT_name("modbus"), DW_AT_symbol_name("_modbus")
	.dwattr DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$151, DW_AT_accessibility(DW_ACCESS_public)
DW$152	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$152, DW_AT_name("filter"), DW_AT_symbol_name("_filter")
	.dwattr DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$152, DW_AT_accessibility(DW_ACCESS_public)
DW$153	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$153, DW_AT_name("alarms"), DW_AT_symbol_name("_alarms")
	.dwattr DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$153, DW_AT_accessibility(DW_ACCESS_public)
DW$154	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$154, DW_AT_name("modbusbaud"), DW_AT_symbol_name("_modbusbaud")
	.dwattr DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$154, DW_AT_accessibility(DW_ACCESS_public)
DW$155	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$155, DW_AT_name("modbus2"), DW_AT_symbol_name("_modbus2")
	.dwattr DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$155, DW_AT_accessibility(DW_ACCESS_public)
DW$156	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$156, DW_AT_name("sync"), DW_AT_symbol_name("_sync")
	.dwattr DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$156, DW_AT_accessibility(DW_ACCESS_public)
DW$157	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$157, DW_AT_name("alarmenable"), DW_AT_symbol_name("_alarmenable")
	.dwattr DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$157, DW_AT_accessibility(DW_ACCESS_public)
DW$158	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$158, DW_AT_name("trendmax"), DW_AT_symbol_name("_trendmax")
	.dwattr DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$158, DW_AT_accessibility(DW_ACCESS_public)
DW$159	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$159, DW_AT_name("tempcomp"), DW_AT_symbol_name("_tempcomp")
	.dwattr DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$159, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$37


DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_name("tag_clockstruct")
	.dwattr DW$T$38, DW_AT_byte_size(0x0e)
DW$160	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$160, DW_AT_name("WPstate"), DW_AT_symbol_name("_WPstate")
	.dwattr DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$160, DW_AT_accessibility(DW_ACCESS_public)
DW$161	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$161, DW_AT_name("seconds"), DW_AT_symbol_name("_seconds")
	.dwattr DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$161, DW_AT_accessibility(DW_ACCESS_public)
DW$162	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$162, DW_AT_name("minutes"), DW_AT_symbol_name("_minutes")
	.dwattr DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$162, DW_AT_accessibility(DW_ACCESS_public)
DW$163	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$163, DW_AT_name("hours"), DW_AT_symbol_name("_hours")
	.dwattr DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$163, DW_AT_accessibility(DW_ACCESS_public)
DW$164	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$164, DW_AT_name("day"), DW_AT_symbol_name("_day")
	.dwattr DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$164, DW_AT_accessibility(DW_ACCESS_public)
DW$165	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$165, DW_AT_name("date"), DW_AT_symbol_name("_date")
	.dwattr DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$165, DW_AT_accessibility(DW_ACCESS_public)
DW$166	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$166, DW_AT_name("month"), DW_AT_symbol_name("_month")
	.dwattr DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$166, DW_AT_accessibility(DW_ACCESS_public)
DW$167	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$167, DW_AT_name("year"), DW_AT_symbol_name("_year")
	.dwattr DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$167, DW_AT_accessibility(DW_ACCESS_public)
DW$168	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$168, DW_AT_name("control"), DW_AT_symbol_name("_control")
	.dwattr DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$168, DW_AT_accessibility(DW_ACCESS_public)
DW$169	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$169, DW_AT_name("framstamp"), DW_AT_symbol_name("_framstamp")
	.dwattr DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$169, DW_AT_accessibility(DW_ACCESS_public)
DW$170	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$170, DW_AT_name("clockerr"), DW_AT_symbol_name("_clockerr")
	.dwattr DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$170, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38

DW$T$101	.dwtag  DW_TAG_typedef, DW_AT_name("timersstruct"), DW_AT_type(*DW$T$39)
	.dwattr DW$T$101, DW_AT_language(DW_LANG_C)

DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$42, DW_AT_name("tag_allsensorstruct")
	.dwattr DW$T$42, DW_AT_byte_size(0x2d)
DW$171	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$171, DW_AT_name("numsensors"), DW_AT_symbol_name("_numsensors")
	.dwattr DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$171, DW_AT_accessibility(DW_ACCESS_public)
DW$172	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$172, DW_AT_name("numsensorsspu1"), DW_AT_symbol_name("_numsensorsspu1")
	.dwattr DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$172, DW_AT_accessibility(DW_ACCESS_public)
DW$173	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$173, DW_AT_name("numsensorsspu2"), DW_AT_symbol_name("_numsensorsspu2")
	.dwattr DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$173, DW_AT_accessibility(DW_ACCESS_public)
DW$174	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$174, DW_AT_name("nominalspeed"), DW_AT_symbol_name("_nominalspeed")
	.dwattr DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$174, DW_AT_accessibility(DW_ACCESS_public)
DW$175	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$175, DW_AT_name("rpmmin"), DW_AT_symbol_name("_rpmmin")
	.dwattr DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$175, DW_AT_accessibility(DW_ACCESS_public)
DW$176	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$176, DW_AT_name("rpmmax"), DW_AT_symbol_name("_rpmmax")
	.dwattr DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$176, DW_AT_accessibility(DW_ACCESS_public)
DW$177	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$177, DW_AT_name("reflash"), DW_AT_symbol_name("_reflash")
	.dwattr DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$177, DW_AT_accessibility(DW_ACCESS_public)
DW$178	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$178, DW_AT_name("sensorhysteresis"), DW_AT_symbol_name("_sensorhysteresis")
	.dwattr DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$178, DW_AT_accessibility(DW_ACCESS_public)
DW$179	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$179, DW_AT_name("cylinderhysteresis"), DW_AT_symbol_name("_cylinderhysteresis")
	.dwattr DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$179, DW_AT_accessibility(DW_ACCESS_public)
DW$180	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$180, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$180, DW_AT_accessibility(DW_ACCESS_public)
DW$181	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$181, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$181, DW_AT_accessibility(DW_ACCESS_public)
DW$182	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$182, DW_AT_name("slowdowndevcallevel"), DW_AT_symbol_name("_slowdowndevcallevel")
	.dwattr DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$182, DW_AT_accessibility(DW_ACCESS_public)
DW$183	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$183, DW_AT_name("alarmdevcallevel"), DW_AT_symbol_name("_alarmdevcallevel")
	.dwattr DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$183, DW_AT_accessibility(DW_ACCESS_public)
DW$184	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$184, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$184, DW_AT_accessibility(DW_ACCESS_public)
DW$185	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$185, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$185, DW_AT_accessibility(DW_ACCESS_public)
DW$186	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$186, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$186, DW_AT_accessibility(DW_ACCESS_public)
DW$187	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$187, DW_AT_name("flags"), DW_AT_symbol_name("_flags")
	.dwattr DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$187, DW_AT_accessibility(DW_ACCESS_public)
DW$188	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$188, DW_AT_name("slowdownack"), DW_AT_symbol_name("_slowdownack")
	.dwattr DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$188, DW_AT_accessibility(DW_ACCESS_public)
DW$189	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$189, DW_AT_name("alarmack"), DW_AT_symbol_name("_alarmack")
	.dwattr DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$189, DW_AT_accessibility(DW_ACCESS_public)
DW$190	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$190, DW_AT_name("maxmintimer"), DW_AT_symbol_name("_maxmintimer")
	.dwattr DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$190, DW_AT_accessibility(DW_ACCESS_public)
DW$191	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$191, DW_AT_name("enginedircal"), DW_AT_symbol_name("_enginedircal")
	.dwattr DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$191, DW_AT_accessibility(DW_ACCESS_public)
DW$192	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$192, DW_AT_name("dirorder"), DW_AT_symbol_name("_dirorder")
	.dwattr DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$192, DW_AT_accessibility(DW_ACCESS_public)
DW$193	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$193, DW_AT_name("prewarningtimer"), DW_AT_symbol_name("_prewarningtimer")
	.dwattr DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$193, DW_AT_accessibility(DW_ACCESS_public)
DW$194	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$194, DW_AT_name("prewarninglevel"), DW_AT_symbol_name("_prewarninglevel")
	.dwattr DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$194, DW_AT_accessibility(DW_ACCESS_public)
DW$195	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$195, DW_AT_name("rpmlimit"), DW_AT_symbol_name("_rpmlimit")
	.dwattr DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr DW$195, DW_AT_accessibility(DW_ACCESS_public)
DW$196	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$196, DW_AT_name("dsss"), DW_AT_symbol_name("_dsss")
	.dwattr DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$196, DW_AT_accessibility(DW_ACCESS_public)
DW$197	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$197, DW_AT_name("slowdowncallevel"), DW_AT_symbol_name("_slowdowncallevel")
	.dwattr DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$197, DW_AT_accessibility(DW_ACCESS_public)
DW$198	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$198, DW_AT_name("alarmcallevel"), DW_AT_symbol_name("_alarmcallevel")
	.dwattr DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$198, DW_AT_accessibility(DW_ACCESS_public)
DW$199	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$199, DW_AT_name("cylinderalarmcallevel"), DW_AT_symbol_name("_cylinderalarmcallevel")
	.dwattr DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$199, DW_AT_accessibility(DW_ACCESS_public)
DW$200	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$200, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$200, DW_AT_accessibility(DW_ACCESS_public)
DW$201	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$201, DW_AT_name("iBarredVibrationSpeedLow"), DW_AT_symbol_name("_iBarredVibrationSpeedLow")
	.dwattr DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$201, DW_AT_accessibility(DW_ACCESS_public)
DW$202	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$202, DW_AT_name("iBarredVibrationSpeedHigh"), DW_AT_symbol_name("_iBarredVibrationSpeedHigh")
	.dwattr DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$202, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$42


DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$49, DW_AT_name("tag_configstruct")
	.dwattr DW$T$49, DW_AT_byte_size(0x18)
DW$203	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$43)
	.dwattr DW$203, DW_AT_name("filter"), DW_AT_symbol_name("_filter")
	.dwattr DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$203, DW_AT_accessibility(DW_ACCESS_public)
DW$204	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$44)
	.dwattr DW$204, DW_AT_name("alarmenable"), DW_AT_symbol_name("_alarmenable")
	.dwattr DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$204, DW_AT_accessibility(DW_ACCESS_public)
DW$205	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$205, DW_AT_name("trendmax"), DW_AT_symbol_name("_trendmax")
	.dwattr DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$205, DW_AT_accessibility(DW_ACCESS_public)
DW$206	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$206, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$206, DW_AT_accessibility(DW_ACCESS_public)
DW$207	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$207, DW_AT_name("sdsettings"), DW_AT_symbol_name("_sdsettings")
	.dwattr DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$207, DW_AT_accessibility(DW_ACCESS_public)
DW$208	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$208, DW_AT_name("comms"), DW_AT_symbol_name("_comms")
	.dwattr DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$208, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$49


DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$52, DW_AT_name("tag_uartreadC")
	.dwattr DW$T$52, DW_AT_byte_size(0x68)
DW$209	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$209, DW_AT_name("receiveINTR"), DW_AT_symbol_name("_receiveINTR")
	.dwattr DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$209, DW_AT_accessibility(DW_ACCESS_public)
DW$210	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$210, DW_AT_name("currentcharcount"), DW_AT_symbol_name("_currentcharcount")
	.dwattr DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$210, DW_AT_accessibility(DW_ACCESS_public)
DW$211	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$211, DW_AT_name("previouscharcount"), DW_AT_symbol_name("_previouscharcount")
	.dwattr DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$211, DW_AT_accessibility(DW_ACCESS_public)
DW$212	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$212, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$212, DW_AT_accessibility(DW_ACCESS_public)
DW$213	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$51)
	.dwattr DW$213, DW_AT_name("uartcharrx"), DW_AT_symbol_name("_uartcharrx")
	.dwattr DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x67]
	.dwattr DW$213, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$52


DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$54, DW_AT_byte_size(0x13)
DW$214	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$214, DW_AT_name("count"), DW_AT_symbol_name("_count")
	.dwattr DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$214, DW_AT_accessibility(DW_ACCESS_public)
DW$215	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$215, DW_AT_name("ready"), DW_AT_symbol_name("_ready")
	.dwattr DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$215, DW_AT_accessibility(DW_ACCESS_public)
DW$216	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$216, DW_AT_name("previouscount"), DW_AT_symbol_name("_previouscount")
	.dwattr DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$216, DW_AT_accessibility(DW_ACCESS_public)
DW$217	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$217, DW_AT_name("sampleperiod"), DW_AT_symbol_name("_sampleperiod")
	.dwattr DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$217, DW_AT_accessibility(DW_ACCESS_public)
DW$218	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$218, DW_AT_name("period"), DW_AT_symbol_name("_period")
	.dwattr DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$218, DW_AT_accessibility(DW_ACCESS_public)
DW$219	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$53)
	.dwattr DW$219, DW_AT_name("stable"), DW_AT_symbol_name("_stable")
	.dwattr DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$219, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$54


DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$57, DW_AT_name("tag_speedcompstruct")
	.dwattr DW$T$57, DW_AT_byte_size(0x19)
DW$220	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$220, DW_AT_name("stageflag"), DW_AT_symbol_name("_stageflag")
	.dwattr DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$220, DW_AT_accessibility(DW_ACCESS_public)
DW$221	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$221, DW_AT_name("status"), DW_AT_symbol_name("_status")
	.dwattr DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$221, DW_AT_accessibility(DW_ACCESS_public)
DW$222	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$56)
	.dwattr DW$222, DW_AT_name("speedbands"), DW_AT_symbol_name("_speedbands")
	.dwattr DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$222, DW_AT_accessibility(DW_ACCESS_public)
DW$223	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$223, DW_AT_name("slopecoeff"), DW_AT_symbol_name("_slopecoeff")
	.dwattr DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$223, DW_AT_accessibility(DW_ACCESS_public)
DW$224	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$224, DW_AT_name("initialtimer"), DW_AT_symbol_name("_initialtimer")
	.dwattr DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$224, DW_AT_accessibility(DW_ACCESS_public)
DW$225	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$225, DW_AT_name("learningmodetimer"), DW_AT_symbol_name("_learningmodetimer")
	.dwattr DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$225, DW_AT_accessibility(DW_ACCESS_public)
DW$226	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$226, DW_AT_name("intervaltimer"), DW_AT_symbol_name("_intervaltimer")
	.dwattr DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$226, DW_AT_accessibility(DW_ACCESS_public)
DW$227	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$227, DW_AT_name("numsamples"), DW_AT_symbol_name("_numsamples")
	.dwattr DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$227, DW_AT_accessibility(DW_ACCESS_public)
DW$228	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$228, DW_AT_name("learningleft"), DW_AT_symbol_name("_learningleft")
	.dwattr DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$228, DW_AT_accessibility(DW_ACCESS_public)
DW$229	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$229, DW_AT_name("intervalleft"), DW_AT_symbol_name("_intervalleft")
	.dwattr DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$229, DW_AT_accessibility(DW_ACCESS_public)
DW$230	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$230, DW_AT_name("manappliedminsamples"), DW_AT_symbol_name("_manappliedminsamples")
	.dwattr DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$230, DW_AT_accessibility(DW_ACCESS_public)
DW$231	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$231, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$231, DW_AT_accessibility(DW_ACCESS_public)
DW$232	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$232, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$232, DW_AT_accessibility(DW_ACCESS_public)
DW$233	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$233, DW_AT_name("unused3"), DW_AT_symbol_name("_unused3")
	.dwattr DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$233, DW_AT_accessibility(DW_ACCESS_public)
DW$234	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$234, DW_AT_name("unused4"), DW_AT_symbol_name("_unused4")
	.dwattr DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$234, DW_AT_accessibility(DW_ACCESS_public)
DW$235	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$235, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$235, DW_AT_accessibility(DW_ACCESS_public)
DW$236	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$236, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$236, DW_AT_accessibility(DW_ACCESS_public)
DW$237	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$237, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$237, DW_AT_accessibility(DW_ACCESS_public)
DW$238	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$238, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$238, DW_AT_accessibility(DW_ACCESS_public)
DW$239	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$239, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$239, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$57


DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$60, DW_AT_name("tag_prewarnstruct")
	.dwattr DW$T$60, DW_AT_byte_size(0xaa)
DW$240	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$58)
	.dwattr DW$240, DW_AT_name("prelevel"), DW_AT_symbol_name("_prelevel")
	.dwattr DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$240, DW_AT_accessibility(DW_ACCESS_public)
DW$241	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$58)
	.dwattr DW$241, DW_AT_name("average"), DW_AT_symbol_name("_average")
	.dwattr DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$241, DW_AT_accessibility(DW_ACCESS_public)
DW$242	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$59)
	.dwattr DW$242, DW_AT_name("calcacc"), DW_AT_symbol_name("_calcacc")
	.dwattr DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$242, DW_AT_accessibility(DW_ACCESS_public)
DW$243	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$59)
	.dwattr DW$243, DW_AT_name("points"), DW_AT_symbol_name("_points")
	.dwattr DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x70]
	.dwattr DW$243, DW_AT_accessibility(DW_ACCESS_public)
DW$244	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$244, DW_AT_name("prewarncompleteflag"), DW_AT_symbol_name("_prewarncompleteflag")
	.dwattr DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0xa8]
	.dwattr DW$244, DW_AT_accessibility(DW_ACCESS_public)
DW$245	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$245, DW_AT_name("init"), DW_AT_symbol_name("_init")
	.dwattr DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0xa9]
	.dwattr DW$245, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$60


DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$61, DW_AT_name("tag_offsetstruct")
	.dwattr DW$T$61, DW_AT_byte_size(0x1c)
DW$246	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$58)
	.dwattr DW$246, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$246, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$61


DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$62, DW_AT_name("tag_wiosettingsstruct")
	.dwattr DW$T$62, DW_AT_byte_size(0x0a)
DW$247	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$247, DW_AT_name("enabled"), DW_AT_symbol_name("_enabled")
	.dwattr DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$247, DW_AT_accessibility(DW_ACCESS_public)
DW$248	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$248, DW_AT_name("alarmmask"), DW_AT_symbol_name("_alarmmask")
	.dwattr DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$248, DW_AT_accessibility(DW_ACCESS_public)
DW$249	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$249, DW_AT_name("alarmupperlevel"), DW_AT_symbol_name("_alarmupperlevel")
	.dwattr DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$249, DW_AT_accessibility(DW_ACCESS_public)
DW$250	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$250, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$250, DW_AT_accessibility(DW_ACCESS_public)
DW$251	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$251, DW_AT_name("hysteresis"), DW_AT_symbol_name("_hysteresis")
	.dwattr DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$251, DW_AT_accessibility(DW_ACCESS_public)
DW$252	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$252, DW_AT_name("scaledmin"), DW_AT_symbol_name("_scaledmin")
	.dwattr DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$252, DW_AT_accessibility(DW_ACCESS_public)
DW$253	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$253, DW_AT_name("scaledmax"), DW_AT_symbol_name("_scaledmax")
	.dwattr DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$253, DW_AT_accessibility(DW_ACCESS_public)
DW$254	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$254, DW_AT_name("units"), DW_AT_symbol_name("_units")
	.dwattr DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$254, DW_AT_accessibility(DW_ACCESS_public)
DW$255	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$255, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$255, DW_AT_accessibility(DW_ACCESS_public)
DW$256	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$256, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$256, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$62


DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$64, DW_AT_name("tag_sdsettingsstruct")
	.dwattr DW$T$64, DW_AT_byte_size(0x04)
DW$257	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$257, DW_AT_name("present"), DW_AT_symbol_name("_present")
	.dwattr DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$257, DW_AT_accessibility(DW_ACCESS_public)
DW$258	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$258, DW_AT_name("sequence"), DW_AT_symbol_name("_sequence")
	.dwattr DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$258, DW_AT_accessibility(DW_ACCESS_public)
DW$259	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$259, DW_AT_name("errornum"), DW_AT_symbol_name("_errornum")
	.dwattr DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$259, DW_AT_accessibility(DW_ACCESS_public)
DW$260	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$63)
	.dwattr DW$260, DW_AT_name("readstatus"), DW_AT_symbol_name("_readstatus")
	.dwattr DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$260, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$64

DW$T$76	.dwtag  DW_TAG_typedef, DW_AT_name("VECTORS"), DW_AT_type(*DW$T$75)
	.dwattr DW$T$76, DW_AT_language(DW_LANG_C)

DW$T$53	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$53, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$53, DW_AT_byte_size(0x0e)
DW$261	.dwtag  DW_TAG_subrange_type
	.dwattr DW$261, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$53


DW$T$58	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$58, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$58, DW_AT_byte_size(0x1c)
DW$262	.dwtag  DW_TAG_subrange_type
	.dwattr DW$262, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$58


DW$T$21	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$21, DW_AT_byte_size(0x0e)
DW$263	.dwtag  DW_TAG_subrange_type
	.dwattr DW$263, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$21


DW$T$50	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$50, DW_AT_byte_size(0x64)
DW$264	.dwtag  DW_TAG_subrange_type
	.dwattr DW$264, DW_AT_upper_bound(0x63)
	.dwendtag DW$T$50


DW$T$56	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$56, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$56, DW_AT_byte_size(0x06)
DW$265	.dwtag  DW_TAG_subrange_type
	.dwattr DW$265, DW_AT_upper_bound(0x02)
DW$266	.dwtag  DW_TAG_subrange_type
	.dwattr DW$266, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$56


DW$T$59	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$59, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$59, DW_AT_byte_size(0x38)
DW$267	.dwtag  DW_TAG_subrange_type
	.dwattr DW$267, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$59


DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$19, DW_AT_byte_size(0x02)
DW$268	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$268, DW_AT_name("enb"), DW_AT_symbol_name("_enb")
	.dwattr DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$268, DW_AT_accessibility(DW_ACCESS_public)
DW$269	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$269, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$269, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$19


DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_byte_size(0x1e)
DW$270	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$270, DW_AT_name("chanlowthreshold"), DW_AT_symbol_name("_chanlowthreshold")
	.dwattr DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$270, DW_AT_accessibility(DW_ACCESS_public)
DW$271	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$271, DW_AT_name("chanhighthreshold"), DW_AT_symbol_name("_chanhighthreshold")
	.dwattr DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$271, DW_AT_accessibility(DW_ACCESS_public)
DW$272	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$272, DW_AT_name("chan18ma"), DW_AT_symbol_name("_chan18ma")
	.dwattr DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$272, DW_AT_accessibility(DW_ACCESS_public)
DW$273	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$273, DW_AT_name("notused"), DW_AT_symbol_name("_notused")
	.dwattr DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$273, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$23, DW_AT_byte_size(0x01)
DW$274	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$274, DW_AT_name("enabled"), DW_AT_symbol_name("_enabled")
	.dwattr DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$274, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_byte_size(0x0b)
DW$275	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$275, DW_AT_name("calprtzero"), DW_AT_symbol_name("_calprtzero")
	.dwattr DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$275, DW_AT_accessibility(DW_ACCESS_public)
DW$276	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$276, DW_AT_name("calprtfullscale"), DW_AT_symbol_name("_calprtfullscale")
	.dwattr DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$276, DW_AT_accessibility(DW_ACCESS_public)
DW$277	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$277, DW_AT_name("sensorscalingfactor"), DW_AT_symbol_name("_sensorscalingfactor")
	.dwattr DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$277, DW_AT_accessibility(DW_ACCESS_public)
DW$278	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$278, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$278, DW_AT_accessibility(DW_ACCESS_public)
DW$279	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$279, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$279, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$27, DW_AT_byte_size(0x03)
DW$280	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$280, DW_AT_name("mainrate"), DW_AT_symbol_name("_mainrate")
	.dwattr DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$280, DW_AT_accessibility(DW_ACCESS_public)
DW$281	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$281, DW_AT_name("trendrate"), DW_AT_symbol_name("_trendrate")
	.dwattr DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$281, DW_AT_accessibility(DW_ACCESS_public)
DW$282	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$282, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$282, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_byte_size(0x01)
DW$283	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$283, DW_AT_name("address"), DW_AT_symbol_name("_address")
	.dwattr DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$283, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$29, DW_AT_byte_size(0x02)
DW$284	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$284, DW_AT_name("inputtap"), DW_AT_symbol_name("_inputtap")
	.dwattr DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$284, DW_AT_accessibility(DW_ACCESS_public)
DW$285	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$285, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$285, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$29


DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$30, DW_AT_byte_size(0x03)
DW$286	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$286, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$286, DW_AT_accessibility(DW_ACCESS_public)
DW$287	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$287, DW_AT_name("notused2"), DW_AT_symbol_name("_notused2")
	.dwattr DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$287, DW_AT_accessibility(DW_ACCESS_public)
DW$288	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$288, DW_AT_name("notused3"), DW_AT_symbol_name("_notused3")
	.dwattr DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$288, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30


DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$31, DW_AT_byte_size(0x01)
DW$289	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$289, DW_AT_name("rate"), DW_AT_symbol_name("_rate")
	.dwattr DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$289, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_byte_size(0x02)
DW$290	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$290, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$290, DW_AT_accessibility(DW_ACCESS_public)
DW$291	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$291, DW_AT_name("notused2"), DW_AT_symbol_name("_notused2")
	.dwattr DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$291, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$33, DW_AT_byte_size(0x04)
DW$292	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$292, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$292, DW_AT_accessibility(DW_ACCESS_public)
DW$293	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$293, DW_AT_name("notused2"), DW_AT_symbol_name("_notused2")
	.dwattr DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$293, DW_AT_accessibility(DW_ACCESS_public)
DW$294	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$294, DW_AT_name("notused3"), DW_AT_symbol_name("_notused3")
	.dwattr DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$294, DW_AT_accessibility(DW_ACCESS_public)
DW$295	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$295, DW_AT_name("notused4"), DW_AT_symbol_name("_notused4")
	.dwattr DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$295, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$34, DW_AT_byte_size(0x01)
DW$296	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$296, DW_AT_name("bitmap"), DW_AT_symbol_name("_bitmap")
	.dwattr DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$296, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34


DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$35, DW_AT_byte_size(0x01)
DW$297	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$297, DW_AT_name("graphvalue"), DW_AT_symbol_name("_graphvalue")
	.dwattr DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$297, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35


DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$36, DW_AT_byte_size(0x01)
DW$298	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$298, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$298, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$36


DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$39, DW_AT_name("tag_timers")
	.dwattr DW$T$39, DW_AT_byte_size(0x4c)
DW$299	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$299, DW_AT_name("update"), DW_AT_symbol_name("_update")
	.dwattr DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$299, DW_AT_accessibility(DW_ACCESS_public)
DW$300	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$300, DW_AT_name("general"), DW_AT_symbol_name("_general")
	.dwattr DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$300, DW_AT_accessibility(DW_ACCESS_public)
DW$301	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$301, DW_AT_name("rxcharTimeout"), DW_AT_symbol_name("_rxcharTimeout")
	.dwattr DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$301, DW_AT_accessibility(DW_ACCESS_public)
DW$302	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$302, DW_AT_name("wiorxtimeout"), DW_AT_symbol_name("_wiorxtimeout")
	.dwattr DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$302, DW_AT_accessibility(DW_ACCESS_public)
DW$303	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$303, DW_AT_name("wiomasterrxtimeout"), DW_AT_symbol_name("_wiomasterrxtimeout")
	.dwattr DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$303, DW_AT_accessibility(DW_ACCESS_public)
DW$304	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$304, DW_AT_name("masterrxtimeout"), DW_AT_symbol_name("_masterrxtimeout")
	.dwattr DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$304, DW_AT_accessibility(DW_ACCESS_public)
DW$305	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$305, DW_AT_name("slaverxtimeout"), DW_AT_symbol_name("_slaverxtimeout")
	.dwattr DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$305, DW_AT_accessibility(DW_ACCESS_public)
DW$306	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$306, DW_AT_name("sectick"), DW_AT_symbol_name("_sectick")
	.dwattr DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$306, DW_AT_accessibility(DW_ACCESS_public)
DW$307	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$307, DW_AT_name("ledflash"), DW_AT_symbol_name("_ledflash")
	.dwattr DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$307, DW_AT_accessibility(DW_ACCESS_public)
DW$308	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$308, DW_AT_name("prtsettle"), DW_AT_symbol_name("_prtsettle")
	.dwattr DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$308, DW_AT_accessibility(DW_ACCESS_public)
DW$309	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$309, DW_AT_name("chantimeout"), DW_AT_symbol_name("_chantimeout")
	.dwattr DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$309, DW_AT_accessibility(DW_ACCESS_public)
DW$310	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$310, DW_AT_name("chanwait"), DW_AT_symbol_name("_chanwait")
	.dwattr DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$310, DW_AT_accessibility(DW_ACCESS_public)
DW$311	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$311, DW_AT_name("pcrxtimeout"), DW_AT_symbol_name("_pcrxtimeout")
	.dwattr DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$311, DW_AT_accessibility(DW_ACCESS_public)
DW$312	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$312, DW_AT_name("pctxtimeout"), DW_AT_symbol_name("_pctxtimeout")
	.dwattr DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$312, DW_AT_accessibility(DW_ACCESS_public)
DW$313	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$313, DW_AT_name("spistatus"), DW_AT_symbol_name("_spistatus")
	.dwattr DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$313, DW_AT_accessibility(DW_ACCESS_public)
DW$314	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$314, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$314, DW_AT_accessibility(DW_ACCESS_public)
DW$315	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$315, DW_AT_name("slaverqst"), DW_AT_symbol_name("_slaverqst")
	.dwattr DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$315, DW_AT_accessibility(DW_ACCESS_public)
DW$316	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$316, DW_AT_name("mastermodebutton"), DW_AT_symbol_name("_mastermodebutton")
	.dwattr DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$316, DW_AT_accessibility(DW_ACCESS_public)
DW$317	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$317, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$317, DW_AT_accessibility(DW_ACCESS_public)
DW$318	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$318, DW_AT_name("calibrate"), DW_AT_symbol_name("_calibrate")
	.dwattr DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$318, DW_AT_accessibility(DW_ACCESS_public)
DW$319	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$319, DW_AT_name("calibrate2"), DW_AT_symbol_name("_calibrate2")
	.dwattr DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$319, DW_AT_accessibility(DW_ACCESS_public)
DW$320	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$320, DW_AT_name("alarmreflash"), DW_AT_symbol_name("_alarmreflash")
	.dwattr DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$320, DW_AT_accessibility(DW_ACCESS_public)
DW$321	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$321, DW_AT_name("slowdownreflash"), DW_AT_symbol_name("_slowdownreflash")
	.dwattr DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr DW$321, DW_AT_accessibility(DW_ACCESS_public)
DW$322	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$322, DW_AT_name("wiorqst"), DW_AT_symbol_name("_wiorqst")
	.dwattr DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$322, DW_AT_accessibility(DW_ACCESS_public)
DW$323	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$323, DW_AT_name("rpmtimeout"), DW_AT_symbol_name("_rpmtimeout")
	.dwattr DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr DW$323, DW_AT_accessibility(DW_ACCESS_public)
DW$324	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$324, DW_AT_name("analogoor"), DW_AT_symbol_name("_analogoor")
	.dwattr DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$324, DW_AT_accessibility(DW_ACCESS_public)
DW$325	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$325, DW_AT_name("motioncal"), DW_AT_symbol_name("_motioncal")
	.dwattr DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr DW$325, DW_AT_accessibility(DW_ACCESS_public)
DW$326	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$326, DW_AT_name("framcheck"), DW_AT_symbol_name("_framcheck")
	.dwattr DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$326, DW_AT_accessibility(DW_ACCESS_public)
DW$327	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$327, DW_AT_name("pcmodbus"), DW_AT_symbol_name("_pcmodbus")
	.dwattr DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr DW$327, DW_AT_accessibility(DW_ACCESS_public)
DW$328	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$328, DW_AT_name("statusreflash"), DW_AT_symbol_name("_statusreflash")
	.dwattr DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$328, DW_AT_accessibility(DW_ACCESS_public)
DW$329	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$329, DW_AT_name("prewarn"), DW_AT_symbol_name("_prewarn")
	.dwattr DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$329, DW_AT_accessibility(DW_ACCESS_public)
DW$330	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$330, DW_AT_name("clocktofram"), DW_AT_symbol_name("_clocktofram")
	.dwattr DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr DW$330, DW_AT_accessibility(DW_ACCESS_public)
DW$331	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$331, DW_AT_name("debugrapidfast"), DW_AT_symbol_name("_debugrapidfast")
	.dwattr DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x3f]
	.dwattr DW$331, DW_AT_accessibility(DW_ACCESS_public)
DW$332	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$332, DW_AT_name("debugupdate"), DW_AT_symbol_name("_debugupdate")
	.dwattr DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$332, DW_AT_accessibility(DW_ACCESS_public)
DW$333	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$333, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr DW$333, DW_AT_accessibility(DW_ACCESS_public)
DW$334	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$334, DW_AT_name("startup"), DW_AT_symbol_name("_startup")
	.dwattr DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr DW$334, DW_AT_accessibility(DW_ACCESS_public)
DW$335	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$335, DW_AT_name("analogsettle"), DW_AT_symbol_name("_analogsettle")
	.dwattr DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr DW$335, DW_AT_accessibility(DW_ACCESS_public)
DW$336	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$336, DW_AT_name("reprogram"), DW_AT_symbol_name("_reprogram")
	.dwattr DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr DW$336, DW_AT_accessibility(DW_ACCESS_public)
DW$337	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$337, DW_AT_name("reprogramtimeout"), DW_AT_symbol_name("_reprogramtimeout")
	.dwattr DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr DW$337, DW_AT_accessibility(DW_ACCESS_public)
DW$338	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$338, DW_AT_name("dcmodestayalive"), DW_AT_symbol_name("_dcmodestayalive")
	.dwattr DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$338, DW_AT_accessibility(DW_ACCESS_public)
DW$339	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$339, DW_AT_name("biteventchange"), DW_AT_symbol_name("_biteventchange")
	.dwattr DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr DW$339, DW_AT_accessibility(DW_ACCESS_public)
DW$340	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$340, DW_AT_name("iSensorReplace"), DW_AT_symbol_name("_iSensorReplace")
	.dwattr DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr DW$340, DW_AT_accessibility(DW_ACCESS_public)
DW$341	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$341, DW_AT_name("deltarpm15Delay"), DW_AT_symbol_name("_deltarpm15Delay")
	.dwattr DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr DW$341, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39


DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$40, DW_AT_byte_size(0x01)
DW$342	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$342, DW_AT_name("newval"), DW_AT_symbol_name("_newval")
	.dwattr DW$342, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$342, DW_AT_accessibility(DW_ACCESS_public)
DW$343	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$343, DW_AT_name("calmode"), DW_AT_symbol_name("_calmode")
	.dwattr DW$343, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$343, DW_AT_accessibility(DW_ACCESS_public)
DW$344	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$344, DW_AT_name("startcal"), DW_AT_symbol_name("_startcal")
	.dwattr DW$344, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$344, DW_AT_accessibility(DW_ACCESS_public)
DW$345	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$345, DW_AT_name("newvalspu2"), DW_AT_symbol_name("_newvalspu2")
	.dwattr DW$345, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$345, DW_AT_accessibility(DW_ACCESS_public)
DW$346	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$346, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$346, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$346, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40


DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$41, DW_AT_byte_size(0x01)
DW$347	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$347, DW_AT_name("slowdowncntrl"), DW_AT_symbol_name("_slowdowncntrl")
	.dwattr DW$347, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$347, DW_AT_accessibility(DW_ACCESS_public)
DW$348	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$348, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$348, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0f)
	.dwattr DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$348, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$41


DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$43, DW_AT_byte_size(0x01)
DW$349	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$349, DW_AT_name("inputtap"), DW_AT_symbol_name("_inputtap")
	.dwattr DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$349, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$43


DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$44, DW_AT_byte_size(0x01)
DW$350	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$350, DW_AT_name("bitmap"), DW_AT_symbol_name("_bitmap")
	.dwattr DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$350, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$44


DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$45, DW_AT_byte_size(0x01)
DW$351	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$351, DW_AT_name("graphvalue"), DW_AT_symbol_name("_graphvalue")
	.dwattr DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$351, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$45


DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$46, DW_AT_byte_size(0x03)
DW$352	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$352, DW_AT_name("chanlowthreshold"), DW_AT_symbol_name("_chanlowthreshold")
	.dwattr DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$352, DW_AT_accessibility(DW_ACCESS_public)
DW$353	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$353, DW_AT_name("chanhighthreshold"), DW_AT_symbol_name("_chanhighthreshold")
	.dwattr DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$353, DW_AT_accessibility(DW_ACCESS_public)
DW$354	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$354, DW_AT_name("sensorscalingfactor"), DW_AT_symbol_name("_sensorscalingfactor")
	.dwattr DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$354, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$46


DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$47, DW_AT_byte_size(0x02)
DW$355	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$355, DW_AT_name("shortlrate"), DW_AT_symbol_name("_shortlrate")
	.dwattr DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$355, DW_AT_accessibility(DW_ACCESS_public)
DW$356	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$356, DW_AT_name("longlrate"), DW_AT_symbol_name("_longlrate")
	.dwattr DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$356, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$47


DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$48, DW_AT_byte_size(0x10)
DW$357	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$357, DW_AT_name("wiorequest"), DW_AT_symbol_name("_wiorequest")
	.dwattr DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$357, DW_AT_accessibility(DW_ACCESS_public)
DW$358	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$358, DW_AT_name("wiocancelled"), DW_AT_symbol_name("_wiocancelled")
	.dwattr DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$358, DW_AT_accessibility(DW_ACCESS_public)
DW$359	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$359, DW_AT_name("wioreceived"), DW_AT_symbol_name("_wioreceived")
	.dwattr DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$359, DW_AT_accessibility(DW_ACCESS_public)
DW$360	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$360, DW_AT_name("slaverequest"), DW_AT_symbol_name("_slaverequest")
	.dwattr DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$360, DW_AT_accessibility(DW_ACCESS_public)
DW$361	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$361, DW_AT_name("slavereceived"), DW_AT_symbol_name("_slavereceived")
	.dwattr DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$361, DW_AT_accessibility(DW_ACCESS_public)
DW$362	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$362, DW_AT_name("slaveretry"), DW_AT_symbol_name("_slaveretry")
	.dwattr DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$362, DW_AT_accessibility(DW_ACCESS_public)
DW$363	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$363, DW_AT_name("pcrequest"), DW_AT_symbol_name("_pcrequest")
	.dwattr DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$363, DW_AT_accessibility(DW_ACCESS_public)
DW$364	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$364, DW_AT_name("pcreqtimeout"), DW_AT_symbol_name("_pcreqtimeout")
	.dwattr DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$364, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$48

DW$T$51	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$51, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$51, DW_AT_byte_size(0x01)

DW$T$63	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$63, DW_AT_byte_size(0x01)
DW$365	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$365, DW_AT_name("settings"), DW_AT_symbol_name("_settings")
	.dwattr DW$365, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$365, DW_AT_accessibility(DW_ACCESS_public)
DW$366	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$366, DW_AT_name("sensorstatus"), DW_AT_symbol_name("_sensorstatus")
	.dwattr DW$366, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$366, DW_AT_accessibility(DW_ACCESS_public)
DW$367	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$367, DW_AT_name("offsets"), DW_AT_symbol_name("_offsets")
	.dwattr DW$367, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$367, DW_AT_accessibility(DW_ACCESS_public)
DW$368	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$368, DW_AT_name("mantable"), DW_AT_symbol_name("_mantable")
	.dwattr DW$368, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$368, DW_AT_accessibility(DW_ACCESS_public)
DW$369	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$369, DW_AT_name("calibtd"), DW_AT_symbol_name("_calibtd")
	.dwattr DW$369, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$369, DW_AT_accessibility(DW_ACCESS_public)
DW$370	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$370, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$370, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$370, DW_AT_accessibility(DW_ACCESS_public)
DW$371	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$371, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$371, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$371, DW_AT_accessibility(DW_ACCESS_public)
DW$372	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$372, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$372, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$372, DW_AT_accessibility(DW_ACCESS_public)
DW$373	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$373, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$373, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$373, DW_AT_accessibility(DW_ACCESS_public)
DW$374	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$374, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$374, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$374, DW_AT_accessibility(DW_ACCESS_public)
DW$375	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$375, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$375, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$375, DW_AT_accessibility(DW_ACCESS_public)
DW$376	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$376, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$376, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$376, DW_AT_accessibility(DW_ACCESS_public)
DW$377	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$377, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$377, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$377, DW_AT_accessibility(DW_ACCESS_public)
DW$378	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$378, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$378, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$378, DW_AT_accessibility(DW_ACCESS_public)
DW$379	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$379, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$379, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$379, DW_AT_accessibility(DW_ACCESS_public)
DW$380	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$380, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$380, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$380, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$63

DW$T$75	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$74)
	.dwattr DW$T$75, DW_AT_address_class(0x16)

DW$T$25	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$25, DW_AT_byte_size(0x04)
DW$381	.dwtag  DW_TAG_subrange_type
	.dwattr DW$381, DW_AT_upper_bound(0x03)
	.dwendtag DW$T$25

DW$T$12	.dwtag  DW_TAG_base_type, DW_AT_name("long")
	.dwattr DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$12, DW_AT_byte_size(0x02)

DW$T$74	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$74, DW_AT_language(DW_LANG_C)

	.dwattr DW$88, DW_AT_external(0x01)
	.dwattr DW$86, DW_AT_external(0x01)
	.dwattr DW$71, DW_AT_external(0x01)
	.dwattr DW$72, DW_AT_external(0x01)
	.dwattr DW$70, DW_AT_external(0x01)
	.dwattr DW$67, DW_AT_external(0x01)
	.dwattr DW$69, DW_AT_external(0x01)
	.dwattr DW$73, DW_AT_external(0x01)
	.dwattr DW$75, DW_AT_external(0x01)
	.dwattr DW$74, DW_AT_external(0x01)
	.dwattr DW$76, DW_AT_external(0x01)
	.dwattr DW$87, DW_AT_external(0x01)
	.dwattr DW$68, DW_AT_external(0x01)
	.dwattr DW$89, DW_AT_external(0x01)
	.dwattr DW$77, DW_AT_external(0x01)
	.dwattr DW$98, DW_AT_external(0x01)
	.dwattr DW$80, DW_AT_external(0x01)
	.dwattr DW$92, DW_AT_external(0x01)
	.dwattr DW$83, DW_AT_external(0x01)
	.dwattr DW$66, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$382	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$382, DW_AT_location[DW_OP_reg0]
DW$383	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$383, DW_AT_location[DW_OP_reg1]
DW$384	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$384, DW_AT_location[DW_OP_reg2]
DW$385	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$385, DW_AT_location[DW_OP_reg3]
DW$386	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$386, DW_AT_location[DW_OP_reg4]
DW$387	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$387, DW_AT_location[DW_OP_reg5]
DW$388	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$388, DW_AT_location[DW_OP_reg6]
DW$389	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$389, DW_AT_location[DW_OP_reg7]
DW$390	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$390, DW_AT_location[DW_OP_reg8]
DW$391	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$391, DW_AT_location[DW_OP_reg9]
DW$392	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$392, DW_AT_location[DW_OP_reg10]
DW$393	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$393, DW_AT_location[DW_OP_reg11]
DW$394	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$394, DW_AT_location[DW_OP_reg12]
DW$395	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$395, DW_AT_location[DW_OP_reg13]
DW$396	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$396, DW_AT_location[DW_OP_reg14]
DW$397	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$397, DW_AT_location[DW_OP_reg15]
DW$398	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$398, DW_AT_location[DW_OP_reg16]
DW$399	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$399, DW_AT_location[DW_OP_reg17]
DW$400	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$400, DW_AT_location[DW_OP_reg18]
DW$401	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$401, DW_AT_location[DW_OP_reg19]
DW$402	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$402, DW_AT_location[DW_OP_reg20]
DW$403	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$403, DW_AT_location[DW_OP_reg21]
DW$404	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$404, DW_AT_location[DW_OP_reg22]
DW$405	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$405, DW_AT_location[DW_OP_reg23]
DW$406	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$406, DW_AT_location[DW_OP_reg24]
DW$407	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$407, DW_AT_location[DW_OP_reg25]
DW$408	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$408, DW_AT_location[DW_OP_reg26]
DW$409	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$409, DW_AT_location[DW_OP_reg27]
DW$410	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$410, DW_AT_location[DW_OP_reg28]
DW$411	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$411, DW_AT_location[DW_OP_reg29]
DW$412	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$412, DW_AT_location[DW_OP_reg30]
DW$413	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$413, DW_AT_location[DW_OP_reg31]
DW$414	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$414, DW_AT_location[DW_OP_regx 0x20]
DW$415	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$415, DW_AT_location[DW_OP_regx 0x21]
DW$416	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$416, DW_AT_location[DW_OP_regx 0x22]
DW$417	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$417, DW_AT_location[DW_OP_regx 0x23]
DW$418	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$418, DW_AT_location[DW_OP_regx 0x24]
DW$419	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$419, DW_AT_location[DW_OP_regx 0x25]
DW$420	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$420, DW_AT_location[DW_OP_regx 0x26]
DW$421	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$421, DW_AT_location[DW_OP_regx 0x27]
DW$422	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$422, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

