;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Thu Aug 18 12:16:09 2016                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("core.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)
;**************************************************************
;* CINIT RECORDS                                              *
;**************************************************************
	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_WhatIsrActive+0,32
	.field  	0,16			; _WhatIsrActive @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_Isr13+0,32
	.field  	0,32			; _Isr13 @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_Isr14+0,32
	.field  	0,32			; _Isr14 @ 0


DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("sprintf"), DW_AT_symbol_name("_sprintf")
	.dwattr DW$1, DW_AT_type(*DW$T$10)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$66)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$76)
DW$4	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$1


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("memset"), DW_AT_symbol_name("_memset")
	.dwattr DW$5, DW_AT_type(*DW$T$3)
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$60)
	.dwendtag DW$5


DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("SetupInterruptsandTimers"), DW_AT_symbol_name("_SetupInterruptsandTimers")
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)

DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("SetupPIEVectors"), DW_AT_symbol_name("_SetupPIEVectors")
	.dwattr DW$10, DW_AT_declaration(0x01)
	.dwattr DW$10, DW_AT_external(0x01)

DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("TimingSetup"), DW_AT_symbol_name("_TimingSetup")
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)

DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("FlashSetup"), DW_AT_symbol_name("_FlashSetup")
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)

DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("InternalRamSetup"), DW_AT_symbol_name("_InternalRamSetup")
	.dwattr DW$13, DW_AT_declaration(0x01)
	.dwattr DW$13, DW_AT_external(0x01)

DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("AllSensorInit"), DW_AT_symbol_name("_AllSensorInit")
	.dwattr DW$14, DW_AT_declaration(0x01)
	.dwattr DW$14, DW_AT_external(0x01)

DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("Init485Drivers"), DW_AT_symbol_name("_Init485Drivers")
	.dwattr DW$15, DW_AT_declaration(0x01)
	.dwattr DW$15, DW_AT_external(0x01)

DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("SerialPortASetup"), DW_AT_symbol_name("_SerialPortASetup")
	.dwattr DW$16, DW_AT_declaration(0x01)
	.dwattr DW$16, DW_AT_external(0x01)

DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("SerialPortBSetup"), DW_AT_symbol_name("_SerialPortBSetup")
	.dwattr DW$17, DW_AT_declaration(0x01)
	.dwattr DW$17, DW_AT_external(0x01)

DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("SerialPortCSetup"), DW_AT_symbol_name("_SerialPortCSetup")
	.dwattr DW$18, DW_AT_declaration(0x01)
	.dwattr DW$18, DW_AT_external(0x01)

DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("SerialPortDSetup"), DW_AT_symbol_name("_SerialPortDSetup")
	.dwattr DW$19, DW_AT_declaration(0x01)
	.dwattr DW$19, DW_AT_external(0x01)

DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("DebugStringOut"), DW_AT_symbol_name("_DebugStringOut")
	.dwattr DW$20, DW_AT_declaration(0x01)
	.dwattr DW$20, DW_AT_external(0x01)
DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$66)
	.dwendtag DW$20


DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("clearCommsErrors"), DW_AT_symbol_name("_clearCommsErrors")
	.dwattr DW$22, DW_AT_declaration(0x01)
	.dwattr DW$22, DW_AT_external(0x01)

DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("InitSPI"), DW_AT_symbol_name("_InitSPI")
	.dwattr DW$23, DW_AT_declaration(0x01)
	.dwattr DW$23, DW_AT_external(0x01)

DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadAllFromEEPROM"), DW_AT_symbol_name("_ReadAllFromEEPROM")
	.dwattr DW$24, DW_AT_declaration(0x01)
	.dwattr DW$24, DW_AT_external(0x01)

DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadClockData"), DW_AT_symbol_name("_ReadClockData")
	.dwattr DW$25, DW_AT_declaration(0x01)
	.dwattr DW$25, DW_AT_external(0x01)

DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("Fram1ChipCheck"), DW_AT_symbol_name("_Fram1ChipCheck")
	.dwattr DW$26, DW_AT_declaration(0x01)
	.dwattr DW$26, DW_AT_external(0x01)

DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("PCModBus"), DW_AT_symbol_name("_PCModBus")
	.dwattr DW$27, DW_AT_declaration(0x01)
	.dwattr DW$27, DW_AT_external(0x01)

DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("WIO485Init"), DW_AT_symbol_name("_WIO485Init")
	.dwattr DW$28, DW_AT_declaration(0x01)
	.dwattr DW$28, DW_AT_external(0x01)

DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("WaterinOil"), DW_AT_symbol_name("_WaterinOil")
	.dwattr DW$29, DW_AT_declaration(0x01)
	.dwattr DW$29, DW_AT_external(0x01)

DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("Slave485Init"), DW_AT_symbol_name("_Slave485Init")
	.dwattr DW$30, DW_AT_declaration(0x01)
	.dwattr DW$30, DW_AT_external(0x01)

DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("Slave485Modbus"), DW_AT_symbol_name("_Slave485Modbus")
	.dwattr DW$31, DW_AT_declaration(0x01)
	.dwattr DW$31, DW_AT_external(0x01)

DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("PcCLI"), DW_AT_symbol_name("_PcCLI")
	.dwattr DW$32, DW_AT_declaration(0x01)
	.dwattr DW$32, DW_AT_external(0x01)

DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("SetupCLI"), DW_AT_symbol_name("_SetupCLI")
	.dwattr DW$33, DW_AT_declaration(0x01)
	.dwattr DW$33, DW_AT_external(0x01)

DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("InitOP"), DW_AT_symbol_name("_InitOP")
	.dwattr DW$34, DW_AT_declaration(0x01)
	.dwattr DW$34, DW_AT_external(0x01)

DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("InitOffboardGPIO"), DW_AT_symbol_name("_InitOffboardGPIO")
	.dwattr DW$35, DW_AT_declaration(0x01)
	.dwattr DW$35, DW_AT_external(0x01)

DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("ProcessDigitalOP"), DW_AT_symbol_name("_ProcessDigitalOP")
	.dwattr DW$36, DW_AT_declaration(0x01)
	.dwattr DW$36, DW_AT_external(0x01)

DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("SDCardInitialise"), DW_AT_symbol_name("_SDCardInitialise")
	.dwattr DW$37, DW_AT_type(*DW$T$10)
	.dwattr DW$37, DW_AT_declaration(0x01)
	.dwattr DW$37, DW_AT_external(0x01)

DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("SetAllEventMsgs"), DW_AT_symbol_name("_SetAllEventMsgs")
	.dwattr DW$38, DW_AT_declaration(0x01)
	.dwattr DW$38, DW_AT_external(0x01)

DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("SDCalcEventLogID"), DW_AT_symbol_name("_SDCalcEventLogID")
	.dwattr DW$39, DW_AT_type(*DW$T$10)
	.dwattr DW$39, DW_AT_declaration(0x01)
	.dwattr DW$39, DW_AT_external(0x01)

DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("ProcessSDCard"), DW_AT_symbol_name("_ProcessSDCard")
	.dwattr DW$40, DW_AT_declaration(0x01)
	.dwattr DW$40, DW_AT_external(0x01)

DW$41	.dwtag  DW_TAG_subprogram, DW_AT_name("SDCardLogUpdate"), DW_AT_symbol_name("_SDCardLogUpdate")
	.dwattr DW$41, DW_AT_declaration(0x01)
	.dwattr DW$41, DW_AT_external(0x01)

DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("SDCardUpdate"), DW_AT_symbol_name("_SDCardUpdate")
	.dwattr DW$42, DW_AT_declaration(0x01)
	.dwattr DW$42, DW_AT_external(0x01)

DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("RunTimeMinUpdate"), DW_AT_symbol_name("_RunTimeMinUpdate")
	.dwattr DW$43, DW_AT_declaration(0x01)
	.dwattr DW$43, DW_AT_external(0x01)

DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("WIOChecks"), DW_AT_symbol_name("_WIOChecks")
	.dwattr DW$44, DW_AT_declaration(0x01)
	.dwattr DW$44, DW_AT_external(0x01)

DW$45	.dwtag  DW_TAG_subprogram, DW_AT_name("SetWIOAlarmMask"), DW_AT_symbol_name("_SetWIOAlarmMask")
	.dwattr DW$45, DW_AT_declaration(0x01)
	.dwattr DW$45, DW_AT_external(0x01)
DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$45


DW$47	.dwtag  DW_TAG_subprogram, DW_AT_name("WIOInit"), DW_AT_symbol_name("_WIOInit")
	.dwattr DW$47, DW_AT_declaration(0x01)
	.dwattr DW$47, DW_AT_external(0x01)

DW$48	.dwtag  DW_TAG_subprogram, DW_AT_name("PowerUpCalInit"), DW_AT_symbol_name("_PowerUpCalInit")
	.dwattr DW$48, DW_AT_declaration(0x01)
	.dwattr DW$48, DW_AT_external(0x01)

DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("InitCal"), DW_AT_symbol_name("_InitCal")
	.dwattr DW$49, DW_AT_declaration(0x01)
	.dwattr DW$49, DW_AT_external(0x01)

DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("FirmwareComparison"), DW_AT_symbol_name("_FirmwareComparison")
	.dwattr DW$50, DW_AT_declaration(0x01)
	.dwattr DW$50, DW_AT_external(0x01)

DW$51	.dwtag  DW_TAG_subprogram, DW_AT_name("InitADC"), DW_AT_symbol_name("_InitADC")
	.dwattr DW$51, DW_AT_declaration(0x01)
	.dwattr DW$51, DW_AT_external(0x01)

DW$52	.dwtag  DW_TAG_subprogram, DW_AT_name("InitScalingFactor"), DW_AT_symbol_name("_InitScalingFactor")
	.dwattr DW$52, DW_AT_declaration(0x01)
	.dwattr DW$52, DW_AT_external(0x01)

DW$53	.dwtag  DW_TAG_subprogram, DW_AT_name("SetupConstantCurrentMux"), DW_AT_symbol_name("_SetupConstantCurrentMux")
	.dwattr DW$53, DW_AT_declaration(0x01)
	.dwattr DW$53, DW_AT_external(0x01)

DW$54	.dwtag  DW_TAG_subprogram, DW_AT_name("SetupScaling"), DW_AT_symbol_name("_SetupScaling")
	.dwattr DW$54, DW_AT_declaration(0x01)
	.dwattr DW$54, DW_AT_external(0x01)

DW$55	.dwtag  DW_TAG_subprogram, DW_AT_name("AnalogueInputScaleAllChannels"), DW_AT_symbol_name("_AnalogueInputScaleAllChannels")
	.dwattr DW$55, DW_AT_declaration(0x01)
	.dwattr DW$55, DW_AT_external(0x01)

DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("SlaveDefaultNotSet"), DW_AT_symbol_name("_SlaveDefaultNotSet")
	.dwattr DW$56, DW_AT_declaration(0x01)
	.dwattr DW$56, DW_AT_external(0x01)

DW$57	.dwtag  DW_TAG_subprogram, DW_AT_name("ProximityScaling"), DW_AT_symbol_name("_ProximityScaling")
	.dwattr DW$57, DW_AT_declaration(0x01)
	.dwattr DW$57, DW_AT_external(0x01)
DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$57


DW$59	.dwtag  DW_TAG_subprogram, DW_AT_name("ReprogrammingCalls"), DW_AT_symbol_name("_ReprogrammingCalls")
	.dwattr DW$59, DW_AT_declaration(0x01)
	.dwattr DW$59, DW_AT_external(0x01)

DW$60	.dwtag  DW_TAG_subprogram, DW_AT_name("ReprogramStartupInit"), DW_AT_symbol_name("_ReprogramStartupInit")
	.dwattr DW$60, DW_AT_declaration(0x01)
	.dwattr DW$60, DW_AT_external(0x01)

DW$61	.dwtag  DW_TAG_subprogram, DW_AT_name("InitSystemAlarms"), DW_AT_symbol_name("_InitSystemAlarms")
	.dwattr DW$61, DW_AT_declaration(0x01)
	.dwattr DW$61, DW_AT_external(0x01)

DW$62	.dwtag  DW_TAG_subprogram, DW_AT_name("SystemChecks"), DW_AT_symbol_name("_SystemChecks")
	.dwattr DW$62, DW_AT_declaration(0x01)
	.dwattr DW$62, DW_AT_external(0x01)

DW$63	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearEventCodeListArea"), DW_AT_symbol_name("_ClearEventCodeListArea")
	.dwattr DW$63, DW_AT_declaration(0x01)
	.dwattr DW$63, DW_AT_external(0x01)

DW$64	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearStatusFlagsforSlave"), DW_AT_symbol_name("_ClearStatusFlagsforSlave")
	.dwattr DW$64, DW_AT_declaration(0x01)
	.dwattr DW$64, DW_AT_external(0x01)

DW$65	.dwtag  DW_TAG_subprogram, DW_AT_name("bitEventIncrement"), DW_AT_symbol_name("_bitEventIncrement")
	.dwattr DW$65, DW_AT_declaration(0x01)
	.dwattr DW$65, DW_AT_external(0x01)

DW$66	.dwtag  DW_TAG_subprogram, DW_AT_name("SetBitEvent"), DW_AT_symbol_name("_SetBitEvent")
	.dwattr DW$66, DW_AT_declaration(0x01)
	.dwattr DW$66, DW_AT_external(0x01)
DW$67	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$66


DW$68	.dwtag  DW_TAG_subprogram, DW_AT_name("BearingStatus"), DW_AT_symbol_name("_BearingStatus")
	.dwattr DW$68, DW_AT_declaration(0x01)
	.dwattr DW$68, DW_AT_external(0x01)

DW$69	.dwtag  DW_TAG_subprogram, DW_AT_name("CalLEDSetup"), DW_AT_symbol_name("_CalLEDSetup")
	.dwattr DW$69, DW_AT_type(*DW$T$10)
	.dwattr DW$69, DW_AT_declaration(0x01)
	.dwattr DW$69, DW_AT_external(0x01)

DW$70	.dwtag  DW_TAG_subprogram, DW_AT_name("InitStatus1Flags"), DW_AT_symbol_name("_InitStatus1Flags")
	.dwattr DW$70, DW_AT_type(*DW$T$10)
	.dwattr DW$70, DW_AT_declaration(0x01)
	.dwattr DW$70, DW_AT_external(0x01)

DW$71	.dwtag  DW_TAG_subprogram, DW_AT_name("InitSensors"), DW_AT_symbol_name("_InitSensors")
	.dwattr DW$71, DW_AT_type(*DW$T$10)
	.dwattr DW$71, DW_AT_declaration(0x01)
	.dwattr DW$71, DW_AT_external(0x01)

DW$72	.dwtag  DW_TAG_subprogram, DW_AT_name("FunctionEnabledSetup"), DW_AT_symbol_name("_FunctionEnabledSetup")
	.dwattr DW$72, DW_AT_type(*DW$T$10)
	.dwattr DW$72, DW_AT_declaration(0x01)
	.dwattr DW$72, DW_AT_external(0x01)

DW$73	.dwtag  DW_TAG_subprogram, DW_AT_name("MasterModeSwitch"), DW_AT_symbol_name("_MasterModeSwitch")
	.dwattr DW$73, DW_AT_type(*DW$T$10)
	.dwattr DW$73, DW_AT_declaration(0x01)
	.dwattr DW$73, DW_AT_external(0x01)

DW$74	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadAllSensorStructfromNVMEM"), DW_AT_symbol_name("_ReadAllSensorStructfromNVMEM")
	.dwattr DW$74, DW_AT_type(*DW$T$10)
	.dwattr DW$74, DW_AT_declaration(0x01)
	.dwattr DW$74, DW_AT_external(0x01)

DW$75	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadConfigStructfromNVMEM"), DW_AT_symbol_name("_ReadConfigStructfromNVMEM")
	.dwattr DW$75, DW_AT_type(*DW$T$10)
	.dwattr DW$75, DW_AT_declaration(0x01)
	.dwattr DW$75, DW_AT_external(0x01)

DW$76	.dwtag  DW_TAG_subprogram, DW_AT_name("InitMAN"), DW_AT_symbol_name("_InitMAN")
	.dwattr DW$76, DW_AT_type(*DW$T$10)
	.dwattr DW$76, DW_AT_declaration(0x01)
	.dwattr DW$76, DW_AT_external(0x01)

DW$77	.dwtag  DW_TAG_subprogram, DW_AT_name("LoadFRAMpowerup"), DW_AT_symbol_name("_LoadFRAMpowerup")
	.dwattr DW$77, DW_AT_type(*DW$T$10)
	.dwattr DW$77, DW_AT_declaration(0x01)
	.dwattr DW$77, DW_AT_external(0x01)

DW$78	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearBitEventList"), DW_AT_symbol_name("_ClearBitEventList")
	.dwattr DW$78, DW_AT_type(*DW$T$10)
	.dwattr DW$78, DW_AT_declaration(0x01)
	.dwattr DW$78, DW_AT_external(0x01)

DW$79	.dwtag  DW_TAG_subprogram, DW_AT_name("LoadFRAMfromSD"), DW_AT_symbol_name("_LoadFRAMfromSD")
	.dwattr DW$79, DW_AT_type(*DW$T$10)
	.dwattr DW$79, DW_AT_declaration(0x01)
	.dwattr DW$79, DW_AT_external(0x01)

DW$80	.dwtag  DW_TAG_subprogram, DW_AT_name("ClockProcessing"), DW_AT_symbol_name("_ClockProcessing")
	.dwattr DW$80, DW_AT_type(*DW$T$10)
	.dwattr DW$80, DW_AT_declaration(0x01)
	.dwattr DW$80, DW_AT_external(0x01)

DW$81	.dwtag  DW_TAG_subprogram, DW_AT_name("NominalSpeedUpdate"), DW_AT_symbol_name("_NominalSpeedUpdate")
	.dwattr DW$81, DW_AT_type(*DW$T$10)
	.dwattr DW$81, DW_AT_declaration(0x01)
	.dwattr DW$81, DW_AT_external(0x01)

DW$82	.dwtag  DW_TAG_subprogram, DW_AT_name("StartupRefReload"), DW_AT_symbol_name("_StartupRefReload")
	.dwattr DW$82, DW_AT_type(*DW$T$10)
	.dwattr DW$82, DW_AT_declaration(0x01)
	.dwattr DW$82, DW_AT_external(0x01)

