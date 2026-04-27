;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Wed Sep 14 09:00:56 2016                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("man.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)
;**************************************************************
;* CINIT RECORDS                                              *
;**************************************************************
	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_iSensorInRepalceMode+0,32
	.field  	0,16			; _iSensorInRepalceMode @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_iSensorInResetMode+0,32
	.field  	0,16			; _iSensorInResetMode @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_iSensorInRepalceTimer+0,32
	.field  	0,16			; _iSensorInRepalceTimer @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_iSensorInRepalce+0,32
	.field  	100,16			; _iSensorInRepalce @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_wFiveRevTime+0,32
	.field  	0,32			; _wFiveRevTime @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_iSensorToMonitor+0,32
	.field  	0,16			; _iSensorToMonitor @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_SensorSlowDowntatus+0,32
	.field  	0,16			; _SensorSlowDowntatus @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_iDmPause+0,32
	.field  	0,16			; _iDmPause @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_iBarred+0,32
	.field  	0,16			; _iBarred @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_iDeltaRPM15+0,32
	.field  	0,16			; _iDeltaRPM15 @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_PauseAlarm+0,32
	.field  	0,16			; _PauseAlarm @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_cppRapidReset+0,32
	.field  	0,16			; _cppRapidReset @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_delatloadgreater7+0,32
	.field  	0,16			; _delatloadgreater7 @ 0


DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("abs"), DW_AT_symbol_name("_abs")
	.dwattr DW$1, DW_AT_type(*DW$T$10)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$1


DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("fabs"), DW_AT_symbol_name("_fabs")
	.dwattr DW$3, DW_AT_type(*DW$T$17)
	.dwattr DW$3, DW_AT_declaration(0x01)
	.dwattr DW$3, DW_AT_external(0x01)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$17)
	.dwendtag DW$3


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("memset"), DW_AT_symbol_name("_memset")
	.dwattr DW$5, DW_AT_type(*DW$T$3)
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$74)
	.dwendtag DW$5


DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("exp"), DW_AT_symbol_name("_exp")
	.dwattr DW$9, DW_AT_type(*DW$T$17)
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$17)
	.dwendtag DW$9


DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("MANCalibrationStages"), DW_AT_symbol_name("_MANCalibrationStages")
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)

DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("Status3Flags"), DW_AT_symbol_name("_Status3Flags")
	.dwattr DW$12, DW_AT_type(*DW$T$145)
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)
DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$12


DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("SetAlarmEvent"), DW_AT_symbol_name("_SetAlarmEvent")
	.dwattr DW$14, DW_AT_declaration(0x01)
	.dwattr DW$14, DW_AT_external(0x01)
DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$14


DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearAlarmEvent"), DW_AT_symbol_name("_ClearAlarmEvent")
	.dwattr DW$16, DW_AT_declaration(0x01)
	.dwattr DW$16, DW_AT_external(0x01)
DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$16


DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("SetBitEvent"), DW_AT_symbol_name("_SetBitEvent")
	.dwattr DW$18, DW_AT_declaration(0x01)
	.dwattr DW$18, DW_AT_external(0x01)
DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$18


DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("CheckAlarmBitSet"), DW_AT_symbol_name("_CheckAlarmBitSet")
	.dwattr DW$20, DW_AT_type(*DW$T$10)
	.dwattr DW$20, DW_AT_declaration(0x01)
	.dwattr DW$20, DW_AT_external(0x01)
DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$20


DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("MANCompTabletoSDCardFile"), DW_AT_symbol_name("_MANCompTabletoSDCardFile")
	.dwattr DW$22, DW_AT_type(*DW$T$10)
	.dwattr DW$22, DW_AT_declaration(0x01)
	.dwattr DW$22, DW_AT_external(0x01)
DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$104)
DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$22


DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("FloattoIntRound"), DW_AT_symbol_name("_FloattoIntRound")
	.dwattr DW$25, DW_AT_type(*DW$T$10)
	.dwattr DW$25, DW_AT_declaration(0x01)
	.dwattr DW$25, DW_AT_external(0x01)

DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadSpeedCompStructfromNVMEM"), DW_AT_symbol_name("_ReadSpeedCompStructfromNVMEM")
	.dwattr DW$26, DW_AT_type(*DW$T$10)
	.dwattr DW$26, DW_AT_declaration(0x01)
	.dwattr DW$26, DW_AT_external(0x01)

DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadNVMemory"), DW_AT_symbol_name("_ReadNVMemory")
	.dwattr DW$27, DW_AT_type(*DW$T$10)
	.dwattr DW$27, DW_AT_declaration(0x01)
	.dwattr DW$27, DW_AT_external(0x01)

DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteNVMemory"), DW_AT_symbol_name("_WriteNVMemory")
	.dwattr DW$28, DW_AT_type(*DW$T$10)
	.dwattr DW$28, DW_AT_declaration(0x01)
	.dwattr DW$28, DW_AT_external(0x01)

DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("CheckBitSet"), DW_AT_symbol_name("_CheckBitSet")
	.dwattr DW$29, DW_AT_type(*DW$T$10)
	.dwattr DW$29, DW_AT_declaration(0x01)
	.dwattr DW$29, DW_AT_external(0x01)

DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("BitSet"), DW_AT_symbol_name("_BitSet")
	.dwattr DW$30, DW_AT_type(*DW$T$10)
	.dwattr DW$30, DW_AT_declaration(0x01)
	.dwattr DW$30, DW_AT_external(0x01)

DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("BitClear"), DW_AT_symbol_name("_BitClear")
	.dwattr DW$31, DW_AT_type(*DW$T$10)
	.dwattr DW$31, DW_AT_declaration(0x01)
	.dwattr DW$31, DW_AT_external(0x01)
DW$32	.dwtag  DW_TAG_variable, DW_AT_name("cppsettings"), DW_AT_symbol_name("_cppsettings")
	.dwattr DW$32, DW_AT_type(*DW$T$161)
	.dwattr DW$32, DW_AT_declaration(0x01)
	.dwattr DW$32, DW_AT_external(0x01)
DW$33	.dwtag  DW_TAG_variable, DW_AT_name("loadlevel"), DW_AT_symbol_name("_loadlevel")
	.dwattr DW$33, DW_AT_type(*DW$T$162)
	.dwattr DW$33, DW_AT_declaration(0x01)
	.dwattr DW$33, DW_AT_external(0x01)
DW$34	.dwtag  DW_TAG_variable, DW_AT_name("settings"), DW_AT_symbol_name("_settings")
	.dwattr DW$34, DW_AT_type(*DW$T$163)
	.dwattr DW$34, DW_AT_declaration(0x01)
	.dwattr DW$34, DW_AT_external(0x01)
DW$35	.dwtag  DW_TAG_variable, DW_AT_name("motion"), DW_AT_symbol_name("_motion")
	.dwattr DW$35, DW_AT_type(*DW$T$164)
	.dwattr DW$35, DW_AT_declaration(0x01)
	.dwattr DW$35, DW_AT_external(0x01)
DW$36	.dwtag  DW_TAG_variable, DW_AT_name("timers"), DW_AT_symbol_name("_timers")
	.dwattr DW$36, DW_AT_type(*DW$T$166)
	.dwattr DW$36, DW_AT_declaration(0x01)
	.dwattr DW$36, DW_AT_external(0x01)
DW$37	.dwtag  DW_TAG_variable, DW_AT_name("allsensors"), DW_AT_symbol_name("_allsensors")
	.dwattr DW$37, DW_AT_type(*DW$T$168)
	.dwattr DW$37, DW_AT_declaration(0x01)
	.dwattr DW$37, DW_AT_external(0x01)
DW$38	.dwtag  DW_TAG_variable, DW_AT_name("cylinders"), DW_AT_symbol_name("_cylinders")
	.dwattr DW$38, DW_AT_type(*DW$T$172)
	.dwattr DW$38, DW_AT_declaration(0x01)
	.dwattr DW$38, DW_AT_external(0x01)
DW$39	.dwtag  DW_TAG_variable, DW_AT_name("config"), DW_AT_symbol_name("_config")
	.dwattr DW$39, DW_AT_type(*DW$T$175)
	.dwattr DW$39, DW_AT_declaration(0x01)
	.dwattr DW$39, DW_AT_external(0x01)
_fRapidFast:	.usect	".ebss",56,1,1
DW$40	.dwtag  DW_TAG_variable, DW_AT_name("fRapidFast"), DW_AT_symbol_name("_fRapidFast")
	.dwattr DW$40, DW_AT_type(*DW$T$138)
	.dwattr DW$40, DW_AT_location[DW_OP_addr _fRapidFast]
_fRapidSlow:	.usect	".ebss",56,1,1
DW$41	.dwtag  DW_TAG_variable, DW_AT_name("fRapidSlow"), DW_AT_symbol_name("_fRapidSlow")
	.dwattr DW$41, DW_AT_type(*DW$T$138)
	.dwattr DW$41, DW_AT_location[DW_OP_addr _fRapidSlow]
_iVauleCount:	.usect	".ebss",28,1,0
DW$42	.dwtag  DW_TAG_variable, DW_AT_name("iVauleCount"), DW_AT_symbol_name("_iVauleCount")
	.dwattr DW$42, DW_AT_type(*DW$T$50)
	.dwattr DW$42, DW_AT_location[DW_OP_addr _iVauleCount]
_fRapidWearAverage:	.usect	".ebss",56,1,1
DW$43	.dwtag  DW_TAG_variable, DW_AT_name("fRapidWearAverage"), DW_AT_symbol_name("_fRapidWearAverage")
	.dwattr DW$43, DW_AT_type(*DW$T$138)
	.dwattr DW$43, DW_AT_location[DW_OP_addr _fRapidWearAverage]
_fSpeedCompensated5Total:	.usect	".ebss",56,1,1
DW$44	.dwtag  DW_TAG_variable, DW_AT_name("fSpeedCompensated5Total"), DW_AT_symbol_name("_fSpeedCompensated5Total")
	.dwattr DW$44, DW_AT_type(*DW$T$138)
	.dwattr DW$44, DW_AT_location[DW_OP_addr _fSpeedCompensated5Total]
_wSpeedCompensated5Cnt:	.usect	".ebss",2,1,1
DW$45	.dwtag  DW_TAG_variable, DW_AT_name("wSpeedCompensated5Cnt"), DW_AT_symbol_name("_wSpeedCompensated5Cnt")
	.dwattr DW$45, DW_AT_type(*DW$T$13)
	.dwattr DW$45, DW_AT_location[DW_OP_addr _wSpeedCompensated5Cnt]
_fSpeedCompensated5Avg:	.usect	".ebss",56,1,1
DW$46	.dwtag  DW_TAG_variable, DW_AT_name("fSpeedCompensated5Avg"), DW_AT_symbol_name("_fSpeedCompensated5Avg")
	.dwattr DW$46, DW_AT_type(*DW$T$138)
	.dwattr DW$46, DW_AT_location[DW_OP_addr _fSpeedCompensated5Avg]
DW$47	.dwtag  DW_TAG_variable, DW_AT_name("calibration"), DW_AT_symbol_name("_calibration")
	.dwattr DW$47, DW_AT_type(*DW$T$176)
	.dwattr DW$47, DW_AT_declaration(0x01)
	.dwattr DW$47, DW_AT_external(0x01)
DW$48	.dwtag  DW_TAG_variable, DW_AT_name("speedcompcoeffs"), DW_AT_symbol_name("_speedcompcoeffs")
	.dwattr DW$48, DW_AT_type(*DW$T$178)
	.dwattr DW$48, DW_AT_declaration(0x01)
	.dwattr DW$48, DW_AT_external(0x01)
DW$49	.dwtag  DW_TAG_variable, DW_AT_name("iRepaidWearReset"), DW_AT_symbol_name("_iRepaidWearReset")
	.dwattr DW$49, DW_AT_type(*DW$T$129)
	.dwattr DW$49, DW_AT_declaration(0x01)
	.dwattr DW$49, DW_AT_external(0x01)
DW$50	.dwtag  DW_TAG_variable, DW_AT_name("iStartRapidWear"), DW_AT_symbol_name("_iStartRapidWear")
	.dwattr DW$50, DW_AT_type(*DW$T$129)
	.dwattr DW$50, DW_AT_declaration(0x01)
	.dwattr DW$50, DW_AT_external(0x01)
DW$51	.dwtag  DW_TAG_variable, DW_AT_name("noisefilterLOAD"), DW_AT_symbol_name("_noisefilterLOAD")
	.dwattr DW$51, DW_AT_type(*DW$T$50)
	.dwattr DW$51, DW_AT_declaration(0x01)
	.dwattr DW$51, DW_AT_external(0x01)
DW$52	.dwtag  DW_TAG_variable, DW_AT_name("damagemonignore"), DW_AT_symbol_name("_damagemonignore")
	.dwattr DW$52, DW_AT_type(*DW$T$50)
	.dwattr DW$52, DW_AT_declaration(0x01)
	.dwattr DW$52, DW_AT_external(0x01)
DW$53	.dwtag  DW_TAG_variable, DW_AT_name("status3"), DW_AT_symbol_name("_status3")
	.dwattr DW$53, DW_AT_type(*DW$T$147)
	.dwattr DW$53, DW_AT_declaration(0x01)
	.dwattr DW$53, DW_AT_external(0x01)
DW$54	.dwtag  DW_TAG_variable, DW_AT_name("alarms"), DW_AT_symbol_name("_alarms")
	.dwattr DW$54, DW_AT_type(*DW$T$180)
	.dwattr DW$54, DW_AT_declaration(0x01)
	.dwattr DW$54, DW_AT_external(0x01)
DW$55	.dwtag  DW_TAG_variable, DW_AT_name("bitalarmlist"), DW_AT_symbol_name("_bitalarmlist")
	.dwattr DW$55, DW_AT_type(*DW$T$130)
	.dwattr DW$55, DW_AT_declaration(0x01)
	.dwattr DW$55, DW_AT_external(0x01)
DW$56	.dwtag  DW_TAG_variable, DW_AT_name("sdcarddir"), DW_AT_symbol_name("_sdcarddir")
	.dwattr DW$56, DW_AT_type(*DW$T$184)
	.dwattr DW$56, DW_AT_declaration(0x01)
	.dwattr DW$56, DW_AT_external(0x01)
DW$57	.dwtag  DW_TAG_variable, DW_AT_name("slave485mb"), DW_AT_symbol_name("_slave485mb")
	.dwattr DW$57, DW_AT_type(*DW$T$187)
	.dwattr DW$57, DW_AT_declaration(0x01)
	.dwattr DW$57, DW_AT_external(0x01)
	.global	_mbupdate
_mbupdate:	.usect	".ebss",1,1,0
DW$58	.dwtag  DW_TAG_variable, DW_AT_name("mbupdate"), DW_AT_symbol_name("_mbupdate")
	.dwattr DW$58, DW_AT_location[DW_OP_addr _mbupdate]
	.dwattr DW$58, DW_AT_type(*DW$T$188)
	.dwattr DW$58, DW_AT_external(0x01)
	.global	_sensor
_sensor:	.usect	".ebss",504,1,1
DW$59	.dwtag  DW_TAG_variable, DW_AT_name("sensor"), DW_AT_symbol_name("_sensor")
	.dwattr DW$59, DW_AT_location[DW_OP_addr _sensor]
	.dwattr DW$59, DW_AT_type(*DW$T$190)
	.dwattr DW$59, DW_AT_external(0x01)
	.global	_function
_function:	.usect	".ebss",8,1,0
DW$60	.dwtag  DW_TAG_variable, DW_AT_name("function"), DW_AT_symbol_name("_function")
	.dwattr DW$60, DW_AT_location[DW_OP_addr _function]
	.dwattr DW$60, DW_AT_type(*DW$T$193)
	.dwattr DW$60, DW_AT_external(0x01)
	.global	_sensortempval
_sensortempval:	.usect	".ebss",28,1,0
DW$61	.dwtag  DW_TAG_variable, DW_AT_name("sensortempval"), DW_AT_symbol_name("_sensortempval")
	.dwattr DW$61, DW_AT_location[DW_OP_addr _sensortempval]
	.dwattr DW$61, DW_AT_type(*DW$T$50)
	.dwattr DW$61, DW_AT_external(0x01)
	.global	_prewarn
_prewarn:	.usect	".ebss",170,1,1
DW$62	.dwtag  DW_TAG_variable, DW_AT_name("prewarn"), DW_AT_symbol_name("_prewarn")
	.dwattr DW$62, DW_AT_location[DW_OP_addr _prewarn]
	.dwattr DW$62, DW_AT_type(*DW$T$194)
	.dwattr DW$62, DW_AT_external(0x01)
	.global	_engine
_engine:	.usect	".ebss",2,1,1
DW$63	.dwtag  DW_TAG_variable, DW_AT_name("engine"), DW_AT_symbol_name("_engine")
	.dwattr DW$63, DW_AT_location[DW_OP_addr _engine]
	.dwattr DW$63, DW_AT_type(*DW$T$196)
	.dwattr DW$63, DW_AT_external(0x01)
	.global	_offsetA
_offsetA:	.usect	".ebss",28,1,0
DW$64	.dwtag  DW_TAG_variable, DW_AT_name("offsetA"), DW_AT_symbol_name("_offsetA")
	.dwattr DW$64, DW_AT_location[DW_OP_addr _offsetA]
	.dwattr DW$64, DW_AT_type(*DW$T$198)
	.dwattr DW$64, DW_AT_external(0x01)
	.global	_offsetB
_offsetB:	.usect	".ebss",28,1,0
DW$65	.dwtag  DW_TAG_variable, DW_AT_name("offsetB"), DW_AT_symbol_name("_offsetB")
	.dwattr DW$65, DW_AT_location[DW_OP_addr _offsetB]
	.dwattr DW$65, DW_AT_type(*DW$T$198)
	.dwattr DW$65, DW_AT_external(0x01)
	.global	_iSensorInRepalceMode
_iSensorInRepalceMode:	.usect	".ebss",1,1,0
DW$66	.dwtag  DW_TAG_variable, DW_AT_name("iSensorInRepalceMode"), DW_AT_symbol_name("_iSensorInRepalceMode")
	.dwattr DW$66, DW_AT_location[DW_OP_addr _iSensorInRepalceMode]
	.dwattr DW$66, DW_AT_type(*DW$T$10)
	.dwattr DW$66, DW_AT_external(0x01)
	.global	_iSensorInResetMode
_iSensorInResetMode:	.usect	".ebss",1,1,0
DW$67	.dwtag  DW_TAG_variable, DW_AT_name("iSensorInResetMode"), DW_AT_symbol_name("_iSensorInResetMode")
	.dwattr DW$67, DW_AT_location[DW_OP_addr _iSensorInResetMode]
	.dwattr DW$67, DW_AT_type(*DW$T$10)
	.dwattr DW$67, DW_AT_external(0x01)
	.global	_iSensorInRepalceTimer
_iSensorInRepalceTimer:	.usect	".ebss",1,1,0
DW$68	.dwtag  DW_TAG_variable, DW_AT_name("iSensorInRepalceTimer"), DW_AT_symbol_name("_iSensorInRepalceTimer")
	.dwattr DW$68, DW_AT_location[DW_OP_addr _iSensorInRepalceTimer]
	.dwattr DW$68, DW_AT_type(*DW$T$10)
	.dwattr DW$68, DW_AT_external(0x01)
	.global	_iSensorInRepalce
_iSensorInRepalce:	.usect	".ebss",1,1,0
DW$69	.dwtag  DW_TAG_variable, DW_AT_name("iSensorInRepalce"), DW_AT_symbol_name("_iSensorInRepalce")
	.dwattr DW$69, DW_AT_location[DW_OP_addr _iSensorInRepalce]
	.dwattr DW$69, DW_AT_type(*DW$T$10)
	.dwattr DW$69, DW_AT_external(0x01)
	.global	_wFiveRevTime
_wFiveRevTime:	.usect	".ebss",2,1,1
DW$70	.dwtag  DW_TAG_variable, DW_AT_name("wFiveRevTime"), DW_AT_symbol_name("_wFiveRevTime")
	.dwattr DW$70, DW_AT_location[DW_OP_addr _wFiveRevTime]
	.dwattr DW$70, DW_AT_type(*DW$T$13)
	.dwattr DW$70, DW_AT_external(0x01)
	.global	_iSensorToMonitor
_iSensorToMonitor:	.usect	".ebss",1,1,0
DW$71	.dwtag  DW_TAG_variable, DW_AT_name("iSensorToMonitor"), DW_AT_symbol_name("_iSensorToMonitor")
	.dwattr DW$71, DW_AT_location[DW_OP_addr _iSensorToMonitor]
	.dwattr DW$71, DW_AT_type(*DW$T$10)
	.dwattr DW$71, DW_AT_external(0x01)
	.global	_SensorSlowDowntatus
_SensorSlowDowntatus:	.usect	".ebss",1,1,0
DW$72	.dwtag  DW_TAG_variable, DW_AT_name("SensorSlowDowntatus"), DW_AT_symbol_name("_SensorSlowDowntatus")
	.dwattr DW$72, DW_AT_location[DW_OP_addr _SensorSlowDowntatus]
	.dwattr DW$72, DW_AT_type(*DW$T$10)
	.dwattr DW$72, DW_AT_external(0x01)
	.global	_iDmPauseDeltaRpm
	.sect	".econst"
	.align	1
_iDmPauseDeltaRpm:
	.field  	15,16			; _iDmPauseDeltaRpm @ 0

DW$73	.dwtag  DW_TAG_variable, DW_AT_name("iDmPauseDeltaRpm"), DW_AT_symbol_name("_iDmPauseDeltaRpm")
	.dwattr DW$73, DW_AT_location[DW_OP_addr _iDmPauseDeltaRpm]
	.dwattr DW$73, DW_AT_type(*DW$T$131)
	.dwattr DW$73, DW_AT_external(0x01)
	.global	_iDmPause
_iDmPause:	.usect	".ebss",1,1,0
DW$74	.dwtag  DW_TAG_variable, DW_AT_name("iDmPause"), DW_AT_symbol_name("_iDmPause")
	.dwattr DW$74, DW_AT_location[DW_OP_addr _iDmPause]
	.dwattr DW$74, DW_AT_type(*DW$T$11)
	.dwattr DW$74, DW_AT_external(0x01)
	.global	_iBarred
_iBarred:	.usect	".ebss",1,1,0
DW$75	.dwtag  DW_TAG_variable, DW_AT_name("iBarred"), DW_AT_symbol_name("_iBarred")
	.dwattr DW$75, DW_AT_location[DW_OP_addr _iBarred]
	.dwattr DW$75, DW_AT_type(*DW$T$11)
	.dwattr DW$75, DW_AT_external(0x01)
	.global	_iDeltaRPM15
_iDeltaRPM15:	.usect	".ebss",1,1,0
DW$76	.dwtag  DW_TAG_variable, DW_AT_name("iDeltaRPM15"), DW_AT_symbol_name("_iDeltaRPM15")
	.dwattr DW$76, DW_AT_location[DW_OP_addr _iDeltaRPM15]
	.dwattr DW$76, DW_AT_type(*DW$T$11)
	.dwattr DW$76, DW_AT_external(0x01)
	.global	_PauseAlarm
_PauseAlarm:	.usect	".ebss",1,1,0
DW$77	.dwtag  DW_TAG_variable, DW_AT_name("PauseAlarm"), DW_AT_symbol_name("_PauseAlarm")
	.dwattr DW$77, DW_AT_location[DW_OP_addr _PauseAlarm]
	.dwattr DW$77, DW_AT_type(*DW$T$11)
	.dwattr DW$77, DW_AT_external(0x01)
	.global	_cppRapidReset
_cppRapidReset:	.usect	".ebss",1,1,0
DW$78	.dwtag  DW_TAG_variable, DW_AT_name("cppRapidReset"), DW_AT_symbol_name("_cppRapidReset")
	.dwattr DW$78, DW_AT_location[DW_OP_addr _cppRapidReset]
	.dwattr DW$78, DW_AT_type(*DW$T$10)
	.dwattr DW$78, DW_AT_external(0x01)
	.global	_delatloadgreater7
_delatloadgreater7:	.usect	".ebss",1,1,0
DW$79	.dwtag  DW_TAG_variable, DW_AT_name("delatloadgreater7"), DW_AT_symbol_name("_delatloadgreater7")
	.dwattr DW$79, DW_AT_location[DW_OP_addr _delatloadgreater7]
	.dwattr DW$79, DW_AT_type(*DW$T$10)
	.dwattr DW$79, DW_AT_external(0x01)
	.global	_man_comptable
_man_comptable:	.usect	".mancomp",4200,0,0
DW$80	.dwtag  DW_TAG_variable, DW_AT_name("man_comptable"), DW_AT_symbol_name("_man_comptable")
	.dwattr DW$80, DW_AT_location[DW_OP_addr _man_comptable]
	.dwattr DW$80, DW_AT_type(*DW$T$98)
	.dwattr DW$80, DW_AT_external(0x01)
	.global	_modalsetcounters
_modalsetcounters:	.usect	".ebss",28,1,0
DW$81	.dwtag  DW_TAG_variable, DW_AT_name("modalsetcounters"), DW_AT_symbol_name("_modalsetcounters")
	.dwattr DW$81, DW_AT_location[DW_OP_addr _modalsetcounters]
	.dwattr DW$81, DW_AT_type(*DW$T$132)
	.dwattr DW$81, DW_AT_external(0x01)
	.global	_modalresetcounters
_modalresetcounters:	.usect	".ebss",28,1,0
DW$82	.dwtag  DW_TAG_variable, DW_AT_name("modalresetcounters"), DW_AT_symbol_name("_modalresetcounters")
	.dwattr DW$82, DW_AT_location[DW_OP_addr _modalresetcounters]
	.dwattr DW$82, DW_AT_type(*DW$T$132)
	.dwattr DW$82, DW_AT_external(0x01)
	.global	_checkmanalarms
_checkmanalarms:	.usect	".ebss",28,1,0
DW$83	.dwtag  DW_TAG_variable, DW_AT_name("checkmanalarms"), DW_AT_symbol_name("_checkmanalarms")
	.dwattr DW$83, DW_AT_location[DW_OP_addr _checkmanalarms]
	.dwattr DW$83, DW_AT_type(*DW$T$132)
	.dwattr DW$83, DW_AT_external(0x01)
	.global	_manrefsum
_manrefsum:	.usect	".ebss",28,1,0
DW$84	.dwtag  DW_TAG_variable, DW_AT_name("manrefsum"), DW_AT_symbol_name("_manrefsum")
	.dwattr DW$84, DW_AT_location[DW_OP_addr _manrefsum]
	.dwattr DW$84, DW_AT_type(*DW$T$201)
	.dwattr DW$84, DW_AT_external(0x01)
	.global	_manref
_manref:	.usect	".ebss",280,1,1
DW$85	.dwtag  DW_TAG_variable, DW_AT_name("manref"), DW_AT_symbol_name("_manref")
	.dwattr DW$85, DW_AT_location[DW_OP_addr _manref]
	.dwattr DW$85, DW_AT_type(*DW$T$205)
	.dwattr DW$85, DW_AT_external(0x01)
	.global	_damagemon
_damagemon:	.usect	".ebss",16,1,0
DW$86	.dwtag  DW_TAG_variable, DW_AT_name("damagemon"), DW_AT_symbol_name("_damagemon")
	.dwattr DW$86, DW_AT_location[DW_OP_addr _damagemon]
	.dwattr DW$86, DW_AT_type(*DW$T$208)
	.dwattr DW$86, DW_AT_external(0x01)
	.global	_dynalarmlevels
_dynalarmlevels:	.usect	".ebss",36,1,1
DW$87	.dwtag  DW_TAG_variable, DW_AT_name("dynalarmlevels"), DW_AT_symbol_name("_dynalarmlevels")
	.dwattr DW$87, DW_AT_location[DW_OP_addr _dynalarmlevels]
	.dwattr DW$87, DW_AT_type(*DW$T$210)
	.dwattr DW$87, DW_AT_external(0x01)
	.global	_loaddynalarmlevels
_loaddynalarmlevels:	.usect	".ebss",36,1,1
DW$88	.dwtag  DW_TAG_variable, DW_AT_name("loaddynalarmlevels"), DW_AT_symbol_name("_loaddynalarmlevels")
	.dwattr DW$88, DW_AT_location[DW_OP_addr _loaddynalarmlevels]
	.dwattr DW$88, DW_AT_type(*DW$T$210)
	.dwattr DW$88, DW_AT_external(0x01)
	.global	_damalarms
_damalarms:	.usect	".ebss",4,1,0
DW$89	.dwtag  DW_TAG_variable, DW_AT_name("damalarms"), DW_AT_symbol_name("_damalarms")
	.dwattr DW$89, DW_AT_location[DW_OP_addr _damalarms]
	.dwattr DW$89, DW_AT_type(*DW$T$211)
	.dwattr DW$89, DW_AT_external(0x01)
_rpmuse$1:	.usect	".ebss",1,1,0
;	C:\CCStudio_v3.3\C2000\cgtools\bin\opt2000.exe C:\Users\Andrew\AppData\Local\Temp\TI4922 C:\Users\Andrew\AppData\Local\Temp\TI4924 
;	C:\CCStudio_v3.3\C2000\cgtools\bin\ac2000.exe -q -D_INLINE -DLARGE_MODEL -IC:/CCStudio_v3.3/C2000/xdais/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/bios/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/rtdx/include/c2000 -IC:/CCStudio_v3.3/C2000/cgtools/include --version=28 --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\Andrew\AppData\Local\Temp\TI4922 --template_info_file C:\Users\Andrew\AppData\Local\Temp\TI4926 --object_file 
	.sect	".text"
	.global	_ClearMANTable

DW$90	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearMANTable"), DW_AT_symbol_name("_ClearMANTable")
	.dwattr DW$90, DW_AT_low_pc(_ClearMANTable)
	.dwattr DW$90, DW_AT_high_pc(0x00)
	.dwattr DW$90, DW_AT_begin_file("man.c")
	.dwattr DW$90, DW_AT_begin_line(0x78)
	.dwattr DW$90, DW_AT_begin_column(0x06)
	.dwattr DW$90, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$90, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",121,1

;***************************************************************
;* FNAME: _ClearMANTable                FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_ClearMANTable:
;* AL    assigned to _type
DW$91	.dwtag  DW_TAG_formal_parameter, DW_AT_name("type"), DW_AT_symbol_name("_type")
	.dwattr DW$91, DW_AT_type(*DW$T$10)
	.dwattr DW$91, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVB      XAR6,#0
        SETC      SXM
	.dwpsn	"man.c",125,0
        MOVZ      AR1,AL                ; |121| 
L1:    
DW$L$_ClearMANTable$2$B:
	.dwpsn	"man.c",126,0
	.dwpsn	"man.c",127,0
        MOVB      XAR7,#0
DW$L$_ClearMANTable$2$E:
L2:    
DW$L$_ClearMANTable$3$B:
	.dwpsn	"man.c",128,0
        MOV       T,AR6
        MOVL      XAR4,#_man_comptable  ; |129| 
        MPYB      ACC,T,#28             ; |129| 
        ADD       ACC,AR7               ; |129| 
        ADDL      XAR4,ACC
        MOV       AL,AR7                ; |129| 
        ADDB      AL,#1                 ; |127| 
        CMPB      AL,#28                ; |127| 
        MOV       *+XAR4[0],#0          ; |129| 
        MOVZ      AR7,AL                ; |127| 
	.dwpsn	"man.c",130,0
        BF        L2,LT                 ; |127| 
        ; branchcc occurs ; |127| 
DW$L$_ClearMANTable$3$E:
DW$L$_ClearMANTable$4$B:
        MOV       AL,AR6
        ADDB      AL,#1                 ; |125| 
        MOVZ      AR6,AL                ; |125| 
        CMPB      AL,#150               ; |125| 
	.dwpsn	"man.c",131,0
        BF        L1,LT                 ; |125| 
        ; branchcc occurs ; |125| 
DW$L$_ClearMANTable$4$E:
        LCR       #_WriteMANCompTabletoNVMEM ; |132| 
        ; call occurs [#_WriteMANCompTabletoNVMEM] ; |132| 
        MOV       AL,AR1                ; |132| 
        BF        L3,NEQ                ; |135| 
        ; branchcc occurs ; |135| 
        MOVB      AL,#0
        MOVL      XAR4,#_sdcarddir+27   ; |136| 
        LCR       #_MANCompTabletoSDCardFile ; |136| 
        ; call occurs [#_MANCompTabletoSDCardFile] ; |136| 
        BF        L4,UNC                ; |137| 
        ; branch occurs ; |137| 
L3:    
        MOVW      DP,#_settings+10
        MOV       @_settings+10,#2      ; |138| 
L4:    
        MOVL      XAR1,*--SP
	.dwpsn	"man.c",141,1
        LRETR
        ; return occurs

DW$92	.dwtag  DW_TAG_loop
	.dwattr DW$92, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L1:1:1473840056")
	.dwattr DW$92, DW_AT_begin_file("man.c")
	.dwattr DW$92, DW_AT_begin_line(0x7d)
	.dwattr DW$92, DW_AT_end_line(0x83)
DW$93	.dwtag  DW_TAG_loop_range
	.dwattr DW$93, DW_AT_low_pc(DW$L$_ClearMANTable$2$B)
	.dwattr DW$93, DW_AT_high_pc(DW$L$_ClearMANTable$2$E)
DW$94	.dwtag  DW_TAG_loop_range
	.dwattr DW$94, DW_AT_low_pc(DW$L$_ClearMANTable$4$B)
	.dwattr DW$94, DW_AT_high_pc(DW$L$_ClearMANTable$4$E)

DW$95	.dwtag  DW_TAG_loop
	.dwattr DW$95, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L2:2:1473840056")
	.dwattr DW$95, DW_AT_begin_file("man.c")
	.dwattr DW$95, DW_AT_begin_line(0x7f)
	.dwattr DW$95, DW_AT_end_line(0x82)
DW$96	.dwtag  DW_TAG_loop_range
	.dwattr DW$96, DW_AT_low_pc(DW$L$_ClearMANTable$3$B)
	.dwattr DW$96, DW_AT_high_pc(DW$L$_ClearMANTable$3$E)
	.dwendtag DW$95

	.dwendtag DW$92

	.dwattr DW$90, DW_AT_end_file("man.c")
	.dwattr DW$90, DW_AT_end_line(0x8d)
	.dwattr DW$90, DW_AT_end_column(0x01)
	.dwendtag DW$90

	.sect	".text"
	.global	_ClearSelectiveMANTable

DW$97	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearSelectiveMANTable"), DW_AT_symbol_name("_ClearSelectiveMANTable")
	.dwattr DW$97, DW_AT_low_pc(_ClearSelectiveMANTable)
	.dwattr DW$97, DW_AT_high_pc(0x00)
	.dwattr DW$97, DW_AT_begin_file("man.c")
	.dwattr DW$97, DW_AT_begin_line(0x91)
	.dwattr DW$97, DW_AT_begin_column(0x06)
	.dwattr DW$97, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$97, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",146,1

;***************************************************************
;* FNAME: _ClearSelectiveMANTable       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ClearSelectiveMANTable:
        SETC      SXM
	.dwpsn	"man.c",150,0
        MOVB      XAR7,#0
L5:    
DW$L$_ClearSelectiveMANTable$2$B:
	.dwpsn	"man.c",151,0
        MOV       T,AR7                 ; |153| 
        MOVL      XAR4,#_sensor         ; |153| 
        MPYB      ACC,T,#18             ; |153| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#1          ; |153| 
        BF        L7,NTC                ; |153| 
        ; branchcc occurs ; |153| 
DW$L$_ClearSelectiveMANTable$2$E:
DW$L$_ClearSelectiveMANTable$3$B:
	.dwpsn	"man.c",156,0
        MOVB      XAR6,#0
DW$L$_ClearSelectiveMANTable$3$E:
L6:    
DW$L$_ClearSelectiveMANTable$4$B:
        MOV       T,AR6
        MOVL      XAR4,#_man_comptable  ; |156| 
        MPYB      ACC,T,#28             ; |156| 
        ADD       ACC,AR7               ; |156| 
        ADDL      XAR4,ACC
        MOV       AL,AR6                ; |156| 
        ADDB      AL,#1                 ; |156| 
        MOVZ      AR6,AL                ; |156| 
        CMPB      AL,#150               ; |156| 
        MOV       *+XAR4[0],#0          ; |156| 
        BF        L6,LT                 ; |156| 
        ; branchcc occurs ; |156| 
DW$L$_ClearSelectiveMANTable$4$E:
L7:    
DW$L$_ClearSelectiveMANTable$5$B:
        MOV       AL,AR7
        ADDB      AL,#1                 ; |150| 
        MOVZ      AR7,AL                ; |150| 
        CMPB      AL,#28                ; |150| 
	.dwpsn	"man.c",158,0
        BF        L5,LT                 ; |150| 
        ; branchcc occurs ; |150| 
DW$L$_ClearSelectiveMANTable$5$E:
        LCR       #_WriteMANCompTabletoNVMEM ; |160| 
        ; call occurs [#_WriteMANCompTabletoNVMEM] ; |160| 
        MOVB      AL,#0
        MOVL      XAR4,#_sdcarddir+27   ; |161| 
        LCR       #_MANCompTabletoSDCardFile ; |161| 
        ; call occurs [#_MANCompTabletoSDCardFile] ; |161| 
	.dwpsn	"man.c",162,1
        LRETR
        ; return occurs

DW$98	.dwtag  DW_TAG_loop
	.dwattr DW$98, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L5:1:1473840056")
	.dwattr DW$98, DW_AT_begin_file("man.c")
	.dwattr DW$98, DW_AT_begin_line(0x96)
	.dwattr DW$98, DW_AT_end_line(0x9e)
DW$99	.dwtag  DW_TAG_loop_range
	.dwattr DW$99, DW_AT_low_pc(DW$L$_ClearSelectiveMANTable$2$B)
	.dwattr DW$99, DW_AT_high_pc(DW$L$_ClearSelectiveMANTable$2$E)
DW$100	.dwtag  DW_TAG_loop_range
	.dwattr DW$100, DW_AT_low_pc(DW$L$_ClearSelectiveMANTable$3$B)
	.dwattr DW$100, DW_AT_high_pc(DW$L$_ClearSelectiveMANTable$3$E)
DW$101	.dwtag  DW_TAG_loop_range
	.dwattr DW$101, DW_AT_low_pc(DW$L$_ClearSelectiveMANTable$5$B)
	.dwattr DW$101, DW_AT_high_pc(DW$L$_ClearSelectiveMANTable$5$E)

DW$102	.dwtag  DW_TAG_loop
	.dwattr DW$102, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L6:2:1473840056")
	.dwattr DW$102, DW_AT_begin_file("man.c")
	.dwattr DW$102, DW_AT_begin_line(0x9c)
	.dwattr DW$102, DW_AT_end_line(0x9c)
DW$103	.dwtag  DW_TAG_loop_range
	.dwattr DW$103, DW_AT_low_pc(DW$L$_ClearSelectiveMANTable$4$B)
	.dwattr DW$103, DW_AT_high_pc(DW$L$_ClearSelectiveMANTable$4$E)
	.dwendtag DW$102

	.dwendtag DW$98

	.dwattr DW$97, DW_AT_end_file("man.c")
	.dwattr DW$97, DW_AT_end_line(0xa2)
	.dwattr DW$97, DW_AT_end_column(0x01)
	.dwendtag DW$97

	.sect	".text"
	.global	_SetupNormalModeAlarmLevels

DW$104	.dwtag  DW_TAG_subprogram, DW_AT_name("SetupNormalModeAlarmLevels"), DW_AT_symbol_name("_SetupNormalModeAlarmLevels")
	.dwattr DW$104, DW_AT_low_pc(_SetupNormalModeAlarmLevels)
	.dwattr DW$104, DW_AT_high_pc(0x00)
	.dwattr DW$104, DW_AT_begin_file("man.c")
	.dwattr DW$104, DW_AT_begin_line(0xa4)
	.dwattr DW$104, DW_AT_begin_column(0x06)
	.dwattr DW$104, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$104, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",165,1

;***************************************************************
;* FNAME: _SetupNormalModeAlarmLevels   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SetupNormalModeAlarmLevels:
        MOVW      DP,#_allsensors+9
        MOV       AL,@_allsensors+9     ; |166| 
        MOVW      DP,#_settings+24
        MOV       @_settings+24,AL      ; |166| 
        MOVW      DP,#_allsensors+10
        MOV       AL,@_allsensors+10    ; |167| 
        MOVW      DP,#_settings+25
        MOV       @_settings+25,AL      ; |167| 
        MOVW      DP,#_allsensors+13
        MOV       AL,@_allsensors+13    ; |168| 
        MOVW      DP,#_settings+26
        MOV       @_settings+26,AL      ; |168| 
        MOVW      DP,#_allsensors+14
        MOV       AL,@_allsensors+14    ; |169| 
        MOVW      DP,#_settings+27
        MOV       @_settings+27,AL      ; |169| 
        MOVW      DP,#_allsensors+15
        MOV       AL,@_allsensors+15    ; |170| 
        MOVW      DP,#_settings+28
        MOV       @_settings+28,AL      ; |170| 
	.dwpsn	"man.c",171,1
        LRETR
        ; return occurs
	.dwattr DW$104, DW_AT_end_file("man.c")
	.dwattr DW$104, DW_AT_end_line(0xab)
	.dwattr DW$104, DW_AT_end_column(0x01)
	.dwendtag DW$104

	.sect	".text"
	.global	_InitSensors

DW$105	.dwtag  DW_TAG_subprogram, DW_AT_name("InitSensors"), DW_AT_symbol_name("_InitSensors")
	.dwattr DW$105, DW_AT_low_pc(_InitSensors)
	.dwattr DW$105, DW_AT_high_pc(0x00)
	.dwattr DW$105, DW_AT_begin_file("man.c")
	.dwattr DW$105, DW_AT_begin_line(0xae)
	.dwattr DW$105, DW_AT_begin_column(0x06)
	.dwattr DW$105, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$105, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",175,1

;***************************************************************
;* FNAME: _InitSensors                  FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_InitSensors:
        MOVL      *SP++,XAR1
        MOV       T,#18                 ; |180| 
	.dwpsn	"man.c",178,0
        MOVB      XAR0,#0
L8:    
DW$L$_InitSensors$2$B:
	.dwpsn	"man.c",179,0
        MPYXU     ACC,T,AR0             ; |180| 
        MOVL      XAR4,#_sensor         ; |180| 
        ADDL      XAR4,ACC
        MOVB      XAR1,#11              ; |183| 
        MOV       *+XAR4[5],#0          ; |180| 
        MOV       *+XAR4[6],#0          ; |181| 
        MOV       AH,#0
        MOV       *+XAR4[7],#0          ; |182| 
        MOV       AL,#0
        MOV       *+XAR4[AR1],#0        ; |183| 
        MOVB      XAR1,#8               ; |185| 
        MOV       *+XAR4[2],#0          ; |184| 
        MOVL      *+XAR4[AR1],ACC       ; |185| 
        MOVB      XAR1,#10              ; |186| 
        MOV       *+XAR4[AR1],#0        ; |186| 
        MOVB      XAR1,#16              ; |187| 
        MOV       *+XAR4[AR1],#0        ; |187| 
        MOVB      XAR1,#17              ; |188| 
        MOV       *+XAR4[AR1],#0        ; |188| 
        MOVL      XAR4,#_sensortempval  ; |189| 
        MOV       *+XAR4[AR0],#0        ; |189| 
        ADDB      XAR0,#1               ; |178| 
        MOV       AL,AR0                ; |178| 
        CMPB      AL,#28                ; |178| 
	.dwpsn	"man.c",190,0
        BF        L8,LO                 ; |178| 
        ; branchcc occurs ; |178| 
DW$L$_InitSensors$2$E:
        MOVW      DP,#_mbupdate
        MOV       @_mbupdate,#65535     ; |191| 
        MOVW      DP,#_iRepaidWearReset
        MOV       @_iRepaidWearReset,#0 ; |192| 
        NOP
        MOVL      XAR1,*--SP
	.dwpsn	"man.c",193,1
        LRETR
        ; return occurs

DW$106	.dwtag  DW_TAG_loop
	.dwattr DW$106, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L8:1:1473840056")
	.dwattr DW$106, DW_AT_begin_file("man.c")
	.dwattr DW$106, DW_AT_begin_line(0xb2)
	.dwattr DW$106, DW_AT_end_line(0xbe)
DW$107	.dwtag  DW_TAG_loop_range
	.dwattr DW$107, DW_AT_low_pc(DW$L$_InitSensors$2$B)
	.dwattr DW$107, DW_AT_high_pc(DW$L$_InitSensors$2$E)
	.dwendtag DW$106

	.dwattr DW$105, DW_AT_end_file("man.c")
	.dwattr DW$105, DW_AT_end_line(0xc1)
	.dwattr DW$105, DW_AT_end_column(0x01)
	.dwendtag DW$105

	.sect	".text"
	.global	_InitStatus1Flags

DW$108	.dwtag  DW_TAG_subprogram, DW_AT_name("InitStatus1Flags"), DW_AT_symbol_name("_InitStatus1Flags")
	.dwattr DW$108, DW_AT_low_pc(_InitStatus1Flags)
	.dwattr DW$108, DW_AT_high_pc(0x00)
	.dwattr DW$108, DW_AT_begin_file("man.c")
	.dwattr DW$108, DW_AT_begin_line(0xc7)
	.dwattr DW$108, DW_AT_begin_column(0x06)
	.dwattr DW$108, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$108, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",200,1

;***************************************************************
;* FNAME: _InitStatus1Flags             FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_InitStatus1Flags:
        MOVL      *SP++,XAR1
	.dwpsn	"man.c",204,0
        MOVB      XAR1,#0
L9:    
DW$L$_InitStatus1Flags$2$B:
	.dwpsn	"man.c",205,0
        MOV       AL,AR1                ; |206| 
        LCR       #_Status1Flags        ; |206| 
        ; call occurs [#_Status1Flags] ; |206| 
        ADDB      XAR1,#1               ; |204| 
        MOV       AL,AR1                ; |204| 
        CMPB      AL,#28                ; |204| 
        MOV       *+XAR4[0],#0          ; |207| 
	.dwpsn	"man.c",208,0
        BF        L9,LO                 ; |204| 
        ; branchcc occurs ; |204| 
DW$L$_InitStatus1Flags$2$E:
        MOVL      XAR1,*--SP
	.dwpsn	"man.c",209,1
        LRETR
        ; return occurs

DW$109	.dwtag  DW_TAG_loop
	.dwattr DW$109, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L9:1:1473840056")
	.dwattr DW$109, DW_AT_begin_file("man.c")
	.dwattr DW$109, DW_AT_begin_line(0xcc)
	.dwattr DW$109, DW_AT_end_line(0xd0)
DW$110	.dwtag  DW_TAG_loop_range
	.dwattr DW$110, DW_AT_low_pc(DW$L$_InitStatus1Flags$2$B)
	.dwattr DW$110, DW_AT_high_pc(DW$L$_InitStatus1Flags$2$E)
	.dwendtag DW$109

	.dwattr DW$108, DW_AT_end_file("man.c")
	.dwattr DW$108, DW_AT_end_line(0xd1)
	.dwattr DW$108, DW_AT_end_column(0x01)
	.dwendtag DW$108

	.sect	".text"
	.global	_SetSensorEnabled

DW$111	.dwtag  DW_TAG_subprogram, DW_AT_name("SetSensorEnabled"), DW_AT_symbol_name("_SetSensorEnabled")
	.dwattr DW$111, DW_AT_low_pc(_SetSensorEnabled)
	.dwattr DW$111, DW_AT_high_pc(0x00)
	.dwattr DW$111, DW_AT_begin_file("man.c")
	.dwattr DW$111, DW_AT_begin_line(0xd4)
	.dwattr DW$111, DW_AT_begin_column(0x06)
	.dwattr DW$111, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$111, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",213,1

;***************************************************************
;* FNAME: _SetSensorEnabled             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SetSensorEnabled:
;* AL    assigned to _chan
DW$112	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$112, DW_AT_type(*DW$T$11)
	.dwattr DW$112, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _val
DW$113	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$113, DW_AT_type(*DW$T$10)
	.dwattr DW$113, DW_AT_location[DW_OP_reg1]
        CMPB      AH,#1                 ; |214| 
        BF        L10,EQ                ; |214| 
        ; branchcc occurs ; |214| 
        MOV       T,#18                 ; |215| 
        MPYXU     ACC,T,AL              ; |215| 
        MOVL      XAR4,#_sensor         ; |215| 
        ADDL      XAR4,ACC
        AND       *+XAR4[0],#0xfffe     ; |215| 
        BF        L11,UNC               ; |215| 
        ; branch occurs ; |215| 
L10:    
        MOV       T,#18                 ; |214| 
        MPYXU     ACC,T,AL              ; |214| 
        MOVL      XAR4,#_sensor         ; |214| 
        ADDL      XAR4,ACC
        OR        *+XAR4[0],#0x0001     ; |214| 
L11:    
	.dwpsn	"man.c",216,1
        LRETR
        ; return occurs
	.dwattr DW$111, DW_AT_end_file("man.c")
	.dwattr DW$111, DW_AT_end_line(0xd8)
	.dwattr DW$111, DW_AT_end_column(0x01)
	.dwendtag DW$111

	.sect	".text"
	.global	_GetSensorEnabled

DW$114	.dwtag  DW_TAG_subprogram, DW_AT_name("GetSensorEnabled"), DW_AT_symbol_name("_GetSensorEnabled")
	.dwattr DW$114, DW_AT_low_pc(_GetSensorEnabled)
	.dwattr DW$114, DW_AT_high_pc(0x00)
	.dwattr DW$114, DW_AT_begin_file("man.c")
	.dwattr DW$114, DW_AT_begin_line(0xdc)
	.dwattr DW$114, DW_AT_begin_column(0x0e)
	.dwattr DW$114, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$114, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",221,1

;***************************************************************
;* FNAME: _GetSensorEnabled             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_GetSensorEnabled:
;* AL    assigned to _chan
DW$115	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$115, DW_AT_type(*DW$T$11)
	.dwattr DW$115, DW_AT_location[DW_OP_reg0]
        MOV       T,#18                 ; |222| 
        MPYXU     ACC,T,AL              ; |222| 
        MOVL      XAR4,#_sensor         ; |222| 
        ADDL      XAR4,ACC
        AND       AL,*+XAR4[0],#0x0001  ; |222| 
	.dwpsn	"man.c",223,1
        LRETR
        ; return occurs
	.dwattr DW$114, DW_AT_end_file("man.c")
	.dwattr DW$114, DW_AT_end_line(0xdf)
	.dwattr DW$114, DW_AT_end_column(0x01)
	.dwendtag DW$114

	.sect	".text"
	.global	_SetCalMode

DW$116	.dwtag  DW_TAG_subprogram, DW_AT_name("SetCalMode"), DW_AT_symbol_name("_SetCalMode")
	.dwattr DW$116, DW_AT_low_pc(_SetCalMode)
	.dwattr DW$116, DW_AT_high_pc(0x00)
	.dwattr DW$116, DW_AT_begin_file("man.c")
	.dwattr DW$116, DW_AT_begin_line(0xe2)
	.dwattr DW$116, DW_AT_begin_column(0x06)
	.dwattr DW$116, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$116, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",227,1

;***************************************************************
;* FNAME: _SetCalMode                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SetCalMode:
;* AL    assigned to _chan
DW$117	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$117, DW_AT_type(*DW$T$11)
	.dwattr DW$117, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _val
DW$118	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$118, DW_AT_type(*DW$T$10)
	.dwattr DW$118, DW_AT_location[DW_OP_reg1]
        CMPB      AH,#1                 ; |228| 
        BF        L12,EQ                ; |228| 
        ; branchcc occurs ; |228| 
        MOV       T,#18                 ; |229| 
        MPYXU     ACC,T,AL              ; |229| 
        MOVL      XAR4,#_sensor         ; |229| 
        ADDL      XAR4,ACC
        AND       *+XAR4[0],#0xfffd     ; |229| 
        BF        L13,UNC               ; |229| 
        ; branch occurs ; |229| 
L12:    
        MOV       T,#18                 ; |228| 
        MPYXU     ACC,T,AL              ; |228| 
        MOVL      XAR4,#_sensor         ; |228| 
        ADDL      XAR4,ACC
        OR        *+XAR4[0],#0x0002     ; |228| 
L13:    
	.dwpsn	"man.c",230,1
        LRETR
        ; return occurs
	.dwattr DW$116, DW_AT_end_file("man.c")
	.dwattr DW$116, DW_AT_end_line(0xe6)
	.dwattr DW$116, DW_AT_end_column(0x01)
	.dwendtag DW$116

	.sect	".text"
	.global	_SetAlarmMask

DW$119	.dwtag  DW_TAG_subprogram, DW_AT_name("SetAlarmMask"), DW_AT_symbol_name("_SetAlarmMask")
	.dwattr DW$119, DW_AT_low_pc(_SetAlarmMask)
	.dwattr DW$119, DW_AT_high_pc(0x00)
	.dwattr DW$119, DW_AT_begin_file("man.c")
	.dwattr DW$119, DW_AT_begin_line(0xe9)
	.dwattr DW$119, DW_AT_begin_column(0x06)
	.dwattr DW$119, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$119, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",234,1

;***************************************************************
;* FNAME: _SetAlarmMask                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SetAlarmMask:
;* AL    assigned to _chan
DW$120	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$120, DW_AT_type(*DW$T$11)
	.dwattr DW$120, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _val
DW$121	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$121, DW_AT_type(*DW$T$10)
	.dwattr DW$121, DW_AT_location[DW_OP_reg1]
        CMPB      AH,#1                 ; |235| 
        BF        L14,EQ                ; |235| 
        ; branchcc occurs ; |235| 
        MOV       T,#18                 ; |236| 
        MPYXU     ACC,T,AL              ; |236| 
        MOVL      XAR4,#_sensor         ; |236| 
        ADDL      XAR4,ACC
        AND       *+XAR4[0],#0xfffb     ; |236| 
        BF        L15,UNC               ; |236| 
        ; branch occurs ; |236| 
L14:    
        MOV       T,#18                 ; |235| 
        MPYXU     ACC,T,AL              ; |235| 
        MOVL      XAR4,#_sensor         ; |235| 
        ADDL      XAR4,ACC
        OR        *+XAR4[0],#0x0004     ; |235| 
L15:    
	.dwpsn	"man.c",237,1
        LRETR
        ; return occurs
	.dwattr DW$119, DW_AT_end_file("man.c")
	.dwattr DW$119, DW_AT_end_line(0xed)
	.dwattr DW$119, DW_AT_end_column(0x01)
	.dwendtag DW$119

	.sect	".text"
	.global	_GetSensorAlarmMask

DW$122	.dwtag  DW_TAG_subprogram, DW_AT_name("GetSensorAlarmMask"), DW_AT_symbol_name("_GetSensorAlarmMask")
	.dwattr DW$122, DW_AT_low_pc(_GetSensorAlarmMask)
	.dwattr DW$122, DW_AT_high_pc(0x00)
	.dwattr DW$122, DW_AT_begin_file("man.c")
	.dwattr DW$122, DW_AT_begin_line(0xf1)
	.dwattr DW$122, DW_AT_begin_column(0x0e)
	.dwattr DW$122, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$122, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",242,1

;***************************************************************
;* FNAME: _GetSensorAlarmMask           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_GetSensorAlarmMask:
;* AL    assigned to _chan
DW$123	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$123, DW_AT_type(*DW$T$11)
	.dwattr DW$123, DW_AT_location[DW_OP_reg0]
        MOV       T,#18                 ; |243| 
        MPYXU     ACC,T,AL              ; |243| 
        MOVL      XAR4,#_sensor         ; |243| 
        ADDL      XAR4,ACC
        AND       AL,*+XAR4[0],#0x0004  ; |243| 
        LSR       AL,2                  ; |243| 
	.dwpsn	"man.c",244,1
        LRETR
        ; return occurs
	.dwattr DW$122, DW_AT_end_file("man.c")
	.dwattr DW$122, DW_AT_end_line(0xf4)
	.dwattr DW$122, DW_AT_end_column(0x01)
	.dwendtag DW$122

	.sect	".text"
	.global	_GetRPM

DW$124	.dwtag  DW_TAG_subprogram, DW_AT_name("GetRPM"), DW_AT_symbol_name("_GetRPM")
	.dwattr DW$124, DW_AT_low_pc(_GetRPM)
	.dwattr DW$124, DW_AT_high_pc(0x00)
	.dwattr DW$124, DW_AT_begin_file("man.c")
	.dwattr DW$124, DW_AT_begin_line(0xf9)
	.dwattr DW$124, DW_AT_begin_column(0x0e)
	.dwattr DW$124, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$124, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",250,1

;***************************************************************
;* FNAME: _GetRPM                       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_GetRPM:
;* AL    assigned to _chan
DW$125	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$125, DW_AT_type(*DW$T$11)
	.dwattr DW$125, DW_AT_location[DW_OP_reg0]
        MOV       T,#18                 ; |253| 
        MOVL      XAR4,#_sensor         ; |253| 
        MPYXU     ACC,T,AL              ; |253| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#0          ; |253| 
        BF        L16,NTC               ; |253| 
        ; branchcc occurs ; |253| 
        MOVB      XAR0,#16              ; |253| 
        MOV       AL,*+XAR4[AR0]        ; |253| 
        BF        L17,UNC               ; |253| 
        ; branch occurs ; |253| 
L16:    
        MOVB      AL,#0
L17:    
	.dwpsn	"man.c",259,1
        LRETR
        ; return occurs
	.dwattr DW$124, DW_AT_end_file("man.c")
	.dwattr DW$124, DW_AT_end_line(0x103)
	.dwattr DW$124, DW_AT_end_column(0x01)
	.dwendtag DW$124

	.sect	".text"
	.global	_GetCheckedRPM

DW$126	.dwtag  DW_TAG_subprogram, DW_AT_name("GetCheckedRPM"), DW_AT_symbol_name("_GetCheckedRPM")
	.dwattr DW$126, DW_AT_low_pc(_GetCheckedRPM)
	.dwattr DW$126, DW_AT_high_pc(0x00)
	.dwattr DW$126, DW_AT_begin_file("man.c")
	.dwattr DW$126, DW_AT_begin_line(0x108)
	.dwattr DW$126, DW_AT_begin_column(0x0e)
	.dwattr DW$126, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$126, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",265,1

;***************************************************************
;* FNAME: _GetCheckedRPM                FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_GetCheckedRPM:
;* AL    assigned to _unit
DW$127	.dwtag  DW_TAG_formal_parameter, DW_AT_name("unit"), DW_AT_symbol_name("_unit")
	.dwattr DW$127, DW_AT_type(*DW$T$10)
	.dwattr DW$127, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        CMPB      AL,#2                 ; |270| 
        MOVL      *SP++,XAR2
        BF        L18,EQ                ; |270| 
        ; branchcc occurs ; |270| 
        MOVB      XAR2,#0
        BF        L19,UNC               ; |271| 
        ; branch occurs ; |271| 
L18:    
        MOVW      DP,#_allsensors+1
        MOVZ      AR2,@_allsensors+1    ; |270| 
L19:    
	.dwpsn	"man.c",272,0
        MOVZ      AR1,AR2               ; |272| 
L20:    
DW$L$_GetCheckedRPM$5$B:
	.dwpsn	"man.c",273,0
        MOV       AL,AR1
        LCR       #_Status3Flags        ; |274| 
        ; call occurs [#_Status3Flags] ; |274| 
        MOV       AL,*+XAR4[0]          ; |275| 
        BF        L21,NEQ               ; |275| 
        ; branchcc occurs ; |275| 
DW$L$_GetCheckedRPM$5$E:
        MOV       AL,AR1
        LCR       #_GetRPM              ; |275| 
        ; call occurs [#_GetRPM] ; |275| 
        BF        L22,UNC               ; |275| 
        ; branch occurs ; |275| 
L21:    
DW$L$_GetCheckedRPM$7$B:
        MOV       AL,AR1
        ADDB      AL,#1                 ; |272| 
        MOVZ      AR1,AL                ; |272| 
        MOV       AL,AR2                ; |272| 
        ADDB      AL,#14                ; |272| 
        CMP       AL,AR1                ; |272| 
	.dwpsn	"man.c",276,0
        BF        L20,GT                ; |272| 
        ; branchcc occurs ; |272| 
DW$L$_GetCheckedRPM$7$E:
        MOVB      AL,#0
L22:    
        MOVL      XAR2,*--SP            ; |277| 
        MOVL      XAR1,*--SP            ; |277| 
	.dwpsn	"man.c",278,1
        LRETR
        ; return occurs

DW$128	.dwtag  DW_TAG_loop
	.dwattr DW$128, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L20:1:1473840056")
	.dwattr DW$128, DW_AT_begin_file("man.c")
	.dwattr DW$128, DW_AT_begin_line(0x110)
	.dwattr DW$128, DW_AT_end_line(0x114)
DW$129	.dwtag  DW_TAG_loop_range
	.dwattr DW$129, DW_AT_low_pc(DW$L$_GetCheckedRPM$5$B)
	.dwattr DW$129, DW_AT_high_pc(DW$L$_GetCheckedRPM$5$E)
DW$130	.dwtag  DW_TAG_loop_range
	.dwattr DW$130, DW_AT_low_pc(DW$L$_GetCheckedRPM$7$B)
	.dwattr DW$130, DW_AT_high_pc(DW$L$_GetCheckedRPM$7$E)
	.dwendtag DW$128

	.dwattr DW$126, DW_AT_end_file("man.c")
	.dwattr DW$126, DW_AT_end_line(0x116)
	.dwattr DW$126, DW_AT_end_column(0x01)
	.dwendtag DW$126

	.sect	".text"
	.global	_GetModalRPM

DW$131	.dwtag  DW_TAG_subprogram, DW_AT_name("GetModalRPM"), DW_AT_symbol_name("_GetModalRPM")
	.dwattr DW$131, DW_AT_low_pc(_GetModalRPM)
	.dwattr DW$131, DW_AT_high_pc(0x00)
	.dwattr DW$131, DW_AT_begin_file("man.c")
	.dwattr DW$131, DW_AT_begin_line(0x11c)
	.dwattr DW$131, DW_AT_begin_column(0x0e)
	.dwattr DW$131, DW_AT_frame_base[DW_OP_breg20 -64]
	.dwattr DW$131, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",285,1
DW$132	.dwtag  DW_TAG_variable, DW_AT_name("rpmuse"), DW_AT_symbol_name("_rpmuse$1")
	.dwattr DW$132, DW_AT_type(*DW$T$10)
	.dwattr DW$132, DW_AT_location[DW_OP_addr _rpmuse$1]

;***************************************************************
;* FNAME: _GetModalRPM                  FR SIZE:  62           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 57 Auto,  4 SOE     *
;***************************************************************

_GetModalRPM:
;* AL    assigned to _flag
DW$133	.dwtag  DW_TAG_formal_parameter, DW_AT_name("flag"), DW_AT_symbol_name("_flag")
	.dwattr DW$133, DW_AT_type(*DW$T$10)
	.dwattr DW$133, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR3
        ADDB      SP,#58
        CMPB      AL,#1                 ; |296| 
        MOV       *-SP[57],AL           ; |285| 
        BF        L44,NEQ               ; |296| 
        ; branchcc occurs ; |296| 
        MOVW      DP,#_allsensors
        MOVB      XAR1,#0
        MOVB      XAR5,#0
        MOV       AL,@_allsensors       ; |301| 
        BF        L24,EQ                ; |301| 
        ; branchcc occurs ; |301| 
L23:    
DW$L$_GetModalRPM$3$B:
	.dwpsn	"man.c",302,0
        MOVZ      AR4,SP                ; |304| 
        MOVU      ACC,AR1
        LSL       ACC,1                 ; |304| 
        SUBB      XAR4,#56              ; |304| 
        ADDL      XAR4,ACC
        ADDB      XAR1,#1               ; |301| 
        MOVW      DP,#_allsensors
        MOV       *+XAR4[0],#-1         ; |304| 
        MOV       AL,AR1                ; |301| 
        MOV       *+XAR4[1],#0          ; |305| 
        CMP       AL,@_allsensors       ; |301| 
	.dwpsn	"man.c",306,0
        BF        L23,LO                ; |301| 
        ; branchcc occurs ; |301| 
DW$L$_GetModalRPM$3$E:
L24:    
        MOVW      DP,#_allsensors+2
        MOV       AL,@_allsensors+2     ; |308| 
        BF        L25,EQ                ; |308| 
        ; branchcc occurs ; |308| 
        MOVW      DP,#_slave485mb+71
        MOV       AL,@_slave485mb+71    ; |308| 
        BF        L26,EQ                ; |308| 
        ; branchcc occurs ; |308| 
L25:    
        MOVW      DP,#_allsensors+1
        MOVZ      AR7,@_allsensors+1    ; |308| 
        BF        L27,UNC               ; |308| 
        ; branch occurs ; |308| 
L26:    
        MOVW      DP,#_allsensors
        MOVZ      AR7,@_allsensors      ; |308| 
L27:    
        MOV       AL,AR7                ; |309| 
        MOVB      XAR1,#0
        BF        L34,EQ                ; |310| 
        ; branchcc occurs ; |310| 
L28:    
DW$L$_GetModalRPM$9$B:
	.dwpsn	"man.c",311,0
        MOV       T,#18                 ; |312| 
        MOVL      XAR4,#_sensor         ; |312| 
        MPYXU     ACC,T,AR1             ; |312| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#0          ; |312| 
        BF        L33,NTC               ; |312| 
        ; branchcc occurs ; |312| 
DW$L$_GetModalRPM$9$E:
DW$L$_GetModalRPM$10$B:
        MOV       AL,AR1                ; |314| 
        LCR       #_GetRPM              ; |314| 
        ; call occurs [#_GetRPM] ; |314| 
        MOVW      DP,#_allsensors
        MOVB      XAR6,#0
        MOVZ      AR3,AL                ; |314| 
        MOV       AL,@_allsensors       ; |316| 
        BF        L30,EQ                ; |316| 
        ; branchcc occurs ; |316| 
DW$L$_GetModalRPM$10$E:
L29:    
DW$L$_GetModalRPM$11$B:
	.dwpsn	"man.c",316,0
        MOVZ      AR4,SP                ; |316| 
        MOVU      ACC,AR6
        LSL       ACC,1                 ; |316| 
        SUBB      XAR4,#56              ; |316| 
        ADDL      XAR4,ACC
        MOV       AL,AR3                ; |316| 
        CMP       AL,*+XAR4[0]          ; |316| 
        BF        L30,EQ                ; |316| 
        ; branchcc occurs ; |316| 
DW$L$_GetModalRPM$11$E:
DW$L$_GetModalRPM$12$B:
        ADDB      XAR6,#1               ; |316| 
        MOVW      DP,#_allsensors
        MOV       AL,AR6                ; |316| 
        CMP       AL,@_allsensors       ; |316| 
        BF        L29,LO                ; |316| 
        ; branchcc occurs ; |316| 
DW$L$_GetModalRPM$12$E:
L30:    
DW$L$_GetModalRPM$13$B:
        MOV       AL,AR6
        MOVW      DP,#_allsensors
        CMP       AL,@_allsensors       ; |317| 
        BF        L31,EQ                ; |317| 
        ; branchcc occurs ; |317| 
DW$L$_GetModalRPM$13$E:
DW$L$_GetModalRPM$14$B:
        MOVZ      AR4,SP                ; |323| 
        MOVU      ACC,AR6
        LSL       ACC,1                 ; |323| 
        SUBB      XAR4,#56              ; |323| 
        ADDL      XAR4,ACC
        BF        L32,UNC               ; |323| 
        ; branch occurs ; |323| 
DW$L$_GetModalRPM$14$E:
L31:    
DW$L$_GetModalRPM$15$B:
        MOVZ      AR4,SP                ; |319| 
        MOVU      ACC,AR5
        LSL       ACC,1                 ; |319| 
        SUBB      XAR4,#56              ; |319| 
        ADDL      XAR4,ACC
        ADDB      XAR5,#1               ; |321| 
        MOV       *+XAR4[0],AR3         ; |319| 
DW$L$_GetModalRPM$15$E:
L32:    
DW$L$_GetModalRPM$16$B:
        INC       *+XAR4[1]             ; |320| 
DW$L$_GetModalRPM$16$E:
L33:    
DW$L$_GetModalRPM$17$B:
        MOV       AL,AR7                ; |310| 
        ADDB      XAR1,#1               ; |310| 
        CMP       AL,AR1                ; |310| 
	.dwpsn	"man.c",325,0
        BF        L28,HI                ; |310| 
        ; branchcc occurs ; |310| 
DW$L$_GetModalRPM$17$E:
L34:    
        MOV       AL,*-SP[56]           ; |326| 
        MOVW      DP,#_rpmuse$1
        MOVB      XAR1,#1               ; |328| 
        MOV       @_rpmuse$1,AL         ; |326| 
        MOVZ      AR6,*-SP[55]          ; |327| 
        MOVW      DP,#_allsensors
        MOV       AH,@_allsensors       ; |328| 
        CMPB      AH,#1                 ; |328| 
        BF        L37,LOS               ; |328| 
        ; branchcc occurs ; |328| 
L35:    
DW$L$_GetModalRPM$19$B:
	.dwpsn	"man.c",329,0
        MOVZ      AR4,SP                ; |330| 
        MOVU      ACC,AR1
        LSL       ACC,1                 ; |330| 
        SUBB      XAR4,#56              ; |330| 
        ADDL      XAR4,ACC
        MOV       AH,*+XAR4[1]          ; |330| 
        MOV       AL,AR6                ; |330| 
        CMP       AL,AH                 ; |330| 
        BF        L36,GT                ; |330| 
        ; branchcc occurs ; |330| 
DW$L$_GetModalRPM$19$E:
DW$L$_GetModalRPM$20$B:
        MOV       AL,*+XAR4[0]          ; |333| 
        MOVW      DP,#_rpmuse$1
        MOVZ      AR6,AH                ; |332| 
        MOV       @_rpmuse$1,AL         ; |333| 
DW$L$_GetModalRPM$20$E:
L36:    
DW$L$_GetModalRPM$21$B:
        ADDB      XAR1,#1               ; |328| 
        MOVW      DP,#_allsensors
        MOV       AH,AR1                ; |328| 
        CMP       AH,@_allsensors       ; |328| 
	.dwpsn	"man.c",335,0
        BF        L35,LO                ; |328| 
        ; branchcc occurs ; |328| 
DW$L$_GetModalRPM$21$E:
L37:    
        MOVW      DP,#_rpmuse$1
        MOV       AL,@_rpmuse$1         ; |336| 
        BF        L44,EQ                ; |336| 
        ; branchcc occurs ; |336| 
        MOVW      DP,#_allsensors
        MOVB      XAR1,#0
        MOV       AL,@_allsensors       ; |338| 
        BF        L44,EQ                ; |338| 
        ; branchcc occurs ; |338| 
L38:    
DW$L$_GetModalRPM$24$B:
	.dwpsn	"man.c",339,0
        MOV       T,#18                 ; |340| 
        MOVL      XAR5,#_sensor         ; |340| 
        MPYXU     ACC,T,AR1             ; |340| 
        ADDL      XAR5,ACC
        TBIT      *+XAR5[0],#0          ; |340| 
        BF        L42,NTC               ; |340| 
        ; branchcc occurs ; |340| 
DW$L$_GetModalRPM$24$E:
DW$L$_GetModalRPM$25$B:
        MOV       AL,AR1                ; |342| 
        LCR       #_GetRPM              ; |342| 
        ; call occurs [#_GetRPM] ; |342| 
        MOVZ      AR3,AL                ; |342| 
        MOV       AL,AR1                ; |343| 
        LCR       #_Status3Flags        ; |343| 
        ; call occurs [#_Status3Flags] ; |343| 
        MOVW      DP,#_rpmuse$1
        MOV       AL,@_rpmuse$1         ; |345| 
        ADDB      AL,#25                ; |345| 
        CMP       AL,AR3                ; |345| 
        BF        L39,LT                ; |345| 
        ; branchcc occurs ; |345| 
DW$L$_GetModalRPM$25$E:
DW$L$_GetModalRPM$26$B:
        MOVL      XAR5,#_modalsetcounters ; |359| 
        MOV       *+XAR5[AR1],#0        ; |359| 
        MOVL      XAR5,#_modalresetcounters ; |360| 
        MOVL      ACC,XAR5              ; |360| 
        ADDU      ACC,AR1               ; |360| 
        MOVL      XAR5,ACC              ; |360| 
        MOV       AL,*+XAR5[0]          ; |360| 
        CMPB      AL,#10                ; |360| 
        BF        L42,HI                ; |360| 
        ; branchcc occurs ; |360| 
DW$L$_GetModalRPM$26$E:
DW$L$_GetModalRPM$27$B:
        MOVB      AH,#1                 ; |364| 
        ADD       AH,AL                 ; |364| 
        MOV       *+XAR5[0],AH          ; |364| 
        BF        L43,UNC               ; |364| 
        ; branch occurs ; |364| 
DW$L$_GetModalRPM$27$E:
L39:    
DW$L$_GetModalRPM$28$B:
        MOVL      XAR5,#_modalsetcounters ; |347| 
        MOVL      ACC,XAR5              ; |347| 
        ADDU      ACC,AR1               ; |347| 
        MOVL      XAR5,ACC              ; |347| 
        MOV       AL,*+XAR5[0]          ; |347| 
        CMPB      AL,#3                 ; |347| 
        BF        L40,HI                ; |347| 
        ; branchcc occurs ; |347| 
DW$L$_GetModalRPM$28$E:
DW$L$_GetModalRPM$29$B:
        MOVB      AH,#1                 ; |353| 
        ADD       AH,AL                 ; |353| 
        MOV       *+XAR5[0],AH          ; |353| 
        BF        L41,UNC               ; |353| 
        ; branch occurs ; |353| 
DW$L$_GetModalRPM$29$E:
L40:    
DW$L$_GetModalRPM$30$B:
        OR        *+XAR4[0],#0x0008     ; |349| 
DW$L$_GetModalRPM$30$E:
L41:    
DW$L$_GetModalRPM$31$B:
        MOVL      XAR5,#_modalresetcounters ; |355| 
        MOV       *+XAR5[AR1],#0        ; |355| 
        BF        L43,UNC               ; |356| 
        ; branch occurs ; |356| 
DW$L$_GetModalRPM$31$E:
L42:    
DW$L$_GetModalRPM$32$B:
        AND       *+XAR4[0],#0xfff7     ; |367| 
DW$L$_GetModalRPM$32$E:
L43:    
DW$L$_GetModalRPM$33$B:
        ADDB      XAR1,#1               ; |338| 
        MOVW      DP,#_allsensors
        MOV       AL,AR1                ; |338| 
        CMP       AL,@_allsensors       ; |338| 
	.dwpsn	"man.c",368,0
        BF        L38,LO                ; |338| 
        ; branchcc occurs ; |338| 
DW$L$_GetModalRPM$33$E:
L44:    
        MOV       AL,*-SP[57]
        CMPB      AL,#2                 ; |371| 
        BF        L45,NEQ               ; |371| 
        ; branchcc occurs ; |371| 
        MOVW      DP,#_rpmuse$1
        MOV       @_rpmuse$1,#0         ; |373| 
L45:    
        SUBB      SP,#58                ; |375| 
        MOVL      XAR3,*--SP            ; |375| 
        MOVW      DP,#_rpmuse$1
        MOV       AL,@_rpmuse$1         ; |375| 
        MOVL      XAR1,*--SP            ; |375| 
	.dwpsn	"man.c",376,1
        LRETR
        ; return occurs

DW$134	.dwtag  DW_TAG_loop
	.dwattr DW$134, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L38:1:1473840056")
	.dwattr DW$134, DW_AT_begin_file("man.c")
	.dwattr DW$134, DW_AT_begin_line(0x152)
	.dwattr DW$134, DW_AT_end_line(0x170)
DW$135	.dwtag  DW_TAG_loop_range
	.dwattr DW$135, DW_AT_low_pc(DW$L$_GetModalRPM$24$B)
	.dwattr DW$135, DW_AT_high_pc(DW$L$_GetModalRPM$24$E)
DW$136	.dwtag  DW_TAG_loop_range
	.dwattr DW$136, DW_AT_low_pc(DW$L$_GetModalRPM$28$B)
	.dwattr DW$136, DW_AT_high_pc(DW$L$_GetModalRPM$28$E)
DW$137	.dwtag  DW_TAG_loop_range
	.dwattr DW$137, DW_AT_low_pc(DW$L$_GetModalRPM$29$B)
	.dwattr DW$137, DW_AT_high_pc(DW$L$_GetModalRPM$29$E)
DW$138	.dwtag  DW_TAG_loop_range
	.dwattr DW$138, DW_AT_low_pc(DW$L$_GetModalRPM$30$B)
	.dwattr DW$138, DW_AT_high_pc(DW$L$_GetModalRPM$30$E)
DW$139	.dwtag  DW_TAG_loop_range
	.dwattr DW$139, DW_AT_low_pc(DW$L$_GetModalRPM$25$B)
	.dwattr DW$139, DW_AT_high_pc(DW$L$_GetModalRPM$25$E)
DW$140	.dwtag  DW_TAG_loop_range
	.dwattr DW$140, DW_AT_low_pc(DW$L$_GetModalRPM$26$B)
	.dwattr DW$140, DW_AT_high_pc(DW$L$_GetModalRPM$26$E)
DW$141	.dwtag  DW_TAG_loop_range
	.dwattr DW$141, DW_AT_low_pc(DW$L$_GetModalRPM$27$B)
	.dwattr DW$141, DW_AT_high_pc(DW$L$_GetModalRPM$27$E)
DW$142	.dwtag  DW_TAG_loop_range
	.dwattr DW$142, DW_AT_low_pc(DW$L$_GetModalRPM$31$B)
	.dwattr DW$142, DW_AT_high_pc(DW$L$_GetModalRPM$31$E)
DW$143	.dwtag  DW_TAG_loop_range
	.dwattr DW$143, DW_AT_low_pc(DW$L$_GetModalRPM$32$B)
	.dwattr DW$143, DW_AT_high_pc(DW$L$_GetModalRPM$32$E)
DW$144	.dwtag  DW_TAG_loop_range
	.dwattr DW$144, DW_AT_low_pc(DW$L$_GetModalRPM$33$B)
	.dwattr DW$144, DW_AT_high_pc(DW$L$_GetModalRPM$33$E)
	.dwendtag DW$134


DW$145	.dwtag  DW_TAG_loop
	.dwattr DW$145, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L35:1:1473840056")
	.dwattr DW$145, DW_AT_begin_file("man.c")
	.dwattr DW$145, DW_AT_begin_line(0x148)
	.dwattr DW$145, DW_AT_end_line(0x14f)
DW$146	.dwtag  DW_TAG_loop_range
	.dwattr DW$146, DW_AT_low_pc(DW$L$_GetModalRPM$19$B)
	.dwattr DW$146, DW_AT_high_pc(DW$L$_GetModalRPM$19$E)
DW$147	.dwtag  DW_TAG_loop_range
	.dwattr DW$147, DW_AT_low_pc(DW$L$_GetModalRPM$20$B)
	.dwattr DW$147, DW_AT_high_pc(DW$L$_GetModalRPM$20$E)
DW$148	.dwtag  DW_TAG_loop_range
	.dwattr DW$148, DW_AT_low_pc(DW$L$_GetModalRPM$21$B)
	.dwattr DW$148, DW_AT_high_pc(DW$L$_GetModalRPM$21$E)
	.dwendtag DW$145


DW$149	.dwtag  DW_TAG_loop
	.dwattr DW$149, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L28:1:1473840056")
	.dwattr DW$149, DW_AT_begin_file("man.c")
	.dwattr DW$149, DW_AT_begin_line(0x136)
	.dwattr DW$149, DW_AT_end_line(0x145)
DW$150	.dwtag  DW_TAG_loop_range
	.dwattr DW$150, DW_AT_low_pc(DW$L$_GetModalRPM$9$B)
	.dwattr DW$150, DW_AT_high_pc(DW$L$_GetModalRPM$9$E)
DW$151	.dwtag  DW_TAG_loop_range
	.dwattr DW$151, DW_AT_low_pc(DW$L$_GetModalRPM$10$B)
	.dwattr DW$151, DW_AT_high_pc(DW$L$_GetModalRPM$10$E)
DW$152	.dwtag  DW_TAG_loop_range
	.dwattr DW$152, DW_AT_low_pc(DW$L$_GetModalRPM$13$B)
	.dwattr DW$152, DW_AT_high_pc(DW$L$_GetModalRPM$13$E)
DW$153	.dwtag  DW_TAG_loop_range
	.dwattr DW$153, DW_AT_low_pc(DW$L$_GetModalRPM$14$B)
	.dwattr DW$153, DW_AT_high_pc(DW$L$_GetModalRPM$14$E)
DW$154	.dwtag  DW_TAG_loop_range
	.dwattr DW$154, DW_AT_low_pc(DW$L$_GetModalRPM$15$B)
	.dwattr DW$154, DW_AT_high_pc(DW$L$_GetModalRPM$15$E)
DW$155	.dwtag  DW_TAG_loop_range
	.dwattr DW$155, DW_AT_low_pc(DW$L$_GetModalRPM$16$B)
	.dwattr DW$155, DW_AT_high_pc(DW$L$_GetModalRPM$16$E)
DW$156	.dwtag  DW_TAG_loop_range
	.dwattr DW$156, DW_AT_low_pc(DW$L$_GetModalRPM$17$B)
	.dwattr DW$156, DW_AT_high_pc(DW$L$_GetModalRPM$17$E)

DW$157	.dwtag  DW_TAG_loop
	.dwattr DW$157, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L29:2:1473840056")
	.dwattr DW$157, DW_AT_begin_file("man.c")
	.dwattr DW$157, DW_AT_begin_line(0x13c)
	.dwattr DW$157, DW_AT_end_line(0x13c)
DW$158	.dwtag  DW_TAG_loop_range
	.dwattr DW$158, DW_AT_low_pc(DW$L$_GetModalRPM$11$B)
	.dwattr DW$158, DW_AT_high_pc(DW$L$_GetModalRPM$11$E)
DW$159	.dwtag  DW_TAG_loop_range
	.dwattr DW$159, DW_AT_low_pc(DW$L$_GetModalRPM$12$B)
	.dwattr DW$159, DW_AT_high_pc(DW$L$_GetModalRPM$12$E)
	.dwendtag DW$157

	.dwendtag DW$149


DW$160	.dwtag  DW_TAG_loop
	.dwattr DW$160, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L23:1:1473840056")
	.dwattr DW$160, DW_AT_begin_file("man.c")
	.dwattr DW$160, DW_AT_begin_line(0x12d)
	.dwattr DW$160, DW_AT_end_line(0x132)
DW$161	.dwtag  DW_TAG_loop_range
	.dwattr DW$161, DW_AT_low_pc(DW$L$_GetModalRPM$3$B)
	.dwattr DW$161, DW_AT_high_pc(DW$L$_GetModalRPM$3$E)
	.dwendtag DW$160

	.dwattr DW$131, DW_AT_end_file("man.c")
	.dwattr DW$131, DW_AT_end_line(0x178)
	.dwattr DW$131, DW_AT_end_column(0x01)
	.dwendtag DW$131

	.sect	".text"
	.global	_SetRPM

DW$162	.dwtag  DW_TAG_subprogram, DW_AT_name("SetRPM"), DW_AT_symbol_name("_SetRPM")
	.dwattr DW$162, DW_AT_low_pc(_SetRPM)
	.dwattr DW$162, DW_AT_high_pc(0x00)
	.dwattr DW$162, DW_AT_begin_file("man.c")
	.dwattr DW$162, DW_AT_begin_line(0x17d)
	.dwattr DW$162, DW_AT_begin_column(0x06)
	.dwattr DW$162, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$162, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",382,1

;***************************************************************
;* FNAME: _SetRPM                       FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_SetRPM:
;* AL    assigned to _rpmin
DW$163	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rpmin"), DW_AT_symbol_name("_rpmin")
	.dwattr DW$163, DW_AT_type(*DW$T$11)
	.dwattr DW$163, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVZ      AR2,AL                ; |382| 
	.dwpsn	"man.c",385,0
        MOVB      XAR1,#0
L46:    
DW$L$_SetRPM$2$B:
        MOV       AL,AR1                ; |385| 
        MOV       AH,AR2                ; |385| 
        LCR       #_SetRPMChan          ; |385| 
        ; call occurs [#_SetRPMChan] ; |385| 
        ADDB      XAR1,#1               ; |385| 
        MOV       AL,AR1                ; |385| 
        CMPB      AL,#14                ; |385| 
        BF        L46,LO                ; |385| 
        ; branchcc occurs ; |385| 
DW$L$_SetRPM$2$E:
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"man.c",386,1
        LRETR
        ; return occurs

DW$164	.dwtag  DW_TAG_loop
	.dwattr DW$164, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L46:1:1473840056")
	.dwattr DW$164, DW_AT_begin_file("man.c")
	.dwattr DW$164, DW_AT_begin_line(0x181)
	.dwattr DW$164, DW_AT_end_line(0x181)
DW$165	.dwtag  DW_TAG_loop_range
	.dwattr DW$165, DW_AT_low_pc(DW$L$_SetRPM$2$B)
	.dwattr DW$165, DW_AT_high_pc(DW$L$_SetRPM$2$E)
	.dwendtag DW$164

	.dwattr DW$162, DW_AT_end_file("man.c")
	.dwattr DW$162, DW_AT_end_line(0x182)
	.dwattr DW$162, DW_AT_end_column(0x01)
	.dwendtag DW$162

	.sect	".text"
	.global	_SetImmScaledValue

DW$166	.dwtag  DW_TAG_subprogram, DW_AT_name("SetImmScaledValue"), DW_AT_symbol_name("_SetImmScaledValue")
	.dwattr DW$166, DW_AT_low_pc(_SetImmScaledValue)
	.dwattr DW$166, DW_AT_high_pc(0x00)
	.dwattr DW$166, DW_AT_begin_file("man.c")
	.dwattr DW$166, DW_AT_begin_line(0x187)
	.dwattr DW$166, DW_AT_begin_column(0x06)
	.dwattr DW$166, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$166, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",392,1

;***************************************************************
;* FNAME: _SetImmScaledValue            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SetImmScaledValue:
;* AL    assigned to _chan
DW$167	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$167, DW_AT_type(*DW$T$11)
	.dwattr DW$167, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _val
DW$168	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$168, DW_AT_type(*DW$T$10)
	.dwattr DW$168, DW_AT_location[DW_OP_reg1]
        MOVZ      AR6,AH                ; |392| 
        MOV       T,#18                 ; |394| 
        MPYXU     ACC,T,AL              ; |394| 
        MOVL      XAR4,#_sensor+4       ; |394| 
        ADDL      XAR4,ACC
        MOV       AL,#3500              ; |394| 
        MIN       AL,AR6                ; |394| 
        MOV       *+XAR4[0],AL          ; |394| 
	.dwpsn	"man.c",396,1
        LRETR
        ; return occurs
	.dwattr DW$166, DW_AT_end_file("man.c")
	.dwattr DW$166, DW_AT_end_line(0x18c)
	.dwattr DW$166, DW_AT_end_column(0x01)
	.dwendtag DW$166

	.sect	".text"
	.global	_SetScaledValue

DW$169	.dwtag  DW_TAG_subprogram, DW_AT_name("SetScaledValue"), DW_AT_symbol_name("_SetScaledValue")
	.dwattr DW$169, DW_AT_low_pc(_SetScaledValue)
	.dwattr DW$169, DW_AT_high_pc(0x00)
	.dwattr DW$169, DW_AT_begin_file("man.c")
	.dwattr DW$169, DW_AT_begin_line(0x193)
	.dwattr DW$169, DW_AT_begin_column(0x06)
	.dwattr DW$169, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$169, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",404,1

;***************************************************************
;* FNAME: _SetScaledValue               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SetScaledValue:
;* AL    assigned to _chan
DW$170	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$170, DW_AT_type(*DW$T$11)
	.dwattr DW$170, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _val
DW$171	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$171, DW_AT_type(*DW$T$10)
	.dwattr DW$171, DW_AT_location[DW_OP_reg1]
        MOVZ      AR6,AH                ; |404| 
        MOV       T,#18                 ; |406| 
        MPYXU     ACC,T,AL              ; |406| 
        MOVL      XAR4,#_sensor+5       ; |406| 
        ADDL      XAR4,ACC
        MOV       AL,#3500              ; |406| 
        MIN       AL,AR6                ; |406| 
        MOV       *+XAR4[0],AL          ; |406| 
	.dwpsn	"man.c",408,1
        LRETR
        ; return occurs
	.dwattr DW$169, DW_AT_end_file("man.c")
	.dwattr DW$169, DW_AT_end_line(0x198)
	.dwattr DW$169, DW_AT_end_column(0x01)
	.dwendtag DW$169

	.sect	".text"
	.global	_GetScaledValue

DW$172	.dwtag  DW_TAG_subprogram, DW_AT_name("GetScaledValue"), DW_AT_symbol_name("_GetScaledValue")
	.dwattr DW$172, DW_AT_low_pc(_GetScaledValue)
	.dwattr DW$172, DW_AT_high_pc(0x00)
	.dwattr DW$172, DW_AT_begin_file("man.c")
	.dwattr DW$172, DW_AT_begin_line(0x19a)
	.dwattr DW$172, DW_AT_begin_column(0x05)
	.dwattr DW$172, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$172, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",411,1

;***************************************************************
;* FNAME: _GetScaledValue               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_GetScaledValue:
;* AL    assigned to _chan
DW$173	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$173, DW_AT_type(*DW$T$11)
	.dwattr DW$173, DW_AT_location[DW_OP_reg0]
        MOV       T,#18                 ; |411| 
        MPYXU     ACC,T,AL              ; |411| 
        MOVL      XAR4,#_sensor+5       ; |411| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |411| 
	.dwpsn	"man.c",411,35
        LRETR
        ; return occurs
	.dwattr DW$172, DW_AT_end_file("man.c")
	.dwattr DW$172, DW_AT_end_line(0x19b)
	.dwattr DW$172, DW_AT_end_column(0x23)
	.dwendtag DW$172

	.sect	".text"
	.global	_GetPreCompValue

DW$174	.dwtag  DW_TAG_subprogram, DW_AT_name("GetPreCompValue"), DW_AT_symbol_name("_GetPreCompValue")
	.dwattr DW$174, DW_AT_low_pc(_GetPreCompValue)
	.dwattr DW$174, DW_AT_high_pc(0x00)
	.dwattr DW$174, DW_AT_begin_file("man.c")
	.dwattr DW$174, DW_AT_begin_line(0x19e)
	.dwattr DW$174, DW_AT_begin_column(0x05)
	.dwattr DW$174, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$174, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",415,1

;***************************************************************
;* FNAME: _GetPreCompValue              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_GetPreCompValue:
;* AL    assigned to _chan
DW$175	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$175, DW_AT_type(*DW$T$11)
	.dwattr DW$175, DW_AT_location[DW_OP_reg0]
        MOVZ      AR0,AL                ; |415| 
        MOV       T,#18                 ; |416| 
        MOVL      XAR4,#_sensor         ; |416| 
        MPYXU     ACC,T,AR0             ; |416| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#0          ; |416| 
        BF        L47,TC                ; |416| 
        ; branchcc occurs ; |416| 
        MOV       AL,#-32761            ; |416| 
        BF        L52,UNC               ; |416| 
        ; branch occurs ; |416| 
L47:    
        MOVW      DP,#_settings+13
        MOV       AL,@_settings+13      ; |418| 
        BF        L51,NEQ               ; |418| 
        ; branchcc occurs ; |418| 
        MOVL      XAR4,#_status3        ; |419| 
        MOV       AL,*+XAR4[AR0]        ; |419| 
        AND       AH,AL,#0x0002         ; |419| 
        BF        L48,EQ                ; |419| 
        ; branchcc occurs ; |419| 
        MOV       AL,#-32765            ; |419| 
        BF        L52,UNC               ; |419| 
        ; branch occurs ; |419| 
L48:    
        AND       AH,AL,#0x0004         ; |420| 
        BF        L49,EQ                ; |420| 
        ; branchcc occurs ; |420| 
        MOV       AL,#-32764            ; |420| 
        BF        L52,UNC               ; |420| 
        ; branch occurs ; |420| 
L49:    
        AND       AH,AL,#0x0001         ; |421| 
        BF        L50,EQ                ; |421| 
        ; branchcc occurs ; |421| 
        MOV       AL,#-32766            ; |421| 
        BF        L52,UNC               ; |421| 
        ; branch occurs ; |421| 
L50:    
        ANDB      AL,#8                 ; |422| 
        BF        L51,EQ                ; |422| 
        ; branchcc occurs ; |422| 
        MOV       AL,#-32763            ; |422| 
        BF        L52,UNC               ; |422| 
        ; branch occurs ; |422| 
L51:    
        MOV       T,#18                 ; |424| 
        MPYXU     ACC,T,AR0             ; |424| 
        MOVL      XAR4,#_sensor+6       ; |424| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |424| 
L52:    
	.dwpsn	"man.c",426,1
        LRETR
        ; return occurs
	.dwattr DW$174, DW_AT_end_file("man.c")
	.dwattr DW$174, DW_AT_end_line(0x1aa)
	.dwattr DW$174, DW_AT_end_column(0x01)
	.dwendtag DW$174

	.sect	".text"
	.global	_SetPreCompValue

DW$176	.dwtag  DW_TAG_subprogram, DW_AT_name("SetPreCompValue"), DW_AT_symbol_name("_SetPreCompValue")
	.dwattr DW$176, DW_AT_low_pc(_SetPreCompValue)
	.dwattr DW$176, DW_AT_high_pc(0x00)
	.dwattr DW$176, DW_AT_begin_file("man.c")
	.dwattr DW$176, DW_AT_begin_line(0x1af)
	.dwattr DW$176, DW_AT_begin_column(0x06)
	.dwattr DW$176, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$176, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",432,1

;***************************************************************
;* FNAME: _SetPreCompValue              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SetPreCompValue:
;* AL    assigned to _chan
DW$177	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$177, DW_AT_type(*DW$T$11)
	.dwattr DW$177, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _val
DW$178	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$178, DW_AT_type(*DW$T$10)
	.dwattr DW$178, DW_AT_location[DW_OP_reg1]
        MOVZ      AR6,AH                ; |432| 
        MOV       T,#18                 ; |433| 
        MPYXU     ACC,T,AL              ; |433| 
        MOVL      XAR4,#_sensor+6       ; |433| 
        ADDL      XAR4,ACC
        MOV       AL,#3500              ; |433| 
        MIN       AL,AR6                ; |433| 
        MOV       *+XAR4[0],AL          ; |433| 
	.dwpsn	"man.c",435,1
        LRETR
        ; return occurs
	.dwattr DW$176, DW_AT_end_file("man.c")
	.dwattr DW$176, DW_AT_end_line(0x1b3)
	.dwattr DW$176, DW_AT_end_column(0x01)
	.dwendtag DW$176

	.sect	".text"
	.global	_GetPostCompValue

DW$179	.dwtag  DW_TAG_subprogram, DW_AT_name("GetPostCompValue"), DW_AT_symbol_name("_GetPostCompValue")
	.dwattr DW$179, DW_AT_low_pc(_GetPostCompValue)
	.dwattr DW$179, DW_AT_high_pc(0x00)
	.dwattr DW$179, DW_AT_begin_file("man.c")
	.dwattr DW$179, DW_AT_begin_line(0x1b6)
	.dwattr DW$179, DW_AT_begin_column(0x05)
	.dwattr DW$179, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$179, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",439,1

;***************************************************************
;* FNAME: _GetPostCompValue             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_GetPostCompValue:
;* AL    assigned to _chan
DW$180	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$180, DW_AT_type(*DW$T$11)
	.dwattr DW$180, DW_AT_location[DW_OP_reg0]
        MOV       T,#18                 ; |439| 
        MPYXU     ACC,T,AL              ; |439| 
        MOVL      XAR4,#_sensor+7       ; |439| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |439| 
	.dwpsn	"man.c",439,33
        LRETR
        ; return occurs
	.dwattr DW$179, DW_AT_end_file("man.c")
	.dwattr DW$179, DW_AT_end_line(0x1b7)
	.dwattr DW$179, DW_AT_end_column(0x21)
	.dwendtag DW$179

	.sect	".text"
	.global	_GetPostFilteredValue

DW$181	.dwtag  DW_TAG_subprogram, DW_AT_name("GetPostFilteredValue"), DW_AT_symbol_name("_GetPostFilteredValue")
	.dwattr DW$181, DW_AT_low_pc(_GetPostFilteredValue)
	.dwattr DW$181, DW_AT_high_pc(0x00)
	.dwattr DW$181, DW_AT_begin_file("man.c")
	.dwattr DW$181, DW_AT_begin_line(0x1b9)
	.dwattr DW$181, DW_AT_begin_column(0x05)
	.dwattr DW$181, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$181, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",442,1

;***************************************************************
;* FNAME: _GetPostFilteredValue         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_GetPostFilteredValue:
;* AL    assigned to _chan
DW$182	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$182, DW_AT_type(*DW$T$11)
	.dwattr DW$182, DW_AT_location[DW_OP_reg0]
        MOV       T,#18                 ; |443| 
        MPYXU     ACC,T,AL              ; |443| 
        MOVL      XAR4,#_sensor+8       ; |443| 
        ADDL      XAR4,ACC
        MOVL      ACC,*+XAR4[0]         ; |443| 
        LCR       #_FloattoIntRound     ; |443| 
        ; call occurs [#_FloattoIntRound] ; |443| 
	.dwpsn	"man.c",444,1
        LRETR
        ; return occurs
	.dwattr DW$181, DW_AT_end_file("man.c")
	.dwattr DW$181, DW_AT_end_line(0x1bc)
	.dwattr DW$181, DW_AT_end_column(0x01)
	.dwendtag DW$181

	.sect	".text"
	.global	_GetEndResultValue

DW$183	.dwtag  DW_TAG_subprogram, DW_AT_name("GetEndResultValue"), DW_AT_symbol_name("_GetEndResultValue")
	.dwattr DW$183, DW_AT_low_pc(_GetEndResultValue)
	.dwattr DW$183, DW_AT_high_pc(0x00)
	.dwattr DW$183, DW_AT_begin_file("man.c")
	.dwattr DW$183, DW_AT_begin_line(0x1be)
	.dwattr DW$183, DW_AT_begin_column(0x05)
	.dwattr DW$183, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$183, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",447,1

;***************************************************************
;* FNAME: _GetEndResultValue            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_GetEndResultValue:
;* AL    assigned to _chan
DW$184	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$184, DW_AT_type(*DW$T$11)
	.dwattr DW$184, DW_AT_location[DW_OP_reg0]
        MOVZ      AR0,AL                ; |447| 
        MOV       T,#18                 ; |449| 
        MOVL      XAR4,#_sensor         ; |449| 
        MPYXU     ACC,T,AR0             ; |449| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#0          ; |449| 
        BF        L57,NTC               ; |449| 
        ; branchcc occurs ; |449| 
        MOVL      XAR5,#_status3        ; |450| 
        MOV       AL,*+XAR5[AR0]        ; |450| 
        AND       AH,AL,#0x0002         ; |450| 
        BF        L53,EQ                ; |450| 
        ; branchcc occurs ; |450| 
        MOV       AL,#-32765            ; |450| 
        BF        L58,UNC               ; |450| 
        ; branch occurs ; |450| 
L53:    
        AND       AH,AL,#0x0004         ; |450| 
        BF        L54,EQ                ; |450| 
        ; branchcc occurs ; |450| 
        MOV       AL,#-32764            ; |450| 
        BF        L58,UNC               ; |450| 
        ; branch occurs ; |450| 
L54:    
        AND       AH,AL,#0x0001         ; |450| 
        BF        L55,EQ                ; |450| 
        ; branchcc occurs ; |450| 
        MOV       AL,#-32766            ; |450| 
        BF        L58,UNC               ; |450| 
        ; branch occurs ; |450| 
L55:    
        ANDB      AL,#8                 ; |450| 
        BF        L56,EQ                ; |450| 
        ; branchcc occurs ; |450| 
        MOV       AL,#-32763            ; |450| 
        BF        L58,UNC               ; |450| 
        ; branch occurs ; |450| 
L56:    
        MOVB      XAR0,#10              ; |450| 
        MOV       AL,*+XAR4[AR0]        ; |450| 
        BF        L58,UNC               ; |450| 
        ; branch occurs ; |450| 
L57:    
        MOV       AL,#-32761            ; |449| 
L58:    
	.dwpsn	"man.c",456,1
        LRETR
        ; return occurs
	.dwattr DW$183, DW_AT_end_file("man.c")
	.dwattr DW$183, DW_AT_end_line(0x1c8)
	.dwattr DW$183, DW_AT_end_column(0x01)
	.dwendtag DW$183

	.sect	".text"
	.global	_GetSensorDeviationValue

DW$185	.dwtag  DW_TAG_subprogram, DW_AT_name("GetSensorDeviationValue"), DW_AT_symbol_name("_GetSensorDeviationValue")
	.dwattr DW$185, DW_AT_low_pc(_GetSensorDeviationValue)
	.dwattr DW$185, DW_AT_high_pc(0x00)
	.dwattr DW$185, DW_AT_begin_file("man.c")
	.dwattr DW$185, DW_AT_begin_line(0x1ca)
	.dwattr DW$185, DW_AT_begin_column(0x05)
	.dwattr DW$185, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$185, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",459,1

;***************************************************************
;* FNAME: _GetSensorDeviationValue      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_GetSensorDeviationValue:
;* AL    assigned to _chan
DW$186	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$186, DW_AT_type(*DW$T$11)
	.dwattr DW$186, DW_AT_location[DW_OP_reg0]
        MOVZ      AR0,AL                ; |459| 
        MOV       T,#18                 ; |460| 
        MOVL      XAR4,#_sensor         ; |460| 
        MPYXU     ACC,T,AR0             ; |460| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#0          ; |460| 
        BF        L63,NTC               ; |460| 
        ; branchcc occurs ; |460| 
        MOVL      XAR5,#_status3        ; |461| 
        MOV       AL,*+XAR5[AR0]        ; |461| 
        AND       AH,AL,#0x0002         ; |461| 
        BF        L59,EQ                ; |461| 
        ; branchcc occurs ; |461| 
        MOV       AL,#-32765            ; |461| 
        BF        L64,UNC               ; |461| 
        ; branch occurs ; |461| 
L59:    
        AND       AH,AL,#0x0004         ; |461| 
        BF        L60,EQ                ; |461| 
        ; branchcc occurs ; |461| 
        MOV       AL,#-32764            ; |461| 
        BF        L64,UNC               ; |461| 
        ; branch occurs ; |461| 
L60:    
        AND       AH,AL,#0x0001         ; |461| 
        BF        L61,EQ                ; |461| 
        ; branchcc occurs ; |461| 
        MOV       AL,#-32766            ; |461| 
        BF        L64,UNC               ; |461| 
        ; branch occurs ; |461| 
L61:    
        ANDB      AL,#8                 ; |461| 
        BF        L62,EQ                ; |461| 
        ; branchcc occurs ; |461| 
        MOV       AL,#-32763            ; |461| 
        BF        L64,UNC               ; |461| 
        ; branch occurs ; |461| 
L62:    
        MOVB      XAR0,#11              ; |461| 
        MOV       AL,*+XAR4[AR0]        ; |461| 
        BF        L64,UNC               ; |461| 
        ; branch occurs ; |461| 
L63:    
        MOV       AL,#-32761            ; |460| 
L64:    
	.dwpsn	"man.c",466,1
        LRETR
        ; return occurs
	.dwattr DW$185, DW_AT_end_file("man.c")
	.dwattr DW$185, DW_AT_end_line(0x1d2)
	.dwattr DW$185, DW_AT_end_column(0x01)
	.dwendtag DW$185

	.sect	".text"
	.global	_GetCylinderAverageValue

DW$187	.dwtag  DW_TAG_subprogram, DW_AT_name("GetCylinderAverageValue"), DW_AT_symbol_name("_GetCylinderAverageValue")
	.dwattr DW$187, DW_AT_low_pc(_GetCylinderAverageValue)
	.dwattr DW$187, DW_AT_high_pc(0x00)
	.dwattr DW$187, DW_AT_begin_file("man.c")
	.dwattr DW$187, DW_AT_begin_line(0x1d5)
	.dwattr DW$187, DW_AT_begin_column(0x05)
	.dwattr DW$187, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$187, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",470,1

;***************************************************************
;* FNAME: _GetCylinderAverageValue      FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_GetCylinderAverageValue:
;* AL    assigned to _num
DW$188	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num"), DW_AT_symbol_name("_num")
	.dwattr DW$188, DW_AT_type(*DW$T$11)
	.dwattr DW$188, DW_AT_location[DW_OP_reg0]
        MOVZ      AR6,AL                ; |470| 
        MOV       ACC,AR6 << #1         ; |471| 
        MOVZ      AR0,AL                ; |471| 
        MOVL      XAR4,#_sensor         ; |471| 
        MOVL      XAR5,XAR4             ; |471| 
        MOV       T,#18                 ; |471| 
        MPYXU     ACC,T,AR0             ; |471| 
        ADDL      XAR5,ACC
        MOVL      *SP++,XAR1
        MOVZ      AR7,*+XAR5[0]         ; |471| 
        AND       AH,AR7,#0x0001        ; |471| 
        BF        L65,EQ                ; |471| 
        ; branchcc occurs ; |471| 
        MOVB      AH,#1                 ; |471| 
        ADD       AH,AR0                ; |471| 
        MOVZ      AR1,AH                ; |471| 
        MOV       T,#18                 ; |471| 
        MPYXU     ACC,T,AR1             ; |471| 
        ADDL      XAR4,ACC
        MOV       AH,*+XAR4[0]          ; |471| 
        AND       AL,AH,#0x0001         ; |471| 
        BF        L66,NEQ               ; |471| 
        ; branchcc occurs ; |471| 
L65:    
        MOV       AL,#-32761            ; |471| 
        BF        L73,UNC               ; |471| 
        ; branch occurs ; |471| 
L66:    
        OR        AH,AR7                ; |472| 
        ANDB      AH,#0x10              ; |472| 
        BF        L67,EQ                ; |472| 
        ; branchcc occurs ; |472| 
        MOV       AL,#-32762            ; |472| 
        BF        L73,UNC               ; |472| 
        ; branch occurs ; |472| 
L67:    
        MOVL      XAR4,#_status3        ; |473| 
        MOVZ      AR7,*+XAR4[AR0]       ; |473| 
        AND       AH,AR7,#0x0002        ; |473| 
        BF        L68,NEQ               ; |473| 
        ; branchcc occurs ; |473| 
        MOV       AH,*+XAR4[AR1]        ; |473| 
        AND       AL,AH,#0x0002         ; |473| 
        BF        L69,EQ                ; |473| 
        ; branchcc occurs ; |473| 
L68:    
        MOV       AL,#-32765            ; |473| 
        BF        L73,UNC               ; |473| 
        ; branch occurs ; |473| 
L69:    
        MOV       AL,AH                 ; |474| 
        OR        AL,AR7                ; |474| 
        ANDB      AL,#0x04              ; |474| 
        BF        L70,EQ                ; |474| 
        ; branchcc occurs ; |474| 
        MOV       AL,#-32764            ; |474| 
        BF        L73,UNC               ; |474| 
        ; branch occurs ; |474| 
L70:    
        MOV       AL,AH                 ; |474| 
        OR        AL,AR7                ; |474| 
        ANDB      AL,#0x01              ; |474| 
        BF        L71,EQ                ; |474| 
        ; branchcc occurs ; |474| 
        MOV       AL,#-32766            ; |474| 
        BF        L73,UNC               ; |474| 
        ; branch occurs ; |474| 
L71:    
        OR        AH,AR7                ; |474| 
        AND       AH,AH,#0x0800         ; |474| 
        BF        L72,EQ                ; |474| 
        ; branchcc occurs ; |474| 
        MOV       AL,#-32763            ; |474| 
        BF        L73,UNC               ; |474| 
        ; branch occurs ; |474| 
L72:    
        MOVU      ACC,AR6
        LSL       ACC,2                 ; |474| 
        MOVL      XAR4,#_cylinders+2    ; |474| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |474| 
L73:    
        MOVL      XAR1,*--SP            ; |474| 
	.dwpsn	"man.c",479,1
        LRETR
        ; return occurs
	.dwattr DW$187, DW_AT_end_file("man.c")
	.dwattr DW$187, DW_AT_end_line(0x1df)
	.dwattr DW$187, DW_AT_end_column(0x01)
	.dwendtag DW$187

	.sect	".text"
	.global	_GetCylinderDeviationValue

DW$189	.dwtag  DW_TAG_subprogram, DW_AT_name("GetCylinderDeviationValue"), DW_AT_symbol_name("_GetCylinderDeviationValue")
	.dwattr DW$189, DW_AT_low_pc(_GetCylinderDeviationValue)
	.dwattr DW$189, DW_AT_high_pc(0x00)
	.dwattr DW$189, DW_AT_begin_file("man.c")
	.dwattr DW$189, DW_AT_begin_line(0x1e2)
	.dwattr DW$189, DW_AT_begin_column(0x05)
	.dwattr DW$189, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$189, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",483,1

;***************************************************************
;* FNAME: _GetCylinderDeviationValue    FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_GetCylinderDeviationValue:
;* AL    assigned to _num
DW$190	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num"), DW_AT_symbol_name("_num")
	.dwattr DW$190, DW_AT_type(*DW$T$11)
	.dwattr DW$190, DW_AT_location[DW_OP_reg0]
        MOVZ      AR6,AL                ; |483| 
        MOV       ACC,AR6 << #1         ; |484| 
        MOVZ      AR0,AL                ; |484| 
        MOVL      XAR4,#_sensor         ; |484| 
        MOVL      XAR5,XAR4             ; |484| 
        MOV       T,#18                 ; |484| 
        MPYXU     ACC,T,AR0             ; |484| 
        ADDL      XAR5,ACC
        MOVL      *SP++,XAR1
        MOVZ      AR7,*+XAR5[0]         ; |484| 
        AND       AH,AR7,#0x0001        ; |484| 
        BF        L74,EQ                ; |484| 
        ; branchcc occurs ; |484| 
        MOVB      AH,#1                 ; |484| 
        ADD       AH,AR0                ; |484| 
        MOVZ      AR1,AH                ; |484| 
        MOV       T,#18                 ; |484| 
        MPYXU     ACC,T,AR1             ; |484| 
        ADDL      XAR4,ACC
        MOV       AH,*+XAR4[0]          ; |484| 
        AND       AL,AH,#0x0001         ; |484| 
        BF        L75,NEQ               ; |484| 
        ; branchcc occurs ; |484| 
L74:    
        MOV       AL,#-32761            ; |484| 
        BF        L82,UNC               ; |484| 
        ; branch occurs ; |484| 
L75:    
        OR        AH,AR7                ; |485| 
        ANDB      AH,#0x10              ; |485| 
        BF        L76,EQ                ; |485| 
        ; branchcc occurs ; |485| 
        MOV       AL,#-32762            ; |485| 
        BF        L82,UNC               ; |485| 
        ; branch occurs ; |485| 
L76:    
        MOVL      XAR4,#_status3        ; |486| 
        MOVZ      AR7,*+XAR4[AR0]       ; |486| 
        AND       AH,AR7,#0x0002        ; |486| 
        BF        L77,NEQ               ; |486| 
        ; branchcc occurs ; |486| 
        MOV       AH,*+XAR4[AR1]        ; |486| 
        AND       AL,AH,#0x0002         ; |486| 
        BF        L78,EQ                ; |486| 
        ; branchcc occurs ; |486| 
L77:    
        MOV       AL,#-32765            ; |486| 
        BF        L82,UNC               ; |486| 
        ; branch occurs ; |486| 
L78:    
        MOV       AL,AH                 ; |487| 
        OR        AL,AR7                ; |487| 
        ANDB      AL,#0x04              ; |487| 
        BF        L79,EQ                ; |487| 
        ; branchcc occurs ; |487| 
        MOV       AL,#-32764            ; |487| 
        BF        L82,UNC               ; |487| 
        ; branch occurs ; |487| 
L79:    
        MOV       AL,AH                 ; |487| 
        OR        AL,AR7                ; |487| 
        ANDB      AL,#0x01              ; |487| 
        BF        L80,EQ                ; |487| 
        ; branchcc occurs ; |487| 
        MOV       AL,#-32766            ; |487| 
        BF        L82,UNC               ; |487| 
        ; branch occurs ; |487| 
L80:    
        OR        AH,AR7                ; |487| 
        AND       AH,AH,#0x0800         ; |487| 
        BF        L81,EQ                ; |487| 
        ; branchcc occurs ; |487| 
        MOV       AL,#-32763            ; |487| 
        BF        L82,UNC               ; |487| 
        ; branch occurs ; |487| 
L81:    
        MOVU      ACC,AR6
        LSL       ACC,2                 ; |487| 
        MOVL      XAR4,#_cylinders+3    ; |487| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |487| 
L82:    
        MOVL      XAR1,*--SP            ; |487| 
	.dwpsn	"man.c",492,1
        LRETR
        ; return occurs
	.dwattr DW$189, DW_AT_end_file("man.c")
	.dwattr DW$189, DW_AT_end_line(0x1ec)
	.dwattr DW$189, DW_AT_end_column(0x01)
	.dwendtag DW$189

	.sect	".text"
	.global	_Status1Flags

DW$191	.dwtag  DW_TAG_subprogram, DW_AT_name("Status1Flags"), DW_AT_symbol_name("_Status1Flags")
	.dwattr DW$191, DW_AT_low_pc(_Status1Flags)
	.dwattr DW$191, DW_AT_high_pc(0x00)
	.dwattr DW$191, DW_AT_begin_file("man.c")
	.dwattr DW$191, DW_AT_begin_line(0x1f0)
	.dwattr DW$191, DW_AT_begin_column(0x11)
	.dwattr DW$191, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$191, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",497,1

;***************************************************************
;* FNAME: _Status1Flags                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_Status1Flags:
;* AL    assigned to _chan
DW$192	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$192, DW_AT_type(*DW$T$11)
	.dwattr DW$192, DW_AT_location[DW_OP_reg0]
        MOV       T,#18                 ; |498| 
        MPYXU     ACC,T,AL              ; |498| 
        MOVL      XAR4,#_sensor         ; |498| 
        ADDL      XAR4,ACC
	.dwpsn	"man.c",499,1
        LRETR
        ; return occurs
	.dwattr DW$191, DW_AT_end_file("man.c")
	.dwattr DW$191, DW_AT_end_line(0x1f3)
	.dwattr DW$191, DW_AT_end_column(0x01)
	.dwendtag DW$191

	.sect	".text"
	.global	_SetRPMChan

DW$193	.dwtag  DW_TAG_subprogram, DW_AT_name("SetRPMChan"), DW_AT_symbol_name("_SetRPMChan")
	.dwattr DW$193, DW_AT_low_pc(_SetRPMChan)
	.dwattr DW$193, DW_AT_high_pc(0x00)
	.dwattr DW$193, DW_AT_begin_file("man.c")
	.dwattr DW$193, DW_AT_begin_line(0x1f6)
	.dwattr DW$193, DW_AT_begin_column(0x06)
	.dwattr DW$193, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$193, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",503,1

;***************************************************************
;* FNAME: _SetRPMChan                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SetRPMChan:
;* AL    assigned to _chan
DW$194	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$194, DW_AT_type(*DW$T$11)
	.dwattr DW$194, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _rpm
DW$195	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$195, DW_AT_type(*DW$T$11)
	.dwattr DW$195, DW_AT_location[DW_OP_reg1]
        MOVZ      AR0,AL                ; |503| 
        MOVZ      AR6,AH                ; |503| 
        MOV       T,#18                 ; |505| 
        MOVL      XAR4,#_sensor+16      ; |505| 
        MPYXU     ACC,T,AR0             ; |505| 
        ADDL      XAR4,ACC
        CMP       AR6,#2000             ; |505| 
        BF        L83,HIS               ; |505| 
        ; branchcc occurs ; |505| 
        MOV       AL,AR6
        BF        L84,UNC               ; |505| 
        ; branch occurs ; |505| 
L83:    
        MOVB      AL,#0
L84:    
        MOV       *+XAR4[0],AL          ; |505| 
        MOV       AL,AR6                ; |505| 
        BF        L85,NEQ               ; |505| 
        ; branchcc occurs ; |505| 
        MOVL      XAR4,#_modalsetcounters ; |509| 
        MOV       *+XAR4[AR0],#0        ; |509| 
        MOVL      XAR4,#_checkmanalarms ; |510| 
        MOV       *+XAR4[AR0],#0        ; |510| 
L85:    
	.dwpsn	"man.c",512,1
        LRETR
        ; return occurs
	.dwattr DW$193, DW_AT_end_file("man.c")
	.dwattr DW$193, DW_AT_end_line(0x200)
	.dwattr DW$193, DW_AT_end_column(0x01)
	.dwendtag DW$193

	.sect	".text"
	.global	_ReadStatus1Int

DW$196	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadStatus1Int"), DW_AT_symbol_name("_ReadStatus1Int")
	.dwattr DW$196, DW_AT_low_pc(_ReadStatus1Int)
	.dwattr DW$196, DW_AT_high_pc(0x00)
	.dwattr DW$196, DW_AT_begin_file("man.c")
	.dwattr DW$196, DW_AT_begin_line(0x204)
	.dwattr DW$196, DW_AT_begin_column(0x0e)
	.dwattr DW$196, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$196, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",517,1

;***************************************************************
;* FNAME: _ReadStatus1Int               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadStatus1Int:
;* AL    assigned to _chan
DW$197	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$197, DW_AT_type(*DW$T$11)
	.dwattr DW$197, DW_AT_location[DW_OP_reg0]
        MOV       T,#18                 ; |521| 
        MPYXU     ACC,T,AL              ; |521| 
        MOVL      XAR4,#_sensor         ; |521| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |523| 
	.dwpsn	"man.c",524,1
        LRETR
        ; return occurs
	.dwattr DW$196, DW_AT_end_file("man.c")
	.dwattr DW$196, DW_AT_end_line(0x20c)
	.dwattr DW$196, DW_AT_end_column(0x01)
	.dwendtag DW$196

	.sect	".text"
	.global	_GetStatus2Flags

DW$198	.dwtag  DW_TAG_subprogram, DW_AT_name("GetStatus2Flags"), DW_AT_symbol_name("_GetStatus2Flags")
	.dwattr DW$198, DW_AT_low_pc(_GetStatus2Flags)
	.dwattr DW$198, DW_AT_high_pc(0x00)
	.dwattr DW$198, DW_AT_begin_file("man.c")
	.dwattr DW$198, DW_AT_begin_line(0x210)
	.dwattr DW$198, DW_AT_begin_column(0x15)
	.dwattr DW$198, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$198, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",529,1

;***************************************************************
;* FNAME: _GetStatus2Flags              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_GetStatus2Flags:
;* AL    assigned to _chan
DW$199	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$199, DW_AT_type(*DW$T$11)
	.dwattr DW$199, DW_AT_location[DW_OP_reg0]
        MOV       T,#18                 ; |530| 
        MPYXU     ACC,T,AL              ; |530| 
        MOVL      XAR4,#_sensor+1       ; |530| 
        ADDL      XAR4,ACC
	.dwpsn	"man.c",531,1
        LRETR
        ; return occurs
	.dwattr DW$198, DW_AT_end_file("man.c")
	.dwattr DW$198, DW_AT_end_line(0x213)
	.dwattr DW$198, DW_AT_end_column(0x01)
	.dwendtag DW$198

	.sect	".text"
	.global	_MANCompTable

DW$200	.dwtag  DW_TAG_subprogram, DW_AT_name("MANCompTable"), DW_AT_symbol_name("_MANCompTable")
	.dwattr DW$200, DW_AT_low_pc(_MANCompTable)
	.dwattr DW$200, DW_AT_high_pc(0x00)
	.dwattr DW$200, DW_AT_begin_file("man.c")
	.dwattr DW$200, DW_AT_begin_line(0x217)
	.dwattr DW$200, DW_AT_begin_column(0x07)
	.dwattr DW$200, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$200, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",536,1

;***************************************************************
;* FNAME: _MANCompTable                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_MANCompTable:
;* AL    assigned to _chan
DW$201	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$201, DW_AT_type(*DW$T$11)
	.dwattr DW$201, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _refpoint
DW$202	.dwtag  DW_TAG_formal_parameter, DW_AT_name("refpoint"), DW_AT_symbol_name("_refpoint")
	.dwattr DW$202, DW_AT_type(*DW$T$11)
	.dwattr DW$202, DW_AT_location[DW_OP_reg1]
        CMPB      AL,#28                ; |537| 
        MOVZ      AR6,AL                ; |536| 
        BF        L86,HIS               ; |537| 
        ; branchcc occurs ; |537| 
        CMPB      AH,#150               ; |537| 
        BF        L87,LO                ; |537| 
        ; branchcc occurs ; |537| 
L86:    
        MOVL      XAR4,#_man_comptable  ; |537| 
        BF        L88,UNC               ; |537| 
        ; branch occurs ; |537| 
L87:    
        MOV       T,#28                 ; |537| 
        MPYXU     ACC,T,AH              ; |537| 
        ADDU      ACC,AR6               ; |537| 
        MOVL      XAR4,#_man_comptable  ; |537| 
        ADDL      XAR4,ACC
L88:    
	.dwpsn	"man.c",539,1
        LRETR
        ; return occurs
	.dwattr DW$200, DW_AT_end_file("man.c")
	.dwattr DW$200, DW_AT_end_line(0x21b)
	.dwattr DW$200, DW_AT_end_column(0x01)
	.dwendtag DW$200

	.sect	".text"
	.global	_GetRPMCompVal

DW$203	.dwtag  DW_TAG_subprogram, DW_AT_name("GetRPMCompVal"), DW_AT_symbol_name("_GetRPMCompVal")
	.dwattr DW$203, DW_AT_low_pc(_GetRPMCompVal)
	.dwattr DW$203, DW_AT_high_pc(0x00)
	.dwattr DW$203, DW_AT_begin_file("man.c")
	.dwattr DW$203, DW_AT_begin_line(0x21f)
	.dwattr DW$203, DW_AT_begin_column(0x05)
	.dwattr DW$203, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$203, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",544,1

;***************************************************************
;* FNAME: _GetRPMCompVal                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_GetRPMCompVal:
;* AL    assigned to _chan
DW$204	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$204, DW_AT_type(*DW$T$11)
	.dwattr DW$204, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _rpm
DW$205	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$205, DW_AT_type(*DW$T$11)
	.dwattr DW$205, DW_AT_location[DW_OP_reg1]
        MOVZ      AR6,AL                ; |544| 
        MOV       T,#28                 ; |545| 
        MPYXU     ACC,T,AH              ; |545| 
        ADDU      ACC,AR6               ; |545| 
        MOVL      XAR4,#_man_comptable  ; |545| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |545| 
	.dwpsn	"man.c",546,1
        LRETR
        ; return occurs
	.dwattr DW$203, DW_AT_end_file("man.c")
	.dwattr DW$203, DW_AT_end_line(0x222)
	.dwattr DW$203, DW_AT_end_column(0x01)
	.dwendtag DW$203

	.sect	".text"
	.global	_InitMAN

DW$206	.dwtag  DW_TAG_subprogram, DW_AT_name("InitMAN"), DW_AT_symbol_name("_InitMAN")
	.dwattr DW$206, DW_AT_low_pc(_InitMAN)
	.dwattr DW$206, DW_AT_high_pc(0x00)
	.dwattr DW$206, DW_AT_begin_file("man.c")
	.dwattr DW$206, DW_AT_begin_line(0x226)
	.dwattr DW$206, DW_AT_begin_column(0x06)
	.dwattr DW$206, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$206, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",551,1

;***************************************************************
;* FNAME: _InitMAN                      FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_InitMAN:
        MOVL      *SP++,XAR1
        MOVB      XAR1,#0
        MOVL      *SP++,XAR2
	.dwpsn	"man.c",557,0
        MOV       T,#18                 ; |559| 
L89:    
DW$L$_InitMAN$2$B:
	.dwpsn	"man.c",558,0
        MPYXU     ACC,T,AR1             ; |559| 
        MOVL      XAR4,#_sensor         ; |559| 
        ADDL      XAR4,ACC
	.dwpsn	"man.c",560,0
        MOVB      XAR0,#0
DW$L$_InitMAN$2$E:
L90:    
DW$L$_InitMAN$3$B:
        MOV       *+XAR4[AR0],#0        ; |560| 
        ADDB      XAR0,#1               ; |560| 
        MOV       AL,AR0                ; |560| 
        CMPB      AL,#18                ; |560| 
        BF        L90,LO                ; |560| 
        ; branchcc occurs ; |560| 
DW$L$_InitMAN$3$E:
DW$L$_InitMAN$4$B:
        MOVL      XAR4,#_modalsetcounters ; |561| 
        MOV       *+XAR4[AR1],#0        ; |561| 
        MOVL      XAR4,#_modalresetcounters ; |562| 
        MOV       *+XAR4[AR1],#0        ; |562| 
        MOVL      XAR4,#_checkmanalarms ; |563| 
        MOV       *+XAR4[AR1],#0        ; |563| 
        ADDB      XAR1,#1               ; |557| 
        MOV       AL,AR1                ; |557| 
        CMPB      AL,#28                ; |557| 
	.dwpsn	"man.c",564,0
        BF        L89,LO                ; |557| 
        ; branchcc occurs ; |557| 
DW$L$_InitMAN$4$E:
	.dwpsn	"man.c",566,0
        MOVB      XAR1,#0
L91:    
DW$L$_InitMAN$6$B:
	.dwpsn	"man.c",567,0
        MOV       AL,AR1                ; |568| 
        LCR       #_ReadSensorStatusfromNVMEM ; |568| 
        ; call occurs [#_ReadSensorStatusfromNVMEM] ; |568| 
        MOV       AL,AR1                ; |569| 
        LCR       #_ReadOffsetAfromNVMEM ; |569| 
        ; call occurs [#_ReadOffsetAfromNVMEM] ; |569| 
        MOV       AL,AR1                ; |570| 
        LCR       #_ReadOffsetBfromNVMEM ; |570| 
        ; call occurs [#_ReadOffsetBfromNVMEM] ; |570| 
        ADDB      XAR1,#1               ; |566| 
        MOV       AL,AR1                ; |566| 
        CMPB      AL,#28                ; |566| 
	.dwpsn	"man.c",571,0
        BF        L91,LO                ; |566| 
        ; branchcc occurs ; |566| 
DW$L$_InitMAN$6$E:
        LCR       #_ReadSpeedCompStructfromNVMEM ; |572| 
        ; call occurs [#_ReadSpeedCompStructfromNVMEM] ; |572| 
        LCR       #_ReadMANCompTablefromNVMEM ; |573| 
        ; call occurs [#_ReadMANCompTablefromNVMEM] ; |573| 
        LCR       #_ReadEngineStructfromNVMEM ; |574| 
        ; call occurs [#_ReadEngineStructfromNVMEM] ; |574| 
	.dwpsn	"man.c",576,0
        MOVB      XAR1,#0
L92:    
DW$L$_InitMAN$8$B:
	.dwpsn	"man.c",577,0
        MOVU      ACC,AR1
        MOVL      XAR4,#_cylinders      ; |578| 
        LSL       ACC,2                 ; |578| 
        ADDL      XAR4,ACC
        ADDB      XAR1,#1               ; |576| 
        MOV       *+XAR4[2],#0          ; |578| 
        MOV       AL,AR1                ; |576| 
        MOV       *+XAR4[3],#0          ; |579| 
        CMPB      AL,#14                ; |576| 
        MOV       *+XAR4[0],#0          ; |581| 
	.dwpsn	"man.c",582,0
        BF        L92,LO                ; |576| 
        ; branchcc occurs ; |576| 
DW$L$_InitMAN$8$E:
        MOVW      DP,#_mbupdate
        MOVB      AL,#0
        MOV       @_mbupdate,#65535     ; |584| 
        LCR       #_SetRPM              ; |585| 
        ; call occurs [#_SetRPM] ; |585| 
        LCR       #_NominalSpeedUpdate  ; |586| 
        ; call occurs [#_NominalSpeedUpdate] ; |586| 
        LCR       #_PreWarningPowerUpInit ; |588| 
        ; call occurs [#_PreWarningPowerUpInit] ; |588| 
        MOVB      AL,#0
        MOVB      XAR5,#1               ; |591| 
        MOVL      XAR4,#_alarms         ; |591| 
        MOV       AH,#28608             ; |591| 
        LCR       #_ReadNVMemory        ; |591| 
        ; call occurs [#_ReadNVMemory] ; |591| 
	.dwpsn	"man.c",592,0
        MOVB      XAR1,#0
L93:    
DW$L$_InitMAN$10$B:
	.dwpsn	"man.c",593,0
        MOV       ACC,AR1 << #1         ; |595| 
        MOV       T,#18                 ; |595| 
        MOVZ      AR2,AL                ; |595| 
        MOVL      XAR4,#_sensor+1       ; |595| 
        MOV       AH,#28610             ; |595| 
        MOVB      XAR5,#1               ; |595| 
        ADD       AH,AR2                ; |595| 
        MOVZ      AR6,AH                ; |595| 
        MPYXU     ACC,T,AR1             ; |595| 
        ADDL      XAR4,ACC
        MOVB      AL,#0
        MOV       AH,AR6                ; |595| 
        LCR       #_ReadNVMemory        ; |595| 
        ; call occurs [#_ReadNVMemory] ; |595| 
        MOV       AL,AR1                ; |595| 
        CMPB      AL,#14                ; |596| 
        BF        L94,HIS               ; |596| 
        ; branchcc occurs ; |596| 
DW$L$_InitMAN$10$E:
DW$L$_InitMAN$11$B:
        MOV       AH,#28638             ; |596| 
        ADD       AH,AR2                ; |596| 
        MOVL      XAR4,#_cylinders+1    ; |596| 
        MOVZ      AR6,AH                ; |596| 
        MOVB      XAR5,#1               ; |596| 
        MOVU      ACC,AR1
        LSL       ACC,2                 ; |596| 
        ADDL      XAR4,ACC
        MOVB      AL,#0
        MOV       AH,AR6                ; |596| 
        LCR       #_ReadNVMemory        ; |596| 
        ; call occurs [#_ReadNVMemory] ; |596| 
DW$L$_InitMAN$11$E:
L94:    
DW$L$_InitMAN$12$B:
        MOVL      XAR4,#_status3        ; |597| 
        MOVL      ACC,XAR4              ; |597| 
        ADDU      ACC,AR1               ; |597| 
        MOVB      XAR5,#1               ; |597| 
        MOVL      XAR2,ACC              ; |597| 
        MOVL      XAR4,ACC              ; |597| 
        MOV       AL,#14333             ; |597| 
        ADD       AL,AR1                ; |597| 
        MOV       ACC,AL << #1          ; |597| 
        MOV       AH,AL                 ; |597| 
        MOVB      AL,#0
        LCR       #_ReadNVMemory        ; |597| 
        ; call occurs [#_ReadNVMemory] ; |597| 
        ADDB      XAR1,#1               ; |592| 
        AND       *+XAR2[0],#0x0f0f     ; |598| 
        MOV       AL,AR1                ; |592| 
        CMPB      AL,#28                ; |592| 
	.dwpsn	"man.c",606,0
        BF        L93,LO                ; |592| 
        ; branchcc occurs ; |592| 
DW$L$_InitMAN$12$E:
        MOVB      AL,#0
        MOVB      XAR5,#2               ; |608| 
        MOVL      XAR4,#_damalarms      ; |608| 
        MOV       AH,#28922             ; |608| 
        LCR       #_ReadNVMemory        ; |608| 
        ; call occurs [#_ReadNVMemory] ; |608| 
        MOVB      AL,#0
        MOVB      XAR5,#1               ; |609| 
        MOVL      XAR4,#_damalarms+2    ; |609| 
        MOV       AH,#28926             ; |609| 
        LCR       #_ReadNVMemory        ; |609| 
        ; call occurs [#_ReadNVMemory] ; |609| 
        MOVB      AL,#0
        MOVB      XAR5,#1               ; |610| 
        MOVL      XAR4,#_damalarms+3    ; |610| 
        MOV       AH,#28928             ; |610| 
        LCR       #_ReadNVMemory        ; |610| 
        ; call occurs [#_ReadNVMemory] ; |610| 
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"man.c",613,1
        LRETR
        ; return occurs

DW$207	.dwtag  DW_TAG_loop
	.dwattr DW$207, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L93:1:1473840056")
	.dwattr DW$207, DW_AT_begin_file("man.c")
	.dwattr DW$207, DW_AT_begin_line(0x250)
	.dwattr DW$207, DW_AT_end_line(0x25e)
DW$208	.dwtag  DW_TAG_loop_range
	.dwattr DW$208, DW_AT_low_pc(DW$L$_InitMAN$10$B)
	.dwattr DW$208, DW_AT_high_pc(DW$L$_InitMAN$10$E)
DW$209	.dwtag  DW_TAG_loop_range
	.dwattr DW$209, DW_AT_low_pc(DW$L$_InitMAN$11$B)
	.dwattr DW$209, DW_AT_high_pc(DW$L$_InitMAN$11$E)
DW$210	.dwtag  DW_TAG_loop_range
	.dwattr DW$210, DW_AT_low_pc(DW$L$_InitMAN$12$B)
	.dwattr DW$210, DW_AT_high_pc(DW$L$_InitMAN$12$E)
	.dwendtag DW$207


DW$211	.dwtag  DW_TAG_loop
	.dwattr DW$211, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L92:1:1473840056")
	.dwattr DW$211, DW_AT_begin_file("man.c")
	.dwattr DW$211, DW_AT_begin_line(0x240)
	.dwattr DW$211, DW_AT_end_line(0x246)
DW$212	.dwtag  DW_TAG_loop_range
	.dwattr DW$212, DW_AT_low_pc(DW$L$_InitMAN$8$B)
	.dwattr DW$212, DW_AT_high_pc(DW$L$_InitMAN$8$E)
	.dwendtag DW$211


DW$213	.dwtag  DW_TAG_loop
	.dwattr DW$213, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L91:1:1473840056")
	.dwattr DW$213, DW_AT_begin_file("man.c")
	.dwattr DW$213, DW_AT_begin_line(0x236)
	.dwattr DW$213, DW_AT_end_line(0x23b)
DW$214	.dwtag  DW_TAG_loop_range
	.dwattr DW$214, DW_AT_low_pc(DW$L$_InitMAN$6$B)
	.dwattr DW$214, DW_AT_high_pc(DW$L$_InitMAN$6$E)
	.dwendtag DW$213


DW$215	.dwtag  DW_TAG_loop
	.dwattr DW$215, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L89:1:1473840056")
	.dwattr DW$215, DW_AT_begin_file("man.c")
	.dwattr DW$215, DW_AT_begin_line(0x22d)
	.dwattr DW$215, DW_AT_end_line(0x234)
DW$216	.dwtag  DW_TAG_loop_range
	.dwattr DW$216, DW_AT_low_pc(DW$L$_InitMAN$2$B)
	.dwattr DW$216, DW_AT_high_pc(DW$L$_InitMAN$2$E)
DW$217	.dwtag  DW_TAG_loop_range
	.dwattr DW$217, DW_AT_low_pc(DW$L$_InitMAN$4$B)
	.dwattr DW$217, DW_AT_high_pc(DW$L$_InitMAN$4$E)

DW$218	.dwtag  DW_TAG_loop
	.dwattr DW$218, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L90:2:1473840056")
	.dwattr DW$218, DW_AT_begin_file("man.c")
	.dwattr DW$218, DW_AT_begin_line(0x230)
	.dwattr DW$218, DW_AT_end_line(0x230)
DW$219	.dwtag  DW_TAG_loop_range
	.dwattr DW$219, DW_AT_low_pc(DW$L$_InitMAN$3$B)
	.dwattr DW$219, DW_AT_high_pc(DW$L$_InitMAN$3$E)
	.dwendtag DW$218

	.dwendtag DW$215

	.dwattr DW$206, DW_AT_end_file("man.c")
	.dwattr DW$206, DW_AT_end_line(0x265)
	.dwattr DW$206, DW_AT_end_column(0x01)
	.dwendtag DW$206

	.sect	".text"
	.global	_EngineRunTimeUpdate

DW$220	.dwtag  DW_TAG_subprogram, DW_AT_name("EngineRunTimeUpdate"), DW_AT_symbol_name("_EngineRunTimeUpdate")
	.dwattr DW$220, DW_AT_low_pc(_EngineRunTimeUpdate)
	.dwattr DW$220, DW_AT_high_pc(0x00)
	.dwattr DW$220, DW_AT_begin_file("man.c")
	.dwattr DW$220, DW_AT_begin_line(0x269)
	.dwattr DW$220, DW_AT_begin_column(0x06)
	.dwattr DW$220, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$220, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",618,1

;***************************************************************
;* FNAME: _EngineRunTimeUpdate          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_EngineRunTimeUpdate:
        MOVB      AL,#0
        LCR       #_GetModalRPM         ; |621| 
        ; call occurs [#_GetModalRPM] ; |621| 
        CMPB      AL,#12                ; |621| 
        BF        L95,LOS               ; |621| 
        ; branchcc occurs ; |621| 
        MOVB      ACC,#1
        MOVW      DP,#_engine
        ADDL      @_engine,ACC          ; |624| 
        LCR       #_WriteEngineStructtoNVMEM ; |625| 
        ; call occurs [#_WriteEngineStructtoNVMEM] ; |625| 
L95:    
	.dwpsn	"man.c",627,1
        LRETR
        ; return occurs
	.dwattr DW$220, DW_AT_end_file("man.c")
	.dwattr DW$220, DW_AT_end_line(0x273)
	.dwattr DW$220, DW_AT_end_column(0x01)
	.dwendtag DW$220

	.sect	".text"
	.global	_ReadEngineStructfromNVMEM

DW$221	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadEngineStructfromNVMEM"), DW_AT_symbol_name("_ReadEngineStructfromNVMEM")
	.dwattr DW$221, DW_AT_low_pc(_ReadEngineStructfromNVMEM)
	.dwattr DW$221, DW_AT_high_pc(0x00)
	.dwattr DW$221, DW_AT_begin_file("man.c")
	.dwattr DW$221, DW_AT_begin_line(0x276)
	.dwattr DW$221, DW_AT_begin_column(0x06)
	.dwattr DW$221, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$221, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",631,1

;***************************************************************
;* FNAME: _ReadEngineStructfromNVMEM    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadEngineStructfromNVMEM:
        MOVB      AL,#0
        MOVB      XAR5,#2               ; |639| 
        MOVL      XAR4,#_engine         ; |639| 
        MOV       AH,#28592             ; |639| 
        LCR       #_ReadNVMemory        ; |639| 
        ; call occurs [#_ReadNVMemory] ; |639| 
	.dwpsn	"man.c",640,1
        LRETR
        ; return occurs
	.dwattr DW$221, DW_AT_end_file("man.c")
	.dwattr DW$221, DW_AT_end_line(0x280)
	.dwattr DW$221, DW_AT_end_column(0x01)
	.dwendtag DW$221

	.sect	".text"
	.global	_WriteEngineStructtoNVMEM

DW$222	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteEngineStructtoNVMEM"), DW_AT_symbol_name("_WriteEngineStructtoNVMEM")
	.dwattr DW$222, DW_AT_low_pc(_WriteEngineStructtoNVMEM)
	.dwattr DW$222, DW_AT_high_pc(0x00)
	.dwattr DW$222, DW_AT_begin_file("man.c")
	.dwattr DW$222, DW_AT_begin_line(0x284)
	.dwattr DW$222, DW_AT_begin_column(0x06)
	.dwattr DW$222, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$222, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",645,1

;***************************************************************
;* FNAME: _WriteEngineStructtoNVMEM     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WriteEngineStructtoNVMEM:
        MOVB      AL,#0
        MOVB      XAR5,#2               ; |655| 
        MOVL      XAR4,#_engine         ; |655| 
        MOV       AH,#28592             ; |655| 
        LCR       #_WriteNVMemory       ; |655| 
        ; call occurs [#_WriteNVMemory] ; |655| 
	.dwpsn	"man.c",656,1
        LRETR
        ; return occurs
	.dwattr DW$222, DW_AT_end_file("man.c")
	.dwattr DW$222, DW_AT_end_line(0x290)
	.dwattr DW$222, DW_AT_end_column(0x01)
	.dwendtag DW$222

	.sect	".text"
	.global	_NominalSpeedUpdate

DW$223	.dwtag  DW_TAG_subprogram, DW_AT_name("NominalSpeedUpdate"), DW_AT_symbol_name("_NominalSpeedUpdate")
	.dwattr DW$223, DW_AT_low_pc(_NominalSpeedUpdate)
	.dwattr DW$223, DW_AT_high_pc(0x00)
	.dwattr DW$223, DW_AT_begin_file("man.c")
	.dwattr DW$223, DW_AT_begin_line(0x295)
	.dwattr DW$223, DW_AT_begin_column(0x06)
	.dwattr DW$223, DW_AT_frame_base[DW_OP_breg20 -12]
	.dwattr DW$223, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",662,1

;***************************************************************
;* FNAME: _NominalSpeedUpdate           FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  1 Auto,  6 SOE     *
;***************************************************************

_NominalSpeedUpdate:
        MOVL      *SP++,XAR1
        MOVW      DP,#_allsensors+3
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#4
        MOV       AL,@_allsensors+3     ; |667| 
        LCR       #U$$TOFS              ; |667| 
        ; call occurs [#U$$TOFS] ; |667| 
        MOVL      XAR6,ACC              ; |667| 
        MOV       AL,#52429
        MOV       AH,#16268
        MOVL      *-SP[2],ACC           ; |667| 
        MOVL      ACC,XAR6              ; |667| 
        LCR       #FS$$MPY              ; |667| 
        ; call occurs [#FS$$MPY] ; |667| 
        LCR       #FS$$TOU              ; |667| 
        ; call occurs [#FS$$TOU] ; |667| 
        MOVW      DP,#_allsensors+5
        MOV       @_allsensors+5,AL     ; |667| 
        MOVW      DP,#_allsensors+3
        MOV       AL,@_allsensors+3     ; |668| 
        LCR       #U$$TOFS              ; |668| 
        ; call occurs [#U$$TOFS] ; |668| 
        MOVL      XAR6,ACC              ; |668| 
        MOV       AL,#52429
        MOV       AH,#15948
        MOVL      *-SP[2],ACC           ; |668| 
        MOVL      ACC,XAR6              ; |668| 
        LCR       #FS$$MPY              ; |668| 
        ; call occurs [#FS$$MPY] ; |668| 
        LCR       #FS$$TOU              ; |668| 
        ; call occurs [#FS$$TOU] ; |668| 
        MOVW      DP,#_allsensors+4
        MOV       *-SP[3],#0            ; |670| 
	.dwpsn	"man.c",670,0
        MOV       @_allsensors+4,AL     ; |668| 
L96:    
DW$L$_NominalSpeedUpdate$2$B:
	.dwpsn	"man.c",671,0
	.dwpsn	"man.c",672,0
        MOVB      XAR3,#0
DW$L$_NominalSpeedUpdate$2$E:
L97:    
DW$L$_NominalSpeedUpdate$3$B:
	.dwpsn	"man.c",673,0
        SETC      SXM
        MOV       AL,*-SP[3]
        MOVL      XAR4,#_speedcompcoeffs+2 ; |674| 
        MOV       ACC,AL << 1           ; |674| 
        ADD       ACC,AR3               ; |674| 
        ADDL      XAR4,ACC
        MOVL      XAR2,ACC              ; |674| 
        MOV       AL,*+XAR4[0]          ; |674| 
        LCR       #U$$TOFS              ; |674| 
        ; call occurs [#U$$TOFS] ; |674| 
        MOVW      DP,#_allsensors+3
        MOVL      XAR1,ACC              ; |674| 
        MOV       AL,@_allsensors+3     ; |675| 
        LCR       #U$$TOFS              ; |675| 
        ; call occurs [#U$$TOFS] ; |675| 
        MOVL      *-SP[2],ACC           ; |675| 
        MOVL      ACC,XAR1              ; |675| 
        LCR       #FS$$MPY              ; |675| 
        ; call occurs [#FS$$MPY] ; |675| 
        MOVL      XAR1,ACC              ; |675| 
        MOV       AL,#0
        MOV       AH,#17096
        MOVL      *-SP[2],ACC           ; |677| 
        MOVL      ACC,XAR1              ; |677| 
        LCR       #FS$$DIV              ; |677| 
        ; call occurs [#FS$$DIV] ; |677| 
        LCR       #FS$$TOU              ; |677| 
        ; call occurs [#FS$$TOU] ; |677| 
        MOVZ      AR6,AL                ; |677| 
        MOVL      XAR4,#_calibration+1  ; |677| 
        MOVL      ACC,XAR2              ; |677| 
        ADDL      XAR4,ACC
        MOV       AL,AR3                ; |677| 
        ADDB      AL,#1                 ; |672| 
        CMPB      AL,#2                 ; |672| 
        MOV       *+XAR4[0],AR6         ; |677| 
        MOVZ      AR3,AL                ; |672| 
	.dwpsn	"man.c",678,0
        BF        L97,LT                ; |672| 
        ; branchcc occurs ; |672| 
DW$L$_NominalSpeedUpdate$3$E:
DW$L$_NominalSpeedUpdate$4$B:
        INC       *-SP[3]               ; |670| 
        MOV       AL,*-SP[3]
        CMPB      AL,#3                 ; |670| 
	.dwpsn	"man.c",679,0
        BF        L96,LT                ; |670| 
        ; branchcc occurs ; |670| 
DW$L$_NominalSpeedUpdate$4$E:
        SUBB      SP,#4
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"man.c",680,1
        LRETR
        ; return occurs

DW$224	.dwtag  DW_TAG_loop
	.dwattr DW$224, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L96:1:1473840056")
	.dwattr DW$224, DW_AT_begin_file("man.c")
	.dwattr DW$224, DW_AT_begin_line(0x29e)
	.dwattr DW$224, DW_AT_end_line(0x2a7)
DW$225	.dwtag  DW_TAG_loop_range
	.dwattr DW$225, DW_AT_low_pc(DW$L$_NominalSpeedUpdate$2$B)
	.dwattr DW$225, DW_AT_high_pc(DW$L$_NominalSpeedUpdate$2$E)
DW$226	.dwtag  DW_TAG_loop_range
	.dwattr DW$226, DW_AT_low_pc(DW$L$_NominalSpeedUpdate$4$B)
	.dwattr DW$226, DW_AT_high_pc(DW$L$_NominalSpeedUpdate$4$E)

DW$227	.dwtag  DW_TAG_loop
	.dwattr DW$227, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L97:2:1473840056")
	.dwattr DW$227, DW_AT_begin_file("man.c")
	.dwattr DW$227, DW_AT_begin_line(0x2a0)
	.dwattr DW$227, DW_AT_end_line(0x2a6)
DW$228	.dwtag  DW_TAG_loop_range
	.dwattr DW$228, DW_AT_low_pc(DW$L$_NominalSpeedUpdate$3$B)
	.dwattr DW$228, DW_AT_high_pc(DW$L$_NominalSpeedUpdate$3$E)
	.dwendtag DW$227

	.dwendtag DW$224

	.dwattr DW$223, DW_AT_end_file("man.c")
	.dwattr DW$223, DW_AT_end_line(0x2a8)
	.dwattr DW$223, DW_AT_end_column(0x01)
	.dwendtag DW$223

	.sect	".text"
	.global	_MANAlarmChecks

DW$229	.dwtag  DW_TAG_subprogram, DW_AT_name("MANAlarmChecks"), DW_AT_symbol_name("_MANAlarmChecks")
	.dwattr DW$229, DW_AT_low_pc(_MANAlarmChecks)
	.dwattr DW$229, DW_AT_high_pc(0x00)
	.dwattr DW$229, DW_AT_begin_file("man.c")
	.dwattr DW$229, DW_AT_begin_line(0x2ab)
	.dwattr DW$229, DW_AT_begin_column(0x06)
	.dwattr DW$229, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$229, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",684,1

;***************************************************************
;* FNAME: _MANAlarmChecks               FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  6 SOE     *
;***************************************************************

_MANAlarmChecks:
;* AL    assigned to _rpm
DW$230	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$230, DW_AT_type(*DW$T$11)
	.dwattr DW$230, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVW      DP,#_allsensors
        MOVL      *SP++,XAR2
        MOVB      XAR1,#0
        MOVL      *SP++,XAR3
        MOVZ      AR3,AL                ; |684| 
        MOV       AL,@_allsensors       ; |690| 
        ADDB      SP,#2
        BF        L103,EQ               ; |690| 
        ; branchcc occurs ; |690| 
L98:    
DW$L$_MANAlarmChecks$2$B:
	.dwpsn	"man.c",691,0
        MOVL      XAR4,#_checkmanalarms ; |693| 
        MOV       AL,*+XAR4[AR1]        ; |693| 
        CMPB      AL,#5                 ; |693| 
        BF        L99,HIS               ; |693| 
        ; branchcc occurs ; |693| 
DW$L$_MANAlarmChecks$2$E:
DW$L$_MANAlarmChecks$3$B:
        MOV       T,#18                 ; |693| 
        MOVL      XAR4,#_sensor         ; |693| 
        MPYXU     ACC,T,AR1             ; |693| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#0          ; |693| 
        BF        L102,TC               ; |693| 
        ; branchcc occurs ; |693| 
DW$L$_MANAlarmChecks$3$E:
L99:    
DW$L$_MANAlarmChecks$4$B:
        MOV       T,#18                 ; |696| 
        MOVL      XAR4,#_sensor         ; |696| 
        MPYXU     ACC,T,AR1             ; |696| 
        ADDL      XAR4,ACC
        MOVL      XAR2,XAR4             ; |696| 
        MOVB      XAR0,#10              ; |696| 
        MOVZ      AR4,AR3               ; |696| 
        MOV       AH,*+XAR2[AR0]        ; |696| 
        MOV       AL,AR1                ; |696| 
        LCR       #_SensorAlarm         ; |696| 
        ; call occurs [#_SensorAlarm] ; |696| 
        MOVB      XAR0,#11              ; |697| 
        MOVZ      AR4,AR3               ; |697| 
        MOV       AH,*+XAR2[AR0]        ; |697| 
        MOV       AL,AR1                ; |697| 
        LCR       #_SensorDeviationAlarm ; |697| 
        ; call occurs [#_SensorDeviationAlarm] ; |697| 
        MOVB      XAR0,#10              ; |698| 
        MOVZ      AR4,AR3               ; |698| 
        MOV       AH,*+XAR2[AR0]        ; |698| 
        MOV       AL,AR1                ; |698| 
        LCR       #_SensorSlowDown      ; |698| 
        ; call occurs [#_SensorSlowDown] ; |698| 
        MOVB      XAR0,#11              ; |699| 
        MOVZ      AR4,AR3               ; |699| 
        MOV       AH,*+XAR2[AR0]        ; |699| 
        MOV       AL,AR1                ; |699| 
        LCR       #_SensorDeviationSlowDown ; |699| 
        ; call occurs [#_SensorDeviationSlowDown] ; |699| 
        MOV       T,#10                 ; |701| 
        MOVL      XAR4,#_manref         ; |701| 
        MPYXU     ACC,T,AR1             ; |701| 
        ADDL      XAR4,ACC
        MOVB      XAR0,#8               ; |701| 
        SETC      SXM
        MOV       ACC,*+XAR4[AR0]       ; |701| 
        ABS       ACC                   ; |701| 
        CMP       AL,#16384             ; |701| 
        BF        L100,LT               ; |701| 
        ; branchcc occurs ; |701| 
DW$L$_MANAlarmChecks$4$E:
DW$L$_MANAlarmChecks$5$B:
        MOV       *+XAR4[AR0],#0        ; |701| 
DW$L$_MANAlarmChecks$5$E:
L100:    
DW$L$_MANAlarmChecks$6$B:
        MOVW      DP,#_iDmPause
        MOV       AL,@_iDmPause         ; |702| 
        CMPB      AL,#1                 ; |702| 
        BF        L101,EQ               ; |702| 
        ; branchcc occurs ; |702| 
DW$L$_MANAlarmChecks$6$E:
DW$L$_MANAlarmChecks$7$B:
        MOVW      DP,#_PauseAlarm
        MOV       AL,@_PauseAlarm       ; |702| 
        CMPB      AL,#1                 ; |702| 
        BF        L101,EQ               ; |702| 
        ; branchcc occurs ; |702| 
DW$L$_MANAlarmChecks$7$E:
DW$L$_MANAlarmChecks$8$B:
        MOV       AL,AR1                ; |703| 
        MOV       T,#10                 ; |703| 
        MOVL      XAR4,#_manref+8       ; |703| 
        MPYXU     ACC,T,AL              ; |703| 
        ADDL      XAR4,ACC
        MOV       AH,*+XAR4[0]          ; |703| 
        MOVZ      AR4,AR3               ; |703| 
        MOV       AL,AR1                ; |703| 
        LCR       #_SensorDamageMonSlowDown ; |703| 
        ; call occurs [#_SensorDamageMonSlowDown] ; |703| 
        BF        L102,UNC              ; |703| 
        ; branch occurs ; |703| 
DW$L$_MANAlarmChecks$8$E:
L101:    
DW$L$_MANAlarmChecks$9$B:
        MOV       AL,AR1                ; |702| 
        LCR       #_ClearSensorDamageMonSlowDown ; |702| 
        ; call occurs [#_ClearSensorDamageMonSlowDown] ; |702| 
DW$L$_MANAlarmChecks$9$E:
L102:    
DW$L$_MANAlarmChecks$10$B:
        ADDB      XAR1,#1               ; |690| 
        MOVW      DP,#_allsensors
        MOV       AL,AR1                ; |690| 
        CMP       AL,@_allsensors       ; |690| 
	.dwpsn	"man.c",705,0
        BF        L98,LO                ; |690| 
        ; branchcc occurs ; |690| 
DW$L$_MANAlarmChecks$10$E:
L103:    
        MOVW      DP,#_allsensors
        MOVB      XAR1,#0
        MOV       *-SP[1],#0            ; |706| 
        AND       AL,@_allsensors,#0xfffe ; |707| 
        BF        L108,EQ               ; |707| 
        ; branchcc occurs ; |707| 
L104:    
DW$L$_MANAlarmChecks$12$B:
	.dwpsn	"man.c",708,0
        MOVZ      AR0,*-SP[1]           ; |711| 
        MOVL      XAR4,#_checkmanalarms ; |711| 
        MOV       AL,*+XAR4[AR0]        ; |711| 
        CMPB      AL,#5                 ; |711| 
        BF        L105,HIS              ; |711| 
        ; branchcc occurs ; |711| 
DW$L$_MANAlarmChecks$12$E:
DW$L$_MANAlarmChecks$13$B:
        MOVB      AL,#1                 ; |711| 
        ADD       AL,*-SP[1]            ; |711| 
        MOVZ      AR0,AL                ; |711| 
        MOV       AL,*+XAR4[AR0]        ; |711| 
        CMPB      AL,#5                 ; |711| 
        BF        L105,HIS              ; |711| 
        ; branchcc occurs ; |711| 
DW$L$_MANAlarmChecks$13$E:
DW$L$_MANAlarmChecks$14$B:
        MOVL      XAR4,#_sensor         ; |711| 
        MOVL      XAR5,XAR4             ; |711| 
        MOV       AL,*-SP[1]            ; |711| 
        MOV       T,#18                 ; |711| 
        MPYXU     ACC,T,AL              ; |711| 
        ADDL      XAR5,ACC
        TBIT      *+XAR5[0],#0          ; |711| 
        BF        L105,NTC              ; |711| 
        ; branchcc occurs ; |711| 
DW$L$_MANAlarmChecks$14$E:
DW$L$_MANAlarmChecks$15$B:
        MOV       T,#18                 ; |711| 
        MPYXU     ACC,T,AR0             ; |711| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#0          ; |711| 
        BF        L107,TC               ; |711| 
        ; branchcc occurs ; |711| 
DW$L$_MANAlarmChecks$15$E:
L105:    
DW$L$_MANAlarmChecks$16$B:
        MOVU      ACC,AR1
        MOVL      XAR4,#_cylinders+3    ; |713| 
        LSL       ACC,2                 ; |713| 
        ADDL      XAR4,ACC
        MOV       AH,*+XAR4[0]          ; |713| 
        MOVZ      AR4,AR3               ; |713| 
        MOV       AL,AR1                ; |713| 
        LCR       #_CylinderDevAlarm    ; |713| 
        ; call occurs [#_CylinderDevAlarm] ; |713| 
        MOVW      DP,#_iDmPause
        MOV       AL,@_iDmPause         ; |715| 
        CMPB      AL,#1                 ; |715| 
        BF        L106,EQ               ; |715| 
        ; branchcc occurs ; |715| 
DW$L$_MANAlarmChecks$16$E:
DW$L$_MANAlarmChecks$17$B:
        MOVW      DP,#_PauseAlarm
        MOV       AL,@_PauseAlarm       ; |715| 
        CMPB      AL,#1                 ; |715| 
        BF        L106,EQ               ; |715| 
        ; branchcc occurs ; |715| 
DW$L$_MANAlarmChecks$17$E:
DW$L$_MANAlarmChecks$18$B:
        MOVU      ACC,AR1
        MOVL      XAR4,#_manrefsum      ; |722| 
        LSL       ACC,1                 ; |722| 
        ADDL      XAR4,ACC
        MOVL      XAR2,XAR4             ; |722| 
        MOVZ      AR4,AR3               ; |722| 
        MOV       AH,*+XAR2[0]          ; |722| 
        MOV       AL,AR1                ; |722| 
        LCR       #_CylDamageMonSlowDown ; |722| 
        ; call occurs [#_CylDamageMonSlowDown] ; |722| 
        MOVZ      AR4,AR3               ; |723| 
        MOV       AH,*+XAR2[1]          ; |723| 
        MOV       AL,AR1                ; |723| 
        LCR       #_MBNeighbourDamageMonSlowDown ; |723| 
        ; call occurs [#_MBNeighbourDamageMonSlowDown] ; |723| 
        BF        L107,UNC              ; |723| 
        ; branch occurs ; |723| 
DW$L$_MANAlarmChecks$18$E:
L106:    
DW$L$_MANAlarmChecks$19$B:
        MOV       AL,AR1                ; |717| 
        LCR       #_ClearCylDamageMonSlowDown ; |717| 
        ; call occurs [#_ClearCylDamageMonSlowDown] ; |717| 
        MOV       AL,AR1                ; |718| 
        LCR       #_ClearMBNeighbourDamageMonSlowDown ; |718| 
        ; call occurs [#_ClearMBNeighbourDamageMonSlowDown] ; |718| 
DW$L$_MANAlarmChecks$19$E:
L107:    
DW$L$_MANAlarmChecks$20$B:
        MOVW      DP,#_allsensors
        ADD       *-SP[1],#2            ; |726| 
        ADDB      XAR1,#1               ; |707| 
        MOV       AL,@_allsensors       ; |707| 
        LSR       AL,1                  ; |707| 
        CMP       AL,AR1                ; |707| 
	.dwpsn	"man.c",728,0
        BF        L104,HI               ; |707| 
        ; branchcc occurs ; |707| 
DW$L$_MANAlarmChecks$20$E:
L108:    
        MOVW      DP,#_allsensors
        MOV       AL,@_allsensors       ; |730| 
        MOVB      XAR1,#0
        BF        L111,EQ               ; |730| 
        ; branchcc occurs ; |730| 
L109:    
DW$L$_MANAlarmChecks$22$B:
	.dwpsn	"man.c",731,0
        MOVL      XAR4,#_checkmanalarms ; |732| 
        MOVL      ACC,XAR4              ; |732| 
        ADDU      ACC,AR1               ; |732| 
        MOVL      XAR4,ACC              ; |732| 
        MOV       AL,*+XAR4[0]          ; |732| 
        CMPB      AL,#5                 ; |732| 
        BF        L110,LO               ; |732| 
        ; branchcc occurs ; |732| 
DW$L$_MANAlarmChecks$22$E:
DW$L$_MANAlarmChecks$23$B:
        MOV       *+XAR4[0],#0          ; |732| 
DW$L$_MANAlarmChecks$23$E:
L110:    
DW$L$_MANAlarmChecks$24$B:
        ADDB      XAR1,#1               ; |730| 
        MOVW      DP,#_allsensors
        MOV       AL,AR1                ; |730| 
        CMP       AL,@_allsensors       ; |730| 
	.dwpsn	"man.c",733,0
        BF        L109,LO               ; |730| 
        ; branchcc occurs ; |730| 
DW$L$_MANAlarmChecks$24$E:
L111:    
        SUBB      SP,#2
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"man.c",735,1
        LRETR
        ; return occurs

DW$231	.dwtag  DW_TAG_loop
	.dwattr DW$231, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L109:1:1473840056")
	.dwattr DW$231, DW_AT_begin_file("man.c")
	.dwattr DW$231, DW_AT_begin_line(0x2da)
	.dwattr DW$231, DW_AT_end_line(0x2dd)
DW$232	.dwtag  DW_TAG_loop_range
	.dwattr DW$232, DW_AT_low_pc(DW$L$_MANAlarmChecks$22$B)
	.dwattr DW$232, DW_AT_high_pc(DW$L$_MANAlarmChecks$22$E)
DW$233	.dwtag  DW_TAG_loop_range
	.dwattr DW$233, DW_AT_low_pc(DW$L$_MANAlarmChecks$23$B)
	.dwattr DW$233, DW_AT_high_pc(DW$L$_MANAlarmChecks$23$E)
DW$234	.dwtag  DW_TAG_loop_range
	.dwattr DW$234, DW_AT_low_pc(DW$L$_MANAlarmChecks$24$B)
	.dwattr DW$234, DW_AT_high_pc(DW$L$_MANAlarmChecks$24$E)
	.dwendtag DW$231


DW$235	.dwtag  DW_TAG_loop
	.dwattr DW$235, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L104:1:1473840056")
	.dwattr DW$235, DW_AT_begin_file("man.c")
	.dwattr DW$235, DW_AT_begin_line(0x2c3)
	.dwattr DW$235, DW_AT_end_line(0x2d8)
DW$236	.dwtag  DW_TAG_loop_range
	.dwattr DW$236, DW_AT_low_pc(DW$L$_MANAlarmChecks$12$B)
	.dwattr DW$236, DW_AT_high_pc(DW$L$_MANAlarmChecks$12$E)
DW$237	.dwtag  DW_TAG_loop_range
	.dwattr DW$237, DW_AT_low_pc(DW$L$_MANAlarmChecks$16$B)
	.dwattr DW$237, DW_AT_high_pc(DW$L$_MANAlarmChecks$16$E)
DW$238	.dwtag  DW_TAG_loop_range
	.dwattr DW$238, DW_AT_low_pc(DW$L$_MANAlarmChecks$17$B)
	.dwattr DW$238, DW_AT_high_pc(DW$L$_MANAlarmChecks$17$E)
DW$239	.dwtag  DW_TAG_loop_range
	.dwattr DW$239, DW_AT_low_pc(DW$L$_MANAlarmChecks$13$B)
	.dwattr DW$239, DW_AT_high_pc(DW$L$_MANAlarmChecks$13$E)
DW$240	.dwtag  DW_TAG_loop_range
	.dwattr DW$240, DW_AT_low_pc(DW$L$_MANAlarmChecks$14$B)
	.dwattr DW$240, DW_AT_high_pc(DW$L$_MANAlarmChecks$14$E)
DW$241	.dwtag  DW_TAG_loop_range
	.dwattr DW$241, DW_AT_low_pc(DW$L$_MANAlarmChecks$15$B)
	.dwattr DW$241, DW_AT_high_pc(DW$L$_MANAlarmChecks$15$E)
DW$242	.dwtag  DW_TAG_loop_range
	.dwattr DW$242, DW_AT_low_pc(DW$L$_MANAlarmChecks$18$B)
	.dwattr DW$242, DW_AT_high_pc(DW$L$_MANAlarmChecks$18$E)
DW$243	.dwtag  DW_TAG_loop_range
	.dwattr DW$243, DW_AT_low_pc(DW$L$_MANAlarmChecks$19$B)
	.dwattr DW$243, DW_AT_high_pc(DW$L$_MANAlarmChecks$19$E)
DW$244	.dwtag  DW_TAG_loop_range
	.dwattr DW$244, DW_AT_low_pc(DW$L$_MANAlarmChecks$20$B)
	.dwattr DW$244, DW_AT_high_pc(DW$L$_MANAlarmChecks$20$E)
	.dwendtag DW$235


DW$245	.dwtag  DW_TAG_loop
	.dwattr DW$245, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L98:1:1473840056")
	.dwattr DW$245, DW_AT_begin_file("man.c")
	.dwattr DW$245, DW_AT_begin_line(0x2b2)
	.dwattr DW$245, DW_AT_end_line(0x2c1)
DW$246	.dwtag  DW_TAG_loop_range
	.dwattr DW$246, DW_AT_low_pc(DW$L$_MANAlarmChecks$2$B)
	.dwattr DW$246, DW_AT_high_pc(DW$L$_MANAlarmChecks$2$E)
DW$247	.dwtag  DW_TAG_loop_range
	.dwattr DW$247, DW_AT_low_pc(DW$L$_MANAlarmChecks$4$B)
	.dwattr DW$247, DW_AT_high_pc(DW$L$_MANAlarmChecks$4$E)
DW$248	.dwtag  DW_TAG_loop_range
	.dwattr DW$248, DW_AT_low_pc(DW$L$_MANAlarmChecks$5$B)
	.dwattr DW$248, DW_AT_high_pc(DW$L$_MANAlarmChecks$5$E)
DW$249	.dwtag  DW_TAG_loop_range
	.dwattr DW$249, DW_AT_low_pc(DW$L$_MANAlarmChecks$6$B)
	.dwattr DW$249, DW_AT_high_pc(DW$L$_MANAlarmChecks$6$E)
DW$250	.dwtag  DW_TAG_loop_range
	.dwattr DW$250, DW_AT_low_pc(DW$L$_MANAlarmChecks$7$B)
	.dwattr DW$250, DW_AT_high_pc(DW$L$_MANAlarmChecks$7$E)
DW$251	.dwtag  DW_TAG_loop_range
	.dwattr DW$251, DW_AT_low_pc(DW$L$_MANAlarmChecks$3$B)
	.dwattr DW$251, DW_AT_high_pc(DW$L$_MANAlarmChecks$3$E)
DW$252	.dwtag  DW_TAG_loop_range
	.dwattr DW$252, DW_AT_low_pc(DW$L$_MANAlarmChecks$8$B)
	.dwattr DW$252, DW_AT_high_pc(DW$L$_MANAlarmChecks$8$E)
DW$253	.dwtag  DW_TAG_loop_range
	.dwattr DW$253, DW_AT_low_pc(DW$L$_MANAlarmChecks$9$B)
	.dwattr DW$253, DW_AT_high_pc(DW$L$_MANAlarmChecks$9$E)
DW$254	.dwtag  DW_TAG_loop_range
	.dwattr DW$254, DW_AT_low_pc(DW$L$_MANAlarmChecks$10$B)
	.dwattr DW$254, DW_AT_high_pc(DW$L$_MANAlarmChecks$10$E)
	.dwendtag DW$245

	.dwattr DW$229, DW_AT_end_file("man.c")
	.dwattr DW$229, DW_AT_end_line(0x2df)
	.dwattr DW$229, DW_AT_end_column(0x01)
	.dwendtag DW$229

	.sect	".text"
	.global	_EnableNoiseFilter

DW$255	.dwtag  DW_TAG_subprogram, DW_AT_name("EnableNoiseFilter"), DW_AT_symbol_name("_EnableNoiseFilter")
	.dwattr DW$255, DW_AT_low_pc(_EnableNoiseFilter)
	.dwattr DW$255, DW_AT_high_pc(0x00)
	.dwattr DW$255, DW_AT_begin_file("man.c")
	.dwattr DW$255, DW_AT_begin_line(0x2e3)
	.dwattr DW$255, DW_AT_begin_column(0x06)
	.dwattr DW$255, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$255, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",740,1

;***************************************************************
;* FNAME: _EnableNoiseFilter            FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_EnableNoiseFilter:
;* AL    assigned to _flag
DW$256	.dwtag  DW_TAG_formal_parameter, DW_AT_name("flag"), DW_AT_symbol_name("_flag")
	.dwattr DW$256, DW_AT_type(*DW$T$10)
	.dwattr DW$256, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        CMPB      AL,#0                 ; |743| 
        MOVL      *SP++,XAR2
        BF        L112,NEQ              ; |743| 
        ; branchcc occurs ; |743| 
        MOVW      DP,#_function+2
        MOV       @_function+2,#0       ; |745| 
        BF        L114,UNC              ; |747| 
        ; branch occurs ; |747| 
L112:    
	.dwpsn	"man.c",750,0
        MOVB      XAR1,#0
L113:    
DW$L$_EnableNoiseFilter$4$B:
        MOV       T,AR1
        MOVL      XAR4,#_sensor         ; |750| 
        MPYB      ACC,T,#18             ; |750| 
        ADDL      XAR4,ACC
        MOVL      XAR2,XAR4             ; |750| 
        MOVB      XAR0,#10              ; |750| 
        MOV       AL,*+XAR2[AR0]        ; |750| 
        LCR       #I$$TOFS              ; |750| 
        ; call occurs [#I$$TOFS] ; |750| 
        MOVB      XAR0,#8               ; |750| 
        MOVL      *+XAR2[AR0],ACC       ; |750| 
        MOV       AL,AR1                ; |750| 
        ADDB      AL,#1                 ; |750| 
        MOVZ      AR1,AL                ; |750| 
        CMPB      AL,#28                ; |750| 
        BF        L113,LT               ; |750| 
        ; branchcc occurs ; |750| 
DW$L$_EnableNoiseFilter$4$E:
        MOVW      DP,#_function+2
        MOV       @_function+2,#1       ; |751| 
L114:    
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"man.c",753,1
        LRETR
        ; return occurs

DW$257	.dwtag  DW_TAG_loop
	.dwattr DW$257, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L113:1:1473840056")
	.dwattr DW$257, DW_AT_begin_file("man.c")
	.dwattr DW$257, DW_AT_begin_line(0x2ee)
	.dwattr DW$257, DW_AT_end_line(0x2ee)
DW$258	.dwtag  DW_TAG_loop_range
	.dwattr DW$258, DW_AT_low_pc(DW$L$_EnableNoiseFilter$4$B)
	.dwattr DW$258, DW_AT_high_pc(DW$L$_EnableNoiseFilter$4$E)
	.dwendtag DW$257

	.dwattr DW$255, DW_AT_end_file("man.c")
	.dwattr DW$255, DW_AT_end_line(0x2f1)
	.dwattr DW$255, DW_AT_end_column(0x01)
	.dwendtag DW$255

	.sect	".text"
	.global	_StartupRefReload

DW$259	.dwtag  DW_TAG_subprogram, DW_AT_name("StartupRefReload"), DW_AT_symbol_name("_StartupRefReload")
	.dwattr DW$259, DW_AT_low_pc(_StartupRefReload)
	.dwattr DW$259, DW_AT_high_pc(0x00)
	.dwattr DW$259, DW_AT_begin_file("man.c")
	.dwattr DW$259, DW_AT_begin_line(0x2f5)
	.dwattr DW$259, DW_AT_begin_column(0x06)
	.dwattr DW$259, DW_AT_frame_base[DW_OP_breg20 -72]
	.dwattr DW$259, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",758,1

;***************************************************************
;* FNAME: _StartupRefReload             FR SIZE:  70           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 64 Auto,  6 SOE     *
;***************************************************************

_StartupRefReload:
        MOVL      *SP++,XAR1
        MOVB      AL,#1                 ; |765| 
        MOV       PH,#4660
        MOVL      *SP++,XAR2
        MOV       PL,#22136
        MOVL      *SP++,XAR3
        MOVZ      AR2,SP
        ADDB      SP,#64
        MOVZ      AR4,SP                ; |765| 
        MOVB      XAR5,#2               ; |765| 
        MOV       AH,#10848             ; |765| 
        MOVL      *-SP[2],P             ; |764| 
        SUBB      XAR4,#2               ; |765| 
        LCR       #_ReadNVMemory        ; |765| 
        ; call occurs [#_ReadNVMemory] ; |765| 
        SUBB      FP,#8
        MOV       AL,#22136
        MOV       AH,#4660
        CMPL      ACC,*-SP[2]           ; |766| 
        BF        L116,EQ               ; |766| 
        ; branchcc occurs ; |766| 
        SETC      SXM
	.dwpsn	"man.c",781,0
        MOV       *-SP[59],#0           ; |781| 
L115:    
DW$L$_StartupRefReload$3$B:
	.dwpsn	"man.c",782,0
        MOV       T,*-SP[59]
        MOVL      XAR4,#_manref         ; |783| 
        MPYB      ACC,T,#10             ; |783| 
        ADDL      XAR4,ACC
        MOV       AH,#0
        MOV       AL,#0
        MOVL      *+XAR4[0],ACC         ; |783| 
        MOV       *+XAR4[6],#0          ; |784| 
        MOVL      *+XAR4[2],ACC         ; |785| 
        MOV       *+XAR4[7],#0          ; |786| 
        MOV       ACC,*-SP[59]          ; |787| 
        MOVL      XAR4,#_damagemonignore ; |787| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#3          ; |787| 
        INC       *-SP[59]              ; |781| 
        MOV       AL,*-SP[59]           ; |787| 
        CMPB      AL,#28                ; |781| 
	.dwpsn	"man.c",788,0
        BF        L115,LT               ; |781| 
        ; branchcc occurs ; |781| 
DW$L$_StartupRefReload$3$E:
        BF        L118,UNC              ; |781| 
        ; branch occurs ; |781| 
L116:    
        MOVZ      AR4,SP                ; |768| 
        MOVB      AL,#1                 ; |768| 
        MOVB      XAR5,#28              ; |768| 
        MOV       AH,#10904             ; |768| 
        SUBB      XAR4,#30              ; |768| 
        LCR       #_ReadNVMemory        ; |768| 
        ; call occurs [#_ReadNVMemory] ; |768| 
        MOVZ      AR4,SP                ; |769| 
        MOVB      AL,#1                 ; |769| 
        MOVB      XAR5,#28              ; |769| 
        SUBB      XAR4,#58              ; |769| 
        MOV       AH,#10960             ; |769| 
        LCR       #_ReadNVMemory        ; |769| 
        ; call occurs [#_ReadNVMemory] ; |769| 
        MOVB      AL,#0
	.dwpsn	"man.c",770,0
        MOV       *-SP[59],AL           ; |770| 
L117:    
DW$L$_StartupRefReload$6$B:
	.dwpsn	"man.c",771,0
        MOVZ      AR4,SP                ; |772| 
        SETC      SXM
        MOV       ACC,AL                ; |772| 
        SUBB      XAR4,#30              ; |772| 
        ADDL      XAR4,ACC
        MOV       T,*-SP[59]            ; |772| 
        MOVZ      AR3,*+XAR4[0]         ; |772| 
        MPYB      ACC,T,#10             ; |772| 
        MOVL      XAR4,#_manref         ; |772| 
        ADDL      XAR4,ACC
        MOV       AL,AR3                ; |772| 
        MOVL      XAR1,XAR4             ; |772| 
        LCR       #I$$TOFS              ; |772| 
        ; call occurs [#I$$TOFS] ; |772| 
        MOVZ      AR4,SP                ; |774| 
        MOVL      *+XAR1[0],ACC         ; |772| 
        SETC      SXM
        MOV       *+XAR1[6],AR3         ; |773| 
        SUBB      XAR4,#58              ; |774| 
        MOV       ACC,*-SP[59]          ; |774| 
        ADDL      XAR4,ACC
        MOVZ      AR3,*+XAR4[0]         ; |774| 
        MOV       AL,AR3                ; |774| 
        LCR       #I$$TOFS              ; |774| 
        ; call occurs [#I$$TOFS] ; |774| 
        MOVL      *+XAR1[2],ACC         ; |774| 
        SETC      SXM
        MOV       *+XAR1[7],AR3         ; |775| 
        MOVL      XAR4,#_damagemonignore ; |776| 
        MOV       ACC,*-SP[59]          ; |776| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#0          ; |776| 
        INC       *-SP[59]              ; |770| 
        MOV       AL,*-SP[59]           ; |776| 
        CMPB      AL,#28                ; |770| 
	.dwpsn	"man.c",777,0
        BF        L117,LT               ; |770| 
        ; branchcc occurs ; |770| 
DW$L$_StartupRefReload$6$E:
L118:    
        MOVB      XAR0,#8               ; |793| 
	.dwpsn	"man.c",790,0
        MOV       *-SP[59],#0           ; |790| 
L119:    
DW$L$_StartupRefReload$8$B:
	.dwpsn	"man.c",791,0
        MOV       T,*-SP[59]
        MOVL      XAR4,#_manref         ; |792| 
        MPYB      ACC,T,#10             ; |792| 
        ADDL      XAR4,ACC
        MOV       AH,#0
        MOV       AL,#0
        MOVL      *+XAR4[4],ACC         ; |792| 
        MOV       *+XAR4[AR0],#0        ; |793| 
        INC       *-SP[59]              ; |790| 
        MOV       AL,*-SP[59]           ; |793| 
        CMPB      AL,#28                ; |790| 
	.dwpsn	"man.c",794,0
        BF        L119,LT               ; |790| 
        ; branchcc occurs ; |790| 
DW$L$_StartupRefReload$8$E:
        MOVB      AL,#0
        MOV       *-SP[59],AL           ; |796| 
	.dwpsn	"man.c",796,0
        SETC      SXM
L120:    
DW$L$_StartupRefReload$10$B:
	.dwpsn	"man.c",797,0
        MOV       ACC,AL << 1           ; |798| 
        MOVL      XAR4,#_manrefsum      ; |798| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#0          ; |798| 
        MOV       *+XAR4[1],#0          ; |799| 
        INC       *-SP[59]              ; |796| 
        MOV       AL,*-SP[59]           ; |799| 
        CMPB      AL,#14                ; |796| 
	.dwpsn	"man.c",800,0
        BF        L120,LT               ; |796| 
        ; branchcc occurs ; |796| 
DW$L$_StartupRefReload$10$E:
        MOV       AH,#0
        MOV       AL,#0
        MOVW      DP,#_dynalarmlevels+16
        MOVL      @_dynalarmlevels+16,ACC ; |802| 
        MOVW      DP,#_dynalarmlevels+18
        MOV       @_dynalarmlevels+18,#0 ; |803| 
        MOV       AH,#0
        MOV       AL,#0
        MOVW      DP,#_dynalarmlevels
        MOVL      @_dynalarmlevels,ACC  ; |804| 
        MOVW      DP,#_dynalarmlevels+19
        MOV       @_dynalarmlevels+19,#0 ; |805| 
        MOV       AH,#0
        MOV       AL,#0
        MOVW      DP,#_dynalarmlevels+14
        MOVL      @_dynalarmlevels+14,ACC ; |806| 
        MOVW      DP,#_dynalarmlevels+20
        MOV       @_dynalarmlevels+20,#0 ; |807| 
        MOVW      DP,#_damagemon+6
        MOVZ      AR1,@_damagemon+6     ; |808| 
        MOVW      DP,#_dynalarmlevels+21
        MOV       @_dynalarmlevels+21,AR1 ; |808| 
        MOVW      DP,#_damagemon+7
        MOVZ      AR3,@_damagemon+7     ; |809| 
        MOVW      DP,#_dynalarmlevels+22
        MOV       @_dynalarmlevels+22,AR3 ; |809| 
        MOVW      DP,#_damagemon+8
        MOV       AL,@_damagemon+8      ; |810| 
        MOVW      DP,#_dynalarmlevels+23
        MOV       @_dynalarmlevels+23,AL ; |810| 
        MOVW      DP,#_dynalarmlevels+24
        MOV       @_dynalarmlevels+24,AR1 ; |811| 
        MOVW      DP,#_dynalarmlevels+25
        MOV       @_dynalarmlevels+25,AR3 ; |812| 
        MOVW      DP,#_dynalarmlevels+26
        MOV       *-SP[59],AL           ; |810| 
        MOV       @_dynalarmlevels+26,AL ; |813| 
        MOV       AL,AR1                ; |814| 
        LCR       #U$$TOFS              ; |814| 
        ; call occurs [#U$$TOFS] ; |814| 
        MOVW      DP,#_dynalarmlevels+2
        MOVL      *-SP[62],ACC          ; |814| 
        MOVL      @_dynalarmlevels+2,ACC ; |814| 
        MOV       AL,AR3                ; |815| 
        LCR       #U$$TOFS              ; |815| 
        ; call occurs [#U$$TOFS] ; |815| 
        MOVL      XAR0,#8               ; |815| 
        MOVL      *+FP[AR0],ACC         ; |815| 
        MOVL      XAR0,#8               ; |815| 
        MOVW      DP,#_dynalarmlevels+4
        MOVL      ACC,*+FP[AR0]         ; |815| 
        MOVL      @_dynalarmlevels+4,ACC ; |815| 
        MOV       AL,*-SP[59]           ; |815| 
        LCR       #U$$TOFS              ; |816| 
        ; call occurs [#U$$TOFS] ; |816| 
        MOVW      DP,#_dynalarmlevels+6
        MOVL      @_dynalarmlevels+6,ACC ; |816| 
        MOVL      XAR7,ACC              ; |816| 
        MOVW      DP,#_dynalarmlevels+8
        MOVL      XAR0,#8               ; |817| 
        MOVL      ACC,*-SP[62]          ; |816| 
        MOVL      @_dynalarmlevels+8,ACC ; |817| 
        MOVW      DP,#_dynalarmlevels+10
        MOVL      ACC,*+FP[AR0]         ; |817| 
        MOVL      @_dynalarmlevels+10,ACC ; |818| 
        MOVW      DP,#_dynalarmlevels+12
        MOVL      @_dynalarmlevels+12,XAR7 ; |819| 
        MOVW      DP,#_dynalarmlevels+27
        MOV       @_dynalarmlevels+27,AR1 ; |820| 
        MOVZ      AR6,*-SP[59]          ; |821| 
        MOVW      DP,#_dynalarmlevels+28
        MOV       @_dynalarmlevels+28,AR3 ; |821| 
        MOVW      DP,#_dynalarmlevels+29
        MOV       @_dynalarmlevels+29,AR6 ; |822| 
        MOVW      DP,#_dynalarmlevels+30
        MOV       @_dynalarmlevels+30,AR1 ; |823| 
        MOVW      DP,#_dynalarmlevels+31
        MOV       @_dynalarmlevels+31,AR3 ; |824| 
        MOVW      DP,#_dynalarmlevels+32
        MOV       @_dynalarmlevels+32,AR6 ; |825| 
        MOVB      ACC,#0
        MOVW      DP,#_dynalarmlevels+34
        MOVL      @_dynalarmlevels+34,ACC ; |826| 
        MOVW      DP,#_loaddynalarmlevels+16
        MOV       AH,#0
        MOV       AL,#0
        MOVL      @_loaddynalarmlevels+16,ACC ; |828| 
        MOVW      DP,#_loaddynalarmlevels+18
        MOV       @_loaddynalarmlevels+18,#0 ; |829| 
        MOV       AH,#0
        MOV       AL,#0
        MOVW      DP,#_loaddynalarmlevels+14
        MOVL      @_loaddynalarmlevels+14,ACC ; |830| 
        MOVW      DP,#_loaddynalarmlevels+20
        MOV       @_loaddynalarmlevels+20,#0 ; |831| 
        MOVW      DP,#_loaddynalarmlevels+21
        MOV       @_loaddynalarmlevels+21,AR1 ; |832| 
        MOVW      DP,#_loaddynalarmlevels+22
        MOV       @_loaddynalarmlevels+22,AR3 ; |833| 
        MOVW      DP,#_loaddynalarmlevels+23
        MOV       @_loaddynalarmlevels+23,AR6 ; |834| 
        MOVW      DP,#_loaddynalarmlevels+24
        MOV       @_loaddynalarmlevels+24,AR1 ; |835| 
        MOVW      DP,#_loaddynalarmlevels+25
        MOV       @_loaddynalarmlevels+25,AR3 ; |836| 
        MOVW      DP,#_loaddynalarmlevels+26
        MOV       @_loaddynalarmlevels+26,AR6 ; |837| 
        MOVL      ACC,*-SP[62]          ; |837| 
        MOVL      XAR0,#8               ; |838| 
        MOVW      DP,#_loaddynalarmlevels+2
        MOVL      @_loaddynalarmlevels+2,ACC ; |838| 
        MOVW      DP,#_loaddynalarmlevels+4
        MOVL      ACC,*+FP[AR0]         ; |838| 
        MOVL      @_loaddynalarmlevels+4,ACC ; |839| 
        MOVW      DP,#_loaddynalarmlevels+6
        MOVL      @_loaddynalarmlevels+6,XAR7 ; |840| 
        MOVL      ACC,*-SP[62]          ; |840| 
        MOVL      XAR0,#8               ; |841| 
        MOVW      DP,#_loaddynalarmlevels+8
        MOVL      @_loaddynalarmlevels+8,ACC ; |841| 
        MOVW      DP,#_loaddynalarmlevels+10
        MOVL      ACC,*+FP[AR0]         ; |841| 
        MOVL      @_loaddynalarmlevels+10,ACC ; |842| 
        MOVW      DP,#_loaddynalarmlevels+12
        MOVL      @_loaddynalarmlevels+12,XAR7 ; |843| 
        MOVW      DP,#_loaddynalarmlevels+27
        MOV       @_loaddynalarmlevels+27,AR1 ; |844| 
        MOVW      DP,#_loaddynalarmlevels+28
        MOV       @_loaddynalarmlevels+28,AR3 ; |845| 
        MOVW      DP,#_loaddynalarmlevels+29
        MOV       @_loaddynalarmlevels+29,AR6 ; |846| 
        MOVW      DP,#_loaddynalarmlevels+30
        MOV       @_loaddynalarmlevels+30,AR1 ; |847| 
        MOVW      DP,#_loaddynalarmlevels+31
        MOV       @_loaddynalarmlevels+31,AR3 ; |848| 
        MOVW      DP,#_loaddynalarmlevels+32
        MOV       @_loaddynalarmlevels+32,AR6 ; |849| 
        MOVB      ACC,#0
        MOVW      DP,#_loaddynalarmlevels+34
        MOVL      @_loaddynalarmlevels+34,ACC ; |850| 
        MOV       P,#0
        MOVB      AL,#0
        MOV       *-SP[59],AL           ; |852| 
	.dwpsn	"man.c",852,0
        SETC      SXM
L121:    
DW$L$_StartupRefReload$12$B:
	.dwpsn	"man.c",853,0
        MOV       ACC,AL << 1           ; |854| 
        MOVL      XAR4,#_fSpeedCompensated5Total ; |854| 
        ADDL      XAR4,ACC
        MOVL      *+XAR4[0],P           ; |854| 
        MOVL      XAR4,#_fSpeedCompensated5Avg ; |855| 
        ADDL      XAR4,ACC
        MOV       AH,#0
        MOV       AL,#0
        MOVL      *+XAR4[0],ACC         ; |855| 
        INC       *-SP[59]              ; |852| 
        MOV       AL,*-SP[59]           ; |855| 
        CMPB      AL,#28                ; |852| 
	.dwpsn	"man.c",856,0
        BF        L121,LT               ; |852| 
        ; branchcc occurs ; |852| 
DW$L$_StartupRefReload$12$E:
        MOVB      ACC,#0
        MOVW      DP,#_wSpeedCompensated5Cnt
        MOVL      @_wSpeedCompensated5Cnt,ACC ; |857| 
        LCR       #_CylNeighbourRegSet  ; |859| 
        ; call occurs [#_CylNeighbourRegSet] ; |859| 
        LCR       #_MBNeighbourRegSet   ; |860| 
        ; call occurs [#_MBNeighbourRegSet] ; |860| 
        SUBB      SP,#64
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"man.c",861,1
        LRETR
        ; return occurs

DW$260	.dwtag  DW_TAG_loop
	.dwattr DW$260, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L121:1:1473840056")
	.dwattr DW$260, DW_AT_begin_file("man.c")
	.dwattr DW$260, DW_AT_begin_line(0x354)
	.dwattr DW$260, DW_AT_end_line(0x358)
DW$261	.dwtag  DW_TAG_loop_range
	.dwattr DW$261, DW_AT_low_pc(DW$L$_StartupRefReload$12$B)
	.dwattr DW$261, DW_AT_high_pc(DW$L$_StartupRefReload$12$E)
	.dwendtag DW$260


DW$262	.dwtag  DW_TAG_loop
	.dwattr DW$262, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L120:1:1473840056")
	.dwattr DW$262, DW_AT_begin_file("man.c")
	.dwattr DW$262, DW_AT_begin_line(0x31c)
	.dwattr DW$262, DW_AT_end_line(0x320)
DW$263	.dwtag  DW_TAG_loop_range
	.dwattr DW$263, DW_AT_low_pc(DW$L$_StartupRefReload$10$B)
	.dwattr DW$263, DW_AT_high_pc(DW$L$_StartupRefReload$10$E)
	.dwendtag DW$262


DW$264	.dwtag  DW_TAG_loop
	.dwattr DW$264, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L119:1:1473840056")
	.dwattr DW$264, DW_AT_begin_file("man.c")
	.dwattr DW$264, DW_AT_begin_line(0x316)
	.dwattr DW$264, DW_AT_end_line(0x31a)
DW$265	.dwtag  DW_TAG_loop_range
	.dwattr DW$265, DW_AT_low_pc(DW$L$_StartupRefReload$8$B)
	.dwattr DW$265, DW_AT_high_pc(DW$L$_StartupRefReload$8$E)
	.dwendtag DW$264


DW$266	.dwtag  DW_TAG_loop
	.dwattr DW$266, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L117:1:1473840056")
	.dwattr DW$266, DW_AT_begin_file("man.c")
	.dwattr DW$266, DW_AT_begin_line(0x302)
	.dwattr DW$266, DW_AT_end_line(0x309)
DW$267	.dwtag  DW_TAG_loop_range
	.dwattr DW$267, DW_AT_low_pc(DW$L$_StartupRefReload$6$B)
	.dwattr DW$267, DW_AT_high_pc(DW$L$_StartupRefReload$6$E)
	.dwendtag DW$266


DW$268	.dwtag  DW_TAG_loop
	.dwattr DW$268, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L115:1:1473840056")
	.dwattr DW$268, DW_AT_begin_file("man.c")
	.dwattr DW$268, DW_AT_begin_line(0x30d)
	.dwattr DW$268, DW_AT_end_line(0x314)
DW$269	.dwtag  DW_TAG_loop_range
	.dwattr DW$269, DW_AT_low_pc(DW$L$_StartupRefReload$3$B)
	.dwattr DW$269, DW_AT_high_pc(DW$L$_StartupRefReload$3$E)
	.dwendtag DW$268

	.dwattr DW$259, DW_AT_end_file("man.c")
	.dwattr DW$259, DW_AT_end_line(0x35d)
	.dwattr DW$259, DW_AT_end_column(0x01)
	.dwendtag DW$259

	.sect	".text"
	.global	_CylNeighbourRegSet

DW$270	.dwtag  DW_TAG_subprogram, DW_AT_name("CylNeighbourRegSet"), DW_AT_symbol_name("_CylNeighbourRegSet")
	.dwattr DW$270, DW_AT_low_pc(_CylNeighbourRegSet)
	.dwattr DW$270, DW_AT_high_pc(0x00)
	.dwattr DW$270, DW_AT_begin_file("man.c")
	.dwattr DW$270, DW_AT_begin_line(0x363)
	.dwattr DW$270, DW_AT_begin_column(0x06)
	.dwattr DW$270, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$270, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",868,1

;***************************************************************
;* FNAME: _CylNeighbourRegSet           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CylNeighbourRegSet:
        MOVW      DP,#_damagemon+9
        MOVB      AL,#1                 ; |876| 
        MOV       @_damagemon+9,#0      ; |874| 
        MOVW      DP,#_damagemon+11
        MOV       PL,AL                 ; |876| 
        MOV       @_damagemon+11,#0     ; |875| 
	.dwpsn	"man.c",877,0
        MOVB      XAR6,#0
L122:    
DW$L$_CylNeighbourRegSet$2$B:
	.dwpsn	"man.c",878,0
        MOV       T,AR6                 ; |880| 
        MOVL      XAR4,#_sensor         ; |881| 
        MPYB      ACC,T,#36             ; |881| 
        ADDL      XAR4,ACC
        MOVB      XAR7,#0
        MOV       PH,#0                 ; |879| 
        TBIT      *+XAR4[0],#0          ; |881| 
        BF        L130,NTC              ; |881| 
        ; branchcc occurs ; |881| 
DW$L$_CylNeighbourRegSet$2$E:
DW$L$_CylNeighbourRegSet$3$B:
        MOVB      XAR0,#18              ; |881| 
        TBIT      *+XAR4[AR0],#0        ; |881| 
        BF        L130,NTC              ; |881| 
        ; branchcc occurs ; |881| 
DW$L$_CylNeighbourRegSet$3$E:
DW$L$_CylNeighbourRegSet$4$B:
        TBIT      *+XAR4[1],#0          ; |884| 
        BF        L123,TC               ; |884| 
        ; branchcc occurs ; |884| 
DW$L$_CylNeighbourRegSet$4$E:
DW$L$_CylNeighbourRegSet$5$B:
        MOVB      XAR0,#19              ; |884| 
        TBIT      *+XAR4[AR0],#0        ; |884| 
        BF        L124,NTC              ; |884| 
        ; branchcc occurs ; |884| 
DW$L$_CylNeighbourRegSet$5$E:
L123:    
DW$L$_CylNeighbourRegSet$6$B:
        MOVB      AL,#1                 ; |886| 
        MOVB      XAR7,#1               ; |887| 
        MOV       PH,AL                 ; |886| 
DW$L$_CylNeighbourRegSet$6$E:
L124:    
DW$L$_CylNeighbourRegSet$7$B:
        MPYB      ACC,T,#36             ; |889| 
        MOVL      XAR4,#_sensor         ; |889| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#4          ; |889| 
        BF        L125,TC               ; |889| 
        ; branchcc occurs ; |889| 
DW$L$_CylNeighbourRegSet$7$E:
DW$L$_CylNeighbourRegSet$8$B:
        MOVB      XAR0,#18              ; |889| 
        TBIT      *+XAR4[AR0],#4        ; |889| 
        BF        L126,NTC              ; |889| 
        ; branchcc occurs ; |889| 
DW$L$_CylNeighbourRegSet$8$E:
L125:    
DW$L$_CylNeighbourRegSet$9$B:
        MOVB      AL,#1                 ; |891| 
        MOVB      XAR7,#1               ; |892| 
        MOV       PH,AL                 ; |891| 
DW$L$_CylNeighbourRegSet$9$E:
L126:    
DW$L$_CylNeighbourRegSet$10$B:
        MPYB      ACC,T,#36             ; |894| 
        MOVL      XAR4,#_sensor         ; |894| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#2          ; |894| 
        BF        L127,TC               ; |894| 
        ; branchcc occurs ; |894| 
DW$L$_CylNeighbourRegSet$10$E:
DW$L$_CylNeighbourRegSet$11$B:
        MOVB      XAR0,#18              ; |894| 
        TBIT      *+XAR4[AR0],#2        ; |894| 
        BF        L128,NTC              ; |894| 
        ; branchcc occurs ; |894| 
DW$L$_CylNeighbourRegSet$11$E:
L127:    
DW$L$_CylNeighbourRegSet$12$B:
        MOVB      XAR7,#1               ; |896| 
DW$L$_CylNeighbourRegSet$12$E:
L128:    
DW$L$_CylNeighbourRegSet$13$B:
        MOV       AL,PH
        BF        L129,NEQ              ; |896| 
        ; branchcc occurs ; |896| 
DW$L$_CylNeighbourRegSet$13$E:
DW$L$_CylNeighbourRegSet$14$B:
        MOV       AL,PL
        MOVW      DP,#_damagemon+9
        OR        @_damagemon+9,AL      ; |907| 
DW$L$_CylNeighbourRegSet$14$E:
L129:    
DW$L$_CylNeighbourRegSet$15$B:
        MOV       AL,AR7
        BF        L130,NEQ              ; |909| 
        ; branchcc occurs ; |909| 
DW$L$_CylNeighbourRegSet$15$E:
DW$L$_CylNeighbourRegSet$16$B:
        MOV       AL,PL
        MOVW      DP,#_damagemon+11
        OR        @_damagemon+11,AL     ; |911| 
DW$L$_CylNeighbourRegSet$16$E:
L130:    
DW$L$_CylNeighbourRegSet$17$B:
        MOV       AL,PL
        MOV       AH,AR6                ; |913| 
        LSL       AL,1                  ; |913| 
        ADDB      AH,#1                 ; |877| 
        MOV       PL,AL                 ; |913| 
        CMPB      AH,#14                ; |877| 
        MOVZ      AR6,AH                ; |877| 
	.dwpsn	"man.c",914,0
        BF        L122,LT               ; |877| 
        ; branchcc occurs ; |877| 
DW$L$_CylNeighbourRegSet$17$E:
	.dwpsn	"man.c",915,1
        LRETR
        ; return occurs

DW$271	.dwtag  DW_TAG_loop
	.dwattr DW$271, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L122:1:1473840056")
	.dwattr DW$271, DW_AT_begin_file("man.c")
	.dwattr DW$271, DW_AT_begin_line(0x36d)
	.dwattr DW$271, DW_AT_end_line(0x392)
DW$272	.dwtag  DW_TAG_loop_range
	.dwattr DW$272, DW_AT_low_pc(DW$L$_CylNeighbourRegSet$2$B)
	.dwattr DW$272, DW_AT_high_pc(DW$L$_CylNeighbourRegSet$2$E)
DW$273	.dwtag  DW_TAG_loop_range
	.dwattr DW$273, DW_AT_low_pc(DW$L$_CylNeighbourRegSet$4$B)
	.dwattr DW$273, DW_AT_high_pc(DW$L$_CylNeighbourRegSet$4$E)
DW$274	.dwtag  DW_TAG_loop_range
	.dwattr DW$274, DW_AT_low_pc(DW$L$_CylNeighbourRegSet$5$B)
	.dwattr DW$274, DW_AT_high_pc(DW$L$_CylNeighbourRegSet$5$E)
DW$275	.dwtag  DW_TAG_loop_range
	.dwattr DW$275, DW_AT_low_pc(DW$L$_CylNeighbourRegSet$6$B)
	.dwattr DW$275, DW_AT_high_pc(DW$L$_CylNeighbourRegSet$6$E)
DW$276	.dwtag  DW_TAG_loop_range
	.dwattr DW$276, DW_AT_low_pc(DW$L$_CylNeighbourRegSet$7$B)
	.dwattr DW$276, DW_AT_high_pc(DW$L$_CylNeighbourRegSet$7$E)
DW$277	.dwtag  DW_TAG_loop_range
	.dwattr DW$277, DW_AT_low_pc(DW$L$_CylNeighbourRegSet$8$B)
	.dwattr DW$277, DW_AT_high_pc(DW$L$_CylNeighbourRegSet$8$E)
DW$278	.dwtag  DW_TAG_loop_range
	.dwattr DW$278, DW_AT_low_pc(DW$L$_CylNeighbourRegSet$9$B)
	.dwattr DW$278, DW_AT_high_pc(DW$L$_CylNeighbourRegSet$9$E)
DW$279	.dwtag  DW_TAG_loop_range
	.dwattr DW$279, DW_AT_low_pc(DW$L$_CylNeighbourRegSet$10$B)
	.dwattr DW$279, DW_AT_high_pc(DW$L$_CylNeighbourRegSet$10$E)
DW$280	.dwtag  DW_TAG_loop_range
	.dwattr DW$280, DW_AT_low_pc(DW$L$_CylNeighbourRegSet$11$B)
	.dwattr DW$280, DW_AT_high_pc(DW$L$_CylNeighbourRegSet$11$E)
DW$281	.dwtag  DW_TAG_loop_range
	.dwattr DW$281, DW_AT_low_pc(DW$L$_CylNeighbourRegSet$12$B)
	.dwattr DW$281, DW_AT_high_pc(DW$L$_CylNeighbourRegSet$12$E)
DW$282	.dwtag  DW_TAG_loop_range
	.dwattr DW$282, DW_AT_low_pc(DW$L$_CylNeighbourRegSet$13$B)
	.dwattr DW$282, DW_AT_high_pc(DW$L$_CylNeighbourRegSet$13$E)
DW$283	.dwtag  DW_TAG_loop_range
	.dwattr DW$283, DW_AT_low_pc(DW$L$_CylNeighbourRegSet$14$B)
	.dwattr DW$283, DW_AT_high_pc(DW$L$_CylNeighbourRegSet$14$E)
DW$284	.dwtag  DW_TAG_loop_range
	.dwattr DW$284, DW_AT_low_pc(DW$L$_CylNeighbourRegSet$3$B)
	.dwattr DW$284, DW_AT_high_pc(DW$L$_CylNeighbourRegSet$3$E)
DW$285	.dwtag  DW_TAG_loop_range
	.dwattr DW$285, DW_AT_low_pc(DW$L$_CylNeighbourRegSet$15$B)
	.dwattr DW$285, DW_AT_high_pc(DW$L$_CylNeighbourRegSet$15$E)
DW$286	.dwtag  DW_TAG_loop_range
	.dwattr DW$286, DW_AT_low_pc(DW$L$_CylNeighbourRegSet$16$B)
	.dwattr DW$286, DW_AT_high_pc(DW$L$_CylNeighbourRegSet$16$E)
DW$287	.dwtag  DW_TAG_loop_range
	.dwattr DW$287, DW_AT_low_pc(DW$L$_CylNeighbourRegSet$17$B)
	.dwattr DW$287, DW_AT_high_pc(DW$L$_CylNeighbourRegSet$17$E)
	.dwendtag DW$271

	.dwattr DW$270, DW_AT_end_file("man.c")
	.dwattr DW$270, DW_AT_end_line(0x393)
	.dwattr DW$270, DW_AT_end_column(0x01)
	.dwendtag DW$270

	.sect	".text"
	.global	_MBNeighbourRegSet

DW$288	.dwtag  DW_TAG_subprogram, DW_AT_name("MBNeighbourRegSet"), DW_AT_symbol_name("_MBNeighbourRegSet")
	.dwattr DW$288, DW_AT_low_pc(_MBNeighbourRegSet)
	.dwattr DW$288, DW_AT_high_pc(0x00)
	.dwattr DW$288, DW_AT_begin_file("man.c")
	.dwattr DW$288, DW_AT_begin_line(0x398)
	.dwattr DW$288, DW_AT_begin_column(0x06)
	.dwattr DW$288, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$288, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",921,1

;***************************************************************
;* FNAME: _MBNeighbourRegSet            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_MBNeighbourRegSet:
        MOVW      DP,#_damagemon+10
        MOVB      AL,#1                 ; |930| 
        MOV       @_damagemon+10,#0     ; |928| 
        MOV       PH,AL                 ; |932| 
        MOVW      DP,#_damagemon+12
        MOV       PL,AL                 ; |930| 
        MOV       @_damagemon+12,#0     ; |929| 
	.dwpsn	"man.c",932,0
        MOVB      XAR6,#1               ; |931| 
L131:    
DW$L$_MBNeighbourRegSet$2$B:
	.dwpsn	"man.c",933,0
        MOV       T,AR6                 ; |935| 
        MOVL      XAR4,#_sensor         ; |936| 
        MPYB      ACC,T,#18             ; |936| 
        ADDL      XAR4,ACC
        MOVB      XAR7,#0
        MOVB      XAR5,#0
        TBIT      *+XAR4[0],#0          ; |936| 
        BF        L139,NTC              ; |936| 
        ; branchcc occurs ; |936| 
DW$L$_MBNeighbourRegSet$2$E:
DW$L$_MBNeighbourRegSet$3$B:
        MOVB      XAR0,#18              ; |936| 
        TBIT      *+XAR4[AR0],#0        ; |936| 
        BF        L139,NTC              ; |936| 
        ; branchcc occurs ; |936| 
DW$L$_MBNeighbourRegSet$3$E:
DW$L$_MBNeighbourRegSet$4$B:
        TBIT      *+XAR4[1],#0          ; |939| 
        BF        L132,TC               ; |939| 
        ; branchcc occurs ; |939| 
DW$L$_MBNeighbourRegSet$4$E:
DW$L$_MBNeighbourRegSet$5$B:
        MOVB      XAR0,#19              ; |939| 
        TBIT      *+XAR4[AR0],#0        ; |939| 
        BF        L133,NTC              ; |939| 
        ; branchcc occurs ; |939| 
DW$L$_MBNeighbourRegSet$5$E:
L132:    
DW$L$_MBNeighbourRegSet$6$B:
        MOVB      XAR5,#1               ; |942| 
        MOVB      XAR7,#1               ; |941| 
DW$L$_MBNeighbourRegSet$6$E:
L133:    
DW$L$_MBNeighbourRegSet$7$B:
        MPYB      ACC,T,#18             ; |944| 
        MOVL      XAR4,#_sensor         ; |944| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#4          ; |944| 
        BF        L134,TC               ; |944| 
        ; branchcc occurs ; |944| 
DW$L$_MBNeighbourRegSet$7$E:
DW$L$_MBNeighbourRegSet$8$B:
        MOVB      XAR0,#18              ; |944| 
        TBIT      *+XAR4[AR0],#4        ; |944| 
        BF        L135,NTC              ; |944| 
        ; branchcc occurs ; |944| 
DW$L$_MBNeighbourRegSet$8$E:
L134:    
DW$L$_MBNeighbourRegSet$9$B:
        MOVB      XAR5,#1               ; |947| 
        MOVB      XAR7,#1               ; |946| 
DW$L$_MBNeighbourRegSet$9$E:
L135:    
DW$L$_MBNeighbourRegSet$10$B:
        MPYB      ACC,T,#18             ; |949| 
        MOVL      XAR4,#_sensor         ; |949| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#2          ; |949| 
        BF        L136,TC               ; |949| 
        ; branchcc occurs ; |949| 
DW$L$_MBNeighbourRegSet$10$E:
DW$L$_MBNeighbourRegSet$11$B:
        MOVB      XAR0,#18              ; |949| 
        TBIT      *+XAR4[AR0],#2        ; |949| 
        BF        L137,NTC              ; |949| 
        ; branchcc occurs ; |949| 
DW$L$_MBNeighbourRegSet$11$E:
L136:    
DW$L$_MBNeighbourRegSet$12$B:
        MOVB      XAR7,#1               ; |951| 
DW$L$_MBNeighbourRegSet$12$E:
L137:    
DW$L$_MBNeighbourRegSet$13$B:
        MOV       AL,PH
        MOVW      DP,#_damagemon
        CMP       AL,@_damagemon        ; |953| 
        BF        L139,EQ               ; |953| 
        ; branchcc occurs ; |953| 
DW$L$_MBNeighbourRegSet$13$E:
DW$L$_MBNeighbourRegSet$14$B:
        MOV       AL,AR5
        BF        L138,NEQ              ; |965| 
        ; branchcc occurs ; |965| 
DW$L$_MBNeighbourRegSet$14$E:
DW$L$_MBNeighbourRegSet$15$B:
        MOV       AL,PL
        MOVW      DP,#_damagemon+10
        OR        @_damagemon+10,AL     ; |967| 
DW$L$_MBNeighbourRegSet$15$E:
L138:    
DW$L$_MBNeighbourRegSet$16$B:
        MOV       AL,AR7
        BF        L139,NEQ              ; |969| 
        ; branchcc occurs ; |969| 
DW$L$_MBNeighbourRegSet$16$E:
DW$L$_MBNeighbourRegSet$17$B:
        MOV       AL,PL
        MOVW      DP,#_damagemon+12
        OR        @_damagemon+12,AL     ; |971| 
DW$L$_MBNeighbourRegSet$17$E:
L139:    
DW$L$_MBNeighbourRegSet$18$B:
        MOV       AL,PL
        MOV       AH,AR6                ; |973| 
        LSL       AL,1                  ; |973| 
        MOV       PL,AL                 ; |973| 
        ADDB      AH,#2                 ; |974| 
        MOV       AL,PH                 ; |974| 
        ADDB      AL,#1                 ; |932| 
        MOVZ      AR6,AH                ; |974| 
        CMPB      AL,#14                ; |932| 
        MOV       PH,AL                 ; |932| 
	.dwpsn	"man.c",975,0
        BF        L131,LT               ; |932| 
        ; branchcc occurs ; |932| 
DW$L$_MBNeighbourRegSet$18$E:
	.dwpsn	"man.c",976,1
        LRETR
        ; return occurs

DW$289	.dwtag  DW_TAG_loop
	.dwattr DW$289, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L131:1:1473840056")
	.dwattr DW$289, DW_AT_begin_file("man.c")
	.dwattr DW$289, DW_AT_begin_line(0x3a4)
	.dwattr DW$289, DW_AT_end_line(0x3cf)
DW$290	.dwtag  DW_TAG_loop_range
	.dwattr DW$290, DW_AT_low_pc(DW$L$_MBNeighbourRegSet$2$B)
	.dwattr DW$290, DW_AT_high_pc(DW$L$_MBNeighbourRegSet$2$E)
DW$291	.dwtag  DW_TAG_loop_range
	.dwattr DW$291, DW_AT_low_pc(DW$L$_MBNeighbourRegSet$14$B)
	.dwattr DW$291, DW_AT_high_pc(DW$L$_MBNeighbourRegSet$14$E)
DW$292	.dwtag  DW_TAG_loop_range
	.dwattr DW$292, DW_AT_low_pc(DW$L$_MBNeighbourRegSet$15$B)
	.dwattr DW$292, DW_AT_high_pc(DW$L$_MBNeighbourRegSet$15$E)
DW$293	.dwtag  DW_TAG_loop_range
	.dwattr DW$293, DW_AT_low_pc(DW$L$_MBNeighbourRegSet$4$B)
	.dwattr DW$293, DW_AT_high_pc(DW$L$_MBNeighbourRegSet$4$E)
DW$294	.dwtag  DW_TAG_loop_range
	.dwattr DW$294, DW_AT_low_pc(DW$L$_MBNeighbourRegSet$5$B)
	.dwattr DW$294, DW_AT_high_pc(DW$L$_MBNeighbourRegSet$5$E)
DW$295	.dwtag  DW_TAG_loop_range
	.dwattr DW$295, DW_AT_low_pc(DW$L$_MBNeighbourRegSet$6$B)
	.dwattr DW$295, DW_AT_high_pc(DW$L$_MBNeighbourRegSet$6$E)
DW$296	.dwtag  DW_TAG_loop_range
	.dwattr DW$296, DW_AT_low_pc(DW$L$_MBNeighbourRegSet$7$B)
	.dwattr DW$296, DW_AT_high_pc(DW$L$_MBNeighbourRegSet$7$E)
DW$297	.dwtag  DW_TAG_loop_range
	.dwattr DW$297, DW_AT_low_pc(DW$L$_MBNeighbourRegSet$8$B)
	.dwattr DW$297, DW_AT_high_pc(DW$L$_MBNeighbourRegSet$8$E)
DW$298	.dwtag  DW_TAG_loop_range
	.dwattr DW$298, DW_AT_low_pc(DW$L$_MBNeighbourRegSet$9$B)
	.dwattr DW$298, DW_AT_high_pc(DW$L$_MBNeighbourRegSet$9$E)
DW$299	.dwtag  DW_TAG_loop_range
	.dwattr DW$299, DW_AT_low_pc(DW$L$_MBNeighbourRegSet$10$B)
	.dwattr DW$299, DW_AT_high_pc(DW$L$_MBNeighbourRegSet$10$E)
DW$300	.dwtag  DW_TAG_loop_range
	.dwattr DW$300, DW_AT_low_pc(DW$L$_MBNeighbourRegSet$11$B)
	.dwattr DW$300, DW_AT_high_pc(DW$L$_MBNeighbourRegSet$11$E)
DW$301	.dwtag  DW_TAG_loop_range
	.dwattr DW$301, DW_AT_low_pc(DW$L$_MBNeighbourRegSet$12$B)
	.dwattr DW$301, DW_AT_high_pc(DW$L$_MBNeighbourRegSet$12$E)
DW$302	.dwtag  DW_TAG_loop_range
	.dwattr DW$302, DW_AT_low_pc(DW$L$_MBNeighbourRegSet$3$B)
	.dwattr DW$302, DW_AT_high_pc(DW$L$_MBNeighbourRegSet$3$E)
DW$303	.dwtag  DW_TAG_loop_range
	.dwattr DW$303, DW_AT_low_pc(DW$L$_MBNeighbourRegSet$13$B)
	.dwattr DW$303, DW_AT_high_pc(DW$L$_MBNeighbourRegSet$13$E)
DW$304	.dwtag  DW_TAG_loop_range
	.dwattr DW$304, DW_AT_low_pc(DW$L$_MBNeighbourRegSet$16$B)
	.dwattr DW$304, DW_AT_high_pc(DW$L$_MBNeighbourRegSet$16$E)
DW$305	.dwtag  DW_TAG_loop_range
	.dwattr DW$305, DW_AT_low_pc(DW$L$_MBNeighbourRegSet$17$B)
	.dwattr DW$305, DW_AT_high_pc(DW$L$_MBNeighbourRegSet$17$E)
DW$306	.dwtag  DW_TAG_loop_range
	.dwattr DW$306, DW_AT_low_pc(DW$L$_MBNeighbourRegSet$18$B)
	.dwattr DW$306, DW_AT_high_pc(DW$L$_MBNeighbourRegSet$18$E)
	.dwendtag DW$289

	.dwattr DW$288, DW_AT_end_file("man.c")
	.dwattr DW$288, DW_AT_end_line(0x3d0)
	.dwattr DW$288, DW_AT_end_column(0x01)
	.dwendtag DW$288

	.sect	".text"
	.global	_CylinderSum

DW$307	.dwtag  DW_TAG_subprogram, DW_AT_name("CylinderSum"), DW_AT_symbol_name("_CylinderSum")
	.dwattr DW$307, DW_AT_low_pc(_CylinderSum)
	.dwattr DW$307, DW_AT_high_pc(0x00)
	.dwattr DW$307, DW_AT_begin_file("man.c")
	.dwattr DW$307, DW_AT_begin_line(0x3d4)
	.dwattr DW$307, DW_AT_begin_column(0x06)
	.dwattr DW$307, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$307, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",981,1

;***************************************************************
;* FNAME: _CylinderSum                  FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_CylinderSum:
;* AL    assigned to _numsens
DW$308	.dwtag  DW_TAG_formal_parameter, DW_AT_name("numsens"), DW_AT_symbol_name("_numsens")
	.dwattr DW$308, DW_AT_type(*DW$T$11)
	.dwattr DW$308, DW_AT_location[DW_OP_reg0]
        MOV       PH,AL                 ; |981| 
        AND       AL,PH,#0xfffe         ; |986| 
        MOVL      *SP++,XAR1
        MOVB      XAR7,#1               ; |985| 
        MOVB      XAR6,#0
        BF        L145,EQ               ; |986| 
        ; branchcc occurs ; |986| 
L140:    
DW$L$_CylinderSum$2$B:
	.dwpsn	"man.c",987,0
        MOV       T,AR6
        MOVL      XAR4,#_manref         ; |988| 
        MPYB      ACC,T,#20             ; |988| 
        ADDL      XAR4,ACC
        SETC      SXM
        MOVB      XAR0,#8               ; |988| 
        MOV       ACC,*+XAR4[AR0]       ; |988| 
        ABS       ACC                   ; |988| 
        CMP       AL,#16384             ; |988| 
        BF        L141,LT               ; |988| 
        ; branchcc occurs ; |988| 
DW$L$_CylinderSum$2$E:
DW$L$_CylinderSum$3$B:
        MOV       *+XAR4[AR0],#0        ; |988| 
DW$L$_CylinderSum$3$E:
L141:    
DW$L$_CylinderSum$4$B:
        MPYB      ACC,T,#20             ; |989| 
        MOVL      XAR4,#_manref         ; |989| 
        ADDL      XAR4,ACC
        MOVB      XAR0,#18              ; |989| 
        MOV       ACC,*+XAR4[AR0]       ; |989| 
        ABS       ACC                   ; |989| 
        CMP       AL,#16384             ; |989| 
        BF        L142,LT               ; |989| 
        ; branchcc occurs ; |989| 
DW$L$_CylinderSum$4$E:
DW$L$_CylinderSum$5$B:
        MOV       *+XAR4[AR0],#0        ; |989| 
DW$L$_CylinderSum$5$E:
L142:    
DW$L$_CylinderSum$6$B:
        MOVW      DP,#_damagemon+9
        MOV       AL,@_damagemon+9      ; |991| 
        AND       AL,AR7                ; |991| 
        BF        L143,NEQ              ; |991| 
        ; branchcc occurs ; |991| 
DW$L$_CylinderSum$6$E:
DW$L$_CylinderSum$7$B:
        MOV       ACC,AR6 << 1          ; |995| 
        MOVL      XAR4,#_manrefsum      ; |995| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#0          ; |995| 
        BF        L144,UNC              ; |995| 
        ; branch occurs ; |995| 
DW$L$_CylinderSum$7$E:
L143:    
DW$L$_CylinderSum$8$B:
        MPYB      ACC,T,#20             ; |993| 
        MOVL      XAR4,#_manref         ; |993| 
        ADDL      XAR4,ACC
        MOVB      XAR1,#18              ; |993| 
        MOVB      XAR0,#8               ; |993| 
        MOV       AL,*+XAR4[AR1]        ; |993| 
        ADD       AL,*+XAR4[AR0]        ; |993| 
        MOV       PL,AL                 ; |993| 
        MOV       ACC,AR6 << 1          ; |993| 
        MOVL      XAR4,#_manrefsum      ; |993| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],P           ; |993| 
DW$L$_CylinderSum$8$E:
L144:    
DW$L$_CylinderSum$9$B:
        MOV       AL,AR7
        LSL       AL,1                  ; |996| 
        MOVZ      AR7,AL                ; |996| 
        MOV       AL,AR6                ; |996| 
        ADDB      AL,#1                 ; |986| 
        MOVZ      AR6,AL                ; |986| 
        MOV       AL,PH                 ; |986| 
        LSR       AL,1                  ; |986| 
        CMP       AL,AR6                ; |986| 
	.dwpsn	"man.c",997,0
        BF        L140,HI               ; |986| 
        ; branchcc occurs ; |986| 
DW$L$_CylinderSum$9$E:
L145:    
        MOVL      XAR1,*--SP
	.dwpsn	"man.c",998,1
        LRETR
        ; return occurs

DW$309	.dwtag  DW_TAG_loop
	.dwattr DW$309, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L140:1:1473840056")
	.dwattr DW$309, DW_AT_begin_file("man.c")
	.dwattr DW$309, DW_AT_begin_line(0x3da)
	.dwattr DW$309, DW_AT_end_line(0x3e5)
DW$310	.dwtag  DW_TAG_loop_range
	.dwattr DW$310, DW_AT_low_pc(DW$L$_CylinderSum$2$B)
	.dwattr DW$310, DW_AT_high_pc(DW$L$_CylinderSum$2$E)
DW$311	.dwtag  DW_TAG_loop_range
	.dwattr DW$311, DW_AT_low_pc(DW$L$_CylinderSum$3$B)
	.dwattr DW$311, DW_AT_high_pc(DW$L$_CylinderSum$3$E)
DW$312	.dwtag  DW_TAG_loop_range
	.dwattr DW$312, DW_AT_low_pc(DW$L$_CylinderSum$4$B)
	.dwattr DW$312, DW_AT_high_pc(DW$L$_CylinderSum$4$E)
DW$313	.dwtag  DW_TAG_loop_range
	.dwattr DW$313, DW_AT_low_pc(DW$L$_CylinderSum$5$B)
	.dwattr DW$313, DW_AT_high_pc(DW$L$_CylinderSum$5$E)
DW$314	.dwtag  DW_TAG_loop_range
	.dwattr DW$314, DW_AT_low_pc(DW$L$_CylinderSum$6$B)
	.dwattr DW$314, DW_AT_high_pc(DW$L$_CylinderSum$6$E)
DW$315	.dwtag  DW_TAG_loop_range
	.dwattr DW$315, DW_AT_low_pc(DW$L$_CylinderSum$7$B)
	.dwattr DW$315, DW_AT_high_pc(DW$L$_CylinderSum$7$E)
DW$316	.dwtag  DW_TAG_loop_range
	.dwattr DW$316, DW_AT_low_pc(DW$L$_CylinderSum$8$B)
	.dwattr DW$316, DW_AT_high_pc(DW$L$_CylinderSum$8$E)
DW$317	.dwtag  DW_TAG_loop_range
	.dwattr DW$317, DW_AT_low_pc(DW$L$_CylinderSum$9$B)
	.dwattr DW$317, DW_AT_high_pc(DW$L$_CylinderSum$9$E)
	.dwendtag DW$309

	.dwattr DW$307, DW_AT_end_file("man.c")
	.dwattr DW$307, DW_AT_end_line(0x3e6)
	.dwattr DW$307, DW_AT_end_column(0x01)
	.dwendtag DW$307

	.sect	".text"
	.global	_MBNeighbourSum

DW$318	.dwtag  DW_TAG_subprogram, DW_AT_name("MBNeighbourSum"), DW_AT_symbol_name("_MBNeighbourSum")
	.dwattr DW$318, DW_AT_low_pc(_MBNeighbourSum)
	.dwattr DW$318, DW_AT_high_pc(0x00)
	.dwattr DW$318, DW_AT_begin_file("man.c")
	.dwattr DW$318, DW_AT_begin_line(0x3ee)
	.dwattr DW$318, DW_AT_begin_column(0x06)
	.dwattr DW$318, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$318, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",1007,1

;***************************************************************
;* FNAME: _MBNeighbourSum               FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_MBNeighbourSum:
;* AL    assigned to _numsens
DW$319	.dwtag  DW_TAG_formal_parameter, DW_AT_name("numsens"), DW_AT_symbol_name("_numsens")
	.dwattr DW$319, DW_AT_type(*DW$T$10)
	.dwattr DW$319, DW_AT_location[DW_OP_reg0]
        MOVZ      AR5,AL                ; |1007| 
        MOVB      AL,#1                 ; |1016| 
        MOV       PH,AL                 ; |1016| 
        MOV       PL,AL                 ; |1019| 
        MOV       AL,AR5                ; |1019| 
        CMPB      AL,#4                 ; |1019| 
        MOVL      *SP++,XAR1
        MOVB      XAR7,#0
        MOVB      XAR6,#1               ; |1017| 
        BF        L151,LT               ; |1019| 
        ; branchcc occurs ; |1019| 
L146:    
DW$L$_MBNeighbourSum$2$B:
	.dwpsn	"man.c",1020,0
        MOV       T,AR6
        MOVL      XAR4,#_manref         ; |1021| 
        MPYB      ACC,T,#10             ; |1021| 
        ADDL      XAR4,ACC
        SETC      SXM
        MOVB      XAR0,#8               ; |1021| 
        MOV       ACC,*+XAR4[AR0]       ; |1021| 
        ABS       ACC                   ; |1021| 
        CMP       AL,#16384             ; |1021| 
        BF        L147,LT               ; |1021| 
        ; branchcc occurs ; |1021| 
DW$L$_MBNeighbourSum$2$E:
DW$L$_MBNeighbourSum$3$B:
        MOV       *+XAR4[AR0],#0        ; |1021| 
DW$L$_MBNeighbourSum$3$E:
L147:    
DW$L$_MBNeighbourSum$4$B:
        MPYB      ACC,T,#10             ; |1022| 
        MOVL      XAR4,#_manref         ; |1022| 
        ADDL      XAR4,ACC
        MOVB      XAR0,#18              ; |1022| 
        MOV       ACC,*+XAR4[AR0]       ; |1022| 
        ABS       ACC                   ; |1022| 
        CMP       AL,#16384             ; |1022| 
        BF        L148,LT               ; |1022| 
        ; branchcc occurs ; |1022| 
DW$L$_MBNeighbourSum$4$E:
DW$L$_MBNeighbourSum$5$B:
        MOV       *+XAR4[AR0],#0        ; |1022| 
DW$L$_MBNeighbourSum$5$E:
L148:    
DW$L$_MBNeighbourSum$6$B:
        MOVW      DP,#_damagemon+10
        MOV       AL,@_damagemon+10     ; |1024| 
        AND       AL,PH                 ; |1024| 
        BF        L149,NEQ              ; |1024| 
        ; branchcc occurs ; |1024| 
DW$L$_MBNeighbourSum$6$E:
DW$L$_MBNeighbourSum$7$B:
        MOV       ACC,AR7 << 1          ; |1028| 
        MOVL      XAR4,#_manrefsum+1    ; |1028| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#0          ; |1028| 
        BF        L150,UNC              ; |1028| 
        ; branch occurs ; |1028| 
DW$L$_MBNeighbourSum$7$E:
L149:    
DW$L$_MBNeighbourSum$8$B:
        MPYB      ACC,T,#10             ; |1026| 
        MOVL      XAR4,#_manref         ; |1026| 
        ADDL      XAR4,ACC
        MOVB      XAR1,#18              ; |1026| 
        MOVB      XAR0,#8               ; |1026| 
        MOV       AL,*+XAR4[AR1]        ; |1026| 
        ADD       AL,*+XAR4[AR0]        ; |1026| 
        MOV       T,AL                  ; |1026| 
        MOV       ACC,AR7 << 1          ; |1026| 
        MOVL      XAR4,#_manrefsum+1    ; |1026| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],T           ; |1026| 
DW$L$_MBNeighbourSum$8$E:
L150:    
DW$L$_MBNeighbourSum$9$B:
        MOV       AL,PH
        LSL       AL,1                  ; |1029| 
        MOV       PH,AL                 ; |1029| 
        MOV       AL,AR7                ; |1029| 
        MOV       AH,PL                 ; |1019| 
        ADDB      AL,#1                 ; |1030| 
        MOVZ      AR7,AL                ; |1030| 
        MOV       AL,AR6                ; |1030| 
        ADDB      AL,#2                 ; |1031| 
        MOVZ      AR6,AL                ; |1031| 
        MOV       AL,AR5                ; |1031| 
        LSR       AL,15                 ; |1019| 
        ADD       AL,AR5                ; |1019| 
        ASR       AL,1                  ; |1019| 
        ADDB      AH,#1                 ; |1019| 
        MOV       PL,AH                 ; |1019| 
        CMP       AL,PL                 ; |1019| 
	.dwpsn	"man.c",1032,0
        BF        L146,GT               ; |1019| 
        ; branchcc occurs ; |1019| 
DW$L$_MBNeighbourSum$9$E:
L151:    
        MOVL      XAR1,*--SP
	.dwpsn	"man.c",1033,1
        LRETR
        ; return occurs

DW$320	.dwtag  DW_TAG_loop
	.dwattr DW$320, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L146:1:1473840056")
	.dwattr DW$320, DW_AT_begin_file("man.c")
	.dwattr DW$320, DW_AT_begin_line(0x3fb)
	.dwattr DW$320, DW_AT_end_line(0x408)
DW$321	.dwtag  DW_TAG_loop_range
	.dwattr DW$321, DW_AT_low_pc(DW$L$_MBNeighbourSum$2$B)
	.dwattr DW$321, DW_AT_high_pc(DW$L$_MBNeighbourSum$2$E)
DW$322	.dwtag  DW_TAG_loop_range
	.dwattr DW$322, DW_AT_low_pc(DW$L$_MBNeighbourSum$3$B)
	.dwattr DW$322, DW_AT_high_pc(DW$L$_MBNeighbourSum$3$E)
DW$323	.dwtag  DW_TAG_loop_range
	.dwattr DW$323, DW_AT_low_pc(DW$L$_MBNeighbourSum$4$B)
	.dwattr DW$323, DW_AT_high_pc(DW$L$_MBNeighbourSum$4$E)
DW$324	.dwtag  DW_TAG_loop_range
	.dwattr DW$324, DW_AT_low_pc(DW$L$_MBNeighbourSum$5$B)
	.dwattr DW$324, DW_AT_high_pc(DW$L$_MBNeighbourSum$5$E)
DW$325	.dwtag  DW_TAG_loop_range
	.dwattr DW$325, DW_AT_low_pc(DW$L$_MBNeighbourSum$6$B)
	.dwattr DW$325, DW_AT_high_pc(DW$L$_MBNeighbourSum$6$E)
DW$326	.dwtag  DW_TAG_loop_range
	.dwattr DW$326, DW_AT_low_pc(DW$L$_MBNeighbourSum$7$B)
	.dwattr DW$326, DW_AT_high_pc(DW$L$_MBNeighbourSum$7$E)
DW$327	.dwtag  DW_TAG_loop_range
	.dwattr DW$327, DW_AT_low_pc(DW$L$_MBNeighbourSum$8$B)
	.dwattr DW$327, DW_AT_high_pc(DW$L$_MBNeighbourSum$8$E)
DW$328	.dwtag  DW_TAG_loop_range
	.dwattr DW$328, DW_AT_low_pc(DW$L$_MBNeighbourSum$9$B)
	.dwattr DW$328, DW_AT_high_pc(DW$L$_MBNeighbourSum$9$E)
	.dwendtag DW$320

	.dwattr DW$318, DW_AT_end_file("man.c")
	.dwattr DW$318, DW_AT_end_line(0x409)
	.dwattr DW$318, DW_AT_end_column(0x01)
	.dwendtag DW$318

	.sect	".text"
	.global	_ApplyImmOffset

DW$329	.dwtag  DW_TAG_subprogram, DW_AT_name("ApplyImmOffset"), DW_AT_symbol_name("_ApplyImmOffset")
	.dwattr DW$329, DW_AT_low_pc(_ApplyImmOffset)
	.dwattr DW$329, DW_AT_high_pc(0x00)
	.dwattr DW$329, DW_AT_begin_file("man.c")
	.dwattr DW$329, DW_AT_begin_line(0x40d)
	.dwattr DW$329, DW_AT_begin_column(0x05)
	.dwattr DW$329, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$329, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",1038,1

;***************************************************************
;* FNAME: _ApplyImmOffset               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ApplyImmOffset:
;* AL    assigned to _num
DW$330	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num"), DW_AT_symbol_name("_num")
	.dwattr DW$330, DW_AT_type(*DW$T$11)
	.dwattr DW$330, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _val
DW$331	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$331, DW_AT_type(*DW$T$10)
	.dwattr DW$331, DW_AT_location[DW_OP_reg1]
        MOVW      DP,#_settings+13
        MOVZ      AR0,AL                ; |1038| 
        MOV       AL,@_settings+13      ; |1040| 
        BF        L152,NEQ              ; |1040| 
        ; branchcc occurs ; |1040| 
        MOV       AL,AH                 ; |1042| 
        MOVL      XAR4,#_offsetA        ; |1042| 
        SUB       AL,*+XAR4[AR0]        ; |1042| 
        MOVL      XAR4,#_offsetB        ; |1042| 
        SUB       AL,*+XAR4[AR0]        ; |1042| 
        MOV       AH,AL                 ; |1042| 
L152:    
        MOV       AL,AH                 ; |1044| 
	.dwpsn	"man.c",1045,1
        LRETR
        ; return occurs
	.dwattr DW$329, DW_AT_end_file("man.c")
	.dwattr DW$329, DW_AT_end_line(0x415)
	.dwattr DW$329, DW_AT_end_column(0x01)
	.dwendtag DW$329

	.sect	".text"
	.global	_SensorImmCompensation

DW$332	.dwtag  DW_TAG_subprogram, DW_AT_name("SensorImmCompensation"), DW_AT_symbol_name("_SensorImmCompensation")
	.dwattr DW$332, DW_AT_low_pc(_SensorImmCompensation)
	.dwattr DW$332, DW_AT_high_pc(0x00)
	.dwattr DW$332, DW_AT_begin_file("man.c")
	.dwattr DW$332, DW_AT_begin_line(0x41a)
	.dwattr DW$332, DW_AT_begin_column(0x05)
	.dwattr DW$332, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$332, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",1051,1

;***************************************************************
;* FNAME: _SensorImmCompensation        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SensorImmCompensation:
;* AL    assigned to _num
DW$333	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num"), DW_AT_symbol_name("_num")
	.dwattr DW$333, DW_AT_type(*DW$T$11)
	.dwattr DW$333, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _val
DW$334	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$334, DW_AT_type(*DW$T$10)
	.dwattr DW$334, DW_AT_location[DW_OP_reg1]
;* AR4   assigned to _rpm
DW$335	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$335, DW_AT_type(*DW$T$11)
	.dwattr DW$335, DW_AT_location[DW_OP_reg12]
        MOVZ      AR7,AH                ; |1051| 
        MOVW      DP,#_allsensors+4
        MOV       AH,AR4                ; |1055| 
        SUB       AH,@_allsensors+4     ; |1055| 
        MOVZ      AR6,AH                ; |1055| 
        BF        L153,GEQ              ; |1056| 
        ; branchcc occurs ; |1056| 
        MOVB      XAR6,#0
L153:    
        MOVW      DP,#_allsensors+5
        MOV       AH,@_allsensors+5     ; |1058| 
        CMP       AH,AR4                ; |1058| 
        BF        L154,HI               ; |1058| 
        ; branchcc occurs ; |1058| 
        MOVW      DP,#_allsensors+4
        SUB       AH,@_allsensors+4     ; |1058| 
        ADDB      AH,#-1
        MOVZ      AR6,AH                ; |1058| 
L154:    
        MOV       AH,AR6                ; |1062| 
        LCR       #_GetRPMCompVal       ; |1062| 
        ; call occurs [#_GetRPMCompVal] ; |1062| 
        MOV       AH,AR7                ; |1062| 
        SUB       AH,AL                 ; |1062| 
        MOV       AL,AH                 ; |1062| 
	.dwpsn	"man.c",1064,1
        LRETR
        ; return occurs
	.dwattr DW$332, DW_AT_end_file("man.c")
	.dwattr DW$332, DW_AT_end_line(0x428)
	.dwattr DW$332, DW_AT_end_column(0x01)
	.dwendtag DW$332

	.sect	".text"
	.global	_MANRefCalcs

DW$336	.dwtag  DW_TAG_subprogram, DW_AT_name("MANRefCalcs"), DW_AT_symbol_name("_MANRefCalcs")
	.dwattr DW$336, DW_AT_low_pc(_MANRefCalcs)
	.dwattr DW$336, DW_AT_high_pc(0x00)
	.dwattr DW$336, DW_AT_begin_file("man.c")
	.dwattr DW$336, DW_AT_begin_line(0x430)
	.dwattr DW$336, DW_AT_begin_column(0x06)
	.dwattr DW$336, DW_AT_frame_base[DW_OP_breg20 -50]
	.dwattr DW$336, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",1073,1

;***************************************************************
;* FNAME: _MANRefCalcs                  FR SIZE:  48           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 40 Auto,  6 SOE     *
;***************************************************************

_MANRefCalcs:
;* AL    assigned to _numsens
DW$337	.dwtag  DW_TAG_formal_parameter, DW_AT_name("numsens"), DW_AT_symbol_name("_numsens")
	.dwattr DW$337, DW_AT_type(*DW$T$10)
	.dwattr DW$337, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _rpm
DW$338	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$338, DW_AT_type(*DW$T$10)
	.dwattr DW$338, DW_AT_location[DW_OP_reg1]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#42
        MOVL      *-SP[34],ACC          ; |1073| 
        LCR       #_CylNeighbourRegSet  ; |1083| 
        ; call occurs [#_CylNeighbourRegSet] ; |1083| 
        LCR       #_MBNeighbourRegSet   ; |1084| 
        ; call occurs [#_MBNeighbourRegSet] ; |1084| 
        MOV       AL,*-SP[34]           ; |1086| 
        MOV       *-SP[35],#0           ; |1086| 
        BF        L156,LEQ              ; |1086| 
        ; branchcc occurs ; |1086| 
L155:    
DW$L$_MANRefCalcs$2$B:
	.dwpsn	"man.c",1086,0
        MOV       T,*-SP[35]            ; |1086| 
        MOVL      XAR4,#_sensor+4       ; |1086| 
        MPYB      ACC,T,#18             ; |1086| 
        ADDL      XAR4,ACC
        MOV       AH,*+XAR4[0]          ; |1086| 
        MOV       AL,*-SP[35]
        LCR       #_ApplyImmOffset      ; |1086| 
        ; call occurs [#_ApplyImmOffset] ; |1086| 
        MOVZ      AR4,SP                ; |1086| 
        SETC      SXM
        MOVZ      AR6,AL                ; |1086| 
        SUBB      XAR4,#32              ; |1086| 
        MOV       ACC,*-SP[35]          ; |1086| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],AR6         ; |1086| 
        INC       *-SP[35]              ; |1086| 
        MOV       AH,*-SP[35]           ; |1086| 
        MOV       AL,*-SP[34]           ; |1086| 
        CMP       AL,AH                 ; |1086| 
        BF        L155,GT               ; |1086| 
        ; branchcc occurs ; |1086| 
DW$L$_MANRefCalcs$2$E:
L156:    
        MOV       AL,*-SP[34]           ; |1087| 
        MOV       *-SP[35],#0           ; |1087| 
        BF        L158,LEQ              ; |1087| 
        ; branchcc occurs ; |1087| 
L157:    
DW$L$_MANRefCalcs$4$B:
	.dwpsn	"man.c",1087,0
        MOVZ      AR5,SP                ; |1087| 
        SETC      SXM
        MOV       ACC,*-SP[35]          ; |1087| 
        SUBB      XAR5,#32              ; |1087| 
        ADDL      XAR5,ACC
        MOVZ      AR4,*-SP[33]          ; |1087| 
        MOV       AL,*-SP[35]           ; |1087| 
        MOV       AH,*+XAR5[0]          ; |1087| 
        LCR       #_SensorImmCompensation ; |1087| 
        ; call occurs [#_SensorImmCompensation] ; |1087| 
        MOV       *+XAR5[0],AL          ; |1087| 
        INC       *-SP[35]              ; |1087| 
        MOV       AH,*-SP[35]           ; |1087| 
        MOV       AL,*-SP[34]           ; |1087| 
        CMP       AL,AH                 ; |1087| 
        BF        L157,GT               ; |1087| 
        ; branchcc occurs ; |1087| 
DW$L$_MANRefCalcs$4$E:
L158:    
        MOVW      DP,#_damagemon+4
        MOV       AL,@_damagemon+4      ; |1089| 
        LCR       #U$$TOFS              ; |1089| 
        ; call occurs [#U$$TOFS] ; |1089| 
        MOVL      *-SP[38],ACC          ; |1089| 
        MOV       AL,#20480
        MOV       AH,#18371
        MOVL      *-SP[2],ACC           ; |1090| 
        MOVL      ACC,*-SP[38]          ; |1090| 
        LCR       #FS$$DIV              ; |1090| 
        ; call occurs [#FS$$DIV] ; |1090| 
        MOVW      DP,#_damagemon+5
        MOVL      *-SP[38],ACC          ; |1090| 
        MOV       AL,@_damagemon+5      ; |1091| 
        LCR       #U$$TOFS              ; |1091| 
        ; call occurs [#U$$TOFS] ; |1091| 
        MOVL      *-SP[40],ACC          ; |1091| 
        MOV       AL,#20480
        MOV       AH,#18371
        MOVL      *-SP[2],ACC           ; |1092| 
        MOVL      ACC,*-SP[40]          ; |1092| 
        LCR       #FS$$DIV              ; |1092| 
        ; call occurs [#FS$$DIV] ; |1092| 
        MOVW      DP,#_iSensorInRepalceMode
        MOVL      *-SP[40],ACC          ; |1092| 
        MOV       AL,@_iSensorInRepalceMode ; |1095| 
        CMPB      AL,#1                 ; |1095| 
        BF        L159,EQ               ; |1095| 
        ; branchcc occurs ; |1095| 
        MOVW      DP,#_iSensorInResetMode
        MOV       AL,@_iSensorInResetMode ; |1095| 
        CMPB      AL,#1                 ; |1095| 
        BF        L161,NEQ              ; |1095| 
        ; branchcc occurs ; |1095| 
L159:    
        MOVW      DP,#_iSensorInRepalceTimer
        MOV       AL,@_iSensorInRepalceTimer ; |1095| 
        CMPB      AL,#1                 ; |1095| 
        BF        L161,NEQ              ; |1095| 
        ; branchcc occurs ; |1095| 
        MOV       AL,*-SP[33]
        MOVW      DP,#_allsensors+5
        CMP       AL,@_allsensors+5     ; |1098| 
        BF        L160,HIS              ; |1098| 
        ; branchcc occurs ; |1098| 
        MOVW      DP,#_allsensors+4
        CMP       AL,@_allsensors+4     ; |1098| 
        BF        L160,LO               ; |1098| 
        ; branchcc occurs ; |1098| 
        LCR       #I$$TOFS              ; |1100| 
        ; call occurs [#I$$TOFS] ; |1100| 
        MOVL      *-SP[2],ACC           ; |1100| 
        MOV       AL,#0
        MOV       AH,#17302
        LCR       #FS$$DIV              ; |1100| 
        ; call occurs [#FS$$DIV] ; |1100| 
        MOVL      XAR6,ACC              ; |1100| 
        MOV       AL,#0
        MOV       AH,#17224
        MOVL      *-SP[2],ACC           ; |1100| 
        MOVL      ACC,XAR6              ; |1100| 
        LCR       #FS$$MPY              ; |1100| 
        ; call occurs [#FS$$MPY] ; |1100| 
        LCR       #FS$$TOUL             ; |1100| 
        ; call occurs [#FS$$TOUL] ; |1100| 
        MOVW      DP,#_wFiveRevTime
        MOVL      XAR6,ACC              ; |1100| 
        MOVL      @_wFiveRevTime,ACC    ; |1100| 
        MOVB      ACC,#200
        MOVW      DP,#_timers+72
        ADDL      ACC,XAR6
        MOV       @_timers+72,AL        ; |1101| 
        MOVW      DP,#_iSensorInRepalceTimer
        MOV       @_iSensorInRepalceTimer,#0 ; |1102| 
        BF        L161,UNC              ; |1103| 
        ; branch occurs ; |1103| 
L160:    
        SETC      SXM
        MOVW      DP,#_iSensorInRepalce
        MOVL      XAR4,#_damagemonignore ; |1106| 
        MOV       ACC,@_iSensorInRepalce ; |1106| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#3          ; |1106| 
L161:    
        MOVB      ACC,#1
        MOVW      DP,#_wSpeedCompensated5Cnt
        MOV       *-SP[35],#0           ; |1112| 
        ADDL      @_wSpeedCompensated5Cnt,ACC ; |1110| 
        MOV       AL,*-SP[34]           ; |1112| 
        BF        L181,LEQ              ; |1112| 
        ; branchcc occurs ; |1112| 
L162:    
DW$L$_MANRefCalcs$13$B:
	.dwpsn	"man.c",1113,0
        MOV       T,*-SP[35]
        MOVL      XAR4,#_sensor         ; |1114| 
        MPYB      ACC,T,#18             ; |1114| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#0          ; |1114| 
        BF        L179,NTC              ; |1114| 
        ; branchcc occurs ; |1114| 
DW$L$_MANRefCalcs$13$E:
DW$L$_MANRefCalcs$14$B:
        TBIT      *+XAR4[1],#0          ; |1114| 
        BF        L179,TC               ; |1114| 
        ; branchcc occurs ; |1114| 
DW$L$_MANRefCalcs$14$E:
DW$L$_MANRefCalcs$15$B:
        SETC      SXM
        MOVL      XAR4,#_modalsetcounters ; |1114| 
        MOV       ACC,*-SP[35]          ; |1114| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |1114| 
        BF        L179,NEQ              ; |1114| 
        ; branchcc occurs ; |1114| 
DW$L$_MANRefCalcs$15$E:
DW$L$_MANRefCalcs$16$B:
        MOV       AL,*-SP[35]
        MOVL      XAR4,#_fSpeedCompensated5Total ; |1116| 
        MOV       ACC,AL << 1           ; |1116| 
        ADDL      XAR4,ACC
        MOVL      XAR2,XAR4             ; |1116| 
        MOVZ      AR4,SP                ; |1116| 
        MOVL      *-SP[42],ACC          ; |1116| 
        MOV       ACC,*-SP[35]          ; |1116| 
        SUBB      XAR4,#32              ; |1116| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |1116| 
        LCR       #I$$TOFS              ; |1116| 
        ; call occurs [#I$$TOFS] ; |1116| 
        MOVL      *-SP[2],ACC           ; |1116| 
        MOVL      ACC,*+XAR2[0]         ; |1116| 
        LCR       #FS$$ADD              ; |1116| 
        ; call occurs [#FS$$ADD] ; |1116| 
        MOVL      *+XAR2[0],ACC         ; |1116| 
        MOVW      DP,#_wSpeedCompensated5Cnt
        MOVB      ACC,#5
        CMPL      ACC,@_wSpeedCompensated5Cnt ; |1117| 
        BF        L163,HIS              ; |1117| 
        ; branchcc occurs ; |1117| 
DW$L$_MANRefCalcs$16$E:
DW$L$_MANRefCalcs$17$B:
        MOVL      ACC,*-SP[42]          ; |1119| 
        MOVL      XAR4,#_fSpeedCompensated5Avg ; |1119| 
        ADDL      XAR4,ACC
        MOVL      *-SP[42],XAR4         ; |1119| 
        MOVL      ACC,*+XAR4[0]         ; |1119| 
        MOVL      *-SP[2],ACC           ; |1119| 
        MOVL      ACC,*+XAR2[0]         ; |1119| 
        LCR       #FS$$SUB              ; |1119| 
        ; call occurs [#FS$$SUB] ; |1119| 
        MOVL      *+XAR2[0],ACC         ; |1119| 
        MOVL      XAR6,ACC              ; |1119| 
        MOV       AL,#0
        MOV       AH,#16544
        MOVL      *-SP[2],ACC           ; |1120| 
        MOVL      ACC,XAR6              ; |1120| 
        LCR       #FS$$DIV              ; |1120| 
        ; call occurs [#FS$$DIV] ; |1120| 
        MOVL      XAR4,*-SP[42]         ; |1120| 
        MOVL      *+XAR4[0],ACC         ; |1120| 
DW$L$_MANRefCalcs$17$E:
L163:    
DW$L$_MANRefCalcs$18$B:
        MOVW      DP,#_speedcompcoeffs
        MOV       AL,@_speedcompcoeffs  ; |1125| 
        CMPB      AL,#2                 ; |1125| 
        BF        L176,LO               ; |1125| 
        ; branchcc occurs ; |1125| 
DW$L$_MANRefCalcs$18$E:
DW$L$_MANRefCalcs$19$B:
        MOVW      DP,#_iStartRapidWear
        MOV       AH,@_iStartRapidWear  ; |1125| 
        CMPB      AH,#1                 ; |1125| 
        BF        L164,EQ               ; |1125| 
        ; branchcc occurs ; |1125| 
DW$L$_MANRefCalcs$19$E:
DW$L$_MANRefCalcs$20$B:
        CMPB      AL,#2                 ; |1125| 
        BF        L176,EQ               ; |1125| 
        ; branchcc occurs ; |1125| 
DW$L$_MANRefCalcs$20$E:
L164:    
DW$L$_MANRefCalcs$21$B:
        SETC      SXM
        MOVL      XAR4,#_damagemonignore ; |1127| 
        MOV       ACC,*-SP[35]          ; |1127| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |1127| 
        BF        L177,NEQ              ; |1127| 
        ; branchcc occurs ; |1127| 
DW$L$_MANRefCalcs$21$E:
DW$L$_MANRefCalcs$22$B:
        MOVW      DP,#_allsensors+16
        TBIT      @_allsensors+16,#1    ; |1139| 
        BF        L165,NTC              ; |1139| 
        ; branchcc occurs ; |1139| 
DW$L$_MANRefCalcs$22$E:
DW$L$_MANRefCalcs$23$B:
        MOVW      DP,#_iRepaidWearReset
        MOV       AL,@_iRepaidWearReset ; |1139| 
        CMPB      AL,#1                 ; |1139| 
        BF        L175,EQ               ; |1139| 
        ; branchcc occurs ; |1139| 
DW$L$_MANRefCalcs$23$E:
L165:    
DW$L$_MANRefCalcs$24$B:
        MOVW      DP,#_timers+72
        MOV       AL,@_timers+72        ; |1139| 
        BF        L167,EQ               ; |1139| 
        ; branchcc occurs ; |1139| 
DW$L$_MANRefCalcs$24$E:
DW$L$_MANRefCalcs$25$B:
        MOVW      DP,#_timers+72
        MOVU      ACC,@_timers+72
        MOVW      DP,#_wFiveRevTime
        CMPL      ACC,@_wFiveRevTime    ; |1139| 
        BF        L167,HIS              ; |1139| 
        ; branchcc occurs ; |1139| 
DW$L$_MANRefCalcs$25$E:
DW$L$_MANRefCalcs$26$B:
        MOV       AL,*-SP[35]
        MOVW      DP,#_iSensorInRepalce
        CMP       AL,@_iSensorInRepalce ; |1139| 
        BF        L166,NEQ              ; |1139| 
        ; branchcc occurs ; |1139| 
DW$L$_MANRefCalcs$26$E:
DW$L$_MANRefCalcs$27$B:
        MOVW      DP,#_iSensorInRepalceMode
        MOV       AL,@_iSensorInRepalceMode ; |1139| 
        CMPB      AL,#1                 ; |1139| 
        BF        L175,EQ               ; |1139| 
        ; branchcc occurs ; |1139| 
DW$L$_MANRefCalcs$27$E:
L166:    
DW$L$_MANRefCalcs$28$B:
        MOVW      DP,#_iSensorInResetMode
        MOV       AL,@_iSensorInResetMode ; |1139| 
        CMPB      AL,#1                 ; |1139| 
        BF        L175,EQ               ; |1139| 
        ; branchcc occurs ; |1139| 
DW$L$_MANRefCalcs$28$E:
L167:    
DW$L$_MANRefCalcs$29$B:
        MOVW      DP,#_iDmPause
        MOV       AL,@_iDmPause         ; |1148| 
        MOVW      DP,#_SensorSlowDowntatus
        OR        AL,@_SensorSlowDowntatus ; |1148| 
        BF        L168,NEQ              ; |1148| 
        ; branchcc occurs ; |1148| 
DW$L$_MANRefCalcs$29$E:
DW$L$_MANRefCalcs$30$B:
        MOVZ      AR4,SP                ; |1151| 
        MOV       ACC,*-SP[35]          ; |1151| 
        SUBB      XAR4,#32              ; |1151| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |1151| 
        LCR       #I$$TOFS              ; |1151| 
        ; call occurs [#I$$TOFS] ; |1151| 
        MOVL      XAR3,ACC              ; |1151| 
        MOV       T,*-SP[35]            ; |1151| 
        MOVL      XAR4,#_manref         ; |1151| 
        MPYB      ACC,T,#10             ; |1151| 
        ADDL      XAR4,ACC
        MOVL      ACC,*-SP[38]          ; |1151| 
        MOVL      *-SP[2],ACC           ; |1151| 
        MOVL      XAR2,XAR4             ; |1151| 
        MOV       ACC,#32512 << 15
        LCR       #FS$$SUB              ; |1151| 
        ; call occurs [#FS$$SUB] ; |1151| 
        MOVL      *-SP[2],ACC           ; |1151| 
        MOVL      ACC,*+XAR2[0]         ; |1151| 
        LCR       #FS$$MPY              ; |1151| 
        ; call occurs [#FS$$MPY] ; |1151| 
        MOVL      XAR1,ACC              ; |1151| 
        MOVL      ACC,*-SP[38]          ; |1151| 
        MOVL      *-SP[2],ACC           ; |1151| 
        MOVL      ACC,XAR3              ; |1151| 
        LCR       #FS$$MPY              ; |1151| 
        ; call occurs [#FS$$MPY] ; |1151| 
        MOVL      *-SP[2],ACC           ; |1151| 
        MOVL      ACC,XAR1              ; |1151| 
        LCR       #FS$$ADD              ; |1151| 
        ; call occurs [#FS$$ADD] ; |1151| 
        MOVL      XAR1,ACC              ; |1151| 
        MOVL      ACC,*-SP[40]          ; |1151| 
        MOVL      *-SP[2],ACC           ; |1152| 
        MOV       ACC,#32512 << 15
        LCR       #FS$$SUB              ; |1152| 
        ; call occurs [#FS$$SUB] ; |1152| 
        MOVL      *-SP[2],ACC           ; |1152| 
        MOVL      ACC,*+XAR2[2]         ; |1152| 
        LCR       #FS$$MPY              ; |1152| 
        ; call occurs [#FS$$MPY] ; |1152| 
        MOVL      XAR2,ACC              ; |1152| 
        MOVL      ACC,*-SP[40]          ; |1152| 
        MOVL      *-SP[2],ACC           ; |1152| 
        MOVL      ACC,XAR3              ; |1152| 
        LCR       #FS$$MPY              ; |1152| 
        ; call occurs [#FS$$MPY] ; |1152| 
        MOVL      *-SP[2],ACC           ; |1152| 
        MOVL      ACC,XAR2              ; |1152| 
        LCR       #FS$$ADD              ; |1152| 
        ; call occurs [#FS$$ADD] ; |1152| 
        BF        L169,UNC              ; |1156| 
        ; branch occurs ; |1156| 
DW$L$_MANRefCalcs$30$E:
L168:    
DW$L$_MANRefCalcs$31$B:
        MOVZ      AR4,SP                ; |1159| 
        MOV       ACC,*-SP[35]          ; |1159| 
        SUBB      XAR4,#32              ; |1159| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |1159| 
        LCR       #I$$TOFS              ; |1159| 
        ; call occurs [#I$$TOFS] ; |1159| 
        MOVL      XAR1,ACC              ; |1159| 
DW$L$_MANRefCalcs$31$E:
L169:    
DW$L$_MANRefCalcs$32$B:
        MOVW      DP,#_allsensors+43
        MOVL      XAR3,ACC              ; |1159| 
        MOV       AL,@_allsensors+43    ; |1160| 
        BF        L170,EQ               ; |1160| 
        ; branchcc occurs ; |1160| 
DW$L$_MANRefCalcs$32$E:
DW$L$_MANRefCalcs$33$B:
        MOV       AL,*-SP[33]
        MOVW      DP,#_allsensors+43
        CMP       AL,@_allsensors+43    ; |1160| 
        BF        L170,LO               ; |1160| 
        ; branchcc occurs ; |1160| 
DW$L$_MANRefCalcs$33$E:
DW$L$_MANRefCalcs$34$B:
        MOVW      DP,#_allsensors+44
        CMP       AL,@_allsensors+44    ; |1160| 
        BF        L171,LOS              ; |1160| 
        ; branchcc occurs ; |1160| 
DW$L$_MANRefCalcs$34$E:
L170:    
DW$L$_MANRefCalcs$35$B:
        MOVW      DP,#_iDmPause
        MOV       AL,@_iDmPause         ; |1160| 
        CMPB      AL,#1                 ; |1160| 
        BF        L171,EQ               ; |1160| 
        ; branchcc occurs ; |1160| 
DW$L$_MANRefCalcs$35$E:
DW$L$_MANRefCalcs$36$B:
        MOV       T,*-SP[35]
        MOVL      XAR4,#_manref         ; |1169| 
        MPYB      ACC,T,#10             ; |1169| 
        ADDL      XAR4,ACC
        MOVL      ACC,*+XAR4[0]         ; |1169| 
        MOVL      *-SP[2],ACC           ; |1169| 
        MOVL      ACC,*+XAR4[2]         ; |1169| 
        LCR       #FS$$SUB              ; |1169| 
        ; call occurs [#FS$$SUB] ; |1169| 
        MOVL      XAR6,ACC              ; |1169| 
        MOV       AL,#39322
        MOV       AH,#16217
        MOVL      *-SP[2],ACC           ; |1169| 
        MOVL      ACC,XAR6              ; |1169| 
        LCR       #FS$$MPY              ; |1169| 
        ; call occurs [#FS$$MPY] ; |1169| 
        MOVL      XAR2,ACC              ; |1169| 
        MOVL      *-SP[2],XAR1          ; |1169| 
        MOVL      ACC,XAR3              ; |1169| 
        LCR       #FS$$SUB              ; |1169| 
        ; call occurs [#FS$$SUB] ; |1169| 
        MOVL      XAR6,ACC              ; |1169| 
        MOV       AL,#39322
        MOV       AH,#15897
        MOVL      *-SP[2],ACC           ; |1169| 
        MOVL      ACC,XAR6              ; |1169| 
        LCR       #FS$$MPY              ; |1169| 
        ; call occurs [#FS$$MPY] ; |1169| 
        MOVL      *-SP[2],ACC           ; |1169| 
        MOVL      ACC,XAR2              ; |1169| 
        LCR       #FS$$ADD              ; |1169| 
        ; call occurs [#FS$$ADD] ; |1169| 
        MOVZ      AR6,*-SP[35]          ; |1169| 
        SETC      SXM
        MOVL      XAR7,ACC              ; |1169| 
        MOVL      XAR4,#_fRapidWearAverage ; |1169| 
        MOV       ACC,AR6 << 1          ; |1169| 
        ADDL      XAR4,ACC
        MOVL      *+XAR4[0],XAR7        ; |1169| 
DW$L$_MANRefCalcs$36$E:
L171:    
DW$L$_MANRefCalcs$37$B:
        SETC      SXM
        MOVL      XAR4,#_iVauleCount    ; |1174| 
        MOV       ACC,*-SP[35]          ; |1174| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |1174| 
        BF        L174,EQ               ; |1174| 
        ; branchcc occurs ; |1174| 
DW$L$_MANRefCalcs$37$E:
DW$L$_MANRefCalcs$38$B:
        MOVW      DP,#_allsensors+16
        TBIT      @_allsensors+16,#1    ; |1174| 
        BF        L172,TC               ; |1174| 
        ; branchcc occurs ; |1174| 
DW$L$_MANRefCalcs$38$E:
DW$L$_MANRefCalcs$39$B:
        MOVW      DP,#_iSensorInRepalceMode
        MOV       AL,@_iSensorInRepalceMode ; |1174| 
        CMPB      AL,#1                 ; |1174| 
        BF        L174,NEQ              ; |1174| 
        ; branchcc occurs ; |1174| 
DW$L$_MANRefCalcs$39$E:
DW$L$_MANRefCalcs$40$B:
        MOV       AL,*-SP[35]
        MOVW      DP,#_iSensorInRepalce
        CMP       AL,@_iSensorInRepalce ; |1174| 
        BF        L174,NEQ              ; |1174| 
        ; branchcc occurs ; |1174| 
DW$L$_MANRefCalcs$40$E:
L172:    
DW$L$_MANRefCalcs$41$B:
        MOV       AL,*-SP[35]
        MOVL      XAR4,#_fRapidFast     ; |1178| 
        MOV       ACC,AL << 1           ; |1178| 
        ADDL      XAR4,ACC
        MOVL      XAR2,ACC              ; |1178| 
        MOVL      XAR1,XAR4             ; |1178| 
        MOV       ACC,*-SP[35]          ; |1178| 
        MOVL      XAR4,#_iVauleCount    ; |1178| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |1178| 
        LCR       #I$$TOFS              ; |1178| 
        ; call occurs [#I$$TOFS] ; |1178| 
        MOVL      *-SP[2],ACC           ; |1178| 
        MOVL      ACC,*+XAR1[0]         ; |1178| 
        LCR       #FS$$DIV              ; |1178| 
        ; call occurs [#FS$$DIV] ; |1178| 
        MOVW      DP,#_speedcompcoeffs
        MOVL      *+XAR1[0],ACC         ; |1178| 
        MOV       AL,@_speedcompcoeffs  ; |1179| 
        CMPB      AL,#2                 ; |1179| 
        BF        L173,NEQ              ; |1179| 
        ; branchcc occurs ; |1179| 
DW$L$_MANRefCalcs$41$E:
DW$L$_MANRefCalcs$42$B:
        MOVL      ACC,XAR2              ; |1179| 
        MOVL      XAR4,#_fRapidWearAverage ; |1179| 
        ADDL      XAR4,ACC
        MOV       AH,#0
        MOV       AL,#0
        MOVL      *+XAR4[0],ACC         ; |1179| 
DW$L$_MANRefCalcs$42$E:
L173:    
DW$L$_MANRefCalcs$43$B:
        SETC      SXM
        MOV       AL,*-SP[35]
        MOVL      XAR4,#_fRapidFast     ; |1181| 
        MOV       ACC,AL << 1           ; |1181| 
        ADDL      XAR4,ACC
        MOVL      XAR2,XAR4             ; |1181| 
        MOVL      XAR4,#_fRapidSlow     ; |1181| 
        ADDL      XAR4,ACC
        MOVL      XAR3,*+XAR2[0]        ; |1181| 
        MOVL      *-SP[42],XAR4         ; |1181| 
        MOVL      XAR4,#_fRapidWearAverage ; |1181| 
        ADDL      XAR4,ACC
        MOVL      ACC,*+XAR4[0]         ; |1181| 
        MOVL      *-SP[2],ACC           ; |1181| 
        MOVL      ACC,XAR3              ; |1181| 
        LCR       #FS$$SUB              ; |1181| 
        ; call occurs [#FS$$SUB] ; |1181| 
        MOVL      XAR4,*-SP[42]         ; |1181| 
        MOVL      XAR1,ACC              ; |1181| 
        MOVL      *+XAR4[0],ACC         ; |1181| 
        MOV       AH,#0
        MOV       AL,#0
        MOVL      *+XAR2[0],ACC         ; |1186| 
        MOVL      XAR4,*-SP[42]         ; |1187| 
        MOVL      *+XAR4[0],ACC         ; |1187| 
        SETC      SXM
        MOVL      XAR4,#_iVauleCount    ; |1188| 
        MOV       ACC,*-SP[35]          ; |1188| 
        ADDL      XAR4,ACC
        MOVW      DP,#_iSensorInRepalce
        MOV       *+XAR4[0],#0          ; |1188| 
        MOV       @_iSensorInRepalce,#100 ; |1191| 
        MOVW      DP,#_iSensorInResetMode
        MOV       @_iSensorInResetMode,#0 ; |1192| 
        MOVW      DP,#_iSensorInRepalceMode
        MOV       @_iSensorInRepalceMode,#0 ; |1193| 
DW$L$_MANRefCalcs$43$E:
L174:    
DW$L$_MANRefCalcs$44$B:
        MOVW      DP,#_cppRapidReset
        MOV       AL,@_cppRapidReset    ; |1198| 
        CMPB      AL,#1                 ; |1198| 
        BF        L178,NEQ              ; |1198| 
        ; branchcc occurs ; |1198| 
DW$L$_MANRefCalcs$44$E:
DW$L$_MANRefCalcs$45$B:
        MOV       AL,*-SP[35]
        MOVL      XAR4,#_fSpeedCompensated5Avg ; |1200| 
        MOV       ACC,AL << 1           ; |1200| 
        ADDL      XAR4,ACC
        MOVL      XAR3,*+XAR4[0]        ; |1200| 
        MOVL      XAR4,#_fRapidFast     ; |1200| 
        ADDL      XAR4,ACC
        MOVL      *+XAR4[0],XAR3        ; |1200| 
        MOVL      XAR4,#_fRapidSlow     ; |1201| 
        ADDL      XAR4,ACC
        MOVL      XAR1,XAR3             ; |1201| 
        MOVL      *+XAR4[0],XAR3        ; |1201| 
        BF        L178,UNC              ; |1203| 
        ; branch occurs ; |1203| 
DW$L$_MANRefCalcs$45$E:
L175:    
DW$L$_MANRefCalcs$46$B:
        MOV       AL,*-SP[35]
        MOVL      XAR4,#_fRapidFast     ; |1141| 
        MOV       ACC,AL << 1           ; |1141| 
        ADDL      XAR4,ACC
        MOVL      XAR2,XAR4             ; |1141| 
        MOVZ      AR4,SP                ; |1141| 
        MOV       ACC,*-SP[35]          ; |1141| 
        SUBB      XAR4,#32              ; |1141| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |1141| 
        LCR       #I$$TOFS              ; |1141| 
        ; call occurs [#I$$TOFS] ; |1141| 
        MOVL      *-SP[2],ACC           ; |1141| 
        MOVL      ACC,*+XAR2[0]         ; |1141| 
        LCR       #FS$$ADD              ; |1141| 
        ; call occurs [#FS$$ADD] ; |1141| 
        SETC      SXM
        MOVL      *+XAR2[0],ACC         ; |1141| 
        MOVL      XAR4,#_iVauleCount    ; |1142| 
        MOV       ACC,*-SP[35]          ; |1142| 
        ADDL      XAR4,ACC
        INC       *+XAR4[0]             ; |1142| 
        BF        L178,UNC              ; |1145| 
        ; branch occurs ; |1145| 
DW$L$_MANRefCalcs$46$E:
L176:    
DW$L$_MANRefCalcs$47$B:
        SETC      SXM
        MOVL      XAR4,#_damagemonignore ; |1125| 
        MOV       ACC,*-SP[35]          ; |1125| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#3          ; |1125| 
DW$L$_MANRefCalcs$47$E:
L177:    
DW$L$_MANRefCalcs$48$B:
        MOVZ      AR4,SP                ; |1130| 
        MOV       ACC,*-SP[35]          ; |1130| 
        SUBB      XAR4,#32              ; |1130| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |1130| 
        LCR       #I$$TOFS              ; |1130| 
        ; call occurs [#I$$TOFS] ; |1130| 
        MOVL      XAR1,ACC              ; |1130| 
        MOVL      XAR3,ACC              ; |1130| 
        SETC      SXM
        MOV       AL,*-SP[35]           ; |1131| 
        MOVL      XAR4,#_fRapidFast     ; |1132| 
        MOV       ACC,AL << 1           ; |1132| 
        ADDL      XAR4,ACC
        MOV       P,#0
        MOVL      *+XAR4[0],P           ; |1132| 
        MOVL      XAR4,#_fRapidSlow     ; |1133| 
        ADDL      XAR4,ACC
        MOV       AH,#0
        MOV       AL,#0
        MOVL      *+XAR4[0],ACC         ; |1133| 
        MOVL      XAR4,#_iVauleCount    ; |1134| 
        MOV       ACC,*-SP[35]          ; |1134| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#0          ; |1134| 
        MOVL      XAR4,#_damagemonignore ; |1135| 
        MOV       ACC,*-SP[35]          ; |1135| 
        ADDL      XAR4,ACC
        DEC       *+XAR4[0]             ; |1135| 
DW$L$_MANRefCalcs$48$E:
L178:    
DW$L$_MANRefCalcs$49$B:
        MOV       T,*-SP[35]
        MOVL      XAR4,#_manref         ; |1209| 
        MPYB      ACC,T,#10             ; |1209| 
        ADDL      XAR4,ACC
        MOVL      XAR2,XAR4             ; |1209| 
        MOVL      ACC,XAR1              ; |1210| 
        MOVL      *+XAR2[0],XAR1        ; |1209| 
        LCR       #_FloattoIntRound     ; |1210| 
        ; call occurs [#_FloattoIntRound] ; |1210| 
        MOV       *+XAR2[6],AL          ; |1210| 
        MOVL      ACC,XAR3              ; |1213| 
        MOVL      *+XAR2[2],XAR3        ; |1212| 
        LCR       #_FloattoIntRound     ; |1213| 
        ; call occurs [#_FloattoIntRound] ; |1213| 
        MOV       *+XAR2[7],AL          ; |1213| 
        MOVL      *-SP[2],XAR1          ; |1215| 
        MOVL      ACC,XAR3              ; |1215| 
        LCR       #FS$$SUB              ; |1215| 
        ; call occurs [#FS$$SUB] ; |1215| 
        MOVL      *+XAR2[4],ACC         ; |1215| 
        LCR       #_FloattoIntRound     ; |1216| 
        ; call occurs [#_FloattoIntRound] ; |1216| 
        MOVB      XAR0,#8               ; |1216| 
        MOV       *+XAR2[AR0],AL        ; |1216| 
        BF        L180,UNC              ; |1217| 
        ; branch occurs ; |1217| 
DW$L$_MANRefCalcs$49$E:
L179:    
DW$L$_MANRefCalcs$50$B:
        MPYB      ACC,T,#10             ; |1220| 
        MOVL      XAR4,#_manref         ; |1220| 
        ADDL      XAR4,ACC
        MOVB      XAR0,#8               ; |1225| 
        MOV       AH,#0
        MOV       AL,#0
        MOVL      *+XAR4[0],ACC         ; |1220| 
        MOVL      *+XAR4[2],ACC         ; |1221| 
        MOVL      *+XAR4[4],ACC         ; |1222| 
        MOV       *+XAR4[6],#0          ; |1223| 
        MOV       *+XAR4[7],#0          ; |1224| 
        MOV       *+XAR4[AR0],#0        ; |1225| 
DW$L$_MANRefCalcs$50$E:
L180:    
DW$L$_MANRefCalcs$51$B:
        MOV       T,*-SP[35]
        MOVL      XAR4,#_manref         ; |1229| 
        MPYB      ACC,T,#10             ; |1229| 
        ADDL      XAR4,ACC
        MOV       PH,#0
        MOV       AL,*-SP[35]           ; |1229| 
        MOV       ACC,AL << #1          ; |1229| 
        MOVL      XAR2,XAR4             ; |1229| 
        MOV       PL,#6
        MOV       AH,#10904             ; |1229| 
        ADD       AH,AL                 ; |1229| 
        ADDUL     P,XAR2
        MOV       *-SP[36],AL           ; |1229| 
        MOVL      XAR4,P                ; |1229| 
        MOVB      XAR5,#1               ; |1229| 
        MOVB      AL,#1                 ; |1229| 
        LCR       #_WriteNVMemory       ; |1229| 
        ; call occurs [#_WriteNVMemory] ; |1229| 
        MOV       AH,#10960             ; |1230| 
        MOV       PH,#0
        MOV       PL,#7
        ADD       AH,*-SP[36]           ; |1230| 
        ADDUL     P,XAR2
        MOVL      XAR4,P                ; |1230| 
        MOVB      XAR5,#1               ; |1230| 
        MOVB      AL,#1                 ; |1230| 
        LCR       #_WriteNVMemory       ; |1230| 
        ; call occurs [#_WriteNVMemory] ; |1230| 
        INC       *-SP[35]              ; |1112| 
        MOV       AH,*-SP[35]           ; |1112| 
        MOV       AL,*-SP[34]           ; |1112| 
        CMP       AL,AH                 ; |1112| 
	.dwpsn	"man.c",1231,0
        BF        L162,GT               ; |1112| 
        ; branchcc occurs ; |1112| 
DW$L$_MANRefCalcs$51$E:
L181:    
        MOVW      DP,#_cppRapidReset
        MOV       AL,@_cppRapidReset    ; |1235| 
        CMPB      AL,#1                 ; |1235| 
        BF        L182,NEQ              ; |1235| 
        ; branchcc occurs ; |1235| 
        MOVW      DP,#_cppRapidReset
        MOVB      ACC,#0
        SETC      SXM
        MOV       @_cppRapidReset,#0    ; |1238| 
        MOVL      XAR4,#_fSpeedCompensated5Total ; |1240| 
        MOVW      DP,#_wSpeedCompensated5Cnt
        MOVL      @_wSpeedCompensated5Cnt,ACC ; |1239| 
        MOV       AL,*-SP[35]           ; |1239| 
        MOV       ACC,AL << 1           ; |1240| 
        ADDL      XAR4,ACC
        MOV       P,#0
        MOVL      *+XAR4[0],P           ; |1240| 
        MOVL      XAR4,#_fSpeedCompensated5Avg ; |1241| 
        ADDL      XAR4,ACC
        MOV       AL,#0
        MOV       AH,#0
        MOVL      *+XAR4[0],ACC         ; |1241| 
L182:    
        MOVB      AL,#1                 ; |1246| 
        MOV       PH,#4660
        MOV       PL,#22136
        MOVZ      AR4,SP                ; |1246| 
        MOVB      XAR5,#2               ; |1246| 
        MOV       AH,#10848             ; |1246| 
        MOVL      *-SP[4],P             ; |1245| 
        SUBB      XAR4,#4               ; |1246| 
        LCR       #_WriteNVMemory       ; |1246| 
        ; call occurs [#_WriteNVMemory] ; |1246| 
        MOV       AL,*-SP[34]           ; |1246| 
        LCR       #_CylinderSum         ; |1249| 
        ; call occurs [#_CylinderSum] ; |1249| 
        MOV       AL,*-SP[34]           ; |1249| 
        LCR       #_MBNeighbourSum      ; |1252| 
        ; call occurs [#_MBNeighbourSum] ; |1252| 
        SUBB      SP,#42
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"man.c",1253,1
        LRETR
        ; return occurs

DW$339	.dwtag  DW_TAG_loop
	.dwattr DW$339, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L162:1:1473840056")
	.dwattr DW$339, DW_AT_begin_file("man.c")
	.dwattr DW$339, DW_AT_begin_line(0x458)
	.dwattr DW$339, DW_AT_end_line(0x4cf)
DW$340	.dwtag  DW_TAG_loop_range
	.dwattr DW$340, DW_AT_low_pc(DW$L$_MANRefCalcs$13$B)
	.dwattr DW$340, DW_AT_high_pc(DW$L$_MANRefCalcs$13$E)
DW$341	.dwtag  DW_TAG_loop_range
	.dwattr DW$341, DW_AT_low_pc(DW$L$_MANRefCalcs$47$B)
	.dwattr DW$341, DW_AT_high_pc(DW$L$_MANRefCalcs$47$E)
DW$342	.dwtag  DW_TAG_loop_range
	.dwattr DW$342, DW_AT_low_pc(DW$L$_MANRefCalcs$41$B)
	.dwattr DW$342, DW_AT_high_pc(DW$L$_MANRefCalcs$41$E)
DW$343	.dwtag  DW_TAG_loop_range
	.dwattr DW$343, DW_AT_low_pc(DW$L$_MANRefCalcs$42$B)
	.dwattr DW$343, DW_AT_high_pc(DW$L$_MANRefCalcs$42$E)
DW$344	.dwtag  DW_TAG_loop_range
	.dwattr DW$344, DW_AT_low_pc(DW$L$_MANRefCalcs$38$B)
	.dwattr DW$344, DW_AT_high_pc(DW$L$_MANRefCalcs$38$E)
DW$345	.dwtag  DW_TAG_loop_range
	.dwattr DW$345, DW_AT_low_pc(DW$L$_MANRefCalcs$26$B)
	.dwattr DW$345, DW_AT_high_pc(DW$L$_MANRefCalcs$26$E)
DW$346	.dwtag  DW_TAG_loop_range
	.dwattr DW$346, DW_AT_low_pc(DW$L$_MANRefCalcs$27$B)
	.dwattr DW$346, DW_AT_high_pc(DW$L$_MANRefCalcs$27$E)
DW$347	.dwtag  DW_TAG_loop_range
	.dwattr DW$347, DW_AT_low_pc(DW$L$_MANRefCalcs$14$B)
	.dwattr DW$347, DW_AT_high_pc(DW$L$_MANRefCalcs$14$E)
DW$348	.dwtag  DW_TAG_loop_range
	.dwattr DW$348, DW_AT_low_pc(DW$L$_MANRefCalcs$15$B)
	.dwattr DW$348, DW_AT_high_pc(DW$L$_MANRefCalcs$15$E)
DW$349	.dwtag  DW_TAG_loop_range
	.dwattr DW$349, DW_AT_low_pc(DW$L$_MANRefCalcs$16$B)
	.dwattr DW$349, DW_AT_high_pc(DW$L$_MANRefCalcs$16$E)
DW$350	.dwtag  DW_TAG_loop_range
	.dwattr DW$350, DW_AT_low_pc(DW$L$_MANRefCalcs$17$B)
	.dwattr DW$350, DW_AT_high_pc(DW$L$_MANRefCalcs$17$E)
DW$351	.dwtag  DW_TAG_loop_range
	.dwattr DW$351, DW_AT_low_pc(DW$L$_MANRefCalcs$18$B)
	.dwattr DW$351, DW_AT_high_pc(DW$L$_MANRefCalcs$18$E)
DW$352	.dwtag  DW_TAG_loop_range
	.dwattr DW$352, DW_AT_low_pc(DW$L$_MANRefCalcs$19$B)
	.dwattr DW$352, DW_AT_high_pc(DW$L$_MANRefCalcs$19$E)
DW$353	.dwtag  DW_TAG_loop_range
	.dwattr DW$353, DW_AT_low_pc(DW$L$_MANRefCalcs$20$B)
	.dwattr DW$353, DW_AT_high_pc(DW$L$_MANRefCalcs$20$E)
DW$354	.dwtag  DW_TAG_loop_range
	.dwattr DW$354, DW_AT_low_pc(DW$L$_MANRefCalcs$21$B)
	.dwattr DW$354, DW_AT_high_pc(DW$L$_MANRefCalcs$21$E)
DW$355	.dwtag  DW_TAG_loop_range
	.dwattr DW$355, DW_AT_low_pc(DW$L$_MANRefCalcs$22$B)
	.dwattr DW$355, DW_AT_high_pc(DW$L$_MANRefCalcs$22$E)
DW$356	.dwtag  DW_TAG_loop_range
	.dwattr DW$356, DW_AT_low_pc(DW$L$_MANRefCalcs$23$B)
	.dwattr DW$356, DW_AT_high_pc(DW$L$_MANRefCalcs$23$E)
DW$357	.dwtag  DW_TAG_loop_range
	.dwattr DW$357, DW_AT_low_pc(DW$L$_MANRefCalcs$24$B)
	.dwattr DW$357, DW_AT_high_pc(DW$L$_MANRefCalcs$24$E)
DW$358	.dwtag  DW_TAG_loop_range
	.dwattr DW$358, DW_AT_low_pc(DW$L$_MANRefCalcs$25$B)
	.dwattr DW$358, DW_AT_high_pc(DW$L$_MANRefCalcs$25$E)
DW$359	.dwtag  DW_TAG_loop_range
	.dwattr DW$359, DW_AT_low_pc(DW$L$_MANRefCalcs$28$B)
	.dwattr DW$359, DW_AT_high_pc(DW$L$_MANRefCalcs$28$E)
DW$360	.dwtag  DW_TAG_loop_range
	.dwattr DW$360, DW_AT_low_pc(DW$L$_MANRefCalcs$29$B)
	.dwattr DW$360, DW_AT_high_pc(DW$L$_MANRefCalcs$29$E)
DW$361	.dwtag  DW_TAG_loop_range
	.dwattr DW$361, DW_AT_low_pc(DW$L$_MANRefCalcs$30$B)
	.dwattr DW$361, DW_AT_high_pc(DW$L$_MANRefCalcs$30$E)
DW$362	.dwtag  DW_TAG_loop_range
	.dwattr DW$362, DW_AT_low_pc(DW$L$_MANRefCalcs$31$B)
	.dwattr DW$362, DW_AT_high_pc(DW$L$_MANRefCalcs$31$E)
DW$363	.dwtag  DW_TAG_loop_range
	.dwattr DW$363, DW_AT_low_pc(DW$L$_MANRefCalcs$32$B)
	.dwattr DW$363, DW_AT_high_pc(DW$L$_MANRefCalcs$32$E)
DW$364	.dwtag  DW_TAG_loop_range
	.dwattr DW$364, DW_AT_low_pc(DW$L$_MANRefCalcs$33$B)
	.dwattr DW$364, DW_AT_high_pc(DW$L$_MANRefCalcs$33$E)
DW$365	.dwtag  DW_TAG_loop_range
	.dwattr DW$365, DW_AT_low_pc(DW$L$_MANRefCalcs$34$B)
	.dwattr DW$365, DW_AT_high_pc(DW$L$_MANRefCalcs$34$E)
DW$366	.dwtag  DW_TAG_loop_range
	.dwattr DW$366, DW_AT_low_pc(DW$L$_MANRefCalcs$35$B)
	.dwattr DW$366, DW_AT_high_pc(DW$L$_MANRefCalcs$35$E)
DW$367	.dwtag  DW_TAG_loop_range
	.dwattr DW$367, DW_AT_low_pc(DW$L$_MANRefCalcs$36$B)
	.dwattr DW$367, DW_AT_high_pc(DW$L$_MANRefCalcs$36$E)
DW$368	.dwtag  DW_TAG_loop_range
	.dwattr DW$368, DW_AT_low_pc(DW$L$_MANRefCalcs$37$B)
	.dwattr DW$368, DW_AT_high_pc(DW$L$_MANRefCalcs$37$E)
DW$369	.dwtag  DW_TAG_loop_range
	.dwattr DW$369, DW_AT_low_pc(DW$L$_MANRefCalcs$39$B)
	.dwattr DW$369, DW_AT_high_pc(DW$L$_MANRefCalcs$39$E)
DW$370	.dwtag  DW_TAG_loop_range
	.dwattr DW$370, DW_AT_low_pc(DW$L$_MANRefCalcs$40$B)
	.dwattr DW$370, DW_AT_high_pc(DW$L$_MANRefCalcs$40$E)
DW$371	.dwtag  DW_TAG_loop_range
	.dwattr DW$371, DW_AT_low_pc(DW$L$_MANRefCalcs$43$B)
	.dwattr DW$371, DW_AT_high_pc(DW$L$_MANRefCalcs$43$E)
DW$372	.dwtag  DW_TAG_loop_range
	.dwattr DW$372, DW_AT_low_pc(DW$L$_MANRefCalcs$44$B)
	.dwattr DW$372, DW_AT_high_pc(DW$L$_MANRefCalcs$44$E)
DW$373	.dwtag  DW_TAG_loop_range
	.dwattr DW$373, DW_AT_low_pc(DW$L$_MANRefCalcs$45$B)
	.dwattr DW$373, DW_AT_high_pc(DW$L$_MANRefCalcs$45$E)
DW$374	.dwtag  DW_TAG_loop_range
	.dwattr DW$374, DW_AT_low_pc(DW$L$_MANRefCalcs$46$B)
	.dwattr DW$374, DW_AT_high_pc(DW$L$_MANRefCalcs$46$E)
DW$375	.dwtag  DW_TAG_loop_range
	.dwattr DW$375, DW_AT_low_pc(DW$L$_MANRefCalcs$48$B)
	.dwattr DW$375, DW_AT_high_pc(DW$L$_MANRefCalcs$48$E)
DW$376	.dwtag  DW_TAG_loop_range
	.dwattr DW$376, DW_AT_low_pc(DW$L$_MANRefCalcs$49$B)
	.dwattr DW$376, DW_AT_high_pc(DW$L$_MANRefCalcs$49$E)
DW$377	.dwtag  DW_TAG_loop_range
	.dwattr DW$377, DW_AT_low_pc(DW$L$_MANRefCalcs$50$B)
	.dwattr DW$377, DW_AT_high_pc(DW$L$_MANRefCalcs$50$E)
DW$378	.dwtag  DW_TAG_loop_range
	.dwattr DW$378, DW_AT_low_pc(DW$L$_MANRefCalcs$51$B)
	.dwattr DW$378, DW_AT_high_pc(DW$L$_MANRefCalcs$51$E)
	.dwendtag DW$339


DW$379	.dwtag  DW_TAG_loop
	.dwattr DW$379, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L157:1:1473840056")
	.dwattr DW$379, DW_AT_begin_file("man.c")
	.dwattr DW$379, DW_AT_begin_line(0x43f)
	.dwattr DW$379, DW_AT_end_line(0x43f)
DW$380	.dwtag  DW_TAG_loop_range
	.dwattr DW$380, DW_AT_low_pc(DW$L$_MANRefCalcs$4$B)
	.dwattr DW$380, DW_AT_high_pc(DW$L$_MANRefCalcs$4$E)
	.dwendtag DW$379


DW$381	.dwtag  DW_TAG_loop
	.dwattr DW$381, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L155:1:1473840056")
	.dwattr DW$381, DW_AT_begin_file("man.c")
	.dwattr DW$381, DW_AT_begin_line(0x43e)
	.dwattr DW$381, DW_AT_end_line(0x43e)
DW$382	.dwtag  DW_TAG_loop_range
	.dwattr DW$382, DW_AT_low_pc(DW$L$_MANRefCalcs$2$B)
	.dwattr DW$382, DW_AT_high_pc(DW$L$_MANRefCalcs$2$E)
	.dwendtag DW$381

	.dwattr DW$336, DW_AT_end_file("man.c")
	.dwattr DW$336, DW_AT_end_line(0x4e5)
	.dwattr DW$336, DW_AT_end_column(0x01)
	.dwendtag DW$336

	.sect	".text"
	.global	_DynamicAlarmLevel

DW$383	.dwtag  DW_TAG_subprogram, DW_AT_name("DynamicAlarmLevel"), DW_AT_symbol_name("_DynamicAlarmLevel")
	.dwattr DW$383, DW_AT_low_pc(_DynamicAlarmLevel)
	.dwattr DW$383, DW_AT_high_pc(0x00)
	.dwattr DW$383, DW_AT_begin_file("man.c")
	.dwattr DW$383, DW_AT_begin_line(0x4eb)
	.dwattr DW$383, DW_AT_begin_column(0x06)
	.dwattr DW$383, DW_AT_frame_base[DW_OP_breg20 -16]
	.dwattr DW$383, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",1260,1

;***************************************************************
;* FNAME: _DynamicAlarmLevel            FR SIZE:  14           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  6 Auto,  6 SOE     *
;***************************************************************

_DynamicAlarmLevel:
;* AR4   assigned to _rpm
DW$384	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$384, DW_AT_type(*DW$T$10)
	.dwattr DW$384, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _load
DW$385	.dwtag  DW_TAG_formal_parameter, DW_AT_name("load"), DW_AT_symbol_name("_load")
	.dwattr DW$385, DW_AT_type(*DW$T$16)
	.dwattr DW$385, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#8
        MOVW      DP,#_dynalarmlevels+34
        MOVL      *-SP[6],ACC           ; |1260| 
        MOVB      ACC,#1
        ADDL      @_dynalarmlevels+34,ACC ; |1273| 
        MOVW      DP,#_damagemon+3
        MOV       *-SP[3],AR4           ; |1260| 
        MOV       AL,@_damagemon+3      ; |1276| 
        LCR       #U$$TOFS              ; |1276| 
        ; call occurs [#U$$TOFS] ; |1276| 
        MOVL      XAR6,ACC              ; |1276| 
        MOV       AL,#20480
        MOV       AH,#18371
        MOVL      *-SP[2],ACC           ; |1276| 
        MOVL      ACC,XAR6              ; |1276| 
        LCR       #FS$$DIV              ; |1276| 
        ; call occurs [#FS$$DIV] ; |1276| 
        MOVL      XAR1,ACC              ; |1276| 
        MOV       AL,*-SP[3]            ; |1276| 
        LCR       #I$$TOFS              ; |1276| 
        ; call occurs [#I$$TOFS] ; |1276| 
        MOVL      XAR2,ACC              ; |1276| 
        MOVL      *-SP[2],XAR1          ; |1276| 
        MOV       ACC,#32512 << 15
        LCR       #FS$$SUB              ; |1276| 
        ; call occurs [#FS$$SUB] ; |1276| 
        MOVL      *-SP[2],ACC           ; |1276| 
        MOVW      DP,#_dynalarmlevels
        MOVL      ACC,@_dynalarmlevels  ; |1276| 
        LCR       #FS$$MPY              ; |1276| 
        ; call occurs [#FS$$MPY] ; |1276| 
        MOVL      XAR3,ACC              ; |1276| 
        MOVL      *-SP[2],XAR1          ; |1276| 
        MOVL      ACC,XAR2              ; |1276| 
        LCR       #FS$$MPY              ; |1276| 
        ; call occurs [#FS$$MPY] ; |1276| 
        MOVL      *-SP[2],ACC           ; |1276| 
        MOVL      ACC,XAR3              ; |1276| 
        LCR       #FS$$ADD              ; |1276| 
        ; call occurs [#FS$$ADD] ; |1276| 
        MOVL      *-SP[2],ACC           ; |1277| 
        MOVL      XAR1,ACC              ; |1276| 
        MOVL      ACC,XAR2              ; |1277| 
        LCR       #FS$$SUB              ; |1277| 
        ; call occurs [#FS$$SUB] ; |1277| 
        LSL       AH,#1                 ; |1277| 
        LSR       AH,#1                 ; |1277| 
        MOVL      *-SP[8],ACC           ; |1277| 
        MOVW      DP,#_damagemon+13
        MOVL      XAR2,*-SP[8]          ; |1277| 
        MOV       AL,@_damagemon+13     ; |1279| 
        LCR       #U$$TOFS              ; |1279| 
        ; call occurs [#U$$TOFS] ; |1279| 
        MOVL      XAR3,ACC              ; |1279| 
        MOVL      *-SP[2],ACC           ; |1279| 
        MOVL      ACC,XAR2              ; |1279| 
        LCR       #FS$$CMP              ; |1279| 
        ; call occurs [#FS$$CMP] ; |1279| 
        CMPB      AL,#0                 ; |1279| 
        BF        L183,LEQ              ; |1279| 
        ; branchcc occurs ; |1279| 
        MOVL      XAR2,XAR3             ; |1279| 
L183:    
        MOVW      DP,#_dynalarmlevels
        MOVL      ACC,XAR1              ; |1284| 
        MOVL      @_dynalarmlevels,XAR1 ; |1283| 
        LCR       #_FloattoIntRound     ; |1284| 
        ; call occurs [#_FloattoIntRound] ; |1284| 
        MOVW      DP,#_dynalarmlevels+19
        MOV       @_dynalarmlevels+19,AL ; |1284| 
        MOVW      DP,#_dynalarmlevels+16
        MOVL      @_dynalarmlevels+16,XAR2 ; |1285| 
        MOVL      ACC,XAR2              ; |1286| 
        LCR       #_FloattoIntRound     ; |1286| 
        ; call occurs [#_FloattoIntRound] ; |1286| 
        MOVW      DP,#_dynalarmlevels+18
        MOV       @_dynalarmlevels+18,AL ; |1286| 
        MOVW      DP,#_loaddynalarmlevels+34
        MOVB      ACC,#1
        ADDL      @_loaddynalarmlevels+34,ACC ; |1289| 
        MOVW      DP,#_cppsettings+5
        MOV       AL,@_cppsettings+5    ; |1292| 
        LCR       #U$$TOFS              ; |1292| 
        ; call occurs [#U$$TOFS] ; |1292| 
        MOVL      XAR6,ACC              ; |1292| 
        MOV       AL,#0
        MOV       AH,#17096
        MOVL      *-SP[2],ACC           ; |1292| 
        MOVL      ACC,XAR6              ; |1292| 
        LCR       #FS$$DIV              ; |1292| 
        ; call occurs [#FS$$DIV] ; |1292| 
        MOVL      XAR1,ACC              ; |1292| 
        MOVL      *-SP[2],ACC           ; |1292| 
        MOV       ACC,#32512 << 15
        LCR       #FS$$SUB              ; |1292| 
        ; call occurs [#FS$$SUB] ; |1292| 
        MOVW      DP,#_loaddynalarmlevels
        MOVL      *-SP[2],ACC           ; |1292| 
        MOVL      ACC,@_loaddynalarmlevels ; |1292| 
        LCR       #FS$$MPY              ; |1292| 
        ; call occurs [#FS$$MPY] ; |1292| 
        MOVL      XAR3,ACC              ; |1292| 
        MOVL      ACC,*-SP[6]           ; |1292| 
        MOVL      *-SP[2],ACC           ; |1292| 
        MOVL      ACC,XAR1              ; |1292| 
        LCR       #FS$$MPY              ; |1292| 
        ; call occurs [#FS$$MPY] ; |1292| 
        MOVL      *-SP[2],ACC           ; |1292| 
        MOVL      ACC,XAR3              ; |1292| 
        LCR       #FS$$ADD              ; |1292| 
        ; call occurs [#FS$$ADD] ; |1292| 
        MOVL      XAR3,ACC              ; |1292| 
        MOVL      *-SP[2],ACC           ; |1294| 
        MOVL      ACC,*-SP[6]           ; |1294| 
        LCR       #FS$$SUB              ; |1294| 
        ; call occurs [#FS$$SUB] ; |1294| 
        LSL       AH,#1                 ; |1294| 
        LSR       AH,#1                 ; |1294| 
        MOVL      XAR1,ACC              ; |1294| 
        MOV       AL,#0
        MOV       AH,#16704
        MOVL      *-SP[2],ACC           ; |1295| 
        MOVL      ACC,XAR1              ; |1295| 
        LCR       #FS$$CMP              ; |1295| 
        ; call occurs [#FS$$CMP] ; |1295| 
        CMPB      AL,#0                 ; |1295| 
        BF        L184,GT               ; |1295| 
        ; branchcc occurs ; |1295| 
        MOV       ACC,#32256 << 15
        MOVL      *-SP[2],ACC           ; |1296| 
        MOVL      ACC,XAR1              ; |1296| 
        LCR       #FS$$CMP              ; |1296| 
        ; call occurs [#FS$$CMP] ; |1296| 
        CMPB      AL,#0                 ; |1296| 
        BF        L186,GEQ              ; |1296| 
        ; branchcc occurs ; |1296| 
        MOV       AH,#0
        BF        L185,UNC              ; |1296| 
        ; branch occurs ; |1296| 
L184:    
        MOV       AH,#16704
L185:    
        MOV       AL,#0
        MOVL      XAR1,ACC              ; |1295| 
L186:    
        MOVW      DP,#_loaddynalarmlevels
        MOVL      ACC,XAR3              ; |1303| 
        MOVL      @_loaddynalarmlevels,XAR3 ; |1302| 
        LCR       #_FloattoIntRound     ; |1303| 
        ; call occurs [#_FloattoIntRound] ; |1303| 
        MOVW      DP,#_loaddynalarmlevels+19
        MOV       @_loaddynalarmlevels+19,AL ; |1303| 
        MOVW      DP,#_loaddynalarmlevels+16
        MOVL      @_loaddynalarmlevels+16,XAR1 ; |1304| 
        MOVL      ACC,XAR1              ; |1304| 
        LCR       #_FloattoIntRound     ; |1305| 
        ; call occurs [#_FloattoIntRound] ; |1305| 
        MOVW      DP,#_loaddynalarmlevels+18
        MOV       @_loaddynalarmlevels+18,AL ; |1305| 
        MOV       AL,#0
        MOV       AH,#16752
        MOVL      *-SP[2],ACC           ; |1311| 
        MOVL      ACC,*-SP[8]           ; |1311| 
        LCR       #FS$$CMP              ; |1311| 
        ; call occurs [#FS$$CMP] ; |1311| 
        CMPB      AL,#0                 ; |1311| 
        BF        L191,GT               ; |1311| 
        ; branchcc occurs ; |1311| 
        MOVW      DP,#_iDeltaRPM15
        MOV       @_iDeltaRPM15,#0      ; |1322| 
        MOVW      DP,#_timers+74
        MOVL      ACC,@_timers+74       ; |1323| 
        BF        L193,NEQ              ; |1323| 
        ; branchcc occurs ; |1323| 
        MOVW      DP,#_iDmPause
        MOV       @_iDmPause,#0         ; |1325| 
        MOVW      DP,#_damagemon+6
        MOVZ      AR4,@_damagemon+6     ; |1328| 
        MOVL      ACC,XAR2              ; |1328| 
        LCR       #_CalcAlarmLevel1     ; |1328| 
        ; call occurs [#_CalcAlarmLevel1] ; |1328| 
        MOVW      DP,#_dynalarmlevels+2
        MOVL      @_dynalarmlevels+2,ACC ; |1328| 
        LCR       #_FloattoIntRound     ; |1329| 
        ; call occurs [#_FloattoIntRound] ; |1329| 
        MOVW      DP,#_dynalarmlevels+27
        MOV       @_dynalarmlevels+27,AL ; |1329| 
        MOVW      DP,#_damagemon+7
        MOVZ      AR4,@_damagemon+7     ; |1330| 
        MOVL      ACC,XAR2              ; |1330| 
        LCR       #_CalcAlarmLevel1     ; |1330| 
        ; call occurs [#_CalcAlarmLevel1] ; |1330| 
        MOVW      DP,#_dynalarmlevels+4
        MOVL      @_dynalarmlevels+4,ACC ; |1330| 
        LCR       #_FloattoIntRound     ; |1331| 
        ; call occurs [#_FloattoIntRound] ; |1331| 
        MOVW      DP,#_dynalarmlevels+28
        MOV       @_dynalarmlevels+28,AL ; |1331| 
        MOVW      DP,#_damagemon+8
        MOVZ      AR4,@_damagemon+8     ; |1332| 
        MOVL      ACC,XAR2              ; |1332| 
        LCR       #_CalcAlarmLevel1     ; |1332| 
        ; call occurs [#_CalcAlarmLevel1] ; |1332| 
        MOVW      DP,#_dynalarmlevels+6
        MOVL      @_dynalarmlevels+6,ACC ; |1332| 
        MOVW      DP,#_dynalarmlevels+23
        MOV       AL,@_dynalarmlevels+23 ; |1333| 
        LCR       #_FloattoIntRound     ; |1333| 
        ; call occurs [#_FloattoIntRound] ; |1333| 
        MOVW      DP,#_dynalarmlevels+29
        MOV       @_dynalarmlevels+29,AL ; |1333| 
        MOVW      DP,#_damagemon+6
        MOVZ      AR4,@_damagemon+6     ; |1334| 
        MOVW      DP,#_dynalarmlevels+14
        MOVL      ACC,@_dynalarmlevels+14 ; |1334| 
        LCR       #_CalcAlarmLevel2     ; |1334| 
        ; call occurs [#_CalcAlarmLevel2] ; |1334| 
        MOVW      DP,#_dynalarmlevels+8
        MOVL      @_dynalarmlevels+8,ACC ; |1334| 
        LCR       #_FloattoIntRound     ; |1335| 
        ; call occurs [#_FloattoIntRound] ; |1335| 
        MOVW      DP,#_dynalarmlevels+30
        MOV       @_dynalarmlevels+30,AL ; |1335| 
        MOVW      DP,#_damagemon+7
        MOVZ      AR4,@_damagemon+7     ; |1336| 
        MOVW      DP,#_dynalarmlevels+14
        MOVL      ACC,@_dynalarmlevels+14 ; |1336| 
        LCR       #_CalcAlarmLevel2     ; |1336| 
        ; call occurs [#_CalcAlarmLevel2] ; |1336| 
        MOVW      DP,#_dynalarmlevels+10
        MOVL      @_dynalarmlevels+10,ACC ; |1336| 
        LCR       #_FloattoIntRound     ; |1337| 
        ; call occurs [#_FloattoIntRound] ; |1337| 
        MOVW      DP,#_dynalarmlevels+31
        MOV       @_dynalarmlevels+31,AL ; |1337| 
        MOVW      DP,#_damagemon+8
        MOVZ      AR4,@_damagemon+8     ; |1338| 
        MOVW      DP,#_dynalarmlevels+14
        MOVL      ACC,@_dynalarmlevels+14 ; |1338| 
        LCR       #_CalcAlarmLevel2     ; |1338| 
        ; call occurs [#_CalcAlarmLevel2] ; |1338| 
        MOVW      DP,#_dynalarmlevels+12
        MOVL      @_dynalarmlevels+12,ACC ; |1338| 
        LCR       #_FloattoIntRound     ; |1339| 
        ; call occurs [#_FloattoIntRound] ; |1339| 
        MOVW      DP,#_dynalarmlevels+32
        MOV       @_dynalarmlevels+32,AL ; |1339| 
        MOVW      DP,#_dynalarmlevels+8
        MOVL      ACC,@_dynalarmlevels+8 ; |1344| 
        LSL       AH,#1                 ; |1344| 
        LSR       AH,#1                 ; |1344| 
        MOVW      DP,#_dynalarmlevels+2
        MOVL      *-SP[2],ACC           ; |1344| 
        MOVL      ACC,@_dynalarmlevels+2 ; |1344| 
        LSL       AH,#1                 ; |1344| 
        LSR       AH,#1                 ; |1344| 
        LCR       #FS$$CMP              ; |1344| 
        ; call occurs [#FS$$CMP] ; |1344| 
        CMPB      AL,#0                 ; |1344| 
        BF        L187,LEQ              ; |1344| 
        ; branchcc occurs ; |1344| 
        MOVB      ACC,#0
        MOVW      DP,#_dynalarmlevels+34
        MOVL      @_dynalarmlevels+34,ACC ; |1346| 
        MOVW      DP,#_dynalarmlevels+21
        MOV       AL,@_dynalarmlevels+21 ; |1347| 
        MOVW      DP,#_dynalarmlevels+24
        MOV       @_dynalarmlevels+24,AL ; |1347| 
        MOVW      DP,#_dynalarmlevels+22
        MOV       AL,@_dynalarmlevels+22 ; |1348| 
        MOVW      DP,#_dynalarmlevels+25
        MOV       @_dynalarmlevels+25,AL ; |1348| 
        MOVW      DP,#_dynalarmlevels+23
        MOV       AL,@_dynalarmlevels+23 ; |1349| 
        MOVW      DP,#_dynalarmlevels+26
        MOV       @_dynalarmlevels+26,AL ; |1349| 
        MOVW      DP,#_dynalarmlevels+14
        MOVL      @_dynalarmlevels+14,XAR2 ; |1350| 
        MOVW      DP,#_dynalarmlevels+14
        MOVL      ACC,@_dynalarmlevels+14 ; |1351| 
        LCR       #_FloattoIntRound     ; |1351| 
        ; call occurs [#_FloattoIntRound] ; |1351| 
        MOVW      DP,#_dynalarmlevels+20
        MOV       @_dynalarmlevels+20,AL ; |1351| 
L187:    
        MOVW      DP,#_dynalarmlevels+8
        MOVL      ACC,@_dynalarmlevels+8 ; |1355| 
        MOVW      DP,#_dynalarmlevels+2
        MOVL      *-SP[2],ACC           ; |1355| 
        MOVL      ACC,@_dynalarmlevels+2 ; |1355| 
        LCR       #_FindMaxRPMAlarm     ; |1355| 
        ; call occurs [#_FindMaxRPMAlarm] ; |1355| 
        MOVW      DP,#_dynalarmlevels+21
        MOV       @_dynalarmlevels+21,AL ; |1355| 
        MOVW      DP,#_dynalarmlevels+10
        MOVL      ACC,@_dynalarmlevels+10 ; |1356| 
        MOVW      DP,#_dynalarmlevels+4
        MOVL      *-SP[2],ACC           ; |1356| 
        MOVL      ACC,@_dynalarmlevels+4 ; |1356| 
        LCR       #_FindMaxRPMAlarm     ; |1356| 
        ; call occurs [#_FindMaxRPMAlarm] ; |1356| 
        MOVW      DP,#_dynalarmlevels+22
        MOV       @_dynalarmlevels+22,AL ; |1356| 
        MOVW      DP,#_dynalarmlevels+12
        MOVL      ACC,@_dynalarmlevels+12 ; |1357| 
        MOVW      DP,#_dynalarmlevels+6
        MOVL      *-SP[2],ACC           ; |1357| 
        MOVL      ACC,@_dynalarmlevels+6 ; |1357| 
        LCR       #_FindMaxRPMAlarm     ; |1357| 
        ; call occurs [#_FindMaxRPMAlarm] ; |1357| 
        MOVW      DP,#_dynalarmlevels+23
        MOV       @_dynalarmlevels+23,AL ; |1357| 
        MOVW      DP,#_cppsettings
        MOV       AL,@_cppsettings      ; |1361| 
        BF        L193,EQ               ; |1361| 
        ; branchcc occurs ; |1361| 
        MOVW      DP,#_damagemon+6
        MOVZ      AR4,@_damagemon+6     ; |1364| 
        MOVL      ACC,XAR1              ; |1364| 
        LCR       #_CalcAlarmLevel3     ; |1364| 
        ; call occurs [#_CalcAlarmLevel3] ; |1364| 
        MOVW      DP,#_loaddynalarmlevels+2
        MOVL      @_loaddynalarmlevels+2,ACC ; |1364| 
        LCR       #_FloattoIntRound     ; |1365| 
        ; call occurs [#_FloattoIntRound] ; |1365| 
        MOVW      DP,#_loaddynalarmlevels+27
        MOV       @_loaddynalarmlevels+27,AL ; |1365| 
        MOVW      DP,#_damagemon+7
        MOVZ      AR4,@_damagemon+7     ; |1366| 
        MOVL      ACC,XAR1              ; |1366| 
        LCR       #_CalcAlarmLevel3     ; |1366| 
        ; call occurs [#_CalcAlarmLevel3] ; |1366| 
        MOVW      DP,#_loaddynalarmlevels+4
        MOVL      @_loaddynalarmlevels+4,ACC ; |1366| 
        LCR       #_FloattoIntRound     ; |1367| 
        ; call occurs [#_FloattoIntRound] ; |1367| 
        MOVW      DP,#_loaddynalarmlevels+28
        MOV       @_loaddynalarmlevels+28,AL ; |1367| 
        MOVW      DP,#_damagemon+8
        MOVZ      AR4,@_damagemon+8     ; |1368| 
        MOVL      ACC,XAR1              ; |1368| 
        LCR       #_CalcAlarmLevel3     ; |1368| 
        ; call occurs [#_CalcAlarmLevel3] ; |1368| 
        MOVW      DP,#_loaddynalarmlevels+6
        MOVL      @_loaddynalarmlevels+6,ACC ; |1368| 
        MOVW      DP,#_loaddynalarmlevels+23
        MOV       AL,@_loaddynalarmlevels+23 ; |1369| 
        LCR       #_FloattoIntRound     ; |1369| 
        ; call occurs [#_FloattoIntRound] ; |1369| 
        MOVW      DP,#_loaddynalarmlevels+29
        MOV       @_loaddynalarmlevels+29,AL ; |1369| 
        MOVW      DP,#_damagemon+6
        MOVZ      AR4,@_damagemon+6     ; |1370| 
        MOVW      DP,#_loaddynalarmlevels+14
        MOVL      ACC,@_loaddynalarmlevels+14 ; |1370| 
        LCR       #_CalcAlarmLevel4     ; |1370| 
        ; call occurs [#_CalcAlarmLevel4] ; |1370| 
        MOVW      DP,#_loaddynalarmlevels+8
        MOVL      @_loaddynalarmlevels+8,ACC ; |1370| 
        LCR       #_FloattoIntRound     ; |1371| 
        ; call occurs [#_FloattoIntRound] ; |1371| 
        MOVW      DP,#_loaddynalarmlevels+30
        MOV       @_loaddynalarmlevels+30,AL ; |1371| 
        MOVW      DP,#_damagemon+7
        MOVZ      AR4,@_damagemon+7     ; |1372| 
        MOVW      DP,#_loaddynalarmlevels+14
        MOVL      ACC,@_loaddynalarmlevels+14 ; |1372| 
        LCR       #_CalcAlarmLevel4     ; |1372| 
        ; call occurs [#_CalcAlarmLevel4] ; |1372| 
        MOVW      DP,#_loaddynalarmlevels+10
        MOVL      @_loaddynalarmlevels+10,ACC ; |1372| 
        LCR       #_FloattoIntRound     ; |1373| 
        ; call occurs [#_FloattoIntRound] ; |1373| 
        MOVW      DP,#_loaddynalarmlevels+31
        MOV       @_loaddynalarmlevels+31,AL ; |1373| 
        MOVW      DP,#_damagemon+8
        MOVZ      AR4,@_damagemon+8     ; |1374| 
        MOVW      DP,#_loaddynalarmlevels+14
        MOVL      ACC,@_loaddynalarmlevels+14 ; |1374| 
        LCR       #_CalcAlarmLevel4     ; |1374| 
        ; call occurs [#_CalcAlarmLevel4] ; |1374| 
        MOVW      DP,#_loaddynalarmlevels+12
        MOVL      @_loaddynalarmlevels+12,ACC ; |1374| 
        LCR       #_FloattoIntRound     ; |1375| 
        ; call occurs [#_FloattoIntRound] ; |1375| 
        MOVW      DP,#_loaddynalarmlevels+32
        MOV       @_loaddynalarmlevels+32,AL ; |1375| 
        MOVW      DP,#_loaddynalarmlevels+8
        MOVL      ACC,@_loaddynalarmlevels+8 ; |1380| 
        LSL       AH,#1                 ; |1380| 
        LSR       AH,#1                 ; |1380| 
        MOVW      DP,#_loaddynalarmlevels+2
        MOVL      *-SP[2],ACC           ; |1380| 
        MOVL      ACC,@_loaddynalarmlevels+2 ; |1380| 
        LSL       AH,#1                 ; |1380| 
        LSR       AH,#1                 ; |1380| 
        LCR       #FS$$CMP              ; |1380| 
        ; call occurs [#FS$$CMP] ; |1380| 
        CMPB      AL,#0                 ; |1380| 
        BF        L188,LEQ              ; |1380| 
        ; branchcc occurs ; |1380| 
        MOVB      ACC,#0
        MOVW      DP,#_loaddynalarmlevels+34
        MOVL      @_loaddynalarmlevels+34,ACC ; |1382| 
        MOVW      DP,#_loaddynalarmlevels+21
        MOV       AL,@_loaddynalarmlevels+21 ; |1383| 
        MOVW      DP,#_loaddynalarmlevels+24
        MOV       @_loaddynalarmlevels+24,AL ; |1383| 
        MOVW      DP,#_loaddynalarmlevels+22
        MOV       AL,@_loaddynalarmlevels+22 ; |1384| 
        MOVW      DP,#_loaddynalarmlevels+25
        MOV       @_loaddynalarmlevels+25,AL ; |1384| 
        MOVW      DP,#_loaddynalarmlevels+23
        MOV       AL,@_loaddynalarmlevels+23 ; |1385| 
        MOVW      DP,#_loaddynalarmlevels+26
        MOV       @_loaddynalarmlevels+26,AL ; |1385| 
        MOVW      DP,#_loaddynalarmlevels+14
        MOVL      @_loaddynalarmlevels+14,XAR1 ; |1386| 
        MOVW      DP,#_loaddynalarmlevels+14
        MOVL      ACC,@_loaddynalarmlevels+14 ; |1387| 
        LCR       #_FloattoIntRound     ; |1387| 
        ; call occurs [#_FloattoIntRound] ; |1387| 
        MOVW      DP,#_loaddynalarmlevels+20
        MOV       @_loaddynalarmlevels+20,AL ; |1387| 
L188:    
        MOVW      DP,#_loaddynalarmlevels+8
        MOVL      ACC,@_loaddynalarmlevels+8 ; |1391| 
        MOVW      DP,#_loaddynalarmlevels+2
        MOVL      *-SP[2],ACC           ; |1391| 
        MOVL      ACC,@_loaddynalarmlevels+2 ; |1391| 
        LCR       #_FindMaxRPMAlarm     ; |1391| 
        ; call occurs [#_FindMaxRPMAlarm] ; |1391| 
        MOVW      DP,#_loaddynalarmlevels+21
        MOV       @_loaddynalarmlevels+21,AL ; |1391| 
        MOVW      DP,#_loaddynalarmlevels+10
        MOVL      ACC,@_loaddynalarmlevels+10 ; |1392| 
        MOVW      DP,#_loaddynalarmlevels+4
        MOVL      *-SP[2],ACC           ; |1392| 
        MOVL      ACC,@_loaddynalarmlevels+4 ; |1392| 
        LCR       #_FindMaxRPMAlarm     ; |1392| 
        ; call occurs [#_FindMaxRPMAlarm] ; |1392| 
        MOVW      DP,#_loaddynalarmlevels+22
        MOV       @_loaddynalarmlevels+22,AL ; |1392| 
        MOVW      DP,#_loaddynalarmlevels+12
        MOVL      ACC,@_loaddynalarmlevels+12 ; |1393| 
        MOVW      DP,#_loaddynalarmlevels+6
        MOVL      *-SP[2],ACC           ; |1393| 
        MOVL      ACC,@_loaddynalarmlevels+6 ; |1393| 
        LCR       #_FindMaxRPMAlarm     ; |1393| 
        ; call occurs [#_FindMaxRPMAlarm] ; |1393| 
        MOVW      DP,#_loaddynalarmlevels+23
        MOV       @_loaddynalarmlevels+23,AL ; |1393| 
        MOVW      DP,#_dynalarmlevels+21
        MOV       AL,@_dynalarmlevels+21 ; |1398| 
        LCR       #I$$TOFS              ; |1398| 
        ; call occurs [#I$$TOFS] ; |1398| 
        MOVW      DP,#_loaddynalarmlevels+21
        MOVL      XAR1,ACC              ; |1398| 
        MOV       AL,@_loaddynalarmlevels+21 ; |1398| 
        LCR       #I$$TOFS              ; |1398| 
        ; call occurs [#I$$TOFS] ; |1398| 
        MOVL      *-SP[2],ACC           ; |1398| 
        MOVL      ACC,XAR1              ; |1398| 
        LCR       #_FindMaxRPMAlarm     ; |1398| 
        ; call occurs [#_FindMaxRPMAlarm] ; |1398| 
        MOVW      DP,#_dynalarmlevels+21
        MOV       @_dynalarmlevels+21,AL ; |1398| 
        MOVW      DP,#_dynalarmlevels+22
        MOV       AL,@_dynalarmlevels+22 ; |1399| 
        LCR       #I$$TOFS              ; |1399| 
        ; call occurs [#I$$TOFS] ; |1399| 
        MOVW      DP,#_loaddynalarmlevels+22
        MOVL      XAR1,ACC              ; |1399| 
        MOV       AL,@_loaddynalarmlevels+22 ; |1399| 
        LCR       #I$$TOFS              ; |1399| 
        ; call occurs [#I$$TOFS] ; |1399| 
        MOVL      *-SP[2],ACC           ; |1399| 
        MOVL      ACC,XAR1              ; |1399| 
        LCR       #_FindMaxRPMAlarm     ; |1399| 
        ; call occurs [#_FindMaxRPMAlarm] ; |1399| 
        MOVW      DP,#_dynalarmlevels+22
        MOV       @_dynalarmlevels+22,AL ; |1399| 
        MOVW      DP,#_dynalarmlevels+23
        MOV       AL,@_dynalarmlevels+23 ; |1400| 
        LCR       #I$$TOFS              ; |1400| 
        ; call occurs [#I$$TOFS] ; |1400| 
        MOVW      DP,#_loaddynalarmlevels+23
        MOVL      XAR1,ACC              ; |1400| 
        MOV       AL,@_loaddynalarmlevels+23 ; |1400| 
        LCR       #I$$TOFS              ; |1400| 
        ; call occurs [#I$$TOFS] ; |1400| 
        MOVL      *-SP[2],ACC           ; |1400| 
        MOVL      ACC,XAR1              ; |1400| 
        LCR       #_FindMaxRPMAlarm     ; |1400| 
        ; call occurs [#_FindMaxRPMAlarm] ; |1400| 
        MOVW      DP,#_dynalarmlevels+23
        MOV       @_dynalarmlevels+23,AL ; |1400| 
        MOVW      DP,#_loaddynalarmlevels+18
        MOV       AL,@_loaddynalarmlevels+18 ; |1403| 
        CMPB      AL,#8                 ; |1403| 
        BF        L189,GEQ              ; |1403| 
        ; branchcc occurs ; |1403| 
        MOVW      DP,#_delatloadgreater7
        MOV       AL,@_delatloadgreater7 ; |1405| 
        CMPB      AL,#1                 ; |1405| 
        BF        L190,EQ               ; |1405| 
        ; branchcc occurs ; |1405| 
        BF        L193,UNC              ; |1405| 
        ; branch occurs ; |1405| 
L189:    
        MOVB      AL,#1                 ; |1403| 
        MOVW      DP,#_delatloadgreater7
        MOV       @_delatloadgreater7,AL ; |1403| 
        MOVW      DP,#_iDmPause
        MOV       @_iDmPause,AL         ; |1403| 
L190:    
        MOVW      DP,#_loaddynalarmlevels+18
        MOV       AL,@_loaddynalarmlevels+18 ; |1405| 
        CMPB      AL,#4                 ; |1405| 
        BF        L193,GEQ              ; |1405| 
        ; branchcc occurs ; |1405| 
        MOVW      DP,#_delatloadgreater7
        MOV       @_delatloadgreater7,#0 ; |1407| 
        MOVW      DP,#_cppRapidReset
        MOV       @_cppRapidReset,#1    ; |1408| 
        MOVW      DP,#_iDmPause
        MOV       @_iDmPause,#0         ; |1409| 
        BF        L193,UNC              ; |1409| 
        ; branch occurs ; |1409| 
L191:    
        MOVB      AL,#1                 ; |1313| 
        MOVW      DP,#_iDmPause
        MOV       @_iDmPause,AL         ; |1313| 
        MOVW      DP,#_iDeltaRPM15
        MOV       @_iDeltaRPM15,AL      ; |1314| 
        MOV       AL,*-SP[3]            ; |1314| 
        CMPB      AL,#2                 ; |1316| 
        BF        L192,GEQ              ; |1316| 
        ; branchcc occurs ; |1316| 
        MOVL      XAR4,#24000           ; |1317| 
        MOVW      DP,#_timers+74
        MOVL      @_timers+74,XAR4      ; |1317| 
        BF        L193,UNC              ; |1317| 
        ; branch occurs ; |1317| 
L192:    
        SETC      SXM
        MOV       ACC,AL                ; |1316| 
        MOVW      DP,#_cppsettings+6
        MOVL      XAR6,ACC              ; |1316| 
        MOV       T,#12000              ; |1316| 
        MPYXU     P,T,@_cppsettings+6   ; |1316| 
        MOVB      ACC,#0
        RPT       #31
||     SUBCUL    ACC,XAR6              ; |1316| 
        MOVW      DP,#_timers+74
        MOVL      @_timers+74,P         ; |1316| 
L193:    
        SUBB      SP,#8
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"man.c",1416,1
        LRETR
        ; return occurs
	.dwattr DW$383, DW_AT_end_file("man.c")
	.dwattr DW$383, DW_AT_end_line(0x588)
	.dwattr DW$383, DW_AT_end_column(0x01)
	.dwendtag DW$383

	.sect	".text"
	.global	_CalcAlarmLevel1

DW$386	.dwtag  DW_TAG_subprogram, DW_AT_name("CalcAlarmLevel1"), DW_AT_symbol_name("_CalcAlarmLevel1")
	.dwattr DW$386, DW_AT_low_pc(_CalcAlarmLevel1)
	.dwattr DW$386, DW_AT_high_pc(0x00)
	.dwattr DW$386, DW_AT_begin_file("man.c")
	.dwattr DW$386, DW_AT_begin_line(0x58d)
	.dwattr DW$386, DW_AT_begin_column(0x07)
	.dwattr DW$386, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$386, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",1422,1

;***************************************************************
;* FNAME: _CalcAlarmLevel1              FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_CalcAlarmLevel1:
;* AR4   assigned to _level
DW$387	.dwtag  DW_TAG_formal_parameter, DW_AT_name("level"), DW_AT_symbol_name("_level")
	.dwattr DW$387, DW_AT_type(*DW$T$10)
	.dwattr DW$387, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _deltarpm
DW$388	.dwtag  DW_TAG_formal_parameter, DW_AT_name("deltarpm"), DW_AT_symbol_name("_deltarpm")
	.dwattr DW$388, DW_AT_type(*DW$T$16)
	.dwattr DW$388, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      XAR1,ACC              ; |1422| 
        ADDB      SP,#2
        MOV       AL,AR4                ; |1422| 
        LCR       #I$$TOFS              ; |1428| 
        ; call occurs [#I$$TOFS] ; |1428| 
        MOVW      DP,#_damagemon+1
        MOVL      XAR2,ACC              ; |1428| 
        MOV       AL,@_damagemon+1      ; |1428| 
        LCR       #U$$TOFS              ; |1428| 
        ; call occurs [#U$$TOFS] ; |1428| 
        MOVL      XAR6,ACC              ; |1428| 
        MOV       AL,#20480
        MOV       AH,#18371
        MOVL      *-SP[2],ACC           ; |1428| 
        MOVL      ACC,XAR6              ; |1428| 
        LCR       #FS$$DIV              ; |1428| 
        ; call occurs [#FS$$DIV] ; |1428| 
        MOVL      *-SP[2],XAR1          ; |1428| 
        LCR       #FS$$MPY              ; |1428| 
        ; call occurs [#FS$$MPY] ; |1428| 
        MOVL      XAR6,ACC              ; |1428| 
        MOV       ACC,#32512 << 15
        MOVL      *-SP[2],ACC           ; |1428| 
        MOVL      ACC,XAR6              ; |1428| 
        LCR       #FS$$ADD              ; |1428| 
        ; call occurs [#FS$$ADD] ; |1428| 
        MOVL      *-SP[2],ACC           ; |1428| 
        MOVL      ACC,XAR2              ; |1428| 
        LCR       #FS$$MPY              ; |1428| 
        ; call occurs [#FS$$MPY] ; |1428| 
        SUBB      SP,#2                 ; |1428| 
        MOVL      XAR2,*--SP            ; |1428| 
        MOVL      XAR1,*--SP            ; |1428| 
	.dwpsn	"man.c",1430,1
        LRETR
        ; return occurs
	.dwattr DW$386, DW_AT_end_file("man.c")
	.dwattr DW$386, DW_AT_end_line(0x596)
	.dwattr DW$386, DW_AT_end_column(0x01)
	.dwendtag DW$386

	.sect	".text"
	.global	_CalcAlarmLevel2

DW$389	.dwtag  DW_TAG_subprogram, DW_AT_name("CalcAlarmLevel2"), DW_AT_symbol_name("_CalcAlarmLevel2")
	.dwattr DW$389, DW_AT_low_pc(_CalcAlarmLevel2)
	.dwattr DW$389, DW_AT_high_pc(0x00)
	.dwattr DW$389, DW_AT_begin_file("man.c")
	.dwattr DW$389, DW_AT_begin_line(0x59b)
	.dwattr DW$389, DW_AT_begin_column(0x07)
	.dwattr DW$389, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$389, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",1436,1

;***************************************************************
;* FNAME: _CalcAlarmLevel2              FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_CalcAlarmLevel2:
;* AR4   assigned to _level
DW$390	.dwtag  DW_TAG_formal_parameter, DW_AT_name("level"), DW_AT_symbol_name("_level")
	.dwattr DW$390, DW_AT_type(*DW$T$10)
	.dwattr DW$390, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _deltarpm
DW$391	.dwtag  DW_TAG_formal_parameter, DW_AT_name("deltarpm"), DW_AT_symbol_name("_deltarpm")
	.dwattr DW$391, DW_AT_type(*DW$T$16)
	.dwattr DW$391, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVW      DP,#_damagemon+1
        MOVL      *SP++,XAR2
        MOVZ      AR1,AR4               ; |1436| 
        MOVL      *SP++,XAR3
        MOVL      XAR3,ACC              ; |1436| 
        ADDB      SP,#2
        MOV       AL,@_damagemon+1      ; |1441| 
        LCR       #U$$TOFS              ; |1441| 
        ; call occurs [#U$$TOFS] ; |1441| 
        MOVL      XAR6,ACC              ; |1441| 
        MOV       AL,#20480
        MOV       AH,#18371
        MOVL      *-SP[2],ACC           ; |1441| 
        MOVL      ACC,XAR6              ; |1441| 
        LCR       #FS$$DIV              ; |1441| 
        ; call occurs [#FS$$DIV] ; |1441| 
        MOVL      XAR2,ACC              ; |1441| 
        MOV       AL,AR1                ; |1444| 
        LCR       #I$$TOFS              ; |1444| 
        ; call occurs [#I$$TOFS] ; |1444| 
        MOVL      XAR1,ACC              ; |1444| 
        MOVL      *-SP[2],XAR2          ; |1444| 
        MOVL      ACC,XAR3              ; |1444| 
        LCR       #FS$$MPY              ; |1444| 
        ; call occurs [#FS$$MPY] ; |1444| 
        MOVL      XAR2,ACC              ; |1444| 
        MOVW      DP,#_dynalarmlevels+34
        MOVL      ACC,@_dynalarmlevels+34 ; |1444| 
        LCR       #UL$$TOFS             ; |1444| 
        ; call occurs [#UL$$TOFS] ; |1444| 
        MOVW      DP,#_damagemon+2
        MOVL      XAR3,ACC              ; |1444| 
        MOV       AL,@_damagemon+2      ; |1444| 
        LCR       #U$$TOFS              ; |1444| 
        ; call occurs [#U$$TOFS] ; |1444| 
        MOVL      *-SP[2],ACC           ; |1444| 
        MOVL      ACC,XAR3              ; |1444| 
        LCR       #FS$$DIV              ; |1444| 
        ; call occurs [#FS$$DIV] ; |1444| 
        LCR       #FS$$NEG              ; |1444| 
        ; call occurs [#FS$$NEG] ; |1444| 
        LCR       #_exp                 ; |1444| 
        ; call occurs [#_exp] ; |1444| 
        MOVL      *-SP[2],ACC           ; |1444| 
        MOVL      ACC,XAR2              ; |1444| 
        LCR       #FS$$MPY              ; |1444| 
        ; call occurs [#FS$$MPY] ; |1444| 
        MOVL      XAR6,ACC              ; |1444| 
        MOV       ACC,#32512 << 15
        MOVL      *-SP[2],ACC           ; |1444| 
        MOVL      ACC,XAR6              ; |1444| 
        LCR       #FS$$ADD              ; |1444| 
        ; call occurs [#FS$$ADD] ; |1444| 
        MOVL      *-SP[2],ACC           ; |1444| 
        MOVL      ACC,XAR1              ; |1444| 
        LCR       #FS$$MPY              ; |1444| 
        ; call occurs [#FS$$MPY] ; |1444| 
        SUBB      SP,#2                 ; |1445| 
        MOVL      XAR3,*--SP            ; |1445| 
        MOVL      XAR2,*--SP            ; |1445| 
        MOVL      XAR1,*--SP            ; |1445| 
	.dwpsn	"man.c",1447,1
        LRETR
        ; return occurs
	.dwattr DW$389, DW_AT_end_file("man.c")
	.dwattr DW$389, DW_AT_end_line(0x5a7)
	.dwattr DW$389, DW_AT_end_column(0x01)
	.dwendtag DW$389

	.sect	".text"
	.global	_FindMaxRPMAlarm

DW$392	.dwtag  DW_TAG_subprogram, DW_AT_name("FindMaxRPMAlarm"), DW_AT_symbol_name("_FindMaxRPMAlarm")
	.dwattr DW$392, DW_AT_low_pc(_FindMaxRPMAlarm)
	.dwattr DW$392, DW_AT_high_pc(0x00)
	.dwattr DW$392, DW_AT_begin_file("man.c")
	.dwattr DW$392, DW_AT_begin_line(0x5ac)
	.dwattr DW$392, DW_AT_begin_column(0x05)
	.dwattr DW$392, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$392, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",1453,1

;***************************************************************
;* FNAME: _FindMaxRPMAlarm              FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_FindMaxRPMAlarm:
;* AL    assigned to _val1
DW$393	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val1"), DW_AT_symbol_name("_val1")
	.dwattr DW$393, DW_AT_type(*DW$T$16)
	.dwattr DW$393, DW_AT_location[DW_OP_reg0]
DW$394	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val2"), DW_AT_symbol_name("_val2")
	.dwattr DW$394, DW_AT_type(*DW$T$16)
	.dwattr DW$394, DW_AT_location[DW_OP_breg20 -10]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        ADDB      SP,#2
        MOVL      XAR2,*-SP[10]         ; |1453| 
        MOVL      XAR1,ACC              ; |1453| 
        MOVL      ACC,XAR2              ; |1454| 
        LSL       AH,#1                 ; |1454| 
        LSR       AH,#1                 ; |1454| 
        MOVL      *-SP[2],ACC           ; |1454| 
        MOVL      ACC,XAR1              ; |1454| 
        LSL       AH,#1                 ; |1454| 
        LSR       AH,#1                 ; |1454| 
        LCR       #FS$$CMP              ; |1454| 
        ; call occurs [#FS$$CMP] ; |1454| 
        CMPB      AL,#0                 ; |1454| 
        BF        L194,LT               ; |1454| 
        ; branchcc occurs ; |1454| 
        MOVL      ACC,XAR1              ; |1454| 
        BF        L195,UNC              ; |1454| 
        ; branch occurs ; |1454| 
L194:    
        MOVL      ACC,XAR2              ; |1454| 
L195:    
        LCR       #_FloattoIntRound     ; |1454| 
        ; call occurs [#_FloattoIntRound] ; |1454| 
        SUBB      SP,#2                 ; |1454| 
        MOVL      XAR2,*--SP            ; |1454| 
        MOVL      XAR1,*--SP            ; |1454| 
	.dwpsn	"man.c",1456,1
        LRETR
        ; return occurs
	.dwattr DW$392, DW_AT_end_file("man.c")
	.dwattr DW$392, DW_AT_end_line(0x5b0)
	.dwattr DW$392, DW_AT_end_column(0x01)
	.dwendtag DW$392

	.sect	".text"
	.global	_CalcAlarmLevel3

DW$395	.dwtag  DW_TAG_subprogram, DW_AT_name("CalcAlarmLevel3"), DW_AT_symbol_name("_CalcAlarmLevel3")
	.dwattr DW$395, DW_AT_low_pc(_CalcAlarmLevel3)
	.dwattr DW$395, DW_AT_high_pc(0x00)
	.dwattr DW$395, DW_AT_begin_file("man.c")
	.dwattr DW$395, DW_AT_begin_line(0x5b5)
	.dwattr DW$395, DW_AT_begin_column(0x07)
	.dwattr DW$395, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$395, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",1462,1

;***************************************************************
;* FNAME: _CalcAlarmLevel3              FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_CalcAlarmLevel3:
;* AR4   assigned to _level
DW$396	.dwtag  DW_TAG_formal_parameter, DW_AT_name("level"), DW_AT_symbol_name("_level")
	.dwattr DW$396, DW_AT_type(*DW$T$10)
	.dwattr DW$396, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _deltaLoad
DW$397	.dwtag  DW_TAG_formal_parameter, DW_AT_name("deltaLoad"), DW_AT_symbol_name("_deltaLoad")
	.dwattr DW$397, DW_AT_type(*DW$T$16)
	.dwattr DW$397, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      XAR2,ACC              ; |1462| 
        ADDB      SP,#2
        MOV       AL,AR4                ; |1462| 
        LCR       #I$$TOFS              ; |1468| 
        ; call occurs [#I$$TOFS] ; |1468| 
        MOVW      DP,#_cppsettings+3
        MOVL      XAR1,ACC              ; |1468| 
        MOV       AL,@_cppsettings+3    ; |1468| 
        LCR       #U$$TOFS              ; |1468| 
        ; call occurs [#U$$TOFS] ; |1468| 
        MOVL      *-SP[2],ACC           ; |1468| 
        MOVL      ACC,XAR2              ; |1468| 
        LCR       #FS$$DIV              ; |1468| 
        ; call occurs [#FS$$DIV] ; |1468| 
        MOVL      XAR6,ACC              ; |1468| 
        MOV       ACC,#32512 << 15
        MOVL      *-SP[2],ACC           ; |1468| 
        MOVL      ACC,XAR6              ; |1468| 
        LCR       #FS$$ADD              ; |1468| 
        ; call occurs [#FS$$ADD] ; |1468| 
        MOVL      *-SP[2],ACC           ; |1468| 
        MOVL      ACC,XAR1              ; |1468| 
        LCR       #FS$$MPY              ; |1468| 
        ; call occurs [#FS$$MPY] ; |1468| 
        SUBB      SP,#2                 ; |1468| 
        MOVL      XAR2,*--SP            ; |1468| 
        MOVL      XAR1,*--SP            ; |1468| 
	.dwpsn	"man.c",1469,1
        LRETR
        ; return occurs
	.dwattr DW$395, DW_AT_end_file("man.c")
	.dwattr DW$395, DW_AT_end_line(0x5bd)
	.dwattr DW$395, DW_AT_end_column(0x01)
	.dwendtag DW$395

	.sect	".text"
	.global	_CalcAlarmLevel4

DW$398	.dwtag  DW_TAG_subprogram, DW_AT_name("CalcAlarmLevel4"), DW_AT_symbol_name("_CalcAlarmLevel4")
	.dwattr DW$398, DW_AT_low_pc(_CalcAlarmLevel4)
	.dwattr DW$398, DW_AT_high_pc(0x00)
	.dwattr DW$398, DW_AT_begin_file("man.c")
	.dwattr DW$398, DW_AT_begin_line(0x5c2)
	.dwattr DW$398, DW_AT_begin_column(0x07)
	.dwattr DW$398, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$398, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",1475,1

;***************************************************************
;* FNAME: _CalcAlarmLevel4              FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_CalcAlarmLevel4:
;* AR4   assigned to _level
DW$399	.dwtag  DW_TAG_formal_parameter, DW_AT_name("level"), DW_AT_symbol_name("_level")
	.dwattr DW$399, DW_AT_type(*DW$T$10)
	.dwattr DW$399, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _deltaLoad
DW$400	.dwtag  DW_TAG_formal_parameter, DW_AT_name("deltaLoad"), DW_AT_symbol_name("_deltaLoad")
	.dwattr DW$400, DW_AT_type(*DW$T$16)
	.dwattr DW$400, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVW      DP,#_cppsettings+3
        MOVL      *SP++,XAR2
        MOVZ      AR1,AR4               ; |1475| 
        MOVL      *SP++,XAR3
        MOVL      XAR3,ACC              ; |1475| 
        ADDB      SP,#2
        MOV       AL,@_cppsettings+3    ; |1479| 
        LCR       #U$$TOFS              ; |1479| 
        ; call occurs [#U$$TOFS] ; |1479| 
        MOVL      XAR2,ACC              ; |1479| 
        MOV       AL,AR1                ; |1482| 
        LCR       #I$$TOFS              ; |1482| 
        ; call occurs [#I$$TOFS] ; |1482| 
        MOVL      XAR1,ACC              ; |1482| 
        MOVL      *-SP[2],XAR2          ; |1482| 
        MOVL      ACC,XAR3              ; |1482| 
        LCR       #FS$$DIV              ; |1482| 
        ; call occurs [#FS$$DIV] ; |1482| 
        MOVW      DP,#_loaddynalarmlevels+34
        MOVL      XAR2,ACC              ; |1482| 
        MOVL      ACC,@_loaddynalarmlevels+34 ; |1482| 
        LCR       #UL$$TOFS             ; |1482| 
        ; call occurs [#UL$$TOFS] ; |1482| 
        MOVW      DP,#_cppsettings+4
        MOVL      XAR3,ACC              ; |1482| 
        MOV       AL,@_cppsettings+4    ; |1482| 
        LCR       #U$$TOFS              ; |1482| 
        ; call occurs [#U$$TOFS] ; |1482| 
        MOVL      *-SP[2],ACC           ; |1482| 
        MOVL      ACC,XAR3              ; |1482| 
        LCR       #FS$$DIV              ; |1482| 
        ; call occurs [#FS$$DIV] ; |1482| 
        LCR       #FS$$NEG              ; |1482| 
        ; call occurs [#FS$$NEG] ; |1482| 
        LCR       #_exp                 ; |1482| 
        ; call occurs [#_exp] ; |1482| 
        MOVL      *-SP[2],ACC           ; |1482| 
        MOVL      ACC,XAR2              ; |1482| 
        LCR       #FS$$MPY              ; |1482| 
        ; call occurs [#FS$$MPY] ; |1482| 
        MOVL      XAR6,ACC              ; |1482| 
        MOV       ACC,#32512 << 15
        MOVL      *-SP[2],ACC           ; |1482| 
        MOVL      ACC,XAR6              ; |1482| 
        LCR       #FS$$ADD              ; |1482| 
        ; call occurs [#FS$$ADD] ; |1482| 
        MOVL      *-SP[2],ACC           ; |1482| 
        MOVL      ACC,XAR1              ; |1482| 
        LCR       #FS$$MPY              ; |1482| 
        ; call occurs [#FS$$MPY] ; |1482| 
        SUBB      SP,#2                 ; |1484| 
        MOVL      XAR3,*--SP            ; |1484| 
        MOVL      XAR2,*--SP            ; |1484| 
        MOVL      XAR1,*--SP            ; |1484| 
	.dwpsn	"man.c",1485,1
        LRETR
        ; return occurs
	.dwattr DW$398, DW_AT_end_file("man.c")
	.dwattr DW$398, DW_AT_end_line(0x5cd)
	.dwattr DW$398, DW_AT_end_column(0x01)
	.dwendtag DW$398

	.sect	".text"
	.global	_SensorDamageMonSlowDown

DW$401	.dwtag  DW_TAG_subprogram, DW_AT_name("SensorDamageMonSlowDown"), DW_AT_symbol_name("_SensorDamageMonSlowDown")
	.dwattr DW$401, DW_AT_low_pc(_SensorDamageMonSlowDown)
	.dwattr DW$401, DW_AT_high_pc(0x00)
	.dwattr DW$401, DW_AT_begin_file("man.c")
	.dwattr DW$401, DW_AT_begin_line(0x5d2)
	.dwattr DW$401, DW_AT_begin_column(0x06)
	.dwattr DW$401, DW_AT_frame_base[DW_OP_breg20 -38]
	.dwattr DW$401, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",1491,1

;***************************************************************
;* FNAME: _SensorDamageMonSlowDown      FR SIZE:  36           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 30 Auto,  6 SOE     *
;***************************************************************

_SensorDamageMonSlowDown:
;* AL    assigned to _chan
DW$402	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$402, DW_AT_type(*DW$T$10)
	.dwattr DW$402, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _val
DW$403	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$403, DW_AT_type(*DW$T$10)
	.dwattr DW$403, DW_AT_location[DW_OP_reg1]
;* AR4   assigned to _rpm
DW$404	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$404, DW_AT_type(*DW$T$10)
	.dwattr DW$404, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVZ      AR1,AL                ; |1491| 
        MOVL      *SP++,XAR3
        MOVZ      AR2,AR4               ; |1491| 
        ADDB      SP,#30
        MOVZ      AR4,SP                ; |1500| 
        MOVZ      AR3,AH                ; |1491| 
        MOVB      XAR5,#0
        MOVB      ACC,#30
        SUBB      XAR4,#30              ; |1500| 
        LCR       #_memset              ; |1500| 
        ; call occurs [#_memset] ; |1500| 
        MOVW      DP,#_allsensors+37
        MOV       AL,AR2                ; |1500| 
        CMP       AL,@_allsensors+37    ; |1502| 
        BF        L201,LO               ; |1502| 
        ; branchcc occurs ; |1502| 
        MOVW      DP,#_timers+66
        MOV       AL,@_timers+66        ; |1502| 
        BF        L201,NEQ              ; |1502| 
        ; branchcc occurs ; |1502| 
        MOV       T,AR1
        MOVL      XAR4,#_sensor         ; |1504| 
        MPYB      ACC,T,#18             ; |1504| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |1504| 
        AND       AH,AL,#0x0001         ; |1504| 
        BF        L201,EQ               ; |1504| 
        ; branchcc occurs ; |1504| 
        ANDB      AL,#4                 ; |1504| 
        BF        L201,NEQ              ; |1504| 
        ; branchcc occurs ; |1504| 
        SETC      SXM
        MOV       AL,AR3                ; |1507| 
        MOVW      DP,#_dynalarmlevels+21
        MOV       ACC,AL                ; |1507| 
        ABS       ACC                   ; |1507| 
        CMP       AL,@_dynalarmlevels+21 ; |1508| 
        BF        L200,LT               ; |1508| 
        ; branchcc occurs ; |1508| 
        TBIT      *+XAR4[1],#0          ; |1508| 
        BF        L200,TC               ; |1508| 
        ; branchcc occurs ; |1508| 
        MOV       AL,AR1
        CMPB      AL,#16                ; |1510| 
        BF        L196,LT               ; |1510| 
        ; branchcc occurs ; |1510| 
        MOV       AH,AR1                ; |1519| 
        MOVW      DP,#_damalarms+1
        ADDB      AH,#-16
        MOV       AL,@_damalarms+1      ; |1519| 
        BF        L197,UNC              ; |1520| 
        ; branch occurs ; |1520| 
L196:    
        MOVW      DP,#_damalarms
        MOV       AH,AR1                ; |1513| 
        MOV       AL,@_damalarms        ; |1513| 
L197:    
        LCR       #_CheckBitSet         ; |1522| 
        ; call occurs [#_CheckBitSet] ; |1522| 
        CMPB      AL,#0                 ; |1522| 
        BF        L201,NEQ              ; |1522| 
        ; branchcc occurs ; |1522| 
        MOV       AL,#300               ; |1525| 
        ADD       AL,AR1                ; |1525| 
        LCR       #_SetAlarmEvent       ; |1525| 
        ; call occurs [#_SetAlarmEvent] ; |1525| 
        MOV       AL,AR1                ; |1525| 
        CMPB      AL,#16                ; |1526| 
        BF        L198,LT               ; |1526| 
        ; branchcc occurs ; |1526| 
        MOVL      XAR3,#_damalarms      ; |1527| 
        MOV       AL,*+XAR3[1]          ; |1527| 
        MOV       AH,AR1                ; |1527| 
        ADDB      AH,#-16
        LCR       #_BitSet              ; |1527| 
        ; call occurs [#_BitSet] ; |1527| 
        MOV       *+XAR3[1],AL          ; |1527| 
        BF        L199,UNC              ; |1527| 
        ; branch occurs ; |1527| 
L198:    
        MOVL      XAR3,#_damalarms      ; |1526| 
        MOV       AL,*+XAR3[0]          ; |1526| 
        MOV       AH,AR1                ; |1526| 
        LCR       #_BitSet              ; |1526| 
        ; call occurs [#_BitSet] ; |1526| 
        MOV       *+XAR3[0],AL          ; |1526| 
L199:    
        MOVB      AL,#0
        MOVB      XAR5,#2               ; |1532| 
        MOVL      XAR4,#_damalarms      ; |1532| 
        MOV       AH,#28922             ; |1532| 
        LCR       #_WriteNVMemory       ; |1532| 
        ; call occurs [#_WriteNVMemory] ; |1532| 
        MOVW      DP,#_SensorSlowDowntatus
        MOV       @_SensorSlowDowntatus,#1 ; |1534| 
        BF        L201,UNC              ; |1534| 
        ; branch occurs ; |1534| 
L200:    
        MOVW      DP,#_damagemon+6
        MOV       AH,@_damagemon+6      ; |1537| 
        MOVW      DP,#_damagemon+14
        SUB       AH,@_damagemon+14     ; |1537| 
        CMP       AH,AL                 ; |1537| 
        BF        L202,GEQ              ; |1537| 
        ; branchcc occurs ; |1537| 
L201:    
        MOVB      AL,#0
        CMPB      AL,#1                 ; |1545| 
        BF        L202,EQ               ; |1545| 
        ; branchcc occurs ; |1545| 
        MOV       T,AR1
        MOVL      XAR4,#_sensor         ; |1545| 
        MPYB      ACC,T,#18             ; |1545| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |1545| 
        AND       AH,AL,#0x0001         ; |1545| 
        BF        L202,EQ               ; |1545| 
        ; branchcc occurs ; |1545| 
        ANDB      AL,#4                 ; |1545| 
        BF        L207,EQ               ; |1545| 
        ; branchcc occurs ; |1545| 
L202:    
        MOV       AL,AR1
        CMPB      AL,#16                ; |1547| 
        BF        L203,LT               ; |1547| 
        ; branchcc occurs ; |1547| 
        MOV       AH,AR1                ; |1555| 
        MOVW      DP,#_damalarms+1
        ADDB      AH,#-16
        MOV       AL,@_damalarms+1      ; |1555| 
        BF        L204,UNC              ; |1556| 
        ; branch occurs ; |1556| 
L203:    
        MOVW      DP,#_damalarms
        MOV       AH,AR1                ; |1550| 
        MOV       AL,@_damalarms        ; |1550| 
L204:    
        LCR       #_CheckBitSet         ; |1558| 
        ; call occurs [#_CheckBitSet] ; |1558| 
        CMPB      AL,#1                 ; |1558| 
        BF        L207,NEQ              ; |1558| 
        ; branchcc occurs ; |1558| 
        MOV       AL,#300               ; |1563| 
        ADD       AL,AR1                ; |1563| 
        LCR       #_ClearAlarmEvent     ; |1563| 
        ; call occurs [#_ClearAlarmEvent] ; |1563| 
        MOV       AL,AR1                ; |1563| 
        CMPB      AL,#16                ; |1564| 
        BF        L205,LT               ; |1564| 
        ; branchcc occurs ; |1564| 
        MOVL      XAR3,#_damalarms      ; |1565| 
        MOV       AL,*+XAR3[1]          ; |1565| 
        MOV       AH,AR1                ; |1565| 
        ADDB      AH,#-16
        LCR       #_BitClear            ; |1565| 
        ; call occurs [#_BitClear] ; |1565| 
        MOV       *+XAR3[1],AL          ; |1565| 
        BF        L206,UNC              ; |1565| 
        ; branch occurs ; |1565| 
L205:    
        MOVL      XAR3,#_damalarms      ; |1564| 
        MOV       AL,*+XAR3[0]          ; |1564| 
        MOV       AH,AR1                ; |1564| 
        LCR       #_BitClear            ; |1564| 
        ; call occurs [#_BitClear] ; |1564| 
        MOV       *+XAR3[0],AL          ; |1564| 
L206:    
        MOVB      AL,#0
        MOVB      XAR5,#2               ; |1566| 
        MOVL      XAR4,#_damalarms      ; |1566| 
        MOV       AH,#28922             ; |1566| 
        LCR       #_WriteNVMemory       ; |1566| 
        ; call occurs [#_WriteNVMemory] ; |1566| 
        MOVW      DP,#_SensorSlowDowntatus
        MOV       @_SensorSlowDowntatus,#0 ; |1568| 
L207:    
        SUBB      SP,#30
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"man.c",1571,1
        LRETR
        ; return occurs
	.dwattr DW$401, DW_AT_end_file("man.c")
	.dwattr DW$401, DW_AT_end_line(0x623)
	.dwattr DW$401, DW_AT_end_column(0x01)
	.dwendtag DW$401

	.sect	".text"
	.global	_ClearSensorDamageMonSlowDown

DW$405	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearSensorDamageMonSlowDown"), DW_AT_symbol_name("_ClearSensorDamageMonSlowDown")
	.dwattr DW$405, DW_AT_low_pc(_ClearSensorDamageMonSlowDown)
	.dwattr DW$405, DW_AT_high_pc(0x00)
	.dwattr DW$405, DW_AT_begin_file("man.c")
	.dwattr DW$405, DW_AT_begin_line(0x626)
	.dwattr DW$405, DW_AT_begin_column(0x06)
	.dwattr DW$405, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$405, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",1575,1

;***************************************************************
;* FNAME: _ClearSensorDamageMonSlowDown FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_ClearSensorDamageMonSlowDown:
;* AL    assigned to _chan
DW$406	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$406, DW_AT_type(*DW$T$10)
	.dwattr DW$406, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVZ      AR1,AL                ; |1575| 
        MOVL      XAR4,#_sensor         ; |1580| 
        MOV       T,AR1                 ; |1575| 
        MPYB      ACC,T,#18             ; |1580| 
        ADDL      XAR4,ACC
        MOVL      *SP++,XAR3
        MOV       AL,*+XAR4[0]          ; |1580| 
        AND       AH,AL,#0x0001         ; |1580| 
        BF        L208,EQ               ; |1580| 
        ; branchcc occurs ; |1580| 
        ANDB      AL,#4                 ; |1580| 
        BF        L213,EQ               ; |1580| 
        ; branchcc occurs ; |1580| 
L208:    
        MOV       AL,AR1
        CMPB      AL,#16                ; |1582| 
        BF        L209,LT               ; |1582| 
        ; branchcc occurs ; |1582| 
        MOV       AH,AR1                ; |1590| 
        MOVW      DP,#_damalarms+1
        ADDB      AH,#-16
        MOV       AL,@_damalarms+1      ; |1590| 
        BF        L210,UNC              ; |1591| 
        ; branch occurs ; |1591| 
L209:    
        MOVW      DP,#_damalarms
        MOV       AH,AR1                ; |1585| 
        MOV       AL,@_damalarms        ; |1585| 
L210:    
        LCR       #_CheckBitSet         ; |1593| 
        ; call occurs [#_CheckBitSet] ; |1593| 
        CMPB      AL,#1                 ; |1593| 
        BF        L213,NEQ              ; |1593| 
        ; branchcc occurs ; |1593| 
        MOV       AL,#300               ; |1598| 
        ADD       AL,AR1                ; |1598| 
        LCR       #_ClearAlarmEvent     ; |1598| 
        ; call occurs [#_ClearAlarmEvent] ; |1598| 
        MOV       AL,AR1                ; |1598| 
        CMPB      AL,#16                ; |1599| 
        BF        L211,LT               ; |1599| 
        ; branchcc occurs ; |1599| 
        MOVL      XAR3,#_damalarms      ; |1600| 
        MOV       AL,*+XAR3[1]          ; |1600| 
        MOV       AH,AR1                ; |1600| 
        ADDB      AH,#-16
        LCR       #_BitClear            ; |1600| 
        ; call occurs [#_BitClear] ; |1600| 
        MOV       *+XAR3[1],AL          ; |1600| 
        BF        L212,UNC              ; |1600| 
        ; branch occurs ; |1600| 
L211:    
        MOVL      XAR3,#_damalarms      ; |1599| 
        MOV       AL,*+XAR3[0]          ; |1599| 
        MOV       AH,AR1                ; |1599| 
        LCR       #_BitClear            ; |1599| 
        ; call occurs [#_BitClear] ; |1599| 
        MOV       *+XAR3[0],AL          ; |1599| 
L212:    
        MOVB      AL,#0
        MOVB      XAR5,#2               ; |1601| 
        MOV       AH,#28922             ; |1601| 
        MOVL      XAR4,#_damalarms      ; |1601| 
        LCR       #_WriteNVMemory       ; |1601| 
        ; call occurs [#_WriteNVMemory] ; |1601| 
        MOVW      DP,#_SensorSlowDowntatus
        MOV       @_SensorSlowDowntatus,#0 ; |1603| 
L213:    
        MOVL      XAR3,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"man.c",1606,1
        LRETR
        ; return occurs
	.dwattr DW$405, DW_AT_end_file("man.c")
	.dwattr DW$405, DW_AT_end_line(0x646)
	.dwattr DW$405, DW_AT_end_column(0x01)
	.dwendtag DW$405

	.sect	".text"
	.global	_CylDamageMonSlowDown

DW$407	.dwtag  DW_TAG_subprogram, DW_AT_name("CylDamageMonSlowDown"), DW_AT_symbol_name("_CylDamageMonSlowDown")
	.dwattr DW$407, DW_AT_low_pc(_CylDamageMonSlowDown)
	.dwattr DW$407, DW_AT_high_pc(0x00)
	.dwattr DW$407, DW_AT_begin_file("man.c")
	.dwattr DW$407, DW_AT_begin_line(0x649)
	.dwattr DW$407, DW_AT_begin_column(0x06)
	.dwattr DW$407, DW_AT_frame_base[DW_OP_breg20 -40]
	.dwattr DW$407, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",1610,1

;***************************************************************
;* FNAME: _CylDamageMonSlowDown         FR SIZE:  38           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 31 Auto,  6 SOE     *
;***************************************************************

_CylDamageMonSlowDown:
;* AL    assigned to _num
DW$408	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num"), DW_AT_symbol_name("_num")
	.dwattr DW$408, DW_AT_type(*DW$T$11)
	.dwattr DW$408, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _val
DW$409	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$409, DW_AT_type(*DW$T$10)
	.dwattr DW$409, DW_AT_location[DW_OP_reg1]
;* AR4   assigned to _rpm
DW$410	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$410, DW_AT_type(*DW$T$11)
	.dwattr DW$410, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#32
        MOVZ      AR1,AL                ; |1610| 
        MOV       *-SP[31],AR4          ; |1610| 
        MOVZ      AR4,SP                ; |1617| 
        MOVZ      AR2,AH                ; |1610| 
        MOVB      XAR5,#0
        MOVB      ACC,#30
        SUBB      XAR4,#30              ; |1617| 
        LCR       #_memset              ; |1617| 
        ; call occurs [#_memset] ; |1617| 
        MOVB      AL,#1                 ; |1619| 
        MOV       T,AR1                 ; |1619| 
        LSL       AL,T                  ; |1619| 
        MOVZ      AR3,AL                ; |1619| 
        MOVW      DP,#_allsensors+37
        MOV       AL,*-SP[31]           ; |1619| 
        CMP       AL,@_allsensors+37    ; |1620| 
        BF        L215,LO               ; |1620| 
        ; branchcc occurs ; |1620| 
        MOVW      DP,#_timers+66
        MOV       AL,@_timers+66        ; |1620| 
        BF        L215,NEQ              ; |1620| 
        ; branchcc occurs ; |1620| 
        MOVW      DP,#_damagemon+11
        MOV       AL,@_damagemon+11     ; |1622| 
        AND       AL,AR3                ; |1622| 
        BF        L216,EQ               ; |1622| 
        ; branchcc occurs ; |1622| 
        SETC      SXM
        MOV       AL,AR2                ; |1626| 
        MOVW      DP,#_dynalarmlevels+22
        MOV       ACC,AL                ; |1626| 
        ABS       ACC                   ; |1626| 
        CMP       AL,@_dynalarmlevels+22 ; |1626| 
        BF        L214,GEQ              ; |1626| 
        ; branchcc occurs ; |1626| 
        MOVW      DP,#_damagemon+7
        MOV       AH,@_damagemon+7      ; |1643| 
        MOVW      DP,#_damagemon+14
        SUB       AH,@_damagemon+14     ; |1643| 
        CMP       AH,AL                 ; |1643| 
        BF        L215,LT               ; |1643| 
        ; branchcc occurs ; |1643| 
        BF        L216,UNC              ; |1643| 
        ; branch occurs ; |1643| 
L214:    
        MOVW      DP,#_damalarms+2
        MOV       AL,@_damalarms+2      ; |1628| 
        MOV       AH,AR1                ; |1628| 
        LCR       #_CheckBitSet         ; |1628| 
        ; call occurs [#_CheckBitSet] ; |1628| 
        CMPB      AL,#0                 ; |1628| 
        BF        L215,NEQ              ; |1628| 
        ; branchcc occurs ; |1628| 
        MOV       AL,#328               ; |1631| 
        ADD       AL,AR1                ; |1631| 
        LCR       #_SetAlarmEvent       ; |1631| 
        ; call occurs [#_SetAlarmEvent] ; |1631| 
        MOVW      DP,#_damalarms+2
        MOV       AL,@_damalarms+2      ; |1632| 
        MOV       AH,AR1                ; |1632| 
        LCR       #_BitSet              ; |1632| 
        ; call occurs [#_BitSet] ; |1632| 
        MOVW      DP,#_damalarms+2
        MOV       @_damalarms+2,AL      ; |1632| 
        MOVB      AL,#0
        MOVB      XAR5,#1               ; |1638| 
        MOVL      XAR4,#_damalarms+2    ; |1638| 
        MOV       AH,#28926             ; |1638| 
        LCR       #_WriteNVMemory       ; |1638| 
        ; call occurs [#_WriteNVMemory] ; |1638| 
        MOVW      DP,#_SensorSlowDowntatus
        MOV       @_SensorSlowDowntatus,#1 ; |1640| 
L215:    
        MOVW      DP,#_damagemon+11
        MOV       AL,@_damagemon+11     ; |1650| 
        AND       AL,AR3                ; |1650| 
        BF        L217,NEQ              ; |1650| 
        ; branchcc occurs ; |1650| 
L216:    
        MOVW      DP,#_damalarms+2
        MOV       AL,@_damalarms+2      ; |1652| 
        MOV       AH,AR1                ; |1652| 
        LCR       #_CheckBitSet         ; |1652| 
        ; call occurs [#_CheckBitSet] ; |1652| 
        CMPB      AL,#1                 ; |1652| 
        BF        L217,NEQ              ; |1652| 
        ; branchcc occurs ; |1652| 
        MOV       AL,#328               ; |1656| 
        ADD       AL,AR1                ; |1656| 
        LCR       #_ClearAlarmEvent     ; |1656| 
        ; call occurs [#_ClearAlarmEvent] ; |1656| 
        MOVW      DP,#_damalarms+2
        MOV       AL,@_damalarms+2      ; |1657| 
        MOV       AH,AR1                ; |1657| 
        LCR       #_BitClear            ; |1657| 
        ; call occurs [#_BitClear] ; |1657| 
        MOVW      DP,#_damalarms+2
        MOV       @_damalarms+2,AL      ; |1657| 
        MOVB      AL,#0
        MOVB      XAR5,#1               ; |1658| 
        MOVL      XAR4,#_damalarms+2    ; |1658| 
        MOV       AH,#28926             ; |1658| 
        LCR       #_WriteNVMemory       ; |1658| 
        ; call occurs [#_WriteNVMemory] ; |1658| 
        MOVW      DP,#_SensorSlowDowntatus
        MOV       @_SensorSlowDowntatus,#0 ; |1660| 
L217:    
        SUBB      SP,#32
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"man.c",1663,1
        LRETR
        ; return occurs
	.dwattr DW$407, DW_AT_end_file("man.c")
	.dwattr DW$407, DW_AT_end_line(0x67f)
	.dwattr DW$407, DW_AT_end_column(0x01)
	.dwendtag DW$407

	.sect	".text"
	.global	_ClearCylDamageMonSlowDown

DW$411	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearCylDamageMonSlowDown"), DW_AT_symbol_name("_ClearCylDamageMonSlowDown")
	.dwattr DW$411, DW_AT_low_pc(_ClearCylDamageMonSlowDown)
	.dwattr DW$411, DW_AT_high_pc(0x00)
	.dwattr DW$411, DW_AT_begin_file("man.c")
	.dwattr DW$411, DW_AT_begin_line(0x682)
	.dwattr DW$411, DW_AT_begin_column(0x06)
	.dwattr DW$411, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$411, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",1667,1

;***************************************************************
;* FNAME: _ClearCylDamageMonSlowDown    FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_ClearCylDamageMonSlowDown:
;* AL    assigned to _num
DW$412	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num"), DW_AT_symbol_name("_num")
	.dwattr DW$412, DW_AT_type(*DW$T$11)
	.dwattr DW$412, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVZ      AR1,AL                ; |1667| 
        MOV       T,AR1                 ; |1673| 
        MOVB      AL,#1                 ; |1673| 
        LSL       AL,T                  ; |1673| 
        MOVW      DP,#_damagemon+11
        AND       AL,@_damagemon+11     ; |1673| 
        BF        L218,NEQ              ; |1673| 
        ; branchcc occurs ; |1673| 
        MOVW      DP,#_damalarms+2
        MOV       AL,@_damalarms+2      ; |1675| 
        MOV       AH,AR1                ; |1675| 
        LCR       #_CheckBitSet         ; |1675| 
        ; call occurs [#_CheckBitSet] ; |1675| 
        CMPB      AL,#1                 ; |1675| 
        BF        L218,NEQ              ; |1675| 
        ; branchcc occurs ; |1675| 
        MOV       AL,#328               ; |1679| 
        ADD       AL,AR1                ; |1679| 
        LCR       #_ClearAlarmEvent     ; |1679| 
        ; call occurs [#_ClearAlarmEvent] ; |1679| 
        MOVW      DP,#_damalarms+2
        MOV       AL,@_damalarms+2      ; |1680| 
        MOV       AH,AR1                ; |1680| 
        LCR       #_BitClear            ; |1680| 
        ; call occurs [#_BitClear] ; |1680| 
        MOVW      DP,#_damalarms+2
        MOV       @_damalarms+2,AL      ; |1680| 
        MOVB      AL,#0
        MOV       AH,#28926             ; |1681| 
        MOVB      XAR5,#1               ; |1681| 
        MOVL      XAR4,#_damalarms+2    ; |1681| 
        LCR       #_WriteNVMemory       ; |1681| 
        ; call occurs [#_WriteNVMemory] ; |1681| 
        MOVW      DP,#_SensorSlowDowntatus
        MOV       @_SensorSlowDowntatus,#0 ; |1683| 
L218:    
        MOVL      XAR1,*--SP
	.dwpsn	"man.c",1686,1
        LRETR
        ; return occurs
	.dwattr DW$411, DW_AT_end_file("man.c")
	.dwattr DW$411, DW_AT_end_line(0x696)
	.dwattr DW$411, DW_AT_end_column(0x01)
	.dwendtag DW$411

	.sect	".text"
	.global	_MBNeighbourDamageMonSlowDown

DW$413	.dwtag  DW_TAG_subprogram, DW_AT_name("MBNeighbourDamageMonSlowDown"), DW_AT_symbol_name("_MBNeighbourDamageMonSlowDown")
	.dwattr DW$413, DW_AT_low_pc(_MBNeighbourDamageMonSlowDown)
	.dwattr DW$413, DW_AT_high_pc(0x00)
	.dwattr DW$413, DW_AT_begin_file("man.c")
	.dwattr DW$413, DW_AT_begin_line(0x698)
	.dwattr DW$413, DW_AT_begin_column(0x06)
	.dwattr DW$413, DW_AT_frame_base[DW_OP_breg20 -40]
	.dwattr DW$413, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",1689,1

;***************************************************************
;* FNAME: _MBNeighbourDamageMonSlowDown FR SIZE:  38           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 31 Auto,  6 SOE     *
;***************************************************************

_MBNeighbourDamageMonSlowDown:
;* AL    assigned to _num
DW$414	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num"), DW_AT_symbol_name("_num")
	.dwattr DW$414, DW_AT_type(*DW$T$11)
	.dwattr DW$414, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _val
DW$415	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$415, DW_AT_type(*DW$T$10)
	.dwattr DW$415, DW_AT_location[DW_OP_reg1]
;* AR4   assigned to _rpm
DW$416	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$416, DW_AT_type(*DW$T$11)
	.dwattr DW$416, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#32
        MOVZ      AR1,AL                ; |1689| 
        MOV       *-SP[31],AR4          ; |1689| 
        MOVZ      AR4,SP                ; |1696| 
        MOVZ      AR2,AH                ; |1689| 
        MOVB      XAR5,#0
        MOVB      ACC,#30
        SUBB      XAR4,#30              ; |1696| 
        LCR       #_memset              ; |1696| 
        ; call occurs [#_memset] ; |1696| 
        MOVB      AL,#1                 ; |1698| 
        MOV       T,AR1                 ; |1698| 
        LSL       AL,T                  ; |1698| 
        MOVZ      AR3,AL                ; |1698| 
        MOVW      DP,#_allsensors+37
        MOV       AL,*-SP[31]           ; |1698| 
        CMP       AL,@_allsensors+37    ; |1699| 
        BF        L220,LO               ; |1699| 
        ; branchcc occurs ; |1699| 
        MOVW      DP,#_timers+66
        MOV       AL,@_timers+66        ; |1699| 
        BF        L220,NEQ              ; |1699| 
        ; branchcc occurs ; |1699| 
        MOVW      DP,#_damagemon+12
        MOV       AL,@_damagemon+12     ; |1701| 
        AND       AL,AR3                ; |1701| 
        BF        L221,EQ               ; |1701| 
        ; branchcc occurs ; |1701| 
        SETC      SXM
        MOV       AL,AR2                ; |1705| 
        MOVW      DP,#_dynalarmlevels+23
        MOV       ACC,AL                ; |1705| 
        ABS       ACC                   ; |1705| 
        CMP       AL,@_dynalarmlevels+23 ; |1705| 
        BF        L219,GEQ              ; |1705| 
        ; branchcc occurs ; |1705| 
        MOVW      DP,#_damagemon+8
        MOV       AH,@_damagemon+8      ; |1722| 
        MOVW      DP,#_damagemon+14
        SUB       AH,@_damagemon+14     ; |1722| 
        CMP       AH,AL                 ; |1722| 
        BF        L220,LT               ; |1722| 
        ; branchcc occurs ; |1722| 
        BF        L221,UNC              ; |1722| 
        ; branch occurs ; |1722| 
L219:    
        MOVW      DP,#_damalarms+3
        MOV       AL,@_damalarms+3      ; |1707| 
        MOV       AH,AR1                ; |1707| 
        LCR       #_CheckBitSet         ; |1707| 
        ; call occurs [#_CheckBitSet] ; |1707| 
        CMPB      AL,#0                 ; |1707| 
        BF        L220,NEQ              ; |1707| 
        ; branchcc occurs ; |1707| 
        MOV       AL,#342               ; |1710| 
        ADD       AL,AR1                ; |1710| 
        LCR       #_SetAlarmEvent       ; |1710| 
        ; call occurs [#_SetAlarmEvent] ; |1710| 
        MOVW      DP,#_damalarms+3
        MOV       AL,@_damalarms+3      ; |1711| 
        MOV       AH,AR1                ; |1711| 
        LCR       #_BitSet              ; |1711| 
        ; call occurs [#_BitSet] ; |1711| 
        MOVW      DP,#_damalarms+3
        MOV       @_damalarms+3,AL      ; |1711| 
        MOVB      AL,#0
        MOVB      XAR5,#1               ; |1717| 
        MOVL      XAR4,#_damalarms+3    ; |1717| 
        MOV       AH,#28928             ; |1717| 
        LCR       #_WriteNVMemory       ; |1717| 
        ; call occurs [#_WriteNVMemory] ; |1717| 
        MOVW      DP,#_SensorSlowDowntatus
        MOV       @_SensorSlowDowntatus,#1 ; |1719| 
L220:    
        MOVW      DP,#_damagemon+12
        MOV       AL,@_damagemon+12     ; |1729| 
        AND       AL,AR3                ; |1729| 
        BF        L222,NEQ              ; |1729| 
        ; branchcc occurs ; |1729| 
L221:    
        MOVW      DP,#_damalarms+3
        MOV       AL,@_damalarms+3      ; |1731| 
        MOV       AH,AR1                ; |1731| 
        LCR       #_CheckBitSet         ; |1731| 
        ; call occurs [#_CheckBitSet] ; |1731| 
        CMPB      AL,#1                 ; |1731| 
        BF        L222,NEQ              ; |1731| 
        ; branchcc occurs ; |1731| 
        MOV       AL,#342               ; |1735| 
        ADD       AL,AR1                ; |1735| 
        LCR       #_ClearAlarmEvent     ; |1735| 
        ; call occurs [#_ClearAlarmEvent] ; |1735| 
        MOVW      DP,#_damalarms+3
        MOV       AL,@_damalarms+3      ; |1736| 
        MOV       AH,AR1                ; |1736| 
        LCR       #_BitClear            ; |1736| 
        ; call occurs [#_BitClear] ; |1736| 
        MOVW      DP,#_damalarms+3
        MOV       @_damalarms+3,AL      ; |1736| 
        MOVB      AL,#0
        MOVB      XAR5,#1               ; |1737| 
        MOVL      XAR4,#_damalarms+3    ; |1737| 
        MOV       AH,#28928             ; |1737| 
        LCR       #_WriteNVMemory       ; |1737| 
        ; call occurs [#_WriteNVMemory] ; |1737| 
        MOVW      DP,#_SensorSlowDowntatus
        MOV       @_SensorSlowDowntatus,#0 ; |1739| 
L222:    
        SUBB      SP,#32
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"man.c",1742,1
        LRETR
        ; return occurs
	.dwattr DW$413, DW_AT_end_file("man.c")
	.dwattr DW$413, DW_AT_end_line(0x6ce)
	.dwattr DW$413, DW_AT_end_column(0x01)
	.dwendtag DW$413

	.sect	".text"
	.global	_ClearMBNeighbourDamageMonSlowDown

DW$417	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearMBNeighbourDamageMonSlowDown"), DW_AT_symbol_name("_ClearMBNeighbourDamageMonSlowDown")
	.dwattr DW$417, DW_AT_low_pc(_ClearMBNeighbourDamageMonSlowDown)
	.dwattr DW$417, DW_AT_high_pc(0x00)
	.dwattr DW$417, DW_AT_begin_file("man.c")
	.dwattr DW$417, DW_AT_begin_line(0x6d1)
	.dwattr DW$417, DW_AT_begin_column(0x06)
	.dwattr DW$417, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$417, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",1746,1

;***************************************************************
;* FNAME: _ClearMBNeighbourDamageMonSlowDown FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_ClearMBNeighbourDamageMonSlowDown:
;* AL    assigned to _num
DW$418	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num"), DW_AT_symbol_name("_num")
	.dwattr DW$418, DW_AT_type(*DW$T$11)
	.dwattr DW$418, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVZ      AR1,AL                ; |1746| 
        MOV       T,AR1                 ; |1753| 
        MOVB      AL,#1                 ; |1753| 
        LSL       AL,T                  ; |1753| 
        MOVW      DP,#_damagemon+12
        AND       AL,@_damagemon+12     ; |1753| 
        BF        L223,NEQ              ; |1753| 
        ; branchcc occurs ; |1753| 
        MOVW      DP,#_damalarms+3
        MOV       AL,@_damalarms+3      ; |1755| 
        MOV       AH,AR1                ; |1755| 
        LCR       #_CheckBitSet         ; |1755| 
        ; call occurs [#_CheckBitSet] ; |1755| 
        CMPB      AL,#1                 ; |1755| 
        BF        L223,NEQ              ; |1755| 
        ; branchcc occurs ; |1755| 
        MOV       AL,#342               ; |1759| 
        ADD       AL,AR1                ; |1759| 
        LCR       #_ClearAlarmEvent     ; |1759| 
        ; call occurs [#_ClearAlarmEvent] ; |1759| 
        MOVW      DP,#_damalarms+3
        MOV       AL,@_damalarms+3      ; |1760| 
        MOV       AH,AR1                ; |1760| 
        LCR       #_BitClear            ; |1760| 
        ; call occurs [#_BitClear] ; |1760| 
        MOVW      DP,#_damalarms+3
        MOV       @_damalarms+3,AL      ; |1760| 
        MOVB      AL,#0
        MOV       AH,#28928             ; |1761| 
        MOVB      XAR5,#1               ; |1761| 
        MOVL      XAR4,#_damalarms+3    ; |1761| 
        LCR       #_WriteNVMemory       ; |1761| 
        ; call occurs [#_WriteNVMemory] ; |1761| 
        MOVW      DP,#_SensorSlowDowntatus
        MOV       @_SensorSlowDowntatus,#0 ; |1763| 
L223:    
        MOVL      XAR1,*--SP
	.dwpsn	"man.c",1766,1
        LRETR
        ; return occurs
	.dwattr DW$417, DW_AT_end_file("man.c")
	.dwattr DW$417, DW_AT_end_line(0x6e6)
	.dwattr DW$417, DW_AT_end_column(0x01)
	.dwendtag DW$417

	.sect	".text"
	.global	_WriteDamagemontoNVMEM

DW$419	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteDamagemontoNVMEM"), DW_AT_symbol_name("_WriteDamagemontoNVMEM")
	.dwattr DW$419, DW_AT_low_pc(_WriteDamagemontoNVMEM)
	.dwattr DW$419, DW_AT_high_pc(0x00)
	.dwattr DW$419, DW_AT_begin_file("man.c")
	.dwattr DW$419, DW_AT_begin_line(0x6ea)
	.dwattr DW$419, DW_AT_begin_column(0x06)
	.dwattr DW$419, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$419, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",1771,1

;***************************************************************
;* FNAME: _WriteDamagemontoNVMEM        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WriteDamagemontoNVMEM:
        MOVB      AL,#0
        MOVB      XAR5,#16              ; |1781| 
        MOVL      XAR4,#_damagemon      ; |1781| 
        MOV       AH,#28858             ; |1781| 
        LCR       #_WriteNVMemory       ; |1781| 
        ; call occurs [#_WriteNVMemory] ; |1781| 
        LCR       #_CylNeighbourRegSet  ; |1783| 
        ; call occurs [#_CylNeighbourRegSet] ; |1783| 
        LCR       #_MBNeighbourRegSet   ; |1784| 
        ; call occurs [#_MBNeighbourRegSet] ; |1784| 
        MOVW      DP,#_settings+10
        MOV       @_settings+10,#1      ; |1787| 
	.dwpsn	"man.c",1788,1
        LRETR
        ; return occurs
	.dwattr DW$419, DW_AT_end_file("man.c")
	.dwattr DW$419, DW_AT_end_line(0x6fc)
	.dwattr DW$419, DW_AT_end_column(0x01)
	.dwendtag DW$419

	.sect	".text"
	.global	_ReadDamagemonfromNVMEM

DW$420	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadDamagemonfromNVMEM"), DW_AT_symbol_name("_ReadDamagemonfromNVMEM")
	.dwattr DW$420, DW_AT_low_pc(_ReadDamagemonfromNVMEM)
	.dwattr DW$420, DW_AT_high_pc(0x00)
	.dwattr DW$420, DW_AT_begin_file("man.c")
	.dwattr DW$420, DW_AT_begin_line(0x700)
	.dwattr DW$420, DW_AT_begin_column(0x06)
	.dwattr DW$420, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$420, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",1793,1

;***************************************************************
;* FNAME: _ReadDamagemonfromNVMEM       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadDamagemonfromNVMEM:
        MOVB      AL,#0
        MOVB      XAR5,#16              ; |1804| 
        MOVL      XAR4,#_damagemon      ; |1804| 
        MOV       AH,#28858             ; |1804| 
        LCR       #_ReadNVMemory        ; |1804| 
        ; call occurs [#_ReadNVMemory] ; |1804| 
	.dwpsn	"man.c",1805,1
        LRETR
        ; return occurs
	.dwattr DW$420, DW_AT_end_file("man.c")
	.dwattr DW$420, DW_AT_end_line(0x70d)
	.dwattr DW$420, DW_AT_end_column(0x01)
	.dwendtag DW$420

	.sect	".text"
	.global	_LoadDamagemonDefaults

DW$421	.dwtag  DW_TAG_subprogram, DW_AT_name("LoadDamagemonDefaults"), DW_AT_symbol_name("_LoadDamagemonDefaults")
	.dwattr DW$421, DW_AT_low_pc(_LoadDamagemonDefaults)
	.dwattr DW$421, DW_AT_high_pc(0x00)
	.dwattr DW$421, DW_AT_begin_file("man.c")
	.dwattr DW$421, DW_AT_begin_line(0x711)
	.dwattr DW$421, DW_AT_begin_column(0x06)
	.dwattr DW$421, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$421, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",1810,1

;***************************************************************
;* FNAME: _LoadDamagemonDefaults        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_LoadDamagemonDefaults:
        MOVW      DP,#_damagemon+15
        MOV       @_damagemon+15,#1     ; |1812| 
        MOVW      DP,#_damagemon+6
        MOV       @_damagemon+6,#250    ; |1813| 
        MOVB      AL,#0
        MOVW      DP,#_damagemon+7
        MOV       @_damagemon+7,#180    ; |1814| 
        MOVW      DP,#_damagemon+8
        MOVL      XAR4,#_damalarms      ; |1833| 
        MOV       @_damagemon+8,#250    ; |1815| 
        MOVB      XAR5,#2               ; |1838| 
        MOVW      DP,#_damagemon
        MOV       @_damagemon,#0        ; |1817| 
        MOVW      DP,#_damagemon+1
        MOV       @_damagemon+1,#12500  ; |1818| 
        MOVW      DP,#_damagemon+2
        MOV       @_damagemon+2,#300    ; |1819| 
        MOV       AH,#28922             ; |1838| 
        MOVW      DP,#_damagemon+3
        MOV       @_damagemon+3,#300    ; |1820| 
        MOVW      DP,#_damagemon+4
        MOV       @_damagemon+4,#10     ; |1821| 
        MOVW      DP,#_damagemon+5
        MOV       @_damagemon+5,#20000  ; |1822| 
        MOVW      DP,#_damagemon+9
        MOV       @_damagemon+9,#0      ; |1823| 
        MOVW      DP,#_damagemon+10
        MOV       @_damagemon+10,#0     ; |1824| 
        MOVW      DP,#_damagemon+11
        MOV       @_damagemon+11,#0     ; |1825| 
        MOVW      DP,#_damagemon+12
        MOV       @_damagemon+12,#0     ; |1826| 
        MOVW      DP,#_damagemon+13
        MOV       @_damagemon+13,#4     ; |1828| 
        MOVW      DP,#_damagemon+14
        MOV       @_damagemon+14,#50    ; |1829| 
        MOV       *+XAR4[0],#0          ; |1833| 
        MOVW      DP,#_damalarms+2
        MOV       *+XAR4[1],#0          ; |1834| 
        MOV       @_damalarms+2,#0      ; |1835| 
        MOVW      DP,#_damalarms+3
        MOV       @_damalarms+3,#0      ; |1836| 
        LCR       #_WriteNVMemory       ; |1838| 
        ; call occurs [#_WriteNVMemory] ; |1838| 
        MOVB      AL,#0
        MOVB      XAR5,#1               ; |1839| 
        MOVL      XAR4,#_damalarms+2    ; |1839| 
        MOV       AH,#28926             ; |1839| 
        LCR       #_WriteNVMemory       ; |1839| 
        ; call occurs [#_WriteNVMemory] ; |1839| 
        MOVB      AL,#0
        MOVB      XAR5,#1               ; |1840| 
        MOVL      XAR4,#_damalarms+3    ; |1840| 
        MOV       AH,#28928             ; |1840| 
        LCR       #_WriteNVMemory       ; |1840| 
        ; call occurs [#_WriteNVMemory] ; |1840| 
        LCR       #_WriteDamagemontoNVMEM ; |1842| 
        ; call occurs [#_WriteDamagemontoNVMEM] ; |1842| 
	.dwpsn	"man.c",1844,1
        LRETR
        ; return occurs
	.dwattr DW$421, DW_AT_end_file("man.c")
	.dwattr DW$421, DW_AT_end_line(0x734)
	.dwattr DW$421, DW_AT_end_column(0x01)
	.dwendtag DW$421

	.sect	".text"
	.global	_MANModules

DW$422	.dwtag  DW_TAG_subprogram, DW_AT_name("MANModules"), DW_AT_symbol_name("_MANModules")
	.dwattr DW$422, DW_AT_low_pc(_MANModules)
	.dwattr DW$422, DW_AT_high_pc(0x00)
	.dwattr DW$422, DW_AT_begin_file("man.c")
	.dwattr DW$422, DW_AT_begin_line(0x73c)
	.dwattr DW$422, DW_AT_begin_column(0x06)
	.dwattr DW$422, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$422, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",1853,1

;***************************************************************
;* FNAME: _MANModules                   FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  6 SOE     *
;***************************************************************

_MANModules:
        MOVL      *SP++,XAR1
        MOVW      DP,#_settings+13
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOV       AL,@_settings+13      ; |1860| 
        ADDB      SP,#2
        BF        L224,NEQ              ; |1860| 
        ; branchcc occurs ; |1860| 
        LCR       #_MANCalibrationStages ; |1860| 
        ; call occurs [#_MANCalibrationStages] ; |1860| 
L224:    
        MOVW      DP,#_allsensors+16
        TBIT      @_allsensors+16,#1    ; |1861| 
        BF        L226,TC               ; |1861| 
        ; branchcc occurs ; |1861| 
        MOVW      DP,#_iRepaidWearReset
        MOVB      AL,#0
        MOV       @_iRepaidWearReset,#0 ; |1863| 
        LCR       #_GetModalRPM         ; |1864| 
        ; call occurs [#_GetModalRPM] ; |1864| 
        CMPB      AL,#0                 ; |1864| 
        BF        L225,NEQ              ; |1864| 
        ; branchcc occurs ; |1864| 
        MOVW      DP,#_settings+34
        MOV       @_settings+34,#0      ; |1869| 
        BF        L226,UNC              ; |1869| 
        ; branch occurs ; |1869| 
L225:    
        MOVW      DP,#_settings+34
        MOV       @_settings+34,#1      ; |1867| 
L226:    
        MOVW      DP,#_allsensors+16
        TBIT      @_allsensors+16,#0    ; |1871| 
        BF        L271,NTC              ; |1871| 
        ; branchcc occurs ; |1871| 
        MOVB      AL,#1                 ; |1875| 
        LCR       #_GetModalRPM         ; |1875| 
        ; call occurs [#_GetModalRPM] ; |1875| 
        MOVW      DP,#_allsensors+16
        MOVB      AH,#0
        TBIT      @_allsensors+16,#1    ; |1879| 
        MOV       *-SP[1],AL            ; |1875| 
        BF        L227,TC               ; |1879| 
        ; branchcc occurs ; |1879| 
        MOVW      DP,#_motion+4
        MOV       AL,@_motion+4         ; |1884| 
        BF        L229,EQ               ; |1884| 
        ; branchcc occurs ; |1884| 
        CMP       AL,#-2                ; |1884| 
        BF        L228,NEQ              ; |1884| 
        ; branchcc occurs ; |1884| 
        BF        L229,UNC              ; |1884| 
        ; branch occurs ; |1884| 
L227:    
        MOVW      DP,#_motion+4
        MOV       AL,@_motion+4         ; |1881| 
        BF        L229,EQ               ; |1881| 
        ; branchcc occurs ; |1881| 
L228:    
        CMPB      AH,#1                 ; |1885| 
        BF        L270,NEQ              ; |1885| 
        ; branchcc occurs ; |1885| 
L229:    
        MOVW      DP,#_settings+13
        MOV       AL,@_settings+13      ; |1885| 
        BF        L270,NEQ              ; |1885| 
        ; branchcc occurs ; |1885| 
        MOVW      DP,#_allsensors+2
        MOV       AL,@_allsensors+2     ; |1887| 
        BF        L230,EQ               ; |1887| 
        ; branchcc occurs ; |1887| 
        MOVW      DP,#_slave485mb+71
        MOV       AL,@_slave485mb+71    ; |1887| 
        BF        L231,EQ               ; |1887| 
        ; branchcc occurs ; |1887| 
L230:    
        MOVW      DP,#_allsensors+1
        MOVZ      AR2,@_allsensors+1    ; |1887| 
        BF        L232,UNC              ; |1887| 
        ; branch occurs ; |1887| 
L231:    
        MOVW      DP,#_allsensors
        MOVZ      AR2,@_allsensors      ; |1887| 
L232:    
        MOVZ      AR4,*-SP[1]
        MOVW      DP,#_loadlevel+4
        MOVL      ACC,@_loadlevel+4     ; |1888| 
        LCR       #_DynamicAlarmLevel   ; |1888| 
        ; call occurs [#_DynamicAlarmLevel] ; |1888| 
        MOVW      DP,#_allsensors+4
        MOV       AL,*-SP[1]            ; |1888| 
        CMP       AL,@_allsensors+4     ; |1894| 
        BF        L270,LO               ; |1894| 
        ; branchcc occurs ; |1894| 
        MOVW      DP,#_damagemon+15
        MOV       AL,@_damagemon+15     ; |1899| 
        CMPB      AL,#1                 ; |1899| 
        BF        L233,NEQ              ; |1899| 
        ; branchcc occurs ; |1899| 
        MOV       AH,*-SP[1]
        MOV       AL,AR2                ; |1902| 
        LCR       #_MANRefCalcs         ; |1902| 
        ; call occurs [#_MANRefCalcs] ; |1902| 
L233:    
        MOV       AL,AR2                ; |1907| 
        MOVB      XAR1,#0
        BF        L239,EQ               ; |1907| 
        ; branchcc occurs ; |1907| 
L234:    
DW$L$_MANModules$23$B:
	.dwpsn	"man.c",1908,0
        MOVL      XAR4,#_modalsetcounters ; |1910| 
        MOV       AL,*+XAR4[AR1]        ; |1910| 
        BF        L235,NEQ              ; |1910| 
        ; branchcc occurs ; |1910| 
DW$L$_MANModules$23$E:
DW$L$_MANModules$24$B:
        MOVL      XAR4,#_checkmanalarms ; |1911| 
        INC       *+XAR4[AR1]           ; |1911| 
        BF        L236,UNC              ; |1911| 
        ; branch occurs ; |1911| 
DW$L$_MANModules$24$E:
L235:    
DW$L$_MANModules$25$B:
        MOVL      XAR4,#_checkmanalarms ; |1910| 
        MOV       *+XAR4[AR1],#0        ; |1910| 
DW$L$_MANModules$25$E:
L236:    
DW$L$_MANModules$26$B:
        MOV       T,#18                 ; |1912| 
        MOVL      XAR4,#_sensor         ; |1912| 
        MPYXU     ACC,T,AR1             ; |1912| 
        ADDL      XAR4,ACC
        MOVL      XAR5,#_sensortempval  ; |1912| 
        MOVW      DP,#_function
        MOV       AL,*+XAR4[5]          ; |1912| 
        MOV       *+XAR5[AR1],AL        ; |1912| 
        MOV       AL,@_function         ; |1913| 
        CMPB      AL,#1                 ; |1913| 
        BF        L237,EQ               ; |1913| 
        ; branchcc occurs ; |1913| 
DW$L$_MANModules$26$E:
DW$L$_MANModules$27$B:
        MOV       *+XAR4[6],#32767      ; |1914| 
        BF        L238,UNC              ; |1914| 
        ; branch occurs ; |1914| 
DW$L$_MANModules$27$E:
L237:    
DW$L$_MANModules$28$B:
        MOVL      XAR3,#_sensortempval  ; |1913| 
        MOVL      ACC,XAR3              ; |1913| 
        ADDU      ACC,AR1               ; |1913| 
        MOVL      XAR3,ACC              ; |1913| 
        MOV       AH,*+XAR3[0]          ; |1913| 
        MOV       AL,AR1                ; |1913| 
        LCR       #_ApplyOffset         ; |1913| 
        ; call occurs [#_ApplyOffset] ; |1913| 
        MOV       *+XAR3[0],AL          ; |1913| 
DW$L$_MANModules$28$E:
L238:    
DW$L$_MANModules$29$B:
        MOV       AL,AR2                ; |1907| 
        ADDB      XAR1,#1               ; |1907| 
        CMP       AL,AR1                ; |1907| 
	.dwpsn	"man.c",1915,0
        BF        L234,HI               ; |1907| 
        ; branchcc occurs ; |1907| 
DW$L$_MANModules$29$E:
L239:    
        CMPB      AL,#0                 ; |1919| 
        MOVB      XAR1,#0
        BF        L243,EQ               ; |1919| 
        ; branchcc occurs ; |1919| 
L240:    
DW$L$_MANModules$31$B:
	.dwpsn	"man.c",1920,0
        MOVW      DP,#_function+1
        MOV       AL,@_function+1       ; |1921| 
        CMPB      AL,#1                 ; |1921| 
        BF        L241,EQ               ; |1921| 
        ; branchcc occurs ; |1921| 
DW$L$_MANModules$31$E:
DW$L$_MANModules$32$B:
        MOV       T,#18                 ; |1922| 
        MOVL      XAR4,#_sensor+7       ; |1922| 
        MPYXU     ACC,T,AR1             ; |1922| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#32767      ; |1922| 
        BF        L242,UNC              ; |1922| 
        ; branch occurs ; |1922| 
DW$L$_MANModules$32$E:
L241:    
DW$L$_MANModules$33$B:
        MOVL      XAR3,#_sensortempval  ; |1921| 
        MOVL      ACC,XAR3              ; |1921| 
        ADDU      ACC,AR1               ; |1921| 
        MOVL      XAR3,ACC              ; |1921| 
        MOVZ      AR4,*-SP[1]           ; |1921| 
        MOV       AH,*+XAR3[0]          ; |1921| 
        MOV       AL,AR1                ; |1921| 
        LCR       #_SensorCompensation  ; |1921| 
        ; call occurs [#_SensorCompensation] ; |1921| 
        MOV       *+XAR3[0],AL          ; |1921| 
DW$L$_MANModules$33$E:
L242:    
DW$L$_MANModules$34$B:
        MOV       AL,AR2                ; |1919| 
        ADDB      XAR1,#1               ; |1919| 
        CMP       AL,AR1                ; |1919| 
	.dwpsn	"man.c",1923,0
        BF        L240,HI               ; |1919| 
        ; branchcc occurs ; |1919| 
DW$L$_MANModules$34$E:
L243:    
        CMPB      AL,#0                 ; |1927| 
        MOVB      XAR1,#0
        BF        L249,EQ               ; |1927| 
        ; branchcc occurs ; |1927| 
L244:    
DW$L$_MANModules$36$B:
	.dwpsn	"man.c",1928,0
        MOVL      XAR4,#_modalsetcounters ; |1929| 
        MOV       AL,*+XAR4[AR1]        ; |1929| 
        BF        L247,NEQ              ; |1929| 
        ; branchcc occurs ; |1929| 
DW$L$_MANModules$36$E:
DW$L$_MANModules$37$B:
        MOVW      DP,#_function+2
        MOV       AL,@_function+2       ; |1931| 
        CMPB      AL,#1                 ; |1931| 
        BF        L246,NEQ              ; |1931| 
        ; branchcc occurs ; |1931| 
DW$L$_MANModules$37$E:
DW$L$_MANModules$38$B:
        MOV       AL,AR1                ; |1933| 
        MOV       AH,*-SP[1]            ; |1933| 
        LCR       #_NoiseFilterApplied  ; |1933| 
        ; call occurs [#_NoiseFilterApplied] ; |1933| 
        CMPB      AL,#1                 ; |1933| 
        BF        L245,EQ               ; |1933| 
        ; branchcc occurs ; |1933| 
DW$L$_MANModules$38$E:
DW$L$_MANModules$39$B:
        MOV       T,#18                 ; |1937| 
        MOVL      XAR4,#_sensor+10      ; |1937| 
        MPYXU     ACC,T,AR1             ; |1937| 
        ADDL      XAR4,ACC
        MOVL      XAR5,#_sensortempval  ; |1937| 
        MOV       AL,*+XAR5[AR1]        ; |1937| 
        MOV       *+XAR4[0],AL          ; |1937| 
        BF        L247,UNC              ; |1937| 
        ; branch occurs ; |1937| 
DW$L$_MANModules$39$E:
L245:    
DW$L$_MANModules$40$B:
        MOVL      XAR3,#_sensortempval  ; |1935| 
        MOVL      ACC,XAR3              ; |1935| 
        ADDU      ACC,AR1               ; |1935| 
        MOVL      XAR3,ACC              ; |1935| 
        MOV       AH,*+XAR3[0]          ; |1935| 
        MOV       AL,AR1                ; |1935| 
        LCR       #_SensorNoiseRemoval  ; |1935| 
        ; call occurs [#_SensorNoiseRemoval] ; |1935| 
        MOV       T,#18                 ; |1935| 
        MOVZ      AR6,AL                ; |1935| 
        MOV       *+XAR3[0],AL          ; |1935| 
        MOVL      XAR4,#_sensor+10      ; |1935| 
        MPYXU     ACC,T,AR1             ; |1935| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],AR6         ; |1935| 
        BF        L247,UNC              ; |1936| 
        ; branch occurs ; |1936| 
DW$L$_MANModules$40$E:
L246:    
DW$L$_MANModules$41$B:
        MOV       T,#18                 ; |1941| 
        MOVL      XAR4,#_sensor         ; |1941| 
        MPYXU     ACC,T,AR1             ; |1941| 
        MOVB      XAR0,#8               ; |1941| 
        ADDL      XAR4,ACC
        MOVL      XAR5,#_sensortempval  ; |1942| 
        MOV       AH,#18175
        MOV       AL,#65024
        MOVL      *+XAR4[AR0],ACC       ; |1941| 
        MOVB      XAR0,#10              ; |1942| 
        MOV       AL,*+XAR5[AR1]        ; |1942| 
        MOV       *+XAR4[AR0],AL        ; |1942| 
DW$L$_MANModules$41$E:
L247:    
DW$L$_MANModules$42$B:
        MOV       T,#18                 ; |1946| 
        MOVL      XAR4,#_sensor         ; |1946| 
        MPYXU     ACC,T,AR1             ; |1946| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#0          ; |1946| 
        BF        L248,TC               ; |1946| 
        ; branchcc occurs ; |1946| 
DW$L$_MANModules$42$E:
DW$L$_MANModules$43$B:
        MOVB      XAR0,#10              ; |1946| 
        MOV       *+XAR4[AR0],#-32761   ; |1946| 
DW$L$_MANModules$43$E:
L248:    
DW$L$_MANModules$44$B:
        MOV       AL,AR2                ; |1927| 
        ADDB      XAR1,#1               ; |1927| 
        CMP       AL,AR1                ; |1927| 
	.dwpsn	"man.c",1947,0
        BF        L244,HI               ; |1927| 
        ; branchcc occurs ; |1927| 
DW$L$_MANModules$44$E:
L249:    
        CMPB      AL,#0                 ; |1952| 
        MOVB      XAR1,#0
        BF        L253,EQ               ; |1952| 
        ; branchcc occurs ; |1952| 
L250:    
DW$L$_MANModules$46$B:
	.dwpsn	"man.c",1953,0
        MOVW      DP,#_function+3
        MOV       AL,@_function+3       ; |1954| 
        CMPB      AL,#1                 ; |1954| 
        BF        L251,EQ               ; |1954| 
        ; branchcc occurs ; |1954| 
DW$L$_MANModules$46$E:
DW$L$_MANModules$47$B:
        MOV       T,#18                 ; |1955| 
        MOVL      XAR4,#_sensor+11      ; |1955| 
        MPYXU     ACC,T,AR1             ; |1955| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#32767      ; |1955| 
        BF        L252,UNC              ; |1955| 
        ; branch occurs ; |1955| 
DW$L$_MANModules$47$E:
L251:    
DW$L$_MANModules$48$B:
        MOVL      XAR3,#_sensortempval  ; |1954| 
        MOVL      ACC,XAR3              ; |1954| 
        ADDU      ACC,AR1               ; |1954| 
        MOVL      XAR3,ACC              ; |1954| 
        MOV       AH,*+XAR3[0]          ; |1954| 
        MOV       AL,AR1                ; |1954| 
        LCR       #_SensorDeviation     ; |1954| 
        ; call occurs [#_SensorDeviation] ; |1954| 
        MOV       *+XAR3[0],AL          ; |1954| 
DW$L$_MANModules$48$E:
L252:    
DW$L$_MANModules$49$B:
        MOV       AL,AR2                ; |1952| 
        ADDB      XAR1,#1               ; |1952| 
        CMP       AL,AR1                ; |1952| 
	.dwpsn	"man.c",1956,0
        BF        L250,HI               ; |1952| 
        ; branchcc occurs ; |1952| 
DW$L$_MANModules$49$E:
L253:    
        LSR       AL,15                 ; |1957| 
        MOVB      XAR1,#0
        ADD       AL,AR2                ; |1957| 
        AND       AL,AL,#0xfffe         ; |1957| 
        BF        L257,EQ               ; |1957| 
        ; branchcc occurs ; |1957| 
L254:    
DW$L$_MANModules$51$B:
	.dwpsn	"man.c",1958,0
        MOVW      DP,#_function+4
        MOV       AL,@_function+4       ; |1959| 
        CMPB      AL,#1                 ; |1959| 
        BF        L255,EQ               ; |1959| 
        ; branchcc occurs ; |1959| 
DW$L$_MANModules$51$E:
DW$L$_MANModules$52$B:
        MOVU      ACC,AR1
        MOVL      XAR4,#_cylinders+2    ; |1960| 
        LSL       ACC,2                 ; |1960| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#32767      ; |1960| 
        BF        L256,UNC              ; |1960| 
        ; branch occurs ; |1960| 
DW$L$_MANModules$52$E:
L255:    
DW$L$_MANModules$53$B:
        MOV       AL,AR1                ; |1959| 
        LCR       #_CylinderAverage     ; |1959| 
        ; call occurs [#_CylinderAverage] ; |1959| 
DW$L$_MANModules$53$E:
L256:    
DW$L$_MANModules$54$B:
        MOV       AL,AR2
        LSR       AL,15                 ; |1957| 
        ADDB      XAR1,#1               ; |1957| 
        ADD       AL,AR2                ; |1957| 
        ASR       AL,1                  ; |1957| 
        CMP       AL,AR1                ; |1957| 
	.dwpsn	"man.c",1961,0
        BF        L254,HI               ; |1957| 
        ; branchcc occurs ; |1957| 
DW$L$_MANModules$54$E:
L257:    
        MOV       AL,AR2                ; |1962| 
        LSR       AL,15                 ; |1962| 
        MOVB      XAR1,#0
        ADD       AL,AR2                ; |1962| 
        AND       AL,AL,#0xfffe         ; |1962| 
        BF        L261,EQ               ; |1962| 
        ; branchcc occurs ; |1962| 
L258:    
DW$L$_MANModules$56$B:
	.dwpsn	"man.c",1963,0
        MOVW      DP,#_function+5
        MOV       AL,@_function+5       ; |1964| 
        CMPB      AL,#1                 ; |1964| 
        BF        L259,NEQ              ; |1964| 
        ; branchcc occurs ; |1964| 
DW$L$_MANModules$56$E:
DW$L$_MANModules$57$B:
        MOVW      DP,#_function+4
        MOV       AL,@_function+4       ; |1964| 
        CMPB      AL,#1                 ; |1964| 
        BF        L259,NEQ              ; |1964| 
        ; branchcc occurs ; |1964| 
DW$L$_MANModules$57$E:
DW$L$_MANModules$58$B:
        MOV       AL,AR1                ; |1964| 
        LCR       #_CylinderDeviation   ; |1964| 
        ; call occurs [#_CylinderDeviation] ; |1964| 
        BF        L260,UNC              ; |1964| 
        ; branch occurs ; |1964| 
DW$L$_MANModules$58$E:
L259:    
DW$L$_MANModules$59$B:
        MOVU      ACC,AR1
        MOVL      XAR4,#_cylinders+3    ; |1965| 
        LSL       ACC,2                 ; |1965| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#32767      ; |1965| 
DW$L$_MANModules$59$E:
L260:    
DW$L$_MANModules$60$B:
        MOV       AL,AR2
        LSR       AL,15                 ; |1962| 
        ADDB      XAR1,#1               ; |1962| 
        ADD       AL,AR2                ; |1962| 
        ASR       AL,1                  ; |1962| 
        CMP       AL,AR1                ; |1962| 
	.dwpsn	"man.c",1966,0
        BF        L258,HI               ; |1962| 
        ; branchcc occurs ; |1962| 
DW$L$_MANModules$60$E:
L261:    
        MOVW      DP,#_allsensors+16
        TBIT      @_allsensors+16,#1    ; |1971| 
        BF        L262,TC               ; |1971| 
        ; branchcc occurs ; |1971| 
        LCR       #_PreWarningCalc      ; |1971| 
        ; call occurs [#_PreWarningCalc] ; |1971| 
L262:    
        MOVW      DP,#_allsensors+43
        MOV       AL,@_allsensors+43    ; |1975| 
        BF        L268,EQ               ; |1975| 
        ; branchcc occurs ; |1975| 
        CMP       AL,*-SP[1]            ; |1975| 
        BF        L268,HI               ; |1975| 
        ; branchcc occurs ; |1975| 
        MOV       AL,*-SP[1]
        MOVW      DP,#_allsensors+44
        CMP       AL,@_allsensors+44    ; |1975| 
        BF        L268,HI               ; |1975| 
        ; branchcc occurs ; |1975| 
        MOVL      XAR4,#_bitalarmlist   ; |1981| 
	.dwpsn	"man.c",1980,0
        MOVB      XAR0,#0
L263:    
DW$L$_MANModules$67$B:
        MOV       *+XAR4[AR0],#0        ; |1981| 
        ADDB      XAR0,#1               ; |1980| 
        MOV       AL,AR0                ; |1980| 
        CMPB      AL,#3                 ; |1980| 
	.dwpsn	"man.c",1982,0
        BF        L263,LO               ; |1980| 
        ; branchcc occurs ; |1980| 
DW$L$_MANModules$67$E:
        MOVB      ACC,#8
        AND       *+XAR4[3],#0xff00     ; |1983| 
        ADDL      ACC,XAR4
        MOVL      XAR4,ACC              ; |1984| 
        AND       *+XAR4[0],#0x0fff     ; |1984| 
        MOVL      XAR4,#_bitalarmlist   ; |1986| 
	.dwpsn	"man.c",1985,0
        MOVB      XAR0,#9               ; |1985| 
L264:    
DW$L$_MANModules$69$B:
        MOV       *+XAR4[AR0],#0        ; |1986| 
        ADDB      XAR0,#1               ; |1985| 
        MOV       AL,AR0                ; |1985| 
        CMPB      AL,#14                ; |1985| 
	.dwpsn	"man.c",1987,0
        BF        L264,LO               ; |1985| 
        ; branchcc occurs ; |1985| 
DW$L$_MANModules$69$E:
        MOVL      XAR5,#_bitalarmlist   ; |1988| 
        MOVB      ACC,#15
        ADDL      ACC,XAR5
        MOVL      XAR4,ACC              ; |1988| 
        MOVB      ACC,#16
        AND       *+XAR4[0],#0x0fff     ; |1988| 
        ADDL      ACC,XAR5
        MOVL      XAR4,ACC              ; |1989| 
        MOVB      ACC,#18
        AND       *+XAR4[0],#0xfc00     ; |1989| 
        ADDL      ACC,XAR5
        MOVL      XAR4,ACC              ; |1990| 
        AND       *+XAR4[0],#0x0fff     ; |1990| 
        MOVL      XAR4,#_bitalarmlist   ; |1992| 
	.dwpsn	"man.c",1991,0
        MOVB      XAR0,#19              ; |1991| 
L265:    
DW$L$_MANModules$71$B:
        MOV       *+XAR4[AR0],#0        ; |1992| 
        ADDB      XAR0,#1               ; |1991| 
        MOV       AL,AR0                ; |1991| 
        CMPB      AL,#22                ; |1991| 
	.dwpsn	"man.c",1993,0
        BF        L265,LO               ; |1991| 
        ; branchcc occurs ; |1991| 
DW$L$_MANModules$71$E:
        MOVW      DP,#_bitalarmlist+22
        MOV       T,#18                 ; |1998| 
        AND       @_bitalarmlist+22,#0xfff0 ; |1994| 
	.dwpsn	"man.c",1996,0
        MOVB      XAR0,#0
L266:    
DW$L$_MANModules$73$B:
	.dwpsn	"man.c",1997,0
        MPYXU     ACC,T,AR0             ; |1998| 
        MOVL      XAR4,#_sensor+1       ; |1998| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#0          ; |1999| 
        MOVL      XAR4,#_status3        ; |2001| 
        MOV       *+XAR4[AR0],#0        ; |2001| 
        ADDB      XAR0,#1               ; |1996| 
        MOV       AL,AR0                ; |1996| 
        CMPB      AL,#28                ; |1996| 
	.dwpsn	"man.c",2002,0
        BF        L266,LO               ; |1996| 
        ; branchcc occurs ; |1996| 
DW$L$_MANModules$73$E:
	.dwpsn	"man.c",2003,0
        MOVB      XAR0,#0
L267:    
DW$L$_MANModules$75$B:
	.dwpsn	"man.c",2004,0
        MOVU      ACC,AR0
        MOVL      XAR4,#_cylinders+1    ; |2005| 
        LSL       ACC,2                 ; |2005| 
        ADDL      XAR4,ACC
        ADDB      XAR0,#1               ; |2003| 
        MOV       AL,AR0                ; |2003| 
        CMPB      AL,#14                ; |2003| 
        MOV       *+XAR4[0],#0          ; |2006| 
	.dwpsn	"man.c",2007,0
        BF        L267,LO               ; |2003| 
        ; branchcc occurs ; |2003| 
DW$L$_MANModules$75$E:
        MOVW      DP,#_iBarred
        MOV       @_iBarred,#1          ; |2009| 
        BF        L270,UNC              ; |2010| 
        ; branch occurs ; |2010| 
L268:    
        MOVW      DP,#_iBarred
        MOVB      AH,#1                 ; |2014| 
        MOV       @_iBarred,#0          ; |2013| 
        MOVW      DP,#_speedcompcoeffs
        MOV       AL,@_speedcompcoeffs  ; |2014| 
        CMPB      AL,#2                 ; |2014| 
        BF        L269,LOS              ; |2014| 
        ; branchcc occurs ; |2014| 
        CMPB      AL,#11                ; |2014| 
        BF        L269,EQ               ; |2014| 
        ; branchcc occurs ; |2014| 
        MOVB      AH,#0
L269:    
        MOVW      DP,#_PauseAlarm
        MOV       AL,*-SP[1]            ; |2014| 
        MOV       @_PauseAlarm,AH       ; |2014| 
        LCR       #_MANAlarmChecks      ; |2014| 
        ; call occurs [#_MANAlarmChecks] ; |2014| 
L270:    
        MOVW      DP,#_allsensors+16
        AND       @_allsensors+16,#0xfffe ; |2020| 
L271:    
        MOVB      AL,#0
        LCR       #_GetModalRPM         ; |2026| 
        ; call occurs [#_GetModalRPM] ; |2026| 
        MOVW      DP,#_allsensors+37
        CMP       AL,@_allsensors+37    ; |2027| 
        MOV       *-SP[1],AL            ; |2026| 
        BF        L272,HI               ; |2027| 
        ; branchcc occurs ; |2027| 
        MOV       AL,#0
        MOV       AH,#0
        MOVW      DP,#_dynalarmlevels
        MOVL      @_dynalarmlevels,ACC  ; |2030| 
L272:    
        SUBB      SP,#2
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"man.c",2032,1
        LRETR
        ; return occurs

DW$423	.dwtag  DW_TAG_loop
	.dwattr DW$423, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L267:1:1473840056")
	.dwattr DW$423, DW_AT_begin_file("man.c")
	.dwattr DW$423, DW_AT_begin_line(0x7d3)
	.dwattr DW$423, DW_AT_end_line(0x7d7)
DW$424	.dwtag  DW_TAG_loop_range
	.dwattr DW$424, DW_AT_low_pc(DW$L$_MANModules$75$B)
	.dwattr DW$424, DW_AT_high_pc(DW$L$_MANModules$75$E)
	.dwendtag DW$423


DW$425	.dwtag  DW_TAG_loop
	.dwattr DW$425, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L266:1:1473840056")
	.dwattr DW$425, DW_AT_begin_file("man.c")
	.dwattr DW$425, DW_AT_begin_line(0x7cc)
	.dwattr DW$425, DW_AT_end_line(0x7d2)
DW$426	.dwtag  DW_TAG_loop_range
	.dwattr DW$426, DW_AT_low_pc(DW$L$_MANModules$73$B)
	.dwattr DW$426, DW_AT_high_pc(DW$L$_MANModules$73$E)
	.dwendtag DW$425


DW$427	.dwtag  DW_TAG_loop
	.dwattr DW$427, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L265:1:1473840056")
	.dwattr DW$427, DW_AT_begin_file("man.c")
	.dwattr DW$427, DW_AT_begin_line(0x7c7)
	.dwattr DW$427, DW_AT_end_line(0x7c9)
DW$428	.dwtag  DW_TAG_loop_range
	.dwattr DW$428, DW_AT_low_pc(DW$L$_MANModules$71$B)
	.dwattr DW$428, DW_AT_high_pc(DW$L$_MANModules$71$E)
	.dwendtag DW$427


DW$429	.dwtag  DW_TAG_loop
	.dwattr DW$429, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L264:1:1473840056")
	.dwattr DW$429, DW_AT_begin_file("man.c")
	.dwattr DW$429, DW_AT_begin_line(0x7c1)
	.dwattr DW$429, DW_AT_end_line(0x7c3)
DW$430	.dwtag  DW_TAG_loop_range
	.dwattr DW$430, DW_AT_low_pc(DW$L$_MANModules$69$B)
	.dwattr DW$430, DW_AT_high_pc(DW$L$_MANModules$69$E)
	.dwendtag DW$429


DW$431	.dwtag  DW_TAG_loop
	.dwattr DW$431, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L263:1:1473840056")
	.dwattr DW$431, DW_AT_begin_file("man.c")
	.dwattr DW$431, DW_AT_begin_line(0x7bc)
	.dwattr DW$431, DW_AT_end_line(0x7be)
DW$432	.dwtag  DW_TAG_loop_range
	.dwattr DW$432, DW_AT_low_pc(DW$L$_MANModules$67$B)
	.dwattr DW$432, DW_AT_high_pc(DW$L$_MANModules$67$E)
	.dwendtag DW$431


DW$433	.dwtag  DW_TAG_loop
	.dwattr DW$433, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L258:1:1473840056")
	.dwattr DW$433, DW_AT_begin_file("man.c")
	.dwattr DW$433, DW_AT_begin_line(0x7aa)
	.dwattr DW$433, DW_AT_end_line(0x7ae)
DW$434	.dwtag  DW_TAG_loop_range
	.dwattr DW$434, DW_AT_low_pc(DW$L$_MANModules$56$B)
	.dwattr DW$434, DW_AT_high_pc(DW$L$_MANModules$56$E)
DW$435	.dwtag  DW_TAG_loop_range
	.dwattr DW$435, DW_AT_low_pc(DW$L$_MANModules$57$B)
	.dwattr DW$435, DW_AT_high_pc(DW$L$_MANModules$57$E)
DW$436	.dwtag  DW_TAG_loop_range
	.dwattr DW$436, DW_AT_low_pc(DW$L$_MANModules$58$B)
	.dwattr DW$436, DW_AT_high_pc(DW$L$_MANModules$58$E)
DW$437	.dwtag  DW_TAG_loop_range
	.dwattr DW$437, DW_AT_low_pc(DW$L$_MANModules$59$B)
	.dwattr DW$437, DW_AT_high_pc(DW$L$_MANModules$59$E)
DW$438	.dwtag  DW_TAG_loop_range
	.dwattr DW$438, DW_AT_low_pc(DW$L$_MANModules$60$B)
	.dwattr DW$438, DW_AT_high_pc(DW$L$_MANModules$60$E)
	.dwendtag DW$433


DW$439	.dwtag  DW_TAG_loop
	.dwattr DW$439, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L254:1:1473840056")
	.dwattr DW$439, DW_AT_begin_file("man.c")
	.dwattr DW$439, DW_AT_begin_line(0x7a5)
	.dwattr DW$439, DW_AT_end_line(0x7a9)
DW$440	.dwtag  DW_TAG_loop_range
	.dwattr DW$440, DW_AT_low_pc(DW$L$_MANModules$51$B)
	.dwattr DW$440, DW_AT_high_pc(DW$L$_MANModules$51$E)
DW$441	.dwtag  DW_TAG_loop_range
	.dwattr DW$441, DW_AT_low_pc(DW$L$_MANModules$52$B)
	.dwattr DW$441, DW_AT_high_pc(DW$L$_MANModules$52$E)
DW$442	.dwtag  DW_TAG_loop_range
	.dwattr DW$442, DW_AT_low_pc(DW$L$_MANModules$53$B)
	.dwattr DW$442, DW_AT_high_pc(DW$L$_MANModules$53$E)
DW$443	.dwtag  DW_TAG_loop_range
	.dwattr DW$443, DW_AT_low_pc(DW$L$_MANModules$54$B)
	.dwattr DW$443, DW_AT_high_pc(DW$L$_MANModules$54$E)
	.dwendtag DW$439


DW$444	.dwtag  DW_TAG_loop
	.dwattr DW$444, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L250:1:1473840056")
	.dwattr DW$444, DW_AT_begin_file("man.c")
	.dwattr DW$444, DW_AT_begin_line(0x7a0)
	.dwattr DW$444, DW_AT_end_line(0x7a4)
DW$445	.dwtag  DW_TAG_loop_range
	.dwattr DW$445, DW_AT_low_pc(DW$L$_MANModules$46$B)
	.dwattr DW$445, DW_AT_high_pc(DW$L$_MANModules$46$E)
DW$446	.dwtag  DW_TAG_loop_range
	.dwattr DW$446, DW_AT_low_pc(DW$L$_MANModules$47$B)
	.dwattr DW$446, DW_AT_high_pc(DW$L$_MANModules$47$E)
DW$447	.dwtag  DW_TAG_loop_range
	.dwattr DW$447, DW_AT_low_pc(DW$L$_MANModules$48$B)
	.dwattr DW$447, DW_AT_high_pc(DW$L$_MANModules$48$E)
DW$448	.dwtag  DW_TAG_loop_range
	.dwattr DW$448, DW_AT_low_pc(DW$L$_MANModules$49$B)
	.dwattr DW$448, DW_AT_high_pc(DW$L$_MANModules$49$E)
	.dwendtag DW$444


DW$449	.dwtag  DW_TAG_loop
	.dwattr DW$449, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L244:1:1473840056")
	.dwattr DW$449, DW_AT_begin_file("man.c")
	.dwattr DW$449, DW_AT_begin_line(0x787)
	.dwattr DW$449, DW_AT_end_line(0x79b)
DW$450	.dwtag  DW_TAG_loop_range
	.dwattr DW$450, DW_AT_low_pc(DW$L$_MANModules$36$B)
	.dwattr DW$450, DW_AT_high_pc(DW$L$_MANModules$36$E)
DW$451	.dwtag  DW_TAG_loop_range
	.dwattr DW$451, DW_AT_low_pc(DW$L$_MANModules$37$B)
	.dwattr DW$451, DW_AT_high_pc(DW$L$_MANModules$37$E)
DW$452	.dwtag  DW_TAG_loop_range
	.dwattr DW$452, DW_AT_low_pc(DW$L$_MANModules$38$B)
	.dwattr DW$452, DW_AT_high_pc(DW$L$_MANModules$38$E)
DW$453	.dwtag  DW_TAG_loop_range
	.dwattr DW$453, DW_AT_low_pc(DW$L$_MANModules$39$B)
	.dwattr DW$453, DW_AT_high_pc(DW$L$_MANModules$39$E)
DW$454	.dwtag  DW_TAG_loop_range
	.dwattr DW$454, DW_AT_low_pc(DW$L$_MANModules$40$B)
	.dwattr DW$454, DW_AT_high_pc(DW$L$_MANModules$40$E)
DW$455	.dwtag  DW_TAG_loop_range
	.dwattr DW$455, DW_AT_low_pc(DW$L$_MANModules$41$B)
	.dwattr DW$455, DW_AT_high_pc(DW$L$_MANModules$41$E)
DW$456	.dwtag  DW_TAG_loop_range
	.dwattr DW$456, DW_AT_low_pc(DW$L$_MANModules$42$B)
	.dwattr DW$456, DW_AT_high_pc(DW$L$_MANModules$42$E)
DW$457	.dwtag  DW_TAG_loop_range
	.dwattr DW$457, DW_AT_low_pc(DW$L$_MANModules$43$B)
	.dwattr DW$457, DW_AT_high_pc(DW$L$_MANModules$43$E)
DW$458	.dwtag  DW_TAG_loop_range
	.dwattr DW$458, DW_AT_low_pc(DW$L$_MANModules$44$B)
	.dwattr DW$458, DW_AT_high_pc(DW$L$_MANModules$44$E)
	.dwendtag DW$449


DW$459	.dwtag  DW_TAG_loop
	.dwattr DW$459, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L240:1:1473840056")
	.dwattr DW$459, DW_AT_begin_file("man.c")
	.dwattr DW$459, DW_AT_begin_line(0x77f)
	.dwattr DW$459, DW_AT_end_line(0x783)
DW$460	.dwtag  DW_TAG_loop_range
	.dwattr DW$460, DW_AT_low_pc(DW$L$_MANModules$31$B)
	.dwattr DW$460, DW_AT_high_pc(DW$L$_MANModules$31$E)
DW$461	.dwtag  DW_TAG_loop_range
	.dwattr DW$461, DW_AT_low_pc(DW$L$_MANModules$32$B)
	.dwattr DW$461, DW_AT_high_pc(DW$L$_MANModules$32$E)
DW$462	.dwtag  DW_TAG_loop_range
	.dwattr DW$462, DW_AT_low_pc(DW$L$_MANModules$33$B)
	.dwattr DW$462, DW_AT_high_pc(DW$L$_MANModules$33$E)
DW$463	.dwtag  DW_TAG_loop_range
	.dwattr DW$463, DW_AT_low_pc(DW$L$_MANModules$34$B)
	.dwattr DW$463, DW_AT_high_pc(DW$L$_MANModules$34$E)
	.dwendtag DW$459


DW$464	.dwtag  DW_TAG_loop
	.dwattr DW$464, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L234:1:1473840056")
	.dwattr DW$464, DW_AT_begin_file("man.c")
	.dwattr DW$464, DW_AT_begin_line(0x773)
	.dwattr DW$464, DW_AT_end_line(0x77b)
DW$465	.dwtag  DW_TAG_loop_range
	.dwattr DW$465, DW_AT_low_pc(DW$L$_MANModules$23$B)
	.dwattr DW$465, DW_AT_high_pc(DW$L$_MANModules$23$E)
DW$466	.dwtag  DW_TAG_loop_range
	.dwattr DW$466, DW_AT_low_pc(DW$L$_MANModules$24$B)
	.dwattr DW$466, DW_AT_high_pc(DW$L$_MANModules$24$E)
DW$467	.dwtag  DW_TAG_loop_range
	.dwattr DW$467, DW_AT_low_pc(DW$L$_MANModules$25$B)
	.dwattr DW$467, DW_AT_high_pc(DW$L$_MANModules$25$E)
DW$468	.dwtag  DW_TAG_loop_range
	.dwattr DW$468, DW_AT_low_pc(DW$L$_MANModules$26$B)
	.dwattr DW$468, DW_AT_high_pc(DW$L$_MANModules$26$E)
DW$469	.dwtag  DW_TAG_loop_range
	.dwattr DW$469, DW_AT_low_pc(DW$L$_MANModules$27$B)
	.dwattr DW$469, DW_AT_high_pc(DW$L$_MANModules$27$E)
DW$470	.dwtag  DW_TAG_loop_range
	.dwattr DW$470, DW_AT_low_pc(DW$L$_MANModules$28$B)
	.dwattr DW$470, DW_AT_high_pc(DW$L$_MANModules$28$E)
DW$471	.dwtag  DW_TAG_loop_range
	.dwattr DW$471, DW_AT_low_pc(DW$L$_MANModules$29$B)
	.dwattr DW$471, DW_AT_high_pc(DW$L$_MANModules$29$E)
	.dwendtag DW$464

	.dwattr DW$422, DW_AT_end_file("man.c")
	.dwattr DW$422, DW_AT_end_line(0x7f0)
	.dwattr DW$422, DW_AT_end_column(0x01)
	.dwendtag DW$422

	.sect	".text"
	.global	_SensorSlowDown

DW$472	.dwtag  DW_TAG_subprogram, DW_AT_name("SensorSlowDown"), DW_AT_symbol_name("_SensorSlowDown")
	.dwattr DW$472, DW_AT_low_pc(_SensorSlowDown)
	.dwattr DW$472, DW_AT_high_pc(0x00)
	.dwattr DW$472, DW_AT_begin_file("man.c")
	.dwattr DW$472, DW_AT_begin_line(0x7f4)
	.dwattr DW$472, DW_AT_begin_column(0x06)
	.dwattr DW$472, DW_AT_frame_base[DW_OP_breg20 -38]
	.dwattr DW$472, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",2037,1

;***************************************************************
;* FNAME: _SensorSlowDown               FR SIZE:  36           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 30 Auto,  6 SOE     *
;***************************************************************

_SensorSlowDown:
;* AL    assigned to _chan
DW$473	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$473, DW_AT_type(*DW$T$11)
	.dwattr DW$473, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _val
DW$474	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$474, DW_AT_type(*DW$T$10)
	.dwattr DW$474, DW_AT_location[DW_OP_reg1]
;* AR4   assigned to _rpm
DW$475	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$475, DW_AT_type(*DW$T$11)
	.dwattr DW$475, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVZ      AR1,AL                ; |2037| 
        MOVL      *SP++,XAR3
        MOVZ      AR2,AR4               ; |2037| 
        ADDB      SP,#30
        MOVZ      AR4,SP                ; |2045| 
        MOVZ      AR3,AH                ; |2037| 
        MOVB      XAR5,#0
        MOVB      ACC,#30
        SUBB      XAR4,#30              ; |2045| 
        LCR       #_memset              ; |2045| 
        ; call occurs [#_memset] ; |2045| 
        MOVW      DP,#_allsensors+37
        MOV       AL,AR2                ; |2045| 
        CMP       AL,@_allsensors+37    ; |2048| 
        BF        L274,LO               ; |2048| 
        ; branchcc occurs ; |2048| 
        MOVW      DP,#_timers+66
        MOV       AL,@_timers+66        ; |2048| 
        BF        L274,NEQ              ; |2048| 
        ; branchcc occurs ; |2048| 
        MOV       T,#18                 ; |2050| 
        MOVL      XAR4,#_sensor         ; |2050| 
        MPYXU     ACC,T,AR1             ; |2050| 
        ADDL      XAR4,ACC
        MOVL      XAR2,XAR4             ; |2050| 
        MOV       AL,*+XAR2[0]          ; |2050| 
        AND       AH,AL,#0x0001         ; |2050| 
        BF        L274,EQ               ; |2050| 
        ; branchcc occurs ; |2050| 
        ANDB      AL,#4                 ; |2050| 
        BF        L274,NEQ              ; |2050| 
        ; branchcc occurs ; |2050| 
        SETC      SXM
        MOV       AL,AR3                ; |2053| 
        MOV       ACC,AL                ; |2053| 
        ABS       ACC                   ; |2053| 
        MOVZ      AR3,AL                ; |2053| 
        MOVW      DP,#_settings+24
        MOV       AH,@_settings+24      ; |2052| 
        CMP       AH,AR3                ; |2054| 
        BF        L273,GT               ; |2054| 
        ; branchcc occurs ; |2054| 
        TBIT      *+XAR2[1],#0          ; |2054| 
        BF        L273,TC               ; |2054| 
        ; branchcc occurs ; |2054| 
        MOV       AL,*+XAR2[1]          ; |2056| 
        ORB       AL,#0x04              ; |2056| 
        MOV       *+XAR2[1],AL          ; |2056| 
        ANDB      AL,#8                 ; |2057| 
        BF        L274,NEQ              ; |2057| 
        ; branchcc occurs ; |2057| 
        MOVB      AL,#28                ; |2060| 
        ADD       AL,AR1                ; |2060| 
        LCR       #_SetAlarmEvent       ; |2060| 
        ; call occurs [#_SetAlarmEvent] ; |2060| 
        MOV       AL,#14305             ; |2066| 
        ADD       AL,AR1                ; |2066| 
        MOV       PH,#0
        MOV       PL,#1
        MOV       ACC,AL << #1          ; |2066| 
        OR        *+XAR2[1],#0x0008     ; |2061| 
        MOV       AH,AL                 ; |2066| 
        ADDUL     P,XAR2
        MOVL      XAR4,P                ; |2066| 
        MOVB      XAR5,#1               ; |2066| 
        MOVB      AL,#0
        LCR       #_WriteNVMemory       ; |2066| 
        ; call occurs [#_WriteNVMemory] ; |2066| 
        TBIT      *+XAR2[0],#0          ; |2066| 
        BF        L275,TC               ; |2066| 
        ; branchcc occurs ; |2066| 
        BF        L276,UNC              ; |2066| 
        ; branch occurs ; |2066| 
L273:    
        MOVW      DP,#_allsensors+7
        SUB       AH,@_allsensors+7     ; |2071| 
        CMP       AH,AR3                ; |2071| 
        BF        L276,GEQ              ; |2071| 
        ; branchcc occurs ; |2071| 
L274:    
        MOVB      AL,#0
        CMPB      AL,#1                 ; |2081| 
        BF        L276,EQ               ; |2081| 
        ; branchcc occurs ; |2081| 
        MOV       T,#18                 ; |2081| 
        MOVL      XAR4,#_sensor         ; |2081| 
        MPYXU     ACC,T,AR1             ; |2081| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#0          ; |2081| 
        BF        L276,NTC              ; |2081| 
        ; branchcc occurs ; |2081| 
L275:    
        MOV       T,#18                 ; |2081| 
        MOVL      XAR4,#_sensor         ; |2081| 
        MPYXU     ACC,T,AR1             ; |2081| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#2          ; |2081| 
        BF        L276,TC               ; |2081| 
        ; branchcc occurs ; |2081| 
        MOVW      DP,#_PauseAlarm
        MOV       AL,@_PauseAlarm       ; |2081| 
        CMPB      AL,#1                 ; |2081| 
        BF        L278,NEQ              ; |2081| 
        ; branchcc occurs ; |2081| 
L276:    
        MOVB      AL,#28                ; |2082| 
        ADD       AL,AR1                ; |2082| 
        LCR       #_CheckAlarmBitSet    ; |2082| 
        ; call occurs [#_CheckAlarmBitSet] ; |2082| 
        CMPB      AL,#1                 ; |2082| 
        BF        L277,EQ               ; |2082| 
        ; branchcc occurs ; |2082| 
        MOV       T,#18                 ; |2082| 
        MOVL      XAR4,#_sensor+1       ; |2082| 
        MPYXU     ACC,T,AR1             ; |2082| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#3          ; |2082| 
        BF        L278,NTC              ; |2082| 
        ; branchcc occurs ; |2082| 
L277:    
        MOVB      AL,#28                ; |2087| 
        ADD       AL,AR1                ; |2087| 
        LCR       #_ClearAlarmEvent     ; |2087| 
        ; call occurs [#_ClearAlarmEvent] ; |2087| 
        MOV       T,#18                 ; |2088| 
        MOVL      XAR4,#_sensor         ; |2088| 
        MPYXU     ACC,T,AR1             ; |2088| 
        ADDL      XAR4,ACC
        MOV       AL,#14305             ; |2090| 
        ADD       AL,AR1                ; |2090| 
        MOV       PH,#0
        MOV       PL,#1
        MOV       ACC,AL << #1          ; |2090| 
        AND       *+XAR4[1],#0xfff3     ; |2088| 
        MOV       AH,AL                 ; |2090| 
        ADDUL     P,XAR4
        MOVL      XAR4,P                ; |2090| 
        MOVB      AL,#0
        MOVB      XAR5,#1               ; |2090| 
        LCR       #_WriteNVMemory       ; |2090| 
        ; call occurs [#_WriteNVMemory] ; |2090| 
L278:    
        SUBB      SP,#30
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"man.c",2094,1
        LRETR
        ; return occurs
	.dwattr DW$472, DW_AT_end_file("man.c")
	.dwattr DW$472, DW_AT_end_line(0x82e)
	.dwattr DW$472, DW_AT_end_column(0x01)
	.dwendtag DW$472

	.sect	".text"
	.global	_SensorAlarm

DW$476	.dwtag  DW_TAG_subprogram, DW_AT_name("SensorAlarm"), DW_AT_symbol_name("_SensorAlarm")
	.dwattr DW$476, DW_AT_low_pc(_SensorAlarm)
	.dwattr DW$476, DW_AT_high_pc(0x00)
	.dwattr DW$476, DW_AT_begin_file("man.c")
	.dwattr DW$476, DW_AT_begin_line(0x834)
	.dwattr DW$476, DW_AT_begin_column(0x06)
	.dwattr DW$476, DW_AT_frame_base[DW_OP_breg20 -38]
	.dwattr DW$476, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",2101,1

;***************************************************************
;* FNAME: _SensorAlarm                  FR SIZE:  36           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 30 Auto,  6 SOE     *
;***************************************************************

_SensorAlarm:
;* AL    assigned to _chan
DW$477	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$477, DW_AT_type(*DW$T$11)
	.dwattr DW$477, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _val
DW$478	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$478, DW_AT_type(*DW$T$10)
	.dwattr DW$478, DW_AT_location[DW_OP_reg1]
;* AR4   assigned to _rpm
DW$479	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$479, DW_AT_type(*DW$T$11)
	.dwattr DW$479, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVZ      AR1,AL                ; |2101| 
        MOVL      *SP++,XAR3
        MOVZ      AR2,AR4               ; |2101| 
        ADDB      SP,#30
        MOVZ      AR4,SP                ; |2109| 
        MOVZ      AR3,AH                ; |2101| 
        MOVB      XAR5,#0
        MOVB      ACC,#30
        SUBB      XAR4,#30              ; |2109| 
        LCR       #_memset              ; |2109| 
        ; call occurs [#_memset] ; |2109| 
        MOVW      DP,#_allsensors+37
        MOV       AL,AR2                ; |2109| 
        CMP       AL,@_allsensors+37    ; |2110| 
        BF        L280,LO               ; |2110| 
        ; branchcc occurs ; |2110| 
        MOVW      DP,#_timers+66
        MOV       AL,@_timers+66        ; |2110| 
        BF        L280,NEQ              ; |2110| 
        ; branchcc occurs ; |2110| 
        MOV       T,#18                 ; |2112| 
        MOVL      XAR4,#_sensor         ; |2112| 
        MPYXU     ACC,T,AR1             ; |2112| 
        ADDL      XAR4,ACC
        MOVL      XAR2,XAR4             ; |2112| 
        MOV       AL,*+XAR2[0]          ; |2112| 
        AND       AH,AL,#0x0001         ; |2112| 
        BF        L280,EQ               ; |2112| 
        ; branchcc occurs ; |2112| 
        ANDB      AL,#4                 ; |2112| 
        BF        L280,NEQ              ; |2112| 
        ; branchcc occurs ; |2112| 
        SETC      SXM
        MOV       AL,AR3                ; |2115| 
        MOV       ACC,AL                ; |2115| 
        ABS       ACC                   ; |2115| 
        MOVZ      AR3,AL                ; |2115| 
        MOVW      DP,#_settings+25
        MOV       AH,@_settings+25      ; |2114| 
        CMP       AH,AR3                ; |2116| 
        BF        L279,GT               ; |2116| 
        ; branchcc occurs ; |2116| 
        TBIT      *+XAR2[1],#0          ; |2116| 
        BF        L279,TC               ; |2116| 
        ; branchcc occurs ; |2116| 
        MOV       AL,*+XAR2[1]          ; |2118| 
        ORB       AL,#0x10              ; |2118| 
        MOV       *+XAR2[1],AL          ; |2118| 
        ANDB      AL,#32                ; |2119| 
        BF        L280,NEQ              ; |2119| 
        ; branchcc occurs ; |2119| 
        MOV       AL,AR1                ; |2122| 
        LCR       #_SetAlarmEvent       ; |2122| 
        ; call occurs [#_SetAlarmEvent] ; |2122| 
        MOV       AL,#14305             ; |2128| 
        ADD       AL,AR1                ; |2128| 
        MOV       PH,#0
        MOV       PL,#1
        MOV       ACC,AL << #1          ; |2128| 
        OR        *+XAR2[1],#0x0020     ; |2123| 
        MOV       AH,AL                 ; |2128| 
        ADDUL     P,XAR2
        MOVL      XAR4,P                ; |2128| 
        MOVB      XAR5,#1               ; |2128| 
        MOVB      AL,#0
        LCR       #_WriteNVMemory       ; |2128| 
        ; call occurs [#_WriteNVMemory] ; |2128| 
        TBIT      *+XAR2[0],#0          ; |2128| 
        BF        L281,TC               ; |2128| 
        ; branchcc occurs ; |2128| 
        BF        L282,UNC              ; |2128| 
        ; branch occurs ; |2128| 
L279:    
        MOVW      DP,#_allsensors+7
        SUB       AH,@_allsensors+7     ; |2133| 
        CMP       AH,AR3                ; |2133| 
        BF        L282,GEQ              ; |2133| 
        ; branchcc occurs ; |2133| 
L280:    
        MOVB      AL,#0
        CMPB      AL,#1                 ; |2142| 
        BF        L282,EQ               ; |2142| 
        ; branchcc occurs ; |2142| 
        MOV       T,#18                 ; |2142| 
        MOVL      XAR4,#_sensor         ; |2142| 
        MPYXU     ACC,T,AR1             ; |2142| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#0          ; |2142| 
        BF        L282,NTC              ; |2142| 
        ; branchcc occurs ; |2142| 
L281:    
        MOV       T,#18                 ; |2142| 
        MOVL      XAR4,#_sensor         ; |2142| 
        MPYXU     ACC,T,AR1             ; |2142| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#2          ; |2142| 
        BF        L282,TC               ; |2142| 
        ; branchcc occurs ; |2142| 
        MOVW      DP,#_PauseAlarm
        MOV       AL,@_PauseAlarm       ; |2142| 
        CMPB      AL,#1                 ; |2142| 
        BF        L284,NEQ              ; |2142| 
        ; branchcc occurs ; |2142| 
L282:    
        MOV       AL,AR1                ; |2143| 
        LCR       #_CheckAlarmBitSet    ; |2143| 
        ; call occurs [#_CheckAlarmBitSet] ; |2143| 
        CMPB      AL,#1                 ; |2143| 
        BF        L283,EQ               ; |2143| 
        ; branchcc occurs ; |2143| 
        MOV       T,#18                 ; |2143| 
        MOVL      XAR4,#_sensor+1       ; |2143| 
        MPYXU     ACC,T,AR1             ; |2143| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#5          ; |2143| 
        BF        L284,NTC              ; |2143| 
        ; branchcc occurs ; |2143| 
L283:    
        MOV       AL,AR1                ; |2148| 
        LCR       #_ClearAlarmEvent     ; |2148| 
        ; call occurs [#_ClearAlarmEvent] ; |2148| 
        MOV       T,#18                 ; |2149| 
        MOVL      XAR4,#_sensor         ; |2149| 
        MPYXU     ACC,T,AR1             ; |2149| 
        ADDL      XAR4,ACC
        MOV       AL,#14305             ; |2151| 
        MOV       PH,#0
        ADD       AL,AR1                ; |2151| 
        MOV       PL,#1
        MOV       ACC,AL << #1          ; |2151| 
        AND       *+XAR4[1],#0xffcf     ; |2149| 
        MOV       AH,AL                 ; |2151| 
        ADDUL     P,XAR4
        MOVL      XAR4,P                ; |2151| 
        MOVB      AL,#0
        MOVB      XAR5,#1               ; |2151| 
        LCR       #_WriteNVMemory       ; |2151| 
        ; call occurs [#_WriteNVMemory] ; |2151| 
L284:    
        SUBB      SP,#30
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"man.c",2155,1
        LRETR
        ; return occurs
	.dwattr DW$476, DW_AT_end_file("man.c")
	.dwattr DW$476, DW_AT_end_line(0x86b)
	.dwattr DW$476, DW_AT_end_column(0x01)
	.dwendtag DW$476

	.sect	".text"
	.global	_SensorDeviationSlowDown

DW$480	.dwtag  DW_TAG_subprogram, DW_AT_name("SensorDeviationSlowDown"), DW_AT_symbol_name("_SensorDeviationSlowDown")
	.dwattr DW$480, DW_AT_low_pc(_SensorDeviationSlowDown)
	.dwattr DW$480, DW_AT_high_pc(0x00)
	.dwattr DW$480, DW_AT_begin_file("man.c")
	.dwattr DW$480, DW_AT_begin_line(0x871)
	.dwattr DW$480, DW_AT_begin_column(0x06)
	.dwattr DW$480, DW_AT_frame_base[DW_OP_breg20 -38]
	.dwattr DW$480, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",2162,1

;***************************************************************
;* FNAME: _SensorDeviationSlowDown      FR SIZE:  36           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 30 Auto,  6 SOE     *
;***************************************************************

_SensorDeviationSlowDown:
;* AL    assigned to _chan
DW$481	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$481, DW_AT_type(*DW$T$11)
	.dwattr DW$481, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _val
DW$482	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$482, DW_AT_type(*DW$T$10)
	.dwattr DW$482, DW_AT_location[DW_OP_reg1]
;* AR4   assigned to _rpm
DW$483	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$483, DW_AT_type(*DW$T$11)
	.dwattr DW$483, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVZ      AR1,AL                ; |2162| 
        MOVL      *SP++,XAR3
        MOVZ      AR2,AR4               ; |2162| 
        ADDB      SP,#30
        MOVZ      AR4,SP                ; |2170| 
        MOVZ      AR3,AH                ; |2162| 
        MOVB      XAR5,#0
        MOVB      ACC,#30
        SUBB      XAR4,#30              ; |2170| 
        LCR       #_memset              ; |2170| 
        ; call occurs [#_memset] ; |2170| 
        MOVW      DP,#_allsensors+37
        MOV       AL,AR2                ; |2170| 
        CMP       AL,@_allsensors+37    ; |2171| 
        BF        L286,LO               ; |2171| 
        ; branchcc occurs ; |2171| 
        MOVW      DP,#_timers+66
        MOV       AL,@_timers+66        ; |2171| 
        BF        L286,NEQ              ; |2171| 
        ; branchcc occurs ; |2171| 
        MOV       T,#18                 ; |2173| 
        MOVL      XAR4,#_sensor         ; |2173| 
        MPYXU     ACC,T,AR1             ; |2173| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |2173| 
        AND       AH,AL,#0x0001         ; |2173| 
        BF        L287,EQ               ; |2173| 
        ; branchcc occurs ; |2173| 
        ANDB      AL,#4                 ; |2173| 
        BF        L286,NEQ              ; |2173| 
        ; branchcc occurs ; |2173| 
        MOVW      DP,#_function+3
        MOV       AL,@_function+3       ; |2173| 
        CMPB      AL,#1                 ; |2173| 
        BF        L286,NEQ              ; |2173| 
        ; branchcc occurs ; |2173| 
        SETC      SXM
        MOV       AL,AR3                ; |2177| 
        MOV       ACC,AL                ; |2177| 
        ABS       ACC                   ; |2177| 
        MOVZ      AR3,AL                ; |2177| 
        MOVW      DP,#_settings+26
        MOV       AH,@_settings+26      ; |2177| 
        CMP       AH,AR3                ; |2177| 
        BF        L285,LEQ              ; |2177| 
        ; branchcc occurs ; |2177| 
        MOVW      DP,#_allsensors+7
        SUB       AH,@_allsensors+7     ; |2192| 
        CMP       AH,AR3                ; |2192| 
        BF        L286,LT               ; |2192| 
        ; branchcc occurs ; |2192| 
        BF        L287,UNC              ; |2192| 
        ; branch occurs ; |2192| 
L285:    
        MOV       T,#18                 ; |2179| 
        MOVL      XAR4,#_sensor         ; |2179| 
        MPYXU     ACC,T,AR1             ; |2179| 
        ADDL      XAR4,ACC
        MOVL      XAR2,XAR4             ; |2179| 
        MOV       AL,*+XAR2[1]          ; |2179| 
        OR        AL,#0x0100            ; |2179| 
        MOV       *+XAR2[1],AL          ; |2179| 
        AND       AL,AL,#0x0200         ; |2180| 
        BF        L286,NEQ              ; |2180| 
        ; branchcc occurs ; |2180| 
        MOVB      AL,#168               ; |2183| 
        ADD       AL,AR1                ; |2183| 
        LCR       #_SetAlarmEvent       ; |2183| 
        ; call occurs [#_SetAlarmEvent] ; |2183| 
        MOV       AL,#14305             ; |2189| 
        ADD       AL,AR1                ; |2189| 
        MOV       PH,#0
        MOV       PL,#1
        MOV       ACC,AL << #1          ; |2189| 
        OR        *+XAR2[1],#0x0200     ; |2184| 
        MOV       AH,AL                 ; |2189| 
        ADDUL     P,XAR2
        MOVL      XAR4,P                ; |2189| 
        MOVB      XAR5,#1               ; |2189| 
        MOVB      AL,#0
        LCR       #_WriteNVMemory       ; |2189| 
        ; call occurs [#_WriteNVMemory] ; |2189| 
L286:    
        MOV       T,#18                 ; |2201| 
        MOVL      XAR4,#_sensor         ; |2201| 
        MPYXU     ACC,T,AR1             ; |2201| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |2201| 
        AND       AH,AL,#0x0001         ; |2201| 
        BF        L287,EQ               ; |2201| 
        ; branchcc occurs ; |2201| 
        ANDB      AL,#4                 ; |2201| 
        BF        L287,NEQ              ; |2201| 
        ; branchcc occurs ; |2201| 
        MOVW      DP,#_PauseAlarm
        MOV       AL,@_PauseAlarm       ; |2201| 
        CMPB      AL,#1                 ; |2201| 
        BF        L289,NEQ              ; |2201| 
        ; branchcc occurs ; |2201| 
L287:    
        MOVB      AL,#168               ; |2202| 
        ADD       AL,AR1                ; |2202| 
        LCR       #_CheckAlarmBitSet    ; |2202| 
        ; call occurs [#_CheckAlarmBitSet] ; |2202| 
        CMPB      AL,#1                 ; |2202| 
        BF        L288,EQ               ; |2202| 
        ; branchcc occurs ; |2202| 
        MOV       T,#18                 ; |2202| 
        MOVL      XAR4,#_sensor+1       ; |2202| 
        MPYXU     ACC,T,AR1             ; |2202| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#9          ; |2202| 
        BF        L289,NTC              ; |2202| 
        ; branchcc occurs ; |2202| 
L288:    
        MOVB      AL,#168               ; |2207| 
        ADD       AL,AR1                ; |2207| 
        LCR       #_ClearAlarmEvent     ; |2207| 
        ; call occurs [#_ClearAlarmEvent] ; |2207| 
        MOV       T,#18                 ; |2208| 
        MOVL      XAR4,#_sensor         ; |2208| 
        MPYXU     ACC,T,AR1             ; |2208| 
        ADDL      XAR4,ACC
        MOV       AL,#14305             ; |2210| 
        ADD       AL,AR1                ; |2210| 
        MOV       PH,#0
        MOV       PL,#1
        MOV       ACC,AL << #1          ; |2210| 
        AND       *+XAR4[1],#0xfcff     ; |2208| 
        MOV       AH,AL                 ; |2210| 
        ADDUL     P,XAR4
        MOVL      XAR4,P                ; |2210| 
        MOVB      AL,#0
        MOVB      XAR5,#1               ; |2210| 
        LCR       #_WriteNVMemory       ; |2210| 
        ; call occurs [#_WriteNVMemory] ; |2210| 
L289:    
        SUBB      SP,#30
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"man.c",2214,1
        LRETR
        ; return occurs
	.dwattr DW$480, DW_AT_end_file("man.c")
	.dwattr DW$480, DW_AT_end_line(0x8a6)
	.dwattr DW$480, DW_AT_end_column(0x01)
	.dwendtag DW$480

	.sect	".text"
	.global	_SensorDeviationAlarm

DW$484	.dwtag  DW_TAG_subprogram, DW_AT_name("SensorDeviationAlarm"), DW_AT_symbol_name("_SensorDeviationAlarm")
	.dwattr DW$484, DW_AT_low_pc(_SensorDeviationAlarm)
	.dwattr DW$484, DW_AT_high_pc(0x00)
	.dwattr DW$484, DW_AT_begin_file("man.c")
	.dwattr DW$484, DW_AT_begin_line(0x8aa)
	.dwattr DW$484, DW_AT_begin_column(0x06)
	.dwattr DW$484, DW_AT_frame_base[DW_OP_breg20 -38]
	.dwattr DW$484, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",2219,1

;***************************************************************
;* FNAME: _SensorDeviationAlarm         FR SIZE:  36           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 30 Auto,  6 SOE     *
;***************************************************************

_SensorDeviationAlarm:
;* AL    assigned to _chan
DW$485	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$485, DW_AT_type(*DW$T$11)
	.dwattr DW$485, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _val
DW$486	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$486, DW_AT_type(*DW$T$10)
	.dwattr DW$486, DW_AT_location[DW_OP_reg1]
;* AR4   assigned to _rpm
DW$487	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$487, DW_AT_type(*DW$T$11)
	.dwattr DW$487, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVZ      AR1,AL                ; |2219| 
        MOVL      *SP++,XAR3
        MOVZ      AR2,AR4               ; |2219| 
        ADDB      SP,#30
        MOVZ      AR4,SP                ; |2227| 
        MOVZ      AR3,AH                ; |2219| 
        MOVB      XAR5,#0
        MOVB      ACC,#30
        SUBB      XAR4,#30              ; |2227| 
        LCR       #_memset              ; |2227| 
        ; call occurs [#_memset] ; |2227| 
        MOVW      DP,#_allsensors+37
        MOV       AL,AR2                ; |2227| 
        CMP       AL,@_allsensors+37    ; |2228| 
        BF        L291,LO               ; |2228| 
        ; branchcc occurs ; |2228| 
        MOVW      DP,#_timers+66
        MOV       AL,@_timers+66        ; |2228| 
        BF        L291,NEQ              ; |2228| 
        ; branchcc occurs ; |2228| 
        MOV       T,#18                 ; |2230| 
        MOVL      XAR4,#_sensor         ; |2230| 
        MPYXU     ACC,T,AR1             ; |2230| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |2230| 
        AND       AH,AL,#0x0001         ; |2230| 
        BF        L292,EQ               ; |2230| 
        ; branchcc occurs ; |2230| 
        ANDB      AL,#4                 ; |2230| 
        BF        L291,NEQ              ; |2230| 
        ; branchcc occurs ; |2230| 
        MOVW      DP,#_function+3
        MOV       AL,@_function+3       ; |2230| 
        CMPB      AL,#1                 ; |2230| 
        BF        L291,NEQ              ; |2230| 
        ; branchcc occurs ; |2230| 
        SETC      SXM
        MOV       AL,AR3                ; |2234| 
        MOV       ACC,AL                ; |2234| 
        ABS       ACC                   ; |2234| 
        MOVZ      AR3,AL                ; |2234| 
        MOVW      DP,#_settings+27
        MOV       AH,@_settings+27      ; |2234| 
        CMP       AH,AR3                ; |2234| 
        BF        L290,LEQ              ; |2234| 
        ; branchcc occurs ; |2234| 
        MOVW      DP,#_allsensors+7
        SUB       AH,@_allsensors+7     ; |2250| 
        CMP       AH,AR3                ; |2250| 
        BF        L291,LT               ; |2250| 
        ; branchcc occurs ; |2250| 
        BF        L292,UNC              ; |2250| 
        ; branch occurs ; |2250| 
L290:    
        MOV       T,#18                 ; |2236| 
        MOVL      XAR4,#_sensor         ; |2236| 
        MPYXU     ACC,T,AR1             ; |2236| 
        ADDL      XAR4,ACC
        MOVL      XAR2,XAR4             ; |2236| 
        MOV       AL,*+XAR2[1]          ; |2236| 
        ORB       AL,#0x40              ; |2236| 
        MOV       *+XAR2[1],AL          ; |2236| 
        ANDB      AL,#128               ; |2237| 
        BF        L291,NEQ              ; |2237| 
        ; branchcc occurs ; |2237| 
        MOVB      AL,#140               ; |2240| 
        ADD       AL,AR1                ; |2240| 
        LCR       #_SetAlarmEvent       ; |2240| 
        ; call occurs [#_SetAlarmEvent] ; |2240| 
        MOV       AL,#14305             ; |2247| 
        ADD       AL,AR1                ; |2247| 
        MOV       PH,#0
        MOV       PL,#1
        MOV       ACC,AL << #1          ; |2247| 
        OR        *+XAR2[1],#0x0080     ; |2241| 
        MOV       AH,AL                 ; |2247| 
        ADDUL     P,XAR2
        MOVL      XAR4,P                ; |2247| 
        MOVB      XAR5,#1               ; |2247| 
        MOVB      AL,#0
        LCR       #_WriteNVMemory       ; |2247| 
        ; call occurs [#_WriteNVMemory] ; |2247| 
L291:    
        MOV       T,#18                 ; |2259| 
        MOVL      XAR4,#_sensor         ; |2259| 
        MPYXU     ACC,T,AR1             ; |2259| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |2259| 
        AND       AH,AL,#0x0001         ; |2259| 
        BF        L292,EQ               ; |2259| 
        ; branchcc occurs ; |2259| 
        ANDB      AL,#4                 ; |2259| 
        BF        L292,NEQ              ; |2259| 
        ; branchcc occurs ; |2259| 
        MOVW      DP,#_PauseAlarm
        MOV       AL,@_PauseAlarm       ; |2259| 
        CMPB      AL,#1                 ; |2259| 
        BF        L294,NEQ              ; |2259| 
        ; branchcc occurs ; |2259| 
L292:    
        MOVB      AL,#140               ; |2260| 
        ADD       AL,AR1                ; |2260| 
        LCR       #_CheckAlarmBitSet    ; |2260| 
        ; call occurs [#_CheckAlarmBitSet] ; |2260| 
        CMPB      AL,#1                 ; |2260| 
        BF        L293,EQ               ; |2260| 
        ; branchcc occurs ; |2260| 
        MOV       T,#18                 ; |2260| 
        MOVL      XAR4,#_sensor+1       ; |2260| 
        MPYXU     ACC,T,AR1             ; |2260| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#7          ; |2260| 
        BF        L294,NTC              ; |2260| 
        ; branchcc occurs ; |2260| 
L293:    
        MOVB      AL,#140               ; |2265| 
        ADD       AL,AR1                ; |2265| 
        LCR       #_ClearAlarmEvent     ; |2265| 
        ; call occurs [#_ClearAlarmEvent] ; |2265| 
        MOV       T,#18                 ; |2266| 
        MOVL      XAR4,#_sensor         ; |2266| 
        MPYXU     ACC,T,AR1             ; |2266| 
        ADDL      XAR4,ACC
        MOV       AL,#14305             ; |2268| 
        ADD       AL,AR1                ; |2268| 
        MOV       PH,#0
        MOV       PL,#1
        MOV       ACC,AL << #1          ; |2268| 
        AND       *+XAR4[1],#0xff3f     ; |2266| 
        MOV       AH,AL                 ; |2268| 
        ADDUL     P,XAR4
        MOVL      XAR4,P                ; |2268| 
        MOVB      AL,#0
        MOVB      XAR5,#1               ; |2268| 
        LCR       #_WriteNVMemory       ; |2268| 
        ; call occurs [#_WriteNVMemory] ; |2268| 
L294:    
        SUBB      SP,#30
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"man.c",2273,1
        LRETR
        ; return occurs
	.dwattr DW$484, DW_AT_end_file("man.c")
	.dwattr DW$484, DW_AT_end_line(0x8e1)
	.dwattr DW$484, DW_AT_end_column(0x01)
	.dwendtag DW$484

	.sect	".text"
	.global	_CylinderDevAlarm

DW$488	.dwtag  DW_TAG_subprogram, DW_AT_name("CylinderDevAlarm"), DW_AT_symbol_name("_CylinderDevAlarm")
	.dwattr DW$488, DW_AT_low_pc(_CylinderDevAlarm)
	.dwattr DW$488, DW_AT_high_pc(0x00)
	.dwattr DW$488, DW_AT_begin_file("man.c")
	.dwattr DW$488, DW_AT_begin_line(0x8e6)
	.dwattr DW$488, DW_AT_begin_column(0x06)
	.dwattr DW$488, DW_AT_frame_base[DW_OP_breg20 -38]
	.dwattr DW$488, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",2279,1

;***************************************************************
;* FNAME: _CylinderDevAlarm             FR SIZE:  36           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 30 Auto,  6 SOE     *
;***************************************************************

_CylinderDevAlarm:
;* AL    assigned to _num
DW$489	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num"), DW_AT_symbol_name("_num")
	.dwattr DW$489, DW_AT_type(*DW$T$11)
	.dwattr DW$489, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _val
DW$490	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$490, DW_AT_type(*DW$T$10)
	.dwattr DW$490, DW_AT_location[DW_OP_reg1]
;* AR4   assigned to _rpm
DW$491	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$491, DW_AT_type(*DW$T$11)
	.dwattr DW$491, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVZ      AR1,AL                ; |2279| 
        MOVL      *SP++,XAR3
        MOVZ      AR2,AR4               ; |2279| 
        ADDB      SP,#30
        MOVZ      AR4,SP                ; |2286| 
        MOVZ      AR3,AH                ; |2279| 
        MOVB      XAR5,#0
        MOVB      ACC,#30
        SUBB      XAR4,#30              ; |2286| 
        LCR       #_memset              ; |2286| 
        ; call occurs [#_memset] ; |2286| 
        MOVW      DP,#_allsensors+37
        MOV       AL,AR2                ; |2286| 
        CMP       AL,@_allsensors+37    ; |2287| 
        BF        L296,LO               ; |2287| 
        ; branchcc occurs ; |2287| 
        MOVW      DP,#_function+5
        MOV       AL,@_function+5       ; |2287| 
        CMPB      AL,#1                 ; |2287| 
        BF        L296,NEQ              ; |2287| 
        ; branchcc occurs ; |2287| 
        MOVW      DP,#_function+4
        MOV       AL,@_function+4       ; |2287| 
        CMPB      AL,#1                 ; |2287| 
        BF        L296,NEQ              ; |2287| 
        ; branchcc occurs ; |2287| 
        MOVW      DP,#_timers+66
        MOV       AL,@_timers+66        ; |2287| 
        BF        L296,NEQ              ; |2287| 
        ; branchcc occurs ; |2287| 
        MOVL      XAR4,#_sensor         ; |2291| 
        MOV       ACC,AR1 << #1         ; |2291| 
        MOVL      XAR5,XAR4             ; |2291| 
        MOV       T,#18                 ; |2291| 
        MOVZ      AR6,AL                ; |2291| 
        MPYXU     ACC,T,AL              ; |2291| 
        ADDL      XAR5,ACC
        MOV       AH,*+XAR5[0]          ; |2291| 
        AND       AL,AH,#0x0001         ; |2291| 
        BF        L297,EQ               ; |2291| 
        ; branchcc occurs ; |2291| 
        ANDB      AH,#4                 ; |2291| 
        BF        L296,NEQ              ; |2291| 
        ; branchcc occurs ; |2291| 
        MOVB      AH,#1                 ; |2293| 
        MOV       T,#18                 ; |2293| 
        ADD       AH,AR6                ; |2293| 
        MPYXU     ACC,T,AH              ; |2293| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |2293| 
        AND       AH,AL,#0x0001         ; |2293| 
        BF        L296,EQ               ; |2293| 
        ; branchcc occurs ; |2293| 
        ANDB      AL,#4                 ; |2293| 
        BF        L296,NEQ              ; |2293| 
        ; branchcc occurs ; |2293| 
        SETC      SXM
        MOV       AL,AR3                ; |2297| 
        MOV       ACC,AL                ; |2297| 
        ABS       ACC                   ; |2297| 
        MOVZ      AR3,AL                ; |2297| 
        MOVW      DP,#_settings+28
        MOV       AH,@_settings+28      ; |2297| 
        CMP       AH,AR3                ; |2297| 
        BF        L295,LEQ              ; |2297| 
        ; branchcc occurs ; |2297| 
        MOVW      DP,#_allsensors+8
        SUB       AH,@_allsensors+8     ; |2313| 
        CMP       AH,AR3                ; |2313| 
        BF        L296,LT               ; |2313| 
        ; branchcc occurs ; |2313| 
        BF        L297,UNC              ; |2313| 
        ; branch occurs ; |2313| 
L295:    
        MOVU      ACC,AR1
        MOVL      XAR4,#_cylinders      ; |2299| 
        LSL       ACC,2                 ; |2299| 
        ADDL      XAR4,ACC
        MOVL      XAR2,XAR4             ; |2299| 
        MOV       AL,*+XAR2[1]          ; |2299| 
        ORB       AL,#0x01              ; |2299| 
        MOV       *+XAR2[1],AL          ; |2299| 
        ANDB      AL,#2                 ; |2300| 
        BF        L296,NEQ              ; |2300| 
        ; branchcc occurs ; |2300| 
        MOVB      AL,#252               ; |2303| 
        ADD       AL,AR1                ; |2303| 
        LCR       #_SetAlarmEvent       ; |2303| 
        ; call occurs [#_SetAlarmEvent] ; |2303| 
        MOV       AL,#14319             ; |2310| 
        ADD       AL,AR1                ; |2310| 
        MOV       PH,#0
        MOV       PL,#1
        MOV       ACC,AL << #1          ; |2310| 
        OR        *+XAR2[1],#0x0002     ; |2304| 
        MOV       AH,AL                 ; |2310| 
        ADDUL     P,XAR2
        MOVL      XAR4,P                ; |2310| 
        MOVB      XAR5,#1               ; |2310| 
        MOVB      AL,#0
        LCR       #_WriteNVMemory       ; |2310| 
        ; call occurs [#_WriteNVMemory] ; |2310| 
L296:    
        MOVL      XAR4,#_sensor         ; |2323| 
        MOV       ACC,AR1 << #1         ; |2323| 
        MOVL      XAR5,XAR4             ; |2323| 
        MOV       T,#18                 ; |2323| 
        MOVZ      AR6,AL                ; |2323| 
        MPYXU     ACC,T,AL              ; |2323| 
        ADDL      XAR5,ACC
        MOV       AH,*+XAR5[0]          ; |2323| 
        AND       AL,AH,#0x0001         ; |2323| 
        BF        L297,EQ               ; |2323| 
        ; branchcc occurs ; |2323| 
        ANDB      AH,#4                 ; |2323| 
        BF        L297,NEQ              ; |2323| 
        ; branchcc occurs ; |2323| 
        MOVB      AH,#1                 ; |2323| 
        MOV       T,#18                 ; |2323| 
        ADD       AH,AR6                ; |2323| 
        MPYXU     ACC,T,AH              ; |2323| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |2323| 
        AND       AH,AL,#0x0001         ; |2323| 
        BF        L297,EQ               ; |2323| 
        ; branchcc occurs ; |2323| 
        ANDB      AL,#4                 ; |2323| 
        BF        L297,NEQ              ; |2323| 
        ; branchcc occurs ; |2323| 
        MOVW      DP,#_PauseAlarm
        MOV       AL,@_PauseAlarm       ; |2323| 
        CMPB      AL,#1                 ; |2323| 
        BF        L299,NEQ              ; |2323| 
        ; branchcc occurs ; |2323| 
L297:    
        MOVB      AL,#252               ; |2324| 
        ADD       AL,AR1                ; |2324| 
        LCR       #_CheckAlarmBitSet    ; |2324| 
        ; call occurs [#_CheckAlarmBitSet] ; |2324| 
        CMPB      AL,#1                 ; |2324| 
        BF        L298,EQ               ; |2324| 
        ; branchcc occurs ; |2324| 
        MOVU      ACC,AR1
        MOVL      XAR4,#_cylinders+1    ; |2324| 
        LSL       ACC,2                 ; |2324| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#1          ; |2324| 
        BF        L299,NTC              ; |2324| 
        ; branchcc occurs ; |2324| 
L298:    
        MOVB      AL,#252               ; |2328| 
        ADD       AL,AR1                ; |2328| 
        LCR       #_ClearAlarmEvent     ; |2328| 
        ; call occurs [#_ClearAlarmEvent] ; |2328| 
        MOVU      ACC,AR1
        MOVL      XAR4,#_cylinders      ; |2329| 
        LSL       ACC,2                 ; |2329| 
        ADDL      XAR4,ACC
        MOV       AL,#14319             ; |2331| 
        MOV       PH,#0
        ADD       AL,AR1                ; |2331| 
        MOV       PL,#1
        MOV       ACC,AL << #1          ; |2331| 
        AND       *+XAR4[1],#0xfffc     ; |2329| 
        MOV       AH,AL                 ; |2331| 
        ADDUL     P,XAR4
        MOVL      XAR4,P                ; |2331| 
        MOVB      AL,#0
        MOVB      XAR5,#1               ; |2331| 
        LCR       #_WriteNVMemory       ; |2331| 
        ; call occurs [#_WriteNVMemory] ; |2331| 
L299:    
        SUBB      SP,#30
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"man.c",2335,1
        LRETR
        ; return occurs
	.dwattr DW$488, DW_AT_end_file("man.c")
	.dwattr DW$488, DW_AT_end_line(0x91f)
	.dwattr DW$488, DW_AT_end_column(0x01)
	.dwendtag DW$488

	.sect	".text"
	.global	_WriteMANCompTabletoNVMEM

DW$492	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteMANCompTabletoNVMEM"), DW_AT_symbol_name("_WriteMANCompTabletoNVMEM")
	.dwattr DW$492, DW_AT_low_pc(_WriteMANCompTabletoNVMEM)
	.dwattr DW$492, DW_AT_high_pc(0x00)
	.dwattr DW$492, DW_AT_begin_file("man.c")
	.dwattr DW$492, DW_AT_begin_line(0x923)
	.dwattr DW$492, DW_AT_begin_column(0x06)
	.dwattr DW$492, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$492, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",2340,1

;***************************************************************
;* FNAME: _WriteMANCompTabletoNVMEM     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WriteMANCompTabletoNVMEM:
        MOVL      XAR5,#4200            ; |2350| 
        MOVB      ACC,#0
        MOVL      XAR4,#_man_comptable  ; |2350| 
        LCR       #_WriteNVMemory       ; |2350| 
        ; call occurs [#_WriteNVMemory] ; |2350| 
	.dwpsn	"man.c",2351,1
        LRETR
        ; return occurs
	.dwattr DW$492, DW_AT_end_file("man.c")
	.dwattr DW$492, DW_AT_end_line(0x92f)
	.dwattr DW$492, DW_AT_end_column(0x01)
	.dwendtag DW$492

	.sect	".text"
	.global	_ReadMANCompTablefromNVMEM

DW$493	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadMANCompTablefromNVMEM"), DW_AT_symbol_name("_ReadMANCompTablefromNVMEM")
	.dwattr DW$493, DW_AT_low_pc(_ReadMANCompTablefromNVMEM)
	.dwattr DW$493, DW_AT_high_pc(0x00)
	.dwattr DW$493, DW_AT_begin_file("man.c")
	.dwattr DW$493, DW_AT_begin_line(0x933)
	.dwattr DW$493, DW_AT_begin_column(0x06)
	.dwattr DW$493, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$493, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",2356,1

;***************************************************************
;* FNAME: _ReadMANCompTablefromNVMEM    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadMANCompTablefromNVMEM:
        MOVL      XAR5,#4200            ; |2365| 
        MOVB      ACC,#0
        MOVL      XAR4,#_man_comptable  ; |2365| 
        LCR       #_ReadNVMemory        ; |2365| 
        ; call occurs [#_ReadNVMemory] ; |2365| 
	.dwpsn	"man.c",2366,1
        LRETR
        ; return occurs
	.dwattr DW$493, DW_AT_end_file("man.c")
	.dwattr DW$493, DW_AT_end_line(0x93e)
	.dwattr DW$493, DW_AT_end_column(0x01)
	.dwendtag DW$493

	.sect	".text"
	.global	_WriteAllSensorStructtoNVMEM

DW$494	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteAllSensorStructtoNVMEM"), DW_AT_symbol_name("_WriteAllSensorStructtoNVMEM")
	.dwattr DW$494, DW_AT_low_pc(_WriteAllSensorStructtoNVMEM)
	.dwattr DW$494, DW_AT_high_pc(0x00)
	.dwattr DW$494, DW_AT_begin_file("man.c")
	.dwattr DW$494, DW_AT_begin_line(0x942)
	.dwattr DW$494, DW_AT_begin_column(0x06)
	.dwattr DW$494, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$494, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",2371,1

;***************************************************************
;* FNAME: _WriteAllSensorStructtoNVMEM  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WriteAllSensorStructtoNVMEM:
        MOVB      AL,#0
        MOVB      XAR5,#45              ; |2381| 
        MOVL      XAR4,#_allsensors     ; |2381| 
        MOV       AH,#27248             ; |2381| 
        LCR       #_WriteNVMemory       ; |2381| 
        ; call occurs [#_WriteNVMemory] ; |2381| 
	.dwpsn	"man.c",2382,1
        LRETR
        ; return occurs
	.dwattr DW$494, DW_AT_end_file("man.c")
	.dwattr DW$494, DW_AT_end_line(0x94e)
	.dwattr DW$494, DW_AT_end_column(0x01)
	.dwendtag DW$494

	.sect	".text"
	.global	_ReadAllSensorStructfromNVMEM

DW$495	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadAllSensorStructfromNVMEM"), DW_AT_symbol_name("_ReadAllSensorStructfromNVMEM")
	.dwattr DW$495, DW_AT_low_pc(_ReadAllSensorStructfromNVMEM)
	.dwattr DW$495, DW_AT_high_pc(0x00)
	.dwattr DW$495, DW_AT_begin_file("man.c")
	.dwattr DW$495, DW_AT_begin_line(0x952)
	.dwattr DW$495, DW_AT_begin_column(0x06)
	.dwattr DW$495, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$495, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",2387,1

;***************************************************************
;* FNAME: _ReadAllSensorStructfromNVMEM FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadAllSensorStructfromNVMEM:
        MOVB      AL,#0
        MOVB      XAR5,#45              ; |2398| 
        MOVL      XAR4,#_allsensors     ; |2398| 
        MOV       AH,#27248             ; |2398| 
        LCR       #_ReadNVMemory        ; |2398| 
        ; call occurs [#_ReadNVMemory] ; |2398| 
	.dwpsn	"man.c",2400,1
        LRETR
        ; return occurs
	.dwattr DW$495, DW_AT_end_file("man.c")
	.dwattr DW$495, DW_AT_end_line(0x960)
	.dwattr DW$495, DW_AT_end_column(0x01)
	.dwendtag DW$495

	.sect	".text"
	.global	_WriteSensorStatustoNVMEM

DW$496	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteSensorStatustoNVMEM"), DW_AT_symbol_name("_WriteSensorStatustoNVMEM")
	.dwattr DW$496, DW_AT_low_pc(_WriteSensorStatustoNVMEM)
	.dwattr DW$496, DW_AT_high_pc(0x00)
	.dwattr DW$496, DW_AT_begin_file("man.c")
	.dwattr DW$496, DW_AT_begin_line(0x965)
	.dwattr DW$496, DW_AT_begin_column(0x06)
	.dwattr DW$496, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$496, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",2406,1

;***************************************************************
;* FNAME: _WriteSensorStatustoNVMEM     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WriteSensorStatustoNVMEM:
;* AL    assigned to _chan
DW$497	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$497, DW_AT_type(*DW$T$11)
	.dwattr DW$497, DW_AT_location[DW_OP_reg0]
        MOVZ      AR6,AL                ; |2406| 
        MOV       T,#18                 ; |2417| 
        MOVL      XAR4,#_sensor         ; |2417| 
        MPYXU     ACC,T,AL              ; |2417| 
        ADDL      XAR4,ACC
        MOV       AH,#13688             ; |2420| 
        ADD       AH,AR6                ; |2420| 
        MOVB      XAR5,#1               ; |2420| 
        MOV       ACC,AH << #1          ; |2420| 
        MOV       AH,AL                 ; |2420| 
        MOVB      AL,#0
        LCR       #_WriteNVMemory       ; |2420| 
        ; call occurs [#_WriteNVMemory] ; |2420| 
	.dwpsn	"man.c",2421,1
        LRETR
        ; return occurs
	.dwattr DW$496, DW_AT_end_file("man.c")
	.dwattr DW$496, DW_AT_end_line(0x975)
	.dwattr DW$496, DW_AT_end_column(0x01)
	.dwendtag DW$496

	.sect	".text"
	.global	_ReadSensorStatusfromNVMEM

DW$498	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadSensorStatusfromNVMEM"), DW_AT_symbol_name("_ReadSensorStatusfromNVMEM")
	.dwattr DW$498, DW_AT_low_pc(_ReadSensorStatusfromNVMEM)
	.dwattr DW$498, DW_AT_high_pc(0x00)
	.dwattr DW$498, DW_AT_begin_file("man.c")
	.dwattr DW$498, DW_AT_begin_line(0x97a)
	.dwattr DW$498, DW_AT_begin_column(0x06)
	.dwattr DW$498, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$498, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",2427,1

;***************************************************************
;* FNAME: _ReadSensorStatusfromNVMEM    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadSensorStatusfromNVMEM:
;* AL    assigned to _chan
DW$499	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$499, DW_AT_type(*DW$T$11)
	.dwattr DW$499, DW_AT_location[DW_OP_reg0]
        MOVZ      AR6,AL                ; |2427| 
        MOV       T,#18                 ; |2435| 
        MOVL      XAR4,#_sensor         ; |2435| 
        MPYXU     ACC,T,AL              ; |2435| 
        ADDL      XAR4,ACC
        MOV       AH,#13688             ; |2438| 
        ADD       AH,AR6                ; |2438| 
        MOVB      XAR5,#1               ; |2438| 
        MOV       ACC,AH << #1          ; |2438| 
        MOV       AH,AL                 ; |2438| 
        MOVB      AL,#0
        LCR       #_ReadNVMemory        ; |2438| 
        ; call occurs [#_ReadNVMemory] ; |2438| 
	.dwpsn	"man.c",2439,1
        LRETR
        ; return occurs
	.dwattr DW$498, DW_AT_end_file("man.c")
	.dwattr DW$498, DW_AT_end_line(0x987)
	.dwattr DW$498, DW_AT_end_column(0x01)
	.dwendtag DW$498

	.sect	".text"
	.global	_WriteOffsetAtoNVMEM

DW$500	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteOffsetAtoNVMEM"), DW_AT_symbol_name("_WriteOffsetAtoNVMEM")
	.dwattr DW$500, DW_AT_low_pc(_WriteOffsetAtoNVMEM)
	.dwattr DW$500, DW_AT_high_pc(0x00)
	.dwattr DW$500, DW_AT_begin_file("man.c")
	.dwattr DW$500, DW_AT_begin_line(0x98e)
	.dwattr DW$500, DW_AT_begin_column(0x06)
	.dwattr DW$500, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$500, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",2447,1

;***************************************************************
;* FNAME: _WriteOffsetAtoNVMEM          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WriteOffsetAtoNVMEM:
;* AL    assigned to _chan
DW$501	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$501, DW_AT_type(*DW$T$11)
	.dwattr DW$501, DW_AT_location[DW_OP_reg0]
        MOVZ      AR7,AL                ; |2447| 
        MOV       AL,#13848             ; |2460| 
        MOVL      XAR4,#_offsetA        ; |2460| 
        ADD       AL,AR7                ; |2460| 
        MOVB      XAR5,#1               ; |2460| 
        MOV       ACC,AL << #1          ; |2460| 
        MOVZ      AR6,AL                ; |2460| 
        MOVL      ACC,XAR4              ; |2460| 
        ADDU      ACC,AR7               ; |2460| 
        MOVL      XAR4,ACC              ; |2460| 
        MOVB      AL,#0
        MOV       AH,AR6                ; |2460| 
        LCR       #_WriteNVMemory       ; |2460| 
        ; call occurs [#_WriteNVMemory] ; |2460| 
	.dwpsn	"man.c",2462,1
        LRETR
        ; return occurs
	.dwattr DW$500, DW_AT_end_file("man.c")
	.dwattr DW$500, DW_AT_end_line(0x99e)
	.dwattr DW$500, DW_AT_end_column(0x01)
	.dwendtag DW$500

	.sect	".text"
	.global	_ReadOffsetAfromNVMEM

DW$502	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadOffsetAfromNVMEM"), DW_AT_symbol_name("_ReadOffsetAfromNVMEM")
	.dwattr DW$502, DW_AT_low_pc(_ReadOffsetAfromNVMEM)
	.dwattr DW$502, DW_AT_high_pc(0x00)
	.dwattr DW$502, DW_AT_begin_file("man.c")
	.dwattr DW$502, DW_AT_begin_line(0x9a2)
	.dwattr DW$502, DW_AT_begin_column(0x06)
	.dwattr DW$502, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$502, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",2467,1

;***************************************************************
;* FNAME: _ReadOffsetAfromNVMEM         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadOffsetAfromNVMEM:
;* AL    assigned to _chan
DW$503	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$503, DW_AT_type(*DW$T$11)
	.dwattr DW$503, DW_AT_location[DW_OP_reg0]
        MOVZ      AR7,AL                ; |2467| 
        MOV       AL,#13848             ; |2478| 
        MOVL      XAR4,#_offsetA        ; |2478| 
        ADD       AL,AR7                ; |2478| 
        MOVB      XAR5,#1               ; |2478| 
        MOV       ACC,AL << #1          ; |2478| 
        MOVZ      AR6,AL                ; |2478| 
        MOVL      ACC,XAR4              ; |2478| 
        ADDU      ACC,AR7               ; |2478| 
        MOVL      XAR4,ACC              ; |2478| 
        MOVB      AL,#0
        MOV       AH,AR6                ; |2478| 
        LCR       #_ReadNVMemory        ; |2478| 
        ; call occurs [#_ReadNVMemory] ; |2478| 
	.dwpsn	"man.c",2479,1
        LRETR
        ; return occurs
	.dwattr DW$502, DW_AT_end_file("man.c")
	.dwattr DW$502, DW_AT_end_line(0x9af)
	.dwattr DW$502, DW_AT_end_column(0x01)
	.dwendtag DW$502

	.sect	".text"
	.global	_WriteOffsetBtoNVMEM

DW$504	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteOffsetBtoNVMEM"), DW_AT_symbol_name("_WriteOffsetBtoNVMEM")
	.dwattr DW$504, DW_AT_low_pc(_WriteOffsetBtoNVMEM)
	.dwattr DW$504, DW_AT_high_pc(0x00)
	.dwattr DW$504, DW_AT_begin_file("man.c")
	.dwattr DW$504, DW_AT_begin_line(0x9b4)
	.dwattr DW$504, DW_AT_begin_column(0x06)
	.dwattr DW$504, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$504, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",2485,1

;***************************************************************
;* FNAME: _WriteOffsetBtoNVMEM          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WriteOffsetBtoNVMEM:
;* AL    assigned to _chan
DW$505	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$505, DW_AT_type(*DW$T$11)
	.dwattr DW$505, DW_AT_location[DW_OP_reg0]
        MOVZ      AR7,AL                ; |2485| 
        MOV       AL,#13976             ; |2498| 
        MOVL      XAR4,#_offsetB        ; |2498| 
        ADD       AL,AR7                ; |2498| 
        MOVB      XAR5,#1               ; |2498| 
        MOV       ACC,AL << #1          ; |2498| 
        MOVZ      AR6,AL                ; |2498| 
        MOVL      ACC,XAR4              ; |2498| 
        ADDU      ACC,AR7               ; |2498| 
        MOVL      XAR4,ACC              ; |2498| 
        MOVB      AL,#0
        MOV       AH,AR6                ; |2498| 
        LCR       #_WriteNVMemory       ; |2498| 
        ; call occurs [#_WriteNVMemory] ; |2498| 
	.dwpsn	"man.c",2500,1
        LRETR
        ; return occurs
	.dwattr DW$504, DW_AT_end_file("man.c")
	.dwattr DW$504, DW_AT_end_line(0x9c4)
	.dwattr DW$504, DW_AT_end_column(0x01)
	.dwendtag DW$504

	.sect	".text"
	.global	_ReadOffsetBfromNVMEM

DW$506	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadOffsetBfromNVMEM"), DW_AT_symbol_name("_ReadOffsetBfromNVMEM")
	.dwattr DW$506, DW_AT_low_pc(_ReadOffsetBfromNVMEM)
	.dwattr DW$506, DW_AT_high_pc(0x00)
	.dwattr DW$506, DW_AT_begin_file("man.c")
	.dwattr DW$506, DW_AT_begin_line(0x9c8)
	.dwattr DW$506, DW_AT_begin_column(0x06)
	.dwattr DW$506, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$506, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",2505,1

;***************************************************************
;* FNAME: _ReadOffsetBfromNVMEM         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadOffsetBfromNVMEM:
;* AL    assigned to _chan
DW$507	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$507, DW_AT_type(*DW$T$11)
	.dwattr DW$507, DW_AT_location[DW_OP_reg0]
        MOVZ      AR7,AL                ; |2505| 
        MOV       AL,#13976             ; |2516| 
        MOVL      XAR4,#_offsetB        ; |2516| 
        ADD       AL,AR7                ; |2516| 
        MOVB      XAR5,#1               ; |2516| 
        MOV       ACC,AL << #1          ; |2516| 
        MOVZ      AR6,AL                ; |2516| 
        MOVL      ACC,XAR4              ; |2516| 
        ADDU      ACC,AR7               ; |2516| 
        MOVL      XAR4,ACC              ; |2516| 
        MOVB      AL,#0
        MOV       AH,AR6                ; |2516| 
        LCR       #_ReadNVMemory        ; |2516| 
        ; call occurs [#_ReadNVMemory] ; |2516| 
	.dwpsn	"man.c",2517,1
        LRETR
        ; return occurs
	.dwattr DW$506, DW_AT_end_file("man.c")
	.dwattr DW$506, DW_AT_end_line(0x9d5)
	.dwattr DW$506, DW_AT_end_column(0x01)
	.dwendtag DW$506

	.sect	".text"
	.global	_SensorNoiseRemoval

DW$508	.dwtag  DW_TAG_subprogram, DW_AT_name("SensorNoiseRemoval"), DW_AT_symbol_name("_SensorNoiseRemoval")
	.dwattr DW$508, DW_AT_low_pc(_SensorNoiseRemoval)
	.dwattr DW$508, DW_AT_high_pc(0x00)
	.dwattr DW$508, DW_AT_begin_file("man.c")
	.dwattr DW$508, DW_AT_begin_line(0x9df)
	.dwattr DW$508, DW_AT_begin_column(0x05)
	.dwattr DW$508, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$508, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",2528,1

;***************************************************************
;* FNAME: _SensorNoiseRemoval           FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_SensorNoiseRemoval:
;* AL    assigned to _num
DW$509	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num"), DW_AT_symbol_name("_num")
	.dwattr DW$509, DW_AT_type(*DW$T$11)
	.dwattr DW$509, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _val
DW$510	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$510, DW_AT_type(*DW$T$10)
	.dwattr DW$510, DW_AT_location[DW_OP_reg1]
        MOVL      *SP++,XAR1
        MOVZ      AR1,AL                ; |2528| 
        MOVL      *SP++,XAR2
        MOV       AL,AH                 ; |2528| 
        MOVL      *SP++,XAR3
        ADDB      SP,#2
        LCR       #I$$TOFS              ; |2533| 
        ; call occurs [#I$$TOFS] ; |2533| 
        MOVL      XAR4,#_noisefilterLOAD ; |2534| 
        MOVL      XAR6,ACC              ; |2533| 
        MOV       AL,*+XAR4[AR1]        ; |2534| 
        BF        L300,NEQ              ; |2534| 
        ; branchcc occurs ; |2534| 
        MOV       T,#18                 ; |2539| 
        MOVL      XAR4,#_sensor+8       ; |2539| 
        MPYXU     ACC,T,AR1             ; |2539| 
        ADDL      XAR4,ACC
        MOVL      XAR2,*+XAR4[0]        ; |2539| 
        BF        L301,UNC              ; |2539| 
        ; branch occurs ; |2539| 
L300:    
        DEC       *+XAR4[AR1]           ; |2537| 
        MOVL      XAR2,XAR6             ; |2536| 
L301:    
        MOVL      *-SP[2],XAR2          ; |2542| 
        MOVL      ACC,XAR6              ; |2542| 
        LCR       #FS$$SUB              ; |2542| 
        ; call occurs [#FS$$SUB] ; |2542| 
        MOVW      DP,#_config
        MOVL      XAR3,ACC              ; |2542| 
        MOV       AL,@_config           ; |2542| 
        LCR       #U$$TOFS              ; |2542| 
        ; call occurs [#U$$TOFS] ; |2542| 
        MOVL      XAR6,ACC              ; |2542| 
        MOV       AL,#16384
        MOV       AH,#17948
        MOVL      *-SP[2],ACC           ; |2542| 
        MOVL      ACC,XAR6              ; |2542| 
        LCR       #FS$$DIV              ; |2542| 
        ; call occurs [#FS$$DIV] ; |2542| 
        MOVL      *-SP[2],ACC           ; |2542| 
        MOVL      ACC,XAR3              ; |2542| 
        LCR       #FS$$MPY              ; |2542| 
        ; call occurs [#FS$$MPY] ; |2542| 
        MOVL      *-SP[2],ACC           ; |2542| 
        MOVL      ACC,XAR2              ; |2542| 
        LCR       #FS$$ADD              ; |2542| 
        ; call occurs [#FS$$ADD] ; |2542| 
        MOVL      XAR2,ACC              ; |2542| 
        MOV       T,#18                 ; |2543| 
        MOVL      XAR4,#_sensor+8       ; |2543| 
        MPYXU     ACC,T,AR1             ; |2543| 
        ADDL      XAR4,ACC
        MOVL      ACC,XAR2              ; |2544| 
        MOVL      *+XAR4[0],XAR2        ; |2543| 
        LCR       #_FloattoIntRound     ; |2544| 
        ; call occurs [#_FloattoIntRound] ; |2544| 
        SUBB      SP,#2                 ; |2546| 
        MOVL      XAR3,*--SP            ; |2546| 
        MOVL      XAR2,*--SP            ; |2546| 
        MOVL      XAR1,*--SP            ; |2546| 
	.dwpsn	"man.c",2547,1
        LRETR
        ; return occurs
	.dwattr DW$508, DW_AT_end_file("man.c")
	.dwattr DW$508, DW_AT_end_line(0x9f3)
	.dwattr DW$508, DW_AT_end_column(0x01)
	.dwendtag DW$508

	.sect	".text"
	.global	_NoiseFilterApplied

DW$511	.dwtag  DW_TAG_subprogram, DW_AT_name("NoiseFilterApplied"), DW_AT_symbol_name("_NoiseFilterApplied")
	.dwattr DW$511, DW_AT_low_pc(_NoiseFilterApplied)
	.dwattr DW$511, DW_AT_high_pc(0x00)
	.dwattr DW$511, DW_AT_begin_file("man.c")
	.dwattr DW$511, DW_AT_begin_line(0x9f8)
	.dwattr DW$511, DW_AT_begin_column(0x05)
	.dwattr DW$511, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$511, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",2553,1

;***************************************************************
;* FNAME: _NoiseFilterApplied           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_NoiseFilterApplied:
;* AL    assigned to _chan
DW$512	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$512, DW_AT_type(*DW$T$11)
	.dwattr DW$512, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _rpm
DW$513	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$513, DW_AT_type(*DW$T$11)
	.dwattr DW$513, DW_AT_location[DW_OP_reg1]
        MOVW      DP,#_allsensors+16
        TBIT      @_allsensors+16,#1    ; |2557| 
        BF        L302,NTC              ; |2557| 
        ; branchcc occurs ; |2557| 
        MOVW      DP,#_iStartRapidWear
        MOV       AL,@_iStartRapidWear  ; |2557| 
        BF        L303,UNC              ; |2557| 
        ; branch occurs ; |2557| 
L302:    
        MOVB      AL,#1                 ; |2557| 
L303:    
	.dwpsn	"man.c",2580,1
        LRETR
        ; return occurs
	.dwattr DW$511, DW_AT_end_file("man.c")
	.dwattr DW$511, DW_AT_end_line(0xa14)
	.dwattr DW$511, DW_AT_end_column(0x01)
	.dwendtag DW$511

	.sect	".text"
	.global	_SensorDeviation

DW$514	.dwtag  DW_TAG_subprogram, DW_AT_name("SensorDeviation"), DW_AT_symbol_name("_SensorDeviation")
	.dwattr DW$514, DW_AT_low_pc(_SensorDeviation)
	.dwattr DW$514, DW_AT_high_pc(0x00)
	.dwattr DW$514, DW_AT_begin_file("man.c")
	.dwattr DW$514, DW_AT_begin_line(0xa1b)
	.dwattr DW$514, DW_AT_begin_column(0x05)
	.dwattr DW$514, DW_AT_frame_base[DW_OP_breg20 -12]
	.dwattr DW$514, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",2588,1

;***************************************************************
;* FNAME: _SensorDeviation              FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  2 Auto,  6 SOE     *
;***************************************************************

_SensorDeviation:
;* AL    assigned to _num
DW$515	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num"), DW_AT_symbol_name("_num")
	.dwattr DW$515, DW_AT_type(*DW$T$11)
	.dwattr DW$515, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _val
DW$516	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$516, DW_AT_type(*DW$T$10)
	.dwattr DW$516, DW_AT_location[DW_OP_reg1]
        MOVL      *SP++,XAR1
        MOVZ      AR1,AL                ; |2588| 
        MOVZ      AR6,AH                ; |2588| 
        MOV       T,#18                 ; |2597| 
        MOVL      XAR4,#_sensor         ; |2597| 
        MPYXU     ACC,T,AR1             ; |2597| 
        ADDL      XAR4,ACC
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#4
        MOV       AH,*+XAR4[0]          ; |2597| 
        AND       AL,AH,#0x0001         ; |2597| 
        BF        L307,EQ               ; |2597| 
        ; branchcc occurs ; |2597| 
        AND       AL,AH,#0x0010         ; |2597| 
        BF        L307,NEQ              ; |2597| 
        ; branchcc occurs ; |2597| 
        TBIT      *+XAR4[1],#0          ; |2597| 
        BF        L307,TC               ; |2597| 
        ; branchcc occurs ; |2597| 
        MOVB      ACC,#0
        MOVW      DP,#_allsensors
        MOVB      XAR3,#0
        MOVB      XAR5,#0
        MOVL      *-SP[4],ACC           ; |2603| 
        MOV       AL,@_allsensors       ; |2604| 
        BF        L306,EQ               ; |2604| 
        ; branchcc occurs ; |2604| 
L304:    
DW$L$_SensorDeviation$5$B:
	.dwpsn	"man.c",2605,0
        MOV       AL,AR5
        CMP       AL,AR1                ; |2606| 
        BF        L305,EQ               ; |2606| 
        ; branchcc occurs ; |2606| 
DW$L$_SensorDeviation$5$E:
DW$L$_SensorDeviation$6$B:
        MOV       T,#18                 ; |2608| 
        MOVL      XAR4,#_sensor         ; |2608| 
        MPYXU     ACC,T,AR5             ; |2608| 
        ADDL      XAR4,ACC
        MOV       AH,*+XAR4[0]          ; |2608| 
        AND       AL,AH,#0x0001         ; |2608| 
        BF        L305,EQ               ; |2608| 
        ; branchcc occurs ; |2608| 
DW$L$_SensorDeviation$6$E:
DW$L$_SensorDeviation$7$B:
        TBIT      *+XAR4[1],#0          ; |2608| 
        BF        L305,TC               ; |2608| 
        ; branchcc occurs ; |2608| 
DW$L$_SensorDeviation$7$E:
DW$L$_SensorDeviation$8$B:
        AND       AL,AH,#0x0010         ; |2608| 
        BF        L305,NEQ              ; |2608| 
        ; branchcc occurs ; |2608| 
DW$L$_SensorDeviation$8$E:
DW$L$_SensorDeviation$9$B:
        SETC      SXM
        MOVL      ACC,*-SP[4]           ; |2611| 
        MOVB      XAR0,#10              ; |2611| 
        ADDB      XAR3,#1               ; |2610| 
        ADD       ACC,*+XAR4[AR0]       ; |2611| 
        MOVL      *-SP[4],ACC           ; |2611| 
DW$L$_SensorDeviation$9$E:
L305:    
DW$L$_SensorDeviation$10$B:
        ADDB      XAR5,#1               ; |2604| 
        MOVW      DP,#_allsensors
        MOV       AL,AR5                ; |2604| 
        CMP       AL,@_allsensors       ; |2604| 
	.dwpsn	"man.c",2614,0
        BF        L304,LO               ; |2604| 
        ; branchcc occurs ; |2604| 
DW$L$_SensorDeviation$10$E:
L306:    
        MOV       AL,AR6                ; |2617| 
        LCR       #I$$TOFS              ; |2617| 
        ; call occurs [#I$$TOFS] ; |2617| 
        MOVL      XAR2,ACC              ; |2617| 
        MOVL      ACC,*-SP[4]           ; |2617| 
        LCR       #L$$TOFS              ; |2617| 
        ; call occurs [#L$$TOFS] ; |2617| 
        MOVL      *-SP[4],ACC           ; |2617| 
        MOV       AL,AR3                ; |2617| 
        LCR       #U$$TOFS              ; |2617| 
        ; call occurs [#U$$TOFS] ; |2617| 
        MOVL      *-SP[2],ACC           ; |2617| 
        MOVL      ACC,*-SP[4]           ; |2617| 
        LCR       #FS$$DIV              ; |2617| 
        ; call occurs [#FS$$DIV] ; |2617| 
        MOVL      *-SP[2],ACC           ; |2617| 
        MOVL      ACC,XAR2              ; |2617| 
        LCR       #FS$$SUB              ; |2617| 
        ; call occurs [#FS$$SUB] ; |2617| 
        LCR       #_FloattoIntRound     ; |2617| 
        ; call occurs [#_FloattoIntRound] ; |2617| 
        MOV       T,#18                 ; |2617| 
        MOVZ      AR6,AL                ; |2617| 
        MOVL      XAR4,#_sensor+11      ; |2617| 
        MPYXU     ACC,T,AR1             ; |2617| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],AR6         ; |2617| 
        BF        L308,UNC              ; |2618| 
        ; branch occurs ; |2618| 
L307:    
        MOV       T,#18                 ; |2621| 
        MOVL      XAR4,#_sensor+11      ; |2621| 
        MPYXU     ACC,T,AR1             ; |2621| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#0          ; |2621| 
L308:    
        SUBB      SP,#4                 ; |2623| 
        MOV       T,#18                 ; |2623| 
        MOVL      XAR3,*--SP            ; |2623| 
        MPYXU     ACC,T,AR1             ; |2623| 
        MOVL      XAR2,*--SP            ; |2623| 
        MOVL      XAR4,#_sensor+11      ; |2623| 
        ADDL      XAR4,ACC
        MOVL      XAR1,*--SP            ; |2623| 
        MOV       AL,*+XAR4[0]          ; |2623| 
	.dwpsn	"man.c",2624,1
        LRETR
        ; return occurs

DW$517	.dwtag  DW_TAG_loop
	.dwattr DW$517, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L304:1:1473840056")
	.dwattr DW$517, DW_AT_begin_file("man.c")
	.dwattr DW$517, DW_AT_begin_line(0xa2c)
	.dwattr DW$517, DW_AT_end_line(0xa36)
DW$518	.dwtag  DW_TAG_loop_range
	.dwattr DW$518, DW_AT_low_pc(DW$L$_SensorDeviation$5$B)
	.dwattr DW$518, DW_AT_high_pc(DW$L$_SensorDeviation$5$E)
DW$519	.dwtag  DW_TAG_loop_range
	.dwattr DW$519, DW_AT_low_pc(DW$L$_SensorDeviation$6$B)
	.dwattr DW$519, DW_AT_high_pc(DW$L$_SensorDeviation$6$E)
DW$520	.dwtag  DW_TAG_loop_range
	.dwattr DW$520, DW_AT_low_pc(DW$L$_SensorDeviation$7$B)
	.dwattr DW$520, DW_AT_high_pc(DW$L$_SensorDeviation$7$E)
DW$521	.dwtag  DW_TAG_loop_range
	.dwattr DW$521, DW_AT_low_pc(DW$L$_SensorDeviation$8$B)
	.dwattr DW$521, DW_AT_high_pc(DW$L$_SensorDeviation$8$E)
DW$522	.dwtag  DW_TAG_loop_range
	.dwattr DW$522, DW_AT_low_pc(DW$L$_SensorDeviation$9$B)
	.dwattr DW$522, DW_AT_high_pc(DW$L$_SensorDeviation$9$E)
DW$523	.dwtag  DW_TAG_loop_range
	.dwattr DW$523, DW_AT_low_pc(DW$L$_SensorDeviation$10$B)
	.dwattr DW$523, DW_AT_high_pc(DW$L$_SensorDeviation$10$E)
	.dwendtag DW$517

	.dwattr DW$514, DW_AT_end_file("man.c")
	.dwattr DW$514, DW_AT_end_line(0xa40)
	.dwattr DW$514, DW_AT_end_column(0x01)
	.dwendtag DW$514

	.sect	".text"
	.global	_CylinderAverage

DW$524	.dwtag  DW_TAG_subprogram, DW_AT_name("CylinderAverage"), DW_AT_symbol_name("_CylinderAverage")
	.dwattr DW$524, DW_AT_low_pc(_CylinderAverage)
	.dwattr DW$524, DW_AT_high_pc(0x00)
	.dwattr DW$524, DW_AT_begin_file("man.c")
	.dwattr DW$524, DW_AT_begin_line(0xa47)
	.dwattr DW$524, DW_AT_begin_column(0x06)
	.dwattr DW$524, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$524, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",2632,1

;***************************************************************
;* FNAME: _CylinderAverage              FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_CylinderAverage:
;* AL    assigned to _num
DW$525	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num"), DW_AT_symbol_name("_num")
	.dwattr DW$525, DW_AT_type(*DW$T$11)
	.dwattr DW$525, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOVZ      AR3,AL                ; |2632| 
        MOV       T,#18                 ; |2636| 
        MOV       ACC,AR3 << #1         ; |2636| 
        MPYXU     P,T,AL                ; |2636| 
        MOVL      XAR6,P                ; |2636| 
        MOVL      XAR4,#_sensor         ; |2636| 
        MOVL      P,XAR4                ; |2636| 
        ADDUL     P,XAR6
        MOVL      XAR5,P                ; |2636| 
        ADDB      SP,#2
        TBIT      *+XAR5[0],#0          ; |2636| 
        BF        L311,NTC              ; |2636| 
        ; branchcc occurs ; |2636| 
        MOVB      AH,#1                 ; |2636| 
        MOV       T,#18                 ; |2636| 
        ADD       AH,AL                 ; |2636| 
        MPYXU     P,T,AH                ; |2636| 
        MOVL      ACC,XAR4              ; |2636| 
        ADDL      ACC,P
        MOVL      XAR4,ACC              ; |2636| 
        TBIT      *+XAR4[0],#0          ; |2636| 
        BF        L311,NTC              ; |2636| 
        ; branchcc occurs ; |2636| 
        TBIT      *+XAR5[1],#0          ; |2640| 
        MOVB      XAR6,#0
        BF        L309,TC               ; |2640| 
        ; branchcc occurs ; |2640| 
        TBIT      *+XAR4[1],#0          ; |2640| 
        BF        L310,NTC              ; |2640| 
        ; branchcc occurs ; |2640| 
L309:    
        MOVB      XAR6,#1               ; |2640| 
L310:    
        MOV       ACC,AR3 << #1         ; |2641| 
        MOV       T,#18                 ; |2641| 
        MPYXU     P,T,AL                ; |2641| 
        MOVL      XAR7,P                ; |2641| 
        MOVL      XAR5,#_sensor         ; |2641| 
        MOVL      P,XAR5                ; |2641| 
        ADDUL     P,XAR7
        MOVL      XAR4,P                ; |2641| 
        TBIT      *+XAR4[0],#4          ; |2641| 
        BF        L311,TC               ; |2641| 
        ; branchcc occurs ; |2641| 
        MOVB      AH,#1                 ; |2641| 
        MOV       T,#18                 ; |2641| 
        ADD       AH,AL                 ; |2641| 
        MPYXU     P,T,AH                ; |2641| 
        MOVL      ACC,XAR5              ; |2641| 
        ADDL      ACC,P
        MOVL      XAR1,ACC              ; |2641| 
        MOV       AL,*+XAR1[0]          ; |2641| 
        ANDB      AL,#0x10              ; |2641| 
        OR        AL,AR6                ; |2641| 
        BF        L311,NEQ              ; |2641| 
        ; branchcc occurs ; |2641| 
        MOVB      XAR0,#10              ; |2645| 
        MOV       AL,*+XAR4[AR0]        ; |2645| 
        LCR       #I$$TOFS              ; |2645| 
        ; call occurs [#I$$TOFS] ; |2645| 
        MOVB      XAR0,#10              ; |2645| 
        MOVL      XAR2,ACC              ; |2645| 
        MOV       AL,*+XAR1[AR0]        ; |2645| 
        LCR       #I$$TOFS              ; |2645| 
        ; call occurs [#I$$TOFS] ; |2645| 
        MOVL      *-SP[2],ACC           ; |2645| 
        MOVL      ACC,XAR2              ; |2645| 
        LCR       #FS$$ADD              ; |2645| 
        ; call occurs [#FS$$ADD] ; |2645| 
        MOVL      XAR6,ACC              ; |2645| 
        MOV       ACC,#32256 << 15
        MOVL      *-SP[2],ACC           ; |2645| 
        MOVL      ACC,XAR6              ; |2645| 
        LCR       #FS$$MPY              ; |2645| 
        ; call occurs [#FS$$MPY] ; |2645| 
        LCR       #_FloattoIntRound     ; |2645| 
        ; call occurs [#_FloattoIntRound] ; |2645| 
        MOVZ      AR6,AL                ; |2645| 
        MOVU      ACC,AR3
        MOVL      XAR4,#_cylinders+2    ; |2645| 
        LSL       ACC,2                 ; |2645| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],AR6         ; |2645| 
        BF        L312,UNC              ; |2646| 
        ; branch occurs ; |2646| 
L311:    
        MOVU      ACC,AR3
        MOVL      XAR4,#_cylinders+2    ; |2652| 
        LSL       ACC,2                 ; |2652| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#0          ; |2652| 
L312:    
        SUBB      SP,#2
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"man.c",2653,1
        LRETR
        ; return occurs
	.dwattr DW$524, DW_AT_end_file("man.c")
	.dwattr DW$524, DW_AT_end_line(0xa5d)
	.dwattr DW$524, DW_AT_end_column(0x01)
	.dwendtag DW$524

	.sect	".text"
	.global	_CylinderDeviation

DW$526	.dwtag  DW_TAG_subprogram, DW_AT_name("CylinderDeviation"), DW_AT_symbol_name("_CylinderDeviation")
	.dwattr DW$526, DW_AT_low_pc(_CylinderDeviation)
	.dwattr DW$526, DW_AT_high_pc(0x00)
	.dwattr DW$526, DW_AT_begin_file("man.c")
	.dwattr DW$526, DW_AT_begin_line(0xa63)
	.dwattr DW$526, DW_AT_begin_column(0x06)
	.dwattr DW$526, DW_AT_frame_base[DW_OP_breg20 -12]
	.dwattr DW$526, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",2660,1

;***************************************************************
;* FNAME: _CylinderDeviation            FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  2 Auto,  6 SOE     *
;***************************************************************

_CylinderDeviation:
;* AL    assigned to _num
DW$527	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num"), DW_AT_symbol_name("_num")
	.dwattr DW$527, DW_AT_type(*DW$T$11)
	.dwattr DW$527, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOVZ      AR3,AL                ; |2660| 
        MOV       T,#18                 ; |2665| 
        MOV       ACC,AR3 << #1         ; |2665| 
        MPYXU     P,T,AL                ; |2665| 
        MOVL      XAR6,P                ; |2665| 
        MOVL      XAR4,#_sensor         ; |2665| 
        MOVL      P,XAR4                ; |2665| 
        ADDUL     P,XAR6
        MOVL      XAR5,P                ; |2665| 
        MOVZ      AR6,*+XAR5[0]         ; |2665| 
        ADDB      SP,#4
        AND       AH,AR6,#0x0001        ; |2665| 
        BF        L316,EQ               ; |2665| 
        ; branchcc occurs ; |2665| 
        MOVB      AH,#1                 ; |2665| 
        MOV       T,#18                 ; |2665| 
        ADD       AH,AL                 ; |2665| 
        MPYXU     P,T,AH                ; |2665| 
        MOVL      ACC,XAR4              ; |2665| 
        ADDL      ACC,P
        MOVL      XAR4,ACC              ; |2665| 
        MOVZ      AR7,*+XAR4[0]         ; |2665| 
        AND       AL,AR7,#0x0001        ; |2665| 
        BF        L316,EQ               ; |2665| 
        ; branchcc occurs ; |2665| 
        AND       AH,AR6,#0x0010        ; |2665| 
        BF        L316,NEQ              ; |2665| 
        ; branchcc occurs ; |2665| 
        AND       AL,AR7,#0x0010        ; |2665| 
        BF        L316,NEQ              ; |2665| 
        ; branchcc occurs ; |2665| 
        TBIT      *+XAR5[1],#0          ; |2665| 
        BF        L316,TC               ; |2665| 
        ; branchcc occurs ; |2665| 
        TBIT      *+XAR4[1],#0          ; |2665| 
        BF        L316,TC               ; |2665| 
        ; branchcc occurs ; |2665| 
        MOV       AL,#0
        MOVW      DP,#_allsensors
        MOVB      XAR1,#0
        MOV       AH,#0
        MOVB      XAR2,#0
        MOVL      *-SP[4],ACC           ; |2674| 
        MOV       AL,@_allsensors       ; |2675| 
        BF        L315,EQ               ; |2675| 
        ; branchcc occurs ; |2675| 
L313:    
DW$L$_CylinderDeviation$8$B:
	.dwpsn	"man.c",2676,0
        MOV       ACC,AR3 << #1         ; |2677| 
        MOV       AH,AR1                ; |2677| 
        CMP       AH,AL                 ; |2677| 
        BF        L314,EQ               ; |2677| 
        ; branchcc occurs ; |2677| 
DW$L$_CylinderDeviation$8$E:
DW$L$_CylinderDeviation$9$B:
        SUB       AL,AR1                ; |2677| 
        CMP       AL,#65535             ; |2677| 
        BF        L314,EQ               ; |2677| 
        ; branchcc occurs ; |2677| 
DW$L$_CylinderDeviation$9$E:
DW$L$_CylinderDeviation$10$B:
        MOV       T,#18                 ; |2679| 
        MOVL      XAR4,#_sensor         ; |2679| 
        MPYXU     ACC,T,AR1             ; |2679| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |2679| 
        AND       AH,AL,#0x0001         ; |2679| 
        BF        L314,EQ               ; |2679| 
        ; branchcc occurs ; |2679| 
DW$L$_CylinderDeviation$10$E:
DW$L$_CylinderDeviation$11$B:
        TBIT      *+XAR4[1],#0          ; |2679| 
        BF        L314,TC               ; |2679| 
        ; branchcc occurs ; |2679| 
DW$L$_CylinderDeviation$11$E:
DW$L$_CylinderDeviation$12$B:
        ANDB      AL,#16                ; |2679| 
        BF        L314,NEQ              ; |2679| 
        ; branchcc occurs ; |2679| 
DW$L$_CylinderDeviation$12$E:
DW$L$_CylinderDeviation$13$B:
        MOVB      XAR0,#10              ; |2682| 
        MOV       AL,*+XAR4[AR0]        ; |2682| 
        LCR       #I$$TOFS              ; |2682| 
        ; call occurs [#I$$TOFS] ; |2682| 
        MOVL      *-SP[2],ACC           ; |2682| 
        MOVL      ACC,*-SP[4]           ; |2682| 
        LCR       #FS$$ADD              ; |2682| 
        ; call occurs [#FS$$ADD] ; |2682| 
        ADDB      XAR2,#1               ; |2681| 
        MOVL      *-SP[4],ACC           ; |2682| 
DW$L$_CylinderDeviation$13$E:
L314:    
DW$L$_CylinderDeviation$14$B:
        ADDB      XAR1,#1               ; |2675| 
        MOVW      DP,#_allsensors
        MOV       AL,AR1                ; |2675| 
        CMP       AL,@_allsensors       ; |2675| 
	.dwpsn	"man.c",2685,0
        BF        L313,LO               ; |2675| 
        ; branchcc occurs ; |2675| 
DW$L$_CylinderDeviation$14$E:
L315:    
        MOV       AL,AR2                ; |2686| 
        LCR       #U$$TOFS              ; |2686| 
        ; call occurs [#U$$TOFS] ; |2686| 
        MOVL      *-SP[2],ACC           ; |2686| 
        MOVL      ACC,*-SP[4]           ; |2686| 
        LCR       #FS$$DIV              ; |2686| 
        ; call occurs [#FS$$DIV] ; |2686| 
        MOVL      *-SP[4],ACC           ; |2686| 
        MOVU      ACC,AR3
        MOVL      XAR4,#_cylinders      ; |2687| 
        LSL       ACC,2                 ; |2687| 
        ADDL      XAR4,ACC
        MOVL      XAR1,XAR4             ; |2687| 
        MOV       AL,*+XAR1[2]          ; |2687| 
        LCR       #I$$TOFS              ; |2687| 
        ; call occurs [#I$$TOFS] ; |2687| 
        MOVL      XAR6,*-SP[4]          ; |2687| 
        MOVL      *-SP[2],XAR6          ; |2687| 
        LCR       #FS$$SUB              ; |2687| 
        ; call occurs [#FS$$SUB] ; |2687| 
        MOVL      *-SP[4],ACC           ; |2687| 
        LCR       #_FloattoIntRound     ; |2688| 
        ; call occurs [#_FloattoIntRound] ; |2688| 
        MOV       *+XAR1[3],AL          ; |2688| 
        BF        L317,UNC              ; |2689| 
        ; branch occurs ; |2689| 
L316:    
        MOVU      ACC,AR3
        MOVL      XAR4,#_cylinders+3    ; |2694| 
        LSL       ACC,2                 ; |2694| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#0          ; |2694| 
L317:    
        SUBB      SP,#4
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"man.c",2695,1
        LRETR
        ; return occurs

DW$528	.dwtag  DW_TAG_loop
	.dwattr DW$528, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L313:1:1473840056")
	.dwattr DW$528, DW_AT_begin_file("man.c")
	.dwattr DW$528, DW_AT_begin_line(0xa73)
	.dwattr DW$528, DW_AT_end_line(0xa7d)
DW$529	.dwtag  DW_TAG_loop_range
	.dwattr DW$529, DW_AT_low_pc(DW$L$_CylinderDeviation$8$B)
	.dwattr DW$529, DW_AT_high_pc(DW$L$_CylinderDeviation$8$E)
DW$530	.dwtag  DW_TAG_loop_range
	.dwattr DW$530, DW_AT_low_pc(DW$L$_CylinderDeviation$9$B)
	.dwattr DW$530, DW_AT_high_pc(DW$L$_CylinderDeviation$9$E)
DW$531	.dwtag  DW_TAG_loop_range
	.dwattr DW$531, DW_AT_low_pc(DW$L$_CylinderDeviation$10$B)
	.dwattr DW$531, DW_AT_high_pc(DW$L$_CylinderDeviation$10$E)
DW$532	.dwtag  DW_TAG_loop_range
	.dwattr DW$532, DW_AT_low_pc(DW$L$_CylinderDeviation$11$B)
	.dwattr DW$532, DW_AT_high_pc(DW$L$_CylinderDeviation$11$E)
DW$533	.dwtag  DW_TAG_loop_range
	.dwattr DW$533, DW_AT_low_pc(DW$L$_CylinderDeviation$12$B)
	.dwattr DW$533, DW_AT_high_pc(DW$L$_CylinderDeviation$12$E)
DW$534	.dwtag  DW_TAG_loop_range
	.dwattr DW$534, DW_AT_low_pc(DW$L$_CylinderDeviation$13$B)
	.dwattr DW$534, DW_AT_high_pc(DW$L$_CylinderDeviation$13$E)
DW$535	.dwtag  DW_TAG_loop_range
	.dwattr DW$535, DW_AT_low_pc(DW$L$_CylinderDeviation$14$B)
	.dwattr DW$535, DW_AT_high_pc(DW$L$_CylinderDeviation$14$E)
	.dwendtag DW$528

	.dwattr DW$526, DW_AT_end_file("man.c")
	.dwattr DW$526, DW_AT_end_line(0xa87)
	.dwattr DW$526, DW_AT_end_column(0x01)
	.dwendtag DW$526

	.sect	".text"
	.global	_SensorCompensation

DW$536	.dwtag  DW_TAG_subprogram, DW_AT_name("SensorCompensation"), DW_AT_symbol_name("_SensorCompensation")
	.dwattr DW$536, DW_AT_low_pc(_SensorCompensation)
	.dwattr DW$536, DW_AT_high_pc(0x00)
	.dwattr DW$536, DW_AT_begin_file("man.c")
	.dwattr DW$536, DW_AT_begin_line(0xa8d)
	.dwattr DW$536, DW_AT_begin_column(0x05)
	.dwattr DW$536, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$536, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",2702,1

;***************************************************************
;* FNAME: _SensorCompensation           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SensorCompensation:
;* AL    assigned to _num
DW$537	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num"), DW_AT_symbol_name("_num")
	.dwattr DW$537, DW_AT_type(*DW$T$11)
	.dwattr DW$537, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _val
DW$538	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$538, DW_AT_type(*DW$T$10)
	.dwattr DW$538, DW_AT_location[DW_OP_reg1]
;* AR4   assigned to _rpm
DW$539	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$539, DW_AT_type(*DW$T$11)
	.dwattr DW$539, DW_AT_location[DW_OP_reg12]
        MOVZ      AR7,AL                ; |2702| 
        MOVW      DP,#_allsensors+4
        MOV       AL,AR4                ; |2706| 
        MOV       PL,AH                 ; |2702| 
        SUB       AL,@_allsensors+4     ; |2706| 
        MOV       AH,AL                 ; |2706| 
        CMPB      AL,#0                 ; |2707| 
        BF        L318,GEQ              ; |2707| 
        ; branchcc occurs ; |2707| 
        MOVB      AH,#0
L318:    
        MOVW      DP,#_allsensors+5
        MOV       AL,@_allsensors+5     ; |2709| 
        CMP       AL,AR4                ; |2709| 
        BF        L319,HI               ; |2709| 
        ; branchcc occurs ; |2709| 
        MOVW      DP,#_allsensors+4
        SUB       AL,@_allsensors+4     ; |2709| 
        ADDB      AL,#-1
        MOV       AH,AL                 ; |2709| 
L319:    
        MOV       AL,AR7                ; |2713| 
        LCR       #_GetRPMCompVal       ; |2713| 
        ; call occurs [#_GetRPMCompVal] ; |2713| 
        MOV       AH,PL                 ; |2713| 
        SUB       AH,AL                 ; |2713| 
        MOV       T,#18                 ; |2713| 
        MOV       PL,AH                 ; |2713| 
        MPYXU     ACC,T,AR7             ; |2713| 
        MOVL      XAR4,#_sensor+7       ; |2713| 
        ADDL      XAR4,ACC
        MOV       AL,PL                 ; |2713| 
        MOV       *+XAR4[0],P           ; |2713| 
	.dwpsn	"man.c",2715,1
        LRETR
        ; return occurs
	.dwattr DW$536, DW_AT_end_file("man.c")
	.dwattr DW$536, DW_AT_end_line(0xa9b)
	.dwattr DW$536, DW_AT_end_column(0x01)
	.dwendtag DW$536

	.sect	".text"
	.global	_ApplyOffset

DW$540	.dwtag  DW_TAG_subprogram, DW_AT_name("ApplyOffset"), DW_AT_symbol_name("_ApplyOffset")
	.dwattr DW$540, DW_AT_low_pc(_ApplyOffset)
	.dwattr DW$540, DW_AT_high_pc(0x00)
	.dwattr DW$540, DW_AT_begin_file("man.c")
	.dwattr DW$540, DW_AT_begin_line(0xaa4)
	.dwattr DW$540, DW_AT_begin_column(0x05)
	.dwattr DW$540, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$540, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",2725,1

;***************************************************************
;* FNAME: _ApplyOffset                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ApplyOffset:
;* AL    assigned to _num
DW$541	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num"), DW_AT_symbol_name("_num")
	.dwattr DW$541, DW_AT_type(*DW$T$11)
	.dwattr DW$541, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _val
DW$542	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$542, DW_AT_type(*DW$T$10)
	.dwattr DW$542, DW_AT_location[DW_OP_reg1]
        MOVW      DP,#_settings+13
        MOVZ      AR0,AL                ; |2725| 
        MOVZ      AR6,AH                ; |2725| 
        MOV       AL,@_settings+13      ; |2727| 
        BF        L320,NEQ              ; |2727| 
        ; branchcc occurs ; |2727| 
        MOV       AL,AR6                ; |2729| 
        MOVL      XAR4,#_offsetA        ; |2729| 
        SUB       AL,*+XAR4[AR0]        ; |2729| 
        MOVL      XAR4,#_offsetB        ; |2729| 
        SUB       AL,*+XAR4[AR0]        ; |2729| 
        MOVZ      AR6,AL                ; |2729| 
L320:    
        MOV       T,#18                 ; |2731| 
        MPYXU     ACC,T,AR0             ; |2731| 
        MOVL      XAR4,#_sensor+6       ; |2731| 
        ADDL      XAR4,ACC
        MOV       AL,AR6                ; |2732| 
        MOV       *+XAR4[0],AR6         ; |2731| 
	.dwpsn	"man.c",2733,1
        LRETR
        ; return occurs
	.dwattr DW$540, DW_AT_end_file("man.c")
	.dwattr DW$540, DW_AT_end_line(0xaad)
	.dwattr DW$540, DW_AT_end_column(0x01)
	.dwendtag DW$540

	.sect	".text"
	.global	_PreWarningPowerUpInit

DW$543	.dwtag  DW_TAG_subprogram, DW_AT_name("PreWarningPowerUpInit"), DW_AT_symbol_name("_PreWarningPowerUpInit")
	.dwattr DW$543, DW_AT_low_pc(_PreWarningPowerUpInit)
	.dwattr DW$543, DW_AT_high_pc(0x00)
	.dwattr DW$543, DW_AT_begin_file("man.c")
	.dwattr DW$543, DW_AT_begin_line(0xab3)
	.dwattr DW$543, DW_AT_begin_column(0x06)
	.dwattr DW$543, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$543, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",2740,1

;***************************************************************
;* FNAME: _PreWarningPowerUpInit        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_PreWarningPowerUpInit:
        LCR       #_ReadPrewarnStructfromNVMEM ; |2742| 
        ; call occurs [#_ReadPrewarnStructfromNVMEM] ; |2742| 
        MOV       T,#12000              ; |2744| 
        MOVW      DP,#_allsensors+35
        MPY       ACC,T,@_allsensors+35 ; |2744| 
        MOVU      ACC,AL
        MOVW      DP,#_timers+60
        MOVL      @_timers+60,ACC       ; |2744| 
        NOP
        NOP
	.dwpsn	"man.c",2745,1
        LRETR
        ; return occurs
	.dwattr DW$543, DW_AT_end_file("man.c")
	.dwattr DW$543, DW_AT_end_line(0xab9)
	.dwattr DW$543, DW_AT_end_column(0x01)
	.dwendtag DW$543

	.sect	".text"
	.global	_PrewarnReset

DW$544	.dwtag  DW_TAG_subprogram, DW_AT_name("PrewarnReset"), DW_AT_symbol_name("_PrewarnReset")
	.dwattr DW$544, DW_AT_low_pc(_PrewarnReset)
	.dwattr DW$544, DW_AT_high_pc(0x00)
	.dwattr DW$544, DW_AT_begin_file("man.c")
	.dwattr DW$544, DW_AT_begin_line(0xabe)
	.dwattr DW$544, DW_AT_begin_column(0x06)
	.dwattr DW$544, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$544, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",2751,1

;***************************************************************
;* FNAME: _PrewarnReset                 FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_PrewarnReset:
        MOVL      *SP++,XAR1
        MOVB      ACC,#0
        MOVW      DP,#_timers+60
        MOVB      XAR1,#0
	.dwpsn	"man.c",2755,0
        MOVL      @_timers+60,ACC       ; |2754| 
L321:    
DW$L$_PrewarnReset$2$B:
	.dwpsn	"man.c",2756,0
        SETC      SXM
        MOV       AL,AR1
        MOVL      XAR4,#_prewarn        ; |2758| 
        MOV       ACC,AL                ; |2758| 
        ADDL      XAR4,ACC
        MOVW      DP,#_allsensors+36
        MOV       AL,@_allsensors+36    ; |2758| 
        MOV       *+XAR4[0],AL          ; |2758| 
        MOV       AL,AR1                ; |2758| 
        MOV       ACC,AL                ; |2759| 
        MOVL      XAR4,#_prewarn+28     ; |2759| 
        ADDL      XAR4,ACC
        MOVB      XAR6,#0
        MOV       *+XAR4[0],#0          ; |2759| 
        MOV       ACC,AR1 << 1          ; |2760| 
        MOVL      XAR4,#_prewarn+56     ; |2760| 
        ADDL      XAR4,ACC
        MOVL      *+XAR4[0],XAR6        ; |2760| 
        MOVL      XAR4,#_prewarn+112    ; |2761| 
        ADDL      XAR4,ACC
        MOV       T,AR1                 ; |2761| 
        MOVB      ACC,#0
        MOVL      *+XAR4[0],ACC         ; |2761| 
        MPYB      ACC,T,#18             ; |2762| 
        MOVL      XAR4,#_sensor+1       ; |2762| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#13         ; |2762| 
        BF        L322,NTC              ; |2762| 
        ; branchcc occurs ; |2762| 
DW$L$_PrewarnReset$2$E:
DW$L$_PrewarnReset$3$B:
        MOV       AL,AR1
        LCR       #_PrewarningAlarmReset ; |2762| 
        ; call occurs [#_PrewarningAlarmReset] ; |2762| 
DW$L$_PrewarnReset$3$E:
L322:    
DW$L$_PrewarnReset$4$B:
        MOV       AL,AR1
        ADDB      AL,#1                 ; |2755| 
        CMPB      AL,#28                ; |2755| 
        MOVZ      AR1,AL                ; |2755| 
	.dwpsn	"man.c",2763,0
        BF        L321,LT               ; |2755| 
        ; branchcc occurs ; |2755| 
DW$L$_PrewarnReset$4$E:
        LCR       #_WritePrewarnStructtoNVMEM ; |2764| 
        ; call occurs [#_WritePrewarnStructtoNVMEM] ; |2764| 
        MOVL      XAR1,*--SP
	.dwpsn	"man.c",2766,1
        LRETR
        ; return occurs

DW$545	.dwtag  DW_TAG_loop
	.dwattr DW$545, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L321:1:1473840056")
	.dwattr DW$545, DW_AT_begin_file("man.c")
	.dwattr DW$545, DW_AT_begin_line(0xac3)
	.dwattr DW$545, DW_AT_end_line(0xacb)
DW$546	.dwtag  DW_TAG_loop_range
	.dwattr DW$546, DW_AT_low_pc(DW$L$_PrewarnReset$2$B)
	.dwattr DW$546, DW_AT_high_pc(DW$L$_PrewarnReset$2$E)
DW$547	.dwtag  DW_TAG_loop_range
	.dwattr DW$547, DW_AT_low_pc(DW$L$_PrewarnReset$3$B)
	.dwattr DW$547, DW_AT_high_pc(DW$L$_PrewarnReset$3$E)
DW$548	.dwtag  DW_TAG_loop_range
	.dwattr DW$548, DW_AT_low_pc(DW$L$_PrewarnReset$4$B)
	.dwattr DW$548, DW_AT_high_pc(DW$L$_PrewarnReset$4$E)
	.dwendtag DW$545

	.dwattr DW$544, DW_AT_end_file("man.c")
	.dwattr DW$544, DW_AT_end_line(0xace)
	.dwattr DW$544, DW_AT_end_column(0x01)
	.dwendtag DW$544

	.sect	".text"
	.global	_PreWarningInit

DW$549	.dwtag  DW_TAG_subprogram, DW_AT_name("PreWarningInit"), DW_AT_symbol_name("_PreWarningInit")
	.dwattr DW$549, DW_AT_low_pc(_PreWarningInit)
	.dwattr DW$549, DW_AT_high_pc(0x00)
	.dwattr DW$549, DW_AT_begin_file("man.c")
	.dwattr DW$549, DW_AT_begin_line(0xad2)
	.dwattr DW$549, DW_AT_begin_column(0x06)
	.dwattr DW$549, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$549, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",2771,1

;***************************************************************
;* FNAME: _PreWarningInit               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_PreWarningInit:
        MOVW      DP,#_prewarn+168
        MOV       @_prewarn+168,#1      ; |2774| 
        LCR       #_PrewarnReset        ; |2775| 
        ; call occurs [#_PrewarnReset] ; |2775| 
        MOV       T,#12000              ; |2776| 
        MOVW      DP,#_allsensors+35
        MPY       ACC,T,@_allsensors+35 ; |2776| 
        MOVW      DP,#_timers+60
        MOVU      ACC,AL
        MOVL      @_timers+60,ACC       ; |2776| 
        MOVB      AL,#3                 ; |2779| 
        LCR       #_SetBitEvent         ; |2779| 
        ; call occurs [#_SetBitEvent] ; |2779| 
	.dwpsn	"man.c",2781,1
        LRETR
        ; return occurs
	.dwattr DW$549, DW_AT_end_file("man.c")
	.dwattr DW$549, DW_AT_end_line(0xadd)
	.dwattr DW$549, DW_AT_end_column(0x01)
	.dwendtag DW$549

	.sect	".text"
	.global	_PreWarnLevelReset

DW$550	.dwtag  DW_TAG_subprogram, DW_AT_name("PreWarnLevelReset"), DW_AT_symbol_name("_PreWarnLevelReset")
	.dwattr DW$550, DW_AT_low_pc(_PreWarnLevelReset)
	.dwattr DW$550, DW_AT_high_pc(0x00)
	.dwattr DW$550, DW_AT_begin_file("man.c")
	.dwattr DW$550, DW_AT_begin_line(0xae3)
	.dwattr DW$550, DW_AT_begin_column(0x06)
	.dwattr DW$550, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$550, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",2788,1

;***************************************************************
;* FNAME: _PreWarnLevelReset            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_PreWarnLevelReset:
        SETC      SXM
	.dwpsn	"man.c",2790,0
        MOVB      XAR6,#0
L323:    
DW$L$_PreWarnLevelReset$2$B:
	.dwpsn	"man.c",2791,0
        MOV       T,AR6
        MOVL      XAR4,#_sensor         ; |2792| 
        MPYB      ACC,T,#18             ; |2792| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#4          ; |2792| 
        BF        L324,NTC              ; |2792| 
        ; branchcc occurs ; |2792| 
DW$L$_PreWarnLevelReset$2$E:
DW$L$_PreWarnLevelReset$3$B:
        MOV       AL,AR6
        MOVL      XAR4,#_prewarn        ; |2794| 
        MOV       ACC,AL                ; |2794| 
        ADDL      XAR4,ACC
        MOVW      DP,#_allsensors+36
        MOV       AL,@_allsensors+36    ; |2794| 
        MOV       *+XAR4[0],AL          ; |2794| 
DW$L$_PreWarnLevelReset$3$E:
L324:    
DW$L$_PreWarnLevelReset$4$B:
        MOV       AL,AR6
        ADDB      AL,#1                 ; |2790| 
        MOVZ      AR6,AL                ; |2790| 
        CMPB      AL,#28                ; |2790| 
	.dwpsn	"man.c",2796,0
        BF        L323,LT               ; |2790| 
        ; branchcc occurs ; |2790| 
DW$L$_PreWarnLevelReset$4$E:
        LCR       #_WritePrewarnStructtoNVMEM ; |2797| 
        ; call occurs [#_WritePrewarnStructtoNVMEM] ; |2797| 
	.dwpsn	"man.c",2798,1
        LRETR
        ; return occurs

DW$551	.dwtag  DW_TAG_loop
	.dwattr DW$551, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L323:1:1473840056")
	.dwattr DW$551, DW_AT_begin_file("man.c")
	.dwattr DW$551, DW_AT_begin_line(0xae6)
	.dwattr DW$551, DW_AT_end_line(0xaec)
DW$552	.dwtag  DW_TAG_loop_range
	.dwattr DW$552, DW_AT_low_pc(DW$L$_PreWarnLevelReset$2$B)
	.dwattr DW$552, DW_AT_high_pc(DW$L$_PreWarnLevelReset$2$E)
DW$553	.dwtag  DW_TAG_loop_range
	.dwattr DW$553, DW_AT_low_pc(DW$L$_PreWarnLevelReset$3$B)
	.dwattr DW$553, DW_AT_high_pc(DW$L$_PreWarnLevelReset$3$E)
DW$554	.dwtag  DW_TAG_loop_range
	.dwattr DW$554, DW_AT_low_pc(DW$L$_PreWarnLevelReset$4$B)
	.dwattr DW$554, DW_AT_high_pc(DW$L$_PreWarnLevelReset$4$E)
	.dwendtag DW$551

	.dwattr DW$550, DW_AT_end_file("man.c")
	.dwattr DW$550, DW_AT_end_line(0xaee)
	.dwattr DW$550, DW_AT_end_column(0x01)
	.dwendtag DW$550

	.sect	".text"
	.global	_PreWarningCalc

DW$555	.dwtag  DW_TAG_subprogram, DW_AT_name("PreWarningCalc"), DW_AT_symbol_name("_PreWarningCalc")
	.dwattr DW$555, DW_AT_low_pc(_PreWarningCalc)
	.dwattr DW$555, DW_AT_high_pc(0x00)
	.dwattr DW$555, DW_AT_begin_file("man.c")
	.dwattr DW$555, DW_AT_begin_line(0xaf3)
	.dwattr DW$555, DW_AT_begin_column(0x06)
	.dwattr DW$555, DW_AT_frame_base[DW_OP_breg20 -38]
	.dwattr DW$555, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",2804,1

;***************************************************************
;* FNAME: _PreWarningCalc               FR SIZE:  36           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 30 Auto,  4 SOE     *
;***************************************************************

_PreWarningCalc:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        ADDB      SP,#32
        MOVZ      AR4,SP                ; |2811| 
        MOVB      ACC,#30
        MOVB      XAR5,#0
        SUBB      XAR4,#32              ; |2811| 
        LCR       #_memset              ; |2811| 
        ; call occurs [#_memset] ; |2811| 
        MOVW      DP,#_prewarn+168
        MOV       AL,@_prewarn+168      ; |2813| 
        CMPB      AL,#1                 ; |2813| 
        BF        L337,NEQ              ; |2813| 
        ; branchcc occurs ; |2813| 
        MOVW      DP,#_timers+60
        MOVL      ACC,@_timers+60       ; |2815| 
        BF        L334,NEQ              ; |2815| 
        ; branchcc occurs ; |2815| 
        MOVW      DP,#_timers+60
        MOVL      ACC,@_timers+60       ; |2828| 
        BF        L337,NEQ              ; |2828| 
        ; branchcc occurs ; |2828| 
        MOVW      DP,#_allsensors
        MOVB      XAR1,#0
        MOV       AL,@_allsensors       ; |2830| 
        BF        L333,EQ               ; |2830| 
        ; branchcc occurs ; |2830| 
L325:    
DW$L$_PreWarningCalc$5$B:
	.dwpsn	"man.c",2831,0
        MOV       T,AR1
        MOVL      XAR4,#_sensor         ; |2833| 
        MPYB      ACC,T,#18             ; |2833| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |2833| 
        AND       AH,AL,#0x0001         ; |2833| 
        BF        L331,EQ               ; |2833| 
        ; branchcc occurs ; |2833| 
DW$L$_PreWarningCalc$5$E:
DW$L$_PreWarningCalc$6$B:
        MOV       AH,*+XAR4[1]          ; |2833| 
        ANDB      AH,#0x01              ; |2833| 
        ANDB      AL,#20                ; |2833| 
        OR        AL,AH                 ; |2833| 
        BF        L329,NEQ              ; |2833| 
        ; branchcc occurs ; |2833| 
DW$L$_PreWarningCalc$6$E:
DW$L$_PreWarningCalc$7$B:
        SETC      SXM
        MOVL      XAR4,#_prewarn+112    ; |2835| 
        MOV       ACC,AR1 << 1          ; |2835| 
        ADDL      XAR4,ACC
        MOVL      ACC,*+XAR4[0]         ; |2835| 
        BF        L326,NEQ              ; |2835| 
        ; branchcc occurs ; |2835| 
DW$L$_PreWarningCalc$7$E:
DW$L$_PreWarningCalc$8$B:
        MOV       AL,AR1
        MOVL      XAR4,#_prewarn+28     ; |2839| 
        MOV       ACC,AL                ; |2839| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#0          ; |2839| 
        BF        L327,UNC              ; |2839| 
        ; branch occurs ; |2839| 
DW$L$_PreWarningCalc$8$E:
L326:    
DW$L$_PreWarningCalc$9$B:
        MOV       ACC,AR1 << 1          ; |2837| 
        MOVL      XAR4,#_prewarn+112    ; |2837| 
        ADDL      XAR4,ACC
        MOVL      XAR6,*+XAR4[0]        ; |2837| 
        MOVL      XAR4,#_prewarn+56     ; |2837| 
        ADDL      XAR4,ACC
        MOVL      *-SP[2],XAR6          ; |2837| 
        MOVL      ACC,*+XAR4[0]         ; |2837| 
        FFC       XAR7,#L$$DIV          ; |2837| 
        ; call occurs [#L$$DIV] ; |2837| 
        SETC      SXM
        MOVL      XAR6,ACC              ; |2837| 
        MOV       AL,AR1                ; |2837| 
        MOVL      XAR4,#_prewarn+28     ; |2837| 
        MOV       ACC,AL                ; |2837| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],AR6         ; |2837| 
DW$L$_PreWarningCalc$9$E:
L327:    
DW$L$_PreWarningCalc$10$B:
        MOV       AL,AR1
        MOVL      XAR4,#_prewarn        ; |2843| 
        MOV       ACC,AL                ; |2843| 
        MOVL      XAR5,#_prewarn+28     ; |2843| 
        ADDL      XAR4,ACC
        MOV       AL,AR1                ; |2843| 
        MOV       ACC,AL                ; |2843| 
        ADDL      XAR5,ACC
        MOV       ACC,*+XAR5[0]         ; |2843| 
        ABS       ACC                   ; |2843| 
        CMP       AL,*+XAR4[0]          ; |2843| 
        BF        L328,GEQ              ; |2843| 
        ; branchcc occurs ; |2843| 
DW$L$_PreWarningCalc$10$E:
DW$L$_PreWarningCalc$11$B:
        MPYB      ACC,T,#18             ; |2861| 
        MOVL      XAR4,#_sensor         ; |2861| 
        ADDL      XAR4,ACC
        MOVL      XAR2,XAR4             ; |2861| 
        TBIT      *+XAR2[1],#13         ; |2861| 
        BF        L329,NTC              ; |2861| 
        ; branchcc occurs ; |2861| 
DW$L$_PreWarningCalc$11$E:
DW$L$_PreWarningCalc$12$B:
        MOV       AL,AR1
        LCR       #_PrewarningAlarmReset ; |2861| 
        ; call occurs [#_PrewarningAlarmReset] ; |2861| 
        TBIT      *+XAR2[0],#0          ; |2861| 
        BF        L330,TC               ; |2861| 
        ; branchcc occurs ; |2861| 
DW$L$_PreWarningCalc$12$E:
DW$L$_PreWarningCalc$13$B:
        BF        L331,UNC              ; |2861| 
        ; branch occurs ; |2861| 
DW$L$_PreWarningCalc$13$E:
L328:    
DW$L$_PreWarningCalc$14$B:
        MPYB      ACC,T,#18             ; |2845| 
        MOVL      XAR4,#_sensor         ; |2845| 
        ADDL      XAR4,ACC
        MOVL      XAR2,XAR4             ; |2845| 
        MOV       AL,*+XAR2[1]          ; |2845| 
        OR        AL,#0x1000            ; |2845| 
        MOV       *+XAR2[1],AL          ; |2845| 
        AND       AL,AL,#0x2000         ; |2846| 
        BF        L329,NEQ              ; |2846| 
        ; branchcc occurs ; |2846| 
DW$L$_PreWarningCalc$14$E:
DW$L$_PreWarningCalc$15$B:
        MOVB      AL,#196               ; |2849| 
        ADD       AL,AR1                ; |2849| 
        LCR       #_SetAlarmEvent       ; |2849| 
        ; call occurs [#_SetAlarmEvent] ; |2849| 
        MOV       AL,#14305             ; |2854| 
        ADD       AL,AR1                ; |2854| 
        MOV       PH,#0
        MOV       PL,#1
        MOV       ACC,AL << #1          ; |2854| 
        OR        *+XAR2[1],#0x2000     ; |2850| 
        MOV       AH,AL                 ; |2854| 
        ADDUL     P,XAR2
        MOVL      XAR4,P                ; |2854| 
        MOVB      XAR5,#1               ; |2854| 
        MOVB      AL,#0
        LCR       #_WriteNVMemory       ; |2854| 
        ; call occurs [#_WriteNVMemory] ; |2854| 
        SETC      SXM
        MOV       AL,AR1                ; |2854| 
        MOVL      XAR4,#_prewarn        ; |2855| 
        MOV       ACC,AL                ; |2855| 
        ADDL      XAR4,ACC
        MOVW      DP,#_allsensors+36
        MOV       AL,@_allsensors+36    ; |2855| 
        ADD       *+XAR4[0],AL          ; |2855| 
DW$L$_PreWarningCalc$15$E:
L329:    
DW$L$_PreWarningCalc$16$B:
        MOV       T,AR1
        MOVL      XAR4,#_sensor         ; |2865| 
        MPYB      ACC,T,#18             ; |2865| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#0          ; |2865| 
        BF        L331,NTC              ; |2865| 
        ; branchcc occurs ; |2865| 
DW$L$_PreWarningCalc$16$E:
L330:    
DW$L$_PreWarningCalc$17$B:
        MOV       T,AR1
        MOVL      XAR4,#_sensor         ; |2865| 
        MPYB      ACC,T,#18             ; |2865| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#2          ; |2865| 
        BF        L332,NTC              ; |2865| 
        ; branchcc occurs ; |2865| 
DW$L$_PreWarningCalc$17$E:
L331:    
DW$L$_PreWarningCalc$18$B:
        MOV       T,AR1
        MOVL      XAR4,#_sensor+1       ; |2866| 
        MPYB      ACC,T,#18             ; |2866| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#13         ; |2866| 
        BF        L332,NTC              ; |2866| 
        ; branchcc occurs ; |2866| 
DW$L$_PreWarningCalc$18$E:
DW$L$_PreWarningCalc$19$B:
        MOV       AL,AR1
        LCR       #_PrewarningAlarmReset ; |2866| 
        ; call occurs [#_PrewarningAlarmReset] ; |2866| 
DW$L$_PreWarningCalc$19$E:
L332:    
DW$L$_PreWarningCalc$20$B:
        SETC      SXM
        MOVB      XAR6,#0
        MOVL      XAR4,#_prewarn+56     ; |2869| 
        MOV       ACC,AR1 << 1          ; |2869| 
        ADDL      XAR4,ACC
        MOVL      *+XAR4[0],XAR6        ; |2869| 
        MOVL      XAR4,#_prewarn+112    ; |2870| 
        ADDL      XAR4,ACC
        MOVB      ACC,#0
        MOVL      *+XAR4[0],ACC         ; |2870| 
        MOV       AL,AR1                ; |2870| 
        ADDB      AL,#1                 ; |2830| 
        MOVZ      AR1,AL                ; |2830| 
        MOVW      DP,#_allsensors
        CMP       AL,@_allsensors       ; |2830| 
	.dwpsn	"man.c",2871,0
        BF        L325,LO               ; |2830| 
        ; branchcc occurs ; |2830| 
DW$L$_PreWarningCalc$20$E:
L333:    
        MOVW      DP,#_allsensors+35
        MOV       T,#12000              ; |2872| 
        MPY       ACC,T,@_allsensors+35 ; |2872| 
        MOVW      DP,#_timers+60
        MOVU      ACC,AL
        MOVL      @_timers+60,ACC       ; |2872| 
        LCR       #_WritePrewarnStructtoNVMEM ; |2873| 
        ; call occurs [#_WritePrewarnStructtoNVMEM] ; |2873| 
        BF        L337,UNC              ; |2873| 
        ; branch occurs ; |2873| 
L334:    
        MOVW      DP,#_allsensors
        MOV       AL,@_allsensors       ; |2817| 
        MOVB      XAR1,#0
        BF        L337,EQ               ; |2817| 
        ; branchcc occurs ; |2817| 
L335:    
DW$L$_PreWarningCalc$23$B:
	.dwpsn	"man.c",2818,0
        MOV       T,AR1
        MOVL      XAR4,#_sensor         ; |2820| 
        MPYB      ACC,T,#18             ; |2820| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#0          ; |2820| 
        BF        L336,NTC              ; |2820| 
        ; branchcc occurs ; |2820| 
DW$L$_PreWarningCalc$23$E:
DW$L$_PreWarningCalc$24$B:
        TBIT      *+XAR4[1],#0          ; |2820| 
        BF        L336,TC               ; |2820| 
        ; branchcc occurs ; |2820| 
DW$L$_PreWarningCalc$24$E:
DW$L$_PreWarningCalc$25$B:
        MOV       AL,AR1
        LCR       #_GetEndResultValue   ; |2822| 
        ; call occurs [#_GetEndResultValue] ; |2822| 
        SETC      SXM
        MOVZ      AR6,AL                ; |2822| 
        MOVL      XAR4,#_prewarn+56     ; |2823| 
        MOV       ACC,AR1 << 1          ; |2823| 
        ADDL      XAR4,ACC
        MOVL      XAR7,ACC              ; |2823| 
        MOV       ACC,AR6               ; |2823| 
        ADDL      *+XAR4[0],ACC         ; |2823| 
        MOVL      XAR4,#_prewarn+112    ; |2824| 
        MOVL      ACC,XAR7              ; |2824| 
        ADDL      XAR4,ACC
        MOVB      ACC,#1
        ADDL      *+XAR4[0],ACC         ; |2824| 
DW$L$_PreWarningCalc$25$E:
L336:    
DW$L$_PreWarningCalc$26$B:
        MOV       AL,AR1
        ADDB      AL,#1                 ; |2817| 
        MOVZ      AR1,AL                ; |2817| 
        MOVW      DP,#_allsensors
        CMP       AL,@_allsensors       ; |2817| 
	.dwpsn	"man.c",2826,0
        BF        L335,LO               ; |2817| 
        ; branchcc occurs ; |2817| 
DW$L$_PreWarningCalc$26$E:
L337:    
        SUBB      SP,#32
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"man.c",2876,1
        LRETR
        ; return occurs

DW$556	.dwtag  DW_TAG_loop
	.dwattr DW$556, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L335:1:1473840056")
	.dwattr DW$556, DW_AT_begin_file("man.c")
	.dwattr DW$556, DW_AT_begin_line(0xb01)
	.dwattr DW$556, DW_AT_end_line(0xb0a)
DW$557	.dwtag  DW_TAG_loop_range
	.dwattr DW$557, DW_AT_low_pc(DW$L$_PreWarningCalc$23$B)
	.dwattr DW$557, DW_AT_high_pc(DW$L$_PreWarningCalc$23$E)
DW$558	.dwtag  DW_TAG_loop_range
	.dwattr DW$558, DW_AT_low_pc(DW$L$_PreWarningCalc$24$B)
	.dwattr DW$558, DW_AT_high_pc(DW$L$_PreWarningCalc$24$E)
DW$559	.dwtag  DW_TAG_loop_range
	.dwattr DW$559, DW_AT_low_pc(DW$L$_PreWarningCalc$25$B)
	.dwattr DW$559, DW_AT_high_pc(DW$L$_PreWarningCalc$25$E)
DW$560	.dwtag  DW_TAG_loop_range
	.dwattr DW$560, DW_AT_low_pc(DW$L$_PreWarningCalc$26$B)
	.dwattr DW$560, DW_AT_high_pc(DW$L$_PreWarningCalc$26$E)
	.dwendtag DW$556


DW$561	.dwtag  DW_TAG_loop
	.dwattr DW$561, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\man.asm:L325:1:1473840056")
	.dwattr DW$561, DW_AT_begin_file("man.c")
	.dwattr DW$561, DW_AT_begin_line(0xb0e)
	.dwattr DW$561, DW_AT_end_line(0xb37)
DW$562	.dwtag  DW_TAG_loop_range
	.dwattr DW$562, DW_AT_low_pc(DW$L$_PreWarningCalc$5$B)
	.dwattr DW$562, DW_AT_high_pc(DW$L$_PreWarningCalc$5$E)
DW$563	.dwtag  DW_TAG_loop_range
	.dwattr DW$563, DW_AT_low_pc(DW$L$_PreWarningCalc$13$B)
	.dwattr DW$563, DW_AT_high_pc(DW$L$_PreWarningCalc$13$E)
DW$564	.dwtag  DW_TAG_loop_range
	.dwattr DW$564, DW_AT_low_pc(DW$L$_PreWarningCalc$14$B)
	.dwattr DW$564, DW_AT_high_pc(DW$L$_PreWarningCalc$14$E)
DW$565	.dwtag  DW_TAG_loop_range
	.dwattr DW$565, DW_AT_low_pc(DW$L$_PreWarningCalc$15$B)
	.dwattr DW$565, DW_AT_high_pc(DW$L$_PreWarningCalc$15$E)
DW$566	.dwtag  DW_TAG_loop_range
	.dwattr DW$566, DW_AT_low_pc(DW$L$_PreWarningCalc$6$B)
	.dwattr DW$566, DW_AT_high_pc(DW$L$_PreWarningCalc$6$E)
DW$567	.dwtag  DW_TAG_loop_range
	.dwattr DW$567, DW_AT_low_pc(DW$L$_PreWarningCalc$7$B)
	.dwattr DW$567, DW_AT_high_pc(DW$L$_PreWarningCalc$7$E)
DW$568	.dwtag  DW_TAG_loop_range
	.dwattr DW$568, DW_AT_low_pc(DW$L$_PreWarningCalc$8$B)
	.dwattr DW$568, DW_AT_high_pc(DW$L$_PreWarningCalc$8$E)
DW$569	.dwtag  DW_TAG_loop_range
	.dwattr DW$569, DW_AT_low_pc(DW$L$_PreWarningCalc$9$B)
	.dwattr DW$569, DW_AT_high_pc(DW$L$_PreWarningCalc$9$E)
DW$570	.dwtag  DW_TAG_loop_range
	.dwattr DW$570, DW_AT_low_pc(DW$L$_PreWarningCalc$10$B)
	.dwattr DW$570, DW_AT_high_pc(DW$L$_PreWarningCalc$10$E)
DW$571	.dwtag  DW_TAG_loop_range
	.dwattr DW$571, DW_AT_low_pc(DW$L$_PreWarningCalc$11$B)
	.dwattr DW$571, DW_AT_high_pc(DW$L$_PreWarningCalc$11$E)
DW$572	.dwtag  DW_TAG_loop_range
	.dwattr DW$572, DW_AT_low_pc(DW$L$_PreWarningCalc$12$B)
	.dwattr DW$572, DW_AT_high_pc(DW$L$_PreWarningCalc$12$E)
DW$573	.dwtag  DW_TAG_loop_range
	.dwattr DW$573, DW_AT_low_pc(DW$L$_PreWarningCalc$16$B)
	.dwattr DW$573, DW_AT_high_pc(DW$L$_PreWarningCalc$16$E)
DW$574	.dwtag  DW_TAG_loop_range
	.dwattr DW$574, DW_AT_low_pc(DW$L$_PreWarningCalc$17$B)
	.dwattr DW$574, DW_AT_high_pc(DW$L$_PreWarningCalc$17$E)
DW$575	.dwtag  DW_TAG_loop_range
	.dwattr DW$575, DW_AT_low_pc(DW$L$_PreWarningCalc$18$B)
	.dwattr DW$575, DW_AT_high_pc(DW$L$_PreWarningCalc$18$E)
DW$576	.dwtag  DW_TAG_loop_range
	.dwattr DW$576, DW_AT_low_pc(DW$L$_PreWarningCalc$19$B)
	.dwattr DW$576, DW_AT_high_pc(DW$L$_PreWarningCalc$19$E)
DW$577	.dwtag  DW_TAG_loop_range
	.dwattr DW$577, DW_AT_low_pc(DW$L$_PreWarningCalc$20$B)
	.dwattr DW$577, DW_AT_high_pc(DW$L$_PreWarningCalc$20$E)
	.dwendtag DW$561

	.dwattr DW$555, DW_AT_end_file("man.c")
	.dwattr DW$555, DW_AT_end_line(0xb3c)
	.dwattr DW$555, DW_AT_end_column(0x01)
	.dwendtag DW$555

	.sect	".text"
	.global	_PrewarningAlarmReset

DW$578	.dwtag  DW_TAG_subprogram, DW_AT_name("PrewarningAlarmReset"), DW_AT_symbol_name("_PrewarningAlarmReset")
	.dwattr DW$578, DW_AT_low_pc(_PrewarningAlarmReset)
	.dwattr DW$578, DW_AT_high_pc(0x00)
	.dwattr DW$578, DW_AT_begin_file("man.c")
	.dwattr DW$578, DW_AT_begin_line(0xb41)
	.dwattr DW$578, DW_AT_begin_column(0x06)
	.dwattr DW$578, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$578, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",2882,1

;***************************************************************
;* FNAME: _PrewarningAlarmReset         FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_PrewarningAlarmReset:
;* AL    assigned to _chan
DW$579	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$579, DW_AT_type(*DW$T$10)
	.dwattr DW$579, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVZ      AR1,AL                ; |2882| 
        MOVB      AL,#196               ; |2891| 
        ADD       AL,AR1                ; |2891| 
        LCR       #_ClearAlarmEvent     ; |2891| 
        ; call occurs [#_ClearAlarmEvent] ; |2891| 
        MOV       T,AR1                 ; |2892| 
        MOVL      XAR4,#_sensor         ; |2892| 
        MPYB      ACC,T,#18             ; |2892| 
        ADDL      XAR4,ACC
        MOV       AL,#14305             ; |2894| 
        ADD       AL,AR1                ; |2894| 
        MOV       PH,#0
        MOV       PL,#1
        MOV       ACC,AL << #1          ; |2894| 
        AND       *+XAR4[1],#0xcfff     ; |2892| 
        MOV       AH,AL                 ; |2894| 
        ADDUL     P,XAR4
        MOVL      XAR4,P                ; |2894| 
        MOVB      XAR5,#1               ; |2894| 
        MOVB      AL,#0
        LCR       #_WriteNVMemory       ; |2894| 
        ; call occurs [#_WriteNVMemory] ; |2894| 
        MOVL      XAR1,*--SP
	.dwpsn	"man.c",2895,1
        LRETR
        ; return occurs
	.dwattr DW$578, DW_AT_end_file("man.c")
	.dwattr DW$578, DW_AT_end_line(0xb4f)
	.dwattr DW$578, DW_AT_end_column(0x01)
	.dwendtag DW$578

	.sect	".text"
	.global	_WritePrewarnStructtoNVMEM

DW$580	.dwtag  DW_TAG_subprogram, DW_AT_name("WritePrewarnStructtoNVMEM"), DW_AT_symbol_name("_WritePrewarnStructtoNVMEM")
	.dwattr DW$580, DW_AT_low_pc(_WritePrewarnStructtoNVMEM)
	.dwattr DW$580, DW_AT_high_pc(0x00)
	.dwattr DW$580, DW_AT_begin_file("man.c")
	.dwattr DW$580, DW_AT_begin_line(0xb52)
	.dwattr DW$580, DW_AT_begin_column(0x06)
	.dwattr DW$580, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$580, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",2899,1

;***************************************************************
;* FNAME: _WritePrewarnStructtoNVMEM    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WritePrewarnStructtoNVMEM:
        MOVB      AL,#1                 ; |2908| 
        MOVB      XAR5,#170             ; |2908| 
        MOVL      XAR4,#_prewarn        ; |2908| 
        MOV       AH,#8400              ; |2908| 
        LCR       #_WriteNVMemory       ; |2908| 
        ; call occurs [#_WriteNVMemory] ; |2908| 
	.dwpsn	"man.c",2909,1
        LRETR
        ; return occurs
	.dwattr DW$580, DW_AT_end_file("man.c")
	.dwattr DW$580, DW_AT_end_line(0xb5d)
	.dwattr DW$580, DW_AT_end_column(0x01)
	.dwendtag DW$580

	.sect	".text"
	.global	_ReadPrewarnStructfromNVMEM

DW$581	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadPrewarnStructfromNVMEM"), DW_AT_symbol_name("_ReadPrewarnStructfromNVMEM")
	.dwattr DW$581, DW_AT_low_pc(_ReadPrewarnStructfromNVMEM)
	.dwattr DW$581, DW_AT_high_pc(0x00)
	.dwattr DW$581, DW_AT_begin_file("man.c")
	.dwattr DW$581, DW_AT_begin_line(0xb61)
	.dwattr DW$581, DW_AT_begin_column(0x06)
	.dwattr DW$581, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$581, DW_AT_skeletal(0x01)
	.dwpsn	"man.c",2914,1

;***************************************************************
;* FNAME: _ReadPrewarnStructfromNVMEM   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadPrewarnStructfromNVMEM:
        MOVB      AL,#1                 ; |2925| 
        MOVB      XAR5,#170             ; |2925| 
        MOVL      XAR4,#_prewarn        ; |2925| 
        MOV       AH,#8400              ; |2925| 
        LCR       #_ReadNVMemory        ; |2925| 
        ; call occurs [#_ReadNVMemory] ; |2925| 
	.dwpsn	"man.c",2927,1
        LRETR
        ; return occurs
	.dwattr DW$581, DW_AT_end_file("man.c")
	.dwattr DW$581, DW_AT_end_line(0xb6f)
	.dwattr DW$581, DW_AT_end_column(0x01)
	.dwendtag DW$581

;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_memset
	.global	_exp
	.global	_MANCalibrationStages
	.global	_Status3Flags
	.global	_SetAlarmEvent
	.global	_ClearAlarmEvent
	.global	_SetBitEvent
	.global	_CheckAlarmBitSet
	.global	_MANCompTabletoSDCardFile
	.global	_FloattoIntRound
	.global	_ReadSpeedCompStructfromNVMEM
	.global	_ReadNVMemory
	.global	_WriteNVMemory
	.global	_CheckBitSet
	.global	_BitSet
	.global	_BitClear
	.global	_cppsettings
	.global	_loadlevel
	.global	_settings
	.global	_motion
	.global	_timers
	.global	_allsensors
	.global	_cylinders
	.global	_config
	.global	_calibration
	.global	_speedcompcoeffs
	.global	_iRepaidWearReset
	.global	_iStartRapidWear
	.global	_noisefilterLOAD
	.global	_damagemonignore
	.global	_status3
	.global	_alarms
	.global	_bitalarmlist
	.global	_sdcarddir
	.global	_slave485mb
	.global	U$$TOFS
	.global	FS$$MPY
	.global	FS$$TOU
	.global	FS$$DIV
	.global	I$$TOFS
	.global	FS$$TOUL
	.global	FS$$ADD
	.global	FS$$SUB
	.global	FS$$CMP
	.global	UL$$TOFS
	.global	FS$$NEG
	.global	L$$TOFS
	.global	L$$DIV

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x16)

DW$T$75	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$75, DW_AT_language(DW_LANG_C)
DW$582	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$583	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$584	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$74)
	.dwendtag DW$T$75


DW$T$77	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$77, DW_AT_language(DW_LANG_C)

DW$T$79	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$79, DW_AT_language(DW_LANG_C)
DW$585	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$79


DW$T$81	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$81, DW_AT_language(DW_LANG_C)
DW$586	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$81


DW$T$83	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$83, DW_AT_language(DW_LANG_C)
DW$587	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$588	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$83


DW$T$84	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$84, DW_AT_language(DW_LANG_C)
DW$589	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$590	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$84


DW$T$86	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$86, DW_AT_language(DW_LANG_C)
DW$591	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$592	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$86


DW$T$88	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$88, DW_AT_language(DW_LANG_C)
DW$593	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$594	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$16)
	.dwendtag DW$T$88


DW$T$90	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$90, DW_AT_language(DW_LANG_C)
DW$595	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$596	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$597	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$90


DW$T$92	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$92, DW_AT_language(DW_LANG_C)
DW$598	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$599	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$600	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$92

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)

DW$T$50	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$50, DW_AT_byte_size(0x1c)
DW$601	.dwtag  DW_TAG_subrange_type
	.dwattr DW$601, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$50


DW$T$98	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$98, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$98, DW_AT_byte_size(0x1068)
DW$602	.dwtag  DW_TAG_subrange_type
	.dwattr DW$602, DW_AT_upper_bound(0x95)
DW$603	.dwtag  DW_TAG_subrange_type
	.dwattr DW$603, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$98


DW$T$95	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$94)
	.dwattr DW$T$95, DW_AT_language(DW_LANG_C)
DW$604	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$605	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$95


DW$T$100	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$100, DW_AT_language(DW_LANG_C)
DW$606	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$100


DW$T$101	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$101, DW_AT_language(DW_LANG_C)
DW$607	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$101


DW$T$105	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$105, DW_AT_language(DW_LANG_C)
DW$608	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$104)
DW$609	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$105


DW$T$107	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$107, DW_AT_language(DW_LANG_C)

DW$T$109	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$109, DW_AT_language(DW_LANG_C)
DW$610	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$611	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$109


DW$T$111	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$111, DW_AT_language(DW_LANG_C)
DW$612	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$613	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$111


DW$T$113	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$113, DW_AT_language(DW_LANG_C)
DW$614	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$615	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$616	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$113


DW$T$115	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$115, DW_AT_language(DW_LANG_C)
DW$617	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$16)
DW$618	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$16)
	.dwendtag DW$T$115

DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)

DW$T$125	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$125, DW_AT_language(DW_LANG_C)
DW$619	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$125


DW$T$127	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$127, DW_AT_language(DW_LANG_C)
DW$620	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$127

DW$621	.dwtag  DW_TAG_far_type
	.dwattr DW$621, DW_AT_type(*DW$T$11)
DW$T$129	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$129, DW_AT_type(*DW$621)

DW$T$130	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$130, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$130, DW_AT_byte_size(0x21)
DW$622	.dwtag  DW_TAG_subrange_type
	.dwattr DW$622, DW_AT_upper_bound(0x20)
	.dwendtag DW$T$130

DW$623	.dwtag  DW_TAG_far_type
	.dwattr DW$623, DW_AT_type(*DW$T$11)
DW$T$131	.dwtag  DW_TAG_const_type
	.dwattr DW$T$131, DW_AT_type(*DW$623)

DW$T$132	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$132, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$132, DW_AT_byte_size(0x1c)
DW$624	.dwtag  DW_TAG_subrange_type
	.dwattr DW$624, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$132

DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)
DW$T$74	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$74, DW_AT_language(DW_LANG_C)
DW$T$16	.dwtag  DW_TAG_base_type, DW_AT_name("float")
	.dwattr DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$16, DW_AT_byte_size(0x02)

DW$T$136	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$16)
	.dwattr DW$T$136, DW_AT_language(DW_LANG_C)
DW$625	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$626	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$16)
	.dwendtag DW$T$136


DW$T$138	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$16)
	.dwattr DW$T$138, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$138, DW_AT_byte_size(0x38)
DW$627	.dwtag  DW_TAG_subrange_type
	.dwattr DW$627, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$138

DW$T$17	.dwtag  DW_TAG_base_type, DW_AT_name("double")
	.dwattr DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$17, DW_AT_byte_size(0x02)

DW$T$143	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$17)
	.dwattr DW$T$143, DW_AT_language(DW_LANG_C)
DW$628	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$17)
	.dwendtag DW$T$143

DW$T$145	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$144)
	.dwattr DW$T$145, DW_AT_address_class(0x16)

DW$T$146	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$145)
	.dwattr DW$T$146, DW_AT_language(DW_LANG_C)
DW$629	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$146


DW$T$147	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$144)
	.dwattr DW$T$147, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$147, DW_AT_byte_size(0x1c)
DW$630	.dwtag  DW_TAG_subrange_type
	.dwattr DW$630, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$147


DW$T$153	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$152)
	.dwattr DW$T$153, DW_AT_language(DW_LANG_C)
DW$631	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$153


DW$T$158	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$157)
	.dwattr DW$T$158, DW_AT_language(DW_LANG_C)
DW$632	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$158

DW$T$161	.dwtag  DW_TAG_typedef, DW_AT_name("cppsettingsstruct"), DW_AT_type(*DW$T$22)
	.dwattr DW$T$161, DW_AT_language(DW_LANG_C)
DW$T$162	.dwtag  DW_TAG_typedef, DW_AT_name("cppstruct"), DW_AT_type(*DW$T$23)
	.dwattr DW$T$162, DW_AT_language(DW_LANG_C)
DW$T$163	.dwtag  DW_TAG_typedef, DW_AT_name("settingsstruct"), DW_AT_type(*DW$T$25)
	.dwattr DW$T$163, DW_AT_language(DW_LANG_C)
DW$T$164	.dwtag  DW_TAG_typedef, DW_AT_name("motionstruct"), DW_AT_type(*DW$T$27)
	.dwattr DW$T$164, DW_AT_language(DW_LANG_C)
DW$633	.dwtag  DW_TAG_far_type
	.dwattr DW$633, DW_AT_type(*DW$T$165)
DW$T$166	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$166, DW_AT_type(*DW$633)
DW$T$168	.dwtag  DW_TAG_typedef, DW_AT_name("allsensorstruct"), DW_AT_type(*DW$T$32)
	.dwattr DW$T$168, DW_AT_language(DW_LANG_C)

DW$T$172	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$171)
	.dwattr DW$T$172, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$172, DW_AT_byte_size(0x38)
DW$634	.dwtag  DW_TAG_subrange_type
	.dwattr DW$634, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$172

DW$T$175	.dwtag  DW_TAG_typedef, DW_AT_name("configstruct"), DW_AT_type(*DW$T$42)
	.dwattr DW$T$175, DW_AT_language(DW_LANG_C)
DW$T$176	.dwtag  DW_TAG_typedef, DW_AT_name("calibrationstruct"), DW_AT_type(*DW$T$52)
	.dwattr DW$T$176, DW_AT_language(DW_LANG_C)
DW$T$178	.dwtag  DW_TAG_typedef, DW_AT_name("speedcompstruct"), DW_AT_type(*DW$T$53)
	.dwattr DW$T$178, DW_AT_language(DW_LANG_C)
DW$T$180	.dwtag  DW_TAG_typedef, DW_AT_name("alarmsstruct"), DW_AT_type(*DW$T$54)
	.dwattr DW$T$180, DW_AT_language(DW_LANG_C)
DW$T$104	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$103)
	.dwattr DW$T$104, DW_AT_address_class(0x16)
DW$635	.dwtag  DW_TAG_far_type
	.dwattr DW$635, DW_AT_type(*DW$T$183)
DW$T$184	.dwtag  DW_TAG_const_type
	.dwattr DW$T$184, DW_AT_type(*DW$635)
DW$T$187	.dwtag  DW_TAG_typedef, DW_AT_name("slavecmdstruct"), DW_AT_type(*DW$T$59)
	.dwattr DW$T$187, DW_AT_language(DW_LANG_C)
DW$T$188	.dwtag  DW_TAG_typedef, DW_AT_name("mbupdatestruct"), DW_AT_type(*DW$T$60)
	.dwattr DW$T$188, DW_AT_language(DW_LANG_C)

DW$T$190	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$189)
	.dwattr DW$T$190, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$190, DW_AT_byte_size(0x1f8)
DW$636	.dwtag  DW_TAG_subrange_type
	.dwattr DW$636, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$190

DW$T$193	.dwtag  DW_TAG_typedef, DW_AT_name("functionstruct"), DW_AT_type(*DW$T$65)
	.dwattr DW$T$193, DW_AT_language(DW_LANG_C)
DW$T$194	.dwtag  DW_TAG_typedef, DW_AT_name("prewarnstruct"), DW_AT_type(*DW$T$66)
	.dwattr DW$T$194, DW_AT_language(DW_LANG_C)
DW$T$196	.dwtag  DW_TAG_typedef, DW_AT_name("enginestruct"), DW_AT_type(*DW$T$67)
	.dwattr DW$T$196, DW_AT_language(DW_LANG_C)
DW$T$198	.dwtag  DW_TAG_typedef, DW_AT_name("offsetstruct"), DW_AT_type(*DW$T$68)
	.dwattr DW$T$198, DW_AT_language(DW_LANG_C)

DW$T$201	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$200)
	.dwattr DW$T$201, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$201, DW_AT_byte_size(0x1c)
DW$637	.dwtag  DW_TAG_subrange_type
	.dwattr DW$637, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$201


DW$T$205	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$204)
	.dwattr DW$T$205, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$205, DW_AT_byte_size(0x118)
DW$638	.dwtag  DW_TAG_subrange_type
	.dwattr DW$638, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$205

DW$T$208	.dwtag  DW_TAG_typedef, DW_AT_name("damagemonstruct"), DW_AT_type(*DW$T$71)
	.dwattr DW$T$208, DW_AT_language(DW_LANG_C)
DW$T$210	.dwtag  DW_TAG_typedef, DW_AT_name("dynamicalarmsstruct"), DW_AT_type(*DW$T$72)
	.dwattr DW$T$210, DW_AT_language(DW_LANG_C)
DW$T$211	.dwtag  DW_TAG_typedef, DW_AT_name("damalarmsstruct"), DW_AT_type(*DW$T$73)
	.dwattr DW$T$211, DW_AT_language(DW_LANG_C)
DW$T$94	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$94, DW_AT_address_class(0x16)
DW$T$144	.dwtag  DW_TAG_typedef, DW_AT_name("status3struct"), DW_AT_type(*DW$T$19)
	.dwattr DW$T$144, DW_AT_language(DW_LANG_C)
DW$T$152	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$61)
	.dwattr DW$T$152, DW_AT_address_class(0x16)
DW$T$157	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$62)
	.dwattr DW$T$157, DW_AT_address_class(0x16)

DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_name("tag_cppsettingsstruct")
	.dwattr DW$T$22, DW_AT_byte_size(0x10)
DW$639	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$639, DW_AT_name("iCppEnable"), DW_AT_symbol_name("_iCppEnable")
	.dwattr DW$639, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$639, DW_AT_accessibility(DW_ACCESS_public)
DW$640	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$640, DW_AT_name("iCppLowLimit"), DW_AT_symbol_name("_iCppLowLimit")
	.dwattr DW$640, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$640, DW_AT_accessibility(DW_ACCESS_public)
DW$641	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$641, DW_AT_name("iCppHighLimit"), DW_AT_symbol_name("_iCppHighLimit")
	.dwattr DW$641, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$641, DW_AT_accessibility(DW_ACCESS_public)
DW$642	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$642, DW_AT_name("cppkvalue"), DW_AT_symbol_name("_cppkvalue")
	.dwattr DW$642, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$642, DW_AT_accessibility(DW_ACCESS_public)
DW$643	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$643, DW_AT_name("gammavalue"), DW_AT_symbol_name("_gammavalue")
	.dwattr DW$643, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$643, DW_AT_accessibility(DW_ACCESS_public)
DW$644	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$644, DW_AT_name("cpplevelx"), DW_AT_symbol_name("_cpplevelx")
	.dwattr DW$644, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$644, DW_AT_accessibility(DW_ACCESS_public)
DW$645	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$645, DW_AT_name("delatRpmPauseDelay"), DW_AT_symbol_name("_delatRpmPauseDelay")
	.dwattr DW$645, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$645, DW_AT_accessibility(DW_ACCESS_public)
DW$646	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$646, DW_AT_name("calAlarmThreshhold"), DW_AT_symbol_name("_calAlarmThreshhold")
	.dwattr DW$646, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$646, DW_AT_accessibility(DW_ACCESS_public)
DW$647	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$647, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$647, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$647, DW_AT_accessibility(DW_ACCESS_public)
DW$648	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$648, DW_AT_name("unused3"), DW_AT_symbol_name("_unused3")
	.dwattr DW$648, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$648, DW_AT_accessibility(DW_ACCESS_public)
DW$649	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$649, DW_AT_name("unused4"), DW_AT_symbol_name("_unused4")
	.dwattr DW$649, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$649, DW_AT_accessibility(DW_ACCESS_public)
DW$650	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$650, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$650, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$650, DW_AT_accessibility(DW_ACCESS_public)
DW$651	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$651, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$651, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$651, DW_AT_accessibility(DW_ACCESS_public)
DW$652	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$652, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$652, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$652, DW_AT_accessibility(DW_ACCESS_public)
DW$653	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$653, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$653, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$653, DW_AT_accessibility(DW_ACCESS_public)
DW$654	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$654, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$654, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$654, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$23, DW_AT_name("tag_cppstruct")
	.dwattr DW$T$23, DW_AT_byte_size(0x06)
DW$655	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$655, DW_AT_name("iAtodValue"), DW_AT_symbol_name("_iAtodValue")
	.dwattr DW$655, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$655, DW_AT_accessibility(DW_ACCESS_public)
DW$656	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$656, DW_AT_name("fmAinput"), DW_AT_symbol_name("_fmAinput")
	.dwattr DW$656, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$656, DW_AT_accessibility(DW_ACCESS_public)
DW$657	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$657, DW_AT_name("fLoadPercent"), DW_AT_symbol_name("_fLoadPercent")
	.dwattr DW$657, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$657, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$25, DW_AT_name("tag_settingsstruct")
	.dwattr DW$T$25, DW_AT_byte_size(0x24)
DW$658	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$658, DW_AT_name("watchdog"), DW_AT_symbol_name("_watchdog")
	.dwattr DW$658, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$658, DW_AT_accessibility(DW_ACCESS_public)
DW$659	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$659, DW_AT_name("ledflashflag"), DW_AT_symbol_name("_ledflashflag")
	.dwattr DW$659, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$659, DW_AT_accessibility(DW_ACCESS_public)
DW$660	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$660, DW_AT_name("updatesafe"), DW_AT_symbol_name("_updatesafe")
	.dwattr DW$660, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$660, DW_AT_accessibility(DW_ACCESS_public)
DW$661	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$661, DW_AT_name("tableconfigtype"), DW_AT_symbol_name("_tableconfigtype")
	.dwattr DW$661, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$661, DW_AT_accessibility(DW_ACCESS_public)
DW$662	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$662, DW_AT_name("caltableconfigtype"), DW_AT_symbol_name("_caltableconfigtype")
	.dwattr DW$662, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$662, DW_AT_accessibility(DW_ACCESS_public)
DW$663	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$663, DW_AT_name("eventmsgid"), DW_AT_symbol_name("_eventmsgid")
	.dwattr DW$663, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$663, DW_AT_accessibility(DW_ACCESS_public)
DW$664	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$664, DW_AT_name("configoperationcomplete"), DW_AT_symbol_name("_configoperationcomplete")
	.dwattr DW$664, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$664, DW_AT_accessibility(DW_ACCESS_public)
DW$665	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$665, DW_AT_name("sdcarderr"), DW_AT_symbol_name("_sdcarderr")
	.dwattr DW$665, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$665, DW_AT_accessibility(DW_ACCESS_public)
DW$666	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$666, DW_AT_name("sderase"), DW_AT_symbol_name("_sderase")
	.dwattr DW$666, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$666, DW_AT_accessibility(DW_ACCESS_public)
DW$667	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$667, DW_AT_name("sdreinit"), DW_AT_symbol_name("_sdreinit")
	.dwattr DW$667, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$667, DW_AT_accessibility(DW_ACCESS_public)
DW$668	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$668, DW_AT_name("sdcardupdate"), DW_AT_symbol_name("_sdcardupdate")
	.dwattr DW$668, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$668, DW_AT_accessibility(DW_ACCESS_public)
DW$669	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$669, DW_AT_name("cardreadflag"), DW_AT_symbol_name("_cardreadflag")
	.dwattr DW$669, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$669, DW_AT_accessibility(DW_ACCESS_public)
DW$670	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$670, DW_AT_name("ignore"), DW_AT_symbol_name("_ignore")
	.dwattr DW$670, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$670, DW_AT_accessibility(DW_ACCESS_public)
DW$671	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$671, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$671, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$671, DW_AT_accessibility(DW_ACCESS_public)
DW$672	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$672, DW_AT_name("spiinuse"), DW_AT_symbol_name("_spiinuse")
	.dwattr DW$672, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$672, DW_AT_accessibility(DW_ACCESS_public)
DW$673	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$673, DW_AT_name("dcpeakhold"), DW_AT_symbol_name("_dcpeakhold")
	.dwattr DW$673, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$673, DW_AT_accessibility(DW_ACCESS_public)
DW$674	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$674, DW_AT_name("dcpause"), DW_AT_symbol_name("_dcpause")
	.dwattr DW$674, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$674, DW_AT_accessibility(DW_ACCESS_public)
DW$675	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$675, DW_AT_name("mastermode"), DW_AT_symbol_name("_mastermode")
	.dwattr DW$675, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$675, DW_AT_accessibility(DW_ACCESS_public)
DW$676	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$676, DW_AT_name("updatescaling"), DW_AT_symbol_name("_updatescaling")
	.dwattr DW$676, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$676, DW_AT_accessibility(DW_ACCESS_public)
DW$677	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$677, DW_AT_name("forwardasternflag"), DW_AT_symbol_name("_forwardasternflag")
	.dwattr DW$677, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$677, DW_AT_accessibility(DW_ACCESS_public)
DW$678	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$678, DW_AT_name("initprogress"), DW_AT_symbol_name("_initprogress")
	.dwattr DW$678, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$678, DW_AT_accessibility(DW_ACCESS_public)
DW$679	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$679, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$679, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$679, DW_AT_accessibility(DW_ACCESS_public)
DW$680	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$680, DW_AT_name("slowdowncounter"), DW_AT_symbol_name("_slowdowncounter")
	.dwattr DW$680, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$680, DW_AT_accessibility(DW_ACCESS_public)
DW$681	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$681, DW_AT_name("slowdowncondition"), DW_AT_symbol_name("_slowdowncondition")
	.dwattr DW$681, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$681, DW_AT_accessibility(DW_ACCESS_public)
DW$682	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$682, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$682, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$682, DW_AT_accessibility(DW_ACCESS_public)
DW$683	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$683, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$683, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$683, DW_AT_accessibility(DW_ACCESS_public)
DW$684	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$684, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$684, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$684, DW_AT_accessibility(DW_ACCESS_public)
DW$685	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$685, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$685, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$685, DW_AT_accessibility(DW_ACCESS_public)
DW$686	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$686, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$686, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$686, DW_AT_accessibility(DW_ACCESS_public)
DW$687	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$687, DW_AT_name("temperaturealarm"), DW_AT_symbol_name("_temperaturealarm")
	.dwattr DW$687, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$687, DW_AT_accessibility(DW_ACCESS_public)
DW$688	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$688, DW_AT_name("temperatureslowdown"), DW_AT_symbol_name("_temperatureslowdown")
	.dwattr DW$688, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$688, DW_AT_accessibility(DW_ACCESS_public)
DW$689	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$689, DW_AT_name("anadebug"), DW_AT_symbol_name("_anadebug")
	.dwattr DW$689, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$689, DW_AT_accessibility(DW_ACCESS_public)
DW$690	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$690, DW_AT_name("serialdebug"), DW_AT_symbol_name("_serialdebug")
	.dwattr DW$690, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr DW$690, DW_AT_accessibility(DW_ACCESS_public)
DW$691	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$691, DW_AT_name("timerrunning"), DW_AT_symbol_name("_timerrunning")
	.dwattr DW$691, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$691, DW_AT_accessibility(DW_ACCESS_public)
DW$692	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$692, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$692, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$692, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$27, DW_AT_name("tag_motionstruct")
	.dwattr DW$T$27, DW_AT_byte_size(0x09)
DW$693	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$693, DW_AT_name("counter"), DW_AT_symbol_name("_counter")
	.dwattr DW$693, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$693, DW_AT_accessibility(DW_ACCESS_public)
DW$694	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$694, DW_AT_name("ready"), DW_AT_symbol_name("_ready")
	.dwattr DW$694, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$694, DW_AT_accessibility(DW_ACCESS_public)
DW$695	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$695, DW_AT_name("order"), DW_AT_symbol_name("_order")
	.dwattr DW$695, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$695, DW_AT_accessibility(DW_ACCESS_public)
DW$696	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$696, DW_AT_name("forwardasternflag"), DW_AT_symbol_name("_forwardasternflag")
	.dwattr DW$696, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$696, DW_AT_accessibility(DW_ACCESS_public)
DW$697	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$697, DW_AT_name("forwardasternflagprev"), DW_AT_symbol_name("_forwardasternflagprev")
	.dwattr DW$697, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$697, DW_AT_accessibility(DW_ACCESS_public)
DW$698	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$698, DW_AT_name("recalnow"), DW_AT_symbol_name("_recalnow")
	.dwattr DW$698, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$698, DW_AT_accessibility(DW_ACCESS_public)
DW$699	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$699, DW_AT_name("calerror"), DW_AT_symbol_name("_calerror")
	.dwattr DW$699, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$699, DW_AT_accessibility(DW_ACCESS_public)
DW$700	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$700, DW_AT_name("recheckdir"), DW_AT_symbol_name("_recheckdir")
	.dwattr DW$700, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$700, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27

DW$T$165	.dwtag  DW_TAG_typedef, DW_AT_name("timersstruct"), DW_AT_type(*DW$T$29)
	.dwattr DW$T$165, DW_AT_language(DW_LANG_C)

DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_name("tag_allsensorstruct")
	.dwattr DW$T$32, DW_AT_byte_size(0x2d)
DW$701	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$701, DW_AT_name("numsensors"), DW_AT_symbol_name("_numsensors")
	.dwattr DW$701, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$701, DW_AT_accessibility(DW_ACCESS_public)
DW$702	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$702, DW_AT_name("numsensorsspu1"), DW_AT_symbol_name("_numsensorsspu1")
	.dwattr DW$702, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$702, DW_AT_accessibility(DW_ACCESS_public)
DW$703	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$703, DW_AT_name("numsensorsspu2"), DW_AT_symbol_name("_numsensorsspu2")
	.dwattr DW$703, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$703, DW_AT_accessibility(DW_ACCESS_public)
DW$704	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$704, DW_AT_name("nominalspeed"), DW_AT_symbol_name("_nominalspeed")
	.dwattr DW$704, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$704, DW_AT_accessibility(DW_ACCESS_public)
DW$705	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$705, DW_AT_name("rpmmin"), DW_AT_symbol_name("_rpmmin")
	.dwattr DW$705, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$705, DW_AT_accessibility(DW_ACCESS_public)
DW$706	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$706, DW_AT_name("rpmmax"), DW_AT_symbol_name("_rpmmax")
	.dwattr DW$706, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$706, DW_AT_accessibility(DW_ACCESS_public)
DW$707	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$707, DW_AT_name("reflash"), DW_AT_symbol_name("_reflash")
	.dwattr DW$707, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$707, DW_AT_accessibility(DW_ACCESS_public)
DW$708	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$708, DW_AT_name("sensorhysteresis"), DW_AT_symbol_name("_sensorhysteresis")
	.dwattr DW$708, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$708, DW_AT_accessibility(DW_ACCESS_public)
DW$709	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$709, DW_AT_name("cylinderhysteresis"), DW_AT_symbol_name("_cylinderhysteresis")
	.dwattr DW$709, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$709, DW_AT_accessibility(DW_ACCESS_public)
DW$710	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$710, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$710, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$710, DW_AT_accessibility(DW_ACCESS_public)
DW$711	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$711, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$711, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$711, DW_AT_accessibility(DW_ACCESS_public)
DW$712	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$712, DW_AT_name("slowdowndevcallevel"), DW_AT_symbol_name("_slowdowndevcallevel")
	.dwattr DW$712, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$712, DW_AT_accessibility(DW_ACCESS_public)
DW$713	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$713, DW_AT_name("alarmdevcallevel"), DW_AT_symbol_name("_alarmdevcallevel")
	.dwattr DW$713, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$713, DW_AT_accessibility(DW_ACCESS_public)
DW$714	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$714, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$714, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$714, DW_AT_accessibility(DW_ACCESS_public)
DW$715	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$715, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$715, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$715, DW_AT_accessibility(DW_ACCESS_public)
DW$716	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$716, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$716, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$716, DW_AT_accessibility(DW_ACCESS_public)
DW$717	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$717, DW_AT_name("flags"), DW_AT_symbol_name("_flags")
	.dwattr DW$717, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$717, DW_AT_accessibility(DW_ACCESS_public)
DW$718	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$718, DW_AT_name("slowdownack"), DW_AT_symbol_name("_slowdownack")
	.dwattr DW$718, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$718, DW_AT_accessibility(DW_ACCESS_public)
DW$719	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$719, DW_AT_name("alarmack"), DW_AT_symbol_name("_alarmack")
	.dwattr DW$719, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$719, DW_AT_accessibility(DW_ACCESS_public)
DW$720	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$720, DW_AT_name("maxmintimer"), DW_AT_symbol_name("_maxmintimer")
	.dwattr DW$720, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$720, DW_AT_accessibility(DW_ACCESS_public)
DW$721	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$721, DW_AT_name("enginedircal"), DW_AT_symbol_name("_enginedircal")
	.dwattr DW$721, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$721, DW_AT_accessibility(DW_ACCESS_public)
DW$722	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$722, DW_AT_name("dirorder"), DW_AT_symbol_name("_dirorder")
	.dwattr DW$722, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$722, DW_AT_accessibility(DW_ACCESS_public)
DW$723	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$723, DW_AT_name("prewarningtimer"), DW_AT_symbol_name("_prewarningtimer")
	.dwattr DW$723, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$723, DW_AT_accessibility(DW_ACCESS_public)
DW$724	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$724, DW_AT_name("prewarninglevel"), DW_AT_symbol_name("_prewarninglevel")
	.dwattr DW$724, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$724, DW_AT_accessibility(DW_ACCESS_public)
DW$725	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$725, DW_AT_name("rpmlimit"), DW_AT_symbol_name("_rpmlimit")
	.dwattr DW$725, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr DW$725, DW_AT_accessibility(DW_ACCESS_public)
DW$726	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$726, DW_AT_name("dsss"), DW_AT_symbol_name("_dsss")
	.dwattr DW$726, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$726, DW_AT_accessibility(DW_ACCESS_public)
DW$727	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$727, DW_AT_name("slowdowncallevel"), DW_AT_symbol_name("_slowdowncallevel")
	.dwattr DW$727, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$727, DW_AT_accessibility(DW_ACCESS_public)
DW$728	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$728, DW_AT_name("alarmcallevel"), DW_AT_symbol_name("_alarmcallevel")
	.dwattr DW$728, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$728, DW_AT_accessibility(DW_ACCESS_public)
DW$729	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$729, DW_AT_name("cylinderalarmcallevel"), DW_AT_symbol_name("_cylinderalarmcallevel")
	.dwattr DW$729, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$729, DW_AT_accessibility(DW_ACCESS_public)
DW$730	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$730, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$730, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$730, DW_AT_accessibility(DW_ACCESS_public)
DW$731	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$731, DW_AT_name("iBarredVibrationSpeedLow"), DW_AT_symbol_name("_iBarredVibrationSpeedLow")
	.dwattr DW$731, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$731, DW_AT_accessibility(DW_ACCESS_public)
DW$732	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$732, DW_AT_name("iBarredVibrationSpeedHigh"), DW_AT_symbol_name("_iBarredVibrationSpeedHigh")
	.dwattr DW$732, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$732, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32

DW$T$171	.dwtag  DW_TAG_typedef, DW_AT_name("cylinderstruct"), DW_AT_type(*DW$T$35)
	.dwattr DW$T$171, DW_AT_language(DW_LANG_C)

DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$42, DW_AT_name("tag_configstruct")
	.dwattr DW$T$42, DW_AT_byte_size(0x18)
DW$733	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$733, DW_AT_name("filter"), DW_AT_symbol_name("_filter")
	.dwattr DW$733, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$733, DW_AT_accessibility(DW_ACCESS_public)
DW$734	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$734, DW_AT_name("alarmenable"), DW_AT_symbol_name("_alarmenable")
	.dwattr DW$734, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$734, DW_AT_accessibility(DW_ACCESS_public)
DW$735	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$38)
	.dwattr DW$735, DW_AT_name("trendmax"), DW_AT_symbol_name("_trendmax")
	.dwattr DW$735, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$735, DW_AT_accessibility(DW_ACCESS_public)
DW$736	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$736, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$736, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$736, DW_AT_accessibility(DW_ACCESS_public)
DW$737	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$737, DW_AT_name("sdsettings"), DW_AT_symbol_name("_sdsettings")
	.dwattr DW$737, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$737, DW_AT_accessibility(DW_ACCESS_public)
DW$738	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$738, DW_AT_name("comms"), DW_AT_symbol_name("_comms")
	.dwattr DW$738, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$738, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$42


DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$52, DW_AT_name("tag_calibrationstruct")
	.dwattr DW$T$52, DW_AT_byte_size(0x31a)
DW$739	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$739, DW_AT_name("rpmpoints"), DW_AT_symbol_name("_rpmpoints")
	.dwattr DW$739, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$739, DW_AT_accessibility(DW_ACCESS_public)
DW$740	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$44)
	.dwattr DW$740, DW_AT_name("speedcalpoints"), DW_AT_symbol_name("_speedcalpoints")
	.dwattr DW$740, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$740, DW_AT_accessibility(DW_ACCESS_public)
DW$741	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$741, DW_AT_name("roughnumpoints"), DW_AT_symbol_name("_roughnumpoints")
	.dwattr DW$741, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$741, DW_AT_accessibility(DW_ACCESS_public)
DW$742	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$742, DW_AT_name("numpoints"), DW_AT_symbol_name("_numpoints")
	.dwattr DW$742, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$742, DW_AT_accessibility(DW_ACCESS_public)
DW$743	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$743, DW_AT_name("averagespeedacc"), DW_AT_symbol_name("_averagespeedacc")
	.dwattr DW$743, DW_AT_data_member_location[DW_OP_plus_uconst 0x13a]
	.dwattr DW$743, DW_AT_accessibility(DW_ACCESS_public)
DW$744	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$744, DW_AT_name("averagevalacc"), DW_AT_symbol_name("_averagevalacc")
	.dwattr DW$744, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e2]
	.dwattr DW$744, DW_AT_accessibility(DW_ACCESS_public)
DW$745	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$745, DW_AT_name("validpoints"), DW_AT_symbol_name("_validpoints")
	.dwattr DW$745, DW_AT_data_member_location[DW_OP_plus_uconst 0x28a]
	.dwattr DW$745, DW_AT_accessibility(DW_ACCESS_public)
DW$746	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$746, DW_AT_name("rpmatcal"), DW_AT_symbol_name("_rpmatcal")
	.dwattr DW$746, DW_AT_data_member_location[DW_OP_plus_uconst 0x28b]
	.dwattr DW$746, DW_AT_accessibility(DW_ACCESS_public)
DW$747	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$51)
	.dwattr DW$747, DW_AT_name("manroughcalpts"), DW_AT_symbol_name("_manroughcalpts")
	.dwattr DW$747, DW_AT_data_member_location[DW_OP_plus_uconst 0x28e]
	.dwattr DW$747, DW_AT_accessibility(DW_ACCESS_public)
DW$748	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$748, DW_AT_name("manroughmin"), DW_AT_symbol_name("_manroughmin")
	.dwattr DW$748, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e2]
	.dwattr DW$748, DW_AT_accessibility(DW_ACCESS_public)
DW$749	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$749, DW_AT_name("manroughmax"), DW_AT_symbol_name("_manroughmax")
	.dwattr DW$749, DW_AT_data_member_location[DW_OP_plus_uconst 0x2fe]
	.dwattr DW$749, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$52


DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$53, DW_AT_name("tag_speedcompstruct")
	.dwattr DW$T$53, DW_AT_byte_size(0x19)
DW$750	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$750, DW_AT_name("stageflag"), DW_AT_symbol_name("_stageflag")
	.dwattr DW$750, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$750, DW_AT_accessibility(DW_ACCESS_public)
DW$751	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$751, DW_AT_name("status"), DW_AT_symbol_name("_status")
	.dwattr DW$751, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$751, DW_AT_accessibility(DW_ACCESS_public)
DW$752	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$44)
	.dwattr DW$752, DW_AT_name("speedbands"), DW_AT_symbol_name("_speedbands")
	.dwattr DW$752, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$752, DW_AT_accessibility(DW_ACCESS_public)
DW$753	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$753, DW_AT_name("slopecoeff"), DW_AT_symbol_name("_slopecoeff")
	.dwattr DW$753, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$753, DW_AT_accessibility(DW_ACCESS_public)
DW$754	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$754, DW_AT_name("initialtimer"), DW_AT_symbol_name("_initialtimer")
	.dwattr DW$754, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$754, DW_AT_accessibility(DW_ACCESS_public)
DW$755	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$755, DW_AT_name("learningmodetimer"), DW_AT_symbol_name("_learningmodetimer")
	.dwattr DW$755, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$755, DW_AT_accessibility(DW_ACCESS_public)
DW$756	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$756, DW_AT_name("intervaltimer"), DW_AT_symbol_name("_intervaltimer")
	.dwattr DW$756, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$756, DW_AT_accessibility(DW_ACCESS_public)
DW$757	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$757, DW_AT_name("numsamples"), DW_AT_symbol_name("_numsamples")
	.dwattr DW$757, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$757, DW_AT_accessibility(DW_ACCESS_public)
DW$758	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$758, DW_AT_name("learningleft"), DW_AT_symbol_name("_learningleft")
	.dwattr DW$758, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$758, DW_AT_accessibility(DW_ACCESS_public)
DW$759	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$759, DW_AT_name("intervalleft"), DW_AT_symbol_name("_intervalleft")
	.dwattr DW$759, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$759, DW_AT_accessibility(DW_ACCESS_public)
DW$760	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$760, DW_AT_name("manappliedminsamples"), DW_AT_symbol_name("_manappliedminsamples")
	.dwattr DW$760, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$760, DW_AT_accessibility(DW_ACCESS_public)
DW$761	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$761, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$761, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$761, DW_AT_accessibility(DW_ACCESS_public)
DW$762	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$762, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$762, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$762, DW_AT_accessibility(DW_ACCESS_public)
DW$763	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$763, DW_AT_name("unused3"), DW_AT_symbol_name("_unused3")
	.dwattr DW$763, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$763, DW_AT_accessibility(DW_ACCESS_public)
DW$764	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$764, DW_AT_name("unused4"), DW_AT_symbol_name("_unused4")
	.dwattr DW$764, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$764, DW_AT_accessibility(DW_ACCESS_public)
DW$765	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$765, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$765, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$765, DW_AT_accessibility(DW_ACCESS_public)
DW$766	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$766, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$766, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$766, DW_AT_accessibility(DW_ACCESS_public)
DW$767	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$767, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$767, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$767, DW_AT_accessibility(DW_ACCESS_public)
DW$768	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$768, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$768, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$768, DW_AT_accessibility(DW_ACCESS_public)
DW$769	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$769, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$769, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$769, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$53


DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$54, DW_AT_name("tag_alarmsstruct")
	.dwattr DW$T$54, DW_AT_byte_size(0x01)
DW$770	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$770, DW_AT_name("slavefailure"), DW_AT_symbol_name("_slavefailure")
	.dwattr DW$770, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$770, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$770, DW_AT_accessibility(DW_ACCESS_public)
DW$771	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$771, DW_AT_name("slavefailurelatched"), DW_AT_symbol_name("_slavefailurelatched")
	.dwattr DW$771, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$771, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$771, DW_AT_accessibility(DW_ACCESS_public)
DW$772	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$772, DW_AT_name("framfailure"), DW_AT_symbol_name("_framfailure")
	.dwattr DW$772, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$772, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$772, DW_AT_accessibility(DW_ACCESS_public)
DW$773	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$773, DW_AT_name("framfailurelatched"), DW_AT_symbol_name("_framfailurelatched")
	.dwattr DW$773, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$773, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$773, DW_AT_accessibility(DW_ACCESS_public)
DW$774	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$774, DW_AT_name("pccommsfailure"), DW_AT_symbol_name("_pccommsfailure")
	.dwattr DW$774, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$774, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$774, DW_AT_accessibility(DW_ACCESS_public)
DW$775	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$775, DW_AT_name("pccommsfailurelatched"), DW_AT_symbol_name("_pccommsfailurelatched")
	.dwattr DW$775, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$775, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$775, DW_AT_accessibility(DW_ACCESS_public)
DW$776	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$776, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$776, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$776, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$776, DW_AT_accessibility(DW_ACCESS_public)
DW$777	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$777, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$777, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$777, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$777, DW_AT_accessibility(DW_ACCESS_public)
DW$778	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$778, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$778, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$778, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$778, DW_AT_accessibility(DW_ACCESS_public)
DW$779	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$779, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$779, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$779, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$779, DW_AT_accessibility(DW_ACCESS_public)
DW$780	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$780, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$780, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$780, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$780, DW_AT_accessibility(DW_ACCESS_public)
DW$781	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$781, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$781, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$781, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$781, DW_AT_accessibility(DW_ACCESS_public)
DW$782	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$782, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$782, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$782, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$782, DW_AT_accessibility(DW_ACCESS_public)
DW$783	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$783, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$783, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$783, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$783, DW_AT_accessibility(DW_ACCESS_public)
DW$784	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$784, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$784, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$784, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$784, DW_AT_accessibility(DW_ACCESS_public)
DW$785	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$785, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$785, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$785, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$785, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$54

DW$786	.dwtag  DW_TAG_far_type
	.dwattr DW$786, DW_AT_type(*DW$T$55)
DW$T$103	.dwtag  DW_TAG_const_type
	.dwattr DW$T$103, DW_AT_type(*DW$786)
DW$T$183	.dwtag  DW_TAG_typedef, DW_AT_name("sdcarddirstruct"), DW_AT_type(*DW$T$57)
	.dwattr DW$T$183, DW_AT_language(DW_LANG_C)

DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$59, DW_AT_name("tag_slavecmdstruct")
	.dwattr DW$T$59, DW_AT_byte_size(0x48)
DW$787	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$787, DW_AT_name("SlaveAddr"), DW_AT_symbol_name("_SlaveAddr")
	.dwattr DW$787, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$787, DW_AT_accessibility(DW_ACCESS_public)
DW$788	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$788, DW_AT_name("Func"), DW_AT_symbol_name("_Func")
	.dwattr DW$788, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$788, DW_AT_accessibility(DW_ACCESS_public)
DW$789	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$789, DW_AT_name("StartAdd"), DW_AT_symbol_name("_StartAdd")
	.dwattr DW$789, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$789, DW_AT_accessibility(DW_ACCESS_public)
DW$790	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$790, DW_AT_name("NoReg"), DW_AT_symbol_name("_NoReg")
	.dwattr DW$790, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$790, DW_AT_accessibility(DW_ACCESS_public)
DW$791	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$791, DW_AT_name("ByteCount"), DW_AT_symbol_name("_ByteCount")
	.dwattr DW$791, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$791, DW_AT_accessibility(DW_ACCESS_public)
DW$792	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$58)
	.dwattr DW$792, DW_AT_name("Data"), DW_AT_symbol_name("_Data")
	.dwattr DW$792, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$792, DW_AT_accessibility(DW_ACCESS_public)
DW$793	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$793, DW_AT_name("txmode"), DW_AT_symbol_name("_txmode")
	.dwattr DW$793, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr DW$793, DW_AT_accessibility(DW_ACCESS_public)
DW$794	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$794, DW_AT_name("slavelost"), DW_AT_symbol_name("_slavelost")
	.dwattr DW$794, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$794, DW_AT_accessibility(DW_ACCESS_public)
DW$795	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$795, DW_AT_name("slavenotready"), DW_AT_symbol_name("_slavenotready")
	.dwattr DW$795, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr DW$795, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$59


DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$60, DW_AT_name("tag_mbupdatestruct")
	.dwattr DW$T$60, DW_AT_byte_size(0x01)
DW$796	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$796, DW_AT_name("status1"), DW_AT_symbol_name("_status1")
	.dwattr DW$796, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$796, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$60

DW$T$189	.dwtag  DW_TAG_typedef, DW_AT_name("sensorstruct"), DW_AT_type(*DW$T$63)
	.dwattr DW$T$189, DW_AT_language(DW_LANG_C)

DW$T$65	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$65, DW_AT_name("tag_functionstruct")
	.dwattr DW$T$65, DW_AT_byte_size(0x08)
DW$797	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$64)
	.dwattr DW$797, DW_AT_name("enabled"), DW_AT_symbol_name("_enabled")
	.dwattr DW$797, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$797, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$65


DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$66, DW_AT_name("tag_prewarnstruct")
	.dwattr DW$T$66, DW_AT_byte_size(0xaa)
DW$798	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$798, DW_AT_name("prelevel"), DW_AT_symbol_name("_prelevel")
	.dwattr DW$798, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$798, DW_AT_accessibility(DW_ACCESS_public)
DW$799	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$799, DW_AT_name("average"), DW_AT_symbol_name("_average")
	.dwattr DW$799, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$799, DW_AT_accessibility(DW_ACCESS_public)
DW$800	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$800, DW_AT_name("calcacc"), DW_AT_symbol_name("_calcacc")
	.dwattr DW$800, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$800, DW_AT_accessibility(DW_ACCESS_public)
DW$801	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$801, DW_AT_name("points"), DW_AT_symbol_name("_points")
	.dwattr DW$801, DW_AT_data_member_location[DW_OP_plus_uconst 0x70]
	.dwattr DW$801, DW_AT_accessibility(DW_ACCESS_public)
DW$802	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$802, DW_AT_name("prewarncompleteflag"), DW_AT_symbol_name("_prewarncompleteflag")
	.dwattr DW$802, DW_AT_data_member_location[DW_OP_plus_uconst 0xa8]
	.dwattr DW$802, DW_AT_accessibility(DW_ACCESS_public)
DW$803	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$803, DW_AT_name("init"), DW_AT_symbol_name("_init")
	.dwattr DW$803, DW_AT_data_member_location[DW_OP_plus_uconst 0xa9]
	.dwattr DW$803, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$66


DW$T$67	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$67, DW_AT_name("tag_engingestruct")
	.dwattr DW$T$67, DW_AT_byte_size(0x02)
DW$804	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$804, DW_AT_name("runtime"), DW_AT_symbol_name("_runtime")
	.dwattr DW$804, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$804, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$67


DW$T$68	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$68, DW_AT_name("tag_offsetstruct")
	.dwattr DW$T$68, DW_AT_byte_size(0x1c)
DW$805	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$805, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$805, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$805, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$68

DW$T$200	.dwtag  DW_TAG_typedef, DW_AT_name("manrefsumstruct"), DW_AT_type(*DW$T$69)
	.dwattr DW$T$200, DW_AT_language(DW_LANG_C)
DW$T$204	.dwtag  DW_TAG_typedef, DW_AT_name("manrefstruct"), DW_AT_type(*DW$T$70)
	.dwattr DW$T$204, DW_AT_language(DW_LANG_C)

DW$T$71	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$71, DW_AT_name("tag_damagemonstruct")
	.dwattr DW$T$71, DW_AT_byte_size(0x10)
DW$806	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$806, DW_AT_name("ccsplit"), DW_AT_symbol_name("_ccsplit")
	.dwattr DW$806, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$806, DW_AT_accessibility(DW_ACCESS_public)
DW$807	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$807, DW_AT_name("kvalue"), DW_AT_symbol_name("_kvalue")
	.dwattr DW$807, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$807, DW_AT_accessibility(DW_ACCESS_public)
DW$808	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$808, DW_AT_name("betavalue"), DW_AT_symbol_name("_betavalue")
	.dwattr DW$808, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$808, DW_AT_accessibility(DW_ACCESS_public)
DW$809	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$809, DW_AT_name("rpmlevelx"), DW_AT_symbol_name("_rpmlevelx")
	.dwattr DW$809, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$809, DW_AT_accessibility(DW_ACCESS_public)
DW$810	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$810, DW_AT_name("reflevelx"), DW_AT_symbol_name("_reflevelx")
	.dwattr DW$810, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$810, DW_AT_accessibility(DW_ACCESS_public)
DW$811	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$811, DW_AT_name("presentstatex"), DW_AT_symbol_name("_presentstatex")
	.dwattr DW$811, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$811, DW_AT_accessibility(DW_ACCESS_public)
DW$812	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$812, DW_AT_name("alarmlevelsingle"), DW_AT_symbol_name("_alarmlevelsingle")
	.dwattr DW$812, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$812, DW_AT_accessibility(DW_ACCESS_public)
DW$813	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$813, DW_AT_name("alarmlevelcyl"), DW_AT_symbol_name("_alarmlevelcyl")
	.dwattr DW$813, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$813, DW_AT_accessibility(DW_ACCESS_public)
DW$814	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$814, DW_AT_name("alarmlevelmbsum"), DW_AT_symbol_name("_alarmlevelmbsum")
	.dwattr DW$814, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$814, DW_AT_accessibility(DW_ACCESS_public)
DW$815	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$815, DW_AT_name("cylneighbour"), DW_AT_symbol_name("_cylneighbour")
	.dwattr DW$815, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$815, DW_AT_accessibility(DW_ACCESS_public)
DW$816	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$816, DW_AT_name("mbneighbour"), DW_AT_symbol_name("_mbneighbour")
	.dwattr DW$816, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$816, DW_AT_accessibility(DW_ACCESS_public)
DW$817	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$817, DW_AT_name("cylneighbouralarms"), DW_AT_symbol_name("_cylneighbouralarms")
	.dwattr DW$817, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$817, DW_AT_accessibility(DW_ACCESS_public)
DW$818	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$818, DW_AT_name("mbneighbouralarms"), DW_AT_symbol_name("_mbneighbouralarms")
	.dwattr DW$818, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$818, DW_AT_accessibility(DW_ACCESS_public)
DW$819	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$819, DW_AT_name("deltarpmlimit"), DW_AT_symbol_name("_deltarpmlimit")
	.dwattr DW$819, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$819, DW_AT_accessibility(DW_ACCESS_public)
DW$820	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$820, DW_AT_name("hysteresis"), DW_AT_symbol_name("_hysteresis")
	.dwattr DW$820, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$820, DW_AT_accessibility(DW_ACCESS_public)
DW$821	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$821, DW_AT_name("damagemonenb"), DW_AT_symbol_name("_damagemonenb")
	.dwattr DW$821, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$821, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$71


DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$72, DW_AT_name("tag_dynamicalarmsstruct")
	.dwattr DW$T$72, DW_AT_byte_size(0x24)
DW$822	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$822, DW_AT_name("rpmav"), DW_AT_symbol_name("_rpmav")
	.dwattr DW$822, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$822, DW_AT_accessibility(DW_ACCESS_public)
DW$823	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$823, DW_AT_name("single1"), DW_AT_symbol_name("_single1")
	.dwattr DW$823, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$823, DW_AT_accessibility(DW_ACCESS_public)
DW$824	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$824, DW_AT_name("cyl1"), DW_AT_symbol_name("_cyl1")
	.dwattr DW$824, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$824, DW_AT_accessibility(DW_ACCESS_public)
DW$825	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$825, DW_AT_name("mbsum1"), DW_AT_symbol_name("_mbsum1")
	.dwattr DW$825, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$825, DW_AT_accessibility(DW_ACCESS_public)
DW$826	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$826, DW_AT_name("single2"), DW_AT_symbol_name("_single2")
	.dwattr DW$826, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$826, DW_AT_accessibility(DW_ACCESS_public)
DW$827	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$827, DW_AT_name("cyl2"), DW_AT_symbol_name("_cyl2")
	.dwattr DW$827, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$827, DW_AT_accessibility(DW_ACCESS_public)
DW$828	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$828, DW_AT_name("mbsum2"), DW_AT_symbol_name("_mbsum2")
	.dwattr DW$828, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$828, DW_AT_accessibility(DW_ACCESS_public)
DW$829	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$829, DW_AT_name("deltarpmprev"), DW_AT_symbol_name("_deltarpmprev")
	.dwattr DW$829, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$829, DW_AT_accessibility(DW_ACCESS_public)
DW$830	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$830, DW_AT_name("deltarpm"), DW_AT_symbol_name("_deltarpm")
	.dwattr DW$830, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$830, DW_AT_accessibility(DW_ACCESS_public)
DW$831	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$831, DW_AT_name("deltarpm_int"), DW_AT_symbol_name("_deltarpm_int")
	.dwattr DW$831, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$831, DW_AT_accessibility(DW_ACCESS_public)
DW$832	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$832, DW_AT_name("rpmav_int"), DW_AT_symbol_name("_rpmav_int")
	.dwattr DW$832, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$832, DW_AT_accessibility(DW_ACCESS_public)
DW$833	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$833, DW_AT_name("deltarpmprev_int"), DW_AT_symbol_name("_deltarpmprev_int")
	.dwattr DW$833, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$833, DW_AT_accessibility(DW_ACCESS_public)
DW$834	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$834, DW_AT_name("single"), DW_AT_symbol_name("_single")
	.dwattr DW$834, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$834, DW_AT_accessibility(DW_ACCESS_public)
DW$835	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$835, DW_AT_name("cyl"), DW_AT_symbol_name("_cyl")
	.dwattr DW$835, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$835, DW_AT_accessibility(DW_ACCESS_public)
DW$836	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$836, DW_AT_name("mbsum"), DW_AT_symbol_name("_mbsum")
	.dwattr DW$836, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$836, DW_AT_accessibility(DW_ACCESS_public)
DW$837	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$837, DW_AT_name("singleprev"), DW_AT_symbol_name("_singleprev")
	.dwattr DW$837, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$837, DW_AT_accessibility(DW_ACCESS_public)
DW$838	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$838, DW_AT_name("cylprev"), DW_AT_symbol_name("_cylprev")
	.dwattr DW$838, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$838, DW_AT_accessibility(DW_ACCESS_public)
DW$839	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$839, DW_AT_name("mbsumprev"), DW_AT_symbol_name("_mbsumprev")
	.dwattr DW$839, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$839, DW_AT_accessibility(DW_ACCESS_public)
DW$840	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$840, DW_AT_name("single1_int"), DW_AT_symbol_name("_single1_int")
	.dwattr DW$840, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$840, DW_AT_accessibility(DW_ACCESS_public)
DW$841	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$841, DW_AT_name("cyl1_int"), DW_AT_symbol_name("_cyl1_int")
	.dwattr DW$841, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$841, DW_AT_accessibility(DW_ACCESS_public)
DW$842	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$842, DW_AT_name("mbsum1_int"), DW_AT_symbol_name("_mbsum1_int")
	.dwattr DW$842, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$842, DW_AT_accessibility(DW_ACCESS_public)
DW$843	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$843, DW_AT_name("single2_int"), DW_AT_symbol_name("_single2_int")
	.dwattr DW$843, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$843, DW_AT_accessibility(DW_ACCESS_public)
DW$844	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$844, DW_AT_name("cyl2_int"), DW_AT_symbol_name("_cyl2_int")
	.dwattr DW$844, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$844, DW_AT_accessibility(DW_ACCESS_public)
DW$845	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$845, DW_AT_name("mbsum2_int"), DW_AT_symbol_name("_mbsum2_int")
	.dwattr DW$845, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$845, DW_AT_accessibility(DW_ACCESS_public)
DW$846	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$846, DW_AT_name("hits"), DW_AT_symbol_name("_hits")
	.dwattr DW$846, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$846, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$72


DW$T$73	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$73, DW_AT_name("tag_damalarmsstruct")
	.dwattr DW$T$73, DW_AT_byte_size(0x04)
DW$847	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$43)
	.dwattr DW$847, DW_AT_name("single"), DW_AT_symbol_name("_single")
	.dwattr DW$847, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$847, DW_AT_accessibility(DW_ACCESS_public)
DW$848	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$848, DW_AT_name("cylinder"), DW_AT_symbol_name("_cylinder")
	.dwattr DW$848, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$848, DW_AT_accessibility(DW_ACCESS_public)
DW$849	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$849, DW_AT_name("mbneighbour"), DW_AT_symbol_name("_mbneighbour")
	.dwattr DW$849, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$849, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$73


DW$T$26	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$26, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$26, DW_AT_byte_size(0x02)
DW$850	.dwtag  DW_TAG_subrange_type
	.dwattr DW$850, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$26


DW$T$51	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$51, DW_AT_byte_size(0x54)
DW$851	.dwtag  DW_TAG_subrange_type
	.dwattr DW$851, DW_AT_upper_bound(0x02)
DW$852	.dwtag  DW_TAG_subrange_type
	.dwattr DW$852, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$51


DW$T$28	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$28, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$28, DW_AT_byte_size(0x0e)
DW$853	.dwtag  DW_TAG_subrange_type
	.dwattr DW$853, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$28


DW$T$43	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$43, DW_AT_byte_size(0x02)
DW$854	.dwtag  DW_TAG_subrange_type
	.dwattr DW$854, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$43


DW$T$44	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$44, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$44, DW_AT_byte_size(0x06)
DW$855	.dwtag  DW_TAG_subrange_type
	.dwattr DW$855, DW_AT_upper_bound(0x02)
DW$856	.dwtag  DW_TAG_subrange_type
	.dwattr DW$856, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$44


DW$T$49	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$49, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$49, DW_AT_byte_size(0x03)
DW$857	.dwtag  DW_TAG_subrange_type
	.dwattr DW$857, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$49


DW$T$58	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$58, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$58, DW_AT_byte_size(0x40)
DW$858	.dwtag  DW_TAG_subrange_type
	.dwattr DW$858, DW_AT_upper_bound(0x3f)
	.dwendtag DW$T$58


DW$T$47	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$47, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$47, DW_AT_byte_size(0x38)
DW$859	.dwtag  DW_TAG_subrange_type
	.dwattr DW$859, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$47


DW$T$48	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$48, DW_AT_byte_size(0xa8)
DW$860	.dwtag  DW_TAG_subrange_type
	.dwattr DW$860, DW_AT_upper_bound(0x02)
DW$861	.dwtag  DW_TAG_subrange_type
	.dwattr DW$861, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$48


DW$T$45	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$45, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$45, DW_AT_byte_size(0x06)
DW$862	.dwtag  DW_TAG_subrange_type
	.dwattr DW$862, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$45


DW$T$46	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$46, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$46, DW_AT_byte_size(0x12c)
DW$863	.dwtag  DW_TAG_subrange_type
	.dwattr DW$863, DW_AT_upper_bound(0x95)
	.dwendtag DW$T$46


DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$19, DW_AT_name("tag_status3struct")
	.dwattr DW$T$19, DW_AT_byte_size(0x01)
DW$864	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$864, DW_AT_name("nopulse"), DW_AT_symbol_name("_nopulse")
	.dwattr DW$864, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$864, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$864, DW_AT_accessibility(DW_ACCESS_public)
DW$865	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$865, DW_AT_name("low"), DW_AT_symbol_name("_low")
	.dwattr DW$865, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$865, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$865, DW_AT_accessibility(DW_ACCESS_public)
DW$866	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$866, DW_AT_name("high"), DW_AT_symbol_name("_high")
	.dwattr DW$866, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$866, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$866, DW_AT_accessibility(DW_ACCESS_public)
DW$867	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$867, DW_AT_name("rpmoor"), DW_AT_symbol_name("_rpmoor")
	.dwattr DW$867, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$867, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$867, DW_AT_accessibility(DW_ACCESS_public)
DW$868	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$868, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$868, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$868, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$868, DW_AT_accessibility(DW_ACCESS_public)
DW$869	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$869, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$869, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$869, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$869, DW_AT_accessibility(DW_ACCESS_public)
DW$870	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$870, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$870, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$870, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$870, DW_AT_accessibility(DW_ACCESS_public)
DW$871	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$871, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$871, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$871, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$871, DW_AT_accessibility(DW_ACCESS_public)
DW$872	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$872, DW_AT_name("nopulselatched"), DW_AT_symbol_name("_nopulselatched")
	.dwattr DW$872, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$872, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$872, DW_AT_accessibility(DW_ACCESS_public)
DW$873	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$873, DW_AT_name("lowlatched"), DW_AT_symbol_name("_lowlatched")
	.dwattr DW$873, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$873, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$873, DW_AT_accessibility(DW_ACCESS_public)
DW$874	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$874, DW_AT_name("highlatched"), DW_AT_symbol_name("_highlatched")
	.dwattr DW$874, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$874, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$874, DW_AT_accessibility(DW_ACCESS_public)
DW$875	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$875, DW_AT_name("rpmoorlatched"), DW_AT_symbol_name("_rpmoorlatched")
	.dwattr DW$875, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$875, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$875, DW_AT_accessibility(DW_ACCESS_public)
DW$876	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$876, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$876, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$876, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$876, DW_AT_accessibility(DW_ACCESS_public)
DW$877	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$877, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$877, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$877, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$877, DW_AT_accessibility(DW_ACCESS_public)
DW$878	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$878, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$878, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$878, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$878, DW_AT_accessibility(DW_ACCESS_public)
DW$879	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$879, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$879, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$879, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$879, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$19

DW$T$61	.dwtag  DW_TAG_typedef, DW_AT_name("status1struct"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$61, DW_AT_language(DW_LANG_C)
DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("sensoralarmstruct"), DW_AT_type(*DW$T$21)
	.dwattr DW$T$62, DW_AT_language(DW_LANG_C)

DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_byte_size(0x02)
DW$880	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$880, DW_AT_name("enb"), DW_AT_symbol_name("_enb")
	.dwattr DW$880, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$880, DW_AT_accessibility(DW_ACCESS_public)
DW$881	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$881, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$881, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$881, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$29, DW_AT_name("tag_timers")
	.dwattr DW$T$29, DW_AT_byte_size(0x4c)
DW$882	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$882, DW_AT_name("update"), DW_AT_symbol_name("_update")
	.dwattr DW$882, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$882, DW_AT_accessibility(DW_ACCESS_public)
DW$883	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$883, DW_AT_name("general"), DW_AT_symbol_name("_general")
	.dwattr DW$883, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$883, DW_AT_accessibility(DW_ACCESS_public)
DW$884	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$884, DW_AT_name("rxcharTimeout"), DW_AT_symbol_name("_rxcharTimeout")
	.dwattr DW$884, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$884, DW_AT_accessibility(DW_ACCESS_public)
DW$885	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$885, DW_AT_name("wiorxtimeout"), DW_AT_symbol_name("_wiorxtimeout")
	.dwattr DW$885, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$885, DW_AT_accessibility(DW_ACCESS_public)
DW$886	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$886, DW_AT_name("wiomasterrxtimeout"), DW_AT_symbol_name("_wiomasterrxtimeout")
	.dwattr DW$886, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$886, DW_AT_accessibility(DW_ACCESS_public)
DW$887	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$887, DW_AT_name("masterrxtimeout"), DW_AT_symbol_name("_masterrxtimeout")
	.dwattr DW$887, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$887, DW_AT_accessibility(DW_ACCESS_public)
DW$888	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$888, DW_AT_name("slaverxtimeout"), DW_AT_symbol_name("_slaverxtimeout")
	.dwattr DW$888, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$888, DW_AT_accessibility(DW_ACCESS_public)
DW$889	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$889, DW_AT_name("sectick"), DW_AT_symbol_name("_sectick")
	.dwattr DW$889, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$889, DW_AT_accessibility(DW_ACCESS_public)
DW$890	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$890, DW_AT_name("ledflash"), DW_AT_symbol_name("_ledflash")
	.dwattr DW$890, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$890, DW_AT_accessibility(DW_ACCESS_public)
DW$891	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$891, DW_AT_name("prtsettle"), DW_AT_symbol_name("_prtsettle")
	.dwattr DW$891, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$891, DW_AT_accessibility(DW_ACCESS_public)
DW$892	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$892, DW_AT_name("chantimeout"), DW_AT_symbol_name("_chantimeout")
	.dwattr DW$892, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$892, DW_AT_accessibility(DW_ACCESS_public)
DW$893	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$893, DW_AT_name("chanwait"), DW_AT_symbol_name("_chanwait")
	.dwattr DW$893, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$893, DW_AT_accessibility(DW_ACCESS_public)
DW$894	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$894, DW_AT_name("pcrxtimeout"), DW_AT_symbol_name("_pcrxtimeout")
	.dwattr DW$894, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$894, DW_AT_accessibility(DW_ACCESS_public)
DW$895	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$895, DW_AT_name("pctxtimeout"), DW_AT_symbol_name("_pctxtimeout")
	.dwattr DW$895, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$895, DW_AT_accessibility(DW_ACCESS_public)
DW$896	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$896, DW_AT_name("spistatus"), DW_AT_symbol_name("_spistatus")
	.dwattr DW$896, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$896, DW_AT_accessibility(DW_ACCESS_public)
DW$897	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$897, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$897, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$897, DW_AT_accessibility(DW_ACCESS_public)
DW$898	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$898, DW_AT_name("slaverqst"), DW_AT_symbol_name("_slaverqst")
	.dwattr DW$898, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$898, DW_AT_accessibility(DW_ACCESS_public)
DW$899	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$899, DW_AT_name("mastermodebutton"), DW_AT_symbol_name("_mastermodebutton")
	.dwattr DW$899, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$899, DW_AT_accessibility(DW_ACCESS_public)
DW$900	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$900, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$900, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$900, DW_AT_accessibility(DW_ACCESS_public)
DW$901	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$901, DW_AT_name("calibrate"), DW_AT_symbol_name("_calibrate")
	.dwattr DW$901, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$901, DW_AT_accessibility(DW_ACCESS_public)
DW$902	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$902, DW_AT_name("calibrate2"), DW_AT_symbol_name("_calibrate2")
	.dwattr DW$902, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$902, DW_AT_accessibility(DW_ACCESS_public)
DW$903	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$903, DW_AT_name("alarmreflash"), DW_AT_symbol_name("_alarmreflash")
	.dwattr DW$903, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$903, DW_AT_accessibility(DW_ACCESS_public)
DW$904	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$904, DW_AT_name("slowdownreflash"), DW_AT_symbol_name("_slowdownreflash")
	.dwattr DW$904, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr DW$904, DW_AT_accessibility(DW_ACCESS_public)
DW$905	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$905, DW_AT_name("wiorqst"), DW_AT_symbol_name("_wiorqst")
	.dwattr DW$905, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$905, DW_AT_accessibility(DW_ACCESS_public)
DW$906	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$906, DW_AT_name("rpmtimeout"), DW_AT_symbol_name("_rpmtimeout")
	.dwattr DW$906, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr DW$906, DW_AT_accessibility(DW_ACCESS_public)
DW$907	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$907, DW_AT_name("analogoor"), DW_AT_symbol_name("_analogoor")
	.dwattr DW$907, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$907, DW_AT_accessibility(DW_ACCESS_public)
DW$908	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$908, DW_AT_name("motioncal"), DW_AT_symbol_name("_motioncal")
	.dwattr DW$908, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr DW$908, DW_AT_accessibility(DW_ACCESS_public)
DW$909	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$909, DW_AT_name("framcheck"), DW_AT_symbol_name("_framcheck")
	.dwattr DW$909, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$909, DW_AT_accessibility(DW_ACCESS_public)
DW$910	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$910, DW_AT_name("pcmodbus"), DW_AT_symbol_name("_pcmodbus")
	.dwattr DW$910, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr DW$910, DW_AT_accessibility(DW_ACCESS_public)
DW$911	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$911, DW_AT_name("statusreflash"), DW_AT_symbol_name("_statusreflash")
	.dwattr DW$911, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$911, DW_AT_accessibility(DW_ACCESS_public)
DW$912	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$912, DW_AT_name("prewarn"), DW_AT_symbol_name("_prewarn")
	.dwattr DW$912, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$912, DW_AT_accessibility(DW_ACCESS_public)
DW$913	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$913, DW_AT_name("clocktofram"), DW_AT_symbol_name("_clocktofram")
	.dwattr DW$913, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr DW$913, DW_AT_accessibility(DW_ACCESS_public)
DW$914	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$914, DW_AT_name("debugrapidfast"), DW_AT_symbol_name("_debugrapidfast")
	.dwattr DW$914, DW_AT_data_member_location[DW_OP_plus_uconst 0x3f]
	.dwattr DW$914, DW_AT_accessibility(DW_ACCESS_public)
DW$915	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$915, DW_AT_name("debugupdate"), DW_AT_symbol_name("_debugupdate")
	.dwattr DW$915, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$915, DW_AT_accessibility(DW_ACCESS_public)
DW$916	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$916, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$916, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr DW$916, DW_AT_accessibility(DW_ACCESS_public)
DW$917	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$917, DW_AT_name("startup"), DW_AT_symbol_name("_startup")
	.dwattr DW$917, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr DW$917, DW_AT_accessibility(DW_ACCESS_public)
DW$918	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$918, DW_AT_name("analogsettle"), DW_AT_symbol_name("_analogsettle")
	.dwattr DW$918, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr DW$918, DW_AT_accessibility(DW_ACCESS_public)
DW$919	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$919, DW_AT_name("reprogram"), DW_AT_symbol_name("_reprogram")
	.dwattr DW$919, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr DW$919, DW_AT_accessibility(DW_ACCESS_public)
DW$920	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$920, DW_AT_name("reprogramtimeout"), DW_AT_symbol_name("_reprogramtimeout")
	.dwattr DW$920, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr DW$920, DW_AT_accessibility(DW_ACCESS_public)
DW$921	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$921, DW_AT_name("dcmodestayalive"), DW_AT_symbol_name("_dcmodestayalive")
	.dwattr DW$921, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$921, DW_AT_accessibility(DW_ACCESS_public)
DW$922	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$922, DW_AT_name("biteventchange"), DW_AT_symbol_name("_biteventchange")
	.dwattr DW$922, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr DW$922, DW_AT_accessibility(DW_ACCESS_public)
DW$923	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$923, DW_AT_name("iSensorReplace"), DW_AT_symbol_name("_iSensorReplace")
	.dwattr DW$923, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr DW$923, DW_AT_accessibility(DW_ACCESS_public)
DW$924	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$924, DW_AT_name("deltarpm15Delay"), DW_AT_symbol_name("_deltarpm15Delay")
	.dwattr DW$924, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr DW$924, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$29


DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$30, DW_AT_byte_size(0x01)
DW$925	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$925, DW_AT_name("newval"), DW_AT_symbol_name("_newval")
	.dwattr DW$925, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$925, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$925, DW_AT_accessibility(DW_ACCESS_public)
DW$926	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$926, DW_AT_name("calmode"), DW_AT_symbol_name("_calmode")
	.dwattr DW$926, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$926, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$926, DW_AT_accessibility(DW_ACCESS_public)
DW$927	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$927, DW_AT_name("startcal"), DW_AT_symbol_name("_startcal")
	.dwattr DW$927, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$927, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$927, DW_AT_accessibility(DW_ACCESS_public)
DW$928	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$928, DW_AT_name("newvalspu2"), DW_AT_symbol_name("_newvalspu2")
	.dwattr DW$928, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$928, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$928, DW_AT_accessibility(DW_ACCESS_public)
DW$929	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$929, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$929, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$929, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$929, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30


DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$31, DW_AT_byte_size(0x01)
DW$930	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$930, DW_AT_name("slowdowncntrl"), DW_AT_symbol_name("_slowdowncntrl")
	.dwattr DW$930, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$930, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$930, DW_AT_accessibility(DW_ACCESS_public)
DW$931	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$931, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$931, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0f)
	.dwattr DW$931, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$931, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$35, DW_AT_name("tag_cylinderstruct")
	.dwattr DW$T$35, DW_AT_byte_size(0x04)
DW$932	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$932, DW_AT_name("status1"), DW_AT_symbol_name("_status1")
	.dwattr DW$932, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$932, DW_AT_accessibility(DW_ACCESS_public)
DW$933	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$933, DW_AT_name("status2"), DW_AT_symbol_name("_status2")
	.dwattr DW$933, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$933, DW_AT_accessibility(DW_ACCESS_public)
DW$934	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$934, DW_AT_name("average"), DW_AT_symbol_name("_average")
	.dwattr DW$934, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$934, DW_AT_accessibility(DW_ACCESS_public)
DW$935	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$935, DW_AT_name("deviation"), DW_AT_symbol_name("_deviation")
	.dwattr DW$935, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$935, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35


DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$36, DW_AT_byte_size(0x01)
DW$936	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$936, DW_AT_name("inputtap"), DW_AT_symbol_name("_inputtap")
	.dwattr DW$936, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$936, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$36


DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$37, DW_AT_byte_size(0x01)
DW$937	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$937, DW_AT_name("bitmap"), DW_AT_symbol_name("_bitmap")
	.dwattr DW$937, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$937, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$37


DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_byte_size(0x01)
DW$938	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$938, DW_AT_name("graphvalue"), DW_AT_symbol_name("_graphvalue")
	.dwattr DW$938, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$938, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38


DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$39, DW_AT_byte_size(0x03)
DW$939	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$939, DW_AT_name("chanlowthreshold"), DW_AT_symbol_name("_chanlowthreshold")
	.dwattr DW$939, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$939, DW_AT_accessibility(DW_ACCESS_public)
DW$940	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$940, DW_AT_name("chanhighthreshold"), DW_AT_symbol_name("_chanhighthreshold")
	.dwattr DW$940, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$940, DW_AT_accessibility(DW_ACCESS_public)
DW$941	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$941, DW_AT_name("sensorscalingfactor"), DW_AT_symbol_name("_sensorscalingfactor")
	.dwattr DW$941, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$941, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39


DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$40, DW_AT_byte_size(0x02)
DW$942	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$942, DW_AT_name("shortlrate"), DW_AT_symbol_name("_shortlrate")
	.dwattr DW$942, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$942, DW_AT_accessibility(DW_ACCESS_public)
DW$943	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$943, DW_AT_name("longlrate"), DW_AT_symbol_name("_longlrate")
	.dwattr DW$943, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$943, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40


DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$41, DW_AT_byte_size(0x10)
DW$944	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$944, DW_AT_name("wiorequest"), DW_AT_symbol_name("_wiorequest")
	.dwattr DW$944, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$944, DW_AT_accessibility(DW_ACCESS_public)
DW$945	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$945, DW_AT_name("wiocancelled"), DW_AT_symbol_name("_wiocancelled")
	.dwattr DW$945, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$945, DW_AT_accessibility(DW_ACCESS_public)
DW$946	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$946, DW_AT_name("wioreceived"), DW_AT_symbol_name("_wioreceived")
	.dwattr DW$946, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$946, DW_AT_accessibility(DW_ACCESS_public)
DW$947	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$947, DW_AT_name("slaverequest"), DW_AT_symbol_name("_slaverequest")
	.dwattr DW$947, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$947, DW_AT_accessibility(DW_ACCESS_public)
DW$948	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$948, DW_AT_name("slavereceived"), DW_AT_symbol_name("_slavereceived")
	.dwattr DW$948, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$948, DW_AT_accessibility(DW_ACCESS_public)
DW$949	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$949, DW_AT_name("slaveretry"), DW_AT_symbol_name("_slaveretry")
	.dwattr DW$949, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$949, DW_AT_accessibility(DW_ACCESS_public)
DW$950	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$950, DW_AT_name("pcrequest"), DW_AT_symbol_name("_pcrequest")
	.dwattr DW$950, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$950, DW_AT_accessibility(DW_ACCESS_public)
DW$951	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$951, DW_AT_name("pcreqtimeout"), DW_AT_symbol_name("_pcreqtimeout")
	.dwattr DW$951, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$951, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$41

DW$T$55	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$55, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$55, DW_AT_byte_size(0x01)

DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$57, DW_AT_name("tag_sdcarddirstruct")
	.dwattr DW$T$57, DW_AT_byte_size(0x36)
DW$952	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$56)
	.dwattr DW$952, DW_AT_name("firstcaldir"), DW_AT_symbol_name("_firstcaldir")
	.dwattr DW$952, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$952, DW_AT_accessibility(DW_ACCESS_public)
DW$953	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$56)
	.dwattr DW$953, DW_AT_name("roughcaldir"), DW_AT_symbol_name("_roughcaldir")
	.dwattr DW$953, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$953, DW_AT_accessibility(DW_ACCESS_public)
DW$954	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$56)
	.dwattr DW$954, DW_AT_name("finecaldir"), DW_AT_symbol_name("_finecaldir")
	.dwattr DW$954, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$954, DW_AT_accessibility(DW_ACCESS_public)
DW$955	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$56)
	.dwattr DW$955, DW_AT_name("configdir"), DW_AT_symbol_name("_configdir")
	.dwattr DW$955, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$955, DW_AT_accessibility(DW_ACCESS_public)
DW$956	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$56)
	.dwattr DW$956, DW_AT_name("sterm"), DW_AT_symbol_name("_sterm")
	.dwattr DW$956, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$956, DW_AT_accessibility(DW_ACCESS_public)
DW$957	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$56)
	.dwattr DW$957, DW_AT_name("lterm"), DW_AT_symbol_name("_lterm")
	.dwattr DW$957, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr DW$957, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$57


DW$T$63	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$63, DW_AT_name("tag_sensorstruct")
	.dwattr DW$T$63, DW_AT_byte_size(0x12)
DW$958	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$61)
	.dwattr DW$958, DW_AT_name("status1"), DW_AT_symbol_name("_status1")
	.dwattr DW$958, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$958, DW_AT_accessibility(DW_ACCESS_public)
DW$959	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$62)
	.dwattr DW$959, DW_AT_name("status2"), DW_AT_symbol_name("_status2")
	.dwattr DW$959, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$959, DW_AT_accessibility(DW_ACCESS_public)
DW$960	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$960, DW_AT_name("newval"), DW_AT_symbol_name("_newval")
	.dwattr DW$960, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$960, DW_AT_accessibility(DW_ACCESS_public)
DW$961	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$961, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$961, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$961, DW_AT_accessibility(DW_ACCESS_public)
DW$962	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$962, DW_AT_name("immediateval"), DW_AT_symbol_name("_immediateval")
	.dwattr DW$962, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$962, DW_AT_accessibility(DW_ACCESS_public)
DW$963	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$963, DW_AT_name("initialval"), DW_AT_symbol_name("_initialval")
	.dwattr DW$963, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$963, DW_AT_accessibility(DW_ACCESS_public)
DW$964	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$964, DW_AT_name("precomp"), DW_AT_symbol_name("_precomp")
	.dwattr DW$964, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$964, DW_AT_accessibility(DW_ACCESS_public)
DW$965	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$965, DW_AT_name("postcomp"), DW_AT_symbol_name("_postcomp")
	.dwattr DW$965, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$965, DW_AT_accessibility(DW_ACCESS_public)
DW$966	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$966, DW_AT_name("postfilter"), DW_AT_symbol_name("_postfilter")
	.dwattr DW$966, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$966, DW_AT_accessibility(DW_ACCESS_public)
DW$967	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$967, DW_AT_name("endresult"), DW_AT_symbol_name("_endresult")
	.dwattr DW$967, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$967, DW_AT_accessibility(DW_ACCESS_public)
DW$968	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$968, DW_AT_name("deviation"), DW_AT_symbol_name("_deviation")
	.dwattr DW$968, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$968, DW_AT_accessibility(DW_ACCESS_public)
DW$969	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$969, DW_AT_name("min"), DW_AT_symbol_name("_min")
	.dwattr DW$969, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$969, DW_AT_accessibility(DW_ACCESS_public)
DW$970	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$970, DW_AT_name("max"), DW_AT_symbol_name("_max")
	.dwattr DW$970, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$970, DW_AT_accessibility(DW_ACCESS_public)
DW$971	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$971, DW_AT_name("devmin"), DW_AT_symbol_name("_devmin")
	.dwattr DW$971, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$971, DW_AT_accessibility(DW_ACCESS_public)
DW$972	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$972, DW_AT_name("devmax"), DW_AT_symbol_name("_devmax")
	.dwattr DW$972, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$972, DW_AT_accessibility(DW_ACCESS_public)
DW$973	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$973, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$973, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$973, DW_AT_accessibility(DW_ACCESS_public)
DW$974	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$974, DW_AT_name("prt"), DW_AT_symbol_name("_prt")
	.dwattr DW$974, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$974, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$63


DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$64, DW_AT_byte_size(0x08)
DW$975	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$975, DW_AT_name("applyoffset"), DW_AT_symbol_name("_applyoffset")
	.dwattr DW$975, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$975, DW_AT_accessibility(DW_ACCESS_public)
DW$976	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$976, DW_AT_name("sensorcompensation"), DW_AT_symbol_name("_sensorcompensation")
	.dwattr DW$976, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$976, DW_AT_accessibility(DW_ACCESS_public)
DW$977	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$977, DW_AT_name("sensornoiseremoval"), DW_AT_symbol_name("_sensornoiseremoval")
	.dwattr DW$977, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$977, DW_AT_accessibility(DW_ACCESS_public)
DW$978	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$978, DW_AT_name("sensordeviation"), DW_AT_symbol_name("_sensordeviation")
	.dwattr DW$978, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$978, DW_AT_accessibility(DW_ACCESS_public)
DW$979	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$979, DW_AT_name("cylinderaverage"), DW_AT_symbol_name("_cylinderaverage")
	.dwattr DW$979, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$979, DW_AT_accessibility(DW_ACCESS_public)
DW$980	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$980, DW_AT_name("cylinderdeviation"), DW_AT_symbol_name("_cylinderdeviation")
	.dwattr DW$980, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$980, DW_AT_accessibility(DW_ACCESS_public)
DW$981	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$981, DW_AT_name("useroughcal"), DW_AT_symbol_name("_useroughcal")
	.dwattr DW$981, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$981, DW_AT_accessibility(DW_ACCESS_public)
DW$982	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$982, DW_AT_name("vincheckenabled"), DW_AT_symbol_name("_vincheckenabled")
	.dwattr DW$982, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$982, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$64


DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$69, DW_AT_name("tag_manrefsumstruct")
	.dwattr DW$T$69, DW_AT_byte_size(0x02)
DW$983	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$983, DW_AT_name("cylsum"), DW_AT_symbol_name("_cylsum")
	.dwattr DW$983, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$983, DW_AT_accessibility(DW_ACCESS_public)
DW$984	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$984, DW_AT_name("mbnsum"), DW_AT_symbol_name("_mbnsum")
	.dwattr DW$984, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$984, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$69


DW$T$70	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$70, DW_AT_name("tag_manrefstruct")
	.dwattr DW$T$70, DW_AT_byte_size(0x0a)
DW$985	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$985, DW_AT_name("reflevel"), DW_AT_symbol_name("_reflevel")
	.dwattr DW$985, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$985, DW_AT_accessibility(DW_ACCESS_public)
DW$986	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$986, DW_AT_name("presentstate"), DW_AT_symbol_name("_presentstate")
	.dwattr DW$986, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$986, DW_AT_accessibility(DW_ACCESS_public)
DW$987	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$987, DW_AT_name("refvalue"), DW_AT_symbol_name("_refvalue")
	.dwattr DW$987, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$987, DW_AT_accessibility(DW_ACCESS_public)
DW$988	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$988, DW_AT_name("reflevel_int"), DW_AT_symbol_name("_reflevel_int")
	.dwattr DW$988, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$988, DW_AT_accessibility(DW_ACCESS_public)
DW$989	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$989, DW_AT_name("presentstate_int"), DW_AT_symbol_name("_presentstate_int")
	.dwattr DW$989, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$989, DW_AT_accessibility(DW_ACCESS_public)
DW$990	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$990, DW_AT_name("refvalue_int"), DW_AT_symbol_name("_refvalue_int")
	.dwattr DW$990, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$990, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$70

DW$T$12	.dwtag  DW_TAG_base_type, DW_AT_name("long")
	.dwattr DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$12, DW_AT_byte_size(0x02)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("tag_status1struct")
	.dwattr DW$T$20, DW_AT_byte_size(0x01)
DW$991	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$991, DW_AT_name("enabled"), DW_AT_symbol_name("_enabled")
	.dwattr DW$991, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$991, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$991, DW_AT_accessibility(DW_ACCESS_public)
DW$992	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$992, DW_AT_name("calmode"), DW_AT_symbol_name("_calmode")
	.dwattr DW$992, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$992, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$992, DW_AT_accessibility(DW_ACCESS_public)
DW$993	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$993, DW_AT_name("alarmmask"), DW_AT_symbol_name("_alarmmask")
	.dwattr DW$993, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$993, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$993, DW_AT_accessibility(DW_ACCESS_public)
DW$994	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$994, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$994, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$994, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$994, DW_AT_accessibility(DW_ACCESS_public)
DW$995	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$995, DW_AT_name("replaced"), DW_AT_symbol_name("_replaced")
	.dwattr DW$995, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$995, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$995, DW_AT_accessibility(DW_ACCESS_public)
DW$996	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$996, DW_AT_name("excludeslowroll"), DW_AT_symbol_name("_excludeslowroll")
	.dwattr DW$996, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$996, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$996, DW_AT_accessibility(DW_ACCESS_public)
DW$997	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$997, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$997, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$997, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$997, DW_AT_accessibility(DW_ACCESS_public)
DW$998	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$998, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$998, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$998, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$998, DW_AT_accessibility(DW_ACCESS_public)
DW$999	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$999, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$999, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$999, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$999, DW_AT_accessibility(DW_ACCESS_public)
DW$1000	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1000, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$1000, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1000, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1000, DW_AT_accessibility(DW_ACCESS_public)
DW$1001	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1001, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$1001, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1001, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1001, DW_AT_accessibility(DW_ACCESS_public)
DW$1002	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1002, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$1002, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1002, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1002, DW_AT_accessibility(DW_ACCESS_public)
DW$1003	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1003, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$1003, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1003, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1003, DW_AT_accessibility(DW_ACCESS_public)
DW$1004	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1004, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$1004, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1004, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1004, DW_AT_accessibility(DW_ACCESS_public)
DW$1005	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1005, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$1005, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1005, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1005, DW_AT_accessibility(DW_ACCESS_public)
DW$1006	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1006, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$1006, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1006, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1006, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$21, DW_AT_name("tag_sensoralarmstruct")
	.dwattr DW$T$21, DW_AT_byte_size(0x01)
DW$1007	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1007, DW_AT_name("failure"), DW_AT_symbol_name("_failure")
	.dwattr DW$1007, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1007, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1007, DW_AT_accessibility(DW_ACCESS_public)
DW$1008	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1008, DW_AT_name("failurelatched"), DW_AT_symbol_name("_failurelatched")
	.dwattr DW$1008, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1008, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1008, DW_AT_accessibility(DW_ACCESS_public)
DW$1009	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1009, DW_AT_name("slowdown"), DW_AT_symbol_name("_slowdown")
	.dwattr DW$1009, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1009, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1009, DW_AT_accessibility(DW_ACCESS_public)
DW$1010	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1010, DW_AT_name("slowdownlatched"), DW_AT_symbol_name("_slowdownlatched")
	.dwattr DW$1010, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1010, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1010, DW_AT_accessibility(DW_ACCESS_public)
DW$1011	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1011, DW_AT_name("alarm"), DW_AT_symbol_name("_alarm")
	.dwattr DW$1011, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1011, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1011, DW_AT_accessibility(DW_ACCESS_public)
DW$1012	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1012, DW_AT_name("alarmlatched"), DW_AT_symbol_name("_alarmlatched")
	.dwattr DW$1012, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1012, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1012, DW_AT_accessibility(DW_ACCESS_public)
DW$1013	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1013, DW_AT_name("devalarm"), DW_AT_symbol_name("_devalarm")
	.dwattr DW$1013, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1013, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1013, DW_AT_accessibility(DW_ACCESS_public)
DW$1014	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1014, DW_AT_name("devalarmlatched"), DW_AT_symbol_name("_devalarmlatched")
	.dwattr DW$1014, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1014, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1014, DW_AT_accessibility(DW_ACCESS_public)
DW$1015	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1015, DW_AT_name("devslow"), DW_AT_symbol_name("_devslow")
	.dwattr DW$1015, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1015, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1015, DW_AT_accessibility(DW_ACCESS_public)
DW$1016	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1016, DW_AT_name("devslowlatched"), DW_AT_symbol_name("_devslowlatched")
	.dwattr DW$1016, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1016, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1016, DW_AT_accessibility(DW_ACCESS_public)
DW$1017	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1017, DW_AT_name("calibration"), DW_AT_symbol_name("_calibration")
	.dwattr DW$1017, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1017, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1017, DW_AT_accessibility(DW_ACCESS_public)
DW$1018	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1018, DW_AT_name("calibrationlatched"), DW_AT_symbol_name("_calibrationlatched")
	.dwattr DW$1018, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1018, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1018, DW_AT_accessibility(DW_ACCESS_public)
DW$1019	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1019, DW_AT_name("prewarning"), DW_AT_symbol_name("_prewarning")
	.dwattr DW$1019, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1019, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1019, DW_AT_accessibility(DW_ACCESS_public)
DW$1020	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1020, DW_AT_name("prewarninglatched"), DW_AT_symbol_name("_prewarninglatched")
	.dwattr DW$1020, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1020, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1020, DW_AT_accessibility(DW_ACCESS_public)
DW$1021	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1021, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$1021, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1021, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1021, DW_AT_accessibility(DW_ACCESS_public)
DW$1022	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1022, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$1022, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1022, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1022, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21


DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$33, DW_AT_byte_size(0x01)
DW$1023	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1023, DW_AT_name("alarmack"), DW_AT_symbol_name("_alarmack")
	.dwattr DW$1023, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1023, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1023, DW_AT_accessibility(DW_ACCESS_public)
DW$1024	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1024, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$1024, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1024, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1024, DW_AT_accessibility(DW_ACCESS_public)
DW$1025	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1025, DW_AT_name("unused3"), DW_AT_symbol_name("_unused3")
	.dwattr DW$1025, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1025, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1025, DW_AT_accessibility(DW_ACCESS_public)
DW$1026	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1026, DW_AT_name("unused4"), DW_AT_symbol_name("_unused4")
	.dwattr DW$1026, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1026, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1026, DW_AT_accessibility(DW_ACCESS_public)
DW$1027	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1027, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$1027, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1027, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1027, DW_AT_accessibility(DW_ACCESS_public)
DW$1028	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1028, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$1028, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1028, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1028, DW_AT_accessibility(DW_ACCESS_public)
DW$1029	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1029, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$1029, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1029, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1029, DW_AT_accessibility(DW_ACCESS_public)
DW$1030	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1030, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$1030, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1030, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1030, DW_AT_accessibility(DW_ACCESS_public)
DW$1031	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1031, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$1031, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1031, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1031, DW_AT_accessibility(DW_ACCESS_public)
DW$1032	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1032, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$1032, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1032, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1032, DW_AT_accessibility(DW_ACCESS_public)
DW$1033	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1033, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$1033, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1033, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1033, DW_AT_accessibility(DW_ACCESS_public)
DW$1034	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1034, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$1034, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1034, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1034, DW_AT_accessibility(DW_ACCESS_public)
DW$1035	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1035, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$1035, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1035, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1035, DW_AT_accessibility(DW_ACCESS_public)
DW$1036	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1036, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$1036, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1036, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1036, DW_AT_accessibility(DW_ACCESS_public)
DW$1037	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1037, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$1037, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1037, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1037, DW_AT_accessibility(DW_ACCESS_public)
DW$1038	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1038, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$1038, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1038, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1038, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$34, DW_AT_byte_size(0x01)
DW$1039	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1039, DW_AT_name("alarm"), DW_AT_symbol_name("_alarm")
	.dwattr DW$1039, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1039, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1039, DW_AT_accessibility(DW_ACCESS_public)
DW$1040	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1040, DW_AT_name("alarmlatched"), DW_AT_symbol_name("_alarmlatched")
	.dwattr DW$1040, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1040, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1040, DW_AT_accessibility(DW_ACCESS_public)
DW$1041	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1041, DW_AT_name("unused3"), DW_AT_symbol_name("_unused3")
	.dwattr DW$1041, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1041, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1041, DW_AT_accessibility(DW_ACCESS_public)
DW$1042	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1042, DW_AT_name("unused4"), DW_AT_symbol_name("_unused4")
	.dwattr DW$1042, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1042, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1042, DW_AT_accessibility(DW_ACCESS_public)
DW$1043	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1043, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$1043, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1043, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1043, DW_AT_accessibility(DW_ACCESS_public)
DW$1044	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1044, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$1044, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1044, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1044, DW_AT_accessibility(DW_ACCESS_public)
DW$1045	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1045, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$1045, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1045, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1045, DW_AT_accessibility(DW_ACCESS_public)
DW$1046	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1046, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$1046, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1046, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1046, DW_AT_accessibility(DW_ACCESS_public)
DW$1047	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1047, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$1047, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1047, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1047, DW_AT_accessibility(DW_ACCESS_public)
DW$1048	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1048, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$1048, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1048, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1048, DW_AT_accessibility(DW_ACCESS_public)
DW$1049	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1049, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$1049, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1049, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1049, DW_AT_accessibility(DW_ACCESS_public)
DW$1050	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1050, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$1050, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1050, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1050, DW_AT_accessibility(DW_ACCESS_public)
DW$1051	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1051, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$1051, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1051, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1051, DW_AT_accessibility(DW_ACCESS_public)
DW$1052	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1052, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$1052, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1052, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1052, DW_AT_accessibility(DW_ACCESS_public)
DW$1053	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1053, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$1053, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1053, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1053, DW_AT_accessibility(DW_ACCESS_public)
DW$1054	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1054, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$1054, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1054, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1054, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34


DW$T$56	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$55)
	.dwattr DW$T$56, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$56, DW_AT_byte_size(0x09)
DW$1055	.dwtag  DW_TAG_subrange_type
	.dwattr DW$1055, DW_AT_upper_bound(0x08)
	.dwendtag DW$T$56


	.dwattr DW$329, DW_AT_external(0x01)
	.dwattr DW$329, DW_AT_type(*DW$T$10)
	.dwattr DW$540, DW_AT_external(0x01)
	.dwattr DW$540, DW_AT_type(*DW$T$10)
	.dwattr DW$386, DW_AT_external(0x01)
	.dwattr DW$386, DW_AT_type(*DW$T$16)
	.dwattr DW$389, DW_AT_external(0x01)
	.dwattr DW$389, DW_AT_type(*DW$T$16)
	.dwattr DW$395, DW_AT_external(0x01)
	.dwattr DW$395, DW_AT_type(*DW$T$16)
	.dwattr DW$398, DW_AT_external(0x01)
	.dwattr DW$398, DW_AT_type(*DW$T$16)
	.dwattr DW$411, DW_AT_external(0x01)
	.dwattr DW$90, DW_AT_external(0x01)
	.dwattr DW$417, DW_AT_external(0x01)
	.dwattr DW$97, DW_AT_external(0x01)
	.dwattr DW$405, DW_AT_external(0x01)
	.dwattr DW$407, DW_AT_external(0x01)
	.dwattr DW$270, DW_AT_external(0x01)
	.dwattr DW$524, DW_AT_external(0x01)
	.dwattr DW$488, DW_AT_external(0x01)
	.dwattr DW$526, DW_AT_external(0x01)
	.dwattr DW$307, DW_AT_external(0x01)
	.dwattr DW$383, DW_AT_external(0x01)
	.dwattr DW$255, DW_AT_external(0x01)
	.dwattr DW$220, DW_AT_external(0x01)
	.dwattr DW$392, DW_AT_external(0x01)
	.dwattr DW$392, DW_AT_type(*DW$T$10)
	.dwattr DW$126, DW_AT_external(0x01)
	.dwattr DW$126, DW_AT_type(*DW$T$11)
	.dwattr DW$187, DW_AT_external(0x01)
	.dwattr DW$187, DW_AT_type(*DW$T$10)
	.dwattr DW$189, DW_AT_external(0x01)
	.dwattr DW$189, DW_AT_type(*DW$T$10)
	.dwattr DW$183, DW_AT_external(0x01)
	.dwattr DW$183, DW_AT_type(*DW$T$10)
	.dwattr DW$131, DW_AT_external(0x01)
	.dwattr DW$131, DW_AT_type(*DW$T$11)
	.dwattr DW$179, DW_AT_external(0x01)
	.dwattr DW$179, DW_AT_type(*DW$T$10)
	.dwattr DW$181, DW_AT_external(0x01)
	.dwattr DW$181, DW_AT_type(*DW$T$10)
	.dwattr DW$174, DW_AT_external(0x01)
	.dwattr DW$174, DW_AT_type(*DW$T$10)
	.dwattr DW$124, DW_AT_external(0x01)
	.dwattr DW$124, DW_AT_type(*DW$T$11)
	.dwattr DW$203, DW_AT_external(0x01)
	.dwattr DW$203, DW_AT_type(*DW$T$10)
	.dwattr DW$172, DW_AT_external(0x01)
	.dwattr DW$172, DW_AT_type(*DW$T$10)
	.dwattr DW$122, DW_AT_external(0x01)
	.dwattr DW$122, DW_AT_type(*DW$T$11)
	.dwattr DW$185, DW_AT_external(0x01)
	.dwattr DW$185, DW_AT_type(*DW$T$10)
	.dwattr DW$114, DW_AT_external(0x01)
	.dwattr DW$114, DW_AT_type(*DW$T$11)
	.dwattr DW$198, DW_AT_external(0x01)
	.dwattr DW$198, DW_AT_type(*DW$T$157)
	.dwattr DW$206, DW_AT_external(0x01)
	.dwattr DW$105, DW_AT_external(0x01)
	.dwattr DW$108, DW_AT_external(0x01)
	.dwattr DW$421, DW_AT_external(0x01)
	.dwattr DW$229, DW_AT_external(0x01)
	.dwattr DW$200, DW_AT_external(0x01)
	.dwattr DW$200, DW_AT_type(*DW$T$94)
	.dwattr DW$422, DW_AT_external(0x01)
	.dwattr DW$336, DW_AT_external(0x01)
	.dwattr DW$413, DW_AT_external(0x01)
	.dwattr DW$288, DW_AT_external(0x01)
	.dwattr DW$318, DW_AT_external(0x01)
	.dwattr DW$511, DW_AT_external(0x01)
	.dwattr DW$511, DW_AT_type(*DW$T$10)
	.dwattr DW$223, DW_AT_external(0x01)
	.dwattr DW$550, DW_AT_external(0x01)
	.dwattr DW$555, DW_AT_external(0x01)
	.dwattr DW$549, DW_AT_external(0x01)
	.dwattr DW$543, DW_AT_external(0x01)
	.dwattr DW$544, DW_AT_external(0x01)
	.dwattr DW$578, DW_AT_external(0x01)
	.dwattr DW$495, DW_AT_external(0x01)
	.dwattr DW$420, DW_AT_external(0x01)
	.dwattr DW$221, DW_AT_external(0x01)
	.dwattr DW$493, DW_AT_external(0x01)
	.dwattr DW$502, DW_AT_external(0x01)
	.dwattr DW$506, DW_AT_external(0x01)
	.dwattr DW$581, DW_AT_external(0x01)
	.dwattr DW$498, DW_AT_external(0x01)
	.dwattr DW$196, DW_AT_external(0x01)
	.dwattr DW$196, DW_AT_type(*DW$T$11)
	.dwattr DW$476, DW_AT_external(0x01)
	.dwattr DW$536, DW_AT_external(0x01)
	.dwattr DW$536, DW_AT_type(*DW$T$10)
	.dwattr DW$401, DW_AT_external(0x01)
	.dwattr DW$514, DW_AT_external(0x01)
	.dwattr DW$514, DW_AT_type(*DW$T$10)
	.dwattr DW$484, DW_AT_external(0x01)
	.dwattr DW$480, DW_AT_external(0x01)
	.dwattr DW$332, DW_AT_external(0x01)
	.dwattr DW$332, DW_AT_type(*DW$T$10)
	.dwattr DW$508, DW_AT_external(0x01)
	.dwattr DW$508, DW_AT_type(*DW$T$10)
	.dwattr DW$472, DW_AT_external(0x01)
	.dwattr DW$119, DW_AT_external(0x01)
	.dwattr DW$116, DW_AT_external(0x01)
	.dwattr DW$166, DW_AT_external(0x01)
	.dwattr DW$176, DW_AT_external(0x01)
	.dwattr DW$162, DW_AT_external(0x01)
	.dwattr DW$193, DW_AT_external(0x01)
	.dwattr DW$169, DW_AT_external(0x01)
	.dwattr DW$111, DW_AT_external(0x01)
	.dwattr DW$104, DW_AT_external(0x01)
	.dwattr DW$259, DW_AT_external(0x01)
	.dwattr DW$191, DW_AT_external(0x01)
	.dwattr DW$191, DW_AT_type(*DW$T$152)
	.dwattr DW$494, DW_AT_external(0x01)
	.dwattr DW$419, DW_AT_external(0x01)
	.dwattr DW$222, DW_AT_external(0x01)
	.dwattr DW$492, DW_AT_external(0x01)
	.dwattr DW$500, DW_AT_external(0x01)
	.dwattr DW$504, DW_AT_external(0x01)
	.dwattr DW$580, DW_AT_external(0x01)
	.dwattr DW$496, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$1056	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$1056, DW_AT_location[DW_OP_reg0]
DW$1057	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$1057, DW_AT_location[DW_OP_reg1]
DW$1058	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$1058, DW_AT_location[DW_OP_reg2]
DW$1059	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$1059, DW_AT_location[DW_OP_reg3]
DW$1060	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$1060, DW_AT_location[DW_OP_reg4]
DW$1061	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$1061, DW_AT_location[DW_OP_reg5]
DW$1062	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$1062, DW_AT_location[DW_OP_reg6]
DW$1063	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$1063, DW_AT_location[DW_OP_reg7]
DW$1064	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$1064, DW_AT_location[DW_OP_reg8]
DW$1065	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$1065, DW_AT_location[DW_OP_reg9]
DW$1066	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$1066, DW_AT_location[DW_OP_reg10]
DW$1067	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$1067, DW_AT_location[DW_OP_reg11]
DW$1068	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$1068, DW_AT_location[DW_OP_reg12]
DW$1069	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$1069, DW_AT_location[DW_OP_reg13]
DW$1070	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$1070, DW_AT_location[DW_OP_reg14]
DW$1071	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$1071, DW_AT_location[DW_OP_reg15]
DW$1072	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$1072, DW_AT_location[DW_OP_reg16]
DW$1073	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$1073, DW_AT_location[DW_OP_reg17]
DW$1074	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$1074, DW_AT_location[DW_OP_reg18]
DW$1075	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$1075, DW_AT_location[DW_OP_reg19]
DW$1076	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$1076, DW_AT_location[DW_OP_reg20]
DW$1077	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$1077, DW_AT_location[DW_OP_reg21]
DW$1078	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$1078, DW_AT_location[DW_OP_reg22]
DW$1079	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$1079, DW_AT_location[DW_OP_reg23]
DW$1080	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$1080, DW_AT_location[DW_OP_reg24]
DW$1081	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$1081, DW_AT_location[DW_OP_reg25]
DW$1082	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$1082, DW_AT_location[DW_OP_reg26]
DW$1083	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$1083, DW_AT_location[DW_OP_reg27]
DW$1084	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$1084, DW_AT_location[DW_OP_reg28]
DW$1085	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$1085, DW_AT_location[DW_OP_reg29]
DW$1086	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$1086, DW_AT_location[DW_OP_reg30]
DW$1087	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$1087, DW_AT_location[DW_OP_reg31]
DW$1088	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$1088, DW_AT_location[DW_OP_regx 0x20]
DW$1089	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$1089, DW_AT_location[DW_OP_regx 0x21]
DW$1090	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$1090, DW_AT_location[DW_OP_regx 0x22]
DW$1091	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$1091, DW_AT_location[DW_OP_regx 0x23]
DW$1092	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$1092, DW_AT_location[DW_OP_regx 0x24]
DW$1093	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$1093, DW_AT_location[DW_OP_regx 0x25]
DW$1094	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$1094, DW_AT_location[DW_OP_regx 0x26]
DW$1095	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$1095, DW_AT_location[DW_OP_regx 0x27]
DW$1096	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$1096, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

