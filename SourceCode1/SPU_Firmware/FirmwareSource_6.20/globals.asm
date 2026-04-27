;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Thu Aug 18 12:16:16 2016                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("globals.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)
	.global	_timers
_timers:	.usect	".ebss",76,1,1
DW$1	.dwtag  DW_TAG_variable, DW_AT_name("timers"), DW_AT_symbol_name("_timers")
	.dwattr DW$1, DW_AT_location[DW_OP_addr _timers]
	.dwattr DW$1, DW_AT_type(*DW$T$66)
	.dwattr DW$1, DW_AT_external(0x01)
	.global	_settings
_settings:	.usect	".ebss",36,1,0
DW$2	.dwtag  DW_TAG_variable, DW_AT_name("settings"), DW_AT_symbol_name("_settings")
	.dwattr DW$2, DW_AT_location[DW_OP_addr _settings]
	.dwattr DW$2, DW_AT_type(*DW$T$68)
	.dwattr DW$2, DW_AT_external(0x01)
	.global	_safe1
_safe1:	.usect	".ebss",31,1,0
DW$3	.dwtag  DW_TAG_variable, DW_AT_name("safe1"), DW_AT_symbol_name("_safe1")
	.dwattr DW$3, DW_AT_location[DW_OP_addr _safe1]
	.dwattr DW$3, DW_AT_type(*DW$T$69)
	.dwattr DW$3, DW_AT_external(0x01)
	.global	_safe2
_safe2:	.usect	".ebss",30,1,0
DW$4	.dwtag  DW_TAG_variable, DW_AT_name("safe2"), DW_AT_symbol_name("_safe2")
	.dwattr DW$4, DW_AT_location[DW_OP_addr _safe2]
	.dwattr DW$4, DW_AT_type(*DW$T$70)
	.dwattr DW$4, DW_AT_external(0x01)
	.global	_xtswplusanacal
_xtswplusanacal:	.usect	".ebss",14,1,0
DW$5	.dwtag  DW_TAG_variable, DW_AT_name("xtswplusanacal"), DW_AT_symbol_name("_xtswplusanacal")
	.dwattr DW$5, DW_AT_location[DW_OP_addr _xtswplusanacal]
	.dwattr DW$5, DW_AT_type(*DW$T$71)
	.dwattr DW$5, DW_AT_external(0x01)
	.global	_clocktime
_clocktime:	.usect	".ebss",14,1,1
DW$6	.dwtag  DW_TAG_variable, DW_AT_name("clocktime"), DW_AT_symbol_name("_clocktime")
	.dwattr DW$6, DW_AT_location[DW_OP_addr _clocktime]
	.dwattr DW$6, DW_AT_type(*DW$T$72)
	.dwattr DW$6, DW_AT_external(0x01)
	.global	_livetime
_livetime:	.usect	".ebss",3,1,0
DW$7	.dwtag  DW_TAG_variable, DW_AT_name("livetime"), DW_AT_symbol_name("_livetime")
	.dwattr DW$7, DW_AT_location[DW_OP_addr _livetime]
	.dwattr DW$7, DW_AT_type(*DW$T$73)
	.dwattr DW$7, DW_AT_external(0x01)
	.global	_logtime
_logtime:	.usect	".ebss",3,1,0
DW$8	.dwtag  DW_TAG_variable, DW_AT_name("logtime"), DW_AT_symbol_name("_logtime")
	.dwattr DW$8, DW_AT_location[DW_OP_addr _logtime]
	.dwattr DW$8, DW_AT_type(*DW$T$73)
	.dwattr DW$8, DW_AT_external(0x01)
	.global	_motion
_motion:	.usect	".ebss",9,1,0
DW$9	.dwtag  DW_TAG_variable, DW_AT_name("motion"), DW_AT_symbol_name("_motion")
	.dwattr DW$9, DW_AT_location[DW_OP_addr _motion]
	.dwattr DW$9, DW_AT_type(*DW$T$74)
	.dwattr DW$9, DW_AT_external(0x01)
	.global	_calibrationtd
_calibrationtd:	.usect	".ebss",7,1,0
DW$10	.dwtag  DW_TAG_variable, DW_AT_name("calibrationtd"), DW_AT_symbol_name("_calibrationtd")
	.dwattr DW$10, DW_AT_location[DW_OP_addr _calibrationtd]
	.dwattr DW$10, DW_AT_type(*DW$T$75)
	.dwattr DW$10, DW_AT_external(0x01)
	.global	_allsensors
_allsensors:	.usect	".ebss",45,1,0
DW$11	.dwtag  DW_TAG_variable, DW_AT_name("allsensors"), DW_AT_symbol_name("_allsensors")
	.dwattr DW$11, DW_AT_location[DW_OP_addr _allsensors]
	.dwattr DW$11, DW_AT_type(*DW$T$76)
	.dwattr DW$11, DW_AT_external(0x01)
	.global	_config
_config:	.usect	".ebss",24,1,1
DW$12	.dwtag  DW_TAG_variable, DW_AT_name("config"), DW_AT_symbol_name("_config")
	.dwattr DW$12, DW_AT_location[DW_OP_addr _config]
	.dwattr DW$12, DW_AT_type(*DW$T$77)
	.dwattr DW$12, DW_AT_external(0x01)
	.global	_cylinders
_cylinders:	.usect	".ebss",56,1,0
DW$13	.dwtag  DW_TAG_variable, DW_AT_name("cylinders"), DW_AT_symbol_name("_cylinders")
	.dwattr DW$13, DW_AT_location[DW_OP_addr _cylinders]
	.dwattr DW$13, DW_AT_type(*DW$T$79)
	.dwattr DW$13, DW_AT_external(0x01)
	.global	_loopcheck
_loopcheck:	.usect	".ebss",16,1,1
DW$14	.dwtag  DW_TAG_variable, DW_AT_name("loopcheck"), DW_AT_symbol_name("_loopcheck")
	.dwattr DW$14, DW_AT_location[DW_OP_addr _loopcheck]
	.dwattr DW$14, DW_AT_type(*DW$T$81)
	.dwattr DW$14, DW_AT_external(0x01)
	.global	_transferbuffer
_transferbuffer:	.usect	".ebss",128,1,0
DW$15	.dwtag  DW_TAG_variable, DW_AT_name("transferbuffer"), DW_AT_symbol_name("_transferbuffer")
	.dwattr DW$15, DW_AT_location[DW_OP_addr _transferbuffer]
	.dwattr DW$15, DW_AT_type(*DW$T$64)
	.dwattr DW$15, DW_AT_external(0x01)
;	C:\CCStudio_v3.3\C2000\cgtools\bin\opt2000.exe C:\Users\Andrew\AppData\Local\Temp\TI1442 C:\Users\Andrew\AppData\Local\Temp\TI1444 
;	C:\CCStudio_v3.3\C2000\cgtools\bin\ac2000.exe -q -D_INLINE -DLARGE_MODEL -IC:/CCStudio_v3.3/C2000/xdais/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/bios/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/rtdx/include/c2000 -IC:/CCStudio_v3.3/C2000/cgtools/include --version=28 --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\Andrew\AppData\Local\Temp\TI1442 --template_info_file C:\Users\Andrew\AppData\Local\Temp\TI1446 --object_file 

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

DW$T$64	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$64, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$64, DW_AT_byte_size(0x80)
DW$16	.dwtag  DW_TAG_subrange_type
	.dwattr DW$16, DW_AT_upper_bound(0x7f)
	.dwendtag DW$T$64

DW$17	.dwtag  DW_TAG_far_type
	.dwattr DW$17, DW_AT_type(*DW$T$65)
DW$T$66	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$66, DW_AT_type(*DW$17)
DW$T$68	.dwtag  DW_TAG_typedef, DW_AT_name("settingsstruct"), DW_AT_type(*DW$T$22)
	.dwattr DW$T$68, DW_AT_language(DW_LANG_C)
DW$T$69	.dwtag  DW_TAG_typedef, DW_AT_name("safestruct1struct"), DW_AT_type(*DW$T$25)
	.dwattr DW$T$69, DW_AT_language(DW_LANG_C)
DW$T$70	.dwtag  DW_TAG_typedef, DW_AT_name("safestruct2struct"), DW_AT_type(*DW$T$38)
	.dwattr DW$T$70, DW_AT_language(DW_LANG_C)
DW$T$71	.dwtag  DW_TAG_typedef, DW_AT_name("xtswplusanastruct"), DW_AT_type(*DW$T$39)
	.dwattr DW$T$71, DW_AT_language(DW_LANG_C)
DW$T$72	.dwtag  DW_TAG_typedef, DW_AT_name("clockstruct"), DW_AT_type(*DW$T$40)
	.dwattr DW$T$72, DW_AT_language(DW_LANG_C)
DW$T$73	.dwtag  DW_TAG_typedef, DW_AT_name("livestruct"), DW_AT_type(*DW$T$41)
	.dwattr DW$T$73, DW_AT_language(DW_LANG_C)
DW$T$74	.dwtag  DW_TAG_typedef, DW_AT_name("motionstruct"), DW_AT_type(*DW$T$43)
	.dwattr DW$T$74, DW_AT_language(DW_LANG_C)
DW$T$75	.dwtag  DW_TAG_typedef, DW_AT_name("calibrationdatetimestruct"), DW_AT_type(*DW$T$46)
	.dwattr DW$T$75, DW_AT_language(DW_LANG_C)
DW$T$76	.dwtag  DW_TAG_typedef, DW_AT_name("allsensorstruct"), DW_AT_type(*DW$T$49)
	.dwattr DW$T$76, DW_AT_language(DW_LANG_C)
DW$T$77	.dwtag  DW_TAG_typedef, DW_AT_name("configstruct"), DW_AT_type(*DW$T$56)
	.dwattr DW$T$77, DW_AT_language(DW_LANG_C)

DW$T$79	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$78)
	.dwattr DW$T$79, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$79, DW_AT_byte_size(0x38)
