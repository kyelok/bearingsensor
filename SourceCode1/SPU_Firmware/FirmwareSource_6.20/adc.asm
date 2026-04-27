;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Thu Aug 18 12:16:05 2016                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("adc.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("abs"), DW_AT_symbol_name("_abs")
	.dwattr DW$1, DW_AT_type(*DW$T$10)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$1


DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("sprintf"), DW_AT_symbol_name("_sprintf")
	.dwattr DW$3, DW_AT_type(*DW$T$10)
	.dwattr DW$3, DW_AT_declaration(0x01)
	.dwattr DW$3, DW_AT_external(0x01)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$127)
DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$145)
DW$6	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$3


DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("memset"), DW_AT_symbol_name("_memset")
	.dwattr DW$7, DW_AT_type(*DW$T$3)
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$123)
	.dwendtag DW$7


DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("sqrt"), DW_AT_symbol_name("_sqrt")
	.dwattr DW$11, DW_AT_type(*DW$T$17)
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)
DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$17)
	.dwendtag DW$11


DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("DebugStringOut"), DW_AT_symbol_name("_DebugStringOut")
	.dwattr DW$13, DW_AT_declaration(0x01)
	.dwattr DW$13, DW_AT_external(0x01)
DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$127)
	.dwendtag DW$13


DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("GetSensorEnabled"), DW_AT_symbol_name("_GetSensorEnabled")
	.dwattr DW$15, DW_AT_type(*DW$T$11)
	.dwattr DW$15, DW_AT_declaration(0x01)
	.dwattr DW$15, DW_AT_external(0x01)
DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$15


DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("SetRPMChan"), DW_AT_symbol_name("_SetRPMChan")
	.dwattr DW$17, DW_AT_declaration(0x01)
	.dwattr DW$17, DW_AT_external(0x01)
DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$17


DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("GetRPM"), DW_AT_symbol_name("_GetRPM")
	.dwattr DW$20, DW_AT_type(*DW$T$11)
	.dwattr DW$20, DW_AT_declaration(0x01)
	.dwattr DW$20, DW_AT_external(0x01)
DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$20


DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("GetModalRPM"), DW_AT_symbol_name("_GetModalRPM")
	.dwattr DW$22, DW_AT_type(*DW$T$11)
	.dwattr DW$22, DW_AT_declaration(0x01)
	.dwattr DW$22, DW_AT_external(0x01)
DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$22


DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("SetImmScaledValue"), DW_AT_symbol_name("_SetImmScaledValue")
	.dwattr DW$24, DW_AT_declaration(0x01)
	.dwattr DW$24, DW_AT_external(0x01)
DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$24


DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("SetScaledValue"), DW_AT_symbol_name("_SetScaledValue")
	.dwattr DW$27, DW_AT_declaration(0x01)
	.dwattr DW$27, DW_AT_external(0x01)
DW$28	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$27


DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("GetScaledValue"), DW_AT_symbol_name("_GetScaledValue")
	.dwattr DW$30, DW_AT_type(*DW$T$10)
	.dwattr DW$30, DW_AT_declaration(0x01)
	.dwattr DW$30, DW_AT_external(0x01)
DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$30


DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("SetPreCompValue"), DW_AT_symbol_name("_SetPreCompValue")
	.dwattr DW$32, DW_AT_declaration(0x01)
	.dwattr DW$32, DW_AT_external(0x01)
DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$32


DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("Status1Flags"), DW_AT_symbol_name("_Status1Flags")
	.dwattr DW$35, DW_AT_type(*DW$T$188)
	.dwattr DW$35, DW_AT_declaration(0x01)
	.dwattr DW$35, DW_AT_external(0x01)
DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$35


DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearSelectiveMANTable"), DW_AT_symbol_name("_ClearSelectiveMANTable")
	.dwattr DW$37, DW_AT_declaration(0x01)
	.dwattr DW$37, DW_AT_external(0x01)

DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteSensorStatustoNVMEM"), DW_AT_symbol_name("_WriteSensorStatustoNVMEM")
	.dwattr DW$38, DW_AT_declaration(0x01)
	.dwattr DW$38, DW_AT_external(0x01)
DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$38


DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteOffsetAtoNVMEM"), DW_AT_symbol_name("_WriteOffsetAtoNVMEM")
	.dwattr DW$40, DW_AT_declaration(0x01)
	.dwattr DW$40, DW_AT_external(0x01)
DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$40


DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("CheckBitSet"), DW_AT_symbol_name("_CheckBitSet")
	.dwattr DW$42, DW_AT_type(*DW$T$10)
	.dwattr DW$42, DW_AT_declaration(0x01)
	.dwattr DW$42, DW_AT_external(0x01)
DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$42


DW$45	.dwtag  DW_TAG_subprogram, DW_AT_name("BitSet"), DW_AT_symbol_name("_BitSet")
	.dwattr DW$45, DW_AT_type(*DW$T$11)
	.dwattr DW$45, DW_AT_declaration(0x01)
	.dwattr DW$45, DW_AT_external(0x01)
DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$45


DW$48	.dwtag  DW_TAG_subprogram, DW_AT_name("BitClear"), DW_AT_symbol_name("_BitClear")
	.dwattr DW$48, DW_AT_type(*DW$T$11)
	.dwattr DW$48, DW_AT_declaration(0x01)
	.dwattr DW$48, DW_AT_external(0x01)
DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$50	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$48


DW$51	.dwtag  DW_TAG_subprogram, DW_AT_name("Status3Flags"), DW_AT_symbol_name("_Status3Flags")
	.dwattr DW$51, DW_AT_type(*DW$T$194)
	.dwattr DW$51, DW_AT_declaration(0x01)
	.dwattr DW$51, DW_AT_external(0x01)
DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$51


DW$53	.dwtag  DW_TAG_subprogram, DW_AT_name("SetNoPulseFlag"), DW_AT_symbol_name("_SetNoPulseFlag")
	.dwattr DW$53, DW_AT_declaration(0x01)
	.dwattr DW$53, DW_AT_external(0x01)
DW$54	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$53


DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("SetAlarmEvent"), DW_AT_symbol_name("_SetAlarmEvent")
	.dwattr DW$56, DW_AT_declaration(0x01)
	.dwattr DW$56, DW_AT_external(0x01)
DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$56


DW$58	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearAlarmEvent"), DW_AT_symbol_name("_ClearAlarmEvent")
	.dwattr DW$58, DW_AT_declaration(0x01)
	.dwattr DW$58, DW_AT_external(0x01)
DW$59	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$58


DW$60	.dwtag  DW_TAG_subprogram, DW_AT_name("SetBitEvent"), DW_AT_symbol_name("_SetBitEvent")
	.dwattr DW$60, DW_AT_declaration(0x01)
	.dwattr DW$60, DW_AT_external(0x01)
DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$60


DW$62	.dwtag  DW_TAG_subprogram, DW_AT_name("CheckAlarmBitSet"), DW_AT_symbol_name("_CheckAlarmBitSet")
	.dwattr DW$62, DW_AT_type(*DW$T$10)
	.dwattr DW$62, DW_AT_declaration(0x01)
	.dwattr DW$62, DW_AT_external(0x01)
DW$63	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$62


DW$64	.dwtag  DW_TAG_subprogram, DW_AT_name("FloattoIntRound"), DW_AT_symbol_name("_FloattoIntRound")
	.dwattr DW$64, DW_AT_type(*DW$T$10)
	.dwattr DW$64, DW_AT_declaration(0x01)
	.dwattr DW$64, DW_AT_external(0x01)

DW$65	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteAllSensorStructtoNVMEM"), DW_AT_symbol_name("_WriteAllSensorStructtoNVMEM")
	.dwattr DW$65, DW_AT_type(*DW$T$10)
	.dwattr DW$65, DW_AT_declaration(0x01)
	.dwattr DW$65, DW_AT_external(0x01)

DW$66	.dwtag  DW_TAG_subprogram, DW_AT_name("GeneralSettingstoSDCardFile"), DW_AT_symbol_name("_GeneralSettingstoSDCardFile")
	.dwattr DW$66, DW_AT_type(*DW$T$10)
	.dwattr DW$66, DW_AT_declaration(0x01)
	.dwattr DW$66, DW_AT_external(0x01)

DW$67	.dwtag  DW_TAG_subprogram, DW_AT_name("CalAbort"), DW_AT_symbol_name("_CalAbort")
	.dwattr DW$67, DW_AT_type(*DW$T$10)
	.dwattr DW$67, DW_AT_declaration(0x01)
	.dwattr DW$67, DW_AT_external(0x01)

DW$68	.dwtag  DW_TAG_subprogram, DW_AT_name("CheckWIORange"), DW_AT_symbol_name("_CheckWIORange")
	.dwattr DW$68, DW_AT_type(*DW$T$10)
	.dwattr DW$68, DW_AT_declaration(0x01)
	.dwattr DW$68, DW_AT_external(0x01)

DW$69	.dwtag  DW_TAG_subprogram, DW_AT_name("SaveSafeStruct1"), DW_AT_symbol_name("_SaveSafeStruct1")
	.dwattr DW$69, DW_AT_type(*DW$T$10)
	.dwattr DW$69, DW_AT_declaration(0x01)
	.dwattr DW$69, DW_AT_external(0x01)

DW$70	.dwtag  DW_TAG_subprogram, DW_AT_name("SaveXtswplusAnaCal"), DW_AT_symbol_name("_SaveXtswplusAnaCal")
	.dwattr DW$70, DW_AT_type(*DW$T$10)
	.dwattr DW$70, DW_AT_declaration(0x01)
	.dwattr DW$70, DW_AT_external(0x01)

DW$71	.dwtag  DW_TAG_subprogram, DW_AT_name("SaveSafeStruct2"), DW_AT_symbol_name("_SaveSafeStruct2")
	.dwattr DW$71, DW_AT_type(*DW$T$10)
	.dwattr DW$71, DW_AT_declaration(0x01)
	.dwattr DW$71, DW_AT_external(0x01)

DW$72	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteNVMemory"), DW_AT_symbol_name("_WriteNVMemory")
	.dwattr DW$72, DW_AT_type(*DW$T$10)
	.dwattr DW$72, DW_AT_declaration(0x01)
	.dwattr DW$72, DW_AT_external(0x01)

DW$73	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadNVMemory"), DW_AT_symbol_name("_ReadNVMemory")
	.dwattr DW$73, DW_AT_type(*DW$T$10)
	.dwattr DW$73, DW_AT_declaration(0x01)
	.dwattr DW$73, DW_AT_external(0x01)
DW$74	.dwtag  DW_TAG_variable, DW_AT_name("gpa"), DW_AT_symbol_name("_gpa")
	.dwattr DW$74, DW_AT_type(*DW$T$202)
	.dwattr DW$74, DW_AT_declaration(0x01)
	.dwattr DW$74, DW_AT_external(0x01)
DW$75	.dwtag  DW_TAG_variable, DW_AT_name("gpb"), DW_AT_symbol_name("_gpb")
	.dwattr DW$75, DW_AT_type(*DW$T$206)
	.dwattr DW$75, DW_AT_declaration(0x01)
	.dwattr DW$75, DW_AT_external(0x01)
DW$76	.dwtag  DW_TAG_variable, DW_AT_name("gpd"), DW_AT_symbol_name("_gpd")
	.dwattr DW$76, DW_AT_type(*DW$T$210)
	.dwattr DW$76, DW_AT_declaration(0x01)
	.dwattr DW$76, DW_AT_external(0x01)
DW$77	.dwtag  DW_TAG_variable, DW_AT_name("settings"), DW_AT_symbol_name("_settings")
	.dwattr DW$77, DW_AT_type(*DW$T$213)
	.dwattr DW$77, DW_AT_declaration(0x01)
	.dwattr DW$77, DW_AT_external(0x01)
DW$78	.dwtag  DW_TAG_variable, DW_AT_name("motion"), DW_AT_symbol_name("_motion")
	.dwattr DW$78, DW_AT_type(*DW$T$214)
	.dwattr DW$78, DW_AT_declaration(0x01)
	.dwattr DW$78, DW_AT_external(0x01)
DW$79	.dwtag  DW_TAG_variable, DW_AT_name("safe1"), DW_AT_symbol_name("_safe1")
	.dwattr DW$79, DW_AT_type(*DW$T$216)
	.dwattr DW$79, DW_AT_declaration(0x01)
	.dwattr DW$79, DW_AT_external(0x01)
DW$80	.dwtag  DW_TAG_variable, DW_AT_name("safe2"), DW_AT_symbol_name("_safe2")
	.dwattr DW$80, DW_AT_type(*DW$T$218)
	.dwattr DW$80, DW_AT_declaration(0x01)
	.dwattr DW$80, DW_AT_external(0x01)
DW$81	.dwtag  DW_TAG_variable, DW_AT_name("xtswplusanacal"), DW_AT_symbol_name("_xtswplusanacal")
	.dwattr DW$81, DW_AT_type(*DW$T$220)
	.dwattr DW$81, DW_AT_declaration(0x01)
	.dwattr DW$81, DW_AT_external(0x01)
DW$82	.dwtag  DW_TAG_variable, DW_AT_name("timers"), DW_AT_symbol_name("_timers")
	.dwattr DW$82, DW_AT_type(*DW$T$223)
	.dwattr DW$82, DW_AT_declaration(0x01)
	.dwattr DW$82, DW_AT_external(0x01)
DW$83	.dwtag  DW_TAG_variable, DW_AT_name("allsensors"), DW_AT_symbol_name("_allsensors")
	.dwattr DW$83, DW_AT_type(*DW$T$226)
	.dwattr DW$83, DW_AT_declaration(0x01)
	.dwattr DW$83, DW_AT_external(0x01)
DW$84	.dwtag  DW_TAG_variable, DW_AT_name("config"), DW_AT_symbol_name("_config")
	.dwattr DW$84, DW_AT_type(*DW$T$228)
	.dwattr DW$84, DW_AT_declaration(0x01)
	.dwattr DW$84, DW_AT_external(0x01)
DW$85	.dwtag  DW_TAG_variable, DW_AT_name("loopcheck"), DW_AT_symbol_name("_loopcheck")
	.dwattr DW$85, DW_AT_type(*DW$T$229)
	.dwattr DW$85, DW_AT_declaration(0x01)
	.dwattr DW$85, DW_AT_external(0x01)
DW$86	.dwtag  DW_TAG_variable, DW_AT_name("stringbuffer"), DW_AT_symbol_name("_stringbuffer")
	.dwattr DW$86, DW_AT_type(*DW$T$300)
	.dwattr DW$86, DW_AT_declaration(0x01)
	.dwattr DW$86, DW_AT_external(0x01)
DW$87	.dwtag  DW_TAG_variable, DW_AT_name("modalsetcounters"), DW_AT_symbol_name("_modalsetcounters")
	.dwattr DW$87, DW_AT_type(*DW$T$105)
	.dwattr DW$87, DW_AT_declaration(0x01)
	.dwattr DW$87, DW_AT_external(0x01)
DW$88	.dwtag  DW_TAG_variable, DW_AT_name("offsetA"), DW_AT_symbol_name("_offsetA")
	.dwattr DW$88, DW_AT_type(*DW$T$230)
	.dwattr DW$88, DW_AT_declaration(0x01)
	.dwattr DW$88, DW_AT_external(0x01)
DW$89	.dwtag  DW_TAG_variable, DW_AT_name("sensor"), DW_AT_symbol_name("_sensor")
	.dwattr DW$89, DW_AT_type(*DW$T$233)
	.dwattr DW$89, DW_AT_declaration(0x01)
	.dwattr DW$89, DW_AT_external(0x01)
DW$90	.dwtag  DW_TAG_variable, DW_AT_name("rpmdata"), DW_AT_symbol_name("_rpmdata")
	.dwattr DW$90, DW_AT_type(*DW$T$236)
	.dwattr DW$90, DW_AT_declaration(0x01)
	.dwattr DW$90, DW_AT_external(0x01)
DW$91	.dwtag  DW_TAG_variable, DW_AT_name("damagemonignore"), DW_AT_symbol_name("_damagemonignore")
	.dwattr DW$91, DW_AT_type(*DW$T$67)
	.dwattr DW$91, DW_AT_declaration(0x01)
	.dwattr DW$91, DW_AT_external(0x01)
DW$92	.dwtag  DW_TAG_variable, DW_AT_name("status3"), DW_AT_symbol_name("_status3")
	.dwattr DW$92, DW_AT_type(*DW$T$196)
	.dwattr DW$92, DW_AT_declaration(0x01)
	.dwattr DW$92, DW_AT_external(0x01)
	.global	_adcregs
_adcregs:	.usect	".adcregisters",26,0,0
DW$93	.dwtag  DW_TAG_variable, DW_AT_name("adcregs"), DW_AT_symbol_name("_adcregs")
	.dwattr DW$93, DW_AT_location[DW_OP_addr _adcregs]
	.dwattr DW$93, DW_AT_type(*DW$T$240)
	.dwattr DW$93, DW_AT_external(0x01)
	.global	_adcdata
_adcdata:	.usect	".ebss",88,1,0
DW$94	.dwtag  DW_TAG_variable, DW_AT_name("adcdata"), DW_AT_symbol_name("_adcdata")
	.dwattr DW$94, DW_AT_location[DW_OP_addr _adcdata]
	.dwattr DW$94, DW_AT_type(*DW$T$252)
	.dwattr DW$94, DW_AT_external(0x01)
	.global	_inputs
_inputs:	.usect	".ebss",254,1,1
DW$95	.dwtag  DW_TAG_variable, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$95, DW_AT_location[DW_OP_addr _inputs]
	.dwattr DW$95, DW_AT_type(*DW$T$284)
	.dwattr DW$95, DW_AT_external(0x01)
	.global	_counter
_counter:	.usect	".ebss",1,1,0
DW$96	.dwtag  DW_TAG_variable, DW_AT_name("counter"), DW_AT_symbol_name("_counter")
	.dwattr DW$96, DW_AT_location[DW_OP_addr _counter]
	.dwattr DW$96, DW_AT_type(*DW$T$11)
	.dwattr DW$96, DW_AT_external(0x01)
	.global	_dcmodeprev
_dcmodeprev:	.usect	".ebss",28,1,0
DW$97	.dwtag  DW_TAG_variable, DW_AT_name("dcmodeprev"), DW_AT_symbol_name("_dcmodeprev")
	.dwattr DW$97, DW_AT_location[DW_OP_addr _dcmodeprev]
	.dwattr DW$97, DW_AT_type(*DW$T$67)
	.dwattr DW$97, DW_AT_external(0x01)
	.global	_slowdownblipstate
_slowdownblipstate:	.usect	".ebss",1,1,0
DW$98	.dwtag  DW_TAG_variable, DW_AT_name("slowdownblipstate"), DW_AT_symbol_name("_slowdownblipstate")
	.dwattr DW$98, DW_AT_location[DW_OP_addr _slowdownblipstate]
	.dwattr DW$98, DW_AT_type(*DW$T$11)
	.dwattr DW$98, DW_AT_external(0x01)
	.global	_proximityscalingfactor
_proximityscalingfactor:	.usect	".ebss",2,1,1
DW$99	.dwtag  DW_TAG_variable, DW_AT_name("proximityscalingfactor"), DW_AT_symbol_name("_proximityscalingfactor")
	.dwattr DW$99, DW_AT_location[DW_OP_addr _proximityscalingfactor]
	.dwattr DW$99, DW_AT_type(*DW$T$16)
	.dwattr DW$99, DW_AT_external(0x01)
	.global	_slemsettings
_slemsettings:	.usect	".ebss",6,1,0
DW$100	.dwtag  DW_TAG_variable, DW_AT_name("slemsettings"), DW_AT_symbol_name("_slemsettings")
	.dwattr DW$100, DW_AT_location[DW_OP_addr _slemsettings]
	.dwattr DW$100, DW_AT_type(*DW$T$287)
	.dwattr DW$100, DW_AT_external(0x01)
	.global	_slem
_slem:	.usect	".ebss",3,1,0
DW$101	.dwtag  DW_TAG_variable, DW_AT_name("slem"), DW_AT_symbol_name("_slem")
	.dwattr DW$101, DW_AT_location[DW_OP_addr _slem]
	.dwattr DW$101, DW_AT_type(*DW$T$289)
	.dwattr DW$101, DW_AT_external(0x01)
	.global	_rtcbat
_rtcbat:	.usect	".ebss",2,1,0
DW$102	.dwtag  DW_TAG_variable, DW_AT_name("rtcbat"), DW_AT_symbol_name("_rtcbat")
	.dwattr DW$102, DW_AT_location[DW_OP_addr _rtcbat]
	.dwattr DW$102, DW_AT_type(*DW$T$291)
	.dwattr DW$102, DW_AT_external(0x01)
	.global	_loadlevel
_loadlevel:	.usect	".ebss",6,1,1
DW$103	.dwtag  DW_TAG_variable, DW_AT_name("loadlevel"), DW_AT_symbol_name("_loadlevel")
	.dwattr DW$103, DW_AT_location[DW_OP_addr _loadlevel]
	.dwattr DW$103, DW_AT_type(*DW$T$293)
	.dwattr DW$103, DW_AT_external(0x01)
	.global	_cppsettings
_cppsettings:	.usect	".ebss",16,1,0
DW$104	.dwtag  DW_TAG_variable, DW_AT_name("cppsettings"), DW_AT_symbol_name("_cppsettings")
	.dwattr DW$104, DW_AT_location[DW_OP_addr _cppsettings]
	.dwattr DW$104, DW_AT_type(*DW$T$294)
	.dwattr DW$104, DW_AT_external(0x01)
	.global	_sensorMoving
_sensorMoving:	.usect	".ebss",2,1,0
DW$105	.dwtag  DW_TAG_variable, DW_AT_name("sensorMoving"), DW_AT_symbol_name("_sensorMoving")
	.dwattr DW$105, DW_AT_location[DW_OP_addr _sensorMoving]
	.dwattr DW$105, DW_AT_type(*DW$T$296)
	.dwattr DW$105, DW_AT_external(0x01)
	.global	_dcChan
_dcChan:	.usect	".ebss",1,1,0
DW$106	.dwtag  DW_TAG_variable, DW_AT_name("dcChan"), DW_AT_symbol_name("_dcChan")
	.dwattr DW$106, DW_AT_location[DW_OP_addr _dcChan]
	.dwattr DW$106, DW_AT_type(*DW$T$11)
	.dwattr DW$106, DW_AT_external(0x01)
	.global	_uArealtimeValue
_uArealtimeValue:	.usect	".ebss",28,1,0
DW$107	.dwtag  DW_TAG_variable, DW_AT_name("uArealtimeValue"), DW_AT_symbol_name("_uArealtimeValue")
	.dwattr DW$107, DW_AT_location[DW_OP_addr _uArealtimeValue]
	.dwattr DW$107, DW_AT_type(*DW$T$105)
	.dwattr DW$107, DW_AT_external(0x01)
	.global	_umrealtimeValue
_umrealtimeValue:	.usect	".ebss",28,1,0
DW$108	.dwtag  DW_TAG_variable, DW_AT_name("umrealtimeValue"), DW_AT_symbol_name("_umrealtimeValue")
	.dwattr DW$108, DW_AT_location[DW_OP_addr _umrealtimeValue]
	.dwattr DW$108, DW_AT_type(*DW$T$67)
	.dwattr DW$108, DW_AT_external(0x01)
	.global	_dcmodechecks
_dcmodechecks:	.usect	".ebss",15,1,0
DW$109	.dwtag  DW_TAG_variable, DW_AT_name("dcmodechecks"), DW_AT_symbol_name("_dcmodechecks")
	.dwattr DW$109, DW_AT_location[DW_OP_addr _dcmodechecks]
	.dwattr DW$109, DW_AT_type(*DW$T$298)
	.dwattr DW$109, DW_AT_external(0x01)
	.global	_DCModePeakReset
_DCModePeakReset:	.usect	".ebss",2,1,0
DW$110	.dwtag  DW_TAG_variable, DW_AT_name("DCModePeakReset"), DW_AT_symbol_name("_DCModePeakReset")
	.dwattr DW$110, DW_AT_location[DW_OP_addr _DCModePeakReset]
	.dwattr DW$110, DW_AT_type(*DW$T$179)
	.dwattr DW$110, DW_AT_external(0x01)
	.global	_DCModeCylinderComparison
_DCModeCylinderComparison:	.usect	".ebss",1,1,0
DW$111	.dwtag  DW_TAG_variable, DW_AT_name("DCModeCylinderComparison"), DW_AT_symbol_name("_DCModeCylinderComparison")
	.dwattr DW$111, DW_AT_location[DW_OP_addr _DCModeCylinderComparison]
	.dwattr DW$111, DW_AT_type(*DW$T$11)
	.dwattr DW$111, DW_AT_external(0x01)
	.global	_DCModeInRangeOK
_DCModeInRangeOK:	.usect	".ebss",2,1,0
DW$112	.dwtag  DW_TAG_variable, DW_AT_name("DCModeInRangeOK"), DW_AT_symbol_name("_DCModeInRangeOK")
	.dwattr DW$112, DW_AT_location[DW_OP_addr _DCModeInRangeOK]
	.dwattr DW$112, DW_AT_type(*DW$T$179)
	.dwattr DW$112, DW_AT_external(0x01)
	.global	_DCModeInRangeIdeal
_DCModeInRangeIdeal:	.usect	".ebss",2,1,0
DW$113	.dwtag  DW_TAG_variable, DW_AT_name("DCModeInRangeIdeal"), DW_AT_symbol_name("_DCModeInRangeIdeal")
	.dwattr DW$113, DW_AT_location[DW_OP_addr _DCModeInRangeIdeal]
	.dwattr DW$113, DW_AT_type(*DW$T$179)
	.dwattr DW$113, DW_AT_external(0x01)
;	C:\CCStudio_v3.3\C2000\cgtools\bin\opt2000.exe C:\Users\Andrew\AppData\Local\Temp\TI6962 C:\Users\Andrew\AppData\Local\Temp\TI6964 
;	C:\CCStudio_v3.3\C2000\cgtools\bin\ac2000.exe -q -D_INLINE -DLARGE_MODEL -IC:/CCStudio_v3.3/C2000/xdais/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/bios/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/rtdx/include/c2000 -IC:/CCStudio_v3.3/C2000/cgtools/include --version=28 --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\Andrew\AppData\Local\Temp\TI6962 --template_info_file C:\Users\Andrew\AppData\Local\Temp\TI6966 --object_file 
	.sect	".text"
	.global	_InitADC

DW$114	.dwtag  DW_TAG_subprogram, DW_AT_name("InitADC"), DW_AT_symbol_name("_InitADC")
	.dwattr DW$114, DW_AT_low_pc(_InitADC)
	.dwattr DW$114, DW_AT_high_pc(0x00)
	.dwattr DW$114, DW_AT_begin_file("adc.c")
	.dwattr DW$114, DW_AT_begin_line(0x89)
	.dwattr DW$114, DW_AT_begin_column(0x06)
	.dwattr DW$114, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$114, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",138,1

;***************************************************************
;* FNAME: _InitADC                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_InitADC:
 eallow             ; Enable accesses to PIE control registers
        MOVB      AL,#3                 ; |142| 
        MOV       *(0:0x701a),AL        ; |142| 
        NOP
        NOP
        MOV       AL,*(0:0x701c)        ; |143| 
        ORB       AL,#0x08              ; |143| 
        MOV       *(0:0x701c),AL        ; |143| 
 edis               ; Disable accesses to PIE control registers
        MOVW      DP,#_adcregs+24
        OR        @_adcregs+24,#0x00c0  ; |151| 
        MOVW      DP,#_timers+1
        MOV       @_timers+1,#2         ; |152| 
        NOP
        MOVW      DP,#_timers+1
        MOV       AL,@_timers+1         ; |153| 
        BF        L2,EQ                 ; |153| 
        ; branchcc occurs ; |153| 
L1:    
DW$L$_InitADC$2$B:
	.dwpsn	"adc.c",153,0
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |153| 
        MOVW      DP,#_timers+1
        MOV       AL,@_timers+1         ; |153| 
        BF        L1,NEQ                ; |153| 
        ; branchcc occurs ; |153| 
DW$L$_InitADC$2$E:
L2:    
        MOVW      DP,#_adcregs+24
        OR        @_adcregs+24,#0x0020  ; |154| 
        MOVW      DP,#_timers+1
        MOV       @_timers+1,#2         ; |155| 
        NOP
        MOVW      DP,#_timers+1
        MOV       AL,@_timers+1         ; |156| 
        BF        L4,EQ                 ; |156| 
        ; branchcc occurs ; |156| 
L3:    
DW$L$_InitADC$4$B:
	.dwpsn	"adc.c",156,0
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |156| 
        MOVW      DP,#_timers+1
        MOV       AL,@_timers+1         ; |156| 
        BF        L3,NEQ                ; |156| 
        ; branchcc occurs ; |156| 
DW$L$_InitADC$4$E:
L4:    
        MOVL      XAR4,#_adcregs        ; |158| 
        AND       AL,*+XAR4[0],#0xfbff  ; |158| 
        OR        AL,#0x0b00            ; |158| 
        MOV       *+XAR4[0],AL          ; |158| 
        MOVB      XAR0,#24              ; |159| 
        MOVW      DP,#_adcregs+24
        AND       AL,*+XAR4[AR0],#0xffe1 ; |159| 
        ORB       AL,#0x04              ; |159| 
        MOV       @_adcregs+24,AL       ; |159| 
        OR        *+XAR4[0],#0x0010     ; |160| 
        MOVW      DP,#_adcregs+3
        AND       *+XAR4[3],#0xfff0     ; |161| 
        AND       AL,@_adcregs+3,#0xff1f ; |162| 
        ORB       AL,#0x10              ; |162| 
        MOVW      DP,#_adcregs+3
        MOV       @_adcregs+3,AL        ; |162| 
        NOP
        MOVW      DP,#_adcregs+3
        AND       AL,@_adcregs+3,#0xf0ff ; |163| 
        OR        AL,#0x0200            ; |163| 
        MOVW      DP,#_adcregs+3
        MOV       @_adcregs+3,AL        ; |163| 
        NOP
        MOVW      DP,#_adcregs+3
        AND       AL,@_adcregs+3,#0x0fff ; |164| 
        OR        AL,#0x3000            ; |164| 
        MOVW      DP,#_adcregs+3
        MOV       @_adcregs+3,AL        ; |164| 
        NOP
        NOP
        AND       AL,*+XAR4[4],#0xfff0  ; |165| 
        MOVW      DP,#_adcregs+4
        ORB       AL,#0x04              ; |165| 
        MOV       @_adcregs+4,AL        ; |165| 
        NOP
        MOVW      DP,#_adcregs+4
        AND       AL,@_adcregs+4,#0xff1f ; |166| 
        ORB       AL,#0x50              ; |166| 
        MOVW      DP,#_adcregs+4
        MOV       @_adcregs+4,AL        ; |166| 
        NOP
        MOVW      DP,#_adcregs+4
        AND       AL,@_adcregs+4,#0xf0ff ; |167| 
        OR        AL,#0x0600            ; |167| 
        MOVW      DP,#_adcregs+4
        MOV       @_adcregs+4,AL        ; |167| 
        NOP
        MOVW      DP,#_adcregs+4
        AND       AL,@_adcregs+4,#0x0fff ; |168| 
        OR        AL,#0x7000            ; |168| 
        MOVW      DP,#_adcregs+4
        MOV       @_adcregs+4,AL        ; |168| 
        NOP
        NOP
        AND       AL,*+XAR4[5],#0xfff8  ; |169| 
        MOVW      DP,#_adcregs+5
        ORB       AL,#0x08              ; |169| 
        MOV       @_adcregs+5,AL        ; |169| 
        NOP
        MOVW      DP,#_adcregs+5
        AND       AL,@_adcregs+5,#0xff9f ; |170| 
        ORB       AL,#0x90              ; |170| 
        MOVW      DP,#_adcregs+5
        MOV       @_adcregs+5,AL        ; |170| 
        NOP
        MOVW      DP,#_adcregs+5
        AND       AL,@_adcregs+5,#0xf8ff ; |171| 
        OR        AL,#0x0a00            ; |171| 
        MOVW      DP,#_adcregs+5
        MOV       @_adcregs+5,AL        ; |171| 
        NOP
        MOVW      DP,#_adcregs+5
        AND       AL,@_adcregs+5,#0x0fff ; |172| 
        OR        AL,#0xb000            ; |172| 
        MOVW      DP,#_adcregs+5
        MOV       @_adcregs+5,AL        ; |172| 
        NOP
        NOP
        AND       AL,*+XAR4[6],#0xfffc  ; |173| 
        MOVW      DP,#_adcregs+6
        ORB       AL,#0x0c              ; |173| 
        MOV       @_adcregs+6,AL        ; |173| 
        MOVL      XAR5,#181818          ; |200| 
        MOVW      DP,#_adcregs+6
        AND       AL,@_adcregs+6,#0xffdf ; |174| 
        ORB       AL,#0xd0              ; |174| 
        MOVW      DP,#_adcregs+6
        MOV       @_adcregs+6,AL        ; |174| 
        MOVB      XAR0,#0
        MOVW      DP,#_adcregs+6
        AND       AL,@_adcregs+6,#0xfeff ; |175| 
        OR        AL,#0x0e00            ; |175| 
        MOVW      DP,#_adcregs+6
        MOV       @_adcregs+6,AL        ; |175| 
        MOVW      DP,#_adcregs+6
        OR        @_adcregs+6,#0xf000   ; |176| 
        MOVW      DP,#_adcregs+2
        MOV       @_adcregs+2,#15       ; |178| 
        MOVW      DP,#_adcregs
        OR        *+XAR4[1],#0x0800     ; |180| 
        OR        @_adcregs,#0x0040     ; |181| 
        MOVW      DP,#_adcregs+1
        OR        @_adcregs+1,#0x4000   ; |184| 
        MOVW      DP,#_adcregs+1
	.dwpsn	"adc.c",187,0
        OR        @_adcregs+1,#0x2000   ; |185| 
L5:    
DW$L$_InitADC$6$B:
	.dwpsn	"adc.c",188,0
        MOVL      XAR4,#_inputs+114     ; |189| 
        MOV       *+XAR4[AR0],#4095     ; |189| 
        MOVU      ACC,AR0
        MOVL      XAR4,#_adcdata+2      ; |190| 
        MOV       *+XAR4[AR0],#0        ; |190| 
        MOVL      XAR4,#_adcdata+16     ; |191| 
        MOV       *+XAR4[AR0],#800      ; |191| 
        MOVL      XAR4,#_adcdata+45     ; |193| 
        MOV       *+XAR4[AR0],#1        ; |193| 
        LSL       ACC,1                 ; |200| 
        MOVL      XAR4,#_inputs+1       ; |194| 
        MOV       *+XAR4[AR0],#0        ; |194| 
        MOVL      XAR4,#_timers+10      ; |195| 
        MOV       *+XAR4[AR0],#1000     ; |195| 
        MOVL      XAR4,#_timers+24      ; |196| 
        MOV       *+XAR4[AR0],#0        ; |196| 
        MOVL      XAR4,#_inputs+184     ; |198| 
        MOV       *+XAR4[AR0],#0        ; |198| 
        MOVL      XAR4,#_inputs+128     ; |200| 
        ADDL      XAR4,ACC
        MOVL      *+XAR4[0],XAR5        ; |200| 
        MOVL      XAR4,#_inputs+156     ; |201| 
        ADDL      XAR4,ACC
        MOVL      *+XAR4[0],XAR5        ; |201| 
        MOVL      XAR4,#_inputs+15      ; |202| 
        MOV       *+XAR4[AR0],#0        ; |202| 
        MOVL      XAR4,#_rpmdata+5      ; |203| 
        MOV       *+XAR4[AR0],#0        ; |203| 
        ADDB      XAR0,#1               ; |187| 
        MOV       AL,AR0                ; |187| 
        CMPB      AL,#14                ; |187| 
	.dwpsn	"adc.c",204,0
        BF        L5,LO                 ; |187| 
        ; branchcc occurs ; |187| 
DW$L$_InitADC$6$E:
        MOVW      DP,#_counter
        MOV       @_counter,#0          ; |208| 
        MOVW      DP,#_adcdata+87
        MOV       @_adcdata+87,#0       ; |209| 
        MOVW      DP,#_rpmdata+2
        MOV       @_rpmdata+2,#0        ; |210| 
        MOVW      DP,#_rpmdata+3
        MOV       @_rpmdata+3,#0        ; |211| 
        MOVW      DP,#_rpmdata+4
        SPM       #0
        MOV       @_rpmdata+4,#0        ; |212| 
        MOVW      DP,#_settings+13
        MOV       @_settings+13,#0      ; |214| 
        MOVW      DP,#_settings+16
        MOV       @_settings+16,#0      ; |215| 
        MOVW      DP,#_settings+31
        MOV       @_settings+31,#0      ; |216| 
        MOVW      DP,#_settings+32
        MOV       @_settings+32,#0      ; |217| 
        MOVW      DP,#_motion+7
        MOV       @_motion+7,#0         ; |219| 
        MOVW      DP,#_motion+4
        MOV       @_motion+4,#-1        ; |220| 
        MOVW      DP,#_motion
        MOV       @_motion,#0           ; |221| 
        MOVW      DP,#_motion+1
        MOV       @_motion+1,#0         ; |222| 
        MOVW      DP,#_motion+6
        MOV       @_motion+6,#0         ; |223| 
        MOVW      DP,#_motion+8
        MOV       @_motion+8,#0         ; |224| 
        MOVW      DP,#_timers+54
        MOV       @_timers+54,#4000     ; |225| 
        MOVW      DP,#_slowdownblipstate
        MOV       @_slowdownblipstate,#0 ; |227| 
        LCR       #_SetProximityScalingValue ; |232| 
        ; call occurs [#_SetProximityScalingValue] ; |232| 
	.dwpsn	"adc.c",234,1
        LRETR
        ; return occurs

DW$115	.dwtag  DW_TAG_loop
	.dwattr DW$115, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L5:1:1471518965")
	.dwattr DW$115, DW_AT_begin_file("adc.c")
	.dwattr DW$115, DW_AT_begin_line(0xbb)
	.dwattr DW$115, DW_AT_end_line(0xcc)
DW$116	.dwtag  DW_TAG_loop_range
	.dwattr DW$116, DW_AT_low_pc(DW$L$_InitADC$6$B)
	.dwattr DW$116, DW_AT_high_pc(DW$L$_InitADC$6$E)
	.dwendtag DW$115


DW$117	.dwtag  DW_TAG_loop
	.dwattr DW$117, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L3:1:1471518965")
	.dwattr DW$117, DW_AT_begin_file("adc.c")
	.dwattr DW$117, DW_AT_begin_line(0x9c)
	.dwattr DW$117, DW_AT_end_line(0x9c)
DW$118	.dwtag  DW_TAG_loop_range
	.dwattr DW$118, DW_AT_low_pc(DW$L$_InitADC$4$B)
	.dwattr DW$118, DW_AT_high_pc(DW$L$_InitADC$4$E)
	.dwendtag DW$117


DW$119	.dwtag  DW_TAG_loop
	.dwattr DW$119, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L1:1:1471518965")
	.dwattr DW$119, DW_AT_begin_file("adc.c")
	.dwattr DW$119, DW_AT_begin_line(0x99)
	.dwattr DW$119, DW_AT_end_line(0x99)
DW$120	.dwtag  DW_TAG_loop_range
	.dwattr DW$120, DW_AT_low_pc(DW$L$_InitADC$2$B)
	.dwattr DW$120, DW_AT_high_pc(DW$L$_InitADC$2$E)
	.dwendtag DW$119

	.dwattr DW$114, DW_AT_end_file("adc.c")
	.dwattr DW$114, DW_AT_end_line(0xea)
	.dwattr DW$114, DW_AT_end_column(0x01)
	.dwendtag DW$114

	.sect	".text"
	.global	_SlaveDefaultNotSet

DW$121	.dwtag  DW_TAG_subprogram, DW_AT_name("SlaveDefaultNotSet"), DW_AT_symbol_name("_SlaveDefaultNotSet")
	.dwattr DW$121, DW_AT_low_pc(_SlaveDefaultNotSet)
	.dwattr DW$121, DW_AT_high_pc(0x00)
	.dwattr DW$121, DW_AT_begin_file("adc.c")
	.dwattr DW$121, DW_AT_begin_line(0xf0)
	.dwattr DW$121, DW_AT_begin_column(0x06)
	.dwattr DW$121, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$121, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",241,1

;***************************************************************
;* FNAME: _SlaveDefaultNotSet           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SlaveDefaultNotSet:
	.dwpsn	"adc.c",243,0
        MOVB      XAR6,#0
L6:    
DW$L$_SlaveDefaultNotSet$2$B:
	.dwpsn	"adc.c",244,0
        MOV       T,AR6
        MOVL      XAR4,#_sensor         ; |245| 
        MPYB      ACC,T,#18             ; |245| 
        ADDL      XAR4,ACC
        MOV       AL,AR6                ; |246| 
        ADDB      AL,#1                 ; |243| 
        MOV       *+XAR4[5],#32767      ; |245| 
        MOVZ      AR6,AL                ; |243| 
        CMPB      AL,#14                ; |243| 
        MOV       *+XAR4[4],#32767      ; |246| 
	.dwpsn	"adc.c",247,0
        BF        L6,LT                 ; |243| 
        ; branchcc occurs ; |243| 
DW$L$_SlaveDefaultNotSet$2$E:
	.dwpsn	"adc.c",249,1
        LRETR
        ; return occurs

DW$122	.dwtag  DW_TAG_loop
	.dwattr DW$122, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L6:1:1471518965")
	.dwattr DW$122, DW_AT_begin_file("adc.c")
	.dwattr DW$122, DW_AT_begin_line(0xf3)
	.dwattr DW$122, DW_AT_end_line(0xf7)
DW$123	.dwtag  DW_TAG_loop_range
	.dwattr DW$123, DW_AT_low_pc(DW$L$_SlaveDefaultNotSet$2$B)
	.dwattr DW$123, DW_AT_high_pc(DW$L$_SlaveDefaultNotSet$2$E)
	.dwendtag DW$122

	.dwattr DW$121, DW_AT_end_file("adc.c")
	.dwattr DW$121, DW_AT_end_line(0xf9)
	.dwattr DW$121, DW_AT_end_column(0x01)
	.dwendtag DW$121

	.sect	".text"
	.global	_IntADCIsr

DW$124	.dwtag  DW_TAG_subprogram, DW_AT_name("IntADCIsr"), DW_AT_symbol_name("_IntADCIsr")
	.dwattr DW$124, DW_AT_low_pc(_IntADCIsr)
	.dwattr DW$124, DW_AT_high_pc(0x00)
	.dwattr DW$124, DW_AT_begin_file("adc.c")
	.dwattr DW$124, DW_AT_begin_line(0xfe)
	.dwattr DW$124, DW_AT_begin_column(0x10)
	.dwattr DW$124, DW_AT_TI_interrupt(0x01)
	.dwattr DW$124, DW_AT_frame_base[DW_OP_breg20 -20]
	.dwattr DW$124, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",255,1

;***************************************************************
;* FNAME: _IntADCIsr                    FR SIZE:  18           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto, 16 SOE     *
;***************************************************************

_IntADCIsr:
        ASP
        PUSH      AR1H:AR0H
        MOVL      *SP++,XAR2
        SPM       0
        MOVL      *SP++,XAR3
        MOVL      *SP++,XAR4
        MOVL      *SP++,XAR5
        MOVL      *SP++,XAR6
        MOVL      *SP++,XAR7
        MOVL      *SP++,XT
        ADDB      SP,#2
        CLRC      PAGE0,OVM
        CLRC      AMODE
        MOVW      DP,#_adcregs+25
        MOV       @_adcregs+25,#16      ; |268| 
        NOP
        MOVW      DP,#_adcregs+22
        MOV       AL,@_adcregs+22       ; |270| 
        MOVW      DP,#_adcdata
        MOV       @_adcdata,AL          ; |270| 
        NOP
        MOVW      DP,#_adcregs+23
        MOV       AL,@_adcregs+23       ; |271| 
        MOVW      DP,#_adcdata+1
        MOV       @_adcdata+1,AL        ; |271| 
        MOVW      DP,#_allsensors+42
        TBIT      @_allsensors+42,#0    ; |274| 
        BF        L8,TC                 ; |274| 
        ; branchcc occurs ; |274| 
        MOVW      DP,#_settings+22
        DEC       @_settings+22         ; |277| 
        MOVW      DP,#_settings+22
        MOV       AL,@_settings+22      ; |278| 
        CMPB      AL,#12                ; |278| 
        BF        L7,HI                 ; |278| 
        ; branchcc occurs ; |278| 
        MOVW      DP,#_slowdownblipstate
        CMPB      AL,#0                 ; |279| 
        MOV       @_slowdownblipstate,#1 ; |279| 
        BF        L9,EQ                 ; |279| 
        ; branchcc occurs ; |279| 
        BF        L10,UNC               ; |279| 
        ; branch occurs ; |279| 
L7:    
        MOVW      DP,#_slowdownblipstate
        MOV       @_slowdownblipstate,#0 ; |278| 
L8:    
        MOVW      DP,#_settings+22
        MOV       AL,@_settings+22      ; |282| 
        BF        L10,NEQ               ; |282| 
        ; branchcc occurs ; |282| 
L9:    
        MOVW      DP,#_settings+22
        MOV       @_settings+22,#15000  ; |282| 
L10:    
        MOVW      DP,#_slowdownblipstate
        MOV       AL,@_slowdownblipstate ; |283| 
        MOVW      DP,#_settings+23
        CMP       AL,@_settings+23      ; |283| 
        BF        L11,NEQ               ; |283| 
        ; branchcc occurs ; |283| 
        MOVW      DP,#_gpb
        AND       @_gpb,#0x7fff         ; |284| 
        BF        L12,UNC               ; |284| 
        ; branch occurs ; |284| 
L11:    
        MOVW      DP,#_gpb
        OR        @_gpb,#0x8000         ; |283| 
L12:    
        MOVW      DP,#_config+3
        MOV       ACC,@_config+3 << #4  ; |286| 
        MOVL      XAR3,#_inputs+128     ; |293| 
        MOVZ      AR2,AL                ; |286| 
        MOVW      DP,#_config+4
        MOVL      XAR4,XAR3             ; |293| 
        MOV       ACC,@_config+4 << #4  ; |287| 
        MOVZ      AR1,AL                ; |287| 
        MOVB      ACC,#1
        ADDL      ACC,*+XAR4[0]         ; |294| 
        MOVL      *XAR4++,ACC           ; |294| 
        NOP
        MOVB      ACC,#1
        ADDL      ACC,*+XAR4[0]         ; |295| 
        MOVL      *XAR4++,ACC           ; |295| 
        NOP
        MOVB      ACC,#1
        ADDL      ACC,*+XAR4[0]         ; |296| 
        MOVL      *XAR4++,ACC           ; |296| 
        NOP
        MOVB      ACC,#1
        ADDL      ACC,*+XAR4[0]         ; |297| 
        MOVL      *XAR4++,ACC           ; |297| 
        NOP
        MOVB      ACC,#1
        ADDL      ACC,*+XAR4[0]         ; |298| 
        MOVL      *XAR4++,ACC           ; |298| 
        NOP
        MOVB      ACC,#1
        ADDL      ACC,*+XAR4[0]         ; |299| 
        MOVL      *XAR4++,ACC           ; |299| 
        NOP
        MOVB      ACC,#1
        ADDL      ACC,*+XAR4[0]         ; |300| 
        MOVL      *XAR4++,ACC           ; |300| 
        NOP
        MOVB      ACC,#1
        ADDL      ACC,*+XAR4[0]         ; |301| 
        MOVL      *XAR4++,ACC           ; |301| 
        NOP
        MOVB      ACC,#1
        ADDL      ACC,*+XAR4[0]         ; |302| 
        MOVL      *XAR4++,ACC           ; |302| 
        NOP
        MOVB      ACC,#1
        ADDL      ACC,*+XAR4[0]         ; |303| 
        MOVL      *XAR4++,ACC           ; |303| 
        NOP
        MOVB      ACC,#1
        ADDL      ACC,*+XAR4[0]         ; |304| 
        MOVL      *XAR4++,ACC           ; |304| 
        NOP
        MOVB      ACC,#1
        ADDL      ACC,*+XAR4[0]         ; |305| 
        MOVL      *XAR4++,ACC           ; |305| 
        MOVW      DP,#_loopcheck+14
        MOVB      ACC,#1
        ADDL      ACC,*+XAR4[0]         ; |306| 
        MOVL      *XAR4++,ACC           ; |306| 
        MOVB      ACC,#1
        ADDL      *+XAR4[0],ACC         ; |307| 
        MOV       ACC,#32512 << 15
        MOVL      *-SP[2],ACC           ; |311| 
        MOVL      ACC,@_loopcheck+14    ; |311| 
        LCR       #FS$$ADD              ; |311| 
        ; call occurs [#FS$$ADD] ; |311| 
        MOVW      DP,#_loopcheck+14
        MOVL      XAR4,#_inputs+1       ; |313| 
        MOVL      @_loopcheck+14,ACC    ; |311| 
        MOV       AL,*+XAR4[0]          ; |313| 
        BF        L14,NEQ               ; |313| 
        ; branchcc occurs ; |313| 
        MOV       AL,AR2
        MOVW      DP,#_adcregs+15
        CMP       AL,@_adcregs+15       ; |315| 
        BF        L14,HIS               ; |315| 
        ; branchcc occurs ; |315| 
        MOVL      XAR5,#_adcdata+2      ; |317| 
        MOVW      DP,#_adcregs+15
        MOV       AL,*+XAR5[0]          ; |317| 
        CMP       AL,@_adcregs+15       ; |317| 
        BF        L13,LO                ; |317| 
        ; branchcc occurs ; |317| 
        MOV       AL,*+XAR5[0]          ; |318| 
        MOVW      DP,#_adcregs+15
        SUB       AL,AR1                ; |318| 
        CMP       AL,@_adcregs+15       ; |318| 
        BF        L14,LOS               ; |318| 
        ; branchcc occurs ; |318| 
        MOV       *+XAR4[0],#1          ; |320| 
        NOP
        MOVW      DP,#_inputs+156
        MOVL      ACC,*+XAR3[0]         ; |321| 
        MOVL      @_inputs+156,ACC      ; |321| 
        MOVB      ACC,#0
        MOVW      DP,#_inputs+15
        MOVL      *+XAR3[0],ACC         ; |322| 
        MOV       @_inputs+15,#1        ; |323| 
        NOP
        NOP
        MOV       AL,*+XAR4[1]          ; |323| 
        BF        L15,EQ                ; |323| 
        ; branchcc occurs ; |323| 
        BF        L17,UNC               ; |323| 
        ; branch occurs ; |323| 
L13:    
        MOVW      DP,#_adcregs+15
        MOV       AL,@_adcregs+15       ; |317| 
        MOVW      DP,#_adcdata+2
        MOV       @_adcdata+2,AL        ; |317| 
        NOP
L14:    
        MOVW      DP,#_inputs+2
        MOV       AL,@_inputs+2         ; |328| 
        BF        L17,NEQ               ; |328| 
        ; branchcc occurs ; |328| 
L15:    
        MOV       AL,AR2
        MOVW      DP,#_adcregs+14
        CMP       AL,@_adcregs+14       ; |330| 
        BF        L17,HIS               ; |330| 
        ; branchcc occurs ; |330| 
        MOVL      XAR4,#_adcdata+2      ; |332| 
        MOVW      DP,#_adcregs+14
        MOV       AL,*+XAR4[1]          ; |332| 
        CMP       AL,@_adcregs+14       ; |332| 
        BF        L16,LO                ; |332| 
        ; branchcc occurs ; |332| 
        MOV       AL,*+XAR4[1]          ; |333| 
        MOVW      DP,#_adcregs+14
        SUB       AL,AR1                ; |333| 
        CMP       AL,@_adcregs+14       ; |333| 
        BF        L17,LOS               ; |333| 
        ; branchcc occurs ; |333| 
        MOVL      XAR5,#_inputs+1       ; |335| 
        MOV       *+XAR5[1],#1          ; |335| 
        MOVL      XAR4,#_inputs+128     ; |336| 
        MOVW      DP,#_inputs+158
        MOVL      ACC,*+XAR4[2]         ; |336| 
        MOVL      @_inputs+158,ACC      ; |336| 
        MOVB      ACC,#0
        MOVW      DP,#_inputs+16
        MOVL      *+XAR4[2],ACC         ; |337| 
        MOV       @_inputs+16,#1        ; |338| 
        NOP
        NOP
        MOV       AL,*+XAR5[2]          ; |338| 
        BF        L18,EQ                ; |338| 
        ; branchcc occurs ; |338| 
        BF        L20,UNC               ; |338| 
        ; branch occurs ; |338| 
L16:    
        MOVW      DP,#_adcregs+14
        MOV       AL,@_adcregs+14       ; |332| 
        MOVW      DP,#_adcdata+3
        MOV       @_adcdata+3,AL        ; |332| 
        NOP
L17:    
        MOVW      DP,#_inputs+3
        MOV       AL,@_inputs+3         ; |342| 
        BF        L20,NEQ               ; |342| 
        ; branchcc occurs ; |342| 
L18:    
        MOV       AL,AR2
        MOVW      DP,#_adcregs+13
        CMP       AL,@_adcregs+13       ; |344| 
        BF        L20,HIS               ; |344| 
        ; branchcc occurs ; |344| 
        MOVL      XAR4,#_adcdata+2      ; |346| 
        MOVW      DP,#_adcregs+13
        MOV       AL,*+XAR4[2]          ; |346| 
        CMP       AL,@_adcregs+13       ; |346| 
        BF        L19,LO                ; |346| 
        ; branchcc occurs ; |346| 
        MOV       AL,*+XAR4[2]          ; |347| 
        MOVW      DP,#_adcregs+13
        SUB       AL,AR1                ; |347| 
        CMP       AL,@_adcregs+13       ; |347| 
        BF        L20,LOS               ; |347| 
        ; branchcc occurs ; |347| 
        MOVL      XAR5,#_inputs+1       ; |349| 
        MOV       *+XAR5[2],#1          ; |349| 
        MOVL      XAR4,#_inputs+128     ; |350| 
        MOVW      DP,#_inputs+160
        MOVL      ACC,*+XAR4[4]         ; |350| 
        MOVL      @_inputs+160,ACC      ; |350| 
        MOVB      ACC,#0
        MOVW      DP,#_inputs+17
        MOVL      *+XAR4[4],ACC         ; |351| 
        MOV       @_inputs+17,#1        ; |352| 
        NOP
        NOP
        MOV       AL,*+XAR5[3]          ; |352| 
        BF        L21,EQ                ; |352| 
        ; branchcc occurs ; |352| 
        BF        L23,UNC               ; |352| 
        ; branch occurs ; |352| 
L19:    
        MOVW      DP,#_adcregs+13
        MOV       AL,@_adcregs+13       ; |346| 
        MOVW      DP,#_adcdata+4
        MOV       @_adcdata+4,AL        ; |346| 
        NOP
L20:    
        MOVW      DP,#_inputs+4
        MOV       AL,@_inputs+4         ; |356| 
        BF        L23,NEQ               ; |356| 
        ; branchcc occurs ; |356| 
L21:    
        MOV       AL,AR2
        MOVW      DP,#_adcregs+12
        CMP       AL,@_adcregs+12       ; |358| 
        BF        L23,HIS               ; |358| 
        ; branchcc occurs ; |358| 
        MOVL      XAR4,#_adcdata+2      ; |360| 
        MOVW      DP,#_adcregs+12
        MOV       AL,*+XAR4[3]          ; |360| 
        CMP       AL,@_adcregs+12       ; |360| 
        BF        L22,LO                ; |360| 
        ; branchcc occurs ; |360| 
        MOV       AL,*+XAR4[3]          ; |361| 
        MOVW      DP,#_adcregs+12
        SUB       AL,AR1                ; |361| 
        CMP       AL,@_adcregs+12       ; |361| 
        BF        L23,LOS               ; |361| 
        ; branchcc occurs ; |361| 
        MOVL      XAR5,#_inputs+1       ; |363| 
        MOV       *+XAR5[3],#1          ; |363| 
        MOVL      XAR4,#_inputs+128     ; |364| 
        MOVW      DP,#_inputs+162
        MOVL      ACC,*+XAR4[6]         ; |364| 
        MOVL      @_inputs+162,ACC      ; |364| 
        MOVB      ACC,#0
        MOVW      DP,#_inputs+18
        MOVL      *+XAR4[6],ACC         ; |365| 
        MOV       @_inputs+18,#1        ; |366| 
        NOP
        NOP
        MOV       AL,*+XAR5[4]          ; |366| 
        BF        L24,EQ                ; |366| 
        ; branchcc occurs ; |366| 
        BF        L26,UNC               ; |366| 
        ; branch occurs ; |366| 
L22:    
        MOVW      DP,#_adcregs+12
        MOV       AL,@_adcregs+12       ; |360| 
        MOVW      DP,#_adcdata+5
        MOV       @_adcdata+5,AL        ; |360| 
        NOP
L23:    
        MOVW      DP,#_inputs+5
        MOV       AL,@_inputs+5         ; |370| 
        BF        L26,NEQ               ; |370| 
        ; branchcc occurs ; |370| 
L24:    
        MOV       AL,AR2
        MOVW      DP,#_adcregs+11
        CMP       AL,@_adcregs+11       ; |372| 
        BF        L26,HIS               ; |372| 
        ; branchcc occurs ; |372| 
        MOVL      XAR4,#_adcdata+2      ; |374| 
        MOVW      DP,#_adcregs+11
        MOV       AL,*+XAR4[4]          ; |374| 
        CMP       AL,@_adcregs+11       ; |374| 
        BF        L25,LO                ; |374| 
        ; branchcc occurs ; |374| 
        MOV       AL,*+XAR4[4]          ; |375| 
        MOVW      DP,#_adcregs+11
        SUB       AL,AR1                ; |375| 
        CMP       AL,@_adcregs+11       ; |375| 
        BF        L26,LOS               ; |375| 
        ; branchcc occurs ; |375| 
        MOVL      XAR5,#_inputs+1       ; |377| 
        MOVB      XAR0,#8               ; |378| 
        MOV       *+XAR5[4],#1          ; |377| 
        MOVL      XAR4,#_inputs+128     ; |378| 
        MOVW      DP,#_inputs+164
        MOVL      ACC,*+XAR4[AR0]       ; |378| 
        MOVL      @_inputs+164,ACC      ; |378| 
        MOVB      ACC,#0
        MOVW      DP,#_inputs+19
        MOVL      *+XAR4[AR0],ACC       ; |379| 
        MOV       @_inputs+19,#1        ; |380| 
        NOP
        NOP
        MOV       AL,*+XAR5[5]          ; |380| 
        BF        L27,EQ                ; |380| 
        ; branchcc occurs ; |380| 
        BF        L29,UNC               ; |380| 
        ; branch occurs ; |380| 
L25:    
        MOVW      DP,#_adcregs+11
        MOV       AL,@_adcregs+11       ; |374| 
        MOVW      DP,#_adcdata+6
        MOV       @_adcdata+6,AL        ; |374| 
        NOP
L26:    
        MOVW      DP,#_inputs+6
        MOV       AL,@_inputs+6         ; |384| 
        BF        L29,NEQ               ; |384| 
        ; branchcc occurs ; |384| 
L27:    
        MOV       AL,AR2
        MOVW      DP,#_adcregs+10
        CMP       AL,@_adcregs+10       ; |386| 
        BF        L29,HIS               ; |386| 
        ; branchcc occurs ; |386| 
        MOVL      XAR4,#_adcdata+2      ; |388| 
        MOVW      DP,#_adcregs+10
        MOV       AL,*+XAR4[5]          ; |388| 
        CMP       AL,@_adcregs+10       ; |388| 
        BF        L28,LO                ; |388| 
        ; branchcc occurs ; |388| 
        MOV       AL,*+XAR4[5]          ; |389| 
        MOVW      DP,#_adcregs+10
        SUB       AL,AR1                ; |389| 
        CMP       AL,@_adcregs+10       ; |389| 
        BF        L29,LOS               ; |389| 
        ; branchcc occurs ; |389| 
        MOVL      XAR5,#_inputs+1       ; |391| 
        MOVB      XAR0,#10              ; |392| 
        MOV       *+XAR5[5],#1          ; |391| 
        MOVL      XAR4,#_inputs+128     ; |392| 
        MOVW      DP,#_inputs+166
        MOVL      ACC,*+XAR4[AR0]       ; |392| 
        MOVL      @_inputs+166,ACC      ; |392| 
        MOVB      ACC,#0
        MOVW      DP,#_inputs+20
        MOVL      *+XAR4[AR0],ACC       ; |393| 
        MOV       @_inputs+20,#1        ; |394| 
        NOP
        NOP
        MOV       AL,*+XAR5[6]          ; |394| 
        BF        L30,EQ                ; |394| 
        ; branchcc occurs ; |394| 
        BF        L32,UNC               ; |394| 
        ; branch occurs ; |394| 
L28:    
        MOVW      DP,#_adcregs+10
        MOV       AL,@_adcregs+10       ; |388| 
        MOVW      DP,#_adcdata+7
        MOV       @_adcdata+7,AL        ; |388| 
        NOP
L29:    
        MOVW      DP,#_inputs+7
        MOV       AL,@_inputs+7         ; |398| 
        BF        L32,NEQ               ; |398| 
        ; branchcc occurs ; |398| 
L30:    
        MOV       AL,AR2
        MOVW      DP,#_adcregs+9
        CMP       AL,@_adcregs+9        ; |400| 
        BF        L32,HIS               ; |400| 
        ; branchcc occurs ; |400| 
        MOVL      XAR4,#_adcdata+2      ; |402| 
        MOVW      DP,#_adcregs+9
        MOV       AL,*+XAR4[6]          ; |402| 
        CMP       AL,@_adcregs+9        ; |402| 
        BF        L31,LO                ; |402| 
        ; branchcc occurs ; |402| 
        MOV       AL,*+XAR4[6]          ; |403| 
        MOVW      DP,#_adcregs+9
        SUB       AL,AR1                ; |403| 
        CMP       AL,@_adcregs+9        ; |403| 
        BF        L32,LOS               ; |403| 
        ; branchcc occurs ; |403| 
        MOVL      XAR5,#_inputs+1       ; |405| 
        MOVB      XAR0,#12              ; |406| 
        MOV       *+XAR5[6],#1          ; |405| 
        MOVL      XAR4,#_inputs+128     ; |406| 
        MOVW      DP,#_inputs+168
        MOVL      ACC,*+XAR4[AR0]       ; |406| 
        MOVL      @_inputs+168,ACC      ; |406| 
        MOVB      ACC,#0
        MOVW      DP,#_inputs+21
        MOVL      *+XAR4[AR0],ACC       ; |407| 
        MOV       @_inputs+21,#1        ; |408| 
        NOP
        NOP
        MOV       AL,*+XAR5[7]          ; |408| 
        BF        L33,EQ                ; |408| 
        ; branchcc occurs ; |408| 
        BF        L35,UNC               ; |408| 
        ; branch occurs ; |408| 
L31:    
        MOVW      DP,#_adcregs+9
        MOV       AL,@_adcregs+9        ; |402| 
        MOVW      DP,#_adcdata+8
        MOV       @_adcdata+8,AL        ; |402| 
        NOP
L32:    
        MOVW      DP,#_inputs+8
        MOV       AL,@_inputs+8         ; |412| 
        BF        L35,NEQ               ; |412| 
        ; branchcc occurs ; |412| 
L33:    
        MOV       AL,AR2
        MOVW      DP,#_adcregs+8
        CMP       AL,@_adcregs+8        ; |414| 
        BF        L35,HIS               ; |414| 
        ; branchcc occurs ; |414| 
        MOVL      XAR4,#_adcdata+2      ; |416| 
        MOVW      DP,#_adcregs+8
        MOV       AL,*+XAR4[7]          ; |416| 
        CMP       AL,@_adcregs+8        ; |416| 
        BF        L34,LO                ; |416| 
        ; branchcc occurs ; |416| 
        MOV       AL,*+XAR4[7]          ; |417| 
        MOVW      DP,#_adcregs+8
        SUB       AL,AR1                ; |417| 
        CMP       AL,@_adcregs+8        ; |417| 
        BF        L35,LOS               ; |417| 
        ; branchcc occurs ; |417| 
        MOVL      XAR5,#_inputs+1       ; |419| 
        MOVB      XAR0,#14              ; |420| 
        MOV       *+XAR5[7],#1          ; |419| 
        MOVL      XAR4,#_inputs+128     ; |420| 
        MOVW      DP,#_inputs+170
        MOVL      ACC,*+XAR4[AR0]       ; |420| 
        MOVL      @_inputs+170,ACC      ; |420| 
        MOVB      ACC,#0
        MOVW      DP,#_inputs+22
        MOVL      *+XAR4[AR0],ACC       ; |421| 
        MOV       @_inputs+22,#1        ; |422| 
        NOP
        MOVB      XAR0,#8               ; |422| 
        MOV       AL,*+XAR5[AR0]        ; |422| 
        BF        L36,EQ                ; |422| 
        ; branchcc occurs ; |422| 
        BF        L38,UNC               ; |422| 
        ; branch occurs ; |422| 
L34:    
        MOVW      DP,#_adcregs+8
        MOV       AL,@_adcregs+8        ; |416| 
        MOVW      DP,#_adcdata+9
        MOV       @_adcdata+9,AL        ; |416| 
        NOP
L35:    
        MOVW      DP,#_inputs+9
        MOV       AL,@_inputs+9         ; |426| 
        BF        L38,NEQ               ; |426| 
        ; branchcc occurs ; |426| 
L36:    
        MOV       AL,AR2
        MOVW      DP,#_adcregs+16
        CMP       AL,@_adcregs+16       ; |428| 
        BF        L38,HIS               ; |428| 
        ; branchcc occurs ; |428| 
        MOVB      XAR0,#8               ; |430| 
        MOVL      XAR4,#_adcdata+2      ; |430| 
        MOVW      DP,#_adcregs+16
        MOV       AL,*+XAR4[AR0]        ; |430| 
        CMP       AL,@_adcregs+16       ; |430| 
        BF        L37,LO                ; |430| 
        ; branchcc occurs ; |430| 
        MOV       AL,*+XAR4[AR0]        ; |431| 
        MOVW      DP,#_adcregs+16
        SUB       AL,AR1                ; |431| 
        CMP       AL,@_adcregs+16       ; |431| 
        BF        L38,LOS               ; |431| 
        ; branchcc occurs ; |431| 
        MOVL      XAR5,#_inputs+1       ; |433| 
        MOVL      XAR4,#_inputs+128     ; |434| 
        MOV       *+XAR5[AR0],#1        ; |433| 
        MOVW      DP,#_inputs+172
        MOVB      XAR0,#16              ; |434| 
        MOVL      ACC,*+XAR4[AR0]       ; |434| 
        MOVL      @_inputs+172,ACC      ; |434| 
        MOVB      ACC,#0
        MOVW      DP,#_inputs+23
        MOVL      *+XAR4[AR0],ACC       ; |435| 
        MOV       @_inputs+23,#1        ; |436| 
        NOP
        MOVB      XAR0,#9               ; |436| 
        MOV       AL,*+XAR5[AR0]        ; |436| 
        BF        L39,EQ                ; |436| 
        ; branchcc occurs ; |436| 
        BF        L41,UNC               ; |436| 
        ; branch occurs ; |436| 
L37:    
        MOVW      DP,#_adcregs+16
        MOV       AL,@_adcregs+16       ; |430| 
        MOVW      DP,#_adcdata+10
        MOV       @_adcdata+10,AL       ; |430| 
        NOP
L38:    
        MOVW      DP,#_inputs+10
        MOV       AL,@_inputs+10        ; |440| 
        BF        L41,NEQ               ; |440| 
        ; branchcc occurs ; |440| 
L39:    
        MOV       AL,AR2
        MOVW      DP,#_adcregs+17
        CMP       AL,@_adcregs+17       ; |442| 
        BF        L41,HIS               ; |442| 
        ; branchcc occurs ; |442| 
        MOVB      XAR0,#9               ; |444| 
        MOVL      XAR4,#_adcdata+2      ; |444| 
        MOVW      DP,#_adcregs+17
        MOV       AL,*+XAR4[AR0]        ; |444| 
        CMP       AL,@_adcregs+17       ; |444| 
        BF        L40,LO                ; |444| 
        ; branchcc occurs ; |444| 
        MOV       AL,*+XAR4[AR0]        ; |445| 
        MOVW      DP,#_adcregs+17
        SUB       AL,AR1                ; |445| 
        CMP       AL,@_adcregs+17       ; |445| 
        BF        L41,LOS               ; |445| 
        ; branchcc occurs ; |445| 
        MOVL      XAR5,#_inputs+1       ; |447| 
        MOVL      XAR4,#_inputs+128     ; |448| 
        MOV       *+XAR5[AR0],#1        ; |447| 
        MOVW      DP,#_inputs+174
        MOVB      XAR0,#18              ; |448| 
        MOVL      ACC,*+XAR4[AR0]       ; |448| 
        MOVL      @_inputs+174,ACC      ; |448| 
        MOVB      ACC,#0
        MOVW      DP,#_inputs+24
        MOVL      *+XAR4[AR0],ACC       ; |449| 
        MOV       @_inputs+24,#1        ; |450| 
        NOP
        MOVB      XAR0,#10              ; |450| 
        MOV       AL,*+XAR5[AR0]        ; |450| 
        BF        L42,EQ                ; |450| 
        ; branchcc occurs ; |450| 
        BF        L44,UNC               ; |450| 
        ; branch occurs ; |450| 
L40:    
        MOVW      DP,#_adcregs+17
        MOV       AL,@_adcregs+17       ; |444| 
        MOVW      DP,#_adcdata+11
        MOV       @_adcdata+11,AL       ; |444| 
        NOP
L41:    
        MOVW      DP,#_inputs+11
        MOV       AL,@_inputs+11        ; |454| 
        BF        L44,NEQ               ; |454| 
        ; branchcc occurs ; |454| 
L42:    
        MOV       AL,AR2
        MOVW      DP,#_adcregs+18
        CMP       AL,@_adcregs+18       ; |456| 
        BF        L44,HIS               ; |456| 
        ; branchcc occurs ; |456| 
        MOVB      XAR0,#10              ; |458| 
        MOVL      XAR4,#_adcdata+2      ; |458| 
        MOVW      DP,#_adcregs+18
        MOV       AL,*+XAR4[AR0]        ; |458| 
        CMP       AL,@_adcregs+18       ; |458| 
        BF        L43,LO                ; |458| 
        ; branchcc occurs ; |458| 
        MOV       AL,*+XAR4[AR0]        ; |459| 
        MOVW      DP,#_adcregs+18
        SUB       AL,AR1                ; |459| 
        CMP       AL,@_adcregs+18       ; |459| 
        BF        L44,LOS               ; |459| 
        ; branchcc occurs ; |459| 
        MOVL      XAR5,#_inputs+1       ; |461| 
        MOVL      XAR4,#_inputs+128     ; |462| 
        MOV       *+XAR5[AR0],#1        ; |461| 
        MOVW      DP,#_inputs+176
        MOVB      XAR0,#20              ; |462| 
        MOVL      ACC,*+XAR4[AR0]       ; |462| 
        MOVL      @_inputs+176,ACC      ; |462| 
        MOVB      ACC,#0
        MOVW      DP,#_inputs+25
        MOVL      *+XAR4[AR0],ACC       ; |463| 
        MOV       @_inputs+25,#1        ; |464| 
        NOP
        MOVB      XAR0,#11              ; |464| 
        MOV       AL,*+XAR5[AR0]        ; |464| 
        BF        L45,EQ                ; |464| 
        ; branchcc occurs ; |464| 
        BF        L47,UNC               ; |464| 
        ; branch occurs ; |464| 
L43:    
        MOVW      DP,#_adcregs+18
        MOV       AL,@_adcregs+18       ; |458| 
        MOVW      DP,#_adcdata+12
        MOV       @_adcdata+12,AL       ; |458| 
        NOP
L44:    
        MOVW      DP,#_inputs+12
        MOV       AL,@_inputs+12        ; |468| 
        BF        L47,NEQ               ; |468| 
        ; branchcc occurs ; |468| 
L45:    
        MOV       AL,AR2
        MOVW      DP,#_adcregs+19
        CMP       AL,@_adcregs+19       ; |470| 
        BF        L47,HIS               ; |470| 
        ; branchcc occurs ; |470| 
        MOVB      XAR0,#11              ; |472| 
        MOVL      XAR4,#_adcdata+2      ; |472| 
        MOVW      DP,#_adcregs+19
        MOV       AL,*+XAR4[AR0]        ; |472| 
        CMP       AL,@_adcregs+19       ; |472| 
        BF        L46,LO                ; |472| 
        ; branchcc occurs ; |472| 
        MOV       AL,*+XAR4[AR0]        ; |473| 
        MOVW      DP,#_adcregs+19
        SUB       AL,AR1                ; |473| 
        CMP       AL,@_adcregs+19       ; |473| 
        BF        L47,LOS               ; |473| 
        ; branchcc occurs ; |473| 
        MOVL      XAR5,#_inputs+1       ; |475| 
        MOVL      XAR4,#_inputs+128     ; |476| 
        MOV       *+XAR5[AR0],#1        ; |475| 
        MOVW      DP,#_inputs+178
        MOVB      XAR0,#22              ; |476| 
        MOVL      ACC,*+XAR4[AR0]       ; |476| 
        MOVL      @_inputs+178,ACC      ; |476| 
        MOVB      ACC,#0
        MOVW      DP,#_inputs+26
        MOVL      *+XAR4[AR0],ACC       ; |477| 
        MOV       @_inputs+26,#1        ; |478| 
        NOP
        MOVB      XAR0,#12              ; |478| 
        MOV       AL,*+XAR5[AR0]        ; |478| 
        BF        L48,EQ                ; |478| 
        ; branchcc occurs ; |478| 
        BF        L50,UNC               ; |478| 
        ; branch occurs ; |478| 
L46:    
        MOVW      DP,#_adcregs+19
        MOV       AL,@_adcregs+19       ; |472| 
        MOVW      DP,#_adcdata+13
        MOV       @_adcdata+13,AL       ; |472| 
        NOP
L47:    
        MOVW      DP,#_inputs+13
        MOV       AL,@_inputs+13        ; |482| 
        BF        L50,NEQ               ; |482| 
        ; branchcc occurs ; |482| 
L48:    
        MOV       AL,AR2
        MOVW      DP,#_adcregs+20
        CMP       AL,@_adcregs+20       ; |484| 
        BF        L50,HIS               ; |484| 
        ; branchcc occurs ; |484| 
        MOVB      XAR0,#12              ; |486| 
        MOVL      XAR4,#_adcdata+2      ; |486| 
        MOVW      DP,#_adcregs+20
        MOV       AL,*+XAR4[AR0]        ; |486| 
        CMP       AL,@_adcregs+20       ; |486| 
        BF        L49,LO                ; |486| 
        ; branchcc occurs ; |486| 
        MOV       AL,*+XAR4[AR0]        ; |487| 
        MOVW      DP,#_adcregs+20
        SUB       AL,AR1                ; |487| 
        CMP       AL,@_adcregs+20       ; |487| 
        BF        L50,LOS               ; |487| 
        ; branchcc occurs ; |487| 
        MOVL      XAR5,#_inputs+1       ; |489| 
        MOVL      XAR4,#_inputs+128     ; |490| 
        MOV       *+XAR5[AR0],#1        ; |489| 
        MOVW      DP,#_inputs+180
        MOVB      XAR0,#24              ; |490| 
        MOVL      ACC,*+XAR4[AR0]       ; |490| 
        MOVL      @_inputs+180,ACC      ; |490| 
        MOVB      ACC,#0
        MOVW      DP,#_inputs+27
        MOVL      *+XAR4[AR0],ACC       ; |491| 
        MOV       @_inputs+27,#1        ; |492| 
        NOP
        MOVB      XAR0,#13              ; |492| 
        MOV       AL,*+XAR5[AR0]        ; |492| 
        BF        L51,EQ                ; |492| 
        ; branchcc occurs ; |492| 
        BF        L53,UNC               ; |492| 
        ; branch occurs ; |492| 
L49:    
        MOVW      DP,#_adcregs+20
        MOV       AL,@_adcregs+20       ; |486| 
        MOVW      DP,#_adcdata+14
        MOV       @_adcdata+14,AL       ; |486| 
        NOP
L50:    
        MOVW      DP,#_inputs+14
        MOV       AL,@_inputs+14        ; |496| 
        BF        L53,NEQ               ; |496| 
        ; branchcc occurs ; |496| 
L51:    
        MOV       AL,AR2
        MOVW      DP,#_adcregs+21
        CMP       AL,@_adcregs+21       ; |498| 
        BF        L53,HIS               ; |498| 
        ; branchcc occurs ; |498| 
        MOVB      XAR0,#13              ; |500| 
        MOVL      XAR4,#_adcdata+2      ; |500| 
        MOVW      DP,#_adcregs+21
        MOV       AL,*+XAR4[AR0]        ; |500| 
        CMP       AL,@_adcregs+21       ; |500| 
        BF        L52,LO                ; |500| 
        ; branchcc occurs ; |500| 
        MOV       AL,*+XAR4[AR0]        ; |501| 
        MOVW      DP,#_adcregs+21
        SUB       AL,AR1                ; |501| 
        CMP       AL,@_adcregs+21       ; |501| 
        BF        L53,LOS               ; |501| 
        ; branchcc occurs ; |501| 
        MOVW      DP,#_inputs+14
        MOVB      XAR0,#26              ; |504| 
        MOV       @_inputs+14,#1        ; |503| 
        MOVL      XAR4,#_inputs+128     ; |504| 
        MOVW      DP,#_inputs+182
        MOVL      ACC,*+XAR4[AR0]       ; |504| 
        MOVL      @_inputs+182,ACC      ; |504| 
        MOVB      ACC,#0
        MOVW      DP,#_inputs+28
        MOVL      *+XAR4[AR0],ACC       ; |505| 
        MOV       @_inputs+28,#1        ; |506| 
        BF        L53,UNC               ; |506| 
        ; branch occurs ; |506| 
L52:    
        MOVW      DP,#_adcregs+21
        MOV       AL,@_adcregs+21       ; |500| 
        MOVW      DP,#_adcdata+15
        MOV       @_adcdata+15,AL       ; |500| 
L53:    
        MOVW      DP,#_inputs
        MOV       @_inputs,#1           ; |512| 
        NOP
        SUBB      SP,#2
        MOV       AL,*(0:0x0ce1)        ; |513| 
        ORB       AL,#0x01              ; |513| 
        MOV       *(0:0x0ce1),AL        ; |513| 
        MOVL      XT,*--SP
        MOVL      XAR7,*--SP
        MOVL      XAR6,*--SP
        MOVL      XAR5,*--SP
        MOVL      XAR4,*--SP
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        POP       AR1H:AR0H
        NASP
	.dwpsn	"adc.c",514,1
        IRET
        ; return occurs
	.dwattr DW$124, DW_AT_end_file("adc.c")
	.dwattr DW$124, DW_AT_end_line(0x202)
	.dwattr DW$124, DW_AT_end_column(0x01)
	.dwendtag DW$124

	.sect	".text"
	.global	_InitScalingFactor

DW$125	.dwtag  DW_TAG_subprogram, DW_AT_name("InitScalingFactor"), DW_AT_symbol_name("_InitScalingFactor")
	.dwattr DW$125, DW_AT_low_pc(_InitScalingFactor)
	.dwattr DW$125, DW_AT_high_pc(0x00)
	.dwattr DW$125, DW_AT_begin_file("adc.c")
	.dwattr DW$125, DW_AT_begin_line(0x207)
	.dwattr DW$125, DW_AT_begin_column(0x06)
	.dwattr DW$125, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$125, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",520,1

;***************************************************************
;* FNAME: _InitScalingFactor            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_InitScalingFactor:
        MOVW      DP,#_settings+17
        MOV       AL,@_settings+17      ; |521| 
        BF        L55,NEQ               ; |521| 
        ; branchcc occurs ; |521| 
        MOVW      DP,#_safe2+8
        MOV       AL,@_safe2+8          ; |524| 
        MOVW      DP,#_config+5
        MOV       @_config+5,AL         ; |524| 
        MOVW      DP,#_safe1
        CMP       @_safe1,#4095         ; |525| 
        BF        L54,LO                ; |525| 
        ; branchcc occurs ; |525| 
        MOVW      DP,#_safe1
        MOV       @_safe1,#1000         ; |528| 
        MOVW      DP,#_safe1+1
        MOV       @_safe1+1,#500        ; |529| 
L54:    
        MOVW      DP,#_safe1
        MOV       AL,@_safe1            ; |531| 
        MOVW      DP,#_config+3
        MOV       @_config+3,AL         ; |531| 
        MOVW      DP,#_safe1+1
        MOV       AL,@_safe1+1          ; |532| 
        MOVW      DP,#_config+4
        MOV       @_config+4,AL         ; |532| 
L55:    
        LCR       #_SetProximityScalingValue ; |534| 
        ; call occurs [#_SetProximityScalingValue] ; |534| 
	.dwpsn	"adc.c",535,1
        LRETR
        ; return occurs
	.dwattr DW$125, DW_AT_end_file("adc.c")
	.dwattr DW$125, DW_AT_end_line(0x217)
	.dwattr DW$125, DW_AT_end_column(0x01)
	.dwendtag DW$125

	.sect	".text"
	.global	_DCMode

DW$126	.dwtag  DW_TAG_subprogram, DW_AT_name("DCMode"), DW_AT_symbol_name("_DCMode")
	.dwattr DW$126, DW_AT_low_pc(_DCMode)
	.dwattr DW$126, DW_AT_high_pc(0x00)
	.dwattr DW$126, DW_AT_begin_file("adc.c")
	.dwattr DW$126, DW_AT_begin_line(0x21b)
	.dwattr DW$126, DW_AT_begin_column(0x06)
	.dwattr DW$126, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$126, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",540,1

;***************************************************************
;* FNAME: _DCMode                       FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_DCMode:
;* AL    assigned to _chan
DW$127	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$127, DW_AT_type(*DW$T$11)
	.dwattr DW$127, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVW      DP,#_timers+44
        MOVZ      AR1,AL                ; |540| 
        MOVL      *SP++,XAR2
        MOV       AL,@_timers+44        ; |550| 
        ADDB      SP,#2
        BF        L60,NEQ               ; |550| 
        ; branchcc occurs ; |550| 
        MOV       AL,AR1                ; |552| 
        LCR       #_ADCChanPtr          ; |552| 
        ; call occurs [#_ADCChanPtr] ; |552| 
        MOVW      DP,#_inputs
        MOV       AL,*+XAR4[0]          ; |553| 
        MOVB      XAR5,#0
        LSR       AL,4                  ; |553| 
        MOV       @_inputs,#0           ; |554| 
	.dwpsn	"adc.c",555,0
        MOVZ      AR6,AL                ; |553| 
L56:    
DW$L$_DCMode$3$B:
	.dwpsn	"adc.c",556,0
        MOVW      DP,#_inputs
        MOV       AH,@_inputs           ; |557| 
        BF        L58,NEQ               ; |557| 
        ; branchcc occurs ; |557| 
DW$L$_DCMode$3$E:
L57:    
DW$L$_DCMode$4$B:
	.dwpsn	"adc.c",557,0
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |557| 
        MOVW      DP,#_inputs
        MOV       AH,@_inputs           ; |557| 
        BF        L57,EQ                ; |557| 
        ; branchcc occurs ; |557| 
DW$L$_DCMode$4$E:
L58:    
DW$L$_DCMode$5$B:
        MOV       AH,*+XAR4[0]          ; |558| 
        LSR       AH,4                  ; |558| 
        MOVW      DP,#_inputs
        SUB       AH,AR6                ; |558| 
        ADDB      XAR5,#1               ; |555| 
        MOV       AL,AH                 ; |558| 
        ASR       AL,1                  ; |558| 
        LSR       AL,14                 ; |558| 
        ADD       AL,AH                 ; |558| 
        ASR       AL,2                  ; |558| 
        MOV       @_inputs,#0           ; |559| 
        ADD       AR6,AL                ; |558| 
        MOV       AH,AR5                ; |555| 
        CMPB      AH,#100               ; |555| 
	.dwpsn	"adc.c",560,0
        BF        L56,LO                ; |555| 
        ; branchcc occurs ; |555| 
DW$L$_DCMode$5$E:
        MOVL      XAR4,#_inputs+100     ; |562| 
        MOVL      ACC,XAR4              ; |562| 
        ADDU      ACC,AR1               ; |562| 
        MOVL      XAR4,ACC              ; |562| 
        MOV       AL,AR6                ; |562| 
        CMP       AL,*+XAR4[0]          ; |562| 
        BF        L59,LOS               ; |562| 
        ; branchcc occurs ; |562| 
        MOV       *+XAR4[0],AR6         ; |562| 
L59:    
        LCR       #I$$TOFS              ; |563| 
        ; call occurs [#I$$TOFS] ; |563| 
        MOVL      XAR6,ACC              ; |563| 
        MOVU      ACC,AR1
        MOVL      XAR4,#_inputs+58      ; |563| 
        LSL       ACC,1                 ; |563| 
        ADDL      XAR4,ACC
        MOVL      ACC,*+XAR4[0]         ; |563| 
        MOVL      *-SP[2],ACC           ; |563| 
        MOVL      ACC,XAR6              ; |563| 
        LCR       #FS$$MPY              ; |563| 
        ; call occurs [#FS$$MPY] ; |563| 
        MOVL      XAR2,ACC              ; |563| 
        MOV       AL,#10240
        MOV       AH,#17715
        MOVL      *-SP[2],ACC           ; |566| 
        MOVL      ACC,XAR2              ; |566| 
        LCR       #FS$$SUB              ; |566| 
        ; call occurs [#FS$$SUB] ; |566| 
        MOVL      XAR2,ACC              ; |566| 
        LCR       #FS$$TOU              ; |566| 
        ; call occurs [#FS$$TOU] ; |566| 
        MOVL      XAR4,#_inputs+114     ; |566| 
        MOVW      DP,#_proximityscalingfactor
        MOV       *+XAR4[AR1],AL        ; |566| 
        MOVL      ACC,@_proximityscalingfactor ; |568| 
        MOVL      *-SP[2],ACC           ; |568| 
        MOVL      ACC,XAR2              ; |568| 
        LCR       #FS$$MPY              ; |568| 
        ; call occurs [#FS$$MPY] ; |568| 
        LCR       #FS$$TOI              ; |569| 
        ; call occurs [#FS$$TOI] ; |569| 
        MOV       AH,AL                 ; |569| 
        MOV       AL,AR1                ; |569| 
        LCR       #_SetScaledValue      ; |569| 
        ; call occurs [#_SetScaledValue] ; |569| 
        MOV       AL,AR1                ; |569| 
        CMPB      AL,#13                ; |572| 
        BF        L60,NEQ               ; |572| 
        ; branchcc occurs ; |572| 
        MOVW      DP,#_timers+44
        MOV       @_timers+44,#2        ; |572| 
L60:    
        SUBB      SP,#2
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"adc.c",575,1
        LRETR
        ; return occurs

DW$128	.dwtag  DW_TAG_loop
	.dwattr DW$128, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L56:1:1471518965")
	.dwattr DW$128, DW_AT_begin_file("adc.c")
	.dwattr DW$128, DW_AT_begin_line(0x22b)
	.dwattr DW$128, DW_AT_end_line(0x230)
DW$129	.dwtag  DW_TAG_loop_range
	.dwattr DW$129, DW_AT_low_pc(DW$L$_DCMode$3$B)
	.dwattr DW$129, DW_AT_high_pc(DW$L$_DCMode$3$E)
DW$130	.dwtag  DW_TAG_loop_range
	.dwattr DW$130, DW_AT_low_pc(DW$L$_DCMode$5$B)
	.dwattr DW$130, DW_AT_high_pc(DW$L$_DCMode$5$E)

DW$131	.dwtag  DW_TAG_loop
	.dwattr DW$131, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L57:2:1471518965")
	.dwattr DW$131, DW_AT_begin_file("adc.c")
	.dwattr DW$131, DW_AT_begin_line(0x22d)
	.dwattr DW$131, DW_AT_end_line(0x22d)
DW$132	.dwtag  DW_TAG_loop_range
	.dwattr DW$132, DW_AT_low_pc(DW$L$_DCMode$4$B)
	.dwattr DW$132, DW_AT_high_pc(DW$L$_DCMode$4$E)
	.dwendtag DW$131

	.dwendtag DW$128

	.dwattr DW$126, DW_AT_end_file("adc.c")
	.dwattr DW$126, DW_AT_end_line(0x23f)
	.dwattr DW$126, DW_AT_end_column(0x01)
	.dwendtag DW$126

	.sect	".text"
	.global	_DCModeInit

DW$133	.dwtag  DW_TAG_subprogram, DW_AT_name("DCModeInit"), DW_AT_symbol_name("_DCModeInit")
	.dwattr DW$133, DW_AT_low_pc(_DCModeInit)
	.dwattr DW$133, DW_AT_high_pc(0x00)
	.dwattr DW$133, DW_AT_begin_file("adc.c")
	.dwattr DW$133, DW_AT_begin_line(0x241)
	.dwattr DW$133, DW_AT_begin_column(0x06)
	.dwattr DW$133, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$133, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",578,1

;***************************************************************
;* FNAME: _DCModeInit                   FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_DCModeInit:
        MOVL      *SP++,XAR1
        MOVL      XAR4,#FSL1            ; |582| 
        LCR       #_DebugStringOut      ; |582| 
        ; call occurs [#_DebugStringOut] ; |582| 
        MOVW      DP,#_settings+13
        MOV       @_settings+13,#1      ; |584| 
        MOVW      DP,#_settings+16
        MOV       @_settings+16,#0      ; |585| 
	.dwpsn	"adc.c",586,0
        MOVB      XAR1,#0
L61:    
DW$L$_DCModeInit$2$B:
	.dwpsn	"adc.c",587,0
        MOV       AL,AR1                ; |589| 
        MOVL      XAR4,#_dcmodeprev     ; |588| 
        MOV       AH,#-5000             ; |589| 
        MOV       *+XAR4[AR1],#-5000    ; |588| 
        LCR       #_SetScaledValue      ; |589| 
        ; call occurs [#_SetScaledValue] ; |589| 
        MOV       AL,AR1                ; |591| 
        LCR       #_Status1Flags        ; |591| 
        ; call occurs [#_Status1Flags] ; |591| 
        ADDB      XAR1,#1               ; |586| 
        AND       *+XAR4[0],#0xfff7     ; |592| 
        MOV       AL,AR1                ; |586| 
        CMPB      AL,#28                ; |586| 
	.dwpsn	"adc.c",593,0
        BF        L61,LO                ; |586| 
        ; branchcc occurs ; |586| 
DW$L$_DCModeInit$2$E:
        MOVL      XAR4,#_inputs+100     ; |595| 
	.dwpsn	"adc.c",595,0
        MOVB      XAR1,#0
L62:    
DW$L$_DCModeInit$4$B:
        MOV       *+XAR4[AR1],#0        ; |595| 
        ADDB      XAR1,#1               ; |595| 
        MOV       AL,AR1                ; |595| 
        CMPB      AL,#14                ; |595| 
        BF        L62,LO                ; |595| 
        ; branchcc occurs ; |595| 
DW$L$_DCModeInit$4$E:
        MOVW      DP,#_timers+44
        MOVL      XAR4,#_DCModePeakReset ; |600| 
        MOV       @_timers+44,#0        ; |597| 
        MOV       *+XAR4[0],#0          ; |600| 
        MOVW      DP,#_DCModeCylinderComparison
        MOV       *+XAR4[1],#0          ; |601| 
        MOV       @_DCModeCylinderComparison,#0 ; |602| 
        MOVL      XAR4,#_DCModeInRangeOK ; |603| 
        MOV       *+XAR4[0],#0          ; |603| 
        MOV       *+XAR4[1],#0          ; |604| 
        MOVL      XAR4,#_DCModeInRangeIdeal ; |605| 
        MOVW      DP,#_timers+70
        MOV       *+XAR4[0],#0          ; |605| 
        MOV       *+XAR4[1],#0          ; |606| 
        MOV       @_timers+70,#6000     ; |609| 
        NOP
        MOVL      XAR1,*--SP
	.dwpsn	"adc.c",611,1
        LRETR
        ; return occurs

DW$134	.dwtag  DW_TAG_loop
	.dwattr DW$134, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L62:1:1471518965")
	.dwattr DW$134, DW_AT_begin_file("adc.c")
	.dwattr DW$134, DW_AT_begin_line(0x253)
	.dwattr DW$134, DW_AT_end_line(0x253)
DW$135	.dwtag  DW_TAG_loop_range
	.dwattr DW$135, DW_AT_low_pc(DW$L$_DCModeInit$4$B)
	.dwattr DW$135, DW_AT_high_pc(DW$L$_DCModeInit$4$E)
	.dwendtag DW$134


DW$136	.dwtag  DW_TAG_loop
	.dwattr DW$136, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L61:1:1471518965")
	.dwattr DW$136, DW_AT_begin_file("adc.c")
	.dwattr DW$136, DW_AT_begin_line(0x24a)
	.dwattr DW$136, DW_AT_end_line(0x251)
DW$137	.dwtag  DW_TAG_loop_range
	.dwattr DW$137, DW_AT_low_pc(DW$L$_DCModeInit$2$B)
	.dwattr DW$137, DW_AT_high_pc(DW$L$_DCModeInit$2$E)
	.dwendtag DW$136

	.dwattr DW$133, DW_AT_end_file("adc.c")
	.dwattr DW$133, DW_AT_end_line(0x263)
	.dwattr DW$133, DW_AT_end_column(0x01)
	.dwendtag DW$133

	.sect	".text"
	.global	_DCModeClear

DW$138	.dwtag  DW_TAG_subprogram, DW_AT_name("DCModeClear"), DW_AT_symbol_name("_DCModeClear")
	.dwattr DW$138, DW_AT_low_pc(_DCModeClear)
	.dwattr DW$138, DW_AT_high_pc(0x00)
	.dwattr DW$138, DW_AT_begin_file("adc.c")
	.dwattr DW$138, DW_AT_begin_line(0x266)
	.dwattr DW$138, DW_AT_begin_column(0x06)
	.dwattr DW$138, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$138, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",615,1

;***************************************************************
;* FNAME: _DCModeClear                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_DCModeClear:
        MOVL      XAR4,#FSL2            ; |617| 
        LCR       #_DebugStringOut      ; |617| 
        ; call occurs [#_DebugStringOut] ; |617| 
        MOVW      DP,#_settings+13
        MOV       @_settings+13,#0      ; |634| 
        MOVW      DP,#_settings+15
        MOV       @_settings+15,#0      ; |635| 
        MOVW      DP,#_timers+70
        MOV       @_timers+70,#0        ; |636| 
        NOP
        NOP
	.dwpsn	"adc.c",638,1
        LRETR
        ; return occurs
	.dwattr DW$138, DW_AT_end_file("adc.c")
	.dwattr DW$138, DW_AT_end_line(0x27e)
	.dwattr DW$138, DW_AT_end_column(0x01)
	.dwendtag DW$138

	.sect	".text"
	.global	_DCModeCalcs

DW$139	.dwtag  DW_TAG_subprogram, DW_AT_name("DCModeCalcs"), DW_AT_symbol_name("_DCModeCalcs")
	.dwattr DW$139, DW_AT_low_pc(_DCModeCalcs)
	.dwattr DW$139, DW_AT_high_pc(0x00)
	.dwattr DW$139, DW_AT_begin_file("adc.c")
	.dwattr DW$139, DW_AT_begin_line(0x281)
	.dwattr DW$139, DW_AT_begin_column(0x06)
	.dwattr DW$139, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$139, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",642,1

;***************************************************************
;* FNAME: _DCModeCalcs                  FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_DCModeCalcs:
        MOVW      DP,#_settings+13
        MOVL      *SP++,XAR1
        MOV       AL,@_settings+13      ; |646| 
        CMPB      AL,#1                 ; |646| 
        BF        L64,NEQ               ; |646| 
        ; branchcc occurs ; |646| 
        MOVW      DP,#_allsensors
        MOV       AL,@_allsensors       ; |648| 
        MOVB      XAR1,#0
        BF        L64,EQ                ; |648| 
        ; branchcc occurs ; |648| 
L63:    
DW$L$_DCModeCalcs$3$B:
	.dwpsn	"adc.c",649,0
        MOV       AL,AR1                ; |650| 
        LCR       #_GetScaledValue      ; |650| 
        ; call occurs [#_GetScaledValue] ; |650| 
        MOV       AH,AL                 ; |650| 
        MOV       AL,AR1                ; |651| 
        LCR       #_DCModePeakHold      ; |651| 
        ; call occurs [#_DCModePeakHold] ; |651| 
        MOVL      XAR4,#_dcmodeprev     ; |653| 
        MOV       AH,*+XAR4[AR1]        ; |653| 
        MOV       AL,AR1                ; |653| 
        LCR       #_DCModeStoreVal      ; |653| 
        ; call occurs [#_DCModeStoreVal] ; |653| 
        ADDB      XAR1,#1               ; |648| 
        MOVW      DP,#_allsensors
        MOV       AL,AR1                ; |648| 
        CMP       AL,@_allsensors       ; |648| 
	.dwpsn	"adc.c",654,0
        BF        L63,LO                ; |648| 
        ; branchcc occurs ; |648| 
DW$L$_DCModeCalcs$3$E:
L64:    
        MOVL      XAR1,*--SP
	.dwpsn	"adc.c",658,1
        LRETR
        ; return occurs

DW$140	.dwtag  DW_TAG_loop
	.dwattr DW$140, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L63:1:1471518965")
	.dwattr DW$140, DW_AT_begin_file("adc.c")
	.dwattr DW$140, DW_AT_begin_line(0x288)
	.dwattr DW$140, DW_AT_end_line(0x28e)
DW$141	.dwtag  DW_TAG_loop_range
	.dwattr DW$141, DW_AT_low_pc(DW$L$_DCModeCalcs$3$B)
	.dwattr DW$141, DW_AT_high_pc(DW$L$_DCModeCalcs$3$E)
	.dwendtag DW$140

	.dwattr DW$139, DW_AT_end_file("adc.c")
	.dwattr DW$139, DW_AT_end_line(0x292)
	.dwattr DW$139, DW_AT_end_column(0x01)
	.dwendtag DW$139

	.sect	".text"
	.global	_DCModeStoreVal

DW$142	.dwtag  DW_TAG_subprogram, DW_AT_name("DCModeStoreVal"), DW_AT_symbol_name("_DCModeStoreVal")
	.dwattr DW$142, DW_AT_low_pc(_DCModeStoreVal)
	.dwattr DW$142, DW_AT_high_pc(0x00)
	.dwattr DW$142, DW_AT_begin_file("adc.c")
	.dwattr DW$142, DW_AT_begin_line(0x297)
	.dwattr DW$142, DW_AT_begin_column(0x06)
	.dwattr DW$142, DW_AT_frame_base[DW_OP_breg20 -16]
	.dwattr DW$142, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",664,1

;***************************************************************
;* FNAME: _DCModeStoreVal               FR SIZE:  14           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  6 SOE     *
;***************************************************************

_DCModeStoreVal:
;* AL    assigned to _chan
DW$143	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$143, DW_AT_type(*DW$T$11)
	.dwattr DW$143, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _value
DW$144	.dwtag  DW_TAG_formal_parameter, DW_AT_name("value"), DW_AT_symbol_name("_value")
	.dwattr DW$144, DW_AT_type(*DW$T$10)
	.dwattr DW$144, DW_AT_location[DW_OP_reg1]
        MOVL      *SP++,XAR1
        MOVW      DP,#_settings+13
        MOVZ      AR1,AL                ; |664| 
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOV       AL,@_settings+13      ; |670| 
        ADDB      SP,#8
        CMPB      AL,#1                 ; |670| 
        MOVZ      AR3,AH                ; |664| 
        BF        L65,NEQ               ; |670| 
        ; branchcc occurs ; |670| 
        MOV       AL,AR1                ; |672| 
        LCR       #_Status1Flags        ; |672| 
        ; call occurs [#_Status1Flags] ; |672| 
        MOVL      XAR2,XAR4             ; |672| 
        MOV       AL,*+XAR2[0]          ; |674| 
        MOV       AH,AL                 ; |674| 
        LSR       AH,3                  ; |674| 
        AND       AH,AL                 ; |674| 
        ANDB      AH,#0x01              ; |674| 
        BF        L65,EQ                ; |674| 
        ; branchcc occurs ; |674| 
        MOVW      DP,#_settings+15
        MOV       AH,@_settings+15      ; |674| 
        CMPB      AH,#1                 ; |674| 
        BF        L65,NEQ               ; |674| 
        ; branchcc occurs ; |674| 
        ANDB      AL,#32                ; |674| 
        BF        L65,NEQ               ; |674| 
        ; branchcc occurs ; |674| 
        MOVL      XAR4,#_offsetA        ; |677| 
        MOVL      ACC,XAR4              ; |677| 
        ADDU      ACC,AR1               ; |677| 
        MOVL      *-SP[6],ACC           ; |677| 
        MOVL      XAR4,*-SP[6]          ; |677| 
        MOV       *+XAR4[0],AR3         ; |677| 
        MOVL      XAR4,#_stringbuffer   ; |678| 
        MOVL      *-SP[8],XAR4          ; |678| 
        MOVL      XAR4,#FSL3            ; |678| 
        MOVL      *-SP[2],XAR4          ; |678| 
        MOV       *-SP[3],AR1           ; |678| 
        MOV       *-SP[4],AR3           ; |678| 
        MOVL      XAR4,*-SP[8]          ; |678| 
        LCR       #_sprintf             ; |678| 
        ; call occurs [#_sprintf] ; |678| 
        MOVL      XAR4,*-SP[8]          ; |678| 
        LCR       #_DebugStringOut      ; |678| 
        ; call occurs [#_DebugStringOut] ; |678| 
        MOV       AL,AR1                ; |680| 
        LCR       #_WriteOffsetAtoNVMEM ; |680| 
        ; call occurs [#_WriteOffsetAtoNVMEM] ; |680| 
        MOVW      DP,#_settings+10
        MOVB      AL,#11                ; |688| 
        MOV       @_settings+10,#4      ; |681| 
        ADD       AL,AR1                ; |688| 
        LCR       #_SetBitEvent         ; |688| 
        ; call occurs [#_SetBitEvent] ; |688| 
        AND       *+XAR2[0],#0xfff7     ; |690| 
        MOV       AL,AR1                ; |691| 
        LCR       #_WriteSensorStatustoNVMEM ; |691| 
        ; call occurs [#_WriteSensorStatustoNVMEM] ; |691| 
        MOVL      XAR4,*-SP[6]          ; |694| 
        MOVL      XAR5,#_dcmodeprev     ; |694| 
        MOV       AL,*+XAR4[0]          ; |694| 
        MOV       *+XAR5[AR1],AL        ; |694| 
        MOV       AL,AR1                ; |695| 
        MOVB      AH,#0
        LCR       #_SetPreCompValue     ; |695| 
        ; call occurs [#_SetPreCompValue] ; |695| 
        MOV       T,#18                 ; |696| 
        MOVL      XAR4,#_sensor         ; |696| 
        MPYXU     ACC,T,AR1             ; |696| 
        ADDL      XAR4,ACC
        MOV       AL,#0
        MOVB      XAR0,#8               ; |697| 
        MOV       *+XAR4[7],#0          ; |696| 
        MOV       AH,#0
        MOVL      *+XAR4[AR0],ACC       ; |697| 
        MOVB      XAR0,#10              ; |698| 
        MOV       *+XAR4[AR0],#0        ; |698| 
        MOVL      XAR4,#_damagemonignore ; |699| 
        MOV       *+XAR4[AR1],#3        ; |699| 
L65:    
        SUBB      SP,#8
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"adc.c",702,1
        LRETR
        ; return occurs
	.dwattr DW$142, DW_AT_end_file("adc.c")
	.dwattr DW$142, DW_AT_end_line(0x2be)
	.dwattr DW$142, DW_AT_end_column(0x01)
	.dwendtag DW$142

	.sect	".text"
	.global	_DCModePeakHold

DW$145	.dwtag  DW_TAG_subprogram, DW_AT_name("DCModePeakHold"), DW_AT_symbol_name("_DCModePeakHold")
	.dwattr DW$145, DW_AT_low_pc(_DCModePeakHold)
	.dwattr DW$145, DW_AT_high_pc(0x00)
	.dwattr DW$145, DW_AT_begin_file("adc.c")
	.dwattr DW$145, DW_AT_begin_line(0x2c5)
	.dwattr DW$145, DW_AT_begin_column(0x06)
	.dwattr DW$145, DW_AT_frame_base[DW_OP_breg20 -12]
	.dwattr DW$145, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",710,1

;***************************************************************
;* FNAME: _DCModePeakHold               FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_DCModePeakHold:
;* AL    assigned to _chan
DW$146	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$146, DW_AT_type(*DW$T$11)
	.dwattr DW$146, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _value
DW$147	.dwtag  DW_TAG_formal_parameter, DW_AT_name("value"), DW_AT_symbol_name("_value")
	.dwattr DW$147, DW_AT_type(*DW$T$10)
	.dwattr DW$147, DW_AT_location[DW_OP_reg1]
        MOVL      *SP++,XAR1
        MOVW      DP,#_settings+13
        MOVZ      AR1,AL                ; |710| 
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOV       AL,@_settings+13      ; |715| 
        MOVZ      AR2,AH                ; |710| 
        CMPB      AL,#1                 ; |715| 
        ADDB      SP,#4
        BF        L69,NEQ               ; |715| 
        ; branchcc occurs ; |715| 
        MOVW      DP,#_settings+16
        MOV       AL,@_settings+16      ; |715| 
        BF        L69,NEQ               ; |715| 
        ; branchcc occurs ; |715| 
        MOVW      DP,#_settings+15
        MOV       AL,@_settings+15      ; |717| 
        CMPB      AL,#1                 ; |717| 
        BF        L67,NEQ               ; |717| 
        ; branchcc occurs ; |717| 
        MOVL      XAR4,#_dcmodeprev     ; |719| 
        MOVL      ACC,XAR4              ; |719| 
        ADDU      ACC,AR1               ; |719| 
        MOVL      XAR4,ACC              ; |719| 
        MOV       AL,AR2                ; |719| 
        CMP       AL,*+XAR4[0]          ; |719| 
        BF        L66,LEQ               ; |719| 
        ; branchcc occurs ; |719| 
        MOV       *+XAR4[0],AR2         ; |721| 
        MOV       AH,AR2                ; |723| 
        MOVL      XAR4,#_offsetA        ; |723| 
        SUB       AH,*+XAR4[AR1]        ; |723| 
        MOV       AL,AR1                ; |723| 
        LCR       #_SetPreCompValue     ; |723| 
        ; call occurs [#_SetPreCompValue] ; |723| 
        MOV       AL,AR1                ; |725| 
        MOV       AH,AR2                ; |725| 
        LCR       #_SetuAScaledValue    ; |725| 
        ; call occurs [#_SetuAScaledValue] ; |725| 
        MOVL      XAR3,#_stringbuffer   ; |726| 
        MOVL      XAR4,#FSL4            ; |726| 
        MOVL      *-SP[2],XAR4          ; |726| 
        MOVL      XAR4,XAR3             ; |726| 
        MOV       *-SP[3],AR1           ; |726| 
        MOV       *-SP[4],AR2           ; |726| 
        LCR       #_sprintf             ; |726| 
        ; call occurs [#_sprintf] ; |726| 
        MOVL      XAR4,XAR3             ; |726| 
        LCR       #_DebugStringOut      ; |726| 
        ; call occurs [#_DebugStringOut] ; |726| 
L66:    
        MOV       AL,AR1                ; |729| 
        LCR       #_PeakResetBitStatus  ; |729| 
        ; call occurs [#_PeakResetBitStatus] ; |729| 
        CMPB      AL,#1                 ; |729| 
        BF        L68,NEQ               ; |729| 
        ; branchcc occurs ; |729| 
        MOV       AL,AR1                ; |731| 
        MOVL      XAR4,#_dcmodeprev     ; |730| 
        MOV       AH,#-5000             ; |731| 
        MOV       *+XAR4[AR1],#-5000    ; |730| 
        LCR       #_SetScaledValue      ; |731| 
        ; call occurs [#_SetScaledValue] ; |731| 
        MOVL      XAR3,#_stringbuffer   ; |732| 
        MOVL      XAR4,#FSL5            ; |732| 
        MOVL      *-SP[2],XAR4          ; |732| 
        MOVL      XAR4,XAR3             ; |732| 
        MOV       *-SP[3],AR1           ; |732| 
        LCR       #_sprintf             ; |732| 
        ; call occurs [#_sprintf] ; |732| 
        MOVL      XAR4,XAR3             ; |732| 
        LCR       #_DebugStringOut      ; |732| 
        ; call occurs [#_DebugStringOut] ; |732| 
        MOV       AL,AR1                ; |733| 
        LCR       #_PeakResetBitClear   ; |733| 
        ; call occurs [#_PeakResetBitClear] ; |733| 
        BF        L68,UNC               ; |733| 
        ; branch occurs ; |733| 
L67:    
        MOV       AL,AR2                ; |740| 
        MOVL      XAR4,#_offsetA        ; |740| 
        SUB       AL,*+XAR4[AR1]        ; |740| 
        MOVZ      AR3,AL                ; |740| 
        MOV       AL,AR1                ; |741| 
        MOV       AH,AR3                ; |741| 
        LCR       #_SetPreCompValue     ; |741| 
        ; call occurs [#_SetPreCompValue] ; |741| 
        MOV       AL,AR1                ; |742| 
        MOV       AH,AR3                ; |742| 
        LCR       #_SetRealtimePreCompValue ; |742| 
        ; call occurs [#_SetRealtimePreCompValue] ; |742| 
        MOV       AL,AR1                ; |743| 
        MOV       AH,AR2                ; |743| 
        LCR       #_SetuAScaledValue    ; |743| 
        ; call occurs [#_SetuAScaledValue] ; |743| 
        MOVL      XAR4,#_dcmodeprev     ; |744| 
        MOV       *+XAR4[AR1],#-5000    ; |744| 
L68:    
        MOV       AL,AR2                ; |747| 
        MOVL      XAR4,#_offsetA        ; |747| 
        SUB       AL,*+XAR4[AR1]        ; |747| 
        MOVZ      AR3,AL                ; |747| 
        MOV       AL,AR1                ; |748| 
        MOV       AH,AR2                ; |748| 
        LCR       #_SetRealtimeuAScaledValue ; |748| 
        ; call occurs [#_SetRealtimeuAScaledValue] ; |748| 
        MOV       AL,AR1                ; |750| 
        MOV       AH,AR3                ; |750| 
        LCR       #_SetRealtimePreCompValue ; |750| 
        ; call occurs [#_SetRealtimePreCompValue] ; |750| 
L69:    
        SUBB      SP,#4
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"adc.c",753,1
        LRETR
        ; return occurs
	.dwattr DW$145, DW_AT_end_file("adc.c")
	.dwattr DW$145, DW_AT_end_line(0x2f1)
	.dwattr DW$145, DW_AT_end_column(0x01)
	.dwendtag DW$145

	.sect	".text"
	.global	_PeakConversion

DW$148	.dwtag  DW_TAG_subprogram, DW_AT_name("PeakConversion"), DW_AT_symbol_name("_PeakConversion")
	.dwattr DW$148, DW_AT_low_pc(_PeakConversion)
	.dwattr DW$148, DW_AT_high_pc(0x00)
	.dwattr DW$148, DW_AT_begin_file("adc.c")
	.dwattr DW$148, DW_AT_begin_line(0x2f4)
	.dwattr DW$148, DW_AT_begin_column(0x06)
	.dwattr DW$148, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$148, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",757,1

;***************************************************************
;* FNAME: _PeakConversion               FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_PeakConversion:
        MOVL      *SP++,XAR1
        MOVW      DP,#_allsensors
        MOVL      *SP++,XAR2
        MOV       AL,@_allsensors       ; |761| 
        MOVB      XAR1,#0
        BF        L71,EQ                ; |761| 
        ; branchcc occurs ; |761| 
L70:    
DW$L$_PeakConversion$2$B:
	.dwpsn	"adc.c",762,0
        MOV       AL,AR1
        LCR       #_GetScaledValue      ; |763| 
        ; call occurs [#_GetScaledValue] ; |763| 
        MOVZ      AR2,AL                ; |763| 
        MOV       AL,AR1                ; |763| 
        MOV       AH,AR2                ; |764| 
        LCR       #_SetuAScaledValue    ; |764| 
        ; call occurs [#_SetuAScaledValue] ; |764| 
        MOV       AL,AR1                ; |764| 
        MOV       AH,AR2                ; |765| 
        LCR       #_SetRealtimeuAScaledValue ; |765| 
        ; call occurs [#_SetRealtimeuAScaledValue] ; |765| 
        MOV       T,AR1                 ; |766| 
        MOVL      XAR4,#_sensor+6       ; |766| 
        MPYB      ACC,T,#18             ; |766| 
        ADDL      XAR4,ACC
        MOV       AH,*+XAR4[0]          ; |766| 
        MOV       AL,AR1                ; |765| 
        LCR       #_SetRealtimePreCompValue ; |766| 
        ; call occurs [#_SetRealtimePreCompValue] ; |766| 
        MOV       AL,AR1                ; |766| 
        ADDB      AL,#1                 ; |761| 
        MOVZ      AR1,AL                ; |761| 
        MOVW      DP,#_allsensors
        CMP       AL,@_allsensors       ; |761| 
	.dwpsn	"adc.c",767,0
        BF        L70,LO                ; |761| 
        ; branchcc occurs ; |761| 
DW$L$_PeakConversion$2$E:
L71:    
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"adc.c",768,1
        LRETR
        ; return occurs

DW$149	.dwtag  DW_TAG_loop
	.dwattr DW$149, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L70:1:1471518965")
	.dwattr DW$149, DW_AT_begin_file("adc.c")
	.dwattr DW$149, DW_AT_begin_line(0x2f9)
	.dwattr DW$149, DW_AT_end_line(0x2ff)
DW$150	.dwtag  DW_TAG_loop_range
	.dwattr DW$150, DW_AT_low_pc(DW$L$_PeakConversion$2$B)
	.dwattr DW$150, DW_AT_high_pc(DW$L$_PeakConversion$2$E)
	.dwendtag DW$149

	.dwattr DW$148, DW_AT_end_file("adc.c")
	.dwattr DW$148, DW_AT_end_line(0x300)
	.dwattr DW$148, DW_AT_end_column(0x01)
	.dwendtag DW$148

	.sect	".text"
	.global	_AnalogueInputScaleAllChannels

DW$151	.dwtag  DW_TAG_subprogram, DW_AT_name("AnalogueInputScaleAllChannels"), DW_AT_symbol_name("_AnalogueInputScaleAllChannels")
	.dwattr DW$151, DW_AT_low_pc(_AnalogueInputScaleAllChannels)
	.dwattr DW$151, DW_AT_high_pc(0x00)
	.dwattr DW$151, DW_AT_begin_file("adc.c")
	.dwattr DW$151, DW_AT_begin_line(0x304)
	.dwattr DW$151, DW_AT_begin_column(0x06)
	.dwattr DW$151, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$151, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",773,1

;***************************************************************
;* FNAME: _AnalogueInputScaleAllChannels FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_AnalogueInputScaleAllChannels:
        MOVL      *SP++,XAR1
        MOVB      AL,#0
        LCR       #_GetModalRPM         ; |778| 
        ; call occurs [#_GetModalRPM] ; |778| 
        MOVZ      AR1,AL                ; |778| 
        LCR       #_DCModeAuto          ; |779| 
        ; call occurs [#_DCModeAuto] ; |779| 
        MOVW      DP,#_settings+13
        MOV       AL,@_settings+13      ; |780| 
        CMPB      AL,#1                 ; |780| 
        BF        L73,NEQ               ; |780| 
        ; branchcc occurs ; |780| 
        MOV       AL,AR1
        CMPB      AL,#12                ; |780| 
        BF        L73,HIS               ; |780| 
        ; branchcc occurs ; |780| 
        MOVW      DP,#_allsensors+1
        MOV       AL,@_allsensors+1     ; |782| 
        MOVW      DP,#_dcChan
        CMP       AL,@_dcChan           ; |782| 
        BF        L72,HI                ; |782| 
        ; branchcc occurs ; |782| 
        MOVW      DP,#_dcChan
        MOV       @_dcChan,#0           ; |782| 
L72:    
        MOVW      DP,#_dcChan
        MOV       AL,@_dcChan           ; |783| 
        LCR       #_DCMode              ; |783| 
        ; call occurs [#_DCMode] ; |783| 
        MOVW      DP,#_dcChan
        INC       @_dcChan              ; |784| 
L73:    
        MOVW      DP,#_settings+17
        MOV       AL,@_settings+17      ; |800| 
        CMPB      AL,#1                 ; |800| 
        BF        L74,NEQ               ; |800| 
        ; branchcc occurs ; |800| 
        MOVW      DP,#_settings+13
        MOV       AL,@_settings+13      ; |800| 
        CMPB      AL,#1                 ; |800| 
        BF        L74,NEQ               ; |800| 
        ; branchcc occurs ; |800| 
        MOVW      DP,#_timers+70
        MOV       AL,@_timers+70        ; |800| 
        BF        L74,NEQ               ; |800| 
        ; branchcc occurs ; |800| 
        LCR       #_DCModeClear         ; |801| 
        ; call occurs [#_DCModeClear] ; |801| 
L74:    
        MOVW      DP,#_settings+13
        MOV       AL,@_settings+13      ; |805| 
        MOVW      DP,#_settings+31
        OR        AL,@_settings+31      ; |805| 
        BF        L75,NEQ               ; |805| 
        ; branchcc occurs ; |805| 
        LCR       #_PulseCounterCheck   ; |807| 
        ; call occurs [#_PulseCounterCheck] ; |807| 
L75:    
        LCR       #_ReadAnalog          ; |814| 
        ; call occurs [#_ReadAnalog] ; |814| 
        MOVW      DP,#_settings+13
        MOV       AL,@_settings+13      ; |819| 
        CMPB      AL,#1                 ; |819| 
        BF        L76,NEQ               ; |819| 
        ; branchcc occurs ; |819| 
        LCR       #_DCModeCalcs         ; |819| 
        ; call occurs [#_DCModeCalcs] ; |819| 
L76:    
        LCR       #_DCModeChecks        ; |820| 
        ; call occurs [#_DCModeChecks] ; |820| 
        MOVW      DP,#_settings+13
        MOV       AL,@_settings+13      ; |824| 
        BF        L77,NEQ               ; |824| 
        ; branchcc occurs ; |824| 
        LCR       #_PeakConversion      ; |824| 
        ; call occurs [#_PeakConversion] ; |824| 
L77:    
        MOVW      DP,#_settings+17
        MOV       AL,@_settings+17      ; |827| 
        CMPB      AL,#1                 ; |827| 
        BF        L78,NEQ               ; |827| 
        ; branchcc occurs ; |827| 
        MOVW      DP,#_settings+31
        MOV       AL,@_settings+31      ; |827| 
        BF        L78,NEQ               ; |827| 
        ; branchcc occurs ; |827| 
        LCR       #_CheckForwardAstern  ; |829| 
        ; call occurs [#_CheckForwardAstern] ; |829| 
        BF        L79,UNC               ; |830| 
        ; branch occurs ; |830| 
L78:    
        MOVW      DP,#_motion+4
        MOV       @_motion+4,#0         ; |831| 
L79:    
        MOVL      XAR1,*--SP
	.dwpsn	"adc.c",832,1
        LRETR
        ; return occurs
	.dwattr DW$151, DW_AT_end_file("adc.c")
	.dwattr DW$151, DW_AT_end_line(0x340)
	.dwattr DW$151, DW_AT_end_column(0x01)
	.dwendtag DW$151

	.sect	".text"
	.global	_SetProximityScalingValue

DW$152	.dwtag  DW_TAG_subprogram, DW_AT_name("SetProximityScalingValue"), DW_AT_symbol_name("_SetProximityScalingValue")
	.dwattr DW$152, DW_AT_low_pc(_SetProximityScalingValue)
	.dwattr DW$152, DW_AT_high_pc(0x00)
	.dwattr DW$152, DW_AT_begin_file("adc.c")
	.dwattr DW$152, DW_AT_begin_line(0x347)
	.dwattr DW$152, DW_AT_begin_column(0x06)
	.dwattr DW$152, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$152, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",840,1

;***************************************************************
;* FNAME: _SetProximityScalingValue     FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SetProximityScalingValue:
        MOVW      DP,#_config+5
        ADDB      SP,#2
        MOV       AL,@_config+5         ; |841| 
        LCR       #U$$TOFS              ; |841| 
        ; call occurs [#U$$TOFS] ; |841| 
        MOVL      XAR6,ACC              ; |841| 
        MOV       AL,#52429
        MOV       AH,#17228
        MOVL      *-SP[2],ACC           ; |841| 
        MOVL      ACC,XAR6              ; |841| 
        LCR       #FS$$MPY              ; |841| 
        ; call occurs [#FS$$MPY] ; |841| 
        MOVL      *-SP[2],ACC           ; |841| 
        MOV       ACC,#32512 << 15
        LCR       #FS$$DIV              ; |841| 
        ; call occurs [#FS$$DIV] ; |841| 
        MOVL      XAR6,ACC              ; |841| 
        MOV       AL,#9216
        MOV       AH,#18804
        MOVL      *-SP[2],ACC           ; |841| 
        MOVL      ACC,XAR6              ; |841| 
        LCR       #FS$$MPY              ; |841| 
        ; call occurs [#FS$$MPY] ; |841| 
        MOVW      DP,#_proximityscalingfactor
        MOVL      @_proximityscalingfactor,ACC ; |841| 
        SUBB      SP,#2
	.dwpsn	"adc.c",842,1
        LRETR
        ; return occurs
	.dwattr DW$152, DW_AT_end_file("adc.c")
	.dwattr DW$152, DW_AT_end_line(0x34a)
	.dwattr DW$152, DW_AT_end_column(0x01)
	.dwendtag DW$152

	.sect	".text"
	.global	_ProximityScaling

DW$153	.dwtag  DW_TAG_subprogram, DW_AT_name("ProximityScaling"), DW_AT_symbol_name("_ProximityScaling")
	.dwattr DW$153, DW_AT_low_pc(_ProximityScaling)
	.dwattr DW$153, DW_AT_high_pc(0x00)
	.dwattr DW$153, DW_AT_begin_file("adc.c")
	.dwattr DW$153, DW_AT_begin_line(0x352)
	.dwattr DW$153, DW_AT_begin_column(0x06)
	.dwattr DW$153, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$153, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",851,1

;***************************************************************
;* FNAME: _ProximityScaling             FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_ProximityScaling:
;* AL    assigned to _chan
DW$154	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$154, DW_AT_type(*DW$T$11)
	.dwattr DW$154, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVW      DP,#_settings+13
        MOVZ      AR1,AL                ; |851| 
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOV       AL,@_settings+13      ; |866| 
        ADDB      SP,#2
        BF        L86,NEQ               ; |866| 
        ; branchcc occurs ; |866| 
        MOVL      XAR4,#_adcdata+45     ; |868| 
        MOVL      ACC,XAR4              ; |868| 
        ADDU      ACC,AR1               ; |868| 
        MOVL      XAR2,ACC              ; |868| 
        MOV       AL,*+XAR2[0]          ; |868| 
        CMPB      AL,#1                 ; |868| 
        BF        L80,EQ                ; |868| 
        ; branchcc occurs ; |868| 
        MOV       AL,AR1                ; |940| 
        LCR       #_ADCChanPtr          ; |940| 
        ; call occurs [#_ADCChanPtr] ; |940| 
        MOVW      DP,#_config+3
        MOV       ACC,@_config+3 << #4  ; |942| 
        CMP       AL,*+XAR4[0]          ; |942| 
        BF        L88,LOS               ; |942| 
        ; branchcc occurs ; |942| 
        MOV       *+XAR2[0],#1          ; |944| 
        BF        L87,UNC               ; |945| 
        ; branch occurs ; |945| 
L80:    
        MOV       T,#18                 ; |872| 
        MOVL      XAR4,#_sensor         ; |872| 
        MPYXU     ACC,T,AR1             ; |872| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#0          ; |872| 
        BF        L85,NTC               ; |872| 
        ; branchcc occurs ; |872| 
        MOVW      DP,#_allsensors+1
        MOV       AL,@_allsensors+1     ; |872| 
        CMP       AL,AR1                ; |872| 
        BF        L85,LOS               ; |872| 
        ; branchcc occurs ; |872| 
        AND       AH,AR1,#0x0001        ; |874| 
        MOVW      DP,#_allsensors+20
        MOVZ      AR6,AH                ; |874| 
        MOV       AH,@_allsensors+20    ; |875| 
        CMPB      AH,#1                 ; |875| 
        BF        L81,EQ                ; |875| 
        ; branchcc occurs ; |875| 
        AND       AH,AR1,#0x0001        ; |893| 
        BF        L82,NEQ               ; |893| 
        ; branchcc occurs ; |893| 
        MOVW      DP,#_motion
        MOVZ      AR0,@_motion          ; |896| 
        LSR       AL,1                  ; |896| 
        CMP       AL,AR0                ; |896| 
        BF        L82,LOS               ; |896| 
        ; branchcc occurs ; |896| 
        MOVB      AL,#1                 ; |899| 
        MOVL      XAR4,#_adcdata+73     ; |898| 
        MOVW      DP,#_motion
        ADD       AL,AR0                ; |899| 
        MOV       *+XAR4[AR0],AR1       ; |898| 
        MOV       @_motion,AL           ; |899| 
        BF        L82,UNC               ; |899| 
        ; branch occurs ; |899| 
L81:    
        MOVW      DP,#_motion+1
        MOV       AL,@_motion+1         ; |878| 
        OR        AL,AR6                ; |878| 
        BF        L82,NEQ               ; |878| 
        ; branchcc occurs ; |878| 
        MOVW      DP,#_motion
        MOVZ      AR0,@_motion          ; |883| 
        MOVL      XAR4,#_motion+2       ; |883| 
        MOVW      DP,#_motion
        MOV       *+XAR4[AR0],AR1       ; |883| 
        INC       @_motion              ; |884| 
        MOVW      DP,#_motion
        MOV       AL,@_motion           ; |886| 
        CMPB      AL,#2                 ; |886| 
        BF        L82,LO                ; |886| 
        ; branchcc occurs ; |886| 
        MOVW      DP,#_motion+1
        MOV       @_motion+1,#1         ; |886| 
L82:    
        MOVL      XAR4,#_adcdata+2      ; |904| 
        MOVL      ACC,XAR4              ; |904| 
        ADDU      ACC,AR1               ; |904| 
        MOVL      XAR4,ACC              ; |904| 
        MOVL      XAR5,#_inputs+100     ; |904| 
        MOV       AL,*+XAR4[0]          ; |904| 
        LSR       AL,4                  ; |904| 
        MOV       *+XAR5[AR1],AL        ; |904| 
        NOP
        NOP
        MOV       AL,*+XAR4[0]          ; |905| 
        LSR       AL,4                  ; |905| 
        LCR       #U$$TOFS              ; |905| 
        ; call occurs [#U$$TOFS] ; |905| 
        MOVL      XAR6,ACC              ; |905| 
        MOVU      ACC,AR1
        MOVL      XAR4,#_inputs+58      ; |905| 
        LSL       ACC,1                 ; |905| 
        ADDL      XAR4,ACC
        MOVL      ACC,*+XAR4[0]         ; |905| 
        MOVL      *-SP[2],ACC           ; |905| 
        MOVL      ACC,XAR6              ; |905| 
        LCR       #FS$$MPY              ; |905| 
        ; call occurs [#FS$$MPY] ; |905| 
        MOVL      XAR6,ACC              ; |905| 
        MOV       AL,#10240
        MOV       AH,#17715
        MOVL      *-SP[2],ACC           ; |911| 
        MOVL      ACC,XAR6              ; |911| 
        LCR       #FS$$SUB              ; |911| 
        ; call occurs [#FS$$SUB] ; |911| 
        MOVW      DP,#_proximityscalingfactor
        MOVL      XAR6,@_proximityscalingfactor ; |911| 
        MOVL      *-SP[2],XAR6          ; |911| 
        LCR       #FS$$MPY              ; |911| 
        ; call occurs [#FS$$MPY] ; |911| 
        MOVL      XAR3,ACC              ; |911| 
        MOV       AL,AR1                ; |912| 
        LCR       #_Status3Flags        ; |912| 
        ; call occurs [#_Status3Flags] ; |912| 
        MOVL      XAR2,XAR4             ; |912| 
        TBIT      *+XAR2[0],#3          ; |914| 
        BF        L83,TC                ; |914| 
        ; branchcc occurs ; |914| 
        MOVL      ACC,XAR3              ; |914| 
        LCR       #FS$$TOI              ; |914| 
        ; call occurs [#FS$$TOI] ; |914| 
        MOV       AH,AL                 ; |914| 
        MOV       AL,AR1                ; |914| 
        LCR       #_SetImmScaledValue   ; |914| 
        ; call occurs [#_SetImmScaledValue] ; |914| 
L83:    
        MOVL      XAR4,#_rpmdata+5      ; |917| 
        MOV       AL,*+XAR4[AR1]        ; |917| 
        CMPB      AL,#1                 ; |917| 
        BF        L85,NEQ               ; |917| 
        ; branchcc occurs ; |917| 
        MOVW      DP,#_settings+31
        MOV       AL,@_settings+31      ; |920| 
        BF        L84,NEQ               ; |920| 
        ; branchcc occurs ; |920| 
        TBIT      *+XAR2[0],#3          ; |920| 
        BF        L84,TC                ; |920| 
        ; branchcc occurs ; |920| 
        MOVL      ACC,XAR3              ; |922| 
        LCR       #FS$$TOI              ; |922| 
        ; call occurs [#FS$$TOI] ; |922| 
        MOV       AH,AL                 ; |922| 
        MOV       AL,AR1                ; |922| 
        LCR       #_SetScaledValue      ; |922| 
        ; call occurs [#_SetScaledValue] ; |922| 
L84:    
        MOV       AL,AR1                ; |924| 
        MOVB      AH,#0
        LCR       #_SetNoPulseFlag      ; |924| 
        ; call occurs [#_SetNoPulseFlag] ; |924| 
L85:    
        MOVL      XAR4,#_adcdata+2      ; |932| 
        MOV       *+XAR4[AR1],#0        ; |932| 
        MOVL      XAR4,#_adcdata+45     ; |933| 
        MOV       *+XAR4[AR1],#0        ; |933| 
        MOVL      XAR4,#_adcdata+59     ; |934| 
        INC       *+XAR4[AR1]           ; |934| 
        BF        L88,UNC               ; |935| 
        ; branch occurs ; |935| 
L86:    
        MOV       AL,AR1                ; |951| 
        LCR       #_ADCChanPtr          ; |951| 
        ; call occurs [#_ADCChanPtr] ; |951| 
        MOVW      DP,#_config+3
        MOV       ACC,@_config+3 << #4  ; |953| 
        CMP       AL,*+XAR4[0]          ; |953| 
        BF        L88,LOS               ; |953| 
        ; branchcc occurs ; |953| 
        MOVL      XAR4,#_adcdata+45     ; |955| 
        MOV       *+XAR4[AR1],#1        ; |955| 
L87:    
        MOVL      XAR4,#_inputs+1       ; |956| 
        MOV       *+XAR4[AR1],#0        ; |956| 
L88:    
        SUBB      SP,#2
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"adc.c",960,1
        LRETR
        ; return occurs
	.dwattr DW$153, DW_AT_end_file("adc.c")
	.dwattr DW$153, DW_AT_end_line(0x3c0)
	.dwattr DW$153, DW_AT_end_column(0x01)
	.dwendtag DW$153

	.sect	".text"
	.global	_SetuAScaledValue

DW$155	.dwtag  DW_TAG_subprogram, DW_AT_name("SetuAScaledValue"), DW_AT_symbol_name("_SetuAScaledValue")
	.dwattr DW$155, DW_AT_low_pc(_SetuAScaledValue)
	.dwattr DW$155, DW_AT_high_pc(0x00)
	.dwattr DW$155, DW_AT_begin_file("adc.c")
	.dwattr DW$155, DW_AT_begin_line(0x3c5)
	.dwattr DW$155, DW_AT_begin_column(0x06)
	.dwattr DW$155, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$155, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",966,1

;***************************************************************
;* FNAME: _SetuAScaledValue             FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_SetuAScaledValue:
;* AL    assigned to _chan
DW$156	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$156, DW_AT_type(*DW$T$10)
	.dwattr DW$156, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _valin
DW$157	.dwtag  DW_TAG_formal_parameter, DW_AT_name("valin"), DW_AT_symbol_name("_valin")
	.dwattr DW$157, DW_AT_type(*DW$T$10)
	.dwattr DW$157, DW_AT_location[DW_OP_reg1]
        MOVL      *SP++,XAR1
        MOVZ      AR1,AL                ; |966| 
        MOVL      *SP++,XAR2
        ADDB      SP,#2
        MOV       AL,AH                 ; |966| 
        LCR       #I$$TOFS              ; |972| 
        ; call occurs [#I$$TOFS] ; |972| 
        MOVW      DP,#_config+5
        MOVL      XAR2,ACC              ; |972| 
        MOV       AL,@_config+5         ; |972| 
        LCR       #U$$TOFS              ; |972| 
        ; call occurs [#U$$TOFS] ; |972| 
        MOVL      XAR6,ACC              ; |972| 
        MOV       AL,#0
        MOV       AH,#17530
        MOVL      *-SP[2],ACC           ; |972| 
        MOVL      ACC,XAR6              ; |972| 
        LCR       #FS$$DIV              ; |972| 
        ; call occurs [#FS$$DIV] ; |972| 
        MOVL      *-SP[2],ACC           ; |972| 
        MOVL      ACC,XAR2              ; |972| 
        LCR       #FS$$MPY              ; |972| 
        ; call occurs [#FS$$MPY] ; |972| 
        MOVL      XAR6,ACC              ; |972| 
        MOV       AL,#49152
        MOV       AH,#18010
        MOVL      *-SP[2],ACC           ; |975| 
        MOVL      ACC,XAR6              ; |975| 
        LCR       #FS$$ADD              ; |975| 
        ; call occurs [#FS$$ADD] ; |975| 
        LCR       #FS$$TOU              ; |975| 
        ; call occurs [#FS$$TOU] ; |975| 
        MOVZ      AR6,AL                ; |975| 
        SETC      SXM
        MOV       ACC,AR1               ; |975| 
        MOVL      XAR4,#_inputs+198     ; |975| 
        ADDL      XAR4,ACC
        SUBB      SP,#2
        MOV       *+XAR4[0],AR6         ; |975| 
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"adc.c",976,1
        LRETR
        ; return occurs
	.dwattr DW$155, DW_AT_end_file("adc.c")
	.dwattr DW$155, DW_AT_end_line(0x3d0)
	.dwattr DW$155, DW_AT_end_column(0x01)
	.dwendtag DW$155

	.sect	".text"
	.global	_GetuASCaledValue

DW$158	.dwtag  DW_TAG_subprogram, DW_AT_name("GetuASCaledValue"), DW_AT_symbol_name("_GetuASCaledValue")
	.dwattr DW$158, DW_AT_low_pc(_GetuASCaledValue)
	.dwattr DW$158, DW_AT_high_pc(0x00)
	.dwattr DW$158, DW_AT_begin_file("adc.c")
	.dwattr DW$158, DW_AT_begin_line(0x3d3)
	.dwattr DW$158, DW_AT_begin_column(0x0e)
	.dwattr DW$158, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$158, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",980,1

;***************************************************************
;* FNAME: _GetuASCaledValue             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_GetuASCaledValue:
;* AL    assigned to _chan
DW$159	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$159, DW_AT_type(*DW$T$10)
	.dwattr DW$159, DW_AT_location[DW_OP_reg0]
        SETC      SXM
        MOV       ACC,AL                ; |980| 
        MOVL      XAR4,#_inputs+198     ; |980| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |980| 
	.dwpsn	"adc.c",980,37
        LRETR
        ; return occurs
	.dwattr DW$158, DW_AT_end_file("adc.c")
	.dwattr DW$158, DW_AT_end_line(0x3d4)
	.dwattr DW$158, DW_AT_end_column(0x25)
	.dwendtag DW$158

	.sect	".text"
	.global	_PulseCounterCheck

DW$160	.dwtag  DW_TAG_subprogram, DW_AT_name("PulseCounterCheck"), DW_AT_symbol_name("_PulseCounterCheck")
	.dwattr DW$160, DW_AT_low_pc(_PulseCounterCheck)
	.dwattr DW$160, DW_AT_high_pc(0x00)
	.dwattr DW$160, DW_AT_begin_file("adc.c")
	.dwattr DW$160, DW_AT_begin_line(0x3da)
	.dwattr DW$160, DW_AT_begin_column(0x06)
	.dwattr DW$160, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$160, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",987,1

;***************************************************************
;* FNAME: _PulseCounterCheck            FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_PulseCounterCheck:
        MOVL      *SP++,XAR1
        MOVW      DP,#_allsensors+1
        MOVL      *SP++,XAR2
        MOVB      XAR1,#0
        MOVL      *SP++,XAR3
        MOVB      XAR2,#0
        MOV       AL,@_allsensors+1     ; |998| 
        MOVB      XAR3,#0
        BF        L91,EQ                ; |998| 
        ; branchcc occurs ; |998| 
L89:    
DW$L$_PulseCounterCheck$2$B:
	.dwpsn	"adc.c",999,0
        MOV       AL,AR1                ; |1001| 
        LCR       #_GetSensorEnabled    ; |1001| 
        ; call occurs [#_GetSensorEnabled] ; |1001| 
        CMPB      AL,#1                 ; |1001| 
        BF        L90,NEQ               ; |1001| 
        ; branchcc occurs ; |1001| 
DW$L$_PulseCounterCheck$2$E:
DW$L$_PulseCounterCheck$3$B:
        MOVL      XAR4,#_adcdata+59     ; |1003| 
        MOV       AL,AR2                ; |1003| 
        ADDB      XAR3,#1               ; |1002| 
        ADD       AL,*+XAR4[AR1]        ; |1003| 
        MOVZ      AR2,AL                ; |1003| 
DW$L$_PulseCounterCheck$3$E:
L90:    
DW$L$_PulseCounterCheck$4$B:
        ADDB      XAR1,#1               ; |998| 
        MOVW      DP,#_allsensors+1
        MOV       AL,AR1                ; |998| 
        CMP       AL,@_allsensors+1     ; |998| 
	.dwpsn	"adc.c",1005,0
        BF        L89,LO                ; |998| 
        ; branchcc occurs ; |998| 
DW$L$_PulseCounterCheck$4$E:
L91:    
        MOV       T,AR3                 ; |1008| 
        MPYB      ACC,T,#5              ; |1008| 
        CMP       AL,AR2                ; |1008| 
        BF        L96,HIS               ; |1008| 
        ; branchcc occurs ; |1008| 
        MOVW      DP,#_allsensors+1
        MOV       AL,@_allsensors+1     ; |1010| 
        MOVB      XAR1,#0
        BF        L96,EQ                ; |1010| 
        ; branchcc occurs ; |1010| 
L92:    
DW$L$_PulseCounterCheck$7$B:
	.dwpsn	"adc.c",1011,0
        MOV       AL,AR1                ; |1012| 
        LCR       #_GetSensorEnabled    ; |1012| 
        ; call occurs [#_GetSensorEnabled] ; |1012| 
        CMPB      AL,#1                 ; |1012| 
        BF        L93,NEQ               ; |1012| 
        ; branchcc occurs ; |1012| 
DW$L$_PulseCounterCheck$7$E:
DW$L$_PulseCounterCheck$8$B:
        MOVL      XAR4,#_adcdata+59     ; |1014| 
        MOV       AL,*+XAR4[AR1]        ; |1014| 
        BF        L95,NEQ               ; |1014| 
        ; branchcc occurs ; |1014| 
DW$L$_PulseCounterCheck$8$E:
DW$L$_PulseCounterCheck$9$B:
        MOV       AL,AR1                ; |1016| 
        LCR       #_Status3Flags        ; |1016| 
        ; call occurs [#_Status3Flags] ; |1016| 
        MOV       AL,*+XAR4[0]          ; |1018| 
        AND       AH,AL,#0x0002         ; |1018| 
        ANDB      AL,#4                 ; |1018| 
        OR        AL,AH                 ; |1018| 
        BF        L95,NEQ               ; |1018| 
        ; branchcc occurs ; |1018| 
DW$L$_PulseCounterCheck$9$E:
DW$L$_PulseCounterCheck$10$B:
        MOVB      AH,#1                 ; |1020| 
        BF        L94,UNC               ; |1020| 
        ; branch occurs ; |1020| 
DW$L$_PulseCounterCheck$10$E:
L93:    
DW$L$_PulseCounterCheck$11$B:
        MOVB      AH,#0
DW$L$_PulseCounterCheck$11$E:
L94:    
DW$L$_PulseCounterCheck$12$B:
        MOV       AL,AR1                ; |1024| 
        LCR       #_SetNoPulseFlag      ; |1024| 
        ; call occurs [#_SetNoPulseFlag] ; |1024| 
DW$L$_PulseCounterCheck$12$E:
L95:    
DW$L$_PulseCounterCheck$13$B:
        MOVL      XAR4,#_adcdata+59     ; |1025| 
        MOVW      DP,#_allsensors+1
        MOV       *+XAR4[AR1],#0        ; |1025| 
        ADDB      XAR1,#1               ; |1010| 
        MOV       AL,AR1                ; |1010| 
        CMP       AL,@_allsensors+1     ; |1010| 
	.dwpsn	"adc.c",1026,0
        BF        L92,LO                ; |1010| 
        ; branchcc occurs ; |1010| 
DW$L$_PulseCounterCheck$13$E:
L96:    
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"adc.c",1028,1
        LRETR
        ; return occurs

DW$161	.dwtag  DW_TAG_loop
	.dwattr DW$161, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L92:1:1471518965")
	.dwattr DW$161, DW_AT_begin_file("adc.c")
	.dwattr DW$161, DW_AT_begin_line(0x3f2)
	.dwattr DW$161, DW_AT_end_line(0x402)
DW$162	.dwtag  DW_TAG_loop_range
	.dwattr DW$162, DW_AT_low_pc(DW$L$_PulseCounterCheck$7$B)
	.dwattr DW$162, DW_AT_high_pc(DW$L$_PulseCounterCheck$7$E)
DW$163	.dwtag  DW_TAG_loop_range
	.dwattr DW$163, DW_AT_low_pc(DW$L$_PulseCounterCheck$10$B)
	.dwattr DW$163, DW_AT_high_pc(DW$L$_PulseCounterCheck$10$E)
DW$164	.dwtag  DW_TAG_loop_range
	.dwattr DW$164, DW_AT_low_pc(DW$L$_PulseCounterCheck$11$B)
	.dwattr DW$164, DW_AT_high_pc(DW$L$_PulseCounterCheck$11$E)
DW$165	.dwtag  DW_TAG_loop_range
	.dwattr DW$165, DW_AT_low_pc(DW$L$_PulseCounterCheck$8$B)
	.dwattr DW$165, DW_AT_high_pc(DW$L$_PulseCounterCheck$8$E)
DW$166	.dwtag  DW_TAG_loop_range
	.dwattr DW$166, DW_AT_low_pc(DW$L$_PulseCounterCheck$9$B)
	.dwattr DW$166, DW_AT_high_pc(DW$L$_PulseCounterCheck$9$E)
DW$167	.dwtag  DW_TAG_loop_range
	.dwattr DW$167, DW_AT_low_pc(DW$L$_PulseCounterCheck$12$B)
	.dwattr DW$167, DW_AT_high_pc(DW$L$_PulseCounterCheck$12$E)
DW$168	.dwtag  DW_TAG_loop_range
	.dwattr DW$168, DW_AT_low_pc(DW$L$_PulseCounterCheck$13$B)
	.dwattr DW$168, DW_AT_high_pc(DW$L$_PulseCounterCheck$13$E)
	.dwendtag DW$161


DW$169	.dwtag  DW_TAG_loop
	.dwattr DW$169, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L89:1:1471518965")
	.dwattr DW$169, DW_AT_begin_file("adc.c")
	.dwattr DW$169, DW_AT_begin_line(0x3e6)
	.dwattr DW$169, DW_AT_end_line(0x3ed)
DW$170	.dwtag  DW_TAG_loop_range
	.dwattr DW$170, DW_AT_low_pc(DW$L$_PulseCounterCheck$2$B)
	.dwattr DW$170, DW_AT_high_pc(DW$L$_PulseCounterCheck$2$E)
DW$171	.dwtag  DW_TAG_loop_range
	.dwattr DW$171, DW_AT_low_pc(DW$L$_PulseCounterCheck$3$B)
	.dwattr DW$171, DW_AT_high_pc(DW$L$_PulseCounterCheck$3$E)
DW$172	.dwtag  DW_TAG_loop_range
	.dwattr DW$172, DW_AT_low_pc(DW$L$_PulseCounterCheck$4$B)
	.dwattr DW$172, DW_AT_high_pc(DW$L$_PulseCounterCheck$4$E)
	.dwendtag DW$169

	.dwattr DW$160, DW_AT_end_file("adc.c")
	.dwattr DW$160, DW_AT_end_line(0x404)
	.dwattr DW$160, DW_AT_end_column(0x01)
	.dwendtag DW$160

	.sect	".text"
	.global	_PulseRPMCalc

DW$173	.dwtag  DW_TAG_subprogram, DW_AT_name("PulseRPMCalc"), DW_AT_symbol_name("_PulseRPMCalc")
	.dwattr DW$173, DW_AT_low_pc(_PulseRPMCalc)
	.dwattr DW$173, DW_AT_high_pc(0x00)
	.dwattr DW$173, DW_AT_begin_file("adc.c")
	.dwattr DW$173, DW_AT_begin_line(0x408)
	.dwattr DW$173, DW_AT_begin_column(0x06)
	.dwattr DW$173, DW_AT_frame_base[DW_OP_breg20 -12]
	.dwattr DW$173, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",1033,1

;***************************************************************
;* FNAME: _PulseRPMCalc                 FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  1 Auto,  6 SOE     *
;***************************************************************

_PulseRPMCalc:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#4
        MOVW      DP,#_allsensors+1
        MOVL      XAR3,#32767           ; |1042| 
        MOV       AL,@_allsensors+1     ; |1044| 
        MOV       *-SP[3],#0            ; |1043| 
        BF        L99,EQ                ; |1044| 
        ; branchcc occurs ; |1044| 
L97:    
DW$L$_PulseRPMCalc$2$B:
	.dwpsn	"adc.c",1045,0
        CMP       AR3,#32767            ; |1044| 
        BF        L99,NEQ               ; |1044| 
        ; branchcc occurs ; |1044| 
DW$L$_PulseRPMCalc$2$E:
DW$L$_PulseRPMCalc$3$B:
        MOV       AL,*-SP[3]
        LCR       #_Status3Flags        ; |1046| 
        ; call occurs [#_Status3Flags] ; |1046| 
        MOV       AL,*+XAR4[0]          ; |1048| 
        BF        L98,NEQ               ; |1048| 
        ; branchcc occurs ; |1048| 
DW$L$_PulseRPMCalc$3$E:
DW$L$_PulseRPMCalc$4$B:
        MOV       T,*-SP[3]
        MOVL      XAR4,#_sensor         ; |1048| 
        MPYB      ACC,T,#18             ; |1048| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#0          ; |1048| 
        BF        L98,NTC               ; |1048| 
        ; branchcc occurs ; |1048| 
DW$L$_PulseRPMCalc$4$E:
DW$L$_PulseRPMCalc$5$B:
        MOVZ      AR3,*-SP[3]
DW$L$_PulseRPMCalc$5$E:
L98:    
DW$L$_PulseRPMCalc$6$B:
        INC       *-SP[3]               ; |1049| 
        MOVW      DP,#_allsensors+1
        MOV       AL,*-SP[3]
        CMP       AL,@_allsensors+1     ; |1049| 
	.dwpsn	"adc.c",1050,0
        BF        L97,LO                ; |1049| 
        ; branchcc occurs ; |1049| 
DW$L$_PulseRPMCalc$6$E:
L99:    
        CMP       AR3,#32767            ; |1052| 
        BF        L101,NEQ              ; |1052| 
        ; branchcc occurs ; |1052| 
        MOVW      DP,#_allsensors+2
        MOV       AL,@_allsensors+2     ; |1055| 
        BF        L100,NEQ              ; |1055| 
        ; branchcc occurs ; |1055| 
        MOVB      XAR3,#0
        BF        L101,UNC              ; |1061| 
        ; branch occurs ; |1061| 
L100:    
        MOVW      DP,#_allsensors+16
        AND       AH,@_allsensors+16,#0xfff6 ; |1058| 
        MOVW      DP,#_allsensors+16
        AND       AL,@_allsensors+16,#0x0008 ; |1058| 
        LSR       AL,3                  ; |1058| 
        MOVW      DP,#_allsensors+16
        OR        AL,AH                 ; |1058| 
        MOV       @_allsensors+16,AL    ; |1058| 
L101:    
        MOVW      DP,#_allsensors+1
        MOV       *-SP[3],#0            ; |1065| 
        MOV       AL,@_allsensors+1     ; |1065| 
        BF        L111,EQ               ; |1065| 
        ; branchcc occurs ; |1065| 
L102:    
DW$L$_PulseRPMCalc$12$B:
	.dwpsn	"adc.c",1066,0
        MOV       AL,*-SP[3]            ; |1067| 
        LCR       #_GetSensorEnabled    ; |1068| 
        ; call occurs [#_GetSensorEnabled] ; |1068| 
        CMPB      AL,#1                 ; |1068| 
        BF        L109,NEQ              ; |1068| 
        ; branchcc occurs ; |1068| 
DW$L$_PulseRPMCalc$12$E:
DW$L$_PulseRPMCalc$13$B:
        SETC      SXM
        MOV       AL,*-SP[3]
        MOVL      XAR5,#_inputs+128     ; |1070| 
        MOV       ACC,AL << 1           ; |1070| 
        ADDL      XAR5,ACC
        MOVL      XAR4,#181818          ; |1070| 
        MOVL      XAR6,ACC              ; |1070| 
        MOVL      ACC,XAR4              ; |1070| 
        CMPL      ACC,*+XAR5[0]         ; |1070| 
        BF        L109,LOS              ; |1070| 
        ; branchcc occurs ; |1070| 
DW$L$_PulseRPMCalc$13$E:
DW$L$_PulseRPMCalc$14$B:
        MOVL      ACC,XAR6              ; |1070| 
        MOVL      XAR4,#_inputs+156     ; |1070| 
        ADDL      XAR4,ACC
        MOVL      ACC,*+XAR4[0]         ; |1070| 
        BF        L109,EQ               ; |1070| 
        ; branchcc occurs ; |1070| 
DW$L$_PulseRPMCalc$14$E:
DW$L$_PulseRPMCalc$15$B:
        MOVL      XAR5,#181818          ; |1070| 
        MOVL      ACC,XAR5              ; |1070| 
        CMPL      ACC,*+XAR4[0]         ; |1070| 
        BF        L109,LOS              ; |1070| 
        ; branchcc occurs ; |1070| 
DW$L$_PulseRPMCalc$15$E:
DW$L$_PulseRPMCalc$16$B:
        MOV       ACC,*-SP[3]           ; |1072| 
        MOVL      XAR4,#_inputs+15      ; |1072| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |1072| 
        CMPB      AL,#1                 ; |1072| 
        BF        L108,NEQ              ; |1072| 
        ; branchcc occurs ; |1072| 
DW$L$_PulseRPMCalc$16$E:
DW$L$_PulseRPMCalc$17$B:
        MOV       *+XAR4[0],#0          ; |1077| 
        MOV       ACC,*-SP[3]           ; |1079| 
        MOVL      XAR4,#_inputs+29      ; |1079| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |1079| 
        CMPB      AL,#3                 ; |1079| 
        BF        L103,HIS              ; |1079| 
        ; branchcc occurs ; |1079| 
DW$L$_PulseRPMCalc$17$E:
DW$L$_PulseRPMCalc$18$B:
        INC       *+XAR4[0]             ; |1079| 
DW$L$_PulseRPMCalc$18$E:
L103:    
DW$L$_PulseRPMCalc$19$B:
        MOV       ACC,*-SP[3]           ; |1080| 
        MOVL      XAR4,#_inputs+29      ; |1080| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |1080| 
        CMPB      AL,#3                 ; |1080| 
        BF        L108,LO               ; |1080| 
        ; branchcc occurs ; |1080| 
DW$L$_PulseRPMCalc$19$E:
DW$L$_PulseRPMCalc$20$B:
        MOV       AL,*-SP[3]
        MOVL      XAR4,#_inputs+156     ; |1082| 
        MOV       ACC,AL << 1           ; |1082| 
        ADDL      XAR4,ACC
        MOVL      ACC,*+XAR4[0]         ; |1082| 
        LCR       #UL$$TOFS             ; |1082| 
        ; call occurs [#UL$$TOFS] ; |1082| 
        MOVL      XAR6,ACC              ; |1082| 
        MOV       AL,#16443
        MOV       AH,#14347
        MOVL      *-SP[2],ACC           ; |1084| 
        MOVL      ACC,XAR6              ; |1084| 
        LCR       #FS$$MPY              ; |1084| 
        ; call occurs [#FS$$MPY] ; |1084| 
        MOVL      *-SP[2],ACC           ; |1084| 
        MOV       ACC,#32512 << 15
        LCR       #FS$$DIV              ; |1084| 
        ; call occurs [#FS$$DIV] ; |1084| 
        MOVL      XAR6,ACC              ; |1084| 
        MOV       AL,#0
        MOV       AH,#17008
        MOVL      *-SP[2],ACC           ; |1084| 
        MOVL      ACC,XAR6              ; |1084| 
        LCR       #FS$$MPY              ; |1084| 
        ; call occurs [#FS$$MPY] ; |1084| 
        LCR       #_FloattoIntRound     ; |1084| 
        ; call occurs [#_FloattoIntRound] ; |1084| 
        LCR       #I$$TOFS              ; |1084| 
        ; call occurs [#I$$TOFS] ; |1084| 
        MOVL      XAR2,ACC              ; |1084| 
        SETC      SXM
        MOVL      XAR4,#_inputs+184     ; |1085| 
        MOV       ACC,*-SP[3]           ; |1085| 
        ADDL      XAR4,ACC
        MOVL      XAR1,XAR4             ; |1085| 
        MOVL      ACC,XAR2              ; |1085| 
        LCR       #FS$$TOU              ; |1085| 
        ; call occurs [#FS$$TOU] ; |1085| 
        MOV       AH,*+XAR1[0]          ; |1085| 
        ADDB      AH,#-2
        CMP       AH,AL                 ; |1085| 
        BF        L105,HI               ; |1085| 
        ; branchcc occurs ; |1085| 
DW$L$_PulseRPMCalc$20$E:
DW$L$_PulseRPMCalc$21$B:
        MOV       AH,*+XAR1[0]          ; |1085| 
        ADDB      AH,#2                 ; |1085| 
        CMP       AH,AL                 ; |1085| 
        BF        L105,LO               ; |1085| 
        ; branchcc occurs ; |1085| 
DW$L$_PulseRPMCalc$21$E:
DW$L$_PulseRPMCalc$22$B:
        SETC      SXM
        MOVL      XAR4,#_inputs+43      ; |1088| 
        MOV       ACC,*-SP[3]           ; |1088| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |1088| 
        CMPB      AL,#3                 ; |1088| 
        BF        L104,HIS              ; |1088| 
        ; branchcc occurs ; |1088| 
DW$L$_PulseRPMCalc$22$E:
DW$L$_PulseRPMCalc$23$B:
        INC       *+XAR4[0]             ; |1091| 
DW$L$_PulseRPMCalc$23$E:
L104:    
DW$L$_PulseRPMCalc$24$B:
        MOV       ACC,*-SP[3]           ; |1092| 
        MOVL      XAR4,#_rpmdata+5      ; |1092| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#1          ; |1092| 
        BF        L106,UNC              ; |1093| 
        ; branch occurs ; |1093| 
DW$L$_PulseRPMCalc$24$E:
L105:    
DW$L$_PulseRPMCalc$25$B:
        SETC      SXM
        MOVL      XAR4,#_rpmdata+5      ; |1096| 
        MOV       ACC,*-SP[3]           ; |1096| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#0          ; |1096| 
DW$L$_PulseRPMCalc$25$E:
L106:    
DW$L$_PulseRPMCalc$26$B:
        MOV       ACC,*-SP[3]           ; |1093| 
        MOVL      XAR4,#_inputs+43      ; |1093| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |1093| 
        CMPB      AL,#3                 ; |1093| 
        BF        L107,LO               ; |1093| 
        ; branchcc occurs ; |1093| 
DW$L$_PulseRPMCalc$26$E:
DW$L$_PulseRPMCalc$27$B:
        MOV       AL,*-SP[3]
        CMP       AL,AR3                ; |1093| 
        BF        L107,NEQ              ; |1093| 
        ; branchcc occurs ; |1093| 
DW$L$_PulseRPMCalc$27$E:
DW$L$_PulseRPMCalc$28$B:
        MOVW      DP,#_allsensors+16
        OR        @_allsensors+16,#0x0001 ; |1104| 
DW$L$_PulseRPMCalc$28$E:
L107:    
DW$L$_PulseRPMCalc$29$B:
        MOV       ACC,*-SP[3]           ; |1106| 
        MOVL      XAR4,#_inputs+184     ; |1106| 
        ADDL      XAR4,ACC
        MOVL      XAR1,XAR4             ; |1106| 
        MOVL      ACC,XAR2              ; |1106| 
        LCR       #FS$$TOU              ; |1106| 
        ; call occurs [#FS$$TOU] ; |1106| 
        MOV       *+XAR1[0],AL          ; |1106| 
        NOP
        MOV       AL,*-SP[3]            ; |1106| 
        MOV       AH,*+XAR1[0]          ; |1107| 
        LCR       #_SetRPMChan          ; |1107| 
        ; call occurs [#_SetRPMChan] ; |1107| 
DW$L$_PulseRPMCalc$29$E:
L108:    
DW$L$_PulseRPMCalc$30$B:
        MOVB      AL,#0
        CMPB      AL,#1                 ; |1114| 
        BF        L110,NEQ              ; |1114| 
        ; branchcc occurs ; |1114| 
DW$L$_PulseRPMCalc$30$E:
L109:    
DW$L$_PulseRPMCalc$31$B:
        SETC      SXM
        MOVL      XAR4,#_inputs+15      ; |1116| 
        MOV       ACC,*-SP[3]           ; |1116| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#0          ; |1116| 
        MOV       ACC,*-SP[3]           ; |1117| 
        MOVL      XAR4,#_inputs+184     ; |1117| 
        ADDL      XAR4,ACC
        MOVB      XAR6,#0
        MOV       *+XAR4[0],#0          ; |1117| 
        MOV       AL,*-SP[3]            ; |1117| 
        MOVL      XAR4,#_inputs+128     ; |1118| 
        MOV       ACC,AL << 1           ; |1118| 
        ADDL      XAR4,ACC
        MOVL      *+XAR4[0],XAR6        ; |1118| 
        MOVL      XAR4,#_inputs+156     ; |1119| 
        ADDL      XAR4,ACC
        MOVB      ACC,#0
        MOVL      *+XAR4[0],ACC         ; |1119| 
        MOVL      XAR4,#_inputs+29      ; |1120| 
        MOV       ACC,*-SP[3]           ; |1120| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#0          ; |1120| 
        MOVL      XAR4,#_inputs+43      ; |1121| 
        MOV       ACC,*-SP[3]           ; |1121| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#0          ; |1121| 
        MOVL      XAR4,#_rpmdata+5      ; |1122| 
        MOV       ACC,*-SP[3]           ; |1122| 
        ADDL      XAR4,ACC
        MOVW      DP,#_settings+31
        MOV       *+XAR4[0],#0          ; |1122| 
        MOV       AL,@_settings+31      ; |1123| 
        BF        L110,NEQ              ; |1123| 
        ; branchcc occurs ; |1123| 
DW$L$_PulseRPMCalc$31$E:
DW$L$_PulseRPMCalc$32$B:
        MOV       AL,*-SP[3]
        MOVB      AH,#0
        LCR       #_SetRPMChan          ; |1123| 
        ; call occurs [#_SetRPMChan] ; |1123| 
DW$L$_PulseRPMCalc$32$E:
L110:    
DW$L$_PulseRPMCalc$33$B:
        INC       *-SP[3]               ; |1065| 
        MOVW      DP,#_allsensors+1
        MOV       AL,*-SP[3]
        CMP       AL,@_allsensors+1     ; |1065| 
	.dwpsn	"adc.c",1125,0
        BF        L102,LO               ; |1065| 
        ; branchcc occurs ; |1065| 
DW$L$_PulseRPMCalc$33$E:
L111:    
        MOVW      DP,#_allsensors
        MOV       *-SP[3],#0            ; |1127| 
        MOVB      XAR1,#1               ; |1126| 
        MOV       AL,@_allsensors       ; |1127| 
        BF        L114,EQ               ; |1127| 
        ; branchcc occurs ; |1127| 
L112:    
DW$L$_PulseRPMCalc$35$B:
	.dwpsn	"adc.c",1128,0
        MOV       AL,*-SP[3]
        LCR       #_GetRPM              ; |1129| 
        ; call occurs [#_GetRPM] ; |1129| 
        CMPB      AL,#0                 ; |1129| 
        BF        L113,EQ               ; |1129| 
        ; branchcc occurs ; |1129| 
DW$L$_PulseRPMCalc$35$E:
DW$L$_PulseRPMCalc$36$B:
        MOVB      XAR1,#0
DW$L$_PulseRPMCalc$36$E:
L113:    
DW$L$_PulseRPMCalc$37$B:
        INC       *-SP[3]               ; |1127| 
        MOVW      DP,#_allsensors
        MOV       AL,*-SP[3]
        CMP       AL,@_allsensors       ; |1127| 
	.dwpsn	"adc.c",1130,0
        BF        L112,LO               ; |1127| 
        ; branchcc occurs ; |1127| 
DW$L$_PulseRPMCalc$37$E:
L114:    
        MOV       AL,AR1
        CMPB      AL,#1                 ; |1131| 
        BF        L115,NEQ              ; |1131| 
        ; branchcc occurs ; |1131| 
        MOVB      AL,#2                 ; |1131| 
        LCR       #_GetModalRPM         ; |1131| 
        ; call occurs [#_GetModalRPM] ; |1131| 
L115:    
        SUBB      SP,#4
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"adc.c",1132,1
        LRETR
        ; return occurs

DW$174	.dwtag  DW_TAG_loop
	.dwattr DW$174, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L112:1:1471518965")
	.dwattr DW$174, DW_AT_begin_file("adc.c")
	.dwattr DW$174, DW_AT_begin_line(0x467)
	.dwattr DW$174, DW_AT_end_line(0x46a)
DW$175	.dwtag  DW_TAG_loop_range
	.dwattr DW$175, DW_AT_low_pc(DW$L$_PulseRPMCalc$35$B)
	.dwattr DW$175, DW_AT_high_pc(DW$L$_PulseRPMCalc$35$E)
DW$176	.dwtag  DW_TAG_loop_range
	.dwattr DW$176, DW_AT_low_pc(DW$L$_PulseRPMCalc$36$B)
	.dwattr DW$176, DW_AT_high_pc(DW$L$_PulseRPMCalc$36$E)
DW$177	.dwtag  DW_TAG_loop_range
	.dwattr DW$177, DW_AT_low_pc(DW$L$_PulseRPMCalc$37$B)
	.dwattr DW$177, DW_AT_high_pc(DW$L$_PulseRPMCalc$37$E)
	.dwendtag DW$174


DW$178	.dwtag  DW_TAG_loop
	.dwattr DW$178, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L102:1:1471518965")
	.dwattr DW$178, DW_AT_begin_file("adc.c")
	.dwattr DW$178, DW_AT_begin_line(0x429)
	.dwattr DW$178, DW_AT_end_line(0x465)
DW$179	.dwtag  DW_TAG_loop_range
	.dwattr DW$179, DW_AT_low_pc(DW$L$_PulseRPMCalc$12$B)
	.dwattr DW$179, DW_AT_high_pc(DW$L$_PulseRPMCalc$12$E)
DW$180	.dwtag  DW_TAG_loop_range
	.dwattr DW$180, DW_AT_low_pc(DW$L$_PulseRPMCalc$20$B)
	.dwattr DW$180, DW_AT_high_pc(DW$L$_PulseRPMCalc$20$E)
DW$181	.dwtag  DW_TAG_loop_range
	.dwattr DW$181, DW_AT_low_pc(DW$L$_PulseRPMCalc$21$B)
	.dwattr DW$181, DW_AT_high_pc(DW$L$_PulseRPMCalc$21$E)
DW$182	.dwtag  DW_TAG_loop_range
	.dwattr DW$182, DW_AT_low_pc(DW$L$_PulseRPMCalc$22$B)
	.dwattr DW$182, DW_AT_high_pc(DW$L$_PulseRPMCalc$22$E)
DW$183	.dwtag  DW_TAG_loop_range
	.dwattr DW$183, DW_AT_low_pc(DW$L$_PulseRPMCalc$23$B)
	.dwattr DW$183, DW_AT_high_pc(DW$L$_PulseRPMCalc$23$E)
DW$184	.dwtag  DW_TAG_loop_range
	.dwattr DW$184, DW_AT_low_pc(DW$L$_PulseRPMCalc$24$B)
	.dwattr DW$184, DW_AT_high_pc(DW$L$_PulseRPMCalc$24$E)
DW$185	.dwtag  DW_TAG_loop_range
	.dwattr DW$185, DW_AT_low_pc(DW$L$_PulseRPMCalc$25$B)
	.dwattr DW$185, DW_AT_high_pc(DW$L$_PulseRPMCalc$25$E)
DW$186	.dwtag  DW_TAG_loop_range
	.dwattr DW$186, DW_AT_low_pc(DW$L$_PulseRPMCalc$26$B)
	.dwattr DW$186, DW_AT_high_pc(DW$L$_PulseRPMCalc$26$E)
DW$187	.dwtag  DW_TAG_loop_range
	.dwattr DW$187, DW_AT_low_pc(DW$L$_PulseRPMCalc$27$B)
	.dwattr DW$187, DW_AT_high_pc(DW$L$_PulseRPMCalc$27$E)
DW$188	.dwtag  DW_TAG_loop_range
	.dwattr DW$188, DW_AT_low_pc(DW$L$_PulseRPMCalc$28$B)
	.dwattr DW$188, DW_AT_high_pc(DW$L$_PulseRPMCalc$28$E)
DW$189	.dwtag  DW_TAG_loop_range
	.dwattr DW$189, DW_AT_low_pc(DW$L$_PulseRPMCalc$17$B)
	.dwattr DW$189, DW_AT_high_pc(DW$L$_PulseRPMCalc$17$E)
DW$190	.dwtag  DW_TAG_loop_range
	.dwattr DW$190, DW_AT_low_pc(DW$L$_PulseRPMCalc$18$B)
	.dwattr DW$190, DW_AT_high_pc(DW$L$_PulseRPMCalc$18$E)
DW$191	.dwtag  DW_TAG_loop_range
	.dwattr DW$191, DW_AT_low_pc(DW$L$_PulseRPMCalc$13$B)
	.dwattr DW$191, DW_AT_high_pc(DW$L$_PulseRPMCalc$13$E)
DW$192	.dwtag  DW_TAG_loop_range
	.dwattr DW$192, DW_AT_low_pc(DW$L$_PulseRPMCalc$14$B)
	.dwattr DW$192, DW_AT_high_pc(DW$L$_PulseRPMCalc$14$E)
DW$193	.dwtag  DW_TAG_loop_range
	.dwattr DW$193, DW_AT_low_pc(DW$L$_PulseRPMCalc$15$B)
	.dwattr DW$193, DW_AT_high_pc(DW$L$_PulseRPMCalc$15$E)
DW$194	.dwtag  DW_TAG_loop_range
	.dwattr DW$194, DW_AT_low_pc(DW$L$_PulseRPMCalc$16$B)
	.dwattr DW$194, DW_AT_high_pc(DW$L$_PulseRPMCalc$16$E)
DW$195	.dwtag  DW_TAG_loop_range
	.dwattr DW$195, DW_AT_low_pc(DW$L$_PulseRPMCalc$19$B)
	.dwattr DW$195, DW_AT_high_pc(DW$L$_PulseRPMCalc$19$E)
DW$196	.dwtag  DW_TAG_loop_range
	.dwattr DW$196, DW_AT_low_pc(DW$L$_PulseRPMCalc$29$B)
	.dwattr DW$196, DW_AT_high_pc(DW$L$_PulseRPMCalc$29$E)
DW$197	.dwtag  DW_TAG_loop_range
	.dwattr DW$197, DW_AT_low_pc(DW$L$_PulseRPMCalc$30$B)
	.dwattr DW$197, DW_AT_high_pc(DW$L$_PulseRPMCalc$30$E)
DW$198	.dwtag  DW_TAG_loop_range
	.dwattr DW$198, DW_AT_low_pc(DW$L$_PulseRPMCalc$31$B)
	.dwattr DW$198, DW_AT_high_pc(DW$L$_PulseRPMCalc$31$E)
DW$199	.dwtag  DW_TAG_loop_range
	.dwattr DW$199, DW_AT_low_pc(DW$L$_PulseRPMCalc$32$B)
	.dwattr DW$199, DW_AT_high_pc(DW$L$_PulseRPMCalc$32$E)
DW$200	.dwtag  DW_TAG_loop_range
	.dwattr DW$200, DW_AT_low_pc(DW$L$_PulseRPMCalc$33$B)
	.dwattr DW$200, DW_AT_high_pc(DW$L$_PulseRPMCalc$33$E)
	.dwendtag DW$178


DW$201	.dwtag  DW_TAG_loop
	.dwattr DW$201, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L97:1:1471518965")
	.dwattr DW$201, DW_AT_begin_file("adc.c")
	.dwattr DW$201, DW_AT_begin_line(0x414)
	.dwattr DW$201, DW_AT_end_line(0x41a)
DW$202	.dwtag  DW_TAG_loop_range
	.dwattr DW$202, DW_AT_low_pc(DW$L$_PulseRPMCalc$2$B)
	.dwattr DW$202, DW_AT_high_pc(DW$L$_PulseRPMCalc$2$E)
DW$203	.dwtag  DW_TAG_loop_range
	.dwattr DW$203, DW_AT_low_pc(DW$L$_PulseRPMCalc$3$B)
	.dwattr DW$203, DW_AT_high_pc(DW$L$_PulseRPMCalc$3$E)
DW$204	.dwtag  DW_TAG_loop_range
	.dwattr DW$204, DW_AT_low_pc(DW$L$_PulseRPMCalc$4$B)
	.dwattr DW$204, DW_AT_high_pc(DW$L$_PulseRPMCalc$4$E)
DW$205	.dwtag  DW_TAG_loop_range
	.dwattr DW$205, DW_AT_low_pc(DW$L$_PulseRPMCalc$5$B)
	.dwattr DW$205, DW_AT_high_pc(DW$L$_PulseRPMCalc$5$E)
DW$206	.dwtag  DW_TAG_loop_range
	.dwattr DW$206, DW_AT_low_pc(DW$L$_PulseRPMCalc$6$B)
	.dwattr DW$206, DW_AT_high_pc(DW$L$_PulseRPMCalc$6$E)
	.dwendtag DW$201

	.dwattr DW$173, DW_AT_end_file("adc.c")
	.dwattr DW$173, DW_AT_end_line(0x46c)
	.dwattr DW$173, DW_AT_end_column(0x01)
	.dwendtag DW$173

	.sect	".text"
	.global	_ClearEngineDirCal

DW$207	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearEngineDirCal"), DW_AT_symbol_name("_ClearEngineDirCal")
	.dwattr DW$207, DW_AT_low_pc(_ClearEngineDirCal)
	.dwattr DW$207, DW_AT_high_pc(0x00)
	.dwattr DW$207, DW_AT_begin_file("adc.c")
	.dwattr DW$207, DW_AT_begin_line(0x46f)
	.dwattr DW$207, DW_AT_begin_column(0x06)
	.dwattr DW$207, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$207, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",1136,1

;***************************************************************
;* FNAME: _ClearEngineDirCal            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ClearEngineDirCal:
        MOVB      AL,#0
	.dwpsn	"adc.c",1141,0
        SETC      SXM
L116:    
DW$L$_ClearEngineDirCal$2$B:
        MOV       ACC,AL                ; |1141| 
        MOVL      XAR4,#_adcdata+73     ; |1141| 
        ADDL      XAR4,ACC
        ADDB      AL,#1                 ; |1141| 
        CMPB      AL,#14                ; |1141| 
        MOV       *+XAR4[0],#32767      ; |1141| 
        BF        L116,LT               ; |1141| 
        ; branchcc occurs ; |1141| 
DW$L$_ClearEngineDirCal$2$E:
        MOVB      AL,#0
	.dwpsn	"adc.c",1142,0
        SETC      SXM
L117:    
DW$L$_ClearEngineDirCal$4$B:
        MOV       ACC,AL                ; |1142| 
        MOVL      XAR4,#_allsensors+21  ; |1142| 
        ADDL      XAR4,ACC
        ADDB      AL,#1                 ; |1142| 
        CMPB      AL,#7                 ; |1142| 
        MOV       *+XAR4[0],#32767      ; |1142| 
        BF        L117,LT               ; |1142| 
        ; branchcc occurs ; |1142| 
DW$L$_ClearEngineDirCal$4$E:
        MOVW      DP,#_motion
        MOV       @_motion,#0           ; |1145| 
        MOVW      DP,#_motion+1
        MOV       @_motion+1,#0         ; |1146| 
        MOVW      DP,#_motion+4
        MOV       @_motion+4,#-2        ; |1147| 
        MOVW      DP,#_motion+8
        MOV       @_motion+8,#0         ; |1148| 
        MOVW      DP,#_allsensors+20
        MOV       @_allsensors+20,#0    ; |1149| 
        LCR       #_WriteAllSensorStructtoNVMEM ; |1151| 
        ; call occurs [#_WriteAllSensorStructtoNVMEM] ; |1151| 
        LCR       #_GeneralSettingstoSDCardFile ; |1152| 
        ; call occurs [#_GeneralSettingstoSDCardFile] ; |1152| 
        MOVB      AL,#1                 ; |1157| 
        LCR       #_SetBitEvent         ; |1157| 
        ; call occurs [#_SetBitEvent] ; |1157| 
	.dwpsn	"adc.c",1158,1
        LRETR
        ; return occurs

DW$208	.dwtag  DW_TAG_loop
	.dwattr DW$208, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L117:1:1471518965")
	.dwattr DW$208, DW_AT_begin_file("adc.c")
	.dwattr DW$208, DW_AT_begin_line(0x476)
	.dwattr DW$208, DW_AT_end_line(0x476)
DW$209	.dwtag  DW_TAG_loop_range
	.dwattr DW$209, DW_AT_low_pc(DW$L$_ClearEngineDirCal$4$B)
	.dwattr DW$209, DW_AT_high_pc(DW$L$_ClearEngineDirCal$4$E)
	.dwendtag DW$208


DW$210	.dwtag  DW_TAG_loop
	.dwattr DW$210, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L116:1:1471518965")
	.dwattr DW$210, DW_AT_begin_file("adc.c")
	.dwattr DW$210, DW_AT_begin_line(0x475)
	.dwattr DW$210, DW_AT_end_line(0x475)
DW$211	.dwtag  DW_TAG_loop_range
	.dwattr DW$211, DW_AT_low_pc(DW$L$_ClearEngineDirCal$2$B)
	.dwattr DW$211, DW_AT_high_pc(DW$L$_ClearEngineDirCal$2$E)
	.dwendtag DW$210

	.dwattr DW$207, DW_AT_end_file("adc.c")
	.dwattr DW$207, DW_AT_end_line(0x486)
	.dwattr DW$207, DW_AT_end_column(0x01)
	.dwendtag DW$207

	.sect	".text"
	.global	_InitMotionCal

DW$212	.dwtag  DW_TAG_subprogram, DW_AT_name("InitMotionCal"), DW_AT_symbol_name("_InitMotionCal")
	.dwattr DW$212, DW_AT_low_pc(_InitMotionCal)
	.dwattr DW$212, DW_AT_high_pc(0x00)
	.dwattr DW$212, DW_AT_begin_file("adc.c")
	.dwattr DW$212, DW_AT_begin_line(0x489)
	.dwattr DW$212, DW_AT_begin_column(0x06)
	.dwattr DW$212, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$212, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",1162,1

;***************************************************************
;* FNAME: _InitMotionCal                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_InitMotionCal:
        MOVB      AL,#0
        LCR       #_GetModalRPM         ; |1165| 
        ; call occurs [#_GetModalRPM] ; |1165| 
        MOVW      DP,#_allsensors+37
        CMP       AL,@_allsensors+37    ; |1165| 
        BF        L118,LO               ; |1165| 
        ; branchcc occurs ; |1165| 
        LCR       #_ClearEngineDirCal   ; |1167| 
        ; call occurs [#_ClearEngineDirCal] ; |1167| 
        MOVB      AL,#2                 ; |1174| 
        MOVW      DP,#_timers+55
        MOV       @_timers+55,#2000     ; |1168| 
        MOVW      DP,#_motion+6
        MOV       @_motion+6,#1         ; |1169| 
        LCR       #_SetBitEvent         ; |1174| 
        ; call occurs [#_SetBitEvent] ; |1174| 
L118:    
	.dwpsn	"adc.c",1176,1
        LRETR
        ; return occurs
	.dwattr DW$212, DW_AT_end_file("adc.c")
	.dwattr DW$212, DW_AT_end_line(0x498)
	.dwattr DW$212, DW_AT_end_column(0x01)
	.dwendtag DW$212

	.sect	".text"
	.global	_SetupMotionDir

DW$213	.dwtag  DW_TAG_subprogram, DW_AT_name("SetupMotionDir"), DW_AT_symbol_name("_SetupMotionDir")
	.dwattr DW$213, DW_AT_low_pc(_SetupMotionDir)
	.dwattr DW$213, DW_AT_high_pc(0x00)
	.dwattr DW$213, DW_AT_begin_file("adc.c")
	.dwattr DW$213, DW_AT_begin_line(0x49c)
	.dwattr DW$213, DW_AT_begin_column(0x06)
	.dwattr DW$213, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$213, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",1181,1

;***************************************************************
;* FNAME: _SetupMotionDir               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SetupMotionDir:
        MOVW      DP,#_timers+55
        MOV       AL,@_timers+55        ; |1185| 
        BF        L121,NEQ              ; |1185| 
        ; branchcc occurs ; |1185| 
        MOVW      DP,#_allsensors+1
        MOV       AH,@_allsensors+1     ; |1187| 
        MOV       AL,AH                 ; |1187| 
        LSR       AL,15                 ; |1187| 
        ADD       AL,AH                 ; |1187| 
        ASR       AL,1                  ; |1187| 
        MOVZ      AR7,AL                ; |1187| 
        MOVB      AL,#0
        MOV       AH,AR7                ; |1189| 
        BF        L120,LEQ              ; |1189| 
        ; branchcc occurs ; |1189| 
L119:    
DW$L$_SetupMotionDir$3$B:
	.dwpsn	"adc.c",1190,0
        SETC      SXM
        MOVL      XAR4,#_adcdata+73     ; |1191| 
        MOV       ACC,AL                ; |1191| 
        ADDL      XAR4,ACC
        MOVZ      AR6,*+XAR4[0]         ; |1191| 
        MOV       ACC,AL                ; |1191| 
        MOVL      XAR4,#_allsensors+21  ; |1191| 
        ADDL      XAR4,ACC
        ADDB      AL,#1                 ; |1189| 
        MOV       AH,AR7                ; |1189| 
        CMP       AH,AL                 ; |1189| 
        MOV       *+XAR4[0],AR6         ; |1191| 
	.dwpsn	"adc.c",1192,0
        BF        L119,GT               ; |1189| 
        ; branchcc occurs ; |1189| 
DW$L$_SetupMotionDir$3$E:
L120:    
        MOVB      AL,#1                 ; |1193| 
        MOVW      DP,#_allsensors+20
        MOV       @_allsensors+20,AL    ; |1193| 
        MOVW      DP,#_motion
        MOV       @_motion,#0           ; |1194| 
        MOVW      DP,#_motion+1
        MOV       @_motion+1,#0         ; |1195| 
        MOVW      DP,#_motion+6
        MOV       @_motion+6,#0         ; |1196| 
        MOVW      DP,#_motion+8
        MOV       @_motion+8,AL         ; |1197| 
        LCR       #_WriteAllSensorStructtoNVMEM ; |1198| 
        ; call occurs [#_WriteAllSensorStructtoNVMEM] ; |1198| 
        LCR       #_GeneralSettingstoSDCardFile ; |1199| 
        ; call occurs [#_GeneralSettingstoSDCardFile] ; |1199| 
L121:    
	.dwpsn	"adc.c",1201,1
        LRETR
        ; return occurs

DW$214	.dwtag  DW_TAG_loop
	.dwattr DW$214, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L119:1:1471518965")
	.dwattr DW$214, DW_AT_begin_file("adc.c")
	.dwattr DW$214, DW_AT_begin_line(0x4a5)
	.dwattr DW$214, DW_AT_end_line(0x4a8)
DW$215	.dwtag  DW_TAG_loop_range
	.dwattr DW$215, DW_AT_low_pc(DW$L$_SetupMotionDir$3$B)
	.dwattr DW$215, DW_AT_high_pc(DW$L$_SetupMotionDir$3$E)
	.dwendtag DW$214

	.dwattr DW$213, DW_AT_end_file("adc.c")
	.dwattr DW$213, DW_AT_end_line(0x4b1)
	.dwattr DW$213, DW_AT_end_column(0x01)
	.dwendtag DW$213

	.sect	".text"
	.global	_CheckForwardAstern

DW$216	.dwtag  DW_TAG_subprogram, DW_AT_name("CheckForwardAstern"), DW_AT_symbol_name("_CheckForwardAstern")
	.dwattr DW$216, DW_AT_low_pc(_CheckForwardAstern)
	.dwattr DW$216, DW_AT_high_pc(0x00)
	.dwattr DW$216, DW_AT_begin_file("adc.c")
	.dwattr DW$216, DW_AT_begin_line(0x4b4)
	.dwattr DW$216, DW_AT_begin_column(0x06)
	.dwattr DW$216, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$216, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",1205,1

;***************************************************************
;* FNAME: _CheckForwardAstern           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CheckForwardAstern:
        MOVB      AL,#0
        LCR       #_GetModalRPM         ; |1209| 
        ; call occurs [#_GetModalRPM] ; |1209| 
        CMPB      AL,#0                 ; |1209| 
        BF        L122,NEQ              ; |1209| 
        ; branchcc occurs ; |1209| 
        MOVW      DP,#_allsensors+20
        MOV       AL,@_allsensors+20    ; |1264| 
        CMPB      AL,#1                 ; |1264| 
        BF        L130,NEQ              ; |1264| 
        ; branchcc occurs ; |1264| 
        MOVW      DP,#_motion+4
        MOV       @_motion+4,#-1        ; |1266| 
        MOVW      DP,#_motion+1
        MOV       @_motion+1,#0         ; |1267| 
        MOVW      DP,#_motion
        MOV       @_motion,#0           ; |1268| 
        BF        L132,UNC              ; |1269| 
        ; branch occurs ; |1269| 
L122:    
        MOVW      DP,#_motion+6
        MOV       AL,@_motion+6         ; |1211| 
        CMPB      AL,#1                 ; |1211| 
        BF        L131,EQ               ; |1211| 
        ; branchcc occurs ; |1211| 
        MOVW      DP,#_allsensors+1
        MOV       AL,@_allsensors+1     ; |1215| 
        LSR       AL,1                  ; |1215| 
        MOVW      DP,#_allsensors+20
        MOVZ      AR6,AL                ; |1215| 
        MOV       AL,@_allsensors+20    ; |1216| 
        CMPB      AL,#1                 ; |1216| 
        BF        L130,NEQ              ; |1216| 
        ; branchcc occurs ; |1216| 
        MOVW      DP,#_motion+1
        MOV       AL,@_motion+1         ; |1218| 
        CMPB      AL,#1                 ; |1218| 
        BF        L132,NEQ              ; |1218| 
        ; branchcc occurs ; |1218| 
        MOVW      DP,#_motion+1
        MOV       @_motion+1,#0         ; |1220| 
        MOVB      AL,#0
        MOVW      DP,#_motion
        MOV       @_motion,#0           ; |1221| 
        MOVW      DP,#_allsensors+21
        MOV       AH,@_allsensors+21    ; |1223| 
        MOVW      DP,#_motion+2
        CMP       AH,@_motion+2         ; |1223| 
        BF        L124,EQ               ; |1223| 
        ; branchcc occurs ; |1223| 
L123:    
DW$L$_CheckForwardAstern$8$B:
	.dwpsn	"adc.c",1223,0
        MOV       AH,AR6
        CMP       AH,AL                 ; |1223| 
        BF        L124,LEQ              ; |1223| 
        ; branchcc occurs ; |1223| 
DW$L$_CheckForwardAstern$8$E:
DW$L$_CheckForwardAstern$9$B:
        SETC      SXM
        ADDB      AL,#1                 ; |1223| 
        MOVL      XAR4,#_allsensors+21  ; |1223| 
        MOV       ACC,AL                ; |1223| 
        ADDL      XAR4,ACC
        MOVW      DP,#_motion+2
        MOV       AH,*+XAR4[0]          ; |1223| 
        CMP       AH,@_motion+2         ; |1223| 
        BF        L123,NEQ              ; |1223| 
        ; branchcc occurs ; |1223| 
DW$L$_CheckForwardAstern$9$E:
L124:    
        MOV       AH,AR6
        CMP       AH,AL                 ; |1224| 
        BF        L132,EQ               ; |1224| 
        ; branchcc occurs ; |1224| 
        CMPB      AL,#0                 ; |1230| 
        BF        L125,NEQ              ; |1230| 
        ; branchcc occurs ; |1230| 
        MOVW      DP,#_motion+3
        MOVZ      AR7,@_motion+3        ; |1232| 
        MOVL      XAR4,#_allsensors+21  ; |1232| 
        MOV       AL,AR7                ; |1232| 
        CMP       AL,*+XAR4[1]          ; |1232| 
        BF        L128,EQ               ; |1232| 
        ; branchcc occurs ; |1232| 
        SETC      SXM
        MOV       AL,AR6
        MOV       ACC,AL                ; |1233| 
        ADDL      XAR4,ACC
        MOV       AL,AR7                ; |1233| 
        SUBB      XAR4,#1               ; |1233| 
        CMP       AL,*+XAR4[0]          ; |1233| 
        BF        L127,EQ               ; |1233| 
        ; branchcc occurs ; |1233| 
        BF        L129,UNC              ; |1233| 
        ; branch occurs ; |1233| 
L125:    
        MOV       AH,AL                 ; |1236| 
        SUB       AH,AR6                ; |1236| 
        CMP       AH,#-1                ; |1236| 
        BF        L126,EQ               ; |1236| 
        ; branchcc occurs ; |1236| 
        SETC      SXM
        MOVL      XAR4,#_allsensors+21  ; |1244| 
        MOV       ACC,AL                ; |1244| 
        ADDL      XAR4,ACC
        MOVW      DP,#_motion+3
        MOV       AL,@_motion+3         ; |1244| 
        CMP       AL,*+XAR4[1]          ; |1244| 
        BF        L128,EQ               ; |1244| 
        ; branchcc occurs ; |1244| 
        SUBB      XAR4,#1               ; |1245| 
        CMP       AL,*+XAR4[0]          ; |1245| 
        BF        L127,EQ               ; |1245| 
        ; branchcc occurs ; |1245| 
        BF        L129,UNC              ; |1245| 
        ; branch occurs ; |1245| 
L126:    
        MOVW      DP,#_motion+3
        MOVZ      AR6,@_motion+3        ; |1238| 
        MOVL      XAR4,#_allsensors+21  ; |1238| 
        MOV       AH,AR6                ; |1238| 
        CMP       AH,*+XAR4[0]          ; |1238| 
        BF        L128,EQ               ; |1238| 
        ; branchcc occurs ; |1238| 
        SETC      SXM
        MOV       ACC,AL                ; |1239| 
        ADDL      XAR4,ACC
        MOV       AL,AR6                ; |1239| 
        SUBB      XAR4,#1               ; |1239| 
        CMP       AL,*+XAR4[0]          ; |1239| 
        BF        L129,NEQ              ; |1239| 
        ; branchcc occurs ; |1239| 
L127:    
        MOVW      DP,#_motion+4
        MOV       @_motion+4,#1         ; |1239| 
        BF        L129,UNC              ; |1239| 
        ; branch occurs ; |1239| 
L128:    
        MOVW      DP,#_motion+4
        MOV       @_motion+4,#0         ; |1238| 
L129:    
        MOVW      DP,#_motion+8
        MOV       AL,@_motion+8         ; |1249| 
        CMPB      AL,#1                 ; |1249| 
        BF        L132,NEQ              ; |1249| 
        ; branchcc occurs ; |1249| 
        MOVW      DP,#_motion+8
        MOV       @_motion+8,#0         ; |1251| 
        MOVW      DP,#_motion+4
        MOV       AL,@_motion+4         ; |1252| 
        CMPB      AL,#1                 ; |1252| 
        BF        L132,NEQ              ; |1252| 
        ; branchcc occurs ; |1252| 
        MOVW      DP,#_motion+7
        MOV       @_motion+7,#1         ; |1254| 
        LCR       #_CalAbort            ; |1255| 
        ; call occurs [#_CalAbort] ; |1255| 
        LCR       #_ClearSelectiveMANTable ; |1256| 
        ; call occurs [#_ClearSelectiveMANTable] ; |1256| 
        BF        L132,UNC              ; |1256| 
        ; branch occurs ; |1256| 
L130:    
        MOVW      DP,#_motion+4
        MOV       @_motion+4,#-2        ; |1261| 
        BF        L132,UNC              ; |1261| 
        ; branch occurs ; |1261| 
L131:    
        LCR       #_SetupMotionDir      ; |1211| 
        ; call occurs [#_SetupMotionDir] ; |1211| 
L132:    
	.dwpsn	"adc.c",1272,1
        LRETR
        ; return occurs

DW$217	.dwtag  DW_TAG_loop
	.dwattr DW$217, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L123:1:1471518965")
	.dwattr DW$217, DW_AT_begin_file("adc.c")
	.dwattr DW$217, DW_AT_begin_line(0x4c7)
	.dwattr DW$217, DW_AT_end_line(0x4c7)
DW$218	.dwtag  DW_TAG_loop_range
	.dwattr DW$218, DW_AT_low_pc(DW$L$_CheckForwardAstern$8$B)
	.dwattr DW$218, DW_AT_high_pc(DW$L$_CheckForwardAstern$8$E)
DW$219	.dwtag  DW_TAG_loop_range
	.dwattr DW$219, DW_AT_low_pc(DW$L$_CheckForwardAstern$9$B)
	.dwattr DW$219, DW_AT_high_pc(DW$L$_CheckForwardAstern$9$E)
	.dwendtag DW$217

	.dwattr DW$216, DW_AT_end_file("adc.c")
	.dwattr DW$216, DW_AT_end_line(0x4f8)
	.dwattr DW$216, DW_AT_end_column(0x01)
	.dwendtag DW$216

	.sect	".text"
	.global	_AnalogOOR

DW$220	.dwtag  DW_TAG_subprogram, DW_AT_name("AnalogOOR"), DW_AT_symbol_name("_AnalogOOR")
	.dwattr DW$220, DW_AT_low_pc(_AnalogOOR)
	.dwattr DW$220, DW_AT_high_pc(0x00)
	.dwattr DW$220, DW_AT_begin_file("adc.c")
	.dwattr DW$220, DW_AT_begin_line(0x4fc)
	.dwattr DW$220, DW_AT_begin_column(0x06)
	.dwattr DW$220, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$220, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",1277,1

;***************************************************************
;* FNAME: _AnalogOOR                    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_AnalogOOR:
        MOVL      *SP++,XAR1
        MOVW      DP,#_timers+54
        MOVL      *SP++,XAR2
        MOV       AL,@_timers+54        ; |1284| 
        BF        L139,NEQ              ; |1284| 
        ; branchcc occurs ; |1284| 
        MOVW      DP,#_timers+54
        MOV       @_timers+54,#1000     ; |1286| 
        LCR       #_CheckWIORange       ; |1287| 
        ; call occurs [#_CheckWIORange] ; |1287| 
        LCR       #_CheckSLEMRange      ; |1288| 
        ; call occurs [#_CheckSLEMRange] ; |1288| 
        MOVW      DP,#_allsensors+1
        MOV       AL,@_allsensors+1     ; |1289| 
        MOVB      XAR1,#0
        BF        L139,EQ               ; |1289| 
        ; branchcc occurs ; |1289| 
L133:    
DW$L$_AnalogOOR$3$B:
	.dwpsn	"adc.c",1290,0
        MOV       AL,AR1                ; |1291| 
        LCR       #_Status3Flags        ; |1291| 
        ; call occurs [#_Status3Flags] ; |1291| 
        MOV       T,#18                 ; |1292| 
        MOVL      XAR2,XAR4             ; |1291| 
        MPYXU     ACC,T,AR1             ; |1292| 
        MOVL      XAR4,#_sensor         ; |1292| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#0          ; |1292| 
        BF        L137,NTC              ; |1292| 
        ; branchcc occurs ; |1292| 
DW$L$_AnalogOOR$3$E:
DW$L$_AnalogOOR$4$B:
        MOV       AL,AR1                ; |1294| 
        LCR       #_ADCChanPtr          ; |1294| 
        ; call occurs [#_ADCChanPtr] ; |1294| 
        MOV       AL,*+XAR4[0]          ; |1295| 
        LSR       AL,4                  ; |1295| 
        MOVZ      AR6,AL                ; |1295| 
        MOVL      XAR4,#_adcdata+16     ; |1296| 
        MOVL      ACC,XAR4              ; |1296| 
        ADDU      ACC,AR1               ; |1296| 
        MOVL      XAR4,ACC              ; |1296| 
        MOV       AL,AR6                ; |1296| 
        SUB       AL,*+XAR4[0]          ; |1296| 
        MOVL      XAR5,#_adcdata+31     ; |1297| 
        MOV       AH,AL                 ; |1296| 
        ASR       AH,1                  ; |1296| 
        LSR       AH,14                 ; |1296| 
        ADD       AH,AL                 ; |1296| 
        ASR       AH,2                  ; |1296| 
        ADD       *+XAR4[0],AH          ; |1296| 
        MOV       T,*+XAR5[AR1]         ; |1297| 
        MPYB      ACC,T,#3              ; |1297| 
        CMP       AL,*+XAR4[0]          ; |1297| 
        BF        L134,LEQ              ; |1297| 
        ; branchcc occurs ; |1297| 
DW$L$_AnalogOOR$4$E:
DW$L$_AnalogOOR$5$B:
        OR        *+XAR2[0],#0x0002     ; |1300| 
        MOVW      DP,#_settings+31
        MOV       AL,@_settings+31      ; |1305| 
        BF        L135,NEQ              ; |1305| 
        ; branchcc occurs ; |1305| 
DW$L$_AnalogOOR$5$E:
DW$L$_AnalogOOR$6$B:
        MOV       AL,AR1                ; |1307| 
        MOVB      AH,#0
        LCR       #_SetRPMChan          ; |1307| 
        ; call occurs [#_SetRPMChan] ; |1307| 
        BF        L135,UNC              ; |1307| 
        ; branch occurs ; |1307| 
DW$L$_AnalogOOR$6$E:
L134:    
DW$L$_AnalogOOR$7$B:
        AND       *+XAR2[0],#0xfffd     ; |1312| 
DW$L$_AnalogOOR$7$E:
L135:    
DW$L$_AnalogOOR$8$B:
        MOVL      XAR4,#_adcdata+31     ; |1314| 
        MOV       T,*+XAR4[AR1]         ; |1314| 
        MPYB      ACC,T,#19             ; |1314| 
        MOVL      XAR4,#_adcdata+16     ; |1314| 
        CMP       AL,*+XAR4[AR1]        ; |1314| 
        BF        L136,GEQ              ; |1314| 
        ; branchcc occurs ; |1314| 
DW$L$_AnalogOOR$8$E:
DW$L$_AnalogOOR$9$B:
        OR        *+XAR2[0],#0x0004     ; |1314| 
        MOVW      DP,#_settings+31
        MOV       AL,@_settings+31      ; |1317| 
        BF        L138,NEQ              ; |1317| 
        ; branchcc occurs ; |1317| 
DW$L$_AnalogOOR$9$E:
DW$L$_AnalogOOR$10$B:
        MOV       AL,AR1                ; |1317| 
        MOVB      AH,#0
        LCR       #_SetRPMChan          ; |1317| 
        ; call occurs [#_SetRPMChan] ; |1317| 
        BF        L138,UNC              ; |1317| 
        ; branch occurs ; |1317| 
DW$L$_AnalogOOR$10$E:
L136:    
DW$L$_AnalogOOR$11$B:
        AND       *+XAR2[0],#0xfffb     ; |1321| 
        BF        L138,UNC              ; |1321| 
        ; branch occurs ; |1321| 
DW$L$_AnalogOOR$11$E:
L137:    
DW$L$_AnalogOOR$12$B:
        AND       *+XAR2[0],#0xfff9     ; |1326| 
DW$L$_AnalogOOR$12$E:
L138:    
DW$L$_AnalogOOR$13$B:
        ADDB      XAR1,#1               ; |1289| 
        MOVW      DP,#_allsensors+1
        MOV       AL,AR1                ; |1289| 
        CMP       AL,@_allsensors+1     ; |1289| 
	.dwpsn	"adc.c",1329,0
        BF        L133,LO               ; |1289| 
        ; branchcc occurs ; |1289| 
DW$L$_AnalogOOR$13$E:
L139:    
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"adc.c",1331,1
        LRETR
        ; return occurs

DW$221	.dwtag  DW_TAG_loop
	.dwattr DW$221, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L133:1:1471518965")
	.dwattr DW$221, DW_AT_begin_file("adc.c")
	.dwattr DW$221, DW_AT_begin_line(0x509)
	.dwattr DW$221, DW_AT_end_line(0x531)
DW$222	.dwtag  DW_TAG_loop_range
	.dwattr DW$222, DW_AT_low_pc(DW$L$_AnalogOOR$3$B)
	.dwattr DW$222, DW_AT_high_pc(DW$L$_AnalogOOR$3$E)
DW$223	.dwtag  DW_TAG_loop_range
	.dwattr DW$223, DW_AT_low_pc(DW$L$_AnalogOOR$4$B)
	.dwattr DW$223, DW_AT_high_pc(DW$L$_AnalogOOR$4$E)
DW$224	.dwtag  DW_TAG_loop_range
	.dwattr DW$224, DW_AT_low_pc(DW$L$_AnalogOOR$5$B)
	.dwattr DW$224, DW_AT_high_pc(DW$L$_AnalogOOR$5$E)
DW$225	.dwtag  DW_TAG_loop_range
	.dwattr DW$225, DW_AT_low_pc(DW$L$_AnalogOOR$6$B)
	.dwattr DW$225, DW_AT_high_pc(DW$L$_AnalogOOR$6$E)
DW$226	.dwtag  DW_TAG_loop_range
	.dwattr DW$226, DW_AT_low_pc(DW$L$_AnalogOOR$7$B)
	.dwattr DW$226, DW_AT_high_pc(DW$L$_AnalogOOR$7$E)
DW$227	.dwtag  DW_TAG_loop_range
	.dwattr DW$227, DW_AT_low_pc(DW$L$_AnalogOOR$8$B)
	.dwattr DW$227, DW_AT_high_pc(DW$L$_AnalogOOR$8$E)
DW$228	.dwtag  DW_TAG_loop_range
	.dwattr DW$228, DW_AT_low_pc(DW$L$_AnalogOOR$9$B)
	.dwattr DW$228, DW_AT_high_pc(DW$L$_AnalogOOR$9$E)
DW$229	.dwtag  DW_TAG_loop_range
	.dwattr DW$229, DW_AT_low_pc(DW$L$_AnalogOOR$10$B)
	.dwattr DW$229, DW_AT_high_pc(DW$L$_AnalogOOR$10$E)
DW$230	.dwtag  DW_TAG_loop_range
	.dwattr DW$230, DW_AT_low_pc(DW$L$_AnalogOOR$11$B)
	.dwattr DW$230, DW_AT_high_pc(DW$L$_AnalogOOR$11$E)
DW$231	.dwtag  DW_TAG_loop_range
	.dwattr DW$231, DW_AT_low_pc(DW$L$_AnalogOOR$12$B)
	.dwattr DW$231, DW_AT_high_pc(DW$L$_AnalogOOR$12$E)
DW$232	.dwtag  DW_TAG_loop_range
	.dwattr DW$232, DW_AT_low_pc(DW$L$_AnalogOOR$13$B)
	.dwattr DW$232, DW_AT_high_pc(DW$L$_AnalogOOR$13$E)
	.dwendtag DW$221

	.dwattr DW$220, DW_AT_end_file("adc.c")
	.dwattr DW$220, DW_AT_end_line(0x533)
	.dwattr DW$220, DW_AT_end_column(0x01)
	.dwendtag DW$220

	.sect	".text"
	.global	_SetupScaling

DW$233	.dwtag  DW_TAG_subprogram, DW_AT_name("SetupScaling"), DW_AT_symbol_name("_SetupScaling")
	.dwattr DW$233, DW_AT_low_pc(_SetupScaling)
	.dwattr DW$233, DW_AT_high_pc(0x00)
	.dwattr DW$233, DW_AT_begin_file("adc.c")
	.dwattr DW$233, DW_AT_begin_line(0x538)
	.dwattr DW$233, DW_AT_begin_column(0x06)
	.dwattr DW$233, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$233, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",1337,1

;***************************************************************
;* FNAME: _SetupScaling                 FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_SetupScaling:
        MOVL      *SP++,XAR1
        MOVB      XAR1,#0
        MOVL      *SP++,XAR2
	.dwpsn	"adc.c",1340,0
        ADDB      SP,#2
L140:    
DW$L$_SetupScaling$2$B:
	.dwpsn	"adc.c",1341,0
        MOVL      XAR4,#_safe1+2        ; |1342| 
        MOV       AL,*+XAR4[AR1]        ; |1342| 
        LCR       #U$$TOFS              ; |1342| 
        ; call occurs [#U$$TOFS] ; |1342| 
        MOVL      XAR6,ACC              ; |1342| 
        MOV       AL,#0
        MOV       AH,#16784
        MOVL      *-SP[2],ACC           ; |1342| 
        MOVL      ACC,XAR6              ; |1342| 
        LCR       #FS$$DIV              ; |1342| 
        ; call occurs [#FS$$DIV] ; |1342| 
        MOVL      XAR2,ACC              ; |1342| 
        LCR       #FS$$TOU              ; |1343| 
        ; call occurs [#FS$$TOU] ; |1343| 
        MOVL      XAR4,#_adcdata+31     ; |1343| 
        MOV       *+XAR4[AR1],AL        ; |1343| 
        MOV       AL,#0
        MOV       AH,#16800
        MOVL      *-SP[2],ACC           ; |1345| 
        MOVL      ACC,XAR2              ; |1345| 
        LCR       #FS$$MPY              ; |1345| 
        ; call occurs [#FS$$MPY] ; |1345| 
        MOVL      *-SP[2],ACC           ; |1345| 
        MOV       AL,#61440
        MOV       AH,#17791
        LCR       #FS$$DIV              ; |1345| 
        ; call occurs [#FS$$DIV] ; |1345| 
        MOVL      XAR6,ACC              ; |1345| 
        MOVU      ACC,AR1
        MOVL      XAR4,#_inputs+58      ; |1345| 
        LSL       ACC,1                 ; |1345| 
        ADDL      XAR4,ACC
        ADDB      XAR1,#1               ; |1340| 
        MOV       AL,AR1                ; |1340| 
        CMPB      AL,#14                ; |1340| 
        MOVL      *+XAR4[0],XAR6        ; |1345| 
	.dwpsn	"adc.c",1346,0
        BF        L140,LO               ; |1340| 
        ; branchcc occurs ; |1340| 
DW$L$_SetupScaling$2$E:
        LCR       #_SaveSafeStruct1     ; |1351| 
        ; call occurs [#_SaveSafeStruct1] ; |1351| 
        LCR       #_SaveXtswplusAnaCal  ; |1352| 
        ; call occurs [#_SaveXtswplusAnaCal] ; |1352| 
	.dwpsn	"adc.c",1353,0
        MOVB      XAR1,#0
L141:    
DW$L$_SetupScaling$4$B:
        MOVL      XAR4,#_xtswplusanacal ; |1355| 
        MOV       AL,*+XAR4[AR1]        ; |1355| 
        LCR       #U$$TOFS              ; |1355| 
        ; call occurs [#U$$TOFS] ; |1355| 
        MOVL      XAR6,ACC              ; |1355| 
        MOV       AL,#0
        MOV       AH,#16784
        MOVL      *-SP[2],ACC           ; |1355| 
        MOVL      ACC,XAR6              ; |1355| 
        LCR       #FS$$DIV              ; |1355| 
        ; call occurs [#FS$$DIV] ; |1355| 
        MOVL      XAR2,ACC              ; |1355| 
        MOV       AL,#0
        MOV       AH,#16800
        MOVL      *-SP[2],ACC           ; |1357| 
        MOVL      ACC,XAR2              ; |1357| 
        LCR       #FS$$MPY              ; |1357| 
        ; call occurs [#FS$$MPY] ; |1357| 
        MOVL      *-SP[2],ACC           ; |1357| 
        MOV       AL,#61440
        MOV       AH,#17791
        LCR       #FS$$DIV              ; |1357| 
        ; call occurs [#FS$$DIV] ; |1357| 
        MOVL      XAR6,ACC              ; |1357| 
        MOVU      ACC,AR1
        MOVL      XAR4,#_inputs+238     ; |1357| 
        LSL       ACC,1                 ; |1357| 
        ADDL      XAR4,ACC
        ADDB      XAR1,#1               ; |1353| 
        MOV       AL,AR1                ; |1353| 
        CMPB      AL,#8                 ; |1353| 
        MOVL      *+XAR4[0],XAR6        ; |1357| 
	.dwpsn	"adc.c",1358,0
        BF        L141,LO               ; |1353| 
        ; branchcc occurs ; |1353| 
DW$L$_SetupScaling$4$E:
        SUBB      SP,#2
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"adc.c",1360,1
        LRETR
        ; return occurs

DW$234	.dwtag  DW_TAG_loop
	.dwattr DW$234, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L141:1:1471518965")
	.dwattr DW$234, DW_AT_begin_file("adc.c")
	.dwattr DW$234, DW_AT_begin_line(0x549)
	.dwattr DW$234, DW_AT_end_line(0x54e)
DW$235	.dwtag  DW_TAG_loop_range
	.dwattr DW$235, DW_AT_low_pc(DW$L$_SetupScaling$4$B)
	.dwattr DW$235, DW_AT_high_pc(DW$L$_SetupScaling$4$E)
	.dwendtag DW$234


DW$236	.dwtag  DW_TAG_loop
	.dwattr DW$236, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L140:1:1471518965")
	.dwattr DW$236, DW_AT_begin_file("adc.c")
	.dwattr DW$236, DW_AT_begin_line(0x53c)
	.dwattr DW$236, DW_AT_end_line(0x542)
DW$237	.dwtag  DW_TAG_loop_range
	.dwattr DW$237, DW_AT_low_pc(DW$L$_SetupScaling$2$B)
	.dwattr DW$237, DW_AT_high_pc(DW$L$_SetupScaling$2$E)
	.dwendtag DW$236

	.dwattr DW$233, DW_AT_end_file("adc.c")
	.dwattr DW$233, DW_AT_end_line(0x550)
	.dwattr DW$233, DW_AT_end_column(0x01)
	.dwendtag DW$233

	.sect	".text"
	.global	_Calibrate18mA

DW$238	.dwtag  DW_TAG_subprogram, DW_AT_name("Calibrate18mA"), DW_AT_symbol_name("_Calibrate18mA")
	.dwattr DW$238, DW_AT_low_pc(_Calibrate18mA)
	.dwattr DW$238, DW_AT_high_pc(0x00)
	.dwattr DW$238, DW_AT_begin_file("adc.c")
	.dwattr DW$238, DW_AT_begin_line(0x552)
	.dwattr DW$238, DW_AT_begin_column(0x06)
	.dwattr DW$238, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$238, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",1363,1

;***************************************************************
;* FNAME: _Calibrate18mA                FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_Calibrate18mA:
;* AL    assigned to _chan
DW$239	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$239, DW_AT_type(*DW$T$11)
	.dwattr DW$239, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVZ      AR1,AL                ; |1363| 
        LCR       #_ADCChanPtr          ; |1368| 
        ; call occurs [#_ADCChanPtr] ; |1368| 
        MOVW      DP,#_inputs
        MOV       AL,*+XAR4[0]          ; |1369| 
        MOVB      XAR5,#0
        LSR       AL,4                  ; |1369| 
        MOV       @_inputs,#0           ; |1370| 
	.dwpsn	"adc.c",1371,0
        MOVZ      AR6,AL                ; |1369| 
L142:    
DW$L$_Calibrate18mA$2$B:
	.dwpsn	"adc.c",1372,0
        MOVW      DP,#_inputs
        MOV       AL,@_inputs           ; |1373| 
        BF        L144,NEQ              ; |1373| 
        ; branchcc occurs ; |1373| 
DW$L$_Calibrate18mA$2$E:
L143:    
DW$L$_Calibrate18mA$3$B:
	.dwpsn	"adc.c",1373,0
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |1373| 
        MOVW      DP,#_inputs
        MOV       AL,@_inputs           ; |1373| 
        BF        L143,EQ               ; |1373| 
        ; branchcc occurs ; |1373| 
DW$L$_Calibrate18mA$3$E:
L144:    
DW$L$_Calibrate18mA$4$B:
        MOV       AL,*+XAR4[0]          ; |1374| 
        LSR       AL,4                  ; |1374| 
        SUB       AL,AR6                ; |1374| 
        MOVW      DP,#_inputs
        MOV       AH,AL                 ; |1374| 
        ADDB      XAR5,#1               ; |1371| 
        ASR       AH,2                  ; |1374| 
        LSR       AH,13                 ; |1374| 
        ADD       AH,AL                 ; |1374| 
        ASR       AH,3                  ; |1374| 
        MOV       @_inputs,#0           ; |1375| 
        ADD       AR6,AH                ; |1374| 
        CMP       AR5,#20000            ; |1371| 
	.dwpsn	"adc.c",1376,0
        BF        L142,LO               ; |1371| 
        ; branchcc occurs ; |1371| 
DW$L$_Calibrate18mA$4$E:
        MOVL      XAR4,#_safe1+2        ; |1377| 
        MOV       *+XAR4[AR1],AR6       ; |1377| 
        LCR       #_SaveSafeStruct1     ; |1378| 
        ; call occurs [#_SaveSafeStruct1] ; |1378| 
        MOVL      XAR1,*--SP
	.dwpsn	"adc.c",1379,1
        LRETR
        ; return occurs

DW$240	.dwtag  DW_TAG_loop
	.dwattr DW$240, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L142:1:1471518965")
	.dwattr DW$240, DW_AT_begin_file("adc.c")
	.dwattr DW$240, DW_AT_begin_line(0x55b)
	.dwattr DW$240, DW_AT_end_line(0x560)
DW$241	.dwtag  DW_TAG_loop_range
	.dwattr DW$241, DW_AT_low_pc(DW$L$_Calibrate18mA$2$B)
	.dwattr DW$241, DW_AT_high_pc(DW$L$_Calibrate18mA$2$E)
DW$242	.dwtag  DW_TAG_loop_range
	.dwattr DW$242, DW_AT_low_pc(DW$L$_Calibrate18mA$4$B)
	.dwattr DW$242, DW_AT_high_pc(DW$L$_Calibrate18mA$4$E)

DW$243	.dwtag  DW_TAG_loop
	.dwattr DW$243, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L143:2:1471518965")
	.dwattr DW$243, DW_AT_begin_file("adc.c")
	.dwattr DW$243, DW_AT_begin_line(0x55d)
	.dwattr DW$243, DW_AT_end_line(0x55d)
DW$244	.dwtag  DW_TAG_loop_range
	.dwattr DW$244, DW_AT_low_pc(DW$L$_Calibrate18mA$3$B)
	.dwattr DW$244, DW_AT_high_pc(DW$L$_Calibrate18mA$3$E)
	.dwendtag DW$243

	.dwendtag DW$240

	.dwattr DW$238, DW_AT_end_file("adc.c")
	.dwattr DW$238, DW_AT_end_line(0x563)
	.dwattr DW$238, DW_AT_end_column(0x01)
	.dwendtag DW$238

	.sect	".text"
	.global	_ADCChanPtr

DW$245	.dwtag  DW_TAG_subprogram, DW_AT_name("ADCChanPtr"), DW_AT_symbol_name("_ADCChanPtr")
	.dwattr DW$245, DW_AT_low_pc(_ADCChanPtr)
	.dwattr DW$245, DW_AT_high_pc(0x00)
	.dwattr DW$245, DW_AT_begin_file("adc.c")
	.dwattr DW$245, DW_AT_begin_line(0x565)
	.dwattr DW$245, DW_AT_begin_column(0x19)
	.dwattr DW$245, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$245, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",1382,1

;***************************************************************
;* FNAME: _ADCChanPtr                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ADCChanPtr:
;* AL    assigned to _chan
DW$246	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$246, DW_AT_type(*DW$T$11)
	.dwattr DW$246, DW_AT_location[DW_OP_reg0]
        MOV       AH,AL                 ; |1385| 
        ADDB      AH,#-1
        CMPB      AH,#12                ; |1385| 
        BF        L158,HI               ; |1385| 
        ; branchcc occurs ; |1385| 
        ADDB      AL,#-1
        LSL       AL,1                  ; |1385| 
        MOVZ      AR6,AL                ; |1385| 
        MOVL      XAR7,#SW1             ; |1385| 
        MOVL      ACC,XAR7              ; |1385| 
        ADDU      ACC,AR6               ; |1385| 
        MOVL      XAR7,ACC              ; |1385| 
        PREAD     AL,*XAR7              ; |1385| 
        ADDB      XAR7,#1               ; |1385| 
        PREAD     AH,*XAR7              ; |1385| 
        MOVL      XAR7,ACC              ; |1385| 
        LB        *XAR7                 ; |1385| 
        ; branch occurs ; |1385| 
	.sect	".switch"
SW1:	.long	L145	; 1
	.long	L146	; 2
	.long	L147	; 3
	.long	L148	; 4
	.long	L149	; 5
	.long	L150	; 6
	.long	L151	; 7
	.long	L152	; 8
	.long	L153	; 9
	.long	L154	; 10
	.long	L155	; 11
	.long	L156	; 12
	.long	L157	; 13
	.sect	".text"
L145:    
        MOVL      XAR4,#_adcregs+14     ; |1392| 
        BF        L159,UNC              ; |1392| 
        ; branch occurs ; |1392| 
L146:    
        MOVL      XAR4,#_adcregs+13     ; |1395| 
        BF        L159,UNC              ; |1395| 
        ; branch occurs ; |1395| 
L147:    
        MOVL      XAR4,#_adcregs+12     ; |1398| 
        BF        L159,UNC              ; |1398| 
        ; branch occurs ; |1398| 
L148:    
        MOVL      XAR4,#_adcregs+11     ; |1401| 
        BF        L159,UNC              ; |1401| 
        ; branch occurs ; |1401| 
L149:    
        MOVL      XAR4,#_adcregs+10     ; |1404| 
        BF        L159,UNC              ; |1404| 
        ; branch occurs ; |1404| 
L150:    
        MOVL      XAR4,#_adcregs+9      ; |1407| 
        BF        L159,UNC              ; |1407| 
        ; branch occurs ; |1407| 
L151:    
        MOVL      XAR4,#_adcregs+8      ; |1410| 
        BF        L159,UNC              ; |1410| 
        ; branch occurs ; |1410| 
L152:    
        MOVL      XAR4,#_adcregs+16     ; |1413| 
        BF        L159,UNC              ; |1413| 
        ; branch occurs ; |1413| 
L153:    
        MOVL      XAR4,#_adcregs+17     ; |1416| 
        BF        L159,UNC              ; |1416| 
        ; branch occurs ; |1416| 
L154:    
        MOVL      XAR4,#_adcregs+18     ; |1419| 
        BF        L159,UNC              ; |1419| 
        ; branch occurs ; |1419| 
L155:    
        MOVL      XAR4,#_adcregs+19     ; |1422| 
        BF        L159,UNC              ; |1422| 
        ; branch occurs ; |1422| 
L156:    
        MOVL      XAR4,#_adcregs+20     ; |1425| 
        BF        L159,UNC              ; |1425| 
        ; branch occurs ; |1425| 
L157:    
        MOVL      XAR4,#_adcregs+21     ; |1428| 
        BF        L159,UNC              ; |1428| 
        ; branch occurs ; |1428| 
L158:    
        MOVL      XAR4,#_adcregs+15     ; |1430| 
L159:    
	.dwpsn	"adc.c",1431,1
        LRETR
        ; return occurs
	.dwattr DW$245, DW_AT_end_file("adc.c")
	.dwattr DW$245, DW_AT_end_line(0x597)
	.dwattr DW$245, DW_AT_end_column(0x01)
	.dwendtag DW$245

	.sect	".text"
	.global	_SetupConstantCurrentMux

DW$247	.dwtag  DW_TAG_subprogram, DW_AT_name("SetupConstantCurrentMux"), DW_AT_symbol_name("_SetupConstantCurrentMux")
	.dwattr DW$247, DW_AT_low_pc(_SetupConstantCurrentMux)
	.dwattr DW$247, DW_AT_high_pc(0x00)
	.dwattr DW$247, DW_AT_begin_file("adc.c")
	.dwattr DW$247, DW_AT_begin_line(0x59a)
	.dwattr DW$247, DW_AT_begin_column(0x06)
	.dwattr DW$247, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$247, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",1435,1

;***************************************************************
;* FNAME: _SetupConstantCurrentMux      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SetupConstantCurrentMux:
 eallow             ; Enable accesses to PIE control registers
        MOV       AL,*(0:0x70cd)        ; |1437| 
        ORB       AL,#0x60              ; |1437| 
        MOV       *(0:0x70cd),AL        ; |1437| 
 edis               ; Disable accesses to PIE control registers
        MOVW      DP,#_gpd
        AND       @_gpd,#0xffdf         ; |1439| 
        MOVB      XAR0,#17              ; |1442| 
        MOVW      DP,#_gpd
        MOVL      XAR4,#_sensor         ; |1442| 
        AND       @_gpd,#0xffbf         ; |1439| 
        MOV       *+XAR4[AR0],#0        ; |1442| 
        MOVB      XAR0,#35              ; |1443| 
        MOV       *+XAR4[AR0],#0        ; |1443| 
        MOVB      XAR0,#53              ; |1444| 
        MOV       *+XAR4[AR0],#0        ; |1444| 
        MOVW      DP,#_timers+9
        MOVB      XAR0,#71              ; |1445| 
        MOV       *+XAR4[AR0],#0        ; |1445| 
        MOV       @_timers+9,#0         ; |1447| 
        MOVW      DP,#_inputs+226
        MOVL      XAR4,#_inputs+228     ; |1451| 
        MOV       @_inputs+226,#0       ; |1448| 
        MOV       *+XAR4[0],#-32767     ; |1451| 
        MOV       *+XAR4[1],#-32767     ; |1452| 
        MOV       *+XAR4[2],#-32767     ; |1453| 
        MOV       *+XAR4[3],#-32767     ; |1454| 
        MOV       *+XAR4[4],#-32767     ; |1455| 
        MOV       *+XAR4[5],#-32767     ; |1456| 
        MOVW      DP,#_inputs+236
        MOV       *+XAR4[6],#-32767     ; |1457| 
        MOV       *+XAR4[7],#-32767     ; |1458| 
        MOV       @_inputs+236,#0       ; |1459| 
        MOVW      DP,#_gpa
        AND       @_gpa,#0xfffe         ; |1462| 
        MOVW      DP,#_gpa
        AND       @_gpa,#0xfffd         ; |1462| 
        MOVW      DP,#_gpa
        AND       @_gpa,#0xfffb         ; |1462| 
        MOVW      DP,#_timers+67
        MOV       @_timers+67,#10       ; |1463| 
        NOP
        SPM       #0
	.dwpsn	"adc.c",1466,1
        LRETR
        ; return occurs
	.dwattr DW$247, DW_AT_end_file("adc.c")
	.dwattr DW$247, DW_AT_end_line(0x5ba)
	.dwattr DW$247, DW_AT_end_column(0x01)
	.dwendtag DW$247

	.sect	".text"
	.global	_CalibratePRT

DW$248	.dwtag  DW_TAG_subprogram, DW_AT_name("CalibratePRT"), DW_AT_symbol_name("_CalibratePRT")
	.dwattr DW$248, DW_AT_low_pc(_CalibratePRT)
	.dwattr DW$248, DW_AT_high_pc(0x00)
	.dwattr DW$248, DW_AT_begin_file("adc.c")
	.dwattr DW$248, DW_AT_begin_line(0x5bf)
	.dwattr DW$248, DW_AT_begin_column(0x06)
	.dwattr DW$248, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$248, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",1472,1

;***************************************************************
;* FNAME: _CalibratePRT                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CalibratePRT:
;* AL    assigned to _zeroorfullscale
DW$249	.dwtag  DW_TAG_formal_parameter, DW_AT_name("zeroorfullscale"), DW_AT_symbol_name("_zeroorfullscale")
	.dwattr DW$249, DW_AT_type(*DW$T$11)
	.dwattr DW$249, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _chan
DW$250	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$250, DW_AT_type(*DW$T$11)
	.dwattr DW$250, DW_AT_location[DW_OP_reg1]
        CMPB      AH,#0                 ; |1476| 
        MOVZ      AR0,AH                ; |1472| 
        BF        L163,EQ               ; |1476| 
        ; branchcc occurs ; |1476| 
        CMPB      AH,#1                 ; |1476| 
        BF        L162,EQ               ; |1476| 
        ; branchcc occurs ; |1476| 
        CMPB      AH,#2                 ; |1476| 
        BF        L160,EQ               ; |1476| 
        ; branchcc occurs ; |1476| 
        CMPB      AH,#3                 ; |1476| 
        BF        L165,NEQ              ; |1476| 
        ; branchcc occurs ; |1476| 
        MOVW      DP,#_gpd
        OR        @_gpd,#0x0020         ; |1488| 
        BF        L161,UNC              ; |1489| 
        ; branch occurs ; |1489| 
L160:    
        MOVW      DP,#_gpd
        AND       @_gpd,#0xffdf         ; |1485| 
L161:    
        MOVW      DP,#_gpd
        OR        @_gpd,#0x0040         ; |1485| 
        BF        L165,UNC              ; |1486| 
        ; branch occurs ; |1486| 
L162:    
        MOVW      DP,#_gpd
        OR        @_gpd,#0x0020         ; |1482| 
        BF        L164,UNC              ; |1483| 
        ; branch occurs ; |1483| 
L163:    
        MOVW      DP,#_gpd
        AND       @_gpd,#0xffdf         ; |1479| 
L164:    
        MOVW      DP,#_gpd
        AND       @_gpd,#0xffbf         ; |1479| 
L165:    
        MOVW      DP,#_timers+9
        MOV       @_timers+9,#100       ; |1492| 
        NOP
        MOVW      DP,#_timers+9
        MOV       AH,@_timers+9         ; |1493| 
        BF        L167,EQ               ; |1493| 
        ; branchcc occurs ; |1493| 
L166:    
DW$L$_CalibratePRT$12$B:
	.dwpsn	"adc.c",1493,0
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |1493| 
        MOVW      DP,#_timers+9
        MOV       AH,@_timers+9         ; |1493| 
        BF        L166,NEQ              ; |1493| 
        ; branchcc occurs ; |1493| 
DW$L$_CalibratePRT$12$E:
L167:    
        MOVW      DP,#_adcdata
        MOV       AH,@_adcdata          ; |1495| 
        MOVB      XAR4,#0
        MOVW      DP,#_inputs
        LSR       AH,4                  ; |1495| 
        MOV       @_inputs,#0           ; |1496| 
	.dwpsn	"adc.c",1497,0
        MOVZ      AR7,AH                ; |1495| 
L168:    
DW$L$_CalibratePRT$14$B:
	.dwpsn	"adc.c",1498,0
        MOVW      DP,#_inputs
        MOV       AH,@_inputs           ; |1499| 
        BF        L170,NEQ              ; |1499| 
        ; branchcc occurs ; |1499| 
DW$L$_CalibratePRT$14$E:
L169:    
DW$L$_CalibratePRT$15$B:
	.dwpsn	"adc.c",1499,0
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |1499| 
        MOVW      DP,#_inputs
        MOV       AH,@_inputs           ; |1499| 
        BF        L169,EQ               ; |1499| 
        ; branchcc occurs ; |1499| 
DW$L$_CalibratePRT$15$E:
L170:    
DW$L$_CalibratePRT$16$B:
        MOVW      DP,#_adcdata
        MOV       AH,@_adcdata          ; |1500| 
        LSR       AH,4                  ; |1500| 
        SUB       AH,AR7                ; |1500| 
        ADDB      XAR4,#1               ; |1497| 
        MOVZ      AR6,AH                ; |1500| 
        ASR       AH,2                  ; |1500| 
        LSR       AH,13                 ; |1500| 
        MOVW      DP,#_inputs
        ADD       AH,AR6                ; |1500| 
        ASR       AH,3                  ; |1500| 
        MOV       @_inputs,#0           ; |1501| 
        ADD       AR7,AH                ; |1500| 
        CMP       AR4,#20000            ; |1497| 
	.dwpsn	"adc.c",1502,0
        BF        L168,LO               ; |1497| 
        ; branchcc occurs ; |1497| 
DW$L$_CalibratePRT$16$E:
        CMPB      AL,#0                 ; |1503| 
        BF        L171,NEQ              ; |1503| 
        ; branchcc occurs ; |1503| 
        MOVL      XAR4,#_safe2          ; |1503| 
        BF        L172,UNC              ; |1503| 
        ; branch occurs ; |1503| 
L171:    
        MOVL      XAR4,#_safe2+4        ; |1504| 
L172:    
        MOV       *+XAR4[AR0],AR7       ; |1504| 
        LCR       #_SaveSafeStruct2     ; |1505| 
        ; call occurs [#_SaveSafeStruct2] ; |1505| 
	.dwpsn	"adc.c",1506,1
        LRETR
        ; return occurs

DW$251	.dwtag  DW_TAG_loop
	.dwattr DW$251, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L168:1:1471518965")
	.dwattr DW$251, DW_AT_begin_file("adc.c")
	.dwattr DW$251, DW_AT_begin_line(0x5d9)
	.dwattr DW$251, DW_AT_end_line(0x5de)
DW$252	.dwtag  DW_TAG_loop_range
	.dwattr DW$252, DW_AT_low_pc(DW$L$_CalibratePRT$14$B)
	.dwattr DW$252, DW_AT_high_pc(DW$L$_CalibratePRT$14$E)
DW$253	.dwtag  DW_TAG_loop_range
	.dwattr DW$253, DW_AT_low_pc(DW$L$_CalibratePRT$16$B)
	.dwattr DW$253, DW_AT_high_pc(DW$L$_CalibratePRT$16$E)

DW$254	.dwtag  DW_TAG_loop
	.dwattr DW$254, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L169:2:1471518965")
	.dwattr DW$254, DW_AT_begin_file("adc.c")
	.dwattr DW$254, DW_AT_begin_line(0x5db)
	.dwattr DW$254, DW_AT_end_line(0x5db)
DW$255	.dwtag  DW_TAG_loop_range
	.dwattr DW$255, DW_AT_low_pc(DW$L$_CalibratePRT$15$B)
	.dwattr DW$255, DW_AT_high_pc(DW$L$_CalibratePRT$15$E)
	.dwendtag DW$254

	.dwendtag DW$251


DW$256	.dwtag  DW_TAG_loop
	.dwattr DW$256, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L166:1:1471518965")
	.dwattr DW$256, DW_AT_begin_file("adc.c")
	.dwattr DW$256, DW_AT_begin_line(0x5d5)
	.dwattr DW$256, DW_AT_end_line(0x5d5)
DW$257	.dwtag  DW_TAG_loop_range
	.dwattr DW$257, DW_AT_low_pc(DW$L$_CalibratePRT$12$B)
	.dwattr DW$257, DW_AT_high_pc(DW$L$_CalibratePRT$12$E)
	.dwendtag DW$256

	.dwattr DW$248, DW_AT_end_file("adc.c")
	.dwattr DW$248, DW_AT_end_line(0x5e2)
	.dwattr DW$248, DW_AT_end_column(0x01)
	.dwendtag DW$248

	.sect	".text"
	.global	_ReadPRT

DW$258	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadPRT"), DW_AT_symbol_name("_ReadPRT")
	.dwattr DW$258, DW_AT_low_pc(_ReadPRT)
	.dwattr DW$258, DW_AT_high_pc(0x00)
	.dwattr DW$258, DW_AT_begin_file("adc.c")
	.dwattr DW$258, DW_AT_begin_line(0x5e4)
	.dwattr DW$258, DW_AT_begin_column(0x06)
	.dwattr DW$258, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$258, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",1509,1

;***************************************************************
;* FNAME: _ReadPRT                      FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_ReadPRT:
        MOVL      *SP++,XAR1
        MOVW      DP,#_timers+9
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOV       AL,@_timers+9         ; |1513| 
        ADDB      SP,#2
        BF        L183,NEQ              ; |1513| 
        ; branchcc occurs ; |1513| 
        MOVW      DP,#_inputs+226
        MOV       AL,@_inputs+226       ; |1515| 
        LCR       #_PRTConversion       ; |1515| 
        ; call occurs [#_PRTConversion] ; |1515| 
        LCR       #I$$TOFS              ; |1515| 
        ; call occurs [#I$$TOFS] ; |1515| 
        MOVL      XAR3,#_sensor         ; |1516| 
        MOVW      DP,#_inputs+226
        MOVL      XAR4,XAR3             ; |1516| 
        MOVL      XAR2,ACC              ; |1515| 
        MOV       T,#18                 ; |1516| 
        MPYXU     ACC,T,@_inputs+226    ; |1516| 
        ADDL      XAR4,ACC
        MOVB      XAR0,#17              ; |1516| 
        MOV       AL,*+XAR4[AR0]        ; |1516| 
        LCR       #I$$TOFS              ; |1516| 
        ; call occurs [#I$$TOFS] ; |1516| 
        MOVL      XAR1,ACC              ; |1516| 
        MOV       AL,#0
        MOV       AH,#17096
        MOVL      *-SP[2],ACC           ; |1517| 
        MOVL      ACC,XAR1              ; |1517| 
        LCR       #FS$$CMP              ; |1517| 
        ; call occurs [#FS$$CMP] ; |1517| 
        CMPB      AL,#0                 ; |1517| 
        BF        L173,LT               ; |1517| 
        ; branchcc occurs ; |1517| 
        MOVL      *-SP[2],XAR1          ; |1524| 
        MOVL      ACC,XAR2              ; |1524| 
        LCR       #FS$$SUB              ; |1524| 
        ; call occurs [#FS$$SUB] ; |1524| 
        MOVL      XAR6,ACC              ; |1524| 
        MOV       ACC,#31744 << 15
        MOVL      *-SP[2],ACC           ; |1524| 
        MOVL      ACC,XAR6              ; |1524| 
        LCR       #FS$$MPY              ; |1524| 
        ; call occurs [#FS$$MPY] ; |1524| 
        MOVL      *-SP[2],ACC           ; |1524| 
        MOVL      ACC,XAR1              ; |1524| 
        LCR       #FS$$ADD              ; |1524| 
        ; call occurs [#FS$$ADD] ; |1524| 
        LCR       #FS$$TOI              ; |1524| 
        ; call occurs [#FS$$TOI] ; |1524| 
        MOV       T,#18                 ; |1524| 
        MOVZ      AR6,AL                ; |1524| 
        MOVW      DP,#_inputs+226
        MPYXU     ACC,T,@_inputs+226    ; |1524| 
        ADDL      XAR3,ACC
        MOVB      XAR0,#17              ; |1524| 
        MOV       *+XAR3[AR0],AR6       ; |1524| 
        BF        L174,UNC              ; |1524| 
        ; branch occurs ; |1524| 
L173:    
        MOVL      ACC,XAR2              ; |1519| 
        LCR       #FS$$TOI              ; |1519| 
        ; call occurs [#FS$$TOI] ; |1519| 
        MOV       T,#18                 ; |1519| 
        MOVW      DP,#_inputs+226
        MOVZ      AR6,AL                ; |1519| 
        MOVL      XAR4,#_sensor+17      ; |1519| 
        MPYXU     ACC,T,@_inputs+226    ; |1519| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],AR6         ; |1519| 
L174:    
        MOVW      DP,#_inputs+226
        MOV       AL,@_inputs+226       ; |1520| 
        CMPB      AL,#3                 ; |1520| 
        BF        L175,LO               ; |1520| 
        ; branchcc occurs ; |1520| 
        MOVW      DP,#_inputs+226
        MOV       @_inputs+226,#0       ; |1527| 
        BF        L176,UNC              ; |1527| 
        ; branch occurs ; |1527| 
L175:    
        MOVW      DP,#_inputs+226
        INC       @_inputs+226          ; |1526| 
L176:    
        MOVW      DP,#_inputs+226
        MOV       AL,@_inputs+226       ; |1528| 
        BF        L180,EQ               ; |1528| 
        ; branchcc occurs ; |1528| 
        CMPB      AL,#1                 ; |1528| 
        BF        L179,EQ               ; |1528| 
        ; branchcc occurs ; |1528| 
        CMPB      AL,#2                 ; |1528| 
        BF        L177,EQ               ; |1528| 
        ; branchcc occurs ; |1528| 
        CMPB      AL,#3                 ; |1528| 
        BF        L182,NEQ              ; |1528| 
        ; branchcc occurs ; |1528| 
        MOVW      DP,#_gpd
        OR        @_gpd,#0x0020         ; |1540| 
        BF        L178,UNC              ; |1541| 
        ; branch occurs ; |1541| 
L177:    
        MOVW      DP,#_gpd
        AND       @_gpd,#0xffdf         ; |1537| 
L178:    
        MOVW      DP,#_gpd
        OR        @_gpd,#0x0040         ; |1537| 
        BF        L182,UNC              ; |1538| 
        ; branch occurs ; |1538| 
L179:    
        MOVW      DP,#_gpd
        OR        @_gpd,#0x0020         ; |1534| 
        BF        L181,UNC              ; |1535| 
        ; branch occurs ; |1535| 
L180:    
        MOVW      DP,#_gpd
        AND       @_gpd,#0xffdf         ; |1531| 
L181:    
        MOVW      DP,#_gpd
        AND       @_gpd,#0xffbf         ; |1531| 
L182:    
        MOVW      DP,#_timers+9
        MOV       @_timers+9,#4         ; |1543| 
L183:    
        SUBB      SP,#2
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"adc.c",1545,1
        LRETR
        ; return occurs
	.dwattr DW$258, DW_AT_end_file("adc.c")
	.dwattr DW$258, DW_AT_end_line(0x609)
	.dwattr DW$258, DW_AT_end_column(0x01)
	.dwendtag DW$258

	.sect	".text"
	.global	_PRTConversion

DW$259	.dwtag  DW_TAG_subprogram, DW_AT_name("PRTConversion"), DW_AT_symbol_name("_PRTConversion")
	.dwattr DW$259, DW_AT_low_pc(_PRTConversion)
	.dwattr DW$259, DW_AT_high_pc(0x00)
	.dwattr DW$259, DW_AT_begin_file("adc.c")
	.dwattr DW$259, DW_AT_begin_line(0x618)
	.dwattr DW$259, DW_AT_begin_column(0x05)
	.dwattr DW$259, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$259, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",1561,1

;***************************************************************
;* FNAME: _PRTConversion                FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_PRTConversion:
;* AL    assigned to _i
DW$260	.dwtag  DW_TAG_formal_parameter, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$260, DW_AT_type(*DW$T$6)
	.dwattr DW$260, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVW      DP,#_adcdata
        MOVZ      AR1,AL                ; |1561| 
        MOVL      *SP++,XAR2
        MOVL      XAR4,#_safe2          ; |1573| 
        MOVL      *SP++,XAR3
        MOV       AL,@_adcdata          ; |1573| 
        ADDB      SP,#2
        LSR       AL,4                  ; |1573| 
        MOVZ      AR3,*+XAR4[AR1]       ; |1573| 
        LCR       #U$$TOFS              ; |1573| 
        ; call occurs [#U$$TOFS] ; |1573| 
        MOVL      XAR2,ACC              ; |1573| 
        MOV       AL,AR3                ; |1573| 
        LCR       #U$$TOFS              ; |1573| 
        ; call occurs [#U$$TOFS] ; |1573| 
        MOVL      *-SP[2],ACC           ; |1573| 
        MOVL      ACC,XAR2              ; |1573| 
        LCR       #FS$$SUB              ; |1573| 
        ; call occurs [#FS$$SUB] ; |1573| 
        MOVL      XAR2,ACC              ; |1573| 
        MOVL      XAR4,#_safe2+4        ; |1573| 
        MOV       AL,*+XAR4[AR1]        ; |1573| 
        SUB       AL,AR3                ; |1573| 
        LCR       #U$$TOFS              ; |1573| 
        ; call occurs [#U$$TOFS] ; |1573| 
        MOVL      *-SP[2],ACC           ; |1573| 
        MOV       AL,#45056
        MOV       AH,#17776
        LCR       #FS$$DIV              ; |1573| 
        ; call occurs [#FS$$DIV] ; |1573| 
        MOVL      *-SP[2],ACC           ; |1573| 
        MOVL      ACC,XAR2              ; |1573| 
        LCR       #FS$$MPY              ; |1573| 
        ; call occurs [#FS$$MPY] ; |1573| 
        MOVL      XAR6,ACC              ; |1573| 
        MOV       AL,#16384
        MOV       AH,#17948
        MOVL      *-SP[2],ACC           ; |1573| 
        MOVL      ACC,XAR6              ; |1573| 
        LCR       #FS$$ADD              ; |1573| 
        ; call occurs [#FS$$ADD] ; |1573| 
        MOVL      *-SP[2],ACC           ; |1576| 
        MOV       AL,#16384
        MOV       AH,#17948
        LCR       #FS$$SUB              ; |1576| 
        ; call occurs [#FS$$SUB] ; |1576| 
        MOVL      XAR6,ACC              ; |1576| 
        MOV       AL,#15414
        MOV       AH,#48317
        MOVL      *-SP[2],ACC           ; |1576| 
        MOVL      ACC,XAR6              ; |1576| 
        LCR       #FS$$MPY              ; |1576| 
        ; call occurs [#FS$$MPY] ; |1576| 
        MOVL      *-SP[2],ACC           ; |1576| 
        MOV       AL,#61284
        MOV       AH,#17598
        LCR       #FS$$SUB              ; |1576| 
        ; call occurs [#FS$$SUB] ; |1576| 
        LCR       #_sqrt                ; |1576| 
        ; call occurs [#_sqrt] ; |1576| 
        MOVL      XAR6,ACC              ; |1576| 
        MOV       AL,#21758
        MOV       AH,#16924
        MOVL      *-SP[2],ACC           ; |1576| 
        MOVL      ACC,XAR6              ; |1576| 
        LCR       #FS$$SUB              ; |1576| 
        ; call occurs [#FS$$SUB] ; |1576| 
        MOVL      XAR6,ACC              ; |1576| 
        MOV       AL,#15414
        MOV       AH,#48189
        MOVL      *-SP[2],ACC           ; |1576| 
        MOVL      ACC,XAR6              ; |1576| 
        LCR       #FS$$DIV              ; |1576| 
        ; call occurs [#FS$$DIV] ; |1576| 
        MOVL      XAR1,ACC              ; |1576| 
        MOV       AL,#0
        MOV       AH,#16672
        MOVL      *-SP[2],ACC           ; |1578| 
        MOVL      ACC,XAR1              ; |1578| 
        LCR       #FS$$MPY              ; |1578| 
        ; call occurs [#FS$$MPY] ; |1578| 
        MOVL      XAR1,ACC              ; |1578| 
        MOVL      XAR6,ACC              ; |1578| 
        MOV       AL,#0
        MOV       AH,#0
        MOVL      *-SP[2],ACC           ; |1578| 
        MOVL      ACC,XAR6              ; |1578| 
        LCR       #FS$$CMP              ; |1578| 
        ; call occurs [#FS$$CMP] ; |1578| 
        CMPB      AL,#0                 ; |1578| 
        BF        L184,LT               ; |1578| 
        ; branchcc occurs ; |1578| 
        MOV       AL,#16384
        MOV       AH,#17564
        MOVL      *-SP[2],ACC           ; |1579| 
        MOVL      ACC,XAR1              ; |1579| 
        LCR       #FS$$CMP              ; |1579| 
        ; call occurs [#FS$$CMP] ; |1579| 
        CMPB      AL,#0                 ; |1579| 
        BF        L186,LEQ              ; |1579| 
        ; branchcc occurs ; |1579| 
        MOV       AL,#63488
        BF        L185,UNC              ; |1579| 
        ; branch occurs ; |1579| 
L184:    
        MOV       AL,#64000
L185:    
        MOV       AH,#50943
        MOVL      XAR1,ACC              ; |1578| 
L186:    
        MOVL      ACC,XAR1
        LCR       #FS$$TOI              ; |1580| 
        ; call occurs [#FS$$TOI] ; |1580| 
        SUBB      SP,#2                 ; |1580| 
        MOVL      XAR3,*--SP            ; |1580| 
        MOVL      XAR2,*--SP            ; |1580| 
        MOVL      XAR1,*--SP            ; |1580| 
	.dwpsn	"adc.c",1583,1
        LRETR
        ; return occurs
	.dwattr DW$259, DW_AT_end_file("adc.c")
	.dwattr DW$259, DW_AT_end_line(0x62f)
	.dwattr DW$259, DW_AT_end_column(0x01)
	.dwendtag DW$259

	.sect	".text"
	.global	_GetVoltageStatus

DW$261	.dwtag  DW_TAG_subprogram, DW_AT_name("GetVoltageStatus"), DW_AT_symbol_name("_GetVoltageStatus")
	.dwattr DW$261, DW_AT_low_pc(_GetVoltageStatus)
	.dwattr DW$261, DW_AT_high_pc(0x00)
	.dwattr DW$261, DW_AT_begin_file("adc.c")
	.dwattr DW$261, DW_AT_begin_line(0x633)
	.dwattr DW$261, DW_AT_begin_column(0x05)
	.dwattr DW$261, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$261, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",1588,1

;***************************************************************
;* FNAME: _GetVoltageStatus             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_GetVoltageStatus:
        MOVB      AL,#1                 ; |1592| 
	.dwpsn	"adc.c",1593,1
        LRETR
        ; return occurs
	.dwattr DW$261, DW_AT_end_file("adc.c")
	.dwattr DW$261, DW_AT_end_line(0x639)
	.dwattr DW$261, DW_AT_end_column(0x01)
	.dwendtag DW$261

	.sect	".text"
	.global	_ReadAnalog

DW$262	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadAnalog"), DW_AT_symbol_name("_ReadAnalog")
	.dwattr DW$262, DW_AT_low_pc(_ReadAnalog)
	.dwattr DW$262, DW_AT_high_pc(0x00)
	.dwattr DW$262, DW_AT_begin_file("adc.c")
	.dwattr DW$262, DW_AT_begin_line(0x63f)
	.dwattr DW$262, DW_AT_begin_column(0x06)
	.dwattr DW$262, DW_AT_frame_base[DW_OP_breg20 -12]
	.dwattr DW$262, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",1600,1

;***************************************************************
;* FNAME: _ReadAnalog                   FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  2 Auto,  6 SOE     *
;***************************************************************

_ReadAnalog:
        MOVL      *SP++,XAR1
        MOVW      DP,#_timers+67
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOV       AL,@_timers+67        ; |1606| 
        ADDB      SP,#4
        BF        L208,NEQ              ; |1606| 
        ; branchcc occurs ; |1606| 
        MOVW      DP,#_inputs+236
        MOV       AL,@_inputs+236       ; |1609| 
        CMPB      AL,#3                 ; |1609| 
        BF        L187,EQ               ; |1609| 
        ; branchcc occurs ; |1609| 
        MOVW      DP,#_adcdata+1
        MOV       AL,@_adcdata+1        ; |1617| 
        LSR       AL,4                  ; |1617| 
        LCR       #U$$TOFS              ; |1617| 
        ; call occurs [#U$$TOFS] ; |1617| 
        MOVW      DP,#_inputs+236
        MOVL      XAR6,ACC              ; |1617| 
        MOVU      ACC,@_inputs+236
        MOVL      XAR4,#_inputs+238     ; |1617| 
        LSL       ACC,1                 ; |1617| 
        ADDL      XAR4,ACC
        MOVL      ACC,*+XAR4[0]         ; |1617| 
        MOVL      *-SP[2],ACC           ; |1617| 
        MOVL      ACC,XAR6              ; |1617| 
        LCR       #FS$$MPY              ; |1617| 
        ; call occurs [#FS$$MPY] ; |1617| 
        MOVL      XAR2,ACC              ; |1617| 
        MOV       AH,#16512
        BF        L188,UNC              ; |1618| 
        ; branch occurs ; |1618| 
L187:    
        MOVW      DP,#_adcdata+1
        MOV       AL,@_adcdata+1        ; |1611| 
        LSR       AL,4                  ; |1611| 
        LCR       #U$$TOFS              ; |1611| 
        ; call occurs [#U$$TOFS] ; |1611| 
        MOVL      XAR2,ACC              ; |1611| 
        MOV       AH,#16840
L188:    
        MOVW      DP,#_inputs+236
        MOVZ      AR0,@_inputs+236      ; |1620| 
        MOV       AL,#0
        MOVL      XAR3,#_inputs+228     ; |1620| 
        MOVL      *-SP[4],ACC           ; |1612| 
        MOV       AL,*+XAR3[AR0]        ; |1620| 
        LCR       #I$$TOFS              ; |1620| 
        ; call occurs [#I$$TOFS] ; |1620| 
        MOVL      XAR1,ACC              ; |1620| 
        MOV       AL,#65024
        MOV       AH,#50943
        MOVL      *-SP[2],ACC           ; |1622| 
        MOVL      ACC,XAR1              ; |1622| 
        LCR       #FS$$CMP              ; |1622| 
        ; call occurs [#FS$$CMP] ; |1622| 
        CMPB      AL,#0                 ; |1622| 
        BF        L189,EQ               ; |1622| 
        ; branchcc occurs ; |1622| 
        MOVL      *-SP[2],XAR1          ; |1629| 
        MOVL      ACC,XAR2              ; |1629| 
        LCR       #FS$$SUB              ; |1629| 
        ; call occurs [#FS$$SUB] ; |1629| 
        MOVL      XAR6,*-SP[4]          ; |1629| 
        MOVL      *-SP[2],XAR6          ; |1629| 
        LCR       #FS$$DIV              ; |1629| 
        ; call occurs [#FS$$DIV] ; |1629| 
        MOVL      *-SP[2],ACC           ; |1629| 
        MOVL      ACC,XAR1              ; |1629| 
        LCR       #FS$$ADD              ; |1629| 
        ; call occurs [#FS$$ADD] ; |1629| 
        LCR       #FS$$TOI              ; |1629| 
        ; call occurs [#FS$$TOI] ; |1629| 
        MOVW      DP,#_inputs+236
        MOVZ      AR0,@_inputs+236      ; |1629| 
        MOV       *+XAR3[AR0],AL        ; |1629| 
        BF        L190,UNC              ; |1629| 
        ; branch occurs ; |1629| 
L189:    
        MOVL      ACC,XAR2              ; |1624| 
        LCR       #FS$$TOI              ; |1624| 
        ; call occurs [#FS$$TOI] ; |1624| 
        MOVW      DP,#_inputs+236
        MOVZ      AR0,@_inputs+236      ; |1624| 
        MOVL      XAR4,#_inputs+228     ; |1624| 
        MOV       *+XAR4[AR0],AL        ; |1624| 
        NOP
L190:    
        MOVW      DP,#_inputs+236
        MOV       AL,@_inputs+236       ; |1625| 
        CMPB      AL,#7                 ; |1625| 
        BF        L191,LO               ; |1625| 
        ; branchcc occurs ; |1625| 
        MOVW      DP,#_inputs+236
        MOV       @_inputs+236,#0       ; |1632| 
        BF        L192,UNC              ; |1632| 
        ; branch occurs ; |1632| 
L191:    
        MOVW      DP,#_inputs+236
        INC       @_inputs+236          ; |1631| 
L192:    
        MOVW      DP,#_inputs+236
        MOV       AL,@_inputs+236       ; |1634| 
        CMPB      AL,#4                 ; |1634| 
        BF        L193,GT               ; |1634| 
        ; branchcc occurs ; |1634| 
        CMPB      AL,#4                 ; |1634| 
        BF        L197,EQ               ; |1634| 
        ; branchcc occurs ; |1634| 
        CMPB      AL,#0                 ; |1634| 
        BF        L204,EQ               ; |1634| 
        ; branchcc occurs ; |1634| 
        CMPB      AL,#1                 ; |1634| 
        BF        L203,EQ               ; |1634| 
        ; branchcc occurs ; |1634| 
        CMPB      AL,#2                 ; |1634| 
        BF        L201,EQ               ; |1634| 
        ; branchcc occurs ; |1634| 
        CMPB      AL,#3                 ; |1634| 
        BF        L200,EQ               ; |1634| 
        ; branchcc occurs ; |1634| 
        BF        L207,UNC              ; |1634| 
        ; branch occurs ; |1634| 
L193:    
        CMPB      AL,#5                 ; |1634| 
        BF        L196,EQ               ; |1634| 
        ; branchcc occurs ; |1634| 
        CMPB      AL,#6                 ; |1634| 
        BF        L194,EQ               ; |1634| 
        ; branchcc occurs ; |1634| 
        CMPB      AL,#7                 ; |1634| 
        BF        L207,NEQ              ; |1634| 
        ; branchcc occurs ; |1634| 
        MOVW      DP,#_gpa
        OR        @_gpa,#0x0001         ; |1658| 
        BF        L195,UNC              ; |1659| 
        ; branch occurs ; |1659| 
L194:    
        MOVW      DP,#_gpa
        AND       @_gpa,#0xfffe         ; |1655| 
L195:    
        MOVW      DP,#_gpa
        OR        @_gpa,#0x0002         ; |1655| 
        BF        L199,UNC              ; |1656| 
        ; branch occurs ; |1656| 
L196:    
        MOVW      DP,#_gpa
        OR        @_gpa,#0x0001         ; |1652| 
        BF        L198,UNC              ; |1653| 
        ; branch occurs ; |1653| 
L197:    
        MOVW      DP,#_gpa
        AND       @_gpa,#0xfffe         ; |1649| 
L198:    
        MOVW      DP,#_gpa
        AND       @_gpa,#0xfffd         ; |1649| 
L199:    
        MOVW      DP,#_gpa
        OR        @_gpa,#0x0004         ; |1649| 
        BF        L207,UNC              ; |1650| 
        ; branch occurs ; |1650| 
L200:    
        MOVW      DP,#_gpa
        OR        @_gpa,#0x0001         ; |1646| 
        BF        L202,UNC              ; |1647| 
        ; branch occurs ; |1647| 
L201:    
        MOVW      DP,#_gpa
        AND       @_gpa,#0xfffe         ; |1643| 
L202:    
        MOVW      DP,#_gpa
        OR        @_gpa,#0x0002         ; |1643| 
        BF        L206,UNC              ; |1644| 
        ; branch occurs ; |1644| 
L203:    
        MOVW      DP,#_gpa
        OR        @_gpa,#0x0001         ; |1640| 
        BF        L205,UNC              ; |1641| 
        ; branch occurs ; |1641| 
L204:    
        MOVW      DP,#_gpa
        AND       @_gpa,#0xfffe         ; |1637| 
L205:    
        MOVW      DP,#_gpa
        AND       @_gpa,#0xfffd         ; |1637| 
L206:    
        MOVW      DP,#_gpa
        AND       @_gpa,#0xfffb         ; |1637| 
L207:    
        MOVW      DP,#_timers+67
        MOV       @_timers+67,#10       ; |1661| 
        LCR       #_RTCBattery          ; |1664| 
        ; call occurs [#_RTCBattery] ; |1664| 
        MOVW      DP,#_settings+17
        MOV       AL,@_settings+17      ; |1666| 
        CMPB      AL,#1                 ; |1666| 
        BF        L208,NEQ              ; |1666| 
        ; branchcc occurs ; |1666| 
        LCR       #_AnalogSLEM          ; |1668| 
        ; call occurs [#_AnalogSLEM] ; |1668| 
        LCR       #_ProcessAnalogCpp    ; |1669| 
        ; call occurs [#_ProcessAnalogCpp] ; |1669| 
L208:    
        SUBB      SP,#4
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"adc.c",1672,1
        LRETR
        ; return occurs
	.dwattr DW$262, DW_AT_end_file("adc.c")
	.dwattr DW$262, DW_AT_end_line(0x688)
	.dwattr DW$262, DW_AT_end_column(0x01)
	.dwendtag DW$262

	.sect	".text"
	.global	_RTCBattery

DW$263	.dwtag  DW_TAG_subprogram, DW_AT_name("RTCBattery"), DW_AT_symbol_name("_RTCBattery")
	.dwattr DW$263, DW_AT_low_pc(_RTCBattery)
	.dwattr DW$263, DW_AT_high_pc(0x00)
	.dwattr DW$263, DW_AT_begin_file("adc.c")
	.dwattr DW$263, DW_AT_begin_line(0x697)
	.dwattr DW$263, DW_AT_begin_column(0x06)
	.dwattr DW$263, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$263, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",1688,1

;***************************************************************
;* FNAME: _RTCBattery                   FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_RTCBattery:
        MOVL      *SP++,XAR1
        MOVW      DP,#_xtswplusanacal+3
        ADDB      SP,#2
        MOV       AL,@_xtswplusanacal+3 ; |1693| 
        LCR       #U$$TOFS              ; |1693| 
        ; call occurs [#U$$TOFS] ; |1693| 
        MOVL      *-SP[2],ACC           ; |1693| 
        MOV       AL,#57344
        MOV       AH,#17737
        LCR       #FS$$DIV              ; |1693| 
        ; call occurs [#FS$$DIV] ; |1693| 
        MOVL      XAR1,ACC              ; |1693| 
        MOVW      DP,#_inputs+231
        MOV       AL,@_inputs+231       ; |1695| 
        LCR       #I$$TOFS              ; |1695| 
        ; call occurs [#I$$TOFS] ; |1695| 
        MOVL      *-SP[2],ACC           ; |1695| 
        MOVL      ACC,XAR1              ; |1695| 
        LCR       #FS$$MPY              ; |1695| 
        ; call occurs [#FS$$MPY] ; |1695| 
        LCR       #_FloattoIntRound     ; |1696| 
        ; call occurs [#_FloattoIntRound] ; |1696| 
        MOVW      DP,#_rtcbat
        MOV       @_rtcbat,AL           ; |1696| 
        MOVW      DP,#_timers+66
        MOV       AL,@_timers+66        ; |1698| 
        BF        L209,NEQ              ; |1698| 
        ; branchcc occurs ; |1698| 
        LCR       #_RTCLowBattAlarm     ; |1698| 
        ; call occurs [#_RTCLowBattAlarm] ; |1698| 
L209:    
        SUBB      SP,#2
        MOVL      XAR1,*--SP
	.dwpsn	"adc.c",1699,1
        LRETR
        ; return occurs
	.dwattr DW$263, DW_AT_end_file("adc.c")
	.dwattr DW$263, DW_AT_end_line(0x6a3)
	.dwattr DW$263, DW_AT_end_column(0x01)
	.dwendtag DW$263

	.sect	".text"
	.global	_RTCLowBattAlarm

DW$264	.dwtag  DW_TAG_subprogram, DW_AT_name("RTCLowBattAlarm"), DW_AT_symbol_name("_RTCLowBattAlarm")
	.dwattr DW$264, DW_AT_low_pc(_RTCLowBattAlarm)
	.dwattr DW$264, DW_AT_high_pc(0x00)
	.dwattr DW$264, DW_AT_begin_file("adc.c")
	.dwattr DW$264, DW_AT_begin_line(0x6a7)
	.dwattr DW$264, DW_AT_begin_column(0x06)
	.dwattr DW$264, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$264, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",1704,1

;***************************************************************
;* FNAME: _RTCLowBattAlarm              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_RTCLowBattAlarm:
        MOVW      DP,#_rtcbat
        CMP       @_rtcbat,#2200        ; |1709| 
        BF        L210,GT               ; |1709| 
        ; branchcc occurs ; |1709| 
        MOVW      DP,#_rtcbat+1
        MOV       AL,@_rtcbat+1         ; |1709| 
        BF        L212,EQ               ; |1709| 
        ; branchcc occurs ; |1709| 
L210:    
        MOVW      DP,#_rtcbat
        CMP       @_rtcbat,#2500        ; |1717| 
        BF        L214,LT               ; |1717| 
        ; branchcc occurs ; |1717| 
        MOV       AL,#357               ; |1717| 
        LCR       #_CheckAlarmBitSet    ; |1717| 
        ; call occurs [#_CheckAlarmBitSet] ; |1717| 
        CMPB      AL,#1                 ; |1717| 
        BF        L211,EQ               ; |1717| 
        ; branchcc occurs ; |1717| 
        MOVW      DP,#_rtcbat+1
        MOV       AL,@_rtcbat+1         ; |1717| 
        CMPB      AL,#1                 ; |1717| 
        BF        L214,NEQ              ; |1717| 
        ; branchcc occurs ; |1717| 
L211:    
        MOV       AL,#357               ; |1721| 
        LCR       #_ClearAlarmEvent     ; |1721| 
        ; call occurs [#_ClearAlarmEvent] ; |1721| 
        MOVW      DP,#_rtcbat+1
        MOV       @_rtcbat+1,#0         ; |1722| 
        BF        L213,UNC              ; |1723| 
        ; branch occurs ; |1723| 
L212:    
        MOV       AL,#357               ; |1712| 
        LCR       #_SetAlarmEvent       ; |1712| 
        ; call occurs [#_SetAlarmEvent] ; |1712| 
        MOVW      DP,#_rtcbat+1
        MOV       @_rtcbat+1,#1         ; |1713| 
L213:    
        MOVB      AL,#0
        MOV       AH,#28996             ; |1715| 
        MOVB      XAR5,#1               ; |1715| 
        MOVL      XAR4,#_rtcbat+1       ; |1715| 
        LCR       #_WriteNVMemory       ; |1715| 
        ; call occurs [#_WriteNVMemory] ; |1715| 
L214:    
	.dwpsn	"adc.c",1725,1
        LRETR
        ; return occurs
	.dwattr DW$264, DW_AT_end_file("adc.c")
	.dwattr DW$264, DW_AT_end_line(0x6bd)
	.dwattr DW$264, DW_AT_end_column(0x01)
	.dwendtag DW$264

	.sect	".text"
	.global	_ProcessAnalogCpp

DW$265	.dwtag  DW_TAG_subprogram, DW_AT_name("ProcessAnalogCpp"), DW_AT_symbol_name("_ProcessAnalogCpp")
	.dwattr DW$265, DW_AT_low_pc(_ProcessAnalogCpp)
	.dwattr DW$265, DW_AT_high_pc(0x00)
	.dwattr DW$265, DW_AT_begin_file("adc.c")
	.dwattr DW$265, DW_AT_begin_line(0x6c1)
	.dwattr DW$265, DW_AT_begin_column(0x06)
	.dwattr DW$265, DW_AT_frame_base[DW_OP_breg20 -12]
	.dwattr DW$265, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",1730,1

;***************************************************************
;* FNAME: _ProcessAnalogCpp             FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  1 Auto,  6 SOE     *
;***************************************************************

_ProcessAnalogCpp:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#4
        MOVW      DP,#_inputs+230
        MOV       AL,@_inputs+230       ; |1736| 
        ADDB      AL,#-60
        MOV       *-SP[3],AL            ; |1736| 
        BF        L215,GEQ              ; |1736| 
        ; branchcc occurs ; |1736| 
        MOV       *-SP[3],#0            ; |1737| 
L215:    
        MOVW      DP,#_cppsettings
        MOV       AL,@_cppsettings      ; |1740| 
        BF        L219,EQ               ; |1740| 
        ; branchcc occurs ; |1740| 
        MOV       AL,*-SP[3]
        LCR       #I$$TOFS              ; |1742| 
        ; call occurs [#I$$TOFS] ; |1742| 
        MOVL      XAR2,ACC              ; |1742| 
        MOV       AL,#12288
        MOV       AH,#17788
        MOVL      *-SP[2],ACC           ; |1746| 
        MOVL      ACC,XAR2              ; |1746| 
        LCR       #FS$$DIV              ; |1746| 
        ; call occurs [#FS$$DIV] ; |1746| 
        MOVL      XAR2,ACC              ; |1746| 
        MOV       AL,#0
        MOV       AH,#16800
        MOVL      *-SP[2],ACC           ; |1749| 
        MOVL      ACC,XAR2              ; |1749| 
        LCR       #FS$$MPY              ; |1749| 
        ; call occurs [#FS$$MPY] ; |1749| 
        MOVL      XAR2,ACC              ; |1749| 
        MOV       AL,#0
        MOV       AH,#16512
        MOVL      *-SP[2],ACC           ; |1749| 
        MOVL      ACC,XAR2              ; |1749| 
        LCR       #FS$$CMP              ; |1749| 
        ; call occurs [#FS$$CMP] ; |1749| 
        CMPB      AL,#0                 ; |1749| 
        BF        L216,LT               ; |1749| 
        ; branchcc occurs ; |1749| 
        MOV       AL,#0
        MOV       AH,#16512
        MOVL      *-SP[2],ACC           ; |1751| 
        MOVL      ACC,XAR2              ; |1751| 
        LCR       #FS$$SUB              ; |1751| 
        ; call occurs [#FS$$SUB] ; |1751| 
        MOVL      XAR6,ACC              ; |1751| 
        MOV       ACC,#31488 << 15
        MOVL      *-SP[2],ACC           ; |1751| 
        MOVL      ACC,XAR6              ; |1751| 
        LCR       #FS$$MPY              ; |1751| 
        ; call occurs [#FS$$MPY] ; |1751| 
        MOVL      XAR1,ACC              ; |1751| 
        MOV       AL,#0
        MOV       AH,#17096
        MOVL      *-SP[2],ACC           ; |1752| 
        MOVL      ACC,XAR1              ; |1752| 
        LCR       #FS$$CMP              ; |1752| 
        ; call occurs [#FS$$CMP] ; |1752| 
        CMPB      AL,#0                 ; |1752| 
        BF        L218,LEQ              ; |1752| 
        ; branchcc occurs ; |1752| 
        MOV       AH,#17096
        BF        L217,UNC              ; |1752| 
        ; branch occurs ; |1752| 
L216:    
        MOV       AH,#0
L217:    
        MOV       AL,#0
        MOVL      XAR1,ACC              ; |1754| 
L218:    
        MOVW      DP,#_cppsettings+1
        MOV       AL,@_cppsettings+1    ; |1757| 
        LCR       #U$$TOFS              ; |1757| 
        ; call occurs [#U$$TOFS] ; |1757| 
        MOVW      DP,#_cppsettings+2
        MOVL      XAR3,ACC              ; |1757| 
        MOV       AL,@_cppsettings+2    ; |1757| 
        LCR       #U$$TOFS              ; |1757| 
        ; call occurs [#U$$TOFS] ; |1757| 
        MOVL      *-SP[2],XAR3          ; |1757| 
        LCR       #FS$$SUB              ; |1757| 
        ; call occurs [#FS$$SUB] ; |1757| 
        MOVL      *-SP[2],ACC           ; |1757| 
        MOVL      ACC,XAR1              ; |1757| 
        LCR       #FS$$MPY              ; |1757| 
        ; call occurs [#FS$$MPY] ; |1757| 
        MOVL      *-SP[2],XAR3          ; |1758| 
        LCR       #FS$$ADD              ; |1758| 
        ; call occurs [#FS$$ADD] ; |1758| 
        MOVW      DP,#_loadlevel+4
        MOVL      @_loadlevel+4,ACC     ; |1759| 
        MOVW      DP,#_loadlevel
        MOV       AL,*-SP[3]            ; |1759| 
        MOV       @_loadlevel,AL        ; |1760| 
        MOVW      DP,#_loadlevel+2
        MOVL      @_loadlevel+2,XAR2    ; |1761| 
        BF        L220,UNC              ; |1763| 
        ; branch occurs ; |1763| 
L219:    
        MOV       AL,#0
        MOV       AH,#0
        MOVW      DP,#_loadlevel+4
        MOVL      @_loadlevel+4,ACC     ; |1766| 
L220:    
        SUBB      SP,#4
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"adc.c",1769,1
        LRETR
        ; return occurs
	.dwattr DW$265, DW_AT_end_file("adc.c")
	.dwattr DW$265, DW_AT_end_line(0x6e9)
	.dwattr DW$265, DW_AT_end_column(0x01)
	.dwendtag DW$265

	.sect	".text"
	.global	_AnalogSLEM

DW$266	.dwtag  DW_TAG_subprogram, DW_AT_name("AnalogSLEM"), DW_AT_symbol_name("_AnalogSLEM")
	.dwattr DW$266, DW_AT_low_pc(_AnalogSLEM)
	.dwattr DW$266, DW_AT_high_pc(0x00)
	.dwattr DW$266, DW_AT_begin_file("adc.c")
	.dwattr DW$266, DW_AT_begin_line(0x6ed)
	.dwattr DW$266, DW_AT_begin_column(0x06)
	.dwattr DW$266, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$266, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",1774,1

;***************************************************************
;* FNAME: _AnalogSLEM                   FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_AnalogSLEM:
        MOVL      *SP++,XAR1
        MOVW      DP,#_slemsettings
        ADDB      SP,#2
        MOV       AL,@_slemsettings     ; |1778| 
        BF        L223,NEQ              ; |1778| 
        ; branchcc occurs ; |1778| 
        MOV       AL,#358               ; |1799| 
        LCR       #_CheckAlarmBitSet    ; |1799| 
        ; call occurs [#_CheckAlarmBitSet] ; |1799| 
        CMPB      AL,#1                 ; |1799| 
        BF        L221,EQ               ; |1799| 
        ; branchcc occurs ; |1799| 
        MOVW      DP,#_slem+1
        TBIT      @_slem+1,#1           ; |1799| 
        BF        L222,NTC              ; |1799| 
        ; branchcc occurs ; |1799| 
L221:    
        MOV       AL,#358               ; |1801| 
        LCR       #_ClearAlarmEvent     ; |1801| 
        ; call occurs [#_ClearAlarmEvent] ; |1801| 
        MOVB      AL,#0
        MOVB      XAR5,#1               ; |1802| 
        MOVL      XAR4,#_slem+1         ; |1802| 
        MOV       AH,#28994             ; |1802| 
        LCR       #_WriteNVMemory       ; |1802| 
        ; call occurs [#_WriteNVMemory] ; |1802| 
        MOVW      DP,#_slem+1
        AND       @_slem+1,#0xfffd      ; |1803| 
L222:    
        MOVW      DP,#_slem+1
        AND       @_slem+1,#0x0003      ; |1805| 
        MOVW      DP,#_slem
        MOV       @_slem,#0             ; |1806| 
        BF        L226,UNC              ; |1806| 
        ; branch occurs ; |1806| 
L223:    
        MOVW      DP,#_slem+1
        TBIT      @_slem+1,#0           ; |1780| 
        BF        L226,TC               ; |1780| 
        ; branchcc occurs ; |1780| 
        MOVW      DP,#_inputs+229
        MOV       AL,@_inputs+229       ; |1782| 
        LCR       #I$$TOFS              ; |1782| 
        ; call occurs [#I$$TOFS] ; |1782| 
        MOVL      XAR1,ACC              ; |1782| 
        MOV       AL,#49152
        MOV       AH,#17484
        MOVL      *-SP[2],ACC           ; |1783| 
        MOVL      ACC,XAR1              ; |1783| 
        LCR       #FS$$CMP              ; |1783| 
        ; call occurs [#FS$$CMP] ; |1783| 
        CMPB      AL,#0                 ; |1783| 
        BF        L224,LEQ              ; |1783| 
        ; branchcc occurs ; |1783| 
        MOV       AL,#61440
        MOV       AH,#17791
        MOVL      *-SP[2],ACC           ; |1786| 
        MOVL      ACC,XAR1              ; |1786| 
        LCR       #FS$$DIV              ; |1786| 
        ; call occurs [#FS$$DIV] ; |1786| 
        MOVL      XAR1,ACC              ; |1786| 
        MOV       AL,#0
        MOV       AH,#16800
        MOVL      *-SP[2],ACC           ; |1787| 
        MOVL      ACC,XAR1              ; |1787| 
        LCR       #FS$$MPY              ; |1787| 
        ; call occurs [#FS$$MPY] ; |1787| 
        MOVL      XAR1,ACC              ; |1787| 
        MOV       AL,#0
        MOV       AH,#16512
        MOVL      *-SP[2],ACC           ; |1788| 
        MOVL      ACC,XAR1              ; |1788| 
        LCR       #FS$$SUB              ; |1788| 
        ; call occurs [#FS$$SUB] ; |1788| 
        BF        L225,UNC              ; |1788| 
        ; branch occurs ; |1788| 
L224:    
        MOV       AH,#0
        MOV       AL,#0
L225:    
        MOVW      DP,#_slemsettings+3
        MOVL      XAR1,ACC              ; |1783| 
        MOV       AL,@_slemsettings+3   ; |1792| 
        LCR       #U$$TOFS              ; |1792| 
        ; call occurs [#U$$TOFS] ; |1792| 
        MOVL      XAR6,ACC              ; |1792| 
        MOV       ACC,#31488 << 15
        MOVL      *-SP[2],ACC           ; |1792| 
        MOVL      ACC,XAR6              ; |1792| 
        LCR       #FS$$MPY              ; |1792| 
        ; call occurs [#FS$$MPY] ; |1792| 
        MOVL      *-SP[2],ACC           ; |1792| 
        MOVL      ACC,XAR1              ; |1792| 
        LCR       #FS$$MPY              ; |1792| 
        ; call occurs [#FS$$MPY] ; |1792| 
        LCR       #_FloattoIntRound     ; |1793| 
        ; call occurs [#_FloattoIntRound] ; |1793| 
        MOVW      DP,#_slem
        MOV       @_slem,AL             ; |1793| 
        MOVW      DP,#_timers+66
        MOV       AL,@_timers+66        ; |1794| 
        BF        L226,NEQ              ; |1794| 
        ; branchcc occurs ; |1794| 
        LCR       #_SLEMAlarm           ; |1794| 
        ; call occurs [#_SLEMAlarm] ; |1794| 
L226:    
        SUBB      SP,#2
        MOVL      XAR1,*--SP
	.dwpsn	"adc.c",1809,1
        LRETR
        ; return occurs
	.dwattr DW$266, DW_AT_end_file("adc.c")
	.dwattr DW$266, DW_AT_end_line(0x711)
	.dwattr DW$266, DW_AT_end_column(0x01)
	.dwendtag DW$266

	.sect	".text"
	.global	_SLEMAlarm

DW$267	.dwtag  DW_TAG_subprogram, DW_AT_name("SLEMAlarm"), DW_AT_symbol_name("_SLEMAlarm")
	.dwattr DW$267, DW_AT_low_pc(_SLEMAlarm)
	.dwattr DW$267, DW_AT_high_pc(0x00)
	.dwattr DW$267, DW_AT_begin_file("adc.c")
	.dwattr DW$267, DW_AT_begin_line(0x719)
	.dwattr DW$267, DW_AT_begin_column(0x06)
	.dwattr DW$267, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$267, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",1818,1

;***************************************************************
;* FNAME: _SLEMAlarm                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SLEMAlarm:
        MOVW      DP,#_slemsettings+1
        MOV       AL,@_slemsettings+1   ; |1823| 
        BF        L232,NEQ              ; |1823| 
        ; branchcc occurs ; |1823| 
        MOVW      DP,#_slemsettings+2
        MOV       AH,@_slemsettings+2   ; |1827| 
        MOV       AL,AH                 ; |1827| 
        MOVW      DP,#_slemsettings+4
        SUB       AL,@_slemsettings+4   ; |1827| 
        MOVW      DP,#_slem
        CMP       AH,@_slem             ; |1828| 
        MOVZ      AR6,AL                ; |1827| 
        BF        L227,GT               ; |1828| 
        ; branchcc occurs ; |1828| 
        MOVW      DP,#_slem+2
        INC       @_slem+2              ; |1830| 
        MOVW      DP,#_slem
        CMP       AH,@_slem             ; |1830| 
        BF        L227,GT               ; |1830| 
        ; branchcc occurs ; |1830| 
        MOVW      DP,#_slemsettings+5
        MOV       T,#20                 ; |1830| 
        MPYXU     ACC,T,@_slemsettings+5 ; |1830| 
        MOVW      DP,#_slem+2
        MOVZ      AR7,@_slem+2
        CMPL      ACC,XAR7              ; |1830| 
        BF        L227,HI               ; |1830| 
        ; branchcc occurs ; |1830| 
        MOVW      DP,#_slem+1
        TBIT      @_slem+1,#1           ; |1830| 
        BF        L229,NTC              ; |1830| 
        ; branchcc occurs ; |1830| 
L227:    
        MOV       AL,AR6
        MOVW      DP,#_slem
        CMP       AL,@_slem             ; |1846| 
        BF        L231,LT               ; |1846| 
        ; branchcc occurs ; |1846| 
        MOV       AL,#358               ; |1846| 
        LCR       #_CheckAlarmBitSet    ; |1846| 
        ; call occurs [#_CheckAlarmBitSet] ; |1846| 
        CMPB      AL,#1                 ; |1846| 
        BF        L228,EQ               ; |1846| 
        ; branchcc occurs ; |1846| 
        MOVW      DP,#_slem+1
        TBIT      @_slem+1,#1           ; |1846| 
        BF        L231,NTC              ; |1846| 
        ; branchcc occurs ; |1846| 
L228:    
        MOV       AL,#358               ; |1850| 
        LCR       #_ClearAlarmEvent     ; |1850| 
        ; call occurs [#_ClearAlarmEvent] ; |1850| 
        MOVW      DP,#_slem+1
        AND       @_slem+1,#0xfffd      ; |1851| 
        BF        L230,UNC              ; |1852| 
        ; branch occurs ; |1852| 
L229:    
        MOV       AL,#358               ; |1840| 
        LCR       #_SetAlarmEvent       ; |1840| 
        ; call occurs [#_SetAlarmEvent] ; |1840| 
        MOVW      DP,#_slem+1
        OR        @_slem+1,#0x0002      ; |1841| 
L230:    
        MOVB      AL,#0
        MOVB      XAR5,#1               ; |1844| 
        MOVL      XAR4,#_slem+1         ; |1844| 
        MOV       AH,#28994             ; |1844| 
        LCR       #_WriteNVMemory       ; |1844| 
        ; call occurs [#_WriteNVMemory] ; |1844| 
L231:    
        MOVW      DP,#_slemsettings+2
        MOV       AL,@_slemsettings+2   ; |1854| 
        MOVW      DP,#_slem
        CMP       AL,@_slem             ; |1854| 
        BF        L232,LEQ              ; |1854| 
        ; branchcc occurs ; |1854| 
        MOVW      DP,#_slem+2
        MOV       @_slem+2,#0           ; |1854| 
L232:    
	.dwpsn	"adc.c",1856,1
        LRETR
        ; return occurs
	.dwattr DW$267, DW_AT_end_file("adc.c")
	.dwattr DW$267, DW_AT_end_line(0x740)
	.dwattr DW$267, DW_AT_end_column(0x01)
	.dwendtag DW$267

	.sect	".text"
	.global	_CheckSLEMRange

DW$268	.dwtag  DW_TAG_subprogram, DW_AT_name("CheckSLEMRange"), DW_AT_symbol_name("_CheckSLEMRange")
	.dwattr DW$268, DW_AT_low_pc(_CheckSLEMRange)
	.dwattr DW$268, DW_AT_high_pc(0x00)
	.dwattr DW$268, DW_AT_begin_file("adc.c")
	.dwattr DW$268, DW_AT_begin_line(0x744)
	.dwattr DW$268, DW_AT_begin_column(0x06)
	.dwattr DW$268, DW_AT_frame_base[DW_OP_breg20 -38]
	.dwattr DW$268, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",1861,1

;***************************************************************
;* FNAME: _CheckSLEMRange               FR SIZE:  36           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 30 Auto,  4 SOE     *
;***************************************************************

_CheckSLEMRange:
        MOVL      *SP++,XAR1
        MOVW      DP,#_slemsettings
        MOVL      *SP++,XAR2
        MOV       AL,@_slemsettings     ; |1866| 
        ADDB      SP,#32
        BF        L240,EQ               ; |1866| 
        ; branchcc occurs ; |1866| 
        MOVW      DP,#_slemsettings+1
        MOV       AL,@_slemsettings+1   ; |1866| 
        BF        L240,NEQ              ; |1866| 
        ; branchcc occurs ; |1866| 
        MOVW      DP,#_timers+66
        MOV       AL,@_timers+66        ; |1866| 
        BF        L240,NEQ              ; |1866| 
        ; branchcc occurs ; |1866| 
        MOVZ      AR4,SP                ; |1868| 
        MOVB      ACC,#30
        MOVB      XAR5,#0
        SUBB      XAR4,#32              ; |1868| 
        LCR       #_memset              ; |1868| 
        ; call occurs [#_memset] ; |1868| 
        MOVW      DP,#_inputs+229
        MOV       AL,@_inputs+229       ; |1870| 
        LCR       #I$$TOFS              ; |1870| 
        ; call occurs [#I$$TOFS] ; |1870| 
        MOVL      XAR2,ACC              ; |1870| 
        MOV       AL,#61440
        MOV       AH,#17791
        MOVL      *-SP[2],ACC           ; |1871| 
        MOVL      ACC,XAR2              ; |1871| 
        LCR       #FS$$DIV              ; |1871| 
        ; call occurs [#FS$$DIV] ; |1871| 
        MOVL      XAR2,ACC              ; |1871| 
        MOV       AL,#0
        MOV       AH,#16800
        MOVL      *-SP[2],ACC           ; |1876| 
        MOVL      ACC,XAR2              ; |1876| 
        LCR       #FS$$MPY              ; |1876| 
        ; call occurs [#FS$$MPY] ; |1876| 
        MOVL      XAR2,ACC              ; |1876| 
        MOV       AL,#0
        MOV       AH,#16448
        MOVL      *-SP[2],ACC           ; |1876| 
        MOVL      ACC,XAR2              ; |1876| 
        LCR       #FS$$CMP              ; |1876| 
        ; call occurs [#FS$$CMP] ; |1876| 
        MOVB      XAR1,#0
        CMPB      AL,#0                 ; |1876| 
        BF        L233,GT               ; |1876| 
        ; branchcc occurs ; |1876| 
        MOVW      DP,#_slem
        MOVB      XAR1,#1               ; |1879| 
        MOV       @_slem,#-32765        ; |1880| 
L233:    
        MOV       AL,#0
        MOV       AH,#16808
        MOVL      *-SP[2],ACC           ; |1883| 
        MOVL      ACC,XAR2              ; |1883| 
        LCR       #FS$$CMP              ; |1883| 
        ; call occurs [#FS$$CMP] ; |1883| 
        CMPB      AL,#0                 ; |1883| 
        BF        L236,GEQ              ; |1883| 
        ; branchcc occurs ; |1883| 
        MOV       AL,AR1
        CMPB      AL,#1                 ; |1891| 
        BF        L237,EQ               ; |1891| 
        ; branchcc occurs ; |1891| 
        CMPB      AL,#0                 ; |1909| 
        BF        L243,NEQ              ; |1909| 
        ; branchcc occurs ; |1909| 
        MOV       AL,#361               ; |1911| 
        LCR       #_CheckAlarmBitSet    ; |1911| 
        ; call occurs [#_CheckAlarmBitSet] ; |1911| 
        CMPB      AL,#1                 ; |1911| 
        BF        L234,EQ               ; |1911| 
        ; branchcc occurs ; |1911| 
        MOV       AL,#356               ; |1911| 
        LCR       #_CheckAlarmBitSet    ; |1911| 
        ; call occurs [#_CheckAlarmBitSet] ; |1911| 
        CMPB      AL,#1                 ; |1911| 
        BF        L234,EQ               ; |1911| 
        ; branchcc occurs ; |1911| 
        MOVW      DP,#_slem+1
        TBIT      @_slem+1,#0           ; |1911| 
        BF        L243,NTC              ; |1911| 
        ; branchcc occurs ; |1911| 
L234:    
        MOV       AL,#361               ; |1917| 
        LCR       #_ClearAlarmEvent     ; |1917| 
        ; call occurs [#_ClearAlarmEvent] ; |1917| 
        MOV       AL,#356               ; |1918| 
        LCR       #_ClearAlarmEvent     ; |1918| 
        ; call occurs [#_ClearAlarmEvent] ; |1918| 
        MOVW      DP,#_slem+1
        AND       @_slem+1,#0xfffe      ; |1920| 
L235:    
        MOVB      AL,#0
        MOVB      XAR5,#1               ; |1921| 
        MOVL      XAR4,#_slem+1         ; |1921| 
        MOV       AH,#28994             ; |1921| 
        LCR       #_WriteNVMemory       ; |1921| 
        ; call occurs [#_WriteNVMemory] ; |1921| 
        BF        L243,UNC              ; |1921| 
        ; branch occurs ; |1921| 
L236:    
        MOVW      DP,#_slem
        MOV       @_slem,#-32764        ; |1886| 
L237:    
        MOVW      DP,#_slem+1
        TBIT      @_slem+1,#0           ; |1886| 
        BF        L243,TC               ; |1886| 
        ; branchcc occurs ; |1886| 
        MOVW      DP,#_slem
        CMP       @_slem,#-32765        ; |1896| 
        BF        L238,EQ               ; |1896| 
        ; branchcc occurs ; |1896| 
        MOV       AL,#361               ; |1899| 
        BF        L239,UNC              ; |1899| 
        ; branch occurs ; |1899| 
L238:    
        MOV       AL,#356               ; |1897| 
L239:    
        LCR       #_SetAlarmEvent       ; |1897| 
        ; call occurs [#_SetAlarmEvent] ; |1897| 
        MOVW      DP,#_slem+1
        OR        @_slem+1,#0x0001      ; |1904| 
        BF        L235,UNC              ; |1906| 
        ; branch occurs ; |1906| 
L240:    
        MOV       AL,#361               ; |1927| 
        LCR       #_CheckAlarmBitSet    ; |1927| 
        ; call occurs [#_CheckAlarmBitSet] ; |1927| 
        CMPB      AL,#1                 ; |1927| 
        BF        L241,EQ               ; |1927| 
        ; branchcc occurs ; |1927| 
        MOV       AL,#356               ; |1927| 
        LCR       #_CheckAlarmBitSet    ; |1927| 
        ; call occurs [#_CheckAlarmBitSet] ; |1927| 
        CMPB      AL,#1                 ; |1927| 
        BF        L241,EQ               ; |1927| 
        ; branchcc occurs ; |1927| 
        MOVW      DP,#_slem+1
        TBIT      @_slem+1,#0           ; |1927| 
        BF        L242,NTC              ; |1927| 
        ; branchcc occurs ; |1927| 
L241:    
        MOV       AL,#361               ; |1931| 
        LCR       #_ClearAlarmEvent     ; |1931| 
        ; call occurs [#_ClearAlarmEvent] ; |1931| 
        MOV       AL,#356               ; |1932| 
        LCR       #_ClearAlarmEvent     ; |1932| 
        ; call occurs [#_ClearAlarmEvent] ; |1932| 
        MOVB      AL,#0
        MOVB      XAR5,#1               ; |1934| 
        MOVL      XAR4,#_slem+1         ; |1934| 
        MOV       AH,#28994             ; |1934| 
        LCR       #_WriteNVMemory       ; |1934| 
        ; call occurs [#_WriteNVMemory] ; |1934| 
L242:    
        MOVW      DP,#_slem+1
        AND       @_slem+1,#0xfffe      ; |1937| 
L243:    
        SUBB      SP,#32
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"adc.c",1940,1
        LRETR
        ; return occurs
	.dwattr DW$268, DW_AT_end_file("adc.c")
	.dwattr DW$268, DW_AT_end_line(0x794)
	.dwattr DW$268, DW_AT_end_column(0x01)
	.dwendtag DW$268

	.sect	".text"
	.global	_WriteSLEMSettingstoNVMEM

DW$269	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteSLEMSettingstoNVMEM"), DW_AT_symbol_name("_WriteSLEMSettingstoNVMEM")
	.dwattr DW$269, DW_AT_low_pc(_WriteSLEMSettingstoNVMEM)
	.dwattr DW$269, DW_AT_high_pc(0x00)
	.dwattr DW$269, DW_AT_begin_file("adc.c")
	.dwattr DW$269, DW_AT_begin_line(0x798)
	.dwattr DW$269, DW_AT_begin_column(0x06)
	.dwattr DW$269, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$269, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",1945,1

;***************************************************************
;* FNAME: _WriteSLEMSettingstoNVMEM     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WriteSLEMSettingstoNVMEM:
        MOVB      AL,#0
        MOVB      XAR5,#6               ; |1955| 
        MOVL      XAR4,#_slemsettings   ; |1955| 
        MOV       AH,#28930             ; |1955| 
        LCR       #_WriteNVMemory       ; |1955| 
        ; call occurs [#_WriteNVMemory] ; |1955| 
        MOVW      DP,#_settings+10
        MOV       @_settings+10,#1      ; |1957| 
	.dwpsn	"adc.c",1958,1
        LRETR
        ; return occurs
	.dwattr DW$269, DW_AT_end_file("adc.c")
	.dwattr DW$269, DW_AT_end_line(0x7a6)
	.dwattr DW$269, DW_AT_end_column(0x01)
	.dwendtag DW$269

	.sect	".text"
	.global	_ReadSLEMSettingsfromNVMEM

DW$270	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadSLEMSettingsfromNVMEM"), DW_AT_symbol_name("_ReadSLEMSettingsfromNVMEM")
	.dwattr DW$270, DW_AT_low_pc(_ReadSLEMSettingsfromNVMEM)
	.dwattr DW$270, DW_AT_high_pc(0x00)
	.dwattr DW$270, DW_AT_begin_file("adc.c")
	.dwattr DW$270, DW_AT_begin_line(0x7aa)
	.dwattr DW$270, DW_AT_begin_column(0x06)
	.dwattr DW$270, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$270, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",1963,1

;***************************************************************
;* FNAME: _ReadSLEMSettingsfromNVMEM    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadSLEMSettingsfromNVMEM:
        MOVB      AL,#0
        MOVB      XAR5,#6               ; |1973| 
        MOVL      XAR4,#_slemsettings   ; |1973| 
        MOV       AH,#28930             ; |1973| 
        LCR       #_ReadNVMemory        ; |1973| 
        ; call occurs [#_ReadNVMemory] ; |1973| 
        MOVB      AL,#0
        MOVB      XAR5,#1               ; |1975| 
        MOVL      XAR4,#_slem+1         ; |1975| 
        MOV       AH,#28994             ; |1975| 
        LCR       #_ReadNVMemory        ; |1975| 
        ; call occurs [#_ReadNVMemory] ; |1975| 
	.dwpsn	"adc.c",1976,1
        LRETR
        ; return occurs
	.dwattr DW$270, DW_AT_end_file("adc.c")
	.dwattr DW$270, DW_AT_end_line(0x7b8)
	.dwattr DW$270, DW_AT_end_column(0x01)
	.dwendtag DW$270

	.sect	".text"
	.global	_LoadSLEMDefaults

DW$271	.dwtag  DW_TAG_subprogram, DW_AT_name("LoadSLEMDefaults"), DW_AT_symbol_name("_LoadSLEMDefaults")
	.dwattr DW$271, DW_AT_low_pc(_LoadSLEMDefaults)
	.dwattr DW$271, DW_AT_high_pc(0x00)
	.dwattr DW$271, DW_AT_begin_file("adc.c")
	.dwattr DW$271, DW_AT_begin_line(0x7be)
	.dwattr DW$271, DW_AT_begin_column(0x06)
	.dwattr DW$271, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$271, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",1983,1

;***************************************************************
;* FNAME: _LoadSLEMDefaults             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_LoadSLEMDefaults:
        MOVW      DP,#_slemsettings+1
        MOV       @_slemsettings+1,#0   ; |1984| 
        MOVB      AL,#0
        MOVW      DP,#_slemsettings
        MOVL      XAR4,#_slem+1         ; |1993| 
        MOV       @_slemsettings,#0     ; |1985| 
        MOVB      XAR5,#1               ; |1994| 
        MOVW      DP,#_slemsettings+3
        MOV       @_slemsettings+3,#300 ; |1986| 
        MOVW      DP,#_slemsettings+2
        MOV       AH,#28994             ; |1994| 
        MOV       @_slemsettings+2,#80  ; |1987| 
        MOVW      DP,#_slemsettings+5
        MOV       @_slemsettings+5,#30  ; |1988| 
        MOVW      DP,#_slemsettings+4
        MOV       @_slemsettings+4,#16  ; |1989| 
        MOV       *+XAR4[0],#0          ; |1993| 
        LCR       #_WriteNVMemory       ; |1994| 
        ; call occurs [#_WriteNVMemory] ; |1994| 
        LCR       #_WriteSLEMSettingstoNVMEM ; |1996| 
        ; call occurs [#_WriteSLEMSettingstoNVMEM] ; |1996| 
	.dwpsn	"adc.c",1998,1
        LRETR
        ; return occurs
	.dwattr DW$271, DW_AT_end_file("adc.c")
	.dwattr DW$271, DW_AT_end_line(0x7ce)
	.dwattr DW$271, DW_AT_end_column(0x01)
	.dwendtag DW$271

	.sect	".text"
	.global	_WriteCPPSettingstoNVMEM

DW$272	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteCPPSettingstoNVMEM"), DW_AT_symbol_name("_WriteCPPSettingstoNVMEM")
	.dwattr DW$272, DW_AT_low_pc(_WriteCPPSettingstoNVMEM)
	.dwattr DW$272, DW_AT_high_pc(0x00)
	.dwattr DW$272, DW_AT_begin_file("adc.c")
	.dwattr DW$272, DW_AT_begin_line(0x7d1)
	.dwattr DW$272, DW_AT_begin_column(0x06)
	.dwattr DW$272, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$272, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",2002,1

;***************************************************************
;* FNAME: _WriteCPPSettingstoNVMEM      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WriteCPPSettingstoNVMEM:
        MOVB      AL,#0
        MOVB      XAR5,#16              ; |2012| 
        MOVL      XAR4,#_cppsettings    ; |2012| 
        MOV       AH,#29094             ; |2012| 
        LCR       #_WriteNVMemory       ; |2012| 
        ; call occurs [#_WriteNVMemory] ; |2012| 
        MOVW      DP,#_settings+10
        MOV       @_settings+10,#1      ; |2014| 
	.dwpsn	"adc.c",2015,1
        LRETR
        ; return occurs
	.dwattr DW$272, DW_AT_end_file("adc.c")
	.dwattr DW$272, DW_AT_end_line(0x7df)
	.dwattr DW$272, DW_AT_end_column(0x01)
	.dwendtag DW$272

	.sect	".text"
	.global	_ReadCPPSettingsfromNVMEM

DW$273	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadCPPSettingsfromNVMEM"), DW_AT_symbol_name("_ReadCPPSettingsfromNVMEM")
	.dwattr DW$273, DW_AT_low_pc(_ReadCPPSettingsfromNVMEM)
	.dwattr DW$273, DW_AT_high_pc(0x00)
	.dwattr DW$273, DW_AT_begin_file("adc.c")
	.dwattr DW$273, DW_AT_begin_line(0x7e3)
	.dwattr DW$273, DW_AT_begin_column(0x06)
	.dwattr DW$273, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$273, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",2020,1

;***************************************************************
;* FNAME: _ReadCPPSettingsfromNVMEM     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadCPPSettingsfromNVMEM:
        MOVB      AL,#0
        MOVB      XAR5,#16              ; |2030| 
        MOVL      XAR4,#_cppsettings    ; |2030| 
        MOV       AH,#29094             ; |2030| 
        LCR       #_ReadNVMemory        ; |2030| 
        ; call occurs [#_ReadNVMemory] ; |2030| 
	.dwpsn	"adc.c",2031,1
        LRETR
        ; return occurs
	.dwattr DW$273, DW_AT_end_file("adc.c")
	.dwattr DW$273, DW_AT_end_line(0x7ef)
	.dwattr DW$273, DW_AT_end_column(0x01)
	.dwendtag DW$273

	.sect	".text"
	.global	_WriteSensorSettingstoNVMEM

DW$274	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteSensorSettingstoNVMEM"), DW_AT_symbol_name("_WriteSensorSettingstoNVMEM")
	.dwattr DW$274, DW_AT_low_pc(_WriteSensorSettingstoNVMEM)
	.dwattr DW$274, DW_AT_high_pc(0x00)
	.dwattr DW$274, DW_AT_begin_file("adc.c")
	.dwattr DW$274, DW_AT_begin_line(0x7f1)
	.dwattr DW$274, DW_AT_begin_column(0x06)
	.dwattr DW$274, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$274, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",2034,1

;***************************************************************
;* FNAME: _WriteSensorSettingstoNVMEM   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WriteSensorSettingstoNVMEM:
        MOVB      AL,#0
        MOVB      XAR5,#2               ; |2044| 
        MOVL      XAR4,#_sensorMoving   ; |2044| 
        MOV       AH,#29096             ; |2044| 
        LCR       #_WriteNVMemory       ; |2044| 
        ; call occurs [#_WriteNVMemory] ; |2044| 
        MOVW      DP,#_settings+10
        MOV       @_settings+10,#1      ; |2046| 
	.dwpsn	"adc.c",2047,1
        LRETR
        ; return occurs
	.dwattr DW$274, DW_AT_end_file("adc.c")
	.dwattr DW$274, DW_AT_end_line(0x7ff)
	.dwattr DW$274, DW_AT_end_column(0x01)
	.dwendtag DW$274

	.sect	".text"
	.global	_ReadSensorSettingsfromNVMEM

DW$275	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadSensorSettingsfromNVMEM"), DW_AT_symbol_name("_ReadSensorSettingsfromNVMEM")
	.dwattr DW$275, DW_AT_low_pc(_ReadSensorSettingsfromNVMEM)
	.dwattr DW$275, DW_AT_high_pc(0x00)
	.dwattr DW$275, DW_AT_begin_file("adc.c")
	.dwattr DW$275, DW_AT_begin_line(0x803)
	.dwattr DW$275, DW_AT_begin_column(0x06)
	.dwattr DW$275, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$275, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",2052,1

;***************************************************************
;* FNAME: _ReadSensorSettingsfromNVMEM  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadSensorSettingsfromNVMEM:
        MOVB      AL,#0
        MOVB      XAR5,#2               ; |2062| 
        MOVL      XAR4,#_sensorMoving   ; |2062| 
        MOV       AH,#29096             ; |2062| 
        LCR       #_ReadNVMemory        ; |2062| 
        ; call occurs [#_ReadNVMemory] ; |2062| 
	.dwpsn	"adc.c",2063,1
        LRETR
        ; return occurs
	.dwattr DW$275, DW_AT_end_file("adc.c")
	.dwattr DW$275, DW_AT_end_line(0x80f)
	.dwattr DW$275, DW_AT_end_column(0x01)
	.dwendtag DW$275

	.sect	".text"
	.global	_LoadCPPDefaults

DW$276	.dwtag  DW_TAG_subprogram, DW_AT_name("LoadCPPDefaults"), DW_AT_symbol_name("_LoadCPPDefaults")
	.dwattr DW$276, DW_AT_low_pc(_LoadCPPDefaults)
	.dwattr DW$276, DW_AT_high_pc(0x00)
	.dwattr DW$276, DW_AT_begin_file("adc.c")
	.dwattr DW$276, DW_AT_begin_line(0x811)
	.dwattr DW$276, DW_AT_begin_column(0x06)
	.dwattr DW$276, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$276, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",2066,1

;***************************************************************
;* FNAME: _LoadCPPDefaults              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_LoadCPPDefaults:
        MOVW      DP,#_cppsettings
        MOV       @_cppsettings,#0      ; |2067| 
        MOVW      DP,#_cppsettings+1
        MOV       @_cppsettings+1,#0    ; |2068| 
        MOVW      DP,#_cppsettings+2
        MOV       @_cppsettings+2,#100  ; |2069| 
        MOVW      DP,#_cppsettings+3
        MOV       @_cppsettings+3,#15   ; |2071| 
        MOVW      DP,#_cppsettings+4
        MOV       @_cppsettings+4,#1000 ; |2072| 
        MOVW      DP,#_cppsettings+5
        MOV       @_cppsettings+5,#2    ; |2073| 
        MOVW      DP,#_cppsettings+6
        MOV       @_cppsettings+6,#300  ; |2074| 
        LCR       #_WriteCPPSettingstoNVMEM ; |2076| 
        ; call occurs [#_WriteCPPSettingstoNVMEM] ; |2076| 
	.dwpsn	"adc.c",2077,1
        LRETR
        ; return occurs
	.dwattr DW$276, DW_AT_end_file("adc.c")
	.dwattr DW$276, DW_AT_end_line(0x81d)
	.dwattr DW$276, DW_AT_end_column(0x01)
	.dwendtag DW$276

	.sect	".text"
	.global	_LoadSensorDefaults

DW$277	.dwtag  DW_TAG_subprogram, DW_AT_name("LoadSensorDefaults"), DW_AT_symbol_name("_LoadSensorDefaults")
	.dwattr DW$277, DW_AT_low_pc(_LoadSensorDefaults)
	.dwattr DW$277, DW_AT_high_pc(0x00)
	.dwattr DW$277, DW_AT_begin_file("adc.c")
	.dwattr DW$277, DW_AT_begin_line(0x81f)
	.dwattr DW$277, DW_AT_begin_column(0x06)
	.dwattr DW$277, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$277, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",2080,1

;***************************************************************
;* FNAME: _LoadSensorDefaults           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_LoadSensorDefaults:
        MOVW      DP,#_sensorMoving
        MOV       @_sensorMoving,#200   ; |2081| 
        LCR       #_WriteSensorSettingstoNVMEM ; |2082| 
        ; call occurs [#_WriteSensorSettingstoNVMEM] ; |2082| 
	.dwpsn	"adc.c",2083,1
        LRETR
        ; return occurs
	.dwattr DW$277, DW_AT_end_file("adc.c")
	.dwattr DW$277, DW_AT_end_line(0x823)
	.dwattr DW$277, DW_AT_end_column(0x01)
	.dwendtag DW$277

	.sect	".text"
	.global	_CalibrateLoop18mA

DW$278	.dwtag  DW_TAG_subprogram, DW_AT_name("CalibrateLoop18mA"), DW_AT_symbol_name("_CalibrateLoop18mA")
	.dwattr DW$278, DW_AT_low_pc(_CalibrateLoop18mA)
	.dwattr DW$278, DW_AT_high_pc(0x00)
	.dwattr DW$278, DW_AT_begin_file("adc.c")
	.dwattr DW$278, DW_AT_begin_line(0x826)
	.dwattr DW$278, DW_AT_begin_column(0x06)
	.dwattr DW$278, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$278, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",2086,43

;***************************************************************
;* FNAME: _CalibrateLoop18mA            FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_CalibrateLoop18mA:
;* AL    assigned to _chan
DW$279	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$279, DW_AT_type(*DW$T$11)
	.dwattr DW$279, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        CMPB      AL,#4                 ; |2091| 
        MOVZ      AR1,AL                ; |2086| 
        BF        L244,GT               ; |2091| 
        ; branchcc occurs ; |2091| 
        CMPB      AL,#4                 ; |2091| 
        BF        L248,EQ               ; |2091| 
        ; branchcc occurs ; |2091| 
        CMPB      AL,#0                 ; |2091| 
        BF        L255,EQ               ; |2091| 
        ; branchcc occurs ; |2091| 
        CMPB      AL,#1                 ; |2091| 
        BF        L254,EQ               ; |2091| 
        ; branchcc occurs ; |2091| 
        CMPB      AL,#2                 ; |2091| 
        BF        L252,EQ               ; |2091| 
        ; branchcc occurs ; |2091| 
        CMPB      AL,#3                 ; |2091| 
        BF        L251,EQ               ; |2091| 
        ; branchcc occurs ; |2091| 
        BF        L258,UNC              ; |2091| 
        ; branch occurs ; |2091| 
L244:    
        CMPB      AL,#5                 ; |2091| 
        BF        L247,EQ               ; |2091| 
        ; branchcc occurs ; |2091| 
        CMPB      AL,#6                 ; |2091| 
        BF        L245,EQ               ; |2091| 
        ; branchcc occurs ; |2091| 
        CMPB      AL,#7                 ; |2091| 
        BF        L258,NEQ              ; |2091| 
        ; branchcc occurs ; |2091| 
        MOVW      DP,#_gpa
        OR        @_gpa,#0x0001         ; |2115| 
        BF        L246,UNC              ; |2116| 
        ; branch occurs ; |2116| 
L245:    
        MOVW      DP,#_gpa
        AND       @_gpa,#0xfffe         ; |2112| 
L246:    
        MOVW      DP,#_gpa
        OR        @_gpa,#0x0002         ; |2112| 
        BF        L250,UNC              ; |2113| 
        ; branch occurs ; |2113| 
L247:    
        MOVW      DP,#_gpa
        OR        @_gpa,#0x0001         ; |2109| 
        BF        L249,UNC              ; |2110| 
        ; branch occurs ; |2110| 
L248:    
        MOVW      DP,#_gpa
        AND       @_gpa,#0xfffe         ; |2106| 
L249:    
        MOVW      DP,#_gpa
        AND       @_gpa,#0xfffd         ; |2106| 
L250:    
        MOVW      DP,#_gpa
        OR        @_gpa,#0x0004         ; |2106| 
        BF        L258,UNC              ; |2107| 
        ; branch occurs ; |2107| 
L251:    
        MOVW      DP,#_gpa
        OR        @_gpa,#0x0001         ; |2103| 
        BF        L253,UNC              ; |2104| 
        ; branch occurs ; |2104| 
L252:    
        MOVW      DP,#_gpa
        AND       @_gpa,#0xfffe         ; |2100| 
L253:    
        MOVW      DP,#_gpa
        OR        @_gpa,#0x0002         ; |2100| 
        BF        L257,UNC              ; |2101| 
        ; branch occurs ; |2101| 
L254:    
        MOVW      DP,#_gpa
        OR        @_gpa,#0x0001         ; |2097| 
        BF        L256,UNC              ; |2098| 
        ; branch occurs ; |2098| 
L255:    
        MOVW      DP,#_gpa
        AND       @_gpa,#0xfffe         ; |2094| 
L256:    
        MOVW      DP,#_gpa
        AND       @_gpa,#0xfffd         ; |2094| 
L257:    
        MOVW      DP,#_gpa
        AND       @_gpa,#0xfffb         ; |2094| 
L258:    
        MOVW      DP,#_timers+67
        MOV       @_timers+67,#100      ; |2118| 
        NOP
        MOVW      DP,#_timers+67
        MOV       AL,@_timers+67        ; |2119| 
        BF        L260,EQ               ; |2119| 
        ; branchcc occurs ; |2119| 
L259:    
DW$L$_CalibrateLoop18mA$26$B:
	.dwpsn	"adc.c",2119,0
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |2119| 
        MOVW      DP,#_timers+67
        MOV       AL,@_timers+67        ; |2119| 
        BF        L259,NEQ              ; |2119| 
        ; branchcc occurs ; |2119| 
DW$L$_CalibrateLoop18mA$26$E:
L260:    
        MOVW      DP,#_adcdata+1
        MOV       AL,@_adcdata+1        ; |2121| 
        MOVB      XAR4,#0
        MOVW      DP,#_inputs
        LSR       AL,4                  ; |2121| 
        MOV       @_inputs,#0           ; |2122| 
	.dwpsn	"adc.c",2123,0
        MOVZ      AR6,AL                ; |2121| 
L261:    
DW$L$_CalibrateLoop18mA$28$B:
	.dwpsn	"adc.c",2124,0
        MOVW      DP,#_inputs
        MOV       AL,@_inputs           ; |2125| 
        BF        L263,NEQ              ; |2125| 
        ; branchcc occurs ; |2125| 
DW$L$_CalibrateLoop18mA$28$E:
L262:    
DW$L$_CalibrateLoop18mA$29$B:
	.dwpsn	"adc.c",2125,0
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |2125| 
        MOVW      DP,#_inputs
        MOV       AL,@_inputs           ; |2125| 
        BF        L262,EQ               ; |2125| 
        ; branchcc occurs ; |2125| 
DW$L$_CalibrateLoop18mA$29$E:
L263:    
DW$L$_CalibrateLoop18mA$30$B:
        MOVW      DP,#_adcdata+1
        MOV       AL,@_adcdata+1        ; |2126| 
        LSR       AL,4                  ; |2126| 
        SUB       AL,AR6                ; |2126| 
        ADDB      XAR4,#1               ; |2123| 
        MOV       AH,AL                 ; |2126| 
        ASR       AH,2                  ; |2126| 
        LSR       AH,13                 ; |2126| 
        MOVW      DP,#_inputs
        ADD       AH,AL                 ; |2126| 
        ASR       AH,3                  ; |2126| 
        MOV       @_inputs,#0           ; |2127| 
        ADD       AR6,AH                ; |2126| 
        CMP       AR4,#20000            ; |2123| 
	.dwpsn	"adc.c",2128,0
        BF        L261,LO               ; |2123| 
        ; branchcc occurs ; |2123| 
DW$L$_CalibrateLoop18mA$30$E:
        MOVL      XAR4,#_xtswplusanacal ; |2131| 
        MOV       *+XAR4[AR1],AR6       ; |2131| 
        LCR       #_SaveXtswplusAnaCal  ; |2132| 
        ; call occurs [#_SaveXtswplusAnaCal] ; |2132| 
        MOVW      DP,#_inputs+236
        MOV       @_inputs+236,AR1      ; |2136| 
        LCR       #_SetupScaling        ; |2139| 
        ; call occurs [#_SetupScaling] ; |2139| 
        MOVL      XAR1,*--SP
	.dwpsn	"adc.c",2141,1
        LRETR
        ; return occurs

DW$280	.dwtag  DW_TAG_loop
	.dwattr DW$280, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L261:1:1471518965")
	.dwattr DW$280, DW_AT_begin_file("adc.c")
	.dwattr DW$280, DW_AT_begin_line(0x84b)
	.dwattr DW$280, DW_AT_end_line(0x850)
DW$281	.dwtag  DW_TAG_loop_range
	.dwattr DW$281, DW_AT_low_pc(DW$L$_CalibrateLoop18mA$28$B)
	.dwattr DW$281, DW_AT_high_pc(DW$L$_CalibrateLoop18mA$28$E)
DW$282	.dwtag  DW_TAG_loop_range
	.dwattr DW$282, DW_AT_low_pc(DW$L$_CalibrateLoop18mA$30$B)
	.dwattr DW$282, DW_AT_high_pc(DW$L$_CalibrateLoop18mA$30$E)

DW$283	.dwtag  DW_TAG_loop
	.dwattr DW$283, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L262:2:1471518965")
	.dwattr DW$283, DW_AT_begin_file("adc.c")
	.dwattr DW$283, DW_AT_begin_line(0x84d)
	.dwattr DW$283, DW_AT_end_line(0x84d)
DW$284	.dwtag  DW_TAG_loop_range
	.dwattr DW$284, DW_AT_low_pc(DW$L$_CalibrateLoop18mA$29$B)
	.dwattr DW$284, DW_AT_high_pc(DW$L$_CalibrateLoop18mA$29$E)
	.dwendtag DW$283

	.dwendtag DW$280


DW$285	.dwtag  DW_TAG_loop
	.dwattr DW$285, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L259:1:1471518965")
	.dwattr DW$285, DW_AT_begin_file("adc.c")
	.dwattr DW$285, DW_AT_begin_line(0x847)
	.dwattr DW$285, DW_AT_end_line(0x847)
DW$286	.dwtag  DW_TAG_loop_range
	.dwattr DW$286, DW_AT_low_pc(DW$L$_CalibrateLoop18mA$26$B)
	.dwattr DW$286, DW_AT_high_pc(DW$L$_CalibrateLoop18mA$26$E)
	.dwendtag DW$285

	.dwattr DW$278, DW_AT_end_file("adc.c")
	.dwattr DW$278, DW_AT_end_line(0x85d)
	.dwattr DW$278, DW_AT_end_column(0x01)
	.dwendtag DW$278

	.sect	".text"
	.global	_SetRealtimeuAScaledValue

DW$287	.dwtag  DW_TAG_subprogram, DW_AT_name("SetRealtimeuAScaledValue"), DW_AT_symbol_name("_SetRealtimeuAScaledValue")
	.dwattr DW$287, DW_AT_low_pc(_SetRealtimeuAScaledValue)
	.dwattr DW$287, DW_AT_high_pc(0x00)
	.dwattr DW$287, DW_AT_begin_file("adc.c")
	.dwattr DW$287, DW_AT_begin_line(0x861)
	.dwattr DW$287, DW_AT_begin_column(0x06)
	.dwattr DW$287, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$287, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",2146,1

;***************************************************************
;* FNAME: _SetRealtimeuAScaledValue     FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_SetRealtimeuAScaledValue:
;* AL    assigned to _chan
DW$288	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$288, DW_AT_type(*DW$T$10)
	.dwattr DW$288, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _valin
DW$289	.dwtag  DW_TAG_formal_parameter, DW_AT_name("valin"), DW_AT_symbol_name("_valin")
	.dwattr DW$289, DW_AT_type(*DW$T$10)
	.dwattr DW$289, DW_AT_location[DW_OP_reg1]
        MOVL      *SP++,XAR1
        MOVZ      AR1,AL                ; |2146| 
        MOVL      *SP++,XAR2
        ADDB      SP,#2
        MOV       AL,AH                 ; |2146| 
        LCR       #I$$TOFS              ; |2153| 
        ; call occurs [#I$$TOFS] ; |2153| 
        MOVW      DP,#_config+5
        MOVL      XAR2,ACC              ; |2153| 
        MOV       AL,@_config+5         ; |2153| 
        LCR       #U$$TOFS              ; |2153| 
        ; call occurs [#U$$TOFS] ; |2153| 
        MOVL      XAR6,ACC              ; |2153| 
        MOV       AL,#0
        MOV       AH,#17530
        MOVL      *-SP[2],ACC           ; |2153| 
        MOVL      ACC,XAR6              ; |2153| 
        LCR       #FS$$DIV              ; |2153| 
        ; call occurs [#FS$$DIV] ; |2153| 
        MOVL      *-SP[2],ACC           ; |2153| 
        MOVL      ACC,XAR2              ; |2153| 
        LCR       #FS$$MPY              ; |2153| 
        ; call occurs [#FS$$MPY] ; |2153| 
        MOVL      XAR6,ACC              ; |2153| 
        MOV       AL,#49152
        MOV       AH,#18010
        MOVL      *-SP[2],ACC           ; |2153| 
        MOVL      ACC,XAR6              ; |2153| 
        LCR       #FS$$ADD              ; |2153| 
        ; call occurs [#FS$$ADD] ; |2153| 
        LCR       #FS$$TOU              ; |2153| 
        ; call occurs [#FS$$TOU] ; |2153| 
        MOVZ      AR6,AL                ; |2153| 
        SETC      SXM
        MOV       ACC,AR1               ; |2153| 
        MOVL      XAR4,#_uArealtimeValue ; |2153| 
        ADDL      XAR4,ACC
        SUBB      SP,#2
        MOV       *+XAR4[0],AR6         ; |2153| 
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"adc.c",2154,1
        LRETR
        ; return occurs
	.dwattr DW$287, DW_AT_end_file("adc.c")
	.dwattr DW$287, DW_AT_end_line(0x86a)
	.dwattr DW$287, DW_AT_end_column(0x01)
	.dwendtag DW$287

	.sect	".text"
	.global	_GetRealtimeuAScaledValue

DW$290	.dwtag  DW_TAG_subprogram, DW_AT_name("GetRealtimeuAScaledValue"), DW_AT_symbol_name("_GetRealtimeuAScaledValue")
	.dwattr DW$290, DW_AT_low_pc(_GetRealtimeuAScaledValue)
	.dwattr DW$290, DW_AT_high_pc(0x00)
	.dwattr DW$290, DW_AT_begin_file("adc.c")
	.dwattr DW$290, DW_AT_begin_line(0x86c)
	.dwattr DW$290, DW_AT_begin_column(0x0e)
	.dwattr DW$290, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$290, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",2157,1

;***************************************************************
;* FNAME: _GetRealtimeuAScaledValue     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_GetRealtimeuAScaledValue:
;* AL    assigned to _chan
DW$291	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$291, DW_AT_type(*DW$T$10)
	.dwattr DW$291, DW_AT_location[DW_OP_reg0]
        SETC      SXM
        MOV       ACC,AL                ; |2158| 
        MOVL      XAR4,#_uArealtimeValue ; |2158| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |2158| 
	.dwpsn	"adc.c",2159,1
        LRETR
        ; return occurs
	.dwattr DW$290, DW_AT_end_file("adc.c")
	.dwattr DW$290, DW_AT_end_line(0x86f)
	.dwattr DW$290, DW_AT_end_column(0x01)
	.dwendtag DW$290

	.sect	".text"
	.global	_SetRealtimePreCompValue

DW$292	.dwtag  DW_TAG_subprogram, DW_AT_name("SetRealtimePreCompValue"), DW_AT_symbol_name("_SetRealtimePreCompValue")
	.dwattr DW$292, DW_AT_low_pc(_SetRealtimePreCompValue)
	.dwattr DW$292, DW_AT_high_pc(0x00)
	.dwattr DW$292, DW_AT_begin_file("adc.c")
	.dwattr DW$292, DW_AT_begin_line(0x871)
	.dwattr DW$292, DW_AT_begin_column(0x06)
	.dwattr DW$292, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$292, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",2162,1

;***************************************************************
;* FNAME: _SetRealtimePreCompValue      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SetRealtimePreCompValue:
;* AL    assigned to _chan
DW$293	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$293, DW_AT_type(*DW$T$11)
	.dwattr DW$293, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _val
DW$294	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$294, DW_AT_type(*DW$T$10)
	.dwattr DW$294, DW_AT_location[DW_OP_reg1]
        MOVZ      AR0,AL                ; |2162| 
        MOV       AL,#3500              ; |2163| 
        MIN       AL,AH                 ; |2163| 
        MOVL      XAR4,#_umrealtimeValue ; |2163| 
        MOV       *+XAR4[AR0],AL        ; |2163| 
	.dwpsn	"adc.c",2165,1
        LRETR
        ; return occurs
	.dwattr DW$292, DW_AT_end_file("adc.c")
	.dwattr DW$292, DW_AT_end_line(0x875)
	.dwattr DW$292, DW_AT_end_column(0x01)
	.dwendtag DW$292

	.sect	".text"
	.global	_GetRealtimePreCompValue

DW$295	.dwtag  DW_TAG_subprogram, DW_AT_name("GetRealtimePreCompValue"), DW_AT_symbol_name("_GetRealtimePreCompValue")
	.dwattr DW$295, DW_AT_low_pc(_GetRealtimePreCompValue)
	.dwattr DW$295, DW_AT_high_pc(0x00)
	.dwattr DW$295, DW_AT_begin_file("adc.c")
	.dwattr DW$295, DW_AT_begin_line(0x877)
	.dwattr DW$295, DW_AT_begin_column(0x05)
	.dwattr DW$295, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$295, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",2168,1

;***************************************************************
;* FNAME: _GetRealtimePreCompValue      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_GetRealtimePreCompValue:
;* AL    assigned to _chan
DW$296	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$296, DW_AT_type(*DW$T$11)
	.dwattr DW$296, DW_AT_location[DW_OP_reg0]
        MOVZ      AR0,AL                ; |2168| 
        MOV       T,#18                 ; |2169| 
        MOVL      XAR4,#_sensor         ; |2169| 
        MPYXU     ACC,T,AR0             ; |2169| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#0          ; |2169| 
        BF        L264,TC               ; |2169| 
        ; branchcc occurs ; |2169| 
        MOV       AL,#-32761            ; |2169| 
        BF        L269,UNC              ; |2169| 
        ; branch occurs ; |2169| 
L264:    
        MOVW      DP,#_settings+13
        MOV       AL,@_settings+13      ; |2170| 
        BF        L268,NEQ              ; |2170| 
        ; branchcc occurs ; |2170| 
        MOVL      XAR4,#_status3        ; |2171| 
        MOV       AL,*+XAR4[AR0]        ; |2171| 
        AND       AH,AL,#0x0002         ; |2171| 
        BF        L265,EQ               ; |2171| 
        ; branchcc occurs ; |2171| 
        MOV       AL,#-32765            ; |2171| 
        BF        L269,UNC              ; |2171| 
        ; branch occurs ; |2171| 
L265:    
        AND       AH,AL,#0x0004         ; |2172| 
        BF        L266,EQ               ; |2172| 
        ; branchcc occurs ; |2172| 
        MOV       AL,#-32764            ; |2172| 
        BF        L269,UNC              ; |2172| 
        ; branch occurs ; |2172| 
L266:    
        AND       AH,AL,#0x0001         ; |2173| 
        BF        L267,EQ               ; |2173| 
        ; branchcc occurs ; |2173| 
        MOV       AL,#-32766            ; |2173| 
        BF        L269,UNC              ; |2173| 
        ; branch occurs ; |2173| 
L267:    
        ANDB      AL,#8                 ; |2174| 
        BF        L268,EQ               ; |2174| 
        ; branchcc occurs ; |2174| 
        MOV       AL,#-32763            ; |2174| 
        BF        L269,UNC              ; |2174| 
        ; branch occurs ; |2174| 
L268:    
        MOVL      XAR4,#_umrealtimeValue ; |2176| 
        MOV       AL,*+XAR4[AR0]        ; |2176| 
L269:    
	.dwpsn	"adc.c",2178,1
        LRETR
        ; return occurs
	.dwattr DW$295, DW_AT_end_file("adc.c")
	.dwattr DW$295, DW_AT_end_line(0x882)
	.dwattr DW$295, DW_AT_end_column(0x01)
	.dwendtag DW$295

	.sect	".text"
	.global	_WriteDCModeChecksSettingstoNVMEM

DW$297	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteDCModeChecksSettingstoNVMEM"), DW_AT_symbol_name("_WriteDCModeChecksSettingstoNVMEM")
	.dwattr DW$297, DW_AT_low_pc(_WriteDCModeChecksSettingstoNVMEM)
	.dwattr DW$297, DW_AT_high_pc(0x00)
	.dwattr DW$297, DW_AT_begin_file("adc.c")
	.dwattr DW$297, DW_AT_begin_line(0x888)
	.dwattr DW$297, DW_AT_begin_column(0x06)
	.dwattr DW$297, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$297, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",2185,1

;***************************************************************
;* FNAME: _WriteDCModeChecksSettingstoNVMEM FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WriteDCModeChecksSettingstoNVMEM:
        MOVB      AL,#0
        MOVB      XAR5,#15              ; |2195| 
        MOVL      XAR4,#_dcmodechecks   ; |2195| 
        MOV       AH,#29030             ; |2195| 
        LCR       #_WriteNVMemory       ; |2195| 
        ; call occurs [#_WriteNVMemory] ; |2195| 
        MOVW      DP,#_settings+10
        MOV       @_settings+10,#1      ; |2197| 
	.dwpsn	"adc.c",2198,1
        LRETR
        ; return occurs
	.dwattr DW$297, DW_AT_end_file("adc.c")
	.dwattr DW$297, DW_AT_end_line(0x896)
	.dwattr DW$297, DW_AT_end_column(0x01)
	.dwendtag DW$297

	.sect	".text"
	.global	_ReadDCModeChecksSettingsfromNVMEM

DW$298	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadDCModeChecksSettingsfromNVMEM"), DW_AT_symbol_name("_ReadDCModeChecksSettingsfromNVMEM")
	.dwattr DW$298, DW_AT_low_pc(_ReadDCModeChecksSettingsfromNVMEM)
	.dwattr DW$298, DW_AT_high_pc(0x00)
	.dwattr DW$298, DW_AT_begin_file("adc.c")
	.dwattr DW$298, DW_AT_begin_line(0x89a)
	.dwattr DW$298, DW_AT_begin_column(0x06)
	.dwattr DW$298, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$298, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",2203,1

;***************************************************************
;* FNAME: _ReadDCModeChecksSettingsfromNVMEM FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadDCModeChecksSettingsfromNVMEM:
        MOVB      AL,#0
        MOVB      XAR5,#15              ; |2213| 
        MOVL      XAR4,#_dcmodechecks   ; |2213| 
        MOV       AH,#29030             ; |2213| 
        LCR       #_ReadNVMemory        ; |2213| 
        ; call occurs [#_ReadNVMemory] ; |2213| 
	.dwpsn	"adc.c",2214,1
        LRETR
        ; return occurs
	.dwattr DW$298, DW_AT_end_file("adc.c")
	.dwattr DW$298, DW_AT_end_line(0x8a6)
	.dwattr DW$298, DW_AT_end_column(0x01)
	.dwendtag DW$298

	.sect	".text"
	.global	_LoadDCModeChecksDefaults

DW$299	.dwtag  DW_TAG_subprogram, DW_AT_name("LoadDCModeChecksDefaults"), DW_AT_symbol_name("_LoadDCModeChecksDefaults")
	.dwattr DW$299, DW_AT_low_pc(_LoadDCModeChecksDefaults)
	.dwattr DW$299, DW_AT_high_pc(0x00)
	.dwattr DW$299, DW_AT_begin_file("adc.c")
	.dwattr DW$299, DW_AT_begin_line(0x8a8)
	.dwattr DW$299, DW_AT_begin_column(0x06)
	.dwattr DW$299, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$299, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",2217,1

;***************************************************************
;* FNAME: _LoadDCModeChecksDefaults     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_LoadDCModeChecksDefaults:
        MOVW      DP,#_dcmodechecks
        MOV       @_dcmodechecks,#13000 ; |2219| 
        MOVW      DP,#_dcmodechecks+1
        MOV       @_dcmodechecks+1,#15000 ; |2220| 
        MOVW      DP,#_dcmodechecks+2
        MOV       @_dcmodechecks+2,#11000 ; |2221| 
        MOVW      DP,#_dcmodechecks+3
        MOV       @_dcmodechecks+3,#16000 ; |2222| 
        MOVW      DP,#_dcmodechecks+4
        MOV       @_dcmodechecks+4,#8000 ; |2223| 
        MOVW      DP,#_dcmodechecks+5
        MOV       @_dcmodechecks+5,#7000 ; |2224| 
        LCR       #_WriteDCModeChecksSettingstoNVMEM ; |2226| 
        ; call occurs [#_WriteDCModeChecksSettingstoNVMEM] ; |2226| 
	.dwpsn	"adc.c",2228,1
        LRETR
        ; return occurs
	.dwattr DW$299, DW_AT_end_file("adc.c")
	.dwattr DW$299, DW_AT_end_line(0x8b4)
	.dwattr DW$299, DW_AT_end_column(0x01)
	.dwendtag DW$299

	.sect	".text"
	.global	_PeakResetBitStatus

DW$300	.dwtag  DW_TAG_subprogram, DW_AT_name("PeakResetBitStatus"), DW_AT_symbol_name("_PeakResetBitStatus")
	.dwattr DW$300, DW_AT_low_pc(_PeakResetBitStatus)
	.dwattr DW$300, DW_AT_high_pc(0x00)
	.dwattr DW$300, DW_AT_begin_file("adc.c")
	.dwattr DW$300, DW_AT_begin_line(0x8b7)
	.dwattr DW$300, DW_AT_begin_column(0x06)
	.dwattr DW$300, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$300, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",2231,44

;***************************************************************
;* FNAME: _PeakResetBitStatus           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_PeakResetBitStatus:
;* AL    assigned to _chan
DW$301	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$301, DW_AT_type(*DW$T$11)
	.dwattr DW$301, DW_AT_location[DW_OP_reg0]
        MOV       AH,AL                 ; |2231| 
        CMPB      AH,#15                ; |2233| 
        BF        L270,HI               ; |2233| 
        ; branchcc occurs ; |2233| 
        MOVW      DP,#_DCModePeakReset
        MOV       AL,@_DCModePeakReset  ; |2233| 
        BF        L273,UNC              ; |2233| 
        ; branch occurs ; |2233| 
L270:    
        CMPB      AH,#16                ; |2233| 
        BF        L271,LO               ; |2233| 
        ; branchcc occurs ; |2233| 
        CMPB      AH,#31                ; |2233| 
        BF        L272,LOS              ; |2233| 
        ; branchcc occurs ; |2233| 
L271:    
        MOV       AL,#-1                ; |2233| 
        BF        L274,UNC              ; |2233| 
        ; branch occurs ; |2233| 
L272:    
        MOVW      DP,#_DCModePeakReset+1
        MOV       AL,@_DCModePeakReset+1 ; |2233| 
        ADDB      AH,#-16
L273:    
        LCR       #_CheckBitSet         ; |2233| 
        ; call occurs [#_CheckBitSet] ; |2233| 
L274:    
	.dwpsn	"adc.c",2238,1
        LRETR
        ; return occurs
	.dwattr DW$300, DW_AT_end_file("adc.c")
	.dwattr DW$300, DW_AT_end_line(0x8be)
	.dwattr DW$300, DW_AT_end_column(0x01)
	.dwendtag DW$300

	.sect	".text"
	.global	_PeakResetBitClear

DW$302	.dwtag  DW_TAG_subprogram, DW_AT_name("PeakResetBitClear"), DW_AT_symbol_name("_PeakResetBitClear")
	.dwattr DW$302, DW_AT_low_pc(_PeakResetBitClear)
	.dwattr DW$302, DW_AT_high_pc(0x00)
	.dwattr DW$302, DW_AT_begin_file("adc.c")
	.dwattr DW$302, DW_AT_begin_line(0x8c1)
	.dwattr DW$302, DW_AT_begin_column(0x07)
	.dwattr DW$302, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$302, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",2241,44

;***************************************************************
;* FNAME: _PeakResetBitClear            FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_PeakResetBitClear:
;* AL    assigned to _chan
DW$303	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$303, DW_AT_type(*DW$T$11)
	.dwattr DW$303, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVZ      AR1,AL                ; |2241| 
        CMPB      AL,#15                ; |2243| 
        BF        L275,HI               ; |2243| 
        ; branchcc occurs ; |2243| 
        MOVW      DP,#_DCModePeakReset
        MOV       AL,@_DCModePeakReset  ; |2243| 
        MOV       AH,AR1                ; |2243| 
        LCR       #_BitClear            ; |2243| 
        ; call occurs [#_BitClear] ; |2243| 
        MOVW      DP,#_DCModePeakReset
        MOV       @_DCModePeakReset,AL  ; |2243| 
L275:    
        MOV       AL,AR1
        CMPB      AL,#16                ; |2244| 
        BF        L276,LO               ; |2244| 
        ; branchcc occurs ; |2244| 
        CMPB      AL,#31                ; |2244| 
        BF        L276,HI               ; |2244| 
        ; branchcc occurs ; |2244| 
        MOVW      DP,#_DCModePeakReset+1
        MOV       AL,@_DCModePeakReset+1 ; |2244| 
        MOV       AH,AR1                ; |2244| 
        ADDB      AH,#-16
        LCR       #_BitClear            ; |2244| 
        ; call occurs [#_BitClear] ; |2244| 
        MOVW      DP,#_DCModePeakReset+1
        MOV       @_DCModePeakReset+1,AL ; |2244| 
L276:    
        MOVL      XAR1,*--SP
	.dwpsn	"adc.c",2246,1
        LRETR
        ; return occurs
	.dwattr DW$302, DW_AT_end_file("adc.c")
	.dwattr DW$302, DW_AT_end_line(0x8c6)
	.dwattr DW$302, DW_AT_end_column(0x01)
	.dwendtag DW$302

	.sect	".text"
	.global	_DCModeChecks

DW$304	.dwtag  DW_TAG_subprogram, DW_AT_name("DCModeChecks"), DW_AT_symbol_name("_DCModeChecks")
	.dwattr DW$304, DW_AT_low_pc(_DCModeChecks)
	.dwattr DW$304, DW_AT_high_pc(0x00)
	.dwattr DW$304, DW_AT_begin_file("adc.c")
	.dwattr DW$304, DW_AT_begin_line(0x8c8)
	.dwattr DW$304, DW_AT_begin_column(0x06)
	.dwattr DW$304, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$304, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",2248,25

;***************************************************************
;* FNAME: _DCModeChecks                 FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  6 SOE     *
;***************************************************************

_DCModeChecks:
        MOVL      *SP++,XAR1
        MOVW      DP,#_allsensors
        MOVL      *SP++,XAR2
        MOVB      XAR1,#0
        MOVL      *SP++,XAR3
        AND       AL,@_allsensors,#0xfffe ; |2262| 
        ADDB      SP,#2
        BF        L282,EQ               ; |2262| 
        ; branchcc occurs ; |2262| 
L277:    
DW$L$_DCModeChecks$2$B:
	.dwpsn	"adc.c",2263,0
        MOV       ACC,AR1 << #1         ; |2264| 
        MOVZ      AR6,AL                ; |2264| 
        LCR       #_GetRealtimeuAScaledValue ; |2264| 
        ; call occurs [#_GetRealtimeuAScaledValue] ; |2264| 
        MOVZ      AR7,AL                ; |2264| 
        MOVB      AL,#1                 ; |2265| 
        ADD       AL,AR6                ; |2265| 
        LCR       #_GetRealtimeuAScaledValue ; |2265| 
        ; call occurs [#_GetRealtimeuAScaledValue] ; |2265| 
        MOVW      DP,#_dcmodechecks+5
        MOV       AH,@_dcmodechecks+5   ; |2267| 
        CMP       AH,AR7                ; |2267| 
        MOVZ      AR6,AL                ; |2265| 
        BF        L278,LOS              ; |2267| 
        ; branchcc occurs ; |2267| 
DW$L$_DCModeChecks$2$E:
DW$L$_DCModeChecks$3$B:
        CMP       AH,AR6                ; |2267| 
        BF        L281,HI               ; |2267| 
        ; branchcc occurs ; |2267| 
DW$L$_DCModeChecks$3$E:
L278:    
DW$L$_DCModeChecks$4$B:
        MOV       AL,AR7                ; |2269| 
        SETC      SXM
        SUB       AL,AR6                ; |2269| 
        MOVW      DP,#_dcmodechecks+4
        MOV       ACC,AL                ; |2269| 
        ABS       ACC                   ; |2269| 
        CMP       AL,@_dcmodechecks+4   ; |2269| 
        BF        L279,HIS              ; |2269| 
        ; branchcc occurs ; |2269| 
DW$L$_DCModeChecks$4$E:
DW$L$_DCModeChecks$5$B:
        MOVW      DP,#_DCModeCylinderComparison
        MOV       AL,@_DCModeCylinderComparison ; |2269| 
        MOV       AH,AR1                ; |2269| 
        LCR       #_BitSet              ; |2269| 
        ; call occurs [#_BitSet] ; |2269| 
        BF        L280,UNC              ; |2269| 
        ; branch occurs ; |2269| 
DW$L$_DCModeChecks$5$E:
L279:    
DW$L$_DCModeChecks$6$B:
        MOVW      DP,#_DCModeCylinderComparison
        MOV       AL,@_DCModeCylinderComparison ; |2269| 
        MOV       AH,AR1                ; |2269| 
        LCR       #_BitClear            ; |2269| 
        ; call occurs [#_BitClear] ; |2269| 
DW$L$_DCModeChecks$6$E:
L280:    
DW$L$_DCModeChecks$7$B:
        MOVW      DP,#_DCModeCylinderComparison
        MOV       @_DCModeCylinderComparison,AL ; |2269| 
DW$L$_DCModeChecks$7$E:
L281:    
DW$L$_DCModeChecks$8$B:
        MOVW      DP,#_allsensors
        ADDB      XAR1,#1               ; |2262| 
        MOV       AL,@_allsensors       ; |2262| 
        LSR       AL,1                  ; |2262| 
        CMP       AL,AR1                ; |2262| 
	.dwpsn	"adc.c",2276,0
        BF        L277,HI               ; |2262| 
        ; branchcc occurs ; |2262| 
DW$L$_DCModeChecks$8$E:
L282:    
        MOVW      DP,#_allsensors
        MOV       AL,@_allsensors       ; |2280| 
        MOVB      XAR1,#0
        BF        L290,EQ               ; |2280| 
        ; branchcc occurs ; |2280| 
L283:    
DW$L$_DCModeChecks$10$B:
	.dwpsn	"adc.c",2280,0
        MOV       AL,AR1                ; |2282| 
        LCR       #_GetuASCaledValue    ; |2282| 
        ; call occurs [#_GetuASCaledValue] ; |2282| 
        MOV       *-SP[1],AL            ; |2282| 
        MOV       AL,AR1                ; |2282| 
        CMPB      AL,#15                ; |2284| 
        BF        L284,LOS              ; |2284| 
        ; branchcc occurs ; |2284| 
DW$L$_DCModeChecks$10$E:
DW$L$_DCModeChecks$11$B:
        ADDB      AL,#-16
        MOVB      XAR3,#1               ; |2284| 
        MOV       *-SP[2],AL            ; |2284| 
        BF        L285,UNC              ; |2284| 
        ; branch occurs ; |2284| 
DW$L$_DCModeChecks$11$E:
L284:    
DW$L$_DCModeChecks$12$B:
        MOV       *-SP[2],AR1           ; |2284| 
        MOVB      XAR3,#0
DW$L$_DCModeChecks$12$E:
L285:    
DW$L$_DCModeChecks$13$B:
        MOV       AL,*-SP[1]
        MOVW      DP,#_dcmodechecks+2
        CMP       AL,@_dcmodechecks+2   ; |2284| 
        BF        L286,LO               ; |2284| 
        ; branchcc occurs ; |2284| 
DW$L$_DCModeChecks$13$E:
DW$L$_DCModeChecks$14$B:
        MOVW      DP,#_dcmodechecks+3
        CMP       AL,@_dcmodechecks+3   ; |2284| 
        BF        L286,HI               ; |2284| 
        ; branchcc occurs ; |2284| 
DW$L$_DCModeChecks$14$E:
DW$L$_DCModeChecks$15$B:
        MOVL      XAR4,#_DCModeInRangeOK ; |2287| 
        MOVL      ACC,XAR4              ; |2287| 
        ADDU      ACC,AR3               ; |2287| 
        MOVL      XAR2,ACC              ; |2287| 
        MOV       AL,*+XAR2[0]          ; |2287| 
        MOV       AH,*-SP[2]            ; |2287| 
        LCR       #_BitSet              ; |2287| 
        ; call occurs [#_BitSet] ; |2287| 
        BF        L287,UNC              ; |2288| 
        ; branch occurs ; |2288| 
DW$L$_DCModeChecks$15$E:
L286:    
DW$L$_DCModeChecks$16$B:
        MOVL      XAR4,#_DCModeInRangeOK ; |2289| 
        MOVL      ACC,XAR4              ; |2289| 
        ADDU      ACC,AR3               ; |2289| 
        MOVL      XAR2,ACC              ; |2289| 
        MOV       AL,*+XAR2[0]          ; |2289| 
        MOV       AH,*-SP[2]            ; |2289| 
        LCR       #_BitClear            ; |2289| 
        ; call occurs [#_BitClear] ; |2289| 
DW$L$_DCModeChecks$16$E:
L287:    
DW$L$_DCModeChecks$17$B:
        MOV       *+XAR2[0],AL          ; |2289| 
        MOVW      DP,#_dcmodechecks
        MOV       AL,*-SP[1]
        CMP       AL,@_dcmodechecks     ; |2288| 
        BF        L288,LO               ; |2288| 
        ; branchcc occurs ; |2288| 
DW$L$_DCModeChecks$17$E:
DW$L$_DCModeChecks$18$B:
        MOVW      DP,#_dcmodechecks+1
        CMP       AL,@_dcmodechecks+1   ; |2288| 
        BF        L288,HI               ; |2288| 
        ; branchcc occurs ; |2288| 
DW$L$_DCModeChecks$18$E:
DW$L$_DCModeChecks$19$B:
        MOVL      XAR4,#_DCModeInRangeIdeal ; |2293| 
        MOVL      ACC,XAR4              ; |2293| 
        ADDU      ACC,AR3               ; |2293| 
        MOVL      XAR2,ACC              ; |2293| 
        MOV       AL,*+XAR2[0]          ; |2293| 
        MOV       AH,*-SP[2]            ; |2293| 
        LCR       #_BitSet              ; |2293| 
        ; call occurs [#_BitSet] ; |2293| 
        BF        L289,UNC              ; |2294| 
        ; branch occurs ; |2294| 
DW$L$_DCModeChecks$19$E:
L288:    
DW$L$_DCModeChecks$20$B:
        MOVL      XAR4,#_DCModeInRangeIdeal ; |2295| 
        MOVL      ACC,XAR4              ; |2295| 
        ADDU      ACC,AR3               ; |2295| 
        MOVL      XAR2,ACC              ; |2295| 
        MOV       AL,*+XAR2[0]          ; |2295| 
        MOV       AH,*-SP[2]            ; |2295| 
        LCR       #_BitClear            ; |2295| 
        ; call occurs [#_BitClear] ; |2295| 
DW$L$_DCModeChecks$20$E:
L289:    
DW$L$_DCModeChecks$21$B:
        ADDB      XAR1,#1               ; |2280| 
        MOV       *+XAR2[0],AL          ; |2295| 
        MOVW      DP,#_allsensors
        MOV       AL,AR1                ; |2280| 
        CMP       AL,@_allsensors       ; |2280| 
	.dwpsn	"adc.c",2298,0
        BF        L283,LO               ; |2280| 
        ; branchcc occurs ; |2280| 
DW$L$_DCModeChecks$21$E:
L290:    
        SUBB      SP,#2
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"adc.c",2300,1
        LRETR
        ; return occurs

DW$305	.dwtag  DW_TAG_loop
	.dwattr DW$305, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L283:1:1471518965")
	.dwattr DW$305, DW_AT_begin_file("adc.c")
	.dwattr DW$305, DW_AT_begin_line(0x8e8)
	.dwattr DW$305, DW_AT_end_line(0x8fa)
DW$306	.dwtag  DW_TAG_loop_range
	.dwattr DW$306, DW_AT_low_pc(DW$L$_DCModeChecks$10$B)
	.dwattr DW$306, DW_AT_high_pc(DW$L$_DCModeChecks$10$E)
DW$307	.dwtag  DW_TAG_loop_range
	.dwattr DW$307, DW_AT_low_pc(DW$L$_DCModeChecks$11$B)
	.dwattr DW$307, DW_AT_high_pc(DW$L$_DCModeChecks$11$E)
DW$308	.dwtag  DW_TAG_loop_range
	.dwattr DW$308, DW_AT_low_pc(DW$L$_DCModeChecks$12$B)
	.dwattr DW$308, DW_AT_high_pc(DW$L$_DCModeChecks$12$E)
DW$309	.dwtag  DW_TAG_loop_range
	.dwattr DW$309, DW_AT_low_pc(DW$L$_DCModeChecks$13$B)
	.dwattr DW$309, DW_AT_high_pc(DW$L$_DCModeChecks$13$E)
DW$310	.dwtag  DW_TAG_loop_range
	.dwattr DW$310, DW_AT_low_pc(DW$L$_DCModeChecks$14$B)
	.dwattr DW$310, DW_AT_high_pc(DW$L$_DCModeChecks$14$E)
DW$311	.dwtag  DW_TAG_loop_range
	.dwattr DW$311, DW_AT_low_pc(DW$L$_DCModeChecks$15$B)
	.dwattr DW$311, DW_AT_high_pc(DW$L$_DCModeChecks$15$E)
DW$312	.dwtag  DW_TAG_loop_range
	.dwattr DW$312, DW_AT_low_pc(DW$L$_DCModeChecks$16$B)
	.dwattr DW$312, DW_AT_high_pc(DW$L$_DCModeChecks$16$E)
DW$313	.dwtag  DW_TAG_loop_range
	.dwattr DW$313, DW_AT_low_pc(DW$L$_DCModeChecks$17$B)
	.dwattr DW$313, DW_AT_high_pc(DW$L$_DCModeChecks$17$E)
DW$314	.dwtag  DW_TAG_loop_range
	.dwattr DW$314, DW_AT_low_pc(DW$L$_DCModeChecks$18$B)
	.dwattr DW$314, DW_AT_high_pc(DW$L$_DCModeChecks$18$E)
DW$315	.dwtag  DW_TAG_loop_range
	.dwattr DW$315, DW_AT_low_pc(DW$L$_DCModeChecks$19$B)
	.dwattr DW$315, DW_AT_high_pc(DW$L$_DCModeChecks$19$E)
DW$316	.dwtag  DW_TAG_loop_range
	.dwattr DW$316, DW_AT_low_pc(DW$L$_DCModeChecks$20$B)
	.dwattr DW$316, DW_AT_high_pc(DW$L$_DCModeChecks$20$E)
DW$317	.dwtag  DW_TAG_loop_range
	.dwattr DW$317, DW_AT_low_pc(DW$L$_DCModeChecks$21$B)
	.dwattr DW$317, DW_AT_high_pc(DW$L$_DCModeChecks$21$E)
	.dwendtag DW$305


DW$318	.dwtag  DW_TAG_loop
	.dwattr DW$318, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\adc.asm:L277:1:1471518965")
	.dwattr DW$318, DW_AT_begin_file("adc.c")
	.dwattr DW$318, DW_AT_begin_line(0x8d6)
	.dwattr DW$318, DW_AT_end_line(0x8e4)
DW$319	.dwtag  DW_TAG_loop_range
	.dwattr DW$319, DW_AT_low_pc(DW$L$_DCModeChecks$2$B)
	.dwattr DW$319, DW_AT_high_pc(DW$L$_DCModeChecks$2$E)
DW$320	.dwtag  DW_TAG_loop_range
	.dwattr DW$320, DW_AT_low_pc(DW$L$_DCModeChecks$4$B)
	.dwattr DW$320, DW_AT_high_pc(DW$L$_DCModeChecks$4$E)
DW$321	.dwtag  DW_TAG_loop_range
	.dwattr DW$321, DW_AT_low_pc(DW$L$_DCModeChecks$5$B)
	.dwattr DW$321, DW_AT_high_pc(DW$L$_DCModeChecks$5$E)
DW$322	.dwtag  DW_TAG_loop_range
	.dwattr DW$322, DW_AT_low_pc(DW$L$_DCModeChecks$6$B)
	.dwattr DW$322, DW_AT_high_pc(DW$L$_DCModeChecks$6$E)
DW$323	.dwtag  DW_TAG_loop_range
	.dwattr DW$323, DW_AT_low_pc(DW$L$_DCModeChecks$3$B)
	.dwattr DW$323, DW_AT_high_pc(DW$L$_DCModeChecks$3$E)
DW$324	.dwtag  DW_TAG_loop_range
	.dwattr DW$324, DW_AT_low_pc(DW$L$_DCModeChecks$7$B)
	.dwattr DW$324, DW_AT_high_pc(DW$L$_DCModeChecks$7$E)
DW$325	.dwtag  DW_TAG_loop_range
	.dwattr DW$325, DW_AT_low_pc(DW$L$_DCModeChecks$8$B)
	.dwattr DW$325, DW_AT_high_pc(DW$L$_DCModeChecks$8$E)
	.dwendtag DW$318

	.dwattr DW$304, DW_AT_end_file("adc.c")
	.dwattr DW$304, DW_AT_end_line(0x8fc)
	.dwattr DW$304, DW_AT_end_column(0x01)
	.dwendtag DW$304

	.sect	".text"
	.global	_DCModeAuto

DW$326	.dwtag  DW_TAG_subprogram, DW_AT_name("DCModeAuto"), DW_AT_symbol_name("_DCModeAuto")
	.dwattr DW$326, DW_AT_low_pc(_DCModeAuto)
	.dwattr DW$326, DW_AT_high_pc(0x00)
	.dwattr DW$326, DW_AT_begin_file("adc.c")
	.dwattr DW$326, DW_AT_begin_line(0x901)
	.dwattr DW$326, DW_AT_begin_column(0x06)
	.dwattr DW$326, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$326, DW_AT_skeletal(0x01)
	.dwpsn	"adc.c",2305,31

;***************************************************************
;* FNAME: _DCModeAuto                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_DCModeAuto:
;* AL    assigned to _rpm
DW$327	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$327, DW_AT_type(*DW$T$11)
	.dwattr DW$327, DW_AT_location[DW_OP_reg0]
        MOVW      DP,#_settings+17
        MOV       AH,@_settings+17      ; |2307| 
        CMPB      AH,#1                 ; |2307| 
        BF        L292,NEQ              ; |2307| 
        ; branchcc occurs ; |2307| 
        MOVW      DP,#_timers+70
        MOV       AH,@_timers+70        ; |2307| 
        BF        L292,EQ               ; |2307| 
        ; branchcc occurs ; |2307| 
        CMPB      AL,#12                ; |2308| 
        BF        L291,LO               ; |2308| 
        ; branchcc occurs ; |2308| 
        MOVW      DP,#_settings+13
        MOV       AL,@_settings+13      ; |2315| 
        CMPB      AL,#1                 ; |2315| 
        BF        L292,NEQ              ; |2315| 
        ; branchcc occurs ; |2315| 
        LCR       #_DCModeClear         ; |2316| 
        ; call occurs [#_DCModeClear] ; |2316| 
        BF        L292,UNC              ; |2316| 
        ; branch occurs ; |2316| 
L291:    
        MOVW      DP,#_settings+13
        MOV       AL,@_settings+13      ; |2309| 
        BF        L292,NEQ              ; |2309| 
        ; branchcc occurs ; |2309| 
        MOVB      AL,#1                 ; |2310| 
        MOVW      DP,#_settings+13
        MOV       @_settings+13,AL      ; |2310| 
        MOVW      DP,#_settings+15
        MOV       @_settings+15,AL      ; |2311| 
        LCR       #_DCModeInit          ; |2312| 
        ; call occurs [#_DCModeInit] ; |2312| 
L292:    
	.dwpsn	"adc.c",2321,1
        LRETR
        ; return occurs
	.dwattr DW$326, DW_AT_end_file("adc.c")
	.dwattr DW$326, DW_AT_end_line(0x911)
	.dwattr DW$326, DW_AT_end_column(0x01)
	.dwendtag DW$326

;***************************************************************
;* FAR STRINGS                                                 *
;***************************************************************
	.sect	".econst"
	.align	2
FSL1:	.string	"Code - DCModeInit",13,10,0
	.align	2
FSL2:	.string	"Code - DCModeClear",13,10,0
	.align	2
FSL3:	.string	"Peak Store:%u,%d",13,10,0
	.align	2
FSL4:	.string	"Ch-pk:%u,%d",13,10,0
	.align	2
FSL5:	.string	"Ch:%u pk-reset",13,10,0
;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_sprintf
	.global	_memset
	.global	_sqrt
	.global	_DebugStringOut
	.global	_GetSensorEnabled
	.global	_SetRPMChan
	.global	_GetRPM
	.global	_GetModalRPM
	.global	_SetImmScaledValue
	.global	_SetScaledValue
	.global	_GetScaledValue
	.global	_SetPreCompValue
	.global	_Status1Flags
	.global	_ClearSelectiveMANTable
	.global	_WriteSensorStatustoNVMEM
	.global	_WriteOffsetAtoNVMEM
	.global	_CheckBitSet
	.global	_BitSet
	.global	_BitClear
	.global	_Status3Flags
	.global	_SetNoPulseFlag
	.global	_SetAlarmEvent
	.global	_ClearAlarmEvent
	.global	_SetBitEvent
	.global	_CheckAlarmBitSet
	.global	_FloattoIntRound
	.global	_WriteAllSensorStructtoNVMEM
	.global	_GeneralSettingstoSDCardFile
	.global	_CalAbort
	.global	_CheckWIORange
	.global	_SaveSafeStruct1
	.global	_SaveXtswplusAnaCal
	.global	_SaveSafeStruct2
	.global	_WriteNVMemory
	.global	_ReadNVMemory
	.global	_gpa
	.global	_gpb
	.global	_gpd
	.global	_settings
	.global	_motion
	.global	_safe1
	.global	_safe2
	.global	_xtswplusanacal
	.global	_timers
	.global	_allsensors
	.global	_config
	.global	_loopcheck
	.global	_stringbuffer
	.global	_offsetA
	.global	_sensor
	.global	_rpmdata
	.global	_damagemonignore
	.global	_status3
	.global	FS$$ADD
	.global	FS$$TOI
	.global	I$$TOFS
	.global	FS$$MPY
	.global	FS$$SUB
	.global	FS$$TOU
	.global	U$$TOFS
	.global	FS$$DIV
	.global	UL$$TOFS
	.global	FS$$CMP

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x16)

DW$T$124	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$124, DW_AT_language(DW_LANG_C)
DW$328	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$329	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$330	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$123)
	.dwendtag DW$T$124


DW$T$128	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$128, DW_AT_language(DW_LANG_C)
DW$331	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$127)
	.dwendtag DW$T$128


DW$T$130	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$130, DW_AT_language(DW_LANG_C)
DW$332	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$333	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$130


DW$T$132	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$132, DW_AT_language(DW_LANG_C)
DW$334	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$335	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$132


DW$T$134	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$134, DW_AT_language(DW_LANG_C)

DW$T$136	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$136, DW_AT_language(DW_LANG_C)
DW$336	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$136


DW$T$138	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$138, DW_AT_language(DW_LANG_C)
DW$337	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$338	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$138

DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)

DW$T$67	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$67, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$67, DW_AT_byte_size(0x1c)
DW$339	.dwtag  DW_TAG_subrange_type
	.dwattr DW$339, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$67


DW$T$143	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$143, DW_AT_language(DW_LANG_C)
DW$340	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$143


DW$T$146	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$146, DW_AT_language(DW_LANG_C)
DW$341	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$127)
DW$342	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$145)
DW$343	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$146


DW$T$148	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$148, DW_AT_language(DW_LANG_C)
DW$344	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$148


DW$T$150	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$150, DW_AT_language(DW_LANG_C)
DW$345	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$346	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$150


DW$T$152	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$152, DW_AT_language(DW_LANG_C)

DW$T$154	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$154, DW_AT_language(DW_LANG_C)
DW$347	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$6)
	.dwendtag DW$T$154


DW$T$156	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$156, DW_AT_language(DW_LANG_C)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)

DW$T$105	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$105, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$105, DW_AT_byte_size(0x1c)
DW$348	.dwtag  DW_TAG_subrange_type
	.dwattr DW$348, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$105


DW$T$169	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$169, DW_AT_language(DW_LANG_C)
DW$349	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$169


DW$T$171	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$171, DW_AT_language(DW_LANG_C)
DW$350	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$171


DW$T$173	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$173, DW_AT_language(DW_LANG_C)
DW$351	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$352	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$173


DW$T$177	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$176)
	.dwattr DW$T$177, DW_AT_language(DW_LANG_C)
DW$353	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$177


DW$T$179	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$179, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$179, DW_AT_byte_size(0x02)
DW$354	.dwtag  DW_TAG_subrange_type
	.dwattr DW$354, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$179

DW$T$123	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$123, DW_AT_language(DW_LANG_C)
DW$T$16	.dwtag  DW_TAG_base_type, DW_AT_name("float")
	.dwattr DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$16, DW_AT_byte_size(0x02)
DW$T$17	.dwtag  DW_TAG_base_type, DW_AT_name("double")
	.dwattr DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$17, DW_AT_byte_size(0x02)

DW$T$187	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$17)
	.dwattr DW$T$187, DW_AT_language(DW_LANG_C)
DW$355	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$17)
	.dwendtag DW$T$187

DW$T$188	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$70)
	.dwattr DW$T$188, DW_AT_address_class(0x16)

DW$T$189	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$188)
	.dwattr DW$T$189, DW_AT_language(DW_LANG_C)
DW$356	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$189

DW$T$194	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$193)
	.dwattr DW$T$194, DW_AT_address_class(0x16)

DW$T$195	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$194)
	.dwattr DW$T$195, DW_AT_language(DW_LANG_C)
DW$357	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$195


DW$T$196	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$193)
	.dwattr DW$T$196, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$196, DW_AT_byte_size(0x1c)
DW$358	.dwtag  DW_TAG_subrange_type
	.dwattr DW$358, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$196

DW$359	.dwtag  DW_TAG_far_type
	.dwattr DW$359, DW_AT_type(*DW$T$201)
DW$T$202	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$202, DW_AT_type(*DW$359)
DW$360	.dwtag  DW_TAG_far_type
	.dwattr DW$360, DW_AT_type(*DW$T$205)
DW$T$206	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$206, DW_AT_type(*DW$360)
DW$361	.dwtag  DW_TAG_far_type
	.dwattr DW$361, DW_AT_type(*DW$T$209)
DW$T$210	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$210, DW_AT_type(*DW$361)
DW$T$213	.dwtag  DW_TAG_typedef, DW_AT_name("settingsstruct"), DW_AT_type(*DW$T$31)
	.dwattr DW$T$213, DW_AT_language(DW_LANG_C)
DW$T$214	.dwtag  DW_TAG_typedef, DW_AT_name("motionstruct"), DW_AT_type(*DW$T$33)
	.dwattr DW$T$214, DW_AT_language(DW_LANG_C)
DW$T$216	.dwtag  DW_TAG_typedef, DW_AT_name("safestruct1struct"), DW_AT_type(*DW$T$37)
	.dwattr DW$T$216, DW_AT_language(DW_LANG_C)
DW$T$218	.dwtag  DW_TAG_typedef, DW_AT_name("safestruct2struct"), DW_AT_type(*DW$T$50)
	.dwattr DW$T$218, DW_AT_language(DW_LANG_C)
DW$T$220	.dwtag  DW_TAG_typedef, DW_AT_name("xtswplusanastruct"), DW_AT_type(*DW$T$51)
	.dwattr DW$T$220, DW_AT_language(DW_LANG_C)
DW$362	.dwtag  DW_TAG_far_type
	.dwattr DW$362, DW_AT_type(*DW$T$222)
DW$T$223	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$223, DW_AT_type(*DW$362)
DW$T$226	.dwtag  DW_TAG_typedef, DW_AT_name("allsensorstruct"), DW_AT_type(*DW$T$55)
	.dwattr DW$T$226, DW_AT_language(DW_LANG_C)
DW$T$228	.dwtag  DW_TAG_typedef, DW_AT_name("configstruct"), DW_AT_type(*DW$T$62)
	.dwattr DW$T$228, DW_AT_language(DW_LANG_C)
DW$T$229	.dwtag  DW_TAG_typedef, DW_AT_name("loopcheckstruct"), DW_AT_type(*DW$T$66)
	.dwattr DW$T$229, DW_AT_language(DW_LANG_C)
DW$T$230	.dwtag  DW_TAG_typedef, DW_AT_name("offsetstruct"), DW_AT_type(*DW$T$68)
	.dwattr DW$T$230, DW_AT_language(DW_LANG_C)

DW$T$233	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$232)
	.dwattr DW$T$233, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$233, DW_AT_byte_size(0x1f8)
DW$363	.dwtag  DW_TAG_subrange_type
	.dwattr DW$363, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$233

DW$T$236	.dwtag  DW_TAG_typedef, DW_AT_name("rpmstruct"), DW_AT_type(*DW$T$74)
	.dwattr DW$T$236, DW_AT_language(DW_LANG_C)
DW$364	.dwtag  DW_TAG_far_type
	.dwattr DW$364, DW_AT_type(*DW$T$95)
DW$T$240	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$240, DW_AT_type(*DW$364)
DW$365	.dwtag  DW_TAG_far_type
	.dwattr DW$365, DW_AT_type(*DW$T$251)
DW$T$252	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$252, DW_AT_type(*DW$365)
DW$366	.dwtag  DW_TAG_far_type
	.dwattr DW$366, DW_AT_type(*DW$T$283)
DW$T$284	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$284, DW_AT_type(*DW$366)
DW$T$287	.dwtag  DW_TAG_typedef, DW_AT_name("slemsettingsstruct"), DW_AT_type(*DW$T$111)
	.dwattr DW$T$287, DW_AT_language(DW_LANG_C)
DW$T$289	.dwtag  DW_TAG_typedef, DW_AT_name("slemstruct"), DW_AT_type(*DW$T$113)
	.dwattr DW$T$289, DW_AT_language(DW_LANG_C)
DW$T$291	.dwtag  DW_TAG_typedef, DW_AT_name("rtcbatstruct"), DW_AT_type(*DW$T$115)
	.dwattr DW$T$291, DW_AT_language(DW_LANG_C)
DW$T$293	.dwtag  DW_TAG_typedef, DW_AT_name("cppstruct"), DW_AT_type(*DW$T$116)
	.dwattr DW$T$293, DW_AT_language(DW_LANG_C)
DW$T$294	.dwtag  DW_TAG_typedef, DW_AT_name("cppsettingsstruct"), DW_AT_type(*DW$T$117)
	.dwattr DW$T$294, DW_AT_language(DW_LANG_C)
DW$T$296	.dwtag  DW_TAG_typedef, DW_AT_name("sensorMovingstruct"), DW_AT_type(*DW$T$118)
	.dwattr DW$T$296, DW_AT_language(DW_LANG_C)
DW$T$298	.dwtag  DW_TAG_typedef, DW_AT_name("dcmodechecksstruct"), DW_AT_type(*DW$T$122)
	.dwattr DW$T$298, DW_AT_language(DW_LANG_C)
DW$T$127	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$126)
	.dwattr DW$T$127, DW_AT_address_class(0x16)
DW$T$145	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$144)
	.dwattr DW$T$145, DW_AT_address_class(0x16)

DW$T$300	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$126)
	.dwattr DW$T$300, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$300, DW_AT_byte_size(0x64)
DW$367	.dwtag  DW_TAG_subrange_type
	.dwattr DW$367, DW_AT_upper_bound(0x63)
	.dwendtag DW$T$300

DW$T$176	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$175)
	.dwattr DW$T$176, DW_AT_address_class(0x16)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)
DW$T$70	.dwtag  DW_TAG_typedef, DW_AT_name("status1struct"), DW_AT_type(*DW$T$19)
	.dwattr DW$T$70, DW_AT_language(DW_LANG_C)
DW$T$193	.dwtag  DW_TAG_typedef, DW_AT_name("status3struct"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$193, DW_AT_language(DW_LANG_C)
DW$T$201	.dwtag  DW_TAG_typedef, DW_AT_name("gpaport"), DW_AT_type(*DW$T$23)
	.dwattr DW$T$201, DW_AT_language(DW_LANG_C)
DW$T$205	.dwtag  DW_TAG_typedef, DW_AT_name("gpbport"), DW_AT_type(*DW$T$26)
	.dwattr DW$T$205, DW_AT_language(DW_LANG_C)
DW$T$209	.dwtag  DW_TAG_typedef, DW_AT_name("gpdport"), DW_AT_type(*DW$T$29)
	.dwattr DW$T$209, DW_AT_language(DW_LANG_C)

DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$31, DW_AT_name("tag_settingsstruct")
	.dwattr DW$T$31, DW_AT_byte_size(0x24)
DW$368	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$368, DW_AT_name("watchdog"), DW_AT_symbol_name("_watchdog")
	.dwattr DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$368, DW_AT_accessibility(DW_ACCESS_public)
DW$369	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$369, DW_AT_name("ledflashflag"), DW_AT_symbol_name("_ledflashflag")
	.dwattr DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$369, DW_AT_accessibility(DW_ACCESS_public)
DW$370	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$370, DW_AT_name("updatesafe"), DW_AT_symbol_name("_updatesafe")
	.dwattr DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$370, DW_AT_accessibility(DW_ACCESS_public)
DW$371	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$371, DW_AT_name("tableconfigtype"), DW_AT_symbol_name("_tableconfigtype")
	.dwattr DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$371, DW_AT_accessibility(DW_ACCESS_public)
DW$372	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$372, DW_AT_name("caltableconfigtype"), DW_AT_symbol_name("_caltableconfigtype")
	.dwattr DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$372, DW_AT_accessibility(DW_ACCESS_public)
DW$373	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$373, DW_AT_name("eventmsgid"), DW_AT_symbol_name("_eventmsgid")
	.dwattr DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$373, DW_AT_accessibility(DW_ACCESS_public)
DW$374	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$374, DW_AT_name("configoperationcomplete"), DW_AT_symbol_name("_configoperationcomplete")
	.dwattr DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$374, DW_AT_accessibility(DW_ACCESS_public)
DW$375	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$375, DW_AT_name("sdcarderr"), DW_AT_symbol_name("_sdcarderr")
	.dwattr DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$375, DW_AT_accessibility(DW_ACCESS_public)
DW$376	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$376, DW_AT_name("sderase"), DW_AT_symbol_name("_sderase")
	.dwattr DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$376, DW_AT_accessibility(DW_ACCESS_public)
DW$377	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$377, DW_AT_name("sdreinit"), DW_AT_symbol_name("_sdreinit")
	.dwattr DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$377, DW_AT_accessibility(DW_ACCESS_public)
DW$378	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$378, DW_AT_name("sdcardupdate"), DW_AT_symbol_name("_sdcardupdate")
	.dwattr DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$378, DW_AT_accessibility(DW_ACCESS_public)
DW$379	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$379, DW_AT_name("cardreadflag"), DW_AT_symbol_name("_cardreadflag")
	.dwattr DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$379, DW_AT_accessibility(DW_ACCESS_public)
DW$380	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$380, DW_AT_name("ignore"), DW_AT_symbol_name("_ignore")
	.dwattr DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$380, DW_AT_accessibility(DW_ACCESS_public)
DW$381	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$381, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$381, DW_AT_accessibility(DW_ACCESS_public)
DW$382	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$382, DW_AT_name("spiinuse"), DW_AT_symbol_name("_spiinuse")
	.dwattr DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$382, DW_AT_accessibility(DW_ACCESS_public)
DW$383	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$383, DW_AT_name("dcpeakhold"), DW_AT_symbol_name("_dcpeakhold")
	.dwattr DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$383, DW_AT_accessibility(DW_ACCESS_public)
DW$384	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$384, DW_AT_name("dcpause"), DW_AT_symbol_name("_dcpause")
	.dwattr DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$384, DW_AT_accessibility(DW_ACCESS_public)
DW$385	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$385, DW_AT_name("mastermode"), DW_AT_symbol_name("_mastermode")
	.dwattr DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$385, DW_AT_accessibility(DW_ACCESS_public)
DW$386	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$386, DW_AT_name("updatescaling"), DW_AT_symbol_name("_updatescaling")
	.dwattr DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$386, DW_AT_accessibility(DW_ACCESS_public)
DW$387	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$387, DW_AT_name("forwardasternflag"), DW_AT_symbol_name("_forwardasternflag")
	.dwattr DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$387, DW_AT_accessibility(DW_ACCESS_public)
DW$388	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$388, DW_AT_name("initprogress"), DW_AT_symbol_name("_initprogress")
	.dwattr DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$388, DW_AT_accessibility(DW_ACCESS_public)
DW$389	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$389, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$389, DW_AT_accessibility(DW_ACCESS_public)
DW$390	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$390, DW_AT_name("slowdowncounter"), DW_AT_symbol_name("_slowdowncounter")
	.dwattr DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$390, DW_AT_accessibility(DW_ACCESS_public)
DW$391	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$391, DW_AT_name("slowdowncondition"), DW_AT_symbol_name("_slowdowncondition")
	.dwattr DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$391, DW_AT_accessibility(DW_ACCESS_public)
DW$392	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$392, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$392, DW_AT_accessibility(DW_ACCESS_public)
DW$393	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$393, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$393, DW_AT_accessibility(DW_ACCESS_public)
DW$394	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$394, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$394, DW_AT_accessibility(DW_ACCESS_public)
DW$395	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$395, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$395, DW_AT_accessibility(DW_ACCESS_public)
DW$396	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$396, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$396, DW_AT_accessibility(DW_ACCESS_public)
DW$397	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$397, DW_AT_name("temperaturealarm"), DW_AT_symbol_name("_temperaturealarm")
	.dwattr DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$397, DW_AT_accessibility(DW_ACCESS_public)
DW$398	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$398, DW_AT_name("temperatureslowdown"), DW_AT_symbol_name("_temperatureslowdown")
	.dwattr DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$398, DW_AT_accessibility(DW_ACCESS_public)
DW$399	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$399, DW_AT_name("anadebug"), DW_AT_symbol_name("_anadebug")
	.dwattr DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$399, DW_AT_accessibility(DW_ACCESS_public)
DW$400	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$400, DW_AT_name("serialdebug"), DW_AT_symbol_name("_serialdebug")
	.dwattr DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr DW$400, DW_AT_accessibility(DW_ACCESS_public)
DW$401	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$401, DW_AT_name("timerrunning"), DW_AT_symbol_name("_timerrunning")
	.dwattr DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$401, DW_AT_accessibility(DW_ACCESS_public)
DW$402	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$402, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$402, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$33, DW_AT_name("tag_motionstruct")
	.dwattr DW$T$33, DW_AT_byte_size(0x09)
DW$403	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$403, DW_AT_name("counter"), DW_AT_symbol_name("_counter")
	.dwattr DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$403, DW_AT_accessibility(DW_ACCESS_public)
DW$404	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$404, DW_AT_name("ready"), DW_AT_symbol_name("_ready")
	.dwattr DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$404, DW_AT_accessibility(DW_ACCESS_public)
DW$405	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$405, DW_AT_name("order"), DW_AT_symbol_name("_order")
	.dwattr DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$405, DW_AT_accessibility(DW_ACCESS_public)
DW$406	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$406, DW_AT_name("forwardasternflag"), DW_AT_symbol_name("_forwardasternflag")
	.dwattr DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$406, DW_AT_accessibility(DW_ACCESS_public)
DW$407	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$407, DW_AT_name("forwardasternflagprev"), DW_AT_symbol_name("_forwardasternflagprev")
	.dwattr DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$407, DW_AT_accessibility(DW_ACCESS_public)
DW$408	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$408, DW_AT_name("recalnow"), DW_AT_symbol_name("_recalnow")
	.dwattr DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$408, DW_AT_accessibility(DW_ACCESS_public)
DW$409	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$409, DW_AT_name("calerror"), DW_AT_symbol_name("_calerror")
	.dwattr DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$409, DW_AT_accessibility(DW_ACCESS_public)
DW$410	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$410, DW_AT_name("recheckdir"), DW_AT_symbol_name("_recheckdir")
	.dwattr DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$410, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$37, DW_AT_name("tag_safestruct1struct")
	.dwattr DW$T$37, DW_AT_byte_size(0x1f)
DW$411	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$411, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$411, DW_AT_accessibility(DW_ACCESS_public)
DW$412	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$412, DW_AT_name("watchdog"), DW_AT_symbol_name("_watchdog")
	.dwattr DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$412, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$37


DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$50, DW_AT_name("tag_safestruct2struct")
	.dwattr DW$T$50, DW_AT_byte_size(0x1e)
DW$413	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$413, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$413, DW_AT_accessibility(DW_ACCESS_public)
DW$414	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$414, DW_AT_name("log"), DW_AT_symbol_name("_log")
	.dwattr DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$414, DW_AT_accessibility(DW_ACCESS_public)
DW$415	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$415, DW_AT_name("modbus"), DW_AT_symbol_name("_modbus")
	.dwattr DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$415, DW_AT_accessibility(DW_ACCESS_public)
DW$416	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$416, DW_AT_name("filter"), DW_AT_symbol_name("_filter")
	.dwattr DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$416, DW_AT_accessibility(DW_ACCESS_public)
DW$417	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$43)
	.dwattr DW$417, DW_AT_name("alarms"), DW_AT_symbol_name("_alarms")
	.dwattr DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$417, DW_AT_accessibility(DW_ACCESS_public)
DW$418	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$44)
	.dwattr DW$418, DW_AT_name("modbusbaud"), DW_AT_symbol_name("_modbusbaud")
	.dwattr DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$418, DW_AT_accessibility(DW_ACCESS_public)
DW$419	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$419, DW_AT_name("modbus2"), DW_AT_symbol_name("_modbus2")
	.dwattr DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$419, DW_AT_accessibility(DW_ACCESS_public)
DW$420	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$420, DW_AT_name("sync"), DW_AT_symbol_name("_sync")
	.dwattr DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$420, DW_AT_accessibility(DW_ACCESS_public)
DW$421	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$421, DW_AT_name("alarmenable"), DW_AT_symbol_name("_alarmenable")
	.dwattr DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$421, DW_AT_accessibility(DW_ACCESS_public)
DW$422	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$422, DW_AT_name("trendmax"), DW_AT_symbol_name("_trendmax")
	.dwattr DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$422, DW_AT_accessibility(DW_ACCESS_public)
DW$423	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$423, DW_AT_name("tempcomp"), DW_AT_symbol_name("_tempcomp")
	.dwattr DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$423, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$50


DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$51, DW_AT_name("tag_xtswplusanastruct")
	.dwattr DW$T$51, DW_AT_byte_size(0x0e)
DW$424	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$424, DW_AT_name("analog18ma"), DW_AT_symbol_name("_analog18ma")
	.dwattr DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$424, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$51

DW$T$222	.dwtag  DW_TAG_typedef, DW_AT_name("timersstruct"), DW_AT_type(*DW$T$52)
	.dwattr DW$T$222, DW_AT_language(DW_LANG_C)

DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$55, DW_AT_name("tag_allsensorstruct")
	.dwattr DW$T$55, DW_AT_byte_size(0x2d)
DW$425	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$425, DW_AT_name("numsensors"), DW_AT_symbol_name("_numsensors")
	.dwattr DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$425, DW_AT_accessibility(DW_ACCESS_public)
DW$426	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$426, DW_AT_name("numsensorsspu1"), DW_AT_symbol_name("_numsensorsspu1")
	.dwattr DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$426, DW_AT_accessibility(DW_ACCESS_public)
DW$427	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$427, DW_AT_name("numsensorsspu2"), DW_AT_symbol_name("_numsensorsspu2")
	.dwattr DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$427, DW_AT_accessibility(DW_ACCESS_public)
DW$428	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$428, DW_AT_name("nominalspeed"), DW_AT_symbol_name("_nominalspeed")
	.dwattr DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$428, DW_AT_accessibility(DW_ACCESS_public)
DW$429	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$429, DW_AT_name("rpmmin"), DW_AT_symbol_name("_rpmmin")
	.dwattr DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$429, DW_AT_accessibility(DW_ACCESS_public)
DW$430	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$430, DW_AT_name("rpmmax"), DW_AT_symbol_name("_rpmmax")
	.dwattr DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$430, DW_AT_accessibility(DW_ACCESS_public)
DW$431	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$431, DW_AT_name("reflash"), DW_AT_symbol_name("_reflash")
	.dwattr DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$431, DW_AT_accessibility(DW_ACCESS_public)
DW$432	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$432, DW_AT_name("sensorhysteresis"), DW_AT_symbol_name("_sensorhysteresis")
	.dwattr DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$432, DW_AT_accessibility(DW_ACCESS_public)
DW$433	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$433, DW_AT_name("cylinderhysteresis"), DW_AT_symbol_name("_cylinderhysteresis")
	.dwattr DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$433, DW_AT_accessibility(DW_ACCESS_public)
DW$434	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$434, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$434, DW_AT_accessibility(DW_ACCESS_public)
DW$435	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$435, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$435, DW_AT_accessibility(DW_ACCESS_public)
DW$436	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$436, DW_AT_name("slowdowndevcallevel"), DW_AT_symbol_name("_slowdowndevcallevel")
	.dwattr DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$436, DW_AT_accessibility(DW_ACCESS_public)
DW$437	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$437, DW_AT_name("alarmdevcallevel"), DW_AT_symbol_name("_alarmdevcallevel")
	.dwattr DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$437, DW_AT_accessibility(DW_ACCESS_public)
DW$438	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$438, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$438, DW_AT_accessibility(DW_ACCESS_public)
DW$439	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$439, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$439, DW_AT_accessibility(DW_ACCESS_public)
DW$440	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$440, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$440, DW_AT_accessibility(DW_ACCESS_public)
DW$441	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$53)
	.dwattr DW$441, DW_AT_name("flags"), DW_AT_symbol_name("_flags")
	.dwattr DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$441, DW_AT_accessibility(DW_ACCESS_public)
DW$442	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$442, DW_AT_name("slowdownack"), DW_AT_symbol_name("_slowdownack")
	.dwattr DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$442, DW_AT_accessibility(DW_ACCESS_public)
DW$443	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$443, DW_AT_name("alarmack"), DW_AT_symbol_name("_alarmack")
	.dwattr DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$443, DW_AT_accessibility(DW_ACCESS_public)
DW$444	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$444, DW_AT_name("maxmintimer"), DW_AT_symbol_name("_maxmintimer")
	.dwattr DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$444, DW_AT_accessibility(DW_ACCESS_public)
DW$445	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$445, DW_AT_name("enginedircal"), DW_AT_symbol_name("_enginedircal")
	.dwattr DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$445, DW_AT_accessibility(DW_ACCESS_public)
DW$446	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$446, DW_AT_name("dirorder"), DW_AT_symbol_name("_dirorder")
	.dwattr DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$446, DW_AT_accessibility(DW_ACCESS_public)
DW$447	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$447, DW_AT_name("prewarningtimer"), DW_AT_symbol_name("_prewarningtimer")
	.dwattr DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$447, DW_AT_accessibility(DW_ACCESS_public)
DW$448	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$448, DW_AT_name("prewarninglevel"), DW_AT_symbol_name("_prewarninglevel")
	.dwattr DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$448, DW_AT_accessibility(DW_ACCESS_public)
DW$449	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$449, DW_AT_name("rpmlimit"), DW_AT_symbol_name("_rpmlimit")
	.dwattr DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr DW$449, DW_AT_accessibility(DW_ACCESS_public)
DW$450	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$450, DW_AT_name("dsss"), DW_AT_symbol_name("_dsss")
	.dwattr DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$450, DW_AT_accessibility(DW_ACCESS_public)
DW$451	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$451, DW_AT_name("slowdowncallevel"), DW_AT_symbol_name("_slowdowncallevel")
	.dwattr DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$451, DW_AT_accessibility(DW_ACCESS_public)
DW$452	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$452, DW_AT_name("alarmcallevel"), DW_AT_symbol_name("_alarmcallevel")
	.dwattr DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$452, DW_AT_accessibility(DW_ACCESS_public)
DW$453	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$453, DW_AT_name("cylinderalarmcallevel"), DW_AT_symbol_name("_cylinderalarmcallevel")
	.dwattr DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$453, DW_AT_accessibility(DW_ACCESS_public)
DW$454	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$54)
	.dwattr DW$454, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$454, DW_AT_accessibility(DW_ACCESS_public)
DW$455	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$455, DW_AT_name("iBarredVibrationSpeedLow"), DW_AT_symbol_name("_iBarredVibrationSpeedLow")
	.dwattr DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$455, DW_AT_accessibility(DW_ACCESS_public)
DW$456	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$456, DW_AT_name("iBarredVibrationSpeedHigh"), DW_AT_symbol_name("_iBarredVibrationSpeedHigh")
	.dwattr DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$456, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$55


DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$62, DW_AT_name("tag_configstruct")
	.dwattr DW$T$62, DW_AT_byte_size(0x18)
DW$457	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$56)
	.dwattr DW$457, DW_AT_name("filter"), DW_AT_symbol_name("_filter")
	.dwattr DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$457, DW_AT_accessibility(DW_ACCESS_public)
DW$458	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$57)
	.dwattr DW$458, DW_AT_name("alarmenable"), DW_AT_symbol_name("_alarmenable")
	.dwattr DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$458, DW_AT_accessibility(DW_ACCESS_public)
DW$459	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$58)
	.dwattr DW$459, DW_AT_name("trendmax"), DW_AT_symbol_name("_trendmax")
	.dwattr DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$459, DW_AT_accessibility(DW_ACCESS_public)
DW$460	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$59)
	.dwattr DW$460, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$460, DW_AT_accessibility(DW_ACCESS_public)
DW$461	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$60)
	.dwattr DW$461, DW_AT_name("sdsettings"), DW_AT_symbol_name("_sdsettings")
	.dwattr DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$461, DW_AT_accessibility(DW_ACCESS_public)
DW$462	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$61)
	.dwattr DW$462, DW_AT_name("comms"), DW_AT_symbol_name("_comms")
	.dwattr DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$462, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$62


DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$66, DW_AT_name("tag_loopcheckstruct")
	.dwattr DW$T$66, DW_AT_byte_size(0x10)
DW$463	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$63)
	.dwattr DW$463, DW_AT_name("min"), DW_AT_symbol_name("_min")
	.dwattr DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$463, DW_AT_accessibility(DW_ACCESS_public)
DW$464	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$64)
	.dwattr DW$464, DW_AT_name("max"), DW_AT_symbol_name("_max")
	.dwattr DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$464, DW_AT_accessibility(DW_ACCESS_public)
DW$465	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$65)
	.dwattr DW$465, DW_AT_name("last"), DW_AT_symbol_name("_last")
	.dwattr DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$465, DW_AT_accessibility(DW_ACCESS_public)
DW$466	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$466, DW_AT_name("value"), DW_AT_symbol_name("_value")
	.dwattr DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$466, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$66


DW$T$68	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$68, DW_AT_name("tag_offsetstruct")
	.dwattr DW$T$68, DW_AT_byte_size(0x1c)
DW$467	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$67)
	.dwattr DW$467, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$467, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$68

DW$T$232	.dwtag  DW_TAG_typedef, DW_AT_name("sensorstruct"), DW_AT_type(*DW$T$72)
	.dwattr DW$T$232, DW_AT_language(DW_LANG_C)

DW$T$74	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$74, DW_AT_byte_size(0x13)
DW$468	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$468, DW_AT_name("count"), DW_AT_symbol_name("_count")
	.dwattr DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$468, DW_AT_accessibility(DW_ACCESS_public)
DW$469	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$469, DW_AT_name("ready"), DW_AT_symbol_name("_ready")
	.dwattr DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$469, DW_AT_accessibility(DW_ACCESS_public)
DW$470	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$470, DW_AT_name("previouscount"), DW_AT_symbol_name("_previouscount")
	.dwattr DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$470, DW_AT_accessibility(DW_ACCESS_public)
DW$471	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$471, DW_AT_name("sampleperiod"), DW_AT_symbol_name("_sampleperiod")
	.dwattr DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$471, DW_AT_accessibility(DW_ACCESS_public)
DW$472	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$472, DW_AT_name("period"), DW_AT_symbol_name("_period")
	.dwattr DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$472, DW_AT_accessibility(DW_ACCESS_public)
DW$473	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$73)
	.dwattr DW$473, DW_AT_name("stable"), DW_AT_symbol_name("_stable")
	.dwattr DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$473, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$74


DW$T$95	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$95, DW_AT_name("ADC_REGS")
	.dwattr DW$T$95, DW_AT_byte_size(0x1a)
DW$474	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$76)
	.dwattr DW$474, DW_AT_name("ADCTRL1"), DW_AT_symbol_name("_ADCTRL1")
	.dwattr DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$474, DW_AT_accessibility(DW_ACCESS_public)
DW$475	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$78)
	.dwattr DW$475, DW_AT_name("ADCTRL2"), DW_AT_symbol_name("_ADCTRL2")
	.dwattr DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$475, DW_AT_accessibility(DW_ACCESS_public)
DW$476	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$80)
	.dwattr DW$476, DW_AT_name("ADCMAXCONV"), DW_AT_symbol_name("_ADCMAXCONV")
	.dwattr DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$476, DW_AT_accessibility(DW_ACCESS_public)
DW$477	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$82)
	.dwattr DW$477, DW_AT_name("ADCCHSELSEQ1"), DW_AT_symbol_name("_ADCCHSELSEQ1")
	.dwattr DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$477, DW_AT_accessibility(DW_ACCESS_public)
DW$478	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$84)
	.dwattr DW$478, DW_AT_name("ADCCHSELSEQ2"), DW_AT_symbol_name("_ADCCHSELSEQ2")
	.dwattr DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$478, DW_AT_accessibility(DW_ACCESS_public)
DW$479	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$86)
	.dwattr DW$479, DW_AT_name("ADCCHSELSEQ3"), DW_AT_symbol_name("_ADCCHSELSEQ3")
	.dwattr DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$479, DW_AT_accessibility(DW_ACCESS_public)
DW$480	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$88)
	.dwattr DW$480, DW_AT_name("ADCCHSELSEQ4"), DW_AT_symbol_name("_ADCCHSELSEQ4")
	.dwattr DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$480, DW_AT_accessibility(DW_ACCESS_public)
DW$481	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$90)
	.dwattr DW$481, DW_AT_name("ADCASEQSR"), DW_AT_symbol_name("_ADCASEQSR")
	.dwattr DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$481, DW_AT_accessibility(DW_ACCESS_public)
DW$482	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$482, DW_AT_name("ADCRESULT0"), DW_AT_symbol_name("_ADCRESULT0")
	.dwattr DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$482, DW_AT_accessibility(DW_ACCESS_public)
DW$483	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$483, DW_AT_name("ADCRESULT1"), DW_AT_symbol_name("_ADCRESULT1")
	.dwattr DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$483, DW_AT_accessibility(DW_ACCESS_public)
DW$484	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$484, DW_AT_name("ADCRESULT2"), DW_AT_symbol_name("_ADCRESULT2")
	.dwattr DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$484, DW_AT_accessibility(DW_ACCESS_public)
DW$485	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$485, DW_AT_name("ADCRESULT3"), DW_AT_symbol_name("_ADCRESULT3")
	.dwattr DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$485, DW_AT_accessibility(DW_ACCESS_public)
DW$486	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$486, DW_AT_name("ADCRESULT4"), DW_AT_symbol_name("_ADCRESULT4")
	.dwattr DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$486, DW_AT_accessibility(DW_ACCESS_public)
DW$487	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$487, DW_AT_name("ADCRESULT5"), DW_AT_symbol_name("_ADCRESULT5")
	.dwattr DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$487, DW_AT_accessibility(DW_ACCESS_public)
DW$488	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$488, DW_AT_name("ADCRESULT6"), DW_AT_symbol_name("_ADCRESULT6")
	.dwattr DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$488, DW_AT_accessibility(DW_ACCESS_public)
DW$489	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$489, DW_AT_name("ADCRESULT7"), DW_AT_symbol_name("_ADCRESULT7")
	.dwattr DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$489, DW_AT_accessibility(DW_ACCESS_public)
DW$490	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$490, DW_AT_name("ADCRESULT8"), DW_AT_symbol_name("_ADCRESULT8")
	.dwattr DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$490, DW_AT_accessibility(DW_ACCESS_public)
DW$491	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$491, DW_AT_name("ADCRESULT9"), DW_AT_symbol_name("_ADCRESULT9")
	.dwattr DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$491, DW_AT_accessibility(DW_ACCESS_public)
DW$492	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$492, DW_AT_name("ADCRESULT10"), DW_AT_symbol_name("_ADCRESULT10")
	.dwattr DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$492, DW_AT_accessibility(DW_ACCESS_public)
DW$493	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$493, DW_AT_name("ADCRESULT11"), DW_AT_symbol_name("_ADCRESULT11")
	.dwattr DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$493, DW_AT_accessibility(DW_ACCESS_public)
DW$494	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$494, DW_AT_name("ADCRESULT12"), DW_AT_symbol_name("_ADCRESULT12")
	.dwattr DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$494, DW_AT_accessibility(DW_ACCESS_public)
DW$495	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$495, DW_AT_name("ADCRESULT13"), DW_AT_symbol_name("_ADCRESULT13")
	.dwattr DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$495, DW_AT_accessibility(DW_ACCESS_public)
DW$496	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$496, DW_AT_name("ADCRESULT14"), DW_AT_symbol_name("_ADCRESULT14")
	.dwattr DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$496, DW_AT_accessibility(DW_ACCESS_public)
DW$497	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$497, DW_AT_name("ADCRESULT15"), DW_AT_symbol_name("_ADCRESULT15")
	.dwattr DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$497, DW_AT_accessibility(DW_ACCESS_public)
DW$498	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$92)
	.dwattr DW$498, DW_AT_name("ADCTRL3"), DW_AT_symbol_name("_ADCTRL3")
	.dwattr DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$498, DW_AT_accessibility(DW_ACCESS_public)
DW$499	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$94)
	.dwattr DW$499, DW_AT_name("ADCST"), DW_AT_symbol_name("_ADCST")
	.dwattr DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$499, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$95

DW$T$251	.dwtag  DW_TAG_typedef, DW_AT_name("adcdatastruct"), DW_AT_type(*DW$T$99)
	.dwattr DW$T$251, DW_AT_language(DW_LANG_C)
DW$T$283	.dwtag  DW_TAG_typedef, DW_AT_name("inputstruct"), DW_AT_type(*DW$T$110)
	.dwattr DW$T$283, DW_AT_language(DW_LANG_C)

DW$T$111	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$111, DW_AT_name("tag_slemsettingsstruct")
	.dwattr DW$T$111, DW_AT_byte_size(0x06)
DW$500	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$500, DW_AT_name("enabled"), DW_AT_symbol_name("_enabled")
	.dwattr DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$500, DW_AT_accessibility(DW_ACCESS_public)
DW$501	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$501, DW_AT_name("alarmmask"), DW_AT_symbol_name("_alarmmask")
	.dwattr DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$501, DW_AT_accessibility(DW_ACCESS_public)
DW$502	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$502, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$502, DW_AT_accessibility(DW_ACCESS_public)
DW$503	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$503, DW_AT_name("mVfsd"), DW_AT_symbol_name("_mVfsd")
	.dwattr DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$503, DW_AT_accessibility(DW_ACCESS_public)
DW$504	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$504, DW_AT_name("hysteresis"), DW_AT_symbol_name("_hysteresis")
	.dwattr DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$504, DW_AT_accessibility(DW_ACCESS_public)
DW$505	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$505, DW_AT_name("alarmdelay"), DW_AT_symbol_name("_alarmdelay")
	.dwattr DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$505, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$111


DW$T$113	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$113, DW_AT_name("tag_slemsstruct")
	.dwattr DW$T$113, DW_AT_byte_size(0x03)
DW$506	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$506, DW_AT_name("mV"), DW_AT_symbol_name("_mV")
	.dwattr DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$506, DW_AT_accessibility(DW_ACCESS_public)
DW$507	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$112)
	.dwattr DW$507, DW_AT_name("alarms"), DW_AT_symbol_name("_alarms")
	.dwattr DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$507, DW_AT_accessibility(DW_ACCESS_public)
DW$508	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$508, DW_AT_name("levelcount"), DW_AT_symbol_name("_levelcount")
	.dwattr DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$508, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$113


DW$T$115	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$115, DW_AT_name("tag_rtcbatstruct")
	.dwattr DW$T$115, DW_AT_byte_size(0x02)
DW$509	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$509, DW_AT_name("mV"), DW_AT_symbol_name("_mV")
	.dwattr DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$509, DW_AT_accessibility(DW_ACCESS_public)
DW$510	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$114)
	.dwattr DW$510, DW_AT_name("alarms"), DW_AT_symbol_name("_alarms")
	.dwattr DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$510, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$115


DW$T$116	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$116, DW_AT_name("tag_cppstruct")
	.dwattr DW$T$116, DW_AT_byte_size(0x06)
DW$511	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$511, DW_AT_name("iAtodValue"), DW_AT_symbol_name("_iAtodValue")
	.dwattr DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$511, DW_AT_accessibility(DW_ACCESS_public)
DW$512	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$512, DW_AT_name("fmAinput"), DW_AT_symbol_name("_fmAinput")
	.dwattr DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$512, DW_AT_accessibility(DW_ACCESS_public)
DW$513	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$513, DW_AT_name("fLoadPercent"), DW_AT_symbol_name("_fLoadPercent")
	.dwattr DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$513, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$116


DW$T$117	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$117, DW_AT_name("tag_cppsettingsstruct")
	.dwattr DW$T$117, DW_AT_byte_size(0x10)
DW$514	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$514, DW_AT_name("iCppEnable"), DW_AT_symbol_name("_iCppEnable")
	.dwattr DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$514, DW_AT_accessibility(DW_ACCESS_public)
DW$515	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$515, DW_AT_name("iCppLowLimit"), DW_AT_symbol_name("_iCppLowLimit")
	.dwattr DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$515, DW_AT_accessibility(DW_ACCESS_public)
DW$516	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$516, DW_AT_name("iCppHighLimit"), DW_AT_symbol_name("_iCppHighLimit")
	.dwattr DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$516, DW_AT_accessibility(DW_ACCESS_public)
DW$517	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$517, DW_AT_name("cppkvalue"), DW_AT_symbol_name("_cppkvalue")
	.dwattr DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$517, DW_AT_accessibility(DW_ACCESS_public)
DW$518	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$518, DW_AT_name("gammavalue"), DW_AT_symbol_name("_gammavalue")
	.dwattr DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$518, DW_AT_accessibility(DW_ACCESS_public)
DW$519	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$519, DW_AT_name("cpplevelx"), DW_AT_symbol_name("_cpplevelx")
	.dwattr DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$519, DW_AT_accessibility(DW_ACCESS_public)
DW$520	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$520, DW_AT_name("delatRpmPauseDelay"), DW_AT_symbol_name("_delatRpmPauseDelay")
	.dwattr DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$520, DW_AT_accessibility(DW_ACCESS_public)
DW$521	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$521, DW_AT_name("calAlarmThreshhold"), DW_AT_symbol_name("_calAlarmThreshhold")
	.dwattr DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$521, DW_AT_accessibility(DW_ACCESS_public)
DW$522	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$522, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$522, DW_AT_accessibility(DW_ACCESS_public)
DW$523	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$523, DW_AT_name("unused3"), DW_AT_symbol_name("_unused3")
	.dwattr DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$523, DW_AT_accessibility(DW_ACCESS_public)
DW$524	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$524, DW_AT_name("unused4"), DW_AT_symbol_name("_unused4")
	.dwattr DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$524, DW_AT_accessibility(DW_ACCESS_public)
DW$525	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$525, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$525, DW_AT_accessibility(DW_ACCESS_public)
DW$526	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$526, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$526, DW_AT_accessibility(DW_ACCESS_public)
DW$527	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$527, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$527, DW_AT_accessibility(DW_ACCESS_public)
DW$528	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$528, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$528, DW_AT_accessibility(DW_ACCESS_public)
DW$529	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$529, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$529, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$117


DW$T$118	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$118, DW_AT_name("tag_sensorMoving")
	.dwattr DW$T$118, DW_AT_byte_size(0x02)
DW$530	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$530, DW_AT_name("calAlarmThreshhold"), DW_AT_symbol_name("_calAlarmThreshhold")
	.dwattr DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$530, DW_AT_accessibility(DW_ACCESS_public)
DW$531	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$531, DW_AT_name("unusedByte"), DW_AT_symbol_name("_unusedByte")
	.dwattr DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$531, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$118


DW$T$122	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$122, DW_AT_name("tag_dcmodechecksstruct")
	.dwattr DW$T$122, DW_AT_byte_size(0x0f)
DW$532	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$119)
	.dwattr DW$532, DW_AT_name("ideal"), DW_AT_symbol_name("_ideal")
	.dwattr DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$532, DW_AT_accessibility(DW_ACCESS_public)
DW$533	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$120)
	.dwattr DW$533, DW_AT_name("ok"), DW_AT_symbol_name("_ok")
	.dwattr DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$533, DW_AT_accessibility(DW_ACCESS_public)
DW$534	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$121)
	.dwattr DW$534, DW_AT_name("cylinderComparison"), DW_AT_symbol_name("_cylinderComparison")
	.dwattr DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$534, DW_AT_accessibility(DW_ACCESS_public)
DW$535	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$535, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$535, DW_AT_accessibility(DW_ACCESS_public)
DW$536	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$536, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$536, DW_AT_accessibility(DW_ACCESS_public)
DW$537	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$537, DW_AT_name("unused3"), DW_AT_symbol_name("_unused3")
	.dwattr DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$537, DW_AT_accessibility(DW_ACCESS_public)
DW$538	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$538, DW_AT_name("unused4"), DW_AT_symbol_name("_unused4")
	.dwattr DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$538, DW_AT_accessibility(DW_ACCESS_public)
DW$539	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$539, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$539, DW_AT_accessibility(DW_ACCESS_public)
DW$540	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$540, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$540, DW_AT_accessibility(DW_ACCESS_public)
DW$541	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$541, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$541, DW_AT_accessibility(DW_ACCESS_public)
DW$542	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$542, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$542, DW_AT_accessibility(DW_ACCESS_public)
DW$543	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$543, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$543, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$122

DW$T$126	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$126, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$126, DW_AT_byte_size(0x01)
DW$544	.dwtag  DW_TAG_far_type
	.dwattr DW$544, DW_AT_type(*DW$T$126)
DW$T$144	.dwtag  DW_TAG_const_type
	.dwattr DW$T$144, DW_AT_type(*DW$544)

DW$T$32	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$32, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$32, DW_AT_byte_size(0x02)
DW$545	.dwtag  DW_TAG_subrange_type
	.dwattr DW$545, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$32


DW$T$73	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$73, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$73, DW_AT_byte_size(0x0e)
DW$546	.dwtag  DW_TAG_subrange_type
	.dwattr DW$546, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$73


DW$T$34	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$34, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$34, DW_AT_byte_size(0x0e)
DW$547	.dwtag  DW_TAG_subrange_type
	.dwattr DW$547, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$34

DW$548	.dwtag  DW_TAG_far_type
	.dwattr DW$548, DW_AT_type(*DW$T$11)
DW$T$175	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$175, DW_AT_type(*DW$548)

DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$19, DW_AT_name("tag_status1struct")
	.dwattr DW$T$19, DW_AT_byte_size(0x01)
DW$549	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$549, DW_AT_name("enabled"), DW_AT_symbol_name("_enabled")
	.dwattr DW$549, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$549, DW_AT_accessibility(DW_ACCESS_public)
DW$550	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$550, DW_AT_name("calmode"), DW_AT_symbol_name("_calmode")
	.dwattr DW$550, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$550, DW_AT_accessibility(DW_ACCESS_public)
DW$551	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$551, DW_AT_name("alarmmask"), DW_AT_symbol_name("_alarmmask")
	.dwattr DW$551, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$551, DW_AT_accessibility(DW_ACCESS_public)
DW$552	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$552, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$552, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$552, DW_AT_accessibility(DW_ACCESS_public)
DW$553	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$553, DW_AT_name("replaced"), DW_AT_symbol_name("_replaced")
	.dwattr DW$553, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$553, DW_AT_accessibility(DW_ACCESS_public)
DW$554	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$554, DW_AT_name("excludeslowroll"), DW_AT_symbol_name("_excludeslowroll")
	.dwattr DW$554, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$554, DW_AT_accessibility(DW_ACCESS_public)
DW$555	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$555, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$555, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$555, DW_AT_accessibility(DW_ACCESS_public)
DW$556	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$556, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$556, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$556, DW_AT_accessibility(DW_ACCESS_public)
DW$557	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$557, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$557, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$557, DW_AT_accessibility(DW_ACCESS_public)
DW$558	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$558, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$558, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$558, DW_AT_accessibility(DW_ACCESS_public)
DW$559	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$559, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$559, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$559, DW_AT_accessibility(DW_ACCESS_public)
DW$560	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$560, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$560, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$560, DW_AT_accessibility(DW_ACCESS_public)
DW$561	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$561, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$561, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$561, DW_AT_accessibility(DW_ACCESS_public)
DW$562	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$562, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$562, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$562, DW_AT_accessibility(DW_ACCESS_public)
DW$563	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$563, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$563, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$563, DW_AT_accessibility(DW_ACCESS_public)
DW$564	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$564, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$564, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$564, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$19


DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("tag_status3struct")
	.dwattr DW$T$20, DW_AT_byte_size(0x01)
DW$565	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$565, DW_AT_name("nopulse"), DW_AT_symbol_name("_nopulse")
	.dwattr DW$565, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$565, DW_AT_accessibility(DW_ACCESS_public)
DW$566	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$566, DW_AT_name("low"), DW_AT_symbol_name("_low")
	.dwattr DW$566, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$566, DW_AT_accessibility(DW_ACCESS_public)
DW$567	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$567, DW_AT_name("high"), DW_AT_symbol_name("_high")
	.dwattr DW$567, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$567, DW_AT_accessibility(DW_ACCESS_public)
DW$568	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$568, DW_AT_name("rpmoor"), DW_AT_symbol_name("_rpmoor")
	.dwattr DW$568, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$568, DW_AT_accessibility(DW_ACCESS_public)
DW$569	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$569, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$569, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$569, DW_AT_accessibility(DW_ACCESS_public)
DW$570	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$570, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$570, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$570, DW_AT_accessibility(DW_ACCESS_public)
DW$571	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$571, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$571, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$571, DW_AT_accessibility(DW_ACCESS_public)
DW$572	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$572, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$572, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$572, DW_AT_accessibility(DW_ACCESS_public)
DW$573	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$573, DW_AT_name("nopulselatched"), DW_AT_symbol_name("_nopulselatched")
	.dwattr DW$573, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$573, DW_AT_accessibility(DW_ACCESS_public)
DW$574	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$574, DW_AT_name("lowlatched"), DW_AT_symbol_name("_lowlatched")
	.dwattr DW$574, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$574, DW_AT_accessibility(DW_ACCESS_public)
DW$575	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$575, DW_AT_name("highlatched"), DW_AT_symbol_name("_highlatched")
	.dwattr DW$575, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$575, DW_AT_accessibility(DW_ACCESS_public)
DW$576	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$576, DW_AT_name("rpmoorlatched"), DW_AT_symbol_name("_rpmoorlatched")
	.dwattr DW$576, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$576, DW_AT_accessibility(DW_ACCESS_public)
DW$577	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$577, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$577, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$577, DW_AT_accessibility(DW_ACCESS_public)
DW$578	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$578, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$578, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$578, DW_AT_accessibility(DW_ACCESS_public)
DW$579	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$579, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$579, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$579, DW_AT_accessibility(DW_ACCESS_public)
DW$580	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$580, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$580, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$580, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$23, DW_AT_name("taggpaport")
	.dwattr DW$T$23, DW_AT_byte_size(0x01)
DW$581	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$581, DW_AT_name("selunion"), DW_AT_symbol_name("_selunion")
	.dwattr DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$581, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_name("taggpbport")
	.dwattr DW$T$26, DW_AT_byte_size(0x01)
DW$582	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$582, DW_AT_name("selunion"), DW_AT_symbol_name("_selunion")
	.dwattr DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$582, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$29, DW_AT_name("taggpdport")
	.dwattr DW$T$29, DW_AT_byte_size(0x01)
DW$583	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$583, DW_AT_name("selunion"), DW_AT_symbol_name("_selunion")
	.dwattr DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$583, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$29


DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$30, DW_AT_byte_size(0x02)
DW$584	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$584, DW_AT_name("enb"), DW_AT_symbol_name("_enb")
	.dwattr DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$584, DW_AT_accessibility(DW_ACCESS_public)
DW$585	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$585, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$585, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30


DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$35, DW_AT_byte_size(0x1e)
DW$586	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$586, DW_AT_name("chanlowthreshold"), DW_AT_symbol_name("_chanlowthreshold")
	.dwattr DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$586, DW_AT_accessibility(DW_ACCESS_public)
DW$587	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$587, DW_AT_name("chanhighthreshold"), DW_AT_symbol_name("_chanhighthreshold")
	.dwattr DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$587, DW_AT_accessibility(DW_ACCESS_public)
DW$588	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$588, DW_AT_name("chan18ma"), DW_AT_symbol_name("_chan18ma")
	.dwattr DW$588, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$588, DW_AT_accessibility(DW_ACCESS_public)
DW$589	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$589, DW_AT_name("notused"), DW_AT_symbol_name("_notused")
	.dwattr DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$589, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35


DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$36, DW_AT_byte_size(0x01)
DW$590	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$590, DW_AT_name("enabled"), DW_AT_symbol_name("_enabled")
	.dwattr DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$590, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$36


DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$39, DW_AT_byte_size(0x0b)
DW$591	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$38)
	.dwattr DW$591, DW_AT_name("calprtzero"), DW_AT_symbol_name("_calprtzero")
	.dwattr DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$591, DW_AT_accessibility(DW_ACCESS_public)
DW$592	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$38)
	.dwattr DW$592, DW_AT_name("calprtfullscale"), DW_AT_symbol_name("_calprtfullscale")
	.dwattr DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$592, DW_AT_accessibility(DW_ACCESS_public)
DW$593	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$593, DW_AT_name("sensorscalingfactor"), DW_AT_symbol_name("_sensorscalingfactor")
	.dwattr DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$593, DW_AT_accessibility(DW_ACCESS_public)
DW$594	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$594, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$594, DW_AT_accessibility(DW_ACCESS_public)
DW$595	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$595, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$595, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39


DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$40, DW_AT_byte_size(0x03)
DW$596	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$596, DW_AT_name("mainrate"), DW_AT_symbol_name("_mainrate")
	.dwattr DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$596, DW_AT_accessibility(DW_ACCESS_public)
DW$597	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$597, DW_AT_name("trendrate"), DW_AT_symbol_name("_trendrate")
	.dwattr DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$597, DW_AT_accessibility(DW_ACCESS_public)
DW$598	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$598, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$598, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40


DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$41, DW_AT_byte_size(0x01)
DW$599	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$599, DW_AT_name("address"), DW_AT_symbol_name("_address")
	.dwattr DW$599, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$599, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$41


DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$42, DW_AT_byte_size(0x02)
DW$600	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$600, DW_AT_name("inputtap"), DW_AT_symbol_name("_inputtap")
	.dwattr DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$600, DW_AT_accessibility(DW_ACCESS_public)
DW$601	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$601, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$601, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$601, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$42


DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$43, DW_AT_byte_size(0x03)
DW$602	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$602, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$602, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$602, DW_AT_accessibility(DW_ACCESS_public)
DW$603	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$603, DW_AT_name("notused2"), DW_AT_symbol_name("_notused2")
	.dwattr DW$603, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$603, DW_AT_accessibility(DW_ACCESS_public)
DW$604	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$604, DW_AT_name("notused3"), DW_AT_symbol_name("_notused3")
	.dwattr DW$604, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$604, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$43


DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$44, DW_AT_byte_size(0x01)
DW$605	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$605, DW_AT_name("rate"), DW_AT_symbol_name("_rate")
	.dwattr DW$605, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$605, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$44


DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$45, DW_AT_byte_size(0x02)
DW$606	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$606, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$606, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$606, DW_AT_accessibility(DW_ACCESS_public)
DW$607	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$607, DW_AT_name("notused2"), DW_AT_symbol_name("_notused2")
	.dwattr DW$607, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$607, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$45


DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$46, DW_AT_byte_size(0x04)
DW$608	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$608, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$608, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$608, DW_AT_accessibility(DW_ACCESS_public)
DW$609	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$609, DW_AT_name("notused2"), DW_AT_symbol_name("_notused2")
	.dwattr DW$609, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$609, DW_AT_accessibility(DW_ACCESS_public)
DW$610	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$610, DW_AT_name("notused3"), DW_AT_symbol_name("_notused3")
	.dwattr DW$610, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$610, DW_AT_accessibility(DW_ACCESS_public)
DW$611	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$611, DW_AT_name("notused4"), DW_AT_symbol_name("_notused4")
	.dwattr DW$611, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$611, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$46


DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$47, DW_AT_byte_size(0x01)
DW$612	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$612, DW_AT_name("bitmap"), DW_AT_symbol_name("_bitmap")
	.dwattr DW$612, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$612, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$47


DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$48, DW_AT_byte_size(0x01)
DW$613	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$613, DW_AT_name("graphvalue"), DW_AT_symbol_name("_graphvalue")
	.dwattr DW$613, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$613, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$48


DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$49, DW_AT_byte_size(0x01)
DW$614	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$614, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$614, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$614, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$49


DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$52, DW_AT_name("tag_timers")
	.dwattr DW$T$52, DW_AT_byte_size(0x4c)
DW$615	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$615, DW_AT_name("update"), DW_AT_symbol_name("_update")
	.dwattr DW$615, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$615, DW_AT_accessibility(DW_ACCESS_public)
DW$616	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$616, DW_AT_name("general"), DW_AT_symbol_name("_general")
	.dwattr DW$616, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$616, DW_AT_accessibility(DW_ACCESS_public)
DW$617	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$617, DW_AT_name("rxcharTimeout"), DW_AT_symbol_name("_rxcharTimeout")
	.dwattr DW$617, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$617, DW_AT_accessibility(DW_ACCESS_public)
DW$618	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$618, DW_AT_name("wiorxtimeout"), DW_AT_symbol_name("_wiorxtimeout")
	.dwattr DW$618, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$618, DW_AT_accessibility(DW_ACCESS_public)
DW$619	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$619, DW_AT_name("wiomasterrxtimeout"), DW_AT_symbol_name("_wiomasterrxtimeout")
	.dwattr DW$619, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$619, DW_AT_accessibility(DW_ACCESS_public)
DW$620	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$620, DW_AT_name("masterrxtimeout"), DW_AT_symbol_name("_masterrxtimeout")
	.dwattr DW$620, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$620, DW_AT_accessibility(DW_ACCESS_public)
DW$621	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$621, DW_AT_name("slaverxtimeout"), DW_AT_symbol_name("_slaverxtimeout")
	.dwattr DW$621, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$621, DW_AT_accessibility(DW_ACCESS_public)
DW$622	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$622, DW_AT_name("sectick"), DW_AT_symbol_name("_sectick")
	.dwattr DW$622, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$622, DW_AT_accessibility(DW_ACCESS_public)
DW$623	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$623, DW_AT_name("ledflash"), DW_AT_symbol_name("_ledflash")
	.dwattr DW$623, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$623, DW_AT_accessibility(DW_ACCESS_public)
DW$624	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$624, DW_AT_name("prtsettle"), DW_AT_symbol_name("_prtsettle")
	.dwattr DW$624, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$624, DW_AT_accessibility(DW_ACCESS_public)
DW$625	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$625, DW_AT_name("chantimeout"), DW_AT_symbol_name("_chantimeout")
	.dwattr DW$625, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$625, DW_AT_accessibility(DW_ACCESS_public)
DW$626	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$626, DW_AT_name("chanwait"), DW_AT_symbol_name("_chanwait")
	.dwattr DW$626, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$626, DW_AT_accessibility(DW_ACCESS_public)
DW$627	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$627, DW_AT_name("pcrxtimeout"), DW_AT_symbol_name("_pcrxtimeout")
	.dwattr DW$627, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$627, DW_AT_accessibility(DW_ACCESS_public)
DW$628	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$628, DW_AT_name("pctxtimeout"), DW_AT_symbol_name("_pctxtimeout")
	.dwattr DW$628, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$628, DW_AT_accessibility(DW_ACCESS_public)
DW$629	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$629, DW_AT_name("spistatus"), DW_AT_symbol_name("_spistatus")
	.dwattr DW$629, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$629, DW_AT_accessibility(DW_ACCESS_public)
DW$630	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$630, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$630, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$630, DW_AT_accessibility(DW_ACCESS_public)
DW$631	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$631, DW_AT_name("slaverqst"), DW_AT_symbol_name("_slaverqst")
	.dwattr DW$631, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$631, DW_AT_accessibility(DW_ACCESS_public)
DW$632	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$632, DW_AT_name("mastermodebutton"), DW_AT_symbol_name("_mastermodebutton")
	.dwattr DW$632, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$632, DW_AT_accessibility(DW_ACCESS_public)
DW$633	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$633, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$633, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$633, DW_AT_accessibility(DW_ACCESS_public)
DW$634	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$634, DW_AT_name("calibrate"), DW_AT_symbol_name("_calibrate")
	.dwattr DW$634, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$634, DW_AT_accessibility(DW_ACCESS_public)
DW$635	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$635, DW_AT_name("calibrate2"), DW_AT_symbol_name("_calibrate2")
	.dwattr DW$635, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$635, DW_AT_accessibility(DW_ACCESS_public)
DW$636	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$636, DW_AT_name("alarmreflash"), DW_AT_symbol_name("_alarmreflash")
	.dwattr DW$636, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$636, DW_AT_accessibility(DW_ACCESS_public)
DW$637	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$637, DW_AT_name("slowdownreflash"), DW_AT_symbol_name("_slowdownreflash")
	.dwattr DW$637, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr DW$637, DW_AT_accessibility(DW_ACCESS_public)
DW$638	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$638, DW_AT_name("wiorqst"), DW_AT_symbol_name("_wiorqst")
	.dwattr DW$638, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$638, DW_AT_accessibility(DW_ACCESS_public)
DW$639	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$639, DW_AT_name("rpmtimeout"), DW_AT_symbol_name("_rpmtimeout")
	.dwattr DW$639, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr DW$639, DW_AT_accessibility(DW_ACCESS_public)
DW$640	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$640, DW_AT_name("analogoor"), DW_AT_symbol_name("_analogoor")
	.dwattr DW$640, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$640, DW_AT_accessibility(DW_ACCESS_public)
DW$641	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$641, DW_AT_name("motioncal"), DW_AT_symbol_name("_motioncal")
	.dwattr DW$641, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr DW$641, DW_AT_accessibility(DW_ACCESS_public)
DW$642	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$642, DW_AT_name("framcheck"), DW_AT_symbol_name("_framcheck")
	.dwattr DW$642, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$642, DW_AT_accessibility(DW_ACCESS_public)
DW$643	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$643, DW_AT_name("pcmodbus"), DW_AT_symbol_name("_pcmodbus")
	.dwattr DW$643, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr DW$643, DW_AT_accessibility(DW_ACCESS_public)
DW$644	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$644, DW_AT_name("statusreflash"), DW_AT_symbol_name("_statusreflash")
	.dwattr DW$644, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$644, DW_AT_accessibility(DW_ACCESS_public)
DW$645	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$645, DW_AT_name("prewarn"), DW_AT_symbol_name("_prewarn")
	.dwattr DW$645, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$645, DW_AT_accessibility(DW_ACCESS_public)
DW$646	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$646, DW_AT_name("clocktofram"), DW_AT_symbol_name("_clocktofram")
	.dwattr DW$646, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr DW$646, DW_AT_accessibility(DW_ACCESS_public)
DW$647	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$647, DW_AT_name("debugrapidfast"), DW_AT_symbol_name("_debugrapidfast")
	.dwattr DW$647, DW_AT_data_member_location[DW_OP_plus_uconst 0x3f]
	.dwattr DW$647, DW_AT_accessibility(DW_ACCESS_public)
DW$648	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$648, DW_AT_name("debugupdate"), DW_AT_symbol_name("_debugupdate")
	.dwattr DW$648, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$648, DW_AT_accessibility(DW_ACCESS_public)
DW$649	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$649, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$649, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr DW$649, DW_AT_accessibility(DW_ACCESS_public)
DW$650	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$650, DW_AT_name("startup"), DW_AT_symbol_name("_startup")
	.dwattr DW$650, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr DW$650, DW_AT_accessibility(DW_ACCESS_public)
DW$651	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$651, DW_AT_name("analogsettle"), DW_AT_symbol_name("_analogsettle")
	.dwattr DW$651, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr DW$651, DW_AT_accessibility(DW_ACCESS_public)
DW$652	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$652, DW_AT_name("reprogram"), DW_AT_symbol_name("_reprogram")
	.dwattr DW$652, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr DW$652, DW_AT_accessibility(DW_ACCESS_public)
DW$653	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$653, DW_AT_name("reprogramtimeout"), DW_AT_symbol_name("_reprogramtimeout")
	.dwattr DW$653, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr DW$653, DW_AT_accessibility(DW_ACCESS_public)
DW$654	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$654, DW_AT_name("dcmodestayalive"), DW_AT_symbol_name("_dcmodestayalive")
	.dwattr DW$654, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$654, DW_AT_accessibility(DW_ACCESS_public)
DW$655	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$655, DW_AT_name("biteventchange"), DW_AT_symbol_name("_biteventchange")
	.dwattr DW$655, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr DW$655, DW_AT_accessibility(DW_ACCESS_public)
DW$656	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$656, DW_AT_name("iSensorReplace"), DW_AT_symbol_name("_iSensorReplace")
	.dwattr DW$656, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr DW$656, DW_AT_accessibility(DW_ACCESS_public)
DW$657	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$657, DW_AT_name("deltarpm15Delay"), DW_AT_symbol_name("_deltarpm15Delay")
	.dwattr DW$657, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr DW$657, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$52


DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$53, DW_AT_byte_size(0x01)
DW$658	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$658, DW_AT_name("newval"), DW_AT_symbol_name("_newval")
	.dwattr DW$658, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$658, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$658, DW_AT_accessibility(DW_ACCESS_public)
DW$659	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$659, DW_AT_name("calmode"), DW_AT_symbol_name("_calmode")
	.dwattr DW$659, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$659, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$659, DW_AT_accessibility(DW_ACCESS_public)
DW$660	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$660, DW_AT_name("startcal"), DW_AT_symbol_name("_startcal")
	.dwattr DW$660, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$660, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$660, DW_AT_accessibility(DW_ACCESS_public)
DW$661	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$661, DW_AT_name("newvalspu2"), DW_AT_symbol_name("_newvalspu2")
	.dwattr DW$661, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$661, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$661, DW_AT_accessibility(DW_ACCESS_public)
DW$662	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$662, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$662, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$662, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$662, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$53


DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$54, DW_AT_byte_size(0x01)
DW$663	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$663, DW_AT_name("slowdowncntrl"), DW_AT_symbol_name("_slowdowncntrl")
	.dwattr DW$663, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$663, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$663, DW_AT_accessibility(DW_ACCESS_public)
DW$664	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$664, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$664, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0f)
	.dwattr DW$664, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$664, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$54


DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$56, DW_AT_byte_size(0x01)
DW$665	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$665, DW_AT_name("inputtap"), DW_AT_symbol_name("_inputtap")
	.dwattr DW$665, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$665, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$56


DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$57, DW_AT_byte_size(0x01)
DW$666	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$666, DW_AT_name("bitmap"), DW_AT_symbol_name("_bitmap")
	.dwattr DW$666, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$666, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$57


DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$58, DW_AT_byte_size(0x01)
DW$667	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$667, DW_AT_name("graphvalue"), DW_AT_symbol_name("_graphvalue")
	.dwattr DW$667, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$667, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$58


DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$59, DW_AT_byte_size(0x03)
DW$668	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$668, DW_AT_name("chanlowthreshold"), DW_AT_symbol_name("_chanlowthreshold")
	.dwattr DW$668, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$668, DW_AT_accessibility(DW_ACCESS_public)
DW$669	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$669, DW_AT_name("chanhighthreshold"), DW_AT_symbol_name("_chanhighthreshold")
	.dwattr DW$669, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$669, DW_AT_accessibility(DW_ACCESS_public)
DW$670	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$670, DW_AT_name("sensorscalingfactor"), DW_AT_symbol_name("_sensorscalingfactor")
	.dwattr DW$670, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$670, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$59


DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$60, DW_AT_byte_size(0x02)
DW$671	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$671, DW_AT_name("shortlrate"), DW_AT_symbol_name("_shortlrate")
	.dwattr DW$671, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$671, DW_AT_accessibility(DW_ACCESS_public)
DW$672	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$672, DW_AT_name("longlrate"), DW_AT_symbol_name("_longlrate")
	.dwattr DW$672, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$672, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$60


DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$61, DW_AT_byte_size(0x10)
DW$673	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$673, DW_AT_name("wiorequest"), DW_AT_symbol_name("_wiorequest")
	.dwattr DW$673, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$673, DW_AT_accessibility(DW_ACCESS_public)
DW$674	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$674, DW_AT_name("wiocancelled"), DW_AT_symbol_name("_wiocancelled")
	.dwattr DW$674, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$674, DW_AT_accessibility(DW_ACCESS_public)
DW$675	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$675, DW_AT_name("wioreceived"), DW_AT_symbol_name("_wioreceived")
	.dwattr DW$675, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$675, DW_AT_accessibility(DW_ACCESS_public)
DW$676	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$676, DW_AT_name("slaverequest"), DW_AT_symbol_name("_slaverequest")
	.dwattr DW$676, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$676, DW_AT_accessibility(DW_ACCESS_public)
DW$677	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$677, DW_AT_name("slavereceived"), DW_AT_symbol_name("_slavereceived")
	.dwattr DW$677, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$677, DW_AT_accessibility(DW_ACCESS_public)
DW$678	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$678, DW_AT_name("slaveretry"), DW_AT_symbol_name("_slaveretry")
	.dwattr DW$678, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$678, DW_AT_accessibility(DW_ACCESS_public)
DW$679	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$679, DW_AT_name("pcrequest"), DW_AT_symbol_name("_pcrequest")
	.dwattr DW$679, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$679, DW_AT_accessibility(DW_ACCESS_public)
DW$680	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$680, DW_AT_name("pcreqtimeout"), DW_AT_symbol_name("_pcreqtimeout")
	.dwattr DW$680, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$680, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$61


DW$T$63	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$63, DW_AT_byte_size(0x06)
DW$681	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$681, DW_AT_name("hours"), DW_AT_symbol_name("_hours")
	.dwattr DW$681, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$681, DW_AT_accessibility(DW_ACCESS_public)
DW$682	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$682, DW_AT_name("minutes"), DW_AT_symbol_name("_minutes")
	.dwattr DW$682, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$682, DW_AT_accessibility(DW_ACCESS_public)
DW$683	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$683, DW_AT_name("seconds"), DW_AT_symbol_name("_seconds")
	.dwattr DW$683, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$683, DW_AT_accessibility(DW_ACCESS_public)
DW$684	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$684, DW_AT_name("value"), DW_AT_symbol_name("_value")
	.dwattr DW$684, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$684, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$63


DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$64, DW_AT_byte_size(0x06)
DW$685	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$685, DW_AT_name("hours"), DW_AT_symbol_name("_hours")
	.dwattr DW$685, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$685, DW_AT_accessibility(DW_ACCESS_public)
DW$686	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$686, DW_AT_name("minutes"), DW_AT_symbol_name("_minutes")
	.dwattr DW$686, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$686, DW_AT_accessibility(DW_ACCESS_public)
DW$687	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$687, DW_AT_name("seconds"), DW_AT_symbol_name("_seconds")
	.dwattr DW$687, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$687, DW_AT_accessibility(DW_ACCESS_public)
DW$688	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$688, DW_AT_name("value"), DW_AT_symbol_name("_value")
	.dwattr DW$688, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$688, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$64


DW$T$65	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$65, DW_AT_byte_size(0x02)
DW$689	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$689, DW_AT_name("value"), DW_AT_symbol_name("_value")
	.dwattr DW$689, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$689, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$65


DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$72, DW_AT_name("tag_sensorstruct")
	.dwattr DW$T$72, DW_AT_byte_size(0x12)
DW$690	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$70)
	.dwattr DW$690, DW_AT_name("status1"), DW_AT_symbol_name("_status1")
	.dwattr DW$690, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$690, DW_AT_accessibility(DW_ACCESS_public)
DW$691	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$71)
	.dwattr DW$691, DW_AT_name("status2"), DW_AT_symbol_name("_status2")
	.dwattr DW$691, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$691, DW_AT_accessibility(DW_ACCESS_public)
DW$692	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$692, DW_AT_name("newval"), DW_AT_symbol_name("_newval")
	.dwattr DW$692, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$692, DW_AT_accessibility(DW_ACCESS_public)
DW$693	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$693, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$693, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$693, DW_AT_accessibility(DW_ACCESS_public)
DW$694	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$694, DW_AT_name("immediateval"), DW_AT_symbol_name("_immediateval")
	.dwattr DW$694, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$694, DW_AT_accessibility(DW_ACCESS_public)
DW$695	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$695, DW_AT_name("initialval"), DW_AT_symbol_name("_initialval")
	.dwattr DW$695, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$695, DW_AT_accessibility(DW_ACCESS_public)
DW$696	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$696, DW_AT_name("precomp"), DW_AT_symbol_name("_precomp")
	.dwattr DW$696, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$696, DW_AT_accessibility(DW_ACCESS_public)
DW$697	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$697, DW_AT_name("postcomp"), DW_AT_symbol_name("_postcomp")
	.dwattr DW$697, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$697, DW_AT_accessibility(DW_ACCESS_public)
DW$698	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$698, DW_AT_name("postfilter"), DW_AT_symbol_name("_postfilter")
	.dwattr DW$698, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$698, DW_AT_accessibility(DW_ACCESS_public)
DW$699	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$699, DW_AT_name("endresult"), DW_AT_symbol_name("_endresult")
	.dwattr DW$699, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$699, DW_AT_accessibility(DW_ACCESS_public)
DW$700	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$700, DW_AT_name("deviation"), DW_AT_symbol_name("_deviation")
	.dwattr DW$700, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$700, DW_AT_accessibility(DW_ACCESS_public)
DW$701	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$701, DW_AT_name("min"), DW_AT_symbol_name("_min")
	.dwattr DW$701, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$701, DW_AT_accessibility(DW_ACCESS_public)
DW$702	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$702, DW_AT_name("max"), DW_AT_symbol_name("_max")
	.dwattr DW$702, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$702, DW_AT_accessibility(DW_ACCESS_public)
DW$703	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$703, DW_AT_name("devmin"), DW_AT_symbol_name("_devmin")
	.dwattr DW$703, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$703, DW_AT_accessibility(DW_ACCESS_public)
DW$704	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$704, DW_AT_name("devmax"), DW_AT_symbol_name("_devmax")
	.dwattr DW$704, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$704, DW_AT_accessibility(DW_ACCESS_public)
DW$705	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$705, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$705, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$705, DW_AT_accessibility(DW_ACCESS_public)
DW$706	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$706, DW_AT_name("prt"), DW_AT_symbol_name("_prt")
	.dwattr DW$706, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$706, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$72


DW$T$76	.dwtag  DW_TAG_union_type
	.dwattr DW$T$76, DW_AT_name("ADCTRL1_REG")
	.dwattr DW$T$76, DW_AT_byte_size(0x01)
DW$707	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$707, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$707, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$707, DW_AT_accessibility(DW_ACCESS_public)
DW$708	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$75)
	.dwattr DW$708, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$708, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$708, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$76


DW$T$78	.dwtag  DW_TAG_union_type
	.dwattr DW$T$78, DW_AT_name("ADCTRL2_REG")
	.dwattr DW$T$78, DW_AT_byte_size(0x01)
DW$709	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$709, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$709, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$709, DW_AT_accessibility(DW_ACCESS_public)
DW$710	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$77)
	.dwattr DW$710, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$710, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$710, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$78


DW$T$80	.dwtag  DW_TAG_union_type
	.dwattr DW$T$80, DW_AT_name("ADCMAXCONV_REG")
	.dwattr DW$T$80, DW_AT_byte_size(0x01)
DW$711	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$711, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$711, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$711, DW_AT_accessibility(DW_ACCESS_public)
DW$712	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$79)
	.dwattr DW$712, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$712, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$712, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$80


DW$T$82	.dwtag  DW_TAG_union_type
	.dwattr DW$T$82, DW_AT_name("ADCCHSELSEQ1_REG")
	.dwattr DW$T$82, DW_AT_byte_size(0x01)
DW$713	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$713, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$713, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$713, DW_AT_accessibility(DW_ACCESS_public)
DW$714	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$81)
	.dwattr DW$714, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$714, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$714, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$82


DW$T$84	.dwtag  DW_TAG_union_type
	.dwattr DW$T$84, DW_AT_name("ADCCHSELSEQ2_REG")
	.dwattr DW$T$84, DW_AT_byte_size(0x01)
DW$715	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$715, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$715, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$715, DW_AT_accessibility(DW_ACCESS_public)
DW$716	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$83)
	.dwattr DW$716, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$716, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$716, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$84


DW$T$86	.dwtag  DW_TAG_union_type
	.dwattr DW$T$86, DW_AT_name("ADCCHSELSEQ3_REG")
	.dwattr DW$T$86, DW_AT_byte_size(0x01)
DW$717	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$717, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$717, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$717, DW_AT_accessibility(DW_ACCESS_public)
DW$718	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$85)
	.dwattr DW$718, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$718, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$718, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$86


DW$T$88	.dwtag  DW_TAG_union_type
	.dwattr DW$T$88, DW_AT_name("ADCCHSELSEQ4_REG")
	.dwattr DW$T$88, DW_AT_byte_size(0x01)
DW$719	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$719, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$719, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$719, DW_AT_accessibility(DW_ACCESS_public)
DW$720	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$87)
	.dwattr DW$720, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$720, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$720, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$88


DW$T$90	.dwtag  DW_TAG_union_type
	.dwattr DW$T$90, DW_AT_name("ADCASEQSR_REG")
	.dwattr DW$T$90, DW_AT_byte_size(0x01)
DW$721	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$721, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$721, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$721, DW_AT_accessibility(DW_ACCESS_public)
DW$722	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$89)
	.dwattr DW$722, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$722, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$722, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$90


DW$T$92	.dwtag  DW_TAG_union_type
	.dwattr DW$T$92, DW_AT_name("ADCTRL3_REG")
	.dwattr DW$T$92, DW_AT_byte_size(0x01)
DW$723	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$723, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$723, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$723, DW_AT_accessibility(DW_ACCESS_public)
DW$724	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$91)
	.dwattr DW$724, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$724, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$724, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$92


DW$T$94	.dwtag  DW_TAG_union_type
	.dwattr DW$T$94, DW_AT_name("ADCST_REG")
	.dwattr DW$T$94, DW_AT_byte_size(0x01)
DW$725	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$725, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$725, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$725, DW_AT_accessibility(DW_ACCESS_public)
DW$726	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$93)
	.dwattr DW$726, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$726, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$726, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$94


DW$T$99	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$99, DW_AT_name("tag_adcdatastruct")
	.dwattr DW$T$99, DW_AT_byte_size(0x58)
DW$727	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$96)
	.dwattr DW$727, DW_AT_name("current"), DW_AT_symbol_name("_current")
	.dwattr DW$727, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$727, DW_AT_accessibility(DW_ACCESS_public)
DW$728	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$97)
	.dwattr DW$728, DW_AT_name("previous"), DW_AT_symbol_name("_previous")
	.dwattr DW$728, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$728, DW_AT_accessibility(DW_ACCESS_public)
DW$729	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$98)
	.dwattr DW$729, DW_AT_name("countspermA"), DW_AT_symbol_name("_countspermA")
	.dwattr DW$729, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$729, DW_AT_accessibility(DW_ACCESS_public)
DW$730	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$730, DW_AT_name("ready"), DW_AT_symbol_name("_ready")
	.dwattr DW$730, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr DW$730, DW_AT_accessibility(DW_ACCESS_public)
DW$731	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$731, DW_AT_name("count"), DW_AT_symbol_name("_count")
	.dwattr DW$731, DW_AT_data_member_location[DW_OP_plus_uconst 0x3b]
	.dwattr DW$731, DW_AT_accessibility(DW_ACCESS_public)
DW$732	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$732, DW_AT_name("direction"), DW_AT_symbol_name("_direction")
	.dwattr DW$732, DW_AT_data_member_location[DW_OP_plus_uconst 0x49]
	.dwattr DW$732, DW_AT_accessibility(DW_ACCESS_public)
DW$733	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$733, DW_AT_name("flag"), DW_AT_symbol_name("_flag")
	.dwattr DW$733, DW_AT_data_member_location[DW_OP_plus_uconst 0x57]
	.dwattr DW$733, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$99


DW$T$110	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$110, DW_AT_name("tag_inputstruct")
	.dwattr DW$T$110, DW_AT_byte_size(0xfe)
DW$734	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$100)
	.dwattr DW$734, DW_AT_name("flags"), DW_AT_symbol_name("_flags")
	.dwattr DW$734, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$734, DW_AT_accessibility(DW_ACCESS_public)
DW$735	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$102)
	.dwattr DW$735, DW_AT_name("scale"), DW_AT_symbol_name("_scale")
	.dwattr DW$735, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$735, DW_AT_accessibility(DW_ACCESS_public)
DW$736	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$104)
	.dwattr DW$736, DW_AT_name("rawresults"), DW_AT_symbol_name("_rawresults")
	.dwattr DW$736, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr DW$736, DW_AT_accessibility(DW_ACCESS_public)
DW$737	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$106)
	.dwattr DW$737, DW_AT_name("amps"), DW_AT_symbol_name("_amps")
	.dwattr DW$737, DW_AT_data_member_location[DW_OP_plus_uconst 0xc6]
	.dwattr DW$737, DW_AT_accessibility(DW_ACCESS_public)
DW$738	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$738, DW_AT_name("prtchan"), DW_AT_symbol_name("_prtchan")
	.dwattr DW$738, DW_AT_data_member_location[DW_OP_plus_uconst 0xe2]
	.dwattr DW$738, DW_AT_accessibility(DW_ACCESS_public)
DW$739	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$109)
	.dwattr DW$739, DW_AT_name("analog"), DW_AT_symbol_name("_analog")
	.dwattr DW$739, DW_AT_data_member_location[DW_OP_plus_uconst 0xe4]
	.dwattr DW$739, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$110


DW$T$112	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$112, DW_AT_byte_size(0x01)
DW$740	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$740, DW_AT_name("oor"), DW_AT_symbol_name("_oor")
	.dwattr DW$740, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$740, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$740, DW_AT_accessibility(DW_ACCESS_public)
DW$741	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$741, DW_AT_name("alarm"), DW_AT_symbol_name("_alarm")
	.dwattr DW$741, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$741, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$741, DW_AT_accessibility(DW_ACCESS_public)
DW$742	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$742, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$742, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0e)
	.dwattr DW$742, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$742, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$112


DW$T$114	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$114, DW_AT_byte_size(0x01)
DW$743	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$743, DW_AT_name("low"), DW_AT_symbol_name("_low")
	.dwattr DW$743, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$743, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$114


DW$T$119	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$119, DW_AT_byte_size(0x02)
DW$744	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$744, DW_AT_name("lo"), DW_AT_symbol_name("_lo")
	.dwattr DW$744, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$744, DW_AT_accessibility(DW_ACCESS_public)
DW$745	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$745, DW_AT_name("hi"), DW_AT_symbol_name("_hi")
	.dwattr DW$745, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$745, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$119


DW$T$120	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$120, DW_AT_byte_size(0x02)
DW$746	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$746, DW_AT_name("lo"), DW_AT_symbol_name("_lo")
	.dwattr DW$746, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$746, DW_AT_accessibility(DW_ACCESS_public)
DW$747	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$747, DW_AT_name("hi"), DW_AT_symbol_name("_hi")
	.dwattr DW$747, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$747, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$120


DW$T$121	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$121, DW_AT_byte_size(0x02)
DW$748	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$748, DW_AT_name("max"), DW_AT_symbol_name("_max")
	.dwattr DW$748, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$748, DW_AT_accessibility(DW_ACCESS_public)
DW$749	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$749, DW_AT_name("threshold"), DW_AT_symbol_name("_threshold")
	.dwattr DW$749, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$749, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$121


DW$T$38	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$38, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$38, DW_AT_byte_size(0x04)
DW$750	.dwtag  DW_TAG_subrange_type
	.dwattr DW$750, DW_AT_upper_bound(0x03)
	.dwendtag DW$T$38


DW$T$22	.dwtag  DW_TAG_union_type
	.dwattr DW$T$22, DW_AT_byte_size(0x01)
DW$751	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$751, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$751, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$751, DW_AT_accessibility(DW_ACCESS_public)
DW$752	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$752, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$752, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$752, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$25	.dwtag  DW_TAG_union_type
	.dwattr DW$T$25, DW_AT_byte_size(0x01)
DW$753	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$753, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$753, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$753, DW_AT_accessibility(DW_ACCESS_public)
DW$754	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$754, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$754, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$754, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


DW$T$28	.dwtag  DW_TAG_union_type
	.dwattr DW$T$28, DW_AT_byte_size(0x01)
DW$755	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$755, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$755, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$755, DW_AT_accessibility(DW_ACCESS_public)
DW$756	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$756, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$756, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$756, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28

DW$T$71	.dwtag  DW_TAG_typedef, DW_AT_name("sensoralarmstruct"), DW_AT_type(*DW$T$69)
	.dwattr DW$T$71, DW_AT_language(DW_LANG_C)

DW$T$75	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$75, DW_AT_name("ADCTRL1_BITS")
	.dwattr DW$T$75, DW_AT_byte_size(0x01)
DW$757	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$757, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$757, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$757, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$757, DW_AT_accessibility(DW_ACCESS_public)
DW$758	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$758, DW_AT_name("SEQ_CASC"), DW_AT_symbol_name("_SEQ_CASC")
	.dwattr DW$758, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$758, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$758, DW_AT_accessibility(DW_ACCESS_public)
DW$759	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$759, DW_AT_name("SEQ_OVRD"), DW_AT_symbol_name("_SEQ_OVRD")
	.dwattr DW$759, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$759, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$759, DW_AT_accessibility(DW_ACCESS_public)
DW$760	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$760, DW_AT_name("CONT_RUN"), DW_AT_symbol_name("_CONT_RUN")
	.dwattr DW$760, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$760, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$760, DW_AT_accessibility(DW_ACCESS_public)
DW$761	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$761, DW_AT_name("CPS"), DW_AT_symbol_name("_CPS")
	.dwattr DW$761, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$761, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$761, DW_AT_accessibility(DW_ACCESS_public)
DW$762	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$762, DW_AT_name("ACQ_PS"), DW_AT_symbol_name("_ACQ_PS")
	.dwattr DW$762, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$762, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$762, DW_AT_accessibility(DW_ACCESS_public)
DW$763	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$763, DW_AT_name("SUSMOD"), DW_AT_symbol_name("_SUSMOD")
	.dwattr DW$763, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$763, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$763, DW_AT_accessibility(DW_ACCESS_public)
DW$764	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$764, DW_AT_name("RESET"), DW_AT_symbol_name("_RESET")
	.dwattr DW$764, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$764, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$764, DW_AT_accessibility(DW_ACCESS_public)
DW$765	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$765, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$765, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$765, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$765, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$75


DW$T$77	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$77, DW_AT_name("ADCTRL2_BITS")
	.dwattr DW$T$77, DW_AT_byte_size(0x01)
DW$766	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$766, DW_AT_name("EVB_SOC_SEQ2"), DW_AT_symbol_name("_EVB_SOC_SEQ2")
	.dwattr DW$766, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$766, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$766, DW_AT_accessibility(DW_ACCESS_public)
DW$767	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$767, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$767, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$767, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$767, DW_AT_accessibility(DW_ACCESS_public)
DW$768	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$768, DW_AT_name("INT_MOD_SEQ2"), DW_AT_symbol_name("_INT_MOD_SEQ2")
	.dwattr DW$768, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$768, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$768, DW_AT_accessibility(DW_ACCESS_public)
DW$769	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$769, DW_AT_name("INT_ENA_SEQ2"), DW_AT_symbol_name("_INT_ENA_SEQ2")
	.dwattr DW$769, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$769, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$769, DW_AT_accessibility(DW_ACCESS_public)
DW$770	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$770, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$770, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$770, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$770, DW_AT_accessibility(DW_ACCESS_public)
DW$771	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$771, DW_AT_name("SOC_SEQ2"), DW_AT_symbol_name("_SOC_SEQ2")
	.dwattr DW$771, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$771, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$771, DW_AT_accessibility(DW_ACCESS_public)
DW$772	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$772, DW_AT_name("RST_SEQ2"), DW_AT_symbol_name("_RST_SEQ2")
	.dwattr DW$772, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$772, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$772, DW_AT_accessibility(DW_ACCESS_public)
DW$773	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$773, DW_AT_name("EXT_SOC_SEQ1"), DW_AT_symbol_name("_EXT_SOC_SEQ1")
	.dwattr DW$773, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$773, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$773, DW_AT_accessibility(DW_ACCESS_public)
DW$774	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$774, DW_AT_name("EVA_SOC_SEQ1"), DW_AT_symbol_name("_EVA_SOC_SEQ1")
	.dwattr DW$774, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$774, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$774, DW_AT_accessibility(DW_ACCESS_public)
DW$775	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$775, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$775, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$775, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$775, DW_AT_accessibility(DW_ACCESS_public)
DW$776	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$776, DW_AT_name("INT_MOD_SEQ1"), DW_AT_symbol_name("_INT_MOD_SEQ1")
	.dwattr DW$776, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$776, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$776, DW_AT_accessibility(DW_ACCESS_public)
DW$777	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$777, DW_AT_name("INT_ENA_SEQ1"), DW_AT_symbol_name("_INT_ENA_SEQ1")
	.dwattr DW$777, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$777, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$777, DW_AT_accessibility(DW_ACCESS_public)
DW$778	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$778, DW_AT_name("rsvd4"), DW_AT_symbol_name("_rsvd4")
	.dwattr DW$778, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$778, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$778, DW_AT_accessibility(DW_ACCESS_public)
DW$779	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$779, DW_AT_name("SOC_SEQ1"), DW_AT_symbol_name("_SOC_SEQ1")
	.dwattr DW$779, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$779, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$779, DW_AT_accessibility(DW_ACCESS_public)
DW$780	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$780, DW_AT_name("RST_SEQ1"), DW_AT_symbol_name("_RST_SEQ1")
	.dwattr DW$780, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$780, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$780, DW_AT_accessibility(DW_ACCESS_public)
DW$781	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$781, DW_AT_name("EVB_SOC_SEQ"), DW_AT_symbol_name("_EVB_SOC_SEQ")
	.dwattr DW$781, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$781, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$781, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$77


DW$T$79	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$79, DW_AT_name("ADCMAXCONV_BITS")
	.dwattr DW$T$79, DW_AT_byte_size(0x01)
DW$782	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$782, DW_AT_name("MAX_CONV1"), DW_AT_symbol_name("_MAX_CONV1")
	.dwattr DW$782, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$782, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$782, DW_AT_accessibility(DW_ACCESS_public)
DW$783	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$783, DW_AT_name("MAX_CONV2"), DW_AT_symbol_name("_MAX_CONV2")
	.dwattr DW$783, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x03)
	.dwattr DW$783, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$783, DW_AT_accessibility(DW_ACCESS_public)
DW$784	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$784, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$784, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x09)
	.dwattr DW$784, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$784, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$79


DW$T$81	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$81, DW_AT_name("ADCCHSELSEQ1_BITS")
	.dwattr DW$T$81, DW_AT_byte_size(0x01)
DW$785	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$785, DW_AT_name("CONV00"), DW_AT_symbol_name("_CONV00")
	.dwattr DW$785, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$785, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$785, DW_AT_accessibility(DW_ACCESS_public)
DW$786	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$786, DW_AT_name("CONV01"), DW_AT_symbol_name("_CONV01")
	.dwattr DW$786, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x04)
	.dwattr DW$786, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$786, DW_AT_accessibility(DW_ACCESS_public)
DW$787	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$787, DW_AT_name("CONV02"), DW_AT_symbol_name("_CONV02")
	.dwattr DW$787, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$787, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$787, DW_AT_accessibility(DW_ACCESS_public)
DW$788	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$788, DW_AT_name("CONV03"), DW_AT_symbol_name("_CONV03")
	.dwattr DW$788, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$788, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$788, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$81


DW$T$83	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$83, DW_AT_name("ADCCHSELSEQ2_BITS")
	.dwattr DW$T$83, DW_AT_byte_size(0x01)
DW$789	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$789, DW_AT_name("CONV04"), DW_AT_symbol_name("_CONV04")
	.dwattr DW$789, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$789, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$789, DW_AT_accessibility(DW_ACCESS_public)
DW$790	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$790, DW_AT_name("CONV05"), DW_AT_symbol_name("_CONV05")
	.dwattr DW$790, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x04)
	.dwattr DW$790, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$790, DW_AT_accessibility(DW_ACCESS_public)
DW$791	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$791, DW_AT_name("CONV06"), DW_AT_symbol_name("_CONV06")
	.dwattr DW$791, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$791, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$791, DW_AT_accessibility(DW_ACCESS_public)
DW$792	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$792, DW_AT_name("CONV07"), DW_AT_symbol_name("_CONV07")
	.dwattr DW$792, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$792, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$792, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$83


DW$T$85	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$85, DW_AT_name("ADCCHSELSEQ3_BITS")
	.dwattr DW$T$85, DW_AT_byte_size(0x01)
DW$793	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$793, DW_AT_name("CONV08"), DW_AT_symbol_name("_CONV08")
	.dwattr DW$793, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$793, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$793, DW_AT_accessibility(DW_ACCESS_public)
DW$794	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$794, DW_AT_name("CONV09"), DW_AT_symbol_name("_CONV09")
	.dwattr DW$794, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x04)
	.dwattr DW$794, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$794, DW_AT_accessibility(DW_ACCESS_public)
DW$795	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$795, DW_AT_name("CONV10"), DW_AT_symbol_name("_CONV10")
	.dwattr DW$795, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$795, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$795, DW_AT_accessibility(DW_ACCESS_public)
DW$796	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$796, DW_AT_name("CONV11"), DW_AT_symbol_name("_CONV11")
	.dwattr DW$796, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$796, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$796, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$85


DW$T$87	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$87, DW_AT_name("ADCCHSELSEQ4_BITS")
	.dwattr DW$T$87, DW_AT_byte_size(0x01)
DW$797	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$797, DW_AT_name("CONV12"), DW_AT_symbol_name("_CONV12")
	.dwattr DW$797, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$797, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$797, DW_AT_accessibility(DW_ACCESS_public)
DW$798	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$798, DW_AT_name("CONV13"), DW_AT_symbol_name("_CONV13")
	.dwattr DW$798, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x04)
	.dwattr DW$798, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$798, DW_AT_accessibility(DW_ACCESS_public)
DW$799	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$799, DW_AT_name("CONV14"), DW_AT_symbol_name("_CONV14")
	.dwattr DW$799, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$799, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$799, DW_AT_accessibility(DW_ACCESS_public)
DW$800	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$800, DW_AT_name("CONV15"), DW_AT_symbol_name("_CONV15")
	.dwattr DW$800, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$800, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$800, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$87


DW$T$89	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$89, DW_AT_name("ADCASEQSR_BITS")
	.dwattr DW$T$89, DW_AT_byte_size(0x01)
DW$801	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$801, DW_AT_name("SEQ1_STATE"), DW_AT_symbol_name("_SEQ1_STATE")
	.dwattr DW$801, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$801, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$801, DW_AT_accessibility(DW_ACCESS_public)
DW$802	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$802, DW_AT_name("SEQ2_STATE"), DW_AT_symbol_name("_SEQ2_STATE")
	.dwattr DW$802, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x03)
	.dwattr DW$802, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$802, DW_AT_accessibility(DW_ACCESS_public)
DW$803	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$803, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$803, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$803, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$803, DW_AT_accessibility(DW_ACCESS_public)
DW$804	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$804, DW_AT_name("SEQ_CNTR"), DW_AT_symbol_name("_SEQ_CNTR")
	.dwattr DW$804, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$804, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$804, DW_AT_accessibility(DW_ACCESS_public)
DW$805	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$805, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$805, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$805, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$805, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$89


DW$T$91	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$91, DW_AT_name("ADCTRL3_BITS")
	.dwattr DW$T$91, DW_AT_byte_size(0x01)
DW$806	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$806, DW_AT_name("SMODE_SEL"), DW_AT_symbol_name("_SMODE_SEL")
	.dwattr DW$806, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$806, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$806, DW_AT_accessibility(DW_ACCESS_public)
DW$807	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$807, DW_AT_name("ADCCLKPS"), DW_AT_symbol_name("_ADCCLKPS")
	.dwattr DW$807, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x04)
	.dwattr DW$807, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$807, DW_AT_accessibility(DW_ACCESS_public)
DW$808	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$808, DW_AT_name("ADCPWDN"), DW_AT_symbol_name("_ADCPWDN")
	.dwattr DW$808, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$808, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$808, DW_AT_accessibility(DW_ACCESS_public)
DW$809	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$809, DW_AT_name("ADCBGRFDN"), DW_AT_symbol_name("_ADCBGRFDN")
	.dwattr DW$809, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x02)
	.dwattr DW$809, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$809, DW_AT_accessibility(DW_ACCESS_public)
DW$810	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$810, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$810, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$810, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$810, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$91


DW$T$93	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$93, DW_AT_name("ADCST_BITS")
	.dwattr DW$T$93, DW_AT_byte_size(0x01)
DW$811	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$811, DW_AT_name("INT_SEQ1"), DW_AT_symbol_name("_INT_SEQ1")
	.dwattr DW$811, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$811, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$811, DW_AT_accessibility(DW_ACCESS_public)
DW$812	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$812, DW_AT_name("INT_SEQ2"), DW_AT_symbol_name("_INT_SEQ2")
	.dwattr DW$812, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$812, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$812, DW_AT_accessibility(DW_ACCESS_public)
DW$813	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$813, DW_AT_name("SEQ1_BSY"), DW_AT_symbol_name("_SEQ1_BSY")
	.dwattr DW$813, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$813, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$813, DW_AT_accessibility(DW_ACCESS_public)
DW$814	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$814, DW_AT_name("SEQ2_BSY"), DW_AT_symbol_name("_SEQ2_BSY")
	.dwattr DW$814, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$814, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$814, DW_AT_accessibility(DW_ACCESS_public)
DW$815	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$815, DW_AT_name("INT_SEQ1_CLR"), DW_AT_symbol_name("_INT_SEQ1_CLR")
	.dwattr DW$815, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$815, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$815, DW_AT_accessibility(DW_ACCESS_public)
DW$816	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$816, DW_AT_name("INT_SEQ2_CLR"), DW_AT_symbol_name("_INT_SEQ2_CLR")
	.dwattr DW$816, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$816, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$816, DW_AT_accessibility(DW_ACCESS_public)
DW$817	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$817, DW_AT_name("EOS_BUF1"), DW_AT_symbol_name("_EOS_BUF1")
	.dwattr DW$817, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$817, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$817, DW_AT_accessibility(DW_ACCESS_public)
DW$818	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$818, DW_AT_name("EOS_BUF2"), DW_AT_symbol_name("_EOS_BUF2")
	.dwattr DW$818, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$818, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$818, DW_AT_accessibility(DW_ACCESS_public)
DW$819	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$819, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$819, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$819, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$819, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$93


DW$T$96	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$96, DW_AT_byte_size(0x02)
DW$820	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$820, DW_AT_name("prt"), DW_AT_symbol_name("_prt")
	.dwattr DW$820, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$820, DW_AT_accessibility(DW_ACCESS_public)
DW$821	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$821, DW_AT_name("vin"), DW_AT_symbol_name("_vin")
	.dwattr DW$821, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$821, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$96


DW$T$97	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$97, DW_AT_byte_size(0x1d)
DW$822	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$822, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$822, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$822, DW_AT_accessibility(DW_ACCESS_public)
DW$823	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$73)
	.dwattr DW$823, DW_AT_name("range"), DW_AT_symbol_name("_range")
	.dwattr DW$823, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$823, DW_AT_accessibility(DW_ACCESS_public)
DW$824	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$824, DW_AT_name("prt"), DW_AT_symbol_name("_prt")
	.dwattr DW$824, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$824, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$97


DW$T$98	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$98, DW_AT_byte_size(0x0e)
DW$825	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$825, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$825, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$825, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$98


DW$T$100	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$100, DW_AT_byte_size(0x39)
DW$826	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$826, DW_AT_name("ready"), DW_AT_symbol_name("_ready")
	.dwattr DW$826, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$826, DW_AT_accessibility(DW_ACCESS_public)
DW$827	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$827, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$827, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$827, DW_AT_accessibility(DW_ACCESS_public)
DW$828	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$828, DW_AT_name("newrpm"), DW_AT_symbol_name("_newrpm")
	.dwattr DW$828, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$828, DW_AT_accessibility(DW_ACCESS_public)
DW$829	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$829, DW_AT_name("rpmstart"), DW_AT_symbol_name("_rpmstart")
	.dwattr DW$829, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$829, DW_AT_accessibility(DW_ACCESS_public)
DW$830	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$830, DW_AT_name("startupcounter"), DW_AT_symbol_name("_startupcounter")
	.dwattr DW$830, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$830, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$100


DW$T$102	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$102, DW_AT_byte_size(0x2a)
DW$831	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$101)
	.dwattr DW$831, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$831, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$831, DW_AT_accessibility(DW_ACCESS_public)
DW$832	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$73)
	.dwattr DW$832, DW_AT_name("peakoffset"), DW_AT_symbol_name("_peakoffset")
	.dwattr DW$832, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$832, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$102


DW$T$104	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$104, DW_AT_byte_size(0x62)
DW$833	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$833, DW_AT_name("current"), DW_AT_symbol_name("_current")
	.dwattr DW$833, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$833, DW_AT_accessibility(DW_ACCESS_public)
DW$834	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$834, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$834, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$834, DW_AT_accessibility(DW_ACCESS_public)
DW$835	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$103)
	.dwattr DW$835, DW_AT_name("counterA"), DW_AT_symbol_name("_counterA")
	.dwattr DW$835, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$835, DW_AT_accessibility(DW_ACCESS_public)
DW$836	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$103)
	.dwattr DW$836, DW_AT_name("counterB"), DW_AT_symbol_name("_counterB")
	.dwattr DW$836, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$836, DW_AT_accessibility(DW_ACCESS_public)
DW$837	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$837, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$837, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr DW$837, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$104


DW$T$106	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$106, DW_AT_byte_size(0x1c)
DW$838	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$105)
	.dwattr DW$838, DW_AT_name("value"), DW_AT_symbol_name("_value")
	.dwattr DW$838, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$838, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$106


DW$T$109	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$109, DW_AT_byte_size(0x1a)
DW$839	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$107)
	.dwattr DW$839, DW_AT_name("value"), DW_AT_symbol_name("_value")
	.dwattr DW$839, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$839, DW_AT_accessibility(DW_ACCESS_public)
DW$840	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$840, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$840, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$840, DW_AT_accessibility(DW_ACCESS_public)
DW$841	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$108)
	.dwattr DW$841, DW_AT_name("scalefactor"), DW_AT_symbol_name("_scalefactor")
	.dwattr DW$841, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$841, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$109


DW$T$107	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$107, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$107, DW_AT_byte_size(0x08)
DW$842	.dwtag  DW_TAG_subrange_type
	.dwattr DW$842, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$107


DW$T$103	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$103, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$103, DW_AT_byte_size(0x1c)
DW$843	.dwtag  DW_TAG_subrange_type
	.dwattr DW$843, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$103


DW$T$101	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$16)
	.dwattr DW$T$101, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$101, DW_AT_byte_size(0x1c)
DW$844	.dwtag  DW_TAG_subrange_type
	.dwattr DW$844, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$101


DW$T$108	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$16)
	.dwattr DW$T$108, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$108, DW_AT_byte_size(0x10)
DW$845	.dwtag  DW_TAG_subrange_type
	.dwattr DW$845, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$108


DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$21, DW_AT_byte_size(0x01)
DW$846	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$846, DW_AT_name("anain_select1"), DW_AT_symbol_name("_anain_select1")
	.dwattr DW$846, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$846, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$846, DW_AT_accessibility(DW_ACCESS_public)
DW$847	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$847, DW_AT_name("anain_select2"), DW_AT_symbol_name("_anain_select2")
	.dwattr DW$847, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$847, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$847, DW_AT_accessibility(DW_ACCESS_public)
DW$848	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$848, DW_AT_name("anain_select3"), DW_AT_symbol_name("_anain_select3")
	.dwattr DW$848, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$848, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$848, DW_AT_accessibility(DW_ACCESS_public)
DW$849	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$849, DW_AT_name("program_cs"), DW_AT_symbol_name("_program_cs")
	.dwattr DW$849, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$849, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$849, DW_AT_accessibility(DW_ACCESS_public)
DW$850	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$850, DW_AT_name("com_select"), DW_AT_symbol_name("_com_select")
	.dwattr DW$850, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$850, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$850, DW_AT_accessibility(DW_ACCESS_public)
DW$851	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$851, DW_AT_name("s1"), DW_AT_symbol_name("_s1")
	.dwattr DW$851, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$851, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$851, DW_AT_accessibility(DW_ACCESS_public)
DW$852	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$852, DW_AT_name("s2"), DW_AT_symbol_name("_s2")
	.dwattr DW$852, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$852, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$852, DW_AT_accessibility(DW_ACCESS_public)
DW$853	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$853, DW_AT_name("s3"), DW_AT_symbol_name("_s3")
	.dwattr DW$853, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$853, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$853, DW_AT_accessibility(DW_ACCESS_public)
DW$854	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$854, DW_AT_name("s4"), DW_AT_symbol_name("_s4")
	.dwattr DW$854, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$854, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$854, DW_AT_accessibility(DW_ACCESS_public)
DW$855	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$855, DW_AT_name("s5"), DW_AT_symbol_name("_s5")
	.dwattr DW$855, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$855, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$855, DW_AT_accessibility(DW_ACCESS_public)
DW$856	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$856, DW_AT_name("s6"), DW_AT_symbol_name("_s6")
	.dwattr DW$856, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$856, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$856, DW_AT_accessibility(DW_ACCESS_public)
DW$857	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$857, DW_AT_name("s7"), DW_AT_symbol_name("_s7")
	.dwattr DW$857, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$857, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$857, DW_AT_accessibility(DW_ACCESS_public)
DW$858	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$858, DW_AT_name("s8"), DW_AT_symbol_name("_s8")
	.dwattr DW$858, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$858, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$858, DW_AT_accessibility(DW_ACCESS_public)
DW$859	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$859, DW_AT_name("s9"), DW_AT_symbol_name("_s9")
	.dwattr DW$859, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$859, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$859, DW_AT_accessibility(DW_ACCESS_public)
DW$860	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$860, DW_AT_name("s10"), DW_AT_symbol_name("_s10")
	.dwattr DW$860, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$860, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$860, DW_AT_accessibility(DW_ACCESS_public)
DW$861	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$861, DW_AT_name("s11"), DW_AT_symbol_name("_s11")
	.dwattr DW$861, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$861, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$861, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21


DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_byte_size(0x01)
DW$862	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$862, DW_AT_name("s12"), DW_AT_symbol_name("_s12")
	.dwattr DW$862, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$862, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$862, DW_AT_accessibility(DW_ACCESS_public)
DW$863	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$863, DW_AT_name("s13"), DW_AT_symbol_name("_s13")
	.dwattr DW$863, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$863, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$863, DW_AT_accessibility(DW_ACCESS_public)
DW$864	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$864, DW_AT_name("s14"), DW_AT_symbol_name("_s14")
	.dwattr DW$864, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$864, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$864, DW_AT_accessibility(DW_ACCESS_public)
DW$865	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$865, DW_AT_name("s15"), DW_AT_symbol_name("_s15")
	.dwattr DW$865, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$865, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$865, DW_AT_accessibility(DW_ACCESS_public)
DW$866	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$866, DW_AT_name("s16"), DW_AT_symbol_name("_s16")
	.dwattr DW$866, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$866, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$866, DW_AT_accessibility(DW_ACCESS_public)
DW$867	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$867, DW_AT_name("s17"), DW_AT_symbol_name("_s17")
	.dwattr DW$867, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$867, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$867, DW_AT_accessibility(DW_ACCESS_public)
DW$868	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$868, DW_AT_name("s18"), DW_AT_symbol_name("_s18")
	.dwattr DW$868, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$868, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$868, DW_AT_accessibility(DW_ACCESS_public)
DW$869	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$869, DW_AT_name("s19"), DW_AT_symbol_name("_s19")
	.dwattr DW$869, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$869, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$869, DW_AT_accessibility(DW_ACCESS_public)
DW$870	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$870, DW_AT_name("disp485txen"), DW_AT_symbol_name("_disp485txen")
	.dwattr DW$870, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$870, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$870, DW_AT_accessibility(DW_ACCESS_public)
DW$871	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$871, DW_AT_name("disp485rxen"), DW_AT_symbol_name("_disp485rxen")
	.dwattr DW$871, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$871, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$871, DW_AT_accessibility(DW_ACCESS_public)
DW$872	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$872, DW_AT_name("gpio1"), DW_AT_symbol_name("_gpio1")
	.dwattr DW$872, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$872, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$872, DW_AT_accessibility(DW_ACCESS_public)
DW$873	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$873, DW_AT_name("gpio2"), DW_AT_symbol_name("_gpio2")
	.dwattr DW$873, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$873, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$873, DW_AT_accessibility(DW_ACCESS_public)
DW$874	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$874, DW_AT_name("gpio3"), DW_AT_symbol_name("_gpio3")
	.dwattr DW$874, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$874, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$874, DW_AT_accessibility(DW_ACCESS_public)
DW$875	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$875, DW_AT_name("gpio4"), DW_AT_symbol_name("_gpio4")
	.dwattr DW$875, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$875, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$875, DW_AT_accessibility(DW_ACCESS_public)
DW$876	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$876, DW_AT_name("rtccs"), DW_AT_symbol_name("_rtccs")
	.dwattr DW$876, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$876, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$876, DW_AT_accessibility(DW_ACCESS_public)
DW$877	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$877, DW_AT_name("op3"), DW_AT_symbol_name("_op3")
	.dwattr DW$877, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$877, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$877, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$27, DW_AT_byte_size(0x01)
DW$878	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$878, DW_AT_name("modeswitch"), DW_AT_symbol_name("_modeswitch")
	.dwattr DW$878, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$878, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$878, DW_AT_accessibility(DW_ACCESS_public)
DW$879	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$879, DW_AT_name("led1"), DW_AT_symbol_name("_led1")
	.dwattr DW$879, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$879, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$879, DW_AT_accessibility(DW_ACCESS_public)
DW$880	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$880, DW_AT_name("bit2"), DW_AT_symbol_name("_bit2")
	.dwattr DW$880, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$880, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$880, DW_AT_accessibility(DW_ACCESS_public)
DW$881	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$881, DW_AT_name("bit3"), DW_AT_symbol_name("_bit3")
	.dwattr DW$881, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$881, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$881, DW_AT_accessibility(DW_ACCESS_public)
DW$882	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$882, DW_AT_name("bit4"), DW_AT_symbol_name("_bit4")
	.dwattr DW$882, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$882, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$882, DW_AT_accessibility(DW_ACCESS_public)
DW$883	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$883, DW_AT_name("ccselect1"), DW_AT_symbol_name("_ccselect1")
	.dwattr DW$883, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$883, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$883, DW_AT_accessibility(DW_ACCESS_public)
DW$884	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$884, DW_AT_name("ccselect2"), DW_AT_symbol_name("_ccselect2")
	.dwattr DW$884, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$884, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$884, DW_AT_accessibility(DW_ACCESS_public)
DW$885	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$885, DW_AT_name("bit7"), DW_AT_symbol_name("_bit7")
	.dwattr DW$885, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$885, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$885, DW_AT_accessibility(DW_ACCESS_public)
DW$886	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$886, DW_AT_name("bit8"), DW_AT_symbol_name("_bit8")
	.dwattr DW$886, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$886, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$886, DW_AT_accessibility(DW_ACCESS_public)
DW$887	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$887, DW_AT_name("bit9"), DW_AT_symbol_name("_bit9")
	.dwattr DW$887, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$887, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$887, DW_AT_accessibility(DW_ACCESS_public)
DW$888	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$888, DW_AT_name("bit10"), DW_AT_symbol_name("_bit10")
	.dwattr DW$888, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$888, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$888, DW_AT_accessibility(DW_ACCESS_public)
DW$889	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$889, DW_AT_name("bit11"), DW_AT_symbol_name("_bit11")
	.dwattr DW$889, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$889, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$889, DW_AT_accessibility(DW_ACCESS_public)
DW$890	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$890, DW_AT_name("bit12"), DW_AT_symbol_name("_bit12")
	.dwattr DW$890, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$890, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$890, DW_AT_accessibility(DW_ACCESS_public)
DW$891	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$891, DW_AT_name("bit13"), DW_AT_symbol_name("_bit13")
	.dwattr DW$891, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$891, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$891, DW_AT_accessibility(DW_ACCESS_public)
DW$892	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$892, DW_AT_name("bit14"), DW_AT_symbol_name("_bit14")
	.dwattr DW$892, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$892, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$892, DW_AT_accessibility(DW_ACCESS_public)
DW$893	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$893, DW_AT_name("bit15"), DW_AT_symbol_name("_bit15")
	.dwattr DW$893, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$893, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$893, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$69, DW_AT_name("tag_sensoralarmstruct")
	.dwattr DW$T$69, DW_AT_byte_size(0x01)
DW$894	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$894, DW_AT_name("failure"), DW_AT_symbol_name("_failure")
	.dwattr DW$894, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$894, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$894, DW_AT_accessibility(DW_ACCESS_public)
DW$895	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$895, DW_AT_name("failurelatched"), DW_AT_symbol_name("_failurelatched")
	.dwattr DW$895, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$895, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$895, DW_AT_accessibility(DW_ACCESS_public)
DW$896	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$896, DW_AT_name("slowdown"), DW_AT_symbol_name("_slowdown")
	.dwattr DW$896, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$896, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$896, DW_AT_accessibility(DW_ACCESS_public)
DW$897	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$897, DW_AT_name("slowdownlatched"), DW_AT_symbol_name("_slowdownlatched")
	.dwattr DW$897, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$897, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$897, DW_AT_accessibility(DW_ACCESS_public)
DW$898	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$898, DW_AT_name("alarm"), DW_AT_symbol_name("_alarm")
	.dwattr DW$898, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$898, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$898, DW_AT_accessibility(DW_ACCESS_public)
DW$899	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$899, DW_AT_name("alarmlatched"), DW_AT_symbol_name("_alarmlatched")
	.dwattr DW$899, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$899, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$899, DW_AT_accessibility(DW_ACCESS_public)
DW$900	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$900, DW_AT_name("devalarm"), DW_AT_symbol_name("_devalarm")
	.dwattr DW$900, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$900, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$900, DW_AT_accessibility(DW_ACCESS_public)
DW$901	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$901, DW_AT_name("devalarmlatched"), DW_AT_symbol_name("_devalarmlatched")
	.dwattr DW$901, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$901, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$901, DW_AT_accessibility(DW_ACCESS_public)
DW$902	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$902, DW_AT_name("devslow"), DW_AT_symbol_name("_devslow")
	.dwattr DW$902, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$902, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$902, DW_AT_accessibility(DW_ACCESS_public)
DW$903	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$903, DW_AT_name("devslowlatched"), DW_AT_symbol_name("_devslowlatched")
	.dwattr DW$903, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$903, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$903, DW_AT_accessibility(DW_ACCESS_public)
DW$904	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$904, DW_AT_name("calibration"), DW_AT_symbol_name("_calibration")
	.dwattr DW$904, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$904, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$904, DW_AT_accessibility(DW_ACCESS_public)
DW$905	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$905, DW_AT_name("calibrationlatched"), DW_AT_symbol_name("_calibrationlatched")
	.dwattr DW$905, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$905, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$905, DW_AT_accessibility(DW_ACCESS_public)
DW$906	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$906, DW_AT_name("prewarning"), DW_AT_symbol_name("_prewarning")
	.dwattr DW$906, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$906, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$906, DW_AT_accessibility(DW_ACCESS_public)
DW$907	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$907, DW_AT_name("prewarninglatched"), DW_AT_symbol_name("_prewarninglatched")
	.dwattr DW$907, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$907, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$907, DW_AT_accessibility(DW_ACCESS_public)
DW$908	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$908, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$908, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$908, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$908, DW_AT_accessibility(DW_ACCESS_public)
DW$909	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$909, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$909, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$909, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$909, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$69


	.dwattr DW$245, DW_AT_external(0x01)
	.dwattr DW$245, DW_AT_type(*DW$T$176)
	.dwattr DW$220, DW_AT_external(0x01)
	.dwattr DW$266, DW_AT_external(0x01)
	.dwattr DW$151, DW_AT_external(0x01)
	.dwattr DW$238, DW_AT_external(0x01)
	.dwattr DW$278, DW_AT_external(0x01)
	.dwattr DW$248, DW_AT_external(0x01)
	.dwattr DW$216, DW_AT_external(0x01)
	.dwattr DW$268, DW_AT_external(0x01)
	.dwattr DW$207, DW_AT_external(0x01)
	.dwattr DW$126, DW_AT_external(0x01)
	.dwattr DW$326, DW_AT_external(0x01)
	.dwattr DW$139, DW_AT_external(0x01)
	.dwattr DW$304, DW_AT_external(0x01)
	.dwattr DW$138, DW_AT_external(0x01)
	.dwattr DW$133, DW_AT_external(0x01)
	.dwattr DW$145, DW_AT_external(0x01)
	.dwattr DW$142, DW_AT_external(0x01)
	.dwattr DW$295, DW_AT_external(0x01)
	.dwattr DW$295, DW_AT_type(*DW$T$10)
	.dwattr DW$290, DW_AT_external(0x01)
	.dwattr DW$290, DW_AT_type(*DW$T$11)
	.dwattr DW$261, DW_AT_external(0x01)
	.dwattr DW$261, DW_AT_type(*DW$T$10)
	.dwattr DW$158, DW_AT_external(0x01)
	.dwattr DW$158, DW_AT_type(*DW$T$11)
	.dwattr DW$114, DW_AT_external(0x01)
	.dwattr DW$212, DW_AT_external(0x01)
	.dwattr DW$125, DW_AT_external(0x01)
	.dwattr DW$124, DW_AT_external(0x01)
	.dwattr DW$276, DW_AT_external(0x01)
	.dwattr DW$299, DW_AT_external(0x01)
	.dwattr DW$271, DW_AT_external(0x01)
	.dwattr DW$277, DW_AT_external(0x01)
	.dwattr DW$259, DW_AT_external(0x01)
	.dwattr DW$259, DW_AT_type(*DW$T$10)
	.dwattr DW$148, DW_AT_external(0x01)
	.dwattr DW$302, DW_AT_external(0x01)
	.dwattr DW$300, DW_AT_external(0x01)
	.dwattr DW$300, DW_AT_type(*DW$T$10)
	.dwattr DW$265, DW_AT_external(0x01)
	.dwattr DW$153, DW_AT_external(0x01)
	.dwattr DW$160, DW_AT_external(0x01)
	.dwattr DW$173, DW_AT_external(0x01)
	.dwattr DW$263, DW_AT_external(0x01)
	.dwattr DW$264, DW_AT_external(0x01)
	.dwattr DW$262, DW_AT_external(0x01)
	.dwattr DW$273, DW_AT_external(0x01)
	.dwattr DW$298, DW_AT_external(0x01)
	.dwattr DW$258, DW_AT_external(0x01)
	.dwattr DW$270, DW_AT_external(0x01)
	.dwattr DW$275, DW_AT_external(0x01)
	.dwattr DW$267, DW_AT_external(0x01)
	.dwattr DW$152, DW_AT_external(0x01)
	.dwattr DW$292, DW_AT_external(0x01)
	.dwattr DW$287, DW_AT_external(0x01)
	.dwattr DW$155, DW_AT_external(0x01)
	.dwattr DW$247, DW_AT_external(0x01)
	.dwattr DW$213, DW_AT_external(0x01)
	.dwattr DW$233, DW_AT_external(0x01)
	.dwattr DW$121, DW_AT_external(0x01)
	.dwattr DW$272, DW_AT_external(0x01)
	.dwattr DW$297, DW_AT_external(0x01)
	.dwattr DW$269, DW_AT_external(0x01)
	.dwattr DW$274, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$910	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$910, DW_AT_location[DW_OP_reg0]
DW$911	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$911, DW_AT_location[DW_OP_reg1]
DW$912	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$912, DW_AT_location[DW_OP_reg2]
DW$913	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$913, DW_AT_location[DW_OP_reg3]
DW$914	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$914, DW_AT_location[DW_OP_reg4]
DW$915	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$915, DW_AT_location[DW_OP_reg5]
DW$916	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$916, DW_AT_location[DW_OP_reg6]
DW$917	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$917, DW_AT_location[DW_OP_reg7]
DW$918	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$918, DW_AT_location[DW_OP_reg8]
DW$919	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$919, DW_AT_location[DW_OP_reg9]
DW$920	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$920, DW_AT_location[DW_OP_reg10]
DW$921	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$921, DW_AT_location[DW_OP_reg11]
DW$922	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$922, DW_AT_location[DW_OP_reg12]
DW$923	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$923, DW_AT_location[DW_OP_reg13]
DW$924	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$924, DW_AT_location[DW_OP_reg14]
DW$925	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$925, DW_AT_location[DW_OP_reg15]
DW$926	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$926, DW_AT_location[DW_OP_reg16]
DW$927	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$927, DW_AT_location[DW_OP_reg17]
DW$928	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$928, DW_AT_location[DW_OP_reg18]
DW$929	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$929, DW_AT_location[DW_OP_reg19]
DW$930	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$930, DW_AT_location[DW_OP_reg20]
DW$931	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$931, DW_AT_location[DW_OP_reg21]
DW$932	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$932, DW_AT_location[DW_OP_reg22]
DW$933	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$933, DW_AT_location[DW_OP_reg23]
DW$934	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$934, DW_AT_location[DW_OP_reg24]
DW$935	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$935, DW_AT_location[DW_OP_reg25]
DW$936	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$936, DW_AT_location[DW_OP_reg26]
DW$937	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$937, DW_AT_location[DW_OP_reg27]
DW$938	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$938, DW_AT_location[DW_OP_reg28]
DW$939	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$939, DW_AT_location[DW_OP_reg29]
DW$940	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$940, DW_AT_location[DW_OP_reg30]
DW$941	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$941, DW_AT_location[DW_OP_reg31]
DW$942	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$942, DW_AT_location[DW_OP_regx 0x20]
DW$943	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$943, DW_AT_location[DW_OP_regx 0x21]
DW$944	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$944, DW_AT_location[DW_OP_regx 0x22]
DW$945	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$945, DW_AT_location[DW_OP_regx 0x23]
DW$946	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$946, DW_AT_location[DW_OP_regx 0x24]
DW$947	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$947, DW_AT_location[DW_OP_regx 0x25]
DW$948	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$948, DW_AT_location[DW_OP_regx 0x26]
DW$949	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$949, DW_AT_location[DW_OP_regx 0x27]
DW$950	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$950, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