DW$83	.dwtag  DW_TAG_subprogram, DW_AT_name("ResetLoopCheck"), DW_AT_symbol_name("_ResetLoopCheck")
	.dwattr DW$83, DW_AT_type(*DW$T$10)
	.dwattr DW$83, DW_AT_declaration(0x01)
	.dwattr DW$83, DW_AT_external(0x01)

DW$84	.dwtag  DW_TAG_subprogram, DW_AT_name("ResetCommsCheck"), DW_AT_symbol_name("_ResetCommsCheck")
	.dwattr DW$84, DW_AT_type(*DW$T$10)
	.dwattr DW$84, DW_AT_declaration(0x01)
	.dwattr DW$84, DW_AT_external(0x01)

DW$85	.dwtag  DW_TAG_subprogram, DW_AT_name("LoopCheck"), DW_AT_symbol_name("_LoopCheck")
	.dwattr DW$85, DW_AT_type(*DW$T$10)
	.dwattr DW$85, DW_AT_declaration(0x01)
	.dwattr DW$85, DW_AT_external(0x01)

DW$86	.dwtag  DW_TAG_subprogram, DW_AT_name("RPMCalc"), DW_AT_symbol_name("_RPMCalc")
	.dwattr DW$86, DW_AT_type(*DW$T$10)
	.dwattr DW$86, DW_AT_declaration(0x01)
	.dwattr DW$86, DW_AT_external(0x01)

DW$87	.dwtag  DW_TAG_subprogram, DW_AT_name("MANModules"), DW_AT_symbol_name("_MANModules")
	.dwattr DW$87, DW_AT_type(*DW$T$10)
	.dwattr DW$87, DW_AT_declaration(0x01)
	.dwattr DW$87, DW_AT_external(0x01)

DW$88	.dwtag  DW_TAG_subprogram, DW_AT_name("UpdateNonVolSafeCheck"), DW_AT_symbol_name("_UpdateNonVolSafeCheck")
	.dwattr DW$88, DW_AT_type(*DW$T$10)
	.dwattr DW$88, DW_AT_declaration(0x01)
	.dwattr DW$88, DW_AT_external(0x01)
DW$89	.dwtag  DW_TAG_variable, DW_AT_name("settings"), DW_AT_symbol_name("_settings")
	.dwattr DW$89, DW_AT_type(*DW$T$102)
	.dwattr DW$89, DW_AT_declaration(0x01)
	.dwattr DW$89, DW_AT_external(0x01)
DW$90	.dwtag  DW_TAG_variable, DW_AT_name("timers"), DW_AT_symbol_name("_timers")
	.dwattr DW$90, DW_AT_type(*DW$T$104)
	.dwattr DW$90, DW_AT_declaration(0x01)
	.dwattr DW$90, DW_AT_external(0x01)
DW$91	.dwtag  DW_TAG_variable, DW_AT_name("allsensors"), DW_AT_symbol_name("_allsensors")
	.dwattr DW$91, DW_AT_type(*DW$T$106)
	.dwattr DW$91, DW_AT_declaration(0x01)
	.dwattr DW$91, DW_AT_external(0x01)
DW$92	.dwtag  DW_TAG_variable, DW_AT_name("stringbuffer"), DW_AT_symbol_name("_stringbuffer")
	.dwattr DW$92, DW_AT_type(*DW$T$132)
	.dwattr DW$92, DW_AT_declaration(0x01)
	.dwattr DW$92, DW_AT_external(0x01)
DW$93	.dwtag  DW_TAG_variable, DW_AT_name("sdsettings"), DW_AT_symbol_name("_sdsettings")
	.dwattr DW$93, DW_AT_type(*DW$T$107)
	.dwattr DW$93, DW_AT_declaration(0x01)
	.dwattr DW$93, DW_AT_external(0x01)
DW$94	.dwtag  DW_TAG_variable, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$94, DW_AT_type(*DW$T$109)
	.dwattr DW$94, DW_AT_declaration(0x01)
	.dwattr DW$94, DW_AT_external(0x01)
DW$95	.dwtag  DW_TAG_variable, DW_AT_name("reprogram"), DW_AT_symbol_name("_reprogram")
	.dwattr DW$95, DW_AT_type(*DW$T$112)
	.dwattr DW$95, DW_AT_declaration(0x01)
	.dwattr DW$95, DW_AT_external(0x01)
	.global	_gpa
_gpa:	.usect	".gparegisters",1,0,0
DW$96	.dwtag  DW_TAG_variable, DW_AT_name("gpa"), DW_AT_symbol_name("_gpa")
	.dwattr DW$96, DW_AT_location[DW_OP_addr _gpa]
	.dwattr DW$96, DW_AT_type(*DW$T$114)
	.dwattr DW$96, DW_AT_external(0x01)
	.global	_gpb
_gpb:	.usect	".gpbregisters",1,0,0
DW$97	.dwtag  DW_TAG_variable, DW_AT_name("gpb"), DW_AT_symbol_name("_gpb")
	.dwattr DW$97, DW_AT_location[DW_OP_addr _gpb]
	.dwattr DW$97, DW_AT_type(*DW$T$117)
	.dwattr DW$97, DW_AT_external(0x01)
	.global	_gpd
_gpd:	.usect	".gpdregisters",1,0,0
DW$98	.dwtag  DW_TAG_variable, DW_AT_name("gpd"), DW_AT_symbol_name("_gpd")
	.dwattr DW$98, DW_AT_location[DW_OP_addr _gpd]
	.dwattr DW$98, DW_AT_type(*DW$T$120)
	.dwattr DW$98, DW_AT_external(0x01)
	.global	_gpe
_gpe:	.usect	".gperegisters",1,0,0
DW$99	.dwtag  DW_TAG_variable, DW_AT_name("gpe"), DW_AT_symbol_name("_gpe")
	.dwattr DW$99, DW_AT_location[DW_OP_addr _gpe]
	.dwattr DW$99, DW_AT_type(*DW$T$124)
	.dwattr DW$99, DW_AT_external(0x01)
	.global	_gpf
_gpf:	.usect	".gpfregisters",1,0,0
DW$100	.dwtag  DW_TAG_variable, DW_AT_name("gpf"), DW_AT_symbol_name("_gpf")
	.dwattr DW$100, DW_AT_location[DW_OP_addr _gpf]
	.dwattr DW$100, DW_AT_type(*DW$T$127)
	.dwattr DW$100, DW_AT_external(0x01)
	.global	_gpg
_gpg:	.usect	".gpgregisters",1,0,0
DW$101	.dwtag  DW_TAG_variable, DW_AT_name("gpg"), DW_AT_symbol_name("_gpg")
	.dwattr DW$101, DW_AT_location[DW_OP_addr _gpg]
	.dwattr DW$101, DW_AT_type(*DW$T$130)
	.dwattr DW$101, DW_AT_external(0x01)
_WhatIsrActive:	.usect	".ebss",1,1,0
DW$102	.dwtag  DW_TAG_variable, DW_AT_name("WhatIsrActive"), DW_AT_symbol_name("_WhatIsrActive")
	.dwattr DW$102, DW_AT_type(*DW$T$136)
	.dwattr DW$102, DW_AT_location[DW_OP_addr _WhatIsrActive]
_Isr13:	.usect	".ebss",2,1,1
DW$103	.dwtag  DW_TAG_variable, DW_AT_name("Isr13"), DW_AT_symbol_name("_Isr13")
	.dwattr DW$103, DW_AT_type(*DW$T$100)
	.dwattr DW$103, DW_AT_location[DW_OP_addr _Isr13]
_Isr14:	.usect	".ebss",2,1,1
DW$104	.dwtag  DW_TAG_variable, DW_AT_name("Isr14"), DW_AT_symbol_name("_Isr14")
	.dwattr DW$104, DW_AT_type(*DW$T$100)
	.dwattr DW$104, DW_AT_location[DW_OP_addr _Isr14]
;	C:\CCStudio_v3.3\C2000\cgtools\bin\opt2000.exe C:\Users\Andrew\AppData\Local\Temp\TI6402 C:\Users\Andrew\AppData\Local\Temp\TI6404 
;	C:\CCStudio_v3.3\C2000\cgtools\bin\ac2000.exe -q -D_INLINE -DLARGE_MODEL -IC:/CCStudio_v3.3/C2000/xdais/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/bios/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/rtdx/include/c2000 -IC:/CCStudio_v3.3/C2000/cgtools/include --version=28 --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\Andrew\AppData\Local\Temp\TI6402 --template_info_file C:\Users\Andrew\AppData\Local\Temp\TI6406 --object_file 
	.sect	".text"
	.global	_main

DW$105	.dwtag  DW_TAG_subprogram, DW_AT_name("main"), DW_AT_symbol_name("_main")
	.dwattr DW$105, DW_AT_low_pc(_main)
	.dwattr DW$105, DW_AT_high_pc(0x00)
	.dwattr DW$105, DW_AT_begin_file("core.c")
	.dwattr DW$105, DW_AT_begin_line(0x4a)
	.dwattr DW$105, DW_AT_begin_column(0x05)
	.dwattr DW$105, DW_AT_frame_base[DW_OP_breg20 -40]
	.dwattr DW$105, DW_AT_skeletal(0x01)
	.dwpsn	"core.c",75,1

;***************************************************************
;* FNAME: _main                         FR SIZE:  38           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter, 31 Auto,  2 SOE     *
;***************************************************************