DW$18	.dwtag  DW_TAG_subrange_type
	.dwattr DW$18, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$79

DW$T$81	.dwtag  DW_TAG_typedef, DW_AT_name("loopcheckstruct"), DW_AT_type(*DW$T$63)
	.dwattr DW$T$81, DW_AT_language(DW_LANG_C)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)
DW$T$65	.dwtag  DW_TAG_typedef, DW_AT_name("timersstruct"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$65, DW_AT_language(DW_LANG_C)

DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_name("tag_settingsstruct")
	.dwattr DW$T$22, DW_AT_byte_size(0x24)
DW$19	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$19, DW_AT_name("watchdog"), DW_AT_symbol_name("_watchdog")
	.dwattr DW$19, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$19, DW_AT_accessibility(DW_ACCESS_public)
DW$20	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$20, DW_AT_name("ledflashflag"), DW_AT_symbol_name("_ledflashflag")
	.dwattr DW$20, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$20, DW_AT_accessibility(DW_ACCESS_public)
DW$21	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$21, DW_AT_name("updatesafe"), DW_AT_symbol_name("_updatesafe")
	.dwattr DW$21, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$21, DW_AT_accessibility(DW_ACCESS_public)
DW$22	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$22, DW_AT_name("tableconfigtype"), DW_AT_symbol_name("_tableconfigtype")
	.dwattr DW$22, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$22, DW_AT_accessibility(DW_ACCESS_public)
DW$23	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$23, DW_AT_name("caltableconfigtype"), DW_AT_symbol_name("_caltableconfigtype")
	.dwattr DW$23, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$23, DW_AT_accessibility(DW_ACCESS_public)
DW$24	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$24, DW_AT_name("eventmsgid"), DW_AT_symbol_name("_eventmsgid")
	.dwattr DW$24, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$24, DW_AT_accessibility(DW_ACCESS_public)
DW$25	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$25, DW_AT_name("configoperationcomplete"), DW_AT_symbol_name("_configoperationcomplete")
	.dwattr DW$25, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$25, DW_AT_accessibility(DW_ACCESS_public)
DW$26	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$26, DW_AT_name("sdcarderr"), DW_AT_symbol_name("_sdcarderr")
	.dwattr DW$26, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$26, DW_AT_accessibility(DW_ACCESS_public)
DW$27	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$27, DW_AT_name("sderase"), DW_AT_symbol_name("_sderase")
	.dwattr DW$27, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$27, DW_AT_accessibility(DW_ACCESS_public)
DW$28	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$28, DW_AT_name("sdreinit"), DW_AT_symbol_name("_sdreinit")
	.dwattr DW$28, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$28, DW_AT_accessibility(DW_ACCESS_public)
DW$29	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$29, DW_AT_name("sdcardupdate"), DW_AT_symbol_name("_sdcardupdate")
	.dwattr DW$29, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$29, DW_AT_accessibility(DW_ACCESS_public)
DW$30	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$30, DW_AT_name("cardreadflag"), DW_AT_symbol_name("_cardreadflag")
	.dwattr DW$30, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$30, DW_AT_accessibility(DW_ACCESS_public)
DW$31	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$31, DW_AT_name("ignore"), DW_AT_symbol_name("_ignore")
	.dwattr DW$31, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$31, DW_AT_accessibility(DW_ACCESS_public)
DW$32	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$32, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$32, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$32, DW_AT_accessibility(DW_ACCESS_public)
DW$33	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$33, DW_AT_name("spiinuse"), DW_AT_symbol_name("_spiinuse")
	.dwattr DW$33, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$33, DW_AT_accessibility(DW_ACCESS_public)
DW$34	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$34, DW_AT_name("dcpeakhold"), DW_AT_symbol_name("_dcpeakhold")
	.dwattr DW$34, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$34, DW_AT_accessibility(DW_ACCESS_public)
DW$35	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$35, DW_AT_name("dcpause"), DW_AT_symbol_name("_dcpause")
	.dwattr DW$35, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$35, DW_AT_accessibility(DW_ACCESS_public)
DW$36	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$36, DW_AT_name("mastermode"), DW_AT_symbol_name("_mastermode")
	.dwattr DW$36, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$36, DW_AT_accessibility(DW_ACCESS_public)
DW$37	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$37, DW_AT_name("updatescaling"), DW_AT_symbol_name("_updatescaling")
	.dwattr DW$37, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$37, DW_AT_accessibility(DW_ACCESS_public)
DW$38	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$38, DW_AT_name("forwardasternflag"), DW_AT_symbol_name("_forwardasternflag")
	.dwattr DW$38, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$38, DW_AT_accessibility(DW_ACCESS_public)
DW$39	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$39, DW_AT_name("initprogress"), DW_AT_symbol_name("_initprogress")
	.dwattr DW$39, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$39, DW_AT_accessibility(DW_ACCESS_public)
DW$40	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$40, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$40, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$40, DW_AT_accessibility(DW_ACCESS_public)
DW$41	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$41, DW_AT_name("slowdowncounter"), DW_AT_symbol_name("_slowdowncounter")
	.dwattr DW$41, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$41, DW_AT_accessibility(DW_ACCESS_public)
DW$42	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$42, DW_AT_name("slowdowncondition"), DW_AT_symbol_name("_slowdowncondition")
	.dwattr DW$42, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$42, DW_AT_accessibility(DW_ACCESS_public)
DW$43	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$43, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$43, DW_AT_accessibility(DW_ACCESS_public)
DW$44	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$44, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$44, DW_AT_accessibility(DW_ACCESS_public)
DW$45	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$45, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$45, DW_AT_accessibility(DW_ACCESS_public)
DW$46	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$46, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$46, DW_AT_accessibility(DW_ACCESS_public)
DW$47	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$47, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$47, DW_AT_accessibility(DW_ACCESS_public)
DW$48	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$48, DW_AT_name("temperaturealarm"), DW_AT_symbol_name("_temperaturealarm")
	.dwattr DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$48, DW_AT_accessibility(DW_ACCESS_public)
DW$49	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$49, DW_AT_name("temperatureslowdown"), DW_AT_symbol_name("_temperatureslowdown")
	.dwattr DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$49, DW_AT_accessibility(DW_ACCESS_public)
DW$50	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$50, DW_AT_name("anadebug"), DW_AT_symbol_name("_anadebug")
	.dwattr DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$50, DW_AT_accessibility(DW_ACCESS_public)
DW$51	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$51, DW_AT_name("serialdebug"), DW_AT_symbol_name("_serialdebug")
	.dwattr DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr DW$51, DW_AT_accessibility(DW_ACCESS_public)
DW$52	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$52, DW_AT_name("timerrunning"), DW_AT_symbol_name("_timerrunning")
	.dwattr DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$52, DW_AT_accessibility(DW_ACCESS_public)
DW$53	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$53, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$53, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$25, DW_AT_name("tag_safestruct1struct")
	.dwattr DW$T$25, DW_AT_byte_size(0x1f)
DW$54	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$54, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$54, DW_AT_accessibility(DW_ACCESS_public)
DW$55	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$55, DW_AT_name("watchdog"), DW_AT_symbol_name("_watchdog")
	.dwattr DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$55, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_name("tag_safestruct2struct")
	.dwattr DW$T$38, DW_AT_byte_size(0x1e)
DW$56	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$56, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$56, DW_AT_accessibility(DW_ACCESS_public)
DW$57	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$57, DW_AT_name("log"), DW_AT_symbol_name("_log")
	.dwattr DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$57, DW_AT_accessibility(DW_ACCESS_public)
DW$58	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$58, DW_AT_name("modbus"), DW_AT_symbol_name("_modbus")
	.dwattr DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$58, DW_AT_accessibility(DW_ACCESS_public)
DW$59	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$59, DW_AT_name("filter"), DW_AT_symbol_name("_filter")
	.dwattr DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$59, DW_AT_accessibility(DW_ACCESS_public)
DW$60	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$60, DW_AT_name("alarms"), DW_AT_symbol_name("_alarms")
	.dwattr DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$60, DW_AT_accessibility(DW_ACCESS_public)
DW$61	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$61, DW_AT_name("modbusbaud"), DW_AT_symbol_name("_modbusbaud")
	.dwattr DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$61, DW_AT_accessibility(DW_ACCESS_public)
DW$62	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$62, DW_AT_name("modbus2"), DW_AT_symbol_name("_modbus2")
	.dwattr DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$62, DW_AT_accessibility(DW_ACCESS_public)
DW$63	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$63, DW_AT_name("sync"), DW_AT_symbol_name("_sync")
	.dwattr DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$63, DW_AT_accessibility(DW_ACCESS_public)
DW$64	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$64, DW_AT_name("alarmenable"), DW_AT_symbol_name("_alarmenable")
	.dwattr DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$64, DW_AT_accessibility(DW_ACCESS_public)
DW$65	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$65, DW_AT_name("trendmax"), DW_AT_symbol_name("_trendmax")
	.dwattr DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$65, DW_AT_accessibility(DW_ACCESS_public)
DW$66	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$66, DW_AT_name("tempcomp"), DW_AT_symbol_name("_tempcomp")
	.dwattr DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$66, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38


DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$39, DW_AT_name("tag_xtswplusanastruct")
	.dwattr DW$T$39, DW_AT_byte_size(0x0e)
DW$67	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$67, DW_AT_name("analog18ma"), DW_AT_symbol_name("_analog18ma")
	.dwattr DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$67, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39


DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$40, DW_AT_name("tag_clockstruct")
	.dwattr DW$T$40, DW_AT_byte_size(0x0e)
DW$68	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$68, DW_AT_name("WPstate"), DW_AT_symbol_name("_WPstate")
	.dwattr DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$68, DW_AT_accessibility(DW_ACCESS_public)
DW$69	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$69, DW_AT_name("seconds"), DW_AT_symbol_name("_seconds")
	.dwattr DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$69, DW_AT_accessibility(DW_ACCESS_public)
DW$70	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$70, DW_AT_name("minutes"), DW_AT_symbol_name("_minutes")
	.dwattr DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$70, DW_AT_accessibility(DW_ACCESS_public)
DW$71	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$71, DW_AT_name("hours"), DW_AT_symbol_name("_hours")
	.dwattr DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$71, DW_AT_accessibility(DW_ACCESS_public)
DW$72	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$72, DW_AT_name("day"), DW_AT_symbol_name("_day")
	.dwattr DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$72, DW_AT_accessibility(DW_ACCESS_public)
DW$73	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$73, DW_AT_name("date"), DW_AT_symbol_name("_date")
	.dwattr DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$73, DW_AT_accessibility(DW_ACCESS_public)
DW$74	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$74, DW_AT_name("month"), DW_AT_symbol_name("_month")
	.dwattr DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$74, DW_AT_accessibility(DW_ACCESS_public)
DW$75	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$75, DW_AT_name("year"), DW_AT_symbol_name("_year")
	.dwattr DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$75, DW_AT_accessibility(DW_ACCESS_public)
DW$76	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$76, DW_AT_name("control"), DW_AT_symbol_name("_control")
	.dwattr DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$76, DW_AT_accessibility(DW_ACCESS_public)
DW$77	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$77, DW_AT_name("framstamp"), DW_AT_symbol_name("_framstamp")
	.dwattr DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$77, DW_AT_accessibility(DW_ACCESS_public)
DW$78	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$78, DW_AT_name("clockerr"), DW_AT_symbol_name("_clockerr")
	.dwattr DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$78, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40


DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$41, DW_AT_name("tag_livestruct")
	.dwattr DW$T$41, DW_AT_byte_size(0x03)
DW$79	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$79, DW_AT_name("yrmnth"), DW_AT_symbol_name("_yrmnth")
	.dwattr DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$79, DW_AT_accessibility(DW_ACCESS_public)
DW$80	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$80, DW_AT_name("datehrs"), DW_AT_symbol_name("_datehrs")
	.dwattr DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$80, DW_AT_accessibility(DW_ACCESS_public)
DW$81	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$81, DW_AT_name("minssecs"), DW_AT_symbol_name("_minssecs")
	.dwattr DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$81, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$41


DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$43, DW_AT_name("tag_motionstruct")
	.dwattr DW$T$43, DW_AT_byte_size(0x09)
DW$82	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$82, DW_AT_name("counter"), DW_AT_symbol_name("_counter")
	.dwattr DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$82, DW_AT_accessibility(DW_ACCESS_public)
DW$83	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$83, DW_AT_name("ready"), DW_AT_symbol_name("_ready")
	.dwattr DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$83, DW_AT_accessibility(DW_ACCESS_public)
DW$84	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$84, DW_AT_name("order"), DW_AT_symbol_name("_order")
	.dwattr DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$84, DW_AT_accessibility(DW_ACCESS_public)
DW$85	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$85, DW_AT_name("forwardasternflag"), DW_AT_symbol_name("_forwardasternflag")
	.dwattr DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$85, DW_AT_accessibility(DW_ACCESS_public)
DW$86	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$86, DW_AT_name("forwardasternflagprev"), DW_AT_symbol_name("_forwardasternflagprev")
	.dwattr DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$86, DW_AT_accessibility(DW_ACCESS_public)
DW$87	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$87, DW_AT_name("recalnow"), DW_AT_symbol_name("_recalnow")
	.dwattr DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$87, DW_AT_accessibility(DW_ACCESS_public)
DW$88	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$88, DW_AT_name("calerror"), DW_AT_symbol_name("_calerror")
	.dwattr DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$88, DW_AT_accessibility(DW_ACCESS_public)
DW$89	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$89, DW_AT_name("recheckdir"), DW_AT_symbol_name("_recheckdir")
	.dwattr DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$89, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$43


DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$46, DW_AT_name("tag_calibrationdatetimestruct")
	.dwattr DW$T$46, DW_AT_byte_size(0x07)
DW$90	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$44)
	.dwattr DW$90, DW_AT_name("calcomplete"), DW_AT_symbol_name("_calcomplete")
	.dwattr DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$90, DW_AT_accessibility(DW_ACCESS_public)
