;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Thu Aug 18 12:16:33 2016                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("utils.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("sprintf"), DW_AT_symbol_name("_sprintf")
	.dwattr DW$1, DW_AT_type(*DW$T$10)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$65)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$81)
DW$4	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$1


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("WatchdogKick"), DW_AT_symbol_name("_WatchdogKick")
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)

DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("DebugStringOut"), DW_AT_symbol_name("_DebugStringOut")
	.dwattr DW$6, DW_AT_declaration(0x01)
	.dwattr DW$6, DW_AT_external(0x01)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$65)
	.dwendtag DW$6


DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearMANTable"), DW_AT_symbol_name("_ClearMANTable")
	.dwattr DW$8, DW_AT_declaration(0x01)
	.dwattr DW$8, DW_AT_external(0x01)
DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$8


DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteDamagemontoNVMEM"), DW_AT_symbol_name("_WriteDamagemontoNVMEM")
	.dwattr DW$10, DW_AT_declaration(0x01)
	.dwattr DW$10, DW_AT_external(0x01)

DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadDamagemonfromNVMEM"), DW_AT_symbol_name("_ReadDamagemonfromNVMEM")
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)

DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("SetSensorEnabled"), DW_AT_symbol_name("_SetSensorEnabled")
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)
DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$12


DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("GetModalRPM"), DW_AT_symbol_name("_GetModalRPM")
	.dwattr DW$15, DW_AT_type(*DW$T$11)
	.dwattr DW$15, DW_AT_declaration(0x01)
	.dwattr DW$15, DW_AT_external(0x01)
DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$15


DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteSensorStatustoNVMEM"), DW_AT_symbol_name("_WriteSensorStatustoNVMEM")
	.dwattr DW$17, DW_AT_declaration(0x01)
	.dwattr DW$17, DW_AT_external(0x01)
DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$17


DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteMANCompTabletoNVMEM"), DW_AT_symbol_name("_WriteMANCompTabletoNVMEM")
	.dwattr DW$19, DW_AT_declaration(0x01)
	.dwattr DW$19, DW_AT_external(0x01)

DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteOffsetAtoNVMEM"), DW_AT_symbol_name("_WriteOffsetAtoNVMEM")
	.dwattr DW$20, DW_AT_declaration(0x01)
	.dwattr DW$20, DW_AT_external(0x01)
DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$20


DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteOffsetBtoNVMEM"), DW_AT_symbol_name("_WriteOffsetBtoNVMEM")
	.dwattr DW$22, DW_AT_declaration(0x01)
	.dwattr DW$22, DW_AT_external(0x01)
DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$22


DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("SaveSDSettings"), DW_AT_symbol_name("_SaveSDSettings")
	.dwattr DW$24, DW_AT_declaration(0x01)
	.dwattr DW$24, DW_AT_external(0x01)

DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("PowerUpReadSD"), DW_AT_symbol_name("_PowerUpReadSD")
	.dwattr DW$25, DW_AT_declaration(0x01)
	.dwattr DW$25, DW_AT_external(0x01)

DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("BuildTimeStamp"), DW_AT_symbol_name("_BuildTimeStamp")
	.dwattr DW$26, DW_AT_type(*DW$T$13)
	.dwattr DW$26, DW_AT_declaration(0x01)
	.dwattr DW$26, DW_AT_external(0x01)

DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("SetAlarmEvent"), DW_AT_symbol_name("_SetAlarmEvent")
	.dwattr DW$27, DW_AT_declaration(0x01)
	.dwattr DW$27, DW_AT_external(0x01)
DW$28	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$27


DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearAlarmEvent"), DW_AT_symbol_name("_ClearAlarmEvent")
	.dwattr DW$29, DW_AT_declaration(0x01)
	.dwattr DW$29, DW_AT_external(0x01)
DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$29


DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearMSGQueue"), DW_AT_symbol_name("_ClearMSGQueue")
	.dwattr DW$31, DW_AT_declaration(0x01)
	.dwattr DW$31, DW_AT_external(0x01)

DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearAlarmListandEventLog"), DW_AT_symbol_name("_ClearAlarmListandEventLog")
	.dwattr DW$32, DW_AT_declaration(0x01)
	.dwattr DW$32, DW_AT_external(0x01)

DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadEventLogVarsStructfromNVMEM"), DW_AT_symbol_name("_ReadEventLogVarsStructfromNVMEM")
	.dwattr DW$33, DW_AT_declaration(0x01)
	.dwattr DW$33, DW_AT_external(0x01)

DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("SetWIOAlarmMask"), DW_AT_symbol_name("_SetWIOAlarmMask")
	.dwattr DW$34, DW_AT_declaration(0x01)
	.dwattr DW$34, DW_AT_external(0x01)
DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$34


DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadWIOSettingsfromNVMEM"), DW_AT_symbol_name("_ReadWIOSettingsfromNVMEM")
	.dwattr DW$36, DW_AT_declaration(0x01)
	.dwattr DW$36, DW_AT_external(0x01)

DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteWIOSettingstoNVMEM"), DW_AT_symbol_name("_WriteWIOSettingstoNVMEM")
	.dwattr DW$37, DW_AT_declaration(0x01)
	.dwattr DW$37, DW_AT_external(0x01)

DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("AnalogueInputScaleAllChannels"), DW_AT_symbol_name("_AnalogueInputScaleAllChannels")
	.dwattr DW$38, DW_AT_declaration(0x01)
	.dwattr DW$38, DW_AT_external(0x01)

DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("PulseRPMCalc"), DW_AT_symbol_name("_PulseRPMCalc")
	.dwattr DW$39, DW_AT_declaration(0x01)
	.dwattr DW$39, DW_AT_external(0x01)

DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteSLEMSettingstoNVMEM"), DW_AT_symbol_name("_WriteSLEMSettingstoNVMEM")
	.dwattr DW$40, DW_AT_declaration(0x01)
	.dwattr DW$40, DW_AT_external(0x01)

DW$41	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadSLEMSettingsfromNVMEM"), DW_AT_symbol_name("_ReadSLEMSettingsfromNVMEM")
	.dwattr DW$41, DW_AT_declaration(0x01)
	.dwattr DW$41, DW_AT_external(0x01)

DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteCPPSettingstoNVMEM"), DW_AT_symbol_name("_WriteCPPSettingstoNVMEM")
	.dwattr DW$42, DW_AT_declaration(0x01)
	.dwattr DW$42, DW_AT_external(0x01)

DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadCPPSettingsfromNVMEM"), DW_AT_symbol_name("_ReadCPPSettingsfromNVMEM")
	.dwattr DW$43, DW_AT_declaration(0x01)
	.dwattr DW$43, DW_AT_external(0x01)

DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteSensorSettingstoNVMEM"), DW_AT_symbol_name("_WriteSensorSettingstoNVMEM")
	.dwattr DW$44, DW_AT_declaration(0x01)
	.dwattr DW$44, DW_AT_external(0x01)

DW$45	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteDCModeChecksSettingstoNVMEM"), DW_AT_symbol_name("_WriteDCModeChecksSettingstoNVMEM")
	.dwattr DW$45, DW_AT_declaration(0x01)
	.dwattr DW$45, DW_AT_external(0x01)

DW$46	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadDCModeChecksSettingsfromNVMEM"), DW_AT_symbol_name("_ReadDCModeChecksSettingsfromNVMEM")
	.dwattr DW$46, DW_AT_declaration(0x01)
	.dwattr DW$46, DW_AT_external(0x01)

DW$47	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteClockData"), DW_AT_symbol_name("_WriteClockData")
	.dwattr DW$47, DW_AT_type(*DW$T$10)
	.dwattr DW$47, DW_AT_declaration(0x01)
	.dwattr DW$47, DW_AT_external(0x01)

DW$48	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadNVMemory"), DW_AT_symbol_name("_ReadNVMemory")
	.dwattr DW$48, DW_AT_type(*DW$T$10)
	.dwattr DW$48, DW_AT_declaration(0x01)
	.dwattr DW$48, DW_AT_external(0x01)

DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteNVMemory"), DW_AT_symbol_name("_WriteNVMemory")
	.dwattr DW$49, DW_AT_type(*DW$T$10)
	.dwattr DW$49, DW_AT_declaration(0x01)
	.dwattr DW$49, DW_AT_external(0x01)

DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteSpeedCompStructtoNVMEM"), DW_AT_symbol_name("_WriteSpeedCompStructtoNVMEM")
	.dwattr DW$50, DW_AT_type(*DW$T$10)
	.dwattr DW$50, DW_AT_declaration(0x01)
	.dwattr DW$50, DW_AT_external(0x01)

DW$51	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteAllSensorStructtoNVMEM"), DW_AT_symbol_name("_WriteAllSensorStructtoNVMEM")
	.dwattr DW$51, DW_AT_type(*DW$T$10)
	.dwattr DW$51, DW_AT_declaration(0x01)
	.dwattr DW$51, DW_AT_external(0x01)

DW$52	.dwtag  DW_TAG_subprogram, DW_AT_name("Fram1MagicNumberWrite"), DW_AT_symbol_name("_Fram1MagicNumberWrite")
	.dwattr DW$52, DW_AT_type(*DW$T$10)
	.dwattr DW$52, DW_AT_declaration(0x01)
	.dwattr DW$52, DW_AT_external(0x01)

DW$53	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteYrMnthData"), DW_AT_symbol_name("_WriteYrMnthData")
	.dwattr DW$53, DW_AT_type(*DW$T$10)
	.dwattr DW$53, DW_AT_declaration(0x01)
	.dwattr DW$53, DW_AT_external(0x01)

DW$54	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteDateHrsData"), DW_AT_symbol_name("_WriteDateHrsData")
	.dwattr DW$54, DW_AT_type(*DW$T$10)
	.dwattr DW$54, DW_AT_declaration(0x01)
	.dwattr DW$54, DW_AT_external(0x01)

DW$55	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteMinsSecsData"), DW_AT_symbol_name("_WriteMinsSecsData")
	.dwattr DW$55, DW_AT_type(*DW$T$10)
	.dwattr DW$55, DW_AT_declaration(0x01)
	.dwattr DW$55, DW_AT_external(0x01)

DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("SaveSafeStruct1"), DW_AT_symbol_name("_SaveSafeStruct1")
	.dwattr DW$56, DW_AT_type(*DW$T$10)
	.dwattr DW$56, DW_AT_declaration(0x01)
	.dwattr DW$56, DW_AT_external(0x01)

DW$57	.dwtag  DW_TAG_subprogram, DW_AT_name("SaveSafeStruct2"), DW_AT_symbol_name("_SaveSafeStruct2")
	.dwattr DW$57, DW_AT_type(*DW$T$10)
	.dwattr DW$57, DW_AT_declaration(0x01)
	.dwattr DW$57, DW_AT_external(0x01)
DW$58	.dwtag  DW_TAG_variable, DW_AT_name("gpd"), DW_AT_symbol_name("_gpd")
	.dwattr DW$58, DW_AT_type(*DW$T$125)
	.dwattr DW$58, DW_AT_declaration(0x01)
	.dwattr DW$58, DW_AT_external(0x01)
DW$59	.dwtag  DW_TAG_variable, DW_AT_name("settings"), DW_AT_symbol_name("_settings")
	.dwattr DW$59, DW_AT_type(*DW$T$128)
	.dwattr DW$59, DW_AT_declaration(0x01)
	.dwattr DW$59, DW_AT_external(0x01)
DW$60	.dwtag  DW_TAG_variable, DW_AT_name("livetime"), DW_AT_symbol_name("_livetime")
	.dwattr DW$60, DW_AT_type(*DW$T$129)
	.dwattr DW$60, DW_AT_declaration(0x01)
	.dwattr DW$60, DW_AT_external(0x01)
DW$61	.dwtag  DW_TAG_variable, DW_AT_name("logtime"), DW_AT_symbol_name("_logtime")
	.dwattr DW$61, DW_AT_type(*DW$T$129)
	.dwattr DW$61, DW_AT_declaration(0x01)
	.dwattr DW$61, DW_AT_external(0x01)
DW$62	.dwtag  DW_TAG_variable, DW_AT_name("calibrationtd"), DW_AT_symbol_name("_calibrationtd")
	.dwattr DW$62, DW_AT_type(*DW$T$130)
	.dwattr DW$62, DW_AT_declaration(0x01)
	.dwattr DW$62, DW_AT_external(0x01)
DW$63	.dwtag  DW_TAG_variable, DW_AT_name("clocktime"), DW_AT_symbol_name("_clocktime")
	.dwattr DW$63, DW_AT_type(*DW$T$132)
	.dwattr DW$63, DW_AT_declaration(0x01)
	.dwattr DW$63, DW_AT_external(0x01)
DW$64	.dwtag  DW_TAG_variable, DW_AT_name("timers"), DW_AT_symbol_name("_timers")
	.dwattr DW$64, DW_AT_type(*DW$T$135)
	.dwattr DW$64, DW_AT_declaration(0x01)
	.dwattr DW$64, DW_AT_external(0x01)
DW$65	.dwtag  DW_TAG_variable, DW_AT_name("allsensors"), DW_AT_symbol_name("_allsensors")
	.dwattr DW$65, DW_AT_type(*DW$T$137)
	.dwattr DW$65, DW_AT_declaration(0x01)
	.dwattr DW$65, DW_AT_external(0x01)
DW$66	.dwtag  DW_TAG_variable, DW_AT_name("config"), DW_AT_symbol_name("_config")
	.dwattr DW$66, DW_AT_type(*DW$T$139)
	.dwattr DW$66, DW_AT_declaration(0x01)
	.dwattr DW$66, DW_AT_external(0x01)
DW$67	.dwtag  DW_TAG_variable, DW_AT_name("loopcheck"), DW_AT_symbol_name("_loopcheck")
	.dwattr DW$67, DW_AT_type(*DW$T$142)
	.dwattr DW$67, DW_AT_declaration(0x01)
	.dwattr DW$67, DW_AT_external(0x01)
DW$68	.dwtag  DW_TAG_variable, DW_AT_name("stringbuffer"), DW_AT_symbol_name("_stringbuffer")
	.dwattr DW$68, DW_AT_type(*DW$T$169)
	.dwattr DW$68, DW_AT_declaration(0x01)
	.dwattr DW$68, DW_AT_external(0x01)
DW$69	.dwtag  DW_TAG_variable, DW_AT_name("offsetA"), DW_AT_symbol_name("_offsetA")
	.dwattr DW$69, DW_AT_type(*DW$T$144)
	.dwattr DW$69, DW_AT_declaration(0x01)
	.dwattr DW$69, DW_AT_external(0x01)
DW$70	.dwtag  DW_TAG_variable, DW_AT_name("offsetB"), DW_AT_symbol_name("_offsetB")
	.dwattr DW$70, DW_AT_type(*DW$T$144)
	.dwattr DW$70, DW_AT_declaration(0x01)
	.dwattr DW$70, DW_AT_external(0x01)
DW$71	.dwtag  DW_TAG_variable, DW_AT_name("function"), DW_AT_symbol_name("_function")
	.dwattr DW$71, DW_AT_type(*DW$T$146)
	.dwattr DW$71, DW_AT_declaration(0x01)
	.dwattr DW$71, DW_AT_external(0x01)
DW$72	.dwtag  DW_TAG_variable, DW_AT_name("speedcompcoeffs"), DW_AT_symbol_name("_speedcompcoeffs")
	.dwattr DW$72, DW_AT_type(*DW$T$147)
	.dwattr DW$72, DW_AT_declaration(0x01)
	.dwattr DW$72, DW_AT_external(0x01)
DW$73	.dwtag  DW_TAG_variable, DW_AT_name("sdsettings"), DW_AT_symbol_name("_sdsettings")
	.dwattr DW$73, DW_AT_type(*DW$T$148)
	.dwattr DW$73, DW_AT_declaration(0x01)
	.dwattr DW$73, DW_AT_external(0x01)
DW$74	.dwtag  DW_TAG_variable, DW_AT_name("alarms"), DW_AT_symbol_name("_alarms")
	.dwattr DW$74, DW_AT_type(*DW$T$150)
	.dwattr DW$74, DW_AT_declaration(0x01)
	.dwattr DW$74, DW_AT_external(0x01)
DW$75	.dwtag  DW_TAG_variable, DW_AT_name("bitalarmlist"), DW_AT_symbol_name("_bitalarmlist")
	.dwattr DW$75, DW_AT_type(*DW$T$115)
	.dwattr DW$75, DW_AT_declaration(0x01)
	.dwattr DW$75, DW_AT_external(0x01)
DW$76	.dwtag  DW_TAG_variable, DW_AT_name("biteventlist"), DW_AT_symbol_name("_biteventlist")
	.dwattr DW$76, DW_AT_type(*DW$T$117)
	.dwattr DW$76, DW_AT_declaration(0x01)
	.dwattr DW$76, DW_AT_external(0x01)
DW$77	.dwtag  DW_TAG_variable, DW_AT_name("biteventpos"), DW_AT_symbol_name("_biteventpos")
	.dwattr DW$77, DW_AT_type(*DW$T$11)
	.dwattr DW$77, DW_AT_declaration(0x01)
	.dwattr DW$77, DW_AT_external(0x01)
DW$78	.dwtag  DW_TAG_variable, DW_AT_name("wiosettings"), DW_AT_symbol_name("_wiosettings")
	.dwattr DW$78, DW_AT_type(*DW$T$152)
	.dwattr DW$78, DW_AT_declaration(0x01)
	.dwattr DW$78, DW_AT_external(0x01)
DW$79	.dwtag  DW_TAG_variable, DW_AT_name("rtcbat"), DW_AT_symbol_name("_rtcbat")
	.dwattr DW$79, DW_AT_type(*DW$T$153)
	.dwattr DW$79, DW_AT_declaration(0x01)
	.dwattr DW$79, DW_AT_external(0x01)
	.global	_rpmdata
_rpmdata:	.usect	".ebss",19,1,0
DW$80	.dwtag  DW_TAG_variable, DW_AT_name("rpmdata"), DW_AT_symbol_name("_rpmdata")
	.dwattr DW$80, DW_AT_location[DW_OP_addr _rpmdata]
	.dwattr DW$80, DW_AT_type(*DW$T$155)
	.dwattr DW$80, DW_AT_external(0x01)
	.global	_monthlst
	.sect	".econst"
	.align	1
_monthlst:
	.field  	74,16			; _monthlst[0][0] @ 0
	.field  	97,16			; _monthlst[0][1] @ 16
	.field  	110,16			; _monthlst[0][2] @ 32
	.field  	0,16			; _monthlst[0][3] @ 48
	.field  	70,16			; _monthlst[1][0] @ 64
	.field  	101,16			; _monthlst[1][1] @ 80
	.field  	98,16			; _monthlst[1][2] @ 96
	.field  	0,16			; _monthlst[1][3] @ 112
	.field  	77,16			; _monthlst[2][0] @ 128
	.field  	97,16			; _monthlst[2][1] @ 144
	.field  	114,16			; _monthlst[2][2] @ 160
	.field  	0,16			; _monthlst[2][3] @ 176
	.field  	65,16			; _monthlst[3][0] @ 192
	.field  	112,16			; _monthlst[3][1] @ 208
	.field  	114,16			; _monthlst[3][2] @ 224
	.field  	0,16			; _monthlst[3][3] @ 240
	.field  	77,16			; _monthlst[4][0] @ 256
	.field  	97,16			; _monthlst[4][1] @ 272
	.field  	121,16			; _monthlst[4][2] @ 288
	.field  	0,16			; _monthlst[4][3] @ 304
	.field  	74,16			; _monthlst[5][0] @ 320
	.field  	117,16			; _monthlst[5][1] @ 336
	.field  	110,16			; _monthlst[5][2] @ 352
	.field  	0,16			; _monthlst[5][3] @ 368
	.field  	74,16			; _monthlst[6][0] @ 384
	.field  	117,16			; _monthlst[6][1] @ 400
	.field  	108,16			; _monthlst[6][2] @ 416
	.field  	0,16			; _monthlst[6][3] @ 432
	.field  	65,16			; _monthlst[7][0] @ 448
	.field  	117,16			; _monthlst[7][1] @ 464
	.field  	103,16			; _monthlst[7][2] @ 480
	.field  	0,16			; _monthlst[7][3] @ 496
	.field  	83,16			; _monthlst[8][0] @ 512
	.field  	101,16			; _monthlst[8][1] @ 528
	.field  	112,16			; _monthlst[8][2] @ 544
	.field  	0,16			; _monthlst[8][3] @ 560
	.field  	79,16			; _monthlst[9][0] @ 576
	.field  	99,16			; _monthlst[9][1] @ 592
	.field  	116,16			; _monthlst[9][2] @ 608
	.field  	0,16			; _monthlst[9][3] @ 624
	.field  	78,16			; _monthlst[10][0] @ 640
	.field  	111,16			; _monthlst[10][1] @ 656
	.field  	118,16			; _monthlst[10][2] @ 672
	.field  	0,16			; _monthlst[10][3] @ 688
	.field  	68,16			; _monthlst[11][0] @ 704
	.field  	101,16			; _monthlst[11][1] @ 720
	.field  	99,16			; _monthlst[11][2] @ 736
	.field  	0,16			; _monthlst[11][3] @ 752
	.field  	70,16			; _monthlst[12][0] @ 768
	.field  	70,16			; _monthlst[12][1] @ 784
	.field  	70,16			; _monthlst[12][2] @ 800
	.field  	0,16			; _monthlst[12][3] @ 816

DW$81	.dwtag  DW_TAG_variable, DW_AT_name("monthlst"), DW_AT_symbol_name("_monthlst")
	.dwattr DW$81, DW_AT_location[DW_OP_addr _monthlst]
	.dwattr DW$81, DW_AT_type(*DW$T$168)
	.dwattr DW$81, DW_AT_external(0x01)
	.global	_configchecklist
	.sect	".econst"
	.align	2
_configchecklist:
	.field  	50,16			; _configchecklist[0]._lowlim @ 0
	.field  	2000,16			; _configchecklist[0]._hilim @ 16
	.field  	500,16			; _configchecklist[0]._defaultval @ 32
	.space	16
	.field  	_config,32		; _configchecklist[0]._ptr @ 64
	.field  	0,16			; _configchecklist[1]._lowlim @ 96
	.field  	8,16			; _configchecklist[1]._hilim @ 112
	.field  	7,16			; _configchecklist[1]._defaultval @ 128
	.space	16
	.field  	_config+1,32		; _configchecklist[1]._ptr @ 160
	.field  	20,16			; _configchecklist[2]._lowlim @ 192
	.field  	2000,16			; _configchecklist[2]._hilim @ 208
	.field  	100,16			; _configchecklist[2]._defaultval @ 224
	.space	16
	.field  	_config+2,32		; _configchecklist[2]._ptr @ 256
	.field  	500,16			; _configchecklist[3]._lowlim @ 288
	.field  	2000,16			; _configchecklist[3]._hilim @ 304
	.field  	1000,16			; _configchecklist[3]._defaultval @ 320
	.space	16
	.field  	_config+3,32		; _configchecklist[3]._ptr @ 352
	.field  	500,16			; _configchecklist[4]._lowlim @ 384
	.field  	2000,16			; _configchecklist[4]._hilim @ 400
	.field  	500,16			; _configchecklist[4]._defaultval @ 416
	.space	16
	.field  	_config+4,32		; _configchecklist[4]._ptr @ 448
	.field  	2000,16			; _configchecklist[5]._lowlim @ 480
	.field  	8000,16			; _configchecklist[5]._hilim @ 496
	.field  	3330,16			; _configchecklist[5]._defaultval @ 512
	.space	16
	.field  	_config+5,32		; _configchecklist[5]._ptr @ 544
	.field  	10,16			; _configchecklist[6]._lowlim @ 576
	.field  	3600,16			; _configchecklist[6]._hilim @ 592
	.field  	10,16			; _configchecklist[6]._defaultval @ 608
	.space	16
	.field  	_config+6,32		; _configchecklist[6]._ptr @ 640
	.field  	60,16			; _configchecklist[7]._lowlim @ 672
	.field  	3600,16			; _configchecklist[7]._hilim @ 688
	.field  	60,16			; _configchecklist[7]._defaultval @ 704
	.space	16
	.field  	_config+7,32		; _configchecklist[7]._ptr @ 736

DW$82	.dwtag  DW_TAG_variable, DW_AT_name("configchecklist"), DW_AT_symbol_name("_configchecklist")
	.dwattr DW$82, DW_AT_location[DW_OP_addr _configchecklist]
	.dwattr DW$82, DW_AT_type(*DW$T$158)
	.dwattr DW$82, DW_AT_external(0x01)
_mastermodeswitchprevious$1:	.usect	".ebss",1,1,0
;	C:\CCStudio_v3.3\C2000\cgtools\bin\opt2000.exe C:\Users\Andrew\AppData\Local\Temp\TI8002 C:\Users\Andrew\AppData\Local\Temp\TI8004 
;	C:\CCStudio_v3.3\C2000\cgtools\bin\ac2000.exe -q -D_INLINE -DLARGE_MODEL -IC:/CCStudio_v3.3/C2000/xdais/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/bios/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/rtdx/include/c2000 -IC:/CCStudio_v3.3/C2000/cgtools/include --version=28 --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\Andrew\AppData\Local\Temp\TI8002 --template_info_file C:\Users\Andrew\AppData\Local\Temp\TI8006 --object_file 
	.sect	".text"
	.global	_LoopCheck

DW$83	.dwtag  DW_TAG_subprogram, DW_AT_name("LoopCheck"), DW_AT_symbol_name("_LoopCheck")
	.dwattr DW$83, DW_AT_low_pc(_LoopCheck)
	.dwattr DW$83, DW_AT_high_pc(0x00)
	.dwattr DW$83, DW_AT_begin_file("utils.c")
	.dwattr DW$83, DW_AT_begin_line(0x39)
	.dwattr DW$83, DW_AT_begin_column(0x06)
	.dwattr DW$83, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$83, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",58,1

