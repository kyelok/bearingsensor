;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Thu Aug 18 12:16:23 2016                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("pccli.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)
;**************************************************************
;* CINIT RECORDS                                              *
;**************************************************************
	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_CommandNum+0,32
	.field  	0,16			; _CommandNum @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_CommandLen+0,32
	.field  	0,16			; _CommandLen @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_CommandOffset+0,32
	.field  	0,16			; _CommandOffset @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_cmdbufptr+0,32
	.field  	0,32			; _cmdbufptr @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_eocmdbuf+0,32
	.field  	0,32			; _eocmdbuf @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_rxcharcount+0,32
	.field  	0,16			; _rxcharcount @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_rxchar+0,32
	.field  	0,16			; _rxchar @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_RxCharacterFlag+0,32
	.field  	0,16			; _RxCharacterFlag @ 0

	.sect	".cinit"
	.align	1
	.field  	-IR_1,16
	.field  	_e+0,32
	.field  	FSL1,32		; _e[0] @ 0
	.field  	FSL2,32		; _e[1] @ 32
	.field  	FSL3,32		; _e[2] @ 64
	.field  	FSL4,32		; _e[3] @ 96
	.field  	FSL5,32		; _e[4] @ 128
IR_1:	.set	10

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_prompt+0,32
	.field  	FSL6,32		; _prompt @ 0


DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("sprintf"), DW_AT_symbol_name("_sprintf")
	.dwattr DW$1, DW_AT_type(*DW$T$10)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$84)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$104)
DW$4	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$1


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("sscanf"), DW_AT_symbol_name("_sscanf")
	.dwattr DW$5, DW_AT_type(*DW$T$10)
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$104)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$104)
DW$8	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$5


DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("strlen"), DW_AT_symbol_name("_strlen")
	.dwattr DW$9, DW_AT_type(*DW$T$109)
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$104)
	.dwendtag DW$9


DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("strncmp"), DW_AT_symbol_name("_strncmp")
	.dwattr DW$11, DW_AT_type(*DW$T$10)
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)
DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$104)
DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$104)
DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$109)
	.dwendtag DW$11


DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("strcspn"), DW_AT_symbol_name("_strcspn")
	.dwattr DW$15, DW_AT_type(*DW$T$109)
	.dwattr DW$15, DW_AT_declaration(0x01)
	.dwattr DW$15, DW_AT_external(0x01)
DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$104)
DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$104)
	.dwendtag DW$15


DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("CLITransmitBuffer"), DW_AT_symbol_name("_CLITransmitBuffer")
	.dwattr DW$18, DW_AT_declaration(0x01)
	.dwattr DW$18, DW_AT_external(0x01)
DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$84)
	.dwendtag DW$18


DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadCLIChar"), DW_AT_symbol_name("_ReadCLIChar")
	.dwattr DW$20, DW_AT_type(*DW$T$83)
	.dwattr DW$20, DW_AT_declaration(0x01)
	.dwattr DW$20, DW_AT_external(0x01)

DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("SendCLIChar"), DW_AT_symbol_name("_SendCLIChar")
	.dwattr DW$21, DW_AT_type(*DW$T$83)
	.dwattr DW$21, DW_AT_declaration(0x01)
	.dwattr DW$21, DW_AT_external(0x01)
DW$22	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$83)
	.dwendtag DW$21


DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("FRAMInit"), DW_AT_symbol_name("_FRAMInit")
	.dwattr DW$23, DW_AT_declaration(0x01)
	.dwattr DW$23, DW_AT_external(0x01)

DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("ResetCommsCheck"), DW_AT_symbol_name("_ResetCommsCheck")
	.dwattr DW$24, DW_AT_declaration(0x01)
	.dwattr DW$24, DW_AT_external(0x01)

DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteConfigStructtoNVMEM"), DW_AT_symbol_name("_WriteConfigStructtoNVMEM")
	.dwattr DW$25, DW_AT_declaration(0x01)
	.dwattr DW$25, DW_AT_external(0x01)

DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("SaveSafeStruct1"), DW_AT_symbol_name("_SaveSafeStruct1")
	.dwattr DW$26, DW_AT_declaration(0x01)
	.dwattr DW$26, DW_AT_external(0x01)

DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("SaveSafeStruct2"), DW_AT_symbol_name("_SaveSafeStruct2")
	.dwattr DW$27, DW_AT_declaration(0x01)
	.dwattr DW$27, DW_AT_external(0x01)

DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("SaveXtswplusAnaCal"), DW_AT_symbol_name("_SaveXtswplusAnaCal")
	.dwattr DW$28, DW_AT_declaration(0x01)
	.dwattr DW$28, DW_AT_external(0x01)

DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadAllFromEEPROM"), DW_AT_symbol_name("_ReadAllFromEEPROM")
	.dwattr DW$29, DW_AT_declaration(0x01)
	.dwattr DW$29, DW_AT_external(0x01)

DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteClockData"), DW_AT_symbol_name("_WriteClockData")
	.dwattr DW$30, DW_AT_declaration(0x01)
	.dwattr DW$30, DW_AT_external(0x01)

DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadClockData"), DW_AT_symbol_name("_ReadClockData")
	.dwattr DW$31, DW_AT_declaration(0x01)
	.dwattr DW$31, DW_AT_external(0x01)

DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadNVMemory"), DW_AT_symbol_name("_ReadNVMemory")
	.dwattr DW$32, DW_AT_declaration(0x01)
	.dwattr DW$32, DW_AT_external(0x01)
DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$87)
DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$32


DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("Calibrate18mA"), DW_AT_symbol_name("_Calibrate18mA")
	.dwattr DW$37, DW_AT_declaration(0x01)
	.dwattr DW$37, DW_AT_external(0x01)
DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$37


DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearMANTable"), DW_AT_symbol_name("_ClearMANTable")
	.dwattr DW$39, DW_AT_declaration(0x01)
	.dwattr DW$39, DW_AT_external(0x01)
DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$39


DW$41	.dwtag  DW_TAG_subprogram, DW_AT_name("EnableNoiseFilter"), DW_AT_symbol_name("_EnableNoiseFilter")
	.dwattr DW$41, DW_AT_declaration(0x01)
	.dwattr DW$41, DW_AT_external(0x01)
DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$41


DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("GetCheckedRPM"), DW_AT_symbol_name("_GetCheckedRPM")
	.dwattr DW$43, DW_AT_type(*DW$T$11)
	.dwattr DW$43, DW_AT_declaration(0x01)
	.dwattr DW$43, DW_AT_external(0x01)
DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$43


DW$45	.dwtag  DW_TAG_subprogram, DW_AT_name("GetModalRPM"), DW_AT_symbol_name("_GetModalRPM")
	.dwattr DW$45, DW_AT_type(*DW$T$11)
	.dwattr DW$45, DW_AT_declaration(0x01)
	.dwattr DW$45, DW_AT_external(0x01)
DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$45


DW$47	.dwtag  DW_TAG_subprogram, DW_AT_name("SetScaledValue"), DW_AT_symbol_name("_SetScaledValue")
	.dwattr DW$47, DW_AT_declaration(0x01)
	.dwattr DW$47, DW_AT_external(0x01)
DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$47


DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("GetScaledValue"), DW_AT_symbol_name("_GetScaledValue")
	.dwattr DW$50, DW_AT_type(*DW$T$10)
	.dwattr DW$50, DW_AT_declaration(0x01)
	.dwattr DW$50, DW_AT_external(0x01)
DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$50


DW$52	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteOffsetAtoNVMEM"), DW_AT_symbol_name("_WriteOffsetAtoNVMEM")
	.dwattr DW$52, DW_AT_declaration(0x01)
	.dwattr DW$52, DW_AT_external(0x01)
DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$52


DW$54	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteOffsetBtoNVMEM"), DW_AT_symbol_name("_WriteOffsetBtoNVMEM")
	.dwattr DW$54, DW_AT_declaration(0x01)
	.dwattr DW$54, DW_AT_external(0x01)
DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$54


DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("SaveSDSettings"), DW_AT_symbol_name("_SaveSDSettings")
	.dwattr DW$56, DW_AT_declaration(0x01)
	.dwattr DW$56, DW_AT_external(0x01)

DW$57	.dwtag  DW_TAG_subprogram, DW_AT_name("SetAllEventMsgs"), DW_AT_symbol_name("_SetAllEventMsgs")
	.dwattr DW$57, DW_AT_declaration(0x01)
	.dwattr DW$57, DW_AT_external(0x01)

DW$58	.dwtag  DW_TAG_subprogram, DW_AT_name("GeneralSettingstoSDCardFile"), DW_AT_symbol_name("_GeneralSettingstoSDCardFile")
	.dwattr DW$58, DW_AT_type(*DW$T$10)
	.dwattr DW$58, DW_AT_declaration(0x01)
	.dwattr DW$58, DW_AT_external(0x01)

DW$59	.dwtag  DW_TAG_subprogram, DW_AT_name("CheckRoughCalPoints"), DW_AT_symbol_name("_CheckRoughCalPoints")
	.dwattr DW$59, DW_AT_declaration(0x01)
	.dwattr DW$59, DW_AT_external(0x01)
DW$60	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$59


DW$61	.dwtag  DW_TAG_subprogram, DW_AT_name("ProgramCheckFunc"), DW_AT_symbol_name("_ProgramCheckFunc")
	.dwattr DW$61, DW_AT_type(*DW$T$10)
	.dwattr DW$61, DW_AT_declaration(0x01)
	.dwattr DW$61, DW_AT_external(0x01)

DW$62	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteAllSensorStructtoNVMEM"), DW_AT_symbol_name("_WriteAllSensorStructtoNVMEM")
	.dwattr DW$62, DW_AT_type(*DW$T$10)
	.dwattr DW$62, DW_AT_declaration(0x01)
	.dwattr DW$62, DW_AT_external(0x01)

DW$63	.dwtag  DW_TAG_subprogram, DW_AT_name("CalibrateLoop18mA"), DW_AT_symbol_name("_CalibrateLoop18mA")
	.dwattr DW$63, DW_AT_type(*DW$T$10)
	.dwattr DW$63, DW_AT_declaration(0x01)
	.dwattr DW$63, DW_AT_external(0x01)

DW$64	.dwtag  DW_TAG_subprogram, DW_AT_name("EraseSPIFlash"), DW_AT_symbol_name("_EraseSPIFlash")
	.dwattr DW$64, DW_AT_type(*DW$T$10)
	.dwattr DW$64, DW_AT_declaration(0x01)
	.dwattr DW$64, DW_AT_external(0x01)

DW$65	.dwtag  DW_TAG_subprogram, DW_AT_name("CheckSPIBusy"), DW_AT_symbol_name("_CheckSPIBusy")
	.dwattr DW$65, DW_AT_type(*DW$T$10)
	.dwattr DW$65, DW_AT_declaration(0x01)
	.dwattr DW$65, DW_AT_external(0x01)

DW$66	.dwtag  DW_TAG_subprogram, DW_AT_name("CheckEraseProgError"), DW_AT_symbol_name("_CheckEraseProgError")
	.dwattr DW$66, DW_AT_type(*DW$T$10)
	.dwattr DW$66, DW_AT_declaration(0x01)
	.dwattr DW$66, DW_AT_external(0x01)
DW$67	.dwtag  DW_TAG_variable, DW_AT_name("settings"), DW_AT_symbol_name("_settings")
	.dwattr DW$67, DW_AT_type(*DW$T$189)
	.dwattr DW$67, DW_AT_declaration(0x01)
	.dwattr DW$67, DW_AT_external(0x01)
DW$68	.dwtag  DW_TAG_variable, DW_AT_name("safe1"), DW_AT_symbol_name("_safe1")
	.dwattr DW$68, DW_AT_type(*DW$T$190)
	.dwattr DW$68, DW_AT_declaration(0x01)
	.dwattr DW$68, DW_AT_external(0x01)
DW$69	.dwtag  DW_TAG_variable, DW_AT_name("safe2"), DW_AT_symbol_name("_safe2")
	.dwattr DW$69, DW_AT_type(*DW$T$192)
	.dwattr DW$69, DW_AT_declaration(0x01)
	.dwattr DW$69, DW_AT_external(0x01)
DW$70	.dwtag  DW_TAG_variable, DW_AT_name("xtswplusanacal"), DW_AT_symbol_name("_xtswplusanacal")
	.dwattr DW$70, DW_AT_type(*DW$T$194)
	.dwattr DW$70, DW_AT_declaration(0x01)
	.dwattr DW$70, DW_AT_external(0x01)
DW$71	.dwtag  DW_TAG_variable, DW_AT_name("clocktime"), DW_AT_symbol_name("_clocktime")
	.dwattr DW$71, DW_AT_type(*DW$T$196)
	.dwattr DW$71, DW_AT_declaration(0x01)
	.dwattr DW$71, DW_AT_external(0x01)
DW$72	.dwtag  DW_TAG_variable, DW_AT_name("timers"), DW_AT_symbol_name("_timers")
	.dwattr DW$72, DW_AT_type(*DW$T$198)
	.dwattr DW$72, DW_AT_declaration(0x01)
	.dwattr DW$72, DW_AT_external(0x01)
DW$73	.dwtag  DW_TAG_variable, DW_AT_name("allsensors"), DW_AT_symbol_name("_allsensors")
	.dwattr DW$73, DW_AT_type(*DW$T$200)
	.dwattr DW$73, DW_AT_declaration(0x01)
	.dwattr DW$73, DW_AT_external(0x01)
DW$74	.dwtag  DW_TAG_variable, DW_AT_name("config"), DW_AT_symbol_name("_config")
	.dwattr DW$74, DW_AT_type(*DW$T$201)
	.dwattr DW$74, DW_AT_declaration(0x01)
	.dwattr DW$74, DW_AT_external(0x01)
DW$75	.dwtag  DW_TAG_variable, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$75, DW_AT_type(*DW$T$203)
	.dwattr DW$75, DW_AT_declaration(0x01)
	.dwattr DW$75, DW_AT_external(0x01)
DW$76	.dwtag  DW_TAG_variable, DW_AT_name("version"), DW_AT_symbol_name("_version")
	.dwattr DW$76, DW_AT_type(*DW$T$226)
	.dwattr DW$76, DW_AT_declaration(0x01)
	.dwattr DW$76, DW_AT_external(0x01)
DW$77	.dwtag  DW_TAG_variable, DW_AT_name("offsetA"), DW_AT_symbol_name("_offsetA")
	.dwattr DW$77, DW_AT_type(*DW$T$206)
	.dwattr DW$77, DW_AT_declaration(0x01)
	.dwattr DW$77, DW_AT_external(0x01)
DW$78	.dwtag  DW_TAG_variable, DW_AT_name("offsetB"), DW_AT_symbol_name("_offsetB")
	.dwattr DW$78, DW_AT_type(*DW$T$206)
	.dwattr DW$78, DW_AT_declaration(0x01)
	.dwattr DW$78, DW_AT_external(0x01)
DW$79	.dwtag  DW_TAG_variable, DW_AT_name("function"), DW_AT_symbol_name("_function")
	.dwattr DW$79, DW_AT_type(*DW$T$208)
	.dwattr DW$79, DW_AT_declaration(0x01)
	.dwattr DW$79, DW_AT_external(0x01)
DW$80	.dwtag  DW_TAG_variable, DW_AT_name("sdsettings"), DW_AT_symbol_name("_sdsettings")
	.dwattr DW$80, DW_AT_type(*DW$T$209)
	.dwattr DW$80, DW_AT_declaration(0x01)
	.dwattr DW$80, DW_AT_external(0x01)
DW$81	.dwtag  DW_TAG_variable, DW_AT_name("speedcompcoeffs"), DW_AT_symbol_name("_speedcompcoeffs")
	.dwattr DW$81, DW_AT_type(*DW$T$210)
	.dwattr DW$81, DW_AT_declaration(0x01)
	.dwattr DW$81, DW_AT_external(0x01)
DW$82	.dwtag  DW_TAG_variable, DW_AT_name("reprogram"), DW_AT_symbol_name("_reprogram")
	.dwattr DW$82, DW_AT_type(*DW$T$211)
	.dwattr DW$82, DW_AT_declaration(0x01)
	.dwattr DW$82, DW_AT_external(0x01)
	.global	_CommandNum
_CommandNum:	.usect	".ebss",1,1,0
DW$83	.dwtag  DW_TAG_variable, DW_AT_name("CommandNum"), DW_AT_symbol_name("_CommandNum")
	.dwattr DW$83, DW_AT_location[DW_OP_addr _CommandNum]
	.dwattr DW$83, DW_AT_type(*DW$T$9)
	.dwattr DW$83, DW_AT_external(0x01)
	.global	_CommandLen
_CommandLen:	.usect	".ebss",1,1,0
DW$84	.dwtag  DW_TAG_variable, DW_AT_name("CommandLen"), DW_AT_symbol_name("_CommandLen")
	.dwattr DW$84, DW_AT_location[DW_OP_addr _CommandLen]
	.dwattr DW$84, DW_AT_type(*DW$T$9)
	.dwattr DW$84, DW_AT_external(0x01)
	.global	_CommandOffset
_CommandOffset:	.usect	".ebss",1,1,0
DW$85	.dwtag  DW_TAG_variable, DW_AT_name("CommandOffset"), DW_AT_symbol_name("_CommandOffset")
	.dwattr DW$85, DW_AT_location[DW_OP_addr _CommandOffset]
	.dwattr DW$85, DW_AT_type(*DW$T$9)
	.dwattr DW$85, DW_AT_external(0x01)
	.global	_cmdbufptr
_cmdbufptr:	.usect	".ebss",2,1,1
DW$86	.dwtag  DW_TAG_variable, DW_AT_name("cmdbufptr"), DW_AT_symbol_name("_cmdbufptr")
	.dwattr DW$86, DW_AT_location[DW_OP_addr _cmdbufptr]
	.dwattr DW$86, DW_AT_type(*DW$T$84)
	.dwattr DW$86, DW_AT_external(0x01)
	.global	_eocmdbuf
_eocmdbuf:	.usect	".ebss",2,1,1
DW$87	.dwtag  DW_TAG_variable, DW_AT_name("eocmdbuf"), DW_AT_symbol_name("_eocmdbuf")
	.dwattr DW$87, DW_AT_location[DW_OP_addr _eocmdbuf]
	.dwattr DW$87, DW_AT_type(*DW$T$84)
	.dwattr DW$87, DW_AT_external(0x01)
	.global	_rxcharcount
_rxcharcount:	.usect	".ebss",1,1,0
DW$88	.dwtag  DW_TAG_variable, DW_AT_name("rxcharcount"), DW_AT_symbol_name("_rxcharcount")
	.dwattr DW$88, DW_AT_location[DW_OP_addr _rxcharcount]
	.dwattr DW$88, DW_AT_type(*DW$T$11)
	.dwattr DW$88, DW_AT_external(0x01)
	.global	_rxchar
_rxchar:	.usect	".ebss",1,1,0
DW$89	.dwtag  DW_TAG_variable, DW_AT_name("rxchar"), DW_AT_symbol_name("_rxchar")
	.dwattr DW$89, DW_AT_location[DW_OP_addr _rxchar]
	.dwattr DW$89, DW_AT_type(*DW$T$6)
	.dwattr DW$89, DW_AT_external(0x01)
	.global	_RxCharacterFlag
_RxCharacterFlag:	.usect	".ebss",1,1,0
DW$90	.dwtag  DW_TAG_variable, DW_AT_name("RxCharacterFlag"), DW_AT_symbol_name("_RxCharacterFlag")
	.dwattr DW$90, DW_AT_location[DW_OP_addr _RxCharacterFlag]
	.dwattr DW$90, DW_AT_type(*DW$T$6)
	.dwattr DW$90, DW_AT_external(0x01)
	.global	_confirmation
_confirmation:	.usect	".ebss",1,1,0
DW$91	.dwtag  DW_TAG_variable, DW_AT_name("confirmation"), DW_AT_symbol_name("_confirmation")
	.dwattr DW$91, DW_AT_location[DW_OP_addr _confirmation]
	.dwattr DW$91, DW_AT_type(*DW$T$11)
	.dwattr DW$91, DW_AT_external(0x01)
	.global	_cmdbuf
_cmdbuf:	.usect	".commssection1",32,0,0
DW$92	.dwtag  DW_TAG_variable, DW_AT_name("cmdbuf"), DW_AT_symbol_name("_cmdbuf")
	.dwattr DW$92, DW_AT_location[DW_OP_addr _cmdbuf]
	.dwattr DW$92, DW_AT_type(*DW$T$231)
	.dwattr DW$92, DW_AT_external(0x01)
	.global	_stringbuffer
_stringbuffer:	.usect	".commssection1",100,0,0
DW$93	.dwtag  DW_TAG_variable, DW_AT_name("stringbuffer"), DW_AT_symbol_name("_stringbuffer")
	.dwattr DW$93, DW_AT_location[DW_OP_addr _stringbuffer]
	.dwattr DW$93, DW_AT_type(*DW$T$232)
	.dwattr DW$93, DW_AT_external(0x01)
	.global	_Commands
	.sect	".econst"
	.align	2
_Commands:
	.field  	70,16			; _Commands[0]._Prompt[0] @ 0
	.field  	82,16			; _Commands[0]._Prompt[1] @ 16
	.field  	69,16			; _Commands[0]._Prompt[2] @ 32
	.field  	65,16			; _Commands[0]._Prompt[3] @ 48
	.field  	68,16			; _Commands[0]._Prompt[4] @ 64
	.field  	0,16			; _Commands[0]._Prompt[5] @ 80
	.space	64
	.field  	0,16			; _Commands[0]._HelpStr[0] @ 160
	.space	1264
	.field  	_FramReTestFunc,32		; _Commands[0]._CLIFunc @ 1440
	.field  	65,16			; _Commands[1]._Prompt[0] @ 1472
	.field  	84,16			; _Commands[1]._Prompt[1] @ 1488
	.field  	50,16			; _Commands[1]._Prompt[2] @ 1504
	.field  	53,16			; _Commands[1]._Prompt[3] @ 1520
	.field  	68,16			; _Commands[1]._Prompt[4] @ 1536
	.field  	0,16			; _Commands[1]._Prompt[5] @ 1552
	.space	64
	.field  	0,16			; _Commands[1]._HelpStr[0] @ 1632
	.space	1264
	.field  	_AT25DF041CheckFunc,32		; _Commands[1]._CLIFunc @ 2912
	.field  	70,16			; _Commands[2]._Prompt[0] @ 2944
	.field  	65,16			; _Commands[2]._Prompt[1] @ 2960
	.field  	67,16			; _Commands[2]._Prompt[2] @ 2976
	.field  	84,16			; _Commands[2]._Prompt[3] @ 2992
	.field  	82,16			; _Commands[2]._Prompt[4] @ 3008
	.field  	89,16			; _Commands[2]._Prompt[5] @ 3024
	.field  	73,16			; _Commands[2]._Prompt[6] @ 3040
	.field  	78,16			; _Commands[2]._Prompt[7] @ 3056
	.field  	73,16			; _Commands[2]._Prompt[8] @ 3072
	.field  	84,16			; _Commands[2]._Prompt[9] @ 3088
	.field  	0,16			; _Commands[2]._HelpStr[0] @ 3104
	.space	1264
	.field  	_FactorySetFunc,32		; _Commands[2]._CLIFunc @ 4384
	.field  	89,16			; _Commands[3]._Prompt[0] @ 4416
	.field  	69,16			; _Commands[3]._Prompt[1] @ 4432
	.field  	83,16			; _Commands[3]._Prompt[2] @ 4448
	.field  	0,16			; _Commands[3]._Prompt[3] @ 4464
	.space	96
	.field  	0,16			; _Commands[3]._HelpStr[0] @ 4576
	.space	1264
	.field  	_InitSafeFunc,32		; _Commands[3]._CLIFunc @ 5856
	.field  	72,16			; _Commands[4]._Prompt[0] @ 5888
	.field  	69,16			; _Commands[4]._Prompt[1] @ 5904
	.field  	76,16			; _Commands[4]._Prompt[2] @ 5920
	.field  	80,16			; _Commands[4]._Prompt[3] @ 5936
	.field  	0,16			; _Commands[4]._Prompt[4] @ 5952
	.space	80
	.field  	45,16			; _Commands[4]._HelpStr[0] @ 6048
	.field  	45,16			; _Commands[4]._HelpStr[1] @ 6064
	.field  	45,16			; _Commands[4]._HelpStr[2] @ 6080
	.field  	45,16			; _Commands[4]._HelpStr[3] @ 6096
	.field  	45,16			; _Commands[4]._HelpStr[4] @ 6112
	.field  	45,16			; _Commands[4]._HelpStr[5] @ 6128
	.field  	45,16			; _Commands[4]._HelpStr[6] @ 6144
	.field  	45,16			; _Commands[4]._HelpStr[7] @ 6160
	.field  	45,16			; _Commands[4]._HelpStr[8] @ 6176
	.field  	45,16			; _Commands[4]._HelpStr[9] @ 6192
	.field  	45,16			; _Commands[4]._HelpStr[10] @ 6208
	.field  	45,16			; _Commands[4]._HelpStr[11] @ 6224
	.field  	45,16			; _Commands[4]._HelpStr[12] @ 6240
	.field  	45,16			; _Commands[4]._HelpStr[13] @ 6256
	.field  	45,16			; _Commands[4]._HelpStr[14] @ 6272
	.field  	45,16			; _Commands[4]._HelpStr[15] @ 6288
	.field  	45,16			; _Commands[4]._HelpStr[16] @ 6304
	.field  	45,16			; _Commands[4]._HelpStr[17] @ 6320
	.field  	45,16			; _Commands[4]._HelpStr[18] @ 6336
	.field  	45,16			; _Commands[4]._HelpStr[19] @ 6352
	.field  	45,16			; _Commands[4]._HelpStr[20] @ 6368
	.field  	45,16			; _Commands[4]._HelpStr[21] @ 6384
	.field  	45,16			; _Commands[4]._HelpStr[22] @ 6400
	.field  	45,16			; _Commands[4]._HelpStr[23] @ 6416
	.field  	72,16			; _Commands[4]._HelpStr[24] @ 6432
	.field  	69,16			; _Commands[4]._HelpStr[25] @ 6448
	.field  	76,16			; _Commands[4]._HelpStr[26] @ 6464
	.field  	80,16			; _Commands[4]._HelpStr[27] @ 6480
	.field  	32,16			; _Commands[4]._HelpStr[28] @ 6496
	.field  	77,16			; _Commands[4]._HelpStr[29] @ 6512
	.field  	69,16			; _Commands[4]._HelpStr[30] @ 6528
	.field  	78,16			; _Commands[4]._HelpStr[31] @ 6544
	.field  	85,16			; _Commands[4]._HelpStr[32] @ 6560
	.field  	45,16			; _Commands[4]._HelpStr[33] @ 6576
	.field  	45,16			; _Commands[4]._HelpStr[34] @ 6592
	.field  	45,16			; _Commands[4]._HelpStr[35] @ 6608
	.field  	45,16			; _Commands[4]._HelpStr[36] @ 6624
	.field  	45,16			; _Commands[4]._HelpStr[37] @ 6640
	.field  	45,16			; _Commands[4]._HelpStr[38] @ 6656
	.field  	45,16			; _Commands[4]._HelpStr[39] @ 6672
	.field  	45,16			; _Commands[4]._HelpStr[40] @ 6688
	.field  	45,16			; _Commands[4]._HelpStr[41] @ 6704
	.field  	45,16			; _Commands[4]._HelpStr[42] @ 6720
	.field  	45,16			; _Commands[4]._HelpStr[43] @ 6736
	.field  	45,16			; _Commands[4]._HelpStr[44] @ 6752
	.field  	45,16			; _Commands[4]._HelpStr[45] @ 6768
	.field  	45,16			; _Commands[4]._HelpStr[46] @ 6784
	.field  	45,16			; _Commands[4]._HelpStr[47] @ 6800
	.field  	45,16			; _Commands[4]._HelpStr[48] @ 6816
	.field  	45,16			; _Commands[4]._HelpStr[49] @ 6832
	.field  	45,16			; _Commands[4]._HelpStr[50] @ 6848
	.field  	45,16			; _Commands[4]._HelpStr[51] @ 6864
	.field  	45,16			; _Commands[4]._HelpStr[52] @ 6880
	.field  	45,16			; _Commands[4]._HelpStr[53] @ 6896
	.field  	45,16			; _Commands[4]._HelpStr[54] @ 6912
	.field  	45,16			; _Commands[4]._HelpStr[55] @ 6928
	.field  	45,16			; _Commands[4]._HelpStr[56] @ 6944
	.field  	45,16			; _Commands[4]._HelpStr[57] @ 6960
	.field  	0,16			; _Commands[4]._HelpStr[58] @ 6976
	.space	336
	.field  	_HelpFunc,32		; _Commands[4]._CLIFunc @ 7328
	.field  	77,16			; _Commands[5]._Prompt[0] @ 7360
	.field  	65,16			; _Commands[5]._Prompt[1] @ 7376
	.field  	83,16			; _Commands[5]._Prompt[2] @ 7392
	.field  	84,16			; _Commands[5]._Prompt[3] @ 7408
	.field  	69,16			; _Commands[5]._Prompt[4] @ 7424
	.field  	82,16			; _Commands[5]._Prompt[5] @ 7440
	.field  	0,16			; _Commands[5]._Prompt[6] @ 7456
	.space	48
	.field  	77,16			; _Commands[5]._HelpStr[0] @ 7520
	.field  	65,16			; _Commands[5]._HelpStr[1] @ 7536
	.field  	83,16			; _Commands[5]._HelpStr[2] @ 7552
	.field  	84,16			; _Commands[5]._HelpStr[3] @ 7568
	.field  	69,16			; _Commands[5]._HelpStr[4] @ 7584
	.field  	82,16			; _Commands[5]._HelpStr[5] @ 7600
	.field  	32,16			; _Commands[5]._HelpStr[6] @ 7616
	.field  	32,16			; _Commands[5]._HelpStr[7] @ 7632
	.field  	32,16			; _Commands[5]._HelpStr[8] @ 7648
	.field  	32,16			; _Commands[5]._HelpStr[9] @ 7664
	.field  	32,16			; _Commands[5]._HelpStr[10] @ 7680
	.field  	32,16			; _Commands[5]._HelpStr[11] @ 7696
	.field  	32,16			; _Commands[5]._HelpStr[12] @ 7712
	.field  	32,16			; _Commands[5]._HelpStr[13] @ 7728
	.field  	32,16			; _Commands[5]._HelpStr[14] @ 7744
	.field  	32,16			; _Commands[5]._HelpStr[15] @ 7760
	.field  	32,16			; _Commands[5]._HelpStr[16] @ 7776
	.field  	32,16			; _Commands[5]._HelpStr[17] @ 7792
	.field  	32,16			; _Commands[5]._HelpStr[18] @ 7808
	.field  	32,16			; _Commands[5]._HelpStr[19] @ 7824
	.field  	32,16			; _Commands[5]._HelpStr[20] @ 7840
	.field  	32,16			; _Commands[5]._HelpStr[21] @ 7856
	.field  	32,16			; _Commands[5]._HelpStr[22] @ 7872
	.field  	32,16			; _Commands[5]._HelpStr[23] @ 7888
	.field  	83,16			; _Commands[5]._HelpStr[24] @ 7904
	.field  	84,16			; _Commands[5]._HelpStr[25] @ 7920
	.field  	65,16			; _Commands[5]._HelpStr[26] @ 7936
	.field  	84,16			; _Commands[5]._HelpStr[27] @ 7952
	.field  	85,16			; _Commands[5]._HelpStr[28] @ 7968
	.field  	83,16			; _Commands[5]._HelpStr[29] @ 7984
	.field  	32,16			; _Commands[5]._HelpStr[30] @ 8000
	.field  	79,16			; _Commands[5]._HelpStr[31] @ 8016
	.field  	70,16			; _Commands[5]._HelpStr[32] @ 8032
	.field  	32,16			; _Commands[5]._HelpStr[33] @ 8048
	.field  	85,16			; _Commands[5]._HelpStr[34] @ 8064
	.field  	78,16			; _Commands[5]._HelpStr[35] @ 8080
	.field  	73,16			; _Commands[5]._HelpStr[36] @ 8096
	.field  	84,16			; _Commands[5]._HelpStr[37] @ 8112
	.field  	32,16			; _Commands[5]._HelpStr[38] @ 8128
	.field  	65,16			; _Commands[5]._HelpStr[39] @ 8144
	.field  	83,16			; _Commands[5]._HelpStr[40] @ 8160
	.field  	32,16			; _Commands[5]._HelpStr[41] @ 8176
	.field  	77,16			; _Commands[5]._HelpStr[42] @ 8192
	.field  	65,16			; _Commands[5]._HelpStr[43] @ 8208
	.field  	83,16			; _Commands[5]._HelpStr[44] @ 8224
	.field  	84,16			; _Commands[5]._HelpStr[45] @ 8240
	.field  	69,16			; _Commands[5]._HelpStr[46] @ 8256
	.field  	82,16			; _Commands[5]._HelpStr[47] @ 8272
	.field  	32,16			; _Commands[5]._HelpStr[48] @ 8288
	.field  	79,16			; _Commands[5]._HelpStr[49] @ 8304
	.field  	82,16			; _Commands[5]._HelpStr[50] @ 8320
	.field  	32,16			; _Commands[5]._HelpStr[51] @ 8336
	.field  	83,16			; _Commands[5]._HelpStr[52] @ 8352
	.field  	76,16			; _Commands[5]._HelpStr[53] @ 8368
	.field  	65,16			; _Commands[5]._HelpStr[54] @ 8384
	.field  	86,16			; _Commands[5]._HelpStr[55] @ 8400
	.field  	69,16			; _Commands[5]._HelpStr[56] @ 8416
	.field  	0,16			; _Commands[5]._HelpStr[57] @ 8432
	.space	352
	.field  	_MasterSlaveFunc,32		; _Commands[5]._CLIFunc @ 8800
	.field  	84,16			; _Commands[6]._Prompt[0] @ 8832
	.field  	73,16			; _Commands[6]._Prompt[1] @ 8848
	.field  	77,16			; _Commands[6]._Prompt[2] @ 8864
	.field  	69,16			; _Commands[6]._Prompt[3] @ 8880
	.field  	0,16			; _Commands[6]._Prompt[4] @ 8896
	.space	80
	.field  	84,16			; _Commands[6]._HelpStr[0] @ 8992
	.field  	73,16			; _Commands[6]._HelpStr[1] @ 9008
	.field  	77,16			; _Commands[6]._HelpStr[2] @ 9024
	.field  	69,16			; _Commands[6]._HelpStr[3] @ 9040
	.field  	61,16			; _Commands[6]._HelpStr[4] @ 9056
	.field  	104,16			; _Commands[6]._HelpStr[5] @ 9072
	.field  	104,16			; _Commands[6]._HelpStr[6] @ 9088
	.field  	59,16			; _Commands[6]._HelpStr[7] @ 9104
	.field  	109,16			; _Commands[6]._HelpStr[8] @ 9120
	.field  	109,16			; _Commands[6]._HelpStr[9] @ 9136
	.field  	59,16			; _Commands[6]._HelpStr[10] @ 9152
	.field  	115,16			; _Commands[6]._HelpStr[11] @ 9168
	.field  	115,16			; _Commands[6]._HelpStr[12] @ 9184
	.field  	32,16			; _Commands[6]._HelpStr[13] @ 9200
	.field  	32,16			; _Commands[6]._HelpStr[14] @ 9216
	.field  	32,16			; _Commands[6]._HelpStr[15] @ 9232
	.field  	32,16			; _Commands[6]._HelpStr[16] @ 9248
	.field  	32,16			; _Commands[6]._HelpStr[17] @ 9264
	.field  	32,16			; _Commands[6]._HelpStr[18] @ 9280
	.field  	32,16			; _Commands[6]._HelpStr[19] @ 9296
	.field  	32,16			; _Commands[6]._HelpStr[20] @ 9312
	.field  	32,16			; _Commands[6]._HelpStr[21] @ 9328
	.field  	32,16			; _Commands[6]._HelpStr[22] @ 9344
	.field  	32,16			; _Commands[6]._HelpStr[23] @ 9360
	.field  	83,16			; _Commands[6]._HelpStr[24] @ 9376
	.field  	69,16			; _Commands[6]._HelpStr[25] @ 9392
	.field  	84,16			; _Commands[6]._HelpStr[26] @ 9408
	.field  	32,16			; _Commands[6]._HelpStr[27] @ 9424
	.field  	84,16			; _Commands[6]._HelpStr[28] @ 9440
	.field  	72,16			; _Commands[6]._HelpStr[29] @ 9456
	.field  	69,16			; _Commands[6]._HelpStr[30] @ 9472
	.field  	32,16			; _Commands[6]._HelpStr[31] @ 9488
	.field  	84,16			; _Commands[6]._HelpStr[32] @ 9504
	.field  	73,16			; _Commands[6]._HelpStr[33] @ 9520
	.field  	77,16			; _Commands[6]._HelpStr[34] @ 9536
	.field  	69,16			; _Commands[6]._HelpStr[35] @ 9552
	.field  	0,16			; _Commands[6]._HelpStr[36] @ 9568
	.space	688
	.field  	_TimeSetFunc,32		; _Commands[6]._CLIFunc @ 10272
	.field  	68,16			; _Commands[7]._Prompt[0] @ 10304
	.field  	65,16			; _Commands[7]._Prompt[1] @ 10320
	.field  	84,16			; _Commands[7]._Prompt[2] @ 10336
	.field  	69,16			; _Commands[7]._Prompt[3] @ 10352
	.field  	0,16			; _Commands[7]._Prompt[4] @ 10368
	.space	80
	.field  	68,16			; _Commands[7]._HelpStr[0] @ 10464
	.field  	65,16			; _Commands[7]._HelpStr[1] @ 10480
	.field  	84,16			; _Commands[7]._HelpStr[2] @ 10496
	.field  	69,16			; _Commands[7]._HelpStr[3] @ 10512
	.field  	61,16			; _Commands[7]._HelpStr[4] @ 10528
	.field  	100,16			; _Commands[7]._HelpStr[5] @ 10544
	.field  	100,16			; _Commands[7]._HelpStr[6] @ 10560
	.field  	59,16			; _Commands[7]._HelpStr[7] @ 10576
	.field  	109,16			; _Commands[7]._HelpStr[8] @ 10592
	.field  	109,16			; _Commands[7]._HelpStr[9] @ 10608
	.field  	59,16			; _Commands[7]._HelpStr[10] @ 10624
	.field  	121,16			; _Commands[7]._HelpStr[11] @ 10640
	.field  	121,16			; _Commands[7]._HelpStr[12] @ 10656
	.field  	32,16			; _Commands[7]._HelpStr[13] @ 10672
	.field  	32,16			; _Commands[7]._HelpStr[14] @ 10688
	.field  	32,16			; _Commands[7]._HelpStr[15] @ 10704
	.field  	32,16			; _Commands[7]._HelpStr[16] @ 10720
	.field  	32,16			; _Commands[7]._HelpStr[17] @ 10736
	.field  	32,16			; _Commands[7]._HelpStr[18] @ 10752
	.field  	32,16			; _Commands[7]._HelpStr[19] @ 10768
	.field  	32,16			; _Commands[7]._HelpStr[20] @ 10784
	.field  	32,16			; _Commands[7]._HelpStr[21] @ 10800
	.field  	32,16			; _Commands[7]._HelpStr[22] @ 10816
	.field  	32,16			; _Commands[7]._HelpStr[23] @ 10832
	.field  	83,16			; _Commands[7]._HelpStr[24] @ 10848
	.field  	69,16			; _Commands[7]._HelpStr[25] @ 10864
	.field  	84,16			; _Commands[7]._HelpStr[26] @ 10880
	.field  	32,16			; _Commands[7]._HelpStr[27] @ 10896
	.field  	84,16			; _Commands[7]._HelpStr[28] @ 10912
	.field  	72,16			; _Commands[7]._HelpStr[29] @ 10928
	.field  	69,16			; _Commands[7]._HelpStr[30] @ 10944
	.field  	32,16			; _Commands[7]._HelpStr[31] @ 10960
	.field  	68,16			; _Commands[7]._HelpStr[32] @ 10976
	.field  	65,16			; _Commands[7]._HelpStr[33] @ 10992
	.field  	84,16			; _Commands[7]._HelpStr[34] @ 11008
	.field  	69,16			; _Commands[7]._HelpStr[35] @ 11024
	.field  	0,16			; _Commands[7]._HelpStr[36] @ 11040
	.space	688
	.field  	_DateSetFunc,32		; _Commands[7]._CLIFunc @ 11744
	.field  	67,16			; _Commands[8]._Prompt[0] @ 11776
	.field  	65,16			; _Commands[8]._Prompt[1] @ 11792
	.field  	76,16			; _Commands[8]._Prompt[2] @ 11808
	.field  	0,16			; _Commands[8]._Prompt[3] @ 11824
	.space	96
	.field  	67,16			; _Commands[8]._HelpStr[0] @ 11936
	.field  	65,16			; _Commands[8]._HelpStr[1] @ 11952
	.field  	76,16			; _Commands[8]._HelpStr[2] @ 11968
	.field  	61,16			; _Commands[8]._HelpStr[3] @ 11984
	.field  	120,16			; _Commands[8]._HelpStr[4] @ 12000
	.field  	32,16			; _Commands[8]._HelpStr[5] @ 12016
	.field  	32,16			; _Commands[8]._HelpStr[6] @ 12032
	.field  	32,16			; _Commands[8]._HelpStr[7] @ 12048
	.field  	32,16			; _Commands[8]._HelpStr[8] @ 12064
	.field  	32,16			; _Commands[8]._HelpStr[9] @ 12080
	.field  	32,16			; _Commands[8]._HelpStr[10] @ 12096
	.field  	32,16			; _Commands[8]._HelpStr[11] @ 12112
	.field  	32,16			; _Commands[8]._HelpStr[12] @ 12128
	.field  	32,16			; _Commands[8]._HelpStr[13] @ 12144
	.field  	32,16			; _Commands[8]._HelpStr[14] @ 12160
	.field  	32,16			; _Commands[8]._HelpStr[15] @ 12176
	.field  	32,16			; _Commands[8]._HelpStr[16] @ 12192
	.field  	32,16			; _Commands[8]._HelpStr[17] @ 12208
	.field  	32,16			; _Commands[8]._HelpStr[18] @ 12224
	.field  	32,16			; _Commands[8]._HelpStr[19] @ 12240
	.field  	32,16			; _Commands[8]._HelpStr[20] @ 12256
	.field  	32,16			; _Commands[8]._HelpStr[21] @ 12272
	.field  	32,16			; _Commands[8]._HelpStr[22] @ 12288
	.field  	32,16			; _Commands[8]._HelpStr[23] @ 12304
	.field  	69,16			; _Commands[8]._HelpStr[24] @ 12320
	.field  	78,16			; _Commands[8]._HelpStr[25] @ 12336
	.field  	84,16			; _Commands[8]._HelpStr[26] @ 12352
	.field  	69,16			; _Commands[8]._HelpStr[27] @ 12368
	.field  	82,16			; _Commands[8]._HelpStr[28] @ 12384
	.field  	32,16			; _Commands[8]._HelpStr[29] @ 12400
	.field  	49,16			; _Commands[8]._HelpStr[30] @ 12416
	.field  	32,16			; _Commands[8]._HelpStr[31] @ 12432
	.field  	84,16			; _Commands[8]._HelpStr[32] @ 12448
	.field  	79,16			; _Commands[8]._HelpStr[33] @ 12464
	.field  	32,16			; _Commands[8]._HelpStr[34] @ 12480
	.field  	49,16			; _Commands[8]._HelpStr[35] @ 12496
	.field  	52,16			; _Commands[8]._HelpStr[36] @ 12512
	.field  	32,16			; _Commands[8]._HelpStr[37] @ 12528
	.field  	70,16			; _Commands[8]._HelpStr[38] @ 12544
	.field  	79,16			; _Commands[8]._HelpStr[39] @ 12560
	.field  	82,16			; _Commands[8]._HelpStr[40] @ 12576
	.field  	32,16			; _Commands[8]._HelpStr[41] @ 12592
	.field  	49,16			; _Commands[8]._HelpStr[42] @ 12608
	.field  	56,16			; _Commands[8]._HelpStr[43] @ 12624
	.field  	109,16			; _Commands[8]._HelpStr[44] @ 12640
	.field  	65,16			; _Commands[8]._HelpStr[45] @ 12656
	.field  	32,16			; _Commands[8]._HelpStr[46] @ 12672
	.field  	67,16			; _Commands[8]._HelpStr[47] @ 12688
	.field  	65,16			; _Commands[8]._HelpStr[48] @ 12704
	.field  	76,16			; _Commands[8]._HelpStr[49] @ 12720
	.field  	73,16			; _Commands[8]._HelpStr[50] @ 12736
	.field  	66,16			; _Commands[8]._HelpStr[51] @ 12752
	.field  	82,16			; _Commands[8]._HelpStr[52] @ 12768
	.field  	65,16			; _Commands[8]._HelpStr[53] @ 12784
	.field  	84,16			; _Commands[8]._HelpStr[54] @ 12800
	.field  	73,16			; _Commands[8]._HelpStr[55] @ 12816
	.field  	79,16			; _Commands[8]._HelpStr[56] @ 12832
	.field  	78,16			; _Commands[8]._HelpStr[57] @ 12848
	.field  	0,16			; _Commands[8]._HelpStr[58] @ 12864
	.space	336
	.field  	_Cal18mAFunc,32		; _Commands[8]._CLIFunc @ 13216
	.field  	68,16			; _Commands[9]._Prompt[0] @ 13248
	.field  	73,16			; _Commands[9]._Prompt[1] @ 13264
	.field  	83,16			; _Commands[9]._Prompt[2] @ 13280
	.field  	80,16			; _Commands[9]._Prompt[3] @ 13296
	.field  	67,16			; _Commands[9]._Prompt[4] @ 13312
	.field  	65,16			; _Commands[9]._Prompt[5] @ 13328
	.field  	76,16			; _Commands[9]._Prompt[6] @ 13344
	.field  	0,16			; _Commands[9]._Prompt[7] @ 13360
	.space	32
	.field  	68,16			; _Commands[9]._HelpStr[0] @ 13408
	.field  	73,16			; _Commands[9]._HelpStr[1] @ 13424
	.field  	83,16			; _Commands[9]._HelpStr[2] @ 13440
	.field  	80,16			; _Commands[9]._HelpStr[3] @ 13456
	.field  	67,16			; _Commands[9]._HelpStr[4] @ 13472
	.field  	65,16			; _Commands[9]._HelpStr[5] @ 13488
	.field  	76,16			; _Commands[9]._HelpStr[6] @ 13504
	.field  	32,16			; _Commands[9]._HelpStr[7] @ 13520
	.field  	32,16			; _Commands[9]._HelpStr[8] @ 13536
	.field  	32,16			; _Commands[9]._HelpStr[9] @ 13552
	.field  	32,16			; _Commands[9]._HelpStr[10] @ 13568
	.field  	32,16			; _Commands[9]._HelpStr[11] @ 13584
	.field  	32,16			; _Commands[9]._HelpStr[12] @ 13600
	.field  	32,16			; _Commands[9]._HelpStr[13] @ 13616
	.field  	32,16			; _Commands[9]._HelpStr[14] @ 13632
	.field  	32,16			; _Commands[9]._HelpStr[15] @ 13648
	.field  	32,16			; _Commands[9]._HelpStr[16] @ 13664
	.field  	32,16			; _Commands[9]._HelpStr[17] @ 13680
	.field  	32,16			; _Commands[9]._HelpStr[18] @ 13696
	.field  	32,16			; _Commands[9]._HelpStr[19] @ 13712
	.field  	32,16			; _Commands[9]._HelpStr[20] @ 13728
	.field  	32,16			; _Commands[9]._HelpStr[21] @ 13744
	.field  	32,16			; _Commands[9]._HelpStr[22] @ 13760
	.field  	32,16			; _Commands[9]._HelpStr[23] @ 13776
	.field  	68,16			; _Commands[9]._HelpStr[24] @ 13792
	.field  	73,16			; _Commands[9]._HelpStr[25] @ 13808
	.field  	83,16			; _Commands[9]._HelpStr[26] @ 13824
	.field  	80,16			; _Commands[9]._HelpStr[27] @ 13840
	.field  	76,16			; _Commands[9]._HelpStr[28] @ 13856
	.field  	65,16			; _Commands[9]._HelpStr[29] @ 13872
	.field  	89,16			; _Commands[9]._HelpStr[30] @ 13888
	.field  	32,16			; _Commands[9]._HelpStr[31] @ 13904
	.field  	84,16			; _Commands[9]._HelpStr[32] @ 13920
	.field  	72,16			; _Commands[9]._HelpStr[33] @ 13936
	.field  	69,16			; _Commands[9]._HelpStr[34] @ 13952
	.field  	32,16			; _Commands[9]._HelpStr[35] @ 13968
	.field  	67,16			; _Commands[9]._HelpStr[36] @ 13984
	.field  	65,16			; _Commands[9]._HelpStr[37] @ 14000
	.field  	76,16			; _Commands[9]._HelpStr[38] @ 14016
	.field  	73,16			; _Commands[9]._HelpStr[39] @ 14032
	.field  	66,16			; _Commands[9]._HelpStr[40] @ 14048
	.field  	82,16			; _Commands[9]._HelpStr[41] @ 14064
	.field  	65,16			; _Commands[9]._HelpStr[42] @ 14080
	.field  	84,16			; _Commands[9]._HelpStr[43] @ 14096
	.field  	73,16			; _Commands[9]._HelpStr[44] @ 14112
	.field  	79,16			; _Commands[9]._HelpStr[45] @ 14128
	.field  	78,16			; _Commands[9]._HelpStr[46] @ 14144
	.field  	32,16			; _Commands[9]._HelpStr[47] @ 14160
	.field  	86,16			; _Commands[9]._HelpStr[48] @ 14176
	.field  	65,16			; _Commands[9]._HelpStr[49] @ 14192
	.field  	76,16			; _Commands[9]._HelpStr[50] @ 14208
	.field  	85,16			; _Commands[9]._HelpStr[51] @ 14224
	.field  	69,16			; _Commands[9]._HelpStr[52] @ 14240
	.field  	83,16			; _Commands[9]._HelpStr[53] @ 14256
	.field  	0,16			; _Commands[9]._HelpStr[54] @ 14272
	.space	400
	.field  	_DisplayCalValuesFunc,32		; _Commands[9]._CLIFunc @ 14688
	.field  	79,16			; _Commands[10]._Prompt[0] @ 14720
	.field  	70,16			; _Commands[10]._Prompt[1] @ 14736
	.field  	70,16			; _Commands[10]._Prompt[2] @ 14752
	.field  	83,16			; _Commands[10]._Prompt[3] @ 14768
	.field  	69,16			; _Commands[10]._Prompt[4] @ 14784
	.field  	84,16			; _Commands[10]._Prompt[5] @ 14800
	.field  	0,16			; _Commands[10]._Prompt[6] @ 14816
	.space	48
	.field  	79,16			; _Commands[10]._HelpStr[0] @ 14880
	.field  	70,16			; _Commands[10]._HelpStr[1] @ 14896
	.field  	70,16			; _Commands[10]._HelpStr[2] @ 14912
	.field  	83,16			; _Commands[10]._HelpStr[3] @ 14928
	.field  	69,16			; _Commands[10]._HelpStr[4] @ 14944
	.field  	84,16			; _Commands[10]._HelpStr[5] @ 14960
	.field  	32,16			; _Commands[10]._HelpStr[6] @ 14976
	.field  	32,16			; _Commands[10]._HelpStr[7] @ 14992
	.field  	32,16			; _Commands[10]._HelpStr[8] @ 15008
	.field  	32,16			; _Commands[10]._HelpStr[9] @ 15024
	.field  	32,16			; _Commands[10]._HelpStr[10] @ 15040
	.field  	32,16			; _Commands[10]._HelpStr[11] @ 15056
	.field  	32,16			; _Commands[10]._HelpStr[12] @ 15072
	.field  	32,16			; _Commands[10]._HelpStr[13] @ 15088
	.field  	32,16			; _Commands[10]._HelpStr[14] @ 15104
	.field  	32,16			; _Commands[10]._HelpStr[15] @ 15120
	.field  	32,16			; _Commands[10]._HelpStr[16] @ 15136
	.field  	32,16			; _Commands[10]._HelpStr[17] @ 15152
	.field  	32,16			; _Commands[10]._HelpStr[18] @ 15168
	.field  	32,16			; _Commands[10]._HelpStr[19] @ 15184
	.field  	32,16			; _Commands[10]._HelpStr[20] @ 15200
	.field  	32,16			; _Commands[10]._HelpStr[21] @ 15216
	.field  	32,16			; _Commands[10]._HelpStr[22] @ 15232
	.field  	32,16			; _Commands[10]._HelpStr[23] @ 15248
	.field  	83,16			; _Commands[10]._HelpStr[24] @ 15264
	.field  	69,16			; _Commands[10]._HelpStr[25] @ 15280
	.field  	84,16			; _Commands[10]._HelpStr[26] @ 15296
	.field  	32,16			; _Commands[10]._HelpStr[27] @ 15312
	.field  	84,16			; _Commands[10]._HelpStr[28] @ 15328
	.field  	72,16			; _Commands[10]._HelpStr[29] @ 15344
	.field  	69,16			; _Commands[10]._HelpStr[30] @ 15360
	.field  	32,16			; _Commands[10]._HelpStr[31] @ 15376
	.field  	79,16			; _Commands[10]._HelpStr[32] @ 15392
	.field  	70,16			; _Commands[10]._HelpStr[33] @ 15408
	.field  	70,16			; _Commands[10]._HelpStr[34] @ 15424
	.field  	83,16			; _Commands[10]._HelpStr[35] @ 15440
	.field  	69,16			; _Commands[10]._HelpStr[36] @ 15456
	.field  	84,16			; _Commands[10]._HelpStr[37] @ 15472
	.field  	32,16			; _Commands[10]._HelpStr[38] @ 15488
	.field  	70,16			; _Commands[10]._HelpStr[39] @ 15504
	.field  	79,16			; _Commands[10]._HelpStr[40] @ 15520
	.field  	82,16			; _Commands[10]._HelpStr[41] @ 15536
	.field  	32,16			; _Commands[10]._HelpStr[42] @ 15552
	.field  	80,16			; _Commands[10]._HelpStr[43] @ 15568
	.field  	69,16			; _Commands[10]._HelpStr[44] @ 15584
	.field  	65,16			; _Commands[10]._HelpStr[45] @ 15600
	.field  	75,16			; _Commands[10]._HelpStr[46] @ 15616
	.field  	32,16			; _Commands[10]._HelpStr[47] @ 15632
	.field  	68,16			; _Commands[10]._HelpStr[48] @ 15648
	.field  	69,16			; _Commands[10]._HelpStr[49] @ 15664
	.field  	84,16			; _Commands[10]._HelpStr[50] @ 15680
	.field  	69,16			; _Commands[10]._HelpStr[51] @ 15696
	.field  	67,16			; _Commands[10]._HelpStr[52] @ 15712
	.field  	84,16			; _Commands[10]._HelpStr[53] @ 15728
	.field  	73,16			; _Commands[10]._HelpStr[54] @ 15744
	.field  	79,16			; _Commands[10]._HelpStr[55] @ 15760
	.field  	78,16			; _Commands[10]._HelpStr[56] @ 15776
	.field  	0,16			; _Commands[10]._HelpStr[57] @ 15792
	.space	352
	.field  	_OffsetFunc,32		; _Commands[10]._CLIFunc @ 16160
	.field  	84,16			; _Commands[11]._Prompt[0] @ 16192
	.field  	72,16			; _Commands[11]._Prompt[1] @ 16208
	.field  	82,16			; _Commands[11]._Prompt[2] @ 16224
	.field  	69,16			; _Commands[11]._Prompt[3] @ 16240
	.field  	83,16			; _Commands[11]._Prompt[4] @ 16256
	.field  	72,16			; _Commands[11]._Prompt[5] @ 16272
	.field  	79,16			; _Commands[11]._Prompt[6] @ 16288
	.field  	76,16			; _Commands[11]._Prompt[7] @ 16304
	.field  	68,16			; _Commands[11]._Prompt[8] @ 16320
	.field  	0,16			; _Commands[11]._Prompt[9] @ 16336
	.field  	84,16			; _Commands[11]._HelpStr[0] @ 16352
	.field  	72,16			; _Commands[11]._HelpStr[1] @ 16368
	.field  	82,16			; _Commands[11]._HelpStr[2] @ 16384
	.field  	69,16			; _Commands[11]._HelpStr[3] @ 16400
	.field  	83,16			; _Commands[11]._HelpStr[4] @ 16416
	.field  	72,16			; _Commands[11]._HelpStr[5] @ 16432
	.field  	79,16			; _Commands[11]._HelpStr[6] @ 16448
	.field  	76,16			; _Commands[11]._HelpStr[7] @ 16464
	.field  	68,16			; _Commands[11]._HelpStr[8] @ 16480
	.field  	32,16			; _Commands[11]._HelpStr[9] @ 16496
	.field  	32,16			; _Commands[11]._HelpStr[10] @ 16512
	.field  	32,16			; _Commands[11]._HelpStr[11] @ 16528
	.field  	32,16			; _Commands[11]._HelpStr[12] @ 16544
	.field  	32,16			; _Commands[11]._HelpStr[13] @ 16560
	.field  	32,16			; _Commands[11]._HelpStr[14] @ 16576
	.field  	32,16			; _Commands[11]._HelpStr[15] @ 16592
	.field  	32,16			; _Commands[11]._HelpStr[16] @ 16608
	.field  	32,16			; _Commands[11]._HelpStr[17] @ 16624
	.field  	32,16			; _Commands[11]._HelpStr[18] @ 16640
	.field  	32,16			; _Commands[11]._HelpStr[19] @ 16656
	.field  	32,16			; _Commands[11]._HelpStr[20] @ 16672
	.field  	32,16			; _Commands[11]._HelpStr[21] @ 16688
	.field  	32,16			; _Commands[11]._HelpStr[22] @ 16704
	.field  	32,16			; _Commands[11]._HelpStr[23] @ 16720
	.field  	83,16			; _Commands[11]._HelpStr[24] @ 16736
	.field  	69,16			; _Commands[11]._HelpStr[25] @ 16752
	.field  	84,16			; _Commands[11]._HelpStr[26] @ 16768
	.field  	32,16			; _Commands[11]._HelpStr[27] @ 16784
	.field  	84,16			; _Commands[11]._HelpStr[28] @ 16800
	.field  	72,16			; _Commands[11]._HelpStr[29] @ 16816
	.field  	69,16			; _Commands[11]._HelpStr[30] @ 16832
	.field  	32,16			; _Commands[11]._HelpStr[31] @ 16848
	.field  	84,16			; _Commands[11]._HelpStr[32] @ 16864
	.field  	72,16			; _Commands[11]._HelpStr[33] @ 16880
	.field  	82,16			; _Commands[11]._HelpStr[34] @ 16896
	.field  	69,16			; _Commands[11]._HelpStr[35] @ 16912
	.field  	83,16			; _Commands[11]._HelpStr[36] @ 16928
	.field  	72,16			; _Commands[11]._HelpStr[37] @ 16944
	.field  	79,16			; _Commands[11]._HelpStr[38] @ 16960
	.field  	76,16			; _Commands[11]._HelpStr[39] @ 16976
	.field  	68,16			; _Commands[11]._HelpStr[40] @ 16992
	.field  	32,16			; _Commands[11]._HelpStr[41] @ 17008
	.field  	70,16			; _Commands[11]._HelpStr[42] @ 17024
	.field  	79,16			; _Commands[11]._HelpStr[43] @ 17040
	.field  	82,16			; _Commands[11]._HelpStr[44] @ 17056
	.field  	32,16			; _Commands[11]._HelpStr[45] @ 17072
	.field  	80,16			; _Commands[11]._HelpStr[46] @ 17088
	.field  	69,16			; _Commands[11]._HelpStr[47] @ 17104
	.field  	65,16			; _Commands[11]._HelpStr[48] @ 17120
	.field  	75,16			; _Commands[11]._HelpStr[49] @ 17136
	.field  	32,16			; _Commands[11]._HelpStr[50] @ 17152
	.field  	68,16			; _Commands[11]._HelpStr[51] @ 17168
	.field  	69,16			; _Commands[11]._HelpStr[52] @ 17184
	.field  	84,16			; _Commands[11]._HelpStr[53] @ 17200
	.field  	69,16			; _Commands[11]._HelpStr[54] @ 17216
	.field  	67,16			; _Commands[11]._HelpStr[55] @ 17232
	.field  	84,16			; _Commands[11]._HelpStr[56] @ 17248
	.field  	73,16			; _Commands[11]._HelpStr[57] @ 17264
	.field  	79,16			; _Commands[11]._HelpStr[58] @ 17280
	.field  	78,16			; _Commands[11]._HelpStr[59] @ 17296
	.field  	0,16			; _Commands[11]._HelpStr[60] @ 17312
	.space	304
	.field  	_ThresholdFunc,32		; _Commands[11]._CLIFunc @ 17632
	.field  	83,16			; _Commands[12]._Prompt[0] @ 17664
	.field  	69,16			; _Commands[12]._Prompt[1] @ 17680
	.field  	78,16			; _Commands[12]._Prompt[2] @ 17696
	.field  	83,16			; _Commands[12]._Prompt[3] @ 17712
	.field  	67,16			; _Commands[12]._Prompt[4] @ 17728
	.field  	65,16			; _Commands[12]._Prompt[5] @ 17744
	.field  	76,16			; _Commands[12]._Prompt[6] @ 17760
	.field  	69,16			; _Commands[12]._Prompt[7] @ 17776
	.field  	0,16			; _Commands[12]._Prompt[8] @ 17792
	.space	16
	.field  	83,16			; _Commands[12]._HelpStr[0] @ 17824
	.field  	69,16			; _Commands[12]._HelpStr[1] @ 17840
	.field  	78,16			; _Commands[12]._HelpStr[2] @ 17856
	.field  	83,16			; _Commands[12]._HelpStr[3] @ 17872
	.field  	67,16			; _Commands[12]._HelpStr[4] @ 17888
	.field  	65,16			; _Commands[12]._HelpStr[5] @ 17904
	.field  	76,16			; _Commands[12]._HelpStr[6] @ 17920
	.field  	69,16			; _Commands[12]._HelpStr[7] @ 17936
	.field  	61,16			; _Commands[12]._HelpStr[8] @ 17952
	.field  	120,16			; _Commands[12]._HelpStr[9] @ 17968
	.field  	120,16			; _Commands[12]._HelpStr[10] @ 17984
	.field  	120,16			; _Commands[12]._HelpStr[11] @ 18000
	.field  	120,16			; _Commands[12]._HelpStr[12] @ 18016
	.field  	32,16			; _Commands[12]._HelpStr[13] @ 18032
	.field  	32,16			; _Commands[12]._HelpStr[14] @ 18048
	.field  	32,16			; _Commands[12]._HelpStr[15] @ 18064
	.field  	32,16			; _Commands[12]._HelpStr[16] @ 18080
	.field  	32,16			; _Commands[12]._HelpStr[17] @ 18096
	.field  	32,16			; _Commands[12]._HelpStr[18] @ 18112
	.field  	32,16			; _Commands[12]._HelpStr[19] @ 18128
	.field  	32,16			; _Commands[12]._HelpStr[20] @ 18144
	.field  	32,16			; _Commands[12]._HelpStr[21] @ 18160
	.field  	32,16			; _Commands[12]._HelpStr[22] @ 18176
	.field  	32,16			; _Commands[12]._HelpStr[23] @ 18192
	.field  	83,16			; _Commands[12]._HelpStr[24] @ 18208
	.field  	69,16			; _Commands[12]._HelpStr[25] @ 18224
	.field  	78,16			; _Commands[12]._HelpStr[26] @ 18240
	.field  	83,16			; _Commands[12]._HelpStr[27] @ 18256
	.field  	79,16			; _Commands[12]._HelpStr[28] @ 18272
	.field  	82,16			; _Commands[12]._HelpStr[29] @ 18288
	.field  	32,16			; _Commands[12]._HelpStr[30] @ 18304
	.field  	83,16			; _Commands[12]._HelpStr[31] @ 18320
	.field  	67,16			; _Commands[12]._HelpStr[32] @ 18336
	.field  	65,16			; _Commands[12]._HelpStr[33] @ 18352
	.field  	76,16			; _Commands[12]._HelpStr[34] @ 18368
	.field  	73,16			; _Commands[12]._HelpStr[35] @ 18384
	.field  	78,16			; _Commands[12]._HelpStr[36] @ 18400
	.field  	71,16			; _Commands[12]._HelpStr[37] @ 18416
	.field  	32,16			; _Commands[12]._HelpStr[38] @ 18432
	.field  	70,16			; _Commands[12]._HelpStr[39] @ 18448
	.field  	65,16			; _Commands[12]._HelpStr[40] @ 18464
	.field  	67,16			; _Commands[12]._HelpStr[41] @ 18480
	.field  	84,16			; _Commands[12]._HelpStr[42] @ 18496
	.field  	79,16			; _Commands[12]._HelpStr[43] @ 18512
	.field  	82,16			; _Commands[12]._HelpStr[44] @ 18528
	.field  	44,16			; _Commands[12]._HelpStr[45] @ 18544
	.field  	32,16			; _Commands[12]._HelpStr[46] @ 18560
	.field  	69,16			; _Commands[12]._HelpStr[47] @ 18576
	.field  	78,16			; _Commands[12]._HelpStr[48] @ 18592
	.field  	84,16			; _Commands[12]._HelpStr[49] @ 18608
	.field  	69,16			; _Commands[12]._HelpStr[50] @ 18624
	.field  	82,16			; _Commands[12]._HelpStr[51] @ 18640
	.field  	32,16			; _Commands[12]._HelpStr[52] @ 18656
	.field  	52,16			; _Commands[12]._HelpStr[53] @ 18672
	.field  	32,16			; _Commands[12]._HelpStr[54] @ 18688
	.field  	68,16			; _Commands[12]._HelpStr[55] @ 18704
	.field  	73,16			; _Commands[12]._HelpStr[56] @ 18720
	.field  	71,16			; _Commands[12]._HelpStr[57] @ 18736
	.field  	73,16			; _Commands[12]._HelpStr[58] @ 18752
	.field  	84,16			; _Commands[12]._HelpStr[59] @ 18768
	.field  	83,16			; _Commands[12]._HelpStr[60] @ 18784
	.field  	0,16			; _Commands[12]._HelpStr[61] @ 18800
	.space	288
	.field  	_SensorScalingFactorFunc,32		; _Commands[12]._CLIFunc @ 19104
	.field  	82,16			; _Commands[13]._Prompt[0] @ 19136
	.field  	69,16			; _Commands[13]._Prompt[1] @ 19152
	.field  	83,16			; _Commands[13]._Prompt[2] @ 19168
	.field  	85,16			; _Commands[13]._Prompt[3] @ 19184
	.field  	76,16			; _Commands[13]._Prompt[4] @ 19200
	.field  	84,16			; _Commands[13]._Prompt[5] @ 19216
	.field  	83,16			; _Commands[13]._Prompt[6] @ 19232
	.field  	0,16			; _Commands[13]._Prompt[7] @ 19248
	.space	32
	.field  	82,16			; _Commands[13]._HelpStr[0] @ 19296
	.field  	69,16			; _Commands[13]._HelpStr[1] @ 19312
	.field  	83,16			; _Commands[13]._HelpStr[2] @ 19328
	.field  	85,16			; _Commands[13]._HelpStr[3] @ 19344
	.field  	76,16			; _Commands[13]._HelpStr[4] @ 19360
	.field  	84,16			; _Commands[13]._HelpStr[5] @ 19376
	.field  	83,16			; _Commands[13]._HelpStr[6] @ 19392
	.field  	32,16			; _Commands[13]._HelpStr[7] @ 19408
	.field  	32,16			; _Commands[13]._HelpStr[8] @ 19424
	.field  	32,16			; _Commands[13]._HelpStr[9] @ 19440
	.field  	32,16			; _Commands[13]._HelpStr[10] @ 19456
	.field  	32,16			; _Commands[13]._HelpStr[11] @ 19472
	.field  	32,16			; _Commands[13]._HelpStr[12] @ 19488
	.field  	32,16			; _Commands[13]._HelpStr[13] @ 19504
	.field  	32,16			; _Commands[13]._HelpStr[14] @ 19520
	.field  	32,16			; _Commands[13]._HelpStr[15] @ 19536
	.field  	32,16			; _Commands[13]._HelpStr[16] @ 19552
	.field  	32,16			; _Commands[13]._HelpStr[17] @ 19568
	.field  	32,16			; _Commands[13]._HelpStr[18] @ 19584
	.field  	32,16			; _Commands[13]._HelpStr[19] @ 19600
	.field  	32,16			; _Commands[13]._HelpStr[20] @ 19616
	.field  	32,16			; _Commands[13]._HelpStr[21] @ 19632
	.field  	32,16			; _Commands[13]._HelpStr[22] @ 19648
	.field  	32,16			; _Commands[13]._HelpStr[23] @ 19664
	.field  	82,16			; _Commands[13]._HelpStr[24] @ 19680
	.field  	65,16			; _Commands[13]._HelpStr[25] @ 19696
	.field  	87,16			; _Commands[13]._HelpStr[26] @ 19712
	.field  	32,16			; _Commands[13]._HelpStr[27] @ 19728
	.field  	73,16			; _Commands[13]._HelpStr[28] @ 19744
	.field  	78,16			; _Commands[13]._HelpStr[29] @ 19760
	.field  	80,16			; _Commands[13]._HelpStr[30] @ 19776
	.field  	85,16			; _Commands[13]._HelpStr[31] @ 19792
	.field  	84,16			; _Commands[13]._HelpStr[32] @ 19808
	.field  	32,16			; _Commands[13]._HelpStr[33] @ 19824
	.field  	67,16			; _Commands[13]._HelpStr[34] @ 19840
	.field  	72,16			; _Commands[13]._HelpStr[35] @ 19856
	.field  	65,16			; _Commands[13]._HelpStr[36] @ 19872
	.field  	78,16			; _Commands[13]._HelpStr[37] @ 19888
	.field  	78,16			; _Commands[13]._HelpStr[38] @ 19904
	.field  	69,16			; _Commands[13]._HelpStr[39] @ 19920
	.field  	76,16			; _Commands[13]._HelpStr[40] @ 19936
	.field  	32,16			; _Commands[13]._HelpStr[41] @ 19952
	.field  	82,16			; _Commands[13]._HelpStr[42] @ 19968
	.field  	69,16			; _Commands[13]._HelpStr[43] @ 19984
	.field  	83,16			; _Commands[13]._HelpStr[44] @ 20000
	.field  	85,16			; _Commands[13]._HelpStr[45] @ 20016
	.field  	76,16			; _Commands[13]._HelpStr[46] @ 20032
	.field  	84,16			; _Commands[13]._HelpStr[47] @ 20048
	.field  	83,16			; _Commands[13]._HelpStr[48] @ 20064
	.field  	32,16			; _Commands[13]._HelpStr[49] @ 20080
	.field  	73,16			; _Commands[13]._HelpStr[50] @ 20096
	.field  	78,16			; _Commands[13]._HelpStr[51] @ 20112
	.field  	32,16			; _Commands[13]._HelpStr[52] @ 20128
	.field  	67,16			; _Commands[13]._HelpStr[53] @ 20144
	.field  	79,16			; _Commands[13]._HelpStr[54] @ 20160
	.field  	85,16			; _Commands[13]._HelpStr[55] @ 20176
	.field  	78,16			; _Commands[13]._HelpStr[56] @ 20192
	.field  	84,16			; _Commands[13]._HelpStr[57] @ 20208
	.field  	83,16			; _Commands[13]._HelpStr[58] @ 20224
	.field  	0,16			; _Commands[13]._HelpStr[59] @ 20240
	.space	320
	.field  	_InputResultsFunc,32		; _Commands[13]._CLIFunc @ 20576
	.field  	82,16			; _Commands[14]._Prompt[0] @ 20608
	.field  	80,16			; _Commands[14]._Prompt[1] @ 20624
	.field  	77,16			; _Commands[14]._Prompt[2] @ 20640
	.field  	0,16			; _Commands[14]._Prompt[3] @ 20656
	.space	96
	.field  	82,16			; _Commands[14]._HelpStr[0] @ 20768
	.field  	80,16			; _Commands[14]._HelpStr[1] @ 20784
	.field  	77,16			; _Commands[14]._HelpStr[2] @ 20800
	.field  	32,16			; _Commands[14]._HelpStr[3] @ 20816
	.field  	32,16			; _Commands[14]._HelpStr[4] @ 20832
	.field  	32,16			; _Commands[14]._HelpStr[5] @ 20848
	.field  	32,16			; _Commands[14]._HelpStr[6] @ 20864
	.field  	32,16			; _Commands[14]._HelpStr[7] @ 20880
	.field  	32,16			; _Commands[14]._HelpStr[8] @ 20896
	.field  	32,16			; _Commands[14]._HelpStr[9] @ 20912
	.field  	32,16			; _Commands[14]._HelpStr[10] @ 20928
	.field  	32,16			; _Commands[14]._HelpStr[11] @ 20944
	.field  	32,16			; _Commands[14]._HelpStr[12] @ 20960
	.field  	32,16			; _Commands[14]._HelpStr[13] @ 20976
	.field  	32,16			; _Commands[14]._HelpStr[14] @ 20992
	.field  	32,16			; _Commands[14]._HelpStr[15] @ 21008
	.field  	32,16			; _Commands[14]._HelpStr[16] @ 21024
	.field  	32,16			; _Commands[14]._HelpStr[17] @ 21040
	.field  	32,16			; _Commands[14]._HelpStr[18] @ 21056
	.field  	32,16			; _Commands[14]._HelpStr[19] @ 21072
	.field  	32,16			; _Commands[14]._HelpStr[20] @ 21088
	.field  	32,16			; _Commands[14]._HelpStr[21] @ 21104
	.field  	32,16			; _Commands[14]._HelpStr[22] @ 21120
	.field  	32,16			; _Commands[14]._HelpStr[23] @ 21136
	.field  	82,16			; _Commands[14]._HelpStr[24] @ 21152
	.field  	69,16			; _Commands[14]._HelpStr[25] @ 21168
	.field  	86,16			; _Commands[14]._HelpStr[26] @ 21184
	.field  	83,16			; _Commands[14]._HelpStr[27] @ 21200
	.field  	32,16			; _Commands[14]._HelpStr[28] @ 21216
	.field  	80,16			; _Commands[14]._HelpStr[29] @ 21232
	.field  	69,16			; _Commands[14]._HelpStr[30] @ 21248
	.field  	82,16			; _Commands[14]._HelpStr[31] @ 21264
	.field  	32,16			; _Commands[14]._HelpStr[32] @ 21280
	.field  	77,16			; _Commands[14]._HelpStr[33] @ 21296
	.field  	73,16			; _Commands[14]._HelpStr[34] @ 21312
	.field  	78,16			; _Commands[14]._HelpStr[35] @ 21328
	.field  	85,16			; _Commands[14]._HelpStr[36] @ 21344
	.field  	84,16			; _Commands[14]._HelpStr[37] @ 21360
	.field  	69,16			; _Commands[14]._HelpStr[38] @ 21376
	.field  	0,16			; _Commands[14]._HelpStr[39] @ 21392
	.space	640
	.field  	_RPMFunc,32		; _Commands[14]._CLIFunc @ 22048
	.field  	67,16			; _Commands[15]._Prompt[0] @ 22080
	.field  	79,16			; _Commands[15]._Prompt[1] @ 22096
	.field  	77,16			; _Commands[15]._Prompt[2] @ 22112
	.field  	77,16			; _Commands[15]._Prompt[3] @ 22128
	.field  	83,16			; _Commands[15]._Prompt[4] @ 22144
	.field  	0,16			; _Commands[15]._Prompt[5] @ 22160
	.space	64
	.field  	67,16			; _Commands[15]._HelpStr[0] @ 22240
	.field  	79,16			; _Commands[15]._HelpStr[1] @ 22256
	.field  	77,16			; _Commands[15]._HelpStr[2] @ 22272
	.field  	77,16			; _Commands[15]._HelpStr[3] @ 22288
	.field  	83,16			; _Commands[15]._HelpStr[4] @ 22304
	.field  	61,16			; _Commands[15]._HelpStr[5] @ 22320
	.field  	120,16			; _Commands[15]._HelpStr[6] @ 22336
	.field  	32,16			; _Commands[15]._HelpStr[7] @ 22352
	.field  	32,16			; _Commands[15]._HelpStr[8] @ 22368
	.field  	32,16			; _Commands[15]._HelpStr[9] @ 22384
	.field  	32,16			; _Commands[15]._HelpStr[10] @ 22400
	.field  	32,16			; _Commands[15]._HelpStr[11] @ 22416
	.field  	32,16			; _Commands[15]._HelpStr[12] @ 22432
	.field  	32,16			; _Commands[15]._HelpStr[13] @ 22448
	.field  	32,16			; _Commands[15]._HelpStr[14] @ 22464
	.field  	32,16			; _Commands[15]._HelpStr[15] @ 22480
	.field  	32,16			; _Commands[15]._HelpStr[16] @ 22496
	.field  	32,16			; _Commands[15]._HelpStr[17] @ 22512
	.field  	32,16			; _Commands[15]._HelpStr[18] @ 22528
	.field  	32,16			; _Commands[15]._HelpStr[19] @ 22544
	.field  	32,16			; _Commands[15]._HelpStr[20] @ 22560
	.field  	32,16			; _Commands[15]._HelpStr[21] @ 22576
	.field  	32,16			; _Commands[15]._HelpStr[22] @ 22592
	.field  	32,16			; _Commands[15]._HelpStr[23] @ 22608
	.field  	67,16			; _Commands[15]._HelpStr[24] @ 22624
	.field  	79,16			; _Commands[15]._HelpStr[25] @ 22640
	.field  	77,16			; _Commands[15]._HelpStr[26] @ 22656
	.field  	77,16			; _Commands[15]._HelpStr[27] @ 22672
	.field  	85,16			; _Commands[15]._HelpStr[28] @ 22688
	.field  	78,16			; _Commands[15]._HelpStr[29] @ 22704
	.field  	73,16			; _Commands[15]._HelpStr[30] @ 22720
	.field  	67,16			; _Commands[15]._HelpStr[31] @ 22736
	.field  	65,16			; _Commands[15]._HelpStr[32] @ 22752
	.field  	84,16			; _Commands[15]._HelpStr[33] @ 22768
	.field  	73,16			; _Commands[15]._HelpStr[34] @ 22784
	.field  	79,16			; _Commands[15]._HelpStr[35] @ 22800
	.field  	78,16			; _Commands[15]._HelpStr[36] @ 22816
	.field  	83,16			; _Commands[15]._HelpStr[37] @ 22832
	.field  	44,16			; _Commands[15]._HelpStr[38] @ 22848
	.field  	32,16			; _Commands[15]._HelpStr[39] @ 22864
	.field  	83,16			; _Commands[15]._HelpStr[40] @ 22880
	.field  	69,16			; _Commands[15]._HelpStr[41] @ 22896
	.field  	84,16			; _Commands[15]._HelpStr[42] @ 22912
	.field  	32,16			; _Commands[15]._HelpStr[43] @ 22928
	.field  	84,16			; _Commands[15]._HelpStr[44] @ 22944
	.field  	79,16			; _Commands[15]._HelpStr[45] @ 22960
	.field  	32,16			; _Commands[15]._HelpStr[46] @ 22976
	.field  	90,16			; _Commands[15]._HelpStr[47] @ 22992
	.field  	69,16			; _Commands[15]._HelpStr[48] @ 23008
	.field  	82,16			; _Commands[15]._HelpStr[49] @ 23024
	.field  	79,16			; _Commands[15]._HelpStr[50] @ 23040
	.field  	32,16			; _Commands[15]._HelpStr[51] @ 23056
	.field  	84,16			; _Commands[15]._HelpStr[52] @ 23072
	.field  	79,16			; _Commands[15]._HelpStr[53] @ 23088
	.field  	32,16			; _Commands[15]._HelpStr[54] @ 23104
	.field  	67,16			; _Commands[15]._HelpStr[55] @ 23120
	.field  	76,16			; _Commands[15]._HelpStr[56] @ 23136
	.field  	69,16			; _Commands[15]._HelpStr[57] @ 23152
	.field  	65,16			; _Commands[15]._HelpStr[58] @ 23168
	.field  	82,16			; _Commands[15]._HelpStr[59] @ 23184
	.field  	0,16			; _Commands[15]._HelpStr[60] @ 23200
	.space	304
	.field  	_CommsCheckFunc,32		; _Commands[15]._CLIFunc @ 23520
	.field  	69,16			; _Commands[16]._Prompt[0] @ 23552
	.field  	78,16			; _Commands[16]._Prompt[1] @ 23568
	.field  	66,16			; _Commands[16]._Prompt[2] @ 23584
	.field  	79,16			; _Commands[16]._Prompt[3] @ 23600
	.field  	70,16			; _Commands[16]._Prompt[4] @ 23616
	.field  	70,16			; _Commands[16]._Prompt[5] @ 23632
	.field  	0,16			; _Commands[16]._Prompt[6] @ 23648
	.space	48
	.field  	69,16			; _Commands[16]._HelpStr[0] @ 23712
	.field  	78,16			; _Commands[16]._HelpStr[1] @ 23728
	.field  	66,16			; _Commands[16]._HelpStr[2] @ 23744
	.field  	79,16			; _Commands[16]._HelpStr[3] @ 23760
	.field  	70,16			; _Commands[16]._HelpStr[4] @ 23776
	.field  	70,16			; _Commands[16]._HelpStr[5] @ 23792
	.field  	61,16			; _Commands[16]._HelpStr[6] @ 23808
	.field  	120,16			; _Commands[16]._HelpStr[7] @ 23824
	.field  	32,16			; _Commands[16]._HelpStr[8] @ 23840
	.field  	32,16			; _Commands[16]._HelpStr[9] @ 23856
	.field  	32,16			; _Commands[16]._HelpStr[10] @ 23872
	.field  	32,16			; _Commands[16]._HelpStr[11] @ 23888
	.field  	32,16			; _Commands[16]._HelpStr[12] @ 23904
	.field  	32,16			; _Commands[16]._HelpStr[13] @ 23920
	.field  	32,16			; _Commands[16]._HelpStr[14] @ 23936
	.field  	32,16			; _Commands[16]._HelpStr[15] @ 23952
	.field  	32,16			; _Commands[16]._HelpStr[16] @ 23968
	.field  	32,16			; _Commands[16]._HelpStr[17] @ 23984
	.field  	32,16			; _Commands[16]._HelpStr[18] @ 24000
	.field  	32,16			; _Commands[16]._HelpStr[19] @ 24016
	.field  	32,16			; _Commands[16]._HelpStr[20] @ 24032
	.field  	32,16			; _Commands[16]._HelpStr[21] @ 24048
	.field  	32,16			; _Commands[16]._HelpStr[22] @ 24064
	.field  	32,16			; _Commands[16]._HelpStr[23] @ 24080
	.field  	69,16			; _Commands[16]._HelpStr[24] @ 24096
	.field  	78,16			; _Commands[16]._HelpStr[25] @ 24112
	.field  	65,16			; _Commands[16]._HelpStr[26] @ 24128
	.field  	66,16			; _Commands[16]._HelpStr[27] @ 24144
	.field  	76,16			; _Commands[16]._HelpStr[28] @ 24160
	.field  	69,16			; _Commands[16]._HelpStr[29] @ 24176
	.field  	32,16			; _Commands[16]._HelpStr[30] @ 24192
	.field  	84,16			; _Commands[16]._HelpStr[31] @ 24208
	.field  	72,16			; _Commands[16]._HelpStr[32] @ 24224
	.field  	69,16			; _Commands[16]._HelpStr[33] @ 24240
	.field  	32,16			; _Commands[16]._HelpStr[34] @ 24256
	.field  	79,16			; _Commands[16]._HelpStr[35] @ 24272
	.field  	70,16			; _Commands[16]._HelpStr[36] @ 24288
	.field  	70,16			; _Commands[16]._HelpStr[37] @ 24304
	.field  	83,16			; _Commands[16]._HelpStr[38] @ 24320
	.field  	69,16			; _Commands[16]._HelpStr[39] @ 24336
	.field  	84,16			; _Commands[16]._HelpStr[40] @ 24352
	.field  	32,16			; _Commands[16]._HelpStr[41] @ 24368
	.field  	77,16			; _Commands[16]._HelpStr[42] @ 24384
	.field  	65,16			; _Commands[16]._HelpStr[43] @ 24400
	.field  	78,16			; _Commands[16]._HelpStr[44] @ 24416
	.field  	32,16			; _Commands[16]._HelpStr[45] @ 24432
	.field  	70,16			; _Commands[16]._HelpStr[46] @ 24448
	.field  	85,16			; _Commands[16]._HelpStr[47] @ 24464
	.field  	78,16			; _Commands[16]._HelpStr[48] @ 24480
	.field  	67,16			; _Commands[16]._HelpStr[49] @ 24496
	.field  	84,16			; _Commands[16]._HelpStr[50] @ 24512
	.field  	73,16			; _Commands[16]._HelpStr[51] @ 24528
	.field  	79,16			; _Commands[16]._HelpStr[52] @ 24544
	.field  	78,16			; _Commands[16]._HelpStr[53] @ 24560
	.field  	32,16			; _Commands[16]._HelpStr[54] @ 24576
	.field  	120,16			; _Commands[16]._HelpStr[55] @ 24592
	.field  	61,16			; _Commands[16]._HelpStr[56] @ 24608
	.field  	48,16			; _Commands[16]._HelpStr[57] @ 24624
	.field  	44,16			; _Commands[16]._HelpStr[58] @ 24640
	.field  	49,16			; _Commands[16]._HelpStr[59] @ 24656
	.field  	0,16			; _Commands[16]._HelpStr[60] @ 24672
	.space	304
	.field  	_EnableOffsetFunc,32		; _Commands[16]._CLIFunc @ 24992
	.field  	69,16			; _Commands[17]._Prompt[0] @ 25024
	.field  	78,16			; _Commands[17]._Prompt[1] @ 25040
	.field  	66,16			; _Commands[17]._Prompt[2] @ 25056
	.field  	67,16			; _Commands[17]._Prompt[3] @ 25072
	.field  	79,16			; _Commands[17]._Prompt[4] @ 25088
	.field  	77,16			; _Commands[17]._Prompt[5] @ 25104
	.field  	80,16			; _Commands[17]._Prompt[6] @ 25120
	.field  	0,16			; _Commands[17]._Prompt[7] @ 25136
	.space	32
	.field  	69,16			; _Commands[17]._HelpStr[0] @ 25184
	.field  	78,16			; _Commands[17]._HelpStr[1] @ 25200
	.field  	66,16			; _Commands[17]._HelpStr[2] @ 25216
	.field  	67,16			; _Commands[17]._HelpStr[3] @ 25232
	.field  	79,16			; _Commands[17]._HelpStr[4] @ 25248
	.field  	77,16			; _Commands[17]._HelpStr[5] @ 25264
	.field  	80,16			; _Commands[17]._HelpStr[6] @ 25280
	.field  	61,16			; _Commands[17]._HelpStr[7] @ 25296
	.field  	120,16			; _Commands[17]._HelpStr[8] @ 25312
	.field  	32,16			; _Commands[17]._HelpStr[9] @ 25328
	.field  	32,16			; _Commands[17]._HelpStr[10] @ 25344
	.field  	32,16			; _Commands[17]._HelpStr[11] @ 25360
	.field  	32,16			; _Commands[17]._HelpStr[12] @ 25376
	.field  	32,16			; _Commands[17]._HelpStr[13] @ 25392
	.field  	32,16			; _Commands[17]._HelpStr[14] @ 25408
	.field  	32,16			; _Commands[17]._HelpStr[15] @ 25424
	.field  	32,16			; _Commands[17]._HelpStr[16] @ 25440
	.field  	32,16			; _Commands[17]._HelpStr[17] @ 25456
	.field  	32,16			; _Commands[17]._HelpStr[18] @ 25472
	.field  	32,16			; _Commands[17]._HelpStr[19] @ 25488
	.field  	32,16			; _Commands[17]._HelpStr[20] @ 25504
	.field  	32,16			; _Commands[17]._HelpStr[21] @ 25520
	.field  	32,16			; _Commands[17]._HelpStr[22] @ 25536
	.field  	32,16			; _Commands[17]._HelpStr[23] @ 25552
	.field  	69,16			; _Commands[17]._HelpStr[24] @ 25568
	.field  	78,16			; _Commands[17]._HelpStr[25] @ 25584
	.field  	65,16			; _Commands[17]._HelpStr[26] @ 25600
	.field  	66,16			; _Commands[17]._HelpStr[27] @ 25616
	.field  	76,16			; _Commands[17]._HelpStr[28] @ 25632
	.field  	69,16			; _Commands[17]._HelpStr[29] @ 25648
	.field  	32,16			; _Commands[17]._HelpStr[30] @ 25664
	.field  	84,16			; _Commands[17]._HelpStr[31] @ 25680
	.field  	72,16			; _Commands[17]._HelpStr[32] @ 25696
	.field  	69,16			; _Commands[17]._HelpStr[33] @ 25712
	.field  	32,16			; _Commands[17]._HelpStr[34] @ 25728
	.field  	67,16			; _Commands[17]._HelpStr[35] @ 25744
	.field  	79,16			; _Commands[17]._HelpStr[36] @ 25760
	.field  	77,16			; _Commands[17]._HelpStr[37] @ 25776
	.field  	80,16			; _Commands[17]._HelpStr[38] @ 25792
	.field  	69,16			; _Commands[17]._HelpStr[39] @ 25808
	.field  	78,16			; _Commands[17]._HelpStr[40] @ 25824
	.field  	83,16			; _Commands[17]._HelpStr[41] @ 25840
	.field  	65,16			; _Commands[17]._HelpStr[42] @ 25856
	.field  	84,16			; _Commands[17]._HelpStr[43] @ 25872
	.field  	73,16			; _Commands[17]._HelpStr[44] @ 25888
	.field  	79,16			; _Commands[17]._HelpStr[45] @ 25904
	.field  	78,16			; _Commands[17]._HelpStr[46] @ 25920
	.field  	32,16			; _Commands[17]._HelpStr[47] @ 25936
	.field  	70,16			; _Commands[17]._HelpStr[48] @ 25952
	.field  	85,16			; _Commands[17]._HelpStr[49] @ 25968
	.field  	78,16			; _Commands[17]._HelpStr[50] @ 25984
	.field  	67,16			; _Commands[17]._HelpStr[51] @ 26000
	.field  	84,16			; _Commands[17]._HelpStr[52] @ 26016
	.field  	73,16			; _Commands[17]._HelpStr[53] @ 26032
	.field  	79,16			; _Commands[17]._HelpStr[54] @ 26048
	.field  	78,16			; _Commands[17]._HelpStr[55] @ 26064
	.field  	32,16			; _Commands[17]._HelpStr[56] @ 26080
	.field  	120,16			; _Commands[17]._HelpStr[57] @ 26096
	.field  	61,16			; _Commands[17]._HelpStr[58] @ 26112
	.field  	48,16			; _Commands[17]._HelpStr[59] @ 26128
	.field  	44,16			; _Commands[17]._HelpStr[60] @ 26144
	.field  	49,16			; _Commands[17]._HelpStr[61] @ 26160
	.field  	0,16			; _Commands[17]._HelpStr[62] @ 26176
	.space	272
	.field  	_EnableCompensationFunc,32		; _Commands[17]._CLIFunc @ 26464
	.field  	69,16			; _Commands[18]._Prompt[0] @ 26496
	.field  	78,16			; _Commands[18]._Prompt[1] @ 26512
	.field  	66,16			; _Commands[18]._Prompt[2] @ 26528
	.field  	78,16			; _Commands[18]._Prompt[3] @ 26544
	.field  	82,16			; _Commands[18]._Prompt[4] @ 26560
	.field  	69,16			; _Commands[18]._Prompt[5] @ 26576
	.field  	77,16			; _Commands[18]._Prompt[6] @ 26592
	.field  	0,16			; _Commands[18]._Prompt[7] @ 26608
	.space	32
	.field  	69,16			; _Commands[18]._HelpStr[0] @ 26656
	.field  	78,16			; _Commands[18]._HelpStr[1] @ 26672
	.field  	66,16			; _Commands[18]._HelpStr[2] @ 26688
	.field  	78,16			; _Commands[18]._HelpStr[3] @ 26704
	.field  	82,16			; _Commands[18]._HelpStr[4] @ 26720
	.field  	69,16			; _Commands[18]._HelpStr[5] @ 26736
	.field  	77,16			; _Commands[18]._HelpStr[6] @ 26752
	.field  	61,16			; _Commands[18]._HelpStr[7] @ 26768
	.field  	120,16			; _Commands[18]._HelpStr[8] @ 26784
	.field  	32,16			; _Commands[18]._HelpStr[9] @ 26800
	.field  	32,16			; _Commands[18]._HelpStr[10] @ 26816
	.field  	32,16			; _Commands[18]._HelpStr[11] @ 26832
	.field  	32,16			; _Commands[18]._HelpStr[12] @ 26848
	.field  	32,16			; _Commands[18]._HelpStr[13] @ 26864
	.field  	32,16			; _Commands[18]._HelpStr[14] @ 26880
	.field  	32,16			; _Commands[18]._HelpStr[15] @ 26896
	.field  	32,16			; _Commands[18]._HelpStr[16] @ 26912
	.field  	32,16			; _Commands[18]._HelpStr[17] @ 26928
	.field  	32,16			; _Commands[18]._HelpStr[18] @ 26944
	.field  	32,16			; _Commands[18]._HelpStr[19] @ 26960
	.field  	32,16			; _Commands[18]._HelpStr[20] @ 26976
	.field  	32,16			; _Commands[18]._HelpStr[21] @ 26992
	.field  	32,16			; _Commands[18]._HelpStr[22] @ 27008
	.field  	32,16			; _Commands[18]._HelpStr[23] @ 27024
	.field  	69,16			; _Commands[18]._HelpStr[24] @ 27040
	.field  	78,16			; _Commands[18]._HelpStr[25] @ 27056
	.field  	65,16			; _Commands[18]._HelpStr[26] @ 27072
	.field  	66,16			; _Commands[18]._HelpStr[27] @ 27088
	.field  	76,16			; _Commands[18]._HelpStr[28] @ 27104
	.field  	69,16			; _Commands[18]._HelpStr[29] @ 27120
	.field  	32,16			; _Commands[18]._HelpStr[30] @ 27136
	.field  	78,16			; _Commands[18]._HelpStr[31] @ 27152
	.field  	79,16			; _Commands[18]._HelpStr[32] @ 27168
	.field  	73,16			; _Commands[18]._HelpStr[33] @ 27184
	.field  	83,16			; _Commands[18]._HelpStr[34] @ 27200
	.field  	69,16			; _Commands[18]._HelpStr[35] @ 27216
	.field  	32,16			; _Commands[18]._HelpStr[36] @ 27232
	.field  	82,16			; _Commands[18]._HelpStr[37] @ 27248
	.field  	69,16			; _Commands[18]._HelpStr[38] @ 27264
	.field  	77,16			; _Commands[18]._HelpStr[39] @ 27280
	.field  	79,16			; _Commands[18]._HelpStr[40] @ 27296
	.field  	86,16			; _Commands[18]._HelpStr[41] @ 27312
	.field  	65,16			; _Commands[18]._HelpStr[42] @ 27328
	.field  	76,16			; _Commands[18]._HelpStr[43] @ 27344
	.field  	32,16			; _Commands[18]._HelpStr[44] @ 27360
	.field  	70,16			; _Commands[18]._HelpStr[45] @ 27376
	.field  	85,16			; _Commands[18]._HelpStr[46] @ 27392
	.field  	78,16			; _Commands[18]._HelpStr[47] @ 27408
	.field  	67,16			; _Commands[18]._HelpStr[48] @ 27424
	.field  	84,16			; _Commands[18]._HelpStr[49] @ 27440
	.field  	73,16			; _Commands[18]._HelpStr[50] @ 27456
	.field  	79,16			; _Commands[18]._HelpStr[51] @ 27472
	.field  	78,16			; _Commands[18]._HelpStr[52] @ 27488
	.field  	32,16			; _Commands[18]._HelpStr[53] @ 27504
	.field  	32,16			; _Commands[18]._HelpStr[54] @ 27520
	.field  	120,16			; _Commands[18]._HelpStr[55] @ 27536
	.field  	61,16			; _Commands[18]._HelpStr[56] @ 27552
	.field  	48,16			; _Commands[18]._HelpStr[57] @ 27568
	.field  	44,16			; _Commands[18]._HelpStr[58] @ 27584
	.field  	49,16			; _Commands[18]._HelpStr[59] @ 27600
	.field  	0,16			; _Commands[18]._HelpStr[60] @ 27616
	.space	304
	.field  	_EnableNoisRemovalFunc,32		; _Commands[18]._CLIFunc @ 27936
	.field  	69,16			; _Commands[19]._Prompt[0] @ 27968
	.field  	78,16			; _Commands[19]._Prompt[1] @ 27984
	.field  	66,16			; _Commands[19]._Prompt[2] @ 28000
	.field  	82,16			; _Commands[19]._Prompt[3] @ 28016
	.field  	79,16			; _Commands[19]._Prompt[4] @ 28032
	.field  	85,16			; _Commands[19]._Prompt[5] @ 28048
	.field  	71,16			; _Commands[19]._Prompt[6] @ 28064
	.field  	72,16			; _Commands[19]._Prompt[7] @ 28080
	.field  	0,16			; _Commands[19]._Prompt[8] @ 28096
	.space	16
	.field  	69,16			; _Commands[19]._HelpStr[0] @ 28128
	.field  	78,16			; _Commands[19]._HelpStr[1] @ 28144
	.field  	66,16			; _Commands[19]._HelpStr[2] @ 28160
	.field  	82,16			; _Commands[19]._HelpStr[3] @ 28176
	.field  	79,16			; _Commands[19]._HelpStr[4] @ 28192
	.field  	85,16			; _Commands[19]._HelpStr[5] @ 28208
	.field  	71,16			; _Commands[19]._HelpStr[6] @ 28224
	.field  	72,16			; _Commands[19]._HelpStr[7] @ 28240
	.field  	61,16			; _Commands[19]._HelpStr[8] @ 28256
	.field  	120,16			; _Commands[19]._HelpStr[9] @ 28272
	.field  	32,16			; _Commands[19]._HelpStr[10] @ 28288
	.field  	32,16			; _Commands[19]._HelpStr[11] @ 28304
	.field  	32,16			; _Commands[19]._HelpStr[12] @ 28320
	.field  	32,16			; _Commands[19]._HelpStr[13] @ 28336
	.field  	32,16			; _Commands[19]._HelpStr[14] @ 28352
	.field  	32,16			; _Commands[19]._HelpStr[15] @ 28368
	.field  	32,16			; _Commands[19]._HelpStr[16] @ 28384
	.field  	32,16			; _Commands[19]._HelpStr[17] @ 28400
	.field  	32,16			; _Commands[19]._HelpStr[18] @ 28416
	.field  	32,16			; _Commands[19]._HelpStr[19] @ 28432
	.field  	32,16			; _Commands[19]._HelpStr[20] @ 28448
	.field  	32,16			; _Commands[19]._HelpStr[21] @ 28464
	.field  	32,16			; _Commands[19]._HelpStr[22] @ 28480
	.field  	32,16			; _Commands[19]._HelpStr[23] @ 28496
	.field  	69,16			; _Commands[19]._HelpStr[24] @ 28512
	.field  	78,16			; _Commands[19]._HelpStr[25] @ 28528
	.field  	65,16			; _Commands[19]._HelpStr[26] @ 28544
	.field  	66,16			; _Commands[19]._HelpStr[27] @ 28560
	.field  	76,16			; _Commands[19]._HelpStr[28] @ 28576
	.field  	69,16			; _Commands[19]._HelpStr[29] @ 28592
	.field  	32,16			; _Commands[19]._HelpStr[30] @ 28608
	.field  	84,16			; _Commands[19]._HelpStr[31] @ 28624
	.field  	72,16			; _Commands[19]._HelpStr[32] @ 28640
	.field  	69,16			; _Commands[19]._HelpStr[33] @ 28656
	.field  	32,16			; _Commands[19]._HelpStr[34] @ 28672
	.field  	82,16			; _Commands[19]._HelpStr[35] @ 28688
	.field  	79,16			; _Commands[19]._HelpStr[36] @ 28704
	.field  	85,16			; _Commands[19]._HelpStr[37] @ 28720
	.field  	71,16			; _Commands[19]._HelpStr[38] @ 28736
	.field  	72,16			; _Commands[19]._HelpStr[39] @ 28752
	.field  	32,16			; _Commands[19]._HelpStr[40] @ 28768
	.field  	67,16			; _Commands[19]._HelpStr[41] @ 28784
	.field  	65,16			; _Commands[19]._HelpStr[42] @ 28800
	.field  	76,16			; _Commands[19]._HelpStr[43] @ 28816
	.field  	32,16			; _Commands[19]._HelpStr[44] @ 28832
	.field  	85,16			; _Commands[19]._HelpStr[45] @ 28848
	.field  	83,16			; _Commands[19]._HelpStr[46] @ 28864
	.field  	69,16			; _Commands[19]._HelpStr[47] @ 28880
	.field  	32,16			; _Commands[19]._HelpStr[48] @ 28896
	.field  	73,16			; _Commands[19]._HelpStr[49] @ 28912
	.field  	78,16			; _Commands[19]._HelpStr[50] @ 28928
	.field  	32,16			; _Commands[19]._HelpStr[51] @ 28944
	.field  	70,16			; _Commands[19]._HelpStr[52] @ 28960
	.field  	73,16			; _Commands[19]._HelpStr[53] @ 28976
	.field  	78,16			; _Commands[19]._HelpStr[54] @ 28992
	.field  	69,16			; _Commands[19]._HelpStr[55] @ 29008
	.field  	32,16			; _Commands[19]._HelpStr[56] @ 29024
	.field  	67,16			; _Commands[19]._HelpStr[57] @ 29040
	.field  	65,16			; _Commands[19]._HelpStr[58] @ 29056
	.field  	76,16			; _Commands[19]._HelpStr[59] @ 29072
	.field  	32,16			; _Commands[19]._HelpStr[60] @ 29088
	.field  	120,16			; _Commands[19]._HelpStr[61] @ 29104
	.field  	61,16			; _Commands[19]._HelpStr[62] @ 29120
	.field  	48,16			; _Commands[19]._HelpStr[63] @ 29136
	.field  	44,16			; _Commands[19]._HelpStr[64] @ 29152
	.field  	49,16			; _Commands[19]._HelpStr[65] @ 29168
	.field  	0,16			; _Commands[19]._HelpStr[66] @ 29184
	.space	208
	.field  	_EnableCheckRoughCalFunc,32		; _Commands[19]._CLIFunc @ 29408
	.field  	70,16			; _Commands[20]._Prompt[0] @ 29440
	.field  	73,16			; _Commands[20]._Prompt[1] @ 29456
	.field  	76,16			; _Commands[20]._Prompt[2] @ 29472
	.field  	84,16			; _Commands[20]._Prompt[3] @ 29488
	.field  	69,16			; _Commands[20]._Prompt[4] @ 29504
	.field  	82,16			; _Commands[20]._Prompt[5] @ 29520
	.field  	0,16			; _Commands[20]._Prompt[6] @ 29536
	.space	48
	.field  	70,16			; _Commands[20]._HelpStr[0] @ 29600
	.field  	73,16			; _Commands[20]._HelpStr[1] @ 29616
	.field  	76,16			; _Commands[20]._HelpStr[2] @ 29632
	.field  	84,16			; _Commands[20]._HelpStr[3] @ 29648
	.field  	69,16			; _Commands[20]._HelpStr[4] @ 29664
	.field  	82,16			; _Commands[20]._HelpStr[5] @ 29680
	.field  	61,16			; _Commands[20]._HelpStr[6] @ 29696
	.field  	120,16			; _Commands[20]._HelpStr[7] @ 29712
	.field  	120,16			; _Commands[20]._HelpStr[8] @ 29728
	.field  	120,16			; _Commands[20]._HelpStr[9] @ 29744
	.field  	32,16			; _Commands[20]._HelpStr[10] @ 29760
	.field  	32,16			; _Commands[20]._HelpStr[11] @ 29776
	.field  	32,16			; _Commands[20]._HelpStr[12] @ 29792
	.field  	32,16			; _Commands[20]._HelpStr[13] @ 29808
	.field  	32,16			; _Commands[20]._HelpStr[14] @ 29824
	.field  	32,16			; _Commands[20]._HelpStr[15] @ 29840
	.field  	32,16			; _Commands[20]._HelpStr[16] @ 29856
	.field  	32,16			; _Commands[20]._HelpStr[17] @ 29872
	.field  	32,16			; _Commands[20]._HelpStr[18] @ 29888
	.field  	32,16			; _Commands[20]._HelpStr[19] @ 29904
	.field  	32,16			; _Commands[20]._HelpStr[20] @ 29920
	.field  	32,16			; _Commands[20]._HelpStr[21] @ 29936
	.field  	32,16			; _Commands[20]._HelpStr[22] @ 29952
	.field  	32,16			; _Commands[20]._HelpStr[23] @ 29968
	.field  	70,16			; _Commands[20]._HelpStr[24] @ 29984
	.field  	73,16			; _Commands[20]._HelpStr[25] @ 30000
	.field  	76,16			; _Commands[20]._HelpStr[26] @ 30016
	.field  	84,16			; _Commands[20]._HelpStr[27] @ 30032
	.field  	69,16			; _Commands[20]._HelpStr[28] @ 30048
	.field  	82,16			; _Commands[20]._HelpStr[29] @ 30064
	.field  	32,16			; _Commands[20]._HelpStr[30] @ 30080
	.field  	73,16			; _Commands[20]._HelpStr[31] @ 30096
	.field  	78,16			; _Commands[20]._HelpStr[32] @ 30112
	.field  	80,16			; _Commands[20]._HelpStr[33] @ 30128
	.field  	85,16			; _Commands[20]._HelpStr[34] @ 30144
	.field  	84,16			; _Commands[20]._HelpStr[35] @ 30160
	.field  	83,16			; _Commands[20]._HelpStr[36] @ 30176
	.field  	46,16			; _Commands[20]._HelpStr[37] @ 30192
	.field  	32,16			; _Commands[20]._HelpStr[38] @ 30208
	.field  	69,16			; _Commands[20]._HelpStr[39] @ 30224
	.field  	78,16			; _Commands[20]._HelpStr[40] @ 30240
	.field  	84,16			; _Commands[20]._HelpStr[41] @ 30256
	.field  	69,16			; _Commands[20]._HelpStr[42] @ 30272
	.field  	82,16			; _Commands[20]._HelpStr[43] @ 30288
	.field  	32,16			; _Commands[20]._HelpStr[44] @ 30304
	.field  	65,16			; _Commands[20]._HelpStr[45] @ 30320
	.field  	32,16			; _Commands[20]._HelpStr[46] @ 30336
	.field  	86,16			; _Commands[20]._HelpStr[47] @ 30352
	.field  	65,16			; _Commands[20]._HelpStr[48] @ 30368
	.field  	76,16			; _Commands[20]._HelpStr[49] @ 30384
	.field  	85,16			; _Commands[20]._HelpStr[50] @ 30400
	.field  	69,16			; _Commands[20]._HelpStr[51] @ 30416
	.field  	32,16			; _Commands[20]._HelpStr[52] @ 30432
	.field  	49,16			; _Commands[20]._HelpStr[53] @ 30448
	.field  	32,16			; _Commands[20]._HelpStr[54] @ 30464
	.field  	116,16			; _Commands[20]._HelpStr[55] @ 30480
	.field  	111,16			; _Commands[20]._HelpStr[56] @ 30496
	.field  	32,16			; _Commands[20]._HelpStr[57] @ 30512
	.field  	49,16			; _Commands[20]._HelpStr[58] @ 30528
	.field  	48,16			; _Commands[20]._HelpStr[59] @ 30544
	.field  	48,16			; _Commands[20]._HelpStr[60] @ 30560
	.field  	48,16			; _Commands[20]._HelpStr[61] @ 30576
	.field  	0,16			; _Commands[20]._HelpStr[62] @ 30592
	.space	272
	.field  	_FilterValFunc,32		; _Commands[20]._CLIFunc @ 30880
	.field  	83,16			; _Commands[21]._Prompt[0] @ 30912
	.field  	69,16			; _Commands[21]._Prompt[1] @ 30928
	.field  	76,16			; _Commands[21]._Prompt[2] @ 30944
	.field  	67,16			; _Commands[21]._Prompt[3] @ 30960
	.field  	72,16			; _Commands[21]._Prompt[4] @ 30976
	.field  	0,16			; _Commands[21]._Prompt[5] @ 30992
	.space	64
	.field  	83,16			; _Commands[21]._HelpStr[0] @ 31072
	.field  	69,16			; _Commands[21]._HelpStr[1] @ 31088
	.field  	76,16			; _Commands[21]._HelpStr[2] @ 31104
	.field  	67,16			; _Commands[21]._HelpStr[3] @ 31120
	.field  	72,16			; _Commands[21]._HelpStr[4] @ 31136
	.field  	61,16			; _Commands[21]._HelpStr[5] @ 31152
	.field  	120,16			; _Commands[21]._HelpStr[6] @ 31168
	.field  	120,16			; _Commands[21]._HelpStr[7] @ 31184
	.field  	32,16			; _Commands[21]._HelpStr[8] @ 31200
	.field  	32,16			; _Commands[21]._HelpStr[9] @ 31216
	.field  	32,16			; _Commands[21]._HelpStr[10] @ 31232
	.field  	32,16			; _Commands[21]._HelpStr[11] @ 31248
	.field  	32,16			; _Commands[21]._HelpStr[12] @ 31264
	.field  	32,16			; _Commands[21]._HelpStr[13] @ 31280
	.field  	32,16			; _Commands[21]._HelpStr[14] @ 31296
	.field  	32,16			; _Commands[21]._HelpStr[15] @ 31312
	.field  	32,16			; _Commands[21]._HelpStr[16] @ 31328
	.field  	32,16			; _Commands[21]._HelpStr[17] @ 31344
	.field  	32,16			; _Commands[21]._HelpStr[18] @ 31360
	.field  	32,16			; _Commands[21]._HelpStr[19] @ 31376
	.field  	32,16			; _Commands[21]._HelpStr[20] @ 31392
	.field  	32,16			; _Commands[21]._HelpStr[21] @ 31408
	.field  	32,16			; _Commands[21]._HelpStr[22] @ 31424
	.field  	32,16			; _Commands[21]._HelpStr[23] @ 31440
	.field  	69,16			; _Commands[21]._HelpStr[24] @ 31456
	.field  	78,16			; _Commands[21]._HelpStr[25] @ 31472
	.field  	84,16			; _Commands[21]._HelpStr[26] @ 31488
	.field  	69,16			; _Commands[21]._HelpStr[27] @ 31504
	.field  	82,16			; _Commands[21]._HelpStr[28] @ 31520
	.field  	32,16			; _Commands[21]._HelpStr[29] @ 31536
	.field  	86,16			; _Commands[21]._HelpStr[30] @ 31552
	.field  	65,16			; _Commands[21]._HelpStr[31] @ 31568
	.field  	76,16			; _Commands[21]._HelpStr[32] @ 31584
	.field  	85,16			; _Commands[21]._HelpStr[33] @ 31600
	.field  	69,16			; _Commands[21]._HelpStr[34] @ 31616
	.field  	32,16			; _Commands[21]._HelpStr[35] @ 31632
	.field  	84,16			; _Commands[21]._HelpStr[36] @ 31648
	.field  	79,16			; _Commands[21]._HelpStr[37] @ 31664
	.field  	32,16			; _Commands[21]._HelpStr[38] @ 31680
	.field  	83,16			; _Commands[21]._HelpStr[39] @ 31696
	.field  	69,16			; _Commands[21]._HelpStr[40] @ 31712
	.field  	76,16			; _Commands[21]._HelpStr[41] @ 31728
	.field  	69,16			; _Commands[21]._HelpStr[42] @ 31744
	.field  	67,16			; _Commands[21]._HelpStr[43] @ 31760
	.field  	84,16			; _Commands[21]._HelpStr[44] @ 31776
	.field  	32,16			; _Commands[21]._HelpStr[45] @ 31792
	.field  	65,16			; _Commands[21]._HelpStr[46] @ 31808
	.field  	32,16			; _Commands[21]._HelpStr[47] @ 31824
	.field  	67,16			; _Commands[21]._HelpStr[48] @ 31840
	.field  	72,16			; _Commands[21]._HelpStr[49] @ 31856
	.field  	65,16			; _Commands[21]._HelpStr[50] @ 31872
	.field  	78,16			; _Commands[21]._HelpStr[51] @ 31888
	.field  	78,16			; _Commands[21]._HelpStr[52] @ 31904
	.field  	69,16			; _Commands[21]._HelpStr[53] @ 31920
	.field  	76,16			; _Commands[21]._HelpStr[54] @ 31936
	.field  	32,16			; _Commands[21]._HelpStr[55] @ 31952
	.field  	49,16			; _Commands[21]._HelpStr[56] @ 31968
	.field  	32,16			; _Commands[21]._HelpStr[57] @ 31984
	.field  	116,16			; _Commands[21]._HelpStr[58] @ 32000
	.field  	111,16			; _Commands[21]._HelpStr[59] @ 32016
	.field  	32,16			; _Commands[21]._HelpStr[60] @ 32032
	.field  	50,16			; _Commands[21]._HelpStr[61] @ 32048
	.field  	56,16			; _Commands[21]._HelpStr[62] @ 32064
	.field  	0,16			; _Commands[21]._HelpStr[63] @ 32080
	.space	256
	.field  	_SelectChannelFunc,32		; _Commands[21]._CLIFunc @ 32352
	.field  	67,16			; _Commands[22]._Prompt[0] @ 32384
	.field  	72,16			; _Commands[22]._Prompt[1] @ 32400
	.field  	86,16			; _Commands[22]._Prompt[2] @ 32416
	.field  	65,16			; _Commands[22]._Prompt[3] @ 32432
	.field  	76,16			; _Commands[22]._Prompt[4] @ 32448
	.field  	0,16			; _Commands[22]._Prompt[5] @ 32464
	.space	64
	.field  	67,16			; _Commands[22]._HelpStr[0] @ 32544
	.field  	72,16			; _Commands[22]._HelpStr[1] @ 32560
	.field  	86,16			; _Commands[22]._HelpStr[2] @ 32576
	.field  	65,16			; _Commands[22]._HelpStr[3] @ 32592
	.field  	76,16			; _Commands[22]._HelpStr[4] @ 32608
	.field  	61,16			; _Commands[22]._HelpStr[5] @ 32624
	.field  	120,16			; _Commands[22]._HelpStr[6] @ 32640
	.field  	120,16			; _Commands[22]._HelpStr[7] @ 32656
	.field  	120,16			; _Commands[22]._HelpStr[8] @ 32672
	.field  	120,16			; _Commands[22]._HelpStr[9] @ 32688
	.field  	32,16			; _Commands[22]._HelpStr[10] @ 32704
	.field  	32,16			; _Commands[22]._HelpStr[11] @ 32720
	.field  	32,16			; _Commands[22]._HelpStr[12] @ 32736
	.field  	32,16			; _Commands[22]._HelpStr[13] @ 32752
	.field  	32,16			; _Commands[22]._HelpStr[14] @ 32768
	.field  	32,16			; _Commands[22]._HelpStr[15] @ 32784
	.field  	32,16			; _Commands[22]._HelpStr[16] @ 32800
	.field  	32,16			; _Commands[22]._HelpStr[17] @ 32816
	.field  	32,16			; _Commands[22]._HelpStr[18] @ 32832
	.field  	32,16			; _Commands[22]._HelpStr[19] @ 32848
	.field  	32,16			; _Commands[22]._HelpStr[20] @ 32864
	.field  	32,16			; _Commands[22]._HelpStr[21] @ 32880
	.field  	32,16			; _Commands[22]._HelpStr[22] @ 32896
	.field  	32,16			; _Commands[22]._HelpStr[23] @ 32912
	.field  	69,16			; _Commands[22]._HelpStr[24] @ 32928
	.field  	78,16			; _Commands[22]._HelpStr[25] @ 32944
	.field  	84,16			; _Commands[22]._HelpStr[26] @ 32960
	.field  	69,16			; _Commands[22]._HelpStr[27] @ 32976
	.field  	82,16			; _Commands[22]._HelpStr[28] @ 32992
	.field  	32,16			; _Commands[22]._HelpStr[29] @ 33008
	.field  	86,16			; _Commands[22]._HelpStr[30] @ 33024
	.field  	65,16			; _Commands[22]._HelpStr[31] @ 33040
	.field  	76,16			; _Commands[22]._HelpStr[32] @ 33056
	.field  	85,16			; _Commands[22]._HelpStr[33] @ 33072
	.field  	69,16			; _Commands[22]._HelpStr[34] @ 33088
	.field  	32,16			; _Commands[22]._HelpStr[35] @ 33104
	.field  	70,16			; _Commands[22]._HelpStr[36] @ 33120
	.field  	79,16			; _Commands[22]._HelpStr[37] @ 33136
	.field  	82,16			; _Commands[22]._HelpStr[38] @ 33152
	.field  	32,16			; _Commands[22]._HelpStr[39] @ 33168
	.field  	83,16			; _Commands[22]._HelpStr[40] @ 33184
	.field  	69,16			; _Commands[22]._HelpStr[41] @ 33200
	.field  	76,16			; _Commands[22]._HelpStr[42] @ 33216
	.field  	69,16			; _Commands[22]._HelpStr[43] @ 33232
	.field  	67,16			; _Commands[22]._HelpStr[44] @ 33248
	.field  	84,16			; _Commands[22]._HelpStr[45] @ 33264
	.field  	69,16			; _Commands[22]._HelpStr[46] @ 33280
	.field  	68,16			; _Commands[22]._HelpStr[47] @ 33296
	.field  	32,16			; _Commands[22]._HelpStr[48] @ 33312
	.field  	67,16			; _Commands[22]._HelpStr[49] @ 33328
	.field  	72,16			; _Commands[22]._HelpStr[50] @ 33344
	.field  	65,16			; _Commands[22]._HelpStr[51] @ 33360
	.field  	78,16			; _Commands[22]._HelpStr[52] @ 33376
	.field  	78,16			; _Commands[22]._HelpStr[53] @ 33392
	.field  	69,16			; _Commands[22]._HelpStr[54] @ 33408
	.field  	76,16			; _Commands[22]._HelpStr[55] @ 33424
	.field  	32,16			; _Commands[22]._HelpStr[56] @ 33440
	.field  	40,16			; _Commands[22]._HelpStr[57] @ 33456
	.field  	52,16			; _Commands[22]._HelpStr[58] @ 33472
	.field  	32,16			; _Commands[22]._HelpStr[59] @ 33488
	.field  	68,16			; _Commands[22]._HelpStr[60] @ 33504
	.field  	73,16			; _Commands[22]._HelpStr[61] @ 33520
	.field  	71,16			; _Commands[22]._HelpStr[62] @ 33536
	.field  	73,16			; _Commands[22]._HelpStr[63] @ 33552
	.field  	84,16			; _Commands[22]._HelpStr[64] @ 33568
	.field  	83,16			; _Commands[22]._HelpStr[65] @ 33584
	.field  	41,16			; _Commands[22]._HelpStr[66] @ 33600
	.field  	0,16			; _Commands[22]._HelpStr[67] @ 33616
	.space	192
	.field  	_SetCHValFunc,32		; _Commands[22]._CLIFunc @ 33824
	.field  	68,16			; _Commands[23]._Prompt[0] @ 33856
	.field  	69,16			; _Commands[23]._Prompt[1] @ 33872
	.field  	66,16			; _Commands[23]._Prompt[2] @ 33888
	.field  	85,16			; _Commands[23]._Prompt[3] @ 33904
	.field  	71,16			; _Commands[23]._Prompt[4] @ 33920
	.field  	0,16			; _Commands[23]._Prompt[5] @ 33936
	.space	64
	.field  	68,16			; _Commands[23]._HelpStr[0] @ 34016
	.field  	69,16			; _Commands[23]._HelpStr[1] @ 34032
	.field  	66,16			; _Commands[23]._HelpStr[2] @ 34048
	.field  	85,16			; _Commands[23]._HelpStr[3] @ 34064
	.field  	71,16			; _Commands[23]._HelpStr[4] @ 34080
	.field  	61,16			; _Commands[23]._HelpStr[5] @ 34096
	.field  	120,16			; _Commands[23]._HelpStr[6] @ 34112
	.field  	32,16			; _Commands[23]._HelpStr[7] @ 34128
	.field  	32,16			; _Commands[23]._HelpStr[8] @ 34144
	.field  	32,16			; _Commands[23]._HelpStr[9] @ 34160
	.field  	32,16			; _Commands[23]._HelpStr[10] @ 34176
	.field  	32,16			; _Commands[23]._HelpStr[11] @ 34192
	.field  	32,16			; _Commands[23]._HelpStr[12] @ 34208
	.field  	32,16			; _Commands[23]._HelpStr[13] @ 34224
	.field  	32,16			; _Commands[23]._HelpStr[14] @ 34240
	.field  	32,16			; _Commands[23]._HelpStr[15] @ 34256
	.field  	32,16			; _Commands[23]._HelpStr[16] @ 34272
	.field  	32,16			; _Commands[23]._HelpStr[17] @ 34288
	.field  	32,16			; _Commands[23]._HelpStr[18] @ 34304
	.field  	32,16			; _Commands[23]._HelpStr[19] @ 34320
	.field  	32,16			; _Commands[23]._HelpStr[20] @ 34336
	.field  	32,16			; _Commands[23]._HelpStr[21] @ 34352
	.field  	32,16			; _Commands[23]._HelpStr[22] @ 34368
	.field  	32,16			; _Commands[23]._HelpStr[23] @ 34384
	.field  	49,16			; _Commands[23]._HelpStr[24] @ 34400
	.field  	61,16			; _Commands[23]._HelpStr[25] @ 34416
	.field  	69,16			; _Commands[23]._HelpStr[26] @ 34432
	.field  	78,16			; _Commands[23]._HelpStr[27] @ 34448
	.field  	65,16			; _Commands[23]._HelpStr[28] @ 34464
	.field  	66,16			; _Commands[23]._HelpStr[29] @ 34480
	.field  	76,16			; _Commands[23]._HelpStr[30] @ 34496
	.field  	69,16			; _Commands[23]._HelpStr[31] @ 34512
	.field  	44,16			; _Commands[23]._HelpStr[32] @ 34528
	.field  	48,16			; _Commands[23]._HelpStr[33] @ 34544
	.field  	61,16			; _Commands[23]._HelpStr[34] @ 34560
	.field  	68,16			; _Commands[23]._HelpStr[35] @ 34576
	.field  	73,16			; _Commands[23]._HelpStr[36] @ 34592
	.field  	83,16			; _Commands[23]._HelpStr[37] @ 34608
	.field  	65,16			; _Commands[23]._HelpStr[38] @ 34624
	.field  	66,16			; _Commands[23]._HelpStr[39] @ 34640
	.field  	76,16			; _Commands[23]._HelpStr[40] @ 34656
	.field  	69,16			; _Commands[23]._HelpStr[41] @ 34672
	.field  	0,16			; _Commands[23]._HelpStr[42] @ 34688
	.space	592
	.field  	_DebugSerialFunc,32		; _Commands[23]._CLIFunc @ 35296
	.field  	67,16			; _Commands[24]._Prompt[0] @ 35328
	.field  	65,16			; _Commands[24]._Prompt[1] @ 35344
	.field  	76,16			; _Commands[24]._Prompt[2] @ 35360
	.field  	76,16			; _Commands[24]._Prompt[3] @ 35376
	.field  	79,16			; _Commands[24]._Prompt[4] @ 35392
	.field  	79,16			; _Commands[24]._Prompt[5] @ 35408
	.field  	80,16			; _Commands[24]._Prompt[6] @ 35424
	.field  	0,16			; _Commands[24]._Prompt[7] @ 35440
	.space	32
	.field  	67,16			; _Commands[24]._HelpStr[0] @ 35488
	.field  	65,16			; _Commands[24]._HelpStr[1] @ 35504
	.field  	76,16			; _Commands[24]._HelpStr[2] @ 35520
	.field  	76,16			; _Commands[24]._HelpStr[3] @ 35536
	.field  	79,16			; _Commands[24]._HelpStr[4] @ 35552
	.field  	79,16			; _Commands[24]._HelpStr[5] @ 35568
	.field  	80,16			; _Commands[24]._HelpStr[6] @ 35584
	.field  	61,16			; _Commands[24]._HelpStr[7] @ 35600
	.field  	120,16			; _Commands[24]._HelpStr[8] @ 35616
	.field  	32,16			; _Commands[24]._HelpStr[9] @ 35632
	.field  	32,16			; _Commands[24]._HelpStr[10] @ 35648
	.field  	32,16			; _Commands[24]._HelpStr[11] @ 35664
	.field  	32,16			; _Commands[24]._HelpStr[12] @ 35680
	.field  	32,16			; _Commands[24]._HelpStr[13] @ 35696
	.field  	32,16			; _Commands[24]._HelpStr[14] @ 35712
	.field  	32,16			; _Commands[24]._HelpStr[15] @ 35728
	.field  	32,16			; _Commands[24]._HelpStr[16] @ 35744
	.field  	32,16			; _Commands[24]._HelpStr[17] @ 35760
	.field  	32,16			; _Commands[24]._HelpStr[18] @ 35776
	.field  	32,16			; _Commands[24]._HelpStr[19] @ 35792
	.field  	32,16			; _Commands[24]._HelpStr[20] @ 35808
	.field  	32,16			; _Commands[24]._HelpStr[21] @ 35824
	.field  	32,16			; _Commands[24]._HelpStr[22] @ 35840
	.field  	32,16			; _Commands[24]._HelpStr[23] @ 35856
	.field  	69,16			; _Commands[24]._HelpStr[24] @ 35872
	.field  	78,16			; _Commands[24]._HelpStr[25] @ 35888
	.field  	84,16			; _Commands[24]._HelpStr[26] @ 35904
	.field  	69,16			; _Commands[24]._HelpStr[27] @ 35920
	.field  	82,16			; _Commands[24]._HelpStr[28] @ 35936
	.field  	32,16			; _Commands[24]._HelpStr[29] @ 35952
	.field  	49,16			; _Commands[24]._HelpStr[30] @ 35968
	.field  	32,16			; _Commands[24]._HelpStr[31] @ 35984
	.field  	84,16			; _Commands[24]._HelpStr[32] @ 36000
	.field  	79,16			; _Commands[24]._HelpStr[33] @ 36016
	.field  	32,16			; _Commands[24]._HelpStr[34] @ 36032
	.field  	56,16			; _Commands[24]._HelpStr[35] @ 36048
	.field  	32,16			; _Commands[24]._HelpStr[36] @ 36064
	.field  	70,16			; _Commands[24]._HelpStr[37] @ 36080
	.field  	79,16			; _Commands[24]._HelpStr[38] @ 36096
	.field  	82,16			; _Commands[24]._HelpStr[39] @ 36112
	.field  	32,16			; _Commands[24]._HelpStr[40] @ 36128
	.field  	49,16			; _Commands[24]._HelpStr[41] @ 36144
	.field  	56,16			; _Commands[24]._HelpStr[42] @ 36160
	.field  	109,16			; _Commands[24]._HelpStr[43] @ 36176
	.field  	65,16			; _Commands[24]._HelpStr[44] @ 36192
	.field  	32,16			; _Commands[24]._HelpStr[45] @ 36208
	.field  	76,16			; _Commands[24]._HelpStr[46] @ 36224
	.field  	79,16			; _Commands[24]._HelpStr[47] @ 36240
	.field  	79,16			; _Commands[24]._HelpStr[48] @ 36256
	.field  	80,16			; _Commands[24]._HelpStr[49] @ 36272
	.field  	32,16			; _Commands[24]._HelpStr[50] @ 36288
	.field  	67,16			; _Commands[24]._HelpStr[51] @ 36304
	.field  	65,16			; _Commands[24]._HelpStr[52] @ 36320
	.field  	76,16			; _Commands[24]._HelpStr[53] @ 36336
	.field  	73,16			; _Commands[24]._HelpStr[54] @ 36352
	.field  	66,16			; _Commands[24]._HelpStr[55] @ 36368
	.field  	82,16			; _Commands[24]._HelpStr[56] @ 36384
	.field  	65,16			; _Commands[24]._HelpStr[57] @ 36400
	.field  	84,16			; _Commands[24]._HelpStr[58] @ 36416
	.field  	73,16			; _Commands[24]._HelpStr[59] @ 36432
	.field  	79,16			; _Commands[24]._HelpStr[60] @ 36448
	.field  	78,16			; _Commands[24]._HelpStr[61] @ 36464
	.field  	0,16			; _Commands[24]._HelpStr[62] @ 36480
	.space	272
	.field  	_CalLoop18mAFunc,32		; _Commands[24]._CLIFunc @ 36768
	.field  	0,16			; _Commands[25]._Prompt[0] @ 36800
	.space	144
	.field  	0,16			; _Commands[25]._HelpStr[0] @ 36960
	.space	1264
	.field  	0,32			; _Commands[25]._CLIFunc @ 38240

DW$94	.dwtag  DW_TAG_variable, DW_AT_name("Commands"), DW_AT_symbol_name("_Commands")
	.dwattr DW$94, DW_AT_location[DW_OP_addr _Commands]
	.dwattr DW$94, DW_AT_type(*DW$T$214)
	.dwattr DW$94, DW_AT_external(0x01)
	.global	_e
_e:	.usect	".ebss",10,1,1
DW$95	.dwtag  DW_TAG_variable, DW_AT_name("e"), DW_AT_symbol_name("_e")
	.dwattr DW$95, DW_AT_location[DW_OP_addr _e]
	.dwattr DW$95, DW_AT_type(*DW$T$225)
	.dwattr DW$95, DW_AT_external(0x01)
	.global	_prompt
_prompt:	.usect	".ebss",2,1,1
DW$96	.dwtag  DW_TAG_variable, DW_AT_name("prompt"), DW_AT_symbol_name("_prompt")
	.dwattr DW$96, DW_AT_location[DW_OP_addr _prompt]
	.dwattr DW$96, DW_AT_type(*DW$T$104)
	.dwattr DW$96, DW_AT_external(0x01)
;	C:\CCStudio_v3.3\C2000\cgtools\bin\opt2000.exe C:\Users\Andrew\AppData\Local\Temp\TI8282 C:\Users\Andrew\AppData\Local\Temp\TI8284 
;	C:\CCStudio_v3.3\C2000\cgtools\bin\ac2000.exe -q -D_INLINE -DLARGE_MODEL -IC:/CCStudio_v3.3/C2000/xdais/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/bios/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/rtdx/include/c2000 -IC:/CCStudio_v3.3/C2000/cgtools/include --version=28 --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\Andrew\AppData\Local\Temp\TI8282 --template_info_file C:\Users\Andrew\AppData\Local\Temp\TI8286 --object_file 
	.sect	".text"
	.global	_DummyFunc

DW$97	.dwtag  DW_TAG_subprogram, DW_AT_name("DummyFunc"), DW_AT_symbol_name("_DummyFunc")
	.dwattr DW$97, DW_AT_low_pc(_DummyFunc)
	.dwattr DW$97, DW_AT_high_pc(0x00)
	.dwattr DW$97, DW_AT_begin_file("pccli.c")
	.dwattr DW$97, DW_AT_begin_line(0xde)
	.dwattr DW$97, DW_AT_begin_column(0x06)
	.dwattr DW$97, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$97, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",223,1

;***************************************************************
;* FNAME: _DummyFunc                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_DummyFunc:
        LRETR
        ; return occurs
	.dwattr DW$97, DW_AT_end_file("pccli.c")
	.dwattr DW$97, DW_AT_end_line(0xe0)
	.dwattr DW$97, DW_AT_end_column(0x01)
	.dwendtag DW$97

	.sect	".text"
	.global	_SetupCLI

DW$98	.dwtag  DW_TAG_subprogram, DW_AT_name("SetupCLI"), DW_AT_symbol_name("_SetupCLI")
	.dwattr DW$98, DW_AT_low_pc(_SetupCLI)
	.dwattr DW$98, DW_AT_high_pc(0x00)
	.dwattr DW$98, DW_AT_begin_file("pccli.c")
	.dwattr DW$98, DW_AT_begin_line(0xee)
	.dwattr DW$98, DW_AT_begin_column(0x06)
	.dwattr DW$98, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$98, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",239,1

;***************************************************************
;* FNAME: _SetupCLI                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SetupCLI:
        MOVL      XAR4,#_cmdbuf         ; |240| 
        MOVW      DP,#_cmdbufptr
        MOVB      ACC,#32
        MOVL      @_cmdbufptr,XAR4      ; |240| 
        MOVW      DP,#_eocmdbuf
        ADDL      ACC,XAR4
        MOVL      @_eocmdbuf,ACC        ; |241| 
        LCR       #_CLIBanner           ; |242| 
        ; call occurs [#_CLIBanner] ; |242| 
        MOVW      DP,#_confirmation
        MOV       @_confirmation,#0     ; |243| 
	.dwpsn	"pccli.c",244,1
        LRETR
        ; return occurs
	.dwattr DW$98, DW_AT_end_file("pccli.c")
	.dwattr DW$98, DW_AT_end_line(0xf4)
	.dwattr DW$98, DW_AT_end_column(0x01)
	.dwendtag DW$98

	.sect	".text"
	.global	_CLIBanner

DW$99	.dwtag  DW_TAG_subprogram, DW_AT_name("CLIBanner"), DW_AT_symbol_name("_CLIBanner")
	.dwattr DW$99, DW_AT_low_pc(_CLIBanner)
	.dwattr DW$99, DW_AT_high_pc(0x00)
	.dwattr DW$99, DW_AT_begin_file("pccli.c")
	.dwattr DW$99, DW_AT_begin_line(0xf8)
	.dwattr DW$99, DW_AT_begin_column(0x06)
	.dwattr DW$99, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$99, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",249,1

;***************************************************************
;* FNAME: _CLIBanner                    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_CLIBanner:
        MOVL      *SP++,XAR3
        ADDB      SP,#2
        MOVL      XAR4,#FSL7            ; |250| 
        MOVL      XAR3,#_stringbuffer   ; |250| 
        MOVL      *-SP[2],XAR4          ; |250| 
        MOVL      XAR4,XAR3             ; |250| 
        LCR       #_sprintf             ; |250| 
        ; call occurs [#_sprintf] ; |250| 
        MOVL      XAR4,XAR3             ; |251| 
        LCR       #_CLITransmitBuffer   ; |251| 
        ; call occurs [#_CLITransmitBuffer] ; |251| 
        MOVL      XAR4,#FSL8            ; |252| 
        MOVL      *-SP[2],XAR4          ; |252| 
        MOVL      XAR4,XAR3             ; |252| 
        LCR       #_sprintf             ; |252| 
        ; call occurs [#_sprintf] ; |252| 
        MOVL      XAR4,XAR3             ; |253| 
        LCR       #_CLITransmitBuffer   ; |253| 
        ; call occurs [#_CLITransmitBuffer] ; |253| 
        MOVL      XAR4,#_version        ; |254| 
        MOVL      *-SP[2],XAR4          ; |254| 
        MOVL      XAR4,XAR3             ; |254| 
        LCR       #_sprintf             ; |254| 
        ; call occurs [#_sprintf] ; |254| 
        MOVL      XAR4,XAR3             ; |255| 
        LCR       #_CLITransmitBuffer   ; |255| 
        ; call occurs [#_CLITransmitBuffer] ; |255| 
        MOVL      XAR4,#FSL6            ; |256| 
        MOVL      *-SP[2],XAR4          ; |256| 
        MOVL      XAR4,XAR3             ; |256| 
        LCR       #_sprintf             ; |256| 
        ; call occurs [#_sprintf] ; |256| 
        MOVL      XAR4,XAR3             ; |257| 
        LCR       #_CLITransmitBuffer   ; |257| 
        ; call occurs [#_CLITransmitBuffer] ; |257| 
        SUBB      SP,#2
        MOVL      XAR3,*--SP
	.dwpsn	"pccli.c",258,1
        LRETR
        ; return occurs
	.dwattr DW$99, DW_AT_end_file("pccli.c")
	.dwattr DW$99, DW_AT_end_line(0x102)
	.dwattr DW$99, DW_AT_end_column(0x01)
	.dwendtag DW$99

	.sect	".text"
	.global	_HelpFunc

DW$100	.dwtag  DW_TAG_subprogram, DW_AT_name("HelpFunc"), DW_AT_symbol_name("_HelpFunc")
	.dwattr DW$100, DW_AT_low_pc(_HelpFunc)
	.dwattr DW$100, DW_AT_high_pc(0x00)
	.dwattr DW$100, DW_AT_begin_file("pccli.c")
	.dwattr DW$100, DW_AT_begin_line(0x105)
	.dwattr DW$100, DW_AT_begin_column(0x06)
	.dwattr DW$100, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$100, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",262,1

;***************************************************************
;* FNAME: _HelpFunc                     FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_HelpFunc:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR3
        ADDB      SP,#4
        MOVL      XAR4,#FSL7            ; |264| 
        MOVL      XAR3,#_stringbuffer   ; |264| 
        MOVL      *-SP[2],XAR4          ; |264| 
        MOVL      XAR4,XAR3             ; |264| 
        LCR       #_sprintf             ; |264| 
        ; call occurs [#_sprintf] ; |264| 
        MOVL      XAR4,XAR3             ; |265| 
        LCR       #_CLITransmitBuffer   ; |265| 
        ; call occurs [#_CLITransmitBuffer] ; |265| 
	.dwpsn	"pccli.c",266,0
        MOVB      XAR1,#0
L1:    
DW$L$_HelpFunc$2$B:
	.dwpsn	"pccli.c",267,0
        MOVL      XAR4,#FSL9            ; |268| 
        MOV       T,AR1                 ; |268| 
        MOVL      *-SP[2],XAR4          ; |268| 
        MPYB      ACC,T,#92             ; |268| 
        MOVL      XAR4,#_Commands+562   ; |268| 
        ADDL      XAR4,ACC
        MOVL      *-SP[4],XAR4          ; |268| 
        MOVL      XAR4,XAR3             ; |268| 
        LCR       #_sprintf             ; |268| 
        ; call occurs [#_sprintf] ; |268| 
        MOVL      XAR4,XAR3             ; |269| 
        LCR       #_CLITransmitBuffer   ; |269| 
        ; call occurs [#_CLITransmitBuffer] ; |269| 
        MOV       AL,AR1                ; |269| 
        ADDB      AL,#1                 ; |266| 
        MOVZ      AR1,AL                ; |266| 
        CMPB      AL,#4                 ; |266| 
	.dwpsn	"pccli.c",270,0
        BF        L1,LT                 ; |266| 
        ; branchcc occurs ; |266| 
DW$L$_HelpFunc$2$E:
        SUBB      SP,#4
        MOVL      XAR3,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"pccli.c",271,1
        LRETR
        ; return occurs

DW$101	.dwtag  DW_TAG_loop
	.dwattr DW$101, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\pccli.asm:L1:1:1471518983")
	.dwattr DW$101, DW_AT_begin_file("pccli.c")
	.dwattr DW$101, DW_AT_begin_line(0x10a)
	.dwattr DW$101, DW_AT_end_line(0x10e)
DW$102	.dwtag  DW_TAG_loop_range
	.dwattr DW$102, DW_AT_low_pc(DW$L$_HelpFunc$2$B)
	.dwattr DW$102, DW_AT_high_pc(DW$L$_HelpFunc$2$E)
	.dwendtag DW$101

	.dwattr DW$100, DW_AT_end_file("pccli.c")
	.dwattr DW$100, DW_AT_end_line(0x10f)
	.dwattr DW$100, DW_AT_end_column(0x01)
	.dwendtag DW$100

	.sect	".text"
	.global	_CommsCheckFunc

DW$103	.dwtag  DW_TAG_subprogram, DW_AT_name("CommsCheckFunc"), DW_AT_symbol_name("_CommsCheckFunc")
	.dwattr DW$103, DW_AT_low_pc(_CommsCheckFunc)
	.dwattr DW$103, DW_AT_high_pc(0x00)
	.dwattr DW$103, DW_AT_begin_file("pccli.c")
	.dwattr DW$103, DW_AT_begin_line(0x120)
	.dwattr DW$103, DW_AT_begin_column(0x06)
	.dwattr DW$103, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$103, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",289,1

;***************************************************************
;* FNAME: _CommsCheckFunc               FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_CommsCheckFunc:
        MOVW      DP,#_CommandOffset
        MOVL      *SP++,XAR3
        MOV       AL,@_CommandOffset    ; |292| 
        MOVW      DP,#_CommandLen
        ADD       AL,@_CommandLen       ; |292| 
        MOVZ      AR0,AL                ; |292| 
        ADDB      SP,#4
        MOVL      XAR4,#_cmdbuf         ; |292| 
        MOV       AL,*+XAR4[AR0]        ; |292| 
        CMPB      AL,#61                ; |292| 
        BF        L2,NEQ                ; |292| 
        ; branchcc occurs ; |292| 
        MOVB      AL,#1                 ; |294| 
        ADD       AL,AR0                ; |294| 
        LCR       #_AsciitoInt          ; |294| 
        ; call occurs [#_AsciitoInt] ; |294| 
        CMPB      AL,#0                 ; |294| 
        BF        L3,NEQ                ; |294| 
        ; branchcc occurs ; |294| 
        LCR       #_ResetCommsCheck     ; |297| 
        ; call occurs [#_ResetCommsCheck] ; |297| 
        LCR       #_WriteConfigStructtoNVMEM ; |298| 
        ; call occurs [#_WriteConfigStructtoNVMEM] ; |298| 
        BF        L3,UNC                ; |298| 
        ; branch occurs ; |298| 
L2:    
        MOVL      XAR4,#FSL10           ; |303| 
        MOVL      XAR3,#_stringbuffer   ; |303| 
        MOVL      *-SP[2],XAR4          ; |303| 
        MOVL      XAR4,XAR3             ; |303| 
        LCR       #_sprintf             ; |303| 
        ; call occurs [#_sprintf] ; |303| 
        MOVL      XAR4,XAR3             ; |303| 
        LCR       #_CLITransmitBuffer   ; |303| 
        ; call occurs [#_CLITransmitBuffer] ; |303| 
        MOVL      XAR4,#FSL11           ; |304| 
        MOVL      *-SP[2],XAR4          ; |304| 
        MOVW      DP,#_config+8
        MOVL      XAR4,XAR3             ; |304| 
        MOVL      ACC,@_config+8        ; |304| 
        MOVL      *-SP[4],ACC           ; |304| 
        LCR       #_sprintf             ; |304| 
        ; call occurs [#_sprintf] ; |304| 
        MOVL      XAR4,XAR3             ; |304| 
        LCR       #_CLITransmitBuffer   ; |304| 
        ; call occurs [#_CLITransmitBuffer] ; |304| 
        MOVL      XAR4,#FSL12           ; |305| 
        MOVL      *-SP[2],XAR4          ; |305| 
        MOVW      DP,#_config+10
        MOVL      XAR4,XAR3             ; |305| 
        MOVL      ACC,@_config+10       ; |305| 
        MOVL      *-SP[4],ACC           ; |305| 
        LCR       #_sprintf             ; |305| 
        ; call occurs [#_sprintf] ; |305| 
        MOVL      XAR4,XAR3             ; |305| 
        LCR       #_CLITransmitBuffer   ; |305| 
        ; call occurs [#_CLITransmitBuffer] ; |305| 
        MOVL      XAR4,#FSL13           ; |306| 
        MOVL      *-SP[2],XAR4          ; |306| 
        MOVW      DP,#_config+12
        MOVL      XAR4,XAR3             ; |306| 
        MOVL      ACC,@_config+12       ; |306| 
        MOVL      *-SP[4],ACC           ; |306| 
        LCR       #_sprintf             ; |306| 
        ; call occurs [#_sprintf] ; |306| 
        MOVL      XAR4,XAR3             ; |306| 
        LCR       #_CLITransmitBuffer   ; |306| 
        ; call occurs [#_CLITransmitBuffer] ; |306| 
        MOVL      XAR4,#FSL14           ; |307| 
        MOVL      *-SP[2],XAR4          ; |307| 
        MOVW      DP,#_config+14
        MOVL      XAR4,XAR3             ; |307| 
        MOVL      ACC,@_config+14       ; |307| 
        MOVL      *-SP[4],ACC           ; |307| 
        LCR       #_sprintf             ; |307| 
        ; call occurs [#_sprintf] ; |307| 
        MOVL      XAR4,XAR3             ; |307| 
        LCR       #_CLITransmitBuffer   ; |307| 
        ; call occurs [#_CLITransmitBuffer] ; |307| 
        MOVL      XAR4,#FSL15           ; |308| 
        MOVL      *-SP[2],XAR4          ; |308| 
        MOVW      DP,#_config+16
        MOVL      XAR4,XAR3             ; |308| 
        MOVL      ACC,@_config+16       ; |308| 
        MOVL      *-SP[4],ACC           ; |308| 
        LCR       #_sprintf             ; |308| 
        ; call occurs [#_sprintf] ; |308| 
        MOVL      XAR4,XAR3             ; |308| 
        LCR       #_CLITransmitBuffer   ; |308| 
        ; call occurs [#_CLITransmitBuffer] ; |308| 
        MOVL      XAR4,#FSL16           ; |309| 
        MOVL      *-SP[2],XAR4          ; |309| 
        MOVW      DP,#_config+18
        MOVL      XAR4,XAR3             ; |309| 
        MOVL      ACC,@_config+18       ; |309| 
        MOVL      *-SP[4],ACC           ; |309| 
        LCR       #_sprintf             ; |309| 
        ; call occurs [#_sprintf] ; |309| 
        MOVL      XAR4,XAR3             ; |309| 
        LCR       #_CLITransmitBuffer   ; |309| 
        ; call occurs [#_CLITransmitBuffer] ; |309| 
        MOVL      XAR4,#FSL17           ; |310| 
        MOVL      *-SP[2],XAR4          ; |310| 
        MOVW      DP,#_config+20
        MOVL      XAR4,XAR3             ; |310| 
        MOVL      ACC,@_config+20       ; |310| 
        MOVL      *-SP[4],ACC           ; |310| 
        LCR       #_sprintf             ; |310| 
        ; call occurs [#_sprintf] ; |310| 
        MOVL      XAR4,XAR3             ; |310| 
        LCR       #_CLITransmitBuffer   ; |310| 
        ; call occurs [#_CLITransmitBuffer] ; |310| 
        MOVL      XAR4,#FSL18           ; |311| 
        MOVL      *-SP[2],XAR4          ; |311| 
        MOVW      DP,#_config+22
        MOVL      XAR4,XAR3             ; |311| 
        MOVL      ACC,@_config+22       ; |311| 
        MOVL      *-SP[4],ACC           ; |311| 
        LCR       #_sprintf             ; |311| 
        ; call occurs [#_sprintf] ; |311| 
        MOVL      XAR4,XAR3             ; |311| 
        LCR       #_CLITransmitBuffer   ; |311| 
        ; call occurs [#_CLITransmitBuffer] ; |311| 
L3:    
        SUBB      SP,#4
        MOVL      XAR3,*--SP
	.dwpsn	"pccli.c",314,1
        LRETR
        ; return occurs
	.dwattr DW$103, DW_AT_end_file("pccli.c")
	.dwattr DW$103, DW_AT_end_line(0x13a)
	.dwattr DW$103, DW_AT_end_column(0x01)
	.dwendtag DW$103

	.sect	".text"
	.global	_FactorySetFunc

DW$104	.dwtag  DW_TAG_subprogram, DW_AT_name("FactorySetFunc"), DW_AT_symbol_name("_FactorySetFunc")
	.dwattr DW$104, DW_AT_low_pc(_FactorySetFunc)
	.dwattr DW$104, DW_AT_high_pc(0x00)
	.dwattr DW$104, DW_AT_begin_file("pccli.c")
	.dwattr DW$104, DW_AT_begin_line(0x15f)
	.dwattr DW$104, DW_AT_begin_column(0x06)
	.dwattr DW$104, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$104, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",352,1

;***************************************************************
;* FNAME: _FactorySetFunc               FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_FactorySetFunc:
        MOVL      *SP++,XAR3
        ADDB      SP,#2
        MOVL      XAR4,#FSL19           ; |353| 
        MOVL      XAR3,#_stringbuffer   ; |353| 
        MOVL      *-SP[2],XAR4          ; |353| 
        MOVL      XAR4,XAR3             ; |353| 
        LCR       #_sprintf             ; |353| 
        ; call occurs [#_sprintf] ; |353| 
        MOVL      XAR4,XAR3             ; |354| 
        LCR       #_CLITransmitBuffer   ; |354| 
        ; call occurs [#_CLITransmitBuffer] ; |354| 
        MOVL      XAR4,#FSL20           ; |355| 
        MOVL      *-SP[2],XAR4          ; |355| 
        MOVL      XAR4,XAR3             ; |355| 
        LCR       #_sprintf             ; |355| 
        ; call occurs [#_sprintf] ; |355| 
        MOVL      XAR4,XAR3             ; |356| 
        LCR       #_CLITransmitBuffer   ; |356| 
        ; call occurs [#_CLITransmitBuffer] ; |356| 
        SUBB      SP,#2
        MOVW      DP,#_confirmation
        MOV       @_confirmation,#43605 ; |357| 
        MOVL      XAR3,*--SP
	.dwpsn	"pccli.c",358,1
        LRETR
        ; return occurs
	.dwattr DW$104, DW_AT_end_file("pccli.c")
	.dwattr DW$104, DW_AT_end_line(0x166)
	.dwattr DW$104, DW_AT_end_column(0x01)
	.dwendtag DW$104

	.sect	".text"
	.global	_InitSafeFunc

DW$105	.dwtag  DW_TAG_subprogram, DW_AT_name("InitSafeFunc"), DW_AT_symbol_name("_InitSafeFunc")
	.dwattr DW$105, DW_AT_low_pc(_InitSafeFunc)
	.dwattr DW$105, DW_AT_high_pc(0x00)
	.dwattr DW$105, DW_AT_begin_file("pccli.c")
	.dwattr DW$105, DW_AT_begin_line(0x168)
	.dwattr DW$105, DW_AT_begin_column(0x06)
	.dwattr DW$105, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$105, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",361,1

;***************************************************************
;* FNAME: _InitSafeFunc                 FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_InitSafeFunc:
        MOVL      *SP++,XAR1
        MOVW      DP,#_confirmation
        MOVL      *SP++,XAR3
        CMP       @_confirmation,#43605 ; |364| 
        ADDB      SP,#2
        BF        L7,NEQ                ; |364| 
        ; branchcc occurs ; |364| 
        MOV       AL,#1000              ; |366| 
        MOVW      DP,#_config+3
        MOV       @_config+3,AL         ; |366| 
        MOVW      DP,#_safe1
        MOV       @_safe1,AL            ; |366| 
        MOVW      DP,#_config+4
        MOV       AL,#500               ; |367| 
        MOV       @_config+4,AL         ; |367| 
        MOVB      XAR1,#0
        MOVW      DP,#_safe1+1
        MOV       @_safe1+1,AL          ; |367| 
        MOVW      DP,#_safe2+14
        MOV       @_safe2+14,#1         ; |368| 
        MOVB      AL,#18                ; |369| 
        MOVW      DP,#_allsensors+37
        MOV       @_allsensors+37,AL    ; |369| 
        MOVW      DP,#_allsensors+38
        MOV       @_allsensors+38,AL    ; |370| 
        MOVW      DP,#_config
        MOV       @_config,#500         ; |371| 
        MOVW      DP,#_allsensors+10
        MOV       @_allsensors+10,#500  ; |373| 
        MOVW      DP,#_allsensors+9
        MOV       @_allsensors+9,#700   ; |374| 
        MOVW      DP,#_safe2+11
        MOV       @_safe2+11,#0         ; |375| 
        MOVW      DP,#_safe2+12
        MOV       @_safe2+12,#0         ; |376| 
        MOVW      DP,#_config+5
        MOV       @_config+5,#3300      ; |377| 
        MOVW      DP,#_safe2+8
	.dwpsn	"pccli.c",379,0
        MOV       @_safe2+8,#3300       ; |378| 
L4:    
DW$L$_InitSafeFunc$3$B:
	.dwpsn	"pccli.c",380,0
        MOVL      XAR4,#_safe1+2        ; |381| 
        MOV       *+XAR4[AR1],#3880     ; |381| 
        MOVL      XAR4,#_xtswplusanacal ; |385| 
        MOV       *+XAR4[AR1],#3280     ; |385| 
        ADDB      XAR1,#1               ; |379| 
        MOV       AL,AR1                ; |379| 
        CMPB      AL,#14                ; |379| 
	.dwpsn	"pccli.c",386,0
        BF        L4,LO                 ; |379| 
        ; branchcc occurs ; |379| 
DW$L$_InitSafeFunc$3$E:
        MOVW      DP,#_xtswplusanacal+3
        MOVB      XAR1,#0
	.dwpsn	"pccli.c",389,0
        MOV       @_xtswplusanacal+3,#3880 ; |388| 
L5:    
DW$L$_InitSafeFunc$5$B:
	.dwpsn	"pccli.c",390,0
        MOVL      XAR4,#_safe2          ; |391| 
        MOV       *+XAR4[AR1],#2500     ; |391| 
        MOVL      XAR4,#_safe2+4        ; |392| 
        MOV       *+XAR4[AR1],#3520     ; |392| 
        ADDB      XAR1,#1               ; |389| 
        MOV       AL,AR1                ; |389| 
        CMPB      AL,#4                 ; |389| 
	.dwpsn	"pccli.c",393,0
        BF        L5,LO                 ; |389| 
        ; branchcc occurs ; |389| 
DW$L$_InitSafeFunc$5$E:
	.dwpsn	"pccli.c",395,0
        MOVB      XAR1,#0
L6:    
DW$L$_InitSafeFunc$7$B:
	.dwpsn	"pccli.c",396,0
        MOVL      XAR4,#_offsetA        ; |397| 
        MOV       AL,AR1                ; |399| 
        MOV       *+XAR4[AR1],#0        ; |397| 
        MOVL      XAR4,#_offsetB        ; |398| 
        MOV       *+XAR4[AR1],#0        ; |398| 
        LCR       #_WriteOffsetAtoNVMEM ; |399| 
        ; call occurs [#_WriteOffsetAtoNVMEM] ; |399| 
        MOV       AL,AR1                ; |400| 
        LCR       #_WriteOffsetBtoNVMEM ; |400| 
        ; call occurs [#_WriteOffsetBtoNVMEM] ; |400| 
        ADDB      XAR1,#1               ; |395| 
        MOV       AL,AR1                ; |395| 
        CMPB      AL,#28                ; |395| 
	.dwpsn	"pccli.c",401,0
        BF        L6,LO                 ; |395| 
        ; branchcc occurs ; |395| 
DW$L$_InitSafeFunc$7$E:
        MOVW      DP,#_sdsettings+1
        MOV       @_sdsettings+1,#0     ; |403| 
        LCR       #_SaveSDSettings      ; |404| 
        ; call occurs [#_SaveSDSettings] ; |404| 
        MOVB      AL,#0
        LCR       #_ClearMANTable       ; |406| 
        ; call occurs [#_ClearMANTable] ; |406| 
        LCR       #_FRAMInit            ; |407| 
        ; call occurs [#_FRAMInit] ; |407| 
        LCR       #_SetAllEventMsgs     ; |408| 
        ; call occurs [#_SetAllEventMsgs] ; |408| 
        LCR       #_SaveSafeStruct1     ; |410| 
        ; call occurs [#_SaveSafeStruct1] ; |410| 
        LCR       #_SaveSafeStruct2     ; |411| 
        ; call occurs [#_SaveSafeStruct2] ; |411| 
        LCR       #_SaveXtswplusAnaCal  ; |413| 
        ; call occurs [#_SaveXtswplusAnaCal] ; |413| 
        LCR       #_WriteConfigStructtoNVMEM ; |415| 
        ; call occurs [#_WriteConfigStructtoNVMEM] ; |415| 
        LCR       #_WriteAllSensorStructtoNVMEM ; |416| 
        ; call occurs [#_WriteAllSensorStructtoNVMEM] ; |416| 
        LCR       #_GeneralSettingstoSDCardFile ; |417| 
        ; call occurs [#_GeneralSettingstoSDCardFile] ; |417| 
        MOVL      XAR3,#_stringbuffer   ; |420| 
        MOVL      XAR4,#FSL21           ; |420| 
        MOVL      *-SP[2],XAR4          ; |420| 
        MOVL      XAR4,XAR3             ; |420| 
        MOVW      DP,#_settings+1
        MOV       @_settings+1,#1       ; |419| 
        LCR       #_sprintf             ; |420| 
        ; call occurs [#_sprintf] ; |420| 
        MOVL      XAR4,XAR3             ; |421| 
        LCR       #_CLITransmitBuffer   ; |421| 
        ; call occurs [#_CLITransmitBuffer] ; |421| 
        MOVL      XAR4,#FSL22           ; |422| 
        MOVL      *-SP[2],XAR4          ; |422| 
        MOVL      XAR4,XAR3             ; |422| 
        LCR       #_sprintf             ; |422| 
        ; call occurs [#_sprintf] ; |422| 
        MOVL      XAR4,XAR3             ; |423| 
        LCR       #_CLITransmitBuffer   ; |423| 
        ; call occurs [#_CLITransmitBuffer] ; |423| 
        MOVW      DP,#_confirmation
        MOV       @_confirmation,#0     ; |424| 
L7:    
        SUBB      SP,#2
        MOVL      XAR3,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"pccli.c",426,1
        LRETR
        ; return occurs

DW$106	.dwtag  DW_TAG_loop
	.dwattr DW$106, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\pccli.asm:L6:1:1471518983")
	.dwattr DW$106, DW_AT_begin_file("pccli.c")
	.dwattr DW$106, DW_AT_begin_line(0x18b)
	.dwattr DW$106, DW_AT_end_line(0x191)
DW$107	.dwtag  DW_TAG_loop_range
	.dwattr DW$107, DW_AT_low_pc(DW$L$_InitSafeFunc$7$B)
	.dwattr DW$107, DW_AT_high_pc(DW$L$_InitSafeFunc$7$E)
	.dwendtag DW$106


DW$108	.dwtag  DW_TAG_loop
	.dwattr DW$108, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\pccli.asm:L5:1:1471518983")
	.dwattr DW$108, DW_AT_begin_file("pccli.c")
	.dwattr DW$108, DW_AT_begin_line(0x185)
	.dwattr DW$108, DW_AT_end_line(0x189)
DW$109	.dwtag  DW_TAG_loop_range
	.dwattr DW$109, DW_AT_low_pc(DW$L$_InitSafeFunc$5$B)
	.dwattr DW$109, DW_AT_high_pc(DW$L$_InitSafeFunc$5$E)
	.dwendtag DW$108


DW$110	.dwtag  DW_TAG_loop
	.dwattr DW$110, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\pccli.asm:L4:1:1471518983")
	.dwattr DW$110, DW_AT_begin_file("pccli.c")
	.dwattr DW$110, DW_AT_begin_line(0x17b)
	.dwattr DW$110, DW_AT_end_line(0x182)
DW$111	.dwtag  DW_TAG_loop_range
	.dwattr DW$111, DW_AT_low_pc(DW$L$_InitSafeFunc$3$B)
	.dwattr DW$111, DW_AT_high_pc(DW$L$_InitSafeFunc$3$E)
	.dwendtag DW$110

	.dwattr DW$105, DW_AT_end_file("pccli.c")
	.dwattr DW$105, DW_AT_end_line(0x1aa)
	.dwattr DW$105, DW_AT_end_column(0x01)
	.dwendtag DW$105

	.sect	".text"
	.global	_InputResultsFunc

DW$112	.dwtag  DW_TAG_subprogram, DW_AT_name("InputResultsFunc"), DW_AT_symbol_name("_InputResultsFunc")
	.dwattr DW$112, DW_AT_low_pc(_InputResultsFunc)
	.dwattr DW$112, DW_AT_high_pc(0x00)
	.dwattr DW$112, DW_AT_begin_file("pccli.c")
	.dwattr DW$112, DW_AT_begin_line(0x1ab)
	.dwattr DW$112, DW_AT_begin_column(0x06)
	.dwattr DW$112, DW_AT_frame_base[DW_OP_breg20 -16]
	.dwattr DW$112, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",428,1

;***************************************************************
;* FNAME: _InputResultsFunc             FR SIZE:  14           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            6 Parameter,  2 Auto,  6 SOE     *
;***************************************************************

_InputResultsFunc:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#8
        MOVL      XAR4,#FSL23           ; |430| 
        MOVL      XAR3,#_stringbuffer   ; |430| 
        MOVL      *-SP[2],XAR4          ; |430| 
        MOVL      XAR4,XAR3             ; |430| 
        LCR       #_sprintf             ; |430| 
        ; call occurs [#_sprintf] ; |430| 
        MOVL      XAR4,XAR3             ; |431| 
        LCR       #_CLITransmitBuffer   ; |431| 
        ; call occurs [#_CLITransmitBuffer] ; |431| 
	.dwpsn	"pccli.c",432,0
        MOVB      XAR1,#0
L8:    
DW$L$_InputResultsFunc$2$B:
	.dwpsn	"pccli.c",433,0
        MOVB      AL,#1                 ; |434| 
        MOVL      XAR4,#_stringbuffer   ; |434| 
        ADD       AL,AR1                ; |434| 
        MOVZ      AR3,AL                ; |434| 
        MOVL      *-SP[8],XAR4          ; |434| 
        MOV       AL,AR1                ; |434| 
        LCR       #_GetScaledValue      ; |434| 
        ; call occurs [#_GetScaledValue] ; |434| 
        MOVZ      AR2,AL                ; |434| 
        MOVB      AL,#14                ; |434| 
        ADD       AL,AR1                ; |434| 
        LCR       #_GetScaledValue      ; |434| 
        ; call occurs [#_GetScaledValue] ; |434| 
        MOVL      XAR4,#FSL24           ; |434| 
        MOVL      *-SP[2],XAR4          ; |434| 
        MOVB      AH,#15                ; |434| 
        MOV       *-SP[3],AR3           ; |434| 
        ADD       AH,AR1                ; |434| 
        MOV       *-SP[4],AR2           ; |434| 
        MOV       *-SP[5],AH            ; |434| 
        MOV       *-SP[6],AL            ; |434| 
        MOVL      XAR4,*-SP[8]          ; |434| 
        LCR       #_sprintf             ; |434| 
        ; call occurs [#_sprintf] ; |434| 
        MOVL      XAR4,*-SP[8]          ; |434| 
        LCR       #_CLITransmitBuffer   ; |435| 
        ; call occurs [#_CLITransmitBuffer] ; |435| 
        MOVZ      AR1,AR3               ; |432| 
        MOV       AL,AR1                ; |432| 
        CMPB      AL,#14                ; |432| 
	.dwpsn	"pccli.c",436,0
        BF        L8,LO                 ; |432| 
        ; branchcc occurs ; |432| 
DW$L$_InputResultsFunc$2$E:
        MOVB      XAR1,#0
	.dwpsn	"pccli.c",439,0
        MOVL      XAR3,#_stringbuffer   ; |441| 
L9:    
DW$L$_InputResultsFunc$4$B:
	.dwpsn	"pccli.c",440,0
        MOVB      AL,#1                 ; |441| 
        MOVL      XAR4,#FSL25           ; |441| 
        ADD       AL,AR1                ; |441| 
        MOVL      *-SP[2],XAR4          ; |441| 
        MOVZ      AR2,AL                ; |441| 
        MOV       *-SP[3],AL            ; |441| 
        MOVL      XAR4,#_inputs+228     ; |441| 
        MOV       AL,*+XAR4[AR1]        ; |441| 
        MOVL      XAR4,XAR3             ; |441| 
        MOV       *-SP[4],AL            ; |441| 
        LCR       #_sprintf             ; |441| 
        ; call occurs [#_sprintf] ; |441| 
        MOVL      XAR4,XAR3             ; |442| 
        LCR       #_CLITransmitBuffer   ; |442| 
        ; call occurs [#_CLITransmitBuffer] ; |442| 
        MOVZ      AR1,AR2               ; |439| 
        MOV       AL,AR1                ; |439| 
        CMPB      AL,#8                 ; |439| 
	.dwpsn	"pccli.c",443,0
        BF        L9,LO                 ; |439| 
        ; branchcc occurs ; |439| 
DW$L$_InputResultsFunc$4$E:
        SUBB      SP,#8
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"pccli.c",446,1
        LRETR
        ; return occurs

DW$113	.dwtag  DW_TAG_loop
	.dwattr DW$113, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\pccli.asm:L9:1:1471518983")
	.dwattr DW$113, DW_AT_begin_file("pccli.c")
	.dwattr DW$113, DW_AT_begin_line(0x1b7)
	.dwattr DW$113, DW_AT_end_line(0x1bb)
DW$114	.dwtag  DW_TAG_loop_range
	.dwattr DW$114, DW_AT_low_pc(DW$L$_InputResultsFunc$4$B)
	.dwattr DW$114, DW_AT_high_pc(DW$L$_InputResultsFunc$4$E)
	.dwendtag DW$113


DW$115	.dwtag  DW_TAG_loop
	.dwattr DW$115, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\pccli.asm:L8:1:1471518983")
	.dwattr DW$115, DW_AT_begin_file("pccli.c")
	.dwattr DW$115, DW_AT_begin_line(0x1b0)
	.dwattr DW$115, DW_AT_end_line(0x1b4)
DW$116	.dwtag  DW_TAG_loop_range
	.dwattr DW$116, DW_AT_low_pc(DW$L$_InputResultsFunc$2$B)
	.dwattr DW$116, DW_AT_high_pc(DW$L$_InputResultsFunc$2$E)
	.dwendtag DW$115

	.dwattr DW$112, DW_AT_end_file("pccli.c")
	.dwattr DW$112, DW_AT_end_line(0x1be)
	.dwattr DW$112, DW_AT_end_column(0x01)
	.dwendtag DW$112

	.sect	".text"
	.global	_EnableOffsetFunc

DW$117	.dwtag  DW_TAG_subprogram, DW_AT_name("EnableOffsetFunc"), DW_AT_symbol_name("_EnableOffsetFunc")
	.dwattr DW$117, DW_AT_low_pc(_EnableOffsetFunc)
	.dwattr DW$117, DW_AT_high_pc(0x00)
	.dwattr DW$117, DW_AT_begin_file("pccli.c")
	.dwattr DW$117, DW_AT_begin_line(0x1c2)
	.dwattr DW$117, DW_AT_begin_column(0x06)
	.dwattr DW$117, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$117, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",451,1

;***************************************************************
;* FNAME: _EnableOffsetFunc             FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            3 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_EnableOffsetFunc:
        MOVW      DP,#_CommandOffset
        MOVL      *SP++,XAR3
        MOV       AL,@_CommandOffset    ; |454| 
        MOVW      DP,#_CommandLen
        ADD       AL,@_CommandLen       ; |454| 
        MOVZ      AR0,AL                ; |454| 
        ADDB      SP,#4
        MOVL      XAR4,#_cmdbuf         ; |454| 
        MOV       AL,*+XAR4[AR0]        ; |454| 
        CMPB      AL,#61                ; |454| 
        BF        L10,NEQ               ; |454| 
        ; branchcc occurs ; |454| 
        MOVB      AL,#1                 ; |456| 
        ADD       AL,AR0                ; |456| 
        LCR       #_AsciitoInt          ; |456| 
        ; call occurs [#_AsciitoInt] ; |456| 
        AND       AH,AL,#0xfffe         ; |457| 
        BF        L11,NEQ               ; |457| 
        ; branchcc occurs ; |457| 
        MOVW      DP,#_function
        MOV       @_function,AL         ; |459| 
        BF        L11,UNC               ; |459| 
        ; branch occurs ; |459| 
L10:    
        MOVL      XAR4,#FSL26           ; |464| 
        MOVL      XAR3,#_stringbuffer   ; |464| 
        MOVW      DP,#_function
        MOVL      *-SP[2],XAR4          ; |464| 
        MOVL      XAR4,XAR3             ; |464| 
        MOV       AL,@_function         ; |464| 
        MOV       *-SP[3],AL            ; |464| 
        LCR       #_sprintf             ; |464| 
        ; call occurs [#_sprintf] ; |464| 
        MOVL      XAR4,XAR3             ; |465| 
        LCR       #_CLITransmitBuffer   ; |465| 
        ; call occurs [#_CLITransmitBuffer] ; |465| 
L11:    
        SUBB      SP,#4
        MOVL      XAR3,*--SP
	.dwpsn	"pccli.c",467,1
        LRETR
        ; return occurs
	.dwattr DW$117, DW_AT_end_file("pccli.c")
	.dwattr DW$117, DW_AT_end_line(0x1d3)
	.dwattr DW$117, DW_AT_end_column(0x01)
	.dwendtag DW$117

	.sect	".text"
	.global	_EnableCompensationFunc

DW$118	.dwtag  DW_TAG_subprogram, DW_AT_name("EnableCompensationFunc"), DW_AT_symbol_name("_EnableCompensationFunc")
	.dwattr DW$118, DW_AT_low_pc(_EnableCompensationFunc)
	.dwattr DW$118, DW_AT_high_pc(0x00)
	.dwattr DW$118, DW_AT_begin_file("pccli.c")
	.dwattr DW$118, DW_AT_begin_line(0x1d7)
	.dwattr DW$118, DW_AT_begin_column(0x06)
	.dwattr DW$118, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$118, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",472,1

;***************************************************************
;* FNAME: _EnableCompensationFunc       FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            3 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_EnableCompensationFunc:
        MOVW      DP,#_CommandOffset
        MOVL      *SP++,XAR3
        MOV       AL,@_CommandOffset    ; |475| 
        MOVW      DP,#_CommandLen
        ADD       AL,@_CommandLen       ; |475| 
        MOVZ      AR0,AL                ; |475| 
        ADDB      SP,#4
        MOVL      XAR4,#_cmdbuf         ; |475| 
        MOV       AL,*+XAR4[AR0]        ; |475| 
        CMPB      AL,#61                ; |475| 
        BF        L12,NEQ               ; |475| 
        ; branchcc occurs ; |475| 
        MOVB      AL,#1                 ; |477| 
        ADD       AL,AR0                ; |477| 
        LCR       #_AsciitoInt          ; |477| 
        ; call occurs [#_AsciitoInt] ; |477| 
        AND       AH,AL,#0xfffe         ; |478| 
        BF        L13,NEQ               ; |478| 
        ; branchcc occurs ; |478| 
        MOVW      DP,#_function+1
        MOV       @_function+1,AL       ; |480| 
        BF        L13,UNC               ; |480| 
        ; branch occurs ; |480| 
L12:    
        MOVL      XAR4,#FSL27           ; |485| 
        MOVL      XAR3,#_stringbuffer   ; |485| 
        MOVW      DP,#_function+1
        MOVL      *-SP[2],XAR4          ; |485| 
        MOVL      XAR4,XAR3             ; |485| 
        MOV       AL,@_function+1       ; |485| 
        MOV       *-SP[3],AL            ; |485| 
        LCR       #_sprintf             ; |485| 
        ; call occurs [#_sprintf] ; |485| 
        MOVL      XAR4,XAR3             ; |486| 
        LCR       #_CLITransmitBuffer   ; |486| 
        ; call occurs [#_CLITransmitBuffer] ; |486| 
L13:    
        SUBB      SP,#4
        MOVL      XAR3,*--SP
	.dwpsn	"pccli.c",488,1
        LRETR
        ; return occurs
	.dwattr DW$118, DW_AT_end_file("pccli.c")
	.dwattr DW$118, DW_AT_end_line(0x1e8)
	.dwattr DW$118, DW_AT_end_column(0x01)
	.dwendtag DW$118

	.sect	".text"
	.global	_EnableNoisRemovalFunc

DW$119	.dwtag  DW_TAG_subprogram, DW_AT_name("EnableNoisRemovalFunc"), DW_AT_symbol_name("_EnableNoisRemovalFunc")
	.dwattr DW$119, DW_AT_low_pc(_EnableNoisRemovalFunc)
	.dwattr DW$119, DW_AT_high_pc(0x00)
	.dwattr DW$119, DW_AT_begin_file("pccli.c")
	.dwattr DW$119, DW_AT_begin_line(0x1eb)
	.dwattr DW$119, DW_AT_begin_column(0x06)
	.dwattr DW$119, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$119, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",492,1

;***************************************************************
;* FNAME: _EnableNoisRemovalFunc        FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            3 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_EnableNoisRemovalFunc:
        MOVW      DP,#_CommandOffset
        MOVL      *SP++,XAR3
        MOV       AL,@_CommandOffset    ; |495| 
        MOVW      DP,#_CommandLen
        ADD       AL,@_CommandLen       ; |495| 
        MOVZ      AR0,AL                ; |495| 
        ADDB      SP,#4
        MOVL      XAR4,#_cmdbuf         ; |495| 
        MOV       AL,*+XAR4[AR0]        ; |495| 
        CMPB      AL,#61                ; |495| 
        BF        L14,NEQ               ; |495| 
        ; branchcc occurs ; |495| 
        MOVB      AL,#1                 ; |497| 
        ADD       AL,AR0                ; |497| 
        LCR       #_AsciitoInt          ; |497| 
        ; call occurs [#_AsciitoInt] ; |497| 
        AND       AH,AL,#0xfffe         ; |498| 
        BF        L15,NEQ               ; |498| 
        ; branchcc occurs ; |498| 
        LCR       #_EnableNoiseFilter   ; |500| 
        ; call occurs [#_EnableNoiseFilter] ; |500| 
        BF        L15,UNC               ; |500| 
        ; branch occurs ; |500| 
L14:    
        MOVL      XAR4,#FSL28           ; |505| 
        MOVL      XAR3,#_stringbuffer   ; |505| 
        MOVW      DP,#_function+2
        MOVL      *-SP[2],XAR4          ; |505| 
        MOVL      XAR4,XAR3             ; |505| 
        MOV       AL,@_function+2       ; |505| 
        MOV       *-SP[3],AL            ; |505| 
        LCR       #_sprintf             ; |505| 
        ; call occurs [#_sprintf] ; |505| 
        MOVL      XAR4,XAR3             ; |506| 
        LCR       #_CLITransmitBuffer   ; |506| 
        ; call occurs [#_CLITransmitBuffer] ; |506| 
L15:    
        SUBB      SP,#4
        MOVL      XAR3,*--SP
	.dwpsn	"pccli.c",508,1
        LRETR
        ; return occurs
	.dwattr DW$119, DW_AT_end_file("pccli.c")
	.dwattr DW$119, DW_AT_end_line(0x1fc)
	.dwattr DW$119, DW_AT_end_column(0x01)
	.dwendtag DW$119

	.sect	".text"
	.global	_EnableSensorDeviationFunc

DW$120	.dwtag  DW_TAG_subprogram, DW_AT_name("EnableSensorDeviationFunc"), DW_AT_symbol_name("_EnableSensorDeviationFunc")
	.dwattr DW$120, DW_AT_low_pc(_EnableSensorDeviationFunc)
	.dwattr DW$120, DW_AT_high_pc(0x00)
	.dwattr DW$120, DW_AT_begin_file("pccli.c")
	.dwattr DW$120, DW_AT_begin_line(0x1ff)
	.dwattr DW$120, DW_AT_begin_column(0x06)
	.dwattr DW$120, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$120, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",512,1

;***************************************************************
;* FNAME: _EnableSensorDeviationFunc    FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            3 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_EnableSensorDeviationFunc:
        MOVW      DP,#_CommandOffset
        MOVL      *SP++,XAR3
        MOV       AL,@_CommandOffset    ; |515| 
        MOVW      DP,#_CommandLen
        ADD       AL,@_CommandLen       ; |515| 
        MOVZ      AR0,AL                ; |515| 
        ADDB      SP,#4
        MOVL      XAR4,#_cmdbuf         ; |515| 
        MOV       AL,*+XAR4[AR0]        ; |515| 
        CMPB      AL,#61                ; |515| 
        BF        L16,NEQ               ; |515| 
        ; branchcc occurs ; |515| 
        MOVB      AL,#1                 ; |517| 
        ADD       AL,AR0                ; |517| 
        LCR       #_AsciitoInt          ; |517| 
        ; call occurs [#_AsciitoInt] ; |517| 
        AND       AH,AL,#0xfffe         ; |518| 
        BF        L17,NEQ               ; |518| 
        ; branchcc occurs ; |518| 
        MOVW      DP,#_function+3
        MOV       @_function+3,AL       ; |520| 
        BF        L17,UNC               ; |520| 
        ; branch occurs ; |520| 
L16:    
        MOVL      XAR4,#FSL29           ; |525| 
        MOVL      XAR3,#_stringbuffer   ; |525| 
        MOVW      DP,#_function+3
        MOVL      *-SP[2],XAR4          ; |525| 
        MOVL      XAR4,XAR3             ; |525| 
        MOV       AL,@_function+3       ; |525| 
        MOV       *-SP[3],AL            ; |525| 
        LCR       #_sprintf             ; |525| 
        ; call occurs [#_sprintf] ; |525| 
        MOVL      XAR4,XAR3             ; |526| 
        LCR       #_CLITransmitBuffer   ; |526| 
        ; call occurs [#_CLITransmitBuffer] ; |526| 
L17:    
        SUBB      SP,#4
        MOVL      XAR3,*--SP
	.dwpsn	"pccli.c",528,1
        LRETR
        ; return occurs
	.dwattr DW$120, DW_AT_end_file("pccli.c")
	.dwattr DW$120, DW_AT_end_line(0x210)
	.dwattr DW$120, DW_AT_end_column(0x01)
	.dwendtag DW$120

	.sect	".text"
	.global	_EnableCheckRoughCalFunc

DW$121	.dwtag  DW_TAG_subprogram, DW_AT_name("EnableCheckRoughCalFunc"), DW_AT_symbol_name("_EnableCheckRoughCalFunc")
	.dwattr DW$121, DW_AT_low_pc(_EnableCheckRoughCalFunc)
	.dwattr DW$121, DW_AT_high_pc(0x00)
	.dwattr DW$121, DW_AT_begin_file("pccli.c")
	.dwattr DW$121, DW_AT_begin_line(0x238)
	.dwattr DW$121, DW_AT_begin_column(0x06)
	.dwattr DW$121, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$121, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",569,1

;***************************************************************
;* FNAME: _EnableCheckRoughCalFunc      FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            3 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_EnableCheckRoughCalFunc:
        MOVW      DP,#_CommandOffset
        MOVL      *SP++,XAR3
        MOV       AL,@_CommandOffset    ; |572| 
        MOVW      DP,#_CommandLen
        ADD       AL,@_CommandLen       ; |572| 
        MOVZ      AR0,AL                ; |572| 
        ADDB      SP,#4
        MOVL      XAR4,#_cmdbuf         ; |572| 
        MOV       AL,*+XAR4[AR0]        ; |572| 
        CMPB      AL,#61                ; |572| 
        BF        L18,NEQ               ; |572| 
        ; branchcc occurs ; |572| 
        MOVB      AL,#1                 ; |574| 
        ADD       AL,AR0                ; |574| 
        LCR       #_AsciitoInt          ; |574| 
        ; call occurs [#_AsciitoInt] ; |574| 
        AND       AH,AL,#0xfffe         ; |575| 
        BF        L19,NEQ               ; |575| 
        ; branchcc occurs ; |575| 
        CMPB      AL,#1                 ; |579| 
        MOVW      DP,#_function+6
        MOV       @_function+6,AL       ; |577| 
        BF        L19,NEQ               ; |579| 
        ; branchcc occurs ; |579| 
        MOVW      DP,#_speedcompcoeffs+12
        MOV       AL,@_speedcompcoeffs+12 ; |579| 
        LCR       #_CheckRoughCalPoints ; |579| 
        ; call occurs [#_CheckRoughCalPoints] ; |579| 
        BF        L19,UNC               ; |579| 
        ; branch occurs ; |579| 
L18:    
        MOVL      XAR4,#FSL30           ; |584| 
        MOVL      XAR3,#_stringbuffer   ; |584| 
        MOVW      DP,#_function+6
        MOVL      *-SP[2],XAR4          ; |584| 
        MOVL      XAR4,XAR3             ; |584| 
        MOV       AL,@_function+6       ; |584| 
        MOV       *-SP[3],AL            ; |584| 
        LCR       #_sprintf             ; |584| 
        ; call occurs [#_sprintf] ; |584| 
        MOVL      XAR4,XAR3             ; |585| 
        LCR       #_CLITransmitBuffer   ; |585| 
        ; call occurs [#_CLITransmitBuffer] ; |585| 
L19:    
        SUBB      SP,#4
        MOVL      XAR3,*--SP
	.dwpsn	"pccli.c",587,1
        LRETR
        ; return occurs
	.dwattr DW$121, DW_AT_end_file("pccli.c")
	.dwattr DW$121, DW_AT_end_line(0x24b)
	.dwattr DW$121, DW_AT_end_column(0x01)
	.dwendtag DW$121

	.sect	".text"
	.global	_DebugSerialFunc

DW$122	.dwtag  DW_TAG_subprogram, DW_AT_name("DebugSerialFunc"), DW_AT_symbol_name("_DebugSerialFunc")
	.dwattr DW$122, DW_AT_low_pc(_DebugSerialFunc)
	.dwattr DW$122, DW_AT_high_pc(0x00)
	.dwattr DW$122, DW_AT_begin_file("pccli.c")
	.dwattr DW$122, DW_AT_begin_line(0x24d)
	.dwattr DW$122, DW_AT_begin_column(0x06)
	.dwattr DW$122, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$122, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",590,1

;***************************************************************
;* FNAME: _DebugSerialFunc              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_DebugSerialFunc:
        MOVW      DP,#_CommandOffset
        MOV       AL,@_CommandOffset    ; |592| 
        MOVW      DP,#_CommandLen
        ADD       AL,@_CommandLen       ; |592| 
        MOVZ      AR0,AL                ; |592| 
        MOVL      XAR4,#_cmdbuf         ; |592| 
        MOV       AL,*+XAR4[AR0]        ; |592| 
        CMPB      AL,#61                ; |592| 
        BF        L21,NEQ               ; |592| 
        ; branchcc occurs ; |592| 
        MOVB      AL,#1                 ; |594| 
        ADD       AL,AR0                ; |594| 
        LCR       #_AsciitoInt          ; |594| 
        ; call occurs [#_AsciitoInt] ; |594| 
        CMPB      AL,#1                 ; |594| 
        BF        L20,EQ                ; |594| 
        ; branchcc occurs ; |594| 
        MOVW      DP,#_settings+33
        MOV       @_settings+33,#0      ; |601| 
        BF        L21,UNC               ; |601| 
        ; branch occurs ; |601| 
L20:    
        MOVW      DP,#_settings+33
        MOV       @_settings+33,#21930  ; |597| 
L21:    
	.dwpsn	"pccli.c",604,1
        LRETR
        ; return occurs
	.dwattr DW$122, DW_AT_end_file("pccli.c")
	.dwattr DW$122, DW_AT_end_line(0x25c)
	.dwattr DW$122, DW_AT_end_column(0x01)
	.dwendtag DW$122

	.sect	".text"
	.global	_SelectChannelFunc

DW$123	.dwtag  DW_TAG_subprogram, DW_AT_name("SelectChannelFunc"), DW_AT_symbol_name("_SelectChannelFunc")
	.dwattr DW$123, DW_AT_low_pc(_SelectChannelFunc)
	.dwattr DW$123, DW_AT_high_pc(0x00)
	.dwattr DW$123, DW_AT_begin_file("pccli.c")
	.dwattr DW$123, DW_AT_begin_line(0x29a)
	.dwattr DW$123, DW_AT_begin_column(0x06)
	.dwattr DW$123, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$123, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",667,1

;***************************************************************
;* FNAME: _SelectChannelFunc            FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            3 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_SelectChannelFunc:
        MOVW      DP,#_CommandOffset
        MOVL      *SP++,XAR3
        MOV       AL,@_CommandOffset    ; |670| 
        MOVW      DP,#_CommandLen
        ADD       AL,@_CommandLen       ; |670| 
        MOVZ      AR0,AL                ; |670| 
        ADDB      SP,#4
        MOVL      XAR4,#_cmdbuf         ; |670| 
        MOV       AL,*+XAR4[AR0]        ; |670| 
        CMPB      AL,#61                ; |670| 
        BF        L22,NEQ               ; |670| 
        ; branchcc occurs ; |670| 
        MOVB      AL,#1                 ; |672| 
        ADD       AL,AR0                ; |672| 
        LCR       #_AsciitoInt          ; |672| 
        ; call occurs [#_AsciitoInt] ; |672| 
        CMPB      AL,#28                ; |672| 
        BF        L23,HI                ; |672| 
        ; branchcc occurs ; |672| 
        ADDB      AL,#-1
        MOVW      DP,#_settings+32
        MOV       @_settings+32,AL      ; |675| 
        BF        L23,UNC               ; |675| 
        ; branch occurs ; |675| 
L22:    
        MOVL      XAR4,#FSL31           ; |680| 
        MOVW      DP,#_settings+32
        MOVL      XAR3,#_stringbuffer   ; |680| 
        MOVL      *-SP[2],XAR4          ; |680| 
        MOV       AL,@_settings+32      ; |680| 
        MOVL      XAR4,XAR3             ; |680| 
        ADDB      AL,#1                 ; |680| 
        MOV       *-SP[3],AL            ; |680| 
        LCR       #_sprintf             ; |680| 
        ; call occurs [#_sprintf] ; |680| 
        MOVL      XAR4,XAR3             ; |681| 
        LCR       #_CLITransmitBuffer   ; |681| 
        ; call occurs [#_CLITransmitBuffer] ; |681| 
L23:    
        SUBB      SP,#4
        MOVL      XAR3,*--SP
	.dwpsn	"pccli.c",683,1
        LRETR
        ; return occurs
	.dwattr DW$123, DW_AT_end_file("pccli.c")
	.dwattr DW$123, DW_AT_end_line(0x2ab)
	.dwattr DW$123, DW_AT_end_column(0x01)
	.dwendtag DW$123

	.sect	".text"
	.global	_SetCHValFunc

DW$124	.dwtag  DW_TAG_subprogram, DW_AT_name("SetCHValFunc"), DW_AT_symbol_name("_SetCHValFunc")
	.dwattr DW$124, DW_AT_low_pc(_SetCHValFunc)
	.dwattr DW$124, DW_AT_high_pc(0x00)
	.dwattr DW$124, DW_AT_begin_file("pccli.c")
	.dwattr DW$124, DW_AT_begin_line(0x2cc)
	.dwattr DW$124, DW_AT_begin_column(0x06)
	.dwattr DW$124, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$124, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",717,1

;***************************************************************
;* FNAME: _SetCHValFunc                 FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_SetCHValFunc:
        MOVW      DP,#_CommandOffset
        MOV       AL,@_CommandOffset    ; |719| 
        MOVW      DP,#_CommandLen
        ADD       AL,@_CommandLen       ; |719| 
        MOVZ      AR0,AL                ; |719| 
        ADDB      SP,#6
        MOVL      XAR5,#_cmdbuf         ; |719| 
        MOV       AL,*+XAR5[AR0]        ; |719| 
        CMPB      AL,#61                ; |719| 
        BF        L24,NEQ               ; |719| 
        ; branchcc occurs ; |719| 
        MOVL      XAR4,#FSL32           ; |722| 
        MOV       *-SP[5],#0            ; |721| 
        MOVL      *-SP[2],XAR4          ; |722| 
        MOVZ      AR4,SP                ; |722| 
        MOV       AL,AR0
        SUBB      XAR4,#5               ; |722| 
        MOVL      *-SP[4],XAR4          ; |722| 
        MOVB      XAR4,#1               ; |722| 
        ADD       AR4,AL
        MOVL      ACC,XAR5              ; |722| 
        ADDU      ACC,AR4               ; |722| 
        MOVL      XAR4,ACC              ; |722| 
        LCR       #_sscanf              ; |722| 
        ; call occurs [#_sscanf] ; |722| 
        MOV       AL,*-SP[5]            ; |723| 
        CMP       AL,#10000             ; |723| 
        BF        L24,GEQ               ; |723| 
        ; branchcc occurs ; |723| 
        CMP       AL,#-1000             ; |723| 
        BF        L24,LT                ; |723| 
        ; branchcc occurs ; |723| 
        MOVW      DP,#_settings+31
        MOV       AL,@_settings+31      ; |723| 
        CMPB      AL,#1                 ; |723| 
        BF        L24,NEQ               ; |723| 
        ; branchcc occurs ; |723| 
        MOVW      DP,#_settings+32
        MOV       AL,@_settings+32      ; |725| 
        MOV       AH,*-SP[5]            ; |725| 
        LCR       #_SetScaledValue      ; |725| 
        ; call occurs [#_SetScaledValue] ; |725| 
L24:    
        SUBB      SP,#6
	.dwpsn	"pccli.c",728,1
        LRETR
        ; return occurs
	.dwattr DW$124, DW_AT_end_file("pccli.c")
	.dwattr DW$124, DW_AT_end_line(0x2d8)
	.dwattr DW$124, DW_AT_end_column(0x01)
	.dwendtag DW$124

	.sect	".text"
	.global	_MasterSlaveFunc

DW$125	.dwtag  DW_TAG_subprogram, DW_AT_name("MasterSlaveFunc"), DW_AT_symbol_name("_MasterSlaveFunc")
	.dwattr DW$125, DW_AT_low_pc(_MasterSlaveFunc)
	.dwattr DW$125, DW_AT_high_pc(0x00)
	.dwattr DW$125, DW_AT_begin_file("pccli.c")
	.dwattr DW$125, DW_AT_begin_line(0x2db)
	.dwattr DW$125, DW_AT_begin_column(0x06)
	.dwattr DW$125, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$125, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",732,1

;***************************************************************
;* FNAME: _MasterSlaveFunc              FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            3 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_MasterSlaveFunc:
        MOVL      *SP++,XAR3
        ADDB      SP,#4
        MOVL      XAR4,#FSL33           ; |734| 
        MOVL      XAR3,#_stringbuffer   ; |734| 
        MOVL      *-SP[2],XAR4          ; |734| 
        MOVL      XAR4,XAR3             ; |734| 
        LCR       #_sprintf             ; |734| 
        ; call occurs [#_sprintf] ; |734| 
        MOVL      XAR4,XAR3             ; |735| 
        LCR       #_CLITransmitBuffer   ; |735| 
        ; call occurs [#_CLITransmitBuffer] ; |735| 
        MOVL      XAR4,#FSL34           ; |736| 
        MOVL      *-SP[2],XAR4          ; |736| 
        MOVW      DP,#_settings+17
        MOVL      XAR4,XAR3             ; |736| 
        MOV       AL,@_settings+17      ; |736| 
        MOV       *-SP[3],AL            ; |736| 
        LCR       #_sprintf             ; |736| 
        ; call occurs [#_sprintf] ; |736| 
        MOVL      XAR4,XAR3             ; |737| 
        LCR       #_CLITransmitBuffer   ; |737| 
        ; call occurs [#_CLITransmitBuffer] ; |737| 
        SUBB      SP,#4
        MOVL      XAR3,*--SP
	.dwpsn	"pccli.c",738,1
        LRETR
        ; return occurs
	.dwattr DW$125, DW_AT_end_file("pccli.c")
	.dwattr DW$125, DW_AT_end_line(0x2e2)
	.dwattr DW$125, DW_AT_end_column(0x01)
	.dwendtag DW$125

	.sect	".text"
	.global	_SensorScalingFactorFunc

DW$126	.dwtag  DW_TAG_subprogram, DW_AT_name("SensorScalingFactorFunc"), DW_AT_symbol_name("_SensorScalingFactorFunc")
	.dwattr DW$126, DW_AT_low_pc(_SensorScalingFactorFunc)
	.dwattr DW$126, DW_AT_high_pc(0x00)
	.dwattr DW$126, DW_AT_begin_file("pccli.c")
	.dwattr DW$126, DW_AT_begin_line(0x2e4)
	.dwattr DW$126, DW_AT_begin_column(0x06)
	.dwattr DW$126, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$126, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",741,1

;***************************************************************
;* FNAME: _SensorScalingFactorFunc      FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            3 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_SensorScalingFactorFunc:
        MOVW      DP,#_CommandOffset
        MOVL      *SP++,XAR3
        MOV       AL,@_CommandOffset    ; |744| 
        MOVW      DP,#_CommandLen
        ADD       AL,@_CommandLen       ; |744| 
        MOVZ      AR0,AL                ; |744| 
        ADDB      SP,#4
        MOVL      XAR4,#_cmdbuf         ; |744| 
        MOV       AL,*+XAR4[AR0]        ; |744| 
        CMPB      AL,#61                ; |744| 
        BF        L26,NEQ               ; |744| 
        ; branchcc occurs ; |744| 
        MOVB      AL,#1                 ; |746| 
        ADD       AL,AR0                ; |746| 
        LCR       #_AsciitoInt          ; |746| 
        ; call occurs [#_AsciitoInt] ; |746| 
        MOVW      DP,#_safe2+8
        MOV       @_safe2+8,AL          ; |747| 
        MOVW      DP,#_config+5
        MOV       @_config+5,AL         ; |747| 
        MOVW      DP,#_settings+17
        MOV       AL,@_settings+17      ; |748| 
        CMPB      AL,#1                 ; |748| 
        BF        L25,NEQ               ; |748| 
        ; branchcc occurs ; |748| 
        LCR       #_WriteConfigStructtoNVMEM ; |748| 
        ; call occurs [#_WriteConfigStructtoNVMEM] ; |748| 
L25:    
        LCR       #_SaveSafeStruct2     ; |749| 
        ; call occurs [#_SaveSafeStruct2] ; |749| 
        BF        L27,UNC               ; |750| 
        ; branch occurs ; |750| 
L26:    
        MOVL      XAR4,#FSL35           ; |753| 
        MOVL      XAR3,#_stringbuffer   ; |753| 
        MOVW      DP,#_config+5
        MOVL      *-SP[2],XAR4          ; |753| 
        MOVL      XAR4,XAR3             ; |753| 
        MOV       AL,@_config+5         ; |753| 
        MOV       *-SP[3],AL            ; |753| 
        LCR       #_sprintf             ; |753| 
        ; call occurs [#_sprintf] ; |753| 
        MOVL      XAR4,XAR3             ; |754| 
        LCR       #_CLITransmitBuffer   ; |754| 
        ; call occurs [#_CLITransmitBuffer] ; |754| 
L27:    
        SUBB      SP,#4
        MOVL      XAR3,*--SP
	.dwpsn	"pccli.c",756,1
        LRETR
        ; return occurs
	.dwattr DW$126, DW_AT_end_file("pccli.c")
	.dwattr DW$126, DW_AT_end_line(0x2f4)
	.dwattr DW$126, DW_AT_end_column(0x01)
	.dwendtag DW$126

	.sect	".text"
	.global	_RPMFunc

DW$127	.dwtag  DW_TAG_subprogram, DW_AT_name("RPMFunc"), DW_AT_symbol_name("_RPMFunc")
	.dwattr DW$127, DW_AT_low_pc(_RPMFunc)
	.dwattr DW$127, DW_AT_high_pc(0x00)
	.dwattr DW$127, DW_AT_begin_file("pccli.c")
	.dwattr DW$127, DW_AT_begin_line(0x2f6)
	.dwattr DW$127, DW_AT_begin_column(0x06)
	.dwattr DW$127, DW_AT_frame_base[DW_OP_breg20 -14]
	.dwattr DW$127, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",759,1

;***************************************************************
;* FNAME: _RPMFunc                      FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            5 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_RPMFunc:
        MOVL      *SP++,XAR1
        MOVB      AL,#0
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#6
        LCR       #_GetModalRPM         ; |760| 
        ; call occurs [#_GetModalRPM] ; |760| 
        MOVZ      AR2,AL                ; |760| 
        MOVB      AL,#1                 ; |760| 
        LCR       #_GetCheckedRPM       ; |760| 
        ; call occurs [#_GetCheckedRPM] ; |760| 
        MOVZ      AR1,AL                ; |760| 
        MOVB      AL,#2                 ; |760| 
        LCR       #_GetCheckedRPM       ; |760| 
        ; call occurs [#_GetCheckedRPM] ; |760| 
        MOVL      XAR3,#_stringbuffer   ; |760| 
        MOVL      XAR4,#FSL36           ; |760| 
        MOVL      *-SP[2],XAR4          ; |760| 
        MOV       *-SP[3],AR2           ; |760| 
        MOVL      XAR4,XAR3             ; |760| 
        MOV       *-SP[4],AR1           ; |760| 
        MOV       *-SP[5],AL            ; |760| 
        LCR       #_sprintf             ; |760| 
        ; call occurs [#_sprintf] ; |760| 
        MOVL      XAR4,XAR3             ; |761| 
        LCR       #_CLITransmitBuffer   ; |761| 
        ; call occurs [#_CLITransmitBuffer] ; |761| 
        SUBB      SP,#6
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"pccli.c",762,1
        LRETR
        ; return occurs
	.dwattr DW$127, DW_AT_end_file("pccli.c")
	.dwattr DW$127, DW_AT_end_line(0x2fa)
	.dwattr DW$127, DW_AT_end_column(0x01)
	.dwendtag DW$127

	.sect	".text"
	.global	_DisplayCalValuesFunc

DW$128	.dwtag  DW_TAG_subprogram, DW_AT_name("DisplayCalValuesFunc"), DW_AT_symbol_name("_DisplayCalValuesFunc")
	.dwattr DW$128, DW_AT_low_pc(_DisplayCalValuesFunc)
	.dwattr DW$128, DW_AT_high_pc(0x00)
	.dwattr DW$128, DW_AT_begin_file("pccli.c")
	.dwattr DW$128, DW_AT_begin_line(0x2fe)
	.dwattr DW$128, DW_AT_begin_column(0x06)
	.dwattr DW$128, DW_AT_frame_base[DW_OP_breg20 -12]
	.dwattr DW$128, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",767,1

;***************************************************************
;* FNAME: _DisplayCalValuesFunc         FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            5 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_DisplayCalValuesFunc:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR3
        ADDB      SP,#6
        LCR       #_ReadAllFromEEPROM   ; |769| 
        ; call occurs [#_ReadAllFromEEPROM] ; |769| 
        MOVL      XAR3,#_stringbuffer   ; |770| 
        MOVL      XAR4,#FSL37           ; |770| 
        MOVL      *-SP[2],XAR4          ; |770| 
        MOVL      XAR4,XAR3             ; |770| 
        LCR       #_sprintf             ; |770| 
        ; call occurs [#_sprintf] ; |770| 
        MOVL      XAR4,XAR3             ; |771| 
        LCR       #_CLITransmitBuffer   ; |771| 
        ; call occurs [#_CLITransmitBuffer] ; |771| 
        MOVL      XAR4,#FSL38           ; |772| 
        MOVL      *-SP[2],XAR4          ; |772| 
        MOVW      DP,#_config+3
        MOVL      XAR4,XAR3             ; |772| 
        MOV       AL,@_config+3         ; |772| 
        MOV       *-SP[3],AL            ; |772| 
        LCR       #_sprintf             ; |772| 
        ; call occurs [#_sprintf] ; |772| 
        MOVL      XAR4,XAR3             ; |773| 
        LCR       #_CLITransmitBuffer   ; |773| 
        ; call occurs [#_CLITransmitBuffer] ; |773| 
        MOVL      XAR4,#FSL39           ; |774| 
        MOVL      *-SP[2],XAR4          ; |774| 
        MOVW      DP,#_config+4
        MOVL      XAR4,XAR3             ; |774| 
        MOV       AL,@_config+4         ; |774| 
        MOV       *-SP[3],AL            ; |774| 
        LCR       #_sprintf             ; |774| 
        ; call occurs [#_sprintf] ; |774| 
        MOVL      XAR4,XAR3             ; |775| 
        LCR       #_CLITransmitBuffer   ; |775| 
        ; call occurs [#_CLITransmitBuffer] ; |775| 
	.dwpsn	"pccli.c",776,0
        MOVB      XAR0,#0
L28:    
DW$L$_DisplayCalValuesFunc$2$B:
	.dwpsn	"pccli.c",777,0
        MOVB      AL,#1                 ; |778| 
        MOVL      XAR4,#FSL40           ; |778| 
        ADD       AL,AR0                ; |778| 
        MOVL      *-SP[2],XAR4          ; |778| 
        MOVZ      AR1,AL                ; |778| 
        MOV       *-SP[3],AL            ; |778| 
        MOVL      XAR4,#_safe1+2        ; |778| 
        MOV       AL,*+XAR4[AR0]        ; |778| 
        MOVL      XAR4,XAR3             ; |778| 
        MOV       *-SP[4],AL            ; |778| 
        LCR       #_sprintf             ; |778| 
        ; call occurs [#_sprintf] ; |778| 
        MOVL      XAR4,XAR3             ; |779| 
        LCR       #_CLITransmitBuffer   ; |779| 
        ; call occurs [#_CLITransmitBuffer] ; |779| 
        MOVZ      AR0,AR1               ; |776| 
        MOV       AL,AR0                ; |776| 
        CMPB      AL,#14                ; |776| 
	.dwpsn	"pccli.c",780,0
        BF        L28,LO                ; |776| 
        ; branchcc occurs ; |776| 
DW$L$_DisplayCalValuesFunc$2$E:
	.dwpsn	"pccli.c",782,0
        MOVB      XAR0,#0
L29:    
DW$L$_DisplayCalValuesFunc$4$B:
        MOVB      AL,#1                 ; |784| 
        MOVL      XAR4,#FSL41           ; |784| 
        ADD       AL,AR0                ; |784| 
        MOVL      *-SP[2],XAR4          ; |784| 
        MOVZ      AR1,AL                ; |784| 
        MOV       *-SP[3],AL            ; |784| 
        MOVL      XAR4,#_xtswplusanacal ; |784| 
        MOV       AL,*+XAR4[AR0]        ; |784| 
        MOVL      XAR4,XAR3             ; |784| 
        MOV       *-SP[4],AL            ; |784| 
        LCR       #_sprintf             ; |784| 
        ; call occurs [#_sprintf] ; |784| 
        MOVL      XAR4,XAR3             ; |785| 
        LCR       #_CLITransmitBuffer   ; |785| 
        ; call occurs [#_CLITransmitBuffer] ; |785| 
        MOVZ      AR0,AR1               ; |782| 
        MOV       AL,AR0                ; |782| 
        CMPB      AL,#8                 ; |782| 
	.dwpsn	"pccli.c",786,0
        BF        L29,LO                ; |782| 
        ; branchcc occurs ; |782| 
DW$L$_DisplayCalValuesFunc$4$E:
	.dwpsn	"pccli.c",788,0
        MOVB      XAR0,#0
L30:    
DW$L$_DisplayCalValuesFunc$6$B:
	.dwpsn	"pccli.c",789,0
        MOVB      AL,#1                 ; |790| 
        MOVL      XAR4,#FSL42           ; |790| 
        ADD       AL,AR0                ; |790| 
        MOVL      *-SP[2],XAR4          ; |790| 
        MOVZ      AR1,AL                ; |790| 
        MOV       *-SP[3],AL            ; |790| 
        MOVL      XAR4,#_safe2          ; |790| 
        MOV       AL,*+XAR4[AR0]        ; |790| 
        MOVL      XAR4,#_safe2+4        ; |790| 
        MOV       *-SP[4],AL            ; |790| 
        MOV       AL,*+XAR4[AR0]        ; |790| 
        MOVL      XAR4,XAR3             ; |790| 
        MOV       *-SP[5],AL            ; |790| 
        LCR       #_sprintf             ; |790| 
        ; call occurs [#_sprintf] ; |790| 
        MOVL      XAR4,XAR3             ; |791| 
        LCR       #_CLITransmitBuffer   ; |791| 
        ; call occurs [#_CLITransmitBuffer] ; |791| 
        MOVZ      AR0,AR1               ; |788| 
        MOV       AL,AR0                ; |788| 
        CMPB      AL,#4                 ; |788| 
	.dwpsn	"pccli.c",792,0
        BF        L30,LO                ; |788| 
        ; branchcc occurs ; |788| 
DW$L$_DisplayCalValuesFunc$6$E:
        SUBB      SP,#6
        MOVL      XAR3,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"pccli.c",793,1
        LRETR
        ; return occurs

DW$129	.dwtag  DW_TAG_loop
	.dwattr DW$129, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\pccli.asm:L30:1:1471518983")
	.dwattr DW$129, DW_AT_begin_file("pccli.c")
	.dwattr DW$129, DW_AT_begin_line(0x314)
	.dwattr DW$129, DW_AT_end_line(0x318)
DW$130	.dwtag  DW_TAG_loop_range
	.dwattr DW$130, DW_AT_low_pc(DW$L$_DisplayCalValuesFunc$6$B)
	.dwattr DW$130, DW_AT_high_pc(DW$L$_DisplayCalValuesFunc$6$E)
	.dwendtag DW$129


DW$131	.dwtag  DW_TAG_loop
	.dwattr DW$131, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\pccli.asm:L29:1:1471518983")
	.dwattr DW$131, DW_AT_begin_file("pccli.c")
	.dwattr DW$131, DW_AT_begin_line(0x30e)
	.dwattr DW$131, DW_AT_end_line(0x312)
DW$132	.dwtag  DW_TAG_loop_range
	.dwattr DW$132, DW_AT_low_pc(DW$L$_DisplayCalValuesFunc$4$B)
	.dwattr DW$132, DW_AT_high_pc(DW$L$_DisplayCalValuesFunc$4$E)
	.dwendtag DW$131


DW$133	.dwtag  DW_TAG_loop
	.dwattr DW$133, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\pccli.asm:L28:1:1471518983")
	.dwattr DW$133, DW_AT_begin_file("pccli.c")
	.dwattr DW$133, DW_AT_begin_line(0x308)
	.dwattr DW$133, DW_AT_end_line(0x30c)
DW$134	.dwtag  DW_TAG_loop_range
	.dwattr DW$134, DW_AT_low_pc(DW$L$_DisplayCalValuesFunc$2$B)
	.dwattr DW$134, DW_AT_high_pc(DW$L$_DisplayCalValuesFunc$2$E)
	.dwendtag DW$133

	.dwattr DW$128, DW_AT_end_file("pccli.c")
	.dwattr DW$128, DW_AT_end_line(0x319)
	.dwattr DW$128, DW_AT_end_column(0x01)
	.dwendtag DW$128

	.sect	".text"
	.global	_OffsetFunc

DW$135	.dwtag  DW_TAG_subprogram, DW_AT_name("OffsetFunc"), DW_AT_symbol_name("_OffsetFunc")
	.dwattr DW$135, DW_AT_low_pc(_OffsetFunc)
	.dwattr DW$135, DW_AT_high_pc(0x00)
	.dwattr DW$135, DW_AT_begin_file("pccli.c")
	.dwattr DW$135, DW_AT_begin_line(0x31b)
	.dwattr DW$135, DW_AT_begin_column(0x06)
	.dwattr DW$135, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$135, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",796,1

;***************************************************************
;* FNAME: _OffsetFunc                   FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            3 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_OffsetFunc:
        MOVW      DP,#_CommandOffset
        MOVL      *SP++,XAR3
        MOV       AL,@_CommandOffset    ; |799| 
        MOVW      DP,#_CommandLen
        ADD       AL,@_CommandLen       ; |799| 
        MOVZ      AR0,AL                ; |799| 
        ADDB      SP,#4
        MOVL      XAR4,#_cmdbuf         ; |799| 
        MOV       AL,*+XAR4[AR0]        ; |799| 
        CMPB      AL,#61                ; |799| 
        BF        L32,NEQ               ; |799| 
        ; branchcc occurs ; |799| 
        MOVB      AL,#1                 ; |801| 
        ADD       AL,AR0                ; |801| 
        LCR       #_AsciitoInt          ; |801| 
        ; call occurs [#_AsciitoInt] ; |801| 
        MOVW      DP,#_safe1+1
        MOV       @_safe1+1,AL          ; |802| 
        MOVW      DP,#_config+4
        MOV       @_config+4,AL         ; |802| 
        MOVW      DP,#_settings+17
        MOV       AL,@_settings+17      ; |803| 
        CMPB      AL,#1                 ; |803| 
        BF        L31,NEQ               ; |803| 
        ; branchcc occurs ; |803| 
        LCR       #_WriteConfigStructtoNVMEM ; |803| 
        ; call occurs [#_WriteConfigStructtoNVMEM] ; |803| 
L31:    
        LCR       #_SaveSafeStruct1     ; |804| 
        ; call occurs [#_SaveSafeStruct1] ; |804| 
        BF        L33,UNC               ; |805| 
        ; branch occurs ; |805| 
L32:    
        MOVL      XAR4,#FSL43           ; |808| 
        MOVL      XAR3,#_stringbuffer   ; |808| 
        MOVW      DP,#_config+4
        MOVL      *-SP[2],XAR4          ; |808| 
        MOVL      XAR4,XAR3             ; |808| 
        MOV       AL,@_config+4         ; |808| 
        MOV       *-SP[3],AL            ; |808| 
        LCR       #_sprintf             ; |808| 
        ; call occurs [#_sprintf] ; |808| 
        MOVL      XAR4,XAR3             ; |809| 
        LCR       #_CLITransmitBuffer   ; |809| 
        ; call occurs [#_CLITransmitBuffer] ; |809| 
L33:    
        SUBB      SP,#4
        MOVL      XAR3,*--SP
	.dwpsn	"pccli.c",811,1
        LRETR
        ; return occurs
	.dwattr DW$135, DW_AT_end_file("pccli.c")
	.dwattr DW$135, DW_AT_end_line(0x32b)
	.dwattr DW$135, DW_AT_end_column(0x01)
	.dwendtag DW$135

	.sect	".text"
	.global	_ThresholdFunc

DW$136	.dwtag  DW_TAG_subprogram, DW_AT_name("ThresholdFunc"), DW_AT_symbol_name("_ThresholdFunc")
	.dwattr DW$136, DW_AT_low_pc(_ThresholdFunc)
	.dwattr DW$136, DW_AT_high_pc(0x00)
	.dwattr DW$136, DW_AT_begin_file("pccli.c")
	.dwattr DW$136, DW_AT_begin_line(0x32d)
	.dwattr DW$136, DW_AT_begin_column(0x06)
	.dwattr DW$136, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$136, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",814,1

;***************************************************************
;* FNAME: _ThresholdFunc                FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            3 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_ThresholdFunc:
        MOVW      DP,#_CommandOffset
        MOVL      *SP++,XAR3
        MOV       AL,@_CommandOffset    ; |817| 
        MOVW      DP,#_CommandLen
        ADD       AL,@_CommandLen       ; |817| 
        MOVZ      AR0,AL                ; |817| 
        ADDB      SP,#4
        MOVL      XAR4,#_cmdbuf         ; |817| 
        MOV       AL,*+XAR4[AR0]        ; |817| 
        CMPB      AL,#61                ; |817| 
        BF        L35,NEQ               ; |817| 
        ; branchcc occurs ; |817| 
        MOVB      AL,#1                 ; |819| 
        ADD       AL,AR0                ; |819| 
        LCR       #_AsciitoInt          ; |819| 
        ; call occurs [#_AsciitoInt] ; |819| 
        MOVW      DP,#_safe1
        MOV       @_safe1,AL            ; |820| 
        MOVW      DP,#_config+3
        MOV       @_config+3,AL         ; |820| 
        MOVW      DP,#_settings+17
        MOV       AL,@_settings+17      ; |821| 
        CMPB      AL,#1                 ; |821| 
        BF        L34,NEQ               ; |821| 
        ; branchcc occurs ; |821| 
        LCR       #_WriteConfigStructtoNVMEM ; |821| 
        ; call occurs [#_WriteConfigStructtoNVMEM] ; |821| 
L34:    
        LCR       #_SaveSafeStruct1     ; |822| 
        ; call occurs [#_SaveSafeStruct1] ; |822| 
        BF        L36,UNC               ; |823| 
        ; branch occurs ; |823| 
L35:    
        MOVL      XAR4,#FSL44           ; |826| 
        MOVL      XAR3,#_stringbuffer   ; |826| 
        MOVW      DP,#_config+3
        MOVL      *-SP[2],XAR4          ; |826| 
        MOVL      XAR4,XAR3             ; |826| 
        MOV       AL,@_config+3         ; |826| 
        MOV       *-SP[3],AL            ; |826| 
        LCR       #_sprintf             ; |826| 
        ; call occurs [#_sprintf] ; |826| 
        MOVL      XAR4,XAR3             ; |827| 
        LCR       #_CLITransmitBuffer   ; |827| 
        ; call occurs [#_CLITransmitBuffer] ; |827| 
L36:    
        SUBB      SP,#4
        MOVL      XAR3,*--SP
	.dwpsn	"pccli.c",829,1
        LRETR
        ; return occurs
	.dwattr DW$136, DW_AT_end_file("pccli.c")
	.dwattr DW$136, DW_AT_end_line(0x33d)
	.dwattr DW$136, DW_AT_end_column(0x01)
	.dwendtag DW$136

	.sect	".text"
	.global	_Cal18mAFunc

DW$137	.dwtag  DW_TAG_subprogram, DW_AT_name("Cal18mAFunc"), DW_AT_symbol_name("_Cal18mAFunc")
	.dwattr DW$137, DW_AT_low_pc(_Cal18mAFunc)
	.dwattr DW$137, DW_AT_high_pc(0x00)
	.dwattr DW$137, DW_AT_begin_file("pccli.c")
	.dwattr DW$137, DW_AT_begin_line(0x33f)
	.dwattr DW$137, DW_AT_begin_column(0x06)
	.dwattr DW$137, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$137, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",832,1

;***************************************************************
;* FNAME: _Cal18mAFunc                  FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            3 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_Cal18mAFunc:
        MOVL      *SP++,XAR1
        MOVW      DP,#_CommandOffset
        MOVL      *SP++,XAR3
        MOV       AL,@_CommandOffset    ; |835| 
        MOVW      DP,#_CommandLen
        ADD       AL,@_CommandLen       ; |835| 
        MOVZ      AR0,AL                ; |835| 
        MOVL      XAR4,#_cmdbuf         ; |835| 
        ADDB      SP,#4
        MOV       AL,*+XAR4[AR0]        ; |835| 
        CMPB      AL,#61                ; |835| 
        BF        L37,NEQ               ; |835| 
        ; branchcc occurs ; |835| 
        MOVB      AL,#1                 ; |837| 
        ADD       AL,AR0                ; |837| 
        LCR       #_AsciitoInt          ; |837| 
        ; call occurs [#_AsciitoInt] ; |837| 
        ADDB      AL,#-1
        CMPB      AL,#14                ; |837| 
        MOVZ      AR1,AL                ; |837| 
        BF        L39,HIS               ; |837| 
        ; branchcc occurs ; |837| 
        LCR       #_Calibrate18mA       ; |840| 
        ; call occurs [#_Calibrate18mA] ; |840| 
        MOVL      XAR4,#FSL45           ; |841| 
        MOVL      *-SP[2],XAR4          ; |841| 
        MOVL      XAR4,#_safe1+2        ; |841| 
        MOV       AL,*+XAR4[AR1]        ; |841| 
        MOV       *-SP[3],AL            ; |841| 
        BF        L38,UNC               ; |842| 
        ; branch occurs ; |842| 
L37:    
        MOVL      XAR4,#FSL46           ; |847| 
        MOVL      *-SP[2],XAR4          ; |847| 
L38:    
        MOVL      XAR3,#_stringbuffer   ; |847| 
        MOVL      XAR4,XAR3             ; |847| 
        LCR       #_sprintf             ; |847| 
        ; call occurs [#_sprintf] ; |847| 
        MOVL      XAR4,XAR3             ; |848| 
        LCR       #_CLITransmitBuffer   ; |848| 
        ; call occurs [#_CLITransmitBuffer] ; |848| 
L39:    
        SUBB      SP,#4
        MOVL      XAR3,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"pccli.c",850,1
        LRETR
        ; return occurs
	.dwattr DW$137, DW_AT_end_file("pccli.c")
	.dwattr DW$137, DW_AT_end_line(0x352)
	.dwattr DW$137, DW_AT_end_column(0x01)
	.dwendtag DW$137

	.sect	".text"
	.global	_CalLoop18mAFunc

DW$138	.dwtag  DW_TAG_subprogram, DW_AT_name("CalLoop18mAFunc"), DW_AT_symbol_name("_CalLoop18mAFunc")
	.dwattr DW$138, DW_AT_low_pc(_CalLoop18mAFunc)
	.dwattr DW$138, DW_AT_high_pc(0x00)
	.dwattr DW$138, DW_AT_begin_file("pccli.c")
	.dwattr DW$138, DW_AT_begin_line(0x356)
	.dwattr DW$138, DW_AT_begin_column(0x06)
	.dwattr DW$138, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$138, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",855,1

;***************************************************************
;* FNAME: _CalLoop18mAFunc              FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            3 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_CalLoop18mAFunc:
        MOVL      *SP++,XAR1
        MOVW      DP,#_CommandOffset
        MOVL      *SP++,XAR3
        MOV       AL,@_CommandOffset    ; |858| 
        MOVW      DP,#_CommandLen
        ADD       AL,@_CommandLen       ; |858| 
        MOVZ      AR0,AL                ; |858| 
        MOVL      XAR4,#_cmdbuf         ; |858| 
        ADDB      SP,#4
        MOV       AL,*+XAR4[AR0]        ; |858| 
        CMPB      AL,#61                ; |858| 
        BF        L43,NEQ               ; |858| 
        ; branchcc occurs ; |858| 
        MOVB      AL,#1                 ; |860| 
        ADD       AL,AR0                ; |860| 
        LCR       #_AsciitoInt          ; |860| 
        ; call occurs [#_AsciitoInt] ; |860| 
        ADDB      AL,#-1
        CMPB      AL,#8                 ; |860| 
        MOVZ      AR1,AL                ; |860| 
        BF        L42,HIS               ; |860| 
        ; branchcc occurs ; |860| 
        CMPB      AL,#3                 ; |866| 
        BF        L40,EQ                ; |866| 
        ; branchcc occurs ; |866| 
        LCR       #_CalibrateLoop18mA   ; |873| 
        ; call occurs [#_CalibrateLoop18mA] ; |873| 
        BF        L41,UNC               ; |873| 
        ; branch occurs ; |873| 
L40:    
        MOVW      DP,#_inputs+231
        MOV       AL,@_inputs+231       ; |868| 
        MOVW      DP,#_xtswplusanacal+3
        MOV       @_xtswplusanacal+3,AL ; |868| 
        LCR       #_SaveXtswplusAnaCal  ; |869| 
        ; call occurs [#_SaveXtswplusAnaCal] ; |869| 
L41:    
        MOVL      XAR4,#FSL45           ; |876| 
        MOVL      *-SP[2],XAR4          ; |876| 
        MOVL      XAR4,#_xtswplusanacal ; |876| 
        MOV       AL,*+XAR4[AR1]        ; |876| 
        MOV       *-SP[3],AL            ; |876| 
        BF        L45,UNC               ; |878| 
        ; branch occurs ; |878| 
L42:    
        MOVL      XAR4,#FSL47           ; |879| 
        BF        L44,UNC               ; |880| 
        ; branch occurs ; |880| 
L43:    
        MOVL      XAR4,#FSL46           ; |886| 
L44:    
        MOVL      *-SP[2],XAR4          ; |886| 
L45:    
        MOVL      XAR3,#_stringbuffer   ; |886| 
        MOVL      XAR4,XAR3             ; |886| 
        LCR       #_sprintf             ; |886| 
        ; call occurs [#_sprintf] ; |886| 
        MOVL      XAR4,XAR3             ; |887| 
        LCR       #_CLITransmitBuffer   ; |887| 
        ; call occurs [#_CLITransmitBuffer] ; |887| 
        SUBB      SP,#4
        MOVL      XAR3,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"pccli.c",889,1
        LRETR
        ; return occurs
	.dwattr DW$138, DW_AT_end_file("pccli.c")
	.dwattr DW$138, DW_AT_end_line(0x379)
	.dwattr DW$138, DW_AT_end_column(0x01)
	.dwendtag DW$138

	.sect	".text"
	.global	_FilterValFunc

DW$139	.dwtag  DW_TAG_subprogram, DW_AT_name("FilterValFunc"), DW_AT_symbol_name("_FilterValFunc")
	.dwattr DW$139, DW_AT_low_pc(_FilterValFunc)
	.dwattr DW$139, DW_AT_high_pc(0x00)
	.dwattr DW$139, DW_AT_begin_file("pccli.c")
	.dwattr DW$139, DW_AT_begin_line(0x37d)
	.dwattr DW$139, DW_AT_begin_column(0x06)
	.dwattr DW$139, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$139, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",894,1

;***************************************************************
;* FNAME: _FilterValFunc                FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            3 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_FilterValFunc:
        MOVW      DP,#_CommandOffset
        MOVL      *SP++,XAR3
        MOV       AL,@_CommandOffset    ; |897| 
        MOVW      DP,#_CommandLen
        ADD       AL,@_CommandLen       ; |897| 
        MOVZ      AR0,AL                ; |897| 
        ADDB      SP,#4
        MOVL      XAR4,#_cmdbuf         ; |897| 
        MOV       AL,*+XAR4[AR0]        ; |897| 
        CMPB      AL,#61                ; |897| 
        BF        L47,NEQ               ; |897| 
        ; branchcc occurs ; |897| 
        MOVB      AL,#1                 ; |899| 
        ADD       AL,AR0                ; |899| 
        LCR       #_AsciitoInt          ; |899| 
        ; call occurs [#_AsciitoInt] ; |899| 
        MOV       AH,AL                 ; |900| 
        ADDB      AH,#-1
        CMP       AH,#1000              ; |900| 
        BF        L46,HIS               ; |900| 
        ; branchcc occurs ; |900| 
        MOVW      DP,#_config
        MOV       @_config,AL           ; |907| 
        LCR       #_SaveSafeStruct2     ; |908| 
        ; call occurs [#_SaveSafeStruct2] ; |908| 
        MOVW      DP,#_settings+10
        MOV       @_settings+10,#1      ; |909| 
        BF        L49,UNC               ; |909| 
        ; branch occurs ; |909| 
L46:    
        MOVL      XAR4,#FSL48           ; |902| 
        MOVL      *-SP[2],XAR4          ; |902| 
        BF        L48,UNC               ; |904| 
        ; branch occurs ; |904| 
L47:    
        MOVW      DP,#_config
        MOVL      XAR4,#FSL49           ; |915| 
        MOV       AL,@_config           ; |915| 
        MOVL      *-SP[2],XAR4          ; |915| 
        MOV       *-SP[3],AL            ; |915| 
L48:    
        MOVL      XAR3,#_stringbuffer   ; |915| 
        MOVL      XAR4,XAR3             ; |915| 
        LCR       #_sprintf             ; |915| 
        ; call occurs [#_sprintf] ; |915| 
        MOVL      XAR4,XAR3             ; |916| 
        LCR       #_CLITransmitBuffer   ; |916| 
        ; call occurs [#_CLITransmitBuffer] ; |916| 
L49:    
        SUBB      SP,#4
        MOVL      XAR3,*--SP
	.dwpsn	"pccli.c",918,1
        LRETR
        ; return occurs
	.dwattr DW$139, DW_AT_end_file("pccli.c")
	.dwattr DW$139, DW_AT_end_line(0x396)
	.dwattr DW$139, DW_AT_end_column(0x01)
	.dwendtag DW$139

	.sect	".text"
	.global	_TimeSetFunc

DW$140	.dwtag  DW_TAG_subprogram, DW_AT_name("TimeSetFunc"), DW_AT_symbol_name("_TimeSetFunc")
	.dwattr DW$140, DW_AT_low_pc(_TimeSetFunc)
	.dwattr DW$140, DW_AT_high_pc(0x00)
	.dwattr DW$140, DW_AT_begin_file("pccli.c")
	.dwattr DW$140, DW_AT_begin_line(0x3d5)
	.dwattr DW$140, DW_AT_begin_column(0x06)
	.dwattr DW$140, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$140, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",982,1

;***************************************************************
;* FNAME: _TimeSetFunc                  FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            5 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_TimeSetFunc:
        MOVW      DP,#_CommandOffset
        MOVL      *SP++,XAR3
        MOV       AL,@_CommandOffset    ; |983| 
        MOVW      DP,#_CommandLen
        ADD       AL,@_CommandLen       ; |983| 
        MOVZ      AR0,AL                ; |983| 
        ADDB      SP,#6
        MOVL      XAR4,#_cmdbuf         ; |983| 
        MOV       AL,*+XAR4[AR0]        ; |983| 
        CMPB      AL,#61                ; |983| 
        BF        L50,NEQ               ; |983| 
        ; branchcc occurs ; |983| 
        MOVB      AL,#1                 ; |985| 
        ADD       AL,AR0                ; |985| 
        LCR       #_ConvertTime         ; |985| 
        ; call occurs [#_ConvertTime] ; |985| 
        LCR       #_WriteClockData      ; |986| 
        ; call occurs [#_WriteClockData] ; |986| 
L50:    
        LCR       #_ReadClockData       ; |988| 
        ; call occurs [#_ReadClockData] ; |988| 
        MOVL      XAR3,#_stringbuffer   ; |989| 
        MOVW      DP,#_clocktime+3
        MOVL      XAR4,#FSL50           ; |989| 
        MOV       AL,@_clocktime+3      ; |989| 
        MOVL      *-SP[2],XAR4          ; |989| 
        MOVW      DP,#_clocktime+2
        MOV       *-SP[3],AL            ; |989| 
        MOV       AL,@_clocktime+2      ; |989| 
        MOVW      DP,#_clocktime+1
        MOV       *-SP[4],AL            ; |989| 
        MOVL      XAR4,XAR3             ; |989| 
        MOV       AL,@_clocktime+1      ; |989| 
        MOV       *-SP[5],AL            ; |989| 
        LCR       #_sprintf             ; |989| 
        ; call occurs [#_sprintf] ; |989| 
        MOVL      XAR4,XAR3             ; |990| 
        LCR       #_CLITransmitBuffer   ; |990| 
        ; call occurs [#_CLITransmitBuffer] ; |990| 
        SUBB      SP,#6
        MOVL      XAR3,*--SP
	.dwpsn	"pccli.c",991,1
        LRETR
        ; return occurs
	.dwattr DW$140, DW_AT_end_file("pccli.c")
	.dwattr DW$140, DW_AT_end_line(0x3df)
	.dwattr DW$140, DW_AT_end_column(0x01)
	.dwendtag DW$140

	.sect	".text"
	.global	_DateSetFunc

DW$141	.dwtag  DW_TAG_subprogram, DW_AT_name("DateSetFunc"), DW_AT_symbol_name("_DateSetFunc")
	.dwattr DW$141, DW_AT_low_pc(_DateSetFunc)
	.dwattr DW$141, DW_AT_high_pc(0x00)
	.dwattr DW$141, DW_AT_begin_file("pccli.c")
	.dwattr DW$141, DW_AT_begin_line(0x3e2)
	.dwattr DW$141, DW_AT_begin_column(0x06)
	.dwattr DW$141, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$141, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",995,1

;***************************************************************
;* FNAME: _DateSetFunc                  FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            6 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_DateSetFunc:
        MOVW      DP,#_CommandOffset
        MOVL      *SP++,XAR3
        MOV       AL,@_CommandOffset    ; |996| 
        MOVW      DP,#_CommandLen
        ADD       AL,@_CommandLen       ; |996| 
        MOVZ      AR0,AL                ; |996| 
        ADDB      SP,#6
        MOVL      XAR4,#_cmdbuf         ; |996| 
        MOV       AL,*+XAR4[AR0]        ; |996| 
        CMPB      AL,#61                ; |996| 
        BF        L51,NEQ               ; |996| 
        ; branchcc occurs ; |996| 
        MOVB      AL,#1                 ; |998| 
        ADD       AL,AR0                ; |998| 
        LCR       #_ConvertDate         ; |998| 
        ; call occurs [#_ConvertDate] ; |998| 
        LCR       #_WriteClockData      ; |999| 
        ; call occurs [#_WriteClockData] ; |999| 
L51:    
        LCR       #_ReadClockData       ; |1001| 
        ; call occurs [#_ReadClockData] ; |1001| 
        MOVL      XAR3,#_stringbuffer   ; |1002| 
        MOVW      DP,#_clocktime+5
        MOVL      XAR4,#FSL51           ; |1002| 
        MOV       AL,@_clocktime+5      ; |1002| 
        MOVL      *-SP[2],XAR4          ; |1002| 
        MOVW      DP,#_clocktime+6
        MOV       *-SP[3],AL            ; |1002| 
        MOV       AL,@_clocktime+6      ; |1002| 
        MOVW      DP,#_clocktime+7
        MOV       *-SP[4],AL            ; |1002| 
        MOV       AL,@_clocktime+7      ; |1002| 
        MOVW      DP,#_clocktime+4
        MOV       *-SP[5],AL            ; |1002| 
        MOVL      XAR4,XAR3             ; |1002| 
        MOV       AL,@_clocktime+4      ; |1002| 
        MOV       *-SP[6],AL            ; |1002| 
        LCR       #_sprintf             ; |1002| 
        ; call occurs [#_sprintf] ; |1002| 
        MOVL      XAR4,XAR3             ; |1003| 
        LCR       #_CLITransmitBuffer   ; |1003| 
        ; call occurs [#_CLITransmitBuffer] ; |1003| 
        SUBB      SP,#6
        MOVL      XAR3,*--SP
	.dwpsn	"pccli.c",1004,1
        LRETR
        ; return occurs
	.dwattr DW$141, DW_AT_end_file("pccli.c")
	.dwattr DW$141, DW_AT_end_line(0x3ec)
	.dwattr DW$141, DW_AT_end_column(0x01)
	.dwendtag DW$141

	.sect	".text"
	.global	_FramReTestFunc

DW$142	.dwtag  DW_TAG_subprogram, DW_AT_name("FramReTestFunc"), DW_AT_symbol_name("_FramReTestFunc")
	.dwattr DW$142, DW_AT_low_pc(_FramReTestFunc)
	.dwattr DW$142, DW_AT_high_pc(0x00)
	.dwattr DW$142, DW_AT_begin_file("pccli.c")
	.dwattr DW$142, DW_AT_begin_line(0x416)
	.dwattr DW$142, DW_AT_begin_column(0x06)
	.dwattr DW$142, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$142, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",1047,1

;***************************************************************
;* FNAME: _FramReTestFunc               FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  2 Auto,  2 SOE     *
;***************************************************************

_FramReTestFunc:
        MOVW      DP,#_CommandOffset
        MOVL      *SP++,XAR3
        MOV       AL,@_CommandOffset    ; |1051| 
        MOVW      DP,#_CommandLen
        ADD       AL,@_CommandLen       ; |1051| 
        MOVZ      AR0,AL                ; |1051| 
        ADDB      SP,#6
        MOVL      XAR4,#_cmdbuf         ; |1051| 
        MOV       AL,*+XAR4[AR0]        ; |1051| 
        CMPB      AL,#61                ; |1051| 
        BF        L52,NEQ               ; |1051| 
        ; branchcc occurs ; |1051| 
        MOVL      XAR4,#FSL52           ; |1053| 
        MOVL      XAR3,#_stringbuffer   ; |1053| 
        MOVL      *-SP[2],XAR4          ; |1053| 
        MOVL      XAR4,XAR3             ; |1053| 
        LCR       #_sprintf             ; |1053| 
        ; call occurs [#_sprintf] ; |1053| 
        MOVL      XAR4,XAR3             ; |1054| 
        LCR       #_CLITransmitBuffer   ; |1054| 
        ; call occurs [#_CLITransmitBuffer] ; |1054| 
        MOVW      DP,#_CommandOffset
        MOV       AL,@_CommandOffset    ; |1055| 
        MOVW      DP,#_CommandLen
        ADD       AL,@_CommandLen       ; |1055| 
        ADDB      AL,#1                 ; |1055| 
        LCR       #_AsciitoInt          ; |1055| 
        ; call occurs [#_AsciitoInt] ; |1055| 
        MOV       *-SP[6],#0            ; |1057| 
        MOVZ      AR4,SP                ; |1059| 
        ADDB      AL,#-1
        MOV       *-SP[5],#0            ; |1058| 
        MOVB      XAR5,#2               ; |1059| 
        SUBB      XAR4,#6               ; |1059| 
        MOV       AH,#32762             ; |1059| 
        LCR       #_ReadNVMemory        ; |1059| 
        ; call occurs [#_ReadNVMemory] ; |1059| 
        MOVL      XAR4,#FSL53           ; |1061| 
        MOVL      *-SP[2],XAR4          ; |1061| 
        MOV       AL,*-SP[5]            ; |1061| 
        MOV       *-SP[3],AL            ; |1061| 
        MOVL      XAR4,XAR3             ; |1061| 
        MOV       AL,*-SP[6]            ; |1061| 
        MOV       *-SP[4],AL            ; |1061| 
        LCR       #_sprintf             ; |1061| 
        ; call occurs [#_sprintf] ; |1061| 
        MOVL      XAR4,XAR3             ; |1062| 
        LCR       #_CLITransmitBuffer   ; |1062| 
        ; call occurs [#_CLITransmitBuffer] ; |1062| 
L52:    
        SUBB      SP,#6
        MOVL      XAR3,*--SP
	.dwpsn	"pccli.c",1064,1
        LRETR
        ; return occurs
	.dwattr DW$142, DW_AT_end_file("pccli.c")
	.dwattr DW$142, DW_AT_end_line(0x428)
	.dwattr DW$142, DW_AT_end_column(0x01)
	.dwendtag DW$142

	.sect	".text"
	.global	_AT25DF041CheckFunc

DW$143	.dwtag  DW_TAG_subprogram, DW_AT_name("AT25DF041CheckFunc"), DW_AT_symbol_name("_AT25DF041CheckFunc")
	.dwattr DW$143, DW_AT_low_pc(_AT25DF041CheckFunc)
	.dwattr DW$143, DW_AT_high_pc(0x00)
	.dwattr DW$143, DW_AT_begin_file("pccli.c")
	.dwattr DW$143, DW_AT_begin_line(0x42f)
	.dwattr DW$143, DW_AT_begin_column(0x06)
	.dwattr DW$143, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$143, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",1072,1

;***************************************************************
;* FNAME: _AT25DF041CheckFunc           FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_AT25DF041CheckFunc:
        MOVL      *SP++,XAR3
        ADDB      SP,#2
        MOVL      XAR4,#FSL54           ; |1076| 
        MOVL      XAR3,#_stringbuffer   ; |1076| 
        MOVL      *-SP[2],XAR4          ; |1076| 
        MOVL      XAR4,XAR3             ; |1076| 
        LCR       #_sprintf             ; |1076| 
        ; call occurs [#_sprintf] ; |1076| 
        MOVL      XAR4,XAR3             ; |1076| 
        LCR       #_CLITransmitBuffer   ; |1076| 
        ; call occurs [#_CLITransmitBuffer] ; |1076| 
        LCR       #_EraseSPIFlash       ; |1077| 
        ; call occurs [#_EraseSPIFlash] ; |1077| 
        MOVW      DP,#_reprogram+1
        MOV       @_reprogram+1,#0      ; |1078| 
        MOVW      DP,#_reprogram+2
	.dwpsn	"pccli.c",1082,0
        MOV       @_reprogram+2,#0      ; |1079| 
L53:    
DW$L$_AT25DF041CheckFunc$2$B:
	.dwpsn	"pccli.c",1083,0
        MOVW      DP,#_timers+68
        MOV       AL,@_timers+68        ; |1082| 
        BF        L54,EQ                ; |1082| 
        ; branchcc occurs ; |1082| 
DW$L$_AT25DF041CheckFunc$2$E:
DW$L$_AT25DF041CheckFunc$3$B:
        LCR       #_CheckSPIBusy        ; |1084| 
        ; call occurs [#_CheckSPIBusy] ; |1084| 
        MOVW      DP,#_settings
        CMPB      AL,#0                 ; |1085| 
        MOV       @_settings,#1         ; |1085| 
	.dwpsn	"pccli.c",1086,0
        BF        L53,NEQ               ; |1085| 
        ; branchcc occurs ; |1085| 
DW$L$_AT25DF041CheckFunc$3$E:
L54:    
        MOVW      DP,#_timers+68
        MOV       AL,@_timers+68        ; |1087| 
        BF        L59,EQ                ; |1087| 
        ; branchcc occurs ; |1087| 
        LCR       #_CheckEraseProgError ; |1088| 
        ; call occurs [#_CheckEraseProgError] ; |1088| 
        CMPB      AL,#1                 ; |1088| 
        BF        L59,EQ                ; |1088| 
        ; branchcc occurs ; |1088| 
        MOVL      XAR4,#FSL55           ; |1096| 
        MOVL      *-SP[2],XAR4          ; |1096| 
        MOVL      XAR4,XAR3             ; |1096| 
        LCR       #_sprintf             ; |1096| 
        ; call occurs [#_sprintf] ; |1096| 
        MOVL      XAR4,XAR3             ; |1096| 
        LCR       #_CLITransmitBuffer   ; |1096| 
        ; call occurs [#_CLITransmitBuffer] ; |1096| 
        MOVL      XAR4,#FSL56           ; |1096| 
        MOVL      *-SP[2],XAR4          ; |1096| 
        MOVL      XAR4,XAR3             ; |1096| 
        LCR       #_sprintf             ; |1096| 
        ; call occurs [#_sprintf] ; |1096| 
        MOVL      XAR4,XAR3             ; |1100| 
        LCR       #_CLITransmitBuffer   ; |1100| 
        ; call occurs [#_CLITransmitBuffer] ; |1100| 
        LCR       #_ProgramCheckFunc    ; |1101| 
        ; call occurs [#_ProgramCheckFunc] ; |1101| 
        CMPB      AL,#0                 ; |1101| 
        BF        L55,NEQ               ; |1101| 
        ; branchcc occurs ; |1101| 
        MOVL      XAR4,#FSL55           ; |1102| 
        MOVL      *-SP[2],XAR4          ; |1102| 
        MOVL      XAR4,XAR3             ; |1102| 
        BF        L56,UNC               ; |1102| 
        ; branch occurs ; |1102| 
L55:    
        MOVL      XAR4,#FSL57           ; |1101| 
        MOVL      *-SP[2],XAR4          ; |1101| 
        MOVL      XAR4,#_stringbuffer   ; |1101| 
L56:    
        LCR       #_sprintf             ; |1101| 
        ; call occurs [#_sprintf] ; |1101| 
        MOVL      XAR4,XAR3             ; |1103| 
        LCR       #_CLITransmitBuffer   ; |1103| 
        ; call occurs [#_CLITransmitBuffer] ; |1103| 
        MOVL      XAR4,#FSL54           ; |1105| 
        MOVL      *-SP[2],XAR4          ; |1105| 
        MOVL      XAR4,XAR3             ; |1105| 
        LCR       #_sprintf             ; |1105| 
        ; call occurs [#_sprintf] ; |1105| 
        MOVL      XAR4,XAR3             ; |1105| 
        LCR       #_CLITransmitBuffer   ; |1105| 
        ; call occurs [#_CLITransmitBuffer] ; |1105| 
        LCR       #_EraseSPIFlash       ; |1107| 
        ; call occurs [#_EraseSPIFlash] ; |1107| 
        MOVW      DP,#_reprogram+1
        MOV       @_reprogram+1,#0      ; |1108| 
        MOVW      DP,#_reprogram+2
	.dwpsn	"pccli.c",1112,0
        MOV       @_reprogram+2,#0      ; |1109| 
L57:    
DW$L$_AT25DF041CheckFunc$10$B:
	.dwpsn	"pccli.c",1113,0
        MOVW      DP,#_timers+68
        MOV       AL,@_timers+68        ; |1112| 
        BF        L58,EQ                ; |1112| 
        ; branchcc occurs ; |1112| 
DW$L$_AT25DF041CheckFunc$10$E:
DW$L$_AT25DF041CheckFunc$11$B:
        LCR       #_CheckSPIBusy        ; |1114| 
        ; call occurs [#_CheckSPIBusy] ; |1114| 
        MOVW      DP,#_settings
        CMPB      AL,#0                 ; |1115| 
        MOV       @_settings,#1         ; |1115| 
	.dwpsn	"pccli.c",1116,0
        BF        L57,NEQ               ; |1115| 
        ; branchcc occurs ; |1115| 
DW$L$_AT25DF041CheckFunc$11$E:
L58:    
        MOVW      DP,#_timers+68
        MOV       AL,@_timers+68        ; |1117| 
        BF        L59,EQ                ; |1117| 
        ; branchcc occurs ; |1117| 
        LCR       #_CheckEraseProgError ; |1118| 
        ; call occurs [#_CheckEraseProgError] ; |1118| 
        CMPB      AL,#1                 ; |1118| 
        BF        L59,EQ                ; |1118| 
        ; branchcc occurs ; |1118| 
        MOVL      XAR4,#FSL55           ; |1126| 
        BF        L60,UNC               ; |1126| 
        ; branch occurs ; |1126| 
L59:    
        MOVL      XAR4,#FSL58           ; |1091| 
L60:    
        MOVL      *-SP[2],XAR4          ; |1091| 
        MOVL      XAR4,XAR3             ; |1091| 
        LCR       #_sprintf             ; |1091| 
        ; call occurs [#_sprintf] ; |1091| 
        MOVL      XAR4,XAR3             ; |1091| 
        LCR       #_CLITransmitBuffer   ; |1091| 
        ; call occurs [#_CLITransmitBuffer] ; |1091| 
        SUBB      SP,#2
        MOVL      XAR3,*--SP
	.dwpsn	"pccli.c",1128,1
        LRETR
        ; return occurs

DW$144	.dwtag  DW_TAG_loop
	.dwattr DW$144, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\pccli.asm:L57:1:1471518983")
	.dwattr DW$144, DW_AT_begin_file("pccli.c")
	.dwattr DW$144, DW_AT_begin_line(0x458)
	.dwattr DW$144, DW_AT_end_line(0x45c)
DW$145	.dwtag  DW_TAG_loop_range
	.dwattr DW$145, DW_AT_low_pc(DW$L$_AT25DF041CheckFunc$10$B)
	.dwattr DW$145, DW_AT_high_pc(DW$L$_AT25DF041CheckFunc$10$E)
DW$146	.dwtag  DW_TAG_loop_range
	.dwattr DW$146, DW_AT_low_pc(DW$L$_AT25DF041CheckFunc$11$B)
	.dwattr DW$146, DW_AT_high_pc(DW$L$_AT25DF041CheckFunc$11$E)
	.dwendtag DW$144


DW$147	.dwtag  DW_TAG_loop
	.dwattr DW$147, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\pccli.asm:L53:1:1471518983")
	.dwattr DW$147, DW_AT_begin_file("pccli.c")
	.dwattr DW$147, DW_AT_begin_line(0x43a)
	.dwattr DW$147, DW_AT_end_line(0x43e)
DW$148	.dwtag  DW_TAG_loop_range
	.dwattr DW$148, DW_AT_low_pc(DW$L$_AT25DF041CheckFunc$2$B)
	.dwattr DW$148, DW_AT_high_pc(DW$L$_AT25DF041CheckFunc$2$E)
DW$149	.dwtag  DW_TAG_loop_range
	.dwattr DW$149, DW_AT_low_pc(DW$L$_AT25DF041CheckFunc$3$B)
	.dwattr DW$149, DW_AT_high_pc(DW$L$_AT25DF041CheckFunc$3$E)
	.dwendtag DW$147

	.dwattr DW$143, DW_AT_end_file("pccli.c")
	.dwattr DW$143, DW_AT_end_line(0x468)
	.dwattr DW$143, DW_AT_end_column(0x01)
	.dwendtag DW$143

	.sect	".text"
	.global	_HandleCharExt

DW$150	.dwtag  DW_TAG_subprogram, DW_AT_name("HandleCharExt"), DW_AT_symbol_name("_HandleCharExt")
	.dwattr DW$150, DW_AT_low_pc(_HandleCharExt)
	.dwattr DW$150, DW_AT_high_pc(0x00)
	.dwattr DW$150, DW_AT_begin_file("pccli.c")
	.dwattr DW$150, DW_AT_begin_line(0x489)
	.dwattr DW$150, DW_AT_begin_column(0x06)
	.dwattr DW$150, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$150, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",1162,1

;***************************************************************
;* FNAME: _HandleCharExt                FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_HandleCharExt:
        MOVW      DP,#_rxchar
        MOVL      *SP++,XAR3
        MOV       AL,@_rxchar           ; |1165| 
        ADDB      SP,#2
        CMPB      AL,#27                ; |1165| 
        BF        L61,GT                ; |1165| 
        ; branchcc occurs ; |1165| 
        CMPB      AL,#27                ; |1165| 
        BF        L64,EQ                ; |1165| 
        ; branchcc occurs ; |1165| 
        CMPB      AL,#8                 ; |1165| 
        BF        L67,EQ                ; |1165| 
        ; branchcc occurs ; |1165| 
        CMPB      AL,#13                ; |1165| 
        BF        L62,EQ                ; |1165| 
        ; branchcc occurs ; |1165| 
        BF        L66,UNC               ; |1165| 
        ; branch occurs ; |1165| 
L61:    
        CMPB      AL,#47                ; |1165| 
        BF        L65,EQ                ; |1165| 
        ; branchcc occurs ; |1165| 
        CMPB      AL,#127               ; |1165| 
        BF        L67,EQ                ; |1165| 
        ; branchcc occurs ; |1165| 
        BF        L66,UNC               ; |1165| 
        ; branch occurs ; |1165| 
L62:    
        MOVL      XAR4,#FSL7            ; |1207| 
        MOVL      XAR3,#_stringbuffer   ; |1207| 
        MOVL      *-SP[2],XAR4          ; |1207| 
        MOVL      XAR4,XAR3             ; |1207| 
        LCR       #_sprintf             ; |1207| 
        ; call occurs [#_sprintf] ; |1207| 
        MOVL      XAR4,XAR3             ; |1208| 
        LCR       #_CLITransmitBuffer   ; |1208| 
        ; call occurs [#_CLITransmitBuffer] ; |1208| 
        MOVW      DP,#_cmdbufptr
        MOVL      XAR4,@_cmdbufptr      ; |1209| 
        MOVB      AL,#1                 ; |1213| 
        MOV       *+XAR4[0],#0          ; |1209| 
L63:    
        MOVL      XAR4,#_cmdbuf         ; |1211| 
        MOVW      DP,#_cmdbufptr
        MOVL      @_cmdbufptr,XAR4      ; |1211| 
        MOVW      DP,#_rxcharcount
        MOV       @_rxcharcount,#0      ; |1212| 
        BF        L70,UNC               ; |1213| 
        ; branch occurs ; |1213| 
L64:    
        MOVB      AL,#0
        BF        L63,UNC               ; |1174| 
        ; branch occurs ; |1174| 
L65:    
        MOVB      AL,#1                 ; |1169| 
        BF        L70,UNC               ; |1169| 
        ; branch occurs ; |1169| 
L66:    
        MOVW      DP,#_rxcharcount
        MOV       AL,@_rxcharcount      ; |1216| 
        CMPB      AL,#32                ; |1216| 
        BF        L68,HIS               ; |1216| 
        ; branchcc occurs ; |1216| 
        MOVW      DP,#_rxcharcount
        INC       @_rxcharcount         ; |1222| 
        MOVW      DP,#_cmdbufptr
        MOVL      XAR4,@_cmdbufptr      ; |1223| 
        MOVW      DP,#_rxchar
        MOV       AL,@_rxchar           ; |1223| 
        MOV       *+XAR4[0],AL          ; |1223| 
        MOVW      DP,#_cmdbufptr
        MOVB      ACC,#1
        ADDL      @_cmdbufptr,ACC       ; |1224| 
        MOVW      DP,#_rxchar
        MOV       AL,@_rxchar           ; |1225| 
        BF        L69,UNC               ; |1225| 
        ; branch occurs ; |1225| 
L67:    
        MOVW      DP,#_rxcharcount
        MOV       AL,@_rxcharcount      ; |1177| 
        BF        L68,EQ                ; |1177| 
        ; branchcc occurs ; |1177| 
        MOVW      DP,#_rxcharcount
        MOVB      ACC,#1
        DEC       @_rxcharcount         ; |1179| 
        MOVW      DP,#_cmdbufptr
        SUBL      @_cmdbufptr,ACC       ; |1180| 
        MOVB      AL,#8                 ; |1181| 
        LCR       #_SendCLIChar         ; |1181| 
        ; call occurs [#_SendCLIChar] ; |1181| 
        MOVB      AL,#32                ; |1182| 
        LCR       #_SendCLIChar         ; |1182| 
        ; call occurs [#_SendCLIChar] ; |1182| 
        MOVB      AL,#8                 ; |1183| 
        BF        L69,UNC               ; |1184| 
        ; branch occurs ; |1184| 
L68:    
        MOVB      AL,#7                 ; |1187| 
L69:    
        LCR       #_SendCLIChar         ; |1187| 
        ; call occurs [#_SendCLIChar] ; |1187| 
        MOVB      AL,#0
L70:    
        SUBB      SP,#2                 ; |1187| 
        MOVL      XAR3,*--SP            ; |1187| 
	.dwpsn	"pccli.c",1230,1
        LRETR
        ; return occurs
	.dwattr DW$150, DW_AT_end_file("pccli.c")
	.dwattr DW$150, DW_AT_end_line(0x4ce)
	.dwattr DW$150, DW_AT_end_column(0x01)
	.dwendtag DW$150

	.sect	".text"
	.global	_ParseCmd

DW$151	.dwtag  DW_TAG_subprogram, DW_AT_name("ParseCmd"), DW_AT_symbol_name("_ParseCmd")
	.dwattr DW$151, DW_AT_low_pc(_ParseCmd)
	.dwattr DW$151, DW_AT_high_pc(0x00)
	.dwattr DW$151, DW_AT_begin_file("pccli.c")
	.dwattr DW$151, DW_AT_begin_line(0x4d6)
	.dwattr DW$151, DW_AT_begin_column(0x06)
	.dwattr DW$151, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$151, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",1239,1

;***************************************************************
;* FNAME: _ParseCmd                     FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_ParseCmd:
;* AR4   assigned to _cmdptr
DW$152	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cmdptr"), DW_AT_symbol_name("_cmdptr")
	.dwattr DW$152, DW_AT_type(*DW$T$84)
	.dwattr DW$152, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _cmd_length
DW$153	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cmd_length"), DW_AT_symbol_name("_cmd_length")
	.dwattr DW$153, DW_AT_type(*DW$T$84)
	.dwattr DW$153, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      XAR2,XAR5             ; |1239| 
        MOVL      *SP++,XAR3
        MOVL      XAR5,#FSL59           ; |1241| 
        MOVL      XAR3,XAR4             ; |1239| 
        LCR       #_strcspn             ; |1241| 
        ; call occurs [#_strcspn] ; |1241| 
        MOVB      XAR1,#0
        CMPB      AL,#3                 ; |1243| 
        MOV       *+XAR2[0],AL          ; |1241| 
        BF        L71,GEQ               ; |1243| 
        ; branchcc occurs ; |1243| 
        MOV       AL,#-2                ; |1244| 
        BF        L75,UNC               ; |1244| 
        ; branch occurs ; |1244| 
L71:    
        MOVW      DP,#_Commands
        MOV       AL,@_Commands         ; |1246| 
        BF        L74,EQ                ; |1246| 
        ; branchcc occurs ; |1246| 
L72:    
DW$L$_ParseCmd$4$B:
	.dwpsn	"pccli.c",1247,0
        MOV       T,#92                 ; |1249| 
        MOVL      XAR4,#_Commands       ; |1249| 
        MOVW      DP,#_settings
        SETC      SXM
        MPYXU     ACC,T,AR1             ; |1249| 
        MOVL      XAR5,XAR3             ; |1249| 
        ADDL      XAR4,ACC
        MOV       @_settings,#1         ; |1248| 
        MOV       ACC,*+XAR2[0]         ; |1249| 
        LCR       #_strncmp             ; |1249| 
        ; call occurs [#_strncmp] ; |1249| 
        CMPB      AL,#0                 ; |1249| 
        BF        L73,NEQ               ; |1249| 
        ; branchcc occurs ; |1249| 
DW$L$_ParseCmd$4$E:
        MOV       AL,AR1                ; |1251| 
        BF        L75,UNC               ; |1251| 
        ; branch occurs ; |1251| 
L73:    
DW$L$_ParseCmd$6$B:
        ADDB      XAR1,#1               ; |1253| 
        MOV       T,#92                 ; |1253| 
        MOVL      XAR4,#_Commands       ; |1253| 
        MPYXU     ACC,T,AR1             ; |1253| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |1253| 
	.dwpsn	"pccli.c",1254,0
        BF        L72,NEQ               ; |1253| 
        ; branchcc occurs ; |1253| 
DW$L$_ParseCmd$6$E:
L74:    
        MOV       AL,#-1                ; |1255| 
L75:    
        MOVL      XAR3,*--SP            ; |1255| 
        MOVL      XAR2,*--SP            ; |1255| 
        MOVL      XAR1,*--SP            ; |1255| 
	.dwpsn	"pccli.c",1256,1
        LRETR
        ; return occurs

DW$154	.dwtag  DW_TAG_loop
	.dwattr DW$154, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\pccli.asm:L72:1:1471518983")
	.dwattr DW$154, DW_AT_begin_file("pccli.c")
	.dwattr DW$154, DW_AT_begin_line(0x4de)
	.dwattr DW$154, DW_AT_end_line(0x4e6)
DW$155	.dwtag  DW_TAG_loop_range
	.dwattr DW$155, DW_AT_low_pc(DW$L$_ParseCmd$4$B)
	.dwattr DW$155, DW_AT_high_pc(DW$L$_ParseCmd$4$E)
DW$156	.dwtag  DW_TAG_loop_range
	.dwattr DW$156, DW_AT_low_pc(DW$L$_ParseCmd$6$B)
	.dwattr DW$156, DW_AT_high_pc(DW$L$_ParseCmd$6$E)
	.dwendtag DW$154

	.dwattr DW$151, DW_AT_end_file("pccli.c")
	.dwattr DW$151, DW_AT_end_line(0x4e8)
	.dwattr DW$151, DW_AT_end_column(0x01)
	.dwendtag DW$151

	.sect	".text"
	.global	_HandleCmd

DW$157	.dwtag  DW_TAG_subprogram, DW_AT_name("HandleCmd"), DW_AT_symbol_name("_HandleCmd")
	.dwattr DW$157, DW_AT_low_pc(_HandleCmd)
	.dwattr DW$157, DW_AT_high_pc(0x00)
	.dwattr DW$157, DW_AT_begin_file("pccli.c")
	.dwattr DW$157, DW_AT_begin_line(0x4ee)
	.dwattr DW$157, DW_AT_begin_column(0x06)
	.dwattr DW$157, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$157, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",1263,1

;***************************************************************
;* FNAME: _HandleCmd                    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_HandleCmd:
;* AL    assigned to _cmd
DW$158	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cmd"), DW_AT_symbol_name("_cmd")
	.dwattr DW$158, DW_AT_type(*DW$T$83)
	.dwattr DW$158, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _offset
DW$159	.dwtag  DW_TAG_formal_parameter, DW_AT_name("offset"), DW_AT_symbol_name("_offset")
	.dwattr DW$159, DW_AT_type(*DW$T$83)
	.dwattr DW$159, DW_AT_location[DW_OP_reg1]
;* AR4   assigned to _len
DW$160	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$160, DW_AT_type(*DW$T$83)
	.dwattr DW$160, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR3
        CMP       AL,#-1                ; |1264| 
        ADDB      SP,#2
        BF        L76,EQ                ; |1264| 
        ; branchcc occurs ; |1264| 
        CMP       AL,#-2                ; |1269| 
        BF        L77,EQ                ; |1269| 
        ; branchcc occurs ; |1269| 
        MOVW      DP,#_CommandNum
        MOV       @_CommandNum,AL       ; |1272| 
        MOV       T,AL                  ; |1275| 
        MOVW      DP,#_CommandLen
        MOV       @_CommandLen,AR4      ; |1273| 
        MOVW      DP,#_CommandOffset
        MOV       @_CommandOffset,AH    ; |1274| 
        MOVL      XAR4,#_Commands+90    ; |1275| 
        MPYB      ACC,T,#92             ; |1275| 
        ADDL      XAR4,ACC
        MOVL      XAR7,*+XAR4[0]        ; |1275| 
        LCR       *XAR7                 ; |1275| 
        ; call occurs [XAR7] ; |1275| 
        BF        L77,UNC               ; |1275| 
        ; branch occurs ; |1275| 
L76:    
        MOVL      XAR4,#FSL46           ; |1266| 
        MOVL      XAR3,#_stringbuffer   ; |1266| 
        MOVL      *-SP[2],XAR4          ; |1266| 
        MOVL      XAR4,XAR3             ; |1266| 
        LCR       #_sprintf             ; |1266| 
        ; call occurs [#_sprintf] ; |1266| 
        MOVL      XAR4,XAR3             ; |1267| 
        LCR       #_CLITransmitBuffer   ; |1267| 
        ; call occurs [#_CLITransmitBuffer] ; |1267| 
L77:    
        SUBB      SP,#2
        MOVL      XAR3,*--SP
	.dwpsn	"pccli.c",1277,1
        LRETR
        ; return occurs
	.dwattr DW$157, DW_AT_end_file("pccli.c")
	.dwattr DW$157, DW_AT_end_line(0x4fd)
	.dwattr DW$157, DW_AT_end_column(0x01)
	.dwendtag DW$157

	.sect	".text"
	.global	_PcCLI

DW$161	.dwtag  DW_TAG_subprogram, DW_AT_name("PcCLI"), DW_AT_symbol_name("_PcCLI")
	.dwattr DW$161, DW_AT_low_pc(_PcCLI)
	.dwattr DW$161, DW_AT_high_pc(0x00)
	.dwattr DW$161, DW_AT_begin_file("pccli.c")
	.dwattr DW$161, DW_AT_begin_line(0x505)
	.dwattr DW$161, DW_AT_begin_column(0x06)
	.dwattr DW$161, DW_AT_frame_base[DW_OP_breg20 -14]
	.dwattr DW$161, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",1286,1

;***************************************************************
;* FNAME: _PcCLI                        FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  1 Auto,  6 SOE     *
;***************************************************************

_PcCLI:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#6
        LCR       #_ReadCLIChar         ; |1292| 
        ; call occurs [#_ReadCLIChar] ; |1292| 
        MOVB      XAR1,#0
        MOVW      DP,#_rxchar
        CMPB      AL,#0                 ; |1292| 
        MOV       @_rxchar,AL           ; |1292| 
        BF        L85,EQ                ; |1292| 
        ; branchcc occurs ; |1292| 
        MOVW      DP,#_RxCharacterFlag
        MOV       AL,@_RxCharacterFlag  ; |1296| 
        BF        L78,NEQ               ; |1296| 
        ; branchcc occurs ; |1296| 
        MOVW      DP,#_RxCharacterFlag
        MOV       @_RxCharacterFlag,#1  ; |1298| 
        MOVW      DP,#_timers+2
        MOV       @_timers+2,#4000      ; |1299| 
L78:    
        LCR       #_HandleCharExt       ; |1301| 
        ; call occurs [#_HandleCharExt] ; |1301| 
        CMPB      AL,#1                 ; |1301| 
        BF        L85,NEQ               ; |1301| 
        ; branchcc occurs ; |1301| 
        MOVW      DP,#_RxCharacterFlag
        MOVL      XAR4,#_cmdbuf         ; |1304| 
        MOV       @_RxCharacterFlag,#0  ; |1303| 
	.dwpsn	"pccli.c",1305,0
        MOVL      XAR2,XAR4             ; |1304| 
L79:    
DW$L$_PcCLI$6$B:
	.dwpsn	"pccli.c",1306,0
        MOVZ      AR5,SP                ; |1307| 
        MOVL      XAR4,XAR2
        SUBB      XAR5,#5               ; |1307| 
        LCR       #_ParseCmd            ; |1307| 
        ; call occurs [#_ParseCmd] ; |1307| 
        MOVZ      AR4,*-SP[5]           ; |1308| 
        MOV       AH,AR1                ; |1308| 
        LCR       #_HandleCmd           ; |1308| 
        ; call occurs [#_HandleCmd] ; |1308| 
        MOVB      XAR4,#1               ; |1311| 
        BF        L81,UNC               ; |1309| 
        ; branch occurs ; |1309| 
DW$L$_PcCLI$6$E:
L80:    
DW$L$_PcCLI$7$B:
        CMPB      AL,#0                 ; |1309| 
        BF        L84,EQ                ; |1309| 
        ; branchcc occurs ; |1309| 
DW$L$_PcCLI$7$E:
DW$L$_PcCLI$8$B:
        MOVL      ACC,XAR2              ; |1311| 
        ADDU      ACC,AR4               ; |1311| 
        MOVL      XAR2,ACC              ; |1311| 
        MOV       AL,AR1                ; |1311| 
        ADDB      AL,#1                 ; |1312| 
        MOVZ      AR1,AL                ; |1312| 
DW$L$_PcCLI$8$E:
L81:    
DW$L$_PcCLI$9$B:
        MOV       AL,*+XAR2[0]          ; |1309| 
        CMPB      AL,#32                ; |1309| 
        BF        L82,EQ                ; |1309| 
        ; branchcc occurs ; |1309| 
DW$L$_PcCLI$9$E:
DW$L$_PcCLI$10$B:
        MOV       AL,*+XAR2[0]          ; |1309| 
        CMPB      AL,#44                ; |1309| 
        BF        L80,NEQ               ; |1309| 
        ; branchcc occurs ; |1309| 
DW$L$_PcCLI$10$E:
DW$L$_PcCLI$11$B:
        MOV       AL,*+XAR2[0]          ; |1314| 
        CMPB      AL,#32                ; |1314| 
        BF        L82,EQ                ; |1314| 
        ; branchcc occurs ; |1314| 
DW$L$_PcCLI$11$E:
DW$L$_PcCLI$12$B:
        CMPB      AL,#44                ; |1314| 
        BF        L83,NEQ               ; |1314| 
        ; branchcc occurs ; |1314| 
DW$L$_PcCLI$12$E:
L82:    
DW$L$_PcCLI$13$B:
        MOVL      ACC,XAR2              ; |1316| 
        MOVB      XAR4,#1               ; |1316| 
        ADDU      ACC,AR4               ; |1316| 
        MOVL      XAR2,ACC              ; |1316| 
        MOV       AL,AR1                ; |1316| 
        ADDB      AL,#1                 ; |1317| 
        MOVZ      AR1,AL                ; |1317| 
DW$L$_PcCLI$13$E:
L83:    
DW$L$_PcCLI$14$B:
        MOV       AL,*+XAR2[0]          ; |1320| 
	.dwpsn	"pccli.c",1320,0
        BF        L79,NEQ               ; |1320| 
        ; branchcc occurs ; |1320| 
DW$L$_PcCLI$14$E:
L84:    
        MOVL      XAR4,#FSL60           ; |1321| 
        MOVL      XAR3,#_stringbuffer   ; |1321| 
        MOVW      DP,#_prompt
        MOVL      *-SP[2],XAR4          ; |1321| 
        MOVL      XAR4,XAR3             ; |1321| 
        MOVL      ACC,@_prompt          ; |1321| 
        MOVL      *-SP[4],ACC           ; |1321| 
        LCR       #_sprintf             ; |1321| 
        ; call occurs [#_sprintf] ; |1321| 
        MOVL      XAR4,XAR3             ; |1322| 
        LCR       #_CLITransmitBuffer   ; |1322| 
        ; call occurs [#_CLITransmitBuffer] ; |1322| 
L85:    
        MOVW      DP,#_RxCharacterFlag
        MOV       AL,@_RxCharacterFlag  ; |1325| 
        CMPB      AL,#1                 ; |1325| 
        BF        L86,NEQ               ; |1325| 
        ; branchcc occurs ; |1325| 
        MOVW      DP,#_timers+2
        MOV       AL,@_timers+2         ; |1325| 
        BF        L86,NEQ               ; |1325| 
        ; branchcc occurs ; |1325| 
        MOVL      XAR4,#_cmdbuf         ; |1327| 
        MOVW      DP,#_cmdbufptr
        MOVL      @_cmdbufptr,XAR4      ; |1327| 
        MOVL      XAR3,#_stringbuffer   ; |1331| 
        MOVW      DP,#_cmdbuf
        MOV       @_cmdbuf,#0           ; |1328| 
        MOVW      DP,#_rxcharcount
        MOV       @_rxcharcount,#0      ; |1329| 
        MOVW      DP,#_RxCharacterFlag
        MOVL      XAR4,#FSL61           ; |1331| 
        MOV       @_RxCharacterFlag,#0  ; |1330| 
        MOVL      *-SP[2],XAR4          ; |1331| 
        MOVW      DP,#_prompt
        MOVL      XAR4,XAR3             ; |1331| 
        MOVL      ACC,@_prompt          ; |1331| 
        MOVL      *-SP[4],ACC           ; |1331| 
        LCR       #_sprintf             ; |1331| 
        ; call occurs [#_sprintf] ; |1331| 
        MOVL      XAR4,XAR3             ; |1332| 
        LCR       #_CLITransmitBuffer   ; |1332| 
        ; call occurs [#_CLITransmitBuffer] ; |1332| 
L86:    
        SUBB      SP,#6
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"pccli.c",1335,1
        LRETR
        ; return occurs

DW$162	.dwtag  DW_TAG_loop
	.dwattr DW$162, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\pccli.asm:L79:1:1471518983")
	.dwattr DW$162, DW_AT_begin_file("pccli.c")
	.dwattr DW$162, DW_AT_begin_line(0x519)
	.dwattr DW$162, DW_AT_end_line(0x528)
DW$163	.dwtag  DW_TAG_loop_range
	.dwattr DW$163, DW_AT_low_pc(DW$L$_PcCLI$6$B)
	.dwattr DW$163, DW_AT_high_pc(DW$L$_PcCLI$6$E)
DW$164	.dwtag  DW_TAG_loop_range
	.dwattr DW$164, DW_AT_low_pc(DW$L$_PcCLI$11$B)
	.dwattr DW$164, DW_AT_high_pc(DW$L$_PcCLI$11$E)
DW$165	.dwtag  DW_TAG_loop_range
	.dwattr DW$165, DW_AT_low_pc(DW$L$_PcCLI$12$B)
	.dwattr DW$165, DW_AT_high_pc(DW$L$_PcCLI$12$E)
DW$166	.dwtag  DW_TAG_loop_range
	.dwattr DW$166, DW_AT_low_pc(DW$L$_PcCLI$13$B)
	.dwattr DW$166, DW_AT_high_pc(DW$L$_PcCLI$13$E)
DW$167	.dwtag  DW_TAG_loop_range
	.dwattr DW$167, DW_AT_low_pc(DW$L$_PcCLI$14$B)
	.dwattr DW$167, DW_AT_high_pc(DW$L$_PcCLI$14$E)

DW$168	.dwtag  DW_TAG_loop
	.dwattr DW$168, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\pccli.asm:L81:2:1471518983")
	.dwattr DW$168, DW_AT_begin_file("pccli.c")
	.dwattr DW$168, DW_AT_begin_line(0x51d)
	.dwattr DW$168, DW_AT_end_line(0x520)
DW$169	.dwtag  DW_TAG_loop_range
	.dwattr DW$169, DW_AT_low_pc(DW$L$_PcCLI$9$B)
	.dwattr DW$169, DW_AT_high_pc(DW$L$_PcCLI$9$E)
DW$170	.dwtag  DW_TAG_loop_range
	.dwattr DW$170, DW_AT_low_pc(DW$L$_PcCLI$10$B)
	.dwattr DW$170, DW_AT_high_pc(DW$L$_PcCLI$10$E)
DW$171	.dwtag  DW_TAG_loop_range
	.dwattr DW$171, DW_AT_low_pc(DW$L$_PcCLI$7$B)
	.dwattr DW$171, DW_AT_high_pc(DW$L$_PcCLI$7$E)
DW$172	.dwtag  DW_TAG_loop_range
	.dwattr DW$172, DW_AT_low_pc(DW$L$_PcCLI$8$B)
	.dwattr DW$172, DW_AT_high_pc(DW$L$_PcCLI$8$E)
	.dwendtag DW$168

	.dwendtag DW$162

	.dwattr DW$161, DW_AT_end_file("pccli.c")
	.dwattr DW$161, DW_AT_end_line(0x537)
	.dwattr DW$161, DW_AT_end_column(0x01)
	.dwendtag DW$161

	.sect	".text"
	.global	_AsciitoSingleChar

DW$173	.dwtag  DW_TAG_subprogram, DW_AT_name("AsciitoSingleChar"), DW_AT_symbol_name("_AsciitoSingleChar")
	.dwattr DW$173, DW_AT_low_pc(_AsciitoSingleChar)
	.dwattr DW$173, DW_AT_high_pc(0x00)
	.dwattr DW$173, DW_AT_begin_file("pccli.c")
	.dwattr DW$173, DW_AT_begin_line(0x53b)
	.dwattr DW$173, DW_AT_begin_column(0x06)
	.dwattr DW$173, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$173, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",1340,1

;***************************************************************
;* FNAME: _AsciitoSingleChar            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_AsciitoSingleChar:
;* AL    assigned to _i
DW$174	.dwtag  DW_TAG_formal_parameter, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$174, DW_AT_type(*DW$T$11)
	.dwattr DW$174, DW_AT_location[DW_OP_reg0]
        MOVZ      AR0,AL                ; |1340| 
        MOVL      XAR4,#_cmdbuf         ; |1341| 
        MOV       AL,*+XAR4[AR0]        ; |1341| 
        ADDB      AL,#-48
	.dwpsn	"pccli.c",1342,1
        LRETR
        ; return occurs
	.dwattr DW$173, DW_AT_end_file("pccli.c")
	.dwattr DW$173, DW_AT_end_line(0x53e)
	.dwattr DW$173, DW_AT_end_column(0x01)
	.dwendtag DW$173

	.sect	".text"
	.global	_AsciitoInt

DW$175	.dwtag  DW_TAG_subprogram, DW_AT_name("AsciitoInt"), DW_AT_symbol_name("_AsciitoInt")
	.dwattr DW$175, DW_AT_low_pc(_AsciitoInt)
	.dwattr DW$175, DW_AT_high_pc(0x00)
	.dwattr DW$175, DW_AT_begin_file("pccli.c")
	.dwattr DW$175, DW_AT_begin_line(0x541)
	.dwattr DW$175, DW_AT_begin_column(0x05)
	.dwattr DW$175, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$175, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",1346,1

;***************************************************************
;* FNAME: _AsciitoInt                   FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_AsciitoInt:
;* AL    assigned to _i
DW$176	.dwtag  DW_TAG_formal_parameter, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$176, DW_AT_type(*DW$T$11)
	.dwattr DW$176, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVZ      AR1,AL                ; |1346| 
        MOVL      *SP++,XAR3
        MOVL      XAR3,#_cmdbuf         ; |1351| 
        MOVL      ACC,XAR3              ; |1351| 
        ADDU      ACC,AR1               ; |1351| 
        MOVL      XAR2,ACC              ; |1351| 
        MOVB      XAR6,#0
        MOV       AH,*+XAR2[0]          ; |1351| 
        BF        L91,EQ                ; |1351| 
        ; branchcc occurs ; |1351| 
        MOVL      XAR4,XAR2             ; |1353| 
        LCR       #_strlen              ; |1353| 
        ; call occurs [#_strlen] ; |1353| 
        CMPB      AL,#4                 ; |1353| 
        BF        L90,EQ                ; |1353| 
        ; branchcc occurs ; |1353| 
        CMPB      AL,#3                 ; |1367| 
        BF        L88,NEQ               ; |1367| 
        ; branchcc occurs ; |1367| 
        MOV       AL,*+XAR2[0]          ; |1369| 
        ADDB      AL,#-48
        MOVB      XAR0,#1               ; |1371| 
        MOV       T,AL                  ; |1369| 
        MPYB      ACC,T,#100            ; |1370| 
        MOV       AH,AR1
        ADD       AR0,AH
        MOV       AH,*+XAR3[AR0]        ; |1371| 
        MOVZ      AR6,AL                ; |1370| 
        ADDB      AH,#-48
        MOV       T,AH                  ; |1371| 
        MPYB      ACC,T,#10             ; |1373| 
        MOVB      XAR0,#2               ; |1375| 
        MOV       AH,AR1
        ADD       AR0,AH
        MOV       T,AL                  ; |1373| 
        MOV       AL,AR6                ; |1373| 
        MOV       AH,*+XAR3[AR0]        ; |1375| 
        ADD       AL,T                  ; |1373| 
L87:    
        MOVZ      AR6,AL                ; |1373| 
        ADD       AH,AR6                ; |1375| 
        ADDB      AH,#-48
        MOV       AL,AH                 ; |1375| 
        BF        L92,UNC               ; |1376| 
        ; branch occurs ; |1376| 
L88:    
        CMPB      AL,#2                 ; |1377| 
        BF        L89,NEQ               ; |1377| 
        ; branchcc occurs ; |1377| 
        MOVL      XAR4,#_cmdbuf         ; |1379| 
        MOV       AL,*+XAR4[AR1]        ; |1379| 
        MOVB      XAR0,#1               ; |1382| 
        ADDB      AL,#-48
        MOV       T,AL                  ; |1379| 
        MPYB      ACC,T,#10             ; |1380| 
        MOV       AH,AR1
        ADD       AR0,AH
        MOV       AH,*+XAR4[AR0]        ; |1382| 
        BF        L87,UNC               ; |1383| 
        ; branch occurs ; |1383| 
L89:    
        MOVL      XAR4,#_cmdbuf         ; |1386| 
        MOV       AL,*+XAR4[AR1]        ; |1386| 
        ADDB      AL,#-48
        BF        L92,UNC               ; |1386| 
        ; branch occurs ; |1386| 
L90:    
        MOVL      XAR4,#_cmdbuf         ; |1356| 
        MOV       AL,*+XAR4[AR1]        ; |1356| 
        ADDB      AL,#-48
        MOVZ      AR6,AL                ; |1356| 
        MOVB      XAR0,#1               ; |1358| 
        MOV       T,AR6                 ; |1356| 
        MPY       ACC,AR6,#1000         ; |1357| 
        MOV       AH,AR1
        ADD       AR0,AH
        MOV       AH,*+XAR4[AR0]        ; |1358| 
        ADDB      AH,#-48
        MOVZ      AR6,AL                ; |1357| 
        MOV       T,AH                  ; |1358| 
        MPYB      ACC,T,#100            ; |1360| 
        MOVB      XAR0,#2               ; |1361| 
        MOV       AH,AR1
        ADD       AR0,AH
        MOV       T,AL                  ; |1360| 
        MOV       AL,AR6                ; |1360| 
        MOV       AH,*+XAR4[AR0]        ; |1361| 
        ADD       AL,T                  ; |1360| 
        ADDB      AH,#-48
        MOVZ      AR6,AL                ; |1360| 
        MOV       T,AH                  ; |1361| 
        MPYB      ACC,T,#10             ; |1363| 
        MOVB      XAR0,#3               ; |1365| 
        MOV       AH,AR1
        MOV       T,AL                  ; |1363| 
        ADD       AR0,AH
        MOV       AL,AR6                ; |1363| 
        ADD       AL,T                  ; |1363| 
        MOVZ      AR6,AL                ; |1363| 
        MOV       AH,*+XAR4[AR0]        ; |1365| 
        ADD       AH,AR6                ; |1365| 
        ADDB      AH,#-48
        MOVZ      AR6,AH                ; |1365| 
L91:    
        MOV       AL,AR6
L92:    
        MOVL      XAR3,*--SP            ; |1389| 
        MOVL      XAR2,*--SP            ; |1389| 
        MOVL      XAR1,*--SP            ; |1389| 
	.dwpsn	"pccli.c",1390,1
        LRETR
        ; return occurs
	.dwattr DW$175, DW_AT_end_file("pccli.c")
	.dwattr DW$175, DW_AT_end_line(0x56e)
	.dwattr DW$175, DW_AT_end_column(0x01)
	.dwendtag DW$175

	.sect	".text"
	.global	_ConvertTime

DW$177	.dwtag  DW_TAG_subprogram, DW_AT_name("ConvertTime"), DW_AT_symbol_name("_ConvertTime")
	.dwattr DW$177, DW_AT_low_pc(_ConvertTime)
	.dwattr DW$177, DW_AT_high_pc(0x00)
	.dwattr DW$177, DW_AT_begin_file("pccli.c")
	.dwattr DW$177, DW_AT_begin_line(0x574)
	.dwattr DW$177, DW_AT_begin_column(0x06)
	.dwattr DW$177, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$177, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",1397,1

;***************************************************************
;* FNAME: _ConvertTime                  FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_ConvertTime:
;* AL    assigned to _i
DW$178	.dwtag  DW_TAG_formal_parameter, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$178, DW_AT_type(*DW$T$11)
	.dwattr DW$178, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVZ      AR1,AL                ; |1397| 
        LCR       #_AsciitoBCD          ; |1398| 
        ; call occurs [#_AsciitoBCD] ; |1398| 
        MOVW      DP,#_clocktime+3
        MOV       @_clocktime+3,AL      ; |1398| 
        MOVB      AL,#3                 ; |1399| 
        ADD       AL,AR1                ; |1399| 
        LCR       #_AsciitoBCD          ; |1399| 
        ; call occurs [#_AsciitoBCD] ; |1399| 
        MOVW      DP,#_clocktime+2
        MOV       @_clocktime+2,AL      ; |1399| 
        MOVB      AL,#6                 ; |1400| 
        ADD       AL,AR1                ; |1400| 
        LCR       #_AsciitoBCD          ; |1400| 
        ; call occurs [#_AsciitoBCD] ; |1400| 
        MOVW      DP,#_clocktime+1
        MOV       @_clocktime+1,AL      ; |1400| 
        MOVL      XAR1,*--SP
	.dwpsn	"pccli.c",1401,1
        LRETR
        ; return occurs
	.dwattr DW$177, DW_AT_end_file("pccli.c")
	.dwattr DW$177, DW_AT_end_line(0x579)
	.dwattr DW$177, DW_AT_end_column(0x01)
	.dwendtag DW$177

	.sect	".text"
	.global	_ConvertDate

DW$179	.dwtag  DW_TAG_subprogram, DW_AT_name("ConvertDate"), DW_AT_symbol_name("_ConvertDate")
	.dwattr DW$179, DW_AT_low_pc(_ConvertDate)
	.dwattr DW$179, DW_AT_high_pc(0x00)
	.dwattr DW$179, DW_AT_begin_file("pccli.c")
	.dwattr DW$179, DW_AT_begin_line(0x57c)
	.dwattr DW$179, DW_AT_begin_column(0x06)
	.dwattr DW$179, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$179, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",1405,1

;***************************************************************
;* FNAME: _ConvertDate                  FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_ConvertDate:
;* AL    assigned to _i
DW$180	.dwtag  DW_TAG_formal_parameter, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$180, DW_AT_type(*DW$T$11)
	.dwattr DW$180, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVZ      AR1,AL                ; |1405| 
        LCR       #_AsciitoBCD          ; |1406| 
        ; call occurs [#_AsciitoBCD] ; |1406| 
        MOVW      DP,#_clocktime+5
        MOV       @_clocktime+5,AL      ; |1406| 
        MOVB      AL,#3                 ; |1407| 
        ADD       AL,AR1                ; |1407| 
        LCR       #_AsciitoBCD          ; |1407| 
        ; call occurs [#_AsciitoBCD] ; |1407| 
        MOVW      DP,#_clocktime+6
        MOV       @_clocktime+6,AL      ; |1407| 
        MOVB      AL,#6                 ; |1408| 
        ADD       AL,AR1                ; |1408| 
        LCR       #_AsciitoBCD          ; |1408| 
        ; call occurs [#_AsciitoBCD] ; |1408| 
        MOVW      DP,#_clocktime+7
        MOV       @_clocktime+7,AL      ; |1408| 
        MOVB      XAR0,#9               ; |1409| 
        MOV       AL,AR1                ; |1409| 
        ADD       AR0,AL                ; |1409| 
        MOVL      XAR4,#_cmdbuf         ; |1409| 
        MOV       AL,*+XAR4[AR0]        ; |1409| 
        ADDB      AL,#-48
        MOVW      DP,#_clocktime+4
        MOV       @_clocktime+4,AL      ; |1409| 
        MOVL      XAR1,*--SP
	.dwpsn	"pccli.c",1410,1
        LRETR
        ; return occurs
	.dwattr DW$179, DW_AT_end_file("pccli.c")
	.dwattr DW$179, DW_AT_end_line(0x582)
	.dwattr DW$179, DW_AT_end_column(0x01)
	.dwendtag DW$179

	.sect	".text"
	.global	_AsciitoBCD

DW$181	.dwtag  DW_TAG_subprogram, DW_AT_name("AsciitoBCD"), DW_AT_symbol_name("_AsciitoBCD")
	.dwattr DW$181, DW_AT_low_pc(_AsciitoBCD)
	.dwattr DW$181, DW_AT_high_pc(0x00)
	.dwattr DW$181, DW_AT_begin_file("pccli.c")
	.dwattr DW$181, DW_AT_begin_line(0x586)
	.dwattr DW$181, DW_AT_begin_column(0x0e)
	.dwattr DW$181, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$181, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",1415,1

;***************************************************************
;* FNAME: _AsciitoBCD                   FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_AsciitoBCD:
;* AL    assigned to _i
DW$182	.dwtag  DW_TAG_formal_parameter, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$182, DW_AT_type(*DW$T$11)
	.dwattr DW$182, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVZ      AR1,AL                ; |1415| 
        MOVB      AL,#0
        MOVL      XAR4,#_cmdbuf         ; |1419| 
        MOV       AH,*+XAR4[AR1]        ; |1419| 
        BF        L93,EQ                ; |1419| 
        ; branchcc occurs ; |1419| 
        ADDB      AH,#-48
        MOVB      XAR0,#1               ; |1424| 
        MOV       AL,AH                 ; |1421| 
        MOV       AH,AR1
        ADD       AR0,AH
        LSL       AL,4                  ; |1423| 
        MOV       AH,*+XAR4[AR0]        ; |1424| 
        ADD       AH,AL                 ; |1424| 
        ADDB      AH,#-48
        MOV       AL,AH                 ; |1424| 
L93:    
        MOVL      XAR1,*--SP            ; |1426| 
	.dwpsn	"pccli.c",1427,1
        LRETR
        ; return occurs
	.dwattr DW$181, DW_AT_end_file("pccli.c")
	.dwattr DW$181, DW_AT_end_line(0x593)
	.dwattr DW$181, DW_AT_end_column(0x01)
	.dwendtag DW$181

	.sect	".text"
	.global	_BCDTimetoAsciiOutonCLI

DW$183	.dwtag  DW_TAG_subprogram, DW_AT_name("BCDTimetoAsciiOutonCLI"), DW_AT_symbol_name("_BCDTimetoAsciiOutonCLI")
	.dwattr DW$183, DW_AT_low_pc(_BCDTimetoAsciiOutonCLI)
	.dwattr DW$183, DW_AT_high_pc(0x00)
	.dwattr DW$183, DW_AT_begin_file("pccli.c")
	.dwattr DW$183, DW_AT_begin_line(0x599)
	.dwattr DW$183, DW_AT_begin_column(0x06)
	.dwattr DW$183, DW_AT_frame_base[DW_OP_breg20 -12]
	.dwattr DW$183, DW_AT_skeletal(0x01)
	.dwpsn	"pccli.c",1434,1

;***************************************************************
;* FNAME: _BCDTimetoAsciiOutonCLI       FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            8 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_BCDTimetoAsciiOutonCLI:
;* AR4   assigned to _ptr
DW$184	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$184, DW_AT_type(*DW$T$87)
	.dwattr DW$184, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR3
        MOVZ      AR7,*+XAR4[1]         ; |1448| 
        MOVZ      AR6,*+XAR4[2]         ; |1448| 
        MOV       AL,*+XAR4[0]          ; |1448| 
        ADDB      SP,#8
        MOV       AH,AR7                ; |1448| 
        MOVL      XAR4,#FSL62           ; |1448| 
        LSR       AH,8                  ; |1448| 
        MOVL      *-SP[2],XAR4          ; |1448| 
        MOVL      XAR3,#_stringbuffer   ; |1448| 
        MOV       *-SP[3],AH            ; |1448| 
        AND       AH,AL,#0x00ff         ; |1448| 
        LSR       AL,8                  ; |1448| 
        MOV       *-SP[4],AH            ; |1448| 
        MOV       *-SP[5],AL            ; |1448| 
        AND       AL,AR7,#0x00ff        ; |1448| 
        MOV       *-SP[6],AL            ; |1448| 
        MOV       AL,AR6                ; |1448| 
        LSR       AL,8                  ; |1448| 
        MOVL      XAR4,XAR3             ; |1448| 
        MOV       *-SP[7],AL            ; |1448| 
        AND       AL,AR6,#0x00ff        ; |1448| 
        MOV       *-SP[8],AL            ; |1448| 
        LCR       #_sprintf             ; |1448| 
        ; call occurs [#_sprintf] ; |1448| 
        MOVL      XAR4,XAR3             ; |1449| 
        LCR       #_CLITransmitBuffer   ; |1449| 
        ; call occurs [#_CLITransmitBuffer] ; |1449| 
        SUBB      SP,#8
        MOVL      XAR3,*--SP
	.dwpsn	"pccli.c",1450,1
        LRETR
        ; return occurs
	.dwattr DW$183, DW_AT_end_file("pccli.c")
	.dwattr DW$183, DW_AT_end_line(0x5aa)
	.dwattr DW$183, DW_AT_end_column(0x01)
	.dwendtag DW$183

;***************************************************************
;* FAR STRINGS                                                 *
;***************************************************************
	.sect	".econst"
	.align	2
FSL1:	.string	"INVALID COMMAND",0
	.align	2
FSL2:	.string	"INCORRECT VALUE ENTERED",0
	.align	2
FSL3:	.string	"INCORRECT PASSWORD",0
	.align	2
FSL4:	.string	"OK",0
	.align	2
FSL5:	.string	"USE: ",0
	.align	2
FSL6:	.string	":>",0
	.align	2
FSL7:	.string	13,10,0
	.align	2
FSL8:	.string	"AMOT XTSW+ CLI",13,10,0
	.align	2
FSL9:	.string	"%s",13,10,0
	.align	2
FSL10:	.string	"Com Regs:",13,10,0
	.align	2
FSL11:	.string	"WIOREQ:%lu",13,10,0
	.align	2
FSL12:	.string	"WIOCLD:%lu",13,10,0
	.align	2
FSL13:	.string	"WIOREC:%lu",13,10,0
	.align	2
FSL14:	.string	"SLVREQ:%lu",13,10,0
	.align	2
FSL15:	.string	"SLVREC:%lu",13,10,0
	.align	2
FSL16:	.string	"SLVRTY:%lu",13,10,0
	.align	2
FSL17:	.string	"PCREQT:%lu",13,10,0
	.align	2
FSL18:	.string	"PCTOUT:%lu",13,10,0
	.align	2
FSL19:	.string	"Restore the factory defaults?",13,10,0
	.align	2
FSL20:	.string	"Enter: YES to confirm",13,10,0
	.align	2
FSL21:	.string	"Factory Defaults Set",13,10,0
	.align	2
FSL22:	.string	"Please RESET Unit",13,10,0
	.align	2
FSL23:	.string	"Scaled Results",13,10,0
	.align	2
FSL24:	.string	"Ch %2u: %d %2u: %d",13,10,0
	.align	2
FSL25:	.string	"An %2u: %d",13,10,0
	.align	2
FSL26:	.string	"Offset fn %u",13,10,0
	.align	2
FSL27:	.string	"Sensor comp fn %u",13,10,0
	.align	2
FSL28:	.string	"Noise fn %u",13,10,0
	.align	2
FSL29:	.string	"Sensor Dev fn %u",13,10,0
	.align	2
FSL30:	.string	"Rough used: %u",13,10,0
	.align	2
FSL31:	.string	"Ch = %u",13,10,0
	.align	2
FSL32:	.string	"%d",0
	.align	2
FSL33:	.string	"Master=1/Slave=0",13,10,0
	.align	2
FSL34:	.string	"Unit:%u",13,10,0
	.align	2
FSL35:	.string	"Sen Scaling Factor: %u",13,10,0
	.align	2
FSL36:	.string	"Mode: %u RPM1: %u  RPM2: %u",13,10,0
	.align	2
FSL37:	.string	"Calib Coeffs",13,10,0
	.align	2
FSL38:	.string	"Ch Lo Thold:%u",13,10,0
	.align	2
FSL39:	.string	"Ch Hi Thold Offset:%u",13,10,0
	.align	2
FSL40:	.string	"Ch %2u, 18mA: %u",13,10,0
	.align	2
FSL41:	.string	"An %2u, 18mA: %u",13,10,0
	.align	2
FSL42:	.string	"PRT %2u, Zero/Fullscale: %u   %u",13,10,0
	.align	2
FSL43:	.string	"Offset: %u",13,10,0
	.align	2
FSL44:	.string	"Threshold: %u",13,10,0
	.align	2
FSL45:	.string	"%u",13,10,0
	.align	2
FSL46:	.string	"ERROR!",13,10,0
	.align	2
FSL47:	.string	"Invalid channel!",13,10,0
	.align	2
FSL48:	.string	"Error! Enter 1 to 1000 only",13,10,0
	.align	2
FSL49:	.string	"Filter coeff: %u",13,10,0
	.align	2
FSL50:	.string	"%.2x:%.2x:%.2x",13,10,0
	.align	2
FSL51:	.string	"%.2x/%.2x/%.2x  Day:%.1x",13,10,0
	.align	2
FSL52:	.string	"Reading FRAM",13,10,0
	.align	2
FSL53:	.string	" %x%x",13,10,0
	.align	2
FSL54:	.string	"Erasing AT25DF041 check...",0
	.align	2
FSL55:	.string	"PASS",13,10,0
	.align	2
FSL56:	.string	"Programming AT25DF041 check...",0
	.align	2
FSL57:	.string	"FAIL",13,10,0
	.align	2
FSL58:	.string	"FAILED",13,10,0
	.align	2
FSL59:	.string	"=?, '",0,"'",0
	.align	2
FSL60:	.string	"%s",0
	.align	2
FSL61:	.string	13,10,"%s",0
	.align	2
FSL62:	.string	"%.2x/%.2x/%.2x,%.2x:%.2x:%.2x,",0
;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_sprintf
	.global	_sscanf
	.global	_strlen
	.global	_strncmp
	.global	_strcspn
	.global	_CLITransmitBuffer
	.global	_ReadCLIChar
	.global	_SendCLIChar
	.global	_FRAMInit
	.global	_ResetCommsCheck
	.global	_WriteConfigStructtoNVMEM
	.global	_SaveSafeStruct1
	.global	_SaveSafeStruct2
	.global	_SaveXtswplusAnaCal
	.global	_ReadAllFromEEPROM
	.global	_WriteClockData
	.global	_ReadClockData
	.global	_ReadNVMemory
	.global	_Calibrate18mA
	.global	_ClearMANTable
	.global	_EnableNoiseFilter
	.global	_GetCheckedRPM
	.global	_GetModalRPM
	.global	_SetScaledValue
	.global	_GetScaledValue
	.global	_WriteOffsetAtoNVMEM
	.global	_WriteOffsetBtoNVMEM
	.global	_SaveSDSettings
	.global	_SetAllEventMsgs
	.global	_GeneralSettingstoSDCardFile
	.global	_CheckRoughCalPoints
	.global	_ProgramCheckFunc
	.global	_WriteAllSensorStructtoNVMEM
	.global	_CalibrateLoop18mA
	.global	_EraseSPIFlash
	.global	_CheckSPIBusy
	.global	_CheckEraseProgError
	.global	_settings
	.global	_safe1
	.global	_safe2
	.global	_xtswplusanacal
	.global	_clocktime
	.global	_timers
	.global	_allsensors
	.global	_config
	.global	_inputs
	.global	_version
	.global	_offsetA
	.global	_offsetB
	.global	_function
	.global	_sdsettings
	.global	_speedcompcoeffs
	.global	_reprogram

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

DW$T$78	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$78, DW_AT_language(DW_LANG_C)

DW$T$85	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$85, DW_AT_language(DW_LANG_C)
DW$185	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$84)
	.dwendtag DW$T$85


DW$T$88	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$88, DW_AT_language(DW_LANG_C)
DW$186	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$187	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$188	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$87)
DW$189	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$88


DW$T$90	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$90, DW_AT_language(DW_LANG_C)
DW$190	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$90


DW$T$92	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$92, DW_AT_language(DW_LANG_C)
DW$191	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$92


DW$T$94	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$94, DW_AT_language(DW_LANG_C)
DW$192	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$193	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$94


DW$T$96	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$96, DW_AT_language(DW_LANG_C)
DW$194	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$83)
DW$195	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$83)
DW$196	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$83)
	.dwendtag DW$T$96


DW$T$98	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$98, DW_AT_language(DW_LANG_C)
DW$197	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$87)
	.dwendtag DW$T$98

DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)
DW$T$9	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned short")
	.dwattr DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$9, DW_AT_byte_size(0x01)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)

DW$T$105	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$105, DW_AT_language(DW_LANG_C)
DW$198	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$84)
DW$199	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$104)
DW$200	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$105


DW$T$107	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$107, DW_AT_language(DW_LANG_C)
DW$201	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$104)
DW$202	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$104)
DW$203	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$107


DW$T$110	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$110, DW_AT_language(DW_LANG_C)
DW$204	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$104)
DW$205	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$104)
DW$206	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$109)
	.dwendtag DW$T$110


DW$T$112	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$112, DW_AT_language(DW_LANG_C)
DW$207	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$112


DW$T$114	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$114, DW_AT_language(DW_LANG_C)

DW$T$116	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$116, DW_AT_language(DW_LANG_C)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)
DW$T$87	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$87, DW_AT_address_class(0x16)

DW$T$172	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$172, DW_AT_language(DW_LANG_C)
DW$208	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$172


DW$T$174	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$174, DW_AT_language(DW_LANG_C)
DW$209	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$174

DW$T$109	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$109, DW_AT_language(DW_LANG_C)

DW$T$183	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$109)
	.dwattr DW$T$183, DW_AT_language(DW_LANG_C)
DW$210	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$104)
	.dwendtag DW$T$183


DW$T$184	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$109)
	.dwattr DW$T$184, DW_AT_language(DW_LANG_C)
DW$211	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$104)
DW$212	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$104)
	.dwendtag DW$T$184

DW$T$189	.dwtag  DW_TAG_typedef, DW_AT_name("settingsstruct"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$189, DW_AT_language(DW_LANG_C)
DW$T$190	.dwtag  DW_TAG_typedef, DW_AT_name("safestruct1struct"), DW_AT_type(*DW$T$24)
	.dwattr DW$T$190, DW_AT_language(DW_LANG_C)
DW$T$192	.dwtag  DW_TAG_typedef, DW_AT_name("safestruct2struct"), DW_AT_type(*DW$T$37)
	.dwattr DW$T$192, DW_AT_language(DW_LANG_C)
DW$T$194	.dwtag  DW_TAG_typedef, DW_AT_name("xtswplusanastruct"), DW_AT_type(*DW$T$38)
	.dwattr DW$T$194, DW_AT_language(DW_LANG_C)
DW$T$196	.dwtag  DW_TAG_typedef, DW_AT_name("clockstruct"), DW_AT_type(*DW$T$39)
	.dwattr DW$T$196, DW_AT_language(DW_LANG_C)
DW$213	.dwtag  DW_TAG_far_type
	.dwattr DW$213, DW_AT_type(*DW$T$197)
DW$T$198	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$198, DW_AT_type(*DW$213)
DW$T$200	.dwtag  DW_TAG_typedef, DW_AT_name("allsensorstruct"), DW_AT_type(*DW$T$43)
	.dwattr DW$T$200, DW_AT_language(DW_LANG_C)
DW$T$201	.dwtag  DW_TAG_typedef, DW_AT_name("configstruct"), DW_AT_type(*DW$T$50)
	.dwattr DW$T$201, DW_AT_language(DW_LANG_C)
DW$214	.dwtag  DW_TAG_far_type
	.dwattr DW$214, DW_AT_type(*DW$T$202)
DW$T$203	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$203, DW_AT_type(*DW$214)
DW$T$206	.dwtag  DW_TAG_typedef, DW_AT_name("offsetstruct"), DW_AT_type(*DW$T$64)
	.dwattr DW$T$206, DW_AT_language(DW_LANG_C)
DW$T$208	.dwtag  DW_TAG_typedef, DW_AT_name("functionstruct"), DW_AT_type(*DW$T$66)
	.dwattr DW$T$208, DW_AT_language(DW_LANG_C)
DW$T$209	.dwtag  DW_TAG_typedef, DW_AT_name("sdsettingsstruct"), DW_AT_type(*DW$T$68)
	.dwattr DW$T$209, DW_AT_language(DW_LANG_C)
DW$T$210	.dwtag  DW_TAG_typedef, DW_AT_name("speedcompstruct"), DW_AT_type(*DW$T$71)
	.dwattr DW$T$210, DW_AT_language(DW_LANG_C)
DW$T$211	.dwtag  DW_TAG_typedef, DW_AT_name("reprogramstruct"), DW_AT_type(*DW$T$73)
	.dwattr DW$T$211, DW_AT_language(DW_LANG_C)

DW$T$214	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$213)
	.dwattr DW$T$214, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$214, DW_AT_byte_size(0x958)
DW$215	.dwtag  DW_TAG_subrange_type
	.dwattr DW$215, DW_AT_upper_bound(0x19)
	.dwendtag DW$T$214

DW$T$83	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$83, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$83, DW_AT_byte_size(0x01)
DW$T$84	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$83)
	.dwattr DW$T$84, DW_AT_address_class(0x16)
DW$T$104	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$103)
	.dwattr DW$T$104, DW_AT_address_class(0x16)

DW$T$225	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$104)
	.dwattr DW$T$225, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$225, DW_AT_byte_size(0x0a)
DW$216	.dwtag  DW_TAG_subrange_type
	.dwattr DW$216, DW_AT_upper_bound(0x04)
	.dwendtag DW$T$225


DW$T$226	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$103)
	.dwattr DW$T$226, DW_AT_language(DW_LANG_C)
DW$217	.dwtag  DW_TAG_subrange_type
	.dwendtag DW$T$226


DW$T$227	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$83)
	.dwattr DW$T$227, DW_AT_language(DW_LANG_C)

DW$T$228	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$83)
	.dwattr DW$T$228, DW_AT_language(DW_LANG_C)
DW$218	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$83)
	.dwendtag DW$T$228


DW$T$229	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$83)
	.dwattr DW$T$229, DW_AT_language(DW_LANG_C)
DW$219	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$84)
DW$220	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$84)
	.dwendtag DW$T$229


DW$T$230	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$83)
	.dwattr DW$T$230, DW_AT_language(DW_LANG_C)
DW$221	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$230


DW$T$231	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$83)
	.dwattr DW$T$231, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$231, DW_AT_byte_size(0x20)
DW$222	.dwtag  DW_TAG_subrange_type
	.dwattr DW$222, DW_AT_upper_bound(0x1f)
	.dwendtag DW$T$231


DW$T$232	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$83)
	.dwattr DW$T$232, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$232, DW_AT_byte_size(0x64)
DW$223	.dwtag  DW_TAG_subrange_type
	.dwattr DW$223, DW_AT_upper_bound(0x63)
	.dwendtag DW$T$232

DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("tag_settingsstruct")
	.dwattr DW$T$20, DW_AT_byte_size(0x24)
DW$224	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$224, DW_AT_name("watchdog"), DW_AT_symbol_name("_watchdog")
	.dwattr DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$224, DW_AT_accessibility(DW_ACCESS_public)
DW$225	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$225, DW_AT_name("ledflashflag"), DW_AT_symbol_name("_ledflashflag")
	.dwattr DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$225, DW_AT_accessibility(DW_ACCESS_public)
DW$226	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$226, DW_AT_name("updatesafe"), DW_AT_symbol_name("_updatesafe")
	.dwattr DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$226, DW_AT_accessibility(DW_ACCESS_public)
DW$227	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$227, DW_AT_name("tableconfigtype"), DW_AT_symbol_name("_tableconfigtype")
	.dwattr DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$227, DW_AT_accessibility(DW_ACCESS_public)
DW$228	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$228, DW_AT_name("caltableconfigtype"), DW_AT_symbol_name("_caltableconfigtype")
	.dwattr DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$228, DW_AT_accessibility(DW_ACCESS_public)
DW$229	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$229, DW_AT_name("eventmsgid"), DW_AT_symbol_name("_eventmsgid")
	.dwattr DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$229, DW_AT_accessibility(DW_ACCESS_public)
DW$230	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$230, DW_AT_name("configoperationcomplete"), DW_AT_symbol_name("_configoperationcomplete")
	.dwattr DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$230, DW_AT_accessibility(DW_ACCESS_public)
DW$231	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$231, DW_AT_name("sdcarderr"), DW_AT_symbol_name("_sdcarderr")
	.dwattr DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$231, DW_AT_accessibility(DW_ACCESS_public)
DW$232	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$232, DW_AT_name("sderase"), DW_AT_symbol_name("_sderase")
	.dwattr DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$232, DW_AT_accessibility(DW_ACCESS_public)
DW$233	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$233, DW_AT_name("sdreinit"), DW_AT_symbol_name("_sdreinit")
	.dwattr DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$233, DW_AT_accessibility(DW_ACCESS_public)
DW$234	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$234, DW_AT_name("sdcardupdate"), DW_AT_symbol_name("_sdcardupdate")
	.dwattr DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$234, DW_AT_accessibility(DW_ACCESS_public)
DW$235	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$235, DW_AT_name("cardreadflag"), DW_AT_symbol_name("_cardreadflag")
	.dwattr DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$235, DW_AT_accessibility(DW_ACCESS_public)
DW$236	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$236, DW_AT_name("ignore"), DW_AT_symbol_name("_ignore")
	.dwattr DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$236, DW_AT_accessibility(DW_ACCESS_public)
DW$237	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$237, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$237, DW_AT_accessibility(DW_ACCESS_public)
DW$238	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$238, DW_AT_name("spiinuse"), DW_AT_symbol_name("_spiinuse")
	.dwattr DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$238, DW_AT_accessibility(DW_ACCESS_public)
DW$239	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$239, DW_AT_name("dcpeakhold"), DW_AT_symbol_name("_dcpeakhold")
	.dwattr DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$239, DW_AT_accessibility(DW_ACCESS_public)
DW$240	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$240, DW_AT_name("dcpause"), DW_AT_symbol_name("_dcpause")
	.dwattr DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$240, DW_AT_accessibility(DW_ACCESS_public)
DW$241	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$241, DW_AT_name("mastermode"), DW_AT_symbol_name("_mastermode")
	.dwattr DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$241, DW_AT_accessibility(DW_ACCESS_public)
DW$242	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$242, DW_AT_name("updatescaling"), DW_AT_symbol_name("_updatescaling")
	.dwattr DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$242, DW_AT_accessibility(DW_ACCESS_public)
DW$243	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$243, DW_AT_name("forwardasternflag"), DW_AT_symbol_name("_forwardasternflag")
	.dwattr DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$243, DW_AT_accessibility(DW_ACCESS_public)
DW$244	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$244, DW_AT_name("initprogress"), DW_AT_symbol_name("_initprogress")
	.dwattr DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$244, DW_AT_accessibility(DW_ACCESS_public)
DW$245	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$245, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$245, DW_AT_accessibility(DW_ACCESS_public)
DW$246	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$246, DW_AT_name("slowdowncounter"), DW_AT_symbol_name("_slowdowncounter")
	.dwattr DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$246, DW_AT_accessibility(DW_ACCESS_public)
DW$247	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$247, DW_AT_name("slowdowncondition"), DW_AT_symbol_name("_slowdowncondition")
	.dwattr DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$247, DW_AT_accessibility(DW_ACCESS_public)
DW$248	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$248, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$248, DW_AT_accessibility(DW_ACCESS_public)
DW$249	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$249, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$249, DW_AT_accessibility(DW_ACCESS_public)
DW$250	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$250, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$250, DW_AT_accessibility(DW_ACCESS_public)
DW$251	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$251, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$251, DW_AT_accessibility(DW_ACCESS_public)
DW$252	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$252, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$252, DW_AT_accessibility(DW_ACCESS_public)
DW$253	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$253, DW_AT_name("temperaturealarm"), DW_AT_symbol_name("_temperaturealarm")
	.dwattr DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$253, DW_AT_accessibility(DW_ACCESS_public)
DW$254	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$254, DW_AT_name("temperatureslowdown"), DW_AT_symbol_name("_temperatureslowdown")
	.dwattr DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$254, DW_AT_accessibility(DW_ACCESS_public)
DW$255	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$255, DW_AT_name("anadebug"), DW_AT_symbol_name("_anadebug")
	.dwattr DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$255, DW_AT_accessibility(DW_ACCESS_public)
DW$256	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$256, DW_AT_name("serialdebug"), DW_AT_symbol_name("_serialdebug")
	.dwattr DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr DW$256, DW_AT_accessibility(DW_ACCESS_public)
DW$257	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$257, DW_AT_name("timerrunning"), DW_AT_symbol_name("_timerrunning")
	.dwattr DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$257, DW_AT_accessibility(DW_ACCESS_public)
DW$258	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$258, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$258, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_name("tag_safestruct1struct")
	.dwattr DW$T$24, DW_AT_byte_size(0x1f)
DW$259	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$259, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$259, DW_AT_accessibility(DW_ACCESS_public)
DW$260	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$260, DW_AT_name("watchdog"), DW_AT_symbol_name("_watchdog")
	.dwattr DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$260, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$37, DW_AT_name("tag_safestruct2struct")
	.dwattr DW$T$37, DW_AT_byte_size(0x1e)
DW$261	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$261, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$261, DW_AT_accessibility(DW_ACCESS_public)
DW$262	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$262, DW_AT_name("log"), DW_AT_symbol_name("_log")
	.dwattr DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$262, DW_AT_accessibility(DW_ACCESS_public)
DW$263	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$263, DW_AT_name("modbus"), DW_AT_symbol_name("_modbus")
	.dwattr DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$263, DW_AT_accessibility(DW_ACCESS_public)
DW$264	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$264, DW_AT_name("filter"), DW_AT_symbol_name("_filter")
	.dwattr DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$264, DW_AT_accessibility(DW_ACCESS_public)
DW$265	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$265, DW_AT_name("alarms"), DW_AT_symbol_name("_alarms")
	.dwattr DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$265, DW_AT_accessibility(DW_ACCESS_public)
DW$266	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$266, DW_AT_name("modbusbaud"), DW_AT_symbol_name("_modbusbaud")
	.dwattr DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$266, DW_AT_accessibility(DW_ACCESS_public)
DW$267	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$267, DW_AT_name("modbus2"), DW_AT_symbol_name("_modbus2")
	.dwattr DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$267, DW_AT_accessibility(DW_ACCESS_public)
DW$268	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$268, DW_AT_name("sync"), DW_AT_symbol_name("_sync")
	.dwattr DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$268, DW_AT_accessibility(DW_ACCESS_public)
DW$269	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$269, DW_AT_name("alarmenable"), DW_AT_symbol_name("_alarmenable")
	.dwattr DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$269, DW_AT_accessibility(DW_ACCESS_public)
DW$270	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$270, DW_AT_name("trendmax"), DW_AT_symbol_name("_trendmax")
	.dwattr DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$270, DW_AT_accessibility(DW_ACCESS_public)
DW$271	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$271, DW_AT_name("tempcomp"), DW_AT_symbol_name("_tempcomp")
	.dwattr DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$271, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$37


DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_name("tag_xtswplusanastruct")
	.dwattr DW$T$38, DW_AT_byte_size(0x0e)
DW$272	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$272, DW_AT_name("analog18ma"), DW_AT_symbol_name("_analog18ma")
	.dwattr DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$272, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38


DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$39, DW_AT_name("tag_clockstruct")
	.dwattr DW$T$39, DW_AT_byte_size(0x0e)
DW$273	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$273, DW_AT_name("WPstate"), DW_AT_symbol_name("_WPstate")
	.dwattr DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$273, DW_AT_accessibility(DW_ACCESS_public)
DW$274	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$274, DW_AT_name("seconds"), DW_AT_symbol_name("_seconds")
	.dwattr DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$274, DW_AT_accessibility(DW_ACCESS_public)
DW$275	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$275, DW_AT_name("minutes"), DW_AT_symbol_name("_minutes")
	.dwattr DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$275, DW_AT_accessibility(DW_ACCESS_public)
DW$276	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$276, DW_AT_name("hours"), DW_AT_symbol_name("_hours")
	.dwattr DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$276, DW_AT_accessibility(DW_ACCESS_public)
DW$277	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$277, DW_AT_name("day"), DW_AT_symbol_name("_day")
	.dwattr DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$277, DW_AT_accessibility(DW_ACCESS_public)
DW$278	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$278, DW_AT_name("date"), DW_AT_symbol_name("_date")
	.dwattr DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$278, DW_AT_accessibility(DW_ACCESS_public)
DW$279	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$279, DW_AT_name("month"), DW_AT_symbol_name("_month")
	.dwattr DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$279, DW_AT_accessibility(DW_ACCESS_public)
DW$280	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$280, DW_AT_name("year"), DW_AT_symbol_name("_year")
	.dwattr DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$280, DW_AT_accessibility(DW_ACCESS_public)
DW$281	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$281, DW_AT_name("control"), DW_AT_symbol_name("_control")
	.dwattr DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$281, DW_AT_accessibility(DW_ACCESS_public)
DW$282	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$282, DW_AT_name("framstamp"), DW_AT_symbol_name("_framstamp")
	.dwattr DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$282, DW_AT_accessibility(DW_ACCESS_public)
DW$283	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$283, DW_AT_name("clockerr"), DW_AT_symbol_name("_clockerr")
	.dwattr DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$283, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39

DW$T$197	.dwtag  DW_TAG_typedef, DW_AT_name("timersstruct"), DW_AT_type(*DW$T$40)
	.dwattr DW$T$197, DW_AT_language(DW_LANG_C)

DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$43, DW_AT_name("tag_allsensorstruct")
	.dwattr DW$T$43, DW_AT_byte_size(0x2d)
DW$284	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$284, DW_AT_name("numsensors"), DW_AT_symbol_name("_numsensors")
	.dwattr DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$284, DW_AT_accessibility(DW_ACCESS_public)
DW$285	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$285, DW_AT_name("numsensorsspu1"), DW_AT_symbol_name("_numsensorsspu1")
	.dwattr DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$285, DW_AT_accessibility(DW_ACCESS_public)
DW$286	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$286, DW_AT_name("numsensorsspu2"), DW_AT_symbol_name("_numsensorsspu2")
	.dwattr DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$286, DW_AT_accessibility(DW_ACCESS_public)
DW$287	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$287, DW_AT_name("nominalspeed"), DW_AT_symbol_name("_nominalspeed")
	.dwattr DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$287, DW_AT_accessibility(DW_ACCESS_public)
DW$288	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$288, DW_AT_name("rpmmin"), DW_AT_symbol_name("_rpmmin")
	.dwattr DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$288, DW_AT_accessibility(DW_ACCESS_public)
DW$289	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$289, DW_AT_name("rpmmax"), DW_AT_symbol_name("_rpmmax")
	.dwattr DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$289, DW_AT_accessibility(DW_ACCESS_public)
DW$290	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$290, DW_AT_name("reflash"), DW_AT_symbol_name("_reflash")
	.dwattr DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$290, DW_AT_accessibility(DW_ACCESS_public)
DW$291	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$291, DW_AT_name("sensorhysteresis"), DW_AT_symbol_name("_sensorhysteresis")
	.dwattr DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$291, DW_AT_accessibility(DW_ACCESS_public)
DW$292	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$292, DW_AT_name("cylinderhysteresis"), DW_AT_symbol_name("_cylinderhysteresis")
	.dwattr DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$292, DW_AT_accessibility(DW_ACCESS_public)
DW$293	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$293, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$293, DW_AT_accessibility(DW_ACCESS_public)
DW$294	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$294, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$294, DW_AT_accessibility(DW_ACCESS_public)
DW$295	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$295, DW_AT_name("slowdowndevcallevel"), DW_AT_symbol_name("_slowdowndevcallevel")
	.dwattr DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$295, DW_AT_accessibility(DW_ACCESS_public)
DW$296	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$296, DW_AT_name("alarmdevcallevel"), DW_AT_symbol_name("_alarmdevcallevel")
	.dwattr DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$296, DW_AT_accessibility(DW_ACCESS_public)
DW$297	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$297, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$297, DW_AT_accessibility(DW_ACCESS_public)
DW$298	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$298, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$298, DW_AT_accessibility(DW_ACCESS_public)
DW$299	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$299, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$299, DW_AT_accessibility(DW_ACCESS_public)
DW$300	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$300, DW_AT_name("flags"), DW_AT_symbol_name("_flags")
	.dwattr DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$300, DW_AT_accessibility(DW_ACCESS_public)
DW$301	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$301, DW_AT_name("slowdownack"), DW_AT_symbol_name("_slowdownack")
	.dwattr DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$301, DW_AT_accessibility(DW_ACCESS_public)
DW$302	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$302, DW_AT_name("alarmack"), DW_AT_symbol_name("_alarmack")
	.dwattr DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$302, DW_AT_accessibility(DW_ACCESS_public)
DW$303	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$303, DW_AT_name("maxmintimer"), DW_AT_symbol_name("_maxmintimer")
	.dwattr DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$303, DW_AT_accessibility(DW_ACCESS_public)
DW$304	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$304, DW_AT_name("enginedircal"), DW_AT_symbol_name("_enginedircal")
	.dwattr DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$304, DW_AT_accessibility(DW_ACCESS_public)
DW$305	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$305, DW_AT_name("dirorder"), DW_AT_symbol_name("_dirorder")
	.dwattr DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$305, DW_AT_accessibility(DW_ACCESS_public)
DW$306	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$306, DW_AT_name("prewarningtimer"), DW_AT_symbol_name("_prewarningtimer")
	.dwattr DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$306, DW_AT_accessibility(DW_ACCESS_public)
DW$307	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$307, DW_AT_name("prewarninglevel"), DW_AT_symbol_name("_prewarninglevel")
	.dwattr DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$307, DW_AT_accessibility(DW_ACCESS_public)
DW$308	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$308, DW_AT_name("rpmlimit"), DW_AT_symbol_name("_rpmlimit")
	.dwattr DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr DW$308, DW_AT_accessibility(DW_ACCESS_public)
DW$309	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$309, DW_AT_name("dsss"), DW_AT_symbol_name("_dsss")
	.dwattr DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$309, DW_AT_accessibility(DW_ACCESS_public)
DW$310	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$310, DW_AT_name("slowdowncallevel"), DW_AT_symbol_name("_slowdowncallevel")
	.dwattr DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$310, DW_AT_accessibility(DW_ACCESS_public)
DW$311	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$311, DW_AT_name("alarmcallevel"), DW_AT_symbol_name("_alarmcallevel")
	.dwattr DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$311, DW_AT_accessibility(DW_ACCESS_public)
DW$312	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$312, DW_AT_name("cylinderalarmcallevel"), DW_AT_symbol_name("_cylinderalarmcallevel")
	.dwattr DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$312, DW_AT_accessibility(DW_ACCESS_public)
DW$313	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$313, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$313, DW_AT_accessibility(DW_ACCESS_public)
DW$314	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$314, DW_AT_name("iBarredVibrationSpeedLow"), DW_AT_symbol_name("_iBarredVibrationSpeedLow")
	.dwattr DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$314, DW_AT_accessibility(DW_ACCESS_public)
DW$315	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$315, DW_AT_name("iBarredVibrationSpeedHigh"), DW_AT_symbol_name("_iBarredVibrationSpeedHigh")
	.dwattr DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$315, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$43


DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$50, DW_AT_name("tag_configstruct")
	.dwattr DW$T$50, DW_AT_byte_size(0x18)
DW$316	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$44)
	.dwattr DW$316, DW_AT_name("filter"), DW_AT_symbol_name("_filter")
	.dwattr DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$316, DW_AT_accessibility(DW_ACCESS_public)
DW$317	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$317, DW_AT_name("alarmenable"), DW_AT_symbol_name("_alarmenable")
	.dwattr DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$317, DW_AT_accessibility(DW_ACCESS_public)
DW$318	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$318, DW_AT_name("trendmax"), DW_AT_symbol_name("_trendmax")
	.dwattr DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$318, DW_AT_accessibility(DW_ACCESS_public)
DW$319	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$319, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$319, DW_AT_accessibility(DW_ACCESS_public)
DW$320	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$320, DW_AT_name("sdsettings"), DW_AT_symbol_name("_sdsettings")
	.dwattr DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$320, DW_AT_accessibility(DW_ACCESS_public)
DW$321	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$321, DW_AT_name("comms"), DW_AT_symbol_name("_comms")
	.dwattr DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$321, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$50

DW$T$202	.dwtag  DW_TAG_typedef, DW_AT_name("inputstruct"), DW_AT_type(*DW$T$62)
	.dwattr DW$T$202, DW_AT_language(DW_LANG_C)

DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$64, DW_AT_name("tag_offsetstruct")
	.dwattr DW$T$64, DW_AT_byte_size(0x1c)
DW$322	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$63)
	.dwattr DW$322, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$322, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$64


DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$66, DW_AT_name("tag_functionstruct")
	.dwattr DW$T$66, DW_AT_byte_size(0x08)
DW$323	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$65)
	.dwattr DW$323, DW_AT_name("enabled"), DW_AT_symbol_name("_enabled")
	.dwattr DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$323, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$66


DW$T$68	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$68, DW_AT_name("tag_sdsettingsstruct")
	.dwattr DW$T$68, DW_AT_byte_size(0x04)
DW$324	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$324, DW_AT_name("present"), DW_AT_symbol_name("_present")
	.dwattr DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$324, DW_AT_accessibility(DW_ACCESS_public)
DW$325	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$325, DW_AT_name("sequence"), DW_AT_symbol_name("_sequence")
	.dwattr DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$325, DW_AT_accessibility(DW_ACCESS_public)
DW$326	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$326, DW_AT_name("errornum"), DW_AT_symbol_name("_errornum")
	.dwattr DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$326, DW_AT_accessibility(DW_ACCESS_public)
DW$327	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$67)
	.dwattr DW$327, DW_AT_name("readstatus"), DW_AT_symbol_name("_readstatus")
	.dwattr DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$327, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$68


DW$T$71	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$71, DW_AT_name("tag_speedcompstruct")
	.dwattr DW$T$71, DW_AT_byte_size(0x19)
DW$328	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$328, DW_AT_name("stageflag"), DW_AT_symbol_name("_stageflag")
	.dwattr DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$328, DW_AT_accessibility(DW_ACCESS_public)
DW$329	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$329, DW_AT_name("status"), DW_AT_symbol_name("_status")
	.dwattr DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$329, DW_AT_accessibility(DW_ACCESS_public)
DW$330	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$70)
	.dwattr DW$330, DW_AT_name("speedbands"), DW_AT_symbol_name("_speedbands")
	.dwattr DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$330, DW_AT_accessibility(DW_ACCESS_public)
DW$331	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$331, DW_AT_name("slopecoeff"), DW_AT_symbol_name("_slopecoeff")
	.dwattr DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$331, DW_AT_accessibility(DW_ACCESS_public)
DW$332	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$332, DW_AT_name("initialtimer"), DW_AT_symbol_name("_initialtimer")
	.dwattr DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$332, DW_AT_accessibility(DW_ACCESS_public)
DW$333	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$333, DW_AT_name("learningmodetimer"), DW_AT_symbol_name("_learningmodetimer")
	.dwattr DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$333, DW_AT_accessibility(DW_ACCESS_public)
DW$334	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$334, DW_AT_name("intervaltimer"), DW_AT_symbol_name("_intervaltimer")
	.dwattr DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$334, DW_AT_accessibility(DW_ACCESS_public)
DW$335	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$335, DW_AT_name("numsamples"), DW_AT_symbol_name("_numsamples")
	.dwattr DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$335, DW_AT_accessibility(DW_ACCESS_public)
DW$336	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$336, DW_AT_name("learningleft"), DW_AT_symbol_name("_learningleft")
	.dwattr DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$336, DW_AT_accessibility(DW_ACCESS_public)
DW$337	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$337, DW_AT_name("intervalleft"), DW_AT_symbol_name("_intervalleft")
	.dwattr DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$337, DW_AT_accessibility(DW_ACCESS_public)
DW$338	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$338, DW_AT_name("manappliedminsamples"), DW_AT_symbol_name("_manappliedminsamples")
	.dwattr DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$338, DW_AT_accessibility(DW_ACCESS_public)
DW$339	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$339, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$339, DW_AT_accessibility(DW_ACCESS_public)
DW$340	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$340, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$340, DW_AT_accessibility(DW_ACCESS_public)
DW$341	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$341, DW_AT_name("unused3"), DW_AT_symbol_name("_unused3")
	.dwattr DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$341, DW_AT_accessibility(DW_ACCESS_public)
DW$342	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$342, DW_AT_name("unused4"), DW_AT_symbol_name("_unused4")
	.dwattr DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$342, DW_AT_accessibility(DW_ACCESS_public)
DW$343	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$343, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$343, DW_AT_accessibility(DW_ACCESS_public)
DW$344	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$344, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$344, DW_AT_accessibility(DW_ACCESS_public)
DW$345	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$345, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$345, DW_AT_accessibility(DW_ACCESS_public)
DW$346	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$346, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$346, DW_AT_accessibility(DW_ACCESS_public)
DW$347	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$347, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$347, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$71


DW$T$73	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$73, DW_AT_name("tag_reprogramstruct")
	.dwattr DW$T$73, DW_AT_byte_size(0x10)
DW$348	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$72)
	.dwattr DW$348, DW_AT_name("spi"), DW_AT_symbol_name("_spi")
	.dwattr DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$348, DW_AT_accessibility(DW_ACCESS_public)
DW$349	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$349, DW_AT_name("programkey"), DW_AT_symbol_name("_programkey")
	.dwattr DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$349, DW_AT_accessibility(DW_ACCESS_public)
DW$350	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$350, DW_AT_name("reprogramnow"), DW_AT_symbol_name("_reprogramnow")
	.dwattr DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$350, DW_AT_accessibility(DW_ACCESS_public)
DW$351	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$351, DW_AT_name("slavecmdok"), DW_AT_symbol_name("_slavecmdok")
	.dwattr DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$351, DW_AT_accessibility(DW_ACCESS_public)
DW$352	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$352, DW_AT_name("slavestatus"), DW_AT_symbol_name("_slavestatus")
	.dwattr DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$352, DW_AT_accessibility(DW_ACCESS_public)
DW$353	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$353, DW_AT_name("slavetx"), DW_AT_symbol_name("_slavetx")
	.dwattr DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$353, DW_AT_accessibility(DW_ACCESS_public)
DW$354	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$354, DW_AT_name("slaverx"), DW_AT_symbol_name("_slaverx")
	.dwattr DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$354, DW_AT_accessibility(DW_ACCESS_public)
DW$355	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$355, DW_AT_name("slaveset"), DW_AT_symbol_name("_slaveset")
	.dwattr DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$355, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$73

DW$356	.dwtag  DW_TAG_far_type
	.dwattr DW$356, DW_AT_type(*DW$T$212)
DW$T$213	.dwtag  DW_TAG_const_type
	.dwattr DW$T$213, DW_AT_type(*DW$356)
DW$357	.dwtag  DW_TAG_far_type
	.dwattr DW$357, DW_AT_type(*DW$T$83)
DW$T$103	.dwtag  DW_TAG_const_type
	.dwattr DW$T$103, DW_AT_type(*DW$357)

DW$T$63	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$63, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$63, DW_AT_byte_size(0x1c)
DW$358	.dwtag  DW_TAG_subrange_type
	.dwattr DW$358, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$63


DW$T$21	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$21, DW_AT_byte_size(0x0e)
DW$359	.dwtag  DW_TAG_subrange_type
	.dwattr DW$359, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$21


DW$T$70	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$70, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$70, DW_AT_byte_size(0x06)
DW$360	.dwtag  DW_TAG_subrange_type
	.dwattr DW$360, DW_AT_upper_bound(0x02)
DW$361	.dwtag  DW_TAG_subrange_type
	.dwattr DW$361, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$70


DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$19, DW_AT_byte_size(0x02)
DW$362	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$362, DW_AT_name("enb"), DW_AT_symbol_name("_enb")
	.dwattr DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$362, DW_AT_accessibility(DW_ACCESS_public)
DW$363	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$363, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$363, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$19


DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_byte_size(0x1e)
DW$364	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$364, DW_AT_name("chanlowthreshold"), DW_AT_symbol_name("_chanlowthreshold")
	.dwattr DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$364, DW_AT_accessibility(DW_ACCESS_public)
DW$365	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$365, DW_AT_name("chanhighthreshold"), DW_AT_symbol_name("_chanhighthreshold")
	.dwattr DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$365, DW_AT_accessibility(DW_ACCESS_public)
DW$366	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$366, DW_AT_name("chan18ma"), DW_AT_symbol_name("_chan18ma")
	.dwattr DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$366, DW_AT_accessibility(DW_ACCESS_public)
DW$367	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$367, DW_AT_name("notused"), DW_AT_symbol_name("_notused")
	.dwattr DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$367, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$23, DW_AT_byte_size(0x01)
DW$368	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$368, DW_AT_name("enabled"), DW_AT_symbol_name("_enabled")
	.dwattr DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$368, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_byte_size(0x0b)
DW$369	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$369, DW_AT_name("calprtzero"), DW_AT_symbol_name("_calprtzero")
	.dwattr DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$369, DW_AT_accessibility(DW_ACCESS_public)
DW$370	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$370, DW_AT_name("calprtfullscale"), DW_AT_symbol_name("_calprtfullscale")
	.dwattr DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$370, DW_AT_accessibility(DW_ACCESS_public)
DW$371	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$371, DW_AT_name("sensorscalingfactor"), DW_AT_symbol_name("_sensorscalingfactor")
	.dwattr DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$371, DW_AT_accessibility(DW_ACCESS_public)
DW$372	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$372, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$372, DW_AT_accessibility(DW_ACCESS_public)
DW$373	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$373, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$373, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$27, DW_AT_byte_size(0x03)
DW$374	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$374, DW_AT_name("mainrate"), DW_AT_symbol_name("_mainrate")
	.dwattr DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$374, DW_AT_accessibility(DW_ACCESS_public)
DW$375	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$375, DW_AT_name("trendrate"), DW_AT_symbol_name("_trendrate")
	.dwattr DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$375, DW_AT_accessibility(DW_ACCESS_public)
DW$376	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$376, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$376, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_byte_size(0x01)
DW$377	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$377, DW_AT_name("address"), DW_AT_symbol_name("_address")
	.dwattr DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$377, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$29, DW_AT_byte_size(0x02)
DW$378	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$378, DW_AT_name("inputtap"), DW_AT_symbol_name("_inputtap")
	.dwattr DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$378, DW_AT_accessibility(DW_ACCESS_public)
DW$379	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$379, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$379, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$29


DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$30, DW_AT_byte_size(0x03)
DW$380	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$380, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$380, DW_AT_accessibility(DW_ACCESS_public)
DW$381	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$381, DW_AT_name("notused2"), DW_AT_symbol_name("_notused2")
	.dwattr DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$381, DW_AT_accessibility(DW_ACCESS_public)
DW$382	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$382, DW_AT_name("notused3"), DW_AT_symbol_name("_notused3")
	.dwattr DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$382, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30


DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$31, DW_AT_byte_size(0x01)
DW$383	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$383, DW_AT_name("rate"), DW_AT_symbol_name("_rate")
	.dwattr DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$383, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_byte_size(0x02)
DW$384	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$384, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$384, DW_AT_accessibility(DW_ACCESS_public)
DW$385	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$385, DW_AT_name("notused2"), DW_AT_symbol_name("_notused2")
	.dwattr DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$385, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$33, DW_AT_byte_size(0x04)
DW$386	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$386, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$386, DW_AT_accessibility(DW_ACCESS_public)
DW$387	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$387, DW_AT_name("notused2"), DW_AT_symbol_name("_notused2")
	.dwattr DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$387, DW_AT_accessibility(DW_ACCESS_public)
DW$388	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$388, DW_AT_name("notused3"), DW_AT_symbol_name("_notused3")
	.dwattr DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$388, DW_AT_accessibility(DW_ACCESS_public)
DW$389	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$389, DW_AT_name("notused4"), DW_AT_symbol_name("_notused4")
	.dwattr DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$389, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$34, DW_AT_byte_size(0x01)
DW$390	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$390, DW_AT_name("bitmap"), DW_AT_symbol_name("_bitmap")
	.dwattr DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$390, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34


DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$35, DW_AT_byte_size(0x01)
DW$391	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$391, DW_AT_name("graphvalue"), DW_AT_symbol_name("_graphvalue")
	.dwattr DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$391, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35


DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$36, DW_AT_byte_size(0x01)
DW$392	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$392, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$392, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$36


DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$40, DW_AT_name("tag_timers")
	.dwattr DW$T$40, DW_AT_byte_size(0x4c)
DW$393	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$393, DW_AT_name("update"), DW_AT_symbol_name("_update")
	.dwattr DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$393, DW_AT_accessibility(DW_ACCESS_public)
DW$394	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$394, DW_AT_name("general"), DW_AT_symbol_name("_general")
	.dwattr DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$394, DW_AT_accessibility(DW_ACCESS_public)
DW$395	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$395, DW_AT_name("rxcharTimeout"), DW_AT_symbol_name("_rxcharTimeout")
	.dwattr DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$395, DW_AT_accessibility(DW_ACCESS_public)
DW$396	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$396, DW_AT_name("wiorxtimeout"), DW_AT_symbol_name("_wiorxtimeout")
	.dwattr DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$396, DW_AT_accessibility(DW_ACCESS_public)
DW$397	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$397, DW_AT_name("wiomasterrxtimeout"), DW_AT_symbol_name("_wiomasterrxtimeout")
	.dwattr DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$397, DW_AT_accessibility(DW_ACCESS_public)
DW$398	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$398, DW_AT_name("masterrxtimeout"), DW_AT_symbol_name("_masterrxtimeout")
	.dwattr DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$398, DW_AT_accessibility(DW_ACCESS_public)
DW$399	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$399, DW_AT_name("slaverxtimeout"), DW_AT_symbol_name("_slaverxtimeout")
	.dwattr DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$399, DW_AT_accessibility(DW_ACCESS_public)
DW$400	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$400, DW_AT_name("sectick"), DW_AT_symbol_name("_sectick")
	.dwattr DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$400, DW_AT_accessibility(DW_ACCESS_public)
DW$401	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$401, DW_AT_name("ledflash"), DW_AT_symbol_name("_ledflash")
	.dwattr DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$401, DW_AT_accessibility(DW_ACCESS_public)
DW$402	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$402, DW_AT_name("prtsettle"), DW_AT_symbol_name("_prtsettle")
	.dwattr DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$402, DW_AT_accessibility(DW_ACCESS_public)
DW$403	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$403, DW_AT_name("chantimeout"), DW_AT_symbol_name("_chantimeout")
	.dwattr DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$403, DW_AT_accessibility(DW_ACCESS_public)
DW$404	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$404, DW_AT_name("chanwait"), DW_AT_symbol_name("_chanwait")
	.dwattr DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$404, DW_AT_accessibility(DW_ACCESS_public)
DW$405	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$405, DW_AT_name("pcrxtimeout"), DW_AT_symbol_name("_pcrxtimeout")
	.dwattr DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$405, DW_AT_accessibility(DW_ACCESS_public)
DW$406	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$406, DW_AT_name("pctxtimeout"), DW_AT_symbol_name("_pctxtimeout")
	.dwattr DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$406, DW_AT_accessibility(DW_ACCESS_public)
DW$407	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$407, DW_AT_name("spistatus"), DW_AT_symbol_name("_spistatus")
	.dwattr DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$407, DW_AT_accessibility(DW_ACCESS_public)
DW$408	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$408, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$408, DW_AT_accessibility(DW_ACCESS_public)
DW$409	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$409, DW_AT_name("slaverqst"), DW_AT_symbol_name("_slaverqst")
	.dwattr DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$409, DW_AT_accessibility(DW_ACCESS_public)
DW$410	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$410, DW_AT_name("mastermodebutton"), DW_AT_symbol_name("_mastermodebutton")
	.dwattr DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$410, DW_AT_accessibility(DW_ACCESS_public)
DW$411	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$411, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$411, DW_AT_accessibility(DW_ACCESS_public)
DW$412	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$412, DW_AT_name("calibrate"), DW_AT_symbol_name("_calibrate")
	.dwattr DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$412, DW_AT_accessibility(DW_ACCESS_public)
DW$413	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$413, DW_AT_name("calibrate2"), DW_AT_symbol_name("_calibrate2")
	.dwattr DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$413, DW_AT_accessibility(DW_ACCESS_public)
DW$414	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$414, DW_AT_name("alarmreflash"), DW_AT_symbol_name("_alarmreflash")
	.dwattr DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$414, DW_AT_accessibility(DW_ACCESS_public)
DW$415	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$415, DW_AT_name("slowdownreflash"), DW_AT_symbol_name("_slowdownreflash")
	.dwattr DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr DW$415, DW_AT_accessibility(DW_ACCESS_public)
DW$416	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$416, DW_AT_name("wiorqst"), DW_AT_symbol_name("_wiorqst")
	.dwattr DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$416, DW_AT_accessibility(DW_ACCESS_public)
DW$417	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$417, DW_AT_name("rpmtimeout"), DW_AT_symbol_name("_rpmtimeout")
	.dwattr DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr DW$417, DW_AT_accessibility(DW_ACCESS_public)
DW$418	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$418, DW_AT_name("analogoor"), DW_AT_symbol_name("_analogoor")
	.dwattr DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$418, DW_AT_accessibility(DW_ACCESS_public)
DW$419	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$419, DW_AT_name("motioncal"), DW_AT_symbol_name("_motioncal")
	.dwattr DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr DW$419, DW_AT_accessibility(DW_ACCESS_public)
DW$420	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$420, DW_AT_name("framcheck"), DW_AT_symbol_name("_framcheck")
	.dwattr DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$420, DW_AT_accessibility(DW_ACCESS_public)
DW$421	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$421, DW_AT_name("pcmodbus"), DW_AT_symbol_name("_pcmodbus")
	.dwattr DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr DW$421, DW_AT_accessibility(DW_ACCESS_public)
DW$422	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$422, DW_AT_name("statusreflash"), DW_AT_symbol_name("_statusreflash")
	.dwattr DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$422, DW_AT_accessibility(DW_ACCESS_public)
DW$423	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$423, DW_AT_name("prewarn"), DW_AT_symbol_name("_prewarn")
	.dwattr DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$423, DW_AT_accessibility(DW_ACCESS_public)
DW$424	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$424, DW_AT_name("clocktofram"), DW_AT_symbol_name("_clocktofram")
	.dwattr DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr DW$424, DW_AT_accessibility(DW_ACCESS_public)
DW$425	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$425, DW_AT_name("debugrapidfast"), DW_AT_symbol_name("_debugrapidfast")
	.dwattr DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x3f]
	.dwattr DW$425, DW_AT_accessibility(DW_ACCESS_public)
DW$426	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$426, DW_AT_name("debugupdate"), DW_AT_symbol_name("_debugupdate")
	.dwattr DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$426, DW_AT_accessibility(DW_ACCESS_public)
DW$427	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$427, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr DW$427, DW_AT_accessibility(DW_ACCESS_public)
DW$428	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$428, DW_AT_name("startup"), DW_AT_symbol_name("_startup")
	.dwattr DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr DW$428, DW_AT_accessibility(DW_ACCESS_public)
DW$429	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$429, DW_AT_name("analogsettle"), DW_AT_symbol_name("_analogsettle")
	.dwattr DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr DW$429, DW_AT_accessibility(DW_ACCESS_public)
DW$430	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$430, DW_AT_name("reprogram"), DW_AT_symbol_name("_reprogram")
	.dwattr DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr DW$430, DW_AT_accessibility(DW_ACCESS_public)
DW$431	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$431, DW_AT_name("reprogramtimeout"), DW_AT_symbol_name("_reprogramtimeout")
	.dwattr DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr DW$431, DW_AT_accessibility(DW_ACCESS_public)
DW$432	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$432, DW_AT_name("dcmodestayalive"), DW_AT_symbol_name("_dcmodestayalive")
	.dwattr DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$432, DW_AT_accessibility(DW_ACCESS_public)
DW$433	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$433, DW_AT_name("biteventchange"), DW_AT_symbol_name("_biteventchange")
	.dwattr DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr DW$433, DW_AT_accessibility(DW_ACCESS_public)
DW$434	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$434, DW_AT_name("iSensorReplace"), DW_AT_symbol_name("_iSensorReplace")
	.dwattr DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr DW$434, DW_AT_accessibility(DW_ACCESS_public)
DW$435	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$435, DW_AT_name("deltarpm15Delay"), DW_AT_symbol_name("_deltarpm15Delay")
	.dwattr DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr DW$435, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40


DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$41, DW_AT_byte_size(0x01)
DW$436	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$436, DW_AT_name("newval"), DW_AT_symbol_name("_newval")
	.dwattr DW$436, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$436, DW_AT_accessibility(DW_ACCESS_public)
DW$437	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$437, DW_AT_name("calmode"), DW_AT_symbol_name("_calmode")
	.dwattr DW$437, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$437, DW_AT_accessibility(DW_ACCESS_public)
DW$438	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$438, DW_AT_name("startcal"), DW_AT_symbol_name("_startcal")
	.dwattr DW$438, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$438, DW_AT_accessibility(DW_ACCESS_public)
DW$439	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$439, DW_AT_name("newvalspu2"), DW_AT_symbol_name("_newvalspu2")
	.dwattr DW$439, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$439, DW_AT_accessibility(DW_ACCESS_public)
DW$440	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$440, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$440, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$440, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$41


DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$42, DW_AT_byte_size(0x01)
DW$441	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$441, DW_AT_name("slowdowncntrl"), DW_AT_symbol_name("_slowdowncntrl")
	.dwattr DW$441, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$441, DW_AT_accessibility(DW_ACCESS_public)
DW$442	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$442, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$442, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0f)
	.dwattr DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$442, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$42


DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$44, DW_AT_byte_size(0x01)
DW$443	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$443, DW_AT_name("inputtap"), DW_AT_symbol_name("_inputtap")
	.dwattr DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$443, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$44


DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$45, DW_AT_byte_size(0x01)
DW$444	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$444, DW_AT_name("bitmap"), DW_AT_symbol_name("_bitmap")
	.dwattr DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$444, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$45


DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$46, DW_AT_byte_size(0x01)
DW$445	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$445, DW_AT_name("graphvalue"), DW_AT_symbol_name("_graphvalue")
	.dwattr DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$445, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$46


DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$47, DW_AT_byte_size(0x03)
DW$446	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$446, DW_AT_name("chanlowthreshold"), DW_AT_symbol_name("_chanlowthreshold")
	.dwattr DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$446, DW_AT_accessibility(DW_ACCESS_public)
DW$447	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$447, DW_AT_name("chanhighthreshold"), DW_AT_symbol_name("_chanhighthreshold")
	.dwattr DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$447, DW_AT_accessibility(DW_ACCESS_public)
DW$448	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$448, DW_AT_name("sensorscalingfactor"), DW_AT_symbol_name("_sensorscalingfactor")
	.dwattr DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$448, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$47


DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$48, DW_AT_byte_size(0x02)
DW$449	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$449, DW_AT_name("shortlrate"), DW_AT_symbol_name("_shortlrate")
	.dwattr DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$449, DW_AT_accessibility(DW_ACCESS_public)
DW$450	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$450, DW_AT_name("longlrate"), DW_AT_symbol_name("_longlrate")
	.dwattr DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$450, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$48


DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$49, DW_AT_byte_size(0x10)
DW$451	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$451, DW_AT_name("wiorequest"), DW_AT_symbol_name("_wiorequest")
	.dwattr DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$451, DW_AT_accessibility(DW_ACCESS_public)
DW$452	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$452, DW_AT_name("wiocancelled"), DW_AT_symbol_name("_wiocancelled")
	.dwattr DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$452, DW_AT_accessibility(DW_ACCESS_public)
DW$453	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$453, DW_AT_name("wioreceived"), DW_AT_symbol_name("_wioreceived")
	.dwattr DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$453, DW_AT_accessibility(DW_ACCESS_public)
DW$454	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$454, DW_AT_name("slaverequest"), DW_AT_symbol_name("_slaverequest")
	.dwattr DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$454, DW_AT_accessibility(DW_ACCESS_public)
DW$455	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$455, DW_AT_name("slavereceived"), DW_AT_symbol_name("_slavereceived")
	.dwattr DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$455, DW_AT_accessibility(DW_ACCESS_public)
DW$456	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$456, DW_AT_name("slaveretry"), DW_AT_symbol_name("_slaveretry")
	.dwattr DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$456, DW_AT_accessibility(DW_ACCESS_public)
DW$457	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$457, DW_AT_name("pcrequest"), DW_AT_symbol_name("_pcrequest")
	.dwattr DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$457, DW_AT_accessibility(DW_ACCESS_public)
DW$458	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$458, DW_AT_name("pcreqtimeout"), DW_AT_symbol_name("_pcreqtimeout")
	.dwattr DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$458, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$49


DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$62, DW_AT_name("tag_inputstruct")
	.dwattr DW$T$62, DW_AT_byte_size(0xfe)
DW$459	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$51)
	.dwattr DW$459, DW_AT_name("flags"), DW_AT_symbol_name("_flags")
	.dwattr DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$459, DW_AT_accessibility(DW_ACCESS_public)
DW$460	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$54)
	.dwattr DW$460, DW_AT_name("scale"), DW_AT_symbol_name("_scale")
	.dwattr DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$460, DW_AT_accessibility(DW_ACCESS_public)
DW$461	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$56)
	.dwattr DW$461, DW_AT_name("rawresults"), DW_AT_symbol_name("_rawresults")
	.dwattr DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr DW$461, DW_AT_accessibility(DW_ACCESS_public)
DW$462	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$58)
	.dwattr DW$462, DW_AT_name("amps"), DW_AT_symbol_name("_amps")
	.dwattr DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0xc6]
	.dwattr DW$462, DW_AT_accessibility(DW_ACCESS_public)
DW$463	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$463, DW_AT_name("prtchan"), DW_AT_symbol_name("_prtchan")
	.dwattr DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0xe2]
	.dwattr DW$463, DW_AT_accessibility(DW_ACCESS_public)
DW$464	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$61)
	.dwattr DW$464, DW_AT_name("analog"), DW_AT_symbol_name("_analog")
	.dwattr DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0xe4]
	.dwattr DW$464, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$62


DW$T$65	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$65, DW_AT_byte_size(0x08)
DW$465	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$465, DW_AT_name("applyoffset"), DW_AT_symbol_name("_applyoffset")
	.dwattr DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$465, DW_AT_accessibility(DW_ACCESS_public)
DW$466	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$466, DW_AT_name("sensorcompensation"), DW_AT_symbol_name("_sensorcompensation")
	.dwattr DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$466, DW_AT_accessibility(DW_ACCESS_public)
DW$467	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$467, DW_AT_name("sensornoiseremoval"), DW_AT_symbol_name("_sensornoiseremoval")
	.dwattr DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$467, DW_AT_accessibility(DW_ACCESS_public)
DW$468	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$468, DW_AT_name("sensordeviation"), DW_AT_symbol_name("_sensordeviation")
	.dwattr DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$468, DW_AT_accessibility(DW_ACCESS_public)
DW$469	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$469, DW_AT_name("cylinderaverage"), DW_AT_symbol_name("_cylinderaverage")
	.dwattr DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$469, DW_AT_accessibility(DW_ACCESS_public)
DW$470	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$470, DW_AT_name("cylinderdeviation"), DW_AT_symbol_name("_cylinderdeviation")
	.dwattr DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$470, DW_AT_accessibility(DW_ACCESS_public)
DW$471	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$471, DW_AT_name("useroughcal"), DW_AT_symbol_name("_useroughcal")
	.dwattr DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$471, DW_AT_accessibility(DW_ACCESS_public)
DW$472	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$472, DW_AT_name("vincheckenabled"), DW_AT_symbol_name("_vincheckenabled")
	.dwattr DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$472, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$65


DW$T$67	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$67, DW_AT_byte_size(0x01)
DW$473	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$473, DW_AT_name("settings"), DW_AT_symbol_name("_settings")
	.dwattr DW$473, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$473, DW_AT_accessibility(DW_ACCESS_public)
DW$474	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$474, DW_AT_name("sensorstatus"), DW_AT_symbol_name("_sensorstatus")
	.dwattr DW$474, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$474, DW_AT_accessibility(DW_ACCESS_public)
DW$475	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$475, DW_AT_name("offsets"), DW_AT_symbol_name("_offsets")
	.dwattr DW$475, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$475, DW_AT_accessibility(DW_ACCESS_public)
DW$476	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$476, DW_AT_name("mantable"), DW_AT_symbol_name("_mantable")
	.dwattr DW$476, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$476, DW_AT_accessibility(DW_ACCESS_public)
DW$477	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$477, DW_AT_name("calibtd"), DW_AT_symbol_name("_calibtd")
	.dwattr DW$477, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$477, DW_AT_accessibility(DW_ACCESS_public)
DW$478	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$478, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$478, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$478, DW_AT_accessibility(DW_ACCESS_public)
DW$479	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$479, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$479, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$479, DW_AT_accessibility(DW_ACCESS_public)
DW$480	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$480, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$480, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$480, DW_AT_accessibility(DW_ACCESS_public)
DW$481	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$481, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$481, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$481, DW_AT_accessibility(DW_ACCESS_public)
DW$482	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$482, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$482, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$482, DW_AT_accessibility(DW_ACCESS_public)
DW$483	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$483, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$483, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$483, DW_AT_accessibility(DW_ACCESS_public)
DW$484	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$484, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$484, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$484, DW_AT_accessibility(DW_ACCESS_public)
DW$485	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$485, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$485, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$485, DW_AT_accessibility(DW_ACCESS_public)
DW$486	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$486, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$486, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$486, DW_AT_accessibility(DW_ACCESS_public)
DW$487	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$487, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$487, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$487, DW_AT_accessibility(DW_ACCESS_public)
DW$488	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$488, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$488, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$488, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$67


DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$72, DW_AT_byte_size(0x08)
DW$489	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$489, DW_AT_name("programgo"), DW_AT_symbol_name("_programgo")
	.dwattr DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$489, DW_AT_accessibility(DW_ACCESS_public)
DW$490	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$490, DW_AT_name("status"), DW_AT_symbol_name("_status")
	.dwattr DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$490, DW_AT_accessibility(DW_ACCESS_public)
DW$491	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$491, DW_AT_name("erase"), DW_AT_symbol_name("_erase")
	.dwattr DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$491, DW_AT_accessibility(DW_ACCESS_public)
DW$492	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$492, DW_AT_name("address"), DW_AT_symbol_name("_address")
	.dwattr DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$492, DW_AT_accessibility(DW_ACCESS_public)
DW$493	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$493, DW_AT_name("size"), DW_AT_symbol_name("_size")
	.dwattr DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$493, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$72

DW$T$212	.dwtag  DW_TAG_typedef, DW_AT_name("CommandStruct"), DW_AT_type(*DW$T$81)
	.dwattr DW$T$212, DW_AT_language(DW_LANG_C)

DW$T$25	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$25, DW_AT_byte_size(0x04)
DW$494	.dwtag  DW_TAG_subrange_type
	.dwattr DW$494, DW_AT_upper_bound(0x03)
	.dwendtag DW$T$25


DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$51, DW_AT_byte_size(0x39)
DW$495	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$495, DW_AT_name("ready"), DW_AT_symbol_name("_ready")
	.dwattr DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$495, DW_AT_accessibility(DW_ACCESS_public)
DW$496	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$496, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$496, DW_AT_accessibility(DW_ACCESS_public)
DW$497	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$497, DW_AT_name("newrpm"), DW_AT_symbol_name("_newrpm")
	.dwattr DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$497, DW_AT_accessibility(DW_ACCESS_public)
DW$498	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$498, DW_AT_name("rpmstart"), DW_AT_symbol_name("_rpmstart")
	.dwattr DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$498, DW_AT_accessibility(DW_ACCESS_public)
DW$499	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$499, DW_AT_name("startupcounter"), DW_AT_symbol_name("_startupcounter")
	.dwattr DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$499, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$51


DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$54, DW_AT_byte_size(0x2a)
DW$500	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$52)
	.dwattr DW$500, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$500, DW_AT_accessibility(DW_ACCESS_public)
DW$501	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$53)
	.dwattr DW$501, DW_AT_name("peakoffset"), DW_AT_symbol_name("_peakoffset")
	.dwattr DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$501, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$54


DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$56, DW_AT_byte_size(0x62)
DW$502	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$502, DW_AT_name("current"), DW_AT_symbol_name("_current")
	.dwattr DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$502, DW_AT_accessibility(DW_ACCESS_public)
DW$503	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$503, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$503, DW_AT_accessibility(DW_ACCESS_public)
DW$504	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$55)
	.dwattr DW$504, DW_AT_name("counterA"), DW_AT_symbol_name("_counterA")
	.dwattr DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$504, DW_AT_accessibility(DW_ACCESS_public)
DW$505	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$55)
	.dwattr DW$505, DW_AT_name("counterB"), DW_AT_symbol_name("_counterB")
	.dwattr DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$505, DW_AT_accessibility(DW_ACCESS_public)
DW$506	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$506, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr DW$506, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$56


DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$58, DW_AT_byte_size(0x1c)
DW$507	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$57)
	.dwattr DW$507, DW_AT_name("value"), DW_AT_symbol_name("_value")
	.dwattr DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$507, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$58


DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$61, DW_AT_byte_size(0x1a)
DW$508	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$59)
	.dwattr DW$508, DW_AT_name("value"), DW_AT_symbol_name("_value")
	.dwattr DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$508, DW_AT_accessibility(DW_ACCESS_public)
DW$509	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$509, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$509, DW_AT_accessibility(DW_ACCESS_public)
DW$510	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$60)
	.dwattr DW$510, DW_AT_name("scalefactor"), DW_AT_symbol_name("_scalefactor")
	.dwattr DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$510, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$61


DW$T$81	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$81, DW_AT_name("tag_CommandStruct")
	.dwattr DW$T$81, DW_AT_byte_size(0x5c)
DW$511	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$75)
	.dwattr DW$511, DW_AT_name("Prompt"), DW_AT_symbol_name("_Prompt")
	.dwattr DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$511, DW_AT_accessibility(DW_ACCESS_public)
DW$512	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$77)
	.dwattr DW$512, DW_AT_name("HelpStr"), DW_AT_symbol_name("_HelpStr")
	.dwattr DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$512, DW_AT_accessibility(DW_ACCESS_public)
DW$513	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$80)
	.dwattr DW$513, DW_AT_name("CLIFunc"), DW_AT_symbol_name("_CLIFunc")
	.dwattr DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x5a]
	.dwattr DW$513, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$81

DW$T$80	.dwtag  DW_TAG_typedef, DW_AT_name("CLIFuncType"), DW_AT_type(*DW$T$79)
	.dwattr DW$T$80, DW_AT_language(DW_LANG_C)
DW$T$75	.dwtag  DW_TAG_typedef, DW_AT_name("clipromptstr"), DW_AT_type(*DW$T$74)
	.dwattr DW$T$75, DW_AT_language(DW_LANG_C)
DW$T$77	.dwtag  DW_TAG_typedef, DW_AT_name("helpstr"), DW_AT_type(*DW$T$76)
	.dwattr DW$T$77, DW_AT_language(DW_LANG_C)

DW$T$53	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$53, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$53, DW_AT_byte_size(0x0e)
DW$514	.dwtag  DW_TAG_subrange_type
	.dwattr DW$514, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$53


DW$T$59	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$59, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$59, DW_AT_byte_size(0x08)
DW$515	.dwtag  DW_TAG_subrange_type
	.dwattr DW$515, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$59


DW$T$57	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$57, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$57, DW_AT_byte_size(0x1c)
DW$516	.dwtag  DW_TAG_subrange_type
	.dwattr DW$516, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$57


DW$T$55	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$55, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$55, DW_AT_byte_size(0x1c)
DW$517	.dwtag  DW_TAG_subrange_type
	.dwattr DW$517, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$55


DW$T$52	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$16)
	.dwattr DW$T$52, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$52, DW_AT_byte_size(0x1c)
DW$518	.dwtag  DW_TAG_subrange_type
	.dwattr DW$518, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$52


DW$T$60	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$16)
	.dwattr DW$T$60, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$60, DW_AT_byte_size(0x10)
DW$519	.dwtag  DW_TAG_subrange_type
	.dwattr DW$519, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$60

DW$T$79	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$78)
	.dwattr DW$T$79, DW_AT_address_class(0x16)

DW$T$74	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$74, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$74, DW_AT_byte_size(0x0a)
DW$520	.dwtag  DW_TAG_subrange_type
	.dwattr DW$520, DW_AT_upper_bound(0x09)
	.dwendtag DW$T$74


DW$T$76	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$76, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$76, DW_AT_byte_size(0x50)
DW$521	.dwtag  DW_TAG_subrange_type
	.dwattr DW$521, DW_AT_upper_bound(0x4f)
	.dwendtag DW$T$76

DW$T$16	.dwtag  DW_TAG_base_type, DW_AT_name("float")
	.dwattr DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$16, DW_AT_byte_size(0x02)

	.dwattr DW$143, DW_AT_external(0x01)
	.dwattr DW$181, DW_AT_external(0x01)
	.dwattr DW$181, DW_AT_type(*DW$T$11)
	.dwattr DW$175, DW_AT_external(0x01)
	.dwattr DW$175, DW_AT_type(*DW$T$10)
	.dwattr DW$173, DW_AT_external(0x01)
	.dwattr DW$173, DW_AT_type(*DW$T$83)
	.dwattr DW$183, DW_AT_external(0x01)
	.dwattr DW$99, DW_AT_external(0x01)
	.dwattr DW$137, DW_AT_external(0x01)
	.dwattr DW$138, DW_AT_external(0x01)
	.dwattr DW$103, DW_AT_external(0x01)
	.dwattr DW$179, DW_AT_external(0x01)
	.dwattr DW$177, DW_AT_external(0x01)
	.dwattr DW$141, DW_AT_external(0x01)
	.dwattr DW$122, DW_AT_external(0x01)
	.dwattr DW$128, DW_AT_external(0x01)
	.dwattr DW$97, DW_AT_external(0x01)
	.dwattr DW$121, DW_AT_external(0x01)
	.dwattr DW$118, DW_AT_external(0x01)
	.dwattr DW$119, DW_AT_external(0x01)
	.dwattr DW$117, DW_AT_external(0x01)
	.dwattr DW$120, DW_AT_external(0x01)
	.dwattr DW$104, DW_AT_external(0x01)
	.dwattr DW$139, DW_AT_external(0x01)
	.dwattr DW$142, DW_AT_external(0x01)
	.dwattr DW$150, DW_AT_external(0x01)
	.dwattr DW$150, DW_AT_type(*DW$T$83)
	.dwattr DW$157, DW_AT_external(0x01)
	.dwattr DW$100, DW_AT_external(0x01)
	.dwattr DW$105, DW_AT_external(0x01)
	.dwattr DW$112, DW_AT_external(0x01)
	.dwattr DW$125, DW_AT_external(0x01)
	.dwattr DW$135, DW_AT_external(0x01)
	.dwattr DW$151, DW_AT_external(0x01)
	.dwattr DW$151, DW_AT_type(*DW$T$83)
	.dwattr DW$161, DW_AT_external(0x01)
	.dwattr DW$127, DW_AT_external(0x01)
	.dwattr DW$123, DW_AT_external(0x01)
	.dwattr DW$126, DW_AT_external(0x01)
	.dwattr DW$124, DW_AT_external(0x01)
	.dwattr DW$98, DW_AT_external(0x01)
	.dwattr DW$136, DW_AT_external(0x01)
	.dwattr DW$140, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$522	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$522, DW_AT_location[DW_OP_reg0]
DW$523	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$523, DW_AT_location[DW_OP_reg1]
DW$524	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$524, DW_AT_location[DW_OP_reg2]
DW$525	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$525, DW_AT_location[DW_OP_reg3]
DW$526	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$526, DW_AT_location[DW_OP_reg4]
DW$527	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$527, DW_AT_location[DW_OP_reg5]
DW$528	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$528, DW_AT_location[DW_OP_reg6]
DW$529	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$529, DW_AT_location[DW_OP_reg7]
DW$530	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$530, DW_AT_location[DW_OP_reg8]
DW$531	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$531, DW_AT_location[DW_OP_reg9]
DW$532	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$532, DW_AT_location[DW_OP_reg10]
DW$533	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$533, DW_AT_location[DW_OP_reg11]
DW$534	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$534, DW_AT_location[DW_OP_reg12]
DW$535	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$535, DW_AT_location[DW_OP_reg13]
DW$536	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$536, DW_AT_location[DW_OP_reg14]
DW$537	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$537, DW_AT_location[DW_OP_reg15]
DW$538	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$538, DW_AT_location[DW_OP_reg16]
DW$539	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$539, DW_AT_location[DW_OP_reg17]
DW$540	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$540, DW_AT_location[DW_OP_reg18]
DW$541	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$541, DW_AT_location[DW_OP_reg19]
DW$542	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$542, DW_AT_location[DW_OP_reg20]
DW$543	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$543, DW_AT_location[DW_OP_reg21]
DW$544	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$544, DW_AT_location[DW_OP_reg22]
DW$545	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$545, DW_AT_location[DW_OP_reg23]
DW$546	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$546, DW_AT_location[DW_OP_reg24]
DW$547	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$547, DW_AT_location[DW_OP_reg25]
DW$548	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$548, DW_AT_location[DW_OP_reg26]
DW$549	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$549, DW_AT_location[DW_OP_reg27]
DW$550	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$550, DW_AT_location[DW_OP_reg28]
DW$551	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$551, DW_AT_location[DW_OP_reg29]
DW$552	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$552, DW_AT_location[DW_OP_reg30]
DW$553	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$553, DW_AT_location[DW_OP_reg31]
DW$554	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$554, DW_AT_location[DW_OP_regx 0x20]
DW$555	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$555, DW_AT_location[DW_OP_regx 0x21]
DW$556	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$556, DW_AT_location[DW_OP_regx 0x22]
DW$557	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$557, DW_AT_location[DW_OP_regx 0x23]
DW$558	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$558, DW_AT_location[DW_OP_regx 0x24]
DW$559	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$559, DW_AT_location[DW_OP_regx 0x25]
DW$560	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$560, DW_AT_location[DW_OP_regx 0x26]
DW$561	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$561, DW_AT_location[DW_OP_regx 0x27]
DW$562	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$562, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