DW$91	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$91, DW_AT_name("verification"), DW_AT_symbol_name("_verification")
	.dwattr DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$91, DW_AT_accessibility(DW_ACCESS_public)
DW$92	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$92, DW_AT_name("chksum"), DW_AT_symbol_name("_chksum")
	.dwattr DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$92, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$46


DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$49, DW_AT_name("tag_allsensorstruct")
	.dwattr DW$T$49, DW_AT_byte_size(0x2d)
DW$93	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$93, DW_AT_name("numsensors"), DW_AT_symbol_name("_numsensors")
	.dwattr DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$93, DW_AT_accessibility(DW_ACCESS_public)
DW$94	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$94, DW_AT_name("numsensorsspu1"), DW_AT_symbol_name("_numsensorsspu1")
	.dwattr DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$94, DW_AT_accessibility(DW_ACCESS_public)
DW$95	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$95, DW_AT_name("numsensorsspu2"), DW_AT_symbol_name("_numsensorsspu2")
	.dwattr DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$95, DW_AT_accessibility(DW_ACCESS_public)
DW$96	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$96, DW_AT_name("nominalspeed"), DW_AT_symbol_name("_nominalspeed")
	.dwattr DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$96, DW_AT_accessibility(DW_ACCESS_public)
DW$97	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$97, DW_AT_name("rpmmin"), DW_AT_symbol_name("_rpmmin")
	.dwattr DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$97, DW_AT_accessibility(DW_ACCESS_public)