;***************************************************************
;* FNAME: _LoopCheck                    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_LoopCheck:
        MOVL      *SP++,XAR1
        ADDB      SP,#2
        MOV       AL,#16443
        MOVW      DP,#_loopcheck+14
        MOV       AH,#14347
        MOVL      *-SP[2],ACC           ; |61| 
        MOVL      ACC,@_loopcheck+14    ; |61| 
        LCR       #FS$$MPY              ; |61| 
        ; call occurs [#FS$$MPY] ; |61| 
        MOVL      XAR1,ACC              ; |61| 
        MOVW      DP,#_loopcheck+4
        MOVL      ACC,@_loopcheck+4     ; |62| 
        MOVL      *-SP[2],ACC           ; |62| 
        MOVL      ACC,XAR1              ; |62| 
        LCR       #FS$$CMP              ; |62| 
        ; call occurs [#FS$$CMP] ; |62| 
        CMPB      AL,#0                 ; |62| 
        BF        L1,GEQ                ; |62| 
        ; branchcc occurs ; |62| 
        MOVW      DP,#_clocktime+3
        MOV       AL,@_clocktime+3      ; |64| 
        MOVW      DP,#_loopcheck
        MOV       @_loopcheck,AL        ; |64| 
        MOVW      DP,#_clocktime+2
        MOV       AL,@_clocktime+2      ; |65| 
        MOVW      DP,#_loopcheck+1
        MOV       @_loopcheck+1,AL      ; |65| 
        MOVW      DP,#_clocktime+1
        MOV       AL,@_clocktime+1      ; |66| 
        MOVW      DP,#_loopcheck+2
        MOV       @_loopcheck+2,AL      ; |66| 
        MOVW      DP,#_loopcheck+4
        MOVL      @_loopcheck+4,XAR1    ; |67| 
L1:    
        MOVW      DP,#_loopcheck+10
        MOVL      ACC,@_loopcheck+10    ; |69| 
        MOVL      *-SP[2],ACC           ; |69| 
        MOVL      ACC,XAR1              ; |69| 
        LCR       #FS$$CMP              ; |69| 
        ; call occurs [#FS$$CMP] ; |69| 
        CMPB      AL,#0                 ; |69| 
        BF        L2,LEQ                ; |69| 
        ; branchcc occurs ; |69| 
        MOVW      DP,#_clocktime+3
        MOV       AL,@_clocktime+3      ; |71| 
        MOVW      DP,#_loopcheck+6
        MOV       @_loopcheck+6,AL      ; |71| 
        MOVW      DP,#_clocktime+2
        MOV       AL,@_clocktime+2      ; |72| 
        MOVW      DP,#_loopcheck+7
        MOV       @_loopcheck+7,AL      ; |72| 
        MOVW      DP,#_clocktime+1
        MOV       AL,@_clocktime+1      ; |73| 
        MOVW      DP,#_loopcheck+8
        MOV       @_loopcheck+8,AL      ; |73| 
        MOVW      DP,#_loopcheck+10
        MOVL      @_loopcheck+10,XAR1   ; |74| 
L2:    
        MOV       AL,#0
        MOV       AH,#0
        MOVW      DP,#_loopcheck+12
        MOVL      @_loopcheck+12,XAR1   ; |78| 
        MOVW      DP,#_loopcheck+14
        MOVL      @_loopcheck+14,ACC    ; |80| 
        SUBB      SP,#2
        MOVL      XAR1,*--SP
	.dwpsn	"utils.c",81,1
        LRETR
        ; return occurs
	.dwattr DW$83, DW_AT_end_file("utils.c")
	.dwattr DW$83, DW_AT_end_line(0x51)
	.dwattr DW$83, DW_AT_end_column(0x01)
	.dwendtag DW$83

	.sect	".text"
	.global	_ResetCommsCheck

DW$84	.dwtag  DW_TAG_subprogram, DW_AT_name("ResetCommsCheck"), DW_AT_symbol_name("_ResetCommsCheck")
	.dwattr DW$84, DW_AT_low_pc(_ResetCommsCheck)
	.dwattr DW$84, DW_AT_high_pc(0x00)
	.dwattr DW$84, DW_AT_begin_file("utils.c")
	.dwattr DW$84, DW_AT_begin_line(0x54)
	.dwattr DW$84, DW_AT_begin_column(0x06)
	.dwattr DW$84, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$84, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",85,1

;***************************************************************
;* FNAME: _ResetCommsCheck              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ResetCommsCheck:
        MOVB      ACC,#0
        MOVW      DP,#_config+8
        MOVL      @_config+8,ACC        ; |86| 
        MOVW      DP,#_config+10
        MOVL      @_config+10,ACC       ; |87| 
        MOVW      DP,#_config+12
        MOVL      @_config+12,ACC       ; |88| 
        MOVW      DP,#_config+14
        MOVL      @_config+14,ACC       ; |89| 
        MOVW      DP,#_config+16
        MOVL      @_config+16,ACC       ; |90| 
        MOVW      DP,#_config+18
        MOVL      @_config+18,ACC       ; |91| 
        MOVW      DP,#_config+20
        MOVL      @_config+20,ACC       ; |92| 
        MOVW      DP,#_config+22
        MOVL      @_config+22,ACC       ; |93| 
	.dwpsn	"utils.c",94,1
        LRETR
        ; return occurs
	.dwattr DW$84, DW_AT_end_file("utils.c")
	.dwattr DW$84, DW_AT_end_line(0x5e)
	.dwattr DW$84, DW_AT_end_column(0x01)
	.dwendtag DW$84

	.sect	".text"
	.global	_ResetLoopCheck

DW$85	.dwtag  DW_TAG_subprogram, DW_AT_name("ResetLoopCheck"), DW_AT_symbol_name("_ResetLoopCheck")
	.dwattr DW$85, DW_AT_low_pc(_ResetLoopCheck)
	.dwattr DW$85, DW_AT_high_pc(0x00)
	.dwattr DW$85, DW_AT_begin_file("utils.c")
	.dwattr DW$85, DW_AT_begin_line(0x61)
	.dwattr DW$85, DW_AT_begin_column(0x06)
	.dwattr DW$85, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$85, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",98,1

;***************************************************************
;* FNAME: _ResetLoopCheck               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ResetLoopCheck:
        MOVL      XAR4,#_loopcheck      ; |104| 
	.dwpsn	"utils.c",105,0
        MOVB      AL,#0
L3:    
DW$L$_ResetLoopCheck$2$B:
	.dwpsn	"utils.c",106,0
        ADDB      AL,#1                 ; |105| 
        MOV       *XAR4++,#0            ; |107| 
        CMPB      AL,#16                ; |105| 
	.dwpsn	"utils.c",108,0
        BF        L3,LT                 ; |105| 
        ; branchcc occurs ; |105| 
DW$L$_ResetLoopCheck$2$E:
        MOV       AL,#0
        MOV       AH,#20352
        MOVW      DP,#_loopcheck+4
        MOVL      @_loopcheck+4,ACC     ; |109| 
	.dwpsn	"utils.c",110,1
        LRETR
        ; return occurs

DW$86	.dwtag  DW_TAG_loop
	.dwattr DW$86, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\utils.asm:L3:1:1471518993")
	.dwattr DW$86, DW_AT_begin_file("utils.c")
	.dwattr DW$86, DW_AT_begin_line(0x69)
	.dwattr DW$86, DW_AT_end_line(0x6c)
DW$87	.dwtag  DW_TAG_loop_range
	.dwattr DW$87, DW_AT_low_pc(DW$L$_ResetLoopCheck$2$B)
	.dwattr DW$87, DW_AT_high_pc(DW$L$_ResetLoopCheck$2$E)
	.dwendtag DW$86

	.dwattr DW$85, DW_AT_end_file("utils.c")
	.dwattr DW$85, DW_AT_end_line(0x6e)
	.dwattr DW$85, DW_AT_end_column(0x01)
	.dwendtag DW$85

	.sect	".text"
	.global	_SDBusyCalls

DW$88	.dwtag  DW_TAG_subprogram, DW_AT_name("SDBusyCalls"), DW_AT_symbol_name("_SDBusyCalls")
	.dwattr DW$88, DW_AT_low_pc(_SDBusyCalls)
	.dwattr DW$88, DW_AT_high_pc(0x00)
	.dwattr DW$88, DW_AT_begin_file("utils.c")
	.dwattr DW$88, DW_AT_begin_line(0x75)
	.dwattr DW$88, DW_AT_begin_column(0x06)
	.dwattr DW$88, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$88, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",118,1

;***************************************************************
;* FNAME: _SDBusyCalls                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SDBusyCalls:
        MOVW      DP,#_settings+20
        MOV       AL,@_settings+20      ; |119| 
        MOVW      DP,#_settings+13
        OR        AL,@_settings+13      ; |119| 
        BF        L4,NEQ                ; |119| 
        ; branchcc occurs ; |119| 
        LCR       #_AnalogueInputScaleAllChannels ; |121| 
        ; call occurs [#_AnalogueInputScaleAllChannels] ; |121| 
L4:    
	.dwpsn	"utils.c",123,1
        LRETR
        ; return occurs
	.dwattr DW$88, DW_AT_end_file("utils.c")
	.dwattr DW$88, DW_AT_end_line(0x7b)
	.dwattr DW$88, DW_AT_end_column(0x01)
	.dwendtag DW$88

	.sect	".text"
	.global	_FunctionEnabledSetup

DW$89	.dwtag  DW_TAG_subprogram, DW_AT_name("FunctionEnabledSetup"), DW_AT_symbol_name("_FunctionEnabledSetup")
	.dwattr DW$89, DW_AT_low_pc(_FunctionEnabledSetup)
	.dwattr DW$89, DW_AT_high_pc(0x00)
	.dwattr DW$89, DW_AT_begin_file("utils.c")
	.dwattr DW$89, DW_AT_begin_line(0x7f)
	.dwattr DW$89, DW_AT_begin_column(0x06)
	.dwattr DW$89, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$89, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",128,1

;***************************************************************
;* FNAME: _FunctionEnabledSetup         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_FunctionEnabledSetup:
        MOVB      AL,#1                 ; |130| 
        MOVW      DP,#_function
        MOV       @_function,AL         ; |130| 
        MOVW      DP,#_function+1
        MOV       @_function+1,AL       ; |131| 
        MOVW      DP,#_function+2
        MOV       @_function+2,AL       ; |132| 
        MOVW      DP,#_function+3
        MOV       @_function+3,AL       ; |133| 
        MOVW      DP,#_function+4
        MOV       @_function+4,AL       ; |134| 
        MOVW      DP,#_function+5
        MOV       @_function+5,AL       ; |135| 
        MOVW      DP,#_function+6
        MOV       @_function+6,AL       ; |136| 
        MOVW      DP,#_function+7
        MOV       @_function+7,#0       ; |139| 
	.dwpsn	"utils.c",141,1
        LRETR
        ; return occurs
	.dwattr DW$89, DW_AT_end_file("utils.c")
	.dwattr DW$89, DW_AT_end_line(0x8d)
	.dwattr DW$89, DW_AT_end_column(0x01)
	.dwendtag DW$89

	.sect	".text"
	.global	_SPUUnitReset

DW$90	.dwtag  DW_TAG_subprogram, DW_AT_name("SPUUnitReset"), DW_AT_symbol_name("_SPUUnitReset")
	.dwattr DW$90, DW_AT_low_pc(_SPUUnitReset)
	.dwattr DW$90, DW_AT_high_pc(0x00)
	.dwattr DW$90, DW_AT_begin_file("utils.c")
	.dwattr DW$90, DW_AT_begin_line(0x90)
	.dwattr DW$90, DW_AT_begin_column(0x06)
	.dwattr DW$90, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$90, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",145,1

;***************************************************************
;* FNAME: _SPUUnitReset                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SPUUnitReset:
 eallow             ; Enable accesses to PIE control registers
        MOVB      AL,#47                ; |147| 
        MOV       *(0:0x7029),AL        ; |147| 
 edis               ; Disable accesses to PIE control registers
        SPM       #0
        LCR       #_WatchdogKick        ; |149| 
        ; call occurs [#_WatchdogKick] ; |149| 
        MOVW      DP,#_settings+1
        MOV       @_settings+1,#0       ; |150| 
        MOVW      DP,#_gpd
        OR        @_gpd,#0x0002         ; |151| 
        MOVB      AL,#10                ; |152| 
        LCR       #_NOPDelay            ; |152| 
        ; call occurs [#_NOPDelay] ; |152| 
        MOVW      DP,#_gpd
	.dwpsn	"utils.c",154,0
        AND       @_gpd,#0xfffd         ; |153| 
L5:    
DW$L$_SPUUnitReset$2$B:
	.dwpsn	"utils.c",155,1
        BF        L5,UNC                ; |154| 
        ; branch occurs ; |154| 
DW$L$_SPUUnitReset$2$E:

DW$91	.dwtag  DW_TAG_loop
	.dwattr DW$91, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\utils.asm:L5:1:1471518993")
	.dwattr DW$91, DW_AT_begin_file("utils.c")
	.dwattr DW$91, DW_AT_begin_line(0x9a)
	.dwattr DW$91, DW_AT_end_line(0x9b)
DW$92	.dwtag  DW_TAG_loop_range
	.dwattr DW$92, DW_AT_low_pc(DW$L$_SPUUnitReset$2$B)
	.dwattr DW$92, DW_AT_high_pc(DW$L$_SPUUnitReset$2$E)
	.dwendtag DW$91

	.dwattr DW$90, DW_AT_end_file("utils.c")
	.dwattr DW$90, DW_AT_end_line(0x9b)
	.dwattr DW$90, DW_AT_end_column(0x01)
	.dwendtag DW$90

	.sect	".text"
	.global	_ClockProcessing

DW$93	.dwtag  DW_TAG_subprogram, DW_AT_name("ClockProcessing"), DW_AT_symbol_name("_ClockProcessing")
	.dwattr DW$93, DW_AT_low_pc(_ClockProcessing)
	.dwattr DW$93, DW_AT_high_pc(0x00)
	.dwattr DW$93, DW_AT_begin_file("utils.c")
	.dwattr DW$93, DW_AT_begin_line(0xa2)
	.dwattr DW$93, DW_AT_begin_column(0x06)
	.dwattr DW$93, DW_AT_frame_base[DW_OP_breg20 -18]
	.dwattr DW$93, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",163,1

;***************************************************************
;* FNAME: _ClockProcessing              FR SIZE:  16           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                           12 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_ClockProcessing:
        MOVL      *SP++,XAR1
        MOVW      DP,#_alarms
        MOVL      *SP++,XAR3
        TBIT      @_alarms,#2           ; |168| 
        ADDB      SP,#12
        BF        L10,TC                ; |168| 
        ; branchcc occurs ; |168| 
        MOVW      DP,#_timers+62
        MOV       AL,@_timers+62        ; |171| 
        BF        L10,NEQ               ; |171| 
        ; branchcc occurs ; |171| 
        MOVW      DP,#_clocktime+5
        MOVL      XAR4,#FSL1            ; |173| 
        MOV       AL,@_clocktime+5      ; |173| 
        MOVL      *-SP[2],XAR4          ; |173| 
        MOVW      DP,#_clocktime+6
        MOV       *-SP[3],AL            ; |173| 
        MOVL      XAR3,#_stringbuffer   ; |173| 
        MOV       AL,@_clocktime+6      ; |173| 
        MOVW      DP,#_clocktime+7
        MOV       *-SP[4],AL            ; |173| 
        MOV       AL,@_clocktime+7      ; |173| 
        MOVW      DP,#_clocktime+3
        MOV       *-SP[5],AL            ; |173| 
        MOV       AL,@_clocktime+3      ; |173| 
        MOVW      DP,#_clocktime+2
        MOV       *-SP[6],AL            ; |173| 
        MOV       AL,@_clocktime+2      ; |173| 
        MOVW      DP,#_clocktime+1
        MOV       *-SP[7],AL            ; |173| 
        MOVL      XAR4,XAR3             ; |173| 
        MOV       AL,@_clocktime+1      ; |173| 
        MOVW      DP,#_clocktime+10
        MOV       *-SP[8],AL            ; |173| 
        MOVL      ACC,@_clocktime+10    ; |173| 
        MOVL      *-SP[10],ACC          ; |173| 
        LCR       #_sprintf             ; |173| 
        ; call occurs [#_sprintf] ; |173| 
        MOVL      XAR4,XAR3             ; |175| 
        LCR       #_DebugStringOut      ; |175| 
        ; call occurs [#_DebugStringOut] ; |175| 
        MOVW      DP,#_timers+62
        MOV       @_timers+62,#60000    ; |177| 
        LCR       #_BuildTimeStamp      ; |178| 
        ; call occurs [#_BuildTimeStamp] ; |178| 
        MOVW      DP,#_clocktime+5
        MOVL      XAR1,ACC              ; |178| 
        MOVL      XAR4,#FSL1            ; |180| 
        MOV       AL,@_clocktime+5      ; |180| 
        MOVL      *-SP[2],XAR4          ; |180| 
        MOVW      DP,#_clocktime+6
        MOV       *-SP[3],AL            ; |180| 
        MOV       AL,@_clocktime+6      ; |180| 
        MOVW      DP,#_clocktime+7
        MOV       *-SP[4],AL            ; |180| 
        MOV       AL,@_clocktime+7      ; |180| 
        MOVW      DP,#_clocktime+3
        MOV       *-SP[5],AL            ; |180| 
        MOV       AL,@_clocktime+3      ; |180| 
        MOVW      DP,#_clocktime+2
        MOV       *-SP[6],AL            ; |180| 
        MOV       AL,@_clocktime+2      ; |180| 
        MOVW      DP,#_clocktime+1
        MOV       *-SP[7],AL            ; |180| 
        MOV       AL,@_clocktime+1      ; |180| 
        MOVW      DP,#_clocktime+10
        MOV       *-SP[8],AL            ; |180| 
        MOVL      ACC,@_clocktime+10    ; |180| 
        MOVL      XAR4,XAR3             ; |180| 
        MOVL      *-SP[10],ACC          ; |180| 
        MOVL      *-SP[12],XAR1         ; |180| 
        LCR       #_sprintf             ; |180| 
        ; call occurs [#_sprintf] ; |180| 
        MOVL      XAR4,XAR3             ; |182| 
        LCR       #_DebugStringOut      ; |182| 
        ; call occurs [#_DebugStringOut] ; |182| 
        MOV       AL,#269               ; |184| 
        LCR       #_ClearAlarmEvent     ; |184| 
        ; call occurs [#_ClearAlarmEvent] ; |184| 
        MOVW      DP,#_clocktime+10
        MOVL      XAR6,@_clocktime+10   ; |186| 
        MOVB      ACC,#0
        SUBB      ACC,#1
        CMPL      ACC,XAR6              ; |186| 
        BF        L6,EQ                 ; |186| 
        ; branchcc occurs ; |186| 
        MOVL      ACC,XAR6
        BF        L7,NEQ                ; |186| 
        ; branchcc occurs ; |186| 
L6:    
        MOVW      DP,#_clocktime+10
        MOVL      @_clocktime+10,XAR1   ; |186| 
L7:    
        MOVW      DP,#_clocktime+10
        MOVL      XAR6,@_clocktime+10   ; |187| 
        MOVL      ACC,XAR6              ; |187| 
        CMPL      ACC,XAR1              ; |187| 
        BF        L8,HI                 ; |187| 
        ; branchcc occurs ; |187| 
        MOV       AL,#13184
        MOV       AH,#481
        ADDL      ACC,XAR6
        CMPL      ACC,XAR1              ; |187| 
        BF        L9,HIS                ; |187| 
        ; branchcc occurs ; |187| 
L8:    
        MOVL      XAR4,#FSL2            ; |189| 
        MOVL      *-SP[2],XAR4          ; |189| 
        MOVL      XAR4,XAR3             ; |189| 
        LCR       #_sprintf             ; |189| 
        ; call occurs [#_sprintf] ; |189| 
        MOVL      XAR4,XAR3             ; |189| 
        LCR       #_DebugStringOut      ; |189| 
        ; call occurs [#_DebugStringOut] ; |189| 
        MOV       AL,#269               ; |191| 
        LCR       #_SetAlarmEvent       ; |191| 
        ; call occurs [#_SetAlarmEvent] ; |191| 
        LCR       #_ReloadTimeFromFram  ; |195| 
        ; call occurs [#_ReloadTimeFromFram] ; |195| 
        LCR       #_WriteClockData      ; |196| 
        ; call occurs [#_WriteClockData] ; |196| 
        MOVW      DP,#_clocktime+12
        MOV       @_clocktime+12,#1     ; |197| 
L9:    
        LCR       #_BuildTimeStamp      ; |199| 
        ; call occurs [#_BuildTimeStamp] ; |199| 
        MOVW      DP,#_clocktime+10
        MOVL      @_clocktime+10,ACC    ; |200| 
        LCR       #_SaveTimetoFram      ; |202| 
        ; call occurs [#_SaveTimetoFram] ; |202| 
L10:    
        SUBB      SP,#12
        MOVL      XAR3,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"utils.c",205,1
        LRETR
        ; return occurs
	.dwattr DW$93, DW_AT_end_file("utils.c")
	.dwattr DW$93, DW_AT_end_line(0xcd)
	.dwattr DW$93, DW_AT_end_column(0x01)
	.dwendtag DW$93

	.sect	".text"
	.global	_ReloadTimeFromFram

DW$94	.dwtag  DW_TAG_subprogram, DW_AT_name("ReloadTimeFromFram"), DW_AT_symbol_name("_ReloadTimeFromFram")
	.dwattr DW$94, DW_AT_low_pc(_ReloadTimeFromFram)
	.dwattr DW$94, DW_AT_high_pc(0x00)
	.dwattr DW$94, DW_AT_begin_file("utils.c")
	.dwattr DW$94, DW_AT_begin_line(0xcf)
	.dwattr DW$94, DW_AT_begin_column(0x06)
	.dwattr DW$94, DW_AT_frame_base[DW_OP_breg20 -14]
	.dwattr DW$94, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",208,1

;***************************************************************
;* FNAME: _ReloadTimeFromFram           FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                           10 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_ReloadTimeFromFram:
        MOVL      *SP++,XAR3
        ADDB      SP,#10
        MOVW      DP,#_clocktime+5
        MOVL      XAR4,#FSL3            ; |212| 
        MOV       AL,@_clocktime+5      ; |212| 
        MOVL      *-SP[2],XAR4          ; |212| 
        MOVW      DP,#_clocktime+6
        MOV       *-SP[3],AL            ; |212| 
        MOV       AL,@_clocktime+6      ; |212| 
        MOVL      XAR3,#_stringbuffer   ; |212| 
        MOVW      DP,#_clocktime+7
        MOV       *-SP[4],AL            ; |212| 
        MOV       AL,@_clocktime+7      ; |212| 
        MOVW      DP,#_clocktime+3
        MOV       *-SP[5],AL            ; |212| 
        MOV       AL,@_clocktime+3      ; |212| 
        MOVW      DP,#_clocktime+2
        MOV       *-SP[6],AL            ; |212| 
        MOV       AL,@_clocktime+2      ; |212| 
        MOVW      DP,#_clocktime+1
        MOV       *-SP[7],AL            ; |212| 
        MOVL      XAR4,XAR3             ; |212| 
        MOV       AL,@_clocktime+1      ; |212| 
        MOVW      DP,#_clocktime+10
        MOV       *-SP[8],AL            ; |212| 
        MOVL      ACC,@_clocktime+10    ; |212| 
        MOVL      *-SP[10],ACC          ; |212| 
        LCR       #_sprintf             ; |212| 
        ; call occurs [#_sprintf] ; |212| 
        MOVL      XAR4,XAR3             ; |213| 
        LCR       #_DebugStringOut      ; |213| 
        ; call occurs [#_DebugStringOut] ; |213| 
        MOVB      AL,#0
        MOVB      XAR5,#14              ; |217| 
        MOVL      XAR4,#_clocktime      ; |217| 
        MOV       AH,#32700             ; |217| 
        LCR       #_ReadNVMemory        ; |217| 
        ; call occurs [#_ReadNVMemory] ; |217| 
        MOVW      DP,#_clocktime+5
        MOVL      XAR4,#FSL4            ; |219| 
        MOV       AL,@_clocktime+5      ; |219| 
        MOVL      *-SP[2],XAR4          ; |219| 
        MOVW      DP,#_clocktime+6
        MOV       *-SP[3],AL            ; |219| 
        MOV       AL,@_clocktime+6      ; |219| 
        MOVW      DP,#_clocktime+7
        MOV       *-SP[4],AL            ; |219| 
        MOV       AL,@_clocktime+7      ; |219| 
        MOVW      DP,#_clocktime+3
        MOV       *-SP[5],AL            ; |219| 
        MOV       AL,@_clocktime+3      ; |219| 
        MOVW      DP,#_clocktime+2
        MOV       *-SP[6],AL            ; |219| 
        MOV       AL,@_clocktime+2      ; |219| 
        MOVW      DP,#_clocktime+1
        MOV       *-SP[7],AL            ; |219| 
        MOV       AL,@_clocktime+1      ; |219| 
        MOVW      DP,#_clocktime+10
        MOV       *-SP[8],AL            ; |219| 
        MOVL      XAR4,XAR3             ; |219| 
        MOVL      ACC,@_clocktime+10    ; |219| 
        MOVL      *-SP[10],ACC          ; |219| 
        LCR       #_sprintf             ; |219| 
        ; call occurs [#_sprintf] ; |219| 
        MOVL      XAR4,XAR3             ; |220| 
        LCR       #_DebugStringOut      ; |220| 
        ; call occurs [#_DebugStringOut] ; |220| 
        SUBB      SP,#10
        MOVL      XAR3,*--SP
	.dwpsn	"utils.c",221,1
        LRETR
        ; return occurs
	.dwattr DW$94, DW_AT_end_file("utils.c")
	.dwattr DW$94, DW_AT_end_line(0xdd)
	.dwattr DW$94, DW_AT_end_column(0x01)
	.dwendtag DW$94

	.sect	".text"
	.global	_SaveTimetoFram

DW$95	.dwtag  DW_TAG_subprogram, DW_AT_name("SaveTimetoFram"), DW_AT_symbol_name("_SaveTimetoFram")
	.dwattr DW$95, DW_AT_low_pc(_SaveTimetoFram)
	.dwattr DW$95, DW_AT_high_pc(0x00)
	.dwattr DW$95, DW_AT_begin_file("utils.c")
	.dwattr DW$95, DW_AT_begin_line(0xdf)
	.dwattr DW$95, DW_AT_begin_column(0x06)
	.dwattr DW$95, DW_AT_frame_base[DW_OP_breg20 -14]
	.dwattr DW$95, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",224,1

;***************************************************************
;* FNAME: _SaveTimetoFram               FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                           10 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_SaveTimetoFram:
        MOVL      *SP++,XAR3
        ADDB      SP,#10
        MOVW      DP,#_clocktime+5
        MOVL      XAR4,#FSL5            ; |228| 
        MOV       AL,@_clocktime+5      ; |228| 
        MOVL      *-SP[2],XAR4          ; |228| 
        MOVW      DP,#_clocktime+6
        MOV       *-SP[3],AL            ; |228| 
        MOV       AL,@_clocktime+6      ; |228| 
        MOVL      XAR3,#_stringbuffer   ; |228| 
        MOVW      DP,#_clocktime+7
        MOV       *-SP[4],AL            ; |228| 
        MOV       AL,@_clocktime+7      ; |228| 
        MOVW      DP,#_clocktime+3
        MOV       *-SP[5],AL            ; |228| 
        MOV       AL,@_clocktime+3      ; |228| 
        MOVW      DP,#_clocktime+2
        MOV       *-SP[6],AL            ; |228| 
        MOV       AL,@_clocktime+2      ; |228| 
        MOVW      DP,#_clocktime+1
        MOV       *-SP[7],AL            ; |228| 
        MOVL      XAR4,XAR3             ; |228| 
        MOV       AL,@_clocktime+1      ; |228| 
        MOVW      DP,#_clocktime+10
        MOV       *-SP[8],AL            ; |228| 
        MOVL      ACC,@_clocktime+10    ; |228| 
        MOVL      *-SP[10],ACC          ; |228| 
        LCR       #_sprintf             ; |228| 
        ; call occurs [#_sprintf] ; |228| 
        MOVL      XAR4,XAR3             ; |229| 
        LCR       #_DebugStringOut      ; |229| 
        ; call occurs [#_DebugStringOut] ; |229| 
        MOVB      AL,#0
        MOVB      XAR5,#14              ; |233| 
        MOVL      XAR4,#_clocktime      ; |233| 
        MOV       AH,#32700             ; |233| 
        LCR       #_WriteNVMemory       ; |233| 
        ; call occurs [#_WriteNVMemory] ; |233| 
        SUBB      SP,#10
        MOVL      XAR3,*--SP
	.dwpsn	"utils.c",235,1
        LRETR
        ; return occurs
	.dwattr DW$95, DW_AT_end_file("utils.c")
	.dwattr DW$95, DW_AT_end_line(0xeb)
	.dwattr DW$95, DW_AT_end_column(0x01)
	.dwendtag DW$95

	.sect	".text"
	.global	_FRAMInit

DW$96	.dwtag  DW_TAG_subprogram, DW_AT_name("FRAMInit"), DW_AT_symbol_name("_FRAMInit")
	.dwattr DW$96, DW_AT_low_pc(_FRAMInit)
	.dwattr DW$96, DW_AT_high_pc(0x00)
	.dwattr DW$96, DW_AT_begin_file("utils.c")
	.dwattr DW$96, DW_AT_begin_line(0xef)
	.dwattr DW$96, DW_AT_begin_column(0x06)
	.dwattr DW$96, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$96, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",240,1

;***************************************************************
;* FNAME: _FRAMInit                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_FRAMInit:
        LCR       #_ClearAlarmListandEventLog ; |243| 
        ; call occurs [#_ClearAlarmListandEventLog] ; |243| 
        LCR       #_ClearMSGQueue       ; |244| 
        ; call occurs [#_ClearMSGQueue] ; |244| 
        MOVB      AL,#0
        LCR       #_SetWIOAlarmMask     ; |245| 
        ; call occurs [#_SetWIOAlarmMask] ; |245| 
        MOVB      AL,#0
	.dwpsn	"utils.c",246,0
        SETC      SXM
L11:    
DW$L$_FRAMInit$2$B:
	.dwpsn	"utils.c",247,0
        MOV       ACC,AL                ; |248| 
        MOVL      XAR4,#_offsetA        ; |248| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#0          ; |248| 
        MOV       ACC,AL                ; |249| 
        MOVL      XAR4,#_offsetB        ; |249| 
        ADDL      XAR4,ACC
        ADDB      AL,#1                 ; |246| 
        CMPB      AL,#28                ; |246| 
        MOV       *+XAR4[0],#0          ; |249| 
	.dwpsn	"utils.c",250,0
        BF        L11,LT                ; |246| 
        ; branchcc occurs ; |246| 
DW$L$_FRAMInit$2$E:
        MOVW      DP,#_speedcompcoeffs
        MOV       @_speedcompcoeffs,#0  ; |251| 
        LCR       #_WriteSpeedCompStructtoNVMEM ; |252| 
        ; call occurs [#_WriteSpeedCompStructtoNVMEM] ; |252| 
        MOVB      AL,#0
        LCR       #_ClearMANTable       ; |253| 
        ; call occurs [#_ClearMANTable] ; |253| 
	.dwpsn	"utils.c",254,1
        LRETR
        ; return occurs

DW$97	.dwtag  DW_TAG_loop
	.dwattr DW$97, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\utils.asm:L11:1:1471518993")
	.dwattr DW$97, DW_AT_begin_file("utils.c")
	.dwattr DW$97, DW_AT_begin_line(0xf6)
	.dwattr DW$97, DW_AT_end_line(0xfa)
DW$98	.dwtag  DW_TAG_loop_range
	.dwattr DW$98, DW_AT_low_pc(DW$L$_FRAMInit$2$B)
	.dwattr DW$98, DW_AT_high_pc(DW$L$_FRAMInit$2$E)
	.dwendtag DW$97

	.dwattr DW$96, DW_AT_end_file("utils.c")
	.dwattr DW$96, DW_AT_end_line(0xfe)
	.dwattr DW$96, DW_AT_end_column(0x01)
	.dwendtag DW$96

	.sect	".text"
	.global	_LoadFRAMfromSD

DW$99	.dwtag  DW_TAG_subprogram, DW_AT_name("LoadFRAMfromSD"), DW_AT_symbol_name("_LoadFRAMfromSD")
	.dwattr DW$99, DW_AT_low_pc(_LoadFRAMfromSD)
	.dwattr DW$99, DW_AT_high_pc(0x00)
	.dwattr DW$99, DW_AT_begin_file("utils.c")
	.dwattr DW$99, DW_AT_begin_line(0x103)
	.dwattr DW$99, DW_AT_begin_column(0x06)
	.dwattr DW$99, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$99, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",260,1

;***************************************************************
;* FNAME: _LoadFRAMfromSD               FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_LoadFRAMfromSD:
        MOVW      DP,#_sdsettings+3
        MOVL      *SP++,XAR1
        AND       @_sdsettings+3,#0xffe0 ; |263| 
        LCR       #_PowerUpReadSD       ; |269| 
        ; call occurs [#_PowerUpReadSD] ; |269| 
        MOVW      DP,#_sdsettings+3
        TBIT      @_sdsettings+3,#0     ; |279| 
        BF        L13,NTC               ; |279| 
        ; branchcc occurs ; |279| 
        MOVW      DP,#_wiosettings+6
        MOV       AL,@_wiosettings+6    ; |281| 
        BF        L12,NEQ               ; |281| 
        ; branchcc occurs ; |281| 
        MOVW      DP,#_wiosettings+6
        MOV       @_wiosettings+6,#10000 ; |281| 
L12:    
        LCR       #_WriteAllSensorStructtoNVMEM ; |284| 
        ; call occurs [#_WriteAllSensorStructtoNVMEM] ; |284| 
        LCR       #_WriteConfigStructtoNVMEM ; |285| 
        ; call occurs [#_WriteConfigStructtoNVMEM] ; |285| 
        LCR       #_WriteWIOSettingstoNVMEM ; |286| 
        ; call occurs [#_WriteWIOSettingstoNVMEM] ; |286| 
        LCR       #_WriteDamagemontoNVMEM ; |287| 
        ; call occurs [#_WriteDamagemontoNVMEM] ; |287| 
        LCR       #_WriteSLEMSettingstoNVMEM ; |288| 
        ; call occurs [#_WriteSLEMSettingstoNVMEM] ; |288| 
        LCR       #_WriteCPPSettingstoNVMEM ; |289| 
        ; call occurs [#_WriteCPPSettingstoNVMEM] ; |289| 
        LCR       #_WriteSensorSettingstoNVMEM ; |290| 
        ; call occurs [#_WriteSensorSettingstoNVMEM] ; |290| 
        LCR       #_WriteSpeedCompStructtoNVMEM ; |291| 
        ; call occurs [#_WriteSpeedCompStructtoNVMEM] ; |291| 
        LCR       #_WriteDCModeChecksSettingstoNVMEM ; |292| 
        ; call occurs [#_WriteDCModeChecksSettingstoNVMEM] ; |292| 
        LCR       #_Fram1MagicNumberWrite ; |293| 
        ; call occurs [#_Fram1MagicNumberWrite] ; |293| 
L13:    
        MOVW      DP,#_sdsettings+3
        TBIT      @_sdsettings+3,#1     ; |295| 
        BF        L15,NTC               ; |295| 
        ; branchcc occurs ; |295| 
	.dwpsn	"utils.c",297,0
        MOVB      XAR1,#0
L14:    
DW$L$_LoadFRAMfromSD$7$B:
        MOV       AL,AR1
        LCR       #_WriteSensorStatustoNVMEM ; |297| 
        ; call occurs [#_WriteSensorStatustoNVMEM] ; |297| 
        MOV       AL,AR1                ; |297| 
        ADDB      AL,#1                 ; |297| 
        MOVZ      AR1,AL                ; |297| 
        CMPB      AL,#28                ; |297| 
        BF        L14,LT                ; |297| 
        ; branchcc occurs ; |297| 
DW$L$_LoadFRAMfromSD$7$E:
L15:    
        MOVW      DP,#_sdsettings+3
        TBIT      @_sdsettings+3,#2     ; |299| 
        BF        L17,NTC               ; |299| 
        ; branchcc occurs ; |299| 
	.dwpsn	"utils.c",301,0
        MOVB      XAR1,#0
L16:    
DW$L$_LoadFRAMfromSD$10$B:
	.dwpsn	"utils.c",302,0
        MOV       AL,AR1
        LCR       #_WriteOffsetAtoNVMEM ; |303| 
        ; call occurs [#_WriteOffsetAtoNVMEM] ; |303| 
        MOV       AL,AR1                ; |303| 
        LCR       #_WriteOffsetBtoNVMEM ; |304| 
        ; call occurs [#_WriteOffsetBtoNVMEM] ; |304| 
        MOV       AL,AR1                ; |304| 
        ADDB      AL,#1                 ; |301| 
        MOVZ      AR1,AL                ; |301| 
        CMPB      AL,#28                ; |301| 
	.dwpsn	"utils.c",305,0
        BF        L16,LT                ; |301| 
        ; branchcc occurs ; |301| 
DW$L$_LoadFRAMfromSD$10$E:
L17:    
        MOVW      DP,#_sdsettings+3
        TBIT      @_sdsettings+3,#3     ; |308| 
        BF        L18,NTC               ; |308| 
        ; branchcc occurs ; |308| 
        LCR       #_WriteMANCompTabletoNVMEM ; |308| 
        ; call occurs [#_WriteMANCompTabletoNVMEM] ; |308| 
L18:    
        MOVW      DP,#_sdsettings+3
        TBIT      @_sdsettings+3,#4     ; |311| 
        BF        L19,NTC               ; |311| 
        ; branchcc occurs ; |311| 
        LCR       #_WriteCalibrationtdStructtoNVMEM ; |311| 
        ; call occurs [#_WriteCalibrationtdStructtoNVMEM] ; |311| 
L19:    
        MOVL      XAR1,*--SP
	.dwpsn	"utils.c",319,1
        LRETR
        ; return occurs

DW$100	.dwtag  DW_TAG_loop
	.dwattr DW$100, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\utils.asm:L16:1:1471518993")
	.dwattr DW$100, DW_AT_begin_file("utils.c")
	.dwattr DW$100, DW_AT_begin_line(0x12d)
	.dwattr DW$100, DW_AT_end_line(0x131)
DW$101	.dwtag  DW_TAG_loop_range
	.dwattr DW$101, DW_AT_low_pc(DW$L$_LoadFRAMfromSD$10$B)
	.dwattr DW$101, DW_AT_high_pc(DW$L$_LoadFRAMfromSD$10$E)
	.dwendtag DW$100


DW$102	.dwtag  DW_TAG_loop
	.dwattr DW$102, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\utils.asm:L14:1:1471518993")
	.dwattr DW$102, DW_AT_begin_file("utils.c")
	.dwattr DW$102, DW_AT_begin_line(0x129)
	.dwattr DW$102, DW_AT_end_line(0x129)
DW$103	.dwtag  DW_TAG_loop_range
	.dwattr DW$103, DW_AT_low_pc(DW$L$_LoadFRAMfromSD$7$B)
	.dwattr DW$103, DW_AT_high_pc(DW$L$_LoadFRAMfromSD$7$E)
	.dwendtag DW$102

	.dwattr DW$99, DW_AT_end_file("utils.c")
	.dwattr DW$99, DW_AT_end_line(0x13f)
	.dwattr DW$99, DW_AT_end_column(0x01)
	.dwendtag DW$99

	.sect	".text"
	.global	_WriteConfigStructtoNVMEM

DW$104	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteConfigStructtoNVMEM"), DW_AT_symbol_name("_WriteConfigStructtoNVMEM")
	.dwattr DW$104, DW_AT_low_pc(_WriteConfigStructtoNVMEM)
	.dwattr DW$104, DW_AT_high_pc(0x00)
	.dwattr DW$104, DW_AT_begin_file("utils.c")
	.dwattr DW$104, DW_AT_begin_line(0x143)
	.dwattr DW$104, DW_AT_begin_column(0x06)
	.dwattr DW$104, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$104, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",324,1

;***************************************************************
;* FNAME: _WriteConfigStructtoNVMEM     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WriteConfigStructtoNVMEM:
        MOVB      AL,#0
        MOVB      XAR5,#24              ; |334| 
        MOVL      XAR4,#_config         ; |334| 
        MOV       AH,#28336             ; |334| 
        LCR       #_WriteNVMemory       ; |334| 
        ; call occurs [#_WriteNVMemory] ; |334| 
        MOVW      DP,#_settings+10
        MOV       @_settings+10,#1      ; |336| 
	.dwpsn	"utils.c",337,1
        LRETR
        ; return occurs
	.dwattr DW$104, DW_AT_end_file("utils.c")
	.dwattr DW$104, DW_AT_end_line(0x151)
	.dwattr DW$104, DW_AT_end_column(0x01)
	.dwendtag DW$104

	.sect	".text"
	.global	_ReadConfigStructfromNVMEM

DW$105	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadConfigStructfromNVMEM"), DW_AT_symbol_name("_ReadConfigStructfromNVMEM")
	.dwattr DW$105, DW_AT_low_pc(_ReadConfigStructfromNVMEM)
	.dwattr DW$105, DW_AT_high_pc(0x00)
	.dwattr DW$105, DW_AT_begin_file("utils.c")
	.dwattr DW$105, DW_AT_begin_line(0x155)
	.dwattr DW$105, DW_AT_begin_column(0x06)
	.dwattr DW$105, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$105, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",342,1

;***************************************************************
;* FNAME: _ReadConfigStructfromNVMEM    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadConfigStructfromNVMEM:
        MOVB      AL,#0
        MOVB      XAR5,#24              ; |353| 
        MOVL      XAR4,#_config         ; |353| 
        MOV       AH,#28336             ; |353| 
        LCR       #_ReadNVMemory        ; |353| 
        ; call occurs [#_ReadNVMemory] ; |353| 
        LCR       #_ConfigCheckVal      ; |354| 
        ; call occurs [#_ConfigCheckVal] ; |354| 
	.dwpsn	"utils.c",355,1
        LRETR
        ; return occurs
	.dwattr DW$105, DW_AT_end_file("utils.c")
	.dwattr DW$105, DW_AT_end_line(0x163)
	.dwattr DW$105, DW_AT_end_column(0x01)
	.dwendtag DW$105

	.sect	".text"
	.global	_ConfigCheckVal

DW$106	.dwtag  DW_TAG_subprogram, DW_AT_name("ConfigCheckVal"), DW_AT_symbol_name("_ConfigCheckVal")
	.dwattr DW$106, DW_AT_low_pc(_ConfigCheckVal)
	.dwattr DW$106, DW_AT_high_pc(0x00)
	.dwattr DW$106, DW_AT_begin_file("utils.c")
	.dwattr DW$106, DW_AT_begin_line(0x167)
	.dwattr DW$106, DW_AT_begin_column(0x06)
	.dwattr DW$106, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$106, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",360,1

;***************************************************************
;* FNAME: _ConfigCheckVal               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ConfigCheckVal:
	.dwpsn	"utils.c",363,0
        MOVB      XAR6,#0
L20:    
DW$L$_ConfigCheckVal$2$B:
	.dwpsn	"utils.c",364,0
        MOV       T,AR6
        MOVL      XAR4,#_configchecklist ; |365| 
        MPYB      ACC,T,#6              ; |365| 
        ADDL      XAR4,ACC
        MOVL      XAR5,*+XAR4[4]        ; |365| 
        MOV       AH,*+XAR5[0]          ; |365| 
        CMP       AH,*+XAR4[0]          ; |365| 
        BF        L21,LO                ; |365| 
        ; branchcc occurs ; |365| 
DW$L$_ConfigCheckVal$2$E:
DW$L$_ConfigCheckVal$3$B:
        CMP       AH,*+XAR4[1]          ; |365| 
        BF        L22,LOS               ; |365| 
        ; branchcc occurs ; |365| 
DW$L$_ConfigCheckVal$3$E:
L21:    
DW$L$_ConfigCheckVal$4$B:
        MPYB      ACC,T,#6              ; |367| 
        MOVL      XAR4,#_configchecklist ; |367| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[2]          ; |367| 
        MOVL      XAR4,*+XAR4[4]        ; |367| 
        MOV       *+XAR4[0],AL          ; |367| 
DW$L$_ConfigCheckVal$4$E:
L22:    
DW$L$_ConfigCheckVal$5$B:
        MOV       AL,AR6
        ADDB      AL,#1                 ; |363| 
        MOVZ      AR6,AL                ; |363| 
        CMPB      AL,#8                 ; |363| 
	.dwpsn	"utils.c",369,0
        BF        L20,LT                ; |363| 
        ; branchcc occurs ; |363| 
DW$L$_ConfigCheckVal$5$E:
	.dwpsn	"utils.c",370,1
        LRETR
        ; return occurs

DW$107	.dwtag  DW_TAG_loop
	.dwattr DW$107, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\utils.asm:L20:1:1471518993")
	.dwattr DW$107, DW_AT_begin_file("utils.c")
	.dwattr DW$107, DW_AT_begin_line(0x16b)
	.dwattr DW$107, DW_AT_end_line(0x171)
DW$108	.dwtag  DW_TAG_loop_range
	.dwattr DW$108, DW_AT_low_pc(DW$L$_ConfigCheckVal$2$B)
	.dwattr DW$108, DW_AT_high_pc(DW$L$_ConfigCheckVal$2$E)
DW$109	.dwtag  DW_TAG_loop_range
	.dwattr DW$109, DW_AT_low_pc(DW$L$_ConfigCheckVal$3$B)
	.dwattr DW$109, DW_AT_high_pc(DW$L$_ConfigCheckVal$3$E)
DW$110	.dwtag  DW_TAG_loop_range
	.dwattr DW$110, DW_AT_low_pc(DW$L$_ConfigCheckVal$4$B)
	.dwattr DW$110, DW_AT_high_pc(DW$L$_ConfigCheckVal$4$E)
DW$111	.dwtag  DW_TAG_loop_range
	.dwattr DW$111, DW_AT_low_pc(DW$L$_ConfigCheckVal$5$B)
	.dwattr DW$111, DW_AT_high_pc(DW$L$_ConfigCheckVal$5$E)
	.dwendtag DW$107

	.dwattr DW$106, DW_AT_end_file("utils.c")
	.dwattr DW$106, DW_AT_end_line(0x172)
	.dwattr DW$106, DW_AT_end_column(0x01)
	.dwendtag DW$106

	.sect	".text"
	.global	_FloattoIntRound

DW$112	.dwtag  DW_TAG_subprogram, DW_AT_name("FloattoIntRound"), DW_AT_symbol_name("_FloattoIntRound")
	.dwattr DW$112, DW_AT_low_pc(_FloattoIntRound)
	.dwattr DW$112, DW_AT_high_pc(0x00)
	.dwattr DW$112, DW_AT_begin_file("utils.c")
	.dwattr DW$112, DW_AT_begin_line(0x176)
	.dwattr DW$112, DW_AT_begin_column(0x05)
	.dwattr DW$112, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$112, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",375,1

;***************************************************************
;* FNAME: _FloattoIntRound              FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_FloattoIntRound:
;* AL    assigned to _val
DW$113	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$113, DW_AT_type(*DW$T$16)
	.dwattr DW$113, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        ADDB      SP,#2
        MOVL      XAR1,ACC              ; |375| 
        MOV       AL,#0
        MOV       AH,#0
        MOVL      *-SP[2],ACC           ; |376| 
        MOVL      ACC,XAR1              ; |376| 
        LCR       #FS$$CMP              ; |376| 
        ; call occurs [#FS$$CMP] ; |376| 
        CMPB      AL,#0                 ; |376| 
        BF        L23,GEQ               ; |376| 
        ; branchcc occurs ; |376| 
        MOV       ACC,#32256 << 15
        MOVL      *-SP[2],ACC           ; |377| 
        MOVL      ACC,XAR1              ; |377| 
        LCR       #FS$$SUB              ; |377| 
        ; call occurs [#FS$$SUB] ; |377| 
        BF        L24,UNC               ; |377| 
        ; branch occurs ; |377| 
L23:    
        MOV       ACC,#32256 << 15
        MOVL      *-SP[2],ACC           ; |376| 
        MOVL      ACC,XAR1              ; |376| 
        LCR       #FS$$ADD              ; |376| 
        ; call occurs [#FS$$ADD] ; |376| 
L24:    
        MOVL      XAR1,ACC              ; |376| 
        MOVL      ACC,XAR1              ; |378| 
        LCR       #FS$$TOI              ; |378| 
        ; call occurs [#FS$$TOI] ; |378| 
        SUBB      SP,#2                 ; |378| 
        MOVL      XAR1,*--SP            ; |378| 
	.dwpsn	"utils.c",379,1
        LRETR
        ; return occurs
	.dwattr DW$112, DW_AT_end_file("utils.c")
	.dwattr DW$112, DW_AT_end_line(0x17b)
	.dwattr DW$112, DW_AT_end_column(0x01)
	.dwendtag DW$112

	.sect	".text"
	.global	_CalcUIntChecksum

DW$114	.dwtag  DW_TAG_subprogram, DW_AT_name("CalcUIntChecksum"), DW_AT_symbol_name("_CalcUIntChecksum")
	.dwattr DW$114, DW_AT_low_pc(_CalcUIntChecksum)
	.dwattr DW$114, DW_AT_high_pc(0x00)
	.dwattr DW$114, DW_AT_begin_file("utils.c")
	.dwattr DW$114, DW_AT_begin_line(0x183)
	.dwattr DW$114, DW_AT_begin_column(0x0e)
	.dwattr DW$114, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$114, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",388,1

;***************************************************************
;* FNAME: _CalcUIntChecksum             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CalcUIntChecksum:
;* AR4   assigned to _ptr
DW$115	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$115, DW_AT_type(*DW$T$60)
	.dwattr DW$115, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _len
DW$116	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$116, DW_AT_type(*DW$T$11)
	.dwattr DW$116, DW_AT_location[DW_OP_reg0]
        MOVZ      AR5,AL                ; |388| 
        MOVB      AL,#0
        MOV       AH,AR5                ; |391| 
        BF        L26,EQ                ; |392| 
        ; branchcc occurs ; |392| 
L25:    
DW$L$_CalcUIntChecksum$2$B:
	.dwpsn	"utils.c",393,0
        ADD       AL,*XAR4++            ; |394| 
        SUBB      XAR5,#1               ; |396| 
        MOV       AH,AR5                ; |396| 
	.dwpsn	"utils.c",396,0
        BF        L25,NEQ               ; |396| 
        ; branchcc occurs ; |396| 
DW$L$_CalcUIntChecksum$2$E:
L26:    
	.dwpsn	"utils.c",398,1
        LRETR
        ; return occurs

DW$117	.dwtag  DW_TAG_loop
	.dwattr DW$117, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\utils.asm:L25:1:1471518993")
	.dwattr DW$117, DW_AT_begin_file("utils.c")
	.dwattr DW$117, DW_AT_begin_line(0x188)
	.dwattr DW$117, DW_AT_end_line(0x18c)
DW$118	.dwtag  DW_TAG_loop_range
	.dwattr DW$118, DW_AT_low_pc(DW$L$_CalcUIntChecksum$2$B)
	.dwattr DW$118, DW_AT_high_pc(DW$L$_CalcUIntChecksum$2$E)
	.dwendtag DW$117

	.dwattr DW$114, DW_AT_end_file("utils.c")
	.dwattr DW$114, DW_AT_end_line(0x18e)
	.dwattr DW$114, DW_AT_end_column(0x01)
	.dwendtag DW$114

	.sect	".text"
	.global	_BCDTimetoAscii

DW$119	.dwtag  DW_TAG_subprogram, DW_AT_name("BCDTimetoAscii"), DW_AT_symbol_name("_BCDTimetoAscii")
	.dwattr DW$119, DW_AT_low_pc(_BCDTimetoAscii)
	.dwattr DW$119, DW_AT_high_pc(0x00)
	.dwattr DW$119, DW_AT_begin_file("utils.c")
	.dwattr DW$119, DW_AT_begin_line(0x196)
	.dwattr DW$119, DW_AT_begin_column(0x06)
	.dwattr DW$119, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$119, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",407,1

;***************************************************************
;* FNAME: _BCDTimetoAscii               FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            8 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_BCDTimetoAscii:
;* AR4   assigned to _ptr
DW$120	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$120, DW_AT_type(*DW$T$60)
	.dwattr DW$120, DW_AT_location[DW_OP_reg12]
        MOVZ      AR7,*+XAR4[1]         ; |421| 
        MOVZ      AR6,*+XAR4[2]         ; |421| 
        MOV       AL,*+XAR4[0]          ; |421| 
        ADDB      SP,#8
        MOV       AH,AR7                ; |421| 
        MOVL      XAR4,#FSL6            ; |421| 
        LSR       AH,8                  ; |421| 
        MOVL      *-SP[2],XAR4          ; |421| 
        MOV       *-SP[3],AH            ; |421| 
        AND       AH,AL,#0x00ff         ; |421| 
        LSR       AL,8                  ; |421| 
        MOV       *-SP[4],AH            ; |421| 
        MOV       *-SP[5],AL            ; |421| 
        AND       AL,AR7,#0x00ff        ; |421| 
        MOV       *-SP[6],AL            ; |421| 
        MOV       AL,AR6                ; |421| 
        LSR       AL,8                  ; |421| 
        MOV       *-SP[7],AL            ; |421| 
        AND       AL,AR6,#0x00ff        ; |421| 
        MOV       *-SP[8],AL            ; |421| 
        MOVL      XAR4,#_stringbuffer   ; |421| 
        LCR       #_sprintf             ; |421| 
        ; call occurs [#_sprintf] ; |421| 
        SUBB      SP,#8
	.dwpsn	"utils.c",422,1
        LRETR
        ; return occurs
	.dwattr DW$119, DW_AT_end_file("utils.c")
	.dwattr DW$119, DW_AT_end_line(0x1a6)
	.dwattr DW$119, DW_AT_end_column(0x01)
	.dwendtag DW$119

	.sect	".text"
	.global	_StringInttoByteArray

DW$121	.dwtag  DW_TAG_subprogram, DW_AT_name("StringInttoByteArray"), DW_AT_symbol_name("_StringInttoByteArray")
	.dwattr DW$121, DW_AT_low_pc(_StringInttoByteArray)
	.dwattr DW$121, DW_AT_high_pc(0x00)
	.dwattr DW$121, DW_AT_begin_file("utils.c")
	.dwattr DW$121, DW_AT_begin_line(0x1ac)
	.dwattr DW$121, DW_AT_begin_column(0x06)
	.dwattr DW$121, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$121, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",429,1

;***************************************************************
;* FNAME: _StringInttoByteArray         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_StringInttoByteArray:
;* AR4   assigned to _dest
DW$122	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dest"), DW_AT_symbol_name("_dest")
	.dwattr DW$122, DW_AT_type(*DW$T$65)
	.dwattr DW$122, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _source
DW$123	.dwtag  DW_TAG_formal_parameter, DW_AT_name("source"), DW_AT_symbol_name("_source")
	.dwattr DW$123, DW_AT_type(*DW$T$60)
	.dwattr DW$123, DW_AT_location[DW_OP_reg14]
;* AL    assigned to _len
DW$124	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$124, DW_AT_type(*DW$T$11)
	.dwattr DW$124, DW_AT_location[DW_OP_reg0]
        CMPB      AL,#0                 ; |436| 
        MOV       T,AL                  ; |429| 
        MOV       PH,#0                 ; |436| 
        MOV       PL,#0                 ; |434| 
        MOVB      XAR0,#0
        BF        L31,EQ                ; |436| 
        ; branchcc occurs ; |436| 
L27:    
DW$L$_StringInttoByteArray$2$B:
	.dwpsn	"utils.c",437,0
        MOVL      XAR6,XAR5             ; |438| 
        SETC      SXM
        MOV       AL,PH
        MOV       ACC,AL                ; |438| 
        ADDL      XAR6,ACC
        MOV       AH,*+XAR6[0]          ; |438| 
        BF        L28,NEQ               ; |438| 
        ; branchcc occurs ; |438| 
DW$L$_StringInttoByteArray$2$E:
DW$L$_StringInttoByteArray$3$B:
        MOV       AH,AR0
        BF        L29,NEQ               ; |438| 
        ; branchcc occurs ; |438| 
DW$L$_StringInttoByteArray$3$E:
DW$L$_StringInttoByteArray$4$B:
        MOVB      XAR0,#1               ; |438| 
        BF        L29,UNC               ; |438| 
        ; branch occurs ; |438| 
DW$L$_StringInttoByteArray$4$E:
L28:    
DW$L$_StringInttoByteArray$5$B:
        MOV       AH,AR0
        BF        L29,NEQ               ; |439| 
        ; branchcc occurs ; |439| 
DW$L$_StringInttoByteArray$5$E:
DW$L$_StringInttoByteArray$6$B:
        MOVL      XAR6,XAR5             ; |441| 
        MOV       AL,PH
        MOV       ACC,AL                ; |441| 
        MOVL      XAR7,XAR4             ; |441| 
        ADDL      XAR6,ACC
        MOV       AL,PL                 ; |441| 
        MOV       ACC,AL                ; |441| 
        ADDL      XAR7,ACC
        MOV       AH,*+XAR6[0]          ; |441| 
        LSR       AH,8                  ; |441| 
        MOV       *+XAR7[0],AH          ; |441| 
        MOV       AH,PL                 ; |441| 
        ADDB      AH,#1                 ; |443| 
        MOVL      XAR7,XAR4             ; |443| 
        MOV       PL,AH                 ; |443| 
        MOV       AL,PL                 ; |443| 
        MOV       ACC,AL                ; |443| 
        ADDL      XAR7,ACC
        MOV       AH,*+XAR6[0]          ; |443| 
        ANDB      AH,#0xff              ; |443| 
        MOV       *+XAR7[0],AH          ; |443| 
        BF        L30,UNC               ; |445| 
        ; branch occurs ; |445| 
DW$L$_StringInttoByteArray$6$E:
L29:    
DW$L$_StringInttoByteArray$7$B:
        MOVL      XAR6,XAR4             ; |448| 
        MOV       AL,PL
        MOV       ACC,AL                ; |448| 
        ADDL      XAR6,ACC
        MOV       AH,PL                 ; |448| 
        MOV       *+XAR6[0],#0          ; |448| 
        ADDB      AH,#1                 ; |450| 
        MOVL      XAR6,XAR4             ; |450| 
        MOV       PL,AH                 ; |450| 
        MOV       AL,PL                 ; |450| 
        MOV       ACC,AL                ; |450| 
        ADDL      XAR6,ACC
        MOV       *+XAR6[0],#0          ; |450| 
DW$L$_StringInttoByteArray$7$E:
L30:    
DW$L$_StringInttoByteArray$8$B:
        MOV       AH,PL                 ; |450| 
        ADDB      AH,#1                 ; |451| 
        MOV       PL,AH                 ; |451| 
        MOV       AH,PH
        ADDB      AH,#1                 ; |436| 
        MOV       PH,AH                 ; |436| 
        MOV       AL,T                  ; |436| 
        CMP       AL,PH                 ; |436| 
	.dwpsn	"utils.c",453,0
        BF        L27,HI                ; |436| 
        ; branchcc occurs ; |436| 
DW$L$_StringInttoByteArray$8$E:
L31:    
	.dwpsn	"utils.c",454,1
        LRETR
        ; return occurs

DW$125	.dwtag  DW_TAG_loop
	.dwattr DW$125, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\utils.asm:L27:1:1471518993")
	.dwattr DW$125, DW_AT_begin_file("utils.c")
	.dwattr DW$125, DW_AT_begin_line(0x1b4)
	.dwattr DW$125, DW_AT_end_line(0x1c5)
DW$126	.dwtag  DW_TAG_loop_range
	.dwattr DW$126, DW_AT_low_pc(DW$L$_StringInttoByteArray$2$B)
	.dwattr DW$126, DW_AT_high_pc(DW$L$_StringInttoByteArray$2$E)
DW$127	.dwtag  DW_TAG_loop_range
	.dwattr DW$127, DW_AT_low_pc(DW$L$_StringInttoByteArray$3$B)
	.dwattr DW$127, DW_AT_high_pc(DW$L$_StringInttoByteArray$3$E)
DW$128	.dwtag  DW_TAG_loop_range
	.dwattr DW$128, DW_AT_low_pc(DW$L$_StringInttoByteArray$4$B)
	.dwattr DW$128, DW_AT_high_pc(DW$L$_StringInttoByteArray$4$E)
DW$129	.dwtag  DW_TAG_loop_range
	.dwattr DW$129, DW_AT_low_pc(DW$L$_StringInttoByteArray$5$B)
	.dwattr DW$129, DW_AT_high_pc(DW$L$_StringInttoByteArray$5$E)
DW$130	.dwtag  DW_TAG_loop_range
	.dwattr DW$130, DW_AT_low_pc(DW$L$_StringInttoByteArray$6$B)
	.dwattr DW$130, DW_AT_high_pc(DW$L$_StringInttoByteArray$6$E)
DW$131	.dwtag  DW_TAG_loop_range
	.dwattr DW$131, DW_AT_low_pc(DW$L$_StringInttoByteArray$7$B)
	.dwattr DW$131, DW_AT_high_pc(DW$L$_StringInttoByteArray$7$E)
DW$132	.dwtag  DW_TAG_loop_range
	.dwattr DW$132, DW_AT_low_pc(DW$L$_StringInttoByteArray$8$B)
	.dwattr DW$132, DW_AT_high_pc(DW$L$_StringInttoByteArray$8$E)
	.dwendtag DW$125

	.dwattr DW$121, DW_AT_end_file("utils.c")
	.dwattr DW$121, DW_AT_end_line(0x1c6)
	.dwattr DW$121, DW_AT_end_column(0x01)
	.dwendtag DW$121

	.sect	".text"
	.global	_StringBytetoIntArray

DW$133	.dwtag  DW_TAG_subprogram, DW_AT_name("StringBytetoIntArray"), DW_AT_symbol_name("_StringBytetoIntArray")
	.dwattr DW$133, DW_AT_low_pc(_StringBytetoIntArray)
	.dwattr DW$133, DW_AT_high_pc(0x00)
	.dwattr DW$133, DW_AT_begin_file("utils.c")
	.dwattr DW$133, DW_AT_begin_line(0x1c8)
	.dwattr DW$133, DW_AT_begin_column(0x06)
	.dwattr DW$133, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$133, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",457,1

;***************************************************************
;* FNAME: _StringBytetoIntArray         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_StringBytetoIntArray:
;* AR4   assigned to _dest
DW$134	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dest"), DW_AT_symbol_name("_dest")
	.dwattr DW$134, DW_AT_type(*DW$T$60)
	.dwattr DW$134, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _source
DW$135	.dwtag  DW_TAG_formal_parameter, DW_AT_name("source"), DW_AT_symbol_name("_source")
	.dwattr DW$135, DW_AT_type(*DW$T$65)
	.dwattr DW$135, DW_AT_location[DW_OP_reg14]
;* AL    assigned to _len
DW$136	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$136, DW_AT_type(*DW$T$11)
	.dwattr DW$136, DW_AT_location[DW_OP_reg0]
        CMPB      AL,#0                 ; |464| 
        MOV       T,AL                  ; |457| 
        MOV       PH,#0                 ; |464| 
        MOV       PL,#0                 ; |462| 
        MOVB      XAR0,#0
        BF        L37,EQ                ; |464| 
        ; branchcc occurs ; |464| 
L32:    
DW$L$_StringBytetoIntArray$2$B:
	.dwpsn	"utils.c",465,0
        MOVL      XAR6,XAR5             ; |466| 
        SETC      SXM
        MOV       AL,PL
        MOV       ACC,AL                ; |466| 
        ADDL      XAR6,ACC
        MOV       AH,*+XAR6[0]          ; |466| 
        BF        L33,NEQ               ; |466| 
        ; branchcc occurs ; |466| 
DW$L$_StringBytetoIntArray$2$E:
DW$L$_StringBytetoIntArray$3$B:
        MOV       AH,AR0
        BF        L35,NEQ               ; |466| 
        ; branchcc occurs ; |466| 
DW$L$_StringBytetoIntArray$3$E:
DW$L$_StringBytetoIntArray$4$B:
        MOVB      XAR0,#1               ; |466| 
        BF        L35,UNC               ; |466| 
        ; branch occurs ; |466| 
DW$L$_StringBytetoIntArray$4$E:
L33:    
DW$L$_StringBytetoIntArray$5$B:
        MOV       AH,AR0
        BF        L35,NEQ               ; |467| 
        ; branchcc occurs ; |467| 
DW$L$_StringBytetoIntArray$5$E:
DW$L$_StringBytetoIntArray$6$B:
        MOVL      XAR6,XAR5             ; |469| 
        MOV       AL,PL
        MOV       ACC,AL                ; |469| 
        ADDL      XAR6,ACC
        MOV       ACC,*+XAR6[0] << #8   ; |469| 
        MOVL      XAR6,XAR4             ; |469| 
        MOVZ      AR7,AL                ; |469| 
        MOV       AL,PH                 ; |469| 
        MOV       ACC,AL                ; |469| 
        ADDL      XAR6,ACC
        MOV       AH,PL                 ; |469| 
        MOV       *+XAR6[0],AR7         ; |469| 
        ADDB      AH,#1                 ; |471| 
        MOVL      XAR6,XAR5             ; |471| 
        MOV       PL,AH                 ; |471| 
        MOV       AL,PL                 ; |471| 
        MOV       ACC,AL                ; |471| 
        ADDL      XAR6,ACC
        MOV       AH,*+XAR6[0]          ; |471| 
        OR        AH,AR0                ; |471| 
        BF        L34,NEQ               ; |471| 
        ; branchcc occurs ; |471| 
DW$L$_StringBytetoIntArray$6$E:
DW$L$_StringBytetoIntArray$7$B:
        MOVB      XAR0,#1               ; |471| 
DW$L$_StringBytetoIntArray$7$E:
L34:    
DW$L$_StringBytetoIntArray$8$B:
        MOVL      XAR6,XAR4             ; |472| 
        MOV       AL,PH
        MOV       ACC,AL                ; |472| 
        MOVL      XAR7,XAR5             ; |472| 
        ADDL      XAR6,ACC
        MOV       AL,PL                 ; |472| 
        MOV       ACC,AL                ; |472| 
        ADDL      XAR7,ACC
        MOV       AH,*+XAR7[0]          ; |472| 
        ANDB      AH,#0xff              ; |472| 
        ADD       *+XAR6[0],AH          ; |472| 
        MOV       AH,PL                 ; |472| 
        ADDB      AH,#1                 ; |473| 
        MOV       PL,AH                 ; |473| 
        BF        L36,UNC               ; |474| 
        ; branch occurs ; |474| 
DW$L$_StringBytetoIntArray$8$E:
L35:    
DW$L$_StringBytetoIntArray$9$B:
        MOVL      XAR6,XAR4             ; |477| 
        MOV       AL,PH
        MOV       ACC,AL                ; |477| 
        ADDL      XAR6,ACC
        MOV       *+XAR6[0],#0          ; |477| 
DW$L$_StringBytetoIntArray$9$E:
L36:    
DW$L$_StringBytetoIntArray$10$B:
        MOV       AH,PH
        ADDB      AH,#1                 ; |464| 
        MOV       PH,AH                 ; |464| 
        MOV       AL,T                  ; |464| 
        CMP       AL,PH                 ; |464| 
	.dwpsn	"utils.c",479,0
        BF        L32,HI                ; |464| 
        ; branchcc occurs ; |464| 
DW$L$_StringBytetoIntArray$10$E:
L37:    
	.dwpsn	"utils.c",480,1
        LRETR
        ; return occurs

DW$137	.dwtag  DW_TAG_loop
	.dwattr DW$137, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\utils.asm:L32:1:1471518993")
	.dwattr DW$137, DW_AT_begin_file("utils.c")
	.dwattr DW$137, DW_AT_begin_line(0x1d0)
	.dwattr DW$137, DW_AT_end_line(0x1df)
DW$138	.dwtag  DW_TAG_loop_range
	.dwattr DW$138, DW_AT_low_pc(DW$L$_StringBytetoIntArray$2$B)
	.dwattr DW$138, DW_AT_high_pc(DW$L$_StringBytetoIntArray$2$E)
DW$139	.dwtag  DW_TAG_loop_range
	.dwattr DW$139, DW_AT_low_pc(DW$L$_StringBytetoIntArray$3$B)
	.dwattr DW$139, DW_AT_high_pc(DW$L$_StringBytetoIntArray$3$E)
DW$140	.dwtag  DW_TAG_loop_range
	.dwattr DW$140, DW_AT_low_pc(DW$L$_StringBytetoIntArray$4$B)
	.dwattr DW$140, DW_AT_high_pc(DW$L$_StringBytetoIntArray$4$E)
DW$141	.dwtag  DW_TAG_loop_range
	.dwattr DW$141, DW_AT_low_pc(DW$L$_StringBytetoIntArray$5$B)
	.dwattr DW$141, DW_AT_high_pc(DW$L$_StringBytetoIntArray$5$E)
DW$142	.dwtag  DW_TAG_loop_range
	.dwattr DW$142, DW_AT_low_pc(DW$L$_StringBytetoIntArray$6$B)
	.dwattr DW$142, DW_AT_high_pc(DW$L$_StringBytetoIntArray$6$E)
DW$143	.dwtag  DW_TAG_loop_range
	.dwattr DW$143, DW_AT_low_pc(DW$L$_StringBytetoIntArray$7$B)
	.dwattr DW$143, DW_AT_high_pc(DW$L$_StringBytetoIntArray$7$E)
DW$144	.dwtag  DW_TAG_loop_range
	.dwattr DW$144, DW_AT_low_pc(DW$L$_StringBytetoIntArray$8$B)
	.dwattr DW$144, DW_AT_high_pc(DW$L$_StringBytetoIntArray$8$E)
DW$145	.dwtag  DW_TAG_loop_range
	.dwattr DW$145, DW_AT_low_pc(DW$L$_StringBytetoIntArray$9$B)
	.dwattr DW$145, DW_AT_high_pc(DW$L$_StringBytetoIntArray$9$E)
DW$146	.dwtag  DW_TAG_loop_range
	.dwattr DW$146, DW_AT_low_pc(DW$L$_StringBytetoIntArray$10$B)
	.dwattr DW$146, DW_AT_high_pc(DW$L$_StringBytetoIntArray$10$E)
	.dwendtag DW$137

	.dwattr DW$133, DW_AT_end_file("utils.c")
	.dwattr DW$133, DW_AT_end_line(0x1e0)
	.dwattr DW$133, DW_AT_end_column(0x01)
	.dwendtag DW$133

	.sect	".text"
	.global	_BytetoIntArray

DW$147	.dwtag  DW_TAG_subprogram, DW_AT_name("BytetoIntArray"), DW_AT_symbol_name("_BytetoIntArray")
	.dwattr DW$147, DW_AT_low_pc(_BytetoIntArray)
	.dwattr DW$147, DW_AT_high_pc(0x00)
	.dwattr DW$147, DW_AT_begin_file("utils.c")
	.dwattr DW$147, DW_AT_begin_line(0x1e3)
	.dwattr DW$147, DW_AT_begin_column(0x06)
	.dwattr DW$147, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$147, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",484,1

;***************************************************************
;* FNAME: _BytetoIntArray               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_BytetoIntArray:
;* AR4   assigned to _dest
DW$148	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dest"), DW_AT_symbol_name("_dest")
	.dwattr DW$148, DW_AT_type(*DW$T$60)
	.dwattr DW$148, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _source
DW$149	.dwtag  DW_TAG_formal_parameter, DW_AT_name("source"), DW_AT_symbol_name("_source")
	.dwattr DW$149, DW_AT_type(*DW$T$65)
	.dwattr DW$149, DW_AT_location[DW_OP_reg14]
;* AL    assigned to _len
DW$150	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$150, DW_AT_type(*DW$T$11)
	.dwattr DW$150, DW_AT_location[DW_OP_reg0]
        CMPB      AL,#0                 ; |489| 
        MOV       T,AL                  ; |484| 
        MOV       PH,#0                 ; |489| 
        MOV       PL,#0                 ; |488| 
        BF        L39,EQ                ; |489| 
        ; branchcc occurs ; |489| 
L38:    
DW$L$_BytetoIntArray$2$B:
	.dwpsn	"utils.c",490,0
        SETC      SXM
        MOVL      XAR6,XAR4             ; |491| 
        MOV       AL,PH
        MOVL      XAR7,XAR5             ; |491| 
        MOV       ACC,AL                ; |491| 
        ADDL      XAR6,ACC
        MOV       AL,PL                 ; |491| 
        MOV       ACC,AL                ; |491| 
        ADDL      XAR7,ACC
        MOV       ACC,*+XAR7[0] << #8   ; |491| 
        MOV       AH,PL                 ; |491| 
        ADDB      AH,#1                 ; |493| 
        MOVZ      AR0,AL                ; |491| 
        MOV       PL,AH                 ; |493| 
        MOVL      XAR7,XAR5             ; |493| 
        MOV       *+XAR6[0],AL          ; |491| 
        MOV       AL,PL                 ; |493| 
        MOV       ACC,AL                ; |493| 
        ADDL      XAR7,ACC
        MOV       AH,*+XAR7[0]          ; |493| 
        ANDB      AH,#0xff              ; |493| 
        ADD       AH,AR0                ; |493| 
        MOV       *+XAR6[0],AH          ; |493| 
        MOV       AH,PL                 ; |493| 
        ADDB      AH,#1                 ; |494| 
        MOV       PL,AH                 ; |494| 
        MOV       AH,PH                 ; |494| 
        ADDB      AH,#1                 ; |489| 
        MOV       PH,AH                 ; |489| 
        MOV       AL,T                  ; |489| 
        CMP       AL,PH                 ; |489| 
	.dwpsn	"utils.c",495,0
        BF        L38,HI                ; |489| 
        ; branchcc occurs ; |489| 
DW$L$_BytetoIntArray$2$E:
L39:    
	.dwpsn	"utils.c",496,1
        LRETR
        ; return occurs

DW$151	.dwtag  DW_TAG_loop
	.dwattr DW$151, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\utils.asm:L38:1:1471518993")
	.dwattr DW$151, DW_AT_begin_file("utils.c")
	.dwattr DW$151, DW_AT_begin_line(0x1e9)
	.dwattr DW$151, DW_AT_end_line(0x1ef)
DW$152	.dwtag  DW_TAG_loop_range
	.dwattr DW$152, DW_AT_low_pc(DW$L$_BytetoIntArray$2$B)
	.dwattr DW$152, DW_AT_high_pc(DW$L$_BytetoIntArray$2$E)
	.dwendtag DW$151

	.dwattr DW$147, DW_AT_end_file("utils.c")
	.dwattr DW$147, DW_AT_end_line(0x1f0)
	.dwattr DW$147, DW_AT_end_column(0x01)
	.dwendtag DW$147

	.sect	".text"
	.global	_InttoByteArray

DW$153	.dwtag  DW_TAG_subprogram, DW_AT_name("InttoByteArray"), DW_AT_symbol_name("_InttoByteArray")
	.dwattr DW$153, DW_AT_low_pc(_InttoByteArray)
	.dwattr DW$153, DW_AT_high_pc(0x00)
	.dwattr DW$153, DW_AT_begin_file("utils.c")
	.dwattr DW$153, DW_AT_begin_line(0x1f3)
	.dwattr DW$153, DW_AT_begin_column(0x06)
	.dwattr DW$153, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$153, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",500,1

;***************************************************************
;* FNAME: _InttoByteArray               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_InttoByteArray:
;* AR4   assigned to _dest
DW$154	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dest"), DW_AT_symbol_name("_dest")
	.dwattr DW$154, DW_AT_type(*DW$T$65)
	.dwattr DW$154, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _source
DW$155	.dwtag  DW_TAG_formal_parameter, DW_AT_name("source"), DW_AT_symbol_name("_source")
	.dwattr DW$155, DW_AT_type(*DW$T$60)
	.dwattr DW$155, DW_AT_location[DW_OP_reg14]
;* AL    assigned to _len
DW$156	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$156, DW_AT_type(*DW$T$11)
	.dwattr DW$156, DW_AT_location[DW_OP_reg0]
        CMPB      AL,#0                 ; |505| 
        MOVZ      AR0,AL                ; |500| 
        MOV       PH,#0                 ; |505| 
        MOV       PL,#0                 ; |504| 
        BF        L41,EQ                ; |505| 
        ; branchcc occurs ; |505| 
L40:    
DW$L$_InttoByteArray$2$B:
	.dwpsn	"utils.c",506,0
        SETC      SXM
        MOVL      XAR6,XAR5             ; |507| 
        MOV       AL,PH
        MOVL      XAR7,XAR4             ; |507| 
        MOV       ACC,AL                ; |507| 
        ADDL      XAR6,ACC
        MOV       AL,PL                 ; |507| 
        MOV       ACC,AL                ; |507| 
        ADDL      XAR7,ACC
        MOV       AH,*+XAR6[0]          ; |507| 
        LSR       AH,8                  ; |507| 
        MOV       *+XAR7[0],AH          ; |507| 
        MOV       AH,PL                 ; |507| 
        ADDB      AH,#1                 ; |509| 
        MOVL      XAR7,XAR4             ; |509| 
        MOV       PL,AH                 ; |509| 
        MOV       AL,PL                 ; |509| 
        MOV       ACC,AL                ; |509| 
        ADDL      XAR7,ACC
        MOV       AH,*+XAR6[0]          ; |509| 
        ANDB      AH,#0xff              ; |509| 
        MOV       *+XAR7[0],AH          ; |509| 
        MOV       AH,PL                 ; |509| 
        ADDB      AH,#1                 ; |510| 
        MOV       PL,AH                 ; |510| 
        MOV       AH,PH                 ; |510| 
        ADDB      AH,#1                 ; |505| 
        MOV       PH,AH                 ; |505| 
        MOV       AL,AR0                ; |505| 
        CMP       AL,PH                 ; |505| 
	.dwpsn	"utils.c",511,0
        BF        L40,HI                ; |505| 
        ; branchcc occurs ; |505| 
DW$L$_InttoByteArray$2$E:
L41:    
	.dwpsn	"utils.c",512,1
        LRETR
        ; return occurs

DW$157	.dwtag  DW_TAG_loop
	.dwattr DW$157, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\utils.asm:L40:1:1471518993")
	.dwattr DW$157, DW_AT_begin_file("utils.c")
	.dwattr DW$157, DW_AT_begin_line(0x1f9)
	.dwattr DW$157, DW_AT_end_line(0x1ff)
DW$158	.dwtag  DW_TAG_loop_range
	.dwattr DW$158, DW_AT_low_pc(DW$L$_InttoByteArray$2$B)
	.dwattr DW$158, DW_AT_high_pc(DW$L$_InttoByteArray$2$E)
	.dwendtag DW$157

	.dwattr DW$153, DW_AT_end_file("utils.c")
	.dwattr DW$153, DW_AT_end_line(0x200)
	.dwattr DW$153, DW_AT_end_column(0x01)
	.dwendtag DW$153

	.sect	".text"
	.global	_CalLEDSetup

DW$159	.dwtag  DW_TAG_subprogram, DW_AT_name("CalLEDSetup"), DW_AT_symbol_name("_CalLEDSetup")
	.dwattr DW$159, DW_AT_low_pc(_CalLEDSetup)
	.dwattr DW$159, DW_AT_high_pc(0x00)
	.dwattr DW$159, DW_AT_begin_file("utils.c")
	.dwattr DW$159, DW_AT_begin_line(0x204)
	.dwattr DW$159, DW_AT_begin_column(0x06)
	.dwattr DW$159, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$159, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",517,1

;***************************************************************
;* FNAME: _CalLEDSetup                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CalLEDSetup:
 eallow             ; Enable accesses to PIE control registers
        MOV       AL,*(0:0x70cd)        ; |519| 
        ORB       AL,#0x02              ; |519| 
        MOV       *(0:0x70cd),AL        ; |519| 
 edis               ; Disable accesses to PIE control registers
        MOVW      DP,#_gpd
        OR        @_gpd,#0x0002         ; |521| 
        SPM       #0
        MOVW      DP,#_settings+1
        MOV       @_settings+1,#1       ; |522| 
	.dwpsn	"utils.c",523,1
        LRETR
        ; return occurs
	.dwattr DW$159, DW_AT_end_file("utils.c")
	.dwattr DW$159, DW_AT_end_line(0x20b)
	.dwattr DW$159, DW_AT_end_column(0x01)
	.dwendtag DW$159

	.sect	".text"
	.global	_MasterModeSwitch

DW$160	.dwtag  DW_TAG_subprogram, DW_AT_name("MasterModeSwitch"), DW_AT_symbol_name("_MasterModeSwitch")
	.dwattr DW$160, DW_AT_low_pc(_MasterModeSwitch)
	.dwattr DW$160, DW_AT_high_pc(0x00)
	.dwattr DW$160, DW_AT_begin_file("utils.c")
	.dwattr DW$160, DW_AT_begin_line(0x20f)
	.dwattr DW$160, DW_AT_begin_column(0x06)
	.dwattr DW$160, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$160, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",528,1
DW$161	.dwtag  DW_TAG_variable, DW_AT_name("mastermodeswitchprevious"), DW_AT_symbol_name("_mastermodeswitchprevious$1")
	.dwattr DW$161, DW_AT_type(*DW$T$11)
	.dwattr DW$161, DW_AT_location[DW_OP_addr _mastermodeswitchprevious$1]

;***************************************************************
;* FNAME: _MasterModeSwitch             FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_MasterModeSwitch:
        MOVW      DP,#_timers+43
        MOVL      *SP++,XAR1
        MOV       AL,@_timers+43        ; |532| 
        BF        L48,NEQ               ; |532| 
        ; branchcc occurs ; |532| 
        MOVW      DP,#_timers+43
        MOV       @_timers+43,#10       ; |534| 
        MOVW      DP,#_mastermodeswitchprevious$1
        MOV       AL,@_mastermodeswitchprevious$1 ; |535| 
        CMPB      AL,#1                 ; |535| 
        BF        L42,NEQ               ; |535| 
        ; branchcc occurs ; |535| 
        MOVW      DP,#_gpd
        TBIT      @_gpd,#0              ; |535| 
        BF        L47,NTC               ; |535| 
        ; branchcc occurs ; |535| 
L42:    
        MOVW      DP,#_gpd
        TBIT      @_gpd,#0              ; |536| 
        BF        L46,NTC               ; |536| 
        ; branchcc occurs ; |536| 
        CMPB      AL,#2                 ; |537| 
        BF        L43,NEQ               ; |537| 
        ; branchcc occurs ; |537| 
        MOVW      DP,#_gpd
        TBIT      @_gpd,#0              ; |537| 
        BF        L44,TC                ; |537| 
        ; branchcc occurs ; |537| 
L43:    
        MOVW      DP,#_gpd
        TBIT      @_gpd,#0              ; |546| 
        BF        L48,NTC               ; |546| 
        ; branchcc occurs ; |546| 
        MOVW      DP,#_mastermodeswitchprevious$1
        MOV       @_mastermodeswitchprevious$1,#2 ; |546| 
        BF        L48,UNC               ; |546| 
        ; branch occurs ; |546| 
L44:    
	.dwpsn	"utils.c",539,0
        MOVB      XAR1,#0
L45:    
DW$L$_MasterModeSwitch$10$B:
        MOV       AL,AR1                ; |539| 
        MOVB      AH,#1                 ; |539| 
        LCR       #_SetSensorEnabled    ; |539| 
        ; call occurs [#_SetSensorEnabled] ; |539| 
        ADDB      XAR1,#1               ; |539| 
        MOV       AL,AR1                ; |539| 
        CMPB      AL,#14                ; |539| 
        BF        L45,LO                ; |539| 
        ; branchcc occurs ; |539| 
DW$L$_MasterModeSwitch$10$E:
        MOVW      DP,#_settings+17
        MOVB      AL,#14                ; |542| 
        MOV       @_settings+17,#0      ; |540| 
        MOVW      DP,#_allsensors
        MOV       @_allsensors,AL       ; |542| 
        MOVW      DP,#_allsensors+1
        MOV       @_allsensors+1,AL     ; |543| 
        MOVW      DP,#_allsensors+2
        MOV       @_allsensors+2,#0     ; |544| 
        BF        L48,UNC               ; |545| 
        ; branch occurs ; |545| 
L46:    
        MOVW      DP,#_mastermodeswitchprevious$1
        MOV       @_mastermodeswitchprevious$1,#1 ; |536| 
        BF        L48,UNC               ; |536| 
        ; branch occurs ; |536| 
L47:    
        MOVW      DP,#_settings+17
        MOV       @_settings+17,#1      ; |535| 
L48:    
        MOVL      XAR1,*--SP
	.dwpsn	"utils.c",548,1
        LRETR
        ; return occurs

DW$162	.dwtag  DW_TAG_loop
	.dwattr DW$162, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\utils.asm:L45:1:1471518993")
	.dwattr DW$162, DW_AT_begin_file("utils.c")
	.dwattr DW$162, DW_AT_begin_line(0x21b)
	.dwattr DW$162, DW_AT_end_line(0x21b)
DW$163	.dwtag  DW_TAG_loop_range
	.dwattr DW$163, DW_AT_low_pc(DW$L$_MasterModeSwitch$10$B)
	.dwattr DW$163, DW_AT_high_pc(DW$L$_MasterModeSwitch$10$E)
	.dwendtag DW$162

	.dwattr DW$160, DW_AT_end_file("utils.c")
	.dwattr DW$160, DW_AT_end_line(0x224)
	.dwattr DW$160, DW_AT_end_column(0x01)
	.dwendtag DW$160

	.sect	".text"
	.global	_NOPDelay

DW$164	.dwtag  DW_TAG_subprogram, DW_AT_name("NOPDelay"), DW_AT_symbol_name("_NOPDelay")
	.dwattr DW$164, DW_AT_low_pc(_NOPDelay)
	.dwattr DW$164, DW_AT_high_pc(0x00)
	.dwattr DW$164, DW_AT_begin_file("utils.c")
	.dwattr DW$164, DW_AT_begin_line(0x228)
	.dwattr DW$164, DW_AT_begin_column(0x06)
	.dwattr DW$164, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$164, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",553,1

;***************************************************************
;* FNAME: _NOPDelay                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_NOPDelay:
;* AL    assigned to _val
DW$165	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$165, DW_AT_type(*DW$T$11)
	.dwattr DW$165, DW_AT_location[DW_OP_reg0]
        CMPB      AL,#0                 ; |555| 
        MOVB      XAR4,#0
        BF        L50,EQ                ; |555| 
        ; branchcc occurs ; |555| 
L49:    
DW$L$_NOPDelay$2$B:
	.dwpsn	"utils.c",556,0
 NOP
        ADDB      XAR4,#1               ; |555| 
        CMP       AL,AR4                ; |555| 
	.dwpsn	"utils.c",558,0
        BF        L49,HI                ; |555| 
        ; branchcc occurs ; |555| 
DW$L$_NOPDelay$2$E:
L50:    
        SPM       #0
	.dwpsn	"utils.c",559,1
        LRETR
        ; return occurs

DW$166	.dwtag  DW_TAG_loop
	.dwattr DW$166, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\utils.asm:L49:1:1471518993")
	.dwattr DW$166, DW_AT_begin_file("utils.c")
	.dwattr DW$166, DW_AT_begin_line(0x22b)
	.dwattr DW$166, DW_AT_end_line(0x22e)
DW$167	.dwtag  DW_TAG_loop_range
	.dwattr DW$167, DW_AT_low_pc(DW$L$_NOPDelay$2$B)
	.dwattr DW$167, DW_AT_high_pc(DW$L$_NOPDelay$2$E)
	.dwendtag DW$166

	.dwattr DW$164, DW_AT_end_file("utils.c")
	.dwattr DW$164, DW_AT_end_line(0x22f)
	.dwattr DW$164, DW_AT_end_column(0x01)
	.dwendtag DW$164

	.sect	".text"
	.global	_MonthtoStr

DW$168	.dwtag  DW_TAG_subprogram, DW_AT_name("MonthtoStr"), DW_AT_symbol_name("_MonthtoStr")
	.dwattr DW$168, DW_AT_low_pc(_MonthtoStr)
	.dwattr DW$168, DW_AT_high_pc(0x00)
	.dwattr DW$168, DW_AT_begin_file("utils.c")
	.dwattr DW$168, DW_AT_begin_line(0x234)
	.dwattr DW$168, DW_AT_begin_column(0x06)
	.dwattr DW$168, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$168, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",565,1

;***************************************************************
;* FNAME: _MonthtoStr                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_MonthtoStr:
;* AR4   assigned to _ptrin
DW$169	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptrin"), DW_AT_symbol_name("_ptrin")
	.dwattr DW$169, DW_AT_type(*DW$T$65)
	.dwattr DW$169, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _val
DW$170	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$170, DW_AT_type(*DW$T$10)
	.dwattr DW$170, DW_AT_location[DW_OP_reg0]
        CMPB      AL,#7                 ; |568| 
        BF        L52,GT                ; |568| 
        ; branchcc occurs ; |568| 
        CMPB      AL,#7                 ; |568| 
        BF        L60,EQ                ; |568| 
        ; branchcc occurs ; |568| 
        CMPB      AL,#4                 ; |568| 
        BF        L51,GT                ; |568| 
        ; branchcc occurs ; |568| 
        CMPB      AL,#4                 ; |568| 
        BF        L63,EQ                ; |568| 
        ; branchcc occurs ; |568| 
        CMPB      AL,#1                 ; |568| 
        BF        L66,EQ                ; |568| 
        ; branchcc occurs ; |568| 
        CMPB      AL,#2                 ; |568| 
        BF        L65,EQ                ; |568| 
        ; branchcc occurs ; |568| 
        CMPB      AL,#3                 ; |568| 
        BF        L64,EQ                ; |568| 
        ; branchcc occurs ; |568| 
        BF        L54,UNC               ; |568| 
        ; branch occurs ; |568| 
L51:    
        CMPB      AL,#5                 ; |568| 
        BF        L62,EQ                ; |568| 
        ; branchcc occurs ; |568| 
        CMPB      AL,#6                 ; |568| 
        BF        L61,EQ                ; |568| 
        ; branchcc occurs ; |568| 
        BF        L54,UNC               ; |568| 
        ; branch occurs ; |568| 
L52:    
        CMPB      AL,#16                ; |568| 
        BF        L53,GT                ; |568| 
        ; branchcc occurs ; |568| 
        CMPB      AL,#16                ; |568| 
        BF        L57,EQ                ; |568| 
        ; branchcc occurs ; |568| 
        CMPB      AL,#8                 ; |568| 
        BF        L59,EQ                ; |568| 
        ; branchcc occurs ; |568| 
        CMPB      AL,#9                 ; |568| 
        BF        L58,EQ                ; |568| 
        ; branchcc occurs ; |568| 
        BF        L54,UNC               ; |568| 
        ; branch occurs ; |568| 
L53:    
        CMPB      AL,#17                ; |568| 
        BF        L56,EQ                ; |568| 
        ; branchcc occurs ; |568| 
        CMPB      AL,#18                ; |568| 
        BF        L55,EQ                ; |568| 
        ; branchcc occurs ; |568| 
L54:    
        MOVL      XAR5,#_monthlst+48    ; |608| 
        BF        L67,UNC               ; |609| 
        ; branch occurs ; |609| 
L55:    
        MOVL      XAR5,#_monthlst+44    ; |604| 
        BF        L67,UNC               ; |605| 
        ; branch occurs ; |605| 
L56:    
        MOVL      XAR5,#_monthlst+40    ; |601| 
        BF        L67,UNC               ; |602| 
        ; branch occurs ; |602| 
L57:    
        MOVL      XAR5,#_monthlst+36    ; |598| 
        BF        L67,UNC               ; |599| 
        ; branch occurs ; |599| 
L58:    
        MOVL      XAR5,#_monthlst+32    ; |595| 
        BF        L67,UNC               ; |596| 
        ; branch occurs ; |596| 
L59:    
        MOVL      XAR5,#_monthlst+28    ; |592| 
        BF        L67,UNC               ; |593| 
        ; branch occurs ; |593| 
L60:    
        MOVL      XAR5,#_monthlst+24    ; |589| 
        BF        L67,UNC               ; |590| 
        ; branch occurs ; |590| 
L61:    
        MOVL      XAR5,#_monthlst+20    ; |586| 
        BF        L67,UNC               ; |587| 
        ; branch occurs ; |587| 
L62:    
        MOVL      XAR5,#_monthlst+16    ; |583| 
        BF        L67,UNC               ; |584| 
        ; branch occurs ; |584| 
L63:    
        MOVL      XAR5,#_monthlst+12    ; |580| 
        BF        L67,UNC               ; |581| 
        ; branch occurs ; |581| 
L64:    
        MOVL      XAR5,#_monthlst+8     ; |577| 
        BF        L67,UNC               ; |578| 
        ; branch occurs ; |578| 
L65:    
        MOVL      XAR5,#_monthlst+4     ; |574| 
        BF        L67,UNC               ; |575| 
        ; branch occurs ; |575| 
L66:    
        MOVL      XAR5,#_monthlst       ; |571| 
L67:    
        SETC      SXM
	.dwpsn	"utils.c",612,0
        MOVB      AL,#0
L68:    
DW$L$_MonthtoStr$33$B:
	.dwpsn	"utils.c",613,0
        MOVL      XAR6,XAR5             ; |614| 
        MOV       ACC,AL                ; |614| 
        ADDL      XAR6,ACC
        MOVZ      AR7,*+XAR6[0]         ; |614| 
        MOVL      XAR6,XAR4             ; |614| 
        MOV       ACC,AL                ; |614| 
        ADDL      XAR6,ACC
        ADDB      AL,#1                 ; |612| 
        CMPB      AL,#3                 ; |612| 
        MOV       *+XAR6[0],AR7         ; |614| 
	.dwpsn	"utils.c",615,0
        BF        L68,LT                ; |612| 
        ; branchcc occurs ; |612| 
DW$L$_MonthtoStr$33$E:
        MOV       *+XAR4[3],#0          ; |616| 
	.dwpsn	"utils.c",618,1
        LRETR
        ; return occurs

DW$171	.dwtag  DW_TAG_loop
	.dwattr DW$171, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\utils.asm:L68:1:1471518993")
	.dwattr DW$171, DW_AT_begin_file("utils.c")
	.dwattr DW$171, DW_AT_begin_line(0x264)
	.dwattr DW$171, DW_AT_end_line(0x267)
DW$172	.dwtag  DW_TAG_loop_range
	.dwattr DW$172, DW_AT_low_pc(DW$L$_MonthtoStr$33$B)
	.dwattr DW$172, DW_AT_high_pc(DW$L$_MonthtoStr$33$E)
	.dwendtag DW$171

	.dwattr DW$168, DW_AT_end_file("utils.c")
	.dwattr DW$168, DW_AT_end_line(0x26a)
	.dwattr DW$168, DW_AT_end_column(0x01)
	.dwendtag DW$168

	.sect	".text"
	.global	_InputNumtoString

DW$173	.dwtag  DW_TAG_subprogram, DW_AT_name("InputNumtoString"), DW_AT_symbol_name("_InputNumtoString")
	.dwattr DW$173, DW_AT_low_pc(_InputNumtoString)
	.dwattr DW$173, DW_AT_high_pc(0x00)
	.dwattr DW$173, DW_AT_begin_file("utils.c")
	.dwattr DW$173, DW_AT_begin_line(0x26f)
	.dwattr DW$173, DW_AT_begin_column(0x06)
	.dwattr DW$173, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$173, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",624,1

;***************************************************************
;* FNAME: _InputNumtoString             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_InputNumtoString:
;* AR4   assigned to _ptrin
DW$174	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptrin"), DW_AT_symbol_name("_ptrin")
	.dwattr DW$174, DW_AT_type(*DW$T$65)
	.dwattr DW$174, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _num
DW$175	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num"), DW_AT_symbol_name("_num")
	.dwattr DW$175, DW_AT_type(*DW$T$10)
	.dwattr DW$175, DW_AT_location[DW_OP_reg0]
        MOV       AH,AL                 ; |628| 
        LSR       AH,15                 ; |628| 
        ADD       AH,AL                 ; |628| 
        AND       AH,AH,#0xfffe         ; |628| 
        CMP       AH,AL                 ; |628| 
        BF        L69,EQ                ; |628| 
        ; branchcc occurs ; |628| 
        MOVB      AH,#66                ; |628| 
        BF        L70,UNC               ; |628| 
        ; branch occurs ; |628| 
L69:    
        MOVB      AH,#65                ; |628| 
L70:    
        CMPB      AL,#18                ; |629| 
        MOV       *+XAR4[2],AH          ; |628| 
        BF        L71,LT                ; |629| 
        ; branchcc occurs ; |629| 
        MOV       AH,AL                 ; |639| 
        ADDB      AH,#-18
        LSR       AH,15                 ; |639| 
        ADD       AH,AL                 ; |639| 
        ADDB      AH,#-18
        ASR       AH,1                  ; |639| 
        ADDB      AH,#48                ; |639| 
        MOV       *+XAR4[0],#49         ; |638| 
        BF        L72,UNC               ; |639| 
        ; branch occurs ; |639| 
L71:    
        MOV       AH,AL                 ; |634| 
        LSR       AH,15                 ; |634| 
        ADD       AH,AL                 ; |634| 
        ASR       AH,1                  ; |634| 
        ADDB      AH,#49                ; |634| 
        MOV       *+XAR4[0],#32         ; |633| 
L72:    
        MOV       *+XAR4[1],AH          ; |634| 
        MOV       *+XAR4[3],#0          ; |641| 
	.dwpsn	"utils.c",642,1
        LRETR
        ; return occurs
	.dwattr DW$173, DW_AT_end_file("utils.c")
	.dwattr DW$173, DW_AT_end_line(0x282)
	.dwattr DW$173, DW_AT_end_column(0x01)
	.dwendtag DW$173

	.sect	".text"
	.global	_DateTimetoInt

DW$176	.dwtag  DW_TAG_subprogram, DW_AT_name("DateTimetoInt"), DW_AT_symbol_name("_DateTimetoInt")
	.dwattr DW$176, DW_AT_low_pc(_DateTimetoInt)
	.dwattr DW$176, DW_AT_high_pc(0x00)
	.dwattr DW$176, DW_AT_begin_file("utils.c")
	.dwattr DW$176, DW_AT_begin_line(0x289)
	.dwattr DW$176, DW_AT_begin_column(0x06)
	.dwattr DW$176, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$176, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",650,1

;***************************************************************
;* FNAME: _DateTimetoInt                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_DateTimetoInt:
        MOVW      DP,#_clocktime+7
        MOV       ACC,@_clocktime+7 << #8 ; |651| 
        MOVW      DP,#_livetime
        MOV       @_livetime,AL         ; |651| 
        MOVW      DP,#_clocktime+6
        MOV       AL,@_clocktime+6      ; |652| 
        ANDB      AL,#0xff              ; |652| 
        MOVW      DP,#_livetime
        ADD       @_livetime,AL         ; |652| 
        MOVW      DP,#_clocktime+5
        MOV       ACC,@_clocktime+5 << #8 ; |653| 
        MOVW      DP,#_livetime+1
        MOV       @_livetime+1,AL       ; |653| 
        MOVW      DP,#_clocktime+3
        MOV       AL,@_clocktime+3      ; |654| 
        ANDB      AL,#0xff              ; |654| 
        MOVW      DP,#_livetime+1
        ADD       @_livetime+1,AL       ; |654| 
        MOVW      DP,#_clocktime+2
        MOV       ACC,@_clocktime+2 << #8 ; |655| 
        MOVW      DP,#_livetime+2
        MOV       @_livetime+2,AL       ; |655| 
        MOVW      DP,#_clocktime+1
        MOVZ      AR6,@_clocktime+1     ; |656| 
        MOVW      DP,#_livetime+2
        AND       AH,AR6,#0x00ff        ; |656| 
        ADD       @_livetime+2,AH       ; |656| 
        MOVW      DP,#_livetime
        MOV       AH,@_livetime         ; |659| 
        MOVW      DP,#_logtime
        MOV       @_logtime,AH          ; |659| 
        MOVW      DP,#_livetime+1
        MOV       AH,@_livetime+1       ; |660| 
        MOVW      DP,#_logtime+1
        MOV       @_logtime+1,AH        ; |660| 
        MOVW      DP,#_logtime+2
        MOV       @_logtime+2,AL        ; |662| 
        AND       AL,AR6,#0x00f0        ; |663| 
        MOVW      DP,#_logtime+2
        ADD       @_logtime+2,AL        ; |663| 
	.dwpsn	"utils.c",665,1
        LRETR
        ; return occurs
	.dwattr DW$176, DW_AT_end_file("utils.c")
	.dwattr DW$176, DW_AT_end_line(0x299)
	.dwattr DW$176, DW_AT_end_column(0x01)
	.dwendtag DW$176

	.sect	".text"
	.global	_YearMonthUpdate

DW$177	.dwtag  DW_TAG_subprogram, DW_AT_name("YearMonthUpdate"), DW_AT_symbol_name("_YearMonthUpdate")
	.dwattr DW$177, DW_AT_low_pc(_YearMonthUpdate)
	.dwattr DW$177, DW_AT_high_pc(0x00)
	.dwattr DW$177, DW_AT_begin_file("utils.c")
	.dwattr DW$177, DW_AT_begin_line(0x29c)
	.dwattr DW$177, DW_AT_begin_column(0x06)
	.dwattr DW$177, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$177, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",669,1

;***************************************************************
;* FNAME: _YearMonthUpdate              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_YearMonthUpdate:
        MOVW      DP,#_livetime
        MOV       AL,@_livetime         ; |670| 
        MOV       AH,AL                 ; |670| 
        MOVW      DP,#_clocktime+7
        LSR       AH,8                  ; |670| 
        MOV       @_clocktime+7,AH      ; |670| 
        ANDB      AL,#255               ; |671| 
        MOVW      DP,#_clocktime+6
        MOV       @_clocktime+6,AL      ; |671| 
        LCR       #_WriteYrMnthData     ; |672| 
        ; call occurs [#_WriteYrMnthData] ; |672| 
	.dwpsn	"utils.c",673,1
        LRETR
        ; return occurs
	.dwattr DW$177, DW_AT_end_file("utils.c")
	.dwattr DW$177, DW_AT_end_line(0x2a1)
	.dwattr DW$177, DW_AT_end_column(0x01)
	.dwendtag DW$177

	.sect	".text"
	.global	_DateHoursUpdate

DW$178	.dwtag  DW_TAG_subprogram, DW_AT_name("DateHoursUpdate"), DW_AT_symbol_name("_DateHoursUpdate")
	.dwattr DW$178, DW_AT_low_pc(_DateHoursUpdate)
	.dwattr DW$178, DW_AT_high_pc(0x00)
	.dwattr DW$178, DW_AT_begin_file("utils.c")
	.dwattr DW$178, DW_AT_begin_line(0x2a4)
	.dwattr DW$178, DW_AT_begin_column(0x06)
	.dwattr DW$178, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$178, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",677,1

;***************************************************************
;* FNAME: _DateHoursUpdate              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_DateHoursUpdate:
        MOVW      DP,#_livetime+1
        MOV       AL,@_livetime+1       ; |678| 
        MOV       AH,AL                 ; |678| 
        MOVW      DP,#_clocktime+5
        LSR       AH,8                  ; |678| 
        MOV       @_clocktime+5,AH      ; |678| 
        ANDB      AL,#255               ; |679| 
        MOVW      DP,#_clocktime+3
        MOV       @_clocktime+3,AL      ; |679| 
        LCR       #_WriteDateHrsData    ; |680| 
        ; call occurs [#_WriteDateHrsData] ; |680| 
	.dwpsn	"utils.c",681,1
        LRETR
        ; return occurs
	.dwattr DW$178, DW_AT_end_file("utils.c")
	.dwattr DW$178, DW_AT_end_line(0x2a9)
	.dwattr DW$178, DW_AT_end_column(0x01)
	.dwendtag DW$178

	.sect	".text"
	.global	_MinsSecsUpdate

DW$179	.dwtag  DW_TAG_subprogram, DW_AT_name("MinsSecsUpdate"), DW_AT_symbol_name("_MinsSecsUpdate")
	.dwattr DW$179, DW_AT_low_pc(_MinsSecsUpdate)
	.dwattr DW$179, DW_AT_high_pc(0x00)
	.dwattr DW$179, DW_AT_begin_file("utils.c")
	.dwattr DW$179, DW_AT_begin_line(0x2ac)
	.dwattr DW$179, DW_AT_begin_column(0x06)
	.dwattr DW$179, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$179, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",685,1

;***************************************************************
;* FNAME: _MinsSecsUpdate               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_MinsSecsUpdate:
        MOVW      DP,#_livetime+2
        MOV       AL,@_livetime+2       ; |686| 
        MOV       AH,AL                 ; |686| 
        MOVW      DP,#_clocktime+2
        LSR       AH,8                  ; |686| 
        MOV       @_clocktime+2,AH      ; |686| 
        ANDB      AL,#255               ; |687| 
        MOVW      DP,#_clocktime+1
        MOV       @_clocktime+1,AL      ; |687| 
        LCR       #_WriteMinsSecsData   ; |688| 
        ; call occurs [#_WriteMinsSecsData] ; |688| 
	.dwpsn	"utils.c",689,1
        LRETR
        ; return occurs
	.dwattr DW$179, DW_AT_end_file("utils.c")
	.dwattr DW$179, DW_AT_end_line(0x2b1)
	.dwattr DW$179, DW_AT_end_column(0x01)
	.dwendtag DW$179

	.sect	".text"
	.global	_RPMCalc

DW$180	.dwtag  DW_TAG_subprogram, DW_AT_name("RPMCalc"), DW_AT_symbol_name("_RPMCalc")
	.dwattr DW$180, DW_AT_low_pc(_RPMCalc)
	.dwattr DW$180, DW_AT_high_pc(0x00)
	.dwattr DW$180, DW_AT_begin_file("utils.c")
	.dwattr DW$180, DW_AT_begin_line(0x2b3)
	.dwattr DW$180, DW_AT_begin_column(0x06)
	.dwattr DW$180, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$180, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",692,1

;***************************************************************
;* FNAME: _RPMCalc                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_RPMCalc:
        LCR       #_PulseRPMCalc        ; |695| 
        ; call occurs [#_PulseRPMCalc] ; |695| 
        MOVW      DP,#_rpmdata+1
        MOV       AL,@_rpmdata+1        ; |696| 
        CMPB      AL,#1                 ; |696| 
        BF        L73,EQ                ; |696| 
        ; branchcc occurs ; |696| 
        MOVW      DP,#_timers+53
        MOV       AL,@_timers+53        ; |702| 
        BF        L74,NEQ               ; |702| 
        ; branchcc occurs ; |702| 
        MOVW      DP,#_rpmdata+3
        MOV       @_rpmdata+3,#0        ; |705| 
        MOVW      DP,#_rpmdata+2
        MOV       @_rpmdata+2,#0        ; |706| 
        MOVW      DP,#_rpmdata
        MOV       @_rpmdata,#0          ; |708| 
        MOVW      DP,#_settings+31
        MOV       AL,@_settings+31      ; |709| 
        CMPB      AL,#1                 ; |709| 
        BF        L74,NEQ               ; |709| 
        ; branchcc occurs ; |709| 
        LCR       #_DebugAnaUpdate      ; |709| 
        ; call occurs [#_DebugAnaUpdate] ; |709| 
        BF        L74,UNC               ; |709| 
        ; branch occurs ; |709| 
L73:    
        MOVW      DP,#_rpmdata+1
        MOV       @_rpmdata+1,#0        ; |699| 
        MOVW      DP,#_timers+53
        MOV       @_timers+53,#1200     ; |700| 
        NOP
        NOP
L74:    
	.dwpsn	"utils.c",711,1
        LRETR
        ; return occurs
	.dwattr DW$180, DW_AT_end_file("utils.c")
	.dwattr DW$180, DW_AT_end_line(0x2c7)
	.dwattr DW$180, DW_AT_end_column(0x01)
	.dwendtag DW$180

	.sect	".text"
	.global	_DebugAnaUpdate

DW$181	.dwtag  DW_TAG_subprogram, DW_AT_name("DebugAnaUpdate"), DW_AT_symbol_name("_DebugAnaUpdate")
	.dwattr DW$181, DW_AT_low_pc(_DebugAnaUpdate)
	.dwattr DW$181, DW_AT_high_pc(0x00)
	.dwattr DW$181, DW_AT_begin_file("utils.c")
	.dwattr DW$181, DW_AT_begin_line(0x2cd)
	.dwattr DW$181, DW_AT_begin_column(0x06)
	.dwattr DW$181, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$181, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",718,1

;***************************************************************
;* FNAME: _DebugAnaUpdate               FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_DebugAnaUpdate:
        MOVW      DP,#_settings+31
        MOV       AL,@_settings+31      ; |722| 
        ADDB      SP,#2
        CMPB      AL,#1                 ; |722| 
        BF        L76,NEQ               ; |722| 
        ; branchcc occurs ; |722| 
        MOVW      DP,#_timers+64
        MOV       AL,@_timers+64        ; |724| 
        BF        L76,NEQ               ; |724| 
        ; branchcc occurs ; |724| 
        MOVB      AL,#0
        LCR       #_GetModalRPM         ; |726| 
        ; call occurs [#_GetModalRPM] ; |726| 
        CMPB      AL,#0                 ; |726| 
        BF        L75,EQ                ; |726| 
        ; branchcc occurs ; |726| 
        MOVW      DP,#_allsensors+16
        OR        @_allsensors+16,#0x0001 ; |729| 
L75:    
        LCR       #U$$TOFS              ; |732| 
        ; call occurs [#U$$TOFS] ; |732| 
        MOVL      *-SP[2],ACC           ; |732| 
        MOV       AL,#0
        MOV       AH,#17008
        LCR       #FS$$DIV              ; |732| 
        ; call occurs [#FS$$DIV] ; |732| 
        MOVL      XAR6,ACC              ; |732| 
        MOV       AL,#0
        MOV       AH,#17224
        MOVL      *-SP[2],ACC           ; |732| 
        MOVL      ACC,XAR6              ; |732| 
        LCR       #FS$$MPY              ; |732| 
        ; call occurs [#FS$$MPY] ; |732| 
        LCR       #FS$$TOU              ; |732| 
        ; call occurs [#FS$$TOU] ; |732| 
        MOVW      DP,#_timers+64
        MOV       @_timers+64,AL        ; |732| 
        NOP
L76:    
        SUBB      SP,#2
	.dwpsn	"utils.c",735,1
        LRETR
        ; return occurs
	.dwattr DW$181, DW_AT_end_file("utils.c")
	.dwattr DW$181, DW_AT_end_line(0x2df)
	.dwattr DW$181, DW_AT_end_column(0x01)
	.dwendtag DW$181

	.sect	".text"
	.global	_UpdateNonVolSafeCheck

DW$182	.dwtag  DW_TAG_subprogram, DW_AT_name("UpdateNonVolSafeCheck"), DW_AT_symbol_name("_UpdateNonVolSafeCheck")
	.dwattr DW$182, DW_AT_low_pc(_UpdateNonVolSafeCheck)
	.dwattr DW$182, DW_AT_high_pc(0x00)
	.dwattr DW$182, DW_AT_begin_file("utils.c")
	.dwattr DW$182, DW_AT_begin_line(0x2e1)
	.dwattr DW$182, DW_AT_begin_column(0x06)
	.dwattr DW$182, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$182, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",738,1

;***************************************************************
;* FNAME: _UpdateNonVolSafeCheck        FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_UpdateNonVolSafeCheck:
        MOVW      DP,#_settings+2
        MOVL      *SP++,XAR1
        MOV       AL,@_settings+2       ; |743| 
        BF        L90,EQ                ; |743| 
        ; branchcc occurs ; |743| 
        CMPB      AL,#7                 ; |743| 
        BF        L77,GT                ; |743| 
        ; branchcc occurs ; |743| 
        CMPB      AL,#7                 ; |743| 
        BF        L83,EQ                ; |743| 
        ; branchcc occurs ; |743| 
        CMPB      AL,#1                 ; |743| 
        BF        L87,EQ                ; |743| 
        ; branchcc occurs ; |743| 
        CMPB      AL,#2                 ; |743| 
        BF        L85,EQ                ; |743| 
        ; branchcc occurs ; |743| 
        CMPB      AL,#3                 ; |743| 
        BF        L84,EQ                ; |743| 
        ; branchcc occurs ; |743| 
        BF        L89,UNC               ; |743| 
        ; branch occurs ; |743| 
L77:    
        CMPB      AL,#8                 ; |743| 
        BF        L80,EQ                ; |743| 
        ; branchcc occurs ; |743| 
        CMPB      AL,#9                 ; |743| 
        BF        L78,EQ                ; |743| 
        ; branchcc occurs ; |743| 
        CMPB      AL,#10                ; |743| 
        BF        L89,NEQ               ; |743| 
        ; branchcc occurs ; |743| 
        LCR       #_WriteSpeedCompStructtoNVMEM ; |772| 
        ; call occurs [#_WriteSpeedCompStructtoNVMEM] ; |772| 
        BF        L89,UNC               ; |773| 
        ; branch occurs ; |773| 
L78:    
	.dwpsn	"utils.c",766,0
        MOVB      XAR1,#0
L79:    
DW$L$_UpdateNonVolSafeCheck$13$B:
        MOV       AL,AR1                ; |766| 
        LCR       #_WriteOffsetBtoNVMEM ; |766| 
        ; call occurs [#_WriteOffsetBtoNVMEM] ; |766| 
        ADDB      XAR1,#1               ; |766| 
        MOV       AL,AR1                ; |766| 
        CMPB      AL,#28                ; |766| 
        BF        L79,LO                ; |766| 
        ; branchcc occurs ; |766| 
DW$L$_UpdateNonVolSafeCheck$13$E:
        BF        L82,UNC               ; |766| 
        ; branch occurs ; |766| 
L80:    
	.dwpsn	"utils.c",760,0
        MOVB      XAR1,#0
L81:    
DW$L$_UpdateNonVolSafeCheck$16$B:
        MOV       AL,AR1                ; |760| 
        LCR       #_WriteOffsetAtoNVMEM ; |760| 
        ; call occurs [#_WriteOffsetAtoNVMEM] ; |760| 
        ADDB      XAR1,#1               ; |760| 
        MOV       AL,AR1                ; |760| 
        CMPB      AL,#28                ; |760| 
        BF        L81,LO                ; |760| 
        ; branchcc occurs ; |760| 
DW$L$_UpdateNonVolSafeCheck$16$E:
L82:    
        MOVW      DP,#_settings+10
        MOV       @_settings+10,#4      ; |761| 
        BF        L86,UNC               ; |764| 
        ; branch occurs ; |764| 
L83:    
        LCR       #_WriteMANCompTabletoNVMEM ; |775| 
        ; call occurs [#_WriteMANCompTabletoNVMEM] ; |775| 
        BF        L89,UNC               ; |776| 
        ; branch occurs ; |776| 
L84:    
        LCR       #_SaveSDSettings      ; |756| 
        ; call occurs [#_SaveSDSettings] ; |756| 
        MOVW      DP,#_settings+2
        MOV       @_settings+2,#0       ; |757| 
        BF        L89,UNC               ; |758| 
        ; branch occurs ; |758| 
L85:    
        LCR       #_SaveSafeStruct2     ; |751| 
        ; call occurs [#_SaveSafeStruct2] ; |751| 
L86:    
        MOVW      DP,#_settings+2
        MOV       @_settings+2,#0       ; |752| 
        BF        L88,UNC               ; |754| 
        ; branch occurs ; |754| 
L87:    
        LCR       #_SaveSafeStruct1     ; |746| 
        ; call occurs [#_SaveSafeStruct1] ; |746| 
L88:    
        MOVW      DP,#_settings+6
        MOV       @_settings+6,#0       ; |748| 
L89:    
        MOVW      DP,#_settings+12
        MOV       @_settings+12,#16383  ; |779| 
        MOVW      DP,#_settings+2
        MOV       @_settings+2,#0       ; |780| 
L90:    
        MOVL      XAR1,*--SP
	.dwpsn	"utils.c",783,1
        LRETR
        ; return occurs

DW$183	.dwtag  DW_TAG_loop
	.dwattr DW$183, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\utils.asm:L81:1:1471518993")
	.dwattr DW$183, DW_AT_begin_file("utils.c")
	.dwattr DW$183, DW_AT_begin_line(0x2f8)
	.dwattr DW$183, DW_AT_end_line(0x2f8)
DW$184	.dwtag  DW_TAG_loop_range
	.dwattr DW$184, DW_AT_low_pc(DW$L$_UpdateNonVolSafeCheck$16$B)
	.dwattr DW$184, DW_AT_high_pc(DW$L$_UpdateNonVolSafeCheck$16$E)
	.dwendtag DW$183


DW$185	.dwtag  DW_TAG_loop
	.dwattr DW$185, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\utils.asm:L79:1:1471518993")
	.dwattr DW$185, DW_AT_begin_file("utils.c")
	.dwattr DW$185, DW_AT_begin_line(0x2fe)
	.dwattr DW$185, DW_AT_end_line(0x2fe)
DW$186	.dwtag  DW_TAG_loop_range
	.dwattr DW$186, DW_AT_low_pc(DW$L$_UpdateNonVolSafeCheck$13$B)
	.dwattr DW$186, DW_AT_high_pc(DW$L$_UpdateNonVolSafeCheck$13$E)
	.dwendtag DW$185

	.dwattr DW$182, DW_AT_end_file("utils.c")
	.dwattr DW$182, DW_AT_end_line(0x30f)
	.dwattr DW$182, DW_AT_end_column(0x01)
	.dwendtag DW$182

	.sect	".text"
	.global	_CheckBitSet

DW$187	.dwtag  DW_TAG_subprogram, DW_AT_name("CheckBitSet"), DW_AT_symbol_name("_CheckBitSet")
	.dwattr DW$187, DW_AT_low_pc(_CheckBitSet)
	.dwattr DW$187, DW_AT_high_pc(0x00)
	.dwattr DW$187, DW_AT_begin_file("utils.c")
	.dwattr DW$187, DW_AT_begin_line(0x316)
	.dwattr DW$187, DW_AT_begin_column(0x05)
	.dwattr DW$187, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$187, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",791,1

;***************************************************************
;* FNAME: _CheckBitSet                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CheckBitSet:
;* AL    assigned to _bitfield
DW$188	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bitfield"), DW_AT_symbol_name("_bitfield")
	.dwattr DW$188, DW_AT_type(*DW$T$11)
	.dwattr DW$188, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _pos
DW$189	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pos"), DW_AT_symbol_name("_pos")
	.dwattr DW$189, DW_AT_type(*DW$T$11)
	.dwattr DW$189, DW_AT_location[DW_OP_reg1]
        MOV       T,AH                  ; |796| 
        LSR       AL,T                  ; |796| 
        ANDB      AL,#0x01              ; |796| 
	.dwpsn	"utils.c",798,1
        LRETR
        ; return occurs
	.dwattr DW$187, DW_AT_end_file("utils.c")
	.dwattr DW$187, DW_AT_end_line(0x31e)
	.dwattr DW$187, DW_AT_end_column(0x01)
	.dwendtag DW$187

	.sect	".text"
	.global	_BitSet

DW$190	.dwtag  DW_TAG_subprogram, DW_AT_name("BitSet"), DW_AT_symbol_name("_BitSet")
	.dwattr DW$190, DW_AT_low_pc(_BitSet)
	.dwattr DW$190, DW_AT_high_pc(0x00)
	.dwattr DW$190, DW_AT_begin_file("utils.c")
	.dwattr DW$190, DW_AT_begin_line(0x323)
	.dwattr DW$190, DW_AT_begin_column(0x0e)
	.dwattr DW$190, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$190, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",804,1

;***************************************************************
;* FNAME: _BitSet                       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_BitSet:
;* AL    assigned to _bitfield
DW$191	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bitfield"), DW_AT_symbol_name("_bitfield")
	.dwattr DW$191, DW_AT_type(*DW$T$11)
	.dwattr DW$191, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _pos
DW$192	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pos"), DW_AT_symbol_name("_pos")
	.dwattr DW$192, DW_AT_type(*DW$T$11)
	.dwattr DW$192, DW_AT_location[DW_OP_reg1]
        MOV       T,AH                  ; |809| 
        MOVB      AH,#1                 ; |809| 
        LSL       AH,T                  ; |809| 
        OR        AL,AH                 ; |809| 
	.dwpsn	"utils.c",812,1
        LRETR
        ; return occurs
	.dwattr DW$190, DW_AT_end_file("utils.c")
	.dwattr DW$190, DW_AT_end_line(0x32c)
	.dwattr DW$190, DW_AT_end_column(0x01)
	.dwendtag DW$190

	.sect	".text"
	.global	_BitClear

DW$193	.dwtag  DW_TAG_subprogram, DW_AT_name("BitClear"), DW_AT_symbol_name("_BitClear")
	.dwattr DW$193, DW_AT_low_pc(_BitClear)
	.dwattr DW$193, DW_AT_high_pc(0x00)
	.dwattr DW$193, DW_AT_begin_file("utils.c")
	.dwattr DW$193, DW_AT_begin_line(0x331)
	.dwattr DW$193, DW_AT_begin_column(0x0e)
	.dwattr DW$193, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$193, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",818,1

;***************************************************************
;* FNAME: _BitClear                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_BitClear:
;* AL    assigned to _bitfield
DW$194	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bitfield"), DW_AT_symbol_name("_bitfield")
	.dwattr DW$194, DW_AT_type(*DW$T$11)
	.dwattr DW$194, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _pos
DW$195	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pos"), DW_AT_symbol_name("_pos")
	.dwattr DW$195, DW_AT_type(*DW$T$11)
	.dwattr DW$195, DW_AT_location[DW_OP_reg1]
        MOV       T,AH                  ; |822| 
        MOVB      AH,#1                 ; |822| 
        LSL       AH,T                  ; |822| 
        XOR       AH,#0xffff            ; |824| 
        AND       AL,AH                 ; |824| 
	.dwpsn	"utils.c",826,1
        LRETR
        ; return occurs
	.dwattr DW$193, DW_AT_end_file("utils.c")
	.dwattr DW$193, DW_AT_end_line(0x33a)
	.dwattr DW$193, DW_AT_end_column(0x01)
	.dwendtag DW$193

	.sect	".text"
	.global	_BCDtoInt

DW$196	.dwtag  DW_TAG_subprogram, DW_AT_name("BCDtoInt"), DW_AT_symbol_name("_BCDtoInt")
	.dwattr DW$196, DW_AT_low_pc(_BCDtoInt)
	.dwattr DW$196, DW_AT_high_pc(0x00)
	.dwattr DW$196, DW_AT_begin_file("utils.c")
	.dwattr DW$196, DW_AT_begin_line(0x33f)
	.dwattr DW$196, DW_AT_begin_column(0x0e)
	.dwattr DW$196, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$196, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",832,1

;***************************************************************
;* FNAME: _BCDtoInt                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_BCDtoInt:
;* AL    assigned to _bcd
DW$197	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bcd"), DW_AT_symbol_name("_bcd")
	.dwattr DW$197, DW_AT_type(*DW$T$11)
	.dwattr DW$197, DW_AT_location[DW_OP_reg0]
        ANDB      AL,#255               ; |836| 
        MOV       AH,AL                 ; |836| 
        LSR       AH,4                  ; |839| 
        MOV       T,AH                  ; |839| 
        MPYB      P,T,#10               ; |839| 
        ANDB      AL,#0x0f              ; |839| 
        ADD       AL,PL                 ; |839| 
	.dwpsn	"utils.c",840,1
        LRETR
        ; return occurs
	.dwattr DW$196, DW_AT_end_file("utils.c")
	.dwattr DW$196, DW_AT_end_line(0x348)
	.dwattr DW$196, DW_AT_end_column(0x01)
	.dwendtag DW$196

	.sect	".text"
	.global	_CalibrationtdUpdate

DW$198	.dwtag  DW_TAG_subprogram, DW_AT_name("CalibrationtdUpdate"), DW_AT_symbol_name("_CalibrationtdUpdate")
	.dwattr DW$198, DW_AT_low_pc(_CalibrationtdUpdate)
	.dwattr DW$198, DW_AT_high_pc(0x00)
	.dwattr DW$198, DW_AT_begin_file("utils.c")
	.dwattr DW$198, DW_AT_begin_line(0x34f)
	.dwattr DW$198, DW_AT_begin_column(0x06)
	.dwattr DW$198, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$198, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",848,1

;***************************************************************
;* FNAME: _CalibrationtdUpdate          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CalibrationtdUpdate:
;* AL    assigned to _type
DW$199	.dwtag  DW_TAG_formal_parameter, DW_AT_name("type"), DW_AT_symbol_name("_type")
	.dwattr DW$199, DW_AT_type(*DW$T$10)
	.dwattr DW$199, DW_AT_location[DW_OP_reg0]
        MOVZ      AR6,AL                ; |848| 
        CMPB      AL,#1                 ; |851| 
        BF        L91,NEQ               ; |851| 
        ; branchcc occurs ; |851| 
        MOVW      DP,#_clocktime+7
        MOV       ACC,@_clocktime+7 << #8 ; |852| 
        MOVW      DP,#_calibrationtd
        MOV       @_calibrationtd,AL    ; |852| 
        MOVW      DP,#_clocktime+6
        MOV       AH,@_clocktime+6      ; |853| 
        ANDB      AH,#0xff              ; |853| 
        MOVW      DP,#_calibrationtd
        ADD       @_calibrationtd,AH    ; |853| 
        MOVW      DP,#_clocktime+5
        MOV       ACC,@_clocktime+5 << #8 ; |854| 
        MOVW      DP,#_calibrationtd+1
        MOV       @_calibrationtd+1,AL  ; |854| 
        MOVW      DP,#_clocktime+3
        MOV       AH,@_clocktime+3      ; |855| 
        ANDB      AH,#0xff              ; |855| 
        MOVW      DP,#_calibrationtd+1
        ADD       @_calibrationtd+1,AH  ; |855| 
        MOVW      DP,#_clocktime+2
        MOV       ACC,@_clocktime+2 << #8 ; |856| 
        MOVW      DP,#_calibrationtd+2
        MOV       @_calibrationtd+2,AL  ; |856| 
        MOVW      DP,#_clocktime+1
        MOV       AH,@_clocktime+1      ; |857| 
        ANDB      AH,#0xff              ; |857| 
        MOVW      DP,#_calibrationtd+2
        ADD       @_calibrationtd+2,AH  ; |857| 
L91:    
        MOV       AL,AR6
        CMPB      AL,#2                 ; |859| 
        BF        L92,NEQ               ; |859| 
        ; branchcc occurs ; |859| 
        MOVW      DP,#_clocktime+7
        MOV       ACC,@_clocktime+7 << #8 ; |860| 
        MOVW      DP,#_calibrationtd+3
        MOV       @_calibrationtd+3,AL  ; |860| 
        MOVW      DP,#_clocktime+6
        MOV       AH,@_clocktime+6      ; |861| 
        ANDB      AH,#0xff              ; |861| 
        MOVW      DP,#_calibrationtd+3
        ADD       @_calibrationtd+3,AH  ; |861| 
        MOVW      DP,#_clocktime+5
        MOV       ACC,@_clocktime+5 << #8 ; |862| 
        MOVW      DP,#_calibrationtd+4
        MOV       @_calibrationtd+4,AL  ; |862| 
        MOVW      DP,#_clocktime+3
        MOV       AH,@_clocktime+3      ; |863| 
        ANDB      AH,#0xff              ; |863| 
        MOVW      DP,#_calibrationtd+4
        ADD       @_calibrationtd+4,AH  ; |863| 
        MOVW      DP,#_clocktime+2
        MOV       ACC,@_clocktime+2 << #8 ; |864| 
        MOVW      DP,#_calibrationtd+5
        MOV       @_calibrationtd+5,AL  ; |864| 
        MOVW      DP,#_clocktime+1
        MOV       AH,@_clocktime+1      ; |865| 
        ANDB      AH,#0xff              ; |865| 
        MOVW      DP,#_calibrationtd+5
        ADD       @_calibrationtd+5,AH  ; |865| 
L92:    
        MOV       AL,AR6
        CMPB      AL,#3                 ; |867| 
        BF        L93,NEQ               ; |867| 
        ; branchcc occurs ; |867| 
        MOVW      DP,#_calibrationtd
        MOV       @_calibrationtd,#0    ; |868| 
        MOVW      DP,#_calibrationtd+1
        MOV       @_calibrationtd+1,#0  ; |869| 
        MOVW      DP,#_calibrationtd+2
        MOV       @_calibrationtd+2,#0  ; |870| 
        MOVW      DP,#_calibrationtd+3
        MOV       @_calibrationtd+3,#0  ; |871| 
        MOVW      DP,#_calibrationtd+4
        MOV       @_calibrationtd+4,#0  ; |872| 
        MOVW      DP,#_calibrationtd+5
        MOV       @_calibrationtd+5,#0  ; |873| 
L93:    
        LCR       #_WriteCalibrationtdStructtoNVMEM ; |876| 
        ; call occurs [#_WriteCalibrationtdStructtoNVMEM] ; |876| 
        MOVW      DP,#_settings+10
        MOV       @_settings+10,#5      ; |877| 
	.dwpsn	"utils.c",879,1
        LRETR
        ; return occurs
	.dwattr DW$198, DW_AT_end_file("utils.c")
	.dwattr DW$198, DW_AT_end_line(0x36f)
	.dwattr DW$198, DW_AT_end_column(0x01)
	.dwendtag DW$198

	.sect	".text"
	.global	_WriteCalibrationtdStructtoNVMEM

DW$200	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteCalibrationtdStructtoNVMEM"), DW_AT_symbol_name("_WriteCalibrationtdStructtoNVMEM")
	.dwattr DW$200, DW_AT_low_pc(_WriteCalibrationtdStructtoNVMEM)
	.dwattr DW$200, DW_AT_high_pc(0x00)
	.dwattr DW$200, DW_AT_begin_file("utils.c")
	.dwattr DW$200, DW_AT_begin_line(0x372)
	.dwattr DW$200, DW_AT_begin_column(0x06)
	.dwattr DW$200, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$200, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",883,1

;***************************************************************
;* FNAME: _WriteCalibrationtdStructtoNVMEM FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WriteCalibrationtdStructtoNVMEM:
        MOVL      XAR6,#_calibrationtd  ; |889| 
        MOVL      XAR4,XAR6             ; |889| 
        MOVB      AL,#6                 ; |889| 
        LCR       #_CalcUIntChecksum    ; |889| 
        ; call occurs [#_CalcUIntChecksum] ; |889| 
        MOVW      DP,#_calibrationtd+6
        MOV       @_calibrationtd+6,AL  ; |889| 
        MOVB      AL,#0
        MOVL      XAR4,XAR6             ; |896| 
        MOVB      XAR5,#7               ; |896| 
        MOV       AH,#28998             ; |896| 
        LCR       #_WriteNVMemory       ; |896| 
        ; call occurs [#_WriteNVMemory] ; |896| 
	.dwpsn	"utils.c",898,1
        LRETR
        ; return occurs
	.dwattr DW$200, DW_AT_end_file("utils.c")
	.dwattr DW$200, DW_AT_end_line(0x382)
	.dwattr DW$200, DW_AT_end_column(0x01)
	.dwendtag DW$200

	.sect	".text"
	.global	_ReadCalibrationtdStructfromNVMEM

DW$201	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadCalibrationtdStructfromNVMEM"), DW_AT_symbol_name("_ReadCalibrationtdStructfromNVMEM")
	.dwattr DW$201, DW_AT_low_pc(_ReadCalibrationtdStructfromNVMEM)
	.dwattr DW$201, DW_AT_high_pc(0x00)
	.dwattr DW$201, DW_AT_begin_file("utils.c")
	.dwattr DW$201, DW_AT_begin_line(0x387)
	.dwattr DW$201, DW_AT_begin_column(0x06)
	.dwattr DW$201, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$201, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",904,1

;***************************************************************
;* FNAME: _ReadCalibrationtdStructfromNVMEM FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  7 Auto,  0 SOE     *
;***************************************************************

_ReadCalibrationtdStructfromNVMEM:
        ADDB      SP,#8
        MOVZ      AR4,SP                ; |917| 
        MOVB      AL,#0
        MOVB      XAR5,#7               ; |917| 
        MOV       AH,#28998             ; |917| 
        SUBB      XAR4,#7               ; |917| 
        LCR       #_ReadNVMemory        ; |917| 
        ; call occurs [#_ReadNVMemory] ; |917| 
        MOVZ      AR4,SP                ; |918| 
        MOVB      AL,#6                 ; |918| 
        SUBB      XAR4,#7               ; |918| 
        LCR       #_CalcUIntChecksum    ; |918| 
        ; call occurs [#_CalcUIntChecksum] ; |918| 
        CMP       AL,*-SP[1]            ; |920| 
        BF        L94,EQ                ; |920| 
        ; branchcc occurs ; |920| 
        MOVB      AL,#3                 ; |924| 
        LCR       #_CalibrationtdUpdate ; |924| 
        ; call occurs [#_CalibrationtdUpdate] ; |924| 
        BF        L95,UNC               ; |924| 
        ; branch occurs ; |924| 
L94:    
        MOVB      AL,#0
        MOV       AH,#28998             ; |922| 
        MOVB      XAR5,#7               ; |922| 
        MOVL      XAR4,#_calibrationtd  ; |922| 
        LCR       #_ReadNVMemory        ; |922| 
        ; call occurs [#_ReadNVMemory] ; |922| 
L95:    
        SUBB      SP,#8
	.dwpsn	"utils.c",927,1
        LRETR
        ; return occurs
	.dwattr DW$201, DW_AT_end_file("utils.c")
	.dwattr DW$201, DW_AT_end_line(0x39f)
	.dwattr DW$201, DW_AT_end_column(0x01)
	.dwendtag DW$201

	.sect	".text"
	.global	_LoadFRAMpowerup

DW$202	.dwtag  DW_TAG_subprogram, DW_AT_name("LoadFRAMpowerup"), DW_AT_symbol_name("_LoadFRAMpowerup")
	.dwattr DW$202, DW_AT_low_pc(_LoadFRAMpowerup)
	.dwattr DW$202, DW_AT_high_pc(0x00)
	.dwattr DW$202, DW_AT_begin_file("utils.c")
	.dwattr DW$202, DW_AT_begin_line(0x3a4)
	.dwattr DW$202, DW_AT_begin_column(0x06)
	.dwattr DW$202, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$202, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",933,1

;***************************************************************
;* FNAME: _LoadFRAMpowerup              FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_LoadFRAMpowerup:
        MOVL      *SP++,XAR3
        ADDB      SP,#2
        LCR       #_ReadEventLogVarsStructfromNVMEM ; |935| 
        ; call occurs [#_ReadEventLogVarsStructfromNVMEM] ; |935| 
        LCR       #_ReadWIOSettingsfromNVMEM ; |936| 
        ; call occurs [#_ReadWIOSettingsfromNVMEM] ; |936| 
        LCR       #_ReadDamagemonfromNVMEM ; |937| 
        ; call occurs [#_ReadDamagemonfromNVMEM] ; |937| 
        LCR       #_ReadSLEMSettingsfromNVMEM ; |938| 
        ; call occurs [#_ReadSLEMSettingsfromNVMEM] ; |938| 
        LCR       #_ReadCPPSettingsfromNVMEM ; |939| 
        ; call occurs [#_ReadCPPSettingsfromNVMEM] ; |939| 
        LCR       #_ReadCalibrationtdStructfromNVMEM ; |940| 
        ; call occurs [#_ReadCalibrationtdStructfromNVMEM] ; |940| 
        LCR       #_ReadDCModeChecksSettingsfromNVMEM ; |941| 
        ; call occurs [#_ReadDCModeChecksSettingsfromNVMEM] ; |941| 
        MOVB      AL,#0
        MOVB      XAR5,#1               ; |943| 
        MOVL      XAR4,#_rtcbat+1       ; |943| 
        MOV       AH,#28996             ; |943| 
        LCR       #_ReadNVMemory        ; |943| 
        ; call occurs [#_ReadNVMemory] ; |943| 
        LCR       #_ReadAlarmListfromNVMEM ; |945| 
        ; call occurs [#_ReadAlarmListfromNVMEM] ; |945| 
        MOVL      XAR3,#_stringbuffer   ; |947| 
        MOVL      XAR4,#FSL7            ; |947| 
        MOVL      *-SP[2],XAR4          ; |947| 
        MOVL      XAR4,XAR3             ; |947| 
        LCR       #_sprintf             ; |947| 
        ; call occurs [#_sprintf] ; |947| 
        MOVL      XAR4,XAR3             ; |947| 
        LCR       #_DebugStringOut      ; |947| 
        ; call occurs [#_DebugStringOut] ; |947| 
        SUBB      SP,#2
        MOVL      XAR3,*--SP
	.dwpsn	"utils.c",949,1
        LRETR
        ; return occurs
	.dwattr DW$202, DW_AT_end_file("utils.c")
	.dwattr DW$202, DW_AT_end_line(0x3b5)
	.dwattr DW$202, DW_AT_end_column(0x01)
	.dwendtag DW$202

	.sect	".text"
	.global	_ReadAlarmListfromNVMEM

DW$203	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadAlarmListfromNVMEM"), DW_AT_symbol_name("_ReadAlarmListfromNVMEM")
	.dwattr DW$203, DW_AT_low_pc(_ReadAlarmListfromNVMEM)
	.dwattr DW$203, DW_AT_high_pc(0x00)
	.dwattr DW$203, DW_AT_begin_file("utils.c")
	.dwattr DW$203, DW_AT_begin_line(0x3bb)
	.dwattr DW$203, DW_AT_begin_column(0x06)
	.dwattr DW$203, DW_AT_frame_base[DW_OP_breg20 -36]
	.dwattr DW$203, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",956,1

;***************************************************************
;* FNAME: _ReadAlarmListfromNVMEM       FR SIZE:  34           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 33 Auto,  0 SOE     *
;***************************************************************

_ReadAlarmListfromNVMEM:
        ADDB      SP,#34
        MOVZ      AR4,SP                ; |970| 
        MOVB      AL,#1                 ; |970| 
        MOVB      XAR5,#33              ; |970| 
        MOV       AH,#11016             ; |970| 
        SUBB      XAR4,#33              ; |970| 
        LCR       #_ReadNVMemory        ; |970| 
        ; call occurs [#_ReadNVMemory] ; |970| 
        MOVZ      AR4,SP                ; |971| 
        MOVB      AL,#32                ; |971| 
        SUBB      XAR4,#33              ; |971| 
        LCR       #_CalcUIntChecksum    ; |971| 
        ; call occurs [#_CalcUIntChecksum] ; |971| 
        CMP       AL,*-SP[1]            ; |973| 
        BF        L97,EQ                ; |973| 
        ; branchcc occurs ; |973| 
        MOVL      XAR4,#_bitalarmlist   ; |979| 
	.dwpsn	"utils.c",978,0
        MOVB      XAR0,#0
L96:    
DW$L$_ReadAlarmListfromNVMEM$3$B:
        MOV       *+XAR4[AR0],#0        ; |979| 
        ADDB      XAR0,#1               ; |978| 
        MOV       AL,AR0                ; |978| 
        CMPB      AL,#32                ; |978| 
	.dwpsn	"utils.c",980,0
        BF        L96,LO                ; |978| 
        ; branchcc occurs ; |978| 
DW$L$_ReadAlarmListfromNVMEM$3$E:
        LCR       #_WriteAlarmListtoNVMEM ; |982| 
        ; call occurs [#_WriteAlarmListtoNVMEM] ; |982| 
        BF        L98,UNC               ; |982| 
        ; branch occurs ; |982| 
L97:    
        MOVB      AL,#1                 ; |975| 
        MOV       AH,#11016             ; |975| 
        MOVB      XAR5,#33              ; |975| 
        MOVL      XAR4,#_bitalarmlist   ; |975| 
        LCR       #_ReadNVMemory        ; |975| 
        ; call occurs [#_ReadNVMemory] ; |975| 
L98:    
        SUBB      SP,#34
	.dwpsn	"utils.c",985,1
        LRETR
        ; return occurs

DW$204	.dwtag  DW_TAG_loop
	.dwattr DW$204, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\utils.asm:L96:1:1471518993")
	.dwattr DW$204, DW_AT_begin_file("utils.c")
	.dwattr DW$204, DW_AT_begin_line(0x3d2)
	.dwattr DW$204, DW_AT_end_line(0x3d4)
DW$205	.dwtag  DW_TAG_loop_range
	.dwattr DW$205, DW_AT_low_pc(DW$L$_ReadAlarmListfromNVMEM$3$B)
	.dwattr DW$205, DW_AT_high_pc(DW$L$_ReadAlarmListfromNVMEM$3$E)
	.dwendtag DW$204

	.dwattr DW$203, DW_AT_end_file("utils.c")
	.dwattr DW$203, DW_AT_end_line(0x3d9)
	.dwattr DW$203, DW_AT_end_column(0x01)
	.dwendtag DW$203

	.sect	".text"
	.global	_WriteAlarmListtoNVMEM

DW$206	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteAlarmListtoNVMEM"), DW_AT_symbol_name("_WriteAlarmListtoNVMEM")
	.dwattr DW$206, DW_AT_low_pc(_WriteAlarmListtoNVMEM)
	.dwattr DW$206, DW_AT_high_pc(0x00)
	.dwattr DW$206, DW_AT_begin_file("utils.c")
	.dwattr DW$206, DW_AT_begin_line(0x3dc)
	.dwattr DW$206, DW_AT_begin_column(0x06)
	.dwattr DW$206, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$206, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",989,1

;***************************************************************
;* FNAME: _WriteAlarmListtoNVMEM        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WriteAlarmListtoNVMEM:
        MOVL      XAR6,#_bitalarmlist   ; |996| 
        MOVL      XAR4,XAR6             ; |996| 
        MOVB      AL,#32                ; |996| 
        LCR       #_CalcUIntChecksum    ; |996| 
        ; call occurs [#_CalcUIntChecksum] ; |996| 
        MOVB      XAR0,#32              ; |997| 
        MOV       *+XAR6[AR0],AL        ; |997| 
        MOVB      AL,#1                 ; |1004| 
        MOVL      XAR4,XAR6             ; |1004| 
        MOVB      XAR5,#33              ; |1004| 
        MOV       AH,#11016             ; |1004| 
        LCR       #_WriteNVMemory       ; |1004| 
        ; call occurs [#_WriteNVMemory] ; |1004| 
	.dwpsn	"utils.c",1006,1
        LRETR
        ; return occurs
	.dwattr DW$206, DW_AT_end_file("utils.c")
	.dwattr DW$206, DW_AT_end_line(0x3ee)
	.dwattr DW$206, DW_AT_end_column(0x01)
	.dwendtag DW$206

	.sect	".text"
	.global	_ClearBitEventList

DW$207	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearBitEventList"), DW_AT_symbol_name("_ClearBitEventList")
	.dwattr DW$207, DW_AT_low_pc(_ClearBitEventList)
	.dwattr DW$207, DW_AT_high_pc(0x00)
	.dwattr DW$207, DW_AT_begin_file("utils.c")
	.dwattr DW$207, DW_AT_begin_line(0x3f4)
	.dwattr DW$207, DW_AT_begin_column(0x06)
	.dwattr DW$207, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$207, DW_AT_skeletal(0x01)
	.dwpsn	"utils.c",1012,30

;***************************************************************
;* FNAME: _ClearBitEventList            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ClearBitEventList:
        MOVB      XAR4,#0
	.dwpsn	"utils.c",1015,0
        MOV       T,#3                  ; |1017| 
L99:    
DW$L$_ClearBitEventList$2$B:
	.dwpsn	"utils.c",1016,0
        MOVB      XAR5,#0
DW$L$_ClearBitEventList$2$E:
L100:    
DW$L$_ClearBitEventList$3$B:
        MPYXU     ACC,T,AR4             ; |1017| 
        MOVL      XAR6,#_biteventlist   ; |1017| 
        ADDU      ACC,AR5               ; |1017| 
        ADDL      XAR6,ACC
        ADDB      XAR5,#1               ; |1016| 
        MOV       AL,AR5                ; |1016| 
        CMPB      AL,#3                 ; |1016| 
        MOV       *+XAR6[0],#0          ; |1017| 
	.dwpsn	"utils.c",1018,0
        BF        L100,LO               ; |1016| 
        ; branchcc occurs ; |1016| 
DW$L$_ClearBitEventList$3$E:
DW$L$_ClearBitEventList$4$B:
        ADDB      XAR4,#1               ; |1015| 
        MOV       AL,AR4                ; |1015| 
        CMPB      AL,#16                ; |1015| 
	.dwpsn	"utils.c",1019,0
        BF        L99,LO                ; |1015| 
        ; branchcc occurs ; |1015| 
DW$L$_ClearBitEventList$4$E:
        MOVW      DP,#_timers+71
        MOV       @_timers+71,#2000     ; |1021| 
        MOVW      DP,#_biteventpos
        MOV       @_biteventpos,#0      ; |1022| 
	.dwpsn	"utils.c",1024,1
        LRETR
        ; return occurs

DW$208	.dwtag  DW_TAG_loop
	.dwattr DW$208, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\utils.asm:L99:1:1471518993")
	.dwattr DW$208, DW_AT_begin_file("utils.c")
	.dwattr DW$208, DW_AT_begin_line(0x3f7)
	.dwattr DW$208, DW_AT_end_line(0x3fb)
DW$209	.dwtag  DW_TAG_loop_range
	.dwattr DW$209, DW_AT_low_pc(DW$L$_ClearBitEventList$2$B)
	.dwattr DW$209, DW_AT_high_pc(DW$L$_ClearBitEventList$2$E)
DW$210	.dwtag  DW_TAG_loop_range
	.dwattr DW$210, DW_AT_low_pc(DW$L$_ClearBitEventList$4$B)
	.dwattr DW$210, DW_AT_high_pc(DW$L$_ClearBitEventList$4$E)

DW$211	.dwtag  DW_TAG_loop
	.dwattr DW$211, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\utils.asm:L100:2:1471518993")
	.dwattr DW$211, DW_AT_begin_file("utils.c")
	.dwattr DW$211, DW_AT_begin_line(0x3f8)
	.dwattr DW$211, DW_AT_end_line(0x3fa)
DW$212	.dwtag  DW_TAG_loop_range
	.dwattr DW$212, DW_AT_low_pc(DW$L$_ClearBitEventList$3$B)
	.dwattr DW$212, DW_AT_high_pc(DW$L$_ClearBitEventList$3$E)
	.dwendtag DW$211

	.dwendtag DW$208

	.dwattr DW$207, DW_AT_end_file("utils.c")
	.dwattr DW$207, DW_AT_end_line(0x400)
	.dwattr DW$207, DW_AT_end_column(0x01)
	.dwendtag DW$207

;***************************************************************
;* FAR STRINGS                                                 *
;***************************************************************
	.sect	".econst"
	.align	2
FSL1:	.string	"Clocktime %.2x/%.2x/%.2x %.2x:%.2x:%.2x %.8lx",13,10,0
	.align	2
FSL2:	.string	"Clock RTC Failure",13,10,0
	.align	2
FSL3:	.string	"ReloadTimeFromFram pre %.2x/%.2x/%.2x %.2x:%.2x:%.2x %.8lx",13
	.string	10,0
	.align	2
FSL4:	.string	"ReloadTimeFromFram post %.2x/%.2x/%.2x %.2x:%.2x:%.2x %.8lx"
	.string	13,10,0
	.align	2
FSL5:	.string	"SaveTimetoFram %.2x/%.2x/%.2x %.2x:%.2x:%.2x %.8lx",13,10,0
	.align	2
FSL6:	.string	"%.2x/%.2x/%.2x,%.2x:%.2x:%.2x,",0
	.align	2
FSL7:	.string	"f.",0
;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_sprintf
	.global	_WatchdogKick
	.global	_DebugStringOut
	.global	_ClearMANTable
	.global	_WriteDamagemontoNVMEM
	.global	_ReadDamagemonfromNVMEM
	.global	_SetSensorEnabled
	.global	_GetModalRPM
	.global	_WriteSensorStatustoNVMEM
	.global	_WriteMANCompTabletoNVMEM
	.global	_WriteOffsetAtoNVMEM
	.global	_WriteOffsetBtoNVMEM
	.global	_SaveSDSettings
	.global	_PowerUpReadSD
	.global	_BuildTimeStamp
	.global	_SetAlarmEvent
	.global	_ClearAlarmEvent
	.global	_ClearMSGQueue
	.global	_ClearAlarmListandEventLog
	.global	_ReadEventLogVarsStructfromNVMEM
	.global	_SetWIOAlarmMask
	.global	_ReadWIOSettingsfromNVMEM
	.global	_WriteWIOSettingstoNVMEM
	.global	_AnalogueInputScaleAllChannels
	.global	_PulseRPMCalc
	.global	_WriteSLEMSettingstoNVMEM
	.global	_ReadSLEMSettingsfromNVMEM
	.global	_WriteCPPSettingstoNVMEM
	.global	_ReadCPPSettingsfromNVMEM
	.global	_WriteSensorSettingstoNVMEM
	.global	_WriteDCModeChecksSettingstoNVMEM
	.global	_ReadDCModeChecksSettingsfromNVMEM
	.global	_WriteClockData
	.global	_ReadNVMemory
	.global	_WriteNVMemory
	.global	_WriteSpeedCompStructtoNVMEM
	.global	_WriteAllSensorStructtoNVMEM
	.global	_Fram1MagicNumberWrite
	.global	_WriteYrMnthData
	.global	_WriteDateHrsData
	.global	_WriteMinsSecsData
	.global	_SaveSafeStruct1
	.global	_SaveSafeStruct2
	.global	_gpd
	.global	_settings
	.global	_livetime
	.global	_logtime
	.global	_calibrationtd
	.global	_clocktime
	.global	_timers
	.global	_allsensors
	.global	_config
	.global	_loopcheck
	.global	_stringbuffer
	.global	_offsetA
	.global	_offsetB
	.global	_function
	.global	_speedcompcoeffs
	.global	_sdsettings
	.global	_alarms
	.global	_bitalarmlist
	.global	_biteventlist
	.global	_biteventpos
	.global	_wiosettings
	.global	_rtcbat
	.global	FS$$MPY
	.global	FS$$CMP
	.global	FS$$SUB
	.global	FS$$ADD
	.global	FS$$TOI
	.global	U$$TOFS
	.global	FS$$DIV
	.global	FS$$TOU

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

DW$T$62	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$62, DW_AT_language(DW_LANG_C)

DW$T$66	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$66, DW_AT_language(DW_LANG_C)
DW$213	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$65)
	.dwendtag DW$T$66


DW$T$68	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$68, DW_AT_language(DW_LANG_C)
DW$214	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$68


DW$T$70	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$70, DW_AT_language(DW_LANG_C)
DW$215	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$216	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$70


DW$T$72	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$72, DW_AT_language(DW_LANG_C)
DW$217	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$72


DW$T$74	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$74, DW_AT_language(DW_LANG_C)
DW$218	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$60)
	.dwendtag DW$T$74


DW$T$75	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$75, DW_AT_language(DW_LANG_C)
DW$219	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$65)
DW$220	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$60)
DW$221	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$75


DW$T$76	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$76, DW_AT_language(DW_LANG_C)
DW$222	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$60)
DW$223	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$65)
DW$224	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$76


DW$T$77	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$77, DW_AT_language(DW_LANG_C)
DW$225	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$65)
DW$226	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$77

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)

DW$T$82	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$82, DW_AT_language(DW_LANG_C)
DW$227	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$65)
DW$228	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$81)
DW$229	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$82


DW$T$84	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$84, DW_AT_language(DW_LANG_C)

DW$T$86	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$86, DW_AT_language(DW_LANG_C)
DW$230	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$16)
	.dwendtag DW$T$86


DW$T$87	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$87, DW_AT_language(DW_LANG_C)
DW$231	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$232	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$87

DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)
DW$T$60	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$60, DW_AT_address_class(0x16)

DW$T$109	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$109, DW_AT_language(DW_LANG_C)
DW$233	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$109


DW$T$111	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$111, DW_AT_language(DW_LANG_C)
DW$234	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$60)
DW$235	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$111


DW$T$113	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$113, DW_AT_language(DW_LANG_C)
DW$236	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$237	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$113


DW$T$114	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$114, DW_AT_language(DW_LANG_C)
DW$238	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$114


DW$T$115	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$115, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$115, DW_AT_byte_size(0x21)
DW$239	.dwtag  DW_TAG_subrange_type
	.dwattr DW$239, DW_AT_upper_bound(0x20)
	.dwendtag DW$T$115


DW$T$117	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$117, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$117, DW_AT_byte_size(0x30)
DW$240	.dwtag  DW_TAG_subrange_type
	.dwattr DW$240, DW_AT_upper_bound(0x0f)
DW$241	.dwtag  DW_TAG_subrange_type
	.dwattr DW$241, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$117

DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)

DW$T$122	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$122, DW_AT_language(DW_LANG_C)
DW$T$16	.dwtag  DW_TAG_base_type, DW_AT_name("float")
	.dwattr DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$16, DW_AT_byte_size(0x02)
DW$242	.dwtag  DW_TAG_far_type
	.dwattr DW$242, DW_AT_type(*DW$T$124)
DW$T$125	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$125, DW_AT_type(*DW$242)
DW$T$128	.dwtag  DW_TAG_typedef, DW_AT_name("settingsstruct"), DW_AT_type(*DW$T$23)
	.dwattr DW$T$128, DW_AT_language(DW_LANG_C)
DW$T$129	.dwtag  DW_TAG_typedef, DW_AT_name("livestruct"), DW_AT_type(*DW$T$24)
	.dwattr DW$T$129, DW_AT_language(DW_LANG_C)
DW$T$130	.dwtag  DW_TAG_typedef, DW_AT_name("calibrationdatetimestruct"), DW_AT_type(*DW$T$27)
	.dwattr DW$T$130, DW_AT_language(DW_LANG_C)
DW$T$132	.dwtag  DW_TAG_typedef, DW_AT_name("clockstruct"), DW_AT_type(*DW$T$28)
	.dwattr DW$T$132, DW_AT_language(DW_LANG_C)
DW$243	.dwtag  DW_TAG_far_type
	.dwattr DW$243, DW_AT_type(*DW$T$134)
DW$T$135	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$135, DW_AT_type(*DW$243)
DW$T$137	.dwtag  DW_TAG_typedef, DW_AT_name("allsensorstruct"), DW_AT_type(*DW$T$33)
	.dwattr DW$T$137, DW_AT_language(DW_LANG_C)
DW$T$139	.dwtag  DW_TAG_typedef, DW_AT_name("configstruct"), DW_AT_type(*DW$T$40)
	.dwattr DW$T$139, DW_AT_language(DW_LANG_C)
DW$T$142	.dwtag  DW_TAG_typedef, DW_AT_name("loopcheckstruct"), DW_AT_type(*DW$T$44)
	.dwattr DW$T$142, DW_AT_language(DW_LANG_C)
DW$T$144	.dwtag  DW_TAG_typedef, DW_AT_name("offsetstruct"), DW_AT_type(*DW$T$46)
	.dwattr DW$T$144, DW_AT_language(DW_LANG_C)
DW$T$146	.dwtag  DW_TAG_typedef, DW_AT_name("functionstruct"), DW_AT_type(*DW$T$48)
	.dwattr DW$T$146, DW_AT_language(DW_LANG_C)
DW$T$147	.dwtag  DW_TAG_typedef, DW_AT_name("speedcompstruct"), DW_AT_type(*DW$T$51)
	.dwattr DW$T$147, DW_AT_language(DW_LANG_C)
DW$T$148	.dwtag  DW_TAG_typedef, DW_AT_name("sdsettingsstruct"), DW_AT_type(*DW$T$53)
	.dwattr DW$T$148, DW_AT_language(DW_LANG_C)
DW$T$150	.dwtag  DW_TAG_typedef, DW_AT_name("alarmsstruct"), DW_AT_type(*DW$T$54)
	.dwattr DW$T$150, DW_AT_language(DW_LANG_C)
DW$T$152	.dwtag  DW_TAG_typedef, DW_AT_name("wiosettingsstruct"), DW_AT_type(*DW$T$55)
	.dwattr DW$T$152, DW_AT_language(DW_LANG_C)
DW$T$153	.dwtag  DW_TAG_typedef, DW_AT_name("rtcbatstruct"), DW_AT_type(*DW$T$57)
	.dwattr DW$T$153, DW_AT_language(DW_LANG_C)
DW$T$155	.dwtag  DW_TAG_typedef, DW_AT_name("rpmstruct"), DW_AT_type(*DW$T$59)
	.dwattr DW$T$155, DW_AT_language(DW_LANG_C)

DW$T$158	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$157)
	.dwattr DW$T$158, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$158, DW_AT_byte_size(0x30)
DW$244	.dwtag  DW_TAG_subrange_type
	.dwattr DW$244, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$158

DW$T$65	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$64)
	.dwattr DW$T$65, DW_AT_address_class(0x16)
DW$T$81	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$80)
	.dwattr DW$T$81, DW_AT_address_class(0x16)

DW$T$168	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$80)
	.dwattr DW$T$168, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$168, DW_AT_byte_size(0x34)
DW$245	.dwtag  DW_TAG_subrange_type
	.dwattr DW$245, DW_AT_upper_bound(0x0c)
DW$246	.dwtag  DW_TAG_subrange_type
	.dwattr DW$246, DW_AT_upper_bound(0x03)
	.dwendtag DW$T$168


DW$T$169	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$64)
	.dwattr DW$T$169, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$169, DW_AT_byte_size(0x64)
DW$247	.dwtag  DW_TAG_subrange_type
	.dwattr DW$247, DW_AT_upper_bound(0x63)
	.dwendtag DW$T$169

DW$T$124	.dwtag  DW_TAG_typedef, DW_AT_name("gpdport"), DW_AT_type(*DW$T$21)
	.dwattr DW$T$124, DW_AT_language(DW_LANG_C)

DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$23, DW_AT_name("tag_settingsstruct")
	.dwattr DW$T$23, DW_AT_byte_size(0x24)
DW$248	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$248, DW_AT_name("watchdog"), DW_AT_symbol_name("_watchdog")
	.dwattr DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$248, DW_AT_accessibility(DW_ACCESS_public)
DW$249	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$249, DW_AT_name("ledflashflag"), DW_AT_symbol_name("_ledflashflag")
	.dwattr DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$249, DW_AT_accessibility(DW_ACCESS_public)
DW$250	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$250, DW_AT_name("updatesafe"), DW_AT_symbol_name("_updatesafe")
	.dwattr DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$250, DW_AT_accessibility(DW_ACCESS_public)
DW$251	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$251, DW_AT_name("tableconfigtype"), DW_AT_symbol_name("_tableconfigtype")
	.dwattr DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$251, DW_AT_accessibility(DW_ACCESS_public)
DW$252	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$252, DW_AT_name("caltableconfigtype"), DW_AT_symbol_name("_caltableconfigtype")
	.dwattr DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$252, DW_AT_accessibility(DW_ACCESS_public)
DW$253	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$253, DW_AT_name("eventmsgid"), DW_AT_symbol_name("_eventmsgid")
	.dwattr DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$253, DW_AT_accessibility(DW_ACCESS_public)
DW$254	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$254, DW_AT_name("configoperationcomplete"), DW_AT_symbol_name("_configoperationcomplete")
	.dwattr DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$254, DW_AT_accessibility(DW_ACCESS_public)
DW$255	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$255, DW_AT_name("sdcarderr"), DW_AT_symbol_name("_sdcarderr")
	.dwattr DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$255, DW_AT_accessibility(DW_ACCESS_public)
DW$256	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$256, DW_AT_name("sderase"), DW_AT_symbol_name("_sderase")
	.dwattr DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$256, DW_AT_accessibility(DW_ACCESS_public)
DW$257	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$257, DW_AT_name("sdreinit"), DW_AT_symbol_name("_sdreinit")
	.dwattr DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$257, DW_AT_accessibility(DW_ACCESS_public)
DW$258	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$258, DW_AT_name("sdcardupdate"), DW_AT_symbol_name("_sdcardupdate")
	.dwattr DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$258, DW_AT_accessibility(DW_ACCESS_public)
DW$259	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$259, DW_AT_name("cardreadflag"), DW_AT_symbol_name("_cardreadflag")
	.dwattr DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$259, DW_AT_accessibility(DW_ACCESS_public)
DW$260	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$260, DW_AT_name("ignore"), DW_AT_symbol_name("_ignore")
	.dwattr DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$260, DW_AT_accessibility(DW_ACCESS_public)
DW$261	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$261, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$261, DW_AT_accessibility(DW_ACCESS_public)
DW$262	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$262, DW_AT_name("spiinuse"), DW_AT_symbol_name("_spiinuse")
	.dwattr DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$262, DW_AT_accessibility(DW_ACCESS_public)
DW$263	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$263, DW_AT_name("dcpeakhold"), DW_AT_symbol_name("_dcpeakhold")
	.dwattr DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$263, DW_AT_accessibility(DW_ACCESS_public)
DW$264	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$264, DW_AT_name("dcpause"), DW_AT_symbol_name("_dcpause")
	.dwattr DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$264, DW_AT_accessibility(DW_ACCESS_public)
DW$265	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$265, DW_AT_name("mastermode"), DW_AT_symbol_name("_mastermode")
	.dwattr DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$265, DW_AT_accessibility(DW_ACCESS_public)
DW$266	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$266, DW_AT_name("updatescaling"), DW_AT_symbol_name("_updatescaling")
	.dwattr DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$266, DW_AT_accessibility(DW_ACCESS_public)
DW$267	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$267, DW_AT_name("forwardasternflag"), DW_AT_symbol_name("_forwardasternflag")
	.dwattr DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$267, DW_AT_accessibility(DW_ACCESS_public)
DW$268	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$268, DW_AT_name("initprogress"), DW_AT_symbol_name("_initprogress")
	.dwattr DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$268, DW_AT_accessibility(DW_ACCESS_public)
DW$269	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$269, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$269, DW_AT_accessibility(DW_ACCESS_public)
DW$270	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$270, DW_AT_name("slowdowncounter"), DW_AT_symbol_name("_slowdowncounter")
	.dwattr DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$270, DW_AT_accessibility(DW_ACCESS_public)
DW$271	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$271, DW_AT_name("slowdowncondition"), DW_AT_symbol_name("_slowdowncondition")
	.dwattr DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$271, DW_AT_accessibility(DW_ACCESS_public)
DW$272	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$272, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$272, DW_AT_accessibility(DW_ACCESS_public)
DW$273	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$273, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$273, DW_AT_accessibility(DW_ACCESS_public)
DW$274	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$274, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$274, DW_AT_accessibility(DW_ACCESS_public)
DW$275	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$275, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$275, DW_AT_accessibility(DW_ACCESS_public)
DW$276	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$276, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$276, DW_AT_accessibility(DW_ACCESS_public)
DW$277	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$277, DW_AT_name("temperaturealarm"), DW_AT_symbol_name("_temperaturealarm")
	.dwattr DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$277, DW_AT_accessibility(DW_ACCESS_public)
DW$278	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$278, DW_AT_name("temperatureslowdown"), DW_AT_symbol_name("_temperatureslowdown")
	.dwattr DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$278, DW_AT_accessibility(DW_ACCESS_public)
DW$279	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$279, DW_AT_name("anadebug"), DW_AT_symbol_name("_anadebug")
	.dwattr DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$279, DW_AT_accessibility(DW_ACCESS_public)
DW$280	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$280, DW_AT_name("serialdebug"), DW_AT_symbol_name("_serialdebug")
	.dwattr DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr DW$280, DW_AT_accessibility(DW_ACCESS_public)
DW$281	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$281, DW_AT_name("timerrunning"), DW_AT_symbol_name("_timerrunning")
	.dwattr DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$281, DW_AT_accessibility(DW_ACCESS_public)
DW$282	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$282, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$282, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_name("tag_livestruct")
	.dwattr DW$T$24, DW_AT_byte_size(0x03)
DW$283	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$283, DW_AT_name("yrmnth"), DW_AT_symbol_name("_yrmnth")
	.dwattr DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$283, DW_AT_accessibility(DW_ACCESS_public)
DW$284	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$284, DW_AT_name("datehrs"), DW_AT_symbol_name("_datehrs")
	.dwattr DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$284, DW_AT_accessibility(DW_ACCESS_public)
DW$285	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$285, DW_AT_name("minssecs"), DW_AT_symbol_name("_minssecs")
	.dwattr DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$285, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$27, DW_AT_name("tag_calibrationdatetimestruct")
	.dwattr DW$T$27, DW_AT_byte_size(0x07)
DW$286	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$286, DW_AT_name("calcomplete"), DW_AT_symbol_name("_calcomplete")
	.dwattr DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$286, DW_AT_accessibility(DW_ACCESS_public)
DW$287	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$287, DW_AT_name("verification"), DW_AT_symbol_name("_verification")
	.dwattr DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$287, DW_AT_accessibility(DW_ACCESS_public)
DW$288	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$288, DW_AT_name("chksum"), DW_AT_symbol_name("_chksum")
	.dwattr DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$288, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_name("tag_clockstruct")
	.dwattr DW$T$28, DW_AT_byte_size(0x0e)
DW$289	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$289, DW_AT_name("WPstate"), DW_AT_symbol_name("_WPstate")
	.dwattr DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$289, DW_AT_accessibility(DW_ACCESS_public)
DW$290	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$290, DW_AT_name("seconds"), DW_AT_symbol_name("_seconds")
	.dwattr DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$290, DW_AT_accessibility(DW_ACCESS_public)
DW$291	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$291, DW_AT_name("minutes"), DW_AT_symbol_name("_minutes")
	.dwattr DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$291, DW_AT_accessibility(DW_ACCESS_public)
DW$292	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$292, DW_AT_name("hours"), DW_AT_symbol_name("_hours")
	.dwattr DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$292, DW_AT_accessibility(DW_ACCESS_public)
DW$293	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$293, DW_AT_name("day"), DW_AT_symbol_name("_day")
	.dwattr DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$293, DW_AT_accessibility(DW_ACCESS_public)
DW$294	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$294, DW_AT_name("date"), DW_AT_symbol_name("_date")
	.dwattr DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$294, DW_AT_accessibility(DW_ACCESS_public)
DW$295	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$295, DW_AT_name("month"), DW_AT_symbol_name("_month")
	.dwattr DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$295, DW_AT_accessibility(DW_ACCESS_public)
DW$296	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$296, DW_AT_name("year"), DW_AT_symbol_name("_year")
	.dwattr DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$296, DW_AT_accessibility(DW_ACCESS_public)
DW$297	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$297, DW_AT_name("control"), DW_AT_symbol_name("_control")
	.dwattr DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$297, DW_AT_accessibility(DW_ACCESS_public)
DW$298	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$298, DW_AT_name("framstamp"), DW_AT_symbol_name("_framstamp")
	.dwattr DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$298, DW_AT_accessibility(DW_ACCESS_public)
DW$299	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$299, DW_AT_name("clockerr"), DW_AT_symbol_name("_clockerr")
	.dwattr DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$299, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28

DW$T$134	.dwtag  DW_TAG_typedef, DW_AT_name("timersstruct"), DW_AT_type(*DW$T$30)
	.dwattr DW$T$134, DW_AT_language(DW_LANG_C)

DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$33, DW_AT_name("tag_allsensorstruct")
	.dwattr DW$T$33, DW_AT_byte_size(0x2d)
DW$300	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$300, DW_AT_name("numsensors"), DW_AT_symbol_name("_numsensors")
	.dwattr DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$300, DW_AT_accessibility(DW_ACCESS_public)
DW$301	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$301, DW_AT_name("numsensorsspu1"), DW_AT_symbol_name("_numsensorsspu1")
	.dwattr DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$301, DW_AT_accessibility(DW_ACCESS_public)
DW$302	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$302, DW_AT_name("numsensorsspu2"), DW_AT_symbol_name("_numsensorsspu2")
	.dwattr DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$302, DW_AT_accessibility(DW_ACCESS_public)
DW$303	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$303, DW_AT_name("nominalspeed"), DW_AT_symbol_name("_nominalspeed")
	.dwattr DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$303, DW_AT_accessibility(DW_ACCESS_public)
DW$304	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$304, DW_AT_name("rpmmin"), DW_AT_symbol_name("_rpmmin")
	.dwattr DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$304, DW_AT_accessibility(DW_ACCESS_public)
DW$305	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$305, DW_AT_name("rpmmax"), DW_AT_symbol_name("_rpmmax")
	.dwattr DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$305, DW_AT_accessibility(DW_ACCESS_public)
DW$306	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$306, DW_AT_name("reflash"), DW_AT_symbol_name("_reflash")
	.dwattr DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$306, DW_AT_accessibility(DW_ACCESS_public)
DW$307	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$307, DW_AT_name("sensorhysteresis"), DW_AT_symbol_name("_sensorhysteresis")
	.dwattr DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$307, DW_AT_accessibility(DW_ACCESS_public)
DW$308	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$308, DW_AT_name("cylinderhysteresis"), DW_AT_symbol_name("_cylinderhysteresis")
	.dwattr DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$308, DW_AT_accessibility(DW_ACCESS_public)
DW$309	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$309, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$309, DW_AT_accessibility(DW_ACCESS_public)
DW$310	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$310, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$310, DW_AT_accessibility(DW_ACCESS_public)
DW$311	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$311, DW_AT_name("slowdowndevcallevel"), DW_AT_symbol_name("_slowdowndevcallevel")
	.dwattr DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$311, DW_AT_accessibility(DW_ACCESS_public)
DW$312	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$312, DW_AT_name("alarmdevcallevel"), DW_AT_symbol_name("_alarmdevcallevel")
	.dwattr DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$312, DW_AT_accessibility(DW_ACCESS_public)
DW$313	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$313, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$313, DW_AT_accessibility(DW_ACCESS_public)
DW$314	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$314, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$314, DW_AT_accessibility(DW_ACCESS_public)
DW$315	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$315, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$315, DW_AT_accessibility(DW_ACCESS_public)
DW$316	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$316, DW_AT_name("flags"), DW_AT_symbol_name("_flags")
	.dwattr DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$316, DW_AT_accessibility(DW_ACCESS_public)
DW$317	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$317, DW_AT_name("slowdownack"), DW_AT_symbol_name("_slowdownack")
	.dwattr DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$317, DW_AT_accessibility(DW_ACCESS_public)
DW$318	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$318, DW_AT_name("alarmack"), DW_AT_symbol_name("_alarmack")
	.dwattr DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$318, DW_AT_accessibility(DW_ACCESS_public)
DW$319	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$319, DW_AT_name("maxmintimer"), DW_AT_symbol_name("_maxmintimer")
	.dwattr DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$319, DW_AT_accessibility(DW_ACCESS_public)
DW$320	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$320, DW_AT_name("enginedircal"), DW_AT_symbol_name("_enginedircal")
	.dwattr DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$320, DW_AT_accessibility(DW_ACCESS_public)
DW$321	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$321, DW_AT_name("dirorder"), DW_AT_symbol_name("_dirorder")
	.dwattr DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$321, DW_AT_accessibility(DW_ACCESS_public)
DW$322	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$322, DW_AT_name("prewarningtimer"), DW_AT_symbol_name("_prewarningtimer")
	.dwattr DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$322, DW_AT_accessibility(DW_ACCESS_public)
DW$323	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$323, DW_AT_name("prewarninglevel"), DW_AT_symbol_name("_prewarninglevel")
	.dwattr DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$323, DW_AT_accessibility(DW_ACCESS_public)
DW$324	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$324, DW_AT_name("rpmlimit"), DW_AT_symbol_name("_rpmlimit")
	.dwattr DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr DW$324, DW_AT_accessibility(DW_ACCESS_public)
DW$325	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$325, DW_AT_name("dsss"), DW_AT_symbol_name("_dsss")
	.dwattr DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$325, DW_AT_accessibility(DW_ACCESS_public)
DW$326	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$326, DW_AT_name("slowdowncallevel"), DW_AT_symbol_name("_slowdowncallevel")
	.dwattr DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$326, DW_AT_accessibility(DW_ACCESS_public)
DW$327	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$327, DW_AT_name("alarmcallevel"), DW_AT_symbol_name("_alarmcallevel")
	.dwattr DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$327, DW_AT_accessibility(DW_ACCESS_public)
DW$328	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$328, DW_AT_name("cylinderalarmcallevel"), DW_AT_symbol_name("_cylinderalarmcallevel")
	.dwattr DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$328, DW_AT_accessibility(DW_ACCESS_public)
DW$329	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$329, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$329, DW_AT_accessibility(DW_ACCESS_public)
DW$330	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$330, DW_AT_name("iBarredVibrationSpeedLow"), DW_AT_symbol_name("_iBarredVibrationSpeedLow")
	.dwattr DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$330, DW_AT_accessibility(DW_ACCESS_public)
DW$331	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$331, DW_AT_name("iBarredVibrationSpeedHigh"), DW_AT_symbol_name("_iBarredVibrationSpeedHigh")
	.dwattr DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$331, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$40, DW_AT_name("tag_configstruct")
	.dwattr DW$T$40, DW_AT_byte_size(0x18)
DW$332	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$332, DW_AT_name("filter"), DW_AT_symbol_name("_filter")
	.dwattr DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$332, DW_AT_accessibility(DW_ACCESS_public)
DW$333	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$333, DW_AT_name("alarmenable"), DW_AT_symbol_name("_alarmenable")
	.dwattr DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$333, DW_AT_accessibility(DW_ACCESS_public)
DW$334	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$334, DW_AT_name("trendmax"), DW_AT_symbol_name("_trendmax")
	.dwattr DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$334, DW_AT_accessibility(DW_ACCESS_public)
DW$335	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$335, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$335, DW_AT_accessibility(DW_ACCESS_public)
DW$336	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$38)
	.dwattr DW$336, DW_AT_name("sdsettings"), DW_AT_symbol_name("_sdsettings")
	.dwattr DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$336, DW_AT_accessibility(DW_ACCESS_public)
DW$337	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$337, DW_AT_name("comms"), DW_AT_symbol_name("_comms")
	.dwattr DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$337, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40


DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$44, DW_AT_name("tag_loopcheckstruct")
	.dwattr DW$T$44, DW_AT_byte_size(0x10)
DW$338	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$338, DW_AT_name("min"), DW_AT_symbol_name("_min")
	.dwattr DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$338, DW_AT_accessibility(DW_ACCESS_public)
DW$339	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$339, DW_AT_name("max"), DW_AT_symbol_name("_max")
	.dwattr DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$339, DW_AT_accessibility(DW_ACCESS_public)
DW$340	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$43)
	.dwattr DW$340, DW_AT_name("last"), DW_AT_symbol_name("_last")
	.dwattr DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$340, DW_AT_accessibility(DW_ACCESS_public)
DW$341	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$341, DW_AT_name("value"), DW_AT_symbol_name("_value")
	.dwattr DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$341, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$44


DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$46, DW_AT_name("tag_offsetstruct")
	.dwattr DW$T$46, DW_AT_byte_size(0x1c)
DW$342	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$342, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$342, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$46


DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$48, DW_AT_name("tag_functionstruct")
	.dwattr DW$T$48, DW_AT_byte_size(0x08)
DW$343	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$343, DW_AT_name("enabled"), DW_AT_symbol_name("_enabled")
	.dwattr DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$343, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$48


DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$51, DW_AT_name("tag_speedcompstruct")
	.dwattr DW$T$51, DW_AT_byte_size(0x19)
DW$344	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$344, DW_AT_name("stageflag"), DW_AT_symbol_name("_stageflag")
	.dwattr DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$344, DW_AT_accessibility(DW_ACCESS_public)
DW$345	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$345, DW_AT_name("status"), DW_AT_symbol_name("_status")
	.dwattr DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$345, DW_AT_accessibility(DW_ACCESS_public)
DW$346	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$346, DW_AT_name("speedbands"), DW_AT_symbol_name("_speedbands")
	.dwattr DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$346, DW_AT_accessibility(DW_ACCESS_public)
DW$347	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$347, DW_AT_name("slopecoeff"), DW_AT_symbol_name("_slopecoeff")
	.dwattr DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$347, DW_AT_accessibility(DW_ACCESS_public)
DW$348	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$348, DW_AT_name("initialtimer"), DW_AT_symbol_name("_initialtimer")
	.dwattr DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$348, DW_AT_accessibility(DW_ACCESS_public)
DW$349	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$349, DW_AT_name("learningmodetimer"), DW_AT_symbol_name("_learningmodetimer")
	.dwattr DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$349, DW_AT_accessibility(DW_ACCESS_public)
DW$350	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$350, DW_AT_name("intervaltimer"), DW_AT_symbol_name("_intervaltimer")
	.dwattr DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$350, DW_AT_accessibility(DW_ACCESS_public)
DW$351	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$351, DW_AT_name("numsamples"), DW_AT_symbol_name("_numsamples")
	.dwattr DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$351, DW_AT_accessibility(DW_ACCESS_public)
DW$352	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$352, DW_AT_name("learningleft"), DW_AT_symbol_name("_learningleft")
	.dwattr DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$352, DW_AT_accessibility(DW_ACCESS_public)
DW$353	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$353, DW_AT_name("intervalleft"), DW_AT_symbol_name("_intervalleft")
	.dwattr DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$353, DW_AT_accessibility(DW_ACCESS_public)
DW$354	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$354, DW_AT_name("manappliedminsamples"), DW_AT_symbol_name("_manappliedminsamples")
	.dwattr DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$354, DW_AT_accessibility(DW_ACCESS_public)
DW$355	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$355, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$355, DW_AT_accessibility(DW_ACCESS_public)
DW$356	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$356, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$356, DW_AT_accessibility(DW_ACCESS_public)
DW$357	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$357, DW_AT_name("unused3"), DW_AT_symbol_name("_unused3")
	.dwattr DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$357, DW_AT_accessibility(DW_ACCESS_public)
DW$358	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$358, DW_AT_name("unused4"), DW_AT_symbol_name("_unused4")
	.dwattr DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$358, DW_AT_accessibility(DW_ACCESS_public)
DW$359	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$359, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$359, DW_AT_accessibility(DW_ACCESS_public)
DW$360	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$360, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$360, DW_AT_accessibility(DW_ACCESS_public)
DW$361	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$361, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$361, DW_AT_accessibility(DW_ACCESS_public)
DW$362	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$362, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$362, DW_AT_accessibility(DW_ACCESS_public)
DW$363	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$363, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$363, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$51


DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$53, DW_AT_name("tag_sdsettingsstruct")
	.dwattr DW$T$53, DW_AT_byte_size(0x04)
DW$364	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$364, DW_AT_name("present"), DW_AT_symbol_name("_present")
	.dwattr DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$364, DW_AT_accessibility(DW_ACCESS_public)
DW$365	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$365, DW_AT_name("sequence"), DW_AT_symbol_name("_sequence")
	.dwattr DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$365, DW_AT_accessibility(DW_ACCESS_public)
DW$366	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$366, DW_AT_name("errornum"), DW_AT_symbol_name("_errornum")
	.dwattr DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$366, DW_AT_accessibility(DW_ACCESS_public)
DW$367	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$52)
	.dwattr DW$367, DW_AT_name("readstatus"), DW_AT_symbol_name("_readstatus")
	.dwattr DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$367, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$53


DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$54, DW_AT_name("tag_alarmsstruct")
	.dwattr DW$T$54, DW_AT_byte_size(0x01)
DW$368	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$368, DW_AT_name("slavefailure"), DW_AT_symbol_name("_slavefailure")
	.dwattr DW$368, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$368, DW_AT_accessibility(DW_ACCESS_public)
DW$369	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$369, DW_AT_name("slavefailurelatched"), DW_AT_symbol_name("_slavefailurelatched")
	.dwattr DW$369, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$369, DW_AT_accessibility(DW_ACCESS_public)
DW$370	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$370, DW_AT_name("framfailure"), DW_AT_symbol_name("_framfailure")
	.dwattr DW$370, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$370, DW_AT_accessibility(DW_ACCESS_public)
DW$371	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$371, DW_AT_name("framfailurelatched"), DW_AT_symbol_name("_framfailurelatched")
	.dwattr DW$371, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$371, DW_AT_accessibility(DW_ACCESS_public)
DW$372	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$372, DW_AT_name("pccommsfailure"), DW_AT_symbol_name("_pccommsfailure")
	.dwattr DW$372, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$372, DW_AT_accessibility(DW_ACCESS_public)
DW$373	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$373, DW_AT_name("pccommsfailurelatched"), DW_AT_symbol_name("_pccommsfailurelatched")
	.dwattr DW$373, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$373, DW_AT_accessibility(DW_ACCESS_public)
DW$374	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$374, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$374, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$374, DW_AT_accessibility(DW_ACCESS_public)
DW$375	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$375, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$375, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$375, DW_AT_accessibility(DW_ACCESS_public)
DW$376	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$376, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$376, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$376, DW_AT_accessibility(DW_ACCESS_public)
DW$377	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$377, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$377, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$377, DW_AT_accessibility(DW_ACCESS_public)
DW$378	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$378, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$378, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$378, DW_AT_accessibility(DW_ACCESS_public)
DW$379	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$379, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$379, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$379, DW_AT_accessibility(DW_ACCESS_public)
DW$380	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$380, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$380, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$380, DW_AT_accessibility(DW_ACCESS_public)
DW$381	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$381, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$381, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$381, DW_AT_accessibility(DW_ACCESS_public)
DW$382	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$382, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$382, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$382, DW_AT_accessibility(DW_ACCESS_public)
DW$383	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$383, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$383, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$383, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$54


DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$55, DW_AT_name("tag_wiosettingsstruct")
	.dwattr DW$T$55, DW_AT_byte_size(0x0a)
DW$384	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$384, DW_AT_name("enabled"), DW_AT_symbol_name("_enabled")
	.dwattr DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$384, DW_AT_accessibility(DW_ACCESS_public)
DW$385	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$385, DW_AT_name("alarmmask"), DW_AT_symbol_name("_alarmmask")
	.dwattr DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$385, DW_AT_accessibility(DW_ACCESS_public)
DW$386	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$386, DW_AT_name("alarmupperlevel"), DW_AT_symbol_name("_alarmupperlevel")
	.dwattr DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$386, DW_AT_accessibility(DW_ACCESS_public)
DW$387	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$387, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$387, DW_AT_accessibility(DW_ACCESS_public)
DW$388	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$388, DW_AT_name("hysteresis"), DW_AT_symbol_name("_hysteresis")
	.dwattr DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$388, DW_AT_accessibility(DW_ACCESS_public)
DW$389	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$389, DW_AT_name("scaledmin"), DW_AT_symbol_name("_scaledmin")
	.dwattr DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$389, DW_AT_accessibility(DW_ACCESS_public)
DW$390	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$390, DW_AT_name("scaledmax"), DW_AT_symbol_name("_scaledmax")
	.dwattr DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$390, DW_AT_accessibility(DW_ACCESS_public)
DW$391	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$391, DW_AT_name("units"), DW_AT_symbol_name("_units")
	.dwattr DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$391, DW_AT_accessibility(DW_ACCESS_public)
DW$392	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$392, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$392, DW_AT_accessibility(DW_ACCESS_public)
DW$393	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$393, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$393, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$55


DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$57, DW_AT_name("tag_rtcbatstruct")
	.dwattr DW$T$57, DW_AT_byte_size(0x02)
DW$394	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$394, DW_AT_name("mV"), DW_AT_symbol_name("_mV")
	.dwattr DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$394, DW_AT_accessibility(DW_ACCESS_public)
DW$395	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$56)
	.dwattr DW$395, DW_AT_name("alarms"), DW_AT_symbol_name("_alarms")
	.dwattr DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$395, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$57


DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$59, DW_AT_byte_size(0x13)
DW$396	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$396, DW_AT_name("count"), DW_AT_symbol_name("_count")
	.dwattr DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$396, DW_AT_accessibility(DW_ACCESS_public)
DW$397	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$397, DW_AT_name("ready"), DW_AT_symbol_name("_ready")
	.dwattr DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$397, DW_AT_accessibility(DW_ACCESS_public)
DW$398	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$398, DW_AT_name("previouscount"), DW_AT_symbol_name("_previouscount")
	.dwattr DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$398, DW_AT_accessibility(DW_ACCESS_public)
DW$399	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$399, DW_AT_name("sampleperiod"), DW_AT_symbol_name("_sampleperiod")
	.dwattr DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$399, DW_AT_accessibility(DW_ACCESS_public)
DW$400	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$400, DW_AT_name("period"), DW_AT_symbol_name("_period")
	.dwattr DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$400, DW_AT_accessibility(DW_ACCESS_public)
DW$401	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$58)
	.dwattr DW$401, DW_AT_name("stable"), DW_AT_symbol_name("_stable")
	.dwattr DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$401, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$59

DW$402	.dwtag  DW_TAG_far_type
	.dwattr DW$402, DW_AT_type(*DW$T$156)
DW$T$157	.dwtag  DW_TAG_const_type
	.dwattr DW$T$157, DW_AT_type(*DW$402)
DW$T$64	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$64, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$64, DW_AT_byte_size(0x01)
DW$403	.dwtag  DW_TAG_far_type
	.dwattr DW$403, DW_AT_type(*DW$T$64)
DW$T$80	.dwtag  DW_TAG_const_type
	.dwattr DW$T$80, DW_AT_type(*DW$403)

DW$T$45	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$45, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$45, DW_AT_byte_size(0x1c)
DW$404	.dwtag  DW_TAG_subrange_type
	.dwattr DW$404, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$45


DW$T$58	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$58, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$58, DW_AT_byte_size(0x0e)
DW$405	.dwtag  DW_TAG_subrange_type
	.dwattr DW$405, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$58


DW$T$29	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$29, DW_AT_byte_size(0x0e)
DW$406	.dwtag  DW_TAG_subrange_type
	.dwattr DW$406, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$29


DW$T$50	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$50, DW_AT_byte_size(0x06)
DW$407	.dwtag  DW_TAG_subrange_type
	.dwattr DW$407, DW_AT_upper_bound(0x02)
DW$408	.dwtag  DW_TAG_subrange_type
	.dwattr DW$408, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$50


DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$21, DW_AT_name("taggpdport")
	.dwattr DW$T$21, DW_AT_byte_size(0x01)
DW$409	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$409, DW_AT_name("selunion"), DW_AT_symbol_name("_selunion")
	.dwattr DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$409, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21


DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_byte_size(0x02)
DW$410	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$410, DW_AT_name("enb"), DW_AT_symbol_name("_enb")
	.dwattr DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$410, DW_AT_accessibility(DW_ACCESS_public)
DW$411	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$411, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$411, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$25, DW_AT_byte_size(0x03)
DW$412	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$412, DW_AT_name("yrmnth"), DW_AT_symbol_name("_yrmnth")
	.dwattr DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$412, DW_AT_accessibility(DW_ACCESS_public)
DW$413	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$413, DW_AT_name("datehrs"), DW_AT_symbol_name("_datehrs")
	.dwattr DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$413, DW_AT_accessibility(DW_ACCESS_public)
DW$414	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$414, DW_AT_name("minssecs"), DW_AT_symbol_name("_minssecs")
	.dwattr DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$414, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_byte_size(0x03)
DW$415	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$415, DW_AT_name("yrmnth"), DW_AT_symbol_name("_yrmnth")
	.dwattr DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$415, DW_AT_accessibility(DW_ACCESS_public)
DW$416	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$416, DW_AT_name("datehrs"), DW_AT_symbol_name("_datehrs")
	.dwattr DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$416, DW_AT_accessibility(DW_ACCESS_public)
DW$417	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$417, DW_AT_name("minssecs"), DW_AT_symbol_name("_minssecs")
	.dwattr DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$417, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$30, DW_AT_name("tag_timers")
	.dwattr DW$T$30, DW_AT_byte_size(0x4c)
DW$418	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$418, DW_AT_name("update"), DW_AT_symbol_name("_update")
	.dwattr DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$418, DW_AT_accessibility(DW_ACCESS_public)
DW$419	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$419, DW_AT_name("general"), DW_AT_symbol_name("_general")
	.dwattr DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$419, DW_AT_accessibility(DW_ACCESS_public)
DW$420	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$420, DW_AT_name("rxcharTimeout"), DW_AT_symbol_name("_rxcharTimeout")
	.dwattr DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$420, DW_AT_accessibility(DW_ACCESS_public)
DW$421	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$421, DW_AT_name("wiorxtimeout"), DW_AT_symbol_name("_wiorxtimeout")
	.dwattr DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$421, DW_AT_accessibility(DW_ACCESS_public)
DW$422	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$422, DW_AT_name("wiomasterrxtimeout"), DW_AT_symbol_name("_wiomasterrxtimeout")
	.dwattr DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$422, DW_AT_accessibility(DW_ACCESS_public)
DW$423	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$423, DW_AT_name("masterrxtimeout"), DW_AT_symbol_name("_masterrxtimeout")
	.dwattr DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$423, DW_AT_accessibility(DW_ACCESS_public)
DW$424	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$424, DW_AT_name("slaverxtimeout"), DW_AT_symbol_name("_slaverxtimeout")
	.dwattr DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$424, DW_AT_accessibility(DW_ACCESS_public)
DW$425	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$425, DW_AT_name("sectick"), DW_AT_symbol_name("_sectick")
	.dwattr DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$425, DW_AT_accessibility(DW_ACCESS_public)
DW$426	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$426, DW_AT_name("ledflash"), DW_AT_symbol_name("_ledflash")
	.dwattr DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$426, DW_AT_accessibility(DW_ACCESS_public)
DW$427	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$427, DW_AT_name("prtsettle"), DW_AT_symbol_name("_prtsettle")
	.dwattr DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$427, DW_AT_accessibility(DW_ACCESS_public)
DW$428	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$428, DW_AT_name("chantimeout"), DW_AT_symbol_name("_chantimeout")
	.dwattr DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$428, DW_AT_accessibility(DW_ACCESS_public)
DW$429	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$429, DW_AT_name("chanwait"), DW_AT_symbol_name("_chanwait")
	.dwattr DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$429, DW_AT_accessibility(DW_ACCESS_public)
DW$430	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$430, DW_AT_name("pcrxtimeout"), DW_AT_symbol_name("_pcrxtimeout")
	.dwattr DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$430, DW_AT_accessibility(DW_ACCESS_public)
DW$431	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$431, DW_AT_name("pctxtimeout"), DW_AT_symbol_name("_pctxtimeout")
	.dwattr DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$431, DW_AT_accessibility(DW_ACCESS_public)
DW$432	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$432, DW_AT_name("spistatus"), DW_AT_symbol_name("_spistatus")
	.dwattr DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$432, DW_AT_accessibility(DW_ACCESS_public)
DW$433	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$433, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$433, DW_AT_accessibility(DW_ACCESS_public)
DW$434	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$434, DW_AT_name("slaverqst"), DW_AT_symbol_name("_slaverqst")
	.dwattr DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$434, DW_AT_accessibility(DW_ACCESS_public)
DW$435	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$435, DW_AT_name("mastermodebutton"), DW_AT_symbol_name("_mastermodebutton")
	.dwattr DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$435, DW_AT_accessibility(DW_ACCESS_public)
DW$436	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$436, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$436, DW_AT_accessibility(DW_ACCESS_public)
DW$437	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$437, DW_AT_name("calibrate"), DW_AT_symbol_name("_calibrate")
	.dwattr DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$437, DW_AT_accessibility(DW_ACCESS_public)
DW$438	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$438, DW_AT_name("calibrate2"), DW_AT_symbol_name("_calibrate2")
	.dwattr DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$438, DW_AT_accessibility(DW_ACCESS_public)
DW$439	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$439, DW_AT_name("alarmreflash"), DW_AT_symbol_name("_alarmreflash")
	.dwattr DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$439, DW_AT_accessibility(DW_ACCESS_public)
DW$440	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$440, DW_AT_name("slowdownreflash"), DW_AT_symbol_name("_slowdownreflash")
	.dwattr DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr DW$440, DW_AT_accessibility(DW_ACCESS_public)
DW$441	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$441, DW_AT_name("wiorqst"), DW_AT_symbol_name("_wiorqst")
	.dwattr DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$441, DW_AT_accessibility(DW_ACCESS_public)
DW$442	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$442, DW_AT_name("rpmtimeout"), DW_AT_symbol_name("_rpmtimeout")
	.dwattr DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr DW$442, DW_AT_accessibility(DW_ACCESS_public)
DW$443	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$443, DW_AT_name("analogoor"), DW_AT_symbol_name("_analogoor")
	.dwattr DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$443, DW_AT_accessibility(DW_ACCESS_public)
DW$444	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$444, DW_AT_name("motioncal"), DW_AT_symbol_name("_motioncal")
	.dwattr DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr DW$444, DW_AT_accessibility(DW_ACCESS_public)
DW$445	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$445, DW_AT_name("framcheck"), DW_AT_symbol_name("_framcheck")
	.dwattr DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$445, DW_AT_accessibility(DW_ACCESS_public)
DW$446	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$446, DW_AT_name("pcmodbus"), DW_AT_symbol_name("_pcmodbus")
	.dwattr DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr DW$446, DW_AT_accessibility(DW_ACCESS_public)
DW$447	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$447, DW_AT_name("statusreflash"), DW_AT_symbol_name("_statusreflash")
	.dwattr DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$447, DW_AT_accessibility(DW_ACCESS_public)
DW$448	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$448, DW_AT_name("prewarn"), DW_AT_symbol_name("_prewarn")
	.dwattr DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$448, DW_AT_accessibility(DW_ACCESS_public)
DW$449	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$449, DW_AT_name("clocktofram"), DW_AT_symbol_name("_clocktofram")
	.dwattr DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr DW$449, DW_AT_accessibility(DW_ACCESS_public)
DW$450	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$450, DW_AT_name("debugrapidfast"), DW_AT_symbol_name("_debugrapidfast")
	.dwattr DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x3f]
	.dwattr DW$450, DW_AT_accessibility(DW_ACCESS_public)
DW$451	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$451, DW_AT_name("debugupdate"), DW_AT_symbol_name("_debugupdate")
	.dwattr DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$451, DW_AT_accessibility(DW_ACCESS_public)
DW$452	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$452, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr DW$452, DW_AT_accessibility(DW_ACCESS_public)
DW$453	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$453, DW_AT_name("startup"), DW_AT_symbol_name("_startup")
	.dwattr DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr DW$453, DW_AT_accessibility(DW_ACCESS_public)
DW$454	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$454, DW_AT_name("analogsettle"), DW_AT_symbol_name("_analogsettle")
	.dwattr DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr DW$454, DW_AT_accessibility(DW_ACCESS_public)
DW$455	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$455, DW_AT_name("reprogram"), DW_AT_symbol_name("_reprogram")
	.dwattr DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr DW$455, DW_AT_accessibility(DW_ACCESS_public)
DW$456	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$456, DW_AT_name("reprogramtimeout"), DW_AT_symbol_name("_reprogramtimeout")
	.dwattr DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr DW$456, DW_AT_accessibility(DW_ACCESS_public)
DW$457	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$457, DW_AT_name("dcmodestayalive"), DW_AT_symbol_name("_dcmodestayalive")
	.dwattr DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$457, DW_AT_accessibility(DW_ACCESS_public)
DW$458	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$458, DW_AT_name("biteventchange"), DW_AT_symbol_name("_biteventchange")
	.dwattr DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr DW$458, DW_AT_accessibility(DW_ACCESS_public)
DW$459	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$459, DW_AT_name("iSensorReplace"), DW_AT_symbol_name("_iSensorReplace")
	.dwattr DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr DW$459, DW_AT_accessibility(DW_ACCESS_public)
DW$460	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$460, DW_AT_name("deltarpm15Delay"), DW_AT_symbol_name("_deltarpm15Delay")
	.dwattr DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr DW$460, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30


DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$31, DW_AT_byte_size(0x01)
DW$461	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$461, DW_AT_name("newval"), DW_AT_symbol_name("_newval")
	.dwattr DW$461, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$461, DW_AT_accessibility(DW_ACCESS_public)
DW$462	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$462, DW_AT_name("calmode"), DW_AT_symbol_name("_calmode")
	.dwattr DW$462, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$462, DW_AT_accessibility(DW_ACCESS_public)
DW$463	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$463, DW_AT_name("startcal"), DW_AT_symbol_name("_startcal")
	.dwattr DW$463, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$463, DW_AT_accessibility(DW_ACCESS_public)
DW$464	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$464, DW_AT_name("newvalspu2"), DW_AT_symbol_name("_newvalspu2")
	.dwattr DW$464, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$464, DW_AT_accessibility(DW_ACCESS_public)
DW$465	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$465, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$465, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$465, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_byte_size(0x01)
DW$466	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$466, DW_AT_name("slowdowncntrl"), DW_AT_symbol_name("_slowdowncntrl")
	.dwattr DW$466, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$466, DW_AT_accessibility(DW_ACCESS_public)
DW$467	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$467, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$467, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0f)
	.dwattr DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$467, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$34, DW_AT_byte_size(0x01)
DW$468	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$468, DW_AT_name("inputtap"), DW_AT_symbol_name("_inputtap")
	.dwattr DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$468, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34


DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$35, DW_AT_byte_size(0x01)
DW$469	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$469, DW_AT_name("bitmap"), DW_AT_symbol_name("_bitmap")
	.dwattr DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$469, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35


DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$36, DW_AT_byte_size(0x01)
DW$470	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$470, DW_AT_name("graphvalue"), DW_AT_symbol_name("_graphvalue")
	.dwattr DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$470, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$36


DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$37, DW_AT_byte_size(0x03)
DW$471	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$471, DW_AT_name("chanlowthreshold"), DW_AT_symbol_name("_chanlowthreshold")
	.dwattr DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$471, DW_AT_accessibility(DW_ACCESS_public)
DW$472	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$472, DW_AT_name("chanhighthreshold"), DW_AT_symbol_name("_chanhighthreshold")
	.dwattr DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$472, DW_AT_accessibility(DW_ACCESS_public)
DW$473	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$473, DW_AT_name("sensorscalingfactor"), DW_AT_symbol_name("_sensorscalingfactor")
	.dwattr DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$473, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$37


DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_byte_size(0x02)
DW$474	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$474, DW_AT_name("shortlrate"), DW_AT_symbol_name("_shortlrate")
	.dwattr DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$474, DW_AT_accessibility(DW_ACCESS_public)
DW$475	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$475, DW_AT_name("longlrate"), DW_AT_symbol_name("_longlrate")
	.dwattr DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$475, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38


DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$39, DW_AT_byte_size(0x10)
DW$476	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$476, DW_AT_name("wiorequest"), DW_AT_symbol_name("_wiorequest")
	.dwattr DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$476, DW_AT_accessibility(DW_ACCESS_public)
DW$477	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$477, DW_AT_name("wiocancelled"), DW_AT_symbol_name("_wiocancelled")
	.dwattr DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$477, DW_AT_accessibility(DW_ACCESS_public)
DW$478	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$478, DW_AT_name("wioreceived"), DW_AT_symbol_name("_wioreceived")
	.dwattr DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$478, DW_AT_accessibility(DW_ACCESS_public)
DW$479	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$479, DW_AT_name("slaverequest"), DW_AT_symbol_name("_slaverequest")
	.dwattr DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$479, DW_AT_accessibility(DW_ACCESS_public)
DW$480	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$480, DW_AT_name("slavereceived"), DW_AT_symbol_name("_slavereceived")
	.dwattr DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$480, DW_AT_accessibility(DW_ACCESS_public)
DW$481	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$481, DW_AT_name("slaveretry"), DW_AT_symbol_name("_slaveretry")
	.dwattr DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$481, DW_AT_accessibility(DW_ACCESS_public)
DW$482	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$482, DW_AT_name("pcrequest"), DW_AT_symbol_name("_pcrequest")
	.dwattr DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$482, DW_AT_accessibility(DW_ACCESS_public)
DW$483	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$483, DW_AT_name("pcreqtimeout"), DW_AT_symbol_name("_pcreqtimeout")
	.dwattr DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$483, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39


DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$41, DW_AT_byte_size(0x06)
DW$484	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$484, DW_AT_name("hours"), DW_AT_symbol_name("_hours")
	.dwattr DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$484, DW_AT_accessibility(DW_ACCESS_public)
DW$485	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$485, DW_AT_name("minutes"), DW_AT_symbol_name("_minutes")
	.dwattr DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$485, DW_AT_accessibility(DW_ACCESS_public)
DW$486	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$486, DW_AT_name("seconds"), DW_AT_symbol_name("_seconds")
	.dwattr DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$486, DW_AT_accessibility(DW_ACCESS_public)
DW$487	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$487, DW_AT_name("value"), DW_AT_symbol_name("_value")
	.dwattr DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$487, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$41


DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$42, DW_AT_byte_size(0x06)
DW$488	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$488, DW_AT_name("hours"), DW_AT_symbol_name("_hours")
	.dwattr DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$488, DW_AT_accessibility(DW_ACCESS_public)
DW$489	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$489, DW_AT_name("minutes"), DW_AT_symbol_name("_minutes")
	.dwattr DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$489, DW_AT_accessibility(DW_ACCESS_public)
DW$490	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$490, DW_AT_name("seconds"), DW_AT_symbol_name("_seconds")
	.dwattr DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$490, DW_AT_accessibility(DW_ACCESS_public)
DW$491	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$491, DW_AT_name("value"), DW_AT_symbol_name("_value")
	.dwattr DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$491, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$42


DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$43, DW_AT_byte_size(0x02)
DW$492	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$492, DW_AT_name("value"), DW_AT_symbol_name("_value")
	.dwattr DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$492, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$43


DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$47, DW_AT_byte_size(0x08)
DW$493	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$493, DW_AT_name("applyoffset"), DW_AT_symbol_name("_applyoffset")
	.dwattr DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$493, DW_AT_accessibility(DW_ACCESS_public)
DW$494	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$494, DW_AT_name("sensorcompensation"), DW_AT_symbol_name("_sensorcompensation")
	.dwattr DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$494, DW_AT_accessibility(DW_ACCESS_public)
DW$495	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$495, DW_AT_name("sensornoiseremoval"), DW_AT_symbol_name("_sensornoiseremoval")
	.dwattr DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$495, DW_AT_accessibility(DW_ACCESS_public)
DW$496	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$496, DW_AT_name("sensordeviation"), DW_AT_symbol_name("_sensordeviation")
	.dwattr DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$496, DW_AT_accessibility(DW_ACCESS_public)
DW$497	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$497, DW_AT_name("cylinderaverage"), DW_AT_symbol_name("_cylinderaverage")
	.dwattr DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$497, DW_AT_accessibility(DW_ACCESS_public)
DW$498	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$498, DW_AT_name("cylinderdeviation"), DW_AT_symbol_name("_cylinderdeviation")
	.dwattr DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$498, DW_AT_accessibility(DW_ACCESS_public)
DW$499	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$499, DW_AT_name("useroughcal"), DW_AT_symbol_name("_useroughcal")
	.dwattr DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$499, DW_AT_accessibility(DW_ACCESS_public)
DW$500	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$500, DW_AT_name("vincheckenabled"), DW_AT_symbol_name("_vincheckenabled")
	.dwattr DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$500, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$47


DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$52, DW_AT_byte_size(0x01)
DW$501	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$501, DW_AT_name("settings"), DW_AT_symbol_name("_settings")
	.dwattr DW$501, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$501, DW_AT_accessibility(DW_ACCESS_public)
DW$502	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$502, DW_AT_name("sensorstatus"), DW_AT_symbol_name("_sensorstatus")
	.dwattr DW$502, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$502, DW_AT_accessibility(DW_ACCESS_public)
DW$503	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$503, DW_AT_name("offsets"), DW_AT_symbol_name("_offsets")
	.dwattr DW$503, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$503, DW_AT_accessibility(DW_ACCESS_public)
DW$504	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$504, DW_AT_name("mantable"), DW_AT_symbol_name("_mantable")
	.dwattr DW$504, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$504, DW_AT_accessibility(DW_ACCESS_public)
DW$505	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$505, DW_AT_name("calibtd"), DW_AT_symbol_name("_calibtd")
	.dwattr DW$505, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$505, DW_AT_accessibility(DW_ACCESS_public)
DW$506	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$506, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$506, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$506, DW_AT_accessibility(DW_ACCESS_public)
DW$507	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$507, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$507, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$507, DW_AT_accessibility(DW_ACCESS_public)
DW$508	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$508, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$508, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$508, DW_AT_accessibility(DW_ACCESS_public)
DW$509	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$509, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$509, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$509, DW_AT_accessibility(DW_ACCESS_public)
DW$510	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$510, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$510, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$510, DW_AT_accessibility(DW_ACCESS_public)
DW$511	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$511, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$511, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$511, DW_AT_accessibility(DW_ACCESS_public)
DW$512	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$512, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$512, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$512, DW_AT_accessibility(DW_ACCESS_public)
DW$513	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$513, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$513, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$513, DW_AT_accessibility(DW_ACCESS_public)
DW$514	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$514, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$514, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$514, DW_AT_accessibility(DW_ACCESS_public)
DW$515	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$515, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$515, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$515, DW_AT_accessibility(DW_ACCESS_public)
DW$516	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$516, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$516, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$516, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$52


DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$56, DW_AT_byte_size(0x01)
DW$517	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$517, DW_AT_name("low"), DW_AT_symbol_name("_low")
	.dwattr DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$517, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$56

DW$T$156	.dwtag  DW_TAG_typedef, DW_AT_name("configcheckstruct"), DW_AT_type(*DW$T$61)
	.dwattr DW$T$156, DW_AT_language(DW_LANG_C)

DW$T$20	.dwtag  DW_TAG_union_type
	.dwattr DW$T$20, DW_AT_byte_size(0x01)
DW$518	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$518, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$518, DW_AT_accessibility(DW_ACCESS_public)
DW$519	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$519, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$519, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$61, DW_AT_name("tag_configcheckstruct")
	.dwattr DW$T$61, DW_AT_byte_size(0x06)
DW$520	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$520, DW_AT_name("lowlim"), DW_AT_symbol_name("_lowlim")
	.dwattr DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$520, DW_AT_accessibility(DW_ACCESS_public)
DW$521	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$521, DW_AT_name("hilim"), DW_AT_symbol_name("_hilim")
	.dwattr DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$521, DW_AT_accessibility(DW_ACCESS_public)
DW$522	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$522, DW_AT_name("defaultval"), DW_AT_symbol_name("_defaultval")
	.dwattr DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$522, DW_AT_accessibility(DW_ACCESS_public)
DW$523	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$60)
	.dwattr DW$523, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$523, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$61


DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$19, DW_AT_byte_size(0x01)
DW$524	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$524, DW_AT_name("modeswitch"), DW_AT_symbol_name("_modeswitch")
	.dwattr DW$524, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$524, DW_AT_accessibility(DW_ACCESS_public)
DW$525	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$525, DW_AT_name("led1"), DW_AT_symbol_name("_led1")
	.dwattr DW$525, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$525, DW_AT_accessibility(DW_ACCESS_public)
DW$526	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$526, DW_AT_name("bit2"), DW_AT_symbol_name("_bit2")
	.dwattr DW$526, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$526, DW_AT_accessibility(DW_ACCESS_public)
DW$527	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$527, DW_AT_name("bit3"), DW_AT_symbol_name("_bit3")
	.dwattr DW$527, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$527, DW_AT_accessibility(DW_ACCESS_public)
DW$528	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$528, DW_AT_name("bit4"), DW_AT_symbol_name("_bit4")
	.dwattr DW$528, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$528, DW_AT_accessibility(DW_ACCESS_public)
DW$529	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$529, DW_AT_name("ccselect1"), DW_AT_symbol_name("_ccselect1")
	.dwattr DW$529, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$529, DW_AT_accessibility(DW_ACCESS_public)
DW$530	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$530, DW_AT_name("ccselect2"), DW_AT_symbol_name("_ccselect2")
	.dwattr DW$530, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$530, DW_AT_accessibility(DW_ACCESS_public)
DW$531	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$531, DW_AT_name("bit7"), DW_AT_symbol_name("_bit7")
	.dwattr DW$531, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$531, DW_AT_accessibility(DW_ACCESS_public)
DW$532	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$532, DW_AT_name("bit8"), DW_AT_symbol_name("_bit8")
	.dwattr DW$532, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$532, DW_AT_accessibility(DW_ACCESS_public)
DW$533	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$533, DW_AT_name("bit9"), DW_AT_symbol_name("_bit9")
	.dwattr DW$533, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$533, DW_AT_accessibility(DW_ACCESS_public)
DW$534	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$534, DW_AT_name("bit10"), DW_AT_symbol_name("_bit10")
	.dwattr DW$534, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$534, DW_AT_accessibility(DW_ACCESS_public)
DW$535	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$535, DW_AT_name("bit11"), DW_AT_symbol_name("_bit11")
	.dwattr DW$535, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$535, DW_AT_accessibility(DW_ACCESS_public)
DW$536	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$536, DW_AT_name("bit12"), DW_AT_symbol_name("_bit12")
	.dwattr DW$536, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$536, DW_AT_accessibility(DW_ACCESS_public)
DW$537	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$537, DW_AT_name("bit13"), DW_AT_symbol_name("_bit13")
	.dwattr DW$537, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$537, DW_AT_accessibility(DW_ACCESS_public)
DW$538	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$538, DW_AT_name("bit14"), DW_AT_symbol_name("_bit14")
	.dwattr DW$538, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$538, DW_AT_accessibility(DW_ACCESS_public)
DW$539	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$539, DW_AT_name("bit15"), DW_AT_symbol_name("_bit15")
	.dwattr DW$539, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$539, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$19


	.dwattr DW$119, DW_AT_external(0x01)
	.dwattr DW$196, DW_AT_external(0x01)
	.dwattr DW$196, DW_AT_type(*DW$T$11)
	.dwattr DW$193, DW_AT_external(0x01)
	.dwattr DW$193, DW_AT_type(*DW$T$11)
	.dwattr DW$190, DW_AT_external(0x01)
	.dwattr DW$190, DW_AT_type(*DW$T$11)
	.dwattr DW$147, DW_AT_external(0x01)
	.dwattr DW$159, DW_AT_external(0x01)
	.dwattr DW$114, DW_AT_external(0x01)
	.dwattr DW$114, DW_AT_type(*DW$T$11)
	.dwattr DW$198, DW_AT_external(0x01)
	.dwattr DW$187, DW_AT_external(0x01)
	.dwattr DW$187, DW_AT_type(*DW$T$10)
	.dwattr DW$207, DW_AT_external(0x01)
	.dwattr DW$93, DW_AT_external(0x01)
	.dwattr DW$106, DW_AT_external(0x01)
	.dwattr DW$178, DW_AT_external(0x01)
	.dwattr DW$176, DW_AT_external(0x01)
	.dwattr DW$181, DW_AT_external(0x01)
	.dwattr DW$96, DW_AT_external(0x01)
	.dwattr DW$112, DW_AT_external(0x01)
	.dwattr DW$112, DW_AT_type(*DW$T$10)
	.dwattr DW$89, DW_AT_external(0x01)
	.dwattr DW$173, DW_AT_external(0x01)
	.dwattr DW$153, DW_AT_external(0x01)
	.dwattr DW$99, DW_AT_external(0x01)
	.dwattr DW$202, DW_AT_external(0x01)
	.dwattr DW$83, DW_AT_external(0x01)
	.dwattr DW$160, DW_AT_external(0x01)
	.dwattr DW$179, DW_AT_external(0x01)
	.dwattr DW$168, DW_AT_external(0x01)
	.dwattr DW$164, DW_AT_external(0x01)
	.dwattr DW$180, DW_AT_external(0x01)
	.dwattr DW$203, DW_AT_external(0x01)
	.dwattr DW$201, DW_AT_external(0x01)
	.dwattr DW$105, DW_AT_external(0x01)
	.dwattr DW$94, DW_AT_external(0x01)
	.dwattr DW$84, DW_AT_external(0x01)
	.dwattr DW$85, DW_AT_external(0x01)
	.dwattr DW$88, DW_AT_external(0x01)
	.dwattr DW$90, DW_AT_external(0x01)
	.dwattr DW$95, DW_AT_external(0x01)
	.dwattr DW$133, DW_AT_external(0x01)
	.dwattr DW$121, DW_AT_external(0x01)
	.dwattr DW$182, DW_AT_external(0x01)
	.dwattr DW$206, DW_AT_external(0x01)
	.dwattr DW$200, DW_AT_external(0x01)
	.dwattr DW$104, DW_AT_external(0x01)
	.dwattr DW$177, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$540	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$540, DW_AT_location[DW_OP_reg0]
DW$541	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$541, DW_AT_location[DW_OP_reg1]
DW$542	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$542, DW_AT_location[DW_OP_reg2]
DW$543	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$543, DW_AT_location[DW_OP_reg3]
DW$544	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$544, DW_AT_location[DW_OP_reg4]
DW$545	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$545, DW_AT_location[DW_OP_reg5]
DW$546	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$546, DW_AT_location[DW_OP_reg6]
DW$547	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$547, DW_AT_location[DW_OP_reg7]
DW$548	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$548, DW_AT_location[DW_OP_reg8]
DW$549	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$549, DW_AT_location[DW_OP_reg9]
DW$550	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$550, DW_AT_location[DW_OP_reg10]
DW$551	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$551, DW_AT_location[DW_OP_reg11]
DW$552	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$552, DW_AT_location[DW_OP_reg12]
DW$553	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$553, DW_AT_location[DW_OP_reg13]
DW$554	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$554, DW_AT_location[DW_OP_reg14]
DW$555	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$555, DW_AT_location[DW_OP_reg15]
DW$556	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$556, DW_AT_location[DW_OP_reg16]
DW$557	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$557, DW_AT_location[DW_OP_reg17]
DW$558	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$558, DW_AT_location[DW_OP_reg18]
DW$559	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$559, DW_AT_location[DW_OP_reg19]
DW$560	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$560, DW_AT_location[DW_OP_reg20]
DW$561	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$561, DW_AT_location[DW_OP_reg21]
DW$562	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$562, DW_AT_location[DW_OP_reg22]
DW$563	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$563, DW_AT_location[DW_OP_reg23]
DW$564	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$564, DW_AT_location[DW_OP_reg24]
DW$565	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$565, DW_AT_location[DW_OP_reg25]
DW$566	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$566, DW_AT_location[DW_OP_reg26]
DW$567	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$567, DW_AT_location[DW_OP_reg27]
DW$568	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$568, DW_AT_location[DW_OP_reg28]
DW$569	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$569, DW_AT_location[DW_OP_reg29]
DW$570	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$570, DW_AT_location[DW_OP_reg30]
DW$571	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$571, DW_AT_location[DW_OP_reg31]
DW$572	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$572, DW_AT_location[DW_OP_regx 0x20]
DW$573	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$573, DW_AT_location[DW_OP_regx 0x21]
DW$574	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$574, DW_AT_location[DW_OP_regx 0x22]
DW$575	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$575, DW_AT_location[DW_OP_regx 0x23]
DW$576	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$576, DW_AT_location[DW_OP_regx 0x24]
DW$577	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$577, DW_AT_location[DW_OP_regx 0x25]
DW$578	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$578, DW_AT_location[DW_OP_regx 0x26]
DW$579	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$579, DW_AT_location[DW_OP_regx 0x27]
DW$580	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$580, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

