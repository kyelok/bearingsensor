;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Thu Aug 18 12:16:20 2016                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("mancal.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)
;**************************************************************
;* CINIT RECORDS                                              *
;**************************************************************
	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_bReadyToSampling+0,32
	.field  	0,16			; _bReadyToSampling @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_bSamplingFinished+0,32
	.field  	0,16			; _bSamplingFinished @ 0


DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("sprintf"), DW_AT_symbol_name("_sprintf")
	.dwattr DW$1, DW_AT_type(*DW$T$10)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$83)
DW$4	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$1


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("memset"), DW_AT_symbol_name("_memset")
	.dwattr DW$5, DW_AT_type(*DW$T$3)
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$56)
	.dwendtag DW$5


DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("DebugStringOut"), DW_AT_symbol_name("_DebugStringOut")
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
	.dwendtag DW$9


DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteNVMemory"), DW_AT_symbol_name("_WriteNVMemory")
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)
DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$62)
DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$11


DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadNVMemory"), DW_AT_symbol_name("_ReadNVMemory")
	.dwattr DW$16, DW_AT_declaration(0x01)
	.dwattr DW$16, DW_AT_external(0x01)
DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$62)
DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$16


DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("SetupNormalModeAlarmLevels"), DW_AT_symbol_name("_SetupNormalModeAlarmLevels")
	.dwattr DW$21, DW_AT_declaration(0x01)
	.dwattr DW$21, DW_AT_external(0x01)

DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("PreWarningInit"), DW_AT_symbol_name("_PreWarningInit")
	.dwattr DW$22, DW_AT_declaration(0x01)
	.dwattr DW$22, DW_AT_external(0x01)

DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("SetCalMode"), DW_AT_symbol_name("_SetCalMode")
	.dwattr DW$23, DW_AT_declaration(0x01)
	.dwattr DW$23, DW_AT_external(0x01)
DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$23


DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("GetModalRPM"), DW_AT_symbol_name("_GetModalRPM")
	.dwattr DW$26, DW_AT_type(*DW$T$11)
	.dwattr DW$26, DW_AT_declaration(0x01)
	.dwattr DW$26, DW_AT_external(0x01)
DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$26


DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("GetPreCompValue"), DW_AT_symbol_name("_GetPreCompValue")
	.dwattr DW$28, DW_AT_type(*DW$T$10)
	.dwattr DW$28, DW_AT_declaration(0x01)
	.dwattr DW$28, DW_AT_external(0x01)
DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$28


DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("Status1Flags"), DW_AT_symbol_name("_Status1Flags")
	.dwattr DW$30, DW_AT_type(*DW$T$127)
	.dwattr DW$30, DW_AT_declaration(0x01)
	.dwattr DW$30, DW_AT_external(0x01)
DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$30


DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("GetStatus2Flags"), DW_AT_symbol_name("_GetStatus2Flags")
	.dwattr DW$32, DW_AT_type(*DW$T$132)
	.dwattr DW$32, DW_AT_declaration(0x01)
	.dwattr DW$32, DW_AT_external(0x01)
DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$32


DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearSelectiveMANTable"), DW_AT_symbol_name("_ClearSelectiveMANTable")
	.dwattr DW$34, DW_AT_declaration(0x01)
	.dwattr DW$34, DW_AT_external(0x01)

DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteSensorStatustoNVMEM"), DW_AT_symbol_name("_WriteSensorStatustoNVMEM")
	.dwattr DW$35, DW_AT_declaration(0x01)
	.dwattr DW$35, DW_AT_external(0x01)
DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$35


DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteMANCompTabletoNVMEM"), DW_AT_symbol_name("_WriteMANCompTabletoNVMEM")
	.dwattr DW$37, DW_AT_declaration(0x01)
	.dwattr DW$37, DW_AT_external(0x01)

DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearManCompSequence"), DW_AT_symbol_name("_ClearManCompSequence")
	.dwattr DW$38, DW_AT_declaration(0x01)
	.dwattr DW$38, DW_AT_external(0x01)

DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("MANCompTabletoSDCardFile"), DW_AT_symbol_name("_MANCompTabletoSDCardFile")
	.dwattr DW$39, DW_AT_type(*DW$T$10)
	.dwattr DW$39, DW_AT_declaration(0x01)
	.dwattr DW$39, DW_AT_external(0x01)
DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$83)
DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$39


DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("SensorStatustoSDCardFile"), DW_AT_symbol_name("_SensorStatustoSDCardFile")
	.dwattr DW$42, DW_AT_type(*DW$T$10)
	.dwattr DW$42, DW_AT_declaration(0x01)
	.dwattr DW$42, DW_AT_external(0x01)

DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearEventCodeListArea"), DW_AT_symbol_name("_ClearEventCodeListArea")
	.dwattr DW$43, DW_AT_declaration(0x01)
	.dwattr DW$43, DW_AT_external(0x01)

DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("SetAlarmEvent"), DW_AT_symbol_name("_SetAlarmEvent")
	.dwattr DW$44, DW_AT_declaration(0x01)
	.dwattr DW$44, DW_AT_external(0x01)
DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$44


DW$46	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearAlarmEvent"), DW_AT_symbol_name("_ClearAlarmEvent")
	.dwattr DW$46, DW_AT_declaration(0x01)
	.dwattr DW$46, DW_AT_external(0x01)
DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$46


DW$48	.dwtag  DW_TAG_subprogram, DW_AT_name("SetBitEvent"), DW_AT_symbol_name("_SetBitEvent")
	.dwattr DW$48, DW_AT_declaration(0x01)
	.dwattr DW$48, DW_AT_external(0x01)
DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$48


DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadMANCompTablefromSDCardFile"), DW_AT_symbol_name("_ReadMANCompTablefromSDCardFile")
	.dwattr DW$50, DW_AT_type(*DW$T$10)
	.dwattr DW$50, DW_AT_declaration(0x01)
	.dwattr DW$50, DW_AT_external(0x01)

DW$51	.dwtag  DW_TAG_subprogram, DW_AT_name("PrewarnReset"), DW_AT_symbol_name("_PrewarnReset")
	.dwattr DW$51, DW_AT_type(*DW$T$10)
	.dwattr DW$51, DW_AT_declaration(0x01)
	.dwattr DW$51, DW_AT_external(0x01)

DW$52	.dwtag  DW_TAG_subprogram, DW_AT_name("CalibrationtdUpdate"), DW_AT_symbol_name("_CalibrationtdUpdate")
	.dwattr DW$52, DW_AT_type(*DW$T$10)
	.dwattr DW$52, DW_AT_declaration(0x01)
	.dwattr DW$52, DW_AT_external(0x01)

DW$53	.dwtag  DW_TAG_subprogram, DW_AT_name("FloattoIntRound"), DW_AT_symbol_name("_FloattoIntRound")
	.dwattr DW$53, DW_AT_type(*DW$T$10)
	.dwattr DW$53, DW_AT_declaration(0x01)
	.dwattr DW$53, DW_AT_external(0x01)
DW$54	.dwtag  DW_TAG_variable, DW_AT_name("settings"), DW_AT_symbol_name("_settings")
	.dwattr DW$54, DW_AT_type(*DW$T$137)
	.dwattr DW$54, DW_AT_declaration(0x01)
	.dwattr DW$54, DW_AT_external(0x01)
DW$55	.dwtag  DW_TAG_variable, DW_AT_name("motion"), DW_AT_symbol_name("_motion")
	.dwattr DW$55, DW_AT_type(*DW$T$138)
	.dwattr DW$55, DW_AT_declaration(0x01)
	.dwattr DW$55, DW_AT_external(0x01)
DW$56	.dwtag  DW_TAG_variable, DW_AT_name("timers"), DW_AT_symbol_name("_timers")
	.dwattr DW$56, DW_AT_type(*DW$T$140)
	.dwattr DW$56, DW_AT_declaration(0x01)
	.dwattr DW$56, DW_AT_external(0x01)
DW$57	.dwtag  DW_TAG_variable, DW_AT_name("allsensors"), DW_AT_symbol_name("_allsensors")
	.dwattr DW$57, DW_AT_type(*DW$T$142)
	.dwattr DW$57, DW_AT_declaration(0x01)
	.dwattr DW$57, DW_AT_external(0x01)
DW$58	.dwtag  DW_TAG_variable, DW_AT_name("stringbuffer"), DW_AT_symbol_name("_stringbuffer")
	.dwattr DW$58, DW_AT_type(*DW$T$158)
	.dwattr DW$58, DW_AT_declaration(0x01)
	.dwattr DW$58, DW_AT_external(0x01)
DW$59	.dwtag  DW_TAG_variable, DW_AT_name("sensor"), DW_AT_symbol_name("_sensor")
	.dwattr DW$59, DW_AT_type(*DW$T$145)
	.dwattr DW$59, DW_AT_declaration(0x01)
	.dwattr DW$59, DW_AT_external(0x01)
DW$60	.dwtag  DW_TAG_variable, DW_AT_name("iSensorInResetMode"), DW_AT_symbol_name("_iSensorInResetMode")
	.dwattr DW$60, DW_AT_type(*DW$T$10)
	.dwattr DW$60, DW_AT_declaration(0x01)
	.dwattr DW$60, DW_AT_external(0x01)
DW$61	.dwtag  DW_TAG_variable, DW_AT_name("iSensorInRepalceTimer"), DW_AT_symbol_name("_iSensorInRepalceTimer")
	.dwattr DW$61, DW_AT_type(*DW$T$10)
	.dwattr DW$61, DW_AT_declaration(0x01)
	.dwattr DW$61, DW_AT_external(0x01)
DW$62	.dwtag  DW_TAG_variable, DW_AT_name("iBarred"), DW_AT_symbol_name("_iBarred")
	.dwattr DW$62, DW_AT_type(*DW$T$11)
	.dwattr DW$62, DW_AT_declaration(0x01)
	.dwattr DW$62, DW_AT_external(0x01)
DW$63	.dwtag  DW_TAG_variable, DW_AT_name("iDeltaRPM15"), DW_AT_symbol_name("_iDeltaRPM15")
	.dwattr DW$63, DW_AT_type(*DW$T$11)
	.dwattr DW$63, DW_AT_declaration(0x01)
	.dwattr DW$63, DW_AT_external(0x01)
_fRapidWearAverage:	.usect	".ebss",56,1,1
DW$64	.dwtag  DW_TAG_variable, DW_AT_name("fRapidWearAverage"), DW_AT_symbol_name("_fRapidWearAverage")
	.dwattr DW$64, DW_AT_type(*DW$T$122)
	.dwattr DW$64, DW_AT_location[DW_OP_addr _fRapidWearAverage]
DW$65	.dwtag  DW_TAG_variable, DW_AT_name("function"), DW_AT_symbol_name("_function")
	.dwattr DW$65, DW_AT_type(*DW$T$148)
	.dwattr DW$65, DW_AT_declaration(0x01)
	.dwattr DW$65, DW_AT_external(0x01)
DW$66	.dwtag  DW_TAG_variable, DW_AT_name("man_comptable"), DW_AT_symbol_name("_man_comptable")
	.dwattr DW$66, DW_AT_type(*DW$T$80)
	.dwattr DW$66, DW_AT_declaration(0x01)
	.dwattr DW$66, DW_AT_external(0x01)
DW$67	.dwtag  DW_TAG_variable, DW_AT_name("manref"), DW_AT_symbol_name("_manref")
	.dwattr DW$67, DW_AT_type(*DW$T$150)
	.dwattr DW$67, DW_AT_declaration(0x01)
	.dwattr DW$67, DW_AT_external(0x01)
DW$68	.dwtag  DW_TAG_variable, DW_AT_name("manrefsum"), DW_AT_symbol_name("_manrefsum")
	.dwattr DW$68, DW_AT_type(*DW$T$154)
	.dwattr DW$68, DW_AT_declaration(0x01)
	.dwattr DW$68, DW_AT_external(0x01)
DW$69	.dwtag  DW_TAG_variable, DW_AT_name("dynalarmlevels"), DW_AT_symbol_name("_dynalarmlevels")
	.dwattr DW$69, DW_AT_type(*DW$T$157)
	.dwattr DW$69, DW_AT_declaration(0x01)
	.dwattr DW$69, DW_AT_external(0x01)
DW$70	.dwtag  DW_TAG_variable, DW_AT_name("sdcarddir"), DW_AT_symbol_name("_sdcarddir")
	.dwattr DW$70, DW_AT_type(*DW$T$161)
	.dwattr DW$70, DW_AT_declaration(0x01)
	.dwattr DW$70, DW_AT_external(0x01)
DW$71	.dwtag  DW_TAG_variable, DW_AT_name("sdsettings"), DW_AT_symbol_name("_sdsettings")
	.dwattr DW$71, DW_AT_type(*DW$T$164)
	.dwattr DW$71, DW_AT_declaration(0x01)
	.dwattr DW$71, DW_AT_external(0x01)
DW$72	.dwtag  DW_TAG_variable, DW_AT_name("damagemonignore"), DW_AT_symbol_name("_damagemonignore")
	.dwattr DW$72, DW_AT_type(*DW$T$51)
	.dwattr DW$72, DW_AT_declaration(0x01)
	.dwattr DW$72, DW_AT_external(0x01)
DW$73	.dwtag  DW_TAG_variable, DW_AT_name("sensorMoving"), DW_AT_symbol_name("_sensorMoving")
	.dwattr DW$73, DW_AT_type(*DW$T$165)
	.dwattr DW$73, DW_AT_declaration(0x01)
	.dwattr DW$73, DW_AT_external(0x01)
	.global	_calibration
_calibration:	.usect	".ebss",794,1,1
DW$74	.dwtag  DW_TAG_variable, DW_AT_name("calibration"), DW_AT_symbol_name("_calibration")
	.dwattr DW$74, DW_AT_location[DW_OP_addr _calibration]
	.dwattr DW$74, DW_AT_type(*DW$T$166)
	.dwattr DW$74, DW_AT_external(0x01)
	.global	_speedcompcoeffs
_speedcompcoeffs:	.usect	".ebss",25,1,0
DW$75	.dwtag  DW_TAG_variable, DW_AT_name("speedcompcoeffs"), DW_AT_symbol_name("_speedcompcoeffs")
	.dwattr DW$75, DW_AT_location[DW_OP_addr _speedcompcoeffs]
	.dwattr DW$75, DW_AT_type(*DW$T$168)
	.dwattr DW$75, DW_AT_external(0x01)
	.global	_mancal
_mancal:	.usect	".ebss",4,1,0
DW$76	.dwtag  DW_TAG_variable, DW_AT_name("mancal"), DW_AT_symbol_name("_mancal")
	.dwattr DW$76, DW_AT_location[DW_OP_addr _mancal]
	.dwattr DW$76, DW_AT_type(*DW$T$170)
	.dwattr DW$76, DW_AT_external(0x01)
	.global	_rpmpointtest
_rpmpointtest:	.usect	".ebss",1,1,0
DW$77	.dwtag  DW_TAG_variable, DW_AT_name("rpmpointtest"), DW_AT_symbol_name("_rpmpointtest")
	.dwattr DW$77, DW_AT_location[DW_OP_addr _rpmpointtest]
	.dwattr DW$77, DW_AT_type(*DW$T$11)
	.dwattr DW$77, DW_AT_external(0x01)
	.global	_chanUT
_chanUT:	.usect	".ebss",1,1,0
DW$78	.dwtag  DW_TAG_variable, DW_AT_name("chanUT"), DW_AT_symbol_name("_chanUT")
	.dwattr DW$78, DW_AT_location[DW_OP_addr _chanUT]
	.dwattr DW$78, DW_AT_type(*DW$T$11)
	.dwattr DW$78, DW_AT_external(0x01)
	.global	_bReadyToSampling
_bReadyToSampling:	.usect	".ebss",1,1,0
DW$79	.dwtag  DW_TAG_variable, DW_AT_name("bReadyToSampling"), DW_AT_symbol_name("_bReadyToSampling")
	.dwattr DW$79, DW_AT_location[DW_OP_addr _bReadyToSampling]
	.dwattr DW$79, DW_AT_type(*DW$T$11)
	.dwattr DW$79, DW_AT_external(0x01)
	.global	_bSamplingFinished
_bSamplingFinished:	.usect	".ebss",1,1,0
DW$80	.dwtag  DW_TAG_variable, DW_AT_name("bSamplingFinished"), DW_AT_symbol_name("_bSamplingFinished")
	.dwattr DW$80, DW_AT_location[DW_OP_addr _bSamplingFinished]
	.dwattr DW$80, DW_AT_type(*DW$T$11)
	.dwattr DW$80, DW_AT_external(0x01)
	.global	_wThirtySecondInMs
	.sect	".econst"
	.align	2
_wThirtySecondInMs:
	.field  	6000,32			; _wThirtySecondInMs @ 0

DW$81	.dwtag  DW_TAG_variable, DW_AT_name("wThirtySecondInMs"), DW_AT_symbol_name("_wThirtySecondInMs")
	.dwattr DW$81, DW_AT_location[DW_OP_addr _wThirtySecondInMs]
	.dwattr DW$81, DW_AT_type(*DW$T$120)
	.dwattr DW$81, DW_AT_external(0x01)
	.global	_wFiveResulotionInMs
_wFiveResulotionInMs:	.usect	".ebss",2,1,1
DW$82	.dwtag  DW_TAG_variable, DW_AT_name("wFiveResulotionInMs"), DW_AT_symbol_name("_wFiveResulotionInMs")
	.dwattr DW$82, DW_AT_location[DW_OP_addr _wFiveResulotionInMs]
	.dwattr DW$82, DW_AT_type(*DW$T$13)
	.dwattr DW$82, DW_AT_external(0x01)
	.global	_CalRpm
_CalRpm:	.usect	".ebss",1,1,0
DW$83	.dwtag  DW_TAG_variable, DW_AT_name("CalRpm"), DW_AT_symbol_name("_CalRpm")
	.dwattr DW$83, DW_AT_location[DW_OP_addr _CalRpm]
	.dwattr DW$83, DW_AT_type(*DW$T$11)
	.dwattr DW$83, DW_AT_external(0x01)
	.global	_iRepaidWearReset
_iRepaidWearReset:	.usect	".ebss",1,1,0
DW$84	.dwtag  DW_TAG_variable, DW_AT_name("iRepaidWearReset"), DW_AT_symbol_name("_iRepaidWearReset")
	.dwattr DW$84, DW_AT_location[DW_OP_addr _iRepaidWearReset]
	.dwattr DW$84, DW_AT_type(*DW$T$113)
	.dwattr DW$84, DW_AT_external(0x01)
	.global	_iStartRapidWear
_iStartRapidWear:	.usect	".ebss",1,1,0
DW$85	.dwtag  DW_TAG_variable, DW_AT_name("iStartRapidWear"), DW_AT_symbol_name("_iStartRapidWear")
	.dwattr DW$85, DW_AT_location[DW_OP_addr _iStartRapidWear]
	.dwattr DW$85, DW_AT_type(*DW$T$113)
	.dwattr DW$85, DW_AT_external(0x01)
	.global	_iFiveResDone
_iFiveResDone:	.usect	".ebss",1,1,0
DW$86	.dwtag  DW_TAG_variable, DW_AT_name("iFiveResDone"), DW_AT_symbol_name("_iFiveResDone")
	.dwattr DW$86, DW_AT_location[DW_OP_addr _iFiveResDone]
	.dwattr DW$86, DW_AT_type(*DW$T$113)
	.dwattr DW$86, DW_AT_external(0x01)
;	C:\CCStudio_v3.3\C2000\cgtools\bin\opt2000.exe C:\Users\Andrew\AppData\Local\Temp\TI1762 C:\Users\Andrew\AppData\Local\Temp\TI1764 
;	C:\CCStudio_v3.3\C2000\cgtools\bin\ac2000.exe -q -D_INLINE -DLARGE_MODEL -IC:/CCStudio_v3.3/C2000/xdais/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/bios/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/rtdx/include/c2000 -IC:/CCStudio_v3.3/C2000/cgtools/include --version=28 --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\Andrew\AppData\Local\Temp\TI1762 --template_info_file C:\Users\Andrew\AppData\Local\Temp\TI1766 --object_file 
	.sect	".text"
	.global	_CalAbort

DW$87	.dwtag  DW_TAG_subprogram, DW_AT_name("CalAbort"), DW_AT_symbol_name("_CalAbort")
	.dwattr DW$87, DW_AT_low_pc(_CalAbort)
	.dwattr DW$87, DW_AT_high_pc(0x00)
	.dwattr DW$87, DW_AT_begin_file("mancal.c")
	.dwattr DW$87, DW_AT_begin_line(0x4b)
	.dwattr DW$87, DW_AT_begin_column(0x06)
	.dwattr DW$87, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$87, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",76,1

;***************************************************************
;* FNAME: _CalAbort                     FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_CalAbort:
        MOVL      *SP++,XAR1
	.dwpsn	"mancal.c",83,0
        MOVB      XAR1,#0
L1:    
DW$L$_CalAbort$2$B:
	.dwpsn	"mancal.c",84,0
        MOV       AL,AR1                ; |85| 
        MOVB      AH,#0
        LCR       #_SetCalMode          ; |85| 
        ; call occurs [#_SetCalMode] ; |85| 
        MOV       AL,AR1                ; |86| 
        LCR       #_WriteSensorStatustoNVMEM ; |86| 
        ; call occurs [#_WriteSensorStatustoNVMEM] ; |86| 
        ADDB      XAR1,#1               ; |83| 
        MOV       AL,AR1                ; |83| 
        CMPB      AL,#28                ; |83| 
	.dwpsn	"mancal.c",87,0
        BF        L1,LO                 ; |83| 
        ; branchcc occurs ; |83| 
DW$L$_CalAbort$2$E:
        LCR       #_SensorStatustoSDCardFile ; |88| 
        ; call occurs [#_SensorStatustoSDCardFile] ; |88| 
        MOVW      DP,#_allsensors+16
        AND       @_allsensors+16,#0xfffd ; |90| 
        MOVW      DP,#_speedcompcoeffs
        MOV       @_speedcompcoeffs,#11 ; |91| 
        LCR       #_WriteSpeedCompStructtoNVMEM ; |92| 
        ; call occurs [#_WriteSpeedCompStructtoNVMEM] ; |92| 
        MOVB      AL,#4                 ; |94| 
        LCR       #_SetBitEvent         ; |94| 
        ; call occurs [#_SetBitEvent] ; |94| 
        LCR       #_ReadMANCompTablefromSDCardFile ; |97| 
        ; call occurs [#_ReadMANCompTablefromSDCardFile] ; |97| 
        LCR       #_SetupNormalModeAlarmLevels ; |99| 
        ; call occurs [#_SetupNormalModeAlarmLevels] ; |99| 
        MOVL      XAR1,*--SP
	.dwpsn	"mancal.c",100,1
        LRETR
        ; return occurs

DW$88	.dwtag  DW_TAG_loop
	.dwattr DW$88, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L1:1:1471518980")
	.dwattr DW$88, DW_AT_begin_file("mancal.c")
	.dwattr DW$88, DW_AT_begin_line(0x53)
	.dwattr DW$88, DW_AT_end_line(0x57)
DW$89	.dwtag  DW_TAG_loop_range
	.dwattr DW$89, DW_AT_low_pc(DW$L$_CalAbort$2$B)
	.dwattr DW$89, DW_AT_high_pc(DW$L$_CalAbort$2$E)
	.dwendtag DW$88

	.dwattr DW$87, DW_AT_end_file("mancal.c")
	.dwattr DW$87, DW_AT_end_line(0x64)
	.dwattr DW$87, DW_AT_end_column(0x01)
	.dwendtag DW$87

	.sect	".text"
	.global	_PowerUpCalInit

DW$90	.dwtag  DW_TAG_subprogram, DW_AT_name("PowerUpCalInit"), DW_AT_symbol_name("_PowerUpCalInit")
	.dwattr DW$90, DW_AT_low_pc(_PowerUpCalInit)
	.dwattr DW$90, DW_AT_high_pc(0x00)
	.dwattr DW$90, DW_AT_begin_file("mancal.c")
	.dwattr DW$90, DW_AT_begin_line(0x67)
	.dwattr DW$90, DW_AT_begin_column(0x06)
	.dwattr DW$90, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$90, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",104,1

;***************************************************************
;* FNAME: _PowerUpCalInit               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_PowerUpCalInit:
        LCR       #_SetupNormalModeAlarmLevels ; |105| 
        ; call occurs [#_SetupNormalModeAlarmLevels] ; |105| 
        LCR       #_ReadCalibrationStructfromNVMEM ; |106| 
        ; call occurs [#_ReadCalibrationStructfromNVMEM] ; |106| 
        LCR       #_ReadMANCalfromNVMEM ; |107| 
        ; call occurs [#_ReadMANCalfromNVMEM] ; |107| 
        LCR       #_PowerOutCalRecovery ; |108| 
        ; call occurs [#_PowerOutCalRecovery] ; |108| 
	.dwpsn	"mancal.c",109,1
        LRETR
        ; return occurs
	.dwattr DW$90, DW_AT_end_file("mancal.c")
	.dwattr DW$90, DW_AT_end_line(0x6d)
	.dwattr DW$90, DW_AT_end_column(0x01)
	.dwendtag DW$90

	.sect	".text"
	.global	_ReadAccAverageVal

DW$91	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadAccAverageVal"), DW_AT_symbol_name("_ReadAccAverageVal")
	.dwattr DW$91, DW_AT_low_pc(_ReadAccAverageVal)
	.dwattr DW$91, DW_AT_high_pc(0x00)
	.dwattr DW$91, DW_AT_begin_file("mancal.c")
	.dwattr DW$91, DW_AT_begin_line(0x73)
	.dwattr DW$91, DW_AT_begin_column(0x08)
	.dwattr DW$91, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$91, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",116,1

;***************************************************************
;* FNAME: _ReadAccAverageVal            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadAccAverageVal:
;* AL    assigned to _chan
DW$92	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$92, DW_AT_type(*DW$T$11)
	.dwattr DW$92, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _position
DW$93	.dwtag  DW_TAG_formal_parameter, DW_AT_name("position"), DW_AT_symbol_name("_position")
	.dwattr DW$93, DW_AT_type(*DW$T$11)
	.dwattr DW$93, DW_AT_location[DW_OP_reg1]
        CMPB      AL,#28                ; |117| 
        MOVZ      AR6,AL                ; |116| 
        BF        L2,HIS                ; |117| 
        ; branchcc occurs ; |117| 
        CMPB      AH,#3                 ; |117| 
        BF        L3,LO                 ; |117| 
        ; branchcc occurs ; |117| 
L2:    
        MOVL      XAR4,#_calibration+482 ; |117| 
        BF        L4,UNC                ; |117| 
        ; branch occurs ; |117| 
L3:    
        MOV       T,#28                 ; |117| 
        MPYXU     ACC,T,AH              ; |117| 
        ADDU      ACC,AR6               ; |117| 
        LSL       ACC,1                 ; |117| 
        MOVL      XAR4,#_calibration+482 ; |117| 
        ADDL      XAR4,ACC
L4:    
	.dwpsn	"mancal.c",119,1
        LRETR
        ; return occurs
	.dwattr DW$91, DW_AT_end_file("mancal.c")
	.dwattr DW$91, DW_AT_end_line(0x77)
	.dwattr DW$91, DW_AT_end_column(0x01)
	.dwendtag DW$91

	.sect	".text"
	.global	_ReadAverageSpeedAcc

DW$94	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadAverageSpeedAcc"), DW_AT_symbol_name("_ReadAverageSpeedAcc")
	.dwattr DW$94, DW_AT_low_pc(_ReadAverageSpeedAcc)
	.dwattr DW$94, DW_AT_high_pc(0x00)
	.dwattr DW$94, DW_AT_begin_file("mancal.c")
	.dwattr DW$94, DW_AT_begin_line(0x79)
	.dwattr DW$94, DW_AT_begin_column(0x08)
	.dwattr DW$94, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$94, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",122,1

;***************************************************************
;* FNAME: _ReadAverageSpeedAcc          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadAverageSpeedAcc:
;* AL    assigned to _chan
DW$95	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$95, DW_AT_type(*DW$T$11)
	.dwattr DW$95, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _position
DW$96	.dwtag  DW_TAG_formal_parameter, DW_AT_name("position"), DW_AT_symbol_name("_position")
	.dwattr DW$96, DW_AT_type(*DW$T$11)
	.dwattr DW$96, DW_AT_location[DW_OP_reg1]
        CMPB      AH,#3                 ; |123| 
        BF        L5,HIS                ; |123| 
        ; branchcc occurs ; |123| 
        MOV       T,#56                 ; |123| 
        MPYXU     ACC,T,AH              ; |123| 
        MOVL      XAR4,#_calibration+314 ; |123| 
        ADDL      XAR4,ACC
        BF        L6,UNC                ; |123| 
        ; branch occurs ; |123| 
L5:    
        MOVL      XAR4,#_calibration+314 ; |123| 
L6:    
	.dwpsn	"mancal.c",125,1
        LRETR
        ; return occurs
	.dwattr DW$94, DW_AT_end_file("mancal.c")
	.dwattr DW$94, DW_AT_end_line(0x7d)
	.dwattr DW$94, DW_AT_end_column(0x01)
	.dwendtag DW$94

	.sect	".text"
	.global	_ReadNumPoints

DW$97	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadNumPoints"), DW_AT_symbol_name("_ReadNumPoints")
	.dwattr DW$97, DW_AT_low_pc(_ReadNumPoints)
	.dwattr DW$97, DW_AT_high_pc(0x00)
	.dwattr DW$97, DW_AT_begin_file("mancal.c")
	.dwattr DW$97, DW_AT_begin_line(0x80)
	.dwattr DW$97, DW_AT_begin_column(0x11)
	.dwattr DW$97, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$97, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",129,1

;***************************************************************
;* FNAME: _ReadNumPoints                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadNumPoints:
;* AL    assigned to _position
DW$98	.dwtag  DW_TAG_formal_parameter, DW_AT_name("position"), DW_AT_symbol_name("_position")
	.dwattr DW$98, DW_AT_type(*DW$T$11)
	.dwattr DW$98, DW_AT_location[DW_OP_reg0]
        CMPB      AL,#150               ; |130| 
        BF        L7,HIS                ; |130| 
        ; branchcc occurs ; |130| 
        MOVU      ACC,AL
        LSL       ACC,1                 ; |130| 
        MOVL      XAR4,#_calibration+14 ; |130| 
        ADDL      XAR4,ACC
        BF        L8,UNC                ; |130| 
        ; branch occurs ; |130| 
L7:    
        MOVL      XAR4,#_calibration+14 ; |130| 
L8:    
	.dwpsn	"mancal.c",132,1
        LRETR
        ; return occurs
	.dwattr DW$97, DW_AT_end_file("mancal.c")
	.dwattr DW$97, DW_AT_end_line(0x84)
	.dwattr DW$97, DW_AT_end_column(0x01)
	.dwendtag DW$97

	.sect	".text"
	.global	_WriteSpeedCompStructtoNVMEM

DW$99	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteSpeedCompStructtoNVMEM"), DW_AT_symbol_name("_WriteSpeedCompStructtoNVMEM")
	.dwattr DW$99, DW_AT_low_pc(_WriteSpeedCompStructtoNVMEM)
	.dwattr DW$99, DW_AT_high_pc(0x00)
	.dwattr DW$99, DW_AT_begin_file("mancal.c")
	.dwattr DW$99, DW_AT_begin_line(0x88)
	.dwattr DW$99, DW_AT_begin_column(0x06)
	.dwattr DW$99, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$99, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",137,1

;***************************************************************
;* FNAME: _WriteSpeedCompStructtoNVMEM  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WriteSpeedCompStructtoNVMEM:
        MOVB      AL,#0
        MOVB      XAR5,#25              ; |149| 
        MOVL      XAR4,#_speedcompcoeffs ; |149| 
        MOV       AH,#27504             ; |149| 
        LCR       #_WriteNVMemory       ; |149| 
        ; call occurs [#_WriteNVMemory] ; |149| 
        MOVW      DP,#_settings+10
        MOV       @_settings+10,#1      ; |151| 
	.dwpsn	"mancal.c",152,1
        LRETR
        ; return occurs
	.dwattr DW$99, DW_AT_end_file("mancal.c")
	.dwattr DW$99, DW_AT_end_line(0x98)
	.dwattr DW$99, DW_AT_end_column(0x01)
	.dwendtag DW$99

	.sect	".text"
	.global	_ReadSpeedCompStructfromNVMEM

DW$100	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadSpeedCompStructfromNVMEM"), DW_AT_symbol_name("_ReadSpeedCompStructfromNVMEM")
	.dwattr DW$100, DW_AT_low_pc(_ReadSpeedCompStructfromNVMEM)
	.dwattr DW$100, DW_AT_high_pc(0x00)
	.dwattr DW$100, DW_AT_begin_file("mancal.c")
	.dwattr DW$100, DW_AT_begin_line(0x9d)
	.dwattr DW$100, DW_AT_begin_column(0x06)
	.dwattr DW$100, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$100, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",158,1

;***************************************************************
;* FNAME: _ReadSpeedCompStructfromNVMEM FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadSpeedCompStructfromNVMEM:
        MOVB      AL,#0
        MOVB      XAR5,#25              ; |167| 
        MOVL      XAR4,#_speedcompcoeffs ; |167| 
        MOV       AH,#27504             ; |167| 
        LCR       #_ReadNVMemory        ; |167| 
        ; call occurs [#_ReadNVMemory] ; |167| 
	.dwpsn	"mancal.c",169,1
        LRETR
        ; return occurs
	.dwattr DW$100, DW_AT_end_file("mancal.c")
	.dwattr DW$100, DW_AT_end_line(0xa9)
	.dwattr DW$100, DW_AT_end_column(0x01)
	.dwendtag DW$100

	.sect	".text"
	.global	_WriteAccCalNVMEM

DW$101	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteAccCalNVMEM"), DW_AT_symbol_name("_WriteAccCalNVMEM")
	.dwattr DW$101, DW_AT_low_pc(_WriteAccCalNVMEM)
	.dwattr DW$101, DW_AT_high_pc(0x00)
	.dwattr DW$101, DW_AT_begin_file("mancal.c")
	.dwattr DW$101, DW_AT_begin_line(0xaf)
	.dwattr DW$101, DW_AT_begin_column(0x06)
	.dwattr DW$101, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$101, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",176,1

;***************************************************************
;* FNAME: _WriteAccCalNVMEM             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WriteAccCalNVMEM:
;* AL    assigned to _rpmval
DW$102	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rpmval"), DW_AT_symbol_name("_rpmval")
	.dwattr DW$102, DW_AT_type(*DW$T$11)
	.dwattr DW$102, DW_AT_location[DW_OP_reg0]
        MOV       T,AL                  ; |189| 
        MOVB      XAR5,#56              ; |189| 
        MPYB      ACC,T,#112            ; |189| 
        MOVL      XAR4,#_calibration+482 ; |189| 
        ADD       AL,#8400              ; |189| 
        MOV       AH,AL                 ; |189| 
        MOVB      AL,#0
        LCR       #_WriteNVMemory       ; |189| 
        ; call occurs [#_WriteNVMemory] ; |189| 
	.dwpsn	"mancal.c",190,1
        LRETR
        ; return occurs
	.dwattr DW$101, DW_AT_end_file("mancal.c")
	.dwattr DW$101, DW_AT_end_line(0xbe)
	.dwattr DW$101, DW_AT_end_column(0x01)
	.dwendtag DW$101

	.sect	".text"
	.global	_ReadAccCalNVMEM

DW$103	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadAccCalNVMEM"), DW_AT_symbol_name("_ReadAccCalNVMEM")
	.dwattr DW$103, DW_AT_low_pc(_ReadAccCalNVMEM)
	.dwattr DW$103, DW_AT_high_pc(0x00)
	.dwattr DW$103, DW_AT_begin_file("mancal.c")
	.dwattr DW$103, DW_AT_begin_line(0xc2)
	.dwattr DW$103, DW_AT_begin_column(0x06)
	.dwattr DW$103, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$103, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",195,1

;***************************************************************
;* FNAME: _ReadAccCalNVMEM              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadAccCalNVMEM:
;* AL    assigned to _rpmval
DW$104	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rpmval"), DW_AT_symbol_name("_rpmval")
	.dwattr DW$104, DW_AT_type(*DW$T$11)
	.dwattr DW$104, DW_AT_location[DW_OP_reg0]
        MOV       T,AL                  ; |207| 
        MOVB      XAR5,#56              ; |207| 
        MPYB      ACC,T,#112            ; |207| 
        MOVL      XAR4,#_calibration+482 ; |207| 
        ADD       AL,#8400              ; |207| 
        MOV       AH,AL                 ; |207| 
        MOVB      AL,#0
        LCR       #_ReadNVMemory        ; |207| 
        ; call occurs [#_ReadNVMemory] ; |207| 
	.dwpsn	"mancal.c",208,1
        LRETR
        ; return occurs
	.dwattr DW$103, DW_AT_end_file("mancal.c")
	.dwattr DW$103, DW_AT_end_line(0xd0)
	.dwattr DW$103, DW_AT_end_column(0x01)
	.dwendtag DW$103

	.sect	".text"
	.global	_WriteMAN1000NVMEM

DW$105	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteMAN1000NVMEM"), DW_AT_symbol_name("_WriteMAN1000NVMEM")
	.dwattr DW$105, DW_AT_low_pc(_WriteMAN1000NVMEM)
	.dwattr DW$105, DW_AT_high_pc(0x00)
	.dwattr DW$105, DW_AT_begin_file("mancal.c")
	.dwattr DW$105, DW_AT_begin_line(0xd9)
	.dwattr DW$105, DW_AT_begin_column(0x06)
	.dwattr DW$105, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$105, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",218,1

;***************************************************************
;* FNAME: _WriteMAN1000NVMEM            FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_WriteMAN1000NVMEM:
;* AL    assigned to _rpmval
DW$106	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rpmval"), DW_AT_symbol_name("_rpmval")
	.dwattr DW$106, DW_AT_type(*DW$T$11)
	.dwattr DW$106, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _chan
DW$107	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$107, DW_AT_type(*DW$T$11)
	.dwattr DW$107, DW_AT_location[DW_OP_reg1]
;* AR4   assigned to _val
DW$108	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$108, DW_AT_type(*DW$T$10)
	.dwattr DW$108, DW_AT_location[DW_OP_reg12]
        ADDB      SP,#2
        MOVZ      AR6,AH                ; |218| 
        MOV       T,AL                  ; |232| 
        MOVB      XAR5,#1               ; |232| 
        MOV       *-SP[1],AR4           ; |218| 
        MPYB      ACC,T,#28             ; |232| 
        MOVZ      AR4,SP                ; |232| 
        ADD       AL,AR6                ; |232| 
        MOV       ACC,AL << #1          ; |232| 
        MOV       AH,AL                 ; |232| 
        SUBB      XAR4,#1               ; |232| 
        MOVB      AL,#1                 ; |232| 
        LCR       #_WriteNVMemory       ; |232| 
        ; call occurs [#_WriteNVMemory] ; |232| 
        SUBB      SP,#2
	.dwpsn	"mancal.c",233,1
        LRETR
        ; return occurs
	.dwattr DW$105, DW_AT_end_file("mancal.c")
	.dwattr DW$105, DW_AT_end_line(0xe9)
	.dwattr DW$105, DW_AT_end_column(0x01)
	.dwendtag DW$105

	.sect	".text"
	.global	_ReadMAN1000NVMEM

DW$109	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadMAN1000NVMEM"), DW_AT_symbol_name("_ReadMAN1000NVMEM")
	.dwattr DW$109, DW_AT_low_pc(_ReadMAN1000NVMEM)
	.dwattr DW$109, DW_AT_high_pc(0x00)
	.dwattr DW$109, DW_AT_begin_file("mancal.c")
	.dwattr DW$109, DW_AT_begin_line(0xf0)
	.dwattr DW$109, DW_AT_begin_column(0x05)
	.dwattr DW$109, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$109, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",241,1

;***************************************************************
;* FNAME: _ReadMAN1000NVMEM             FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_ReadMAN1000NVMEM:
;* AL    assigned to _rpmval
DW$110	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rpmval"), DW_AT_symbol_name("_rpmval")
	.dwattr DW$110, DW_AT_type(*DW$T$11)
	.dwattr DW$110, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _chan
DW$111	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$111, DW_AT_type(*DW$T$11)
	.dwattr DW$111, DW_AT_location[DW_OP_reg1]
        MOVZ      AR6,AH                ; |241| 
        MOV       T,AL                  ; |254| 
        ADDB      SP,#2
        MPYB      ACC,T,#28             ; |254| 
        MOVZ      AR4,SP                ; |254| 
        MOVB      XAR5,#1               ; |254| 
        ADD       AL,AR6                ; |254| 
        MOV       ACC,AL << #1          ; |254| 
        SUBB      XAR4,#1               ; |254| 
        MOV       AH,AL                 ; |254| 
        MOVB      AL,#1                 ; |254| 
        LCR       #_ReadNVMemory        ; |254| 
        ; call occurs [#_ReadNVMemory] ; |254| 
        MOV       AL,*-SP[1]            ; |256| 
        SUBB      SP,#2                 ; |256| 
	.dwpsn	"mancal.c",257,1
        LRETR
        ; return occurs
	.dwattr DW$109, DW_AT_end_file("mancal.c")
	.dwattr DW$109, DW_AT_end_line(0x101)
	.dwattr DW$109, DW_AT_end_column(0x01)
	.dwendtag DW$109

	.sect	".text"
	.global	_WriteCalibrationStructtoNVMEM

DW$112	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteCalibrationStructtoNVMEM"), DW_AT_symbol_name("_WriteCalibrationStructtoNVMEM")
	.dwattr DW$112, DW_AT_low_pc(_WriteCalibrationStructtoNVMEM)
	.dwattr DW$112, DW_AT_high_pc(0x00)
	.dwattr DW$112, DW_AT_begin_file("mancal.c")
	.dwattr DW$112, DW_AT_begin_line(0x104)
	.dwattr DW$112, DW_AT_begin_column(0x06)
	.dwattr DW$112, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$112, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",261,1

;***************************************************************
;* FNAME: _WriteCalibrationStructtoNVMEM FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WriteCalibrationStructtoNVMEM:
        MOVB      AL,#0
        MOVL      XAR5,#794             ; |274| 
        MOVL      XAR4,#_calibration    ; |274| 
        MOV       AH,#25200             ; |274| 
        LCR       #_WriteNVMemory       ; |274| 
        ; call occurs [#_WriteNVMemory] ; |274| 
	.dwpsn	"mancal.c",275,1
        LRETR
        ; return occurs
	.dwattr DW$112, DW_AT_end_file("mancal.c")
	.dwattr DW$112, DW_AT_end_line(0x113)
	.dwattr DW$112, DW_AT_end_column(0x01)
	.dwendtag DW$112

	.sect	".text"
	.global	_ReadCalibrationStructfromNVMEM

DW$113	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadCalibrationStructfromNVMEM"), DW_AT_symbol_name("_ReadCalibrationStructfromNVMEM")
	.dwattr DW$113, DW_AT_low_pc(_ReadCalibrationStructfromNVMEM)
	.dwattr DW$113, DW_AT_high_pc(0x00)
	.dwattr DW$113, DW_AT_begin_file("mancal.c")
	.dwattr DW$113, DW_AT_begin_line(0x118)
	.dwattr DW$113, DW_AT_begin_column(0x06)
	.dwattr DW$113, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$113, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",281,1

;***************************************************************
;* FNAME: _ReadCalibrationStructfromNVMEM FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadCalibrationStructfromNVMEM:
        MOVB      AL,#0
        MOVL      XAR5,#794             ; |294| 
        MOVL      XAR4,#_calibration    ; |294| 
        MOV       AH,#25200             ; |294| 
        LCR       #_ReadNVMemory        ; |294| 
        ; call occurs [#_ReadNVMemory] ; |294| 
	.dwpsn	"mancal.c",295,1
        LRETR
        ; return occurs
	.dwattr DW$113, DW_AT_end_file("mancal.c")
	.dwattr DW$113, DW_AT_end_line(0x127)
	.dwattr DW$113, DW_AT_end_column(0x01)
	.dwendtag DW$113

	.sect	".text"
	.global	_WriteMANCaltoNVMEM

DW$114	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteMANCaltoNVMEM"), DW_AT_symbol_name("_WriteMANCaltoNVMEM")
	.dwattr DW$114, DW_AT_low_pc(_WriteMANCaltoNVMEM)
	.dwattr DW$114, DW_AT_high_pc(0x00)
	.dwattr DW$114, DW_AT_begin_file("mancal.c")
	.dwattr DW$114, DW_AT_begin_line(0x12a)
	.dwattr DW$114, DW_AT_begin_column(0x06)
	.dwattr DW$114, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$114, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",299,1

;***************************************************************
;* FNAME: _WriteMANCaltoNVMEM           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WriteMANCaltoNVMEM:
        MOVB      AL,#0
        MOVB      XAR5,#4               ; |312| 
        MOVL      XAR4,#_mancal         ; |312| 
        MOV       AH,#27632             ; |312| 
        LCR       #_WriteNVMemory       ; |312| 
        ; call occurs [#_WriteNVMemory] ; |312| 
	.dwpsn	"mancal.c",313,1
        LRETR
        ; return occurs
	.dwattr DW$114, DW_AT_end_file("mancal.c")
	.dwattr DW$114, DW_AT_end_line(0x139)
	.dwattr DW$114, DW_AT_end_column(0x01)
	.dwendtag DW$114

	.sect	".text"
	.global	_ReadMANCalfromNVMEM

DW$115	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadMANCalfromNVMEM"), DW_AT_symbol_name("_ReadMANCalfromNVMEM")
	.dwattr DW$115, DW_AT_low_pc(_ReadMANCalfromNVMEM)
	.dwattr DW$115, DW_AT_high_pc(0x00)
	.dwattr DW$115, DW_AT_begin_file("mancal.c")
	.dwattr DW$115, DW_AT_begin_line(0x13d)
	.dwattr DW$115, DW_AT_begin_column(0x06)
	.dwattr DW$115, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$115, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",318,1

;***************************************************************
;* FNAME: _ReadMANCalfromNVMEM          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadMANCalfromNVMEM:
        MOVB      AL,#0
        MOVB      XAR5,#4               ; |331| 
        MOVL      XAR4,#_mancal         ; |331| 
        MOV       AH,#27632             ; |331| 
        LCR       #_ReadNVMemory        ; |331| 
        ; call occurs [#_ReadNVMemory] ; |331| 
	.dwpsn	"mancal.c",332,1
        LRETR
        ; return occurs
	.dwattr DW$115, DW_AT_end_file("mancal.c")
	.dwattr DW$115, DW_AT_end_line(0x14c)
	.dwattr DW$115, DW_AT_end_column(0x01)
	.dwendtag DW$115

	.sect	".text"
	.global	_GetPercentageLeft

DW$116	.dwtag  DW_TAG_subprogram, DW_AT_name("GetPercentageLeft"), DW_AT_symbol_name("_GetPercentageLeft")
	.dwattr DW$116, DW_AT_low_pc(_GetPercentageLeft)
	.dwattr DW$116, DW_AT_high_pc(0x00)
	.dwattr DW$116, DW_AT_begin_file("mancal.c")
	.dwattr DW$116, DW_AT_begin_line(0x14f)
	.dwattr DW$116, DW_AT_begin_column(0x0e)
	.dwattr DW$116, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$116, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",336,1

;***************************************************************
;* FNAME: _GetPercentageLeft            FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_GetPercentageLeft:
        MOVW      DP,#_speedcompcoeffs
        MOVL      *SP++,XAR1
        MOV       AL,@_speedcompcoeffs  ; |337| 
        ADDB      SP,#2
        CMPB      AL,#7                 ; |337| 
        BF        L9,HIS                ; |337| 
        ; branchcc occurs ; |337| 
        MOVW      DP,#_timers+46
        MOVL      ACC,@_timers+46       ; |337| 
        LCR       #UL$$TOFS             ; |337| 
        ; call occurs [#UL$$TOFS] ; |337| 
        MOVL      XAR6,ACC              ; |337| 
        MOV       AL,#32768
        MOV       AH,#17979
        MOVL      *-SP[2],ACC           ; |337| 
        MOVL      ACC,XAR6              ; |337| 
        LCR       #FS$$DIV              ; |337| 
        ; call occurs [#FS$$DIV] ; |337| 
        MOVL      XAR1,ACC              ; |337| 
        MOVW      DP,#_speedcompcoeffs+9
        MOV       AL,@_speedcompcoeffs+9 ; |337| 
        BF        L10,UNC               ; |337| 
        ; branch occurs ; |337| 
L9:    
        MOVW      DP,#_timers+46
        MOVL      ACC,@_timers+46       ; |337| 
        LCR       #UL$$TOFS             ; |337| 
        ; call occurs [#UL$$TOFS] ; |337| 
        MOVL      XAR6,ACC              ; |337| 
        MOV       AL,#32768
        MOV       AH,#17979
        MOVL      *-SP[2],ACC           ; |337| 
        MOVL      ACC,XAR6              ; |337| 
        LCR       #FS$$DIV              ; |337| 
        ; call occurs [#FS$$DIV] ; |337| 
        MOVL      XAR1,ACC              ; |337| 
        MOVW      DP,#_speedcompcoeffs+10
        MOV       AL,@_speedcompcoeffs+10 ; |337| 
L10:    
        LCR       #U$$TOFS              ; |337| 
        ; call occurs [#U$$TOFS] ; |337| 
        MOVL      *-SP[2],ACC           ; |337| 
        MOVL      ACC,XAR1              ; |337| 
        LCR       #FS$$DIV              ; |337| 
        ; call occurs [#FS$$DIV] ; |337| 
        MOVL      XAR6,ACC              ; |337| 
        MOV       AL,#0
        MOV       AH,#17096
        MOVL      *-SP[2],ACC           ; |337| 
        MOVL      ACC,XAR6              ; |337| 
        LCR       #FS$$MPY              ; |337| 
        ; call occurs [#FS$$MPY] ; |337| 
        LCR       #FS$$TOU              ; |337| 
        ; call occurs [#FS$$TOU] ; |337| 
        MOVW      DP,#_mancal+2
        MOV       @_mancal+2,AL         ; |337| 
        SUBB      SP,#2                 ; |341| 
        MOVL      XAR1,*--SP            ; |341| 
	.dwpsn	"mancal.c",347,1
        LRETR
        ; return occurs
	.dwattr DW$116, DW_AT_end_file("mancal.c")
	.dwattr DW$116, DW_AT_end_line(0x15b)
	.dwattr DW$116, DW_AT_end_column(0x01)
	.dwendtag DW$116

	.sect	".text"
	.global	_GetLearningTimeLeft

DW$117	.dwtag  DW_TAG_subprogram, DW_AT_name("GetLearningTimeLeft"), DW_AT_symbol_name("_GetLearningTimeLeft")
	.dwattr DW$117, DW_AT_low_pc(_GetLearningTimeLeft)
	.dwattr DW$117, DW_AT_high_pc(0x00)
	.dwattr DW$117, DW_AT_begin_file("mancal.c")
	.dwattr DW$117, DW_AT_begin_line(0x15e)
	.dwattr DW$117, DW_AT_begin_column(0x0e)
	.dwattr DW$117, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$117, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",351,1

;***************************************************************
;* FNAME: _GetLearningTimeLeft          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_GetLearningTimeLeft:
        MOVW      DP,#_timers+46
        MOVB      ACC,#0
        MOVL      XAR4,#12000           ; |352| 
        MOVL      P,@_timers+46         ; |352| 
        MOVW      DP,#_mancal
        RPT       #31
||     SUBCUL    ACC,XAR4              ; |352| 
        MOV       @_mancal,P            ; |352| 
        MOVW      DP,#_mancal
        INC       @_mancal              ; |353| 
        MOVW      DP,#_timers+46
        MOVL      ACC,@_timers+46       ; |354| 
        BF        L11,NEQ               ; |354| 
        ; branchcc occurs ; |354| 
        MOVW      DP,#_mancal
        MOV       @_mancal,#0           ; |354| 
L11:    
        MOVW      DP,#_mancal
        MOV       AL,@_mancal           ; |355| 
	.dwpsn	"mancal.c",356,1
        LRETR
        ; return occurs
	.dwattr DW$117, DW_AT_end_file("mancal.c")
	.dwattr DW$117, DW_AT_end_line(0x164)
	.dwattr DW$117, DW_AT_end_column(0x01)
	.dwendtag DW$117

	.sect	".text"
	.global	_GetIntervalTimeLeft

DW$118	.dwtag  DW_TAG_subprogram, DW_AT_name("GetIntervalTimeLeft"), DW_AT_symbol_name("_GetIntervalTimeLeft")
	.dwattr DW$118, DW_AT_low_pc(_GetIntervalTimeLeft)
	.dwattr DW$118, DW_AT_high_pc(0x00)
	.dwattr DW$118, DW_AT_begin_file("mancal.c")
	.dwattr DW$118, DW_AT_begin_line(0x167)
	.dwattr DW$118, DW_AT_begin_column(0x0e)
	.dwattr DW$118, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$118, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",360,1

;***************************************************************
;* FNAME: _GetIntervalTimeLeft          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_GetIntervalTimeLeft:
        MOVW      DP,#_timers+48
        MOVB      ACC,#0
        MOVL      XAR4,#12000           ; |363| 
        MOVL      P,@_timers+48         ; |363| 
        MOVW      DP,#_mancal+1
        RPT       #31
||     SUBCUL    ACC,XAR4              ; |363| 
        MOV       @_mancal+1,P          ; |363| 
        MOVW      DP,#_mancal+1
        MOV       AL,@_mancal+1         ; |364| 
        BF        L12,EQ                ; |364| 
        ; branchcc occurs ; |364| 
        MOVB      AH,#1                 ; |364| 
        ADD       AH,AL                 ; |364| 
        MOVW      DP,#_mancal+1
        MOV       @_mancal+1,AH         ; |364| 
L12:    
        MOVW      DP,#_mancal+1
        MOV       AL,@_mancal+1         ; |365| 
	.dwpsn	"mancal.c",366,1
        LRETR
        ; return occurs
	.dwattr DW$118, DW_AT_end_file("mancal.c")
	.dwattr DW$118, DW_AT_end_line(0x16e)
	.dwattr DW$118, DW_AT_end_column(0x01)
	.dwendtag DW$118

	.sect	".text"
	.global	_PowerOutCalRecovery

DW$119	.dwtag  DW_TAG_subprogram, DW_AT_name("PowerOutCalRecovery"), DW_AT_symbol_name("_PowerOutCalRecovery")
	.dwattr DW$119, DW_AT_low_pc(_PowerOutCalRecovery)
	.dwattr DW$119, DW_AT_high_pc(0x00)
	.dwattr DW$119, DW_AT_begin_file("mancal.c")
	.dwattr DW$119, DW_AT_begin_line(0x174)
	.dwattr DW$119, DW_AT_begin_column(0x06)
	.dwattr DW$119, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$119, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",373,1

;***************************************************************
;* FNAME: _PowerOutCalRecovery          FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_PowerOutCalRecovery:
        MOVW      DP,#_speedcompcoeffs
        MOVL      *SP++,XAR1
        MOV       AL,@_speedcompcoeffs  ; |377| 
        CMPB      AL,#7                 ; |377| 
        BF        L13,LO                ; |377| 
        ; branchcc occurs ; |377| 
        CMPB      AL,#11                ; |382| 
        BF        L14,NEQ               ; |382| 
        ; branchcc occurs ; |382| 
        MOVW      DP,#_allsensors+16
        AND       @_allsensors+16,#0xfffb ; |384| 
        BF        L18,UNC               ; |386| 
        ; branch occurs ; |386| 
L13:    
        CMPB      AL,#0                 ; |377| 
        BF        L17,NEQ               ; |377| 
        ; branchcc occurs ; |377| 
L14:    
        CMPB      AL,#9                 ; |387| 
        BF        L16,LO                ; |387| 
        ; branchcc occurs ; |387| 
        MOVW      DP,#_speedcompcoeffs
        MOV       @_speedcompcoeffs,#10 ; |398| 
        MOVW      DP,#_allsensors+16
        AND       @_allsensors+16,#0xfffd ; |399| 
        LCR       #_WriteSpeedCompStructtoNVMEM ; |400| 
        ; call occurs [#_WriteSpeedCompStructtoNVMEM] ; |400| 
	.dwpsn	"mancal.c",402,0
        MOVB      XAR1,#0
L15:    
DW$L$_PowerOutCalRecovery$7$B:
	.dwpsn	"mancal.c",403,0
        MOV       AL,AR1
        LCR       #_Status1Flags        ; |404| 
        ; call occurs [#_Status1Flags] ; |404| 
        AND       *+XAR4[0],#0xfffd     ; |405| 
        MOV       AL,AR1                ; |405| 
        LCR       #_WriteSensorStatustoNVMEM ; |406| 
        ; call occurs [#_WriteSensorStatustoNVMEM] ; |406| 
        MOV       AL,AR1                ; |406| 
        ADDB      AL,#1                 ; |402| 
        MOVZ      AR1,AL                ; |402| 
        CMPB      AL,#28                ; |402| 
	.dwpsn	"mancal.c",407,0
        BF        L15,LT                ; |402| 
        ; branchcc occurs ; |402| 
DW$L$_PowerOutCalRecovery$7$E:
        LCR       #_SensorStatustoSDCardFile ; |408| 
        ; call occurs [#_SensorStatustoSDCardFile] ; |408| 
        LCR       #_ClearCalAveragingAlarm ; |409| 
        ; call occurs [#_ClearCalAveragingAlarm] ; |409| 
        LCR       #_SetupNormalModeAlarmLevels ; |410| 
        ; call occurs [#_SetupNormalModeAlarmLevels] ; |410| 
        BF        L18,UNC               ; |410| 
        ; branch occurs ; |410| 
L16:    
        MOVW      DP,#_mancal
        MOV       T,#12000              ; |390| 
        MPYXU     ACC,T,@_mancal        ; |390| 
        MOVW      DP,#_timers+46
        MOVL      @_timers+46,ACC       ; |390| 
        MOVW      DP,#_mancal+1
        MPYXU     ACC,T,@_mancal+1      ; |391| 
        MOVW      DP,#_timers+48
        MOVL      @_timers+48,ACC       ; |391| 
        LCR       #_SetupLearningModeAlarmLevels ; |392| 
        ; call occurs [#_SetupLearningModeAlarmLevels] ; |392| 
        BF        L18,UNC               ; |395| 
        ; branch occurs ; |395| 
L17:    
        MOVW      DP,#_allsensors+16
        OR        @_allsensors+16,#0x0004 ; |379| 
        LCR       #_InitCal             ; |380| 
        ; call occurs [#_InitCal] ; |380| 
L18:    
        MOVL      XAR1,*--SP
	.dwpsn	"mancal.c",413,1
        LRETR
        ; return occurs

DW$120	.dwtag  DW_TAG_loop
	.dwattr DW$120, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L15:1:1471518980")
	.dwattr DW$120, DW_AT_begin_file("mancal.c")
	.dwattr DW$120, DW_AT_begin_line(0x192)
	.dwattr DW$120, DW_AT_end_line(0x197)
DW$121	.dwtag  DW_TAG_loop_range
	.dwattr DW$121, DW_AT_low_pc(DW$L$_PowerOutCalRecovery$7$B)
	.dwattr DW$121, DW_AT_high_pc(DW$L$_PowerOutCalRecovery$7$E)
	.dwendtag DW$120

	.dwattr DW$119, DW_AT_end_file("mancal.c")
	.dwattr DW$119, DW_AT_end_line(0x19d)
	.dwattr DW$119, DW_AT_end_column(0x01)
	.dwendtag DW$119

	.sect	".text"
	.global	_SetupLearningModeAlarmLevels

DW$122	.dwtag  DW_TAG_subprogram, DW_AT_name("SetupLearningModeAlarmLevels"), DW_AT_symbol_name("_SetupLearningModeAlarmLevels")
	.dwattr DW$122, DW_AT_low_pc(_SetupLearningModeAlarmLevels)
	.dwattr DW$122, DW_AT_high_pc(0x00)
	.dwattr DW$122, DW_AT_begin_file("mancal.c")
	.dwattr DW$122, DW_AT_begin_line(0x1a1)
	.dwattr DW$122, DW_AT_begin_column(0x06)
	.dwattr DW$122, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$122, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",418,1

;***************************************************************
;* FNAME: _SetupLearningModeAlarmLevels FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SetupLearningModeAlarmLevels:
        MOVW      DP,#_allsensors+39
        MOV       AL,@_allsensors+39    ; |419| 
        MOVW      DP,#_settings+24
        MOV       @_settings+24,AL      ; |419| 
        MOVW      DP,#_allsensors+40
        MOV       AL,@_allsensors+40    ; |420| 
        MOVW      DP,#_settings+25
        MOV       @_settings+25,AL      ; |420| 
        MOVW      DP,#_allsensors+11
        MOV       AL,@_allsensors+11    ; |421| 
        MOVW      DP,#_settings+26
        MOV       @_settings+26,AL      ; |421| 
        MOVW      DP,#_allsensors+12
        MOV       AL,@_allsensors+12    ; |422| 
        MOVW      DP,#_settings+27
        MOV       @_settings+27,AL      ; |422| 
        MOVW      DP,#_allsensors+41
        MOV       AL,@_allsensors+41    ; |423| 
        MOVW      DP,#_settings+28
        MOV       @_settings+28,AL      ; |423| 
	.dwpsn	"mancal.c",424,1
        LRETR
        ; return occurs
	.dwattr DW$122, DW_AT_end_file("mancal.c")
	.dwattr DW$122, DW_AT_end_line(0x1a8)
	.dwattr DW$122, DW_AT_end_column(0x01)
	.dwendtag DW$122

	.sect	".text"
	.global	_InitCal

DW$123	.dwtag  DW_TAG_subprogram, DW_AT_name("InitCal"), DW_AT_symbol_name("_InitCal")
	.dwattr DW$123, DW_AT_low_pc(_InitCal)
	.dwattr DW$123, DW_AT_high_pc(0x00)
	.dwattr DW$123, DW_AT_begin_file("mancal.c")
	.dwattr DW$123, DW_AT_begin_line(0x1b1)
	.dwattr DW$123, DW_AT_begin_column(0x06)
	.dwattr DW$123, DW_AT_frame_base[DW_OP_breg20 -42]
	.dwattr DW$123, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",434,1

;***************************************************************
;* FNAME: _InitCal                      FR SIZE:  40           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 32 Auto,  6 SOE     *
;***************************************************************

_InitCal:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#34
        MOVZ      AR4,SP                ; |440| 
        MOVB      ACC,#30
        MOVB      XAR5,#0
        SUBB      XAR4,#32              ; |440| 
        LCR       #_memset              ; |440| 
        ; call occurs [#_memset] ; |440| 
        MOVW      DP,#_allsensors+16
        TBIT      @_allsensors+16,#2    ; |442| 
        BF        L26,NTC               ; |442| 
        ; branchcc occurs ; |442| 
        MOVW      DP,#_bReadyToSampling
        MOV       @_bReadyToSampling,#0 ; |444| 
        MOVW      DP,#_bSamplingFinished
        MOV       @_bSamplingFinished,#0 ; |445| 
        MOVB      ACC,#0
        MOVW      DP,#_iRepaidWearReset
        MOVB      XAR3,#0
        MOV       @_iRepaidWearReset,#0 ; |447| 
        MOVW      DP,#_iStartRapidWear
        MOV       @_iStartRapidWear,#0  ; |448| 
        MOVW      DP,#_iFiveResDone
        MOV       @_iFiveResDone,#0     ; |449| 
        MOVW      DP,#_timers+46
        MOVL      @_timers+46,ACC       ; |452| 
        MOVW      DP,#_settings+34
        MOV       @_settings+34,#0      ; |454| 
        MOVW      DP,#_speedcompcoeffs
	.dwpsn	"mancal.c",457,0
        MOV       @_speedcompcoeffs,#1  ; |455| 
L19:    
DW$L$_InitCal$3$B:
	.dwpsn	"mancal.c",458,0
	.dwpsn	"mancal.c",459,0
        MOVB      XAR1,#0
DW$L$_InitCal$3$E:
L20:    
DW$L$_InitCal$4$B:
	.dwpsn	"mancal.c",460,0
        MOVU      ACC,AR3
        MOVL      XAR4,#_speedcompcoeffs+2 ; |461| 
        LSL       ACC,1                 ; |461| 
        ADDU      ACC,AR1               ; |461| 
        ADDL      XAR4,ACC
        MOVL      *-SP[34],ACC          ; |461| 
        MOV       AL,*+XAR4[0]          ; |461| 
        LCR       #U$$TOFS              ; |461| 
        ; call occurs [#U$$TOFS] ; |461| 
        MOVW      DP,#_allsensors+3
        MOVL      XAR2,ACC              ; |461| 
        MOV       AL,@_allsensors+3     ; |462| 
        LCR       #U$$TOFS              ; |462| 
        ; call occurs [#U$$TOFS] ; |462| 
        MOVL      *-SP[2],ACC           ; |462| 
        MOVL      ACC,XAR2              ; |462| 
        LCR       #FS$$MPY              ; |462| 
        ; call occurs [#FS$$MPY] ; |462| 
        MOVL      XAR2,ACC              ; |462| 
        MOV       AL,#0
        MOV       AH,#17096
        MOVL      *-SP[2],ACC           ; |464| 
        MOVL      ACC,XAR2              ; |464| 
        LCR       #FS$$DIV              ; |464| 
        ; call occurs [#FS$$DIV] ; |464| 
        LCR       #FS$$TOU              ; |464| 
        ; call occurs [#FS$$TOU] ; |464| 
        MOVZ      AR6,AL                ; |464| 
        MOVL      XAR4,#_calibration+1  ; |464| 
        MOVL      ACC,*-SP[34]          ; |464| 
        ADDL      XAR4,ACC
        ADDB      XAR1,#1               ; |459| 
        MOV       AL,AR1                ; |459| 
        CMPB      AL,#2                 ; |459| 
        MOV       *+XAR4[0],AR6         ; |464| 
	.dwpsn	"mancal.c",465,0
        BF        L20,LO                ; |459| 
        ; branchcc occurs ; |459| 
DW$L$_InitCal$4$E:
DW$L$_InitCal$5$B:
        ADDB      XAR3,#1               ; |457| 
        MOV       AL,AR3                ; |457| 
        CMPB      AL,#3                 ; |457| 
	.dwpsn	"mancal.c",466,0
        BF        L19,LO                ; |457| 
        ; branchcc occurs ; |457| 
DW$L$_InitCal$5$E:
        MOVW      DP,#_allsensors+5
        MOV       AL,@_allsensors+5     ; |467| 
        MOVB      XAR3,#0
        MOVB      XAR6,#0
        MOVW      DP,#_allsensors+4
        SUB       AL,@_allsensors+4     ; |467| 
        MOVW      DP,#_calibration
        ADDB      AL,#1                 ; |467| 
        MOV       @_calibration,AL      ; |467| 
	.dwpsn	"mancal.c",468,0
        MOV       T,#28                 ; |473| 
L21:    
DW$L$_InitCal$7$B:
	.dwpsn	"mancal.c",469,0
	.dwpsn	"mancal.c",470,0
        MOVB      XAR1,#0
DW$L$_InitCal$7$E:
L22:    
DW$L$_InitCal$8$B:
	.dwpsn	"mancal.c",471,0
        MPYXU     ACC,T,AR1             ; |473| 
        MOVL      XAR4,#_calibration+314 ; |473| 
        ADDU      ACC,AR3               ; |473| 
        LSL       ACC,1                 ; |473| 
        ADDL      XAR4,ACC
        MOVL      *+XAR4[0],XAR6        ; |473| 
        MOVL      XAR4,#_calibration+482 ; |474| 
        ADDL      XAR4,ACC
        ADDB      XAR1,#1               ; |470| 
        MOVB      ACC,#0
        MOVL      *+XAR4[0],ACC         ; |474| 
        MOV       AL,AR1                ; |470| 
        CMPB      AL,#3                 ; |470| 
	.dwpsn	"mancal.c",475,0
        BF        L22,LO                ; |470| 
        ; branchcc occurs ; |470| 
DW$L$_InitCal$8$E:
DW$L$_InitCal$9$B:
        ADDB      XAR3,#1               ; |468| 
        MOV       AL,AR3                ; |468| 
        CMPB      AL,#28                ; |468| 
	.dwpsn	"mancal.c",476,0
        BF        L21,LO                ; |468| 
        ; branchcc occurs ; |468| 
DW$L$_InitCal$9$E:
	.dwpsn	"mancal.c",478,0
        MOVB      XAR1,#0
L23:    
DW$L$_InitCal$11$B:
        MOVU      ACC,AR1
        MOVL      XAR4,#_calibration+14 ; |478| 
        LSL       ACC,1                 ; |478| 
        ADDL      XAR4,ACC
        ADDB      XAR1,#1               ; |478| 
        MOVB      ACC,#0
        MOVL      *+XAR4[0],ACC         ; |478| 
        MOV       AL,AR1                ; |478| 
        CMPB      AL,#150               ; |478| 
        BF        L23,LO                ; |478| 
        ; branchcc occurs ; |478| 
DW$L$_InitCal$11$E:
        MOVB      ACC,#0
        MOVL      XAR4,#_calibration+8  ; |480| 
        MOVL      *+XAR4[0],ACC         ; |480| 
        MOVL      *+XAR4[2],ACC         ; |481| 
        MOVL      *+XAR4[4],ACC         ; |482| 
	.dwpsn	"mancal.c",485,0
        MOVB      XAR1,#0
L24:    
DW$L$_InitCal$13$B:
	.dwpsn	"mancal.c",486,0
        MOV       AL,AR1                ; |487| 
        MOVB      AH,#1                 ; |487| 
        LCR       #_SetCalMode          ; |487| 
        ; call occurs [#_SetCalMode] ; |487| 
        MOV       AL,AR1                ; |488| 
        LCR       #_WriteSensorStatustoNVMEM ; |488| 
        ; call occurs [#_WriteSensorStatustoNVMEM] ; |488| 
        MOVU      ACC,AR1
        MOVL      XAR4,#_fRapidWearAverage ; |489| 
        LSL       ACC,1                 ; |489| 
        ADDL      XAR4,ACC
        MOV       AH,#0
        MOV       AL,#0
        ADDB      XAR1,#1               ; |485| 
        MOVL      *+XAR4[0],ACC         ; |489| 
        MOV       AL,AR1                ; |485| 
        CMPB      AL,#28                ; |485| 
	.dwpsn	"mancal.c",490,0
        BF        L24,LO                ; |485| 
        ; branchcc occurs ; |485| 
DW$L$_InitCal$13$E:
        LCR       #_SensorStatustoSDCardFile ; |491| 
        ; call occurs [#_SensorStatustoSDCardFile] ; |491| 
        MOVW      DP,#_allsensors+16
        OR        @_allsensors+16,#0x0002 ; |494| 
        LCR       #_SetupLearningModeAlarmLevels ; |496| 
        ; call occurs [#_SetupLearningModeAlarmLevels] ; |496| 
        LCR       #_ClearCalibrationAlarms ; |498| 
        ; call occurs [#_ClearCalibrationAlarms] ; |498| 
        LCR       #_WriteSpeedCompStructtoNVMEM ; |500| 
        ; call occurs [#_WriteSpeedCompStructtoNVMEM] ; |500| 
        LCR       #_WriteCalibrationStructtoNVMEM ; |501| 
        ; call occurs [#_WriteCalibrationStructtoNVMEM] ; |501| 
        LCR       #_PrewarnReset        ; |503| 
        ; call occurs [#_PrewarnReset] ; |503| 
        MOVB      AL,#5                 ; |505| 
        LCR       #_SetBitEvent         ; |505| 
        ; call occurs [#_SetBitEvent] ; |505| 
        MOVW      DP,#_allsensors+16
        AND       @_allsensors+16,#0xfffb ; |507| 
        MOVW      DP,#_mancal+3
        MOV       @_mancal+3,#0         ; |508| 
        LCR       #_ClearManCompSequence ; |510| 
        ; call occurs [#_ClearManCompSequence] ; |510| 
        LCR       #_ClearSelectiveMANTable ; |511| 
        ; call occurs [#_ClearSelectiveMANTable] ; |511| 
        LCR       #_ClearEventCodeListArea ; |512| 
        ; call occurs [#_ClearEventCodeListArea] ; |512| 
        MOVB      AL,#3                 ; |514| 
        LCR       #_CalibrationtdUpdate ; |514| 
        ; call occurs [#_CalibrationtdUpdate] ; |514| 
        MOVB      XAR0,#8               ; |524| 
        MOV       T,#10                 ; |519| 
	.dwpsn	"mancal.c",517,0
        MOVB      XAR1,#0
L25:    
DW$L$_InitCal$16$B:
	.dwpsn	"mancal.c",518,0
        MPYXU     ACC,T,AR1             ; |519| 
        MOVL      XAR4,#_manref         ; |519| 
        ADDL      XAR4,ACC
        MOV       AH,#0
        MOV       AL,#0
        MOVL      *+XAR4[0],ACC         ; |519| 
        MOV       *+XAR4[6],#0          ; |520| 
        MOVL      *+XAR4[2],ACC         ; |521| 
        MOV       *+XAR4[7],#0          ; |522| 
        MOVL      *+XAR4[4],ACC         ; |523| 
        MOVU      ACC,AR1
        MOV       *+XAR4[AR0],#0        ; |524| 
        LSL       ACC,1                 ; |526| 
        MOVL      XAR4,#_manrefsum      ; |526| 
        ADDL      XAR4,ACC
        ADDB      XAR1,#1               ; |517| 
        MOV       AL,AR1                ; |517| 
        MOV       *+XAR4[0],#0          ; |526| 
        CMPB      AL,#28                ; |517| 
        MOV       *+XAR4[1],#0          ; |527| 
	.dwpsn	"mancal.c",528,0
        BF        L25,LO                ; |517| 
        ; branchcc occurs ; |517| 
DW$L$_InitCal$16$E:
        MOV       AH,#0
        MOV       AL,#0
        MOVW      DP,#_dynalarmlevels+16
        MOVL      @_dynalarmlevels+16,ACC ; |530| 
        MOVW      DP,#_dynalarmlevels+18
        MOV       @_dynalarmlevels+18,#0 ; |531| 
        MOV       AH,#0
        MOV       AL,#0
        MOVW      DP,#_dynalarmlevels
        MOVL      @_dynalarmlevels,ACC  ; |532| 
        MOVW      DP,#_dynalarmlevels+19
        MOV       @_dynalarmlevels+19,#0 ; |533| 
        MOV       AL,#0
        MOVW      DP,#_dynalarmlevels+14
        MOV       AH,#0
        MOVL      @_dynalarmlevels+14,ACC ; |534| 
        MOVW      DP,#_dynalarmlevels+20
        MOV       @_dynalarmlevels+20,#0 ; |535| 
L26:    
        SUBB      SP,#34
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"mancal.c",537,1
        LRETR
        ; return occurs

DW$124	.dwtag  DW_TAG_loop
	.dwattr DW$124, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L25:1:1471518980")
	.dwattr DW$124, DW_AT_begin_file("mancal.c")
	.dwattr DW$124, DW_AT_begin_line(0x205)
	.dwattr DW$124, DW_AT_end_line(0x210)
DW$125	.dwtag  DW_TAG_loop_range
	.dwattr DW$125, DW_AT_low_pc(DW$L$_InitCal$16$B)
	.dwattr DW$125, DW_AT_high_pc(DW$L$_InitCal$16$E)
	.dwendtag DW$124


DW$126	.dwtag  DW_TAG_loop
	.dwattr DW$126, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L24:1:1471518980")
	.dwattr DW$126, DW_AT_begin_file("mancal.c")
	.dwattr DW$126, DW_AT_begin_line(0x1e5)
	.dwattr DW$126, DW_AT_end_line(0x1ea)
DW$127	.dwtag  DW_TAG_loop_range
	.dwattr DW$127, DW_AT_low_pc(DW$L$_InitCal$13$B)
	.dwattr DW$127, DW_AT_high_pc(DW$L$_InitCal$13$E)
	.dwendtag DW$126


DW$128	.dwtag  DW_TAG_loop
	.dwattr DW$128, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L23:1:1471518980")
	.dwattr DW$128, DW_AT_begin_file("mancal.c")
	.dwattr DW$128, DW_AT_begin_line(0x1de)
	.dwattr DW$128, DW_AT_end_line(0x1de)
DW$129	.dwtag  DW_TAG_loop_range
	.dwattr DW$129, DW_AT_low_pc(DW$L$_InitCal$11$B)
	.dwattr DW$129, DW_AT_high_pc(DW$L$_InitCal$11$E)
	.dwendtag DW$128


DW$130	.dwtag  DW_TAG_loop
	.dwattr DW$130, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L21:1:1471518980")
	.dwattr DW$130, DW_AT_begin_file("mancal.c")
	.dwattr DW$130, DW_AT_begin_line(0x1d4)
	.dwattr DW$130, DW_AT_end_line(0x1dc)
DW$131	.dwtag  DW_TAG_loop_range
	.dwattr DW$131, DW_AT_low_pc(DW$L$_InitCal$7$B)
	.dwattr DW$131, DW_AT_high_pc(DW$L$_InitCal$7$E)
DW$132	.dwtag  DW_TAG_loop_range
	.dwattr DW$132, DW_AT_low_pc(DW$L$_InitCal$9$B)
	.dwattr DW$132, DW_AT_high_pc(DW$L$_InitCal$9$E)

DW$133	.dwtag  DW_TAG_loop
	.dwattr DW$133, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L22:2:1471518980")
	.dwattr DW$133, DW_AT_begin_file("mancal.c")
	.dwattr DW$133, DW_AT_begin_line(0x1d6)
	.dwattr DW$133, DW_AT_end_line(0x1db)
DW$134	.dwtag  DW_TAG_loop_range
	.dwattr DW$134, DW_AT_low_pc(DW$L$_InitCal$8$B)
	.dwattr DW$134, DW_AT_high_pc(DW$L$_InitCal$8$E)
	.dwendtag DW$133

	.dwendtag DW$130


DW$135	.dwtag  DW_TAG_loop
	.dwattr DW$135, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L19:1:1471518980")
	.dwattr DW$135, DW_AT_begin_file("mancal.c")
	.dwattr DW$135, DW_AT_begin_line(0x1c9)
	.dwattr DW$135, DW_AT_end_line(0x1d2)
DW$136	.dwtag  DW_TAG_loop_range
	.dwattr DW$136, DW_AT_low_pc(DW$L$_InitCal$3$B)
	.dwattr DW$136, DW_AT_high_pc(DW$L$_InitCal$3$E)
DW$137	.dwtag  DW_TAG_loop_range
	.dwattr DW$137, DW_AT_low_pc(DW$L$_InitCal$5$B)
	.dwattr DW$137, DW_AT_high_pc(DW$L$_InitCal$5$E)

DW$138	.dwtag  DW_TAG_loop
	.dwattr DW$138, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L20:2:1471518980")
	.dwattr DW$138, DW_AT_begin_file("mancal.c")
	.dwattr DW$138, DW_AT_begin_line(0x1cb)
	.dwattr DW$138, DW_AT_end_line(0x1d1)
DW$139	.dwtag  DW_TAG_loop_range
	.dwattr DW$139, DW_AT_low_pc(DW$L$_InitCal$4$B)
	.dwattr DW$139, DW_AT_high_pc(DW$L$_InitCal$4$E)
	.dwendtag DW$138

	.dwendtag DW$135

	.dwattr DW$123, DW_AT_end_file("mancal.c")
	.dwattr DW$123, DW_AT_end_line(0x219)
	.dwattr DW$123, DW_AT_end_column(0x01)
	.dwendtag DW$123

	.sect	".text"
	.global	_MANCalibrationStages

DW$140	.dwtag  DW_TAG_subprogram, DW_AT_name("MANCalibrationStages"), DW_AT_symbol_name("_MANCalibrationStages")
	.dwattr DW$140, DW_AT_low_pc(_MANCalibrationStages)
	.dwattr DW$140, DW_AT_high_pc(0x00)
	.dwattr DW$140, DW_AT_begin_file("mancal.c")
	.dwattr DW$140, DW_AT_begin_line(0x21d)
	.dwattr DW$140, DW_AT_begin_column(0x06)
	.dwattr DW$140, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$140, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",542,1

;***************************************************************
;* FNAME: _MANCalibrationStages         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_MANCalibrationStages:
        MOVW      DP,#_allsensors+16
        TBIT      @_allsensors+16,#1    ; |543| 
        BF        L29,NTC               ; |543| 
        ; branchcc occurs ; |543| 
        LCR       #_CalProgression      ; |545| 
        ; call occurs [#_CalProgression] ; |545| 
        MOVW      DP,#_speedcompcoeffs
        MOV       AL,@_speedcompcoeffs  ; |546| 
        CMPB      AL,#2                 ; |546| 
        BF        L28,EQ                ; |546| 
        ; branchcc occurs ; |546| 
        CMPB      AL,#4                 ; |546| 
        BF        L28,EQ                ; |546| 
        ; branchcc occurs ; |546| 
        CMPB      AL,#6                 ; |546| 
        BF        L28,EQ                ; |546| 
        ; branchcc occurs ; |546| 
        ADDB      AL,#-7
        CMPB      AL,#1                 ; |546| 
        BF        L29,HI                ; |546| 
        ; branchcc occurs ; |546| 
        MOVW      DP,#_motion+4
        MOV       AL,@_motion+4         ; |558| 
        BF        L27,NEQ               ; |558| 
        ; branchcc occurs ; |558| 
        LCR       #_FineCurveCal        ; |558| 
        ; call occurs [#_FineCurveCal] ; |558| 
        BF        L29,UNC               ; |558| 
        ; branch occurs ; |558| 
L27:    
        MOVW      DP,#_settings+34
        MOV       @_settings+34,#0      ; |559| 
        BF        L29,UNC               ; |559| 
        ; branch occurs ; |559| 
L28:    
        LCR       #_RoughCal            ; |549| 
        ; call occurs [#_RoughCal] ; |549| 
L29:    
	.dwpsn	"mancal.c",567,1
        LRETR
        ; return occurs
	.dwattr DW$140, DW_AT_end_file("mancal.c")
	.dwattr DW$140, DW_AT_end_line(0x237)
	.dwattr DW$140, DW_AT_end_column(0x01)
	.dwendtag DW$140

	.sect	".text"
	.global	_AccumulateRoughCal

DW$141	.dwtag  DW_TAG_subprogram, DW_AT_name("AccumulateRoughCal"), DW_AT_symbol_name("_AccumulateRoughCal")
	.dwattr DW$141, DW_AT_low_pc(_AccumulateRoughCal)
	.dwattr DW$141, DW_AT_high_pc(0x00)
	.dwattr DW$141, DW_AT_begin_file("mancal.c")
	.dwattr DW$141, DW_AT_begin_line(0x23b)
	.dwattr DW$141, DW_AT_begin_column(0x06)
	.dwattr DW$141, DW_AT_frame_base[DW_OP_breg20 -14]
	.dwattr DW$141, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",572,1

;***************************************************************
;* FNAME: _AccumulateRoughCal           FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  4 Auto,  6 SOE     *
;***************************************************************

_AccumulateRoughCal:
;* AL    assigned to _index
DW$142	.dwtag  DW_TAG_formal_parameter, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$142, DW_AT_type(*DW$T$10)
	.dwattr DW$142, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _rpm
DW$143	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$143, DW_AT_type(*DW$T$11)
	.dwattr DW$143, DW_AT_location[DW_OP_reg1]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVW      DP,#_allsensors+4
        MOVL      *SP++,XAR3
        MOVZ      AR3,AL                ; |572| 
        ADDB      SP,#6
        MOV       AL,AH                 ; |572| 
        SUB       AL,@_allsensors+4     ; |580| 
        CMPB      AL,#150               ; |580| 
        MOV       *-SP[3],AH            ; |572| 
        BF        L33,HIS               ; |580| 
        ; branchcc occurs ; |580| 
        MOVW      DP,#_iBarred
        MOV       AH,@_iBarred          ; |580| 
        BF        L33,NEQ               ; |580| 
        ; branchcc occurs ; |580| 
        MOVW      DP,#_iDeltaRPM15
        MOV       AH,@_iDeltaRPM15      ; |580| 
        BF        L33,NEQ               ; |580| 
        ; branchcc occurs ; |580| 
        MOVU      ACC,AL
        MOVL      XAR4,#_calibration+14 ; |584| 
        LSL       ACC,1                 ; |584| 
        ADDL      XAR4,ACC
        MOVB      ACC,#1
        ADDL      *+XAR4[0],ACC         ; |584| 
	.dwpsn	"mancal.c",586,0
        MOV       *-SP[4],#0            ; |586| 
L30:    
DW$L$_AccumulateRoughCal$5$B:
	.dwpsn	"mancal.c",587,0
        MOV       T,*-SP[4]
        MOVL      XAR4,#_sensor         ; |588| 
        MPYB      ACC,T,#18             ; |588| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |588| 
        AND       AH,AL,#0x0001         ; |588| 
        BF        L32,EQ                ; |588| 
        ; branchcc occurs ; |588| 
DW$L$_AccumulateRoughCal$5$E:
DW$L$_AccumulateRoughCal$6$B:
        ANDB      AL,#2                 ; |588| 
        BF        L32,EQ                ; |588| 
        ; branchcc occurs ; |588| 
DW$L$_AccumulateRoughCal$6$E:
DW$L$_AccumulateRoughCal$7$B:
        MOV       AL,*-SP[4]
        LCR       #_GetPreCompValue     ; |591| 
        ; call occurs [#_GetPreCompValue] ; |591| 
        MOVZ      AR6,AL                ; |591| 
        CMP       AR6,#-32000           ; |591| 
        BF        L31,GT                ; |591| 
        ; branchcc occurs ; |591| 
DW$L$_AccumulateRoughCal$7$E:
DW$L$_AccumulateRoughCal$8$B:
        SETC      SXM
        MOVL      XAR4,#_calibration+8  ; |603| 
        MOV       ACC,AR3 << 1          ; |603| 
        ADDL      XAR4,ACC
        MOVL      XAR1,XAR4             ; |603| 
        MOVL      ACC,*+XAR1[0]         ; |603| 
        BF        L32,EQ                ; |603| 
        ; branchcc occurs ; |603| 
DW$L$_AccumulateRoughCal$8$E:
DW$L$_AccumulateRoughCal$9$B:
        MOV       T,AR3                 ; |606| 
        MOV       AL,*-SP[4]            ; |606| 
        MOVL      XAR4,#_calibration+482 ; |606| 
        MPYB      P,T,#56               ; |606| 
        MOV       ACC,AL << 1           ; |606| 
        ADDL      ACC,P
        ADDL      XAR4,ACC
        MOVL      XAR2,XAR4             ; |606| 
        MOVL      ACC,*+XAR2[0]         ; |606| 
        LCR       #L$$TOFS              ; |606| 
        ; call occurs [#L$$TOFS] ; |606| 
        MOVL      *-SP[6],ACC           ; |606| 
        MOVL      ACC,*+XAR1[0]         ; |606| 
        LCR       #UL$$TOFS             ; |606| 
        ; call occurs [#UL$$TOFS] ; |606| 
        MOVL      *-SP[2],ACC           ; |606| 
        MOVL      ACC,*-SP[6]           ; |606| 
        LCR       #FS$$DIV              ; |606| 
        ; call occurs [#FS$$DIV] ; |606| 
        LCR       #_FloattoIntRound     ; |606| 
        ; call occurs [#_FloattoIntRound] ; |606| 
        SETC      SXM
        MOV       ACC,AL                ; |606| 
        ADDL      *+XAR2[0],ACC         ; |606| 
        BF        L32,UNC               ; |606| 
        ; branch occurs ; |606| 
DW$L$_AccumulateRoughCal$9$E:
L31:    
DW$L$_AccumulateRoughCal$10$B:
        MOV       T,AR3                 ; |595| 
        SETC      SXM
        MOV       AL,*-SP[4]            ; |595| 
        MOVL      XAR4,#_calibration+482 ; |595| 
        MPYB      P,T,#56               ; |595| 
        MOV       ACC,AL << 1           ; |595| 
        ADDL      ACC,P
        ADDL      XAR4,ACC
        MOV       ACC,AR6               ; |595| 
        ADDL      *+XAR4[0],ACC         ; |595| 
DW$L$_AccumulateRoughCal$10$E:
L32:    
DW$L$_AccumulateRoughCal$11$B:
        INC       *-SP[4]               ; |586| 
        MOV       AL,*-SP[4]
        CMPB      AL,#28                ; |586| 
	.dwpsn	"mancal.c",612,0
        BF        L30,LT                ; |586| 
        ; branchcc occurs ; |586| 
DW$L$_AccumulateRoughCal$11$E:
        MOV       T,AR3                 ; |613| 
        MOVL      XAR4,#_calibration+314 ; |613| 
        MPYB      ACC,T,#56             ; |613| 
        ADDL      XAR4,ACC
        SETC      SXM
        MOV       AL,*-SP[3]            ; |613| 
        MOVU      ACC,AL
        ADDL      *+XAR4[0],ACC         ; |613| 
        MOV       ACC,AR3 << 1          ; |614| 
        MOVL      XAR4,#_calibration+8  ; |614| 
        ADDL      XAR4,ACC
        MOVB      ACC,#1
        ADDL      *+XAR4[0],ACC         ; |614| 
L33:    
        SUBB      SP,#6
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"mancal.c",617,1
        LRETR
        ; return occurs

DW$144	.dwtag  DW_TAG_loop
	.dwattr DW$144, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L30:1:1471518980")
	.dwattr DW$144, DW_AT_begin_file("mancal.c")
	.dwattr DW$144, DW_AT_begin_line(0x24a)
	.dwattr DW$144, DW_AT_end_line(0x264)
DW$145	.dwtag  DW_TAG_loop_range
	.dwattr DW$145, DW_AT_low_pc(DW$L$_AccumulateRoughCal$5$B)
	.dwattr DW$145, DW_AT_high_pc(DW$L$_AccumulateRoughCal$5$E)
DW$146	.dwtag  DW_TAG_loop_range
	.dwattr DW$146, DW_AT_low_pc(DW$L$_AccumulateRoughCal$7$B)
	.dwattr DW$146, DW_AT_high_pc(DW$L$_AccumulateRoughCal$7$E)
DW$147	.dwtag  DW_TAG_loop_range
	.dwattr DW$147, DW_AT_low_pc(DW$L$_AccumulateRoughCal$6$B)
	.dwattr DW$147, DW_AT_high_pc(DW$L$_AccumulateRoughCal$6$E)
DW$148	.dwtag  DW_TAG_loop_range
	.dwattr DW$148, DW_AT_low_pc(DW$L$_AccumulateRoughCal$8$B)
	.dwattr DW$148, DW_AT_high_pc(DW$L$_AccumulateRoughCal$8$E)
DW$149	.dwtag  DW_TAG_loop_range
	.dwattr DW$149, DW_AT_low_pc(DW$L$_AccumulateRoughCal$9$B)
	.dwattr DW$149, DW_AT_high_pc(DW$L$_AccumulateRoughCal$9$E)
DW$150	.dwtag  DW_TAG_loop_range
	.dwattr DW$150, DW_AT_low_pc(DW$L$_AccumulateRoughCal$10$B)
	.dwattr DW$150, DW_AT_high_pc(DW$L$_AccumulateRoughCal$10$E)
DW$151	.dwtag  DW_TAG_loop_range
	.dwattr DW$151, DW_AT_low_pc(DW$L$_AccumulateRoughCal$11$B)
	.dwattr DW$151, DW_AT_high_pc(DW$L$_AccumulateRoughCal$11$E)
	.dwendtag DW$144

	.dwattr DW$141, DW_AT_end_file("mancal.c")
	.dwattr DW$141, DW_AT_end_line(0x269)
	.dwattr DW$141, DW_AT_end_column(0x01)
	.dwendtag DW$141

	.sect	".text"
	.global	_RealRoughCal

DW$152	.dwtag  DW_TAG_subprogram, DW_AT_name("RealRoughCal"), DW_AT_symbol_name("_RealRoughCal")
	.dwattr DW$152, DW_AT_low_pc(_RealRoughCal)
	.dwattr DW$152, DW_AT_high_pc(0x00)
	.dwattr DW$152, DW_AT_begin_file("mancal.c")
	.dwattr DW$152, DW_AT_begin_line(0x26b)
	.dwattr DW$152, DW_AT_begin_column(0x06)
	.dwattr DW$152, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$152, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",620,1

;***************************************************************
;* FNAME: _RealRoughCal                 FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_RealRoughCal:
;* AL    assigned to _index
DW$153	.dwtag  DW_TAG_formal_parameter, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$153, DW_AT_type(*DW$T$10)
	.dwattr DW$153, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _rpm
DW$154	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$154, DW_AT_type(*DW$T$11)
	.dwattr DW$154, DW_AT_location[DW_OP_reg1]
        MOVL      *SP++,XAR1
        MOVW      DP,#_settings+34
        MOV       T,#12000              ; |622| 
        MOVL      *SP++,XAR2
        MOVZ      AR1,AL                ; |620| 
        MOV       @_settings+34,#1      ; |621| 
        MOVZ      AR2,AH                ; |620| 
        MOVW      DP,#_speedcompcoeffs+9
        MPYXU     ACC,T,@_speedcompcoeffs+9 ; |622| 
        ADDB      SP,#2
        MOVW      DP,#_timers+46
        CMPL      ACC,@_timers+46       ; |622| 
        BF        L40,LOS               ; |622| 
        ; branchcc occurs ; |622| 
        MOVW      DP,#_allsensors+16
        TBIT      @_allsensors+16,#0    ; |629| 
        BF        L34,NTC               ; |629| 
        ; branchcc occurs ; |629| 
        MOV       AL,AR1
        MOV       AH,AR2                ; |631| 
        LCR       #_AccumulateRoughCal  ; |631| 
        ; call occurs [#_AccumulateRoughCal] ; |631| 
L34:    
        MOV       ACC,#6000             ; |634| 
        MOVW      DP,#_timers+46
        CMPL      ACC,@_timers+46       ; |634| 
        BF        L39,LO                ; |634| 
        ; branchcc occurs ; |634| 
        MOVW      DP,#_bSamplingFinished
        MOV       AL,@_bSamplingFinished ; |636| 
        BF        L38,NEQ               ; |636| 
        ; branchcc occurs ; |636| 
        MOVW      DP,#_CalRpm
        MOV       @_CalRpm,AR2          ; |638| 
        MOV       AL,AR1                ; |640| 
        MOVW      DP,#_bSamplingFinished
        MOV       @_bSamplingFinished,#1 ; |640| 
        BF        L36,EQ                ; |641| 
        ; branchcc occurs ; |641| 
        CMPB      AL,#1                 ; |642| 
        BF        L35,EQ                ; |642| 
        ; branchcc occurs ; |642| 
        LCR       #_Stage3CalCurve      ; |643| 
        ; call occurs [#_Stage3CalCurve] ; |643| 
        BF        L37,UNC               ; |643| 
        ; branch occurs ; |643| 
L35:    
        LCR       #_SecondStageCalCurve ; |642| 
        ; call occurs [#_SecondStageCalCurve] ; |642| 
        BF        L37,UNC               ; |642| 
        ; branch occurs ; |642| 
L36:    
        LCR       #_FirstStageCalCurve  ; |641| 
        ; call occurs [#_FirstStageCalCurve] ; |641| 
L37:    
        MOVW      DP,#_mancal+3
        MOV       @_mancal+3,#1         ; |644| 
        MOVW      DP,#_bReadyToSampling
        MOV       @_bReadyToSampling,#0 ; |646| 
L38:    
        MOVW      DP,#_CalRpm
        MOV       AL,@_CalRpm           ; |649| 
        LCR       #U$$TOFS              ; |649| 
        ; call occurs [#U$$TOFS] ; |649| 
        MOVL      *-SP[2],ACC           ; |649| 
        MOV       AL,#0
        MOV       AH,#17302
        LCR       #FS$$DIV              ; |649| 
        ; call occurs [#FS$$DIV] ; |649| 
        MOVL      XAR6,ACC              ; |649| 
        MOV       AL,#0
        MOV       AH,#17224
        MOVL      *-SP[2],ACC           ; |649| 
        MOVL      ACC,XAR6              ; |649| 
        LCR       #FS$$MPY              ; |649| 
        ; call occurs [#FS$$MPY] ; |649| 
        LCR       #FS$$TOUL             ; |649| 
        ; call occurs [#FS$$TOUL] ; |649| 
        MOVL      XAR4,#6000            ; |649| 
        MOVL      P,XAR4                ; |649| 
        SUBL      P,ACC
        MOVW      DP,#_timers+46
        MOVL      ACC,P                 ; |649| 
        CMPL      ACC,@_timers+46       ; |649| 
        BF        L39,HI                ; |649| 
        ; branchcc occurs ; |649| 
        MOV       AL,AR1
        BF        L41,NEQ               ; |651| 
        ; branchcc occurs ; |651| 
        MOV       ACC,#5500             ; |651| 
        MOVW      DP,#_timers+46
        CMPL      ACC,@_timers+46       ; |651| 
        BF        L41,LOS               ; |651| 
        ; branchcc occurs ; |651| 
        MOVB      AL,#1                 ; |651| 
        MOVW      DP,#_iStartRapidWear
        MOV       @_iStartRapidWear,AL  ; |651| 
        MOVW      DP,#_iRepaidWearReset
        MOV       @_iRepaidWearReset,AL ; |651| 
        BF        L42,UNC               ; |651| 
        ; branch occurs ; |651| 
L39:    
        MOVW      DP,#_iRepaidWearReset
        MOV       @_iRepaidWearReset,#0 ; |667| 
        BF        L42,UNC               ; |667| 
        ; branch occurs ; |667| 
L40:    
        MOV       AL,AR1
        BF        L42,EQ                ; |624| 
        ; branchcc occurs ; |624| 
L41:    
        MOVW      DP,#_iRepaidWearReset
        MOV       @_iRepaidWearReset,#1 ; |624| 
L42:    
        SUBB      SP,#2
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"mancal.c",677,1
        LRETR
        ; return occurs
	.dwattr DW$152, DW_AT_end_file("mancal.c")
	.dwattr DW$152, DW_AT_end_line(0x2a5)
	.dwattr DW$152, DW_AT_end_column(0x01)
	.dwendtag DW$152

	.sect	".text"
	.global	_RoughCal

DW$155	.dwtag  DW_TAG_subprogram, DW_AT_name("RoughCal"), DW_AT_symbol_name("_RoughCal")
	.dwattr DW$155, DW_AT_low_pc(_RoughCal)
	.dwattr DW$155, DW_AT_high_pc(0x00)
	.dwattr DW$155, DW_AT_begin_file("mancal.c")
	.dwattr DW$155, DW_AT_begin_line(0x2aa)
	.dwattr DW$155, DW_AT_begin_column(0x06)
	.dwattr DW$155, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$155, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",683,1

;***************************************************************
;* FNAME: _RoughCal                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_RoughCal:
        MOVB      AL,#0
        LCR       #_GetModalRPM         ; |687| 
        ; call occurs [#_GetModalRPM] ; |687| 
        MOVW      DP,#_motion+4
        MOV       AH,AL                 ; |687| 
        MOV       AL,@_motion+4         ; |690| 
        BF        L46,NEQ               ; |690| 
        ; branchcc occurs ; |690| 
        MOVW      DP,#_speedcompcoeffs
        MOV       AL,@_speedcompcoeffs  ; |690| 
        CMPB      AL,#2                 ; |690| 
        BF        L45,EQ                ; |690| 
        ; branchcc occurs ; |690| 
        CMPB      AL,#4                 ; |690| 
        BF        L44,EQ                ; |690| 
        ; branchcc occurs ; |690| 
        CMPB      AL,#6                 ; |690| 
        BF        L47,NEQ               ; |690| 
        ; branchcc occurs ; |690| 
        MOVL      XAR4,#_calibration+1  ; |716| 
        CMP       AH,*+XAR4[4]          ; |716| 
        BF        L46,LO                ; |716| 
        ; branchcc occurs ; |716| 
        CMP       AH,*+XAR4[5]          ; |716| 
        BF        L46,HI                ; |716| 
        ; branchcc occurs ; |716| 
        MOVB      AL,#2                 ; |718| 
L43:    
        LCR       #_RealRoughCal        ; |718| 
        ; call occurs [#_RealRoughCal] ; |718| 
        BF        L47,UNC               ; |719| 
        ; branch occurs ; |719| 
L44:    
        MOVL      XAR4,#_calibration+1  ; |706| 
        CMP       AH,*+XAR4[2]          ; |706| 
        BF        L46,LO                ; |706| 
        ; branchcc occurs ; |706| 
        CMP       AH,*+XAR4[3]          ; |706| 
        BF        L46,HI                ; |706| 
        ; branchcc occurs ; |706| 
        MOVB      AL,#1                 ; |708| 
        BF        L43,UNC               ; |709| 
        ; branch occurs ; |709| 
L45:    
        MOVL      XAR4,#_calibration+1  ; |693| 
        CMP       AH,*+XAR4[0]          ; |693| 
        BF        L46,LO                ; |693| 
        ; branchcc occurs ; |693| 
        CMP       AH,*+XAR4[1]          ; |693| 
        BF        L46,HI                ; |693| 
        ; branchcc occurs ; |693| 
        MOVB      AL,#0
        BF        L43,UNC               ; |696| 
        ; branch occurs ; |696| 
L46:    
        MOVW      DP,#_settings+34
        MOV       @_settings+34,#0      ; |728| 
L47:    
	.dwpsn	"mancal.c",729,1
        LRETR
        ; return occurs
	.dwattr DW$155, DW_AT_end_file("mancal.c")
	.dwattr DW$155, DW_AT_end_line(0x2d9)
	.dwattr DW$155, DW_AT_end_column(0x01)
	.dwendtag DW$155

	.sect	".text"
	.global	_CalProgression

DW$156	.dwtag  DW_TAG_subprogram, DW_AT_name("CalProgression"), DW_AT_symbol_name("_CalProgression")
	.dwattr DW$156, DW_AT_low_pc(_CalProgression)
	.dwattr DW$156, DW_AT_high_pc(0x00)
	.dwattr DW$156, DW_AT_begin_file("mancal.c")
	.dwattr DW$156, DW_AT_begin_line(0x2e0)
	.dwattr DW$156, DW_AT_begin_column(0x06)
	.dwattr DW$156, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$156, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",737,1

;***************************************************************
;* FNAME: _CalProgression               FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_CalProgression:
        MOVL      *SP++,XAR1
        MOVW      DP,#_timers+46
        MOVL      *SP++,XAR2
        MOVL      ACC,@_timers+46       ; |744| 
        ADDB      SP,#2
        BF        L63,NEQ               ; |744| 
        ; branchcc occurs ; |744| 
        MOVB      AL,#0
        LCR       #_GetModalRPM         ; |748| 
        ; call occurs [#_GetModalRPM] ; |748| 
        MOVZ      AR2,AL                ; |748| 
        MOVW      DP,#_speedcompcoeffs
        MOV       AL,@_speedcompcoeffs  ; |749| 
        CMPB      AL,#5                 ; |749| 
        BF        L48,GT                ; |749| 
        ; branchcc occurs ; |749| 
        CMPB      AL,#5                 ; |749| 
        BF        L49,EQ                ; |749| 
        ; branchcc occurs ; |749| 
        CMPB      AL,#1                 ; |749| 
        BF        L59,EQ                ; |749| 
        ; branchcc occurs ; |749| 
        CMPB      AL,#2                 ; |749| 
        BF        L57,EQ                ; |749| 
        ; branchcc occurs ; |749| 
        CMPB      AL,#3                 ; |749| 
        BF        L50,EQ                ; |749| 
        ; branchcc occurs ; |749| 
        CMPB      AL,#4                 ; |749| 
        BF        L56,EQ                ; |749| 
        ; branchcc occurs ; |749| 
        BF        L63,UNC               ; |749| 
        ; branch occurs ; |749| 
L48:    
        CMPB      AL,#6                 ; |749| 
        BF        L55,EQ                ; |749| 
        ; branchcc occurs ; |749| 
        CMPB      AL,#7                 ; |749| 
        BF        L54,EQ                ; |749| 
        ; branchcc occurs ; |749| 
        CMPB      AL,#8                 ; |749| 
        BF        L53,EQ                ; |749| 
        ; branchcc occurs ; |749| 
        CMPB      AL,#9                 ; |749| 
        BF        L51,EQ                ; |749| 
        ; branchcc occurs ; |749| 
        BF        L63,UNC               ; |749| 
        ; branch occurs ; |749| 
L49:    
        MOVW      DP,#_settings+34
        MOV       @_settings+34,#0      ; |807| 
        MOV       AL,AR2                ; |810| 
        MOVL      XAR4,#_calibration+1  ; |810| 
        MOVW      DP,#_bSamplingFinished
        MOV       @_bSamplingFinished,#0 ; |808| 
        MOVW      DP,#_bReadyToSampling
        MOV       @_bReadyToSampling,#0 ; |809| 
        CMP       AL,*+XAR4[4]          ; |810| 
        BF        L63,LO                ; |810| 
        ; branchcc occurs ; |810| 
        CMP       AL,*+XAR4[5]          ; |810| 
        BF        L63,HI                ; |810| 
        ; branchcc occurs ; |810| 
        MOVW      DP,#_CalRpm
        MOV       @_CalRpm,AR2          ; |817| 
        LCR       #U$$TOFS              ; |818| 
        ; call occurs [#U$$TOFS] ; |818| 
        MOVL      *-SP[2],ACC           ; |818| 
        MOV       AL,#0
        MOV       AH,#17302
        LCR       #FS$$DIV              ; |818| 
        ; call occurs [#FS$$DIV] ; |818| 
        MOVL      XAR6,ACC              ; |818| 
        MOV       AL,#0
        MOV       AH,#17224
        MOVL      *-SP[2],ACC           ; |818| 
        MOVL      ACC,XAR6              ; |818| 
        LCR       #FS$$MPY              ; |818| 
        ; call occurs [#FS$$MPY] ; |818| 
        LCR       #FS$$TOUL             ; |818| 
        ; call occurs [#FS$$TOUL] ; |818| 
        MOVW      DP,#_wFiveResulotionInMs
        MOVL      @_wFiveResulotionInMs,ACC ; |818| 
        MOV       T,#12000              ; |819| 
        MOVL      XAR6,ACC              ; |818| 
        MOVW      DP,#_speedcompcoeffs+9
        MPYXU     ACC,T,@_speedcompcoeffs+9 ; |819| 
        MOVW      DP,#_timers+46
        ADDL      ACC,XAR6
        MOVL      @_timers+46,ACC       ; |819| 
        MOVW      DP,#_speedcompcoeffs
        MOVB      AL,#8                 ; |822| 
        MOV       @_speedcompcoeffs,#6  ; |821| 
        BF        L62,UNC               ; |822| 
        ; branch occurs ; |822| 
L50:    
        MOVW      DP,#_settings+34
        MOV       @_settings+34,#0      ; |781| 
        MOV       AL,AR2                ; |784| 
        MOVL      XAR4,#_calibration+1  ; |784| 
        MOVW      DP,#_bSamplingFinished
        MOV       @_bSamplingFinished,#0 ; |782| 
        MOVW      DP,#_bReadyToSampling
        MOV       @_bReadyToSampling,#0 ; |783| 
        CMP       AL,*+XAR4[2]          ; |784| 
        BF        L63,LO                ; |784| 
        ; branchcc occurs ; |784| 
        CMP       AL,*+XAR4[3]          ; |784| 
        BF        L63,HI                ; |784| 
        ; branchcc occurs ; |784| 
        MOVW      DP,#_CalRpm
        MOV       @_CalRpm,AR2          ; |791| 
        LCR       #U$$TOFS              ; |792| 
        ; call occurs [#U$$TOFS] ; |792| 
        MOVL      *-SP[2],ACC           ; |792| 
        MOV       AL,#0
        MOV       AH,#17302
        LCR       #FS$$DIV              ; |792| 
        ; call occurs [#FS$$DIV] ; |792| 
        MOVL      XAR6,ACC              ; |792| 
        MOV       AL,#0
        MOV       AH,#17224
        MOVL      *-SP[2],ACC           ; |792| 
        MOVL      ACC,XAR6              ; |792| 
        LCR       #FS$$MPY              ; |792| 
        ; call occurs [#FS$$MPY] ; |792| 
        LCR       #FS$$TOUL             ; |792| 
        ; call occurs [#FS$$TOUL] ; |792| 
        MOVW      DP,#_wFiveResulotionInMs
        MOVL      @_wFiveResulotionInMs,ACC ; |792| 
        MOV       T,#12000              ; |793| 
        MOVL      XAR6,ACC              ; |792| 
        MOVW      DP,#_speedcompcoeffs+9
        MPYXU     ACC,T,@_speedcompcoeffs+9 ; |793| 
        MOVW      DP,#_timers+46
        ADDL      ACC,XAR6
        MOVL      @_timers+46,ACC       ; |793| 
        MOVW      DP,#_speedcompcoeffs
        MOVB      AL,#7                 ; |796| 
        MOV       @_speedcompcoeffs,#4  ; |795| 
        BF        L62,UNC               ; |796| 
        ; branch occurs ; |796| 
L51:    
        MOVW      DP,#_speedcompcoeffs
        MOV       @_speedcompcoeffs,#10 ; |865| 
        MOVW      DP,#_allsensors+16
        AND       @_allsensors+16,#0xfffd ; |866| 
        LCR       #_WriteSpeedCompStructtoNVMEM ; |867| 
        ; call occurs [#_WriteSpeedCompStructtoNVMEM] ; |867| 
	.dwpsn	"mancal.c",869,0
        MOVB      XAR1,#0
L52:    
DW$L$_CalProgression$21$B:
	.dwpsn	"mancal.c",870,0
        MOV       AL,AR1                ; |871| 
        LCR       #_Status1Flags        ; |871| 
        ; call occurs [#_Status1Flags] ; |871| 
        AND       *+XAR4[0],#0xfffd     ; |872| 
        MOV       AL,AR1                ; |873| 
        LCR       #_WriteSensorStatustoNVMEM ; |873| 
        ; call occurs [#_WriteSensorStatustoNVMEM] ; |873| 
        ADDB      XAR1,#1               ; |869| 
        MOV       AL,AR1                ; |869| 
        CMPB      AL,#28                ; |869| 
	.dwpsn	"mancal.c",874,0
        BF        L52,LO                ; |869| 
        ; branchcc occurs ; |869| 
DW$L$_CalProgression$21$E:
        LCR       #_SensorStatustoSDCardFile ; |875| 
        ; call occurs [#_SensorStatustoSDCardFile] ; |875| 
        LCR       #_SetupNormalModeAlarmLevels ; |876| 
        ; call occurs [#_SetupNormalModeAlarmLevels] ; |876| 
        LCR       #_PreWarningInit      ; |877| 
        ; call occurs [#_PreWarningInit] ; |877| 
        MOVB      AL,#1                 ; |878| 
        LCR       #_CalibrationtdUpdate ; |878| 
        ; call occurs [#_CalibrationtdUpdate] ; |878| 
        BF        L63,UNC               ; |880| 
        ; branch occurs ; |880| 
L53:    
        MOVW      DP,#_speedcompcoeffs+15
        MOV       AL,@_speedcompcoeffs+15 ; |842| 
        LCR       #_FineCurveCalInterpolation ; |842| 
        ; call occurs [#_FineCurveCalInterpolation] ; |842| 
        MOVW      DP,#_sdsettings+1
        INC       @_sdsettings+1        ; |846| 
        MOVW      DP,#_sdsettings+1
        MOV       AL,@_sdsettings+1     ; |846| 
        MOVL      XAR4,#_sdcarddir+18   ; |846| 
        ADDB      AL,#-1
        LCR       #_MANCompTabletoSDCardFile ; |846| 
        ; call occurs [#_MANCompTabletoSDCardFile] ; |846| 
        MOVB      AL,#0
        MOVL      XAR4,#_sdcarddir+27   ; |847| 
        LCR       #_MANCompTabletoSDCardFile ; |847| 
        ; call occurs [#_MANCompTabletoSDCardFile] ; |847| 
        LCR       #_WriteMANCompTabletoNVMEM ; |850| 
        ; call occurs [#_WriteMANCompTabletoNVMEM] ; |850| 
        MOVW      DP,#_speedcompcoeffs
        MOV       @_speedcompcoeffs,#9  ; |852| 
        LCR       #_WriteSpeedCompStructtoNVMEM ; |853| 
        ; call occurs [#_WriteSpeedCompStructtoNVMEM] ; |853| 
        MOVW      DP,#_timers+46
        MOVL      XAR4,#6000            ; |854| 
        MOVL      @_timers+46,XAR4      ; |854| 
        LCR       #_SetupNormalModeAlarmLevels ; |855| 
        ; call occurs [#_SetupNormalModeAlarmLevels] ; |855| 
        MOVW      DP,#_mancal+3
        MOV       @_mancal+3,#1         ; |857| 
        LCR       #_ClearCalAveragingAlarm ; |858| 
        ; call occurs [#_ClearCalAveragingAlarm] ; |858| 
        MOVB      AL,#9                 ; |861| 
        BF        L62,UNC               ; |862| 
        ; branch occurs ; |862| 
L54:    
        MOVW      DP,#_speedcompcoeffs
        MOV       @_speedcompcoeffs,#8  ; |838| 
        BF        L63,UNC               ; |839| 
        ; branch occurs ; |839| 
L55:    
        MOVW      DP,#_speedcompcoeffs
        MOV       @_speedcompcoeffs,#7  ; |827| 
        LCR       #_WriteSpeedCompStructtoNVMEM ; |828| 
        ; call occurs [#_WriteSpeedCompStructtoNVMEM] ; |828| 
        LCR       #_FineCalModeInit     ; |829| 
        ; call occurs [#_FineCalModeInit] ; |829| 
        BF        L63,UNC               ; |833| 
        ; branch occurs ; |833| 
L56:    
        MOVW      DP,#_speedcompcoeffs
        MOV       @_speedcompcoeffs,#5  ; |802| 
        BF        L58,UNC               ; |805| 
        ; branch occurs ; |805| 
L57:    
        MOVW      DP,#_speedcompcoeffs
        MOV       @_speedcompcoeffs,#3  ; |776| 
L58:    
        MOVW      DP,#_settings+34
        MOV       @_settings+34,#0      ; |773| 
        BF        L63,UNC               ; |779| 
        ; branch occurs ; |779| 
L59:    
        MOVW      DP,#_settings+34
        MOV       @_settings+34,#0      ; |752| 
        MOVL      XAR4,#_damagemonignore ; |755| 
        MOVW      DP,#_bSamplingFinished
        MOV       @_bSamplingFinished,#0 ; |753| 
        MOVW      DP,#_bReadyToSampling
        MOV       @_bReadyToSampling,#0 ; |754| 
	.dwpsn	"mancal.c",755,0
        MOVB      XAR1,#0
L60:    
DW$L$_CalProgression$30$B:
        MOV       *+XAR4[AR1],#3        ; |755| 
        ADDB      XAR1,#1               ; |755| 
        MOV       AL,AR1                ; |755| 
        CMPB      AL,#28                ; |755| 
        BF        L60,LO                ; |755| 
        ; branchcc occurs ; |755| 
DW$L$_CalProgression$30$E:
        MOVW      DP,#_damagemonignore
        MOV       AL,@_damagemonignore  ; |756| 
        BF        L61,NEQ               ; |756| 
        ; branchcc occurs ; |756| 
        LCR       #_ClearEventCodeListArea ; |756| 
        ; call occurs [#_ClearEventCodeListArea] ; |756| 
L61:    
        MOV       AL,AR2                ; |757| 
        MOVL      XAR4,#_calibration+1  ; |757| 
        CMP       AL,*+XAR4[0]          ; |757| 
        BF        L63,LO                ; |757| 
        ; branchcc occurs ; |757| 
        CMP       AL,*+XAR4[1]          ; |757| 
        BF        L63,HI                ; |757| 
        ; branchcc occurs ; |757| 
        MOVW      DP,#_CalRpm
        MOV       @_CalRpm,AR2          ; |764| 
        LCR       #U$$TOFS              ; |765| 
        ; call occurs [#U$$TOFS] ; |765| 
        MOVL      *-SP[2],ACC           ; |765| 
        MOV       AL,#0
        MOV       AH,#17302
        LCR       #FS$$DIV              ; |765| 
        ; call occurs [#FS$$DIV] ; |765| 
        MOVL      XAR6,ACC              ; |765| 
        MOV       AL,#0
        MOV       AH,#17224
        MOVL      *-SP[2],ACC           ; |765| 
        MOVL      ACC,XAR6              ; |765| 
        LCR       #FS$$MPY              ; |765| 
        ; call occurs [#FS$$MPY] ; |765| 
        LCR       #FS$$TOUL             ; |765| 
        ; call occurs [#FS$$TOUL] ; |765| 
        MOVW      DP,#_wFiveResulotionInMs
        MOVL      @_wFiveResulotionInMs,ACC ; |765| 
        MOV       T,#12000              ; |766| 
        MOVL      XAR6,ACC              ; |765| 
        MOVW      DP,#_speedcompcoeffs+9
        MPYXU     ACC,T,@_speedcompcoeffs+9 ; |766| 
        MOVW      DP,#_timers+46
        ADDL      ACC,XAR6
        MOVL      @_timers+46,ACC       ; |766| 
        MOVW      DP,#_speedcompcoeffs
        MOVB      AL,#6                 ; |769| 
        MOV       @_speedcompcoeffs,#2  ; |768| 
L62:    
        LCR       #_SetBitEvent         ; |769| 
        ; call occurs [#_SetBitEvent] ; |769| 
L63:    
        SUBB      SP,#2
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"mancal.c",886,1
        LRETR
        ; return occurs

DW$157	.dwtag  DW_TAG_loop
	.dwattr DW$157, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L60:1:1471518980")
	.dwattr DW$157, DW_AT_begin_file("mancal.c")
	.dwattr DW$157, DW_AT_begin_line(0x2f3)
	.dwattr DW$157, DW_AT_end_line(0x2f3)
DW$158	.dwtag  DW_TAG_loop_range
	.dwattr DW$158, DW_AT_low_pc(DW$L$_CalProgression$30$B)
	.dwattr DW$158, DW_AT_high_pc(DW$L$_CalProgression$30$E)
	.dwendtag DW$157


DW$159	.dwtag  DW_TAG_loop
	.dwattr DW$159, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L52:1:1471518980")
	.dwattr DW$159, DW_AT_begin_file("mancal.c")
	.dwattr DW$159, DW_AT_begin_line(0x365)
	.dwattr DW$159, DW_AT_end_line(0x36a)
DW$160	.dwtag  DW_TAG_loop_range
	.dwattr DW$160, DW_AT_low_pc(DW$L$_CalProgression$21$B)
	.dwattr DW$160, DW_AT_high_pc(DW$L$_CalProgression$21$E)
	.dwendtag DW$159

	.dwattr DW$156, DW_AT_end_file("mancal.c")
	.dwattr DW$156, DW_AT_end_line(0x376)
	.dwattr DW$156, DW_AT_end_column(0x01)
	.dwendtag DW$156

	.sect	".text"
	.global	_FirstStageCalCurve

DW$161	.dwtag  DW_TAG_subprogram, DW_AT_name("FirstStageCalCurve"), DW_AT_symbol_name("_FirstStageCalCurve")
	.dwattr DW$161, DW_AT_low_pc(_FirstStageCalCurve)
	.dwattr DW$161, DW_AT_high_pc(0x00)
	.dwattr DW$161, DW_AT_begin_file("mancal.c")
	.dwattr DW$161, DW_AT_begin_line(0x382)
	.dwattr DW$161, DW_AT_begin_column(0x06)
	.dwattr DW$161, DW_AT_frame_base[DW_OP_breg20 -16]
	.dwattr DW$161, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",899,1

;***************************************************************
;* FNAME: _FirstStageCalCurve           FR SIZE:  14           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  6 SOE     *
;***************************************************************

_FirstStageCalCurve:
        MOVL      *SP++,XAR1
        MOVW      DP,#_allsensors+3
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#8
        MOV       AL,@_allsensors+3     ; |910| 
        LCR       #U$$TOFS              ; |910| 
        ; call occurs [#U$$TOFS] ; |910| 
        MOVL      XAR2,ACC              ; |910| 
        MOV       AL,#52429
        MOV       AH,#16268
        MOVL      *-SP[2],ACC           ; |910| 
        MOVL      ACC,XAR2              ; |910| 
        LCR       #FS$$MPY              ; |910| 
        ; call occurs [#FS$$MPY] ; |910| 
        LCR       #FS$$TOU              ; |910| 
        ; call occurs [#FS$$TOU] ; |910| 
        MOVZ      AR1,AL                ; |910| 
        MOV       *-SP[5],AL            ; |910| 
        MOV       AL,#52429
        MOV       AH,#15948
        MOVL      *-SP[2],ACC           ; |911| 
        MOVL      ACC,XAR2              ; |911| 
        LCR       #FS$$MPY              ; |911| 
        ; call occurs [#FS$$MPY] ; |911| 
        LCR       #FS$$TOU              ; |911| 
        ; call occurs [#FS$$TOU] ; |911| 
        MOVZ      AR3,AL                ; |911| 
        MOV       *-SP[6],AL            ; |911| 
        MOVW      DP,#_speedcompcoeffs+8
        MOV       AL,@_speedcompcoeffs+8 ; |912| 
        LCR       #U$$TOFS              ; |912| 
        ; call occurs [#U$$TOFS] ; |912| 
        MOVL      XAR2,ACC              ; |912| 
        MOV       AL,AR1                ; |912| 
        SUB       AL,AR3                ; |912| 
        LCR       #U$$TOFS              ; |912| 
        ; call occurs [#U$$TOFS] ; |912| 
        MOVL      *-SP[2],ACC           ; |912| 
        MOVL      ACC,XAR2              ; |912| 
        LCR       #FS$$DIV              ; |912| 
        ; call occurs [#FS$$DIV] ; |912| 
        MOVW      DP,#_calibration+314
        MOVL      XAR2,ACC              ; |912| 
        MOVL      ACC,@_calibration+314 ; |916| 
        LCR       #L$$TOFS              ; |916| 
        ; call occurs [#L$$TOFS] ; |916| 
        MOVW      DP,#_calibration+8
        MOVL      XAR1,ACC              ; |916| 
        MOVL      ACC,@_calibration+8   ; |916| 
        LCR       #UL$$TOFS             ; |916| 
        ; call occurs [#UL$$TOFS] ; |916| 
        MOVL      *-SP[2],ACC           ; |916| 
        MOVL      ACC,XAR1              ; |916| 
        LCR       #FS$$DIV              ; |916| 
        ; call occurs [#FS$$DIV] ; |916| 
        MOVL      XAR1,ACC              ; |916| 
        MOV       AL,*-SP[6]            ; |916| 
        LCR       #U$$TOFS              ; |916| 
        ; call occurs [#U$$TOFS] ; |916| 
        MOVL      *-SP[2],ACC           ; |916| 
        MOVL      ACC,XAR1              ; |916| 
        LCR       #FS$$SUB              ; |916| 
        ; call occurs [#FS$$SUB] ; |916| 
        MOVL      *-SP[8],ACC           ; |916| 
	.dwpsn	"mancal.c",918,0
        MOVB      XAR1,#0
L64:    
DW$L$_FirstStageCalCurve$3$B:
	.dwpsn	"mancal.c",919,0
        MOV       AL,AR1                ; |920| 
        LCR       #_GetStatus2Flags     ; |920| 
        ; call occurs [#_GetStatus2Flags] ; |920| 
        MOV       T,#18                 ; |921| 
        MOVZ      AR6,*+XAR4[0]         ; |920| 
        MPYXU     ACC,T,AR1             ; |921| 
        MOVL      XAR4,#_sensor         ; |921| 
        ADDL      XAR4,ACC
        MOV       AH,*+XAR4[0]          ; |921| 
        AND       AL,AH,#0x0001         ; |921| 
        BF        L65,EQ                ; |921| 
        ; branchcc occurs ; |921| 
DW$L$_FirstStageCalCurve$3$E:
DW$L$_FirstStageCalCurve$4$B:
        ANDB      AH,#2                 ; |921| 
        BF        L65,EQ                ; |921| 
        ; branchcc occurs ; |921| 
DW$L$_FirstStageCalCurve$4$E:
DW$L$_FirstStageCalCurve$5$B:
        AND       AL,AR6,#0x0001        ; |921| 
        BF        L65,NEQ               ; |921| 
        ; branchcc occurs ; |921| 
DW$L$_FirstStageCalCurve$5$E:
DW$L$_FirstStageCalCurve$6$B:
        MOVU      ACC,AR1
        MOVL      XAR4,#_calibration+482 ; |932| 
        LSL       ACC,1                 ; |932| 
        ADDL      XAR4,ACC
        MOVL      ACC,*+XAR4[0]         ; |932| 
        LCR       #L$$TOFS              ; |932| 
        ; call occurs [#L$$TOFS] ; |932| 
        MOVW      DP,#_calibration+8
        MOVL      XAR3,ACC              ; |932| 
        MOVL      ACC,@_calibration+8   ; |932| 
        LCR       #UL$$TOFS             ; |932| 
        ; call occurs [#UL$$TOFS] ; |932| 
        MOVL      *-SP[2],ACC           ; |932| 
        MOVL      ACC,XAR3              ; |932| 
        LCR       #FS$$DIV              ; |932| 
        ; call occurs [#FS$$DIV] ; |932| 
        MOVL      XAR3,ACC              ; |932| 
        MOVL      ACC,*-SP[8]           ; |932| 
        MOVL      *-SP[2],ACC           ; |932| 
        MOVL      ACC,XAR2              ; |932| 
        LCR       #FS$$MPY              ; |932| 
        ; call occurs [#FS$$MPY] ; |932| 
        MOVL      *-SP[2],ACC           ; |932| 
        MOVL      ACC,XAR3              ; |932| 
        LCR       #FS$$SUB              ; |932| 
        ; call occurs [#FS$$SUB] ; |932| 
        MOVL      XAR7,ACC              ; |932| 
        MOV       AL,*-SP[5]            ; |932| 
        SUB       AL,*-SP[6]            ; |932| 
        MOV       *-SP[1],AL            ; |932| 
        MOVL      *-SP[4],XAR2          ; |932| 
        MOVZ      AR4,AR1               ; |932| 
        MOVB      XAR5,#0
        MOVL      ACC,XAR7              ; |932| 
        LCR       #_Interpolate         ; |932| 
        ; call occurs [#_Interpolate] ; |932| 
DW$L$_FirstStageCalCurve$6$E:
L65:    
DW$L$_FirstStageCalCurve$7$B:
        ADDB      XAR1,#1               ; |918| 
        MOVW      DP,#_settings
        MOV       AL,AR1                ; |918| 
        MOV       @_settings,#1         ; |935| 
        CMPB      AL,#28                ; |918| 
	.dwpsn	"mancal.c",936,0
        BF        L64,LO                ; |918| 
        ; branchcc occurs ; |918| 
DW$L$_FirstStageCalCurve$7$E:
        MOVW      DP,#_sdsettings+1
        INC       @_sdsettings+1        ; |937| 
        MOVL      XAR4,#_sdcarddir      ; |937| 
        MOVW      DP,#_sdsettings+1
        MOV       AL,@_sdsettings+1     ; |937| 
        ADDB      AL,#-1
        LCR       #_MANCompTabletoSDCardFile ; |937| 
        ; call occurs [#_MANCompTabletoSDCardFile] ; |937| 
        MOVB      AL,#0
        MOVL      XAR4,#_sdcarddir+27   ; |938| 
        LCR       #_MANCompTabletoSDCardFile ; |938| 
        ; call occurs [#_MANCompTabletoSDCardFile] ; |938| 
        LCR       #_WriteMANCompTabletoNVMEM ; |939| 
        ; call occurs [#_WriteMANCompTabletoNVMEM] ; |939| 
        SUBB      SP,#8
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"mancal.c",940,1
        LRETR
        ; return occurs

DW$162	.dwtag  DW_TAG_loop
	.dwattr DW$162, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L64:1:1471518980")
	.dwattr DW$162, DW_AT_begin_file("mancal.c")
	.dwattr DW$162, DW_AT_begin_line(0x396)
	.dwattr DW$162, DW_AT_end_line(0x3a8)
DW$163	.dwtag  DW_TAG_loop_range
	.dwattr DW$163, DW_AT_low_pc(DW$L$_FirstStageCalCurve$3$B)
	.dwattr DW$163, DW_AT_high_pc(DW$L$_FirstStageCalCurve$3$E)
DW$164	.dwtag  DW_TAG_loop_range
	.dwattr DW$164, DW_AT_low_pc(DW$L$_FirstStageCalCurve$4$B)
	.dwattr DW$164, DW_AT_high_pc(DW$L$_FirstStageCalCurve$4$E)
DW$165	.dwtag  DW_TAG_loop_range
	.dwattr DW$165, DW_AT_low_pc(DW$L$_FirstStageCalCurve$5$B)
	.dwattr DW$165, DW_AT_high_pc(DW$L$_FirstStageCalCurve$5$E)
DW$166	.dwtag  DW_TAG_loop_range
	.dwattr DW$166, DW_AT_low_pc(DW$L$_FirstStageCalCurve$6$B)
	.dwattr DW$166, DW_AT_high_pc(DW$L$_FirstStageCalCurve$6$E)
DW$167	.dwtag  DW_TAG_loop_range
	.dwattr DW$167, DW_AT_low_pc(DW$L$_FirstStageCalCurve$7$B)
	.dwattr DW$167, DW_AT_high_pc(DW$L$_FirstStageCalCurve$7$E)
	.dwendtag DW$162

	.dwattr DW$161, DW_AT_end_file("mancal.c")
	.dwattr DW$161, DW_AT_end_line(0x3ac)
	.dwattr DW$161, DW_AT_end_column(0x01)
	.dwendtag DW$161

	.sect	".text"
	.global	_SecondStageCalCurve

DW$168	.dwtag  DW_TAG_subprogram, DW_AT_name("SecondStageCalCurve"), DW_AT_symbol_name("_SecondStageCalCurve")
	.dwattr DW$168, DW_AT_low_pc(_SecondStageCalCurve)
	.dwattr DW$168, DW_AT_high_pc(0x00)
	.dwattr DW$168, DW_AT_begin_file("mancal.c")
	.dwattr DW$168, DW_AT_begin_line(0x3b0)
	.dwattr DW$168, DW_AT_begin_column(0x06)
	.dwattr DW$168, DW_AT_frame_base[DW_OP_breg20 -26]
	.dwattr DW$168, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",945,1

;***************************************************************
;* FNAME: _SecondStageCalCurve          FR SIZE:  24           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter, 14 Auto,  6 SOE     *
;***************************************************************

_SecondStageCalCurve:
        MOVL      *SP++,XAR1
        MOVW      DP,#_allsensors+3
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#18
        MOV       AL,@_allsensors+3     ; |956| 
        LCR       #U$$TOFS              ; |956| 
        ; call occurs [#U$$TOFS] ; |956| 
        MOVL      XAR1,ACC              ; |956| 
        MOV       AL,#52429
        MOV       AH,#16268
        MOVL      *-SP[2],ACC           ; |956| 
        MOVL      ACC,XAR1              ; |956| 
        LCR       #FS$$MPY              ; |956| 
        ; call occurs [#FS$$MPY] ; |956| 
        LCR       #FS$$TOU              ; |956| 
        ; call occurs [#FS$$TOU] ; |956| 
        MOV       *-SP[13],AL           ; |956| 
        MOV       AL,#52429
        MOV       AH,#15948
        MOVL      *-SP[2],ACC           ; |957| 
        MOVL      ACC,XAR1              ; |957| 
        LCR       #FS$$MPY              ; |957| 
        ; call occurs [#FS$$MPY] ; |957| 
        LCR       #FS$$TOU              ; |957| 
        ; call occurs [#FS$$TOU] ; |957| 
        MOVL      XAR3,#_calibration+314 ; |960| 
        MOVL      XAR4,#_calibration+8  ; |960| 
        MOVZ      AR2,AL                ; |957| 
        MOV       *-SP[14],AL           ; |957| 
        MOVL      *-SP[16],XAR4         ; |960| 
        MOVL      ACC,*+XAR3[0]         ; |960| 
        LCR       #L$$TOFS              ; |960| 
        ; call occurs [#L$$TOFS] ; |960| 
        MOVL      XAR4,*-SP[16]         ; |960| 
        MOVL      XAR1,ACC              ; |960| 
        MOVL      ACC,*+XAR4[0]         ; |960| 
        LCR       #UL$$TOFS             ; |960| 
        ; call occurs [#UL$$TOFS] ; |960| 
        MOVL      *-SP[2],ACC           ; |960| 
        MOVL      ACC,XAR1              ; |960| 
        LCR       #FS$$DIV              ; |960| 
        ; call occurs [#FS$$DIV] ; |960| 
        MOVL      XAR1,ACC              ; |960| 
        MOVL      *-SP[12],ACC          ; |960| 
        MOV       AL,AR2                ; |960| 
        LCR       #U$$TOFS              ; |961| 
        ; call occurs [#U$$TOFS] ; |961| 
        MOVL      *-SP[2],ACC           ; |961| 
        MOVL      ACC,*-SP[12]          ; |961| 
        LCR       #FS$$SUB              ; |961| 
        ; call occurs [#FS$$SUB] ; |961| 
        MOVL      *-SP[18],ACC          ; |961| 
        MOVL      *-SP[12],XAR1         ; |963| 
        MOVB      XAR0,#56              ; |964| 
        MOVL      ACC,*+XAR3[AR0]       ; |964| 
        LCR       #L$$TOFS              ; |964| 
        ; call occurs [#L$$TOFS] ; |964| 
        MOVL      XAR4,*-SP[16]         ; |964| 
        MOVL      XAR1,ACC              ; |964| 
        MOVL      ACC,*+XAR4[2]         ; |964| 
        LCR       #UL$$TOFS             ; |964| 
        ; call occurs [#UL$$TOFS] ; |964| 
        MOVL      *-SP[2],ACC           ; |964| 
        MOVL      ACC,XAR1              ; |964| 
        LCR       #FS$$DIV              ; |964| 
        ; call occurs [#FS$$DIV] ; |964| 
        MOVL      XAR3,#_calibration+8  ; |973| 
        MOVL      *-SP[10],ACC          ; |964| 
	.dwpsn	"mancal.c",966,0
        MOVB      XAR1,#0
L66:    
DW$L$_SecondStageCalCurve$3$B:
	.dwpsn	"mancal.c",967,0
        MOV       AL,AR1                ; |968| 
        LCR       #_GetStatus2Flags     ; |968| 
        ; call occurs [#_GetStatus2Flags] ; |968| 
        MOV       T,#18                 ; |969| 
        MOVZ      AR6,*+XAR4[0]         ; |968| 
        MPYXU     ACC,T,AR1             ; |969| 
        MOVL      XAR4,#_sensor         ; |969| 
        ADDL      XAR4,ACC
        MOV       AH,*+XAR4[0]          ; |969| 
        AND       AL,AH,#0x0001         ; |969| 
        BF        L68,EQ                ; |969| 
        ; branchcc occurs ; |969| 
DW$L$_SecondStageCalCurve$3$E:
DW$L$_SecondStageCalCurve$4$B:
        ANDB      AH,#2                 ; |971| 
        BF        L67,EQ                ; |971| 
        ; branchcc occurs ; |971| 
DW$L$_SecondStageCalCurve$4$E:
DW$L$_SecondStageCalCurve$5$B:
        AND       AL,AR6,#0x0001        ; |971| 
        BF        L67,NEQ               ; |971| 
        ; branchcc occurs ; |971| 
DW$L$_SecondStageCalCurve$5$E:
DW$L$_SecondStageCalCurve$6$B:
        MOVU      ACC,AR1
        MOVL      XAR4,#_calibration+482 ; |973| 
        LSL       ACC,1                 ; |973| 
        ADDL      XAR4,ACC
        MOVL      XAR2,XAR4             ; |973| 
        MOVL      ACC,*+XAR2[0]         ; |973| 
        LCR       #L$$TOFS              ; |973| 
        ; call occurs [#L$$TOFS] ; |973| 
        MOVL      *-SP[16],ACC          ; |973| 
        MOVL      ACC,*+XAR3[0]         ; |973| 
        LCR       #UL$$TOFS             ; |973| 
        ; call occurs [#UL$$TOFS] ; |973| 
        MOVL      *-SP[2],ACC           ; |973| 
        MOVL      ACC,*-SP[16]          ; |973| 
        LCR       #FS$$DIV              ; |973| 
        ; call occurs [#FS$$DIV] ; |973| 
        MOVB      XAR0,#56              ; |974| 
        MOVL      *-SP[8],ACC           ; |973| 
        MOVL      ACC,*+XAR2[AR0]       ; |974| 
        LCR       #L$$TOFS              ; |974| 
        ; call occurs [#L$$TOFS] ; |974| 
        MOVL      XAR2,ACC              ; |974| 
        MOVL      ACC,*+XAR3[2]         ; |974| 
        LCR       #UL$$TOFS             ; |974| 
        ; call occurs [#UL$$TOFS] ; |974| 
        MOVL      *-SP[2],ACC           ; |974| 
        MOVL      ACC,XAR2              ; |974| 
        LCR       #FS$$DIV              ; |974| 
        ; call occurs [#FS$$DIV] ; |974| 
        MOVL      *-SP[6],ACC           ; |974| 
        MOVL      ACC,*-SP[8]           ; |984| 
        MOVL      *-SP[2],ACC           ; |984| 
        MOVL      ACC,*-SP[6]           ; |984| 
        LCR       #FS$$SUB              ; |984| 
        ; call occurs [#FS$$SUB] ; |984| 
        MOVL      XAR2,ACC              ; |984| 
        MOVL      ACC,*-SP[12]          ; |984| 
        MOVL      *-SP[2],ACC           ; |984| 
        MOVL      ACC,*-SP[10]          ; |984| 
        LCR       #FS$$SUB              ; |984| 
        ; call occurs [#FS$$SUB] ; |984| 
        MOVL      *-SP[2],ACC           ; |984| 
        MOVL      ACC,XAR2              ; |984| 
        LCR       #FS$$DIV              ; |984| 
        ; call occurs [#FS$$DIV] ; |984| 
        MOVL      XAR2,ACC              ; |984| 
        MOVL      ACC,*-SP[18]          ; |984| 
        MOVL      *-SP[2],ACC           ; |984| 
        MOVL      ACC,XAR2              ; |984| 
        LCR       #FS$$MPY              ; |984| 
        ; call occurs [#FS$$MPY] ; |984| 
        MOVL      *-SP[2],ACC           ; |984| 
        MOVL      ACC,*-SP[8]           ; |984| 
        LCR       #FS$$SUB              ; |984| 
        ; call occurs [#FS$$SUB] ; |984| 
DW$L$_SecondStageCalCurve$6$E:
DW$L$_SecondStageCalCurve$7$B:
        MOVL      XAR7,ACC              ; |984| 
        MOV       AL,*-SP[13]           ; |984| 
        MOVB      XAR5,#0
        MOVZ      AR4,AR1               ; |984| 
        SUB       AL,*-SP[14]           ; |984| 
        MOV       *-SP[1],AL            ; |984| 
        MOVL      *-SP[4],XAR2          ; |984| 
        MOVL      ACC,XAR7              ; |984| 
        LCR       #_Interpolate         ; |984| 
        ; call occurs [#_Interpolate] ; |984| 
DW$L$_SecondStageCalCurve$7$E:
L67:    
DW$L$_SecondStageCalCurve$8$B:
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |986| 
DW$L$_SecondStageCalCurve$8$E:
L68:    
DW$L$_SecondStageCalCurve$9$B:
        ADDB      XAR1,#1               ; |966| 
        MOV       AL,AR1                ; |966| 
        CMPB      AL,#28                ; |966| 
	.dwpsn	"mancal.c",988,0
        BF        L66,LO                ; |966| 
        ; branchcc occurs ; |966| 
DW$L$_SecondStageCalCurve$9$E:
        MOVW      DP,#_sdsettings+1
        INC       @_sdsettings+1        ; |989| 
        MOVL      XAR4,#_sdcarddir      ; |989| 
        MOVW      DP,#_sdsettings+1
        MOV       AL,@_sdsettings+1     ; |989| 
        ADDB      AL,#-1
        LCR       #_MANCompTabletoSDCardFile ; |989| 
        ; call occurs [#_MANCompTabletoSDCardFile] ; |989| 
        MOVB      AL,#0
        MOVL      XAR4,#_sdcarddir+27   ; |990| 
        LCR       #_MANCompTabletoSDCardFile ; |990| 
        ; call occurs [#_MANCompTabletoSDCardFile] ; |990| 
        LCR       #_WriteMANCompTabletoNVMEM ; |991| 
        ; call occurs [#_WriteMANCompTabletoNVMEM] ; |991| 
        SUBB      SP,#18
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"mancal.c",992,1
        LRETR
        ; return occurs

DW$169	.dwtag  DW_TAG_loop
	.dwattr DW$169, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L66:1:1471518980")
	.dwattr DW$169, DW_AT_begin_file("mancal.c")
	.dwattr DW$169, DW_AT_begin_line(0x3c6)
	.dwattr DW$169, DW_AT_end_line(0x3dc)
DW$170	.dwtag  DW_TAG_loop_range
	.dwattr DW$170, DW_AT_low_pc(DW$L$_SecondStageCalCurve$3$B)
	.dwattr DW$170, DW_AT_high_pc(DW$L$_SecondStageCalCurve$3$E)
DW$171	.dwtag  DW_TAG_loop_range
	.dwattr DW$171, DW_AT_low_pc(DW$L$_SecondStageCalCurve$6$B)
	.dwattr DW$171, DW_AT_high_pc(DW$L$_SecondStageCalCurve$6$E)
DW$172	.dwtag  DW_TAG_loop_range
	.dwattr DW$172, DW_AT_low_pc(DW$L$_SecondStageCalCurve$4$B)
	.dwattr DW$172, DW_AT_high_pc(DW$L$_SecondStageCalCurve$4$E)
DW$173	.dwtag  DW_TAG_loop_range
	.dwattr DW$173, DW_AT_low_pc(DW$L$_SecondStageCalCurve$5$B)
	.dwattr DW$173, DW_AT_high_pc(DW$L$_SecondStageCalCurve$5$E)
DW$174	.dwtag  DW_TAG_loop_range
	.dwattr DW$174, DW_AT_low_pc(DW$L$_SecondStageCalCurve$7$B)
	.dwattr DW$174, DW_AT_high_pc(DW$L$_SecondStageCalCurve$7$E)
DW$175	.dwtag  DW_TAG_loop_range
	.dwattr DW$175, DW_AT_low_pc(DW$L$_SecondStageCalCurve$8$B)
	.dwattr DW$175, DW_AT_high_pc(DW$L$_SecondStageCalCurve$8$E)
DW$176	.dwtag  DW_TAG_loop_range
	.dwattr DW$176, DW_AT_low_pc(DW$L$_SecondStageCalCurve$9$B)
	.dwattr DW$176, DW_AT_high_pc(DW$L$_SecondStageCalCurve$9$E)
	.dwendtag DW$169

	.dwattr DW$168, DW_AT_end_file("mancal.c")
	.dwattr DW$168, DW_AT_end_line(0x3e0)
	.dwattr DW$168, DW_AT_end_column(0x01)
	.dwendtag DW$168

	.sect	".text"
	.global	_Stage3CalCurve

DW$177	.dwtag  DW_TAG_subprogram, DW_AT_name("Stage3CalCurve"), DW_AT_symbol_name("_Stage3CalCurve")
	.dwattr DW$177, DW_AT_low_pc(_Stage3CalCurve)
	.dwattr DW$177, DW_AT_high_pc(0x00)
	.dwattr DW$177, DW_AT_begin_file("mancal.c")
	.dwattr DW$177, DW_AT_begin_line(0x3e4)
	.dwattr DW$177, DW_AT_begin_column(0x06)
	.dwattr DW$177, DW_AT_frame_base[DW_OP_breg20 -34]
	.dwattr DW$177, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",997,1

;***************************************************************
;* FNAME: _Stage3CalCurve               FR SIZE:  32           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter, 22 Auto,  6 SOE     *
;***************************************************************

_Stage3CalCurve:
        MOVL      *SP++,XAR1
        MOVW      DP,#_allsensors+3
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#26
        MOV       AL,@_allsensors+3     ; |1010| 
        LCR       #U$$TOFS              ; |1010| 
        ; call occurs [#U$$TOFS] ; |1010| 
        MOVL      XAR1,ACC              ; |1010| 
        MOV       AL,#52429
        MOV       AH,#16268
        MOVL      *-SP[2],ACC           ; |1010| 
        MOVL      ACC,XAR1              ; |1010| 
        LCR       #FS$$MPY              ; |1010| 
        ; call occurs [#FS$$MPY] ; |1010| 
        LCR       #FS$$TOU              ; |1010| 
        ; call occurs [#FS$$TOU] ; |1010| 
        MOV       *-SP[21],AL           ; |1010| 
        MOV       AL,#52429
        MOV       AH,#15948
        MOVL      *-SP[2],ACC           ; |1011| 
        MOVL      ACC,XAR1              ; |1011| 
        LCR       #FS$$MPY              ; |1011| 
        ; call occurs [#FS$$MPY] ; |1011| 
        LCR       #FS$$TOU              ; |1011| 
        ; call occurs [#FS$$TOU] ; |1011| 
        MOVL      XAR4,#_calibration+314 ; |1014| 
        MOVZ      AR2,AL                ; |1011| 
        MOV       *-SP[22],AL           ; |1011| 
        MOVL      *-SP[24],XAR4         ; |1014| 
        MOVL      ACC,*+XAR4[0]         ; |1014| 
        LCR       #L$$TOFS              ; |1014| 
        ; call occurs [#L$$TOFS] ; |1014| 
        MOVL      XAR3,#_calibration+8  ; |1014| 
        MOVL      XAR1,ACC              ; |1014| 
        MOVL      ACC,*+XAR3[0]         ; |1014| 
        LCR       #UL$$TOFS             ; |1014| 
        ; call occurs [#UL$$TOFS] ; |1014| 
        MOVL      *-SP[2],ACC           ; |1014| 
        MOVL      ACC,XAR1              ; |1014| 
        LCR       #FS$$DIV              ; |1014| 
        ; call occurs [#FS$$DIV] ; |1014| 
        MOVL      XAR1,ACC              ; |1014| 
        MOVL      *-SP[20],ACC          ; |1014| 
        MOV       AL,AR2                ; |1014| 
        LCR       #U$$TOFS              ; |1015| 
        ; call occurs [#U$$TOFS] ; |1015| 
        MOVL      *-SP[2],ACC           ; |1015| 
        MOVL      ACC,*-SP[20]          ; |1015| 
        LCR       #FS$$SUB              ; |1015| 
        ; call occurs [#FS$$SUB] ; |1015| 
        MOVL      XAR4,*-SP[24]         ; |1018| 
        MOVL      *-SP[26],ACC          ; |1015| 
        MOVL      *-SP[20],XAR1         ; |1017| 
        MOVB      XAR0,#56              ; |1018| 
        MOVL      ACC,*+XAR4[AR0]       ; |1018| 
        LCR       #L$$TOFS              ; |1018| 
        ; call occurs [#L$$TOFS] ; |1018| 
        MOVL      XAR1,ACC              ; |1018| 
        MOVL      ACC,*+XAR3[2]         ; |1018| 
        LCR       #UL$$TOFS             ; |1018| 
        ; call occurs [#UL$$TOFS] ; |1018| 
        MOVL      *-SP[2],ACC           ; |1018| 
        MOVL      ACC,XAR1              ; |1018| 
        LCR       #FS$$DIV              ; |1018| 
        ; call occurs [#FS$$DIV] ; |1018| 
        MOVL      XAR4,*-SP[24]         ; |1019| 
        MOVB      XAR0,#112             ; |1019| 
        MOVL      *-SP[18],ACC          ; |1018| 
        MOVL      ACC,*+XAR4[AR0]       ; |1019| 
        LCR       #L$$TOFS              ; |1019| 
        ; call occurs [#L$$TOFS] ; |1019| 
        MOVL      XAR1,ACC              ; |1019| 
        MOVL      ACC,*+XAR3[4]         ; |1019| 
        LCR       #UL$$TOFS             ; |1019| 
        ; call occurs [#UL$$TOFS] ; |1019| 
        MOVL      *-SP[2],ACC           ; |1019| 
        MOVL      ACC,XAR1              ; |1019| 
        LCR       #FS$$DIV              ; |1019| 
        ; call occurs [#FS$$DIV] ; |1019| 
        MOVL      *-SP[16],ACC          ; |1019| 
        MOVL      ACC,*-SP[20]          ; |1021| 
        LCR       #_FloattoIntRound     ; |1021| 
        ; call occurs [#_FloattoIntRound] ; |1021| 
        MOV       *-SP[13],AL           ; |1021| 
        MOVL      ACC,*-SP[18]          ; |1022| 
        LCR       #_FloattoIntRound     ; |1022| 
        ; call occurs [#_FloattoIntRound] ; |1022| 
        MOV       *-SP[12],AL           ; |1022| 
        MOVL      ACC,*-SP[16]          ; |1023| 
        LCR       #_FloattoIntRound     ; |1023| 
        ; call occurs [#_FloattoIntRound] ; |1023| 
        MOV       *-SP[11],AL           ; |1023| 
	.dwpsn	"mancal.c",1025,0
        MOVB      XAR1,#0
L69:    
DW$L$_Stage3CalCurve$3$B:
	.dwpsn	"mancal.c",1026,0
        MOV       AL,AR1                ; |1027| 
        LCR       #_GetStatus2Flags     ; |1027| 
        ; call occurs [#_GetStatus2Flags] ; |1027| 
        MOV       T,#18                 ; |1028| 
        MOVZ      AR6,*+XAR4[0]         ; |1027| 
        MPYXU     ACC,T,AR1             ; |1028| 
        MOVL      XAR4,#_sensor         ; |1028| 
        ADDL      XAR4,ACC
        MOV       AH,*+XAR4[0]          ; |1028| 
        AND       AL,AH,#0x0001         ; |1028| 
        BF        L70,EQ                ; |1028| 
        ; branchcc occurs ; |1028| 
DW$L$_Stage3CalCurve$3$E:
DW$L$_Stage3CalCurve$4$B:
        ANDB      AH,#2                 ; |1028| 
        BF        L70,EQ                ; |1028| 
        ; branchcc occurs ; |1028| 
DW$L$_Stage3CalCurve$4$E:
DW$L$_Stage3CalCurve$5$B:
        AND       AL,AR6,#0x0001        ; |1028| 
        BF        L70,NEQ               ; |1028| 
        ; branchcc occurs ; |1028| 
DW$L$_Stage3CalCurve$5$E:
DW$L$_Stage3CalCurve$6$B:
        MOVU      ACC,AR1
        MOVL      XAR4,#_calibration+482 ; |1032| 
        LSL       ACC,1                 ; |1032| 
        ADDL      XAR4,ACC
        MOVL      XAR2,XAR4             ; |1032| 
        MOVL      ACC,*+XAR2[0]         ; |1032| 
        LCR       #L$$TOFS              ; |1032| 
        ; call occurs [#L$$TOFS] ; |1032| 
        MOVL      XAR3,#_calibration+8  ; |1032| 
        MOVL      *-SP[24],ACC          ; |1032| 
        MOVL      ACC,*+XAR3[0]         ; |1032| 
        LCR       #UL$$TOFS             ; |1032| 
        ; call occurs [#UL$$TOFS] ; |1032| 
        MOVL      *-SP[2],ACC           ; |1032| 
        MOVL      ACC,*-SP[24]          ; |1032| 
        LCR       #FS$$DIV              ; |1032| 
        ; call occurs [#FS$$DIV] ; |1032| 
        MOVB      XAR0,#56              ; |1033| 
        MOVL      *-SP[10],ACC          ; |1032| 
        MOVL      ACC,*+XAR2[AR0]       ; |1033| 
        LCR       #L$$TOFS              ; |1033| 
        ; call occurs [#L$$TOFS] ; |1033| 
        MOVL      *-SP[24],ACC          ; |1033| 
        MOVL      ACC,*+XAR3[2]         ; |1033| 
        LCR       #UL$$TOFS             ; |1033| 
        ; call occurs [#UL$$TOFS] ; |1033| 
        MOVL      *-SP[2],ACC           ; |1033| 
        MOVL      ACC,*-SP[24]          ; |1033| 
        LCR       #FS$$DIV              ; |1033| 
        ; call occurs [#FS$$DIV] ; |1033| 
        MOVB      XAR0,#112             ; |1034| 
        MOVL      *-SP[8],ACC           ; |1033| 
        MOVL      ACC,*+XAR2[AR0]       ; |1034| 
        LCR       #L$$TOFS              ; |1034| 
        ; call occurs [#L$$TOFS] ; |1034| 
        MOVL      XAR2,ACC              ; |1034| 
        MOVL      ACC,*+XAR3[4]         ; |1034| 
        LCR       #UL$$TOFS             ; |1034| 
        ; call occurs [#UL$$TOFS] ; |1034| 
        MOVL      *-SP[2],ACC           ; |1034| 
        MOVL      ACC,XAR2              ; |1034| 
        LCR       #FS$$DIV              ; |1034| 
        ; call occurs [#FS$$DIV] ; |1034| 
        MOVL      *-SP[6],ACC           ; |1034| 
        MOVL      ACC,*-SP[10]          ; |1044| 
        MOVL      *-SP[2],ACC           ; |1044| 
        MOVL      ACC,*-SP[8]           ; |1044| 
        LCR       #FS$$SUB              ; |1044| 
        ; call occurs [#FS$$SUB] ; |1044| 
        MOVL      XAR2,ACC              ; |1044| 
        MOVL      ACC,*-SP[20]          ; |1044| 
        MOVL      *-SP[2],ACC           ; |1044| 
        MOVL      ACC,*-SP[18]          ; |1044| 
        LCR       #FS$$SUB              ; |1044| 
        ; call occurs [#FS$$SUB] ; |1044| 
DW$L$_Stage3CalCurve$6$E:
DW$L$_Stage3CalCurve$7$B:
        MOVL      *-SP[2],ACC           ; |1044| 
        MOVL      ACC,XAR2              ; |1044| 
        LCR       #FS$$DIV              ; |1044| 
        ; call occurs [#FS$$DIV] ; |1044| 
        MOVL      XAR2,ACC              ; |1044| 
        MOVL      ACC,*-SP[26]          ; |1044| 
        MOVL      *-SP[2],ACC           ; |1044| 
        MOVL      ACC,XAR2              ; |1044| 
        LCR       #FS$$MPY              ; |1044| 
        ; call occurs [#FS$$MPY] ; |1044| 
        MOVL      *-SP[2],ACC           ; |1044| 
        MOVL      ACC,*-SP[10]          ; |1044| 
        LCR       #FS$$SUB              ; |1044| 
        ; call occurs [#FS$$SUB] ; |1044| 
        MOVZ      AR3,*-SP[22]          ; |1044| 
        MOVL      XAR6,ACC              ; |1044| 
        MOV       AL,*-SP[12]           ; |1044| 
        SUB       AL,AR3                ; |1044| 
        MOV       *-SP[1],AL            ; |1044| 
        MOVZ      AR4,AR1               ; |1044| 
        MOVL      *-SP[4],XAR2          ; |1044| 
        MOVB      XAR5,#0
        MOVL      ACC,XAR6              ; |1044| 
        LCR       #_Interpolate         ; |1044| 
        ; call occurs [#_Interpolate] ; |1044| 
        MOV       AL,*-SP[12]           ; |1053| 
        LCR       #I$$TOFS              ; |1053| 
        ; call occurs [#I$$TOFS] ; |1053| 
        MOVL      XAR2,ACC              ; |1053| 
        MOV       AL,AR3                ; |1053| 
        LCR       #U$$TOFS              ; |1053| 
        ; call occurs [#U$$TOFS] ; |1053| 
        MOVL      *-SP[2],ACC           ; |1053| 
        MOVL      ACC,XAR2              ; |1053| 
        LCR       #FS$$SUB              ; |1053| 
        ; call occurs [#FS$$SUB] ; |1053| 
        LCR       #FS$$TOU              ; |1053| 
        ; call occurs [#FS$$TOU] ; |1053| 
        MOVZ      AR3,AL                ; |1053| 
        MOVL      ACC,*-SP[8]           ; |1053| 
        MOVL      *-SP[2],ACC           ; |1053| 
        MOVL      ACC,*-SP[6]           ; |1053| 
        LCR       #FS$$SUB              ; |1053| 
        ; call occurs [#FS$$SUB] ; |1053| 
        MOVL      XAR2,ACC              ; |1053| 
        MOVL      ACC,*-SP[18]          ; |1053| 
        MOVL      *-SP[2],ACC           ; |1053| 
        MOVL      ACC,*-SP[16]          ; |1053| 
        LCR       #FS$$SUB              ; |1053| 
        ; call occurs [#FS$$SUB] ; |1053| 
        MOVL      *-SP[2],ACC           ; |1053| 
        MOVL      ACC,XAR2              ; |1053| 
        LCR       #FS$$DIV              ; |1053| 
        ; call occurs [#FS$$DIV] ; |1053| 
DW$L$_Stage3CalCurve$7$E:
DW$L$_Stage3CalCurve$8$B:
        MOVL      XAR6,ACC              ; |1053| 
        MOV       AL,*-SP[21]           ; |1053| 
        MOVZ      AR5,AR3               ; |1053| 
        MOVZ      AR4,AR1               ; |1053| 
        SUB       AL,*-SP[12]           ; |1053| 
        MOV       *-SP[1],AL            ; |1053| 
        MOVL      *-SP[4],XAR6          ; |1053| 
        MOVL      ACC,*-SP[8]           ; |1053| 
        LCR       #_Interpolate         ; |1053| 
        ; call occurs [#_Interpolate] ; |1053| 
        MOVL      XAR4,#_calibration+651 ; |1057| 
        MOV       AL,*-SP[13]           ; |1057| 
        MOV       *+XAR4[0],AL          ; |1057| 
        MOV       AL,*-SP[12]           ; |1058| 
        MOV       *+XAR4[1],AL          ; |1058| 
        MOV       AL,*-SP[11]           ; |1059| 
        MOV       *+XAR4[2],AL          ; |1059| 
        MOVL      XAR4,#_man_comptable  ; |1063| 
        MOVL      XAR5,#_calibration+738 ; |1063| 
        MOV       AL,*+XAR4[AR1]        ; |1063| 
        MOVW      DP,#_calibration
        MOV       *+XAR5[AR1],AL        ; |1063| 
        MOV       T,#28                 ; |1064| 
        MOV       AL,@_calibration      ; |1064| 
        ADDB      AL,#-1
        MPYXU     ACC,T,AL              ; |1064| 
        ADDU      ACC,AR1               ; |1064| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |1064| 
        MOVL      XAR4,#_calibration+766 ; |1064| 
        MOV       *+XAR4[AR1],AL        ; |1064| 
        MOVL      XAR4,#_calibration+654 ; |1066| 
        MOVL      ACC,XAR4              ; |1066| 
        ADDU      ACC,AR1               ; |1066| 
        MOVL      XAR2,ACC              ; |1066| 
        MOVL      ACC,*-SP[10]          ; |1066| 
        LCR       #_FloattoIntRound     ; |1066| 
        ; call occurs [#_FloattoIntRound] ; |1066| 
        MOV       *+XAR2[0],AL          ; |1066| 
        MOVL      ACC,*-SP[8]           ; |1067| 
        LCR       #_FloattoIntRound     ; |1067| 
        ; call occurs [#_FloattoIntRound] ; |1067| 
        MOVB      XAR0,#28              ; |1067| 
        MOV       *+XAR2[AR0],AL        ; |1067| 
        MOVL      ACC,*-SP[6]           ; |1068| 
        LCR       #_FloattoIntRound     ; |1068| 
        ; call occurs [#_FloattoIntRound] ; |1068| 
        MOVB      XAR0,#56              ; |1068| 
        MOVW      DP,#_settings
        MOV       *+XAR2[AR0],AL        ; |1068| 
        MOV       @_settings,#1         ; |1069| 
DW$L$_Stage3CalCurve$8$E:
L70:    
DW$L$_Stage3CalCurve$9$B:
        ADDB      XAR1,#1               ; |1025| 
        MOV       AL,AR1                ; |1025| 
        CMPB      AL,#28                ; |1025| 
	.dwpsn	"mancal.c",1072,0
        BF        L69,LO                ; |1025| 
        ; branchcc occurs ; |1025| 
DW$L$_Stage3CalCurve$9$E:
        MOVW      DP,#_sdsettings+1
        INC       @_sdsettings+1        ; |1073| 
        MOVL      XAR4,#_sdcarddir+9    ; |1073| 
        MOVW      DP,#_sdsettings+1
        MOV       AL,@_sdsettings+1     ; |1073| 
        ADDB      AL,#-1
        LCR       #_MANCompTabletoSDCardFile ; |1073| 
        ; call occurs [#_MANCompTabletoSDCardFile] ; |1073| 
        MOVB      AL,#0
        MOVL      XAR4,#_sdcarddir+27   ; |1075| 
        LCR       #_MANCompTabletoSDCardFile ; |1075| 
        ; call occurs [#_MANCompTabletoSDCardFile] ; |1075| 
        LCR       #_WriteMANCompTabletoNVMEM ; |1076| 
        ; call occurs [#_WriteMANCompTabletoNVMEM] ; |1076| 
        SUBB      SP,#26
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"mancal.c",1077,1
        LRETR
        ; return occurs

DW$178	.dwtag  DW_TAG_loop
	.dwattr DW$178, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L69:1:1471518980")
	.dwattr DW$178, DW_AT_begin_file("mancal.c")
	.dwattr DW$178, DW_AT_begin_line(0x401)
	.dwattr DW$178, DW_AT_end_line(0x430)
DW$179	.dwtag  DW_TAG_loop_range
	.dwattr DW$179, DW_AT_low_pc(DW$L$_Stage3CalCurve$3$B)
	.dwattr DW$179, DW_AT_high_pc(DW$L$_Stage3CalCurve$3$E)
DW$180	.dwtag  DW_TAG_loop_range
	.dwattr DW$180, DW_AT_low_pc(DW$L$_Stage3CalCurve$6$B)
	.dwattr DW$180, DW_AT_high_pc(DW$L$_Stage3CalCurve$6$E)
DW$181	.dwtag  DW_TAG_loop_range
	.dwattr DW$181, DW_AT_low_pc(DW$L$_Stage3CalCurve$7$B)
	.dwattr DW$181, DW_AT_high_pc(DW$L$_Stage3CalCurve$7$E)
DW$182	.dwtag  DW_TAG_loop_range
	.dwattr DW$182, DW_AT_low_pc(DW$L$_Stage3CalCurve$4$B)
	.dwattr DW$182, DW_AT_high_pc(DW$L$_Stage3CalCurve$4$E)
DW$183	.dwtag  DW_TAG_loop_range
	.dwattr DW$183, DW_AT_low_pc(DW$L$_Stage3CalCurve$5$B)
	.dwattr DW$183, DW_AT_high_pc(DW$L$_Stage3CalCurve$5$E)
DW$184	.dwtag  DW_TAG_loop_range
	.dwattr DW$184, DW_AT_low_pc(DW$L$_Stage3CalCurve$8$B)
	.dwattr DW$184, DW_AT_high_pc(DW$L$_Stage3CalCurve$8$E)
DW$185	.dwtag  DW_TAG_loop_range
	.dwattr DW$185, DW_AT_low_pc(DW$L$_Stage3CalCurve$9$B)
	.dwattr DW$185, DW_AT_high_pc(DW$L$_Stage3CalCurve$9$E)
	.dwendtag DW$178

	.dwattr DW$177, DW_AT_end_file("mancal.c")
	.dwattr DW$177, DW_AT_end_line(0x435)
	.dwattr DW$177, DW_AT_end_column(0x01)
	.dwendtag DW$177

	.sect	".text"
	.global	_Interpolate

DW$186	.dwtag  DW_TAG_subprogram, DW_AT_name("Interpolate"), DW_AT_symbol_name("_Interpolate")
	.dwattr DW$186, DW_AT_low_pc(_Interpolate)
	.dwattr DW$186, DW_AT_high_pc(0x00)
	.dwattr DW$186, DW_AT_begin_file("mancal.c")
	.dwattr DW$186, DW_AT_begin_line(0x439)
	.dwattr DW$186, DW_AT_begin_column(0x06)
	.dwattr DW$186, DW_AT_frame_base[DW_OP_breg20 -14]
	.dwattr DW$186, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",1082,1

;***************************************************************
;* FNAME: _Interpolate                  FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  4 Auto,  6 SOE     *
;***************************************************************

_Interpolate:
;* AR4   assigned to _chan
DW$187	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$187, DW_AT_type(*DW$T$10)
	.dwattr DW$187, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _offset
DW$188	.dwtag  DW_TAG_formal_parameter, DW_AT_name("offset"), DW_AT_symbol_name("_offset")
	.dwattr DW$188, DW_AT_type(*DW$T$10)
	.dwattr DW$188, DW_AT_location[DW_OP_reg14]
DW$189	.dwtag  DW_TAG_formal_parameter, DW_AT_name("interpoints"), DW_AT_symbol_name("_interpoints")
	.dwattr DW$189, DW_AT_type(*DW$T$10)
	.dwattr DW$189, DW_AT_location[DW_OP_breg20 -15]
;* AL    assigned to _intercept
DW$190	.dwtag  DW_TAG_formal_parameter, DW_AT_name("intercept"), DW_AT_symbol_name("_intercept")
	.dwattr DW$190, DW_AT_type(*DW$T$16)
	.dwattr DW$190, DW_AT_location[DW_OP_reg0]
DW$191	.dwtag  DW_TAG_formal_parameter, DW_AT_name("increment"), DW_AT_symbol_name("_increment")
	.dwattr DW$191, DW_AT_type(*DW$T$16)
	.dwattr DW$191, DW_AT_location[DW_OP_breg20 -18]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#6
        MOVZ      AR1,AR4               ; |1082| 
        MOVL      *-SP[6],ACC           ; |1082| 
        MOVB      XAR2,#0
        MOV       AL,*-SP[15]           ; |1082| 
        MOV       *-SP[4],AR5           ; |1087| 
        MOVL      XAR3,*-SP[18]         ; |1082| 
        MOV       *-SP[3],AL            ; |1082| 
        BF        L72,LT                ; |1089| 
        ; branchcc occurs ; |1089| 
L71:    
DW$L$_Interpolate$2$B:
	.dwpsn	"mancal.c",1090,0
        MOV       AL,AR2
        LCR       #I$$TOFS              ; |1092| 
        ; call occurs [#I$$TOFS] ; |1092| 
        MOVL      *-SP[2],XAR3          ; |1092| 
        LCR       #FS$$MPY              ; |1092| 
        ; call occurs [#FS$$MPY] ; |1092| 
        MOVL      *-SP[2],ACC           ; |1092| 
        MOVL      ACC,*-SP[6]           ; |1092| 
        LCR       #FS$$ADD              ; |1092| 
        ; call occurs [#FS$$ADD] ; |1092| 
        LCR       #_FloattoIntRound     ; |1092| 
        ; call occurs [#_FloattoIntRound] ; |1092| 
        MOVZ      AR6,AL                ; |1092| 
        MOV       T,*-SP[4]             ; |1092| 
        SETC      SXM
        MPYB      ACC,T,#28             ; |1092| 
        MOVL      XAR4,#_man_comptable  ; |1092| 
        ADD       ACC,AR1               ; |1092| 
        ADDL      XAR4,ACC
        MOV       AL,AR2                ; |1093| 
        ADDB      AL,#1                 ; |1089| 
        MOVZ      AR2,AL                ; |1089| 
        MOV       *+XAR4[0],AR6         ; |1092| 
        INC       *-SP[4]               ; |1093| 
        MOV       AL,*-SP[3]            ; |1089| 
        CMP       AL,AR2                ; |1089| 
	.dwpsn	"mancal.c",1094,0
        BF        L71,GEQ               ; |1089| 
        ; branchcc occurs ; |1089| 
DW$L$_Interpolate$2$E:
L72:    
        SUBB      SP,#6
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"mancal.c",1095,1
        LRETR
        ; return occurs

DW$192	.dwtag  DW_TAG_loop
	.dwattr DW$192, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L71:1:1471518980")
	.dwattr DW$192, DW_AT_begin_file("mancal.c")
	.dwattr DW$192, DW_AT_begin_line(0x441)
	.dwattr DW$192, DW_AT_end_line(0x446)
DW$193	.dwtag  DW_TAG_loop_range
	.dwattr DW$193, DW_AT_low_pc(DW$L$_Interpolate$2$B)
	.dwattr DW$193, DW_AT_high_pc(DW$L$_Interpolate$2$E)
	.dwendtag DW$192

	.dwattr DW$186, DW_AT_end_file("mancal.c")
	.dwattr DW$186, DW_AT_end_line(0x447)
	.dwattr DW$186, DW_AT_end_column(0x01)
	.dwendtag DW$186

	.sect	".text"
	.global	_FineCalModeInit

DW$194	.dwtag  DW_TAG_subprogram, DW_AT_name("FineCalModeInit"), DW_AT_symbol_name("_FineCalModeInit")
	.dwattr DW$194, DW_AT_low_pc(_FineCalModeInit)
	.dwattr DW$194, DW_AT_high_pc(0x00)
	.dwattr DW$194, DW_AT_begin_file("mancal.c")
	.dwattr DW$194, DW_AT_begin_line(0x44a)
	.dwattr DW$194, DW_AT_begin_column(0x06)
	.dwattr DW$194, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$194, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",1099,1

;***************************************************************
;* FNAME: _FineCalModeInit              FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_FineCalModeInit:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        LCR       #_ClearManCompSequence ; |1106| 
        ; call occurs [#_ClearManCompSequence] ; |1106| 
        MOV       T,#12000              ; |1107| 
        MOVW      DP,#_speedcompcoeffs+10
        MPYXU     ACC,T,@_speedcompcoeffs+10 ; |1107| 
        MOVW      DP,#_timers+46
        MOVL      @_timers+46,ACC       ; |1107| 
        MOVW      DP,#_speedcompcoeffs+11
        MPYXU     ACC,T,@_speedcompcoeffs+11 ; |1108| 
        MOVW      DP,#_timers+48
        MOVL      @_timers+48,ACC       ; |1108| 
        MOVW      DP,#_settings+34
        MOV       @_settings+34,#1      ; |1109| 
	.dwpsn	"mancal.c",1110,0
        MOVB      XAR1,#0
L73:    
DW$L$_FineCalModeInit$2$B:
	.dwpsn	"mancal.c",1111,0
        MOVU      ACC,AR1
        MOVL      XAR4,#_calibration+14 ; |1112| 
        LSL       ACC,1                 ; |1112| 
        ADDL      XAR4,ACC
        ADDB      XAR1,#1               ; |1110| 
        MOVB      ACC,#0
        MOVL      *+XAR4[0],ACC         ; |1112| 
        MOV       AL,AR1                ; |1110| 
        CMPB      AL,#150               ; |1110| 
	.dwpsn	"mancal.c",1113,0
        BF        L73,LO                ; |1110| 
        ; branchcc occurs ; |1110| 
DW$L$_FineCalModeInit$2$E:
        MOVB      XAR1,#0
        MOVB      XAR6,#0
	.dwpsn	"mancal.c",1114,0
        MOV       T,#28                 ; |1118| 
L74:    
DW$L$_FineCalModeInit$4$B:
	.dwpsn	"mancal.c",1115,0
	.dwpsn	"mancal.c",1116,0
        MOVB      XAR2,#0
DW$L$_FineCalModeInit$4$E:
L75:    
DW$L$_FineCalModeInit$5$B:
	.dwpsn	"mancal.c",1117,0
        MPYXU     ACC,T,AR1             ; |1118| 
        MOVL      XAR4,#_calibration+482 ; |1118| 
        ADDU      ACC,AR2               ; |1118| 
        LSL       ACC,1                 ; |1118| 
        ADDL      XAR4,ACC
        MOVL      *+XAR4[0],XAR6        ; |1118| 
        MOVL      XAR4,#_calibration+314 ; |1119| 
        ADDL      XAR4,ACC
        ADDB      XAR2,#1               ; |1116| 
        MOVB      ACC,#0
        MOVL      *+XAR4[0],ACC         ; |1119| 
        MOV       AL,AR2                ; |1116| 
        CMPB      AL,#28                ; |1116| 
	.dwpsn	"mancal.c",1120,0
        BF        L75,LO                ; |1116| 
        ; branchcc occurs ; |1116| 
DW$L$_FineCalModeInit$5$E:
DW$L$_FineCalModeInit$6$B:
        ADDB      XAR1,#1               ; |1114| 
        MOV       AL,AR1                ; |1114| 
        CMPB      AL,#3                 ; |1114| 
	.dwpsn	"mancal.c",1121,0
        BF        L74,LO                ; |1114| 
        ; branchcc occurs ; |1114| 
DW$L$_FineCalModeInit$6$E:
	.dwpsn	"mancal.c",1125,0
        MOVB      XAR1,#0
L76:    
DW$L$_FineCalModeInit$8$B:
	.dwpsn	"mancal.c",1126,0
        MOV       AL,AR1                ; |1127| 
        LCR       #_WriteAccCalNVMEM    ; |1127| 
        ; call occurs [#_WriteAccCalNVMEM] ; |1127| 
	.dwpsn	"mancal.c",1128,0
        MOVB      XAR2,#0
DW$L$_FineCalModeInit$8$E:
L77:    
DW$L$_FineCalModeInit$9$B:
	.dwpsn	"mancal.c",1129,0
        MOV       AL,AR1                ; |1130| 
        MOVB      XAR4,#0
        MOV       AH,AR2                ; |1130| 
        LCR       #_WriteMAN1000NVMEM   ; |1130| 
        ; call occurs [#_WriteMAN1000NVMEM] ; |1130| 
        ADDB      XAR2,#1               ; |1128| 
        MOV       AL,AR2                ; |1128| 
        CMPB      AL,#28                ; |1128| 
	.dwpsn	"mancal.c",1131,0
        BF        L77,LO                ; |1128| 
        ; branchcc occurs ; |1128| 
DW$L$_FineCalModeInit$9$E:
DW$L$_FineCalModeInit$10$B:
        ADDB      XAR1,#1               ; |1125| 
        MOV       AL,AR1                ; |1125| 
        CMPB      AL,#150               ; |1125| 
	.dwpsn	"mancal.c",1132,0
        BF        L76,LO                ; |1125| 
        ; branchcc occurs ; |1125| 
DW$L$_FineCalModeInit$10$E:
        MOVW      DP,#_calibration+650
        MOVB      AL,#10                ; |1138| 
        MOV       @_calibration+650,#0  ; |1133| 
        LCR       #_SetBitEvent         ; |1138| 
        ; call occurs [#_SetBitEvent] ; |1138| 
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"mancal.c",1139,1
        LRETR
        ; return occurs

DW$195	.dwtag  DW_TAG_loop
	.dwattr DW$195, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L76:1:1471518980")
	.dwattr DW$195, DW_AT_begin_file("mancal.c")
	.dwattr DW$195, DW_AT_begin_line(0x465)
	.dwattr DW$195, DW_AT_end_line(0x46c)
DW$196	.dwtag  DW_TAG_loop_range
	.dwattr DW$196, DW_AT_low_pc(DW$L$_FineCalModeInit$8$B)
	.dwattr DW$196, DW_AT_high_pc(DW$L$_FineCalModeInit$8$E)
DW$197	.dwtag  DW_TAG_loop_range
	.dwattr DW$197, DW_AT_low_pc(DW$L$_FineCalModeInit$10$B)
	.dwattr DW$197, DW_AT_high_pc(DW$L$_FineCalModeInit$10$E)

DW$198	.dwtag  DW_TAG_loop
	.dwattr DW$198, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L77:2:1471518980")
	.dwattr DW$198, DW_AT_begin_file("mancal.c")
	.dwattr DW$198, DW_AT_begin_line(0x468)
	.dwattr DW$198, DW_AT_end_line(0x46b)
DW$199	.dwtag  DW_TAG_loop_range
	.dwattr DW$199, DW_AT_low_pc(DW$L$_FineCalModeInit$9$B)
	.dwattr DW$199, DW_AT_high_pc(DW$L$_FineCalModeInit$9$E)
	.dwendtag DW$198

	.dwendtag DW$195


DW$200	.dwtag  DW_TAG_loop
	.dwattr DW$200, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L74:1:1471518980")
	.dwattr DW$200, DW_AT_begin_file("mancal.c")
	.dwattr DW$200, DW_AT_begin_line(0x45a)
	.dwattr DW$200, DW_AT_end_line(0x461)
DW$201	.dwtag  DW_TAG_loop_range
	.dwattr DW$201, DW_AT_low_pc(DW$L$_FineCalModeInit$4$B)
	.dwattr DW$201, DW_AT_high_pc(DW$L$_FineCalModeInit$4$E)
DW$202	.dwtag  DW_TAG_loop_range
	.dwattr DW$202, DW_AT_low_pc(DW$L$_FineCalModeInit$6$B)
	.dwattr DW$202, DW_AT_high_pc(DW$L$_FineCalModeInit$6$E)

DW$203	.dwtag  DW_TAG_loop
	.dwattr DW$203, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L75:2:1471518980")
	.dwattr DW$203, DW_AT_begin_file("mancal.c")
	.dwattr DW$203, DW_AT_begin_line(0x45c)
	.dwattr DW$203, DW_AT_end_line(0x460)
DW$204	.dwtag  DW_TAG_loop_range
	.dwattr DW$204, DW_AT_low_pc(DW$L$_FineCalModeInit$5$B)
	.dwattr DW$204, DW_AT_high_pc(DW$L$_FineCalModeInit$5$E)
	.dwendtag DW$203

	.dwendtag DW$200


DW$205	.dwtag  DW_TAG_loop
	.dwattr DW$205, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L73:1:1471518980")
	.dwattr DW$205, DW_AT_begin_file("mancal.c")
	.dwattr DW$205, DW_AT_begin_line(0x456)
	.dwattr DW$205, DW_AT_end_line(0x459)
DW$206	.dwtag  DW_TAG_loop_range
	.dwattr DW$206, DW_AT_low_pc(DW$L$_FineCalModeInit$2$B)
	.dwattr DW$206, DW_AT_high_pc(DW$L$_FineCalModeInit$2$E)
	.dwendtag DW$205

	.dwattr DW$194, DW_AT_end_file("mancal.c")
	.dwattr DW$194, DW_AT_end_line(0x473)
	.dwattr DW$194, DW_AT_end_column(0x01)
	.dwendtag DW$194

	.sect	".text"
	.global	_CheckRoughCalPoints

DW$207	.dwtag  DW_TAG_subprogram, DW_AT_name("CheckRoughCalPoints"), DW_AT_symbol_name("_CheckRoughCalPoints")
	.dwattr DW$207, DW_AT_low_pc(_CheckRoughCalPoints)
	.dwattr DW$207, DW_AT_high_pc(0x00)
	.dwattr DW$207, DW_AT_begin_file("mancal.c")
	.dwattr DW$207, DW_AT_begin_line(0x478)
	.dwattr DW$207, DW_AT_begin_column(0x06)
	.dwattr DW$207, DW_AT_frame_base[DW_OP_breg20 -12]
	.dwattr DW$207, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",1145,1

;***************************************************************
;* FNAME: _CheckRoughCalPoints          FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  4 SOE     *
;***************************************************************

_CheckRoughCalPoints:
;* AL    assigned to _numsamples
DW$208	.dwtag  DW_TAG_formal_parameter, DW_AT_name("numsamples"), DW_AT_symbol_name("_numsamples")
	.dwattr DW$208, DW_AT_type(*DW$T$11)
	.dwattr DW$208, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR2
        MOVW      DP,#_allsensors+4
        MOVL      XAR4,#_calibration+651 ; |1156| 
        MOVZ      AR6,AL                ; |1145| 
        MOVL      *SP++,XAR3
        MOVZ      AR7,@_allsensors+4    ; |1156| 
        MOV       AH,*+XAR4[0]          ; |1156| 
        ADDB      SP,#6
        MOV       AL,AH                 ; |1156| 
        SUB       AL,AR7                ; |1156| 
        ADDB      AL,#-2
        MOV       *-SP[3],AL            ; |1156| 
        MOV       AL,*+XAR4[1]          ; |1157| 
        SUB       AL,AR7                ; |1157| 
        ADDB      AL,#-2
        MOV       *-SP[2],AL            ; |1157| 
        MOV       AL,*+XAR4[2]          ; |1158| 
        SUB       AL,AR7                ; |1158| 
        ADDB      AL,#-2
        MOV       *-SP[1],AL            ; |1158| 
        MOV       AL,*-SP[3]            ; |1161| 
        BF        L78,GEQ               ; |1161| 
        ; branchcc occurs ; |1161| 
        SUB       AH,AR7                ; |1161| 
        MOV       *-SP[3],AH            ; |1161| 
L78:    
        MOV       AH,*-SP[2]            ; |1162| 
        BF        L79,GEQ               ; |1162| 
        ; branchcc occurs ; |1162| 
        MOVW      DP,#_calibration+652
        MOV       AH,@_calibration+652  ; |1162| 
        MOVW      DP,#_allsensors+4
        SUB       AH,@_allsensors+4     ; |1162| 
        MOV       *-SP[2],AH            ; |1162| 
L79:    
        MOV       AH,*-SP[1]            ; |1163| 
        BF        L80,GEQ               ; |1163| 
        ; branchcc occurs ; |1163| 
        MOVW      DP,#_calibration+653
        MOV       AH,@_calibration+653  ; |1163| 
        MOVW      DP,#_allsensors+4
        SUB       AH,@_allsensors+4     ; |1163| 
        MOV       *-SP[1],AH            ; |1163| 
L80:    
        SETC      SXM
        MOV       T,#0                  ; |1166| 
	.dwpsn	"mancal.c",1166,0
        MOVZ      AR5,T                 ; |1166| 
L81:    
DW$L$_CheckRoughCalPoints$8$B:
	.dwpsn	"mancal.c",1167,0
        MOVZ      AR4,SP                ; |1168| 
        MOV       AL,AR5
        MOV       ACC,AL                ; |1168| 
        SUBB      XAR4,#6               ; |1168| 
        ADDL      XAR4,ACC
        MOV       AH,AR5                ; |1168| 
        ADDB      AH,#1                 ; |1166| 
        MOVZ      AR5,AH                ; |1166| 
        CMPB      AH,#3                 ; |1166| 
        MOV       *+XAR4[0],#0          ; |1168| 
	.dwpsn	"mancal.c",1169,0
        BF        L81,LT                ; |1166| 
        ; branchcc occurs ; |1166| 
DW$L$_CheckRoughCalPoints$8$E:
	.dwpsn	"mancal.c",1171,0
        MOVB      XAR7,#0
L82:    
DW$L$_CheckRoughCalPoints$10$B:
	.dwpsn	"mancal.c",1172,0
        MOVZ      AR4,SP                ; |1175| 
        SETC      SXM
        MOV       ACC,AR7               ; |1175| 
        SUBB      XAR4,#3               ; |1175| 
        ADDL      XAR4,ACC
        MOVB      AL,#4                 ; |1175| 
        MOV       T,*+XAR4[0]           ; |1175| 
        ADD       AL,T                  ; |1175| 
        MOVZ      AR5,T                 ; |1177| 
        MOV       PL,AL                 ; |1175| 
	.dwpsn	"mancal.c",1177,0
        SETC      SXM
DW$L$_CheckRoughCalPoints$10$E:
L83:    
DW$L$_CheckRoughCalPoints$11$B:
	.dwpsn	"mancal.c",1178,0
        MOV       ACC,T << 1            ; |1179| 
        MOVL      XAR4,#_calibration+14 ; |1179| 
        ADDL      XAR4,ACC
        MOVU      ACC,AR6
        CMPL      ACC,*+XAR4[0]         ; |1179| 
        BF        L84,HI                ; |1179| 
        ; branchcc occurs ; |1179| 
DW$L$_CheckRoughCalPoints$11$E:
DW$L$_CheckRoughCalPoints$12$B:
        MOVZ      AR4,SP                ; |1181| 
        MOV       ACC,AR7               ; |1181| 
        SUBB      XAR4,#6               ; |1181| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#1          ; |1181| 
DW$L$_CheckRoughCalPoints$12$E:
L84:    
DW$L$_CheckRoughCalPoints$13$B:
        MOV       AH,AR5
        ADDB      AH,#1                 ; |1177| 
        MOVZ      AR5,AH                ; |1177| 
        MOV       T,AR5                 ; |1177| 
        MOV       AH,PL                 ; |1177| 
        CMP       AH,T                  ; |1177| 
	.dwpsn	"mancal.c",1183,0
        BF        L83,GEQ               ; |1177| 
        ; branchcc occurs ; |1177| 
DW$L$_CheckRoughCalPoints$13$E:
DW$L$_CheckRoughCalPoints$14$B:
        MOV       AH,AR7
        ADDB      AH,#1                 ; |1171| 
        CMPB      AH,#3                 ; |1171| 
        MOVZ      AR7,AH                ; |1171| 
	.dwpsn	"mancal.c",1184,0
        BF        L82,LT                ; |1171| 
        ; branchcc occurs ; |1171| 
DW$L$_CheckRoughCalPoints$14$E:
        MOV       T,#0                  ; |1186| 
	.dwpsn	"mancal.c",1186,0
        MOVZ      AR5,T                 ; |1186| 
L85:    
DW$L$_CheckRoughCalPoints$16$B:
	.dwpsn	"mancal.c",1187,0
        SETC      SXM
        MOV       AL,AR5
        MOVL      XAR4,#_calibration+651 ; |1188| 
        MOV       ACC,AL                ; |1188| 
        ADDL      XAR4,ACC
        MOVW      DP,#_allsensors+4
        MOV       AH,*+XAR4[0]          ; |1188| 
        MOVZ      AR4,SP                ; |1189| 
        SUB       AH,@_allsensors+4     ; |1188| 
        MOV       AL,AR5                ; |1188| 
        MOVZ      AR0,AH                ; |1188| 
        SUBB      XAR4,#6               ; |1189| 
        MOV       ACC,AL                ; |1189| 
        ADDL      XAR4,ACC
        MOV       AH,*+XAR4[0]          ; |1189| 
        BF        L88,NEQ               ; |1189| 
        ; branchcc occurs ; |1189| 
DW$L$_CheckRoughCalPoints$16$E:
DW$L$_CheckRoughCalPoints$17$B:
        MOVW      DP,#_allsensors
        MOVB      XAR7,#0
        MOV       AH,@_allsensors       ; |1191| 
        BF        L88,EQ                ; |1191| 
        ; branchcc occurs ; |1191| 
DW$L$_CheckRoughCalPoints$17$E:
L86:    
DW$L$_CheckRoughCalPoints$18$B:
	.dwpsn	"mancal.c",1192,0
        MOV       T,AR7                 ; |1193| 
        MOVL      XAR4,#_sensor         ; |1193| 
        MPYB      ACC,T,#18             ; |1193| 
        ADDL      XAR4,ACC
        MOV       AH,*+XAR4[0]          ; |1193| 
        AND       AL,AH,#0x0001         ; |1193| 
        BF        L87,EQ                ; |1193| 
        ; branchcc occurs ; |1193| 
DW$L$_CheckRoughCalPoints$18$E:
DW$L$_CheckRoughCalPoints$19$B:
        ANDB      AH,#2                 ; |1193| 
        BF        L87,EQ                ; |1193| 
        ; branchcc occurs ; |1193| 
DW$L$_CheckRoughCalPoints$19$E:
DW$L$_CheckRoughCalPoints$20$B:
        MOV       T,AR0                 ; |1196| 
        SETC      SXM
        MPYB      P,T,#28               ; |1196| 
        MOVL      XAR4,#_calibration+654 ; |1196| 
        MOV       ACC,AR7               ; |1196| 
        MOV       T,AR5                 ; |1196| 
        MOVL      XAR3,P                ; |1196| 
        MOVL      XAR2,ACC              ; |1196| 
        MPYB      P,T,#28               ; |1196| 
        ADDL      ACC,P
        ADDL      XAR4,ACC
        MOV       PL,*+XAR4[0]          ; |1196| 
        MOVL      ACC,XAR2              ; |1196| 
        MOVL      XAR4,#_man_comptable  ; |1196| 
        ADDL      ACC,XAR3
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],P           ; |1196| 
DW$L$_CheckRoughCalPoints$20$E:
L87:    
DW$L$_CheckRoughCalPoints$21$B:
        MOV       AH,AR7
        ADDB      AH,#1                 ; |1191| 
        MOVZ      AR7,AH                ; |1191| 
        MOVW      DP,#_allsensors
        CMP       AH,@_allsensors       ; |1191| 
	.dwpsn	"mancal.c",1198,0
        BF        L86,LO                ; |1191| 
        ; branchcc occurs ; |1191| 
DW$L$_CheckRoughCalPoints$21$E:
L88:    
DW$L$_CheckRoughCalPoints$22$B:
        MOV       AH,AR5
        ADDB      AH,#1                 ; |1186| 
        CMPB      AH,#3                 ; |1186| 
        MOVZ      AR5,AH                ; |1186| 
	.dwpsn	"mancal.c",1200,0
        BF        L85,LT                ; |1186| 
        ; branchcc occurs ; |1186| 
DW$L$_CheckRoughCalPoints$22$E:
        MOVU      ACC,AR6
        MOVL      XAR4,#_calibration+14 ; |1208| 
        CMPL      ACC,*+XAR4[0]         ; |1208| 
        BF        L91,LOS               ; |1208| 
        ; branchcc occurs ; |1208| 
        MOVU      ACC,AR6
        CMPL      ACC,*+XAR4[2]         ; |1208| 
        BF        L91,LOS               ; |1208| 
        ; branchcc occurs ; |1208| 
        MOVU      ACC,AR6
        CMPL      ACC,*+XAR4[4]         ; |1208| 
        BF        L91,LOS               ; |1208| 
        ; branchcc occurs ; |1208| 
        MOVW      DP,#_allsensors
        MOVB      XAR7,#0
        MOV       AH,@_allsensors       ; |1210| 
        BF        L91,EQ                ; |1210| 
        ; branchcc occurs ; |1210| 
L89:    
DW$L$_CheckRoughCalPoints$27$B:
	.dwpsn	"mancal.c",1211,0
        MOV       T,AR7                 ; |1212| 
        MOVL      XAR4,#_sensor         ; |1212| 
        MPYB      ACC,T,#18             ; |1212| 
        ADDL      XAR4,ACC
        MOV       AH,*+XAR4[0]          ; |1212| 
        AND       AL,AH,#0x0001         ; |1212| 
        BF        L90,EQ                ; |1212| 
        ; branchcc occurs ; |1212| 
DW$L$_CheckRoughCalPoints$27$E:
DW$L$_CheckRoughCalPoints$28$B:
        ANDB      AH,#2                 ; |1212| 
        BF        L90,EQ                ; |1212| 
        ; branchcc occurs ; |1212| 
DW$L$_CheckRoughCalPoints$28$E:
DW$L$_CheckRoughCalPoints$29$B:
        SETC      SXM
        MOVL      XAR4,#_calibration+738 ; |1215| 
        MOV       ACC,AR7               ; |1215| 
        ADDL      XAR4,ACC
        MOV       PL,*+XAR4[0]          ; |1215| 
        MOV       ACC,AR7               ; |1215| 
        MOVL      XAR4,#_man_comptable  ; |1215| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],P           ; |1215| 
DW$L$_CheckRoughCalPoints$29$E:
L90:    
DW$L$_CheckRoughCalPoints$30$B:
        MOV       AH,AR7
        ADDB      AH,#1                 ; |1210| 
        MOVZ      AR7,AH                ; |1210| 
        MOVW      DP,#_allsensors
        CMP       AH,@_allsensors       ; |1210| 
	.dwpsn	"mancal.c",1217,0
        BF        L89,LO                ; |1210| 
        ; branchcc occurs ; |1210| 
DW$L$_CheckRoughCalPoints$30$E:
L91:    
        MOVW      DP,#_calibration
        MOVZ      AR7,@_calibration     ; |1219| 
        MOVL      XAR4,#_calibration+14 ; |1219| 
        MOV       AL,AR7                ; |1219| 
        MOVL      XAR5,XAR4             ; |1219| 
        ADDB      AL,#-1
        MOVU      ACC,AL
        LSL       ACC,1                 ; |1219| 
        ADDL      XAR5,ACC
        MOVU      ACC,AR6
        CMPL      ACC,*+XAR5[0]         ; |1219| 
        BF        L94,LOS               ; |1219| 
        ; branchcc occurs ; |1219| 
        MOV       AL,AR7                ; |1219| 
        MOVL      XAR5,XAR4             ; |1219| 
        ADDB      AL,#-2
        MOVU      ACC,AL
        LSL       ACC,1                 ; |1219| 
        ADDL      XAR5,ACC
        MOVU      ACC,AR6
        CMPL      ACC,*+XAR5[0]         ; |1219| 
        BF        L94,LOS               ; |1219| 
        ; branchcc occurs ; |1219| 
        MOV       AH,AR7                ; |1219| 
        ADDB      AH,#-3
        MOVU      ACC,AH
        LSL       ACC,1                 ; |1219| 
        ADDL      XAR4,ACC
        MOVU      ACC,AR6
        CMPL      ACC,*+XAR4[0]         ; |1219| 
        BF        L94,LOS               ; |1219| 
        ; branchcc occurs ; |1219| 
        MOVW      DP,#_allsensors
        MOV       AL,@_allsensors       ; |1221| 
        MOVB      XAR7,#0
        BF        L94,EQ                ; |1221| 
        ; branchcc occurs ; |1221| 
L92:    
DW$L$_CheckRoughCalPoints$35$B:
	.dwpsn	"mancal.c",1222,0
        MOV       T,AR7                 ; |1223| 
        MOVL      XAR4,#_sensor         ; |1223| 
        MPYB      ACC,T,#18             ; |1223| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |1223| 
        AND       AH,AL,#0x0001         ; |1223| 
        BF        L93,EQ                ; |1223| 
        ; branchcc occurs ; |1223| 
DW$L$_CheckRoughCalPoints$35$E:
DW$L$_CheckRoughCalPoints$36$B:
        ANDB      AL,#2                 ; |1223| 
        BF        L93,EQ                ; |1223| 
        ; branchcc occurs ; |1223| 
DW$L$_CheckRoughCalPoints$36$E:
DW$L$_CheckRoughCalPoints$37$B:
        SETC      SXM
        MOVL      XAR4,#_calibration+766 ; |1226| 
        MOVW      DP,#_calibration
        MOV       ACC,AR7               ; |1226| 
        MOV       T,#28                 ; |1226| 
        ADDL      XAR4,ACC
        MOV       AL,@_calibration      ; |1226| 
        ADDB      AL,#-1
        MPYXU     ACC,T,AL              ; |1226| 
        MOVZ      AR6,*+XAR4[0]         ; |1226| 
        ADD       ACC,AR7               ; |1226| 
        MOVL      XAR4,#_man_comptable  ; |1226| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],AR6         ; |1226| 
DW$L$_CheckRoughCalPoints$37$E:
L93:    
DW$L$_CheckRoughCalPoints$38$B:
        MOV       AL,AR7
        ADDB      AL,#1                 ; |1221| 
        MOVZ      AR7,AL                ; |1221| 
        MOVW      DP,#_allsensors
        CMP       AL,@_allsensors       ; |1221| 
	.dwpsn	"mancal.c",1228,0
        BF        L92,LO                ; |1221| 
        ; branchcc occurs ; |1221| 
DW$L$_CheckRoughCalPoints$38$E:
L94:    
        SUBB      SP,#6
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
	.dwpsn	"mancal.c",1231,1
        LRETR
        ; return occurs

DW$209	.dwtag  DW_TAG_loop
	.dwattr DW$209, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L92:1:1471518980")
	.dwattr DW$209, DW_AT_begin_file("mancal.c")
	.dwattr DW$209, DW_AT_begin_line(0x4c5)
	.dwattr DW$209, DW_AT_end_line(0x4cc)
DW$210	.dwtag  DW_TAG_loop_range
	.dwattr DW$210, DW_AT_low_pc(DW$L$_CheckRoughCalPoints$35$B)
	.dwattr DW$210, DW_AT_high_pc(DW$L$_CheckRoughCalPoints$35$E)
DW$211	.dwtag  DW_TAG_loop_range
	.dwattr DW$211, DW_AT_low_pc(DW$L$_CheckRoughCalPoints$36$B)
	.dwattr DW$211, DW_AT_high_pc(DW$L$_CheckRoughCalPoints$36$E)
DW$212	.dwtag  DW_TAG_loop_range
	.dwattr DW$212, DW_AT_low_pc(DW$L$_CheckRoughCalPoints$37$B)
	.dwattr DW$212, DW_AT_high_pc(DW$L$_CheckRoughCalPoints$37$E)
DW$213	.dwtag  DW_TAG_loop_range
	.dwattr DW$213, DW_AT_low_pc(DW$L$_CheckRoughCalPoints$38$B)
	.dwattr DW$213, DW_AT_high_pc(DW$L$_CheckRoughCalPoints$38$E)
	.dwendtag DW$209


DW$214	.dwtag  DW_TAG_loop
	.dwattr DW$214, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L89:1:1471518980")
	.dwattr DW$214, DW_AT_begin_file("mancal.c")
	.dwattr DW$214, DW_AT_begin_line(0x4ba)
	.dwattr DW$214, DW_AT_end_line(0x4c1)
DW$215	.dwtag  DW_TAG_loop_range
	.dwattr DW$215, DW_AT_low_pc(DW$L$_CheckRoughCalPoints$27$B)
	.dwattr DW$215, DW_AT_high_pc(DW$L$_CheckRoughCalPoints$27$E)
DW$216	.dwtag  DW_TAG_loop_range
	.dwattr DW$216, DW_AT_low_pc(DW$L$_CheckRoughCalPoints$28$B)
	.dwattr DW$216, DW_AT_high_pc(DW$L$_CheckRoughCalPoints$28$E)
DW$217	.dwtag  DW_TAG_loop_range
	.dwattr DW$217, DW_AT_low_pc(DW$L$_CheckRoughCalPoints$29$B)
	.dwattr DW$217, DW_AT_high_pc(DW$L$_CheckRoughCalPoints$29$E)
DW$218	.dwtag  DW_TAG_loop_range
	.dwattr DW$218, DW_AT_low_pc(DW$L$_CheckRoughCalPoints$30$B)
	.dwattr DW$218, DW_AT_high_pc(DW$L$_CheckRoughCalPoints$30$E)
	.dwendtag DW$214


DW$219	.dwtag  DW_TAG_loop
	.dwattr DW$219, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L85:1:1471518980")
	.dwattr DW$219, DW_AT_begin_file("mancal.c")
	.dwattr DW$219, DW_AT_begin_line(0x4a2)
	.dwattr DW$219, DW_AT_end_line(0x4b0)
DW$220	.dwtag  DW_TAG_loop_range
	.dwattr DW$220, DW_AT_low_pc(DW$L$_CheckRoughCalPoints$16$B)
	.dwattr DW$220, DW_AT_high_pc(DW$L$_CheckRoughCalPoints$16$E)
DW$221	.dwtag  DW_TAG_loop_range
	.dwattr DW$221, DW_AT_low_pc(DW$L$_CheckRoughCalPoints$17$B)
	.dwattr DW$221, DW_AT_high_pc(DW$L$_CheckRoughCalPoints$17$E)
DW$222	.dwtag  DW_TAG_loop_range
	.dwattr DW$222, DW_AT_low_pc(DW$L$_CheckRoughCalPoints$22$B)
	.dwattr DW$222, DW_AT_high_pc(DW$L$_CheckRoughCalPoints$22$E)

DW$223	.dwtag  DW_TAG_loop
	.dwattr DW$223, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L86:2:1471518980")
	.dwattr DW$223, DW_AT_begin_file("mancal.c")
	.dwattr DW$223, DW_AT_begin_line(0x4a7)
	.dwattr DW$223, DW_AT_end_line(0x4ae)
DW$224	.dwtag  DW_TAG_loop_range
	.dwattr DW$224, DW_AT_low_pc(DW$L$_CheckRoughCalPoints$18$B)
	.dwattr DW$224, DW_AT_high_pc(DW$L$_CheckRoughCalPoints$18$E)
DW$225	.dwtag  DW_TAG_loop_range
	.dwattr DW$225, DW_AT_low_pc(DW$L$_CheckRoughCalPoints$19$B)
	.dwattr DW$225, DW_AT_high_pc(DW$L$_CheckRoughCalPoints$19$E)
DW$226	.dwtag  DW_TAG_loop_range
	.dwattr DW$226, DW_AT_low_pc(DW$L$_CheckRoughCalPoints$20$B)
	.dwattr DW$226, DW_AT_high_pc(DW$L$_CheckRoughCalPoints$20$E)
DW$227	.dwtag  DW_TAG_loop_range
	.dwattr DW$227, DW_AT_low_pc(DW$L$_CheckRoughCalPoints$21$B)
	.dwattr DW$227, DW_AT_high_pc(DW$L$_CheckRoughCalPoints$21$E)
	.dwendtag DW$223

	.dwendtag DW$219


DW$228	.dwtag  DW_TAG_loop
	.dwattr DW$228, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L82:1:1471518980")
	.dwattr DW$228, DW_AT_begin_file("mancal.c")
	.dwattr DW$228, DW_AT_begin_line(0x493)
	.dwattr DW$228, DW_AT_end_line(0x4a0)
DW$229	.dwtag  DW_TAG_loop_range
	.dwattr DW$229, DW_AT_low_pc(DW$L$_CheckRoughCalPoints$10$B)
	.dwattr DW$229, DW_AT_high_pc(DW$L$_CheckRoughCalPoints$10$E)
DW$230	.dwtag  DW_TAG_loop_range
	.dwattr DW$230, DW_AT_low_pc(DW$L$_CheckRoughCalPoints$14$B)
	.dwattr DW$230, DW_AT_high_pc(DW$L$_CheckRoughCalPoints$14$E)

DW$231	.dwtag  DW_TAG_loop
	.dwattr DW$231, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L83:2:1471518980")
	.dwattr DW$231, DW_AT_begin_file("mancal.c")
	.dwattr DW$231, DW_AT_begin_line(0x499)
	.dwattr DW$231, DW_AT_end_line(0x49f)
DW$232	.dwtag  DW_TAG_loop_range
	.dwattr DW$232, DW_AT_low_pc(DW$L$_CheckRoughCalPoints$11$B)
	.dwattr DW$232, DW_AT_high_pc(DW$L$_CheckRoughCalPoints$11$E)
DW$233	.dwtag  DW_TAG_loop_range
	.dwattr DW$233, DW_AT_low_pc(DW$L$_CheckRoughCalPoints$12$B)
	.dwattr DW$233, DW_AT_high_pc(DW$L$_CheckRoughCalPoints$12$E)
DW$234	.dwtag  DW_TAG_loop_range
	.dwattr DW$234, DW_AT_low_pc(DW$L$_CheckRoughCalPoints$13$B)
	.dwattr DW$234, DW_AT_high_pc(DW$L$_CheckRoughCalPoints$13$E)
	.dwendtag DW$231

	.dwendtag DW$228


DW$235	.dwtag  DW_TAG_loop
	.dwattr DW$235, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L81:1:1471518980")
	.dwattr DW$235, DW_AT_begin_file("mancal.c")
	.dwattr DW$235, DW_AT_begin_line(0x48e)
	.dwattr DW$235, DW_AT_end_line(0x491)
DW$236	.dwtag  DW_TAG_loop_range
	.dwattr DW$236, DW_AT_low_pc(DW$L$_CheckRoughCalPoints$8$B)
	.dwattr DW$236, DW_AT_high_pc(DW$L$_CheckRoughCalPoints$8$E)
	.dwendtag DW$235

	.dwattr DW$207, DW_AT_end_file("mancal.c")
	.dwattr DW$207, DW_AT_end_line(0x4cf)
	.dwattr DW$207, DW_AT_end_column(0x01)
	.dwendtag DW$207

	.sect	".text"
	.global	_FineCurveCal

DW$237	.dwtag  DW_TAG_subprogram, DW_AT_name("FineCurveCal"), DW_AT_symbol_name("_FineCurveCal")
	.dwattr DW$237, DW_AT_low_pc(_FineCurveCal)
	.dwattr DW$237, DW_AT_high_pc(0x00)
	.dwattr DW$237, DW_AT_begin_file("mancal.c")
	.dwattr DW$237, DW_AT_begin_line(0x4d6)
	.dwattr DW$237, DW_AT_begin_column(0x06)
	.dwattr DW$237, DW_AT_frame_base[DW_OP_breg20 -14]
	.dwattr DW$237, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",1239,1

;***************************************************************
;* FNAME: _FineCurveCal                 FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  4 Auto,  6 SOE     *
;***************************************************************

_FineCurveCal:
        MOVL      *SP++,XAR1
        MOVB      AL,#0
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#6
        LCR       #_GetModalRPM         ; |1247| 
        ; call occurs [#_GetModalRPM] ; |1247| 
        MOVW      DP,#_allsensors+16
        TBIT      @_allsensors+16,#0    ; |1248| 
        BF        L95,TC                ; |1248| 
        ; branchcc occurs ; |1248| 
        CMPB      AL,#0                 ; |1346| 
        BF        L105,NEQ              ; |1346| 
        ; branchcc occurs ; |1346| 
        MOVW      DP,#_settings+34
        MOV       @_settings+34,#0      ; |1348| 
        BF        L105,UNC              ; |1348| 
        ; branch occurs ; |1348| 
L95:    
        MOVW      DP,#_settings+34
        MOV       @_settings+34,#1      ; |1250| 
        MOVW      DP,#_allsensors+4
        SUB       AL,@_allsensors+4     ; |1253| 
        CMPB      AL,#150               ; |1253| 
        MOV       *-SP[3],AL            ; |1253| 
        BF        L103,HIS              ; |1253| 
        ; branchcc occurs ; |1253| 
        MOVW      DP,#_iBarred
        MOV       AL,@_iBarred          ; |1253| 
        BF        L103,NEQ              ; |1253| 
        ; branchcc occurs ; |1253| 
        MOVW      DP,#_iDeltaRPM15
        MOV       AL,@_iDeltaRPM15      ; |1253| 
        BF        L103,NEQ              ; |1253| 
        ; branchcc occurs ; |1253| 
        MOV       AL,*-SP[3]
        MOVL      XAR4,#_calibration+14 ; |1259| 
        MOVU      ACC,AL
        LSL       ACC,1                 ; |1259| 
        ADDL      XAR4,ACC
        MOVL      XAR5,#400000          ; |1259| 
        MOVL      ACC,XAR5              ; |1259| 
        CMPL      ACC,*+XAR4[0]         ; |1259| 
        BF        L103,LOS              ; |1259| 
        ; branchcc occurs ; |1259| 
        MOVB      ACC,#1
        ADDL      *+XAR4[0],ACC         ; |1261| 
        MOV       AL,*-SP[3]            ; |1261| 
        LCR       #_ReadAccCalNVMEM     ; |1262| 
        ; call occurs [#_ReadAccCalNVMEM] ; |1262| 
        MOVB      XAR1,#0
        MOVW      DP,#_allsensors
        MOV       AL,@_allsensors       ; |1263| 
        BF        L99,EQ                ; |1263| 
        ; branchcc occurs ; |1263| 
L96:    
DW$L$_FineCurveCal$9$B:
	.dwpsn	"mancal.c",1264,0
        MOV       T,#18                 ; |1265| 
        MOVL      XAR4,#_sensor         ; |1265| 
        MPYXU     ACC,T,AR1             ; |1265| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |1265| 
        AND       AH,AL,#0x0001         ; |1265| 
        BF        L98,EQ                ; |1265| 
        ; branchcc occurs ; |1265| 
DW$L$_FineCurveCal$9$E:
DW$L$_FineCurveCal$10$B:
        ANDB      AL,#2                 ; |1265| 
        BF        L98,EQ                ; |1265| 
        ; branchcc occurs ; |1265| 
DW$L$_FineCurveCal$10$E:
DW$L$_FineCurveCal$11$B:
        MOV       AL,AR1                ; |1268| 
        LCR       #_GetPreCompValue     ; |1268| 
        ; call occurs [#_GetPreCompValue] ; |1268| 
        MOVZ      AR6,AL                ; |1268| 
        CMP       AR6,#-32000           ; |1268| 
        BF        L97,GT                ; |1268| 
        ; branchcc occurs ; |1268| 
DW$L$_FineCurveCal$11$E:
DW$L$_FineCurveCal$12$B:
        MOV       AL,*-SP[3]
        MOVL      XAR4,#_calibration+14 ; |1280| 
        MOVU      ACC,AL
        LSL       ACC,1                 ; |1280| 
        ADDL      XAR4,ACC
        MOVL      XAR2,XAR4             ; |1280| 
        MOVB      ACC,#1
        CMPL      ACC,*+XAR2[0]         ; |1280| 
        BF        L98,EQ                ; |1280| 
        ; branchcc occurs ; |1280| 
DW$L$_FineCurveCal$12$E:
DW$L$_FineCurveCal$13$B:
        MOVU      ACC,AR1
        MOVL      XAR3,#_calibration+482 ; |1283| 
        LSL       ACC,1                 ; |1283| 
        ADDL      XAR3,ACC
        MOVL      ACC,*+XAR3[0]         ; |1283| 
        LCR       #L$$TOFS              ; |1283| 
        ; call occurs [#L$$TOFS] ; |1283| 
        MOVL      *-SP[6],ACC           ; |1283| 
        MOVL      ACC,*+XAR2[0]         ; |1283| 
        SUBB      ACC,#1                ; |1283| 
        LCR       #UL$$TOFS             ; |1283| 
        ; call occurs [#UL$$TOFS] ; |1283| 
        MOVL      *-SP[2],ACC           ; |1283| 
        MOVL      ACC,*-SP[6]           ; |1283| 
        LCR       #FS$$DIV              ; |1283| 
        ; call occurs [#FS$$DIV] ; |1283| 
        LCR       #_FloattoIntRound     ; |1283| 
        ; call occurs [#_FloattoIntRound] ; |1283| 
        SETC      SXM
        MOV       ACC,AL                ; |1283| 
        ADDL      *+XAR3[0],ACC         ; |1283| 
        BF        L98,UNC               ; |1283| 
        ; branch occurs ; |1283| 
DW$L$_FineCurveCal$13$E:
L97:    
DW$L$_FineCurveCal$14$B:
        MOVU      ACC,AR1
        MOVL      XAR4,#_calibration+482 ; |1272| 
        LSL       ACC,1                 ; |1272| 
        ADDL      XAR4,ACC
        SETC      SXM
        MOV       ACC,AR6               ; |1272| 
        ADDL      *+XAR4[0],ACC         ; |1272| 
DW$L$_FineCurveCal$14$E:
L98:    
DW$L$_FineCurveCal$15$B:
        ADDB      XAR1,#1               ; |1263| 
        MOVW      DP,#_allsensors
        MOV       AL,AR1                ; |1263| 
        CMP       AL,@_allsensors       ; |1263| 
	.dwpsn	"mancal.c",1288,0
        BF        L96,LO                ; |1263| 
        ; branchcc occurs ; |1263| 
DW$L$_FineCurveCal$15$E:
L99:    
        MOV       AL,*-SP[3]
        LCR       #_WriteAccCalNVMEM    ; |1289| 
        ; call occurs [#_WriteAccCalNVMEM] ; |1289| 
        MOV       AL,*-SP[3]            ; |1289| 
        MOVU      ACC,AL
        MOVL      XAR4,#_calibration+14 ; |1291| 
        LSL       ACC,1                 ; |1291| 
        ADDL      XAR4,ACC
        MOVW      DP,#_speedcompcoeffs+12
        MOVU      ACC,@_speedcompcoeffs+12
        CMPL      ACC,*+XAR4[0]         ; |1291| 
        BF        L103,NEQ              ; |1291| 
        ; branchcc occurs ; |1291| 
        MOVW      DP,#_allsensors
        MOVB      XAR1,#0
        MOV       AL,@_allsensors       ; |1293| 
        BF        L102,EQ               ; |1293| 
        ; branchcc occurs ; |1293| 
L100:    
DW$L$_FineCurveCal$18$B:
	.dwpsn	"mancal.c",1294,0
        MOV       T,#18                 ; |1295| 
        MOVL      XAR4,#_sensor         ; |1295| 
        MPYXU     ACC,T,AR1             ; |1295| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |1295| 
        AND       AH,AL,#0x0001         ; |1295| 
        BF        L101,EQ               ; |1295| 
        ; branchcc occurs ; |1295| 
DW$L$_FineCurveCal$18$E:
DW$L$_FineCurveCal$19$B:
        ANDB      AL,#2                 ; |1295| 
        BF        L101,EQ               ; |1295| 
        ; branchcc occurs ; |1295| 
DW$L$_FineCurveCal$19$E:
DW$L$_FineCurveCal$20$B:
        MOVU      ACC,AR1
        MOVL      XAR4,#_calibration+482 ; |1297| 
        LSL       ACC,1                 ; |1297| 
        ADDL      XAR4,ACC
        MOVL      ACC,*+XAR4[0]         ; |1297| 
        LCR       #L$$TOFS              ; |1297| 
        ; call occurs [#L$$TOFS] ; |1297| 
        MOVL      XAR2,ACC              ; |1297| 
        MOV       AL,*-SP[3]            ; |1297| 
        MOVU      ACC,AL
        MOVL      XAR4,#_calibration+14 ; |1299| 
        LSL       ACC,1                 ; |1299| 
        ADDL      XAR4,ACC
        MOVL      ACC,*+XAR4[0]         ; |1299| 
        LCR       #UL$$TOFS             ; |1299| 
        ; call occurs [#UL$$TOFS] ; |1299| 
        MOVL      *-SP[2],ACC           ; |1299| 
        MOVL      ACC,XAR2              ; |1299| 
        LCR       #FS$$DIV              ; |1299| 
        ; call occurs [#FS$$DIV] ; |1299| 
        LCR       #_FloattoIntRound     ; |1300| 
        ; call occurs [#_FloattoIntRound] ; |1300| 
        MOVZ      AR6,AL                ; |1300| 
        MOV       T,#28                 ; |1300| 
        MOV       AL,*-SP[3]            ; |1300| 
        MPYXU     ACC,T,AL              ; |1300| 
        MOVL      XAR4,#_man_comptable  ; |1300| 
        ADDU      ACC,AR1               ; |1300| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],AR6         ; |1300| 
DW$L$_FineCurveCal$20$E:
L101:    
DW$L$_FineCurveCal$21$B:
        ADDB      XAR1,#1               ; |1293| 
        MOVW      DP,#_allsensors
        MOV       AL,AR1                ; |1293| 
        CMP       AL,@_allsensors       ; |1293| 
	.dwpsn	"mancal.c",1302,0
        BF        L100,LO               ; |1293| 
        ; branchcc occurs ; |1293| 
DW$L$_FineCurveCal$21$E:
L102:    
        MOVW      DP,#_calibration+650
        INC       @_calibration+650     ; |1303| 
        MOVW      DP,#_speedcompcoeffs
        MOV       @_speedcompcoeffs,#8  ; |1306| 
        LCR       #_WriteSpeedCompStructtoNVMEM ; |1307| 
        ; call occurs [#_WriteSpeedCompStructtoNVMEM] ; |1307| 
        MOVW      DP,#_speedcompcoeffs+12
        MOV       AL,@_speedcompcoeffs+12 ; |1309| 
        LCR       #_FineCurveCalInterpolation ; |1309| 
        ; call occurs [#_FineCurveCalInterpolation] ; |1309| 
        LCR       #_WriteMANCompTabletoNVMEM ; |1310| 
        ; call occurs [#_WriteMANCompTabletoNVMEM] ; |1310| 
        MOVW      DP,#_sdsettings+1
        INC       @_sdsettings+1        ; |1311| 
        MOVW      DP,#_sdsettings+1
        MOV       AL,@_sdsettings+1     ; |1311| 
        MOVL      XAR4,#_sdcarddir+18   ; |1311| 
        ADDB      AL,#-1
        LCR       #_MANCompTabletoSDCardFile ; |1311| 
        ; call occurs [#_MANCompTabletoSDCardFile] ; |1311| 
        MOVB      AL,#0
        MOVL      XAR4,#_sdcarddir+27   ; |1312| 
        LCR       #_MANCompTabletoSDCardFile ; |1312| 
        ; call occurs [#_MANCompTabletoSDCardFile] ; |1312| 
        MOVB      AL,#1                 ; |1314| 
        MOVW      DP,#_mancal+3
        MOV       @_mancal+3,AL         ; |1314| 
        MOVW      DP,#_iSensorInResetMode
        MOV       @_iSensorInResetMode,AL ; |1315| 
        MOVW      DP,#_iSensorInRepalceTimer
        MOV       @_iSensorInRepalceTimer,AL ; |1316| 
L103:    
        MOVW      DP,#_speedcompcoeffs
        MOV       AL,@_speedcompcoeffs  ; |1323| 
        CMPB      AL,#8                 ; |1323| 
        BF        L104,NEQ              ; |1323| 
        ; branchcc occurs ; |1323| 
        MOVW      DP,#_timers+48
        MOVL      ACC,@_timers+48       ; |1325| 
        BF        L104,NEQ              ; |1325| 
        ; branchcc occurs ; |1325| 
        MOVW      DP,#_speedcompcoeffs+12
        MOV       AL,@_speedcompcoeffs+12 ; |1328| 
        LCR       #_FineCurveCalInterpolation ; |1328| 
        ; call occurs [#_FineCurveCalInterpolation] ; |1328| 
        MOV       T,#12000              ; |1329| 
        MOVW      DP,#_speedcompcoeffs+11
        MPYXU     ACC,T,@_speedcompcoeffs+11 ; |1329| 
        MOVW      DP,#_timers+48
        MOVL      @_timers+48,ACC       ; |1329| 
        LCR       #_WriteMANCompTabletoNVMEM ; |1330| 
        ; call occurs [#_WriteMANCompTabletoNVMEM] ; |1330| 
        MOVW      DP,#_sdsettings+1
        INC       @_sdsettings+1        ; |1331| 
        MOVW      DP,#_sdsettings+1
        MOV       AL,@_sdsettings+1     ; |1331| 
        MOVL      XAR4,#_sdcarddir+18   ; |1331| 
        ADDB      AL,#-1
        LCR       #_MANCompTabletoSDCardFile ; |1331| 
        ; call occurs [#_MANCompTabletoSDCardFile] ; |1331| 
        MOVB      AL,#0
        MOVL      XAR4,#_sdcarddir+27   ; |1333| 
        LCR       #_MANCompTabletoSDCardFile ; |1333| 
        ; call occurs [#_MANCompTabletoSDCardFile] ; |1333| 
        MOVB      AL,#1                 ; |1334| 
        MOVW      DP,#_mancal+3
        MOV       @_mancal+3,AL         ; |1334| 
        MOVW      DP,#_iSensorInResetMode
        MOV       @_iSensorInResetMode,AL ; |1336| 
        MOVW      DP,#_iSensorInRepalceTimer
        MOV       @_iSensorInRepalceTimer,AL ; |1337| 
L104:    
        LCR       #_WriteCalibrationStructtoNVMEM ; |1341| 
        ; call occurs [#_WriteCalibrationStructtoNVMEM] ; |1341| 
        LCR       #_GetLearningTimeLeft ; |1342| 
        ; call occurs [#_GetLearningTimeLeft] ; |1342| 
        LCR       #_GetIntervalTimeLeft ; |1343| 
        ; call occurs [#_GetIntervalTimeLeft] ; |1343| 
        LCR       #_WriteMANCaltoNVMEM  ; |1344| 
        ; call occurs [#_WriteMANCaltoNVMEM] ; |1344| 
L105:    
        SUBB      SP,#6
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"mancal.c",1350,1
        LRETR
        ; return occurs

DW$238	.dwtag  DW_TAG_loop
	.dwattr DW$238, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L100:1:1471518980")
	.dwattr DW$238, DW_AT_begin_file("mancal.c")
	.dwattr DW$238, DW_AT_begin_line(0x50d)
	.dwattr DW$238, DW_AT_end_line(0x516)
DW$239	.dwtag  DW_TAG_loop_range
	.dwattr DW$239, DW_AT_low_pc(DW$L$_FineCurveCal$18$B)
	.dwattr DW$239, DW_AT_high_pc(DW$L$_FineCurveCal$18$E)
DW$240	.dwtag  DW_TAG_loop_range
	.dwattr DW$240, DW_AT_low_pc(DW$L$_FineCurveCal$19$B)
	.dwattr DW$240, DW_AT_high_pc(DW$L$_FineCurveCal$19$E)
DW$241	.dwtag  DW_TAG_loop_range
	.dwattr DW$241, DW_AT_low_pc(DW$L$_FineCurveCal$20$B)
	.dwattr DW$241, DW_AT_high_pc(DW$L$_FineCurveCal$20$E)
DW$242	.dwtag  DW_TAG_loop_range
	.dwattr DW$242, DW_AT_low_pc(DW$L$_FineCurveCal$21$B)
	.dwattr DW$242, DW_AT_high_pc(DW$L$_FineCurveCal$21$E)
	.dwendtag DW$238


DW$243	.dwtag  DW_TAG_loop
	.dwattr DW$243, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L96:1:1471518980")
	.dwattr DW$243, DW_AT_begin_file("mancal.c")
	.dwattr DW$243, DW_AT_begin_line(0x4ef)
	.dwattr DW$243, DW_AT_end_line(0x508)
DW$244	.dwtag  DW_TAG_loop_range
	.dwattr DW$244, DW_AT_low_pc(DW$L$_FineCurveCal$9$B)
	.dwattr DW$244, DW_AT_high_pc(DW$L$_FineCurveCal$9$E)
DW$245	.dwtag  DW_TAG_loop_range
	.dwattr DW$245, DW_AT_low_pc(DW$L$_FineCurveCal$11$B)
	.dwattr DW$245, DW_AT_high_pc(DW$L$_FineCurveCal$11$E)
DW$246	.dwtag  DW_TAG_loop_range
	.dwattr DW$246, DW_AT_low_pc(DW$L$_FineCurveCal$10$B)
	.dwattr DW$246, DW_AT_high_pc(DW$L$_FineCurveCal$10$E)
DW$247	.dwtag  DW_TAG_loop_range
	.dwattr DW$247, DW_AT_low_pc(DW$L$_FineCurveCal$12$B)
	.dwattr DW$247, DW_AT_high_pc(DW$L$_FineCurveCal$12$E)
DW$248	.dwtag  DW_TAG_loop_range
	.dwattr DW$248, DW_AT_low_pc(DW$L$_FineCurveCal$13$B)
	.dwattr DW$248, DW_AT_high_pc(DW$L$_FineCurveCal$13$E)
DW$249	.dwtag  DW_TAG_loop_range
	.dwattr DW$249, DW_AT_low_pc(DW$L$_FineCurveCal$14$B)
	.dwattr DW$249, DW_AT_high_pc(DW$L$_FineCurveCal$14$E)
DW$250	.dwtag  DW_TAG_loop_range
	.dwattr DW$250, DW_AT_low_pc(DW$L$_FineCurveCal$15$B)
	.dwattr DW$250, DW_AT_high_pc(DW$L$_FineCurveCal$15$E)
	.dwendtag DW$243

	.dwattr DW$237, DW_AT_end_file("mancal.c")
	.dwattr DW$237, DW_AT_end_line(0x546)
	.dwattr DW$237, DW_AT_end_column(0x01)
	.dwendtag DW$237

	.sect	".text"
	.global	_MANCalAlarm

DW$251	.dwtag  DW_TAG_subprogram, DW_AT_name("MANCalAlarm"), DW_AT_symbol_name("_MANCalAlarm")
	.dwattr DW$251, DW_AT_low_pc(_MANCalAlarm)
	.dwattr DW$251, DW_AT_high_pc(0x00)
	.dwattr DW$251, DW_AT_begin_file("mancal.c")
	.dwattr DW$251, DW_AT_begin_line(0x54b)
	.dwattr DW$251, DW_AT_begin_column(0x06)
	.dwattr DW$251, DW_AT_frame_base[DW_OP_breg20 -34]
	.dwattr DW$251, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",1356,1

;***************************************************************
;* FNAME: _MANCalAlarm                  FR SIZE:  32           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 30 Auto,  2 SOE     *
;***************************************************************

_MANCalAlarm:
;* AL    assigned to _chan
DW$252	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$252, DW_AT_type(*DW$T$11)
	.dwattr DW$252, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _rpm
DW$253	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$253, DW_AT_type(*DW$T$10)
	.dwattr DW$253, DW_AT_location[DW_OP_reg1]
;* AR4   assigned to _val
DW$254	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$254, DW_AT_type(*DW$T$11)
	.dwattr DW$254, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _man1000input
DW$255	.dwtag  DW_TAG_formal_parameter, DW_AT_name("man1000input"), DW_AT_symbol_name("_man1000input")
	.dwattr DW$255, DW_AT_type(*DW$T$10)
	.dwattr DW$255, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        ADDB      SP,#30
        MOVZ      AR4,SP                ; |1361| 
        MOVZ      AR1,AL                ; |1356| 
        MOVB      XAR5,#0
        MOVB      ACC,#30
        SUBB      XAR4,#30              ; |1361| 
        LCR       #_memset              ; |1361| 
        ; call occurs [#_memset] ; |1361| 
        MOVB      AL,#224               ; |1364| 
        ADD       AL,AR1                ; |1364| 
        LCR       #_SetAlarmEvent       ; |1364| 
        ; call occurs [#_SetAlarmEvent] ; |1364| 
        MOV       AL,AR1                ; |1371| 
        LCR       #_GetStatus2Flags     ; |1371| 
        ; call occurs [#_GetStatus2Flags] ; |1371| 
        OR        *+XAR4[0],#0x0c00     ; |1372| 
        SUBB      SP,#30
        MOVL      XAR1,*--SP
	.dwpsn	"mancal.c",1374,1
        LRETR
        ; return occurs
	.dwattr DW$251, DW_AT_end_file("mancal.c")
	.dwattr DW$251, DW_AT_end_line(0x55e)
	.dwattr DW$251, DW_AT_end_column(0x01)
	.dwendtag DW$251

	.sect	".text"
	.global	_ClearCalAveragingAlarm

DW$256	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearCalAveragingAlarm"), DW_AT_symbol_name("_ClearCalAveragingAlarm")
	.dwattr DW$256, DW_AT_low_pc(_ClearCalAveragingAlarm)
	.dwattr DW$256, DW_AT_high_pc(0x00)
	.dwattr DW$256, DW_AT_begin_file("mancal.c")
	.dwattr DW$256, DW_AT_begin_line(0x562)
	.dwattr DW$256, DW_AT_begin_column(0x06)
	.dwattr DW$256, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$256, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",1379,1

;***************************************************************
;* FNAME: _ClearCalAveragingAlarm       FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_ClearCalAveragingAlarm:
        MOVL      *SP++,XAR1
	.dwpsn	"mancal.c",1381,0
        MOVB      XAR1,#0
L106:    
DW$L$_ClearCalAveragingAlarm$2$B:
	.dwpsn	"mancal.c",1382,0
        MOVB      AL,#224               ; |1383| 
        ADD       AL,AR1                ; |1383| 
        LCR       #_ClearAlarmEvent     ; |1383| 
        ; call occurs [#_ClearAlarmEvent] ; |1383| 
        MOV       AL,AR1                ; |1383| 
        ADDB      AL,#1                 ; |1381| 
        MOVZ      AR1,AL                ; |1381| 
        CMPB      AL,#28                ; |1381| 
	.dwpsn	"mancal.c",1384,0
        BF        L106,LT               ; |1381| 
        ; branchcc occurs ; |1381| 
DW$L$_ClearCalAveragingAlarm$2$E:
        MOVL      XAR1,*--SP
	.dwpsn	"mancal.c",1385,1
        LRETR
        ; return occurs

DW$257	.dwtag  DW_TAG_loop
	.dwattr DW$257, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L106:1:1471518980")
	.dwattr DW$257, DW_AT_begin_file("mancal.c")
	.dwattr DW$257, DW_AT_begin_line(0x565)
	.dwattr DW$257, DW_AT_end_line(0x568)
DW$258	.dwtag  DW_TAG_loop_range
	.dwattr DW$258, DW_AT_low_pc(DW$L$_ClearCalAveragingAlarm$2$B)
	.dwattr DW$258, DW_AT_high_pc(DW$L$_ClearCalAveragingAlarm$2$E)
	.dwendtag DW$257

	.dwattr DW$256, DW_AT_end_file("mancal.c")
	.dwattr DW$256, DW_AT_end_line(0x569)
	.dwattr DW$256, DW_AT_end_column(0x01)
	.dwendtag DW$256

	.sect	".text"
	.global	_ClearCalibrationAlarms

DW$259	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearCalibrationAlarms"), DW_AT_symbol_name("_ClearCalibrationAlarms")
	.dwattr DW$259, DW_AT_low_pc(_ClearCalibrationAlarms)
	.dwattr DW$259, DW_AT_high_pc(0x00)
	.dwattr DW$259, DW_AT_begin_file("mancal.c")
	.dwattr DW$259, DW_AT_begin_line(0x56c)
	.dwattr DW$259, DW_AT_begin_column(0x06)
	.dwattr DW$259, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$259, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",1389,1

;***************************************************************
;* FNAME: _ClearCalibrationAlarms       FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_ClearCalibrationAlarms:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
	.dwpsn	"mancal.c",1392,0
        MOVB      XAR2,#0
L107:    
DW$L$_ClearCalibrationAlarms$2$B:
	.dwpsn	"mancal.c",1393,0
        MOV       AL,AR2                ; |1394| 
        LCR       #_GetStatus2Flags     ; |1394| 
        ; call occurs [#_GetStatus2Flags] ; |1394| 
        MOVL      XAR1,XAR4             ; |1394| 
        AND       *+XAR1[0],#0xf3ff     ; |1395| 
        MOVB      AL,#196               ; |1397| 
        ADD       AL,AR2                ; |1397| 
        LCR       #_ClearAlarmEvent     ; |1397| 
        ; call occurs [#_ClearAlarmEvent] ; |1397| 
        MOV       AL,#14305             ; |1400| 
        ADD       AL,AR2                ; |1400| 
        AND       *+XAR1[0],#0xcfff     ; |1398| 
        MOV       ACC,AL << #1          ; |1400| 
        MOV       AH,AL                 ; |1400| 
        MOVL      XAR4,XAR1             ; |1400| 
        MOVB      XAR5,#1               ; |1400| 
        MOVB      AL,#0
        LCR       #_WriteNVMemory       ; |1400| 
        ; call occurs [#_WriteNVMemory] ; |1400| 
        ADDB      XAR2,#1               ; |1392| 
        MOV       AL,AR2                ; |1392| 
        CMPB      AL,#28                ; |1392| 
	.dwpsn	"mancal.c",1401,0
        BF        L107,LO               ; |1392| 
        ; branchcc occurs ; |1392| 
DW$L$_ClearCalibrationAlarms$2$E:
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"mancal.c",1403,1
        LRETR
        ; return occurs

DW$260	.dwtag  DW_TAG_loop
	.dwattr DW$260, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L107:1:1471518980")
	.dwattr DW$260, DW_AT_begin_file("mancal.c")
	.dwattr DW$260, DW_AT_begin_line(0x570)
	.dwattr DW$260, DW_AT_end_line(0x579)
DW$261	.dwtag  DW_TAG_loop_range
	.dwattr DW$261, DW_AT_low_pc(DW$L$_ClearCalibrationAlarms$2$B)
	.dwattr DW$261, DW_AT_high_pc(DW$L$_ClearCalibrationAlarms$2$E)
	.dwendtag DW$260

	.dwattr DW$259, DW_AT_end_file("mancal.c")
	.dwattr DW$259, DW_AT_end_line(0x57b)
	.dwattr DW$259, DW_AT_end_column(0x01)
	.dwendtag DW$259

	.sect	".text"
	.global	_FineCurveCalInterpolation

DW$262	.dwtag  DW_TAG_subprogram, DW_AT_name("FineCurveCalInterpolation"), DW_AT_symbol_name("_FineCurveCalInterpolation")
	.dwattr DW$262, DW_AT_low_pc(_FineCurveCalInterpolation)
	.dwattr DW$262, DW_AT_high_pc(0x00)
	.dwattr DW$262, DW_AT_begin_file("mancal.c")
	.dwattr DW$262, DW_AT_begin_line(0x581)
	.dwattr DW$262, DW_AT_begin_column(0x06)
	.dwattr DW$262, DW_AT_frame_base[DW_OP_breg20 -28]
	.dwattr DW$262, DW_AT_skeletal(0x01)
	.dwpsn	"mancal.c",1410,1

;***************************************************************
;* FNAME: _FineCurveCalInterpolation    FR SIZE:  26           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                           10 Parameter, 10 Auto,  6 SOE     *
;***************************************************************

_FineCurveCalInterpolation:
;* AL    assigned to _numsamples
DW$263	.dwtag  DW_TAG_formal_parameter, DW_AT_name("numsamples"), DW_AT_symbol_name("_numsamples")
	.dwattr DW$263, DW_AT_type(*DW$T$11)
	.dwattr DW$263, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOVB      XAR1,#0
        ADDB      SP,#20
        MOVB      XAR6,#0
        MOVW      DP,#_calibration
        MOV       AH,@_calibration      ; |1431| 
        MOV       *-SP[11],AL           ; |1410| 
        BF        L110,EQ               ; |1431| 
        ; branchcc occurs ; |1431| 
L108:    
DW$L$_FineCurveCalInterpolation$2$B:
	.dwpsn	"mancal.c",1432,0
        MOVU      ACC,AR1
        MOVL      XAR4,#_calibration+14 ; |1433| 
        LSL       ACC,1                 ; |1433| 
        ADDL      XAR4,ACC
        MOV       AL,*-SP[11]           ; |1433| 
        MOVU      ACC,AL
        CMPL      ACC,*+XAR4[0]         ; |1433| 
        BF        L109,HI               ; |1433| 
        ; branchcc occurs ; |1433| 
DW$L$_FineCurveCalInterpolation$2$E:
DW$L$_FineCurveCalInterpolation$3$B:
        MOV       AL,AR6
        ADDB      AL,#1                 ; |1435| 
        MOVZ      AR6,AL                ; |1435| 
DW$L$_FineCurveCalInterpolation$3$E:
L109:    
DW$L$_FineCurveCalInterpolation$4$B:
        ADDB      XAR1,#1               ; |1431| 
        MOVW      DP,#_calibration
        MOV       AH,AR1                ; |1431| 
        CMP       AH,@_calibration      ; |1431| 
	.dwpsn	"mancal.c",1437,0
        BF        L108,LO               ; |1431| 
        ; branchcc occurs ; |1431| 
DW$L$_FineCurveCalInterpolation$4$E:
L110:    
        MOVB      AH,#0
        MOVW      DP,#_function+6
        MOV       AL,@_function+6       ; |1439| 
        BF        L111,NEQ              ; |1439| 
        ; branchcc occurs ; |1439| 
        MOV       AL,AR6
        CMPB      AL,#2                 ; |1439| 
        BF        L112,GEQ              ; |1439| 
        ; branchcc occurs ; |1439| 
L111:    
        MOVW      DP,#_function+6
        MOV       AL,@_function+6       ; |1439| 
        CMPB      AL,#1                 ; |1439| 
        BF        L112,EQ               ; |1439| 
        ; branchcc occurs ; |1439| 
        CMPB      AH,#1                 ; |1439| 
        BF        L136,NEQ              ; |1439| 
        ; branchcc occurs ; |1439| 
L112:    
        MOVW      DP,#_calibration
        MOVB      XAR1,#0
        MOV       AL,@_calibration      ; |1443| 
        BF        L120,EQ               ; |1443| 
        ; branchcc occurs ; |1443| 
L113:    
DW$L$_FineCurveCalInterpolation$10$B:
	.dwpsn	"mancal.c",1444,0
        MOV       AL,AR1                ; |1446| 
        LCR       #_ReadAccCalNVMEM     ; |1446| 
        ; call occurs [#_ReadAccCalNVMEM] ; |1446| 
        MOVB      XAR2,#0
        MOVW      DP,#_allsensors
        MOV       AL,@_allsensors       ; |1447| 
        BF        L119,EQ               ; |1447| 
        ; branchcc occurs ; |1447| 
DW$L$_FineCurveCalInterpolation$10$E:
L114:    
DW$L$_FineCurveCalInterpolation$11$B:
	.dwpsn	"mancal.c",1448,0
        MOV       T,#18                 ; |1449| 
        MOVL      XAR4,#_sensor         ; |1449| 
        MPYXU     ACC,T,AR2             ; |1449| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |1449| 
        AND       AH,AL,#0x0001         ; |1449| 
        BF        L118,EQ               ; |1449| 
        ; branchcc occurs ; |1449| 
DW$L$_FineCurveCalInterpolation$11$E:
DW$L$_FineCurveCalInterpolation$12$B:
        ANDB      AL,#2                 ; |1449| 
        BF        L118,EQ               ; |1449| 
        ; branchcc occurs ; |1449| 
DW$L$_FineCurveCalInterpolation$12$E:
DW$L$_FineCurveCalInterpolation$13$B:
        MOVU      ACC,AR1
        MOVL      XAR3,#_calibration+14 ; |1451| 
        LSL       ACC,1                 ; |1451| 
        ADDL      XAR3,ACC
        MOV       AL,*-SP[11]           ; |1451| 
        MOVU      ACC,AL
        CMPL      ACC,*+XAR3[0]         ; |1451| 
        BF        L117,HI               ; |1451| 
        ; branchcc occurs ; |1451| 
DW$L$_FineCurveCalInterpolation$13$E:
DW$L$_FineCurveCalInterpolation$14$B:
        MOVU      ACC,AR2
        MOVL      XAR4,#_calibration+482 ; |1453| 
        LSL       ACC,1                 ; |1453| 
        ADDL      XAR4,ACC
        MOVL      ACC,*+XAR4[0]         ; |1453| 
        LCR       #L$$TOFS              ; |1453| 
        ; call occurs [#L$$TOFS] ; |1453| 
        MOVL      *-SP[16],ACC          ; |1453| 
        MOVL      ACC,*+XAR3[0]         ; |1453| 
        LCR       #UL$$TOFS             ; |1453| 
        ; call occurs [#UL$$TOFS] ; |1453| 
        MOVL      *-SP[2],ACC           ; |1453| 
        MOVL      ACC,*-SP[16]          ; |1453| 
        LCR       #FS$$DIV              ; |1453| 
        ; call occurs [#FS$$DIV] ; |1453| 
        MOVL      XAR3,ACC              ; |1453| 
        MOV       AL,AR1                ; |1454| 
        MOV       AH,AR2                ; |1454| 
        LCR       #_ReadMAN1000NVMEM    ; |1454| 
        ; call occurs [#_ReadMAN1000NVMEM] ; |1454| 
        CMPB      AL,#0                 ; |1454| 
        MOV       *-SP[12],AL           ; |1454| 
        BF        L115,NEQ              ; |1454| 
        ; branchcc occurs ; |1454| 
DW$L$_FineCurveCalInterpolation$14$E:
DW$L$_FineCurveCalInterpolation$15$B:
        MOVL      ACC,XAR3              ; |1458| 
        LCR       #_FloattoIntRound     ; |1458| 
        ; call occurs [#_FloattoIntRound] ; |1458| 
        MOV       *-SP[12],AL           ; |1458| 
        MOVZ      AR4,*-SP[12]          ; |1459| 
        MOV       AL,AR1                ; |1459| 
        MOV       AH,AR2                ; |1459| 
        LCR       #_WriteMAN1000NVMEM   ; |1459| 
        ; call occurs [#_WriteMAN1000NVMEM] ; |1459| 
DW$L$_FineCurveCalInterpolation$15$E:
L115:    
DW$L$_FineCurveCalInterpolation$16$B:
        MOVW      DP,#_sensorMoving
        MOV       AH,@_sensorMoving     ; |1464| 
        MOVL      XAR4,#_stringbuffer   ; |1464| 
        MOV       AL,*-SP[12]           ; |1464| 
        MOV       *-SP[13],AH           ; |1464| 
        MOVL      *-SP[16],XAR4         ; |1464| 
        SUB       AL,AH                 ; |1464| 
        LCR       #I$$TOFS              ; |1464| 
        ; call occurs [#I$$TOFS] ; |1464| 
        MOVL      *-SP[18],ACC          ; |1464| 
        MOV       AL,*-SP[12]           ; |1464| 
        ADD       AL,*-SP[13]           ; |1464| 
        LCR       #I$$TOFS              ; |1464| 
        ; call occurs [#I$$TOFS] ; |1464| 
        MOVL      XAR4,#FSL1            ; |1464| 
        MOVL      *-SP[2],XAR4          ; |1464| 
        MOVL      *-SP[4],XAR3          ; |1464| 
        MOVZ      AR6,*-SP[13]          ; |1464| 
        MOV       *-SP[5],AR6           ; |1464| 
        MOVZ      AR6,*-SP[12]          ; |1464| 
        MOV       *-SP[6],AR6           ; |1464| 
        MOVL      XAR6,*-SP[18]         ; |1464| 
        MOVL      *-SP[8],XAR6          ; |1464| 
        MOVL      *-SP[10],ACC          ; |1464| 
        MOVL      XAR4,*-SP[16]         ; |1464| 
        LCR       #_sprintf             ; |1464| 
        ; call occurs [#_sprintf] ; |1464| 
        MOVL      XAR4,*-SP[16]         ; |1464| 
        LCR       #_DebugStringOut      ; |1464| 
        ; call occurs [#_DebugStringOut] ; |1464| 
        MOVW      DP,#_sensorMoving
        MOV       AH,@_sensorMoving     ; |1466| 
        MOV       AL,*-SP[12]           ; |1466| 
        MOV       *-SP[13],AH           ; |1466| 
        ADD       AL,AH                 ; |1466| 
        LCR       #I$$TOFS              ; |1466| 
        ; call occurs [#I$$TOFS] ; |1466| 
        MOVL      *-SP[2],ACC           ; |1466| 
        MOVL      ACC,XAR3              ; |1466| 
        LCR       #FS$$CMP              ; |1466| 
        ; call occurs [#FS$$CMP] ; |1466| 
        CMPB      AL,#0                 ; |1466| 
        BF        L116,GEQ              ; |1466| 
        ; branchcc occurs ; |1466| 
DW$L$_FineCurveCalInterpolation$16$E:
DW$L$_FineCurveCalInterpolation$17$B:
        MOV       AL,*-SP[12]
        SUB       AL,*-SP[13]           ; |1466| 
        LCR       #I$$TOFS              ; |1466| 
        ; call occurs [#I$$TOFS] ; |1466| 
        MOVL      *-SP[2],ACC           ; |1466| 
        MOVL      ACC,XAR3              ; |1466| 
        LCR       #FS$$CMP              ; |1466| 
        ; call occurs [#FS$$CMP] ; |1466| 
        CMPB      AL,#0                 ; |1466| 
        BF        L116,LEQ              ; |1466| 
        ; branchcc occurs ; |1466| 
DW$L$_FineCurveCalInterpolation$17$E:
DW$L$_FineCurveCalInterpolation$18$B:
        MOVL      ACC,XAR3              ; |1468| 
        LCR       #_FloattoIntRound     ; |1468| 
        ; call occurs [#_FloattoIntRound] ; |1468| 
        MOVZ      AR6,AL                ; |1468| 
        MOV       T,#28                 ; |1468| 
        MOV       AL,AR1                ; |1468| 
        MPYXU     ACC,T,AL              ; |1468| 
        MOVL      XAR4,#_man_comptable  ; |1468| 
        ADDU      ACC,AR2               ; |1468| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],AR6         ; |1468| 
        BF        L118,UNC              ; |1469| 
        ; branch occurs ; |1469| 
DW$L$_FineCurveCalInterpolation$18$E:
L116:    
DW$L$_FineCurveCalInterpolation$19$B:
        MOVL      ACC,XAR3              ; |1473| 
        LCR       #FS$$TOI              ; |1473| 
        ; call occurs [#FS$$TOI] ; |1473| 
        MOV       AL,AR2                ; |1473| 
        LCR       #_MANCalAlarm         ; |1473| 
        ; call occurs [#_MANCalAlarm] ; |1473| 
        BF        L118,UNC              ; |1473| 
        ; branch occurs ; |1473| 
DW$L$_FineCurveCalInterpolation$19$E:
L117:    
DW$L$_FineCurveCalInterpolation$20$B:
        MOV       AL,AR1                ; |1476| 
        MOV       T,#28                 ; |1476| 
        MOVL      XAR4,#_man_comptable  ; |1476| 
        MPYXU     ACC,T,AL              ; |1476| 
        ADDU      ACC,AR2               ; |1476| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#32767      ; |1476| 
DW$L$_FineCurveCalInterpolation$20$E:
L118:    
DW$L$_FineCurveCalInterpolation$21$B:
        ADDB      XAR2,#1               ; |1447| 
        MOVW      DP,#_allsensors
        MOV       AL,AR2                ; |1447| 
        CMP       AL,@_allsensors       ; |1447| 
	.dwpsn	"mancal.c",1478,0
        BF        L114,LO               ; |1447| 
        ; branchcc occurs ; |1447| 
DW$L$_FineCurveCalInterpolation$21$E:
L119:    
DW$L$_FineCurveCalInterpolation$22$B:
        ADDB      XAR1,#1               ; |1443| 
        MOVW      DP,#_calibration
        MOV       AL,AR1                ; |1443| 
        CMP       AL,@_calibration      ; |1443| 
	.dwpsn	"mancal.c",1479,0
        BF        L113,LO               ; |1443| 
        ; branchcc occurs ; |1443| 
DW$L$_FineCurveCalInterpolation$22$E:
L120:    
        MOVW      DP,#_sdsettings+1
        INC       @_sdsettings+1        ; |1481| 
        MOVL      XAR4,#_sdcarddir+18   ; |1481| 
        MOVW      DP,#_sdsettings+1
        MOV       AL,@_sdsettings+1     ; |1481| 
        ADDB      AL,#-1
        LCR       #_MANCompTabletoSDCardFile ; |1481| 
        ; call occurs [#_MANCompTabletoSDCardFile] ; |1481| 
        MOVW      DP,#_function+6
        MOV       AL,@_function+6       ; |1482| 
        CMPB      AL,#1                 ; |1482| 
        BF        L121,NEQ              ; |1482| 
        ; branchcc occurs ; |1482| 
        MOV       AL,*-SP[11]
        LCR       #_CheckRoughCalPoints ; |1482| 
        ; call occurs [#_CheckRoughCalPoints] ; |1482| 
L121:    
        MOVW      DP,#_sdsettings+1
        INC       @_sdsettings+1        ; |1483| 
        MOVL      XAR4,#_sdcarddir+18   ; |1483| 
        MOVW      DP,#_sdsettings+1
        MOV       AL,@_sdsettings+1     ; |1483| 
        ADDB      AL,#-1
        LCR       #_MANCompTabletoSDCardFile ; |1483| 
        ; call occurs [#_MANCompTabletoSDCardFile] ; |1483| 
        MOVW      DP,#_allsensors
        MOV       AL,@_allsensors       ; |1486| 
        MOVB      XAR2,#0
        BF        L136,EQ               ; |1486| 
        ; branchcc occurs ; |1486| 
L122:    
DW$L$_FineCurveCalInterpolation$26$B:
	.dwpsn	"mancal.c",1487,0
        MOV       T,#18                 ; |1488| 
        MOVL      XAR4,#_sensor         ; |1488| 
        MPYXU     ACC,T,AR2             ; |1488| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |1488| 
        AND       AH,AL,#0x0001         ; |1488| 
        BF        L135,EQ               ; |1488| 
        ; branchcc occurs ; |1488| 
DW$L$_FineCurveCalInterpolation$26$E:
DW$L$_FineCurveCalInterpolation$27$B:
        ANDB      AL,#2                 ; |1488| 
        BF        L135,EQ               ; |1488| 
        ; branchcc occurs ; |1488| 
DW$L$_FineCurveCalInterpolation$27$E:
DW$L$_FineCurveCalInterpolation$28$B:
        MOVW      DP,#_calibration
        MOVB      XAR1,#0
        MOV       AL,@_calibration      ; |1491| 
        BF        L135,EQ               ; |1491| 
        ; branchcc occurs ; |1491| 
DW$L$_FineCurveCalInterpolation$28$E:
L123:    
DW$L$_FineCurveCalInterpolation$29$B:
	.dwpsn	"mancal.c",1492,0
        MOVL      XAR4,#_man_comptable  ; |1495| 
        MOV       AL,AR1                ; |1495| 
        MOVL      XAR5,XAR4             ; |1495| 
        MOV       T,#28                 ; |1495| 
        MPYXU     ACC,T,AL              ; |1495| 
        ADDU      ACC,AR2               ; |1495| 
        ADDL      XAR5,ACC
        MOVB      XAR6,#0
        MOV       *-SP[13],#0           ; |1494| 
        CMP       *+XAR5[0],#32767      ; |1495| 
        BF        L134,NEQ              ; |1495| 
        ; branchcc occurs ; |1495| 
DW$L$_FineCurveCalInterpolation$29$E:
DW$L$_FineCurveCalInterpolation$30$B:
        MOV       AL,AR1                ; |1498| 
        MOVW      DP,#_calibration
        MOVB      XAR3,#0
        SUB       AL,@_calibration      ; |1498| 
        CMP       AL,#65535             ; |1498| 
        BF        L126,EQ               ; |1498| 
        ; branchcc occurs ; |1498| 
DW$L$_FineCurveCalInterpolation$30$E:
DW$L$_FineCurveCalInterpolation$31$B:
        MOVB      AL,#1                 ; |1501| 
        MOV       T,#28                 ; |1501| 
        ADD       AL,AR1                ; |1501| 
        MPYXU     ACC,T,AL              ; |1501| 
        ADDU      ACC,AR2               ; |1501| 
        ADDL      XAR4,ACC
        MOVB      XAR3,#1               ; |1500| 
        CMP       *+XAR4[0],#32767      ; |1501| 
        BF        L125,NEQ              ; |1501| 
        ; branchcc occurs ; |1501| 
DW$L$_FineCurveCalInterpolation$31$E:
L124:    
DW$L$_FineCurveCalInterpolation$32$B:
	.dwpsn	"mancal.c",1501,0
        MOV       AL,AR3                ; |1501| 
        MOVW      DP,#_calibration
        ADD       AL,AR1                ; |1501| 
        SUB       AL,@_calibration      ; |1501| 
        CMP       AL,#65535             ; |1501| 
        BF        L125,EQ               ; |1501| 
        ; branchcc occurs ; |1501| 
DW$L$_FineCurveCalInterpolation$32$E:
DW$L$_FineCurveCalInterpolation$33$B:
        ADDB      XAR3,#1               ; |1501| 
        MOV       T,#28                 ; |1501| 
        MOV       AL,AR3                ; |1501| 
        MOVL      XAR4,#_man_comptable  ; |1501| 
        ADD       AL,AR1                ; |1501| 
        MPYXU     ACC,T,AL              ; |1501| 
        ADDU      ACC,AR2               ; |1501| 
        ADDL      XAR4,ACC
        CMP       *+XAR4[0],#32767      ; |1501| 
        BF        L124,EQ               ; |1501| 
        ; branchcc occurs ; |1501| 
DW$L$_FineCurveCalInterpolation$33$E:
L125:    
DW$L$_FineCurveCalInterpolation$34$B:
        MOV       AL,AR3                ; |1502| 
        MOV       T,#28                 ; |1502| 
        ADD       AL,AR1                ; |1502| 
        MOVL      XAR4,#_man_comptable  ; |1502| 
        MPYXU     ACC,T,AL              ; |1502| 
        ADDU      ACC,AR2               ; |1502| 
        ADDL      XAR4,ACC
        CMP       *+XAR4[0],#32767      ; |1502| 
        BF        L126,NEQ              ; |1502| 
        ; branchcc occurs ; |1502| 
DW$L$_FineCurveCalInterpolation$34$E:
DW$L$_FineCurveCalInterpolation$35$B:
        MOVB      XAR6,#1               ; |1502| 
DW$L$_FineCurveCalInterpolation$35$E:
L126:    
DW$L$_FineCurveCalInterpolation$36$B:
        MOV       AL,AR1
        BF        L129,NEQ              ; |1505| 
        ; branchcc occurs ; |1505| 
DW$L$_FineCurveCalInterpolation$36$E:
DW$L$_FineCurveCalInterpolation$37$B:
        MOVB      AL,#1                 ; |1509| 
        MOV       T,#28                 ; |1509| 
        ADD       AL,AR3                ; |1509| 
        MOVL      XAR4,#_man_comptable  ; |1509| 
        MPYXU     ACC,T,AL              ; |1509| 
        ADDU      ACC,AR2               ; |1509| 
        ADDL      XAR4,ACC
        MOVB      XAR5,#1               ; |1508| 
        CMP       *+XAR4[0],#32767      ; |1509| 
        BF        L128,NEQ              ; |1509| 
        ; branchcc occurs ; |1509| 
DW$L$_FineCurveCalInterpolation$37$E:
L127:    
DW$L$_FineCurveCalInterpolation$38$B:
	.dwpsn	"mancal.c",1509,0
        MOV       AL,AR5                ; |1509| 
        MOVW      DP,#_calibration
        ADD       AL,AR3                ; |1509| 
        SUB       AL,@_calibration      ; |1509| 
        CMP       AL,#65535             ; |1509| 
        BF        L128,EQ               ; |1509| 
        ; branchcc occurs ; |1509| 
DW$L$_FineCurveCalInterpolation$38$E:
DW$L$_FineCurveCalInterpolation$39$B:
        ADDB      XAR5,#1               ; |1509| 
        MOV       T,#28                 ; |1509| 
        MOV       AL,AR5                ; |1509| 
        MOVL      XAR4,#_man_comptable  ; |1509| 
        ADD       AL,AR3                ; |1509| 
        MPYXU     ACC,T,AL              ; |1509| 
        ADDU      ACC,AR2               ; |1509| 
        ADDL      XAR4,ACC
        CMP       *+XAR4[0],#32767      ; |1509| 
        BF        L127,EQ               ; |1509| 
        ; branchcc occurs ; |1509| 
DW$L$_FineCurveCalInterpolation$39$E:
L128:    
DW$L$_FineCurveCalInterpolation$40$B:
        MOV       AL,AR5                ; |1511| 
        MOV       *-SP[13],#0           ; |1513| 
        MOV       *-SP[12],AR5          ; |1512| 
        MOV       *-SP[14],AR3          ; |1510| 
        ADD       AL,AR3                ; |1511| 
        MOV       *-SP[11],AL           ; |1511| 
        MOV       AL,AR2                ; |1513| 
        BF        L132,NEQ              ; |1514| 
        ; branchcc occurs ; |1514| 
DW$L$_FineCurveCalInterpolation$40$E:
DW$L$_FineCurveCalInterpolation$41$B:
        MOVL      XAR4,#_stringbuffer   ; |1516| 
        MOVL      *-SP[16],XAR4         ; |1516| 
        MOVL      XAR4,#FSL2            ; |1516| 
        MOVL      *-SP[2],XAR4          ; |1516| 
        MOV       *-SP[3],AR3           ; |1516| 
        MOV       AL,*-SP[11]           ; |1516| 
        MOV       *-SP[4],AL            ; |1516| 
        MOV       *-SP[5],AR5           ; |1516| 
        MOVL      XAR4,*-SP[16]         ; |1516| 
        LCR       #_sprintf             ; |1516| 
        ; call occurs [#_sprintf] ; |1516| 
        MOVL      XAR4,*-SP[16]         ; |1516| 
        LCR       #_DebugStringOut      ; |1517| 
        ; call occurs [#_DebugStringOut] ; |1517| 
        BF        L132,UNC              ; |1517| 
        ; branch occurs ; |1517| 
DW$L$_FineCurveCalInterpolation$41$E:
L129:    
DW$L$_FineCurveCalInterpolation$42$B:
        MOV       AL,AR6
        CMPB      AL,#1                 ; |1520| 
        BF        L130,EQ               ; |1520| 
        ; branchcc occurs ; |1520| 
DW$L$_FineCurveCalInterpolation$42$E:
DW$L$_FineCurveCalInterpolation$43$B:
        MOVL      XAR4,#_man_comptable  ; |1534| 
        MOV       AL,AR1                ; |1534| 
        MOV       T,#28                 ; |1534| 
        MOVL      XAR5,XAR4             ; |1534| 
        ADDB      AL,#-1
        MPYXU     ACC,T,AL              ; |1534| 
        ADDU      ACC,AR2               ; |1534| 
        ADDL      XAR5,ACC
        CMP       *+XAR5[0],#32767      ; |1534| 
        BF        L132,EQ               ; |1534| 
        ; branchcc occurs ; |1534| 
DW$L$_FineCurveCalInterpolation$43$E:
DW$L$_FineCurveCalInterpolation$44$B:
        MOV       AL,AR3                ; |1534| 
        MOV       T,#28                 ; |1534| 
        MOVL      XAR5,XAR4             ; |1534| 
        ADD       AL,AR1                ; |1534| 
        MPYXU     ACC,T,AL              ; |1534| 
        ADDU      ACC,AR2               ; |1534| 
        ADDL      XAR5,ACC
        CMP       *+XAR5[0],#32767      ; |1534| 
        BF        L132,EQ               ; |1534| 
        ; branchcc occurs ; |1534| 
DW$L$_FineCurveCalInterpolation$44$E:
DW$L$_FineCurveCalInterpolation$45$B:
        MOV       AL,AR1                ; |1536| 
        ADDB      AL,#-1
        MOV       AH,AL                 ; |1536| 
        MOV       *-SP[14],AL           ; |1536| 
        MOV       AL,AR3                ; |1537| 
        ADD       AL,AR1                ; |1537| 
        MOVZ      AR1,AH                ; |1538| 
        MOV       *-SP[11],AL           ; |1537| 
        MOVB      AL,#1                 ; |1538| 
        ADD       AL,AR3                ; |1538| 
        MOV       T,AR1                 ; |1539| 
        MOV       *-SP[12],AL           ; |1538| 
        MOVZ      AR3,AL                ; |1538| 
        BF        L131,UNC              ; |1542| 
        ; branch occurs ; |1542| 
DW$L$_FineCurveCalInterpolation$45$E:
L130:    
DW$L$_FineCurveCalInterpolation$46$B:
        MOV       AL,AR1                ; |1524| 
        ADDB      AL,#-2
        MOVL      XAR4,#_man_comptable  ; |1529| 
        ADDB      XAR3,#2               ; |1527| 
        MOV       *-SP[14],AL           ; |1524| 
        MOV       *-SP[12],#1           ; |1526| 
        MOV       AL,AR1                ; |1525| 
        ADDB      AL,#-1
        MOV       *-SP[11],AL           ; |1525| 
        MOVZ      AR1,AL                ; |1528| 
        MOV       T,AL                  ; |1529| 
DW$L$_FineCurveCalInterpolation$46$E:
L131:    
DW$L$_FineCurveCalInterpolation$47$B:
        MPYB      ACC,T,#28             ; |1529| 
        ADDU      ACC,AR2               ; |1529| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |1529| 
        LCR       #I$$TOFS              ; |1529| 
        ; call occurs [#I$$TOFS] ; |1529| 
        MOV       *-SP[13],#1           ; |1530| 
        MOVL      *-SP[20],ACC          ; |1529| 
DW$L$_FineCurveCalInterpolation$47$E:
L132:    
DW$L$_FineCurveCalInterpolation$48$B:
        MOV       T,*-SP[14]            ; |1547| 
        MOVL      XAR4,#_man_comptable  ; |1547| 
        MPYB      ACC,T,#28             ; |1547| 
        MOVL      *-SP[18],XAR4         ; |1547| 
        ADDU      ACC,AR2               ; |1547| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |1547| 
        LCR       #I$$TOFS              ; |1547| 
        ; call occurs [#I$$TOFS] ; |1547| 
        MOV       T,*-SP[11]            ; |1547| 
        MOVL      XAR4,*-SP[18]         ; |1547| 
        MOVL      *-SP[16],ACC          ; |1547| 
        MPYB      ACC,T,#28             ; |1547| 
        ADDU      ACC,AR2               ; |1547| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |1547| 
        LCR       #I$$TOFS              ; |1547| 
        ; call occurs [#I$$TOFS] ; |1547| 
        MOVL      XAR6,*-SP[16]         ; |1547| 
        MOVL      *-SP[2],XAR6          ; |1547| 
        LCR       #FS$$SUB              ; |1547| 
        ; call occurs [#FS$$SUB] ; |1547| 
        MOVL      *-SP[18],ACC          ; |1547| 
        MOV       AL,*-SP[12]           ; |1547| 
        LCR       #I$$TOFS              ; |1548| 
        ; call occurs [#I$$TOFS] ; |1548| 
        MOVL      *-SP[2],ACC           ; |1548| 
        MOVL      ACC,*-SP[18]          ; |1548| 
        LCR       #FS$$DIV              ; |1548| 
        ; call occurs [#FS$$DIV] ; |1548| 
        MOVL      *-SP[18],ACC          ; |1548| 
        MOV       AL,*-SP[13]           ; |1548| 
        BF        L133,NEQ              ; |1549| 
        ; branchcc occurs ; |1549| 
DW$L$_FineCurveCalInterpolation$48$E:
DW$L$_FineCurveCalInterpolation$49$B:
        MOV       AL,AR3                ; |1549| 
        LCR       #U$$TOFS              ; |1549| 
        ; call occurs [#U$$TOFS] ; |1549| 
        MOVL      XAR6,*-SP[18]         ; |1549| 
        MOVL      *-SP[2],XAR6          ; |1549| 
        LCR       #FS$$MPY              ; |1549| 
        ; call occurs [#FS$$MPY] ; |1549| 
        MOVL      *-SP[2],ACC           ; |1549| 
        MOVL      ACC,*-SP[16]          ; |1549| 
        LCR       #FS$$SUB              ; |1549| 
        ; call occurs [#FS$$SUB] ; |1549| 
        MOVL      *-SP[20],ACC          ; |1549| 
DW$L$_FineCurveCalInterpolation$49$E:
L133:    
DW$L$_FineCurveCalInterpolation$50$B:
        MOV       *-SP[1],AR3           ; |1551| 
        MOVZ      AR5,AR1               ; |1551| 
        MOVL      ACC,*-SP[18]          ; |1551| 
        MOVZ      AR4,AR2               ; |1551| 
        MOVL      *-SP[4],ACC           ; |1551| 
        MOVL      ACC,*-SP[20]          ; |1551| 
        LCR       #_Interpolate         ; |1551| 
        ; call occurs [#_Interpolate] ; |1551| 
        MOV       AL,AR1                ; |1552| 
        ADD       AL,AR3                ; |1552| 
        ADDB      AL,#-1
        MOVZ      AR1,AL                ; |1552| 
DW$L$_FineCurveCalInterpolation$50$E:
L134:    
DW$L$_FineCurveCalInterpolation$51$B:
        MOVW      DP,#_settings
        ADDB      XAR1,#1               ; |1555| 
        MOV       @_settings,#1         ; |1555| 
        MOV       AL,AR1                ; |1555| 
        MOVW      DP,#_calibration
        CMP       AL,@_calibration      ; |1555| 
	.dwpsn	"mancal.c",1556,0
        BF        L123,LO               ; |1555| 
        ; branchcc occurs ; |1555| 
DW$L$_FineCurveCalInterpolation$51$E:
L135:    
DW$L$_FineCurveCalInterpolation$52$B:
        ADDB      XAR2,#1               ; |1486| 
        MOVW      DP,#_allsensors
        MOV       AL,AR2                ; |1486| 
        CMP       AL,@_allsensors       ; |1486| 
	.dwpsn	"mancal.c",1558,0
        BF        L122,LO               ; |1486| 
        ; branchcc occurs ; |1486| 
DW$L$_FineCurveCalInterpolation$52$E:
L136:    
        SUBB      SP,#20
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"mancal.c",1560,1
        LRETR
        ; return occurs

DW$264	.dwtag  DW_TAG_loop
	.dwattr DW$264, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L122:1:1471518980")
	.dwattr DW$264, DW_AT_begin_file("mancal.c")
	.dwattr DW$264, DW_AT_begin_line(0x5ce)
	.dwattr DW$264, DW_AT_end_line(0x616)
DW$265	.dwtag  DW_TAG_loop_range
	.dwattr DW$265, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$26$B)
	.dwattr DW$265, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$26$E)
DW$266	.dwtag  DW_TAG_loop_range
	.dwattr DW$266, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$27$B)
	.dwattr DW$266, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$27$E)
DW$267	.dwtag  DW_TAG_loop_range
	.dwattr DW$267, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$28$B)
	.dwattr DW$267, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$28$E)
DW$268	.dwtag  DW_TAG_loop_range
	.dwattr DW$268, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$52$B)
	.dwattr DW$268, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$52$E)

DW$269	.dwtag  DW_TAG_loop
	.dwattr DW$269, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L123:2:1471518980")
	.dwattr DW$269, DW_AT_begin_file("mancal.c")
	.dwattr DW$269, DW_AT_begin_line(0x5d3)
	.dwattr DW$269, DW_AT_end_line(0x614)
DW$270	.dwtag  DW_TAG_loop_range
	.dwattr DW$270, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$29$B)
	.dwattr DW$270, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$29$E)
DW$271	.dwtag  DW_TAG_loop_range
	.dwattr DW$271, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$45$B)
	.dwattr DW$271, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$45$E)
DW$272	.dwtag  DW_TAG_loop_range
	.dwattr DW$272, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$46$B)
	.dwattr DW$272, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$46$E)
DW$273	.dwtag  DW_TAG_loop_range
	.dwattr DW$273, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$42$B)
	.dwattr DW$273, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$42$E)
DW$274	.dwtag  DW_TAG_loop_range
	.dwattr DW$274, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$31$B)
	.dwattr DW$274, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$31$E)
DW$275	.dwtag  DW_TAG_loop_range
	.dwattr DW$275, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$30$B)
	.dwattr DW$275, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$30$E)
DW$276	.dwtag  DW_TAG_loop_range
	.dwattr DW$276, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$34$B)
	.dwattr DW$276, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$34$E)
DW$277	.dwtag  DW_TAG_loop_range
	.dwattr DW$277, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$35$B)
	.dwattr DW$277, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$35$E)
DW$278	.dwtag  DW_TAG_loop_range
	.dwattr DW$278, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$36$B)
	.dwattr DW$278, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$36$E)
DW$279	.dwtag  DW_TAG_loop_range
	.dwattr DW$279, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$37$B)
	.dwattr DW$279, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$37$E)
DW$280	.dwtag  DW_TAG_loop_range
	.dwattr DW$280, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$40$B)
	.dwattr DW$280, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$40$E)
DW$281	.dwtag  DW_TAG_loop_range
	.dwattr DW$281, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$41$B)
	.dwattr DW$281, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$41$E)
DW$282	.dwtag  DW_TAG_loop_range
	.dwattr DW$282, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$43$B)
	.dwattr DW$282, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$43$E)
DW$283	.dwtag  DW_TAG_loop_range
	.dwattr DW$283, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$44$B)
	.dwattr DW$283, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$44$E)
DW$284	.dwtag  DW_TAG_loop_range
	.dwattr DW$284, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$47$B)
	.dwattr DW$284, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$47$E)
DW$285	.dwtag  DW_TAG_loop_range
	.dwattr DW$285, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$48$B)
	.dwattr DW$285, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$48$E)
DW$286	.dwtag  DW_TAG_loop_range
	.dwattr DW$286, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$49$B)
	.dwattr DW$286, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$49$E)
DW$287	.dwtag  DW_TAG_loop_range
	.dwattr DW$287, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$50$B)
	.dwattr DW$287, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$50$E)
DW$288	.dwtag  DW_TAG_loop_range
	.dwattr DW$288, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$51$B)
	.dwattr DW$288, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$51$E)

DW$289	.dwtag  DW_TAG_loop
	.dwattr DW$289, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L124:3:1471518980")
	.dwattr DW$289, DW_AT_begin_file("mancal.c")
	.dwattr DW$289, DW_AT_begin_line(0x5dd)
	.dwattr DW$289, DW_AT_end_line(0x5dd)
DW$290	.dwtag  DW_TAG_loop_range
	.dwattr DW$290, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$32$B)
	.dwattr DW$290, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$32$E)
DW$291	.dwtag  DW_TAG_loop_range
	.dwattr DW$291, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$33$B)
	.dwattr DW$291, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$33$E)
	.dwendtag DW$289


DW$292	.dwtag  DW_TAG_loop
	.dwattr DW$292, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L127:3:1471518980")
	.dwattr DW$292, DW_AT_begin_file("mancal.c")
	.dwattr DW$292, DW_AT_begin_line(0x5e5)
	.dwattr DW$292, DW_AT_end_line(0x5e5)
DW$293	.dwtag  DW_TAG_loop_range
	.dwattr DW$293, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$38$B)
	.dwattr DW$293, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$38$E)
DW$294	.dwtag  DW_TAG_loop_range
	.dwattr DW$294, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$39$B)
	.dwattr DW$294, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$39$E)
	.dwendtag DW$292

	.dwendtag DW$269

	.dwendtag DW$264


DW$295	.dwtag  DW_TAG_loop
	.dwattr DW$295, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L113:1:1471518980")
	.dwattr DW$295, DW_AT_begin_file("mancal.c")
	.dwattr DW$295, DW_AT_begin_line(0x5a3)
	.dwattr DW$295, DW_AT_end_line(0x5c7)
DW$296	.dwtag  DW_TAG_loop_range
	.dwattr DW$296, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$10$B)
	.dwattr DW$296, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$10$E)
DW$297	.dwtag  DW_TAG_loop_range
	.dwattr DW$297, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$22$B)
	.dwattr DW$297, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$22$E)

DW$298	.dwtag  DW_TAG_loop
	.dwattr DW$298, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L114:2:1471518980")
	.dwattr DW$298, DW_AT_begin_file("mancal.c")
	.dwattr DW$298, DW_AT_begin_line(0x5a7)
	.dwattr DW$298, DW_AT_end_line(0x5c6)
DW$299	.dwtag  DW_TAG_loop_range
	.dwattr DW$299, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$11$B)
	.dwattr DW$299, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$11$E)
DW$300	.dwtag  DW_TAG_loop_range
	.dwattr DW$300, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$13$B)
	.dwattr DW$300, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$13$E)
DW$301	.dwtag  DW_TAG_loop_range
	.dwattr DW$301, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$14$B)
	.dwattr DW$301, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$14$E)
DW$302	.dwtag  DW_TAG_loop_range
	.dwattr DW$302, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$15$B)
	.dwattr DW$302, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$15$E)
DW$303	.dwtag  DW_TAG_loop_range
	.dwattr DW$303, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$16$B)
	.dwattr DW$303, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$16$E)
DW$304	.dwtag  DW_TAG_loop_range
	.dwattr DW$304, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$17$B)
	.dwattr DW$304, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$17$E)
DW$305	.dwtag  DW_TAG_loop_range
	.dwattr DW$305, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$12$B)
	.dwattr DW$305, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$12$E)
DW$306	.dwtag  DW_TAG_loop_range
	.dwattr DW$306, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$18$B)
	.dwattr DW$306, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$18$E)
DW$307	.dwtag  DW_TAG_loop_range
	.dwattr DW$307, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$19$B)
	.dwattr DW$307, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$19$E)
DW$308	.dwtag  DW_TAG_loop_range
	.dwattr DW$308, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$20$B)
	.dwattr DW$308, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$20$E)
DW$309	.dwtag  DW_TAG_loop_range
	.dwattr DW$309, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$21$B)
	.dwattr DW$309, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$21$E)
	.dwendtag DW$298

	.dwendtag DW$295


DW$310	.dwtag  DW_TAG_loop
	.dwattr DW$310, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mancal.asm:L108:1:1471518980")
	.dwattr DW$310, DW_AT_begin_file("mancal.c")
	.dwattr DW$310, DW_AT_begin_line(0x597)
	.dwattr DW$310, DW_AT_end_line(0x59d)
DW$311	.dwtag  DW_TAG_loop_range
	.dwattr DW$311, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$2$B)
	.dwattr DW$311, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$2$E)
DW$312	.dwtag  DW_TAG_loop_range
	.dwattr DW$312, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$3$B)
	.dwattr DW$312, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$3$E)
DW$313	.dwtag  DW_TAG_loop_range
	.dwattr DW$313, DW_AT_low_pc(DW$L$_FineCurveCalInterpolation$4$B)
	.dwattr DW$313, DW_AT_high_pc(DW$L$_FineCurveCalInterpolation$4$E)
	.dwendtag DW$310

	.dwattr DW$262, DW_AT_end_file("mancal.c")
	.dwattr DW$262, DW_AT_end_line(0x618)
	.dwattr DW$262, DW_AT_end_column(0x01)
	.dwendtag DW$262

;***************************************************************
;* FAR STRINGS                                                 *
;***************************************************************
	.sect	".econst"
	.align	2
FSL1:	.string	13,10,"Avv: %f - reg: %d - man1000point:%d - low:%f - high:%"
	.string	"f ",13,10,0
	.align	2
FSL2:	.string	"k=0 l%d,u%d,num%d",13,10,0
;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_sprintf
	.global	_memset
	.global	_DebugStringOut
	.global	_WriteNVMemory
	.global	_ReadNVMemory
	.global	_SetupNormalModeAlarmLevels
	.global	_PreWarningInit
	.global	_SetCalMode
	.global	_GetModalRPM
	.global	_GetPreCompValue
	.global	_Status1Flags
	.global	_GetStatus2Flags
	.global	_ClearSelectiveMANTable
	.global	_WriteSensorStatustoNVMEM
	.global	_WriteMANCompTabletoNVMEM
	.global	_ClearManCompSequence
	.global	_MANCompTabletoSDCardFile
	.global	_SensorStatustoSDCardFile
	.global	_ClearEventCodeListArea
	.global	_SetAlarmEvent
	.global	_ClearAlarmEvent
	.global	_SetBitEvent
	.global	_ReadMANCompTablefromSDCardFile
	.global	_PrewarnReset
	.global	_CalibrationtdUpdate
	.global	_FloattoIntRound
	.global	_settings
	.global	_motion
	.global	_timers
	.global	_allsensors
	.global	_stringbuffer
	.global	_sensor
	.global	_iSensorInResetMode
	.global	_iSensorInRepalceTimer
	.global	_iBarred
	.global	_iDeltaRPM15
	.global	_function
	.global	_man_comptable
	.global	_manref
	.global	_manrefsum
	.global	_dynalarmlevels
	.global	_sdcarddir
	.global	_sdsettings
	.global	_damagemonignore
	.global	_sensorMoving
	.global	UL$$TOFS
	.global	FS$$DIV
	.global	U$$TOFS
	.global	FS$$MPY
	.global	FS$$TOU
	.global	L$$TOFS
	.global	FS$$TOUL
	.global	FS$$SUB
	.global	I$$TOFS
	.global	FS$$ADD
	.global	FS$$TOI
	.global	FS$$CMP

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x16)

DW$T$57	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$57, DW_AT_language(DW_LANG_C)
DW$314	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$315	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$316	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$56)
	.dwendtag DW$T$57


DW$T$60	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$60, DW_AT_language(DW_LANG_C)
DW$317	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
	.dwendtag DW$T$60


DW$T$63	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$63, DW_AT_language(DW_LANG_C)
DW$318	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$319	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$320	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$62)
DW$321	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$63


DW$T$65	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$65, DW_AT_language(DW_LANG_C)

DW$T$67	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$67, DW_AT_language(DW_LANG_C)
DW$322	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$323	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$67


DW$T$69	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$69, DW_AT_language(DW_LANG_C)
DW$324	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$69


DW$T$71	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$71, DW_AT_language(DW_LANG_C)
DW$325	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$326	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$327	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$71


DW$T$73	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$73, DW_AT_language(DW_LANG_C)
DW$328	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$329	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$73


DW$T$75	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$75, DW_AT_language(DW_LANG_C)
DW$330	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$331	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$332	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$333	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$16)
DW$334	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$16)
	.dwendtag DW$T$75


DW$T$77	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$77, DW_AT_language(DW_LANG_C)
DW$335	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$336	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$337	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$338	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$77

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)

DW$T$51	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$51, DW_AT_byte_size(0x1c)
DW$339	.dwtag  DW_TAG_subrange_type
	.dwattr DW$339, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$51


DW$T$80	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$80, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$80, DW_AT_byte_size(0x1068)
DW$340	.dwtag  DW_TAG_subrange_type
	.dwattr DW$340, DW_AT_upper_bound(0x95)
DW$341	.dwtag  DW_TAG_subrange_type
	.dwattr DW$341, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$80


DW$T$84	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$84, DW_AT_language(DW_LANG_C)
DW$342	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
DW$343	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$83)
DW$344	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$84


DW$T$86	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$86, DW_AT_language(DW_LANG_C)
DW$345	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$86


DW$T$88	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$88, DW_AT_language(DW_LANG_C)
DW$346	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$83)
DW$347	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$88


DW$T$90	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$90, DW_AT_language(DW_LANG_C)

DW$T$92	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$92, DW_AT_language(DW_LANG_C)

DW$T$94	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$94, DW_AT_language(DW_LANG_C)
DW$348	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$349	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$94

DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)
DW$T$62	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$62, DW_AT_address_class(0x16)

DW$T$109	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$109, DW_AT_language(DW_LANG_C)
DW$350	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$109


DW$T$111	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$111, DW_AT_language(DW_LANG_C)
DW$351	.dwtag  DW_TAG_far_type
	.dwattr DW$351, DW_AT_type(*DW$T$11)
DW$T$113	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$113, DW_AT_type(*DW$351)

DW$T$117	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$116)
	.dwattr DW$T$117, DW_AT_language(DW_LANG_C)
DW$352	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$353	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$117

DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)
DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$56, DW_AT_language(DW_LANG_C)

DW$T$119	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$118)
	.dwattr DW$T$119, DW_AT_language(DW_LANG_C)
DW$354	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$119

DW$355	.dwtag  DW_TAG_far_type
	.dwattr DW$355, DW_AT_type(*DW$T$13)
DW$T$120	.dwtag  DW_TAG_const_type
	.dwattr DW$T$120, DW_AT_type(*DW$355)
DW$T$16	.dwtag  DW_TAG_base_type, DW_AT_name("float")
	.dwattr DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$16, DW_AT_byte_size(0x02)

DW$T$122	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$16)
	.dwattr DW$T$122, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$122, DW_AT_byte_size(0x38)
DW$356	.dwtag  DW_TAG_subrange_type
	.dwattr DW$356, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$122

DW$T$127	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$30)
	.dwattr DW$T$127, DW_AT_address_class(0x16)

DW$T$128	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$127)
	.dwattr DW$T$128, DW_AT_language(DW_LANG_C)
DW$357	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$128

DW$T$132	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$31)
	.dwattr DW$T$132, DW_AT_address_class(0x16)

DW$T$133	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$132)
	.dwattr DW$T$133, DW_AT_language(DW_LANG_C)
DW$358	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$133

DW$T$137	.dwtag  DW_TAG_typedef, DW_AT_name("settingsstruct"), DW_AT_type(*DW$T$22)
	.dwattr DW$T$137, DW_AT_language(DW_LANG_C)
DW$T$138	.dwtag  DW_TAG_typedef, DW_AT_name("motionstruct"), DW_AT_type(*DW$T$24)
	.dwattr DW$T$138, DW_AT_language(DW_LANG_C)
DW$359	.dwtag  DW_TAG_far_type
	.dwattr DW$359, DW_AT_type(*DW$T$139)
DW$T$140	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$140, DW_AT_type(*DW$359)
DW$T$142	.dwtag  DW_TAG_typedef, DW_AT_name("allsensorstruct"), DW_AT_type(*DW$T$29)
	.dwattr DW$T$142, DW_AT_language(DW_LANG_C)

DW$T$145	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$144)
	.dwattr DW$T$145, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$145, DW_AT_byte_size(0x1f8)
DW$360	.dwtag  DW_TAG_subrange_type
	.dwattr DW$360, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$145

DW$T$148	.dwtag  DW_TAG_typedef, DW_AT_name("functionstruct"), DW_AT_type(*DW$T$34)
	.dwattr DW$T$148, DW_AT_language(DW_LANG_C)

DW$T$150	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$149)
	.dwattr DW$T$150, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$150, DW_AT_byte_size(0x118)
DW$361	.dwtag  DW_TAG_subrange_type
	.dwattr DW$361, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$150


DW$T$154	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$153)
	.dwattr DW$T$154, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$154, DW_AT_byte_size(0x1c)
DW$362	.dwtag  DW_TAG_subrange_type
	.dwattr DW$362, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$154

DW$T$157	.dwtag  DW_TAG_typedef, DW_AT_name("dynamicalarmsstruct"), DW_AT_type(*DW$T$37)
	.dwattr DW$T$157, DW_AT_language(DW_LANG_C)
DW$T$59	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$38)
	.dwattr DW$T$59, DW_AT_address_class(0x16)
DW$T$83	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$82)
	.dwattr DW$T$83, DW_AT_address_class(0x16)

DW$T$158	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$38)
	.dwattr DW$T$158, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$158, DW_AT_byte_size(0x64)
DW$363	.dwtag  DW_TAG_subrange_type
	.dwattr DW$363, DW_AT_upper_bound(0x63)
	.dwendtag DW$T$158

DW$364	.dwtag  DW_TAG_far_type
	.dwattr DW$364, DW_AT_type(*DW$T$160)
DW$T$161	.dwtag  DW_TAG_const_type
	.dwattr DW$T$161, DW_AT_type(*DW$364)
DW$T$164	.dwtag  DW_TAG_typedef, DW_AT_name("sdsettingsstruct"), DW_AT_type(*DW$T$42)
	.dwattr DW$T$164, DW_AT_language(DW_LANG_C)
DW$T$165	.dwtag  DW_TAG_typedef, DW_AT_name("sensorMovingstruct"), DW_AT_type(*DW$T$43)
	.dwattr DW$T$165, DW_AT_language(DW_LANG_C)
DW$T$166	.dwtag  DW_TAG_typedef, DW_AT_name("calibrationstruct"), DW_AT_type(*DW$T$53)
	.dwattr DW$T$166, DW_AT_language(DW_LANG_C)
DW$T$168	.dwtag  DW_TAG_typedef, DW_AT_name("speedcompstruct"), DW_AT_type(*DW$T$54)
	.dwattr DW$T$168, DW_AT_language(DW_LANG_C)
DW$T$170	.dwtag  DW_TAG_typedef, DW_AT_name("mancalstruct"), DW_AT_type(*DW$T$55)
	.dwattr DW$T$170, DW_AT_language(DW_LANG_C)
DW$T$116	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$116, DW_AT_address_class(0x16)
DW$T$118	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$118, DW_AT_address_class(0x16)
DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("status1struct"), DW_AT_type(*DW$T$19)
	.dwattr DW$T$30, DW_AT_language(DW_LANG_C)
DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("sensoralarmstruct"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$31, DW_AT_language(DW_LANG_C)

DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_name("tag_settingsstruct")
	.dwattr DW$T$22, DW_AT_byte_size(0x24)
DW$365	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$365, DW_AT_name("watchdog"), DW_AT_symbol_name("_watchdog")
	.dwattr DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$365, DW_AT_accessibility(DW_ACCESS_public)
DW$366	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$366, DW_AT_name("ledflashflag"), DW_AT_symbol_name("_ledflashflag")
	.dwattr DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$366, DW_AT_accessibility(DW_ACCESS_public)
DW$367	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$367, DW_AT_name("updatesafe"), DW_AT_symbol_name("_updatesafe")
	.dwattr DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$367, DW_AT_accessibility(DW_ACCESS_public)
DW$368	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$368, DW_AT_name("tableconfigtype"), DW_AT_symbol_name("_tableconfigtype")
	.dwattr DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$368, DW_AT_accessibility(DW_ACCESS_public)
DW$369	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$369, DW_AT_name("caltableconfigtype"), DW_AT_symbol_name("_caltableconfigtype")
	.dwattr DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$369, DW_AT_accessibility(DW_ACCESS_public)
DW$370	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$370, DW_AT_name("eventmsgid"), DW_AT_symbol_name("_eventmsgid")
	.dwattr DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$370, DW_AT_accessibility(DW_ACCESS_public)
DW$371	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$371, DW_AT_name("configoperationcomplete"), DW_AT_symbol_name("_configoperationcomplete")
	.dwattr DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$371, DW_AT_accessibility(DW_ACCESS_public)
DW$372	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$372, DW_AT_name("sdcarderr"), DW_AT_symbol_name("_sdcarderr")
	.dwattr DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$372, DW_AT_accessibility(DW_ACCESS_public)
DW$373	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$373, DW_AT_name("sderase"), DW_AT_symbol_name("_sderase")
	.dwattr DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$373, DW_AT_accessibility(DW_ACCESS_public)
DW$374	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$374, DW_AT_name("sdreinit"), DW_AT_symbol_name("_sdreinit")
	.dwattr DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$374, DW_AT_accessibility(DW_ACCESS_public)
DW$375	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$375, DW_AT_name("sdcardupdate"), DW_AT_symbol_name("_sdcardupdate")
	.dwattr DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$375, DW_AT_accessibility(DW_ACCESS_public)
DW$376	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$376, DW_AT_name("cardreadflag"), DW_AT_symbol_name("_cardreadflag")
	.dwattr DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$376, DW_AT_accessibility(DW_ACCESS_public)
DW$377	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$377, DW_AT_name("ignore"), DW_AT_symbol_name("_ignore")
	.dwattr DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$377, DW_AT_accessibility(DW_ACCESS_public)
DW$378	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$378, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$378, DW_AT_accessibility(DW_ACCESS_public)
DW$379	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$379, DW_AT_name("spiinuse"), DW_AT_symbol_name("_spiinuse")
	.dwattr DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$379, DW_AT_accessibility(DW_ACCESS_public)
DW$380	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$380, DW_AT_name("dcpeakhold"), DW_AT_symbol_name("_dcpeakhold")
	.dwattr DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$380, DW_AT_accessibility(DW_ACCESS_public)
DW$381	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$381, DW_AT_name("dcpause"), DW_AT_symbol_name("_dcpause")
	.dwattr DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$381, DW_AT_accessibility(DW_ACCESS_public)
DW$382	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$382, DW_AT_name("mastermode"), DW_AT_symbol_name("_mastermode")
	.dwattr DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$382, DW_AT_accessibility(DW_ACCESS_public)
DW$383	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$383, DW_AT_name("updatescaling"), DW_AT_symbol_name("_updatescaling")
	.dwattr DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$383, DW_AT_accessibility(DW_ACCESS_public)
DW$384	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$384, DW_AT_name("forwardasternflag"), DW_AT_symbol_name("_forwardasternflag")
	.dwattr DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$384, DW_AT_accessibility(DW_ACCESS_public)
DW$385	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$385, DW_AT_name("initprogress"), DW_AT_symbol_name("_initprogress")
	.dwattr DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$385, DW_AT_accessibility(DW_ACCESS_public)
DW$386	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$386, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$386, DW_AT_accessibility(DW_ACCESS_public)
DW$387	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$387, DW_AT_name("slowdowncounter"), DW_AT_symbol_name("_slowdowncounter")
	.dwattr DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$387, DW_AT_accessibility(DW_ACCESS_public)
DW$388	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$388, DW_AT_name("slowdowncondition"), DW_AT_symbol_name("_slowdowncondition")
	.dwattr DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$388, DW_AT_accessibility(DW_ACCESS_public)
DW$389	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$389, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$389, DW_AT_accessibility(DW_ACCESS_public)
DW$390	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$390, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$390, DW_AT_accessibility(DW_ACCESS_public)
DW$391	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$391, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$391, DW_AT_accessibility(DW_ACCESS_public)
DW$392	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$392, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$392, DW_AT_accessibility(DW_ACCESS_public)
DW$393	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$393, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$393, DW_AT_accessibility(DW_ACCESS_public)
DW$394	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$394, DW_AT_name("temperaturealarm"), DW_AT_symbol_name("_temperaturealarm")
	.dwattr DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$394, DW_AT_accessibility(DW_ACCESS_public)
DW$395	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$395, DW_AT_name("temperatureslowdown"), DW_AT_symbol_name("_temperatureslowdown")
	.dwattr DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$395, DW_AT_accessibility(DW_ACCESS_public)
DW$396	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$396, DW_AT_name("anadebug"), DW_AT_symbol_name("_anadebug")
	.dwattr DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$396, DW_AT_accessibility(DW_ACCESS_public)
DW$397	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$397, DW_AT_name("serialdebug"), DW_AT_symbol_name("_serialdebug")
	.dwattr DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr DW$397, DW_AT_accessibility(DW_ACCESS_public)
DW$398	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$398, DW_AT_name("timerrunning"), DW_AT_symbol_name("_timerrunning")
	.dwattr DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$398, DW_AT_accessibility(DW_ACCESS_public)
DW$399	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$399, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$399, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_name("tag_motionstruct")
	.dwattr DW$T$24, DW_AT_byte_size(0x09)
DW$400	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$400, DW_AT_name("counter"), DW_AT_symbol_name("_counter")
	.dwattr DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$400, DW_AT_accessibility(DW_ACCESS_public)
DW$401	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$401, DW_AT_name("ready"), DW_AT_symbol_name("_ready")
	.dwattr DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$401, DW_AT_accessibility(DW_ACCESS_public)
DW$402	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$402, DW_AT_name("order"), DW_AT_symbol_name("_order")
	.dwattr DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$402, DW_AT_accessibility(DW_ACCESS_public)
DW$403	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$403, DW_AT_name("forwardasternflag"), DW_AT_symbol_name("_forwardasternflag")
	.dwattr DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$403, DW_AT_accessibility(DW_ACCESS_public)
DW$404	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$404, DW_AT_name("forwardasternflagprev"), DW_AT_symbol_name("_forwardasternflagprev")
	.dwattr DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$404, DW_AT_accessibility(DW_ACCESS_public)
DW$405	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$405, DW_AT_name("recalnow"), DW_AT_symbol_name("_recalnow")
	.dwattr DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$405, DW_AT_accessibility(DW_ACCESS_public)
DW$406	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$406, DW_AT_name("calerror"), DW_AT_symbol_name("_calerror")
	.dwattr DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$406, DW_AT_accessibility(DW_ACCESS_public)
DW$407	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$407, DW_AT_name("recheckdir"), DW_AT_symbol_name("_recheckdir")
	.dwattr DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$407, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24

DW$T$139	.dwtag  DW_TAG_typedef, DW_AT_name("timersstruct"), DW_AT_type(*DW$T$26)
	.dwattr DW$T$139, DW_AT_language(DW_LANG_C)

DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$29, DW_AT_name("tag_allsensorstruct")
	.dwattr DW$T$29, DW_AT_byte_size(0x2d)
DW$408	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$408, DW_AT_name("numsensors"), DW_AT_symbol_name("_numsensors")
	.dwattr DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$408, DW_AT_accessibility(DW_ACCESS_public)
DW$409	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$409, DW_AT_name("numsensorsspu1"), DW_AT_symbol_name("_numsensorsspu1")
	.dwattr DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$409, DW_AT_accessibility(DW_ACCESS_public)
DW$410	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$410, DW_AT_name("numsensorsspu2"), DW_AT_symbol_name("_numsensorsspu2")
	.dwattr DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$410, DW_AT_accessibility(DW_ACCESS_public)
DW$411	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$411, DW_AT_name("nominalspeed"), DW_AT_symbol_name("_nominalspeed")
	.dwattr DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$411, DW_AT_accessibility(DW_ACCESS_public)
DW$412	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$412, DW_AT_name("rpmmin"), DW_AT_symbol_name("_rpmmin")
	.dwattr DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$412, DW_AT_accessibility(DW_ACCESS_public)
DW$413	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$413, DW_AT_name("rpmmax"), DW_AT_symbol_name("_rpmmax")
	.dwattr DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$413, DW_AT_accessibility(DW_ACCESS_public)
DW$414	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$414, DW_AT_name("reflash"), DW_AT_symbol_name("_reflash")
	.dwattr DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$414, DW_AT_accessibility(DW_ACCESS_public)
DW$415	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$415, DW_AT_name("sensorhysteresis"), DW_AT_symbol_name("_sensorhysteresis")
	.dwattr DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$415, DW_AT_accessibility(DW_ACCESS_public)
DW$416	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$416, DW_AT_name("cylinderhysteresis"), DW_AT_symbol_name("_cylinderhysteresis")
	.dwattr DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$416, DW_AT_accessibility(DW_ACCESS_public)
DW$417	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$417, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$417, DW_AT_accessibility(DW_ACCESS_public)
DW$418	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$418, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$418, DW_AT_accessibility(DW_ACCESS_public)
DW$419	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$419, DW_AT_name("slowdowndevcallevel"), DW_AT_symbol_name("_slowdowndevcallevel")
	.dwattr DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$419, DW_AT_accessibility(DW_ACCESS_public)
DW$420	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$420, DW_AT_name("alarmdevcallevel"), DW_AT_symbol_name("_alarmdevcallevel")
	.dwattr DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$420, DW_AT_accessibility(DW_ACCESS_public)
DW$421	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$421, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$421, DW_AT_accessibility(DW_ACCESS_public)
DW$422	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$422, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$422, DW_AT_accessibility(DW_ACCESS_public)
DW$423	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$423, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$423, DW_AT_accessibility(DW_ACCESS_public)
DW$424	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$424, DW_AT_name("flags"), DW_AT_symbol_name("_flags")
	.dwattr DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$424, DW_AT_accessibility(DW_ACCESS_public)
DW$425	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$425, DW_AT_name("slowdownack"), DW_AT_symbol_name("_slowdownack")
	.dwattr DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$425, DW_AT_accessibility(DW_ACCESS_public)
DW$426	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$426, DW_AT_name("alarmack"), DW_AT_symbol_name("_alarmack")
	.dwattr DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$426, DW_AT_accessibility(DW_ACCESS_public)
DW$427	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$427, DW_AT_name("maxmintimer"), DW_AT_symbol_name("_maxmintimer")
	.dwattr DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$427, DW_AT_accessibility(DW_ACCESS_public)
DW$428	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$428, DW_AT_name("enginedircal"), DW_AT_symbol_name("_enginedircal")
	.dwattr DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$428, DW_AT_accessibility(DW_ACCESS_public)
DW$429	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$429, DW_AT_name("dirorder"), DW_AT_symbol_name("_dirorder")
	.dwattr DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$429, DW_AT_accessibility(DW_ACCESS_public)
DW$430	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$430, DW_AT_name("prewarningtimer"), DW_AT_symbol_name("_prewarningtimer")
	.dwattr DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$430, DW_AT_accessibility(DW_ACCESS_public)
DW$431	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$431, DW_AT_name("prewarninglevel"), DW_AT_symbol_name("_prewarninglevel")
	.dwattr DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$431, DW_AT_accessibility(DW_ACCESS_public)
DW$432	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$432, DW_AT_name("rpmlimit"), DW_AT_symbol_name("_rpmlimit")
	.dwattr DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr DW$432, DW_AT_accessibility(DW_ACCESS_public)
DW$433	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$433, DW_AT_name("dsss"), DW_AT_symbol_name("_dsss")
	.dwattr DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$433, DW_AT_accessibility(DW_ACCESS_public)
DW$434	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$434, DW_AT_name("slowdowncallevel"), DW_AT_symbol_name("_slowdowncallevel")
	.dwattr DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$434, DW_AT_accessibility(DW_ACCESS_public)
DW$435	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$435, DW_AT_name("alarmcallevel"), DW_AT_symbol_name("_alarmcallevel")
	.dwattr DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$435, DW_AT_accessibility(DW_ACCESS_public)
DW$436	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$436, DW_AT_name("cylinderalarmcallevel"), DW_AT_symbol_name("_cylinderalarmcallevel")
	.dwattr DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$436, DW_AT_accessibility(DW_ACCESS_public)
DW$437	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$437, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$437, DW_AT_accessibility(DW_ACCESS_public)
DW$438	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$438, DW_AT_name("iBarredVibrationSpeedLow"), DW_AT_symbol_name("_iBarredVibrationSpeedLow")
	.dwattr DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$438, DW_AT_accessibility(DW_ACCESS_public)
DW$439	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$439, DW_AT_name("iBarredVibrationSpeedHigh"), DW_AT_symbol_name("_iBarredVibrationSpeedHigh")
	.dwattr DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$439, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$29

DW$T$144	.dwtag  DW_TAG_typedef, DW_AT_name("sensorstruct"), DW_AT_type(*DW$T$32)
	.dwattr DW$T$144, DW_AT_language(DW_LANG_C)

DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$34, DW_AT_name("tag_functionstruct")
	.dwattr DW$T$34, DW_AT_byte_size(0x08)
DW$440	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$440, DW_AT_name("enabled"), DW_AT_symbol_name("_enabled")
	.dwattr DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$440, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34

DW$T$149	.dwtag  DW_TAG_typedef, DW_AT_name("manrefstruct"), DW_AT_type(*DW$T$35)
	.dwattr DW$T$149, DW_AT_language(DW_LANG_C)
DW$T$153	.dwtag  DW_TAG_typedef, DW_AT_name("manrefsumstruct"), DW_AT_type(*DW$T$36)
	.dwattr DW$T$153, DW_AT_language(DW_LANG_C)

DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$37, DW_AT_name("tag_dynamicalarmsstruct")
	.dwattr DW$T$37, DW_AT_byte_size(0x24)
DW$441	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$441, DW_AT_name("rpmav"), DW_AT_symbol_name("_rpmav")
	.dwattr DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$441, DW_AT_accessibility(DW_ACCESS_public)
DW$442	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$442, DW_AT_name("single1"), DW_AT_symbol_name("_single1")
	.dwattr DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$442, DW_AT_accessibility(DW_ACCESS_public)
DW$443	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$443, DW_AT_name("cyl1"), DW_AT_symbol_name("_cyl1")
	.dwattr DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$443, DW_AT_accessibility(DW_ACCESS_public)
DW$444	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$444, DW_AT_name("mbsum1"), DW_AT_symbol_name("_mbsum1")
	.dwattr DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$444, DW_AT_accessibility(DW_ACCESS_public)
DW$445	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$445, DW_AT_name("single2"), DW_AT_symbol_name("_single2")
	.dwattr DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$445, DW_AT_accessibility(DW_ACCESS_public)
DW$446	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$446, DW_AT_name("cyl2"), DW_AT_symbol_name("_cyl2")
	.dwattr DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$446, DW_AT_accessibility(DW_ACCESS_public)
DW$447	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$447, DW_AT_name("mbsum2"), DW_AT_symbol_name("_mbsum2")
	.dwattr DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$447, DW_AT_accessibility(DW_ACCESS_public)
DW$448	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$448, DW_AT_name("deltarpmprev"), DW_AT_symbol_name("_deltarpmprev")
	.dwattr DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$448, DW_AT_accessibility(DW_ACCESS_public)
DW$449	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$449, DW_AT_name("deltarpm"), DW_AT_symbol_name("_deltarpm")
	.dwattr DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$449, DW_AT_accessibility(DW_ACCESS_public)
DW$450	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$450, DW_AT_name("deltarpm_int"), DW_AT_symbol_name("_deltarpm_int")
	.dwattr DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$450, DW_AT_accessibility(DW_ACCESS_public)
DW$451	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$451, DW_AT_name("rpmav_int"), DW_AT_symbol_name("_rpmav_int")
	.dwattr DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$451, DW_AT_accessibility(DW_ACCESS_public)
DW$452	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$452, DW_AT_name("deltarpmprev_int"), DW_AT_symbol_name("_deltarpmprev_int")
	.dwattr DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$452, DW_AT_accessibility(DW_ACCESS_public)
DW$453	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$453, DW_AT_name("single"), DW_AT_symbol_name("_single")
	.dwattr DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$453, DW_AT_accessibility(DW_ACCESS_public)
DW$454	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$454, DW_AT_name("cyl"), DW_AT_symbol_name("_cyl")
	.dwattr DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$454, DW_AT_accessibility(DW_ACCESS_public)
DW$455	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$455, DW_AT_name("mbsum"), DW_AT_symbol_name("_mbsum")
	.dwattr DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$455, DW_AT_accessibility(DW_ACCESS_public)
DW$456	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$456, DW_AT_name("singleprev"), DW_AT_symbol_name("_singleprev")
	.dwattr DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$456, DW_AT_accessibility(DW_ACCESS_public)
DW$457	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$457, DW_AT_name("cylprev"), DW_AT_symbol_name("_cylprev")
	.dwattr DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$457, DW_AT_accessibility(DW_ACCESS_public)
DW$458	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$458, DW_AT_name("mbsumprev"), DW_AT_symbol_name("_mbsumprev")
	.dwattr DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$458, DW_AT_accessibility(DW_ACCESS_public)
DW$459	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$459, DW_AT_name("single1_int"), DW_AT_symbol_name("_single1_int")
	.dwattr DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$459, DW_AT_accessibility(DW_ACCESS_public)
DW$460	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$460, DW_AT_name("cyl1_int"), DW_AT_symbol_name("_cyl1_int")
	.dwattr DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$460, DW_AT_accessibility(DW_ACCESS_public)
DW$461	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$461, DW_AT_name("mbsum1_int"), DW_AT_symbol_name("_mbsum1_int")
	.dwattr DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$461, DW_AT_accessibility(DW_ACCESS_public)
DW$462	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$462, DW_AT_name("single2_int"), DW_AT_symbol_name("_single2_int")
	.dwattr DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$462, DW_AT_accessibility(DW_ACCESS_public)
DW$463	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$463, DW_AT_name("cyl2_int"), DW_AT_symbol_name("_cyl2_int")
	.dwattr DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$463, DW_AT_accessibility(DW_ACCESS_public)
DW$464	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$464, DW_AT_name("mbsum2_int"), DW_AT_symbol_name("_mbsum2_int")
	.dwattr DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$464, DW_AT_accessibility(DW_ACCESS_public)
DW$465	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$465, DW_AT_name("hits"), DW_AT_symbol_name("_hits")
	.dwattr DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$465, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$37

DW$T$38	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$38, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$38, DW_AT_byte_size(0x01)
DW$466	.dwtag  DW_TAG_far_type
	.dwattr DW$466, DW_AT_type(*DW$T$38)
DW$T$82	.dwtag  DW_TAG_const_type
	.dwattr DW$T$82, DW_AT_type(*DW$466)
DW$T$160	.dwtag  DW_TAG_typedef, DW_AT_name("sdcarddirstruct"), DW_AT_type(*DW$T$40)
	.dwattr DW$T$160, DW_AT_language(DW_LANG_C)

DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$42, DW_AT_name("tag_sdsettingsstruct")
	.dwattr DW$T$42, DW_AT_byte_size(0x04)
DW$467	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$467, DW_AT_name("present"), DW_AT_symbol_name("_present")
	.dwattr DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$467, DW_AT_accessibility(DW_ACCESS_public)
DW$468	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$468, DW_AT_name("sequence"), DW_AT_symbol_name("_sequence")
	.dwattr DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$468, DW_AT_accessibility(DW_ACCESS_public)
DW$469	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$469, DW_AT_name("errornum"), DW_AT_symbol_name("_errornum")
	.dwattr DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$469, DW_AT_accessibility(DW_ACCESS_public)
DW$470	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$470, DW_AT_name("readstatus"), DW_AT_symbol_name("_readstatus")
	.dwattr DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$470, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$42


DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$43, DW_AT_name("tag_sensorMoving")
	.dwattr DW$T$43, DW_AT_byte_size(0x02)
DW$471	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$471, DW_AT_name("calAlarmThreshhold"), DW_AT_symbol_name("_calAlarmThreshhold")
	.dwattr DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$471, DW_AT_accessibility(DW_ACCESS_public)
DW$472	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$472, DW_AT_name("unusedByte"), DW_AT_symbol_name("_unusedByte")
	.dwattr DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$472, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$43


DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$53, DW_AT_name("tag_calibrationstruct")
	.dwattr DW$T$53, DW_AT_byte_size(0x31a)
DW$473	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$473, DW_AT_name("rpmpoints"), DW_AT_symbol_name("_rpmpoints")
	.dwattr DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$473, DW_AT_accessibility(DW_ACCESS_public)
DW$474	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$474, DW_AT_name("speedcalpoints"), DW_AT_symbol_name("_speedcalpoints")
	.dwattr DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$474, DW_AT_accessibility(DW_ACCESS_public)
DW$475	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$475, DW_AT_name("roughnumpoints"), DW_AT_symbol_name("_roughnumpoints")
	.dwattr DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$475, DW_AT_accessibility(DW_ACCESS_public)
DW$476	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$476, DW_AT_name("numpoints"), DW_AT_symbol_name("_numpoints")
	.dwattr DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$476, DW_AT_accessibility(DW_ACCESS_public)
DW$477	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$477, DW_AT_name("averagespeedacc"), DW_AT_symbol_name("_averagespeedacc")
	.dwattr DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x13a]
	.dwattr DW$477, DW_AT_accessibility(DW_ACCESS_public)
DW$478	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$478, DW_AT_name("averagevalacc"), DW_AT_symbol_name("_averagevalacc")
	.dwattr DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e2]
	.dwattr DW$478, DW_AT_accessibility(DW_ACCESS_public)
DW$479	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$479, DW_AT_name("validpoints"), DW_AT_symbol_name("_validpoints")
	.dwattr DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x28a]
	.dwattr DW$479, DW_AT_accessibility(DW_ACCESS_public)
DW$480	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$480, DW_AT_name("rpmatcal"), DW_AT_symbol_name("_rpmatcal")
	.dwattr DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x28b]
	.dwattr DW$480, DW_AT_accessibility(DW_ACCESS_public)
DW$481	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$52)
	.dwattr DW$481, DW_AT_name("manroughcalpts"), DW_AT_symbol_name("_manroughcalpts")
	.dwattr DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x28e]
	.dwattr DW$481, DW_AT_accessibility(DW_ACCESS_public)
DW$482	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$51)
	.dwattr DW$482, DW_AT_name("manroughmin"), DW_AT_symbol_name("_manroughmin")
	.dwattr DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e2]
	.dwattr DW$482, DW_AT_accessibility(DW_ACCESS_public)
DW$483	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$51)
	.dwattr DW$483, DW_AT_name("manroughmax"), DW_AT_symbol_name("_manroughmax")
	.dwattr DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x2fe]
	.dwattr DW$483, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$53


DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$54, DW_AT_name("tag_speedcompstruct")
	.dwattr DW$T$54, DW_AT_byte_size(0x19)
DW$484	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$484, DW_AT_name("stageflag"), DW_AT_symbol_name("_stageflag")
	.dwattr DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$484, DW_AT_accessibility(DW_ACCESS_public)
DW$485	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$485, DW_AT_name("status"), DW_AT_symbol_name("_status")
	.dwattr DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$485, DW_AT_accessibility(DW_ACCESS_public)
DW$486	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$486, DW_AT_name("speedbands"), DW_AT_symbol_name("_speedbands")
	.dwattr DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$486, DW_AT_accessibility(DW_ACCESS_public)
DW$487	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$487, DW_AT_name("slopecoeff"), DW_AT_symbol_name("_slopecoeff")
	.dwattr DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$487, DW_AT_accessibility(DW_ACCESS_public)
DW$488	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$488, DW_AT_name("initialtimer"), DW_AT_symbol_name("_initialtimer")
	.dwattr DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$488, DW_AT_accessibility(DW_ACCESS_public)
DW$489	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$489, DW_AT_name("learningmodetimer"), DW_AT_symbol_name("_learningmodetimer")
	.dwattr DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$489, DW_AT_accessibility(DW_ACCESS_public)
DW$490	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$490, DW_AT_name("intervaltimer"), DW_AT_symbol_name("_intervaltimer")
	.dwattr DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$490, DW_AT_accessibility(DW_ACCESS_public)
DW$491	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$491, DW_AT_name("numsamples"), DW_AT_symbol_name("_numsamples")
	.dwattr DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$491, DW_AT_accessibility(DW_ACCESS_public)
DW$492	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$492, DW_AT_name("learningleft"), DW_AT_symbol_name("_learningleft")
	.dwattr DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$492, DW_AT_accessibility(DW_ACCESS_public)
DW$493	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$493, DW_AT_name("intervalleft"), DW_AT_symbol_name("_intervalleft")
	.dwattr DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$493, DW_AT_accessibility(DW_ACCESS_public)
DW$494	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$494, DW_AT_name("manappliedminsamples"), DW_AT_symbol_name("_manappliedminsamples")
	.dwattr DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$494, DW_AT_accessibility(DW_ACCESS_public)
DW$495	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$495, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$495, DW_AT_accessibility(DW_ACCESS_public)
DW$496	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$496, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$496, DW_AT_accessibility(DW_ACCESS_public)
DW$497	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$497, DW_AT_name("unused3"), DW_AT_symbol_name("_unused3")
	.dwattr DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$497, DW_AT_accessibility(DW_ACCESS_public)
DW$498	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$498, DW_AT_name("unused4"), DW_AT_symbol_name("_unused4")
	.dwattr DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$498, DW_AT_accessibility(DW_ACCESS_public)
DW$499	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$499, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$499, DW_AT_accessibility(DW_ACCESS_public)
DW$500	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$500, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$500, DW_AT_accessibility(DW_ACCESS_public)
DW$501	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$501, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$501, DW_AT_accessibility(DW_ACCESS_public)
DW$502	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$502, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$502, DW_AT_accessibility(DW_ACCESS_public)
DW$503	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$503, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$503, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$54


DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$55, DW_AT_name("tag_mancalstruct")
	.dwattr DW$T$55, DW_AT_byte_size(0x04)
DW$504	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$504, DW_AT_name("learningleft"), DW_AT_symbol_name("_learningleft")
	.dwattr DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$504, DW_AT_accessibility(DW_ACCESS_public)
DW$505	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$505, DW_AT_name("intervalleft"), DW_AT_symbol_name("_intervalleft")
	.dwattr DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$505, DW_AT_accessibility(DW_ACCESS_public)
DW$506	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$506, DW_AT_name("percentleft"), DW_AT_symbol_name("_percentleft")
	.dwattr DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$506, DW_AT_accessibility(DW_ACCESS_public)
DW$507	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$507, DW_AT_name("manupdateflag"), DW_AT_symbol_name("_manupdateflag")
	.dwattr DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$507, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$55


DW$T$23	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$23, DW_AT_byte_size(0x02)
DW$508	.dwtag  DW_TAG_subrange_type
	.dwattr DW$508, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$23


DW$T$52	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$52, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$52, DW_AT_byte_size(0x54)
DW$509	.dwtag  DW_TAG_subrange_type
	.dwattr DW$509, DW_AT_upper_bound(0x02)
DW$510	.dwtag  DW_TAG_subrange_type
	.dwattr DW$510, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$52


DW$T$25	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$25, DW_AT_byte_size(0x0e)
DW$511	.dwtag  DW_TAG_subrange_type
	.dwattr DW$511, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$25


DW$T$45	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$45, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$45, DW_AT_byte_size(0x06)
DW$512	.dwtag  DW_TAG_subrange_type
	.dwattr DW$512, DW_AT_upper_bound(0x02)
DW$513	.dwtag  DW_TAG_subrange_type
	.dwattr DW$513, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$45


DW$T$50	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$50, DW_AT_byte_size(0x03)
DW$514	.dwtag  DW_TAG_subrange_type
	.dwattr DW$514, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$50

DW$T$12	.dwtag  DW_TAG_base_type, DW_AT_name("long")
	.dwattr DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$12, DW_AT_byte_size(0x02)

DW$T$49	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$49, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$49, DW_AT_byte_size(0xa8)
DW$515	.dwtag  DW_TAG_subrange_type
	.dwattr DW$515, DW_AT_upper_bound(0x02)
DW$516	.dwtag  DW_TAG_subrange_type
	.dwattr DW$516, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$49


DW$T$46	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$46, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$46, DW_AT_byte_size(0x06)
DW$517	.dwtag  DW_TAG_subrange_type
	.dwattr DW$517, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$46


DW$T$47	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$47, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$47, DW_AT_byte_size(0x12c)
DW$518	.dwtag  DW_TAG_subrange_type
	.dwattr DW$518, DW_AT_upper_bound(0x95)
	.dwendtag DW$T$47


DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$19, DW_AT_name("tag_status1struct")
	.dwattr DW$T$19, DW_AT_byte_size(0x01)
DW$519	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$519, DW_AT_name("enabled"), DW_AT_symbol_name("_enabled")
	.dwattr DW$519, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$519, DW_AT_accessibility(DW_ACCESS_public)
DW$520	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$520, DW_AT_name("calmode"), DW_AT_symbol_name("_calmode")
	.dwattr DW$520, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$520, DW_AT_accessibility(DW_ACCESS_public)
DW$521	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$521, DW_AT_name("alarmmask"), DW_AT_symbol_name("_alarmmask")
	.dwattr DW$521, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$521, DW_AT_accessibility(DW_ACCESS_public)
DW$522	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$522, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$522, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$522, DW_AT_accessibility(DW_ACCESS_public)
DW$523	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$523, DW_AT_name("replaced"), DW_AT_symbol_name("_replaced")
	.dwattr DW$523, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$523, DW_AT_accessibility(DW_ACCESS_public)
DW$524	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$524, DW_AT_name("excludeslowroll"), DW_AT_symbol_name("_excludeslowroll")
	.dwattr DW$524, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$524, DW_AT_accessibility(DW_ACCESS_public)
DW$525	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$525, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$525, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$525, DW_AT_accessibility(DW_ACCESS_public)
DW$526	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$526, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$526, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$526, DW_AT_accessibility(DW_ACCESS_public)
DW$527	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$527, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$527, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$527, DW_AT_accessibility(DW_ACCESS_public)
DW$528	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$528, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$528, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$528, DW_AT_accessibility(DW_ACCESS_public)
DW$529	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$529, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$529, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$529, DW_AT_accessibility(DW_ACCESS_public)
DW$530	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$530, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$530, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$530, DW_AT_accessibility(DW_ACCESS_public)
DW$531	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$531, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$531, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$531, DW_AT_accessibility(DW_ACCESS_public)
DW$532	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$532, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$532, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$532, DW_AT_accessibility(DW_ACCESS_public)
DW$533	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$533, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$533, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$533, DW_AT_accessibility(DW_ACCESS_public)
DW$534	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$534, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$534, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$534, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$19


DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("tag_sensoralarmstruct")
	.dwattr DW$T$20, DW_AT_byte_size(0x01)
DW$535	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$535, DW_AT_name("failure"), DW_AT_symbol_name("_failure")
	.dwattr DW$535, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$535, DW_AT_accessibility(DW_ACCESS_public)
DW$536	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$536, DW_AT_name("failurelatched"), DW_AT_symbol_name("_failurelatched")
	.dwattr DW$536, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$536, DW_AT_accessibility(DW_ACCESS_public)
DW$537	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$537, DW_AT_name("slowdown"), DW_AT_symbol_name("_slowdown")
	.dwattr DW$537, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$537, DW_AT_accessibility(DW_ACCESS_public)
DW$538	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$538, DW_AT_name("slowdownlatched"), DW_AT_symbol_name("_slowdownlatched")
	.dwattr DW$538, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$538, DW_AT_accessibility(DW_ACCESS_public)
DW$539	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$539, DW_AT_name("alarm"), DW_AT_symbol_name("_alarm")
	.dwattr DW$539, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$539, DW_AT_accessibility(DW_ACCESS_public)
DW$540	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$540, DW_AT_name("alarmlatched"), DW_AT_symbol_name("_alarmlatched")
	.dwattr DW$540, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$540, DW_AT_accessibility(DW_ACCESS_public)
DW$541	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$541, DW_AT_name("devalarm"), DW_AT_symbol_name("_devalarm")
	.dwattr DW$541, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$541, DW_AT_accessibility(DW_ACCESS_public)
DW$542	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$542, DW_AT_name("devalarmlatched"), DW_AT_symbol_name("_devalarmlatched")
	.dwattr DW$542, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$542, DW_AT_accessibility(DW_ACCESS_public)
DW$543	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$543, DW_AT_name("devslow"), DW_AT_symbol_name("_devslow")
	.dwattr DW$543, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$543, DW_AT_accessibility(DW_ACCESS_public)
DW$544	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$544, DW_AT_name("devslowlatched"), DW_AT_symbol_name("_devslowlatched")
	.dwattr DW$544, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$544, DW_AT_accessibility(DW_ACCESS_public)
DW$545	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$545, DW_AT_name("calibration"), DW_AT_symbol_name("_calibration")
	.dwattr DW$545, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$545, DW_AT_accessibility(DW_ACCESS_public)
DW$546	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$546, DW_AT_name("calibrationlatched"), DW_AT_symbol_name("_calibrationlatched")
	.dwattr DW$546, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$546, DW_AT_accessibility(DW_ACCESS_public)
DW$547	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$547, DW_AT_name("prewarning"), DW_AT_symbol_name("_prewarning")
	.dwattr DW$547, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$547, DW_AT_accessibility(DW_ACCESS_public)
DW$548	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$548, DW_AT_name("prewarninglatched"), DW_AT_symbol_name("_prewarninglatched")
	.dwattr DW$548, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$548, DW_AT_accessibility(DW_ACCESS_public)
DW$549	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$549, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$549, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$549, DW_AT_accessibility(DW_ACCESS_public)
DW$550	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$550, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$550, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$550, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$21, DW_AT_byte_size(0x02)
DW$551	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$551, DW_AT_name("enb"), DW_AT_symbol_name("_enb")
	.dwattr DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$551, DW_AT_accessibility(DW_ACCESS_public)
DW$552	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$552, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$552, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21


DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_name("tag_timers")
	.dwattr DW$T$26, DW_AT_byte_size(0x4c)
DW$553	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$553, DW_AT_name("update"), DW_AT_symbol_name("_update")
	.dwattr DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$553, DW_AT_accessibility(DW_ACCESS_public)
DW$554	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$554, DW_AT_name("general"), DW_AT_symbol_name("_general")
	.dwattr DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$554, DW_AT_accessibility(DW_ACCESS_public)
DW$555	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$555, DW_AT_name("rxcharTimeout"), DW_AT_symbol_name("_rxcharTimeout")
	.dwattr DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$555, DW_AT_accessibility(DW_ACCESS_public)
DW$556	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$556, DW_AT_name("wiorxtimeout"), DW_AT_symbol_name("_wiorxtimeout")
	.dwattr DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$556, DW_AT_accessibility(DW_ACCESS_public)
DW$557	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$557, DW_AT_name("wiomasterrxtimeout"), DW_AT_symbol_name("_wiomasterrxtimeout")
	.dwattr DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$557, DW_AT_accessibility(DW_ACCESS_public)
DW$558	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$558, DW_AT_name("masterrxtimeout"), DW_AT_symbol_name("_masterrxtimeout")
	.dwattr DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$558, DW_AT_accessibility(DW_ACCESS_public)
DW$559	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$559, DW_AT_name("slaverxtimeout"), DW_AT_symbol_name("_slaverxtimeout")
	.dwattr DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$559, DW_AT_accessibility(DW_ACCESS_public)
DW$560	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$560, DW_AT_name("sectick"), DW_AT_symbol_name("_sectick")
	.dwattr DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$560, DW_AT_accessibility(DW_ACCESS_public)
DW$561	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$561, DW_AT_name("ledflash"), DW_AT_symbol_name("_ledflash")
	.dwattr DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$561, DW_AT_accessibility(DW_ACCESS_public)
DW$562	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$562, DW_AT_name("prtsettle"), DW_AT_symbol_name("_prtsettle")
	.dwattr DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$562, DW_AT_accessibility(DW_ACCESS_public)
DW$563	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$563, DW_AT_name("chantimeout"), DW_AT_symbol_name("_chantimeout")
	.dwattr DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$563, DW_AT_accessibility(DW_ACCESS_public)
DW$564	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$564, DW_AT_name("chanwait"), DW_AT_symbol_name("_chanwait")
	.dwattr DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$564, DW_AT_accessibility(DW_ACCESS_public)
DW$565	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$565, DW_AT_name("pcrxtimeout"), DW_AT_symbol_name("_pcrxtimeout")
	.dwattr DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$565, DW_AT_accessibility(DW_ACCESS_public)
DW$566	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$566, DW_AT_name("pctxtimeout"), DW_AT_symbol_name("_pctxtimeout")
	.dwattr DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$566, DW_AT_accessibility(DW_ACCESS_public)
DW$567	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$567, DW_AT_name("spistatus"), DW_AT_symbol_name("_spistatus")
	.dwattr DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$567, DW_AT_accessibility(DW_ACCESS_public)
DW$568	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$568, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$568, DW_AT_accessibility(DW_ACCESS_public)
DW$569	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$569, DW_AT_name("slaverqst"), DW_AT_symbol_name("_slaverqst")
	.dwattr DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$569, DW_AT_accessibility(DW_ACCESS_public)
DW$570	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$570, DW_AT_name("mastermodebutton"), DW_AT_symbol_name("_mastermodebutton")
	.dwattr DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$570, DW_AT_accessibility(DW_ACCESS_public)
DW$571	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$571, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$571, DW_AT_accessibility(DW_ACCESS_public)
DW$572	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$572, DW_AT_name("calibrate"), DW_AT_symbol_name("_calibrate")
	.dwattr DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$572, DW_AT_accessibility(DW_ACCESS_public)
DW$573	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$573, DW_AT_name("calibrate2"), DW_AT_symbol_name("_calibrate2")
	.dwattr DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$573, DW_AT_accessibility(DW_ACCESS_public)
DW$574	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$574, DW_AT_name("alarmreflash"), DW_AT_symbol_name("_alarmreflash")
	.dwattr DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$574, DW_AT_accessibility(DW_ACCESS_public)
DW$575	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$575, DW_AT_name("slowdownreflash"), DW_AT_symbol_name("_slowdownreflash")
	.dwattr DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr DW$575, DW_AT_accessibility(DW_ACCESS_public)
DW$576	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$576, DW_AT_name("wiorqst"), DW_AT_symbol_name("_wiorqst")
	.dwattr DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$576, DW_AT_accessibility(DW_ACCESS_public)
DW$577	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$577, DW_AT_name("rpmtimeout"), DW_AT_symbol_name("_rpmtimeout")
	.dwattr DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr DW$577, DW_AT_accessibility(DW_ACCESS_public)
DW$578	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$578, DW_AT_name("analogoor"), DW_AT_symbol_name("_analogoor")
	.dwattr DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$578, DW_AT_accessibility(DW_ACCESS_public)
DW$579	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$579, DW_AT_name("motioncal"), DW_AT_symbol_name("_motioncal")
	.dwattr DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr DW$579, DW_AT_accessibility(DW_ACCESS_public)
DW$580	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$580, DW_AT_name("framcheck"), DW_AT_symbol_name("_framcheck")
	.dwattr DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$580, DW_AT_accessibility(DW_ACCESS_public)
DW$581	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$581, DW_AT_name("pcmodbus"), DW_AT_symbol_name("_pcmodbus")
	.dwattr DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr DW$581, DW_AT_accessibility(DW_ACCESS_public)
DW$582	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$582, DW_AT_name("statusreflash"), DW_AT_symbol_name("_statusreflash")
	.dwattr DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$582, DW_AT_accessibility(DW_ACCESS_public)
DW$583	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$583, DW_AT_name("prewarn"), DW_AT_symbol_name("_prewarn")
	.dwattr DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$583, DW_AT_accessibility(DW_ACCESS_public)
DW$584	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$584, DW_AT_name("clocktofram"), DW_AT_symbol_name("_clocktofram")
	.dwattr DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr DW$584, DW_AT_accessibility(DW_ACCESS_public)
DW$585	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$585, DW_AT_name("debugrapidfast"), DW_AT_symbol_name("_debugrapidfast")
	.dwattr DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x3f]
	.dwattr DW$585, DW_AT_accessibility(DW_ACCESS_public)
DW$586	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$586, DW_AT_name("debugupdate"), DW_AT_symbol_name("_debugupdate")
	.dwattr DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$586, DW_AT_accessibility(DW_ACCESS_public)
DW$587	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$587, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr DW$587, DW_AT_accessibility(DW_ACCESS_public)
DW$588	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$588, DW_AT_name("startup"), DW_AT_symbol_name("_startup")
	.dwattr DW$588, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr DW$588, DW_AT_accessibility(DW_ACCESS_public)
DW$589	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$589, DW_AT_name("analogsettle"), DW_AT_symbol_name("_analogsettle")
	.dwattr DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr DW$589, DW_AT_accessibility(DW_ACCESS_public)
DW$590	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$590, DW_AT_name("reprogram"), DW_AT_symbol_name("_reprogram")
	.dwattr DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr DW$590, DW_AT_accessibility(DW_ACCESS_public)
DW$591	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$591, DW_AT_name("reprogramtimeout"), DW_AT_symbol_name("_reprogramtimeout")
	.dwattr DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr DW$591, DW_AT_accessibility(DW_ACCESS_public)
DW$592	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$592, DW_AT_name("dcmodestayalive"), DW_AT_symbol_name("_dcmodestayalive")
	.dwattr DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$592, DW_AT_accessibility(DW_ACCESS_public)
DW$593	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$593, DW_AT_name("biteventchange"), DW_AT_symbol_name("_biteventchange")
	.dwattr DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr DW$593, DW_AT_accessibility(DW_ACCESS_public)
DW$594	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$594, DW_AT_name("iSensorReplace"), DW_AT_symbol_name("_iSensorReplace")
	.dwattr DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr DW$594, DW_AT_accessibility(DW_ACCESS_public)
DW$595	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$595, DW_AT_name("deltarpm15Delay"), DW_AT_symbol_name("_deltarpm15Delay")
	.dwattr DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr DW$595, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$27, DW_AT_byte_size(0x01)
DW$596	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$596, DW_AT_name("newval"), DW_AT_symbol_name("_newval")
	.dwattr DW$596, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$596, DW_AT_accessibility(DW_ACCESS_public)
DW$597	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$597, DW_AT_name("calmode"), DW_AT_symbol_name("_calmode")
	.dwattr DW$597, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$597, DW_AT_accessibility(DW_ACCESS_public)
DW$598	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$598, DW_AT_name("startcal"), DW_AT_symbol_name("_startcal")
	.dwattr DW$598, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$598, DW_AT_accessibility(DW_ACCESS_public)
DW$599	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$599, DW_AT_name("newvalspu2"), DW_AT_symbol_name("_newvalspu2")
	.dwattr DW$599, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$599, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$599, DW_AT_accessibility(DW_ACCESS_public)
DW$600	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$600, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$600, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$600, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_byte_size(0x01)
DW$601	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$601, DW_AT_name("slowdowncntrl"), DW_AT_symbol_name("_slowdowncntrl")
	.dwattr DW$601, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$601, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$601, DW_AT_accessibility(DW_ACCESS_public)
DW$602	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$602, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$602, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0f)
	.dwattr DW$602, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$602, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_name("tag_sensorstruct")
	.dwattr DW$T$32, DW_AT_byte_size(0x12)
DW$603	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$603, DW_AT_name("status1"), DW_AT_symbol_name("_status1")
	.dwattr DW$603, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$603, DW_AT_accessibility(DW_ACCESS_public)
DW$604	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$604, DW_AT_name("status2"), DW_AT_symbol_name("_status2")
	.dwattr DW$604, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$604, DW_AT_accessibility(DW_ACCESS_public)
DW$605	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$605, DW_AT_name("newval"), DW_AT_symbol_name("_newval")
	.dwattr DW$605, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$605, DW_AT_accessibility(DW_ACCESS_public)
DW$606	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$606, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$606, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$606, DW_AT_accessibility(DW_ACCESS_public)
DW$607	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$607, DW_AT_name("immediateval"), DW_AT_symbol_name("_immediateval")
	.dwattr DW$607, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$607, DW_AT_accessibility(DW_ACCESS_public)
DW$608	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$608, DW_AT_name("initialval"), DW_AT_symbol_name("_initialval")
	.dwattr DW$608, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$608, DW_AT_accessibility(DW_ACCESS_public)
DW$609	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$609, DW_AT_name("precomp"), DW_AT_symbol_name("_precomp")
	.dwattr DW$609, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$609, DW_AT_accessibility(DW_ACCESS_public)
DW$610	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$610, DW_AT_name("postcomp"), DW_AT_symbol_name("_postcomp")
	.dwattr DW$610, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$610, DW_AT_accessibility(DW_ACCESS_public)
DW$611	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$611, DW_AT_name("postfilter"), DW_AT_symbol_name("_postfilter")
	.dwattr DW$611, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$611, DW_AT_accessibility(DW_ACCESS_public)
DW$612	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$612, DW_AT_name("endresult"), DW_AT_symbol_name("_endresult")
	.dwattr DW$612, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$612, DW_AT_accessibility(DW_ACCESS_public)
DW$613	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$613, DW_AT_name("deviation"), DW_AT_symbol_name("_deviation")
	.dwattr DW$613, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$613, DW_AT_accessibility(DW_ACCESS_public)
DW$614	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$614, DW_AT_name("min"), DW_AT_symbol_name("_min")
	.dwattr DW$614, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$614, DW_AT_accessibility(DW_ACCESS_public)
DW$615	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$615, DW_AT_name("max"), DW_AT_symbol_name("_max")
	.dwattr DW$615, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$615, DW_AT_accessibility(DW_ACCESS_public)
DW$616	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$616, DW_AT_name("devmin"), DW_AT_symbol_name("_devmin")
	.dwattr DW$616, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$616, DW_AT_accessibility(DW_ACCESS_public)
DW$617	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$617, DW_AT_name("devmax"), DW_AT_symbol_name("_devmax")
	.dwattr DW$617, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$617, DW_AT_accessibility(DW_ACCESS_public)
DW$618	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$618, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$618, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$618, DW_AT_accessibility(DW_ACCESS_public)
DW$619	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$619, DW_AT_name("prt"), DW_AT_symbol_name("_prt")
	.dwattr DW$619, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$619, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$33, DW_AT_byte_size(0x08)
DW$620	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$620, DW_AT_name("applyoffset"), DW_AT_symbol_name("_applyoffset")
	.dwattr DW$620, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$620, DW_AT_accessibility(DW_ACCESS_public)
DW$621	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$621, DW_AT_name("sensorcompensation"), DW_AT_symbol_name("_sensorcompensation")
	.dwattr DW$621, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$621, DW_AT_accessibility(DW_ACCESS_public)
DW$622	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$622, DW_AT_name("sensornoiseremoval"), DW_AT_symbol_name("_sensornoiseremoval")
	.dwattr DW$622, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$622, DW_AT_accessibility(DW_ACCESS_public)
DW$623	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$623, DW_AT_name("sensordeviation"), DW_AT_symbol_name("_sensordeviation")
	.dwattr DW$623, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$623, DW_AT_accessibility(DW_ACCESS_public)
DW$624	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$624, DW_AT_name("cylinderaverage"), DW_AT_symbol_name("_cylinderaverage")
	.dwattr DW$624, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$624, DW_AT_accessibility(DW_ACCESS_public)
DW$625	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$625, DW_AT_name("cylinderdeviation"), DW_AT_symbol_name("_cylinderdeviation")
	.dwattr DW$625, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$625, DW_AT_accessibility(DW_ACCESS_public)
DW$626	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$626, DW_AT_name("useroughcal"), DW_AT_symbol_name("_useroughcal")
	.dwattr DW$626, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$626, DW_AT_accessibility(DW_ACCESS_public)
DW$627	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$627, DW_AT_name("vincheckenabled"), DW_AT_symbol_name("_vincheckenabled")
	.dwattr DW$627, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$627, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$35, DW_AT_name("tag_manrefstruct")
	.dwattr DW$T$35, DW_AT_byte_size(0x0a)
DW$628	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$628, DW_AT_name("reflevel"), DW_AT_symbol_name("_reflevel")
	.dwattr DW$628, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$628, DW_AT_accessibility(DW_ACCESS_public)
DW$629	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$629, DW_AT_name("presentstate"), DW_AT_symbol_name("_presentstate")
	.dwattr DW$629, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$629, DW_AT_accessibility(DW_ACCESS_public)
DW$630	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$630, DW_AT_name("refvalue"), DW_AT_symbol_name("_refvalue")
	.dwattr DW$630, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$630, DW_AT_accessibility(DW_ACCESS_public)
DW$631	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$631, DW_AT_name("reflevel_int"), DW_AT_symbol_name("_reflevel_int")
	.dwattr DW$631, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$631, DW_AT_accessibility(DW_ACCESS_public)
DW$632	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$632, DW_AT_name("presentstate_int"), DW_AT_symbol_name("_presentstate_int")
	.dwattr DW$632, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$632, DW_AT_accessibility(DW_ACCESS_public)
DW$633	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$633, DW_AT_name("refvalue_int"), DW_AT_symbol_name("_refvalue_int")
	.dwattr DW$633, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$633, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35


DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$36, DW_AT_name("tag_manrefsumstruct")
	.dwattr DW$T$36, DW_AT_byte_size(0x02)
DW$634	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$634, DW_AT_name("cylsum"), DW_AT_symbol_name("_cylsum")
	.dwattr DW$634, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$634, DW_AT_accessibility(DW_ACCESS_public)
DW$635	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$635, DW_AT_name("mbnsum"), DW_AT_symbol_name("_mbnsum")
	.dwattr DW$635, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$635, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$36


DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$40, DW_AT_name("tag_sdcarddirstruct")
	.dwattr DW$T$40, DW_AT_byte_size(0x36)
DW$636	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$636, DW_AT_name("firstcaldir"), DW_AT_symbol_name("_firstcaldir")
	.dwattr DW$636, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$636, DW_AT_accessibility(DW_ACCESS_public)
DW$637	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$637, DW_AT_name("roughcaldir"), DW_AT_symbol_name("_roughcaldir")
	.dwattr DW$637, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$637, DW_AT_accessibility(DW_ACCESS_public)
DW$638	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$638, DW_AT_name("finecaldir"), DW_AT_symbol_name("_finecaldir")
	.dwattr DW$638, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$638, DW_AT_accessibility(DW_ACCESS_public)
DW$639	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$639, DW_AT_name("configdir"), DW_AT_symbol_name("_configdir")
	.dwattr DW$639, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$639, DW_AT_accessibility(DW_ACCESS_public)
DW$640	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$640, DW_AT_name("sterm"), DW_AT_symbol_name("_sterm")
	.dwattr DW$640, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$640, DW_AT_accessibility(DW_ACCESS_public)
DW$641	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$641, DW_AT_name("lterm"), DW_AT_symbol_name("_lterm")
	.dwattr DW$641, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr DW$641, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40


DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$41, DW_AT_byte_size(0x01)
DW$642	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$642, DW_AT_name("settings"), DW_AT_symbol_name("_settings")
	.dwattr DW$642, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$642, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$642, DW_AT_accessibility(DW_ACCESS_public)
DW$643	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$643, DW_AT_name("sensorstatus"), DW_AT_symbol_name("_sensorstatus")
	.dwattr DW$643, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$643, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$643, DW_AT_accessibility(DW_ACCESS_public)
DW$644	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$644, DW_AT_name("offsets"), DW_AT_symbol_name("_offsets")
	.dwattr DW$644, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$644, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$644, DW_AT_accessibility(DW_ACCESS_public)
DW$645	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$645, DW_AT_name("mantable"), DW_AT_symbol_name("_mantable")
	.dwattr DW$645, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$645, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$645, DW_AT_accessibility(DW_ACCESS_public)
DW$646	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$646, DW_AT_name("calibtd"), DW_AT_symbol_name("_calibtd")
	.dwattr DW$646, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$646, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$646, DW_AT_accessibility(DW_ACCESS_public)
DW$647	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$647, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$647, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$647, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$647, DW_AT_accessibility(DW_ACCESS_public)
DW$648	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$648, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$648, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$648, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$648, DW_AT_accessibility(DW_ACCESS_public)
DW$649	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$649, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$649, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$649, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$649, DW_AT_accessibility(DW_ACCESS_public)
DW$650	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$650, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$650, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$650, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$650, DW_AT_accessibility(DW_ACCESS_public)
DW$651	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$651, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$651, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$651, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$651, DW_AT_accessibility(DW_ACCESS_public)
DW$652	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$652, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$652, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$652, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$652, DW_AT_accessibility(DW_ACCESS_public)
DW$653	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$653, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$653, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$653, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$653, DW_AT_accessibility(DW_ACCESS_public)
DW$654	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$654, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$654, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$654, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$654, DW_AT_accessibility(DW_ACCESS_public)
DW$655	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$655, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$655, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$655, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$655, DW_AT_accessibility(DW_ACCESS_public)
DW$656	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$656, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$656, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$656, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$656, DW_AT_accessibility(DW_ACCESS_public)
DW$657	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$657, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$657, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$657, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$657, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$41


DW$T$39	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$38)
	.dwattr DW$T$39, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$39, DW_AT_byte_size(0x09)
DW$658	.dwtag  DW_TAG_subrange_type
	.dwattr DW$658, DW_AT_upper_bound(0x08)
	.dwendtag DW$T$39


	.dwattr DW$141, DW_AT_external(0x01)
	.dwattr DW$87, DW_AT_external(0x01)
	.dwattr DW$156, DW_AT_external(0x01)
	.dwattr DW$207, DW_AT_external(0x01)
	.dwattr DW$256, DW_AT_external(0x01)
	.dwattr DW$259, DW_AT_external(0x01)
	.dwattr DW$194, DW_AT_external(0x01)
	.dwattr DW$237, DW_AT_external(0x01)
	.dwattr DW$262, DW_AT_external(0x01)
	.dwattr DW$161, DW_AT_external(0x01)
	.dwattr DW$118, DW_AT_external(0x01)
	.dwattr DW$118, DW_AT_type(*DW$T$11)
	.dwattr DW$117, DW_AT_external(0x01)
	.dwattr DW$117, DW_AT_type(*DW$T$11)
	.dwattr DW$116, DW_AT_external(0x01)
	.dwattr DW$116, DW_AT_type(*DW$T$11)
	.dwattr DW$123, DW_AT_external(0x01)
	.dwattr DW$186, DW_AT_external(0x01)
	.dwattr DW$251, DW_AT_external(0x01)
	.dwattr DW$140, DW_AT_external(0x01)
	.dwattr DW$119, DW_AT_external(0x01)
	.dwattr DW$90, DW_AT_external(0x01)
	.dwattr DW$91, DW_AT_external(0x01)
	.dwattr DW$91, DW_AT_type(*DW$T$116)
	.dwattr DW$103, DW_AT_external(0x01)
	.dwattr DW$94, DW_AT_external(0x01)
	.dwattr DW$94, DW_AT_type(*DW$T$116)
	.dwattr DW$113, DW_AT_external(0x01)
	.dwattr DW$109, DW_AT_external(0x01)
	.dwattr DW$109, DW_AT_type(*DW$T$10)
	.dwattr DW$115, DW_AT_external(0x01)
	.dwattr DW$97, DW_AT_external(0x01)
	.dwattr DW$97, DW_AT_type(*DW$T$118)
	.dwattr DW$100, DW_AT_external(0x01)
	.dwattr DW$152, DW_AT_external(0x01)
	.dwattr DW$155, DW_AT_external(0x01)
	.dwattr DW$168, DW_AT_external(0x01)
	.dwattr DW$122, DW_AT_external(0x01)
	.dwattr DW$177, DW_AT_external(0x01)
	.dwattr DW$101, DW_AT_external(0x01)
	.dwattr DW$112, DW_AT_external(0x01)
	.dwattr DW$105, DW_AT_external(0x01)
	.dwattr DW$114, DW_AT_external(0x01)
	.dwattr DW$99, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$659	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$659, DW_AT_location[DW_OP_reg0]
DW$660	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$660, DW_AT_location[DW_OP_reg1]
DW$661	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$661, DW_AT_location[DW_OP_reg2]
DW$662	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$662, DW_AT_location[DW_OP_reg3]
DW$663	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$663, DW_AT_location[DW_OP_reg4]
DW$664	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$664, DW_AT_location[DW_OP_reg5]
DW$665	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$665, DW_AT_location[DW_OP_reg6]
DW$666	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$666, DW_AT_location[DW_OP_reg7]
DW$667	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$667, DW_AT_location[DW_OP_reg8]
DW$668	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$668, DW_AT_location[DW_OP_reg9]
DW$669	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$669, DW_AT_location[DW_OP_reg10]
DW$670	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$670, DW_AT_location[DW_OP_reg11]
DW$671	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$671, DW_AT_location[DW_OP_reg12]
DW$672	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$672, DW_AT_location[DW_OP_reg13]
DW$673	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$673, DW_AT_location[DW_OP_reg14]
DW$674	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$674, DW_AT_location[DW_OP_reg15]
DW$675	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$675, DW_AT_location[DW_OP_reg16]
DW$676	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$676, DW_AT_location[DW_OP_reg17]
DW$677	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$677, DW_AT_location[DW_OP_reg18]
DW$678	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$678, DW_AT_location[DW_OP_reg19]
DW$679	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$679, DW_AT_location[DW_OP_reg20]
DW$680	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$680, DW_AT_location[DW_OP_reg21]
DW$681	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$681, DW_AT_location[DW_OP_reg22]
DW$682	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$682, DW_AT_location[DW_OP_reg23]
DW$683	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$683, DW_AT_location[DW_OP_reg24]
DW$684	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$684, DW_AT_location[DW_OP_reg25]
DW$685	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$685, DW_AT_location[DW_OP_reg26]
DW$686	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$686, DW_AT_location[DW_OP_reg27]
DW$687	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$687, DW_AT_location[DW_OP_reg28]
DW$688	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$688, DW_AT_location[DW_OP_reg29]
DW$689	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$689, DW_AT_location[DW_OP_reg30]
DW$690	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$690, DW_AT_location[DW_OP_reg31]
DW$691	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$691, DW_AT_location[DW_OP_regx 0x20]
DW$692	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$692, DW_AT_location[DW_OP_regx 0x21]
DW$693	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$693, DW_AT_location[DW_OP_regx 0x22]
DW$694	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$694, DW_AT_location[DW_OP_regx 0x23]
DW$695	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$695, DW_AT_location[DW_OP_regx 0x24]
DW$696	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$696, DW_AT_location[DW_OP_regx 0x25]
DW$697	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$697, DW_AT_location[DW_OP_regx 0x26]
DW$698	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$698, DW_AT_location[DW_OP_regx 0x27]
DW$699	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$699, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