DW$98	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$98, DW_AT_name("rpmmax"), DW_AT_symbol_name("_rpmmax")
	.dwattr DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$98, DW_AT_accessibility(DW_ACCESS_public)
DW$99	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$99, DW_AT_name("reflash"), DW_AT_symbol_name("_reflash")
	.dwattr DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$99, DW_AT_accessibility(DW_ACCESS_public)
DW$100	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$100, DW_AT_name("sensorhysteresis"), DW_AT_symbol_name("_sensorhysteresis")
	.dwattr DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$100, DW_AT_accessibility(DW_ACCESS_public)
DW$101	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$101, DW_AT_name("cylinderhysteresis"), DW_AT_symbol_name("_cylinderhysteresis")
	.dwattr DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$101, DW_AT_accessibility(DW_ACCESS_public)
DW$102	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$102, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$102, DW_AT_accessibility(DW_ACCESS_public)
DW$103	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$103, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$103, DW_AT_accessibility(DW_ACCESS_public)
DW$104	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$104, DW_AT_name("slowdowndevcallevel"), DW_AT_symbol_name("_slowdowndevcallevel")
	.dwattr DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$104, DW_AT_accessibility(DW_ACCESS_public)
DW$105	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$105, DW_AT_name("alarmdevcallevel"), DW_AT_symbol_name("_alarmdevcallevel")
	.dwattr DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$105, DW_AT_accessibility(DW_ACCESS_public)
DW$106	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$106, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$106, DW_AT_accessibility(DW_ACCESS_public)
DW$107	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$107, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$107, DW_AT_accessibility(DW_ACCESS_public)
DW$108	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$108, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$108, DW_AT_accessibility(DW_ACCESS_public)
DW$109	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$109, DW_AT_name("flags"), DW_AT_symbol_name("_flags")
	.dwattr DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$109, DW_AT_accessibility(DW_ACCESS_public)
DW$110	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$110, DW_AT_name("slowdownack"), DW_AT_symbol_name("_slowdownack")
	.dwattr DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$110, DW_AT_accessibility(DW_ACCESS_public)
DW$111	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$111, DW_AT_name("alarmack"), DW_AT_symbol_name("_alarmack")
	.dwattr DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$111, DW_AT_accessibility(DW_ACCESS_public)
DW$112	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$112, DW_AT_name("maxmintimer"), DW_AT_symbol_name("_maxmintimer")
	.dwattr DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$112, DW_AT_accessibility(DW_ACCESS_public)
DW$113	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$113, DW_AT_name("enginedircal"), DW_AT_symbol_name("_enginedircal")
	.dwattr DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$113, DW_AT_accessibility(DW_ACCESS_public)
DW$114	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$114, DW_AT_name("dirorder"), DW_AT_symbol_name("_dirorder")
	.dwattr DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$114, DW_AT_accessibility(DW_ACCESS_public)
DW$115	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$115, DW_AT_name("prewarningtimer"), DW_AT_symbol_name("_prewarningtimer")
	.dwattr DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$115, DW_AT_accessibility(DW_ACCESS_public)
DW$116	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$116, DW_AT_name("prewarninglevel"), DW_AT_symbol_name("_prewarninglevel")
	.dwattr DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$116, DW_AT_accessibility(DW_ACCESS_public)
DW$117	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$117, DW_AT_name("rpmlimit"), DW_AT_symbol_name("_rpmlimit")
	.dwattr DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr DW$117, DW_AT_accessibility(DW_ACCESS_public)
DW$118	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$118, DW_AT_name("dsss"), DW_AT_symbol_name("_dsss")
	.dwattr DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$118, DW_AT_accessibility(DW_ACCESS_public)
DW$119	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$119, DW_AT_name("slowdowncallevel"), DW_AT_symbol_name("_slowdowncallevel")
	.dwattr DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$119, DW_AT_accessibility(DW_ACCESS_public)
DW$120	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$120, DW_AT_name("alarmcallevel"), DW_AT_symbol_name("_alarmcallevel")
	.dwattr DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$120, DW_AT_accessibility(DW_ACCESS_public)
DW$121	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$121, DW_AT_name("cylinderalarmcallevel"), DW_AT_symbol_name("_cylinderalarmcallevel")
	.dwattr DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$121, DW_AT_accessibility(DW_ACCESS_public)
DW$122	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$122, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$122, DW_AT_accessibility(DW_ACCESS_public)
DW$123	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$123, DW_AT_name("iBarredVibrationSpeedLow"), DW_AT_symbol_name("_iBarredVibrationSpeedLow")
	.dwattr DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$123, DW_AT_accessibility(DW_ACCESS_public)
DW$124	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$124, DW_AT_name("iBarredVibrationSpeedHigh"), DW_AT_symbol_name("_iBarredVibrationSpeedHigh")
	.dwattr DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$124, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$49


DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$56, DW_AT_name("tag_configstruct")
	.dwattr DW$T$56, DW_AT_byte_size(0x18)
DW$125	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$125, DW_AT_name("filter"), DW_AT_symbol_name("_filter")
	.dwattr DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$125, DW_AT_accessibility(DW_ACCESS_public)