_main:
        MOVL      *SP++,XAR3
        ADDB      SP,#36
        MOVZ      AR4,SP                ; |80| 
        MOVB      ACC,#30
        MOVB      XAR5,#0
        MOV       *-SP[5],#1            ; |76| 
        SUBB      XAR4,#35              ; |80| 
        LCR       #_memset              ; |80| 
        ; call occurs [#_memset] ; |80| 
        MOVW      DP,#_settings+20
        MOV       @_settings+20,#1      ; |82| 
        LCR       #_SetupPIEVectors     ; |83| 
        ; call occurs [#_SetupPIEVectors] ; |83| 
        LCR       #_InternalRamSetup    ; |84| 
        ; call occurs [#_InternalRamSetup] ; |84| 
        LCR       #_FlashSetup          ; |85| 
        ; call occurs [#_FlashSetup] ; |85| 
        LCR       #_TimingSetup         ; |86| 
        ; call occurs [#_TimingSetup] ; |86| 
        LCR       #_SetupInterruptsandTimers ; |87| 
        ; call occurs [#_SetupInterruptsandTimers] ; |87| 
        LCR       #_Init485Drivers      ; |88| 
        ; call occurs [#_Init485Drivers] ; |88| 
        LCR       #_CalLEDSetup         ; |91| 
        ; call occurs [#_CalLEDSetup] ; |91| 
        LCR       #_InitOP              ; |92| 
        ; call occurs [#_InitOP] ; |92| 
        LCR       #_InitOffboardGPIO    ; |94| 
        ; call occurs [#_InitOffboardGPIO] ; |94| 
        LCR       #_SetupConstantCurrentMux ; |95| 
        ; call occurs [#_SetupConstantCurrentMux] ; |95| 
        LCR       #_InitSPI             ; |96| 
        ; call occurs [#_InitSPI] ; |96| 
        LCR       #_SerialPortASetup    ; |97| 
        ; call occurs [#_SerialPortASetup] ; |97| 
        LCR       #_SerialPortBSetup    ; |98| 
        ; call occurs [#_SerialPortBSetup] ; |98| 
        LCR       #_WIO485Init          ; |100| 
        ; call occurs [#_WIO485Init] ; |100| 
        LCR       #_Slave485Init        ; |101| 
        ; call occurs [#_Slave485Init] ; |101| 
        MOVW      DP,#_timers+66
        MOV       @_timers+66,#2000     ; |102| 
        NOP
        MOVW      DP,#_timers+66
        MOV       AL,@_timers+66        ; |103| 
        BF        L2,EQ                 ; |103| 
        ; branchcc occurs ; |103| 
L1:    
DW$L$_main$3$B:
	.dwpsn	"core.c",103,0
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |103| 
        MOVW      DP,#_timers+66
        MOV       AL,@_timers+66        ; |103| 
        BF        L1,NEQ                ; |103| 
        ; branchcc occurs ; |103| 
DW$L$_main$3$E:
L2:    
        LCR       #_ReprogramStartupInit ; |108| 
        ; call occurs [#_ReprogramStartupInit] ; |108| 
        LCR       #_ReadClockData       ; |110| 
        ; call occurs [#_ReadClockData] ; |110| 
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |111| 
        LCR       #_InitStatus1Flags    ; |112| 
        ; call occurs [#_InitStatus1Flags] ; |112| 
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |113| 
        LCR       #_InitSensors         ; |114| 
        ; call occurs [#_InitSensors] ; |114| 
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |115| 
        LCR       #_AllSensorInit       ; |116| 
        ; call occurs [#_AllSensorInit] ; |116| 
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |117| 
        LCR       #_InitSystemAlarms    ; |118| 
        ; call occurs [#_InitSystemAlarms] ; |118| 
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |119| 
        LCR       #_FunctionEnabledSetup ; |120| 
        ; call occurs [#_FunctionEnabledSetup] ; |120| 
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |121| 
        LCR       #_ReadAllFromEEPROM   ; |123| 
        ; call occurs [#_ReadAllFromEEPROM] ; |123| 
        LCR       #_ReadClockData       ; |124| 
        ; call occurs [#_ReadClockData] ; |124| 
        LCR       #_SetupScaling        ; |125| 
        ; call occurs [#_SetupScaling] ; |125| 
        LCR       #_MasterModeSwitch    ; |126| 
        ; call occurs [#_MasterModeSwitch] ; |126| 
        MOVW      DP,#_timers+43
        MOV       AL,@_timers+43        ; |127| 
        BF        L4,EQ                 ; |127| 
        ; branchcc occurs ; |127| 
L3:    
DW$L$_main$6$B:
	.dwpsn	"core.c",127,0
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |127| 
        MOVW      DP,#_timers+43
        MOV       AL,@_timers+43        ; |127| 
        BF        L3,NEQ                ; |127| 
        ; branchcc occurs ; |127| 
DW$L$_main$6$E:
L4:    
        LCR       #_MasterModeSwitch    ; |128| 
        ; call occurs [#_MasterModeSwitch] ; |128| 
        LCR       #_SerialPortCSetup    ; |130| 
        ; call occurs [#_SerialPortCSetup] ; |130| 
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |131| 
        LCR       #_SerialPortDSetup    ; |132| 
        ; call occurs [#_SerialPortDSetup] ; |132| 
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |133| 
        LCR       #_SetupCLI            ; |134| 
        ; call occurs [#_SetupCLI] ; |134| 
        MOVW      DP,#_settings+17
        MOV       AL,@_settings+17      ; |136| 
        CMPB      AL,#1                 ; |136| 
        BF        L5,EQ                 ; |136| 
        ; branchcc occurs ; |136| 
        LCR       #_InitScalingFactor   ; |212| 
        ; call occurs [#_InitScalingFactor] ; |212| 
        LCR       #_ClearStatusFlagsforSlave ; |213| 
        ; call occurs [#_ClearStatusFlagsforSlave] ; |213| 
        LCR       #_SlaveDefaultNotSet  ; |214| 
        ; call occurs [#_SlaveDefaultNotSet] ; |214| 
        BF        L6,UNC                ; |214| 
        ; branch occurs ; |214| 
L5:    
        MOVL      XAR4,#FSL1            ; |139| 
        MOVL      XAR3,#_stringbuffer   ; |139| 
        MOVL      *-SP[2],XAR4          ; |139| 
        MOVL      XAR4,XAR3             ; |139| 
        MOVW      DP,#_sdsettings
        MOV       @_sdsettings,#1       ; |138| 
        LCR       #_sprintf             ; |139| 
        ; call occurs [#_sprintf] ; |139| 
        MOVL      XAR4,XAR3             ; |140| 
        LCR       #_DebugStringOut      ; |140| 
        ; call occurs [#_DebugStringOut] ; |140| 
        LCR       #_ReadAllSensorStructfromNVMEM ; |142| 
        ; call occurs [#_ReadAllSensorStructfromNVMEM] ; |142| 
        MOVW      DP,#_allsensors
        MOVL      XAR4,#FSL2            ; |143| 
        MOV       AL,@_allsensors       ; |143| 
        MOVL      *-SP[2],XAR4          ; |143| 
        MOVW      DP,#_allsensors+2
        MOV       *-SP[3],AL            ; |143| 
        MOVL      XAR4,XAR3             ; |143| 
        MOV       AL,@_allsensors+2     ; |143| 
        MOV       *-SP[4],AL            ; |143| 
        LCR       #_sprintf             ; |143| 
        ; call occurs [#_sprintf] ; |143| 
        MOVL      XAR4,XAR3             ; |144| 
        LCR       #_DebugStringOut      ; |144| 
        ; call occurs [#_DebugStringOut] ; |144| 
        LCR       #_ReadConfigStructfromNVMEM ; |146| 
        ; call occurs [#_ReadConfigStructfromNVMEM] ; |146| 
        LCR       #_ReadClockData       ; |149| 
        ; call occurs [#_ReadClockData] ; |149| 
        LCR       #_InitMAN             ; |152| 
        ; call occurs [#_InitMAN] ; |152| 
        MOVL      XAR4,#FSL3            ; |154| 
        MOVL      *-SP[2],XAR4          ; |154| 
        MOVL      XAR4,XAR3             ; |154| 
        LCR       #_sprintf             ; |154| 
        ; call occurs [#_sprintf] ; |154| 
        MOVL      XAR4,XAR3             ; |155| 
        LCR       #_DebugStringOut      ; |155| 
        ; call occurs [#_DebugStringOut] ; |155| 
        LCR       #_LoadFRAMpowerup     ; |157| 
        ; call occurs [#_LoadFRAMpowerup] ; |157| 
        LCR       #_ClearBitEventList   ; |158| 
        ; call occurs [#_ClearBitEventList] ; |158| 
        LCR       #_StartupDelay        ; |160| 
        ; call occurs [#_StartupDelay] ; |160| 
        MOVL      XAR4,#FSL4            ; |161| 
        MOVL      *-SP[2],XAR4          ; |161| 
        MOVL      XAR4,XAR3             ; |161| 
        LCR       #_sprintf             ; |161| 
        ; call occurs [#_sprintf] ; |161| 
        MOVL      XAR4,XAR3             ; |162| 
        LCR       #_DebugStringOut      ; |162| 
        ; call occurs [#_DebugStringOut] ; |162| 
        LCR       #_SDCardInitialise    ; |163| 
        ; call occurs [#_SDCardInitialise] ; |163| 
        MOVL      XAR4,#FSL5            ; |164| 
        MOVL      *-SP[2],XAR4          ; |164| 
        MOVL      XAR4,XAR3             ; |164| 
        LCR       #_sprintf             ; |164| 
        ; call occurs [#_sprintf] ; |164| 
        MOVL      XAR4,XAR3             ; |165| 
        LCR       #_DebugStringOut      ; |165| 
        ; call occurs [#_DebugStringOut] ; |165| 
        LCR       #_LoadFRAMfromSD      ; |168| 
        ; call occurs [#_LoadFRAMfromSD] ; |168| 
        LCR       #_ClearEventCodeListArea ; |169| 
        ; call occurs [#_ClearEventCodeListArea] ; |169| 
        MOVW      DP,#_allsensors
        MOVL      XAR4,#FSL2            ; |171| 
        MOV       AL,@_allsensors       ; |171| 
        MOVL      *-SP[2],XAR4          ; |171| 
        MOVW      DP,#_allsensors+2
        MOV       *-SP[3],AL            ; |171| 
        MOVL      XAR4,XAR3             ; |171| 
        MOV       AL,@_allsensors+2     ; |171| 
        MOV       *-SP[4],AL            ; |171| 
        LCR       #_sprintf             ; |171| 
        ; call occurs [#_sprintf] ; |171| 
        MOVL      XAR4,XAR3             ; |172| 
        LCR       #_DebugStringOut      ; |172| 
        ; call occurs [#_DebugStringOut] ; |172| 
        MOVL      XAR4,#FSL6            ; |174| 
        MOVL      *-SP[2],XAR4          ; |174| 
        MOVL      XAR4,XAR3             ; |174| 
        LCR       #_sprintf             ; |174| 
        ; call occurs [#_sprintf] ; |174| 
        MOVL      XAR4,XAR3             ; |175| 
        LCR       #_DebugStringOut      ; |175| 
        ; call occurs [#_DebugStringOut] ; |175| 
        LCR       #_PowerUpCalInit      ; |181| 
        ; call occurs [#_PowerUpCalInit] ; |181| 
        LCR       #_WIOInit             ; |182| 
        ; call occurs [#_WIOInit] ; |182| 
        MOVL      XAR4,#FSL7            ; |183| 
        MOVL      *-SP[2],XAR4          ; |183| 
        MOVL      XAR4,XAR3             ; |183| 
        LCR       #_sprintf             ; |183| 
        ; call occurs [#_sprintf] ; |183| 
        MOVL      XAR4,XAR3             ; |184| 
        LCR       #_DebugStringOut      ; |184| 
        ; call occurs [#_DebugStringOut] ; |184| 
        LCR       #_ReadClockData       ; |187| 
        ; call occurs [#_ReadClockData] ; |187| 
        LCR       #_ClockProcessing     ; |188| 
        ; call occurs [#_ClockProcessing] ; |188| 
        LCR       #_NominalSpeedUpdate  ; |190| 
        ; call occurs [#_NominalSpeedUpdate] ; |190| 
        LCR       #_StartupRefReload    ; |191| 
        ; call occurs [#_StartupRefReload] ; |191| 
        LCR       #_SDCalcEventLogID    ; |192| 
        ; call occurs [#_SDCalcEventLogID] ; |192| 
        LCR       #_SetAllEventMsgs     ; |194| 
        ; call occurs [#_SetAllEventMsgs] ; |194| 
        LCR       #_ReadClockData       ; |198| 
        ; call occurs [#_ReadClockData] ; |198| 
        LCR       #_ClockProcessing     ; |199| 
        ; call occurs [#_ClockProcessing] ; |199| 
        MOVL      XAR4,#FSL8            ; |200| 
        MOVL      *-SP[2],XAR4          ; |200| 
        MOVL      XAR4,XAR3             ; |200| 
        LCR       #_sprintf             ; |200| 
        ; call occurs [#_sprintf] ; |200| 
        MOVL      XAR4,XAR3             ; |201| 
        LCR       #_DebugStringOut      ; |201| 
        ; call occurs [#_DebugStringOut] ; |201| 
        MOVB      AL,#0
        LCR       #_SetBitEvent         ; |203| 
        ; call occurs [#_SetBitEvent] ; |203| 
        MOVL      XAR4,#FSL9            ; |206| 
        MOVL      *-SP[2],XAR4          ; |206| 
        MOVL      XAR4,XAR3             ; |206| 
        LCR       #_sprintf             ; |206| 
        ; call occurs [#_sprintf] ; |206| 
        MOVL      XAR4,XAR3             ; |207| 
        LCR       #_DebugStringOut      ; |207| 
        ; call occurs [#_DebugStringOut] ; |207| 
L6:    
        LCR       #_ResetLoopCheck      ; |217| 
        ; call occurs [#_ResetLoopCheck] ; |217| 
        LCR       #_ResetCommsCheck     ; |218| 
        ; call occurs [#_ResetCommsCheck] ; |218| 
        LCR       #_InitADC             ; |221| 
        ; call occurs [#_InitADC] ; |221| 
        MOVW      DP,#_settings+20
        MOV       @_settings+20,#0      ; |223| 
        MOVW      DP,#_timers+66
        MOVB      AL,#0
        MOV       @_timers+66,#1000     ; |224| 
        LCR       #_SetWIOAlarmMask     ; |225| 
        ; call occurs [#_SetWIOAlarmMask] ; |225| 
        MOV       AL,*-SP[5]            ; |227| 
        BF        L11,EQ                ; |227| 
        ; branchcc occurs ; |227| 
L7:    
DW$L$_main$14$B:
	.dwpsn	"core.c",228,0
        LCR       #_LoopCheck           ; |229| 
        ; call occurs [#_LoopCheck] ; |229| 
        LCR       #_MasterModeSwitch    ; |230| 
        ; call occurs [#_MasterModeSwitch] ; |230| 
        LCR       #_TimerCheck          ; |231| 
        ; call occurs [#_TimerCheck] ; |231| 
        LCR       #_RPMCalc             ; |232| 
        ; call occurs [#_RPMCalc] ; |232| 
        LCR       #_ReadClockData       ; |233| 
        ; call occurs [#_ReadClockData] ; |233| 
        LCR       #_Slave485Modbus      ; |235| 
        ; call occurs [#_Slave485Modbus] ; |235| 
        MOV       AL,#13107
        MOVW      DP,#_reprogram+8
        MOV       AH,#4660
        CMPL      ACC,@_reprogram+8     ; |236| 
        BF        L8,EQ                 ; |236| 
        ; branchcc occurs ; |236| 
DW$L$_main$14$E:
DW$L$_main$15$B:
        LCR       #_AnalogueInputScaleAllChannels ; |238| 
        ; call occurs [#_AnalogueInputScaleAllChannels] ; |238| 
        LCR       #_clearCommsErrors    ; |240| 
        ; call occurs [#_clearCommsErrors] ; |240| 
        LCR       #_bitEventIncrement   ; |241| 
        ; call occurs [#_bitEventIncrement] ; |241| 
DW$L$_main$15$E:
L8:    
DW$L$_main$16$B:
        LCR       #_PcCLI               ; |243| 
        ; call occurs [#_PcCLI] ; |243| 
        MOVW      DP,#_settings+17
        MOV       AL,@_settings+17      ; |245| 
        CMPB      AL,#1                 ; |245| 
        BF        L9,NEQ                ; |245| 
        ; branchcc occurs ; |245| 
DW$L$_main$16$E:
DW$L$_main$17$B:
        LCR       #_PCModBus            ; |248| 
        ; call occurs [#_PCModBus] ; |248| 
        LCR       #_ClockProcessing     ; |249| 
        ; call occurs [#_ClockProcessing] ; |249| 
        LCR       #_ProcessDigitalOP    ; |250| 
        ; call occurs [#_ProcessDigitalOP] ; |250| 
        MOV       AL,#13107
        MOVW      DP,#_reprogram+8
        MOV       AH,#4660
        CMPL      ACC,@_reprogram+8     ; |252| 
        BF        L10,EQ                ; |252| 
        ; branchcc occurs ; |252| 
DW$L$_main$17$E:
DW$L$_main$18$B:
        LCR       #_WaterinOil          ; |254| 
        ; call occurs [#_WaterinOil] ; |254| 
        LCR       #_WIOChecks           ; |255| 
        ; call occurs [#_WIOChecks] ; |255| 
        LCR       #_InitCal             ; |256| 
        ; call occurs [#_InitCal] ; |256| 
        LCR       #_MANModules          ; |257| 
        ; call occurs [#_MANModules] ; |257| 
        LCR       #_ProcessSDCard       ; |258| 
        ; call occurs [#_ProcessSDCard] ; |258| 
        LCR       #_SDCardLogUpdate     ; |259| 
        ; call occurs [#_SDCardLogUpdate] ; |259| 
        LCR       #_RunTimeMinUpdate    ; |260| 
        ; call occurs [#_RunTimeMinUpdate] ; |260| 
        LCR       #_UpdateNonVolSafeCheck ; |261| 
        ; call occurs [#_UpdateNonVolSafeCheck] ; |261| 
        LCR       #_SDCardUpdate        ; |262| 
        ; call occurs [#_SDCardUpdate] ; |262| 
        LCR       #_Fram1ChipCheck      ; |263| 
        ; call occurs [#_Fram1ChipCheck] ; |263| 
        LCR       #_BearingStatus       ; |264| 
        ; call occurs [#_BearingStatus] ; |264| 
DW$L$_main$18$E:
DW$L$_main$19$B:
        LCR       #_FirmwareComparison  ; |265| 
        ; call occurs [#_FirmwareComparison] ; |265| 
DW$L$_main$19$E:
L9:    
DW$L$_main$20$B:
        MOV       AL,#13107
        MOVW      DP,#_reprogram+8
        MOV       AH,#4660
        CMPL      ACC,@_reprogram+8     ; |268| 
        BF        L10,EQ                ; |268| 
        ; branchcc occurs ; |268| 
DW$L$_main$20$E:
DW$L$_main$21$B:
        LCR       #_SystemChecks        ; |270| 
        ; call occurs [#_SystemChecks] ; |270| 
DW$L$_main$21$E:
L10:    
DW$L$_main$22$B:
        LCR       #_ReprogrammingCalls  ; |274| 
        ; call occurs [#_ReprogrammingCalls] ; |274| 
        MOVW      DP,#_settings
        MOV       AL,*-SP[5]            ; |277| 
        MOV       @_settings,#1         ; |276| 
	.dwpsn	"core.c",277,0
        BF        L7,NEQ                ; |277| 
        ; branchcc occurs ; |277| 
DW$L$_main$22$E:
L11:    
        MOVB      AL,#0
        SUBB      SP,#36                ; |278| 
        MOVL      XAR3,*--SP            ; |278| 
	.dwpsn	"core.c",279,1
        LRETR
        ; return occurs

DW$106	.dwtag  DW_TAG_loop
	.dwattr DW$106, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\core.asm:L7:1:1471518969")
	.dwattr DW$106, DW_AT_begin_file("core.c")
	.dwattr DW$106, DW_AT_begin_line(0xe3)
	.dwattr DW$106, DW_AT_end_line(0x115)
DW$107	.dwtag  DW_TAG_loop_range
	.dwattr DW$107, DW_AT_low_pc(DW$L$_main$14$B)
	.dwattr DW$107, DW_AT_high_pc(DW$L$_main$14$E)
DW$108	.dwtag  DW_TAG_loop_range
	.dwattr DW$108, DW_AT_low_pc(DW$L$_main$18$B)
	.dwattr DW$108, DW_AT_high_pc(DW$L$_main$18$E)
DW$109	.dwtag  DW_TAG_loop_range
	.dwattr DW$109, DW_AT_low_pc(DW$L$_main$19$B)
	.dwattr DW$109, DW_AT_high_pc(DW$L$_main$19$E)
DW$110	.dwtag  DW_TAG_loop_range
	.dwattr DW$110, DW_AT_low_pc(DW$L$_main$15$B)
	.dwattr DW$110, DW_AT_high_pc(DW$L$_main$15$E)
DW$111	.dwtag  DW_TAG_loop_range
	.dwattr DW$111, DW_AT_low_pc(DW$L$_main$16$B)
	.dwattr DW$111, DW_AT_high_pc(DW$L$_main$16$E)
DW$112	.dwtag  DW_TAG_loop_range
	.dwattr DW$112, DW_AT_low_pc(DW$L$_main$17$B)
	.dwattr DW$112, DW_AT_high_pc(DW$L$_main$17$E)
DW$113	.dwtag  DW_TAG_loop_range
	.dwattr DW$113, DW_AT_low_pc(DW$L$_main$20$B)
	.dwattr DW$113, DW_AT_high_pc(DW$L$_main$20$E)
DW$114	.dwtag  DW_TAG_loop_range
	.dwattr DW$114, DW_AT_low_pc(DW$L$_main$21$B)
	.dwattr DW$114, DW_AT_high_pc(DW$L$_main$21$E)
DW$115	.dwtag  DW_TAG_loop_range
	.dwattr DW$115, DW_AT_low_pc(DW$L$_main$22$B)
	.dwattr DW$115, DW_AT_high_pc(DW$L$_main$22$E)
	.dwendtag DW$106


DW$116	.dwtag  DW_TAG_loop
	.dwattr DW$116, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\core.asm:L3:1:1471518969")
	.dwattr DW$116, DW_AT_begin_file("core.c")
	.dwattr DW$116, DW_AT_begin_line(0x7f)
	.dwattr DW$116, DW_AT_end_line(0x7f)
DW$117	.dwtag  DW_TAG_loop_range
	.dwattr DW$117, DW_AT_low_pc(DW$L$_main$6$B)
	.dwattr DW$117, DW_AT_high_pc(DW$L$_main$6$E)
	.dwendtag DW$116


DW$118	.dwtag  DW_TAG_loop
	.dwattr DW$118, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\core.asm:L1:1:1471518969")
	.dwattr DW$118, DW_AT_begin_file("core.c")
	.dwattr DW$118, DW_AT_begin_line(0x67)
	.dwattr DW$118, DW_AT_end_line(0x67)
DW$119	.dwtag  DW_TAG_loop_range
	.dwattr DW$119, DW_AT_low_pc(DW$L$_main$3$B)
	.dwattr DW$119, DW_AT_high_pc(DW$L$_main$3$E)
	.dwendtag DW$118

	.dwattr DW$105, DW_AT_end_file("core.c")
	.dwattr DW$105, DW_AT_end_line(0x117)
	.dwattr DW$105, DW_AT_end_column(0x01)
	.dwendtag DW$105

	.sect	".text"
	.global	_StartupDelay

DW$120	.dwtag  DW_TAG_subprogram, DW_AT_name("StartupDelay"), DW_AT_symbol_name("_StartupDelay")
	.dwattr DW$120, DW_AT_low_pc(_StartupDelay)
	.dwattr DW$120, DW_AT_high_pc(0x00)
	.dwattr DW$120, DW_AT_begin_file("core.c")
	.dwattr DW$120, DW_AT_begin_line(0x11b)
	.dwattr DW$120, DW_AT_begin_column(0x06)
	.dwattr DW$120, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$120, DW_AT_skeletal(0x01)
	.dwpsn	"core.c",284,1

;***************************************************************
;* FNAME: _StartupDelay                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_StartupDelay:
        MOVW      DP,#_timers+1
        MOV       @_timers+1,#100       ; |285| 
        NOP
        MOVW      DP,#_timers+1
        MOV       AL,@_timers+1         ; |286| 
        BF        L13,EQ                ; |286| 
        ; branchcc occurs ; |286| 
L12:    
DW$L$_StartupDelay$2$B:
	.dwpsn	"core.c",286,0
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |286| 
        MOVW      DP,#_timers+1
        MOV       AL,@_timers+1         ; |286| 
        BF        L12,NEQ               ; |286| 
        ; branchcc occurs ; |286| 
DW$L$_StartupDelay$2$E:
L13:    
	.dwpsn	"core.c",287,1
        LRETR
        ; return occurs

DW$121	.dwtag  DW_TAG_loop
	.dwattr DW$121, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\core.asm:L12:1:1471518969")
	.dwattr DW$121, DW_AT_begin_file("core.c")
	.dwattr DW$121, DW_AT_begin_line(0x11e)
	.dwattr DW$121, DW_AT_end_line(0x11e)
DW$122	.dwtag  DW_TAG_loop_range
	.dwattr DW$122, DW_AT_low_pc(DW$L$_StartupDelay$2$B)
	.dwattr DW$122, DW_AT_high_pc(DW$L$_StartupDelay$2$E)
	.dwendtag DW$121

	.dwattr DW$120, DW_AT_end_file("core.c")
	.dwattr DW$120, DW_AT_end_line(0x11f)
	.dwattr DW$120, DW_AT_end_column(0x01)
	.dwendtag DW$120

	.sect	".text"
	.global	_TimerCheck

DW$123	.dwtag  DW_TAG_subprogram, DW_AT_name("TimerCheck"), DW_AT_symbol_name("_TimerCheck")
	.dwattr DW$123, DW_AT_low_pc(_TimerCheck)
	.dwattr DW$123, DW_AT_high_pc(0x00)
	.dwattr DW$123, DW_AT_begin_file("core.c")
	.dwattr DW$123, DW_AT_begin_line(0x122)
	.dwattr DW$123, DW_AT_begin_column(0x06)
	.dwattr DW$123, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$123, DW_AT_skeletal(0x01)
	.dwpsn	"core.c",291,1

;***************************************************************
;* FNAME: _TimerCheck                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_TimerCheck:
        MOVW      DP,#_timers
        MOV       AL,@_timers           ; |295| 
        BF        L16,EQ                ; |295| 
        ; branchcc occurs ; |295| 
        MOVW      DP,#_timers+8
        MOV       AL,@_timers+8         ; |298| 
        BF        L15,NEQ               ; |298| 
        ; branchcc occurs ; |298| 
        MOVW      DP,#_settings+1
        MOV       AL,@_settings+1       ; |298| 
        BF        L15,EQ                ; |298| 
        ; branchcc occurs ; |298| 
        MOVW      DP,#_timers+8
        CMPB      AL,#1                 ; |301| 
        MOV       @_timers+8,#100       ; |300| 
        BF        L14,EQ                ; |301| 
        ; branchcc occurs ; |301| 
        MOVW      DP,#_settings+1
        MOV       @_settings+1,#1       ; |310| 
        MOVW      DP,#_gpd
        AND       @_gpd,#0xfffd         ; |311| 
        BF        L15,UNC               ; |311| 
        ; branch occurs ; |311| 
L14:    
        MOVW      DP,#_settings+1
        MOV       @_settings+1,#2       ; |304| 
        MOVW      DP,#_gpd
        OR        @_gpd,#0x0002         ; |305| 
L15:    
        MOVW      DP,#_timers
        MOV       @_timers,#0           ; |314| 
        NOP
        NOP
L16:    
	.dwpsn	"core.c",317,1
        LRETR
        ; return occurs
	.dwattr DW$123, DW_AT_end_file("core.c")
	.dwattr DW$123, DW_AT_end_line(0x13d)
	.dwattr DW$123, DW_AT_end_column(0x01)
	.dwendtag DW$123

	.sect	".text"
	.global	_PerformIsr1

DW$124	.dwtag  DW_TAG_subprogram, DW_AT_name("PerformIsr1"), DW_AT_symbol_name("_PerformIsr1")
	.dwattr DW$124, DW_AT_low_pc(_PerformIsr1)
	.dwattr DW$124, DW_AT_high_pc(0x00)
	.dwattr DW$124, DW_AT_begin_file("core.c")
	.dwattr DW$124, DW_AT_begin_line(0x147)
	.dwattr DW$124, DW_AT_begin_column(0x06)
	.dwattr DW$124, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$124, DW_AT_skeletal(0x01)
	.dwpsn	"core.c",328,1

;***************************************************************
;* FNAME: _PerformIsr1                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_PerformIsr1:
        MOVW      DP,#_timers
        MOV       @_timers,#1           ; |330| 
        NOP
        MOVW      DP,#_timers+66
        MOV       AL,@_timers+66        ; |331| 
        BF        L17,EQ                ; |331| 
        ; branchcc occurs ; |331| 
        MOVW      DP,#_timers+66
        DEC       @_timers+66           ; |331| 
L17:    
        MOVW      DP,#_timers+1
        MOV       AL,@_timers+1         ; |332| 
        BF        L18,EQ                ; |332| 
        ; branchcc occurs ; |332| 
        MOVW      DP,#_timers+1
        DEC       @_timers+1            ; |332| 
L18:    
        MOVW      DP,#_timers+7
        MOV       AL,@_timers+7         ; |333| 
        BF        L19,EQ                ; |333| 
        ; branchcc occurs ; |333| 
        MOVW      DP,#_timers+7
        DEC       @_timers+7            ; |333| 
L19:    
        MOVW      DP,#_timers+8
        MOV       AL,@_timers+8         ; |334| 
        BF        L20,EQ                ; |334| 
        ; branchcc occurs ; |334| 
        MOVW      DP,#_timers+8
        DEC       @_timers+8            ; |334| 
L20:    
        MOVW      DP,#_timers+9
        MOV       AL,@_timers+9         ; |335| 
        BF        L21,EQ                ; |335| 
        ; branchcc occurs ; |335| 
        MOVW      DP,#_timers+9
        DEC       @_timers+9            ; |335| 
L21:    
        MOVW      DP,#_timers+38
        MOV       AL,@_timers+38        ; |336| 
        BF        L22,EQ                ; |336| 
        ; branchcc occurs ; |336| 
        MOVW      DP,#_timers+38
        DEC       @_timers+38           ; |336| 
L22:    
        MOVW      DP,#_timers+39
        MOV       AL,@_timers+39        ; |337| 
        BF        L23,EQ                ; |337| 
        ; branchcc occurs ; |337| 
        MOVW      DP,#_timers+39
        DEC       @_timers+39           ; |337| 
L23:    
        MOVW      DP,#_timers+57
        MOV       AL,@_timers+57        ; |339| 
        BF        L24,EQ                ; |339| 
        ; branchcc occurs ; |339| 
        MOVW      DP,#_timers+57
        DEC       @_timers+57           ; |339| 
L24:    
        MOVW      DP,#_timers+2
        MOV       AL,@_timers+2         ; |340| 
        BF        L25,EQ                ; |340| 
        ; branchcc occurs ; |340| 
        MOVW      DP,#_timers+2
        DEC       @_timers+2            ; |340| 
L25:    
        MOVW      DP,#_timers+3
        MOV       AL,@_timers+3         ; |342| 
        BF        L26,EQ                ; |342| 
        ; branchcc occurs ; |342| 
        MOVW      DP,#_timers+3
        DEC       @_timers+3            ; |342| 
L26:    
        MOVW      DP,#_timers+40
        MOV       AL,@_timers+40        ; |343| 
        BF        L27,EQ                ; |343| 
        ; branchcc occurs ; |343| 
        MOVW      DP,#_timers+40
        DEC       @_timers+40           ; |343| 
L27:    
        MOVW      DP,#_timers+44
        MOV       AL,@_timers+44        ; |344| 
        BF        L28,EQ                ; |344| 
        ; branchcc occurs ; |344| 
        MOVW      DP,#_timers+44
        DEC       @_timers+44           ; |344| 
L28:    
        MOVW      DP,#_timers+62
        MOV       AL,@_timers+62        ; |345| 
        BF        L29,EQ                ; |345| 
        ; branchcc occurs ; |345| 
        MOVW      DP,#_timers+62
        DEC       @_timers+62           ; |345| 
L29:    
        MOVW      DP,#_timers+63
        MOV       AL,@_timers+63        ; |346| 
        BF        L30,EQ                ; |346| 
        ; branchcc occurs ; |346| 
        MOVW      DP,#_timers+63
        DEC       @_timers+63           ; |346| 
L30:    
        MOVW      DP,#_settings+34
        MOV       AL,@_settings+34      ; |350| 
        CMPB      AL,#1                 ; |350| 
        BF        L33,NEQ               ; |350| 
        ; branchcc occurs ; |350| 
        MOVW      DP,#_timers+46
        MOVL      ACC,@_timers+46       ; |352| 
        BF        L31,EQ                ; |352| 
        ; branchcc occurs ; |352| 
        MOVB      ACC,#1
        MOVW      DP,#_timers+46
        SUBL      @_timers+46,ACC       ; |352| 
L31:    
        MOVW      DP,#_timers+48
        MOVL      ACC,@_timers+48       ; |353| 
        BF        L32,EQ                ; |353| 
        ; branchcc occurs ; |353| 
        MOVB      ACC,#1
        MOVW      DP,#_timers+48
        SUBL      @_timers+48,ACC       ; |353| 
L32:    
        MOVW      DP,#_timers+60
        MOVL      ACC,@_timers+60       ; |354| 
        BF        L33,EQ                ; |354| 
        ; branchcc occurs ; |354| 
        MOVB      ACC,#1
        MOVW      DP,#_timers+60
        SUBL      @_timers+60,ACC       ; |354| 
L33:    
        MOVW      DP,#_timers+53
        MOV       AL,@_timers+53        ; |357| 
        BF        L34,EQ                ; |357| 
        ; branchcc occurs ; |357| 
        MOVW      DP,#_timers+53
        DEC       @_timers+53           ; |357| 
L34:    
        MOVW      DP,#_timers+74
        MOVL      ACC,@_timers+74       ; |358| 
        BF        L35,EQ                ; |358| 
        ; branchcc occurs ; |358| 
        MOVB      ACC,#1
        MOVW      DP,#_timers+74
        SUBL      @_timers+74,ACC       ; |358| 
L35:    
        MOVW      DP,#_timers+6
        MOV       AL,@_timers+6         ; |360| 
        BF        L36,EQ                ; |360| 
        ; branchcc occurs ; |360| 
        MOVW      DP,#_timers+6
        DEC       @_timers+6            ; |360| 
L36:    
        MOVW      DP,#_timers+5
        MOV       AL,@_timers+5         ; |361| 
        BF        L37,EQ                ; |361| 
        ; branchcc occurs ; |361| 
        MOVW      DP,#_timers+5
        DEC       @_timers+5            ; |361| 
L37:    
        MOVW      DP,#_timers+52
        MOV       AL,@_timers+52        ; |362| 
        BF        L38,EQ                ; |362| 
        ; branchcc occurs ; |362| 
        MOVW      DP,#_timers+52
        DEC       @_timers+52           ; |362| 
L38:    
        MOVW      DP,#_timers+4
        MOV       AL,@_timers+4         ; |363| 
        BF        L39,EQ                ; |363| 
        ; branchcc occurs ; |363| 
        MOVW      DP,#_timers+4
        DEC       @_timers+4            ; |363| 
L39:    
        MOVW      DP,#_timers+42
        MOV       AL,@_timers+42        ; |364| 
        BF        L40,EQ                ; |364| 
        ; branchcc occurs ; |364| 
        MOVW      DP,#_timers+42
        DEC       @_timers+42           ; |364| 
L40:    
        MOVW      DP,#_timers+43
        MOV       AL,@_timers+43        ; |365| 
        BF        L41,EQ                ; |365| 
        ; branchcc occurs ; |365| 
        MOVW      DP,#_timers+43
        DEC       @_timers+43           ; |365| 
L41:    
        MOVW      DP,#_timers+54
        MOV       AL,@_timers+54        ; |366| 
        BF        L42,EQ                ; |366| 
        ; branchcc occurs ; |366| 
        MOVW      DP,#_timers+54
        DEC       @_timers+54           ; |366| 
L42:    
        MOVW      DP,#_timers+55
        MOV       AL,@_timers+55        ; |367| 
        BF        L43,EQ                ; |367| 
        ; branchcc occurs ; |367| 
        MOVW      DP,#_timers+55
        DEC       @_timers+55           ; |367| 
L43:    
        MOVW      DP,#_timers+56
        MOV       AL,@_timers+56        ; |368| 
        BF        L44,EQ                ; |368| 
        ; branchcc occurs ; |368| 
        MOVW      DP,#_timers+56
        DEC       @_timers+56           ; |368| 
L44:    
        MOVW      DP,#_timers+64
        MOV       AL,@_timers+64        ; |369| 
        BF        L45,EQ                ; |369| 
        ; branchcc occurs ; |369| 
        MOVW      DP,#_timers+64
        DEC       @_timers+64           ; |369| 
L45:    
        MOVW      DP,#_timers+58
        MOV       AL,@_timers+58        ; |370| 
        BF        L46,EQ                ; |370| 
        ; branchcc occurs ; |370| 
        MOVW      DP,#_timers+58
        DEC       @_timers+58           ; |370| 
L46:    
        MOVW      DP,#_timers+50
        MOV       AL,@_timers+50        ; |371| 
        BF        L47,EQ                ; |371| 
        ; branchcc occurs ; |371| 
        MOVW      DP,#_timers+50
        DEC       @_timers+50           ; |371| 
L47:    
        MOVW      DP,#_timers+51
        MOV       AL,@_timers+51        ; |372| 
        BF        L48,EQ                ; |372| 
        ; branchcc occurs ; |372| 
        MOVW      DP,#_timers+51
        DEC       @_timers+51           ; |372| 
L48:    
        MOVW      DP,#_timers+65
        MOV       AL,@_timers+65        ; |373| 
        BF        L49,EQ                ; |373| 
        ; branchcc occurs ; |373| 
        MOVW      DP,#_timers+65
        DEC       @_timers+65           ; |373| 
L49:    
        MOVW      DP,#_timers+67
        MOV       AL,@_timers+67        ; |374| 
        BF        L50,EQ                ; |374| 
        ; branchcc occurs ; |374| 
        MOVW      DP,#_timers+67
        DEC       @_timers+67           ; |374| 
L50:    
        MOVW      DP,#_timers+70
        MOV       AL,@_timers+70        ; |375| 
        BF        L51,EQ                ; |375| 
        ; branchcc occurs ; |375| 
        MOVW      DP,#_timers+70
        DEC       @_timers+70           ; |375| 
L51:    
        MOVW      DP,#_timers+71
        MOV       AL,@_timers+71        ; |376| 
        BF        L52,EQ                ; |376| 
        ; branchcc occurs ; |376| 
        MOVW      DP,#_timers+71
        DEC       @_timers+71           ; |376| 
L52:    
        MOVW      DP,#_timers+68
        MOV       AL,@_timers+68        ; |379| 
        BF        L53,EQ                ; |379| 
        ; branchcc occurs ; |379| 
        MOVW      DP,#_timers+68
        DEC       @_timers+68           ; |379| 
L53:    
        MOVW      DP,#_timers+69
        MOV       AL,@_timers+69        ; |380| 
        BF        L54,EQ                ; |380| 
        ; branchcc occurs ; |380| 
        MOVW      DP,#_timers+69
        DEC       @_timers+69           ; |380| 
L54:    
        MOVW      DP,#_timers+72
        MOV       AL,@_timers+72        ; |381| 
        BF        L55,EQ                ; |381| 
        ; branchcc occurs ; |381| 
        MOVW      DP,#_timers+72
        DEC       @_timers+72           ; |381| 
L55:    
        MOVW      DP,#_timers+41
        INC       @_timers+41           ; |385| 
        MOVW      DP,#_inputs+1
        MOV       AL,@_inputs+1         ; |387| 
        CMPB      AL,#1                 ; |387| 
        BF        L56,NEQ               ; |387| 
        ; branchcc occurs ; |387| 
        MOVB      AL,#0
        LCR       #_ProximityScaling    ; |387| 
        ; call occurs [#_ProximityScaling] ; |387| 
L56:    
        MOVW      DP,#_inputs+2
        MOV       AL,@_inputs+2         ; |388| 
        CMPB      AL,#1                 ; |388| 
        BF        L57,NEQ               ; |388| 
        ; branchcc occurs ; |388| 
        MOVB      AL,#1                 ; |388| 
        LCR       #_ProximityScaling    ; |388| 
        ; call occurs [#_ProximityScaling] ; |388| 
L57:    
        MOVW      DP,#_inputs+3
        MOV       AL,@_inputs+3         ; |389| 
        CMPB      AL,#1                 ; |389| 
        BF        L58,NEQ               ; |389| 
        ; branchcc occurs ; |389| 
        MOVB      AL,#2                 ; |389| 
        LCR       #_ProximityScaling    ; |389| 
        ; call occurs [#_ProximityScaling] ; |389| 
L58:    
        MOVW      DP,#_inputs+4
        MOV       AL,@_inputs+4         ; |390| 
        CMPB      AL,#1                 ; |390| 
        BF        L59,NEQ               ; |390| 
        ; branchcc occurs ; |390| 
        MOVB      AL,#3                 ; |390| 
        LCR       #_ProximityScaling    ; |390| 
        ; call occurs [#_ProximityScaling] ; |390| 
L59:    
        MOVW      DP,#_inputs+5
        MOV       AL,@_inputs+5         ; |391| 
        CMPB      AL,#1                 ; |391| 
        BF        L60,NEQ               ; |391| 
        ; branchcc occurs ; |391| 
        MOVB      AL,#4                 ; |391| 
        LCR       #_ProximityScaling    ; |391| 
        ; call occurs [#_ProximityScaling] ; |391| 
L60:    
        MOVW      DP,#_inputs+6
        MOV       AL,@_inputs+6         ; |392| 
        CMPB      AL,#1                 ; |392| 
        BF        L61,NEQ               ; |392| 
        ; branchcc occurs ; |392| 
        MOVB      AL,#5                 ; |392| 
        LCR       #_ProximityScaling    ; |392| 
        ; call occurs [#_ProximityScaling] ; |392| 
L61:    
        MOVW      DP,#_inputs+7
        MOV       AL,@_inputs+7         ; |393| 
        CMPB      AL,#1                 ; |393| 
        BF        L62,NEQ               ; |393| 
        ; branchcc occurs ; |393| 
        MOVB      AL,#6                 ; |393| 
        LCR       #_ProximityScaling    ; |393| 
        ; call occurs [#_ProximityScaling] ; |393| 
L62:    
        MOVW      DP,#_inputs+8
        MOV       AL,@_inputs+8         ; |394| 
        CMPB      AL,#1                 ; |394| 
        BF        L63,NEQ               ; |394| 
        ; branchcc occurs ; |394| 
        MOVB      AL,#7                 ; |394| 
        LCR       #_ProximityScaling    ; |394| 
        ; call occurs [#_ProximityScaling] ; |394| 
L63:    
        MOVW      DP,#_inputs+9
        MOV       AL,@_inputs+9         ; |395| 
        CMPB      AL,#1                 ; |395| 
        BF        L64,NEQ               ; |395| 
        ; branchcc occurs ; |395| 
        MOVB      AL,#8                 ; |395| 
        LCR       #_ProximityScaling    ; |395| 
        ; call occurs [#_ProximityScaling] ; |395| 
L64:    
        MOVW      DP,#_inputs+10
        MOV       AL,@_inputs+10        ; |396| 
        CMPB      AL,#1                 ; |396| 
        BF        L65,NEQ               ; |396| 
        ; branchcc occurs ; |396| 
        MOVB      AL,#9                 ; |396| 
        LCR       #_ProximityScaling    ; |396| 
        ; call occurs [#_ProximityScaling] ; |396| 
L65:    
        MOVW      DP,#_inputs+11
        MOV       AL,@_inputs+11        ; |397| 
        CMPB      AL,#1                 ; |397| 
        BF        L66,NEQ               ; |397| 
        ; branchcc occurs ; |397| 
        MOVB      AL,#10                ; |397| 
        LCR       #_ProximityScaling    ; |397| 
        ; call occurs [#_ProximityScaling] ; |397| 
L66:    
        MOVW      DP,#_inputs+12
        MOV       AL,@_inputs+12        ; |398| 
        CMPB      AL,#1                 ; |398| 
        BF        L67,NEQ               ; |398| 
        ; branchcc occurs ; |398| 
        MOVB      AL,#11                ; |398| 
        LCR       #_ProximityScaling    ; |398| 
        ; call occurs [#_ProximityScaling] ; |398| 
L67:    
        MOVW      DP,#_inputs+13
        MOV       AL,@_inputs+13        ; |399| 
        CMPB      AL,#1                 ; |399| 
        BF        L68,NEQ               ; |399| 
        ; branchcc occurs ; |399| 
        MOVB      AL,#12                ; |399| 
        LCR       #_ProximityScaling    ; |399| 
        ; call occurs [#_ProximityScaling] ; |399| 
L68:    
        MOVW      DP,#_inputs+14
        MOV       AL,@_inputs+14        ; |400| 
        CMPB      AL,#1                 ; |400| 
        BF        L69,NEQ               ; |400| 
        ; branchcc occurs ; |400| 
        MOVB      AL,#13                ; |400| 
        LCR       #_ProximityScaling    ; |400| 
        ; call occurs [#_ProximityScaling] ; |400| 
L69:    
        MOVW      DP,#_settings
        MOV       AL,@_settings         ; |402| 
        CMPB      AL,#1                 ; |402| 
        BF        L70,NEQ               ; |402| 
        ; branchcc occurs ; |402| 
        LCR       #_WatchdogKick        ; |402| 
        ; call occurs [#_WatchdogKick] ; |402| 
L70:    
	.dwpsn	"core.c",404,1
        LRETR
        ; return occurs
	.dwattr DW$124, DW_AT_end_file("core.c")
	.dwattr DW$124, DW_AT_end_line(0x194)
	.dwattr DW$124, DW_AT_end_column(0x01)
	.dwendtag DW$124

	.sect	".text"
	.global	_WatchdogKick

DW$125	.dwtag  DW_TAG_subprogram, DW_AT_name("WatchdogKick"), DW_AT_symbol_name("_WatchdogKick")
	.dwattr DW$125, DW_AT_low_pc(_WatchdogKick)
	.dwattr DW$125, DW_AT_high_pc(0x00)
	.dwattr DW$125, DW_AT_begin_file("core.c")
	.dwattr DW$125, DW_AT_begin_line(0x197)
	.dwattr DW$125, DW_AT_begin_column(0x06)
	.dwattr DW$125, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$125, DW_AT_skeletal(0x01)
	.dwpsn	"core.c",408,1

;***************************************************************
;* FNAME: _WatchdogKick                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WatchdogKick:
 eallow             ; Enable accesses to PIE control registers
        MOVB      AL,#85                ; |410| 
        MOV       *(0:0x7025),AL        ; |410| 
        MOVB      AL,#170               ; |411| 
        MOV       *(0:0x7025),AL        ; |411| 
 edis               ; Disable accesses to PIE control registers
        SPM       #0
        MOVW      DP,#_settings
        MOV       @_settings,#0         ; |414| 
	.dwpsn	"core.c",415,1
        LRETR
        ; return occurs
	.dwattr DW$125, DW_AT_end_file("core.c")
	.dwattr DW$125, DW_AT_end_line(0x19f)
	.dwattr DW$125, DW_AT_end_column(0x01)
	.dwendtag DW$125

	.sect	".text"
	.global	_PerformIsr13

DW$126	.dwtag  DW_TAG_subprogram, DW_AT_name("PerformIsr13"), DW_AT_symbol_name("_PerformIsr13")
	.dwattr DW$126, DW_AT_low_pc(_PerformIsr13)
	.dwattr DW$126, DW_AT_high_pc(0x00)
	.dwattr DW$126, DW_AT_begin_file("core.c")
	.dwattr DW$126, DW_AT_begin_line(0x1a7)
	.dwattr DW$126, DW_AT_begin_column(0x06)
	.dwattr DW$126, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$126, DW_AT_skeletal(0x01)
	.dwpsn	"core.c",424,1

;***************************************************************
;* FNAME: _PerformIsr13                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_PerformIsr13:
        MOVW      DP,#_WhatIsrActive
        MOVB      ACC,#1
        MOV       @_WhatIsrActive,#2    ; |425| 
        MOVW      DP,#_Isr13
        ADDL      @_Isr13,ACC           ; |426| 
        MOVW      DP,#_WhatIsrActive
        MOV       @_WhatIsrActive,#0    ; |427| 
        NOP
        NOP
	.dwpsn	"core.c",428,1
        LRETR
        ; return occurs
	.dwattr DW$126, DW_AT_end_file("core.c")
	.dwattr DW$126, DW_AT_end_line(0x1ac)
	.dwattr DW$126, DW_AT_end_column(0x01)
	.dwendtag DW$126

	.sect	".text"
	.global	_PerformIsr14

DW$127	.dwtag  DW_TAG_subprogram, DW_AT_name("PerformIsr14"), DW_AT_symbol_name("_PerformIsr14")
	.dwattr DW$127, DW_AT_low_pc(_PerformIsr14)
	.dwattr DW$127, DW_AT_high_pc(0x00)
	.dwattr DW$127, DW_AT_begin_file("core.c")
	.dwattr DW$127, DW_AT_begin_line(0x1b5)
	.dwattr DW$127, DW_AT_begin_column(0x06)
	.dwattr DW$127, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$127, DW_AT_skeletal(0x01)
	.dwpsn	"core.c",438,1

;***************************************************************
;* FNAME: _PerformIsr14                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_PerformIsr14:
        MOVW      DP,#_WhatIsrActive
        MOVB      ACC,#1
        MOV       @_WhatIsrActive,#3    ; |439| 
        MOVW      DP,#_Isr14
        ADDL      @_Isr14,ACC           ; |440| 
        MOVW      DP,#_WhatIsrActive
        MOV       @_WhatIsrActive,#0    ; |441| 
        NOP
        NOP
	.dwpsn	"core.c",442,1
        LRETR
        ; return occurs
	.dwattr DW$127, DW_AT_end_file("core.c")
	.dwattr DW$127, DW_AT_end_line(0x1ba)
	.dwattr DW$127, DW_AT_end_column(0x01)
	.dwendtag DW$127

;***************************************************************
;* FAR STRINGS                                                 *
;***************************************************************
	.sect	".econst"
	.align	2
FSL1:	.string	"Init.",13,10,0
	.align	2
FSL2:	.string	"Total sensor number: %u, slave sensor:%u",13,10,0
	.align	2
FSL3:	.string	"1.",0
	.align	2
FSL4:	.string	"2.",0
	.align	2
FSL5:	.string	"3.",0
	.align	2
FSL6:	.string	"4.",0
	.align	2
FSL7:	.string	"5.",0
	.align	2
FSL8:	.string	"6.",13,10,0
	.align	2
FSL9:	.string	"Done",13,10,0
;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_sprintf
	.global	_memset
	.global	_SetupInterruptsandTimers
	.global	_SetupPIEVectors
	.global	_TimingSetup
	.global	_FlashSetup
	.global	_InternalRamSetup
	.global	_AllSensorInit
	.global	_Init485Drivers
	.global	_SerialPortASetup
	.global	_SerialPortBSetup
	.global	_SerialPortCSetup
	.global	_SerialPortDSetup
	.global	_DebugStringOut
	.global	_clearCommsErrors
	.global	_InitSPI
	.global	_ReadAllFromEEPROM
	.global	_ReadClockData
	.global	_Fram1ChipCheck
	.global	_PCModBus
	.global	_WIO485Init
	.global	_WaterinOil
	.global	_Slave485Init
	.global	_Slave485Modbus
	.global	_PcCLI
	.global	_SetupCLI
	.global	_InitOP
	.global	_InitOffboardGPIO
	.global	_ProcessDigitalOP
	.global	_SDCardInitialise
	.global	_SetAllEventMsgs
	.global	_SDCalcEventLogID
	.global	_ProcessSDCard
	.global	_SDCardLogUpdate
	.global	_SDCardUpdate
	.global	_RunTimeMinUpdate
	.global	_WIOChecks
	.global	_SetWIOAlarmMask
	.global	_WIOInit
	.global	_PowerUpCalInit
	.global	_InitCal
	.global	_FirmwareComparison
	.global	_InitADC
	.global	_InitScalingFactor
	.global	_SetupConstantCurrentMux
	.global	_SetupScaling
	.global	_AnalogueInputScaleAllChannels
	.global	_SlaveDefaultNotSet
	.global	_ProximityScaling
	.global	_ReprogrammingCalls
	.global	_ReprogramStartupInit
	.global	_InitSystemAlarms
	.global	_SystemChecks
	.global	_ClearEventCodeListArea
	.global	_ClearStatusFlagsforSlave
	.global	_bitEventIncrement
	.global	_SetBitEvent
	.global	_BearingStatus
	.global	_CalLEDSetup
	.global	_InitStatus1Flags
	.global	_InitSensors
	.global	_FunctionEnabledSetup
	.global	_MasterModeSwitch
	.global	_ReadAllSensorStructfromNVMEM
	.global	_ReadConfigStructfromNVMEM
	.global	_InitMAN
	.global	_LoadFRAMpowerup
	.global	_ClearBitEventList
	.global	_LoadFRAMfromSD
	.global	_ClockProcessing
	.global	_NominalSpeedUpdate
	.global	_StartupRefReload
	.global	_ResetLoopCheck
	.global	_ResetCommsCheck
	.global	_LoopCheck
	.global	_RPMCalc
	.global	_MANModules
	.global	_UpdateNonVolSafeCheck
	.global	_settings
	.global	_timers
	.global	_allsensors
	.global	_stringbuffer
	.global	_sdsettings
	.global	_inputs
	.global	_reprogram

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x16)

DW$T$61	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$61, DW_AT_language(DW_LANG_C)
DW$128	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$129	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$130	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$60)
	.dwendtag DW$T$61


DW$T$63	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$63, DW_AT_language(DW_LANG_C)

DW$T$67	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$67, DW_AT_language(DW_LANG_C)
DW$131	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$66)
	.dwendtag DW$T$67


DW$T$69	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$69, DW_AT_language(DW_LANG_C)
DW$132	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$69


DW$T$71	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$71, DW_AT_language(DW_LANG_C)
DW$133	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$71

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)

DW$T$77	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$77, DW_AT_language(DW_LANG_C)
DW$134	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$66)
DW$135	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$76)
DW$136	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$77


DW$T$79	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$79, DW_AT_language(DW_LANG_C)

DW$T$81	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$81, DW_AT_language(DW_LANG_C)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)
DW$T$60	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$60, DW_AT_language(DW_LANG_C)
DW$137	.dwtag  DW_TAG_far_type
	.dwattr DW$137, DW_AT_type(*DW$T$99)
DW$T$100	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$100, DW_AT_type(*DW$137)
DW$T$102	.dwtag  DW_TAG_typedef, DW_AT_name("settingsstruct"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$102, DW_AT_language(DW_LANG_C)
DW$138	.dwtag  DW_TAG_far_type
	.dwattr DW$138, DW_AT_type(*DW$T$103)
DW$T$104	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$104, DW_AT_type(*DW$138)
DW$T$106	.dwtag  DW_TAG_typedef, DW_AT_name("allsensorstruct"), DW_AT_type(*DW$T$25)
	.dwattr DW$T$106, DW_AT_language(DW_LANG_C)
DW$T$107	.dwtag  DW_TAG_typedef, DW_AT_name("sdsettingsstruct"), DW_AT_type(*DW$T$27)
	.dwattr DW$T$107, DW_AT_language(DW_LANG_C)
DW$139	.dwtag  DW_TAG_far_type
	.dwattr DW$139, DW_AT_type(*DW$T$108)
DW$T$109	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$109, DW_AT_type(*DW$139)
DW$T$112	.dwtag  DW_TAG_typedef, DW_AT_name("reprogramstruct"), DW_AT_type(*DW$T$41)
	.dwattr DW$T$112, DW_AT_language(DW_LANG_C)
DW$140	.dwtag  DW_TAG_far_type
	.dwattr DW$140, DW_AT_type(*DW$T$113)
DW$T$114	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$114, DW_AT_type(*DW$140)
DW$141	.dwtag  DW_TAG_far_type
	.dwattr DW$141, DW_AT_type(*DW$T$116)
DW$T$117	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$117, DW_AT_type(*DW$141)
DW$142	.dwtag  DW_TAG_far_type
	.dwattr DW$142, DW_AT_type(*DW$T$119)
DW$T$120	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$120, DW_AT_type(*DW$142)
DW$143	.dwtag  DW_TAG_far_type
	.dwattr DW$143, DW_AT_type(*DW$T$123)
DW$T$124	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$124, DW_AT_type(*DW$143)
DW$144	.dwtag  DW_TAG_far_type
	.dwattr DW$144, DW_AT_type(*DW$T$126)
DW$T$127	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$127, DW_AT_type(*DW$144)
DW$145	.dwtag  DW_TAG_far_type
	.dwattr DW$145, DW_AT_type(*DW$T$129)
DW$T$130	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$130, DW_AT_type(*DW$145)
DW$T$66	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$65)
	.dwattr DW$T$66, DW_AT_address_class(0x16)
DW$T$76	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$75)
	.dwattr DW$T$76, DW_AT_address_class(0x16)

DW$T$132	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$65)
	.dwattr DW$T$132, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$132, DW_AT_byte_size(0x64)
DW$146	.dwtag  DW_TAG_subrange_type
	.dwattr DW$146, DW_AT_upper_bound(0x63)
	.dwendtag DW$T$132

DW$147	.dwtag  DW_TAG_far_type
	.dwattr DW$147, DW_AT_type(*DW$T$135)
DW$T$136	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$136, DW_AT_type(*DW$147)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)
DW$T$99	.dwtag  DW_TAG_typedef, DW_AT_name("uint32"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$99, DW_AT_language(DW_LANG_C)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("tag_settingsstruct")
	.dwattr DW$T$20, DW_AT_byte_size(0x24)
DW$148	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$148, DW_AT_name("watchdog"), DW_AT_symbol_name("_watchdog")
	.dwattr DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$148, DW_AT_accessibility(DW_ACCESS_public)
DW$149	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$149, DW_AT_name("ledflashflag"), DW_AT_symbol_name("_ledflashflag")
	.dwattr DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$149, DW_AT_accessibility(DW_ACCESS_public)
DW$150	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$150, DW_AT_name("updatesafe"), DW_AT_symbol_name("_updatesafe")
	.dwattr DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$150, DW_AT_accessibility(DW_ACCESS_public)
DW$151	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$151, DW_AT_name("tableconfigtype"), DW_AT_symbol_name("_tableconfigtype")
	.dwattr DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$151, DW_AT_accessibility(DW_ACCESS_public)
DW$152	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$152, DW_AT_name("caltableconfigtype"), DW_AT_symbol_name("_caltableconfigtype")
	.dwattr DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$152, DW_AT_accessibility(DW_ACCESS_public)
DW$153	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$153, DW_AT_name("eventmsgid"), DW_AT_symbol_name("_eventmsgid")
	.dwattr DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$153, DW_AT_accessibility(DW_ACCESS_public)
DW$154	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$154, DW_AT_name("configoperationcomplete"), DW_AT_symbol_name("_configoperationcomplete")
	.dwattr DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$154, DW_AT_accessibility(DW_ACCESS_public)
DW$155	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$155, DW_AT_name("sdcarderr"), DW_AT_symbol_name("_sdcarderr")
	.dwattr DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$155, DW_AT_accessibility(DW_ACCESS_public)
DW$156	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$156, DW_AT_name("sderase"), DW_AT_symbol_name("_sderase")
	.dwattr DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$156, DW_AT_accessibility(DW_ACCESS_public)
DW$157	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$157, DW_AT_name("sdreinit"), DW_AT_symbol_name("_sdreinit")
	.dwattr DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$157, DW_AT_accessibility(DW_ACCESS_public)
DW$158	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$158, DW_AT_name("sdcardupdate"), DW_AT_symbol_name("_sdcardupdate")
	.dwattr DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$158, DW_AT_accessibility(DW_ACCESS_public)
DW$159	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$159, DW_AT_name("cardreadflag"), DW_AT_symbol_name("_cardreadflag")
	.dwattr DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$159, DW_AT_accessibility(DW_ACCESS_public)
DW$160	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$160, DW_AT_name("ignore"), DW_AT_symbol_name("_ignore")
	.dwattr DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$160, DW_AT_accessibility(DW_ACCESS_public)
DW$161	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$161, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$161, DW_AT_accessibility(DW_ACCESS_public)
DW$162	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$162, DW_AT_name("spiinuse"), DW_AT_symbol_name("_spiinuse")
	.dwattr DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$162, DW_AT_accessibility(DW_ACCESS_public)
DW$163	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$163, DW_AT_name("dcpeakhold"), DW_AT_symbol_name("_dcpeakhold")
	.dwattr DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$163, DW_AT_accessibility(DW_ACCESS_public)
DW$164	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$164, DW_AT_name("dcpause"), DW_AT_symbol_name("_dcpause")
	.dwattr DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$164, DW_AT_accessibility(DW_ACCESS_public)
DW$165	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$165, DW_AT_name("mastermode"), DW_AT_symbol_name("_mastermode")
	.dwattr DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$165, DW_AT_accessibility(DW_ACCESS_public)
DW$166	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$166, DW_AT_name("updatescaling"), DW_AT_symbol_name("_updatescaling")
	.dwattr DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$166, DW_AT_accessibility(DW_ACCESS_public)
DW$167	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$167, DW_AT_name("forwardasternflag"), DW_AT_symbol_name("_forwardasternflag")
	.dwattr DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$167, DW_AT_accessibility(DW_ACCESS_public)
DW$168	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$168, DW_AT_name("initprogress"), DW_AT_symbol_name("_initprogress")
	.dwattr DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$168, DW_AT_accessibility(DW_ACCESS_public)
DW$169	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$169, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$169, DW_AT_accessibility(DW_ACCESS_public)
DW$170	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$170, DW_AT_name("slowdowncounter"), DW_AT_symbol_name("_slowdowncounter")
	.dwattr DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$170, DW_AT_accessibility(DW_ACCESS_public)
DW$171	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$171, DW_AT_name("slowdowncondition"), DW_AT_symbol_name("_slowdowncondition")
	.dwattr DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$171, DW_AT_accessibility(DW_ACCESS_public)
DW$172	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$172, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$172, DW_AT_accessibility(DW_ACCESS_public)
DW$173	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$173, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$173, DW_AT_accessibility(DW_ACCESS_public)
DW$174	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$174, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$174, DW_AT_accessibility(DW_ACCESS_public)
DW$175	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$175, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$175, DW_AT_accessibility(DW_ACCESS_public)
DW$176	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$176, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$176, DW_AT_accessibility(DW_ACCESS_public)
DW$177	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$177, DW_AT_name("temperaturealarm"), DW_AT_symbol_name("_temperaturealarm")
	.dwattr DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$177, DW_AT_accessibility(DW_ACCESS_public)
DW$178	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$178, DW_AT_name("temperatureslowdown"), DW_AT_symbol_name("_temperatureslowdown")
	.dwattr DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$178, DW_AT_accessibility(DW_ACCESS_public)
DW$179	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$179, DW_AT_name("anadebug"), DW_AT_symbol_name("_anadebug")
	.dwattr DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$179, DW_AT_accessibility(DW_ACCESS_public)
DW$180	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$180, DW_AT_name("serialdebug"), DW_AT_symbol_name("_serialdebug")
	.dwattr DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr DW$180, DW_AT_accessibility(DW_ACCESS_public)
DW$181	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$181, DW_AT_name("timerrunning"), DW_AT_symbol_name("_timerrunning")
	.dwattr DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$181, DW_AT_accessibility(DW_ACCESS_public)
DW$182	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$182, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$182, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20

DW$T$103	.dwtag  DW_TAG_typedef, DW_AT_name("timersstruct"), DW_AT_type(*DW$T$22)
	.dwattr DW$T$103, DW_AT_language(DW_LANG_C)

DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$25, DW_AT_name("tag_allsensorstruct")
	.dwattr DW$T$25, DW_AT_byte_size(0x2d)
DW$183	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$183, DW_AT_name("numsensors"), DW_AT_symbol_name("_numsensors")
	.dwattr DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$183, DW_AT_accessibility(DW_ACCESS_public)
DW$184	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$184, DW_AT_name("numsensorsspu1"), DW_AT_symbol_name("_numsensorsspu1")
	.dwattr DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$184, DW_AT_accessibility(DW_ACCESS_public)
DW$185	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$185, DW_AT_name("numsensorsspu2"), DW_AT_symbol_name("_numsensorsspu2")
	.dwattr DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$185, DW_AT_accessibility(DW_ACCESS_public)
DW$186	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$186, DW_AT_name("nominalspeed"), DW_AT_symbol_name("_nominalspeed")
	.dwattr DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$186, DW_AT_accessibility(DW_ACCESS_public)
DW$187	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$187, DW_AT_name("rpmmin"), DW_AT_symbol_name("_rpmmin")
	.dwattr DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$187, DW_AT_accessibility(DW_ACCESS_public)
DW$188	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$188, DW_AT_name("rpmmax"), DW_AT_symbol_name("_rpmmax")
	.dwattr DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$188, DW_AT_accessibility(DW_ACCESS_public)
DW$189	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$189, DW_AT_name("reflash"), DW_AT_symbol_name("_reflash")
	.dwattr DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$189, DW_AT_accessibility(DW_ACCESS_public)
DW$190	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$190, DW_AT_name("sensorhysteresis"), DW_AT_symbol_name("_sensorhysteresis")
	.dwattr DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$190, DW_AT_accessibility(DW_ACCESS_public)
DW$191	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$191, DW_AT_name("cylinderhysteresis"), DW_AT_symbol_name("_cylinderhysteresis")
	.dwattr DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$191, DW_AT_accessibility(DW_ACCESS_public)
DW$192	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$192, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$192, DW_AT_accessibility(DW_ACCESS_public)
DW$193	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$193, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$193, DW_AT_accessibility(DW_ACCESS_public)
DW$194	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$194, DW_AT_name("slowdowndevcallevel"), DW_AT_symbol_name("_slowdowndevcallevel")
	.dwattr DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$194, DW_AT_accessibility(DW_ACCESS_public)
DW$195	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$195, DW_AT_name("alarmdevcallevel"), DW_AT_symbol_name("_alarmdevcallevel")
	.dwattr DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$195, DW_AT_accessibility(DW_ACCESS_public)
DW$196	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$196, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$196, DW_AT_accessibility(DW_ACCESS_public)
DW$197	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$197, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$197, DW_AT_accessibility(DW_ACCESS_public)
DW$198	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$198, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$198, DW_AT_accessibility(DW_ACCESS_public)
DW$199	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$199, DW_AT_name("flags"), DW_AT_symbol_name("_flags")
	.dwattr DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$199, DW_AT_accessibility(DW_ACCESS_public)
DW$200	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$200, DW_AT_name("slowdownack"), DW_AT_symbol_name("_slowdownack")
	.dwattr DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$200, DW_AT_accessibility(DW_ACCESS_public)
DW$201	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$201, DW_AT_name("alarmack"), DW_AT_symbol_name("_alarmack")
	.dwattr DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$201, DW_AT_accessibility(DW_ACCESS_public)
DW$202	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$202, DW_AT_name("maxmintimer"), DW_AT_symbol_name("_maxmintimer")
	.dwattr DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$202, DW_AT_accessibility(DW_ACCESS_public)
DW$203	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$203, DW_AT_name("enginedircal"), DW_AT_symbol_name("_enginedircal")
	.dwattr DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$203, DW_AT_accessibility(DW_ACCESS_public)
DW$204	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$204, DW_AT_name("dirorder"), DW_AT_symbol_name("_dirorder")
	.dwattr DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$204, DW_AT_accessibility(DW_ACCESS_public)
DW$205	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$205, DW_AT_name("prewarningtimer"), DW_AT_symbol_name("_prewarningtimer")
	.dwattr DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$205, DW_AT_accessibility(DW_ACCESS_public)
DW$206	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$206, DW_AT_name("prewarninglevel"), DW_AT_symbol_name("_prewarninglevel")
	.dwattr DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$206, DW_AT_accessibility(DW_ACCESS_public)
DW$207	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$207, DW_AT_name("rpmlimit"), DW_AT_symbol_name("_rpmlimit")
	.dwattr DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr DW$207, DW_AT_accessibility(DW_ACCESS_public)
DW$208	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$208, DW_AT_name("dsss"), DW_AT_symbol_name("_dsss")
	.dwattr DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$208, DW_AT_accessibility(DW_ACCESS_public)
DW$209	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$209, DW_AT_name("slowdowncallevel"), DW_AT_symbol_name("_slowdowncallevel")
	.dwattr DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$209, DW_AT_accessibility(DW_ACCESS_public)
DW$210	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$210, DW_AT_name("alarmcallevel"), DW_AT_symbol_name("_alarmcallevel")
	.dwattr DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$210, DW_AT_accessibility(DW_ACCESS_public)
DW$211	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$211, DW_AT_name("cylinderalarmcallevel"), DW_AT_symbol_name("_cylinderalarmcallevel")
	.dwattr DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$211, DW_AT_accessibility(DW_ACCESS_public)
DW$212	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$212, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$212, DW_AT_accessibility(DW_ACCESS_public)
DW$213	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$213, DW_AT_name("iBarredVibrationSpeedLow"), DW_AT_symbol_name("_iBarredVibrationSpeedLow")
	.dwattr DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$213, DW_AT_accessibility(DW_ACCESS_public)
DW$214	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$214, DW_AT_name("iBarredVibrationSpeedHigh"), DW_AT_symbol_name("_iBarredVibrationSpeedHigh")
	.dwattr DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$214, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$27, DW_AT_name("tag_sdsettingsstruct")
	.dwattr DW$T$27, DW_AT_byte_size(0x04)
DW$215	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$215, DW_AT_name("present"), DW_AT_symbol_name("_present")
	.dwattr DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$215, DW_AT_accessibility(DW_ACCESS_public)
DW$216	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$216, DW_AT_name("sequence"), DW_AT_symbol_name("_sequence")
	.dwattr DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$216, DW_AT_accessibility(DW_ACCESS_public)
DW$217	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$217, DW_AT_name("errornum"), DW_AT_symbol_name("_errornum")
	.dwattr DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$217, DW_AT_accessibility(DW_ACCESS_public)
DW$218	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$218, DW_AT_name("readstatus"), DW_AT_symbol_name("_readstatus")
	.dwattr DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$218, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27

DW$T$108	.dwtag  DW_TAG_typedef, DW_AT_name("inputstruct"), DW_AT_type(*DW$T$39)
	.dwattr DW$T$108, DW_AT_language(DW_LANG_C)

DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$41, DW_AT_name("tag_reprogramstruct")
	.dwattr DW$T$41, DW_AT_byte_size(0x10)
DW$219	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$219, DW_AT_name("spi"), DW_AT_symbol_name("_spi")
	.dwattr DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$219, DW_AT_accessibility(DW_ACCESS_public)
DW$220	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$220, DW_AT_name("programkey"), DW_AT_symbol_name("_programkey")
	.dwattr DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$220, DW_AT_accessibility(DW_ACCESS_public)
DW$221	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$221, DW_AT_name("reprogramnow"), DW_AT_symbol_name("_reprogramnow")
	.dwattr DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$221, DW_AT_accessibility(DW_ACCESS_public)
DW$222	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$222, DW_AT_name("slavecmdok"), DW_AT_symbol_name("_slavecmdok")
	.dwattr DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$222, DW_AT_accessibility(DW_ACCESS_public)
DW$223	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$223, DW_AT_name("slavestatus"), DW_AT_symbol_name("_slavestatus")
	.dwattr DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$223, DW_AT_accessibility(DW_ACCESS_public)
DW$224	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$224, DW_AT_name("slavetx"), DW_AT_symbol_name("_slavetx")
	.dwattr DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$224, DW_AT_accessibility(DW_ACCESS_public)
DW$225	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$225, DW_AT_name("slaverx"), DW_AT_symbol_name("_slaverx")
	.dwattr DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$225, DW_AT_accessibility(DW_ACCESS_public)
DW$226	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$226, DW_AT_name("slaveset"), DW_AT_symbol_name("_slaveset")
	.dwattr DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$226, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$41

DW$T$113	.dwtag  DW_TAG_typedef, DW_AT_name("gpaport"), DW_AT_type(*DW$T$44)
	.dwattr DW$T$113, DW_AT_language(DW_LANG_C)
DW$T$116	.dwtag  DW_TAG_typedef, DW_AT_name("gpbport"), DW_AT_type(*DW$T$47)
	.dwattr DW$T$116, DW_AT_language(DW_LANG_C)
DW$T$119	.dwtag  DW_TAG_typedef, DW_AT_name("gpdport"), DW_AT_type(*DW$T$50)
	.dwattr DW$T$119, DW_AT_language(DW_LANG_C)
DW$T$123	.dwtag  DW_TAG_typedef, DW_AT_name("gpeport"), DW_AT_type(*DW$T$53)
	.dwattr DW$T$123, DW_AT_language(DW_LANG_C)
DW$T$126	.dwtag  DW_TAG_typedef, DW_AT_name("gpfport"), DW_AT_type(*DW$T$56)
	.dwattr DW$T$126, DW_AT_language(DW_LANG_C)
DW$T$129	.dwtag  DW_TAG_typedef, DW_AT_name("gpgport"), DW_AT_type(*DW$T$59)
	.dwattr DW$T$129, DW_AT_language(DW_LANG_C)
DW$T$65	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$65, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$65, DW_AT_byte_size(0x01)
DW$227	.dwtag  DW_TAG_far_type
	.dwattr DW$227, DW_AT_type(*DW$T$65)
DW$T$75	.dwtag  DW_TAG_const_type
	.dwattr DW$T$75, DW_AT_type(*DW$227)
DW$T$135	.dwtag  DW_TAG_typedef, DW_AT_name("ISR_LIST"), DW_AT_type(*DW$T$134)
	.dwattr DW$T$135, DW_AT_language(DW_LANG_C)

DW$T$21	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$21, DW_AT_byte_size(0x0e)
DW$228	.dwtag  DW_TAG_subrange_type
	.dwattr DW$228, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$21


DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$19, DW_AT_byte_size(0x02)
DW$229	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$229, DW_AT_name("enb"), DW_AT_symbol_name("_enb")
	.dwattr DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$229, DW_AT_accessibility(DW_ACCESS_public)
DW$230	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$230, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$230, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$19


DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_name("tag_timers")
	.dwattr DW$T$22, DW_AT_byte_size(0x4c)
DW$231	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$231, DW_AT_name("update"), DW_AT_symbol_name("_update")
	.dwattr DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$231, DW_AT_accessibility(DW_ACCESS_public)
DW$232	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$232, DW_AT_name("general"), DW_AT_symbol_name("_general")
	.dwattr DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$232, DW_AT_accessibility(DW_ACCESS_public)
DW$233	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$233, DW_AT_name("rxcharTimeout"), DW_AT_symbol_name("_rxcharTimeout")
	.dwattr DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$233, DW_AT_accessibility(DW_ACCESS_public)
DW$234	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$234, DW_AT_name("wiorxtimeout"), DW_AT_symbol_name("_wiorxtimeout")
	.dwattr DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$234, DW_AT_accessibility(DW_ACCESS_public)
DW$235	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$235, DW_AT_name("wiomasterrxtimeout"), DW_AT_symbol_name("_wiomasterrxtimeout")
	.dwattr DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$235, DW_AT_accessibility(DW_ACCESS_public)
DW$236	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$236, DW_AT_name("masterrxtimeout"), DW_AT_symbol_name("_masterrxtimeout")
	.dwattr DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$236, DW_AT_accessibility(DW_ACCESS_public)
DW$237	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$237, DW_AT_name("slaverxtimeout"), DW_AT_symbol_name("_slaverxtimeout")
	.dwattr DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$237, DW_AT_accessibility(DW_ACCESS_public)
DW$238	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$238, DW_AT_name("sectick"), DW_AT_symbol_name("_sectick")
	.dwattr DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$238, DW_AT_accessibility(DW_ACCESS_public)
DW$239	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$239, DW_AT_name("ledflash"), DW_AT_symbol_name("_ledflash")
	.dwattr DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$239, DW_AT_accessibility(DW_ACCESS_public)
DW$240	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$240, DW_AT_name("prtsettle"), DW_AT_symbol_name("_prtsettle")
	.dwattr DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$240, DW_AT_accessibility(DW_ACCESS_public)
DW$241	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$241, DW_AT_name("chantimeout"), DW_AT_symbol_name("_chantimeout")
	.dwattr DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$241, DW_AT_accessibility(DW_ACCESS_public)
DW$242	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$242, DW_AT_name("chanwait"), DW_AT_symbol_name("_chanwait")
	.dwattr DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$242, DW_AT_accessibility(DW_ACCESS_public)
DW$243	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$243, DW_AT_name("pcrxtimeout"), DW_AT_symbol_name("_pcrxtimeout")
	.dwattr DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$243, DW_AT_accessibility(DW_ACCESS_public)
DW$244	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$244, DW_AT_name("pctxtimeout"), DW_AT_symbol_name("_pctxtimeout")
	.dwattr DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$244, DW_AT_accessibility(DW_ACCESS_public)
DW$245	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$245, DW_AT_name("spistatus"), DW_AT_symbol_name("_spistatus")
	.dwattr DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$245, DW_AT_accessibility(DW_ACCESS_public)
DW$246	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$246, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$246, DW_AT_accessibility(DW_ACCESS_public)
DW$247	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$247, DW_AT_name("slaverqst"), DW_AT_symbol_name("_slaverqst")
	.dwattr DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$247, DW_AT_accessibility(DW_ACCESS_public)
DW$248	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$248, DW_AT_name("mastermodebutton"), DW_AT_symbol_name("_mastermodebutton")
	.dwattr DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$248, DW_AT_accessibility(DW_ACCESS_public)
DW$249	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$249, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$249, DW_AT_accessibility(DW_ACCESS_public)
DW$250	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$250, DW_AT_name("calibrate"), DW_AT_symbol_name("_calibrate")
	.dwattr DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$250, DW_AT_accessibility(DW_ACCESS_public)
DW$251	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$251, DW_AT_name("calibrate2"), DW_AT_symbol_name("_calibrate2")
	.dwattr DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$251, DW_AT_accessibility(DW_ACCESS_public)
DW$252	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$252, DW_AT_name("alarmreflash"), DW_AT_symbol_name("_alarmreflash")
	.dwattr DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$252, DW_AT_accessibility(DW_ACCESS_public)
DW$253	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$253, DW_AT_name("slowdownreflash"), DW_AT_symbol_name("_slowdownreflash")
	.dwattr DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr DW$253, DW_AT_accessibility(DW_ACCESS_public)
DW$254	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$254, DW_AT_name("wiorqst"), DW_AT_symbol_name("_wiorqst")
	.dwattr DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$254, DW_AT_accessibility(DW_ACCESS_public)
DW$255	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$255, DW_AT_name("rpmtimeout"), DW_AT_symbol_name("_rpmtimeout")
	.dwattr DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr DW$255, DW_AT_accessibility(DW_ACCESS_public)
DW$256	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$256, DW_AT_name("analogoor"), DW_AT_symbol_name("_analogoor")
	.dwattr DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$256, DW_AT_accessibility(DW_ACCESS_public)
DW$257	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$257, DW_AT_name("motioncal"), DW_AT_symbol_name("_motioncal")
	.dwattr DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr DW$257, DW_AT_accessibility(DW_ACCESS_public)
DW$258	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$258, DW_AT_name("framcheck"), DW_AT_symbol_name("_framcheck")
	.dwattr DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$258, DW_AT_accessibility(DW_ACCESS_public)
DW$259	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$259, DW_AT_name("pcmodbus"), DW_AT_symbol_name("_pcmodbus")
	.dwattr DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr DW$259, DW_AT_accessibility(DW_ACCESS_public)
DW$260	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$260, DW_AT_name("statusreflash"), DW_AT_symbol_name("_statusreflash")
	.dwattr DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$260, DW_AT_accessibility(DW_ACCESS_public)
DW$261	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$261, DW_AT_name("prewarn"), DW_AT_symbol_name("_prewarn")
	.dwattr DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$261, DW_AT_accessibility(DW_ACCESS_public)
DW$262	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$262, DW_AT_name("clocktofram"), DW_AT_symbol_name("_clocktofram")
	.dwattr DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr DW$262, DW_AT_accessibility(DW_ACCESS_public)
DW$263	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$263, DW_AT_name("debugrapidfast"), DW_AT_symbol_name("_debugrapidfast")
	.dwattr DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x3f]
	.dwattr DW$263, DW_AT_accessibility(DW_ACCESS_public)
DW$264	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$264, DW_AT_name("debugupdate"), DW_AT_symbol_name("_debugupdate")
	.dwattr DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$264, DW_AT_accessibility(DW_ACCESS_public)
DW$265	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$265, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr DW$265, DW_AT_accessibility(DW_ACCESS_public)
DW$266	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$266, DW_AT_name("startup"), DW_AT_symbol_name("_startup")
	.dwattr DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr DW$266, DW_AT_accessibility(DW_ACCESS_public)
DW$267	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$267, DW_AT_name("analogsettle"), DW_AT_symbol_name("_analogsettle")
	.dwattr DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr DW$267, DW_AT_accessibility(DW_ACCESS_public)
DW$268	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$268, DW_AT_name("reprogram"), DW_AT_symbol_name("_reprogram")
	.dwattr DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr DW$268, DW_AT_accessibility(DW_ACCESS_public)
DW$269	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$269, DW_AT_name("reprogramtimeout"), DW_AT_symbol_name("_reprogramtimeout")
	.dwattr DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr DW$269, DW_AT_accessibility(DW_ACCESS_public)
DW$270	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$270, DW_AT_name("dcmodestayalive"), DW_AT_symbol_name("_dcmodestayalive")
	.dwattr DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$270, DW_AT_accessibility(DW_ACCESS_public)
DW$271	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$271, DW_AT_name("biteventchange"), DW_AT_symbol_name("_biteventchange")
	.dwattr DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr DW$271, DW_AT_accessibility(DW_ACCESS_public)
DW$272	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$272, DW_AT_name("iSensorReplace"), DW_AT_symbol_name("_iSensorReplace")
	.dwattr DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr DW$272, DW_AT_accessibility(DW_ACCESS_public)
DW$273	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$273, DW_AT_name("deltarpm15Delay"), DW_AT_symbol_name("_deltarpm15Delay")
	.dwattr DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr DW$273, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$23, DW_AT_byte_size(0x01)
DW$274	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$274, DW_AT_name("newval"), DW_AT_symbol_name("_newval")
	.dwattr DW$274, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$274, DW_AT_accessibility(DW_ACCESS_public)
DW$275	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$275, DW_AT_name("calmode"), DW_AT_symbol_name("_calmode")
	.dwattr DW$275, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$275, DW_AT_accessibility(DW_ACCESS_public)
DW$276	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$276, DW_AT_name("startcal"), DW_AT_symbol_name("_startcal")
	.dwattr DW$276, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$276, DW_AT_accessibility(DW_ACCESS_public)
DW$277	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$277, DW_AT_name("newvalspu2"), DW_AT_symbol_name("_newvalspu2")
	.dwattr DW$277, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$277, DW_AT_accessibility(DW_ACCESS_public)
DW$278	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$278, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$278, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$278, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_byte_size(0x01)
DW$279	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$279, DW_AT_name("slowdowncntrl"), DW_AT_symbol_name("_slowdowncntrl")
	.dwattr DW$279, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$279, DW_AT_accessibility(DW_ACCESS_public)
DW$280	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$280, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$280, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0f)
	.dwattr DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$280, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_byte_size(0x01)
DW$281	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$281, DW_AT_name("settings"), DW_AT_symbol_name("_settings")
	.dwattr DW$281, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$281, DW_AT_accessibility(DW_ACCESS_public)
DW$282	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$282, DW_AT_name("sensorstatus"), DW_AT_symbol_name("_sensorstatus")
	.dwattr DW$282, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$282, DW_AT_accessibility(DW_ACCESS_public)
DW$283	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$283, DW_AT_name("offsets"), DW_AT_symbol_name("_offsets")
	.dwattr DW$283, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$283, DW_AT_accessibility(DW_ACCESS_public)
DW$284	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$284, DW_AT_name("mantable"), DW_AT_symbol_name("_mantable")
	.dwattr DW$284, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$284, DW_AT_accessibility(DW_ACCESS_public)
DW$285	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$285, DW_AT_name("calibtd"), DW_AT_symbol_name("_calibtd")
	.dwattr DW$285, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$285, DW_AT_accessibility(DW_ACCESS_public)
DW$286	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$286, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$286, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$286, DW_AT_accessibility(DW_ACCESS_public)
DW$287	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$287, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$287, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$287, DW_AT_accessibility(DW_ACCESS_public)
DW$288	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$288, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$288, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$288, DW_AT_accessibility(DW_ACCESS_public)
DW$289	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$289, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$289, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$289, DW_AT_accessibility(DW_ACCESS_public)
DW$290	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$290, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$290, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$290, DW_AT_accessibility(DW_ACCESS_public)
DW$291	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$291, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$291, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$291, DW_AT_accessibility(DW_ACCESS_public)
DW$292	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$292, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$292, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$292, DW_AT_accessibility(DW_ACCESS_public)
DW$293	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$293, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$293, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$293, DW_AT_accessibility(DW_ACCESS_public)
DW$294	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$294, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$294, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$294, DW_AT_accessibility(DW_ACCESS_public)
DW$295	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$295, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$295, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$295, DW_AT_accessibility(DW_ACCESS_public)
DW$296	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$296, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$296, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$296, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$39, DW_AT_name("tag_inputstruct")
	.dwattr DW$T$39, DW_AT_byte_size(0xfe)
DW$297	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$297, DW_AT_name("flags"), DW_AT_symbol_name("_flags")
	.dwattr DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$297, DW_AT_accessibility(DW_ACCESS_public)
DW$298	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$298, DW_AT_name("scale"), DW_AT_symbol_name("_scale")
	.dwattr DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$298, DW_AT_accessibility(DW_ACCESS_public)
DW$299	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$299, DW_AT_name("rawresults"), DW_AT_symbol_name("_rawresults")
	.dwattr DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr DW$299, DW_AT_accessibility(DW_ACCESS_public)
DW$300	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$300, DW_AT_name("amps"), DW_AT_symbol_name("_amps")
	.dwattr DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0xc6]
	.dwattr DW$300, DW_AT_accessibility(DW_ACCESS_public)
DW$301	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$301, DW_AT_name("prtchan"), DW_AT_symbol_name("_prtchan")
	.dwattr DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0xe2]
	.dwattr DW$301, DW_AT_accessibility(DW_ACCESS_public)
DW$302	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$38)
	.dwattr DW$302, DW_AT_name("analog"), DW_AT_symbol_name("_analog")
	.dwattr DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0xe4]
	.dwattr DW$302, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39


DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$40, DW_AT_byte_size(0x08)
DW$303	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$303, DW_AT_name("programgo"), DW_AT_symbol_name("_programgo")
	.dwattr DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$303, DW_AT_accessibility(DW_ACCESS_public)
DW$304	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$304, DW_AT_name("status"), DW_AT_symbol_name("_status")
	.dwattr DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$304, DW_AT_accessibility(DW_ACCESS_public)
DW$305	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$305, DW_AT_name("erase"), DW_AT_symbol_name("_erase")
	.dwattr DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$305, DW_AT_accessibility(DW_ACCESS_public)
DW$306	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$306, DW_AT_name("address"), DW_AT_symbol_name("_address")
	.dwattr DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$306, DW_AT_accessibility(DW_ACCESS_public)
DW$307	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$307, DW_AT_name("size"), DW_AT_symbol_name("_size")
	.dwattr DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$307, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40


DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$44, DW_AT_name("taggpaport")
	.dwattr DW$T$44, DW_AT_byte_size(0x01)
DW$308	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$43)
	.dwattr DW$308, DW_AT_name("selunion"), DW_AT_symbol_name("_selunion")
	.dwattr DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$308, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$44


DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$47, DW_AT_name("taggpbport")
	.dwattr DW$T$47, DW_AT_byte_size(0x01)
DW$309	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$309, DW_AT_name("selunion"), DW_AT_symbol_name("_selunion")
	.dwattr DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$309, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$47


DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$50, DW_AT_name("taggpdport")
	.dwattr DW$T$50, DW_AT_byte_size(0x01)
DW$310	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$310, DW_AT_name("selunion"), DW_AT_symbol_name("_selunion")
	.dwattr DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$310, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$50


DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$53, DW_AT_name("taggpeport")
	.dwattr DW$T$53, DW_AT_byte_size(0x01)
DW$311	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$52)
	.dwattr DW$311, DW_AT_name("selunion"), DW_AT_symbol_name("_selunion")
	.dwattr DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$311, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$53


DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$56, DW_AT_name("taggpfport")
	.dwattr DW$T$56, DW_AT_byte_size(0x01)
DW$312	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$55)
	.dwattr DW$312, DW_AT_name("selunion"), DW_AT_symbol_name("_selunion")
	.dwattr DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$312, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$56


DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$59, DW_AT_name("taggpgport")
	.dwattr DW$T$59, DW_AT_byte_size(0x01)
DW$313	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$58)
	.dwattr DW$313, DW_AT_name("selunion"), DW_AT_symbol_name("_selunion")
	.dwattr DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$313, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$59


DW$T$134	.dwtag  DW_TAG_enumeration_type
	.dwattr DW$T$134, DW_AT_byte_size(0x01)
DW$314	.dwtag  DW_TAG_enumerator, DW_AT_name("NoIsrActive"), DW_AT_const_value(0x00)
DW$315	.dwtag  DW_TAG_enumerator, DW_AT_name("Isr1Active"), DW_AT_const_value(0x01)
DW$316	.dwtag  DW_TAG_enumerator, DW_AT_name("Isr13Active"), DW_AT_const_value(0x02)
DW$317	.dwtag  DW_TAG_enumerator, DW_AT_name("Isr14Active"), DW_AT_const_value(0x03)
	.dwendtag DW$T$134


DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_byte_size(0x39)
DW$318	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$318, DW_AT_name("ready"), DW_AT_symbol_name("_ready")
	.dwattr DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$318, DW_AT_accessibility(DW_ACCESS_public)
DW$319	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$319, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$319, DW_AT_accessibility(DW_ACCESS_public)
DW$320	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$320, DW_AT_name("newrpm"), DW_AT_symbol_name("_newrpm")
	.dwattr DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$320, DW_AT_accessibility(DW_ACCESS_public)
DW$321	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$321, DW_AT_name("rpmstart"), DW_AT_symbol_name("_rpmstart")
	.dwattr DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$321, DW_AT_accessibility(DW_ACCESS_public)
DW$322	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$322, DW_AT_name("startupcounter"), DW_AT_symbol_name("_startupcounter")
	.dwattr DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$322, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$31, DW_AT_byte_size(0x2a)
DW$323	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$323, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$323, DW_AT_accessibility(DW_ACCESS_public)
DW$324	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$324, DW_AT_name("peakoffset"), DW_AT_symbol_name("_peakoffset")
	.dwattr DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$324, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$33, DW_AT_byte_size(0x62)
DW$325	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$325, DW_AT_name("current"), DW_AT_symbol_name("_current")
	.dwattr DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$325, DW_AT_accessibility(DW_ACCESS_public)
DW$326	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$326, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$326, DW_AT_accessibility(DW_ACCESS_public)
DW$327	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$327, DW_AT_name("counterA"), DW_AT_symbol_name("_counterA")
	.dwattr DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$327, DW_AT_accessibility(DW_ACCESS_public)
DW$328	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$328, DW_AT_name("counterB"), DW_AT_symbol_name("_counterB")
	.dwattr DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$328, DW_AT_accessibility(DW_ACCESS_public)
DW$329	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$329, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr DW$329, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$35, DW_AT_byte_size(0x1c)
DW$330	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$330, DW_AT_name("value"), DW_AT_symbol_name("_value")
	.dwattr DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$330, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35


DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_byte_size(0x1a)
DW$331	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$331, DW_AT_name("value"), DW_AT_symbol_name("_value")
	.dwattr DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$331, DW_AT_accessibility(DW_ACCESS_public)
DW$332	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$332, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$332, DW_AT_accessibility(DW_ACCESS_public)
DW$333	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$333, DW_AT_name("scalefactor"), DW_AT_symbol_name("_scalefactor")
	.dwattr DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$333, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38


DW$T$43	.dwtag  DW_TAG_union_type
	.dwattr DW$T$43, DW_AT_byte_size(0x01)
DW$334	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$334, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$334, DW_AT_accessibility(DW_ACCESS_public)
DW$335	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$335, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$335, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$43


DW$T$46	.dwtag  DW_TAG_union_type
	.dwattr DW$T$46, DW_AT_byte_size(0x01)
DW$336	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$336, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$336, DW_AT_accessibility(DW_ACCESS_public)
DW$337	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$337, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$337, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$46


DW$T$49	.dwtag  DW_TAG_union_type
	.dwattr DW$T$49, DW_AT_byte_size(0x01)
DW$338	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$338, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$338, DW_AT_accessibility(DW_ACCESS_public)
DW$339	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$339, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$339, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$49


DW$T$52	.dwtag  DW_TAG_union_type
	.dwattr DW$T$52, DW_AT_byte_size(0x01)
DW$340	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$340, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$340, DW_AT_accessibility(DW_ACCESS_public)
DW$341	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$51)
	.dwattr DW$341, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$341, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$52


DW$T$55	.dwtag  DW_TAG_union_type
	.dwattr DW$T$55, DW_AT_byte_size(0x01)
DW$342	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$342, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$342, DW_AT_accessibility(DW_ACCESS_public)
DW$343	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$54)
	.dwattr DW$343, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$343, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$55


DW$T$58	.dwtag  DW_TAG_union_type
	.dwattr DW$T$58, DW_AT_byte_size(0x01)
DW$344	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$344, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$344, DW_AT_accessibility(DW_ACCESS_public)
DW$345	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$57)
	.dwattr DW$345, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$345, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$58


DW$T$30	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$30, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$30, DW_AT_byte_size(0x0e)
DW$346	.dwtag  DW_TAG_subrange_type
	.dwattr DW$346, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$30


DW$T$36	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$36, DW_AT_byte_size(0x08)
DW$347	.dwtag  DW_TAG_subrange_type
	.dwattr DW$347, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$36


DW$T$34	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$34, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$34, DW_AT_byte_size(0x1c)
DW$348	.dwtag  DW_TAG_subrange_type
	.dwattr DW$348, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$34


DW$T$32	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$32, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$32, DW_AT_byte_size(0x1c)
DW$349	.dwtag  DW_TAG_subrange_type
	.dwattr DW$349, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$32


DW$T$29	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$16)
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$29, DW_AT_byte_size(0x1c)
DW$350	.dwtag  DW_TAG_subrange_type
	.dwattr DW$350, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$29


DW$T$37	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$16)
	.dwattr DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$37, DW_AT_byte_size(0x10)
DW$351	.dwtag  DW_TAG_subrange_type
	.dwattr DW$351, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$37


DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$42, DW_AT_byte_size(0x01)
DW$352	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$352, DW_AT_name("anain_select1"), DW_AT_symbol_name("_anain_select1")
	.dwattr DW$352, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$352, DW_AT_accessibility(DW_ACCESS_public)
DW$353	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$353, DW_AT_name("anain_select2"), DW_AT_symbol_name("_anain_select2")
	.dwattr DW$353, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$353, DW_AT_accessibility(DW_ACCESS_public)
DW$354	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$354, DW_AT_name("anain_select3"), DW_AT_symbol_name("_anain_select3")
	.dwattr DW$354, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$354, DW_AT_accessibility(DW_ACCESS_public)
DW$355	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$355, DW_AT_name("program_cs"), DW_AT_symbol_name("_program_cs")
	.dwattr DW$355, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$355, DW_AT_accessibility(DW_ACCESS_public)
DW$356	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$356, DW_AT_name("com_select"), DW_AT_symbol_name("_com_select")
	.dwattr DW$356, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$356, DW_AT_accessibility(DW_ACCESS_public)
DW$357	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$357, DW_AT_name("s1"), DW_AT_symbol_name("_s1")
	.dwattr DW$357, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$357, DW_AT_accessibility(DW_ACCESS_public)
DW$358	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$358, DW_AT_name("s2"), DW_AT_symbol_name("_s2")
	.dwattr DW$358, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$358, DW_AT_accessibility(DW_ACCESS_public)
DW$359	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$359, DW_AT_name("s3"), DW_AT_symbol_name("_s3")
	.dwattr DW$359, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$359, DW_AT_accessibility(DW_ACCESS_public)
DW$360	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$360, DW_AT_name("s4"), DW_AT_symbol_name("_s4")
	.dwattr DW$360, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$360, DW_AT_accessibility(DW_ACCESS_public)
DW$361	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$361, DW_AT_name("s5"), DW_AT_symbol_name("_s5")
	.dwattr DW$361, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$361, DW_AT_accessibility(DW_ACCESS_public)
DW$362	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$362, DW_AT_name("s6"), DW_AT_symbol_name("_s6")
	.dwattr DW$362, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$362, DW_AT_accessibility(DW_ACCESS_public)
DW$363	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$363, DW_AT_name("s7"), DW_AT_symbol_name("_s7")
	.dwattr DW$363, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$363, DW_AT_accessibility(DW_ACCESS_public)
DW$364	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$364, DW_AT_name("s8"), DW_AT_symbol_name("_s8")
	.dwattr DW$364, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$364, DW_AT_accessibility(DW_ACCESS_public)
DW$365	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$365, DW_AT_name("s9"), DW_AT_symbol_name("_s9")
	.dwattr DW$365, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$365, DW_AT_accessibility(DW_ACCESS_public)
DW$366	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$366, DW_AT_name("s10"), DW_AT_symbol_name("_s10")
	.dwattr DW$366, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$366, DW_AT_accessibility(DW_ACCESS_public)
DW$367	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$367, DW_AT_name("s11"), DW_AT_symbol_name("_s11")
	.dwattr DW$367, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$367, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$42


DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$45, DW_AT_byte_size(0x01)
DW$368	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$368, DW_AT_name("s12"), DW_AT_symbol_name("_s12")
	.dwattr DW$368, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$368, DW_AT_accessibility(DW_ACCESS_public)
DW$369	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$369, DW_AT_name("s13"), DW_AT_symbol_name("_s13")
	.dwattr DW$369, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$369, DW_AT_accessibility(DW_ACCESS_public)
DW$370	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$370, DW_AT_name("s14"), DW_AT_symbol_name("_s14")
	.dwattr DW$370, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$370, DW_AT_accessibility(DW_ACCESS_public)
DW$371	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$371, DW_AT_name("s15"), DW_AT_symbol_name("_s15")
	.dwattr DW$371, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$371, DW_AT_accessibility(DW_ACCESS_public)
DW$372	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$372, DW_AT_name("s16"), DW_AT_symbol_name("_s16")
	.dwattr DW$372, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$372, DW_AT_accessibility(DW_ACCESS_public)
DW$373	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$373, DW_AT_name("s17"), DW_AT_symbol_name("_s17")
	.dwattr DW$373, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$373, DW_AT_accessibility(DW_ACCESS_public)
DW$374	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$374, DW_AT_name("s18"), DW_AT_symbol_name("_s18")
	.dwattr DW$374, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$374, DW_AT_accessibility(DW_ACCESS_public)
DW$375	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$375, DW_AT_name("s19"), DW_AT_symbol_name("_s19")
	.dwattr DW$375, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$375, DW_AT_accessibility(DW_ACCESS_public)
DW$376	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$376, DW_AT_name("disp485txen"), DW_AT_symbol_name("_disp485txen")
	.dwattr DW$376, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$376, DW_AT_accessibility(DW_ACCESS_public)
DW$377	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$377, DW_AT_name("disp485rxen"), DW_AT_symbol_name("_disp485rxen")
	.dwattr DW$377, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$377, DW_AT_accessibility(DW_ACCESS_public)
DW$378	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$378, DW_AT_name("gpio1"), DW_AT_symbol_name("_gpio1")
	.dwattr DW$378, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$378, DW_AT_accessibility(DW_ACCESS_public)
DW$379	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$379, DW_AT_name("gpio2"), DW_AT_symbol_name("_gpio2")
	.dwattr DW$379, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$379, DW_AT_accessibility(DW_ACCESS_public)
DW$380	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$380, DW_AT_name("gpio3"), DW_AT_symbol_name("_gpio3")
	.dwattr DW$380, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$380, DW_AT_accessibility(DW_ACCESS_public)
DW$381	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$381, DW_AT_name("gpio4"), DW_AT_symbol_name("_gpio4")
	.dwattr DW$381, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$381, DW_AT_accessibility(DW_ACCESS_public)
DW$382	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$382, DW_AT_name("rtccs"), DW_AT_symbol_name("_rtccs")
	.dwattr DW$382, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$382, DW_AT_accessibility(DW_ACCESS_public)
DW$383	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$383, DW_AT_name("op3"), DW_AT_symbol_name("_op3")
	.dwattr DW$383, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$383, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$45


DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$48, DW_AT_byte_size(0x01)
DW$384	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$384, DW_AT_name("modeswitch"), DW_AT_symbol_name("_modeswitch")
	.dwattr DW$384, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$384, DW_AT_accessibility(DW_ACCESS_public)
DW$385	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$385, DW_AT_name("led1"), DW_AT_symbol_name("_led1")
	.dwattr DW$385, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$385, DW_AT_accessibility(DW_ACCESS_public)
DW$386	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$386, DW_AT_name("bit2"), DW_AT_symbol_name("_bit2")
	.dwattr DW$386, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$386, DW_AT_accessibility(DW_ACCESS_public)
DW$387	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$387, DW_AT_name("bit3"), DW_AT_symbol_name("_bit3")
	.dwattr DW$387, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$387, DW_AT_accessibility(DW_ACCESS_public)
DW$388	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$388, DW_AT_name("bit4"), DW_AT_symbol_name("_bit4")
	.dwattr DW$388, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$388, DW_AT_accessibility(DW_ACCESS_public)
DW$389	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$389, DW_AT_name("ccselect1"), DW_AT_symbol_name("_ccselect1")
	.dwattr DW$389, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$389, DW_AT_accessibility(DW_ACCESS_public)
DW$390	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$390, DW_AT_name("ccselect2"), DW_AT_symbol_name("_ccselect2")
	.dwattr DW$390, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$390, DW_AT_accessibility(DW_ACCESS_public)
DW$391	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$391, DW_AT_name("bit7"), DW_AT_symbol_name("_bit7")
	.dwattr DW$391, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$391, DW_AT_accessibility(DW_ACCESS_public)
DW$392	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$392, DW_AT_name("bit8"), DW_AT_symbol_name("_bit8")
	.dwattr DW$392, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$392, DW_AT_accessibility(DW_ACCESS_public)
DW$393	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$393, DW_AT_name("bit9"), DW_AT_symbol_name("_bit9")
	.dwattr DW$393, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$393, DW_AT_accessibility(DW_ACCESS_public)
DW$394	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$394, DW_AT_name("bit10"), DW_AT_symbol_name("_bit10")
	.dwattr DW$394, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$394, DW_AT_accessibility(DW_ACCESS_public)
DW$395	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$395, DW_AT_name("bit11"), DW_AT_symbol_name("_bit11")
	.dwattr DW$395, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$395, DW_AT_accessibility(DW_ACCESS_public)
DW$396	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$396, DW_AT_name("bit12"), DW_AT_symbol_name("_bit12")
	.dwattr DW$396, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$396, DW_AT_accessibility(DW_ACCESS_public)
DW$397	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$397, DW_AT_name("bit13"), DW_AT_symbol_name("_bit13")
	.dwattr DW$397, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$397, DW_AT_accessibility(DW_ACCESS_public)
DW$398	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$398, DW_AT_name("bit14"), DW_AT_symbol_name("_bit14")
	.dwattr DW$398, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$398, DW_AT_accessibility(DW_ACCESS_public)
DW$399	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$399, DW_AT_name("bit15"), DW_AT_symbol_name("_bit15")
	.dwattr DW$399, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$399, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$48


DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$51, DW_AT_byte_size(0x01)
DW$400	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$400, DW_AT_name("macint"), DW_AT_symbol_name("_macint")
	.dwattr DW$400, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$400, DW_AT_accessibility(DW_ACCESS_public)
DW$401	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$401, DW_AT_name("rpm1"), DW_AT_symbol_name("_rpm1")
	.dwattr DW$401, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$401, DW_AT_accessibility(DW_ACCESS_public)
DW$402	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$402, DW_AT_name("uartirq"), DW_AT_symbol_name("_uartirq")
	.dwattr DW$402, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$402, DW_AT_accessibility(DW_ACCESS_public)
DW$403	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$403, DW_AT_name("bit3"), DW_AT_symbol_name("_bit3")
	.dwattr DW$403, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$403, DW_AT_accessibility(DW_ACCESS_public)
DW$404	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$404, DW_AT_name("bit4"), DW_AT_symbol_name("_bit4")
	.dwattr DW$404, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$404, DW_AT_accessibility(DW_ACCESS_public)
DW$405	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$405, DW_AT_name("bit5"), DW_AT_symbol_name("_bit5")
	.dwattr DW$405, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$405, DW_AT_accessibility(DW_ACCESS_public)
DW$406	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$406, DW_AT_name("bit6"), DW_AT_symbol_name("_bit6")
	.dwattr DW$406, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$406, DW_AT_accessibility(DW_ACCESS_public)
DW$407	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$407, DW_AT_name("bit7"), DW_AT_symbol_name("_bit7")
	.dwattr DW$407, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$407, DW_AT_accessibility(DW_ACCESS_public)
DW$408	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$408, DW_AT_name("bit8"), DW_AT_symbol_name("_bit8")
	.dwattr DW$408, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$408, DW_AT_accessibility(DW_ACCESS_public)
DW$409	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$409, DW_AT_name("bit9"), DW_AT_symbol_name("_bit9")
	.dwattr DW$409, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$409, DW_AT_accessibility(DW_ACCESS_public)
DW$410	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$410, DW_AT_name("bit10"), DW_AT_symbol_name("_bit10")
	.dwattr DW$410, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$410, DW_AT_accessibility(DW_ACCESS_public)
DW$411	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$411, DW_AT_name("bit11"), DW_AT_symbol_name("_bit11")
	.dwattr DW$411, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$411, DW_AT_accessibility(DW_ACCESS_public)
DW$412	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$412, DW_AT_name("bit12"), DW_AT_symbol_name("_bit12")
	.dwattr DW$412, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$412, DW_AT_accessibility(DW_ACCESS_public)
DW$413	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$413, DW_AT_name("bit13"), DW_AT_symbol_name("_bit13")
	.dwattr DW$413, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$413, DW_AT_accessibility(DW_ACCESS_public)
DW$414	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$414, DW_AT_name("bit14"), DW_AT_symbol_name("_bit14")
	.dwattr DW$414, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$414, DW_AT_accessibility(DW_ACCESS_public)
DW$415	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$415, DW_AT_name("bit15"), DW_AT_symbol_name("_bit15")
	.dwattr DW$415, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$415, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$51


DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$54, DW_AT_byte_size(0x01)
DW$416	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$416, DW_AT_name("spimo"), DW_AT_symbol_name("_spimo")
	.dwattr DW$416, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$416, DW_AT_accessibility(DW_ACCESS_public)
DW$417	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$417, DW_AT_name("spimi"), DW_AT_symbol_name("_spimi")
	.dwattr DW$417, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$417, DW_AT_accessibility(DW_ACCESS_public)
DW$418	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$418, DW_AT_name("spiclk"), DW_AT_symbol_name("_spiclk")
	.dwattr DW$418, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$418, DW_AT_accessibility(DW_ACCESS_public)
DW$419	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$419, DW_AT_name("spiste"), DW_AT_symbol_name("_spiste")
	.dwattr DW$419, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$419, DW_AT_accessibility(DW_ACCESS_public)
DW$420	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$420, DW_AT_name("scitxa"), DW_AT_symbol_name("_scitxa")
	.dwattr DW$420, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$420, DW_AT_accessibility(DW_ACCESS_public)
DW$421	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$421, DW_AT_name("scirxa"), DW_AT_symbol_name("_scirxa")
	.dwattr DW$421, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$421, DW_AT_accessibility(DW_ACCESS_public)
DW$422	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$422, DW_AT_name("op1"), DW_AT_symbol_name("_op1")
	.dwattr DW$422, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$422, DW_AT_accessibility(DW_ACCESS_public)
DW$423	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$423, DW_AT_name("op2"), DW_AT_symbol_name("_op2")
	.dwattr DW$423, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$423, DW_AT_accessibility(DW_ACCESS_public)
DW$424	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$424, DW_AT_name("spiselect1"), DW_AT_symbol_name("_spiselect1")
	.dwattr DW$424, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$424, DW_AT_accessibility(DW_ACCESS_public)
DW$425	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$425, DW_AT_name("spiselect2"), DW_AT_symbol_name("_spiselect2")
	.dwattr DW$425, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$425, DW_AT_accessibility(DW_ACCESS_public)
DW$426	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$426, DW_AT_name("spiselect3"), DW_AT_symbol_name("_spiselect3")
	.dwattr DW$426, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$426, DW_AT_accessibility(DW_ACCESS_public)
DW$427	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$427, DW_AT_name("pc485rxen"), DW_AT_symbol_name("_pc485rxen")
	.dwattr DW$427, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$427, DW_AT_accessibility(DW_ACCESS_public)
DW$428	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$428, DW_AT_name("pc485txen"), DW_AT_symbol_name("_pc485txen")
	.dwattr DW$428, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$428, DW_AT_accessibility(DW_ACCESS_public)
DW$429	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$429, DW_AT_name("modeselect"), DW_AT_symbol_name("_modeselect")
	.dwattr DW$429, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$429, DW_AT_accessibility(DW_ACCESS_public)
DW$430	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$430, DW_AT_name("xf_xplldis"), DW_AT_symbol_name("_xf_xplldis")
	.dwattr DW$430, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$430, DW_AT_accessibility(DW_ACCESS_public)
DW$431	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$431, DW_AT_name("notused3"), DW_AT_symbol_name("_notused3")
	.dwattr DW$431, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$431, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$54


DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$57, DW_AT_byte_size(0x01)
DW$432	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$432, DW_AT_name("bit0"), DW_AT_symbol_name("_bit0")
	.dwattr DW$432, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$432, DW_AT_accessibility(DW_ACCESS_public)
DW$433	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$433, DW_AT_name("bit1"), DW_AT_symbol_name("_bit1")
	.dwattr DW$433, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$433, DW_AT_accessibility(DW_ACCESS_public)
DW$434	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$434, DW_AT_name("bit2"), DW_AT_symbol_name("_bit2")
	.dwattr DW$434, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$434, DW_AT_accessibility(DW_ACCESS_public)
DW$435	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$435, DW_AT_name("bit3"), DW_AT_symbol_name("_bit3")
	.dwattr DW$435, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$435, DW_AT_accessibility(DW_ACCESS_public)
DW$436	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$436, DW_AT_name("scitxb"), DW_AT_symbol_name("_scitxb")
	.dwattr DW$436, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$436, DW_AT_accessibility(DW_ACCESS_public)
DW$437	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$437, DW_AT_name("scirxb"), DW_AT_symbol_name("_scirxb")
	.dwattr DW$437, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$437, DW_AT_accessibility(DW_ACCESS_public)
DW$438	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$438, DW_AT_name("bit6"), DW_AT_symbol_name("_bit6")
	.dwattr DW$438, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$438, DW_AT_accessibility(DW_ACCESS_public)
DW$439	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$439, DW_AT_name("bit7"), DW_AT_symbol_name("_bit7")
	.dwattr DW$439, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$439, DW_AT_accessibility(DW_ACCESS_public)
DW$440	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$440, DW_AT_name("bit8"), DW_AT_symbol_name("_bit8")
	.dwattr DW$440, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$440, DW_AT_accessibility(DW_ACCESS_public)
DW$441	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$441, DW_AT_name("bit9"), DW_AT_symbol_name("_bit9")
	.dwattr DW$441, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$441, DW_AT_accessibility(DW_ACCESS_public)
DW$442	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$442, DW_AT_name("bit10"), DW_AT_symbol_name("_bit10")
	.dwattr DW$442, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$442, DW_AT_accessibility(DW_ACCESS_public)
DW$443	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$443, DW_AT_name("bit11"), DW_AT_symbol_name("_bit11")
	.dwattr DW$443, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$443, DW_AT_accessibility(DW_ACCESS_public)
DW$444	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$444, DW_AT_name("bit12"), DW_AT_symbol_name("_bit12")
	.dwattr DW$444, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$444, DW_AT_accessibility(DW_ACCESS_public)
DW$445	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$445, DW_AT_name("bit13"), DW_AT_symbol_name("_bit13")
	.dwattr DW$445, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$445, DW_AT_accessibility(DW_ACCESS_public)
DW$446	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$446, DW_AT_name("bit14"), DW_AT_symbol_name("_bit14")
	.dwattr DW$446, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$446, DW_AT_accessibility(DW_ACCESS_public)
DW$447	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$447, DW_AT_name("bit15"), DW_AT_symbol_name("_bit15")
	.dwattr DW$447, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$447, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$57

DW$T$16	.dwtag  DW_TAG_base_type, DW_AT_name("float")
	.dwattr DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$16, DW_AT_byte_size(0x02)

	.dwattr DW$124, DW_AT_external(0x01)
	.dwattr DW$126, DW_AT_external(0x01)
	.dwattr DW$127, DW_AT_external(0x01)
	.dwattr DW$120, DW_AT_external(0x01)
	.dwattr DW$123, DW_AT_external(0x01)
	.dwattr DW$125, DW_AT_external(0x01)
	.dwattr DW$105, DW_AT_external(0x01)
	.dwattr DW$105, DW_AT_type(*DW$T$10)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$448	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$448, DW_AT_location[DW_OP_reg0]
DW$449	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$449, DW_AT_location[DW_OP_reg1]
DW$450	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$450, DW_AT_location[DW_OP_reg2]
DW$451	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$451, DW_AT_location[DW_OP_reg3]
DW$452	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$452, DW_AT_location[DW_OP_reg4]
DW$453	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$453, DW_AT_location[DW_OP_reg5]
DW$454	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$454, DW_AT_location[DW_OP_reg6]
DW$455	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$455, DW_AT_location[DW_OP_reg7]
DW$456	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$456, DW_AT_location[DW_OP_reg8]
DW$457	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$457, DW_AT_location[DW_OP_reg9]
DW$458	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$458, DW_AT_location[DW_OP_reg10]
DW$459	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$459, DW_AT_location[DW_OP_reg11]
DW$460	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$460, DW_AT_location[DW_OP_reg12]
DW$461	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$461, DW_AT_location[DW_OP_reg13]
DW$462	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$462, DW_AT_location[DW_OP_reg14]
DW$463	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$463, DW_AT_location[DW_OP_reg15]
DW$464	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$464, DW_AT_location[DW_OP_reg16]
DW$465	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$465, DW_AT_location[DW_OP_reg17]
DW$466	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$466, DW_AT_location[DW_OP_reg18]
DW$467	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$467, DW_AT_location[DW_OP_reg19]
DW$468	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$468, DW_AT_location[DW_OP_reg20]
DW$469	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$469, DW_AT_location[DW_OP_reg21]
DW$470	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$470, DW_AT_location[DW_OP_reg22]
DW$471	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$471, DW_AT_location[DW_OP_reg23]
DW$472	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$472, DW_AT_location[DW_OP_reg24]
DW$473	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$473, DW_AT_location[DW_OP_reg25]
DW$474	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$474, DW_AT_location[DW_OP_reg26]
DW$475	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$475, DW_AT_location[DW_OP_reg27]
DW$476	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$476, DW_AT_location[DW_OP_reg28]
DW$477	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$477, DW_AT_location[DW_OP_reg29]
DW$478	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$478, DW_AT_location[DW_OP_reg30]
DW$479	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$479, DW_AT_location[DW_OP_reg31]
DW$480	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$480, DW_AT_location[DW_OP_regx 0x20]
DW$481	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$481, DW_AT_location[DW_OP_regx 0x21]
DW$482	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$482, DW_AT_location[DW_OP_regx 0x22]
DW$483	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$483, DW_AT_location[DW_OP_regx 0x23]
DW$484	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$484, DW_AT_location[DW_OP_regx 0x24]
DW$485	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$485, DW_AT_location[DW_OP_regx 0x25]
DW$486	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$486, DW_AT_location[DW_OP_regx 0x26]
DW$487	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$487, DW_AT_location[DW_OP_regx 0x27]
DW$488	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$488, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

