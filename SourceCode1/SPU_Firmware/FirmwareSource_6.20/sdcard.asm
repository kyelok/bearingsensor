;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Thu Aug 18 12:16:29 2016                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("sdcard.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)
;**************************************************************
;* CINIT RECORDS                                              *
;**************************************************************
	.sect	".cinit"
	.align	1
	.field  	-IR_1,16
	.field  	_pMsgList+0,32
	.field  	_sensor_failure,32		; _pMsgList[0] @ 0
	.field  	_sensor_slowdown,32		; _pMsgList[1] @ 32
	.field  	_sensor_alarm,32		; _pMsgList[2] @ 64
	.field  	_devsensor_slowdown,32		; _pMsgList[3] @ 96
	.field  	_devsensor_alarm,32		; _pMsgList[4] @ 128
	.field  	_cylinderdev_alarm,32		; _pMsgList[5] @ 160
	.field  	_full_auto_calibration,32		; _pMsgList[6] @ 192
	.field  	_sensor_calibration,32		; _pMsgList[7] @ 224
	.field  	_loss_of_comms_spu2,32		; _pMsgList[8] @ 256
	.field  	_look_up_average_error,32		; _pMsgList[9] @ 288
	.field  	_sdcardfail,32		; _pMsgList[10] @ 320
	.field  	_wio_upperalarm,32		; _pMsgList[11] @ 352
	.field  	_wio_alarm,32		; _pMsgList[12] @ 384
	.field  	_cal_abort,32		; _pMsgList[13] @ 416
	.field  	_wio_comms,32		; _pMsgList[14] @ 448
	.field  	_paramchange,32		; _pMsgList[15] @ 480
	.field  	_framfault1,32		; _pMsgList[16] @ 512
	.field  	_framfault2,32		; _pMsgList[17] @ 544
	.field  	_pccommsfault,32		; _pMsgList[18] @ 576
	.field  	_firmwarechange,32		; _pMsgList[19] @ 608
	.field  	_calstage,32		; _pMsgList[20] @ 640
	.field  	_poweron,32		; _pMsgList[21] @ 672
	.field  	_sensor_prewarn,32		; _pMsgList[22] @ 704
	.field  	_offset_adjust,32		; _pMsgList[23] @ 736
	.field  	_prewarn_initiated,32		; _pMsgList[24] @ 768
	.field  	_rtc_fault,32		; _pMsgList[25] @ 800
	.field  	_event_normal,32		; _pMsgList[26] @ 832
	.field  	_direction_cal,32		; _pMsgList[27] @ 864
	.field  	_sensor_replacement,32		; _pMsgList[28] @ 896
	.field  	_replacement_cancelled,32		; _pMsgList[29] @ 928
	.field  	_replace_50hrcomplete,32		; _pMsgList[30] @ 960
	.field  	_replace_500hrcomplete,32		; _pMsgList[31] @ 992
	.field  	_sensorstatus,32		; _pMsgList[32] @ 1024
	.field  	_digouttest,32		; _pMsgList[33] @ 1056
	.field  	_damsingle,32		; _pMsgList[34] @ 1088
	.field  	_damcyl,32		; _pMsgList[35] @ 1120
	.field  	_dammbsum,32		; _pMsgList[36] @ 1152
	.field  	_slemOOR,32		; _pMsgList[37] @ 1184
	.field  	_rtcbattery,32		; _pMsgList[38] @ 1216
	.field  	_slemalarm,32		; _pMsgList[39] @ 1248
	.field  	_eventlogcleared,32		; _pMsgList[40] @ 1280
IR_1:	.set	82


DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("sprintf"), DW_AT_symbol_name("_sprintf")
	.dwattr DW$1, DW_AT_type(*DW$T$10)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$135)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
DW$4	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$1


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("sscanf"), DW_AT_symbol_name("_sscanf")
	.dwattr DW$5, DW_AT_type(*DW$T$10)
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
DW$8	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$5


DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("strlen"), DW_AT_symbol_name("_strlen")
	.dwattr DW$9, DW_AT_type(*DW$T$128)
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
	.dwendtag DW$9


DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("strcpy"), DW_AT_symbol_name("_strcpy")
	.dwattr DW$11, DW_AT_type(*DW$T$135)
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)
DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$135)
DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
	.dwendtag DW$11


DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("strncpy"), DW_AT_symbol_name("_strncpy")
	.dwattr DW$14, DW_AT_type(*DW$T$135)
	.dwattr DW$14, DW_AT_declaration(0x01)
	.dwattr DW$14, DW_AT_external(0x01)
DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$135)
DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$128)
	.dwendtag DW$14


DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("strcat"), DW_AT_symbol_name("_strcat")
	.dwattr DW$18, DW_AT_type(*DW$T$135)
	.dwattr DW$18, DW_AT_declaration(0x01)
	.dwattr DW$18, DW_AT_external(0x01)
DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$135)
DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
	.dwendtag DW$18


DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("strcmp"), DW_AT_symbol_name("_strcmp")
	.dwattr DW$21, DW_AT_type(*DW$T$10)
	.dwattr DW$21, DW_AT_declaration(0x01)
	.dwattr DW$21, DW_AT_external(0x01)
DW$22	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
	.dwendtag DW$21


DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("memset"), DW_AT_symbol_name("_memset")
	.dwattr DW$24, DW_AT_type(*DW$T$3)
	.dwattr DW$24, DW_AT_declaration(0x01)
	.dwattr DW$24, DW_AT_external(0x01)
DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$128)
	.dwendtag DW$24


DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_initvolume"), DW_AT_symbol_name("_fm_initvolume")
	.dwattr DW$28, DW_AT_type(*DW$T$10)
	.dwattr DW$28, DW_AT_declaration(0x01)
	.dwattr DW$28, DW_AT_external(0x01)
DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$168)
DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$28


DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_delvolume"), DW_AT_symbol_name("_fm_delvolume")
	.dwattr DW$32, DW_AT_type(*DW$T$10)
	.dwattr DW$32, DW_AT_declaration(0x01)
	.dwattr DW$32, DW_AT_external(0x01)
DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$32


DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_format"), DW_AT_symbol_name("_fm_format")
	.dwattr DW$34, DW_AT_type(*DW$T$10)
	.dwattr DW$34, DW_AT_declaration(0x01)
	.dwattr DW$34, DW_AT_external(0x01)
DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$34


DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_getcwd"), DW_AT_symbol_name("_fm_getcwd")
	.dwattr DW$37, DW_AT_type(*DW$T$10)
	.dwattr DW$37, DW_AT_declaration(0x01)
	.dwattr DW$37, DW_AT_external(0x01)
DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$135)
DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$37


DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_chdir"), DW_AT_symbol_name("_fm_chdir")
	.dwattr DW$40, DW_AT_type(*DW$T$10)
	.dwattr DW$40, DW_AT_declaration(0x01)
	.dwattr DW$40, DW_AT_external(0x01)
DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
	.dwendtag DW$40


DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_mkdir"), DW_AT_symbol_name("_fm_mkdir")
	.dwattr DW$42, DW_AT_type(*DW$T$10)
	.dwattr DW$42, DW_AT_declaration(0x01)
	.dwattr DW$42, DW_AT_external(0x01)
DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
	.dwendtag DW$42


DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_findfirst"), DW_AT_symbol_name("_fm_findfirst")
	.dwattr DW$44, DW_AT_type(*DW$T$10)
	.dwattr DW$44, DW_AT_declaration(0x01)
	.dwattr DW$44, DW_AT_external(0x01)
DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$180)
	.dwendtag DW$44


DW$47	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_findnext"), DW_AT_symbol_name("_fm_findnext")
	.dwattr DW$47, DW_AT_type(*DW$T$10)
	.dwattr DW$47, DW_AT_declaration(0x01)
	.dwattr DW$47, DW_AT_external(0x01)
DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$180)
	.dwendtag DW$47


DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_rename"), DW_AT_symbol_name("_fm_rename")
	.dwattr DW$49, DW_AT_type(*DW$T$10)
	.dwattr DW$49, DW_AT_declaration(0x01)
	.dwattr DW$49, DW_AT_external(0x01)
DW$50	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
	.dwendtag DW$49


DW$52	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_filelength"), DW_AT_symbol_name("_fm_filelength")
	.dwattr DW$52, DW_AT_type(*DW$T$12)
	.dwattr DW$52, DW_AT_declaration(0x01)
	.dwattr DW$52, DW_AT_external(0x01)
DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
	.dwendtag DW$52


DW$54	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_close"), DW_AT_symbol_name("_fm_close")
	.dwattr DW$54, DW_AT_type(*DW$T$10)
	.dwattr DW$54, DW_AT_declaration(0x01)
	.dwattr DW$54, DW_AT_external(0x01)
DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
	.dwendtag DW$54


DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_open"), DW_AT_symbol_name("_fm_open")
	.dwattr DW$56, DW_AT_type(*DW$T$107)
	.dwattr DW$56, DW_AT_declaration(0x01)
	.dwattr DW$56, DW_AT_external(0x01)
DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
	.dwendtag DW$56


DW$59	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_read"), DW_AT_symbol_name("_fm_read")
	.dwattr DW$59, DW_AT_type(*DW$T$12)
	.dwattr DW$59, DW_AT_declaration(0x01)
	.dwattr DW$59, DW_AT_external(0x01)
DW$60	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$63	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
	.dwendtag DW$59


DW$64	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_write"), DW_AT_symbol_name("_fm_write")
	.dwattr DW$64, DW_AT_type(*DW$T$12)
	.dwattr DW$64, DW_AT_declaration(0x01)
	.dwattr DW$64, DW_AT_external(0x01)
DW$65	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$132)
DW$66	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$67	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$68	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
	.dwendtag DW$64


DW$69	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_seek"), DW_AT_symbol_name("_fm_seek")
	.dwattr DW$69, DW_AT_type(*DW$T$10)
	.dwattr DW$69, DW_AT_declaration(0x01)
	.dwattr DW$69, DW_AT_external(0x01)
DW$70	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$69


DW$73	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_delete"), DW_AT_symbol_name("_fm_delete")
	.dwattr DW$73, DW_AT_type(*DW$T$10)
	.dwattr DW$73, DW_AT_declaration(0x01)
	.dwattr DW$73, DW_AT_external(0x01)
DW$74	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
	.dwendtag DW$73


DW$75	.dwtag  DW_TAG_subprogram, DW_AT_name("SetupDefaultSettings"), DW_AT_symbol_name("_SetupDefaultSettings")
	.dwattr DW$75, DW_AT_declaration(0x01)
	.dwattr DW$75, DW_AT_external(0x01)

DW$76	.dwtag  DW_TAG_subprogram, DW_AT_name("SetupSensorStatusDefaults"), DW_AT_symbol_name("_SetupSensorStatusDefaults")
	.dwattr DW$76, DW_AT_declaration(0x01)
	.dwattr DW$76, DW_AT_external(0x01)

DW$77	.dwtag  DW_TAG_subprogram, DW_AT_name("SetupOffsetDefaults"), DW_AT_symbol_name("_SetupOffsetDefaults")
	.dwattr DW$77, DW_AT_declaration(0x01)
	.dwattr DW$77, DW_AT_external(0x01)

DW$78	.dwtag  DW_TAG_subprogram, DW_AT_name("DebugStringOut"), DW_AT_symbol_name("_DebugStringOut")
	.dwattr DW$78, DW_AT_declaration(0x01)
	.dwattr DW$78, DW_AT_external(0x01)
DW$79	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$135)
	.dwendtag DW$78


DW$80	.dwtag  DW_TAG_subprogram, DW_AT_name("CLITransmitBuffer"), DW_AT_symbol_name("_CLITransmitBuffer")
	.dwattr DW$80, DW_AT_declaration(0x01)
	.dwattr DW$80, DW_AT_external(0x01)
DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$135)
	.dwendtag DW$80


DW$82	.dwtag  DW_TAG_subprogram, DW_AT_name("mmc_initfunc"), DW_AT_symbol_name("_mmc_initfunc")
	.dwattr DW$82, DW_AT_type(*DW$T$10)
	.dwattr DW$82, DW_AT_declaration(0x01)
	.dwattr DW$82, DW_AT_external(0x01)
DW$83	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$165)
DW$84	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$82


DW$85	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearMANTable"), DW_AT_symbol_name("_ClearMANTable")
	.dwattr DW$85, DW_AT_declaration(0x01)
	.dwattr DW$85, DW_AT_external(0x01)
DW$86	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$85


DW$87	.dwtag  DW_TAG_subprogram, DW_AT_name("GetCheckedRPM"), DW_AT_symbol_name("_GetCheckedRPM")
	.dwattr DW$87, DW_AT_type(*DW$T$11)
	.dwattr DW$87, DW_AT_declaration(0x01)
	.dwattr DW$87, DW_AT_external(0x01)
DW$88	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$87


DW$89	.dwtag  DW_TAG_subprogram, DW_AT_name("GetModalRPM"), DW_AT_symbol_name("_GetModalRPM")
	.dwattr DW$89, DW_AT_type(*DW$T$11)
	.dwattr DW$89, DW_AT_declaration(0x01)
	.dwattr DW$89, DW_AT_external(0x01)
DW$90	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$89


DW$91	.dwtag  DW_TAG_subprogram, DW_AT_name("GetScaledValue"), DW_AT_symbol_name("_GetScaledValue")
	.dwattr DW$91, DW_AT_type(*DW$T$10)
	.dwattr DW$91, DW_AT_declaration(0x01)
	.dwattr DW$91, DW_AT_external(0x01)
DW$92	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$91


DW$93	.dwtag  DW_TAG_subprogram, DW_AT_name("GetEndResultValue"), DW_AT_symbol_name("_GetEndResultValue")
	.dwattr DW$93, DW_AT_type(*DW$T$10)
	.dwattr DW$93, DW_AT_declaration(0x01)
	.dwattr DW$93, DW_AT_external(0x01)
DW$94	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$93


DW$95	.dwtag  DW_TAG_subprogram, DW_AT_name("GetSensorDeviationValue"), DW_AT_symbol_name("_GetSensorDeviationValue")
	.dwattr DW$95, DW_AT_type(*DW$T$10)
	.dwattr DW$95, DW_AT_declaration(0x01)
	.dwattr DW$95, DW_AT_external(0x01)
DW$96	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$95


DW$97	.dwtag  DW_TAG_subprogram, DW_AT_name("GetCylinderAverageValue"), DW_AT_symbol_name("_GetCylinderAverageValue")
	.dwattr DW$97, DW_AT_type(*DW$T$10)
	.dwattr DW$97, DW_AT_declaration(0x01)
	.dwattr DW$97, DW_AT_external(0x01)
DW$98	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$97


DW$99	.dwtag  DW_TAG_subprogram, DW_AT_name("GetCylinderDeviationValue"), DW_AT_symbol_name("_GetCylinderDeviationValue")
	.dwattr DW$99, DW_AT_type(*DW$T$10)
	.dwattr DW$99, DW_AT_declaration(0x01)
	.dwattr DW$99, DW_AT_external(0x01)
DW$100	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$99


DW$101	.dwtag  DW_TAG_subprogram, DW_AT_name("Status1Flags"), DW_AT_symbol_name("_Status1Flags")
	.dwattr DW$101, DW_AT_type(*DW$T$319)
	.dwattr DW$101, DW_AT_declaration(0x01)
	.dwattr DW$101, DW_AT_external(0x01)
DW$102	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$101


DW$103	.dwtag  DW_TAG_subprogram, DW_AT_name("WIOTemperatureWord"), DW_AT_symbol_name("_WIOTemperatureWord")
	.dwattr DW$103, DW_AT_type(*DW$T$10)
	.dwattr DW$103, DW_AT_declaration(0x01)
	.dwattr DW$103, DW_AT_external(0x01)

DW$104	.dwtag  DW_TAG_subprogram, DW_AT_name("WIOActivityWord"), DW_AT_symbol_name("_WIOActivityWord")
	.dwattr DW$104, DW_AT_type(*DW$T$10)
	.dwattr DW$104, DW_AT_declaration(0x01)
	.dwattr DW$104, DW_AT_external(0x01)

DW$105	.dwtag  DW_TAG_subprogram, DW_AT_name("WIOPPMWord"), DW_AT_symbol_name("_WIOPPMWord")
	.dwattr DW$105, DW_AT_type(*DW$T$10)
	.dwattr DW$105, DW_AT_declaration(0x01)
	.dwattr DW$105, DW_AT_external(0x01)

DW$106	.dwtag  DW_TAG_subprogram, DW_AT_name("GetVoltageStatus"), DW_AT_symbol_name("_GetVoltageStatus")
	.dwattr DW$106, DW_AT_type(*DW$T$10)
	.dwattr DW$106, DW_AT_declaration(0x01)
	.dwattr DW$106, DW_AT_external(0x01)

DW$107	.dwtag  DW_TAG_subprogram, DW_AT_name("LoadSLEMDefaults"), DW_AT_symbol_name("_LoadSLEMDefaults")
	.dwattr DW$107, DW_AT_declaration(0x01)
	.dwattr DW$107, DW_AT_external(0x01)

DW$108	.dwtag  DW_TAG_subprogram, DW_AT_name("LoadCPPDefaults"), DW_AT_symbol_name("_LoadCPPDefaults")
	.dwattr DW$108, DW_AT_declaration(0x01)
	.dwattr DW$108, DW_AT_external(0x01)

DW$109	.dwtag  DW_TAG_subprogram, DW_AT_name("LoadSensorDefaults"), DW_AT_symbol_name("_LoadSensorDefaults")
	.dwattr DW$109, DW_AT_declaration(0x01)
	.dwattr DW$109, DW_AT_external(0x01)

DW$110	.dwtag  DW_TAG_subprogram, DW_AT_name("LoadDCModeChecksDefaults"), DW_AT_symbol_name("_LoadDCModeChecksDefaults")
	.dwattr DW$110, DW_AT_declaration(0x01)
	.dwattr DW$110, DW_AT_external(0x01)

DW$111	.dwtag  DW_TAG_subprogram, DW_AT_name("SetAlarmEvent"), DW_AT_symbol_name("_SetAlarmEvent")
	.dwattr DW$111, DW_AT_declaration(0x01)
	.dwattr DW$111, DW_AT_external(0x01)
DW$112	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$111


DW$113	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearAlarmEvent"), DW_AT_symbol_name("_ClearAlarmEvent")
	.dwattr DW$113, DW_AT_declaration(0x01)
	.dwattr DW$113, DW_AT_external(0x01)
DW$114	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$113


DW$115	.dwtag  DW_TAG_subprogram, DW_AT_name("CheckAlarmBitSet"), DW_AT_symbol_name("_CheckAlarmBitSet")
	.dwattr DW$115, DW_AT_type(*DW$T$10)
	.dwattr DW$115, DW_AT_declaration(0x01)
	.dwattr DW$115, DW_AT_external(0x01)
DW$116	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$115


DW$117	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteAllSensorStructtoNVMEM"), DW_AT_symbol_name("_WriteAllSensorStructtoNVMEM")
	.dwattr DW$117, DW_AT_type(*DW$T$10)
	.dwattr DW$117, DW_AT_declaration(0x01)
	.dwattr DW$117, DW_AT_external(0x01)

DW$118	.dwtag  DW_TAG_subprogram, DW_AT_name("SaveSafeStruct2"), DW_AT_symbol_name("_SaveSafeStruct2")
	.dwattr DW$118, DW_AT_type(*DW$T$10)
	.dwattr DW$118, DW_AT_declaration(0x01)
	.dwattr DW$118, DW_AT_external(0x01)

DW$119	.dwtag  DW_TAG_subprogram, DW_AT_name("NOPDelay"), DW_AT_symbol_name("_NOPDelay")
	.dwattr DW$119, DW_AT_type(*DW$T$10)
	.dwattr DW$119, DW_AT_declaration(0x01)
	.dwattr DW$119, DW_AT_external(0x01)

DW$120	.dwtag  DW_TAG_subprogram, DW_AT_name("StringInttoByteArray"), DW_AT_symbol_name("_StringInttoByteArray")
	.dwattr DW$120, DW_AT_type(*DW$T$10)
	.dwattr DW$120, DW_AT_declaration(0x01)
	.dwattr DW$120, DW_AT_external(0x01)

DW$121	.dwtag  DW_TAG_subprogram, DW_AT_name("StringBytetoIntArray"), DW_AT_symbol_name("_StringBytetoIntArray")
	.dwattr DW$121, DW_AT_type(*DW$T$10)
	.dwattr DW$121, DW_AT_declaration(0x01)
	.dwattr DW$121, DW_AT_external(0x01)

DW$122	.dwtag  DW_TAG_subprogram, DW_AT_name("BytetoIntArray"), DW_AT_symbol_name("_BytetoIntArray")
	.dwattr DW$122, DW_AT_type(*DW$T$10)
	.dwattr DW$122, DW_AT_declaration(0x01)
	.dwattr DW$122, DW_AT_external(0x01)

DW$123	.dwtag  DW_TAG_subprogram, DW_AT_name("InttoByteArray"), DW_AT_symbol_name("_InttoByteArray")
	.dwattr DW$123, DW_AT_type(*DW$T$10)
	.dwattr DW$123, DW_AT_declaration(0x01)
	.dwattr DW$123, DW_AT_external(0x01)

DW$124	.dwtag  DW_TAG_subprogram, DW_AT_name("DeselectSPI"), DW_AT_symbol_name("_DeselectSPI")
	.dwattr DW$124, DW_AT_type(*DW$T$10)
	.dwattr DW$124, DW_AT_declaration(0x01)
	.dwattr DW$124, DW_AT_external(0x01)

DW$125	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadNVMemory"), DW_AT_symbol_name("_ReadNVMemory")
	.dwattr DW$125, DW_AT_type(*DW$T$10)
	.dwattr DW$125, DW_AT_declaration(0x01)
	.dwattr DW$125, DW_AT_external(0x01)

DW$126	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteNVMemory"), DW_AT_symbol_name("_WriteNVMemory")
	.dwattr DW$126, DW_AT_type(*DW$T$10)
	.dwattr DW$126, DW_AT_declaration(0x01)
	.dwattr DW$126, DW_AT_external(0x01)

DW$127	.dwtag  DW_TAG_subprogram, DW_AT_name("CalcUIntChecksum"), DW_AT_symbol_name("_CalcUIntChecksum")
	.dwattr DW$127, DW_AT_type(*DW$T$10)
	.dwattr DW$127, DW_AT_declaration(0x01)
	.dwattr DW$127, DW_AT_external(0x01)

DW$128	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteEventLogVarsStructtoNVMEM"), DW_AT_symbol_name("_WriteEventLogVarsStructtoNVMEM")
	.dwattr DW$128, DW_AT_type(*DW$T$10)
	.dwattr DW$128, DW_AT_declaration(0x01)
	.dwattr DW$128, DW_AT_external(0x01)

DW$129	.dwtag  DW_TAG_subprogram, DW_AT_name("Fram1MagicNumberRead"), DW_AT_symbol_name("_Fram1MagicNumberRead")
	.dwattr DW$129, DW_AT_type(*DW$T$10)
	.dwattr DW$129, DW_AT_declaration(0x01)
	.dwattr DW$129, DW_AT_external(0x01)

DW$130	.dwtag  DW_TAG_subprogram, DW_AT_name("LoadDamagemonDefaults"), DW_AT_symbol_name("_LoadDamagemonDefaults")
	.dwattr DW$130, DW_AT_type(*DW$T$10)
	.dwattr DW$130, DW_AT_declaration(0x01)
	.dwattr DW$130, DW_AT_external(0x01)

DW$131	.dwtag  DW_TAG_subprogram, DW_AT_name("ConfigCheckVal"), DW_AT_symbol_name("_ConfigCheckVal")
	.dwattr DW$131, DW_AT_type(*DW$T$10)
	.dwattr DW$131, DW_AT_declaration(0x01)
	.dwattr DW$131, DW_AT_external(0x01)

DW$132	.dwtag  DW_TAG_subprogram, DW_AT_name("AliveStatus"), DW_AT_symbol_name("_AliveStatus")
	.dwattr DW$132, DW_AT_type(*DW$T$10)
	.dwattr DW$132, DW_AT_declaration(0x01)
	.dwattr DW$132, DW_AT_external(0x01)

DW$133	.dwtag  DW_TAG_subprogram, DW_AT_name("SaveSafeGeneric"), DW_AT_symbol_name("_SaveSafeGeneric")
	.dwattr DW$133, DW_AT_type(*DW$T$10)
	.dwattr DW$133, DW_AT_declaration(0x01)
	.dwattr DW$133, DW_AT_external(0x01)

DW$134	.dwtag  DW_TAG_subprogram, DW_AT_name("CalibrationtdUpdate"), DW_AT_symbol_name("_CalibrationtdUpdate")
	.dwattr DW$134, DW_AT_type(*DW$T$10)
	.dwattr DW$134, DW_AT_declaration(0x01)
	.dwattr DW$134, DW_AT_external(0x01)

DW$135	.dwtag  DW_TAG_subprogram, DW_AT_name("EngineRunTimeUpdate"), DW_AT_symbol_name("_EngineRunTimeUpdate")
	.dwattr DW$135, DW_AT_type(*DW$T$10)
	.dwattr DW$135, DW_AT_declaration(0x01)
	.dwattr DW$135, DW_AT_external(0x01)
DW$136	.dwtag  DW_TAG_variable, DW_AT_name("eventlogvars"), DW_AT_symbol_name("_eventlogvars")
	.dwattr DW$136, DW_AT_type(*DW$T$324)
	.dwattr DW$136, DW_AT_declaration(0x01)
	.dwattr DW$136, DW_AT_external(0x01)
DW$137	.dwtag  DW_TAG_variable, DW_AT_name("settings"), DW_AT_symbol_name("_settings")
	.dwattr DW$137, DW_AT_type(*DW$T$325)
	.dwattr DW$137, DW_AT_declaration(0x01)
	.dwattr DW$137, DW_AT_external(0x01)
DW$138	.dwtag  DW_TAG_variable, DW_AT_name("logtime"), DW_AT_symbol_name("_logtime")
	.dwattr DW$138, DW_AT_type(*DW$T$326)
	.dwattr DW$138, DW_AT_declaration(0x01)
	.dwattr DW$138, DW_AT_external(0x01)
DW$139	.dwtag  DW_TAG_variable, DW_AT_name("calibrationtd"), DW_AT_symbol_name("_calibrationtd")
	.dwattr DW$139, DW_AT_type(*DW$T$328)
	.dwattr DW$139, DW_AT_declaration(0x01)
	.dwattr DW$139, DW_AT_external(0x01)
DW$140	.dwtag  DW_TAG_variable, DW_AT_name("clocktime"), DW_AT_symbol_name("_clocktime")
	.dwattr DW$140, DW_AT_type(*DW$T$330)
	.dwattr DW$140, DW_AT_declaration(0x01)
	.dwattr DW$140, DW_AT_external(0x01)
DW$141	.dwtag  DW_TAG_variable, DW_AT_name("timers"), DW_AT_symbol_name("_timers")
	.dwattr DW$141, DW_AT_type(*DW$T$332)
	.dwattr DW$141, DW_AT_declaration(0x01)
	.dwattr DW$141, DW_AT_external(0x01)
DW$142	.dwtag  DW_TAG_variable, DW_AT_name("allsensors"), DW_AT_symbol_name("_allsensors")
	.dwattr DW$142, DW_AT_type(*DW$T$334)
	.dwattr DW$142, DW_AT_declaration(0x01)
	.dwattr DW$142, DW_AT_external(0x01)
DW$143	.dwtag  DW_TAG_variable, DW_AT_name("engine"), DW_AT_symbol_name("_engine")
	.dwattr DW$143, DW_AT_type(*DW$T$336)
	.dwattr DW$143, DW_AT_declaration(0x01)
	.dwattr DW$143, DW_AT_external(0x01)
DW$144	.dwtag  DW_TAG_variable, DW_AT_name("config"), DW_AT_symbol_name("_config")
	.dwattr DW$144, DW_AT_type(*DW$T$337)
	.dwattr DW$144, DW_AT_declaration(0x01)
	.dwattr DW$144, DW_AT_external(0x01)
DW$145	.dwtag  DW_TAG_variable, DW_AT_name("transferbuffer"), DW_AT_symbol_name("_transferbuffer")
	.dwattr DW$145, DW_AT_type(*DW$T$270)
	.dwattr DW$145, DW_AT_declaration(0x01)
	.dwattr DW$145, DW_AT_external(0x01)
DW$146	.dwtag  DW_TAG_variable, DW_AT_name("stringbuffer"), DW_AT_symbol_name("_stringbuffer")
	.dwattr DW$146, DW_AT_type(*DW$T$310)
	.dwattr DW$146, DW_AT_declaration(0x01)
	.dwattr DW$146, DW_AT_external(0x01)
DW$147	.dwtag  DW_TAG_variable, DW_AT_name("offsetA"), DW_AT_symbol_name("_offsetA")
	.dwattr DW$147, DW_AT_type(*DW$T$339)
	.dwattr DW$147, DW_AT_declaration(0x01)
	.dwattr DW$147, DW_AT_external(0x01)
DW$148	.dwtag  DW_TAG_variable, DW_AT_name("offsetB"), DW_AT_symbol_name("_offsetB")
	.dwattr DW$148, DW_AT_type(*DW$T$339)
	.dwattr DW$148, DW_AT_declaration(0x01)
	.dwattr DW$148, DW_AT_external(0x01)
DW$149	.dwtag  DW_TAG_variable, DW_AT_name("sensor"), DW_AT_symbol_name("_sensor")
	.dwattr DW$149, DW_AT_type(*DW$T$342)
	.dwattr DW$149, DW_AT_declaration(0x01)
	.dwattr DW$149, DW_AT_external(0x01)
DW$150	.dwtag  DW_TAG_variable, DW_AT_name("man_comptable"), DW_AT_symbol_name("_man_comptable")
	.dwattr DW$150, DW_AT_type(*DW$T$155)
	.dwattr DW$150, DW_AT_declaration(0x01)
	.dwattr DW$150, DW_AT_external(0x01)
DW$151	.dwtag  DW_TAG_variable, DW_AT_name("manref"), DW_AT_symbol_name("_manref")
	.dwattr DW$151, DW_AT_type(*DW$T$346)
	.dwattr DW$151, DW_AT_declaration(0x01)
	.dwattr DW$151, DW_AT_external(0x01)
DW$152	.dwtag  DW_TAG_variable, DW_AT_name("damagemon"), DW_AT_symbol_name("_damagemon")
	.dwattr DW$152, DW_AT_type(*DW$T$349)
	.dwattr DW$152, DW_AT_declaration(0x01)
	.dwattr DW$152, DW_AT_external(0x01)
DW$153	.dwtag  DW_TAG_variable, DW_AT_name("dynalarmlevels"), DW_AT_symbol_name("_dynalarmlevels")
	.dwattr DW$153, DW_AT_type(*DW$T$351)
	.dwattr DW$153, DW_AT_declaration(0x01)
	.dwattr DW$153, DW_AT_external(0x01)
DW$154	.dwtag  DW_TAG_variable, DW_AT_name("speedcompcoeffs"), DW_AT_symbol_name("_speedcompcoeffs")
	.dwattr DW$154, DW_AT_type(*DW$T$352)
	.dwattr DW$154, DW_AT_declaration(0x01)
	.dwattr DW$154, DW_AT_external(0x01)
DW$155	.dwtag  DW_TAG_variable, DW_AT_name("wiosettings"), DW_AT_symbol_name("_wiosettings")
	.dwattr DW$155, DW_AT_type(*DW$T$354)
	.dwattr DW$155, DW_AT_declaration(0x01)
	.dwattr DW$155, DW_AT_external(0x01)
DW$156	.dwtag  DW_TAG_variable, DW_AT_name("versionreg"), DW_AT_symbol_name("_versionreg")
	.dwattr DW$156, DW_AT_type(*DW$T$271)
	.dwattr DW$156, DW_AT_declaration(0x01)
	.dwattr DW$156, DW_AT_external(0x01)
DW$157	.dwtag  DW_TAG_variable, DW_AT_name("slemsettings"), DW_AT_symbol_name("_slemsettings")
	.dwattr DW$157, DW_AT_type(*DW$T$356)
	.dwattr DW$157, DW_AT_declaration(0x01)
	.dwattr DW$157, DW_AT_external(0x01)
DW$158	.dwtag  DW_TAG_variable, DW_AT_name("slem"), DW_AT_symbol_name("_slem")
	.dwattr DW$158, DW_AT_type(*DW$T$358)
	.dwattr DW$158, DW_AT_declaration(0x01)
	.dwattr DW$158, DW_AT_external(0x01)
DW$159	.dwtag  DW_TAG_variable, DW_AT_name("cppsettings"), DW_AT_symbol_name("_cppsettings")
	.dwattr DW$159, DW_AT_type(*DW$T$359)
	.dwattr DW$159, DW_AT_declaration(0x01)
	.dwattr DW$159, DW_AT_external(0x01)
DW$160	.dwtag  DW_TAG_variable, DW_AT_name("sensorMoving"), DW_AT_symbol_name("_sensorMoving")
	.dwattr DW$160, DW_AT_type(*DW$T$361)
	.dwattr DW$160, DW_AT_declaration(0x01)
	.dwattr DW$160, DW_AT_external(0x01)
DW$161	.dwtag  DW_TAG_variable, DW_AT_name("dcmodechecks"), DW_AT_symbol_name("_dcmodechecks")
	.dwattr DW$161, DW_AT_type(*DW$T$363)
	.dwattr DW$161, DW_AT_declaration(0x01)
	.dwattr DW$161, DW_AT_external(0x01)
DW$162	.dwtag  DW_TAG_variable, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$162, DW_AT_type(*DW$T$366)
	.dwattr DW$162, DW_AT_declaration(0x01)
	.dwattr DW$162, DW_AT_external(0x01)
	.global	_f_databuf
_f_databuf:	.usect	".filesystem",512,0,0
DW$163	.dwtag  DW_TAG_variable, DW_AT_name("f_databuf"), DW_AT_symbol_name("_f_databuf")
	.dwattr DW$163, DW_AT_location[DW_OP_addr _f_databuf]
	.dwattr DW$163, DW_AT_type(*DW$T$311)
	.dwattr DW$163, DW_AT_external(0x01)
	.global	_fileregs
_fileregs:	.usect	".ebss",334,1,1
DW$164	.dwtag  DW_TAG_variable, DW_AT_name("fileregs"), DW_AT_symbol_name("_fileregs")
	.dwattr DW$164, DW_AT_location[DW_OP_addr _fileregs]
	.dwattr DW$164, DW_AT_type(*DW$T$369)
	.dwattr DW$164, DW_AT_external(0x01)
	.global	_sdsettings
_sdsettings:	.usect	".ebss",4,1,0
DW$165	.dwtag  DW_TAG_variable, DW_AT_name("sdsettings"), DW_AT_symbol_name("_sdsettings")
	.dwattr DW$165, DW_AT_location[DW_OP_addr _sdsettings]
	.dwattr DW$165, DW_AT_type(*DW$T$371)
	.dwattr DW$165, DW_AT_external(0x01)
	.global	_shortterm
_shortterm:	.usect	".ebss",46,1,1
DW$166	.dwtag  DW_TAG_variable, DW_AT_name("shortterm"), DW_AT_symbol_name("_shortterm")
	.dwattr DW$166, DW_AT_location[DW_OP_addr _shortterm]
	.dwattr DW$166, DW_AT_type(*DW$T$373)
	.dwattr DW$166, DW_AT_external(0x01)
	.global	_longterm
_longterm:	.usect	".ebss",20,1,1
DW$167	.dwtag  DW_TAG_variable, DW_AT_name("longterm"), DW_AT_symbol_name("_longterm")
	.dwattr DW$167, DW_AT_location[DW_OP_addr _longterm]
	.dwattr DW$167, DW_AT_type(*DW$T$375)
	.dwattr DW$167, DW_AT_external(0x01)
	.global	_asciilog
_asciilog:	.usect	".ebss",18,1,1
DW$168	.dwtag  DW_TAG_variable, DW_AT_name("asciilog"), DW_AT_symbol_name("_asciilog")
	.dwattr DW$168, DW_AT_location[DW_OP_addr _asciilog]
	.dwattr DW$168, DW_AT_type(*DW$T$377)
	.dwattr DW$168, DW_AT_external(0x01)
	.global	_mansd
_mansd:	.usect	".ebss",25,1,0
DW$169	.dwtag  DW_TAG_variable, DW_AT_name("mansd"), DW_AT_symbol_name("_mansd")
	.dwattr DW$169, DW_AT_location[DW_OP_addr _mansd]
	.dwattr DW$169, DW_AT_type(*DW$T$378)
	.dwattr DW$169, DW_AT_external(0x01)
	.global	_amotheader
	.sect	".econst"
	.align	1
_amotheader:
	.field  	65,16			; _amotheader[0] @ 0
	.field  	77,16			; _amotheader[1] @ 16
	.field  	79,16			; _amotheader[2] @ 32
	.field  	84,16			; _amotheader[3] @ 48
	.field  	13,16			; _amotheader[4] @ 64
	.field  	10,16			; _amotheader[5] @ 80
	.field  	65,16			; _amotheader[6] @ 96
	.field  	32,16			; _amotheader[7] @ 112
	.field  	100,16			; _amotheader[8] @ 128
	.field  	105,16			; _amotheader[9] @ 144
	.field  	118,16			; _amotheader[10] @ 160
	.field  	105,16			; _amotheader[11] @ 176
	.field  	115,16			; _amotheader[12] @ 192
	.field  	105,16			; _amotheader[13] @ 208
	.field  	111,16			; _amotheader[14] @ 224
	.field  	110,16			; _amotheader[15] @ 240
	.field  	32,16			; _amotheader[16] @ 256
	.field  	111,16			; _amotheader[17] @ 272
	.field  	102,16			; _amotheader[18] @ 288
	.field  	32,16			; _amotheader[19] @ 304
	.field  	82,16			; _amotheader[20] @ 320
	.field  	111,16			; _amotheader[21] @ 336
	.field  	112,16			; _amotheader[22] @ 352
	.field  	101,16			; _amotheader[23] @ 368
	.field  	114,16			; _amotheader[24] @ 384
	.field  	32,16			; _amotheader[25] @ 400
	.field  	73,16			; _amotheader[26] @ 416
	.field  	110,16			; _amotheader[27] @ 432
	.field  	100,16			; _amotheader[28] @ 448
	.field  	117,16			; _amotheader[29] @ 464
	.field  	115,16			; _amotheader[30] @ 480
	.field  	116,16			; _amotheader[31] @ 496
	.field  	114,16			; _amotheader[32] @ 512
	.field  	105,16			; _amotheader[33] @ 528
	.field  	101,16			; _amotheader[34] @ 544
	.field  	115,16			; _amotheader[35] @ 560
	.field  	32,16			; _amotheader[36] @ 576
	.field  	76,16			; _amotheader[37] @ 592
	.field  	116,16			; _amotheader[38] @ 608
	.field  	100,16			; _amotheader[39] @ 624
	.field  	13,16			; _amotheader[40] @ 640
	.field  	10,16			; _amotheader[41] @ 656
	.field  	67,16			; _amotheader[42] @ 672
	.field  	111,16			; _amotheader[43] @ 688
	.field  	110,16			; _amotheader[44] @ 704
	.field  	116,16			; _amotheader[45] @ 720
	.field  	97,16			; _amotheader[46] @ 736
	.field  	99,16			; _amotheader[47] @ 752
	.field  	116,16			; _amotheader[48] @ 768
	.field  	58,16			; _amotheader[49] @ 784
	.field  	32,16			; _amotheader[50] @ 800
	.field  	43,16			; _amotheader[51] @ 816
	.field  	52,16			; _amotheader[52] @ 832
	.field  	52,16			; _amotheader[53] @ 848
	.field  	40,16			; _amotheader[54] @ 864
	.field  	48,16			; _amotheader[55] @ 880
	.field  	41,16			; _amotheader[56] @ 896
	.field  	49,16			; _amotheader[57] @ 912
	.field  	50,16			; _amotheader[58] @ 928
	.field  	56,16			; _amotheader[59] @ 944
	.field  	52,16			; _amotheader[60] @ 960
	.field  	32,16			; _amotheader[61] @ 976
	.field  	55,16			; _amotheader[62] @ 992
	.field  	54,16			; _amotheader[63] @ 1008
	.field  	50,16			; _amotheader[64] @ 1024
	.field  	50,16			; _amotheader[65] @ 1040
	.field  	50,16			; _amotheader[66] @ 1056
	.field  	50,16			; _amotheader[67] @ 1072
	.field  	13,16			; _amotheader[68] @ 1088
	.field  	10,16			; _amotheader[69] @ 1104
	.field  	84,16			; _amotheader[70] @ 1120
	.field  	104,16			; _amotheader[71] @ 1136
	.field  	105,16			; _amotheader[72] @ 1152
	.field  	115,16			; _amotheader[73] @ 1168
	.field  	32,16			; _amotheader[74] @ 1184
	.field  	83,16			; _amotheader[75] @ 1200
	.field  	68,16			; _amotheader[76] @ 1216
	.field  	32,16			; _amotheader[77] @ 1232
	.field  	67,16			; _amotheader[78] @ 1248
	.field  	97,16			; _amotheader[79] @ 1264
	.field  	114,16			; _amotheader[80] @ 1280
	.field  	100,16			; _amotheader[81] @ 1296
	.field  	32,16			; _amotheader[82] @ 1312
	.field  	115,16			; _amotheader[83] @ 1328
	.field  	104,16			; _amotheader[84] @ 1344
	.field  	111,16			; _amotheader[85] @ 1360
	.field  	117,16			; _amotheader[86] @ 1376
	.field  	108,16			; _amotheader[87] @ 1392
	.field  	100,16			; _amotheader[88] @ 1408
	.field  	32,16			; _amotheader[89] @ 1424
	.field  	110,16			; _amotheader[90] @ 1440
	.field  	111,16			; _amotheader[91] @ 1456
	.field  	116,16			; _amotheader[92] @ 1472
	.field  	32,16			; _amotheader[93] @ 1488
	.field  	98,16			; _amotheader[94] @ 1504
	.field  	101,16			; _amotheader[95] @ 1520
	.field  	32,16			; _amotheader[96] @ 1536
	.field  	114,16			; _amotheader[97] @ 1552
	.field  	101,16			; _amotheader[98] @ 1568
	.field  	109,16			; _amotheader[99] @ 1584
	.field  	111,16			; _amotheader[100] @ 1600
	.field  	118,16			; _amotheader[101] @ 1616
	.field  	101,16			; _amotheader[102] @ 1632
	.field  	100,16			; _amotheader[103] @ 1648
	.field  	32,16			; _amotheader[104] @ 1664
	.field  	102,16			; _amotheader[105] @ 1680
	.field  	114,16			; _amotheader[106] @ 1696
	.field  	111,16			; _amotheader[107] @ 1712
	.field  	109,16			; _amotheader[108] @ 1728
	.field  	32,16			; _amotheader[109] @ 1744
	.field  	116,16			; _amotheader[110] @ 1760
	.field  	104,16			; _amotheader[111] @ 1776
	.field  	101,16			; _amotheader[112] @ 1792
	.field  	32,16			; _amotheader[113] @ 1808
	.field  	88,16			; _amotheader[114] @ 1824
	.field  	84,16			; _amotheader[115] @ 1840
	.field  	83,16			; _amotheader[116] @ 1856
	.field  	45,16			; _amotheader[117] @ 1872
	.field  	87,16			; _amotheader[118] @ 1888
	.field  	32,16			; _amotheader[119] @ 1904
	.field  	83,16			; _amotheader[120] @ 1920
	.field  	121,16			; _amotheader[121] @ 1936
	.field  	115,16			; _amotheader[122] @ 1952
	.field  	116,16			; _amotheader[123] @ 1968
	.field  	101,16			; _amotheader[124] @ 1984
	.field  	109,16			; _amotheader[125] @ 2000
	.field  	32,16			; _amotheader[126] @ 2016
	.field  	119,16			; _amotheader[127] @ 2032
	.field  	105,16			; _amotheader[128] @ 2048
	.field  	116,16			; _amotheader[129] @ 2064
	.field  	104,16			; _amotheader[130] @ 2080
	.field  	111,16			; _amotheader[131] @ 2096
	.field  	117,16			; _amotheader[132] @ 2112
	.field  	116,16			; _amotheader[133] @ 2128
	.field  	32,16			; _amotheader[134] @ 2144
	.field  	116,16			; _amotheader[135] @ 2160
	.field  	104,16			; _amotheader[136] @ 2176
	.field  	101,16			; _amotheader[137] @ 2192
	.field  	32,16			; _amotheader[138] @ 2208
	.field  	99,16			; _amotheader[139] @ 2224
	.field  	111,16			; _amotheader[140] @ 2240
	.field  	110,16			; _amotheader[141] @ 2256
	.field  	115,16			; _amotheader[142] @ 2272
	.field  	101,16			; _amotheader[143] @ 2288
	.field  	110,16			; _amotheader[144] @ 2304
	.field  	116,16			; _amotheader[145] @ 2320
	.field  	32,16			; _amotheader[146] @ 2336
	.field  	111,16			; _amotheader[147] @ 2352
	.field  	102,16			; _amotheader[148] @ 2368
	.field  	32,16			; _amotheader[149] @ 2384
	.field  	65,16			; _amotheader[150] @ 2400
	.field  	77,16			; _amotheader[151] @ 2416
	.field  	79,16			; _amotheader[152] @ 2432
	.field  	84,16			; _amotheader[153] @ 2448
	.field  	13,16			; _amotheader[154] @ 2464
	.field  	10,16			; _amotheader[155] @ 2480
	.field  	73,16			; _amotheader[156] @ 2496
	.field  	102,16			; _amotheader[157] @ 2512
	.field  	32,16			; _amotheader[158] @ 2528
	.field  	116,16			; _amotheader[159] @ 2544
	.field  	104,16			; _amotheader[160] @ 2560
	.field  	105,16			; _amotheader[161] @ 2576
	.field  	115,16			; _amotheader[162] @ 2592
	.field  	32,16			; _amotheader[163] @ 2608
	.field  	99,16			; _amotheader[164] @ 2624
	.field  	97,16			; _amotheader[165] @ 2640
	.field  	114,16			; _amotheader[166] @ 2656
	.field  	100,16			; _amotheader[167] @ 2672
	.field  	32,16			; _amotheader[168] @ 2688
	.field  	104,16			; _amotheader[169] @ 2704
	.field  	97,16			; _amotheader[170] @ 2720
	.field  	115,16			; _amotheader[171] @ 2736
	.field  	32,16			; _amotheader[172] @ 2752
	.field  	98,16			; _amotheader[173] @ 2768
	.field  	101,16			; _amotheader[174] @ 2784
	.field  	101,16			; _amotheader[175] @ 2800
	.field  	110,16			; _amotheader[176] @ 2816
	.field  	32,16			; _amotheader[177] @ 2832
	.field  	114,16			; _amotheader[178] @ 2848
	.field  	101,16			; _amotheader[179] @ 2864
	.field  	109,16			; _amotheader[180] @ 2880
	.field  	111,16			; _amotheader[181] @ 2896
	.field  	118,16			; _amotheader[182] @ 2912
	.field  	101,16			; _amotheader[183] @ 2928
	.field  	100,16			; _amotheader[184] @ 2944
	.field  	32,16			; _amotheader[185] @ 2960
	.field  	119,16			; _amotheader[186] @ 2976
	.field  	104,16			; _amotheader[187] @ 2992
	.field  	105,16			; _amotheader[188] @ 3008
	.field  	108,16			; _amotheader[189] @ 3024
	.field  	115,16			; _amotheader[190] @ 3040
	.field  	116,16			; _amotheader[191] @ 3056
	.field  	32,16			; _amotheader[192] @ 3072
	.field  	116,16			; _amotheader[193] @ 3088
	.field  	104,16			; _amotheader[194] @ 3104
	.field  	101,16			; _amotheader[195] @ 3120
	.field  	32,16			; _amotheader[196] @ 3136
	.field  	101,16			; _amotheader[197] @ 3152
	.field  	110,16			; _amotheader[198] @ 3168
	.field  	103,16			; _amotheader[199] @ 3184
	.field  	105,16			; _amotheader[200] @ 3200
	.field  	110,16			; _amotheader[201] @ 3216
	.field  	101,16			; _amotheader[202] @ 3232
	.field  	32,16			; _amotheader[203] @ 3248
	.field  	105,16			; _amotheader[204] @ 3264
	.field  	115,16			; _amotheader[205] @ 3280
	.field  	32,16			; _amotheader[206] @ 3296
	.field  	114,16			; _amotheader[207] @ 3312
	.field  	117,16			; _amotheader[208] @ 3328
	.field  	110,16			; _amotheader[209] @ 3344
	.field  	110,16			; _amotheader[210] @ 3360
	.field  	105,16			; _amotheader[211] @ 3376
	.field  	110,16			; _amotheader[212] @ 3392
	.field  	103,16			; _amotheader[213] @ 3408
	.field  	44,16			; _amotheader[214] @ 3424
	.field  	13,16			; _amotheader[215] @ 3440
	.field  	10,16			; _amotheader[216] @ 3456
	.field  	99,16			; _amotheader[217] @ 3472
	.field  	111,16			; _amotheader[218] @ 3488
	.field  	110,16			; _amotheader[219] @ 3504
	.field  	116,16			; _amotheader[220] @ 3520
	.field  	97,16			; _amotheader[221] @ 3536
	.field  	99,16			; _amotheader[222] @ 3552
	.field  	116,16			; _amotheader[223] @ 3568
	.field  	32,16			; _amotheader[224] @ 3584
	.field  	65,16			; _amotheader[225] @ 3600
	.field  	109,16			; _amotheader[226] @ 3616
	.field  	111,16			; _amotheader[227] @ 3632
	.field  	116,16			; _amotheader[228] @ 3648
	.field  	32,16			; _amotheader[229] @ 3664
	.field  	105,16			; _amotheader[230] @ 3680
	.field  	109,16			; _amotheader[231] @ 3696
	.field  	109,16			; _amotheader[232] @ 3712
	.field  	101,16			; _amotheader[233] @ 3728
	.field  	100,16			; _amotheader[234] @ 3744
	.field  	105,16			; _amotheader[235] @ 3760
	.field  	97,16			; _amotheader[236] @ 3776
	.field  	116,16			; _amotheader[237] @ 3792
	.field  	101,16			; _amotheader[238] @ 3808
	.field  	108,16			; _amotheader[239] @ 3824
	.field  	121,16			; _amotheader[240] @ 3840
	.field  	46,16			; _amotheader[241] @ 3856
	.field  	13,16			; _amotheader[242] @ 3872
	.field  	10,16			; _amotheader[243] @ 3888
	.field  	13,16			; _amotheader[244] @ 3904
	.field  	10,16			; _amotheader[245] @ 3920
	.field  	80,16			; _amotheader[246] @ 3936
	.field  	114,16			; _amotheader[247] @ 3952
	.field  	111,16			; _amotheader[248] @ 3968
	.field  	100,16			; _amotheader[249] @ 3984
	.field  	117,16			; _amotheader[250] @ 4000
	.field  	99,16			; _amotheader[251] @ 4016
	.field  	116,16			; _amotheader[252] @ 4032
	.field  	32,16			; _amotheader[253] @ 4048
	.field  	67,16			; _amotheader[254] @ 4064
	.field  	111,16			; _amotheader[255] @ 4080
	.field  	100,16			; _amotheader[256] @ 4096
	.field  	101,16			; _amotheader[257] @ 4112
	.field  	58,16			; _amotheader[258] @ 4128
	.field  	32,16			; _amotheader[259] @ 4144
	.field  	88,16			; _amotheader[260] @ 4160
	.field  	84,16			; _amotheader[261] @ 4176
	.field  	83,16			; _amotheader[262] @ 4192
	.field  	45,16			; _amotheader[263] @ 4208
	.field  	87,16			; _amotheader[264] @ 4224
	.field  	0,16			; _amotheader[265] @ 4240

DW$170	.dwtag  DW_TAG_variable, DW_AT_name("amotheader"), DW_AT_symbol_name("_amotheader")
	.dwattr DW$170, DW_AT_location[DW_OP_addr _amotheader]
	.dwattr DW$170, DW_AT_type(*DW$T$298)
	.dwattr DW$170, DW_AT_external(0x01)
	.global	_eventheader
	.sect	".econst"
	.align	1
_eventheader:
	.field  	68,16			; _eventheader[0] @ 0
	.field  	97,16			; _eventheader[1] @ 16
	.field  	116,16			; _eventheader[2] @ 32
	.field  	101,16			; _eventheader[3] @ 48
	.field  	44,16			; _eventheader[4] @ 64
	.field  	84,16			; _eventheader[5] @ 80
	.field  	105,16			; _eventheader[6] @ 96
	.field  	109,16			; _eventheader[7] @ 112
	.field  	101,16			; _eventheader[8] @ 128
	.field  	44,16			; _eventheader[9] @ 144
	.field  	69,16			; _eventheader[10] @ 160
	.field  	118,16			; _eventheader[11] @ 176
	.field  	101,16			; _eventheader[12] @ 192
	.field  	110,16			; _eventheader[13] @ 208
	.field  	116,16			; _eventheader[14] @ 224
	.field  	67,16			; _eventheader[15] @ 240
	.field  	111,16			; _eventheader[16] @ 256
	.field  	100,16			; _eventheader[17] @ 272
	.field  	101,16			; _eventheader[18] @ 288
	.field  	44,16			; _eventheader[19] @ 304
	.field  	67,16			; _eventheader[20] @ 320
	.field  	104,16			; _eventheader[21] @ 336
	.field  	67,16			; _eventheader[22] @ 352
	.field  	111,16			; _eventheader[23] @ 368
	.field  	100,16			; _eventheader[24] @ 384
	.field  	101,16			; _eventheader[25] @ 400
	.field  	44,16			; _eventheader[26] @ 416
	.field  	68,16			; _eventheader[27] @ 432
	.field  	97,16			; _eventheader[28] @ 448
	.field  	116,16			; _eventheader[29] @ 464
	.field  	97,16			; _eventheader[30] @ 480
	.field  	0,16			; _eventheader[31] @ 496

DW$171	.dwtag  DW_TAG_variable, DW_AT_name("eventheader"), DW_AT_symbol_name("_eventheader")
	.dwattr DW$171, DW_AT_location[DW_OP_addr _eventheader]
	.dwattr DW$171, DW_AT_type(*DW$T$299)
	.dwattr DW$171, DW_AT_external(0x01)
	.global	_sdcardrawheader
	.sect	".econst"
	.align	1
_sdcardrawheader:
	.field  	68,16			; _sdcardrawheader[0] @ 0
	.field  	97,16			; _sdcardrawheader[1] @ 16
	.field  	116,16			; _sdcardrawheader[2] @ 32
	.field  	101,16			; _sdcardrawheader[3] @ 48
	.field  	44,16			; _sdcardrawheader[4] @ 64
	.field  	84,16			; _sdcardrawheader[5] @ 80
	.field  	105,16			; _sdcardrawheader[6] @ 96
	.field  	109,16			; _sdcardrawheader[7] @ 112
	.field  	101,16			; _sdcardrawheader[8] @ 128
	.field  	44,16			; _sdcardrawheader[9] @ 144
	.field  	82,16			; _sdcardrawheader[10] @ 160
	.field  	97,16			; _sdcardrawheader[11] @ 176
	.field  	119,16			; _sdcardrawheader[12] @ 192
	.field  	67,16			; _sdcardrawheader[13] @ 208
	.field  	104,16			; _sdcardrawheader[14] @ 224
	.field  	49,16			; _sdcardrawheader[15] @ 240
	.field  	44,16			; _sdcardrawheader[16] @ 256
	.field  	82,16			; _sdcardrawheader[17] @ 272
	.field  	97,16			; _sdcardrawheader[18] @ 288
	.field  	119,16			; _sdcardrawheader[19] @ 304
	.field  	67,16			; _sdcardrawheader[20] @ 320
	.field  	104,16			; _sdcardrawheader[21] @ 336
	.field  	50,16			; _sdcardrawheader[22] @ 352
	.field  	44,16			; _sdcardrawheader[23] @ 368
	.field  	82,16			; _sdcardrawheader[24] @ 384
	.field  	97,16			; _sdcardrawheader[25] @ 400
	.field  	119,16			; _sdcardrawheader[26] @ 416
	.field  	67,16			; _sdcardrawheader[27] @ 432
	.field  	104,16			; _sdcardrawheader[28] @ 448
	.field  	51,16			; _sdcardrawheader[29] @ 464
	.field  	44,16			; _sdcardrawheader[30] @ 480
	.field  	82,16			; _sdcardrawheader[31] @ 496
	.field  	97,16			; _sdcardrawheader[32] @ 512
	.field  	119,16			; _sdcardrawheader[33] @ 528
	.field  	67,16			; _sdcardrawheader[34] @ 544
	.field  	104,16			; _sdcardrawheader[35] @ 560
	.field  	52,16			; _sdcardrawheader[36] @ 576
	.field  	44,16			; _sdcardrawheader[37] @ 592
	.field  	82,16			; _sdcardrawheader[38] @ 608
	.field  	97,16			; _sdcardrawheader[39] @ 624
	.field  	119,16			; _sdcardrawheader[40] @ 640
	.field  	67,16			; _sdcardrawheader[41] @ 656
	.field  	104,16			; _sdcardrawheader[42] @ 672
	.field  	53,16			; _sdcardrawheader[43] @ 688
	.field  	44,16			; _sdcardrawheader[44] @ 704
	.field  	82,16			; _sdcardrawheader[45] @ 720
	.field  	97,16			; _sdcardrawheader[46] @ 736
	.field  	119,16			; _sdcardrawheader[47] @ 752
	.field  	67,16			; _sdcardrawheader[48] @ 768
	.field  	104,16			; _sdcardrawheader[49] @ 784
	.field  	54,16			; _sdcardrawheader[50] @ 800
	.field  	44,16			; _sdcardrawheader[51] @ 816
	.field  	82,16			; _sdcardrawheader[52] @ 832
	.field  	97,16			; _sdcardrawheader[53] @ 848
	.field  	119,16			; _sdcardrawheader[54] @ 864
	.field  	67,16			; _sdcardrawheader[55] @ 880
	.field  	104,16			; _sdcardrawheader[56] @ 896
	.field  	55,16			; _sdcardrawheader[57] @ 912
	.field  	44,16			; _sdcardrawheader[58] @ 928
	.field  	82,16			; _sdcardrawheader[59] @ 944
	.field  	97,16			; _sdcardrawheader[60] @ 960
	.field  	119,16			; _sdcardrawheader[61] @ 976
	.field  	67,16			; _sdcardrawheader[62] @ 992
	.field  	104,16			; _sdcardrawheader[63] @ 1008
	.field  	56,16			; _sdcardrawheader[64] @ 1024
	.field  	44,16			; _sdcardrawheader[65] @ 1040
	.field  	82,16			; _sdcardrawheader[66] @ 1056
	.field  	97,16			; _sdcardrawheader[67] @ 1072
	.field  	119,16			; _sdcardrawheader[68] @ 1088
	.field  	67,16			; _sdcardrawheader[69] @ 1104
	.field  	104,16			; _sdcardrawheader[70] @ 1120
	.field  	57,16			; _sdcardrawheader[71] @ 1136
	.field  	44,16			; _sdcardrawheader[72] @ 1152
	.field  	82,16			; _sdcardrawheader[73] @ 1168
	.field  	97,16			; _sdcardrawheader[74] @ 1184
	.field  	119,16			; _sdcardrawheader[75] @ 1200
	.field  	67,16			; _sdcardrawheader[76] @ 1216
	.field  	104,16			; _sdcardrawheader[77] @ 1232
	.field  	49,16			; _sdcardrawheader[78] @ 1248
	.field  	48,16			; _sdcardrawheader[79] @ 1264
	.field  	44,16			; _sdcardrawheader[80] @ 1280
	.field  	82,16			; _sdcardrawheader[81] @ 1296
	.field  	97,16			; _sdcardrawheader[82] @ 1312
	.field  	119,16			; _sdcardrawheader[83] @ 1328
	.field  	67,16			; _sdcardrawheader[84] @ 1344
	.field  	104,16			; _sdcardrawheader[85] @ 1360
	.field  	49,16			; _sdcardrawheader[86] @ 1376
	.field  	49,16			; _sdcardrawheader[87] @ 1392
	.field  	44,16			; _sdcardrawheader[88] @ 1408
	.field  	82,16			; _sdcardrawheader[89] @ 1424
	.field  	97,16			; _sdcardrawheader[90] @ 1440
	.field  	119,16			; _sdcardrawheader[91] @ 1456
	.field  	67,16			; _sdcardrawheader[92] @ 1472
	.field  	104,16			; _sdcardrawheader[93] @ 1488
	.field  	49,16			; _sdcardrawheader[94] @ 1504
	.field  	50,16			; _sdcardrawheader[95] @ 1520
	.field  	44,16			; _sdcardrawheader[96] @ 1536
	.field  	82,16			; _sdcardrawheader[97] @ 1552
	.field  	97,16			; _sdcardrawheader[98] @ 1568
	.field  	119,16			; _sdcardrawheader[99] @ 1584
	.field  	67,16			; _sdcardrawheader[100] @ 1600
	.field  	104,16			; _sdcardrawheader[101] @ 1616
	.field  	49,16			; _sdcardrawheader[102] @ 1632
	.field  	51,16			; _sdcardrawheader[103] @ 1648
	.field  	44,16			; _sdcardrawheader[104] @ 1664
	.field  	82,16			; _sdcardrawheader[105] @ 1680
	.field  	97,16			; _sdcardrawheader[106] @ 1696
	.field  	119,16			; _sdcardrawheader[107] @ 1712
	.field  	67,16			; _sdcardrawheader[108] @ 1728
	.field  	104,16			; _sdcardrawheader[109] @ 1744
	.field  	49,16			; _sdcardrawheader[110] @ 1760
	.field  	52,16			; _sdcardrawheader[111] @ 1776
	.field  	44,16			; _sdcardrawheader[112] @ 1792
	.field  	82,16			; _sdcardrawheader[113] @ 1808
	.field  	97,16			; _sdcardrawheader[114] @ 1824
	.field  	119,16			; _sdcardrawheader[115] @ 1840
	.field  	84,16			; _sdcardrawheader[116] @ 1856
	.field  	49,16			; _sdcardrawheader[117] @ 1872
	.field  	44,16			; _sdcardrawheader[118] @ 1888
	.field  	82,16			; _sdcardrawheader[119] @ 1904
	.field  	97,16			; _sdcardrawheader[120] @ 1920
	.field  	119,16			; _sdcardrawheader[121] @ 1936
	.field  	84,16			; _sdcardrawheader[122] @ 1952
	.field  	50,16			; _sdcardrawheader[123] @ 1968
	.field  	44,16			; _sdcardrawheader[124] @ 1984
	.field  	82,16			; _sdcardrawheader[125] @ 2000
	.field  	97,16			; _sdcardrawheader[126] @ 2016
	.field  	119,16			; _sdcardrawheader[127] @ 2032
	.field  	84,16			; _sdcardrawheader[128] @ 2048
	.field  	51,16			; _sdcardrawheader[129] @ 2064
	.field  	44,16			; _sdcardrawheader[130] @ 2080
	.field  	82,16			; _sdcardrawheader[131] @ 2096
	.field  	97,16			; _sdcardrawheader[132] @ 2112
	.field  	119,16			; _sdcardrawheader[133] @ 2128
	.field  	84,16			; _sdcardrawheader[134] @ 2144
	.field  	52,16			; _sdcardrawheader[135] @ 2160
	.field  	44,16			; _sdcardrawheader[136] @ 2176
	.field  	82,16			; _sdcardrawheader[137] @ 2192
	.field  	97,16			; _sdcardrawheader[138] @ 2208
	.field  	119,16			; _sdcardrawheader[139] @ 2224
	.field  	82,16			; _sdcardrawheader[140] @ 2240
	.field  	80,16			; _sdcardrawheader[141] @ 2256
	.field  	77,16			; _sdcardrawheader[142] @ 2272
	.field  	44,16			; _sdcardrawheader[143] @ 2288
	.field  	0,16			; _sdcardrawheader[144] @ 2304

DW$172	.dwtag  DW_TAG_variable, DW_AT_name("sdcardrawheader"), DW_AT_symbol_name("_sdcardrawheader")
	.dwattr DW$172, DW_AT_location[DW_OP_addr _sdcardrawheader]
	.dwattr DW$172, DW_AT_type(*DW$T$300)
	.dwattr DW$172, DW_AT_external(0x01)
	.global	_sdcardcompheader
	.sect	".econst"
	.align	1
_sdcardcompheader:
	.field  	68,16			; _sdcardcompheader[0] @ 0
	.field  	97,16			; _sdcardcompheader[1] @ 16
	.field  	116,16			; _sdcardcompheader[2] @ 32
	.field  	101,16			; _sdcardcompheader[3] @ 48
	.field  	44,16			; _sdcardcompheader[4] @ 64
	.field  	84,16			; _sdcardcompheader[5] @ 80
	.field  	105,16			; _sdcardcompheader[6] @ 96
	.field  	109,16			; _sdcardcompheader[7] @ 112
	.field  	101,16			; _sdcardcompheader[8] @ 128
	.field  	44,16			; _sdcardcompheader[9] @ 144
	.field  	67,16			; _sdcardcompheader[10] @ 160
	.field  	111,16			; _sdcardcompheader[11] @ 176
	.field  	109,16			; _sdcardcompheader[12] @ 192
	.field  	112,16			; _sdcardcompheader[13] @ 208
	.field  	67,16			; _sdcardcompheader[14] @ 224
	.field  	104,16			; _sdcardcompheader[15] @ 240
	.field  	49,16			; _sdcardcompheader[16] @ 256
	.field  	44,16			; _sdcardcompheader[17] @ 272
	.field  	67,16			; _sdcardcompheader[18] @ 288
	.field  	111,16			; _sdcardcompheader[19] @ 304
	.field  	109,16			; _sdcardcompheader[20] @ 320
	.field  	112,16			; _sdcardcompheader[21] @ 336
	.field  	67,16			; _sdcardcompheader[22] @ 352
	.field  	104,16			; _sdcardcompheader[23] @ 368
	.field  	50,16			; _sdcardcompheader[24] @ 384
	.field  	44,16			; _sdcardcompheader[25] @ 400
	.field  	67,16			; _sdcardcompheader[26] @ 416
	.field  	111,16			; _sdcardcompheader[27] @ 432
	.field  	109,16			; _sdcardcompheader[28] @ 448
	.field  	112,16			; _sdcardcompheader[29] @ 464
	.field  	67,16			; _sdcardcompheader[30] @ 480
	.field  	104,16			; _sdcardcompheader[31] @ 496
	.field  	51,16			; _sdcardcompheader[32] @ 512
	.field  	44,16			; _sdcardcompheader[33] @ 528
	.field  	67,16			; _sdcardcompheader[34] @ 544
	.field  	111,16			; _sdcardcompheader[35] @ 560
	.field  	109,16			; _sdcardcompheader[36] @ 576
	.field  	112,16			; _sdcardcompheader[37] @ 592
	.field  	67,16			; _sdcardcompheader[38] @ 608
	.field  	104,16			; _sdcardcompheader[39] @ 624
	.field  	52,16			; _sdcardcompheader[40] @ 640
	.field  	44,16			; _sdcardcompheader[41] @ 656
	.field  	67,16			; _sdcardcompheader[42] @ 672
	.field  	111,16			; _sdcardcompheader[43] @ 688
	.field  	109,16			; _sdcardcompheader[44] @ 704
	.field  	112,16			; _sdcardcompheader[45] @ 720
	.field  	67,16			; _sdcardcompheader[46] @ 736
	.field  	104,16			; _sdcardcompheader[47] @ 752
	.field  	53,16			; _sdcardcompheader[48] @ 768
	.field  	44,16			; _sdcardcompheader[49] @ 784
	.field  	67,16			; _sdcardcompheader[50] @ 800
	.field  	111,16			; _sdcardcompheader[51] @ 816
	.field  	109,16			; _sdcardcompheader[52] @ 832
	.field  	112,16			; _sdcardcompheader[53] @ 848
	.field  	67,16			; _sdcardcompheader[54] @ 864
	.field  	104,16			; _sdcardcompheader[55] @ 880
	.field  	54,16			; _sdcardcompheader[56] @ 896
	.field  	44,16			; _sdcardcompheader[57] @ 912
	.field  	67,16			; _sdcardcompheader[58] @ 928
	.field  	111,16			; _sdcardcompheader[59] @ 944
	.field  	109,16			; _sdcardcompheader[60] @ 960
	.field  	112,16			; _sdcardcompheader[61] @ 976
	.field  	67,16			; _sdcardcompheader[62] @ 992
	.field  	104,16			; _sdcardcompheader[63] @ 1008
	.field  	55,16			; _sdcardcompheader[64] @ 1024
	.field  	44,16			; _sdcardcompheader[65] @ 1040
	.field  	67,16			; _sdcardcompheader[66] @ 1056
	.field  	111,16			; _sdcardcompheader[67] @ 1072
	.field  	109,16			; _sdcardcompheader[68] @ 1088
	.field  	112,16			; _sdcardcompheader[69] @ 1104
	.field  	67,16			; _sdcardcompheader[70] @ 1120
	.field  	104,16			; _sdcardcompheader[71] @ 1136
	.field  	56,16			; _sdcardcompheader[72] @ 1152
	.field  	44,16			; _sdcardcompheader[73] @ 1168
	.field  	67,16			; _sdcardcompheader[74] @ 1184
	.field  	111,16			; _sdcardcompheader[75] @ 1200
	.field  	109,16			; _sdcardcompheader[76] @ 1216
	.field  	112,16			; _sdcardcompheader[77] @ 1232
	.field  	67,16			; _sdcardcompheader[78] @ 1248
	.field  	104,16			; _sdcardcompheader[79] @ 1264
	.field  	57,16			; _sdcardcompheader[80] @ 1280
	.field  	44,16			; _sdcardcompheader[81] @ 1296
	.field  	67,16			; _sdcardcompheader[82] @ 1312
	.field  	111,16			; _sdcardcompheader[83] @ 1328
	.field  	109,16			; _sdcardcompheader[84] @ 1344
	.field  	112,16			; _sdcardcompheader[85] @ 1360
	.field  	67,16			; _sdcardcompheader[86] @ 1376
	.field  	104,16			; _sdcardcompheader[87] @ 1392
	.field  	49,16			; _sdcardcompheader[88] @ 1408
	.field  	48,16			; _sdcardcompheader[89] @ 1424
	.field  	44,16			; _sdcardcompheader[90] @ 1440
	.field  	67,16			; _sdcardcompheader[91] @ 1456
	.field  	111,16			; _sdcardcompheader[92] @ 1472
	.field  	109,16			; _sdcardcompheader[93] @ 1488
	.field  	112,16			; _sdcardcompheader[94] @ 1504
	.field  	67,16			; _sdcardcompheader[95] @ 1520
	.field  	104,16			; _sdcardcompheader[96] @ 1536
	.field  	49,16			; _sdcardcompheader[97] @ 1552
	.field  	49,16			; _sdcardcompheader[98] @ 1568
	.field  	44,16			; _sdcardcompheader[99] @ 1584
	.field  	67,16			; _sdcardcompheader[100] @ 1600
	.field  	111,16			; _sdcardcompheader[101] @ 1616
	.field  	109,16			; _sdcardcompheader[102] @ 1632
	.field  	112,16			; _sdcardcompheader[103] @ 1648
	.field  	67,16			; _sdcardcompheader[104] @ 1664
	.field  	104,16			; _sdcardcompheader[105] @ 1680
	.field  	49,16			; _sdcardcompheader[106] @ 1696
	.field  	50,16			; _sdcardcompheader[107] @ 1712
	.field  	44,16			; _sdcardcompheader[108] @ 1728
	.field  	67,16			; _sdcardcompheader[109] @ 1744
	.field  	111,16			; _sdcardcompheader[110] @ 1760
	.field  	109,16			; _sdcardcompheader[111] @ 1776
	.field  	112,16			; _sdcardcompheader[112] @ 1792
	.field  	67,16			; _sdcardcompheader[113] @ 1808
	.field  	104,16			; _sdcardcompheader[114] @ 1824
	.field  	49,16			; _sdcardcompheader[115] @ 1840
	.field  	51,16			; _sdcardcompheader[116] @ 1856
	.field  	44,16			; _sdcardcompheader[117] @ 1872
	.field  	67,16			; _sdcardcompheader[118] @ 1888
	.field  	111,16			; _sdcardcompheader[119] @ 1904
	.field  	109,16			; _sdcardcompheader[120] @ 1920
	.field  	112,16			; _sdcardcompheader[121] @ 1936
	.field  	67,16			; _sdcardcompheader[122] @ 1952
	.field  	104,16			; _sdcardcompheader[123] @ 1968
	.field  	49,16			; _sdcardcompheader[124] @ 1984
	.field  	52,16			; _sdcardcompheader[125] @ 2000
	.field  	44,16			; _sdcardcompheader[126] @ 2016
	.field  	67,16			; _sdcardcompheader[127] @ 2032
	.field  	111,16			; _sdcardcompheader[128] @ 2048
	.field  	109,16			; _sdcardcompheader[129] @ 2064
	.field  	112,16			; _sdcardcompheader[130] @ 2080
	.field  	84,16			; _sdcardcompheader[131] @ 2096
	.field  	49,16			; _sdcardcompheader[132] @ 2112
	.field  	44,16			; _sdcardcompheader[133] @ 2128
	.field  	67,16			; _sdcardcompheader[134] @ 2144
	.field  	111,16			; _sdcardcompheader[135] @ 2160
	.field  	109,16			; _sdcardcompheader[136] @ 2176
	.field  	112,16			; _sdcardcompheader[137] @ 2192
	.field  	84,16			; _sdcardcompheader[138] @ 2208
	.field  	50,16			; _sdcardcompheader[139] @ 2224
	.field  	44,16			; _sdcardcompheader[140] @ 2240
	.field  	67,16			; _sdcardcompheader[141] @ 2256
	.field  	111,16			; _sdcardcompheader[142] @ 2272
	.field  	109,16			; _sdcardcompheader[143] @ 2288
	.field  	112,16			; _sdcardcompheader[144] @ 2304
	.field  	84,16			; _sdcardcompheader[145] @ 2320
	.field  	51,16			; _sdcardcompheader[146] @ 2336
	.field  	44,16			; _sdcardcompheader[147] @ 2352
	.field  	67,16			; _sdcardcompheader[148] @ 2368
	.field  	111,16			; _sdcardcompheader[149] @ 2384
	.field  	109,16			; _sdcardcompheader[150] @ 2400
	.field  	112,16			; _sdcardcompheader[151] @ 2416
	.field  	84,16			; _sdcardcompheader[152] @ 2432
	.field  	52,16			; _sdcardcompheader[153] @ 2448
	.field  	44,16			; _sdcardcompheader[154] @ 2464
	.field  	67,16			; _sdcardcompheader[155] @ 2480
	.field  	111,16			; _sdcardcompheader[156] @ 2496
	.field  	109,16			; _sdcardcompheader[157] @ 2512
	.field  	112,16			; _sdcardcompheader[158] @ 2528
	.field  	82,16			; _sdcardcompheader[159] @ 2544
	.field  	80,16			; _sdcardcompheader[160] @ 2560
	.field  	77,16			; _sdcardcompheader[161] @ 2576
	.field  	0,16			; _sdcardcompheader[162] @ 2592

DW$173	.dwtag  DW_TAG_variable, DW_AT_name("sdcardcompheader"), DW_AT_symbol_name("_sdcardcompheader")
	.dwattr DW$173, DW_AT_location[DW_OP_addr _sdcardcompheader]
	.dwattr DW$173, DW_AT_type(*DW$T$301)
	.dwattr DW$173, DW_AT_external(0x01)
	.global	_statusfile
	.sect	".econst"
	.align	1
_statusfile:
	.field  	115,16			; _statusfile[0] @ 0
	.field  	116,16			; _statusfile[1] @ 16
	.field  	97,16			; _statusfile[2] @ 32
	.field  	116,16			; _statusfile[3] @ 48
	.field  	117,16			; _statusfile[4] @ 64
	.field  	115,16			; _statusfile[5] @ 80
	.field  	46,16			; _statusfile[6] @ 96
	.field  	98,16			; _statusfile[7] @ 112
	.field  	105,16			; _statusfile[8] @ 128
	.field  	110,16			; _statusfile[9] @ 144
	.field  	0,16			; _statusfile[10] @ 160

DW$174	.dwtag  DW_TAG_variable, DW_AT_name("statusfile"), DW_AT_symbol_name("_statusfile")
	.dwattr DW$174, DW_AT_location[DW_OP_addr _statusfile]
	.dwattr DW$174, DW_AT_type(*DW$T$302)
	.dwattr DW$174, DW_AT_external(0x01)
	.global	_settingsfile
	.sect	".econst"
	.align	1
_settingsfile:
	.field  	99,16			; _settingsfile[0] @ 0
	.field  	111,16			; _settingsfile[1] @ 16
	.field  	110,16			; _settingsfile[2] @ 32
	.field  	102,16			; _settingsfile[3] @ 48
	.field  	105,16			; _settingsfile[4] @ 64
	.field  	103,16			; _settingsfile[5] @ 80
	.field  	46,16			; _settingsfile[6] @ 96
	.field  	98,16			; _settingsfile[7] @ 112
	.field  	105,16			; _settingsfile[8] @ 128
	.field  	110,16			; _settingsfile[9] @ 144
	.field  	0,16			; _settingsfile[10] @ 160

DW$175	.dwtag  DW_TAG_variable, DW_AT_name("settingsfile"), DW_AT_symbol_name("_settingsfile")
	.dwattr DW$175, DW_AT_location[DW_OP_addr _settingsfile]
	.dwattr DW$175, DW_AT_type(*DW$T$302)
	.dwattr DW$175, DW_AT_external(0x01)
	.global	_allsensorsfile
	.sect	".econst"
	.align	1
_allsensorsfile:
	.field  	97,16			; _allsensorsfile[0] @ 0
	.field  	108,16			; _allsensorsfile[1] @ 16
	.field  	108,16			; _allsensorsfile[2] @ 32
	.field  	115,16			; _allsensorsfile[3] @ 48
	.field  	101,16			; _allsensorsfile[4] @ 64
	.field  	110,16			; _allsensorsfile[5] @ 80
	.field  	46,16			; _allsensorsfile[6] @ 96
	.field  	98,16			; _allsensorsfile[7] @ 112
	.field  	105,16			; _allsensorsfile[8] @ 128
	.field  	110,16			; _allsensorsfile[9] @ 144
	.field  	0,16			; _allsensorsfile[10] @ 160

DW$176	.dwtag  DW_TAG_variable, DW_AT_name("allsensorsfile"), DW_AT_symbol_name("_allsensorsfile")
	.dwattr DW$176, DW_AT_location[DW_OP_addr _allsensorsfile]
	.dwattr DW$176, DW_AT_type(*DW$T$302)
	.dwattr DW$176, DW_AT_external(0x01)
	.global	_offsetsfile
	.sect	".econst"
	.align	1
_offsetsfile:
	.field  	111,16			; _offsetsfile[0] @ 0
	.field  	102,16			; _offsetsfile[1] @ 16
	.field  	102,16			; _offsetsfile[2] @ 32
	.field  	115,16			; _offsetsfile[3] @ 48
	.field  	101,16			; _offsetsfile[4] @ 64
	.field  	116,16			; _offsetsfile[5] @ 80
	.field  	115,16			; _offsetsfile[6] @ 96
	.field  	46,16			; _offsetsfile[7] @ 112
	.field  	98,16			; _offsetsfile[8] @ 128
	.field  	105,16			; _offsetsfile[9] @ 144
	.field  	110,16			; _offsetsfile[10] @ 160
	.field  	0,16			; _offsetsfile[11] @ 176

DW$177	.dwtag  DW_TAG_variable, DW_AT_name("offsetsfile"), DW_AT_symbol_name("_offsetsfile")
	.dwattr DW$177, DW_AT_location[DW_OP_addr _offsetsfile]
	.dwattr DW$177, DW_AT_type(*DW$T$303)
	.dwattr DW$177, DW_AT_external(0x01)
	.global	_mancompfile
	.sect	".econst"
	.align	1
_mancompfile:
	.field  	77,16			; _mancompfile[0] @ 0
	.field  	65,16			; _mancompfile[1] @ 16
	.field  	78,16			; _mancompfile[2] @ 32
	.field  	95,16			; _mancompfile[3] @ 48
	.field  	48,16			; _mancompfile[4] @ 64
	.field  	46,16			; _mancompfile[5] @ 80
	.field  	98,16			; _mancompfile[6] @ 96
	.field  	105,16			; _mancompfile[7] @ 112
	.field  	110,16			; _mancompfile[8] @ 128
	.field  	0,16			; _mancompfile[9] @ 144

DW$178	.dwtag  DW_TAG_variable, DW_AT_name("mancompfile"), DW_AT_symbol_name("_mancompfile")
	.dwattr DW$178, DW_AT_location[DW_OP_addr _mancompfile]
	.dwattr DW$178, DW_AT_type(*DW$T$304)
	.dwattr DW$178, DW_AT_external(0x01)
	.global	_mancompfile2
	.sect	".econst"
	.align	1
_mancompfile2:
	.field  	77,16			; _mancompfile2[0] @ 0
	.field  	65,16			; _mancompfile2[1] @ 16
	.field  	78,16			; _mancompfile2[2] @ 32
	.field  	95,16			; _mancompfile2[3] @ 48
	.field  	48,16			; _mancompfile2[4] @ 64
	.field  	46,16			; _mancompfile2[5] @ 80
	.field  	98,16			; _mancompfile2[6] @ 96
	.field  	97,16			; _mancompfile2[7] @ 112
	.field  	107,16			; _mancompfile2[8] @ 128
	.field  	0,16			; _mancompfile2[9] @ 144

DW$179	.dwtag  DW_TAG_variable, DW_AT_name("mancompfile2"), DW_AT_symbol_name("_mancompfile2")
	.dwattr DW$179, DW_AT_location[DW_OP_addr _mancompfile2]
	.dwattr DW$179, DW_AT_type(*DW$T$304)
	.dwattr DW$179, DW_AT_external(0x01)
	.global	_eventmsgfile
	.sect	".econst"
	.align	1
_eventmsgfile:
	.field  	69,16			; _eventmsgfile[0] @ 0
	.field  	86,16			; _eventmsgfile[1] @ 16
	.field  	78,16			; _eventmsgfile[2] @ 32
	.field  	84,16			; _eventmsgfile[3] @ 48
	.field  	77,16			; _eventmsgfile[4] @ 64
	.field  	83,16			; _eventmsgfile[5] @ 80
	.field  	71,16			; _eventmsgfile[6] @ 96
	.field  	46,16			; _eventmsgfile[7] @ 112
	.field  	98,16			; _eventmsgfile[8] @ 128
	.field  	105,16			; _eventmsgfile[9] @ 144
	.field  	110,16			; _eventmsgfile[10] @ 160
	.field  	0,16			; _eventmsgfile[11] @ 176

DW$180	.dwtag  DW_TAG_variable, DW_AT_name("eventmsgfile"), DW_AT_symbol_name("_eventmsgfile")
	.dwattr DW$180, DW_AT_location[DW_OP_addr _eventmsgfile]
	.dwattr DW$180, DW_AT_type(*DW$T$303)
	.dwattr DW$180, DW_AT_external(0x01)
	.global	_eventfile
	.sect	".econst"
	.align	1
_eventfile:
	.field  	69,16			; _eventfile[0] @ 0
	.field  	118,16			; _eventfile[1] @ 16
	.field  	101,16			; _eventfile[2] @ 32
	.field  	110,16			; _eventfile[3] @ 48
	.field  	116,16			; _eventfile[4] @ 64
	.field  	46,16			; _eventfile[5] @ 80
	.field  	98,16			; _eventfile[6] @ 96
	.field  	105,16			; _eventfile[7] @ 112
	.field  	110,16			; _eventfile[8] @ 128
	.field  	0,16			; _eventfile[9] @ 144

DW$181	.dwtag  DW_TAG_variable, DW_AT_name("eventfile"), DW_AT_symbol_name("_eventfile")
	.dwattr DW$181, DW_AT_location[DW_OP_addr _eventfile]
	.dwattr DW$181, DW_AT_type(*DW$T$304)
	.dwattr DW$181, DW_AT_external(0x01)
	.global	_eventposfile
	.sect	".econst"
	.align	1
_eventposfile:
	.field  	101,16			; _eventposfile[0] @ 0
	.field  	118,16			; _eventposfile[1] @ 16
	.field  	101,16			; _eventposfile[2] @ 32
	.field  	110,16			; _eventposfile[3] @ 48
	.field  	116,16			; _eventposfile[4] @ 64
	.field  	112,16			; _eventposfile[5] @ 80
	.field  	111,16			; _eventposfile[6] @ 96
	.field  	115,16			; _eventposfile[7] @ 112
	.field  	46,16			; _eventposfile[8] @ 128
	.field  	98,16			; _eventposfile[9] @ 144
	.field  	105,16			; _eventposfile[10] @ 160
	.field  	110,16			; _eventposfile[11] @ 176
	.field  	0,16			; _eventposfile[12] @ 192

DW$182	.dwtag  DW_TAG_variable, DW_AT_name("eventposfile"), DW_AT_symbol_name("_eventposfile")
	.dwattr DW$182, DW_AT_location[DW_OP_addr _eventposfile]
	.dwattr DW$182, DW_AT_type(*DW$T$305)
	.dwattr DW$182, DW_AT_external(0x01)
	.global	_calibtdfile
	.sect	".econst"
	.align	1
_calibtdfile:
	.field  	99,16			; _calibtdfile[0] @ 0
	.field  	97,16			; _calibtdfile[1] @ 16
	.field  	108,16			; _calibtdfile[2] @ 32
	.field  	105,16			; _calibtdfile[3] @ 48
	.field  	98,16			; _calibtdfile[4] @ 64
	.field  	116,16			; _calibtdfile[5] @ 80
	.field  	100,16			; _calibtdfile[6] @ 96
	.field  	46,16			; _calibtdfile[7] @ 112
	.field  	98,16			; _calibtdfile[8] @ 128
	.field  	105,16			; _calibtdfile[9] @ 144
	.field  	110,16			; _calibtdfile[10] @ 160
	.field  	0,16			; _calibtdfile[11] @ 176

DW$183	.dwtag  DW_TAG_variable, DW_AT_name("calibtdfile"), DW_AT_symbol_name("_calibtdfile")
	.dwattr DW$183, DW_AT_location[DW_OP_addr _calibtdfile]
	.dwattr DW$183, DW_AT_type(*DW$T$303)
	.dwattr DW$183, DW_AT_external(0x01)
	.global	_sdcarddir
	.sect	".econst"
	.align	1
_sdcarddir:
	.field  	70,16			; _sdcarddir._firstcaldir[0] @ 0
	.field  	82,16			; _sdcarddir._firstcaldir[1] @ 16
	.field  	83,16			; _sdcarddir._firstcaldir[2] @ 32
	.field  	84,16			; _sdcarddir._firstcaldir[3] @ 48
	.field  	67,16			; _sdcarddir._firstcaldir[4] @ 64
	.field  	65,16			; _sdcarddir._firstcaldir[5] @ 80
	.field  	76,16			; _sdcarddir._firstcaldir[6] @ 96
	.field  	0,16			; _sdcarddir._firstcaldir[7] @ 112
	.space	16
	.field  	82,16			; _sdcarddir._roughcaldir[0] @ 144
	.field  	71,16			; _sdcarddir._roughcaldir[1] @ 160
	.field  	72,16			; _sdcarddir._roughcaldir[2] @ 176
	.field  	67,16			; _sdcarddir._roughcaldir[3] @ 192
	.field  	65,16			; _sdcarddir._roughcaldir[4] @ 208
	.field  	76,16			; _sdcarddir._roughcaldir[5] @ 224
	.field  	0,16			; _sdcarddir._roughcaldir[6] @ 240
	.space	32
	.field  	70,16			; _sdcarddir._finecaldir[0] @ 288
	.field  	73,16			; _sdcarddir._finecaldir[1] @ 304
	.field  	78,16			; _sdcarddir._finecaldir[2] @ 320
	.field  	69,16			; _sdcarddir._finecaldir[3] @ 336
	.field  	67,16			; _sdcarddir._finecaldir[4] @ 352
	.field  	65,16			; _sdcarddir._finecaldir[5] @ 368
	.field  	76,16			; _sdcarddir._finecaldir[6] @ 384
	.field  	0,16			; _sdcarddir._finecaldir[7] @ 400
	.space	16
	.field  	67,16			; _sdcarddir._configdir[0] @ 432
	.field  	79,16			; _sdcarddir._configdir[1] @ 448
	.field  	78,16			; _sdcarddir._configdir[2] @ 464
	.field  	70,16			; _sdcarddir._configdir[3] @ 480
	.field  	73,16			; _sdcarddir._configdir[4] @ 496
	.field  	71,16			; _sdcarddir._configdir[5] @ 512
	.field  	0,16			; _sdcarddir._configdir[6] @ 528
	.space	32
	.field  	83,16			; _sdcarddir._sterm[0] @ 576
	.field  	84,16			; _sdcarddir._sterm[1] @ 592
	.field  	0,16			; _sdcarddir._sterm[2] @ 608
	.space	96
	.field  	76,16			; _sdcarddir._lterm[0] @ 720
	.field  	84,16			; _sdcarddir._lterm[1] @ 736
	.field  	0,16			; _sdcarddir._lterm[2] @ 752
	.space	96

DW$184	.dwtag  DW_TAG_variable, DW_AT_name("sdcarddir"), DW_AT_symbol_name("_sdcarddir")
	.dwattr DW$184, DW_AT_location[DW_OP_addr _sdcarddir]
	.dwattr DW$184, DW_AT_type(*DW$T$381)
	.dwattr DW$184, DW_AT_external(0x01)
	.global	_sensor_failure
	.sect	".econst"
	.align	1
_sensor_failure:
	.field  	71,16			; _sensor_failure[0] @ 0
	.field  	48,16			; _sensor_failure[1] @ 16
	.field  	48,16			; _sensor_failure[2] @ 32
	.field  	49,16			; _sensor_failure[3] @ 48
	.field  	32,16			; _sensor_failure[4] @ 64
	.field  	83,16			; _sensor_failure[5] @ 80
	.field  	101,16			; _sensor_failure[6] @ 96
	.field  	110,16			; _sensor_failure[7] @ 112
	.field  	115,16			; _sensor_failure[8] @ 128
	.field  	111,16			; _sensor_failure[9] @ 144
	.field  	114,16			; _sensor_failure[10] @ 160
	.field  	32,16			; _sensor_failure[11] @ 176
	.field  	70,16			; _sensor_failure[12] @ 192
	.field  	97,16			; _sensor_failure[13] @ 208
	.field  	105,16			; _sensor_failure[14] @ 224
	.field  	108,16			; _sensor_failure[15] @ 240
	.field  	117,16			; _sensor_failure[16] @ 256
	.field  	114,16			; _sensor_failure[17] @ 272
	.field  	101,16			; _sensor_failure[18] @ 288
	.field  	32,16			; _sensor_failure[19] @ 304
	.field  	32,16			; _sensor_failure[20] @ 320
	.field  	32,16			; _sensor_failure[21] @ 336
	.field  	32,16			; _sensor_failure[22] @ 352
	.field  	32,16			; _sensor_failure[23] @ 368
	.field  	32,16			; _sensor_failure[24] @ 384
	.field  	32,16			; _sensor_failure[25] @ 400
	.field  	32,16			; _sensor_failure[26] @ 416
	.field  	32,16			; _sensor_failure[27] @ 432
	.field  	32,16			; _sensor_failure[28] @ 448
	.field  	32,16			; _sensor_failure[29] @ 464
	.field  	32,16			; _sensor_failure[30] @ 480
	.field  	32,16			; _sensor_failure[31] @ 496
	.field  	32,16			; _sensor_failure[32] @ 512
	.field  	32,16			; _sensor_failure[33] @ 528
	.field  	32,16			; _sensor_failure[34] @ 544
	.field  	32,16			; _sensor_failure[35] @ 560
	.field  	32,16			; _sensor_failure[36] @ 576
	.field  	32,16			; _sensor_failure[37] @ 592
	.field  	32,16			; _sensor_failure[38] @ 608
	.field  	32,16			; _sensor_failure[39] @ 624
	.field  	32,16			; _sensor_failure[40] @ 640
	.field  	32,16			; _sensor_failure[41] @ 656
	.field  	32,16			; _sensor_failure[42] @ 672
	.field  	32,16			; _sensor_failure[43] @ 688
	.field  	32,16			; _sensor_failure[44] @ 704
	.field  	32,16			; _sensor_failure[45] @ 720
	.field  	32,16			; _sensor_failure[46] @ 736
	.field  	32,16			; _sensor_failure[47] @ 752
	.field  	0,16			; _sensor_failure[48] @ 768
	.space	16

DW$185	.dwtag  DW_TAG_variable, DW_AT_name("sensor_failure"), DW_AT_symbol_name("_sensor_failure")
	.dwattr DW$185, DW_AT_location[DW_OP_addr _sensor_failure]
	.dwattr DW$185, DW_AT_type(*DW$T$307)
	.dwattr DW$185, DW_AT_external(0x01)
	.global	_sensor_slowdown
	.sect	".econst"
	.align	1
_sensor_slowdown:
	.field  	83,16			; _sensor_slowdown[0] @ 0
	.field  	48,16			; _sensor_slowdown[1] @ 16
	.field  	48,16			; _sensor_slowdown[2] @ 32
	.field  	49,16			; _sensor_slowdown[3] @ 48
	.field  	32,16			; _sensor_slowdown[4] @ 64
	.field  	83,16			; _sensor_slowdown[5] @ 80
	.field  	101,16			; _sensor_slowdown[6] @ 96
	.field  	110,16			; _sensor_slowdown[7] @ 112
	.field  	115,16			; _sensor_slowdown[8] @ 128
	.field  	111,16			; _sensor_slowdown[9] @ 144
	.field  	114,16			; _sensor_slowdown[10] @ 160
	.field  	32,16			; _sensor_slowdown[11] @ 176
	.field  	83,16			; _sensor_slowdown[12] @ 192
	.field  	108,16			; _sensor_slowdown[13] @ 208
	.field  	111,16			; _sensor_slowdown[14] @ 224
	.field  	119,16			; _sensor_slowdown[15] @ 240
	.field  	32,16			; _sensor_slowdown[16] @ 256
	.field  	68,16			; _sensor_slowdown[17] @ 272
	.field  	111,16			; _sensor_slowdown[18] @ 288
	.field  	119,16			; _sensor_slowdown[19] @ 304
	.field  	110,16			; _sensor_slowdown[20] @ 320
	.field  	32,16			; _sensor_slowdown[21] @ 336
	.field  	76,16			; _sensor_slowdown[22] @ 352
	.field  	101,16			; _sensor_slowdown[23] @ 368
	.field  	118,16			; _sensor_slowdown[24] @ 384
	.field  	101,16			; _sensor_slowdown[25] @ 400
	.field  	108,16			; _sensor_slowdown[26] @ 416
	.field  	32,16			; _sensor_slowdown[27] @ 432
	.field  	82,16			; _sensor_slowdown[28] @ 448
	.field  	101,16			; _sensor_slowdown[29] @ 464
	.field  	97,16			; _sensor_slowdown[30] @ 480
	.field  	99,16			; _sensor_slowdown[31] @ 496
	.field  	104,16			; _sensor_slowdown[32] @ 512
	.field  	101,16			; _sensor_slowdown[33] @ 528
	.field  	100,16			; _sensor_slowdown[34] @ 544
	.field  	32,16			; _sensor_slowdown[35] @ 560
	.field  	32,16			; _sensor_slowdown[36] @ 576
	.field  	32,16			; _sensor_slowdown[37] @ 592
	.field  	32,16			; _sensor_slowdown[38] @ 608
	.field  	32,16			; _sensor_slowdown[39] @ 624
	.field  	32,16			; _sensor_slowdown[40] @ 640
	.field  	32,16			; _sensor_slowdown[41] @ 656
	.field  	32,16			; _sensor_slowdown[42] @ 672
	.field  	32,16			; _sensor_slowdown[43] @ 688
	.field  	32,16			; _sensor_slowdown[44] @ 704
	.field  	32,16			; _sensor_slowdown[45] @ 720
	.field  	32,16			; _sensor_slowdown[46] @ 736
	.field  	32,16			; _sensor_slowdown[47] @ 752
	.field  	0,16			; _sensor_slowdown[48] @ 768
	.space	16

DW$186	.dwtag  DW_TAG_variable, DW_AT_name("sensor_slowdown"), DW_AT_symbol_name("_sensor_slowdown")
	.dwattr DW$186, DW_AT_location[DW_OP_addr _sensor_slowdown]
	.dwattr DW$186, DW_AT_type(*DW$T$307)
	.dwattr DW$186, DW_AT_external(0x01)
	.global	_sensor_alarm
	.sect	".econst"
	.align	1
_sensor_alarm:
	.field  	65,16			; _sensor_alarm[0] @ 0
	.field  	48,16			; _sensor_alarm[1] @ 16
	.field  	48,16			; _sensor_alarm[2] @ 32
	.field  	49,16			; _sensor_alarm[3] @ 48
	.field  	32,16			; _sensor_alarm[4] @ 64
	.field  	83,16			; _sensor_alarm[5] @ 80
	.field  	101,16			; _sensor_alarm[6] @ 96
	.field  	110,16			; _sensor_alarm[7] @ 112
	.field  	115,16			; _sensor_alarm[8] @ 128
	.field  	111,16			; _sensor_alarm[9] @ 144
	.field  	114,16			; _sensor_alarm[10] @ 160
	.field  	32,16			; _sensor_alarm[11] @ 176
	.field  	65,16			; _sensor_alarm[12] @ 192
	.field  	108,16			; _sensor_alarm[13] @ 208
	.field  	97,16			; _sensor_alarm[14] @ 224
	.field  	114,16			; _sensor_alarm[15] @ 240
	.field  	109,16			; _sensor_alarm[16] @ 256
	.field  	32,16			; _sensor_alarm[17] @ 272
	.field  	76,16			; _sensor_alarm[18] @ 288
	.field  	101,16			; _sensor_alarm[19] @ 304
	.field  	118,16			; _sensor_alarm[20] @ 320
	.field  	101,16			; _sensor_alarm[21] @ 336
	.field  	108,16			; _sensor_alarm[22] @ 352
	.field  	32,16			; _sensor_alarm[23] @ 368
	.field  	82,16			; _sensor_alarm[24] @ 384
	.field  	101,16			; _sensor_alarm[25] @ 400
	.field  	97,16			; _sensor_alarm[26] @ 416
	.field  	99,16			; _sensor_alarm[27] @ 432
	.field  	104,16			; _sensor_alarm[28] @ 448
	.field  	101,16			; _sensor_alarm[29] @ 464
	.field  	100,16			; _sensor_alarm[30] @ 480
	.field  	32,16			; _sensor_alarm[31] @ 496
	.field  	32,16			; _sensor_alarm[32] @ 512
	.field  	32,16			; _sensor_alarm[33] @ 528
	.field  	32,16			; _sensor_alarm[34] @ 544
	.field  	32,16			; _sensor_alarm[35] @ 560
	.field  	32,16			; _sensor_alarm[36] @ 576
	.field  	32,16			; _sensor_alarm[37] @ 592
	.field  	32,16			; _sensor_alarm[38] @ 608
	.field  	32,16			; _sensor_alarm[39] @ 624
	.field  	32,16			; _sensor_alarm[40] @ 640
	.field  	32,16			; _sensor_alarm[41] @ 656
	.field  	32,16			; _sensor_alarm[42] @ 672
	.field  	32,16			; _sensor_alarm[43] @ 688
	.field  	32,16			; _sensor_alarm[44] @ 704
	.field  	32,16			; _sensor_alarm[45] @ 720
	.field  	32,16			; _sensor_alarm[46] @ 736
	.field  	32,16			; _sensor_alarm[47] @ 752
	.field  	0,16			; _sensor_alarm[48] @ 768
	.space	16

DW$187	.dwtag  DW_TAG_variable, DW_AT_name("sensor_alarm"), DW_AT_symbol_name("_sensor_alarm")
	.dwattr DW$187, DW_AT_location[DW_OP_addr _sensor_alarm]
	.dwattr DW$187, DW_AT_type(*DW$T$307)
	.dwattr DW$187, DW_AT_external(0x01)
	.global	_devsensor_slowdown
	.sect	".econst"
	.align	1
_devsensor_slowdown:
	.field  	83,16			; _devsensor_slowdown[0] @ 0
	.field  	48,16			; _devsensor_slowdown[1] @ 16
	.field  	48,16			; _devsensor_slowdown[2] @ 32
	.field  	50,16			; _devsensor_slowdown[3] @ 48
	.field  	32,16			; _devsensor_slowdown[4] @ 64
	.field  	83,16			; _devsensor_slowdown[5] @ 80
	.field  	101,16			; _devsensor_slowdown[6] @ 96
	.field  	110,16			; _devsensor_slowdown[7] @ 112
	.field  	115,16			; _devsensor_slowdown[8] @ 128
	.field  	111,16			; _devsensor_slowdown[9] @ 144
	.field  	114,16			; _devsensor_slowdown[10] @ 160
	.field  	32,16			; _devsensor_slowdown[11] @ 176
	.field  	83,16			; _devsensor_slowdown[12] @ 192
	.field  	108,16			; _devsensor_slowdown[13] @ 208
	.field  	111,16			; _devsensor_slowdown[14] @ 224
	.field  	119,16			; _devsensor_slowdown[15] @ 240
	.field  	32,16			; _devsensor_slowdown[16] @ 256
	.field  	68,16			; _devsensor_slowdown[17] @ 272
	.field  	111,16			; _devsensor_slowdown[18] @ 288
	.field  	119,16			; _devsensor_slowdown[19] @ 304
	.field  	110,16			; _devsensor_slowdown[20] @ 320
	.field  	32,16			; _devsensor_slowdown[21] @ 336
	.field  	68,16			; _devsensor_slowdown[22] @ 352
	.field  	101,16			; _devsensor_slowdown[23] @ 368
	.field  	118,16			; _devsensor_slowdown[24] @ 384
	.field  	105,16			; _devsensor_slowdown[25] @ 400
	.field  	97,16			; _devsensor_slowdown[26] @ 416
	.field  	116,16			; _devsensor_slowdown[27] @ 432
	.field  	105,16			; _devsensor_slowdown[28] @ 448
	.field  	111,16			; _devsensor_slowdown[29] @ 464
	.field  	110,16			; _devsensor_slowdown[30] @ 480
	.field  	32,16			; _devsensor_slowdown[31] @ 496
	.field  	76,16			; _devsensor_slowdown[32] @ 512
	.field  	101,16			; _devsensor_slowdown[33] @ 528
	.field  	118,16			; _devsensor_slowdown[34] @ 544
	.field  	101,16			; _devsensor_slowdown[35] @ 560
	.field  	108,16			; _devsensor_slowdown[36] @ 576
	.field  	32,16			; _devsensor_slowdown[37] @ 592
	.field  	82,16			; _devsensor_slowdown[38] @ 608
	.field  	101,16			; _devsensor_slowdown[39] @ 624
	.field  	97,16			; _devsensor_slowdown[40] @ 640
	.field  	99,16			; _devsensor_slowdown[41] @ 656
	.field  	104,16			; _devsensor_slowdown[42] @ 672
	.field  	101,16			; _devsensor_slowdown[43] @ 688
	.field  	100,16			; _devsensor_slowdown[44] @ 704
	.field  	32,16			; _devsensor_slowdown[45] @ 720
	.field  	32,16			; _devsensor_slowdown[46] @ 736
	.field  	32,16			; _devsensor_slowdown[47] @ 752
	.field  	0,16			; _devsensor_slowdown[48] @ 768
	.space	16

DW$188	.dwtag  DW_TAG_variable, DW_AT_name("devsensor_slowdown"), DW_AT_symbol_name("_devsensor_slowdown")
	.dwattr DW$188, DW_AT_location[DW_OP_addr _devsensor_slowdown]
	.dwattr DW$188, DW_AT_type(*DW$T$307)
	.dwattr DW$188, DW_AT_external(0x01)
	.global	_devsensor_alarm
	.sect	".econst"
	.align	1
_devsensor_alarm:
	.field  	65,16			; _devsensor_alarm[0] @ 0
	.field  	48,16			; _devsensor_alarm[1] @ 16
	.field  	48,16			; _devsensor_alarm[2] @ 32
	.field  	50,16			; _devsensor_alarm[3] @ 48
	.field  	32,16			; _devsensor_alarm[4] @ 64
	.field  	83,16			; _devsensor_alarm[5] @ 80
	.field  	101,16			; _devsensor_alarm[6] @ 96
	.field  	110,16			; _devsensor_alarm[7] @ 112
	.field  	115,16			; _devsensor_alarm[8] @ 128
	.field  	111,16			; _devsensor_alarm[9] @ 144
	.field  	114,16			; _devsensor_alarm[10] @ 160
	.field  	32,16			; _devsensor_alarm[11] @ 176
	.field  	65,16			; _devsensor_alarm[12] @ 192
	.field  	108,16			; _devsensor_alarm[13] @ 208
	.field  	97,16			; _devsensor_alarm[14] @ 224
	.field  	114,16			; _devsensor_alarm[15] @ 240
	.field  	109,16			; _devsensor_alarm[16] @ 256
	.field  	32,16			; _devsensor_alarm[17] @ 272
	.field  	68,16			; _devsensor_alarm[18] @ 288
	.field  	101,16			; _devsensor_alarm[19] @ 304
	.field  	118,16			; _devsensor_alarm[20] @ 320
	.field  	105,16			; _devsensor_alarm[21] @ 336
	.field  	97,16			; _devsensor_alarm[22] @ 352
	.field  	116,16			; _devsensor_alarm[23] @ 368
	.field  	105,16			; _devsensor_alarm[24] @ 384
	.field  	111,16			; _devsensor_alarm[25] @ 400
	.field  	110,16			; _devsensor_alarm[26] @ 416
	.field  	32,16			; _devsensor_alarm[27] @ 432
	.field  	76,16			; _devsensor_alarm[28] @ 448
	.field  	101,16			; _devsensor_alarm[29] @ 464
	.field  	118,16			; _devsensor_alarm[30] @ 480
	.field  	101,16			; _devsensor_alarm[31] @ 496
	.field  	108,16			; _devsensor_alarm[32] @ 512
	.field  	32,16			; _devsensor_alarm[33] @ 528
	.field  	82,16			; _devsensor_alarm[34] @ 544
	.field  	101,16			; _devsensor_alarm[35] @ 560
	.field  	97,16			; _devsensor_alarm[36] @ 576
	.field  	99,16			; _devsensor_alarm[37] @ 592
	.field  	104,16			; _devsensor_alarm[38] @ 608
	.field  	101,16			; _devsensor_alarm[39] @ 624
	.field  	100,16			; _devsensor_alarm[40] @ 640
	.field  	32,16			; _devsensor_alarm[41] @ 656
	.field  	32,16			; _devsensor_alarm[42] @ 672
	.field  	32,16			; _devsensor_alarm[43] @ 688
	.field  	32,16			; _devsensor_alarm[44] @ 704
	.field  	32,16			; _devsensor_alarm[45] @ 720
	.field  	32,16			; _devsensor_alarm[46] @ 736
	.field  	32,16			; _devsensor_alarm[47] @ 752
	.field  	0,16			; _devsensor_alarm[48] @ 768
	.space	16

DW$189	.dwtag  DW_TAG_variable, DW_AT_name("devsensor_alarm"), DW_AT_symbol_name("_devsensor_alarm")
	.dwattr DW$189, DW_AT_location[DW_OP_addr _devsensor_alarm]
	.dwattr DW$189, DW_AT_type(*DW$T$307)
	.dwattr DW$189, DW_AT_external(0x01)
	.global	_cylinderdev_alarm
	.sect	".econst"
	.align	1
_cylinderdev_alarm:
	.field  	67,16			; _cylinderdev_alarm[0] @ 0
	.field  	48,16			; _cylinderdev_alarm[1] @ 16
	.field  	48,16			; _cylinderdev_alarm[2] @ 32
	.field  	49,16			; _cylinderdev_alarm[3] @ 48
	.field  	32,16			; _cylinderdev_alarm[4] @ 64
	.field  	67,16			; _cylinderdev_alarm[5] @ 80
	.field  	121,16			; _cylinderdev_alarm[6] @ 96
	.field  	108,16			; _cylinderdev_alarm[7] @ 112
	.field  	105,16			; _cylinderdev_alarm[8] @ 128
	.field  	110,16			; _cylinderdev_alarm[9] @ 144
	.field  	100,16			; _cylinderdev_alarm[10] @ 160
	.field  	101,16			; _cylinderdev_alarm[11] @ 176
	.field  	114,16			; _cylinderdev_alarm[12] @ 192
	.field  	32,16			; _cylinderdev_alarm[13] @ 208
	.field  	68,16			; _cylinderdev_alarm[14] @ 224
	.field  	101,16			; _cylinderdev_alarm[15] @ 240
	.field  	118,16			; _cylinderdev_alarm[16] @ 256
	.field  	105,16			; _cylinderdev_alarm[17] @ 272
	.field  	97,16			; _cylinderdev_alarm[18] @ 288
	.field  	116,16			; _cylinderdev_alarm[19] @ 304
	.field  	105,16			; _cylinderdev_alarm[20] @ 320
	.field  	111,16			; _cylinderdev_alarm[21] @ 336
	.field  	110,16			; _cylinderdev_alarm[22] @ 352
	.field  	32,16			; _cylinderdev_alarm[23] @ 368
	.field  	65,16			; _cylinderdev_alarm[24] @ 384
	.field  	108,16			; _cylinderdev_alarm[25] @ 400
	.field  	97,16			; _cylinderdev_alarm[26] @ 416
	.field  	114,16			; _cylinderdev_alarm[27] @ 432
	.field  	109,16			; _cylinderdev_alarm[28] @ 448
	.field  	32,16			; _cylinderdev_alarm[29] @ 464
	.field  	76,16			; _cylinderdev_alarm[30] @ 480
	.field  	101,16			; _cylinderdev_alarm[31] @ 496
	.field  	118,16			; _cylinderdev_alarm[32] @ 512
	.field  	101,16			; _cylinderdev_alarm[33] @ 528
	.field  	108,16			; _cylinderdev_alarm[34] @ 544
	.field  	32,16			; _cylinderdev_alarm[35] @ 560
	.field  	82,16			; _cylinderdev_alarm[36] @ 576
	.field  	101,16			; _cylinderdev_alarm[37] @ 592
	.field  	97,16			; _cylinderdev_alarm[38] @ 608
	.field  	99,16			; _cylinderdev_alarm[39] @ 624
	.field  	104,16			; _cylinderdev_alarm[40] @ 640
	.field  	101,16			; _cylinderdev_alarm[41] @ 656
	.field  	100,16			; _cylinderdev_alarm[42] @ 672
	.field  	32,16			; _cylinderdev_alarm[43] @ 688
	.field  	32,16			; _cylinderdev_alarm[44] @ 704
	.field  	32,16			; _cylinderdev_alarm[45] @ 720
	.field  	32,16			; _cylinderdev_alarm[46] @ 736
	.field  	32,16			; _cylinderdev_alarm[47] @ 752
	.field  	0,16			; _cylinderdev_alarm[48] @ 768
	.space	16

DW$190	.dwtag  DW_TAG_variable, DW_AT_name("cylinderdev_alarm"), DW_AT_symbol_name("_cylinderdev_alarm")
	.dwattr DW$190, DW_AT_location[DW_OP_addr _cylinderdev_alarm]
	.dwattr DW$190, DW_AT_type(*DW$T$307)
	.dwattr DW$190, DW_AT_external(0x01)
	.global	_full_auto_calibration
	.sect	".econst"
	.align	1
_full_auto_calibration:
	.field  	71,16			; _full_auto_calibration[0] @ 0
	.field  	48,16			; _full_auto_calibration[1] @ 16
	.field  	48,16			; _full_auto_calibration[2] @ 32
	.field  	50,16			; _full_auto_calibration[3] @ 48
	.field  	32,16			; _full_auto_calibration[4] @ 64
	.field  	70,16			; _full_auto_calibration[5] @ 80
	.field  	117,16			; _full_auto_calibration[6] @ 96
	.field  	108,16			; _full_auto_calibration[7] @ 112
	.field  	108,16			; _full_auto_calibration[8] @ 128
	.field  	32,16			; _full_auto_calibration[9] @ 144
	.field  	69,16			; _full_auto_calibration[10] @ 160
	.field  	110,16			; _full_auto_calibration[11] @ 176
	.field  	103,16			; _full_auto_calibration[12] @ 192
	.field  	105,16			; _full_auto_calibration[13] @ 208
	.field  	110,16			; _full_auto_calibration[14] @ 224
	.field  	101,16			; _full_auto_calibration[15] @ 240
	.field  	32,16			; _full_auto_calibration[16] @ 256
	.field  	76,16			; _full_auto_calibration[17] @ 272
	.field  	101,16			; _full_auto_calibration[18] @ 288
	.field  	97,16			; _full_auto_calibration[19] @ 304
	.field  	114,16			; _full_auto_calibration[20] @ 320
	.field  	110,16			; _full_auto_calibration[21] @ 336
	.field  	105,16			; _full_auto_calibration[22] @ 352
	.field  	110,16			; _full_auto_calibration[23] @ 368
	.field  	103,16			; _full_auto_calibration[24] @ 384
	.field  	32,16			; _full_auto_calibration[25] @ 400
	.field  	73,16			; _full_auto_calibration[26] @ 416
	.field  	110,16			; _full_auto_calibration[27] @ 432
	.field  	105,16			; _full_auto_calibration[28] @ 448
	.field  	116,16			; _full_auto_calibration[29] @ 464
	.field  	105,16			; _full_auto_calibration[30] @ 480
	.field  	97,16			; _full_auto_calibration[31] @ 496
	.field  	116,16			; _full_auto_calibration[32] @ 512
	.field  	101,16			; _full_auto_calibration[33] @ 528
	.field  	100,16			; _full_auto_calibration[34] @ 544
	.field  	32,16			; _full_auto_calibration[35] @ 560
	.field  	32,16			; _full_auto_calibration[36] @ 576
	.field  	32,16			; _full_auto_calibration[37] @ 592
	.field  	32,16			; _full_auto_calibration[38] @ 608
	.field  	32,16			; _full_auto_calibration[39] @ 624
	.field  	32,16			; _full_auto_calibration[40] @ 640
	.field  	32,16			; _full_auto_calibration[41] @ 656
	.field  	32,16			; _full_auto_calibration[42] @ 672
	.field  	32,16			; _full_auto_calibration[43] @ 688
	.field  	32,16			; _full_auto_calibration[44] @ 704
	.field  	32,16			; _full_auto_calibration[45] @ 720
	.field  	32,16			; _full_auto_calibration[46] @ 736
	.field  	32,16			; _full_auto_calibration[47] @ 752
	.field  	0,16			; _full_auto_calibration[48] @ 768
	.space	16

DW$191	.dwtag  DW_TAG_variable, DW_AT_name("full_auto_calibration"), DW_AT_symbol_name("_full_auto_calibration")
	.dwattr DW$191, DW_AT_location[DW_OP_addr _full_auto_calibration]
	.dwattr DW$191, DW_AT_type(*DW$T$307)
	.dwattr DW$191, DW_AT_external(0x01)
	.global	_sensor_calibration
	.sect	".econst"
	.align	1
_sensor_calibration:
	.field  	71,16			; _sensor_calibration[0] @ 0
	.field  	48,16			; _sensor_calibration[1] @ 16
	.field  	48,16			; _sensor_calibration[2] @ 32
	.field  	51,16			; _sensor_calibration[3] @ 48
	.field  	32,16			; _sensor_calibration[4] @ 64
	.field  	83,16			; _sensor_calibration[5] @ 80
	.field  	101,16			; _sensor_calibration[6] @ 96
	.field  	110,16			; _sensor_calibration[7] @ 112
	.field  	115,16			; _sensor_calibration[8] @ 128
	.field  	111,16			; _sensor_calibration[9] @ 144
	.field  	114,16			; _sensor_calibration[10] @ 160
	.field  	32,16			; _sensor_calibration[11] @ 176
	.field  	67,16			; _sensor_calibration[12] @ 192
	.field  	97,16			; _sensor_calibration[13] @ 208
	.field  	108,16			; _sensor_calibration[14] @ 224
	.field  	105,16			; _sensor_calibration[15] @ 240
	.field  	98,16			; _sensor_calibration[16] @ 256
	.field  	114,16			; _sensor_calibration[17] @ 272
	.field  	97,16			; _sensor_calibration[18] @ 288
	.field  	116,16			; _sensor_calibration[19] @ 304
	.field  	105,16			; _sensor_calibration[20] @ 320
	.field  	111,16			; _sensor_calibration[21] @ 336
	.field  	110,16			; _sensor_calibration[22] @ 352
	.field  	32,16			; _sensor_calibration[23] @ 368
	.field  	32,16			; _sensor_calibration[24] @ 384
	.field  	32,16			; _sensor_calibration[25] @ 400
	.field  	32,16			; _sensor_calibration[26] @ 416
	.field  	32,16			; _sensor_calibration[27] @ 432
	.field  	32,16			; _sensor_calibration[28] @ 448
	.field  	32,16			; _sensor_calibration[29] @ 464
	.field  	32,16			; _sensor_calibration[30] @ 480
	.field  	32,16			; _sensor_calibration[31] @ 496
	.field  	32,16			; _sensor_calibration[32] @ 512
	.field  	32,16			; _sensor_calibration[33] @ 528
	.field  	32,16			; _sensor_calibration[34] @ 544
	.field  	32,16			; _sensor_calibration[35] @ 560
	.field  	32,16			; _sensor_calibration[36] @ 576
	.field  	32,16			; _sensor_calibration[37] @ 592
	.field  	32,16			; _sensor_calibration[38] @ 608
	.field  	32,16			; _sensor_calibration[39] @ 624
	.field  	32,16			; _sensor_calibration[40] @ 640
	.field  	32,16			; _sensor_calibration[41] @ 656
	.field  	32,16			; _sensor_calibration[42] @ 672
	.field  	32,16			; _sensor_calibration[43] @ 688
	.field  	32,16			; _sensor_calibration[44] @ 704
	.field  	32,16			; _sensor_calibration[45] @ 720
	.field  	32,16			; _sensor_calibration[46] @ 736
	.field  	32,16			; _sensor_calibration[47] @ 752
	.field  	0,16			; _sensor_calibration[48] @ 768
	.space	16

DW$192	.dwtag  DW_TAG_variable, DW_AT_name("sensor_calibration"), DW_AT_symbol_name("_sensor_calibration")
	.dwattr DW$192, DW_AT_location[DW_OP_addr _sensor_calibration]
	.dwattr DW$192, DW_AT_type(*DW$T$307)
	.dwattr DW$192, DW_AT_external(0x01)
	.global	_loss_of_comms_spu2
	.sect	".econst"
	.align	1
_loss_of_comms_spu2:
	.field  	71,16			; _loss_of_comms_spu2[0] @ 0
	.field  	48,16			; _loss_of_comms_spu2[1] @ 16
	.field  	48,16			; _loss_of_comms_spu2[2] @ 32
	.field  	52,16			; _loss_of_comms_spu2[3] @ 48
	.field  	32,16			; _loss_of_comms_spu2[4] @ 64
	.field  	76,16			; _loss_of_comms_spu2[5] @ 80
	.field  	111,16			; _loss_of_comms_spu2[6] @ 96
	.field  	115,16			; _loss_of_comms_spu2[7] @ 112
	.field  	115,16			; _loss_of_comms_spu2[8] @ 128
	.field  	32,16			; _loss_of_comms_spu2[9] @ 144
	.field  	111,16			; _loss_of_comms_spu2[10] @ 160
	.field  	102,16			; _loss_of_comms_spu2[11] @ 176
	.field  	32,16			; _loss_of_comms_spu2[12] @ 192
	.field  	67,16			; _loss_of_comms_spu2[13] @ 208
	.field  	111,16			; _loss_of_comms_spu2[14] @ 224
	.field  	109,16			; _loss_of_comms_spu2[15] @ 240
	.field  	109,16			; _loss_of_comms_spu2[16] @ 256
	.field  	117,16			; _loss_of_comms_spu2[17] @ 272
	.field  	110,16			; _loss_of_comms_spu2[18] @ 288
	.field  	105,16			; _loss_of_comms_spu2[19] @ 304
	.field  	99,16			; _loss_of_comms_spu2[20] @ 320
	.field  	97,16			; _loss_of_comms_spu2[21] @ 336
	.field  	116,16			; _loss_of_comms_spu2[22] @ 352
	.field  	105,16			; _loss_of_comms_spu2[23] @ 368
	.field  	111,16			; _loss_of_comms_spu2[24] @ 384
	.field  	110,16			; _loss_of_comms_spu2[25] @ 400
	.field  	115,16			; _loss_of_comms_spu2[26] @ 416
	.field  	32,16			; _loss_of_comms_spu2[27] @ 432
	.field  	116,16			; _loss_of_comms_spu2[28] @ 448
	.field  	111,16			; _loss_of_comms_spu2[29] @ 464
	.field  	32,16			; _loss_of_comms_spu2[30] @ 480
	.field  	83,16			; _loss_of_comms_spu2[31] @ 496
	.field  	108,16			; _loss_of_comms_spu2[32] @ 512
	.field  	97,16			; _loss_of_comms_spu2[33] @ 528
	.field  	118,16			; _loss_of_comms_spu2[34] @ 544
	.field  	101,16			; _loss_of_comms_spu2[35] @ 560
	.field  	32,16			; _loss_of_comms_spu2[36] @ 576
	.field  	83,16			; _loss_of_comms_spu2[37] @ 592
	.field  	80,16			; _loss_of_comms_spu2[38] @ 608
	.field  	85,16			; _loss_of_comms_spu2[39] @ 624
	.field  	32,16			; _loss_of_comms_spu2[40] @ 640
	.field  	32,16			; _loss_of_comms_spu2[41] @ 656
	.field  	32,16			; _loss_of_comms_spu2[42] @ 672
	.field  	32,16			; _loss_of_comms_spu2[43] @ 688
	.field  	32,16			; _loss_of_comms_spu2[44] @ 704
	.field  	32,16			; _loss_of_comms_spu2[45] @ 720
	.field  	32,16			; _loss_of_comms_spu2[46] @ 736
	.field  	32,16			; _loss_of_comms_spu2[47] @ 752
	.field  	0,16			; _loss_of_comms_spu2[48] @ 768
	.space	16

DW$193	.dwtag  DW_TAG_variable, DW_AT_name("loss_of_comms_spu2"), DW_AT_symbol_name("_loss_of_comms_spu2")
	.dwattr DW$193, DW_AT_location[DW_OP_addr _loss_of_comms_spu2]
	.dwattr DW$193, DW_AT_type(*DW$T$307)
	.dwattr DW$193, DW_AT_external(0x01)
	.global	_look_up_average_error
	.sect	".econst"
	.align	1
_look_up_average_error:
	.field  	71,16			; _look_up_average_error[0] @ 0
	.field  	48,16			; _look_up_average_error[1] @ 16
	.field  	48,16			; _look_up_average_error[2] @ 32
	.field  	53,16			; _look_up_average_error[3] @ 48
	.field  	32,16			; _look_up_average_error[4] @ 64
	.field  	76,16			; _look_up_average_error[5] @ 80
	.field  	111,16			; _look_up_average_error[6] @ 96
	.field  	111,16			; _look_up_average_error[7] @ 112
	.field  	107,16			; _look_up_average_error[8] @ 128
	.field  	45,16			; _look_up_average_error[9] @ 144
	.field  	117,16			; _look_up_average_error[10] @ 160
	.field  	112,16			; _look_up_average_error[11] @ 176
	.field  	32,16			; _look_up_average_error[12] @ 192
	.field  	65,16			; _look_up_average_error[13] @ 208
	.field  	118,16			; _look_up_average_error[14] @ 224
	.field  	101,16			; _look_up_average_error[15] @ 240
	.field  	114,16			; _look_up_average_error[16] @ 256
	.field  	97,16			; _look_up_average_error[17] @ 272
	.field  	103,16			; _look_up_average_error[18] @ 288
	.field  	105,16			; _look_up_average_error[19] @ 304
	.field  	110,16			; _look_up_average_error[20] @ 320
	.field  	103,16			; _look_up_average_error[21] @ 336
	.field  	32,16			; _look_up_average_error[22] @ 352
	.field  	69,16			; _look_up_average_error[23] @ 368
	.field  	114,16			; _look_up_average_error[24] @ 384
	.field  	114,16			; _look_up_average_error[25] @ 400
	.field  	111,16			; _look_up_average_error[26] @ 416
	.field  	114,16			; _look_up_average_error[27] @ 432
	.field  	32,16			; _look_up_average_error[28] @ 448
	.field  	32,16			; _look_up_average_error[29] @ 464
	.field  	32,16			; _look_up_average_error[30] @ 480
	.field  	32,16			; _look_up_average_error[31] @ 496
	.field  	32,16			; _look_up_average_error[32] @ 512
	.field  	32,16			; _look_up_average_error[33] @ 528
	.field  	32,16			; _look_up_average_error[34] @ 544
	.field  	32,16			; _look_up_average_error[35] @ 560
	.field  	32,16			; _look_up_average_error[36] @ 576
	.field  	32,16			; _look_up_average_error[37] @ 592
	.field  	32,16			; _look_up_average_error[38] @ 608
	.field  	32,16			; _look_up_average_error[39] @ 624
	.field  	32,16			; _look_up_average_error[40] @ 640
	.field  	32,16			; _look_up_average_error[41] @ 656
	.field  	32,16			; _look_up_average_error[42] @ 672
	.field  	32,16			; _look_up_average_error[43] @ 688
	.field  	32,16			; _look_up_average_error[44] @ 704
	.field  	32,16			; _look_up_average_error[45] @ 720
	.field  	32,16			; _look_up_average_error[46] @ 736
	.field  	32,16			; _look_up_average_error[47] @ 752
	.field  	0,16			; _look_up_average_error[48] @ 768
	.space	16

DW$194	.dwtag  DW_TAG_variable, DW_AT_name("look_up_average_error"), DW_AT_symbol_name("_look_up_average_error")
	.dwattr DW$194, DW_AT_location[DW_OP_addr _look_up_average_error]
	.dwattr DW$194, DW_AT_type(*DW$T$307)
	.dwattr DW$194, DW_AT_external(0x01)
	.global	_sdcardfail
	.sect	".econst"
	.align	1
_sdcardfail:
	.field  	71,16			; _sdcardfail[0] @ 0
	.field  	48,16			; _sdcardfail[1] @ 16
	.field  	48,16			; _sdcardfail[2] @ 32
	.field  	54,16			; _sdcardfail[3] @ 48
	.field  	32,16			; _sdcardfail[4] @ 64
	.field  	83,16			; _sdcardfail[5] @ 80
	.field  	68,16			; _sdcardfail[6] @ 96
	.field  	32,16			; _sdcardfail[7] @ 112
	.field  	67,16			; _sdcardfail[8] @ 128
	.field  	97,16			; _sdcardfail[9] @ 144
	.field  	114,16			; _sdcardfail[10] @ 160
	.field  	100,16			; _sdcardfail[11] @ 176
	.field  	32,16			; _sdcardfail[12] @ 192
	.field  	70,16			; _sdcardfail[13] @ 208
	.field  	97,16			; _sdcardfail[14] @ 224
	.field  	105,16			; _sdcardfail[15] @ 240
	.field  	108,16			; _sdcardfail[16] @ 256
	.field  	117,16			; _sdcardfail[17] @ 272
	.field  	114,16			; _sdcardfail[18] @ 288
	.field  	101,16			; _sdcardfail[19] @ 304
	.field  	32,16			; _sdcardfail[20] @ 320
	.field  	32,16			; _sdcardfail[21] @ 336
	.field  	32,16			; _sdcardfail[22] @ 352
	.field  	32,16			; _sdcardfail[23] @ 368
	.field  	32,16			; _sdcardfail[24] @ 384
	.field  	32,16			; _sdcardfail[25] @ 400
	.field  	32,16			; _sdcardfail[26] @ 416
	.field  	32,16			; _sdcardfail[27] @ 432
	.field  	32,16			; _sdcardfail[28] @ 448
	.field  	32,16			; _sdcardfail[29] @ 464
	.field  	32,16			; _sdcardfail[30] @ 480
	.field  	32,16			; _sdcardfail[31] @ 496
	.field  	32,16			; _sdcardfail[32] @ 512
	.field  	32,16			; _sdcardfail[33] @ 528
	.field  	32,16			; _sdcardfail[34] @ 544
	.field  	32,16			; _sdcardfail[35] @ 560
	.field  	32,16			; _sdcardfail[36] @ 576
	.field  	32,16			; _sdcardfail[37] @ 592
	.field  	32,16			; _sdcardfail[38] @ 608
	.field  	32,16			; _sdcardfail[39] @ 624
	.field  	32,16			; _sdcardfail[40] @ 640
	.field  	32,16			; _sdcardfail[41] @ 656
	.field  	32,16			; _sdcardfail[42] @ 672
	.field  	32,16			; _sdcardfail[43] @ 688
	.field  	32,16			; _sdcardfail[44] @ 704
	.field  	32,16			; _sdcardfail[45] @ 720
	.field  	32,16			; _sdcardfail[46] @ 736
	.field  	32,16			; _sdcardfail[47] @ 752
	.field  	0,16			; _sdcardfail[48] @ 768
	.space	16

DW$195	.dwtag  DW_TAG_variable, DW_AT_name("sdcardfail"), DW_AT_symbol_name("_sdcardfail")
	.dwattr DW$195, DW_AT_location[DW_OP_addr _sdcardfail]
	.dwattr DW$195, DW_AT_type(*DW$T$307)
	.dwattr DW$195, DW_AT_external(0x01)
	.global	_wio_upperalarm
	.sect	".econst"
	.align	1
_wio_upperalarm:
	.field  	87,16			; _wio_upperalarm[0] @ 0
	.field  	48,16			; _wio_upperalarm[1] @ 16
	.field  	48,16			; _wio_upperalarm[2] @ 32
	.field  	50,16			; _wio_upperalarm[3] @ 48
	.field  	32,16			; _wio_upperalarm[4] @ 64
	.field  	87,16			; _wio_upperalarm[5] @ 80
	.field  	97,16			; _wio_upperalarm[6] @ 96
	.field  	116,16			; _wio_upperalarm[7] @ 112
	.field  	101,16			; _wio_upperalarm[8] @ 128
	.field  	114,16			; _wio_upperalarm[9] @ 144
	.field  	32,16			; _wio_upperalarm[10] @ 160
	.field  	105,16			; _wio_upperalarm[11] @ 176
	.field  	110,16			; _wio_upperalarm[12] @ 192
	.field  	32,16			; _wio_upperalarm[13] @ 208
	.field  	79,16			; _wio_upperalarm[14] @ 224
	.field  	105,16			; _wio_upperalarm[15] @ 240
	.field  	108,16			; _wio_upperalarm[16] @ 256
	.field  	32,16			; _wio_upperalarm[17] @ 272
	.field  	65,16			; _wio_upperalarm[18] @ 288
	.field  	108,16			; _wio_upperalarm[19] @ 304
	.field  	97,16			; _wio_upperalarm[20] @ 320
	.field  	114,16			; _wio_upperalarm[21] @ 336
	.field  	109,16			; _wio_upperalarm[22] @ 352
	.field  	32,16			; _wio_upperalarm[23] @ 368
	.field  	32,16			; _wio_upperalarm[24] @ 384
	.field  	32,16			; _wio_upperalarm[25] @ 400
	.field  	32,16			; _wio_upperalarm[26] @ 416
	.field  	32,16			; _wio_upperalarm[27] @ 432
	.field  	32,16			; _wio_upperalarm[28] @ 448
	.field  	32,16			; _wio_upperalarm[29] @ 464
	.field  	32,16			; _wio_upperalarm[30] @ 480
	.field  	32,16			; _wio_upperalarm[31] @ 496
	.field  	32,16			; _wio_upperalarm[32] @ 512
	.field  	32,16			; _wio_upperalarm[33] @ 528
	.field  	32,16			; _wio_upperalarm[34] @ 544
	.field  	32,16			; _wio_upperalarm[35] @ 560
	.field  	32,16			; _wio_upperalarm[36] @ 576
	.field  	32,16			; _wio_upperalarm[37] @ 592
	.field  	32,16			; _wio_upperalarm[38] @ 608
	.field  	32,16			; _wio_upperalarm[39] @ 624
	.field  	32,16			; _wio_upperalarm[40] @ 640
	.field  	32,16			; _wio_upperalarm[41] @ 656
	.field  	32,16			; _wio_upperalarm[42] @ 672
	.field  	32,16			; _wio_upperalarm[43] @ 688
	.field  	32,16			; _wio_upperalarm[44] @ 704
	.field  	32,16			; _wio_upperalarm[45] @ 720
	.field  	32,16			; _wio_upperalarm[46] @ 736
	.field  	32,16			; _wio_upperalarm[47] @ 752
	.field  	0,16			; _wio_upperalarm[48] @ 768
	.space	16

DW$196	.dwtag  DW_TAG_variable, DW_AT_name("wio_upperalarm"), DW_AT_symbol_name("_wio_upperalarm")
	.dwattr DW$196, DW_AT_location[DW_OP_addr _wio_upperalarm]
	.dwattr DW$196, DW_AT_type(*DW$T$307)
	.dwattr DW$196, DW_AT_external(0x01)
	.global	_wio_alarm
	.sect	".econst"
	.align	1
_wio_alarm:
	.field  	87,16			; _wio_alarm[0] @ 0
	.field  	48,16			; _wio_alarm[1] @ 16
	.field  	48,16			; _wio_alarm[2] @ 32
	.field  	49,16			; _wio_alarm[3] @ 48
	.field  	32,16			; _wio_alarm[4] @ 64
	.field  	87,16			; _wio_alarm[5] @ 80
	.field  	97,16			; _wio_alarm[6] @ 96
	.field  	116,16			; _wio_alarm[7] @ 112
	.field  	101,16			; _wio_alarm[8] @ 128
	.field  	114,16			; _wio_alarm[9] @ 144
	.field  	32,16			; _wio_alarm[10] @ 160
	.field  	105,16			; _wio_alarm[11] @ 176
	.field  	110,16			; _wio_alarm[12] @ 192
	.field  	32,16			; _wio_alarm[13] @ 208
	.field  	79,16			; _wio_alarm[14] @ 224
	.field  	105,16			; _wio_alarm[15] @ 240
	.field  	108,16			; _wio_alarm[16] @ 256
	.field  	32,16			; _wio_alarm[17] @ 272
	.field  	65,16			; _wio_alarm[18] @ 288
	.field  	108,16			; _wio_alarm[19] @ 304
	.field  	97,16			; _wio_alarm[20] @ 320
	.field  	114,16			; _wio_alarm[21] @ 336
	.field  	109,16			; _wio_alarm[22] @ 352
	.field  	32,16			; _wio_alarm[23] @ 368
	.field  	32,16			; _wio_alarm[24] @ 384
	.field  	32,16			; _wio_alarm[25] @ 400
	.field  	32,16			; _wio_alarm[26] @ 416
	.field  	32,16			; _wio_alarm[27] @ 432
	.field  	32,16			; _wio_alarm[28] @ 448
	.field  	32,16			; _wio_alarm[29] @ 464
	.field  	32,16			; _wio_alarm[30] @ 480
	.field  	32,16			; _wio_alarm[31] @ 496
	.field  	32,16			; _wio_alarm[32] @ 512
	.field  	32,16			; _wio_alarm[33] @ 528
	.field  	32,16			; _wio_alarm[34] @ 544
	.field  	32,16			; _wio_alarm[35] @ 560
	.field  	32,16			; _wio_alarm[36] @ 576
	.field  	32,16			; _wio_alarm[37] @ 592
	.field  	32,16			; _wio_alarm[38] @ 608
	.field  	32,16			; _wio_alarm[39] @ 624
	.field  	32,16			; _wio_alarm[40] @ 640
	.field  	32,16			; _wio_alarm[41] @ 656
	.field  	32,16			; _wio_alarm[42] @ 672
	.field  	32,16			; _wio_alarm[43] @ 688
	.field  	32,16			; _wio_alarm[44] @ 704
	.field  	32,16			; _wio_alarm[45] @ 720
	.field  	32,16			; _wio_alarm[46] @ 736
	.field  	32,16			; _wio_alarm[47] @ 752
	.field  	0,16			; _wio_alarm[48] @ 768
	.space	16

DW$197	.dwtag  DW_TAG_variable, DW_AT_name("wio_alarm"), DW_AT_symbol_name("_wio_alarm")
	.dwattr DW$197, DW_AT_location[DW_OP_addr _wio_alarm]
	.dwattr DW$197, DW_AT_type(*DW$T$307)
	.dwattr DW$197, DW_AT_external(0x01)
	.global	_cal_abort
	.sect	".econst"
	.align	1
_cal_abort:
	.field  	71,16			; _cal_abort[0] @ 0
	.field  	48,16			; _cal_abort[1] @ 16
	.field  	48,16			; _cal_abort[2] @ 32
	.field  	55,16			; _cal_abort[3] @ 48
	.field  	32,16			; _cal_abort[4] @ 64
	.field  	69,16			; _cal_abort[5] @ 80
	.field  	110,16			; _cal_abort[6] @ 96
	.field  	103,16			; _cal_abort[7] @ 112
	.field  	105,16			; _cal_abort[8] @ 128
	.field  	110,16			; _cal_abort[9] @ 144
	.field  	101,16			; _cal_abort[10] @ 160
	.field  	32,16			; _cal_abort[11] @ 176
	.field  	76,16			; _cal_abort[12] @ 192
	.field  	101,16			; _cal_abort[13] @ 208
	.field  	97,16			; _cal_abort[14] @ 224
	.field  	114,16			; _cal_abort[15] @ 240
	.field  	110,16			; _cal_abort[16] @ 256
	.field  	105,16			; _cal_abort[17] @ 272
	.field  	110,16			; _cal_abort[18] @ 288
	.field  	103,16			; _cal_abort[19] @ 304
	.field  	32,16			; _cal_abort[20] @ 320
	.field  	80,16			; _cal_abort[21] @ 336
	.field  	114,16			; _cal_abort[22] @ 352
	.field  	111,16			; _cal_abort[23] @ 368
	.field  	99,16			; _cal_abort[24] @ 384
	.field  	101,16			; _cal_abort[25] @ 400
	.field  	100,16			; _cal_abort[26] @ 416
	.field  	117,16			; _cal_abort[27] @ 432
	.field  	114,16			; _cal_abort[28] @ 448
	.field  	101,16			; _cal_abort[29] @ 464
	.field  	32,16			; _cal_abort[30] @ 480
	.field  	65,16			; _cal_abort[31] @ 496
	.field  	98,16			; _cal_abort[32] @ 512
	.field  	111,16			; _cal_abort[33] @ 528
	.field  	114,16			; _cal_abort[34] @ 544
	.field  	116,16			; _cal_abort[35] @ 560
	.field  	101,16			; _cal_abort[36] @ 576
	.field  	100,16			; _cal_abort[37] @ 592
	.field  	32,16			; _cal_abort[38] @ 608
	.field  	98,16			; _cal_abort[39] @ 624
	.field  	121,16			; _cal_abort[40] @ 640
	.field  	32,16			; _cal_abort[41] @ 656
	.field  	85,16			; _cal_abort[42] @ 672
	.field  	115,16			; _cal_abort[43] @ 688
	.field  	101,16			; _cal_abort[44] @ 704
	.field  	114,16			; _cal_abort[45] @ 720
	.field  	32,16			; _cal_abort[46] @ 736
	.field  	32,16			; _cal_abort[47] @ 752
	.field  	0,16			; _cal_abort[48] @ 768
	.space	16

DW$198	.dwtag  DW_TAG_variable, DW_AT_name("cal_abort"), DW_AT_symbol_name("_cal_abort")
	.dwattr DW$198, DW_AT_location[DW_OP_addr _cal_abort]
	.dwattr DW$198, DW_AT_type(*DW$T$307)
	.dwattr DW$198, DW_AT_external(0x01)
	.global	_wio_comms
	.sect	".econst"
	.align	1
_wio_comms:
	.field  	71,16			; _wio_comms[0] @ 0
	.field  	48,16			; _wio_comms[1] @ 16
	.field  	48,16			; _wio_comms[2] @ 32
	.field  	56,16			; _wio_comms[3] @ 48
	.field  	32,16			; _wio_comms[4] @ 64
	.field  	87,16			; _wio_comms[5] @ 80
	.field  	97,16			; _wio_comms[6] @ 96
	.field  	116,16			; _wio_comms[7] @ 112
	.field  	101,16			; _wio_comms[8] @ 128
	.field  	114,16			; _wio_comms[9] @ 144
	.field  	32,16			; _wio_comms[10] @ 160
	.field  	105,16			; _wio_comms[11] @ 176
	.field  	110,16			; _wio_comms[12] @ 192
	.field  	32,16			; _wio_comms[13] @ 208
	.field  	79,16			; _wio_comms[14] @ 224
	.field  	105,16			; _wio_comms[15] @ 240
	.field  	108,16			; _wio_comms[16] @ 256
	.field  	32,16			; _wio_comms[17] @ 272
	.field  	67,16			; _wio_comms[18] @ 288
	.field  	111,16			; _wio_comms[19] @ 304
	.field  	110,16			; _wio_comms[20] @ 320
	.field  	110,16			; _wio_comms[21] @ 336
	.field  	101,16			; _wio_comms[22] @ 352
	.field  	99,16			; _wio_comms[23] @ 368
	.field  	116,16			; _wio_comms[24] @ 384
	.field  	105,16			; _wio_comms[25] @ 400
	.field  	111,16			; _wio_comms[26] @ 416
	.field  	110,16			; _wio_comms[27] @ 432
	.field  	32,16			; _wio_comms[28] @ 448
	.field  	70,16			; _wio_comms[29] @ 464
	.field  	97,16			; _wio_comms[30] @ 480
	.field  	105,16			; _wio_comms[31] @ 496
	.field  	108,16			; _wio_comms[32] @ 512
	.field  	117,16			; _wio_comms[33] @ 528
	.field  	114,16			; _wio_comms[34] @ 544
	.field  	101,16			; _wio_comms[35] @ 560
	.field  	32,16			; _wio_comms[36] @ 576
	.field  	32,16			; _wio_comms[37] @ 592
	.field  	32,16			; _wio_comms[38] @ 608
	.field  	32,16			; _wio_comms[39] @ 624
	.field  	32,16			; _wio_comms[40] @ 640
	.field  	32,16			; _wio_comms[41] @ 656
	.field  	32,16			; _wio_comms[42] @ 672
	.field  	32,16			; _wio_comms[43] @ 688
	.field  	32,16			; _wio_comms[44] @ 704
	.field  	32,16			; _wio_comms[45] @ 720
	.field  	32,16			; _wio_comms[46] @ 736
	.field  	32,16			; _wio_comms[47] @ 752
	.field  	0,16			; _wio_comms[48] @ 768
	.space	16

DW$199	.dwtag  DW_TAG_variable, DW_AT_name("wio_comms"), DW_AT_symbol_name("_wio_comms")
	.dwattr DW$199, DW_AT_location[DW_OP_addr _wio_comms]
	.dwattr DW$199, DW_AT_type(*DW$T$307)
	.dwattr DW$199, DW_AT_external(0x01)
	.global	_paramchange
	.sect	".econst"
	.align	1
_paramchange:
	.field  	71,16			; _paramchange[0] @ 0
	.field  	48,16			; _paramchange[1] @ 16
	.field  	48,16			; _paramchange[2] @ 32
	.field  	57,16			; _paramchange[3] @ 48
	.field  	32,16			; _paramchange[4] @ 64
	.field  	80,16			; _paramchange[5] @ 80
	.field  	97,16			; _paramchange[6] @ 96
	.field  	114,16			; _paramchange[7] @ 112
	.field  	97,16			; _paramchange[8] @ 128
	.field  	109,16			; _paramchange[9] @ 144
	.field  	101,16			; _paramchange[10] @ 160
	.field  	116,16			; _paramchange[11] @ 176
	.field  	101,16			; _paramchange[12] @ 192
	.field  	114,16			; _paramchange[13] @ 208
	.field  	32,16			; _paramchange[14] @ 224
	.field  	97,16			; _paramchange[15] @ 240
	.field  	108,16			; _paramchange[16] @ 256
	.field  	116,16			; _paramchange[17] @ 272
	.field  	101,16			; _paramchange[18] @ 288
	.field  	114,16			; _paramchange[19] @ 304
	.field  	97,16			; _paramchange[20] @ 320
	.field  	116,16			; _paramchange[21] @ 336
	.field  	105,16			; _paramchange[22] @ 352
	.field  	111,16			; _paramchange[23] @ 368
	.field  	110,16			; _paramchange[24] @ 384
	.field  	32,16			; _paramchange[25] @ 400
	.field  	32,16			; _paramchange[26] @ 416
	.field  	32,16			; _paramchange[27] @ 432
	.field  	32,16			; _paramchange[28] @ 448
	.field  	32,16			; _paramchange[29] @ 464
	.field  	32,16			; _paramchange[30] @ 480
	.field  	32,16			; _paramchange[31] @ 496
	.field  	32,16			; _paramchange[32] @ 512
	.field  	32,16			; _paramchange[33] @ 528
	.field  	32,16			; _paramchange[34] @ 544
	.field  	32,16			; _paramchange[35] @ 560
	.field  	32,16			; _paramchange[36] @ 576
	.field  	32,16			; _paramchange[37] @ 592
	.field  	32,16			; _paramchange[38] @ 608
	.field  	32,16			; _paramchange[39] @ 624
	.field  	32,16			; _paramchange[40] @ 640
	.field  	32,16			; _paramchange[41] @ 656
	.field  	32,16			; _paramchange[42] @ 672
	.field  	32,16			; _paramchange[43] @ 688
	.field  	32,16			; _paramchange[44] @ 704
	.field  	32,16			; _paramchange[45] @ 720
	.field  	32,16			; _paramchange[46] @ 736
	.field  	32,16			; _paramchange[47] @ 752
	.field  	0,16			; _paramchange[48] @ 768
	.space	16

DW$200	.dwtag  DW_TAG_variable, DW_AT_name("paramchange"), DW_AT_symbol_name("_paramchange")
	.dwattr DW$200, DW_AT_location[DW_OP_addr _paramchange]
	.dwattr DW$200, DW_AT_type(*DW$T$307)
	.dwattr DW$200, DW_AT_external(0x01)
	.global	_framfault1
	.sect	".econst"
	.align	1
_framfault1:
	.field  	71,16			; _framfault1[0] @ 0
	.field  	48,16			; _framfault1[1] @ 16
	.field  	49,16			; _framfault1[2] @ 32
	.field  	48,16			; _framfault1[3] @ 48
	.field  	32,16			; _framfault1[4] @ 64
	.field  	70,16			; _framfault1[5] @ 80
	.field  	82,16			; _framfault1[6] @ 96
	.field  	65,16			; _framfault1[7] @ 112
	.field  	77,16			; _framfault1[8] @ 128
	.field  	32,16			; _framfault1[9] @ 144
	.field  	49,16			; _framfault1[10] @ 160
	.field  	32,16			; _framfault1[11] @ 176
	.field  	67,16			; _framfault1[12] @ 192
	.field  	111,16			; _framfault1[13] @ 208
	.field  	109,16			; _framfault1[14] @ 224
	.field  	109,16			; _framfault1[15] @ 240
	.field  	117,16			; _framfault1[16] @ 256
	.field  	110,16			; _framfault1[17] @ 272
	.field  	105,16			; _framfault1[18] @ 288
	.field  	99,16			; _framfault1[19] @ 304
	.field  	97,16			; _framfault1[20] @ 320
	.field  	116,16			; _framfault1[21] @ 336
	.field  	105,16			; _framfault1[22] @ 352
	.field  	111,16			; _framfault1[23] @ 368
	.field  	110,16			; _framfault1[24] @ 384
	.field  	115,16			; _framfault1[25] @ 400
	.field  	32,16			; _framfault1[26] @ 416
	.field  	70,16			; _framfault1[27] @ 432
	.field  	97,16			; _framfault1[28] @ 448
	.field  	117,16			; _framfault1[29] @ 464
	.field  	108,16			; _framfault1[30] @ 480
	.field  	116,16			; _framfault1[31] @ 496
	.field  	32,16			; _framfault1[32] @ 512
	.field  	32,16			; _framfault1[33] @ 528
	.field  	32,16			; _framfault1[34] @ 544
	.field  	32,16			; _framfault1[35] @ 560
	.field  	32,16			; _framfault1[36] @ 576
	.field  	32,16			; _framfault1[37] @ 592
	.field  	32,16			; _framfault1[38] @ 608
	.field  	32,16			; _framfault1[39] @ 624
	.field  	32,16			; _framfault1[40] @ 640
	.field  	32,16			; _framfault1[41] @ 656
	.field  	32,16			; _framfault1[42] @ 672
	.field  	32,16			; _framfault1[43] @ 688
	.field  	32,16			; _framfault1[44] @ 704
	.field  	32,16			; _framfault1[45] @ 720
	.field  	32,16			; _framfault1[46] @ 736
	.field  	32,16			; _framfault1[47] @ 752
	.field  	0,16			; _framfault1[48] @ 768
	.space	16

DW$201	.dwtag  DW_TAG_variable, DW_AT_name("framfault1"), DW_AT_symbol_name("_framfault1")
	.dwattr DW$201, DW_AT_location[DW_OP_addr _framfault1]
	.dwattr DW$201, DW_AT_type(*DW$T$307)
	.dwattr DW$201, DW_AT_external(0x01)
	.global	_framfault2
	.sect	".econst"
	.align	1
_framfault2:
	.field  	71,16			; _framfault2[0] @ 0
	.field  	48,16			; _framfault2[1] @ 16
	.field  	49,16			; _framfault2[2] @ 32
	.field  	49,16			; _framfault2[3] @ 48
	.field  	32,16			; _framfault2[4] @ 64
	.field  	70,16			; _framfault2[5] @ 80
	.field  	82,16			; _framfault2[6] @ 96
	.field  	65,16			; _framfault2[7] @ 112
	.field  	77,16			; _framfault2[8] @ 128
	.field  	32,16			; _framfault2[9] @ 144
	.field  	50,16			; _framfault2[10] @ 160
	.field  	32,16			; _framfault2[11] @ 176
	.field  	67,16			; _framfault2[12] @ 192
	.field  	111,16			; _framfault2[13] @ 208
	.field  	109,16			; _framfault2[14] @ 224
	.field  	109,16			; _framfault2[15] @ 240
	.field  	117,16			; _framfault2[16] @ 256
	.field  	110,16			; _framfault2[17] @ 272
	.field  	105,16			; _framfault2[18] @ 288
	.field  	99,16			; _framfault2[19] @ 304
	.field  	97,16			; _framfault2[20] @ 320
	.field  	116,16			; _framfault2[21] @ 336
	.field  	105,16			; _framfault2[22] @ 352
	.field  	111,16			; _framfault2[23] @ 368
	.field  	110,16			; _framfault2[24] @ 384
	.field  	115,16			; _framfault2[25] @ 400
	.field  	32,16			; _framfault2[26] @ 416
	.field  	70,16			; _framfault2[27] @ 432
	.field  	97,16			; _framfault2[28] @ 448
	.field  	117,16			; _framfault2[29] @ 464
	.field  	108,16			; _framfault2[30] @ 480
	.field  	116,16			; _framfault2[31] @ 496
	.field  	32,16			; _framfault2[32] @ 512
	.field  	32,16			; _framfault2[33] @ 528
	.field  	32,16			; _framfault2[34] @ 544
	.field  	32,16			; _framfault2[35] @ 560
	.field  	32,16			; _framfault2[36] @ 576
	.field  	32,16			; _framfault2[37] @ 592
	.field  	32,16			; _framfault2[38] @ 608
	.field  	32,16			; _framfault2[39] @ 624
	.field  	32,16			; _framfault2[40] @ 640
	.field  	32,16			; _framfault2[41] @ 656
	.field  	32,16			; _framfault2[42] @ 672
	.field  	32,16			; _framfault2[43] @ 688
	.field  	32,16			; _framfault2[44] @ 704
	.field  	32,16			; _framfault2[45] @ 720
	.field  	32,16			; _framfault2[46] @ 736
	.field  	32,16			; _framfault2[47] @ 752
	.field  	0,16			; _framfault2[48] @ 768
	.space	16

DW$202	.dwtag  DW_TAG_variable, DW_AT_name("framfault2"), DW_AT_symbol_name("_framfault2")
	.dwattr DW$202, DW_AT_location[DW_OP_addr _framfault2]
	.dwattr DW$202, DW_AT_type(*DW$T$307)
	.dwattr DW$202, DW_AT_external(0x01)
	.global	_pccommsfault
	.sect	".econst"
	.align	1
_pccommsfault:
	.field  	71,16			; _pccommsfault[0] @ 0
	.field  	48,16			; _pccommsfault[1] @ 16
	.field  	49,16			; _pccommsfault[2] @ 32
	.field  	50,16			; _pccommsfault[3] @ 48
	.field  	32,16			; _pccommsfault[4] @ 64
	.field  	67,16			; _pccommsfault[5] @ 80
	.field  	111,16			; _pccommsfault[6] @ 96
	.field  	109,16			; _pccommsfault[7] @ 112
	.field  	109,16			; _pccommsfault[8] @ 128
	.field  	117,16			; _pccommsfault[9] @ 144
	.field  	110,16			; _pccommsfault[10] @ 160
	.field  	105,16			; _pccommsfault[11] @ 176
	.field  	99,16			; _pccommsfault[12] @ 192
	.field  	97,16			; _pccommsfault[13] @ 208
	.field  	116,16			; _pccommsfault[14] @ 224
	.field  	105,16			; _pccommsfault[15] @ 240
	.field  	111,16			; _pccommsfault[16] @ 256
	.field  	110,16			; _pccommsfault[17] @ 272
	.field  	32,16			; _pccommsfault[18] @ 288
	.field  	116,16			; _pccommsfault[19] @ 304
	.field  	111,16			; _pccommsfault[20] @ 320
	.field  	32,16			; _pccommsfault[21] @ 336
	.field  	80,16			; _pccommsfault[22] @ 352
	.field  	67,16			; _pccommsfault[23] @ 368
	.field  	32,16			; _pccommsfault[24] @ 384
	.field  	70,16			; _pccommsfault[25] @ 400
	.field  	97,16			; _pccommsfault[26] @ 416
	.field  	105,16			; _pccommsfault[27] @ 432
	.field  	108,16			; _pccommsfault[28] @ 448
	.field  	117,16			; _pccommsfault[29] @ 464
	.field  	114,16			; _pccommsfault[30] @ 480
	.field  	101,16			; _pccommsfault[31] @ 496
	.field  	32,16			; _pccommsfault[32] @ 512
	.field  	32,16			; _pccommsfault[33] @ 528
	.field  	32,16			; _pccommsfault[34] @ 544
	.field  	32,16			; _pccommsfault[35] @ 560
	.field  	32,16			; _pccommsfault[36] @ 576
	.field  	32,16			; _pccommsfault[37] @ 592
	.field  	32,16			; _pccommsfault[38] @ 608
	.field  	32,16			; _pccommsfault[39] @ 624
	.field  	32,16			; _pccommsfault[40] @ 640
	.field  	32,16			; _pccommsfault[41] @ 656
	.field  	32,16			; _pccommsfault[42] @ 672
	.field  	32,16			; _pccommsfault[43] @ 688
	.field  	32,16			; _pccommsfault[44] @ 704
	.field  	32,16			; _pccommsfault[45] @ 720
	.field  	32,16			; _pccommsfault[46] @ 736
	.field  	32,16			; _pccommsfault[47] @ 752
	.field  	0,16			; _pccommsfault[48] @ 768
	.space	16

DW$203	.dwtag  DW_TAG_variable, DW_AT_name("pccommsfault"), DW_AT_symbol_name("_pccommsfault")
	.dwattr DW$203, DW_AT_location[DW_OP_addr _pccommsfault]
	.dwattr DW$203, DW_AT_type(*DW$T$307)
	.dwattr DW$203, DW_AT_external(0x01)
	.global	_firmwarechange
	.sect	".econst"
	.align	1
_firmwarechange:
	.field  	71,16			; _firmwarechange[0] @ 0
	.field  	48,16			; _firmwarechange[1] @ 16
	.field  	49,16			; _firmwarechange[2] @ 32
	.field  	51,16			; _firmwarechange[3] @ 48
	.field  	32,16			; _firmwarechange[4] @ 64
	.field  	70,16			; _firmwarechange[5] @ 80
	.field  	105,16			; _firmwarechange[6] @ 96
	.field  	114,16			; _firmwarechange[7] @ 112
	.field  	109,16			; _firmwarechange[8] @ 128
	.field  	119,16			; _firmwarechange[9] @ 144
	.field  	97,16			; _firmwarechange[10] @ 160
	.field  	114,16			; _firmwarechange[11] @ 176
	.field  	101,16			; _firmwarechange[12] @ 192
	.field  	32,16			; _firmwarechange[13] @ 208
	.field  	86,16			; _firmwarechange[14] @ 224
	.field  	101,16			; _firmwarechange[15] @ 240
	.field  	114,16			; _firmwarechange[16] @ 256
	.field  	115,16			; _firmwarechange[17] @ 272
	.field  	105,16			; _firmwarechange[18] @ 288
	.field  	111,16			; _firmwarechange[19] @ 304
	.field  	110,16			; _firmwarechange[20] @ 320
	.field  	32,16			; _firmwarechange[21] @ 336
	.field  	65,16			; _firmwarechange[22] @ 352
	.field  	108,16			; _firmwarechange[23] @ 368
	.field  	116,16			; _firmwarechange[24] @ 384
	.field  	101,16			; _firmwarechange[25] @ 400
	.field  	114,16			; _firmwarechange[26] @ 416
	.field  	97,16			; _firmwarechange[27] @ 432
	.field  	116,16			; _firmwarechange[28] @ 448
	.field  	105,16			; _firmwarechange[29] @ 464
	.field  	111,16			; _firmwarechange[30] @ 480
	.field  	110,16			; _firmwarechange[31] @ 496
	.field  	32,16			; _firmwarechange[32] @ 512
	.field  	32,16			; _firmwarechange[33] @ 528
	.field  	32,16			; _firmwarechange[34] @ 544
	.field  	32,16			; _firmwarechange[35] @ 560
	.field  	32,16			; _firmwarechange[36] @ 576
	.field  	32,16			; _firmwarechange[37] @ 592
	.field  	32,16			; _firmwarechange[38] @ 608
	.field  	32,16			; _firmwarechange[39] @ 624
	.field  	32,16			; _firmwarechange[40] @ 640
	.field  	32,16			; _firmwarechange[41] @ 656
	.field  	32,16			; _firmwarechange[42] @ 672
	.field  	32,16			; _firmwarechange[43] @ 688
	.field  	32,16			; _firmwarechange[44] @ 704
	.field  	32,16			; _firmwarechange[45] @ 720
	.field  	32,16			; _firmwarechange[46] @ 736
	.field  	32,16			; _firmwarechange[47] @ 752
	.field  	0,16			; _firmwarechange[48] @ 768
	.space	16

DW$204	.dwtag  DW_TAG_variable, DW_AT_name("firmwarechange"), DW_AT_symbol_name("_firmwarechange")
	.dwattr DW$204, DW_AT_location[DW_OP_addr _firmwarechange]
	.dwattr DW$204, DW_AT_type(*DW$T$307)
	.dwattr DW$204, DW_AT_external(0x01)
	.global	_calstage
	.sect	".econst"
	.align	1
_calstage:
	.field  	71,16			; _calstage[0] @ 0
	.field  	48,16			; _calstage[1] @ 16
	.field  	49,16			; _calstage[2] @ 32
	.field  	52,16			; _calstage[3] @ 48
	.field  	32,16			; _calstage[4] @ 64
	.field  	69,16			; _calstage[5] @ 80
	.field  	110,16			; _calstage[6] @ 96
	.field  	103,16			; _calstage[7] @ 112
	.field  	105,16			; _calstage[8] @ 128
	.field  	110,16			; _calstage[9] @ 144
	.field  	101,16			; _calstage[10] @ 160
	.field  	32,16			; _calstage[11] @ 176
	.field  	76,16			; _calstage[12] @ 192
	.field  	101,16			; _calstage[13] @ 208
	.field  	97,16			; _calstage[14] @ 224
	.field  	114,16			; _calstage[15] @ 240
	.field  	110,16			; _calstage[16] @ 256
	.field  	105,16			; _calstage[17] @ 272
	.field  	110,16			; _calstage[18] @ 288
	.field  	103,16			; _calstage[19] @ 304
	.field  	32,16			; _calstage[20] @ 320
	.field  	83,16			; _calstage[21] @ 336
	.field  	116,16			; _calstage[22] @ 352
	.field  	97,16			; _calstage[23] @ 368
	.field  	103,16			; _calstage[24] @ 384
	.field  	101,16			; _calstage[25] @ 400
	.field  	58,16			; _calstage[26] @ 416
	.field  	32,16			; _calstage[27] @ 432
	.field  	32,16			; _calstage[28] @ 448
	.field  	32,16			; _calstage[29] @ 464
	.field  	32,16			; _calstage[30] @ 480
	.field  	32,16			; _calstage[31] @ 496
	.field  	32,16			; _calstage[32] @ 512
	.field  	32,16			; _calstage[33] @ 528
	.field  	32,16			; _calstage[34] @ 544
	.field  	32,16			; _calstage[35] @ 560
	.field  	32,16			; _calstage[36] @ 576
	.field  	32,16			; _calstage[37] @ 592
	.field  	32,16			; _calstage[38] @ 608
	.field  	32,16			; _calstage[39] @ 624
	.field  	32,16			; _calstage[40] @ 640
	.field  	32,16			; _calstage[41] @ 656
	.field  	32,16			; _calstage[42] @ 672
	.field  	32,16			; _calstage[43] @ 688
	.field  	32,16			; _calstage[44] @ 704
	.field  	32,16			; _calstage[45] @ 720
	.field  	32,16			; _calstage[46] @ 736
	.field  	32,16			; _calstage[47] @ 752
	.field  	0,16			; _calstage[48] @ 768
	.space	16

DW$205	.dwtag  DW_TAG_variable, DW_AT_name("calstage"), DW_AT_symbol_name("_calstage")
	.dwattr DW$205, DW_AT_location[DW_OP_addr _calstage]
	.dwattr DW$205, DW_AT_type(*DW$T$307)
	.dwattr DW$205, DW_AT_external(0x01)
	.global	_poweron
	.sect	".econst"
	.align	1
_poweron:
	.field  	71,16			; _poweron[0] @ 0
	.field  	48,16			; _poweron[1] @ 16
	.field  	49,16			; _poweron[2] @ 32
	.field  	53,16			; _poweron[3] @ 48
	.field  	32,16			; _poweron[4] @ 64
	.field  	80,16			; _poweron[5] @ 80
	.field  	111,16			; _poweron[6] @ 96
	.field  	119,16			; _poweron[7] @ 112
	.field  	101,16			; _poweron[8] @ 128
	.field  	114,16			; _poweron[9] @ 144
	.field  	32,16			; _poweron[10] @ 160
	.field  	111,16			; _poweron[11] @ 176
	.field  	110,16			; _poweron[12] @ 192
	.field  	32,16			; _poweron[13] @ 208
	.field  	73,16			; _poweron[14] @ 224
	.field  	110,16			; _poweron[15] @ 240
	.field  	105,16			; _poweron[16] @ 256
	.field  	116,16			; _poweron[17] @ 272
	.field  	105,16			; _poweron[18] @ 288
	.field  	97,16			; _poweron[19] @ 304
	.field  	108,16			; _poweron[20] @ 320
	.field  	105,16			; _poweron[21] @ 336
	.field  	115,16			; _poweron[22] @ 352
	.field  	97,16			; _poweron[23] @ 368
	.field  	116,16			; _poweron[24] @ 384
	.field  	105,16			; _poweron[25] @ 400
	.field  	111,16			; _poweron[26] @ 416
	.field  	110,16			; _poweron[27] @ 432
	.field  	32,16			; _poweron[28] @ 448
	.field  	32,16			; _poweron[29] @ 464
	.field  	32,16			; _poweron[30] @ 480
	.field  	32,16			; _poweron[31] @ 496
	.field  	32,16			; _poweron[32] @ 512
	.field  	32,16			; _poweron[33] @ 528
	.field  	32,16			; _poweron[34] @ 544
	.field  	32,16			; _poweron[35] @ 560
	.field  	32,16			; _poweron[36] @ 576
	.field  	32,16			; _poweron[37] @ 592
	.field  	32,16			; _poweron[38] @ 608
	.field  	32,16			; _poweron[39] @ 624
	.field  	32,16			; _poweron[40] @ 640
	.field  	32,16			; _poweron[41] @ 656
	.field  	32,16			; _poweron[42] @ 672
	.field  	32,16			; _poweron[43] @ 688
	.field  	32,16			; _poweron[44] @ 704
	.field  	32,16			; _poweron[45] @ 720
	.field  	32,16			; _poweron[46] @ 736
	.field  	32,16			; _poweron[47] @ 752
	.field  	0,16			; _poweron[48] @ 768
	.space	16

DW$206	.dwtag  DW_TAG_variable, DW_AT_name("poweron"), DW_AT_symbol_name("_poweron")
	.dwattr DW$206, DW_AT_location[DW_OP_addr _poweron]
	.dwattr DW$206, DW_AT_type(*DW$T$307)
	.dwattr DW$206, DW_AT_external(0x01)
	.global	_sensor_prewarn
	.sect	".econst"
	.align	1
_sensor_prewarn:
	.field  	80,16			; _sensor_prewarn[0] @ 0
	.field  	48,16			; _sensor_prewarn[1] @ 16
	.field  	48,16			; _sensor_prewarn[2] @ 32
	.field  	49,16			; _sensor_prewarn[3] @ 48
	.field  	32,16			; _sensor_prewarn[4] @ 64
	.field  	83,16			; _sensor_prewarn[5] @ 80
	.field  	101,16			; _sensor_prewarn[6] @ 96
	.field  	110,16			; _sensor_prewarn[7] @ 112
	.field  	115,16			; _sensor_prewarn[8] @ 128
	.field  	111,16			; _sensor_prewarn[9] @ 144
	.field  	114,16			; _sensor_prewarn[10] @ 160
	.field  	32,16			; _sensor_prewarn[11] @ 176
	.field  	80,16			; _sensor_prewarn[12] @ 192
	.field  	114,16			; _sensor_prewarn[13] @ 208
	.field  	101,16			; _sensor_prewarn[14] @ 224
	.field  	45,16			; _sensor_prewarn[15] @ 240
	.field  	119,16			; _sensor_prewarn[16] @ 256
	.field  	97,16			; _sensor_prewarn[17] @ 272
	.field  	114,16			; _sensor_prewarn[18] @ 288
	.field  	110,16			; _sensor_prewarn[19] @ 304
	.field  	105,16			; _sensor_prewarn[20] @ 320
	.field  	110,16			; _sensor_prewarn[21] @ 336
	.field  	103,16			; _sensor_prewarn[22] @ 352
	.field  	32,16			; _sensor_prewarn[23] @ 368
	.field  	32,16			; _sensor_prewarn[24] @ 384
	.field  	32,16			; _sensor_prewarn[25] @ 400
	.field  	32,16			; _sensor_prewarn[26] @ 416
	.field  	32,16			; _sensor_prewarn[27] @ 432
	.field  	32,16			; _sensor_prewarn[28] @ 448
	.field  	32,16			; _sensor_prewarn[29] @ 464
	.field  	32,16			; _sensor_prewarn[30] @ 480
	.field  	32,16			; _sensor_prewarn[31] @ 496
	.field  	32,16			; _sensor_prewarn[32] @ 512
	.field  	32,16			; _sensor_prewarn[33] @ 528
	.field  	32,16			; _sensor_prewarn[34] @ 544
	.field  	32,16			; _sensor_prewarn[35] @ 560
	.field  	32,16			; _sensor_prewarn[36] @ 576
	.field  	32,16			; _sensor_prewarn[37] @ 592
	.field  	32,16			; _sensor_prewarn[38] @ 608
	.field  	32,16			; _sensor_prewarn[39] @ 624
	.field  	32,16			; _sensor_prewarn[40] @ 640
	.field  	32,16			; _sensor_prewarn[41] @ 656
	.field  	32,16			; _sensor_prewarn[42] @ 672
	.field  	32,16			; _sensor_prewarn[43] @ 688
	.field  	32,16			; _sensor_prewarn[44] @ 704
	.field  	32,16			; _sensor_prewarn[45] @ 720
	.field  	32,16			; _sensor_prewarn[46] @ 736
	.field  	32,16			; _sensor_prewarn[47] @ 752
	.field  	0,16			; _sensor_prewarn[48] @ 768
	.space	16

DW$207	.dwtag  DW_TAG_variable, DW_AT_name("sensor_prewarn"), DW_AT_symbol_name("_sensor_prewarn")
	.dwattr DW$207, DW_AT_location[DW_OP_addr _sensor_prewarn]
	.dwattr DW$207, DW_AT_type(*DW$T$307)
	.dwattr DW$207, DW_AT_external(0x01)
	.global	_offset_adjust
	.sect	".econst"
	.align	1
_offset_adjust:
	.field  	71,16			; _offset_adjust[0] @ 0
	.field  	48,16			; _offset_adjust[1] @ 16
	.field  	49,16			; _offset_adjust[2] @ 32
	.field  	54,16			; _offset_adjust[3] @ 48
	.field  	32,16			; _offset_adjust[4] @ 64
	.field  	83,16			; _offset_adjust[5] @ 80
	.field  	101,16			; _offset_adjust[6] @ 96
	.field  	110,16			; _offset_adjust[7] @ 112
	.field  	115,16			; _offset_adjust[8] @ 128
	.field  	111,16			; _offset_adjust[9] @ 144
	.field  	114,16			; _offset_adjust[10] @ 160
	.field  	32,16			; _offset_adjust[11] @ 176
	.field  	79,16			; _offset_adjust[12] @ 192
	.field  	102,16			; _offset_adjust[13] @ 208
	.field  	102,16			; _offset_adjust[14] @ 224
	.field  	115,16			; _offset_adjust[15] @ 240
	.field  	101,16			; _offset_adjust[16] @ 256
	.field  	116,16			; _offset_adjust[17] @ 272
	.field  	32,16			; _offset_adjust[18] @ 288
	.field  	65,16			; _offset_adjust[19] @ 304
	.field  	100,16			; _offset_adjust[20] @ 320
	.field  	106,16			; _offset_adjust[21] @ 336
	.field  	117,16			; _offset_adjust[22] @ 352
	.field  	115,16			; _offset_adjust[23] @ 368
	.field  	116,16			; _offset_adjust[24] @ 384
	.field  	109,16			; _offset_adjust[25] @ 400
	.field  	101,16			; _offset_adjust[26] @ 416
	.field  	110,16			; _offset_adjust[27] @ 432
	.field  	116,16			; _offset_adjust[28] @ 448
	.field  	32,16			; _offset_adjust[29] @ 464
	.field  	32,16			; _offset_adjust[30] @ 480
	.field  	32,16			; _offset_adjust[31] @ 496
	.field  	32,16			; _offset_adjust[32] @ 512
	.field  	32,16			; _offset_adjust[33] @ 528
	.field  	32,16			; _offset_adjust[34] @ 544
	.field  	32,16			; _offset_adjust[35] @ 560
	.field  	32,16			; _offset_adjust[36] @ 576
	.field  	32,16			; _offset_adjust[37] @ 592
	.field  	32,16			; _offset_adjust[38] @ 608
	.field  	32,16			; _offset_adjust[39] @ 624
	.field  	32,16			; _offset_adjust[40] @ 640
	.field  	32,16			; _offset_adjust[41] @ 656
	.field  	32,16			; _offset_adjust[42] @ 672
	.field  	32,16			; _offset_adjust[43] @ 688
	.field  	32,16			; _offset_adjust[44] @ 704
	.field  	32,16			; _offset_adjust[45] @ 720
	.field  	32,16			; _offset_adjust[46] @ 736
	.field  	32,16			; _offset_adjust[47] @ 752
	.field  	0,16			; _offset_adjust[48] @ 768
	.space	16

DW$208	.dwtag  DW_TAG_variable, DW_AT_name("offset_adjust"), DW_AT_symbol_name("_offset_adjust")
	.dwattr DW$208, DW_AT_location[DW_OP_addr _offset_adjust]
	.dwattr DW$208, DW_AT_type(*DW$T$307)
	.dwattr DW$208, DW_AT_external(0x01)
	.global	_prewarn_initiated
	.sect	".econst"
	.align	1
_prewarn_initiated:
	.field  	71,16			; _prewarn_initiated[0] @ 0
	.field  	48,16			; _prewarn_initiated[1] @ 16
	.field  	49,16			; _prewarn_initiated[2] @ 32
	.field  	55,16			; _prewarn_initiated[3] @ 48
	.field  	32,16			; _prewarn_initiated[4] @ 64
	.field  	80,16			; _prewarn_initiated[5] @ 80
	.field  	114,16			; _prewarn_initiated[6] @ 96
	.field  	101,16			; _prewarn_initiated[7] @ 112
	.field  	45,16			; _prewarn_initiated[8] @ 128
	.field  	119,16			; _prewarn_initiated[9] @ 144
	.field  	97,16			; _prewarn_initiated[10] @ 160
	.field  	114,16			; _prewarn_initiated[11] @ 176
	.field  	110,16			; _prewarn_initiated[12] @ 192
	.field  	105,16			; _prewarn_initiated[13] @ 208
	.field  	110,16			; _prewarn_initiated[14] @ 224
	.field  	103,16			; _prewarn_initiated[15] @ 240
	.field  	32,16			; _prewarn_initiated[16] @ 256
	.field  	105,16			; _prewarn_initiated[17] @ 272
	.field  	110,16			; _prewarn_initiated[18] @ 288
	.field  	105,16			; _prewarn_initiated[19] @ 304
	.field  	116,16			; _prewarn_initiated[20] @ 320
	.field  	105,16			; _prewarn_initiated[21] @ 336
	.field  	97,16			; _prewarn_initiated[22] @ 352
	.field  	108,16			; _prewarn_initiated[23] @ 368
	.field  	105,16			; _prewarn_initiated[24] @ 384
	.field  	115,16			; _prewarn_initiated[25] @ 400
	.field  	101,16			; _prewarn_initiated[26] @ 416
	.field  	100,16			; _prewarn_initiated[27] @ 432
	.field  	32,16			; _prewarn_initiated[28] @ 448
	.field  	32,16			; _prewarn_initiated[29] @ 464
	.field  	32,16			; _prewarn_initiated[30] @ 480
	.field  	32,16			; _prewarn_initiated[31] @ 496
	.field  	32,16			; _prewarn_initiated[32] @ 512
	.field  	32,16			; _prewarn_initiated[33] @ 528
	.field  	32,16			; _prewarn_initiated[34] @ 544
	.field  	32,16			; _prewarn_initiated[35] @ 560
	.field  	32,16			; _prewarn_initiated[36] @ 576
	.field  	32,16			; _prewarn_initiated[37] @ 592
	.field  	32,16			; _prewarn_initiated[38] @ 608
	.field  	32,16			; _prewarn_initiated[39] @ 624
	.field  	32,16			; _prewarn_initiated[40] @ 640
	.field  	32,16			; _prewarn_initiated[41] @ 656
	.field  	32,16			; _prewarn_initiated[42] @ 672
	.field  	32,16			; _prewarn_initiated[43] @ 688
	.field  	32,16			; _prewarn_initiated[44] @ 704
	.field  	32,16			; _prewarn_initiated[45] @ 720
	.field  	32,16			; _prewarn_initiated[46] @ 736
	.field  	32,16			; _prewarn_initiated[47] @ 752
	.field  	0,16			; _prewarn_initiated[48] @ 768
	.space	16

DW$209	.dwtag  DW_TAG_variable, DW_AT_name("prewarn_initiated"), DW_AT_symbol_name("_prewarn_initiated")
	.dwattr DW$209, DW_AT_location[DW_OP_addr _prewarn_initiated]
	.dwattr DW$209, DW_AT_type(*DW$T$307)
	.dwattr DW$209, DW_AT_external(0x01)
	.global	_rtc_fault
	.sect	".econst"
	.align	1
_rtc_fault:
	.field  	71,16			; _rtc_fault[0] @ 0
	.field  	48,16			; _rtc_fault[1] @ 16
	.field  	49,16			; _rtc_fault[2] @ 32
	.field  	56,16			; _rtc_fault[3] @ 48
	.field  	32,16			; _rtc_fault[4] @ 64
	.field  	82,16			; _rtc_fault[5] @ 80
	.field  	101,16			; _rtc_fault[6] @ 96
	.field  	97,16			; _rtc_fault[7] @ 112
	.field  	108,16			; _rtc_fault[8] @ 128
	.field  	32,16			; _rtc_fault[9] @ 144
	.field  	84,16			; _rtc_fault[10] @ 160
	.field  	105,16			; _rtc_fault[11] @ 176
	.field  	109,16			; _rtc_fault[12] @ 192
	.field  	101,16			; _rtc_fault[13] @ 208
	.field  	32,16			; _rtc_fault[14] @ 224
	.field  	67,16			; _rtc_fault[15] @ 240
	.field  	108,16			; _rtc_fault[16] @ 256
	.field  	111,16			; _rtc_fault[17] @ 272
	.field  	99,16			; _rtc_fault[18] @ 288
	.field  	107,16			; _rtc_fault[19] @ 304
	.field  	32,16			; _rtc_fault[20] @ 320
	.field  	70,16			; _rtc_fault[21] @ 336
	.field  	97,16			; _rtc_fault[22] @ 352
	.field  	105,16			; _rtc_fault[23] @ 368
	.field  	108,16			; _rtc_fault[24] @ 384
	.field  	117,16			; _rtc_fault[25] @ 400
	.field  	114,16			; _rtc_fault[26] @ 416
	.field  	101,16			; _rtc_fault[27] @ 432
	.field  	44,16			; _rtc_fault[28] @ 448
	.field  	32,16			; _rtc_fault[29] @ 464
	.field  	84,16			; _rtc_fault[30] @ 480
	.field  	105,16			; _rtc_fault[31] @ 496
	.field  	109,16			; _rtc_fault[32] @ 512
	.field  	101,16			; _rtc_fault[33] @ 528
	.field  	32,16			; _rtc_fault[34] @ 544
	.field  	82,16			; _rtc_fault[35] @ 560
	.field  	101,16			; _rtc_fault[36] @ 576
	.field  	115,16			; _rtc_fault[37] @ 592
	.field  	101,16			; _rtc_fault[38] @ 608
	.field  	116,16			; _rtc_fault[39] @ 624
	.field  	32,16			; _rtc_fault[40] @ 640
	.field  	32,16			; _rtc_fault[41] @ 656
	.field  	32,16			; _rtc_fault[42] @ 672
	.field  	32,16			; _rtc_fault[43] @ 688
	.field  	32,16			; _rtc_fault[44] @ 704
	.field  	32,16			; _rtc_fault[45] @ 720
	.field  	32,16			; _rtc_fault[46] @ 736
	.field  	32,16			; _rtc_fault[47] @ 752
	.field  	0,16			; _rtc_fault[48] @ 768
	.space	16

DW$210	.dwtag  DW_TAG_variable, DW_AT_name("rtc_fault"), DW_AT_symbol_name("_rtc_fault")
	.dwattr DW$210, DW_AT_location[DW_OP_addr _rtc_fault]
	.dwattr DW$210, DW_AT_type(*DW$T$307)
	.dwattr DW$210, DW_AT_external(0x01)
	.global	_event_normal
	.sect	".econst"
	.align	1
_event_normal:
	.field  	71,16			; _event_normal[0] @ 0
	.field  	48,16			; _event_normal[1] @ 16
	.field  	49,16			; _event_normal[2] @ 32
	.field  	57,16			; _event_normal[3] @ 48
	.field  	32,16			; _event_normal[4] @ 64
	.field  	69,16			; _event_normal[5] @ 80
	.field  	118,16			; _event_normal[6] @ 96
	.field  	101,16			; _event_normal[7] @ 112
	.field  	110,16			; _event_normal[8] @ 128
	.field  	116,16			; _event_normal[9] @ 144
	.field  	32,16			; _event_normal[10] @ 160
	.field  	114,16			; _event_normal[11] @ 176
	.field  	101,16			; _event_normal[12] @ 192
	.field  	116,16			; _event_normal[13] @ 208
	.field  	117,16			; _event_normal[14] @ 224
	.field  	114,16			; _event_normal[15] @ 240
	.field  	110,16			; _event_normal[16] @ 256
	.field  	101,16			; _event_normal[17] @ 272
	.field  	100,16			; _event_normal[18] @ 288
	.field  	32,16			; _event_normal[19] @ 304
	.field  	116,16			; _event_normal[20] @ 320
	.field  	111,16			; _event_normal[21] @ 336
	.field  	32,16			; _event_normal[22] @ 352
	.field  	110,16			; _event_normal[23] @ 368
	.field  	111,16			; _event_normal[24] @ 384
	.field  	114,16			; _event_normal[25] @ 400
	.field  	109,16			; _event_normal[26] @ 416
	.field  	97,16			; _event_normal[27] @ 432
	.field  	108,16			; _event_normal[28] @ 448
	.field  	32,16			; _event_normal[29] @ 464
	.field  	32,16			; _event_normal[30] @ 480
	.field  	32,16			; _event_normal[31] @ 496
	.field  	32,16			; _event_normal[32] @ 512
	.field  	32,16			; _event_normal[33] @ 528
	.field  	32,16			; _event_normal[34] @ 544
	.field  	32,16			; _event_normal[35] @ 560
	.field  	32,16			; _event_normal[36] @ 576
	.field  	32,16			; _event_normal[37] @ 592
	.field  	32,16			; _event_normal[38] @ 608
	.field  	32,16			; _event_normal[39] @ 624
	.field  	32,16			; _event_normal[40] @ 640
	.field  	32,16			; _event_normal[41] @ 656
	.field  	32,16			; _event_normal[42] @ 672
	.field  	32,16			; _event_normal[43] @ 688
	.field  	32,16			; _event_normal[44] @ 704
	.field  	32,16			; _event_normal[45] @ 720
	.field  	32,16			; _event_normal[46] @ 736
	.field  	32,16			; _event_normal[47] @ 752
	.field  	0,16			; _event_normal[48] @ 768
	.space	16

DW$211	.dwtag  DW_TAG_variable, DW_AT_name("event_normal"), DW_AT_symbol_name("_event_normal")
	.dwattr DW$211, DW_AT_location[DW_OP_addr _event_normal]
	.dwattr DW$211, DW_AT_type(*DW$T$307)
	.dwattr DW$211, DW_AT_external(0x01)
	.global	_direction_cal
	.sect	".econst"
	.align	1
_direction_cal:
	.field  	71,16			; _direction_cal[0] @ 0
	.field  	48,16			; _direction_cal[1] @ 16
	.field  	50,16			; _direction_cal[2] @ 32
	.field  	48,16			; _direction_cal[3] @ 48
	.field  	32,16			; _direction_cal[4] @ 64
	.field  	70,16			; _direction_cal[5] @ 80
	.field  	105,16			; _direction_cal[6] @ 96
	.field  	114,16			; _direction_cal[7] @ 112
	.field  	105,16			; _direction_cal[8] @ 128
	.field  	110,16			; _direction_cal[9] @ 144
	.field  	103,16			; _direction_cal[10] @ 160
	.field  	32,16			; _direction_cal[11] @ 176
	.field  	111,16			; _direction_cal[12] @ 192
	.field  	114,16			; _direction_cal[13] @ 208
	.field  	100,16			; _direction_cal[14] @ 224
	.field  	101,16			; _direction_cal[15] @ 240
	.field  	114,16			; _direction_cal[16] @ 256
	.field  	47,16			; _direction_cal[17] @ 272
	.field  	69,16			; _direction_cal[18] @ 288
	.field  	110,16			; _direction_cal[19] @ 304
	.field  	103,16			; _direction_cal[20] @ 320
	.field  	105,16			; _direction_cal[21] @ 336
	.field  	110,16			; _direction_cal[22] @ 352
	.field  	101,16			; _direction_cal[23] @ 368
	.field  	32,16			; _direction_cal[24] @ 384
	.field  	100,16			; _direction_cal[25] @ 400
	.field  	105,16			; _direction_cal[26] @ 416
	.field  	114,16			; _direction_cal[27] @ 432
	.field  	101,16			; _direction_cal[28] @ 448
	.field  	99,16			; _direction_cal[29] @ 464
	.field  	116,16			; _direction_cal[30] @ 480
	.field  	105,16			; _direction_cal[31] @ 496
	.field  	111,16			; _direction_cal[32] @ 512
	.field  	110,16			; _direction_cal[33] @ 528
	.field  	32,16			; _direction_cal[34] @ 544
	.field  	32,16			; _direction_cal[35] @ 560
	.field  	32,16			; _direction_cal[36] @ 576
	.field  	32,16			; _direction_cal[37] @ 592
	.field  	32,16			; _direction_cal[38] @ 608
	.field  	32,16			; _direction_cal[39] @ 624
	.field  	32,16			; _direction_cal[40] @ 640
	.field  	32,16			; _direction_cal[41] @ 656
	.field  	32,16			; _direction_cal[42] @ 672
	.field  	32,16			; _direction_cal[43] @ 688
	.field  	32,16			; _direction_cal[44] @ 704
	.field  	32,16			; _direction_cal[45] @ 720
	.field  	32,16			; _direction_cal[46] @ 736
	.field  	32,16			; _direction_cal[47] @ 752
	.field  	0,16			; _direction_cal[48] @ 768
	.space	16

DW$212	.dwtag  DW_TAG_variable, DW_AT_name("direction_cal"), DW_AT_symbol_name("_direction_cal")
	.dwattr DW$212, DW_AT_location[DW_OP_addr _direction_cal]
	.dwattr DW$212, DW_AT_type(*DW$T$307)
	.dwattr DW$212, DW_AT_external(0x01)
	.global	_sensor_replacement
	.sect	".econst"
	.align	1
_sensor_replacement:
	.field  	71,16			; _sensor_replacement[0] @ 0
	.field  	48,16			; _sensor_replacement[1] @ 16
	.field  	50,16			; _sensor_replacement[2] @ 32
	.field  	49,16			; _sensor_replacement[3] @ 48
	.field  	32,16			; _sensor_replacement[4] @ 64
	.field  	83,16			; _sensor_replacement[5] @ 80
	.field  	101,16			; _sensor_replacement[6] @ 96
	.field  	110,16			; _sensor_replacement[7] @ 112
	.field  	115,16			; _sensor_replacement[8] @ 128
	.field  	111,16			; _sensor_replacement[9] @ 144
	.field  	114,16			; _sensor_replacement[10] @ 160
	.field  	32,16			; _sensor_replacement[11] @ 176
	.field  	82,16			; _sensor_replacement[12] @ 192
	.field  	101,16			; _sensor_replacement[13] @ 208
	.field  	112,16			; _sensor_replacement[14] @ 224
	.field  	108,16			; _sensor_replacement[15] @ 240
	.field  	97,16			; _sensor_replacement[16] @ 256
	.field  	99,16			; _sensor_replacement[17] @ 272
	.field  	101,16			; _sensor_replacement[18] @ 288
	.field  	109,16			; _sensor_replacement[19] @ 304
	.field  	101,16			; _sensor_replacement[20] @ 320
	.field  	110,16			; _sensor_replacement[21] @ 336
	.field  	116,16			; _sensor_replacement[22] @ 352
	.field  	32,16			; _sensor_replacement[23] @ 368
	.field  	73,16			; _sensor_replacement[24] @ 384
	.field  	110,16			; _sensor_replacement[25] @ 400
	.field  	105,16			; _sensor_replacement[26] @ 416
	.field  	116,16			; _sensor_replacement[27] @ 432
	.field  	105,16			; _sensor_replacement[28] @ 448
	.field  	97,16			; _sensor_replacement[29] @ 464
	.field  	116,16			; _sensor_replacement[30] @ 480
	.field  	101,16			; _sensor_replacement[31] @ 496
	.field  	100,16			; _sensor_replacement[32] @ 512
	.field  	32,16			; _sensor_replacement[33] @ 528
	.field  	32,16			; _sensor_replacement[34] @ 544
	.field  	32,16			; _sensor_replacement[35] @ 560
	.field  	32,16			; _sensor_replacement[36] @ 576
	.field  	32,16			; _sensor_replacement[37] @ 592
	.field  	32,16			; _sensor_replacement[38] @ 608
	.field  	32,16			; _sensor_replacement[39] @ 624
	.field  	32,16			; _sensor_replacement[40] @ 640
	.field  	32,16			; _sensor_replacement[41] @ 656
	.field  	32,16			; _sensor_replacement[42] @ 672
	.field  	32,16			; _sensor_replacement[43] @ 688
	.field  	32,16			; _sensor_replacement[44] @ 704
	.field  	32,16			; _sensor_replacement[45] @ 720
	.field  	32,16			; _sensor_replacement[46] @ 736
	.field  	32,16			; _sensor_replacement[47] @ 752
	.field  	0,16			; _sensor_replacement[48] @ 768
	.space	16

DW$213	.dwtag  DW_TAG_variable, DW_AT_name("sensor_replacement"), DW_AT_symbol_name("_sensor_replacement")
	.dwattr DW$213, DW_AT_location[DW_OP_addr _sensor_replacement]
	.dwattr DW$213, DW_AT_type(*DW$T$307)
	.dwattr DW$213, DW_AT_external(0x01)
	.global	_replacement_cancelled
	.sect	".econst"
	.align	1
_replacement_cancelled:
	.field  	71,16			; _replacement_cancelled[0] @ 0
	.field  	48,16			; _replacement_cancelled[1] @ 16
	.field  	50,16			; _replacement_cancelled[2] @ 32
	.field  	50,16			; _replacement_cancelled[3] @ 48
	.field  	32,16			; _replacement_cancelled[4] @ 64
	.field  	83,16			; _replacement_cancelled[5] @ 80
	.field  	101,16			; _replacement_cancelled[6] @ 96
	.field  	110,16			; _replacement_cancelled[7] @ 112
	.field  	115,16			; _replacement_cancelled[8] @ 128
	.field  	111,16			; _replacement_cancelled[9] @ 144
	.field  	114,16			; _replacement_cancelled[10] @ 160
	.field  	32,16			; _replacement_cancelled[11] @ 176
	.field  	82,16			; _replacement_cancelled[12] @ 192
	.field  	101,16			; _replacement_cancelled[13] @ 208
	.field  	112,16			; _replacement_cancelled[14] @ 224
	.field  	108,16			; _replacement_cancelled[15] @ 240
	.field  	97,16			; _replacement_cancelled[16] @ 256
	.field  	99,16			; _replacement_cancelled[17] @ 272
	.field  	101,16			; _replacement_cancelled[18] @ 288
	.field  	109,16			; _replacement_cancelled[19] @ 304
	.field  	101,16			; _replacement_cancelled[20] @ 320
	.field  	110,16			; _replacement_cancelled[21] @ 336
	.field  	116,16			; _replacement_cancelled[22] @ 352
	.field  	32,16			; _replacement_cancelled[23] @ 368
	.field  	67,16			; _replacement_cancelled[24] @ 384
	.field  	97,16			; _replacement_cancelled[25] @ 400
	.field  	110,16			; _replacement_cancelled[26] @ 416
	.field  	99,16			; _replacement_cancelled[27] @ 432
	.field  	101,16			; _replacement_cancelled[28] @ 448
	.field  	108,16			; _replacement_cancelled[29] @ 464
	.field  	108,16			; _replacement_cancelled[30] @ 480
	.field  	101,16			; _replacement_cancelled[31] @ 496
	.field  	100,16			; _replacement_cancelled[32] @ 512
	.field  	32,16			; _replacement_cancelled[33] @ 528
	.field  	32,16			; _replacement_cancelled[34] @ 544
	.field  	32,16			; _replacement_cancelled[35] @ 560
	.field  	32,16			; _replacement_cancelled[36] @ 576
	.field  	32,16			; _replacement_cancelled[37] @ 592
	.field  	32,16			; _replacement_cancelled[38] @ 608
	.field  	32,16			; _replacement_cancelled[39] @ 624
	.field  	32,16			; _replacement_cancelled[40] @ 640
	.field  	32,16			; _replacement_cancelled[41] @ 656
	.field  	32,16			; _replacement_cancelled[42] @ 672
	.field  	32,16			; _replacement_cancelled[43] @ 688
	.field  	32,16			; _replacement_cancelled[44] @ 704
	.field  	32,16			; _replacement_cancelled[45] @ 720
	.field  	32,16			; _replacement_cancelled[46] @ 736
	.field  	32,16			; _replacement_cancelled[47] @ 752
	.field  	0,16			; _replacement_cancelled[48] @ 768
	.space	16

DW$214	.dwtag  DW_TAG_variable, DW_AT_name("replacement_cancelled"), DW_AT_symbol_name("_replacement_cancelled")
	.dwattr DW$214, DW_AT_location[DW_OP_addr _replacement_cancelled]
	.dwattr DW$214, DW_AT_type(*DW$T$307)
	.dwattr DW$214, DW_AT_external(0x01)
	.global	_replace_50hrcomplete
	.sect	".econst"
	.align	1
_replace_50hrcomplete:
	.field  	71,16			; _replace_50hrcomplete[0] @ 0
	.field  	48,16			; _replace_50hrcomplete[1] @ 16
	.field  	50,16			; _replace_50hrcomplete[2] @ 32
	.field  	51,16			; _replace_50hrcomplete[3] @ 48
	.field  	32,16			; _replace_50hrcomplete[4] @ 64
	.field  	83,16			; _replace_50hrcomplete[5] @ 80
	.field  	101,16			; _replace_50hrcomplete[6] @ 96
	.field  	110,16			; _replace_50hrcomplete[7] @ 112
	.field  	115,16			; _replace_50hrcomplete[8] @ 128
	.field  	111,16			; _replace_50hrcomplete[9] @ 144
	.field  	114,16			; _replace_50hrcomplete[10] @ 160
	.field  	32,16			; _replace_50hrcomplete[11] @ 176
	.field  	82,16			; _replace_50hrcomplete[12] @ 192
	.field  	101,16			; _replace_50hrcomplete[13] @ 208
	.field  	112,16			; _replace_50hrcomplete[14] @ 224
	.field  	108,16			; _replace_50hrcomplete[15] @ 240
	.field  	97,16			; _replace_50hrcomplete[16] @ 256
	.field  	99,16			; _replace_50hrcomplete[17] @ 272
	.field  	101,16			; _replace_50hrcomplete[18] @ 288
	.field  	109,16			; _replace_50hrcomplete[19] @ 304
	.field  	101,16			; _replace_50hrcomplete[20] @ 320
	.field  	110,16			; _replace_50hrcomplete[21] @ 336
	.field  	116,16			; _replace_50hrcomplete[22] @ 352
	.field  	32,16			; _replace_50hrcomplete[23] @ 368
	.field  	32,16			; _replace_50hrcomplete[24] @ 384
	.field  	53,16			; _replace_50hrcomplete[25] @ 400
	.field  	48,16			; _replace_50hrcomplete[26] @ 416
	.field  	32,16			; _replace_50hrcomplete[27] @ 432
	.field  	72,16			; _replace_50hrcomplete[28] @ 448
	.field  	111,16			; _replace_50hrcomplete[29] @ 464
	.field  	117,16			; _replace_50hrcomplete[30] @ 480
	.field  	114,16			; _replace_50hrcomplete[31] @ 496
	.field  	115,16			; _replace_50hrcomplete[32] @ 512
	.field  	32,16			; _replace_50hrcomplete[33] @ 528
	.field  	67,16			; _replace_50hrcomplete[34] @ 544
	.field  	111,16			; _replace_50hrcomplete[35] @ 560
	.field  	109,16			; _replace_50hrcomplete[36] @ 576
	.field  	112,16			; _replace_50hrcomplete[37] @ 592
	.field  	108,16			; _replace_50hrcomplete[38] @ 608
	.field  	101,16			; _replace_50hrcomplete[39] @ 624
	.field  	116,16			; _replace_50hrcomplete[40] @ 640
	.field  	101,16			; _replace_50hrcomplete[41] @ 656
	.field  	100,16			; _replace_50hrcomplete[42] @ 672
	.field  	32,16			; _replace_50hrcomplete[43] @ 688
	.field  	32,16			; _replace_50hrcomplete[44] @ 704
	.field  	32,16			; _replace_50hrcomplete[45] @ 720
	.field  	32,16			; _replace_50hrcomplete[46] @ 736
	.field  	32,16			; _replace_50hrcomplete[47] @ 752
	.field  	0,16			; _replace_50hrcomplete[48] @ 768
	.space	16

DW$215	.dwtag  DW_TAG_variable, DW_AT_name("replace_50hrcomplete"), DW_AT_symbol_name("_replace_50hrcomplete")
	.dwattr DW$215, DW_AT_location[DW_OP_addr _replace_50hrcomplete]
	.dwattr DW$215, DW_AT_type(*DW$T$307)
	.dwattr DW$215, DW_AT_external(0x01)
	.global	_replace_500hrcomplete
	.sect	".econst"
	.align	1
_replace_500hrcomplete:
	.field  	71,16			; _replace_500hrcomplete[0] @ 0
	.field  	48,16			; _replace_500hrcomplete[1] @ 16
	.field  	50,16			; _replace_500hrcomplete[2] @ 32
	.field  	52,16			; _replace_500hrcomplete[3] @ 48
	.field  	32,16			; _replace_500hrcomplete[4] @ 64
	.field  	83,16			; _replace_500hrcomplete[5] @ 80
	.field  	101,16			; _replace_500hrcomplete[6] @ 96
	.field  	110,16			; _replace_500hrcomplete[7] @ 112
	.field  	115,16			; _replace_500hrcomplete[8] @ 128
	.field  	111,16			; _replace_500hrcomplete[9] @ 144
	.field  	114,16			; _replace_500hrcomplete[10] @ 160
	.field  	32,16			; _replace_500hrcomplete[11] @ 176
	.field  	82,16			; _replace_500hrcomplete[12] @ 192
	.field  	101,16			; _replace_500hrcomplete[13] @ 208
	.field  	112,16			; _replace_500hrcomplete[14] @ 224
	.field  	108,16			; _replace_500hrcomplete[15] @ 240
	.field  	97,16			; _replace_500hrcomplete[16] @ 256
	.field  	99,16			; _replace_500hrcomplete[17] @ 272
	.field  	101,16			; _replace_500hrcomplete[18] @ 288
	.field  	109,16			; _replace_500hrcomplete[19] @ 304
	.field  	101,16			; _replace_500hrcomplete[20] @ 320
	.field  	110,16			; _replace_500hrcomplete[21] @ 336
	.field  	116,16			; _replace_500hrcomplete[22] @ 352
	.field  	32,16			; _replace_500hrcomplete[23] @ 368
	.field  	53,16			; _replace_500hrcomplete[24] @ 384
	.field  	48,16			; _replace_500hrcomplete[25] @ 400
	.field  	48,16			; _replace_500hrcomplete[26] @ 416
	.field  	32,16			; _replace_500hrcomplete[27] @ 432
	.field  	72,16			; _replace_500hrcomplete[28] @ 448
	.field  	111,16			; _replace_500hrcomplete[29] @ 464
	.field  	117,16			; _replace_500hrcomplete[30] @ 480
	.field  	114,16			; _replace_500hrcomplete[31] @ 496
	.field  	115,16			; _replace_500hrcomplete[32] @ 512
	.field  	32,16			; _replace_500hrcomplete[33] @ 528
	.field  	67,16			; _replace_500hrcomplete[34] @ 544
	.field  	111,16			; _replace_500hrcomplete[35] @ 560
	.field  	109,16			; _replace_500hrcomplete[36] @ 576
	.field  	112,16			; _replace_500hrcomplete[37] @ 592
	.field  	108,16			; _replace_500hrcomplete[38] @ 608
	.field  	101,16			; _replace_500hrcomplete[39] @ 624
	.field  	116,16			; _replace_500hrcomplete[40] @ 640
	.field  	101,16			; _replace_500hrcomplete[41] @ 656
	.field  	100,16			; _replace_500hrcomplete[42] @ 672
	.field  	32,16			; _replace_500hrcomplete[43] @ 688
	.field  	32,16			; _replace_500hrcomplete[44] @ 704
	.field  	32,16			; _replace_500hrcomplete[45] @ 720
	.field  	32,16			; _replace_500hrcomplete[46] @ 736
	.field  	32,16			; _replace_500hrcomplete[47] @ 752
	.field  	0,16			; _replace_500hrcomplete[48] @ 768
	.space	16

DW$216	.dwtag  DW_TAG_variable, DW_AT_name("replace_500hrcomplete"), DW_AT_symbol_name("_replace_500hrcomplete")
	.dwattr DW$216, DW_AT_location[DW_OP_addr _replace_500hrcomplete]
	.dwattr DW$216, DW_AT_type(*DW$T$307)
	.dwattr DW$216, DW_AT_external(0x01)
	.global	_sensorstatus
	.sect	".econst"
	.align	1
_sensorstatus:
	.field  	71,16			; _sensorstatus[0] @ 0
	.field  	48,16			; _sensorstatus[1] @ 16
	.field  	50,16			; _sensorstatus[2] @ 32
	.field  	53,16			; _sensorstatus[3] @ 48
	.field  	32,16			; _sensorstatus[4] @ 64
	.field  	83,16			; _sensorstatus[5] @ 80
	.field  	101,16			; _sensorstatus[6] @ 96
	.field  	110,16			; _sensorstatus[7] @ 112
	.field  	115,16			; _sensorstatus[8] @ 128
	.field  	111,16			; _sensorstatus[9] @ 144
	.field  	114,16			; _sensorstatus[10] @ 160
	.field  	32,16			; _sensorstatus[11] @ 176
	.field  	83,16			; _sensorstatus[12] @ 192
	.field  	116,16			; _sensorstatus[13] @ 208
	.field  	97,16			; _sensorstatus[14] @ 224
	.field  	116,16			; _sensorstatus[15] @ 240
	.field  	117,16			; _sensorstatus[16] @ 256
	.field  	115,16			; _sensorstatus[17] @ 272
	.field  	32,16			; _sensorstatus[18] @ 288
	.field  	32,16			; _sensorstatus[19] @ 304
	.field  	32,16			; _sensorstatus[20] @ 320
	.field  	32,16			; _sensorstatus[21] @ 336
	.field  	32,16			; _sensorstatus[22] @ 352
	.field  	32,16			; _sensorstatus[23] @ 368
	.field  	32,16			; _sensorstatus[24] @ 384
	.field  	32,16			; _sensorstatus[25] @ 400
	.field  	32,16			; _sensorstatus[26] @ 416
	.field  	32,16			; _sensorstatus[27] @ 432
	.field  	32,16			; _sensorstatus[28] @ 448
	.field  	32,16			; _sensorstatus[29] @ 464
	.field  	32,16			; _sensorstatus[30] @ 480
	.field  	32,16			; _sensorstatus[31] @ 496
	.field  	32,16			; _sensorstatus[32] @ 512
	.field  	32,16			; _sensorstatus[33] @ 528
	.field  	32,16			; _sensorstatus[34] @ 544
	.field  	32,16			; _sensorstatus[35] @ 560
	.field  	32,16			; _sensorstatus[36] @ 576
	.field  	32,16			; _sensorstatus[37] @ 592
	.field  	32,16			; _sensorstatus[38] @ 608
	.field  	32,16			; _sensorstatus[39] @ 624
	.field  	32,16			; _sensorstatus[40] @ 640
	.field  	32,16			; _sensorstatus[41] @ 656
	.field  	32,16			; _sensorstatus[42] @ 672
	.field  	32,16			; _sensorstatus[43] @ 688
	.field  	32,16			; _sensorstatus[44] @ 704
	.field  	32,16			; _sensorstatus[45] @ 720
	.field  	32,16			; _sensorstatus[46] @ 736
	.field  	32,16			; _sensorstatus[47] @ 752
	.field  	0,16			; _sensorstatus[48] @ 768
	.space	16

DW$217	.dwtag  DW_TAG_variable, DW_AT_name("sensorstatus"), DW_AT_symbol_name("_sensorstatus")
	.dwattr DW$217, DW_AT_location[DW_OP_addr _sensorstatus]
	.dwattr DW$217, DW_AT_type(*DW$T$307)
	.dwattr DW$217, DW_AT_external(0x01)
	.global	_digouttest
	.sect	".econst"
	.align	1
_digouttest:
	.field  	71,16			; _digouttest[0] @ 0
	.field  	48,16			; _digouttest[1] @ 16
	.field  	50,16			; _digouttest[2] @ 32
	.field  	55,16			; _digouttest[3] @ 48
	.field  	32,16			; _digouttest[4] @ 64
	.field  	65,16			; _digouttest[5] @ 80
	.field  	108,16			; _digouttest[6] @ 96
	.field  	97,16			; _digouttest[7] @ 112
	.field  	114,16			; _digouttest[8] @ 128
	.field  	109,16			; _digouttest[9] @ 144
	.field  	32,16			; _digouttest[10] @ 160
	.field  	84,16			; _digouttest[11] @ 176
	.field  	101,16			; _digouttest[12] @ 192
	.field  	115,16			; _digouttest[13] @ 208
	.field  	116,16			; _digouttest[14] @ 224
	.field  	32,16			; _digouttest[15] @ 240
	.field  	77,16			; _digouttest[16] @ 256
	.field  	111,16			; _digouttest[17] @ 272
	.field  	100,16			; _digouttest[18] @ 288
	.field  	101,16			; _digouttest[19] @ 304
	.field  	32,16			; _digouttest[20] @ 320
	.field  	83,16			; _digouttest[21] @ 336
	.field  	116,16			; _digouttest[22] @ 352
	.field  	97,16			; _digouttest[23] @ 368
	.field  	116,16			; _digouttest[24] @ 384
	.field  	117,16			; _digouttest[25] @ 400
	.field  	115,16			; _digouttest[26] @ 416
	.field  	32,16			; _digouttest[27] @ 432
	.field  	32,16			; _digouttest[28] @ 448
	.field  	32,16			; _digouttest[29] @ 464
	.field  	32,16			; _digouttest[30] @ 480
	.field  	32,16			; _digouttest[31] @ 496
	.field  	32,16			; _digouttest[32] @ 512
	.field  	32,16			; _digouttest[33] @ 528
	.field  	32,16			; _digouttest[34] @ 544
	.field  	32,16			; _digouttest[35] @ 560
	.field  	32,16			; _digouttest[36] @ 576
	.field  	32,16			; _digouttest[37] @ 592
	.field  	32,16			; _digouttest[38] @ 608
	.field  	32,16			; _digouttest[39] @ 624
	.field  	32,16			; _digouttest[40] @ 640
	.field  	32,16			; _digouttest[41] @ 656
	.field  	32,16			; _digouttest[42] @ 672
	.field  	32,16			; _digouttest[43] @ 688
	.field  	32,16			; _digouttest[44] @ 704
	.field  	32,16			; _digouttest[45] @ 720
	.field  	32,16			; _digouttest[46] @ 736
	.field  	32,16			; _digouttest[47] @ 752
	.field  	0,16			; _digouttest[48] @ 768
	.space	16

DW$218	.dwtag  DW_TAG_variable, DW_AT_name("digouttest"), DW_AT_symbol_name("_digouttest")
	.dwattr DW$218, DW_AT_location[DW_OP_addr _digouttest]
	.dwattr DW$218, DW_AT_type(*DW$T$307)
	.dwattr DW$218, DW_AT_external(0x01)
	.global	_damsingle
	.sect	".econst"
	.align	1
_damsingle:
	.field  	83,16			; _damsingle[0] @ 0
	.field  	48,16			; _damsingle[1] @ 16
	.field  	48,16			; _damsingle[2] @ 32
	.field  	51,16			; _damsingle[3] @ 48
	.field  	32,16			; _damsingle[4] @ 64
	.field  	68,16			; _damsingle[5] @ 80
	.field  	97,16			; _damsingle[6] @ 96
	.field  	109,16			; _damsingle[7] @ 112
	.field  	97,16			; _damsingle[8] @ 128
	.field  	103,16			; _damsingle[9] @ 144
	.field  	101,16			; _damsingle[10] @ 160
	.field  	32,16			; _damsingle[11] @ 176
	.field  	77,16			; _damsingle[12] @ 192
	.field  	111,16			; _damsingle[13] @ 208
	.field  	110,16			; _damsingle[14] @ 224
	.field  	105,16			; _damsingle[15] @ 240
	.field  	116,16			; _damsingle[16] @ 256
	.field  	111,16			; _damsingle[17] @ 272
	.field  	114,16			; _damsingle[18] @ 288
	.field  	32,16			; _damsingle[19] @ 304
	.field  	83,16			; _damsingle[20] @ 320
	.field  	105,16			; _damsingle[21] @ 336
	.field  	110,16			; _damsingle[22] @ 352
	.field  	103,16			; _damsingle[23] @ 368
	.field  	108,16			; _damsingle[24] @ 384
	.field  	101,16			; _damsingle[25] @ 400
	.field  	32,16			; _damsingle[26] @ 416
	.field  	83,16			; _damsingle[27] @ 432
	.field  	101,16			; _damsingle[28] @ 448
	.field  	110,16			; _damsingle[29] @ 464
	.field  	115,16			; _damsingle[30] @ 480
	.field  	111,16			; _damsingle[31] @ 496
	.field  	114,16			; _damsingle[32] @ 512
	.field  	32,16			; _damsingle[33] @ 528
	.field  	32,16			; _damsingle[34] @ 544
	.field  	32,16			; _damsingle[35] @ 560
	.field  	32,16			; _damsingle[36] @ 576
	.field  	32,16			; _damsingle[37] @ 592
	.field  	32,16			; _damsingle[38] @ 608
	.field  	32,16			; _damsingle[39] @ 624
	.field  	32,16			; _damsingle[40] @ 640
	.field  	32,16			; _damsingle[41] @ 656
	.field  	32,16			; _damsingle[42] @ 672
	.field  	32,16			; _damsingle[43] @ 688
	.field  	32,16			; _damsingle[44] @ 704
	.field  	32,16			; _damsingle[45] @ 720
	.field  	32,16			; _damsingle[46] @ 736
	.field  	32,16			; _damsingle[47] @ 752
	.field  	0,16			; _damsingle[48] @ 768
	.space	16

DW$219	.dwtag  DW_TAG_variable, DW_AT_name("damsingle"), DW_AT_symbol_name("_damsingle")
	.dwattr DW$219, DW_AT_location[DW_OP_addr _damsingle]
	.dwattr DW$219, DW_AT_type(*DW$T$307)
	.dwattr DW$219, DW_AT_external(0x01)
	.global	_damcyl
	.sect	".econst"
	.align	1
_damcyl:
	.field  	83,16			; _damcyl[0] @ 0
	.field  	48,16			; _damcyl[1] @ 16
	.field  	48,16			; _damcyl[2] @ 32
	.field  	52,16			; _damcyl[3] @ 48
	.field  	32,16			; _damcyl[4] @ 64
	.field  	68,16			; _damcyl[5] @ 80
	.field  	97,16			; _damcyl[6] @ 96
	.field  	109,16			; _damcyl[7] @ 112
	.field  	97,16			; _damcyl[8] @ 128
	.field  	103,16			; _damcyl[9] @ 144
	.field  	101,16			; _damcyl[10] @ 160
	.field  	32,16			; _damcyl[11] @ 176
	.field  	77,16			; _damcyl[12] @ 192
	.field  	111,16			; _damcyl[13] @ 208
	.field  	110,16			; _damcyl[14] @ 224
	.field  	105,16			; _damcyl[15] @ 240
	.field  	116,16			; _damcyl[16] @ 256
	.field  	111,16			; _damcyl[17] @ 272
	.field  	114,16			; _damcyl[18] @ 288
	.field  	32,16			; _damcyl[19] @ 304
	.field  	67,16			; _damcyl[20] @ 320
	.field  	121,16			; _damcyl[21] @ 336
	.field  	108,16			; _damcyl[22] @ 352
	.field  	105,16			; _damcyl[23] @ 368
	.field  	110,16			; _damcyl[24] @ 384
	.field  	100,16			; _damcyl[25] @ 400
	.field  	101,16			; _damcyl[26] @ 416
	.field  	114,16			; _damcyl[27] @ 432
	.field  	32,16			; _damcyl[28] @ 448
	.field  	83,16			; _damcyl[29] @ 464
	.field  	117,16			; _damcyl[30] @ 480
	.field  	109,16			; _damcyl[31] @ 496
	.field  	32,16			; _damcyl[32] @ 512
	.field  	32,16			; _damcyl[33] @ 528
	.field  	32,16			; _damcyl[34] @ 544
	.field  	32,16			; _damcyl[35] @ 560
	.field  	32,16			; _damcyl[36] @ 576
	.field  	32,16			; _damcyl[37] @ 592
	.field  	32,16			; _damcyl[38] @ 608
	.field  	32,16			; _damcyl[39] @ 624
	.field  	32,16			; _damcyl[40] @ 640
	.field  	32,16			; _damcyl[41] @ 656
	.field  	32,16			; _damcyl[42] @ 672
	.field  	32,16			; _damcyl[43] @ 688
	.field  	32,16			; _damcyl[44] @ 704
	.field  	32,16			; _damcyl[45] @ 720
	.field  	32,16			; _damcyl[46] @ 736
	.field  	32,16			; _damcyl[47] @ 752
	.field  	0,16			; _damcyl[48] @ 768
	.space	16

DW$220	.dwtag  DW_TAG_variable, DW_AT_name("damcyl"), DW_AT_symbol_name("_damcyl")
	.dwattr DW$220, DW_AT_location[DW_OP_addr _damcyl]
	.dwattr DW$220, DW_AT_type(*DW$T$307)
	.dwattr DW$220, DW_AT_external(0x01)
	.global	_dammbsum
	.sect	".econst"
	.align	1
_dammbsum:
	.field  	83,16			; _dammbsum[0] @ 0
	.field  	48,16			; _dammbsum[1] @ 16
	.field  	48,16			; _dammbsum[2] @ 32
	.field  	53,16			; _dammbsum[3] @ 48
	.field  	32,16			; _dammbsum[4] @ 64
	.field  	68,16			; _dammbsum[5] @ 80
	.field  	97,16			; _dammbsum[6] @ 96
	.field  	109,16			; _dammbsum[7] @ 112
	.field  	97,16			; _dammbsum[8] @ 128
	.field  	103,16			; _dammbsum[9] @ 144
	.field  	101,16			; _dammbsum[10] @ 160
	.field  	32,16			; _dammbsum[11] @ 176
	.field  	77,16			; _dammbsum[12] @ 192
	.field  	111,16			; _dammbsum[13] @ 208
	.field  	110,16			; _dammbsum[14] @ 224
	.field  	105,16			; _dammbsum[15] @ 240
	.field  	116,16			; _dammbsum[16] @ 256
	.field  	111,16			; _dammbsum[17] @ 272
	.field  	114,16			; _dammbsum[18] @ 288
	.field  	32,16			; _dammbsum[19] @ 304
	.field  	77,16			; _dammbsum[20] @ 320
	.field  	97,16			; _dammbsum[21] @ 336
	.field  	105,16			; _dammbsum[22] @ 352
	.field  	110,16			; _dammbsum[23] @ 368
	.field  	32,16			; _dammbsum[24] @ 384
	.field  	66,16			; _dammbsum[25] @ 400
	.field  	101,16			; _dammbsum[26] @ 416
	.field  	97,16			; _dammbsum[27] @ 432
	.field  	114,16			; _dammbsum[28] @ 448
	.field  	105,16			; _dammbsum[29] @ 464
	.field  	110,16			; _dammbsum[30] @ 480
	.field  	103,16			; _dammbsum[31] @ 496
	.field  	32,16			; _dammbsum[32] @ 512
	.field  	78,16			; _dammbsum[33] @ 528
	.field  	101,16			; _dammbsum[34] @ 544
	.field  	105,16			; _dammbsum[35] @ 560
	.field  	103,16			; _dammbsum[36] @ 576
	.field  	104,16			; _dammbsum[37] @ 592
	.field  	98,16			; _dammbsum[38] @ 608
	.field  	111,16			; _dammbsum[39] @ 624
	.field  	117,16			; _dammbsum[40] @ 640
	.field  	114,16			; _dammbsum[41] @ 656
	.field  	32,16			; _dammbsum[42] @ 672
	.field  	83,16			; _dammbsum[43] @ 688
	.field  	117,16			; _dammbsum[44] @ 704
	.field  	109,16			; _dammbsum[45] @ 720
	.field  	32,16			; _dammbsum[46] @ 736
	.field  	32,16			; _dammbsum[47] @ 752
	.field  	0,16			; _dammbsum[48] @ 768
	.space	16

DW$221	.dwtag  DW_TAG_variable, DW_AT_name("dammbsum"), DW_AT_symbol_name("_dammbsum")
	.dwattr DW$221, DW_AT_location[DW_OP_addr _dammbsum]
	.dwattr DW$221, DW_AT_type(*DW$T$307)
	.dwattr DW$221, DW_AT_external(0x01)
	.global	_slemOOR
	.sect	".econst"
	.align	1
_slemOOR:
	.field  	71,16			; _slemOOR[0] @ 0
	.field  	48,16			; _slemOOR[1] @ 16
	.field  	50,16			; _slemOOR[2] @ 32
	.field  	56,16			; _slemOOR[3] @ 48
	.field  	32,16			; _slemOOR[4] @ 64
	.field  	83,16			; _slemOOR[5] @ 80
	.field  	76,16			; _slemOOR[6] @ 96
	.field  	69,16			; _slemOOR[7] @ 112
	.field  	77,16			; _slemOOR[8] @ 128
	.field  	32,16			; _slemOOR[9] @ 144
	.field  	67,16			; _slemOOR[10] @ 160
	.field  	111,16			; _slemOOR[11] @ 176
	.field  	110,16			; _slemOOR[12] @ 192
	.field  	110,16			; _slemOOR[13] @ 208
	.field  	101,16			; _slemOOR[14] @ 224
	.field  	99,16			; _slemOOR[15] @ 240
	.field  	116,16			; _slemOOR[16] @ 256
	.field  	105,16			; _slemOOR[17] @ 272
	.field  	111,16			; _slemOOR[18] @ 288
	.field  	110,16			; _slemOOR[19] @ 304
	.field  	32,16			; _slemOOR[20] @ 320
	.field  	70,16			; _slemOOR[21] @ 336
	.field  	97,16			; _slemOOR[22] @ 352
	.field  	105,16			; _slemOOR[23] @ 368
	.field  	108,16			; _slemOOR[24] @ 384
	.field  	117,16			; _slemOOR[25] @ 400
	.field  	114,16			; _slemOOR[26] @ 416
	.field  	101,16			; _slemOOR[27] @ 432
	.field  	32,16			; _slemOOR[28] @ 448
	.field  	32,16			; _slemOOR[29] @ 464
	.field  	32,16			; _slemOOR[30] @ 480
	.field  	32,16			; _slemOOR[31] @ 496
	.field  	32,16			; _slemOOR[32] @ 512
	.field  	32,16			; _slemOOR[33] @ 528
	.field  	32,16			; _slemOOR[34] @ 544
	.field  	32,16			; _slemOOR[35] @ 560
	.field  	32,16			; _slemOOR[36] @ 576
	.field  	32,16			; _slemOOR[37] @ 592
	.field  	32,16			; _slemOOR[38] @ 608
	.field  	32,16			; _slemOOR[39] @ 624
	.field  	32,16			; _slemOOR[40] @ 640
	.field  	32,16			; _slemOOR[41] @ 656
	.field  	32,16			; _slemOOR[42] @ 672
	.field  	32,16			; _slemOOR[43] @ 688
	.field  	32,16			; _slemOOR[44] @ 704
	.field  	32,16			; _slemOOR[45] @ 720
	.field  	32,16			; _slemOOR[46] @ 736
	.field  	32,16			; _slemOOR[47] @ 752
	.field  	0,16			; _slemOOR[48] @ 768
	.space	16

DW$222	.dwtag  DW_TAG_variable, DW_AT_name("slemOOR"), DW_AT_symbol_name("_slemOOR")
	.dwattr DW$222, DW_AT_location[DW_OP_addr _slemOOR]
	.dwattr DW$222, DW_AT_type(*DW$T$307)
	.dwattr DW$222, DW_AT_external(0x01)
	.global	_rtcbattery
	.sect	".econst"
	.align	1
_rtcbattery:
	.field  	71,16			; _rtcbattery[0] @ 0
	.field  	48,16			; _rtcbattery[1] @ 16
	.field  	50,16			; _rtcbattery[2] @ 32
	.field  	57,16			; _rtcbattery[3] @ 48
	.field  	32,16			; _rtcbattery[4] @ 64
	.field  	83,16			; _rtcbattery[5] @ 80
	.field  	80,16			; _rtcbattery[6] @ 96
	.field  	85,16			; _rtcbattery[7] @ 112
	.field  	32,16			; _rtcbattery[8] @ 128
	.field  	67,16			; _rtcbattery[9] @ 144
	.field  	108,16			; _rtcbattery[10] @ 160
	.field  	111,16			; _rtcbattery[11] @ 176
	.field  	99,16			; _rtcbattery[12] @ 192
	.field  	107,16			; _rtcbattery[13] @ 208
	.field  	32,16			; _rtcbattery[14] @ 224
	.field  	66,16			; _rtcbattery[15] @ 240
	.field  	97,16			; _rtcbattery[16] @ 256
	.field  	116,16			; _rtcbattery[17] @ 272
	.field  	116,16			; _rtcbattery[18] @ 288
	.field  	101,16			; _rtcbattery[19] @ 304
	.field  	114,16			; _rtcbattery[20] @ 320
	.field  	121,16			; _rtcbattery[21] @ 336
	.field  	32,16			; _rtcbattery[22] @ 352
	.field  	76,16			; _rtcbattery[23] @ 368
	.field  	111,16			; _rtcbattery[24] @ 384
	.field  	119,16			; _rtcbattery[25] @ 400
	.field  	32,16			; _rtcbattery[26] @ 416
	.field  	32,16			; _rtcbattery[27] @ 432
	.field  	32,16			; _rtcbattery[28] @ 448
	.field  	32,16			; _rtcbattery[29] @ 464
	.field  	32,16			; _rtcbattery[30] @ 480
	.field  	32,16			; _rtcbattery[31] @ 496
	.field  	32,16			; _rtcbattery[32] @ 512
	.field  	32,16			; _rtcbattery[33] @ 528
	.field  	32,16			; _rtcbattery[34] @ 544
	.field  	32,16			; _rtcbattery[35] @ 560
	.field  	32,16			; _rtcbattery[36] @ 576
	.field  	32,16			; _rtcbattery[37] @ 592
	.field  	32,16			; _rtcbattery[38] @ 608
	.field  	32,16			; _rtcbattery[39] @ 624
	.field  	32,16			; _rtcbattery[40] @ 640
	.field  	32,16			; _rtcbattery[41] @ 656
	.field  	32,16			; _rtcbattery[42] @ 672
	.field  	32,16			; _rtcbattery[43] @ 688
	.field  	32,16			; _rtcbattery[44] @ 704
	.field  	32,16			; _rtcbattery[45] @ 720
	.field  	32,16			; _rtcbattery[46] @ 736
	.field  	32,16			; _rtcbattery[47] @ 752
	.field  	0,16			; _rtcbattery[48] @ 768
	.space	16

DW$223	.dwtag  DW_TAG_variable, DW_AT_name("rtcbattery"), DW_AT_symbol_name("_rtcbattery")
	.dwattr DW$223, DW_AT_location[DW_OP_addr _rtcbattery]
	.dwattr DW$223, DW_AT_type(*DW$T$307)
	.dwattr DW$223, DW_AT_external(0x01)
	.global	_slemalarm
	.sect	".econst"
	.align	1
_slemalarm:
	.field  	69,16			; _slemalarm[0] @ 0
	.field  	48,16			; _slemalarm[1] @ 16
	.field  	48,16			; _slemalarm[2] @ 32
	.field  	49,16			; _slemalarm[3] @ 48
	.field  	32,16			; _slemalarm[4] @ 64
	.field  	83,16			; _slemalarm[5] @ 80
	.field  	76,16			; _slemalarm[6] @ 96
	.field  	69,16			; _slemalarm[7] @ 112
	.field  	77,16			; _slemalarm[8] @ 128
	.field  	32,16			; _slemalarm[9] @ 144
	.field  	65,16			; _slemalarm[10] @ 160
	.field  	108,16			; _slemalarm[11] @ 176
	.field  	97,16			; _slemalarm[12] @ 192
	.field  	114,16			; _slemalarm[13] @ 208
	.field  	109,16			; _slemalarm[14] @ 224
	.field  	32,16			; _slemalarm[15] @ 240
	.field  	76,16			; _slemalarm[16] @ 256
	.field  	101,16			; _slemalarm[17] @ 272
	.field  	118,16			; _slemalarm[18] @ 288
	.field  	101,16			; _slemalarm[19] @ 304
	.field  	108,16			; _slemalarm[20] @ 320
	.field  	32,16			; _slemalarm[21] @ 336
	.field  	82,16			; _slemalarm[22] @ 352
	.field  	101,16			; _slemalarm[23] @ 368
	.field  	97,16			; _slemalarm[24] @ 384
	.field  	99,16			; _slemalarm[25] @ 400
	.field  	104,16			; _slemalarm[26] @ 416
	.field  	101,16			; _slemalarm[27] @ 432
	.field  	100,16			; _slemalarm[28] @ 448
	.field  	32,16			; _slemalarm[29] @ 464
	.field  	32,16			; _slemalarm[30] @ 480
	.field  	32,16			; _slemalarm[31] @ 496
	.field  	32,16			; _slemalarm[32] @ 512
	.field  	32,16			; _slemalarm[33] @ 528
	.field  	32,16			; _slemalarm[34] @ 544
	.field  	32,16			; _slemalarm[35] @ 560
	.field  	32,16			; _slemalarm[36] @ 576
	.field  	32,16			; _slemalarm[37] @ 592
	.field  	32,16			; _slemalarm[38] @ 608
	.field  	32,16			; _slemalarm[39] @ 624
	.field  	32,16			; _slemalarm[40] @ 640
	.field  	32,16			; _slemalarm[41] @ 656
	.field  	32,16			; _slemalarm[42] @ 672
	.field  	32,16			; _slemalarm[43] @ 688
	.field  	32,16			; _slemalarm[44] @ 704
	.field  	32,16			; _slemalarm[45] @ 720
	.field  	32,16			; _slemalarm[46] @ 736
	.field  	32,16			; _slemalarm[47] @ 752
	.field  	0,16			; _slemalarm[48] @ 768
	.space	16

DW$224	.dwtag  DW_TAG_variable, DW_AT_name("slemalarm"), DW_AT_symbol_name("_slemalarm")
	.dwattr DW$224, DW_AT_location[DW_OP_addr _slemalarm]
	.dwattr DW$224, DW_AT_type(*DW$T$307)
	.dwattr DW$224, DW_AT_external(0x01)
	.global	_eventlogcleared
	.sect	".econst"
	.align	1
_eventlogcleared:
	.field  	71,16			; _eventlogcleared[0] @ 0
	.field  	48,16			; _eventlogcleared[1] @ 16
	.field  	50,16			; _eventlogcleared[2] @ 32
	.field  	54,16			; _eventlogcleared[3] @ 48
	.field  	32,16			; _eventlogcleared[4] @ 64
	.field  	69,16			; _eventlogcleared[5] @ 80
	.field  	118,16			; _eventlogcleared[6] @ 96
	.field  	101,16			; _eventlogcleared[7] @ 112
	.field  	110,16			; _eventlogcleared[8] @ 128
	.field  	116,16			; _eventlogcleared[9] @ 144
	.field  	32,16			; _eventlogcleared[10] @ 160
	.field  	76,16			; _eventlogcleared[11] @ 176
	.field  	111,16			; _eventlogcleared[12] @ 192
	.field  	103,16			; _eventlogcleared[13] @ 208
	.field  	32,16			; _eventlogcleared[14] @ 224
	.field  	67,16			; _eventlogcleared[15] @ 240
	.field  	108,16			; _eventlogcleared[16] @ 256
	.field  	101,16			; _eventlogcleared[17] @ 272
	.field  	97,16			; _eventlogcleared[18] @ 288
	.field  	114,16			; _eventlogcleared[19] @ 304
	.field  	101,16			; _eventlogcleared[20] @ 320
	.field  	100,16			; _eventlogcleared[21] @ 336
	.field  	32,16			; _eventlogcleared[22] @ 352
	.field  	32,16			; _eventlogcleared[23] @ 368
	.field  	32,16			; _eventlogcleared[24] @ 384
	.field  	32,16			; _eventlogcleared[25] @ 400
	.field  	32,16			; _eventlogcleared[26] @ 416
	.field  	32,16			; _eventlogcleared[27] @ 432
	.field  	32,16			; _eventlogcleared[28] @ 448
	.field  	32,16			; _eventlogcleared[29] @ 464
	.field  	32,16			; _eventlogcleared[30] @ 480
	.field  	32,16			; _eventlogcleared[31] @ 496
	.field  	32,16			; _eventlogcleared[32] @ 512
	.field  	32,16			; _eventlogcleared[33] @ 528
	.field  	32,16			; _eventlogcleared[34] @ 544
	.field  	32,16			; _eventlogcleared[35] @ 560
	.field  	32,16			; _eventlogcleared[36] @ 576
	.field  	32,16			; _eventlogcleared[37] @ 592
	.field  	32,16			; _eventlogcleared[38] @ 608
	.field  	32,16			; _eventlogcleared[39] @ 624
	.field  	32,16			; _eventlogcleared[40] @ 640
	.field  	32,16			; _eventlogcleared[41] @ 656
	.field  	32,16			; _eventlogcleared[42] @ 672
	.field  	32,16			; _eventlogcleared[43] @ 688
	.field  	32,16			; _eventlogcleared[44] @ 704
	.field  	32,16			; _eventlogcleared[45] @ 720
	.field  	32,16			; _eventlogcleared[46] @ 736
	.field  	32,16			; _eventlogcleared[47] @ 752
	.field  	0,16			; _eventlogcleared[48] @ 768
	.space	16

DW$225	.dwtag  DW_TAG_variable, DW_AT_name("eventlogcleared"), DW_AT_symbol_name("_eventlogcleared")
	.dwattr DW$225, DW_AT_location[DW_OP_addr _eventlogcleared]
	.dwattr DW$225, DW_AT_type(*DW$T$307)
	.dwattr DW$225, DW_AT_external(0x01)
	.global	_pMsgList
_pMsgList:	.usect	".ebss",82,1,1
DW$226	.dwtag  DW_TAG_variable, DW_AT_name("pMsgList"), DW_AT_symbol_name("_pMsgList")
	.dwattr DW$226, DW_AT_location[DW_OP_addr _pMsgList]
	.dwattr DW$226, DW_AT_type(*DW$T$309)
	.dwattr DW$226, DW_AT_external(0x01)
	.global	_find
_find:	.usect	".ebss",82,1,1
DW$227	.dwtag  DW_TAG_variable, DW_AT_name("find"), DW_AT_symbol_name("_find")
	.dwattr DW$227, DW_AT_location[DW_OP_addr _find]
	.dwattr DW$227, DW_AT_type(*DW$T$179)
	.dwattr DW$227, DW_AT_external(0x01)
_previoustensecs$1:	.usect	".ebss",1,1,0
_previousmins$2:	.usect	".ebss",1,1,0
_previousmins$3:	.usect	".ebss",1,1,0
;	C:\CCStudio_v3.3\C2000\cgtools\bin\opt2000.exe C:\Users\Andrew\AppData\Local\Temp\TI9002 C:\Users\Andrew\AppData\Local\Temp\TI9004 
;	C:\CCStudio_v3.3\C2000\cgtools\bin\ac2000.exe -q -D_INLINE -DLARGE_MODEL -IC:/CCStudio_v3.3/C2000/xdais/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/bios/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/rtdx/include/c2000 -IC:/CCStudio_v3.3/C2000/cgtools/include --version=28 --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\Andrew\AppData\Local\Temp\TI9002 --template_info_file C:\Users\Andrew\AppData\Local\Temp\TI9006 --object_file 
	.sect	".text"
	.global	_SDCardLogUpdate

DW$228	.dwtag  DW_TAG_subprogram, DW_AT_name("SDCardLogUpdate"), DW_AT_symbol_name("_SDCardLogUpdate")
	.dwattr DW$228, DW_AT_low_pc(_SDCardLogUpdate)
	.dwattr DW$228, DW_AT_high_pc(0x00)
	.dwattr DW$228, DW_AT_begin_file("sdcard.c")
	.dwattr DW$228, DW_AT_begin_line(0xb2)
	.dwattr DW$228, DW_AT_begin_column(0x06)
	.dwattr DW$228, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$228, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",179,1
DW$229	.dwtag  DW_TAG_variable, DW_AT_name("previoustensecs"), DW_AT_symbol_name("_previoustensecs$1")
	.dwattr DW$229, DW_AT_type(*DW$T$11)
	.dwattr DW$229, DW_AT_location[DW_OP_addr _previoustensecs$1]
DW$230	.dwtag  DW_TAG_variable, DW_AT_name("previousmins"), DW_AT_symbol_name("_previousmins$2")
	.dwattr DW$230, DW_AT_type(*DW$T$11)
	.dwattr DW$230, DW_AT_location[DW_OP_addr _previousmins$2]

;***************************************************************
;* FNAME: _SDCardLogUpdate              FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_SDCardLogUpdate:
        MOVW      DP,#_clocktime+1
        MOVL      *SP++,XAR3
        AND       AL,@_clocktime+1,#0x00f0 ; |186| 
        ADDB      SP,#2
        MOVW      DP,#_previoustensecs$1
        CMP       AL,@_previoustensecs$1 ; |186| 
        BF        L1,EQ                 ; |186| 
        ; branchcc occurs ; |186| 
        MOVW      DP,#_previoustensecs$1
        MOV       @_previoustensecs$1,AL ; |188| 
        MOVB      AL,#0
        LCR       #_GetModalRPM         ; |189| 
        ; call occurs [#_GetModalRPM] ; |189| 
        MOVW      DP,#_allsensors+38
        CMP       AL,@_allsensors+38    ; |189| 
        BF        L1,LO                 ; |189| 
        ; branchcc occurs ; |189| 
        LCR       #_SDShortTermLogUpdate ; |189| 
        ; call occurs [#_SDShortTermLogUpdate] ; |189| 
L1:    
        MOVW      DP,#_clocktime+2
        MOV       AL,@_clocktime+2      ; |191| 
        MOVW      DP,#_previousmins$2
        CMP       AL,@_previousmins$2   ; |191| 
        BF        L3,EQ                 ; |191| 
        ; branchcc occurs ; |191| 
        MOVW      DP,#_previousmins$2
        MOV       @_previousmins$2,AL   ; |193| 
        MOVW      DP,#_logtime+2
        AND       @_logtime+2,#0xff00   ; |195| 
        MOVB      AL,#0
        LCR       #_GetModalRPM         ; |196| 
        ; call occurs [#_GetModalRPM] ; |196| 
        MOVW      DP,#_allsensors+38
        CMP       AL,@_allsensors+38    ; |196| 
        BF        L2,LO                 ; |196| 
        ; branchcc occurs ; |196| 
        LCR       #_SDLongTermLogUpdate ; |196| 
        ; call occurs [#_SDLongTermLogUpdate] ; |196| 
L2:    
        MOVW      DP,#_settings+7
        MOV       AL,@_settings+7       ; |197| 
        BF        L3,EQ                 ; |197| 
        ; branchcc occurs ; |197| 
        CMPB      AL,#3                 ; |197| 
        BF        L3,HIS                ; |197| 
        ; branchcc occurs ; |197| 
        MOVL      XAR4,#FSL1            ; |199| 
        MOVL      XAR3,#_stringbuffer   ; |199| 
        MOVL      *-SP[2],XAR4          ; |199| 
        MOVL      XAR4,XAR3             ; |199| 
        LCR       #_sprintf             ; |199| 
        ; call occurs [#_sprintf] ; |199| 
        MOVL      XAR4,XAR3             ; |200| 
        LCR       #_DebugStringOut      ; |200| 
        ; call occurs [#_DebugStringOut] ; |200| 
        LCR       #_SDCardInitialise    ; |201| 
        ; call occurs [#_SDCardInitialise] ; |201| 
        MOVW      DP,#_settings+7
        MOV       AL,@_settings+7       ; |202| 
        BF        L3,EQ                 ; |202| 
        ; branchcc occurs ; |202| 
        MOVB      AH,#1                 ; |202| 
        ADD       AH,AL                 ; |202| 
        MOVW      DP,#_settings+7
        MOV       @_settings+7,AH       ; |202| 
L3:    
        SUBB      SP,#2
        MOVL      XAR3,*--SP
	.dwpsn	"sdcard.c",208,1
        LRETR
        ; return occurs
	.dwattr DW$228, DW_AT_end_file("sdcard.c")
	.dwattr DW$228, DW_AT_end_line(0xd0)
	.dwattr DW$228, DW_AT_end_column(0x01)
	.dwendtag DW$228

	.sect	".text"
	.global	_SDCardUpdate

DW$231	.dwtag  DW_TAG_subprogram, DW_AT_name("SDCardUpdate"), DW_AT_symbol_name("_SDCardUpdate")
	.dwattr DW$231, DW_AT_low_pc(_SDCardUpdate)
	.dwattr DW$231, DW_AT_high_pc(0x00)
	.dwattr DW$231, DW_AT_begin_file("sdcard.c")
	.dwattr DW$231, DW_AT_begin_line(0xd4)
	.dwattr DW$231, DW_AT_begin_column(0x06)
	.dwattr DW$231, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$231, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",213,1

;***************************************************************
;* FNAME: _SDCardUpdate                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SDCardUpdate:
        LCR       #_GetVoltageStatus    ; |216| 
        ; call occurs [#_GetVoltageStatus] ; |216| 
        CMPB      AL,#1                 ; |216| 
        BF        L10,NEQ               ; |216| 
        ; branchcc occurs ; |216| 
        MOVW      DP,#_settings+10
        MOV       AL,@_settings+10      ; |216| 
        CMPB      AL,#3                 ; |216| 
        BF        L4,GT                 ; |216| 
        ; branchcc occurs ; |216| 
        CMPB      AL,#3                 ; |216| 
        BF        L6,EQ                 ; |216| 
        ; branchcc occurs ; |216| 
        CMPB      AL,#1                 ; |216| 
        BF        L8,EQ                 ; |216| 
        ; branchcc occurs ; |216| 
        CMPB      AL,#2                 ; |216| 
        BF        L7,EQ                 ; |216| 
        ; branchcc occurs ; |216| 
        BF        L10,UNC               ; |216| 
        ; branch occurs ; |216| 
L4:    
        CMPB      AL,#4                 ; |216| 
        BF        L5,EQ                 ; |216| 
        ; branchcc occurs ; |216| 
        CMPB      AL,#5                 ; |216| 
        BF        L10,NEQ               ; |216| 
        ; branchcc occurs ; |216| 
        LCR       #_CalibrationtdtoSDCardFile ; |246| 
        ; call occurs [#_CalibrationtdtoSDCardFile] ; |246| 
        BF        L9,UNC                ; |249| 
        ; branch occurs ; |249| 
L5:    
        LCR       #_OffsetstoSDCardFile ; |239| 
        ; call occurs [#_OffsetstoSDCardFile] ; |239| 
        BF        L9,UNC                ; |242| 
        ; branch occurs ; |242| 
L6:    
        LCR       #_SensorStatustoSDCardFile ; |233| 
        ; call occurs [#_SensorStatustoSDCardFile] ; |233| 
        BF        L9,UNC                ; |236| 
        ; branch occurs ; |236| 
L7:    
        MOVB      AL,#0
        MOVL      XAR4,#_sdcarddir+27   ; |227| 
        LCR       #_MANCompTabletoSDCardFile ; |227| 
        ; call occurs [#_MANCompTabletoSDCardFile] ; |227| 
        BF        L9,UNC                ; |230| 
        ; branch occurs ; |230| 
L8:    
        LCR       #_GeneralSettingstoSDCardFile ; |219| 
        ; call occurs [#_GeneralSettingstoSDCardFile] ; |219| 
        LCR       #_WriteAllSensorStructtoNVMEM ; |220| 
        ; call occurs [#_WriteAllSensorStructtoNVMEM] ; |220| 
        LCR       #_SaveSafeStruct2     ; |221| 
        ; call occurs [#_SaveSafeStruct2] ; |221| 
L9:    
        MOV       AL,#600               ; |222| 
        LCR       #_NOPDelay            ; |222| 
        ; call occurs [#_NOPDelay] ; |222| 
        MOVW      DP,#_settings+10
        MOV       @_settings+10,#0      ; |223| 
L10:    
        MOVW      DP,#_settings+7
        MOV       AL,@_settings+7       ; |263| 
        BF        L11,NEQ               ; |263| 
        ; branchcc occurs ; |263| 
        MOV       AL,#362               ; |266| 
        LCR       #_CheckAlarmBitSet    ; |266| 
        ; call occurs [#_CheckAlarmBitSet] ; |266| 
        CMPB      AL,#1                 ; |266| 
        BF        L12,NEQ               ; |266| 
        ; branchcc occurs ; |266| 
        MOV       AL,#362               ; |266| 
        LCR       #_ClearAlarmEvent     ; |266| 
        ; call occurs [#_ClearAlarmEvent] ; |266| 
        BF        L12,UNC               ; |266| 
        ; branch occurs ; |266| 
L11:    
        MOV       AL,#362               ; |264| 
        LCR       #_CheckAlarmBitSet    ; |264| 
        ; call occurs [#_CheckAlarmBitSet] ; |264| 
        CMPB      AL,#0                 ; |264| 
        BF        L12,NEQ               ; |264| 
        ; branchcc occurs ; |264| 
        MOV       AL,#362               ; |264| 
        LCR       #_SetAlarmEvent       ; |264| 
        ; call occurs [#_SetAlarmEvent] ; |264| 
L12:    
	.dwpsn	"sdcard.c",270,1
        LRETR
        ; return occurs
	.dwattr DW$231, DW_AT_end_file("sdcard.c")
	.dwattr DW$231, DW_AT_end_line(0x10e)
	.dwattr DW$231, DW_AT_end_column(0x01)
	.dwendtag DW$231

	.sect	".text"
	.global	_PowerUpReadSD

DW$232	.dwtag  DW_TAG_subprogram, DW_AT_name("PowerUpReadSD"), DW_AT_symbol_name("_PowerUpReadSD")
	.dwattr DW$232, DW_AT_low_pc(_PowerUpReadSD)
	.dwattr DW$232, DW_AT_high_pc(0x00)
	.dwattr DW$232, DW_AT_begin_file("sdcard.c")
	.dwattr DW$232, DW_AT_begin_line(0x111)
	.dwattr DW$232, DW_AT_begin_column(0x06)
	.dwattr DW$232, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$232, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",274,1

;***************************************************************
;* FNAME: _PowerUpReadSD                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_PowerUpReadSD:
        LCR       #_ReadGeneralSettingsfromSDCardFile ; |275| 
        ; call occurs [#_ReadGeneralSettingsfromSDCardFile] ; |275| 
        LCR       #_ReadSensorStatusfromSDCardFile ; |276| 
        ; call occurs [#_ReadSensorStatusfromSDCardFile] ; |276| 
        LCR       #_ReadOffsetsfromSDCardFile ; |277| 
        ; call occurs [#_ReadOffsetsfromSDCardFile] ; |277| 
        LCR       #_ReadMANCompTablefromSDCardFile ; |278| 
        ; call occurs [#_ReadMANCompTablefromSDCardFile] ; |278| 
        LCR       #_ReadCalibrationtdfromSDCardFile ; |279| 
        ; call occurs [#_ReadCalibrationtdfromSDCardFile] ; |279| 
	.dwpsn	"sdcard.c",280,1
        LRETR
        ; return occurs
	.dwattr DW$232, DW_AT_end_file("sdcard.c")
	.dwattr DW$232, DW_AT_end_line(0x118)
	.dwattr DW$232, DW_AT_end_column(0x01)
	.dwendtag DW$232

	.sect	".text"
	.global	_GetFirstFileNameString

DW$233	.dwtag  DW_TAG_subprogram, DW_AT_name("GetFirstFileNameString"), DW_AT_symbol_name("_GetFirstFileNameString")
	.dwattr DW$233, DW_AT_low_pc(_GetFirstFileNameString)
	.dwattr DW$233, DW_AT_high_pc(0x00)
	.dwattr DW$233, DW_AT_begin_file("sdcard.c")
	.dwattr DW$233, DW_AT_begin_line(0x11c)
	.dwattr DW$233, DW_AT_begin_column(0x05)
	.dwattr DW$233, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$233, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",285,1

;***************************************************************
;* FNAME: _GetFirstFileNameString       FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  8 Auto,  0 SOE     *
;***************************************************************

_GetFirstFileNameString:
        MOVW      DP,#_settings+7
        ADDB      SP,#8
        MOV       AL,@_settings+7       ; |288| 
        BF        L14,NEQ               ; |288| 
        ; branchcc occurs ; |288| 
        MOVW      DP,#_sdsettings
        MOV       AL,@_sdsettings       ; |288| 
        CMPB      AL,#1                 ; |288| 
        BF        L14,NEQ               ; |288| 
        ; branchcc occurs ; |288| 
        MOVZ      AR4,SP                ; |291| 
        MOVB      AL,#4                 ; |291| 
        MOVL      XAR5,#_fileregs+315   ; |291| 
        SUBB      XAR4,#8               ; |291| 
        LCR       #_StringInttoByteArray ; |291| 
        ; call occurs [#_StringInttoByteArray] ; |291| 
        MOV       AL,*-SP[8]            ; |292| 
        BF        L14,EQ                ; |292| 
        ; branchcc occurs ; |292| 
        MOVZ      AR4,SP                ; |294| 
        MOVB      AL,#1                 ; |294| 
        SUBB      XAR4,#8               ; |294| 
        LCR       #_SDCardSetupDirectory ; |294| 
        ; call occurs [#_SDCardSetupDirectory] ; |294| 
        CMPB      AL,#0                 ; |294| 
        BF        L13,EQ                ; |294| 
        ; branchcc occurs ; |294| 
        MOV       AL,#-1                ; |294| 
        BF        L15,UNC               ; |294| 
        ; branch occurs ; |294| 
L13:    
        MOVL      XAR5,#_find           ; |295| 
        MOVL      XAR4,#FSL2            ; |295| 
        LCR       #_fm_findfirst        ; |295| 
        ; call occurs [#_fm_findfirst] ; |295| 
        CMPB      AL,#0                 ; |295| 
        BF        L14,NEQ               ; |295| 
        ; branchcc occurs ; |295| 
        MOVB      AL,#6                 ; |298| 
        MOVL      XAR5,#_find           ; |298| 
        MOVL      XAR4,#_fileregs+319   ; |298| 
        LCR       #_StringBytetoIntArray ; |298| 
        ; call occurs [#_StringBytetoIntArray] ; |298| 
L14:    
        MOVB      AL,#0
L15:    
        SUBB      SP,#8                 ; |302| 
	.dwpsn	"sdcard.c",303,1
        LRETR
        ; return occurs
	.dwattr DW$233, DW_AT_end_file("sdcard.c")
	.dwattr DW$233, DW_AT_end_line(0x12f)
	.dwattr DW$233, DW_AT_end_column(0x01)
	.dwendtag DW$233

	.sect	".text"
	.global	_GetNextFileNameString

DW$234	.dwtag  DW_TAG_subprogram, DW_AT_name("GetNextFileNameString"), DW_AT_symbol_name("_GetNextFileNameString")
	.dwattr DW$234, DW_AT_low_pc(_GetNextFileNameString)
	.dwattr DW$234, DW_AT_high_pc(0x00)
	.dwattr DW$234, DW_AT_begin_file("sdcard.c")
	.dwattr DW$234, DW_AT_begin_line(0x132)
	.dwattr DW$234, DW_AT_begin_column(0x05)
	.dwattr DW$234, DW_AT_frame_base[DW_OP_breg20 -16]
	.dwattr DW$234, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",307,1

;***************************************************************
;* FNAME: _GetNextFileNameString        FR SIZE:  14           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 12 Auto,  2 SOE     *
;***************************************************************

_GetNextFileNameString:
        MOVL      *SP++,XAR3
        ADDB      SP,#12
        MOVW      DP,#_settings+7
        MOV       AL,@_settings+7       ; |309| 
        BF        L16,NEQ               ; |309| 
        ; branchcc occurs ; |309| 
        MOVW      DP,#_sdsettings
        MOV       AL,@_sdsettings       ; |309| 
        CMPB      AL,#1                 ; |309| 
        BF        L16,NEQ               ; |309| 
        ; branchcc occurs ; |309| 
        MOVZ      AR4,SP                ; |312| 
        MOVL      XAR3,#_fileregs+319   ; |312| 
        MOVL      XAR5,XAR3             ; |312| 
        MOVB      AL,#6                 ; |312| 
        SUBB      XAR4,#12              ; |312| 
        LCR       #_StringInttoByteArray ; |312| 
        ; call occurs [#_StringInttoByteArray] ; |312| 
        MOVL      XAR4,#_find           ; |313| 
        LCR       #_fm_findnext         ; |313| 
        ; call occurs [#_fm_findnext] ; |313| 
        CMPB      AL,#0                 ; |313| 
        BF        L16,NEQ               ; |313| 
        ; branchcc occurs ; |313| 
        MOVL      XAR4,XAR3             ; |316| 
        MOVB      AL,#12                ; |316| 
        MOVL      XAR5,#_find           ; |316| 
        LCR       #_StringBytetoIntArray ; |316| 
        ; call occurs [#_StringBytetoIntArray] ; |316| 
L16:    
        MOVB      AL,#0
        SUBB      SP,#12                ; |319| 
        MOVL      XAR3,*--SP            ; |319| 
	.dwpsn	"sdcard.c",320,1
        LRETR
        ; return occurs
	.dwattr DW$234, DW_AT_end_file("sdcard.c")
	.dwattr DW$234, DW_AT_end_line(0x140)
	.dwattr DW$234, DW_AT_end_column(0x01)
	.dwendtag DW$234

	.sect	".text"
	.global	_GetFileNumWords

DW$235	.dwtag  DW_TAG_subprogram, DW_AT_name("GetFileNumWords"), DW_AT_symbol_name("_GetFileNumWords")
	.dwattr DW$235, DW_AT_low_pc(_GetFileNumWords)
	.dwattr DW$235, DW_AT_high_pc(0x00)
	.dwattr DW$235, DW_AT_begin_file("sdcard.c")
	.dwattr DW$235, DW_AT_begin_line(0x143)
	.dwattr DW$235, DW_AT_begin_column(0x06)
	.dwattr DW$235, DW_AT_frame_base[DW_OP_breg20 -26]
	.dwattr DW$235, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",324,1

;***************************************************************
;* FNAME: _GetFileNumWords              FR SIZE:  24           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 20 Auto,  4 SOE     *
;***************************************************************

_GetFileNumWords:
        MOVL      *SP++,XAR1
        MOVW      DP,#_settings+7
        MOVL      *SP++,XAR2
        MOV       AL,@_settings+7       ; |330| 
        ADDB      SP,#20
        BF        L17,NEQ               ; |330| 
        ; branchcc occurs ; |330| 
        MOVW      DP,#_sdsettings
        MOV       AL,@_sdsettings       ; |330| 
        CMPB      AL,#1                 ; |330| 
        BF        L18,EQ                ; |330| 
        ; branchcc occurs ; |330| 
L17:    
        MOVB      ACC,#0
        BF        L20,UNC               ; |347| 
        ; branch occurs ; |347| 
L18:    
        MOVZ      AR4,SP                ; |333| 
        MOVB      AL,#4                 ; |333| 
        MOVL      XAR5,#_fileregs+315   ; |333| 
        SUBB      XAR4,#8               ; |333| 
        LCR       #_StringInttoByteArray ; |333| 
        ; call occurs [#_StringInttoByteArray] ; |333| 
        MOVZ      AR4,SP                ; |334| 
        MOVB      AL,#6                 ; |334| 
        MOVL      XAR5,#_fileregs+319   ; |334| 
        SUBB      XAR4,#20              ; |334| 
        LCR       #_StringInttoByteArray ; |334| 
        ; call occurs [#_StringInttoByteArray] ; |334| 
        MOVZ      AR4,SP                ; |335| 
        MOVB      AL,#2                 ; |335| 
        SUBB      XAR4,#8               ; |335| 
        LCR       #_SDCardSetupDirectory ; |335| 
        ; call occurs [#_SDCardSetupDirectory] ; |335| 
        CMPB      AL,#0                 ; |335| 
        BF        L19,NEQ               ; |335| 
        ; branchcc occurs ; |335| 
        MOVZ      AR4,SP                ; |337| 
        MOVL      XAR5,#FSL3            ; |337| 
        SUBB      XAR4,#20              ; |337| 
        LCR       #_fm_open             ; |337| 
        ; call occurs [#_fm_open] ; |337| 
        MOVL      ACC,XAR4              ; |337| 
        MOVL      XAR2,XAR4             ; |337| 
        BF        L19,EQ                ; |337| 
        ; branchcc occurs ; |337| 
        MOVZ      AR4,SP                ; |342| 
        SUBB      XAR4,#20              ; |342| 
        LCR       #_fm_filelength       ; |342| 
        ; call occurs [#_fm_filelength] ; |342| 
        MOVL      XAR4,XAR2             ; |342| 
        MOVL      XAR1,ACC              ; |342| 
        LCR       #_fm_close            ; |343| 
        ; call occurs [#_fm_close] ; |343| 
        MOV       T,#31                 ; |344| 
        MOVL      ACC,XAR1              ; |344| 
        LSRL      ACC,T                 ; |344| 
        SETC      SXM
        ADDL      ACC,XAR1
        SFR       ACC,1                 ; |344| 
        MOVW      DP,#_fileregs+326
        MOVL      @_fileregs+326,ACC    ; |344| 
        BF        L20,UNC               ; |345| 
        ; branch occurs ; |345| 
L19:    
        MOVB      ACC,#0
        SUBB      ACC,#1
L20:    
        SUBB      SP,#20                ; |340| 
        MOVL      XAR2,*--SP            ; |340| 
        MOVL      XAR1,*--SP            ; |340| 
	.dwpsn	"sdcard.c",348,1
        LRETR
        ; return occurs
	.dwattr DW$235, DW_AT_end_file("sdcard.c")
	.dwattr DW$235, DW_AT_end_line(0x15c)
	.dwattr DW$235, DW_AT_end_column(0x01)
	.dwendtag DW$235

	.sect	".text"
	.global	_ReadWriteTransferBuffer

DW$236	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadWriteTransferBuffer"), DW_AT_symbol_name("_ReadWriteTransferBuffer")
	.dwattr DW$236, DW_AT_low_pc(_ReadWriteTransferBuffer)
	.dwattr DW$236, DW_AT_high_pc(0x00)
	.dwattr DW$236, DW_AT_begin_file("sdcard.c")
	.dwattr DW$236, DW_AT_begin_line(0x161)
	.dwattr DW$236, DW_AT_begin_column(0x05)
	.dwattr DW$236, DW_AT_frame_base[DW_OP_breg20 -30]
	.dwattr DW$236, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",354,1

;***************************************************************
;* FNAME: _ReadWriteTransferBuffer      FR SIZE:  28           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 20 Auto,  6 SOE     *
;***************************************************************

_ReadWriteTransferBuffer:
        MOVL      *SP++,XAR1
        MOVW      DP,#_settings+7
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOV       AL,@_settings+7       ; |360| 
        ADDB      SP,#22
        BF        L27,NEQ               ; |360| 
        ; branchcc occurs ; |360| 
        MOVW      DP,#_sdsettings
        MOV       AL,@_sdsettings       ; |360| 
        CMPB      AL,#1                 ; |360| 
        BF        L27,NEQ               ; |360| 
        ; branchcc occurs ; |360| 
        MOVW      DP,#_fileregs+332
        MOV       AL,@_fileregs+332     ; |360| 
        BF        L27,EQ                ; |360| 
        ; branchcc occurs ; |360| 
        MOVZ      AR4,SP                ; |365| 
        MOVB      AL,#4                 ; |365| 
        MOVL      XAR5,#_fileregs+315   ; |365| 
        SUBB      XAR4,#10              ; |365| 
        LCR       #_StringInttoByteArray ; |365| 
        ; call occurs [#_StringInttoByteArray] ; |365| 
        MOVZ      AR4,SP                ; |366| 
        MOVB      AL,#6                 ; |366| 
        MOVL      XAR5,#_fileregs+319   ; |366| 
        SUBB      XAR4,#22              ; |366| 
        LCR       #_StringInttoByteArray ; |366| 
        ; call occurs [#_StringInttoByteArray] ; |366| 
        MOVZ      AR4,SP                ; |367| 
        MOVB      AL,#3                 ; |367| 
        SUBB      XAR4,#10              ; |367| 
        LCR       #_SDCardSetupDirectory ; |367| 
        ; call occurs [#_SDCardSetupDirectory] ; |367| 
        CMPB      AL,#0                 ; |367| 
        BF        L25,NEQ               ; |367| 
        ; branchcc occurs ; |367| 
        MOVW      DP,#_fileregs+328
        MOV       ACC,@_fileregs+328 << #1 ; |368| 
        MOVZ      AR2,AL
        MOVW      DP,#_fileregs+332
        MOV       AL,@_fileregs+332     ; |368| 
        CMPB      AL,#1                 ; |368| 
        BF        L23,EQ                ; |368| 
        ; branchcc occurs ; |368| 
        CMPB      AL,#2                 ; |392| 
        BF        L22,EQ                ; |392| 
        ; branchcc occurs ; |392| 
        CMPB      AL,#3                 ; |408| 
        BF        L27,NEQ               ; |408| 
        ; branchcc occurs ; |408| 
        MOVZ      AR4,SP                ; |412| 
        MOVW      DP,#_fileregs+332
        MOV       @_fileregs+332,#0     ; |410| 
        SUBB      XAR4,#22              ; |412| 
        LCR       #_fm_delete           ; |412| 
        ; call occurs [#_fm_delete] ; |412| 
        CMPB      AL,#0                 ; |412| 
        BF        L21,EQ                ; |412| 
        ; branchcc occurs ; |412| 
        LCR       #_DeselectSPI         ; |414| 
        ; call occurs [#_DeselectSPI] ; |414| 
        BF        L25,UNC               ; |415| 
        ; branch occurs ; |415| 
L21:    
        LCR       #_DeselectSPI         ; |417| 
        ; call occurs [#_DeselectSPI] ; |417| 
        BF        L27,UNC               ; |417| 
        ; branch occurs ; |417| 
L22:    
        MOVW      DP,#_fileregs+332
        MOVL      XAR3,#_f_databuf      ; |395| 
        MOVL      XAR5,#_transferbuffer ; |395| 
        MOV       @_fileregs+332,#0     ; |394| 
        MOVL      XAR4,XAR3             ; |395| 
        MOVW      DP,#_fileregs+328
        MOV       AL,@_fileregs+328     ; |395| 
        LCR       #_InttoByteArray      ; |395| 
        ; call occurs [#_InttoByteArray] ; |395| 
        MOVZ      AR4,SP                ; |397| 
        MOVL      XAR5,#FSL4            ; |397| 
        SUBB      XAR4,#22              ; |397| 
        LCR       #_fm_open             ; |397| 
        ; call occurs [#_fm_open] ; |397| 
        MOVL      ACC,XAR4              ; |397| 
        MOVL      XAR1,XAR4             ; |397| 
        BF        L25,EQ                ; |397| 
        ; branchcc occurs ; |397| 
        MOVL      XAR5,XAR1             ; |401| 
        MOVL      XAR4,XAR3             ; |401| 
        MOVL      *-SP[2],XAR2          ; |401| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |401| 
        ; call occurs [#_fm_write] ; |401| 
        MOVL      XAR6,ACC              ; |401| 
        MOVL      ACC,XAR2              ; |401| 
        CMPL      ACC,XAR6              ; |401| 
        BF        L24,NEQ               ; |401| 
        ; branchcc occurs ; |401| 
        MOVL      XAR4,XAR1
        LCR       #_fm_close            ; |406| 
        ; call occurs [#_fm_close] ; |406| 
        BF        L27,UNC               ; |407| 
        ; branch occurs ; |407| 
L23:    
        MOVZ      AR4,SP                ; |374| 
        MOVW      DP,#_fileregs+332
        MOVL      XAR5,#FSL3            ; |374| 
        MOV       @_fileregs+332,#0     ; |373| 
        SUBB      XAR4,#22              ; |374| 
        LCR       #_fm_open             ; |374| 
        ; call occurs [#_fm_open] ; |374| 
        MOVL      ACC,XAR4              ; |374| 
        MOVL      XAR1,XAR4             ; |374| 
        BF        L25,EQ                ; |374| 
        ; branchcc occurs ; |374| 
        MOVB      ACC,#0
        MOVW      DP,#_fileregs+330
        MOVL      *-SP[2],ACC           ; |377| 
        MOVL      ACC,@_fileregs+330    ; |377| 
        MOVW      DP,#_fileregs+10
        MOVL      XAR4,@_fileregs+10    ; |377| 
        LSL       ACC,1                 ; |377| 
        LCR       #_fm_seek             ; |377| 
        ; call occurs [#_fm_seek] ; |377| 
        CMPB      AL,#0                 ; |377| 
        BF        L26,EQ                ; |377| 
        ; branchcc occurs ; |377| 
L24:    
        MOVL      XAR4,XAR1
        LCR       #_fm_close            ; |384| 
        ; call occurs [#_fm_close] ; |384| 
L25:    
        MOV       AL,#-1                ; |385| 
        BF        L28,UNC               ; |385| 
        ; branch occurs ; |385| 
L26:    
        MOVL      XAR3,#_f_databuf      ; |379| 
        MOVL      XAR5,XAR1             ; |379| 
        MOVL      XAR4,XAR3             ; |379| 
        MOVL      *-SP[2],XAR2          ; |379| 
        MOVB      ACC,#1
        LCR       #_fm_read             ; |379| 
        ; call occurs [#_fm_read] ; |379| 
        MOVL      XAR4,XAR1             ; |379| 
        LCR       #_fm_close            ; |380| 
        ; call occurs [#_fm_close] ; |380| 
        MOVW      DP,#_fileregs+328
        MOVL      XAR5,XAR3             ; |381| 
        MOVL      XAR4,#_transferbuffer ; |381| 
        MOV       AL,@_fileregs+328     ; |381| 
        LCR       #_BytetoIntArray      ; |381| 
        ; call occurs [#_BytetoIntArray] ; |381| 
L27:    
        MOVB      AL,#0
L28:    
        SUBB      SP,#22                ; |420| 
        MOVL      XAR3,*--SP            ; |420| 
        MOVL      XAR2,*--SP            ; |420| 
        MOVL      XAR1,*--SP            ; |420| 
	.dwpsn	"sdcard.c",421,1
        LRETR
        ; return occurs
	.dwattr DW$236, DW_AT_end_file("sdcard.c")
	.dwattr DW$236, DW_AT_end_line(0x1a5)
	.dwattr DW$236, DW_AT_end_column(0x01)
	.dwendtag DW$236

	.sect	".text"
	.global	_FindFirstLogFile

DW$237	.dwtag  DW_TAG_subprogram, DW_AT_name("FindFirstLogFile"), DW_AT_symbol_name("_FindFirstLogFile")
	.dwattr DW$237, DW_AT_low_pc(_FindFirstLogFile)
	.dwattr DW$237, DW_AT_high_pc(0x00)
	.dwattr DW$237, DW_AT_begin_file("sdcard.c")
	.dwattr DW$237, DW_AT_begin_line(0x1a9)
	.dwattr DW$237, DW_AT_begin_column(0x05)
	.dwattr DW$237, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$237, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",426,1

;***************************************************************
;* FNAME: _FindFirstLogFile             FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            8 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_FindFirstLogFile:
;* AR4   assigned to _ptr
DW$238	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$238, DW_AT_type(*DW$T$149)
	.dwattr DW$238, DW_AT_location[DW_OP_reg12]
        ADDB      SP,#8
        MOVB      AL,#4                 ; |427| 
        LCR       #_SDCardSetupDirectory ; |427| 
        ; call occurs [#_SDCardSetupDirectory] ; |427| 
        CMPB      AL,#0                 ; |427| 
        BF        L29,EQ                ; |427| 
        ; branchcc occurs ; |427| 
        MOV       AL,#-1                ; |427| 
        BF        L31,UNC               ; |427| 
        ; branch occurs ; |427| 
L29:    
        MOVL      XAR5,#_find           ; |428| 
        MOVL      XAR4,#FSL5            ; |428| 
        LCR       #_fm_findfirst        ; |428| 
        ; call occurs [#_fm_findfirst] ; |428| 
        CMPB      AL,#0                 ; |428| 
        BF        L30,NEQ               ; |428| 
        ; branchcc occurs ; |428| 
        MOVL      XAR4,#FSL6            ; |430| 
        MOVL      *-SP[2],XAR4          ; |430| 
        MOVL      XAR4,#_fileregs       ; |430| 
        MOVL      *-SP[4],XAR4          ; |430| 
        MOVL      XAR4,#_fileregs+1     ; |430| 
        MOVL      *-SP[6],XAR4          ; |430| 
        MOVL      XAR4,#_fileregs+2     ; |430| 
        MOVL      *-SP[8],XAR4          ; |430| 
        MOVL      XAR4,#_find           ; |430| 
        LCR       #_sscanf              ; |430| 
        ; call occurs [#_sscanf] ; |430| 
L30:    
        MOVB      AL,#0
L31:    
        SUBB      SP,#8                 ; |432| 
	.dwpsn	"sdcard.c",433,1
        LRETR
        ; return occurs
	.dwattr DW$237, DW_AT_end_file("sdcard.c")
	.dwattr DW$237, DW_AT_end_line(0x1b1)
	.dwattr DW$237, DW_AT_end_column(0x01)
	.dwendtag DW$237

	.sect	".text"
	.global	_SDCardInitfromModbus

DW$239	.dwtag  DW_TAG_subprogram, DW_AT_name("SDCardInitfromModbus"), DW_AT_symbol_name("_SDCardInitfromModbus")
	.dwattr DW$239, DW_AT_low_pc(_SDCardInitfromModbus)
	.dwattr DW$239, DW_AT_high_pc(0x00)
	.dwattr DW$239, DW_AT_begin_file("sdcard.c")
	.dwattr DW$239, DW_AT_begin_line(0x1b4)
	.dwattr DW$239, DW_AT_begin_column(0x06)
	.dwattr DW$239, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$239, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",437,1

;***************************************************************
;* FNAME: _SDCardInitfromModbus         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SDCardInitfromModbus:
        MOVW      DP,#_settings+9
        MOV       AL,@_settings+9       ; |438| 
        CMPB      AL,#1                 ; |438| 
        BF        L34,NEQ               ; |438| 
        ; branchcc occurs ; |438| 
        MOVW      DP,#_settings+9
        MOV       @_settings+9,#0       ; |440| 
        MOVW      DP,#_sdsettings
        MOV       @_sdsettings,#1       ; |441| 
        LCR       #_SDCardInitialise    ; |442| 
        ; call occurs [#_SDCardInitialise] ; |442| 
        CMPB      AL,#0                 ; |442| 
        BF        L32,NEQ               ; |442| 
        ; branchcc occurs ; |442| 
        MOVW      DP,#_sdsettings
        MOV       @_sdsettings,#1       ; |444| 
        BF        L33,UNC               ; |446| 
        ; branch occurs ; |446| 
L32:    
        MOVW      DP,#_sdsettings
        MOV       @_sdsettings,#0       ; |449| 
L33:    
        LCR       #_SaveSDSettings      ; |450| 
        ; call occurs [#_SaveSDSettings] ; |450| 
L34:    
	.dwpsn	"sdcard.c",453,1
        LRETR
        ; return occurs
	.dwattr DW$239, DW_AT_end_file("sdcard.c")
	.dwattr DW$239, DW_AT_end_line(0x1c5)
	.dwattr DW$239, DW_AT_end_column(0x01)
	.dwendtag DW$239

	.sect	".text"
	.global	_SDCardInitialise

DW$240	.dwtag  DW_TAG_subprogram, DW_AT_name("SDCardInitialise"), DW_AT_symbol_name("_SDCardInitialise")
	.dwattr DW$240, DW_AT_low_pc(_SDCardInitialise)
	.dwattr DW$240, DW_AT_high_pc(0x00)
	.dwattr DW$240, DW_AT_begin_file("sdcard.c")
	.dwattr DW$240, DW_AT_begin_line(0x1c9)
	.dwattr DW$240, DW_AT_begin_column(0x05)
	.dwattr DW$240, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$240, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",458,1

;***************************************************************
;* FNAME: _SDCardInitialise             FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_SDCardInitialise:
        MOVL      *SP++,XAR1
        MOVW      DP,#_timers+1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOV       @_timers+1,#200       ; |463| 
        NOP
        MOVW      DP,#_timers+1
        MOV       AL,@_timers+1         ; |464| 
        BF        L36,EQ                ; |464| 
        ; branchcc occurs ; |464| 
L35:    
DW$L$_SDCardInitialise$2$B:
	.dwpsn	"sdcard.c",464,0
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |464| 
        MOVW      DP,#_timers+1
        MOV       AL,@_timers+1         ; |464| 
        BF        L35,NEQ               ; |464| 
        ; branchcc occurs ; |464| 
DW$L$_SDCardInitialise$2$E:
L36:    
        LCR       #_GetVoltageStatus    ; |466| 
        ; call occurs [#_GetVoltageStatus] ; |466| 
        CMPB      AL,#1                 ; |466| 
        BF        L41,NEQ               ; |466| 
        ; branchcc occurs ; |466| 
        MOVW      DP,#_sdsettings
        MOV       AL,@_sdsettings       ; |466| 
        CMPB      AL,#1                 ; |466| 
        BF        L41,NEQ               ; |466| 
        ; branchcc occurs ; |466| 
        MOVW      DP,#_settings+11
        MOV       @_settings+11,#0      ; |471| 
        MOVW      DP,#_settings+8
        MOV       @_settings+8,#0       ; |472| 
        MOVB      XAR1,#0
        MOVW      DP,#_settings+9
        MOV       @_settings+9,#0       ; |473| 
        MOVW      DP,#_settings+10
        MOV       @_settings+10,#0      ; |474| 
        MOVW      DP,#_settings+5
        MOV       @_settings+5,#0       ; |475| 
        MOVW      DP,#_sdsettings+2
        MOV       @_sdsettings+2,#0     ; |476| 
        MOVW      DP,#_fileregs+332
	.dwpsn	"sdcard.c",479,0
        MOV       @_fileregs+332,#0     ; |477| 
L37:    
DW$L$_SDCardInitialise$6$B:
	.dwpsn	"sdcard.c",480,0
        MOVB      AL,#0
        MOVL      XAR5,#4194303         ; |482| 
        MOVL      XAR4,#_mmc_initfunc   ; |482| 
        LCR       #_fm_initvolume       ; |482| 
        ; call occurs [#_fm_initvolume] ; |482| 
        CMPB      AL,#0                 ; |482| 
        MOVZ      AR2,AL                ; |482| 
        BF        L38,EQ                ; |482| 
        ; branchcc occurs ; |482| 
DW$L$_SDCardInitialise$6$E:
DW$L$_SDCardInitialise$7$B:
        MOVB      AL,#0
        LCR       #_fm_delvolume        ; |483| 
        ; call occurs [#_fm_delvolume] ; |483| 
DW$L$_SDCardInitialise$7$E:
L38:    
DW$L$_SDCardInitialise$8$B:
        MOV       AL,AR1
        MOVW      DP,#_settings
        ADDB      AL,#1                 ; |484| 
        MOVZ      AR1,AL                ; |484| 
        MOV       @_settings,#1         ; |485| 
        MOV       AL,AR2                ; |485| 
        BF        L40,EQ                ; |486| 
        ; branchcc occurs ; |486| 
DW$L$_SDCardInitialise$8$E:
DW$L$_SDCardInitialise$9$B:
        MOV       AL,AR1
        CMPB      AL,#4                 ; |486| 
	.dwpsn	"sdcard.c",486,0
        BF        L37,LT                ; |486| 
        ; branchcc occurs ; |486| 
DW$L$_SDCardInitialise$9$E:
        MOV       AL,AR2
        BF        L40,EQ                ; |487| 
        ; branchcc occurs ; |487| 
        MOVL      XAR4,#FSL7            ; |510| 
        LCR       #_CLITransmitBuffer   ; |510| 
        ; call occurs [#_CLITransmitBuffer] ; |510| 
        MOVB      AL,#2                 ; |511| 
L39:    
        LCR       #_SDcardError         ; |511| 
        ; call occurs [#_SDcardError] ; |511| 
        MOV       AL,#-1                ; |512| 
        BF        L44,UNC               ; |512| 
        ; branch occurs ; |512| 
L40:    
        MOVW      DP,#_settings+7
        MOVL      XAR4,#_sdcarddir      ; |491| 
        MOV       @_settings+7,#0       ; |489| 
        LCR       #_fm_mkdir            ; |491| 
        ; call occurs [#_fm_mkdir] ; |491| 
        MOVL      XAR4,#_sdcarddir+18   ; |492| 
        LCR       #_fm_mkdir            ; |492| 
        ; call occurs [#_fm_mkdir] ; |492| 
        MOVL      XAR4,#_sdcarddir+9    ; |493| 
        LCR       #_fm_mkdir            ; |493| 
        ; call occurs [#_fm_mkdir] ; |493| 
        MOVL      XAR3,#_sdcarddir+27   ; |494| 
        MOVL      XAR4,XAR3             ; |494| 
        LCR       #_fm_mkdir            ; |494| 
        ; call occurs [#_fm_mkdir] ; |494| 
        LCR       #_DeselectSPI         ; |495| 
        ; call occurs [#_DeselectSPI] ; |495| 
        MOVL      XAR4,XAR3             ; |496| 
        MOVB      AL,#5                 ; |496| 
        LCR       #_SDCardSetupDirectory ; |496| 
        ; call occurs [#_SDCardSetupDirectory] ; |496| 
        LCR       #_CreateNewEventFile  ; |497| 
        ; call occurs [#_CreateNewEventFile] ; |497| 
        LCR       #_DeselectSPI         ; |498| 
        ; call occurs [#_DeselectSPI] ; |498| 
        LCR       #_SDShortTermSetup    ; |499| 
        ; call occurs [#_SDShortTermSetup] ; |499| 
        LCR       #_SDLongTermSetup     ; |500| 
        ; call occurs [#_SDLongTermSetup] ; |500| 
        LCR       #_DeselectSPI         ; |501| 
        ; call occurs [#_DeselectSPI] ; |501| 
        LCR       #_SdcardAmotFile      ; |502| 
        ; call occurs [#_SdcardAmotFile] ; |502| 
        CMPB      AL,#0                 ; |502| 
        BF        L41,EQ                ; |502| 
        ; branchcc occurs ; |502| 
        MOVB      AL,#1                 ; |504| 
        BF        L39,UNC               ; |505| 
        ; branch occurs ; |505| 
L41:    
        MOVW      DP,#_timers+1
        MOV       @_timers+1,#200       ; |517| 
        NOP
        MOVW      DP,#_timers+1
        MOV       AL,@_timers+1         ; |518| 
        BF        L43,EQ                ; |518| 
        ; branchcc occurs ; |518| 
L42:    
DW$L$_SDCardInitialise$17$B:
	.dwpsn	"sdcard.c",518,0
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |518| 
        MOVW      DP,#_timers+1
        MOV       AL,@_timers+1         ; |518| 
        BF        L42,NEQ               ; |518| 
        ; branchcc occurs ; |518| 
DW$L$_SDCardInitialise$17$E:
L43:    
        MOVB      AL,#0
L44:    
        MOVL      XAR3,*--SP            ; |523| 
        MOVL      XAR2,*--SP            ; |523| 
        MOVL      XAR1,*--SP            ; |523| 
	.dwpsn	"sdcard.c",524,1
        LRETR
        ; return occurs

DW$241	.dwtag  DW_TAG_loop
	.dwattr DW$241, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L42:1:1471518989")
	.dwattr DW$241, DW_AT_begin_file("sdcard.c")
	.dwattr DW$241, DW_AT_begin_line(0x206)
	.dwattr DW$241, DW_AT_end_line(0x206)
DW$242	.dwtag  DW_TAG_loop_range
	.dwattr DW$242, DW_AT_low_pc(DW$L$_SDCardInitialise$17$B)
	.dwattr DW$242, DW_AT_high_pc(DW$L$_SDCardInitialise$17$E)
	.dwendtag DW$241


DW$243	.dwtag  DW_TAG_loop
	.dwattr DW$243, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L37:1:1471518989")
	.dwattr DW$243, DW_AT_begin_file("sdcard.c")
	.dwattr DW$243, DW_AT_begin_line(0x1df)
	.dwattr DW$243, DW_AT_end_line(0x1e6)
DW$244	.dwtag  DW_TAG_loop_range
	.dwattr DW$244, DW_AT_low_pc(DW$L$_SDCardInitialise$6$B)
	.dwattr DW$244, DW_AT_high_pc(DW$L$_SDCardInitialise$6$E)
DW$245	.dwtag  DW_TAG_loop_range
	.dwattr DW$245, DW_AT_low_pc(DW$L$_SDCardInitialise$7$B)
	.dwattr DW$245, DW_AT_high_pc(DW$L$_SDCardInitialise$7$E)
DW$246	.dwtag  DW_TAG_loop_range
	.dwattr DW$246, DW_AT_low_pc(DW$L$_SDCardInitialise$8$B)
	.dwattr DW$246, DW_AT_high_pc(DW$L$_SDCardInitialise$8$E)
DW$247	.dwtag  DW_TAG_loop_range
	.dwattr DW$247, DW_AT_low_pc(DW$L$_SDCardInitialise$9$B)
	.dwattr DW$247, DW_AT_high_pc(DW$L$_SDCardInitialise$9$E)
	.dwendtag DW$243


DW$248	.dwtag  DW_TAG_loop
	.dwattr DW$248, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L35:1:1471518989")
	.dwattr DW$248, DW_AT_begin_file("sdcard.c")
	.dwattr DW$248, DW_AT_begin_line(0x1d0)
	.dwattr DW$248, DW_AT_end_line(0x1d0)
DW$249	.dwtag  DW_TAG_loop_range
	.dwattr DW$249, DW_AT_low_pc(DW$L$_SDCardInitialise$2$B)
	.dwattr DW$249, DW_AT_high_pc(DW$L$_SDCardInitialise$2$E)
	.dwendtag DW$248

	.dwattr DW$240, DW_AT_end_file("sdcard.c")
	.dwattr DW$240, DW_AT_end_line(0x20c)
	.dwattr DW$240, DW_AT_end_column(0x01)
	.dwendtag DW$240

	.sect	".text"
	.global	_SDShortTermSetup

DW$250	.dwtag  DW_TAG_subprogram, DW_AT_name("SDShortTermSetup"), DW_AT_symbol_name("_SDShortTermSetup")
	.dwattr DW$250, DW_AT_low_pc(_SDShortTermSetup)
	.dwattr DW$250, DW_AT_high_pc(0x00)
	.dwattr DW$250, DW_AT_begin_file("sdcard.c")
	.dwattr DW$250, DW_AT_begin_line(0x212)
	.dwattr DW$250, DW_AT_begin_column(0x05)
	.dwattr DW$250, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$250, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",531,1

;***************************************************************
;* FNAME: _SDShortTermSetup             FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_SDShortTermSetup:
        MOVL      *SP++,XAR1
        MOVL      XAR4,#FSL8            ; |536| 
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#2
        LCR       #_fm_chdir            ; |536| 
        ; call occurs [#_fm_chdir] ; |536| 
        MOVL      XAR4,#_sdcarddir+36   ; |538| 
        LCR       #_fm_mkdir            ; |538| 
        ; call occurs [#_fm_mkdir] ; |538| 
        LCR       #_DeselectSPI         ; |539| 
        ; call occurs [#_DeselectSPI] ; |539| 
        MOVL      XAR3,#_shortterm      ; |542| 
        MOVB      AL,#0
        MOVL      XAR4,XAR3             ; |542| 
        MOVB      XAR5,#46              ; |542| 
        MOV       AH,#28722             ; |542| 
        LCR       #_ReadNVMemory        ; |542| 
        ; call occurs [#_ReadNVMemory] ; |542| 
        MOV       AL,#22136
        MOVW      DP,#_shortterm
        MOV       AH,#4660
        CMPL      ACC,@_shortterm       ; |544| 
        BF        L45,EQ                ; |544| 
        ; branchcc occurs ; |544| 
        MOV       PH,#4660
        MOV       PL,#22136
        MOVW      DP,#_shortterm
        MOVB      ACC,#21
        MOVL      @_shortterm,P         ; |546| 
        MOVW      DP,#_shortterm+22
        ADDL      ACC,XAR3
        MOV       @_shortterm+22,#0     ; |548| 
        MOVL      XAR4,ACC              ; |551| 
        MOVW      DP,#_shortterm+34
        MOV       @_shortterm+34,#0     ; |549| 
        MOVL      XAR3,#_stringbuffer   ; |555| 
        AND       *+XAR4[0],#0xfff8     ; |551| 
        MOVL      XAR4,#FSL9            ; |555| 
        MOVL      *-SP[2],XAR4          ; |555| 
        MOVL      XAR4,XAR3             ; |555| 
        LCR       #_sprintf             ; |555| 
        ; call occurs [#_sprintf] ; |555| 
        MOVL      XAR4,XAR3             ; |556| 
        LCR       #_DebugStringOut      ; |556| 
        ; call occurs [#_DebugStringOut] ; |556| 
L45:    
        MOVL      XAR3,#_shortterm+2    ; |560| 
        MOV       *+XAR3[0],#98         ; |560| 
        MOV       *+XAR3[1],#105        ; |561| 
        MOV       *+XAR3[2],#110        ; |562| 
        MOV       *+XAR3[3],#0          ; |563| 
        LCR       #_BuildTimeStamp      ; |564| 
        ; call occurs [#_BuildTimeStamp] ; |564| 
        MOVW      DP,#_shortterm+18
        MOVL      @_shortterm+18,ACC    ; |564| 
        MOVW      DP,#_clocktime+5
        MOV       AL,@_clocktime+5      ; |565| 
        MOVL      XAR4,#_shortterm+6    ; |568| 
        MOVW      DP,#_shortterm+20
        MOVL      XAR5,XAR3             ; |568| 
        MOVL      XAR1,XAR4             ; |568| 
        MOV       @_shortterm+20,AL     ; |565| 
        LCR       #_BuildFileName       ; |568| 
        ; call occurs [#_BuildFileName] ; |568| 
        MOVB      AL,#0
        MOVB      XAR5,#46              ; |572| 
        MOVL      XAR4,#_shortterm      ; |572| 
        MOV       AH,#28722             ; |572| 
        LCR       #_WriteNVMemory       ; |572| 
        ; call occurs [#_WriteNVMemory] ; |572| 
        MOVB      AL,#6                 ; |574| 
        MOVL      XAR4,#_sdcarddir+36   ; |574| 
        LCR       #_SDCardSetupDirectory ; |574| 
        ; call occurs [#_SDCardSetupDirectory] ; |574| 
        MOVL      XAR4,XAR1             ; |574| 
        MOVL      XAR5,#FSL4            ; |576| 
        LCR       #_fm_open             ; |576| 
        ; call occurs [#_fm_open] ; |576| 
        MOVL      XAR2,XAR4             ; |576| 
        MOVL      XAR4,XAR1             ; |576| 
        LCR       #_fm_filelength       ; |577| 
        ; call occurs [#_fm_filelength] ; |577| 
        MOVL      XAR4,XAR2             ; |578| 
        MOVL      XAR1,ACC              ; |577| 
        LCR       #_fm_close            ; |578| 
        ; call occurs [#_fm_close] ; |578| 
        MOVL      ACC,XAR1              ; |578| 
        BF        L46,NEQ               ; |580| 
        ; branchcc occurs ; |580| 
        LCR       #_CreateShortTermFilesandHeaders ; |582| 
        ; call occurs [#_CreateShortTermFilesandHeaders] ; |582| 
L46:    
        LCR       #_DeselectSPI         ; |584| 
        ; call occurs [#_DeselectSPI] ; |584| 
        SUBB      SP,#2                 ; |585| 
        MOVL      XAR3,*--SP            ; |585| 
        MOVL      XAR2,*--SP            ; |585| 
        MOVL      XAR1,*--SP            ; |585| 
        MOVB      AL,#0
	.dwpsn	"sdcard.c",586,1
        LRETR
        ; return occurs
	.dwattr DW$250, DW_AT_end_file("sdcard.c")
	.dwattr DW$250, DW_AT_end_line(0x24a)
	.dwattr DW$250, DW_AT_end_column(0x01)
	.dwendtag DW$250

	.sect	".text"
	.global	_CreateShortTermFilesandHeaders

DW$251	.dwtag  DW_TAG_subprogram, DW_AT_name("CreateShortTermFilesandHeaders"), DW_AT_symbol_name("_CreateShortTermFilesandHeaders")
	.dwattr DW$251, DW_AT_low_pc(_CreateShortTermFilesandHeaders)
	.dwattr DW$251, DW_AT_high_pc(0x00)
	.dwattr DW$251, DW_AT_begin_file("sdcard.c")
	.dwattr DW$251, DW_AT_begin_line(0x24d)
	.dwattr DW$251, DW_AT_begin_column(0x06)
	.dwattr DW$251, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$251, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",590,1

;***************************************************************
;* FNAME: _CreateShortTermFilesandHeaders FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_CreateShortTermFilesandHeaders:
        MOVL      *SP++,XAR3
        MOVB      AL,#7                 ; |591| 
        MOVL      XAR4,#_sdcarddir+36   ; |591| 
        LCR       #_SDCardSetupDirectory ; |591| 
        ; call occurs [#_SDCardSetupDirectory] ; |591| 
        CMPB      AL,#0                 ; |591| 
        BF        L47,NEQ               ; |591| 
        ; branchcc occurs ; |591| 
        MOVL      XAR3,#_shortterm+6    ; |592| 
        MOVL      XAR4,XAR3             ; |592| 
        LCR       #_CreateFile          ; |592| 
        ; call occurs [#_CreateFile] ; |592| 
        CMPB      AL,#0                 ; |592| 
        BF        L47,NEQ               ; |592| 
        ; branchcc occurs ; |592| 
        MOVL      XAR4,XAR3             ; |594| 
        LCR       #_SDLogHeader         ; |594| 
        ; call occurs [#_SDLogHeader] ; |594| 
L47:    
        MOVL      XAR3,*--SP
	.dwpsn	"sdcard.c",595,1
        LRETR
        ; return occurs
	.dwattr DW$251, DW_AT_end_file("sdcard.c")
	.dwattr DW$251, DW_AT_end_line(0x253)
	.dwattr DW$251, DW_AT_end_column(0x01)
	.dwendtag DW$251

	.sect	".text"
	.global	_CreateLongTermFilesandHeaders

DW$252	.dwtag  DW_TAG_subprogram, DW_AT_name("CreateLongTermFilesandHeaders"), DW_AT_symbol_name("_CreateLongTermFilesandHeaders")
	.dwattr DW$252, DW_AT_low_pc(_CreateLongTermFilesandHeaders)
	.dwattr DW$252, DW_AT_high_pc(0x00)
	.dwattr DW$252, DW_AT_begin_file("sdcard.c")
	.dwattr DW$252, DW_AT_begin_line(0x255)
	.dwattr DW$252, DW_AT_begin_column(0x06)
	.dwattr DW$252, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$252, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",598,1

;***************************************************************
;* FNAME: _CreateLongTermFilesandHeaders FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_CreateLongTermFilesandHeaders:
        MOVL      *SP++,XAR3
        MOVB      AL,#8                 ; |599| 
        MOVL      XAR4,#_sdcarddir+45   ; |599| 
        LCR       #_SDCardSetupDirectory ; |599| 
        ; call occurs [#_SDCardSetupDirectory] ; |599| 
        CMPB      AL,#0                 ; |599| 
        BF        L48,NEQ               ; |599| 
        ; branchcc occurs ; |599| 
        MOVL      XAR3,#_shortterm+6    ; |600| 
        MOVL      XAR4,XAR3             ; |600| 
        LCR       #_CreateFile          ; |600| 
        ; call occurs [#_CreateFile] ; |600| 
        CMPB      AL,#0                 ; |600| 
        BF        L48,NEQ               ; |600| 
        ; branchcc occurs ; |600| 
        MOVL      XAR4,XAR3             ; |602| 
        LCR       #_SDLogHeader         ; |602| 
        ; call occurs [#_SDLogHeader] ; |602| 
L48:    
        MOVL      XAR3,*--SP
	.dwpsn	"sdcard.c",603,1
        LRETR
        ; return occurs
	.dwattr DW$252, DW_AT_end_file("sdcard.c")
	.dwattr DW$252, DW_AT_end_line(0x25b)
	.dwattr DW$252, DW_AT_end_column(0x01)
	.dwendtag DW$252

	.sect	".text"
	.global	_SDLongTermSetup

DW$253	.dwtag  DW_TAG_subprogram, DW_AT_name("SDLongTermSetup"), DW_AT_symbol_name("_SDLongTermSetup")
	.dwattr DW$253, DW_AT_low_pc(_SDLongTermSetup)
	.dwattr DW$253, DW_AT_high_pc(0x00)
	.dwattr DW$253, DW_AT_begin_file("sdcard.c")
	.dwattr DW$253, DW_AT_begin_line(0x25d)
	.dwattr DW$253, DW_AT_begin_column(0x05)
	.dwattr DW$253, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$253, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",606,1

;***************************************************************
;* FNAME: _SDLongTermSetup              FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_SDLongTermSetup:
        MOVL      *SP++,XAR1
        MOVL      XAR4,#FSL8            ; |610| 
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        LCR       #_fm_chdir            ; |610| 
        ; call occurs [#_fm_chdir] ; |610| 
        MOVL      XAR4,#_sdcarddir+45   ; |612| 
        MOVL      XAR2,XAR4             ; |612| 
        LCR       #_fm_mkdir            ; |612| 
        ; call occurs [#_fm_mkdir] ; |612| 
        LCR       #_DeselectSPI         ; |613| 
        ; call occurs [#_DeselectSPI] ; |613| 
        MOVL      XAR3,#_longterm       ; |615| 
        MOV       *+XAR3[0],#98         ; |615| 
        MOV       *+XAR3[1],#105        ; |616| 
        MOV       *+XAR3[2],#110        ; |617| 
        MOV       *+XAR3[3],#0          ; |618| 
        LCR       #_BuildTimeStamp      ; |619| 
        ; call occurs [#_BuildTimeStamp] ; |619| 
        MOVW      DP,#_longterm+16
        MOVL      @_longterm+16,ACC     ; |619| 
        MOVL      XAR4,#_longterm+4     ; |622| 
        MOVW      DP,#_longterm+18
        MOVL      XAR5,XAR3             ; |622| 
        MOVL      XAR1,XAR4             ; |622| 
        MOV       @_longterm+18,#1      ; |620| 
        LCR       #_BuildFileName       ; |622| 
        ; call occurs [#_BuildFileName] ; |622| 
        MOVL      XAR4,XAR2             ; |622| 
        MOVB      AL,#9                 ; |624| 
        LCR       #_SDCardSetupDirectory ; |624| 
        ; call occurs [#_SDCardSetupDirectory] ; |624| 
        MOVL      XAR4,XAR1             ; |624| 
        MOVL      XAR5,#FSL4            ; |626| 
        LCR       #_fm_open             ; |626| 
        ; call occurs [#_fm_open] ; |626| 
        MOVL      XAR2,XAR4             ; |626| 
        MOVL      XAR4,XAR1             ; |626| 
        LCR       #_fm_filelength       ; |627| 
        ; call occurs [#_fm_filelength] ; |627| 
        MOVL      XAR4,XAR2             ; |628| 
        MOVL      XAR1,ACC              ; |627| 
        LCR       #_fm_close            ; |628| 
        ; call occurs [#_fm_close] ; |628| 
        MOVL      ACC,XAR1              ; |628| 
        BF        L49,NEQ               ; |630| 
        ; branchcc occurs ; |630| 
        LCR       #_CreateLongTermFilesandHeaders ; |632| 
        ; call occurs [#_CreateLongTermFilesandHeaders] ; |632| 
L49:    
        LCR       #_DeselectSPI         ; |634| 
        ; call occurs [#_DeselectSPI] ; |634| 
        MOVL      XAR3,*--SP            ; |635| 
        MOVL      XAR2,*--SP            ; |635| 
        MOVL      XAR1,*--SP            ; |635| 
        MOVB      AL,#0
	.dwpsn	"sdcard.c",636,1
        LRETR
        ; return occurs
	.dwattr DW$253, DW_AT_end_file("sdcard.c")
	.dwattr DW$253, DW_AT_end_line(0x27c)
	.dwattr DW$253, DW_AT_end_column(0x01)
	.dwendtag DW$253

	.sect	".text"
	.global	_SDLogUpdate

DW$254	.dwtag  DW_TAG_subprogram, DW_AT_name("SDLogUpdate"), DW_AT_symbol_name("_SDLogUpdate")
	.dwattr DW$254, DW_AT_low_pc(_SDLogUpdate)
	.dwattr DW$254, DW_AT_high_pc(0x00)
	.dwattr DW$254, DW_AT_begin_file("sdcard.c")
	.dwattr DW$254, DW_AT_begin_line(0x281)
	.dwattr DW$254, DW_AT_begin_column(0x05)
	.dwattr DW$254, DW_AT_frame_base[DW_OP_breg20 -262]
	.dwattr DW$254, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",642,1

;***************************************************************
;* FNAME: _SDLogUpdate                  FR SIZE: 260           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 253 Auto,  6 SOE     *
;***************************************************************

_SDLogUpdate:
;* AR4   assigned to _dirptr
DW$255	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dirptr"), DW_AT_symbol_name("_dirptr")
	.dwattr DW$255, DW_AT_type(*DW$T$149)
	.dwattr DW$255, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _filename
DW$256	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filename"), DW_AT_symbol_name("_filename")
	.dwattr DW$256, DW_AT_type(*DW$T$135)
	.dwattr DW$256, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOVZ      AR2,SP
        MOVL      XAR1,XAR4             ; |642| 
        ADD       SP,#254
        MOVL      XAR3,XAR5             ; |642| 
        LCR       #_GetVoltageStatus    ; |648| 
        ; call occurs [#_GetVoltageStatus] ; |648| 
        SUBB      FP,#8
        CMPB      AL,#1                 ; |648| 
        BF        L60,NEQ               ; |648| 
        ; branchcc occurs ; |648| 
        MOVL      XAR4,XAR1             ; |651| 
        MOVB      AL,#10                ; |651| 
        LCR       #_SDCardSetupDirectory ; |651| 
        ; call occurs [#_SDCardSetupDirectory] ; |651| 
        CMPB      AL,#0                 ; |651| 
        BF        L51,EQ                ; |651| 
        ; branchcc occurs ; |651| 
        MOVB      AL,#3                 ; |651| 
        LCR       #_SDcardError         ; |651| 
        ; call occurs [#_SDcardError] ; |651| 
L50:    
        MOV       AL,#-1                ; |651| 
        BF        L61,UNC               ; |651| 
        ; branch occurs ; |651| 
L51:    
        MOVZ      AR4,SP                ; |653| 
        ADD       AR4,#-252             ; |653| 
        MOVB      XAR5,#0
        MOVB      ACC,#252
        LCR       #_memset              ; |653| 
        ; call occurs [#_memset] ; |653| 
        MOVL      XAR0,#9               ; |656| 
        MOV       *+FP[AR0],#0          ; |656| 
	.dwpsn	"sdcard.c",657,0
        MOVB      XAR1,#0
L52:    
DW$L$_SDLogUpdate$6$B:
        MOV       AL,AR1                ; |657| 
        LCR       #_GetScaledValue      ; |657| 
        ; call occurs [#_GetScaledValue] ; |657| 
        MOVZ      AR4,SP                ; |657| 
        MOVL      XAR0,#9               ; |657| 
        ADD       AR4,#-252             ; |657| 
        MOVZ      AR0,*+FP[AR0]         ; |657| 
        MOV       *+XAR4[AR0],AL        ; |657| 
        MOVZ      AR4,AR0               ; |657| 
        ADDB      XAR1,#1               ; |657| 
        MOVL      XAR0,#9               ; |657| 
        MOV       AL,AR1                ; |657| 
        ADDB      XAR4,#1               ; |657| 
        CMPB      AL,#28                ; |657| 
        MOV       *+FP[AR0],AR4         ; |657| 
        BF        L52,LO                ; |657| 
        ; branchcc occurs ; |657| 
DW$L$_SDLogUpdate$6$E:
	.dwpsn	"sdcard.c",658,0
        MOVB      XAR1,#0
L53:    
DW$L$_SDLogUpdate$8$B:
        MOV       AL,AR1                ; |658| 
        LCR       #_GetEndResultValue   ; |658| 
        ; call occurs [#_GetEndResultValue] ; |658| 
        MOVZ      AR4,SP                ; |658| 
        MOVL      XAR0,#9               ; |658| 
        ADD       AR4,#-252             ; |658| 
        MOVZ      AR0,*+FP[AR0]         ; |658| 
        ADDB      XAR1,#1               ; |658| 
        MOV       *+XAR4[AR0],AL        ; |658| 
        MOVL      XAR0,#9               ; |658| 
        MOV       AL,AR1                ; |658| 
        ADDB      XAR4,#1               ; |658| 
        CMPB      AL,#28                ; |658| 
        MOV       *+FP[AR0],AR4         ; |658| 
        BF        L53,LO                ; |658| 
        ; branchcc occurs ; |658| 
DW$L$_SDLogUpdate$8$E:
	.dwpsn	"sdcard.c",659,0
        MOVB      XAR1,#0
L54:    
DW$L$_SDLogUpdate$10$B:
        MOV       AL,AR1                ; |659| 
        LCR       #_GetSensorDeviationValue ; |659| 
        ; call occurs [#_GetSensorDeviationValue] ; |659| 
        MOVZ      AR4,SP                ; |659| 
        MOVL      XAR0,#9               ; |659| 
        ADD       AR4,#-252             ; |659| 
        MOVZ      AR0,*+FP[AR0]         ; |659| 
        ADDB      XAR1,#1               ; |659| 
        MOV       *+XAR4[AR0],AL        ; |659| 
        MOVL      XAR0,#9               ; |659| 
        MOV       AL,AR1                ; |659| 
        ADDB      XAR4,#1               ; |659| 
        CMPB      AL,#28                ; |659| 
        MOV       *+FP[AR0],AR4         ; |659| 
        BF        L54,LO                ; |659| 
        ; branchcc occurs ; |659| 
DW$L$_SDLogUpdate$10$E:
	.dwpsn	"sdcard.c",660,0
        MOVB      XAR1,#0
L55:    
DW$L$_SDLogUpdate$12$B:
        MOV       AL,AR1                ; |660| 
        LCR       #_GetCylinderAverageValue ; |660| 
        ; call occurs [#_GetCylinderAverageValue] ; |660| 
        MOVZ      AR4,SP                ; |660| 
        MOVL      XAR0,#9               ; |660| 
        ADD       AR4,#-252             ; |660| 
        MOVZ      AR0,*+FP[AR0]         ; |660| 
        ADDB      XAR1,#1               ; |660| 
        MOV       *+XAR4[AR0],AL        ; |660| 
        MOVL      XAR0,#9               ; |660| 
        MOV       AL,AR1                ; |660| 
        ADDB      XAR4,#1               ; |660| 
        CMPB      AL,#14                ; |660| 
        MOV       *+FP[AR0],AR4         ; |660| 
        BF        L55,LO                ; |660| 
        ; branchcc occurs ; |660| 
DW$L$_SDLogUpdate$12$E:
	.dwpsn	"sdcard.c",661,0
        MOVB      XAR1,#0
L56:    
DW$L$_SDLogUpdate$14$B:
        MOV       AL,AR1                ; |661| 
        LCR       #_GetCylinderDeviationValue ; |661| 
        ; call occurs [#_GetCylinderDeviationValue] ; |661| 
        MOVZ      AR4,SP                ; |661| 
        MOVL      XAR0,#9               ; |661| 
        ADD       AR4,#-252             ; |661| 
        MOVZ      AR0,*+FP[AR0]         ; |661| 
        ADDB      XAR1,#1               ; |661| 
        MOV       *+XAR4[AR0],AL        ; |661| 
        MOVL      XAR0,#9               ; |661| 
        MOV       AL,AR1                ; |661| 
        ADDB      XAR4,#1               ; |661| 
        CMPB      AL,#14                ; |661| 
        MOV       *+FP[AR0],AR4         ; |661| 
        BF        L56,LO                ; |661| 
        ; branchcc occurs ; |661| 
DW$L$_SDLogUpdate$14$E:
        MOV       T,#18                 ; |662| 
	.dwpsn	"sdcard.c",662,0
        MOVB      XAR1,#0
L57:    
DW$L$_SDLogUpdate$16$B:
        MPYXU     ACC,T,AR1             ; |662| 
        MOVL      XAR4,#_sensor+17      ; |662| 
        ADDL      XAR4,ACC
        MOVL      XAR0,#9               ; |662| 
        MOV       AL,*+XAR4[0]          ; |662| 
        MOVZ      AR4,SP                ; |662| 
        MOVZ      AR0,*+FP[AR0]         ; |662| 
        ADD       AR4,#-252             ; |662| 
        ADDB      XAR1,#1               ; |662| 
        MOV       *+XAR4[AR0],AL        ; |662| 
        MOVL      XAR0,#9               ; |662| 
        MOV       AL,AR1                ; |662| 
        ADDB      XAR4,#1               ; |662| 
        CMPB      AL,#28                ; |662| 
        MOV       *+FP[AR0],AR4         ; |662| 
        BF        L57,LO                ; |662| 
        ; branchcc occurs ; |662| 
DW$L$_SDLogUpdate$16$E:
        MOVB      AL,#0
        LCR       #_GetModalRPM         ; |664| 
        ; call occurs [#_GetModalRPM] ; |664| 
        MOVZ      AR4,SP                ; |664| 
        MOVL      XAR0,#9               ; |664| 
        ADD       AR4,#-252             ; |664| 
        MOVZ      AR1,*+FP[AR0]         ; |664| 
        MOV       *+XAR4[AR1],AL        ; |664| 
        MOVB      AL,#2                 ; |665| 
        LCR       #_GetCheckedRPM       ; |665| 
        ; call occurs [#_GetCheckedRPM] ; |665| 
        MOVZ      AR4,SP                ; |665| 
        ADD       AR4,#-252             ; |665| 
        ADDB      XAR1,#1               ; |665| 
        MOV       *+XAR4[AR1],AL        ; |665| 
        LCR       #_WIOActivityWord     ; |667| 
        ; call occurs [#_WIOActivityWord] ; |667| 
        MOVZ      AR4,SP                ; |667| 
        ADD       AR4,#-252             ; |667| 
        ADDB      XAR1,#1               ; |667| 
        MOV       *+XAR4[AR1],AL        ; |667| 
        LCR       #_WIOPPMWord          ; |668| 
        ; call occurs [#_WIOPPMWord] ; |668| 
        MOVZ      AR4,SP                ; |668| 
        ADD       AR4,#-252             ; |668| 
        ADDB      XAR1,#1               ; |668| 
        MOV       *+XAR4[AR1],AL        ; |668| 
        LCR       #_WIOTemperatureWord  ; |669| 
        ; call occurs [#_WIOTemperatureWord] ; |669| 
        MOVZ      AR4,SP                ; |669| 
        ADD       AR4,#-252             ; |669| 
        ADDB      XAR1,#1               ; |669| 
        MOV       *+XAR4[AR1],AL        ; |669| 
        MOVZ      AR4,SP                ; |671| 
        MOVW      DP,#_engine
        MOVL      XAR6,@_engine         ; |671| 
        ADD       AR4,#-252             ; |671| 
        ADDB      XAR1,#1               ; |671| 
        MOVL      ACC,XAR6              ; |671| 
        MOVH      *+XAR4[AR1],ACC << 0  ; |671| 
        MOVZ      AR4,SP                ; |672| 
        ADD       AR4,#-252             ; |672| 
        MOVL      XAR0,#9               ; |672| 
        ADDB      XAR1,#1               ; |672| 
        MOV       *+XAR4[AR1],AR6       ; |672| 
        ADDB      XAR1,#1               ; |672| 
        MOV       *+FP[AR0],AR1         ; |672| 
	.dwpsn	"sdcard.c",674,0
        MOVB      XAR1,#0
L58:    
DW$L$_SDLogUpdate$18$B:
        MOVL      XAR0,#9               ; |675| 
        MOVL      XAR4,#_inputs+228     ; |675| 
        MOV       AL,*+XAR4[AR1]        ; |675| 
        MOVZ      AR4,SP                ; |675| 
        MOVZ      AR0,*+FP[AR0]         ; |675| 
        ADD       AR4,#-252             ; |675| 
        MOV       *+XAR4[AR0],AL        ; |675| 
        MOVZ      AR4,AR0               ; |675| 
        ADDB      XAR1,#1               ; |674| 
        MOVL      XAR0,#9               ; |675| 
        MOV       AL,AR1                ; |674| 
        ADDB      XAR4,#1               ; |675| 
        CMPB      AL,#8                 ; |674| 
        MOV       *+FP[AR0],AR4         ; |675| 
	.dwpsn	"sdcard.c",676,0
        BF        L58,LO                ; |674| 
        ; branchcc occurs ; |674| 
DW$L$_SDLogUpdate$18$E:
        MOV       T,#10                 ; |679| 
	.dwpsn	"sdcard.c",679,0
        MOVB      XAR1,#0
L59:    
DW$L$_SDLogUpdate$20$B:
        MPYXU     ACC,T,AR1             ; |679| 
        MOVL      XAR4,#_manref+8       ; |679| 
        ADDL      XAR4,ACC
        MOVL      XAR0,#9               ; |679| 
        MOV       AL,*+XAR4[0]          ; |679| 
        MOVZ      AR4,SP                ; |679| 
        MOVZ      AR0,*+FP[AR0]         ; |679| 
        ADD       AR4,#-252             ; |679| 
        ADDB      XAR1,#1               ; |679| 
        MOV       *+XAR4[AR0],AL        ; |679| 
        MOVL      XAR0,#9               ; |679| 
        MOV       AL,AR1                ; |679| 
        ADDB      XAR4,#1               ; |679| 
        CMPB      AL,#28                ; |679| 
        MOV       *+FP[AR0],AR4         ; |679| 
        BF        L59,LO                ; |679| 
        ; branchcc occurs ; |679| 
DW$L$_SDLogUpdate$20$E:
        MOVL      XAR0,#9               ; |680| 
        MOVZ      AR4,SP                ; |680| 
        MOVZ      AR0,*+FP[AR0]         ; |680| 
        ADD       AR4,#-252             ; |680| 
        MOVW      DP,#_dynalarmlevels+27
        MOV       AL,@_dynalarmlevels+27 ; |680| 
        MOV       *+XAR4[AR0],AL        ; |680| 
        MOVZ      AR4,SP                ; |681| 
        ADD       AR4,#-252             ; |681| 
        MOVW      DP,#_dynalarmlevels+28
        MOV       AL,@_dynalarmlevels+28 ; |681| 
        ADDB      XAR0,#1               ; |681| 
        MOV       *+XAR4[AR0],AL        ; |681| 
        MOVZ      AR4,SP                ; |682| 
        ADD       AR4,#-252             ; |682| 
        MOVW      DP,#_dynalarmlevels+29
        ADDB      XAR0,#1               ; |682| 
        MOV       AL,@_dynalarmlevels+29 ; |682| 
        MOV       *+XAR4[AR0],AL        ; |682| 
        MOVZ      AR4,SP                ; |683| 
        ADD       AR4,#-252             ; |683| 
        MOVW      DP,#_dynalarmlevels+30
        ADDB      XAR0,#1               ; |683| 
        MOV       AL,@_dynalarmlevels+30 ; |683| 
        MOV       *+XAR4[AR0],AL        ; |683| 
        MOVZ      AR4,SP                ; |684| 
        ADD       AR4,#-252             ; |684| 
        MOVW      DP,#_dynalarmlevels+31
        ADDB      XAR0,#1               ; |684| 
        MOV       AL,@_dynalarmlevels+31 ; |684| 
        MOV       *+XAR4[AR0],AL        ; |684| 
        MOVZ      AR4,SP                ; |685| 
        ADD       AR4,#-252             ; |685| 
        MOVW      DP,#_dynalarmlevels+32
        ADDB      XAR0,#1               ; |685| 
        MOV       AL,@_dynalarmlevels+32 ; |685| 
        MOV       *+XAR4[AR0],AL        ; |685| 
        MOVZ      AR4,SP                ; |688| 
        MOVL      XAR1,#9               ; |688| 
        MOVZ      AR5,SP                ; |692| 
        MOVW      DP,#_slem
        ADD       AR4,#-252             ; |688| 
        ADDB      XAR0,#1               ; |688| 
        MOV       AL,@_slem             ; |688| 
        MOV       *+FP[AR1],AR0         ; |688| 
        MOV       *+XAR4[AR0],AL        ; |688| 
        ADD       AR5,#-252             ; |692| 
        MOVL      XAR4,XAR3             ; |692| 
        MOVB      AL,#252               ; |692| 
        LCR       #_SDLogBinaryData     ; |692| 
        ; call occurs [#_SDLogBinaryData] ; |692| 
        CMPB      AL,#0                 ; |692| 
        BF        L50,NEQ               ; |692| 
        ; branchcc occurs ; |692| 
L60:    
        MOVB      AL,#0
L61:    
        ADD       SP,#-254              ; |694| 
        MOVL      XAR3,*--SP            ; |694| 
        MOVL      XAR2,*--SP            ; |694| 
        MOVL      XAR1,*--SP            ; |694| 
	.dwpsn	"sdcard.c",695,1
        LRETR
        ; return occurs

DW$257	.dwtag  DW_TAG_loop
	.dwattr DW$257, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L59:1:1471518989")
	.dwattr DW$257, DW_AT_begin_file("sdcard.c")
	.dwattr DW$257, DW_AT_begin_line(0x2a7)
	.dwattr DW$257, DW_AT_end_line(0x2a7)
DW$258	.dwtag  DW_TAG_loop_range
	.dwattr DW$258, DW_AT_low_pc(DW$L$_SDLogUpdate$20$B)
	.dwattr DW$258, DW_AT_high_pc(DW$L$_SDLogUpdate$20$E)
	.dwendtag DW$257


DW$259	.dwtag  DW_TAG_loop
	.dwattr DW$259, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L58:1:1471518989")
	.dwattr DW$259, DW_AT_begin_file("sdcard.c")
	.dwattr DW$259, DW_AT_begin_line(0x2a2)
	.dwattr DW$259, DW_AT_end_line(0x2a4)
DW$260	.dwtag  DW_TAG_loop_range
	.dwattr DW$260, DW_AT_low_pc(DW$L$_SDLogUpdate$18$B)
	.dwattr DW$260, DW_AT_high_pc(DW$L$_SDLogUpdate$18$E)
	.dwendtag DW$259


DW$261	.dwtag  DW_TAG_loop
	.dwattr DW$261, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L57:1:1471518989")
	.dwattr DW$261, DW_AT_begin_file("sdcard.c")
	.dwattr DW$261, DW_AT_begin_line(0x296)
	.dwattr DW$261, DW_AT_end_line(0x296)
DW$262	.dwtag  DW_TAG_loop_range
	.dwattr DW$262, DW_AT_low_pc(DW$L$_SDLogUpdate$16$B)
	.dwattr DW$262, DW_AT_high_pc(DW$L$_SDLogUpdate$16$E)
	.dwendtag DW$261


DW$263	.dwtag  DW_TAG_loop
	.dwattr DW$263, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L56:1:1471518989")
	.dwattr DW$263, DW_AT_begin_file("sdcard.c")
	.dwattr DW$263, DW_AT_begin_line(0x295)
	.dwattr DW$263, DW_AT_end_line(0x295)
DW$264	.dwtag  DW_TAG_loop_range
	.dwattr DW$264, DW_AT_low_pc(DW$L$_SDLogUpdate$14$B)
	.dwattr DW$264, DW_AT_high_pc(DW$L$_SDLogUpdate$14$E)
	.dwendtag DW$263


DW$265	.dwtag  DW_TAG_loop
	.dwattr DW$265, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L55:1:1471518989")
	.dwattr DW$265, DW_AT_begin_file("sdcard.c")
	.dwattr DW$265, DW_AT_begin_line(0x294)
	.dwattr DW$265, DW_AT_end_line(0x294)
DW$266	.dwtag  DW_TAG_loop_range
	.dwattr DW$266, DW_AT_low_pc(DW$L$_SDLogUpdate$12$B)
	.dwattr DW$266, DW_AT_high_pc(DW$L$_SDLogUpdate$12$E)
	.dwendtag DW$265


DW$267	.dwtag  DW_TAG_loop
	.dwattr DW$267, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L54:1:1471518989")
	.dwattr DW$267, DW_AT_begin_file("sdcard.c")
	.dwattr DW$267, DW_AT_begin_line(0x293)
	.dwattr DW$267, DW_AT_end_line(0x293)
DW$268	.dwtag  DW_TAG_loop_range
	.dwattr DW$268, DW_AT_low_pc(DW$L$_SDLogUpdate$10$B)
	.dwattr DW$268, DW_AT_high_pc(DW$L$_SDLogUpdate$10$E)
	.dwendtag DW$267


DW$269	.dwtag  DW_TAG_loop
	.dwattr DW$269, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L53:1:1471518989")
	.dwattr DW$269, DW_AT_begin_file("sdcard.c")
	.dwattr DW$269, DW_AT_begin_line(0x292)
	.dwattr DW$269, DW_AT_end_line(0x292)
DW$270	.dwtag  DW_TAG_loop_range
	.dwattr DW$270, DW_AT_low_pc(DW$L$_SDLogUpdate$8$B)
	.dwattr DW$270, DW_AT_high_pc(DW$L$_SDLogUpdate$8$E)
	.dwendtag DW$269


DW$271	.dwtag  DW_TAG_loop
	.dwattr DW$271, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L52:1:1471518989")
	.dwattr DW$271, DW_AT_begin_file("sdcard.c")
	.dwattr DW$271, DW_AT_begin_line(0x291)
	.dwattr DW$271, DW_AT_end_line(0x291)
DW$272	.dwtag  DW_TAG_loop_range
	.dwattr DW$272, DW_AT_low_pc(DW$L$_SDLogUpdate$6$B)
	.dwattr DW$272, DW_AT_high_pc(DW$L$_SDLogUpdate$6$E)
	.dwendtag DW$271

	.dwattr DW$254, DW_AT_end_file("sdcard.c")
	.dwattr DW$254, DW_AT_end_line(0x2b7)
	.dwattr DW$254, DW_AT_end_column(0x01)
	.dwendtag DW$254

	.sect	".text"
	.global	_SDLogHeader

DW$273	.dwtag  DW_TAG_subprogram, DW_AT_name("SDLogHeader"), DW_AT_symbol_name("_SDLogHeader")
	.dwattr DW$273, DW_AT_low_pc(_SDLogHeader)
	.dwattr DW$273, DW_AT_high_pc(0x00)
	.dwattr DW$273, DW_AT_begin_file("sdcard.c")
	.dwattr DW$273, DW_AT_begin_line(0x2be)
	.dwattr DW$273, DW_AT_begin_column(0x05)
	.dwattr DW$273, DW_AT_frame_base[DW_OP_breg20 -258]
	.dwattr DW$273, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",703,1

;***************************************************************
;* FNAME: _SDLogHeader                  FR SIZE: 256           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 252 Auto,  4 SOE     *
;***************************************************************

_SDLogHeader:
;* AR4   assigned to _filename
DW$274	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filename"), DW_AT_symbol_name("_filename")
	.dwattr DW$274, DW_AT_type(*DW$T$135)
	.dwattr DW$274, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVZ      AR2,SP
        MOVL      XAR1,XAR4             ; |703| 
        ADD       SP,#252
        LCR       #_GetVoltageStatus    ; |707| 
        ; call occurs [#_GetVoltageStatus] ; |707| 
        SUBB      FP,#6
        CMPB      AL,#1                 ; |707| 
        BF        L62,NEQ               ; |707| 
        ; branchcc occurs ; |707| 
        MOVZ      AR4,SP                ; |709| 
        ADD       AR4,#-252             ; |709| 
        MOVB      XAR5,#0
        MOVB      ACC,#252
        LCR       #_memset              ; |709| 
        ; call occurs [#_memset] ; |709| 
        MOVZ      AR5,SP                ; |715| 
        MOVW      DP,#_versionreg
        MOV       AL,@_versionreg       ; |713| 
        ADD       AR5,#-252             ; |715| 
        MOVL      XAR4,XAR1             ; |715| 
        MOV       *+FP[6],AL            ; |713| 
        MOVB      AL,#252               ; |715| 
        LCR       #_SDLogBinaryData     ; |715| 
        ; call occurs [#_SDLogBinaryData] ; |715| 
        CMPB      AL,#0                 ; |715| 
        BF        L62,EQ                ; |715| 
        ; branchcc occurs ; |715| 
        MOV       AL,#-1                ; |715| 
        BF        L63,UNC               ; |715| 
        ; branch occurs ; |715| 
L62:    
        MOVB      AL,#0
L63:    
        ADD       SP,#-252              ; |717| 
        MOVL      XAR2,*--SP            ; |717| 
        MOVL      XAR1,*--SP            ; |717| 
	.dwpsn	"sdcard.c",718,1
        LRETR
        ; return occurs
	.dwattr DW$273, DW_AT_end_file("sdcard.c")
	.dwattr DW$273, DW_AT_end_line(0x2ce)
	.dwattr DW$273, DW_AT_end_column(0x01)
	.dwendtag DW$273

	.sect	".text"
	.global	_SDShortTermLogUpdate

DW$275	.dwtag  DW_TAG_subprogram, DW_AT_name("SDShortTermLogUpdate"), DW_AT_symbol_name("_SDShortTermLogUpdate")
	.dwattr DW$275, DW_AT_low_pc(_SDShortTermLogUpdate)
	.dwattr DW$275, DW_AT_high_pc(0x00)
	.dwattr DW$275, DW_AT_begin_file("sdcard.c")
	.dwattr DW$275, DW_AT_begin_line(0x2d2)
	.dwattr DW$275, DW_AT_begin_column(0x05)
	.dwattr DW$275, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$275, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",723,1

;***************************************************************
;* FNAME: _SDShortTermLogUpdate         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SDShortTermLogUpdate:
        LCR       #_GetVoltageStatus    ; |725| 
        ; call occurs [#_GetVoltageStatus] ; |725| 
        CMPB      AL,#1                 ; |725| 
        BF        L64,NEQ               ; |725| 
        ; branchcc occurs ; |725| 
        LCR       #_CreateNewShortTermFile ; |728| 
        ; call occurs [#_CreateNewShortTermFile] ; |728| 
        MOVL      XAR5,#_shortterm+6    ; |731| 
        MOVL      XAR4,#_sdcarddir+36   ; |731| 
        LCR       #_SDLogUpdate         ; |731| 
        ; call occurs [#_SDLogUpdate] ; |731| 
        BF        L65,UNC               ; |731| 
        ; branch occurs ; |731| 
L64:    
        MOVB      AL,#0
L65:    
	.dwpsn	"sdcard.c",734,1
        LRETR
        ; return occurs
	.dwattr DW$275, DW_AT_end_file("sdcard.c")
	.dwattr DW$275, DW_AT_end_line(0x2de)
	.dwattr DW$275, DW_AT_end_column(0x01)
	.dwendtag DW$275

	.sect	".text"
	.global	_SDLongTermLogUpdate

DW$276	.dwtag  DW_TAG_subprogram, DW_AT_name("SDLongTermLogUpdate"), DW_AT_symbol_name("_SDLongTermLogUpdate")
	.dwattr DW$276, DW_AT_low_pc(_SDLongTermLogUpdate)
	.dwattr DW$276, DW_AT_high_pc(0x00)
	.dwattr DW$276, DW_AT_begin_file("sdcard.c")
	.dwattr DW$276, DW_AT_begin_line(0x2e3)
	.dwattr DW$276, DW_AT_begin_column(0x05)
	.dwattr DW$276, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$276, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",740,1

;***************************************************************
;* FNAME: _SDLongTermLogUpdate          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SDLongTermLogUpdate:
        LCR       #_GetVoltageStatus    ; |742| 
        ; call occurs [#_GetVoltageStatus] ; |742| 
        CMPB      AL,#1                 ; |742| 
        BF        L66,NEQ               ; |742| 
        ; branchcc occurs ; |742| 
        LCR       #_CreateNewLongTermFile ; |745| 
        ; call occurs [#_CreateNewLongTermFile] ; |745| 
        MOVL      XAR5,#_longterm+4     ; |748| 
        MOVL      XAR4,#_sdcarddir+45   ; |748| 
        LCR       #_SDLogUpdate         ; |748| 
        ; call occurs [#_SDLogUpdate] ; |748| 
        BF        L67,UNC               ; |748| 
        ; branch occurs ; |748| 
L66:    
        MOVB      AL,#0
L67:    
	.dwpsn	"sdcard.c",751,1
        LRETR
        ; return occurs
	.dwattr DW$276, DW_AT_end_file("sdcard.c")
	.dwattr DW$276, DW_AT_end_line(0x2ef)
	.dwattr DW$276, DW_AT_end_column(0x01)
	.dwendtag DW$276

	.sect	".text"
	.global	_SDShortTermOldFileDeletion

DW$277	.dwtag  DW_TAG_subprogram, DW_AT_name("SDShortTermOldFileDeletion"), DW_AT_symbol_name("_SDShortTermOldFileDeletion")
	.dwattr DW$277, DW_AT_low_pc(_SDShortTermOldFileDeletion)
	.dwattr DW$277, DW_AT_high_pc(0x00)
	.dwattr DW$277, DW_AT_begin_file("sdcard.c")
	.dwattr DW$277, DW_AT_begin_line(0x2f6)
	.dwattr DW$277, DW_AT_begin_column(0x05)
	.dwattr DW$277, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$277, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",759,1

;***************************************************************
;* FNAME: _SDShortTermOldFileDeletion   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SDShortTermOldFileDeletion:
        MOVB      AL,#11                ; |760| 
        MOVL      XAR4,#_sdcarddir+36   ; |760| 
        LCR       #_SDCardSetupDirectory ; |760| 
        ; call occurs [#_SDCardSetupDirectory] ; |760| 
        CMPB      AL,#0                 ; |760| 
        BF        L69,EQ                ; |760| 
        ; branchcc occurs ; |760| 
        MOVB      AL,#4                 ; |760| 
        LCR       #_SDcardError         ; |760| 
        ; call occurs [#_SDcardError] ; |760| 
L68:    
        MOV       AL,#-1                ; |760| 
        BF        L70,UNC               ; |760| 
        ; branch occurs ; |760| 
L69:    
        MOVL      XAR4,#_sdcarddir+36   ; |761| 
        LCR       #_SDShortLogFileDeletion ; |761| 
        ; call occurs [#_SDShortLogFileDeletion] ; |761| 
        CMPB      AL,#0                 ; |761| 
        BF        L68,NEQ               ; |761| 
        ; branchcc occurs ; |761| 
        LCR       #_DeselectSPI         ; |762| 
        ; call occurs [#_DeselectSPI] ; |762| 
        MOVB      AL,#0
L70:    
	.dwpsn	"sdcard.c",764,1
        LRETR
        ; return occurs
	.dwattr DW$277, DW_AT_end_file("sdcard.c")
	.dwattr DW$277, DW_AT_end_line(0x2fc)
	.dwattr DW$277, DW_AT_end_column(0x01)
	.dwendtag DW$277

	.sect	".text"
	.global	_SDDailyFileDeletion

DW$278	.dwtag  DW_TAG_subprogram, DW_AT_name("SDDailyFileDeletion"), DW_AT_symbol_name("_SDDailyFileDeletion")
	.dwattr DW$278, DW_AT_low_pc(_SDDailyFileDeletion)
	.dwattr DW$278, DW_AT_high_pc(0x00)
	.dwattr DW$278, DW_AT_begin_file("sdcard.c")
	.dwattr DW$278, DW_AT_begin_line(0x2ff)
	.dwattr DW$278, DW_AT_begin_column(0x05)
	.dwattr DW$278, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$278, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",768,1

;***************************************************************
;* FNAME: _SDDailyFileDeletion          FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_SDDailyFileDeletion:
;* AR4   assigned to _filename
DW$279	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filename"), DW_AT_symbol_name("_filename")
	.dwattr DW$279, DW_AT_type(*DW$T$135)
	.dwattr DW$279, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        MOVL      XAR1,XAR4             ; |768| 
        MOVB      AL,#12                ; |769| 
        MOVL      XAR4,#_sdcarddir+36   ; |769| 
        LCR       #_SDCardSetupDirectory ; |769| 
        ; call occurs [#_SDCardSetupDirectory] ; |769| 
        CMPB      AL,#0                 ; |769| 
        BF        L72,EQ                ; |769| 
        ; branchcc occurs ; |769| 
        MOVB      AL,#5                 ; |769| 
        LCR       #_SDcardError         ; |769| 
        ; call occurs [#_SDcardError] ; |769| 
L71:    
        MOV       AL,#-1                ; |769| 
        BF        L74,UNC               ; |769| 
        ; branch occurs ; |769| 
L72:    
        MOVL      XAR4,XAR1             ; |770| 
        LCR       #_fm_delete           ; |770| 
        ; call occurs [#_fm_delete] ; |770| 
        CMPB      AL,#0                 ; |770| 
        BF        L73,EQ                ; |770| 
        ; branchcc occurs ; |770| 
        LCR       #_DeselectSPI         ; |772| 
        ; call occurs [#_DeselectSPI] ; |772| 
        BF        L71,UNC               ; |773| 
        ; branch occurs ; |773| 
L73:    
        LCR       #_DeselectSPI         ; |775| 
        ; call occurs [#_DeselectSPI] ; |775| 
        MOVB      AL,#0
L74:    
        MOVL      XAR1,*--SP            ; |776| 
	.dwpsn	"sdcard.c",777,1
        LRETR
        ; return occurs
	.dwattr DW$278, DW_AT_end_file("sdcard.c")
	.dwattr DW$278, DW_AT_end_line(0x309)
	.dwattr DW$278, DW_AT_end_column(0x01)
	.dwendtag DW$278

	.sect	".text"
	.global	_SDAlarmFileRename

DW$280	.dwtag  DW_TAG_subprogram, DW_AT_name("SDAlarmFileRename"), DW_AT_symbol_name("_SDAlarmFileRename")
	.dwattr DW$280, DW_AT_low_pc(_SDAlarmFileRename)
	.dwattr DW$280, DW_AT_high_pc(0x00)
	.dwattr DW$280, DW_AT_begin_file("sdcard.c")
	.dwattr DW$280, DW_AT_begin_line(0x30c)
	.dwattr DW$280, DW_AT_begin_column(0x05)
	.dwattr DW$280, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$280, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",781,1

;***************************************************************
;* FNAME: _SDAlarmFileRename            FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_SDAlarmFileRename:
;* AR4   assigned to _oldname
DW$281	.dwtag  DW_TAG_formal_parameter, DW_AT_name("oldname"), DW_AT_symbol_name("_oldname")
	.dwattr DW$281, DW_AT_type(*DW$T$135)
	.dwattr DW$281, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _newname
DW$282	.dwtag  DW_TAG_formal_parameter, DW_AT_name("newname"), DW_AT_symbol_name("_newname")
	.dwattr DW$282, DW_AT_type(*DW$T$135)
	.dwattr DW$282, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVB      AL,#14                ; |782| 
        MOVL      XAR2,XAR4             ; |781| 
        MOVL      XAR1,XAR5             ; |781| 
        MOVL      XAR4,#_sdcarddir+36   ; |782| 
        LCR       #_SDCardSetupDirectory ; |782| 
        ; call occurs [#_SDCardSetupDirectory] ; |782| 
        CMPB      AL,#0                 ; |782| 
        BF        L76,EQ                ; |782| 
        ; branchcc occurs ; |782| 
        MOVB      AL,#6                 ; |782| 
        LCR       #_SDcardError         ; |782| 
        ; call occurs [#_SDcardError] ; |782| 
L75:    
        MOV       AL,#-1                ; |782| 
        BF        L78,UNC               ; |782| 
        ; branch occurs ; |782| 
L76:    
        MOVL      XAR5,XAR1             ; |783| 
        MOVL      XAR4,XAR2             ; |783| 
        LCR       #_fm_rename           ; |783| 
        ; call occurs [#_fm_rename] ; |783| 
        CMPB      AL,#0                 ; |783| 
        BF        L77,EQ                ; |783| 
        ; branchcc occurs ; |783| 
        LCR       #_DeselectSPI         ; |785| 
        ; call occurs [#_DeselectSPI] ; |785| 
        BF        L75,UNC               ; |786| 
        ; branch occurs ; |786| 
L77:    
        LCR       #_DeselectSPI         ; |788| 
        ; call occurs [#_DeselectSPI] ; |788| 
        MOVB      AL,#0
L78:    
        MOVL      XAR2,*--SP            ; |789| 
        MOVL      XAR1,*--SP            ; |789| 
	.dwpsn	"sdcard.c",790,1
        LRETR
        ; return occurs
	.dwattr DW$280, DW_AT_end_file("sdcard.c")
	.dwattr DW$280, DW_AT_end_line(0x316)
	.dwattr DW$280, DW_AT_end_column(0x01)
	.dwendtag DW$280

	.sect	".text"
	.global	_SDShortLogFileDeletion

DW$283	.dwtag  DW_TAG_subprogram, DW_AT_name("SDShortLogFileDeletion"), DW_AT_symbol_name("_SDShortLogFileDeletion")
	.dwattr DW$283, DW_AT_low_pc(_SDShortLogFileDeletion)
	.dwattr DW$283, DW_AT_high_pc(0x00)
	.dwattr DW$283, DW_AT_begin_file("sdcard.c")
	.dwattr DW$283, DW_AT_begin_line(0x31c)
	.dwattr DW$283, DW_AT_begin_column(0x05)
	.dwattr DW$283, DW_AT_frame_base[DW_OP_breg20 -34]
	.dwattr DW$283, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",797,1

;***************************************************************
;* FNAME: _SDShortLogFileDeletion       FR SIZE:  32           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter, 21 Auto,  6 SOE     *
;***************************************************************

_SDShortLogFileDeletion:
;* AR4   assigned to _ptr
DW$284	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$284, DW_AT_type(*DW$T$149)
	.dwattr DW$284, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#26
        MOVL      XAR3,XAR4             ; |797| 
        LCR       #_FindFirstLogFile    ; |803| 
        ; call occurs [#_FindFirstLogFile] ; |803| 
        CMPB      AL,#0                 ; |803| 
        BF        L80,EQ                ; |803| 
        ; branchcc occurs ; |803| 
        MOVB      AL,#44                ; |805| 
        LCR       #_SDcardError         ; |805| 
        ; call occurs [#_SDcardError] ; |805| 
L79:    
        MOV       AL,#-1                ; |806| 
        BF        L85,UNC               ; |806| 
        ; branch occurs ; |806| 
L80:    
        MOVZ      AR4,SP                ; |815| 
        MOVL      XAR5,#_find           ; |815| 
        SUBB      XAR4,#24              ; |815| 
        LCR       #_strcpy              ; |815| 
        ; call occurs [#_strcpy] ; |815| 
        MOVW      DP,#_find+33
        MOVZ      AR2,@_find+33         ; |816| 
	.dwpsn	"sdcard.c",821,0
        MOVB      XAR1,#0
L81:    
DW$L$_SDShortLogFileDeletion$5$B:
        MOV       AL,AR1
        CMPB      AL,#200               ; |821| 
        BF        L83,GT                ; |821| 
        ; branchcc occurs ; |821| 
DW$L$_SDShortLogFileDeletion$5$E:
DW$L$_SDShortLogFileDeletion$6$B:
        MOVL      XAR4,#_find           ; |822| 
        LCR       #_fm_findnext         ; |822| 
        ; call occurs [#_fm_findnext] ; |822| 
        MOV       *-SP[25],AL           ; |822| 
        MOVW      DP,#_find+33
        MOV       AL,AR2                ; |822| 
        CMP       AL,@_find+33          ; |824| 
        BF        L82,LOS               ; |824| 
        ; branchcc occurs ; |824| 
DW$L$_SDShortLogFileDeletion$6$E:
DW$L$_SDShortLogFileDeletion$7$B:
        MOVZ      AR4,SP                ; |825| 
        MOVL      XAR5,#_find           ; |825| 
        SUBB      XAR4,#24              ; |825| 
        LCR       #_strcpy              ; |825| 
        ; call occurs [#_strcpy] ; |825| 
        MOVW      DP,#_find+33
        MOVZ      AR2,@_find+33         ; |826| 
DW$L$_SDShortLogFileDeletion$7$E:
L82:    
DW$L$_SDShortLogFileDeletion$8$B:
        MOV       AL,AR1
        MOVW      DP,#_settings
        ADDB      AL,#1                 ; |829| 
        MOVZ      AR1,AL                ; |829| 
        MOV       @_settings,#1         ; |830| 
        MOV       AL,*-SP[25]           ; |830| 
	.dwpsn	"sdcard.c",831,0
        BF        L81,EQ                ; |830| 
        ; branchcc occurs ; |830| 
DW$L$_SDShortLogFileDeletion$8$E:
        MOV       AL,AR1
        CMPB      AL,#100               ; |834| 
        BF        L84,LEQ               ; |834| 
        ; branchcc occurs ; |834| 
L83:    
        MOVL      XAR4,XAR3             ; |836| 
        MOVB      AL,#15                ; |836| 
        LCR       #_SDCardSetupDirectory ; |836| 
        ; call occurs [#_SDCardSetupDirectory] ; |836| 
        CMPB      AL,#0                 ; |836| 
        BF        L79,NEQ               ; |836| 
        ; branchcc occurs ; |836| 
        MOVL      XAR4,#FSL10           ; |837| 
        MOVL      *-SP[2],XAR4          ; |837| 
        MOVZ      AR4,SP                ; |837| 
        MOVL      XAR3,#_stringbuffer   ; |837| 
        SUBB      XAR4,#24              ; |837| 
        MOVL      *-SP[4],XAR4          ; |837| 
        MOVL      XAR4,XAR3             ; |837| 
        LCR       #_sprintf             ; |837| 
        ; call occurs [#_sprintf] ; |837| 
        MOVL      XAR4,XAR3             ; |837| 
        LCR       #_DebugStringOut      ; |837| 
        ; call occurs [#_DebugStringOut] ; |837| 
        MOVZ      AR4,SP                ; |838| 
        SUBB      XAR4,#24              ; |838| 
        LCR       #_fm_delete           ; |838| 
        ; call occurs [#_fm_delete] ; |838| 
        LCR       #_DeselectSPI         ; |839| 
        ; call occurs [#_DeselectSPI] ; |839| 
L84:    
        MOVB      AL,#0
L85:    
        SUBB      SP,#26                ; |843| 
        MOVL      XAR3,*--SP            ; |843| 
        MOVL      XAR2,*--SP            ; |843| 
        MOVL      XAR1,*--SP            ; |843| 
	.dwpsn	"sdcard.c",844,1
        LRETR
        ; return occurs

DW$285	.dwtag  DW_TAG_loop
	.dwattr DW$285, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L81:1:1471518989")
	.dwattr DW$285, DW_AT_begin_file("sdcard.c")
	.dwattr DW$285, DW_AT_begin_line(0x335)
	.dwattr DW$285, DW_AT_end_line(0x33f)
DW$286	.dwtag  DW_TAG_loop_range
	.dwattr DW$286, DW_AT_low_pc(DW$L$_SDShortLogFileDeletion$5$B)
	.dwattr DW$286, DW_AT_high_pc(DW$L$_SDShortLogFileDeletion$5$E)
DW$287	.dwtag  DW_TAG_loop_range
	.dwattr DW$287, DW_AT_low_pc(DW$L$_SDShortLogFileDeletion$6$B)
	.dwattr DW$287, DW_AT_high_pc(DW$L$_SDShortLogFileDeletion$6$E)
DW$288	.dwtag  DW_TAG_loop_range
	.dwattr DW$288, DW_AT_low_pc(DW$L$_SDShortLogFileDeletion$7$B)
	.dwattr DW$288, DW_AT_high_pc(DW$L$_SDShortLogFileDeletion$7$E)
DW$289	.dwtag  DW_TAG_loop_range
	.dwattr DW$289, DW_AT_low_pc(DW$L$_SDShortLogFileDeletion$8$B)
	.dwattr DW$289, DW_AT_high_pc(DW$L$_SDShortLogFileDeletion$8$E)
	.dwendtag DW$285

	.dwattr DW$283, DW_AT_end_file("sdcard.c")
	.dwattr DW$283, DW_AT_end_line(0x34c)
	.dwattr DW$283, DW_AT_end_column(0x01)
	.dwendtag DW$283

	.sect	".text"
	.global	_SDOldLogFileDeletion

DW$290	.dwtag  DW_TAG_subprogram, DW_AT_name("SDOldLogFileDeletion"), DW_AT_symbol_name("_SDOldLogFileDeletion")
	.dwattr DW$290, DW_AT_low_pc(_SDOldLogFileDeletion)
	.dwattr DW$290, DW_AT_high_pc(0x00)
	.dwattr DW$290, DW_AT_begin_file("sdcard.c")
	.dwattr DW$290, DW_AT_begin_line(0x352)
	.dwattr DW$290, DW_AT_begin_column(0x05)
	.dwattr DW$290, DW_AT_frame_base[DW_OP_breg20 -38]
	.dwattr DW$290, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",851,1

;***************************************************************
;* FNAME: _SDOldLogFileDeletion         FR SIZE:  36           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            6 Parameter, 24 Auto,  6 SOE     *
;***************************************************************

_SDOldLogFileDeletion:
;* AR4   assigned to _ptr
DW$291	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$291, DW_AT_type(*DW$T$149)
	.dwattr DW$291, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#30
        MOVL      XAR2,XAR4             ; |851| 
        LCR       #_FindFirstLogFile    ; |858| 
        ; call occurs [#_FindFirstLogFile] ; |858| 
        CMPB      AL,#0                 ; |858| 
        BF        L87,EQ                ; |858| 
        ; branchcc occurs ; |858| 
        MOVB      AL,#7                 ; |860| 
        LCR       #_SDcardError         ; |860| 
        ; call occurs [#_SDcardError] ; |860| 
L86:    
        MOV       AL,#-1                ; |861| 
        BF        L92,UNC               ; |861| 
        ; branch occurs ; |861| 
L87:    
        MOVZ      AR4,SP                ; |870| 
        MOVL      XAR5,#_find           ; |870| 
        SUBB      XAR4,#26              ; |870| 
        LCR       #_strcpy              ; |870| 
        ; call occurs [#_strcpy] ; |870| 
        MOVW      DP,#_find+33
        MOV       AL,@_find+33          ; |871| 
        MOVW      DP,#_find+36
        MOV       *-SP[27],AL           ; |871| 
        MOVL      ACC,@_find+36         ; |872| 
        LCR       #_FileToClusterSize   ; |872| 
        ; call occurs [#_FileToClusterSize] ; |872| 
        MOVL      *-SP[30],ACC          ; |872| 
	.dwpsn	"sdcard.c",877,0
        MOVB      XAR1,#0
L88:    
DW$L$_SDOldLogFileDeletion$5$B:
        CMP       AR1,#2000             ; |877| 
        BF        L90,GT                ; |877| 
        ; branchcc occurs ; |877| 
DW$L$_SDOldLogFileDeletion$5$E:
DW$L$_SDOldLogFileDeletion$6$B:
        MOVL      XAR4,#_find           ; |878| 
        LCR       #_fm_findnext         ; |878| 
        ; call occurs [#_fm_findnext] ; |878| 
        CMPB      AL,#0                 ; |878| 
        MOVZ      AR3,AL                ; |878| 
        BF        L90,NEQ               ; |878| 
        ; branchcc occurs ; |878| 
DW$L$_SDOldLogFileDeletion$6$E:
DW$L$_SDOldLogFileDeletion$7$B:
        MOV       AL,*-SP[27]
        MOVW      DP,#_find+33
        CMP       AL,@_find+33          ; |881| 
        BF        L89,LOS               ; |881| 
        ; branchcc occurs ; |881| 
DW$L$_SDOldLogFileDeletion$7$E:
DW$L$_SDOldLogFileDeletion$8$B:
        MOVZ      AR4,SP                ; |882| 
        MOVL      XAR5,#_find           ; |882| 
        SUBB      XAR4,#26              ; |882| 
        LCR       #_strcpy              ; |882| 
        ; call occurs [#_strcpy] ; |882| 
        MOVW      DP,#_find+33
        MOV       AL,@_find+33          ; |883| 
        MOV       *-SP[27],AL           ; |883| 
DW$L$_SDOldLogFileDeletion$8$E:
L89:    
DW$L$_SDOldLogFileDeletion$9$B:
        MOVW      DP,#_find+36
        MOVL      ACC,@_find+36         ; |887| 
        LCR       #_FileToClusterSize   ; |887| 
        ; call occurs [#_FileToClusterSize] ; |887| 
        MOVL      XAR6,ACC              ; |887| 
        MOVL      ACC,*-SP[30]          ; |887| 
        ADDL      ACC,XAR6
        MOVL      *-SP[30],ACC          ; |887| 
        MOVW      DP,#_settings
        MOV       AL,AR1                ; |887| 
        ADDB      AL,#1                 ; |888| 
        MOVZ      AR1,AL                ; |888| 
        MOV       @_settings,#1         ; |889| 
        MOV       AL,AR3                ; |889| 
	.dwpsn	"sdcard.c",891,0
        BF        L88,EQ                ; |889| 
        ; branchcc occurs ; |889| 
DW$L$_SDOldLogFileDeletion$9$E:
L90:    
        MOVL      XAR4,#FSL11           ; |893| 
        MOVL      XAR3,#_stringbuffer   ; |893| 
        MOVL      *-SP[2],XAR4          ; |893| 
        MOV       *-SP[3],AR1           ; |893| 
        MOVL      XAR4,XAR3             ; |893| 
        MOVL      ACC,*-SP[30]          ; |893| 
        MOVL      *-SP[6],ACC           ; |893| 
        LCR       #_sprintf             ; |893| 
        ; call occurs [#_sprintf] ; |893| 
        MOVL      XAR4,XAR3             ; |893| 
        LCR       #_DebugStringOut      ; |893| 
        ; call occurs [#_DebugStringOut] ; |893| 
        MOVL      XAR6,*-SP[30]         ; |896| 
        MOV       AL,#0
        MOV       AH,#21045
        CMPL      ACC,XAR6              ; |896| 
        BF        L91,HIS               ; |896| 
        ; branchcc occurs ; |896| 
        MOVL      XAR4,XAR2             ; |898| 
        MOVB      AL,#16                ; |898| 
        LCR       #_SDCardSetupDirectory ; |898| 
        ; call occurs [#_SDCardSetupDirectory] ; |898| 
        CMPB      AL,#0                 ; |898| 
        BF        L86,NEQ               ; |898| 
        ; branchcc occurs ; |898| 
        MOVL      XAR4,#FSL12           ; |899| 
        MOVL      *-SP[2],XAR4          ; |899| 
        MOVZ      AR4,SP                ; |899| 
        SUBB      XAR4,#26              ; |899| 
        MOVL      *-SP[4],XAR4          ; |899| 
        MOVL      XAR4,XAR3             ; |899| 
        LCR       #_sprintf             ; |899| 
        ; call occurs [#_sprintf] ; |899| 
        MOVL      XAR4,XAR3             ; |899| 
        LCR       #_DebugStringOut      ; |899| 
        ; call occurs [#_DebugStringOut] ; |899| 
        MOVZ      AR4,SP                ; |900| 
        SUBB      XAR4,#26              ; |900| 
        LCR       #_fm_delete           ; |900| 
        ; call occurs [#_fm_delete] ; |900| 
        LCR       #_DeselectSPI         ; |901| 
        ; call occurs [#_DeselectSPI] ; |901| 
L91:    
        MOVB      AL,#0
L92:    
        SUBB      SP,#30                ; |905| 
        MOVL      XAR3,*--SP            ; |905| 
        MOVL      XAR2,*--SP            ; |905| 
        MOVL      XAR1,*--SP            ; |905| 
	.dwpsn	"sdcard.c",906,1
        LRETR
        ; return occurs

DW$292	.dwtag  DW_TAG_loop
	.dwattr DW$292, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L88:1:1471518989")
	.dwattr DW$292, DW_AT_begin_file("sdcard.c")
	.dwattr DW$292, DW_AT_begin_line(0x36d)
	.dwattr DW$292, DW_AT_end_line(0x37b)
DW$293	.dwtag  DW_TAG_loop_range
	.dwattr DW$293, DW_AT_low_pc(DW$L$_SDOldLogFileDeletion$5$B)
	.dwattr DW$293, DW_AT_high_pc(DW$L$_SDOldLogFileDeletion$5$E)
DW$294	.dwtag  DW_TAG_loop_range
	.dwattr DW$294, DW_AT_low_pc(DW$L$_SDOldLogFileDeletion$6$B)
	.dwattr DW$294, DW_AT_high_pc(DW$L$_SDOldLogFileDeletion$6$E)
DW$295	.dwtag  DW_TAG_loop_range
	.dwattr DW$295, DW_AT_low_pc(DW$L$_SDOldLogFileDeletion$7$B)
	.dwattr DW$295, DW_AT_high_pc(DW$L$_SDOldLogFileDeletion$7$E)
DW$296	.dwtag  DW_TAG_loop_range
	.dwattr DW$296, DW_AT_low_pc(DW$L$_SDOldLogFileDeletion$8$B)
	.dwattr DW$296, DW_AT_high_pc(DW$L$_SDOldLogFileDeletion$8$E)
DW$297	.dwtag  DW_TAG_loop_range
	.dwattr DW$297, DW_AT_low_pc(DW$L$_SDOldLogFileDeletion$9$B)
	.dwattr DW$297, DW_AT_high_pc(DW$L$_SDOldLogFileDeletion$9$E)
	.dwendtag DW$292

	.dwattr DW$290, DW_AT_end_file("sdcard.c")
	.dwattr DW$290, DW_AT_end_line(0x38a)
	.dwattr DW$290, DW_AT_end_column(0x01)
	.dwendtag DW$290

	.sect	".text"
	.global	_FileToClusterSize

DW$298	.dwtag  DW_TAG_subprogram, DW_AT_name("FileToClusterSize"), DW_AT_symbol_name("_FileToClusterSize")
	.dwattr DW$298, DW_AT_low_pc(_FileToClusterSize)
	.dwattr DW$298, DW_AT_high_pc(0x00)
	.dwattr DW$298, DW_AT_begin_file("sdcard.c")
	.dwattr DW$298, DW_AT_begin_line(0x38d)
	.dwattr DW$298, DW_AT_begin_column(0x0f)
	.dwattr DW$298, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$298, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",909,58

;***************************************************************
;* FNAME: _FileToClusterSize            FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_FileToClusterSize:
;* AL    assigned to _filesize
DW$299	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filesize"), DW_AT_symbol_name("_filesize")
	.dwattr DW$299, DW_AT_type(*DW$T$13)
	.dwattr DW$299, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        ADDB      SP,#2
        LCR       #UL$$TOFS             ; |915| 
        ; call occurs [#UL$$TOFS] ; |915| 
        MOVL      XAR6,ACC              ; |915| 
        MOV       ACC,#28672 << 15
        MOVL      *-SP[2],ACC           ; |915| 
        MOVL      ACC,XAR6              ; |915| 
        LCR       #FS$$MPY              ; |915| 
        ; call occurs [#FS$$MPY] ; |915| 
        MOVL      XAR2,ACC              ; |915| 
        LCR       #FS$$TOUL             ; |915| 
        ; call occurs [#FS$$TOUL] ; |915| 
        MOVL      XAR1,ACC              ; |915| 
        LCR       #UL$$TOFS             ; |916| 
        ; call occurs [#UL$$TOFS] ; |916| 
        MOVL      *-SP[2],ACC           ; |916| 
        MOVL      ACC,XAR2              ; |916| 
        LCR       #FS$$SUB              ; |916| 
        ; call occurs [#FS$$SUB] ; |916| 
        MOVL      XAR6,ACC              ; |916| 
        MOV       AL,#0
        MOV       AH,#0
        MOVL      *-SP[2],ACC           ; |916| 
        MOVL      ACC,XAR6              ; |916| 
        LCR       #FS$$CMP              ; |916| 
        ; call occurs [#FS$$CMP] ; |916| 
        CMPB      AL,#0                 ; |916| 
        BF        L93,EQ                ; |916| 
        ; branchcc occurs ; |916| 
        ADDB      XAR1,#1               ; |916| 
L93:    
        SUBB      SP,#2                 ; |917| 
        MOVL      XAR2,*--SP            ; |917| 
        MOVL      ACC,XAR1              ; |917| 
        MOVL      XAR1,*--SP            ; |917| 
        LSL       ACC,15                ; |917| 
	.dwpsn	"sdcard.c",918,1
        LRETR
        ; return occurs
	.dwattr DW$298, DW_AT_end_file("sdcard.c")
	.dwattr DW$298, DW_AT_end_line(0x396)
	.dwattr DW$298, DW_AT_end_column(0x01)
	.dwendtag DW$298

	.sect	".text"
	.global	_SDLogBinaryData

DW$300	.dwtag  DW_TAG_subprogram, DW_AT_name("SDLogBinaryData"), DW_AT_symbol_name("_SDLogBinaryData")
	.dwattr DW$300, DW_AT_low_pc(_SDLogBinaryData)
	.dwattr DW$300, DW_AT_high_pc(0x00)
	.dwattr DW$300, DW_AT_begin_file("sdcard.c")
	.dwattr DW$300, DW_AT_begin_line(0x39a)
	.dwattr DW$300, DW_AT_begin_column(0x05)
	.dwattr DW$300, DW_AT_frame_base[DW_OP_breg20 -16]
	.dwattr DW$300, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",923,1

;***************************************************************
;* FNAME: _SDLogBinaryData              FR SIZE:  14           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  6 Auto,  6 SOE     *
;***************************************************************

_SDLogBinaryData:
;* AR4   assigned to _name
DW$301	.dwtag  DW_TAG_formal_parameter, DW_AT_name("name"), DW_AT_symbol_name("_name")
	.dwattr DW$301, DW_AT_type(*DW$T$135)
	.dwattr DW$301, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _sptr
DW$302	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sptr"), DW_AT_symbol_name("_sptr")
	.dwattr DW$302, DW_AT_type(*DW$T$142)
	.dwattr DW$302, DW_AT_location[DW_OP_reg14]
;* AL    assigned to _len
DW$303	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$303, DW_AT_type(*DW$T$11)
	.dwattr DW$303, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVW      DP,#_settings+7
        MOVL      *SP++,XAR2
        MOVZ      AR2,AL                ; |923| 
        MOVL      *SP++,XAR3
        MOVL      XAR1,XAR5             ; |923| 
        MOV       AL,@_settings+7       ; |929| 
        ADDB      SP,#8
        BF        L97,NEQ               ; |929| 
        ; branchcc occurs ; |929| 
        MOVW      DP,#_sdsettings
        MOV       AL,@_sdsettings       ; |929| 
        CMPB      AL,#1                 ; |929| 
        BF        L97,NEQ               ; |929| 
        ; branchcc occurs ; |929| 
        MOVW      DP,#_settings+11
        MOV       AL,@_settings+11      ; |929| 
        CMPB      AL,#1                 ; |929| 
        BF        L97,EQ                ; |929| 
        ; branchcc occurs ; |929| 
        MOVL      XAR5,#FSL4            ; |932| 
        LCR       #_fm_open             ; |932| 
        ; call occurs [#_fm_open] ; |932| 
        MOVL      *-SP[6],XAR4          ; |932| 
        MOVL      ACC,*-SP[6]           ; |932| 
        BF        L94,NEQ               ; |932| 
        ; branchcc occurs ; |932| 
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_close            ; |935| 
        ; call occurs [#_fm_close] ; |935| 
        MOVB      AL,#9                 ; |936| 
        BF        L95,UNC               ; |937| 
        ; branch occurs ; |937| 
L94:    
        MOVL      XAR4,#_logtime        ; |939| 
        MOVB      AL,#3                 ; |939| 
        MOVL      *-SP[8],XAR4          ; |939| 
        LCR       #_CalcUIntChecksum    ; |939| 
        ; call occurs [#_CalcUIntChecksum] ; |939| 
        MOVL      XAR4,XAR1             ; |940| 
        MOVZ      AR3,AL                ; |939| 
        MOV       AL,AR2                ; |940| 
        LCR       #_CalcUIntChecksum    ; |940| 
        ; call occurs [#_CalcUIntChecksum] ; |940| 
        MOV       *-SP[3],AL            ; |940| 
        MOV       AL,AR3                ; |940| 
        MOVL      XAR3,#_f_databuf      ; |942| 
        MOVL      XAR5,*-SP[8]          ; |942| 
        MOVL      XAR4,XAR3             ; |942| 
        ADD       *-SP[3],AL            ; |941| 
        MOVB      AL,#3                 ; |942| 
        LCR       #_InttoByteArray      ; |942| 
        ; call occurs [#_InttoByteArray] ; |942| 
        MOVB      ACC,#6
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |943| 
        MOVL      XAR5,XAR1             ; |943| 
        MOV       AL,AR2                ; |943| 
        LCR       #_InttoByteArray      ; |943| 
        ; call occurs [#_InttoByteArray] ; |943| 
        MOVB      AL,#3                 ; |946| 
        ADD       AL,AR2                ; |946| 
        MOV       ACC,AL << #1          ; |946| 
        MOVZ      AR1,AL                ; |946| 
        MOVZ      AR5,SP                ; |946| 
        MOVL      ACC,XAR3              ; |946| 
        ADDU      ACC,AR1               ; |946| 
        MOVL      XAR4,ACC              ; |946| 
        SUBB      XAR5,#3               ; |946| 
        MOVB      AL,#1                 ; |946| 
        LCR       #_InttoByteArray      ; |946| 
        ; call occurs [#_InttoByteArray] ; |946| 
        ADD       AR1,#2                ; |951| 
        MOVU      ACC,AR1
        MOVL      *-SP[2],ACC           ; |951| 
        MOVL      XAR5,*-SP[6]          ; |951| 
        MOVL      XAR4,XAR3             ; |951| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |951| 
        ; call occurs [#_fm_write] ; |951| 
        MOVL      XAR6,ACC              ; |951| 
        MOVU      ACC,AR1
        CMPL      ACC,XAR6              ; |951| 
        BF        L96,EQ                ; |951| 
        ; branchcc occurs ; |951| 
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_close            ; |953| 
        ; call occurs [#_fm_close] ; |953| 
        MOVB      AL,#10                ; |954| 
L95:    
        LCR       #_SDcardError         ; |954| 
        ; call occurs [#_SDcardError] ; |954| 
        MOV       AL,#-1                ; |955| 
        BF        L98,UNC               ; |955| 
        ; branch occurs ; |955| 
L96:    
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_close            ; |959| 
        ; call occurs [#_fm_close] ; |959| 
L97:    
        MOVB      AL,#0
L98:    
        SUBB      SP,#8                 ; |961| 
        MOVL      XAR3,*--SP            ; |961| 
        MOVL      XAR2,*--SP            ; |961| 
        MOVL      XAR1,*--SP            ; |961| 
	.dwpsn	"sdcard.c",962,1
        LRETR
        ; return occurs
	.dwattr DW$300, DW_AT_end_file("sdcard.c")
	.dwattr DW$300, DW_AT_end_line(0x3c2)
	.dwattr DW$300, DW_AT_end_column(0x01)
	.dwendtag DW$300

	.sect	".text"
	.global	_CharStringtoIntString

DW$304	.dwtag  DW_TAG_subprogram, DW_AT_name("CharStringtoIntString"), DW_AT_symbol_name("_CharStringtoIntString")
	.dwattr DW$304, DW_AT_low_pc(_CharStringtoIntString)
	.dwattr DW$304, DW_AT_high_pc(0x00)
	.dwattr DW$304, DW_AT_begin_file("sdcard.c")
	.dwattr DW$304, DW_AT_begin_line(0x3c7)
	.dwattr DW$304, DW_AT_begin_column(0x06)
	.dwattr DW$304, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$304, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",968,1

;***************************************************************
;* FNAME: _CharStringtoIntString        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CharStringtoIntString:
;* AR4   assigned to _outptr
DW$305	.dwtag  DW_TAG_formal_parameter, DW_AT_name("outptr"), DW_AT_symbol_name("_outptr")
	.dwattr DW$305, DW_AT_type(*DW$T$142)
	.dwattr DW$305, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _inptr
DW$306	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inptr"), DW_AT_symbol_name("_inptr")
	.dwattr DW$306, DW_AT_type(*DW$T$135)
	.dwattr DW$306, DW_AT_location[DW_OP_reg14]
;* AL    assigned to _lenout
DW$307	.dwtag  DW_TAG_formal_parameter, DW_AT_name("lenout"), DW_AT_symbol_name("_lenout")
	.dwattr DW$307, DW_AT_type(*DW$T$11)
	.dwattr DW$307, DW_AT_location[DW_OP_reg0]
        CMPB      AL,#0                 ; |973| 
        MOV       PL,AL                 ; |968| 
        MOVB      XAR6,#0
        MOVB      XAR0,#0
        BF        L100,EQ               ; |973| 
        ; branchcc occurs ; |973| 
L99:    
DW$L$_CharStringtoIntString$2$B:
	.dwpsn	"sdcard.c",974,0
        MOVL      ACC,XAR4              ; |975| 
        ADDU      ACC,AR6               ; |975| 
        MOVL      XAR7,ACC              ; |975| 
        MOV       ACC,*+XAR5[AR0] << #8 ; |975| 
        ADDB      XAR0,#1               ; |977| 
        MOV       *+XAR7[0],AL          ; |975| 
        ADDB      XAR6,#1               ; |973| 
        MOV       AH,*+XAR5[AR0]        ; |977| 
        ANDB      AH,#0xff              ; |977| 
        ADD       AH,AL                 ; |977| 
        MOV       AL,PL                 ; |973| 
        ADDB      XAR0,#1               ; |978| 
        CMP       AL,AR6                ; |973| 
        MOV       *+XAR7[0],AH          ; |977| 
	.dwpsn	"sdcard.c",979,0
        BF        L99,HI                ; |973| 
        ; branchcc occurs ; |973| 
DW$L$_CharStringtoIntString$2$E:
L100:    
	.dwpsn	"sdcard.c",980,1
        LRETR
        ; return occurs

DW$308	.dwtag  DW_TAG_loop
	.dwattr DW$308, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L99:1:1471518989")
	.dwattr DW$308, DW_AT_begin_file("sdcard.c")
	.dwattr DW$308, DW_AT_begin_line(0x3cd)
	.dwattr DW$308, DW_AT_end_line(0x3d3)
DW$309	.dwtag  DW_TAG_loop_range
	.dwattr DW$309, DW_AT_low_pc(DW$L$_CharStringtoIntString$2$B)
	.dwattr DW$309, DW_AT_high_pc(DW$L$_CharStringtoIntString$2$E)
	.dwendtag DW$308

	.dwattr DW$304, DW_AT_end_file("sdcard.c")
	.dwattr DW$304, DW_AT_end_line(0x3d4)
	.dwattr DW$304, DW_AT_end_column(0x01)
	.dwendtag DW$304

	.sect	".text"
	.global	_SetAllEventMsgs

DW$310	.dwtag  DW_TAG_subprogram, DW_AT_name("SetAllEventMsgs"), DW_AT_symbol_name("_SetAllEventMsgs")
	.dwattr DW$310, DW_AT_low_pc(_SetAllEventMsgs)
	.dwattr DW$310, DW_AT_high_pc(0x00)
	.dwattr DW$310, DW_AT_begin_file("sdcard.c")
	.dwattr DW$310, DW_AT_begin_line(0x3d9)
	.dwattr DW$310, DW_AT_begin_column(0x06)
	.dwattr DW$310, DW_AT_frame_base[DW_OP_breg20 -52]
	.dwattr DW$310, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",986,1

;***************************************************************
;* FNAME: _SetAllEventMsgs              FR SIZE:  50           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 48 Auto,  2 SOE     *
;***************************************************************

_SetAllEventMsgs:
        MOVL      *SP++,XAR1
        ADDB      SP,#48
	.dwpsn	"sdcard.c",989,0
        MOVB      XAR1,#0
L101:    
DW$L$_SetAllEventMsgs$2$B:
	.dwpsn	"sdcard.c",990,0
        MOVU      ACC,AR1
        MOVL      XAR4,#_pMsgList       ; |991| 
        LSL       ACC,1                 ; |991| 
        ADDL      XAR4,ACC
        MOVL      XAR5,*+XAR4[0]        ; |991| 
        MOVZ      AR4,SP                ; |991| 
        MOVB      AL,#24                ; |991| 
        SUBB      XAR4,#48              ; |991| 
        LCR       #_CharStringtoIntString ; |991| 
        ; call occurs [#_CharStringtoIntString] ; |991| 
        MOVZ      AR4,SP                ; |992| 
        MOV       AL,AR1                ; |992| 
        SUBB      XAR4,#48              ; |992| 
        LCR       #_SDEventMessageUpdate ; |992| 
        ; call occurs [#_SDEventMessageUpdate] ; |992| 
        ADDB      XAR1,#1               ; |989| 
        MOV       AL,AR1                ; |989| 
        CMPB      AL,#41                ; |989| 
	.dwpsn	"sdcard.c",993,0
        BF        L101,LO               ; |989| 
        ; branchcc occurs ; |989| 
DW$L$_SetAllEventMsgs$2$E:
        SUBB      SP,#48
        MOVL      XAR1,*--SP
	.dwpsn	"sdcard.c",994,1
        LRETR
        ; return occurs

DW$311	.dwtag  DW_TAG_loop
	.dwattr DW$311, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L101:1:1471518989")
	.dwattr DW$311, DW_AT_begin_file("sdcard.c")
	.dwattr DW$311, DW_AT_begin_line(0x3dd)
	.dwattr DW$311, DW_AT_end_line(0x3e1)
DW$312	.dwtag  DW_TAG_loop_range
	.dwattr DW$312, DW_AT_low_pc(DW$L$_SetAllEventMsgs$2$B)
	.dwattr DW$312, DW_AT_high_pc(DW$L$_SetAllEventMsgs$2$E)
	.dwendtag DW$311

	.dwattr DW$310, DW_AT_end_file("sdcard.c")
	.dwattr DW$310, DW_AT_end_line(0x3e2)
	.dwattr DW$310, DW_AT_end_column(0x01)
	.dwendtag DW$310

	.sect	".text"
	.global	_SDEventMessageUpdate

DW$313	.dwtag  DW_TAG_subprogram, DW_AT_name("SDEventMessageUpdate"), DW_AT_symbol_name("_SDEventMessageUpdate")
	.dwattr DW$313, DW_AT_low_pc(_SDEventMessageUpdate)
	.dwattr DW$313, DW_AT_high_pc(0x00)
	.dwattr DW$313, DW_AT_begin_file("sdcard.c")
	.dwattr DW$313, DW_AT_begin_line(0x3e5)
	.dwattr DW$313, DW_AT_begin_column(0x05)
	.dwattr DW$313, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$313, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",998,1

;***************************************************************
;* FNAME: _SDEventMessageUpdate         FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_SDEventMessageUpdate:
;* AL    assigned to _mid
DW$314	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mid"), DW_AT_symbol_name("_mid")
	.dwattr DW$314, DW_AT_type(*DW$T$11)
	.dwattr DW$314, DW_AT_location[DW_OP_reg0]
;* AR4   assigned to _msgptr
DW$315	.dwtag  DW_TAG_formal_parameter, DW_AT_name("msgptr"), DW_AT_symbol_name("_msgptr")
	.dwattr DW$315, DW_AT_type(*DW$T$142)
	.dwattr DW$315, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVZ      AR1,AL                ; |998| 
        MOVL      XAR2,XAR4             ; |998| 
        LCR       #_GetVoltageStatus    ; |999| 
        ; call occurs [#_GetVoltageStatus] ; |999| 
        CMPB      AL,#1                 ; |999| 
        BF        L102,EQ               ; |999| 
        ; branchcc occurs ; |999| 
        MOVB      AL,#0
        BF        L104,UNC              ; |1007| 
        ; branch occurs ; |1007| 
L102:    
        MOVB      AL,#17                ; |1001| 
        MOVL      XAR4,#_sdcarddir+27   ; |1001| 
        LCR       #_SDCardSetupDirectory ; |1001| 
        ; call occurs [#_SDCardSetupDirectory] ; |1001| 
        CMPB      AL,#0                 ; |1001| 
        BF        L103,EQ               ; |1001| 
        ; branchcc occurs ; |1001| 
        MOV       AL,#-1                ; |1001| 
        BF        L104,UNC              ; |1001| 
        ; branch occurs ; |1001| 
L103:    
        LCR       #_CreateNewEventMsgFile ; |1003| 
        ; call occurs [#_CreateNewEventMsgFile] ; |1003| 
        MOV       AL,AR1                ; |1005| 
        MOVL      XAR4,XAR2             ; |1005| 
        LCR       #_SDEventMessagetoFile ; |1005| 
        ; call occurs [#_SDEventMessagetoFile] ; |1005| 
L104:    
        MOVL      XAR2,*--SP            ; |1005| 
        MOVL      XAR1,*--SP            ; |1005| 
	.dwpsn	"sdcard.c",1008,1
        LRETR
        ; return occurs
	.dwattr DW$313, DW_AT_end_file("sdcard.c")
	.dwattr DW$313, DW_AT_end_line(0x3f0)
	.dwattr DW$313, DW_AT_end_column(0x01)
	.dwendtag DW$313

	.sect	".text"
	.global	_SDEventMessagetoFile

DW$316	.dwtag  DW_TAG_subprogram, DW_AT_name("SDEventMessagetoFile"), DW_AT_symbol_name("_SDEventMessagetoFile")
	.dwattr DW$316, DW_AT_low_pc(_SDEventMessagetoFile)
	.dwattr DW$316, DW_AT_high_pc(0x00)
	.dwattr DW$316, DW_AT_begin_file("sdcard.c")
	.dwattr DW$316, DW_AT_begin_line(0x3f7)
	.dwattr DW$316, DW_AT_begin_column(0x05)
	.dwattr DW$316, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$316, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",1016,1

;***************************************************************
;* FNAME: _SDEventMessagetoFile         FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_SDEventMessagetoFile:
;* AL    assigned to _mid
DW$317	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mid"), DW_AT_symbol_name("_mid")
	.dwattr DW$317, DW_AT_type(*DW$T$11)
	.dwattr DW$317, DW_AT_location[DW_OP_reg0]
;* AR4   assigned to _msgptr
DW$318	.dwtag  DW_TAG_formal_parameter, DW_AT_name("msgptr"), DW_AT_symbol_name("_msgptr")
	.dwattr DW$318, DW_AT_type(*DW$T$142)
	.dwattr DW$318, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        MOVW      DP,#_settings+7
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOVZ      AR3,AL                ; |1016| 
        MOVL      XAR1,XAR4             ; |1016| 
        MOV       AL,@_settings+7       ; |1024| 
        ADDB      SP,#2
        BF        L110,NEQ              ; |1024| 
        ; branchcc occurs ; |1024| 
        MOVW      DP,#_sdsettings
        MOV       AL,@_sdsettings       ; |1024| 
        CMPB      AL,#1                 ; |1024| 
        BF        L110,NEQ              ; |1024| 
        ; branchcc occurs ; |1024| 
        MOVW      DP,#_settings+11
        MOV       AL,@_settings+11      ; |1024| 
        CMPB      AL,#1                 ; |1024| 
        BF        L110,EQ               ; |1024| 
        ; branchcc occurs ; |1024| 
        MOVL      XAR5,#FSL4            ; |1027| 
        MOVL      XAR4,#_eventmsgfile   ; |1027| 
        LCR       #_fm_open             ; |1027| 
        ; call occurs [#_fm_open] ; |1027| 
        MOVL      ACC,XAR4              ; |1027| 
        MOVL      XAR2,XAR4             ; |1027| 
        BF        L106,NEQ              ; |1027| 
        ; branchcc occurs ; |1027| 
        MOVL      XAR4,XAR2
        LCR       #_fm_close            ; |1031| 
        ; call occurs [#_fm_close] ; |1031| 
        MOVB      AL,#11                ; |1032| 
L105:    
        LCR       #_SDcardError         ; |1032| 
        ; call occurs [#_SDcardError] ; |1032| 
        MOV       AL,#-1                ; |1033| 
        BF        L111,UNC              ; |1033| 
        ; branch occurs ; |1033| 
L106:    
        MOVB      XAR5,#0
        MOVL      XAR4,#_f_databuf      ; |1042| 
	.dwpsn	"sdcard.c",1040,0
        MOVB      XAR0,#0
L107:    
DW$L$_SDEventMessagetoFile$8$B:
	.dwpsn	"sdcard.c",1041,0
        MOVL      ACC,XAR1              ; |1042| 
        ADDU      ACC,AR5               ; |1042| 
        MOVL      XAR6,ACC              ; |1042| 
        MOV       AL,*+XAR6[0]          ; |1042| 
        LSR       AL,8                  ; |1042| 
        MOV       *+XAR4[AR0],AL        ; |1042| 
        ADDB      XAR5,#1               ; |1040| 
        MOV       AL,*+XAR6[0]          ; |1044| 
        ADDB      XAR0,#1               ; |1044| 
        ANDB      AL,#0xff              ; |1044| 
        MOV       *+XAR4[AR0],AL        ; |1044| 
        MOV       AL,AR5                ; |1040| 
        CMPB      AL,#24                ; |1040| 
        ADDB      XAR0,#1               ; |1045| 
	.dwpsn	"sdcard.c",1046,0
        BF        L107,LO               ; |1040| 
        ; branchcc occurs ; |1040| 
DW$L$_SDEventMessagetoFile$8$E:
        MOVB      XAR0,#48              ; |1047| 
        MOVB      ACC,#0
        MOV       *+XAR4[AR0],#13       ; |1047| 
        MOV       T,#50                 ; |1052| 
        MOVB      XAR0,#49              ; |1048| 
        MOV       *+XAR4[AR0],#10       ; |1048| 
        MOVL      XAR4,XAR2             ; |1052| 
        MOVL      *-SP[2],ACC           ; |1052| 
        MPYXU     ACC,T,AR3             ; |1052| 
        LCR       #_fm_seek             ; |1052| 
        ; call occurs [#_fm_seek] ; |1052| 
        CMPB      AL,#0                 ; |1052| 
        BF        L108,EQ               ; |1052| 
        ; branchcc occurs ; |1052| 
        MOVL      XAR4,XAR2
        LCR       #_fm_close            ; |1054| 
        ; call occurs [#_fm_close] ; |1054| 
        MOVB      AL,#12                ; |1055| 
        BF        L105,UNC              ; |1056| 
        ; branch occurs ; |1056| 
L108:    
        MOVB      ACC,#50
        MOVL      XAR5,XAR2             ; |1060| 
        MOVL      XAR4,#_f_databuf      ; |1060| 
        MOVL      *-SP[2],ACC           ; |1060| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |1060| 
        ; call occurs [#_fm_write] ; |1060| 
        MOVL      XAR6,ACC              ; |1060| 
        MOVB      ACC,#50
        CMPL      ACC,XAR6              ; |1060| 
        BF        L109,EQ               ; |1060| 
        ; branchcc occurs ; |1060| 
        MOVL      XAR4,XAR2
        LCR       #_fm_close            ; |1062| 
        ; call occurs [#_fm_close] ; |1062| 
        MOVB      AL,#13                ; |1063| 
        BF        L105,UNC              ; |1064| 
        ; branch occurs ; |1064| 
L109:    
        MOVL      XAR4,XAR2
        LCR       #_fm_close            ; |1067| 
        ; call occurs [#_fm_close] ; |1067| 
L110:    
        MOVB      AL,#0
L111:    
        SUBB      SP,#2                 ; |1069| 
        MOVL      XAR3,*--SP            ; |1069| 
        MOVL      XAR2,*--SP            ; |1069| 
        MOVL      XAR1,*--SP            ; |1069| 
	.dwpsn	"sdcard.c",1070,1
        LRETR
        ; return occurs

DW$319	.dwtag  DW_TAG_loop
	.dwattr DW$319, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L107:1:1471518989")
	.dwattr DW$319, DW_AT_begin_file("sdcard.c")
	.dwattr DW$319, DW_AT_begin_line(0x410)
	.dwattr DW$319, DW_AT_end_line(0x416)
DW$320	.dwtag  DW_TAG_loop_range
	.dwattr DW$320, DW_AT_low_pc(DW$L$_SDEventMessagetoFile$8$B)
	.dwattr DW$320, DW_AT_high_pc(DW$L$_SDEventMessagetoFile$8$E)
	.dwendtag DW$319

	.dwattr DW$316, DW_AT_end_file("sdcard.c")
	.dwattr DW$316, DW_AT_end_line(0x42e)
	.dwattr DW$316, DW_AT_end_column(0x01)
	.dwendtag DW$316

	.sect	".text"
	.global	_SDReadEventMessage

DW$321	.dwtag  DW_TAG_subprogram, DW_AT_name("SDReadEventMessage"), DW_AT_symbol_name("_SDReadEventMessage")
	.dwattr DW$321, DW_AT_low_pc(_SDReadEventMessage)
	.dwattr DW$321, DW_AT_high_pc(0x00)
	.dwattr DW$321, DW_AT_begin_file("sdcard.c")
	.dwattr DW$321, DW_AT_begin_line(0x432)
	.dwattr DW$321, DW_AT_begin_column(0x05)
	.dwattr DW$321, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$321, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",1075,1

;***************************************************************
;* FNAME: _SDReadEventMessage           FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_SDReadEventMessage:
;* AL    assigned to _mid
DW$322	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mid"), DW_AT_symbol_name("_mid")
	.dwattr DW$322, DW_AT_type(*DW$T$11)
	.dwattr DW$322, DW_AT_location[DW_OP_reg0]
;* AR4   assigned to _msgptr
DW$323	.dwtag  DW_TAG_formal_parameter, DW_AT_name("msgptr"), DW_AT_symbol_name("_msgptr")
	.dwattr DW$323, DW_AT_type(*DW$T$142)
	.dwattr DW$323, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        MOVW      DP,#_settings+7
        MOVZ      AR1,AL                ; |1075| 
        MOVL      *SP++,XAR2
        ADDB      SP,#2
        MOV       AL,@_settings+7       ; |1082| 
        MOVL      XAR2,XAR4             ; |1075| 
        BF        L116,NEQ              ; |1082| 
        ; branchcc occurs ; |1082| 
        MOVW      DP,#_sdsettings
        MOV       AL,@_sdsettings       ; |1082| 
        CMPB      AL,#1                 ; |1082| 
        BF        L116,NEQ              ; |1082| 
        ; branchcc occurs ; |1082| 
        MOVB      AL,#18                ; |1084| 
        MOVL      XAR4,#_sdcarddir+27   ; |1084| 
        LCR       #_SDCardSetupDirectory ; |1084| 
        ; call occurs [#_SDCardSetupDirectory] ; |1084| 
        CMPB      AL,#0                 ; |1084| 
        BF        L112,NEQ              ; |1084| 
        ; branchcc occurs ; |1084| 
        MOVL      XAR5,#FSL3            ; |1085| 
        MOVL      XAR4,#_eventmsgfile   ; |1085| 
        LCR       #_fm_open             ; |1085| 
        ; call occurs [#_fm_open] ; |1085| 
        MOVB      ACC,#0
        MOVW      DP,#_fileregs+10
        MOV       T,#50                 ; |1088| 
        MOVL      *-SP[2],ACC           ; |1088| 
        MOVL      @_fileregs+10,XAR4    ; |1085| 
        MPYXU     ACC,T,AR1             ; |1088| 
        LCR       #_fm_seek             ; |1088| 
        ; call occurs [#_fm_seek] ; |1088| 
        CMPB      AL,#0                 ; |1088| 
        BF        L113,EQ               ; |1088| 
        ; branchcc occurs ; |1088| 
        MOVW      DP,#_fileregs+10
        MOVL      XAR4,@_fileregs+10    ; |1090| 
        LCR       #_fm_close            ; |1090| 
        ; call occurs [#_fm_close] ; |1090| 
        MOVB      AL,#14                ; |1091| 
        LCR       #_SDcardError         ; |1091| 
        ; call occurs [#_SDcardError] ; |1091| 
L112:    
        MOV       AL,#-1                ; |1092| 
        BF        L117,UNC              ; |1092| 
        ; branch occurs ; |1092| 
L113:    
        MOVW      DP,#_fileregs+10
        MOVL      ACC,@_fileregs+10     ; |1098| 
        BF        L114,NEQ              ; |1098| 
        ; branchcc occurs ; |1098| 
        LCR       #_SetAllEventMsgs     ; |1114| 
        ; call occurs [#_SetAllEventMsgs] ; |1114| 
        BF        L116,UNC              ; |1116| 
        ; branch occurs ; |1116| 
L114:    
        MOVW      DP,#_fileregs+10
        MOVB      ACC,#48
        MOVL      XAR4,#_fileregs+12    ; |1100| 
        MOVL      XAR5,@_fileregs+10    ; |1100| 
        MOVL      *-SP[2],ACC           ; |1100| 
        MOVB      ACC,#1
        LCR       #_fm_read             ; |1100| 
        ; call occurs [#_fm_read] ; |1100| 
        MOVB      XAR1,#0
        MOVL      XAR4,#_fileregs+12    ; |1105| 
	.dwpsn	"sdcard.c",1103,0
        MOVB      XAR0,#0
L115:    
DW$L$_SDReadEventMessage$10$B:
	.dwpsn	"sdcard.c",1104,0
        MOV       ACC,*+XAR4[AR0] << #8 ; |1105| 
        ADDB      XAR0,#1               ; |1107| 
        MOV       AH,*+XAR4[AR0]        ; |1107| 
        ANDB      AH,#0xff              ; |1107| 
        ADD       AL,AH                 ; |1107| 
        MOV       *+XAR2[AR1],AL        ; |1109| 
        ADDB      XAR1,#1               ; |1103| 
        ADDB      XAR0,#1               ; |1108| 
        MOV       AL,AR1                ; |1103| 
        CMPB      AL,#24                ; |1103| 
	.dwpsn	"sdcard.c",1110,0
        BF        L115,LO               ; |1103| 
        ; branchcc occurs ; |1103| 
DW$L$_SDReadEventMessage$10$E:
        MOVW      DP,#_fileregs+10
        MOVL      XAR4,@_fileregs+10    ; |1112| 
        LCR       #_fm_close            ; |1112| 
        ; call occurs [#_fm_close] ; |1112| 
L116:    
        MOVB      AL,#0
L117:    
        SUBB      SP,#2                 ; |1113| 
        MOVL      XAR2,*--SP            ; |1113| 
        MOVL      XAR1,*--SP            ; |1113| 
	.dwpsn	"sdcard.c",1117,1
        LRETR
        ; return occurs

DW$324	.dwtag  DW_TAG_loop
	.dwattr DW$324, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L115:1:1471518989")
	.dwattr DW$324, DW_AT_begin_file("sdcard.c")
	.dwattr DW$324, DW_AT_begin_line(0x44f)
	.dwattr DW$324, DW_AT_end_line(0x456)
DW$325	.dwtag  DW_TAG_loop_range
	.dwattr DW$325, DW_AT_low_pc(DW$L$_SDReadEventMessage$10$B)
	.dwattr DW$325, DW_AT_high_pc(DW$L$_SDReadEventMessage$10$E)
	.dwendtag DW$324

	.dwattr DW$321, DW_AT_end_file("sdcard.c")
	.dwattr DW$321, DW_AT_end_line(0x45d)
	.dwattr DW$321, DW_AT_end_column(0x01)
	.dwendtag DW$321

	.sect	".text"
	.global	_CreateNewEventMsgFile

DW$326	.dwtag  DW_TAG_subprogram, DW_AT_name("CreateNewEventMsgFile"), DW_AT_symbol_name("_CreateNewEventMsgFile")
	.dwattr DW$326, DW_AT_low_pc(_CreateNewEventMsgFile)
	.dwattr DW$326, DW_AT_high_pc(0x00)
	.dwattr DW$326, DW_AT_begin_file("sdcard.c")
	.dwattr DW$326, DW_AT_begin_line(0x461)
	.dwattr DW$326, DW_AT_begin_column(0x05)
	.dwattr DW$326, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$326, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",1122,1

;***************************************************************
;* FNAME: _CreateNewEventMsgFile        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CreateNewEventMsgFile:
        MOVL      XAR4,#_eventmsgfile   ; |1123| 
        LCR       #_CreateFile          ; |1123| 
        ; call occurs [#_CreateFile] ; |1123| 
        CMPB      AL,#0                 ; |1123| 
        BF        L118,EQ               ; |1123| 
        ; branchcc occurs ; |1123| 
        MOV       AL,#-1                ; |1123| 
        BF        L119,UNC              ; |1123| 
        ; branch occurs ; |1123| 
L118:    
        MOVB      AL,#0
L119:    
	.dwpsn	"sdcard.c",1125,1
        LRETR
        ; return occurs
	.dwattr DW$326, DW_AT_end_file("sdcard.c")
	.dwattr DW$326, DW_AT_end_line(0x465)
	.dwattr DW$326, DW_AT_end_column(0x01)
	.dwendtag DW$326

	.sect	".text"
	.global	_SDReadEvent

DW$327	.dwtag  DW_TAG_subprogram, DW_AT_name("SDReadEvent"), DW_AT_symbol_name("_SDReadEvent")
	.dwattr DW$327, DW_AT_low_pc(_SDReadEvent)
	.dwattr DW$327, DW_AT_high_pc(0x00)
	.dwattr DW$327, DW_AT_begin_file("sdcard.c")
	.dwattr DW$327, DW_AT_begin_line(0x4e9)
	.dwattr DW$327, DW_AT_begin_column(0x05)
	.dwattr DW$327, DW_AT_frame_base[DW_OP_breg20 -12]
	.dwattr DW$327, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",1258,1

;***************************************************************
;* FNAME: _SDReadEvent                  FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_SDReadEvent:
;* AL    assigned to _eventid
DW$328	.dwtag  DW_TAG_formal_parameter, DW_AT_name("eventid"), DW_AT_symbol_name("_eventid")
	.dwattr DW$328, DW_AT_type(*DW$T$11)
	.dwattr DW$328, DW_AT_location[DW_OP_reg0]
;* AR4   assigned to _msgptr
DW$329	.dwtag  DW_TAG_formal_parameter, DW_AT_name("msgptr"), DW_AT_symbol_name("_msgptr")
	.dwattr DW$329, DW_AT_type(*DW$T$142)
	.dwattr DW$329, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        MOVW      DP,#_settings+7
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOVL      XAR2,XAR4             ; |1258| 
        MOV       AH,@_settings+7       ; |1265| 
        ADDB      SP,#4
        BF        L126,NEQ              ; |1265| 
        ; branchcc occurs ; |1265| 
        MOVW      DP,#_sdsettings
        MOV       AH,@_sdsettings       ; |1265| 
        CMPB      AH,#1                 ; |1265| 
        BF        L126,NEQ              ; |1265| 
        ; branchcc occurs ; |1265| 
        MOVW      DP,#_eventlogvars
        CMP       AL,@_eventlogvars     ; |1268| 
        BF        L120,LO               ; |1268| 
        ; branchcc occurs ; |1268| 
        MOVW      DP,#_eventlogvars+2
        MOV       AH,@_eventlogvars+2   ; |1268| 
        BF        L121,EQ               ; |1268| 
        ; branchcc occurs ; |1268| 
L120:    
        CLRC      SXM
        MOV       ACC,AL << 7           ; |1268| 
        MOVL      XAR1,ACC              ; |1268| 
        BF        L122,UNC              ; |1268| 
        ; branch occurs ; |1268| 
L121:    
        MOVB      XAR1,#0
L122:    
        MOVL      XAR4,#FSL13           ; |1270| 
        MOVL      XAR3,#_stringbuffer   ; |1269| 
        MOVL      *-SP[2],XAR4          ; |1270| 
        MOVL      XAR4,XAR3             ; |1270| 
        MOVL      *-SP[4],XAR1          ; |1270| 
        LCR       #_sprintf             ; |1270| 
        ; call occurs [#_sprintf] ; |1270| 
        MOVL      XAR4,XAR3             ; |1271| 
        LCR       #_DebugStringOut      ; |1271| 
        ; call occurs [#_DebugStringOut] ; |1271| 
        MOVL      XAR4,#_sdcarddir+27   ; |1273| 
        MOVB      AL,#19                ; |1273| 
        LCR       #_SDCardSetupDirectory ; |1273| 
        ; call occurs [#_SDCardSetupDirectory] ; |1273| 
        CMPB      AL,#0                 ; |1273| 
        BF        L123,NEQ              ; |1273| 
        ; branchcc occurs ; |1273| 
        MOVL      XAR5,#FSL3            ; |1274| 
        MOVL      XAR4,#_eventfile      ; |1274| 
        LCR       #_fm_open             ; |1274| 
        ; call occurs [#_fm_open] ; |1274| 
        MOVB      ACC,#0
        MOVW      DP,#_fileregs+10
        MOVL      *-SP[2],ACC           ; |1277| 
        MOVL      @_fileregs+10,XAR4    ; |1274| 
        MOVL      ACC,XAR1              ; |1277| 
        LCR       #_fm_seek             ; |1277| 
        ; call occurs [#_fm_seek] ; |1277| 
        CMPB      AL,#0                 ; |1277| 
        BF        L124,EQ               ; |1277| 
        ; branchcc occurs ; |1277| 
        MOVW      DP,#_fileregs+10
        MOVL      XAR4,@_fileregs+10    ; |1279| 
        LCR       #_fm_close            ; |1279| 
        ; call occurs [#_fm_close] ; |1279| 
        MOVB      AL,#18                ; |1280| 
        LCR       #_SDcardError         ; |1280| 
        ; call occurs [#_SDcardError] ; |1280| 
L123:    
        MOV       AL,#-1                ; |1281| 
        BF        L127,UNC              ; |1281| 
        ; branch occurs ; |1281| 
L124:    
        MOVW      DP,#_fileregs+10
        MOVL      XAR5,@_fileregs+10    ; |1287| 
        MOVL      ACC,XAR5              ; |1287| 
        BF        L126,EQ               ; |1287| 
        ; branchcc occurs ; |1287| 
        MOVB      ACC,#128
        MOVL      XAR4,#_fileregs+12    ; |1289| 
        MOVL      *-SP[2],ACC           ; |1289| 
        MOVB      ACC,#1
        LCR       #_fm_read             ; |1289| 
        ; call occurs [#_fm_read] ; |1289| 
        MOVB      XAR1,#0
        MOVL      XAR4,#_fileregs+12    ; |1294| 
	.dwpsn	"sdcard.c",1292,0
        MOVB      XAR0,#0
L125:    
DW$L$_SDReadEvent$13$B:
	.dwpsn	"sdcard.c",1293,0
        MOV       ACC,*+XAR4[AR0] << #8 ; |1294| 
        ADDB      XAR0,#1               ; |1296| 
        MOV       AH,*+XAR4[AR0]        ; |1296| 
        ANDB      AH,#0xff              ; |1296| 
        ADD       AL,AH                 ; |1296| 
        MOV       *+XAR2[AR1],AL        ; |1298| 
        ADDB      XAR1,#1               ; |1292| 
        ADDB      XAR0,#1               ; |1297| 
        MOV       AL,AR1                ; |1292| 
        CMPB      AL,#64                ; |1292| 
	.dwpsn	"sdcard.c",1299,0
        BF        L125,LO               ; |1292| 
        ; branchcc occurs ; |1292| 
DW$L$_SDReadEvent$13$E:
        MOVW      DP,#_fileregs+10
        MOVL      XAR4,@_fileregs+10    ; |1301| 
        LCR       #_fm_close            ; |1301| 
        ; call occurs [#_fm_close] ; |1301| 
L126:    
        MOVB      AL,#0
L127:    
        SUBB      SP,#4                 ; |1304| 
        MOVL      XAR3,*--SP            ; |1304| 
        MOVL      XAR2,*--SP            ; |1304| 
        MOVL      XAR1,*--SP            ; |1304| 
	.dwpsn	"sdcard.c",1305,1
        LRETR
        ; return occurs

DW$330	.dwtag  DW_TAG_loop
	.dwattr DW$330, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L125:1:1471518989")
	.dwattr DW$330, DW_AT_begin_file("sdcard.c")
	.dwattr DW$330, DW_AT_begin_line(0x50c)
	.dwattr DW$330, DW_AT_end_line(0x513)
DW$331	.dwtag  DW_TAG_loop_range
	.dwattr DW$331, DW_AT_low_pc(DW$L$_SDReadEvent$13$B)
	.dwattr DW$331, DW_AT_high_pc(DW$L$_SDReadEvent$13$E)
	.dwendtag DW$330

	.dwattr DW$327, DW_AT_end_file("sdcard.c")
	.dwattr DW$327, DW_AT_end_line(0x519)
	.dwattr DW$327, DW_AT_end_column(0x01)
	.dwendtag DW$327

	.sect	".text"
	.global	_SDCalcEventLogID

DW$332	.dwtag  DW_TAG_subprogram, DW_AT_name("SDCalcEventLogID"), DW_AT_symbol_name("_SDCalcEventLogID")
	.dwattr DW$332, DW_AT_low_pc(_SDCalcEventLogID)
	.dwattr DW$332, DW_AT_high_pc(0x00)
	.dwattr DW$332, DW_AT_begin_file("sdcard.c")
	.dwattr DW$332, DW_AT_begin_line(0x51e)
	.dwattr DW$332, DW_AT_begin_column(0x05)
	.dwattr DW$332, DW_AT_frame_base[DW_OP_breg20 -12]
	.dwattr DW$332, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",1311,1

;***************************************************************
;* FNAME: _SDCalcEventLogID             FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_SDCalcEventLogID:
        MOVL      *SP++,XAR1
        MOVW      DP,#_settings+7
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOV       AL,@_settings+7       ; |1315| 
        ADDB      SP,#4
        BF        L136,NEQ              ; |1315| 
        ; branchcc occurs ; |1315| 
        MOVW      DP,#_sdsettings
        MOV       AL,@_sdsettings       ; |1315| 
        CMPB      AL,#1                 ; |1315| 
        BF        L136,NEQ              ; |1315| 
        ; branchcc occurs ; |1315| 
        MOVB      AL,#20                ; |1317| 
        MOVL      XAR4,#_sdcarddir+27   ; |1317| 
        LCR       #_SDCardSetupDirectory ; |1317| 
        ; call occurs [#_SDCardSetupDirectory] ; |1317| 
        CMPB      AL,#0                 ; |1317| 
        BF        L128,EQ               ; |1317| 
        ; branchcc occurs ; |1317| 
        MOVB      AL,#41                ; |1317| 
        LCR       #_SDcardError         ; |1317| 
        ; call occurs [#_SDcardError] ; |1317| 
        MOV       AL,#-1                ; |1317| 
        BF        L137,UNC              ; |1317| 
        ; branch occurs ; |1317| 
L128:    
        MOVL      XAR5,#FSL3            ; |1319| 
        MOVL      XAR4,#_eventfile      ; |1319| 
        LCR       #_fm_open             ; |1319| 
        ; call occurs [#_fm_open] ; |1319| 
        MOVL      ACC,XAR4              ; |1319| 
        MOVL      XAR2,XAR4             ; |1319| 
        BF        L129,EQ               ; |1319| 
        ; branchcc occurs ; |1319| 
        MOVL      XAR4,#_eventfile      ; |1319| 
        LCR       #_fm_filelength       ; |1319| 
        ; call occurs [#_fm_filelength] ; |1319| 
        MOVL      XAR1,ACC              ; |1319| 
        BF        L130,UNC              ; |1319| 
        ; branch occurs ; |1319| 
L129:    
        MOVB      XAR1,#0
L130:    
        MOVL      XAR4,XAR2
        LCR       #_fm_close            ; |1325| 
        ; call occurs [#_fm_close] ; |1325| 
        MOVB      ACC,#128
        CMPL      ACC,XAR1              ; |1328| 
        BF        L131,GEQ              ; |1328| 
        ; branchcc occurs ; |1328| 
        MOV       AL,#0
        MOV       AH,#128
        CMPL      ACC,XAR1              ; |1328| 
        BF        L134,GT               ; |1328| 
        ; branchcc occurs ; |1328| 
L131:    
        MOVL      XAR5,#FSL3            ; |1333| 
        MOVL      XAR4,#_eventposfile   ; |1333| 
        LCR       #_fm_open             ; |1333| 
        ; call occurs [#_fm_open] ; |1333| 
        MOVL      ACC,XAR4              ; |1333| 
        MOVL      XAR2,XAR4             ; |1333| 
        BF        L132,EQ               ; |1333| 
        ; branchcc occurs ; |1333| 
        MOVL      ACC,XAR1
        BF        L132,EQ               ; |1333| 
        ; branchcc occurs ; |1333| 
        MOVL      XAR3,#_f_databuf      ; |1341| 
        MOVB      ACC,#2
        MOVL      XAR5,XAR2             ; |1341| 
        MOVL      XAR4,XAR3             ; |1341| 
        MOVL      *-SP[2],ACC           ; |1341| 
        MOVB      ACC,#1
        LCR       #_fm_read             ; |1341| 
        ; call occurs [#_fm_read] ; |1341| 
        MOVW      DP,#_eventlogvars
        MOV       ACC,*+XAR3[0] << #8   ; |1342| 
        MOV       @_eventlogvars,AL     ; |1342| 
        MOV       AL,*+XAR3[1]          ; |1343| 
        MOVW      DP,#_eventlogvars
        MOVL      XAR4,XAR2             ; |1343| 
        ANDB      AL,#0xff              ; |1343| 
        ADD       @_eventlogvars,AL     ; |1343| 
        LCR       #_fm_close            ; |1344| 
        ; call occurs [#_fm_close] ; |1344| 
        MOV       AL,#0
        MOV       AH,#128
        CMPL      ACC,XAR1              ; |1346| 
        BF        L133,GT               ; |1346| 
        ; branchcc occurs ; |1346| 
        MOVW      DP,#_eventlogvars+2
        MOV       @_eventlogvars+2,#1   ; |1347| 
        BF        L133,UNC              ; |1347| 
        ; branch occurs ; |1347| 
L132:    
        MOVW      DP,#_eventlogvars
        MOV       @_eventlogvars,#0     ; |1337| 
        MOVW      DP,#_eventlogvars+1
        MOV       @_eventlogvars+1,#0   ; |1338| 
        MOVW      DP,#_eventlogvars+2
        MOV       @_eventlogvars+2,#0   ; |1339| 
L133:    
        MOVL      XAR4,XAR2
        LCR       #_fm_close            ; |1350| 
        ; call occurs [#_fm_close] ; |1350| 
        MOVL      XAR3,#_stringbuffer   ; |1351| 
        MOVL      XAR4,#FSL14           ; |1351| 
        MOVL      *-SP[2],XAR4          ; |1351| 
        MOVL      XAR4,XAR3             ; |1351| 
        LCR       #_sprintf             ; |1351| 
        ; call occurs [#_sprintf] ; |1351| 
        MOVL      XAR4,XAR3             ; |1351| 
        LCR       #_DebugStringOut      ; |1351| 
        ; call occurs [#_DebugStringOut] ; |1351| 
        BF        L135,UNC              ; |1351| 
        ; branch occurs ; |1351| 
L134:    
        SETC      SXM
        MOVL      ACC,XAR1
        MOV       T,#25                 ; |1328| 
        MOVW      DP,#_eventlogvars
        SFR       ACC,6                 ; |1328| 
        LSRL      ACC,T                 ; |1328| 
        ADDL      ACC,XAR1
        SFR       ACC,7                 ; |1328| 
        MOV       @_eventlogvars,AL     ; |1328| 
L135:    
        MOVL      XAR4,#FSL15           ; |1356| 
        MOVL      XAR3,#_stringbuffer   ; |1356| 
        MOVW      DP,#_eventlogvars
        MOVL      *-SP[2],XAR4          ; |1356| 
        MOVL      XAR4,XAR3             ; |1356| 
        MOV       AL,@_eventlogvars     ; |1356| 
        MOV       *-SP[3],AL            ; |1356| 
        LCR       #_sprintf             ; |1356| 
        ; call occurs [#_sprintf] ; |1356| 
        MOVL      XAR4,XAR3             ; |1356| 
        LCR       #_DebugStringOut      ; |1356| 
        ; call occurs [#_DebugStringOut] ; |1356| 
        LCR       #_WriteEventLogVarsStructtoNVMEM ; |1358| 
        ; call occurs [#_WriteEventLogVarsStructtoNVMEM] ; |1358| 
        MOVL      XAR4,#FSL16           ; |1360| 
        MOVL      *-SP[2],XAR4          ; |1360| 
        MOVL      XAR4,XAR3             ; |1360| 
        MOVL      *-SP[4],XAR1          ; |1360| 
        LCR       #_sprintf             ; |1360| 
        ; call occurs [#_sprintf] ; |1360| 
        MOVL      XAR4,XAR3             ; |1360| 
        LCR       #_DebugStringOut      ; |1360| 
        ; call occurs [#_DebugStringOut] ; |1360| 
L136:    
        MOVB      AL,#0
L137:    
        SUBB      SP,#4                 ; |1362| 
        MOVL      XAR3,*--SP            ; |1362| 
        MOVL      XAR2,*--SP            ; |1362| 
        MOVL      XAR1,*--SP            ; |1362| 
	.dwpsn	"sdcard.c",1363,1
        LRETR
        ; return occurs
	.dwattr DW$332, DW_AT_end_file("sdcard.c")
	.dwattr DW$332, DW_AT_end_line(0x553)
	.dwattr DW$332, DW_AT_end_column(0x01)
	.dwendtag DW$332

	.sect	".text"
	.global	_CreateNewEventFile

DW$333	.dwtag  DW_TAG_subprogram, DW_AT_name("CreateNewEventFile"), DW_AT_symbol_name("_CreateNewEventFile")
	.dwattr DW$333, DW_AT_low_pc(_CreateNewEventFile)
	.dwattr DW$333, DW_AT_high_pc(0x00)
	.dwattr DW$333, DW_AT_begin_file("sdcard.c")
	.dwattr DW$333, DW_AT_begin_line(0x557)
	.dwattr DW$333, DW_AT_begin_column(0x05)
	.dwattr DW$333, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$333, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",1368,1

;***************************************************************
;* FNAME: _CreateNewEventFile           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CreateNewEventFile:
        MOVL      XAR4,#_eventfile      ; |1369| 
        LCR       #_CreateFile          ; |1369| 
        ; call occurs [#_CreateFile] ; |1369| 
        CMPB      AL,#0                 ; |1369| 
        BF        L138,EQ               ; |1369| 
        ; branchcc occurs ; |1369| 
        MOV       AL,#-1                ; |1369| 
        BF        L139,UNC              ; |1369| 
        ; branch occurs ; |1369| 
L138:    
        MOVB      AL,#0
L139:    
	.dwpsn	"sdcard.c",1371,1
        LRETR
        ; return occurs
	.dwattr DW$333, DW_AT_end_file("sdcard.c")
	.dwattr DW$333, DW_AT_end_line(0x55b)
	.dwattr DW$333, DW_AT_end_column(0x01)
	.dwendtag DW$333

	.sect	".text"
	.global	_SDEventLogDelete

DW$334	.dwtag  DW_TAG_subprogram, DW_AT_name("SDEventLogDelete"), DW_AT_symbol_name("_SDEventLogDelete")
	.dwattr DW$334, DW_AT_low_pc(_SDEventLogDelete)
	.dwattr DW$334, DW_AT_high_pc(0x00)
	.dwattr DW$334, DW_AT_begin_file("sdcard.c")
	.dwattr DW$334, DW_AT_begin_line(0x55e)
	.dwattr DW$334, DW_AT_begin_column(0x05)
	.dwattr DW$334, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$334, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",1375,1

;***************************************************************
;* FNAME: _SDEventLogDelete             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SDEventLogDelete:
        LCR       #_GetVoltageStatus    ; |1376| 
        ; call occurs [#_GetVoltageStatus] ; |1376| 
        CMPB      AL,#1                 ; |1376| 
        BF        L141,NEQ              ; |1376| 
        ; branchcc occurs ; |1376| 
        MOVB      AL,#21                ; |1378| 
        MOVL      XAR4,#_sdcarddir+27   ; |1378| 
        LCR       #_SDCardSetupDirectory ; |1378| 
        ; call occurs [#_SDCardSetupDirectory] ; |1378| 
        CMPB      AL,#0                 ; |1378| 
        BF        L140,EQ               ; |1378| 
        ; branchcc occurs ; |1378| 
        MOV       AL,#-1                ; |1378| 
        BF        L142,UNC              ; |1378| 
        ; branch occurs ; |1378| 
L140:    
        MOVL      XAR4,#_eventfile      ; |1379| 
        LCR       #_fm_delete           ; |1379| 
        ; call occurs [#_fm_delete] ; |1379| 
        LCR       #_DeselectSPI         ; |1380| 
        ; call occurs [#_DeselectSPI] ; |1380| 
        LCR       #_CreateNewEventFile  ; |1382| 
        ; call occurs [#_CreateNewEventFile] ; |1382| 
L141:    
        MOVB      AL,#0
L142:    
	.dwpsn	"sdcard.c",1386,1
        LRETR
        ; return occurs
	.dwattr DW$334, DW_AT_end_file("sdcard.c")
	.dwattr DW$334, DW_AT_end_line(0x56a)
	.dwattr DW$334, DW_AT_end_column(0x01)
	.dwendtag DW$334

	.sect	".text"
	.global	_SensorStatustoSDCardFile

DW$335	.dwtag  DW_TAG_subprogram, DW_AT_name("SensorStatustoSDCardFile"), DW_AT_symbol_name("_SensorStatustoSDCardFile")
	.dwattr DW$335, DW_AT_low_pc(_SensorStatustoSDCardFile)
	.dwattr DW$335, DW_AT_high_pc(0x00)
	.dwattr DW$335, DW_AT_begin_file("sdcard.c")
	.dwattr DW$335, DW_AT_begin_line(0x5bf)
	.dwattr DW$335, DW_AT_begin_column(0x05)
	.dwattr DW$335, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$335, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",1472,1

;***************************************************************
;* FNAME: _SensorStatustoSDCardFile     FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_SensorStatustoSDCardFile:
        MOVL      *SP++,XAR1
        MOVW      DP,#_settings+7
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOV       AL,@_settings+7       ; |1479| 
        ADDB      SP,#2
        BF        L148,NEQ              ; |1479| 
        ; branchcc occurs ; |1479| 
        MOVW      DP,#_sdsettings
        MOV       AL,@_sdsettings       ; |1479| 
        CMPB      AL,#1                 ; |1479| 
        BF        L148,NEQ              ; |1479| 
        ; branchcc occurs ; |1479| 
        MOVW      DP,#_settings+11
        MOV       AL,@_settings+11      ; |1479| 
        CMPB      AL,#1                 ; |1479| 
        BF        L148,EQ               ; |1479| 
        ; branchcc occurs ; |1479| 
        MOVL      XAR4,#FSL17           ; |1481| 
        LCR       #_DebugStringOut      ; |1481| 
        ; call occurs [#_DebugStringOut] ; |1481| 
        MOVB      AL,#22                ; |1482| 
        MOVL      XAR4,#_sdcarddir+27   ; |1482| 
        LCR       #_SDCardSetupDirectory ; |1482| 
        ; call occurs [#_SDCardSetupDirectory] ; |1482| 
        CMPB      AL,#0                 ; |1482| 
        BF        L146,NEQ              ; |1482| 
        ; branchcc occurs ; |1482| 
        LCR       #_CreateNewStatusFile ; |1483| 
        ; call occurs [#_CreateNewStatusFile] ; |1483| 
        MOVL      XAR5,#FSL18           ; |1486| 
        MOVL      XAR4,#_statusfile     ; |1486| 
        LCR       #_fm_open             ; |1486| 
        ; call occurs [#_fm_open] ; |1486| 
        MOVL      ACC,XAR4              ; |1486| 
        MOVL      XAR2,XAR4             ; |1486| 
        BF        L143,NEQ              ; |1486| 
        ; branchcc occurs ; |1486| 
        MOVL      XAR4,XAR2
        LCR       #_fm_close            ; |1489| 
        ; call occurs [#_fm_close] ; |1489| 
        MOVB      AL,#23                ; |1490| 
        BF        L145,UNC              ; |1491| 
        ; branch occurs ; |1491| 
L143:    
        MOVB      XAR1,#0
	.dwpsn	"sdcard.c",1498,0
        MOVB      XAR3,#0
L144:    
DW$L$_SensorStatustoSDCardFile$8$B:
	.dwpsn	"sdcard.c",1499,0
        MOV       AL,AR3                ; |1500| 
        LCR       #_Status1Flags        ; |1500| 
        ; call occurs [#_Status1Flags] ; |1500| 
        ADDB      XAR3,#1               ; |1498| 
        MOV       AL,*+XAR4[0]          ; |1500| 
        MOV       AH,AL                 ; |1501| 
        LSR       AH,8                  ; |1501| 
        MOVL      XAR4,#_f_databuf      ; |1501| 
        MOV       *+XAR4[AR1],AH        ; |1501| 
        ANDB      AL,#255               ; |1503| 
        ADDB      XAR1,#1               ; |1503| 
        MOV       *+XAR4[AR1],AL        ; |1503| 
        MOV       AL,AR3                ; |1498| 
        CMPB      AL,#28                ; |1498| 
        ADDB      XAR1,#1               ; |1504| 
	.dwpsn	"sdcard.c",1505,0
        BF        L144,LO               ; |1498| 
        ; branchcc occurs ; |1498| 
DW$L$_SensorStatustoSDCardFile$8$E:
        MOVB      ACC,#56
        MOVL      XAR5,XAR2             ; |1507| 
        MOVL      *-SP[2],ACC           ; |1507| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |1507| 
        ; call occurs [#_fm_write] ; |1507| 
        MOVL      XAR6,ACC              ; |1507| 
        MOVB      ACC,#56
        CMPL      ACC,XAR6              ; |1507| 
        BF        L147,EQ               ; |1507| 
        ; branchcc occurs ; |1507| 
        MOVL      XAR4,XAR2
        LCR       #_fm_close            ; |1509| 
        ; call occurs [#_fm_close] ; |1509| 
        MOVB      AL,#24                ; |1510| 
L145:    
        LCR       #_SDcardError         ; |1510| 
        ; call occurs [#_SDcardError] ; |1510| 
L146:    
        MOV       AL,#-1                ; |1511| 
        BF        L149,UNC              ; |1511| 
        ; branch occurs ; |1511| 
L147:    
        MOVL      XAR4,XAR2
        LCR       #_fm_close            ; |1515| 
        ; call occurs [#_fm_close] ; |1515| 
L148:    
        MOVB      AL,#0
L149:    
        SUBB      SP,#2                 ; |1520| 
        MOVL      XAR3,*--SP            ; |1520| 
        MOVL      XAR2,*--SP            ; |1520| 
        MOVL      XAR1,*--SP            ; |1520| 
	.dwpsn	"sdcard.c",1521,1
        LRETR
        ; return occurs

DW$336	.dwtag  DW_TAG_loop
	.dwattr DW$336, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L144:1:1471518989")
	.dwattr DW$336, DW_AT_begin_file("sdcard.c")
	.dwattr DW$336, DW_AT_begin_line(0x5da)
	.dwattr DW$336, DW_AT_end_line(0x5e1)
DW$337	.dwtag  DW_TAG_loop_range
	.dwattr DW$337, DW_AT_low_pc(DW$L$_SensorStatustoSDCardFile$8$B)
	.dwattr DW$337, DW_AT_high_pc(DW$L$_SensorStatustoSDCardFile$8$E)
	.dwendtag DW$336

	.dwattr DW$335, DW_AT_end_file("sdcard.c")
	.dwattr DW$335, DW_AT_end_line(0x5f1)
	.dwattr DW$335, DW_AT_end_column(0x01)
	.dwendtag DW$335

	.sect	".text"
	.global	_ReadSensorStatusfromSDCardFile

DW$338	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadSensorStatusfromSDCardFile"), DW_AT_symbol_name("_ReadSensorStatusfromSDCardFile")
	.dwattr DW$338, DW_AT_low_pc(_ReadSensorStatusfromSDCardFile)
	.dwattr DW$338, DW_AT_high_pc(0x00)
	.dwattr DW$338, DW_AT_begin_file("sdcard.c")
	.dwattr DW$338, DW_AT_begin_line(0x5f7)
	.dwattr DW$338, DW_AT_begin_column(0x05)
	.dwattr DW$338, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$338, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",1528,1

;***************************************************************
;* FNAME: _ReadSensorStatusfromSDCardFile FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_ReadSensorStatusfromSDCardFile:
        MOVL      *SP++,XAR1
        MOVW      DP,#_settings+7
        MOVL      *SP++,XAR2
        MOV       AL,@_settings+7       ; |1536| 
        ADDB      SP,#2
        BF        L155,NEQ              ; |1536| 
        ; branchcc occurs ; |1536| 
        MOVW      DP,#_sdsettings
        MOV       AL,@_sdsettings       ; |1536| 
        CMPB      AL,#1                 ; |1536| 
        BF        L155,NEQ              ; |1536| 
        ; branchcc occurs ; |1536| 
        MOVW      DP,#_settings+11
        MOV       AL,@_settings+11      ; |1536| 
        CMPB      AL,#1                 ; |1536| 
        BF        L155,EQ               ; |1536| 
        ; branchcc occurs ; |1536| 
        LCR       #_Fram1MagicNumberRead ; |1539| 
        ; call occurs [#_Fram1MagicNumberRead] ; |1539| 
        MOVZ      AR1,AL                ; |1539| 
        MOVL      XAR4,#_sdcarddir+27   ; |1541| 
        MOVB      AL,#23                ; |1541| 
        LCR       #_SDCardSetupDirectory ; |1541| 
        ; call occurs [#_SDCardSetupDirectory] ; |1541| 
        CMPB      AL,#0                 ; |1541| 
        BF        L150,EQ               ; |1541| 
        ; branchcc occurs ; |1541| 
        MOV       AL,#-1                ; |1541| 
        BF        L156,UNC              ; |1541| 
        ; branch occurs ; |1541| 
L150:    
        MOVL      XAR5,#FSL3            ; |1542| 
        MOVL      XAR4,#_statusfile     ; |1542| 
        LCR       #_fm_open             ; |1542| 
        ; call occurs [#_fm_open] ; |1542| 
        MOVW      DP,#_fileregs+10
        MOVL      @_fileregs+10,XAR4    ; |1542| 
        MOVW      DP,#_fileregs+10
        MOVL      ACC,@_fileregs+10     ; |1549| 
        BF        L153,NEQ              ; |1549| 
        ; branchcc occurs ; |1549| 
        MOVL      XAR4,ACC              ; |1569| 
        LCR       #_fm_close            ; |1569| 
        ; call occurs [#_fm_close] ; |1569| 
        MOV       AL,AR1                ; |1569| 
        BF        L151,EQ               ; |1570| 
        ; branchcc occurs ; |1570| 
        LCR       #_SetupSensorStatusDefaults ; |1577| 
        ; call occurs [#_SetupSensorStatusDefaults] ; |1577| 
        BF        L152,UNC              ; |1578| 
        ; branch occurs ; |1578| 
L151:    
        LCR       #_SensorStatustoSDCardFile ; |1572| 
        ; call occurs [#_SensorStatustoSDCardFile] ; |1572| 
L152:    
        MOVW      DP,#_sdsettings+3
        AND       @_sdsettings+3,#0xfffd ; |1573| 
        BF        L155,UNC              ; |1574| 
        ; branch occurs ; |1574| 
L153:    
        MOVW      DP,#_fileregs+10
        MOVB      ACC,#56
        MOVL      XAR4,#_fileregs+12    ; |1551| 
        MOVL      XAR5,@_fileregs+10    ; |1551| 
        MOVL      *-SP[2],ACC           ; |1551| 
        MOVB      ACC,#1
        LCR       #_fm_read             ; |1551| 
        ; call occurs [#_fm_read] ; |1551| 
        MOVB      XAR1,#0
	.dwpsn	"sdcard.c",1554,0
        MOVB      XAR2,#0
L154:    
DW$L$_ReadSensorStatusfromSDCardFile$12$B:
	.dwpsn	"sdcard.c",1555,0
        MOV       AL,AR2                ; |1556| 
        LCR       #_Status1Flags        ; |1556| 
        ; call occurs [#_Status1Flags] ; |1556| 
        ADDB      XAR2,#1               ; |1554| 
        MOVL      XAR5,#_fileregs+12    ; |1557| 
        MOV       ACC,*+XAR5[AR1] << #8 ; |1557| 
        ADDB      XAR1,#1               ; |1559| 
        MOV       AH,*+XAR5[AR1]        ; |1559| 
        ANDB      AH,#0xff              ; |1559| 
        ADD       AL,AH                 ; |1559| 
        MOV       *+XAR4[0],AL          ; |1561| 
        MOV       AL,AR2                ; |1554| 
        CMPB      AL,#28                ; |1554| 
        ADDB      XAR1,#1               ; |1560| 
	.dwpsn	"sdcard.c",1562,0
        BF        L154,LO               ; |1554| 
        ; branchcc occurs ; |1554| 
DW$L$_ReadSensorStatusfromSDCardFile$12$E:
        MOVW      DP,#_fileregs+10
        MOVL      XAR4,@_fileregs+10    ; |1564| 
        LCR       #_fm_close            ; |1564| 
        ; call occurs [#_fm_close] ; |1564| 
        MOVW      DP,#_sdsettings+3
        OR        @_sdsettings+3,#0x0002 ; |1565| 
L155:    
        MOVB      AL,#0
L156:    
        SUBB      SP,#2                 ; |1585| 
        MOVL      XAR2,*--SP            ; |1585| 
        MOVL      XAR1,*--SP            ; |1585| 
	.dwpsn	"sdcard.c",1586,1
        LRETR
        ; return occurs

DW$339	.dwtag  DW_TAG_loop
	.dwattr DW$339, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L154:1:1471518989")
	.dwattr DW$339, DW_AT_begin_file("sdcard.c")
	.dwattr DW$339, DW_AT_begin_line(0x612)
	.dwattr DW$339, DW_AT_end_line(0x61a)
DW$340	.dwtag  DW_TAG_loop_range
	.dwattr DW$340, DW_AT_low_pc(DW$L$_ReadSensorStatusfromSDCardFile$12$B)
	.dwattr DW$340, DW_AT_high_pc(DW$L$_ReadSensorStatusfromSDCardFile$12$E)
	.dwendtag DW$339

	.dwattr DW$338, DW_AT_end_file("sdcard.c")
	.dwattr DW$338, DW_AT_end_line(0x632)
	.dwattr DW$338, DW_AT_end_column(0x01)
	.dwendtag DW$338

	.sect	".text"
	.global	_GeneralSettingstoSDCardFile

DW$341	.dwtag  DW_TAG_subprogram, DW_AT_name("GeneralSettingstoSDCardFile"), DW_AT_symbol_name("_GeneralSettingstoSDCardFile")
	.dwattr DW$341, DW_AT_low_pc(_GeneralSettingstoSDCardFile)
	.dwattr DW$341, DW_AT_high_pc(0x00)
	.dwattr DW$341, DW_AT_begin_file("sdcard.c")
	.dwattr DW$341, DW_AT_begin_line(0x637)
	.dwattr DW$341, DW_AT_begin_column(0x05)
	.dwattr DW$341, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$341, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",1592,1

;***************************************************************
;* FNAME: _GeneralSettingstoSDCardFile  FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_GeneralSettingstoSDCardFile:
        MOVL      *SP++,XAR1
        MOVW      DP,#_settings+7
        MOVL      *SP++,XAR2
        MOV       AL,@_settings+7       ; |1599| 
        ADDB      SP,#2
        BF        L177,NEQ              ; |1599| 
        ; branchcc occurs ; |1599| 
        MOVW      DP,#_sdsettings
        MOV       AL,@_sdsettings       ; |1599| 
        CMPB      AL,#1                 ; |1599| 
        BF        L177,NEQ              ; |1599| 
        ; branchcc occurs ; |1599| 
        MOVW      DP,#_settings+11
        MOV       AL,@_settings+11      ; |1599| 
        CMPB      AL,#1                 ; |1599| 
        BF        L177,EQ               ; |1599| 
        ; branchcc occurs ; |1599| 
        MOVL      XAR4,#FSL19           ; |1601| 
        LCR       #_DebugStringOut      ; |1601| 
        ; call occurs [#_DebugStringOut] ; |1601| 
        MOVB      AL,#24                ; |1602| 
        MOVL      XAR4,#_sdcarddir+27   ; |1602| 
        LCR       #_SDCardSetupDirectory ; |1602| 
        ; call occurs [#_SDCardSetupDirectory] ; |1602| 
        CMPB      AL,#0                 ; |1602| 
        BF        L175,NEQ              ; |1602| 
        ; branchcc occurs ; |1602| 
        LCR       #_CreateNewSettingsFile ; |1603| 
        ; call occurs [#_CreateNewSettingsFile] ; |1603| 
        MOVL      XAR5,#FSL18           ; |1606| 
        MOVL      XAR4,#_settingsfile   ; |1606| 
        LCR       #_fm_open             ; |1606| 
        ; call occurs [#_fm_open] ; |1606| 
        MOVL      ACC,XAR4              ; |1606| 
        MOVL      XAR1,XAR4             ; |1606| 
        BF        L157,NEQ              ; |1606| 
        ; branchcc occurs ; |1606| 
        MOVL      XAR4,XAR1
        LCR       #_fm_close            ; |1609| 
        ; call occurs [#_fm_close] ; |1609| 
        MOVB      AL,#25                ; |1610| 
        BF        L174,UNC              ; |1611| 
        ; branch occurs ; |1611| 
L157:    
        MOVB      XAR6,#0
        MOVL      XAR5,#_f_databuf      ; |1622| 
        MOVB      XAR0,#0
        MOVB      XAR2,#90              ; |1617| 
	.dwpsn	"sdcard.c",1620,0
        MOVL      XAR4,#_allsensors     ; |1619| 
L158:    
DW$L$_GeneralSettingstoSDCardFile$8$B:
	.dwpsn	"sdcard.c",1621,0
        MOVL      ACC,XAR4              ; |1622| 
        ADDU      ACC,AR6               ; |1622| 
        MOVL      XAR7,ACC              ; |1622| 
        MOV       AL,*+XAR7[0]          ; |1622| 
        LSR       AL,8                  ; |1622| 
        MOV       *+XAR5[AR0],AL        ; |1622| 
        ADDB      XAR6,#1               ; |1620| 
        MOV       AL,*+XAR7[0]          ; |1624| 
        ADDB      XAR0,#1               ; |1624| 
        ANDB      AL,#0xff              ; |1624| 
        MOV       *+XAR5[AR0],AL        ; |1624| 
        MOV       AL,AR2                ; |1620| 
        LSR       AL,15                 ; |1620| 
        ADD       AL,AR2                ; |1620| 
        ASR       AL,1                  ; |1620| 
        CMP       AL,AR6                ; |1620| 
        ADDB      XAR0,#1               ; |1625| 
	.dwpsn	"sdcard.c",1626,0
        BF        L158,HI               ; |1620| 
        ; branchcc occurs ; |1620| 
DW$L$_GeneralSettingstoSDCardFile$8$E:
        SETC      SXM
        MOV       ACC,AR2               ; |1627| 
        MOVL      XAR5,XAR1             ; |1627| 
        MOVL      XAR4,#_f_databuf      ; |1627| 
        MOVL      *-SP[2],ACC           ; |1627| 
        MOVL      XAR2,ACC              ; |1627| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |1627| 
        ; call occurs [#_fm_write] ; |1627| 
        MOVL      XAR6,ACC              ; |1627| 
        MOVL      ACC,XAR2              ; |1627| 
        CMPL      ACC,XAR6              ; |1627| 
        BF        L159,EQ               ; |1627| 
        ; branchcc occurs ; |1627| 
        MOVL      XAR4,XAR1
        LCR       #_fm_close            ; |1629| 
        ; call occurs [#_fm_close] ; |1629| 
        MOVB      AL,#26                ; |1630| 
        BF        L174,UNC              ; |1631| 
        ; branch occurs ; |1631| 
L159:    
        MOVB      XAR6,#0
        MOVL      XAR5,#_f_databuf      ; |1642| 
        MOVB      XAR0,#0
        MOVB      XAR2,#50              ; |1637| 
	.dwpsn	"sdcard.c",1640,0
        MOVL      XAR4,#_speedcompcoeffs ; |1639| 
L160:    
DW$L$_GeneralSettingstoSDCardFile$12$B:
	.dwpsn	"sdcard.c",1641,0
        MOVL      ACC,XAR4              ; |1642| 
        ADDU      ACC,AR6               ; |1642| 
        MOVL      XAR7,ACC              ; |1642| 
        MOV       AL,*+XAR7[0]          ; |1642| 
        LSR       AL,8                  ; |1642| 
        MOV       *+XAR5[AR0],AL        ; |1642| 
        ADDB      XAR6,#1               ; |1640| 
        MOV       AL,*+XAR7[0]          ; |1644| 
        ADDB      XAR0,#1               ; |1644| 
        ANDB      AL,#0xff              ; |1644| 
        MOV       *+XAR5[AR0],AL        ; |1644| 
        MOV       AL,AR2                ; |1640| 
        LSR       AL,15                 ; |1640| 
        ADD       AL,AR2                ; |1640| 
        ASR       AL,1                  ; |1640| 
        CMP       AL,AR6                ; |1640| 
        ADDB      XAR0,#1               ; |1645| 
	.dwpsn	"sdcard.c",1646,0
        BF        L160,HI               ; |1640| 
        ; branchcc occurs ; |1640| 
DW$L$_GeneralSettingstoSDCardFile$12$E:
        SETC      SXM
        MOV       ACC,AR2               ; |1647| 
        MOVL      XAR5,XAR1             ; |1647| 
        MOVL      XAR4,#_f_databuf      ; |1647| 
        MOVL      *-SP[2],ACC           ; |1647| 
        MOVL      XAR2,ACC              ; |1647| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |1647| 
        ; call occurs [#_fm_write] ; |1647| 
        MOVL      XAR6,ACC              ; |1647| 
        MOVL      ACC,XAR2              ; |1647| 
        CMPL      ACC,XAR6              ; |1647| 
        BF        L161,EQ               ; |1647| 
        ; branchcc occurs ; |1647| 
        MOVL      XAR4,XAR1
        LCR       #_fm_close            ; |1649| 
        ; call occurs [#_fm_close] ; |1649| 
        MOVB      AL,#27                ; |1650| 
        BF        L174,UNC              ; |1651| 
        ; branch occurs ; |1651| 
L161:    
        MOVB      XAR6,#0
        MOVL      XAR5,#_f_databuf      ; |1662| 
        MOVB      XAR0,#0
        MOVB      XAR2,#20              ; |1657| 
	.dwpsn	"sdcard.c",1660,0
        MOVL      XAR4,#_wiosettings    ; |1659| 
L162:    
DW$L$_GeneralSettingstoSDCardFile$16$B:
	.dwpsn	"sdcard.c",1661,0
        MOVL      ACC,XAR4              ; |1662| 
        ADDU      ACC,AR6               ; |1662| 
        MOVL      XAR7,ACC              ; |1662| 
        MOV       AL,*+XAR7[0]          ; |1662| 
        LSR       AL,8                  ; |1662| 
        MOV       *+XAR5[AR0],AL        ; |1662| 
        ADDB      XAR6,#1               ; |1660| 
        MOV       AL,*+XAR7[0]          ; |1664| 
        ADDB      XAR0,#1               ; |1664| 
        ANDB      AL,#0xff              ; |1664| 
        MOV       *+XAR5[AR0],AL        ; |1664| 
        MOV       AL,AR2                ; |1660| 
        LSR       AL,15                 ; |1660| 
        ADD       AL,AR2                ; |1660| 
        ASR       AL,1                  ; |1660| 
        CMP       AL,AR6                ; |1660| 
        ADDB      XAR0,#1               ; |1665| 
	.dwpsn	"sdcard.c",1666,0
        BF        L162,HI               ; |1660| 
        ; branchcc occurs ; |1660| 
DW$L$_GeneralSettingstoSDCardFile$16$E:
        SETC      SXM
        MOV       ACC,AR2               ; |1668| 
        MOVL      XAR5,XAR1             ; |1668| 
        MOVL      XAR4,#_f_databuf      ; |1668| 
        MOVL      *-SP[2],ACC           ; |1668| 
        MOVL      XAR2,ACC              ; |1668| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |1668| 
        ; call occurs [#_fm_write] ; |1668| 
        MOVL      XAR6,ACC              ; |1668| 
        MOVL      ACC,XAR2              ; |1668| 
        CMPL      ACC,XAR6              ; |1668| 
        BF        L163,EQ               ; |1668| 
        ; branchcc occurs ; |1668| 
        MOVL      XAR4,XAR1
        LCR       #_fm_close            ; |1670| 
        ; call occurs [#_fm_close] ; |1670| 
        MOVB      AL,#28                ; |1671| 
        BF        L174,UNC              ; |1672| 
        ; branch occurs ; |1672| 
L163:    
        MOVB      XAR6,#0
        MOVL      XAR5,#_f_databuf      ; |1682| 
        MOVB      XAR0,#0
        MOVB      XAR2,#48              ; |1677| 
	.dwpsn	"sdcard.c",1680,0
        MOVL      XAR4,#_config         ; |1679| 
L164:    
DW$L$_GeneralSettingstoSDCardFile$20$B:
	.dwpsn	"sdcard.c",1681,0
        MOVL      ACC,XAR4              ; |1682| 
        ADDU      ACC,AR6               ; |1682| 
        MOVL      XAR7,ACC              ; |1682| 
        MOV       AL,*+XAR7[0]          ; |1682| 
        LSR       AL,8                  ; |1682| 
        MOV       *+XAR5[AR0],AL        ; |1682| 
        ADDB      XAR6,#1               ; |1680| 
        MOV       AL,*+XAR7[0]          ; |1684| 
        ADDB      XAR0,#1               ; |1684| 
        ANDB      AL,#0xff              ; |1684| 
        MOV       *+XAR5[AR0],AL        ; |1684| 
        MOV       AL,AR2                ; |1680| 
        LSR       AL,15                 ; |1680| 
        ADD       AL,AR2                ; |1680| 
        ASR       AL,1                  ; |1680| 
        CMP       AL,AR6                ; |1680| 
        ADDB      XAR0,#1               ; |1685| 
	.dwpsn	"sdcard.c",1686,0
        BF        L164,HI               ; |1680| 
        ; branchcc occurs ; |1680| 
DW$L$_GeneralSettingstoSDCardFile$20$E:
        SETC      SXM
        MOV       ACC,AR2               ; |1688| 
        MOVL      XAR5,XAR1             ; |1688| 
        MOVL      XAR4,#_f_databuf      ; |1688| 
        MOVL      *-SP[2],ACC           ; |1688| 
        MOVL      XAR2,ACC              ; |1688| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |1688| 
        ; call occurs [#_fm_write] ; |1688| 
        MOVL      XAR6,ACC              ; |1688| 
        MOVL      ACC,XAR2              ; |1688| 
        CMPL      ACC,XAR6              ; |1688| 
        BF        L165,EQ               ; |1688| 
        ; branchcc occurs ; |1688| 
        MOVL      XAR4,XAR1
        LCR       #_fm_close            ; |1690| 
        ; call occurs [#_fm_close] ; |1690| 
        MOVB      AL,#29                ; |1691| 
        BF        L174,UNC              ; |1692| 
        ; branch occurs ; |1692| 
L165:    
        MOVB      XAR6,#0
        MOVL      XAR5,#_f_databuf      ; |1703| 
        MOVB      XAR0,#0
        MOVB      XAR2,#32              ; |1698| 
	.dwpsn	"sdcard.c",1701,0
        MOVL      XAR4,#_damagemon      ; |1700| 
L166:    
DW$L$_GeneralSettingstoSDCardFile$24$B:
	.dwpsn	"sdcard.c",1702,0
        MOVL      ACC,XAR4              ; |1703| 
        ADDU      ACC,AR6               ; |1703| 
        MOVL      XAR7,ACC              ; |1703| 
        MOV       AL,*+XAR7[0]          ; |1703| 
        LSR       AL,8                  ; |1703| 
        MOV       *+XAR5[AR0],AL        ; |1703| 
        ADDB      XAR6,#1               ; |1701| 
        MOV       AL,*+XAR7[0]          ; |1705| 
        ADDB      XAR0,#1               ; |1705| 
        ANDB      AL,#0xff              ; |1705| 
        MOV       *+XAR5[AR0],AL        ; |1705| 
        MOV       AL,AR2                ; |1701| 
        LSR       AL,15                 ; |1701| 
        ADD       AL,AR2                ; |1701| 
        ASR       AL,1                  ; |1701| 
        CMP       AL,AR6                ; |1701| 
        ADDB      XAR0,#1               ; |1706| 
	.dwpsn	"sdcard.c",1707,0
        BF        L166,HI               ; |1701| 
        ; branchcc occurs ; |1701| 
DW$L$_GeneralSettingstoSDCardFile$24$E:
        SETC      SXM
        MOV       ACC,AR2               ; |1709| 
        MOVL      XAR5,XAR1             ; |1709| 
        MOVL      XAR4,#_f_databuf      ; |1709| 
        MOVL      *-SP[2],ACC           ; |1709| 
        MOVL      XAR2,ACC              ; |1709| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |1709| 
        ; call occurs [#_fm_write] ; |1709| 
        MOVL      XAR6,ACC              ; |1709| 
        MOVL      ACC,XAR2              ; |1709| 
        CMPL      ACC,XAR6              ; |1709| 
        BF        L167,EQ               ; |1709| 
        ; branchcc occurs ; |1709| 
        MOVL      XAR4,XAR1
        LCR       #_fm_close            ; |1711| 
        ; call occurs [#_fm_close] ; |1711| 
        MOVB      AL,#49                ; |1712| 
        BF        L174,UNC              ; |1713| 
        ; branch occurs ; |1713| 
L167:    
        MOVB      XAR6,#0
        MOVL      XAR5,#_f_databuf      ; |1724| 
        MOVB      XAR0,#0
        MOVB      XAR2,#12              ; |1719| 
	.dwpsn	"sdcard.c",1722,0
        MOVL      XAR4,#_slemsettings   ; |1721| 
L168:    
DW$L$_GeneralSettingstoSDCardFile$28$B:
	.dwpsn	"sdcard.c",1723,0
        MOVL      ACC,XAR4              ; |1724| 
        ADDU      ACC,AR6               ; |1724| 
        MOVL      XAR7,ACC              ; |1724| 
        MOV       AL,*+XAR7[0]          ; |1724| 
        LSR       AL,8                  ; |1724| 
        MOV       *+XAR5[AR0],AL        ; |1724| 
        ADDB      XAR6,#1               ; |1722| 
        MOV       AL,*+XAR7[0]          ; |1726| 
        ADDB      XAR0,#1               ; |1726| 
        ANDB      AL,#0xff              ; |1726| 
        MOV       *+XAR5[AR0],AL        ; |1726| 
        MOV       AL,AR2                ; |1722| 
        LSR       AL,15                 ; |1722| 
        ADD       AL,AR2                ; |1722| 
        ASR       AL,1                  ; |1722| 
        CMP       AL,AR6                ; |1722| 
        ADDB      XAR0,#1               ; |1727| 
	.dwpsn	"sdcard.c",1728,0
        BF        L168,HI               ; |1722| 
        ; branchcc occurs ; |1722| 
DW$L$_GeneralSettingstoSDCardFile$28$E:
        SETC      SXM
        MOV       ACC,AR2               ; |1730| 
        MOVL      XAR5,XAR1             ; |1730| 
        MOVL      XAR4,#_f_databuf      ; |1730| 
        MOVL      *-SP[2],ACC           ; |1730| 
        MOVL      XAR2,ACC              ; |1730| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |1730| 
        ; call occurs [#_fm_write] ; |1730| 
        MOVL      XAR6,ACC              ; |1730| 
        MOVL      ACC,XAR2              ; |1730| 
        CMPL      ACC,XAR6              ; |1730| 
        BF        L173,NEQ              ; |1730| 
        ; branchcc occurs ; |1730| 
        MOVB      XAR6,#0
        MOVL      XAR5,#_f_databuf      ; |1746| 
        MOVB      XAR0,#0
        MOVB      XAR2,#30              ; |1741| 
	.dwpsn	"sdcard.c",1744,0
        MOVL      XAR4,#_dcmodechecks   ; |1743| 
L169:    
DW$L$_GeneralSettingstoSDCardFile$31$B:
	.dwpsn	"sdcard.c",1745,0
        MOVL      ACC,XAR4              ; |1746| 
        ADDU      ACC,AR6               ; |1746| 
        MOVL      XAR7,ACC              ; |1746| 
        MOV       AL,*+XAR7[0]          ; |1746| 
        LSR       AL,8                  ; |1746| 
        MOV       *+XAR5[AR0],AL        ; |1746| 
        ADDB      XAR6,#1               ; |1744| 
        MOV       AL,*+XAR7[0]          ; |1748| 
        ADDB      XAR0,#1               ; |1748| 
        ANDB      AL,#0xff              ; |1748| 
        MOV       *+XAR5[AR0],AL        ; |1748| 
        MOV       AL,AR2                ; |1744| 
        LSR       AL,15                 ; |1744| 
        ADD       AL,AR2                ; |1744| 
        ASR       AL,1                  ; |1744| 
        CMP       AL,AR6                ; |1744| 
        ADDB      XAR0,#1               ; |1749| 
	.dwpsn	"sdcard.c",1750,0
        BF        L169,HI               ; |1744| 
        ; branchcc occurs ; |1744| 
DW$L$_GeneralSettingstoSDCardFile$31$E:
        SETC      SXM
        MOV       ACC,AR2               ; |1752| 
        MOVL      XAR5,XAR1             ; |1752| 
        MOVL      XAR4,#_f_databuf      ; |1752| 
        MOVL      *-SP[2],ACC           ; |1752| 
        MOVL      XAR2,ACC              ; |1752| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |1752| 
        ; call occurs [#_fm_write] ; |1752| 
        MOVL      XAR6,ACC              ; |1752| 
        MOVL      ACC,XAR2              ; |1752| 
        CMPL      ACC,XAR6              ; |1752| 
        BF        L170,EQ               ; |1752| 
        ; branchcc occurs ; |1752| 
        MOVL      XAR4,XAR1
        LCR       #_fm_close            ; |1754| 
        ; call occurs [#_fm_close] ; |1754| 
        MOVB      AL,#53                ; |1755| 
        BF        L174,UNC              ; |1756| 
        ; branch occurs ; |1756| 
L170:    
        MOVB      XAR6,#0
        MOVL      XAR5,#_f_databuf      ; |1767| 
        MOVB      XAR0,#0
        MOVB      XAR2,#32              ; |1762| 
	.dwpsn	"sdcard.c",1765,0
        MOVL      XAR4,#_cppsettings    ; |1764| 
L171:    
DW$L$_GeneralSettingstoSDCardFile$35$B:
	.dwpsn	"sdcard.c",1766,0
        MOVL      ACC,XAR4              ; |1767| 
        ADDU      ACC,AR6               ; |1767| 
        MOVL      XAR7,ACC              ; |1767| 
        MOV       AL,*+XAR7[0]          ; |1767| 
        LSR       AL,8                  ; |1767| 
        MOV       *+XAR5[AR0],AL        ; |1767| 
        ADDB      XAR6,#1               ; |1765| 
        MOV       AL,*+XAR7[0]          ; |1769| 
        ADDB      XAR0,#1               ; |1769| 
        ANDB      AL,#0xff              ; |1769| 
        MOV       *+XAR5[AR0],AL        ; |1769| 
        MOV       AL,AR2                ; |1765| 
        LSR       AL,15                 ; |1765| 
        ADD       AL,AR2                ; |1765| 
        ASR       AL,1                  ; |1765| 
        CMP       AL,AR6                ; |1765| 
        ADDB      XAR0,#1               ; |1770| 
	.dwpsn	"sdcard.c",1771,0
        BF        L171,HI               ; |1765| 
        ; branchcc occurs ; |1765| 
DW$L$_GeneralSettingstoSDCardFile$35$E:
        SETC      SXM
        MOV       ACC,AR2               ; |1773| 
        MOVL      XAR5,XAR1             ; |1773| 
        MOVL      XAR4,#_f_databuf      ; |1773| 
        MOVL      *-SP[2],ACC           ; |1773| 
        MOVL      XAR2,ACC              ; |1773| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |1773| 
        ; call occurs [#_fm_write] ; |1773| 
        MOVL      XAR6,ACC              ; |1773| 
        MOVL      ACC,XAR2              ; |1773| 
        CMPL      ACC,XAR6              ; |1773| 
        BF        L173,NEQ              ; |1773| 
        ; branchcc occurs ; |1773| 
        MOVB      XAR6,#0
        MOVL      XAR5,#_f_databuf      ; |1787| 
        MOVB      XAR0,#0
        MOVB      XAR2,#4               ; |1782| 
	.dwpsn	"sdcard.c",1785,0
        MOVL      XAR4,#_sensorMoving   ; |1784| 
L172:    
DW$L$_GeneralSettingstoSDCardFile$38$B:
	.dwpsn	"sdcard.c",1786,0
        MOVL      ACC,XAR4              ; |1787| 
        ADDU      ACC,AR6               ; |1787| 
        MOVL      XAR7,ACC              ; |1787| 
        MOV       AL,*+XAR7[0]          ; |1787| 
        LSR       AL,8                  ; |1787| 
        MOV       *+XAR5[AR0],AL        ; |1787| 
        ADDB      XAR6,#1               ; |1785| 
        MOV       AL,*+XAR7[0]          ; |1789| 
        ADDB      XAR0,#1               ; |1789| 
        ANDB      AL,#0xff              ; |1789| 
        MOV       *+XAR5[AR0],AL        ; |1789| 
        MOV       AL,AR2                ; |1785| 
        LSR       AL,15                 ; |1785| 
        ADD       AL,AR2                ; |1785| 
        ASR       AL,1                  ; |1785| 
        CMP       AL,AR6                ; |1785| 
        ADDB      XAR0,#1               ; |1790| 
	.dwpsn	"sdcard.c",1791,0
        BF        L172,HI               ; |1785| 
        ; branchcc occurs ; |1785| 
DW$L$_GeneralSettingstoSDCardFile$38$E:
        SETC      SXM
        MOV       ACC,AR2               ; |1793| 
        MOVL      XAR5,XAR1             ; |1793| 
        MOVL      XAR4,#_f_databuf      ; |1793| 
        MOVL      *-SP[2],ACC           ; |1793| 
        MOVL      XAR2,ACC              ; |1793| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |1793| 
        ; call occurs [#_fm_write] ; |1793| 
        MOVL      XAR6,ACC              ; |1793| 
        MOVL      ACC,XAR2              ; |1793| 
        CMPL      ACC,XAR6              ; |1793| 
        BF        L176,EQ               ; |1793| 
        ; branchcc occurs ; |1793| 
L173:    
        MOVL      XAR4,XAR1
        LCR       #_fm_close            ; |1795| 
        ; call occurs [#_fm_close] ; |1795| 
        MOVB      AL,#50                ; |1796| 
L174:    
        LCR       #_SDcardError         ; |1796| 
        ; call occurs [#_SDcardError] ; |1796| 
L175:    
        MOV       AL,#-1                ; |1797| 
        BF        L178,UNC              ; |1797| 
        ; branch occurs ; |1797| 
L176:    
        MOVL      XAR4,XAR1
        LCR       #_fm_close            ; |1801| 
        ; call occurs [#_fm_close] ; |1801| 
L177:    
        MOVB      AL,#0
L178:    
        SUBB      SP,#2                 ; |1806| 
        MOVL      XAR2,*--SP            ; |1806| 
        MOVL      XAR1,*--SP            ; |1806| 
	.dwpsn	"sdcard.c",1807,1
        LRETR
        ; return occurs

DW$342	.dwtag  DW_TAG_loop
	.dwattr DW$342, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L172:1:1471518989")
	.dwattr DW$342, DW_AT_begin_file("sdcard.c")
	.dwattr DW$342, DW_AT_begin_line(0x6f9)
	.dwattr DW$342, DW_AT_end_line(0x6ff)
DW$343	.dwtag  DW_TAG_loop_range
	.dwattr DW$343, DW_AT_low_pc(DW$L$_GeneralSettingstoSDCardFile$38$B)
	.dwattr DW$343, DW_AT_high_pc(DW$L$_GeneralSettingstoSDCardFile$38$E)
	.dwendtag DW$342


DW$344	.dwtag  DW_TAG_loop
	.dwattr DW$344, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L171:1:1471518989")
	.dwattr DW$344, DW_AT_begin_file("sdcard.c")
	.dwattr DW$344, DW_AT_begin_line(0x6e5)
	.dwattr DW$344, DW_AT_end_line(0x6eb)
DW$345	.dwtag  DW_TAG_loop_range
	.dwattr DW$345, DW_AT_low_pc(DW$L$_GeneralSettingstoSDCardFile$35$B)
	.dwattr DW$345, DW_AT_high_pc(DW$L$_GeneralSettingstoSDCardFile$35$E)
	.dwendtag DW$344


DW$346	.dwtag  DW_TAG_loop
	.dwattr DW$346, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L169:1:1471518989")
	.dwattr DW$346, DW_AT_begin_file("sdcard.c")
	.dwattr DW$346, DW_AT_begin_line(0x6d0)
	.dwattr DW$346, DW_AT_end_line(0x6d6)
DW$347	.dwtag  DW_TAG_loop_range
	.dwattr DW$347, DW_AT_low_pc(DW$L$_GeneralSettingstoSDCardFile$31$B)
	.dwattr DW$347, DW_AT_high_pc(DW$L$_GeneralSettingstoSDCardFile$31$E)
	.dwendtag DW$346


DW$348	.dwtag  DW_TAG_loop
	.dwattr DW$348, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L168:1:1471518989")
	.dwattr DW$348, DW_AT_begin_file("sdcard.c")
	.dwattr DW$348, DW_AT_begin_line(0x6ba)
	.dwattr DW$348, DW_AT_end_line(0x6c0)
DW$349	.dwtag  DW_TAG_loop_range
	.dwattr DW$349, DW_AT_low_pc(DW$L$_GeneralSettingstoSDCardFile$28$B)
	.dwattr DW$349, DW_AT_high_pc(DW$L$_GeneralSettingstoSDCardFile$28$E)
	.dwendtag DW$348


DW$350	.dwtag  DW_TAG_loop
	.dwattr DW$350, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L166:1:1471518989")
	.dwattr DW$350, DW_AT_begin_file("sdcard.c")
	.dwattr DW$350, DW_AT_begin_line(0x6a5)
	.dwattr DW$350, DW_AT_end_line(0x6ab)
DW$351	.dwtag  DW_TAG_loop_range
	.dwattr DW$351, DW_AT_low_pc(DW$L$_GeneralSettingstoSDCardFile$24$B)
	.dwattr DW$351, DW_AT_high_pc(DW$L$_GeneralSettingstoSDCardFile$24$E)
	.dwendtag DW$350


DW$352	.dwtag  DW_TAG_loop
	.dwattr DW$352, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L164:1:1471518989")
	.dwattr DW$352, DW_AT_begin_file("sdcard.c")
	.dwattr DW$352, DW_AT_begin_line(0x690)
	.dwattr DW$352, DW_AT_end_line(0x696)
DW$353	.dwtag  DW_TAG_loop_range
	.dwattr DW$353, DW_AT_low_pc(DW$L$_GeneralSettingstoSDCardFile$20$B)
	.dwattr DW$353, DW_AT_high_pc(DW$L$_GeneralSettingstoSDCardFile$20$E)
	.dwendtag DW$352


DW$354	.dwtag  DW_TAG_loop
	.dwattr DW$354, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L162:1:1471518989")
	.dwattr DW$354, DW_AT_begin_file("sdcard.c")
	.dwattr DW$354, DW_AT_begin_line(0x67c)
	.dwattr DW$354, DW_AT_end_line(0x682)
DW$355	.dwtag  DW_TAG_loop_range
	.dwattr DW$355, DW_AT_low_pc(DW$L$_GeneralSettingstoSDCardFile$16$B)
	.dwattr DW$355, DW_AT_high_pc(DW$L$_GeneralSettingstoSDCardFile$16$E)
	.dwendtag DW$354


DW$356	.dwtag  DW_TAG_loop
	.dwattr DW$356, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L160:1:1471518989")
	.dwattr DW$356, DW_AT_begin_file("sdcard.c")
	.dwattr DW$356, DW_AT_begin_line(0x668)
	.dwattr DW$356, DW_AT_end_line(0x66e)
DW$357	.dwtag  DW_TAG_loop_range
	.dwattr DW$357, DW_AT_low_pc(DW$L$_GeneralSettingstoSDCardFile$12$B)
	.dwattr DW$357, DW_AT_high_pc(DW$L$_GeneralSettingstoSDCardFile$12$E)
	.dwendtag DW$356


DW$358	.dwtag  DW_TAG_loop
	.dwattr DW$358, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L158:1:1471518989")
	.dwattr DW$358, DW_AT_begin_file("sdcard.c")
	.dwattr DW$358, DW_AT_begin_line(0x654)
	.dwattr DW$358, DW_AT_end_line(0x65a)
DW$359	.dwtag  DW_TAG_loop_range
	.dwattr DW$359, DW_AT_low_pc(DW$L$_GeneralSettingstoSDCardFile$8$B)
	.dwattr DW$359, DW_AT_high_pc(DW$L$_GeneralSettingstoSDCardFile$8$E)
	.dwendtag DW$358

	.dwattr DW$341, DW_AT_end_file("sdcard.c")
	.dwattr DW$341, DW_AT_end_line(0x70f)
	.dwattr DW$341, DW_AT_end_column(0x01)
	.dwendtag DW$341

	.sect	".text"
	.global	_ReadGeneralSettingsfromSDCardFile

DW$360	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadGeneralSettingsfromSDCardFile"), DW_AT_symbol_name("_ReadGeneralSettingsfromSDCardFile")
	.dwattr DW$360, DW_AT_low_pc(_ReadGeneralSettingsfromSDCardFile)
	.dwattr DW$360, DW_AT_high_pc(0x00)
	.dwattr DW$360, DW_AT_begin_file("sdcard.c")
	.dwattr DW$360, DW_AT_begin_line(0x714)
	.dwattr DW$360, DW_AT_begin_column(0x05)
	.dwattr DW$360, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$360, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",1813,1

;***************************************************************
;* FNAME: _ReadGeneralSettingsfromSDCardFile FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_ReadGeneralSettingsfromSDCardFile:
        MOVL      *SP++,XAR1
        MOVW      DP,#_settings+7
        MOVL      *SP++,XAR2
        MOV       AL,@_settings+7       ; |1822| 
        ADDB      SP,#2
        BF        L202,NEQ              ; |1822| 
        ; branchcc occurs ; |1822| 
        MOVW      DP,#_sdsettings
        MOV       AL,@_sdsettings       ; |1822| 
        CMPB      AL,#1                 ; |1822| 
        BF        L202,NEQ              ; |1822| 
        ; branchcc occurs ; |1822| 
        MOVW      DP,#_settings+11
        MOV       AL,@_settings+11      ; |1822| 
        CMPB      AL,#1                 ; |1822| 
        BF        L202,EQ               ; |1822| 
        ; branchcc occurs ; |1822| 
        LCR       #_Fram1MagicNumberRead ; |1824| 
        ; call occurs [#_Fram1MagicNumberRead] ; |1824| 
        MOVZ      AR1,AL                ; |1824| 
        MOVL      XAR4,#_sdcarddir+27   ; |1825| 
        MOVB      AL,#25                ; |1825| 
        LCR       #_SDCardSetupDirectory ; |1825| 
        ; call occurs [#_SDCardSetupDirectory] ; |1825| 
        CMPB      AL,#0                 ; |1825| 
        BF        L179,EQ               ; |1825| 
        ; branchcc occurs ; |1825| 
        MOV       AL,#-1                ; |1825| 
        BF        L203,UNC              ; |1825| 
        ; branch occurs ; |1825| 
L179:    
        MOVL      XAR5,#FSL3            ; |1826| 
        MOVL      XAR4,#_settingsfile   ; |1826| 
        LCR       #_fm_open             ; |1826| 
        ; call occurs [#_fm_open] ; |1826| 
        MOVW      DP,#_fileregs+10
        MOVL      @_fileregs+10,XAR4    ; |1826| 
        MOVW      DP,#_fileregs+10
        MOVL      ACC,@_fileregs+10     ; |1830| 
        BF        L182,NEQ              ; |1830| 
        ; branchcc occurs ; |1830| 
        MOVL      XAR4,ACC              ; |2014| 
        LCR       #_fm_close            ; |2014| 
        ; call occurs [#_fm_close] ; |2014| 
        MOV       AL,AR1                ; |2014| 
        BF        L180,EQ               ; |2015| 
        ; branchcc occurs ; |2015| 
        LCR       #_SetupDefaultSettings ; |2022| 
        ; call occurs [#_SetupDefaultSettings] ; |2022| 
        BF        L181,UNC              ; |2023| 
        ; branch occurs ; |2023| 
L180:    
        LCR       #_GeneralSettingstoSDCardFile ; |2017| 
        ; call occurs [#_GeneralSettingstoSDCardFile] ; |2017| 
L181:    
        MOVW      DP,#_sdsettings+3
        AND       @_sdsettings+3,#0xfffe ; |2018| 
        BF        L202,UNC              ; |2019| 
        ; branch occurs ; |2019| 
L182:    
        MOVW      DP,#_fileregs+10
        MOVB      ACC,#90
        MOVL      XAR4,#_fileregs+12    ; |1837| 
        MOVL      XAR5,@_fileregs+10    ; |1837| 
        MOVL      *-SP[2],ACC           ; |1837| 
        MOVB      ACC,#1
        LCR       #_fm_read             ; |1837| 
        ; call occurs [#_fm_read] ; |1837| 
        MOVB      XAR1,#0
        MOVB      XAR2,#90              ; |1836| 
        MOVL      XAR4,#_allsensors     ; |1839| 
        MOVL      XAR5,#_fileregs+12    ; |1843| 
	.dwpsn	"sdcard.c",1841,0
        MOVB      XAR0,#0
L183:    
DW$L$_ReadGeneralSettingsfromSDCardFile$12$B:
	.dwpsn	"sdcard.c",1842,0
        MOV       ACC,*+XAR5[AR0] << #8 ; |1843| 
        ADDB      XAR0,#1               ; |1845| 
        MOV       AH,*+XAR5[AR0]        ; |1845| 
        ANDB      AH,#0xff              ; |1845| 
        ADD       AL,AH                 ; |1845| 
        MOV       *+XAR4[AR1],AL        ; |1847| 
        MOV       AL,AR2                ; |1841| 
        LSR       AL,15                 ; |1841| 
        ADD       AL,AR2                ; |1841| 
        ADDB      XAR1,#1               ; |1841| 
        ADDB      XAR0,#1               ; |1846| 
        ASR       AL,1                  ; |1841| 
        CMP       AL,AR1                ; |1841| 
	.dwpsn	"sdcard.c",1848,0
        BF        L183,HI               ; |1841| 
        ; branchcc occurs ; |1841| 
DW$L$_ReadGeneralSettingsfromSDCardFile$12$E:
        MOVW      DP,#_fileregs+10
        MOVB      ACC,#50
        MOVL      XAR4,#_fileregs+12    ; |1854| 
        MOVL      XAR5,@_fileregs+10    ; |1854| 
        MOVL      *-SP[2],ACC           ; |1854| 
        MOVB      ACC,#1
        LCR       #_fm_read             ; |1854| 
        ; call occurs [#_fm_read] ; |1854| 
        MOVB      XAR1,#0
        MOVB      XAR2,#50              ; |1853| 
        MOVL      XAR4,#_speedcompcoeffs ; |1856| 
        MOVL      XAR5,#_fileregs+12    ; |1860| 
	.dwpsn	"sdcard.c",1858,0
        MOVB      XAR0,#0
L184:    
DW$L$_ReadGeneralSettingsfromSDCardFile$14$B:
	.dwpsn	"sdcard.c",1859,0
        MOV       ACC,*+XAR5[AR0] << #8 ; |1860| 
        ADDB      XAR0,#1               ; |1862| 
        MOV       AH,*+XAR5[AR0]        ; |1862| 
        ANDB      AH,#0xff              ; |1862| 
        ADD       AL,AH                 ; |1862| 
        MOV       *+XAR4[AR1],AL        ; |1864| 
        MOV       AL,AR2                ; |1858| 
        LSR       AL,15                 ; |1858| 
        ADD       AL,AR2                ; |1858| 
        ADDB      XAR1,#1               ; |1858| 
        ADDB      XAR0,#1               ; |1863| 
        ASR       AL,1                  ; |1858| 
        CMP       AL,AR1                ; |1858| 
	.dwpsn	"sdcard.c",1865,0
        BF        L184,HI               ; |1858| 
        ; branchcc occurs ; |1858| 
DW$L$_ReadGeneralSettingsfromSDCardFile$14$E:
        MOVW      DP,#_fileregs+10
        MOVB      ACC,#20
        MOVL      XAR4,#_fileregs+12    ; |1871| 
        MOVL      XAR5,@_fileregs+10    ; |1871| 
        MOVL      *-SP[2],ACC           ; |1871| 
        MOVB      ACC,#1
        LCR       #_fm_read             ; |1871| 
        ; call occurs [#_fm_read] ; |1871| 
        MOVB      XAR1,#0
        MOVB      XAR2,#20              ; |1870| 
        MOVL      XAR4,#_wiosettings    ; |1873| 
        MOVL      XAR5,#_fileregs+12    ; |1877| 
	.dwpsn	"sdcard.c",1875,0
        MOVB      XAR0,#0
L185:    
DW$L$_ReadGeneralSettingsfromSDCardFile$16$B:
	.dwpsn	"sdcard.c",1876,0
        MOV       ACC,*+XAR5[AR0] << #8 ; |1877| 
        ADDB      XAR0,#1               ; |1879| 
        MOV       AH,*+XAR5[AR0]        ; |1879| 
        ANDB      AH,#0xff              ; |1879| 
        ADD       AL,AH                 ; |1879| 
        MOV       *+XAR4[AR1],AL        ; |1881| 
        MOV       AL,AR2                ; |1875| 
        LSR       AL,15                 ; |1875| 
        ADD       AL,AR2                ; |1875| 
        ADDB      XAR1,#1               ; |1875| 
        ADDB      XAR0,#1               ; |1880| 
        ASR       AL,1                  ; |1875| 
        CMP       AL,AR1                ; |1875| 
	.dwpsn	"sdcard.c",1882,0
        BF        L185,HI               ; |1875| 
        ; branchcc occurs ; |1875| 
DW$L$_ReadGeneralSettingsfromSDCardFile$16$E:
        MOVW      DP,#_fileregs+10
        MOVB      ACC,#48
        MOVL      XAR4,#_fileregs+12    ; |1888| 
        MOVL      XAR5,@_fileregs+10    ; |1888| 
        MOVL      *-SP[2],ACC           ; |1888| 
        MOVB      ACC,#1
        LCR       #_fm_read             ; |1888| 
        ; call occurs [#_fm_read] ; |1888| 
        MOVB      XAR1,#0
        MOVB      XAR2,#48              ; |1887| 
        MOVL      XAR4,#_config         ; |1890| 
        MOVL      XAR5,#_fileregs+12    ; |1894| 
	.dwpsn	"sdcard.c",1892,0
        MOVB      XAR0,#0
L186:    
DW$L$_ReadGeneralSettingsfromSDCardFile$18$B:
	.dwpsn	"sdcard.c",1893,0
        MOV       ACC,*+XAR5[AR0] << #8 ; |1894| 
        ADDB      XAR0,#1               ; |1896| 
        MOV       AH,*+XAR5[AR0]        ; |1896| 
        ANDB      AH,#0xff              ; |1896| 
        ADD       AL,AH                 ; |1896| 
        MOV       *+XAR4[AR1],AL        ; |1898| 
        MOV       AL,AR2                ; |1892| 
        LSR       AL,15                 ; |1892| 
        ADD       AL,AR2                ; |1892| 
        ADDB      XAR1,#1               ; |1892| 
        ADDB      XAR0,#1               ; |1897| 
        ASR       AL,1                  ; |1892| 
        CMP       AL,AR1                ; |1892| 
	.dwpsn	"sdcard.c",1899,0
        BF        L186,HI               ; |1892| 
        ; branchcc occurs ; |1892| 
DW$L$_ReadGeneralSettingsfromSDCardFile$18$E:
        MOVW      DP,#_fileregs+10
        MOVB      ACC,#32
        MOVL      XAR4,#_fileregs+12    ; |1905| 
        MOVL      XAR5,@_fileregs+10    ; |1905| 
        MOVL      *-SP[2],ACC           ; |1905| 
        MOVB      ACC,#1
        LCR       #_fm_read             ; |1905| 
        ; call occurs [#_fm_read] ; |1905| 
        MOVB      XAR2,#32              ; |1904| 
        CMPB      AL,#0                 ; |1905| 
        BF        L187,NEQ              ; |1905| 
        ; branchcc occurs ; |1905| 
        LCR       #_LoadDamagemonDefaults ; |1920| 
        ; call occurs [#_LoadDamagemonDefaults] ; |1920| 
        BF        L189,UNC              ; |1920| 
        ; branch occurs ; |1920| 
L187:    
        MOVB      XAR1,#0
        MOVL      XAR4,#_damagemon      ; |1909| 
        MOVL      XAR5,#_fileregs+12    ; |1913| 
	.dwpsn	"sdcard.c",1911,0
        MOVB      XAR0,#0
L188:    
DW$L$_ReadGeneralSettingsfromSDCardFile$22$B:
	.dwpsn	"sdcard.c",1912,0
        MOV       ACC,*+XAR5[AR0] << #8 ; |1913| 
        ADDB      XAR0,#1               ; |1915| 
        MOV       AH,*+XAR5[AR0]        ; |1915| 
        ANDB      AH,#0xff              ; |1915| 
        ADD       AL,AH                 ; |1915| 
        MOV       *+XAR4[AR1],AL        ; |1917| 
        MOV       AL,AR2                ; |1911| 
        LSR       AL,15                 ; |1911| 
        ADD       AL,AR2                ; |1911| 
        ADDB      XAR1,#1               ; |1911| 
        ADDB      XAR0,#1               ; |1916| 
        ASR       AL,1                  ; |1911| 
        CMP       AL,AR1                ; |1911| 
	.dwpsn	"sdcard.c",1918,0
        BF        L188,HI               ; |1911| 
        ; branchcc occurs ; |1911| 
DW$L$_ReadGeneralSettingsfromSDCardFile$22$E:
L189:    
        MOVW      DP,#_fileregs+10
        MOVB      ACC,#12
        MOVL      XAR4,#_fileregs+12    ; |1925| 
        MOVL      XAR5,@_fileregs+10    ; |1925| 
        MOVL      *-SP[2],ACC           ; |1925| 
        MOVB      ACC,#1
        LCR       #_fm_read             ; |1925| 
        ; call occurs [#_fm_read] ; |1925| 
        MOVB      XAR2,#12              ; |1924| 
        CMPB      AL,#0                 ; |1925| 
        BF        L190,NEQ              ; |1925| 
        ; branchcc occurs ; |1925| 
        LCR       #_LoadSLEMDefaults    ; |1940| 
        ; call occurs [#_LoadSLEMDefaults] ; |1940| 
        BF        L192,UNC              ; |1940| 
        ; branch occurs ; |1940| 
L190:    
        MOVB      XAR1,#0
        MOVL      XAR4,#_slemsettings   ; |1929| 
        MOVL      XAR5,#_fileregs+12    ; |1933| 
	.dwpsn	"sdcard.c",1931,0
        MOVB      XAR0,#0
L191:    
DW$L$_ReadGeneralSettingsfromSDCardFile$26$B:
	.dwpsn	"sdcard.c",1932,0
        MOV       ACC,*+XAR5[AR0] << #8 ; |1933| 
        ADDB      XAR0,#1               ; |1935| 
        MOV       AH,*+XAR5[AR0]        ; |1935| 
        ANDB      AH,#0xff              ; |1935| 
        ADD       AL,AH                 ; |1935| 
        MOV       *+XAR4[AR1],AL        ; |1937| 
        MOV       AL,AR2                ; |1931| 
        LSR       AL,15                 ; |1931| 
        ADD       AL,AR2                ; |1931| 
        ADDB      XAR1,#1               ; |1931| 
        ADDB      XAR0,#1               ; |1936| 
        ASR       AL,1                  ; |1931| 
        CMP       AL,AR1                ; |1931| 
	.dwpsn	"sdcard.c",1938,0
        BF        L191,HI               ; |1931| 
        ; branchcc occurs ; |1931| 
DW$L$_ReadGeneralSettingsfromSDCardFile$26$E:
L192:    
        MOVW      DP,#_fileregs+10
        MOVB      ACC,#30
        MOVL      XAR4,#_fileregs+12    ; |1948| 
        MOVL      XAR5,@_fileregs+10    ; |1948| 
        MOVL      *-SP[2],ACC           ; |1948| 
        MOVB      ACC,#1
        LCR       #_fm_read             ; |1948| 
        ; call occurs [#_fm_read] ; |1948| 
        MOVB      XAR2,#30              ; |1947| 
        CMPB      AL,#0                 ; |1948| 
        BF        L193,NEQ              ; |1948| 
        ; branchcc occurs ; |1948| 
        LCR       #_LoadDCModeChecksDefaults ; |1963| 
        ; call occurs [#_LoadDCModeChecksDefaults] ; |1963| 
        BF        L195,UNC              ; |1963| 
        ; branch occurs ; |1963| 
L193:    
        MOVB      XAR1,#0
        MOVL      XAR4,#_dcmodechecks   ; |1952| 
        MOVL      XAR5,#_fileregs+12    ; |1956| 
	.dwpsn	"sdcard.c",1954,0
        MOVB      XAR0,#0
L194:    
DW$L$_ReadGeneralSettingsfromSDCardFile$30$B:
	.dwpsn	"sdcard.c",1955,0
        MOV       ACC,*+XAR5[AR0] << #8 ; |1956| 
        ADDB      XAR0,#1               ; |1958| 
        MOV       AH,*+XAR5[AR0]        ; |1958| 
        ANDB      AH,#0xff              ; |1958| 
        ADD       AL,AH                 ; |1958| 
        MOV       *+XAR4[AR1],AL        ; |1960| 
        MOV       AL,AR2                ; |1954| 
        LSR       AL,15                 ; |1954| 
        ADD       AL,AR2                ; |1954| 
        ADDB      XAR1,#1               ; |1954| 
        ADDB      XAR0,#1               ; |1959| 
        ASR       AL,1                  ; |1954| 
        CMP       AL,AR1                ; |1954| 
	.dwpsn	"sdcard.c",1961,0
        BF        L194,HI               ; |1954| 
        ; branchcc occurs ; |1954| 
DW$L$_ReadGeneralSettingsfromSDCardFile$30$E:
L195:    
        MOVW      DP,#_fileregs+10
        MOVB      ACC,#32
        MOVL      XAR4,#_fileregs+12    ; |1969| 
        MOVL      XAR5,@_fileregs+10    ; |1969| 
        MOVL      *-SP[2],ACC           ; |1969| 
        MOVB      ACC,#1
        LCR       #_fm_read             ; |1969| 
        ; call occurs [#_fm_read] ; |1969| 
        MOVB      XAR2,#32              ; |1968| 
        CMPB      AL,#0                 ; |1969| 
        BF        L196,NEQ              ; |1969| 
        ; branchcc occurs ; |1969| 
        LCR       #_LoadCPPDefaults     ; |1984| 
        ; call occurs [#_LoadCPPDefaults] ; |1984| 
        BF        L198,UNC              ; |1984| 
        ; branch occurs ; |1984| 
L196:    
        MOVB      XAR1,#0
        MOVL      XAR4,#_cppsettings    ; |1973| 
        MOVL      XAR5,#_fileregs+12    ; |1977| 
	.dwpsn	"sdcard.c",1975,0
        MOVB      XAR0,#0
L197:    
DW$L$_ReadGeneralSettingsfromSDCardFile$34$B:
	.dwpsn	"sdcard.c",1976,0
        MOV       ACC,*+XAR5[AR0] << #8 ; |1977| 
        ADDB      XAR0,#1               ; |1979| 
        MOV       AH,*+XAR5[AR0]        ; |1979| 
        ANDB      AH,#0xff              ; |1979| 
        ADD       AL,AH                 ; |1979| 
        MOV       *+XAR4[AR1],AL        ; |1981| 
        MOV       AL,AR2                ; |1975| 
        LSR       AL,15                 ; |1975| 
        ADD       AL,AR2                ; |1975| 
        ADDB      XAR1,#1               ; |1975| 
        ADDB      XAR0,#1               ; |1980| 
        ASR       AL,1                  ; |1975| 
        CMP       AL,AR1                ; |1975| 
	.dwpsn	"sdcard.c",1982,0
        BF        L197,HI               ; |1975| 
        ; branchcc occurs ; |1975| 
DW$L$_ReadGeneralSettingsfromSDCardFile$34$E:
L198:    
        MOVW      DP,#_fileregs+10
        MOVB      ACC,#4
        MOVL      XAR4,#_fileregs+12    ; |1989| 
        MOVL      XAR5,@_fileregs+10    ; |1989| 
        MOVL      *-SP[2],ACC           ; |1989| 
        MOVB      ACC,#1
        LCR       #_fm_read             ; |1989| 
        ; call occurs [#_fm_read] ; |1989| 
        MOVB      XAR2,#4               ; |1988| 
        CMPB      AL,#0                 ; |1989| 
        BF        L199,NEQ              ; |1989| 
        ; branchcc occurs ; |1989| 
        LCR       #_LoadSensorDefaults  ; |2004| 
        ; call occurs [#_LoadSensorDefaults] ; |2004| 
        BF        L201,UNC              ; |2004| 
        ; branch occurs ; |2004| 
L199:    
        MOVB      XAR1,#0
        MOVL      XAR4,#_sensorMoving   ; |1993| 
        MOVL      XAR5,#_fileregs+12    ; |1997| 
	.dwpsn	"sdcard.c",1995,0
        MOVB      XAR0,#0
L200:    
DW$L$_ReadGeneralSettingsfromSDCardFile$38$B:
	.dwpsn	"sdcard.c",1996,0
        MOV       ACC,*+XAR5[AR0] << #8 ; |1997| 
        ADDB      XAR0,#1               ; |1999| 
        MOV       AH,*+XAR5[AR0]        ; |1999| 
        ANDB      AH,#0xff              ; |1999| 
        ADD       AL,AH                 ; |1999| 
        MOV       *+XAR4[AR1],AL        ; |2001| 
        MOV       AL,AR2                ; |1995| 
        LSR       AL,15                 ; |1995| 
        ADD       AL,AR2                ; |1995| 
        ADDB      XAR1,#1               ; |1995| 
        ADDB      XAR0,#1               ; |2000| 
        ASR       AL,1                  ; |1995| 
        CMP       AL,AR1                ; |1995| 
	.dwpsn	"sdcard.c",2002,0
        BF        L200,HI               ; |1995| 
        ; branchcc occurs ; |1995| 
DW$L$_ReadGeneralSettingsfromSDCardFile$38$E:
L201:    
        LCR       #_ConfigCheckVal      ; |2006| 
        ; call occurs [#_ConfigCheckVal] ; |2006| 
        MOVW      DP,#_fileregs+10
        MOVL      XAR4,@_fileregs+10    ; |2009| 
        LCR       #_fm_close            ; |2009| 
        ; call occurs [#_fm_close] ; |2009| 
        MOVW      DP,#_sdsettings+3
        OR        @_sdsettings+3,#0x0001 ; |2010| 
L202:    
        MOVB      AL,#0
L203:    
        SUBB      SP,#2                 ; |2030| 
        MOVL      XAR2,*--SP            ; |2030| 
        MOVL      XAR1,*--SP            ; |2030| 
	.dwpsn	"sdcard.c",2031,1
        LRETR
        ; return occurs

DW$361	.dwtag  DW_TAG_loop
	.dwattr DW$361, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L200:1:1471518989")
	.dwattr DW$361, DW_AT_begin_file("sdcard.c")
	.dwattr DW$361, DW_AT_begin_line(0x7cb)
	.dwattr DW$361, DW_AT_end_line(0x7d2)
DW$362	.dwtag  DW_TAG_loop_range
	.dwattr DW$362, DW_AT_low_pc(DW$L$_ReadGeneralSettingsfromSDCardFile$38$B)
	.dwattr DW$362, DW_AT_high_pc(DW$L$_ReadGeneralSettingsfromSDCardFile$38$E)
	.dwendtag DW$361


DW$363	.dwtag  DW_TAG_loop
	.dwattr DW$363, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L197:1:1471518989")
	.dwattr DW$363, DW_AT_begin_file("sdcard.c")
	.dwattr DW$363, DW_AT_begin_line(0x7b7)
	.dwattr DW$363, DW_AT_end_line(0x7be)
DW$364	.dwtag  DW_TAG_loop_range
	.dwattr DW$364, DW_AT_low_pc(DW$L$_ReadGeneralSettingsfromSDCardFile$34$B)
	.dwattr DW$364, DW_AT_high_pc(DW$L$_ReadGeneralSettingsfromSDCardFile$34$E)
	.dwendtag DW$363


DW$365	.dwtag  DW_TAG_loop
	.dwattr DW$365, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L194:1:1471518989")
	.dwattr DW$365, DW_AT_begin_file("sdcard.c")
	.dwattr DW$365, DW_AT_begin_line(0x7a2)
	.dwattr DW$365, DW_AT_end_line(0x7a9)
DW$366	.dwtag  DW_TAG_loop_range
	.dwattr DW$366, DW_AT_low_pc(DW$L$_ReadGeneralSettingsfromSDCardFile$30$B)
	.dwattr DW$366, DW_AT_high_pc(DW$L$_ReadGeneralSettingsfromSDCardFile$30$E)
	.dwendtag DW$365


DW$367	.dwtag  DW_TAG_loop
	.dwattr DW$367, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L191:1:1471518989")
	.dwattr DW$367, DW_AT_begin_file("sdcard.c")
	.dwattr DW$367, DW_AT_begin_line(0x78b)
	.dwattr DW$367, DW_AT_end_line(0x792)
DW$368	.dwtag  DW_TAG_loop_range
	.dwattr DW$368, DW_AT_low_pc(DW$L$_ReadGeneralSettingsfromSDCardFile$26$B)
	.dwattr DW$368, DW_AT_high_pc(DW$L$_ReadGeneralSettingsfromSDCardFile$26$E)
	.dwendtag DW$367


DW$369	.dwtag  DW_TAG_loop
	.dwattr DW$369, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L188:1:1471518989")
	.dwattr DW$369, DW_AT_begin_file("sdcard.c")
	.dwattr DW$369, DW_AT_begin_line(0x777)
	.dwattr DW$369, DW_AT_end_line(0x77e)
DW$370	.dwtag  DW_TAG_loop_range
	.dwattr DW$370, DW_AT_low_pc(DW$L$_ReadGeneralSettingsfromSDCardFile$22$B)
	.dwattr DW$370, DW_AT_high_pc(DW$L$_ReadGeneralSettingsfromSDCardFile$22$E)
	.dwendtag DW$369


DW$371	.dwtag  DW_TAG_loop
	.dwattr DW$371, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L186:1:1471518989")
	.dwattr DW$371, DW_AT_begin_file("sdcard.c")
	.dwattr DW$371, DW_AT_begin_line(0x764)
	.dwattr DW$371, DW_AT_end_line(0x76b)
DW$372	.dwtag  DW_TAG_loop_range
	.dwattr DW$372, DW_AT_low_pc(DW$L$_ReadGeneralSettingsfromSDCardFile$18$B)
	.dwattr DW$372, DW_AT_high_pc(DW$L$_ReadGeneralSettingsfromSDCardFile$18$E)
	.dwendtag DW$371


DW$373	.dwtag  DW_TAG_loop
	.dwattr DW$373, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L185:1:1471518989")
	.dwattr DW$373, DW_AT_begin_file("sdcard.c")
	.dwattr DW$373, DW_AT_begin_line(0x753)
	.dwattr DW$373, DW_AT_end_line(0x75a)
DW$374	.dwtag  DW_TAG_loop_range
	.dwattr DW$374, DW_AT_low_pc(DW$L$_ReadGeneralSettingsfromSDCardFile$16$B)
	.dwattr DW$374, DW_AT_high_pc(DW$L$_ReadGeneralSettingsfromSDCardFile$16$E)
	.dwendtag DW$373


DW$375	.dwtag  DW_TAG_loop
	.dwattr DW$375, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L184:1:1471518989")
	.dwattr DW$375, DW_AT_begin_file("sdcard.c")
	.dwattr DW$375, DW_AT_begin_line(0x742)
	.dwattr DW$375, DW_AT_end_line(0x749)
DW$376	.dwtag  DW_TAG_loop_range
	.dwattr DW$376, DW_AT_low_pc(DW$L$_ReadGeneralSettingsfromSDCardFile$14$B)
	.dwattr DW$376, DW_AT_high_pc(DW$L$_ReadGeneralSettingsfromSDCardFile$14$E)
	.dwendtag DW$375


DW$377	.dwtag  DW_TAG_loop
	.dwattr DW$377, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L183:1:1471518989")
	.dwattr DW$377, DW_AT_begin_file("sdcard.c")
	.dwattr DW$377, DW_AT_begin_line(0x731)
	.dwattr DW$377, DW_AT_end_line(0x738)
DW$378	.dwtag  DW_TAG_loop_range
	.dwattr DW$378, DW_AT_low_pc(DW$L$_ReadGeneralSettingsfromSDCardFile$12$B)
	.dwattr DW$378, DW_AT_high_pc(DW$L$_ReadGeneralSettingsfromSDCardFile$12$E)
	.dwendtag DW$377

	.dwattr DW$360, DW_AT_end_file("sdcard.c")
	.dwattr DW$360, DW_AT_end_line(0x7ef)
	.dwattr DW$360, DW_AT_end_column(0x01)
	.dwendtag DW$360

	.sect	".text"
	.global	_OffsetstoSDCardFile

DW$379	.dwtag  DW_TAG_subprogram, DW_AT_name("OffsetstoSDCardFile"), DW_AT_symbol_name("_OffsetstoSDCardFile")
	.dwattr DW$379, DW_AT_low_pc(_OffsetstoSDCardFile)
	.dwattr DW$379, DW_AT_high_pc(0x00)
	.dwattr DW$379, DW_AT_begin_file("sdcard.c")
	.dwattr DW$379, DW_AT_begin_line(0x7f5)
	.dwattr DW$379, DW_AT_begin_column(0x05)
	.dwattr DW$379, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$379, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",2038,1

;***************************************************************
;* FNAME: _OffsetstoSDCardFile          FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_OffsetstoSDCardFile:
        MOVL      *SP++,XAR1
        MOVW      DP,#_settings+7
        MOVL      *SP++,XAR2
        MOV       AL,@_settings+7       ; |2046| 
        ADDB      SP,#2
        BF        L210,NEQ              ; |2046| 
        ; branchcc occurs ; |2046| 
        MOVW      DP,#_sdsettings
        MOV       AL,@_sdsettings       ; |2046| 
        CMPB      AL,#1                 ; |2046| 
        BF        L210,NEQ              ; |2046| 
        ; branchcc occurs ; |2046| 
        MOVW      DP,#_settings+11
        MOV       AL,@_settings+11      ; |2046| 
        CMPB      AL,#1                 ; |2046| 
        BF        L210,EQ               ; |2046| 
        ; branchcc occurs ; |2046| 
        MOVL      XAR4,#FSL20           ; |2048| 
        LCR       #_DebugStringOut      ; |2048| 
        ; call occurs [#_DebugStringOut] ; |2048| 
        MOVB      AL,#26                ; |2049| 
        MOVL      XAR4,#_sdcarddir+27   ; |2049| 
        LCR       #_SDCardSetupDirectory ; |2049| 
        ; call occurs [#_SDCardSetupDirectory] ; |2049| 
        CMPB      AL,#0                 ; |2049| 
        BF        L208,NEQ              ; |2049| 
        ; branchcc occurs ; |2049| 
        LCR       #_CreateNewOffsetsFile ; |2050| 
        ; call occurs [#_CreateNewOffsetsFile] ; |2050| 
        MOVL      XAR5,#FSL18           ; |2053| 
        MOVL      XAR4,#_offsetsfile    ; |2053| 
        LCR       #_fm_open             ; |2053| 
        ; call occurs [#_fm_open] ; |2053| 
        MOVL      ACC,XAR4              ; |2053| 
        MOVL      XAR1,XAR4             ; |2053| 
        BF        L204,NEQ              ; |2053| 
        ; branchcc occurs ; |2053| 
        MOVL      XAR4,XAR1
        LCR       #_fm_close            ; |2056| 
        ; call occurs [#_fm_close] ; |2056| 
        MOVB      AL,#30                ; |2057| 
        BF        L207,UNC              ; |2058| 
        ; branch occurs ; |2058| 
L204:    
        MOVL      XAR5,#_offsetA        ; |2067| 
	.dwpsn	"sdcard.c",2068,0
        MOVB      XAR2,#0
L205:    
DW$L$_OffsetstoSDCardFile$8$B:
	.dwpsn	"sdcard.c",2069,0
        MOVB      XAR6,#0
        MOVL      XAR4,#_f_databuf      ; |2073| 
	.dwpsn	"sdcard.c",2071,0
        MOVB      XAR0,#0
DW$L$_OffsetstoSDCardFile$8$E:
L206:    
DW$L$_OffsetstoSDCardFile$9$B:
	.dwpsn	"sdcard.c",2072,0
        MOVL      ACC,XAR5              ; |2073| 
        ADDU      ACC,AR6               ; |2073| 
        MOVL      XAR7,ACC              ; |2073| 
        MOV       AL,*+XAR7[0]          ; |2073| 
        LSR       AL,8                  ; |2073| 
        MOV       *+XAR4[AR0],AL        ; |2073| 
        ADDB      XAR6,#1               ; |2071| 
        MOV       AL,*+XAR7[0]          ; |2075| 
        ADDB      XAR0,#1               ; |2075| 
        ANDB      AL,#0xff              ; |2075| 
        MOV       *+XAR4[AR0],AL        ; |2075| 
        MOV       AL,AR6                ; |2071| 
        CMPB      AL,#28                ; |2071| 
        ADDB      XAR0,#1               ; |2076| 
	.dwpsn	"sdcard.c",2079,0
        BF        L206,LO               ; |2071| 
        ; branchcc occurs ; |2071| 
DW$L$_OffsetstoSDCardFile$9$E:
DW$L$_OffsetstoSDCardFile$10$B:
        MOVB      ACC,#56
        MOVL      XAR5,XAR1             ; |2081| 
        MOVL      *-SP[2],ACC           ; |2081| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |2081| 
        ; call occurs [#_fm_write] ; |2081| 
        MOVL      XAR6,ACC              ; |2081| 
        MOVB      ACC,#56
        CMPL      ACC,XAR6              ; |2081| 
        BF        L209,EQ               ; |2081| 
        ; branchcc occurs ; |2081| 
DW$L$_OffsetstoSDCardFile$10$E:
        MOVL      XAR4,XAR1
        LCR       #_fm_close            ; |2083| 
        ; call occurs [#_fm_close] ; |2083| 
        MOVB      AL,#31                ; |2084| 
L207:    
        LCR       #_SDcardError         ; |2084| 
        ; call occurs [#_SDcardError] ; |2084| 
L208:    
        MOV       AL,#-1                ; |2085| 
        BF        L211,UNC              ; |2085| 
        ; branch occurs ; |2085| 
L209:    
DW$L$_OffsetstoSDCardFile$14$B:
        ADDB      XAR2,#1               ; |2068| 
        MOV       AL,AR2                ; |2068| 
        MOVL      XAR5,#_offsetB        ; |2088| 
        CMPB      AL,#2                 ; |2068| 
	.dwpsn	"sdcard.c",2089,0
        BF        L205,LO               ; |2068| 
        ; branchcc occurs ; |2068| 
DW$L$_OffsetstoSDCardFile$14$E:
        MOVL      XAR4,XAR1
        LCR       #_fm_close            ; |2092| 
        ; call occurs [#_fm_close] ; |2092| 
L210:    
        MOVB      AL,#0
L211:    
        SUBB      SP,#2                 ; |2097| 
        MOVL      XAR2,*--SP            ; |2097| 
        MOVL      XAR1,*--SP            ; |2097| 
	.dwpsn	"sdcard.c",2098,1
        LRETR
        ; return occurs

DW$380	.dwtag  DW_TAG_loop
	.dwattr DW$380, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L205:1:1471518989")
	.dwattr DW$380, DW_AT_begin_file("sdcard.c")
	.dwattr DW$380, DW_AT_begin_line(0x814)
	.dwattr DW$380, DW_AT_end_line(0x829)
DW$381	.dwtag  DW_TAG_loop_range
	.dwattr DW$381, DW_AT_low_pc(DW$L$_OffsetstoSDCardFile$8$B)
	.dwattr DW$381, DW_AT_high_pc(DW$L$_OffsetstoSDCardFile$8$E)
DW$382	.dwtag  DW_TAG_loop_range
	.dwattr DW$382, DW_AT_low_pc(DW$L$_OffsetstoSDCardFile$10$B)
	.dwattr DW$382, DW_AT_high_pc(DW$L$_OffsetstoSDCardFile$10$E)
DW$383	.dwtag  DW_TAG_loop_range
	.dwattr DW$383, DW_AT_low_pc(DW$L$_OffsetstoSDCardFile$14$B)
	.dwattr DW$383, DW_AT_high_pc(DW$L$_OffsetstoSDCardFile$14$E)

DW$384	.dwtag  DW_TAG_loop
	.dwattr DW$384, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L206:2:1471518989")
	.dwattr DW$384, DW_AT_begin_file("sdcard.c")
	.dwattr DW$384, DW_AT_begin_line(0x817)
	.dwattr DW$384, DW_AT_end_line(0x81f)
DW$385	.dwtag  DW_TAG_loop_range
	.dwattr DW$385, DW_AT_low_pc(DW$L$_OffsetstoSDCardFile$9$B)
	.dwattr DW$385, DW_AT_high_pc(DW$L$_OffsetstoSDCardFile$9$E)
	.dwendtag DW$384

	.dwendtag DW$380

	.dwattr DW$379, DW_AT_end_file("sdcard.c")
	.dwattr DW$379, DW_AT_end_line(0x832)
	.dwattr DW$379, DW_AT_end_column(0x01)
	.dwendtag DW$379

	.sect	".text"
	.global	_ReadOffsetsfromSDCardFile

DW$386	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadOffsetsfromSDCardFile"), DW_AT_symbol_name("_ReadOffsetsfromSDCardFile")
	.dwattr DW$386, DW_AT_low_pc(_ReadOffsetsfromSDCardFile)
	.dwattr DW$386, DW_AT_high_pc(0x00)
	.dwattr DW$386, DW_AT_begin_file("sdcard.c")
	.dwattr DW$386, DW_AT_begin_line(0x838)
	.dwattr DW$386, DW_AT_begin_column(0x05)
	.dwattr DW$386, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$386, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",2105,1

;***************************************************************
;* FNAME: _ReadOffsetsfromSDCardFile    FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_ReadOffsetsfromSDCardFile:
        MOVL      *SP++,XAR1
        MOVW      DP,#_settings+7
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOV       AL,@_settings+7       ; |2114| 
        ADDB      SP,#2
        BF        L218,NEQ              ; |2114| 
        ; branchcc occurs ; |2114| 
        MOVW      DP,#_sdsettings
        MOV       AL,@_sdsettings       ; |2114| 
        CMPB      AL,#1                 ; |2114| 
        BF        L218,NEQ              ; |2114| 
        ; branchcc occurs ; |2114| 
        MOVW      DP,#_settings+11
        MOV       AL,@_settings+11      ; |2114| 
        CMPB      AL,#1                 ; |2114| 
        BF        L218,EQ               ; |2114| 
        ; branchcc occurs ; |2114| 
        LCR       #_Fram1MagicNumberRead ; |2116| 
        ; call occurs [#_Fram1MagicNumberRead] ; |2116| 
        MOVZ      AR1,AL                ; |2116| 
        MOVL      XAR4,#_sdcarddir+27   ; |2117| 
        MOVB      AL,#27                ; |2117| 
        LCR       #_SDCardSetupDirectory ; |2117| 
        ; call occurs [#_SDCardSetupDirectory] ; |2117| 
        CMPB      AL,#0                 ; |2117| 
        BF        L212,EQ               ; |2117| 
        ; branchcc occurs ; |2117| 
        MOV       AL,#-1                ; |2117| 
        BF        L219,UNC              ; |2117| 
        ; branch occurs ; |2117| 
L212:    
        MOVL      XAR5,#FSL3            ; |2118| 
        MOVL      XAR4,#_offsetsfile    ; |2118| 
        LCR       #_fm_open             ; |2118| 
        ; call occurs [#_fm_open] ; |2118| 
        MOVW      DP,#_fileregs+10
        MOVL      @_fileregs+10,XAR4    ; |2118| 
        MOVW      DP,#_fileregs+10
        MOVL      ACC,@_fileregs+10     ; |2121| 
        BF        L215,NEQ              ; |2121| 
        ; branchcc occurs ; |2121| 
        MOVL      XAR4,ACC              ; |2150| 
        LCR       #_fm_close            ; |2150| 
        ; call occurs [#_fm_close] ; |2150| 
        MOV       AL,AR1                ; |2150| 
        BF        L213,EQ               ; |2151| 
        ; branchcc occurs ; |2151| 
        LCR       #_SetupOffsetDefaults ; |2158| 
        ; call occurs [#_SetupOffsetDefaults] ; |2158| 
        BF        L214,UNC              ; |2159| 
        ; branch occurs ; |2159| 
L213:    
        LCR       #_OffsetstoSDCardFile ; |2153| 
        ; call occurs [#_OffsetstoSDCardFile] ; |2153| 
L214:    
        MOVW      DP,#_sdsettings+3
        AND       @_sdsettings+3,#0xfffb ; |2154| 
        BF        L218,UNC              ; |2155| 
        ; branch occurs ; |2155| 
L215:    
        MOVB      XAR2,#0
	.dwpsn	"sdcard.c",2127,0
        MOVL      XAR3,#_offsetA        ; |2126| 
L216:    
DW$L$_ReadOffsetsfromSDCardFile$12$B:
	.dwpsn	"sdcard.c",2128,0
        MOVW      DP,#_fileregs+10
        MOVB      ACC,#56
        MOVL      XAR4,#_fileregs+12    ; |2129| 
        MOVL      XAR5,@_fileregs+10    ; |2129| 
        MOVL      *-SP[2],ACC           ; |2129| 
        MOVB      ACC,#1
        LCR       #_fm_read             ; |2129| 
        ; call occurs [#_fm_read] ; |2129| 
        MOVB      XAR1,#0
        MOVL      XAR4,#_fileregs+12    ; |2133| 
	.dwpsn	"sdcard.c",2131,0
        MOVB      XAR0,#0
DW$L$_ReadOffsetsfromSDCardFile$12$E:
L217:    
DW$L$_ReadOffsetsfromSDCardFile$13$B:
	.dwpsn	"sdcard.c",2132,0
        MOV       ACC,*+XAR4[AR0] << #8 ; |2133| 
        ADDB      XAR0,#1               ; |2135| 
        MOV       AH,*+XAR4[AR0]        ; |2135| 
        ANDB      AH,#0xff              ; |2135| 
        ADD       AL,AH                 ; |2135| 
        MOV       *+XAR3[AR1],AL        ; |2137| 
        ADDB      XAR1,#1               ; |2131| 
        ADDB      XAR0,#1               ; |2136| 
        MOV       AL,AR1                ; |2131| 
        CMPB      AL,#28                ; |2131| 
	.dwpsn	"sdcard.c",2140,0
        BF        L217,LO               ; |2131| 
        ; branchcc occurs ; |2131| 
DW$L$_ReadOffsetsfromSDCardFile$13$E:
DW$L$_ReadOffsetsfromSDCardFile$14$B:
        ADDB      XAR2,#1               ; |2127| 
        MOV       AL,AR2                ; |2127| 
        MOVL      XAR3,#_offsetB        ; |2141| 
        CMPB      AL,#2                 ; |2127| 
	.dwpsn	"sdcard.c",2142,0
        BF        L216,LO               ; |2127| 
        ; branchcc occurs ; |2127| 
DW$L$_ReadOffsetsfromSDCardFile$14$E:
        MOVW      DP,#_fileregs+10
        MOVL      XAR4,@_fileregs+10    ; |2145| 
        LCR       #_fm_close            ; |2145| 
        ; call occurs [#_fm_close] ; |2145| 
        MOVW      DP,#_sdsettings+3
        OR        @_sdsettings+3,#0x0004 ; |2146| 
L218:    
        MOVB      AL,#0
L219:    
        SUBB      SP,#2                 ; |2166| 
        MOVL      XAR3,*--SP            ; |2166| 
        MOVL      XAR2,*--SP            ; |2166| 
        MOVL      XAR1,*--SP            ; |2166| 
	.dwpsn	"sdcard.c",2167,1
        LRETR
        ; return occurs

DW$387	.dwtag  DW_TAG_loop
	.dwattr DW$387, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L216:1:1471518989")
	.dwattr DW$387, DW_AT_begin_file("sdcard.c")
	.dwattr DW$387, DW_AT_begin_line(0x84f)
	.dwattr DW$387, DW_AT_end_line(0x85e)
DW$388	.dwtag  DW_TAG_loop_range
	.dwattr DW$388, DW_AT_low_pc(DW$L$_ReadOffsetsfromSDCardFile$12$B)
	.dwattr DW$388, DW_AT_high_pc(DW$L$_ReadOffsetsfromSDCardFile$12$E)
DW$389	.dwtag  DW_TAG_loop_range
	.dwattr DW$389, DW_AT_low_pc(DW$L$_ReadOffsetsfromSDCardFile$14$B)
	.dwattr DW$389, DW_AT_high_pc(DW$L$_ReadOffsetsfromSDCardFile$14$E)

DW$390	.dwtag  DW_TAG_loop
	.dwattr DW$390, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L217:2:1471518989")
	.dwattr DW$390, DW_AT_begin_file("sdcard.c")
	.dwattr DW$390, DW_AT_begin_line(0x853)
	.dwattr DW$390, DW_AT_end_line(0x85c)
DW$391	.dwtag  DW_TAG_loop_range
	.dwattr DW$391, DW_AT_low_pc(DW$L$_ReadOffsetsfromSDCardFile$13$B)
	.dwattr DW$391, DW_AT_high_pc(DW$L$_ReadOffsetsfromSDCardFile$13$E)
	.dwendtag DW$390

	.dwendtag DW$387

	.dwattr DW$386, DW_AT_end_file("sdcard.c")
	.dwattr DW$386, DW_AT_end_line(0x877)
	.dwattr DW$386, DW_AT_end_column(0x01)
	.dwendtag DW$386

	.sect	".text"
	.global	_ClearManCompSequence

DW$392	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearManCompSequence"), DW_AT_symbol_name("_ClearManCompSequence")
	.dwattr DW$392, DW_AT_low_pc(_ClearManCompSequence)
	.dwattr DW$392, DW_AT_high_pc(0x00)
	.dwattr DW$392, DW_AT_begin_file("sdcard.c")
	.dwattr DW$392, DW_AT_begin_line(0x87c)
	.dwattr DW$392, DW_AT_begin_column(0x06)
	.dwattr DW$392, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$392, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",2173,1

;***************************************************************
;* FNAME: _ClearManCompSequence         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ClearManCompSequence:
        MOVW      DP,#_sdsettings+1
        MOV       @_sdsettings+1,#0     ; |2174| 
        LCR       #_SaveSDSettings      ; |2175| 
        ; call occurs [#_SaveSDSettings] ; |2175| 
	.dwpsn	"sdcard.c",2176,1
        LRETR
        ; return occurs
	.dwattr DW$392, DW_AT_end_file("sdcard.c")
	.dwattr DW$392, DW_AT_end_line(0x880)
	.dwattr DW$392, DW_AT_end_column(0x01)
	.dwendtag DW$392

	.sect	".text"
	.global	_MANCompTabletoSDCardFile

DW$393	.dwtag  DW_TAG_subprogram, DW_AT_name("MANCompTabletoSDCardFile"), DW_AT_symbol_name("_MANCompTabletoSDCardFile")
	.dwattr DW$393, DW_AT_low_pc(_MANCompTabletoSDCardFile)
	.dwattr DW$393, DW_AT_high_pc(0x00)
	.dwattr DW$393, DW_AT_begin_file("sdcard.c")
	.dwattr DW$393, DW_AT_begin_line(0x888)
	.dwattr DW$393, DW_AT_begin_column(0x05)
	.dwattr DW$393, DW_AT_frame_base[DW_OP_breg20 -16]
	.dwattr DW$393, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",2185,1

;***************************************************************
;* FNAME: _MANCompTabletoSDCardFile     FR SIZE:  14           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  6 Auto,  6 SOE     *
;***************************************************************

_MANCompTabletoSDCardFile:
;* AR4   assigned to _dirptr
DW$394	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dirptr"), DW_AT_symbol_name("_dirptr")
	.dwattr DW$394, DW_AT_type(*DW$T$149)
	.dwattr DW$394, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _sequence
DW$395	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sequence"), DW_AT_symbol_name("_sequence")
	.dwattr DW$395, DW_AT_type(*DW$T$11)
	.dwattr DW$395, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVZ      AR1,AL                ; |2185| 
        MOVL      *SP++,XAR3
        ADDB      SP,#8
        MOVL      XAR2,XAR4             ; |2185| 
        LCR       #_GetVoltageStatus    ; |2194| 
        ; call occurs [#_GetVoltageStatus] ; |2194| 
        CMPB      AL,#1                 ; |2194| 
        BF        L229,NEQ              ; |2194| 
        ; branchcc occurs ; |2194| 
        MOVW      DP,#_settings+7
        MOV       AL,@_settings+7       ; |2194| 
        BF        L229,NEQ              ; |2194| 
        ; branchcc occurs ; |2194| 
        MOVW      DP,#_sdsettings
        MOV       AL,@_sdsettings       ; |2194| 
        CMPB      AL,#1                 ; |2194| 
        BF        L229,NEQ              ; |2194| 
        ; branchcc occurs ; |2194| 
        MOVW      DP,#_settings+11
        MOV       AL,@_settings+11      ; |2194| 
        CMPB      AL,#1                 ; |2194| 
        BF        L229,EQ               ; |2194| 
        ; branchcc occurs ; |2194| 
        MOVL      XAR4,#FSL21           ; |2198| 
        LCR       #_DebugStringOut      ; |2198| 
        ; call occurs [#_DebugStringOut] ; |2198| 
        MOVL      XAR4,XAR2             ; |2199| 
        MOVB      AL,#28                ; |2199| 
        LCR       #_SDCardSetupDirectory ; |2199| 
        ; call occurs [#_SDCardSetupDirectory] ; |2199| 
        CMPB      AL,#0                 ; |2199| 
        BF        L220,EQ               ; |2199| 
        ; branchcc occurs ; |2199| 
        MOVB      AL,#32                ; |2201| 
        BF        L226,UNC              ; |2202| 
        ; branch occurs ; |2202| 
L220:    
        MOV       AL,AR1                ; |2204| 
        LCR       #_CreateNewMANFile    ; |2204| 
        ; call occurs [#_CreateNewMANFile] ; |2204| 
        CMPB      AL,#0                 ; |2204| 
        BF        L227,NEQ              ; |2204| 
        ; branchcc occurs ; |2204| 
        MOVL      XAR5,#FSL18           ; |2211| 
        MOVL      XAR4,#_mansd+13       ; |2211| 
        LCR       #_fm_open             ; |2211| 
        ; call occurs [#_fm_open] ; |2211| 
        MOVL      *-SP[6],XAR4          ; |2211| 
        MOVL      ACC,*-SP[6]           ; |2211| 
        BF        L221,NEQ              ; |2211| 
        ; branchcc occurs ; |2211| 
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_close            ; |2214| 
        ; call occurs [#_fm_close] ; |2214| 
        MOVB      AL,#33                ; |2215| 
        BF        L226,UNC              ; |2216| 
        ; branch occurs ; |2216| 
L221:    
        MOV       *-SP[3],#256          ; |2224| 
        MOVL      XAR2,#512             ; |2223| 
        MOVL      XAR3,#_man_comptable  ; |2222| 
	.dwpsn	"sdcard.c",2225,0
        MOVB      XAR1,#0
L222:    
DW$L$_MANCompTabletoSDCardFile$11$B:
	.dwpsn	"sdcard.c",2226,0
        MOV       AL,AR1
        CMPB      AL,#16                ; |2227| 
        BF        L223,NEQ              ; |2227| 
        ; branchcc occurs ; |2227| 
DW$L$_MANCompTabletoSDCardFile$11$E:
DW$L$_MANCompTabletoSDCardFile$12$B:
        MOV       *-SP[3],#104          ; |2230| 
        MOVB      XAR2,#208             ; |2229| 
DW$L$_MANCompTabletoSDCardFile$12$E:
L223:    
DW$L$_MANCompTabletoSDCardFile$13$B:
        MOV       AL,*-SP[3]            ; |2233| 
        MOVB      XAR5,#0
        MOVB      XAR0,#0
        BF        L225,EQ               ; |2233| 
        ; branchcc occurs ; |2233| 
DW$L$_MANCompTabletoSDCardFile$13$E:
L224:    
DW$L$_MANCompTabletoSDCardFile$14$B:
	.dwpsn	"sdcard.c",2234,0
        MOV       AL,*+XAR3[0]          ; |2235| 
        MOVL      XAR4,#_f_databuf      ; |2235| 
        LSR       AL,8                  ; |2235| 
        ADDB      XAR5,#1               ; |2233| 
        MOV       *+XAR4[AR0],AL        ; |2235| 
        ADDB      XAR0,#1               ; |2237| 
        MOVB      AL.LSB,*XAR3++        ; |2237| 
        MOV       *+XAR4[AR0],AL        ; |2237| 
        MOV       AL,*-SP[3]            ; |2233| 
        CMP       AL,AR5                ; |2233| 
        ADDB      XAR0,#1               ; |2238| 
	.dwpsn	"sdcard.c",2240,0
        BF        L224,HI               ; |2233| 
        ; branchcc occurs ; |2233| 
DW$L$_MANCompTabletoSDCardFile$14$E:
L225:    
DW$L$_MANCompTabletoSDCardFile$15$B:
        SETC      SXM
        MOV       ACC,AR2               ; |2242| 
        MOVL      *-SP[8],ACC           ; |2242| 
        MOVL      *-SP[2],ACC           ; |2242| 
        MOVL      XAR5,*-SP[6]          ; |2242| 
        MOVL      XAR4,#_f_databuf      ; |2242| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |2242| 
        ; call occurs [#_fm_write] ; |2242| 
        MOVL      XAR6,ACC              ; |2242| 
        MOVL      ACC,*-SP[8]           ; |2242| 
        CMPL      ACC,XAR6              ; |2242| 
        BF        L228,EQ               ; |2242| 
        ; branchcc occurs ; |2242| 
DW$L$_MANCompTabletoSDCardFile$15$E:
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_close            ; |2244| 
        ; call occurs [#_fm_close] ; |2244| 
        MOVB      AL,#34                ; |2245| 
L226:    
        LCR       #_SDcardError         ; |2245| 
        ; call occurs [#_SDcardError] ; |2245| 
L227:    
        MOV       AL,#-1                ; |2246| 
        BF        L230,UNC              ; |2246| 
        ; branch occurs ; |2246| 
L228:    
DW$L$_MANCompTabletoSDCardFile$19$B:
        ADDB      XAR1,#1               ; |2225| 
        MOV       AL,AR1                ; |2225| 
        CMPB      AL,#17                ; |2225| 
	.dwpsn	"sdcard.c",2248,0
        BF        L222,LO               ; |2225| 
        ; branchcc occurs ; |2225| 
DW$L$_MANCompTabletoSDCardFile$19$E:
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_close            ; |2251| 
        ; call occurs [#_fm_close] ; |2251| 
L229:    
        MOVB      AL,#0
L230:    
        SUBB      SP,#8                 ; |2257| 
        MOVL      XAR3,*--SP            ; |2257| 
        MOVL      XAR2,*--SP            ; |2257| 
        MOVL      XAR1,*--SP            ; |2257| 
	.dwpsn	"sdcard.c",2258,1
        LRETR
        ; return occurs

DW$396	.dwtag  DW_TAG_loop
	.dwattr DW$396, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L222:1:1471518989")
	.dwattr DW$396, DW_AT_begin_file("sdcard.c")
	.dwattr DW$396, DW_AT_begin_line(0x8b1)
	.dwattr DW$396, DW_AT_end_line(0x8c8)
DW$397	.dwtag  DW_TAG_loop_range
	.dwattr DW$397, DW_AT_low_pc(DW$L$_MANCompTabletoSDCardFile$11$B)
	.dwattr DW$397, DW_AT_high_pc(DW$L$_MANCompTabletoSDCardFile$11$E)
DW$398	.dwtag  DW_TAG_loop_range
	.dwattr DW$398, DW_AT_low_pc(DW$L$_MANCompTabletoSDCardFile$12$B)
	.dwattr DW$398, DW_AT_high_pc(DW$L$_MANCompTabletoSDCardFile$12$E)
DW$399	.dwtag  DW_TAG_loop_range
	.dwattr DW$399, DW_AT_low_pc(DW$L$_MANCompTabletoSDCardFile$13$B)
	.dwattr DW$399, DW_AT_high_pc(DW$L$_MANCompTabletoSDCardFile$13$E)
DW$400	.dwtag  DW_TAG_loop_range
	.dwattr DW$400, DW_AT_low_pc(DW$L$_MANCompTabletoSDCardFile$15$B)
	.dwattr DW$400, DW_AT_high_pc(DW$L$_MANCompTabletoSDCardFile$15$E)
DW$401	.dwtag  DW_TAG_loop_range
	.dwattr DW$401, DW_AT_low_pc(DW$L$_MANCompTabletoSDCardFile$19$B)
	.dwattr DW$401, DW_AT_high_pc(DW$L$_MANCompTabletoSDCardFile$19$E)

DW$402	.dwtag  DW_TAG_loop
	.dwattr DW$402, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L224:2:1471518989")
	.dwattr DW$402, DW_AT_begin_file("sdcard.c")
	.dwattr DW$402, DW_AT_begin_line(0x8b9)
	.dwattr DW$402, DW_AT_end_line(0x8c0)
DW$403	.dwtag  DW_TAG_loop_range
	.dwattr DW$403, DW_AT_low_pc(DW$L$_MANCompTabletoSDCardFile$14$B)
	.dwattr DW$403, DW_AT_high_pc(DW$L$_MANCompTabletoSDCardFile$14$E)
	.dwendtag DW$402

	.dwendtag DW$396

	.dwattr DW$393, DW_AT_end_file("sdcard.c")
	.dwattr DW$393, DW_AT_end_line(0x8d2)
	.dwattr DW$393, DW_AT_end_column(0x01)
	.dwendtag DW$393

	.sect	".text"
	.global	_ReadMANCompTablefromSDCardFile

DW$404	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadMANCompTablefromSDCardFile"), DW_AT_symbol_name("_ReadMANCompTablefromSDCardFile")
	.dwattr DW$404, DW_AT_low_pc(_ReadMANCompTablefromSDCardFile)
	.dwattr DW$404, DW_AT_high_pc(0x00)
	.dwattr DW$404, DW_AT_begin_file("sdcard.c")
	.dwattr DW$404, DW_AT_begin_line(0x8d7)
	.dwattr DW$404, DW_AT_begin_column(0x05)
	.dwattr DW$404, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$404, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",2264,1

;***************************************************************
;* FNAME: _ReadMANCompTablefromSDCardFile FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_ReadMANCompTablefromSDCardFile:
        MOVL      *SP++,XAR1
        MOVW      DP,#_settings+7
        MOVL      *SP++,XAR3
        MOV       AL,@_settings+7       ; |2272| 
        ADDB      SP,#2
        BF        L237,NEQ              ; |2272| 
        ; branchcc occurs ; |2272| 
        MOVW      DP,#_sdsettings
        MOV       AL,@_sdsettings       ; |2272| 
        CMPB      AL,#1                 ; |2272| 
        BF        L237,NEQ              ; |2272| 
        ; branchcc occurs ; |2272| 
        MOVW      DP,#_settings+11
        MOV       AL,@_settings+11      ; |2272| 
        CMPB      AL,#1                 ; |2272| 
        BF        L237,EQ               ; |2272| 
        ; branchcc occurs ; |2272| 
        LCR       #_Fram1MagicNumberRead ; |2274| 
        ; call occurs [#_Fram1MagicNumberRead] ; |2274| 
        MOVZ      AR1,AL                ; |2274| 
        MOVL      XAR4,#_sdcarddir+27   ; |2275| 
        MOVB      AL,#29                ; |2275| 
        LCR       #_SDCardSetupDirectory ; |2275| 
        ; call occurs [#_SDCardSetupDirectory] ; |2275| 
        CMPB      AL,#0                 ; |2275| 
        BF        L231,EQ               ; |2275| 
        ; branchcc occurs ; |2275| 
        MOV       AL,#-1                ; |2275| 
        BF        L238,UNC              ; |2275| 
        ; branch occurs ; |2275| 
L231:    
        MOVL      XAR5,#FSL3            ; |2276| 
        MOVL      XAR4,#_mancompfile    ; |2276| 
        LCR       #_fm_open             ; |2276| 
        ; call occurs [#_fm_open] ; |2276| 
        MOVW      DP,#_fileregs+10
        MOVL      @_fileregs+10,XAR4    ; |2276| 
        MOVW      DP,#_fileregs+10
        MOVL      ACC,@_fileregs+10     ; |2279| 
        BF        L234,NEQ              ; |2279| 
        ; branchcc occurs ; |2279| 
        MOVL      XAR4,ACC              ; |2303| 
        LCR       #_fm_close            ; |2303| 
        ; call occurs [#_fm_close] ; |2303| 
        MOV       AL,AR1                ; |2303| 
        BF        L232,EQ               ; |2304| 
        ; branchcc occurs ; |2304| 
        MOVB      AL,#0
        LCR       #_ClearMANTable       ; |2311| 
        ; call occurs [#_ClearMANTable] ; |2311| 
        BF        L233,UNC              ; |2312| 
        ; branch occurs ; |2312| 
L232:    
        MOVB      AL,#0
        MOVL      XAR4,#_sdcarddir+27   ; |2306| 
        LCR       #_MANCompTabletoSDCardFile ; |2306| 
        ; call occurs [#_MANCompTabletoSDCardFile] ; |2306| 
L233:    
        MOVW      DP,#_sdsettings+3
        AND       @_sdsettings+3,#0xfff7 ; |2307| 
        BF        L237,UNC              ; |2308| 
        ; branch occurs ; |2308| 
L234:    
        MOVB      XAR1,#0
	.dwpsn	"sdcard.c",2283,0
        MOVL      XAR3,#_man_comptable  ; |2282| 
L235:    
DW$L$_ReadMANCompTablefromSDCardFile$12$B:
	.dwpsn	"sdcard.c",2284,0
        MOVW      DP,#_fileregs+10
        MOVB      ACC,#168
        MOVL      XAR4,#_fileregs+12    ; |2285| 
        MOVL      XAR5,@_fileregs+10    ; |2285| 
        MOVL      *-SP[2],ACC           ; |2285| 
        MOVB      ACC,#1
        LCR       #_fm_read             ; |2285| 
        ; call occurs [#_fm_read] ; |2285| 
        MOVB      XAR5,#0
        MOVL      XAR4,#_fileregs+12    ; |2289| 
	.dwpsn	"sdcard.c",2287,0
        MOVB      XAR0,#0
DW$L$_ReadMANCompTablefromSDCardFile$12$E:
L236:    
DW$L$_ReadMANCompTablefromSDCardFile$13$B:
	.dwpsn	"sdcard.c",2288,0
        MOV       ACC,*+XAR4[AR0] << #8 ; |2289| 
        ADDB      XAR0,#1               ; |2291| 
        MOV       *+XAR3[0],AL          ; |2289| 
        ADDB      XAR5,#1               ; |2287| 
        MOV       AH,*+XAR4[AR0]        ; |2291| 
        ANDB      AH,#0xff              ; |2291| 
        ADD       AH,AL                 ; |2291| 
        MOV       AL,AR5                ; |2287| 
        ADDB      XAR0,#1               ; |2292| 
        CMPB      AL,#84                ; |2287| 
        MOV       *XAR3++,AH            ; |2291| 
	.dwpsn	"sdcard.c",2294,0
        BF        L236,LO               ; |2287| 
        ; branchcc occurs ; |2287| 
DW$L$_ReadMANCompTablefromSDCardFile$13$E:
DW$L$_ReadMANCompTablefromSDCardFile$14$B:
        ADDB      XAR1,#1               ; |2283| 
        MOV       AL,AR1                ; |2283| 
        CMPB      AL,#50                ; |2283| 
	.dwpsn	"sdcard.c",2295,0
        BF        L235,LO               ; |2283| 
        ; branchcc occurs ; |2283| 
DW$L$_ReadMANCompTablefromSDCardFile$14$E:
        MOVW      DP,#_fileregs+10
        MOVL      XAR4,@_fileregs+10    ; |2298| 
        LCR       #_fm_close            ; |2298| 
        ; call occurs [#_fm_close] ; |2298| 
        MOVW      DP,#_sdsettings+3
        OR        @_sdsettings+3,#0x0008 ; |2299| 
L237:    
        MOVB      AL,#0
L238:    
        SUBB      SP,#2                 ; |2319| 
        MOVL      XAR3,*--SP            ; |2319| 
        MOVL      XAR1,*--SP            ; |2319| 
	.dwpsn	"sdcard.c",2320,1
        LRETR
        ; return occurs

DW$405	.dwtag  DW_TAG_loop
	.dwattr DW$405, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L235:1:1471518989")
	.dwattr DW$405, DW_AT_begin_file("sdcard.c")
	.dwattr DW$405, DW_AT_begin_line(0x8eb)
	.dwattr DW$405, DW_AT_end_line(0x8f7)
DW$406	.dwtag  DW_TAG_loop_range
	.dwattr DW$406, DW_AT_low_pc(DW$L$_ReadMANCompTablefromSDCardFile$12$B)
	.dwattr DW$406, DW_AT_high_pc(DW$L$_ReadMANCompTablefromSDCardFile$12$E)
DW$407	.dwtag  DW_TAG_loop_range
	.dwattr DW$407, DW_AT_low_pc(DW$L$_ReadMANCompTablefromSDCardFile$14$B)
	.dwattr DW$407, DW_AT_high_pc(DW$L$_ReadMANCompTablefromSDCardFile$14$E)

DW$408	.dwtag  DW_TAG_loop
	.dwattr DW$408, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L236:2:1471518989")
	.dwattr DW$408, DW_AT_begin_file("sdcard.c")
	.dwattr DW$408, DW_AT_begin_line(0x8ef)
	.dwattr DW$408, DW_AT_end_line(0x8f6)
DW$409	.dwtag  DW_TAG_loop_range
	.dwattr DW$409, DW_AT_low_pc(DW$L$_ReadMANCompTablefromSDCardFile$13$B)
	.dwattr DW$409, DW_AT_high_pc(DW$L$_ReadMANCompTablefromSDCardFile$13$E)
	.dwendtag DW$408

	.dwendtag DW$405

	.dwattr DW$404, DW_AT_end_file("sdcard.c")
	.dwattr DW$404, DW_AT_end_line(0x910)
	.dwattr DW$404, DW_AT_end_column(0x01)
	.dwendtag DW$404

	.sect	".text"
	.global	_CreateNewShortTermFile

DW$410	.dwtag  DW_TAG_subprogram, DW_AT_name("CreateNewShortTermFile"), DW_AT_symbol_name("_CreateNewShortTermFile")
	.dwattr DW$410, DW_AT_low_pc(_CreateNewShortTermFile)
	.dwattr DW$410, DW_AT_high_pc(0x00)
	.dwattr DW$410, DW_AT_begin_file("sdcard.c")
	.dwattr DW$410, DW_AT_begin_line(0x91a)
	.dwattr DW$410, DW_AT_begin_column(0x05)
	.dwattr DW$410, DW_AT_frame_base[DW_OP_breg20 -24]
	.dwattr DW$410, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",2331,1

;***************************************************************
;* FNAME: _CreateNewShortTermFile       FR SIZE:  22           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 18 Auto,  4 SOE     *
;***************************************************************

_CreateNewShortTermFile:
        MOVL      *SP++,XAR1
        MOVW      DP,#_settings+7
        MOVL      *SP++,XAR3
        MOV       AL,@_settings+7       ; |2337| 
        ADDB      SP,#18
        BF        L250,NEQ              ; |2337| 
        ; branchcc occurs ; |2337| 
        MOVW      DP,#_sdsettings
        MOV       AL,@_sdsettings       ; |2337| 
        CMPB      AL,#1                 ; |2337| 
        BF        L250,NEQ              ; |2337| 
        ; branchcc occurs ; |2337| 
        MOVW      DP,#_settings+11
        MOV       AL,@_settings+11      ; |2337| 
        CMPB      AL,#1                 ; |2337| 
        BF        L250,EQ               ; |2337| 
        ; branchcc occurs ; |2337| 
        MOV       *-SP[6],#65           ; |2340| 
        MOVZ      AR4,SP                ; |2343| 
        MOV       *-SP[5],#46           ; |2341| 
        MOVL      XAR5,#_shortterm+2    ; |2343| 
        MOV       *-SP[4],#0            ; |2342| 
        SUBB      XAR4,#6               ; |2343| 
        LCR       #_strcat              ; |2343| 
        ; call occurs [#_strcat] ; |2343| 
        LCR       #_BuildTimeStamp      ; |2345| 
        ; call occurs [#_BuildTimeStamp] ; |2345| 
        MOVL      XAR1,ACC              ; |2345| 
        MOVW      DP,#_clocktime+5
        MOV       AL,@_clocktime+5      ; |2348| 
        MOVW      DP,#_shortterm+20
        CMP       AL,@_shortterm+20     ; |2348| 
        BF        L250,EQ               ; |2348| 
        ; branchcc occurs ; |2348| 
        LCR       #_SDShortTermOldFileDeletion ; |2351| 
        ; call occurs [#_SDShortTermOldFileDeletion] ; |2351| 
        MOVL      XAR4,#_sdcarddir+45   ; |2353| 
        LCR       #_SDOldLogFileDeletion ; |2353| 
        ; call occurs [#_SDOldLogFileDeletion] ; |2353| 
        MOVL      XAR5,#_shortterm+22   ; |2355| 
        MOV       AL,*+XAR5[0]          ; |2355| 
        BF        L239,EQ               ; |2355| 
        ; branchcc occurs ; |2355| 
        MOVL      XAR4,#_shortterm+34   ; |2358| 
        LCR       #_strcpy              ; |2358| 
        ; call occurs [#_strcpy] ; |2358| 
L239:    
        MOVL      XAR5,#_shortterm+6    ; |2360| 
        MOV       AL,*+XAR5[0]          ; |2360| 
        BF        L240,EQ               ; |2360| 
        ; branchcc occurs ; |2360| 
        MOVL      XAR4,#_shortterm+22   ; |2363| 
        LCR       #_strcpy              ; |2363| 
        ; call occurs [#_strcpy] ; |2363| 
L240:    
        MOVW      DP,#_shortterm+21
        TBIT      @_shortterm+21,#0     ; |2365| 
        BF        L245,TC               ; |2365| 
        ; branchcc occurs ; |2365| 
        MOVW      DP,#_shortterm+21
        TBIT      @_shortterm+21,#1     ; |2369| 
        BF        L243,TC               ; |2369| 
        ; branchcc occurs ; |2369| 
        MOVW      DP,#_shortterm+21
        TBIT      @_shortterm+21,#2     ; |2371| 
        BF        L241,TC               ; |2371| 
        ; branchcc occurs ; |2371| 
        MOVL      XAR4,#_shortterm+34   ; |2373| 
        MOV       AL,*+XAR4[0]          ; |2373| 
        BF        L247,EQ               ; |2373| 
        ; branchcc occurs ; |2373| 
        LCR       #_SDDailyFileDeletion ; |2373| 
        ; call occurs [#_SDDailyFileDeletion] ; |2373| 
        BF        L247,UNC              ; |2373| 
        ; branch occurs ; |2373| 
L241:    
        MOVZ      AR4,SP                ; |2377| 
        MOVL      XAR3,#_shortterm+34   ; |2377| 
        MOVL      XAR5,XAR3             ; |2377| 
        MOVB      ACC,#6
        SUBB      XAR4,#18              ; |2377| 
        LCR       #_strncpy             ; |2377| 
        ; call occurs [#_strncpy] ; |2377| 
        MOVZ      AR5,SP                ; |2379| 
        MOVZ      AR4,SP                ; |2379| 
        MOV       *-SP[12],#0           ; |2378| 
        SUBB      XAR5,#6               ; |2379| 
        SUBB      XAR4,#18              ; |2379| 
        LCR       #_strcat              ; |2379| 
        ; call occurs [#_strcat] ; |2379| 
        MOV       AL,*+XAR3[0]          ; |2380| 
        BF        L242,EQ               ; |2380| 
        ; branchcc occurs ; |2380| 
        MOVZ      AR5,SP                ; |2380| 
        MOVL      XAR4,XAR3             ; |2380| 
        SUBB      XAR5,#18              ; |2380| 
        LCR       #_SDAlarmFileRename   ; |2380| 
        ; call occurs [#_SDAlarmFileRename] ; |2380| 
L242:    
        MOVW      DP,#_shortterm+21
        AND       @_shortterm+21,#0xfffb ; |2381| 
        BF        L247,UNC              ; |2381| 
        ; branch occurs ; |2381| 
L243:    
        MOVZ      AR4,SP                ; |2386| 
        MOVL      XAR3,#_shortterm+34   ; |2386| 
        MOVL      XAR5,XAR3             ; |2386| 
        MOVB      ACC,#6
        SUBB      XAR4,#18              ; |2386| 
        LCR       #_strncpy             ; |2386| 
        ; call occurs [#_strncpy] ; |2386| 
        MOVZ      AR5,SP                ; |2388| 
        MOVZ      AR4,SP                ; |2388| 
        MOV       *-SP[12],#0           ; |2387| 
        SUBB      XAR5,#6               ; |2388| 
        SUBB      XAR4,#18              ; |2388| 
        LCR       #_strcat              ; |2388| 
        ; call occurs [#_strcat] ; |2388| 
        MOV       AL,*+XAR3[0]          ; |2389| 
        BF        L244,EQ               ; |2389| 
        ; branchcc occurs ; |2389| 
        MOVZ      AR5,SP                ; |2389| 
        MOVL      XAR4,XAR3             ; |2389| 
        SUBB      XAR5,#18              ; |2389| 
        LCR       #_SDAlarmFileRename   ; |2389| 
        ; call occurs [#_SDAlarmFileRename] ; |2389| 
L244:    
        MOVW      DP,#_shortterm+21
        AND       @_shortterm+21,#0xfffd ; |2390| 
        MOVW      DP,#_shortterm+21
        OR        @_shortterm+21,#0x0004 ; |2390| 
        BF        L247,UNC              ; |2391| 
        ; branch occurs ; |2391| 
L245:    
        MOVZ      AR4,SP                ; |2396| 
        MOVL      XAR3,#_shortterm+34   ; |2396| 
        MOVL      XAR5,XAR3             ; |2396| 
        MOVB      ACC,#6
        SUBB      XAR4,#18              ; |2396| 
        LCR       #_strncpy             ; |2396| 
        ; call occurs [#_strncpy] ; |2396| 
        MOVZ      AR5,SP                ; |2398| 
        MOVZ      AR4,SP                ; |2398| 
        MOV       *-SP[12],#0           ; |2397| 
        SUBB      XAR5,#6               ; |2398| 
        SUBB      XAR4,#18              ; |2398| 
        LCR       #_strcat              ; |2398| 
        ; call occurs [#_strcat] ; |2398| 
        MOV       AL,*+XAR3[0]          ; |2399| 
        BF        L246,EQ               ; |2399| 
        ; branchcc occurs ; |2399| 
        MOVZ      AR5,SP                ; |2399| 
        MOVL      XAR4,XAR3             ; |2399| 
        SUBB      XAR5,#18              ; |2399| 
        LCR       #_SDAlarmFileRename   ; |2399| 
        ; call occurs [#_SDAlarmFileRename] ; |2399| 
L246:    
        MOVW      DP,#_shortterm+21
        AND       @_shortterm+21,#0xfffe ; |2400| 
        MOVW      DP,#_shortterm+21
        OR        @_shortterm+21,#0x0002 ; |2400| 
L247:    
        MOVW      DP,#_shortterm+18
        MOVL      @_shortterm+18,XAR1   ; |2404| 
        MOVL      XAR5,#_shortterm+2    ; |2406| 
        MOVL      XAR4,#_shortterm+6    ; |2406| 
        MOVW      DP,#_clocktime+5
        MOV       AL,@_clocktime+5      ; |2405| 
        MOVW      DP,#_shortterm+20
        MOV       @_shortterm+20,AL     ; |2405| 
        LCR       #_BuildFileName       ; |2406| 
        ; call occurs [#_BuildFileName] ; |2406| 
        MOVL      XAR4,#_sdcarddir+36   ; |2407| 
        MOVB      AL,#30                ; |2407| 
        LCR       #_SDCardSetupDirectory ; |2407| 
        ; call occurs [#_SDCardSetupDirectory] ; |2407| 
        CMPB      AL,#0                 ; |2407| 
        BF        L249,EQ               ; |2407| 
        ; branchcc occurs ; |2407| 
        MOVB      AL,#35                ; |2407| 
        LCR       #_SDcardError         ; |2407| 
        ; call occurs [#_SDcardError] ; |2407| 
L248:    
        MOV       AL,#-1                ; |2407| 
        BF        L251,UNC              ; |2407| 
        ; branch occurs ; |2407| 
L249:    
        MOVL      XAR3,#_shortterm+6    ; |2408| 
        MOVL      XAR4,XAR3             ; |2408| 
        LCR       #_CreateFile          ; |2408| 
        ; call occurs [#_CreateFile] ; |2408| 
        CMPB      AL,#0                 ; |2408| 
        BF        L248,NEQ              ; |2408| 
        ; branchcc occurs ; |2408| 
        MOVL      XAR4,XAR3             ; |2410| 
        LCR       #_SDLogHeader         ; |2410| 
        ; call occurs [#_SDLogHeader] ; |2410| 
        MOVB      AL,#0
        MOVB      XAR5,#46              ; |2413| 
        MOV       AH,#28722             ; |2413| 
        MOVL      XAR4,#_shortterm      ; |2413| 
        LCR       #_WriteNVMemory       ; |2413| 
        ; call occurs [#_WriteNVMemory] ; |2413| 
L250:    
        MOVB      AL,#0
L251:    
        SUBB      SP,#18                ; |2417| 
        MOVL      XAR3,*--SP            ; |2417| 
        MOVL      XAR1,*--SP            ; |2417| 
	.dwpsn	"sdcard.c",2418,1
        LRETR
        ; return occurs
	.dwattr DW$410, DW_AT_end_file("sdcard.c")
	.dwattr DW$410, DW_AT_end_line(0x972)
	.dwattr DW$410, DW_AT_end_column(0x01)
	.dwendtag DW$410

	.sect	".text"
	.global	_CreateNewLongTermFile

DW$411	.dwtag  DW_TAG_subprogram, DW_AT_name("CreateNewLongTermFile"), DW_AT_symbol_name("_CreateNewLongTermFile")
	.dwattr DW$411, DW_AT_low_pc(_CreateNewLongTermFile)
	.dwattr DW$411, DW_AT_high_pc(0x00)
	.dwattr DW$411, DW_AT_begin_file("sdcard.c")
	.dwattr DW$411, DW_AT_begin_line(0x974)
	.dwattr DW$411, DW_AT_begin_column(0x05)
	.dwattr DW$411, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$411, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",2421,1

;***************************************************************
;* FNAME: _CreateNewLongTermFile        FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_CreateNewLongTermFile:
        MOVW      DP,#_settings+7
        MOVL      *SP++,XAR3
        MOV       AL,@_settings+7       ; |2424| 
        BF        L255,NEQ              ; |2424| 
        ; branchcc occurs ; |2424| 
        MOVW      DP,#_sdsettings
        MOV       AL,@_sdsettings       ; |2424| 
        CMPB      AL,#1                 ; |2424| 
        BF        L255,NEQ              ; |2424| 
        ; branchcc occurs ; |2424| 
        MOVW      DP,#_settings+11
        MOV       AL,@_settings+11      ; |2424| 
        CMPB      AL,#1                 ; |2424| 
        BF        L255,EQ               ; |2424| 
        ; branchcc occurs ; |2424| 
        LCR       #_BuildTimeStamp      ; |2426| 
        ; call occurs [#_BuildTimeStamp] ; |2426| 
        MOVW      DP,#_clocktime+4
        MOVL      XAR6,ACC              ; |2426| 
        MOV       AL,@_clocktime+4      ; |2427| 
        CMPB      AL,#1                 ; |2427| 
        BF        L254,NEQ              ; |2427| 
        ; branchcc occurs ; |2427| 
        MOVW      DP,#_longterm+18
        MOV       AL,@_longterm+18      ; |2429| 
        BF        L255,NEQ              ; |2429| 
        ; branchcc occurs ; |2429| 
        MOVW      DP,#_longterm+16
        MOVL      XAR5,#_longterm       ; |2433| 
        MOVL      @_longterm+16,XAR6    ; |2431| 
        MOVL      XAR4,#_longterm+4     ; |2433| 
        MOVW      DP,#_longterm+18
        MOV       @_longterm+18,#1      ; |2432| 
        LCR       #_BuildFileName       ; |2433| 
        ; call occurs [#_BuildFileName] ; |2433| 
        MOVB      AL,#31                ; |2436| 
        MOVL      XAR4,#_sdcarddir+45   ; |2436| 
        LCR       #_SDCardSetupDirectory ; |2436| 
        ; call occurs [#_SDCardSetupDirectory] ; |2436| 
        CMPB      AL,#0                 ; |2436| 
        BF        L253,EQ               ; |2436| 
        ; branchcc occurs ; |2436| 
        MOVB      AL,#36                ; |2436| 
        LCR       #_SDcardError         ; |2436| 
        ; call occurs [#_SDcardError] ; |2436| 
L252:    
        MOV       AL,#-1                ; |2436| 
        BF        L256,UNC              ; |2436| 
        ; branch occurs ; |2436| 
L253:    
        MOVL      XAR3,#_longterm+4     ; |2438| 
        MOVL      XAR4,XAR3             ; |2438| 
        LCR       #_CreateFile          ; |2438| 
        ; call occurs [#_CreateFile] ; |2438| 
        CMPB      AL,#0                 ; |2438| 
        BF        L252,NEQ              ; |2438| 
        ; branchcc occurs ; |2438| 
        MOVL      XAR4,XAR3             ; |2440| 
        LCR       #_SDLogHeader         ; |2440| 
        ; call occurs [#_SDLogHeader] ; |2440| 
        BF        L255,UNC              ; |2440| 
        ; branch occurs ; |2440| 
L254:    
        MOVW      DP,#_longterm+18
        MOV       @_longterm+18,#0      ; |2443| 
L255:    
        MOVB      AL,#0
L256:    
        MOVL      XAR3,*--SP            ; |2445| 
	.dwpsn	"sdcard.c",2446,1
        LRETR
        ; return occurs
	.dwattr DW$411, DW_AT_end_file("sdcard.c")
	.dwattr DW$411, DW_AT_end_line(0x98e)
	.dwattr DW$411, DW_AT_end_column(0x01)
	.dwendtag DW$411

	.sect	".text"
	.global	_CreateNewSettingsFile

DW$412	.dwtag  DW_TAG_subprogram, DW_AT_name("CreateNewSettingsFile"), DW_AT_symbol_name("_CreateNewSettingsFile")
	.dwattr DW$412, DW_AT_low_pc(_CreateNewSettingsFile)
	.dwattr DW$412, DW_AT_high_pc(0x00)
	.dwattr DW$412, DW_AT_begin_file("sdcard.c")
	.dwattr DW$412, DW_AT_begin_line(0x992)
	.dwattr DW$412, DW_AT_begin_column(0x05)
	.dwattr DW$412, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$412, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",2451,1

;***************************************************************
;* FNAME: _CreateNewSettingsFile        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CreateNewSettingsFile:
        MOVL      XAR4,#_settingsfile   ; |2452| 
        LCR       #_CreateFile          ; |2452| 
        ; call occurs [#_CreateFile] ; |2452| 
        CMPB      AL,#0                 ; |2452| 
        BF        L257,EQ               ; |2452| 
        ; branchcc occurs ; |2452| 
        MOV       AL,#-1                ; |2452| 
        BF        L258,UNC              ; |2452| 
        ; branch occurs ; |2452| 
L257:    
        MOVB      AL,#0
L258:    
	.dwpsn	"sdcard.c",2454,1
        LRETR
        ; return occurs
	.dwattr DW$412, DW_AT_end_file("sdcard.c")
	.dwattr DW$412, DW_AT_end_line(0x996)
	.dwattr DW$412, DW_AT_end_column(0x01)
	.dwendtag DW$412

	.sect	".text"
	.global	_CreateNewOffsetsFile

DW$413	.dwtag  DW_TAG_subprogram, DW_AT_name("CreateNewOffsetsFile"), DW_AT_symbol_name("_CreateNewOffsetsFile")
	.dwattr DW$413, DW_AT_low_pc(_CreateNewOffsetsFile)
	.dwattr DW$413, DW_AT_high_pc(0x00)
	.dwattr DW$413, DW_AT_begin_file("sdcard.c")
	.dwattr DW$413, DW_AT_begin_line(0x99a)
	.dwattr DW$413, DW_AT_begin_column(0x05)
	.dwattr DW$413, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$413, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",2459,1

;***************************************************************
;* FNAME: _CreateNewOffsetsFile         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CreateNewOffsetsFile:
        MOVL      XAR4,#_offsetsfile    ; |2460| 
        LCR       #_CreateFile          ; |2460| 
        ; call occurs [#_CreateFile] ; |2460| 
        CMPB      AL,#0                 ; |2460| 
        BF        L259,EQ               ; |2460| 
        ; branchcc occurs ; |2460| 
        MOV       AL,#-1                ; |2460| 
        BF        L260,UNC              ; |2460| 
        ; branch occurs ; |2460| 
L259:    
        MOVB      AL,#0
L260:    
	.dwpsn	"sdcard.c",2462,1
        LRETR
        ; return occurs
	.dwattr DW$413, DW_AT_end_file("sdcard.c")
	.dwattr DW$413, DW_AT_end_line(0x99e)
	.dwattr DW$413, DW_AT_end_column(0x01)
	.dwendtag DW$413

	.sect	".text"
	.global	_CreateNewStatusFile

DW$414	.dwtag  DW_TAG_subprogram, DW_AT_name("CreateNewStatusFile"), DW_AT_symbol_name("_CreateNewStatusFile")
	.dwattr DW$414, DW_AT_low_pc(_CreateNewStatusFile)
	.dwattr DW$414, DW_AT_high_pc(0x00)
	.dwattr DW$414, DW_AT_begin_file("sdcard.c")
	.dwattr DW$414, DW_AT_begin_line(0x9a3)
	.dwattr DW$414, DW_AT_begin_column(0x05)
	.dwattr DW$414, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$414, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",2468,1

;***************************************************************
;* FNAME: _CreateNewStatusFile          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CreateNewStatusFile:
        MOVL      XAR4,#_statusfile     ; |2469| 
        LCR       #_CreateFile          ; |2469| 
        ; call occurs [#_CreateFile] ; |2469| 
        CMPB      AL,#0                 ; |2469| 
        BF        L261,EQ               ; |2469| 
        ; branchcc occurs ; |2469| 
        MOV       AL,#-1                ; |2469| 
        BF        L262,UNC              ; |2469| 
        ; branch occurs ; |2469| 
L261:    
        MOVB      AL,#0
L262:    
	.dwpsn	"sdcard.c",2471,1
        LRETR
        ; return occurs
	.dwattr DW$414, DW_AT_end_file("sdcard.c")
	.dwattr DW$414, DW_AT_end_line(0x9a7)
	.dwattr DW$414, DW_AT_end_column(0x01)
	.dwendtag DW$414

	.sect	".text"
	.global	_CreateNewMANFile

DW$415	.dwtag  DW_TAG_subprogram, DW_AT_name("CreateNewMANFile"), DW_AT_symbol_name("_CreateNewMANFile")
	.dwattr DW$415, DW_AT_low_pc(_CreateNewMANFile)
	.dwattr DW$415, DW_AT_high_pc(0x00)
	.dwattr DW$415, DW_AT_begin_file("sdcard.c")
	.dwattr DW$415, DW_AT_begin_line(0x9ac)
	.dwattr DW$415, DW_AT_begin_column(0x05)
	.dwattr DW$415, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$415, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",2477,1

;***************************************************************
;* FNAME: _CreateNewMANFile             FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            3 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_CreateNewMANFile:
;* AL    assigned to _sequence
DW$416	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sequence"), DW_AT_symbol_name("_sequence")
	.dwattr DW$416, DW_AT_type(*DW$T$11)
	.dwattr DW$416, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      XAR4,#_mansd+13       ; |2484| 
        MOVL      *SP++,XAR3
        MOVL      XAR3,#_mansd+9        ; |2479| 
        MOVL      XAR1,XAR4             ; |2484| 
        MOV       *+XAR3[0],#98         ; |2479| 
        ADDB      SP,#4
        MOV       *+XAR3[1],#105        ; |2480| 
        MOVL      XAR4,#FSL22           ; |2484| 
        MOV       *+XAR3[2],#110        ; |2481| 
        MOV       *+XAR3[3],#0          ; |2482| 
        MOVL      *-SP[2],XAR4          ; |2484| 
        MOVL      XAR4,XAR1             ; |2484| 
        MOV       *-SP[3],AL            ; |2484| 
        LCR       #_sprintf             ; |2484| 
        ; call occurs [#_sprintf] ; |2484| 
        MOVL      XAR5,XAR3             ; |2485| 
        MOVL      XAR4,XAR1             ; |2484| 
        LCR       #_strcat              ; |2485| 
        ; call occurs [#_strcat] ; |2485| 
        LCR       #_SaveSDSettings      ; |2486| 
        ; call occurs [#_SaveSDSettings] ; |2486| 
        MOVL      XAR4,XAR1             ; |2486| 
        LCR       #_fm_delete           ; |2487| 
        ; call occurs [#_fm_delete] ; |2487| 
        LCR       #_DeselectSPI         ; |2488| 
        ; call occurs [#_DeselectSPI] ; |2488| 
        MOVL      XAR4,XAR1             ; |2488| 
        LCR       #_CreateFile          ; |2489| 
        ; call occurs [#_CreateFile] ; |2489| 
        CMPB      AL,#0                 ; |2489| 
        BF        L263,EQ               ; |2489| 
        ; branchcc occurs ; |2489| 
        MOVB      AL,#37                ; |2491| 
        LCR       #_SDcardError         ; |2491| 
        ; call occurs [#_SDcardError] ; |2491| 
        MOV       AL,#-1                ; |2492| 
        BF        L264,UNC              ; |2492| 
        ; branch occurs ; |2492| 
L263:    
        MOVB      AL,#0
L264:    
        SUBB      SP,#4                 ; |2494| 
        MOVL      XAR3,*--SP            ; |2494| 
        MOVL      XAR1,*--SP            ; |2494| 
	.dwpsn	"sdcard.c",2495,1
        LRETR
        ; return occurs
	.dwattr DW$415, DW_AT_end_file("sdcard.c")
	.dwattr DW$415, DW_AT_end_line(0x9bf)
	.dwattr DW$415, DW_AT_end_column(0x01)
	.dwendtag DW$415

	.sect	".text"
	.global	_SDCardSetupDirectory

DW$417	.dwtag  DW_TAG_subprogram, DW_AT_name("SDCardSetupDirectory"), DW_AT_symbol_name("_SDCardSetupDirectory")
	.dwattr DW$417, DW_AT_low_pc(_SDCardSetupDirectory)
	.dwattr DW$417, DW_AT_high_pc(0x00)
	.dwattr DW$417, DW_AT_begin_file("sdcard.c")
	.dwattr DW$417, DW_AT_begin_line(0x9c1)
	.dwattr DW$417, DW_AT_begin_column(0x05)
	.dwattr DW$417, DW_AT_frame_base[DW_OP_breg20 -24]
	.dwattr DW$417, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",2498,1

;***************************************************************
;* FNAME: _SDCardSetupDirectory         FR SIZE:  22           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            7 Parameter,  9 Auto,  6 SOE     *
;***************************************************************

_SDCardSetupDirectory:
;* AR4   assigned to _ptr
DW$418	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$418, DW_AT_type(*DW$T$149)
	.dwattr DW$418, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _callnum
DW$419	.dwtag  DW_TAG_formal_parameter, DW_AT_name("callnum"), DW_AT_symbol_name("_callnum")
	.dwattr DW$419, DW_AT_type(*DW$T$10)
	.dwattr DW$419, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVW      DP,#_settings+7
        MOVL      *SP++,XAR2
        MOVZ      AR2,AL                ; |2498| 
        MOVL      *SP++,XAR3
        MOVL      XAR1,XAR4             ; |2498| 
        MOV       AL,@_settings+7       ; |2501| 
        ADDB      SP,#16
        BF        L266,NEQ              ; |2501| 
        ; branchcc occurs ; |2501| 
        MOVW      DP,#_sdsettings
        MOV       AL,@_sdsettings       ; |2501| 
        CMPB      AL,#1                 ; |2501| 
        BF        L266,NEQ              ; |2501| 
        ; branchcc occurs ; |2501| 
        MOVZ      AR4,SP                ; |2505| 
        MOVB      AL,#9                 ; |2505| 
        SUBB      XAR4,#16              ; |2505| 
        LCR       #_fm_getcwd           ; |2505| 
        ; call occurs [#_fm_getcwd] ; |2505| 
        MOVZ      AR4,SP                ; |2507| 
        MOVL      XAR5,XAR1             ; |2507| 
        SUBB      XAR4,#15              ; |2507| 
        LCR       #_strcmp              ; |2507| 
        ; call occurs [#_strcmp] ; |2507| 
        CMPB      AL,#0                 ; |2507| 
        BF        L266,EQ               ; |2507| 
        ; branchcc occurs ; |2507| 
        MOVL      XAR4,#FSL23           ; |2509| 
        MOVL      *-SP[2],XAR4          ; |2509| 
        MOVZ      AR4,SP                ; |2509| 
        MOVL      XAR3,#_stringbuffer   ; |2509| 
        SUBB      XAR4,#16              ; |2509| 
        MOVL      *-SP[4],XAR4          ; |2509| 
        MOVL      XAR4,XAR3             ; |2509| 
        MOVL      *-SP[6],XAR1          ; |2509| 
        MOV       *-SP[7],AR2           ; |2509| 
        LCR       #_sprintf             ; |2509| 
        ; call occurs [#_sprintf] ; |2509| 
        MOVL      XAR4,XAR3             ; |2509| 
        LCR       #_DebugStringOut      ; |2509| 
        ; call occurs [#_DebugStringOut] ; |2509| 
        MOVL      XAR4,#FSL8            ; |2510| 
        LCR       #_fm_chdir            ; |2510| 
        ; call occurs [#_fm_chdir] ; |2510| 
        MOVL      XAR4,XAR1             ; |2511| 
        LCR       #_fm_chdir            ; |2511| 
        ; call occurs [#_fm_chdir] ; |2511| 
        CMPB      AL,#0                 ; |2511| 
        BF        L265,EQ               ; |2511| 
        ; branchcc occurs ; |2511| 
        MOVB      AL,#43                ; |2513| 
        LCR       #_SDcardError         ; |2513| 
        ; call occurs [#_SDcardError] ; |2513| 
        MOV       AL,#-1                ; |2514| 
        BF        L267,UNC              ; |2514| 
        ; branch occurs ; |2514| 
L265:    
        LCR       #_DeselectSPI         ; |2516| 
        ; call occurs [#_DeselectSPI] ; |2516| 
L266:    
        MOVB      AL,#0
L267:    
        SUBB      SP,#16                ; |2520| 
        MOVL      XAR3,*--SP            ; |2520| 
        MOVL      XAR2,*--SP            ; |2520| 
        MOVL      XAR1,*--SP            ; |2520| 
	.dwpsn	"sdcard.c",2521,1
        LRETR
        ; return occurs
	.dwattr DW$417, DW_AT_end_file("sdcard.c")
	.dwattr DW$417, DW_AT_end_line(0x9d9)
	.dwattr DW$417, DW_AT_end_column(0x01)
	.dwendtag DW$417

	.sect	".text"
	.global	_CreateFile

DW$420	.dwtag  DW_TAG_subprogram, DW_AT_name("CreateFile"), DW_AT_symbol_name("_CreateFile")
	.dwattr DW$420, DW_AT_low_pc(_CreateFile)
	.dwattr DW$420, DW_AT_high_pc(0x00)
	.dwattr DW$420, DW_AT_begin_file("sdcard.c")
	.dwattr DW$420, DW_AT_begin_line(0x9e0)
	.dwattr DW$420, DW_AT_begin_column(0x05)
	.dwattr DW$420, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$420, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",2529,1

;***************************************************************
;* FNAME: _CreateFile                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CreateFile:
;* AR4   assigned to _name
DW$421	.dwtag  DW_TAG_formal_parameter, DW_AT_name("name"), DW_AT_symbol_name("_name")
	.dwattr DW$421, DW_AT_type(*DW$T$135)
	.dwattr DW$421, DW_AT_location[DW_OP_reg12]
        MOVW      DP,#_settings+7
        MOV       AL,@_settings+7       ; |2532| 
        BF        L269,NEQ              ; |2532| 
        ; branchcc occurs ; |2532| 
        MOVW      DP,#_sdsettings
        MOV       AL,@_sdsettings       ; |2532| 
        CMPB      AL,#1                 ; |2532| 
        BF        L269,NEQ              ; |2532| 
        ; branchcc occurs ; |2532| 
        MOVW      DP,#_settings+11
        MOV       AL,@_settings+11      ; |2532| 
        CMPB      AL,#1                 ; |2532| 
        BF        L269,EQ               ; |2532| 
        ; branchcc occurs ; |2532| 
        MOVL      XAR5,#FSL4            ; |2534| 
        LCR       #_fm_open             ; |2534| 
        ; call occurs [#_fm_open] ; |2534| 
        MOVL      ACC,XAR4              ; |2534| 
        BF        L268,NEQ              ; |2534| 
        ; branchcc occurs ; |2534| 
        MOVL      XAR4,ACC              ; |2537| 
        LCR       #_fm_close            ; |2537| 
        ; call occurs [#_fm_close] ; |2537| 
        MOVB      AL,#38                ; |2538| 
        LCR       #_SDcardError         ; |2538| 
        ; call occurs [#_SDcardError] ; |2538| 
        MOV       AL,#-1                ; |2539| 
        BF        L270,UNC              ; |2539| 
        ; branch occurs ; |2539| 
L268:    
        MOVL      XAR4,ACC              ; |2541| 
        LCR       #_fm_close            ; |2541| 
        ; call occurs [#_fm_close] ; |2541| 
L269:    
        MOVB      AL,#0
L270:    
	.dwpsn	"sdcard.c",2544,1
        LRETR
        ; return occurs
	.dwattr DW$420, DW_AT_end_file("sdcard.c")
	.dwattr DW$420, DW_AT_end_line(0x9f0)
	.dwattr DW$420, DW_AT_end_column(0x01)
	.dwendtag DW$420

	.sect	".text"
	.global	_SdcardAmotFile

DW$422	.dwtag  DW_TAG_subprogram, DW_AT_name("SdcardAmotFile"), DW_AT_symbol_name("_SdcardAmotFile")
	.dwattr DW$422, DW_AT_low_pc(_SdcardAmotFile)
	.dwattr DW$422, DW_AT_high_pc(0x00)
	.dwattr DW$422, DW_AT_begin_file("sdcard.c")
	.dwattr DW$422, DW_AT_begin_line(0x9f3)
	.dwattr DW$422, DW_AT_begin_column(0x05)
	.dwattr DW$422, DW_AT_frame_base[DW_OP_breg20 -16]
	.dwattr DW$422, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",2548,1

;***************************************************************
;* FNAME: _SdcardAmotFile               FR SIZE:  14           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  5 Auto,  6 SOE     *
;***************************************************************

_SdcardAmotFile:
        MOVL      *SP++,XAR1
        MOVB      AL,#32                ; |2553| 
        MOVL      XAR4,#_sdcarddir+27   ; |2553| 
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#8
        LCR       #_SDCardSetupDirectory ; |2553| 
        ; call occurs [#_SDCardSetupDirectory] ; |2553| 
        CMPB      AL,#0                 ; |2553| 
        BF        L274,NEQ              ; |2553| 
        ; branchcc occurs ; |2553| 
        MOVZ      AR4,SP                ; |2555| 
        MOVB      ACC,#5
        MOVB      XAR5,#0
        SUBB      XAR4,#7               ; |2555| 
        LCR       #_memset              ; |2555| 
        ; call occurs [#_memset] ; |2555| 
        MOVL      XAR5,#FSL3            ; |2556| 
        MOVL      XAR4,#FSL24           ; |2556| 
        LCR       #_fm_open             ; |2556| 
        ; call occurs [#_fm_open] ; |2556| 
        MOVL      XAR1,XAR4             ; |2556| 
        MOVL      ACC,XAR4              ; |2556| 
        BF        L271,EQ               ; |2557| 
        ; branchcc occurs ; |2557| 
        MOVZ      AR4,SP                ; |2557| 
        MOVB      ACC,#4
        MOVL      XAR5,XAR1             ; |2557| 
        MOVL      *-SP[2],ACC           ; |2557| 
        SUBB      XAR4,#7               ; |2557| 
        MOVB      ACC,#1
        LCR       #_fm_read             ; |2557| 
        ; call occurs [#_fm_read] ; |2557| 
L271:    
        MOVL      XAR4,XAR1
        LCR       #_fm_close            ; |2558| 
        ; call occurs [#_fm_close] ; |2558| 
        MOVL      XAR5,#FSL4            ; |2560| 
        MOVL      XAR4,#FSL24           ; |2560| 
        LCR       #_fm_open             ; |2560| 
        ; call occurs [#_fm_open] ; |2560| 
        MOVL      ACC,XAR4              ; |2560| 
        MOVL      XAR1,XAR4             ; |2560| 
        BF        L272,NEQ              ; |2560| 
        ; branchcc occurs ; |2560| 
        MOVL      XAR4,XAR1
        LCR       #_fm_close            ; |2563| 
        ; call occurs [#_fm_close] ; |2563| 
        MOVB      AL,#39                ; |2564| 
        BF        L273,UNC              ; |2565| 
        ; branch occurs ; |2565| 
L272:    
        MOVZ      AR4,SP                ; |2567| 
        MOVL      XAR5,#FSL25           ; |2567| 
        SUBB      XAR4,#7               ; |2567| 
        LCR       #_strcmp              ; |2567| 
        ; call occurs [#_strcmp] ; |2567| 
        CMPB      AL,#0                 ; |2567| 
        BF        L275,EQ               ; |2567| 
        ; branchcc occurs ; |2567| 
        MOVL      XAR3,#_amotheader     ; |2569| 
        MOVL      XAR4,XAR3             ; |2569| 
        LCR       #_strlen              ; |2569| 
        ; call occurs [#_strlen] ; |2569| 
        SETC      SXM
        MOV       ACC,AL                ; |2570| 
        MOVL      XAR2,ACC              ; |2570| 
        MOVL      XAR5,XAR1             ; |2570| 
        MOVL      XAR4,XAR3             ; |2570| 
        MOVL      *-SP[2],ACC           ; |2570| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |2570| 
        ; call occurs [#_fm_write] ; |2570| 
        MOVL      XAR6,ACC              ; |2570| 
        MOVL      ACC,XAR2              ; |2570| 
        CMPL      ACC,XAR6              ; |2570| 
        BF        L275,EQ               ; |2570| 
        ; branchcc occurs ; |2570| 
        MOVL      XAR4,XAR1
        LCR       #_fm_close            ; |2572| 
        ; call occurs [#_fm_close] ; |2572| 
        MOVB      AL,#40                ; |2573| 
L273:    
        LCR       #_SDcardError         ; |2573| 
        ; call occurs [#_SDcardError] ; |2573| 
L274:    
        MOV       AL,#-1                ; |2574| 
        BF        L276,UNC              ; |2574| 
        ; branch occurs ; |2574| 
L275:    
        MOVL      XAR4,XAR1
        LCR       #_fm_close            ; |2577| 
        ; call occurs [#_fm_close] ; |2577| 
        MOVB      AL,#0
L276:    
        SUBB      SP,#8                 ; |2578| 
        MOVL      XAR3,*--SP            ; |2578| 
        MOVL      XAR2,*--SP            ; |2578| 
        MOVL      XAR1,*--SP            ; |2578| 
	.dwpsn	"sdcard.c",2579,1
        LRETR
        ; return occurs
	.dwattr DW$422, DW_AT_end_file("sdcard.c")
	.dwattr DW$422, DW_AT_end_line(0xa13)
	.dwattr DW$422, DW_AT_end_column(0x01)
	.dwendtag DW$422

	.sect	".text"
	.global	_SDcardError

DW$423	.dwtag  DW_TAG_subprogram, DW_AT_name("SDcardError"), DW_AT_symbol_name("_SDcardError")
	.dwattr DW$423, DW_AT_low_pc(_SDcardError)
	.dwattr DW$423, DW_AT_high_pc(0x00)
	.dwattr DW$423, DW_AT_begin_file("sdcard.c")
	.dwattr DW$423, DW_AT_begin_line(0xa16)
	.dwattr DW$423, DW_AT_begin_column(0x06)
	.dwattr DW$423, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$423, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",2583,1

;***************************************************************
;* FNAME: _SDcardError                  FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            3 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_SDcardError:
;* AL    assigned to _pos
DW$424	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pos"), DW_AT_symbol_name("_pos")
	.dwattr DW$424, DW_AT_type(*DW$T$11)
	.dwattr DW$424, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR3
        MOVZ      AR1,AL                ; |2583| 
        ADDB      SP,#4
        LCR       #_DeselectSPI         ; |2584| 
        ; call occurs [#_DeselectSPI] ; |2584| 
        MOVL      XAR3,#_stringbuffer   ; |2587| 
        MOVL      XAR4,#FSL26           ; |2587| 
        MOVL      *-SP[2],XAR4          ; |2587| 
        MOVL      XAR4,XAR3             ; |2587| 
        MOV       *-SP[3],AR1           ; |2587| 
        LCR       #_sprintf             ; |2587| 
        ; call occurs [#_sprintf] ; |2587| 
        MOVL      XAR4,XAR3             ; |2588| 
        LCR       #_DebugStringOut      ; |2588| 
        ; call occurs [#_DebugStringOut] ; |2588| 
        MOVW      DP,#_settings+7
        MOV       AL,@_settings+7       ; |2591| 
        BF        L277,NEQ              ; |2591| 
        ; branchcc occurs ; |2591| 
        MOVW      DP,#_settings+7
        MOV       @_settings+7,#1       ; |2591| 
L277:    
        MOVW      DP,#_sdsettings+2
        MOV       @_sdsettings+2,AR1    ; |2592| 
        LCR       #_AliveStatus         ; |2593| 
        ; call occurs [#_AliveStatus] ; |2593| 
        SUBB      SP,#4
        MOVW      DP,#_settings+12
        MOV       @_settings+12,#16383  ; |2595| 
        MOVL      XAR3,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"sdcard.c",2596,1
        LRETR
        ; return occurs
	.dwattr DW$423, DW_AT_end_file("sdcard.c")
	.dwattr DW$423, DW_AT_end_line(0xa24)
	.dwattr DW$423, DW_AT_end_column(0x01)
	.dwendtag DW$423

	.sect	".text"
	.global	_ProcessSDCard

DW$425	.dwtag  DW_TAG_subprogram, DW_AT_name("ProcessSDCard"), DW_AT_symbol_name("_ProcessSDCard")
	.dwattr DW$425, DW_AT_low_pc(_ProcessSDCard)
	.dwattr DW$425, DW_AT_high_pc(0x00)
	.dwattr DW$425, DW_AT_begin_file("sdcard.c")
	.dwattr DW$425, DW_AT_begin_line(0xa27)
	.dwattr DW$425, DW_AT_begin_column(0x06)
	.dwattr DW$425, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$425, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",2600,1

;***************************************************************
;* FNAME: _ProcessSDCard                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ProcessSDCard:
        LCR       #_SDCardInitfromModbus ; |2601| 
        ; call occurs [#_SDCardInitfromModbus] ; |2601| 
        LCR       #_SDCardEraseAllFiles ; |2602| 
        ; call occurs [#_SDCardEraseAllFiles] ; |2602| 
        LCR       #_ReadWriteTransferBuffer ; |2603| 
        ; call occurs [#_ReadWriteTransferBuffer] ; |2603| 
	.dwpsn	"sdcard.c",2604,1
        LRETR
        ; return occurs
	.dwattr DW$425, DW_AT_end_file("sdcard.c")
	.dwattr DW$425, DW_AT_end_line(0xa2c)
	.dwattr DW$425, DW_AT_end_column(0x01)
	.dwendtag DW$425

	.sect	".text"
	.global	_SDCardEraseAllFiles

DW$426	.dwtag  DW_TAG_subprogram, DW_AT_name("SDCardEraseAllFiles"), DW_AT_symbol_name("_SDCardEraseAllFiles")
	.dwattr DW$426, DW_AT_low_pc(_SDCardEraseAllFiles)
	.dwattr DW$426, DW_AT_high_pc(0x00)
	.dwattr DW$426, DW_AT_begin_file("sdcard.c")
	.dwattr DW$426, DW_AT_begin_line(0xa2e)
	.dwattr DW$426, DW_AT_begin_column(0x06)
	.dwattr DW$426, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$426, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",2607,1

;***************************************************************
;* FNAME: _SDCardEraseAllFiles          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SDCardEraseAllFiles:
        MOVW      DP,#_settings+8
        MOV       AL,@_settings+8       ; |2608| 
        CMPB      AL,#1                 ; |2608| 
        BF        L279,NEQ              ; |2608| 
        ; branchcc occurs ; |2608| 
        MOVB      ACC,#2
        MOVB      XAR4,#0
        LCR       #_fm_format           ; |2610| 
        ; call occurs [#_fm_format] ; |2610| 
        CMPB      AL,#0                 ; |2610| 
        BF        L278,NEQ              ; |2610| 
        ; branchcc occurs ; |2610| 
        LCR       #_SDCardInitialise    ; |2612| 
        ; call occurs [#_SDCardInitialise] ; |2612| 
L278:    
        MOVW      DP,#_settings+8
        MOV       @_settings+8,#0       ; |2614| 
L279:    
	.dwpsn	"sdcard.c",2616,1
        LRETR
        ; return occurs
	.dwattr DW$426, DW_AT_end_file("sdcard.c")
	.dwattr DW$426, DW_AT_end_line(0xa38)
	.dwattr DW$426, DW_AT_end_column(0x01)
	.dwendtag DW$426

	.sect	".text"
	.global	_BuildFileName

DW$427	.dwtag  DW_TAG_subprogram, DW_AT_name("BuildFileName"), DW_AT_symbol_name("_BuildFileName")
	.dwattr DW$427, DW_AT_low_pc(_BuildFileName)
	.dwattr DW$427, DW_AT_high_pc(0x00)
	.dwattr DW$427, DW_AT_begin_file("sdcard.c")
	.dwattr DW$427, DW_AT_begin_line(0xa3e)
	.dwattr DW$427, DW_AT_begin_column(0x06)
	.dwattr DW$427, DW_AT_frame_base[DW_OP_breg20 -12]
	.dwattr DW$427, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",2623,1

;***************************************************************
;* FNAME: _BuildFileName                FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            5 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_BuildFileName:
;* AR4   assigned to _name
DW$428	.dwtag  DW_TAG_formal_parameter, DW_AT_name("name"), DW_AT_symbol_name("_name")
	.dwattr DW$428, DW_AT_type(*DW$T$135)
	.dwattr DW$428, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _ext
DW$429	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ext"), DW_AT_symbol_name("_ext")
	.dwattr DW$429, DW_AT_type(*DW$T$135)
	.dwattr DW$429, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        MOVW      DP,#_clocktime+7
        MOVL      *SP++,XAR2
        ADDB      SP,#6
        MOVL      XAR1,XAR4             ; |2623| 
        MOVL      XAR4,#FSL27           ; |2624| 
        MOV       AL,@_clocktime+7      ; |2624| 
        MOVL      *-SP[2],XAR4          ; |2624| 
        MOVW      DP,#_clocktime+6
        MOV       *-SP[3],AL            ; |2624| 
        MOV       AL,@_clocktime+6      ; |2624| 
        MOVL      XAR2,XAR5             ; |2623| 
        MOVW      DP,#_clocktime+5
        MOV       *-SP[4],AL            ; |2624| 
        MOVL      XAR4,XAR1             ; |2624| 
        MOV       AL,@_clocktime+5      ; |2624| 
        MOV       *-SP[5],AL            ; |2624| 
        LCR       #_sprintf             ; |2624| 
        ; call occurs [#_sprintf] ; |2624| 
        MOVL      XAR5,XAR2             ; |2627| 
        MOVL      XAR4,XAR1             ; |2627| 
        MOV       *+XAR1[6],#46         ; |2625| 
        MOV       *+XAR1[7],#0          ; |2626| 
        LCR       #_strcat              ; |2627| 
        ; call occurs [#_strcat] ; |2627| 
        SUBB      SP,#6
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"sdcard.c",2628,1
        LRETR
        ; return occurs
	.dwattr DW$427, DW_AT_end_file("sdcard.c")
	.dwattr DW$427, DW_AT_end_line(0xa44)
	.dwattr DW$427, DW_AT_end_column(0x01)
	.dwendtag DW$427

	.sect	".text"
	.global	_YearstoSecs

DW$430	.dwtag  DW_TAG_subprogram, DW_AT_name("YearstoSecs"), DW_AT_symbol_name("_YearstoSecs")
	.dwattr DW$430, DW_AT_low_pc(_YearstoSecs)
	.dwattr DW$430, DW_AT_high_pc(0x00)
	.dwattr DW$430, DW_AT_begin_file("sdcard.c")
	.dwattr DW$430, DW_AT_begin_line(0xa4f)
	.dwattr DW$430, DW_AT_begin_column(0x0f)
	.dwattr DW$430, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$430, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",2640,1

;***************************************************************
;* FNAME: _YearstoSecs                  FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_YearstoSecs:
;* AL    assigned to _years
DW$431	.dwtag  DW_TAG_formal_parameter, DW_AT_name("years"), DW_AT_symbol_name("_years")
	.dwattr DW$431, DW_AT_type(*DW$T$6)
	.dwattr DW$431, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _bcdflag
DW$432	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bcdflag"), DW_AT_symbol_name("_bcdflag")
	.dwattr DW$432, DW_AT_type(*DW$T$11)
	.dwattr DW$432, DW_AT_location[DW_OP_reg1]
        MOVL      *SP++,XAR2
        CMPB      AH,#0                 ; |2643| 
        MOV       P,#0
        MOVZ      AR2,AL                ; |2640| 
        BF        L280,EQ               ; |2643| 
        ; branchcc occurs ; |2643| 
        LSR       AL,4                  ; |2643| 
        MOV       T,AL                  ; |2643| 
        MPYB      ACC,T,#10             ; |2643| 
        MOVL      XAR6,ACC              ; |2643| 
        MOV       AL,AR2                ; |2643| 
        ANDB      AL,#15                ; |2643| 
        MOV       AH,AR6                ; |2643| 
        ADD       AL,AH                 ; |2643| 
        MOVZ      AR2,AL                ; |2643| 
L280:    
        CMPB      AL,#0                 ; |2644| 
        MOVB      XAR0,#0
        BF        L285,EQ               ; |2644| 
        ; branchcc occurs ; |2644| 
L281:    
DW$L$_YearstoSecs$4$B:
	.dwpsn	"sdcard.c",2645,0
        MOV       AL,AR0
        ANDB      AL,#3                 ; |2646| 
        BF        L282,NEQ              ; |2646| 
        ; branchcc occurs ; |2646| 
DW$L$_YearstoSecs$4$E:
DW$L$_YearstoSecs$5$B:
        MOV       AL,AR0
        MOVB      AH,#100               ; |2646| 
        FFC       XAR7,#I$$MOD          ; |2646| 
        ; call occurs [#I$$MOD] ; |2646| 
        CMPB      AL,#0                 ; |2646| 
        BF        L283,NEQ              ; |2646| 
        ; branchcc occurs ; |2646| 
DW$L$_YearstoSecs$5$E:
DW$L$_YearstoSecs$6$B:
        MOV       AL,AR0
        MOV       AH,#400               ; |2646| 
        FFC       XAR7,#I$$MOD          ; |2646| 
        ; call occurs [#I$$MOD] ; |2646| 
        CMPB      AL,#0                 ; |2646| 
        BF        L283,EQ               ; |2646| 
        ; branchcc occurs ; |2646| 
DW$L$_YearstoSecs$6$E:
L282:    
DW$L$_YearstoSecs$7$B:
        MOV       AL,#13184
        MOV       AH,#481
        BF        L284,UNC              ; |2646| 
        ; branch occurs ; |2646| 
DW$L$_YearstoSecs$7$E:
L283:    
DW$L$_YearstoSecs$8$B:
        MOV       AL,#34048
        MOV       AH,#482
DW$L$_YearstoSecs$8$E:
L284:    
DW$L$_YearstoSecs$9$B:
        ADDL      P,ACC
        MOV       AL,AR0
        ADDB      AL,#1                 ; |2644| 
        MOVZ      AR0,AL                ; |2644| 
        MOV       AL,AR2                ; |2644| 
        CMP       AL,AR0                ; |2644| 
	.dwpsn	"sdcard.c",2648,0
        BF        L281,HI               ; |2644| 
        ; branchcc occurs ; |2644| 
DW$L$_YearstoSecs$9$E:
L285:    
        MOVL      XAR2,*--SP            ; |2649| 
        MOVL      ACC,P                 ; |2649| 
	.dwpsn	"sdcard.c",2650,1
        LRETR
        ; return occurs

DW$433	.dwtag  DW_TAG_loop
	.dwattr DW$433, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L281:1:1471518989")
	.dwattr DW$433, DW_AT_begin_file("sdcard.c")
	.dwattr DW$433, DW_AT_begin_line(0xa54)
	.dwattr DW$433, DW_AT_end_line(0xa58)
DW$434	.dwtag  DW_TAG_loop_range
	.dwattr DW$434, DW_AT_low_pc(DW$L$_YearstoSecs$4$B)
	.dwattr DW$434, DW_AT_high_pc(DW$L$_YearstoSecs$4$E)
DW$435	.dwtag  DW_TAG_loop_range
	.dwattr DW$435, DW_AT_low_pc(DW$L$_YearstoSecs$5$B)
	.dwattr DW$435, DW_AT_high_pc(DW$L$_YearstoSecs$5$E)
DW$436	.dwtag  DW_TAG_loop_range
	.dwattr DW$436, DW_AT_low_pc(DW$L$_YearstoSecs$6$B)
	.dwattr DW$436, DW_AT_high_pc(DW$L$_YearstoSecs$6$E)
DW$437	.dwtag  DW_TAG_loop_range
	.dwattr DW$437, DW_AT_low_pc(DW$L$_YearstoSecs$7$B)
	.dwattr DW$437, DW_AT_high_pc(DW$L$_YearstoSecs$7$E)
DW$438	.dwtag  DW_TAG_loop_range
	.dwattr DW$438, DW_AT_low_pc(DW$L$_YearstoSecs$8$B)
	.dwattr DW$438, DW_AT_high_pc(DW$L$_YearstoSecs$8$E)
DW$439	.dwtag  DW_TAG_loop_range
	.dwattr DW$439, DW_AT_low_pc(DW$L$_YearstoSecs$9$B)
	.dwattr DW$439, DW_AT_high_pc(DW$L$_YearstoSecs$9$E)
	.dwendtag DW$433

	.dwattr DW$430, DW_AT_end_file("sdcard.c")
	.dwattr DW$430, DW_AT_end_line(0xa5a)
	.dwattr DW$430, DW_AT_end_column(0x01)
	.dwendtag DW$430

	.sect	".text"
	.global	_DaysThisYear

DW$440	.dwtag  DW_TAG_subprogram, DW_AT_name("DaysThisYear"), DW_AT_symbol_name("_DaysThisYear")
	.dwattr DW$440, DW_AT_low_pc(_DaysThisYear)
	.dwattr DW$440, DW_AT_high_pc(0x00)
	.dwattr DW$440, DW_AT_begin_file("sdcard.c")
	.dwattr DW$440, DW_AT_begin_line(0xa63)
	.dwattr DW$440, DW_AT_begin_column(0x0f)
	.dwattr DW$440, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$440, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",2660,1

;***************************************************************
;* FNAME: _DaysThisYear                 FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_DaysThisYear:
;* AL    assigned to _date
DW$441	.dwtag  DW_TAG_formal_parameter, DW_AT_name("date"), DW_AT_symbol_name("_date")
	.dwattr DW$441, DW_AT_type(*DW$T$6)
	.dwattr DW$441, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _month
DW$442	.dwtag  DW_TAG_formal_parameter, DW_AT_name("month"), DW_AT_symbol_name("_month")
	.dwattr DW$442, DW_AT_type(*DW$T$6)
	.dwattr DW$442, DW_AT_location[DW_OP_reg1]
;* AR4   assigned to _year
DW$443	.dwtag  DW_TAG_formal_parameter, DW_AT_name("year"), DW_AT_symbol_name("_year")
	.dwattr DW$443, DW_AT_type(*DW$T$6)
	.dwattr DW$443, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _bcdflag
DW$444	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bcdflag"), DW_AT_symbol_name("_bcdflag")
	.dwattr DW$444, DW_AT_type(*DW$T$11)
	.dwattr DW$444, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOVB      XAR1,#0
        MOVZ      AR3,AH                ; |2660| 
        MOVZ      AR0,AL                ; |2660| 
        MOV       AL,AR5                ; |2660| 
        BF        L286,EQ               ; |2663| 
        ; branchcc occurs ; |2663| 
        MOV       AL,AR4                ; |2665| 
        LSR       AL,4                  ; |2665| 
        MOV       T,AL                  ; |2665| 
        MPYB      P,T,#10               ; |2665| 
        AND       AL,AR4,#0x000f        ; |2665| 
        ADD       AL,PL                 ; |2665| 
        MOVZ      AR4,AL                ; |2665| 
        MOV       AL,AR3                ; |2665| 
        LSR       AL,4                  ; |2666| 
        MOV       T,AL                  ; |2666| 
        MOV       AL,AR3                ; |2666| 
        MPYB      P,T,#10               ; |2666| 
        ANDB      AL,#15                ; |2666| 
        ADD       AL,PL                 ; |2666| 
        MOVZ      AR3,AL                ; |2666| 
        MOV       AL,AR0                ; |2667| 
        LSR       AL,4                  ; |2667| 
        MOV       T,AL                  ; |2667| 
        AND       AL,AR0,#0x000f        ; |2667| 
        MPYB      P,T,#10               ; |2667| 
        ADD       AL,PL                 ; |2667| 
        MOVZ      AR0,AL                ; |2667| 
L286:    
        MOV       AL,AR3                ; |2669| 
        MOVB      XAR2,#1               ; |2669| 
        CMPB      AL,#1                 ; |2669| 
        BF        L295,LOS              ; |2669| 
        ; branchcc occurs ; |2669| 
L287:    
DW$L$_DaysThisYear$4$B:
	.dwpsn	"sdcard.c",2670,0
        MOV       AL,AR2
        CMPB      AL,#2                 ; |2671| 
        BF        L291,EQ               ; |2671| 
        ; branchcc occurs ; |2671| 
DW$L$_DaysThisYear$4$E:
DW$L$_DaysThisYear$5$B:
        ANDB      AL,#1                 ; |2671| 
        BF        L288,NEQ              ; |2671| 
        ; branchcc occurs ; |2671| 
DW$L$_DaysThisYear$5$E:
DW$L$_DaysThisYear$6$B:
        MOV       AL,AR2
        CMPB      AL,#8                 ; |2671| 
        BF        L289,LT               ; |2671| 
        ; branchcc occurs ; |2671| 
DW$L$_DaysThisYear$6$E:
DW$L$_DaysThisYear$7$B:
        BF        L290,UNC              ; |2671| 
        ; branch occurs ; |2671| 
DW$L$_DaysThisYear$7$E:
L288:    
DW$L$_DaysThisYear$8$B:
        MOV       AL,AR2
        CMPB      AL,#8                 ; |2671| 
        BF        L290,LT               ; |2671| 
        ; branchcc occurs ; |2671| 
DW$L$_DaysThisYear$8$E:
L289:    
DW$L$_DaysThisYear$9$B:
        MOVB      AL,#30                ; |2671| 
        BF        L294,UNC              ; |2671| 
        ; branch occurs ; |2671| 
DW$L$_DaysThisYear$9$E:
L290:    
DW$L$_DaysThisYear$10$B:
        MOVB      AL,#31                ; |2671| 
        BF        L294,UNC              ; |2671| 
        ; branch occurs ; |2671| 
DW$L$_DaysThisYear$10$E:
L291:    
DW$L$_DaysThisYear$11$B:
        AND       AL,AR4,#0x0003        ; |2671| 
        BF        L292,NEQ              ; |2671| 
        ; branchcc occurs ; |2671| 
DW$L$_DaysThisYear$11$E:
DW$L$_DaysThisYear$12$B:
        MOV       AL,AR4                ; |2671| 
        MOVB      AH,#100               ; |2671| 
        FFC       XAR7,#U$$MOD          ; |2671| 
        ; call occurs [#U$$MOD] ; |2671| 
        CMPB      AL,#0                 ; |2671| 
        BF        L293,NEQ              ; |2671| 
        ; branchcc occurs ; |2671| 
DW$L$_DaysThisYear$12$E:
DW$L$_DaysThisYear$13$B:
        MOV       AL,AR4                ; |2671| 
        MOV       AH,#400               ; |2671| 
        FFC       XAR7,#U$$MOD          ; |2671| 
        ; call occurs [#U$$MOD] ; |2671| 
        CMPB      AL,#0                 ; |2671| 
        BF        L293,EQ               ; |2671| 
        ; branchcc occurs ; |2671| 
DW$L$_DaysThisYear$13$E:
L292:    
DW$L$_DaysThisYear$14$B:
        MOVB      AL,#28                ; |2671| 
        BF        L294,UNC              ; |2671| 
        ; branch occurs ; |2671| 
DW$L$_DaysThisYear$14$E:
L293:    
DW$L$_DaysThisYear$15$B:
        MOVB      AL,#29                ; |2671| 
DW$L$_DaysThisYear$15$E:
L294:    
DW$L$_DaysThisYear$16$B:
        SETC      SXM
        MOVL      XAR5,#86400           ; |2672| 
        MOV       ACC,AL                ; |2672| 
        MOVL      XT,XAR5               ; |2672| 
        IMPYXUL   P,XT,ACC              ; |2672| 
        MOVL      ACC,XAR1              ; |2672| 
        ADDL      ACC,P
        MOVL      XAR1,ACC              ; |2672| 
        MOV       AL,AR2                ; |2672| 
        ADDB      AL,#1                 ; |2669| 
        MOVZ      AR2,AL                ; |2669| 
        MOV       AL,AR3                ; |2669| 
        CMP       AL,AR2                ; |2669| 
	.dwpsn	"sdcard.c",2673,0
        BF        L287,HI               ; |2669| 
        ; branchcc occurs ; |2669| 
DW$L$_DaysThisYear$16$E:
L295:    
        MOVL      XAR4,#86400           ; |2674| 
        MOVL      XAR3,*--SP            ; |2675| 
        MOV       AL,AR0                ; |2674| 
        MOVL      XT,XAR4               ; |2674| 
        MOVL      XAR2,*--SP            ; |2675| 
        ADDB      AL,#-1
        MOVU      ACC,AL
        IMPYXUL   P,XT,ACC              ; |2674| 
        MOVL      ACC,XAR1              ; |2674| 
        MOVL      XAR1,*--SP            ; |2675| 
        ADDL      ACC,P
	.dwpsn	"sdcard.c",2676,1
        LRETR
        ; return occurs

DW$445	.dwtag  DW_TAG_loop
	.dwattr DW$445, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L287:1:1471518989")
	.dwattr DW$445, DW_AT_begin_file("sdcard.c")
	.dwattr DW$445, DW_AT_begin_line(0xa6d)
	.dwattr DW$445, DW_AT_end_line(0xa71)
DW$446	.dwtag  DW_TAG_loop_range
	.dwattr DW$446, DW_AT_low_pc(DW$L$_DaysThisYear$4$B)
	.dwattr DW$446, DW_AT_high_pc(DW$L$_DaysThisYear$4$E)
DW$447	.dwtag  DW_TAG_loop_range
	.dwattr DW$447, DW_AT_low_pc(DW$L$_DaysThisYear$12$B)
	.dwattr DW$447, DW_AT_high_pc(DW$L$_DaysThisYear$12$E)
DW$448	.dwtag  DW_TAG_loop_range
	.dwattr DW$448, DW_AT_low_pc(DW$L$_DaysThisYear$11$B)
	.dwattr DW$448, DW_AT_high_pc(DW$L$_DaysThisYear$11$E)
DW$449	.dwtag  DW_TAG_loop_range
	.dwattr DW$449, DW_AT_low_pc(DW$L$_DaysThisYear$13$B)
	.dwattr DW$449, DW_AT_high_pc(DW$L$_DaysThisYear$13$E)
DW$450	.dwtag  DW_TAG_loop_range
	.dwattr DW$450, DW_AT_low_pc(DW$L$_DaysThisYear$7$B)
	.dwattr DW$450, DW_AT_high_pc(DW$L$_DaysThisYear$7$E)
DW$451	.dwtag  DW_TAG_loop_range
	.dwattr DW$451, DW_AT_low_pc(DW$L$_DaysThisYear$5$B)
	.dwattr DW$451, DW_AT_high_pc(DW$L$_DaysThisYear$5$E)
DW$452	.dwtag  DW_TAG_loop_range
	.dwattr DW$452, DW_AT_low_pc(DW$L$_DaysThisYear$6$B)
	.dwattr DW$452, DW_AT_high_pc(DW$L$_DaysThisYear$6$E)
DW$453	.dwtag  DW_TAG_loop_range
	.dwattr DW$453, DW_AT_low_pc(DW$L$_DaysThisYear$8$B)
	.dwattr DW$453, DW_AT_high_pc(DW$L$_DaysThisYear$8$E)
DW$454	.dwtag  DW_TAG_loop_range
	.dwattr DW$454, DW_AT_low_pc(DW$L$_DaysThisYear$9$B)
	.dwattr DW$454, DW_AT_high_pc(DW$L$_DaysThisYear$9$E)
DW$455	.dwtag  DW_TAG_loop_range
	.dwattr DW$455, DW_AT_low_pc(DW$L$_DaysThisYear$10$B)
	.dwattr DW$455, DW_AT_high_pc(DW$L$_DaysThisYear$10$E)
DW$456	.dwtag  DW_TAG_loop_range
	.dwattr DW$456, DW_AT_low_pc(DW$L$_DaysThisYear$14$B)
	.dwattr DW$456, DW_AT_high_pc(DW$L$_DaysThisYear$14$E)
DW$457	.dwtag  DW_TAG_loop_range
	.dwattr DW$457, DW_AT_low_pc(DW$L$_DaysThisYear$15$B)
	.dwattr DW$457, DW_AT_high_pc(DW$L$_DaysThisYear$15$E)
DW$458	.dwtag  DW_TAG_loop_range
	.dwattr DW$458, DW_AT_low_pc(DW$L$_DaysThisYear$16$B)
	.dwattr DW$458, DW_AT_high_pc(DW$L$_DaysThisYear$16$E)
	.dwendtag DW$445

	.dwattr DW$440, DW_AT_end_file("sdcard.c")
	.dwattr DW$440, DW_AT_end_line(0xa74)
	.dwattr DW$440, DW_AT_end_column(0x01)
	.dwendtag DW$440

	.sect	".text"
	.global	_BuildTimeStamp

DW$459	.dwtag  DW_TAG_subprogram, DW_AT_name("BuildTimeStamp"), DW_AT_symbol_name("_BuildTimeStamp")
	.dwattr DW$459, DW_AT_low_pc(_BuildTimeStamp)
	.dwattr DW$459, DW_AT_high_pc(0x00)
	.dwattr DW$459, DW_AT_begin_file("sdcard.c")
	.dwattr DW$459, DW_AT_begin_line(0xa7b)
	.dwattr DW$459, DW_AT_begin_column(0x0f)
	.dwattr DW$459, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$459, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",2684,1

;***************************************************************
;* FNAME: _BuildTimeStamp               FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_BuildTimeStamp:
        MOVL      *SP++,XAR1
        MOVW      DP,#_clocktime+3
        MOVL      *SP++,XAR2
        MOVZ      AR7,@_clocktime+3     ; |2687| 
        MOVW      DP,#_clocktime+2
        MOVZ      AR6,@_clocktime+2     ; |2687| 
        MOVW      DP,#_clocktime+1
        MOV       AH,@_clocktime+1      ; |2687| 
        MOV       AL,AH                 ; |2687| 
        LSR       AL,4                  ; |2687| 
        MOV       T,AL                  ; |2687| 
        AND       AL,AH,#0x000f         ; |2687| 
        MOV       AH,AR6                ; |2687| 
        MPYB      P,T,#10               ; |2687| 
        LSR       AH,4                  ; |2687| 
        ADD       AL,PL                 ; |2687| 
        MOV       T,AH                  ; |2687| 
        MPYB      P,T,#10               ; |2687| 
        AND       AH,AR6,#0x000f        ; |2687| 
        ADD       AH,PL                 ; |2687| 
        MOV       T,AH                  ; |2687| 
        MPYB      P,T,#60               ; |2687| 
        ADD       PL,AL                 ; |2687| 
        MOV       AL,AR7                ; |2687| 
        LSR       AL,4                  ; |2687| 
        MOV       T,AL                  ; |2687| 
        MPYB      ACC,T,#10             ; |2687| 
        MOVL      XAR6,ACC              ; |2687| 
        MOVW      DP,#_clocktime+7
        MOV       AH,AR6                ; |2687| 
        AND       AL,AR7,#0x000f        ; |2687| 
        MOV       T,#3600               ; |2687| 
        ADD       AL,AH                 ; |2687| 
        MOVZ      AR2,@_clocktime+7     ; |2689| 
        MPYXU     ACC,T,AL              ; |2687| 
        ADDU      ACC,PL                ; |2687| 
        MOVL      XAR1,ACC              ; |2687| 
        MOV       AL,AR2                ; |2689| 
        MOVB      AH,#1                 ; |2689| 
        LCR       #_YearstoSecs         ; |2689| 
        ; call occurs [#_YearstoSecs] ; |2689| 
        MOVW      DP,#_clocktime+5
        ADDL      XAR1,ACC
        MOV       AL,@_clocktime+5      ; |2690| 
        MOVW      DP,#_clocktime+6
        MOVZ      AR4,AR2               ; |2690| 
        MOVB      XAR5,#1               ; |2690| 
        MOV       AH,@_clocktime+6      ; |2690| 
        LCR       #_DaysThisYear        ; |2690| 
        ; call occurs [#_DaysThisYear] ; |2690| 
        MOVL      XAR2,*--SP            ; |2691| 
        ADDL      ACC,XAR1
        MOVL      XAR1,*--SP            ; |2691| 
	.dwpsn	"sdcard.c",2692,1
        LRETR
        ; return occurs
	.dwattr DW$459, DW_AT_end_file("sdcard.c")
	.dwattr DW$459, DW_AT_end_line(0xa84)
	.dwattr DW$459, DW_AT_end_column(0x01)
	.dwendtag DW$459

	.sect	".text"
	.global	_SaveSDSettings

DW$460	.dwtag  DW_TAG_subprogram, DW_AT_name("SaveSDSettings"), DW_AT_symbol_name("_SaveSDSettings")
	.dwattr DW$460, DW_AT_low_pc(_SaveSDSettings)
	.dwattr DW$460, DW_AT_high_pc(0x00)
	.dwattr DW$460, DW_AT_begin_file("sdcard.c")
	.dwattr DW$460, DW_AT_begin_line(0xa87)
	.dwattr DW$460, DW_AT_begin_column(0x06)
	.dwattr DW$460, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$460, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",2696,1

;***************************************************************
;* FNAME: _SaveSDSettings               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SaveSDSettings:
        MOV       AL,#320               ; |2700| 
        MOVL      XAR4,#_sdsettings     ; |2700| 
        MOVB      AH,#4                 ; |2700| 
        LCR       #_SaveSafeGeneric     ; |2700| 
        ; call occurs [#_SaveSafeGeneric] ; |2700| 
	.dwpsn	"sdcard.c",2701,1
        LRETR
        ; return occurs
	.dwattr DW$460, DW_AT_end_file("sdcard.c")
	.dwattr DW$460, DW_AT_end_line(0xa8d)
	.dwattr DW$460, DW_AT_end_column(0x01)
	.dwendtag DW$460

	.sect	".text"
	.global	_CalibrationtdtoSDCardFile

DW$461	.dwtag  DW_TAG_subprogram, DW_AT_name("CalibrationtdtoSDCardFile"), DW_AT_symbol_name("_CalibrationtdtoSDCardFile")
	.dwattr DW$461, DW_AT_low_pc(_CalibrationtdtoSDCardFile)
	.dwattr DW$461, DW_AT_high_pc(0x00)
	.dwattr DW$461, DW_AT_begin_file("sdcard.c")
	.dwattr DW$461, DW_AT_begin_line(0xa91)
	.dwattr DW$461, DW_AT_begin_column(0x05)
	.dwattr DW$461, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$461, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",2706,1

;***************************************************************
;* FNAME: _CalibrationtdtoSDCardFile    FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_CalibrationtdtoSDCardFile:
        MOVL      *SP++,XAR1
        MOVW      DP,#_settings+7
        MOVL      *SP++,XAR2
        MOV       AL,@_settings+7       ; |2713| 
        ADDB      SP,#2
        BF        L301,NEQ              ; |2713| 
        ; branchcc occurs ; |2713| 
        MOVW      DP,#_sdsettings
        MOV       AL,@_sdsettings       ; |2713| 
        CMPB      AL,#1                 ; |2713| 
        BF        L301,NEQ              ; |2713| 
        ; branchcc occurs ; |2713| 
        MOVW      DP,#_settings+11
        MOV       AL,@_settings+11      ; |2713| 
        CMPB      AL,#1                 ; |2713| 
        BF        L301,EQ               ; |2713| 
        ; branchcc occurs ; |2713| 
        MOVL      XAR4,#FSL28           ; |2715| 
        LCR       #_DebugStringOut      ; |2715| 
        ; call occurs [#_DebugStringOut] ; |2715| 
        MOVB      AL,#33                ; |2716| 
        MOVL      XAR4,#_sdcarddir+27   ; |2716| 
        LCR       #_SDCardSetupDirectory ; |2716| 
        ; call occurs [#_SDCardSetupDirectory] ; |2716| 
        CMPB      AL,#0                 ; |2716| 
        BF        L299,NEQ              ; |2716| 
        ; branchcc occurs ; |2716| 
        LCR       #_CreateNewCalibtdFile ; |2717| 
        ; call occurs [#_CreateNewCalibtdFile] ; |2717| 
        MOVL      XAR5,#FSL18           ; |2720| 
        MOVL      XAR4,#_calibtdfile    ; |2720| 
        LCR       #_fm_open             ; |2720| 
        ; call occurs [#_fm_open] ; |2720| 
        MOVL      ACC,XAR4              ; |2720| 
        MOVL      XAR2,XAR4             ; |2720| 
        BF        L296,NEQ              ; |2720| 
        ; branchcc occurs ; |2720| 
        MOVL      XAR4,XAR2
        LCR       #_fm_close            ; |2723| 
        ; call occurs [#_fm_close] ; |2723| 
        MOVB      AL,#51                ; |2724| 
        BF        L298,UNC              ; |2725| 
        ; branch occurs ; |2725| 
L296:    
        MOVB      XAR1,#0
	.dwpsn	"sdcard.c",2733,0
        MOVB      XAR0,#0
L297:    
DW$L$_CalibrationtdtoSDCardFile$8$B:
	.dwpsn	"sdcard.c",2734,0
        MOVL      XAR4,#_calibrationtd  ; |2735| 
        MOV       AL,*+XAR4[AR1]        ; |2735| 
        MOV       AH,AL                 ; |2735| 
        LSR       AH,8                  ; |2735| 
        MOVL      XAR4,#_f_databuf      ; |2735| 
        ADDB      XAR1,#1               ; |2733| 
        MOV       *+XAR4[AR0],AH        ; |2735| 
        ANDB      AL,#255               ; |2737| 
        ADDB      XAR0,#1               ; |2737| 
        MOV       *+XAR4[AR0],AL        ; |2737| 
        MOV       AL,AR1                ; |2733| 
        CMPB      AL,#7                 ; |2733| 
        ADDB      XAR0,#1               ; |2738| 
	.dwpsn	"sdcard.c",2739,0
        BF        L297,LO               ; |2733| 
        ; branchcc occurs ; |2733| 
DW$L$_CalibrationtdtoSDCardFile$8$E:
        MOVB      ACC,#14
        MOVL      XAR5,XAR2             ; |2740| 
        MOVL      *-SP[2],ACC           ; |2740| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |2740| 
        ; call occurs [#_fm_write] ; |2740| 
        MOVL      XAR6,ACC              ; |2740| 
        MOVB      ACC,#14
        CMPL      ACC,XAR6              ; |2740| 
        BF        L300,EQ               ; |2740| 
        ; branchcc occurs ; |2740| 
        MOVL      XAR4,XAR2
        LCR       #_fm_close            ; |2742| 
        ; call occurs [#_fm_close] ; |2742| 
        MOVB      AL,#52                ; |2743| 
L298:    
        LCR       #_SDcardError         ; |2743| 
        ; call occurs [#_SDcardError] ; |2743| 
L299:    
        MOV       AL,#-1                ; |2744| 
        BF        L302,UNC              ; |2744| 
        ; branch occurs ; |2744| 
L300:    
        MOVL      XAR4,XAR2
        LCR       #_fm_close            ; |2747| 
        ; call occurs [#_fm_close] ; |2747| 
L301:    
        MOVB      AL,#0
L302:    
        SUBB      SP,#2                 ; |2752| 
        MOVL      XAR2,*--SP            ; |2752| 
        MOVL      XAR1,*--SP            ; |2752| 
	.dwpsn	"sdcard.c",2753,1
        LRETR
        ; return occurs

DW$462	.dwtag  DW_TAG_loop
	.dwattr DW$462, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L297:1:1471518989")
	.dwattr DW$462, DW_AT_begin_file("sdcard.c")
	.dwattr DW$462, DW_AT_begin_line(0xaad)
	.dwattr DW$462, DW_AT_end_line(0xab3)
DW$463	.dwtag  DW_TAG_loop_range
	.dwattr DW$463, DW_AT_low_pc(DW$L$_CalibrationtdtoSDCardFile$8$B)
	.dwattr DW$463, DW_AT_high_pc(DW$L$_CalibrationtdtoSDCardFile$8$E)
	.dwendtag DW$462

	.dwattr DW$461, DW_AT_end_file("sdcard.c")
	.dwattr DW$461, DW_AT_end_line(0xac1)
	.dwattr DW$461, DW_AT_end_column(0x01)
	.dwendtag DW$461

	.sect	".text"
	.global	_ReadCalibrationtdfromSDCardFile

DW$464	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadCalibrationtdfromSDCardFile"), DW_AT_symbol_name("_ReadCalibrationtdfromSDCardFile")
	.dwattr DW$464, DW_AT_low_pc(_ReadCalibrationtdfromSDCardFile)
	.dwattr DW$464, DW_AT_high_pc(0x00)
	.dwattr DW$464, DW_AT_begin_file("sdcard.c")
	.dwattr DW$464, DW_AT_begin_line(0xac3)
	.dwattr DW$464, DW_AT_begin_column(0x05)
	.dwattr DW$464, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$464, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",2756,1

;***************************************************************
;* FNAME: _ReadCalibrationtdfromSDCardFile FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_ReadCalibrationtdfromSDCardFile:
        MOVL      *SP++,XAR1
        MOVW      DP,#_settings+7
        ADDB      SP,#2
        MOV       AL,@_settings+7       ; |2764| 
        BF        L308,NEQ              ; |2764| 
        ; branchcc occurs ; |2764| 
        MOVW      DP,#_sdsettings
        MOV       AL,@_sdsettings       ; |2764| 
        CMPB      AL,#1                 ; |2764| 
        BF        L308,NEQ              ; |2764| 
        ; branchcc occurs ; |2764| 
        MOVW      DP,#_settings+11
        MOV       AL,@_settings+11      ; |2764| 
        CMPB      AL,#1                 ; |2764| 
        BF        L308,EQ               ; |2764| 
        ; branchcc occurs ; |2764| 
        LCR       #_Fram1MagicNumberRead ; |2766| 
        ; call occurs [#_Fram1MagicNumberRead] ; |2766| 
        MOVZ      AR1,AL                ; |2766| 
        MOVL      XAR4,#_sdcarddir+27   ; |2767| 
        MOVB      AL,#34                ; |2767| 
        LCR       #_SDCardSetupDirectory ; |2767| 
        ; call occurs [#_SDCardSetupDirectory] ; |2767| 
        CMPB      AL,#0                 ; |2767| 
        BF        L303,EQ               ; |2767| 
        ; branchcc occurs ; |2767| 
        MOV       AL,#-1                ; |2767| 
        BF        L309,UNC              ; |2767| 
        ; branch occurs ; |2767| 
L303:    
        MOVL      XAR5,#FSL3            ; |2768| 
        MOVL      XAR4,#_calibtdfile    ; |2768| 
        LCR       #_fm_open             ; |2768| 
        ; call occurs [#_fm_open] ; |2768| 
        MOVW      DP,#_fileregs+10
        MOVL      @_fileregs+10,XAR4    ; |2768| 
        MOVW      DP,#_fileregs+10
        MOVL      ACC,@_fileregs+10     ; |2771| 
        BF        L306,NEQ              ; |2771| 
        ; branchcc occurs ; |2771| 
        MOVL      XAR4,ACC              ; |2794| 
        LCR       #_fm_close            ; |2794| 
        ; call occurs [#_fm_close] ; |2794| 
        MOV       AL,AR1                ; |2794| 
        BF        L305,EQ               ; |2795| 
        ; branchcc occurs ; |2795| 
        MOVB      AL,#3                 ; |2803| 
        LCR       #_CalibrationtdUpdate ; |2803| 
        ; call occurs [#_CalibrationtdUpdate] ; |2803| 
L304:    
        MOVW      DP,#_sdsettings+3
        AND       @_sdsettings+3,#0xffef ; |2804| 
        BF        L308,UNC              ; |2804| 
        ; branch occurs ; |2804| 
L305:    
        LCR       #_CalibrationtdtoSDCardFile ; |2797| 
        ; call occurs [#_CalibrationtdtoSDCardFile] ; |2797| 
        BF        L304,UNC              ; |2799| 
        ; branch occurs ; |2799| 
L306:    
        MOVW      DP,#_fileregs+10
        MOVB      ACC,#14
        MOVL      XAR4,#_fileregs+12    ; |2776| 
        MOVL      XAR5,@_fileregs+10    ; |2776| 
        MOVL      *-SP[2],ACC           ; |2776| 
        MOVB      ACC,#1
        LCR       #_fm_read             ; |2776| 
        ; call occurs [#_fm_read] ; |2776| 
        MOVB      XAR1,#0
	.dwpsn	"sdcard.c",2780,0
        MOVB      XAR0,#0
L307:    
DW$L$_ReadCalibrationtdfromSDCardFile$12$B:
	.dwpsn	"sdcard.c",2781,0
        MOVL      XAR4,#_fileregs+12    ; |2782| 
        MOV       ACC,*+XAR4[AR0] << #8 ; |2782| 
        ADDB      XAR0,#1               ; |2784| 
        MOV       AH,*+XAR4[AR0]        ; |2784| 
        ANDB      AH,#0xff              ; |2784| 
        ADD       AL,AH                 ; |2784| 
        MOVL      XAR4,#_calibrationtd  ; |2786| 
        MOV       *+XAR4[AR1],AL        ; |2786| 
        ADDB      XAR1,#1               ; |2780| 
        MOV       AL,AR1                ; |2780| 
        ADDB      XAR0,#1               ; |2785| 
        CMPB      AL,#7                 ; |2780| 
	.dwpsn	"sdcard.c",2787,0
        BF        L307,LO               ; |2780| 
        ; branchcc occurs ; |2780| 
DW$L$_ReadCalibrationtdfromSDCardFile$12$E:
        MOVW      DP,#_fileregs+10
        MOVL      XAR4,@_fileregs+10    ; |2789| 
        LCR       #_fm_close            ; |2789| 
        ; call occurs [#_fm_close] ; |2789| 
        MOVW      DP,#_sdsettings+3
        OR        @_sdsettings+3,#0x0010 ; |2790| 
L308:    
        MOVB      AL,#0
L309:    
        SUBB      SP,#2                 ; |2811| 
        MOVL      XAR1,*--SP            ; |2811| 
	.dwpsn	"sdcard.c",2812,1
        LRETR
        ; return occurs

DW$465	.dwtag  DW_TAG_loop
	.dwattr DW$465, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sdcard.asm:L307:1:1471518989")
	.dwattr DW$465, DW_AT_begin_file("sdcard.c")
	.dwattr DW$465, DW_AT_begin_line(0xadc)
	.dwattr DW$465, DW_AT_end_line(0xae3)
DW$466	.dwtag  DW_TAG_loop_range
	.dwattr DW$466, DW_AT_low_pc(DW$L$_ReadCalibrationtdfromSDCardFile$12$B)
	.dwattr DW$466, DW_AT_high_pc(DW$L$_ReadCalibrationtdfromSDCardFile$12$E)
	.dwendtag DW$465

	.dwattr DW$464, DW_AT_end_file("sdcard.c")
	.dwattr DW$464, DW_AT_end_line(0xafc)
	.dwattr DW$464, DW_AT_end_column(0x01)
	.dwendtag DW$464

	.sect	".text"
	.global	_CreateNewCalibtdFile

DW$467	.dwtag  DW_TAG_subprogram, DW_AT_name("CreateNewCalibtdFile"), DW_AT_symbol_name("_CreateNewCalibtdFile")
	.dwattr DW$467, DW_AT_low_pc(_CreateNewCalibtdFile)
	.dwattr DW$467, DW_AT_high_pc(0x00)
	.dwattr DW$467, DW_AT_begin_file("sdcard.c")
	.dwattr DW$467, DW_AT_begin_line(0xb00)
	.dwattr DW$467, DW_AT_begin_column(0x05)
	.dwattr DW$467, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$467, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",2817,1

;***************************************************************
;* FNAME: _CreateNewCalibtdFile         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CreateNewCalibtdFile:
        MOVL      XAR4,#_calibtdfile    ; |2818| 
        LCR       #_CreateFile          ; |2818| 
        ; call occurs [#_CreateFile] ; |2818| 
        CMPB      AL,#0                 ; |2818| 
        BF        L310,EQ               ; |2818| 
        ; branchcc occurs ; |2818| 
        MOV       AL,#-1                ; |2818| 
        BF        L311,UNC              ; |2818| 
        ; branch occurs ; |2818| 
L310:    
        MOVB      AL,#0
L311:    
	.dwpsn	"sdcard.c",2820,1
        LRETR
        ; return occurs
	.dwattr DW$467, DW_AT_end_file("sdcard.c")
	.dwattr DW$467, DW_AT_end_line(0xb04)
	.dwattr DW$467, DW_AT_end_column(0x01)
	.dwendtag DW$467

	.sect	".text"
	.global	_RunTimeMinUpdate

DW$468	.dwtag  DW_TAG_subprogram, DW_AT_name("RunTimeMinUpdate"), DW_AT_symbol_name("_RunTimeMinUpdate")
	.dwattr DW$468, DW_AT_low_pc(_RunTimeMinUpdate)
	.dwattr DW$468, DW_AT_high_pc(0x00)
	.dwattr DW$468, DW_AT_begin_file("sdcard.c")
	.dwattr DW$468, DW_AT_begin_line(0xb0a)
	.dwattr DW$468, DW_AT_begin_column(0x06)
	.dwattr DW$468, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$468, DW_AT_skeletal(0x01)
	.dwpsn	"sdcard.c",2827,1
DW$469	.dwtag  DW_TAG_variable, DW_AT_name("previousmins"), DW_AT_symbol_name("_previousmins$3")
	.dwattr DW$469, DW_AT_type(*DW$T$11)
	.dwattr DW$469, DW_AT_location[DW_OP_addr _previousmins$3]

;***************************************************************
;* FNAME: _RunTimeMinUpdate             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_RunTimeMinUpdate:
        MOVW      DP,#_clocktime+2
        MOV       AL,@_clocktime+2      ; |2830| 
        MOVW      DP,#_previousmins$3
        CMP       AL,@_previousmins$3   ; |2830| 
        BF        L312,EQ               ; |2830| 
        ; branchcc occurs ; |2830| 
        MOVW      DP,#_previousmins$3
        MOV       @_previousmins$3,AL   ; |2832| 
        LCR       #_EngineRunTimeUpdate ; |2833| 
        ; call occurs [#_EngineRunTimeUpdate] ; |2833| 
L312:    
	.dwpsn	"sdcard.c",2836,1
        LRETR
        ; return occurs
	.dwattr DW$468, DW_AT_end_file("sdcard.c")
	.dwattr DW$468, DW_AT_end_line(0xb14)
	.dwattr DW$468, DW_AT_end_column(0x01)
	.dwendtag DW$468

;***************************************************************
;* FAR STRINGS                                                 *
;***************************************************************
	.sect	".econst"
	.align	2
FSL1:	.string	"SDERROR!SDCardLogUpdate",13,10,0
	.align	2
FSL2:	.string	"*.*",0
	.align	2
FSL3:	.string	"r",0
	.align	2
FSL4:	.string	"a",0
	.align	2
FSL5:	.string	"*.bin",0
	.align	2
FSL6:	.string	"%2u%2u%2u",0
	.align	2
FSL7:	.string	"SD Card Init Error - sd card inoperable",13,10,0
	.align	2
FSL8:	.string	"..",0
	.align	2
FSL9:	.string	"SDSetup shortterm error",13,10,0
	.align	2
FSL10:	.string	"SDel:%s",13,10,0
	.align	2
FSL11:	.string	"SDOldLogFileDeletion: %u %lu",13,10,0
	.align	2
FSL12:	.string	"LDel:%s",13,10,0
	.align	2
FSL13:	.string	"SDReadEventPos:%lu",13,10,0
	.align	2
FSL14:	.string	"EventID file set",13,10,0
	.align	2
FSL15:	.string	"EventID set:%u ",13,10,0
	.align	2
FSL16:	.string	"Event.bin Size:%ld",13,10,0
	.align	2
FSL17:	.string	"SensorStatustoSDCard",13,10,0
	.align	2
FSL18:	.string	"w",0
	.align	2
FSL19:	.string	"GeneralSettingstoSDCard",13,10,0
	.align	2
FSL20:	.string	"OffsetstoSDCard",13,10,0
	.align	2
FSL21:	.string	"MANCompTabletoSDCard",13,10,0
	.align	2
FSL22:	.string	"MAN_%u.",0
	.align	2
FSL23:	.string	"Chdir %s, %s,%d",13,10,0
	.align	2
FSL24:	.string	"amot.txt",0
	.align	2
FSL25:	.string	"AMOT",0
	.align	2
FSL26:	.string	"SD error position: %u",13,10,0
	.align	2
FSL27:	.string	"%.2x%.2x%.2x",0
	.align	2
FSL28:	.string	"CalibrationtdtoSDCard",13,10,0
;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_sprintf
	.global	_sscanf
	.global	_strlen
	.global	_strcpy
	.global	_strncpy
	.global	_strcat
	.global	_strcmp
	.global	_memset
	.global	_fm_initvolume
	.global	_fm_delvolume
	.global	_fm_format
	.global	_fm_getcwd
	.global	_fm_chdir
	.global	_fm_mkdir
	.global	_fm_findfirst
	.global	_fm_findnext
	.global	_fm_rename
	.global	_fm_filelength
	.global	_fm_close
	.global	_fm_open
	.global	_fm_read
	.global	_fm_write
	.global	_fm_seek
	.global	_fm_delete
	.global	_SetupDefaultSettings
	.global	_SetupSensorStatusDefaults
	.global	_SetupOffsetDefaults
	.global	_DebugStringOut
	.global	_CLITransmitBuffer
	.global	_mmc_initfunc
	.global	_ClearMANTable
	.global	_GetCheckedRPM
	.global	_GetModalRPM
	.global	_GetScaledValue
	.global	_GetEndResultValue
	.global	_GetSensorDeviationValue
	.global	_GetCylinderAverageValue
	.global	_GetCylinderDeviationValue
	.global	_Status1Flags
	.global	_WIOTemperatureWord
	.global	_WIOActivityWord
	.global	_WIOPPMWord
	.global	_GetVoltageStatus
	.global	_LoadSLEMDefaults
	.global	_LoadCPPDefaults
	.global	_LoadSensorDefaults
	.global	_LoadDCModeChecksDefaults
	.global	_SetAlarmEvent
	.global	_ClearAlarmEvent
	.global	_CheckAlarmBitSet
	.global	_WriteAllSensorStructtoNVMEM
	.global	_SaveSafeStruct2
	.global	_NOPDelay
	.global	_StringInttoByteArray
	.global	_StringBytetoIntArray
	.global	_BytetoIntArray
	.global	_InttoByteArray
	.global	_DeselectSPI
	.global	_ReadNVMemory
	.global	_WriteNVMemory
	.global	_CalcUIntChecksum
	.global	_WriteEventLogVarsStructtoNVMEM
	.global	_Fram1MagicNumberRead
	.global	_LoadDamagemonDefaults
	.global	_ConfigCheckVal
	.global	_AliveStatus
	.global	_SaveSafeGeneric
	.global	_CalibrationtdUpdate
	.global	_EngineRunTimeUpdate
	.global	_eventlogvars
	.global	_settings
	.global	_logtime
	.global	_calibrationtd
	.global	_clocktime
	.global	_timers
	.global	_allsensors
	.global	_engine
	.global	_config
	.global	_transferbuffer
	.global	_stringbuffer
	.global	_offsetA
	.global	_offsetB
	.global	_sensor
	.global	_man_comptable
	.global	_manref
	.global	_damagemon
	.global	_dynalarmlevels
	.global	_speedcompcoeffs
	.global	_wiosettings
	.global	_versionreg
	.global	_slemsettings
	.global	_slem
	.global	_cppsettings
	.global	_sensorMoving
	.global	_dcmodechecks
	.global	_inputs
	.global	UL$$TOFS
	.global	FS$$MPY
	.global	FS$$TOUL
	.global	FS$$SUB
	.global	FS$$CMP
	.global	I$$MOD
	.global	U$$MOD

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x16)

DW$T$129	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$129, DW_AT_language(DW_LANG_C)
DW$470	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$471	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$472	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$128)
	.dwendtag DW$T$129

DW$T$132	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$131)
	.dwattr DW$T$132, DW_AT_address_class(0x16)

DW$T$133	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$133, DW_AT_language(DW_LANG_C)

DW$T$136	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$136, DW_AT_language(DW_LANG_C)
DW$473	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$135)
	.dwendtag DW$T$136


DW$T$138	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$138, DW_AT_language(DW_LANG_C)
DW$474	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$138


DW$T$140	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$140, DW_AT_language(DW_LANG_C)
DW$475	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$140


DW$T$143	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$143, DW_AT_language(DW_LANG_C)
DW$476	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$142)
DW$477	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$135)
DW$478	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$143


DW$T$145	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$145, DW_AT_language(DW_LANG_C)
DW$479	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$135)
DW$480	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$135)
	.dwendtag DW$T$145

DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)

DW$T$155	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$155, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$155, DW_AT_byte_size(0x1068)
DW$481	.dwtag  DW_TAG_subrange_type
	.dwattr DW$481, DW_AT_upper_bound(0x95)
DW$482	.dwtag  DW_TAG_subrange_type
	.dwattr DW$482, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$155


DW$T$158	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$158, DW_AT_language(DW_LANG_C)
DW$483	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$135)
DW$484	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
DW$485	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$158


DW$T$160	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$160, DW_AT_language(DW_LANG_C)
DW$486	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
DW$487	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
DW$488	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$160


DW$T$162	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$162, DW_AT_language(DW_LANG_C)
DW$489	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
DW$490	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
	.dwendtag DW$T$162


DW$T$166	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$166, DW_AT_language(DW_LANG_C)
DW$491	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$165)
DW$492	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$166

DW$T$168	.dwtag  DW_TAG_typedef, DW_AT_name("F_INITFUNC"), DW_AT_type(*DW$T$167)
	.dwattr DW$T$168, DW_AT_language(DW_LANG_C)

DW$T$169	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$169, DW_AT_language(DW_LANG_C)
DW$493	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$494	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$168)
DW$495	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$169


DW$T$171	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$171, DW_AT_language(DW_LANG_C)
DW$496	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$171


DW$T$173	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$173, DW_AT_language(DW_LANG_C)
DW$497	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$498	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$T$173


DW$T$175	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$175, DW_AT_language(DW_LANG_C)
DW$499	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$135)
DW$500	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$175


DW$T$177	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$177, DW_AT_language(DW_LANG_C)
DW$501	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
	.dwendtag DW$T$177


DW$T$181	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$181, DW_AT_language(DW_LANG_C)
DW$502	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
DW$503	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$180)
	.dwendtag DW$T$181


DW$T$183	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$183, DW_AT_language(DW_LANG_C)
DW$504	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$180)
	.dwendtag DW$T$183


DW$T$185	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$185, DW_AT_language(DW_LANG_C)
DW$505	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
	.dwendtag DW$T$185


DW$T$187	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$187, DW_AT_language(DW_LANG_C)
DW$506	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
DW$507	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$508	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$T$187


DW$T$189	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$189, DW_AT_language(DW_LANG_C)
DW$509	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$189


DW$T$191	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$191, DW_AT_language(DW_LANG_C)

DW$T$193	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$193, DW_AT_language(DW_LANG_C)

DW$T$195	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$195, DW_AT_language(DW_LANG_C)
DW$510	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
DW$511	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$135)
	.dwendtag DW$T$195


DW$T$197	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$197, DW_AT_language(DW_LANG_C)
DW$512	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$135)
	.dwendtag DW$T$197


DW$T$199	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$199, DW_AT_language(DW_LANG_C)
DW$513	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$135)
DW$514	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$135)
	.dwendtag DW$T$199


DW$T$201	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$201, DW_AT_language(DW_LANG_C)
DW$515	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$135)
DW$516	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$142)
DW$517	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$201


DW$T$203	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$203, DW_AT_language(DW_LANG_C)
DW$518	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$519	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$142)
	.dwendtag DW$T$203


DW$T$205	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$205, DW_AT_language(DW_LANG_C)
DW$520	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
DW$521	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$205


DW$T$207	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$207, DW_AT_language(DW_LANG_C)
DW$522	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
DW$523	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$207

DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)
DW$T$142	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$142, DW_AT_address_class(0x16)

DW$T$268	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$268, DW_AT_language(DW_LANG_C)
DW$524	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$268


DW$T$270	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$270, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$270, DW_AT_byte_size(0x80)
DW$525	.dwtag  DW_TAG_subrange_type
	.dwattr DW$525, DW_AT_upper_bound(0x7f)
	.dwendtag DW$T$270

DW$526	.dwtag  DW_TAG_far_type
	.dwattr DW$526, DW_AT_type(*DW$T$11)
DW$T$271	.dwtag  DW_TAG_const_type
	.dwattr DW$T$271, DW_AT_type(*DW$526)
DW$T$12	.dwtag  DW_TAG_base_type, DW_AT_name("long")
	.dwattr DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$12, DW_AT_byte_size(0x02)

DW$T$275	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$275, DW_AT_language(DW_LANG_C)
DW$527	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
	.dwendtag DW$T$275


DW$T$277	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$277, DW_AT_language(DW_LANG_C)
DW$528	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$529	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$530	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$531	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
	.dwendtag DW$T$277


DW$T$279	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$279, DW_AT_language(DW_LANG_C)
DW$532	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$132)
DW$533	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$534	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$535	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
	.dwendtag DW$T$279


DW$T$281	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$281, DW_AT_language(DW_LANG_C)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)
DW$T$128	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$128, DW_AT_language(DW_LANG_C)

DW$T$282	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$128)
	.dwattr DW$T$282, DW_AT_language(DW_LANG_C)
DW$536	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
	.dwendtag DW$T$282


DW$T$283	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$283, DW_AT_language(DW_LANG_C)
DW$537	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$T$283


DW$T$285	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$285, DW_AT_language(DW_LANG_C)
DW$538	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$6)
DW$539	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$285


DW$T$287	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$287, DW_AT_language(DW_LANG_C)
DW$540	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$6)
DW$541	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$6)
DW$542	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$6)
DW$543	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$287


DW$T$289	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$289, DW_AT_language(DW_LANG_C)
DW$T$165	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$164)
	.dwattr DW$T$165, DW_AT_address_class(0x16)
DW$T$135	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$40)
	.dwattr DW$T$135, DW_AT_address_class(0x16)

DW$T$294	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$135)
	.dwattr DW$T$294, DW_AT_language(DW_LANG_C)
DW$544	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$135)
DW$545	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
	.dwendtag DW$T$294


DW$T$295	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$135)
	.dwattr DW$T$295, DW_AT_language(DW_LANG_C)
DW$546	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$135)
DW$547	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
DW$548	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$128)
	.dwendtag DW$T$295

DW$T$149	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$148)
	.dwattr DW$T$149, DW_AT_address_class(0x16)

DW$T$298	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$148)
	.dwattr DW$T$298, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$298, DW_AT_byte_size(0x10a)
DW$549	.dwtag  DW_TAG_subrange_type
	.dwattr DW$549, DW_AT_upper_bound(0x109)
	.dwendtag DW$T$298


DW$T$299	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$148)
	.dwattr DW$T$299, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$299, DW_AT_byte_size(0x20)
DW$550	.dwtag  DW_TAG_subrange_type
	.dwattr DW$550, DW_AT_upper_bound(0x1f)
	.dwendtag DW$T$299


DW$T$300	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$148)
	.dwattr DW$T$300, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$300, DW_AT_byte_size(0x91)
DW$551	.dwtag  DW_TAG_subrange_type
	.dwattr DW$551, DW_AT_upper_bound(0x90)
	.dwendtag DW$T$300


DW$T$301	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$148)
	.dwattr DW$T$301, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$301, DW_AT_byte_size(0xa3)
DW$552	.dwtag  DW_TAG_subrange_type
	.dwattr DW$552, DW_AT_upper_bound(0xa2)
	.dwendtag DW$T$301


DW$T$302	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$148)
	.dwattr DW$T$302, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$302, DW_AT_byte_size(0x0b)
DW$553	.dwtag  DW_TAG_subrange_type
	.dwattr DW$553, DW_AT_upper_bound(0x0a)
	.dwendtag DW$T$302


DW$T$303	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$148)
	.dwattr DW$T$303, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$303, DW_AT_byte_size(0x0c)
DW$554	.dwtag  DW_TAG_subrange_type
	.dwattr DW$554, DW_AT_upper_bound(0x0b)
	.dwendtag DW$T$303


DW$T$304	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$148)
	.dwattr DW$T$304, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$304, DW_AT_byte_size(0x0a)
DW$555	.dwtag  DW_TAG_subrange_type
	.dwattr DW$555, DW_AT_upper_bound(0x09)
	.dwendtag DW$T$304


DW$T$305	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$148)
	.dwattr DW$T$305, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$305, DW_AT_byte_size(0x0d)
DW$556	.dwtag  DW_TAG_subrange_type
	.dwattr DW$556, DW_AT_upper_bound(0x0c)
	.dwendtag DW$T$305

DW$T$307	.dwtag  DW_TAG_typedef, DW_AT_name("Messages"), DW_AT_type(*DW$T$306)
	.dwattr DW$T$307, DW_AT_language(DW_LANG_C)

DW$T$309	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$308)
	.dwattr DW$T$309, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$309, DW_AT_byte_size(0x52)
DW$557	.dwtag  DW_TAG_subrange_type
	.dwattr DW$557, DW_AT_upper_bound(0x28)
	.dwendtag DW$T$309


DW$T$310	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$40)
	.dwattr DW$T$310, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$310, DW_AT_byte_size(0x64)
DW$558	.dwtag  DW_TAG_subrange_type
	.dwattr DW$558, DW_AT_upper_bound(0x63)
	.dwendtag DW$T$310


DW$T$311	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$40)
	.dwattr DW$T$311, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$311, DW_AT_byte_size(0x200)
DW$559	.dwtag  DW_TAG_subrange_type
	.dwattr DW$559, DW_AT_upper_bound(0x1ff)
	.dwendtag DW$T$311

DW$T$179	.dwtag  DW_TAG_typedef, DW_AT_name("F_FIND"), DW_AT_type(*DW$T$48)
	.dwattr DW$T$179, DW_AT_language(DW_LANG_C)
DW$T$180	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$179)
	.dwattr DW$T$180, DW_AT_address_class(0x16)
DW$T$107	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$106)
	.dwattr DW$T$107, DW_AT_address_class(0x16)

DW$T$315	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$107)
	.dwattr DW$T$315, DW_AT_language(DW_LANG_C)
DW$560	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
DW$561	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
	.dwendtag DW$T$315

DW$T$319	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$75)
	.dwattr DW$T$319, DW_AT_address_class(0x16)

DW$T$320	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$319)
	.dwattr DW$T$320, DW_AT_language(DW_LANG_C)
DW$562	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$320

DW$T$324	.dwtag  DW_TAG_typedef, DW_AT_name("eventlogvarsstruct"), DW_AT_type(*DW$T$51)
	.dwattr DW$T$324, DW_AT_language(DW_LANG_C)
DW$T$325	.dwtag  DW_TAG_typedef, DW_AT_name("settingsstruct"), DW_AT_type(*DW$T$53)
	.dwattr DW$T$325, DW_AT_language(DW_LANG_C)
DW$T$326	.dwtag  DW_TAG_typedef, DW_AT_name("livestruct"), DW_AT_type(*DW$T$54)
	.dwattr DW$T$326, DW_AT_language(DW_LANG_C)
DW$T$328	.dwtag  DW_TAG_typedef, DW_AT_name("calibrationdatetimestruct"), DW_AT_type(*DW$T$57)
	.dwattr DW$T$328, DW_AT_language(DW_LANG_C)
DW$T$330	.dwtag  DW_TAG_typedef, DW_AT_name("clockstruct"), DW_AT_type(*DW$T$58)
	.dwattr DW$T$330, DW_AT_language(DW_LANG_C)
DW$563	.dwtag  DW_TAG_far_type
	.dwattr DW$563, DW_AT_type(*DW$T$331)
DW$T$332	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$332, DW_AT_type(*DW$563)
DW$T$334	.dwtag  DW_TAG_typedef, DW_AT_name("allsensorstruct"), DW_AT_type(*DW$T$63)
	.dwattr DW$T$334, DW_AT_language(DW_LANG_C)
DW$T$336	.dwtag  DW_TAG_typedef, DW_AT_name("enginestruct"), DW_AT_type(*DW$T$64)
	.dwattr DW$T$336, DW_AT_language(DW_LANG_C)
DW$T$337	.dwtag  DW_TAG_typedef, DW_AT_name("configstruct"), DW_AT_type(*DW$T$71)
	.dwattr DW$T$337, DW_AT_language(DW_LANG_C)
DW$T$339	.dwtag  DW_TAG_typedef, DW_AT_name("offsetstruct"), DW_AT_type(*DW$T$73)
	.dwattr DW$T$339, DW_AT_language(DW_LANG_C)

DW$T$342	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$341)
	.dwattr DW$T$342, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$342, DW_AT_byte_size(0x1f8)
DW$564	.dwtag  DW_TAG_subrange_type
	.dwattr DW$564, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$342


DW$T$346	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$345)
	.dwattr DW$T$346, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$346, DW_AT_byte_size(0x118)
DW$565	.dwtag  DW_TAG_subrange_type
	.dwattr DW$565, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$346

DW$T$349	.dwtag  DW_TAG_typedef, DW_AT_name("damagemonstruct"), DW_AT_type(*DW$T$79)
	.dwattr DW$T$349, DW_AT_language(DW_LANG_C)
DW$T$351	.dwtag  DW_TAG_typedef, DW_AT_name("dynamicalarmsstruct"), DW_AT_type(*DW$T$80)
	.dwattr DW$T$351, DW_AT_language(DW_LANG_C)
DW$T$352	.dwtag  DW_TAG_typedef, DW_AT_name("speedcompstruct"), DW_AT_type(*DW$T$83)
	.dwattr DW$T$352, DW_AT_language(DW_LANG_C)
DW$T$354	.dwtag  DW_TAG_typedef, DW_AT_name("wiosettingsstruct"), DW_AT_type(*DW$T$84)
	.dwattr DW$T$354, DW_AT_language(DW_LANG_C)
DW$T$356	.dwtag  DW_TAG_typedef, DW_AT_name("slemsettingsstruct"), DW_AT_type(*DW$T$85)
	.dwattr DW$T$356, DW_AT_language(DW_LANG_C)
DW$T$358	.dwtag  DW_TAG_typedef, DW_AT_name("slemstruct"), DW_AT_type(*DW$T$87)
	.dwattr DW$T$358, DW_AT_language(DW_LANG_C)
DW$T$359	.dwtag  DW_TAG_typedef, DW_AT_name("cppsettingsstruct"), DW_AT_type(*DW$T$88)
	.dwattr DW$T$359, DW_AT_language(DW_LANG_C)
DW$T$361	.dwtag  DW_TAG_typedef, DW_AT_name("sensorMovingstruct"), DW_AT_type(*DW$T$89)
	.dwattr DW$T$361, DW_AT_language(DW_LANG_C)
DW$T$363	.dwtag  DW_TAG_typedef, DW_AT_name("dcmodechecksstruct"), DW_AT_type(*DW$T$93)
	.dwattr DW$T$363, DW_AT_language(DW_LANG_C)
DW$566	.dwtag  DW_TAG_far_type
	.dwattr DW$566, DW_AT_type(*DW$T$365)
DW$T$366	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$366, DW_AT_type(*DW$566)
DW$T$369	.dwtag  DW_TAG_typedef, DW_AT_name("sdfilestruct"), DW_AT_type(*DW$T$111)
	.dwattr DW$T$369, DW_AT_language(DW_LANG_C)
DW$T$371	.dwtag  DW_TAG_typedef, DW_AT_name("sdsettingsstruct"), DW_AT_type(*DW$T$113)
	.dwattr DW$T$371, DW_AT_language(DW_LANG_C)
DW$T$373	.dwtag  DW_TAG_typedef, DW_AT_name("shorttermlogstruct"), DW_AT_type(*DW$T$119)
	.dwattr DW$T$373, DW_AT_language(DW_LANG_C)
DW$T$375	.dwtag  DW_TAG_typedef, DW_AT_name("longtermlogstruct"), DW_AT_type(*DW$T$121)
	.dwattr DW$T$375, DW_AT_language(DW_LANG_C)
DW$T$377	.dwtag  DW_TAG_typedef, DW_AT_name("asciilogstruct"), DW_AT_type(*DW$T$123)
	.dwattr DW$T$377, DW_AT_language(DW_LANG_C)
DW$T$378	.dwtag  DW_TAG_typedef, DW_AT_name("mansdstruct"), DW_AT_type(*DW$T$125)
	.dwattr DW$T$378, DW_AT_language(DW_LANG_C)
DW$567	.dwtag  DW_TAG_far_type
	.dwattr DW$567, DW_AT_type(*DW$T$380)
DW$T$381	.dwtag  DW_TAG_const_type
	.dwattr DW$T$381, DW_AT_type(*DW$567)
DW$568	.dwtag  DW_TAG_far_type
DW$T$131	.dwtag  DW_TAG_const_type
	.dwattr DW$T$131, DW_AT_type(*DW$568)
DW$T$167	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$166)
	.dwattr DW$T$167, DW_AT_address_class(0x16)
DW$T$164	.dwtag  DW_TAG_typedef, DW_AT_name("F_FUNC"), DW_AT_type(*DW$T$39)
	.dwattr DW$T$164, DW_AT_language(DW_LANG_C)
DW$T$40	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$40, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$40, DW_AT_byte_size(0x01)
DW$569	.dwtag  DW_TAG_far_type
	.dwattr DW$569, DW_AT_type(*DW$T$40)
DW$T$148	.dwtag  DW_TAG_const_type
	.dwattr DW$T$148, DW_AT_type(*DW$569)

DW$T$306	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$148)
	.dwattr DW$T$306, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$306, DW_AT_byte_size(0x32)
DW$570	.dwtag  DW_TAG_subrange_type
	.dwattr DW$570, DW_AT_upper_bound(0x31)
	.dwendtag DW$T$306

DW$T$308	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$307)
	.dwattr DW$T$308, DW_AT_address_class(0x16)

DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$48, DW_AT_byte_size(0x52)
DW$571	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$571, DW_AT_name("filename"), DW_AT_symbol_name("_filename")
	.dwattr DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$571, DW_AT_accessibility(DW_ACCESS_public)
DW$572	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$572, DW_AT_name("name"), DW_AT_symbol_name("_name")
	.dwattr DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$572, DW_AT_accessibility(DW_ACCESS_public)
DW$573	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$43)
	.dwattr DW$573, DW_AT_name("ext"), DW_AT_symbol_name("_ext")
	.dwattr DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$573, DW_AT_accessibility(DW_ACCESS_public)
DW$574	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$574, DW_AT_name("attr"), DW_AT_symbol_name("_attr")
	.dwattr DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$574, DW_AT_accessibility(DW_ACCESS_public)
DW$575	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$575, DW_AT_name("ctime"), DW_AT_symbol_name("_ctime")
	.dwattr DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$575, DW_AT_accessibility(DW_ACCESS_public)
DW$576	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$576, DW_AT_name("cdate"), DW_AT_symbol_name("_cdate")
	.dwattr DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr DW$576, DW_AT_accessibility(DW_ACCESS_public)
DW$577	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$577, DW_AT_name("cluster"), DW_AT_symbol_name("_cluster")
	.dwattr DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$577, DW_AT_accessibility(DW_ACCESS_public)
DW$578	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$578, DW_AT_name("filesize"), DW_AT_symbol_name("_filesize")
	.dwattr DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$578, DW_AT_accessibility(DW_ACCESS_public)
DW$579	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$579, DW_AT_name("findfsname"), DW_AT_symbol_name("_findfsname")
	.dwattr DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$579, DW_AT_accessibility(DW_ACCESS_public)
DW$580	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$580, DW_AT_name("pos"), DW_AT_symbol_name("_pos")
	.dwattr DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$580, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$48

DW$T$106	.dwtag  DW_TAG_typedef, DW_AT_name("F_FILE"), DW_AT_type(*DW$T$49)
	.dwattr DW$T$106, DW_AT_language(DW_LANG_C)
DW$T$75	.dwtag  DW_TAG_typedef, DW_AT_name("status1struct"), DW_AT_type(*DW$T$50)
	.dwattr DW$T$75, DW_AT_language(DW_LANG_C)

DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$51, DW_AT_name("tag_eventlogvarsstruct")
	.dwattr DW$T$51, DW_AT_byte_size(0x03)
DW$581	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$581, DW_AT_name("eventlogid"), DW_AT_symbol_name("_eventlogid")
	.dwattr DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$581, DW_AT_accessibility(DW_ACCESS_public)
DW$582	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$582, DW_AT_name("msgqueue"), DW_AT_symbol_name("_msgqueue")
	.dwattr DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$582, DW_AT_accessibility(DW_ACCESS_public)
DW$583	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$583, DW_AT_name("eventlogwrapflag"), DW_AT_symbol_name("_eventlogwrapflag")
	.dwattr DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$583, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$51


DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$53, DW_AT_name("tag_settingsstruct")
	.dwattr DW$T$53, DW_AT_byte_size(0x24)
DW$584	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$584, DW_AT_name("watchdog"), DW_AT_symbol_name("_watchdog")
	.dwattr DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$584, DW_AT_accessibility(DW_ACCESS_public)
DW$585	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$585, DW_AT_name("ledflashflag"), DW_AT_symbol_name("_ledflashflag")
	.dwattr DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$585, DW_AT_accessibility(DW_ACCESS_public)
DW$586	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$586, DW_AT_name("updatesafe"), DW_AT_symbol_name("_updatesafe")
	.dwattr DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$586, DW_AT_accessibility(DW_ACCESS_public)
DW$587	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$587, DW_AT_name("tableconfigtype"), DW_AT_symbol_name("_tableconfigtype")
	.dwattr DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$587, DW_AT_accessibility(DW_ACCESS_public)
DW$588	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$588, DW_AT_name("caltableconfigtype"), DW_AT_symbol_name("_caltableconfigtype")
	.dwattr DW$588, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$588, DW_AT_accessibility(DW_ACCESS_public)
DW$589	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$589, DW_AT_name("eventmsgid"), DW_AT_symbol_name("_eventmsgid")
	.dwattr DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$589, DW_AT_accessibility(DW_ACCESS_public)
DW$590	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$590, DW_AT_name("configoperationcomplete"), DW_AT_symbol_name("_configoperationcomplete")
	.dwattr DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$590, DW_AT_accessibility(DW_ACCESS_public)
DW$591	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$591, DW_AT_name("sdcarderr"), DW_AT_symbol_name("_sdcarderr")
	.dwattr DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$591, DW_AT_accessibility(DW_ACCESS_public)
DW$592	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$592, DW_AT_name("sderase"), DW_AT_symbol_name("_sderase")
	.dwattr DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$592, DW_AT_accessibility(DW_ACCESS_public)
DW$593	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$593, DW_AT_name("sdreinit"), DW_AT_symbol_name("_sdreinit")
	.dwattr DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$593, DW_AT_accessibility(DW_ACCESS_public)
DW$594	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$594, DW_AT_name("sdcardupdate"), DW_AT_symbol_name("_sdcardupdate")
	.dwattr DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$594, DW_AT_accessibility(DW_ACCESS_public)
DW$595	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$595, DW_AT_name("cardreadflag"), DW_AT_symbol_name("_cardreadflag")
	.dwattr DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$595, DW_AT_accessibility(DW_ACCESS_public)
DW$596	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$596, DW_AT_name("ignore"), DW_AT_symbol_name("_ignore")
	.dwattr DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$596, DW_AT_accessibility(DW_ACCESS_public)
DW$597	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$597, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$597, DW_AT_accessibility(DW_ACCESS_public)
DW$598	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$598, DW_AT_name("spiinuse"), DW_AT_symbol_name("_spiinuse")
	.dwattr DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$598, DW_AT_accessibility(DW_ACCESS_public)
DW$599	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$599, DW_AT_name("dcpeakhold"), DW_AT_symbol_name("_dcpeakhold")
	.dwattr DW$599, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$599, DW_AT_accessibility(DW_ACCESS_public)
DW$600	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$600, DW_AT_name("dcpause"), DW_AT_symbol_name("_dcpause")
	.dwattr DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$600, DW_AT_accessibility(DW_ACCESS_public)
DW$601	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$601, DW_AT_name("mastermode"), DW_AT_symbol_name("_mastermode")
	.dwattr DW$601, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$601, DW_AT_accessibility(DW_ACCESS_public)
DW$602	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$602, DW_AT_name("updatescaling"), DW_AT_symbol_name("_updatescaling")
	.dwattr DW$602, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$602, DW_AT_accessibility(DW_ACCESS_public)
DW$603	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$603, DW_AT_name("forwardasternflag"), DW_AT_symbol_name("_forwardasternflag")
	.dwattr DW$603, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$603, DW_AT_accessibility(DW_ACCESS_public)
DW$604	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$604, DW_AT_name("initprogress"), DW_AT_symbol_name("_initprogress")
	.dwattr DW$604, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$604, DW_AT_accessibility(DW_ACCESS_public)
DW$605	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$605, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$605, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$605, DW_AT_accessibility(DW_ACCESS_public)
DW$606	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$606, DW_AT_name("slowdowncounter"), DW_AT_symbol_name("_slowdowncounter")
	.dwattr DW$606, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$606, DW_AT_accessibility(DW_ACCESS_public)
DW$607	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$607, DW_AT_name("slowdowncondition"), DW_AT_symbol_name("_slowdowncondition")
	.dwattr DW$607, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$607, DW_AT_accessibility(DW_ACCESS_public)
DW$608	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$608, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$608, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$608, DW_AT_accessibility(DW_ACCESS_public)
DW$609	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$609, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$609, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$609, DW_AT_accessibility(DW_ACCESS_public)
DW$610	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$610, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$610, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$610, DW_AT_accessibility(DW_ACCESS_public)
DW$611	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$611, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$611, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$611, DW_AT_accessibility(DW_ACCESS_public)
DW$612	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$612, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$612, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$612, DW_AT_accessibility(DW_ACCESS_public)
DW$613	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$613, DW_AT_name("temperaturealarm"), DW_AT_symbol_name("_temperaturealarm")
	.dwattr DW$613, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$613, DW_AT_accessibility(DW_ACCESS_public)
DW$614	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$614, DW_AT_name("temperatureslowdown"), DW_AT_symbol_name("_temperatureslowdown")
	.dwattr DW$614, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$614, DW_AT_accessibility(DW_ACCESS_public)
DW$615	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$52)
	.dwattr DW$615, DW_AT_name("anadebug"), DW_AT_symbol_name("_anadebug")
	.dwattr DW$615, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$615, DW_AT_accessibility(DW_ACCESS_public)
DW$616	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$616, DW_AT_name("serialdebug"), DW_AT_symbol_name("_serialdebug")
	.dwattr DW$616, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr DW$616, DW_AT_accessibility(DW_ACCESS_public)
DW$617	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$617, DW_AT_name("timerrunning"), DW_AT_symbol_name("_timerrunning")
	.dwattr DW$617, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$617, DW_AT_accessibility(DW_ACCESS_public)
DW$618	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$618, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$618, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$618, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$53


DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$54, DW_AT_name("tag_livestruct")
	.dwattr DW$T$54, DW_AT_byte_size(0x03)
DW$619	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$619, DW_AT_name("yrmnth"), DW_AT_symbol_name("_yrmnth")
	.dwattr DW$619, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$619, DW_AT_accessibility(DW_ACCESS_public)
DW$620	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$620, DW_AT_name("datehrs"), DW_AT_symbol_name("_datehrs")
	.dwattr DW$620, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$620, DW_AT_accessibility(DW_ACCESS_public)
DW$621	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$621, DW_AT_name("minssecs"), DW_AT_symbol_name("_minssecs")
	.dwattr DW$621, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$621, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$54


DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$57, DW_AT_name("tag_calibrationdatetimestruct")
	.dwattr DW$T$57, DW_AT_byte_size(0x07)
DW$622	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$55)
	.dwattr DW$622, DW_AT_name("calcomplete"), DW_AT_symbol_name("_calcomplete")
	.dwattr DW$622, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$622, DW_AT_accessibility(DW_ACCESS_public)
DW$623	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$56)
	.dwattr DW$623, DW_AT_name("verification"), DW_AT_symbol_name("_verification")
	.dwattr DW$623, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$623, DW_AT_accessibility(DW_ACCESS_public)
DW$624	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$624, DW_AT_name("chksum"), DW_AT_symbol_name("_chksum")
	.dwattr DW$624, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$624, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$57


DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$58, DW_AT_name("tag_clockstruct")
	.dwattr DW$T$58, DW_AT_byte_size(0x0e)
DW$625	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$625, DW_AT_name("WPstate"), DW_AT_symbol_name("_WPstate")
	.dwattr DW$625, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$625, DW_AT_accessibility(DW_ACCESS_public)
DW$626	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$626, DW_AT_name("seconds"), DW_AT_symbol_name("_seconds")
	.dwattr DW$626, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$626, DW_AT_accessibility(DW_ACCESS_public)
DW$627	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$627, DW_AT_name("minutes"), DW_AT_symbol_name("_minutes")
	.dwattr DW$627, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$627, DW_AT_accessibility(DW_ACCESS_public)
DW$628	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$628, DW_AT_name("hours"), DW_AT_symbol_name("_hours")
	.dwattr DW$628, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$628, DW_AT_accessibility(DW_ACCESS_public)
DW$629	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$629, DW_AT_name("day"), DW_AT_symbol_name("_day")
	.dwattr DW$629, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$629, DW_AT_accessibility(DW_ACCESS_public)
DW$630	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$630, DW_AT_name("date"), DW_AT_symbol_name("_date")
	.dwattr DW$630, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$630, DW_AT_accessibility(DW_ACCESS_public)
DW$631	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$631, DW_AT_name("month"), DW_AT_symbol_name("_month")
	.dwattr DW$631, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$631, DW_AT_accessibility(DW_ACCESS_public)
DW$632	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$632, DW_AT_name("year"), DW_AT_symbol_name("_year")
	.dwattr DW$632, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$632, DW_AT_accessibility(DW_ACCESS_public)
DW$633	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$633, DW_AT_name("control"), DW_AT_symbol_name("_control")
	.dwattr DW$633, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$633, DW_AT_accessibility(DW_ACCESS_public)
DW$634	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$634, DW_AT_name("framstamp"), DW_AT_symbol_name("_framstamp")
	.dwattr DW$634, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$634, DW_AT_accessibility(DW_ACCESS_public)
DW$635	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$635, DW_AT_name("clockerr"), DW_AT_symbol_name("_clockerr")
	.dwattr DW$635, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$635, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$58

DW$T$331	.dwtag  DW_TAG_typedef, DW_AT_name("timersstruct"), DW_AT_type(*DW$T$60)
	.dwattr DW$T$331, DW_AT_language(DW_LANG_C)

DW$T$63	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$63, DW_AT_name("tag_allsensorstruct")
	.dwattr DW$T$63, DW_AT_byte_size(0x2d)
DW$636	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$636, DW_AT_name("numsensors"), DW_AT_symbol_name("_numsensors")
	.dwattr DW$636, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$636, DW_AT_accessibility(DW_ACCESS_public)
DW$637	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$637, DW_AT_name("numsensorsspu1"), DW_AT_symbol_name("_numsensorsspu1")
	.dwattr DW$637, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$637, DW_AT_accessibility(DW_ACCESS_public)
DW$638	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$638, DW_AT_name("numsensorsspu2"), DW_AT_symbol_name("_numsensorsspu2")
	.dwattr DW$638, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$638, DW_AT_accessibility(DW_ACCESS_public)
DW$639	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$639, DW_AT_name("nominalspeed"), DW_AT_symbol_name("_nominalspeed")
	.dwattr DW$639, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$639, DW_AT_accessibility(DW_ACCESS_public)
DW$640	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$640, DW_AT_name("rpmmin"), DW_AT_symbol_name("_rpmmin")
	.dwattr DW$640, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$640, DW_AT_accessibility(DW_ACCESS_public)
DW$641	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$641, DW_AT_name("rpmmax"), DW_AT_symbol_name("_rpmmax")
	.dwattr DW$641, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$641, DW_AT_accessibility(DW_ACCESS_public)
DW$642	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$642, DW_AT_name("reflash"), DW_AT_symbol_name("_reflash")
	.dwattr DW$642, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$642, DW_AT_accessibility(DW_ACCESS_public)
DW$643	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$643, DW_AT_name("sensorhysteresis"), DW_AT_symbol_name("_sensorhysteresis")
	.dwattr DW$643, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$643, DW_AT_accessibility(DW_ACCESS_public)
DW$644	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$644, DW_AT_name("cylinderhysteresis"), DW_AT_symbol_name("_cylinderhysteresis")
	.dwattr DW$644, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$644, DW_AT_accessibility(DW_ACCESS_public)
DW$645	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$645, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$645, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$645, DW_AT_accessibility(DW_ACCESS_public)
DW$646	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$646, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$646, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$646, DW_AT_accessibility(DW_ACCESS_public)
DW$647	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$647, DW_AT_name("slowdowndevcallevel"), DW_AT_symbol_name("_slowdowndevcallevel")
	.dwattr DW$647, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$647, DW_AT_accessibility(DW_ACCESS_public)
DW$648	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$648, DW_AT_name("alarmdevcallevel"), DW_AT_symbol_name("_alarmdevcallevel")
	.dwattr DW$648, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$648, DW_AT_accessibility(DW_ACCESS_public)
DW$649	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$649, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$649, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$649, DW_AT_accessibility(DW_ACCESS_public)
DW$650	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$650, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$650, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$650, DW_AT_accessibility(DW_ACCESS_public)
DW$651	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$651, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$651, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$651, DW_AT_accessibility(DW_ACCESS_public)
DW$652	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$61)
	.dwattr DW$652, DW_AT_name("flags"), DW_AT_symbol_name("_flags")
	.dwattr DW$652, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$652, DW_AT_accessibility(DW_ACCESS_public)
DW$653	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$653, DW_AT_name("slowdownack"), DW_AT_symbol_name("_slowdownack")
	.dwattr DW$653, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$653, DW_AT_accessibility(DW_ACCESS_public)
DW$654	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$654, DW_AT_name("alarmack"), DW_AT_symbol_name("_alarmack")
	.dwattr DW$654, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$654, DW_AT_accessibility(DW_ACCESS_public)
DW$655	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$655, DW_AT_name("maxmintimer"), DW_AT_symbol_name("_maxmintimer")
	.dwattr DW$655, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$655, DW_AT_accessibility(DW_ACCESS_public)
DW$656	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$656, DW_AT_name("enginedircal"), DW_AT_symbol_name("_enginedircal")
	.dwattr DW$656, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$656, DW_AT_accessibility(DW_ACCESS_public)
DW$657	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$59)
	.dwattr DW$657, DW_AT_name("dirorder"), DW_AT_symbol_name("_dirorder")
	.dwattr DW$657, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$657, DW_AT_accessibility(DW_ACCESS_public)
DW$658	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$658, DW_AT_name("prewarningtimer"), DW_AT_symbol_name("_prewarningtimer")
	.dwattr DW$658, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$658, DW_AT_accessibility(DW_ACCESS_public)
DW$659	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$659, DW_AT_name("prewarninglevel"), DW_AT_symbol_name("_prewarninglevel")
	.dwattr DW$659, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$659, DW_AT_accessibility(DW_ACCESS_public)
DW$660	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$660, DW_AT_name("rpmlimit"), DW_AT_symbol_name("_rpmlimit")
	.dwattr DW$660, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr DW$660, DW_AT_accessibility(DW_ACCESS_public)
DW$661	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$661, DW_AT_name("dsss"), DW_AT_symbol_name("_dsss")
	.dwattr DW$661, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$661, DW_AT_accessibility(DW_ACCESS_public)
DW$662	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$662, DW_AT_name("slowdowncallevel"), DW_AT_symbol_name("_slowdowncallevel")
	.dwattr DW$662, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$662, DW_AT_accessibility(DW_ACCESS_public)
DW$663	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$663, DW_AT_name("alarmcallevel"), DW_AT_symbol_name("_alarmcallevel")
	.dwattr DW$663, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$663, DW_AT_accessibility(DW_ACCESS_public)
DW$664	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$664, DW_AT_name("cylinderalarmcallevel"), DW_AT_symbol_name("_cylinderalarmcallevel")
	.dwattr DW$664, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$664, DW_AT_accessibility(DW_ACCESS_public)
DW$665	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$62)
	.dwattr DW$665, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$665, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$665, DW_AT_accessibility(DW_ACCESS_public)
DW$666	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$666, DW_AT_name("iBarredVibrationSpeedLow"), DW_AT_symbol_name("_iBarredVibrationSpeedLow")
	.dwattr DW$666, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$666, DW_AT_accessibility(DW_ACCESS_public)
DW$667	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$667, DW_AT_name("iBarredVibrationSpeedHigh"), DW_AT_symbol_name("_iBarredVibrationSpeedHigh")
	.dwattr DW$667, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$667, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$63


DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$64, DW_AT_name("tag_engingestruct")
	.dwattr DW$T$64, DW_AT_byte_size(0x02)
DW$668	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$668, DW_AT_name("runtime"), DW_AT_symbol_name("_runtime")
	.dwattr DW$668, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$668, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$64


DW$T$71	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$71, DW_AT_name("tag_configstruct")
	.dwattr DW$T$71, DW_AT_byte_size(0x18)
DW$669	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$65)
	.dwattr DW$669, DW_AT_name("filter"), DW_AT_symbol_name("_filter")
	.dwattr DW$669, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$669, DW_AT_accessibility(DW_ACCESS_public)
DW$670	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$66)
	.dwattr DW$670, DW_AT_name("alarmenable"), DW_AT_symbol_name("_alarmenable")
	.dwattr DW$670, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$670, DW_AT_accessibility(DW_ACCESS_public)
DW$671	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$67)
	.dwattr DW$671, DW_AT_name("trendmax"), DW_AT_symbol_name("_trendmax")
	.dwattr DW$671, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$671, DW_AT_accessibility(DW_ACCESS_public)
DW$672	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$68)
	.dwattr DW$672, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$672, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$672, DW_AT_accessibility(DW_ACCESS_public)
DW$673	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$673, DW_AT_name("sdsettings"), DW_AT_symbol_name("_sdsettings")
	.dwattr DW$673, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$673, DW_AT_accessibility(DW_ACCESS_public)
DW$674	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$70)
	.dwattr DW$674, DW_AT_name("comms"), DW_AT_symbol_name("_comms")
	.dwattr DW$674, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$674, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$71


DW$T$73	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$73, DW_AT_name("tag_offsetstruct")
	.dwattr DW$T$73, DW_AT_byte_size(0x1c)
DW$675	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$72)
	.dwattr DW$675, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$675, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$675, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$73

DW$T$341	.dwtag  DW_TAG_typedef, DW_AT_name("sensorstruct"), DW_AT_type(*DW$T$77)
	.dwattr DW$T$341, DW_AT_language(DW_LANG_C)
DW$T$345	.dwtag  DW_TAG_typedef, DW_AT_name("manrefstruct"), DW_AT_type(*DW$T$78)
	.dwattr DW$T$345, DW_AT_language(DW_LANG_C)

DW$T$79	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$79, DW_AT_name("tag_damagemonstruct")
	.dwattr DW$T$79, DW_AT_byte_size(0x10)
DW$676	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$676, DW_AT_name("ccsplit"), DW_AT_symbol_name("_ccsplit")
	.dwattr DW$676, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$676, DW_AT_accessibility(DW_ACCESS_public)
DW$677	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$677, DW_AT_name("kvalue"), DW_AT_symbol_name("_kvalue")
	.dwattr DW$677, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$677, DW_AT_accessibility(DW_ACCESS_public)
DW$678	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$678, DW_AT_name("betavalue"), DW_AT_symbol_name("_betavalue")
	.dwattr DW$678, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$678, DW_AT_accessibility(DW_ACCESS_public)
DW$679	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$679, DW_AT_name("rpmlevelx"), DW_AT_symbol_name("_rpmlevelx")
	.dwattr DW$679, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$679, DW_AT_accessibility(DW_ACCESS_public)
DW$680	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$680, DW_AT_name("reflevelx"), DW_AT_symbol_name("_reflevelx")
	.dwattr DW$680, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$680, DW_AT_accessibility(DW_ACCESS_public)
DW$681	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$681, DW_AT_name("presentstatex"), DW_AT_symbol_name("_presentstatex")
	.dwattr DW$681, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$681, DW_AT_accessibility(DW_ACCESS_public)
DW$682	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$682, DW_AT_name("alarmlevelsingle"), DW_AT_symbol_name("_alarmlevelsingle")
	.dwattr DW$682, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$682, DW_AT_accessibility(DW_ACCESS_public)
DW$683	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$683, DW_AT_name("alarmlevelcyl"), DW_AT_symbol_name("_alarmlevelcyl")
	.dwattr DW$683, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$683, DW_AT_accessibility(DW_ACCESS_public)
DW$684	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$684, DW_AT_name("alarmlevelmbsum"), DW_AT_symbol_name("_alarmlevelmbsum")
	.dwattr DW$684, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$684, DW_AT_accessibility(DW_ACCESS_public)
DW$685	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$685, DW_AT_name("cylneighbour"), DW_AT_symbol_name("_cylneighbour")
	.dwattr DW$685, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$685, DW_AT_accessibility(DW_ACCESS_public)
DW$686	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$686, DW_AT_name("mbneighbour"), DW_AT_symbol_name("_mbneighbour")
	.dwattr DW$686, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$686, DW_AT_accessibility(DW_ACCESS_public)
DW$687	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$687, DW_AT_name("cylneighbouralarms"), DW_AT_symbol_name("_cylneighbouralarms")
	.dwattr DW$687, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$687, DW_AT_accessibility(DW_ACCESS_public)
DW$688	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$688, DW_AT_name("mbneighbouralarms"), DW_AT_symbol_name("_mbneighbouralarms")
	.dwattr DW$688, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$688, DW_AT_accessibility(DW_ACCESS_public)
DW$689	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$689, DW_AT_name("deltarpmlimit"), DW_AT_symbol_name("_deltarpmlimit")
	.dwattr DW$689, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$689, DW_AT_accessibility(DW_ACCESS_public)
DW$690	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$690, DW_AT_name("hysteresis"), DW_AT_symbol_name("_hysteresis")
	.dwattr DW$690, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$690, DW_AT_accessibility(DW_ACCESS_public)
DW$691	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$691, DW_AT_name("damagemonenb"), DW_AT_symbol_name("_damagemonenb")
	.dwattr DW$691, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$691, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$79


DW$T$80	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$80, DW_AT_name("tag_dynamicalarmsstruct")
	.dwattr DW$T$80, DW_AT_byte_size(0x24)
DW$692	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$692, DW_AT_name("rpmav"), DW_AT_symbol_name("_rpmav")
	.dwattr DW$692, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$692, DW_AT_accessibility(DW_ACCESS_public)
DW$693	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$693, DW_AT_name("single1"), DW_AT_symbol_name("_single1")
	.dwattr DW$693, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$693, DW_AT_accessibility(DW_ACCESS_public)
DW$694	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$694, DW_AT_name("cyl1"), DW_AT_symbol_name("_cyl1")
	.dwattr DW$694, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$694, DW_AT_accessibility(DW_ACCESS_public)
DW$695	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$695, DW_AT_name("mbsum1"), DW_AT_symbol_name("_mbsum1")
	.dwattr DW$695, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$695, DW_AT_accessibility(DW_ACCESS_public)
DW$696	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$696, DW_AT_name("single2"), DW_AT_symbol_name("_single2")
	.dwattr DW$696, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$696, DW_AT_accessibility(DW_ACCESS_public)
DW$697	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$697, DW_AT_name("cyl2"), DW_AT_symbol_name("_cyl2")
	.dwattr DW$697, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$697, DW_AT_accessibility(DW_ACCESS_public)
DW$698	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$698, DW_AT_name("mbsum2"), DW_AT_symbol_name("_mbsum2")
	.dwattr DW$698, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$698, DW_AT_accessibility(DW_ACCESS_public)
DW$699	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$699, DW_AT_name("deltarpmprev"), DW_AT_symbol_name("_deltarpmprev")
	.dwattr DW$699, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$699, DW_AT_accessibility(DW_ACCESS_public)
DW$700	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$700, DW_AT_name("deltarpm"), DW_AT_symbol_name("_deltarpm")
	.dwattr DW$700, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$700, DW_AT_accessibility(DW_ACCESS_public)
DW$701	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$701, DW_AT_name("deltarpm_int"), DW_AT_symbol_name("_deltarpm_int")
	.dwattr DW$701, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$701, DW_AT_accessibility(DW_ACCESS_public)
DW$702	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$702, DW_AT_name("rpmav_int"), DW_AT_symbol_name("_rpmav_int")
	.dwattr DW$702, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$702, DW_AT_accessibility(DW_ACCESS_public)
DW$703	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$703, DW_AT_name("deltarpmprev_int"), DW_AT_symbol_name("_deltarpmprev_int")
	.dwattr DW$703, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$703, DW_AT_accessibility(DW_ACCESS_public)
DW$704	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$704, DW_AT_name("single"), DW_AT_symbol_name("_single")
	.dwattr DW$704, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$704, DW_AT_accessibility(DW_ACCESS_public)
DW$705	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$705, DW_AT_name("cyl"), DW_AT_symbol_name("_cyl")
	.dwattr DW$705, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$705, DW_AT_accessibility(DW_ACCESS_public)
DW$706	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$706, DW_AT_name("mbsum"), DW_AT_symbol_name("_mbsum")
	.dwattr DW$706, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$706, DW_AT_accessibility(DW_ACCESS_public)
DW$707	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$707, DW_AT_name("singleprev"), DW_AT_symbol_name("_singleprev")
	.dwattr DW$707, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$707, DW_AT_accessibility(DW_ACCESS_public)
DW$708	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$708, DW_AT_name("cylprev"), DW_AT_symbol_name("_cylprev")
	.dwattr DW$708, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$708, DW_AT_accessibility(DW_ACCESS_public)
DW$709	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$709, DW_AT_name("mbsumprev"), DW_AT_symbol_name("_mbsumprev")
	.dwattr DW$709, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$709, DW_AT_accessibility(DW_ACCESS_public)
DW$710	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$710, DW_AT_name("single1_int"), DW_AT_symbol_name("_single1_int")
	.dwattr DW$710, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$710, DW_AT_accessibility(DW_ACCESS_public)
DW$711	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$711, DW_AT_name("cyl1_int"), DW_AT_symbol_name("_cyl1_int")
	.dwattr DW$711, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$711, DW_AT_accessibility(DW_ACCESS_public)
DW$712	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$712, DW_AT_name("mbsum1_int"), DW_AT_symbol_name("_mbsum1_int")
	.dwattr DW$712, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$712, DW_AT_accessibility(DW_ACCESS_public)
DW$713	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$713, DW_AT_name("single2_int"), DW_AT_symbol_name("_single2_int")
	.dwattr DW$713, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$713, DW_AT_accessibility(DW_ACCESS_public)
DW$714	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$714, DW_AT_name("cyl2_int"), DW_AT_symbol_name("_cyl2_int")
	.dwattr DW$714, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$714, DW_AT_accessibility(DW_ACCESS_public)
DW$715	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$715, DW_AT_name("mbsum2_int"), DW_AT_symbol_name("_mbsum2_int")
	.dwattr DW$715, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$715, DW_AT_accessibility(DW_ACCESS_public)
DW$716	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$716, DW_AT_name("hits"), DW_AT_symbol_name("_hits")
	.dwattr DW$716, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$716, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$80


DW$T$83	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$83, DW_AT_name("tag_speedcompstruct")
	.dwattr DW$T$83, DW_AT_byte_size(0x19)
DW$717	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$717, DW_AT_name("stageflag"), DW_AT_symbol_name("_stageflag")
	.dwattr DW$717, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$717, DW_AT_accessibility(DW_ACCESS_public)
DW$718	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$718, DW_AT_name("status"), DW_AT_symbol_name("_status")
	.dwattr DW$718, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$718, DW_AT_accessibility(DW_ACCESS_public)
DW$719	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$82)
	.dwattr DW$719, DW_AT_name("speedbands"), DW_AT_symbol_name("_speedbands")
	.dwattr DW$719, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$719, DW_AT_accessibility(DW_ACCESS_public)
DW$720	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$720, DW_AT_name("slopecoeff"), DW_AT_symbol_name("_slopecoeff")
	.dwattr DW$720, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$720, DW_AT_accessibility(DW_ACCESS_public)
DW$721	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$721, DW_AT_name("initialtimer"), DW_AT_symbol_name("_initialtimer")
	.dwattr DW$721, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$721, DW_AT_accessibility(DW_ACCESS_public)
DW$722	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$722, DW_AT_name("learningmodetimer"), DW_AT_symbol_name("_learningmodetimer")
	.dwattr DW$722, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$722, DW_AT_accessibility(DW_ACCESS_public)
DW$723	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$723, DW_AT_name("intervaltimer"), DW_AT_symbol_name("_intervaltimer")
	.dwattr DW$723, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$723, DW_AT_accessibility(DW_ACCESS_public)
DW$724	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$724, DW_AT_name("numsamples"), DW_AT_symbol_name("_numsamples")
	.dwattr DW$724, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$724, DW_AT_accessibility(DW_ACCESS_public)
DW$725	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$725, DW_AT_name("learningleft"), DW_AT_symbol_name("_learningleft")
	.dwattr DW$725, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$725, DW_AT_accessibility(DW_ACCESS_public)
DW$726	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$726, DW_AT_name("intervalleft"), DW_AT_symbol_name("_intervalleft")
	.dwattr DW$726, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$726, DW_AT_accessibility(DW_ACCESS_public)
DW$727	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$727, DW_AT_name("manappliedminsamples"), DW_AT_symbol_name("_manappliedminsamples")
	.dwattr DW$727, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$727, DW_AT_accessibility(DW_ACCESS_public)
DW$728	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$728, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$728, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$728, DW_AT_accessibility(DW_ACCESS_public)
DW$729	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$729, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$729, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$729, DW_AT_accessibility(DW_ACCESS_public)
DW$730	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$730, DW_AT_name("unused3"), DW_AT_symbol_name("_unused3")
	.dwattr DW$730, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$730, DW_AT_accessibility(DW_ACCESS_public)
DW$731	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$731, DW_AT_name("unused4"), DW_AT_symbol_name("_unused4")
	.dwattr DW$731, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$731, DW_AT_accessibility(DW_ACCESS_public)
DW$732	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$732, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$732, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$732, DW_AT_accessibility(DW_ACCESS_public)
DW$733	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$733, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$733, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$733, DW_AT_accessibility(DW_ACCESS_public)
DW$734	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$734, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$734, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$734, DW_AT_accessibility(DW_ACCESS_public)
DW$735	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$735, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$735, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$735, DW_AT_accessibility(DW_ACCESS_public)
DW$736	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$736, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$736, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$736, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$83


DW$T$84	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$84, DW_AT_name("tag_wiosettingsstruct")
	.dwattr DW$T$84, DW_AT_byte_size(0x0a)
DW$737	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$737, DW_AT_name("enabled"), DW_AT_symbol_name("_enabled")
	.dwattr DW$737, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$737, DW_AT_accessibility(DW_ACCESS_public)
DW$738	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$738, DW_AT_name("alarmmask"), DW_AT_symbol_name("_alarmmask")
	.dwattr DW$738, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$738, DW_AT_accessibility(DW_ACCESS_public)
DW$739	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$739, DW_AT_name("alarmupperlevel"), DW_AT_symbol_name("_alarmupperlevel")
	.dwattr DW$739, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$739, DW_AT_accessibility(DW_ACCESS_public)
DW$740	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$740, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$740, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$740, DW_AT_accessibility(DW_ACCESS_public)
DW$741	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$741, DW_AT_name("hysteresis"), DW_AT_symbol_name("_hysteresis")
	.dwattr DW$741, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$741, DW_AT_accessibility(DW_ACCESS_public)
DW$742	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$742, DW_AT_name("scaledmin"), DW_AT_symbol_name("_scaledmin")
	.dwattr DW$742, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$742, DW_AT_accessibility(DW_ACCESS_public)
DW$743	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$743, DW_AT_name("scaledmax"), DW_AT_symbol_name("_scaledmax")
	.dwattr DW$743, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$743, DW_AT_accessibility(DW_ACCESS_public)
DW$744	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$744, DW_AT_name("units"), DW_AT_symbol_name("_units")
	.dwattr DW$744, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$744, DW_AT_accessibility(DW_ACCESS_public)
DW$745	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$745, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$745, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$745, DW_AT_accessibility(DW_ACCESS_public)
DW$746	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$746, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$746, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$746, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$84


DW$T$85	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$85, DW_AT_name("tag_slemsettingsstruct")
	.dwattr DW$T$85, DW_AT_byte_size(0x06)
DW$747	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$747, DW_AT_name("enabled"), DW_AT_symbol_name("_enabled")
	.dwattr DW$747, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$747, DW_AT_accessibility(DW_ACCESS_public)
DW$748	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$748, DW_AT_name("alarmmask"), DW_AT_symbol_name("_alarmmask")
	.dwattr DW$748, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$748, DW_AT_accessibility(DW_ACCESS_public)
DW$749	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$749, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$749, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$749, DW_AT_accessibility(DW_ACCESS_public)
DW$750	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$750, DW_AT_name("mVfsd"), DW_AT_symbol_name("_mVfsd")
	.dwattr DW$750, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$750, DW_AT_accessibility(DW_ACCESS_public)
DW$751	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$751, DW_AT_name("hysteresis"), DW_AT_symbol_name("_hysteresis")
	.dwattr DW$751, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$751, DW_AT_accessibility(DW_ACCESS_public)
DW$752	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$752, DW_AT_name("alarmdelay"), DW_AT_symbol_name("_alarmdelay")
	.dwattr DW$752, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$752, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$85


DW$T$87	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$87, DW_AT_name("tag_slemsstruct")
	.dwattr DW$T$87, DW_AT_byte_size(0x03)
DW$753	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$753, DW_AT_name("mV"), DW_AT_symbol_name("_mV")
	.dwattr DW$753, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$753, DW_AT_accessibility(DW_ACCESS_public)
DW$754	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$86)
	.dwattr DW$754, DW_AT_name("alarms"), DW_AT_symbol_name("_alarms")
	.dwattr DW$754, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$754, DW_AT_accessibility(DW_ACCESS_public)
DW$755	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$755, DW_AT_name("levelcount"), DW_AT_symbol_name("_levelcount")
	.dwattr DW$755, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$755, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$87


DW$T$88	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$88, DW_AT_name("tag_cppsettingsstruct")
	.dwattr DW$T$88, DW_AT_byte_size(0x10)
DW$756	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$756, DW_AT_name("iCppEnable"), DW_AT_symbol_name("_iCppEnable")
	.dwattr DW$756, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$756, DW_AT_accessibility(DW_ACCESS_public)
DW$757	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$757, DW_AT_name("iCppLowLimit"), DW_AT_symbol_name("_iCppLowLimit")
	.dwattr DW$757, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$757, DW_AT_accessibility(DW_ACCESS_public)
DW$758	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$758, DW_AT_name("iCppHighLimit"), DW_AT_symbol_name("_iCppHighLimit")
	.dwattr DW$758, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$758, DW_AT_accessibility(DW_ACCESS_public)
DW$759	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$759, DW_AT_name("cppkvalue"), DW_AT_symbol_name("_cppkvalue")
	.dwattr DW$759, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$759, DW_AT_accessibility(DW_ACCESS_public)
DW$760	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$760, DW_AT_name("gammavalue"), DW_AT_symbol_name("_gammavalue")
	.dwattr DW$760, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$760, DW_AT_accessibility(DW_ACCESS_public)
DW$761	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$761, DW_AT_name("cpplevelx"), DW_AT_symbol_name("_cpplevelx")
	.dwattr DW$761, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$761, DW_AT_accessibility(DW_ACCESS_public)
DW$762	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$762, DW_AT_name("delatRpmPauseDelay"), DW_AT_symbol_name("_delatRpmPauseDelay")
	.dwattr DW$762, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$762, DW_AT_accessibility(DW_ACCESS_public)
DW$763	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$763, DW_AT_name("calAlarmThreshhold"), DW_AT_symbol_name("_calAlarmThreshhold")
	.dwattr DW$763, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$763, DW_AT_accessibility(DW_ACCESS_public)
DW$764	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$764, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$764, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$764, DW_AT_accessibility(DW_ACCESS_public)
DW$765	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$765, DW_AT_name("unused3"), DW_AT_symbol_name("_unused3")
	.dwattr DW$765, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$765, DW_AT_accessibility(DW_ACCESS_public)
DW$766	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$766, DW_AT_name("unused4"), DW_AT_symbol_name("_unused4")
	.dwattr DW$766, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$766, DW_AT_accessibility(DW_ACCESS_public)
DW$767	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$767, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$767, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$767, DW_AT_accessibility(DW_ACCESS_public)
DW$768	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$768, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$768, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$768, DW_AT_accessibility(DW_ACCESS_public)
DW$769	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$769, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$769, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$769, DW_AT_accessibility(DW_ACCESS_public)
DW$770	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$770, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$770, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$770, DW_AT_accessibility(DW_ACCESS_public)
DW$771	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$771, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$771, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$771, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$88


DW$T$89	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$89, DW_AT_name("tag_sensorMoving")
	.dwattr DW$T$89, DW_AT_byte_size(0x02)
DW$772	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$772, DW_AT_name("calAlarmThreshhold"), DW_AT_symbol_name("_calAlarmThreshhold")
	.dwattr DW$772, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$772, DW_AT_accessibility(DW_ACCESS_public)
DW$773	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$773, DW_AT_name("unusedByte"), DW_AT_symbol_name("_unusedByte")
	.dwattr DW$773, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$773, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$89


DW$T$93	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$93, DW_AT_name("tag_dcmodechecksstruct")
	.dwattr DW$T$93, DW_AT_byte_size(0x0f)
DW$774	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$90)
	.dwattr DW$774, DW_AT_name("ideal"), DW_AT_symbol_name("_ideal")
	.dwattr DW$774, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$774, DW_AT_accessibility(DW_ACCESS_public)
DW$775	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$91)
	.dwattr DW$775, DW_AT_name("ok"), DW_AT_symbol_name("_ok")
	.dwattr DW$775, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$775, DW_AT_accessibility(DW_ACCESS_public)
DW$776	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$92)
	.dwattr DW$776, DW_AT_name("cylinderComparison"), DW_AT_symbol_name("_cylinderComparison")
	.dwattr DW$776, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$776, DW_AT_accessibility(DW_ACCESS_public)
DW$777	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$777, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$777, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$777, DW_AT_accessibility(DW_ACCESS_public)
DW$778	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$778, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$778, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$778, DW_AT_accessibility(DW_ACCESS_public)
DW$779	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$779, DW_AT_name("unused3"), DW_AT_symbol_name("_unused3")
	.dwattr DW$779, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$779, DW_AT_accessibility(DW_ACCESS_public)
DW$780	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$780, DW_AT_name("unused4"), DW_AT_symbol_name("_unused4")
	.dwattr DW$780, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$780, DW_AT_accessibility(DW_ACCESS_public)
DW$781	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$781, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$781, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$781, DW_AT_accessibility(DW_ACCESS_public)
DW$782	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$782, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$782, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$782, DW_AT_accessibility(DW_ACCESS_public)
DW$783	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$783, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$783, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$783, DW_AT_accessibility(DW_ACCESS_public)
DW$784	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$784, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$784, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$784, DW_AT_accessibility(DW_ACCESS_public)
DW$785	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$785, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$785, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$785, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$93

DW$T$365	.dwtag  DW_TAG_typedef, DW_AT_name("inputstruct"), DW_AT_type(*DW$T$105)
	.dwattr DW$T$365, DW_AT_language(DW_LANG_C)

DW$T$111	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$111, DW_AT_name("tag_sdfilestruct")
	.dwattr DW$T$111, DW_AT_byte_size(0x14e)
DW$786	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$786, DW_AT_name("year1"), DW_AT_symbol_name("_year1")
	.dwattr DW$786, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$786, DW_AT_accessibility(DW_ACCESS_public)
DW$787	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$787, DW_AT_name("month1"), DW_AT_symbol_name("_month1")
	.dwattr DW$787, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$787, DW_AT_accessibility(DW_ACCESS_public)
DW$788	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$788, DW_AT_name("date1"), DW_AT_symbol_name("_date1")
	.dwattr DW$788, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$788, DW_AT_accessibility(DW_ACCESS_public)
DW$789	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$789, DW_AT_name("yearn"), DW_AT_symbol_name("_yearn")
	.dwattr DW$789, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$789, DW_AT_accessibility(DW_ACCESS_public)
DW$790	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$790, DW_AT_name("monthn"), DW_AT_symbol_name("_monthn")
	.dwattr DW$790, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$790, DW_AT_accessibility(DW_ACCESS_public)
DW$791	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$791, DW_AT_name("daten"), DW_AT_symbol_name("_daten")
	.dwattr DW$791, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$791, DW_AT_accessibility(DW_ACCESS_public)
DW$792	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$792, DW_AT_name("readyear"), DW_AT_symbol_name("_readyear")
	.dwattr DW$792, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$792, DW_AT_accessibility(DW_ACCESS_public)
DW$793	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$793, DW_AT_name("readmonth"), DW_AT_symbol_name("_readmonth")
	.dwattr DW$793, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$793, DW_AT_accessibility(DW_ACCESS_public)
DW$794	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$794, DW_AT_name("readdate"), DW_AT_symbol_name("_readdate")
	.dwattr DW$794, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$794, DW_AT_accessibility(DW_ACCESS_public)
DW$795	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$107)
	.dwattr DW$795, DW_AT_name("file"), DW_AT_symbol_name("_file")
	.dwattr DW$795, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$795, DW_AT_accessibility(DW_ACCESS_public)
DW$796	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$108)
	.dwattr DW$796, DW_AT_name("readbuffer"), DW_AT_symbol_name("_readbuffer")
	.dwattr DW$796, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$796, DW_AT_accessibility(DW_ACCESS_public)
DW$797	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$797, DW_AT_name("entryposition"), DW_AT_symbol_name("_entryposition")
	.dwattr DW$797, DW_AT_data_member_location[DW_OP_plus_uconst 0x138]
	.dwattr DW$797, DW_AT_accessibility(DW_ACCESS_public)
DW$798	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$798, DW_AT_name("logtype"), DW_AT_symbol_name("_logtype")
	.dwattr DW$798, DW_AT_data_member_location[DW_OP_plus_uconst 0x13a]
	.dwattr DW$798, DW_AT_accessibility(DW_ACCESS_public)
DW$799	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$109)
	.dwattr DW$799, DW_AT_name("directorystr"), DW_AT_symbol_name("_directorystr")
	.dwattr DW$799, DW_AT_data_member_location[DW_OP_plus_uconst 0x13b]
	.dwattr DW$799, DW_AT_accessibility(DW_ACCESS_public)
DW$800	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$110)
	.dwattr DW$800, DW_AT_name("filenamestr"), DW_AT_symbol_name("_filenamestr")
	.dwattr DW$800, DW_AT_data_member_location[DW_OP_plus_uconst 0x13f]
	.dwattr DW$800, DW_AT_accessibility(DW_ACCESS_public)
DW$801	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$801, DW_AT_name("getnumwords"), DW_AT_symbol_name("_getnumwords")
	.dwattr DW$801, DW_AT_data_member_location[DW_OP_plus_uconst 0x146]
	.dwattr DW$801, DW_AT_accessibility(DW_ACCESS_public)
DW$802	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$802, DW_AT_name("setnumwords"), DW_AT_symbol_name("_setnumwords")
	.dwattr DW$802, DW_AT_data_member_location[DW_OP_plus_uconst 0x148]
	.dwattr DW$802, DW_AT_accessibility(DW_ACCESS_public)
DW$803	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$803, DW_AT_name("setoffset"), DW_AT_symbol_name("_setoffset")
	.dwattr DW$803, DW_AT_data_member_location[DW_OP_plus_uconst 0x14a]
	.dwattr DW$803, DW_AT_accessibility(DW_ACCESS_public)
DW$804	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$804, DW_AT_name("readwriteflag"), DW_AT_symbol_name("_readwriteflag")
	.dwattr DW$804, DW_AT_data_member_location[DW_OP_plus_uconst 0x14c]
	.dwattr DW$804, DW_AT_accessibility(DW_ACCESS_public)
DW$805	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$805, DW_AT_name("readwriteprogress"), DW_AT_symbol_name("_readwriteprogress")
	.dwattr DW$805, DW_AT_data_member_location[DW_OP_plus_uconst 0x14d]
	.dwattr DW$805, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$111


DW$T$113	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$113, DW_AT_name("tag_sdsettingsstruct")
	.dwattr DW$T$113, DW_AT_byte_size(0x04)
DW$806	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$806, DW_AT_name("present"), DW_AT_symbol_name("_present")
	.dwattr DW$806, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$806, DW_AT_accessibility(DW_ACCESS_public)
DW$807	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$807, DW_AT_name("sequence"), DW_AT_symbol_name("_sequence")
	.dwattr DW$807, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$807, DW_AT_accessibility(DW_ACCESS_public)
DW$808	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$808, DW_AT_name("errornum"), DW_AT_symbol_name("_errornum")
	.dwattr DW$808, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$808, DW_AT_accessibility(DW_ACCESS_public)
DW$809	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$112)
	.dwattr DW$809, DW_AT_name("readstatus"), DW_AT_symbol_name("_readstatus")
	.dwattr DW$809, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$809, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$113


DW$T$119	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$119, DW_AT_name("tag_shorttermlogstruct")
	.dwattr DW$T$119, DW_AT_byte_size(0x2e)
DW$810	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$810, DW_AT_name("setupvalue"), DW_AT_symbol_name("_setupvalue")
	.dwattr DW$810, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$810, DW_AT_accessibility(DW_ACCESS_public)
DW$811	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$117)
	.dwattr DW$811, DW_AT_name("sdcard"), DW_AT_symbol_name("_sdcard")
	.dwattr DW$811, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$811, DW_AT_accessibility(DW_ACCESS_public)
DW$812	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$118)
	.dwattr DW$812, DW_AT_name("sdshorttermfilenames"), DW_AT_symbol_name("_sdshorttermfilenames")
	.dwattr DW$812, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$812, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$119


DW$T$121	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$121, DW_AT_name("tag_longtermlogstruct")
	.dwattr DW$T$121, DW_AT_byte_size(0x14)
DW$813	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$120)
	.dwattr DW$813, DW_AT_name("sdcard"), DW_AT_symbol_name("_sdcard")
	.dwattr DW$813, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$813, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$121


DW$T$123	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$123, DW_AT_name("tag_asciilogstruct")
	.dwattr DW$T$123, DW_AT_byte_size(0x12)
DW$814	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$122)
	.dwattr DW$814, DW_AT_name("sdcard"), DW_AT_symbol_name("_sdcard")
	.dwattr DW$814, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$814, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$123


DW$T$125	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$125, DW_AT_name("tag_mansdstruct")
	.dwattr DW$T$125, DW_AT_byte_size(0x19)
DW$815	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$124)
	.dwattr DW$815, DW_AT_name("sdcard"), DW_AT_symbol_name("_sdcard")
	.dwattr DW$815, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$815, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$125

DW$T$380	.dwtag  DW_TAG_typedef, DW_AT_name("sdcarddirstruct"), DW_AT_type(*DW$T$127)
	.dwattr DW$T$380, DW_AT_language(DW_LANG_C)
DW$T$9	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned short")
	.dwattr DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$9, DW_AT_byte_size(0x01)

DW$T$72	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$72, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$72, DW_AT_byte_size(0x1c)
DW$816	.dwtag  DW_TAG_subrange_type
	.dwattr DW$816, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$72


DW$T$59	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$59, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$59, DW_AT_byte_size(0x0e)
DW$817	.dwtag  DW_TAG_subrange_type
	.dwattr DW$817, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$59


DW$T$82	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$82, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$82, DW_AT_byte_size(0x06)
DW$818	.dwtag  DW_TAG_subrange_type
	.dwattr DW$818, DW_AT_upper_bound(0x02)
DW$819	.dwtag  DW_TAG_subrange_type
	.dwattr DW$819, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$82


DW$T$109	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$109, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$109, DW_AT_byte_size(0x04)
DW$820	.dwtag  DW_TAG_subrange_type
	.dwattr DW$820, DW_AT_upper_bound(0x03)
	.dwendtag DW$T$109


DW$T$110	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$110, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$110, DW_AT_byte_size(0x06)
DW$821	.dwtag  DW_TAG_subrange_type
	.dwattr DW$821, DW_AT_upper_bound(0x05)
	.dwendtag DW$T$110

DW$T$16	.dwtag  DW_TAG_base_type, DW_AT_name("float")
	.dwattr DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$16, DW_AT_byte_size(0x02)

DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$39, DW_AT_byte_size(0x10)
DW$822	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$822, DW_AT_name("writesector"), DW_AT_symbol_name("_writesector")
	.dwattr DW$822, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$822, DW_AT_accessibility(DW_ACCESS_public)
DW$823	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$823, DW_AT_name("writemultiplesector"), DW_AT_symbol_name("_writemultiplesector")
	.dwattr DW$823, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$823, DW_AT_accessibility(DW_ACCESS_public)
DW$824	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$824, DW_AT_name("readsector"), DW_AT_symbol_name("_readsector")
	.dwattr DW$824, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$824, DW_AT_accessibility(DW_ACCESS_public)
DW$825	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$825, DW_AT_name("readmultiplesector"), DW_AT_symbol_name("_readmultiplesector")
	.dwattr DW$825, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$825, DW_AT_accessibility(DW_ACCESS_public)
DW$826	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$826, DW_AT_name("getphy"), DW_AT_symbol_name("_getphy")
	.dwattr DW$826, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$826, DW_AT_accessibility(DW_ACCESS_public)
DW$827	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$827, DW_AT_name("getstatus"), DW_AT_symbol_name("_getstatus")
	.dwattr DW$827, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$827, DW_AT_accessibility(DW_ACCESS_public)
DW$828	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$38)
	.dwattr DW$828, DW_AT_name("delfunc"), DW_AT_symbol_name("_delfunc")
	.dwattr DW$828, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$828, DW_AT_accessibility(DW_ACCESS_public)
DW$829	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$3)
	.dwattr DW$829, DW_AT_name("user_ptr"), DW_AT_symbol_name("_user_ptr")
	.dwattr DW$829, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$829, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39


DW$T$41	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$40)
	.dwattr DW$T$41, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$41, DW_AT_byte_size(0x14)
DW$830	.dwtag  DW_TAG_subrange_type
	.dwattr DW$830, DW_AT_upper_bound(0x13)
	.dwendtag DW$T$41


DW$T$42	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$40)
	.dwattr DW$T$42, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$42, DW_AT_byte_size(0x08)
DW$831	.dwtag  DW_TAG_subrange_type
	.dwattr DW$831, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$42


DW$T$43	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$40)
	.dwattr DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$43, DW_AT_byte_size(0x03)
DW$832	.dwtag  DW_TAG_subrange_type
	.dwattr DW$832, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$43


DW$T$108	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$40)
	.dwattr DW$T$108, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$108, DW_AT_byte_size(0x12c)
DW$833	.dwtag  DW_TAG_subrange_type
	.dwattr DW$833, DW_AT_upper_bound(0x12b)
	.dwendtag DW$T$108

DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("F_NAME"), DW_AT_type(*DW$T$44)
	.dwattr DW$T$46, DW_AT_language(DW_LANG_C)
DW$T$47	.dwtag  DW_TAG_typedef, DW_AT_name("F_POS"), DW_AT_type(*DW$T$45)
	.dwattr DW$T$47, DW_AT_language(DW_LANG_C)

DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$49, DW_AT_byte_size(0x02)
DW$834	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$3)
	.dwattr DW$834, DW_AT_name("reference"), DW_AT_symbol_name("_reference")
	.dwattr DW$834, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$834, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$49


DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$50, DW_AT_name("tag_status1struct")
	.dwattr DW$T$50, DW_AT_byte_size(0x01)
DW$835	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$835, DW_AT_name("enabled"), DW_AT_symbol_name("_enabled")
	.dwattr DW$835, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$835, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$835, DW_AT_accessibility(DW_ACCESS_public)
DW$836	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$836, DW_AT_name("calmode"), DW_AT_symbol_name("_calmode")
	.dwattr DW$836, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$836, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$836, DW_AT_accessibility(DW_ACCESS_public)
DW$837	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$837, DW_AT_name("alarmmask"), DW_AT_symbol_name("_alarmmask")
	.dwattr DW$837, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$837, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$837, DW_AT_accessibility(DW_ACCESS_public)
DW$838	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$838, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$838, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$838, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$838, DW_AT_accessibility(DW_ACCESS_public)
DW$839	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$839, DW_AT_name("replaced"), DW_AT_symbol_name("_replaced")
	.dwattr DW$839, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$839, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$839, DW_AT_accessibility(DW_ACCESS_public)
DW$840	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$840, DW_AT_name("excludeslowroll"), DW_AT_symbol_name("_excludeslowroll")
	.dwattr DW$840, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$840, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$840, DW_AT_accessibility(DW_ACCESS_public)
DW$841	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$841, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$841, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$841, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$841, DW_AT_accessibility(DW_ACCESS_public)
DW$842	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$842, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$842, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$842, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$842, DW_AT_accessibility(DW_ACCESS_public)
DW$843	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$843, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$843, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$843, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$843, DW_AT_accessibility(DW_ACCESS_public)
DW$844	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$844, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$844, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$844, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$844, DW_AT_accessibility(DW_ACCESS_public)
DW$845	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$845, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$845, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$845, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$845, DW_AT_accessibility(DW_ACCESS_public)
DW$846	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$846, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$846, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$846, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$846, DW_AT_accessibility(DW_ACCESS_public)
DW$847	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$847, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$847, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$847, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$847, DW_AT_accessibility(DW_ACCESS_public)
DW$848	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$848, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$848, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$848, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$848, DW_AT_accessibility(DW_ACCESS_public)
DW$849	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$849, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$849, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$849, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$849, DW_AT_accessibility(DW_ACCESS_public)
DW$850	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$850, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$850, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$850, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$850, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$50


DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$52, DW_AT_byte_size(0x02)
DW$851	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$851, DW_AT_name("enb"), DW_AT_symbol_name("_enb")
	.dwattr DW$851, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$851, DW_AT_accessibility(DW_ACCESS_public)
DW$852	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$852, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$852, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$852, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$52


DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$55, DW_AT_byte_size(0x03)
DW$853	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$853, DW_AT_name("yrmnth"), DW_AT_symbol_name("_yrmnth")
	.dwattr DW$853, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$853, DW_AT_accessibility(DW_ACCESS_public)
DW$854	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$854, DW_AT_name("datehrs"), DW_AT_symbol_name("_datehrs")
	.dwattr DW$854, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$854, DW_AT_accessibility(DW_ACCESS_public)
DW$855	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$855, DW_AT_name("minssecs"), DW_AT_symbol_name("_minssecs")
	.dwattr DW$855, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$855, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$55


DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$56, DW_AT_byte_size(0x03)
DW$856	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$856, DW_AT_name("yrmnth"), DW_AT_symbol_name("_yrmnth")
	.dwattr DW$856, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$856, DW_AT_accessibility(DW_ACCESS_public)
DW$857	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$857, DW_AT_name("datehrs"), DW_AT_symbol_name("_datehrs")
	.dwattr DW$857, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$857, DW_AT_accessibility(DW_ACCESS_public)
DW$858	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$858, DW_AT_name("minssecs"), DW_AT_symbol_name("_minssecs")
	.dwattr DW$858, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$858, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$56


DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$60, DW_AT_name("tag_timers")
	.dwattr DW$T$60, DW_AT_byte_size(0x4c)
DW$859	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$859, DW_AT_name("update"), DW_AT_symbol_name("_update")
	.dwattr DW$859, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$859, DW_AT_accessibility(DW_ACCESS_public)
DW$860	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$860, DW_AT_name("general"), DW_AT_symbol_name("_general")
	.dwattr DW$860, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$860, DW_AT_accessibility(DW_ACCESS_public)
DW$861	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$861, DW_AT_name("rxcharTimeout"), DW_AT_symbol_name("_rxcharTimeout")
	.dwattr DW$861, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$861, DW_AT_accessibility(DW_ACCESS_public)
DW$862	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$862, DW_AT_name("wiorxtimeout"), DW_AT_symbol_name("_wiorxtimeout")
	.dwattr DW$862, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$862, DW_AT_accessibility(DW_ACCESS_public)
DW$863	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$863, DW_AT_name("wiomasterrxtimeout"), DW_AT_symbol_name("_wiomasterrxtimeout")
	.dwattr DW$863, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$863, DW_AT_accessibility(DW_ACCESS_public)
DW$864	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$864, DW_AT_name("masterrxtimeout"), DW_AT_symbol_name("_masterrxtimeout")
	.dwattr DW$864, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$864, DW_AT_accessibility(DW_ACCESS_public)
DW$865	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$865, DW_AT_name("slaverxtimeout"), DW_AT_symbol_name("_slaverxtimeout")
	.dwattr DW$865, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$865, DW_AT_accessibility(DW_ACCESS_public)
DW$866	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$866, DW_AT_name("sectick"), DW_AT_symbol_name("_sectick")
	.dwattr DW$866, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$866, DW_AT_accessibility(DW_ACCESS_public)
DW$867	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$867, DW_AT_name("ledflash"), DW_AT_symbol_name("_ledflash")
	.dwattr DW$867, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$867, DW_AT_accessibility(DW_ACCESS_public)
DW$868	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$868, DW_AT_name("prtsettle"), DW_AT_symbol_name("_prtsettle")
	.dwattr DW$868, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$868, DW_AT_accessibility(DW_ACCESS_public)
DW$869	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$59)
	.dwattr DW$869, DW_AT_name("chantimeout"), DW_AT_symbol_name("_chantimeout")
	.dwattr DW$869, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$869, DW_AT_accessibility(DW_ACCESS_public)
DW$870	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$59)
	.dwattr DW$870, DW_AT_name("chanwait"), DW_AT_symbol_name("_chanwait")
	.dwattr DW$870, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$870, DW_AT_accessibility(DW_ACCESS_public)
DW$871	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$871, DW_AT_name("pcrxtimeout"), DW_AT_symbol_name("_pcrxtimeout")
	.dwattr DW$871, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$871, DW_AT_accessibility(DW_ACCESS_public)
DW$872	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$872, DW_AT_name("pctxtimeout"), DW_AT_symbol_name("_pctxtimeout")
	.dwattr DW$872, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$872, DW_AT_accessibility(DW_ACCESS_public)
DW$873	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$873, DW_AT_name("spistatus"), DW_AT_symbol_name("_spistatus")
	.dwattr DW$873, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$873, DW_AT_accessibility(DW_ACCESS_public)
DW$874	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$874, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$874, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$874, DW_AT_accessibility(DW_ACCESS_public)
DW$875	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$875, DW_AT_name("slaverqst"), DW_AT_symbol_name("_slaverqst")
	.dwattr DW$875, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$875, DW_AT_accessibility(DW_ACCESS_public)
DW$876	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$876, DW_AT_name("mastermodebutton"), DW_AT_symbol_name("_mastermodebutton")
	.dwattr DW$876, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$876, DW_AT_accessibility(DW_ACCESS_public)
DW$877	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$877, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$877, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$877, DW_AT_accessibility(DW_ACCESS_public)
DW$878	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$878, DW_AT_name("calibrate"), DW_AT_symbol_name("_calibrate")
	.dwattr DW$878, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$878, DW_AT_accessibility(DW_ACCESS_public)
DW$879	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$879, DW_AT_name("calibrate2"), DW_AT_symbol_name("_calibrate2")
	.dwattr DW$879, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$879, DW_AT_accessibility(DW_ACCESS_public)
DW$880	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$880, DW_AT_name("alarmreflash"), DW_AT_symbol_name("_alarmreflash")
	.dwattr DW$880, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$880, DW_AT_accessibility(DW_ACCESS_public)
DW$881	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$881, DW_AT_name("slowdownreflash"), DW_AT_symbol_name("_slowdownreflash")
	.dwattr DW$881, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr DW$881, DW_AT_accessibility(DW_ACCESS_public)
DW$882	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$882, DW_AT_name("wiorqst"), DW_AT_symbol_name("_wiorqst")
	.dwattr DW$882, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$882, DW_AT_accessibility(DW_ACCESS_public)
DW$883	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$883, DW_AT_name("rpmtimeout"), DW_AT_symbol_name("_rpmtimeout")
	.dwattr DW$883, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr DW$883, DW_AT_accessibility(DW_ACCESS_public)
DW$884	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$884, DW_AT_name("analogoor"), DW_AT_symbol_name("_analogoor")
	.dwattr DW$884, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$884, DW_AT_accessibility(DW_ACCESS_public)
DW$885	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$885, DW_AT_name("motioncal"), DW_AT_symbol_name("_motioncal")
	.dwattr DW$885, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr DW$885, DW_AT_accessibility(DW_ACCESS_public)
DW$886	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$886, DW_AT_name("framcheck"), DW_AT_symbol_name("_framcheck")
	.dwattr DW$886, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$886, DW_AT_accessibility(DW_ACCESS_public)
DW$887	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$887, DW_AT_name("pcmodbus"), DW_AT_symbol_name("_pcmodbus")
	.dwattr DW$887, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr DW$887, DW_AT_accessibility(DW_ACCESS_public)
DW$888	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$888, DW_AT_name("statusreflash"), DW_AT_symbol_name("_statusreflash")
	.dwattr DW$888, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$888, DW_AT_accessibility(DW_ACCESS_public)
DW$889	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$889, DW_AT_name("prewarn"), DW_AT_symbol_name("_prewarn")
	.dwattr DW$889, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$889, DW_AT_accessibility(DW_ACCESS_public)
DW$890	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$890, DW_AT_name("clocktofram"), DW_AT_symbol_name("_clocktofram")
	.dwattr DW$890, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr DW$890, DW_AT_accessibility(DW_ACCESS_public)
DW$891	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$891, DW_AT_name("debugrapidfast"), DW_AT_symbol_name("_debugrapidfast")
	.dwattr DW$891, DW_AT_data_member_location[DW_OP_plus_uconst 0x3f]
	.dwattr DW$891, DW_AT_accessibility(DW_ACCESS_public)
DW$892	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$892, DW_AT_name("debugupdate"), DW_AT_symbol_name("_debugupdate")
	.dwattr DW$892, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$892, DW_AT_accessibility(DW_ACCESS_public)
DW$893	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$893, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$893, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr DW$893, DW_AT_accessibility(DW_ACCESS_public)
DW$894	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$894, DW_AT_name("startup"), DW_AT_symbol_name("_startup")
	.dwattr DW$894, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr DW$894, DW_AT_accessibility(DW_ACCESS_public)
DW$895	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$895, DW_AT_name("analogsettle"), DW_AT_symbol_name("_analogsettle")
	.dwattr DW$895, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr DW$895, DW_AT_accessibility(DW_ACCESS_public)
DW$896	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$896, DW_AT_name("reprogram"), DW_AT_symbol_name("_reprogram")
	.dwattr DW$896, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr DW$896, DW_AT_accessibility(DW_ACCESS_public)
DW$897	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$897, DW_AT_name("reprogramtimeout"), DW_AT_symbol_name("_reprogramtimeout")
	.dwattr DW$897, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr DW$897, DW_AT_accessibility(DW_ACCESS_public)
DW$898	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$898, DW_AT_name("dcmodestayalive"), DW_AT_symbol_name("_dcmodestayalive")
	.dwattr DW$898, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$898, DW_AT_accessibility(DW_ACCESS_public)
DW$899	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$899, DW_AT_name("biteventchange"), DW_AT_symbol_name("_biteventchange")
	.dwattr DW$899, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr DW$899, DW_AT_accessibility(DW_ACCESS_public)
DW$900	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$900, DW_AT_name("iSensorReplace"), DW_AT_symbol_name("_iSensorReplace")
	.dwattr DW$900, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr DW$900, DW_AT_accessibility(DW_ACCESS_public)
DW$901	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$901, DW_AT_name("deltarpm15Delay"), DW_AT_symbol_name("_deltarpm15Delay")
	.dwattr DW$901, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr DW$901, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$60


DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$61, DW_AT_byte_size(0x01)
DW$902	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$902, DW_AT_name("newval"), DW_AT_symbol_name("_newval")
	.dwattr DW$902, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$902, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$902, DW_AT_accessibility(DW_ACCESS_public)
DW$903	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$903, DW_AT_name("calmode"), DW_AT_symbol_name("_calmode")
	.dwattr DW$903, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$903, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$903, DW_AT_accessibility(DW_ACCESS_public)
DW$904	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$904, DW_AT_name("startcal"), DW_AT_symbol_name("_startcal")
	.dwattr DW$904, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$904, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$904, DW_AT_accessibility(DW_ACCESS_public)
DW$905	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$905, DW_AT_name("newvalspu2"), DW_AT_symbol_name("_newvalspu2")
	.dwattr DW$905, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$905, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$905, DW_AT_accessibility(DW_ACCESS_public)
DW$906	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$906, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$906, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$906, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$906, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$61


DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$62, DW_AT_byte_size(0x01)
DW$907	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$907, DW_AT_name("slowdowncntrl"), DW_AT_symbol_name("_slowdowncntrl")
	.dwattr DW$907, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$907, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$907, DW_AT_accessibility(DW_ACCESS_public)
DW$908	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$908, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$908, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0f)
	.dwattr DW$908, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$908, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$62


DW$T$65	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$65, DW_AT_byte_size(0x01)
DW$909	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$909, DW_AT_name("inputtap"), DW_AT_symbol_name("_inputtap")
	.dwattr DW$909, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$909, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$65


DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$66, DW_AT_byte_size(0x01)
DW$910	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$910, DW_AT_name("bitmap"), DW_AT_symbol_name("_bitmap")
	.dwattr DW$910, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$910, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$66


DW$T$67	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$67, DW_AT_byte_size(0x01)
DW$911	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$911, DW_AT_name("graphvalue"), DW_AT_symbol_name("_graphvalue")
	.dwattr DW$911, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$911, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$67


DW$T$68	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$68, DW_AT_byte_size(0x03)
DW$912	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$912, DW_AT_name("chanlowthreshold"), DW_AT_symbol_name("_chanlowthreshold")
	.dwattr DW$912, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$912, DW_AT_accessibility(DW_ACCESS_public)
DW$913	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$913, DW_AT_name("chanhighthreshold"), DW_AT_symbol_name("_chanhighthreshold")
	.dwattr DW$913, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$913, DW_AT_accessibility(DW_ACCESS_public)
DW$914	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$914, DW_AT_name("sensorscalingfactor"), DW_AT_symbol_name("_sensorscalingfactor")
	.dwattr DW$914, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$914, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$68


DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$69, DW_AT_byte_size(0x02)
DW$915	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$915, DW_AT_name("shortlrate"), DW_AT_symbol_name("_shortlrate")
	.dwattr DW$915, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$915, DW_AT_accessibility(DW_ACCESS_public)
DW$916	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$916, DW_AT_name("longlrate"), DW_AT_symbol_name("_longlrate")
	.dwattr DW$916, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$916, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$69


DW$T$70	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$70, DW_AT_byte_size(0x10)
DW$917	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$917, DW_AT_name("wiorequest"), DW_AT_symbol_name("_wiorequest")
	.dwattr DW$917, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$917, DW_AT_accessibility(DW_ACCESS_public)
DW$918	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$918, DW_AT_name("wiocancelled"), DW_AT_symbol_name("_wiocancelled")
	.dwattr DW$918, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$918, DW_AT_accessibility(DW_ACCESS_public)
DW$919	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$919, DW_AT_name("wioreceived"), DW_AT_symbol_name("_wioreceived")
	.dwattr DW$919, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$919, DW_AT_accessibility(DW_ACCESS_public)
DW$920	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$920, DW_AT_name("slaverequest"), DW_AT_symbol_name("_slaverequest")
	.dwattr DW$920, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$920, DW_AT_accessibility(DW_ACCESS_public)
DW$921	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$921, DW_AT_name("slavereceived"), DW_AT_symbol_name("_slavereceived")
	.dwattr DW$921, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$921, DW_AT_accessibility(DW_ACCESS_public)
DW$922	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$922, DW_AT_name("slaveretry"), DW_AT_symbol_name("_slaveretry")
	.dwattr DW$922, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$922, DW_AT_accessibility(DW_ACCESS_public)
DW$923	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$923, DW_AT_name("pcrequest"), DW_AT_symbol_name("_pcrequest")
	.dwattr DW$923, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$923, DW_AT_accessibility(DW_ACCESS_public)
DW$924	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$924, DW_AT_name("pcreqtimeout"), DW_AT_symbol_name("_pcreqtimeout")
	.dwattr DW$924, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$924, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$70


DW$T$77	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$77, DW_AT_name("tag_sensorstruct")
	.dwattr DW$T$77, DW_AT_byte_size(0x12)
DW$925	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$75)
	.dwattr DW$925, DW_AT_name("status1"), DW_AT_symbol_name("_status1")
	.dwattr DW$925, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$925, DW_AT_accessibility(DW_ACCESS_public)
DW$926	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$76)
	.dwattr DW$926, DW_AT_name("status2"), DW_AT_symbol_name("_status2")
	.dwattr DW$926, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$926, DW_AT_accessibility(DW_ACCESS_public)
DW$927	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$927, DW_AT_name("newval"), DW_AT_symbol_name("_newval")
	.dwattr DW$927, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$927, DW_AT_accessibility(DW_ACCESS_public)
DW$928	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$928, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$928, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$928, DW_AT_accessibility(DW_ACCESS_public)
DW$929	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$929, DW_AT_name("immediateval"), DW_AT_symbol_name("_immediateval")
	.dwattr DW$929, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$929, DW_AT_accessibility(DW_ACCESS_public)
DW$930	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$930, DW_AT_name("initialval"), DW_AT_symbol_name("_initialval")
	.dwattr DW$930, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$930, DW_AT_accessibility(DW_ACCESS_public)
DW$931	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$931, DW_AT_name("precomp"), DW_AT_symbol_name("_precomp")
	.dwattr DW$931, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$931, DW_AT_accessibility(DW_ACCESS_public)
DW$932	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$932, DW_AT_name("postcomp"), DW_AT_symbol_name("_postcomp")
	.dwattr DW$932, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$932, DW_AT_accessibility(DW_ACCESS_public)
DW$933	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$933, DW_AT_name("postfilter"), DW_AT_symbol_name("_postfilter")
	.dwattr DW$933, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$933, DW_AT_accessibility(DW_ACCESS_public)
DW$934	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$934, DW_AT_name("endresult"), DW_AT_symbol_name("_endresult")
	.dwattr DW$934, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$934, DW_AT_accessibility(DW_ACCESS_public)
DW$935	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$935, DW_AT_name("deviation"), DW_AT_symbol_name("_deviation")
	.dwattr DW$935, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$935, DW_AT_accessibility(DW_ACCESS_public)
DW$936	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$936, DW_AT_name("min"), DW_AT_symbol_name("_min")
	.dwattr DW$936, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$936, DW_AT_accessibility(DW_ACCESS_public)
DW$937	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$937, DW_AT_name("max"), DW_AT_symbol_name("_max")
	.dwattr DW$937, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$937, DW_AT_accessibility(DW_ACCESS_public)
DW$938	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$938, DW_AT_name("devmin"), DW_AT_symbol_name("_devmin")
	.dwattr DW$938, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$938, DW_AT_accessibility(DW_ACCESS_public)
DW$939	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$939, DW_AT_name("devmax"), DW_AT_symbol_name("_devmax")
	.dwattr DW$939, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$939, DW_AT_accessibility(DW_ACCESS_public)
DW$940	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$940, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$940, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$940, DW_AT_accessibility(DW_ACCESS_public)
DW$941	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$941, DW_AT_name("prt"), DW_AT_symbol_name("_prt")
	.dwattr DW$941, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$941, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$77


DW$T$78	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$78, DW_AT_name("tag_manrefstruct")
	.dwattr DW$T$78, DW_AT_byte_size(0x0a)
DW$942	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$942, DW_AT_name("reflevel"), DW_AT_symbol_name("_reflevel")
	.dwattr DW$942, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$942, DW_AT_accessibility(DW_ACCESS_public)
DW$943	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$943, DW_AT_name("presentstate"), DW_AT_symbol_name("_presentstate")
	.dwattr DW$943, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$943, DW_AT_accessibility(DW_ACCESS_public)
DW$944	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$944, DW_AT_name("refvalue"), DW_AT_symbol_name("_refvalue")
	.dwattr DW$944, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$944, DW_AT_accessibility(DW_ACCESS_public)
DW$945	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$945, DW_AT_name("reflevel_int"), DW_AT_symbol_name("_reflevel_int")
	.dwattr DW$945, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$945, DW_AT_accessibility(DW_ACCESS_public)
DW$946	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$946, DW_AT_name("presentstate_int"), DW_AT_symbol_name("_presentstate_int")
	.dwattr DW$946, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$946, DW_AT_accessibility(DW_ACCESS_public)
DW$947	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$947, DW_AT_name("refvalue_int"), DW_AT_symbol_name("_refvalue_int")
	.dwattr DW$947, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$947, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$78


DW$T$86	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$86, DW_AT_byte_size(0x01)
DW$948	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$948, DW_AT_name("oor"), DW_AT_symbol_name("_oor")
	.dwattr DW$948, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$948, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$948, DW_AT_accessibility(DW_ACCESS_public)
DW$949	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$949, DW_AT_name("alarm"), DW_AT_symbol_name("_alarm")
	.dwattr DW$949, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$949, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$949, DW_AT_accessibility(DW_ACCESS_public)
DW$950	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$950, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$950, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0e)
	.dwattr DW$950, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$950, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$86


DW$T$90	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$90, DW_AT_byte_size(0x02)
DW$951	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$951, DW_AT_name("lo"), DW_AT_symbol_name("_lo")
	.dwattr DW$951, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$951, DW_AT_accessibility(DW_ACCESS_public)
DW$952	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$952, DW_AT_name("hi"), DW_AT_symbol_name("_hi")
	.dwattr DW$952, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$952, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$90


DW$T$91	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$91, DW_AT_byte_size(0x02)
DW$953	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$953, DW_AT_name("lo"), DW_AT_symbol_name("_lo")
	.dwattr DW$953, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$953, DW_AT_accessibility(DW_ACCESS_public)
DW$954	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$954, DW_AT_name("hi"), DW_AT_symbol_name("_hi")
	.dwattr DW$954, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$954, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$91


DW$T$92	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$92, DW_AT_byte_size(0x02)
DW$955	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$955, DW_AT_name("max"), DW_AT_symbol_name("_max")
	.dwattr DW$955, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$955, DW_AT_accessibility(DW_ACCESS_public)
DW$956	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$956, DW_AT_name("threshold"), DW_AT_symbol_name("_threshold")
	.dwattr DW$956, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$956, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$92


DW$T$105	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$105, DW_AT_name("tag_inputstruct")
	.dwattr DW$T$105, DW_AT_byte_size(0xfe)
DW$957	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$94)
	.dwattr DW$957, DW_AT_name("flags"), DW_AT_symbol_name("_flags")
	.dwattr DW$957, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$957, DW_AT_accessibility(DW_ACCESS_public)
DW$958	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$97)
	.dwattr DW$958, DW_AT_name("scale"), DW_AT_symbol_name("_scale")
	.dwattr DW$958, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$958, DW_AT_accessibility(DW_ACCESS_public)
DW$959	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$99)
	.dwattr DW$959, DW_AT_name("rawresults"), DW_AT_symbol_name("_rawresults")
	.dwattr DW$959, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr DW$959, DW_AT_accessibility(DW_ACCESS_public)
DW$960	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$101)
	.dwattr DW$960, DW_AT_name("amps"), DW_AT_symbol_name("_amps")
	.dwattr DW$960, DW_AT_data_member_location[DW_OP_plus_uconst 0xc6]
	.dwattr DW$960, DW_AT_accessibility(DW_ACCESS_public)
DW$961	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$961, DW_AT_name("prtchan"), DW_AT_symbol_name("_prtchan")
	.dwattr DW$961, DW_AT_data_member_location[DW_OP_plus_uconst 0xe2]
	.dwattr DW$961, DW_AT_accessibility(DW_ACCESS_public)
DW$962	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$104)
	.dwattr DW$962, DW_AT_name("analog"), DW_AT_symbol_name("_analog")
	.dwattr DW$962, DW_AT_data_member_location[DW_OP_plus_uconst 0xe4]
	.dwattr DW$962, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$105


DW$T$112	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$112, DW_AT_byte_size(0x01)
DW$963	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$963, DW_AT_name("settings"), DW_AT_symbol_name("_settings")
	.dwattr DW$963, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$963, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$963, DW_AT_accessibility(DW_ACCESS_public)
DW$964	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$964, DW_AT_name("sensorstatus"), DW_AT_symbol_name("_sensorstatus")
	.dwattr DW$964, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$964, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$964, DW_AT_accessibility(DW_ACCESS_public)
DW$965	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$965, DW_AT_name("offsets"), DW_AT_symbol_name("_offsets")
	.dwattr DW$965, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$965, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$965, DW_AT_accessibility(DW_ACCESS_public)
DW$966	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$966, DW_AT_name("mantable"), DW_AT_symbol_name("_mantable")
	.dwattr DW$966, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$966, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$966, DW_AT_accessibility(DW_ACCESS_public)
DW$967	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$967, DW_AT_name("calibtd"), DW_AT_symbol_name("_calibtd")
	.dwattr DW$967, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$967, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$967, DW_AT_accessibility(DW_ACCESS_public)
DW$968	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$968, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$968, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$968, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$968, DW_AT_accessibility(DW_ACCESS_public)
DW$969	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$969, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$969, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$969, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$969, DW_AT_accessibility(DW_ACCESS_public)
DW$970	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$970, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$970, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$970, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$970, DW_AT_accessibility(DW_ACCESS_public)
DW$971	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$971, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$971, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$971, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$971, DW_AT_accessibility(DW_ACCESS_public)
DW$972	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$972, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$972, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$972, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$972, DW_AT_accessibility(DW_ACCESS_public)
DW$973	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$973, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$973, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$973, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$973, DW_AT_accessibility(DW_ACCESS_public)
DW$974	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$974, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$974, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$974, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$974, DW_AT_accessibility(DW_ACCESS_public)
DW$975	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$975, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$975, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$975, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$975, DW_AT_accessibility(DW_ACCESS_public)
DW$976	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$976, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$976, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$976, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$976, DW_AT_accessibility(DW_ACCESS_public)
DW$977	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$977, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$977, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$977, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$977, DW_AT_accessibility(DW_ACCESS_public)
DW$978	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$978, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$978, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$978, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$978, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$112


DW$T$117	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$117, DW_AT_byte_size(0x14)
DW$979	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$115)
	.dwattr DW$979, DW_AT_name("fileext"), DW_AT_symbol_name("_fileext")
	.dwattr DW$979, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$979, DW_AT_accessibility(DW_ACCESS_public)
DW$980	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$116)
	.dwattr DW$980, DW_AT_name("currentfilename"), DW_AT_symbol_name("_currentfilename")
	.dwattr DW$980, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$980, DW_AT_accessibility(DW_ACCESS_public)
DW$981	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$981, DW_AT_name("lastlogtimeinsecs"), DW_AT_symbol_name("_lastlogtimeinsecs")
	.dwattr DW$981, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$981, DW_AT_accessibility(DW_ACCESS_public)
DW$982	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$982, DW_AT_name("currentdate"), DW_AT_symbol_name("_currentdate")
	.dwattr DW$982, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$982, DW_AT_accessibility(DW_ACCESS_public)
DW$983	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$114)
	.dwattr DW$983, DW_AT_name("alarmevent"), DW_AT_symbol_name("_alarmevent")
	.dwattr DW$983, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$983, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$117


DW$T$118	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$118, DW_AT_byte_size(0x18)
DW$984	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$116)
	.dwattr DW$984, DW_AT_name("filenamen1"), DW_AT_symbol_name("_filenamen1")
	.dwattr DW$984, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$984, DW_AT_accessibility(DW_ACCESS_public)
DW$985	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$116)
	.dwattr DW$985, DW_AT_name("filenamen2"), DW_AT_symbol_name("_filenamen2")
	.dwattr DW$985, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$985, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$118


DW$T$120	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$120, DW_AT_byte_size(0x14)
DW$986	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$115)
	.dwattr DW$986, DW_AT_name("fileext"), DW_AT_symbol_name("_fileext")
	.dwattr DW$986, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$986, DW_AT_accessibility(DW_ACCESS_public)
DW$987	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$116)
	.dwattr DW$987, DW_AT_name("currentfilename"), DW_AT_symbol_name("_currentfilename")
	.dwattr DW$987, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$987, DW_AT_accessibility(DW_ACCESS_public)
DW$988	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$988, DW_AT_name("lastlogtimeinsecs"), DW_AT_symbol_name("_lastlogtimeinsecs")
	.dwattr DW$988, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$988, DW_AT_accessibility(DW_ACCESS_public)
DW$989	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$989, DW_AT_name("logfilecreated"), DW_AT_symbol_name("_logfilecreated")
	.dwattr DW$989, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$989, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$120


DW$T$122	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$122, DW_AT_byte_size(0x12)
DW$990	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$115)
	.dwattr DW$990, DW_AT_name("fileext"), DW_AT_symbol_name("_fileext")
	.dwattr DW$990, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$990, DW_AT_accessibility(DW_ACCESS_public)
DW$991	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$116)
	.dwattr DW$991, DW_AT_name("currentfilename"), DW_AT_symbol_name("_currentfilename")
	.dwattr DW$991, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$991, DW_AT_accessibility(DW_ACCESS_public)
DW$992	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$992, DW_AT_name("lastlogtimeinsecs"), DW_AT_symbol_name("_lastlogtimeinsecs")
	.dwattr DW$992, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$992, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$122


DW$T$124	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$124, DW_AT_byte_size(0x19)
DW$993	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$993, DW_AT_name("logdirname"), DW_AT_symbol_name("_logdirname")
	.dwattr DW$993, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$993, DW_AT_accessibility(DW_ACCESS_public)
DW$994	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$994, DW_AT_name("sequence"), DW_AT_symbol_name("_sequence")
	.dwattr DW$994, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$994, DW_AT_accessibility(DW_ACCESS_public)
DW$995	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$115)
	.dwattr DW$995, DW_AT_name("fileext"), DW_AT_symbol_name("_fileext")
	.dwattr DW$995, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$995, DW_AT_accessibility(DW_ACCESS_public)
DW$996	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$116)
	.dwattr DW$996, DW_AT_name("currentfilename"), DW_AT_symbol_name("_currentfilename")
	.dwattr DW$996, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$996, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$124


DW$T$127	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$127, DW_AT_name("tag_sdcarddirstruct")
	.dwattr DW$T$127, DW_AT_byte_size(0x36)
DW$997	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$126)
	.dwattr DW$997, DW_AT_name("firstcaldir"), DW_AT_symbol_name("_firstcaldir")
	.dwattr DW$997, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$997, DW_AT_accessibility(DW_ACCESS_public)
DW$998	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$126)
	.dwattr DW$998, DW_AT_name("roughcaldir"), DW_AT_symbol_name("_roughcaldir")
	.dwattr DW$998, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$998, DW_AT_accessibility(DW_ACCESS_public)
DW$999	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$126)
	.dwattr DW$999, DW_AT_name("finecaldir"), DW_AT_symbol_name("_finecaldir")
	.dwattr DW$999, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$999, DW_AT_accessibility(DW_ACCESS_public)
DW$1000	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$126)
	.dwattr DW$1000, DW_AT_name("configdir"), DW_AT_symbol_name("_configdir")
	.dwattr DW$1000, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$1000, DW_AT_accessibility(DW_ACCESS_public)
DW$1001	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$126)
	.dwattr DW$1001, DW_AT_name("sterm"), DW_AT_symbol_name("_sterm")
	.dwattr DW$1001, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$1001, DW_AT_accessibility(DW_ACCESS_public)
DW$1002	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$126)
	.dwattr DW$1002, DW_AT_name("lterm"), DW_AT_symbol_name("_lterm")
	.dwattr DW$1002, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr DW$1002, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$127

DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("F_WRITESECTOR"), DW_AT_type(*DW$T$21)
	.dwattr DW$T$22, DW_AT_language(DW_LANG_C)
DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("F_READSECTOR"), DW_AT_type(*DW$T$21)
	.dwattr DW$T$26, DW_AT_language(DW_LANG_C)
DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("F_WRITEMULTIPLESECTOR"), DW_AT_type(*DW$T$24)
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("F_READMULTIPLESECTOR"), DW_AT_type(*DW$T$24)
	.dwattr DW$T$27, DW_AT_language(DW_LANG_C)
DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("F_GETPHY"), DW_AT_type(*DW$T$31)
	.dwattr DW$T$32, DW_AT_language(DW_LANG_C)
DW$T$38	.dwtag  DW_TAG_typedef, DW_AT_name("F_DELFUNC"), DW_AT_type(*DW$T$37)
	.dwattr DW$T$38, DW_AT_language(DW_LANG_C)
DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("F_GETSTATUS"), DW_AT_type(*DW$T$34)
	.dwattr DW$T$35, DW_AT_language(DW_LANG_C)

DW$T$115	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$40)
	.dwattr DW$T$115, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$115, DW_AT_byte_size(0x04)
DW$1003	.dwtag  DW_TAG_subrange_type
	.dwattr DW$1003, DW_AT_upper_bound(0x03)
	.dwendtag DW$T$115


DW$T$116	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$40)
	.dwattr DW$T$116, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$116, DW_AT_byte_size(0x0c)
DW$1004	.dwtag  DW_TAG_subrange_type
	.dwattr DW$1004, DW_AT_upper_bound(0x0b)
	.dwendtag DW$T$116


DW$T$126	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$40)
	.dwattr DW$T$126, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$126, DW_AT_byte_size(0x09)
DW$1005	.dwtag  DW_TAG_subrange_type
	.dwattr DW$1005, DW_AT_upper_bound(0x08)
	.dwendtag DW$T$126


DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$44, DW_AT_byte_size(0x20)
DW$1006	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1006, DW_AT_name("drivenum"), DW_AT_symbol_name("_drivenum")
	.dwattr DW$1006, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1006, DW_AT_accessibility(DW_ACCESS_public)
DW$1007	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$1007, DW_AT_name("path"), DW_AT_symbol_name("_path")
	.dwattr DW$1007, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1007, DW_AT_accessibility(DW_ACCESS_public)
DW$1008	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$1008, DW_AT_name("filename"), DW_AT_symbol_name("_filename")
	.dwattr DW$1008, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$1008, DW_AT_accessibility(DW_ACCESS_public)
DW$1009	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$43)
	.dwattr DW$1009, DW_AT_name("fileext"), DW_AT_symbol_name("_fileext")
	.dwattr DW$1009, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$1009, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$44


DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$45, DW_AT_byte_size(0x0c)
DW$1010	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$1010, DW_AT_name("cluster"), DW_AT_symbol_name("_cluster")
	.dwattr DW$1010, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1010, DW_AT_accessibility(DW_ACCESS_public)
DW$1011	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$1011, DW_AT_name("prevcluster"), DW_AT_symbol_name("_prevcluster")
	.dwattr DW$1011, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$1011, DW_AT_accessibility(DW_ACCESS_public)
DW$1012	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$1012, DW_AT_name("sectorbegin"), DW_AT_symbol_name("_sectorbegin")
	.dwattr DW$1012, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$1012, DW_AT_accessibility(DW_ACCESS_public)
DW$1013	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$1013, DW_AT_name("sector"), DW_AT_symbol_name("_sector")
	.dwattr DW$1013, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$1013, DW_AT_accessibility(DW_ACCESS_public)
DW$1014	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$1014, DW_AT_name("sectorend"), DW_AT_symbol_name("_sectorend")
	.dwattr DW$1014, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$1014, DW_AT_accessibility(DW_ACCESS_public)
DW$1015	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$1015, DW_AT_name("pos"), DW_AT_symbol_name("_pos")
	.dwattr DW$1015, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$1015, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$45

DW$T$76	.dwtag  DW_TAG_typedef, DW_AT_name("sensoralarmstruct"), DW_AT_type(*DW$T$74)
	.dwattr DW$T$76, DW_AT_language(DW_LANG_C)

DW$T$94	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$94, DW_AT_byte_size(0x39)
DW$1016	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1016, DW_AT_name("ready"), DW_AT_symbol_name("_ready")
	.dwattr DW$1016, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1016, DW_AT_accessibility(DW_ACCESS_public)
DW$1017	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$59)
	.dwattr DW$1017, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$1017, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1017, DW_AT_accessibility(DW_ACCESS_public)
DW$1018	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$59)
	.dwattr DW$1018, DW_AT_name("newrpm"), DW_AT_symbol_name("_newrpm")
	.dwattr DW$1018, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$1018, DW_AT_accessibility(DW_ACCESS_public)
DW$1019	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$59)
	.dwattr DW$1019, DW_AT_name("rpmstart"), DW_AT_symbol_name("_rpmstart")
	.dwattr DW$1019, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$1019, DW_AT_accessibility(DW_ACCESS_public)
DW$1020	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$59)
	.dwattr DW$1020, DW_AT_name("startupcounter"), DW_AT_symbol_name("_startupcounter")
	.dwattr DW$1020, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$1020, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$94


DW$T$97	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$97, DW_AT_byte_size(0x2a)
DW$1021	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$95)
	.dwattr DW$1021, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$1021, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1021, DW_AT_accessibility(DW_ACCESS_public)
DW$1022	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$96)
	.dwattr DW$1022, DW_AT_name("peakoffset"), DW_AT_symbol_name("_peakoffset")
	.dwattr DW$1022, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$1022, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$97


DW$T$99	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$99, DW_AT_byte_size(0x62)
DW$1023	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$59)
	.dwattr DW$1023, DW_AT_name("current"), DW_AT_symbol_name("_current")
	.dwattr DW$1023, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1023, DW_AT_accessibility(DW_ACCESS_public)
DW$1024	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$59)
	.dwattr DW$1024, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$1024, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$1024, DW_AT_accessibility(DW_ACCESS_public)
DW$1025	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$98)
	.dwattr DW$1025, DW_AT_name("counterA"), DW_AT_symbol_name("_counterA")
	.dwattr DW$1025, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$1025, DW_AT_accessibility(DW_ACCESS_public)
DW$1026	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$98)
	.dwattr DW$1026, DW_AT_name("counterB"), DW_AT_symbol_name("_counterB")
	.dwattr DW$1026, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$1026, DW_AT_accessibility(DW_ACCESS_public)
DW$1027	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$59)
	.dwattr DW$1027, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$1027, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr DW$1027, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$99


DW$T$101	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$101, DW_AT_byte_size(0x1c)
DW$1028	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$100)
	.dwattr DW$1028, DW_AT_name("value"), DW_AT_symbol_name("_value")
	.dwattr DW$1028, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1028, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$101


DW$T$104	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$104, DW_AT_byte_size(0x1a)
DW$1029	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$102)
	.dwattr DW$1029, DW_AT_name("value"), DW_AT_symbol_name("_value")
	.dwattr DW$1029, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1029, DW_AT_accessibility(DW_ACCESS_public)
DW$1030	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1030, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$1030, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$1030, DW_AT_accessibility(DW_ACCESS_public)
DW$1031	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$103)
	.dwattr DW$1031, DW_AT_name("scalefactor"), DW_AT_symbol_name("_scalefactor")
	.dwattr DW$1031, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$1031, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$104


DW$T$114	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$114, DW_AT_byte_size(0x01)
DW$1032	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1032, DW_AT_name("n1"), DW_AT_symbol_name("_n1")
	.dwattr DW$1032, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1032, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1032, DW_AT_accessibility(DW_ACCESS_public)
DW$1033	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1033, DW_AT_name("n2"), DW_AT_symbol_name("_n2")
	.dwattr DW$1033, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1033, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1033, DW_AT_accessibility(DW_ACCESS_public)
DW$1034	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1034, DW_AT_name("n3"), DW_AT_symbol_name("_n3")
	.dwattr DW$1034, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1034, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1034, DW_AT_accessibility(DW_ACCESS_public)
DW$1035	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1035, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$1035, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1035, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1035, DW_AT_accessibility(DW_ACCESS_public)
DW$1036	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1036, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$1036, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1036, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1036, DW_AT_accessibility(DW_ACCESS_public)
DW$1037	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1037, DW_AT_name("unused3"), DW_AT_symbol_name("_unused3")
	.dwattr DW$1037, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1037, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1037, DW_AT_accessibility(DW_ACCESS_public)
DW$1038	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1038, DW_AT_name("unused4"), DW_AT_symbol_name("_unused4")
	.dwattr DW$1038, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1038, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1038, DW_AT_accessibility(DW_ACCESS_public)
DW$1039	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1039, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$1039, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1039, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1039, DW_AT_accessibility(DW_ACCESS_public)
DW$1040	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1040, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$1040, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1040, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1040, DW_AT_accessibility(DW_ACCESS_public)
DW$1041	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1041, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$1041, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1041, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1041, DW_AT_accessibility(DW_ACCESS_public)
DW$1042	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1042, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$1042, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1042, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1042, DW_AT_accessibility(DW_ACCESS_public)
DW$1043	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1043, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$1043, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1043, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1043, DW_AT_accessibility(DW_ACCESS_public)
DW$1044	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1044, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$1044, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1044, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1044, DW_AT_accessibility(DW_ACCESS_public)
DW$1045	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1045, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$1045, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1045, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1045, DW_AT_accessibility(DW_ACCESS_public)
DW$1046	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1046, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$1046, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1046, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1046, DW_AT_accessibility(DW_ACCESS_public)
DW$1047	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1047, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$1047, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1047, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1047, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$114

DW$T$21	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$20)
	.dwattr DW$T$21, DW_AT_address_class(0x16)
DW$T$24	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$23)
	.dwattr DW$T$24, DW_AT_address_class(0x16)
DW$T$31	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$30)
	.dwattr DW$T$31, DW_AT_address_class(0x16)
DW$T$37	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$36)
	.dwattr DW$T$37, DW_AT_address_class(0x16)

DW$T$96	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$96, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$96, DW_AT_byte_size(0x0e)
DW$1048	.dwtag  DW_TAG_subrange_type
	.dwattr DW$1048, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$96


DW$T$102	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$102, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$102, DW_AT_byte_size(0x08)
DW$1049	.dwtag  DW_TAG_subrange_type
	.dwattr DW$1049, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$102


DW$T$100	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$100, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$100, DW_AT_byte_size(0x1c)
DW$1050	.dwtag  DW_TAG_subrange_type
	.dwattr DW$1050, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$100

DW$T$34	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$33)
	.dwattr DW$T$34, DW_AT_address_class(0x16)

DW$T$98	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$98, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$98, DW_AT_byte_size(0x1c)
DW$1051	.dwtag  DW_TAG_subrange_type
	.dwattr DW$1051, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$98


DW$T$95	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$16)
	.dwattr DW$T$95, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$95, DW_AT_byte_size(0x1c)
DW$1052	.dwtag  DW_TAG_subrange_type
	.dwattr DW$1052, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$95


DW$T$103	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$16)
	.dwattr DW$T$103, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$103, DW_AT_byte_size(0x10)
DW$1053	.dwtag  DW_TAG_subrange_type
	.dwattr DW$1053, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$103


DW$T$74	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$74, DW_AT_name("tag_sensoralarmstruct")
	.dwattr DW$T$74, DW_AT_byte_size(0x01)
DW$1054	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1054, DW_AT_name("failure"), DW_AT_symbol_name("_failure")
	.dwattr DW$1054, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1054, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1054, DW_AT_accessibility(DW_ACCESS_public)
DW$1055	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1055, DW_AT_name("failurelatched"), DW_AT_symbol_name("_failurelatched")
	.dwattr DW$1055, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1055, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1055, DW_AT_accessibility(DW_ACCESS_public)
DW$1056	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1056, DW_AT_name("slowdown"), DW_AT_symbol_name("_slowdown")
	.dwattr DW$1056, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1056, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1056, DW_AT_accessibility(DW_ACCESS_public)
DW$1057	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1057, DW_AT_name("slowdownlatched"), DW_AT_symbol_name("_slowdownlatched")
	.dwattr DW$1057, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1057, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1057, DW_AT_accessibility(DW_ACCESS_public)
DW$1058	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1058, DW_AT_name("alarm"), DW_AT_symbol_name("_alarm")
	.dwattr DW$1058, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1058, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1058, DW_AT_accessibility(DW_ACCESS_public)
DW$1059	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1059, DW_AT_name("alarmlatched"), DW_AT_symbol_name("_alarmlatched")
	.dwattr DW$1059, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1059, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1059, DW_AT_accessibility(DW_ACCESS_public)
DW$1060	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1060, DW_AT_name("devalarm"), DW_AT_symbol_name("_devalarm")
	.dwattr DW$1060, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1060, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1060, DW_AT_accessibility(DW_ACCESS_public)
DW$1061	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1061, DW_AT_name("devalarmlatched"), DW_AT_symbol_name("_devalarmlatched")
	.dwattr DW$1061, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1061, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1061, DW_AT_accessibility(DW_ACCESS_public)
DW$1062	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1062, DW_AT_name("devslow"), DW_AT_symbol_name("_devslow")
	.dwattr DW$1062, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1062, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1062, DW_AT_accessibility(DW_ACCESS_public)
DW$1063	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1063, DW_AT_name("devslowlatched"), DW_AT_symbol_name("_devslowlatched")
	.dwattr DW$1063, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1063, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1063, DW_AT_accessibility(DW_ACCESS_public)
DW$1064	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1064, DW_AT_name("calibration"), DW_AT_symbol_name("_calibration")
	.dwattr DW$1064, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1064, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1064, DW_AT_accessibility(DW_ACCESS_public)
DW$1065	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1065, DW_AT_name("calibrationlatched"), DW_AT_symbol_name("_calibrationlatched")
	.dwattr DW$1065, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1065, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1065, DW_AT_accessibility(DW_ACCESS_public)
DW$1066	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1066, DW_AT_name("prewarning"), DW_AT_symbol_name("_prewarning")
	.dwattr DW$1066, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1066, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1066, DW_AT_accessibility(DW_ACCESS_public)
DW$1067	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1067, DW_AT_name("prewarninglatched"), DW_AT_symbol_name("_prewarninglatched")
	.dwattr DW$1067, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1067, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1067, DW_AT_accessibility(DW_ACCESS_public)
DW$1068	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1068, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$1068, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1068, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1068, DW_AT_accessibility(DW_ACCESS_public)
DW$1069	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1069, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$1069, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1069, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1069, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$74


DW$T$20	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$20, DW_AT_language(DW_LANG_C)
DW$1070	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$1071	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$1072	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$20


DW$T$23	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)
DW$1073	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$1074	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$1075	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$1076	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$23


DW$T$30	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$30, DW_AT_language(DW_LANG_C)
DW$1077	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
DW$1078	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$30


DW$T$36	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$36, DW_AT_language(DW_LANG_C)
DW$1079	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$36


DW$T$33	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$33, DW_AT_language(DW_LANG_C)
DW$1080	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$33

DW$T$29	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$28)
	.dwattr DW$T$29, DW_AT_address_class(0x16)
DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("F_PHY"), DW_AT_type(*DW$T$19)
	.dwattr DW$T$28, DW_AT_language(DW_LANG_C)

DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$19, DW_AT_byte_size(0x08)
DW$1081	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$1081, DW_AT_name("number_of_cylinders"), DW_AT_symbol_name("_number_of_cylinders")
	.dwattr DW$1081, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1081, DW_AT_accessibility(DW_ACCESS_public)
DW$1082	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$1082, DW_AT_name("sector_per_track"), DW_AT_symbol_name("_sector_per_track")
	.dwattr DW$1082, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1082, DW_AT_accessibility(DW_ACCESS_public)
DW$1083	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$1083, DW_AT_name("number_of_heads"), DW_AT_symbol_name("_number_of_heads")
	.dwattr DW$1083, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$1083, DW_AT_accessibility(DW_ACCESS_public)
DW$1084	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$1084, DW_AT_name("number_of_sectors"), DW_AT_symbol_name("_number_of_sectors")
	.dwattr DW$1084, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$1084, DW_AT_accessibility(DW_ACCESS_public)
DW$1085	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$6)
	.dwattr DW$1085, DW_AT_name("media_descriptor"), DW_AT_symbol_name("_media_descriptor")
	.dwattr DW$1085, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$1085, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$19


	.dwattr DW$427, DW_AT_external(0x01)
	.dwattr DW$459, DW_AT_external(0x01)
	.dwattr DW$459, DW_AT_type(*DW$T$13)
	.dwattr DW$461, DW_AT_external(0x01)
	.dwattr DW$461, DW_AT_type(*DW$T$10)
	.dwattr DW$304, DW_AT_external(0x01)
	.dwattr DW$392, DW_AT_external(0x01)
	.dwattr DW$420, DW_AT_external(0x01)
	.dwattr DW$420, DW_AT_type(*DW$T$10)
	.dwattr DW$252, DW_AT_external(0x01)
	.dwattr DW$467, DW_AT_external(0x01)
	.dwattr DW$467, DW_AT_type(*DW$T$10)
	.dwattr DW$333, DW_AT_external(0x01)
	.dwattr DW$333, DW_AT_type(*DW$T$10)
	.dwattr DW$326, DW_AT_external(0x01)
	.dwattr DW$326, DW_AT_type(*DW$T$10)
	.dwattr DW$411, DW_AT_external(0x01)
	.dwattr DW$411, DW_AT_type(*DW$T$10)
	.dwattr DW$415, DW_AT_external(0x01)
	.dwattr DW$415, DW_AT_type(*DW$T$10)
	.dwattr DW$413, DW_AT_external(0x01)
	.dwattr DW$413, DW_AT_type(*DW$T$10)
	.dwattr DW$412, DW_AT_external(0x01)
	.dwattr DW$412, DW_AT_type(*DW$T$10)
	.dwattr DW$410, DW_AT_external(0x01)
	.dwattr DW$410, DW_AT_type(*DW$T$10)
	.dwattr DW$414, DW_AT_external(0x01)
	.dwattr DW$414, DW_AT_type(*DW$T$10)
	.dwattr DW$251, DW_AT_external(0x01)
	.dwattr DW$440, DW_AT_external(0x01)
	.dwattr DW$440, DW_AT_type(*DW$T$13)
	.dwattr DW$298, DW_AT_external(0x01)
	.dwattr DW$298, DW_AT_type(*DW$T$13)
	.dwattr DW$237, DW_AT_external(0x01)
	.dwattr DW$237, DW_AT_type(*DW$T$10)
	.dwattr DW$341, DW_AT_external(0x01)
	.dwattr DW$341, DW_AT_type(*DW$T$10)
	.dwattr DW$235, DW_AT_external(0x01)
	.dwattr DW$235, DW_AT_type(*DW$T$12)
	.dwattr DW$233, DW_AT_external(0x01)
	.dwattr DW$233, DW_AT_type(*DW$T$10)
	.dwattr DW$234, DW_AT_external(0x01)
	.dwattr DW$234, DW_AT_type(*DW$T$10)
	.dwattr DW$393, DW_AT_external(0x01)
	.dwattr DW$393, DW_AT_type(*DW$T$10)
	.dwattr DW$379, DW_AT_external(0x01)
	.dwattr DW$379, DW_AT_type(*DW$T$10)
	.dwattr DW$232, DW_AT_external(0x01)
	.dwattr DW$425, DW_AT_external(0x01)
	.dwattr DW$464, DW_AT_external(0x01)
	.dwattr DW$464, DW_AT_type(*DW$T$10)
	.dwattr DW$360, DW_AT_external(0x01)
	.dwattr DW$360, DW_AT_type(*DW$T$10)
	.dwattr DW$404, DW_AT_external(0x01)
	.dwattr DW$404, DW_AT_type(*DW$T$10)
	.dwattr DW$386, DW_AT_external(0x01)
	.dwattr DW$386, DW_AT_type(*DW$T$10)
	.dwattr DW$338, DW_AT_external(0x01)
	.dwattr DW$338, DW_AT_type(*DW$T$10)
	.dwattr DW$236, DW_AT_external(0x01)
	.dwattr DW$236, DW_AT_type(*DW$T$10)
	.dwattr DW$468, DW_AT_external(0x01)
	.dwattr DW$280, DW_AT_external(0x01)
	.dwattr DW$280, DW_AT_type(*DW$T$10)
	.dwattr DW$332, DW_AT_external(0x01)
	.dwattr DW$332, DW_AT_type(*DW$T$10)
	.dwattr DW$426, DW_AT_external(0x01)
	.dwattr DW$239, DW_AT_external(0x01)
	.dwattr DW$240, DW_AT_external(0x01)
	.dwattr DW$240, DW_AT_type(*DW$T$10)
	.dwattr DW$228, DW_AT_external(0x01)
	.dwattr DW$417, DW_AT_external(0x01)
	.dwattr DW$417, DW_AT_type(*DW$T$10)
	.dwattr DW$231, DW_AT_external(0x01)
	.dwattr DW$278, DW_AT_external(0x01)
	.dwattr DW$278, DW_AT_type(*DW$T$10)
	.dwattr DW$334, DW_AT_external(0x01)
	.dwattr DW$334, DW_AT_type(*DW$T$10)
	.dwattr DW$313, DW_AT_external(0x01)
	.dwattr DW$313, DW_AT_type(*DW$T$10)
	.dwattr DW$316, DW_AT_external(0x01)
	.dwattr DW$316, DW_AT_type(*DW$T$10)
	.dwattr DW$300, DW_AT_external(0x01)
	.dwattr DW$300, DW_AT_type(*DW$T$10)
	.dwattr DW$273, DW_AT_external(0x01)
	.dwattr DW$273, DW_AT_type(*DW$T$10)
	.dwattr DW$254, DW_AT_external(0x01)
	.dwattr DW$254, DW_AT_type(*DW$T$10)
	.dwattr DW$276, DW_AT_external(0x01)
	.dwattr DW$276, DW_AT_type(*DW$T$10)
	.dwattr DW$253, DW_AT_external(0x01)
	.dwattr DW$253, DW_AT_type(*DW$T$10)
	.dwattr DW$290, DW_AT_external(0x01)
	.dwattr DW$290, DW_AT_type(*DW$T$10)
	.dwattr DW$327, DW_AT_external(0x01)
	.dwattr DW$327, DW_AT_type(*DW$T$10)
	.dwattr DW$321, DW_AT_external(0x01)
	.dwattr DW$321, DW_AT_type(*DW$T$10)
	.dwattr DW$283, DW_AT_external(0x01)
	.dwattr DW$283, DW_AT_type(*DW$T$10)
	.dwattr DW$275, DW_AT_external(0x01)
	.dwattr DW$275, DW_AT_type(*DW$T$10)
	.dwattr DW$277, DW_AT_external(0x01)
	.dwattr DW$277, DW_AT_type(*DW$T$10)
	.dwattr DW$250, DW_AT_external(0x01)
	.dwattr DW$250, DW_AT_type(*DW$T$10)
	.dwattr DW$423, DW_AT_external(0x01)
	.dwattr DW$460, DW_AT_external(0x01)
	.dwattr DW$422, DW_AT_external(0x01)
	.dwattr DW$422, DW_AT_type(*DW$T$10)
	.dwattr DW$335, DW_AT_external(0x01)
	.dwattr DW$335, DW_AT_type(*DW$T$10)
	.dwattr DW$310, DW_AT_external(0x01)
	.dwattr DW$430, DW_AT_external(0x01)
	.dwattr DW$430, DW_AT_type(*DW$T$13)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$1086	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$1086, DW_AT_location[DW_OP_reg0]
DW$1087	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$1087, DW_AT_location[DW_OP_reg1]
DW$1088	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$1088, DW_AT_location[DW_OP_reg2]
DW$1089	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$1089, DW_AT_location[DW_OP_reg3]
DW$1090	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$1090, DW_AT_location[DW_OP_reg4]
DW$1091	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$1091, DW_AT_location[DW_OP_reg5]
DW$1092	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$1092, DW_AT_location[DW_OP_reg6]
DW$1093	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$1093, DW_AT_location[DW_OP_reg7]
DW$1094	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$1094, DW_AT_location[DW_OP_reg8]
DW$1095	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$1095, DW_AT_location[DW_OP_reg9]
DW$1096	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$1096, DW_AT_location[DW_OP_reg10]
DW$1097	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$1097, DW_AT_location[DW_OP_reg11]
DW$1098	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$1098, DW_AT_location[DW_OP_reg12]
DW$1099	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$1099, DW_AT_location[DW_OP_reg13]
DW$1100	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$1100, DW_AT_location[DW_OP_reg14]
DW$1101	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$1101, DW_AT_location[DW_OP_reg15]
DW$1102	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$1102, DW_AT_location[DW_OP_reg16]
DW$1103	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$1103, DW_AT_location[DW_OP_reg17]
DW$1104	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$1104, DW_AT_location[DW_OP_reg18]
DW$1105	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$1105, DW_AT_location[DW_OP_reg19]
DW$1106	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$1106, DW_AT_location[DW_OP_reg20]
DW$1107	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$1107, DW_AT_location[DW_OP_reg21]
DW$1108	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$1108, DW_AT_location[DW_OP_reg22]
DW$1109	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$1109, DW_AT_location[DW_OP_reg23]
DW$1110	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$1110, DW_AT_location[DW_OP_reg24]
DW$1111	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$1111, DW_AT_location[DW_OP_reg25]
DW$1112	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$1112, DW_AT_location[DW_OP_reg26]
DW$1113	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$1113, DW_AT_location[DW_OP_reg27]
DW$1114	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$1114, DW_AT_location[DW_OP_reg28]
DW$1115	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$1115, DW_AT_location[DW_OP_reg29]
DW$1116	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$1116, DW_AT_location[DW_OP_reg30]
DW$1117	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$1117, DW_AT_location[DW_OP_reg31]
DW$1118	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$1118, DW_AT_location[DW_OP_regx 0x20]
DW$1119	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$1119, DW_AT_location[DW_OP_regx 0x21]
DW$1120	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$1120, DW_AT_location[DW_OP_regx 0x22]
DW$1121	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$1121, DW_AT_location[DW_OP_regx 0x23]
DW$1122	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$1122, DW_AT_location[DW_OP_regx 0x24]
DW$1123	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$1123, DW_AT_location[DW_OP_regx 0x25]
DW$1124	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$1124, DW_AT_location[DW_OP_regx 0x26]
DW$1125	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$1125, DW_AT_location[DW_OP_regx 0x27]
DW$1126	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$1126, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