DW$126	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$51)
	.dwattr DW$126, DW_AT_name("alarmenable"), DW_AT_symbol_name("_alarmenable")
	.dwattr DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$126, DW_AT_accessibility(DW_ACCESS_public)
DW$127	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$52)
	.dwattr DW$127, DW_AT_name("trendmax"), DW_AT_symbol_name("_trendmax")
	.dwattr DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$127, DW_AT_accessibility(DW_ACCESS_public)
DW$128	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$53)
	.dwattr DW$128, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$128, DW_AT_accessibility(DW_ACCESS_public)
DW$129	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$54)
	.dwattr DW$129, DW_AT_name("sdsettings"), DW_AT_symbol_name("_sdsettings")
	.dwattr DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$129, DW_AT_accessibility(DW_ACCESS_public)
DW$130	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$55)
	.dwattr DW$130, DW_AT_name("comms"), DW_AT_symbol_name("_comms")
	.dwattr DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$130, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$56

DW$T$78	.dwtag  DW_TAG_typedef, DW_AT_name("cylinderstruct"), DW_AT_type(*DW$T$59)
	.dwattr DW$T$78, DW_AT_language(DW_LANG_C)

DW$T$63	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$63, DW_AT_name("tag_loopcheckstruct")
	.dwattr DW$T$63, DW_AT_byte_size(0x10)
DW$131	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$60)
	.dwattr DW$131, DW_AT_name("min"), DW_AT_symbol_name("_min")
	.dwattr DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$131, DW_AT_accessibility(DW_ACCESS_public)
DW$132	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$61)
	.dwattr DW$132, DW_AT_name("max"), DW_AT_symbol_name("_max")
	.dwattr DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$132, DW_AT_accessibility(DW_ACCESS_public)
DW$133	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$62)
	.dwattr DW$133, DW_AT_name("last"), DW_AT_symbol_name("_last")
	.dwattr DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$133, DW_AT_accessibility(DW_ACCESS_public)
DW$134	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$134, DW_AT_name("value"), DW_AT_symbol_name("_value")
	.dwattr DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$134, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$63

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)

DW$T$42	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$42, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$42, DW_AT_byte_size(0x02)
DW$135	.dwtag  DW_TAG_subrange_type
	.dwattr DW$135, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$42


DW$T$19	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$19, DW_AT_byte_size(0x0e)
DW$136	.dwtag  DW_TAG_subrange_type
	.dwattr DW$136, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$19

DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)
DW$T$16	.dwtag  DW_TAG_base_type, DW_AT_name("float")
	.dwattr DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$16, DW_AT_byte_size(0x02)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("tag_timers")
	.dwattr DW$T$20, DW_AT_byte_size(0x4c)
DW$137	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$137, DW_AT_name("update"), DW_AT_symbol_name("_update")
	.dwattr DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$137, DW_AT_accessibility(DW_ACCESS_public)
DW$138	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$138, DW_AT_name("general"), DW_AT_symbol_name("_general")
	.dwattr DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$138, DW_AT_accessibility(DW_ACCESS_public)
DW$139	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$139, DW_AT_name("rxcharTimeout"), DW_AT_symbol_name("_rxcharTimeout")
	.dwattr DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$139, DW_AT_accessibility(DW_ACCESS_public)
DW$140	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$140, DW_AT_name("wiorxtimeout"), DW_AT_symbol_name("_wiorxtimeout")
	.dwattr DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$140, DW_AT_accessibility(DW_ACCESS_public)
DW$141	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$141, DW_AT_name("wiomasterrxtimeout"), DW_AT_symbol_name("_wiomasterrxtimeout")
	.dwattr DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$141, DW_AT_accessibility(DW_ACCESS_public)
DW$142	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$142, DW_AT_name("masterrxtimeout"), DW_AT_symbol_name("_masterrxtimeout")
	.dwattr DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$142, DW_AT_accessibility(DW_ACCESS_public)
DW$143	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$143, DW_AT_name("slaverxtimeout"), DW_AT_symbol_name("_slaverxtimeout")
	.dwattr DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$143, DW_AT_accessibility(DW_ACCESS_public)
DW$144	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$144, DW_AT_name("sectick"), DW_AT_symbol_name("_sectick")
	.dwattr DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$144, DW_AT_accessibility(DW_ACCESS_public)
DW$145	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$145, DW_AT_name("ledflash"), DW_AT_symbol_name("_ledflash")
	.dwattr DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$145, DW_AT_accessibility(DW_ACCESS_public)
DW$146	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$146, DW_AT_name("prtsettle"), DW_AT_symbol_name("_prtsettle")
	.dwattr DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$146, DW_AT_accessibility(DW_ACCESS_public)
DW$147	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$147, DW_AT_name("chantimeout"), DW_AT_symbol_name("_chantimeout")
	.dwattr DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$147, DW_AT_accessibility(DW_ACCESS_public)
DW$148	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$148, DW_AT_name("chanwait"), DW_AT_symbol_name("_chanwait")
	.dwattr DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$148, DW_AT_accessibility(DW_ACCESS_public)
DW$149	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$149, DW_AT_name("pcrxtimeout"), DW_AT_symbol_name("_pcrxtimeout")
	.dwattr DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$149, DW_AT_accessibility(DW_ACCESS_public)
DW$150	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$150, DW_AT_name("pctxtimeout"), DW_AT_symbol_name("_pctxtimeout")
	.dwattr DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$150, DW_AT_accessibility(DW_ACCESS_public)
DW$151	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$151, DW_AT_name("spistatus"), DW_AT_symbol_name("_spistatus")
	.dwattr DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$151, DW_AT_accessibility(DW_ACCESS_public)
DW$152	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$152, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$152, DW_AT_accessibility(DW_ACCESS_public)
DW$153	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$153, DW_AT_name("slaverqst"), DW_AT_symbol_name("_slaverqst")
	.dwattr DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$153, DW_AT_accessibility(DW_ACCESS_public)
DW$154	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$154, DW_AT_name("mastermodebutton"), DW_AT_symbol_name("_mastermodebutton")
	.dwattr DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$154, DW_AT_accessibility(DW_ACCESS_public)
DW$155	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$155, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$155, DW_AT_accessibility(DW_ACCESS_public)
DW$156	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$156, DW_AT_name("calibrate"), DW_AT_symbol_name("_calibrate")
	.dwattr DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$156, DW_AT_accessibility(DW_ACCESS_public)
DW$157	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$157, DW_AT_name("calibrate2"), DW_AT_symbol_name("_calibrate2")
	.dwattr DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$157, DW_AT_accessibility(DW_ACCESS_public)
DW$158	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$158, DW_AT_name("alarmreflash"), DW_AT_symbol_name("_alarmreflash")
	.dwattr DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$158, DW_AT_accessibility(DW_ACCESS_public)
DW$159	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$159, DW_AT_name("slowdownreflash"), DW_AT_symbol_name("_slowdownreflash")
	.dwattr DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr DW$159, DW_AT_accessibility(DW_ACCESS_public)
DW$160	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$160, DW_AT_name("wiorqst"), DW_AT_symbol_name("_wiorqst")
	.dwattr DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$160, DW_AT_accessibility(DW_ACCESS_public)
DW$161	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$161, DW_AT_name("rpmtimeout"), DW_AT_symbol_name("_rpmtimeout")
	.dwattr DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr DW$161, DW_AT_accessibility(DW_ACCESS_public)
DW$162	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$162, DW_AT_name("analogoor"), DW_AT_symbol_name("_analogoor")
	.dwattr DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$162, DW_AT_accessibility(DW_ACCESS_public)
DW$163	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$163, DW_AT_name("motioncal"), DW_AT_symbol_name("_motioncal")
	.dwattr DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr DW$163, DW_AT_accessibility(DW_ACCESS_public)
