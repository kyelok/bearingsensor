;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Thu Aug 18 12:16:24 2016                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("PCModBus.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("sprintf"), DW_AT_symbol_name("_sprintf")
	.dwattr DW$1, DW_AT_type(*DW$T$10)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$119)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$146)
DW$4	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$1


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("memset"), DW_AT_symbol_name("_memset")
	.dwattr DW$5, DW_AT_type(*DW$T$3)
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$115)
	.dwendtag DW$5


DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("DebugStringOut"), DW_AT_symbol_name("_DebugStringOut")
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$119)
	.dwendtag DW$9


DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("LoadSendBufferB"), DW_AT_symbol_name("_LoadSendBufferB")
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)
DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$122)
DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$11


DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadCharfromUartB"), DW_AT_symbol_name("_ReadCharfromUartB")
	.dwattr DW$14, DW_AT_type(*DW$T$96)
	.dwattr DW$14, DW_AT_declaration(0x01)
	.dwattr DW$14, DW_AT_external(0x01)

DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("SetupEventReadBack"), DW_AT_symbol_name("_SetupEventReadBack")
	.dwattr DW$15, DW_AT_declaration(0x01)
	.dwattr DW$15, DW_AT_external(0x01)
DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$15


DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadEvent"), DW_AT_symbol_name("_ReadEvent")
	.dwattr DW$17, DW_AT_type(*DW$T$11)
	.dwattr DW$17, DW_AT_declaration(0x01)
	.dwattr DW$17, DW_AT_external(0x01)
DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$17


DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("MSGQueueNumfromPC"), DW_AT_symbol_name("_MSGQueueNumfromPC")
	.dwattr DW$19, DW_AT_declaration(0x01)
	.dwattr DW$19, DW_AT_external(0x01)
DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$19


DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearAlarmListandEventLog"), DW_AT_symbol_name("_ClearAlarmListandEventLog")
	.dwattr DW$21, DW_AT_declaration(0x01)
	.dwattr DW$21, DW_AT_external(0x01)

DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadEventLogID"), DW_AT_symbol_name("_ReadEventLogID")
	.dwattr DW$22, DW_AT_type(*DW$T$11)
	.dwattr DW$22, DW_AT_declaration(0x01)
	.dwattr DW$22, DW_AT_external(0x01)

DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadMSGQueueNum"), DW_AT_symbol_name("_ReadMSGQueueNum")
	.dwattr DW$23, DW_AT_type(*DW$T$11)
	.dwattr DW$23, DW_AT_declaration(0x01)
	.dwattr DW$23, DW_AT_external(0x01)

DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadLastEventID"), DW_AT_symbol_name("_ReadLastEventID")
	.dwattr DW$24, DW_AT_type(*DW$T$11)
	.dwattr DW$24, DW_AT_declaration(0x01)
	.dwattr DW$24, DW_AT_external(0x01)

DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("GetSlaveVersion"), DW_AT_symbol_name("_GetSlaveVersion")
	.dwattr DW$25, DW_AT_type(*DW$T$11)
	.dwattr DW$25, DW_AT_declaration(0x01)
	.dwattr DW$25, DW_AT_external(0x01)

DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearMANTable"), DW_AT_symbol_name("_ClearMANTable")
	.dwattr DW$26, DW_AT_declaration(0x01)
	.dwattr DW$26, DW_AT_external(0x01)
DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$26


DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("PreWarningInit"), DW_AT_symbol_name("_PreWarningInit")
	.dwattr DW$28, DW_AT_declaration(0x01)
	.dwattr DW$28, DW_AT_external(0x01)

DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("PreWarnLevelReset"), DW_AT_symbol_name("_PreWarnLevelReset")
	.dwattr DW$29, DW_AT_declaration(0x01)
	.dwattr DW$29, DW_AT_external(0x01)

DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("EnableNoiseFilter"), DW_AT_symbol_name("_EnableNoiseFilter")
	.dwattr DW$30, DW_AT_declaration(0x01)
	.dwattr DW$30, DW_AT_external(0x01)
DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$30


DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("GetCheckedRPM"), DW_AT_symbol_name("_GetCheckedRPM")
	.dwattr DW$32, DW_AT_type(*DW$T$11)
	.dwattr DW$32, DW_AT_declaration(0x01)
	.dwattr DW$32, DW_AT_external(0x01)
DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$32


DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("GetRPM"), DW_AT_symbol_name("_GetRPM")
	.dwattr DW$34, DW_AT_type(*DW$T$11)
	.dwattr DW$34, DW_AT_declaration(0x01)
	.dwattr DW$34, DW_AT_external(0x01)
DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$34


DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("GetModalRPM"), DW_AT_symbol_name("_GetModalRPM")
	.dwattr DW$36, DW_AT_type(*DW$T$11)
	.dwattr DW$36, DW_AT_declaration(0x01)
	.dwattr DW$36, DW_AT_external(0x01)
DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$36


DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("GetScaledValue"), DW_AT_symbol_name("_GetScaledValue")
	.dwattr DW$38, DW_AT_type(*DW$T$10)
	.dwattr DW$38, DW_AT_declaration(0x01)
	.dwattr DW$38, DW_AT_external(0x01)
DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$38


DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("GetPreCompValue"), DW_AT_symbol_name("_GetPreCompValue")
	.dwattr DW$40, DW_AT_type(*DW$T$10)
	.dwattr DW$40, DW_AT_declaration(0x01)
	.dwattr DW$40, DW_AT_external(0x01)
DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$40


DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("GetPostCompValue"), DW_AT_symbol_name("_GetPostCompValue")
	.dwattr DW$42, DW_AT_type(*DW$T$10)
	.dwattr DW$42, DW_AT_declaration(0x01)
	.dwattr DW$42, DW_AT_external(0x01)
DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$42


DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("GetEndResultValue"), DW_AT_symbol_name("_GetEndResultValue")
	.dwattr DW$44, DW_AT_type(*DW$T$10)
	.dwattr DW$44, DW_AT_declaration(0x01)
	.dwattr DW$44, DW_AT_external(0x01)
DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$44


DW$46	.dwtag  DW_TAG_subprogram, DW_AT_name("GetSensorDeviationValue"), DW_AT_symbol_name("_GetSensorDeviationValue")
	.dwattr DW$46, DW_AT_type(*DW$T$10)
	.dwattr DW$46, DW_AT_declaration(0x01)
	.dwattr DW$46, DW_AT_external(0x01)
DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$46


DW$48	.dwtag  DW_TAG_subprogram, DW_AT_name("GetCylinderAverageValue"), DW_AT_symbol_name("_GetCylinderAverageValue")
	.dwattr DW$48, DW_AT_type(*DW$T$10)
	.dwattr DW$48, DW_AT_declaration(0x01)
	.dwattr DW$48, DW_AT_external(0x01)
DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$48


DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("GetCylinderDeviationValue"), DW_AT_symbol_name("_GetCylinderDeviationValue")
	.dwattr DW$50, DW_AT_type(*DW$T$10)
	.dwattr DW$50, DW_AT_declaration(0x01)
	.dwattr DW$50, DW_AT_external(0x01)
DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$50


DW$52	.dwtag  DW_TAG_subprogram, DW_AT_name("Status1Flags"), DW_AT_symbol_name("_Status1Flags")
	.dwattr DW$52, DW_AT_type(*DW$T$194)
	.dwattr DW$52, DW_AT_declaration(0x01)
	.dwattr DW$52, DW_AT_external(0x01)
DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$52


DW$54	.dwtag  DW_TAG_subprogram, DW_AT_name("GetStatus2Flags"), DW_AT_symbol_name("_GetStatus2Flags")
	.dwattr DW$54, DW_AT_type(*DW$T$199)
	.dwattr DW$54, DW_AT_declaration(0x01)
	.dwattr DW$54, DW_AT_external(0x01)
DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$54


DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadStatus1Int"), DW_AT_symbol_name("_ReadStatus1Int")
	.dwattr DW$56, DW_AT_type(*DW$T$11)
	.dwattr DW$56, DW_AT_declaration(0x01)
	.dwattr DW$56, DW_AT_external(0x01)
DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$56


DW$58	.dwtag  DW_TAG_subprogram, DW_AT_name("MANCompTable"), DW_AT_symbol_name("_MANCompTable")
	.dwattr DW$58, DW_AT_type(*DW$T$142)
	.dwattr DW$58, DW_AT_declaration(0x01)
	.dwattr DW$58, DW_AT_external(0x01)
DW$59	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$60	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$58


DW$61	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteSensorStatustoNVMEM"), DW_AT_symbol_name("_WriteSensorStatustoNVMEM")
	.dwattr DW$61, DW_AT_declaration(0x01)
	.dwattr DW$61, DW_AT_external(0x01)
DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$61


DW$63	.dwtag  DW_TAG_subprogram, DW_AT_name("CalAbort"), DW_AT_symbol_name("_CalAbort")
	.dwattr DW$63, DW_AT_declaration(0x01)
	.dwattr DW$63, DW_AT_external(0x01)

DW$64	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadAccAverageVal"), DW_AT_symbol_name("_ReadAccAverageVal")
	.dwattr DW$64, DW_AT_type(*DW$T$185)
	.dwattr DW$64, DW_AT_declaration(0x01)
	.dwattr DW$64, DW_AT_external(0x01)
DW$65	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$66	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$64


DW$67	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadAverageSpeedAcc"), DW_AT_symbol_name("_ReadAverageSpeedAcc")
	.dwattr DW$67, DW_AT_type(*DW$T$185)
	.dwattr DW$67, DW_AT_declaration(0x01)
	.dwattr DW$67, DW_AT_external(0x01)
DW$68	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$69	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$67


DW$70	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadNumPoints"), DW_AT_symbol_name("_ReadNumPoints")
	.dwattr DW$70, DW_AT_type(*DW$T$190)
	.dwattr DW$70, DW_AT_declaration(0x01)
	.dwattr DW$70, DW_AT_external(0x01)
DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$70


DW$72	.dwtag  DW_TAG_subprogram, DW_AT_name("GetLearningTimeLeft"), DW_AT_symbol_name("_GetLearningTimeLeft")
	.dwattr DW$72, DW_AT_type(*DW$T$11)
	.dwattr DW$72, DW_AT_declaration(0x01)
	.dwattr DW$72, DW_AT_external(0x01)

DW$73	.dwtag  DW_TAG_subprogram, DW_AT_name("GetIntervalTimeLeft"), DW_AT_symbol_name("_GetIntervalTimeLeft")
	.dwattr DW$73, DW_AT_type(*DW$T$11)
	.dwattr DW$73, DW_AT_declaration(0x01)
	.dwattr DW$73, DW_AT_external(0x01)

DW$74	.dwtag  DW_TAG_subprogram, DW_AT_name("GetPercentageLeft"), DW_AT_symbol_name("_GetPercentageLeft")
	.dwattr DW$74, DW_AT_type(*DW$T$11)
	.dwattr DW$74, DW_AT_declaration(0x01)
	.dwattr DW$74, DW_AT_external(0x01)

DW$75	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearCalibrationAlarms"), DW_AT_symbol_name("_ClearCalibrationAlarms")
	.dwattr DW$75, DW_AT_declaration(0x01)
	.dwattr DW$75, DW_AT_external(0x01)

DW$76	.dwtag  DW_TAG_subprogram, DW_AT_name("SDEventMessageUpdate"), DW_AT_symbol_name("_SDEventMessageUpdate")
	.dwattr DW$76, DW_AT_type(*DW$T$10)
	.dwattr DW$76, DW_AT_declaration(0x01)
	.dwattr DW$76, DW_AT_external(0x01)
DW$77	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$78	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$122)
	.dwendtag DW$76


DW$79	.dwtag  DW_TAG_subprogram, DW_AT_name("SDReadEventMessage"), DW_AT_symbol_name("_SDReadEventMessage")
	.dwattr DW$79, DW_AT_type(*DW$T$10)
	.dwattr DW$79, DW_AT_declaration(0x01)
	.dwattr DW$79, DW_AT_external(0x01)
DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$122)
	.dwendtag DW$79


DW$82	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearManCompSequence"), DW_AT_symbol_name("_ClearManCompSequence")
	.dwattr DW$82, DW_AT_declaration(0x01)
	.dwattr DW$82, DW_AT_external(0x01)

DW$83	.dwtag  DW_TAG_subprogram, DW_AT_name("SetAllEventMsgs"), DW_AT_symbol_name("_SetAllEventMsgs")
	.dwattr DW$83, DW_AT_declaration(0x01)
	.dwattr DW$83, DW_AT_external(0x01)

DW$84	.dwtag  DW_TAG_subprogram, DW_AT_name("GetFirstFileNameString"), DW_AT_symbol_name("_GetFirstFileNameString")
	.dwattr DW$84, DW_AT_type(*DW$T$10)
	.dwattr DW$84, DW_AT_declaration(0x01)
	.dwattr DW$84, DW_AT_external(0x01)

DW$85	.dwtag  DW_TAG_subprogram, DW_AT_name("GetNextFileNameString"), DW_AT_symbol_name("_GetNextFileNameString")
	.dwattr DW$85, DW_AT_type(*DW$T$10)
	.dwattr DW$85, DW_AT_declaration(0x01)
	.dwattr DW$85, DW_AT_external(0x01)

DW$86	.dwtag  DW_TAG_subprogram, DW_AT_name("GetFileNumWords"), DW_AT_symbol_name("_GetFileNumWords")
	.dwattr DW$86, DW_AT_type(*DW$T$12)
	.dwattr DW$86, DW_AT_declaration(0x01)
	.dwattr DW$86, DW_AT_external(0x01)

DW$87	.dwtag  DW_TAG_subprogram, DW_AT_name("WIOTemperatureWord"), DW_AT_symbol_name("_WIOTemperatureWord")
	.dwattr DW$87, DW_AT_type(*DW$T$10)
	.dwattr DW$87, DW_AT_declaration(0x01)
	.dwattr DW$87, DW_AT_external(0x01)

DW$88	.dwtag  DW_TAG_subprogram, DW_AT_name("WIOActivityWord"), DW_AT_symbol_name("_WIOActivityWord")
	.dwattr DW$88, DW_AT_type(*DW$T$10)
	.dwattr DW$88, DW_AT_declaration(0x01)
	.dwattr DW$88, DW_AT_external(0x01)

DW$89	.dwtag  DW_TAG_subprogram, DW_AT_name("WIOPPMWord"), DW_AT_symbol_name("_WIOPPMWord")
	.dwattr DW$89, DW_AT_type(*DW$T$10)
	.dwattr DW$89, DW_AT_declaration(0x01)
	.dwattr DW$89, DW_AT_external(0x01)

DW$90	.dwtag  DW_TAG_subprogram, DW_AT_name("Status3Flags"), DW_AT_symbol_name("_Status3Flags")
	.dwattr DW$90, DW_AT_type(*DW$T$205)
	.dwattr DW$90, DW_AT_declaration(0x01)
	.dwattr DW$90, DW_AT_external(0x01)
DW$91	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$90


DW$92	.dwtag  DW_TAG_subprogram, DW_AT_name("GetAlarmFlags"), DW_AT_symbol_name("_GetAlarmFlags")
	.dwattr DW$92, DW_AT_type(*DW$T$211)
	.dwattr DW$92, DW_AT_declaration(0x01)
	.dwattr DW$92, DW_AT_external(0x01)

DW$93	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearEventCodeListArea"), DW_AT_symbol_name("_ClearEventCodeListArea")
	.dwattr DW$93, DW_AT_declaration(0x01)
	.dwattr DW$93, DW_AT_external(0x01)

DW$94	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadFirstEventCode"), DW_AT_symbol_name("_ReadFirstEventCode")
	.dwattr DW$94, DW_AT_type(*DW$T$122)
	.dwattr DW$94, DW_AT_declaration(0x01)
	.dwattr DW$94, DW_AT_external(0x01)

DW$95	.dwtag  DW_TAG_subprogram, DW_AT_name("AlarmEventIDInc"), DW_AT_symbol_name("_AlarmEventIDInc")
	.dwattr DW$95, DW_AT_declaration(0x01)
	.dwattr DW$95, DW_AT_external(0x01)
DW$96	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$95


DW$97	.dwtag  DW_TAG_subprogram, DW_AT_name("BitEventCompiled"), DW_AT_symbol_name("_BitEventCompiled")
	.dwattr DW$97, DW_AT_type(*DW$T$11)
	.dwattr DW$97, DW_AT_declaration(0x01)
	.dwattr DW$97, DW_AT_external(0x01)
DW$98	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$97


DW$99	.dwtag  DW_TAG_subprogram, DW_AT_name("ProcessReprogrammingTransferral"), DW_AT_symbol_name("_ProcessReprogrammingTransferral")
	.dwattr DW$99, DW_AT_declaration(0x01)
	.dwattr DW$99, DW_AT_external(0x01)
DW$100	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$101	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$102	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$103	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$122)
	.dwendtag DW$99


DW$104	.dwtag  DW_TAG_subprogram, DW_AT_name("TxNowtoSlave"), DW_AT_symbol_name("_TxNowtoSlave")
	.dwattr DW$104, DW_AT_declaration(0x01)
	.dwattr DW$104, DW_AT_external(0x01)

DW$105	.dwtag  DW_TAG_subprogram, DW_AT_name("DCModeInit"), DW_AT_symbol_name("_DCModeInit")
	.dwattr DW$105, DW_AT_declaration(0x01)
	.dwattr DW$105, DW_AT_external(0x01)

DW$106	.dwtag  DW_TAG_subprogram, DW_AT_name("DCModeClear"), DW_AT_symbol_name("_DCModeClear")
	.dwattr DW$106, DW_AT_declaration(0x01)
	.dwattr DW$106, DW_AT_external(0x01)

DW$107	.dwtag  DW_TAG_subprogram, DW_AT_name("GetuASCaledValue"), DW_AT_symbol_name("_GetuASCaledValue")
	.dwattr DW$107, DW_AT_type(*DW$T$11)
	.dwattr DW$107, DW_AT_declaration(0x01)
	.dwattr DW$107, DW_AT_external(0x01)
DW$108	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$107


DW$109	.dwtag  DW_TAG_subprogram, DW_AT_name("InitMotionCal"), DW_AT_symbol_name("_InitMotionCal")
	.dwattr DW$109, DW_AT_declaration(0x01)
	.dwattr DW$109, DW_AT_external(0x01)

DW$110	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearEngineDirCal"), DW_AT_symbol_name("_ClearEngineDirCal")
	.dwattr DW$110, DW_AT_declaration(0x01)
	.dwattr DW$110, DW_AT_external(0x01)

DW$111	.dwtag  DW_TAG_subprogram, DW_AT_name("YearMonthUpdate"), DW_AT_symbol_name("_YearMonthUpdate")
	.dwattr DW$111, DW_AT_type(*DW$T$10)
	.dwattr DW$111, DW_AT_declaration(0x01)
	.dwattr DW$111, DW_AT_external(0x01)

DW$112	.dwtag  DW_TAG_subprogram, DW_AT_name("DateHoursUpdate"), DW_AT_symbol_name("_DateHoursUpdate")
	.dwattr DW$112, DW_AT_type(*DW$T$10)
	.dwattr DW$112, DW_AT_declaration(0x01)
	.dwattr DW$112, DW_AT_external(0x01)

DW$113	.dwtag  DW_TAG_subprogram, DW_AT_name("MinsSecsUpdate"), DW_AT_symbol_name("_MinsSecsUpdate")
	.dwattr DW$113, DW_AT_type(*DW$T$10)
	.dwattr DW$113, DW_AT_declaration(0x01)
	.dwattr DW$113, DW_AT_external(0x01)

DW$114	.dwtag  DW_TAG_subprogram, DW_AT_name("InputNumtoString"), DW_AT_symbol_name("_InputNumtoString")
	.dwattr DW$114, DW_AT_type(*DW$T$10)
	.dwattr DW$114, DW_AT_declaration(0x01)
	.dwattr DW$114, DW_AT_external(0x01)

DW$115	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteDateHrsData"), DW_AT_symbol_name("_WriteDateHrsData")
	.dwattr DW$115, DW_AT_type(*DW$T$10)
	.dwattr DW$115, DW_AT_declaration(0x01)
	.dwattr DW$115, DW_AT_external(0x01)

DW$116	.dwtag  DW_TAG_subprogram, DW_AT_name("FRAMInit"), DW_AT_symbol_name("_FRAMInit")
	.dwattr DW$116, DW_AT_type(*DW$T$10)
	.dwattr DW$116, DW_AT_declaration(0x01)
	.dwattr DW$116, DW_AT_external(0x01)

DW$117	.dwtag  DW_TAG_subprogram, DW_AT_name("GetRealtimePreCompValue"), DW_AT_symbol_name("_GetRealtimePreCompValue")
	.dwattr DW$117, DW_AT_type(*DW$T$10)
	.dwattr DW$117, DW_AT_declaration(0x01)
	.dwattr DW$117, DW_AT_external(0x01)

DW$118	.dwtag  DW_TAG_subprogram, DW_AT_name("GetRealtimeuAScaledValue"), DW_AT_symbol_name("_GetRealtimeuAScaledValue")
	.dwattr DW$118, DW_AT_type(*DW$T$10)
	.dwattr DW$118, DW_AT_declaration(0x01)
	.dwattr DW$118, DW_AT_external(0x01)

DW$119	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteMANCaltoNVMEM"), DW_AT_symbol_name("_WriteMANCaltoNVMEM")
	.dwattr DW$119, DW_AT_type(*DW$T$10)
	.dwattr DW$119, DW_AT_declaration(0x01)
	.dwattr DW$119, DW_AT_external(0x01)

DW$120	.dwtag  DW_TAG_subprogram, DW_AT_name("CalibrationtdUpdate"), DW_AT_symbol_name("_CalibrationtdUpdate")
	.dwattr DW$120, DW_AT_type(*DW$T$10)
	.dwattr DW$120, DW_AT_declaration(0x01)
	.dwattr DW$120, DW_AT_external(0x01)

DW$121	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadAccCalNVMEM"), DW_AT_symbol_name("_ReadAccCalNVMEM")
	.dwattr DW$121, DW_AT_type(*DW$T$10)
	.dwattr DW$121, DW_AT_declaration(0x01)
	.dwattr DW$121, DW_AT_external(0x01)

DW$122	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteClockData"), DW_AT_symbol_name("_WriteClockData")
	.dwattr DW$122, DW_AT_type(*DW$T$10)
	.dwattr DW$122, DW_AT_declaration(0x01)
	.dwattr DW$122, DW_AT_external(0x01)

DW$123	.dwtag  DW_TAG_subprogram, DW_AT_name("SPUUnitReset"), DW_AT_symbol_name("_SPUUnitReset")
	.dwattr DW$123, DW_AT_type(*DW$T$10)
	.dwattr DW$123, DW_AT_declaration(0x01)
	.dwattr DW$123, DW_AT_external(0x01)

DW$124	.dwtag  DW_TAG_subprogram, DW_AT_name("PCModifyParameter"), DW_AT_symbol_name("_PCModifyParameter")
	.dwattr DW$124, DW_AT_type(*DW$T$10)
	.dwattr DW$124, DW_AT_declaration(0x01)
	.dwattr DW$124, DW_AT_external(0x01)

DW$125	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteEngineStructtoNVMEM"), DW_AT_symbol_name("_WriteEngineStructtoNVMEM")
	.dwattr DW$125, DW_AT_type(*DW$T$10)
	.dwattr DW$125, DW_AT_declaration(0x01)
	.dwattr DW$125, DW_AT_external(0x01)
DW$126	.dwtag  DW_TAG_variable, DW_AT_name("CRCHiTbl"), DW_AT_symbol_name("_CRCHiTbl")
	.dwattr DW$126, DW_AT_type(*DW$T$176)
	.dwattr DW$126, DW_AT_declaration(0x01)
	.dwattr DW$126, DW_AT_external(0x01)
DW$127	.dwtag  DW_TAG_variable, DW_AT_name("CRCLoTbl"), DW_AT_symbol_name("_CRCLoTbl")
	.dwattr DW$127, DW_AT_type(*DW$T$176)
	.dwattr DW$127, DW_AT_declaration(0x01)
	.dwattr DW$127, DW_AT_external(0x01)
DW$128	.dwtag  DW_TAG_variable, DW_AT_name("gpf"), DW_AT_symbol_name("_gpf")
	.dwattr DW$128, DW_AT_type(*DW$T$217)
	.dwattr DW$128, DW_AT_declaration(0x01)
	.dwattr DW$128, DW_AT_external(0x01)
DW$129	.dwtag  DW_TAG_variable, DW_AT_name("settings"), DW_AT_symbol_name("_settings")
	.dwattr DW$129, DW_AT_type(*DW$T$220)
	.dwattr DW$129, DW_AT_declaration(0x01)
	.dwattr DW$129, DW_AT_external(0x01)
DW$130	.dwtag  DW_TAG_variable, DW_AT_name("motion"), DW_AT_symbol_name("_motion")
	.dwattr DW$130, DW_AT_type(*DW$T$221)
	.dwattr DW$130, DW_AT_declaration(0x01)
	.dwattr DW$130, DW_AT_external(0x01)
DW$131	.dwtag  DW_TAG_variable, DW_AT_name("livetime"), DW_AT_symbol_name("_livetime")
	.dwattr DW$131, DW_AT_type(*DW$T$222)
	.dwattr DW$131, DW_AT_declaration(0x01)
	.dwattr DW$131, DW_AT_external(0x01)
DW$132	.dwtag  DW_TAG_variable, DW_AT_name("calibrationtd"), DW_AT_symbol_name("_calibrationtd")
	.dwattr DW$132, DW_AT_type(*DW$T$224)
	.dwattr DW$132, DW_AT_declaration(0x01)
	.dwattr DW$132, DW_AT_external(0x01)
DW$133	.dwtag  DW_TAG_variable, DW_AT_name("safe2"), DW_AT_symbol_name("_safe2")
	.dwattr DW$133, DW_AT_type(*DW$T$226)
	.dwattr DW$133, DW_AT_declaration(0x01)
	.dwattr DW$133, DW_AT_external(0x01)
DW$134	.dwtag  DW_TAG_variable, DW_AT_name("clocktime"), DW_AT_symbol_name("_clocktime")
	.dwattr DW$134, DW_AT_type(*DW$T$227)
	.dwattr DW$134, DW_AT_declaration(0x01)
	.dwattr DW$134, DW_AT_external(0x01)
DW$135	.dwtag  DW_TAG_variable, DW_AT_name("timers"), DW_AT_symbol_name("_timers")
	.dwattr DW$135, DW_AT_type(*DW$T$229)
	.dwattr DW$135, DW_AT_declaration(0x01)
	.dwattr DW$135, DW_AT_external(0x01)
DW$136	.dwtag  DW_TAG_variable, DW_AT_name("allsensors"), DW_AT_symbol_name("_allsensors")
	.dwattr DW$136, DW_AT_type(*DW$T$231)
	.dwattr DW$136, DW_AT_declaration(0x01)
	.dwattr DW$136, DW_AT_external(0x01)
DW$137	.dwtag  DW_TAG_variable, DW_AT_name("engine"), DW_AT_symbol_name("_engine")
	.dwattr DW$137, DW_AT_type(*DW$T$233)
	.dwattr DW$137, DW_AT_declaration(0x01)
	.dwattr DW$137, DW_AT_external(0x01)
DW$138	.dwtag  DW_TAG_variable, DW_AT_name("cylinders"), DW_AT_symbol_name("_cylinders")
	.dwattr DW$138, DW_AT_type(*DW$T$235)
	.dwattr DW$138, DW_AT_declaration(0x01)
	.dwattr DW$138, DW_AT_external(0x01)
DW$139	.dwtag  DW_TAG_variable, DW_AT_name("config"), DW_AT_symbol_name("_config")
	.dwattr DW$139, DW_AT_type(*DW$T$238)
	.dwattr DW$139, DW_AT_declaration(0x01)
	.dwattr DW$139, DW_AT_external(0x01)
DW$140	.dwtag  DW_TAG_variable, DW_AT_name("transferbuffer"), DW_AT_symbol_name("_transferbuffer")
	.dwattr DW$140, DW_AT_type(*DW$T$178)
	.dwattr DW$140, DW_AT_declaration(0x01)
	.dwattr DW$140, DW_AT_external(0x01)
DW$141	.dwtag  DW_TAG_variable, DW_AT_name("stringbuffer"), DW_AT_symbol_name("_stringbuffer")
	.dwattr DW$141, DW_AT_type(*DW$T$267)
	.dwattr DW$141, DW_AT_declaration(0x01)
	.dwattr DW$141, DW_AT_external(0x01)
DW$142	.dwtag  DW_TAG_variable, DW_AT_name("eventlogentry"), DW_AT_symbol_name("_eventlogentry")
	.dwattr DW$142, DW_AT_type(*DW$T$239)
	.dwattr DW$142, DW_AT_declaration(0x01)
	.dwattr DW$142, DW_AT_external(0x01)
DW$143	.dwtag  DW_TAG_variable, DW_AT_name("versionreg"), DW_AT_symbol_name("_versionreg")
	.dwattr DW$143, DW_AT_type(*DW$T$175)
	.dwattr DW$143, DW_AT_declaration(0x01)
	.dwattr DW$143, DW_AT_external(0x01)
DW$144	.dwtag  DW_TAG_variable, DW_AT_name("digout"), DW_AT_symbol_name("_digout")
	.dwattr DW$144, DW_AT_type(*DW$T$240)
	.dwattr DW$144, DW_AT_declaration(0x01)
	.dwattr DW$144, DW_AT_external(0x01)
DW$145	.dwtag  DW_TAG_variable, DW_AT_name("prewarn"), DW_AT_symbol_name("_prewarn")
	.dwattr DW$145, DW_AT_type(*DW$T$241)
	.dwattr DW$145, DW_AT_declaration(0x01)
	.dwattr DW$145, DW_AT_external(0x01)
DW$146	.dwtag  DW_TAG_variable, DW_AT_name("offsetA"), DW_AT_symbol_name("_offsetA")
	.dwattr DW$146, DW_AT_type(*DW$T$243)
	.dwattr DW$146, DW_AT_declaration(0x01)
	.dwattr DW$146, DW_AT_external(0x01)
DW$147	.dwtag  DW_TAG_variable, DW_AT_name("offsetB"), DW_AT_symbol_name("_offsetB")
	.dwattr DW$147, DW_AT_type(*DW$T$243)
	.dwattr DW$147, DW_AT_declaration(0x01)
	.dwattr DW$147, DW_AT_external(0x01)
DW$148	.dwtag  DW_TAG_variable, DW_AT_name("sensor"), DW_AT_symbol_name("_sensor")
	.dwattr DW$148, DW_AT_type(*DW$T$246)
	.dwattr DW$148, DW_AT_declaration(0x01)
	.dwattr DW$148, DW_AT_external(0x01)
DW$149	.dwtag  DW_TAG_variable, DW_AT_name("iSensorInRepalceMode"), DW_AT_symbol_name("_iSensorInRepalceMode")
	.dwattr DW$149, DW_AT_type(*DW$T$10)
	.dwattr DW$149, DW_AT_declaration(0x01)
	.dwattr DW$149, DW_AT_external(0x01)
DW$150	.dwtag  DW_TAG_variable, DW_AT_name("iSensorInRepalceTimer"), DW_AT_symbol_name("_iSensorInRepalceTimer")
	.dwattr DW$150, DW_AT_type(*DW$T$10)
	.dwattr DW$150, DW_AT_declaration(0x01)
	.dwattr DW$150, DW_AT_external(0x01)
DW$151	.dwtag  DW_TAG_variable, DW_AT_name("iSensorInRepalce"), DW_AT_symbol_name("_iSensorInRepalce")
	.dwattr DW$151, DW_AT_type(*DW$T$10)
	.dwattr DW$151, DW_AT_declaration(0x01)
	.dwattr DW$151, DW_AT_external(0x01)
DW$152	.dwtag  DW_TAG_variable, DW_AT_name("function"), DW_AT_symbol_name("_function")
	.dwattr DW$152, DW_AT_type(*DW$T$249)
	.dwattr DW$152, DW_AT_declaration(0x01)
	.dwattr DW$152, DW_AT_external(0x01)
DW$153	.dwtag  DW_TAG_variable, DW_AT_name("manref"), DW_AT_symbol_name("_manref")
	.dwattr DW$153, DW_AT_type(*DW$T$252)
	.dwattr DW$153, DW_AT_declaration(0x01)
	.dwattr DW$153, DW_AT_external(0x01)
DW$154	.dwtag  DW_TAG_variable, DW_AT_name("manrefsum"), DW_AT_symbol_name("_manrefsum")
	.dwattr DW$154, DW_AT_type(*DW$T$256)
	.dwattr DW$154, DW_AT_declaration(0x01)
	.dwattr DW$154, DW_AT_external(0x01)
DW$155	.dwtag  DW_TAG_variable, DW_AT_name("dynalarmlevels"), DW_AT_symbol_name("_dynalarmlevels")
	.dwattr DW$155, DW_AT_type(*DW$T$259)
	.dwattr DW$155, DW_AT_declaration(0x01)
	.dwattr DW$155, DW_AT_external(0x01)
DW$156	.dwtag  DW_TAG_variable, DW_AT_name("damalarms"), DW_AT_symbol_name("_damalarms")
	.dwattr DW$156, DW_AT_type(*DW$T$260)
	.dwattr DW$156, DW_AT_declaration(0x01)
	.dwattr DW$156, DW_AT_external(0x01)
DW$157	.dwtag  DW_TAG_variable, DW_AT_name("checkmanalarms"), DW_AT_symbol_name("_checkmanalarms")
	.dwattr DW$157, DW_AT_type(*DW$T$179)
	.dwattr DW$157, DW_AT_declaration(0x01)
	.dwattr DW$157, DW_AT_external(0x01)
DW$158	.dwtag  DW_TAG_variable, DW_AT_name("mancal"), DW_AT_symbol_name("_mancal")
	.dwattr DW$158, DW_AT_type(*DW$T$262)
	.dwattr DW$158, DW_AT_declaration(0x01)
	.dwattr DW$158, DW_AT_external(0x01)
DW$159	.dwtag  DW_TAG_variable, DW_AT_name("calibration"), DW_AT_symbol_name("_calibration")
	.dwattr DW$159, DW_AT_type(*DW$T$263)
	.dwattr DW$159, DW_AT_declaration(0x01)
	.dwattr DW$159, DW_AT_external(0x01)
DW$160	.dwtag  DW_TAG_variable, DW_AT_name("speedcompcoeffs"), DW_AT_symbol_name("_speedcompcoeffs")
	.dwattr DW$160, DW_AT_type(*DW$T$265)
	.dwattr DW$160, DW_AT_declaration(0x01)
	.dwattr DW$160, DW_AT_external(0x01)
DW$161	.dwtag  DW_TAG_variable, DW_AT_name("fileregs"), DW_AT_symbol_name("_fileregs")
	.dwattr DW$161, DW_AT_type(*DW$T$270)
	.dwattr DW$161, DW_AT_declaration(0x01)
	.dwattr DW$161, DW_AT_external(0x01)
DW$162	.dwtag  DW_TAG_variable, DW_AT_name("sdsettings"), DW_AT_symbol_name("_sdsettings")
	.dwattr DW$162, DW_AT_type(*DW$T$272)
	.dwattr DW$162, DW_AT_declaration(0x01)
	.dwattr DW$162, DW_AT_external(0x01)
DW$163	.dwtag  DW_TAG_variable, DW_AT_name("waterinoil"), DW_AT_symbol_name("_waterinoil")
	.dwattr DW$163, DW_AT_type(*DW$T$273)
	.dwattr DW$163, DW_AT_declaration(0x01)
	.dwattr DW$163, DW_AT_external(0x01)
DW$164	.dwtag  DW_TAG_variable, DW_AT_name("wioerrorcode"), DW_AT_symbol_name("_wioerrorcode")
	.dwattr DW$164, DW_AT_type(*DW$T$11)
	.dwattr DW$164, DW_AT_declaration(0x01)
	.dwattr DW$164, DW_AT_external(0x01)
DW$165	.dwtag  DW_TAG_variable, DW_AT_name("noisefilterLOAD"), DW_AT_symbol_name("_noisefilterLOAD")
	.dwattr DW$165, DW_AT_type(*DW$T$70)
	.dwattr DW$165, DW_AT_declaration(0x01)
	.dwattr DW$165, DW_AT_external(0x01)
DW$166	.dwtag  DW_TAG_variable, DW_AT_name("damagemonignore"), DW_AT_symbol_name("_damagemonignore")
	.dwattr DW$166, DW_AT_type(*DW$T$70)
	.dwattr DW$166, DW_AT_declaration(0x01)
	.dwattr DW$166, DW_AT_external(0x01)
DW$167	.dwtag  DW_TAG_variable, DW_AT_name("bitalarmlist"), DW_AT_symbol_name("_bitalarmlist")
	.dwattr DW$167, DW_AT_type(*DW$T$180)
	.dwattr DW$167, DW_AT_declaration(0x01)
	.dwattr DW$167, DW_AT_external(0x01)
DW$168	.dwtag  DW_TAG_variable, DW_AT_name("bearingstatus"), DW_AT_symbol_name("_bearingstatus")
	.dwattr DW$168, DW_AT_type(*DW$T$275)
	.dwattr DW$168, DW_AT_declaration(0x01)
	.dwattr DW$168, DW_AT_external(0x01)
DW$169	.dwtag  DW_TAG_variable, DW_AT_name("slem"), DW_AT_symbol_name("_slem")
	.dwattr DW$169, DW_AT_type(*DW$T$277)
	.dwattr DW$169, DW_AT_declaration(0x01)
	.dwattr DW$169, DW_AT_external(0x01)
DW$170	.dwtag  DW_TAG_variable, DW_AT_name("rtcbat"), DW_AT_symbol_name("_rtcbat")
	.dwattr DW$170, DW_AT_type(*DW$T$279)
	.dwattr DW$170, DW_AT_declaration(0x01)
	.dwattr DW$170, DW_AT_external(0x01)
DW$171	.dwtag  DW_TAG_variable, DW_AT_name("loadlevel"), DW_AT_symbol_name("_loadlevel")
	.dwattr DW$171, DW_AT_type(*DW$T$281)
	.dwattr DW$171, DW_AT_declaration(0x01)
	.dwattr DW$171, DW_AT_external(0x01)
DW$172	.dwtag  DW_TAG_variable, DW_AT_name("DCModePeakReset"), DW_AT_symbol_name("_DCModePeakReset")
	.dwattr DW$172, DW_AT_type(*DW$T$82)
	.dwattr DW$172, DW_AT_declaration(0x01)
	.dwattr DW$172, DW_AT_external(0x01)
DW$173	.dwtag  DW_TAG_variable, DW_AT_name("DCModeCylinderComparison"), DW_AT_symbol_name("_DCModeCylinderComparison")
	.dwattr DW$173, DW_AT_type(*DW$T$11)
	.dwattr DW$173, DW_AT_declaration(0x01)
	.dwattr DW$173, DW_AT_external(0x01)
DW$174	.dwtag  DW_TAG_variable, DW_AT_name("DCModeInRangeOK"), DW_AT_symbol_name("_DCModeInRangeOK")
	.dwattr DW$174, DW_AT_type(*DW$T$82)
	.dwattr DW$174, DW_AT_declaration(0x01)
	.dwattr DW$174, DW_AT_external(0x01)
DW$175	.dwtag  DW_TAG_variable, DW_AT_name("DCModeInRangeIdeal"), DW_AT_symbol_name("_DCModeInRangeIdeal")
	.dwattr DW$175, DW_AT_type(*DW$T$82)
	.dwattr DW$175, DW_AT_declaration(0x01)
	.dwattr DW$175, DW_AT_external(0x01)
	.global	_pcmodbus
_pcmodbus:	.usect	".commssection1",272,0,0
DW$176	.dwtag  DW_TAG_variable, DW_AT_name("pcmodbus"), DW_AT_symbol_name("_pcmodbus")
	.dwattr DW$176, DW_AT_location[DW_OP_addr _pcmodbus]
	.dwattr DW$176, DW_AT_type(*DW$T$282)
	.dwattr DW$176, DW_AT_external(0x01)
	.global	_modbuscmdbuf
_modbuscmdbuf:	.usect	".ebss",266,1,0
DW$177	.dwtag  DW_TAG_variable, DW_AT_name("modbuscmdbuf"), DW_AT_symbol_name("_modbuscmdbuf")
	.dwattr DW$177, DW_AT_location[DW_OP_addr _modbuscmdbuf]
	.dwattr DW$177, DW_AT_type(*DW$T$112)
	.dwattr DW$177, DW_AT_external(0x01)
	.global	_responsemsg
_responsemsg:	.usect	".ebss",266,1,0
DW$178	.dwtag  DW_TAG_variable, DW_AT_name("responsemsg"), DW_AT_symbol_name("_responsemsg")
	.dwattr DW$178, DW_AT_location[DW_OP_addr _responsemsg]
	.dwattr DW$178, DW_AT_type(*DW$T$112)
	.dwattr DW$178, DW_AT_external(0x01)
	.global	_modbusdummy
_modbusdummy:	.usect	".ebss",1,1,0
DW$179	.dwtag  DW_TAG_variable, DW_AT_name("modbusdummy"), DW_AT_symbol_name("_modbusdummy")
	.dwattr DW$179, DW_AT_location[DW_OP_addr _modbusdummy]
	.dwattr DW$179, DW_AT_type(*DW$T$11)
	.dwattr DW$179, DW_AT_external(0x01)
	.global	_modbuscmdbufptr
_modbuscmdbufptr:	.usect	".ebss",2,1,1
DW$180	.dwtag  DW_TAG_variable, DW_AT_name("modbuscmdbufptr"), DW_AT_symbol_name("_modbuscmdbufptr")
	.dwattr DW$180, DW_AT_location[DW_OP_addr _modbuscmdbufptr]
	.dwattr DW$180, DW_AT_type(*DW$T$122)
	.dwattr DW$180, DW_AT_external(0x01)
	.global	_modbusrxcharcount
_modbusrxcharcount:	.usect	".ebss",1,1,0
DW$181	.dwtag  DW_TAG_variable, DW_AT_name("modbusrxcharcount"), DW_AT_symbol_name("_modbusrxcharcount")
	.dwattr DW$181, DW_AT_location[DW_OP_addr _modbusrxcharcount]
	.dwattr DW$181, DW_AT_type(*DW$T$11)
	.dwattr DW$181, DW_AT_external(0x01)
	.global	_numbytesexpected
_numbytesexpected:	.usect	".ebss",1,1,0
DW$182	.dwtag  DW_TAG_variable, DW_AT_name("numbytesexpected"), DW_AT_symbol_name("_numbytesexpected")
	.dwattr DW$182, DW_AT_location[DW_OP_addr _numbytesexpected]
	.dwattr DW$182, DW_AT_type(*DW$T$11)
	.dwattr DW$182, DW_AT_external(0x01)
	.global	_modbusrxchar
_modbusrxchar:	.usect	".ebss",1,1,0
DW$183	.dwtag  DW_TAG_variable, DW_AT_name("modbusrxchar"), DW_AT_symbol_name("_modbusrxchar")
	.dwattr DW$183, DW_AT_location[DW_OP_addr _modbusrxchar]
	.dwattr DW$183, DW_AT_type(*DW$T$6)
	.dwattr DW$183, DW_AT_external(0x01)
	.global	_modbusupdate
_modbusupdate:	.usect	".ebss",2,1,0
DW$184	.dwtag  DW_TAG_variable, DW_AT_name("modbusupdate"), DW_AT_symbol_name("_modbusupdate")
	.dwattr DW$184, DW_AT_location[DW_OP_addr _modbusupdate]
	.dwattr DW$184, DW_AT_type(*DW$T$284)
	.dwattr DW$184, DW_AT_external(0x01)
	.global	_modbusackbuffer
_modbusackbuffer:	.usect	".ebss",14,1,0
DW$185	.dwtag  DW_TAG_variable, DW_AT_name("modbusackbuffer"), DW_AT_symbol_name("_modbusackbuffer")
	.dwattr DW$185, DW_AT_location[DW_OP_addr _modbusackbuffer]
	.dwattr DW$185, DW_AT_type(*DW$T$48)
	.dwattr DW$185, DW_AT_external(0x01)
;	C:\CCStudio_v3.3\C2000\cgtools\bin\opt2000.exe C:\Users\Andrew\AppData\Local\Temp\TI4122 C:\Users\Andrew\AppData\Local\Temp\TI4124 
;	C:\CCStudio_v3.3\C2000\cgtools\bin\ac2000.exe -q -D_INLINE -DLARGE_MODEL -IC:/CCStudio_v3.3/C2000/xdais/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/bios/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/rtdx/include/c2000 -IC:/CCStudio_v3.3/C2000/cgtools/include --version=28 --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\Andrew\AppData\Local\Temp\TI4122 --template_info_file C:\Users\Andrew\AppData\Local\Temp\TI4126 --object_file 
	.sect	".text"
	.global	_HandleChar

DW$186	.dwtag  DW_TAG_subprogram, DW_AT_name("HandleChar"), DW_AT_symbol_name("_HandleChar")
	.dwattr DW$186, DW_AT_low_pc(_HandleChar)
	.dwattr DW$186, DW_AT_high_pc(0x00)
	.dwattr DW$186, DW_AT_begin_file("PCModBus.c")
	.dwattr DW$186, DW_AT_begin_line(0x54)
	.dwattr DW$186, DW_AT_begin_column(0x06)
	.dwattr DW$186, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$186, DW_AT_skeletal(0x01)
	.dwpsn	"PCModBus.c",85,1

;***************************************************************
;* FNAME: _HandleChar                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_HandleChar:
        MOVW      DP,#_modbusrxcharcount
        CMP       @_modbusrxcharcount,#266 ; |86| 
        BF        L1,HIS                ; |86| 
        ; branchcc occurs ; |86| 
        MOVW      DP,#_modbusrxcharcount
        INC       @_modbusrxcharcount   ; |93| 
        MOVW      DP,#_modbuscmdbufptr
        MOVL      XAR4,@_modbuscmdbufptr ; |94| 
        MOVW      DP,#_modbusrxchar
        MOV       AL,@_modbusrxchar     ; |94| 
        MOV       *+XAR4[0],AL          ; |94| 
        MOVB      ACC,#1
        MOVW      DP,#_modbuscmdbufptr
        ADDL      @_modbuscmdbufptr,ACC ; |95| 
        BF        L2,UNC                ; |95| 
        ; branch occurs ; |95| 
L1:    
        MOVL      XAR4,#_modbuscmdbuf   ; |88| 
        MOVW      DP,#_modbuscmdbufptr
        MOVL      @_modbuscmdbufptr,XAR4 ; |88| 
        MOVW      DP,#_modbusrxcharcount
        MOV       @_modbusrxcharcount,#0 ; |89| 
L2:    
	.dwpsn	"PCModBus.c",97,1
        LRETR
        ; return occurs
	.dwattr DW$186, DW_AT_end_file("PCModBus.c")
	.dwattr DW$186, DW_AT_end_line(0x61)
	.dwattr DW$186, DW_AT_end_column(0x01)
	.dwendtag DW$186

	.sect	".text"
	.global	_CalcCRC

DW$187	.dwtag  DW_TAG_subprogram, DW_AT_name("CalcCRC"), DW_AT_symbol_name("_CalcCRC")
	.dwattr DW$187, DW_AT_low_pc(_CalcCRC)
	.dwattr DW$187, DW_AT_high_pc(0x00)
	.dwattr DW$187, DW_AT_begin_file("PCModBus.c")
	.dwattr DW$187, DW_AT_begin_line(0x66)
	.dwattr DW$187, DW_AT_begin_column(0x06)
	.dwattr DW$187, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$187, DW_AT_skeletal(0x01)
	.dwpsn	"PCModBus.c",103,1

;***************************************************************
;* FNAME: _CalcCRC                      FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_CalcCRC:
;* AR4   assigned to _ptr
DW$188	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$188, DW_AT_type(*DW$T$122)
	.dwattr DW$188, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _len
DW$189	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$189, DW_AT_type(*DW$T$11)
	.dwattr DW$189, DW_AT_location[DW_OP_reg0]
;* AR5   assigned to _crc
DW$190	.dwtag  DW_TAG_formal_parameter, DW_AT_name("crc"), DW_AT_symbol_name("_crc")
	.dwattr DW$190, DW_AT_type(*DW$T$122)
	.dwattr DW$190, DW_AT_location[DW_OP_reg14]
        MOVB      AH,#255               ; |105| 
        MOVZ      AR6,AL                ; |103| 
        CMPB      AL,#0                 ; |108| 
        MOVL      *SP++,XAR2
        MOVB      XAR2,#255             ; |104| 
        BF        L4,EQ                 ; |108| 
        ; branchcc occurs ; |108| 
L3:    
DW$L$_CalcCRC$2$B:
	.dwpsn	"PCModBus.c",109,0
        MOV       AL,*XAR4++            ; |110| 
        ANDB      AL,#0xff              ; |110| 
        XOR       AL,AR2                ; |110| 
        MOVZ      AR0,AL                ; |110| 
        MOVL      XAR7,#_CRCHiTbl       ; |112| 
        SUBB      XAR6,#1               ; |114| 
        MOV       AL,*+XAR7[AR0]        ; |112| 
        XOR       AL,AH                 ; |112| 
        MOVL      XAR7,#_CRCLoTbl       ; |113| 
        MOVZ      AR2,AL                ; |112| 
        MOV       AH,*+XAR7[AR0]        ; |113| 
        MOV       AL,AR6                ; |114| 
	.dwpsn	"PCModBus.c",114,0
        BF        L3,NEQ                ; |114| 
        ; branchcc occurs ; |114| 
DW$L$_CalcCRC$2$E:
L4:    
        MOV       *+XAR5[0],AR2         ; |115| 
        MOV       *+XAR5[1],AH          ; |116| 
        MOVL      XAR2,*--SP
	.dwpsn	"PCModBus.c",117,1
        LRETR
        ; return occurs

DW$191	.dwtag  DW_TAG_loop
	.dwattr DW$191, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\PCModBus.asm:L3:1:1471518984")
	.dwattr DW$191, DW_AT_begin_file("PCModBus.c")
	.dwattr DW$191, DW_AT_begin_line(0x6c)
	.dwattr DW$191, DW_AT_end_line(0x72)
DW$192	.dwtag  DW_TAG_loop_range
	.dwattr DW$192, DW_AT_low_pc(DW$L$_CalcCRC$2$B)
	.dwattr DW$192, DW_AT_high_pc(DW$L$_CalcCRC$2$E)
	.dwendtag DW$191

	.dwattr DW$187, DW_AT_end_file("PCModBus.c")
	.dwattr DW$187, DW_AT_end_line(0x75)
	.dwattr DW$187, DW_AT_end_column(0x01)
	.dwendtag DW$187

	.sect	".text"
	.global	_TerminateCmd

DW$193	.dwtag  DW_TAG_subprogram, DW_AT_name("TerminateCmd"), DW_AT_symbol_name("_TerminateCmd")
	.dwattr DW$193, DW_AT_low_pc(_TerminateCmd)
	.dwattr DW$193, DW_AT_high_pc(0x00)
	.dwattr DW$193, DW_AT_begin_file("PCModBus.c")
	.dwattr DW$193, DW_AT_begin_line(0x7c)
	.dwattr DW$193, DW_AT_begin_column(0x06)
	.dwattr DW$193, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$193, DW_AT_skeletal(0x01)
	.dwpsn	"PCModBus.c",125,1

;***************************************************************
;* FNAME: _TerminateCmd                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_TerminateCmd:
        MOVW      DP,#_modbuscmdbufptr
        MOVL      XAR4,@_modbuscmdbufptr ; |126| 
        MOVW      DP,#_modbuscmdbufptr
        MOV       *+XAR4[0],#0          ; |126| 
        MOVL      XAR4,#_modbuscmdbuf   ; |127| 
        MOVL      @_modbuscmdbufptr,XAR4 ; |127| 
	.dwpsn	"PCModBus.c",128,1
        LRETR
        ; return occurs
	.dwattr DW$193, DW_AT_end_file("PCModBus.c")
	.dwattr DW$193, DW_AT_end_line(0x80)
	.dwattr DW$193, DW_AT_end_column(0x01)
	.dwendtag DW$193

	.sect	".text"
	.global	_ModbusParseCmd

DW$194	.dwtag  DW_TAG_subprogram, DW_AT_name("ModbusParseCmd"), DW_AT_symbol_name("_ModbusParseCmd")
	.dwattr DW$194, DW_AT_low_pc(_ModbusParseCmd)
	.dwattr DW$194, DW_AT_high_pc(0x00)
	.dwattr DW$194, DW_AT_begin_file("PCModBus.c")
	.dwattr DW$194, DW_AT_begin_line(0x86)
	.dwattr DW$194, DW_AT_begin_column(0x06)
	.dwattr DW$194, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$194, DW_AT_skeletal(0x01)
	.dwpsn	"PCModBus.c",135,1

;***************************************************************
;* FNAME: _ModbusParseCmd               FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  2 SOE     *
;***************************************************************

_ModbusParseCmd:
        MOVW      DP,#_modbusrxcharcount
        MOVL      *SP++,XAR1
        MOV       PL,@_modbusrxcharcount ; |141| 
        ADDB      SP,#2
        MOVW      DP,#_modbusrxcharcount
        MOV       @_modbusrxcharcount,#0 ; |142| 
        MOVZ      AR5,SP                ; |143| 
        MOVW      DP,#_modbuscmdbufptr
        MOV       AL,PL                 ; |143| 
        MOVL      XAR4,@_modbuscmdbufptr ; |143| 
        SUBB      XAR5,#2               ; |143| 
        ADDB      AL,#-2
        LCR       #_CalcCRC             ; |143| 
        ; call occurs [#_CalcCRC] ; |143| 
        MOVZ      AR4,SP                ; |144| 
        SUBB      XAR4,#2               ; |144| 
        MOVU      ACC,PL
        LCR       #_CompareCRC          ; |144| 
        ; call occurs [#_CompareCRC] ; |144| 
        CMPB      AL,#0                 ; |144| 
        BF        L5,NEQ                ; |144| 
        ; branchcc occurs ; |144| 
        MOV       AL,#-3                ; |150| 
        BF        L12,UNC               ; |150| 
        ; branch occurs ; |150| 
L5:    
        MOVL      XAR4,#_modbuscmdbuf   ; |153| 
        MOV       AL,*+XAR4[0]          ; |153| 
        CMPB      AL,#1                 ; |153| 
        BF        L6,EQ                 ; |153| 
        ; branchcc occurs ; |153| 
        MOV       AL,#-1                ; |197| 
        BF        L12,UNC               ; |197| 
        ; branch occurs ; |197| 
L6:    
        MOV       AL,*+XAR4[0]          ; |155| 
        MOVW      DP,#_pcmodbus
        MOV       @_pcmodbus,AL         ; |155| 
        MOVW      DP,#_pcmodbus+1
        MOV       AL,*+XAR4[1]          ; |156| 
        MOV       @_pcmodbus+1,AL       ; |156| 
        MOV       AH,*+XAR4[3]          ; |159| 
        MOV       AL,*+XAR4[2]          ; |157| 
        ANDB      AH,#0xff              ; |159| 
        LSL       AL,8                  ; |158| 
        MOVW      DP,#_pcmodbus+2
        ADD       AL,AH                 ; |159| 
        MOV       @_pcmodbus+2,AL       ; |160| 
        MOVW      DP,#_pcmodbus+1
        MOV       AL,@_pcmodbus+1       ; |161| 
        CMPB      AL,#3                 ; |161| 
        BF        L10,EQ                ; |161| 
        ; branchcc occurs ; |161| 
        CMPB      AL,#6                 ; |161| 
        BF        L7,EQ                 ; |161| 
        ; branchcc occurs ; |161| 
        CMPB      AL,#16                ; |161| 
        BF        L8,EQ                 ; |161| 
        ; branchcc occurs ; |161| 
        BF        L11,UNC               ; |161| 
        ; branch occurs ; |161| 
L7:    
        MOVW      DP,#_pcmodbus+3
        MOV       @_pcmodbus+3,#1       ; |171| 
        MOV       AL,*+XAR4[4]          ; |172| 
        MOV       AH,*+XAR4[5]          ; |174| 
        LSL       AL,8                  ; |173| 
        ANDB      AH,#0xff              ; |174| 
        ADD       AL,AH                 ; |174| 
        MOVW      DP,#_pcmodbus+5
        MOV       @_pcmodbus+5,AL       ; |175| 
        BF        L11,UNC               ; |176| 
        ; branch occurs ; |176| 
L8:    
        MOV       AH,*+XAR4[5]          ; |180| 
        MOV       AL,*+XAR4[4]          ; |178| 
        MOVW      DP,#_pcmodbus+3
        ANDB      AH,#0xff              ; |180| 
        LSL       AL,8                  ; |179| 
        ADD       AL,AH                 ; |180| 
        MOV       @_pcmodbus+3,AL       ; |181| 
        MOVW      DP,#_pcmodbus+4
        MOV       AL,*+XAR4[6]          ; |182| 
        MOV       @_pcmodbus+4,AL       ; |182| 
        MOVW      DP,#_pcmodbus+3
        MOV       AL,@_pcmodbus+3       ; |184| 
        MOVB      XAR1,#7               ; |183| 
        MOVB      XAR4,#0
        BF        L11,EQ                ; |184| 
        ; branchcc occurs ; |184| 
L9:    
DW$L$_ModbusParseCmd$11$B:
	.dwpsn	"PCModBus.c",185,0
        MOV       AH,AR1
        MOVB      XAR0,#1               ; |188| 
        ADD       AR0,AH
        MOVL      XAR5,#_modbuscmdbuf   ; |186| 
        MOV       AL,*+XAR5[AR1]        ; |186| 
        MOVW      DP,#_pcmodbus+3
        MOV       AH,*+XAR5[AR0]        ; |188| 
        LSL       AL,8                  ; |187| 
        ANDB      AH,#0xff              ; |188| 
        ADDB      XAR1,#2               ; |190| 
        MOVZ      AR0,AR4               ; |189| 
        ADD       AL,AH                 ; |188| 
        MOVL      XAR5,#_pcmodbus+5     ; |189| 
        ADDB      XAR4,#1               ; |184| 
        MOV       *+XAR5[AR0],AL        ; |189| 
        MOV       AL,AR4                ; |184| 
        CMP       AL,@_pcmodbus+3       ; |184| 
	.dwpsn	"PCModBus.c",191,0
        BF        L9,LO                 ; |184| 
        ; branchcc occurs ; |184| 
DW$L$_ModbusParseCmd$11$E:
        BF        L11,UNC               ; |184| 
        ; branch occurs ; |184| 
L10:    
        MOV       AL,*+XAR4[4]          ; |164| 
        MOV       AH,*+XAR4[5]          ; |166| 
        LSL       AL,8                  ; |165| 
        MOVW      DP,#_pcmodbus+3
        ANDB      AH,#0xff              ; |166| 
        ADD       AL,AH                 ; |166| 
        MOV       @_pcmodbus+3,AL       ; |167| 
        MOVW      DP,#_pcmodbus+3
        MOV       ACC,@_pcmodbus+3 << #1 ; |168| 
        MOVW      DP,#_pcmodbus+4
        MOV       @_pcmodbus+4,AL       ; |168| 
L11:    
        MOVB      AL,#1                 ; |194| 
L12:    
        SUBB      SP,#2                 ; |194| 
        MOVL      XAR1,*--SP            ; |194| 
	.dwpsn	"PCModBus.c",199,1
        LRETR
        ; return occurs

DW$195	.dwtag  DW_TAG_loop
	.dwattr DW$195, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\PCModBus.asm:L9:1:1471518984")
	.dwattr DW$195, DW_AT_begin_file("PCModBus.c")
	.dwattr DW$195, DW_AT_begin_line(0xb8)
	.dwattr DW$195, DW_AT_end_line(0xbf)
DW$196	.dwtag  DW_TAG_loop_range
	.dwattr DW$196, DW_AT_low_pc(DW$L$_ModbusParseCmd$11$B)
	.dwattr DW$196, DW_AT_high_pc(DW$L$_ModbusParseCmd$11$E)
	.dwendtag DW$195

	.dwattr DW$194, DW_AT_end_file("PCModBus.c")
	.dwattr DW$194, DW_AT_end_line(0xc7)
	.dwattr DW$194, DW_AT_end_column(0x01)
	.dwendtag DW$194

	.sect	".text"
	.global	_CompareCRC

DW$197	.dwtag  DW_TAG_subprogram, DW_AT_name("CompareCRC"), DW_AT_symbol_name("_CompareCRC")
	.dwattr DW$197, DW_AT_low_pc(_CompareCRC)
	.dwattr DW$197, DW_AT_high_pc(0x00)
	.dwattr DW$197, DW_AT_begin_file("PCModBus.c")
	.dwattr DW$197, DW_AT_begin_line(0xcc)
	.dwattr DW$197, DW_AT_begin_column(0x0f)
	.dwattr DW$197, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$197, DW_AT_skeletal(0x01)
	.dwpsn	"PCModBus.c",205,1

;***************************************************************
;* FNAME: _CompareCRC                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CompareCRC:
;* AR4   assigned to _crc
DW$198	.dwtag  DW_TAG_formal_parameter, DW_AT_name("crc"), DW_AT_symbol_name("_crc")
	.dwattr DW$198, DW_AT_type(*DW$T$122)
	.dwattr DW$198, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _len
DW$199	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$199, DW_AT_type(*DW$T$13)
	.dwattr DW$199, DW_AT_location[DW_OP_reg0]
        MOVL      XAR6,#_modbuscmdbuf-2 ; |206| 
        ADDL      XAR6,ACC
        MOVB      XAR5,#0
        MOVL      XAR7,ACC              ; |205| 
        MOV       AL,*+XAR4[0]          ; |206| 
        CMP       AL,*+XAR6[0]          ; |206| 
        BF        L13,NEQ               ; |206| 
        ; branchcc occurs ; |206| 
        MOVL      ACC,XAR7              ; |206| 
        MOVL      XAR6,#_modbuscmdbuf-1 ; |206| 
        ADDL      XAR6,ACC
        MOV       AH,*+XAR4[1]          ; |206| 
        CMP       AH,*+XAR6[0]          ; |206| 
        BF        L13,NEQ               ; |206| 
        ; branchcc occurs ; |206| 
        MOVB      XAR5,#1               ; |206| 
L13:    
        MOV       AL,AR5                ; |206| 
	.dwpsn	"PCModBus.c",212,1
        LRETR
        ; return occurs
	.dwattr DW$197, DW_AT_end_file("PCModBus.c")
	.dwattr DW$197, DW_AT_end_line(0xd4)
	.dwattr DW$197, DW_AT_end_column(0x01)
	.dwendtag DW$197

	.sect	".text"
	.global	_ParseHeader

DW$200	.dwtag  DW_TAG_subprogram, DW_AT_name("ParseHeader"), DW_AT_symbol_name("_ParseHeader")
	.dwattr DW$200, DW_AT_low_pc(_ParseHeader)
	.dwattr DW$200, DW_AT_high_pc(0x00)
	.dwattr DW$200, DW_AT_begin_file("PCModBus.c")
	.dwattr DW$200, DW_AT_begin_line(0xd6)
	.dwattr DW$200, DW_AT_begin_column(0x06)
	.dwattr DW$200, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$200, DW_AT_skeletal(0x01)
	.dwpsn	"PCModBus.c",215,1

;***************************************************************
;* FNAME: _ParseHeader                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ParseHeader:
        MOVW      DP,#_modbusrxcharcount
        MOV       AL,@_modbusrxcharcount ; |218| 
        CMPB      AL,#6                 ; |218| 
        BF        L16,LOS               ; |218| 
        ; branchcc occurs ; |218| 
        MOVW      DP,#_numbytesexpected
        MOV       AL,@_numbytesexpected ; |218| 
        BF        L16,NEQ               ; |218| 
        ; branchcc occurs ; |218| 
        MOVW      DP,#_safe2+14
        MOVL      XAR4,#_modbuscmdbuf   ; |220| 
        MOV       AL,@_safe2+14         ; |220| 
        CMP       AL,*+XAR4[0]          ; |220| 
        BF        L14,NEQ               ; |220| 
        ; branchcc occurs ; |220| 
        MOV       AL,*+XAR4[0]          ; |222| 
        MOVW      DP,#_pcmodbus
        MOV       @_pcmodbus,AL         ; |222| 
        MOVW      DP,#_pcmodbus+1
        MOV       AL,*+XAR4[1]          ; |223| 
        MOV       @_pcmodbus+1,AL       ; |223| 
        MOV       AH,*+XAR4[3]          ; |226| 
        MOV       AL,*+XAR4[2]          ; |224| 
        ANDB      AH,#0xff              ; |226| 
        LSL       AL,8                  ; |225| 
        MOVW      DP,#_pcmodbus+2
        ADD       AL,AH                 ; |226| 
        MOV       @_pcmodbus+2,AL       ; |227| 
        MOV       AH,*+XAR4[5]          ; |230| 
        MOV       AL,*+XAR4[4]          ; |228| 
        ANDB      AH,#0xff              ; |230| 
        LSL       AL,8                  ; |229| 
        MOVW      DP,#_pcmodbus+3
        ADD       AL,AH                 ; |230| 
        MOV       @_pcmodbus+3,AL       ; |231| 
        MOVW      DP,#_pcmodbus+3
        MOV       ACC,@_pcmodbus+3 << #1 ; |232| 
        MOVW      DP,#_pcmodbus+4
        MOV       @_pcmodbus+4,AL       ; |232| 
L14:    
        MOVW      DP,#_pcmodbus+1
        MOV       AL,@_pcmodbus+1       ; |234| 
        CMPB      AL,#3                 ; |234| 
        BF        L15,EQ                ; |234| 
        ; branchcc occurs ; |234| 
        CMPB      AL,#16                ; |234| 
        BF        L16,NEQ               ; |234| 
        ; branchcc occurs ; |234| 
        MOVW      DP,#_pcmodbus+4
        MOV       AL,@_pcmodbus+4       ; |240| 
        ADDB      AL,#9                 ; |240| 
        MOVW      DP,#_numbytesexpected
        MOV       @_numbytesexpected,AL ; |240| 
        BF        L16,UNC               ; |241| 
        ; branch occurs ; |241| 
L15:    
        MOVW      DP,#_numbytesexpected
        MOV       @_numbytesexpected,#8 ; |237| 
L16:    
	.dwpsn	"PCModBus.c",244,1
        LRETR
        ; return occurs
	.dwattr DW$200, DW_AT_end_file("PCModBus.c")
	.dwattr DW$200, DW_AT_end_line(0xf4)
	.dwattr DW$200, DW_AT_end_column(0x01)
	.dwendtag DW$200

	.sect	".text"
	.global	_Serial

DW$201	.dwtag  DW_TAG_subprogram, DW_AT_name("Serial"), DW_AT_symbol_name("_Serial")
	.dwattr DW$201, DW_AT_low_pc(_Serial)
	.dwattr DW$201, DW_AT_high_pc(0x00)
	.dwattr DW$201, DW_AT_begin_file("PCModBus.c")
	.dwattr DW$201, DW_AT_begin_line(0xf6)
	.dwattr DW$201, DW_AT_begin_column(0x06)
	.dwattr DW$201, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$201, DW_AT_skeletal(0x01)
	.dwpsn	"PCModBus.c",247,1

;***************************************************************
;* FNAME: _Serial                       FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_Serial:
        MOVL      *SP++,XAR1
        MOVB      XAR1,#0
        BF        L18,UNC
        ; branch occurs
L17:    
DW$L$_Serial$2$B:
        MOVW      DP,#_timers+38
        MOV       @_timers+38,#4        ; |258| 
DW$L$_Serial$2$E:
L18:    
DW$L$_Serial$3$B:
        LCR       #_ReadCharfromUartB   ; |252| 
        ; call occurs [#_ReadCharfromUartB] ; |252| 
        CMPB      AL,#0                 ; |252| 
        BF        L19,NEQ               ; |252| 
        ; branchcc occurs ; |252| 
DW$L$_Serial$3$E:
DW$L$_Serial$4$B:
        MOVW      DP,#_timers+38
        MOV       AL,@_timers+38        ; |260| 
        BF        L20,NEQ               ; |260| 
        ; branchcc occurs ; |260| 
DW$L$_Serial$4$E:
DW$L$_Serial$5$B:
        MOV       AL,AR1
        CMPB      AL,#1                 ; |260| 
        BF        L20,NEQ               ; |260| 
        ; branchcc occurs ; |260| 
DW$L$_Serial$5$E:
        MOVW      DP,#_numbytesexpected
        MOVL      XAR4,#_modbuscmdbuf   ; |263| 
        MOV       @_numbytesexpected,#0 ; |262| 
        MOVW      DP,#_modbuscmdbufptr
        MOVL      @_modbuscmdbufptr,XAR4 ; |263| 
        LCR       #_ModbusParseCmd      ; |264| 
        ; call occurs [#_ModbusParseCmd] ; |264| 
        BF        L21,UNC               ; |264| 
        ; branch occurs ; |264| 
L19:    
DW$L$_Serial$7$B:
        LCR       #_HandleChar          ; |254| 
        ; call occurs [#_HandleChar] ; |254| 
        LCR       #_ParseHeader         ; |255| 
        ; call occurs [#_ParseHeader] ; |255| 
        MOVB      XAR1,#1               ; |256| 
        MOVW      DP,#_modbusrxcharcount
        MOV       AL,@_modbusrxcharcount ; |257| 
        MOVW      DP,#_numbytesexpected
        CMP       AL,@_numbytesexpected ; |257| 
        BF        L17,NEQ               ; |257| 
        ; branchcc occurs ; |257| 
DW$L$_Serial$7$E:
DW$L$_Serial$8$B:
        MOVW      DP,#_timers+38
        MOV       @_timers+38,#0        ; |257| 
DW$L$_Serial$8$E:
L20:    
DW$L$_Serial$9$B:
        MOV       AL,AR1
        CMPB      AL,#1                 ; |266| 
        BF        L18,EQ                ; |266| 
        ; branchcc occurs ; |266| 
DW$L$_Serial$9$E:
        MOVB      AL,#0
L21:    
        MOVL      XAR1,*--SP            ; |267| 
	.dwpsn	"PCModBus.c",268,1
        LRETR
        ; return occurs

DW$202	.dwtag  DW_TAG_loop
	.dwattr DW$202, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\PCModBus.asm:L18:1:1471518984")
	.dwattr DW$202, DW_AT_begin_file("PCModBus.c")
	.dwattr DW$202, DW_AT_begin_line(0xfc)
	.dwattr DW$202, DW_AT_end_line(0x10a)
DW$203	.dwtag  DW_TAG_loop_range
	.dwattr DW$203, DW_AT_low_pc(DW$L$_Serial$3$B)
	.dwattr DW$203, DW_AT_high_pc(DW$L$_Serial$3$E)
DW$204	.dwtag  DW_TAG_loop_range
	.dwattr DW$204, DW_AT_low_pc(DW$L$_Serial$4$B)
	.dwattr DW$204, DW_AT_high_pc(DW$L$_Serial$4$E)
DW$205	.dwtag  DW_TAG_loop_range
	.dwattr DW$205, DW_AT_low_pc(DW$L$_Serial$5$B)
	.dwattr DW$205, DW_AT_high_pc(DW$L$_Serial$5$E)
DW$206	.dwtag  DW_TAG_loop_range
	.dwattr DW$206, DW_AT_low_pc(DW$L$_Serial$8$B)
	.dwattr DW$206, DW_AT_high_pc(DW$L$_Serial$8$E)
DW$207	.dwtag  DW_TAG_loop_range
	.dwattr DW$207, DW_AT_low_pc(DW$L$_Serial$7$B)
	.dwattr DW$207, DW_AT_high_pc(DW$L$_Serial$7$E)
DW$208	.dwtag  DW_TAG_loop_range
	.dwattr DW$208, DW_AT_low_pc(DW$L$_Serial$9$B)
	.dwattr DW$208, DW_AT_high_pc(DW$L$_Serial$9$E)
DW$209	.dwtag  DW_TAG_loop_range
	.dwattr DW$209, DW_AT_low_pc(DW$L$_Serial$2$B)
	.dwattr DW$209, DW_AT_high_pc(DW$L$_Serial$2$E)
	.dwendtag DW$202

	.dwattr DW$201, DW_AT_end_file("PCModBus.c")
	.dwattr DW$201, DW_AT_end_line(0x10c)
	.dwattr DW$201, DW_AT_end_column(0x01)
	.dwendtag DW$201

	.sect	".text"
	.global	_PCModBus

DW$210	.dwtag  DW_TAG_subprogram, DW_AT_name("PCModBus"), DW_AT_symbol_name("_PCModBus")
	.dwattr DW$210, DW_AT_low_pc(_PCModBus)
	.dwattr DW$210, DW_AT_high_pc(0x00)
	.dwattr DW$210, DW_AT_begin_file("PCModBus.c")
	.dwattr DW$210, DW_AT_begin_line(0x111)
	.dwattr DW$210, DW_AT_begin_column(0x06)
	.dwattr DW$210, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$210, DW_AT_skeletal(0x01)
	.dwpsn	"PCModBus.c",274,1

;***************************************************************
;* FNAME: _PCModBus                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_PCModBus:
        LCR       #_Serial              ; |276| 
        ; call occurs [#_Serial] ; |276| 
        CMPB      AL,#1                 ; |276| 
        BF        L22,NEQ               ; |276| 
        ; branchcc occurs ; |276| 
        MOVB      ACC,#1
        MOVW      DP,#_config+20
        ADDL      @_config+20,ACC       ; |278| 
        LCR       #_SendResponse        ; |279| 
        ; call occurs [#_SendResponse] ; |279| 
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |280| 
L22:    
        MOVW      DP,#_timers+57
        MOV       AL,@_timers+57        ; |282| 
        BF        L23,NEQ               ; |282| 
        ; branchcc occurs ; |282| 
        MOVW      DP,#_pcmodbus+271
        MOV       AL,@_pcmodbus+271     ; |282| 
        BF        L23,NEQ               ; |282| 
        ; branchcc occurs ; |282| 
        MOVW      DP,#_pcmodbus+271
        MOV       @_pcmodbus+271,#1     ; |286| 
L23:    
	.dwpsn	"PCModBus.c",292,1
        LRETR
        ; return occurs
	.dwattr DW$210, DW_AT_end_file("PCModBus.c")
	.dwattr DW$210, DW_AT_end_line(0x124)
	.dwattr DW$210, DW_AT_end_column(0x01)
	.dwendtag DW$210

	.sect	".text"
	.global	_ReadPCCommsFlag

DW$211	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadPCCommsFlag"), DW_AT_symbol_name("_ReadPCCommsFlag")
	.dwattr DW$211, DW_AT_low_pc(_ReadPCCommsFlag)
	.dwattr DW$211, DW_AT_high_pc(0x00)
	.dwattr DW$211, DW_AT_begin_file("PCModBus.c")
	.dwattr DW$211, DW_AT_begin_line(0x126)
	.dwattr DW$211, DW_AT_begin_column(0x05)
	.dwattr DW$211, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$211, DW_AT_skeletal(0x01)
	.dwpsn	"PCModBus.c",295,1

;***************************************************************
;* FNAME: _ReadPCCommsFlag              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadPCCommsFlag:
        MOVW      DP,#_pcmodbus+271
        MOV       AL,@_pcmodbus+271     ; |296| 
	.dwpsn	"PCModBus.c",297,1
        LRETR
        ; return occurs
	.dwattr DW$211, DW_AT_end_file("PCModBus.c")
	.dwattr DW$211, DW_AT_end_line(0x129)
	.dwattr DW$211, DW_AT_end_column(0x01)
	.dwendtag DW$211

	.sect	".text"
	.global	_SendResponse

DW$212	.dwtag  DW_TAG_subprogram, DW_AT_name("SendResponse"), DW_AT_symbol_name("_SendResponse")
	.dwattr DW$212, DW_AT_low_pc(_SendResponse)
	.dwattr DW$212, DW_AT_high_pc(0x00)
	.dwattr DW$212, DW_AT_begin_file("PCModBus.c")
	.dwattr DW$212, DW_AT_begin_line(0x13a)
	.dwattr DW$212, DW_AT_begin_column(0x06)
	.dwattr DW$212, DW_AT_frame_base[DW_OP_breg20 -12]
	.dwattr DW$212, DW_AT_skeletal(0x01)
	.dwpsn	"PCModBus.c",315,1

;***************************************************************
;* FNAME: _SendResponse                 FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  2 Auto,  6 SOE     *
;***************************************************************

_SendResponse:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#4
        LCR       #_Registers           ; |319| 
        ; call occurs [#_Registers] ; |319| 
        LCR       #_TxNowtoSlave        ; |321| 
        ; call occurs [#_TxNowtoSlave] ; |321| 
        MOVB      XAR2,#0
        MOVZ      AR1,AR2               ; |316| 
        MOVW      DP,#_pcmodbus+1
        MOV       AL,@_pcmodbus+1       ; |322| 
        CMPB      AL,#3                 ; |322| 
        BF        L24,EQ                ; |322| 
        ; branchcc occurs ; |322| 
        CMPB      AL,#6                 ; |322| 
        BF        L28,EQ                ; |322| 
        ; branchcc occurs ; |322| 
        CMPB      AL,#16                ; |322| 
        BF        L27,EQ                ; |322| 
        ; branchcc occurs ; |322| 
        BF        L30,UNC               ; |322| 
        ; branch occurs ; |322| 
L24:    
        MOVW      DP,#_pcmodbus
        MOVL      XAR4,#_responsemsg    ; |325| 
        MOV       AH,@_pcmodbus         ; |325| 
        MOVB      XAR1,#3               ; |328| 
        MOV       *+XAR4[0],AH          ; |325| 
        MOVW      DP,#_pcmodbus+4
        MOV       *+XAR4[1],AL          ; |326| 
        MOV       AL,@_pcmodbus+4       ; |327| 
        MOVW      DP,#_pcmodbus+3
        MOV       *+XAR4[2],AL          ; |327| 
        MOV       AL,@_pcmodbus+3       ; |329| 
        BF        L30,EQ                ; |329| 
        ; branchcc occurs ; |329| 
L25:    
DW$L$_SendResponse$6$B:
	.dwpsn	"PCModBus.c",330,0
        MOVZ      AR0,AR2               ; |331| 
        MOVL      XAR4,#_pcmodbus+5     ; |331| 
        MOV       AL,*+XAR4[AR0]        ; |331| 
        MOV       AH,AL                 ; |331| 
        LSR       AH,8                  ; |331| 
        MOVL      XAR4,#_responsemsg    ; |331| 
        MOV       *+XAR4[AR1],AH        ; |331| 
        ANDB      AL,#255               ; |333| 
        ADDB      XAR1,#1               ; |333| 
        MOV       *+XAR4[AR1],AL        ; |333| 
        MOV       AL,AR2                ; |334| 
        CMPB      AL,#127               ; |335| 
        ADDB      XAR1,#1               ; |334| 
        BF        L26,HI                ; |335| 
        ; branchcc occurs ; |335| 
DW$L$_SendResponse$6$E:
DW$L$_SendResponse$7$B:
        ADDB      XAR2,#1               ; |329| 
        MOVW      DP,#_pcmodbus+3
        MOV       AL,AR2                ; |329| 
        CMP       AL,@_pcmodbus+3       ; |329| 
	.dwpsn	"PCModBus.c",341,0
        BF        L25,LO                ; |329| 
        ; branchcc occurs ; |329| 
DW$L$_SendResponse$7$E:
        BF        L30,UNC               ; |329| 
        ; branch occurs ; |329| 
L26:    
        MOVW      DP,#_pcmodbus+3
        MOV       @_pcmodbus+3,#127     ; |338| 
        BF        L30,UNC               ; |339| 
        ; branch occurs ; |339| 
L27:    
        MOVW      DP,#_pcmodbus
        MOVL      XAR4,#_responsemsg    ; |353| 
        MOV       AL,@_pcmodbus         ; |353| 
        MOVW      DP,#_pcmodbus+1
        MOV       *+XAR4[0],AL          ; |353| 
        MOV       AL,@_pcmodbus+1       ; |354| 
        MOVW      DP,#_pcmodbus+2
        MOV       *+XAR4[1],AL          ; |354| 
        MOV       AL,@_pcmodbus+2       ; |355| 
        MOV       AH,AL                 ; |355| 
        LSR       AH,8                  ; |355| 
        ANDB      AL,#255               ; |356| 
        MOV       *+XAR4[2],AH          ; |355| 
        MOVW      DP,#_pcmodbus+3
        MOV       *+XAR4[3],AL          ; |356| 
        MOV       AL,@_pcmodbus+3       ; |357| 
        BF        L29,UNC               ; |360| 
        ; branch occurs ; |360| 
L28:    
        MOVW      DP,#_pcmodbus
        MOVL      XAR4,#_responsemsg    ; |344| 
        MOV       AL,@_pcmodbus         ; |344| 
        MOVW      DP,#_pcmodbus+1
        MOV       *+XAR4[0],AL          ; |344| 
        MOV       AL,@_pcmodbus+1       ; |345| 
        MOVW      DP,#_pcmodbus+2
        MOV       *+XAR4[1],AL          ; |345| 
        MOV       AL,@_pcmodbus+2       ; |346| 
        MOV       AH,AL                 ; |346| 
        LSR       AH,8                  ; |346| 
        ANDB      AL,#255               ; |347| 
        MOV       *+XAR4[2],AH          ; |346| 
        MOVW      DP,#_pcmodbus+5
        MOV       *+XAR4[3],AL          ; |347| 
        MOV       AL,@_pcmodbus+5       ; |348| 
L29:    
        MOV       AH,AL                 ; |348| 
        MOVB      XAR1,#6               ; |350| 
        LSR       AH,8                  ; |348| 
        ANDB      AL,#255               ; |349| 
        MOV       *+XAR4[4],AH          ; |348| 
        MOV       *+XAR4[5],AL          ; |349| 
L30:    
        MOVZ      AR5,SP                ; |362| 
        MOVL      XAR3,#_responsemsg    ; |362| 
        MOVL      XAR4,XAR3             ; |362| 
        MOV       AL,AR1                ; |362| 
        SUBB      XAR5,#4               ; |362| 
        LCR       #_CalcCRC             ; |362| 
        ; call occurs [#_CalcCRC] ; |362| 
        MOV       AL,*-SP[4]            ; |363| 
        MOV       *+XAR3[AR1],AL        ; |363| 
        MOVB      XAR0,#1               ; |364| 
        MOV       AL,AR1
        ADD       AR0,AL
        MOVW      DP,#_pcmodbus
        MOV       AL,*-SP[3]            ; |364| 
        MOV       *+XAR3[AR0],AL        ; |364| 
        MOV       AL,@_pcmodbus         ; |367| 
        ADDB      XAR1,#2               ; |365| 
        BF        L32,EQ                ; |367| 
        ; branchcc occurs ; |367| 
        MOVW      DP,#_timers+39
        MOV       AL,@_timers+39        ; |368| 
        BF        L31,NEQ               ; |368| 
        ; branchcc occurs ; |368| 
        MOVL      XAR4,#FSL1            ; |371| 
        MOVL      XAR3,#_stringbuffer   ; |371| 
        MOVB      ACC,#1
        MOVL      *-SP[2],XAR4          ; |371| 
        MOVL      XAR4,XAR3             ; |371| 
        MOVW      DP,#_config+22
        ADDL      @_config+22,ACC       ; |370| 
        LCR       #_sprintf             ; |371| 
        ; call occurs [#_sprintf] ; |371| 
        MOVL      XAR4,XAR3             ; |371| 
        LCR       #_DebugStringOut      ; |371| 
        ; call occurs [#_DebugStringOut] ; |371| 
        BF        L32,UNC               ; |371| 
        ; branch occurs ; |371| 
L31:    
        MOV       AL,AR1                ; |368| 
        MOVL      XAR4,#_responsemsg    ; |368| 
        LCR       #_LoadSendBufferB     ; |368| 
        ; call occurs [#_LoadSendBufferB] ; |368| 
L32:    
        SUBB      SP,#4
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"PCModBus.c",374,1
        LRETR
        ; return occurs

DW$213	.dwtag  DW_TAG_loop
	.dwattr DW$213, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\PCModBus.asm:L25:1:1471518984")
	.dwattr DW$213, DW_AT_begin_file("PCModBus.c")
	.dwattr DW$213, DW_AT_begin_line(0x149)
	.dwattr DW$213, DW_AT_end_line(0x155)
DW$214	.dwtag  DW_TAG_loop_range
	.dwattr DW$214, DW_AT_low_pc(DW$L$_SendResponse$6$B)
	.dwattr DW$214, DW_AT_high_pc(DW$L$_SendResponse$6$E)
DW$215	.dwtag  DW_TAG_loop_range
	.dwattr DW$215, DW_AT_low_pc(DW$L$_SendResponse$7$B)
	.dwattr DW$215, DW_AT_high_pc(DW$L$_SendResponse$7$E)
	.dwendtag DW$213

	.dwattr DW$212, DW_AT_end_file("PCModBus.c")
	.dwattr DW$212, DW_AT_end_line(0x176)
	.dwattr DW$212, DW_AT_end_column(0x01)
	.dwendtag DW$212

	.sect	".text"
	.global	_Registers

DW$216	.dwtag  DW_TAG_subprogram, DW_AT_name("Registers"), DW_AT_symbol_name("_Registers")
	.dwattr DW$216, DW_AT_low_pc(_Registers)
	.dwattr DW$216, DW_AT_high_pc(0x00)
	.dwattr DW$216, DW_AT_begin_file("PCModBus.c")
	.dwattr DW$216, DW_AT_begin_line(0x179)
	.dwattr DW$216, DW_AT_begin_column(0x06)
	.dwattr DW$216, DW_AT_frame_base[DW_OP_breg20 -50]
	.dwattr DW$216, DW_AT_skeletal(0x01)
	.dwpsn	"PCModBus.c",378,1

;***************************************************************
;* FNAME: _Registers                    FR SIZE:  48           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 40 Auto,  6 SOE     *
;***************************************************************

_Registers:
        MOVL      *SP++,XAR1
        MOVW      DP,#_pcmodbus+1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOV       AL,@_pcmodbus+1       ; |392| 
        ADDB      SP,#42
        CMPB      AL,#16                ; |392| 
        MOVB      XAR3,#0
        BF        L33,EQ                ; |392| 
        ; branchcc occurs ; |392| 
        CMPB      AL,#6                 ; |392| 
        BF        L34,NEQ               ; |392| 
        ; branchcc occurs ; |392| 
L33:    
        MOV       *-SP[37],#16          ; |392| 
        BF        L35,UNC               ; |392| 
        ; branch occurs ; |392| 
L34:    
        MOV       *-SP[37],#3           ; |392| 
L35:    
        MOVW      DP,#_pcmodbus+2
        MOVZ      AR2,@_pcmodbus+2      ; |394| 
        MOVW      DP,#_pcmodbus+3
        MOV       AL,@_pcmodbus+3       ; |401| 
        MOVB      XAR1,#0
        BF        L301,EQ               ; |401| 
        ; branchcc occurs ; |401| 
L36:    
DW$L$_Registers$6$B:
	.dwpsn	"PCModBus.c",402,0
        MOV       AL,AR2
        BF        L37,NEQ               ; |403| 
        ; branchcc occurs ; |403| 
DW$L$_Registers$6$E:
DW$L$_Registers$7$B:
        MOVL      XAR3,#_livetime       ; |406| 
        MOVL      XAR4,XAR3             ; |407| 
        MOVB      AL,#1                 ; |405| 
        MOV       AH,AR1                ; |407| 
        LCR       #_ProcessRegister     ; |407| 
        ; call occurs [#_ProcessRegister] ; |407| 
        MOV       AL,*-SP[37]           ; |407| 
        CMPB      AL,#16                ; |408| 
        BF        L300,NEQ              ; |408| 
        ; branchcc occurs ; |408| 
DW$L$_Registers$7$E:
DW$L$_Registers$8$B:
        LCR       #_YearMonthUpdate     ; |408| 
        ; call occurs [#_YearMonthUpdate] ; |408| 
        BF        L300,UNC              ; |408| 
        ; branch occurs ; |408| 
DW$L$_Registers$8$E:
L37:    
DW$L$_Registers$9$B:
        CMPB      AL,#1                 ; |410| 
        BF        L299,EQ               ; |410| 
        ; branchcc occurs ; |410| 
DW$L$_Registers$9$E:
DW$L$_Registers$10$B:
        CMPB      AL,#2                 ; |417| 
        BF        L298,EQ               ; |417| 
        ; branchcc occurs ; |417| 
DW$L$_Registers$10$E:
DW$L$_Registers$11$B:
        CMPB      AL,#3                 ; |424| 
        BF        L69,LO                ; |424| 
        ; branchcc occurs ; |424| 
DW$L$_Registers$11$E:
DW$L$_Registers$12$B:
        CMPB      AL,#31                ; |424| 
        BF        L297,LO               ; |424| 
        ; branchcc occurs ; |424| 
DW$L$_Registers$12$E:
DW$L$_Registers$13$B:
        CMPB      AL,#31                ; |431| 
        BF        L69,LO                ; |431| 
        ; branchcc occurs ; |431| 
DW$L$_Registers$13$E:
DW$L$_Registers$14$B:
        CMPB      AL,#59                ; |431| 
        BF        L296,LO               ; |431| 
        ; branchcc occurs ; |431| 
DW$L$_Registers$14$E:
DW$L$_Registers$15$B:
        CMPB      AL,#59                ; |439| 
        BF        L69,LO                ; |439| 
        ; branchcc occurs ; |439| 
DW$L$_Registers$15$E:
DW$L$_Registers$16$B:
        CMPB      AL,#87                ; |439| 
        BF        L295,LO               ; |439| 
        ; branchcc occurs ; |439| 
DW$L$_Registers$16$E:
DW$L$_Registers$17$B:
        CMPB      AL,#88                ; |447| 
        BF        L69,LO                ; |447| 
        ; branchcc occurs ; |447| 
DW$L$_Registers$17$E:
DW$L$_Registers$18$B:
        CMPB      AL,#116               ; |447| 
        BF        L294,LO               ; |447| 
        ; branchcc occurs ; |447| 
DW$L$_Registers$18$E:
DW$L$_Registers$19$B:
        CMPB      AL,#117               ; |454| 
        BF        L69,LO                ; |454| 
        ; branchcc occurs ; |454| 
DW$L$_Registers$19$E:
DW$L$_Registers$20$B:
        CMPB      AL,#145               ; |454| 
        BF        L291,LO               ; |454| 
        ; branchcc occurs ; |454| 
DW$L$_Registers$20$E:
DW$L$_Registers$21$B:
        CMPB      AL,#146               ; |506| 
        BF        L69,LO                ; |506| 
        ; branchcc occurs ; |506| 
DW$L$_Registers$21$E:
DW$L$_Registers$22$B:
        CMPB      AL,#174               ; |506| 
        BF        L289,LO               ; |506| 
        ; branchcc occurs ; |506| 
DW$L$_Registers$22$E:
DW$L$_Registers$23$B:
        CMPB      AL,#175               ; |512| 
        BF        L69,LO                ; |512| 
        ; branchcc occurs ; |512| 
DW$L$_Registers$23$E:
DW$L$_Registers$24$B:
        CMPB      AL,#203               ; |512| 
        BF        L288,LO               ; |512| 
        ; branchcc occurs ; |512| 
DW$L$_Registers$24$E:
DW$L$_Registers$25$B:
        CMPB      AL,#203               ; |518| 
        BF        L69,LO                ; |518| 
        ; branchcc occurs ; |518| 
DW$L$_Registers$25$E:
DW$L$_Registers$26$B:
        CMPB      AL,#231               ; |518| 
        BF        L287,LO               ; |518| 
        ; branchcc occurs ; |518| 
DW$L$_Registers$26$E:
DW$L$_Registers$27$B:
        CMPB      AL,#231               ; |523| 
        BF        L285,EQ               ; |523| 
        ; branchcc occurs ; |523| 
DW$L$_Registers$27$E:
DW$L$_Registers$28$B:
        CMPB      AL,#232               ; |531| 
        BF        L69,LO                ; |531| 
        ; branchcc occurs ; |531| 
DW$L$_Registers$28$E:
DW$L$_Registers$29$B:
        CMPB      AL,#233               ; |531| 
        BF        L283,LOS              ; |531| 
        ; branchcc occurs ; |531| 
DW$L$_Registers$29$E:
DW$L$_Registers$30$B:
        CMPB      AL,#234               ; |539| 
        BF        L69,LO                ; |539| 
        ; branchcc occurs ; |539| 
DW$L$_Registers$30$E:
DW$L$_Registers$31$B:
        CMPB      AL,#235               ; |539| 
        BF        L281,LOS              ; |539| 
        ; branchcc occurs ; |539| 
DW$L$_Registers$31$E:
DW$L$_Registers$32$B:
        CMPB      AL,#236               ; |547| 
        BF        L69,LO                ; |547| 
        ; branchcc occurs ; |547| 
DW$L$_Registers$32$E:
DW$L$_Registers$33$B:
        CMPB      AL,#237               ; |547| 
        BF        L276,LOS              ; |547| 
        ; branchcc occurs ; |547| 
DW$L$_Registers$33$E:
DW$L$_Registers$34$B:
        CMP       AR2,#256              ; |556| 
        BF        L69,LO                ; |556| 
        ; branchcc occurs ; |556| 
DW$L$_Registers$34$E:
DW$L$_Registers$35$B:
        CMP       AR2,#270              ; |556| 
        BF        L275,LO               ; |556| 
        ; branchcc occurs ; |556| 
DW$L$_Registers$35$E:
DW$L$_Registers$36$B:
        CMP       AR2,#270              ; |560| 
        BF        L69,LO                ; |560| 
        ; branchcc occurs ; |560| 
DW$L$_Registers$36$E:
DW$L$_Registers$37$B:
        CMP       AR2,#284              ; |560| 
        BF        L274,LO               ; |560| 
        ; branchcc occurs ; |560| 
DW$L$_Registers$37$E:
DW$L$_Registers$38$B:
        CMP       AR2,#284              ; |564| 
        BF        L69,LO                ; |564| 
        ; branchcc occurs ; |564| 
DW$L$_Registers$38$E:
DW$L$_Registers$39$B:
        CMP       AR2,#298              ; |564| 
        BF        L272,LO               ; |564| 
        ; branchcc occurs ; |564| 
DW$L$_Registers$39$E:
DW$L$_Registers$40$B:
        CMP       AR2,#298              ; |570| 
        BF        L69,LO                ; |570| 
        ; branchcc occurs ; |570| 
DW$L$_Registers$40$E:
DW$L$_Registers$41$B:
        CMP       AR2,#312              ; |570| 
        BF        L271,LO               ; |570| 
        ; branchcc occurs ; |570| 
DW$L$_Registers$41$E:
DW$L$_Registers$42$B:
        CMP       AR2,#312              ; |576| 
        BF        L69,LO                ; |576| 
        ; branchcc occurs ; |576| 
DW$L$_Registers$42$E:
DW$L$_Registers$43$B:
        CMP       AR2,#340              ; |576| 
        BF        L270,LO               ; |576| 
        ; branchcc occurs ; |576| 
DW$L$_Registers$43$E:
DW$L$_Registers$44$B:
        CMP       AR2,#382              ; |581| 
        BF        L269,EQ               ; |581| 
        ; branchcc occurs ; |581| 
DW$L$_Registers$44$E:
DW$L$_Registers$45$B:
        CMP       AR2,#383              ; |585| 
        BF        L268,EQ               ; |585| 
        ; branchcc occurs ; |585| 
DW$L$_Registers$45$E:
DW$L$_Registers$46$B:
        CMP       AR2,#384              ; |589| 
        BF        L69,LO                ; |589| 
        ; branchcc occurs ; |589| 
DW$L$_Registers$46$E:
DW$L$_Registers$47$B:
        CMP       AR2,#412              ; |589| 
        BF        L267,LO               ; |589| 
        ; branchcc occurs ; |589| 
DW$L$_Registers$47$E:
DW$L$_Registers$48$B:
        CMP       AR2,#412              ; |596| 
        BF        L69,LO                ; |596| 
        ; branchcc occurs ; |596| 
DW$L$_Registers$48$E:
DW$L$_Registers$49$B:
        CMP       AR2,#440              ; |596| 
        BF        L266,LO               ; |596| 
        ; branchcc occurs ; |596| 
DW$L$_Registers$49$E:
DW$L$_Registers$50$B:
        CMP       AR2,#440              ; |603| 
        BF        L69,LO                ; |603| 
        ; branchcc occurs ; |603| 
DW$L$_Registers$50$E:
DW$L$_Registers$51$B:
        CMP       AR2,#468              ; |603| 
        BF        L265,LO               ; |603| 
        ; branchcc occurs ; |603| 
DW$L$_Registers$51$E:
DW$L$_Registers$52$B:
        CMP       AR2,#468              ; |610| 
        BF        L264,EQ               ; |610| 
        ; branchcc occurs ; |610| 
DW$L$_Registers$52$E:
DW$L$_Registers$53$B:
        CMP       AR2,#469              ; |614| 
        BF        L263,EQ               ; |614| 
        ; branchcc occurs ; |614| 
DW$L$_Registers$53$E:
DW$L$_Registers$54$B:
        CMP       AR2,#470              ; |618| 
        BF        L262,EQ               ; |618| 
        ; branchcc occurs ; |618| 
DW$L$_Registers$54$E:
DW$L$_Registers$55$B:
        CMP       AR2,#471              ; |622| 
        BF        L261,EQ               ; |622| 
        ; branchcc occurs ; |622| 
DW$L$_Registers$55$E:
DW$L$_Registers$56$B:
        CMP       AR2,#472              ; |627| 
        BF        L260,EQ               ; |627| 
        ; branchcc occurs ; |627| 
DW$L$_Registers$56$E:
DW$L$_Registers$57$B:
        CMP       AR2,#473              ; |631| 
        BF        L259,EQ               ; |631| 
        ; branchcc occurs ; |631| 
DW$L$_Registers$57$E:
DW$L$_Registers$58$B:
        CMP       AR2,#474              ; |635| 
        BF        L258,EQ               ; |635| 
        ; branchcc occurs ; |635| 
DW$L$_Registers$58$E:
DW$L$_Registers$59$B:
        CMP       AR2,#475              ; |639| 
        BF        L257,EQ               ; |639| 
        ; branchcc occurs ; |639| 
DW$L$_Registers$59$E:
DW$L$_Registers$60$B:
        CMP       AR2,#476              ; |645| 
        BF        L256,EQ               ; |645| 
        ; branchcc occurs ; |645| 
DW$L$_Registers$60$E:
DW$L$_Registers$61$B:
        CMP       AR2,#480              ; |650| 
        BF        L255,EQ               ; |650| 
        ; branchcc occurs ; |650| 
DW$L$_Registers$61$E:
DW$L$_Registers$62$B:
        CMP       AR2,#512              ; |654| 
        BF        L253,EQ               ; |654| 
        ; branchcc occurs ; |654| 
DW$L$_Registers$62$E:
DW$L$_Registers$63$B:
        CMP       AR2,#513              ; |663| 
        BF        L69,LO                ; |663| 
        ; branchcc occurs ; |663| 
DW$L$_Registers$63$E:
DW$L$_Registers$64$B:
        CMP       AR2,#528              ; |663| 
        BF        L252,LOS              ; |663| 
        ; branchcc occurs ; |663| 
DW$L$_Registers$64$E:
DW$L$_Registers$65$B:
        CMP       AR2,#529              ; |667| 
        BF        L69,LO                ; |667| 
        ; branchcc occurs ; |667| 
DW$L$_Registers$65$E:
DW$L$_Registers$66$B:
        CMP       AR2,#542              ; |667| 
        BF        L251,LOS              ; |667| 
        ; branchcc occurs ; |667| 
DW$L$_Registers$66$E:
DW$L$_Registers$67$B:
        CMP       AR2,#543              ; |671| 
        BF        L69,LO                ; |671| 
        ; branchcc occurs ; |671| 
DW$L$_Registers$67$E:
DW$L$_Registers$68$B:
        CMP       AR2,#556              ; |671| 
        BF        L250,LOS              ; |671| 
        ; branchcc occurs ; |671| 
DW$L$_Registers$68$E:
DW$L$_Registers$69$B:
        CMP       AR2,#640              ; |675| 
        BF        L249,EQ               ; |675| 
        ; branchcc occurs ; |675| 
DW$L$_Registers$69$E:
DW$L$_Registers$70$B:
        CMP       AR2,#641              ; |687| 
        BF        L246,EQ               ; |687| 
        ; branchcc occurs ; |687| 
DW$L$_Registers$70$E:
DW$L$_Registers$71$B:
        CMP       AR2,#642              ; |692| 
        BF        L245,EQ               ; |692| 
        ; branchcc occurs ; |692| 
DW$L$_Registers$71$E:
DW$L$_Registers$72$B:
        CMP       AR2,#643              ; |701| 
        BF        L244,EQ               ; |701| 
        ; branchcc occurs ; |701| 
DW$L$_Registers$72$E:
DW$L$_Registers$73$B:
        CMP       AR2,#644              ; |706| 
        BF        L243,EQ               ; |706| 
        ; branchcc occurs ; |706| 
DW$L$_Registers$73$E:
DW$L$_Registers$74$B:
        CMP       AR2,#645              ; |710| 
        BF        L242,EQ               ; |710| 
        ; branchcc occurs ; |710| 
DW$L$_Registers$74$E:
DW$L$_Registers$75$B:
        CMP       AR2,#647              ; |726| 
        BF        L69,LO                ; |726| 
        ; branchcc occurs ; |726| 
DW$L$_Registers$75$E:
DW$L$_Registers$76$B:
        CMP       AR2,#678              ; |726| 
        BF        L241,LOS              ; |726| 
        ; branchcc occurs ; |726| 
DW$L$_Registers$76$E:
DW$L$_Registers$77$B:
        CMP       AR2,#679              ; |735| 
        BF        L69,LO                ; |735| 
        ; branchcc occurs ; |735| 
DW$L$_Registers$77$E:
DW$L$_Registers$78$B:
        CMP       AR2,#694              ; |735| 
        BF        L240,LOS              ; |735| 
        ; branchcc occurs ; |735| 
DW$L$_Registers$78$E:
DW$L$_Registers$79$B:
        CMP       AR2,#765              ; |743| 
        BF        L238,EQ               ; |743| 
        ; branchcc occurs ; |743| 
DW$L$_Registers$79$E:
DW$L$_Registers$80$B:
        CMP       AR2,#766              ; |752| 
        BF        L237,EQ               ; |752| 
        ; branchcc occurs ; |752| 
DW$L$_Registers$80$E:
DW$L$_Registers$81$B:
        CMP       AR2,#767              ; |757| 
        BF        L236,EQ               ; |757| 
        ; branchcc occurs ; |757| 
DW$L$_Registers$81$E:
DW$L$_Registers$82$B:
        CMP       AR2,#768              ; |762| 
        BF        L69,LO                ; |762| 
        ; branchcc occurs ; |762| 
DW$L$_Registers$82$E:
DW$L$_Registers$83$B:
        CMP       AR2,#817              ; |762| 
        BF        L235,LO               ; |762| 
        ; branchcc occurs ; |762| 
DW$L$_Registers$83$E:
DW$L$_Registers$84$B:
        CMP       AR2,#817              ; |767| 
        BF        L69,LO                ; |767| 
        ; branchcc occurs ; |767| 
DW$L$_Registers$84$E:
DW$L$_Registers$85$B:
        CMP       AR2,#831              ; |767| 
        BF        L234,LO               ; |767| 
        ; branchcc occurs ; |767| 
DW$L$_Registers$85$E:
DW$L$_Registers$86$B:
        CMP       AR2,#995              ; |798| 
        BF        L232,EQ               ; |798| 
        ; branchcc occurs ; |798| 
DW$L$_Registers$86$E:
DW$L$_Registers$87$B:
        CMP       AR2,#996              ; |807| 
        BF        L230,EQ               ; |807| 
        ; branchcc occurs ; |807| 
DW$L$_Registers$87$E:
DW$L$_Registers$88$B:
        CMP       AR2,#999              ; |816| 
        BF        L228,EQ               ; |816| 
        ; branchcc occurs ; |816| 
DW$L$_Registers$88$E:
DW$L$_Registers$89$B:
        CMP       AR2,#1000             ; |827| 
        BF        L227,EQ               ; |827| 
        ; branchcc occurs ; |827| 
DW$L$_Registers$89$E:
DW$L$_Registers$90$B:
        CMP       AR2,#1003             ; |831| 
        BF        L225,EQ               ; |831| 
        ; branchcc occurs ; |831| 
DW$L$_Registers$90$E:
DW$L$_Registers$91$B:
        CMP       AR2,#1004             ; |839| 
        BF        L223,EQ               ; |839| 
        ; branchcc occurs ; |839| 
DW$L$_Registers$91$E:
DW$L$_Registers$92$B:
        CMP       AR2,#1010             ; |848| 
        BF        L221,EQ               ; |848| 
        ; branchcc occurs ; |848| 
DW$L$_Registers$92$E:
DW$L$_Registers$93$B:
        CMP       AR2,#1024             ; |857| 
        BF        L218,EQ               ; |857| 
        ; branchcc occurs ; |857| 
DW$L$_Registers$93$E:
DW$L$_Registers$94$B:
        CMP       AR2,#1025             ; |866| 
        BF        L215,EQ               ; |866| 
        ; branchcc occurs ; |866| 
DW$L$_Registers$94$E:
DW$L$_Registers$95$B:
        CMP       AR2,#1026             ; |875| 
        BF        L211,EQ               ; |875| 
        ; branchcc occurs ; |875| 
DW$L$_Registers$95$E:
DW$L$_Registers$96$B:
        CMP       AR2,#1031             ; |896| 
        BF        L210,EQ               ; |896| 
        ; branchcc occurs ; |896| 
DW$L$_Registers$96$E:
DW$L$_Registers$97$B:
        CMP       AR2,#1033             ; |905| 
        BF        L209,EQ               ; |905| 
        ; branchcc occurs ; |905| 
DW$L$_Registers$97$E:
DW$L$_Registers$98$B:
        CMP       AR2,#1035             ; |909| 
        BF        L207,EQ               ; |909| 
        ; branchcc occurs ; |909| 
DW$L$_Registers$98$E:
DW$L$_Registers$99$B:
        CMP       AR2,#1036             ; |925| 
        BF        L206,EQ               ; |925| 
        ; branchcc occurs ; |925| 
DW$L$_Registers$99$E:
DW$L$_Registers$100$B:
        CMP       AR2,#1038             ; |929| 
        BF        L205,EQ               ; |929| 
        ; branchcc occurs ; |929| 
DW$L$_Registers$100$E:
DW$L$_Registers$101$B:
        CMP       AR2,#1039             ; |933| 
        BF        L202,EQ               ; |933| 
        ; branchcc occurs ; |933| 
DW$L$_Registers$101$E:
DW$L$_Registers$102$B:
        CMP       AR2,#1040             ; |950| 
        BF        L200,EQ               ; |950| 
        ; branchcc occurs ; |950| 
DW$L$_Registers$102$E:
DW$L$_Registers$103$B:
        CMP       AR2,#1041             ; |956| 
        BF        L199,EQ               ; |956| 
        ; branchcc occurs ; |956| 
DW$L$_Registers$103$E:
DW$L$_Registers$104$B:
        CMP       AR2,#1042             ; |962| 
        BF        L197,EQ               ; |962| 
        ; branchcc occurs ; |962| 
DW$L$_Registers$104$E:
DW$L$_Registers$105$B:
        CMP       AR2,#1043             ; |967| 
        BF        L194,EQ               ; |967| 
        ; branchcc occurs ; |967| 
DW$L$_Registers$105$E:
DW$L$_Registers$106$B:
        CMP       AR2,#1044             ; |983| 
        BF        L192,EQ               ; |983| 
        ; branchcc occurs ; |983| 
DW$L$_Registers$106$E:
DW$L$_Registers$107$B:
        CMP       AR2,#1047             ; |988| 
        BF        L191,EQ               ; |988| 
        ; branchcc occurs ; |988| 
DW$L$_Registers$107$E:
DW$L$_Registers$108$B:
        CMP       AR2,#1048             ; |995| 
        BF        L190,EQ               ; |995| 
        ; branchcc occurs ; |995| 
DW$L$_Registers$108$E:
DW$L$_Registers$109$B:
        CMP       AR2,#1049             ; |999| 
        BF        L189,EQ               ; |999| 
        ; branchcc occurs ; |999| 
DW$L$_Registers$109$E:
DW$L$_Registers$110$B:
        CMP       AR2,#1061             ; |1003| 
        BF        L188,EQ               ; |1003| 
        ; branchcc occurs ; |1003| 
DW$L$_Registers$110$E:
DW$L$_Registers$111$B:
        CMP       AR2,#1062             ; |1010| 
        BF        L186,EQ               ; |1010| 
        ; branchcc occurs ; |1010| 
DW$L$_Registers$111$E:
DW$L$_Registers$112$B:
        CMP       AR2,#1063             ; |1029| 
        BF        L184,EQ               ; |1029| 
        ; branchcc occurs ; |1029| 
DW$L$_Registers$112$E:
DW$L$_Registers$113$B:
        CMP       AR2,#1064             ; |1037| 
        BF        L69,LO                ; |1037| 
        ; branchcc occurs ; |1037| 
DW$L$_Registers$113$E:
DW$L$_Registers$114$B:
        CMP       AR2,#1092             ; |1037| 
        BF        L179,LO               ; |1037| 
        ; branchcc occurs ; |1037| 
DW$L$_Registers$114$E:
DW$L$_Registers$115$B:
        CMP       AR2,#1093             ; |1127| 
        BF        L178,EQ               ; |1127| 
        ; branchcc occurs ; |1127| 
DW$L$_Registers$115$E:
DW$L$_Registers$116$B:
        CMP       AR2,#1094             ; |1135| 
        BF        L69,LO                ; |1135| 
        ; branchcc occurs ; |1135| 
DW$L$_Registers$116$E:
DW$L$_Registers$117$B:
        CMP       AR2,#1122             ; |1135| 
        BF        L177,LO               ; |1135| 
        ; branchcc occurs ; |1135| 
DW$L$_Registers$117$E:
DW$L$_Registers$118$B:
        CMP       AR2,#1122             ; |1142| 
        BF        L69,LO                ; |1142| 
        ; branchcc occurs ; |1142| 
DW$L$_Registers$118$E:
DW$L$_Registers$119$B:
        CMP       AR2,#1150             ; |1142| 
        BF        L176,LO               ; |1142| 
        ; branchcc occurs ; |1142| 
DW$L$_Registers$119$E:
DW$L$_Registers$120$B:
        CMP       AR2,#1150             ; |1151| 
        BF        L69,LO                ; |1151| 
        ; branchcc occurs ; |1151| 
DW$L$_Registers$120$E:
DW$L$_Registers$121$B:
        CMP       AR2,#1177             ; |1151| 
        BF        L175,LO               ; |1151| 
        ; branchcc occurs ; |1151| 
DW$L$_Registers$121$E:
DW$L$_Registers$122$B:
        CMP       AR2,#2000             ; |1159| 
        BF        L173,EQ               ; |1159| 
        ; branchcc occurs ; |1159| 
DW$L$_Registers$122$E:
DW$L$_Registers$123$B:
        CMP       AR2,#2001             ; |1167| 
        BF        L171,EQ               ; |1167| 
        ; branchcc occurs ; |1167| 
DW$L$_Registers$123$E:
DW$L$_Registers$124$B:
        CMP       AR2,#2002             ; |1182| 
        BF        L69,LO                ; |1182| 
        ; branchcc occurs ; |1182| 
DW$L$_Registers$124$E:
DW$L$_Registers$125$B:
        CMP       AR2,#2025             ; |1182| 
        BF        L300,LO               ; |1182| 
        ; branchcc occurs ; |1182| 
DW$L$_Registers$125$E:
DW$L$_Registers$126$B:
        CMP       AR2,#2025             ; |1183| 
        BF        L170,EQ               ; |1183| 
        ; branchcc occurs ; |1183| 
DW$L$_Registers$126$E:
DW$L$_Registers$127$B:
        CMP       AR2,#2026             ; |1190| 
        BF        L169,EQ               ; |1190| 
        ; branchcc occurs ; |1190| 
DW$L$_Registers$127$E:
DW$L$_Registers$128$B:
        CMP       AR2,#2027             ; |1197| 
        BF        L168,EQ               ; |1197| 
        ; branchcc occurs ; |1197| 
DW$L$_Registers$128$E:
DW$L$_Registers$129$B:
        CMP       AR2,#2028             ; |1204| 
        BF        L69,LO                ; |1204| 
        ; branchcc occurs ; |1204| 
DW$L$_Registers$129$E:
DW$L$_Registers$130$B:
        CMP       AR2,#2035             ; |1204| 
        BF        L165,LO               ; |1204| 
        ; branchcc occurs ; |1204| 
DW$L$_Registers$130$E:
DW$L$_Registers$131$B:
        CMP       AR2,#2060             ; |1216| 
        BF        L163,EQ               ; |1216| 
        ; branchcc occurs ; |1216| 
DW$L$_Registers$131$E:
DW$L$_Registers$132$B:
        CMP       AR2,#2061             ; |1224| 
        BF        L161,EQ               ; |1224| 
        ; branchcc occurs ; |1224| 
DW$L$_Registers$132$E:
DW$L$_Registers$133$B:
        CMP       AR2,#2063             ; |1232| 
        BF        L160,EQ               ; |1232| 
        ; branchcc occurs ; |1232| 
DW$L$_Registers$133$E:
DW$L$_Registers$134$B:
        CMP       AR2,#2071             ; |1239| 
        BF        L69,LO                ; |1239| 
        ; branchcc occurs ; |1239| 
DW$L$_Registers$134$E:
DW$L$_Registers$135$B:
        CMP       AR2,#2073             ; |1239| 
        BF        L159,LO               ; |1239| 
        ; branchcc occurs ; |1239| 
DW$L$_Registers$135$E:
DW$L$_Registers$136$B:
        CMP       AR2,#2073             ; |1243| 
        BF        L158,EQ               ; |1243| 
        ; branchcc occurs ; |1243| 
DW$L$_Registers$136$E:
DW$L$_Registers$137$B:
        CMP       AR2,#2074             ; |1247| 
        BF        L156,EQ               ; |1247| 
        ; branchcc occurs ; |1247| 
DW$L$_Registers$137$E:
DW$L$_Registers$138$B:
        CMP       AR2,#2999             ; |1253| 
        BF        L155,EQ               ; |1253| 
        ; branchcc occurs ; |1253| 
DW$L$_Registers$138$E:
DW$L$_Registers$139$B:
        CMP       AR2,#3000             ; |1263| 
        BF        L152,EQ               ; |1263| 
        ; branchcc occurs ; |1263| 
DW$L$_Registers$139$E:
DW$L$_Registers$140$B:
        CMP       AR2,#3001             ; |1275| 
        BF        L150,EQ               ; |1275| 
        ; branchcc occurs ; |1275| 
DW$L$_Registers$140$E:
DW$L$_Registers$141$B:
        CMP       AR2,#3013             ; |1281| 
        BF        L149,EQ               ; |1281| 
        ; branchcc occurs ; |1281| 
DW$L$_Registers$141$E:
DW$L$_Registers$142$B:
        CMP       AR2,#3014             ; |1285| 
        BF        L148,EQ               ; |1285| 
        ; branchcc occurs ; |1285| 
DW$L$_Registers$142$E:
DW$L$_Registers$143$B:
        CMP       AR2,#3015             ; |1289| 
        BF        L147,EQ               ; |1289| 
        ; branchcc occurs ; |1289| 
DW$L$_Registers$143$E:
DW$L$_Registers$144$B:
        CMP       AR2,#3016             ; |1293| 
        BF        L146,EQ               ; |1293| 
        ; branchcc occurs ; |1293| 
DW$L$_Registers$144$E:
DW$L$_Registers$145$B:
        CMP       AR2,#3017             ; |1297| 
        BF        L145,EQ               ; |1297| 
        ; branchcc occurs ; |1297| 
DW$L$_Registers$145$E:
DW$L$_Registers$146$B:
        CMP       AR2,#3018             ; |1301| 
        BF        L69,LO                ; |1301| 
        ; branchcc occurs ; |1301| 
DW$L$_Registers$146$E:
DW$L$_Registers$147$B:
        CMP       AR2,#3024             ; |1301| 
        BF        L144,LO               ; |1301| 
        ; branchcc occurs ; |1301| 
DW$L$_Registers$147$E:
DW$L$_Registers$148$B:
        CMP       AR2,#3024             ; |1306| 
        BF        L141,EQ               ; |1306| 
        ; branchcc occurs ; |1306| 
DW$L$_Registers$148$E:
DW$L$_Registers$149$B:
        CMP       AR2,#3025             ; |1316| 
        BF        L139,EQ               ; |1316| 
        ; branchcc occurs ; |1316| 
DW$L$_Registers$149$E:
DW$L$_Registers$150$B:
        CMP       AR2,#3026             ; |1323| 
        BF        L138,EQ               ; |1323| 
        ; branchcc occurs ; |1323| 
DW$L$_Registers$150$E:
DW$L$_Registers$151$B:
        CMP       AR2,#3027             ; |1330| 
        BF        L137,EQ               ; |1330| 
        ; branchcc occurs ; |1330| 
DW$L$_Registers$151$E:
DW$L$_Registers$152$B:
        CMP       AR2,#3028             ; |1337| 
        BF        L136,EQ               ; |1337| 
        ; branchcc occurs ; |1337| 
DW$L$_Registers$152$E:
DW$L$_Registers$153$B:
        CMP       AR2,#3029             ; |1344| 
        BF        L135,EQ               ; |1344| 
        ; branchcc occurs ; |1344| 
DW$L$_Registers$153$E:
DW$L$_Registers$154$B:
        CMP       AR2,#3030             ; |1351| 
        BF        L134,EQ               ; |1351| 
        ; branchcc occurs ; |1351| 
DW$L$_Registers$154$E:
DW$L$_Registers$155$B:
        CMP       AR2,#4096             ; |1359| 
        BF        L132,EQ               ; |1359| 
        ; branchcc occurs ; |1359| 
DW$L$_Registers$155$E:
DW$L$_Registers$156$B:
        CMP       AR2,#4098             ; |1367| 
        BF        L69,LO                ; |1367| 
        ; branchcc occurs ; |1367| 
DW$L$_Registers$156$E:
DW$L$_Registers$157$B:
        CMP       AR2,#4154             ; |1367| 
        BF        L119,LO               ; |1367| 
        ; branchcc occurs ; |1367| 
DW$L$_Registers$157$E:
DW$L$_Registers$158$B:
        CMP       AR2,#4154             ; |1397| 
        BF        L69,LO                ; |1397| 
        ; branchcc occurs ; |1397| 
DW$L$_Registers$158$E:
DW$L$_Registers$159$B:
        CMP       AR2,#4455             ; |1397| 
        BF        L117,LO               ; |1397| 
        ; branchcc occurs ; |1397| 
DW$L$_Registers$159$E:
DW$L$_Registers$160$B:
        CMP       AR2,#4608             ; |1406| 
        BF        L69,LO                ; |1406| 
        ; branchcc occurs ; |1406| 
DW$L$_Registers$160$E:
DW$L$_Registers$161$B:
        CMP       AR2,#4615             ; |1406| 
        BF        L115,LO               ; |1406| 
        ; branchcc occurs ; |1406| 
DW$L$_Registers$161$E:
DW$L$_Registers$162$B:
        CMP       AR2,#4650             ; |1417| 
        BF        L63,LO                ; |1417| 
        ; branchcc occurs ; |1417| 
DW$L$_Registers$162$E:
DW$L$_Registers$163$B:
        CMP       AR2,#4677             ; |1417| 
        BF        L38,HI                ; |1417| 
        ; branchcc occurs ; |1417| 
DW$L$_Registers$163$E:
DW$L$_Registers$164$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1417| 
        BF        L114,EQ               ; |1417| 
        ; branchcc occurs ; |1417| 
DW$L$_Registers$164$E:
L38:    
DW$L$_Registers$165$B:
        CMP       AR2,#4678             ; |1418| 
        BF        L63,LO                ; |1418| 
        ; branchcc occurs ; |1418| 
DW$L$_Registers$165$E:
DW$L$_Registers$166$B:
        CMP       AR2,#4705             ; |1418| 
        BF        L39,HI                ; |1418| 
        ; branchcc occurs ; |1418| 
DW$L$_Registers$166$E:
DW$L$_Registers$167$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1418| 
        BF        L107,EQ               ; |1418| 
        ; branchcc occurs ; |1418| 
DW$L$_Registers$167$E:
L39:    
DW$L$_Registers$168$B:
        CMP       AR2,#4706             ; |1419| 
        BF        L63,LO                ; |1419| 
        ; branchcc occurs ; |1419| 
DW$L$_Registers$168$E:
DW$L$_Registers$169$B:
        CMP       AR2,#4733             ; |1419| 
        BF        L40,HI                ; |1419| 
        ; branchcc occurs ; |1419| 
DW$L$_Registers$169$E:
DW$L$_Registers$170$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1419| 
        BF        L106,EQ               ; |1419| 
        ; branchcc occurs ; |1419| 
DW$L$_Registers$170$E:
L40:    
DW$L$_Registers$171$B:
        CMP       AR2,#4734             ; |1420| 
        BF        L63,LO                ; |1420| 
        ; branchcc occurs ; |1420| 
DW$L$_Registers$171$E:
DW$L$_Registers$172$B:
        CMP       AR2,#4747             ; |1420| 
        BF        L41,HI                ; |1420| 
        ; branchcc occurs ; |1420| 
DW$L$_Registers$172$E:
DW$L$_Registers$173$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1420| 
        BF        L104,EQ               ; |1420| 
        ; branchcc occurs ; |1420| 
DW$L$_Registers$173$E:
L41:    
DW$L$_Registers$174$B:
        CMP       AR2,#4748             ; |1421| 
        BF        L63,LO                ; |1421| 
        ; branchcc occurs ; |1421| 
DW$L$_Registers$174$E:
DW$L$_Registers$175$B:
        CMP       AR2,#4761             ; |1421| 
        BF        L42,HI                ; |1421| 
        ; branchcc occurs ; |1421| 
DW$L$_Registers$175$E:
DW$L$_Registers$176$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1421| 
        BF        L103,EQ               ; |1421| 
        ; branchcc occurs ; |1421| 
DW$L$_Registers$176$E:
L42:    
DW$L$_Registers$177$B:
        CMP       AR2,#4762             ; |1422| 
        BF        L43,NEQ               ; |1422| 
        ; branchcc occurs ; |1422| 
DW$L$_Registers$177$E:
DW$L$_Registers$178$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1422| 
        BF        L102,EQ               ; |1422| 
        ; branchcc occurs ; |1422| 
DW$L$_Registers$178$E:
L43:    
DW$L$_Registers$179$B:
        CMP       AR2,#4763             ; |1423| 
        BF        L44,NEQ               ; |1423| 
        ; branchcc occurs ; |1423| 
DW$L$_Registers$179$E:
DW$L$_Registers$180$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1423| 
        BF        L101,EQ               ; |1423| 
        ; branchcc occurs ; |1423| 
DW$L$_Registers$180$E:
L44:    
DW$L$_Registers$181$B:
        CMP       AR2,#4764             ; |1424| 
        BF        L45,NEQ               ; |1424| 
        ; branchcc occurs ; |1424| 
DW$L$_Registers$181$E:
DW$L$_Registers$182$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1424| 
        BF        L100,EQ               ; |1424| 
        ; branchcc occurs ; |1424| 
DW$L$_Registers$182$E:
L45:    
DW$L$_Registers$183$B:
        CMP       AR2,#4765             ; |1425| 
        BF        L46,NEQ               ; |1425| 
        ; branchcc occurs ; |1425| 
DW$L$_Registers$183$E:
DW$L$_Registers$184$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1425| 
        BF        L99,EQ                ; |1425| 
        ; branchcc occurs ; |1425| 
DW$L$_Registers$184$E:
L46:    
DW$L$_Registers$185$B:
        CMP       AR2,#4766             ; |1426| 
        BF        L47,NEQ               ; |1426| 
        ; branchcc occurs ; |1426| 
DW$L$_Registers$185$E:
DW$L$_Registers$186$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1426| 
        BF        L98,EQ                ; |1426| 
        ; branchcc occurs ; |1426| 
DW$L$_Registers$186$E:
L47:    
DW$L$_Registers$187$B:
        CMP       AR2,#4767             ; |1427| 
        BF        L48,NEQ               ; |1427| 
        ; branchcc occurs ; |1427| 
DW$L$_Registers$187$E:
DW$L$_Registers$188$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1427| 
        BF        L97,EQ                ; |1427| 
        ; branchcc occurs ; |1427| 
DW$L$_Registers$188$E:
L48:    
DW$L$_Registers$189$B:
        CMP       AR2,#4768             ; |1428| 
        BF        L49,NEQ               ; |1428| 
        ; branchcc occurs ; |1428| 
DW$L$_Registers$189$E:
DW$L$_Registers$190$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1428| 
        BF        L96,EQ                ; |1428| 
        ; branchcc occurs ; |1428| 
DW$L$_Registers$190$E:
L49:    
DW$L$_Registers$191$B:
        CMP       AR2,#4769             ; |1429| 
        BF        L50,NEQ               ; |1429| 
        ; branchcc occurs ; |1429| 
DW$L$_Registers$191$E:
DW$L$_Registers$192$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1429| 
        BF        L95,EQ                ; |1429| 
        ; branchcc occurs ; |1429| 
DW$L$_Registers$192$E:
L50:    
DW$L$_Registers$193$B:
        CMP       AR2,#4770             ; |1430| 
        BF        L51,NEQ               ; |1430| 
        ; branchcc occurs ; |1430| 
DW$L$_Registers$193$E:
DW$L$_Registers$194$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1430| 
        BF        L94,EQ                ; |1430| 
        ; branchcc occurs ; |1430| 
DW$L$_Registers$194$E:
L51:    
DW$L$_Registers$195$B:
        CMP       AR2,#4771             ; |1431| 
        BF        L52,NEQ               ; |1431| 
        ; branchcc occurs ; |1431| 
DW$L$_Registers$195$E:
DW$L$_Registers$196$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1431| 
        BF        L93,EQ                ; |1431| 
        ; branchcc occurs ; |1431| 
DW$L$_Registers$196$E:
L52:    
DW$L$_Registers$197$B:
        CMP       AR2,#4772             ; |1432| 
        BF        L53,NEQ               ; |1432| 
        ; branchcc occurs ; |1432| 
DW$L$_Registers$197$E:
DW$L$_Registers$198$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1432| 
        BF        L92,EQ                ; |1432| 
        ; branchcc occurs ; |1432| 
DW$L$_Registers$198$E:
L53:    
DW$L$_Registers$199$B:
        CMP       AR2,#4773             ; |1433| 
        BF        L54,NEQ               ; |1433| 
        ; branchcc occurs ; |1433| 
DW$L$_Registers$199$E:
DW$L$_Registers$200$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1433| 
        BF        L91,EQ                ; |1433| 
        ; branchcc occurs ; |1433| 
DW$L$_Registers$200$E:
L54:    
DW$L$_Registers$201$B:
        CMP       AR2,#4774             ; |1434| 
        BF        L55,NEQ               ; |1434| 
        ; branchcc occurs ; |1434| 
DW$L$_Registers$201$E:
DW$L$_Registers$202$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1434| 
        BF        L90,EQ                ; |1434| 
        ; branchcc occurs ; |1434| 
DW$L$_Registers$202$E:
L55:    
DW$L$_Registers$203$B:
        CMP       AR2,#4775             ; |1435| 
        BF        L56,NEQ               ; |1435| 
        ; branchcc occurs ; |1435| 
DW$L$_Registers$203$E:
DW$L$_Registers$204$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1435| 
        BF        L89,EQ                ; |1435| 
        ; branchcc occurs ; |1435| 
DW$L$_Registers$204$E:
L56:    
DW$L$_Registers$205$B:
        CMP       AR2,#4776             ; |1436| 
        BF        L57,NEQ               ; |1436| 
        ; branchcc occurs ; |1436| 
DW$L$_Registers$205$E:
DW$L$_Registers$206$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1436| 
        BF        L88,EQ                ; |1436| 
        ; branchcc occurs ; |1436| 
DW$L$_Registers$206$E:
L57:    
DW$L$_Registers$207$B:
        CMP       AR2,#4777             ; |1437| 
        BF        L58,NEQ               ; |1437| 
        ; branchcc occurs ; |1437| 
DW$L$_Registers$207$E:
DW$L$_Registers$208$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1437| 
        BF        L87,EQ                ; |1437| 
        ; branchcc occurs ; |1437| 
DW$L$_Registers$208$E:
L58:    
DW$L$_Registers$209$B:
        CMP       AR2,#4778             ; |1438| 
        BF        L59,NEQ               ; |1438| 
        ; branchcc occurs ; |1438| 
DW$L$_Registers$209$E:
DW$L$_Registers$210$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1438| 
        BF        L86,EQ                ; |1438| 
        ; branchcc occurs ; |1438| 
DW$L$_Registers$210$E:
L59:    
DW$L$_Registers$211$B:
        CMP       AR2,#4779             ; |1439| 
        BF        L60,NEQ               ; |1439| 
        ; branchcc occurs ; |1439| 
DW$L$_Registers$211$E:
DW$L$_Registers$212$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1439| 
        BF        L85,EQ                ; |1439| 
        ; branchcc occurs ; |1439| 
DW$L$_Registers$212$E:
L60:    
DW$L$_Registers$213$B:
        CMP       AR2,#4780             ; |1440| 
        BF        L61,NEQ               ; |1440| 
        ; branchcc occurs ; |1440| 
DW$L$_Registers$213$E:
DW$L$_Registers$214$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1440| 
        BF        L84,EQ                ; |1440| 
        ; branchcc occurs ; |1440| 
DW$L$_Registers$214$E:
L61:    
DW$L$_Registers$215$B:
        CMP       AR2,#4781             ; |1441| 
        BF        L62,NEQ               ; |1441| 
        ; branchcc occurs ; |1441| 
DW$L$_Registers$215$E:
DW$L$_Registers$216$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1441| 
        BF        L83,EQ                ; |1441| 
        ; branchcc occurs ; |1441| 
DW$L$_Registers$216$E:
L62:    
DW$L$_Registers$217$B:
        CMP       AR2,#4782             ; |1444| 
        BF        L63,LO                ; |1444| 
        ; branchcc occurs ; |1444| 
DW$L$_Registers$217$E:
DW$L$_Registers$218$B:
        CMP       AR2,#4783             ; |1444| 
        BF        L81,LOS               ; |1444| 
        ; branchcc occurs ; |1444| 
DW$L$_Registers$218$E:
DW$L$_Registers$219$B:
        CMP       AR2,#8192             ; |1458| 
        BF        L67,HIS               ; |1458| 
        ; branchcc occurs ; |1458| 
DW$L$_Registers$219$E:
L63:    
DW$L$_Registers$220$B:
        CMP       AR2,#4638             ; |1462| 
        BF        L64,NEQ               ; |1462| 
        ; branchcc occurs ; |1462| 
DW$L$_Registers$220$E:
DW$L$_Registers$221$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1462| 
        BF        L65,EQ                ; |1462| 
        ; branchcc occurs ; |1462| 
DW$L$_Registers$221$E:
L64:    
DW$L$_Registers$222$B:
        CMP       AR2,#4639             ; |1463| 
        BF        L68,NEQ               ; |1463| 
        ; branchcc occurs ; |1463| 
DW$L$_Registers$222$E:
DW$L$_Registers$223$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1463| 
        BF        L68,NEQ               ; |1463| 
        ; branchcc occurs ; |1463| 
DW$L$_Registers$223$E:
DW$L$_Registers$224$B:
        MOV       AH,#17096
        MOV       AL,#0
        MOVW      DP,#_loadlevel+4
        MOVL      *-SP[2],ACC           ; |1463| 
        MOVL      ACC,@_loadlevel+4     ; |1463| 
        BF        L66,UNC               ; |1463| 
        ; branch occurs ; |1463| 
DW$L$_Registers$224$E:
L65:    
DW$L$_Registers$225$B:
        MOV       AH,#17530
        MOV       AL,#0
        MOVW      DP,#_loadlevel+2
        MOVL      *-SP[2],ACC           ; |1462| 
        MOVL      ACC,@_loadlevel+2     ; |1462| 
DW$L$_Registers$225$E:
L66:    
DW$L$_Registers$226$B:
        LCR       #FS$$MPY              ; |1462| 
        ; call occurs [#FS$$MPY] ; |1462| 
        LCR       #FS$$TOU              ; |1462| 
        ; call occurs [#FS$$TOU] ; |1462| 
        BF        L112,UNC              ; |1462| 
        ; branch occurs ; |1462| 
DW$L$_Registers$226$E:
L67:    
DW$L$_Registers$227$B:
        CMP       AR2,#8339             ; |1458| 
        BF        L80,LO                ; |1458| 
        ; branchcc occurs ; |1458| 
DW$L$_Registers$227$E:
L68:    
DW$L$_Registers$228$B:
        CMP       AR2,#8400             ; |1466| 
        BF        L69,LO                ; |1466| 
        ; branchcc occurs ; |1466| 
DW$L$_Registers$228$E:
DW$L$_Registers$229$B:
        CMP       AR2,#8535             ; |1466| 
        BF        L79,LOS               ; |1466| 
        ; branchcc occurs ; |1466| 
DW$L$_Registers$229$E:
DW$L$_Registers$230$B:
        CMP       AR2,#65514            ; |1509| 
        BF        L73,EQ                ; |1509| 
        ; branchcc occurs ; |1509| 
DW$L$_Registers$230$E:
DW$L$_Registers$231$B:
        CMP       AR2,#65533            ; |1535| 
        BF        L72,EQ                ; |1535| 
        ; branchcc occurs ; |1535| 
DW$L$_Registers$231$E:
DW$L$_Registers$232$B:
        CMP       AR2,#65534            ; |1542| 
        BF        L71,EQ                ; |1542| 
        ; branchcc occurs ; |1542| 
DW$L$_Registers$232$E:
DW$L$_Registers$233$B:
        CMP       AR2,#65535            ; |1546| 
        BF        L70,EQ                ; |1546| 
        ; branchcc occurs ; |1546| 
DW$L$_Registers$233$E:
L69:    
DW$L$_Registers$234$B:
        MOV       AL,AR2                ; |1552| 
        MOV       AH,AR1                ; |1552| 
        LCR       #_PCModifyParameter   ; |1552| 
        ; call occurs [#_PCModifyParameter] ; |1552| 
        CMPB      AL,#0                 ; |1552| 
        BF        L247,EQ               ; |1552| 
        ; branchcc occurs ; |1552| 
DW$L$_Registers$234$E:
DW$L$_Registers$235$B:
        BF        L300,UNC              ; |1552| 
        ; branch occurs ; |1552| 
DW$L$_Registers$235$E:
L70:    
DW$L$_Registers$236$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1548| 
        BF        L300,NEQ              ; |1548| 
        ; branchcc occurs ; |1548| 
DW$L$_Registers$236$E:
DW$L$_Registers$237$B:
        MOVW      DP,#_versionreg
        MOV       AL,@_versionreg       ; |1548| 
        BF        L112,UNC              ; |1548| 
        ; branch occurs ; |1548| 
DW$L$_Registers$237$E:
L71:    
DW$L$_Registers$238$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1544| 
        BF        L300,NEQ              ; |1544| 
        ; branchcc occurs ; |1544| 
DW$L$_Registers$238$E:
DW$L$_Registers$239$B:
        LCR       #_GetSlaveVersion     ; |1544| 
        ; call occurs [#_GetSlaveVersion] ; |1544| 
        BF        L112,UNC              ; |1544| 
        ; branch occurs ; |1544| 
DW$L$_Registers$239$E:
L72:    
DW$L$_Registers$240$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |1537| 
        BF        L300,NEQ              ; |1537| 
        ; branchcc occurs ; |1537| 
DW$L$_Registers$240$E:
DW$L$_Registers$241$B:
        MOVL      XAR4,#_pcmodbus+5     ; |1537| 
        CMP       *+XAR4[AR1],#43605    ; |1537| 
        BF        L300,NEQ              ; |1537| 
        ; branchcc occurs ; |1537| 
DW$L$_Registers$241$E:
DW$L$_Registers$242$B:
        LCR       #_SPUUnitReset        ; |1539| 
        ; call occurs [#_SPUUnitReset] ; |1539| 
        BF        L300,UNC              ; |1539| 
        ; branch occurs ; |1539| 
DW$L$_Registers$242$E:
L73:    
DW$L$_Registers$243$B:
        MOVW      DP,#_clocktime+5
        MOV       AL,@_clocktime+5      ; |1511| 
        CMPB      AL,#49                ; |1511| 
        BF        L75,LOS               ; |1511| 
        ; branchcc occurs ; |1511| 
DW$L$_Registers$243$E:
DW$L$_Registers$244$B:
        MOVW      DP,#_clocktime+5
        MOV       @_clocktime+5,#1      ; |1520| 
        MOVW      DP,#_clocktime+6
        MOV       AL,@_clocktime+6      ; |1521| 
        CMPB      AL,#18                ; |1521| 
        BF        L74,LO                ; |1521| 
        ; branchcc occurs ; |1521| 
DW$L$_Registers$244$E:
DW$L$_Registers$245$B:
        MOVW      DP,#_clocktime+6
        MOV       @_clocktime+6,#1      ; |1528| 
        MOVW      DP,#_clocktime+7
        INC       @_clocktime+7         ; |1529| 
        MOVW      DP,#_clocktime+7
        MOV       AL,@_clocktime+7      ; |1530| 
        CMPB      AL,#10                ; |1530| 
        BF        L78,NEQ               ; |1530| 
        ; branchcc occurs ; |1530| 
DW$L$_Registers$245$E:
DW$L$_Registers$246$B:
        MOVW      DP,#_clocktime+7
        MOV       @_clocktime+7,#16     ; |1530| 
        BF        L78,UNC               ; |1530| 
        ; branch occurs ; |1530| 
DW$L$_Registers$246$E:
L74:    
DW$L$_Registers$247$B:
        MOVW      DP,#_clocktime+6
        INC       @_clocktime+6         ; |1523| 
        MOVW      DP,#_clocktime+6
        MOV       AL,@_clocktime+6      ; |1524| 
        CMPB      AL,#10                ; |1524| 
        BF        L78,NEQ               ; |1524| 
        ; branchcc occurs ; |1524| 
DW$L$_Registers$247$E:
DW$L$_Registers$248$B:
        MOVW      DP,#_clocktime+6
        MOV       @_clocktime+6,#16     ; |1524| 
        BF        L78,UNC               ; |1524| 
        ; branch occurs ; |1524| 
DW$L$_Registers$248$E:
L75:    
DW$L$_Registers$249$B:
        MOVW      DP,#_clocktime+5
        INC       @_clocktime+5         ; |1513| 
        MOVW      DP,#_clocktime+5
        MOV       AL,@_clocktime+5      ; |1514| 
        CMPB      AL,#10                ; |1514| 
        BF        L76,NEQ               ; |1514| 
        ; branchcc occurs ; |1514| 
DW$L$_Registers$249$E:
DW$L$_Registers$250$B:
        MOVB      AL,#16                ; |1514| 
        MOVW      DP,#_clocktime+5
        MOV       @_clocktime+5,AL      ; |1514| 
DW$L$_Registers$250$E:
L76:    
DW$L$_Registers$251$B:
        CMPB      AL,#26                ; |1515| 
        BF        L77,NEQ               ; |1515| 
        ; branchcc occurs ; |1515| 
DW$L$_Registers$251$E:
DW$L$_Registers$252$B:
        MOVB      AL,#32                ; |1515| 
        MOVW      DP,#_clocktime+5
        MOV       @_clocktime+5,AL      ; |1515| 
DW$L$_Registers$252$E:
L77:    
DW$L$_Registers$253$B:
        CMPB      AL,#42                ; |1516| 
        BF        L78,NEQ               ; |1516| 
        ; branchcc occurs ; |1516| 
DW$L$_Registers$253$E:
DW$L$_Registers$254$B:
        MOVW      DP,#_clocktime+5
        MOV       @_clocktime+5,#48     ; |1516| 
DW$L$_Registers$254$E:
L78:    
DW$L$_Registers$255$B:
        LCR       #_WriteClockData      ; |1533| 
        ; call occurs [#_WriteClockData] ; |1533| 
        BF        L300,UNC              ; |1534| 
        ; branch occurs ; |1534| 
DW$L$_Registers$255$E:
L79:    
DW$L$_Registers$256$B:
        MOVL      XAR4,#_pcmodbus+5     ; |1468| 
        MOVW      DP,#_pcmodbus+1
        MOVL      ACC,XAR4              ; |1468| 
        ADDU      ACC,AR1               ; |1468| 
        MOVZ      AR5,@_pcmodbus+1      ; |1468| 
        MOVL      XAR4,ACC              ; |1468| 
        MOV       AL,AR2                ; |1468| 
        MOV       AH,AR1                ; |1468| 
        LCR       #_ProcessReprogrammingTransferral ; |1468| 
        ; call occurs [#_ProcessReprogrammingTransferral] ; |1468| 
        BF        L300,UNC              ; |1469| 
        ; branch occurs ; |1469| 
DW$L$_Registers$256$E:
L80:    
DW$L$_Registers$257$B:
        MOV       AL,AR2                ; |1460| 
        MOV       AH,AR1                ; |1460| 
        LCR       #_ProcessFileTransferral ; |1460| 
        ; call occurs [#_ProcessFileTransferral] ; |1460| 
        BF        L300,UNC              ; |1461| 
        ; branch occurs ; |1461| 
DW$L$_Registers$257$E:
L81:    
DW$L$_Registers$258$B:
        CMP       AR2,#4782             ; |1446| 
        BF        L82,NEQ               ; |1446| 
        ; branchcc occurs ; |1446| 
DW$L$_Registers$258$E:
DW$L$_Registers$259$B:
        MOVW      DP,#_dynalarmlevels+34
        MOVL      XAR4,#_pcmodbus+5     ; |1450| 
        MOVL      ACC,@_dynalarmlevels+34 ; |1448| 
        MOVH      *+XAR4[AR1],ACC << 0  ; |1450| 
DW$L$_Registers$259$E:
L82:    
DW$L$_Registers$260$B:
        CMP       AR2,#4783             ; |1452| 
        BF        L84,EQ                ; |1452| 
        ; branchcc occurs ; |1452| 
DW$L$_Registers$260$E:
DW$L$_Registers$261$B:
        BF        L300,UNC              ; |1452| 
        ; branch occurs ; |1452| 
DW$L$_Registers$261$E:
L83:    
DW$L$_Registers$262$B:
        MOVW      DP,#_damalarms+1
        MOV       AL,@_damalarms+1      ; |1441| 
        BF        L112,UNC              ; |1441| 
        ; branch occurs ; |1441| 
DW$L$_Registers$262$E:
L84:    
DW$L$_Registers$263$B:
        MOVW      DP,#_dynalarmlevels+34
        MOV       AL,@_dynalarmlevels+34 ; |1440| 
        BF        L112,UNC              ; |1440| 
        ; branch occurs ; |1440| 
DW$L$_Registers$263$E:
L85:    
DW$L$_Registers$264$B:
        MOVW      DP,#_dynalarmlevels+32
        MOV       AL,@_dynalarmlevels+32 ; |1439| 
        BF        L112,UNC              ; |1439| 
        ; branch occurs ; |1439| 
DW$L$_Registers$264$E:
L86:    
DW$L$_Registers$265$B:
        MOVW      DP,#_dynalarmlevels+31
        MOV       AL,@_dynalarmlevels+31 ; |1438| 
        BF        L112,UNC              ; |1438| 
        ; branch occurs ; |1438| 
DW$L$_Registers$265$E:
L87:    
DW$L$_Registers$266$B:
        MOVW      DP,#_dynalarmlevels+30
        MOV       AL,@_dynalarmlevels+30 ; |1437| 
        BF        L112,UNC              ; |1437| 
        ; branch occurs ; |1437| 
DW$L$_Registers$266$E:
L88:    
DW$L$_Registers$267$B:
        MOVW      DP,#_dynalarmlevels+29
        MOV       AL,@_dynalarmlevels+29 ; |1436| 
        BF        L112,UNC              ; |1436| 
        ; branch occurs ; |1436| 
DW$L$_Registers$267$E:
L89:    
DW$L$_Registers$268$B:
        MOVW      DP,#_dynalarmlevels+28
        MOV       AL,@_dynalarmlevels+28 ; |1435| 
        BF        L112,UNC              ; |1435| 
        ; branch occurs ; |1435| 
DW$L$_Registers$268$E:
L90:    
DW$L$_Registers$269$B:
        MOVW      DP,#_dynalarmlevels+27
        MOV       AL,@_dynalarmlevels+27 ; |1434| 
        BF        L112,UNC              ; |1434| 
        ; branch occurs ; |1434| 
DW$L$_Registers$269$E:
L91:    
DW$L$_Registers$270$B:
        MOVW      DP,#_dynalarmlevels+26
        MOV       AL,@_dynalarmlevels+26 ; |1433| 
        BF        L112,UNC              ; |1433| 
        ; branch occurs ; |1433| 
DW$L$_Registers$270$E:
L92:    
DW$L$_Registers$271$B:
        MOVW      DP,#_dynalarmlevels+25
        MOV       AL,@_dynalarmlevels+25 ; |1432| 
        BF        L112,UNC              ; |1432| 
        ; branch occurs ; |1432| 
DW$L$_Registers$271$E:
L93:    
DW$L$_Registers$272$B:
        MOVW      DP,#_dynalarmlevels+24
        MOV       AL,@_dynalarmlevels+24 ; |1431| 
        BF        L112,UNC              ; |1431| 
        ; branch occurs ; |1431| 
DW$L$_Registers$272$E:
L94:    
DW$L$_Registers$273$B:
        MOVW      DP,#_dynalarmlevels+23
        MOV       AL,@_dynalarmlevels+23 ; |1430| 
        BF        L112,UNC              ; |1430| 
        ; branch occurs ; |1430| 
DW$L$_Registers$273$E:
L95:    
DW$L$_Registers$274$B:
        MOVW      DP,#_dynalarmlevels+22
        MOV       AL,@_dynalarmlevels+22 ; |1429| 
        BF        L112,UNC              ; |1429| 
        ; branch occurs ; |1429| 
DW$L$_Registers$274$E:
L96:    
DW$L$_Registers$275$B:
        MOVW      DP,#_dynalarmlevels+21
        MOV       AL,@_dynalarmlevels+21 ; |1428| 
        BF        L112,UNC              ; |1428| 
        ; branch occurs ; |1428| 
DW$L$_Registers$275$E:
L97:    
DW$L$_Registers$276$B:
        MOVW      DP,#_dynalarmlevels+20
        MOV       AL,@_dynalarmlevels+20 ; |1427| 
        BF        L112,UNC              ; |1427| 
        ; branch occurs ; |1427| 
DW$L$_Registers$276$E:
L98:    
DW$L$_Registers$277$B:
        MOVW      DP,#_dynalarmlevels+19
        MOV       AL,@_dynalarmlevels+19 ; |1426| 
        BF        L112,UNC              ; |1426| 
        ; branch occurs ; |1426| 
DW$L$_Registers$277$E:
L99:    
DW$L$_Registers$278$B:
        MOVW      DP,#_dynalarmlevels+18
        MOV       AL,@_dynalarmlevels+18 ; |1425| 
        BF        L112,UNC              ; |1425| 
        ; branch occurs ; |1425| 
DW$L$_Registers$278$E:
L100:    
DW$L$_Registers$279$B:
        MOVW      DP,#_damalarms+3
        MOV       AL,@_damalarms+3      ; |1424| 
        BF        L112,UNC              ; |1424| 
        ; branch occurs ; |1424| 
DW$L$_Registers$279$E:
L101:    
DW$L$_Registers$280$B:
        MOVW      DP,#_damalarms+2
        MOV       AL,@_damalarms+2      ; |1423| 
        BF        L112,UNC              ; |1423| 
        ; branch occurs ; |1423| 
DW$L$_Registers$280$E:
L102:    
DW$L$_Registers$281$B:
        MOVW      DP,#_damalarms
        MOV       AL,@_damalarms        ; |1422| 
        BF        L112,UNC              ; |1422| 
        ; branch occurs ; |1422| 
DW$L$_Registers$281$E:
L103:    
DW$L$_Registers$282$B:
        MOV       AL,AR2                ; |1421| 
        MOVL      XAR4,#_manrefsum+1    ; |1421| 
        SUB       AL,#4748              ; |1421| 
        BF        L105,UNC              ; |1421| 
        ; branch occurs ; |1421| 
DW$L$_Registers$282$E:
L104:    
DW$L$_Registers$283$B:
        MOV       AL,AR2                ; |1420| 
        MOVL      XAR4,#_manrefsum      ; |1420| 
        SUB       AL,#4734              ; |1420| 
DW$L$_Registers$283$E:
L105:    
DW$L$_Registers$284$B:
        MOVU      ACC,AL
        LSL       ACC,1                 ; |1420| 
        BF        L110,UNC              ; |1420| 
        ; branch occurs ; |1420| 
DW$L$_Registers$284$E:
L106:    
DW$L$_Registers$285$B:
        MOV       AH,AR2                ; |1419| 
        MOVL      XAR4,#_manref+8       ; |1419| 
        SUB       AH,#4706              ; |1419| 
        BF        L108,UNC              ; |1419| 
        ; branch occurs ; |1419| 
DW$L$_Registers$285$E:
L107:    
DW$L$_Registers$286$B:
        MOV       AH,AR2                ; |1418| 
        SUB       AH,#4678              ; |1418| 
        MOVL      XAR4,#_manref+7       ; |1418| 
DW$L$_Registers$286$E:
L108:    
DW$L$_Registers$287$B:
        MOV       T,#10                 ; |1418| 
DW$L$_Registers$287$E:
L109:    
DW$L$_Registers$288$B:
        MPYXU     ACC,T,AH              ; |1418| 
DW$L$_Registers$288$E:
L110:    
DW$L$_Registers$289$B:
        ADDL      XAR4,ACC
DW$L$_Registers$289$E:
L111:    
DW$L$_Registers$290$B:
        MOV       AL,*+XAR4[0]          ; |1418| 
DW$L$_Registers$290$E:
L112:    
DW$L$_Registers$291$B:
        MOVL      XAR4,#_pcmodbus+5     ; |1418| 
DW$L$_Registers$291$E:
L113:    
DW$L$_Registers$292$B:
        MOV       *+XAR4[AR1],AL        ; |1418| 
        BF        L300,UNC              ; |1418| 
        ; branch occurs ; |1418| 
DW$L$_Registers$292$E:
L114:    
DW$L$_Registers$293$B:
        MOV       AH,AR2                ; |1417| 
        MOVL      XAR4,#_manref+6       ; |1417| 
        SUB       AH,#4650              ; |1417| 
        BF        L108,UNC              ; |1417| 
        ; branch occurs ; |1417| 
DW$L$_Registers$293$E:
L115:    
DW$L$_Registers$294$B:
        MOV       AL,*-SP[37]           ; |1408| 
        MOVL      XAR4,#_function       ; |1408| 
        CMPB      AL,#16                ; |1409| 
        BF        L116,EQ               ; |1409| 
        ; branchcc occurs ; |1409| 
DW$L$_Registers$294$E:
DW$L$_Registers$295$B:
        MOVZ      AR0,AR2               ; |1414| 
        SUB       AR0,#4608             ; |1414| 
        BF        L278,UNC              ; |1414| 
        ; branch occurs ; |1414| 
DW$L$_Registers$295$E:
L116:    
DW$L$_Registers$296$B:
        MOVZ      AR0,AR2               ; |1411| 
        MOVL      XAR5,#_pcmodbus+5     ; |1411| 
        MOV       AL,*+XAR5[AR1]        ; |1411| 
        SUB       AR0,#4608             ; |1411| 
        MOVW      DP,#_function+2
        MOV       *+XAR4[AR0],AL        ; |1411| 
        MOV       AL,@_function+2       ; |1412| 
        LCR       #_EnableNoiseFilter   ; |1412| 
        ; call occurs [#_EnableNoiseFilter] ; |1412| 
        BF        L300,UNC              ; |1413| 
        ; branch occurs ; |1413| 
DW$L$_Registers$296$E:
L117:    
DW$L$_Registers$297$B:
        MOVB      AL,#0
        LCR       #_ReadNumPoints       ; |1400| 
        ; call occurs [#_ReadNumPoints] ; |1400| 
        AND       AL,AR2,#0x0001        ; |1402| 
        BF        L118,EQ               ; |1402| 
        ; branchcc occurs ; |1402| 
DW$L$_Registers$297$E:
DW$L$_Registers$298$B:
        MOVZ      AR6,AR2               ; |1402| 
        SUB       AR6,#4155             ; |1402| 
        BF        L129,UNC              ; |1402| 
        ; branch occurs ; |1402| 
DW$L$_Registers$298$E:
L118:    
DW$L$_Registers$299$B:
        MOVZ      AR6,AR2               ; |1402| 
        SUB       AR6,#4153             ; |1402| 
        BF        L129,UNC              ; |1403| 
        ; branch occurs ; |1403| 
DW$L$_Registers$299$E:
L119:    
DW$L$_Registers$300$B:
        MOVW      DP,#_settings+4
        MOVB      XAR4,#0
        MOV       AL,@_settings+4       ; |1369| 
        BF        L120,EQ               ; |1369| 
        ; branchcc occurs ; |1369| 
DW$L$_Registers$300$E:
DW$L$_Registers$301$B:
        MOVB      XAR4,#1               ; |1369| 
DW$L$_Registers$301$E:
L120:    
DW$L$_Registers$302$B:
        MOVB      AH,#0
        CMPB      AL,#151               ; |1369| 
        BF        L121,HIS              ; |1369| 
        ; branchcc occurs ; |1369| 
DW$L$_Registers$302$E:
DW$L$_Registers$303$B:
        MOVB      AH,#1                 ; |1369| 
DW$L$_Registers$303$E:
L121:    
DW$L$_Registers$304$B:
        AND       AH,AR4                ; |1369| 
        BF        L125,EQ               ; |1369| 
        ; branchcc occurs ; |1369| 
DW$L$_Registers$304$E:
DW$L$_Registers$305$B:
        MOV       AH,*-SP[37]
        CMPB      AH,#16                ; |1374| 
        BF        L124,EQ               ; |1374| 
        ; branchcc occurs ; |1374| 
DW$L$_Registers$305$E:
DW$L$_Registers$306$B:
        ADDB      AL,#-1
        LCR       #_ReadAccCalNVMEM     ; |1378| 
        ; call occurs [#_ReadAccCalNVMEM] ; |1378| 
        MOVB      ACC,#0
        LCR       #_ReadAccAverageVal   ; |1379| 
        ; call occurs [#_ReadAccAverageVal] ; |1379| 
        AND       AL,AR2,#0x0001        ; |1381| 
        BF        L122,EQ               ; |1381| 
        ; branchcc occurs ; |1381| 
DW$L$_Registers$306$E:
DW$L$_Registers$307$B:
        MOVZ      AR6,AR2               ; |1381| 
        SUB       AR6,#4099             ; |1381| 
        BF        L123,UNC              ; |1381| 
        ; branch occurs ; |1381| 
DW$L$_Registers$307$E:
L122:    
DW$L$_Registers$308$B:
        MOVZ      AR6,AR2               ; |1381| 
        SUB       AR6,#4097             ; |1381| 
DW$L$_Registers$308$E:
L123:    
DW$L$_Registers$309$B:
        MOVL      ACC,XAR4              ; |1381| 
        ADDU      ACC,AR6               ; |1381| 
        MOVL      XAR3,ACC              ; |1381| 
DW$L$_Registers$309$E:
L124:    
DW$L$_Registers$310$B:
        MOVL      XAR4,XAR3             ; |1384| 
        MOVB      AL,#1                 ; |405| 
        MOV       AH,AR1                ; |1384| 
        LCR       #_ProcessRegister     ; |1384| 
        ; call occurs [#_ProcessRegister] ; |1384| 
DW$L$_Registers$310$E:
L125:    
DW$L$_Registers$311$B:
        MOVW      DP,#_settings+4
        MOV       AH,@_settings+4       ; |1387| 
        MOVB      XAR4,#0
        CMPB      AH,#151               ; |1387| 
        BF        L126,LO               ; |1387| 
        ; branchcc occurs ; |1387| 
DW$L$_Registers$311$E:
DW$L$_Registers$312$B:
        MOVB      XAR4,#1               ; |1387| 
DW$L$_Registers$312$E:
L126:    
DW$L$_Registers$313$B:
        MOVB      AL,#0
        CMPB      AH,#154               ; |1387| 
        BF        L127,HIS              ; |1387| 
        ; branchcc occurs ; |1387| 
DW$L$_Registers$313$E:
DW$L$_Registers$314$B:
        MOVB      AL,#1                 ; |1387| 
DW$L$_Registers$314$E:
L127:    
DW$L$_Registers$315$B:
        AND       AL,AR4                ; |1387| 
        BF        L300,EQ               ; |1387| 
        ; branchcc occurs ; |1387| 
DW$L$_Registers$315$E:
DW$L$_Registers$316$B:
        MOVB      AL,#151               ; |1389| 
        SUB       AH,AL                 ; |1389| 
        MOVB      AL,#0
        LCR       #_ReadAverageSpeedAcc ; |1389| 
        ; call occurs [#_ReadAverageSpeedAcc] ; |1389| 
        AND       AL,AR2,#0x0001        ; |1391| 
        BF        L128,EQ               ; |1391| 
        ; branchcc occurs ; |1391| 
DW$L$_Registers$316$E:
DW$L$_Registers$317$B:
        MOVZ      AR6,AR2               ; |1391| 
        SUB       AR6,#4099             ; |1391| 
        BF        L129,UNC              ; |1391| 
        ; branch occurs ; |1391| 
DW$L$_Registers$317$E:
L128:    
DW$L$_Registers$318$B:
        MOVZ      AR6,AR2               ; |1391| 
        SUB       AR6,#4097             ; |1391| 
DW$L$_Registers$318$E:
L129:    
DW$L$_Registers$319$B:
        MOVL      ACC,XAR4              ; |1391| 
        ADDU      ACC,AR6               ; |1391| 
        MOVL      XAR3,ACC              ; |1391| 
DW$L$_Registers$319$E:
L130:    
DW$L$_Registers$320$B:
        MOVL      XAR4,XAR3             ; |1393| 
DW$L$_Registers$320$E:
L131:    
DW$L$_Registers$321$B:
        MOVB      AL,#1                 ; |405| 
        MOV       AH,AR1                ; |1393| 
        LCR       #_ProcessRegister     ; |1393| 
        ; call occurs [#_ProcessRegister] ; |1393| 
        BF        L300,UNC              ; |1393| 
        ; branch occurs ; |1393| 
DW$L$_Registers$321$E:
L132:    
DW$L$_Registers$322$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |1361| 
        BF        L133,EQ               ; |1361| 
        ; branchcc occurs ; |1361| 
DW$L$_Registers$322$E:
DW$L$_Registers$323$B:
        MOVW      DP,#_settings+4
        MOV       AL,@_settings+4       ; |1365| 
        BF        L112,UNC              ; |1365| 
        ; branch occurs ; |1365| 
DW$L$_Registers$323$E:
L133:    
DW$L$_Registers$324$B:
        MOVL      XAR4,#_pcmodbus+5     ; |1363| 
        MOVW      DP,#_settings+4
        MOV       AL,*+XAR4[AR1]        ; |1363| 
        MOV       @_settings+4,AL       ; |1363| 
        BF        L300,UNC              ; |1364| 
        ; branch occurs ; |1364| 
DW$L$_Registers$324$E:
L134:    
DW$L$_Registers$325$B:
        MOVL      XAR3,#_calibrationtd+5 ; |1354| 
        BF        L140,UNC              ; |1356| 
        ; branch occurs ; |1356| 
DW$L$_Registers$325$E:
L135:    
DW$L$_Registers$326$B:
        MOVL      XAR3,#_calibrationtd+4 ; |1347| 
        BF        L140,UNC              ; |1349| 
        ; branch occurs ; |1349| 
DW$L$_Registers$326$E:
L136:    
DW$L$_Registers$327$B:
        MOVL      XAR3,#_calibrationtd+3 ; |1340| 
        BF        L140,UNC              ; |1342| 
        ; branch occurs ; |1342| 
DW$L$_Registers$327$E:
L137:    
DW$L$_Registers$328$B:
        MOVL      XAR3,#_calibrationtd+2 ; |1333| 
        BF        L140,UNC              ; |1335| 
        ; branch occurs ; |1335| 
DW$L$_Registers$328$E:
L138:    
DW$L$_Registers$329$B:
        MOVL      XAR3,#_calibrationtd+1 ; |1326| 
        BF        L140,UNC              ; |1328| 
        ; branch occurs ; |1328| 
DW$L$_Registers$329$E:
L139:    
DW$L$_Registers$330$B:
        MOVL      XAR3,#_calibrationtd  ; |1319| 
DW$L$_Registers$330$E:
L140:    
DW$L$_Registers$331$B:
        MOVL      XAR4,XAR3             ; |1320| 
        MOVB      AL,#1                 ; |1318| 
        MOV       AH,AR1                ; |1320| 
        LCR       #_ProcessRegister     ; |1320| 
        ; call occurs [#_ProcessRegister] ; |1320| 
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |1321| 
        BF        L300,NEQ              ; |1321| 
        ; branchcc occurs ; |1321| 
DW$L$_Registers$331$E:
DW$L$_Registers$332$B:
        MOVB      AL,#0
        LCR       #_CalibrationtdUpdate ; |1321| 
        ; call occurs [#_CalibrationtdUpdate] ; |1321| 
        BF        L300,UNC              ; |1321| 
        ; branch occurs ; |1321| 
DW$L$_Registers$332$E:
L141:    
DW$L$_Registers$333$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |1308| 
        BF        L142,EQ               ; |1308| 
        ; branchcc occurs ; |1308| 
DW$L$_Registers$333$E:
DW$L$_Registers$334$B:
        MOVW      DP,#_mancal+3
        MOVL      XAR4,#_pcmodbus+5     ; |1312| 
        MOV       AL,@_mancal+3         ; |1312| 
        MOV       *+XAR4[AR1],AL        ; |1312| 
        BF        L143,UNC              ; |1312| 
        ; branch occurs ; |1312| 
DW$L$_Registers$334$E:
L142:    
DW$L$_Registers$335$B:
        MOVW      DP,#_mancal+3
        MOV       @_mancal+3,#0         ; |1310| 
DW$L$_Registers$335$E:
L143:    
DW$L$_Registers$336$B:
        LCR       #_WriteMANCaltoNVMEM  ; |1313| 
        ; call occurs [#_WriteMANCaltoNVMEM] ; |1313| 
        BF        L300,UNC              ; |1314| 
        ; branch occurs ; |1314| 
DW$L$_Registers$336$E:
L144:    
DW$L$_Registers$337$B:
        MOVZ      AR0,AR2               ; |1304| 
        SUB       AR0,#3018             ; |1304| 
        MOVL      XAR4,#_calibration+1  ; |1304| 
        BF        L278,UNC              ; |1305| 
        ; branch occurs ; |1305| 
DW$L$_Registers$337$E:
L145:    
DW$L$_Registers$338$B:
        MOVW      DP,#_calibration+650
        MOV       AL,@_calibration+650  ; |1299| 
        BF        L112,UNC              ; |1300| 
        ; branch occurs ; |1300| 
DW$L$_Registers$338$E:
L146:    
DW$L$_Registers$339$B:
        MOVW      DP,#_calibration
        MOV       AL,@_calibration      ; |1295| 
        BF        L112,UNC              ; |1296| 
        ; branch occurs ; |1296| 
DW$L$_Registers$339$E:
L147:    
DW$L$_Registers$340$B:
        LCR       #_GetPercentageLeft   ; |1291| 
        ; call occurs [#_GetPercentageLeft] ; |1291| 
        BF        L112,UNC              ; |1292| 
        ; branch occurs ; |1292| 
DW$L$_Registers$340$E:
L148:    
DW$L$_Registers$341$B:
        LCR       #_GetIntervalTimeLeft ; |1287| 
        ; call occurs [#_GetIntervalTimeLeft] ; |1287| 
        BF        L112,UNC              ; |1288| 
        ; branch occurs ; |1288| 
DW$L$_Registers$341$E:
L149:    
DW$L$_Registers$342$B:
        LCR       #_GetLearningTimeLeft ; |1283| 
        ; call occurs [#_GetLearningTimeLeft] ; |1283| 
        BF        L112,UNC              ; |1284| 
        ; branch occurs ; |1284| 
DW$L$_Registers$342$E:
L150:    
DW$L$_Registers$343$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |1277| 
        BF        L151,EQ               ; |1277| 
        ; branchcc occurs ; |1277| 
DW$L$_Registers$343$E:
DW$L$_Registers$344$B:
        MOVW      DP,#_speedcompcoeffs+1
        MOV       AL,@_speedcompcoeffs+1 ; |1278| 
        BF        L112,UNC              ; |1278| 
        ; branch occurs ; |1278| 
DW$L$_Registers$344$E:
L151:    
DW$L$_Registers$345$B:
        MOVL      XAR4,#_pcmodbus+5     ; |1277| 
        MOVW      DP,#_speedcompcoeffs+1
        MOV       AL,*+XAR4[AR1]        ; |1277| 
        MOV       @_speedcompcoeffs+1,AL ; |1277| 
        BF        L300,UNC              ; |1277| 
        ; branch occurs ; |1277| 
DW$L$_Registers$345$E:
L152:    
DW$L$_Registers$346$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |1265| 
        BF        L154,EQ               ; |1265| 
        ; branchcc occurs ; |1265| 
DW$L$_Registers$346$E:
DW$L$_Registers$347$B:
        MOVW      DP,#_motion+4
        MOVL      XAR4,#_pcmodbus+5     ; |1269| 
        CMP       @_motion+4,#-2        ; |1269| 
        BF        L153,NEQ              ; |1269| 
        ; branchcc occurs ; |1269| 
DW$L$_Registers$347$E:
DW$L$_Registers$348$B:
        MOVB      AL,#12                ; |1269| 
        BF        L113,UNC              ; |1269| 
        ; branch occurs ; |1269| 
DW$L$_Registers$348$E:
L153:    
DW$L$_Registers$349$B:
        MOVW      DP,#_speedcompcoeffs
        MOV       AL,@_speedcompcoeffs  ; |1269| 
        BF        L113,UNC              ; |1269| 
        ; branch occurs ; |1269| 
DW$L$_Registers$349$E:
L154:    
DW$L$_Registers$350$B:
        MOVL      XAR4,#_pcmodbus+5     ; |1265| 
        MOVW      DP,#_speedcompcoeffs
        MOV       AL,*+XAR4[AR1]        ; |1265| 
        MOV       @_speedcompcoeffs,AL  ; |1265| 
        BF        L300,UNC              ; |1265| 
        ; branch occurs ; |1265| 
DW$L$_Registers$350$E:
L155:    
DW$L$_Registers$351$B:
        MOVW      DP,#_speedcompcoeffs
        MOV       AL,@_speedcompcoeffs  ; |1255| 
        BF        L247,EQ               ; |1255| 
        ; branchcc occurs ; |1255| 
DW$L$_Registers$351$E:
DW$L$_Registers$352$B:
        CMPB      AL,#9                 ; |1255| 
        BF        L247,HI               ; |1255| 
        ; branchcc occurs ; |1255| 
DW$L$_Registers$352$E:
DW$L$_Registers$353$B:
        MOVW      DP,#_settings+34
        MOV       AL,@_settings+34      ; |1255| 
        BF        L212,EQ               ; |1255| 
        ; branchcc occurs ; |1255| 
DW$L$_Registers$353$E:
DW$L$_Registers$354$B:
        BF        L247,UNC              ; |1255| 
        ; branch occurs ; |1255| 
DW$L$_Registers$354$E:
L156:    
DW$L$_Registers$355$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |1249| 
        BF        L157,EQ               ; |1249| 
        ; branchcc occurs ; |1249| 
DW$L$_Registers$355$E:
DW$L$_Registers$356$B:
        MOVW      DP,#_motion+7
        MOV       AL,@_motion+7         ; |1250| 
        BF        L112,UNC              ; |1250| 
        ; branch occurs ; |1250| 
DW$L$_Registers$356$E:
L157:    
DW$L$_Registers$357$B:
        MOVL      XAR4,#_pcmodbus+5     ; |1249| 
        MOVW      DP,#_motion+7
        MOV       AL,*+XAR4[AR1]        ; |1249| 
        MOV       @_motion+7,AL         ; |1249| 
        BF        L300,UNC              ; |1249| 
        ; branch occurs ; |1249| 
DW$L$_Registers$357$E:
L158:    
DW$L$_Registers$358$B:
        MOVW      DP,#_allsensors+4
        MOV       AL,@_allsensors+4     ; |1245| 
        BF        L112,UNC              ; |1246| 
        ; branch occurs ; |1246| 
DW$L$_Registers$358$E:
L159:    
DW$L$_Registers$359$B:
        MOV       AH,AR1                ; |1241| 
        LCR       #_ProcessEngineRunT   ; |1241| 
        ; call occurs [#_ProcessEngineRunT] ; |1241| 
        BF        L300,UNC              ; |1242| 
        ; branch occurs ; |1242| 
DW$L$_Registers$359$E:
L160:    
DW$L$_Registers$360$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |1234| 
        BF        L300,NEQ              ; |1234| 
        ; branchcc occurs ; |1234| 
DW$L$_Registers$360$E:
DW$L$_Registers$361$B:
        LCR       #_ClearCalibrationAlarms ; |1236| 
        ; call occurs [#_ClearCalibrationAlarms] ; |1236| 
        BF        L300,UNC              ; |1236| 
        ; branch occurs ; |1236| 
DW$L$_Registers$361$E:
L161:    
DW$L$_Registers$362$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |1226| 
        BF        L162,EQ               ; |1226| 
        ; branchcc occurs ; |1226| 
DW$L$_Registers$362$E:
DW$L$_Registers$363$B:
        MOVW      DP,#_allsensors+18
        MOV       AL,@_allsensors+18    ; |1230| 
        BF        L112,UNC              ; |1230| 
        ; branch occurs ; |1230| 
DW$L$_Registers$363$E:
L162:    
DW$L$_Registers$364$B:
        MOVL      XAR4,#_pcmodbus+5     ; |1228| 
        MOVW      DP,#_allsensors+18
        MOV       AL,*+XAR4[AR1]        ; |1228| 
        MOV       @_allsensors+18,AL    ; |1228| 
        BF        L300,UNC              ; |1229| 
        ; branch occurs ; |1229| 
DW$L$_Registers$364$E:
L163:    
DW$L$_Registers$365$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |1218| 
        BF        L164,EQ               ; |1218| 
        ; branchcc occurs ; |1218| 
DW$L$_Registers$365$E:
DW$L$_Registers$366$B:
        MOVW      DP,#_allsensors+17
        MOV       AL,@_allsensors+17    ; |1222| 
        BF        L112,UNC              ; |1222| 
        ; branch occurs ; |1222| 
DW$L$_Registers$366$E:
L164:    
DW$L$_Registers$367$B:
        MOVL      XAR4,#_pcmodbus+5     ; |1220| 
        MOVW      DP,#_allsensors+17
        MOV       AL,*+XAR4[AR1]        ; |1220| 
        MOV       @_allsensors+17,AL    ; |1220| 
        BF        L300,UNC              ; |1221| 
        ; branch occurs ; |1221| 
DW$L$_Registers$367$E:
L165:    
DW$L$_Registers$368$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |1206| 
        BF        L166,EQ               ; |1206| 
        ; branchcc occurs ; |1206| 
DW$L$_Registers$368$E:
DW$L$_Registers$369$B:
        MOVZ      AR0,AR2               ; |1213| 
        SUB       AR0,#2028             ; |1213| 
        MOVL      XAR4,#_allsensors+21  ; |1213| 
        BF        L278,UNC              ; |1213| 
        ; branch occurs ; |1213| 
DW$L$_Registers$369$E:
L166:    
DW$L$_Registers$370$B:
        MOVZ      AR0,AR2               ; |1208| 
        SUB       AR0,#2028             ; |1208| 
        MOVL      XAR4,#_pcmodbus+5     ; |1208| 
        MOV       AL,*+XAR4[AR1]        ; |1208| 
        MOVL      XAR4,#_allsensors+21  ; |1208| 
        MOV       *+XAR4[AR0],AL        ; |1208| 
DW$L$_Registers$370$E:
L167:    
DW$L$_Registers$371$B:
        MOVW      DP,#_settings+10
        MOV       @_settings+10,#1      ; |1209| 
        BF        L300,UNC              ; |1210| 
        ; branch occurs ; |1210| 
DW$L$_Registers$371$E:
L168:    
DW$L$_Registers$372$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |1199| 
        BF        L300,NEQ              ; |1199| 
        ; branchcc occurs ; |1199| 
DW$L$_Registers$372$E:
DW$L$_Registers$373$B:
        MOVL      XAR4,#_pcmodbus+5     ; |1199| 
        MOV       AL,*+XAR4[AR1]        ; |1199| 
        CMPB      AL,#1                 ; |1199| 
        BF        L300,NEQ              ; |1199| 
        ; branchcc occurs ; |1199| 
DW$L$_Registers$373$E:
DW$L$_Registers$374$B:
        LCR       #_ClearEngineDirCal   ; |1201| 
        ; call occurs [#_ClearEngineDirCal] ; |1201| 
        BF        L300,UNC              ; |1201| 
        ; branch occurs ; |1201| 
DW$L$_Registers$374$E:
L169:    
DW$L$_Registers$375$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |1192| 
        BF        L300,NEQ              ; |1192| 
        ; branchcc occurs ; |1192| 
DW$L$_Registers$375$E:
DW$L$_Registers$376$B:
        MOVL      XAR4,#_pcmodbus+5     ; |1192| 
        MOV       AL,*+XAR4[AR1]        ; |1192| 
        CMPB      AL,#1                 ; |1192| 
        BF        L300,NEQ              ; |1192| 
        ; branchcc occurs ; |1192| 
DW$L$_Registers$376$E:
DW$L$_Registers$377$B:
        LCR       #_InitMotionCal       ; |1194| 
        ; call occurs [#_InitMotionCal] ; |1194| 
        BF        L300,UNC              ; |1194| 
        ; branch occurs ; |1194| 
DW$L$_Registers$377$E:
L170:    
DW$L$_Registers$378$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |1185| 
        BF        L300,NEQ              ; |1185| 
        ; branchcc occurs ; |1185| 
DW$L$_Registers$378$E:
DW$L$_Registers$379$B:
        MOVL      XAR4,#_pcmodbus+5     ; |1185| 
        MOV       AL,*+XAR4[AR1]        ; |1185| 
        CMPB      AL,#1                 ; |1185| 
        BF        L300,NEQ              ; |1185| 
        ; branchcc occurs ; |1185| 
DW$L$_Registers$379$E:
DW$L$_Registers$380$B:
        LCR       #_SetAllEventMsgs     ; |1187| 
        ; call occurs [#_SetAllEventMsgs] ; |1187| 
        BF        L300,UNC              ; |1187| 
        ; branch occurs ; |1187| 
DW$L$_Registers$380$E:
L171:    
DW$L$_Registers$381$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |1170| 
        BF        L172,EQ               ; |1170| 
        ; branchcc occurs ; |1170| 
DW$L$_Registers$381$E:
DW$L$_Registers$382$B:
        MOVL      XAR4,#_pcmodbus+5     ; |1177| 
        MOVL      ACC,XAR4              ; |1177| 
        ADDU      ACC,AR1               ; |1177| 
        MOVL      XAR4,ACC              ; |1177| 
        MOVW      DP,#_settings+5
        MOV       AL,@_settings+5       ; |1177| 
        LCR       #_SDReadEventMessage  ; |1177| 
        ; call occurs [#_SDReadEventMessage] ; |1177| 
        BF        L300,UNC              ; |1177| 
        ; branch occurs ; |1177| 
DW$L$_Registers$382$E:
L172:    
DW$L$_Registers$383$B:
        MOVL      XAR4,#_pcmodbus+5     ; |1173| 
        MOVL      ACC,XAR4              ; |1173| 
        ADDU      ACC,AR1               ; |1173| 
        MOVL      XAR4,ACC              ; |1173| 
        MOVW      DP,#_settings+5
        MOV       AL,@_settings+5       ; |1173| 
        LCR       #_SDEventMessageUpdate ; |1173| 
        ; call occurs [#_SDEventMessageUpdate] ; |1173| 
        BF        L300,UNC              ; |1174| 
        ; branch occurs ; |1174| 
DW$L$_Registers$383$E:
L173:    
DW$L$_Registers$384$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |1161| 
        BF        L174,EQ               ; |1161| 
        ; branchcc occurs ; |1161| 
DW$L$_Registers$384$E:
DW$L$_Registers$385$B:
        MOVW      DP,#_settings+5
        MOV       AL,@_settings+5       ; |1165| 
        BF        L112,UNC              ; |1165| 
        ; branch occurs ; |1165| 
DW$L$_Registers$385$E:
L174:    
DW$L$_Registers$386$B:
        MOVL      XAR4,#_pcmodbus+5     ; |1163| 
        MOVW      DP,#_settings+5
        MOV       AL,*+XAR4[AR1]        ; |1163| 
        MOV       @_settings+5,AL       ; |1163| 
        BF        L300,UNC              ; |1164| 
        ; branch occurs ; |1164| 
DW$L$_Registers$386$E:
L175:    
DW$L$_Registers$387$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1153| 
        BF        L300,NEQ              ; |1153| 
        ; branchcc occurs ; |1153| 
DW$L$_Registers$387$E:
DW$L$_Registers$388$B:
        MOVZ      AR0,AR2               ; |1155| 
        SUB       AR0,#1150             ; |1155| 
        MOVL      XAR4,#_offsetA        ; |1155| 
        BF        L278,UNC              ; |1155| 
        ; branch occurs ; |1155| 
DW$L$_Registers$388$E:
L176:    
DW$L$_Registers$389$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1144| 
        BF        L300,NEQ              ; |1144| 
        ; branchcc occurs ; |1144| 
DW$L$_Registers$389$E:
DW$L$_Registers$390$B:
        MOV       AL,AR2                ; |1146| 
        SUB       AL,#1122              ; |1146| 
        LCR       #_GetRealtimeuAScaledValue ; |1146| 
        ; call occurs [#_GetRealtimeuAScaledValue] ; |1146| 
        BF        L112,UNC              ; |1146| 
        ; branch occurs ; |1146| 
DW$L$_Registers$390$E:
L177:    
DW$L$_Registers$391$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1137| 
        BF        L300,NEQ              ; |1137| 
        ; branchcc occurs ; |1137| 
DW$L$_Registers$391$E:
DW$L$_Registers$392$B:
        MOV       AL,AR2                ; |1139| 
        SUB       AL,#1094              ; |1139| 
        LCR       #_GetRealtimePreCompValue ; |1139| 
        ; call occurs [#_GetRealtimePreCompValue] ; |1139| 
        BF        L112,UNC              ; |1139| 
        ; branch occurs ; |1139| 
DW$L$_Registers$392$E:
L178:    
DW$L$_Registers$393$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |1129| 
        BF        L300,NEQ              ; |1129| 
        ; branchcc occurs ; |1129| 
DW$L$_Registers$393$E:
DW$L$_Registers$394$B:
        MOVL      XAR4,#_pcmodbus+5     ; |1129| 
        MOV       AL,*+XAR4[AR1]        ; |1129| 
        CMPB      AL,#1                 ; |1129| 
        BF        L300,NEQ              ; |1129| 
        ; branchcc occurs ; |1129| 
DW$L$_Registers$394$E:
DW$L$_Registers$395$B:
        LCR       #_PreWarnLevelReset   ; |1131| 
        ; call occurs [#_PreWarnLevelReset] ; |1131| 
        BF        L300,UNC              ; |1131| 
        ; branch occurs ; |1131| 
DW$L$_Registers$395$E:
L179:    
DW$L$_Registers$396$B:
        MOVW      DP,#_settings+3
        MOV       AH,@_settings+3       ; |1039| 
        CMPB      AH,#3                 ; |1039| 
        BF        L181,EQ               ; |1039| 
        ; branchcc occurs ; |1039| 
DW$L$_Registers$396$E:
DW$L$_Registers$397$B:
        CMPB      AH,#4                 ; |1077| 
        BF        L180,EQ               ; |1077| 
        ; branchcc occurs ; |1077| 
DW$L$_Registers$397$E:
DW$L$_Registers$398$B:
        CMPB      AH,#5                 ; |1116| 
        BF        L300,LO               ; |1116| 
        ; branchcc occurs ; |1116| 
DW$L$_Registers$398$E:
DW$L$_Registers$399$B:
        CMPB      AH,#155               ; |1116| 
        BF        L300,HIS              ; |1116| 
        ; branchcc occurs ; |1116| 
DW$L$_Registers$399$E:
DW$L$_Registers$400$B:
        SUB       AL,#1064              ; |1121| 
        ADDB      AH,#-5
        LCR       #_MANCompTable        ; |1121| 
        ; call occurs [#_MANCompTable] ; |1121| 
        MOVB      AL,#1                 ; |1122| 
        MOVL      XAR3,XAR4             ; |1121| 
        MOV       AH,AR1                ; |1123| 
        LCR       #_ProcessRegister     ; |1123| 
        ; call occurs [#_ProcessRegister] ; |1123| 
        MOV       AL,*-SP[37]           ; |1123| 
        CMPB      AL,#16                ; |1124| 
        BF        L300,NEQ              ; |1124| 
        ; branchcc occurs ; |1124| 
DW$L$_Registers$400$E:
DW$L$_Registers$401$B:
        MOVW      DP,#_settings+2
        MOV       @_settings+2,#7       ; |1124| 
        BF        L300,UNC              ; |1124| 
        ; branch occurs ; |1124| 
DW$L$_Registers$401$E:
L180:    
DW$L$_Registers$402$B:
        MOVZ      AR4,SP                ; |1079| 
        MOVB      ACC,#30
        MOVB      XAR5,#0
        SUBB      XAR4,#32              ; |1079| 
        LCR       #_memset              ; |1079| 
        ; call occurs [#_memset] ; |1079| 
        MOVZ      AR6,AR2               ; |1083| 
        SUB       AR6,#1064             ; |1083| 
        SETC      SXM
        MOVL      XAR3,#_offsetB        ; |1083| 
        MOV       ACC,AR6               ; |1083| 
        ADDL      XAR3,ACC
        MOV       AH,*-SP[37]           ; |1083| 
        CMPB      AH,#16                ; |1085| 
        BF        L183,NEQ              ; |1085| 
        ; branchcc occurs ; |1085| 
DW$L$_Registers$402$E:
DW$L$_Registers$403$B:
        MOVL      XAR4,#_pcmodbus+5     ; |1087| 
        MOV       AH,*+XAR4[AR1]        ; |1087| 
        CMP       AH,*+XAR3[0]          ; |1087| 
        BF        L300,EQ               ; |1087| 
        ; branchcc occurs ; |1087| 
DW$L$_Registers$403$E:
DW$L$_Registers$404$B:
        CMP       AH,#-2000             ; |1087| 
        BF        L300,LT               ; |1087| 
        ; branchcc occurs ; |1087| 
DW$L$_Registers$404$E:
DW$L$_Registers$405$B:
        CMP       AH,#2000              ; |1087| 
        BF        L300,GT               ; |1087| 
        ; branchcc occurs ; |1087| 
DW$L$_Registers$405$E:
DW$L$_Registers$406$B:
        MOV       *+XAR3[0],AH          ; |1095| 
        MOV       T,AR6                 ; |1097| 
        MOVL      XAR4,#_sensor         ; |1097| 
        MPYB      ACC,T,#18             ; |1097| 
        ADDL      XAR4,ACC
        MOVW      DP,#_settings+2
        MOV       @_settings+2,#9       ; |1096| 
        TBIT      *+XAR4[0],#4          ; |1097| 
        BF        L300,NTC              ; |1097| 
        ; branchcc occurs ; |1097| 
DW$L$_Registers$406$E:
DW$L$_Registers$407$B:
        BF        L182,UNC              ; |1102| 
        ; branch occurs ; |1102| 
DW$L$_Registers$407$E:
L181:    
DW$L$_Registers$408$B:
        MOVZ      AR4,SP                ; |1041| 
        MOVB      ACC,#30
        MOVB      XAR5,#0
        SUBB      XAR4,#32              ; |1041| 
        LCR       #_memset              ; |1041| 
        ; call occurs [#_memset] ; |1041| 
        MOVZ      AR6,AR2               ; |1045| 
        SUB       AR6,#1064             ; |1045| 
        SETC      SXM
        MOVL      XAR3,#_offsetA        ; |1045| 
        MOV       ACC,AR6               ; |1045| 
        ADDL      XAR3,ACC
        MOV       AH,*-SP[37]           ; |1045| 
        CMPB      AH,#16                ; |1046| 
        BF        L183,NEQ              ; |1046| 
        ; branchcc occurs ; |1046| 
DW$L$_Registers$408$E:
DW$L$_Registers$409$B:
        MOVL      XAR4,#_pcmodbus+5     ; |1048| 
        MOV       AH,*+XAR4[AR1]        ; |1048| 
        CMP       AH,*+XAR3[0]          ; |1048| 
        BF        L300,EQ               ; |1048| 
        ; branchcc occurs ; |1048| 
DW$L$_Registers$409$E:
DW$L$_Registers$410$B:
        CMP       AH,#-2000             ; |1048| 
        BF        L300,LT               ; |1048| 
        ; branchcc occurs ; |1048| 
DW$L$_Registers$410$E:
DW$L$_Registers$411$B:
        CMP       AH,#2000              ; |1048| 
        BF        L300,GT               ; |1048| 
        ; branchcc occurs ; |1048| 
DW$L$_Registers$411$E:
DW$L$_Registers$412$B:
        MOV       *+XAR3[0],AH          ; |1056| 
        MOV       T,AR6                 ; |1059| 
        MOVL      XAR4,#_sensor         ; |1059| 
        MPYB      ACC,T,#18             ; |1059| 
        ADDL      XAR4,ACC
        MOVW      DP,#_settings+2
        MOV       @_settings+2,#8       ; |1057| 
        TBIT      *+XAR4[0],#4          ; |1059| 
        BF        L300,NTC              ; |1059| 
        ; branchcc occurs ; |1059| 
DW$L$_Registers$412$E:
L182:    
DW$L$_Registers$413$B:
        MOV       ACC,AR6               ; |1061| 
        MOVL      XAR4,#_damagemonignore ; |1061| 
        ADDL      XAR4,ACC
        MOVW      DP,#_iSensorInRepalce
        MOV       *+XAR4[0],#3          ; |1061| 
        MOV       @_iSensorInRepalce,AR6 ; |1062| 
        MOVB      AL,#1                 ; |1063| 
        MOVW      DP,#_iSensorInRepalceMode
        MOV       @_iSensorInRepalceMode,AL ; |1063| 
        MOVW      DP,#_iSensorInRepalceTimer
        MOV       @_iSensorInRepalceTimer,AL ; |1064| 
        BF        L300,UNC              ; |1064| 
        ; branch occurs ; |1064| 
DW$L$_Registers$413$E:
L183:    
DW$L$_Registers$414$B:
        MOV       AL,*+XAR3[0]          ; |1075| 
        BF        L112,UNC              ; |1075| 
        ; branch occurs ; |1075| 
DW$L$_Registers$414$E:
L184:    
DW$L$_Registers$415$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |1031| 
        BF        L185,EQ               ; |1031| 
        ; branchcc occurs ; |1031| 
DW$L$_Registers$415$E:
DW$L$_Registers$416$B:
        MOVW      DP,#_settings+3
        MOV       AL,@_settings+3       ; |1035| 
        BF        L112,UNC              ; |1035| 
        ; branch occurs ; |1035| 
DW$L$_Registers$416$E:
L185:    
DW$L$_Registers$417$B:
        MOVL      XAR4,#_pcmodbus+5     ; |1033| 
        MOVW      DP,#_settings+3
        MOV       AL,*+XAR4[AR1]        ; |1033| 
        MOV       @_settings+3,AL       ; |1033| 
        BF        L300,UNC              ; |1034| 
        ; branch occurs ; |1034| 
DW$L$_Registers$417$E:
L186:    
DW$L$_Registers$418$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |1012| 
        BF        L187,EQ               ; |1012| 
        ; branchcc occurs ; |1012| 
DW$L$_Registers$418$E:
DW$L$_Registers$419$B:
        MOVW      DP,#_settings+6
        MOV       AL,@_settings+6       ; |1027| 
        BF        L112,UNC              ; |1027| 
        ; branch occurs ; |1027| 
DW$L$_Registers$419$E:
L187:    
DW$L$_Registers$420$B:
        MOVL      XAR4,#_pcmodbus+5     ; |1014| 
        MOVW      DP,#_settings+6
        MOV       AL,*+XAR4[AR1]        ; |1014| 
        MOV       @_settings+6,AL       ; |1014| 
        BF        L300,UNC              ; |1018| 
        ; branch occurs ; |1018| 
DW$L$_Registers$420$E:
L188:    
DW$L$_Registers$421$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |1005| 
        BF        L300,NEQ              ; |1005| 
        ; branchcc occurs ; |1005| 
DW$L$_Registers$421$E:
DW$L$_Registers$422$B:
        MOVL      XAR4,#_pcmodbus+5     ; |1005| 
        MOV       AL,*+XAR4[AR1]        ; |1005| 
        CMPB      AL,#1                 ; |1005| 
        BF        L300,NEQ              ; |1005| 
        ; branchcc occurs ; |1005| 
DW$L$_Registers$422$E:
DW$L$_Registers$423$B:
        MOVB      AL,#1                 ; |1007| 
        LCR       #_ClearMANTable       ; |1007| 
        ; call occurs [#_ClearMANTable] ; |1007| 
        BF        L300,UNC              ; |1007| 
        ; branch occurs ; |1007| 
DW$L$_Registers$423$E:
L189:    
DW$L$_Registers$424$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |1001| 
        BF        L300,NEQ              ; |1001| 
        ; branchcc occurs ; |1001| 
DW$L$_Registers$424$E:
DW$L$_Registers$425$B:
        MOVW      DP,#_clocktime+12
        MOV       AL,@_clocktime+12     ; |1001| 
        BF        L112,UNC              ; |1001| 
        ; branch occurs ; |1001| 
DW$L$_Registers$425$E:
L190:    
DW$L$_Registers$426$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |997| 
        BF        L300,NEQ              ; |997| 
        ; branchcc occurs ; |997| 
DW$L$_Registers$426$E:
DW$L$_Registers$427$B:
        MOVL      XAR4,#_pcmodbus+5     ; |997| 
        MOV       AL,*+XAR4[AR1]        ; |997| 
        CMPB      AL,#1                 ; |997| 
        BF        L300,NEQ              ; |997| 
        ; branchcc occurs ; |997| 
DW$L$_Registers$427$E:
DW$L$_Registers$428$B:
        LCR       #_PreWarningInit      ; |997| 
        ; call occurs [#_PreWarningInit] ; |997| 
        BF        L300,UNC              ; |997| 
        ; branch occurs ; |997| 
DW$L$_Registers$428$E:
L191:    
DW$L$_Registers$429$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |990| 
        BF        L300,NEQ              ; |990| 
        ; branchcc occurs ; |990| 
DW$L$_Registers$429$E:
DW$L$_Registers$430$B:
        MOVL      XAR4,#_pcmodbus+5     ; |990| 
        MOV       AL,*+XAR4[AR1]        ; |990| 
        CMPB      AL,#1                 ; |990| 
        BF        L300,NEQ              ; |990| 
        ; branchcc occurs ; |990| 
DW$L$_Registers$430$E:
DW$L$_Registers$431$B:
        LCR       #_FRAMInit            ; |992| 
        ; call occurs [#_FRAMInit] ; |992| 
        BF        L300,UNC              ; |992| 
        ; branch occurs ; |992| 
DW$L$_Registers$431$E:
L192:    
DW$L$_Registers$432$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |985| 
        BF        L193,EQ               ; |985| 
        ; branchcc occurs ; |985| 
DW$L$_Registers$432$E:
DW$L$_Registers$433$B:
        MOVW      DP,#_digout
        MOV       AL,@_digout           ; |986| 
        BF        L112,UNC              ; |986| 
        ; branch occurs ; |986| 
DW$L$_Registers$433$E:
L193:    
DW$L$_Registers$434$B:
        MOVL      XAR4,#_pcmodbus+5     ; |985| 
        MOVW      DP,#_digout
        MOV       AL,*+XAR4[AR1]        ; |985| 
        MOV       @_digout,AL           ; |985| 
        BF        L300,UNC              ; |985| 
        ; branch occurs ; |985| 
DW$L$_Registers$434$E:
L194:    
DW$L$_Registers$435$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |969| 
        BF        L196,NEQ              ; |969| 
        ; branchcc occurs ; |969| 
DW$L$_Registers$435$E:
DW$L$_Registers$436$B:
        MOVL      XAR4,#_pcmodbus+5     ; |971| 
        MOV       AL,*+XAR4[AR1]        ; |971| 
        CMPB      AL,#1                 ; |971| 
        BF        L195,EQ               ; |971| 
        ; branchcc occurs ; |971| 
DW$L$_Registers$436$E:
DW$L$_Registers$437$B:
        CMPB      AL,#0                 ; |975| 
        BF        L300,NEQ              ; |975| 
        ; branchcc occurs ; |975| 
DW$L$_Registers$437$E:
DW$L$_Registers$438$B:
        LCR       #_DCModeClear         ; |977| 
        ; call occurs [#_DCModeClear] ; |977| 
        BF        L300,UNC              ; |977| 
        ; branch occurs ; |977| 
DW$L$_Registers$438$E:
L195:    
DW$L$_Registers$439$B:
        LCR       #_DCModeInit          ; |973| 
        ; call occurs [#_DCModeInit] ; |973| 
        BF        L300,UNC              ; |974| 
        ; branch occurs ; |974| 
DW$L$_Registers$439$E:
L196:    
DW$L$_Registers$440$B:
        MOVW      DP,#_settings+13
        MOV       AL,@_settings+13      ; |981| 
        BF        L112,UNC              ; |981| 
        ; branch occurs ; |981| 
DW$L$_Registers$440$E:
L197:    
DW$L$_Registers$441$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |964| 
        BF        L198,EQ               ; |964| 
        ; branchcc occurs ; |964| 
DW$L$_Registers$441$E:
DW$L$_Registers$442$B:
        MOVW      DP,#_settings+15
        MOV       AL,@_settings+15      ; |965| 
        BF        L112,UNC              ; |965| 
        ; branch occurs ; |965| 
DW$L$_Registers$442$E:
L198:    
DW$L$_Registers$443$B:
        MOVL      XAR4,#_pcmodbus+5     ; |964| 
        MOVW      DP,#_settings+15
        MOV       AL,*+XAR4[AR1]        ; |964| 
        MOV       @_settings+15,AL      ; |964| 
        BF        L300,UNC              ; |964| 
        ; branch occurs ; |964| 
DW$L$_Registers$443$E:
L199:    
DW$L$_Registers$444$B:
        MOVW      DP,#_timers+70
        MOVL      XAR4,#_pcmodbus+5     ; |958| 
        MOV       AL,@_timers+70        ; |958| 
        MOVW      DP,#_timers+70
        MOV       *+XAR4[AR1],AL        ; |958| 
        MOV       @_timers+70,#6000     ; |959| 
        BF        L300,UNC              ; |960| 
        ; branch occurs ; |960| 
DW$L$_Registers$444$E:
L200:    
DW$L$_Registers$445$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |952| 
        BF        L201,EQ               ; |952| 
        ; branchcc occurs ; |952| 
DW$L$_Registers$445$E:
DW$L$_Registers$446$B:
        MOVW      DP,#_settings+16
        MOV       AL,@_settings+16      ; |953| 
        BF        L112,UNC              ; |953| 
        ; branch occurs ; |953| 
DW$L$_Registers$446$E:
L201:    
DW$L$_Registers$447$B:
        MOVL      XAR4,#_pcmodbus+5     ; |952| 
        MOVW      DP,#_settings+16
        MOV       AL,*+XAR4[AR1]        ; |952| 
        MOV       @_settings+16,AL      ; |952| 
        BF        L300,UNC              ; |952| 
        ; branch occurs ; |952| 
DW$L$_Registers$447$E:
L202:    
DW$L$_Registers$448$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |935| 
        BF        L204,NEQ              ; |935| 
        ; branchcc occurs ; |935| 
DW$L$_Registers$448$E:
DW$L$_Registers$449$B:
        MOVL      XAR4,#_pcmodbus+5     ; |937| 
        MOV       AL,*+XAR4[AR1]        ; |937| 
        CMPB      AL,#1                 ; |937| 
        BF        L203,EQ               ; |937| 
        ; branchcc occurs ; |937| 
DW$L$_Registers$449$E:
DW$L$_Registers$450$B:
        MOVW      DP,#_settings+7
        MOV       @_settings+7,#0       ; |943| 
        MOVW      DP,#_sdsettings
        MOV       @_sdsettings,#0       ; |944| 
        MOVW      DP,#_settings+2
        MOV       @_settings+2,#3       ; |945| 
        BF        L300,UNC              ; |945| 
        ; branch occurs ; |945| 
DW$L$_Registers$450$E:
L203:    
DW$L$_Registers$451$B:
        MOVW      DP,#_settings+9
        MOV       @_settings+9,#1       ; |939| 
        BF        L300,UNC              ; |940| 
        ; branch occurs ; |940| 
DW$L$_Registers$451$E:
L204:    
DW$L$_Registers$452$B:
        MOVW      DP,#_sdsettings
        MOV       AL,@_sdsettings       ; |948| 
        BF        L112,UNC              ; |948| 
        ; branch occurs ; |948| 
DW$L$_Registers$452$E:
L205:    
DW$L$_Registers$453$B:
        MOVW      DP,#_settings+7
        MOV       AL,@_settings+7       ; |931| 
        BF        L112,UNC              ; |932| 
        ; branch occurs ; |932| 
DW$L$_Registers$453$E:
L206:    
DW$L$_Registers$454$B:
        MOVW      DP,#_motion+4
        MOV       AL,@_motion+4         ; |927| 
        BF        L112,UNC              ; |928| 
        ; branch occurs ; |928| 
DW$L$_Registers$454$E:
L207:    
DW$L$_Registers$455$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |911| 
        BF        L247,NEQ              ; |911| 
        ; branchcc occurs ; |911| 
DW$L$_Registers$455$E:
DW$L$_Registers$456$B:
        MOVL      XAR4,#_pcmodbus+5     ; |913| 
        MOV       AL,*+XAR4[AR1]        ; |913| 
        CMPB      AL,#1                 ; |913| 
        BF        L208,NEQ              ; |913| 
        ; branchcc occurs ; |913| 
DW$L$_Registers$456$E:
DW$L$_Registers$457$B:
        MOVW      DP,#_allsensors+16
        OR        @_allsensors+16,#0x0004 ; |915| 
DW$L$_Registers$457$E:
L208:    
DW$L$_Registers$458$B:
        MOV       AL,*+XAR4[AR1]        ; |917| 
        BF        L167,NEQ              ; |917| 
        ; branchcc occurs ; |917| 
DW$L$_Registers$458$E:
DW$L$_Registers$459$B:
        LCR       #_CalAbort            ; |919| 
        ; call occurs [#_CalAbort] ; |919| 
        BF        L167,UNC              ; |922| 
        ; branch occurs ; |922| 
DW$L$_Registers$459$E:
L209:    
DW$L$_Registers$460$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |907| 
        BF        L247,EQ               ; |907| 
        ; branchcc occurs ; |907| 
DW$L$_Registers$460$E:
DW$L$_Registers$461$B:
        BF        L300,UNC              ; |907| 
        ; branch occurs ; |907| 
DW$L$_Registers$461$E:
L210:    
DW$L$_Registers$462$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |900| 
        BF        L300,NEQ              ; |900| 
        ; branchcc occurs ; |900| 
DW$L$_Registers$462$E:
DW$L$_Registers$463$B:
        MOVL      XAR4,#_pcmodbus+5     ; |902| 
        MOVW      DP,#_settings+10
        MOV       AL,*+XAR4[AR1]        ; |902| 
        MOV       @_settings+10,AL      ; |902| 
        BF        L300,UNC              ; |902| 
        ; branch occurs ; |902| 
DW$L$_Registers$463$E:
L211:    
DW$L$_Registers$464$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |877| 
        BF        L213,EQ               ; |877| 
        ; branchcc occurs ; |877| 
DW$L$_Registers$464$E:
DW$L$_Registers$465$B:
        MOVW      DP,#_settings+23
        MOV       AL,@_settings+23      ; |889| 
        BF        L247,NEQ              ; |889| 
        ; branchcc occurs ; |889| 
DW$L$_Registers$465$E:
L212:    
DW$L$_Registers$466$B:
        MOVL      XAR4,#_pcmodbus+5     ; |889| 
        MOV       *+XAR4[AR1],#1        ; |889| 
        BF        L300,UNC              ; |889| 
        ; branch occurs ; |889| 
DW$L$_Registers$466$E:
L213:    
DW$L$_Registers$467$B:
        MOVB      AH,#0
        MOVL      XAR4,#_pcmodbus+5     ; |884| 
        MOV       AL,*+XAR4[AR1]        ; |884| 
        CMPB      AL,#1                 ; |884| 
        BF        L214,EQ               ; |884| 
        ; branchcc occurs ; |884| 
DW$L$_Registers$467$E:
DW$L$_Registers$468$B:
        MOVB      AH,#1                 ; |884| 
DW$L$_Registers$468$E:
L214:    
DW$L$_Registers$469$B:
        MOVW      DP,#_settings+23
        MOV       @_settings+23,AH      ; |884| 
        BF        L300,UNC              ; |884| 
        ; branch occurs ; |884| 
DW$L$_Registers$469$E:
L215:    
DW$L$_Registers$470$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |868| 
        BF        L217,NEQ              ; |868| 
        ; branchcc occurs ; |868| 
DW$L$_Registers$470$E:
DW$L$_Registers$471$B:
        MOVL      XAR4,#_pcmodbus+5     ; |870| 
        MOV       AL,*+XAR4[AR1]        ; |870| 
        CMPB      AL,#1                 ; |870| 
        BF        L216,EQ               ; |870| 
        ; branchcc occurs ; |870| 
DW$L$_Registers$471$E:
DW$L$_Registers$472$B:
        MOVW      DP,#_gpf
        AND       @_gpf,#0xff7f         ; |871| 
        BF        L300,UNC              ; |871| 
        ; branch occurs ; |871| 
DW$L$_Registers$472$E:
L216:    
DW$L$_Registers$473$B:
        MOVW      DP,#_gpf
        OR        @_gpf,#0x0080         ; |870| 
        BF        L300,UNC              ; |870| 
        ; branch occurs ; |870| 
DW$L$_Registers$473$E:
L217:    
DW$L$_Registers$474$B:
        MOVW      DP,#_gpf
        AND       AL,@_gpf,#0x0080      ; |873| 
        LSR       AL,7                  ; |873| 
        BF        L112,UNC              ; |873| 
        ; branch occurs ; |873| 
DW$L$_Registers$474$E:
L218:    
DW$L$_Registers$475$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |859| 
        BF        L220,NEQ              ; |859| 
        ; branchcc occurs ; |859| 
DW$L$_Registers$475$E:
DW$L$_Registers$476$B:
        MOVL      XAR4,#_pcmodbus+5     ; |861| 
        MOV       AL,*+XAR4[AR1]        ; |861| 
        CMPB      AL,#1                 ; |861| 
        BF        L219,EQ               ; |861| 
        ; branchcc occurs ; |861| 
DW$L$_Registers$476$E:
DW$L$_Registers$477$B:
        MOVW      DP,#_gpf
        AND       @_gpf,#0xffbf         ; |862| 
        BF        L300,UNC              ; |862| 
        ; branch occurs ; |862| 
DW$L$_Registers$477$E:
L219:    
DW$L$_Registers$478$B:
        MOVW      DP,#_gpf
        OR        @_gpf,#0x0040         ; |861| 
        BF        L300,UNC              ; |861| 
        ; branch occurs ; |861| 
DW$L$_Registers$478$E:
L220:    
DW$L$_Registers$479$B:
        MOVW      DP,#_gpf
        AND       AL,@_gpf,#0x0040      ; |864| 
        LSR       AL,6                  ; |864| 
        BF        L112,UNC              ; |864| 
        ; branch occurs ; |864| 
DW$L$_Registers$479$E:
L221:    
DW$L$_Registers$480$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |850| 
        BF        L222,NEQ              ; |850| 
        ; branchcc occurs ; |850| 
DW$L$_Registers$480$E:
DW$L$_Registers$481$B:
        MOVL      XAR4,#_pcmodbus+5     ; |852| 
        MOV       AL,*+XAR4[AR1]        ; |852| 
        CMPB      AL,#1                 ; |852| 
        BF        L300,NEQ              ; |852| 
        ; branchcc occurs ; |852| 
DW$L$_Registers$481$E:
DW$L$_Registers$482$B:
        MOVW      DP,#_settings+8
        MOV       @_settings+8,#1       ; |852| 
        BF        L300,UNC              ; |852| 
        ; branch occurs ; |852| 
DW$L$_Registers$482$E:
L222:    
DW$L$_Registers$483$B:
        MOVW      DP,#_settings+8
        MOV       AL,@_settings+8       ; |854| 
        BF        L112,UNC              ; |854| 
        ; branch occurs ; |854| 
DW$L$_Registers$483$E:
L223:    
DW$L$_Registers$484$B:
        MOVB      AH,#0
        MOVL      XAR4,#_pcmodbus+5     ; |843| 
        MOV       AL,*+XAR4[AR1]        ; |843| 
        BF        L224,NEQ              ; |843| 
        ; branchcc occurs ; |843| 
DW$L$_Registers$484$E:
DW$L$_Registers$485$B:
        MOVB      AH,#1                 ; |843| 
DW$L$_Registers$485$E:
L224:    
DW$L$_Registers$486$B:
        MOVW      DP,#_settings+30
        MOV       @_settings+30,AH      ; |843| 
        BF        L300,UNC              ; |844| 
        ; branch occurs ; |844| 
DW$L$_Registers$486$E:
L225:    
DW$L$_Registers$487$B:
        MOVB      AH,#0
        MOVL      XAR4,#_pcmodbus+5     ; |835| 
        MOV       AL,*+XAR4[AR1]        ; |835| 
        BF        L226,NEQ              ; |835| 
        ; branchcc occurs ; |835| 
DW$L$_Registers$487$E:
DW$L$_Registers$488$B:
        MOVB      AH,#1                 ; |835| 
DW$L$_Registers$488$E:
L226:    
DW$L$_Registers$489$B:
        MOVW      DP,#_settings+29
        MOV       @_settings+29,AH      ; |835| 
        BF        L300,UNC              ; |836| 
        ; branch occurs ; |836| 
DW$L$_Registers$489$E:
L227:    
DW$L$_Registers$490$B:
        MOVW      DP,#_sdsettings+2
        MOV       AL,@_sdsettings+2     ; |829| 
        BF        L112,UNC              ; |830| 
        ; branch occurs ; |830| 
DW$L$_Registers$490$E:
L228:    
DW$L$_Registers$491$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |818| 
        BF        L229,EQ               ; |818| 
        ; branchcc occurs ; |818| 
DW$L$_Registers$491$E:
DW$L$_Registers$492$B:
        CMPB      AL,#3                 ; |822| 
        BF        L300,NEQ              ; |822| 
        ; branchcc occurs ; |822| 
DW$L$_Registers$492$E:
DW$L$_Registers$493$B:
        MOVW      DP,#_sdsettings+1
        MOV       AL,@_sdsettings+1     ; |824| 
        BF        L112,UNC              ; |824| 
        ; branch occurs ; |824| 
DW$L$_Registers$493$E:
L229:    
DW$L$_Registers$494$B:
        LCR       #_ClearManCompSequence ; |820| 
        ; call occurs [#_ClearManCompSequence] ; |820| 
        BF        L300,UNC              ; |821| 
        ; branch occurs ; |821| 
DW$L$_Registers$494$E:
L230:    
DW$L$_Registers$495$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |809| 
        BF        L231,EQ               ; |809| 
        ; branchcc occurs ; |809| 
DW$L$_Registers$495$E:
DW$L$_Registers$496$B:
        MOVW      DP,#_fileregs+314
        MOV       AL,@_fileregs+314     ; |814| 
        BF        L112,UNC              ; |814| 
        ; branch occurs ; |814| 
DW$L$_Registers$496$E:
L231:    
DW$L$_Registers$497$B:
        MOVL      XAR4,#_pcmodbus+5     ; |812| 
        MOVW      DP,#_fileregs+314
        MOV       AL,*+XAR4[AR1]        ; |812| 
        MOV       @_fileregs+314,AL     ; |812| 
        BF        L300,UNC              ; |813| 
        ; branch occurs ; |813| 
DW$L$_Registers$497$E:
L232:    
DW$L$_Registers$498$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |800| 
        BF        L233,EQ               ; |800| 
        ; branchcc occurs ; |800| 
DW$L$_Registers$498$E:
DW$L$_Registers$499$B:
        LCR       #_ReadEventLogID      ; |805| 
        ; call occurs [#_ReadEventLogID] ; |805| 
        BF        L112,UNC              ; |805| 
        ; branch occurs ; |805| 
DW$L$_Registers$499$E:
L233:    
DW$L$_Registers$500$B:
        LCR       #_ClearAlarmListandEventLog ; |803| 
        ; call occurs [#_ClearAlarmListandEventLog] ; |803| 
        BF        L300,UNC              ; |804| 
        ; branch occurs ; |804| 
DW$L$_Registers$500$E:
L234:    
DW$L$_Registers$501$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |769| 
        BF        L235,NEQ              ; |769| 
        ; branchcc occurs ; |769| 
DW$L$_Registers$501$E:
DW$L$_Registers$502$B:
        CMP       AR2,#826              ; |773| 
        BF        L300,LO               ; |773| 
        ; branchcc occurs ; |773| 
DW$L$_Registers$502$E:
DW$L$_Registers$503$B:
        MOVZ      AR0,AR2               ; |773| 
        SUB       AR0,#826              ; |773| 
        MOVL      XAR4,#_pcmodbus+5     ; |773| 
        MOV       AL,*+XAR4[AR1]        ; |773| 
        MOVL      XAR4,#_modbusackbuffer ; |773| 
        MOV       *+XAR4[AR0],AL        ; |773| 
        BF        L300,UNC              ; |773| 
        ; branch occurs ; |773| 
DW$L$_Registers$503$E:
L235:    
DW$L$_Registers$504$B:
        MOV       AL,AR2                ; |765| 
        SUB       AL,#768               ; |765| 
        LCR       #_ReadEvent           ; |765| 
        ; call occurs [#_ReadEvent] ; |765| 
        BF        L112,UNC              ; |766| 
        ; branch occurs ; |766| 
DW$L$_Registers$504$E:
L236:    
DW$L$_Registers$505$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |760| 
        BF        L300,NEQ              ; |760| 
        ; branchcc occurs ; |760| 
DW$L$_Registers$505$E:
DW$L$_Registers$506$B:
        MOVL      XAR4,#_pcmodbus+5     ; |760| 
        MOV       AL,*+XAR4[AR1]        ; |760| 
        LCR       #_SetupEventReadBack  ; |760| 
        ; call occurs [#_SetupEventReadBack] ; |760| 
        BF        L300,UNC              ; |760| 
        ; branch occurs ; |760| 
DW$L$_Registers$506$E:
L237:    
DW$L$_Registers$507$B:
        LCR       #_ReadLastEventID     ; |755| 
        ; call occurs [#_ReadLastEventID] ; |755| 
        BF        L112,UNC              ; |756| 
        ; branch occurs ; |756| 
DW$L$_Registers$507$E:
L238:    
DW$L$_Registers$508$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |745| 
        BF        L239,EQ               ; |745| 
        ; branchcc occurs ; |745| 
DW$L$_Registers$508$E:
DW$L$_Registers$509$B:
        LCR       #_ReadMSGQueueNum     ; |750| 
        ; call occurs [#_ReadMSGQueueNum] ; |750| 
        BF        L112,UNC              ; |750| 
        ; branch occurs ; |750| 
DW$L$_Registers$509$E:
L239:    
DW$L$_Registers$510$B:
        MOVL      XAR4,#_pcmodbus+5     ; |748| 
        MOV       AL,*+XAR4[AR1]        ; |748| 
        LCR       #_MSGQueueNumfromPC   ; |748| 
        ; call occurs [#_MSGQueueNumfromPC] ; |748| 
        BF        L300,UNC              ; |749| 
        ; branch occurs ; |749| 
DW$L$_Registers$510$E:
L240:    
DW$L$_Registers$511$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |737| 
        BF        L300,NEQ              ; |737| 
        ; branchcc occurs ; |737| 
DW$L$_Registers$511$E:
DW$L$_Registers$512$B:
        MOV       AL,AR2                ; |739| 
        SUB       AL,#679               ; |739| 
        LCR       #_BitEventCompiled    ; |739| 
        ; call occurs [#_BitEventCompiled] ; |739| 
        BF        L112,UNC              ; |739| 
        ; branch occurs ; |739| 
DW$L$_Registers$512$E:
L241:    
DW$L$_Registers$513$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |728| 
        BF        L300,NEQ              ; |728| 
        ; branchcc occurs ; |728| 
DW$L$_Registers$513$E:
DW$L$_Registers$514$B:
        MOVZ      AR0,AR2               ; |730| 
        SUB       AR0,#647              ; |730| 
        MOVL      XAR4,#_bitalarmlist   ; |730| 
        BF        L278,UNC              ; |730| 
        ; branch occurs ; |730| 
DW$L$_Registers$514$E:
L242:    
DW$L$_Registers$515$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |712| 
        BF        L300,NEQ              ; |712| 
        ; branchcc occurs ; |712| 
DW$L$_Registers$515$E:
DW$L$_Registers$516$B:
        MOVL      XAR4,#_pcmodbus+5     ; |712| 
        MOV       AL,*+XAR4[AR1]        ; |712| 
        CMPB      AL,#1                 ; |712| 
        BF        L300,NEQ              ; |712| 
        ; branchcc occurs ; |712| 
DW$L$_Registers$516$E:
DW$L$_Registers$517$B:
        LCR       #_ClearEventCodeListArea ; |714| 
        ; call occurs [#_ClearEventCodeListArea] ; |714| 
        BF        L300,UNC              ; |714| 
        ; branch occurs ; |714| 
DW$L$_Registers$517$E:
L243:    
DW$L$_Registers$518$B:
        LCR       #_ReadFirstEventCode  ; |708| 
        ; call occurs [#_ReadFirstEventCode] ; |708| 
        BF        L300,UNC              ; |709| 
        ; branch occurs ; |709| 
DW$L$_Registers$518$E:
L244:    
DW$L$_Registers$519$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |703| 
        BF        L247,NEQ              ; |703| 
        ; branchcc occurs ; |703| 
DW$L$_Registers$519$E:
DW$L$_Registers$520$B:
        MOVL      XAR4,#_pcmodbus+5     ; |703| 
        MOV       AL,*+XAR4[AR1]        ; |703| 
        LCR       #_AlarmEventIDInc     ; |703| 
        ; call occurs [#_AlarmEventIDInc] ; |703| 
        BF        L300,UNC              ; |703| 
        ; branch occurs ; |703| 
DW$L$_Registers$520$E:
L245:    
DW$L$_Registers$521$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |694| 
        BF        L247,NEQ              ; |694| 
        ; branchcc occurs ; |694| 
DW$L$_Registers$521$E:
DW$L$_Registers$522$B:
        MOVW      DP,#_eventlogentry+65
        MOVL      XAR4,#_pcmodbus+5     ; |696| 
        MOV       AL,@_eventlogentry+65 ; |696| 
        MOVW      DP,#_eventlogentry+67
        MOV       *+XAR4[AR1],AL        ; |696| 
        INC       @_eventlogentry+67    ; |697| 
        BF        L300,UNC              ; |698| 
        ; branch occurs ; |698| 
DW$L$_Registers$522$E:
L246:    
DW$L$_Registers$523$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |689| 
        BF        L248,EQ               ; |689| 
        ; branchcc occurs ; |689| 
DW$L$_Registers$523$E:
L247:    
DW$L$_Registers$524$B:
        MOVL      XAR4,#_pcmodbus+5     ; |690| 
        MOV       *+XAR4[AR1],#0        ; |690| 
        BF        L300,UNC              ; |690| 
        ; branch occurs ; |690| 
DW$L$_Registers$524$E:
L248:    
DW$L$_Registers$525$B:
        MOVW      DP,#_eventlogentry+64
        MOV       AL,@_eventlogentry+64 ; |689| 
        BF        L112,UNC              ; |689| 
        ; branch occurs ; |689| 
DW$L$_Registers$525$E:
L249:    
DW$L$_Registers$526$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |677| 
        BF        L300,NEQ              ; |677| 
        ; branchcc occurs ; |677| 
DW$L$_Registers$526$E:
DW$L$_Registers$527$B:
        MOVW      DP,#_eventlogentry+63
        MOVL      XAR4,#_pcmodbus+5     ; |679| 
        MOV       AL,@_eventlogentry+63 ; |679| 
        CMPB      AL,#1                 ; |680| 
        MOV       *+XAR4[AR1],AL        ; |679| 
        BF        L300,NEQ              ; |680| 
        ; branchcc occurs ; |680| 
DW$L$_Registers$527$E:
DW$L$_Registers$528$B:
        LCR       #_ReadFirstEventCode  ; |682| 
        ; call occurs [#_ReadFirstEventCode] ; |682| 
        MOVW      DP,#_eventlogentry+63
        MOV       @_eventlogentry+63,#0 ; |683| 
        BF        L300,UNC              ; |683| 
        ; branch occurs ; |683| 
DW$L$_Registers$528$E:
L250:    
DW$L$_Registers$529$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |673| 
        BF        L300,NEQ              ; |673| 
        ; branchcc occurs ; |673| 
DW$L$_Registers$529$E:
DW$L$_Registers$530$B:
        MOVZ      AR0,AR2               ; |673| 
        SUB       AR0,#543              ; |673| 
        MOVL      XAR4,#_bearingstatus+16 ; |673| 
        BF        L278,UNC              ; |673| 
        ; branch occurs ; |673| 
DW$L$_Registers$530$E:
L251:    
DW$L$_Registers$531$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |669| 
        BF        L300,NEQ              ; |669| 
        ; branchcc occurs ; |669| 
DW$L$_Registers$531$E:
DW$L$_Registers$532$B:
        MOVZ      AR0,AR2               ; |669| 
        SUB       AR0,#529              ; |669| 
        MOVL      XAR4,#_bearingstatus+30 ; |669| 
        BF        L278,UNC              ; |669| 
        ; branch occurs ; |669| 
DW$L$_Registers$532$E:
L252:    
DW$L$_Registers$533$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |665| 
        BF        L300,NEQ              ; |665| 
        ; branchcc occurs ; |665| 
DW$L$_Registers$533$E:
DW$L$_Registers$534$B:
        MOVZ      AR0,AR2               ; |665| 
        SUB       AR0,#513              ; |665| 
        MOVL      XAR4,#_bearingstatus  ; |665| 
        BF        L278,UNC              ; |665| 
        ; branch occurs ; |665| 
DW$L$_Registers$534$E:
L253:    
DW$L$_Registers$535$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |656| 
        BF        L254,EQ               ; |656| 
        ; branchcc occurs ; |656| 
DW$L$_Registers$535$E:
DW$L$_Registers$536$B:
        MOVW      DP,#_clocktime+4
        MOV       AL,@_clocktime+4      ; |661| 
        BF        L112,UNC              ; |661| 
        ; branch occurs ; |661| 
DW$L$_Registers$536$E:
L254:    
DW$L$_Registers$537$B:
        MOVL      XAR4,#_pcmodbus+5     ; |658| 
        MOVW      DP,#_clocktime+4
        MOV       AL,*+XAR4[AR1]        ; |658| 
        MOV       @_clocktime+4,AL      ; |658| 
        LCR       #_WriteDateHrsData    ; |659| 
        ; call occurs [#_WriteDateHrsData] ; |659| 
        BF        L300,UNC              ; |660| 
        ; branch occurs ; |660| 
DW$L$_Registers$537$E:
L255:    
DW$L$_Registers$538$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |652| 
        BF        L300,NEQ              ; |652| 
        ; branchcc occurs ; |652| 
DW$L$_Registers$538$E:
DW$L$_Registers$539$B:
        LCR       #_GetAlarmFlags       ; |652| 
        ; call occurs [#_GetAlarmFlags] ; |652| 
        BF        L111,UNC              ; |652| 
        ; branch occurs ; |652| 
DW$L$_Registers$539$E:
L256:    
DW$L$_Registers$540$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |647| 
        BF        L300,NEQ              ; |647| 
        ; branchcc occurs ; |647| 
DW$L$_Registers$540$E:
DW$L$_Registers$541$B:
        MOVW      DP,#_wioerrorcode
        MOV       AL,@_wioerrorcode     ; |647| 
        BF        L112,UNC              ; |647| 
        ; branch occurs ; |647| 
DW$L$_Registers$541$E:
L257:    
DW$L$_Registers$542$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |641| 
        BF        L300,NEQ              ; |641| 
        ; branchcc occurs ; |641| 
DW$L$_Registers$542$E:
DW$L$_Registers$543$B:
        MOVW      DP,#_rtcbat+1
        MOV       AL,@_rtcbat+1         ; |641| 
        BF        L112,UNC              ; |641| 
        ; branch occurs ; |641| 
DW$L$_Registers$543$E:
L258:    
DW$L$_Registers$544$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |637| 
        BF        L300,NEQ              ; |637| 
        ; branchcc occurs ; |637| 
DW$L$_Registers$544$E:
DW$L$_Registers$545$B:
        MOVW      DP,#_rtcbat
        MOV       AL,@_rtcbat           ; |637| 
        BF        L112,UNC              ; |637| 
        ; branch occurs ; |637| 
DW$L$_Registers$545$E:
L259:    
DW$L$_Registers$546$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |633| 
        BF        L300,NEQ              ; |633| 
        ; branchcc occurs ; |633| 
DW$L$_Registers$546$E:
DW$L$_Registers$547$B:
        MOVW      DP,#_slem+1
        MOV       AL,@_slem+1           ; |633| 
        BF        L112,UNC              ; |633| 
        ; branch occurs ; |633| 
DW$L$_Registers$547$E:
L260:    
DW$L$_Registers$548$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |629| 
        BF        L300,NEQ              ; |629| 
        ; branchcc occurs ; |629| 
DW$L$_Registers$548$E:
DW$L$_Registers$549$B:
        MOVW      DP,#_slem
        MOV       AL,@_slem             ; |629| 
        BF        L112,UNC              ; |629| 
        ; branch occurs ; |629| 
DW$L$_Registers$549$E:
L261:    
DW$L$_Registers$550$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |624| 
        BF        L300,NEQ              ; |624| 
        ; branchcc occurs ; |624| 
DW$L$_Registers$550$E:
DW$L$_Registers$551$B:
        MOVW      DP,#_waterinoil+11
        MOV       AL,@_waterinoil+11    ; |624| 
        BF        L112,UNC              ; |624| 
        ; branch occurs ; |624| 
DW$L$_Registers$551$E:
L262:    
DW$L$_Registers$552$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |620| 
        BF        L300,NEQ              ; |620| 
        ; branchcc occurs ; |620| 
DW$L$_Registers$552$E:
DW$L$_Registers$553$B:
        LCR       #_WIOTemperatureWord  ; |620| 
        ; call occurs [#_WIOTemperatureWord] ; |620| 
        BF        L112,UNC              ; |620| 
        ; branch occurs ; |620| 
DW$L$_Registers$553$E:
L263:    
DW$L$_Registers$554$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |616| 
        BF        L300,NEQ              ; |616| 
        ; branchcc occurs ; |616| 
DW$L$_Registers$554$E:
DW$L$_Registers$555$B:
        LCR       #_WIOPPMWord          ; |616| 
        ; call occurs [#_WIOPPMWord] ; |616| 
        BF        L112,UNC              ; |616| 
        ; branch occurs ; |616| 
DW$L$_Registers$555$E:
L264:    
DW$L$_Registers$556$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |612| 
        BF        L300,NEQ              ; |612| 
        ; branchcc occurs ; |612| 
DW$L$_Registers$556$E:
DW$L$_Registers$557$B:
        LCR       #_WIOActivityWord     ; |612| 
        ; call occurs [#_WIOActivityWord] ; |612| 
        BF        L112,UNC              ; |612| 
        ; branch occurs ; |612| 
DW$L$_Registers$557$E:
L265:    
DW$L$_Registers$558$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |605| 
        BF        L300,NEQ              ; |605| 
        ; branchcc occurs ; |605| 
DW$L$_Registers$558$E:
DW$L$_Registers$559$B:
        MOVZ      AR0,AR2               ; |607| 
        SUB       AR0,#440              ; |607| 
        MOVL      XAR4,#_prewarn        ; |607| 
        BF        L278,UNC              ; |607| 
        ; branch occurs ; |607| 
DW$L$_Registers$559$E:
L266:    
DW$L$_Registers$560$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |598| 
        BF        L300,NEQ              ; |598| 
        ; branchcc occurs ; |598| 
DW$L$_Registers$560$E:
DW$L$_Registers$561$B:
        MOV       AH,AR2                ; |600| 
        MOV       T,#18                 ; |600| 
        MOVL      XAR4,#_sensor+17      ; |600| 
        SUB       AH,#412               ; |600| 
        BF        L109,UNC              ; |600| 
        ; branch occurs ; |600| 
DW$L$_Registers$561$E:
L267:    
DW$L$_Registers$562$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |591| 
        BF        L300,NEQ              ; |591| 
        ; branchcc occurs ; |591| 
DW$L$_Registers$562$E:
DW$L$_Registers$563$B:
        MOV       AL,AR2                ; |593| 
        SUB       AL,#384               ; |593| 
        LCR       #_GetRPM              ; |593| 
        ; call occurs [#_GetRPM] ; |593| 
        BF        L112,UNC              ; |593| 
        ; branch occurs ; |593| 
DW$L$_Registers$563$E:
L268:    
DW$L$_Registers$564$B:
        MOVB      AL,#2                 ; |587| 
        LCR       #_GetCheckedRPM       ; |587| 
        ; call occurs [#_GetCheckedRPM] ; |587| 
        BF        L112,UNC              ; |588| 
        ; branch occurs ; |588| 
DW$L$_Registers$564$E:
L269:    
DW$L$_Registers$565$B:
        MOVB      AL,#0
        LCR       #_GetModalRPM         ; |583| 
        ; call occurs [#_GetModalRPM] ; |583| 
        BF        L112,UNC              ; |584| 
        ; branch occurs ; |584| 
DW$L$_Registers$565$E:
L270:    
DW$L$_Registers$566$B:
        SUB       AL,#312               ; |579| 
        LCR       #_GetScaledValue      ; |579| 
        ; call occurs [#_GetScaledValue] ; |579| 
        BF        L112,UNC              ; |580| 
        ; branch occurs ; |580| 
DW$L$_Registers$566$E:
L271:    
DW$L$_Registers$567$B:
        MOV       AL,AR2                ; |573| 
        MOVL      XAR3,#_cylinders+1    ; |573| 
        SUB       AL,#298               ; |573| 
        BF        L273,UNC              ; |575| 
        ; branch occurs ; |575| 
DW$L$_Registers$567$E:
L272:    
DW$L$_Registers$568$B:
        MOV       AL,AR2                ; |567| 
        MOVL      XAR3,#_cylinders      ; |567| 
        SUB       AL,#284               ; |567| 
DW$L$_Registers$568$E:
L273:    
DW$L$_Registers$569$B:
        MOVU      ACC,AL
        LSL       ACC,2                 ; |567| 
        ADDL      XAR3,ACC
        BF        L130,UNC              ; |569| 
        ; branch occurs ; |569| 
DW$L$_Registers$569$E:
L274:    
DW$L$_Registers$570$B:
        SUB       AL,#270               ; |562| 
        LCR       #_GetCylinderDeviationValue ; |562| 
        ; call occurs [#_GetCylinderDeviationValue] ; |562| 
        BF        L112,UNC              ; |563| 
        ; branch occurs ; |563| 
DW$L$_Registers$570$E:
L275:    
DW$L$_Registers$571$B:
        SUB       AL,#256               ; |558| 
        LCR       #_GetCylinderAverageValue ; |558| 
        ; call occurs [#_GetCylinderAverageValue] ; |558| 
        BF        L112,UNC              ; |559| 
        ; branch occurs ; |559| 
DW$L$_Registers$571$E:
L276:    
DW$L$_Registers$572$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |549| 
        BF        L279,EQ               ; |549| 
        ; branchcc occurs ; |549| 
DW$L$_Registers$572$E:
DW$L$_Registers$573$B:
        MOVL      XAR4,#_DCModeInRangeIdeal ; |553| 
        MOVB      AL,#236               ; |553| 
DW$L$_Registers$573$E:
L277:    
DW$L$_Registers$574$B:
        MOVZ      AR0,AR2               ; |553| 
        SUB       AR0,AL                ; |553| 
DW$L$_Registers$574$E:
L278:    
DW$L$_Registers$575$B:
        MOV       AL,*+XAR4[AR0]        ; |553| 
        BF        L112,UNC              ; |553| 
        ; branch occurs ; |553| 
DW$L$_Registers$575$E:
L279:    
DW$L$_Registers$576$B:
        MOVL      XAR4,#_pcmodbus+5     ; |551| 
        MOVB      AL,#236               ; |551| 
        MOV       AH,*+XAR4[AR1]        ; |551| 
        MOVL      XAR4,#_DCModeInRangeIdeal ; |551| 
DW$L$_Registers$576$E:
L280:    
DW$L$_Registers$577$B:
        MOVZ      AR0,AR2               ; |551| 
        SUB       AR0,AL                ; |551| 
        MOV       *+XAR4[AR0],AH        ; |551| 
        BF        L300,UNC              ; |552| 
        ; branch occurs ; |552| 
DW$L$_Registers$577$E:
L281:    
DW$L$_Registers$578$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |541| 
        BF        L282,EQ               ; |541| 
        ; branchcc occurs ; |541| 
DW$L$_Registers$578$E:
DW$L$_Registers$579$B:
        MOVL      XAR4,#_DCModeInRangeOK ; |545| 
        MOVB      AL,#234               ; |545| 
        BF        L277,UNC              ; |545| 
        ; branch occurs ; |545| 
DW$L$_Registers$579$E:
L282:    
DW$L$_Registers$580$B:
        MOVL      XAR4,#_pcmodbus+5     ; |543| 
        MOVB      AL,#234               ; |543| 
        MOV       AH,*+XAR4[AR1]        ; |543| 
        MOVL      XAR4,#_DCModeInRangeOK ; |543| 
        BF        L280,UNC              ; |544| 
        ; branch occurs ; |544| 
DW$L$_Registers$580$E:
L283:    
DW$L$_Registers$581$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |533| 
        BF        L284,EQ               ; |533| 
        ; branchcc occurs ; |533| 
DW$L$_Registers$581$E:
DW$L$_Registers$582$B:
        MOVL      XAR4,#_DCModePeakReset ; |537| 
        MOVB      AL,#232               ; |537| 
        BF        L277,UNC              ; |537| 
        ; branch occurs ; |537| 
DW$L$_Registers$582$E:
L284:    
DW$L$_Registers$583$B:
        MOVL      XAR4,#_pcmodbus+5     ; |535| 
        MOVB      AL,#232               ; |535| 
        MOV       AH,*+XAR4[AR1]        ; |535| 
        MOVL      XAR4,#_DCModePeakReset ; |535| 
        BF        L280,UNC              ; |536| 
        ; branch occurs ; |536| 
DW$L$_Registers$583$E:
L285:    
DW$L$_Registers$584$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |525| 
        BF        L286,EQ               ; |525| 
        ; branchcc occurs ; |525| 
DW$L$_Registers$584$E:
DW$L$_Registers$585$B:
        MOVW      DP,#_DCModeCylinderComparison
        MOV       AL,@_DCModeCylinderComparison ; |529| 
        BF        L112,UNC              ; |529| 
        ; branch occurs ; |529| 
DW$L$_Registers$585$E:
L286:    
DW$L$_Registers$586$B:
        MOVL      XAR4,#_pcmodbus+5     ; |527| 
        MOVW      DP,#_DCModeCylinderComparison
        MOV       AL,*+XAR4[AR1]        ; |527| 
        MOV       @_DCModeCylinderComparison,AL ; |527| 
        BF        L300,UNC              ; |528| 
        ; branch occurs ; |528| 
DW$L$_Registers$586$E:
L287:    
DW$L$_Registers$587$B:
        MOVB      AH,#203               ; |520| 
        SUB       AL,AH                 ; |520| 
        LCR       #_GetuASCaledValue    ; |520| 
        ; call occurs [#_GetuASCaledValue] ; |520| 
        BF        L112,UNC              ; |521| 
        ; branch occurs ; |521| 
DW$L$_Registers$587$E:
L288:    
DW$L$_Registers$588$B:
        MOVB      AH,#175               ; |515| 
        MOV       AL,AR2                ; |515| 
        SUB       AL,AH                 ; |515| 
        LCR       #_Status3Flags        ; |515| 
        ; call occurs [#_Status3Flags] ; |515| 
        BF        L290,UNC              ; |517| 
        ; branch occurs ; |517| 
DW$L$_Registers$588$E:
L289:    
DW$L$_Registers$589$B:
        MOVB      AH,#146               ; |509| 
        MOV       AL,AR2                ; |509| 
        SUB       AL,AH                 ; |509| 
        LCR       #_GetStatus2Flags     ; |509| 
        ; call occurs [#_GetStatus2Flags] ; |509| 
DW$L$_Registers$589$E:
L290:    
DW$L$_Registers$590$B:
        MOVL      XAR3,XAR4             ; |509| 
        BF        L131,UNC              ; |511| 
        ; branch occurs ; |511| 
DW$L$_Registers$590$E:
L291:    
DW$L$_Registers$591$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#16                ; |456| 
        BF        L293,NEQ              ; |456| 
        ; branchcc occurs ; |456| 
DW$L$_Registers$591$E:
DW$L$_Registers$592$B:
        MOV       AL,AR2                ; |459| 
        ADDB      AL,#-117
        MOV       *-SP[38],AL           ; |459| 
        LCR       #_Status1Flags        ; |459| 
        ; call occurs [#_Status1Flags] ; |459| 
        MOVL      XAR3,XAR4             ; |459| 
        MOV       AL,*+XAR3[0]          ; |460| 
        MOVL      XAR4,#_pcmodbus+5     ; |461| 
        MOV       *-SP[39],AL           ; |460| 
        MOVL      ACC,XAR4              ; |461| 
        ADDU      ACC,AR1               ; |461| 
        MOVL      *-SP[42],ACC          ; |461| 
        MOVL      XAR4,*-SP[42]         ; |461| 
        MOV       AL,*-SP[39]           ; |461| 
        CMP       AL,*+XAR4[0]          ; |461| 
        BF        L300,EQ               ; |461| 
        ; branchcc occurs ; |461| 
DW$L$_Registers$592$E:
DW$L$_Registers$593$B:
        MOVZ      AR4,SP                ; |463| 
        MOVB      ACC,#30
        MOVB      XAR5,#0
        SUBB      XAR4,#32              ; |463| 
        LCR       #_memset              ; |463| 
        ; call occurs [#_memset] ; |463| 
        MOVZ      AR4,SP                ; |464| 
        MOV       AL,*-SP[38]           ; |464| 
        SUBB      XAR4,#36              ; |464| 
        LCR       #_InputNumtoString    ; |464| 
        ; call occurs [#_InputNumtoString] ; |464| 
        MOV       AL,*-SP[39]           ; |464| 
        ANDB      AL,#1                 ; |465| 
        BF        L292,NEQ              ; |465| 
        ; branchcc occurs ; |465| 
DW$L$_Registers$593$E:
DW$L$_Registers$594$B:
        MOVL      XAR4,*-SP[42]
        TBIT      *+XAR4[0],#0          ; |465| 
        BF        L292,NTC              ; |465| 
        ; branchcc occurs ; |465| 
DW$L$_Registers$594$E:
DW$L$_Registers$595$B:
        MOVZ      AR0,*-SP[38]          ; |469| 
        MOVB      AL,#3                 ; |469| 
        MOVL      XAR4,#_noisefilterLOAD ; |469| 
        MOV       *+XAR4[AR0],AL        ; |469| 
        MOVL      XAR4,#_damagemonignore ; |470| 
        MOV       *+XAR4[AR0],AL        ; |470| 
        MOVL      XAR4,#_checkmanalarms ; |472| 
        MOV       *+XAR4[AR0],#0        ; |472| 
DW$L$_Registers$595$E:
L292:    
DW$L$_Registers$596$B:
        MOVL      XAR4,XAR3             ; |495| 
        MOVB      AL,#1                 ; |405| 
        MOV       AH,AR1                ; |495| 
        LCR       #_ProcessRegister     ; |495| 
        ; call occurs [#_ProcessRegister] ; |495| 
        MOV       AL,AR2                ; |496| 
        ADDB      AL,#-117
        LCR       #_WriteSensorStatustoNVMEM ; |496| 
        ; call occurs [#_WriteSensorStatustoNVMEM] ; |496| 
        MOVW      DP,#_settings+10
        MOV       @_settings+10,#3      ; |497| 
        BF        L300,UNC              ; |497| 
        ; branch occurs ; |497| 
DW$L$_Registers$596$E:
L293:    
DW$L$_Registers$597$B:
        MOV       AL,AR2                ; |502| 
        ADDB      AL,#-117
        LCR       #_ReadStatus1Int      ; |502| 
        ; call occurs [#_ReadStatus1Int] ; |502| 
        BF        L112,UNC              ; |502| 
        ; branch occurs ; |502| 
DW$L$_Registers$597$E:
L294:    
DW$L$_Registers$598$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |449| 
        BF        L300,NEQ              ; |449| 
        ; branchcc occurs ; |449| 
DW$L$_Registers$598$E:
DW$L$_Registers$599$B:
        MOV       AL,AR2                ; |451| 
        ADDB      AL,#-88
        LCR       #_GetSensorDeviationValue ; |451| 
        ; call occurs [#_GetSensorDeviationValue] ; |451| 
        BF        L112,UNC              ; |451| 
        ; branch occurs ; |451| 
DW$L$_Registers$599$E:
L295:    
DW$L$_Registers$600$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |441| 
        BF        L300,NEQ              ; |441| 
        ; branchcc occurs ; |441| 
DW$L$_Registers$600$E:
DW$L$_Registers$601$B:
        MOV       AL,AR2                ; |443| 
        ADDB      AL,#-59
        LCR       #_GetEndResultValue   ; |443| 
        ; call occurs [#_GetEndResultValue] ; |443| 
        BF        L112,UNC              ; |443| 
        ; branch occurs ; |443| 
DW$L$_Registers$601$E:
L296:    
DW$L$_Registers$602$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |433| 
        BF        L300,NEQ              ; |433| 
        ; branchcc occurs ; |433| 
DW$L$_Registers$602$E:
DW$L$_Registers$603$B:
        MOV       AL,AR2                ; |435| 
        ADDB      AL,#-31
        LCR       #_GetPostCompValue    ; |435| 
        ; call occurs [#_GetPostCompValue] ; |435| 
        BF        L112,UNC              ; |435| 
        ; branch occurs ; |435| 
DW$L$_Registers$603$E:
L297:    
DW$L$_Registers$604$B:
        MOV       AL,*-SP[37]
        CMPB      AL,#3                 ; |426| 
        BF        L300,NEQ              ; |426| 
        ; branchcc occurs ; |426| 
DW$L$_Registers$604$E:
DW$L$_Registers$605$B:
        MOV       AL,AR2                ; |428| 
        ADDB      AL,#-3
        LCR       #_GetPreCompValue     ; |428| 
        ; call occurs [#_GetPreCompValue] ; |428| 
        BF        L112,UNC              ; |428| 
        ; branch occurs ; |428| 
DW$L$_Registers$605$E:
L298:    
DW$L$_Registers$606$B:
        MOVL      XAR3,#_livetime+2     ; |420| 
        MOVL      XAR4,XAR3             ; |421| 
        MOVB      AL,#1                 ; |419| 
        MOV       AH,AR1                ; |421| 
        LCR       #_ProcessRegister     ; |421| 
        ; call occurs [#_ProcessRegister] ; |421| 
        MOV       AL,*-SP[37]           ; |421| 
        CMPB      AL,#16                ; |422| 
        BF        L300,NEQ              ; |422| 
        ; branchcc occurs ; |422| 
DW$L$_Registers$606$E:
DW$L$_Registers$607$B:
        LCR       #_MinsSecsUpdate      ; |422| 
        ; call occurs [#_MinsSecsUpdate] ; |422| 
        BF        L300,UNC              ; |422| 
        ; branch occurs ; |422| 
DW$L$_Registers$607$E:
L299:    
DW$L$_Registers$608$B:
        MOVL      XAR3,#_livetime+1     ; |413| 
        MOVL      XAR4,XAR3             ; |414| 
        MOVB      AL,#1                 ; |412| 
        MOV       AH,AR1                ; |414| 
        LCR       #_ProcessRegister     ; |414| 
        ; call occurs [#_ProcessRegister] ; |414| 
        MOV       AL,*-SP[37]           ; |414| 
        CMPB      AL,#16                ; |415| 
        BF        L300,NEQ              ; |415| 
        ; branchcc occurs ; |415| 
DW$L$_Registers$608$E:
DW$L$_Registers$609$B:
        LCR       #_DateHoursUpdate     ; |415| 
        ; call occurs [#_DateHoursUpdate] ; |415| 
DW$L$_Registers$609$E:
L300:    
DW$L$_Registers$610$B:
        ADDB      XAR1,#1               ; |1557| 
        MOVW      DP,#_pcmodbus+3
        MOV       AL,AR1                ; |1557| 
        ADDB      XAR2,#1               ; |1556| 
        CMP       AL,@_pcmodbus+3       ; |1557| 
	.dwpsn	"PCModBus.c",1558,0
        BF        L36,LO                ; |1557| 
        ; branchcc occurs ; |1557| 
DW$L$_Registers$610$E:
L301:    
        SUBB      SP,#42
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"PCModBus.c",1559,1
        LRETR
        ; return occurs

DW$217	.dwtag  DW_TAG_loop
	.dwattr DW$217, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\PCModBus.asm:L36:1:1471518984")
	.dwattr DW$217, DW_AT_begin_file("PCModBus.c")
	.dwattr DW$217, DW_AT_begin_line(0x191)
	.dwattr DW$217, DW_AT_end_line(0x616)
DW$218	.dwtag  DW_TAG_loop_range
	.dwattr DW$218, DW_AT_low_pc(DW$L$_Registers$6$B)
	.dwattr DW$218, DW_AT_high_pc(DW$L$_Registers$6$E)
DW$219	.dwtag  DW_TAG_loop_range
	.dwattr DW$219, DW_AT_low_pc(DW$L$_Registers$593$B)
	.dwattr DW$219, DW_AT_high_pc(DW$L$_Registers$593$E)
DW$220	.dwtag  DW_TAG_loop_range
	.dwattr DW$220, DW_AT_low_pc(DW$L$_Registers$594$B)
	.dwattr DW$220, DW_AT_high_pc(DW$L$_Registers$594$E)
DW$221	.dwtag  DW_TAG_loop_range
	.dwattr DW$221, DW_AT_low_pc(DW$L$_Registers$595$B)
	.dwattr DW$221, DW_AT_high_pc(DW$L$_Registers$595$E)
DW$222	.dwtag  DW_TAG_loop_range
	.dwattr DW$222, DW_AT_low_pc(DW$L$_Registers$576$B)
	.dwattr DW$222, DW_AT_high_pc(DW$L$_Registers$576$E)
DW$223	.dwtag  DW_TAG_loop_range
	.dwattr DW$223, DW_AT_low_pc(DW$L$_Registers$580$B)
	.dwattr DW$223, DW_AT_high_pc(DW$L$_Registers$580$E)
DW$224	.dwtag  DW_TAG_loop_range
	.dwattr DW$224, DW_AT_low_pc(DW$L$_Registers$583$B)
	.dwattr DW$224, DW_AT_high_pc(DW$L$_Registers$583$E)
DW$225	.dwtag  DW_TAG_loop_range
	.dwattr DW$225, DW_AT_low_pc(DW$L$_Registers$354$B)
	.dwattr DW$225, DW_AT_high_pc(DW$L$_Registers$354$E)
DW$226	.dwtag  DW_TAG_loop_range
	.dwattr DW$226, DW_AT_low_pc(DW$L$_Registers$521$B)
	.dwattr DW$226, DW_AT_high_pc(DW$L$_Registers$521$E)
DW$227	.dwtag  DW_TAG_loop_range
	.dwattr DW$227, DW_AT_low_pc(DW$L$_Registers$519$B)
	.dwattr DW$227, DW_AT_high_pc(DW$L$_Registers$519$E)
DW$228	.dwtag  DW_TAG_loop_range
	.dwattr DW$228, DW_AT_low_pc(DW$L$_Registers$491$B)
	.dwattr DW$228, DW_AT_high_pc(DW$L$_Registers$491$E)
DW$229	.dwtag  DW_TAG_loop_range
	.dwattr DW$229, DW_AT_low_pc(DW$L$_Registers$487$B)
	.dwattr DW$229, DW_AT_high_pc(DW$L$_Registers$487$E)
DW$230	.dwtag  DW_TAG_loop_range
	.dwattr DW$230, DW_AT_low_pc(DW$L$_Registers$488$B)
	.dwattr DW$230, DW_AT_high_pc(DW$L$_Registers$488$E)
DW$231	.dwtag  DW_TAG_loop_range
	.dwattr DW$231, DW_AT_low_pc(DW$L$_Registers$484$B)
	.dwattr DW$231, DW_AT_high_pc(DW$L$_Registers$484$E)
DW$232	.dwtag  DW_TAG_loop_range
	.dwattr DW$232, DW_AT_low_pc(DW$L$_Registers$485$B)
	.dwattr DW$232, DW_AT_high_pc(DW$L$_Registers$485$E)
DW$233	.dwtag  DW_TAG_loop_range
	.dwattr DW$233, DW_AT_low_pc(DW$L$_Registers$476$B)
	.dwattr DW$233, DW_AT_high_pc(DW$L$_Registers$476$E)
DW$234	.dwtag  DW_TAG_loop_range
	.dwattr DW$234, DW_AT_low_pc(DW$L$_Registers$471$B)
	.dwattr DW$234, DW_AT_high_pc(DW$L$_Registers$471$E)
DW$235	.dwtag  DW_TAG_loop_range
	.dwattr DW$235, DW_AT_low_pc(DW$L$_Registers$467$B)
	.dwattr DW$235, DW_AT_high_pc(DW$L$_Registers$467$E)
DW$236	.dwtag  DW_TAG_loop_range
	.dwattr DW$236, DW_AT_low_pc(DW$L$_Registers$468$B)
	.dwattr DW$236, DW_AT_high_pc(DW$L$_Registers$468$E)
DW$237	.dwtag  DW_TAG_loop_range
	.dwattr DW$237, DW_AT_low_pc(DW$L$_Registers$464$B)
	.dwattr DW$237, DW_AT_high_pc(DW$L$_Registers$464$E)
DW$238	.dwtag  DW_TAG_loop_range
	.dwattr DW$238, DW_AT_low_pc(DW$L$_Registers$351$B)
	.dwattr DW$238, DW_AT_high_pc(DW$L$_Registers$351$E)
DW$239	.dwtag  DW_TAG_loop_range
	.dwattr DW$239, DW_AT_low_pc(DW$L$_Registers$352$B)
	.dwattr DW$239, DW_AT_high_pc(DW$L$_Registers$352$E)
DW$240	.dwtag  DW_TAG_loop_range
	.dwattr DW$240, DW_AT_low_pc(DW$L$_Registers$353$B)
	.dwattr DW$240, DW_AT_high_pc(DW$L$_Registers$353$E)
DW$241	.dwtag  DW_TAG_loop_range
	.dwattr DW$241, DW_AT_low_pc(DW$L$_Registers$465$B)
	.dwattr DW$241, DW_AT_high_pc(DW$L$_Registers$465$E)
DW$242	.dwtag  DW_TAG_loop_range
	.dwattr DW$242, DW_AT_low_pc(DW$L$_Registers$460$B)
	.dwattr DW$242, DW_AT_high_pc(DW$L$_Registers$460$E)
DW$243	.dwtag  DW_TAG_loop_range
	.dwattr DW$243, DW_AT_low_pc(DW$L$_Registers$449$B)
	.dwattr DW$243, DW_AT_high_pc(DW$L$_Registers$449$E)
DW$244	.dwtag  DW_TAG_loop_range
	.dwattr DW$244, DW_AT_low_pc(DW$L$_Registers$436$B)
	.dwattr DW$244, DW_AT_high_pc(DW$L$_Registers$436$E)
DW$245	.dwtag  DW_TAG_loop_range
	.dwattr DW$245, DW_AT_low_pc(DW$L$_Registers$407$B)
	.dwattr DW$245, DW_AT_high_pc(DW$L$_Registers$407$E)
DW$246	.dwtag  DW_TAG_loop_range
	.dwattr DW$246, DW_AT_low_pc(DW$L$_Registers$381$B)
	.dwattr DW$246, DW_AT_high_pc(DW$L$_Registers$381$E)
DW$247	.dwtag  DW_TAG_loop_range
	.dwattr DW$247, DW_AT_low_pc(DW$L$_Registers$455$B)
	.dwattr DW$247, DW_AT_high_pc(DW$L$_Registers$455$E)
DW$248	.dwtag  DW_TAG_loop_range
	.dwattr DW$248, DW_AT_low_pc(DW$L$_Registers$456$B)
	.dwattr DW$248, DW_AT_high_pc(DW$L$_Registers$456$E)
DW$249	.dwtag  DW_TAG_loop_range
	.dwattr DW$249, DW_AT_low_pc(DW$L$_Registers$457$B)
	.dwattr DW$249, DW_AT_high_pc(DW$L$_Registers$457$E)
DW$250	.dwtag  DW_TAG_loop_range
	.dwattr DW$250, DW_AT_low_pc(DW$L$_Registers$370$B)
	.dwattr DW$250, DW_AT_high_pc(DW$L$_Registers$370$E)
DW$251	.dwtag  DW_TAG_loop_range
	.dwattr DW$251, DW_AT_low_pc(DW$L$_Registers$458$B)
	.dwattr DW$251, DW_AT_high_pc(DW$L$_Registers$458$E)
DW$252	.dwtag  DW_TAG_loop_range
	.dwattr DW$252, DW_AT_low_pc(DW$L$_Registers$459$B)
	.dwattr DW$252, DW_AT_high_pc(DW$L$_Registers$459$E)
DW$253	.dwtag  DW_TAG_loop_range
	.dwattr DW$253, DW_AT_low_pc(DW$L$_Registers$333$B)
	.dwattr DW$253, DW_AT_high_pc(DW$L$_Registers$333$E)
DW$254	.dwtag  DW_TAG_loop_range
	.dwattr DW$254, DW_AT_low_pc(DW$L$_Registers$334$B)
	.dwattr DW$254, DW_AT_high_pc(DW$L$_Registers$334$E)
DW$255	.dwtag  DW_TAG_loop_range
	.dwattr DW$255, DW_AT_low_pc(DW$L$_Registers$335$B)
	.dwattr DW$255, DW_AT_high_pc(DW$L$_Registers$335$E)
DW$256	.dwtag  DW_TAG_loop_range
	.dwattr DW$256, DW_AT_low_pc(DW$L$_Registers$325$B)
	.dwattr DW$256, DW_AT_high_pc(DW$L$_Registers$325$E)
DW$257	.dwtag  DW_TAG_loop_range
	.dwattr DW$257, DW_AT_low_pc(DW$L$_Registers$326$B)
	.dwattr DW$257, DW_AT_high_pc(DW$L$_Registers$326$E)
DW$258	.dwtag  DW_TAG_loop_range
	.dwattr DW$258, DW_AT_low_pc(DW$L$_Registers$327$B)
	.dwattr DW$258, DW_AT_high_pc(DW$L$_Registers$327$E)
DW$259	.dwtag  DW_TAG_loop_range
	.dwattr DW$259, DW_AT_low_pc(DW$L$_Registers$328$B)
	.dwattr DW$259, DW_AT_high_pc(DW$L$_Registers$328$E)
DW$260	.dwtag  DW_TAG_loop_range
	.dwattr DW$260, DW_AT_low_pc(DW$L$_Registers$329$B)
	.dwattr DW$260, DW_AT_high_pc(DW$L$_Registers$329$E)
DW$261	.dwtag  DW_TAG_loop_range
	.dwattr DW$261, DW_AT_low_pc(DW$L$_Registers$330$B)
	.dwattr DW$261, DW_AT_high_pc(DW$L$_Registers$330$E)
DW$262	.dwtag  DW_TAG_loop_range
	.dwattr DW$262, DW_AT_low_pc(DW$L$_Registers$588$B)
	.dwattr DW$262, DW_AT_high_pc(DW$L$_Registers$588$E)
DW$263	.dwtag  DW_TAG_loop_range
	.dwattr DW$263, DW_AT_low_pc(DW$L$_Registers$589$B)
	.dwattr DW$263, DW_AT_high_pc(DW$L$_Registers$589$E)
DW$264	.dwtag  DW_TAG_loop_range
	.dwattr DW$264, DW_AT_low_pc(DW$L$_Registers$567$B)
	.dwattr DW$264, DW_AT_high_pc(DW$L$_Registers$567$E)
DW$265	.dwtag  DW_TAG_loop_range
	.dwattr DW$265, DW_AT_low_pc(DW$L$_Registers$568$B)
	.dwattr DW$265, DW_AT_high_pc(DW$L$_Registers$568$E)
DW$266	.dwtag  DW_TAG_loop_range
	.dwattr DW$266, DW_AT_low_pc(DW$L$_Registers$316$B)
	.dwattr DW$266, DW_AT_high_pc(DW$L$_Registers$316$E)
DW$267	.dwtag  DW_TAG_loop_range
	.dwattr DW$267, DW_AT_low_pc(DW$L$_Registers$297$B)
	.dwattr DW$267, DW_AT_high_pc(DW$L$_Registers$297$E)
DW$268	.dwtag  DW_TAG_loop_range
	.dwattr DW$268, DW_AT_low_pc(DW$L$_Registers$298$B)
	.dwattr DW$268, DW_AT_high_pc(DW$L$_Registers$298$E)
DW$269	.dwtag  DW_TAG_loop_range
	.dwattr DW$269, DW_AT_low_pc(DW$L$_Registers$299$B)
	.dwattr DW$269, DW_AT_high_pc(DW$L$_Registers$299$E)
DW$270	.dwtag  DW_TAG_loop_range
	.dwattr DW$270, DW_AT_low_pc(DW$L$_Registers$317$B)
	.dwattr DW$270, DW_AT_high_pc(DW$L$_Registers$317$E)
DW$271	.dwtag  DW_TAG_loop_range
	.dwattr DW$271, DW_AT_low_pc(DW$L$_Registers$318$B)
	.dwattr DW$271, DW_AT_high_pc(DW$L$_Registers$318$E)
DW$272	.dwtag  DW_TAG_loop_range
	.dwattr DW$272, DW_AT_low_pc(DW$L$_Registers$319$B)
	.dwattr DW$272, DW_AT_high_pc(DW$L$_Registers$319$E)
DW$273	.dwtag  DW_TAG_loop_range
	.dwattr DW$273, DW_AT_low_pc(DW$L$_Registers$569$B)
	.dwattr DW$273, DW_AT_high_pc(DW$L$_Registers$569$E)
DW$274	.dwtag  DW_TAG_loop_range
	.dwattr DW$274, DW_AT_low_pc(DW$L$_Registers$320$B)
	.dwattr DW$274, DW_AT_high_pc(DW$L$_Registers$320$E)
DW$275	.dwtag  DW_TAG_loop_range
	.dwattr DW$275, DW_AT_low_pc(DW$L$_Registers$590$B)
	.dwattr DW$275, DW_AT_high_pc(DW$L$_Registers$590$E)
DW$276	.dwtag  DW_TAG_loop_range
	.dwattr DW$276, DW_AT_low_pc(DW$L$_Registers$306$B)
	.dwattr DW$276, DW_AT_high_pc(DW$L$_Registers$306$E)
DW$277	.dwtag  DW_TAG_loop_range
	.dwattr DW$277, DW_AT_low_pc(DW$L$_Registers$307$B)
	.dwattr DW$277, DW_AT_high_pc(DW$L$_Registers$307$E)
DW$278	.dwtag  DW_TAG_loop_range
	.dwattr DW$278, DW_AT_low_pc(DW$L$_Registers$308$B)
	.dwattr DW$278, DW_AT_high_pc(DW$L$_Registers$308$E)
DW$279	.dwtag  DW_TAG_loop_range
	.dwattr DW$279, DW_AT_low_pc(DW$L$_Registers$305$B)
	.dwattr DW$279, DW_AT_high_pc(DW$L$_Registers$305$E)
DW$280	.dwtag  DW_TAG_loop_range
	.dwattr DW$280, DW_AT_low_pc(DW$L$_Registers$309$B)
	.dwattr DW$280, DW_AT_high_pc(DW$L$_Registers$309$E)
DW$281	.dwtag  DW_TAG_loop_range
	.dwattr DW$281, DW_AT_low_pc(DW$L$_Registers$300$B)
	.dwattr DW$281, DW_AT_high_pc(DW$L$_Registers$300$E)
DW$282	.dwtag  DW_TAG_loop_range
	.dwattr DW$282, DW_AT_low_pc(DW$L$_Registers$301$B)
	.dwattr DW$282, DW_AT_high_pc(DW$L$_Registers$301$E)
DW$283	.dwtag  DW_TAG_loop_range
	.dwattr DW$283, DW_AT_low_pc(DW$L$_Registers$302$B)
	.dwattr DW$283, DW_AT_high_pc(DW$L$_Registers$302$E)
DW$284	.dwtag  DW_TAG_loop_range
	.dwattr DW$284, DW_AT_low_pc(DW$L$_Registers$303$B)
	.dwattr DW$284, DW_AT_high_pc(DW$L$_Registers$303$E)
DW$285	.dwtag  DW_TAG_loop_range
	.dwattr DW$285, DW_AT_low_pc(DW$L$_Registers$304$B)
	.dwattr DW$285, DW_AT_high_pc(DW$L$_Registers$304$E)
DW$286	.dwtag  DW_TAG_loop_range
	.dwattr DW$286, DW_AT_low_pc(DW$L$_Registers$310$B)
	.dwattr DW$286, DW_AT_high_pc(DW$L$_Registers$310$E)
DW$287	.dwtag  DW_TAG_loop_range
	.dwattr DW$287, DW_AT_low_pc(DW$L$_Registers$311$B)
	.dwattr DW$287, DW_AT_high_pc(DW$L$_Registers$311$E)
DW$288	.dwtag  DW_TAG_loop_range
	.dwattr DW$288, DW_AT_low_pc(DW$L$_Registers$312$B)
	.dwattr DW$288, DW_AT_high_pc(DW$L$_Registers$312$E)
DW$289	.dwtag  DW_TAG_loop_range
	.dwattr DW$289, DW_AT_low_pc(DW$L$_Registers$313$B)
	.dwattr DW$289, DW_AT_high_pc(DW$L$_Registers$313$E)
DW$290	.dwtag  DW_TAG_loop_range
	.dwattr DW$290, DW_AT_low_pc(DW$L$_Registers$314$B)
	.dwattr DW$290, DW_AT_high_pc(DW$L$_Registers$314$E)
DW$291	.dwtag  DW_TAG_loop_range
	.dwattr DW$291, DW_AT_low_pc(DW$L$_Registers$346$B)
	.dwattr DW$291, DW_AT_high_pc(DW$L$_Registers$346$E)
DW$292	.dwtag  DW_TAG_loop_range
	.dwattr DW$292, DW_AT_low_pc(DW$L$_Registers$347$B)
	.dwattr DW$292, DW_AT_high_pc(DW$L$_Registers$347$E)
DW$293	.dwtag  DW_TAG_loop_range
	.dwattr DW$293, DW_AT_low_pc(DW$L$_Registers$591$B)
	.dwattr DW$293, DW_AT_high_pc(DW$L$_Registers$591$E)
DW$294	.dwtag  DW_TAG_loop_range
	.dwattr DW$294, DW_AT_low_pc(DW$L$_Registers$584$B)
	.dwattr DW$294, DW_AT_high_pc(DW$L$_Registers$584$E)
DW$295	.dwtag  DW_TAG_loop_range
	.dwattr DW$295, DW_AT_low_pc(DW$L$_Registers$581$B)
	.dwattr DW$295, DW_AT_high_pc(DW$L$_Registers$581$E)
DW$296	.dwtag  DW_TAG_loop_range
	.dwattr DW$296, DW_AT_low_pc(DW$L$_Registers$578$B)
	.dwattr DW$296, DW_AT_high_pc(DW$L$_Registers$578$E)
DW$297	.dwtag  DW_TAG_loop_range
	.dwattr DW$297, DW_AT_low_pc(DW$L$_Registers$572$B)
	.dwattr DW$297, DW_AT_high_pc(DW$L$_Registers$572$E)
DW$298	.dwtag  DW_TAG_loop_range
	.dwattr DW$298, DW_AT_low_pc(DW$L$_Registers$573$B)
	.dwattr DW$298, DW_AT_high_pc(DW$L$_Registers$573$E)
DW$299	.dwtag  DW_TAG_loop_range
	.dwattr DW$299, DW_AT_low_pc(DW$L$_Registers$579$B)
	.dwattr DW$299, DW_AT_high_pc(DW$L$_Registers$579$E)
DW$300	.dwtag  DW_TAG_loop_range
	.dwattr DW$300, DW_AT_low_pc(DW$L$_Registers$582$B)
	.dwattr DW$300, DW_AT_high_pc(DW$L$_Registers$582$E)
DW$301	.dwtag  DW_TAG_loop_range
	.dwattr DW$301, DW_AT_low_pc(DW$L$_Registers$368$B)
	.dwattr DW$301, DW_AT_high_pc(DW$L$_Registers$368$E)
DW$302	.dwtag  DW_TAG_loop_range
	.dwattr DW$302, DW_AT_low_pc(DW$L$_Registers$294$B)
	.dwattr DW$302, DW_AT_high_pc(DW$L$_Registers$294$E)
DW$303	.dwtag  DW_TAG_loop_range
	.dwattr DW$303, DW_AT_low_pc(DW$L$_Registers$295$B)
	.dwattr DW$303, DW_AT_high_pc(DW$L$_Registers$295$E)
DW$304	.dwtag  DW_TAG_loop_range
	.dwattr DW$304, DW_AT_low_pc(DW$L$_Registers$337$B)
	.dwattr DW$304, DW_AT_high_pc(DW$L$_Registers$337$E)
DW$305	.dwtag  DW_TAG_loop_range
	.dwattr DW$305, DW_AT_low_pc(DW$L$_Registers$369$B)
	.dwattr DW$305, DW_AT_high_pc(DW$L$_Registers$369$E)
DW$306	.dwtag  DW_TAG_loop_range
	.dwattr DW$306, DW_AT_low_pc(DW$L$_Registers$388$B)
	.dwattr DW$306, DW_AT_high_pc(DW$L$_Registers$388$E)
DW$307	.dwtag  DW_TAG_loop_range
	.dwattr DW$307, DW_AT_low_pc(DW$L$_Registers$514$B)
	.dwattr DW$307, DW_AT_high_pc(DW$L$_Registers$514$E)
DW$308	.dwtag  DW_TAG_loop_range
	.dwattr DW$308, DW_AT_low_pc(DW$L$_Registers$530$B)
	.dwattr DW$308, DW_AT_high_pc(DW$L$_Registers$530$E)
DW$309	.dwtag  DW_TAG_loop_range
	.dwattr DW$309, DW_AT_low_pc(DW$L$_Registers$532$B)
	.dwattr DW$309, DW_AT_high_pc(DW$L$_Registers$532$E)
DW$310	.dwtag  DW_TAG_loop_range
	.dwattr DW$310, DW_AT_low_pc(DW$L$_Registers$534$B)
	.dwattr DW$310, DW_AT_high_pc(DW$L$_Registers$534$E)
DW$311	.dwtag  DW_TAG_loop_range
	.dwattr DW$311, DW_AT_low_pc(DW$L$_Registers$559$B)
	.dwattr DW$311, DW_AT_high_pc(DW$L$_Registers$559$E)
DW$312	.dwtag  DW_TAG_loop_range
	.dwattr DW$312, DW_AT_low_pc(DW$L$_Registers$574$B)
	.dwattr DW$312, DW_AT_high_pc(DW$L$_Registers$574$E)
DW$313	.dwtag  DW_TAG_loop_range
	.dwattr DW$313, DW_AT_low_pc(DW$L$_Registers$535$B)
	.dwattr DW$313, DW_AT_high_pc(DW$L$_Registers$535$E)
DW$314	.dwtag  DW_TAG_loop_range
	.dwattr DW$314, DW_AT_low_pc(DW$L$_Registers$523$B)
	.dwattr DW$314, DW_AT_high_pc(DW$L$_Registers$523$E)
DW$315	.dwtag  DW_TAG_loop_range
	.dwattr DW$315, DW_AT_low_pc(DW$L$_Registers$508$B)
	.dwattr DW$315, DW_AT_high_pc(DW$L$_Registers$508$E)
DW$316	.dwtag  DW_TAG_loop_range
	.dwattr DW$316, DW_AT_low_pc(DW$L$_Registers$501$B)
	.dwattr DW$316, DW_AT_high_pc(DW$L$_Registers$501$E)
DW$317	.dwtag  DW_TAG_loop_range
	.dwattr DW$317, DW_AT_low_pc(DW$L$_Registers$498$B)
	.dwattr DW$317, DW_AT_high_pc(DW$L$_Registers$498$E)
DW$318	.dwtag  DW_TAG_loop_range
	.dwattr DW$318, DW_AT_low_pc(DW$L$_Registers$495$B)
	.dwattr DW$318, DW_AT_high_pc(DW$L$_Registers$495$E)
DW$319	.dwtag  DW_TAG_loop_range
	.dwattr DW$319, DW_AT_low_pc(DW$L$_Registers$480$B)
	.dwattr DW$319, DW_AT_high_pc(DW$L$_Registers$480$E)
DW$320	.dwtag  DW_TAG_loop_range
	.dwattr DW$320, DW_AT_low_pc(DW$L$_Registers$475$B)
	.dwattr DW$320, DW_AT_high_pc(DW$L$_Registers$475$E)
DW$321	.dwtag  DW_TAG_loop_range
	.dwattr DW$321, DW_AT_low_pc(DW$L$_Registers$470$B)
	.dwattr DW$321, DW_AT_high_pc(DW$L$_Registers$470$E)
DW$322	.dwtag  DW_TAG_loop_range
	.dwattr DW$322, DW_AT_low_pc(DW$L$_Registers$448$B)
	.dwattr DW$322, DW_AT_high_pc(DW$L$_Registers$448$E)
DW$323	.dwtag  DW_TAG_loop_range
	.dwattr DW$323, DW_AT_low_pc(DW$L$_Registers$445$B)
	.dwattr DW$323, DW_AT_high_pc(DW$L$_Registers$445$E)
DW$324	.dwtag  DW_TAG_loop_range
	.dwattr DW$324, DW_AT_low_pc(DW$L$_Registers$441$B)
	.dwattr DW$324, DW_AT_high_pc(DW$L$_Registers$441$E)
DW$325	.dwtag  DW_TAG_loop_range
	.dwattr DW$325, DW_AT_low_pc(DW$L$_Registers$435$B)
	.dwattr DW$325, DW_AT_high_pc(DW$L$_Registers$435$E)
DW$326	.dwtag  DW_TAG_loop_range
	.dwattr DW$326, DW_AT_low_pc(DW$L$_Registers$432$B)
	.dwattr DW$326, DW_AT_high_pc(DW$L$_Registers$432$E)
DW$327	.dwtag  DW_TAG_loop_range
	.dwattr DW$327, DW_AT_low_pc(DW$L$_Registers$418$B)
	.dwattr DW$327, DW_AT_high_pc(DW$L$_Registers$418$E)
DW$328	.dwtag  DW_TAG_loop_range
	.dwattr DW$328, DW_AT_low_pc(DW$L$_Registers$415$B)
	.dwattr DW$328, DW_AT_high_pc(DW$L$_Registers$415$E)
DW$329	.dwtag  DW_TAG_loop_range
	.dwattr DW$329, DW_AT_low_pc(DW$L$_Registers$396$B)
	.dwattr DW$329, DW_AT_high_pc(DW$L$_Registers$396$E)
DW$330	.dwtag  DW_TAG_loop_range
	.dwattr DW$330, DW_AT_low_pc(DW$L$_Registers$397$B)
	.dwattr DW$330, DW_AT_high_pc(DW$L$_Registers$397$E)
DW$331	.dwtag  DW_TAG_loop_range
	.dwattr DW$331, DW_AT_low_pc(DW$L$_Registers$402$B)
	.dwattr DW$331, DW_AT_high_pc(DW$L$_Registers$402$E)
DW$332	.dwtag  DW_TAG_loop_range
	.dwattr DW$332, DW_AT_low_pc(DW$L$_Registers$408$B)
	.dwattr DW$332, DW_AT_high_pc(DW$L$_Registers$408$E)
DW$333	.dwtag  DW_TAG_loop_range
	.dwattr DW$333, DW_AT_low_pc(DW$L$_Registers$384$B)
	.dwattr DW$333, DW_AT_high_pc(DW$L$_Registers$384$E)
DW$334	.dwtag  DW_TAG_loop_range
	.dwattr DW$334, DW_AT_low_pc(DW$L$_Registers$365$B)
	.dwattr DW$334, DW_AT_high_pc(DW$L$_Registers$365$E)
DW$335	.dwtag  DW_TAG_loop_range
	.dwattr DW$335, DW_AT_low_pc(DW$L$_Registers$362$B)
	.dwattr DW$335, DW_AT_high_pc(DW$L$_Registers$362$E)
DW$336	.dwtag  DW_TAG_loop_range
	.dwattr DW$336, DW_AT_low_pc(DW$L$_Registers$355$B)
	.dwattr DW$336, DW_AT_high_pc(DW$L$_Registers$355$E)
DW$337	.dwtag  DW_TAG_loop_range
	.dwattr DW$337, DW_AT_low_pc(DW$L$_Registers$343$B)
	.dwattr DW$337, DW_AT_high_pc(DW$L$_Registers$343$E)
DW$338	.dwtag  DW_TAG_loop_range
	.dwattr DW$338, DW_AT_low_pc(DW$L$_Registers$322$B)
	.dwattr DW$338, DW_AT_high_pc(DW$L$_Registers$322$E)
DW$339	.dwtag  DW_TAG_loop_range
	.dwattr DW$339, DW_AT_low_pc(DW$L$_Registers$285$B)
	.dwattr DW$339, DW_AT_high_pc(DW$L$_Registers$285$E)
DW$340	.dwtag  DW_TAG_loop_range
	.dwattr DW$340, DW_AT_low_pc(DW$L$_Registers$286$B)
	.dwattr DW$340, DW_AT_high_pc(DW$L$_Registers$286$E)
DW$341	.dwtag  DW_TAG_loop_range
	.dwattr DW$341, DW_AT_low_pc(DW$L$_Registers$293$B)
	.dwattr DW$341, DW_AT_high_pc(DW$L$_Registers$293$E)
DW$342	.dwtag  DW_TAG_loop_range
	.dwattr DW$342, DW_AT_low_pc(DW$L$_Registers$287$B)
	.dwattr DW$342, DW_AT_high_pc(DW$L$_Registers$287$E)
DW$343	.dwtag  DW_TAG_loop_range
	.dwattr DW$343, DW_AT_low_pc(DW$L$_Registers$561$B)
	.dwattr DW$343, DW_AT_high_pc(DW$L$_Registers$561$E)
DW$344	.dwtag  DW_TAG_loop_range
	.dwattr DW$344, DW_AT_low_pc(DW$L$_Registers$282$B)
	.dwattr DW$344, DW_AT_high_pc(DW$L$_Registers$282$E)
DW$345	.dwtag  DW_TAG_loop_range
	.dwattr DW$345, DW_AT_low_pc(DW$L$_Registers$283$B)
	.dwattr DW$345, DW_AT_high_pc(DW$L$_Registers$283$E)
DW$346	.dwtag  DW_TAG_loop_range
	.dwattr DW$346, DW_AT_low_pc(DW$L$_Registers$284$B)
	.dwattr DW$346, DW_AT_high_pc(DW$L$_Registers$284$E)
DW$347	.dwtag  DW_TAG_loop_range
	.dwattr DW$347, DW_AT_low_pc(DW$L$_Registers$288$B)
	.dwattr DW$347, DW_AT_high_pc(DW$L$_Registers$288$E)
DW$348	.dwtag  DW_TAG_loop_range
	.dwattr DW$348, DW_AT_low_pc(DW$L$_Registers$289$B)
	.dwattr DW$348, DW_AT_high_pc(DW$L$_Registers$289$E)
DW$349	.dwtag  DW_TAG_loop_range
	.dwattr DW$349, DW_AT_low_pc(DW$L$_Registers$539$B)
	.dwattr DW$349, DW_AT_high_pc(DW$L$_Registers$539$E)
DW$350	.dwtag  DW_TAG_loop_range
	.dwattr DW$350, DW_AT_low_pc(DW$L$_Registers$224$B)
	.dwattr DW$350, DW_AT_high_pc(DW$L$_Registers$224$E)
DW$351	.dwtag  DW_TAG_loop_range
	.dwattr DW$351, DW_AT_low_pc(DW$L$_Registers$225$B)
	.dwattr DW$351, DW_AT_high_pc(DW$L$_Registers$225$E)
DW$352	.dwtag  DW_TAG_loop_range
	.dwattr DW$352, DW_AT_low_pc(DW$L$_Registers$226$B)
	.dwattr DW$352, DW_AT_high_pc(DW$L$_Registers$226$E)
DW$353	.dwtag  DW_TAG_loop_range
	.dwattr DW$353, DW_AT_low_pc(DW$L$_Registers$237$B)
	.dwattr DW$353, DW_AT_high_pc(DW$L$_Registers$237$E)
DW$354	.dwtag  DW_TAG_loop_range
	.dwattr DW$354, DW_AT_low_pc(DW$L$_Registers$239$B)
	.dwattr DW$354, DW_AT_high_pc(DW$L$_Registers$239$E)
DW$355	.dwtag  DW_TAG_loop_range
	.dwattr DW$355, DW_AT_low_pc(DW$L$_Registers$262$B)
	.dwattr DW$355, DW_AT_high_pc(DW$L$_Registers$262$E)
DW$356	.dwtag  DW_TAG_loop_range
	.dwattr DW$356, DW_AT_low_pc(DW$L$_Registers$263$B)
	.dwattr DW$356, DW_AT_high_pc(DW$L$_Registers$263$E)
DW$357	.dwtag  DW_TAG_loop_range
	.dwattr DW$357, DW_AT_low_pc(DW$L$_Registers$264$B)
	.dwattr DW$357, DW_AT_high_pc(DW$L$_Registers$264$E)
DW$358	.dwtag  DW_TAG_loop_range
	.dwattr DW$358, DW_AT_low_pc(DW$L$_Registers$265$B)
	.dwattr DW$358, DW_AT_high_pc(DW$L$_Registers$265$E)
DW$359	.dwtag  DW_TAG_loop_range
	.dwattr DW$359, DW_AT_low_pc(DW$L$_Registers$266$B)
	.dwattr DW$359, DW_AT_high_pc(DW$L$_Registers$266$E)
DW$360	.dwtag  DW_TAG_loop_range
	.dwattr DW$360, DW_AT_low_pc(DW$L$_Registers$267$B)
	.dwattr DW$360, DW_AT_high_pc(DW$L$_Registers$267$E)
DW$361	.dwtag  DW_TAG_loop_range
	.dwattr DW$361, DW_AT_low_pc(DW$L$_Registers$268$B)
	.dwattr DW$361, DW_AT_high_pc(DW$L$_Registers$268$E)
DW$362	.dwtag  DW_TAG_loop_range
	.dwattr DW$362, DW_AT_low_pc(DW$L$_Registers$269$B)
	.dwattr DW$362, DW_AT_high_pc(DW$L$_Registers$269$E)
DW$363	.dwtag  DW_TAG_loop_range
	.dwattr DW$363, DW_AT_low_pc(DW$L$_Registers$270$B)
	.dwattr DW$363, DW_AT_high_pc(DW$L$_Registers$270$E)
DW$364	.dwtag  DW_TAG_loop_range
	.dwattr DW$364, DW_AT_low_pc(DW$L$_Registers$271$B)
	.dwattr DW$364, DW_AT_high_pc(DW$L$_Registers$271$E)
DW$365	.dwtag  DW_TAG_loop_range
	.dwattr DW$365, DW_AT_low_pc(DW$L$_Registers$272$B)
	.dwattr DW$365, DW_AT_high_pc(DW$L$_Registers$272$E)
DW$366	.dwtag  DW_TAG_loop_range
	.dwattr DW$366, DW_AT_low_pc(DW$L$_Registers$273$B)
	.dwattr DW$366, DW_AT_high_pc(DW$L$_Registers$273$E)
DW$367	.dwtag  DW_TAG_loop_range
	.dwattr DW$367, DW_AT_low_pc(DW$L$_Registers$274$B)
	.dwattr DW$367, DW_AT_high_pc(DW$L$_Registers$274$E)
DW$368	.dwtag  DW_TAG_loop_range
	.dwattr DW$368, DW_AT_low_pc(DW$L$_Registers$275$B)
	.dwattr DW$368, DW_AT_high_pc(DW$L$_Registers$275$E)
DW$369	.dwtag  DW_TAG_loop_range
	.dwattr DW$369, DW_AT_low_pc(DW$L$_Registers$276$B)
	.dwattr DW$369, DW_AT_high_pc(DW$L$_Registers$276$E)
DW$370	.dwtag  DW_TAG_loop_range
	.dwattr DW$370, DW_AT_low_pc(DW$L$_Registers$277$B)
	.dwattr DW$370, DW_AT_high_pc(DW$L$_Registers$277$E)
DW$371	.dwtag  DW_TAG_loop_range
	.dwattr DW$371, DW_AT_low_pc(DW$L$_Registers$278$B)
	.dwattr DW$371, DW_AT_high_pc(DW$L$_Registers$278$E)
DW$372	.dwtag  DW_TAG_loop_range
	.dwattr DW$372, DW_AT_low_pc(DW$L$_Registers$279$B)
	.dwattr DW$372, DW_AT_high_pc(DW$L$_Registers$279$E)
DW$373	.dwtag  DW_TAG_loop_range
	.dwattr DW$373, DW_AT_low_pc(DW$L$_Registers$280$B)
	.dwattr DW$373, DW_AT_high_pc(DW$L$_Registers$280$E)
DW$374	.dwtag  DW_TAG_loop_range
	.dwattr DW$374, DW_AT_low_pc(DW$L$_Registers$281$B)
	.dwattr DW$374, DW_AT_high_pc(DW$L$_Registers$281$E)
DW$375	.dwtag  DW_TAG_loop_range
	.dwattr DW$375, DW_AT_low_pc(DW$L$_Registers$290$B)
	.dwattr DW$375, DW_AT_high_pc(DW$L$_Registers$290$E)
DW$376	.dwtag  DW_TAG_loop_range
	.dwattr DW$376, DW_AT_low_pc(DW$L$_Registers$323$B)
	.dwattr DW$376, DW_AT_high_pc(DW$L$_Registers$323$E)
DW$377	.dwtag  DW_TAG_loop_range
	.dwattr DW$377, DW_AT_low_pc(DW$L$_Registers$338$B)
	.dwattr DW$377, DW_AT_high_pc(DW$L$_Registers$338$E)
DW$378	.dwtag  DW_TAG_loop_range
	.dwattr DW$378, DW_AT_low_pc(DW$L$_Registers$339$B)
	.dwattr DW$378, DW_AT_high_pc(DW$L$_Registers$339$E)
DW$379	.dwtag  DW_TAG_loop_range
	.dwattr DW$379, DW_AT_low_pc(DW$L$_Registers$340$B)
	.dwattr DW$379, DW_AT_high_pc(DW$L$_Registers$340$E)
DW$380	.dwtag  DW_TAG_loop_range
	.dwattr DW$380, DW_AT_low_pc(DW$L$_Registers$341$B)
	.dwattr DW$380, DW_AT_high_pc(DW$L$_Registers$341$E)
DW$381	.dwtag  DW_TAG_loop_range
	.dwattr DW$381, DW_AT_low_pc(DW$L$_Registers$342$B)
	.dwattr DW$381, DW_AT_high_pc(DW$L$_Registers$342$E)
DW$382	.dwtag  DW_TAG_loop_range
	.dwattr DW$382, DW_AT_low_pc(DW$L$_Registers$344$B)
	.dwattr DW$382, DW_AT_high_pc(DW$L$_Registers$344$E)
DW$383	.dwtag  DW_TAG_loop_range
	.dwattr DW$383, DW_AT_low_pc(DW$L$_Registers$356$B)
	.dwattr DW$383, DW_AT_high_pc(DW$L$_Registers$356$E)
DW$384	.dwtag  DW_TAG_loop_range
	.dwattr DW$384, DW_AT_low_pc(DW$L$_Registers$358$B)
	.dwattr DW$384, DW_AT_high_pc(DW$L$_Registers$358$E)
DW$385	.dwtag  DW_TAG_loop_range
	.dwattr DW$385, DW_AT_low_pc(DW$L$_Registers$363$B)
	.dwattr DW$385, DW_AT_high_pc(DW$L$_Registers$363$E)
DW$386	.dwtag  DW_TAG_loop_range
	.dwattr DW$386, DW_AT_low_pc(DW$L$_Registers$366$B)
	.dwattr DW$386, DW_AT_high_pc(DW$L$_Registers$366$E)
DW$387	.dwtag  DW_TAG_loop_range
	.dwattr DW$387, DW_AT_low_pc(DW$L$_Registers$385$B)
	.dwattr DW$387, DW_AT_high_pc(DW$L$_Registers$385$E)
DW$388	.dwtag  DW_TAG_loop_range
	.dwattr DW$388, DW_AT_low_pc(DW$L$_Registers$390$B)
	.dwattr DW$388, DW_AT_high_pc(DW$L$_Registers$390$E)
DW$389	.dwtag  DW_TAG_loop_range
	.dwattr DW$389, DW_AT_low_pc(DW$L$_Registers$392$B)
	.dwattr DW$389, DW_AT_high_pc(DW$L$_Registers$392$E)
DW$390	.dwtag  DW_TAG_loop_range
	.dwattr DW$390, DW_AT_low_pc(DW$L$_Registers$414$B)
	.dwattr DW$390, DW_AT_high_pc(DW$L$_Registers$414$E)
DW$391	.dwtag  DW_TAG_loop_range
	.dwattr DW$391, DW_AT_low_pc(DW$L$_Registers$416$B)
	.dwattr DW$391, DW_AT_high_pc(DW$L$_Registers$416$E)
DW$392	.dwtag  DW_TAG_loop_range
	.dwattr DW$392, DW_AT_low_pc(DW$L$_Registers$419$B)
	.dwattr DW$392, DW_AT_high_pc(DW$L$_Registers$419$E)
DW$393	.dwtag  DW_TAG_loop_range
	.dwattr DW$393, DW_AT_low_pc(DW$L$_Registers$425$B)
	.dwattr DW$393, DW_AT_high_pc(DW$L$_Registers$425$E)
DW$394	.dwtag  DW_TAG_loop_range
	.dwattr DW$394, DW_AT_low_pc(DW$L$_Registers$433$B)
	.dwattr DW$394, DW_AT_high_pc(DW$L$_Registers$433$E)
DW$395	.dwtag  DW_TAG_loop_range
	.dwattr DW$395, DW_AT_low_pc(DW$L$_Registers$440$B)
	.dwattr DW$395, DW_AT_high_pc(DW$L$_Registers$440$E)
DW$396	.dwtag  DW_TAG_loop_range
	.dwattr DW$396, DW_AT_low_pc(DW$L$_Registers$442$B)
	.dwattr DW$396, DW_AT_high_pc(DW$L$_Registers$442$E)
DW$397	.dwtag  DW_TAG_loop_range
	.dwattr DW$397, DW_AT_low_pc(DW$L$_Registers$446$B)
	.dwattr DW$397, DW_AT_high_pc(DW$L$_Registers$446$E)
DW$398	.dwtag  DW_TAG_loop_range
	.dwattr DW$398, DW_AT_low_pc(DW$L$_Registers$452$B)
	.dwattr DW$398, DW_AT_high_pc(DW$L$_Registers$452$E)
DW$399	.dwtag  DW_TAG_loop_range
	.dwattr DW$399, DW_AT_low_pc(DW$L$_Registers$453$B)
	.dwattr DW$399, DW_AT_high_pc(DW$L$_Registers$453$E)
DW$400	.dwtag  DW_TAG_loop_range
	.dwattr DW$400, DW_AT_low_pc(DW$L$_Registers$454$B)
	.dwattr DW$400, DW_AT_high_pc(DW$L$_Registers$454$E)
DW$401	.dwtag  DW_TAG_loop_range
	.dwattr DW$401, DW_AT_low_pc(DW$L$_Registers$474$B)
	.dwattr DW$401, DW_AT_high_pc(DW$L$_Registers$474$E)
DW$402	.dwtag  DW_TAG_loop_range
	.dwattr DW$402, DW_AT_low_pc(DW$L$_Registers$479$B)
	.dwattr DW$402, DW_AT_high_pc(DW$L$_Registers$479$E)
DW$403	.dwtag  DW_TAG_loop_range
	.dwattr DW$403, DW_AT_low_pc(DW$L$_Registers$483$B)
	.dwattr DW$403, DW_AT_high_pc(DW$L$_Registers$483$E)
DW$404	.dwtag  DW_TAG_loop_range
	.dwattr DW$404, DW_AT_low_pc(DW$L$_Registers$490$B)
	.dwattr DW$404, DW_AT_high_pc(DW$L$_Registers$490$E)
DW$405	.dwtag  DW_TAG_loop_range
	.dwattr DW$405, DW_AT_low_pc(DW$L$_Registers$493$B)
	.dwattr DW$405, DW_AT_high_pc(DW$L$_Registers$493$E)
DW$406	.dwtag  DW_TAG_loop_range
	.dwattr DW$406, DW_AT_low_pc(DW$L$_Registers$496$B)
	.dwattr DW$406, DW_AT_high_pc(DW$L$_Registers$496$E)
DW$407	.dwtag  DW_TAG_loop_range
	.dwattr DW$407, DW_AT_low_pc(DW$L$_Registers$499$B)
	.dwattr DW$407, DW_AT_high_pc(DW$L$_Registers$499$E)
DW$408	.dwtag  DW_TAG_loop_range
	.dwattr DW$408, DW_AT_low_pc(DW$L$_Registers$504$B)
	.dwattr DW$408, DW_AT_high_pc(DW$L$_Registers$504$E)
DW$409	.dwtag  DW_TAG_loop_range
	.dwattr DW$409, DW_AT_low_pc(DW$L$_Registers$507$B)
	.dwattr DW$409, DW_AT_high_pc(DW$L$_Registers$507$E)
DW$410	.dwtag  DW_TAG_loop_range
	.dwattr DW$410, DW_AT_low_pc(DW$L$_Registers$509$B)
	.dwattr DW$410, DW_AT_high_pc(DW$L$_Registers$509$E)
DW$411	.dwtag  DW_TAG_loop_range
	.dwattr DW$411, DW_AT_low_pc(DW$L$_Registers$512$B)
	.dwattr DW$411, DW_AT_high_pc(DW$L$_Registers$512$E)
DW$412	.dwtag  DW_TAG_loop_range
	.dwattr DW$412, DW_AT_low_pc(DW$L$_Registers$525$B)
	.dwattr DW$412, DW_AT_high_pc(DW$L$_Registers$525$E)
DW$413	.dwtag  DW_TAG_loop_range
	.dwattr DW$413, DW_AT_low_pc(DW$L$_Registers$536$B)
	.dwattr DW$413, DW_AT_high_pc(DW$L$_Registers$536$E)
DW$414	.dwtag  DW_TAG_loop_range
	.dwattr DW$414, DW_AT_low_pc(DW$L$_Registers$541$B)
	.dwattr DW$414, DW_AT_high_pc(DW$L$_Registers$541$E)
DW$415	.dwtag  DW_TAG_loop_range
	.dwattr DW$415, DW_AT_low_pc(DW$L$_Registers$543$B)
	.dwattr DW$415, DW_AT_high_pc(DW$L$_Registers$543$E)
DW$416	.dwtag  DW_TAG_loop_range
	.dwattr DW$416, DW_AT_low_pc(DW$L$_Registers$545$B)
	.dwattr DW$416, DW_AT_high_pc(DW$L$_Registers$545$E)
DW$417	.dwtag  DW_TAG_loop_range
	.dwattr DW$417, DW_AT_low_pc(DW$L$_Registers$547$B)
	.dwattr DW$417, DW_AT_high_pc(DW$L$_Registers$547$E)
DW$418	.dwtag  DW_TAG_loop_range
	.dwattr DW$418, DW_AT_low_pc(DW$L$_Registers$549$B)
	.dwattr DW$418, DW_AT_high_pc(DW$L$_Registers$549$E)
DW$419	.dwtag  DW_TAG_loop_range
	.dwattr DW$419, DW_AT_low_pc(DW$L$_Registers$551$B)
	.dwattr DW$419, DW_AT_high_pc(DW$L$_Registers$551$E)
DW$420	.dwtag  DW_TAG_loop_range
	.dwattr DW$420, DW_AT_low_pc(DW$L$_Registers$553$B)
	.dwattr DW$420, DW_AT_high_pc(DW$L$_Registers$553$E)
DW$421	.dwtag  DW_TAG_loop_range
	.dwattr DW$421, DW_AT_low_pc(DW$L$_Registers$555$B)
	.dwattr DW$421, DW_AT_high_pc(DW$L$_Registers$555$E)
DW$422	.dwtag  DW_TAG_loop_range
	.dwattr DW$422, DW_AT_low_pc(DW$L$_Registers$557$B)
	.dwattr DW$422, DW_AT_high_pc(DW$L$_Registers$557$E)
DW$423	.dwtag  DW_TAG_loop_range
	.dwattr DW$423, DW_AT_low_pc(DW$L$_Registers$563$B)
	.dwattr DW$423, DW_AT_high_pc(DW$L$_Registers$563$E)
DW$424	.dwtag  DW_TAG_loop_range
	.dwattr DW$424, DW_AT_low_pc(DW$L$_Registers$564$B)
	.dwattr DW$424, DW_AT_high_pc(DW$L$_Registers$564$E)
DW$425	.dwtag  DW_TAG_loop_range
	.dwattr DW$425, DW_AT_low_pc(DW$L$_Registers$565$B)
	.dwattr DW$425, DW_AT_high_pc(DW$L$_Registers$565$E)
DW$426	.dwtag  DW_TAG_loop_range
	.dwattr DW$426, DW_AT_low_pc(DW$L$_Registers$566$B)
	.dwattr DW$426, DW_AT_high_pc(DW$L$_Registers$566$E)
DW$427	.dwtag  DW_TAG_loop_range
	.dwattr DW$427, DW_AT_low_pc(DW$L$_Registers$570$B)
	.dwattr DW$427, DW_AT_high_pc(DW$L$_Registers$570$E)
DW$428	.dwtag  DW_TAG_loop_range
	.dwattr DW$428, DW_AT_low_pc(DW$L$_Registers$571$B)
	.dwattr DW$428, DW_AT_high_pc(DW$L$_Registers$571$E)
DW$429	.dwtag  DW_TAG_loop_range
	.dwattr DW$429, DW_AT_low_pc(DW$L$_Registers$575$B)
	.dwattr DW$429, DW_AT_high_pc(DW$L$_Registers$575$E)
DW$430	.dwtag  DW_TAG_loop_range
	.dwattr DW$430, DW_AT_low_pc(DW$L$_Registers$585$B)
	.dwattr DW$430, DW_AT_high_pc(DW$L$_Registers$585$E)
DW$431	.dwtag  DW_TAG_loop_range
	.dwattr DW$431, DW_AT_low_pc(DW$L$_Registers$587$B)
	.dwattr DW$431, DW_AT_high_pc(DW$L$_Registers$587$E)
DW$432	.dwtag  DW_TAG_loop_range
	.dwattr DW$432, DW_AT_low_pc(DW$L$_Registers$597$B)
	.dwattr DW$432, DW_AT_high_pc(DW$L$_Registers$597$E)
DW$433	.dwtag  DW_TAG_loop_range
	.dwattr DW$433, DW_AT_low_pc(DW$L$_Registers$599$B)
	.dwattr DW$433, DW_AT_high_pc(DW$L$_Registers$599$E)
DW$434	.dwtag  DW_TAG_loop_range
	.dwattr DW$434, DW_AT_low_pc(DW$L$_Registers$601$B)
	.dwattr DW$434, DW_AT_high_pc(DW$L$_Registers$601$E)
DW$435	.dwtag  DW_TAG_loop_range
	.dwattr DW$435, DW_AT_low_pc(DW$L$_Registers$603$B)
	.dwattr DW$435, DW_AT_high_pc(DW$L$_Registers$603$E)
DW$436	.dwtag  DW_TAG_loop_range
	.dwattr DW$436, DW_AT_low_pc(DW$L$_Registers$605$B)
	.dwattr DW$436, DW_AT_high_pc(DW$L$_Registers$605$E)
DW$437	.dwtag  DW_TAG_loop_range
	.dwattr DW$437, DW_AT_low_pc(DW$L$_Registers$291$B)
	.dwattr DW$437, DW_AT_high_pc(DW$L$_Registers$291$E)
DW$438	.dwtag  DW_TAG_loop_range
	.dwattr DW$438, DW_AT_low_pc(DW$L$_Registers$348$B)
	.dwattr DW$438, DW_AT_high_pc(DW$L$_Registers$348$E)
DW$439	.dwtag  DW_TAG_loop_range
	.dwattr DW$439, DW_AT_low_pc(DW$L$_Registers$349$B)
	.dwattr DW$439, DW_AT_high_pc(DW$L$_Registers$349$E)
DW$440	.dwtag  DW_TAG_loop_range
	.dwattr DW$440, DW_AT_low_pc(DW$L$_Registers$258$B)
	.dwattr DW$440, DW_AT_high_pc(DW$L$_Registers$258$E)
DW$441	.dwtag  DW_TAG_loop_range
	.dwattr DW$441, DW_AT_low_pc(DW$L$_Registers$259$B)
	.dwattr DW$441, DW_AT_high_pc(DW$L$_Registers$259$E)
DW$442	.dwtag  DW_TAG_loop_range
	.dwattr DW$442, DW_AT_low_pc(DW$L$_Registers$260$B)
	.dwattr DW$442, DW_AT_high_pc(DW$L$_Registers$260$E)
DW$443	.dwtag  DW_TAG_loop_range
	.dwattr DW$443, DW_AT_low_pc(DW$L$_Registers$249$B)
	.dwattr DW$443, DW_AT_high_pc(DW$L$_Registers$249$E)
DW$444	.dwtag  DW_TAG_loop_range
	.dwattr DW$444, DW_AT_low_pc(DW$L$_Registers$250$B)
	.dwattr DW$444, DW_AT_high_pc(DW$L$_Registers$250$E)
DW$445	.dwtag  DW_TAG_loop_range
	.dwattr DW$445, DW_AT_low_pc(DW$L$_Registers$251$B)
	.dwattr DW$445, DW_AT_high_pc(DW$L$_Registers$251$E)
DW$446	.dwtag  DW_TAG_loop_range
	.dwattr DW$446, DW_AT_low_pc(DW$L$_Registers$252$B)
	.dwattr DW$446, DW_AT_high_pc(DW$L$_Registers$252$E)
DW$447	.dwtag  DW_TAG_loop_range
	.dwattr DW$447, DW_AT_low_pc(DW$L$_Registers$243$B)
	.dwattr DW$447, DW_AT_high_pc(DW$L$_Registers$243$E)
DW$448	.dwtag  DW_TAG_loop_range
	.dwattr DW$448, DW_AT_low_pc(DW$L$_Registers$244$B)
	.dwattr DW$448, DW_AT_high_pc(DW$L$_Registers$244$E)
DW$449	.dwtag  DW_TAG_loop_range
	.dwattr DW$449, DW_AT_low_pc(DW$L$_Registers$245$B)
	.dwattr DW$449, DW_AT_high_pc(DW$L$_Registers$245$E)
DW$450	.dwtag  DW_TAG_loop_range
	.dwattr DW$450, DW_AT_low_pc(DW$L$_Registers$246$B)
	.dwattr DW$450, DW_AT_high_pc(DW$L$_Registers$246$E)
DW$451	.dwtag  DW_TAG_loop_range
	.dwattr DW$451, DW_AT_low_pc(DW$L$_Registers$247$B)
	.dwattr DW$451, DW_AT_high_pc(DW$L$_Registers$247$E)
DW$452	.dwtag  DW_TAG_loop_range
	.dwattr DW$452, DW_AT_low_pc(DW$L$_Registers$248$B)
	.dwattr DW$452, DW_AT_high_pc(DW$L$_Registers$248$E)
DW$453	.dwtag  DW_TAG_loop_range
	.dwattr DW$453, DW_AT_low_pc(DW$L$_Registers$253$B)
	.dwattr DW$453, DW_AT_high_pc(DW$L$_Registers$253$E)
DW$454	.dwtag  DW_TAG_loop_range
	.dwattr DW$454, DW_AT_low_pc(DW$L$_Registers$254$B)
	.dwattr DW$454, DW_AT_high_pc(DW$L$_Registers$254$E)
DW$455	.dwtag  DW_TAG_loop_range
	.dwattr DW$455, DW_AT_low_pc(DW$L$_Registers$229$B)
	.dwattr DW$455, DW_AT_high_pc(DW$L$_Registers$229$E)
DW$456	.dwtag  DW_TAG_loop_range
	.dwattr DW$456, DW_AT_low_pc(DW$L$_Registers$230$B)
	.dwattr DW$456, DW_AT_high_pc(DW$L$_Registers$230$E)
DW$457	.dwtag  DW_TAG_loop_range
	.dwattr DW$457, DW_AT_low_pc(DW$L$_Registers$231$B)
	.dwattr DW$457, DW_AT_high_pc(DW$L$_Registers$231$E)
DW$458	.dwtag  DW_TAG_loop_range
	.dwattr DW$458, DW_AT_low_pc(DW$L$_Registers$232$B)
	.dwattr DW$458, DW_AT_high_pc(DW$L$_Registers$232$E)
DW$459	.dwtag  DW_TAG_loop_range
	.dwattr DW$459, DW_AT_low_pc(DW$L$_Registers$218$B)
	.dwattr DW$459, DW_AT_high_pc(DW$L$_Registers$218$E)
DW$460	.dwtag  DW_TAG_loop_range
	.dwattr DW$460, DW_AT_low_pc(DW$L$_Registers$175$B)
	.dwattr DW$460, DW_AT_high_pc(DW$L$_Registers$175$E)
DW$461	.dwtag  DW_TAG_loop_range
	.dwattr DW$461, DW_AT_low_pc(DW$L$_Registers$176$B)
	.dwattr DW$461, DW_AT_high_pc(DW$L$_Registers$176$E)
DW$462	.dwtag  DW_TAG_loop_range
	.dwattr DW$462, DW_AT_low_pc(DW$L$_Registers$177$B)
	.dwattr DW$462, DW_AT_high_pc(DW$L$_Registers$177$E)
DW$463	.dwtag  DW_TAG_loop_range
	.dwattr DW$463, DW_AT_low_pc(DW$L$_Registers$178$B)
	.dwattr DW$463, DW_AT_high_pc(DW$L$_Registers$178$E)
DW$464	.dwtag  DW_TAG_loop_range
	.dwattr DW$464, DW_AT_low_pc(DW$L$_Registers$179$B)
	.dwattr DW$464, DW_AT_high_pc(DW$L$_Registers$179$E)
DW$465	.dwtag  DW_TAG_loop_range
	.dwattr DW$465, DW_AT_low_pc(DW$L$_Registers$180$B)
	.dwattr DW$465, DW_AT_high_pc(DW$L$_Registers$180$E)
DW$466	.dwtag  DW_TAG_loop_range
	.dwattr DW$466, DW_AT_low_pc(DW$L$_Registers$181$B)
	.dwattr DW$466, DW_AT_high_pc(DW$L$_Registers$181$E)
DW$467	.dwtag  DW_TAG_loop_range
	.dwattr DW$467, DW_AT_low_pc(DW$L$_Registers$182$B)
	.dwattr DW$467, DW_AT_high_pc(DW$L$_Registers$182$E)
DW$468	.dwtag  DW_TAG_loop_range
	.dwattr DW$468, DW_AT_low_pc(DW$L$_Registers$183$B)
	.dwattr DW$468, DW_AT_high_pc(DW$L$_Registers$183$E)
DW$469	.dwtag  DW_TAG_loop_range
	.dwattr DW$469, DW_AT_low_pc(DW$L$_Registers$184$B)
	.dwattr DW$469, DW_AT_high_pc(DW$L$_Registers$184$E)
DW$470	.dwtag  DW_TAG_loop_range
	.dwattr DW$470, DW_AT_low_pc(DW$L$_Registers$185$B)
	.dwattr DW$470, DW_AT_high_pc(DW$L$_Registers$185$E)
DW$471	.dwtag  DW_TAG_loop_range
	.dwattr DW$471, DW_AT_low_pc(DW$L$_Registers$186$B)
	.dwattr DW$471, DW_AT_high_pc(DW$L$_Registers$186$E)
DW$472	.dwtag  DW_TAG_loop_range
	.dwattr DW$472, DW_AT_low_pc(DW$L$_Registers$187$B)
	.dwattr DW$472, DW_AT_high_pc(DW$L$_Registers$187$E)
DW$473	.dwtag  DW_TAG_loop_range
	.dwattr DW$473, DW_AT_low_pc(DW$L$_Registers$188$B)
	.dwattr DW$473, DW_AT_high_pc(DW$L$_Registers$188$E)
DW$474	.dwtag  DW_TAG_loop_range
	.dwattr DW$474, DW_AT_low_pc(DW$L$_Registers$189$B)
	.dwattr DW$474, DW_AT_high_pc(DW$L$_Registers$189$E)
DW$475	.dwtag  DW_TAG_loop_range
	.dwattr DW$475, DW_AT_low_pc(DW$L$_Registers$190$B)
	.dwattr DW$475, DW_AT_high_pc(DW$L$_Registers$190$E)
DW$476	.dwtag  DW_TAG_loop_range
	.dwattr DW$476, DW_AT_low_pc(DW$L$_Registers$191$B)
	.dwattr DW$476, DW_AT_high_pc(DW$L$_Registers$191$E)
DW$477	.dwtag  DW_TAG_loop_range
	.dwattr DW$477, DW_AT_low_pc(DW$L$_Registers$192$B)
	.dwattr DW$477, DW_AT_high_pc(DW$L$_Registers$192$E)
DW$478	.dwtag  DW_TAG_loop_range
	.dwattr DW$478, DW_AT_low_pc(DW$L$_Registers$193$B)
	.dwattr DW$478, DW_AT_high_pc(DW$L$_Registers$193$E)
DW$479	.dwtag  DW_TAG_loop_range
	.dwattr DW$479, DW_AT_low_pc(DW$L$_Registers$194$B)
	.dwattr DW$479, DW_AT_high_pc(DW$L$_Registers$194$E)
DW$480	.dwtag  DW_TAG_loop_range
	.dwattr DW$480, DW_AT_low_pc(DW$L$_Registers$195$B)
	.dwattr DW$480, DW_AT_high_pc(DW$L$_Registers$195$E)
DW$481	.dwtag  DW_TAG_loop_range
	.dwattr DW$481, DW_AT_low_pc(DW$L$_Registers$196$B)
	.dwattr DW$481, DW_AT_high_pc(DW$L$_Registers$196$E)
DW$482	.dwtag  DW_TAG_loop_range
	.dwattr DW$482, DW_AT_low_pc(DW$L$_Registers$197$B)
	.dwattr DW$482, DW_AT_high_pc(DW$L$_Registers$197$E)
DW$483	.dwtag  DW_TAG_loop_range
	.dwattr DW$483, DW_AT_low_pc(DW$L$_Registers$198$B)
	.dwattr DW$483, DW_AT_high_pc(DW$L$_Registers$198$E)
DW$484	.dwtag  DW_TAG_loop_range
	.dwattr DW$484, DW_AT_low_pc(DW$L$_Registers$199$B)
	.dwattr DW$484, DW_AT_high_pc(DW$L$_Registers$199$E)
DW$485	.dwtag  DW_TAG_loop_range
	.dwattr DW$485, DW_AT_low_pc(DW$L$_Registers$200$B)
	.dwattr DW$485, DW_AT_high_pc(DW$L$_Registers$200$E)
DW$486	.dwtag  DW_TAG_loop_range
	.dwattr DW$486, DW_AT_low_pc(DW$L$_Registers$201$B)
	.dwattr DW$486, DW_AT_high_pc(DW$L$_Registers$201$E)
DW$487	.dwtag  DW_TAG_loop_range
	.dwattr DW$487, DW_AT_low_pc(DW$L$_Registers$202$B)
	.dwattr DW$487, DW_AT_high_pc(DW$L$_Registers$202$E)
DW$488	.dwtag  DW_TAG_loop_range
	.dwattr DW$488, DW_AT_low_pc(DW$L$_Registers$203$B)
	.dwattr DW$488, DW_AT_high_pc(DW$L$_Registers$203$E)
DW$489	.dwtag  DW_TAG_loop_range
	.dwattr DW$489, DW_AT_low_pc(DW$L$_Registers$204$B)
	.dwattr DW$489, DW_AT_high_pc(DW$L$_Registers$204$E)
DW$490	.dwtag  DW_TAG_loop_range
	.dwattr DW$490, DW_AT_low_pc(DW$L$_Registers$205$B)
	.dwattr DW$490, DW_AT_high_pc(DW$L$_Registers$205$E)
DW$491	.dwtag  DW_TAG_loop_range
	.dwattr DW$491, DW_AT_low_pc(DW$L$_Registers$206$B)
	.dwattr DW$491, DW_AT_high_pc(DW$L$_Registers$206$E)
DW$492	.dwtag  DW_TAG_loop_range
	.dwattr DW$492, DW_AT_low_pc(DW$L$_Registers$207$B)
	.dwattr DW$492, DW_AT_high_pc(DW$L$_Registers$207$E)
DW$493	.dwtag  DW_TAG_loop_range
	.dwattr DW$493, DW_AT_low_pc(DW$L$_Registers$208$B)
	.dwattr DW$493, DW_AT_high_pc(DW$L$_Registers$208$E)
DW$494	.dwtag  DW_TAG_loop_range
	.dwattr DW$494, DW_AT_low_pc(DW$L$_Registers$209$B)
	.dwattr DW$494, DW_AT_high_pc(DW$L$_Registers$209$E)
DW$495	.dwtag  DW_TAG_loop_range
	.dwattr DW$495, DW_AT_low_pc(DW$L$_Registers$210$B)
	.dwattr DW$495, DW_AT_high_pc(DW$L$_Registers$210$E)
DW$496	.dwtag  DW_TAG_loop_range
	.dwattr DW$496, DW_AT_low_pc(DW$L$_Registers$211$B)
	.dwattr DW$496, DW_AT_high_pc(DW$L$_Registers$211$E)
DW$497	.dwtag  DW_TAG_loop_range
	.dwattr DW$497, DW_AT_low_pc(DW$L$_Registers$212$B)
	.dwattr DW$497, DW_AT_high_pc(DW$L$_Registers$212$E)
DW$498	.dwtag  DW_TAG_loop_range
	.dwattr DW$498, DW_AT_low_pc(DW$L$_Registers$213$B)
	.dwattr DW$498, DW_AT_high_pc(DW$L$_Registers$213$E)
DW$499	.dwtag  DW_TAG_loop_range
	.dwattr DW$499, DW_AT_low_pc(DW$L$_Registers$214$B)
	.dwattr DW$499, DW_AT_high_pc(DW$L$_Registers$214$E)
DW$500	.dwtag  DW_TAG_loop_range
	.dwattr DW$500, DW_AT_low_pc(DW$L$_Registers$215$B)
	.dwattr DW$500, DW_AT_high_pc(DW$L$_Registers$215$E)
DW$501	.dwtag  DW_TAG_loop_range
	.dwattr DW$501, DW_AT_low_pc(DW$L$_Registers$216$B)
	.dwattr DW$501, DW_AT_high_pc(DW$L$_Registers$216$E)
DW$502	.dwtag  DW_TAG_loop_range
	.dwattr DW$502, DW_AT_low_pc(DW$L$_Registers$172$B)
	.dwattr DW$502, DW_AT_high_pc(DW$L$_Registers$172$E)
DW$503	.dwtag  DW_TAG_loop_range
	.dwattr DW$503, DW_AT_low_pc(DW$L$_Registers$173$B)
	.dwattr DW$503, DW_AT_high_pc(DW$L$_Registers$173$E)
DW$504	.dwtag  DW_TAG_loop_range
	.dwattr DW$504, DW_AT_low_pc(DW$L$_Registers$169$B)
	.dwattr DW$504, DW_AT_high_pc(DW$L$_Registers$169$E)
DW$505	.dwtag  DW_TAG_loop_range
	.dwattr DW$505, DW_AT_low_pc(DW$L$_Registers$170$B)
	.dwattr DW$505, DW_AT_high_pc(DW$L$_Registers$170$E)
DW$506	.dwtag  DW_TAG_loop_range
	.dwattr DW$506, DW_AT_low_pc(DW$L$_Registers$166$B)
	.dwattr DW$506, DW_AT_high_pc(DW$L$_Registers$166$E)
DW$507	.dwtag  DW_TAG_loop_range
	.dwattr DW$507, DW_AT_low_pc(DW$L$_Registers$167$B)
	.dwattr DW$507, DW_AT_high_pc(DW$L$_Registers$167$E)
DW$508	.dwtag  DW_TAG_loop_range
	.dwattr DW$508, DW_AT_low_pc(DW$L$_Registers$163$B)
	.dwattr DW$508, DW_AT_high_pc(DW$L$_Registers$163$E)
DW$509	.dwtag  DW_TAG_loop_range
	.dwattr DW$509, DW_AT_low_pc(DW$L$_Registers$164$B)
	.dwattr DW$509, DW_AT_high_pc(DW$L$_Registers$164$E)
DW$510	.dwtag  DW_TAG_loop_range
	.dwattr DW$510, DW_AT_low_pc(DW$L$_Registers$161$B)
	.dwattr DW$510, DW_AT_high_pc(DW$L$_Registers$161$E)
DW$511	.dwtag  DW_TAG_loop_range
	.dwattr DW$511, DW_AT_low_pc(DW$L$_Registers$162$B)
	.dwattr DW$511, DW_AT_high_pc(DW$L$_Registers$162$E)
DW$512	.dwtag  DW_TAG_loop_range
	.dwattr DW$512, DW_AT_low_pc(DW$L$_Registers$165$B)
	.dwattr DW$512, DW_AT_high_pc(DW$L$_Registers$165$E)
DW$513	.dwtag  DW_TAG_loop_range
	.dwattr DW$513, DW_AT_low_pc(DW$L$_Registers$168$B)
	.dwattr DW$513, DW_AT_high_pc(DW$L$_Registers$168$E)
DW$514	.dwtag  DW_TAG_loop_range
	.dwattr DW$514, DW_AT_low_pc(DW$L$_Registers$171$B)
	.dwattr DW$514, DW_AT_high_pc(DW$L$_Registers$171$E)
DW$515	.dwtag  DW_TAG_loop_range
	.dwattr DW$515, DW_AT_low_pc(DW$L$_Registers$174$B)
	.dwattr DW$515, DW_AT_high_pc(DW$L$_Registers$174$E)
DW$516	.dwtag  DW_TAG_loop_range
	.dwattr DW$516, DW_AT_low_pc(DW$L$_Registers$217$B)
	.dwattr DW$516, DW_AT_high_pc(DW$L$_Registers$217$E)
DW$517	.dwtag  DW_TAG_loop_range
	.dwattr DW$517, DW_AT_low_pc(DW$L$_Registers$219$B)
	.dwattr DW$517, DW_AT_high_pc(DW$L$_Registers$219$E)
DW$518	.dwtag  DW_TAG_loop_range
	.dwattr DW$518, DW_AT_low_pc(DW$L$_Registers$220$B)
	.dwattr DW$518, DW_AT_high_pc(DW$L$_Registers$220$E)
DW$519	.dwtag  DW_TAG_loop_range
	.dwattr DW$519, DW_AT_low_pc(DW$L$_Registers$221$B)
	.dwattr DW$519, DW_AT_high_pc(DW$L$_Registers$221$E)
DW$520	.dwtag  DW_TAG_loop_range
	.dwattr DW$520, DW_AT_low_pc(DW$L$_Registers$222$B)
	.dwattr DW$520, DW_AT_high_pc(DW$L$_Registers$222$E)
DW$521	.dwtag  DW_TAG_loop_range
	.dwattr DW$521, DW_AT_low_pc(DW$L$_Registers$223$B)
	.dwattr DW$521, DW_AT_high_pc(DW$L$_Registers$223$E)
DW$522	.dwtag  DW_TAG_loop_range
	.dwattr DW$522, DW_AT_low_pc(DW$L$_Registers$227$B)
	.dwattr DW$522, DW_AT_high_pc(DW$L$_Registers$227$E)
DW$523	.dwtag  DW_TAG_loop_range
	.dwattr DW$523, DW_AT_low_pc(DW$L$_Registers$159$B)
	.dwattr DW$523, DW_AT_high_pc(DW$L$_Registers$159$E)
DW$524	.dwtag  DW_TAG_loop_range
	.dwattr DW$524, DW_AT_low_pc(DW$L$_Registers$157$B)
	.dwattr DW$524, DW_AT_high_pc(DW$L$_Registers$157$E)
DW$525	.dwtag  DW_TAG_loop_range
	.dwattr DW$525, DW_AT_low_pc(DW$L$_Registers$147$B)
	.dwattr DW$525, DW_AT_high_pc(DW$L$_Registers$147$E)
DW$526	.dwtag  DW_TAG_loop_range
	.dwattr DW$526, DW_AT_low_pc(DW$L$_Registers$148$B)
	.dwattr DW$526, DW_AT_high_pc(DW$L$_Registers$148$E)
DW$527	.dwtag  DW_TAG_loop_range
	.dwattr DW$527, DW_AT_low_pc(DW$L$_Registers$149$B)
	.dwattr DW$527, DW_AT_high_pc(DW$L$_Registers$149$E)
DW$528	.dwtag  DW_TAG_loop_range
	.dwattr DW$528, DW_AT_low_pc(DW$L$_Registers$150$B)
	.dwattr DW$528, DW_AT_high_pc(DW$L$_Registers$150$E)
DW$529	.dwtag  DW_TAG_loop_range
	.dwattr DW$529, DW_AT_low_pc(DW$L$_Registers$151$B)
	.dwattr DW$529, DW_AT_high_pc(DW$L$_Registers$151$E)
DW$530	.dwtag  DW_TAG_loop_range
	.dwattr DW$530, DW_AT_low_pc(DW$L$_Registers$152$B)
	.dwattr DW$530, DW_AT_high_pc(DW$L$_Registers$152$E)
DW$531	.dwtag  DW_TAG_loop_range
	.dwattr DW$531, DW_AT_low_pc(DW$L$_Registers$153$B)
	.dwattr DW$531, DW_AT_high_pc(DW$L$_Registers$153$E)
DW$532	.dwtag  DW_TAG_loop_range
	.dwattr DW$532, DW_AT_low_pc(DW$L$_Registers$154$B)
	.dwattr DW$532, DW_AT_high_pc(DW$L$_Registers$154$E)
DW$533	.dwtag  DW_TAG_loop_range
	.dwattr DW$533, DW_AT_low_pc(DW$L$_Registers$155$B)
	.dwattr DW$533, DW_AT_high_pc(DW$L$_Registers$155$E)
DW$534	.dwtag  DW_TAG_loop_range
	.dwattr DW$534, DW_AT_low_pc(DW$L$_Registers$135$B)
	.dwattr DW$534, DW_AT_high_pc(DW$L$_Registers$135$E)
DW$535	.dwtag  DW_TAG_loop_range
	.dwattr DW$535, DW_AT_low_pc(DW$L$_Registers$136$B)
	.dwattr DW$535, DW_AT_high_pc(DW$L$_Registers$136$E)
DW$536	.dwtag  DW_TAG_loop_range
	.dwattr DW$536, DW_AT_low_pc(DW$L$_Registers$137$B)
	.dwattr DW$536, DW_AT_high_pc(DW$L$_Registers$137$E)
DW$537	.dwtag  DW_TAG_loop_range
	.dwattr DW$537, DW_AT_low_pc(DW$L$_Registers$138$B)
	.dwattr DW$537, DW_AT_high_pc(DW$L$_Registers$138$E)
DW$538	.dwtag  DW_TAG_loop_range
	.dwattr DW$538, DW_AT_low_pc(DW$L$_Registers$139$B)
	.dwattr DW$538, DW_AT_high_pc(DW$L$_Registers$139$E)
DW$539	.dwtag  DW_TAG_loop_range
	.dwattr DW$539, DW_AT_low_pc(DW$L$_Registers$140$B)
	.dwattr DW$539, DW_AT_high_pc(DW$L$_Registers$140$E)
DW$540	.dwtag  DW_TAG_loop_range
	.dwattr DW$540, DW_AT_low_pc(DW$L$_Registers$141$B)
	.dwattr DW$540, DW_AT_high_pc(DW$L$_Registers$141$E)
DW$541	.dwtag  DW_TAG_loop_range
	.dwattr DW$541, DW_AT_low_pc(DW$L$_Registers$142$B)
	.dwattr DW$541, DW_AT_high_pc(DW$L$_Registers$142$E)
DW$542	.dwtag  DW_TAG_loop_range
	.dwattr DW$542, DW_AT_low_pc(DW$L$_Registers$143$B)
	.dwattr DW$542, DW_AT_high_pc(DW$L$_Registers$143$E)
DW$543	.dwtag  DW_TAG_loop_range
	.dwattr DW$543, DW_AT_low_pc(DW$L$_Registers$144$B)
	.dwattr DW$543, DW_AT_high_pc(DW$L$_Registers$144$E)
DW$544	.dwtag  DW_TAG_loop_range
	.dwattr DW$544, DW_AT_low_pc(DW$L$_Registers$145$B)
	.dwattr DW$544, DW_AT_high_pc(DW$L$_Registers$145$E)
DW$545	.dwtag  DW_TAG_loop_range
	.dwattr DW$545, DW_AT_low_pc(DW$L$_Registers$130$B)
	.dwattr DW$545, DW_AT_high_pc(DW$L$_Registers$130$E)
DW$546	.dwtag  DW_TAG_loop_range
	.dwattr DW$546, DW_AT_low_pc(DW$L$_Registers$131$B)
	.dwattr DW$546, DW_AT_high_pc(DW$L$_Registers$131$E)
DW$547	.dwtag  DW_TAG_loop_range
	.dwattr DW$547, DW_AT_low_pc(DW$L$_Registers$132$B)
	.dwattr DW$547, DW_AT_high_pc(DW$L$_Registers$132$E)
DW$548	.dwtag  DW_TAG_loop_range
	.dwattr DW$548, DW_AT_low_pc(DW$L$_Registers$133$B)
	.dwattr DW$548, DW_AT_high_pc(DW$L$_Registers$133$E)
DW$549	.dwtag  DW_TAG_loop_range
	.dwattr DW$549, DW_AT_low_pc(DW$L$_Registers$126$B)
	.dwattr DW$549, DW_AT_high_pc(DW$L$_Registers$126$E)
DW$550	.dwtag  DW_TAG_loop_range
	.dwattr DW$550, DW_AT_low_pc(DW$L$_Registers$127$B)
	.dwattr DW$550, DW_AT_high_pc(DW$L$_Registers$127$E)
DW$551	.dwtag  DW_TAG_loop_range
	.dwattr DW$551, DW_AT_low_pc(DW$L$_Registers$128$B)
	.dwattr DW$551, DW_AT_high_pc(DW$L$_Registers$128$E)
DW$552	.dwtag  DW_TAG_loop_range
	.dwattr DW$552, DW_AT_low_pc(DW$L$_Registers$129$B)
	.dwattr DW$552, DW_AT_high_pc(DW$L$_Registers$129$E)
DW$553	.dwtag  DW_TAG_loop_range
	.dwattr DW$553, DW_AT_low_pc(DW$L$_Registers$134$B)
	.dwattr DW$553, DW_AT_high_pc(DW$L$_Registers$134$E)
DW$554	.dwtag  DW_TAG_loop_range
	.dwattr DW$554, DW_AT_low_pc(DW$L$_Registers$146$B)
	.dwattr DW$554, DW_AT_high_pc(DW$L$_Registers$146$E)
DW$555	.dwtag  DW_TAG_loop_range
	.dwattr DW$555, DW_AT_low_pc(DW$L$_Registers$156$B)
	.dwattr DW$555, DW_AT_high_pc(DW$L$_Registers$156$E)
DW$556	.dwtag  DW_TAG_loop_range
	.dwattr DW$556, DW_AT_low_pc(DW$L$_Registers$158$B)
	.dwattr DW$556, DW_AT_high_pc(DW$L$_Registers$158$E)
DW$557	.dwtag  DW_TAG_loop_range
	.dwattr DW$557, DW_AT_low_pc(DW$L$_Registers$160$B)
	.dwattr DW$557, DW_AT_high_pc(DW$L$_Registers$160$E)
DW$558	.dwtag  DW_TAG_loop_range
	.dwattr DW$558, DW_AT_low_pc(DW$L$_Registers$228$B)
	.dwattr DW$558, DW_AT_high_pc(DW$L$_Registers$228$E)
DW$559	.dwtag  DW_TAG_loop_range
	.dwattr DW$559, DW_AT_low_pc(DW$L$_Registers$233$B)
	.dwattr DW$559, DW_AT_high_pc(DW$L$_Registers$233$E)
DW$560	.dwtag  DW_TAG_loop_range
	.dwattr DW$560, DW_AT_low_pc(DW$L$_Registers$234$B)
	.dwattr DW$560, DW_AT_high_pc(DW$L$_Registers$234$E)
DW$561	.dwtag  DW_TAG_loop_range
	.dwattr DW$561, DW_AT_low_pc(DW$L$_Registers$9$B)
	.dwattr DW$561, DW_AT_high_pc(DW$L$_Registers$9$E)
DW$562	.dwtag  DW_TAG_loop_range
	.dwattr DW$562, DW_AT_low_pc(DW$L$_Registers$10$B)
	.dwattr DW$562, DW_AT_high_pc(DW$L$_Registers$10$E)
DW$563	.dwtag  DW_TAG_loop_range
	.dwattr DW$563, DW_AT_low_pc(DW$L$_Registers$11$B)
	.dwattr DW$563, DW_AT_high_pc(DW$L$_Registers$11$E)
DW$564	.dwtag  DW_TAG_loop_range
	.dwattr DW$564, DW_AT_low_pc(DW$L$_Registers$12$B)
	.dwattr DW$564, DW_AT_high_pc(DW$L$_Registers$12$E)
DW$565	.dwtag  DW_TAG_loop_range
	.dwattr DW$565, DW_AT_low_pc(DW$L$_Registers$13$B)
	.dwattr DW$565, DW_AT_high_pc(DW$L$_Registers$13$E)
DW$566	.dwtag  DW_TAG_loop_range
	.dwattr DW$566, DW_AT_low_pc(DW$L$_Registers$14$B)
	.dwattr DW$566, DW_AT_high_pc(DW$L$_Registers$14$E)
DW$567	.dwtag  DW_TAG_loop_range
	.dwattr DW$567, DW_AT_low_pc(DW$L$_Registers$15$B)
	.dwattr DW$567, DW_AT_high_pc(DW$L$_Registers$15$E)
DW$568	.dwtag  DW_TAG_loop_range
	.dwattr DW$568, DW_AT_low_pc(DW$L$_Registers$16$B)
	.dwattr DW$568, DW_AT_high_pc(DW$L$_Registers$16$E)
DW$569	.dwtag  DW_TAG_loop_range
	.dwattr DW$569, DW_AT_low_pc(DW$L$_Registers$17$B)
	.dwattr DW$569, DW_AT_high_pc(DW$L$_Registers$17$E)
DW$570	.dwtag  DW_TAG_loop_range
	.dwattr DW$570, DW_AT_low_pc(DW$L$_Registers$18$B)
	.dwattr DW$570, DW_AT_high_pc(DW$L$_Registers$18$E)
DW$571	.dwtag  DW_TAG_loop_range
	.dwattr DW$571, DW_AT_low_pc(DW$L$_Registers$19$B)
	.dwattr DW$571, DW_AT_high_pc(DW$L$_Registers$19$E)
DW$572	.dwtag  DW_TAG_loop_range
	.dwattr DW$572, DW_AT_low_pc(DW$L$_Registers$20$B)
	.dwattr DW$572, DW_AT_high_pc(DW$L$_Registers$20$E)
DW$573	.dwtag  DW_TAG_loop_range
	.dwattr DW$573, DW_AT_low_pc(DW$L$_Registers$21$B)
	.dwattr DW$573, DW_AT_high_pc(DW$L$_Registers$21$E)
DW$574	.dwtag  DW_TAG_loop_range
	.dwattr DW$574, DW_AT_low_pc(DW$L$_Registers$22$B)
	.dwattr DW$574, DW_AT_high_pc(DW$L$_Registers$22$E)
DW$575	.dwtag  DW_TAG_loop_range
	.dwattr DW$575, DW_AT_low_pc(DW$L$_Registers$23$B)
	.dwattr DW$575, DW_AT_high_pc(DW$L$_Registers$23$E)
DW$576	.dwtag  DW_TAG_loop_range
	.dwattr DW$576, DW_AT_low_pc(DW$L$_Registers$24$B)
	.dwattr DW$576, DW_AT_high_pc(DW$L$_Registers$24$E)
DW$577	.dwtag  DW_TAG_loop_range
	.dwattr DW$577, DW_AT_low_pc(DW$L$_Registers$25$B)
	.dwattr DW$577, DW_AT_high_pc(DW$L$_Registers$25$E)
DW$578	.dwtag  DW_TAG_loop_range
	.dwattr DW$578, DW_AT_low_pc(DW$L$_Registers$26$B)
	.dwattr DW$578, DW_AT_high_pc(DW$L$_Registers$26$E)
DW$579	.dwtag  DW_TAG_loop_range
	.dwattr DW$579, DW_AT_low_pc(DW$L$_Registers$27$B)
	.dwattr DW$579, DW_AT_high_pc(DW$L$_Registers$27$E)
DW$580	.dwtag  DW_TAG_loop_range
	.dwattr DW$580, DW_AT_low_pc(DW$L$_Registers$28$B)
	.dwattr DW$580, DW_AT_high_pc(DW$L$_Registers$28$E)
DW$581	.dwtag  DW_TAG_loop_range
	.dwattr DW$581, DW_AT_low_pc(DW$L$_Registers$29$B)
	.dwattr DW$581, DW_AT_high_pc(DW$L$_Registers$29$E)
DW$582	.dwtag  DW_TAG_loop_range
	.dwattr DW$582, DW_AT_low_pc(DW$L$_Registers$30$B)
	.dwattr DW$582, DW_AT_high_pc(DW$L$_Registers$30$E)
DW$583	.dwtag  DW_TAG_loop_range
	.dwattr DW$583, DW_AT_low_pc(DW$L$_Registers$31$B)
	.dwattr DW$583, DW_AT_high_pc(DW$L$_Registers$31$E)
DW$584	.dwtag  DW_TAG_loop_range
	.dwattr DW$584, DW_AT_low_pc(DW$L$_Registers$32$B)
	.dwattr DW$584, DW_AT_high_pc(DW$L$_Registers$32$E)
DW$585	.dwtag  DW_TAG_loop_range
	.dwattr DW$585, DW_AT_low_pc(DW$L$_Registers$33$B)
	.dwattr DW$585, DW_AT_high_pc(DW$L$_Registers$33$E)
DW$586	.dwtag  DW_TAG_loop_range
	.dwattr DW$586, DW_AT_low_pc(DW$L$_Registers$34$B)
	.dwattr DW$586, DW_AT_high_pc(DW$L$_Registers$34$E)
DW$587	.dwtag  DW_TAG_loop_range
	.dwattr DW$587, DW_AT_low_pc(DW$L$_Registers$35$B)
	.dwattr DW$587, DW_AT_high_pc(DW$L$_Registers$35$E)
DW$588	.dwtag  DW_TAG_loop_range
	.dwattr DW$588, DW_AT_low_pc(DW$L$_Registers$36$B)
	.dwattr DW$588, DW_AT_high_pc(DW$L$_Registers$36$E)
DW$589	.dwtag  DW_TAG_loop_range
	.dwattr DW$589, DW_AT_low_pc(DW$L$_Registers$37$B)
	.dwattr DW$589, DW_AT_high_pc(DW$L$_Registers$37$E)
DW$590	.dwtag  DW_TAG_loop_range
	.dwattr DW$590, DW_AT_low_pc(DW$L$_Registers$38$B)
	.dwattr DW$590, DW_AT_high_pc(DW$L$_Registers$38$E)
DW$591	.dwtag  DW_TAG_loop_range
	.dwattr DW$591, DW_AT_low_pc(DW$L$_Registers$39$B)
	.dwattr DW$591, DW_AT_high_pc(DW$L$_Registers$39$E)
DW$592	.dwtag  DW_TAG_loop_range
	.dwattr DW$592, DW_AT_low_pc(DW$L$_Registers$40$B)
	.dwattr DW$592, DW_AT_high_pc(DW$L$_Registers$40$E)
DW$593	.dwtag  DW_TAG_loop_range
	.dwattr DW$593, DW_AT_low_pc(DW$L$_Registers$41$B)
	.dwattr DW$593, DW_AT_high_pc(DW$L$_Registers$41$E)
DW$594	.dwtag  DW_TAG_loop_range
	.dwattr DW$594, DW_AT_low_pc(DW$L$_Registers$42$B)
	.dwattr DW$594, DW_AT_high_pc(DW$L$_Registers$42$E)
DW$595	.dwtag  DW_TAG_loop_range
	.dwattr DW$595, DW_AT_low_pc(DW$L$_Registers$43$B)
	.dwattr DW$595, DW_AT_high_pc(DW$L$_Registers$43$E)
DW$596	.dwtag  DW_TAG_loop_range
	.dwattr DW$596, DW_AT_low_pc(DW$L$_Registers$44$B)
	.dwattr DW$596, DW_AT_high_pc(DW$L$_Registers$44$E)
DW$597	.dwtag  DW_TAG_loop_range
	.dwattr DW$597, DW_AT_low_pc(DW$L$_Registers$45$B)
	.dwattr DW$597, DW_AT_high_pc(DW$L$_Registers$45$E)
DW$598	.dwtag  DW_TAG_loop_range
	.dwattr DW$598, DW_AT_low_pc(DW$L$_Registers$46$B)
	.dwattr DW$598, DW_AT_high_pc(DW$L$_Registers$46$E)
DW$599	.dwtag  DW_TAG_loop_range
	.dwattr DW$599, DW_AT_low_pc(DW$L$_Registers$47$B)
	.dwattr DW$599, DW_AT_high_pc(DW$L$_Registers$47$E)
DW$600	.dwtag  DW_TAG_loop_range
	.dwattr DW$600, DW_AT_low_pc(DW$L$_Registers$48$B)
	.dwattr DW$600, DW_AT_high_pc(DW$L$_Registers$48$E)
DW$601	.dwtag  DW_TAG_loop_range
	.dwattr DW$601, DW_AT_low_pc(DW$L$_Registers$49$B)
	.dwattr DW$601, DW_AT_high_pc(DW$L$_Registers$49$E)
DW$602	.dwtag  DW_TAG_loop_range
	.dwattr DW$602, DW_AT_low_pc(DW$L$_Registers$50$B)
	.dwattr DW$602, DW_AT_high_pc(DW$L$_Registers$50$E)
DW$603	.dwtag  DW_TAG_loop_range
	.dwattr DW$603, DW_AT_low_pc(DW$L$_Registers$51$B)
	.dwattr DW$603, DW_AT_high_pc(DW$L$_Registers$51$E)
DW$604	.dwtag  DW_TAG_loop_range
	.dwattr DW$604, DW_AT_low_pc(DW$L$_Registers$52$B)
	.dwattr DW$604, DW_AT_high_pc(DW$L$_Registers$52$E)
DW$605	.dwtag  DW_TAG_loop_range
	.dwattr DW$605, DW_AT_low_pc(DW$L$_Registers$53$B)
	.dwattr DW$605, DW_AT_high_pc(DW$L$_Registers$53$E)
DW$606	.dwtag  DW_TAG_loop_range
	.dwattr DW$606, DW_AT_low_pc(DW$L$_Registers$54$B)
	.dwattr DW$606, DW_AT_high_pc(DW$L$_Registers$54$E)
DW$607	.dwtag  DW_TAG_loop_range
	.dwattr DW$607, DW_AT_low_pc(DW$L$_Registers$55$B)
	.dwattr DW$607, DW_AT_high_pc(DW$L$_Registers$55$E)
DW$608	.dwtag  DW_TAG_loop_range
	.dwattr DW$608, DW_AT_low_pc(DW$L$_Registers$56$B)
	.dwattr DW$608, DW_AT_high_pc(DW$L$_Registers$56$E)
DW$609	.dwtag  DW_TAG_loop_range
	.dwattr DW$609, DW_AT_low_pc(DW$L$_Registers$57$B)
	.dwattr DW$609, DW_AT_high_pc(DW$L$_Registers$57$E)
DW$610	.dwtag  DW_TAG_loop_range
	.dwattr DW$610, DW_AT_low_pc(DW$L$_Registers$58$B)
	.dwattr DW$610, DW_AT_high_pc(DW$L$_Registers$58$E)
DW$611	.dwtag  DW_TAG_loop_range
	.dwattr DW$611, DW_AT_low_pc(DW$L$_Registers$59$B)
	.dwattr DW$611, DW_AT_high_pc(DW$L$_Registers$59$E)
DW$612	.dwtag  DW_TAG_loop_range
	.dwattr DW$612, DW_AT_low_pc(DW$L$_Registers$60$B)
	.dwattr DW$612, DW_AT_high_pc(DW$L$_Registers$60$E)
DW$613	.dwtag  DW_TAG_loop_range
	.dwattr DW$613, DW_AT_low_pc(DW$L$_Registers$61$B)
	.dwattr DW$613, DW_AT_high_pc(DW$L$_Registers$61$E)
DW$614	.dwtag  DW_TAG_loop_range
	.dwattr DW$614, DW_AT_low_pc(DW$L$_Registers$62$B)
	.dwattr DW$614, DW_AT_high_pc(DW$L$_Registers$62$E)
DW$615	.dwtag  DW_TAG_loop_range
	.dwattr DW$615, DW_AT_low_pc(DW$L$_Registers$63$B)
	.dwattr DW$615, DW_AT_high_pc(DW$L$_Registers$63$E)
DW$616	.dwtag  DW_TAG_loop_range
	.dwattr DW$616, DW_AT_low_pc(DW$L$_Registers$64$B)
	.dwattr DW$616, DW_AT_high_pc(DW$L$_Registers$64$E)
DW$617	.dwtag  DW_TAG_loop_range
	.dwattr DW$617, DW_AT_low_pc(DW$L$_Registers$65$B)
	.dwattr DW$617, DW_AT_high_pc(DW$L$_Registers$65$E)
DW$618	.dwtag  DW_TAG_loop_range
	.dwattr DW$618, DW_AT_low_pc(DW$L$_Registers$66$B)
	.dwattr DW$618, DW_AT_high_pc(DW$L$_Registers$66$E)
DW$619	.dwtag  DW_TAG_loop_range
	.dwattr DW$619, DW_AT_low_pc(DW$L$_Registers$67$B)
	.dwattr DW$619, DW_AT_high_pc(DW$L$_Registers$67$E)
DW$620	.dwtag  DW_TAG_loop_range
	.dwattr DW$620, DW_AT_low_pc(DW$L$_Registers$68$B)
	.dwattr DW$620, DW_AT_high_pc(DW$L$_Registers$68$E)
DW$621	.dwtag  DW_TAG_loop_range
	.dwattr DW$621, DW_AT_low_pc(DW$L$_Registers$69$B)
	.dwattr DW$621, DW_AT_high_pc(DW$L$_Registers$69$E)
DW$622	.dwtag  DW_TAG_loop_range
	.dwattr DW$622, DW_AT_low_pc(DW$L$_Registers$70$B)
	.dwattr DW$622, DW_AT_high_pc(DW$L$_Registers$70$E)
DW$623	.dwtag  DW_TAG_loop_range
	.dwattr DW$623, DW_AT_low_pc(DW$L$_Registers$71$B)
	.dwattr DW$623, DW_AT_high_pc(DW$L$_Registers$71$E)
DW$624	.dwtag  DW_TAG_loop_range
	.dwattr DW$624, DW_AT_low_pc(DW$L$_Registers$72$B)
	.dwattr DW$624, DW_AT_high_pc(DW$L$_Registers$72$E)
DW$625	.dwtag  DW_TAG_loop_range
	.dwattr DW$625, DW_AT_low_pc(DW$L$_Registers$73$B)
	.dwattr DW$625, DW_AT_high_pc(DW$L$_Registers$73$E)
DW$626	.dwtag  DW_TAG_loop_range
	.dwattr DW$626, DW_AT_low_pc(DW$L$_Registers$74$B)
	.dwattr DW$626, DW_AT_high_pc(DW$L$_Registers$74$E)
DW$627	.dwtag  DW_TAG_loop_range
	.dwattr DW$627, DW_AT_low_pc(DW$L$_Registers$75$B)
	.dwattr DW$627, DW_AT_high_pc(DW$L$_Registers$75$E)
DW$628	.dwtag  DW_TAG_loop_range
	.dwattr DW$628, DW_AT_low_pc(DW$L$_Registers$76$B)
	.dwattr DW$628, DW_AT_high_pc(DW$L$_Registers$76$E)
DW$629	.dwtag  DW_TAG_loop_range
	.dwattr DW$629, DW_AT_low_pc(DW$L$_Registers$77$B)
	.dwattr DW$629, DW_AT_high_pc(DW$L$_Registers$77$E)
DW$630	.dwtag  DW_TAG_loop_range
	.dwattr DW$630, DW_AT_low_pc(DW$L$_Registers$78$B)
	.dwattr DW$630, DW_AT_high_pc(DW$L$_Registers$78$E)
DW$631	.dwtag  DW_TAG_loop_range
	.dwattr DW$631, DW_AT_low_pc(DW$L$_Registers$79$B)
	.dwattr DW$631, DW_AT_high_pc(DW$L$_Registers$79$E)
DW$632	.dwtag  DW_TAG_loop_range
	.dwattr DW$632, DW_AT_low_pc(DW$L$_Registers$80$B)
	.dwattr DW$632, DW_AT_high_pc(DW$L$_Registers$80$E)
DW$633	.dwtag  DW_TAG_loop_range
	.dwattr DW$633, DW_AT_low_pc(DW$L$_Registers$81$B)
	.dwattr DW$633, DW_AT_high_pc(DW$L$_Registers$81$E)
DW$634	.dwtag  DW_TAG_loop_range
	.dwattr DW$634, DW_AT_low_pc(DW$L$_Registers$82$B)
	.dwattr DW$634, DW_AT_high_pc(DW$L$_Registers$82$E)
DW$635	.dwtag  DW_TAG_loop_range
	.dwattr DW$635, DW_AT_low_pc(DW$L$_Registers$83$B)
	.dwattr DW$635, DW_AT_high_pc(DW$L$_Registers$83$E)
DW$636	.dwtag  DW_TAG_loop_range
	.dwattr DW$636, DW_AT_low_pc(DW$L$_Registers$84$B)
	.dwattr DW$636, DW_AT_high_pc(DW$L$_Registers$84$E)
DW$637	.dwtag  DW_TAG_loop_range
	.dwattr DW$637, DW_AT_low_pc(DW$L$_Registers$85$B)
	.dwattr DW$637, DW_AT_high_pc(DW$L$_Registers$85$E)
DW$638	.dwtag  DW_TAG_loop_range
	.dwattr DW$638, DW_AT_low_pc(DW$L$_Registers$86$B)
	.dwattr DW$638, DW_AT_high_pc(DW$L$_Registers$86$E)
DW$639	.dwtag  DW_TAG_loop_range
	.dwattr DW$639, DW_AT_low_pc(DW$L$_Registers$87$B)
	.dwattr DW$639, DW_AT_high_pc(DW$L$_Registers$87$E)
DW$640	.dwtag  DW_TAG_loop_range
	.dwattr DW$640, DW_AT_low_pc(DW$L$_Registers$88$B)
	.dwattr DW$640, DW_AT_high_pc(DW$L$_Registers$88$E)
DW$641	.dwtag  DW_TAG_loop_range
	.dwattr DW$641, DW_AT_low_pc(DW$L$_Registers$89$B)
	.dwattr DW$641, DW_AT_high_pc(DW$L$_Registers$89$E)
DW$642	.dwtag  DW_TAG_loop_range
	.dwattr DW$642, DW_AT_low_pc(DW$L$_Registers$90$B)
	.dwattr DW$642, DW_AT_high_pc(DW$L$_Registers$90$E)
DW$643	.dwtag  DW_TAG_loop_range
	.dwattr DW$643, DW_AT_low_pc(DW$L$_Registers$91$B)
	.dwattr DW$643, DW_AT_high_pc(DW$L$_Registers$91$E)
DW$644	.dwtag  DW_TAG_loop_range
	.dwattr DW$644, DW_AT_low_pc(DW$L$_Registers$92$B)
	.dwattr DW$644, DW_AT_high_pc(DW$L$_Registers$92$E)
DW$645	.dwtag  DW_TAG_loop_range
	.dwattr DW$645, DW_AT_low_pc(DW$L$_Registers$93$B)
	.dwattr DW$645, DW_AT_high_pc(DW$L$_Registers$93$E)
DW$646	.dwtag  DW_TAG_loop_range
	.dwattr DW$646, DW_AT_low_pc(DW$L$_Registers$94$B)
	.dwattr DW$646, DW_AT_high_pc(DW$L$_Registers$94$E)
DW$647	.dwtag  DW_TAG_loop_range
	.dwattr DW$647, DW_AT_low_pc(DW$L$_Registers$95$B)
	.dwattr DW$647, DW_AT_high_pc(DW$L$_Registers$95$E)
DW$648	.dwtag  DW_TAG_loop_range
	.dwattr DW$648, DW_AT_low_pc(DW$L$_Registers$96$B)
	.dwattr DW$648, DW_AT_high_pc(DW$L$_Registers$96$E)
DW$649	.dwtag  DW_TAG_loop_range
	.dwattr DW$649, DW_AT_low_pc(DW$L$_Registers$97$B)
	.dwattr DW$649, DW_AT_high_pc(DW$L$_Registers$97$E)
DW$650	.dwtag  DW_TAG_loop_range
	.dwattr DW$650, DW_AT_low_pc(DW$L$_Registers$98$B)
	.dwattr DW$650, DW_AT_high_pc(DW$L$_Registers$98$E)
DW$651	.dwtag  DW_TAG_loop_range
	.dwattr DW$651, DW_AT_low_pc(DW$L$_Registers$99$B)
	.dwattr DW$651, DW_AT_high_pc(DW$L$_Registers$99$E)
DW$652	.dwtag  DW_TAG_loop_range
	.dwattr DW$652, DW_AT_low_pc(DW$L$_Registers$100$B)
	.dwattr DW$652, DW_AT_high_pc(DW$L$_Registers$100$E)
DW$653	.dwtag  DW_TAG_loop_range
	.dwattr DW$653, DW_AT_low_pc(DW$L$_Registers$101$B)
	.dwattr DW$653, DW_AT_high_pc(DW$L$_Registers$101$E)
DW$654	.dwtag  DW_TAG_loop_range
	.dwattr DW$654, DW_AT_low_pc(DW$L$_Registers$102$B)
	.dwattr DW$654, DW_AT_high_pc(DW$L$_Registers$102$E)
DW$655	.dwtag  DW_TAG_loop_range
	.dwattr DW$655, DW_AT_low_pc(DW$L$_Registers$103$B)
	.dwattr DW$655, DW_AT_high_pc(DW$L$_Registers$103$E)
DW$656	.dwtag  DW_TAG_loop_range
	.dwattr DW$656, DW_AT_low_pc(DW$L$_Registers$104$B)
	.dwattr DW$656, DW_AT_high_pc(DW$L$_Registers$104$E)
DW$657	.dwtag  DW_TAG_loop_range
	.dwattr DW$657, DW_AT_low_pc(DW$L$_Registers$105$B)
	.dwattr DW$657, DW_AT_high_pc(DW$L$_Registers$105$E)
DW$658	.dwtag  DW_TAG_loop_range
	.dwattr DW$658, DW_AT_low_pc(DW$L$_Registers$106$B)
	.dwattr DW$658, DW_AT_high_pc(DW$L$_Registers$106$E)
DW$659	.dwtag  DW_TAG_loop_range
	.dwattr DW$659, DW_AT_low_pc(DW$L$_Registers$107$B)
	.dwattr DW$659, DW_AT_high_pc(DW$L$_Registers$107$E)
DW$660	.dwtag  DW_TAG_loop_range
	.dwattr DW$660, DW_AT_low_pc(DW$L$_Registers$108$B)
	.dwattr DW$660, DW_AT_high_pc(DW$L$_Registers$108$E)
DW$661	.dwtag  DW_TAG_loop_range
	.dwattr DW$661, DW_AT_low_pc(DW$L$_Registers$109$B)
	.dwattr DW$661, DW_AT_high_pc(DW$L$_Registers$109$E)
DW$662	.dwtag  DW_TAG_loop_range
	.dwattr DW$662, DW_AT_low_pc(DW$L$_Registers$110$B)
	.dwattr DW$662, DW_AT_high_pc(DW$L$_Registers$110$E)
DW$663	.dwtag  DW_TAG_loop_range
	.dwattr DW$663, DW_AT_low_pc(DW$L$_Registers$111$B)
	.dwattr DW$663, DW_AT_high_pc(DW$L$_Registers$111$E)
DW$664	.dwtag  DW_TAG_loop_range
	.dwattr DW$664, DW_AT_low_pc(DW$L$_Registers$112$B)
	.dwattr DW$664, DW_AT_high_pc(DW$L$_Registers$112$E)
DW$665	.dwtag  DW_TAG_loop_range
	.dwattr DW$665, DW_AT_low_pc(DW$L$_Registers$113$B)
	.dwattr DW$665, DW_AT_high_pc(DW$L$_Registers$113$E)
DW$666	.dwtag  DW_TAG_loop_range
	.dwattr DW$666, DW_AT_low_pc(DW$L$_Registers$114$B)
	.dwattr DW$666, DW_AT_high_pc(DW$L$_Registers$114$E)
DW$667	.dwtag  DW_TAG_loop_range
	.dwattr DW$667, DW_AT_low_pc(DW$L$_Registers$115$B)
	.dwattr DW$667, DW_AT_high_pc(DW$L$_Registers$115$E)
DW$668	.dwtag  DW_TAG_loop_range
	.dwattr DW$668, DW_AT_low_pc(DW$L$_Registers$116$B)
	.dwattr DW$668, DW_AT_high_pc(DW$L$_Registers$116$E)
DW$669	.dwtag  DW_TAG_loop_range
	.dwattr DW$669, DW_AT_low_pc(DW$L$_Registers$117$B)
	.dwattr DW$669, DW_AT_high_pc(DW$L$_Registers$117$E)
DW$670	.dwtag  DW_TAG_loop_range
	.dwattr DW$670, DW_AT_low_pc(DW$L$_Registers$118$B)
	.dwattr DW$670, DW_AT_high_pc(DW$L$_Registers$118$E)
DW$671	.dwtag  DW_TAG_loop_range
	.dwattr DW$671, DW_AT_low_pc(DW$L$_Registers$119$B)
	.dwattr DW$671, DW_AT_high_pc(DW$L$_Registers$119$E)
DW$672	.dwtag  DW_TAG_loop_range
	.dwattr DW$672, DW_AT_low_pc(DW$L$_Registers$120$B)
	.dwattr DW$672, DW_AT_high_pc(DW$L$_Registers$120$E)
DW$673	.dwtag  DW_TAG_loop_range
	.dwattr DW$673, DW_AT_low_pc(DW$L$_Registers$121$B)
	.dwattr DW$673, DW_AT_high_pc(DW$L$_Registers$121$E)
DW$674	.dwtag  DW_TAG_loop_range
	.dwattr DW$674, DW_AT_low_pc(DW$L$_Registers$122$B)
	.dwattr DW$674, DW_AT_high_pc(DW$L$_Registers$122$E)
DW$675	.dwtag  DW_TAG_loop_range
	.dwattr DW$675, DW_AT_low_pc(DW$L$_Registers$123$B)
	.dwattr DW$675, DW_AT_high_pc(DW$L$_Registers$123$E)
DW$676	.dwtag  DW_TAG_loop_range
	.dwattr DW$676, DW_AT_low_pc(DW$L$_Registers$124$B)
	.dwattr DW$676, DW_AT_high_pc(DW$L$_Registers$124$E)
DW$677	.dwtag  DW_TAG_loop_range
	.dwattr DW$677, DW_AT_low_pc(DW$L$_Registers$7$B)
	.dwattr DW$677, DW_AT_high_pc(DW$L$_Registers$7$E)
DW$678	.dwtag  DW_TAG_loop_range
	.dwattr DW$678, DW_AT_low_pc(DW$L$_Registers$8$B)
	.dwattr DW$678, DW_AT_high_pc(DW$L$_Registers$8$E)
DW$679	.dwtag  DW_TAG_loop_range
	.dwattr DW$679, DW_AT_low_pc(DW$L$_Registers$125$B)
	.dwattr DW$679, DW_AT_high_pc(DW$L$_Registers$125$E)
DW$680	.dwtag  DW_TAG_loop_range
	.dwattr DW$680, DW_AT_low_pc(DW$L$_Registers$235$B)
	.dwattr DW$680, DW_AT_high_pc(DW$L$_Registers$235$E)
DW$681	.dwtag  DW_TAG_loop_range
	.dwattr DW$681, DW_AT_low_pc(DW$L$_Registers$236$B)
	.dwattr DW$681, DW_AT_high_pc(DW$L$_Registers$236$E)
DW$682	.dwtag  DW_TAG_loop_range
	.dwattr DW$682, DW_AT_low_pc(DW$L$_Registers$238$B)
	.dwattr DW$682, DW_AT_high_pc(DW$L$_Registers$238$E)
DW$683	.dwtag  DW_TAG_loop_range
	.dwattr DW$683, DW_AT_low_pc(DW$L$_Registers$240$B)
	.dwattr DW$683, DW_AT_high_pc(DW$L$_Registers$240$E)
DW$684	.dwtag  DW_TAG_loop_range
	.dwattr DW$684, DW_AT_low_pc(DW$L$_Registers$241$B)
	.dwattr DW$684, DW_AT_high_pc(DW$L$_Registers$241$E)
DW$685	.dwtag  DW_TAG_loop_range
	.dwattr DW$685, DW_AT_low_pc(DW$L$_Registers$242$B)
	.dwattr DW$685, DW_AT_high_pc(DW$L$_Registers$242$E)
DW$686	.dwtag  DW_TAG_loop_range
	.dwattr DW$686, DW_AT_low_pc(DW$L$_Registers$255$B)
	.dwattr DW$686, DW_AT_high_pc(DW$L$_Registers$255$E)
DW$687	.dwtag  DW_TAG_loop_range
	.dwattr DW$687, DW_AT_low_pc(DW$L$_Registers$256$B)
	.dwattr DW$687, DW_AT_high_pc(DW$L$_Registers$256$E)
DW$688	.dwtag  DW_TAG_loop_range
	.dwattr DW$688, DW_AT_low_pc(DW$L$_Registers$257$B)
	.dwattr DW$688, DW_AT_high_pc(DW$L$_Registers$257$E)
DW$689	.dwtag  DW_TAG_loop_range
	.dwattr DW$689, DW_AT_low_pc(DW$L$_Registers$261$B)
	.dwattr DW$689, DW_AT_high_pc(DW$L$_Registers$261$E)
DW$690	.dwtag  DW_TAG_loop_range
	.dwattr DW$690, DW_AT_low_pc(DW$L$_Registers$292$B)
	.dwattr DW$690, DW_AT_high_pc(DW$L$_Registers$292$E)
DW$691	.dwtag  DW_TAG_loop_range
	.dwattr DW$691, DW_AT_low_pc(DW$L$_Registers$296$B)
	.dwattr DW$691, DW_AT_high_pc(DW$L$_Registers$296$E)
DW$692	.dwtag  DW_TAG_loop_range
	.dwattr DW$692, DW_AT_low_pc(DW$L$_Registers$315$B)
	.dwattr DW$692, DW_AT_high_pc(DW$L$_Registers$315$E)
DW$693	.dwtag  DW_TAG_loop_range
	.dwattr DW$693, DW_AT_low_pc(DW$L$_Registers$321$B)
	.dwattr DW$693, DW_AT_high_pc(DW$L$_Registers$321$E)
DW$694	.dwtag  DW_TAG_loop_range
	.dwattr DW$694, DW_AT_low_pc(DW$L$_Registers$324$B)
	.dwattr DW$694, DW_AT_high_pc(DW$L$_Registers$324$E)
DW$695	.dwtag  DW_TAG_loop_range
	.dwattr DW$695, DW_AT_low_pc(DW$L$_Registers$331$B)
	.dwattr DW$695, DW_AT_high_pc(DW$L$_Registers$331$E)
DW$696	.dwtag  DW_TAG_loop_range
	.dwattr DW$696, DW_AT_low_pc(DW$L$_Registers$332$B)
	.dwattr DW$696, DW_AT_high_pc(DW$L$_Registers$332$E)
DW$697	.dwtag  DW_TAG_loop_range
	.dwattr DW$697, DW_AT_low_pc(DW$L$_Registers$336$B)
	.dwattr DW$697, DW_AT_high_pc(DW$L$_Registers$336$E)
DW$698	.dwtag  DW_TAG_loop_range
	.dwattr DW$698, DW_AT_low_pc(DW$L$_Registers$345$B)
	.dwattr DW$698, DW_AT_high_pc(DW$L$_Registers$345$E)
DW$699	.dwtag  DW_TAG_loop_range
	.dwattr DW$699, DW_AT_low_pc(DW$L$_Registers$350$B)
	.dwattr DW$699, DW_AT_high_pc(DW$L$_Registers$350$E)
DW$700	.dwtag  DW_TAG_loop_range
	.dwattr DW$700, DW_AT_low_pc(DW$L$_Registers$357$B)
	.dwattr DW$700, DW_AT_high_pc(DW$L$_Registers$357$E)
DW$701	.dwtag  DW_TAG_loop_range
	.dwattr DW$701, DW_AT_low_pc(DW$L$_Registers$359$B)
	.dwattr DW$701, DW_AT_high_pc(DW$L$_Registers$359$E)
DW$702	.dwtag  DW_TAG_loop_range
	.dwattr DW$702, DW_AT_low_pc(DW$L$_Registers$360$B)
	.dwattr DW$702, DW_AT_high_pc(DW$L$_Registers$360$E)
DW$703	.dwtag  DW_TAG_loop_range
	.dwattr DW$703, DW_AT_low_pc(DW$L$_Registers$361$B)
	.dwattr DW$703, DW_AT_high_pc(DW$L$_Registers$361$E)
DW$704	.dwtag  DW_TAG_loop_range
	.dwattr DW$704, DW_AT_low_pc(DW$L$_Registers$364$B)
	.dwattr DW$704, DW_AT_high_pc(DW$L$_Registers$364$E)
DW$705	.dwtag  DW_TAG_loop_range
	.dwattr DW$705, DW_AT_low_pc(DW$L$_Registers$367$B)
	.dwattr DW$705, DW_AT_high_pc(DW$L$_Registers$367$E)
DW$706	.dwtag  DW_TAG_loop_range
	.dwattr DW$706, DW_AT_low_pc(DW$L$_Registers$371$B)
	.dwattr DW$706, DW_AT_high_pc(DW$L$_Registers$371$E)
DW$707	.dwtag  DW_TAG_loop_range
	.dwattr DW$707, DW_AT_low_pc(DW$L$_Registers$372$B)
	.dwattr DW$707, DW_AT_high_pc(DW$L$_Registers$372$E)
DW$708	.dwtag  DW_TAG_loop_range
	.dwattr DW$708, DW_AT_low_pc(DW$L$_Registers$373$B)
	.dwattr DW$708, DW_AT_high_pc(DW$L$_Registers$373$E)
DW$709	.dwtag  DW_TAG_loop_range
	.dwattr DW$709, DW_AT_low_pc(DW$L$_Registers$374$B)
	.dwattr DW$709, DW_AT_high_pc(DW$L$_Registers$374$E)
DW$710	.dwtag  DW_TAG_loop_range
	.dwattr DW$710, DW_AT_low_pc(DW$L$_Registers$375$B)
	.dwattr DW$710, DW_AT_high_pc(DW$L$_Registers$375$E)
DW$711	.dwtag  DW_TAG_loop_range
	.dwattr DW$711, DW_AT_low_pc(DW$L$_Registers$376$B)
	.dwattr DW$711, DW_AT_high_pc(DW$L$_Registers$376$E)
DW$712	.dwtag  DW_TAG_loop_range
	.dwattr DW$712, DW_AT_low_pc(DW$L$_Registers$377$B)
	.dwattr DW$712, DW_AT_high_pc(DW$L$_Registers$377$E)
DW$713	.dwtag  DW_TAG_loop_range
	.dwattr DW$713, DW_AT_low_pc(DW$L$_Registers$378$B)
	.dwattr DW$713, DW_AT_high_pc(DW$L$_Registers$378$E)
DW$714	.dwtag  DW_TAG_loop_range
	.dwattr DW$714, DW_AT_low_pc(DW$L$_Registers$379$B)
	.dwattr DW$714, DW_AT_high_pc(DW$L$_Registers$379$E)
DW$715	.dwtag  DW_TAG_loop_range
	.dwattr DW$715, DW_AT_low_pc(DW$L$_Registers$380$B)
	.dwattr DW$715, DW_AT_high_pc(DW$L$_Registers$380$E)
DW$716	.dwtag  DW_TAG_loop_range
	.dwattr DW$716, DW_AT_low_pc(DW$L$_Registers$382$B)
	.dwattr DW$716, DW_AT_high_pc(DW$L$_Registers$382$E)
DW$717	.dwtag  DW_TAG_loop_range
	.dwattr DW$717, DW_AT_low_pc(DW$L$_Registers$383$B)
	.dwattr DW$717, DW_AT_high_pc(DW$L$_Registers$383$E)
DW$718	.dwtag  DW_TAG_loop_range
	.dwattr DW$718, DW_AT_low_pc(DW$L$_Registers$386$B)
	.dwattr DW$718, DW_AT_high_pc(DW$L$_Registers$386$E)
DW$719	.dwtag  DW_TAG_loop_range
	.dwattr DW$719, DW_AT_low_pc(DW$L$_Registers$387$B)
	.dwattr DW$719, DW_AT_high_pc(DW$L$_Registers$387$E)
DW$720	.dwtag  DW_TAG_loop_range
	.dwattr DW$720, DW_AT_low_pc(DW$L$_Registers$389$B)
	.dwattr DW$720, DW_AT_high_pc(DW$L$_Registers$389$E)
DW$721	.dwtag  DW_TAG_loop_range
	.dwattr DW$721, DW_AT_low_pc(DW$L$_Registers$391$B)
	.dwattr DW$721, DW_AT_high_pc(DW$L$_Registers$391$E)
DW$722	.dwtag  DW_TAG_loop_range
	.dwattr DW$722, DW_AT_low_pc(DW$L$_Registers$393$B)
	.dwattr DW$722, DW_AT_high_pc(DW$L$_Registers$393$E)
DW$723	.dwtag  DW_TAG_loop_range
	.dwattr DW$723, DW_AT_low_pc(DW$L$_Registers$394$B)
	.dwattr DW$723, DW_AT_high_pc(DW$L$_Registers$394$E)
DW$724	.dwtag  DW_TAG_loop_range
	.dwattr DW$724, DW_AT_low_pc(DW$L$_Registers$395$B)
	.dwattr DW$724, DW_AT_high_pc(DW$L$_Registers$395$E)
DW$725	.dwtag  DW_TAG_loop_range
	.dwattr DW$725, DW_AT_low_pc(DW$L$_Registers$398$B)
	.dwattr DW$725, DW_AT_high_pc(DW$L$_Registers$398$E)
DW$726	.dwtag  DW_TAG_loop_range
	.dwattr DW$726, DW_AT_low_pc(DW$L$_Registers$399$B)
	.dwattr DW$726, DW_AT_high_pc(DW$L$_Registers$399$E)
DW$727	.dwtag  DW_TAG_loop_range
	.dwattr DW$727, DW_AT_low_pc(DW$L$_Registers$400$B)
	.dwattr DW$727, DW_AT_high_pc(DW$L$_Registers$400$E)
DW$728	.dwtag  DW_TAG_loop_range
	.dwattr DW$728, DW_AT_low_pc(DW$L$_Registers$401$B)
	.dwattr DW$728, DW_AT_high_pc(DW$L$_Registers$401$E)
DW$729	.dwtag  DW_TAG_loop_range
	.dwattr DW$729, DW_AT_low_pc(DW$L$_Registers$403$B)
	.dwattr DW$729, DW_AT_high_pc(DW$L$_Registers$403$E)
DW$730	.dwtag  DW_TAG_loop_range
	.dwattr DW$730, DW_AT_low_pc(DW$L$_Registers$404$B)
	.dwattr DW$730, DW_AT_high_pc(DW$L$_Registers$404$E)
DW$731	.dwtag  DW_TAG_loop_range
	.dwattr DW$731, DW_AT_low_pc(DW$L$_Registers$405$B)
	.dwattr DW$731, DW_AT_high_pc(DW$L$_Registers$405$E)
DW$732	.dwtag  DW_TAG_loop_range
	.dwattr DW$732, DW_AT_low_pc(DW$L$_Registers$406$B)
	.dwattr DW$732, DW_AT_high_pc(DW$L$_Registers$406$E)
DW$733	.dwtag  DW_TAG_loop_range
	.dwattr DW$733, DW_AT_low_pc(DW$L$_Registers$409$B)
	.dwattr DW$733, DW_AT_high_pc(DW$L$_Registers$409$E)
DW$734	.dwtag  DW_TAG_loop_range
	.dwattr DW$734, DW_AT_low_pc(DW$L$_Registers$410$B)
	.dwattr DW$734, DW_AT_high_pc(DW$L$_Registers$410$E)
DW$735	.dwtag  DW_TAG_loop_range
	.dwattr DW$735, DW_AT_low_pc(DW$L$_Registers$411$B)
	.dwattr DW$735, DW_AT_high_pc(DW$L$_Registers$411$E)
DW$736	.dwtag  DW_TAG_loop_range
	.dwattr DW$736, DW_AT_low_pc(DW$L$_Registers$412$B)
	.dwattr DW$736, DW_AT_high_pc(DW$L$_Registers$412$E)
DW$737	.dwtag  DW_TAG_loop_range
	.dwattr DW$737, DW_AT_low_pc(DW$L$_Registers$413$B)
	.dwattr DW$737, DW_AT_high_pc(DW$L$_Registers$413$E)
DW$738	.dwtag  DW_TAG_loop_range
	.dwattr DW$738, DW_AT_low_pc(DW$L$_Registers$417$B)
	.dwattr DW$738, DW_AT_high_pc(DW$L$_Registers$417$E)
DW$739	.dwtag  DW_TAG_loop_range
	.dwattr DW$739, DW_AT_low_pc(DW$L$_Registers$420$B)
	.dwattr DW$739, DW_AT_high_pc(DW$L$_Registers$420$E)
DW$740	.dwtag  DW_TAG_loop_range
	.dwattr DW$740, DW_AT_low_pc(DW$L$_Registers$421$B)
	.dwattr DW$740, DW_AT_high_pc(DW$L$_Registers$421$E)
DW$741	.dwtag  DW_TAG_loop_range
	.dwattr DW$741, DW_AT_low_pc(DW$L$_Registers$422$B)
	.dwattr DW$741, DW_AT_high_pc(DW$L$_Registers$422$E)
DW$742	.dwtag  DW_TAG_loop_range
	.dwattr DW$742, DW_AT_low_pc(DW$L$_Registers$423$B)
	.dwattr DW$742, DW_AT_high_pc(DW$L$_Registers$423$E)
DW$743	.dwtag  DW_TAG_loop_range
	.dwattr DW$743, DW_AT_low_pc(DW$L$_Registers$424$B)
	.dwattr DW$743, DW_AT_high_pc(DW$L$_Registers$424$E)
DW$744	.dwtag  DW_TAG_loop_range
	.dwattr DW$744, DW_AT_low_pc(DW$L$_Registers$426$B)
	.dwattr DW$744, DW_AT_high_pc(DW$L$_Registers$426$E)
DW$745	.dwtag  DW_TAG_loop_range
	.dwattr DW$745, DW_AT_low_pc(DW$L$_Registers$427$B)
	.dwattr DW$745, DW_AT_high_pc(DW$L$_Registers$427$E)
DW$746	.dwtag  DW_TAG_loop_range
	.dwattr DW$746, DW_AT_low_pc(DW$L$_Registers$428$B)
	.dwattr DW$746, DW_AT_high_pc(DW$L$_Registers$428$E)
DW$747	.dwtag  DW_TAG_loop_range
	.dwattr DW$747, DW_AT_low_pc(DW$L$_Registers$429$B)
	.dwattr DW$747, DW_AT_high_pc(DW$L$_Registers$429$E)
DW$748	.dwtag  DW_TAG_loop_range
	.dwattr DW$748, DW_AT_low_pc(DW$L$_Registers$430$B)
	.dwattr DW$748, DW_AT_high_pc(DW$L$_Registers$430$E)
DW$749	.dwtag  DW_TAG_loop_range
	.dwattr DW$749, DW_AT_low_pc(DW$L$_Registers$431$B)
	.dwattr DW$749, DW_AT_high_pc(DW$L$_Registers$431$E)
DW$750	.dwtag  DW_TAG_loop_range
	.dwattr DW$750, DW_AT_low_pc(DW$L$_Registers$434$B)
	.dwattr DW$750, DW_AT_high_pc(DW$L$_Registers$434$E)
DW$751	.dwtag  DW_TAG_loop_range
	.dwattr DW$751, DW_AT_low_pc(DW$L$_Registers$437$B)
	.dwattr DW$751, DW_AT_high_pc(DW$L$_Registers$437$E)
DW$752	.dwtag  DW_TAG_loop_range
	.dwattr DW$752, DW_AT_low_pc(DW$L$_Registers$438$B)
	.dwattr DW$752, DW_AT_high_pc(DW$L$_Registers$438$E)
DW$753	.dwtag  DW_TAG_loop_range
	.dwattr DW$753, DW_AT_low_pc(DW$L$_Registers$439$B)
	.dwattr DW$753, DW_AT_high_pc(DW$L$_Registers$439$E)
DW$754	.dwtag  DW_TAG_loop_range
	.dwattr DW$754, DW_AT_low_pc(DW$L$_Registers$443$B)
	.dwattr DW$754, DW_AT_high_pc(DW$L$_Registers$443$E)
DW$755	.dwtag  DW_TAG_loop_range
	.dwattr DW$755, DW_AT_low_pc(DW$L$_Registers$444$B)
	.dwattr DW$755, DW_AT_high_pc(DW$L$_Registers$444$E)
DW$756	.dwtag  DW_TAG_loop_range
	.dwattr DW$756, DW_AT_low_pc(DW$L$_Registers$447$B)
	.dwattr DW$756, DW_AT_high_pc(DW$L$_Registers$447$E)
DW$757	.dwtag  DW_TAG_loop_range
	.dwattr DW$757, DW_AT_low_pc(DW$L$_Registers$450$B)
	.dwattr DW$757, DW_AT_high_pc(DW$L$_Registers$450$E)
DW$758	.dwtag  DW_TAG_loop_range
	.dwattr DW$758, DW_AT_low_pc(DW$L$_Registers$451$B)
	.dwattr DW$758, DW_AT_high_pc(DW$L$_Registers$451$E)
DW$759	.dwtag  DW_TAG_loop_range
	.dwattr DW$759, DW_AT_low_pc(DW$L$_Registers$461$B)
	.dwattr DW$759, DW_AT_high_pc(DW$L$_Registers$461$E)
DW$760	.dwtag  DW_TAG_loop_range
	.dwattr DW$760, DW_AT_low_pc(DW$L$_Registers$462$B)
	.dwattr DW$760, DW_AT_high_pc(DW$L$_Registers$462$E)
DW$761	.dwtag  DW_TAG_loop_range
	.dwattr DW$761, DW_AT_low_pc(DW$L$_Registers$463$B)
	.dwattr DW$761, DW_AT_high_pc(DW$L$_Registers$463$E)
DW$762	.dwtag  DW_TAG_loop_range
	.dwattr DW$762, DW_AT_low_pc(DW$L$_Registers$466$B)
	.dwattr DW$762, DW_AT_high_pc(DW$L$_Registers$466$E)
DW$763	.dwtag  DW_TAG_loop_range
	.dwattr DW$763, DW_AT_low_pc(DW$L$_Registers$469$B)
	.dwattr DW$763, DW_AT_high_pc(DW$L$_Registers$469$E)
DW$764	.dwtag  DW_TAG_loop_range
	.dwattr DW$764, DW_AT_low_pc(DW$L$_Registers$472$B)
	.dwattr DW$764, DW_AT_high_pc(DW$L$_Registers$472$E)
DW$765	.dwtag  DW_TAG_loop_range
	.dwattr DW$765, DW_AT_low_pc(DW$L$_Registers$473$B)
	.dwattr DW$765, DW_AT_high_pc(DW$L$_Registers$473$E)
DW$766	.dwtag  DW_TAG_loop_range
	.dwattr DW$766, DW_AT_low_pc(DW$L$_Registers$477$B)
	.dwattr DW$766, DW_AT_high_pc(DW$L$_Registers$477$E)
DW$767	.dwtag  DW_TAG_loop_range
	.dwattr DW$767, DW_AT_low_pc(DW$L$_Registers$478$B)
	.dwattr DW$767, DW_AT_high_pc(DW$L$_Registers$478$E)
DW$768	.dwtag  DW_TAG_loop_range
	.dwattr DW$768, DW_AT_low_pc(DW$L$_Registers$481$B)
	.dwattr DW$768, DW_AT_high_pc(DW$L$_Registers$481$E)
DW$769	.dwtag  DW_TAG_loop_range
	.dwattr DW$769, DW_AT_low_pc(DW$L$_Registers$482$B)
	.dwattr DW$769, DW_AT_high_pc(DW$L$_Registers$482$E)
DW$770	.dwtag  DW_TAG_loop_range
	.dwattr DW$770, DW_AT_low_pc(DW$L$_Registers$486$B)
	.dwattr DW$770, DW_AT_high_pc(DW$L$_Registers$486$E)
DW$771	.dwtag  DW_TAG_loop_range
	.dwattr DW$771, DW_AT_low_pc(DW$L$_Registers$489$B)
	.dwattr DW$771, DW_AT_high_pc(DW$L$_Registers$489$E)
DW$772	.dwtag  DW_TAG_loop_range
	.dwattr DW$772, DW_AT_low_pc(DW$L$_Registers$492$B)
	.dwattr DW$772, DW_AT_high_pc(DW$L$_Registers$492$E)
DW$773	.dwtag  DW_TAG_loop_range
	.dwattr DW$773, DW_AT_low_pc(DW$L$_Registers$494$B)
	.dwattr DW$773, DW_AT_high_pc(DW$L$_Registers$494$E)
DW$774	.dwtag  DW_TAG_loop_range
	.dwattr DW$774, DW_AT_low_pc(DW$L$_Registers$497$B)
	.dwattr DW$774, DW_AT_high_pc(DW$L$_Registers$497$E)
DW$775	.dwtag  DW_TAG_loop_range
	.dwattr DW$775, DW_AT_low_pc(DW$L$_Registers$500$B)
	.dwattr DW$775, DW_AT_high_pc(DW$L$_Registers$500$E)
DW$776	.dwtag  DW_TAG_loop_range
	.dwattr DW$776, DW_AT_low_pc(DW$L$_Registers$502$B)
	.dwattr DW$776, DW_AT_high_pc(DW$L$_Registers$502$E)
DW$777	.dwtag  DW_TAG_loop_range
	.dwattr DW$777, DW_AT_low_pc(DW$L$_Registers$503$B)
	.dwattr DW$777, DW_AT_high_pc(DW$L$_Registers$503$E)
DW$778	.dwtag  DW_TAG_loop_range
	.dwattr DW$778, DW_AT_low_pc(DW$L$_Registers$505$B)
	.dwattr DW$778, DW_AT_high_pc(DW$L$_Registers$505$E)
DW$779	.dwtag  DW_TAG_loop_range
	.dwattr DW$779, DW_AT_low_pc(DW$L$_Registers$506$B)
	.dwattr DW$779, DW_AT_high_pc(DW$L$_Registers$506$E)
DW$780	.dwtag  DW_TAG_loop_range
	.dwattr DW$780, DW_AT_low_pc(DW$L$_Registers$510$B)
	.dwattr DW$780, DW_AT_high_pc(DW$L$_Registers$510$E)
DW$781	.dwtag  DW_TAG_loop_range
	.dwattr DW$781, DW_AT_low_pc(DW$L$_Registers$511$B)
	.dwattr DW$781, DW_AT_high_pc(DW$L$_Registers$511$E)
DW$782	.dwtag  DW_TAG_loop_range
	.dwattr DW$782, DW_AT_low_pc(DW$L$_Registers$513$B)
	.dwattr DW$782, DW_AT_high_pc(DW$L$_Registers$513$E)
DW$783	.dwtag  DW_TAG_loop_range
	.dwattr DW$783, DW_AT_low_pc(DW$L$_Registers$515$B)
	.dwattr DW$783, DW_AT_high_pc(DW$L$_Registers$515$E)
DW$784	.dwtag  DW_TAG_loop_range
	.dwattr DW$784, DW_AT_low_pc(DW$L$_Registers$516$B)
	.dwattr DW$784, DW_AT_high_pc(DW$L$_Registers$516$E)
DW$785	.dwtag  DW_TAG_loop_range
	.dwattr DW$785, DW_AT_low_pc(DW$L$_Registers$517$B)
	.dwattr DW$785, DW_AT_high_pc(DW$L$_Registers$517$E)
DW$786	.dwtag  DW_TAG_loop_range
	.dwattr DW$786, DW_AT_low_pc(DW$L$_Registers$518$B)
	.dwattr DW$786, DW_AT_high_pc(DW$L$_Registers$518$E)
DW$787	.dwtag  DW_TAG_loop_range
	.dwattr DW$787, DW_AT_low_pc(DW$L$_Registers$520$B)
	.dwattr DW$787, DW_AT_high_pc(DW$L$_Registers$520$E)
DW$788	.dwtag  DW_TAG_loop_range
	.dwattr DW$788, DW_AT_low_pc(DW$L$_Registers$522$B)
	.dwattr DW$788, DW_AT_high_pc(DW$L$_Registers$522$E)
DW$789	.dwtag  DW_TAG_loop_range
	.dwattr DW$789, DW_AT_low_pc(DW$L$_Registers$524$B)
	.dwattr DW$789, DW_AT_high_pc(DW$L$_Registers$524$E)
DW$790	.dwtag  DW_TAG_loop_range
	.dwattr DW$790, DW_AT_low_pc(DW$L$_Registers$526$B)
	.dwattr DW$790, DW_AT_high_pc(DW$L$_Registers$526$E)
DW$791	.dwtag  DW_TAG_loop_range
	.dwattr DW$791, DW_AT_low_pc(DW$L$_Registers$527$B)
	.dwattr DW$791, DW_AT_high_pc(DW$L$_Registers$527$E)
DW$792	.dwtag  DW_TAG_loop_range
	.dwattr DW$792, DW_AT_low_pc(DW$L$_Registers$528$B)
	.dwattr DW$792, DW_AT_high_pc(DW$L$_Registers$528$E)
DW$793	.dwtag  DW_TAG_loop_range
	.dwattr DW$793, DW_AT_low_pc(DW$L$_Registers$529$B)
	.dwattr DW$793, DW_AT_high_pc(DW$L$_Registers$529$E)
DW$794	.dwtag  DW_TAG_loop_range
	.dwattr DW$794, DW_AT_low_pc(DW$L$_Registers$531$B)
	.dwattr DW$794, DW_AT_high_pc(DW$L$_Registers$531$E)
DW$795	.dwtag  DW_TAG_loop_range
	.dwattr DW$795, DW_AT_low_pc(DW$L$_Registers$533$B)
	.dwattr DW$795, DW_AT_high_pc(DW$L$_Registers$533$E)
DW$796	.dwtag  DW_TAG_loop_range
	.dwattr DW$796, DW_AT_low_pc(DW$L$_Registers$537$B)
	.dwattr DW$796, DW_AT_high_pc(DW$L$_Registers$537$E)
DW$797	.dwtag  DW_TAG_loop_range
	.dwattr DW$797, DW_AT_low_pc(DW$L$_Registers$538$B)
	.dwattr DW$797, DW_AT_high_pc(DW$L$_Registers$538$E)
DW$798	.dwtag  DW_TAG_loop_range
	.dwattr DW$798, DW_AT_low_pc(DW$L$_Registers$540$B)
	.dwattr DW$798, DW_AT_high_pc(DW$L$_Registers$540$E)
DW$799	.dwtag  DW_TAG_loop_range
	.dwattr DW$799, DW_AT_low_pc(DW$L$_Registers$542$B)
	.dwattr DW$799, DW_AT_high_pc(DW$L$_Registers$542$E)
DW$800	.dwtag  DW_TAG_loop_range
	.dwattr DW$800, DW_AT_low_pc(DW$L$_Registers$544$B)
	.dwattr DW$800, DW_AT_high_pc(DW$L$_Registers$544$E)
DW$801	.dwtag  DW_TAG_loop_range
	.dwattr DW$801, DW_AT_low_pc(DW$L$_Registers$546$B)
	.dwattr DW$801, DW_AT_high_pc(DW$L$_Registers$546$E)
DW$802	.dwtag  DW_TAG_loop_range
	.dwattr DW$802, DW_AT_low_pc(DW$L$_Registers$548$B)
	.dwattr DW$802, DW_AT_high_pc(DW$L$_Registers$548$E)
DW$803	.dwtag  DW_TAG_loop_range
	.dwattr DW$803, DW_AT_low_pc(DW$L$_Registers$550$B)
	.dwattr DW$803, DW_AT_high_pc(DW$L$_Registers$550$E)
DW$804	.dwtag  DW_TAG_loop_range
	.dwattr DW$804, DW_AT_low_pc(DW$L$_Registers$552$B)
	.dwattr DW$804, DW_AT_high_pc(DW$L$_Registers$552$E)
DW$805	.dwtag  DW_TAG_loop_range
	.dwattr DW$805, DW_AT_low_pc(DW$L$_Registers$554$B)
	.dwattr DW$805, DW_AT_high_pc(DW$L$_Registers$554$E)
DW$806	.dwtag  DW_TAG_loop_range
	.dwattr DW$806, DW_AT_low_pc(DW$L$_Registers$556$B)
	.dwattr DW$806, DW_AT_high_pc(DW$L$_Registers$556$E)
DW$807	.dwtag  DW_TAG_loop_range
	.dwattr DW$807, DW_AT_low_pc(DW$L$_Registers$558$B)
	.dwattr DW$807, DW_AT_high_pc(DW$L$_Registers$558$E)
DW$808	.dwtag  DW_TAG_loop_range
	.dwattr DW$808, DW_AT_low_pc(DW$L$_Registers$560$B)
	.dwattr DW$808, DW_AT_high_pc(DW$L$_Registers$560$E)
DW$809	.dwtag  DW_TAG_loop_range
	.dwattr DW$809, DW_AT_low_pc(DW$L$_Registers$562$B)
	.dwattr DW$809, DW_AT_high_pc(DW$L$_Registers$562$E)
DW$810	.dwtag  DW_TAG_loop_range
	.dwattr DW$810, DW_AT_low_pc(DW$L$_Registers$577$B)
	.dwattr DW$810, DW_AT_high_pc(DW$L$_Registers$577$E)
DW$811	.dwtag  DW_TAG_loop_range
	.dwattr DW$811, DW_AT_low_pc(DW$L$_Registers$586$B)
	.dwattr DW$811, DW_AT_high_pc(DW$L$_Registers$586$E)
DW$812	.dwtag  DW_TAG_loop_range
	.dwattr DW$812, DW_AT_low_pc(DW$L$_Registers$592$B)
	.dwattr DW$812, DW_AT_high_pc(DW$L$_Registers$592$E)
DW$813	.dwtag  DW_TAG_loop_range
	.dwattr DW$813, DW_AT_low_pc(DW$L$_Registers$596$B)
	.dwattr DW$813, DW_AT_high_pc(DW$L$_Registers$596$E)
DW$814	.dwtag  DW_TAG_loop_range
	.dwattr DW$814, DW_AT_low_pc(DW$L$_Registers$598$B)
	.dwattr DW$814, DW_AT_high_pc(DW$L$_Registers$598$E)
DW$815	.dwtag  DW_TAG_loop_range
	.dwattr DW$815, DW_AT_low_pc(DW$L$_Registers$600$B)
	.dwattr DW$815, DW_AT_high_pc(DW$L$_Registers$600$E)
DW$816	.dwtag  DW_TAG_loop_range
	.dwattr DW$816, DW_AT_low_pc(DW$L$_Registers$602$B)
	.dwattr DW$816, DW_AT_high_pc(DW$L$_Registers$602$E)
DW$817	.dwtag  DW_TAG_loop_range
	.dwattr DW$817, DW_AT_low_pc(DW$L$_Registers$604$B)
	.dwattr DW$817, DW_AT_high_pc(DW$L$_Registers$604$E)
DW$818	.dwtag  DW_TAG_loop_range
	.dwattr DW$818, DW_AT_low_pc(DW$L$_Registers$606$B)
	.dwattr DW$818, DW_AT_high_pc(DW$L$_Registers$606$E)
DW$819	.dwtag  DW_TAG_loop_range
	.dwattr DW$819, DW_AT_low_pc(DW$L$_Registers$607$B)
	.dwattr DW$819, DW_AT_high_pc(DW$L$_Registers$607$E)
DW$820	.dwtag  DW_TAG_loop_range
	.dwattr DW$820, DW_AT_low_pc(DW$L$_Registers$608$B)
	.dwattr DW$820, DW_AT_high_pc(DW$L$_Registers$608$E)
DW$821	.dwtag  DW_TAG_loop_range
	.dwattr DW$821, DW_AT_low_pc(DW$L$_Registers$609$B)
	.dwattr DW$821, DW_AT_high_pc(DW$L$_Registers$609$E)
DW$822	.dwtag  DW_TAG_loop_range
	.dwattr DW$822, DW_AT_low_pc(DW$L$_Registers$610$B)
	.dwattr DW$822, DW_AT_high_pc(DW$L$_Registers$610$E)
	.dwendtag DW$217

	.dwattr DW$216, DW_AT_end_file("PCModBus.c")
	.dwattr DW$216, DW_AT_end_line(0x617)
	.dwattr DW$216, DW_AT_end_column(0x01)
	.dwendtag DW$216

	.sect	".text"
	.global	_ProcessRegister

DW$823	.dwtag  DW_TAG_subprogram, DW_AT_name("ProcessRegister"), DW_AT_symbol_name("_ProcessRegister")
	.dwattr DW$823, DW_AT_low_pc(_ProcessRegister)
	.dwattr DW$823, DW_AT_high_pc(0x00)
	.dwattr DW$823, DW_AT_begin_file("PCModBus.c")
	.dwattr DW$823, DW_AT_begin_line(0x61b)
	.dwattr DW$823, DW_AT_begin_column(0x06)
	.dwattr DW$823, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$823, DW_AT_skeletal(0x01)
	.dwpsn	"PCModBus.c",1564,1

;***************************************************************
;* FNAME: _ProcessRegister              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ProcessRegister:
;* AL    assigned to _PtrTypeFlag
DW$824	.dwtag  DW_TAG_formal_parameter, DW_AT_name("PtrTypeFlag"), DW_AT_symbol_name("_PtrTypeFlag")
	.dwattr DW$824, DW_AT_type(*DW$T$136)
	.dwattr DW$824, DW_AT_location[DW_OP_reg0]
;* AR4   assigned to _Ptr
DW$825	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Ptr"), DW_AT_symbol_name("_Ptr")
	.dwattr DW$825, DW_AT_type(*DW$T$3)
	.dwattr DW$825, DW_AT_location[DW_OP_reg12]
;* AH    assigned to _NumReg
DW$826	.dwtag  DW_TAG_formal_parameter, DW_AT_name("NumReg"), DW_AT_symbol_name("_NumReg")
	.dwattr DW$826, DW_AT_type(*DW$T$11)
	.dwattr DW$826, DW_AT_location[DW_OP_reg1]
        MOVW      DP,#_pcmodbus+1
        MOVZ      AR0,AH                ; |1564| 
        MOVZ      AR6,AL                ; |1564| 
        MOVL      XAR7,XAR4             ; |1564| 
        MOV       AH,@_pcmodbus+1       ; |1568| 
        CMPB      AH,#6                 ; |1568| 
        BF        L303,EQ               ; |1568| 
        ; branchcc occurs ; |1568| 
        CMPB      AH,#16                ; |1568| 
        BF        L303,EQ               ; |1568| 
        ; branchcc occurs ; |1568| 
        MOVL      ACC,XAR7
        BF        L302,EQ               ; |1575| 
        ; branchcc occurs ; |1575| 
        MOVL      XAR5,#_pcmodbus+5     ; |1579| 
        MOVL      ACC,XAR5              ; |1579| 
        MOVL      XAR4,XAR7
        ADDU      ACC,AR0               ; |1579| 
        MOVL      XAR5,ACC              ; |1579| 
        MOVL      ACC,XAR7
        BF        L304,NEQ              ; |1579| 
        ; branchcc occurs ; |1579| 
        BF        L307,UNC              ; |1579| 
        ; branch occurs ; |1579| 
L302:    
        MOVL      XAR4,#_pcmodbus+5     ; |1575| 
        MOV       *+XAR4[AR0],#0        ; |1575| 
        BF        L307,UNC              ; |1575| 
        ; branch occurs ; |1575| 
L303:    
        MOVL      XAR5,#_pcmodbus+5     ; |1570| 
        MOVL      ACC,XAR5              ; |1570| 
        ADDU      ACC,AR0               ; |1570| 
        MOVL      XAR4,ACC              ; |1570| 
        MOVL      XAR5,XAR7             ; |1570| 
L304:    
        MOVL      ACC,XAR5
        BF        L307,EQ               ; |1584| 
        ; branchcc occurs ; |1584| 
        MOV       AL,AR6
        CMPB      AL,#2                 ; |1584| 
        BF        L306,NEQ              ; |1584| 
        ; branchcc occurs ; |1584| 
        MOVW      DP,#_pcmodbus+1
        MOV       AL,@_pcmodbus+1       ; |1587| 
        CMPB      AL,#6                 ; |1587| 
        BF        L305,EQ               ; |1587| 
        ; branchcc occurs ; |1587| 
        CMPB      AL,#16                ; |1587| 
        BF        L305,EQ               ; |1587| 
        ; branchcc occurs ; |1587| 
        MOVL      XAR5,#_pcmodbus+5     ; |1594| 
        MOVL      XAR4,XAR7             ; |1594| 
        MOVL      ACC,XAR5              ; |1594| 
        ADDU      ACC,AR0               ; |1594| 
        MOVL      XAR5,ACC              ; |1594| 
        MOV       ACC,*+XAR4[0] << #8   ; |1594| 
        MOVL      XAR4,XAR7             ; |1594| 
        MOV       *+XAR5[0],AL          ; |1594| 
        MOV       AH,*+XAR4[0]          ; |1595| 
        ANDB      AH,#0xff              ; |1595| 
        ADD       AH,AL                 ; |1595| 
        MOV       *+XAR5[0],AH          ; |1595| 
        BF        L307,UNC              ; |1595| 
        ; branch occurs ; |1595| 
L305:    
        MOV       AL,*+XAR4[0]          ; |1589| 
        LSR       AL,8                  ; |1589| 
        MOV       *+XAR5[0],AL          ; |1589| 
        MOV       AL,*+XAR4[0]          ; |1590| 
        ANDB      AL,#0xff              ; |1590| 
        MOVL      XAR4,XAR5             ; |1590| 
        MOV       *+XAR4[1],AL          ; |1590| 
        BF        L307,UNC              ; |1591| 
        ; branch occurs ; |1591| 
L306:    
        MOV       AL,*+XAR4[0]          ; |1604| 
        MOVL      XAR4,XAR5             ; |1604| 
        MOV       *+XAR4[0],AL          ; |1604| 
L307:    
	.dwpsn	"PCModBus.c",1608,1
        LRETR
        ; return occurs
	.dwattr DW$823, DW_AT_end_file("PCModBus.c")
	.dwattr DW$823, DW_AT_end_line(0x648)
	.dwattr DW$823, DW_AT_end_column(0x01)
	.dwendtag DW$823

	.sect	".text"
	.global	_ProcessEngineRunT

DW$827	.dwtag  DW_TAG_subprogram, DW_AT_name("ProcessEngineRunT"), DW_AT_symbol_name("_ProcessEngineRunT")
	.dwattr DW$827, DW_AT_low_pc(_ProcessEngineRunT)
	.dwattr DW$827, DW_AT_high_pc(0x00)
	.dwattr DW$827, DW_AT_begin_file("PCModBus.c")
	.dwattr DW$827, DW_AT_begin_line(0x64c)
	.dwattr DW$827, DW_AT_begin_column(0x06)
	.dwattr DW$827, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$827, DW_AT_skeletal(0x01)
	.dwpsn	"PCModBus.c",1613,1

;***************************************************************
;* FNAME: _ProcessEngineRunT            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ProcessEngineRunT:
;* AL    assigned to _regadd
DW$828	.dwtag  DW_TAG_formal_parameter, DW_AT_name("regadd"), DW_AT_symbol_name("_regadd")
	.dwattr DW$828, DW_AT_type(*DW$T$11)
	.dwattr DW$828, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _NumReg
DW$829	.dwtag  DW_TAG_formal_parameter, DW_AT_name("NumReg"), DW_AT_symbol_name("_NumReg")
	.dwattr DW$829, DW_AT_type(*DW$T$11)
	.dwattr DW$829, DW_AT_location[DW_OP_reg1]
        CMP       AL,#2071              ; |1619| 
        MOVZ      AR0,AH                ; |1613| 
        BF        L309,EQ               ; |1619| 
        ; branchcc occurs ; |1619| 
        CMP       AL,#2072              ; |1635| 
        BF        L311,NEQ              ; |1635| 
        ; branchcc occurs ; |1635| 
        MOVW      DP,#_pcmodbus+1
        MOV       AL,@_pcmodbus+1       ; |1637| 
        CMPB      AL,#6                 ; |1637| 
        BF        L308,EQ               ; |1637| 
        ; branchcc occurs ; |1637| 
        CMPB      AL,#16                ; |1637| 
        BF        L308,EQ               ; |1637| 
        ; branchcc occurs ; |1637| 
        MOVW      DP,#_engine
        MOV       AL,@_engine           ; |1649| 
        MOVL      XAR4,#_pcmodbus+5     ; |1649| 
        MOV       *+XAR4[AR0],AL        ; |1649| 
        BF        L311,UNC              ; |1649| 
        ; branch occurs ; |1649| 
L308:    
        MOVL      XAR4,#_pcmodbus+5     ; |1640| 
        MOVU      ACC,*+XAR4[AR0]
        MOVW      DP,#_engine
        ADDL      @_engine,ACC          ; |1640| 
        LCR       #_WriteEngineStructtoNVMEM ; |1641| 
        ; call occurs [#_WriteEngineStructtoNVMEM] ; |1641| 
        BF        L311,UNC              ; |1648| 
        ; branch occurs ; |1648| 
L309:    
        MOVW      DP,#_pcmodbus+1
        MOV       AL,@_pcmodbus+1       ; |1621| 
        CMPB      AL,#6                 ; |1621| 
        BF        L310,EQ               ; |1621| 
        ; branchcc occurs ; |1621| 
        CMPB      AL,#16                ; |1621| 
        BF        L310,EQ               ; |1621| 
        ; branchcc occurs ; |1621| 
        MOVW      DP,#_engine
        MOVL      ACC,@_engine          ; |1630| 
        MOVL      XAR4,#_pcmodbus+5     ; |1632| 
        MOVH      *+XAR4[AR0],ACC << 0  ; |1632| 
        BF        L311,UNC              ; |1632| 
        ; branch occurs ; |1632| 
L310:    
        MOVL      XAR4,#_pcmodbus+5     ; |1624| 
        MOVU      ACC,*+XAR4[AR0]
        LSL       ACC,16                ; |1626| 
        MOVW      DP,#_engine
        MOVL      @_engine,ACC          ; |1626| 
L311:    
	.dwpsn	"PCModBus.c",1651,1
        LRETR
        ; return occurs
	.dwattr DW$827, DW_AT_end_file("PCModBus.c")
	.dwattr DW$827, DW_AT_end_line(0x673)
	.dwattr DW$827, DW_AT_end_column(0x01)
	.dwendtag DW$827

	.sect	".text"
	.global	_ProcessFileTransferral

DW$830	.dwtag  DW_TAG_subprogram, DW_AT_name("ProcessFileTransferral"), DW_AT_symbol_name("_ProcessFileTransferral")
	.dwattr DW$830, DW_AT_low_pc(_ProcessFileTransferral)
	.dwattr DW$830, DW_AT_high_pc(0x00)
	.dwattr DW$830, DW_AT_begin_file("PCModBus.c")
	.dwattr DW$830, DW_AT_begin_line(0x676)
	.dwattr DW$830, DW_AT_begin_column(0x06)
	.dwattr DW$830, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$830, DW_AT_skeletal(0x01)
	.dwpsn	"PCModBus.c",1655,1

;***************************************************************
;* FNAME: _ProcessFileTransferral       FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_ProcessFileTransferral:
;* AL    assigned to _regadd
DW$831	.dwtag  DW_TAG_formal_parameter, DW_AT_name("regadd"), DW_AT_symbol_name("_regadd")
	.dwattr DW$831, DW_AT_type(*DW$T$11)
	.dwattr DW$831, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _NumReg
DW$832	.dwtag  DW_TAG_formal_parameter, DW_AT_name("NumReg"), DW_AT_symbol_name("_NumReg")
	.dwattr DW$832, DW_AT_type(*DW$T$11)
	.dwattr DW$832, DW_AT_location[DW_OP_reg1]
        MOVZ      AR0,AL                ; |1655| 
        MOVL      *SP++,XAR1
        MOVZ      AR1,AH                ; |1655| 
        CMP       AR0,#8192             ; |1658| 
        BF        L334,LO               ; |1658| 
        ; branchcc occurs ; |1658| 
        CMP       AR0,#8196             ; |1658| 
        BF        L329,LO               ; |1658| 
        ; branchcc occurs ; |1658| 
        CMP       AR0,#8196             ; |1663| 
        BF        L328,EQ               ; |1663| 
        ; branchcc occurs ; |1663| 
        CMP       AR0,#8197             ; |1667| 
        BF        L327,EQ               ; |1667| 
        ; branchcc occurs ; |1667| 
        CMP       AR0,#8198             ; |1671| 
        BF        L334,LO               ; |1671| 
        ; branchcc occurs ; |1671| 
        CMP       AR0,#8204             ; |1671| 
        BF        L325,LO               ; |1671| 
        ; branchcc occurs ; |1671| 
        CMP       AR0,#8204             ; |1679| 
        BF        L323,EQ               ; |1679| 
        ; branchcc occurs ; |1679| 
        CMP       AR0,#8205             ; |1688| 
        BF        L322,EQ               ; |1688| 
        ; branchcc occurs ; |1688| 
        CMP       AR0,#8206             ; |1692| 
        BF        L320,EQ               ; |1692| 
        ; branchcc occurs ; |1692| 
        CMP       AR0,#8207             ; |1697| 
        BF        L318,EQ               ; |1697| 
        ; branchcc occurs ; |1697| 
        CMP       AR0,#8208             ; |1712| 
        BF        L316,EQ               ; |1712| 
        ; branchcc occurs ; |1712| 
        CMP       AR0,#8209             ; |1721| 
        BF        L314,EQ               ; |1721| 
        ; branchcc occurs ; |1721| 
        CMP       AR0,#8211             ; |1726| 
        BF        L313,EQ               ; |1726| 
        ; branchcc occurs ; |1726| 
        CMP       AR0,#8212             ; |1727| 
        BF        L334,LO               ; |1727| 
        ; branchcc occurs ; |1727| 
        CMP       AR0,#8339             ; |1727| 
        BF        L334,HIS              ; |1727| 
        ; branchcc occurs ; |1727| 
        MOVW      DP,#_pcmodbus+1
        MOV       AH,@_pcmodbus+1       ; |1729| 
        CMPB      AH,#6                 ; |1729| 
        BF        L312,EQ               ; |1729| 
        ; branchcc occurs ; |1729| 
        CMPB      AH,#16                ; |1729| 
        BF        L312,EQ               ; |1729| 
        ; branchcc occurs ; |1729| 
        SUB       AR0,#8212             ; |1730| 
        MOVL      XAR4,#_transferbuffer ; |1730| 
        BF        L330,UNC              ; |1730| 
        ; branch occurs ; |1730| 
L312:    
        MOVL      XAR4,#_pcmodbus+5     ; |1729| 
        MOV       AL,*+XAR4[AR1]        ; |1729| 
        SUB       AR0,#8212             ; |1729| 
        MOVL      XAR4,#_transferbuffer ; |1729| 
        BF        L333,UNC              ; |1729| 
        ; branch occurs ; |1729| 
L313:    
        MOVW      DP,#_fileregs+333
        MOV       AL,@_fileregs+333     ; |1726| 
        BF        L331,UNC              ; |1726| 
        ; branch occurs ; |1726| 
L314:    
        MOVW      DP,#_pcmodbus+1
        MOV       AL,@_pcmodbus+1       ; |1723| 
        CMPB      AL,#6                 ; |1723| 
        BF        L315,EQ               ; |1723| 
        ; branchcc occurs ; |1723| 
        CMPB      AL,#16                ; |1723| 
        BF        L315,EQ               ; |1723| 
        ; branchcc occurs ; |1723| 
        MOVW      DP,#_fileregs+332
        MOV       AL,@_fileregs+332     ; |1724| 
        BF        L331,UNC              ; |1724| 
        ; branch occurs ; |1724| 
L315:    
        MOVL      XAR4,#_pcmodbus+5     ; |1723| 
        MOV       AL,*+XAR4[AR1]        ; |1723| 
        MOVW      DP,#_fileregs+332
        MOV       @_fileregs+332,AL     ; |1723| 
        BF        L334,UNC              ; |1723| 
        ; branch occurs ; |1723| 
L316:    
        MOVW      DP,#_pcmodbus+1
        MOV       AL,@_pcmodbus+1       ; |1714| 
        CMPB      AL,#6                 ; |1714| 
        BF        L317,EQ               ; |1714| 
        ; branchcc occurs ; |1714| 
        CMPB      AL,#16                ; |1714| 
        BF        L317,EQ               ; |1714| 
        ; branchcc occurs ; |1714| 
        MOVW      DP,#_fileregs+330
        MOV       AL,@_fileregs+330     ; |1719| 
        BF        L331,UNC              ; |1719| 
        ; branch occurs ; |1719| 
L317:    
        MOVL      XAR4,#_pcmodbus+5     ; |1717| 
        MOVU      ACC,*+XAR4[AR1]
        MOVW      DP,#_fileregs+330
        ADDL      @_fileregs+330,ACC    ; |1717| 
        BF        L334,UNC              ; |1718| 
        ; branch occurs ; |1718| 
L318:    
        MOVW      DP,#_pcmodbus+1
        MOV       AL,@_pcmodbus+1       ; |1699| 
        CMPB      AL,#6                 ; |1699| 
        BF        L319,EQ               ; |1699| 
        ; branchcc occurs ; |1699| 
        CMPB      AL,#16                ; |1699| 
        BF        L319,EQ               ; |1699| 
        ; branchcc occurs ; |1699| 
        MOVW      DP,#_fileregs+330
        MOVL      ACC,@_fileregs+330    ; |1707| 
        BF        L324,UNC              ; |1709| 
        ; branch occurs ; |1709| 
L319:    
        MOVL      XAR4,#_pcmodbus+5     ; |1701| 
        MOVU      ACC,*+XAR4[AR1]
        LSL       ACC,16                ; |1703| 
        MOVW      DP,#_fileregs+330
        MOVL      @_fileregs+330,ACC    ; |1703| 
        BF        L334,UNC              ; |1704| 
        ; branch occurs ; |1704| 
L320:    
        MOVW      DP,#_pcmodbus+1
        MOV       AL,@_pcmodbus+1       ; |1694| 
        CMPB      AL,#6                 ; |1694| 
        BF        L321,EQ               ; |1694| 
        ; branchcc occurs ; |1694| 
        CMPB      AL,#16                ; |1694| 
        BF        L321,EQ               ; |1694| 
        ; branchcc occurs ; |1694| 
        MOVW      DP,#_fileregs+328
        MOV       AL,@_fileregs+328     ; |1695| 
        BF        L331,UNC              ; |1695| 
        ; branch occurs ; |1695| 
L321:    
        MOVL      XAR4,#_pcmodbus+5     ; |1694| 
        MOV       AL,*+XAR4[AR1]        ; |1694| 
        MOVW      DP,#_fileregs+328
        MOV       @_fileregs+328,AL     ; |1694| 
        BF        L334,UNC              ; |1694| 
        ; branch occurs ; |1694| 
L322:    
        MOVW      DP,#_pcmodbus+1
        MOV       AL,@_pcmodbus+1       ; |1690| 
        CMPB      AL,#3                 ; |1690| 
        BF        L334,NEQ              ; |1690| 
        ; branchcc occurs ; |1690| 
        MOVW      DP,#_fileregs+326
        MOV       AL,@_fileregs+326     ; |1690| 
        BF        L331,UNC              ; |1690| 
        ; branch occurs ; |1690| 
L323:    
        MOVW      DP,#_pcmodbus+1
        MOV       AL,@_pcmodbus+1       ; |1681| 
        CMPB      AL,#3                 ; |1681| 
        BF        L334,NEQ              ; |1681| 
        ; branchcc occurs ; |1681| 
        LCR       #_GetFileNumWords     ; |1683| 
        ; call occurs [#_GetFileNumWords] ; |1683| 
L324:    
        MOVL      XAR4,#_pcmodbus+5     ; |1685| 
        MOVH      *+XAR4[AR1],ACC << 0  ; |1685| 
        BF        L334,UNC              ; |1685| 
        ; branch occurs ; |1685| 
L325:    
        MOVW      DP,#_pcmodbus+1
        MOV       AH,@_pcmodbus+1       ; |1673| 
        CMPB      AH,#6                 ; |1673| 
        BF        L326,EQ               ; |1673| 
        ; branchcc occurs ; |1673| 
        CMPB      AH,#16                ; |1673| 
        BF        L326,EQ               ; |1673| 
        ; branchcc occurs ; |1673| 
        SUB       AR0,#8198             ; |1676| 
        MOVL      XAR4,#_fileregs+319   ; |1676| 
        BF        L330,UNC              ; |1676| 
        ; branch occurs ; |1676| 
L326:    
        MOVL      XAR4,#_pcmodbus+5     ; |1673| 
        MOV       AL,*+XAR4[AR1]        ; |1673| 
        SUB       AR0,#8198             ; |1673| 
        MOVL      XAR4,#_fileregs+319   ; |1673| 
        BF        L333,UNC              ; |1673| 
        ; branch occurs ; |1673| 
L327:    
        MOVW      DP,#_pcmodbus+1
        MOV       AL,@_pcmodbus+1       ; |1669| 
        CMPB      AL,#3                 ; |1669| 
        BF        L334,NEQ              ; |1669| 
        ; branchcc occurs ; |1669| 
        LCR       #_GetNextFileNameString ; |1669| 
        ; call occurs [#_GetNextFileNameString] ; |1669| 
        BF        L334,UNC              ; |1669| 
        ; branch occurs ; |1669| 
L328:    
        MOVW      DP,#_pcmodbus+1
        MOV       AL,@_pcmodbus+1       ; |1665| 
        CMPB      AL,#3                 ; |1665| 
        BF        L334,NEQ              ; |1665| 
        ; branchcc occurs ; |1665| 
        LCR       #_GetFirstFileNameString ; |1665| 
        ; call occurs [#_GetFirstFileNameString] ; |1665| 
        BF        L334,UNC              ; |1665| 
        ; branch occurs ; |1665| 
L329:    
        MOVW      DP,#_pcmodbus+1
        MOV       AH,@_pcmodbus+1       ; |1660| 
        CMPB      AH,#6                 ; |1660| 
        BF        L332,EQ               ; |1660| 
        ; branchcc occurs ; |1660| 
        CMPB      AH,#16                ; |1660| 
        BF        L332,EQ               ; |1660| 
        ; branchcc occurs ; |1660| 
        SUB       AR0,#8192             ; |1661| 
        MOVL      XAR4,#_fileregs+315   ; |1661| 
L330:    
        MOV       AL,*+XAR4[AR0]        ; |1661| 
L331:    
        MOVL      XAR4,#_pcmodbus+5     ; |1661| 
        MOV       *+XAR4[AR1],AL        ; |1661| 
        BF        L334,UNC              ; |1661| 
        ; branch occurs ; |1661| 
L332:    
        MOVL      XAR4,#_pcmodbus+5     ; |1660| 
        MOV       AL,*+XAR4[AR1]        ; |1660| 
        SUB       AR0,#8192             ; |1660| 
        MOVL      XAR4,#_fileregs+315   ; |1660| 
L333:    
        MOV       *+XAR4[AR0],AL        ; |1660| 
L334:    
        MOVL      XAR1,*--SP
	.dwpsn	"PCModBus.c",1733,1
        LRETR
        ; return occurs
	.dwattr DW$830, DW_AT_end_file("PCModBus.c")
	.dwattr DW$830, DW_AT_end_line(0x6c5)
	.dwattr DW$830, DW_AT_end_column(0x01)
	.dwendtag DW$830

;***************************************************************
;* FAR STRINGS                                                 *
;***************************************************************
	.sect	".econst"
	.align	2
FSL1:	.string	"No response sent to PC",13,10,0
;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_sprintf
	.global	_memset
	.global	_DebugStringOut
	.global	_LoadSendBufferB
	.global	_ReadCharfromUartB
	.global	_SetupEventReadBack
	.global	_ReadEvent
	.global	_MSGQueueNumfromPC
	.global	_ClearAlarmListandEventLog
	.global	_ReadEventLogID
	.global	_ReadMSGQueueNum
	.global	_ReadLastEventID
	.global	_GetSlaveVersion
	.global	_ClearMANTable
	.global	_PreWarningInit
	.global	_PreWarnLevelReset
	.global	_EnableNoiseFilter
	.global	_GetCheckedRPM
	.global	_GetRPM
	.global	_GetModalRPM
	.global	_GetScaledValue
	.global	_GetPreCompValue
	.global	_GetPostCompValue
	.global	_GetEndResultValue
	.global	_GetSensorDeviationValue
	.global	_GetCylinderAverageValue
	.global	_GetCylinderDeviationValue
	.global	_Status1Flags
	.global	_GetStatus2Flags
	.global	_ReadStatus1Int
	.global	_MANCompTable
	.global	_WriteSensorStatustoNVMEM
	.global	_CalAbort
	.global	_ReadAccAverageVal
	.global	_ReadAverageSpeedAcc
	.global	_ReadNumPoints
	.global	_GetLearningTimeLeft
	.global	_GetIntervalTimeLeft
	.global	_GetPercentageLeft
	.global	_ClearCalibrationAlarms
	.global	_SDEventMessageUpdate
	.global	_SDReadEventMessage
	.global	_ClearManCompSequence
	.global	_SetAllEventMsgs
	.global	_GetFirstFileNameString
	.global	_GetNextFileNameString
	.global	_GetFileNumWords
	.global	_WIOTemperatureWord
	.global	_WIOActivityWord
	.global	_WIOPPMWord
	.global	_Status3Flags
	.global	_GetAlarmFlags
	.global	_ClearEventCodeListArea
	.global	_ReadFirstEventCode
	.global	_AlarmEventIDInc
	.global	_BitEventCompiled
	.global	_ProcessReprogrammingTransferral
	.global	_TxNowtoSlave
	.global	_DCModeInit
	.global	_DCModeClear
	.global	_GetuASCaledValue
	.global	_InitMotionCal
	.global	_ClearEngineDirCal
	.global	_YearMonthUpdate
	.global	_DateHoursUpdate
	.global	_MinsSecsUpdate
	.global	_InputNumtoString
	.global	_WriteDateHrsData
	.global	_FRAMInit
	.global	_GetRealtimePreCompValue
	.global	_GetRealtimeuAScaledValue
	.global	_WriteMANCaltoNVMEM
	.global	_CalibrationtdUpdate
	.global	_ReadAccCalNVMEM
	.global	_WriteClockData
	.global	_SPUUnitReset
	.global	_PCModifyParameter
	.global	_WriteEngineStructtoNVMEM
	.global	_CRCHiTbl
	.global	_CRCLoTbl
	.global	_gpf
	.global	_settings
	.global	_motion
	.global	_livetime
	.global	_calibrationtd
	.global	_safe2
	.global	_clocktime
	.global	_timers
	.global	_allsensors
	.global	_engine
	.global	_cylinders
	.global	_config
	.global	_transferbuffer
	.global	_stringbuffer
	.global	_eventlogentry
	.global	_versionreg
	.global	_digout
	.global	_prewarn
	.global	_offsetA
	.global	_offsetB
	.global	_sensor
	.global	_iSensorInRepalceMode
	.global	_iSensorInRepalceTimer
	.global	_iSensorInRepalce
	.global	_function
	.global	_manref
	.global	_manrefsum
	.global	_dynalarmlevels
	.global	_damalarms
	.global	_checkmanalarms
	.global	_mancal
	.global	_calibration
	.global	_speedcompcoeffs
	.global	_fileregs
	.global	_sdsettings
	.global	_waterinoil
	.global	_wioerrorcode
	.global	_noisefilterLOAD
	.global	_damagemonignore
	.global	_bitalarmlist
	.global	_bearingstatus
	.global	_slem
	.global	_rtcbat
	.global	_loadlevel
	.global	_DCModePeakReset
	.global	_DCModeCylinderComparison
	.global	_DCModeInRangeOK
	.global	_DCModeInRangeIdeal
	.global	FS$$MPY
	.global	FS$$TOU

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x16)

DW$T$116	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$116, DW_AT_language(DW_LANG_C)
DW$833	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$834	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$835	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$115)
	.dwendtag DW$T$116


DW$T$120	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$120, DW_AT_language(DW_LANG_C)
DW$836	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$119)
	.dwendtag DW$T$120


DW$T$123	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$123, DW_AT_language(DW_LANG_C)
DW$837	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$122)
DW$838	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$123


DW$T$125	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$125, DW_AT_language(DW_LANG_C)
DW$839	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$125


DW$T$127	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$127, DW_AT_language(DW_LANG_C)

DW$T$129	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$129, DW_AT_language(DW_LANG_C)
DW$840	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$129


DW$T$131	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$131, DW_AT_language(DW_LANG_C)
DW$841	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$842	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$843	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$844	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$122)
	.dwendtag DW$T$131


DW$T$133	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$133, DW_AT_language(DW_LANG_C)
DW$845	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$122)
DW$846	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$847	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$122)
	.dwendtag DW$T$133


DW$T$137	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$137, DW_AT_language(DW_LANG_C)
DW$848	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$136)
DW$849	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$850	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$137


DW$T$139	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$139, DW_AT_language(DW_LANG_C)
DW$851	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$852	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$139

DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)

DW$T$141	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$141, DW_AT_language(DW_LANG_C)
DW$853	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$122)
DW$854	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$T$141

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)

DW$T$70	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$70, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$70, DW_AT_byte_size(0x1c)
DW$855	.dwtag  DW_TAG_subrange_type
	.dwattr DW$855, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$70

DW$T$142	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$142, DW_AT_address_class(0x16)

DW$T$143	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$142)
	.dwattr DW$T$143, DW_AT_language(DW_LANG_C)
DW$856	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$857	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$143


DW$T$147	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$147, DW_AT_language(DW_LANG_C)
DW$858	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$119)
DW$859	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$146)
DW$860	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$147


DW$T$149	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$149, DW_AT_language(DW_LANG_C)
DW$861	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$149


DW$T$151	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$151, DW_AT_language(DW_LANG_C)
DW$862	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$863	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$122)
	.dwendtag DW$T$151


DW$T$153	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$153, DW_AT_language(DW_LANG_C)

DW$T$155	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$155, DW_AT_language(DW_LANG_C)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)

DW$T$48	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$48, DW_AT_byte_size(0x0e)
DW$864	.dwtag  DW_TAG_subrange_type
	.dwattr DW$864, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$48


DW$T$82	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$82, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$82, DW_AT_byte_size(0x02)
DW$865	.dwtag  DW_TAG_subrange_type
	.dwattr DW$865, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$82


DW$T$112	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$112, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$112, DW_AT_byte_size(0x10a)
DW$866	.dwtag  DW_TAG_subrange_type
	.dwattr DW$866, DW_AT_upper_bound(0x109)
	.dwendtag DW$T$112

DW$T$122	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$122, DW_AT_address_class(0x16)

DW$T$166	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$122)
	.dwattr DW$T$166, DW_AT_language(DW_LANG_C)

DW$T$169	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$169, DW_AT_language(DW_LANG_C)
DW$867	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$169


DW$T$171	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$171, DW_AT_language(DW_LANG_C)

DW$T$173	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$173, DW_AT_language(DW_LANG_C)
DW$868	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$173

DW$869	.dwtag  DW_TAG_far_type
	.dwattr DW$869, DW_AT_type(*DW$T$11)
DW$T$175	.dwtag  DW_TAG_const_type
	.dwattr DW$T$175, DW_AT_type(*DW$869)

DW$T$176	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$175)
	.dwattr DW$T$176, DW_AT_language(DW_LANG_C)
DW$870	.dwtag  DW_TAG_subrange_type
	.dwendtag DW$T$176


DW$T$178	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$178, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$178, DW_AT_byte_size(0x80)
DW$871	.dwtag  DW_TAG_subrange_type
	.dwattr DW$871, DW_AT_upper_bound(0x7f)
	.dwendtag DW$T$178


DW$T$179	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$179, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$179, DW_AT_byte_size(0x1c)
DW$872	.dwtag  DW_TAG_subrange_type
	.dwattr DW$872, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$179


DW$T$180	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$180, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$180, DW_AT_byte_size(0x21)
DW$873	.dwtag  DW_TAG_subrange_type
	.dwattr DW$873, DW_AT_upper_bound(0x20)
	.dwendtag DW$T$180

DW$T$12	.dwtag  DW_TAG_base_type, DW_AT_name("long")
	.dwattr DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$12, DW_AT_byte_size(0x02)
DW$T$185	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$185, DW_AT_address_class(0x16)

DW$T$186	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$185)
	.dwattr DW$T$186, DW_AT_language(DW_LANG_C)
DW$874	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$875	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$186


DW$T$188	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$188, DW_AT_language(DW_LANG_C)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)
DW$T$115	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$115, DW_AT_language(DW_LANG_C)
DW$T$190	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$190, DW_AT_address_class(0x16)

DW$T$191	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$190)
	.dwattr DW$T$191, DW_AT_language(DW_LANG_C)
DW$876	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$191

DW$T$194	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$74)
	.dwattr DW$T$194, DW_AT_address_class(0x16)

DW$T$195	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$194)
	.dwattr DW$T$195, DW_AT_language(DW_LANG_C)
DW$877	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$195

DW$T$199	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$75)
	.dwattr DW$T$199, DW_AT_address_class(0x16)

DW$T$200	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$199)
	.dwattr DW$T$200, DW_AT_language(DW_LANG_C)
DW$878	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$200

DW$T$205	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$204)
	.dwattr DW$T$205, DW_AT_address_class(0x16)

DW$T$206	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$205)
	.dwattr DW$T$206, DW_AT_language(DW_LANG_C)
DW$879	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$206

DW$T$211	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$210)
	.dwattr DW$T$211, DW_AT_address_class(0x16)

DW$T$212	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$211)
	.dwattr DW$T$212, DW_AT_language(DW_LANG_C)
DW$880	.dwtag  DW_TAG_far_type
	.dwattr DW$880, DW_AT_type(*DW$T$216)
DW$T$217	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$217, DW_AT_type(*DW$880)
DW$T$220	.dwtag  DW_TAG_typedef, DW_AT_name("settingsstruct"), DW_AT_type(*DW$T$27)
	.dwattr DW$T$220, DW_AT_language(DW_LANG_C)
DW$T$221	.dwtag  DW_TAG_typedef, DW_AT_name("motionstruct"), DW_AT_type(*DW$T$29)
	.dwattr DW$T$221, DW_AT_language(DW_LANG_C)
DW$T$222	.dwtag  DW_TAG_typedef, DW_AT_name("livestruct"), DW_AT_type(*DW$T$30)
	.dwattr DW$T$222, DW_AT_language(DW_LANG_C)
DW$T$224	.dwtag  DW_TAG_typedef, DW_AT_name("calibrationdatetimestruct"), DW_AT_type(*DW$T$33)
	.dwattr DW$T$224, DW_AT_language(DW_LANG_C)
DW$T$226	.dwtag  DW_TAG_typedef, DW_AT_name("safestruct2struct"), DW_AT_type(*DW$T$46)
	.dwattr DW$T$226, DW_AT_language(DW_LANG_C)
DW$T$227	.dwtag  DW_TAG_typedef, DW_AT_name("clockstruct"), DW_AT_type(*DW$T$47)
	.dwattr DW$T$227, DW_AT_language(DW_LANG_C)
DW$881	.dwtag  DW_TAG_far_type
	.dwattr DW$881, DW_AT_type(*DW$T$228)
DW$T$229	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$229, DW_AT_type(*DW$881)
DW$T$231	.dwtag  DW_TAG_typedef, DW_AT_name("allsensorstruct"), DW_AT_type(*DW$T$52)
	.dwattr DW$T$231, DW_AT_language(DW_LANG_C)
DW$T$233	.dwtag  DW_TAG_typedef, DW_AT_name("enginestruct"), DW_AT_type(*DW$T$53)
	.dwattr DW$T$233, DW_AT_language(DW_LANG_C)

DW$T$235	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$234)
	.dwattr DW$T$235, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$235, DW_AT_byte_size(0x38)
DW$882	.dwtag  DW_TAG_subrange_type
	.dwattr DW$882, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$235

DW$T$238	.dwtag  DW_TAG_typedef, DW_AT_name("configstruct"), DW_AT_type(*DW$T$63)
	.dwattr DW$T$238, DW_AT_language(DW_LANG_C)
DW$T$239	.dwtag  DW_TAG_typedef, DW_AT_name("eventlogstruct"), DW_AT_type(*DW$T$68)
	.dwattr DW$T$239, DW_AT_language(DW_LANG_C)
DW$T$240	.dwtag  DW_TAG_typedef, DW_AT_name("digoutstruct"), DW_AT_type(*DW$T$69)
	.dwattr DW$T$240, DW_AT_language(DW_LANG_C)
DW$T$241	.dwtag  DW_TAG_typedef, DW_AT_name("prewarnstruct"), DW_AT_type(*DW$T$72)
	.dwattr DW$T$241, DW_AT_language(DW_LANG_C)
DW$T$243	.dwtag  DW_TAG_typedef, DW_AT_name("offsetstruct"), DW_AT_type(*DW$T$73)
	.dwattr DW$T$243, DW_AT_language(DW_LANG_C)

DW$T$246	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$245)
	.dwattr DW$T$246, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$246, DW_AT_byte_size(0x1f8)
DW$883	.dwtag  DW_TAG_subrange_type
	.dwattr DW$883, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$246

DW$T$249	.dwtag  DW_TAG_typedef, DW_AT_name("functionstruct"), DW_AT_type(*DW$T$78)
	.dwattr DW$T$249, DW_AT_language(DW_LANG_C)

DW$T$252	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$251)
	.dwattr DW$T$252, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$252, DW_AT_byte_size(0x118)
DW$884	.dwtag  DW_TAG_subrange_type
	.dwattr DW$884, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$252


DW$T$256	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$255)
	.dwattr DW$T$256, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$256, DW_AT_byte_size(0x1c)
DW$885	.dwtag  DW_TAG_subrange_type
	.dwattr DW$885, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$256

DW$T$259	.dwtag  DW_TAG_typedef, DW_AT_name("dynamicalarmsstruct"), DW_AT_type(*DW$T$81)
	.dwattr DW$T$259, DW_AT_language(DW_LANG_C)
DW$T$260	.dwtag  DW_TAG_typedef, DW_AT_name("damalarmsstruct"), DW_AT_type(*DW$T$83)
	.dwattr DW$T$260, DW_AT_language(DW_LANG_C)
DW$T$262	.dwtag  DW_TAG_typedef, DW_AT_name("mancalstruct"), DW_AT_type(*DW$T$84)
	.dwattr DW$T$262, DW_AT_language(DW_LANG_C)
DW$T$263	.dwtag  DW_TAG_typedef, DW_AT_name("calibrationstruct"), DW_AT_type(*DW$T$91)
	.dwattr DW$T$263, DW_AT_language(DW_LANG_C)
DW$T$265	.dwtag  DW_TAG_typedef, DW_AT_name("speedcompstruct"), DW_AT_type(*DW$T$92)
	.dwattr DW$T$265, DW_AT_language(DW_LANG_C)
DW$T$96	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$96, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$96, DW_AT_byte_size(0x01)
DW$T$119	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$96)
	.dwattr DW$T$119, DW_AT_address_class(0x16)
DW$T$146	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$145)
	.dwattr DW$T$146, DW_AT_address_class(0x16)

DW$T$266	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$96)
	.dwattr DW$T$266, DW_AT_language(DW_LANG_C)

DW$T$267	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$96)
	.dwattr DW$T$267, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$267, DW_AT_byte_size(0x64)
DW$886	.dwtag  DW_TAG_subrange_type
	.dwattr DW$886, DW_AT_upper_bound(0x63)
	.dwendtag DW$T$267

DW$T$270	.dwtag  DW_TAG_typedef, DW_AT_name("sdfilestruct"), DW_AT_type(*DW$T$99)
	.dwattr DW$T$270, DW_AT_language(DW_LANG_C)
DW$T$272	.dwtag  DW_TAG_typedef, DW_AT_name("sdsettingsstruct"), DW_AT_type(*DW$T$101)
	.dwattr DW$T$272, DW_AT_language(DW_LANG_C)
DW$T$273	.dwtag  DW_TAG_typedef, DW_AT_name("waterinoilstruct"), DW_AT_type(*DW$T$104)
	.dwattr DW$T$273, DW_AT_language(DW_LANG_C)
DW$T$275	.dwtag  DW_TAG_typedef, DW_AT_name("bearingstatusstruct"), DW_AT_type(*DW$T$106)
	.dwattr DW$T$275, DW_AT_language(DW_LANG_C)
DW$T$277	.dwtag  DW_TAG_typedef, DW_AT_name("slemstruct"), DW_AT_type(*DW$T$108)
	.dwattr DW$T$277, DW_AT_language(DW_LANG_C)
DW$T$279	.dwtag  DW_TAG_typedef, DW_AT_name("rtcbatstruct"), DW_AT_type(*DW$T$110)
	.dwattr DW$T$279, DW_AT_language(DW_LANG_C)
DW$T$281	.dwtag  DW_TAG_typedef, DW_AT_name("cppstruct"), DW_AT_type(*DW$T$111)
	.dwattr DW$T$281, DW_AT_language(DW_LANG_C)
DW$T$282	.dwtag  DW_TAG_typedef, DW_AT_name("PCCmdStruct"), DW_AT_type(*DW$T$113)
	.dwattr DW$T$282, DW_AT_language(DW_LANG_C)
DW$T$284	.dwtag  DW_TAG_typedef, DW_AT_name("modbusupdatestruct"), DW_AT_type(*DW$T$114)
	.dwattr DW$T$284, DW_AT_language(DW_LANG_C)
DW$T$136	.dwtag  DW_TAG_typedef, DW_AT_name("PtrTypeEnum"), DW_AT_type(*DW$T$135)
	.dwattr DW$T$136, DW_AT_language(DW_LANG_C)
DW$T$74	.dwtag  DW_TAG_typedef, DW_AT_name("status1struct"), DW_AT_type(*DW$T$19)
	.dwattr DW$T$74, DW_AT_language(DW_LANG_C)
DW$T$75	.dwtag  DW_TAG_typedef, DW_AT_name("sensoralarmstruct"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$75, DW_AT_language(DW_LANG_C)
DW$T$204	.dwtag  DW_TAG_typedef, DW_AT_name("status3struct"), DW_AT_type(*DW$T$21)
	.dwattr DW$T$204, DW_AT_language(DW_LANG_C)
DW$T$210	.dwtag  DW_TAG_typedef, DW_AT_name("alarmsstruct"), DW_AT_type(*DW$T$22)
	.dwattr DW$T$210, DW_AT_language(DW_LANG_C)
DW$T$216	.dwtag  DW_TAG_typedef, DW_AT_name("gpfport"), DW_AT_type(*DW$T$25)
	.dwattr DW$T$216, DW_AT_language(DW_LANG_C)

DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$27, DW_AT_name("tag_settingsstruct")
	.dwattr DW$T$27, DW_AT_byte_size(0x24)
DW$887	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$887, DW_AT_name("watchdog"), DW_AT_symbol_name("_watchdog")
	.dwattr DW$887, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$887, DW_AT_accessibility(DW_ACCESS_public)
DW$888	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$888, DW_AT_name("ledflashflag"), DW_AT_symbol_name("_ledflashflag")
	.dwattr DW$888, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$888, DW_AT_accessibility(DW_ACCESS_public)
DW$889	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$889, DW_AT_name("updatesafe"), DW_AT_symbol_name("_updatesafe")
	.dwattr DW$889, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$889, DW_AT_accessibility(DW_ACCESS_public)
DW$890	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$890, DW_AT_name("tableconfigtype"), DW_AT_symbol_name("_tableconfigtype")
	.dwattr DW$890, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$890, DW_AT_accessibility(DW_ACCESS_public)
DW$891	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$891, DW_AT_name("caltableconfigtype"), DW_AT_symbol_name("_caltableconfigtype")
	.dwattr DW$891, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$891, DW_AT_accessibility(DW_ACCESS_public)
DW$892	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$892, DW_AT_name("eventmsgid"), DW_AT_symbol_name("_eventmsgid")
	.dwattr DW$892, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$892, DW_AT_accessibility(DW_ACCESS_public)
DW$893	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$893, DW_AT_name("configoperationcomplete"), DW_AT_symbol_name("_configoperationcomplete")
	.dwattr DW$893, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$893, DW_AT_accessibility(DW_ACCESS_public)
DW$894	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$894, DW_AT_name("sdcarderr"), DW_AT_symbol_name("_sdcarderr")
	.dwattr DW$894, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$894, DW_AT_accessibility(DW_ACCESS_public)
DW$895	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$895, DW_AT_name("sderase"), DW_AT_symbol_name("_sderase")
	.dwattr DW$895, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$895, DW_AT_accessibility(DW_ACCESS_public)
DW$896	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$896, DW_AT_name("sdreinit"), DW_AT_symbol_name("_sdreinit")
	.dwattr DW$896, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$896, DW_AT_accessibility(DW_ACCESS_public)
DW$897	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$897, DW_AT_name("sdcardupdate"), DW_AT_symbol_name("_sdcardupdate")
	.dwattr DW$897, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$897, DW_AT_accessibility(DW_ACCESS_public)
DW$898	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$898, DW_AT_name("cardreadflag"), DW_AT_symbol_name("_cardreadflag")
	.dwattr DW$898, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$898, DW_AT_accessibility(DW_ACCESS_public)
DW$899	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$899, DW_AT_name("ignore"), DW_AT_symbol_name("_ignore")
	.dwattr DW$899, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$899, DW_AT_accessibility(DW_ACCESS_public)
DW$900	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$900, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$900, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$900, DW_AT_accessibility(DW_ACCESS_public)
DW$901	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$901, DW_AT_name("spiinuse"), DW_AT_symbol_name("_spiinuse")
	.dwattr DW$901, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$901, DW_AT_accessibility(DW_ACCESS_public)
DW$902	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$902, DW_AT_name("dcpeakhold"), DW_AT_symbol_name("_dcpeakhold")
	.dwattr DW$902, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$902, DW_AT_accessibility(DW_ACCESS_public)
DW$903	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$903, DW_AT_name("dcpause"), DW_AT_symbol_name("_dcpause")
	.dwattr DW$903, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$903, DW_AT_accessibility(DW_ACCESS_public)
DW$904	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$904, DW_AT_name("mastermode"), DW_AT_symbol_name("_mastermode")
	.dwattr DW$904, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$904, DW_AT_accessibility(DW_ACCESS_public)
DW$905	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$905, DW_AT_name("updatescaling"), DW_AT_symbol_name("_updatescaling")
	.dwattr DW$905, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$905, DW_AT_accessibility(DW_ACCESS_public)
DW$906	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$906, DW_AT_name("forwardasternflag"), DW_AT_symbol_name("_forwardasternflag")
	.dwattr DW$906, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$906, DW_AT_accessibility(DW_ACCESS_public)
DW$907	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$907, DW_AT_name("initprogress"), DW_AT_symbol_name("_initprogress")
	.dwattr DW$907, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$907, DW_AT_accessibility(DW_ACCESS_public)
DW$908	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$908, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$908, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$908, DW_AT_accessibility(DW_ACCESS_public)
DW$909	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$909, DW_AT_name("slowdowncounter"), DW_AT_symbol_name("_slowdowncounter")
	.dwattr DW$909, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$909, DW_AT_accessibility(DW_ACCESS_public)
DW$910	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$910, DW_AT_name("slowdowncondition"), DW_AT_symbol_name("_slowdowncondition")
	.dwattr DW$910, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$910, DW_AT_accessibility(DW_ACCESS_public)
DW$911	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$911, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$911, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$911, DW_AT_accessibility(DW_ACCESS_public)
DW$912	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$912, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$912, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$912, DW_AT_accessibility(DW_ACCESS_public)
DW$913	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$913, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$913, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$913, DW_AT_accessibility(DW_ACCESS_public)
DW$914	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$914, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$914, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$914, DW_AT_accessibility(DW_ACCESS_public)
DW$915	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$915, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$915, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$915, DW_AT_accessibility(DW_ACCESS_public)
DW$916	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$916, DW_AT_name("temperaturealarm"), DW_AT_symbol_name("_temperaturealarm")
	.dwattr DW$916, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$916, DW_AT_accessibility(DW_ACCESS_public)
DW$917	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$917, DW_AT_name("temperatureslowdown"), DW_AT_symbol_name("_temperatureslowdown")
	.dwattr DW$917, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$917, DW_AT_accessibility(DW_ACCESS_public)
DW$918	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$918, DW_AT_name("anadebug"), DW_AT_symbol_name("_anadebug")
	.dwattr DW$918, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$918, DW_AT_accessibility(DW_ACCESS_public)
DW$919	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$919, DW_AT_name("serialdebug"), DW_AT_symbol_name("_serialdebug")
	.dwattr DW$919, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr DW$919, DW_AT_accessibility(DW_ACCESS_public)
DW$920	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$920, DW_AT_name("timerrunning"), DW_AT_symbol_name("_timerrunning")
	.dwattr DW$920, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$920, DW_AT_accessibility(DW_ACCESS_public)
DW$921	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$921, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$921, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$921, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$29, DW_AT_name("tag_motionstruct")
	.dwattr DW$T$29, DW_AT_byte_size(0x09)
DW$922	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$922, DW_AT_name("counter"), DW_AT_symbol_name("_counter")
	.dwattr DW$922, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$922, DW_AT_accessibility(DW_ACCESS_public)
DW$923	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$923, DW_AT_name("ready"), DW_AT_symbol_name("_ready")
	.dwattr DW$923, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$923, DW_AT_accessibility(DW_ACCESS_public)
DW$924	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$924, DW_AT_name("order"), DW_AT_symbol_name("_order")
	.dwattr DW$924, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$924, DW_AT_accessibility(DW_ACCESS_public)
DW$925	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$925, DW_AT_name("forwardasternflag"), DW_AT_symbol_name("_forwardasternflag")
	.dwattr DW$925, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$925, DW_AT_accessibility(DW_ACCESS_public)
DW$926	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$926, DW_AT_name("forwardasternflagprev"), DW_AT_symbol_name("_forwardasternflagprev")
	.dwattr DW$926, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$926, DW_AT_accessibility(DW_ACCESS_public)
DW$927	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$927, DW_AT_name("recalnow"), DW_AT_symbol_name("_recalnow")
	.dwattr DW$927, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$927, DW_AT_accessibility(DW_ACCESS_public)
DW$928	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$928, DW_AT_name("calerror"), DW_AT_symbol_name("_calerror")
	.dwattr DW$928, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$928, DW_AT_accessibility(DW_ACCESS_public)
DW$929	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$929, DW_AT_name("recheckdir"), DW_AT_symbol_name("_recheckdir")
	.dwattr DW$929, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$929, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$29


DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$30, DW_AT_name("tag_livestruct")
	.dwattr DW$T$30, DW_AT_byte_size(0x03)
DW$930	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$930, DW_AT_name("yrmnth"), DW_AT_symbol_name("_yrmnth")
	.dwattr DW$930, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$930, DW_AT_accessibility(DW_ACCESS_public)
DW$931	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$931, DW_AT_name("datehrs"), DW_AT_symbol_name("_datehrs")
	.dwattr DW$931, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$931, DW_AT_accessibility(DW_ACCESS_public)
DW$932	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$932, DW_AT_name("minssecs"), DW_AT_symbol_name("_minssecs")
	.dwattr DW$932, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$932, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30


DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$33, DW_AT_name("tag_calibrationdatetimestruct")
	.dwattr DW$T$33, DW_AT_byte_size(0x07)
DW$933	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$933, DW_AT_name("calcomplete"), DW_AT_symbol_name("_calcomplete")
	.dwattr DW$933, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$933, DW_AT_accessibility(DW_ACCESS_public)
DW$934	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$934, DW_AT_name("verification"), DW_AT_symbol_name("_verification")
	.dwattr DW$934, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$934, DW_AT_accessibility(DW_ACCESS_public)
DW$935	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$935, DW_AT_name("chksum"), DW_AT_symbol_name("_chksum")
	.dwattr DW$935, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$935, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$46, DW_AT_name("tag_safestruct2struct")
	.dwattr DW$T$46, DW_AT_byte_size(0x1e)
DW$936	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$936, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$936, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$936, DW_AT_accessibility(DW_ACCESS_public)
DW$937	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$937, DW_AT_name("log"), DW_AT_symbol_name("_log")
	.dwattr DW$937, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$937, DW_AT_accessibility(DW_ACCESS_public)
DW$938	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$938, DW_AT_name("modbus"), DW_AT_symbol_name("_modbus")
	.dwattr DW$938, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$938, DW_AT_accessibility(DW_ACCESS_public)
DW$939	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$38)
	.dwattr DW$939, DW_AT_name("filter"), DW_AT_symbol_name("_filter")
	.dwattr DW$939, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$939, DW_AT_accessibility(DW_ACCESS_public)
DW$940	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$940, DW_AT_name("alarms"), DW_AT_symbol_name("_alarms")
	.dwattr DW$940, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$940, DW_AT_accessibility(DW_ACCESS_public)
DW$941	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$941, DW_AT_name("modbusbaud"), DW_AT_symbol_name("_modbusbaud")
	.dwattr DW$941, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$941, DW_AT_accessibility(DW_ACCESS_public)
DW$942	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$942, DW_AT_name("modbus2"), DW_AT_symbol_name("_modbus2")
	.dwattr DW$942, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$942, DW_AT_accessibility(DW_ACCESS_public)
DW$943	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$943, DW_AT_name("sync"), DW_AT_symbol_name("_sync")
	.dwattr DW$943, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$943, DW_AT_accessibility(DW_ACCESS_public)
DW$944	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$43)
	.dwattr DW$944, DW_AT_name("alarmenable"), DW_AT_symbol_name("_alarmenable")
	.dwattr DW$944, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$944, DW_AT_accessibility(DW_ACCESS_public)
DW$945	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$44)
	.dwattr DW$945, DW_AT_name("trendmax"), DW_AT_symbol_name("_trendmax")
	.dwattr DW$945, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$945, DW_AT_accessibility(DW_ACCESS_public)
DW$946	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$946, DW_AT_name("tempcomp"), DW_AT_symbol_name("_tempcomp")
	.dwattr DW$946, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$946, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$46


DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$47, DW_AT_name("tag_clockstruct")
	.dwattr DW$T$47, DW_AT_byte_size(0x0e)
DW$947	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$947, DW_AT_name("WPstate"), DW_AT_symbol_name("_WPstate")
	.dwattr DW$947, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$947, DW_AT_accessibility(DW_ACCESS_public)
DW$948	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$948, DW_AT_name("seconds"), DW_AT_symbol_name("_seconds")
	.dwattr DW$948, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$948, DW_AT_accessibility(DW_ACCESS_public)
DW$949	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$949, DW_AT_name("minutes"), DW_AT_symbol_name("_minutes")
	.dwattr DW$949, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$949, DW_AT_accessibility(DW_ACCESS_public)
DW$950	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$950, DW_AT_name("hours"), DW_AT_symbol_name("_hours")
	.dwattr DW$950, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$950, DW_AT_accessibility(DW_ACCESS_public)
DW$951	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$951, DW_AT_name("day"), DW_AT_symbol_name("_day")
	.dwattr DW$951, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$951, DW_AT_accessibility(DW_ACCESS_public)
DW$952	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$952, DW_AT_name("date"), DW_AT_symbol_name("_date")
	.dwattr DW$952, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$952, DW_AT_accessibility(DW_ACCESS_public)
DW$953	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$953, DW_AT_name("month"), DW_AT_symbol_name("_month")
	.dwattr DW$953, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$953, DW_AT_accessibility(DW_ACCESS_public)
DW$954	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$954, DW_AT_name("year"), DW_AT_symbol_name("_year")
	.dwattr DW$954, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$954, DW_AT_accessibility(DW_ACCESS_public)
DW$955	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$955, DW_AT_name("control"), DW_AT_symbol_name("_control")
	.dwattr DW$955, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$955, DW_AT_accessibility(DW_ACCESS_public)
DW$956	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$956, DW_AT_name("framstamp"), DW_AT_symbol_name("_framstamp")
	.dwattr DW$956, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$956, DW_AT_accessibility(DW_ACCESS_public)
DW$957	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$957, DW_AT_name("clockerr"), DW_AT_symbol_name("_clockerr")
	.dwattr DW$957, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$957, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$47

DW$T$228	.dwtag  DW_TAG_typedef, DW_AT_name("timersstruct"), DW_AT_type(*DW$T$49)
	.dwattr DW$T$228, DW_AT_language(DW_LANG_C)

DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$52, DW_AT_name("tag_allsensorstruct")
	.dwattr DW$T$52, DW_AT_byte_size(0x2d)
DW$958	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$958, DW_AT_name("numsensors"), DW_AT_symbol_name("_numsensors")
	.dwattr DW$958, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$958, DW_AT_accessibility(DW_ACCESS_public)
DW$959	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$959, DW_AT_name("numsensorsspu1"), DW_AT_symbol_name("_numsensorsspu1")
	.dwattr DW$959, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$959, DW_AT_accessibility(DW_ACCESS_public)
DW$960	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$960, DW_AT_name("numsensorsspu2"), DW_AT_symbol_name("_numsensorsspu2")
	.dwattr DW$960, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$960, DW_AT_accessibility(DW_ACCESS_public)
DW$961	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$961, DW_AT_name("nominalspeed"), DW_AT_symbol_name("_nominalspeed")
	.dwattr DW$961, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$961, DW_AT_accessibility(DW_ACCESS_public)
DW$962	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$962, DW_AT_name("rpmmin"), DW_AT_symbol_name("_rpmmin")
	.dwattr DW$962, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$962, DW_AT_accessibility(DW_ACCESS_public)
DW$963	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$963, DW_AT_name("rpmmax"), DW_AT_symbol_name("_rpmmax")
	.dwattr DW$963, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$963, DW_AT_accessibility(DW_ACCESS_public)
DW$964	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$964, DW_AT_name("reflash"), DW_AT_symbol_name("_reflash")
	.dwattr DW$964, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$964, DW_AT_accessibility(DW_ACCESS_public)
DW$965	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$965, DW_AT_name("sensorhysteresis"), DW_AT_symbol_name("_sensorhysteresis")
	.dwattr DW$965, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$965, DW_AT_accessibility(DW_ACCESS_public)
DW$966	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$966, DW_AT_name("cylinderhysteresis"), DW_AT_symbol_name("_cylinderhysteresis")
	.dwattr DW$966, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$966, DW_AT_accessibility(DW_ACCESS_public)
DW$967	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$967, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$967, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$967, DW_AT_accessibility(DW_ACCESS_public)
DW$968	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$968, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$968, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$968, DW_AT_accessibility(DW_ACCESS_public)
DW$969	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$969, DW_AT_name("slowdowndevcallevel"), DW_AT_symbol_name("_slowdowndevcallevel")
	.dwattr DW$969, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$969, DW_AT_accessibility(DW_ACCESS_public)
DW$970	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$970, DW_AT_name("alarmdevcallevel"), DW_AT_symbol_name("_alarmdevcallevel")
	.dwattr DW$970, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$970, DW_AT_accessibility(DW_ACCESS_public)
DW$971	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$971, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$971, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$971, DW_AT_accessibility(DW_ACCESS_public)
DW$972	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$972, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$972, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$972, DW_AT_accessibility(DW_ACCESS_public)
DW$973	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$973, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$973, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$973, DW_AT_accessibility(DW_ACCESS_public)
DW$974	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$974, DW_AT_name("flags"), DW_AT_symbol_name("_flags")
	.dwattr DW$974, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$974, DW_AT_accessibility(DW_ACCESS_public)
DW$975	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$975, DW_AT_name("slowdownack"), DW_AT_symbol_name("_slowdownack")
	.dwattr DW$975, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$975, DW_AT_accessibility(DW_ACCESS_public)
DW$976	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$976, DW_AT_name("alarmack"), DW_AT_symbol_name("_alarmack")
	.dwattr DW$976, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$976, DW_AT_accessibility(DW_ACCESS_public)
DW$977	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$977, DW_AT_name("maxmintimer"), DW_AT_symbol_name("_maxmintimer")
	.dwattr DW$977, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$977, DW_AT_accessibility(DW_ACCESS_public)
DW$978	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$978, DW_AT_name("enginedircal"), DW_AT_symbol_name("_enginedircal")
	.dwattr DW$978, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$978, DW_AT_accessibility(DW_ACCESS_public)
DW$979	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$979, DW_AT_name("dirorder"), DW_AT_symbol_name("_dirorder")
	.dwattr DW$979, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$979, DW_AT_accessibility(DW_ACCESS_public)
DW$980	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$980, DW_AT_name("prewarningtimer"), DW_AT_symbol_name("_prewarningtimer")
	.dwattr DW$980, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$980, DW_AT_accessibility(DW_ACCESS_public)
DW$981	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$981, DW_AT_name("prewarninglevel"), DW_AT_symbol_name("_prewarninglevel")
	.dwattr DW$981, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$981, DW_AT_accessibility(DW_ACCESS_public)
DW$982	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$982, DW_AT_name("rpmlimit"), DW_AT_symbol_name("_rpmlimit")
	.dwattr DW$982, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr DW$982, DW_AT_accessibility(DW_ACCESS_public)
DW$983	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$983, DW_AT_name("dsss"), DW_AT_symbol_name("_dsss")
	.dwattr DW$983, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$983, DW_AT_accessibility(DW_ACCESS_public)
DW$984	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$984, DW_AT_name("slowdowncallevel"), DW_AT_symbol_name("_slowdowncallevel")
	.dwattr DW$984, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$984, DW_AT_accessibility(DW_ACCESS_public)
DW$985	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$985, DW_AT_name("alarmcallevel"), DW_AT_symbol_name("_alarmcallevel")
	.dwattr DW$985, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$985, DW_AT_accessibility(DW_ACCESS_public)
DW$986	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$986, DW_AT_name("cylinderalarmcallevel"), DW_AT_symbol_name("_cylinderalarmcallevel")
	.dwattr DW$986, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$986, DW_AT_accessibility(DW_ACCESS_public)
DW$987	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$51)
	.dwattr DW$987, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$987, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$987, DW_AT_accessibility(DW_ACCESS_public)
DW$988	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$988, DW_AT_name("iBarredVibrationSpeedLow"), DW_AT_symbol_name("_iBarredVibrationSpeedLow")
	.dwattr DW$988, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$988, DW_AT_accessibility(DW_ACCESS_public)
DW$989	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$989, DW_AT_name("iBarredVibrationSpeedHigh"), DW_AT_symbol_name("_iBarredVibrationSpeedHigh")
	.dwattr DW$989, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$989, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$52


DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$53, DW_AT_name("tag_engingestruct")
	.dwattr DW$T$53, DW_AT_byte_size(0x02)
DW$990	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$990, DW_AT_name("runtime"), DW_AT_symbol_name("_runtime")
	.dwattr DW$990, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$990, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$53

DW$T$234	.dwtag  DW_TAG_typedef, DW_AT_name("cylinderstruct"), DW_AT_type(*DW$T$56)
	.dwattr DW$T$234, DW_AT_language(DW_LANG_C)

DW$T$63	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$63, DW_AT_name("tag_configstruct")
	.dwattr DW$T$63, DW_AT_byte_size(0x18)
DW$991	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$57)
	.dwattr DW$991, DW_AT_name("filter"), DW_AT_symbol_name("_filter")
	.dwattr DW$991, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$991, DW_AT_accessibility(DW_ACCESS_public)
DW$992	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$58)
	.dwattr DW$992, DW_AT_name("alarmenable"), DW_AT_symbol_name("_alarmenable")
	.dwattr DW$992, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$992, DW_AT_accessibility(DW_ACCESS_public)
DW$993	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$59)
	.dwattr DW$993, DW_AT_name("trendmax"), DW_AT_symbol_name("_trendmax")
	.dwattr DW$993, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$993, DW_AT_accessibility(DW_ACCESS_public)
DW$994	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$60)
	.dwattr DW$994, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$994, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$994, DW_AT_accessibility(DW_ACCESS_public)
DW$995	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$61)
	.dwattr DW$995, DW_AT_name("sdsettings"), DW_AT_symbol_name("_sdsettings")
	.dwattr DW$995, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$995, DW_AT_accessibility(DW_ACCESS_public)
DW$996	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$62)
	.dwattr DW$996, DW_AT_name("comms"), DW_AT_symbol_name("_comms")
	.dwattr DW$996, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$996, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$63


DW$T$68	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$68, DW_AT_name("tag_eventlogstruct")
	.dwattr DW$T$68, DW_AT_byte_size(0x44)
DW$997	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$997, DW_AT_name("eventid"), DW_AT_symbol_name("_eventid")
	.dwattr DW$997, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$997, DW_AT_accessibility(DW_ACCESS_public)
DW$998	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$64)
	.dwattr DW$998, DW_AT_name("datetime"), DW_AT_symbol_name("_datetime")
	.dwattr DW$998, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$998, DW_AT_accessibility(DW_ACCESS_public)
DW$999	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$65)
	.dwattr DW$999, DW_AT_name("msgstring"), DW_AT_symbol_name("_msgstring")
	.dwattr DW$999, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$999, DW_AT_accessibility(DW_ACCESS_public)
DW$1000	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$66)
	.dwattr DW$1000, DW_AT_name("msgstring2"), DW_AT_symbol_name("_msgstring2")
	.dwattr DW$1000, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$1000, DW_AT_accessibility(DW_ACCESS_public)
DW$1001	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$64)
	.dwattr DW$1001, DW_AT_name("ackdatetime"), DW_AT_symbol_name("_ackdatetime")
	.dwattr DW$1001, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr DW$1001, DW_AT_accessibility(DW_ACCESS_public)
DW$1002	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$67)
	.dwattr DW$1002, DW_AT_name("ackstring"), DW_AT_symbol_name("_ackstring")
	.dwattr DW$1002, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$1002, DW_AT_accessibility(DW_ACCESS_public)
DW$1003	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1003, DW_AT_name("newalarmeventflag"), DW_AT_symbol_name("_newalarmeventflag")
	.dwattr DW$1003, DW_AT_data_member_location[DW_OP_plus_uconst 0x3f]
	.dwattr DW$1003, DW_AT_accessibility(DW_ACCESS_public)
DW$1004	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1004, DW_AT_name("eventcodestatus"), DW_AT_symbol_name("_eventcodestatus")
	.dwattr DW$1004, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$1004, DW_AT_accessibility(DW_ACCESS_public)
DW$1005	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1005, DW_AT_name("eventcode"), DW_AT_symbol_name("_eventcode")
	.dwattr DW$1005, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr DW$1005, DW_AT_accessibility(DW_ACCESS_public)
DW$1006	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1006, DW_AT_name("currentindex"), DW_AT_symbol_name("_currentindex")
	.dwattr DW$1006, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr DW$1006, DW_AT_accessibility(DW_ACCESS_public)
DW$1007	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1007, DW_AT_name("txalarmevents"), DW_AT_symbol_name("_txalarmevents")
	.dwattr DW$1007, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr DW$1007, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$68


DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$69, DW_AT_byte_size(0x07)
DW$1008	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1008, DW_AT_name("outputtestmode"), DW_AT_symbol_name("_outputtestmode")
	.dwattr DW$1008, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1008, DW_AT_accessibility(DW_ACCESS_public)
DW$1009	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1009, DW_AT_name("previousstatus"), DW_AT_symbol_name("_previousstatus")
	.dwattr DW$1009, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1009, DW_AT_accessibility(DW_ACCESS_public)
DW$1010	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1010, DW_AT_name("previousslowdown"), DW_AT_symbol_name("_previousslowdown")
	.dwattr DW$1010, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$1010, DW_AT_accessibility(DW_ACCESS_public)
DW$1011	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1011, DW_AT_name("previousalarm"), DW_AT_symbol_name("_previousalarm")
	.dwattr DW$1011, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$1011, DW_AT_accessibility(DW_ACCESS_public)
DW$1012	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1012, DW_AT_name("slowdownreflash"), DW_AT_symbol_name("_slowdownreflash")
	.dwattr DW$1012, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$1012, DW_AT_accessibility(DW_ACCESS_public)
DW$1013	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1013, DW_AT_name("alarmreflash"), DW_AT_symbol_name("_alarmreflash")
	.dwattr DW$1013, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$1013, DW_AT_accessibility(DW_ACCESS_public)
DW$1014	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1014, DW_AT_name("statusreflash"), DW_AT_symbol_name("_statusreflash")
	.dwattr DW$1014, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$1014, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$69


DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$72, DW_AT_name("tag_prewarnstruct")
	.dwattr DW$T$72, DW_AT_byte_size(0xaa)
DW$1015	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$70)
	.dwattr DW$1015, DW_AT_name("prelevel"), DW_AT_symbol_name("_prelevel")
	.dwattr DW$1015, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1015, DW_AT_accessibility(DW_ACCESS_public)
DW$1016	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$70)
	.dwattr DW$1016, DW_AT_name("average"), DW_AT_symbol_name("_average")
	.dwattr DW$1016, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$1016, DW_AT_accessibility(DW_ACCESS_public)
DW$1017	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$71)
	.dwattr DW$1017, DW_AT_name("calcacc"), DW_AT_symbol_name("_calcacc")
	.dwattr DW$1017, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$1017, DW_AT_accessibility(DW_ACCESS_public)
DW$1018	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$71)
	.dwattr DW$1018, DW_AT_name("points"), DW_AT_symbol_name("_points")
	.dwattr DW$1018, DW_AT_data_member_location[DW_OP_plus_uconst 0x70]
	.dwattr DW$1018, DW_AT_accessibility(DW_ACCESS_public)
DW$1019	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1019, DW_AT_name("prewarncompleteflag"), DW_AT_symbol_name("_prewarncompleteflag")
	.dwattr DW$1019, DW_AT_data_member_location[DW_OP_plus_uconst 0xa8]
	.dwattr DW$1019, DW_AT_accessibility(DW_ACCESS_public)
DW$1020	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1020, DW_AT_name("init"), DW_AT_symbol_name("_init")
	.dwattr DW$1020, DW_AT_data_member_location[DW_OP_plus_uconst 0xa9]
	.dwattr DW$1020, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$72


DW$T$73	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$73, DW_AT_name("tag_offsetstruct")
	.dwattr DW$T$73, DW_AT_byte_size(0x1c)
DW$1021	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$70)
	.dwattr DW$1021, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$1021, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1021, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$73

DW$T$245	.dwtag  DW_TAG_typedef, DW_AT_name("sensorstruct"), DW_AT_type(*DW$T$76)
	.dwattr DW$T$245, DW_AT_language(DW_LANG_C)

DW$T$78	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$78, DW_AT_name("tag_functionstruct")
	.dwattr DW$T$78, DW_AT_byte_size(0x08)
DW$1022	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$77)
	.dwattr DW$1022, DW_AT_name("enabled"), DW_AT_symbol_name("_enabled")
	.dwattr DW$1022, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1022, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$78

DW$T$251	.dwtag  DW_TAG_typedef, DW_AT_name("manrefstruct"), DW_AT_type(*DW$T$79)
	.dwattr DW$T$251, DW_AT_language(DW_LANG_C)
DW$T$255	.dwtag  DW_TAG_typedef, DW_AT_name("manrefsumstruct"), DW_AT_type(*DW$T$80)
	.dwattr DW$T$255, DW_AT_language(DW_LANG_C)

DW$T$81	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$81, DW_AT_name("tag_dynamicalarmsstruct")
	.dwattr DW$T$81, DW_AT_byte_size(0x24)
DW$1023	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$1023, DW_AT_name("rpmav"), DW_AT_symbol_name("_rpmav")
	.dwattr DW$1023, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1023, DW_AT_accessibility(DW_ACCESS_public)
DW$1024	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$1024, DW_AT_name("single1"), DW_AT_symbol_name("_single1")
	.dwattr DW$1024, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$1024, DW_AT_accessibility(DW_ACCESS_public)
DW$1025	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$1025, DW_AT_name("cyl1"), DW_AT_symbol_name("_cyl1")
	.dwattr DW$1025, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$1025, DW_AT_accessibility(DW_ACCESS_public)
DW$1026	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$1026, DW_AT_name("mbsum1"), DW_AT_symbol_name("_mbsum1")
	.dwattr DW$1026, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$1026, DW_AT_accessibility(DW_ACCESS_public)
DW$1027	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$1027, DW_AT_name("single2"), DW_AT_symbol_name("_single2")
	.dwattr DW$1027, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$1027, DW_AT_accessibility(DW_ACCESS_public)
DW$1028	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$1028, DW_AT_name("cyl2"), DW_AT_symbol_name("_cyl2")
	.dwattr DW$1028, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$1028, DW_AT_accessibility(DW_ACCESS_public)
DW$1029	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$1029, DW_AT_name("mbsum2"), DW_AT_symbol_name("_mbsum2")
	.dwattr DW$1029, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$1029, DW_AT_accessibility(DW_ACCESS_public)
DW$1030	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$1030, DW_AT_name("deltarpmprev"), DW_AT_symbol_name("_deltarpmprev")
	.dwattr DW$1030, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$1030, DW_AT_accessibility(DW_ACCESS_public)
DW$1031	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$1031, DW_AT_name("deltarpm"), DW_AT_symbol_name("_deltarpm")
	.dwattr DW$1031, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$1031, DW_AT_accessibility(DW_ACCESS_public)
DW$1032	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1032, DW_AT_name("deltarpm_int"), DW_AT_symbol_name("_deltarpm_int")
	.dwattr DW$1032, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$1032, DW_AT_accessibility(DW_ACCESS_public)
DW$1033	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1033, DW_AT_name("rpmav_int"), DW_AT_symbol_name("_rpmav_int")
	.dwattr DW$1033, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$1033, DW_AT_accessibility(DW_ACCESS_public)
DW$1034	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1034, DW_AT_name("deltarpmprev_int"), DW_AT_symbol_name("_deltarpmprev_int")
	.dwattr DW$1034, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$1034, DW_AT_accessibility(DW_ACCESS_public)
DW$1035	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1035, DW_AT_name("single"), DW_AT_symbol_name("_single")
	.dwattr DW$1035, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$1035, DW_AT_accessibility(DW_ACCESS_public)
DW$1036	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1036, DW_AT_name("cyl"), DW_AT_symbol_name("_cyl")
	.dwattr DW$1036, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$1036, DW_AT_accessibility(DW_ACCESS_public)
DW$1037	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1037, DW_AT_name("mbsum"), DW_AT_symbol_name("_mbsum")
	.dwattr DW$1037, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$1037, DW_AT_accessibility(DW_ACCESS_public)
DW$1038	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1038, DW_AT_name("singleprev"), DW_AT_symbol_name("_singleprev")
	.dwattr DW$1038, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$1038, DW_AT_accessibility(DW_ACCESS_public)
DW$1039	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1039, DW_AT_name("cylprev"), DW_AT_symbol_name("_cylprev")
	.dwattr DW$1039, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$1039, DW_AT_accessibility(DW_ACCESS_public)
DW$1040	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1040, DW_AT_name("mbsumprev"), DW_AT_symbol_name("_mbsumprev")
	.dwattr DW$1040, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$1040, DW_AT_accessibility(DW_ACCESS_public)
DW$1041	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1041, DW_AT_name("single1_int"), DW_AT_symbol_name("_single1_int")
	.dwattr DW$1041, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$1041, DW_AT_accessibility(DW_ACCESS_public)
DW$1042	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1042, DW_AT_name("cyl1_int"), DW_AT_symbol_name("_cyl1_int")
	.dwattr DW$1042, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$1042, DW_AT_accessibility(DW_ACCESS_public)
DW$1043	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1043, DW_AT_name("mbsum1_int"), DW_AT_symbol_name("_mbsum1_int")
	.dwattr DW$1043, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$1043, DW_AT_accessibility(DW_ACCESS_public)
DW$1044	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1044, DW_AT_name("single2_int"), DW_AT_symbol_name("_single2_int")
	.dwattr DW$1044, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$1044, DW_AT_accessibility(DW_ACCESS_public)
DW$1045	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1045, DW_AT_name("cyl2_int"), DW_AT_symbol_name("_cyl2_int")
	.dwattr DW$1045, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$1045, DW_AT_accessibility(DW_ACCESS_public)
DW$1046	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1046, DW_AT_name("mbsum2_int"), DW_AT_symbol_name("_mbsum2_int")
	.dwattr DW$1046, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$1046, DW_AT_accessibility(DW_ACCESS_public)
DW$1047	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$1047, DW_AT_name("hits"), DW_AT_symbol_name("_hits")
	.dwattr DW$1047, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$1047, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$81


DW$T$83	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$83, DW_AT_name("tag_damalarmsstruct")
	.dwattr DW$T$83, DW_AT_byte_size(0x04)
DW$1048	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$82)
	.dwattr DW$1048, DW_AT_name("single"), DW_AT_symbol_name("_single")
	.dwattr DW$1048, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1048, DW_AT_accessibility(DW_ACCESS_public)
DW$1049	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1049, DW_AT_name("cylinder"), DW_AT_symbol_name("_cylinder")
	.dwattr DW$1049, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$1049, DW_AT_accessibility(DW_ACCESS_public)
DW$1050	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1050, DW_AT_name("mbneighbour"), DW_AT_symbol_name("_mbneighbour")
	.dwattr DW$1050, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$1050, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$83


DW$T$84	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$84, DW_AT_name("tag_mancalstruct")
	.dwattr DW$T$84, DW_AT_byte_size(0x04)
DW$1051	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1051, DW_AT_name("learningleft"), DW_AT_symbol_name("_learningleft")
	.dwattr DW$1051, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1051, DW_AT_accessibility(DW_ACCESS_public)
DW$1052	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1052, DW_AT_name("intervalleft"), DW_AT_symbol_name("_intervalleft")
	.dwattr DW$1052, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1052, DW_AT_accessibility(DW_ACCESS_public)
DW$1053	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1053, DW_AT_name("percentleft"), DW_AT_symbol_name("_percentleft")
	.dwattr DW$1053, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$1053, DW_AT_accessibility(DW_ACCESS_public)
DW$1054	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1054, DW_AT_name("manupdateflag"), DW_AT_symbol_name("_manupdateflag")
	.dwattr DW$1054, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$1054, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$84


DW$T$91	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$91, DW_AT_name("tag_calibrationstruct")
	.dwattr DW$T$91, DW_AT_byte_size(0x31a)
DW$1055	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1055, DW_AT_name("rpmpoints"), DW_AT_symbol_name("_rpmpoints")
	.dwattr DW$1055, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1055, DW_AT_accessibility(DW_ACCESS_public)
DW$1056	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$85)
	.dwattr DW$1056, DW_AT_name("speedcalpoints"), DW_AT_symbol_name("_speedcalpoints")
	.dwattr DW$1056, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1056, DW_AT_accessibility(DW_ACCESS_public)
DW$1057	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$86)
	.dwattr DW$1057, DW_AT_name("roughnumpoints"), DW_AT_symbol_name("_roughnumpoints")
	.dwattr DW$1057, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$1057, DW_AT_accessibility(DW_ACCESS_public)
DW$1058	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$87)
	.dwattr DW$1058, DW_AT_name("numpoints"), DW_AT_symbol_name("_numpoints")
	.dwattr DW$1058, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$1058, DW_AT_accessibility(DW_ACCESS_public)
DW$1059	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$88)
	.dwattr DW$1059, DW_AT_name("averagespeedacc"), DW_AT_symbol_name("_averagespeedacc")
	.dwattr DW$1059, DW_AT_data_member_location[DW_OP_plus_uconst 0x13a]
	.dwattr DW$1059, DW_AT_accessibility(DW_ACCESS_public)
DW$1060	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$88)
	.dwattr DW$1060, DW_AT_name("averagevalacc"), DW_AT_symbol_name("_averagevalacc")
	.dwattr DW$1060, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e2]
	.dwattr DW$1060, DW_AT_accessibility(DW_ACCESS_public)
DW$1061	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1061, DW_AT_name("validpoints"), DW_AT_symbol_name("_validpoints")
	.dwattr DW$1061, DW_AT_data_member_location[DW_OP_plus_uconst 0x28a]
	.dwattr DW$1061, DW_AT_accessibility(DW_ACCESS_public)
DW$1062	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$89)
	.dwattr DW$1062, DW_AT_name("rpmatcal"), DW_AT_symbol_name("_rpmatcal")
	.dwattr DW$1062, DW_AT_data_member_location[DW_OP_plus_uconst 0x28b]
	.dwattr DW$1062, DW_AT_accessibility(DW_ACCESS_public)
DW$1063	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$90)
	.dwattr DW$1063, DW_AT_name("manroughcalpts"), DW_AT_symbol_name("_manroughcalpts")
	.dwattr DW$1063, DW_AT_data_member_location[DW_OP_plus_uconst 0x28e]
	.dwattr DW$1063, DW_AT_accessibility(DW_ACCESS_public)
DW$1064	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$70)
	.dwattr DW$1064, DW_AT_name("manroughmin"), DW_AT_symbol_name("_manroughmin")
	.dwattr DW$1064, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e2]
	.dwattr DW$1064, DW_AT_accessibility(DW_ACCESS_public)
DW$1065	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$70)
	.dwattr DW$1065, DW_AT_name("manroughmax"), DW_AT_symbol_name("_manroughmax")
	.dwattr DW$1065, DW_AT_data_member_location[DW_OP_plus_uconst 0x2fe]
	.dwattr DW$1065, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$91


DW$T$92	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$92, DW_AT_name("tag_speedcompstruct")
	.dwattr DW$T$92, DW_AT_byte_size(0x19)
DW$1066	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1066, DW_AT_name("stageflag"), DW_AT_symbol_name("_stageflag")
	.dwattr DW$1066, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1066, DW_AT_accessibility(DW_ACCESS_public)
DW$1067	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1067, DW_AT_name("status"), DW_AT_symbol_name("_status")
	.dwattr DW$1067, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1067, DW_AT_accessibility(DW_ACCESS_public)
DW$1068	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$85)
	.dwattr DW$1068, DW_AT_name("speedbands"), DW_AT_symbol_name("_speedbands")
	.dwattr DW$1068, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$1068, DW_AT_accessibility(DW_ACCESS_public)
DW$1069	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1069, DW_AT_name("slopecoeff"), DW_AT_symbol_name("_slopecoeff")
	.dwattr DW$1069, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$1069, DW_AT_accessibility(DW_ACCESS_public)
DW$1070	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1070, DW_AT_name("initialtimer"), DW_AT_symbol_name("_initialtimer")
	.dwattr DW$1070, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$1070, DW_AT_accessibility(DW_ACCESS_public)
DW$1071	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1071, DW_AT_name("learningmodetimer"), DW_AT_symbol_name("_learningmodetimer")
	.dwattr DW$1071, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$1071, DW_AT_accessibility(DW_ACCESS_public)
DW$1072	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1072, DW_AT_name("intervaltimer"), DW_AT_symbol_name("_intervaltimer")
	.dwattr DW$1072, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$1072, DW_AT_accessibility(DW_ACCESS_public)
DW$1073	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1073, DW_AT_name("numsamples"), DW_AT_symbol_name("_numsamples")
	.dwattr DW$1073, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$1073, DW_AT_accessibility(DW_ACCESS_public)
DW$1074	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1074, DW_AT_name("learningleft"), DW_AT_symbol_name("_learningleft")
	.dwattr DW$1074, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$1074, DW_AT_accessibility(DW_ACCESS_public)
DW$1075	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1075, DW_AT_name("intervalleft"), DW_AT_symbol_name("_intervalleft")
	.dwattr DW$1075, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$1075, DW_AT_accessibility(DW_ACCESS_public)
DW$1076	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1076, DW_AT_name("manappliedminsamples"), DW_AT_symbol_name("_manappliedminsamples")
	.dwattr DW$1076, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$1076, DW_AT_accessibility(DW_ACCESS_public)
DW$1077	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1077, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$1077, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$1077, DW_AT_accessibility(DW_ACCESS_public)
DW$1078	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1078, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$1078, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$1078, DW_AT_accessibility(DW_ACCESS_public)
DW$1079	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1079, DW_AT_name("unused3"), DW_AT_symbol_name("_unused3")
	.dwattr DW$1079, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$1079, DW_AT_accessibility(DW_ACCESS_public)
DW$1080	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1080, DW_AT_name("unused4"), DW_AT_symbol_name("_unused4")
	.dwattr DW$1080, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$1080, DW_AT_accessibility(DW_ACCESS_public)
DW$1081	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1081, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$1081, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$1081, DW_AT_accessibility(DW_ACCESS_public)
DW$1082	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1082, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$1082, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$1082, DW_AT_accessibility(DW_ACCESS_public)
DW$1083	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1083, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$1083, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$1083, DW_AT_accessibility(DW_ACCESS_public)
DW$1084	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1084, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$1084, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$1084, DW_AT_accessibility(DW_ACCESS_public)
DW$1085	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1085, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$1085, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$1085, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$92

DW$1086	.dwtag  DW_TAG_far_type
	.dwattr DW$1086, DW_AT_type(*DW$T$96)
DW$T$145	.dwtag  DW_TAG_const_type
	.dwattr DW$T$145, DW_AT_type(*DW$1086)

DW$T$99	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$99, DW_AT_name("tag_sdfilestruct")
	.dwattr DW$T$99, DW_AT_byte_size(0x14e)
DW$1087	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1087, DW_AT_name("year1"), DW_AT_symbol_name("_year1")
	.dwattr DW$1087, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1087, DW_AT_accessibility(DW_ACCESS_public)
DW$1088	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1088, DW_AT_name("month1"), DW_AT_symbol_name("_month1")
	.dwattr DW$1088, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1088, DW_AT_accessibility(DW_ACCESS_public)
DW$1089	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1089, DW_AT_name("date1"), DW_AT_symbol_name("_date1")
	.dwattr DW$1089, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$1089, DW_AT_accessibility(DW_ACCESS_public)
DW$1090	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1090, DW_AT_name("yearn"), DW_AT_symbol_name("_yearn")
	.dwattr DW$1090, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$1090, DW_AT_accessibility(DW_ACCESS_public)
DW$1091	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1091, DW_AT_name("monthn"), DW_AT_symbol_name("_monthn")
	.dwattr DW$1091, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$1091, DW_AT_accessibility(DW_ACCESS_public)
DW$1092	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1092, DW_AT_name("daten"), DW_AT_symbol_name("_daten")
	.dwattr DW$1092, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$1092, DW_AT_accessibility(DW_ACCESS_public)
DW$1093	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1093, DW_AT_name("readyear"), DW_AT_symbol_name("_readyear")
	.dwattr DW$1093, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$1093, DW_AT_accessibility(DW_ACCESS_public)
DW$1094	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1094, DW_AT_name("readmonth"), DW_AT_symbol_name("_readmonth")
	.dwattr DW$1094, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$1094, DW_AT_accessibility(DW_ACCESS_public)
DW$1095	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1095, DW_AT_name("readdate"), DW_AT_symbol_name("_readdate")
	.dwattr DW$1095, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$1095, DW_AT_accessibility(DW_ACCESS_public)
DW$1096	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$95)
	.dwattr DW$1096, DW_AT_name("file"), DW_AT_symbol_name("_file")
	.dwattr DW$1096, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$1096, DW_AT_accessibility(DW_ACCESS_public)
DW$1097	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$97)
	.dwattr DW$1097, DW_AT_name("readbuffer"), DW_AT_symbol_name("_readbuffer")
	.dwattr DW$1097, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$1097, DW_AT_accessibility(DW_ACCESS_public)
DW$1098	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$1098, DW_AT_name("entryposition"), DW_AT_symbol_name("_entryposition")
	.dwattr DW$1098, DW_AT_data_member_location[DW_OP_plus_uconst 0x138]
	.dwattr DW$1098, DW_AT_accessibility(DW_ACCESS_public)
DW$1099	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1099, DW_AT_name("logtype"), DW_AT_symbol_name("_logtype")
	.dwattr DW$1099, DW_AT_data_member_location[DW_OP_plus_uconst 0x13a]
	.dwattr DW$1099, DW_AT_accessibility(DW_ACCESS_public)
DW$1100	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$1100, DW_AT_name("directorystr"), DW_AT_symbol_name("_directorystr")
	.dwattr DW$1100, DW_AT_data_member_location[DW_OP_plus_uconst 0x13b]
	.dwattr DW$1100, DW_AT_accessibility(DW_ACCESS_public)
DW$1101	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$98)
	.dwattr DW$1101, DW_AT_name("filenamestr"), DW_AT_symbol_name("_filenamestr")
	.dwattr DW$1101, DW_AT_data_member_location[DW_OP_plus_uconst 0x13f]
	.dwattr DW$1101, DW_AT_accessibility(DW_ACCESS_public)
DW$1102	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$1102, DW_AT_name("getnumwords"), DW_AT_symbol_name("_getnumwords")
	.dwattr DW$1102, DW_AT_data_member_location[DW_OP_plus_uconst 0x146]
	.dwattr DW$1102, DW_AT_accessibility(DW_ACCESS_public)
DW$1103	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1103, DW_AT_name("setnumwords"), DW_AT_symbol_name("_setnumwords")
	.dwattr DW$1103, DW_AT_data_member_location[DW_OP_plus_uconst 0x148]
	.dwattr DW$1103, DW_AT_accessibility(DW_ACCESS_public)
DW$1104	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$1104, DW_AT_name("setoffset"), DW_AT_symbol_name("_setoffset")
	.dwattr DW$1104, DW_AT_data_member_location[DW_OP_plus_uconst 0x14a]
	.dwattr DW$1104, DW_AT_accessibility(DW_ACCESS_public)
DW$1105	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1105, DW_AT_name("readwriteflag"), DW_AT_symbol_name("_readwriteflag")
	.dwattr DW$1105, DW_AT_data_member_location[DW_OP_plus_uconst 0x14c]
	.dwattr DW$1105, DW_AT_accessibility(DW_ACCESS_public)
DW$1106	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1106, DW_AT_name("readwriteprogress"), DW_AT_symbol_name("_readwriteprogress")
	.dwattr DW$1106, DW_AT_data_member_location[DW_OP_plus_uconst 0x14d]
	.dwattr DW$1106, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$99


DW$T$101	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$101, DW_AT_name("tag_sdsettingsstruct")
	.dwattr DW$T$101, DW_AT_byte_size(0x04)
DW$1107	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1107, DW_AT_name("present"), DW_AT_symbol_name("_present")
	.dwattr DW$1107, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1107, DW_AT_accessibility(DW_ACCESS_public)
DW$1108	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1108, DW_AT_name("sequence"), DW_AT_symbol_name("_sequence")
	.dwattr DW$1108, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1108, DW_AT_accessibility(DW_ACCESS_public)
DW$1109	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1109, DW_AT_name("errornum"), DW_AT_symbol_name("_errornum")
	.dwattr DW$1109, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$1109, DW_AT_accessibility(DW_ACCESS_public)
DW$1110	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$100)
	.dwattr DW$1110, DW_AT_name("readstatus"), DW_AT_symbol_name("_readstatus")
	.dwattr DW$1110, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$1110, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$101


DW$T$104	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$104, DW_AT_name("tag_waterinoilstruct")
	.dwattr DW$T$104, DW_AT_byte_size(0x0c)
DW$1111	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1111, DW_AT_name("netadd"), DW_AT_symbol_name("_netadd")
	.dwattr DW$1111, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1111, DW_AT_accessibility(DW_ACCESS_public)
DW$1112	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$1112, DW_AT_name("temperature"), DW_AT_symbol_name("_temperature")
	.dwattr DW$1112, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$1112, DW_AT_accessibility(DW_ACCESS_public)
DW$1113	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$1113, DW_AT_name("activity"), DW_AT_symbol_name("_activity")
	.dwattr DW$1113, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$1113, DW_AT_accessibility(DW_ACCESS_public)
DW$1114	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$1114, DW_AT_name("content"), DW_AT_symbol_name("_content")
	.dwattr DW$1114, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$1114, DW_AT_accessibility(DW_ACCESS_public)
DW$1115	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1115, DW_AT_name("temperature_int"), DW_AT_symbol_name("_temperature_int")
	.dwattr DW$1115, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$1115, DW_AT_accessibility(DW_ACCESS_public)
DW$1116	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1116, DW_AT_name("activity_int"), DW_AT_symbol_name("_activity_int")
	.dwattr DW$1116, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$1116, DW_AT_accessibility(DW_ACCESS_public)
DW$1117	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1117, DW_AT_name("content_int"), DW_AT_symbol_name("_content_int")
	.dwattr DW$1117, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$1117, DW_AT_accessibility(DW_ACCESS_public)
DW$1118	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$103)
	.dwattr DW$1118, DW_AT_name("wioalarms"), DW_AT_symbol_name("_wioalarms")
	.dwattr DW$1118, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$1118, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$104


DW$T$106	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$106, DW_AT_name("tag_bearingstatusstruct")
	.dwattr DW$T$106, DW_AT_byte_size(0x2c)
DW$1119	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$105)
	.dwattr DW$1119, DW_AT_name("MainBearings"), DW_AT_symbol_name("_MainBearings")
	.dwattr DW$1119, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1119, DW_AT_accessibility(DW_ACCESS_public)
DW$1120	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$1120, DW_AT_name("CrankPinBearings"), DW_AT_symbol_name("_CrankPinBearings")
	.dwattr DW$1120, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$1120, DW_AT_accessibility(DW_ACCESS_public)
DW$1121	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$1121, DW_AT_name("CrossHeadBearings"), DW_AT_symbol_name("_CrossHeadBearings")
	.dwattr DW$1121, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$1121, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$106


DW$T$108	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$108, DW_AT_name("tag_slemsstruct")
	.dwattr DW$T$108, DW_AT_byte_size(0x03)
DW$1122	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1122, DW_AT_name("mV"), DW_AT_symbol_name("_mV")
	.dwattr DW$1122, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1122, DW_AT_accessibility(DW_ACCESS_public)
DW$1123	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$107)
	.dwattr DW$1123, DW_AT_name("alarms"), DW_AT_symbol_name("_alarms")
	.dwattr DW$1123, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1123, DW_AT_accessibility(DW_ACCESS_public)
DW$1124	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1124, DW_AT_name("levelcount"), DW_AT_symbol_name("_levelcount")
	.dwattr DW$1124, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$1124, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$108


DW$T$110	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$110, DW_AT_name("tag_rtcbatstruct")
	.dwattr DW$T$110, DW_AT_byte_size(0x02)
DW$1125	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1125, DW_AT_name("mV"), DW_AT_symbol_name("_mV")
	.dwattr DW$1125, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1125, DW_AT_accessibility(DW_ACCESS_public)
DW$1126	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$109)
	.dwattr DW$1126, DW_AT_name("alarms"), DW_AT_symbol_name("_alarms")
	.dwattr DW$1126, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1126, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$110


DW$T$111	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$111, DW_AT_name("tag_cppstruct")
	.dwattr DW$T$111, DW_AT_byte_size(0x06)
DW$1127	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1127, DW_AT_name("iAtodValue"), DW_AT_symbol_name("_iAtodValue")
	.dwattr DW$1127, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1127, DW_AT_accessibility(DW_ACCESS_public)
DW$1128	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$1128, DW_AT_name("fmAinput"), DW_AT_symbol_name("_fmAinput")
	.dwattr DW$1128, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$1128, DW_AT_accessibility(DW_ACCESS_public)
DW$1129	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$1129, DW_AT_name("fLoadPercent"), DW_AT_symbol_name("_fLoadPercent")
	.dwattr DW$1129, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$1129, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$111


DW$T$113	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$113, DW_AT_name("tag_PCCmdStruct")
	.dwattr DW$T$113, DW_AT_byte_size(0x110)
DW$1130	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$6)
	.dwattr DW$1130, DW_AT_name("SlaveAddr"), DW_AT_symbol_name("_SlaveAddr")
	.dwattr DW$1130, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1130, DW_AT_accessibility(DW_ACCESS_public)
DW$1131	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$6)
	.dwattr DW$1131, DW_AT_name("Func"), DW_AT_symbol_name("_Func")
	.dwattr DW$1131, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1131, DW_AT_accessibility(DW_ACCESS_public)
DW$1132	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1132, DW_AT_name("StartAdd"), DW_AT_symbol_name("_StartAdd")
	.dwattr DW$1132, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$1132, DW_AT_accessibility(DW_ACCESS_public)
DW$1133	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1133, DW_AT_name("NoReg"), DW_AT_symbol_name("_NoReg")
	.dwattr DW$1133, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$1133, DW_AT_accessibility(DW_ACCESS_public)
DW$1134	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1134, DW_AT_name("ByteCount"), DW_AT_symbol_name("_ByteCount")
	.dwattr DW$1134, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$1134, DW_AT_accessibility(DW_ACCESS_public)
DW$1135	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$112)
	.dwattr DW$1135, DW_AT_name("Data"), DW_AT_symbol_name("_Data")
	.dwattr DW$1135, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$1135, DW_AT_accessibility(DW_ACCESS_public)
DW$1136	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1136, DW_AT_name("errorflag"), DW_AT_symbol_name("_errorflag")
	.dwattr DW$1136, DW_AT_data_member_location[DW_OP_plus_uconst 0x10f]
	.dwattr DW$1136, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$113


DW$T$114	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$114, DW_AT_name("tag_modbusupdatestruct")
	.dwattr DW$T$114, DW_AT_byte_size(0x02)
DW$1137	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$6)
	.dwattr DW$1137, DW_AT_name("live"), DW_AT_symbol_name("_live")
	.dwattr DW$1137, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1137, DW_AT_accessibility(DW_ACCESS_public)
DW$1138	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$6)
	.dwattr DW$1138, DW_AT_name("logging"), DW_AT_symbol_name("_logging")
	.dwattr DW$1138, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1138, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$114


DW$T$135	.dwtag  DW_TAG_enumeration_type
	.dwattr DW$T$135, DW_AT_name("tag_PtrTypeEnum")
	.dwattr DW$T$135, DW_AT_byte_size(0x01)
DW$1139	.dwtag  DW_TAG_enumerator, DW_AT_name("BYTE"), DW_AT_const_value(0x00)
DW$1140	.dwtag  DW_TAG_enumerator, DW_AT_name("INT"), DW_AT_const_value(0x01)
DW$1141	.dwtag  DW_TAG_enumerator, DW_AT_name("STRING"), DW_AT_const_value(0x02)
	.dwendtag DW$T$135


DW$T$28	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$28, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$28, DW_AT_byte_size(0x02)
DW$1142	.dwtag  DW_TAG_subrange_type
	.dwattr DW$1142, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$28


DW$T$90	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$90, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$90, DW_AT_byte_size(0x54)
DW$1143	.dwtag  DW_TAG_subrange_type
	.dwattr DW$1143, DW_AT_upper_bound(0x02)
DW$1144	.dwtag  DW_TAG_subrange_type
	.dwattr DW$1144, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$90


DW$T$34	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$34, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$34, DW_AT_byte_size(0x04)
DW$1145	.dwtag  DW_TAG_subrange_type
	.dwattr DW$1145, DW_AT_upper_bound(0x03)
	.dwendtag DW$T$34


DW$T$64	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$64, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$64, DW_AT_byte_size(0x09)
DW$1146	.dwtag  DW_TAG_subrange_type
	.dwattr DW$1146, DW_AT_upper_bound(0x08)
	.dwendtag DW$T$64


DW$T$65	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$65, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$65, DW_AT_byte_size(0x18)
DW$1147	.dwtag  DW_TAG_subrange_type
	.dwattr DW$1147, DW_AT_upper_bound(0x17)
	.dwendtag DW$T$65


DW$T$66	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$66, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$66, DW_AT_byte_size(0x0f)
DW$1148	.dwtag  DW_TAG_subrange_type
	.dwattr DW$1148, DW_AT_upper_bound(0x0e)
	.dwendtag DW$T$66


DW$T$67	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$67, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$67, DW_AT_byte_size(0x05)
DW$1149	.dwtag  DW_TAG_subrange_type
	.dwattr DW$1149, DW_AT_upper_bound(0x04)
	.dwendtag DW$T$67


DW$T$85	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$85, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$85, DW_AT_byte_size(0x06)
DW$1150	.dwtag  DW_TAG_subrange_type
	.dwattr DW$1150, DW_AT_upper_bound(0x02)
DW$1151	.dwtag  DW_TAG_subrange_type
	.dwattr DW$1151, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$85


DW$T$89	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$89, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$89, DW_AT_byte_size(0x03)
DW$1152	.dwtag  DW_TAG_subrange_type
	.dwattr DW$1152, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$89


DW$T$98	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$98, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$98, DW_AT_byte_size(0x06)
DW$1153	.dwtag  DW_TAG_subrange_type
	.dwattr DW$1153, DW_AT_upper_bound(0x05)
	.dwendtag DW$T$98


DW$T$105	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$105, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$105, DW_AT_byte_size(0x10)
DW$1154	.dwtag  DW_TAG_subrange_type
	.dwattr DW$1154, DW_AT_upper_bound(0x0f)
	.dwendtag DW$T$105


DW$T$71	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$71, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$71, DW_AT_byte_size(0x38)
DW$1155	.dwtag  DW_TAG_subrange_type
	.dwattr DW$1155, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$71


DW$T$88	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$88, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$88, DW_AT_byte_size(0xa8)
DW$1156	.dwtag  DW_TAG_subrange_type
	.dwattr DW$1156, DW_AT_upper_bound(0x02)
DW$1157	.dwtag  DW_TAG_subrange_type
	.dwattr DW$1157, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$88


DW$T$86	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$86, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$86, DW_AT_byte_size(0x06)
DW$1158	.dwtag  DW_TAG_subrange_type
	.dwattr DW$1158, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$86


DW$T$87	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$87, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$87, DW_AT_byte_size(0x12c)
DW$1159	.dwtag  DW_TAG_subrange_type
	.dwattr DW$1159, DW_AT_upper_bound(0x95)
	.dwendtag DW$T$87

DW$T$16	.dwtag  DW_TAG_base_type, DW_AT_name("float")
	.dwattr DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$16, DW_AT_byte_size(0x02)

DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$19, DW_AT_name("tag_status1struct")
	.dwattr DW$T$19, DW_AT_byte_size(0x01)
DW$1160	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1160, DW_AT_name("enabled"), DW_AT_symbol_name("_enabled")
	.dwattr DW$1160, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1160, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1160, DW_AT_accessibility(DW_ACCESS_public)
DW$1161	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1161, DW_AT_name("calmode"), DW_AT_symbol_name("_calmode")
	.dwattr DW$1161, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1161, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1161, DW_AT_accessibility(DW_ACCESS_public)
DW$1162	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1162, DW_AT_name("alarmmask"), DW_AT_symbol_name("_alarmmask")
	.dwattr DW$1162, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1162, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1162, DW_AT_accessibility(DW_ACCESS_public)
DW$1163	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1163, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$1163, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1163, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1163, DW_AT_accessibility(DW_ACCESS_public)
DW$1164	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1164, DW_AT_name("replaced"), DW_AT_symbol_name("_replaced")
	.dwattr DW$1164, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1164, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1164, DW_AT_accessibility(DW_ACCESS_public)
DW$1165	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1165, DW_AT_name("excludeslowroll"), DW_AT_symbol_name("_excludeslowroll")
	.dwattr DW$1165, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1165, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1165, DW_AT_accessibility(DW_ACCESS_public)
DW$1166	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1166, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$1166, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1166, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1166, DW_AT_accessibility(DW_ACCESS_public)
DW$1167	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1167, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$1167, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1167, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1167, DW_AT_accessibility(DW_ACCESS_public)
DW$1168	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1168, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$1168, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1168, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1168, DW_AT_accessibility(DW_ACCESS_public)
DW$1169	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1169, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$1169, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1169, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1169, DW_AT_accessibility(DW_ACCESS_public)
DW$1170	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1170, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$1170, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1170, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1170, DW_AT_accessibility(DW_ACCESS_public)
DW$1171	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1171, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$1171, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1171, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1171, DW_AT_accessibility(DW_ACCESS_public)
DW$1172	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1172, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$1172, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1172, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1172, DW_AT_accessibility(DW_ACCESS_public)
DW$1173	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1173, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$1173, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1173, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1173, DW_AT_accessibility(DW_ACCESS_public)
DW$1174	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1174, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$1174, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1174, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1174, DW_AT_accessibility(DW_ACCESS_public)
DW$1175	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1175, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$1175, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1175, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1175, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$19


DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("tag_sensoralarmstruct")
	.dwattr DW$T$20, DW_AT_byte_size(0x01)
DW$1176	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1176, DW_AT_name("failure"), DW_AT_symbol_name("_failure")
	.dwattr DW$1176, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1176, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1176, DW_AT_accessibility(DW_ACCESS_public)
DW$1177	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1177, DW_AT_name("failurelatched"), DW_AT_symbol_name("_failurelatched")
	.dwattr DW$1177, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1177, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1177, DW_AT_accessibility(DW_ACCESS_public)
DW$1178	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1178, DW_AT_name("slowdown"), DW_AT_symbol_name("_slowdown")
	.dwattr DW$1178, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1178, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1178, DW_AT_accessibility(DW_ACCESS_public)
DW$1179	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1179, DW_AT_name("slowdownlatched"), DW_AT_symbol_name("_slowdownlatched")
	.dwattr DW$1179, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1179, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1179, DW_AT_accessibility(DW_ACCESS_public)
DW$1180	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1180, DW_AT_name("alarm"), DW_AT_symbol_name("_alarm")
	.dwattr DW$1180, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1180, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1180, DW_AT_accessibility(DW_ACCESS_public)
DW$1181	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1181, DW_AT_name("alarmlatched"), DW_AT_symbol_name("_alarmlatched")
	.dwattr DW$1181, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1181, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1181, DW_AT_accessibility(DW_ACCESS_public)
DW$1182	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1182, DW_AT_name("devalarm"), DW_AT_symbol_name("_devalarm")
	.dwattr DW$1182, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1182, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1182, DW_AT_accessibility(DW_ACCESS_public)
DW$1183	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1183, DW_AT_name("devalarmlatched"), DW_AT_symbol_name("_devalarmlatched")
	.dwattr DW$1183, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1183, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1183, DW_AT_accessibility(DW_ACCESS_public)
DW$1184	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1184, DW_AT_name("devslow"), DW_AT_symbol_name("_devslow")
	.dwattr DW$1184, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1184, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1184, DW_AT_accessibility(DW_ACCESS_public)
DW$1185	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1185, DW_AT_name("devslowlatched"), DW_AT_symbol_name("_devslowlatched")
	.dwattr DW$1185, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1185, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1185, DW_AT_accessibility(DW_ACCESS_public)
DW$1186	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1186, DW_AT_name("calibration"), DW_AT_symbol_name("_calibration")
	.dwattr DW$1186, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1186, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1186, DW_AT_accessibility(DW_ACCESS_public)
DW$1187	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1187, DW_AT_name("calibrationlatched"), DW_AT_symbol_name("_calibrationlatched")
	.dwattr DW$1187, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1187, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1187, DW_AT_accessibility(DW_ACCESS_public)
DW$1188	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1188, DW_AT_name("prewarning"), DW_AT_symbol_name("_prewarning")
	.dwattr DW$1188, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1188, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1188, DW_AT_accessibility(DW_ACCESS_public)
DW$1189	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1189, DW_AT_name("prewarninglatched"), DW_AT_symbol_name("_prewarninglatched")
	.dwattr DW$1189, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1189, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1189, DW_AT_accessibility(DW_ACCESS_public)
DW$1190	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1190, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$1190, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1190, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1190, DW_AT_accessibility(DW_ACCESS_public)
DW$1191	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1191, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$1191, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1191, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1191, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$21, DW_AT_name("tag_status3struct")
	.dwattr DW$T$21, DW_AT_byte_size(0x01)
DW$1192	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1192, DW_AT_name("nopulse"), DW_AT_symbol_name("_nopulse")
	.dwattr DW$1192, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1192, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1192, DW_AT_accessibility(DW_ACCESS_public)
DW$1193	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1193, DW_AT_name("low"), DW_AT_symbol_name("_low")
	.dwattr DW$1193, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1193, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1193, DW_AT_accessibility(DW_ACCESS_public)
DW$1194	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1194, DW_AT_name("high"), DW_AT_symbol_name("_high")
	.dwattr DW$1194, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1194, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1194, DW_AT_accessibility(DW_ACCESS_public)
DW$1195	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1195, DW_AT_name("rpmoor"), DW_AT_symbol_name("_rpmoor")
	.dwattr DW$1195, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1195, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1195, DW_AT_accessibility(DW_ACCESS_public)
DW$1196	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1196, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$1196, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1196, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1196, DW_AT_accessibility(DW_ACCESS_public)
DW$1197	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1197, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$1197, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1197, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1197, DW_AT_accessibility(DW_ACCESS_public)
DW$1198	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1198, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$1198, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1198, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1198, DW_AT_accessibility(DW_ACCESS_public)
DW$1199	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1199, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$1199, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1199, DW_AT_accessibility(DW_ACCESS_public)
DW$1200	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1200, DW_AT_name("nopulselatched"), DW_AT_symbol_name("_nopulselatched")
	.dwattr DW$1200, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1200, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1200, DW_AT_accessibility(DW_ACCESS_public)
DW$1201	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1201, DW_AT_name("lowlatched"), DW_AT_symbol_name("_lowlatched")
	.dwattr DW$1201, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1201, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1201, DW_AT_accessibility(DW_ACCESS_public)
DW$1202	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1202, DW_AT_name("highlatched"), DW_AT_symbol_name("_highlatched")
	.dwattr DW$1202, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1202, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1202, DW_AT_accessibility(DW_ACCESS_public)
DW$1203	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1203, DW_AT_name("rpmoorlatched"), DW_AT_symbol_name("_rpmoorlatched")
	.dwattr DW$1203, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1203, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1203, DW_AT_accessibility(DW_ACCESS_public)
DW$1204	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1204, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$1204, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1204, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1204, DW_AT_accessibility(DW_ACCESS_public)
DW$1205	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1205, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$1205, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1205, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1205, DW_AT_accessibility(DW_ACCESS_public)
DW$1206	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1206, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$1206, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1206, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1206, DW_AT_accessibility(DW_ACCESS_public)
DW$1207	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1207, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$1207, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1207, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1207, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21


DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_name("tag_alarmsstruct")
	.dwattr DW$T$22, DW_AT_byte_size(0x01)
DW$1208	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1208, DW_AT_name("slavefailure"), DW_AT_symbol_name("_slavefailure")
	.dwattr DW$1208, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1208, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1208, DW_AT_accessibility(DW_ACCESS_public)
DW$1209	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1209, DW_AT_name("slavefailurelatched"), DW_AT_symbol_name("_slavefailurelatched")
	.dwattr DW$1209, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1209, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1209, DW_AT_accessibility(DW_ACCESS_public)
DW$1210	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1210, DW_AT_name("framfailure"), DW_AT_symbol_name("_framfailure")
	.dwattr DW$1210, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1210, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1210, DW_AT_accessibility(DW_ACCESS_public)
DW$1211	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1211, DW_AT_name("framfailurelatched"), DW_AT_symbol_name("_framfailurelatched")
	.dwattr DW$1211, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1211, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1211, DW_AT_accessibility(DW_ACCESS_public)
DW$1212	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1212, DW_AT_name("pccommsfailure"), DW_AT_symbol_name("_pccommsfailure")
	.dwattr DW$1212, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1212, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1212, DW_AT_accessibility(DW_ACCESS_public)
DW$1213	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1213, DW_AT_name("pccommsfailurelatched"), DW_AT_symbol_name("_pccommsfailurelatched")
	.dwattr DW$1213, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1213, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1213, DW_AT_accessibility(DW_ACCESS_public)
DW$1214	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1214, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$1214, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1214, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1214, DW_AT_accessibility(DW_ACCESS_public)
DW$1215	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1215, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$1215, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1215, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1215, DW_AT_accessibility(DW_ACCESS_public)
DW$1216	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1216, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$1216, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1216, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1216, DW_AT_accessibility(DW_ACCESS_public)
DW$1217	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1217, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$1217, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1217, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1217, DW_AT_accessibility(DW_ACCESS_public)
DW$1218	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1218, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$1218, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1218, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1218, DW_AT_accessibility(DW_ACCESS_public)
DW$1219	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1219, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$1219, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1219, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1219, DW_AT_accessibility(DW_ACCESS_public)
DW$1220	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1220, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$1220, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1220, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1220, DW_AT_accessibility(DW_ACCESS_public)
DW$1221	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1221, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$1221, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1221, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1221, DW_AT_accessibility(DW_ACCESS_public)
DW$1222	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1222, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$1222, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1222, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1222, DW_AT_accessibility(DW_ACCESS_public)
DW$1223	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1223, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$1223, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1223, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1223, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$25, DW_AT_name("taggpfport")
	.dwattr DW$T$25, DW_AT_byte_size(0x01)
DW$1224	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$1224, DW_AT_name("selunion"), DW_AT_symbol_name("_selunion")
	.dwattr DW$1224, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1224, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_byte_size(0x02)
DW$1225	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1225, DW_AT_name("enb"), DW_AT_symbol_name("_enb")
	.dwattr DW$1225, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1225, DW_AT_accessibility(DW_ACCESS_public)
DW$1226	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1226, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$1226, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1226, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$31, DW_AT_byte_size(0x03)
DW$1227	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1227, DW_AT_name("yrmnth"), DW_AT_symbol_name("_yrmnth")
	.dwattr DW$1227, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1227, DW_AT_accessibility(DW_ACCESS_public)
DW$1228	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1228, DW_AT_name("datehrs"), DW_AT_symbol_name("_datehrs")
	.dwattr DW$1228, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1228, DW_AT_accessibility(DW_ACCESS_public)
DW$1229	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1229, DW_AT_name("minssecs"), DW_AT_symbol_name("_minssecs")
	.dwattr DW$1229, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$1229, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_byte_size(0x03)
DW$1230	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1230, DW_AT_name("yrmnth"), DW_AT_symbol_name("_yrmnth")
	.dwattr DW$1230, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1230, DW_AT_accessibility(DW_ACCESS_public)
DW$1231	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1231, DW_AT_name("datehrs"), DW_AT_symbol_name("_datehrs")
	.dwattr DW$1231, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1231, DW_AT_accessibility(DW_ACCESS_public)
DW$1232	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1232, DW_AT_name("minssecs"), DW_AT_symbol_name("_minssecs")
	.dwattr DW$1232, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$1232, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$35, DW_AT_byte_size(0x0b)
DW$1233	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$1233, DW_AT_name("calprtzero"), DW_AT_symbol_name("_calprtzero")
	.dwattr DW$1233, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1233, DW_AT_accessibility(DW_ACCESS_public)
DW$1234	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$1234, DW_AT_name("calprtfullscale"), DW_AT_symbol_name("_calprtfullscale")
	.dwattr DW$1234, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$1234, DW_AT_accessibility(DW_ACCESS_public)
DW$1235	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1235, DW_AT_name("sensorscalingfactor"), DW_AT_symbol_name("_sensorscalingfactor")
	.dwattr DW$1235, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$1235, DW_AT_accessibility(DW_ACCESS_public)
DW$1236	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1236, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$1236, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$1236, DW_AT_accessibility(DW_ACCESS_public)
DW$1237	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1237, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$1237, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$1237, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35


DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$36, DW_AT_byte_size(0x03)
DW$1238	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1238, DW_AT_name("mainrate"), DW_AT_symbol_name("_mainrate")
	.dwattr DW$1238, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1238, DW_AT_accessibility(DW_ACCESS_public)
DW$1239	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1239, DW_AT_name("trendrate"), DW_AT_symbol_name("_trendrate")
	.dwattr DW$1239, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1239, DW_AT_accessibility(DW_ACCESS_public)
DW$1240	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1240, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$1240, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$1240, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$36


DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$37, DW_AT_byte_size(0x01)
DW$1241	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1241, DW_AT_name("address"), DW_AT_symbol_name("_address")
	.dwattr DW$1241, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1241, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$37


DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_byte_size(0x02)
DW$1242	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1242, DW_AT_name("inputtap"), DW_AT_symbol_name("_inputtap")
	.dwattr DW$1242, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1242, DW_AT_accessibility(DW_ACCESS_public)
DW$1243	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1243, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$1243, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1243, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38


DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$39, DW_AT_byte_size(0x03)
DW$1244	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1244, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$1244, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1244, DW_AT_accessibility(DW_ACCESS_public)
DW$1245	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1245, DW_AT_name("notused2"), DW_AT_symbol_name("_notused2")
	.dwattr DW$1245, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1245, DW_AT_accessibility(DW_ACCESS_public)
DW$1246	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1246, DW_AT_name("notused3"), DW_AT_symbol_name("_notused3")
	.dwattr DW$1246, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$1246, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39


DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$40, DW_AT_byte_size(0x01)
DW$1247	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1247, DW_AT_name("rate"), DW_AT_symbol_name("_rate")
	.dwattr DW$1247, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1247, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40


DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$41, DW_AT_byte_size(0x02)
DW$1248	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1248, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$1248, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1248, DW_AT_accessibility(DW_ACCESS_public)
DW$1249	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1249, DW_AT_name("notused2"), DW_AT_symbol_name("_notused2")
	.dwattr DW$1249, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1249, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$41


DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$42, DW_AT_byte_size(0x04)
DW$1250	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1250, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$1250, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1250, DW_AT_accessibility(DW_ACCESS_public)
DW$1251	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1251, DW_AT_name("notused2"), DW_AT_symbol_name("_notused2")
	.dwattr DW$1251, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1251, DW_AT_accessibility(DW_ACCESS_public)
DW$1252	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1252, DW_AT_name("notused3"), DW_AT_symbol_name("_notused3")
	.dwattr DW$1252, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$1252, DW_AT_accessibility(DW_ACCESS_public)
DW$1253	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1253, DW_AT_name("notused4"), DW_AT_symbol_name("_notused4")
	.dwattr DW$1253, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$1253, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$42


DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$43, DW_AT_byte_size(0x01)
DW$1254	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1254, DW_AT_name("bitmap"), DW_AT_symbol_name("_bitmap")
	.dwattr DW$1254, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1254, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$43


DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$44, DW_AT_byte_size(0x01)
DW$1255	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1255, DW_AT_name("graphvalue"), DW_AT_symbol_name("_graphvalue")
	.dwattr DW$1255, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1255, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$44


DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$45, DW_AT_byte_size(0x01)
DW$1256	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1256, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$1256, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1256, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$45


DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$49, DW_AT_name("tag_timers")
	.dwattr DW$T$49, DW_AT_byte_size(0x4c)
DW$1257	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1257, DW_AT_name("update"), DW_AT_symbol_name("_update")
	.dwattr DW$1257, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1257, DW_AT_accessibility(DW_ACCESS_public)
DW$1258	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1258, DW_AT_name("general"), DW_AT_symbol_name("_general")
	.dwattr DW$1258, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1258, DW_AT_accessibility(DW_ACCESS_public)
DW$1259	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1259, DW_AT_name("rxcharTimeout"), DW_AT_symbol_name("_rxcharTimeout")
	.dwattr DW$1259, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$1259, DW_AT_accessibility(DW_ACCESS_public)
DW$1260	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1260, DW_AT_name("wiorxtimeout"), DW_AT_symbol_name("_wiorxtimeout")
	.dwattr DW$1260, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$1260, DW_AT_accessibility(DW_ACCESS_public)
DW$1261	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1261, DW_AT_name("wiomasterrxtimeout"), DW_AT_symbol_name("_wiomasterrxtimeout")
	.dwattr DW$1261, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$1261, DW_AT_accessibility(DW_ACCESS_public)
DW$1262	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1262, DW_AT_name("masterrxtimeout"), DW_AT_symbol_name("_masterrxtimeout")
	.dwattr DW$1262, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$1262, DW_AT_accessibility(DW_ACCESS_public)
DW$1263	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1263, DW_AT_name("slaverxtimeout"), DW_AT_symbol_name("_slaverxtimeout")
	.dwattr DW$1263, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$1263, DW_AT_accessibility(DW_ACCESS_public)
DW$1264	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1264, DW_AT_name("sectick"), DW_AT_symbol_name("_sectick")
	.dwattr DW$1264, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$1264, DW_AT_accessibility(DW_ACCESS_public)
DW$1265	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1265, DW_AT_name("ledflash"), DW_AT_symbol_name("_ledflash")
	.dwattr DW$1265, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$1265, DW_AT_accessibility(DW_ACCESS_public)
DW$1266	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1266, DW_AT_name("prtsettle"), DW_AT_symbol_name("_prtsettle")
	.dwattr DW$1266, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$1266, DW_AT_accessibility(DW_ACCESS_public)
DW$1267	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$1267, DW_AT_name("chantimeout"), DW_AT_symbol_name("_chantimeout")
	.dwattr DW$1267, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$1267, DW_AT_accessibility(DW_ACCESS_public)
DW$1268	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$1268, DW_AT_name("chanwait"), DW_AT_symbol_name("_chanwait")
	.dwattr DW$1268, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$1268, DW_AT_accessibility(DW_ACCESS_public)
DW$1269	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1269, DW_AT_name("pcrxtimeout"), DW_AT_symbol_name("_pcrxtimeout")
	.dwattr DW$1269, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$1269, DW_AT_accessibility(DW_ACCESS_public)
DW$1270	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1270, DW_AT_name("pctxtimeout"), DW_AT_symbol_name("_pctxtimeout")
	.dwattr DW$1270, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$1270, DW_AT_accessibility(DW_ACCESS_public)
DW$1271	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1271, DW_AT_name("spistatus"), DW_AT_symbol_name("_spistatus")
	.dwattr DW$1271, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$1271, DW_AT_accessibility(DW_ACCESS_public)
DW$1272	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1272, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$1272, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$1272, DW_AT_accessibility(DW_ACCESS_public)
DW$1273	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1273, DW_AT_name("slaverqst"), DW_AT_symbol_name("_slaverqst")
	.dwattr DW$1273, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$1273, DW_AT_accessibility(DW_ACCESS_public)
DW$1274	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1274, DW_AT_name("mastermodebutton"), DW_AT_symbol_name("_mastermodebutton")
	.dwattr DW$1274, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$1274, DW_AT_accessibility(DW_ACCESS_public)
DW$1275	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1275, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$1275, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$1275, DW_AT_accessibility(DW_ACCESS_public)
DW$1276	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$1276, DW_AT_name("calibrate"), DW_AT_symbol_name("_calibrate")
	.dwattr DW$1276, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$1276, DW_AT_accessibility(DW_ACCESS_public)
DW$1277	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$1277, DW_AT_name("calibrate2"), DW_AT_symbol_name("_calibrate2")
	.dwattr DW$1277, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$1277, DW_AT_accessibility(DW_ACCESS_public)
DW$1278	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1278, DW_AT_name("alarmreflash"), DW_AT_symbol_name("_alarmreflash")
	.dwattr DW$1278, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$1278, DW_AT_accessibility(DW_ACCESS_public)
DW$1279	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1279, DW_AT_name("slowdownreflash"), DW_AT_symbol_name("_slowdownreflash")
	.dwattr DW$1279, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr DW$1279, DW_AT_accessibility(DW_ACCESS_public)
DW$1280	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1280, DW_AT_name("wiorqst"), DW_AT_symbol_name("_wiorqst")
	.dwattr DW$1280, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$1280, DW_AT_accessibility(DW_ACCESS_public)
DW$1281	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1281, DW_AT_name("rpmtimeout"), DW_AT_symbol_name("_rpmtimeout")
	.dwattr DW$1281, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr DW$1281, DW_AT_accessibility(DW_ACCESS_public)
DW$1282	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1282, DW_AT_name("analogoor"), DW_AT_symbol_name("_analogoor")
	.dwattr DW$1282, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$1282, DW_AT_accessibility(DW_ACCESS_public)
DW$1283	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1283, DW_AT_name("motioncal"), DW_AT_symbol_name("_motioncal")
	.dwattr DW$1283, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr DW$1283, DW_AT_accessibility(DW_ACCESS_public)
DW$1284	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1284, DW_AT_name("framcheck"), DW_AT_symbol_name("_framcheck")
	.dwattr DW$1284, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$1284, DW_AT_accessibility(DW_ACCESS_public)
DW$1285	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1285, DW_AT_name("pcmodbus"), DW_AT_symbol_name("_pcmodbus")
	.dwattr DW$1285, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr DW$1285, DW_AT_accessibility(DW_ACCESS_public)
DW$1286	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1286, DW_AT_name("statusreflash"), DW_AT_symbol_name("_statusreflash")
	.dwattr DW$1286, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$1286, DW_AT_accessibility(DW_ACCESS_public)
DW$1287	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$1287, DW_AT_name("prewarn"), DW_AT_symbol_name("_prewarn")
	.dwattr DW$1287, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$1287, DW_AT_accessibility(DW_ACCESS_public)
DW$1288	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1288, DW_AT_name("clocktofram"), DW_AT_symbol_name("_clocktofram")
	.dwattr DW$1288, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr DW$1288, DW_AT_accessibility(DW_ACCESS_public)
DW$1289	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1289, DW_AT_name("debugrapidfast"), DW_AT_symbol_name("_debugrapidfast")
	.dwattr DW$1289, DW_AT_data_member_location[DW_OP_plus_uconst 0x3f]
	.dwattr DW$1289, DW_AT_accessibility(DW_ACCESS_public)
DW$1290	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1290, DW_AT_name("debugupdate"), DW_AT_symbol_name("_debugupdate")
	.dwattr DW$1290, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$1290, DW_AT_accessibility(DW_ACCESS_public)
DW$1291	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1291, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$1291, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr DW$1291, DW_AT_accessibility(DW_ACCESS_public)
DW$1292	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1292, DW_AT_name("startup"), DW_AT_symbol_name("_startup")
	.dwattr DW$1292, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr DW$1292, DW_AT_accessibility(DW_ACCESS_public)
DW$1293	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1293, DW_AT_name("analogsettle"), DW_AT_symbol_name("_analogsettle")
	.dwattr DW$1293, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr DW$1293, DW_AT_accessibility(DW_ACCESS_public)
DW$1294	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1294, DW_AT_name("reprogram"), DW_AT_symbol_name("_reprogram")
	.dwattr DW$1294, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr DW$1294, DW_AT_accessibility(DW_ACCESS_public)
DW$1295	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1295, DW_AT_name("reprogramtimeout"), DW_AT_symbol_name("_reprogramtimeout")
	.dwattr DW$1295, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr DW$1295, DW_AT_accessibility(DW_ACCESS_public)
DW$1296	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1296, DW_AT_name("dcmodestayalive"), DW_AT_symbol_name("_dcmodestayalive")
	.dwattr DW$1296, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$1296, DW_AT_accessibility(DW_ACCESS_public)
DW$1297	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1297, DW_AT_name("biteventchange"), DW_AT_symbol_name("_biteventchange")
	.dwattr DW$1297, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr DW$1297, DW_AT_accessibility(DW_ACCESS_public)
DW$1298	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1298, DW_AT_name("iSensorReplace"), DW_AT_symbol_name("_iSensorReplace")
	.dwattr DW$1298, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr DW$1298, DW_AT_accessibility(DW_ACCESS_public)
DW$1299	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$1299, DW_AT_name("deltarpm15Delay"), DW_AT_symbol_name("_deltarpm15Delay")
	.dwattr DW$1299, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr DW$1299, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$49


DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$50, DW_AT_byte_size(0x01)
DW$1300	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1300, DW_AT_name("newval"), DW_AT_symbol_name("_newval")
	.dwattr DW$1300, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1300, DW_AT_accessibility(DW_ACCESS_public)
DW$1301	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1301, DW_AT_name("calmode"), DW_AT_symbol_name("_calmode")
	.dwattr DW$1301, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1301, DW_AT_accessibility(DW_ACCESS_public)
DW$1302	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1302, DW_AT_name("startcal"), DW_AT_symbol_name("_startcal")
	.dwattr DW$1302, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1302, DW_AT_accessibility(DW_ACCESS_public)
DW$1303	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1303, DW_AT_name("newvalspu2"), DW_AT_symbol_name("_newvalspu2")
	.dwattr DW$1303, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1303, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1303, DW_AT_accessibility(DW_ACCESS_public)
DW$1304	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1304, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$1304, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$1304, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1304, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$50


DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$51, DW_AT_byte_size(0x01)
DW$1305	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1305, DW_AT_name("slowdowncntrl"), DW_AT_symbol_name("_slowdowncntrl")
	.dwattr DW$1305, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1305, DW_AT_accessibility(DW_ACCESS_public)
DW$1306	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1306, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$1306, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0f)
	.dwattr DW$1306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1306, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$51


DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$56, DW_AT_name("tag_cylinderstruct")
	.dwattr DW$T$56, DW_AT_byte_size(0x04)
DW$1307	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$54)
	.dwattr DW$1307, DW_AT_name("status1"), DW_AT_symbol_name("_status1")
	.dwattr DW$1307, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1307, DW_AT_accessibility(DW_ACCESS_public)
DW$1308	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$55)
	.dwattr DW$1308, DW_AT_name("status2"), DW_AT_symbol_name("_status2")
	.dwattr DW$1308, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1308, DW_AT_accessibility(DW_ACCESS_public)
DW$1309	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1309, DW_AT_name("average"), DW_AT_symbol_name("_average")
	.dwattr DW$1309, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$1309, DW_AT_accessibility(DW_ACCESS_public)
DW$1310	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1310, DW_AT_name("deviation"), DW_AT_symbol_name("_deviation")
	.dwattr DW$1310, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$1310, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$56


DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$57, DW_AT_byte_size(0x01)
DW$1311	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1311, DW_AT_name("inputtap"), DW_AT_symbol_name("_inputtap")
	.dwattr DW$1311, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1311, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$57


DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$58, DW_AT_byte_size(0x01)
DW$1312	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1312, DW_AT_name("bitmap"), DW_AT_symbol_name("_bitmap")
	.dwattr DW$1312, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1312, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$58


DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$59, DW_AT_byte_size(0x01)
DW$1313	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1313, DW_AT_name("graphvalue"), DW_AT_symbol_name("_graphvalue")
	.dwattr DW$1313, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1313, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$59


DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$60, DW_AT_byte_size(0x03)
DW$1314	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1314, DW_AT_name("chanlowthreshold"), DW_AT_symbol_name("_chanlowthreshold")
	.dwattr DW$1314, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1314, DW_AT_accessibility(DW_ACCESS_public)
DW$1315	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1315, DW_AT_name("chanhighthreshold"), DW_AT_symbol_name("_chanhighthreshold")
	.dwattr DW$1315, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1315, DW_AT_accessibility(DW_ACCESS_public)
DW$1316	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1316, DW_AT_name("sensorscalingfactor"), DW_AT_symbol_name("_sensorscalingfactor")
	.dwattr DW$1316, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$1316, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$60


DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$61, DW_AT_byte_size(0x02)
DW$1317	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1317, DW_AT_name("shortlrate"), DW_AT_symbol_name("_shortlrate")
	.dwattr DW$1317, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1317, DW_AT_accessibility(DW_ACCESS_public)
DW$1318	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1318, DW_AT_name("longlrate"), DW_AT_symbol_name("_longlrate")
	.dwattr DW$1318, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1318, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$61


DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$62, DW_AT_byte_size(0x10)
DW$1319	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$1319, DW_AT_name("wiorequest"), DW_AT_symbol_name("_wiorequest")
	.dwattr DW$1319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1319, DW_AT_accessibility(DW_ACCESS_public)
DW$1320	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$1320, DW_AT_name("wiocancelled"), DW_AT_symbol_name("_wiocancelled")
	.dwattr DW$1320, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$1320, DW_AT_accessibility(DW_ACCESS_public)
DW$1321	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$1321, DW_AT_name("wioreceived"), DW_AT_symbol_name("_wioreceived")
	.dwattr DW$1321, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$1321, DW_AT_accessibility(DW_ACCESS_public)
DW$1322	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$1322, DW_AT_name("slaverequest"), DW_AT_symbol_name("_slaverequest")
	.dwattr DW$1322, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$1322, DW_AT_accessibility(DW_ACCESS_public)
DW$1323	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$1323, DW_AT_name("slavereceived"), DW_AT_symbol_name("_slavereceived")
	.dwattr DW$1323, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$1323, DW_AT_accessibility(DW_ACCESS_public)
DW$1324	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$1324, DW_AT_name("slaveretry"), DW_AT_symbol_name("_slaveretry")
	.dwattr DW$1324, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$1324, DW_AT_accessibility(DW_ACCESS_public)
DW$1325	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$1325, DW_AT_name("pcrequest"), DW_AT_symbol_name("_pcrequest")
	.dwattr DW$1325, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$1325, DW_AT_accessibility(DW_ACCESS_public)
DW$1326	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$1326, DW_AT_name("pcreqtimeout"), DW_AT_symbol_name("_pcreqtimeout")
	.dwattr DW$1326, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$1326, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$62


DW$T$76	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$76, DW_AT_name("tag_sensorstruct")
	.dwattr DW$T$76, DW_AT_byte_size(0x12)
DW$1327	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$74)
	.dwattr DW$1327, DW_AT_name("status1"), DW_AT_symbol_name("_status1")
	.dwattr DW$1327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1327, DW_AT_accessibility(DW_ACCESS_public)
DW$1328	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$75)
	.dwattr DW$1328, DW_AT_name("status2"), DW_AT_symbol_name("_status2")
	.dwattr DW$1328, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1328, DW_AT_accessibility(DW_ACCESS_public)
DW$1329	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1329, DW_AT_name("newval"), DW_AT_symbol_name("_newval")
	.dwattr DW$1329, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$1329, DW_AT_accessibility(DW_ACCESS_public)
DW$1330	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1330, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$1330, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$1330, DW_AT_accessibility(DW_ACCESS_public)
DW$1331	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1331, DW_AT_name("immediateval"), DW_AT_symbol_name("_immediateval")
	.dwattr DW$1331, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$1331, DW_AT_accessibility(DW_ACCESS_public)
DW$1332	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1332, DW_AT_name("initialval"), DW_AT_symbol_name("_initialval")
	.dwattr DW$1332, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$1332, DW_AT_accessibility(DW_ACCESS_public)
DW$1333	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1333, DW_AT_name("precomp"), DW_AT_symbol_name("_precomp")
	.dwattr DW$1333, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$1333, DW_AT_accessibility(DW_ACCESS_public)
DW$1334	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1334, DW_AT_name("postcomp"), DW_AT_symbol_name("_postcomp")
	.dwattr DW$1334, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$1334, DW_AT_accessibility(DW_ACCESS_public)
DW$1335	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$1335, DW_AT_name("postfilter"), DW_AT_symbol_name("_postfilter")
	.dwattr DW$1335, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$1335, DW_AT_accessibility(DW_ACCESS_public)
DW$1336	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1336, DW_AT_name("endresult"), DW_AT_symbol_name("_endresult")
	.dwattr DW$1336, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$1336, DW_AT_accessibility(DW_ACCESS_public)
DW$1337	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1337, DW_AT_name("deviation"), DW_AT_symbol_name("_deviation")
	.dwattr DW$1337, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$1337, DW_AT_accessibility(DW_ACCESS_public)
DW$1338	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1338, DW_AT_name("min"), DW_AT_symbol_name("_min")
	.dwattr DW$1338, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$1338, DW_AT_accessibility(DW_ACCESS_public)
DW$1339	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1339, DW_AT_name("max"), DW_AT_symbol_name("_max")
	.dwattr DW$1339, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$1339, DW_AT_accessibility(DW_ACCESS_public)
DW$1340	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1340, DW_AT_name("devmin"), DW_AT_symbol_name("_devmin")
	.dwattr DW$1340, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$1340, DW_AT_accessibility(DW_ACCESS_public)
DW$1341	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1341, DW_AT_name("devmax"), DW_AT_symbol_name("_devmax")
	.dwattr DW$1341, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$1341, DW_AT_accessibility(DW_ACCESS_public)
DW$1342	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1342, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$1342, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$1342, DW_AT_accessibility(DW_ACCESS_public)
DW$1343	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1343, DW_AT_name("prt"), DW_AT_symbol_name("_prt")
	.dwattr DW$1343, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$1343, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$76


DW$T$77	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$77, DW_AT_byte_size(0x08)
DW$1344	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1344, DW_AT_name("applyoffset"), DW_AT_symbol_name("_applyoffset")
	.dwattr DW$1344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1344, DW_AT_accessibility(DW_ACCESS_public)
DW$1345	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1345, DW_AT_name("sensorcompensation"), DW_AT_symbol_name("_sensorcompensation")
	.dwattr DW$1345, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1345, DW_AT_accessibility(DW_ACCESS_public)
DW$1346	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1346, DW_AT_name("sensornoiseremoval"), DW_AT_symbol_name("_sensornoiseremoval")
	.dwattr DW$1346, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$1346, DW_AT_accessibility(DW_ACCESS_public)
DW$1347	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1347, DW_AT_name("sensordeviation"), DW_AT_symbol_name("_sensordeviation")
	.dwattr DW$1347, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$1347, DW_AT_accessibility(DW_ACCESS_public)
DW$1348	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1348, DW_AT_name("cylinderaverage"), DW_AT_symbol_name("_cylinderaverage")
	.dwattr DW$1348, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$1348, DW_AT_accessibility(DW_ACCESS_public)
DW$1349	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1349, DW_AT_name("cylinderdeviation"), DW_AT_symbol_name("_cylinderdeviation")
	.dwattr DW$1349, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$1349, DW_AT_accessibility(DW_ACCESS_public)
DW$1350	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1350, DW_AT_name("useroughcal"), DW_AT_symbol_name("_useroughcal")
	.dwattr DW$1350, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$1350, DW_AT_accessibility(DW_ACCESS_public)
DW$1351	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1351, DW_AT_name("vincheckenabled"), DW_AT_symbol_name("_vincheckenabled")
	.dwattr DW$1351, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$1351, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$77


DW$T$79	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$79, DW_AT_name("tag_manrefstruct")
	.dwattr DW$T$79, DW_AT_byte_size(0x0a)
DW$1352	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$1352, DW_AT_name("reflevel"), DW_AT_symbol_name("_reflevel")
	.dwattr DW$1352, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1352, DW_AT_accessibility(DW_ACCESS_public)
DW$1353	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$1353, DW_AT_name("presentstate"), DW_AT_symbol_name("_presentstate")
	.dwattr DW$1353, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$1353, DW_AT_accessibility(DW_ACCESS_public)
DW$1354	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$1354, DW_AT_name("refvalue"), DW_AT_symbol_name("_refvalue")
	.dwattr DW$1354, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$1354, DW_AT_accessibility(DW_ACCESS_public)
DW$1355	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1355, DW_AT_name("reflevel_int"), DW_AT_symbol_name("_reflevel_int")
	.dwattr DW$1355, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$1355, DW_AT_accessibility(DW_ACCESS_public)
DW$1356	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1356, DW_AT_name("presentstate_int"), DW_AT_symbol_name("_presentstate_int")
	.dwattr DW$1356, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$1356, DW_AT_accessibility(DW_ACCESS_public)
DW$1357	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1357, DW_AT_name("refvalue_int"), DW_AT_symbol_name("_refvalue_int")
	.dwattr DW$1357, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$1357, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$79


DW$T$80	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$80, DW_AT_name("tag_manrefsumstruct")
	.dwattr DW$T$80, DW_AT_byte_size(0x02)
DW$1358	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1358, DW_AT_name("cylsum"), DW_AT_symbol_name("_cylsum")
	.dwattr DW$1358, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1358, DW_AT_accessibility(DW_ACCESS_public)
DW$1359	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1359, DW_AT_name("mbnsum"), DW_AT_symbol_name("_mbnsum")
	.dwattr DW$1359, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1359, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$80

DW$T$95	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$94)
	.dwattr DW$T$95, DW_AT_address_class(0x16)

DW$T$97	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$96)
	.dwattr DW$T$97, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$97, DW_AT_byte_size(0x12c)
DW$1360	.dwtag  DW_TAG_subrange_type
	.dwattr DW$1360, DW_AT_upper_bound(0x12b)
	.dwendtag DW$T$97


DW$T$100	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$100, DW_AT_byte_size(0x01)
DW$1361	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1361, DW_AT_name("settings"), DW_AT_symbol_name("_settings")
	.dwattr DW$1361, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1361, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1361, DW_AT_accessibility(DW_ACCESS_public)
DW$1362	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1362, DW_AT_name("sensorstatus"), DW_AT_symbol_name("_sensorstatus")
	.dwattr DW$1362, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1362, DW_AT_accessibility(DW_ACCESS_public)
DW$1363	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1363, DW_AT_name("offsets"), DW_AT_symbol_name("_offsets")
	.dwattr DW$1363, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1363, DW_AT_accessibility(DW_ACCESS_public)
DW$1364	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1364, DW_AT_name("mantable"), DW_AT_symbol_name("_mantable")
	.dwattr DW$1364, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1364, DW_AT_accessibility(DW_ACCESS_public)
DW$1365	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1365, DW_AT_name("calibtd"), DW_AT_symbol_name("_calibtd")
	.dwattr DW$1365, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1365, DW_AT_accessibility(DW_ACCESS_public)
DW$1366	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1366, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$1366, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1366, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1366, DW_AT_accessibility(DW_ACCESS_public)
DW$1367	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1367, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$1367, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1367, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1367, DW_AT_accessibility(DW_ACCESS_public)
DW$1368	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1368, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$1368, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1368, DW_AT_accessibility(DW_ACCESS_public)
DW$1369	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1369, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$1369, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1369, DW_AT_accessibility(DW_ACCESS_public)
DW$1370	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1370, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$1370, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1370, DW_AT_accessibility(DW_ACCESS_public)
DW$1371	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1371, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$1371, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1371, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1371, DW_AT_accessibility(DW_ACCESS_public)
DW$1372	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1372, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$1372, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1372, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1372, DW_AT_accessibility(DW_ACCESS_public)
DW$1373	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1373, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$1373, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1373, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1373, DW_AT_accessibility(DW_ACCESS_public)
DW$1374	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1374, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$1374, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1374, DW_AT_accessibility(DW_ACCESS_public)
DW$1375	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1375, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$1375, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1375, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1375, DW_AT_accessibility(DW_ACCESS_public)
DW$1376	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$1376, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$1376, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1376, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1376, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$100

DW$T$103	.dwtag  DW_TAG_typedef, DW_AT_name("wioalarmstruct"), DW_AT_type(*DW$T$102)
	.dwattr DW$T$103, DW_AT_language(DW_LANG_C)

DW$T$107	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$107, DW_AT_byte_size(0x01)
DW$1377	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1377, DW_AT_name("oor"), DW_AT_symbol_name("_oor")
	.dwattr DW$1377, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1377, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1377, DW_AT_accessibility(DW_ACCESS_public)
DW$1378	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1378, DW_AT_name("alarm"), DW_AT_symbol_name("_alarm")
	.dwattr DW$1378, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1378, DW_AT_accessibility(DW_ACCESS_public)
DW$1379	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1379, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$1379, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0e)
	.dwattr DW$1379, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1379, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$107


DW$T$109	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$109, DW_AT_byte_size(0x01)
DW$1380	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1380, DW_AT_name("low"), DW_AT_symbol_name("_low")
	.dwattr DW$1380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1380, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$109


DW$T$24	.dwtag  DW_TAG_union_type
	.dwattr DW$T$24, DW_AT_byte_size(0x01)
DW$1381	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1381, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$1381, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1381, DW_AT_accessibility(DW_ACCESS_public)
DW$1382	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$1382, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$1382, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1382, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$54, DW_AT_byte_size(0x01)
DW$1383	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1383, DW_AT_name("alarmack"), DW_AT_symbol_name("_alarmack")
	.dwattr DW$1383, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1383, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1383, DW_AT_accessibility(DW_ACCESS_public)
DW$1384	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1384, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$1384, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1384, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1384, DW_AT_accessibility(DW_ACCESS_public)
DW$1385	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1385, DW_AT_name("unused3"), DW_AT_symbol_name("_unused3")
	.dwattr DW$1385, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1385, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1385, DW_AT_accessibility(DW_ACCESS_public)
DW$1386	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1386, DW_AT_name("unused4"), DW_AT_symbol_name("_unused4")
	.dwattr DW$1386, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1386, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1386, DW_AT_accessibility(DW_ACCESS_public)
DW$1387	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1387, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$1387, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1387, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1387, DW_AT_accessibility(DW_ACCESS_public)
DW$1388	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1388, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$1388, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1388, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1388, DW_AT_accessibility(DW_ACCESS_public)
DW$1389	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1389, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$1389, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1389, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1389, DW_AT_accessibility(DW_ACCESS_public)
DW$1390	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1390, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$1390, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1390, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1390, DW_AT_accessibility(DW_ACCESS_public)
DW$1391	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1391, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$1391, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1391, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1391, DW_AT_accessibility(DW_ACCESS_public)
DW$1392	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1392, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$1392, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1392, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1392, DW_AT_accessibility(DW_ACCESS_public)
DW$1393	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1393, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$1393, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1393, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1393, DW_AT_accessibility(DW_ACCESS_public)
DW$1394	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1394, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$1394, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1394, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1394, DW_AT_accessibility(DW_ACCESS_public)
DW$1395	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1395, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$1395, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1395, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1395, DW_AT_accessibility(DW_ACCESS_public)
DW$1396	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1396, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$1396, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1396, DW_AT_accessibility(DW_ACCESS_public)
DW$1397	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1397, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$1397, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1397, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1397, DW_AT_accessibility(DW_ACCESS_public)
DW$1398	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1398, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$1398, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1398, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1398, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$54


DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$55, DW_AT_byte_size(0x01)
DW$1399	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1399, DW_AT_name("alarm"), DW_AT_symbol_name("_alarm")
	.dwattr DW$1399, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1399, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1399, DW_AT_accessibility(DW_ACCESS_public)
DW$1400	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1400, DW_AT_name("alarmlatched"), DW_AT_symbol_name("_alarmlatched")
	.dwattr DW$1400, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1400, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1400, DW_AT_accessibility(DW_ACCESS_public)
DW$1401	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1401, DW_AT_name("unused3"), DW_AT_symbol_name("_unused3")
	.dwattr DW$1401, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1401, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1401, DW_AT_accessibility(DW_ACCESS_public)
DW$1402	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1402, DW_AT_name("unused4"), DW_AT_symbol_name("_unused4")
	.dwattr DW$1402, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1402, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1402, DW_AT_accessibility(DW_ACCESS_public)
DW$1403	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1403, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$1403, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1403, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1403, DW_AT_accessibility(DW_ACCESS_public)
DW$1404	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1404, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$1404, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1404, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1404, DW_AT_accessibility(DW_ACCESS_public)
DW$1405	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1405, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$1405, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1405, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1405, DW_AT_accessibility(DW_ACCESS_public)
DW$1406	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1406, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$1406, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1406, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1406, DW_AT_accessibility(DW_ACCESS_public)
DW$1407	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1407, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$1407, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1407, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1407, DW_AT_accessibility(DW_ACCESS_public)
DW$1408	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1408, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$1408, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1408, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1408, DW_AT_accessibility(DW_ACCESS_public)
DW$1409	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1409, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$1409, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1409, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1409, DW_AT_accessibility(DW_ACCESS_public)
DW$1410	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1410, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$1410, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1410, DW_AT_accessibility(DW_ACCESS_public)
DW$1411	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1411, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$1411, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1411, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1411, DW_AT_accessibility(DW_ACCESS_public)
DW$1412	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1412, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$1412, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1412, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1412, DW_AT_accessibility(DW_ACCESS_public)
DW$1413	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1413, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$1413, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1413, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1413, DW_AT_accessibility(DW_ACCESS_public)
DW$1414	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1414, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$1414, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1414, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1414, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$55

DW$T$94	.dwtag  DW_TAG_typedef, DW_AT_name("F_FILE"), DW_AT_type(*DW$T$93)
	.dwattr DW$T$94, DW_AT_language(DW_LANG_C)

DW$T$102	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$102, DW_AT_name("tag_wioalarmstruct")
	.dwattr DW$T$102, DW_AT_byte_size(0x01)
DW$1415	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1415, DW_AT_name("alarmupper"), DW_AT_symbol_name("_alarmupper")
	.dwattr DW$1415, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1415, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1415, DW_AT_accessibility(DW_ACCESS_public)
DW$1416	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1416, DW_AT_name("alarmupperlatched"), DW_AT_symbol_name("_alarmupperlatched")
	.dwattr DW$1416, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1416, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1416, DW_AT_accessibility(DW_ACCESS_public)
DW$1417	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1417, DW_AT_name("alarm"), DW_AT_symbol_name("_alarm")
	.dwattr DW$1417, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1417, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1417, DW_AT_accessibility(DW_ACCESS_public)
DW$1418	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1418, DW_AT_name("alarmlatched"), DW_AT_symbol_name("_alarmlatched")
	.dwattr DW$1418, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1418, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1418, DW_AT_accessibility(DW_ACCESS_public)
DW$1419	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1419, DW_AT_name("comms"), DW_AT_symbol_name("_comms")
	.dwattr DW$1419, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1419, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1419, DW_AT_accessibility(DW_ACCESS_public)
DW$1420	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1420, DW_AT_name("commslatched"), DW_AT_symbol_name("_commslatched")
	.dwattr DW$1420, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1420, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1420, DW_AT_accessibility(DW_ACCESS_public)
DW$1421	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1421, DW_AT_name("analoglow"), DW_AT_symbol_name("_analoglow")
	.dwattr DW$1421, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1421, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1421, DW_AT_accessibility(DW_ACCESS_public)
DW$1422	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1422, DW_AT_name("analoghigh"), DW_AT_symbol_name("_analoghigh")
	.dwattr DW$1422, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1422, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1422, DW_AT_accessibility(DW_ACCESS_public)
DW$1423	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1423, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$1423, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1423, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1423, DW_AT_accessibility(DW_ACCESS_public)
DW$1424	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1424, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$1424, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1424, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1424, DW_AT_accessibility(DW_ACCESS_public)
DW$1425	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1425, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$1425, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1425, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1425, DW_AT_accessibility(DW_ACCESS_public)
DW$1426	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1426, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$1426, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1426, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1426, DW_AT_accessibility(DW_ACCESS_public)
DW$1427	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1427, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$1427, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1427, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1427, DW_AT_accessibility(DW_ACCESS_public)
DW$1428	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1428, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$1428, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1428, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1428, DW_AT_accessibility(DW_ACCESS_public)
DW$1429	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1429, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$1429, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1429, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1429, DW_AT_accessibility(DW_ACCESS_public)
DW$1430	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1430, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$1430, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1430, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1430, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$102


DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$23, DW_AT_byte_size(0x01)
DW$1431	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1431, DW_AT_name("spimo"), DW_AT_symbol_name("_spimo")
	.dwattr DW$1431, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1431, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1431, DW_AT_accessibility(DW_ACCESS_public)
DW$1432	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1432, DW_AT_name("spimi"), DW_AT_symbol_name("_spimi")
	.dwattr DW$1432, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1432, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1432, DW_AT_accessibility(DW_ACCESS_public)
DW$1433	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1433, DW_AT_name("spiclk"), DW_AT_symbol_name("_spiclk")
	.dwattr DW$1433, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1433, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1433, DW_AT_accessibility(DW_ACCESS_public)
DW$1434	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1434, DW_AT_name("spiste"), DW_AT_symbol_name("_spiste")
	.dwattr DW$1434, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1434, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1434, DW_AT_accessibility(DW_ACCESS_public)
DW$1435	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1435, DW_AT_name("scitxa"), DW_AT_symbol_name("_scitxa")
	.dwattr DW$1435, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1435, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1435, DW_AT_accessibility(DW_ACCESS_public)
DW$1436	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1436, DW_AT_name("scirxa"), DW_AT_symbol_name("_scirxa")
	.dwattr DW$1436, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1436, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1436, DW_AT_accessibility(DW_ACCESS_public)
DW$1437	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1437, DW_AT_name("op1"), DW_AT_symbol_name("_op1")
	.dwattr DW$1437, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1437, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1437, DW_AT_accessibility(DW_ACCESS_public)
DW$1438	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1438, DW_AT_name("op2"), DW_AT_symbol_name("_op2")
	.dwattr DW$1438, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1438, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1438, DW_AT_accessibility(DW_ACCESS_public)
DW$1439	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1439, DW_AT_name("spiselect1"), DW_AT_symbol_name("_spiselect1")
	.dwattr DW$1439, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1439, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1439, DW_AT_accessibility(DW_ACCESS_public)
DW$1440	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1440, DW_AT_name("spiselect2"), DW_AT_symbol_name("_spiselect2")
	.dwattr DW$1440, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1440, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1440, DW_AT_accessibility(DW_ACCESS_public)
DW$1441	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1441, DW_AT_name("spiselect3"), DW_AT_symbol_name("_spiselect3")
	.dwattr DW$1441, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1441, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1441, DW_AT_accessibility(DW_ACCESS_public)
DW$1442	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1442, DW_AT_name("pc485rxen"), DW_AT_symbol_name("_pc485rxen")
	.dwattr DW$1442, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1442, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1442, DW_AT_accessibility(DW_ACCESS_public)
DW$1443	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1443, DW_AT_name("pc485txen"), DW_AT_symbol_name("_pc485txen")
	.dwattr DW$1443, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1443, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1443, DW_AT_accessibility(DW_ACCESS_public)
DW$1444	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1444, DW_AT_name("modeselect"), DW_AT_symbol_name("_modeselect")
	.dwattr DW$1444, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1444, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1444, DW_AT_accessibility(DW_ACCESS_public)
DW$1445	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1445, DW_AT_name("xf_xplldis"), DW_AT_symbol_name("_xf_xplldis")
	.dwattr DW$1445, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1445, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1445, DW_AT_accessibility(DW_ACCESS_public)
DW$1446	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$1446, DW_AT_name("notused3"), DW_AT_symbol_name("_notused3")
	.dwattr DW$1446, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1446, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1446, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$93	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$93, DW_AT_byte_size(0x02)
DW$1447	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$3)
	.dwattr DW$1447, DW_AT_name("reference"), DW_AT_symbol_name("_reference")
	.dwattr DW$1447, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1447, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$93


	.dwattr DW$187, DW_AT_external(0x01)
	.dwattr DW$197, DW_AT_external(0x01)
	.dwattr DW$197, DW_AT_type(*DW$T$6)
	.dwattr DW$186, DW_AT_external(0x01)
	.dwattr DW$194, DW_AT_external(0x01)
	.dwattr DW$194, DW_AT_type(*DW$T$96)
	.dwattr DW$210, DW_AT_external(0x01)
	.dwattr DW$200, DW_AT_external(0x01)
	.dwattr DW$827, DW_AT_external(0x01)
	.dwattr DW$830, DW_AT_external(0x01)
	.dwattr DW$823, DW_AT_external(0x01)
	.dwattr DW$211, DW_AT_external(0x01)
	.dwattr DW$211, DW_AT_type(*DW$T$10)
	.dwattr DW$216, DW_AT_external(0x01)
	.dwattr DW$212, DW_AT_external(0x01)
	.dwattr DW$201, DW_AT_external(0x01)
	.dwattr DW$201, DW_AT_type(*DW$T$96)
	.dwattr DW$193, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$1448	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$1448, DW_AT_location[DW_OP_reg0]
DW$1449	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$1449, DW_AT_location[DW_OP_reg1]
DW$1450	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$1450, DW_AT_location[DW_OP_reg2]
DW$1451	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$1451, DW_AT_location[DW_OP_reg3]
DW$1452	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$1452, DW_AT_location[DW_OP_reg4]
DW$1453	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$1453, DW_AT_location[DW_OP_reg5]
DW$1454	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$1454, DW_AT_location[DW_OP_reg6]
DW$1455	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$1455, DW_AT_location[DW_OP_reg7]
DW$1456	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$1456, DW_AT_location[DW_OP_reg8]
DW$1457	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$1457, DW_AT_location[DW_OP_reg9]
DW$1458	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$1458, DW_AT_location[DW_OP_reg10]
DW$1459	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$1459, DW_AT_location[DW_OP_reg11]
DW$1460	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$1460, DW_AT_location[DW_OP_reg12]
DW$1461	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$1461, DW_AT_location[DW_OP_reg13]
DW$1462	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$1462, DW_AT_location[DW_OP_reg14]
DW$1463	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$1463, DW_AT_location[DW_OP_reg15]
DW$1464	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$1464, DW_AT_location[DW_OP_reg16]
DW$1465	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$1465, DW_AT_location[DW_OP_reg17]
DW$1466	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$1466, DW_AT_location[DW_OP_reg18]
DW$1467	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$1467, DW_AT_location[DW_OP_reg19]
DW$1468	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$1468, DW_AT_location[DW_OP_reg20]
DW$1469	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$1469, DW_AT_location[DW_OP_reg21]
DW$1470	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$1470, DW_AT_location[DW_OP_reg22]
DW$1471	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$1471, DW_AT_location[DW_OP_reg23]
DW$1472	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$1472, DW_AT_location[DW_OP_reg24]
DW$1473	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$1473, DW_AT_location[DW_OP_reg25]
DW$1474	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$1474, DW_AT_location[DW_OP_reg26]
DW$1475	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$1475, DW_AT_location[DW_OP_reg27]
DW$1476	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$1476, DW_AT_location[DW_OP_reg28]
DW$1477	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$1477, DW_AT_location[DW_OP_reg29]
DW$1478	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$1478, DW_AT_location[DW_OP_reg30]
DW$1479	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$1479, DW_AT_location[DW_OP_reg31]
DW$1480	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$1480, DW_AT_location[DW_OP_regx 0x20]
DW$1481	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$1481, DW_AT_location[DW_OP_regx 0x21]
DW$1482	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$1482, DW_AT_location[DW_OP_regx 0x22]
DW$1483	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$1483, DW_AT_location[DW_OP_regx 0x23]
DW$1484	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$1484, DW_AT_location[DW_OP_regx 0x24]
DW$1485	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$1485, DW_AT_location[DW_OP_regx 0x25]
DW$1486	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$1486, DW_AT_location[DW_OP_regx 0x26]
DW$1487	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$1487, DW_AT_location[DW_OP_regx 0x27]
DW$1488	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$1488, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