DW$164	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$164, DW_AT_name("framcheck"), DW_AT_symbol_name("_framcheck")
	.dwattr DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$164, DW_AT_accessibility(DW_ACCESS_public)
DW$165	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$165, DW_AT_name("pcmodbus"), DW_AT_symbol_name("_pcmodbus")
	.dwattr DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr DW$165, DW_AT_accessibility(DW_ACCESS_public)
DW$166	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$166, DW_AT_name("statusreflash"), DW_AT_symbol_name("_statusreflash")
	.dwattr DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$166, DW_AT_accessibility(DW_ACCESS_public)
DW$167	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$167, DW_AT_name("prewarn"), DW_AT_symbol_name("_prewarn")
	.dwattr DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$167, DW_AT_accessibility(DW_ACCESS_public)
DW$168	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$168, DW_AT_name("clocktofram"), DW_AT_symbol_name("_clocktofram")
	.dwattr DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr DW$168, DW_AT_accessibility(DW_ACCESS_public)
DW$169	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$169, DW_AT_name("debugrapidfast"), DW_AT_symbol_name("_debugrapidfast")
	.dwattr DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x3f]
	.dwattr DW$169, DW_AT_accessibility(DW_ACCESS_public)
DW$170	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$170, DW_AT_name("debugupdate"), DW_AT_symbol_name("_debugupdate")
	.dwattr DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$170, DW_AT_accessibility(DW_ACCESS_public)
DW$171	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$171, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr DW$171, DW_AT_accessibility(DW_ACCESS_public)
DW$172	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$172, DW_AT_name("startup"), DW_AT_symbol_name("_startup")
	.dwattr DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr DW$172, DW_AT_accessibility(DW_ACCESS_public)
DW$173	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$173, DW_AT_name("analogsettle"), DW_AT_symbol_name("_analogsettle")
	.dwattr DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr DW$173, DW_AT_accessibility(DW_ACCESS_public)
DW$174	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$174, DW_AT_name("reprogram"), DW_AT_symbol_name("_reprogram")
	.dwattr DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr DW$174, DW_AT_accessibility(DW_ACCESS_public)
DW$175	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$175, DW_AT_name("reprogramtimeout"), DW_AT_symbol_name("_reprogramtimeout")
	.dwattr DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr DW$175, DW_AT_accessibility(DW_ACCESS_public)
DW$176	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$176, DW_AT_name("dcmodestayalive"), DW_AT_symbol_name("_dcmodestayalive")
	.dwattr DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$176, DW_AT_accessibility(DW_ACCESS_public)
DW$177	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$177, DW_AT_name("biteventchange"), DW_AT_symbol_name("_biteventchange")
	.dwattr DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr DW$177, DW_AT_accessibility(DW_ACCESS_public)
DW$178	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$178, DW_AT_name("iSensorReplace"), DW_AT_symbol_name("_iSensorReplace")
	.dwattr DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr DW$178, DW_AT_accessibility(DW_ACCESS_public)
DW$179	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$179, DW_AT_name("deltarpm15Delay"), DW_AT_symbol_name("_deltarpm15Delay")
	.dwattr DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr DW$179, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$21, DW_AT_byte_size(0x02)
DW$180	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$180, DW_AT_name("enb"), DW_AT_symbol_name("_enb")
	.dwattr DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$180, DW_AT_accessibility(DW_ACCESS_public)
DW$181	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$181, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$181, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21


DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$23, DW_AT_byte_size(0x1e)
DW$182	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$182, DW_AT_name("chanlowthreshold"), DW_AT_symbol_name("_chanlowthreshold")
	.dwattr DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$182, DW_AT_accessibility(DW_ACCESS_public)
DW$183	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$183, DW_AT_name("chanhighthreshold"), DW_AT_symbol_name("_chanhighthreshold")
	.dwattr DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$183, DW_AT_accessibility(DW_ACCESS_public)
DW$184	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$184, DW_AT_name("chan18ma"), DW_AT_symbol_name("_chan18ma")
	.dwattr DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$184, DW_AT_accessibility(DW_ACCESS_public)
DW$185	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$185, DW_AT_name("notused"), DW_AT_symbol_name("_notused")
	.dwattr DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$185, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_byte_size(0x01)
DW$186	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$186, DW_AT_name("enabled"), DW_AT_symbol_name("_enabled")
	.dwattr DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$186, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$27, DW_AT_byte_size(0x0b)
DW$187	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$187, DW_AT_name("calprtzero"), DW_AT_symbol_name("_calprtzero")
	.dwattr DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$187, DW_AT_accessibility(DW_ACCESS_public)
DW$188	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$188, DW_AT_name("calprtfullscale"), DW_AT_symbol_name("_calprtfullscale")
	.dwattr DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$188, DW_AT_accessibility(DW_ACCESS_public)
DW$189	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$189, DW_AT_name("sensorscalingfactor"), DW_AT_symbol_name("_sensorscalingfactor")
	.dwattr DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$189, DW_AT_accessibility(DW_ACCESS_public)
DW$190	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$190, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$190, DW_AT_accessibility(DW_ACCESS_public)
DW$191	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$191, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$191, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_byte_size(0x03)
DW$192	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$192, DW_AT_name("mainrate"), DW_AT_symbol_name("_mainrate")
	.dwattr DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$192, DW_AT_accessibility(DW_ACCESS_public)
DW$193	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$193, DW_AT_name("trendrate"), DW_AT_symbol_name("_trendrate")
	.dwattr DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$193, DW_AT_accessibility(DW_ACCESS_public)
DW$194	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$194, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$194, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$29, DW_AT_byte_size(0x01)
DW$195	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$195, DW_AT_name("address"), DW_AT_symbol_name("_address")
	.dwattr DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$195, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$29


DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$30, DW_AT_byte_size(0x02)
DW$196	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$196, DW_AT_name("inputtap"), DW_AT_symbol_name("_inputtap")
	.dwattr DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$196, DW_AT_accessibility(DW_ACCESS_public)
DW$197	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$197, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$197, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30


DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$31, DW_AT_byte_size(0x03)
DW$198	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$198, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$198, DW_AT_accessibility(DW_ACCESS_public)
DW$199	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$199, DW_AT_name("notused2"), DW_AT_symbol_name("_notused2")
	.dwattr DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$199, DW_AT_accessibility(DW_ACCESS_public)
DW$200	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$200, DW_AT_name("notused3"), DW_AT_symbol_name("_notused3")
	.dwattr DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$200, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_byte_size(0x01)
DW$201	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$201, DW_AT_name("rate"), DW_AT_symbol_name("_rate")
	.dwattr DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$201, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$33, DW_AT_byte_size(0x02)
DW$202	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$202, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$202, DW_AT_accessibility(DW_ACCESS_public)
DW$203	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$203, DW_AT_name("notused2"), DW_AT_symbol_name("_notused2")
	.dwattr DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$203, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$34, DW_AT_byte_size(0x04)
DW$204	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$204, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$204, DW_AT_accessibility(DW_ACCESS_public)
DW$205	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$205, DW_AT_name("notused2"), DW_AT_symbol_name("_notused2")
	.dwattr DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$205, DW_AT_accessibility(DW_ACCESS_public)
DW$206	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$206, DW_AT_name("notused3"), DW_AT_symbol_name("_notused3")
	.dwattr DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$206, DW_AT_accessibility(DW_ACCESS_public)
DW$207	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$207, DW_AT_name("notused4"), DW_AT_symbol_name("_notused4")
	.dwattr DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$207, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34


DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$35, DW_AT_byte_size(0x01)
DW$208	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$208, DW_AT_name("bitmap"), DW_AT_symbol_name("_bitmap")
	.dwattr DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$208, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35


DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$36, DW_AT_byte_size(0x01)
DW$209	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$209, DW_AT_name("graphvalue"), DW_AT_symbol_name("_graphvalue")
	.dwattr DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$209, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$36


DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$37, DW_AT_byte_size(0x01)
DW$210	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$210, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$210, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$37


DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$44, DW_AT_byte_size(0x03)
DW$211	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$211, DW_AT_name("yrmnth"), DW_AT_symbol_name("_yrmnth")
	.dwattr DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$211, DW_AT_accessibility(DW_ACCESS_public)
DW$212	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$212, DW_AT_name("datehrs"), DW_AT_symbol_name("_datehrs")
	.dwattr DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$212, DW_AT_accessibility(DW_ACCESS_public)
DW$213	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$213, DW_AT_name("minssecs"), DW_AT_symbol_name("_minssecs")
	.dwattr DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$213, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$44


DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$45, DW_AT_byte_size(0x03)
DW$214	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$214, DW_AT_name("yrmnth"), DW_AT_symbol_name("_yrmnth")
	.dwattr DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$214, DW_AT_accessibility(DW_ACCESS_public)
DW$215	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$215, DW_AT_name("datehrs"), DW_AT_symbol_name("_datehrs")
	.dwattr DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$215, DW_AT_accessibility(DW_ACCESS_public)
DW$216	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$216, DW_AT_name("minssecs"), DW_AT_symbol_name("_minssecs")
	.dwattr DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$216, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$45


DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$47, DW_AT_byte_size(0x01)
DW$217	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$217, DW_AT_name("newval"), DW_AT_symbol_name("_newval")
	.dwattr DW$217, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$217, DW_AT_accessibility(DW_ACCESS_public)
DW$218	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$218, DW_AT_name("calmode"), DW_AT_symbol_name("_calmode")
	.dwattr DW$218, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$218, DW_AT_accessibility(DW_ACCESS_public)
DW$219	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$219, DW_AT_name("startcal"), DW_AT_symbol_name("_startcal")
	.dwattr DW$219, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$219, DW_AT_accessibility(DW_ACCESS_public)
DW$220	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$220, DW_AT_name("newvalspu2"), DW_AT_symbol_name("_newvalspu2")
	.dwattr DW$220, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$220, DW_AT_accessibility(DW_ACCESS_public)
DW$221	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$221, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$221, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$221, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$47


DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$48, DW_AT_byte_size(0x01)
DW$222	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$222, DW_AT_name("slowdowncntrl"), DW_AT_symbol_name("_slowdowncntrl")
	.dwattr DW$222, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$222, DW_AT_accessibility(DW_ACCESS_public)
DW$223	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$223, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$223, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0f)
	.dwattr DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$223, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$48


DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$50, DW_AT_byte_size(0x01)
DW$224	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$224, DW_AT_name("inputtap"), DW_AT_symbol_name("_inputtap")
	.dwattr DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$224, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$50


DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$51, DW_AT_byte_size(0x01)
DW$225	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$225, DW_AT_name("bitmap"), DW_AT_symbol_name("_bitmap")
	.dwattr DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$225, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$51


DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$52, DW_AT_byte_size(0x01)
DW$226	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$226, DW_AT_name("graphvalue"), DW_AT_symbol_name("_graphvalue")
	.dwattr DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$226, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$52


DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$53, DW_AT_byte_size(0x03)
DW$227	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$227, DW_AT_name("chanlowthreshold"), DW_AT_symbol_name("_chanlowthreshold")
	.dwattr DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$227, DW_AT_accessibility(DW_ACCESS_public)
DW$228	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$228, DW_AT_name("chanhighthreshold"), DW_AT_symbol_name("_chanhighthreshold")
	.dwattr DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$228, DW_AT_accessibility(DW_ACCESS_public)
DW$229	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$229, DW_AT_name("sensorscalingfactor"), DW_AT_symbol_name("_sensorscalingfactor")
	.dwattr DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$229, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$53


DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$54, DW_AT_byte_size(0x02)
DW$230	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$230, DW_AT_name("shortlrate"), DW_AT_symbol_name("_shortlrate")
	.dwattr DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$230, DW_AT_accessibility(DW_ACCESS_public)
DW$231	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$231, DW_AT_name("longlrate"), DW_AT_symbol_name("_longlrate")
	.dwattr DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$231, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$54


DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$55, DW_AT_byte_size(0x10)
DW$232	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$232, DW_AT_name("wiorequest"), DW_AT_symbol_name("_wiorequest")
	.dwattr DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$232, DW_AT_accessibility(DW_ACCESS_public)
DW$233	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$233, DW_AT_name("wiocancelled"), DW_AT_symbol_name("_wiocancelled")
	.dwattr DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$233, DW_AT_accessibility(DW_ACCESS_public)
DW$234	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$234, DW_AT_name("wioreceived"), DW_AT_symbol_name("_wioreceived")
	.dwattr DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$234, DW_AT_accessibility(DW_ACCESS_public)
DW$235	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$235, DW_AT_name("slaverequest"), DW_AT_symbol_name("_slaverequest")
	.dwattr DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$235, DW_AT_accessibility(DW_ACCESS_public)
DW$236	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$236, DW_AT_name("slavereceived"), DW_AT_symbol_name("_slavereceived")
	.dwattr DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$236, DW_AT_accessibility(DW_ACCESS_public)
DW$237	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$237, DW_AT_name("slaveretry"), DW_AT_symbol_name("_slaveretry")
	.dwattr DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$237, DW_AT_accessibility(DW_ACCESS_public)
DW$238	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$238, DW_AT_name("pcrequest"), DW_AT_symbol_name("_pcrequest")
	.dwattr DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$238, DW_AT_accessibility(DW_ACCESS_public)
DW$239	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$239, DW_AT_name("pcreqtimeout"), DW_AT_symbol_name("_pcreqtimeout")
	.dwattr DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$239, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$55


DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$59, DW_AT_name("tag_cylinderstruct")
	.dwattr DW$T$59, DW_AT_byte_size(0x04)
DW$240	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$57)
	.dwattr DW$240, DW_AT_name("status1"), DW_AT_symbol_name("_status1")
	.dwattr DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$240, DW_AT_accessibility(DW_ACCESS_public)
DW$241	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$58)
	.dwattr DW$241, DW_AT_name("status2"), DW_AT_symbol_name("_status2")
	.dwattr DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$241, DW_AT_accessibility(DW_ACCESS_public)
DW$242	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$242, DW_AT_name("average"), DW_AT_symbol_name("_average")
	.dwattr DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$242, DW_AT_accessibility(DW_ACCESS_public)
DW$243	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$243, DW_AT_name("deviation"), DW_AT_symbol_name("_deviation")
	.dwattr DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$243, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$59


DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$60, DW_AT_byte_size(0x06)
DW$244	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$244, DW_AT_name("hours"), DW_AT_symbol_name("_hours")
	.dwattr DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$244, DW_AT_accessibility(DW_ACCESS_public)
DW$245	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$245, DW_AT_name("minutes"), DW_AT_symbol_name("_minutes")
	.dwattr DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$245, DW_AT_accessibility(DW_ACCESS_public)
DW$246	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$246, DW_AT_name("seconds"), DW_AT_symbol_name("_seconds")
	.dwattr DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$246, DW_AT_accessibility(DW_ACCESS_public)
DW$247	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$247, DW_AT_name("value"), DW_AT_symbol_name("_value")
	.dwattr DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$247, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$60


DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$61, DW_AT_byte_size(0x06)
DW$248	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$248, DW_AT_name("hours"), DW_AT_symbol_name("_hours")
	.dwattr DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$248, DW_AT_accessibility(DW_ACCESS_public)
DW$249	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$249, DW_AT_name("minutes"), DW_AT_symbol_name("_minutes")
	.dwattr DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$249, DW_AT_accessibility(DW_ACCESS_public)
DW$250	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$250, DW_AT_name("seconds"), DW_AT_symbol_name("_seconds")
	.dwattr DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$250, DW_AT_accessibility(DW_ACCESS_public)
DW$251	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$251, DW_AT_name("value"), DW_AT_symbol_name("_value")
	.dwattr DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$251, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$61


DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$62, DW_AT_byte_size(0x02)
DW$252	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$252, DW_AT_name("value"), DW_AT_symbol_name("_value")
	.dwattr DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$252, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$62


DW$T$26	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$26, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$26, DW_AT_byte_size(0x04)
DW$253	.dwtag  DW_TAG_subrange_type
	.dwattr DW$253, DW_AT_upper_bound(0x03)
	.dwendtag DW$T$26


DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$57, DW_AT_byte_size(0x01)
DW$254	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$254, DW_AT_name("alarmack"), DW_AT_symbol_name("_alarmack")
	.dwattr DW$254, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$254, DW_AT_accessibility(DW_ACCESS_public)
DW$255	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$255, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$255, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$255, DW_AT_accessibility(DW_ACCESS_public)
DW$256	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$256, DW_AT_name("unused3"), DW_AT_symbol_name("_unused3")
	.dwattr DW$256, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$256, DW_AT_accessibility(DW_ACCESS_public)
DW$257	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$257, DW_AT_name("unused4"), DW_AT_symbol_name("_unused4")
	.dwattr DW$257, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$257, DW_AT_accessibility(DW_ACCESS_public)
DW$258	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$258, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$258, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$258, DW_AT_accessibility(DW_ACCESS_public)
DW$259	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$259, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$259, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$259, DW_AT_accessibility(DW_ACCESS_public)
DW$260	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$260, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$260, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$260, DW_AT_accessibility(DW_ACCESS_public)
DW$261	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$261, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$261, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$261, DW_AT_accessibility(DW_ACCESS_public)
DW$262	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$262, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$262, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$262, DW_AT_accessibility(DW_ACCESS_public)
DW$263	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$263, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$263, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$263, DW_AT_accessibility(DW_ACCESS_public)
DW$264	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$264, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$264, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$264, DW_AT_accessibility(DW_ACCESS_public)
DW$265	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$265, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$265, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$265, DW_AT_accessibility(DW_ACCESS_public)
DW$266	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$266, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$266, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$266, DW_AT_accessibility(DW_ACCESS_public)
DW$267	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$267, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$267, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$267, DW_AT_accessibility(DW_ACCESS_public)
DW$268	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$268, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$268, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$268, DW_AT_accessibility(DW_ACCESS_public)
DW$269	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$269, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$269, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$269, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$57


DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$58, DW_AT_byte_size(0x01)
DW$270	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$270, DW_AT_name("alarm"), DW_AT_symbol_name("_alarm")
	.dwattr DW$270, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$270, DW_AT_accessibility(DW_ACCESS_public)
DW$271	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$271, DW_AT_name("alarmlatched"), DW_AT_symbol_name("_alarmlatched")
	.dwattr DW$271, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$271, DW_AT_accessibility(DW_ACCESS_public)
DW$272	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$272, DW_AT_name("unused3"), DW_AT_symbol_name("_unused3")
	.dwattr DW$272, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$272, DW_AT_accessibility(DW_ACCESS_public)
DW$273	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$273, DW_AT_name("unused4"), DW_AT_symbol_name("_unused4")
	.dwattr DW$273, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$273, DW_AT_accessibility(DW_ACCESS_public)
DW$274	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$274, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$274, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$274, DW_AT_accessibility(DW_ACCESS_public)
DW$275	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$275, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$275, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$275, DW_AT_accessibility(DW_ACCESS_public)
DW$276	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$276, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$276, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$276, DW_AT_accessibility(DW_ACCESS_public)
DW$277	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$277, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$277, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$277, DW_AT_accessibility(DW_ACCESS_public)
DW$278	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$278, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$278, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$278, DW_AT_accessibility(DW_ACCESS_public)
DW$279	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$279, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$279, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$279, DW_AT_accessibility(DW_ACCESS_public)
DW$280	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$280, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$280, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$280, DW_AT_accessibility(DW_ACCESS_public)
DW$281	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$281, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$281, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$281, DW_AT_accessibility(DW_ACCESS_public)
DW$282	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$282, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$282, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$282, DW_AT_accessibility(DW_ACCESS_public)
DW$283	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$283, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$283, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$283, DW_AT_accessibility(DW_ACCESS_public)
DW$284	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$284, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$284, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$284, DW_AT_accessibility(DW_ACCESS_public)
DW$285	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$285, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$285, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$285, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$58



;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$286	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$286, DW_AT_location[DW_OP_reg0]
DW$287	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$287, DW_AT_location[DW_OP_reg1]
DW$288	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$288, DW_AT_location[DW_OP_reg2]
DW$289	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$289, DW_AT_location[DW_OP_reg3]
DW$290	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$290, DW_AT_location[DW_OP_reg4]
DW$291	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$291, DW_AT_location[DW_OP_reg5]
DW$292	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$292, DW_AT_location[DW_OP_reg6]
DW$293	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$293, DW_AT_location[DW_OP_reg7]
DW$294	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$294, DW_AT_location[DW_OP_reg8]
DW$295	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$295, DW_AT_location[DW_OP_reg9]
DW$296	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$296, DW_AT_location[DW_OP_reg10]
DW$297	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$297, DW_AT_location[DW_OP_reg11]
DW$298	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$298, DW_AT_location[DW_OP_reg12]
DW$299	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$299, DW_AT_location[DW_OP_reg13]
DW$300	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$300, DW_AT_location[DW_OP_reg14]
DW$301	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$301, DW_AT_location[DW_OP_reg15]
DW$302	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$302, DW_AT_location[DW_OP_reg16]
DW$303	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$303, DW_AT_location[DW_OP_reg17]
DW$304	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$304, DW_AT_location[DW_OP_reg18]
DW$305	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$305, DW_AT_location[DW_OP_reg19]
DW$306	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$306, DW_AT_location[DW_OP_reg20]
DW$307	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$307, DW_AT_location[DW_OP_reg21]
DW$308	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$308, DW_AT_location[DW_OP_reg22]
DW$309	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$309, DW_AT_location[DW_OP_reg23]
DW$310	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$310, DW_AT_location[DW_OP_reg24]
DW$311	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$311, DW_AT_location[DW_OP_reg25]
DW$312	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$312, DW_AT_location[DW_OP_reg26]
DW$313	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$313, DW_AT_location[DW_OP_reg27]
DW$314	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$314, DW_AT_location[DW_OP_reg28]
DW$315	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$315, DW_AT_location[DW_OP_reg29]
DW$316	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$316, DW_AT_location[DW_OP_reg30]
DW$317	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$317, DW_AT_location[DW_OP_reg31]
DW$318	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$318, DW_AT_location[DW_OP_regx 0x20]
DW$319	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$319, DW_AT_location[DW_OP_regx 0x21]
DW$320	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$320, DW_AT_location[DW_OP_regx 0x22]
DW$321	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$321, DW_AT_location[DW_OP_regx 0x23]
DW$322	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$322, DW_AT_location[DW_OP_regx 0x24]
DW$323	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$323, DW_AT_location[DW_OP_regx 0x25]
DW$324	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$324, DW_AT_location[DW_OP_regx 0x26]
DW$325	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$325, DW_AT_location[DW_OP_regx 0x27]
DW$326	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$326, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

