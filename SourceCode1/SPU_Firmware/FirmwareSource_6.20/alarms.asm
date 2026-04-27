;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Thu Aug 18 12:16:06 2016                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("alarms.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("sprintf"), DW_AT_symbol_name("_sprintf")
	.dwattr DW$1, DW_AT_type(*DW$T$10)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$53)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$64)
DW$4	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$1


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("DebugStringOut"), DW_AT_symbol_name("_DebugStringOut")
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$53)
	.dwendtag DW$5


DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("AnalogOOR"), DW_AT_symbol_name("_AnalogOOR")
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)

DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("GetSensorAlarmMask"), DW_AT_symbol_name("_GetSensorAlarmMask")
	.dwattr DW$8, DW_AT_type(*DW$T$11)
	.dwattr DW$8, DW_AT_declaration(0x01)
	.dwattr DW$8, DW_AT_external(0x01)
DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$8


DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("SetRPMChan"), DW_AT_symbol_name("_SetRPMChan")
	.dwattr DW$10, DW_AT_declaration(0x01)
	.dwattr DW$10, DW_AT_external(0x01)
DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$10


DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("GetStatus2Flags"), DW_AT_symbol_name("_GetStatus2Flags")
	.dwattr DW$13, DW_AT_type(*DW$T$95)
	.dwattr DW$13, DW_AT_declaration(0x01)
	.dwattr DW$13, DW_AT_external(0x01)
DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$13


DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadPCCommsFlag"), DW_AT_symbol_name("_ReadPCCommsFlag")
	.dwattr DW$15, DW_AT_type(*DW$T$10)
	.dwattr DW$15, DW_AT_declaration(0x01)
	.dwattr DW$15, DW_AT_external(0x01)

DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteNVMemory"), DW_AT_symbol_name("_WriteNVMemory")
	.dwattr DW$16, DW_AT_type(*DW$T$10)
	.dwattr DW$16, DW_AT_declaration(0x01)
	.dwattr DW$16, DW_AT_external(0x01)

DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("InputNumtoString"), DW_AT_symbol_name("_InputNumtoString")
	.dwattr DW$17, DW_AT_type(*DW$T$10)
	.dwattr DW$17, DW_AT_declaration(0x01)
	.dwattr DW$17, DW_AT_external(0x01)

DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteAlarmListtoNVMEM"), DW_AT_symbol_name("_WriteAlarmListtoNVMEM")
	.dwattr DW$18, DW_AT_type(*DW$T$10)
	.dwattr DW$18, DW_AT_declaration(0x01)
	.dwattr DW$18, DW_AT_external(0x01)

DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("BitSet"), DW_AT_symbol_name("_BitSet")
	.dwattr DW$19, DW_AT_type(*DW$T$10)
	.dwattr DW$19, DW_AT_declaration(0x01)
	.dwattr DW$19, DW_AT_external(0x01)

DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("BitClear"), DW_AT_symbol_name("_BitClear")
	.dwattr DW$20, DW_AT_type(*DW$T$10)
	.dwattr DW$20, DW_AT_declaration(0x01)
	.dwattr DW$20, DW_AT_external(0x01)

DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("CheckBitSet"), DW_AT_symbol_name("_CheckBitSet")
	.dwattr DW$21, DW_AT_type(*DW$T$10)
	.dwattr DW$21, DW_AT_declaration(0x01)
	.dwattr DW$21, DW_AT_external(0x01)
DW$22	.dwtag  DW_TAG_variable, DW_AT_name("stringbuffer"), DW_AT_symbol_name("_stringbuffer")
	.dwattr DW$22, DW_AT_type(*DW$T$139)
	.dwattr DW$22, DW_AT_declaration(0x01)
	.dwattr DW$22, DW_AT_external(0x01)
DW$23	.dwtag  DW_TAG_variable, DW_AT_name("eventlogentry"), DW_AT_symbol_name("_eventlogentry")
	.dwattr DW$23, DW_AT_type(*DW$T$114)
	.dwattr DW$23, DW_AT_declaration(0x01)
	.dwattr DW$23, DW_AT_external(0x01)
DW$24	.dwtag  DW_TAG_variable, DW_AT_name("settings"), DW_AT_symbol_name("_settings")
	.dwattr DW$24, DW_AT_type(*DW$T$116)
	.dwattr DW$24, DW_AT_declaration(0x01)
	.dwattr DW$24, DW_AT_external(0x01)
DW$25	.dwtag  DW_TAG_variable, DW_AT_name("timers"), DW_AT_symbol_name("_timers")
	.dwattr DW$25, DW_AT_type(*DW$T$118)
	.dwattr DW$25, DW_AT_declaration(0x01)
	.dwattr DW$25, DW_AT_external(0x01)
DW$26	.dwtag  DW_TAG_variable, DW_AT_name("allsensors"), DW_AT_symbol_name("_allsensors")
	.dwattr DW$26, DW_AT_type(*DW$T$120)
	.dwattr DW$26, DW_AT_declaration(0x01)
	.dwattr DW$26, DW_AT_external(0x01)
DW$27	.dwtag  DW_TAG_variable, DW_AT_name("cylinders"), DW_AT_symbol_name("_cylinders")
	.dwattr DW$27, DW_AT_type(*DW$T$123)
	.dwattr DW$27, DW_AT_declaration(0x01)
	.dwattr DW$27, DW_AT_external(0x01)
DW$28	.dwtag  DW_TAG_variable, DW_AT_name("sensor"), DW_AT_symbol_name("_sensor")
	.dwattr DW$28, DW_AT_type(*DW$T$127)
	.dwattr DW$28, DW_AT_declaration(0x01)
	.dwattr DW$28, DW_AT_external(0x01)
DW$29	.dwtag  DW_TAG_variable, DW_AT_name("damagemon"), DW_AT_symbol_name("_damagemon")
	.dwattr DW$29, DW_AT_type(*DW$T$130)
	.dwattr DW$29, DW_AT_declaration(0x01)
	.dwattr DW$29, DW_AT_external(0x01)
DW$30	.dwtag  DW_TAG_variable, DW_AT_name("damalarms"), DW_AT_symbol_name("_damalarms")
	.dwattr DW$30, DW_AT_type(*DW$T$131)
	.dwattr DW$30, DW_AT_declaration(0x01)
	.dwattr DW$30, DW_AT_external(0x01)
DW$31	.dwtag  DW_TAG_variable, DW_AT_name("slave485mb"), DW_AT_symbol_name("_slave485mb")
	.dwattr DW$31, DW_AT_type(*DW$T$133)
	.dwattr DW$31, DW_AT_declaration(0x01)
	.dwattr DW$31, DW_AT_external(0x01)
DW$32	.dwtag  DW_TAG_variable, DW_AT_name("waterinoil"), DW_AT_symbol_name("_waterinoil")
	.dwattr DW$32, DW_AT_type(*DW$T$134)
	.dwattr DW$32, DW_AT_declaration(0x01)
	.dwattr DW$32, DW_AT_external(0x01)
DW$33	.dwtag  DW_TAG_variable, DW_AT_name("digout"), DW_AT_symbol_name("_digout")
	.dwattr DW$33, DW_AT_type(*DW$T$136)
	.dwattr DW$33, DW_AT_declaration(0x01)
	.dwattr DW$33, DW_AT_external(0x01)
	.global	_status3
_status3:	.usect	".ebss",28,1,0
DW$34	.dwtag  DW_TAG_variable, DW_AT_name("status3"), DW_AT_symbol_name("_status3")
	.dwattr DW$34, DW_AT_location[DW_OP_addr _status3]
	.dwattr DW$34, DW_AT_type(*DW$T$109)
	.dwattr DW$34, DW_AT_external(0x01)
	.global	_noisefilterLOAD
_noisefilterLOAD:	.usect	".ebss",28,1,0
DW$35	.dwtag  DW_TAG_variable, DW_AT_name("noisefilterLOAD"), DW_AT_symbol_name("_noisefilterLOAD")
	.dwattr DW$35, DW_AT_location[DW_OP_addr _noisefilterLOAD]
	.dwattr DW$35, DW_AT_type(*DW$T$73)
	.dwattr DW$35, DW_AT_external(0x01)
	.global	_damagemonignore
_damagemonignore:	.usect	".ebss",28,1,0
DW$36	.dwtag  DW_TAG_variable, DW_AT_name("damagemonignore"), DW_AT_symbol_name("_damagemonignore")
	.dwattr DW$36, DW_AT_location[DW_OP_addr _damagemonignore]
	.dwattr DW$36, DW_AT_type(*DW$T$73)
	.dwattr DW$36, DW_AT_external(0x01)
	.global	_alarms
_alarms:	.usect	".ebss",1,1,0
DW$37	.dwtag  DW_TAG_variable, DW_AT_name("alarms"), DW_AT_symbol_name("_alarms")
	.dwattr DW$37, DW_AT_location[DW_OP_addr _alarms]
	.dwattr DW$37, DW_AT_type(*DW$T$100)
	.dwattr DW$37, DW_AT_external(0x01)
	.global	_bitalarmlist
_bitalarmlist:	.usect	".ebss",33,1,0
DW$38	.dwtag  DW_TAG_variable, DW_AT_name("bitalarmlist"), DW_AT_symbol_name("_bitalarmlist")
	.dwattr DW$38, DW_AT_location[DW_OP_addr _bitalarmlist]
	.dwattr DW$38, DW_AT_type(*DW$T$89)
	.dwattr DW$38, DW_AT_external(0x01)
	.global	_biteventlist
_biteventlist:	.usect	".ebss",48,1,0
DW$39	.dwtag  DW_TAG_variable, DW_AT_name("biteventlist"), DW_AT_symbol_name("_biteventlist")
	.dwattr DW$39, DW_AT_location[DW_OP_addr _biteventlist]
	.dwattr DW$39, DW_AT_type(*DW$T$91)
	.dwattr DW$39, DW_AT_external(0x01)
	.global	_biteventpos
_biteventpos:	.usect	".ebss",1,1,0
DW$40	.dwtag  DW_TAG_variable, DW_AT_name("biteventpos"), DW_AT_symbol_name("_biteventpos")
	.dwattr DW$40, DW_AT_location[DW_OP_addr _biteventpos]
	.dwattr DW$40, DW_AT_type(*DW$T$11)
	.dwattr DW$40, DW_AT_external(0x01)
	.global	_bearingstatus
_bearingstatus:	.usect	".ebss",44,1,0
DW$41	.dwtag  DW_TAG_variable, DW_AT_name("bearingstatus"), DW_AT_symbol_name("_bearingstatus")
	.dwattr DW$41, DW_AT_location[DW_OP_addr _bearingstatus]
	.dwattr DW$41, DW_AT_type(*DW$T$137)
	.dwattr DW$41, DW_AT_external(0x01)
;	C:\CCStudio_v3.3\C2000\cgtools\bin\opt2000.exe C:\Users\Andrew\AppData\Local\Temp\TI6882 C:\Users\Andrew\AppData\Local\Temp\TI6884 
;	C:\CCStudio_v3.3\C2000\cgtools\bin\ac2000.exe -q -D_INLINE -DLARGE_MODEL -IC:/CCStudio_v3.3/C2000/xdais/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/bios/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/rtdx/include/c2000 -IC:/CCStudio_v3.3/C2000/cgtools/include --version=28 --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\Andrew\AppData\Local\Temp\TI6882 --template_info_file C:\Users\Andrew\AppData\Local\Temp\TI6886 --object_file 
	.sect	".text"
	.global	_InitSystemAlarms

DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("InitSystemAlarms"), DW_AT_symbol_name("_InitSystemAlarms")
	.dwattr DW$42, DW_AT_low_pc(_InitSystemAlarms)
	.dwattr DW$42, DW_AT_high_pc(0x00)
	.dwattr DW$42, DW_AT_begin_file("alarms.c")
	.dwattr DW$42, DW_AT_begin_line(0x29)
	.dwattr DW$42, DW_AT_begin_column(0x06)
	.dwattr DW$42, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$42, DW_AT_skeletal(0x01)
	.dwpsn	"alarms.c",42,1

;***************************************************************
;* FNAME: _InitSystemAlarms             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_InitSystemAlarms:
        MOVW      DP,#_eventlogentry+63
        MOV       @_eventlogentry+63,#0 ; |46| 
        MOVW      DP,#_eventlogentry+64
        MOVB      AL,#0
        MOV       @_eventlogentry+64,#0 ; |47| 
        MOVW      DP,#_eventlogentry+65
        MOV       @_eventlogentry+65,#0 ; |48| 
        MOVW      DP,#_eventlogentry+66
        MOV       @_eventlogentry+66,#0 ; |49| 
        MOVW      DP,#_eventlogentry+67
        MOV       @_eventlogentry+67,#0 ; |50| 
	.dwpsn	"alarms.c",53,0
        SETC      SXM
L1:    
DW$L$_InitSystemAlarms$2$B:
	.dwpsn	"alarms.c",54,0
        MOV       ACC,AL                ; |55| 
        MOVL      XAR4,#_noisefilterLOAD ; |55| 
        ADDL      XAR4,ACC
        ADDB      AL,#1                 ; |53| 
        CMPB      AL,#28                ; |53| 
        MOV       *+XAR4[0],#3          ; |55| 
	.dwpsn	"alarms.c",56,0
        BF        L1,LT                 ; |53| 
        ; branchcc occurs ; |53| 
DW$L$_InitSystemAlarms$2$E:
        MOVB      AL,#0
	.dwpsn	"alarms.c",59,0
        SETC      SXM
L2:    
DW$L$_InitSystemAlarms$4$B:
        MOV       ACC,AL                ; |60| 
        MOVL      XAR4,#_bearingstatus  ; |60| 
        ADDL      XAR4,ACC
        ADDB      AL,#1                 ; |59| 
        CMPB      AL,#16                ; |59| 
        MOV       *+XAR4[0],#0          ; |60| 
	.dwpsn	"alarms.c",61,0
        BF        L2,LT                 ; |59| 
        ; branchcc occurs ; |59| 
DW$L$_InitSystemAlarms$4$E:
	.dwpsn	"alarms.c",63,1
        LRETR
        ; return occurs

DW$43	.dwtag  DW_TAG_loop
	.dwattr DW$43, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\alarms.asm:L2:1:1471518966")
	.dwattr DW$43, DW_AT_begin_file("alarms.c")
	.dwattr DW$43, DW_AT_begin_line(0x3b)
	.dwattr DW$43, DW_AT_end_line(0x3d)
DW$44	.dwtag  DW_TAG_loop_range
	.dwattr DW$44, DW_AT_low_pc(DW$L$_InitSystemAlarms$4$B)
	.dwattr DW$44, DW_AT_high_pc(DW$L$_InitSystemAlarms$4$E)
	.dwendtag DW$43


DW$45	.dwtag  DW_TAG_loop
	.dwattr DW$45, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\alarms.asm:L1:1:1471518966")
	.dwattr DW$45, DW_AT_begin_file("alarms.c")
	.dwattr DW$45, DW_AT_begin_line(0x35)
	.dwattr DW$45, DW_AT_end_line(0x38)
DW$46	.dwtag  DW_TAG_loop_range
	.dwattr DW$46, DW_AT_low_pc(DW$L$_InitSystemAlarms$2$B)
	.dwattr DW$46, DW_AT_high_pc(DW$L$_InitSystemAlarms$2$E)
	.dwendtag DW$45

	.dwattr DW$42, DW_AT_end_file("alarms.c")
	.dwattr DW$42, DW_AT_end_line(0x3f)
	.dwattr DW$42, DW_AT_end_column(0x01)
	.dwendtag DW$42

	.sect	".text"
	.global	_ClearStatusFlagsforSlave

DW$47	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearStatusFlagsforSlave"), DW_AT_symbol_name("_ClearStatusFlagsforSlave")
	.dwattr DW$47, DW_AT_low_pc(_ClearStatusFlagsforSlave)
	.dwattr DW$47, DW_AT_high_pc(0x00)
	.dwattr DW$47, DW_AT_begin_file("alarms.c")
	.dwattr DW$47, DW_AT_begin_line(0x41)
	.dwattr DW$47, DW_AT_begin_column(0x06)
	.dwattr DW$47, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$47, DW_AT_skeletal(0x01)
	.dwpsn	"alarms.c",66,1

;***************************************************************
;* FNAME: _ClearStatusFlagsforSlave     FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_ClearStatusFlagsforSlave:
        MOVL      *SP++,XAR1
	.dwpsn	"alarms.c",70,0
        MOVB      XAR1,#0
L3:    
DW$L$_ClearStatusFlagsforSlave$2$B:
	.dwpsn	"alarms.c",71,0
        MOV       AL,AR1                ; |72| 
        LCR       #_Status3Flags        ; |72| 
        ; call occurs [#_Status3Flags] ; |72| 
        ADDB      XAR1,#1               ; |70| 
        MOV       AL,AR1                ; |70| 
        CMPB      AL,#28                ; |70| 
        MOV       *+XAR4[0],#0          ; |73| 
	.dwpsn	"alarms.c",74,0
        BF        L3,LO                 ; |70| 
        ; branchcc occurs ; |70| 
DW$L$_ClearStatusFlagsforSlave$2$E:
        LCR       #_GetAlarmFlags       ; |75| 
        ; call occurs [#_GetAlarmFlags] ; |75| 
        MOV       *+XAR4[0],#0          ; |76| 
        MOVL      XAR1,*--SP
	.dwpsn	"alarms.c",77,1
        LRETR
        ; return occurs

DW$48	.dwtag  DW_TAG_loop
	.dwattr DW$48, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\alarms.asm:L3:1:1471518966")
	.dwattr DW$48, DW_AT_begin_file("alarms.c")
	.dwattr DW$48, DW_AT_begin_line(0x46)
	.dwattr DW$48, DW_AT_end_line(0x4a)
DW$49	.dwtag  DW_TAG_loop_range
	.dwattr DW$49, DW_AT_low_pc(DW$L$_ClearStatusFlagsforSlave$2$B)
	.dwattr DW$49, DW_AT_high_pc(DW$L$_ClearStatusFlagsforSlave$2$E)
	.dwendtag DW$48

	.dwattr DW$47, DW_AT_end_file("alarms.c")
	.dwattr DW$47, DW_AT_end_line(0x4d)
	.dwattr DW$47, DW_AT_end_column(0x01)
	.dwendtag DW$47

	.sect	".text"
	.global	_GetAlarmFlags

DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("GetAlarmFlags"), DW_AT_symbol_name("_GetAlarmFlags")
	.dwattr DW$50, DW_AT_low_pc(_GetAlarmFlags)
	.dwattr DW$50, DW_AT_high_pc(0x00)
	.dwattr DW$50, DW_AT_begin_file("alarms.c")
	.dwattr DW$50, DW_AT_begin_line(0x51)
	.dwattr DW$50, DW_AT_begin_column(0x10)
	.dwattr DW$50, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$50, DW_AT_skeletal(0x01)
	.dwpsn	"alarms.c",82,1

;***************************************************************
;* FNAME: _GetAlarmFlags                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_GetAlarmFlags:
        MOVL      XAR4,#_alarms         ; |83| 
	.dwpsn	"alarms.c",84,1
        LRETR
        ; return occurs
	.dwattr DW$50, DW_AT_end_file("alarms.c")
	.dwattr DW$50, DW_AT_end_line(0x54)
	.dwattr DW$50, DW_AT_end_column(0x01)
	.dwendtag DW$50

	.sect	".text"
	.global	_Status3Flags

DW$51	.dwtag  DW_TAG_subprogram, DW_AT_name("Status3Flags"), DW_AT_symbol_name("_Status3Flags")
	.dwattr DW$51, DW_AT_low_pc(_Status3Flags)
	.dwattr DW$51, DW_AT_high_pc(0x00)
	.dwattr DW$51, DW_AT_begin_file("alarms.c")
	.dwattr DW$51, DW_AT_begin_line(0x59)
	.dwattr DW$51, DW_AT_begin_column(0x11)
	.dwattr DW$51, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$51, DW_AT_skeletal(0x01)
	.dwpsn	"alarms.c",90,1

;***************************************************************
;* FNAME: _Status3Flags                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_Status3Flags:
;* AL    assigned to _chan
DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$52, DW_AT_type(*DW$T$11)
	.dwattr DW$52, DW_AT_location[DW_OP_reg0]
        MOVZ      AR6,AL                ; |90| 
        MOVL      XAR4,#_status3        ; |91| 
        MOVL      ACC,XAR4              ; |91| 
        ADDU      ACC,AR6               ; |91| 
        MOVL      XAR4,ACC              ; |91| 
	.dwpsn	"alarms.c",92,1
        LRETR
        ; return occurs
	.dwattr DW$51, DW_AT_end_file("alarms.c")
	.dwattr DW$51, DW_AT_end_line(0x5c)
	.dwattr DW$51, DW_AT_end_column(0x01)
	.dwendtag DW$51

	.sect	".text"
	.global	_SetNoPulseFlag

DW$53	.dwtag  DW_TAG_subprogram, DW_AT_name("SetNoPulseFlag"), DW_AT_symbol_name("_SetNoPulseFlag")
	.dwattr DW$53, DW_AT_low_pc(_SetNoPulseFlag)
	.dwattr DW$53, DW_AT_high_pc(0x00)
	.dwattr DW$53, DW_AT_begin_file("alarms.c")
	.dwattr DW$53, DW_AT_begin_line(0x61)
	.dwattr DW$53, DW_AT_begin_column(0x06)
	.dwattr DW$53, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$53, DW_AT_skeletal(0x01)
	.dwpsn	"alarms.c",98,1

;***************************************************************
;* FNAME: _SetNoPulseFlag               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SetNoPulseFlag:
;* AL    assigned to _chan
DW$54	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$54, DW_AT_type(*DW$T$11)
	.dwattr DW$54, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _flag
DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_name("flag"), DW_AT_symbol_name("_flag")
	.dwattr DW$55, DW_AT_type(*DW$T$11)
	.dwattr DW$55, DW_AT_location[DW_OP_reg1]
        CMPB      AH,#1                 ; |99| 
        MOVZ      AR0,AL                ; |98| 
        BF        L4,EQ                 ; |99| 
        ; branchcc occurs ; |99| 
        MOVL      XAR4,#_status3        ; |104| 
        AND       *+XAR4[AR0],#0xfffe   ; |104| 
        BF        L5,UNC                ; |104| 
        ; branch occurs ; |104| 
L4:    
        MOVL      XAR4,#_status3        ; |101| 
        OR        *+XAR4[AR0],#0x0001   ; |101| 
        MOVB      AH,#0
        LCR       #_SetRPMChan          ; |102| 
        ; call occurs [#_SetRPMChan] ; |102| 
L5:    
	.dwpsn	"alarms.c",105,1
        LRETR
        ; return occurs
	.dwattr DW$53, DW_AT_end_file("alarms.c")
	.dwattr DW$53, DW_AT_end_line(0x69)
	.dwattr DW$53, DW_AT_end_column(0x01)
	.dwendtag DW$53

	.sect	".text"
	.global	_GetNoPulseFlag

DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("GetNoPulseFlag"), DW_AT_symbol_name("_GetNoPulseFlag")
	.dwattr DW$56, DW_AT_low_pc(_GetNoPulseFlag)
	.dwattr DW$56, DW_AT_high_pc(0x00)
	.dwattr DW$56, DW_AT_begin_file("alarms.c")
	.dwattr DW$56, DW_AT_begin_line(0x6c)
	.dwattr DW$56, DW_AT_begin_column(0x0e)
	.dwattr DW$56, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$56, DW_AT_skeletal(0x01)
	.dwpsn	"alarms.c",109,1

;***************************************************************
;* FNAME: _GetNoPulseFlag               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_GetNoPulseFlag:
;* AL    assigned to _chan
DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$57, DW_AT_type(*DW$T$11)
	.dwattr DW$57, DW_AT_location[DW_OP_reg0]
        MOVZ      AR0,AL                ; |109| 
        MOVL      XAR4,#_status3        ; |110| 
        AND       AL,*+XAR4[AR0],#0x0001 ; |110| 
	.dwpsn	"alarms.c",111,1
        LRETR
        ; return occurs
	.dwattr DW$56, DW_AT_end_file("alarms.c")
	.dwattr DW$56, DW_AT_end_line(0x6f)
	.dwattr DW$56, DW_AT_end_column(0x01)
	.dwendtag DW$56

	.sect	".text"
	.global	_SystemChecks

DW$58	.dwtag  DW_TAG_subprogram, DW_AT_name("SystemChecks"), DW_AT_symbol_name("_SystemChecks")
	.dwattr DW$58, DW_AT_low_pc(_SystemChecks)
	.dwattr DW$58, DW_AT_high_pc(0x00)
	.dwattr DW$58, DW_AT_begin_file("alarms.c")
	.dwattr DW$58, DW_AT_begin_line(0x74)
	.dwattr DW$58, DW_AT_begin_column(0x06)
	.dwattr DW$58, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$58, DW_AT_skeletal(0x01)
	.dwpsn	"alarms.c",117,1

;***************************************************************
;* FNAME: _SystemChecks                 FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_SystemChecks:
        MOVW      DP,#_settings+31
        MOVL      *SP++,XAR1
        MOV       AL,@_settings+31      ; |120| 
        BF        L6,NEQ                ; |120| 
        ; branchcc occurs ; |120| 
        LCR       #_AnalogOOR           ; |122| 
        ; call occurs [#_AnalogOOR] ; |122| 
L6:    
        MOVW      DP,#_settings+17
        MOV       AL,@_settings+17      ; |126| 
        CMPB      AL,#1                 ; |126| 
        BF        L8,NEQ                ; |126| 
        ; branchcc occurs ; |126| 
	.dwpsn	"alarms.c",128,0
        MOVB      XAR1,#0
L7:    
DW$L$_SystemChecks$5$B:
	.dwpsn	"alarms.c",129,0
        MOV       AL,AR1                ; |130| 
        LCR       #_SensorFailure       ; |130| 
        ; call occurs [#_SensorFailure] ; |130| 
        ADDB      XAR1,#1               ; |128| 
        MOV       AL,AR1                ; |128| 
        CMPB      AL,#28                ; |128| 
	.dwpsn	"alarms.c",131,0
        BF        L7,LO                 ; |128| 
        ; branchcc occurs ; |128| 
DW$L$_SystemChecks$5$E:
        LCR       #_SPUComms            ; |132| 
        ; call occurs [#_SPUComms] ; |132| 
        LCR       #_FramFailure         ; |133| 
        ; call occurs [#_FramFailure] ; |133| 
L8:    
        MOVL      XAR1,*--SP
	.dwpsn	"alarms.c",135,1
        LRETR
        ; return occurs

DW$59	.dwtag  DW_TAG_loop
	.dwattr DW$59, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\alarms.asm:L7:1:1471518966")
	.dwattr DW$59, DW_AT_begin_file("alarms.c")
	.dwattr DW$59, DW_AT_begin_line(0x80)
	.dwattr DW$59, DW_AT_end_line(0x83)
DW$60	.dwtag  DW_TAG_loop_range
	.dwattr DW$60, DW_AT_low_pc(DW$L$_SystemChecks$5$B)
	.dwattr DW$60, DW_AT_high_pc(DW$L$_SystemChecks$5$E)
	.dwendtag DW$59

	.dwattr DW$58, DW_AT_end_file("alarms.c")
	.dwattr DW$58, DW_AT_end_line(0x87)
	.dwattr DW$58, DW_AT_end_column(0x01)
	.dwendtag DW$58

	.sect	".text"
	.global	_FramFailure

DW$61	.dwtag  DW_TAG_subprogram, DW_AT_name("FramFailure"), DW_AT_symbol_name("_FramFailure")
	.dwattr DW$61, DW_AT_low_pc(_FramFailure)
	.dwattr DW$61, DW_AT_high_pc(0x00)
	.dwattr DW$61, DW_AT_begin_file("alarms.c")
	.dwattr DW$61, DW_AT_begin_line(0x89)
	.dwattr DW$61, DW_AT_begin_column(0x06)
	.dwattr DW$61, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$61, DW_AT_skeletal(0x01)
	.dwpsn	"alarms.c",138,1

;***************************************************************
;* FNAME: _FramFailure                  FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_FramFailure:
        MOVW      DP,#_alarms
        MOVL      *SP++,XAR3
        TBIT      @_alarms,#2           ; |141| 
        BF        L9,NTC                ; |141| 
        ; branchcc occurs ; |141| 
        MOVW      DP,#_alarms
        TBIT      @_alarms,#3           ; |141| 
        BF        L11,NTC               ; |141| 
        ; branchcc occurs ; |141| 
        MOVW      DP,#_alarms
        TBIT      @_alarms,#2           ; |150| 
        BF        L13,TC                ; |150| 
        ; branchcc occurs ; |150| 
L9:    
        MOV       AL,#270               ; |150| 
        LCR       #_CheckAlarmBitSet    ; |150| 
        ; call occurs [#_CheckAlarmBitSet] ; |150| 
        CMPB      AL,#1                 ; |150| 
        BF        L10,EQ                ; |150| 
        ; branchcc occurs ; |150| 
        MOVW      DP,#_alarms
        TBIT      @_alarms,#3           ; |150| 
        BF        L13,NTC               ; |150| 
        ; branchcc occurs ; |150| 
L10:    
        MOV       AL,#270               ; |152| 
        LCR       #_ClearAlarmEvent     ; |152| 
        ; call occurs [#_ClearAlarmEvent] ; |152| 
        MOVL      XAR4,#_alarms         ; |156| 
        AND       *+XAR4[0],#0xfff3     ; |156| 
        BF        L12,UNC               ; |158| 
        ; branch occurs ; |158| 
L11:    
        MOVL      XAR3,#_alarms         ; |144| 
        OR        *+XAR3[0],#0x0008     ; |144| 
        MOV       AL,#270               ; |146| 
        LCR       #_SetAlarmEvent       ; |146| 
        ; call occurs [#_SetAlarmEvent] ; |146| 
        MOVL      XAR4,XAR3             ; |148| 
L12:    
        MOVB      AL,#0
        MOV       AH,#28608             ; |148| 
        MOVB      XAR5,#1               ; |148| 
        LCR       #_WriteNVMemory       ; |148| 
        ; call occurs [#_WriteNVMemory] ; |148| 
L13:    
        MOVL      XAR3,*--SP
	.dwpsn	"alarms.c",160,1
        LRETR
        ; return occurs
	.dwattr DW$61, DW_AT_end_file("alarms.c")
	.dwattr DW$61, DW_AT_end_line(0xa0)
	.dwattr DW$61, DW_AT_end_column(0x01)
	.dwendtag DW$61

	.sect	".text"
	.global	_SPUComms

DW$62	.dwtag  DW_TAG_subprogram, DW_AT_name("SPUComms"), DW_AT_symbol_name("_SPUComms")
	.dwattr DW$62, DW_AT_low_pc(_SPUComms)
	.dwattr DW$62, DW_AT_high_pc(0x00)
	.dwattr DW$62, DW_AT_begin_file("alarms.c")
	.dwattr DW$62, DW_AT_begin_line(0xa3)
	.dwattr DW$62, DW_AT_begin_column(0x06)
	.dwattr DW$62, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$62, DW_AT_skeletal(0x01)
	.dwpsn	"alarms.c",164,1

;***************************************************************
;* FNAME: _SPUComms                     FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_SPUComms:
        MOVW      DP,#_slave485mb+70
        MOVL      *SP++,XAR3
        MOV       AL,@_slave485mb+70    ; |169| 
        CMPB      AL,#1                 ; |169| 
        BF        L15,EQ                ; |169| 
        ; branchcc occurs ; |169| 
        MOV       AL,#268               ; |184| 
        LCR       #_CheckAlarmBitSet    ; |184| 
        ; call occurs [#_CheckAlarmBitSet] ; |184| 
        CMPB      AL,#1                 ; |184| 
        BF        L14,EQ                ; |184| 
        ; branchcc occurs ; |184| 
        MOVW      DP,#_alarms
        TBIT      @_alarms,#1           ; |184| 
        BF        L17,NTC               ; |184| 
        ; branchcc occurs ; |184| 
L14:    
        MOV       AL,#268               ; |188| 
        LCR       #_ClearAlarmEvent     ; |188| 
        ; call occurs [#_ClearAlarmEvent] ; |188| 
        MOVL      XAR4,#_alarms         ; |189| 
        AND       *+XAR4[0],#0xfffc     ; |189| 
        BF        L16,UNC               ; |191| 
        ; branch occurs ; |191| 
L15:    
        MOVL      XAR3,#_alarms         ; |171| 
        OR        *+XAR3[0],#0x0001     ; |171| 
        TBIT      *+XAR3[0],#1          ; |172| 
        BF        L17,TC                ; |172| 
        ; branchcc occurs ; |172| 
        OR        *+XAR3[0],#0x0002     ; |174| 
        MOV       AL,#268               ; |176| 
        LCR       #_SetAlarmEvent       ; |176| 
        ; call occurs [#_SetAlarmEvent] ; |176| 
        MOVL      XAR4,XAR3             ; |178| 
L16:    
        MOVB      AL,#0
        MOVB      XAR5,#1               ; |178| 
        MOV       AH,#28608             ; |178| 
        LCR       #_WriteNVMemory       ; |178| 
        ; call occurs [#_WriteNVMemory] ; |178| 
L17:    
        LCR       #_ReadPCCommsFlag     ; |198| 
        ; call occurs [#_ReadPCCommsFlag] ; |198| 
        CMPB      AL,#1                 ; |198| 
        BF        L19,EQ                ; |198| 
        ; branchcc occurs ; |198| 
        MOVL      XAR4,#_alarms         ; |212| 
        TBIT      *+XAR4[0],#5          ; |212| 
        BF        L18,NTC               ; |212| 
        ; branchcc occurs ; |212| 
        AND       *+XAR4[0],#0xffdf     ; |217| 
        MOVB      AL,#0
        MOVB      XAR5,#1               ; |218| 
        MOV       AH,#28608             ; |218| 
        LCR       #_WriteNVMemory       ; |218| 
        ; call occurs [#_WriteNVMemory] ; |218| 
L18:    
        MOVW      DP,#_alarms
        AND       @_alarms,#0xffef      ; |220| 
        BF        L20,UNC               ; |220| 
        ; branch occurs ; |220| 
L19:    
        MOVL      XAR4,#_alarms         ; |200| 
        OR        *+XAR4[0],#0x0010     ; |200| 
        TBIT      *+XAR4[0],#5          ; |201| 
        BF        L20,TC                ; |201| 
        ; branchcc occurs ; |201| 
        OR        *+XAR4[0],#0x0020     ; |203| 
        MOVB      AL,#0
        MOV       AH,#28608             ; |205| 
        MOVB      XAR5,#1               ; |205| 
        LCR       #_WriteNVMemory       ; |205| 
        ; call occurs [#_WriteNVMemory] ; |205| 
        MOVW      DP,#_digout
        MOV       @_digout,#0           ; |207| 
L20:    
        MOVL      XAR3,*--SP
	.dwpsn	"alarms.c",222,1
        LRETR
        ; return occurs
	.dwattr DW$62, DW_AT_end_file("alarms.c")
	.dwattr DW$62, DW_AT_end_line(0xde)
	.dwattr DW$62, DW_AT_end_column(0x01)
	.dwendtag DW$62

	.sect	".text"
	.global	_SensorFailure

DW$63	.dwtag  DW_TAG_subprogram, DW_AT_name("SensorFailure"), DW_AT_symbol_name("_SensorFailure")
	.dwattr DW$63, DW_AT_low_pc(_SensorFailure)
	.dwattr DW$63, DW_AT_high_pc(0x00)
	.dwattr DW$63, DW_AT_begin_file("alarms.c")
	.dwattr DW$63, DW_AT_begin_line(0xe1)
	.dwattr DW$63, DW_AT_begin_column(0x06)
	.dwattr DW$63, DW_AT_frame_base[DW_OP_breg20 -14]
	.dwattr DW$63, DW_AT_skeletal(0x01)
	.dwpsn	"alarms.c",226,1

;***************************************************************
;* FNAME: _SensorFailure                FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  5 Auto,  6 SOE     *
;***************************************************************

_SensorFailure:
;* AL    assigned to _chan
DW$64	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$64, DW_AT_type(*DW$T$11)
	.dwattr DW$64, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#6
        MOVZ      AR1,AL                ; |226| 
        MOV       *-SP[5],#0            ; |232| 
        LCR       #_GetStatus2Flags     ; |234| 
        ; call occurs [#_GetStatus2Flags] ; |234| 
        MOV       AL,AR1                ; |235| 
        MOVL      XAR2,XAR4             ; |234| 
        LCR       #_GetSensorAlarmMask  ; |235| 
        ; call occurs [#_GetSensorAlarmMask] ; |235| 
        CMPB      AL,#0                 ; |235| 
        BF        L41,NEQ               ; |235| 
        ; branchcc occurs ; |235| 
        MOVW      DP,#_timers+66
        MOV       AL,@_timers+66        ; |235| 
        BF        L41,NEQ               ; |235| 
        ; branchcc occurs ; |235| 
        MOVZ      AR4,SP                ; |237| 
        MOV       AL,AR1                ; |237| 
        SUBB      XAR4,#4               ; |237| 
        LCR       #_InputNumtoString    ; |237| 
        ; call occurs [#_InputNumtoString] ; |237| 
        MOVL      XAR4,#_status3        ; |239| 
        TBIT      *+XAR4[AR1],#3        ; |239| 
        BF        L21,NTC               ; |239| 
        ; branchcc occurs ; |239| 
        MOV       T,#18                 ; |239| 
        MOVL      XAR4,#_sensor         ; |239| 
        MPYXU     ACC,T,AR1             ; |239| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#0          ; |239| 
        BF        L23,TC                ; |239| 
        ; branchcc occurs ; |239| 
L21:    
        MOV       AL,#271               ; |256| 
        ADD       AL,AR1                ; |256| 
        LCR       #_CheckAlarmBitSet    ; |256| 
        ; call occurs [#_CheckAlarmBitSet] ; |256| 
        CMPB      AL,#1                 ; |256| 
        BF        L22,EQ                ; |256| 
        ; branchcc occurs ; |256| 
        MOVL      XAR4,#_status3        ; |256| 
        TBIT      *+XAR4[AR1],#11       ; |256| 
        BF        L24,NTC               ; |256| 
        ; branchcc occurs ; |256| 
L22:    
        MOV       AL,#271               ; |261| 
        ADD       AL,AR1                ; |261| 
        LCR       #_ClearAlarmEvent     ; |261| 
        ; call occurs [#_ClearAlarmEvent] ; |261| 
        MOVL      XAR4,#_status3        ; |263| 
        AND       AL,*+XAR4[AR1],#0xf7f7 ; |263| 
        MOV       *+XAR4[AR1],AL        ; |263| 
        MOVB      AH,#3                 ; |265| 
        MOVL      XAR4,#_noisefilterLOAD ; |265| 
        MOV       *+XAR4[AR1],AH        ; |265| 
        MOVL      XAR4,#_damagemonignore ; |266| 
        MOV       *+XAR4[AR1],AH        ; |266| 
        ANDB      AL,#1                 ; |267| 
        MOV       *-SP[5],#1            ; |267| 
        BF        L25,NEQ               ; |267| 
        ; branchcc occurs ; |267| 
        BF        L26,UNC               ; |267| 
        ; branch occurs ; |267| 
L23:    
        MOVL      XAR4,#_status3        ; |242| 
        MOVL      ACC,XAR4              ; |242| 
        ADDU      ACC,AR1               ; |242| 
        MOVL      XAR4,ACC              ; |242| 
        OR        *+XAR2[0],#0x0001     ; |241| 
        MOV       AH,*+XAR4[0]          ; |242| 
        AND       AL,AH,#0x0800         ; |242| 
        BF        L24,NEQ               ; |242| 
        ; branchcc occurs ; |242| 
        MOV       AL,#2048              ; |244| 
        OR        AL,AH                 ; |244| 
        MOV       *+XAR4[0],AL          ; |244| 
        MOV       AL,#271               ; |246| 
        ADD       AL,AR1                ; |246| 
        LCR       #_SetAlarmEvent       ; |246| 
        ; call occurs [#_SetAlarmEvent] ; |246| 
        OR        *+XAR2[0],#0x0002     ; |247| 
        MOV       *-SP[5],#1            ; |251| 
L24:    
        MOVL      XAR4,#_status3        ; |270| 
        TBIT      *+XAR4[AR1],#0        ; |270| 
        BF        L26,NTC               ; |270| 
        ; branchcc occurs ; |270| 
L25:    
        MOV       T,#18                 ; |270| 
        MOVL      XAR4,#_sensor         ; |270| 
        MPYXU     ACC,T,AR1             ; |270| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#0          ; |270| 
        BF        L28,TC                ; |270| 
        ; branchcc occurs ; |270| 
L26:    
        MOVB      AL,#56                ; |288| 
        ADD       AL,AR1                ; |288| 
        LCR       #_CheckAlarmBitSet    ; |288| 
        ; call occurs [#_CheckAlarmBitSet] ; |288| 
        CMPB      AL,#1                 ; |288| 
        BF        L27,EQ                ; |288| 
        ; branchcc occurs ; |288| 
        MOVL      XAR4,#_status3        ; |288| 
        TBIT      *+XAR4[AR1],#8        ; |288| 
        BF        L29,NTC               ; |288| 
        ; branchcc occurs ; |288| 
L27:    
        MOVB      AL,#56                ; |293| 
        ADD       AL,AR1                ; |293| 
        LCR       #_ClearAlarmEvent     ; |293| 
        ; call occurs [#_ClearAlarmEvent] ; |293| 
        MOVL      XAR4,#_status3        ; |295| 
        AND       AL,*+XAR4[AR1],#0xfefe ; |295| 
        MOV       *+XAR4[AR1],AL        ; |295| 
        MOVB      AH,#3                 ; |297| 
        MOVL      XAR4,#_noisefilterLOAD ; |297| 
        MOV       *+XAR4[AR1],AH        ; |297| 
        MOVL      XAR4,#_damagemonignore ; |298| 
        MOV       *+XAR4[AR1],AH        ; |298| 
        ANDB      AL,#2                 ; |299| 
        MOV       *-SP[5],#1            ; |299| 
        BF        L30,NEQ               ; |299| 
        ; branchcc occurs ; |299| 
        BF        L31,UNC               ; |299| 
        ; branch occurs ; |299| 
L28:    
        MOVL      XAR4,#_status3        ; |274| 
        MOVL      ACC,XAR4              ; |274| 
        ADDU      ACC,AR1               ; |274| 
        MOVL      XAR4,ACC              ; |274| 
        OR        *+XAR2[0],#0x0001     ; |273| 
        MOV       AH,*+XAR4[0]          ; |274| 
        AND       AL,AH,#0x0100         ; |274| 
        BF        L29,NEQ               ; |274| 
        ; branchcc occurs ; |274| 
        MOV       AL,#256               ; |276| 
        OR        AL,AH                 ; |276| 
        MOV       *+XAR4[0],AL          ; |276| 
        OR        *+XAR2[0],#0x0002     ; |277| 
        MOVB      AL,#56                ; |280| 
        ADD       AL,AR1                ; |280| 
        LCR       #_SetAlarmEvent       ; |280| 
        ; call occurs [#_SetAlarmEvent] ; |280| 
        MOV       *-SP[5],#1            ; |283| 
L29:    
        MOVL      XAR4,#_status3        ; |302| 
        TBIT      *+XAR4[AR1],#1        ; |302| 
        BF        L31,NTC               ; |302| 
        ; branchcc occurs ; |302| 
L30:    
        MOVL      XAR4,#_status3        ; |302| 
        MOVL      ACC,XAR4              ; |302| 
        ADDU      ACC,AR1               ; |302| 
        MOVL      XAR3,ACC              ; |302| 
        TBIT      *+XAR3[0],#11         ; |302| 
        BF        L31,TC                ; |302| 
        ; branchcc occurs ; |302| 
        MOV       T,#18                 ; |302| 
        MOVL      XAR4,#_sensor         ; |302| 
        MPYXU     ACC,T,AR1             ; |302| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#0          ; |302| 
        BF        L31,NTC               ; |302| 
        ; branchcc occurs ; |302| 
        OR        *+XAR2[0],#0x0001     ; |304| 
        MOV       AH,*+XAR3[0]          ; |305| 
        AND       AL,AH,#0x0200         ; |305| 
        BF        L33,NEQ               ; |305| 
        ; branchcc occurs ; |305| 
        MOV       AL,#512               ; |308| 
        OR        AL,AH                 ; |308| 
        MOV       *+XAR3[0],AL          ; |308| 
        MOVB      AL,#84                ; |310| 
        ADD       AL,AR1                ; |310| 
        LCR       #_SetAlarmEvent       ; |310| 
        ; call occurs [#_SetAlarmEvent] ; |310| 
        OR        *+XAR2[0],#0x0002     ; |313| 
        MOVB      AL,#56                ; |315| 
        ADD       AL,AR1                ; |315| 
        LCR       #_ClearAlarmEvent     ; |315| 
        ; call occurs [#_ClearAlarmEvent] ; |315| 
        MOV       AL,#271               ; |317| 
        ADD       AL,AR1                ; |317| 
        LCR       #_ClearAlarmEvent     ; |317| 
        ; call occurs [#_ClearAlarmEvent] ; |317| 
        MOV       *-SP[5],#1            ; |318| 
        TBIT      *+XAR3[0],#2          ; |318| 
        BF        L34,TC                ; |318| 
        ; branchcc occurs ; |318| 
        BF        L35,UNC               ; |318| 
        ; branch occurs ; |318| 
L31:    
        MOVB      AL,#84                ; |324| 
        ADD       AL,AR1                ; |324| 
        LCR       #_CheckAlarmBitSet    ; |324| 
        ; call occurs [#_CheckAlarmBitSet] ; |324| 
        CMPB      AL,#1                 ; |324| 
        BF        L32,EQ                ; |324| 
        ; branchcc occurs ; |324| 
        MOVL      XAR4,#_status3        ; |324| 
        TBIT      *+XAR4[AR1],#9        ; |324| 
        BF        L33,NTC               ; |324| 
        ; branchcc occurs ; |324| 
L32:    
        MOVB      AL,#84                ; |329| 
        ADD       AL,AR1                ; |329| 
        LCR       #_ClearAlarmEvent     ; |329| 
        ; call occurs [#_ClearAlarmEvent] ; |329| 
        MOVL      XAR4,#_status3        ; |331| 
        AND       *+XAR4[AR1],#0xfdfc   ; |331| 
        MOVB      AL,#3                 ; |334| 
        MOVL      XAR4,#_noisefilterLOAD ; |334| 
        MOV       *+XAR4[AR1],AL        ; |334| 
        MOVL      XAR4,#_damagemonignore ; |335| 
        MOV       *+XAR4[AR1],AL        ; |335| 
        MOV       *-SP[5],#1            ; |337| 
L33:    
        MOVL      XAR4,#_status3        ; |340| 
        TBIT      *+XAR4[AR1],#2        ; |340| 
        BF        L35,NTC               ; |340| 
        ; branchcc occurs ; |340| 
L34:    
        MOVL      XAR4,#_status3        ; |340| 
        MOVL      ACC,XAR4              ; |340| 
        ADDU      ACC,AR1               ; |340| 
        MOVL      XAR3,ACC              ; |340| 
        TBIT      *+XAR3[0],#11         ; |340| 
        BF        L35,TC                ; |340| 
        ; branchcc occurs ; |340| 
        MOV       T,#18                 ; |340| 
        MOVL      XAR4,#_sensor         ; |340| 
        MPYXU     ACC,T,AR1             ; |340| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#0          ; |340| 
        BF        L35,NTC               ; |340| 
        ; branchcc occurs ; |340| 
        OR        *+XAR2[0],#0x0001     ; |342| 
        MOV       AH,*+XAR3[0]          ; |343| 
        AND       AL,AH,#0x0400         ; |343| 
        BF        L37,NEQ               ; |343| 
        ; branchcc occurs ; |343| 
        MOV       AL,#1024              ; |346| 
        OR        AL,AH                 ; |346| 
        MOV       *+XAR3[0],AL          ; |346| 
        MOVB      AL,#112               ; |348| 
        ADD       AL,AR1                ; |348| 
        LCR       #_SetAlarmEvent       ; |348| 
        ; call occurs [#_SetAlarmEvent] ; |348| 
        OR        *+XAR2[0],#0x0002     ; |349| 
        MOVB      AL,#56                ; |353| 
        ADD       AL,AR1                ; |353| 
        LCR       #_ClearAlarmEvent     ; |353| 
        ; call occurs [#_ClearAlarmEvent] ; |353| 
        MOV       AL,#271               ; |355| 
        ADD       AL,AR1                ; |355| 
        LCR       #_ClearAlarmEvent     ; |355| 
        ; call occurs [#_ClearAlarmEvent] ; |355| 
        MOV       *-SP[5],#1            ; |356| 
        TBIT      *+XAR3[0],#2          ; |356| 
        BF        L38,NTC               ; |356| 
        ; branchcc occurs ; |356| 
        BF        L39,UNC               ; |356| 
        ; branch occurs ; |356| 
L35:    
        MOVB      AL,#112               ; |362| 
        ADD       AL,AR1                ; |362| 
        LCR       #_CheckAlarmBitSet    ; |362| 
        ; call occurs [#_CheckAlarmBitSet] ; |362| 
        CMPB      AL,#1                 ; |362| 
        BF        L36,EQ                ; |362| 
        ; branchcc occurs ; |362| 
        MOVL      XAR4,#_status3        ; |362| 
        TBIT      *+XAR4[AR1],#10       ; |362| 
        BF        L37,NTC               ; |362| 
        ; branchcc occurs ; |362| 
L36:    
        MOVB      AL,#112               ; |367| 
        ADD       AL,AR1                ; |367| 
        LCR       #_ClearAlarmEvent     ; |367| 
        ; call occurs [#_ClearAlarmEvent] ; |367| 
        MOVL      XAR4,#_status3        ; |369| 
        AND       *+XAR4[AR1],#0xfbfb   ; |369| 
        MOVB      AL,#3                 ; |371| 
        MOVL      XAR4,#_noisefilterLOAD ; |371| 
        MOV       *+XAR4[AR1],AL        ; |371| 
        MOVL      XAR4,#_damagemonignore ; |372| 
        MOV       *+XAR4[AR1],AL        ; |372| 
        MOV       *-SP[5],#1            ; |373| 
L37:    
        MOVL      XAR4,#_status3        ; |377| 
        TBIT      *+XAR4[AR1],#2        ; |377| 
        BF        L39,TC                ; |377| 
        ; branchcc occurs ; |377| 
L38:    
        MOVL      XAR4,#_status3        ; |377| 
        MOV       AL,*+XAR4[AR1]        ; |377| 
        AND       AH,AL,#0x0002         ; |377| 
        ANDB      AL,#9                 ; |377| 
        OR        AL,AH                 ; |377| 
        BF        L39,NEQ               ; |377| 
        ; branchcc occurs ; |377| 
        MOV       AL,*+XAR2[0]          ; |379| 
        AND       AH,AL,#0x0002         ; |379| 
        BF        L39,EQ                ; |379| 
        ; branchcc occurs ; |379| 
        AND       AL,AL,#0xfffc         ; |381| 
        MOV       *+XAR2[0],AL          ; |381| 
        BF        L40,UNC               ; |383| 
        ; branch occurs ; |383| 
L39:    
        MOV       AL,*-SP[5]
        CMPB      AL,#1                 ; |386| 
        BF        L41,NEQ               ; |386| 
        ; branchcc occurs ; |386| 
L40:    
        MOV       ACC,AR1 << #1         ; |389| 
        MOVZ      AR3,AL                ; |389| 
        MOVL      XAR4,#_status3        ; |389| 
        MOV       AH,#28666             ; |389| 
        MOVB      XAR5,#1               ; |389| 
        ADD       AH,AR3                ; |389| 
        MOVZ      AR6,AH                ; |389| 
        MOVL      ACC,XAR4              ; |389| 
        ADDU      ACC,AR1               ; |389| 
        MOVL      XAR4,ACC              ; |389| 
        MOVB      AL,#0
        MOV       AH,AR6                ; |389| 
        LCR       #_WriteNVMemory       ; |389| 
        ; call occurs [#_WriteNVMemory] ; |389| 
        MOV       AH,#28610             ; |391| 
        ADD       AH,AR3                ; |391| 
        MOVL      XAR4,XAR2             ; |391| 
        MOVB      XAR5,#1               ; |391| 
        MOVB      AL,#0
        LCR       #_WriteNVMemory       ; |391| 
        ; call occurs [#_WriteNVMemory] ; |391| 
L41:    
        SUBB      SP,#6
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"alarms.c",394,1
        LRETR
        ; return occurs
	.dwattr DW$63, DW_AT_end_file("alarms.c")
	.dwattr DW$63, DW_AT_end_line(0x18a)
	.dwattr DW$63, DW_AT_end_column(0x01)
	.dwendtag DW$63

	.sect	".text"
	.global	_ClearEventCodeListArea

DW$65	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearEventCodeListArea"), DW_AT_symbol_name("_ClearEventCodeListArea")
	.dwattr DW$65, DW_AT_low_pc(_ClearEventCodeListArea)
	.dwattr DW$65, DW_AT_high_pc(0x00)
	.dwattr DW$65, DW_AT_begin_file("alarms.c")
	.dwattr DW$65, DW_AT_begin_line(0x18f)
	.dwattr DW$65, DW_AT_begin_column(0x06)
	.dwattr DW$65, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$65, DW_AT_skeletal(0x01)
	.dwpsn	"alarms.c",400,1

;***************************************************************
;* FNAME: _ClearEventCodeListArea       FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_ClearEventCodeListArea:
        MOVL      *SP++,XAR1
        MOVL      XAR4,#FSL1            ; |404| 
        MOVL      *SP++,XAR2
        LCR       #_DebugStringOut      ; |404| 
        ; call occurs [#_DebugStringOut] ; |404| 
        MOVW      DP,#_eventlogentry+63
        MOV       @_eventlogentry+63,#1 ; |415| 
        MOVW      DP,#_eventlogentry+64
        MOV       @_eventlogentry+64,#65535 ; |416| 
        MOVW      DP,#_eventlogentry+65
        MOV       @_eventlogentry+65,#0 ; |417| 
        MOVW      DP,#_eventlogentry+66
        MOV       @_eventlogentry+66,#0 ; |418| 
        MOVL      XAR4,#_bitalarmlist   ; |423| 
        MOVW      DP,#_eventlogentry+67
        MOV       @_eventlogentry+67,#0 ; |419| 
	.dwpsn	"alarms.c",422,0
        MOVB      XAR1,#0
L42:    
DW$L$_ClearEventCodeListArea$2$B:
        MOV       *+XAR4[AR1],#0        ; |423| 
        ADDB      XAR1,#1               ; |422| 
        MOV       AL,AR1                ; |422| 
        CMPB      AL,#32                ; |422| 
	.dwpsn	"alarms.c",424,0
        BF        L42,LO                ; |422| 
        ; branchcc occurs ; |422| 
DW$L$_ClearEventCodeListArea$2$E:
        LCR       #_WriteAlarmListtoNVMEM ; |425| 
        ; call occurs [#_WriteAlarmListtoNVMEM] ; |425| 
	.dwpsn	"alarms.c",430,0
        MOVB      XAR1,#0
L43:    
DW$L$_ClearEventCodeListArea$4$B:
	.dwpsn	"alarms.c",431,0
        MOV       T,#18                 ; |432| 
        MOVL      XAR4,#_sensor+1       ; |432| 
        MPYXU     ACC,T,AR1             ; |432| 
        ADDL      XAR4,ACC
        MOV       ACC,AR1 << #1         ; |434| 
        MOVZ      AR2,AL                ; |434| 
        MOVB      XAR5,#1               ; |434| 
        MOV       AH,#28610             ; |434| 
        ADD       AH,AR2                ; |434| 
        MOV       *+XAR4[0],#0          ; |433| 
        MOVB      AL,#0
        LCR       #_WriteNVMemory       ; |434| 
        ; call occurs [#_WriteNVMemory] ; |434| 
        MOVL      XAR4,#_status3        ; |436| 
        MOVL      ACC,XAR4              ; |436| 
        ADDU      ACC,AR1               ; |436| 
        MOVL      XAR4,ACC              ; |436| 
        MOV       AH,#28666             ; |437| 
        ADD       AH,AR2                ; |437| 
        MOVB      XAR5,#1               ; |437| 
        MOV       *+XAR4[0],#0          ; |436| 
        MOVB      AL,#0
        LCR       #_WriteNVMemory       ; |437| 
        ; call occurs [#_WriteNVMemory] ; |437| 
        ADDB      XAR1,#1               ; |430| 
        MOV       AL,AR1                ; |430| 
        CMPB      AL,#28                ; |430| 
	.dwpsn	"alarms.c",438,0
        BF        L43,LO                ; |430| 
        ; branchcc occurs ; |430| 
DW$L$_ClearEventCodeListArea$4$E:
	.dwpsn	"alarms.c",439,0
        MOVB      XAR1,#0
L44:    
DW$L$_ClearEventCodeListArea$6$B:
	.dwpsn	"alarms.c",440,0
        MOVU      ACC,AR1
        MOVL      XAR4,#_cylinders+1    ; |441| 
        LSL       ACC,2                 ; |441| 
        MOVB      XAR5,#1               ; |443| 
        ADDL      XAR4,ACC
        MOV       AL,#14319             ; |443| 
        ADD       AL,AR1                ; |443| 
        MOV       ACC,AL << #1          ; |443| 
        MOV       AH,AL                 ; |443| 
        MOV       *+XAR4[0],#0          ; |442| 
        MOVB      AL,#0
        LCR       #_WriteNVMemory       ; |443| 
        ; call occurs [#_WriteNVMemory] ; |443| 
        ADDB      XAR1,#1               ; |439| 
        MOV       AL,AR1                ; |439| 
        CMPB      AL,#14                ; |439| 
	.dwpsn	"alarms.c",444,0
        BF        L44,LO                ; |439| 
        ; branchcc occurs ; |439| 
DW$L$_ClearEventCodeListArea$6$E:
        MOVB      AL,#0
        MOVL      XAR4,#_alarms         ; |446| 
        MOVB      XAR5,#1               ; |447| 
        MOV       AH,#28608             ; |447| 
        MOV       *+XAR4[0],#0          ; |446| 
        LCR       #_WriteNVMemory       ; |447| 
        ; call occurs [#_WriteNVMemory] ; |447| 
        MOVL      XAR4,#_waterinoil+11  ; |449| 
        MOVB      AL,#0
        MOVB      XAR5,#1               ; |450| 
        MOV       *+XAR4[0],#0          ; |449| 
        MOV       AH,#28850             ; |450| 
        LCR       #_WriteNVMemory       ; |450| 
        ; call occurs [#_WriteNVMemory] ; |450| 
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"alarms.c",451,1
        LRETR
        ; return occurs

DW$66	.dwtag  DW_TAG_loop
	.dwattr DW$66, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\alarms.asm:L44:1:1471518966")
	.dwattr DW$66, DW_AT_begin_file("alarms.c")
	.dwattr DW$66, DW_AT_begin_line(0x1b7)
	.dwattr DW$66, DW_AT_end_line(0x1bc)
DW$67	.dwtag  DW_TAG_loop_range
	.dwattr DW$67, DW_AT_low_pc(DW$L$_ClearEventCodeListArea$6$B)
	.dwattr DW$67, DW_AT_high_pc(DW$L$_ClearEventCodeListArea$6$E)
	.dwendtag DW$66


DW$68	.dwtag  DW_TAG_loop
	.dwattr DW$68, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\alarms.asm:L43:1:1471518966")
	.dwattr DW$68, DW_AT_begin_file("alarms.c")
	.dwattr DW$68, DW_AT_begin_line(0x1ae)
	.dwattr DW$68, DW_AT_end_line(0x1b6)
DW$69	.dwtag  DW_TAG_loop_range
	.dwattr DW$69, DW_AT_low_pc(DW$L$_ClearEventCodeListArea$4$B)
	.dwattr DW$69, DW_AT_high_pc(DW$L$_ClearEventCodeListArea$4$E)
	.dwendtag DW$68


DW$70	.dwtag  DW_TAG_loop
	.dwattr DW$70, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\alarms.asm:L42:1:1471518966")
	.dwattr DW$70, DW_AT_begin_file("alarms.c")
	.dwattr DW$70, DW_AT_begin_line(0x1a6)
	.dwattr DW$70, DW_AT_end_line(0x1a8)
DW$71	.dwtag  DW_TAG_loop_range
	.dwattr DW$71, DW_AT_low_pc(DW$L$_ClearEventCodeListArea$2$B)
	.dwattr DW$71, DW_AT_high_pc(DW$L$_ClearEventCodeListArea$2$E)
	.dwendtag DW$70

	.dwattr DW$65, DW_AT_end_file("alarms.c")
	.dwattr DW$65, DW_AT_end_line(0x1c3)
	.dwattr DW$65, DW_AT_end_column(0x01)
	.dwendtag DW$65

	.sect	".text"
	.global	_ReadFirstEventCode

DW$72	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadFirstEventCode"), DW_AT_symbol_name("_ReadFirstEventCode")
	.dwattr DW$72, DW_AT_low_pc(_ReadFirstEventCode)
	.dwattr DW$72, DW_AT_high_pc(0x00)
	.dwattr DW$72, DW_AT_begin_file("alarms.c")
	.dwattr DW$72, DW_AT_begin_line(0x1ed)
	.dwattr DW$72, DW_AT_begin_column(0x10)
	.dwattr DW$72, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$72, DW_AT_skeletal(0x01)
	.dwpsn	"alarms.c",494,1

;***************************************************************
;* FNAME: _ReadFirstEventCode           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadFirstEventCode:
        MOVW      DP,#_eventlogentry+67
        MOV       @_eventlogentry+67,#0 ; |497| 
        MOVL      XAR4,#_eventlogentry+64 ; |509| 
        MOVW      DP,#_eventlogentry+64
        MOV       @_eventlogentry+64,#65535 ; |504| 
        MOVW      DP,#_eventlogentry+65
        MOV       @_eventlogentry+65,#0 ; |508| 
	.dwpsn	"alarms.c",513,1
        LRETR
        ; return occurs
	.dwattr DW$72, DW_AT_end_file("alarms.c")
	.dwattr DW$72, DW_AT_end_line(0x201)
	.dwattr DW$72, DW_AT_end_column(0x01)
	.dwendtag DW$72

	.sect	".text"
	.global	_AlarmEventIDInc

DW$73	.dwtag  DW_TAG_subprogram, DW_AT_name("AlarmEventIDInc"), DW_AT_symbol_name("_AlarmEventIDInc")
	.dwattr DW$73, DW_AT_low_pc(_AlarmEventIDInc)
	.dwattr DW$73, DW_AT_high_pc(0x00)
	.dwattr DW$73, DW_AT_begin_file("alarms.c")
	.dwattr DW$73, DW_AT_begin_line(0x205)
	.dwattr DW$73, DW_AT_begin_column(0x06)
	.dwattr DW$73, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$73, DW_AT_skeletal(0x01)
	.dwpsn	"alarms.c",518,1

;***************************************************************
;* FNAME: _AlarmEventIDInc              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_AlarmEventIDInc:
;* AL    assigned to _eventidin
DW$74	.dwtag  DW_TAG_formal_parameter, DW_AT_name("eventidin"), DW_AT_symbol_name("_eventidin")
	.dwattr DW$74, DW_AT_type(*DW$T$11)
	.dwattr DW$74, DW_AT_location[DW_OP_reg0]
        MOVW      DP,#_eventlogentry+64
        MOV       @_eventlogentry+64,#65535 ; |520| 
        MOVW      DP,#_eventlogentry+65
        MOV       @_eventlogentry+65,#0 ; |521| 
	.dwpsn	"alarms.c",540,1
        LRETR
        ; return occurs
	.dwattr DW$73, DW_AT_end_file("alarms.c")
	.dwattr DW$73, DW_AT_end_line(0x21c)
	.dwattr DW$73, DW_AT_end_column(0x01)
	.dwendtag DW$73

	.sect	".text"
	.global	_SetAlarmEvent

DW$75	.dwtag  DW_TAG_subprogram, DW_AT_name("SetAlarmEvent"), DW_AT_symbol_name("_SetAlarmEvent")
	.dwattr DW$75, DW_AT_low_pc(_SetAlarmEvent)
	.dwattr DW$75, DW_AT_high_pc(0x00)
	.dwattr DW$75, DW_AT_begin_file("alarms.c")
	.dwattr DW$75, DW_AT_begin_line(0x26b)
	.dwattr DW$75, DW_AT_begin_column(0x06)
	.dwattr DW$75, DW_AT_frame_base[DW_OP_breg20 -14]
	.dwattr DW$75, DW_AT_skeletal(0x01)
	.dwpsn	"alarms.c",620,1

;***************************************************************
;* FNAME: _SetAlarmEvent                FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            5 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_SetAlarmEvent:
;* AL    assigned to _index
DW$76	.dwtag  DW_TAG_formal_parameter, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$76, DW_AT_type(*DW$T$11)
	.dwattr DW$76, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOV       AH,AL                 ; |627| 
        MOVL      *SP++,XAR2
        LSR       AH,4                  ; |627| 
        MOVL      *SP++,XAR3
        CMPB      AH,#33                ; |627| 
        MOVZ      AR2,AH                ; |627| 
        ADDB      SP,#6
        BF        L45,HIS               ; |627| 
        ; branchcc occurs ; |627| 
        MOVL      XAR4,#FSL2            ; |628| 
        AND       AH,AL,#0x000f         ; |628| 
        MOVL      XAR3,#_stringbuffer   ; |628| 
        MOVL      *-SP[2],XAR4          ; |628| 
        MOV       *-SP[3],AR2           ; |628| 
        MOV       *-SP[4],AH            ; |628| 
        MOVL      XAR4,XAR3             ; |628| 
        MOVZ      AR1,AH                ; |628| 
        MOV       *-SP[5],AL            ; |628| 
        LCR       #_sprintf             ; |628| 
        ; call occurs [#_sprintf] ; |628| 
        MOVL      XAR4,XAR3             ; |628| 
        LCR       #_DebugStringOut      ; |628| 
        ; call occurs [#_DebugStringOut] ; |628| 
        MOVL      XAR4,#_bitalarmlist   ; |629| 
        MOVL      ACC,XAR4              ; |629| 
        ADDU      ACC,AR2               ; |629| 
        MOVL      XAR2,ACC              ; |629| 
        MOV       AL,*+XAR2[0]          ; |629| 
        MOV       AH,AR1                ; |629| 
        LCR       #_BitSet              ; |629| 
        ; call occurs [#_BitSet] ; |629| 
        MOV       *+XAR2[0],AL          ; |629| 
        LCR       #_WriteAlarmListtoNVMEM ; |630| 
        ; call occurs [#_WriteAlarmListtoNVMEM] ; |630| 
L45:    
        SUBB      SP,#6
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"alarms.c",635,1
        LRETR
        ; return occurs
	.dwattr DW$75, DW_AT_end_file("alarms.c")
	.dwattr DW$75, DW_AT_end_line(0x27b)
	.dwattr DW$75, DW_AT_end_column(0x01)
	.dwendtag DW$75

	.sect	".text"
	.global	_ClearAlarmEvent

DW$77	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearAlarmEvent"), DW_AT_symbol_name("_ClearAlarmEvent")
	.dwattr DW$77, DW_AT_low_pc(_ClearAlarmEvent)
	.dwattr DW$77, DW_AT_high_pc(0x00)
	.dwattr DW$77, DW_AT_begin_file("alarms.c")
	.dwattr DW$77, DW_AT_begin_line(0x281)
	.dwattr DW$77, DW_AT_begin_column(0x06)
	.dwattr DW$77, DW_AT_frame_base[DW_OP_breg20 -14]
	.dwattr DW$77, DW_AT_skeletal(0x01)
	.dwpsn	"alarms.c",642,1

;***************************************************************
;* FNAME: _ClearAlarmEvent              FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            5 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_ClearAlarmEvent:
;* AL    assigned to _index
DW$78	.dwtag  DW_TAG_formal_parameter, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$78, DW_AT_type(*DW$T$11)
	.dwattr DW$78, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOV       AH,AL                 ; |651| 
        MOVL      *SP++,XAR2
        LSR       AH,4                  ; |651| 
        MOVL      *SP++,XAR3
        CMPB      AH,#33                ; |651| 
        MOVZ      AR2,AH                ; |651| 
        ADDB      SP,#6
        BF        L46,HIS               ; |651| 
        ; branchcc occurs ; |651| 
        MOVL      XAR4,#FSL3            ; |653| 
        AND       AH,AL,#0x000f         ; |653| 
        MOVL      XAR3,#_stringbuffer   ; |653| 
        MOVL      *-SP[2],XAR4          ; |653| 
        MOV       *-SP[3],AR2           ; |653| 
        MOV       *-SP[4],AH            ; |653| 
        MOVL      XAR4,XAR3             ; |653| 
        MOVZ      AR1,AH                ; |653| 
        MOV       *-SP[5],AL            ; |653| 
        LCR       #_sprintf             ; |653| 
        ; call occurs [#_sprintf] ; |653| 
        MOVL      XAR4,XAR3             ; |653| 
        LCR       #_DebugStringOut      ; |653| 
        ; call occurs [#_DebugStringOut] ; |653| 
        MOVL      XAR4,#_bitalarmlist   ; |654| 
        MOVL      ACC,XAR4              ; |654| 
        ADDU      ACC,AR2               ; |654| 
        MOVL      XAR2,ACC              ; |654| 
        MOV       AL,*+XAR2[0]          ; |654| 
        MOV       AH,AR1                ; |654| 
        LCR       #_BitClear            ; |654| 
        ; call occurs [#_BitClear] ; |654| 
        MOV       *+XAR2[0],AL          ; |654| 
        LCR       #_WriteAlarmListtoNVMEM ; |655| 
        ; call occurs [#_WriteAlarmListtoNVMEM] ; |655| 
L46:    
        SUBB      SP,#6
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"alarms.c",660,1
        LRETR
        ; return occurs
	.dwattr DW$77, DW_AT_end_file("alarms.c")
	.dwattr DW$77, DW_AT_end_line(0x294)
	.dwattr DW$77, DW_AT_end_column(0x01)
	.dwendtag DW$77

	.sect	".text"
	.global	_bitEventIncrement

DW$79	.dwtag  DW_TAG_subprogram, DW_AT_name("bitEventIncrement"), DW_AT_symbol_name("_bitEventIncrement")
	.dwattr DW$79, DW_AT_low_pc(_bitEventIncrement)
	.dwattr DW$79, DW_AT_high_pc(0x00)
	.dwattr DW$79, DW_AT_begin_file("alarms.c")
	.dwattr DW$79, DW_AT_begin_line(0x2f8)
	.dwattr DW$79, DW_AT_begin_column(0x06)
	.dwattr DW$79, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$79, DW_AT_skeletal(0x01)
	.dwpsn	"alarms.c",760,30

;***************************************************************
;* FNAME: _bitEventIncrement            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_bitEventIncrement:
        MOVW      DP,#_timers+71
        MOV       AL,@_timers+71        ; |764| 
        BF        L49,NEQ               ; |764| 
        ; branchcc occurs ; |764| 
        MOVW      DP,#_timers+71
        MOV       @_timers+71,#2000     ; |766| 
        MOVW      DP,#_biteventpos
        INC       @_biteventpos         ; |767| 
        MOVW      DP,#_biteventpos
        MOV       AL,@_biteventpos      ; |767| 
        CMPB      AL,#3                 ; |767| 
        BF        L47,NEQ               ; |767| 
        ; branchcc occurs ; |767| 
        MOVW      DP,#_biteventpos
        MOV       @_biteventpos,#0      ; |769| 
L47:    
        MOV       T,#3                  ; |772| 
	.dwpsn	"alarms.c",771,0
        MOVB      XAR4,#0
L48:    
DW$L$_bitEventIncrement$5$B:
        MPYXU     ACC,T,AR4             ; |772| 
        MOVW      DP,#_biteventpos
        MOVL      XAR5,#_biteventlist   ; |772| 
        ADDU      ACC,@_biteventpos     ; |772| 
        ADDL      XAR5,ACC
        ADDB      XAR4,#1               ; |771| 
        MOV       AL,AR4                ; |771| 
        CMPB      AL,#16                ; |771| 
        MOV       *+XAR5[0],#0          ; |772| 
	.dwpsn	"alarms.c",773,0
        BF        L48,LO                ; |771| 
        ; branchcc occurs ; |771| 
DW$L$_bitEventIncrement$5$E:
L49:    
	.dwpsn	"alarms.c",777,1
        LRETR
        ; return occurs

DW$80	.dwtag  DW_TAG_loop
	.dwattr DW$80, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\alarms.asm:L48:1:1471518966")
	.dwattr DW$80, DW_AT_begin_file("alarms.c")
	.dwattr DW$80, DW_AT_begin_line(0x303)
	.dwattr DW$80, DW_AT_end_line(0x305)
DW$81	.dwtag  DW_TAG_loop_range
	.dwattr DW$81, DW_AT_low_pc(DW$L$_bitEventIncrement$5$B)
	.dwattr DW$81, DW_AT_high_pc(DW$L$_bitEventIncrement$5$E)
	.dwendtag DW$80

	.dwattr DW$79, DW_AT_end_file("alarms.c")
	.dwattr DW$79, DW_AT_end_line(0x309)
	.dwattr DW$79, DW_AT_end_column(0x01)
	.dwendtag DW$79

	.sect	".text"
	.global	_SetBitEvent

DW$82	.dwtag  DW_TAG_subprogram, DW_AT_name("SetBitEvent"), DW_AT_symbol_name("_SetBitEvent")
	.dwattr DW$82, DW_AT_low_pc(_SetBitEvent)
	.dwattr DW$82, DW_AT_high_pc(0x00)
	.dwattr DW$82, DW_AT_begin_file("alarms.c")
	.dwattr DW$82, DW_AT_begin_line(0x30b)
	.dwattr DW$82, DW_AT_begin_column(0x06)
	.dwattr DW$82, DW_AT_frame_base[DW_OP_breg20 -14]
	.dwattr DW$82, DW_AT_skeletal(0x01)
	.dwpsn	"alarms.c",780,1

;***************************************************************
;* FNAME: _SetBitEvent                  FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            5 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_SetBitEvent:
;* AL    assigned to _index
DW$83	.dwtag  DW_TAG_formal_parameter, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$83, DW_AT_type(*DW$T$11)
	.dwattr DW$83, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        AND       AH,AL,#0x000f         ; |787| 
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOVZ      AR2,AH                ; |787| 
        ADDB      SP,#6
        MOVL      XAR4,#FSL4            ; |787| 
        MOV       AH,AL                 ; |787| 
        LSR       AH,4                  ; |787| 
        MOVL      *-SP[2],XAR4          ; |787| 
        MOVL      XAR3,#_stringbuffer   ; |787| 
        MOV       *-SP[3],AH            ; |787| 
        MOVZ      AR1,AH                ; |787| 
        MOVL      XAR4,XAR3             ; |787| 
        MOV       *-SP[4],AR2           ; |787| 
        MOV       *-SP[5],AL            ; |787| 
        LCR       #_sprintf             ; |787| 
        ; call occurs [#_sprintf] ; |787| 
        MOVL      XAR4,XAR3             ; |787| 
        LCR       #_DebugStringOut      ; |787| 
        ; call occurs [#_DebugStringOut] ; |787| 
        MOV       AL,AR1                ; |787| 
        CMPB      AL,#16                ; |789| 
        BF        L50,HIS               ; |789| 
        ; branchcc occurs ; |789| 
        MOV       T,#3                  ; |790| 
        MOVL      XAR3,#_biteventlist   ; |790| 
        MPYXU     ACC,T,AR1             ; |790| 
        MOVL      XAR1,ACC              ; |790| 
        MOVL      XAR4,XAR3             ; |790| 
        MOVW      DP,#_biteventpos
        MOVU      ACC,@_biteventpos
        ADDL      ACC,XAR1
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |790| 
        MOV       AH,AR2                ; |790| 
        LCR       #_BitSet              ; |790| 
        ; call occurs [#_BitSet] ; |790| 
        MOVW      DP,#_biteventpos
        MOVZ      AR6,AL                ; |790| 
        MOVU      ACC,@_biteventpos
        ADDL      ACC,XAR1
        ADDL      XAR3,ACC
        MOV       *+XAR3[0],AR6         ; |790| 
L50:    
        SUBB      SP,#6
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"alarms.c",793,1
        LRETR
        ; return occurs
	.dwattr DW$82, DW_AT_end_file("alarms.c")
	.dwattr DW$82, DW_AT_end_line(0x319)
	.dwattr DW$82, DW_AT_end_column(0x01)
	.dwendtag DW$82

	.sect	".text"
	.global	_ClearBitEvent

DW$84	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearBitEvent"), DW_AT_symbol_name("_ClearBitEvent")
	.dwattr DW$84, DW_AT_low_pc(_ClearBitEvent)
	.dwattr DW$84, DW_AT_high_pc(0x00)
	.dwattr DW$84, DW_AT_begin_file("alarms.c")
	.dwattr DW$84, DW_AT_begin_line(0x31b)
	.dwattr DW$84, DW_AT_begin_column(0x06)
	.dwattr DW$84, DW_AT_frame_base[DW_OP_breg20 -14]
	.dwattr DW$84, DW_AT_skeletal(0x01)
	.dwpsn	"alarms.c",796,1

;***************************************************************
;* FNAME: _ClearBitEvent                FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            5 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_ClearBitEvent:
;* AL    assigned to _index
DW$85	.dwtag  DW_TAG_formal_parameter, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$85, DW_AT_type(*DW$T$11)
	.dwattr DW$85, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        AND       AH,AL,#0x000f         ; |803| 
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOVZ      AR2,AH                ; |803| 
        ADDB      SP,#6
        MOVL      XAR4,#FSL5            ; |803| 
        MOV       AH,AL                 ; |803| 
        LSR       AH,4                  ; |803| 
        MOVL      *-SP[2],XAR4          ; |803| 
        MOVL      XAR3,#_stringbuffer   ; |803| 
        MOV       *-SP[3],AH            ; |803| 
        MOVZ      AR1,AH                ; |803| 
        MOVL      XAR4,XAR3             ; |803| 
        MOV       *-SP[4],AR2           ; |803| 
        MOV       *-SP[5],AL            ; |803| 
        LCR       #_sprintf             ; |803| 
        ; call occurs [#_sprintf] ; |803| 
        MOVL      XAR4,XAR3             ; |803| 
        LCR       #_DebugStringOut      ; |803| 
        ; call occurs [#_DebugStringOut] ; |803| 
        MOV       AL,AR1                ; |803| 
        CMPB      AL,#16                ; |805| 
        BF        L51,HIS               ; |805| 
        ; branchcc occurs ; |805| 
        MOV       T,#3                  ; |806| 
        MOVL      XAR3,#_biteventlist   ; |806| 
        MPYXU     ACC,T,AR1             ; |806| 
        MOVL      XAR1,ACC              ; |806| 
        MOVL      XAR4,XAR3             ; |806| 
        MOVW      DP,#_biteventpos
        MOVU      ACC,@_biteventpos
        ADDL      ACC,XAR1
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |806| 
        MOV       AH,AR2                ; |806| 
        LCR       #_BitClear            ; |806| 
        ; call occurs [#_BitClear] ; |806| 
        MOVW      DP,#_biteventpos
        MOVZ      AR6,AL                ; |806| 
        MOVU      ACC,@_biteventpos
        ADDL      ACC,XAR1
        ADDL      XAR3,ACC
        MOV       *+XAR3[0],AR6         ; |806| 
L51:    
        SUBB      SP,#6
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"alarms.c",809,1
        LRETR
        ; return occurs
	.dwattr DW$84, DW_AT_end_file("alarms.c")
	.dwattr DW$84, DW_AT_end_line(0x329)
	.dwattr DW$84, DW_AT_end_column(0x01)
	.dwendtag DW$84

	.sect	".text"
	.global	_BitEventCompiled

DW$86	.dwtag  DW_TAG_subprogram, DW_AT_name("BitEventCompiled"), DW_AT_symbol_name("_BitEventCompiled")
	.dwattr DW$86, DW_AT_low_pc(_BitEventCompiled)
	.dwattr DW$86, DW_AT_high_pc(0x00)
	.dwattr DW$86, DW_AT_begin_file("alarms.c")
	.dwattr DW$86, DW_AT_begin_line(0x32c)
	.dwattr DW$86, DW_AT_begin_column(0x0e)
	.dwattr DW$86, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$86, DW_AT_skeletal(0x01)
	.dwpsn	"alarms.c",812,51

;***************************************************************
;* FNAME: _BitEventCompiled             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_BitEventCompiled:
;* AL    assigned to _index
DW$87	.dwtag  DW_TAG_formal_parameter, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$87, DW_AT_type(*DW$T$11)
	.dwattr DW$87, DW_AT_location[DW_OP_reg0]
        CMPB      AL,#16                ; |814| 
        BF        L52,HIS               ; |814| 
        ; branchcc occurs ; |814| 
        MOV       T,#3                  ; |815| 
        MPYXU     ACC,T,AL              ; |815| 
        MOVL      XAR4,#_biteventlist   ; |815| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[1]          ; |815| 
        OR        AL,*+XAR4[0]          ; |815| 
        OR        AL,*+XAR4[2]          ; |815| 
        BF        L53,UNC               ; |815| 
        ; branch occurs ; |815| 
L52:    
        MOVB      AL,#0
L53:    
	.dwpsn	"alarms.c",819,1
        LRETR
        ; return occurs
	.dwattr DW$86, DW_AT_end_file("alarms.c")
	.dwattr DW$86, DW_AT_end_line(0x333)
	.dwattr DW$86, DW_AT_end_column(0x01)
	.dwendtag DW$86

	.sect	".text"
	.global	_BearingStatus

DW$88	.dwtag  DW_TAG_subprogram, DW_AT_name("BearingStatus"), DW_AT_symbol_name("_BearingStatus")
	.dwattr DW$88, DW_AT_low_pc(_BearingStatus)
	.dwattr DW$88, DW_AT_high_pc(0x00)
	.dwattr DW$88, DW_AT_begin_file("alarms.c")
	.dwattr DW$88, DW_AT_begin_line(0x338)
	.dwattr DW$88, DW_AT_begin_column(0x06)
	.dwattr DW$88, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$88, DW_AT_skeletal(0x01)
	.dwpsn	"alarms.c",824,26

;***************************************************************
;* FNAME: _BearingStatus                FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  6 SOE     *
;***************************************************************

_BearingStatus:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#2
	.dwpsn	"alarms.c",846,0
        MOVB      XAR2,#0
L54:    
DW$L$_BearingStatus$2$B:
        MOV       ACC,AR2 << #1         ; |848| 
        SETC      SXM
        MOVZ      AR1,AL                ; |848| 
        MOVL      XAR4,#_bearingstatus+30 ; |850| 
        MOV       AL,AR2                ; |848| 
        MOV       ACC,AL                ; |850| 
        ADDL      XAR4,ACC
        MOV       T,AR2                 ; |850| 
        MOVL      XAR5,XAR4             ; |850| 
        MPYB      ACC,T,#36             ; |853| 
        MOVL      XAR4,#_sensor         ; |853| 
        ADDL      XAR4,ACC
        MOV       *+XAR5[0],#0          ; |850| 
        TBIT      *+XAR4[1],#0          ; |853| 
        BF        L55,NTC               ; |853| 
        ; branchcc occurs ; |853| 
DW$L$_BearingStatus$2$E:
DW$L$_BearingStatus$3$B:
        MOVB      XAR0,#19              ; |853| 
        TBIT      *+XAR4[AR0],#0        ; |853| 
        BF        L55,NTC               ; |853| 
        ; branchcc occurs ; |853| 
DW$L$_BearingStatus$3$E:
DW$L$_BearingStatus$4$B:
        MOV       *+XAR5[0],#32         ; |854| 
DW$L$_BearingStatus$4$E:
L55:    
DW$L$_BearingStatus$5$B:
        MOV       T,AR1
        MOVL      XAR4,#_sensor         ; |858| 
        MPYB      ACC,T,#18             ; |858| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[1]          ; |858| 
        AND       AH,AL,#0x0010         ; |858| 
        BF        L56,NEQ               ; |858| 
        ; branchcc occurs ; |858| 
DW$L$_BearingStatus$5$E:
DW$L$_BearingStatus$6$B:
        MOVB      XAR0,#19              ; |858| 
        MOVZ      AR6,*+XAR4[AR0]       ; |858| 
        AND       AH,AR6,#0x0010        ; |858| 
        ANDB      AL,#64                ; |858| 
        OR        AL,AH                 ; |858| 
        BF        L56,NEQ               ; |858| 
        ; branchcc occurs ; |858| 
DW$L$_BearingStatus$6$E:
DW$L$_BearingStatus$7$B:
        AND       AL,AR6,#0x0040        ; |858| 
        BF        L56,NEQ               ; |858| 
        ; branchcc occurs ; |858| 
DW$L$_BearingStatus$7$E:
DW$L$_BearingStatus$8$B:
        MOV       ACC,AR2 << 2          ; |858| 
        MOVL      XAR4,#_cylinders+1    ; |858| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#0          ; |858| 
        BF        L57,NTC               ; |858| 
        ; branchcc occurs ; |858| 
DW$L$_BearingStatus$8$E:
L56:    
DW$L$_BearingStatus$9$B:
        MOV       AL,AR2
        MOVL      XAR4,#_bearingstatus+30 ; |862| 
        MOV       ACC,AL                ; |862| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#1          ; |862| 
DW$L$_BearingStatus$9$E:
L57:    
DW$L$_BearingStatus$10$B:
        MPYB      ACC,T,#18             ; |866| 
        MOVL      XAR4,#_sensor         ; |866| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[1]          ; |866| 
        AND       AH,AL,#0x0004         ; |866| 
        BF        L58,NEQ               ; |866| 
        ; branchcc occurs ; |866| 
DW$L$_BearingStatus$10$E:
DW$L$_BearingStatus$11$B:
        MOVB      XAR0,#19              ; |866| 
        MOVZ      AR6,*+XAR4[AR0]       ; |866| 
        AND       AL,AL,#0x0100         ; |866| 
        AND       AH,AR6,#0x0004        ; |866| 
        OR        AL,AH                 ; |866| 
        AND       AH,AR6,#0x0100        ; |866| 
        OR        AH,AL                 ; |866| 
        BF        L58,NEQ               ; |866| 
        ; branchcc occurs ; |866| 
DW$L$_BearingStatus$11$E:
DW$L$_BearingStatus$12$B:
        MOV       AL,AR1
        LCR       #_CheckDMSingleBitSet ; |866| 
        ; call occurs [#_CheckDMSingleBitSet] ; |866| 
        CMPB      AL,#0                 ; |866| 
        BF        L58,NEQ               ; |866| 
        ; branchcc occurs ; |866| 
DW$L$_BearingStatus$12$E:
DW$L$_BearingStatus$13$B:
        MOVB      AL,#1                 ; |866| 
        ADD       AL,AR1                ; |866| 
        LCR       #_CheckDMSingleBitSet ; |866| 
        ; call occurs [#_CheckDMSingleBitSet] ; |866| 
        CMPB      AL,#0                 ; |866| 
        BF        L58,NEQ               ; |866| 
        ; branchcc occurs ; |866| 
DW$L$_BearingStatus$13$E:
DW$L$_BearingStatus$14$B:
        MOVW      DP,#_damalarms+2
        MOV       AL,@_damalarms+2      ; |866| 
        MOV       AH,AR2                ; |866| 
        LCR       #_CheckBitSet         ; |866| 
        ; call occurs [#_CheckBitSet] ; |866| 
        CMPB      AL,#0                 ; |866| 
        BF        L59,EQ                ; |866| 
        ; branchcc occurs ; |866| 
DW$L$_BearingStatus$14$E:
L58:    
DW$L$_BearingStatus$15$B:
        SETC      SXM
        MOV       AL,AR2
        MOVL      XAR4,#_bearingstatus+30 ; |871| 
        MOV       ACC,AL                ; |871| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#2          ; |871| 
DW$L$_BearingStatus$15$E:
L59:    
DW$L$_BearingStatus$16$B:
        MOV       T,AR1
        MOVL      XAR4,#_sensor         ; |875| 
        MPYB      ACC,T,#18             ; |875| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#0          ; |875| 
        BF        L60,TC                ; |875| 
        ; branchcc occurs ; |875| 
DW$L$_BearingStatus$16$E:
DW$L$_BearingStatus$17$B:
        MOVB      XAR0,#18              ; |875| 
        TBIT      *+XAR4[AR0],#0        ; |875| 
        BF        L60,TC                ; |875| 
        ; branchcc occurs ; |875| 
DW$L$_BearingStatus$17$E:
DW$L$_BearingStatus$18$B:
        SETC      SXM
        MOV       AL,AR2
        MOVL      XAR4,#_bearingstatus+30 ; |876| 
        MOV       ACC,AL                ; |876| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#4          ; |876| 
DW$L$_BearingStatus$18$E:
L60:    
DW$L$_BearingStatus$19$B:
        SETC      SXM
        MOV       AL,AR2
        MOVL      XAR4,#_bearingstatus+30 ; |880| 
        MOV       ACC,AL                ; |880| 
        ADDL      XAR4,ACC
        MOV       AL,AR2                ; |880| 
        MOVZ      AR6,*+XAR4[0]         ; |880| 
        MOV       ACC,AL                ; |880| 
        MOVL      XAR4,#_bearingstatus+16 ; |880| 
        ADDL      XAR4,ACC
        MOV       AL,AR2                ; |880| 
        ADDB      AL,#1                 ; |846| 
        MOVZ      AR2,AL                ; |846| 
        CMPB      AL,#14                ; |846| 
        MOV       *+XAR4[0],AR6         ; |880| 
	.dwpsn	"alarms.c",882,0
        BF        L54,LT                ; |846| 
        ; branchcc occurs ; |846| 
DW$L$_BearingStatus$19$E:
        MOVW      DP,#_allsensors
        MOV       AL,@_allsensors       ; |885| 
        LSR       AL,1                  ; |885| 
        MOVW      DP,#_damagemon
        MOV       *-SP[1],AL            ; |885| 
        MOV       AL,@_damagemon        ; |886| 
        BF        L61,EQ                ; |886| 
        ; branchcc occurs ; |886| 
        INC       *-SP[1]               ; |886| 
L61:    
        MOV       AL,*-SP[1]            ; |892| 
        MOVB      XAR2,#0
        MOVB      XAR3,#0
        MOVB      XAR1,#0
        BF        L82,LT                ; |892| 
        ; branchcc occurs ; |892| 
L62:    
DW$L$_BearingStatus$23$B:
	.dwpsn	"alarms.c",892,0
        SETC      SXM
        MOV       AL,AR2
        MOVL      XAR4,#_bearingstatus  ; |894| 
        MOV       ACC,AL                ; |894| 
        ADDL      XAR4,ACC
        MOV       AL,AR2                ; |894| 
        MOV       *+XAR4[0],#0          ; |894| 
        BF        L74,EQ                ; |896| 
        ; branchcc occurs ; |896| 
DW$L$_BearingStatus$23$E:
DW$L$_BearingStatus$24$B:
        MOV       AL,*-SP[1]
        CMP       AL,AR2                ; |896| 
        BF        L74,EQ                ; |896| 
        ; branchcc occurs ; |896| 
DW$L$_BearingStatus$24$E:
DW$L$_BearingStatus$25$B:
        MOVW      DP,#_damagemon
        MOV       AH,@_damagemon        ; |896| 
        BF        L63,EQ                ; |896| 
        ; branchcc occurs ; |896| 
DW$L$_BearingStatus$25$E:
DW$L$_BearingStatus$26$B:
        CMP       AH,AR2                ; |896| 
        BF        L74,EQ                ; |896| 
        ; branchcc occurs ; |896| 
DW$L$_BearingStatus$26$E:
DW$L$_BearingStatus$27$B:
        MOV       AL,AR2
        SUB       AL,AH                 ; |896| 
        CMPB      AL,#1                 ; |896| 
        BF        L74,EQ                ; |896| 
        ; branchcc occurs ; |896| 
DW$L$_BearingStatus$27$E:
L63:    
DW$L$_BearingStatus$28$B:
        MOV       T,AR1
        MOVL      XAR4,#_sensor         ; |925| 
        MPYB      ACC,T,#18             ; |925| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[1],#0          ; |925| 
        BF        L64,NTC               ; |925| 
        ; branchcc occurs ; |925| 
DW$L$_BearingStatus$28$E:
DW$L$_BearingStatus$29$B:
        MOVB      XAR0,#19              ; |925| 
        TBIT      *+XAR4[AR0],#0        ; |925| 
        BF        L64,NTC               ; |925| 
        ; branchcc occurs ; |925| 
DW$L$_BearingStatus$29$E:
DW$L$_BearingStatus$30$B:
        MOV       AL,AR2
        MOVL      XAR4,#_bearingstatus  ; |926| 
        MOV       ACC,AL                ; |926| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#32         ; |926| 
DW$L$_BearingStatus$30$E:
L64:    
DW$L$_BearingStatus$31$B:
        MPYB      ACC,T,#18             ; |930| 
        MOVL      XAR4,#_sensor         ; |930| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[1],#4          ; |930| 
        BF        L65,NTC               ; |930| 
        ; branchcc occurs ; |930| 
DW$L$_BearingStatus$31$E:
DW$L$_BearingStatus$32$B:
        MOVB      XAR0,#19              ; |930| 
        TBIT      *+XAR4[AR0],#4        ; |930| 
        BF        L66,TC                ; |930| 
        ; branchcc occurs ; |930| 
DW$L$_BearingStatus$32$E:
L65:    
DW$L$_BearingStatus$33$B:
        MPYB      ACC,T,#18             ; |930| 
        MOVL      XAR4,#_sensor         ; |930| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[1],#6          ; |930| 
        BF        L67,NTC               ; |930| 
        ; branchcc occurs ; |930| 
DW$L$_BearingStatus$33$E:
DW$L$_BearingStatus$34$B:
        MOVB      XAR0,#19              ; |930| 
        TBIT      *+XAR4[AR0],#6        ; |930| 
        BF        L67,NTC               ; |930| 
        ; branchcc occurs ; |930| 
DW$L$_BearingStatus$34$E:
L66:    
DW$L$_BearingStatus$35$B:
        MOV       AL,AR2
        MOVL      XAR4,#_bearingstatus  ; |931| 
        MOV       ACC,AL                ; |931| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#1          ; |931| 
DW$L$_BearingStatus$35$E:
L67:    
DW$L$_BearingStatus$36$B:
        MPYB      ACC,T,#18             ; |935| 
        MOVL      XAR4,#_sensor         ; |935| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[1],#2          ; |935| 
        BF        L68,NTC               ; |935| 
        ; branchcc occurs ; |935| 
DW$L$_BearingStatus$36$E:
DW$L$_BearingStatus$37$B:
        MOVB      XAR0,#19              ; |935| 
        TBIT      *+XAR4[AR0],#2        ; |935| 
        BF        L71,TC                ; |935| 
        ; branchcc occurs ; |935| 
DW$L$_BearingStatus$37$E:
L68:    
DW$L$_BearingStatus$38$B:
        MPYB      ACC,T,#18             ; |935| 
        MOVL      XAR4,#_sensor         ; |935| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[1],#8          ; |935| 
        BF        L69,NTC               ; |935| 
        ; branchcc occurs ; |935| 
DW$L$_BearingStatus$38$E:
DW$L$_BearingStatus$39$B:
        MOVB      XAR0,#19              ; |935| 
        TBIT      *+XAR4[AR0],#8        ; |935| 
        BF        L71,TC                ; |935| 
        ; branchcc occurs ; |935| 
DW$L$_BearingStatus$39$E:
L69:    
DW$L$_BearingStatus$40$B:
        MOV       AL,AR1
        LCR       #_CheckDMSingleBitSet ; |935| 
        ; call occurs [#_CheckDMSingleBitSet] ; |935| 
        CMPB      AL,#0                 ; |935| 
        BF        L70,EQ                ; |935| 
        ; branchcc occurs ; |935| 
DW$L$_BearingStatus$40$E:
DW$L$_BearingStatus$41$B:
        MOVB      AL,#1                 ; |935| 
        ADD       AL,AR1                ; |935| 
        LCR       #_CheckDMSingleBitSet ; |935| 
        ; call occurs [#_CheckDMSingleBitSet] ; |935| 
        CMPB      AL,#0                 ; |935| 
        BF        L71,NEQ               ; |935| 
        ; branchcc occurs ; |935| 
DW$L$_BearingStatus$41$E:
L70:    
DW$L$_BearingStatus$42$B:
        MOVW      DP,#_damalarms+3
        MOV       AL,@_damalarms+3      ; |935| 
        MOV       AH,AR3                ; |935| 
        LCR       #_CheckBitSet         ; |935| 
        ; call occurs [#_CheckBitSet] ; |935| 
        CMPB      AL,#0                 ; |935| 
        BF        L72,EQ                ; |935| 
        ; branchcc occurs ; |935| 
DW$L$_BearingStatus$42$E:
L71:    
DW$L$_BearingStatus$43$B:
        SETC      SXM
        MOV       AL,AR2
        MOVL      XAR4,#_bearingstatus  ; |939| 
        MOV       ACC,AL                ; |939| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#2          ; |939| 
DW$L$_BearingStatus$43$E:
L72:    
DW$L$_BearingStatus$44$B:
        MOV       T,AR1
        MOVL      XAR4,#_sensor         ; |943| 
        MPYB      ACC,T,#18             ; |943| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#0          ; |943| 
        BF        L73,TC                ; |943| 
        ; branchcc occurs ; |943| 
DW$L$_BearingStatus$44$E:
DW$L$_BearingStatus$45$B:
        MOVB      XAR0,#18              ; |943| 
        TBIT      *+XAR4[AR0],#0        ; |943| 
        BF        L73,TC                ; |943| 
        ; branchcc occurs ; |943| 
DW$L$_BearingStatus$45$E:
DW$L$_BearingStatus$46$B:
        SETC      SXM
        MOV       AL,AR2
        MOVL      XAR4,#_bearingstatus  ; |944| 
        MOV       ACC,AL                ; |944| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#4          ; |944| 
DW$L$_BearingStatus$46$E:
L73:    
DW$L$_BearingStatus$47$B:
        MOV       AL,AR1
        ADDB      AL,#2                 ; |947| 
        MOVZ      AR1,AL                ; |947| 
        BF        L80,UNC               ; |948| 
        ; branch occurs ; |948| 
DW$L$_BearingStatus$47$E:
L74:    
DW$L$_BearingStatus$48$B:
        MOV       T,AR1
        MOVL      XAR4,#_sensor+1       ; |899| 
        MPYB      ACC,T,#18             ; |899| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#0          ; |899| 
        BF        L75,NTC               ; |899| 
        ; branchcc occurs ; |899| 
DW$L$_BearingStatus$48$E:
DW$L$_BearingStatus$49$B:
        MOV       AL,AR2
        MOVL      XAR4,#_bearingstatus  ; |900| 
        MOV       ACC,AL                ; |900| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#32         ; |900| 
DW$L$_BearingStatus$49$E:
L75:    
DW$L$_BearingStatus$50$B:
        MPYB      ACC,T,#18             ; |904| 
        MOVL      XAR4,#_sensor+1       ; |904| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |904| 
        AND       AH,AL,#0x0010         ; |904| 
        ANDB      AL,#64                ; |904| 
        OR        AL,AH                 ; |904| 
        BF        L76,EQ                ; |904| 
        ; branchcc occurs ; |904| 
DW$L$_BearingStatus$50$E:
DW$L$_BearingStatus$51$B:
        MOV       AL,AR2
        MOVL      XAR4,#_bearingstatus  ; |905| 
        MOV       ACC,AL                ; |905| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#1          ; |905| 
DW$L$_BearingStatus$51$E:
L76:    
DW$L$_BearingStatus$52$B:
        MPYB      ACC,T,#18             ; |909| 
        MOVL      XAR4,#_sensor+1       ; |909| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |909| 
        AND       AH,AL,#0x0004         ; |909| 
        AND       AL,AL,#0x0100         ; |909| 
        OR        AL,AH                 ; |909| 
        BF        L77,NEQ               ; |909| 
        ; branchcc occurs ; |909| 
DW$L$_BearingStatus$52$E:
DW$L$_BearingStatus$53$B:
        MOV       AL,AR1
        LCR       #_CheckDMSingleBitSet ; |909| 
        ; call occurs [#_CheckDMSingleBitSet] ; |909| 
        CMPB      AL,#0                 ; |909| 
        BF        L78,EQ                ; |909| 
        ; branchcc occurs ; |909| 
DW$L$_BearingStatus$53$E:
L77:    
DW$L$_BearingStatus$54$B:
        SETC      SXM
        MOV       AL,AR2
        MOVL      XAR4,#_bearingstatus  ; |910| 
        MOV       ACC,AL                ; |910| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#2          ; |910| 
DW$L$_BearingStatus$54$E:
L78:    
DW$L$_BearingStatus$55$B:
        MOV       T,AR1
        MOVL      XAR4,#_sensor         ; |914| 
        MPYB      ACC,T,#18             ; |914| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#0          ; |914| 
        BF        L79,TC                ; |914| 
        ; branchcc occurs ; |914| 
DW$L$_BearingStatus$55$E:
DW$L$_BearingStatus$56$B:
        SETC      SXM
        MOV       AL,AR2
        MOVL      XAR4,#_bearingstatus  ; |915| 
        MOV       ACC,AL                ; |915| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#4          ; |915| 
DW$L$_BearingStatus$56$E:
L79:    
DW$L$_BearingStatus$57$B:
        MOV       AL,AR1
        ADDB      AL,#1                 ; |918| 
        MOVW      DP,#_damagemon
        MOVZ      AR1,AL                ; |918| 
        MOV       AL,AR2                ; |918| 
        SUB       AL,@_damagemon        ; |920| 
        CMPB      AL,#1                 ; |920| 
        BF        L81,NEQ               ; |920| 
        ; branchcc occurs ; |920| 
DW$L$_BearingStatus$57$E:
L80:    
DW$L$_BearingStatus$58$B:
        MOV       AL,AR3
        ADDB      AL,#1                 ; |920| 
        MOVZ      AR3,AL                ; |920| 
DW$L$_BearingStatus$58$E:
L81:    
DW$L$_BearingStatus$59$B:
        MOV       AL,AR2
        ADDB      AL,#1                 ; |892| 
        MOVZ      AR2,AL                ; |892| 
        MOV       AL,*-SP[1]            ; |892| 
        CMP       AL,AR2                ; |892| 
	.dwpsn	"alarms.c",951,0
        BF        L62,GEQ               ; |892| 
        ; branchcc occurs ; |892| 
DW$L$_BearingStatus$59$E:
L82:    
        SUBB      SP,#2
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"alarms.c",952,1
        LRETR
        ; return occurs

DW$89	.dwtag  DW_TAG_loop
	.dwattr DW$89, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\alarms.asm:L62:1:1471518966")
	.dwattr DW$89, DW_AT_begin_file("alarms.c")
	.dwattr DW$89, DW_AT_begin_line(0x37c)
	.dwattr DW$89, DW_AT_end_line(0x3b7)
DW$90	.dwtag  DW_TAG_loop_range
	.dwattr DW$90, DW_AT_low_pc(DW$L$_BearingStatus$23$B)
	.dwattr DW$90, DW_AT_high_pc(DW$L$_BearingStatus$23$E)
DW$91	.dwtag  DW_TAG_loop_range
	.dwattr DW$91, DW_AT_low_pc(DW$L$_BearingStatus$28$B)
	.dwattr DW$91, DW_AT_high_pc(DW$L$_BearingStatus$28$E)
DW$92	.dwtag  DW_TAG_loop_range
	.dwattr DW$92, DW_AT_low_pc(DW$L$_BearingStatus$29$B)
	.dwattr DW$92, DW_AT_high_pc(DW$L$_BearingStatus$29$E)
DW$93	.dwtag  DW_TAG_loop_range
	.dwattr DW$93, DW_AT_low_pc(DW$L$_BearingStatus$30$B)
	.dwattr DW$93, DW_AT_high_pc(DW$L$_BearingStatus$30$E)
DW$94	.dwtag  DW_TAG_loop_range
	.dwattr DW$94, DW_AT_low_pc(DW$L$_BearingStatus$31$B)
	.dwattr DW$94, DW_AT_high_pc(DW$L$_BearingStatus$31$E)
DW$95	.dwtag  DW_TAG_loop_range
	.dwattr DW$95, DW_AT_low_pc(DW$L$_BearingStatus$32$B)
	.dwattr DW$95, DW_AT_high_pc(DW$L$_BearingStatus$32$E)
DW$96	.dwtag  DW_TAG_loop_range
	.dwattr DW$96, DW_AT_low_pc(DW$L$_BearingStatus$33$B)
	.dwattr DW$96, DW_AT_high_pc(DW$L$_BearingStatus$33$E)
DW$97	.dwtag  DW_TAG_loop_range
	.dwattr DW$97, DW_AT_low_pc(DW$L$_BearingStatus$34$B)
	.dwattr DW$97, DW_AT_high_pc(DW$L$_BearingStatus$34$E)
DW$98	.dwtag  DW_TAG_loop_range
	.dwattr DW$98, DW_AT_low_pc(DW$L$_BearingStatus$35$B)
	.dwattr DW$98, DW_AT_high_pc(DW$L$_BearingStatus$35$E)
DW$99	.dwtag  DW_TAG_loop_range
	.dwattr DW$99, DW_AT_low_pc(DW$L$_BearingStatus$36$B)
	.dwattr DW$99, DW_AT_high_pc(DW$L$_BearingStatus$36$E)
DW$100	.dwtag  DW_TAG_loop_range
	.dwattr DW$100, DW_AT_low_pc(DW$L$_BearingStatus$37$B)
	.dwattr DW$100, DW_AT_high_pc(DW$L$_BearingStatus$37$E)
DW$101	.dwtag  DW_TAG_loop_range
	.dwattr DW$101, DW_AT_low_pc(DW$L$_BearingStatus$38$B)
	.dwattr DW$101, DW_AT_high_pc(DW$L$_BearingStatus$38$E)
DW$102	.dwtag  DW_TAG_loop_range
	.dwattr DW$102, DW_AT_low_pc(DW$L$_BearingStatus$39$B)
	.dwattr DW$102, DW_AT_high_pc(DW$L$_BearingStatus$39$E)
DW$103	.dwtag  DW_TAG_loop_range
	.dwattr DW$103, DW_AT_low_pc(DW$L$_BearingStatus$40$B)
	.dwattr DW$103, DW_AT_high_pc(DW$L$_BearingStatus$40$E)
DW$104	.dwtag  DW_TAG_loop_range
	.dwattr DW$104, DW_AT_low_pc(DW$L$_BearingStatus$41$B)
	.dwattr DW$104, DW_AT_high_pc(DW$L$_BearingStatus$41$E)
DW$105	.dwtag  DW_TAG_loop_range
	.dwattr DW$105, DW_AT_low_pc(DW$L$_BearingStatus$42$B)
	.dwattr DW$105, DW_AT_high_pc(DW$L$_BearingStatus$42$E)
DW$106	.dwtag  DW_TAG_loop_range
	.dwattr DW$106, DW_AT_low_pc(DW$L$_BearingStatus$43$B)
	.dwattr DW$106, DW_AT_high_pc(DW$L$_BearingStatus$43$E)
DW$107	.dwtag  DW_TAG_loop_range
	.dwattr DW$107, DW_AT_low_pc(DW$L$_BearingStatus$44$B)
	.dwattr DW$107, DW_AT_high_pc(DW$L$_BearingStatus$44$E)
DW$108	.dwtag  DW_TAG_loop_range
	.dwattr DW$108, DW_AT_low_pc(DW$L$_BearingStatus$45$B)
	.dwattr DW$108, DW_AT_high_pc(DW$L$_BearingStatus$45$E)
DW$109	.dwtag  DW_TAG_loop_range
	.dwattr DW$109, DW_AT_low_pc(DW$L$_BearingStatus$46$B)
	.dwattr DW$109, DW_AT_high_pc(DW$L$_BearingStatus$46$E)
DW$110	.dwtag  DW_TAG_loop_range
	.dwattr DW$110, DW_AT_low_pc(DW$L$_BearingStatus$47$B)
	.dwattr DW$110, DW_AT_high_pc(DW$L$_BearingStatus$47$E)
DW$111	.dwtag  DW_TAG_loop_range
	.dwattr DW$111, DW_AT_low_pc(DW$L$_BearingStatus$25$B)
	.dwattr DW$111, DW_AT_high_pc(DW$L$_BearingStatus$25$E)
DW$112	.dwtag  DW_TAG_loop_range
	.dwattr DW$112, DW_AT_low_pc(DW$L$_BearingStatus$24$B)
	.dwattr DW$112, DW_AT_high_pc(DW$L$_BearingStatus$24$E)
DW$113	.dwtag  DW_TAG_loop_range
	.dwattr DW$113, DW_AT_low_pc(DW$L$_BearingStatus$26$B)
	.dwattr DW$113, DW_AT_high_pc(DW$L$_BearingStatus$26$E)
DW$114	.dwtag  DW_TAG_loop_range
	.dwattr DW$114, DW_AT_low_pc(DW$L$_BearingStatus$27$B)
	.dwattr DW$114, DW_AT_high_pc(DW$L$_BearingStatus$27$E)
DW$115	.dwtag  DW_TAG_loop_range
	.dwattr DW$115, DW_AT_low_pc(DW$L$_BearingStatus$48$B)
	.dwattr DW$115, DW_AT_high_pc(DW$L$_BearingStatus$48$E)
DW$116	.dwtag  DW_TAG_loop_range
	.dwattr DW$116, DW_AT_low_pc(DW$L$_BearingStatus$49$B)
	.dwattr DW$116, DW_AT_high_pc(DW$L$_BearingStatus$49$E)
DW$117	.dwtag  DW_TAG_loop_range
	.dwattr DW$117, DW_AT_low_pc(DW$L$_BearingStatus$50$B)
	.dwattr DW$117, DW_AT_high_pc(DW$L$_BearingStatus$50$E)
DW$118	.dwtag  DW_TAG_loop_range
	.dwattr DW$118, DW_AT_low_pc(DW$L$_BearingStatus$51$B)
	.dwattr DW$118, DW_AT_high_pc(DW$L$_BearingStatus$51$E)
DW$119	.dwtag  DW_TAG_loop_range
	.dwattr DW$119, DW_AT_low_pc(DW$L$_BearingStatus$52$B)
	.dwattr DW$119, DW_AT_high_pc(DW$L$_BearingStatus$52$E)
DW$120	.dwtag  DW_TAG_loop_range
	.dwattr DW$120, DW_AT_low_pc(DW$L$_BearingStatus$53$B)
	.dwattr DW$120, DW_AT_high_pc(DW$L$_BearingStatus$53$E)
DW$121	.dwtag  DW_TAG_loop_range
	.dwattr DW$121, DW_AT_low_pc(DW$L$_BearingStatus$54$B)
	.dwattr DW$121, DW_AT_high_pc(DW$L$_BearingStatus$54$E)
DW$122	.dwtag  DW_TAG_loop_range
	.dwattr DW$122, DW_AT_low_pc(DW$L$_BearingStatus$55$B)
	.dwattr DW$122, DW_AT_high_pc(DW$L$_BearingStatus$55$E)
DW$123	.dwtag  DW_TAG_loop_range
	.dwattr DW$123, DW_AT_low_pc(DW$L$_BearingStatus$56$B)
	.dwattr DW$123, DW_AT_high_pc(DW$L$_BearingStatus$56$E)
DW$124	.dwtag  DW_TAG_loop_range
	.dwattr DW$124, DW_AT_low_pc(DW$L$_BearingStatus$57$B)
	.dwattr DW$124, DW_AT_high_pc(DW$L$_BearingStatus$57$E)
DW$125	.dwtag  DW_TAG_loop_range
	.dwattr DW$125, DW_AT_low_pc(DW$L$_BearingStatus$58$B)
	.dwattr DW$125, DW_AT_high_pc(DW$L$_BearingStatus$58$E)
DW$126	.dwtag  DW_TAG_loop_range
	.dwattr DW$126, DW_AT_low_pc(DW$L$_BearingStatus$59$B)
	.dwattr DW$126, DW_AT_high_pc(DW$L$_BearingStatus$59$E)
	.dwendtag DW$89


DW$127	.dwtag  DW_TAG_loop
	.dwattr DW$127, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\alarms.asm:L54:1:1471518966")
	.dwattr DW$127, DW_AT_begin_file("alarms.c")
	.dwattr DW$127, DW_AT_begin_line(0x34e)
	.dwattr DW$127, DW_AT_end_line(0x372)
DW$128	.dwtag  DW_TAG_loop_range
	.dwattr DW$128, DW_AT_low_pc(DW$L$_BearingStatus$2$B)
	.dwattr DW$128, DW_AT_high_pc(DW$L$_BearingStatus$2$E)
DW$129	.dwtag  DW_TAG_loop_range
	.dwattr DW$129, DW_AT_low_pc(DW$L$_BearingStatus$3$B)
	.dwattr DW$129, DW_AT_high_pc(DW$L$_BearingStatus$3$E)
DW$130	.dwtag  DW_TAG_loop_range
	.dwattr DW$130, DW_AT_low_pc(DW$L$_BearingStatus$4$B)
	.dwattr DW$130, DW_AT_high_pc(DW$L$_BearingStatus$4$E)
DW$131	.dwtag  DW_TAG_loop_range
	.dwattr DW$131, DW_AT_low_pc(DW$L$_BearingStatus$5$B)
	.dwattr DW$131, DW_AT_high_pc(DW$L$_BearingStatus$5$E)
DW$132	.dwtag  DW_TAG_loop_range
	.dwattr DW$132, DW_AT_low_pc(DW$L$_BearingStatus$6$B)
	.dwattr DW$132, DW_AT_high_pc(DW$L$_BearingStatus$6$E)
DW$133	.dwtag  DW_TAG_loop_range
	.dwattr DW$133, DW_AT_low_pc(DW$L$_BearingStatus$7$B)
	.dwattr DW$133, DW_AT_high_pc(DW$L$_BearingStatus$7$E)
DW$134	.dwtag  DW_TAG_loop_range
	.dwattr DW$134, DW_AT_low_pc(DW$L$_BearingStatus$8$B)
	.dwattr DW$134, DW_AT_high_pc(DW$L$_BearingStatus$8$E)
DW$135	.dwtag  DW_TAG_loop_range
	.dwattr DW$135, DW_AT_low_pc(DW$L$_BearingStatus$9$B)
	.dwattr DW$135, DW_AT_high_pc(DW$L$_BearingStatus$9$E)
DW$136	.dwtag  DW_TAG_loop_range
	.dwattr DW$136, DW_AT_low_pc(DW$L$_BearingStatus$10$B)
	.dwattr DW$136, DW_AT_high_pc(DW$L$_BearingStatus$10$E)
DW$137	.dwtag  DW_TAG_loop_range
	.dwattr DW$137, DW_AT_low_pc(DW$L$_BearingStatus$11$B)
	.dwattr DW$137, DW_AT_high_pc(DW$L$_BearingStatus$11$E)
DW$138	.dwtag  DW_TAG_loop_range
	.dwattr DW$138, DW_AT_low_pc(DW$L$_BearingStatus$12$B)
	.dwattr DW$138, DW_AT_high_pc(DW$L$_BearingStatus$12$E)
DW$139	.dwtag  DW_TAG_loop_range
	.dwattr DW$139, DW_AT_low_pc(DW$L$_BearingStatus$13$B)
	.dwattr DW$139, DW_AT_high_pc(DW$L$_BearingStatus$13$E)
DW$140	.dwtag  DW_TAG_loop_range
	.dwattr DW$140, DW_AT_low_pc(DW$L$_BearingStatus$14$B)
	.dwattr DW$140, DW_AT_high_pc(DW$L$_BearingStatus$14$E)
DW$141	.dwtag  DW_TAG_loop_range
	.dwattr DW$141, DW_AT_low_pc(DW$L$_BearingStatus$15$B)
	.dwattr DW$141, DW_AT_high_pc(DW$L$_BearingStatus$15$E)
DW$142	.dwtag  DW_TAG_loop_range
	.dwattr DW$142, DW_AT_low_pc(DW$L$_BearingStatus$16$B)
	.dwattr DW$142, DW_AT_high_pc(DW$L$_BearingStatus$16$E)
DW$143	.dwtag  DW_TAG_loop_range
	.dwattr DW$143, DW_AT_low_pc(DW$L$_BearingStatus$17$B)
	.dwattr DW$143, DW_AT_high_pc(DW$L$_BearingStatus$17$E)
DW$144	.dwtag  DW_TAG_loop_range
	.dwattr DW$144, DW_AT_low_pc(DW$L$_BearingStatus$18$B)
	.dwattr DW$144, DW_AT_high_pc(DW$L$_BearingStatus$18$E)
DW$145	.dwtag  DW_TAG_loop_range
	.dwattr DW$145, DW_AT_low_pc(DW$L$_BearingStatus$19$B)
	.dwattr DW$145, DW_AT_high_pc(DW$L$_BearingStatus$19$E)
	.dwendtag DW$127

	.dwattr DW$88, DW_AT_end_file("alarms.c")
	.dwattr DW$88, DW_AT_end_line(0x3b8)
	.dwattr DW$88, DW_AT_end_column(0x01)
	.dwendtag DW$88

	.sect	".text"
	.global	_CheckDMSingleBitSet

DW$146	.dwtag  DW_TAG_subprogram, DW_AT_name("CheckDMSingleBitSet"), DW_AT_symbol_name("_CheckDMSingleBitSet")
	.dwattr DW$146, DW_AT_low_pc(_CheckDMSingleBitSet)
	.dwattr DW$146, DW_AT_high_pc(0x00)
	.dwattr DW$146, DW_AT_begin_file("alarms.c")
	.dwattr DW$146, DW_AT_begin_line(0x3bb)
	.dwattr DW$146, DW_AT_begin_column(0x05)
	.dwattr DW$146, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$146, DW_AT_skeletal(0x01)
	.dwpsn	"alarms.c",956,1

;***************************************************************
;* FNAME: _CheckDMSingleBitSet          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CheckDMSingleBitSet:
;* AL    assigned to _index
DW$147	.dwtag  DW_TAG_formal_parameter, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$147, DW_AT_type(*DW$T$11)
	.dwattr DW$147, DW_AT_location[DW_OP_reg0]
        MOV       AH,AL                 ; |956| 
        CMPB      AH,#16                ; |957| 
        BF        L83,HIS               ; |957| 
        ; branchcc occurs ; |957| 
        MOVW      DP,#_damalarms
        MOV       AL,@_damalarms        ; |957| 
        BF        L86,UNC               ; |957| 
        ; branch occurs ; |957| 
L83:    
        CMPB      AH,#16                ; |957| 
        BF        L84,LO                ; |957| 
        ; branchcc occurs ; |957| 
        CMPB      AH,#32                ; |957| 
        BF        L85,LO                ; |957| 
        ; branchcc occurs ; |957| 
L84:    
        MOVB      AL,#0
        BF        L87,UNC               ; |957| 
        ; branch occurs ; |957| 
L85:    
        MOVW      DP,#_damalarms+1
        MOV       AL,@_damalarms+1      ; |957| 
        ADDB      AH,#-16
L86:    
        LCR       #_CheckBitSet         ; |957| 
        ; call occurs [#_CheckBitSet] ; |957| 
L87:    
	.dwpsn	"alarms.c",960,1
        LRETR
        ; return occurs
	.dwattr DW$146, DW_AT_end_file("alarms.c")
	.dwattr DW$146, DW_AT_end_line(0x3c0)
	.dwattr DW$146, DW_AT_end_column(0x01)
	.dwendtag DW$146

	.sect	".text"
	.global	_CheckAlarmBitSet

DW$148	.dwtag  DW_TAG_subprogram, DW_AT_name("CheckAlarmBitSet"), DW_AT_symbol_name("_CheckAlarmBitSet")
	.dwattr DW$148, DW_AT_low_pc(_CheckAlarmBitSet)
	.dwattr DW$148, DW_AT_high_pc(0x00)
	.dwattr DW$148, DW_AT_begin_file("alarms.c")
	.dwattr DW$148, DW_AT_begin_line(0x3c7)
	.dwattr DW$148, DW_AT_begin_column(0x05)
	.dwattr DW$148, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$148, DW_AT_skeletal(0x01)
	.dwpsn	"alarms.c",968,1

;***************************************************************
;* FNAME: _CheckAlarmBitSet             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CheckAlarmBitSet:
;* AL    assigned to _index
DW$149	.dwtag  DW_TAG_formal_parameter, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$149, DW_AT_type(*DW$T$11)
	.dwattr DW$149, DW_AT_location[DW_OP_reg0]
        MOV       AH,AL                 ; |968| 
        LSR       AL,4                  ; |975| 
        CMPB      AL,#33                ; |975| 
        MOVZ      AR0,AL                ; |975| 
        BF        L88,HIS               ; |975| 
        ; branchcc occurs ; |975| 
        MOVL      XAR4,#_bitalarmlist   ; |975| 
        MOV       AL,*+XAR4[AR0]        ; |975| 
        ANDB      AH,#15                ; |975| 
        LCR       #_CheckBitSet         ; |975| 
        ; call occurs [#_CheckBitSet] ; |975| 
        BF        L89,UNC               ; |975| 
        ; branch occurs ; |975| 
L88:    
        MOVB      AL,#0
L89:    
	.dwpsn	"alarms.c",979,1
        LRETR
        ; return occurs
	.dwattr DW$148, DW_AT_end_file("alarms.c")
	.dwattr DW$148, DW_AT_end_line(0x3d3)
	.dwattr DW$148, DW_AT_end_column(0x01)
	.dwendtag DW$148

;***************************************************************
;* FAR STRINGS                                                 *
;***************************************************************
	.sect	".econst"
	.align	2
FSL1:	.string	"Code - ClearEventCodeListArea",13,10,0
	.align	2
FSL2:	.string	"SetAlarmEvent:%u %u %u",13,10,0
	.align	2
FSL3:	.string	"ClearAlarmEvent:%u %u %u",13,10,0
	.align	2
FSL4:	.string	"SetBitEvent:%u %u %u",13,10,0
	.align	2
FSL5:	.string	"ClearBitEvent:%u %u %u",13,10,0
;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_sprintf
	.global	_DebugStringOut
	.global	_AnalogOOR
	.global	_GetSensorAlarmMask
	.global	_SetRPMChan
	.global	_GetStatus2Flags
	.global	_ReadPCCommsFlag
	.global	_WriteNVMemory
	.global	_InputNumtoString
	.global	_WriteAlarmListtoNVMEM
	.global	_BitSet
	.global	_BitClear
	.global	_CheckBitSet
	.global	_stringbuffer
	.global	_eventlogentry
	.global	_settings
	.global	_timers
	.global	_allsensors
	.global	_cylinders
	.global	_sensor
	.global	_damagemon
	.global	_damalarms
	.global	_slave485mb
	.global	_waterinoil
	.global	_digout

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

DW$T$54	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$54, DW_AT_language(DW_LANG_C)
DW$150	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$53)
	.dwendtag DW$T$54


DW$T$56	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$56, DW_AT_language(DW_LANG_C)

DW$T$58	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$58, DW_AT_language(DW_LANG_C)
DW$151	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$152	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$58


DW$T$60	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$60, DW_AT_language(DW_LANG_C)
DW$153	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$60

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)

DW$T$65	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$65, DW_AT_language(DW_LANG_C)
DW$154	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$53)
DW$155	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$64)
DW$156	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$65


DW$T$67	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$67, DW_AT_language(DW_LANG_C)

DW$T$69	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$69, DW_AT_language(DW_LANG_C)

DW$T$71	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$71, DW_AT_language(DW_LANG_C)
DW$157	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$71


DW$T$73	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$73, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$73, DW_AT_byte_size(0x1c)
DW$158	.dwtag  DW_TAG_subrange_type
	.dwattr DW$158, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$73

DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)

DW$T$86	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$85)
	.dwattr DW$T$86, DW_AT_language(DW_LANG_C)

DW$T$87	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$87, DW_AT_language(DW_LANG_C)
DW$159	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$87


DW$T$89	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$89, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$89, DW_AT_byte_size(0x21)
DW$160	.dwtag  DW_TAG_subrange_type
	.dwattr DW$160, DW_AT_upper_bound(0x20)
	.dwendtag DW$T$89


DW$T$91	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$91, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$91, DW_AT_byte_size(0x30)
DW$161	.dwtag  DW_TAG_subrange_type
	.dwattr DW$161, DW_AT_upper_bound(0x0f)
DW$162	.dwtag  DW_TAG_subrange_type
	.dwattr DW$162, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$91

DW$T$95	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$39)
	.dwattr DW$T$95, DW_AT_address_class(0x16)

DW$T$96	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$95)
	.dwattr DW$T$96, DW_AT_language(DW_LANG_C)
DW$163	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$96

DW$T$100	.dwtag  DW_TAG_typedef, DW_AT_name("alarmsstruct"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$100, DW_AT_language(DW_LANG_C)

DW$T$102	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$101)
	.dwattr DW$T$102, DW_AT_language(DW_LANG_C)

DW$T$108	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$107)
	.dwattr DW$T$108, DW_AT_language(DW_LANG_C)
DW$164	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$108


DW$T$109	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$106)
	.dwattr DW$T$109, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$109, DW_AT_byte_size(0x1c)
DW$165	.dwtag  DW_TAG_subrange_type
	.dwattr DW$165, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$109

DW$T$114	.dwtag  DW_TAG_typedef, DW_AT_name("eventlogstruct"), DW_AT_type(*DW$T$26)
	.dwattr DW$T$114, DW_AT_language(DW_LANG_C)
DW$T$116	.dwtag  DW_TAG_typedef, DW_AT_name("settingsstruct"), DW_AT_type(*DW$T$28)
	.dwattr DW$T$116, DW_AT_language(DW_LANG_C)
DW$166	.dwtag  DW_TAG_far_type
	.dwattr DW$166, DW_AT_type(*DW$T$117)
DW$T$118	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$118, DW_AT_type(*DW$166)
DW$T$120	.dwtag  DW_TAG_typedef, DW_AT_name("allsensorstruct"), DW_AT_type(*DW$T$33)
	.dwattr DW$T$120, DW_AT_language(DW_LANG_C)

DW$T$123	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$122)
	.dwattr DW$T$123, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$123, DW_AT_byte_size(0x38)
DW$167	.dwtag  DW_TAG_subrange_type
	.dwattr DW$167, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$123


DW$T$127	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$126)
	.dwattr DW$T$127, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$127, DW_AT_byte_size(0x1f8)
DW$168	.dwtag  DW_TAG_subrange_type
	.dwattr DW$168, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$127

DW$T$130	.dwtag  DW_TAG_typedef, DW_AT_name("damagemonstruct"), DW_AT_type(*DW$T$41)
	.dwattr DW$T$130, DW_AT_language(DW_LANG_C)
DW$T$131	.dwtag  DW_TAG_typedef, DW_AT_name("damalarmsstruct"), DW_AT_type(*DW$T$43)
	.dwattr DW$T$131, DW_AT_language(DW_LANG_C)
DW$T$133	.dwtag  DW_TAG_typedef, DW_AT_name("slavecmdstruct"), DW_AT_type(*DW$T$45)
	.dwattr DW$T$133, DW_AT_language(DW_LANG_C)
DW$T$134	.dwtag  DW_TAG_typedef, DW_AT_name("waterinoilstruct"), DW_AT_type(*DW$T$48)
	.dwattr DW$T$134, DW_AT_language(DW_LANG_C)
DW$T$136	.dwtag  DW_TAG_typedef, DW_AT_name("digoutstruct"), DW_AT_type(*DW$T$49)
	.dwattr DW$T$136, DW_AT_language(DW_LANG_C)
DW$T$137	.dwtag  DW_TAG_typedef, DW_AT_name("bearingstatusstruct"), DW_AT_type(*DW$T$51)
	.dwattr DW$T$137, DW_AT_language(DW_LANG_C)
DW$T$53	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$52)
	.dwattr DW$T$53, DW_AT_address_class(0x16)
DW$T$64	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$63)
	.dwattr DW$T$64, DW_AT_address_class(0x16)

DW$T$139	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$52)
	.dwattr DW$T$139, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$139, DW_AT_byte_size(0x64)
DW$169	.dwtag  DW_TAG_subrange_type
	.dwattr DW$169, DW_AT_upper_bound(0x63)
	.dwendtag DW$T$139

DW$T$85	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$85, DW_AT_address_class(0x16)
DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("sensoralarmstruct"), DW_AT_type(*DW$T$19)
	.dwattr DW$T$39, DW_AT_language(DW_LANG_C)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("tag_alarmsstruct")
	.dwattr DW$T$20, DW_AT_byte_size(0x01)
DW$170	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$170, DW_AT_name("slavefailure"), DW_AT_symbol_name("_slavefailure")
	.dwattr DW$170, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$170, DW_AT_accessibility(DW_ACCESS_public)
DW$171	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$171, DW_AT_name("slavefailurelatched"), DW_AT_symbol_name("_slavefailurelatched")
	.dwattr DW$171, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$171, DW_AT_accessibility(DW_ACCESS_public)
DW$172	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$172, DW_AT_name("framfailure"), DW_AT_symbol_name("_framfailure")
	.dwattr DW$172, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$172, DW_AT_accessibility(DW_ACCESS_public)
DW$173	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$173, DW_AT_name("framfailurelatched"), DW_AT_symbol_name("_framfailurelatched")
	.dwattr DW$173, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$173, DW_AT_accessibility(DW_ACCESS_public)
DW$174	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$174, DW_AT_name("pccommsfailure"), DW_AT_symbol_name("_pccommsfailure")
	.dwattr DW$174, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$174, DW_AT_accessibility(DW_ACCESS_public)
DW$175	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$175, DW_AT_name("pccommsfailurelatched"), DW_AT_symbol_name("_pccommsfailurelatched")
	.dwattr DW$175, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$175, DW_AT_accessibility(DW_ACCESS_public)
DW$176	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$176, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$176, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$176, DW_AT_accessibility(DW_ACCESS_public)
DW$177	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$177, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$177, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$177, DW_AT_accessibility(DW_ACCESS_public)
DW$178	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$178, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$178, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$178, DW_AT_accessibility(DW_ACCESS_public)
DW$179	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$179, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$179, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$179, DW_AT_accessibility(DW_ACCESS_public)
DW$180	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$180, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$180, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$180, DW_AT_accessibility(DW_ACCESS_public)
DW$181	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$181, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$181, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$181, DW_AT_accessibility(DW_ACCESS_public)
DW$182	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$182, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$182, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$182, DW_AT_accessibility(DW_ACCESS_public)
DW$183	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$183, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$183, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$183, DW_AT_accessibility(DW_ACCESS_public)
DW$184	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$184, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$184, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$184, DW_AT_accessibility(DW_ACCESS_public)
DW$185	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$185, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$185, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$185, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20

DW$T$101	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$100)
	.dwattr DW$T$101, DW_AT_address_class(0x16)
DW$T$106	.dwtag  DW_TAG_typedef, DW_AT_name("status3struct"), DW_AT_type(*DW$T$21)
	.dwattr DW$T$106, DW_AT_language(DW_LANG_C)
DW$T$107	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$106)
	.dwattr DW$T$107, DW_AT_address_class(0x16)

DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_name("tag_eventlogstruct")
	.dwattr DW$T$26, DW_AT_byte_size(0x44)
DW$186	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$186, DW_AT_name("eventid"), DW_AT_symbol_name("_eventid")
	.dwattr DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$186, DW_AT_accessibility(DW_ACCESS_public)
DW$187	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$187, DW_AT_name("datetime"), DW_AT_symbol_name("_datetime")
	.dwattr DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$187, DW_AT_accessibility(DW_ACCESS_public)
DW$188	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$188, DW_AT_name("msgstring"), DW_AT_symbol_name("_msgstring")
	.dwattr DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$188, DW_AT_accessibility(DW_ACCESS_public)
DW$189	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$189, DW_AT_name("msgstring2"), DW_AT_symbol_name("_msgstring2")
	.dwattr DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$189, DW_AT_accessibility(DW_ACCESS_public)
DW$190	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$190, DW_AT_name("ackdatetime"), DW_AT_symbol_name("_ackdatetime")
	.dwattr DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr DW$190, DW_AT_accessibility(DW_ACCESS_public)
DW$191	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$191, DW_AT_name("ackstring"), DW_AT_symbol_name("_ackstring")
	.dwattr DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$191, DW_AT_accessibility(DW_ACCESS_public)
DW$192	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$192, DW_AT_name("newalarmeventflag"), DW_AT_symbol_name("_newalarmeventflag")
	.dwattr DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x3f]
	.dwattr DW$192, DW_AT_accessibility(DW_ACCESS_public)
DW$193	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$193, DW_AT_name("eventcodestatus"), DW_AT_symbol_name("_eventcodestatus")
	.dwattr DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$193, DW_AT_accessibility(DW_ACCESS_public)
DW$194	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$194, DW_AT_name("eventcode"), DW_AT_symbol_name("_eventcode")
	.dwattr DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr DW$194, DW_AT_accessibility(DW_ACCESS_public)
DW$195	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$195, DW_AT_name("currentindex"), DW_AT_symbol_name("_currentindex")
	.dwattr DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr DW$195, DW_AT_accessibility(DW_ACCESS_public)
DW$196	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$196, DW_AT_name("txalarmevents"), DW_AT_symbol_name("_txalarmevents")
	.dwattr DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr DW$196, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_name("tag_settingsstruct")
	.dwattr DW$T$28, DW_AT_byte_size(0x24)
DW$197	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$197, DW_AT_name("watchdog"), DW_AT_symbol_name("_watchdog")
	.dwattr DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$197, DW_AT_accessibility(DW_ACCESS_public)
DW$198	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$198, DW_AT_name("ledflashflag"), DW_AT_symbol_name("_ledflashflag")
	.dwattr DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$198, DW_AT_accessibility(DW_ACCESS_public)
DW$199	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$199, DW_AT_name("updatesafe"), DW_AT_symbol_name("_updatesafe")
	.dwattr DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$199, DW_AT_accessibility(DW_ACCESS_public)
DW$200	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$200, DW_AT_name("tableconfigtype"), DW_AT_symbol_name("_tableconfigtype")
	.dwattr DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$200, DW_AT_accessibility(DW_ACCESS_public)
DW$201	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$201, DW_AT_name("caltableconfigtype"), DW_AT_symbol_name("_caltableconfigtype")
	.dwattr DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$201, DW_AT_accessibility(DW_ACCESS_public)
DW$202	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$202, DW_AT_name("eventmsgid"), DW_AT_symbol_name("_eventmsgid")
	.dwattr DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$202, DW_AT_accessibility(DW_ACCESS_public)
DW$203	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$203, DW_AT_name("configoperationcomplete"), DW_AT_symbol_name("_configoperationcomplete")
	.dwattr DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$203, DW_AT_accessibility(DW_ACCESS_public)
DW$204	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$204, DW_AT_name("sdcarderr"), DW_AT_symbol_name("_sdcarderr")
	.dwattr DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$204, DW_AT_accessibility(DW_ACCESS_public)
DW$205	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$205, DW_AT_name("sderase"), DW_AT_symbol_name("_sderase")
	.dwattr DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$205, DW_AT_accessibility(DW_ACCESS_public)
DW$206	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$206, DW_AT_name("sdreinit"), DW_AT_symbol_name("_sdreinit")
	.dwattr DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$206, DW_AT_accessibility(DW_ACCESS_public)
DW$207	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$207, DW_AT_name("sdcardupdate"), DW_AT_symbol_name("_sdcardupdate")
	.dwattr DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$207, DW_AT_accessibility(DW_ACCESS_public)
DW$208	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$208, DW_AT_name("cardreadflag"), DW_AT_symbol_name("_cardreadflag")
	.dwattr DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$208, DW_AT_accessibility(DW_ACCESS_public)
DW$209	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$209, DW_AT_name("ignore"), DW_AT_symbol_name("_ignore")
	.dwattr DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$209, DW_AT_accessibility(DW_ACCESS_public)
DW$210	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$210, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$210, DW_AT_accessibility(DW_ACCESS_public)
DW$211	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$211, DW_AT_name("spiinuse"), DW_AT_symbol_name("_spiinuse")
	.dwattr DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$211, DW_AT_accessibility(DW_ACCESS_public)
DW$212	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$212, DW_AT_name("dcpeakhold"), DW_AT_symbol_name("_dcpeakhold")
	.dwattr DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$212, DW_AT_accessibility(DW_ACCESS_public)
DW$213	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$213, DW_AT_name("dcpause"), DW_AT_symbol_name("_dcpause")
	.dwattr DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$213, DW_AT_accessibility(DW_ACCESS_public)
DW$214	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$214, DW_AT_name("mastermode"), DW_AT_symbol_name("_mastermode")
	.dwattr DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$214, DW_AT_accessibility(DW_ACCESS_public)
DW$215	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$215, DW_AT_name("updatescaling"), DW_AT_symbol_name("_updatescaling")
	.dwattr DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$215, DW_AT_accessibility(DW_ACCESS_public)
DW$216	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$216, DW_AT_name("forwardasternflag"), DW_AT_symbol_name("_forwardasternflag")
	.dwattr DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$216, DW_AT_accessibility(DW_ACCESS_public)
DW$217	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$217, DW_AT_name("initprogress"), DW_AT_symbol_name("_initprogress")
	.dwattr DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$217, DW_AT_accessibility(DW_ACCESS_public)
DW$218	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$218, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$218, DW_AT_accessibility(DW_ACCESS_public)
DW$219	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$219, DW_AT_name("slowdowncounter"), DW_AT_symbol_name("_slowdowncounter")
	.dwattr DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$219, DW_AT_accessibility(DW_ACCESS_public)
DW$220	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$220, DW_AT_name("slowdowncondition"), DW_AT_symbol_name("_slowdowncondition")
	.dwattr DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$220, DW_AT_accessibility(DW_ACCESS_public)
DW$221	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$221, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$221, DW_AT_accessibility(DW_ACCESS_public)
DW$222	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$222, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$222, DW_AT_accessibility(DW_ACCESS_public)
DW$223	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$223, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$223, DW_AT_accessibility(DW_ACCESS_public)
DW$224	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$224, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$224, DW_AT_accessibility(DW_ACCESS_public)
DW$225	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$225, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$225, DW_AT_accessibility(DW_ACCESS_public)
DW$226	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$226, DW_AT_name("temperaturealarm"), DW_AT_symbol_name("_temperaturealarm")
	.dwattr DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$226, DW_AT_accessibility(DW_ACCESS_public)
DW$227	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$227, DW_AT_name("temperatureslowdown"), DW_AT_symbol_name("_temperatureslowdown")
	.dwattr DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$227, DW_AT_accessibility(DW_ACCESS_public)
DW$228	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$228, DW_AT_name("anadebug"), DW_AT_symbol_name("_anadebug")
	.dwattr DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$228, DW_AT_accessibility(DW_ACCESS_public)
DW$229	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$229, DW_AT_name("serialdebug"), DW_AT_symbol_name("_serialdebug")
	.dwattr DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr DW$229, DW_AT_accessibility(DW_ACCESS_public)
DW$230	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$230, DW_AT_name("timerrunning"), DW_AT_symbol_name("_timerrunning")
	.dwattr DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$230, DW_AT_accessibility(DW_ACCESS_public)
DW$231	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$231, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$231, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28

DW$T$117	.dwtag  DW_TAG_typedef, DW_AT_name("timersstruct"), DW_AT_type(*DW$T$30)
	.dwattr DW$T$117, DW_AT_language(DW_LANG_C)

DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$33, DW_AT_name("tag_allsensorstruct")
	.dwattr DW$T$33, DW_AT_byte_size(0x2d)
DW$232	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$232, DW_AT_name("numsensors"), DW_AT_symbol_name("_numsensors")
	.dwattr DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$232, DW_AT_accessibility(DW_ACCESS_public)
DW$233	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$233, DW_AT_name("numsensorsspu1"), DW_AT_symbol_name("_numsensorsspu1")
	.dwattr DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$233, DW_AT_accessibility(DW_ACCESS_public)
DW$234	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$234, DW_AT_name("numsensorsspu2"), DW_AT_symbol_name("_numsensorsspu2")
	.dwattr DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$234, DW_AT_accessibility(DW_ACCESS_public)
DW$235	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$235, DW_AT_name("nominalspeed"), DW_AT_symbol_name("_nominalspeed")
	.dwattr DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$235, DW_AT_accessibility(DW_ACCESS_public)
DW$236	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$236, DW_AT_name("rpmmin"), DW_AT_symbol_name("_rpmmin")
	.dwattr DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$236, DW_AT_accessibility(DW_ACCESS_public)
DW$237	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$237, DW_AT_name("rpmmax"), DW_AT_symbol_name("_rpmmax")
	.dwattr DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$237, DW_AT_accessibility(DW_ACCESS_public)
DW$238	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$238, DW_AT_name("reflash"), DW_AT_symbol_name("_reflash")
	.dwattr DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$238, DW_AT_accessibility(DW_ACCESS_public)
DW$239	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$239, DW_AT_name("sensorhysteresis"), DW_AT_symbol_name("_sensorhysteresis")
	.dwattr DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$239, DW_AT_accessibility(DW_ACCESS_public)
DW$240	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$240, DW_AT_name("cylinderhysteresis"), DW_AT_symbol_name("_cylinderhysteresis")
	.dwattr DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$240, DW_AT_accessibility(DW_ACCESS_public)
DW$241	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$241, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$241, DW_AT_accessibility(DW_ACCESS_public)
DW$242	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$242, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$242, DW_AT_accessibility(DW_ACCESS_public)
DW$243	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$243, DW_AT_name("slowdowndevcallevel"), DW_AT_symbol_name("_slowdowndevcallevel")
	.dwattr DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$243, DW_AT_accessibility(DW_ACCESS_public)
DW$244	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$244, DW_AT_name("alarmdevcallevel"), DW_AT_symbol_name("_alarmdevcallevel")
	.dwattr DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$244, DW_AT_accessibility(DW_ACCESS_public)
DW$245	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$245, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$245, DW_AT_accessibility(DW_ACCESS_public)
DW$246	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$246, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$246, DW_AT_accessibility(DW_ACCESS_public)
DW$247	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$247, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$247, DW_AT_accessibility(DW_ACCESS_public)
DW$248	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$248, DW_AT_name("flags"), DW_AT_symbol_name("_flags")
	.dwattr DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$248, DW_AT_accessibility(DW_ACCESS_public)
DW$249	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$249, DW_AT_name("slowdownack"), DW_AT_symbol_name("_slowdownack")
	.dwattr DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$249, DW_AT_accessibility(DW_ACCESS_public)
DW$250	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$250, DW_AT_name("alarmack"), DW_AT_symbol_name("_alarmack")
	.dwattr DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$250, DW_AT_accessibility(DW_ACCESS_public)
DW$251	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$251, DW_AT_name("maxmintimer"), DW_AT_symbol_name("_maxmintimer")
	.dwattr DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$251, DW_AT_accessibility(DW_ACCESS_public)
DW$252	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$252, DW_AT_name("enginedircal"), DW_AT_symbol_name("_enginedircal")
	.dwattr DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$252, DW_AT_accessibility(DW_ACCESS_public)
DW$253	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$253, DW_AT_name("dirorder"), DW_AT_symbol_name("_dirorder")
	.dwattr DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$253, DW_AT_accessibility(DW_ACCESS_public)
DW$254	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$254, DW_AT_name("prewarningtimer"), DW_AT_symbol_name("_prewarningtimer")
	.dwattr DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$254, DW_AT_accessibility(DW_ACCESS_public)
DW$255	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$255, DW_AT_name("prewarninglevel"), DW_AT_symbol_name("_prewarninglevel")
	.dwattr DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$255, DW_AT_accessibility(DW_ACCESS_public)
DW$256	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$256, DW_AT_name("rpmlimit"), DW_AT_symbol_name("_rpmlimit")
	.dwattr DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr DW$256, DW_AT_accessibility(DW_ACCESS_public)
DW$257	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$257, DW_AT_name("dsss"), DW_AT_symbol_name("_dsss")
	.dwattr DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$257, DW_AT_accessibility(DW_ACCESS_public)
DW$258	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$258, DW_AT_name("slowdowncallevel"), DW_AT_symbol_name("_slowdowncallevel")
	.dwattr DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$258, DW_AT_accessibility(DW_ACCESS_public)
DW$259	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$259, DW_AT_name("alarmcallevel"), DW_AT_symbol_name("_alarmcallevel")
	.dwattr DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$259, DW_AT_accessibility(DW_ACCESS_public)
DW$260	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$260, DW_AT_name("cylinderalarmcallevel"), DW_AT_symbol_name("_cylinderalarmcallevel")
	.dwattr DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$260, DW_AT_accessibility(DW_ACCESS_public)
DW$261	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$261, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$261, DW_AT_accessibility(DW_ACCESS_public)
DW$262	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$262, DW_AT_name("iBarredVibrationSpeedLow"), DW_AT_symbol_name("_iBarredVibrationSpeedLow")
	.dwattr DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$262, DW_AT_accessibility(DW_ACCESS_public)
DW$263	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$263, DW_AT_name("iBarredVibrationSpeedHigh"), DW_AT_symbol_name("_iBarredVibrationSpeedHigh")
	.dwattr DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$263, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33

DW$T$122	.dwtag  DW_TAG_typedef, DW_AT_name("cylinderstruct"), DW_AT_type(*DW$T$36)
	.dwattr DW$T$122, DW_AT_language(DW_LANG_C)
DW$T$126	.dwtag  DW_TAG_typedef, DW_AT_name("sensorstruct"), DW_AT_type(*DW$T$40)
	.dwattr DW$T$126, DW_AT_language(DW_LANG_C)

DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$41, DW_AT_name("tag_damagemonstruct")
	.dwattr DW$T$41, DW_AT_byte_size(0x10)
DW$264	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$264, DW_AT_name("ccsplit"), DW_AT_symbol_name("_ccsplit")
	.dwattr DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$264, DW_AT_accessibility(DW_ACCESS_public)
DW$265	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$265, DW_AT_name("kvalue"), DW_AT_symbol_name("_kvalue")
	.dwattr DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$265, DW_AT_accessibility(DW_ACCESS_public)
DW$266	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$266, DW_AT_name("betavalue"), DW_AT_symbol_name("_betavalue")
	.dwattr DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$266, DW_AT_accessibility(DW_ACCESS_public)
DW$267	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$267, DW_AT_name("rpmlevelx"), DW_AT_symbol_name("_rpmlevelx")
	.dwattr DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$267, DW_AT_accessibility(DW_ACCESS_public)
DW$268	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$268, DW_AT_name("reflevelx"), DW_AT_symbol_name("_reflevelx")
	.dwattr DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$268, DW_AT_accessibility(DW_ACCESS_public)
DW$269	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$269, DW_AT_name("presentstatex"), DW_AT_symbol_name("_presentstatex")
	.dwattr DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$269, DW_AT_accessibility(DW_ACCESS_public)
DW$270	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$270, DW_AT_name("alarmlevelsingle"), DW_AT_symbol_name("_alarmlevelsingle")
	.dwattr DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$270, DW_AT_accessibility(DW_ACCESS_public)
DW$271	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$271, DW_AT_name("alarmlevelcyl"), DW_AT_symbol_name("_alarmlevelcyl")
	.dwattr DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$271, DW_AT_accessibility(DW_ACCESS_public)
DW$272	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$272, DW_AT_name("alarmlevelmbsum"), DW_AT_symbol_name("_alarmlevelmbsum")
	.dwattr DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$272, DW_AT_accessibility(DW_ACCESS_public)
DW$273	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$273, DW_AT_name("cylneighbour"), DW_AT_symbol_name("_cylneighbour")
	.dwattr DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$273, DW_AT_accessibility(DW_ACCESS_public)
DW$274	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$274, DW_AT_name("mbneighbour"), DW_AT_symbol_name("_mbneighbour")
	.dwattr DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$274, DW_AT_accessibility(DW_ACCESS_public)
DW$275	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$275, DW_AT_name("cylneighbouralarms"), DW_AT_symbol_name("_cylneighbouralarms")
	.dwattr DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$275, DW_AT_accessibility(DW_ACCESS_public)
DW$276	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$276, DW_AT_name("mbneighbouralarms"), DW_AT_symbol_name("_mbneighbouralarms")
	.dwattr DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$276, DW_AT_accessibility(DW_ACCESS_public)
DW$277	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$277, DW_AT_name("deltarpmlimit"), DW_AT_symbol_name("_deltarpmlimit")
	.dwattr DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$277, DW_AT_accessibility(DW_ACCESS_public)
DW$278	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$278, DW_AT_name("hysteresis"), DW_AT_symbol_name("_hysteresis")
	.dwattr DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$278, DW_AT_accessibility(DW_ACCESS_public)
DW$279	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$279, DW_AT_name("damagemonenb"), DW_AT_symbol_name("_damagemonenb")
	.dwattr DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$279, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$41


DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$43, DW_AT_name("tag_damalarmsstruct")
	.dwattr DW$T$43, DW_AT_byte_size(0x04)
DW$280	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$280, DW_AT_name("single"), DW_AT_symbol_name("_single")
	.dwattr DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$280, DW_AT_accessibility(DW_ACCESS_public)
DW$281	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$281, DW_AT_name("cylinder"), DW_AT_symbol_name("_cylinder")
	.dwattr DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$281, DW_AT_accessibility(DW_ACCESS_public)
DW$282	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$282, DW_AT_name("mbneighbour"), DW_AT_symbol_name("_mbneighbour")
	.dwattr DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$282, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$43


DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$45, DW_AT_name("tag_slavecmdstruct")
	.dwattr DW$T$45, DW_AT_byte_size(0x48)
DW$283	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$283, DW_AT_name("SlaveAddr"), DW_AT_symbol_name("_SlaveAddr")
	.dwattr DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$283, DW_AT_accessibility(DW_ACCESS_public)
DW$284	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$284, DW_AT_name("Func"), DW_AT_symbol_name("_Func")
	.dwattr DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$284, DW_AT_accessibility(DW_ACCESS_public)
DW$285	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$285, DW_AT_name("StartAdd"), DW_AT_symbol_name("_StartAdd")
	.dwattr DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$285, DW_AT_accessibility(DW_ACCESS_public)
DW$286	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$286, DW_AT_name("NoReg"), DW_AT_symbol_name("_NoReg")
	.dwattr DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$286, DW_AT_accessibility(DW_ACCESS_public)
DW$287	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$287, DW_AT_name("ByteCount"), DW_AT_symbol_name("_ByteCount")
	.dwattr DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$287, DW_AT_accessibility(DW_ACCESS_public)
DW$288	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$44)
	.dwattr DW$288, DW_AT_name("Data"), DW_AT_symbol_name("_Data")
	.dwattr DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$288, DW_AT_accessibility(DW_ACCESS_public)
DW$289	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$289, DW_AT_name("txmode"), DW_AT_symbol_name("_txmode")
	.dwattr DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr DW$289, DW_AT_accessibility(DW_ACCESS_public)
DW$290	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$290, DW_AT_name("slavelost"), DW_AT_symbol_name("_slavelost")
	.dwattr DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$290, DW_AT_accessibility(DW_ACCESS_public)
DW$291	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$291, DW_AT_name("slavenotready"), DW_AT_symbol_name("_slavenotready")
	.dwattr DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr DW$291, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$45


DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$48, DW_AT_name("tag_waterinoilstruct")
	.dwattr DW$T$48, DW_AT_byte_size(0x0c)
DW$292	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$292, DW_AT_name("netadd"), DW_AT_symbol_name("_netadd")
	.dwattr DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$292, DW_AT_accessibility(DW_ACCESS_public)
DW$293	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$293, DW_AT_name("temperature"), DW_AT_symbol_name("_temperature")
	.dwattr DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$293, DW_AT_accessibility(DW_ACCESS_public)
DW$294	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$294, DW_AT_name("activity"), DW_AT_symbol_name("_activity")
	.dwattr DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$294, DW_AT_accessibility(DW_ACCESS_public)
DW$295	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$295, DW_AT_name("content"), DW_AT_symbol_name("_content")
	.dwattr DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$295, DW_AT_accessibility(DW_ACCESS_public)
DW$296	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$296, DW_AT_name("temperature_int"), DW_AT_symbol_name("_temperature_int")
	.dwattr DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$296, DW_AT_accessibility(DW_ACCESS_public)
DW$297	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$297, DW_AT_name("activity_int"), DW_AT_symbol_name("_activity_int")
	.dwattr DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$297, DW_AT_accessibility(DW_ACCESS_public)
DW$298	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$298, DW_AT_name("content_int"), DW_AT_symbol_name("_content_int")
	.dwattr DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$298, DW_AT_accessibility(DW_ACCESS_public)
DW$299	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$299, DW_AT_name("wioalarms"), DW_AT_symbol_name("_wioalarms")
	.dwattr DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$299, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$48


DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$49, DW_AT_byte_size(0x07)
DW$300	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$300, DW_AT_name("outputtestmode"), DW_AT_symbol_name("_outputtestmode")
	.dwattr DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$300, DW_AT_accessibility(DW_ACCESS_public)
DW$301	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$301, DW_AT_name("previousstatus"), DW_AT_symbol_name("_previousstatus")
	.dwattr DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$301, DW_AT_accessibility(DW_ACCESS_public)
DW$302	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$302, DW_AT_name("previousslowdown"), DW_AT_symbol_name("_previousslowdown")
	.dwattr DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$302, DW_AT_accessibility(DW_ACCESS_public)
DW$303	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$303, DW_AT_name("previousalarm"), DW_AT_symbol_name("_previousalarm")
	.dwattr DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$303, DW_AT_accessibility(DW_ACCESS_public)
DW$304	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$304, DW_AT_name("slowdownreflash"), DW_AT_symbol_name("_slowdownreflash")
	.dwattr DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$304, DW_AT_accessibility(DW_ACCESS_public)
DW$305	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$305, DW_AT_name("alarmreflash"), DW_AT_symbol_name("_alarmreflash")
	.dwattr DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$305, DW_AT_accessibility(DW_ACCESS_public)
DW$306	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$306, DW_AT_name("statusreflash"), DW_AT_symbol_name("_statusreflash")
	.dwattr DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$306, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$49


DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$51, DW_AT_name("tag_bearingstatusstruct")
	.dwattr DW$T$51, DW_AT_byte_size(0x2c)
DW$307	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$307, DW_AT_name("MainBearings"), DW_AT_symbol_name("_MainBearings")
	.dwattr DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$307, DW_AT_accessibility(DW_ACCESS_public)
DW$308	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$308, DW_AT_name("CrankPinBearings"), DW_AT_symbol_name("_CrankPinBearings")
	.dwattr DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$308, DW_AT_accessibility(DW_ACCESS_public)
DW$309	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$309, DW_AT_name("CrossHeadBearings"), DW_AT_symbol_name("_CrossHeadBearings")
	.dwattr DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$309, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$51

DW$T$52	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$52, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$52, DW_AT_byte_size(0x01)
DW$310	.dwtag  DW_TAG_far_type
	.dwattr DW$310, DW_AT_type(*DW$T$52)
DW$T$63	.dwtag  DW_TAG_const_type
	.dwattr DW$T$63, DW_AT_type(*DW$310)

DW$T$22	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$22, DW_AT_byte_size(0x09)
DW$311	.dwtag  DW_TAG_subrange_type
	.dwattr DW$311, DW_AT_upper_bound(0x08)
	.dwendtag DW$T$22


DW$T$23	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$23, DW_AT_byte_size(0x18)
DW$312	.dwtag  DW_TAG_subrange_type
	.dwattr DW$312, DW_AT_upper_bound(0x17)
	.dwendtag DW$T$23


DW$T$24	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$24, DW_AT_byte_size(0x0f)
DW$313	.dwtag  DW_TAG_subrange_type
	.dwattr DW$313, DW_AT_upper_bound(0x0e)
	.dwendtag DW$T$24


DW$T$25	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$25, DW_AT_byte_size(0x05)
DW$314	.dwtag  DW_TAG_subrange_type
	.dwattr DW$314, DW_AT_upper_bound(0x04)
	.dwendtag DW$T$25


DW$T$29	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$29, DW_AT_byte_size(0x0e)
DW$315	.dwtag  DW_TAG_subrange_type
	.dwattr DW$315, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$29


DW$T$42	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$42, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$42, DW_AT_byte_size(0x02)
DW$316	.dwtag  DW_TAG_subrange_type
	.dwattr DW$316, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$42


DW$T$44	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$44, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$44, DW_AT_byte_size(0x40)
DW$317	.dwtag  DW_TAG_subrange_type
	.dwattr DW$317, DW_AT_upper_bound(0x3f)
	.dwendtag DW$T$44


DW$T$50	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$50, DW_AT_byte_size(0x10)
DW$318	.dwtag  DW_TAG_subrange_type
	.dwattr DW$318, DW_AT_upper_bound(0x0f)
	.dwendtag DW$T$50

DW$T$16	.dwtag  DW_TAG_base_type, DW_AT_name("float")
	.dwattr DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$16, DW_AT_byte_size(0x02)

DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$19, DW_AT_name("tag_sensoralarmstruct")
	.dwattr DW$T$19, DW_AT_byte_size(0x01)
DW$319	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$319, DW_AT_name("failure"), DW_AT_symbol_name("_failure")
	.dwattr DW$319, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$319, DW_AT_accessibility(DW_ACCESS_public)
DW$320	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$320, DW_AT_name("failurelatched"), DW_AT_symbol_name("_failurelatched")
	.dwattr DW$320, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$320, DW_AT_accessibility(DW_ACCESS_public)
DW$321	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$321, DW_AT_name("slowdown"), DW_AT_symbol_name("_slowdown")
	.dwattr DW$321, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$321, DW_AT_accessibility(DW_ACCESS_public)
DW$322	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$322, DW_AT_name("slowdownlatched"), DW_AT_symbol_name("_slowdownlatched")
	.dwattr DW$322, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$322, DW_AT_accessibility(DW_ACCESS_public)
DW$323	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$323, DW_AT_name("alarm"), DW_AT_symbol_name("_alarm")
	.dwattr DW$323, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$323, DW_AT_accessibility(DW_ACCESS_public)
DW$324	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$324, DW_AT_name("alarmlatched"), DW_AT_symbol_name("_alarmlatched")
	.dwattr DW$324, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$324, DW_AT_accessibility(DW_ACCESS_public)
DW$325	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$325, DW_AT_name("devalarm"), DW_AT_symbol_name("_devalarm")
	.dwattr DW$325, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$325, DW_AT_accessibility(DW_ACCESS_public)
DW$326	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$326, DW_AT_name("devalarmlatched"), DW_AT_symbol_name("_devalarmlatched")
	.dwattr DW$326, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$326, DW_AT_accessibility(DW_ACCESS_public)
DW$327	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$327, DW_AT_name("devslow"), DW_AT_symbol_name("_devslow")
	.dwattr DW$327, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$327, DW_AT_accessibility(DW_ACCESS_public)
DW$328	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$328, DW_AT_name("devslowlatched"), DW_AT_symbol_name("_devslowlatched")
	.dwattr DW$328, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$328, DW_AT_accessibility(DW_ACCESS_public)
DW$329	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$329, DW_AT_name("calibration"), DW_AT_symbol_name("_calibration")
	.dwattr DW$329, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$329, DW_AT_accessibility(DW_ACCESS_public)
DW$330	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$330, DW_AT_name("calibrationlatched"), DW_AT_symbol_name("_calibrationlatched")
	.dwattr DW$330, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$330, DW_AT_accessibility(DW_ACCESS_public)
DW$331	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$331, DW_AT_name("prewarning"), DW_AT_symbol_name("_prewarning")
	.dwattr DW$331, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$331, DW_AT_accessibility(DW_ACCESS_public)
DW$332	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$332, DW_AT_name("prewarninglatched"), DW_AT_symbol_name("_prewarninglatched")
	.dwattr DW$332, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$332, DW_AT_accessibility(DW_ACCESS_public)
DW$333	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$333, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$333, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$333, DW_AT_accessibility(DW_ACCESS_public)
DW$334	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$334, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$334, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$334, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$19


DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$21, DW_AT_name("tag_status3struct")
	.dwattr DW$T$21, DW_AT_byte_size(0x01)
DW$335	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$335, DW_AT_name("nopulse"), DW_AT_symbol_name("_nopulse")
	.dwattr DW$335, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$335, DW_AT_accessibility(DW_ACCESS_public)
DW$336	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$336, DW_AT_name("low"), DW_AT_symbol_name("_low")
	.dwattr DW$336, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$336, DW_AT_accessibility(DW_ACCESS_public)
DW$337	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$337, DW_AT_name("high"), DW_AT_symbol_name("_high")
	.dwattr DW$337, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$337, DW_AT_accessibility(DW_ACCESS_public)
DW$338	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$338, DW_AT_name("rpmoor"), DW_AT_symbol_name("_rpmoor")
	.dwattr DW$338, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$338, DW_AT_accessibility(DW_ACCESS_public)
DW$339	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$339, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$339, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$339, DW_AT_accessibility(DW_ACCESS_public)
DW$340	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$340, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$340, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$340, DW_AT_accessibility(DW_ACCESS_public)
DW$341	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$341, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$341, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$341, DW_AT_accessibility(DW_ACCESS_public)
DW$342	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$342, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$342, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$342, DW_AT_accessibility(DW_ACCESS_public)
DW$343	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$343, DW_AT_name("nopulselatched"), DW_AT_symbol_name("_nopulselatched")
	.dwattr DW$343, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$343, DW_AT_accessibility(DW_ACCESS_public)
DW$344	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$344, DW_AT_name("lowlatched"), DW_AT_symbol_name("_lowlatched")
	.dwattr DW$344, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$344, DW_AT_accessibility(DW_ACCESS_public)
DW$345	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$345, DW_AT_name("highlatched"), DW_AT_symbol_name("_highlatched")
	.dwattr DW$345, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$345, DW_AT_accessibility(DW_ACCESS_public)
DW$346	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$346, DW_AT_name("rpmoorlatched"), DW_AT_symbol_name("_rpmoorlatched")
	.dwattr DW$346, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$346, DW_AT_accessibility(DW_ACCESS_public)
DW$347	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$347, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$347, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$347, DW_AT_accessibility(DW_ACCESS_public)
DW$348	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$348, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$348, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$348, DW_AT_accessibility(DW_ACCESS_public)
DW$349	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$349, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$349, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$349, DW_AT_accessibility(DW_ACCESS_public)
DW$350	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$350, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$350, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$350, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21


DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$27, DW_AT_byte_size(0x02)
DW$351	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$351, DW_AT_name("enb"), DW_AT_symbol_name("_enb")
	.dwattr DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$351, DW_AT_accessibility(DW_ACCESS_public)
DW$352	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$352, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$352, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$30, DW_AT_name("tag_timers")
	.dwattr DW$T$30, DW_AT_byte_size(0x4c)
DW$353	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$353, DW_AT_name("update"), DW_AT_symbol_name("_update")
	.dwattr DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$353, DW_AT_accessibility(DW_ACCESS_public)
DW$354	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$354, DW_AT_name("general"), DW_AT_symbol_name("_general")
	.dwattr DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$354, DW_AT_accessibility(DW_ACCESS_public)
DW$355	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$355, DW_AT_name("rxcharTimeout"), DW_AT_symbol_name("_rxcharTimeout")
	.dwattr DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$355, DW_AT_accessibility(DW_ACCESS_public)
DW$356	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$356, DW_AT_name("wiorxtimeout"), DW_AT_symbol_name("_wiorxtimeout")
	.dwattr DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$356, DW_AT_accessibility(DW_ACCESS_public)
DW$357	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$357, DW_AT_name("wiomasterrxtimeout"), DW_AT_symbol_name("_wiomasterrxtimeout")
	.dwattr DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$357, DW_AT_accessibility(DW_ACCESS_public)
DW$358	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$358, DW_AT_name("masterrxtimeout"), DW_AT_symbol_name("_masterrxtimeout")
	.dwattr DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$358, DW_AT_accessibility(DW_ACCESS_public)
DW$359	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$359, DW_AT_name("slaverxtimeout"), DW_AT_symbol_name("_slaverxtimeout")
	.dwattr DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$359, DW_AT_accessibility(DW_ACCESS_public)
DW$360	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$360, DW_AT_name("sectick"), DW_AT_symbol_name("_sectick")
	.dwattr DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$360, DW_AT_accessibility(DW_ACCESS_public)
DW$361	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$361, DW_AT_name("ledflash"), DW_AT_symbol_name("_ledflash")
	.dwattr DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$361, DW_AT_accessibility(DW_ACCESS_public)
DW$362	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$362, DW_AT_name("prtsettle"), DW_AT_symbol_name("_prtsettle")
	.dwattr DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$362, DW_AT_accessibility(DW_ACCESS_public)
DW$363	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$363, DW_AT_name("chantimeout"), DW_AT_symbol_name("_chantimeout")
	.dwattr DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$363, DW_AT_accessibility(DW_ACCESS_public)
DW$364	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$364, DW_AT_name("chanwait"), DW_AT_symbol_name("_chanwait")
	.dwattr DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$364, DW_AT_accessibility(DW_ACCESS_public)
DW$365	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$365, DW_AT_name("pcrxtimeout"), DW_AT_symbol_name("_pcrxtimeout")
	.dwattr DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$365, DW_AT_accessibility(DW_ACCESS_public)
DW$366	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$366, DW_AT_name("pctxtimeout"), DW_AT_symbol_name("_pctxtimeout")
	.dwattr DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$366, DW_AT_accessibility(DW_ACCESS_public)
DW$367	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$367, DW_AT_name("spistatus"), DW_AT_symbol_name("_spistatus")
	.dwattr DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$367, DW_AT_accessibility(DW_ACCESS_public)
DW$368	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$368, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$368, DW_AT_accessibility(DW_ACCESS_public)
DW$369	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$369, DW_AT_name("slaverqst"), DW_AT_symbol_name("_slaverqst")
	.dwattr DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$369, DW_AT_accessibility(DW_ACCESS_public)
DW$370	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$370, DW_AT_name("mastermodebutton"), DW_AT_symbol_name("_mastermodebutton")
	.dwattr DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$370, DW_AT_accessibility(DW_ACCESS_public)
DW$371	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$371, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$371, DW_AT_accessibility(DW_ACCESS_public)
DW$372	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$372, DW_AT_name("calibrate"), DW_AT_symbol_name("_calibrate")
	.dwattr DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$372, DW_AT_accessibility(DW_ACCESS_public)
DW$373	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$373, DW_AT_name("calibrate2"), DW_AT_symbol_name("_calibrate2")
	.dwattr DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$373, DW_AT_accessibility(DW_ACCESS_public)
DW$374	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$374, DW_AT_name("alarmreflash"), DW_AT_symbol_name("_alarmreflash")
	.dwattr DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$374, DW_AT_accessibility(DW_ACCESS_public)
DW$375	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$375, DW_AT_name("slowdownreflash"), DW_AT_symbol_name("_slowdownreflash")
	.dwattr DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr DW$375, DW_AT_accessibility(DW_ACCESS_public)
DW$376	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$376, DW_AT_name("wiorqst"), DW_AT_symbol_name("_wiorqst")
	.dwattr DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$376, DW_AT_accessibility(DW_ACCESS_public)
DW$377	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$377, DW_AT_name("rpmtimeout"), DW_AT_symbol_name("_rpmtimeout")
	.dwattr DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr DW$377, DW_AT_accessibility(DW_ACCESS_public)
DW$378	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$378, DW_AT_name("analogoor"), DW_AT_symbol_name("_analogoor")
	.dwattr DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$378, DW_AT_accessibility(DW_ACCESS_public)
DW$379	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$379, DW_AT_name("motioncal"), DW_AT_symbol_name("_motioncal")
	.dwattr DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr DW$379, DW_AT_accessibility(DW_ACCESS_public)
DW$380	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$380, DW_AT_name("framcheck"), DW_AT_symbol_name("_framcheck")
	.dwattr DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$380, DW_AT_accessibility(DW_ACCESS_public)
DW$381	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$381, DW_AT_name("pcmodbus"), DW_AT_symbol_name("_pcmodbus")
	.dwattr DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr DW$381, DW_AT_accessibility(DW_ACCESS_public)
DW$382	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$382, DW_AT_name("statusreflash"), DW_AT_symbol_name("_statusreflash")
	.dwattr DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$382, DW_AT_accessibility(DW_ACCESS_public)
DW$383	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$383, DW_AT_name("prewarn"), DW_AT_symbol_name("_prewarn")
	.dwattr DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$383, DW_AT_accessibility(DW_ACCESS_public)
DW$384	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$384, DW_AT_name("clocktofram"), DW_AT_symbol_name("_clocktofram")
	.dwattr DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr DW$384, DW_AT_accessibility(DW_ACCESS_public)
DW$385	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$385, DW_AT_name("debugrapidfast"), DW_AT_symbol_name("_debugrapidfast")
	.dwattr DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x3f]
	.dwattr DW$385, DW_AT_accessibility(DW_ACCESS_public)
DW$386	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$386, DW_AT_name("debugupdate"), DW_AT_symbol_name("_debugupdate")
	.dwattr DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$386, DW_AT_accessibility(DW_ACCESS_public)
DW$387	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$387, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr DW$387, DW_AT_accessibility(DW_ACCESS_public)
DW$388	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$388, DW_AT_name("startup"), DW_AT_symbol_name("_startup")
	.dwattr DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr DW$388, DW_AT_accessibility(DW_ACCESS_public)
DW$389	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$389, DW_AT_name("analogsettle"), DW_AT_symbol_name("_analogsettle")
	.dwattr DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr DW$389, DW_AT_accessibility(DW_ACCESS_public)
DW$390	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$390, DW_AT_name("reprogram"), DW_AT_symbol_name("_reprogram")
	.dwattr DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr DW$390, DW_AT_accessibility(DW_ACCESS_public)
DW$391	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$391, DW_AT_name("reprogramtimeout"), DW_AT_symbol_name("_reprogramtimeout")
	.dwattr DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr DW$391, DW_AT_accessibility(DW_ACCESS_public)
DW$392	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$392, DW_AT_name("dcmodestayalive"), DW_AT_symbol_name("_dcmodestayalive")
	.dwattr DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$392, DW_AT_accessibility(DW_ACCESS_public)
DW$393	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$393, DW_AT_name("biteventchange"), DW_AT_symbol_name("_biteventchange")
	.dwattr DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr DW$393, DW_AT_accessibility(DW_ACCESS_public)
DW$394	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$394, DW_AT_name("iSensorReplace"), DW_AT_symbol_name("_iSensorReplace")
	.dwattr DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr DW$394, DW_AT_accessibility(DW_ACCESS_public)
DW$395	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$395, DW_AT_name("deltarpm15Delay"), DW_AT_symbol_name("_deltarpm15Delay")
	.dwattr DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr DW$395, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30


DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$31, DW_AT_byte_size(0x01)
DW$396	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$396, DW_AT_name("newval"), DW_AT_symbol_name("_newval")
	.dwattr DW$396, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$396, DW_AT_accessibility(DW_ACCESS_public)
DW$397	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$397, DW_AT_name("calmode"), DW_AT_symbol_name("_calmode")
	.dwattr DW$397, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$397, DW_AT_accessibility(DW_ACCESS_public)
DW$398	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$398, DW_AT_name("startcal"), DW_AT_symbol_name("_startcal")
	.dwattr DW$398, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$398, DW_AT_accessibility(DW_ACCESS_public)
DW$399	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$399, DW_AT_name("newvalspu2"), DW_AT_symbol_name("_newvalspu2")
	.dwattr DW$399, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$399, DW_AT_accessibility(DW_ACCESS_public)
DW$400	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$400, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$400, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$400, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_byte_size(0x01)
DW$401	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$401, DW_AT_name("slowdowncntrl"), DW_AT_symbol_name("_slowdowncntrl")
	.dwattr DW$401, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$401, DW_AT_accessibility(DW_ACCESS_public)
DW$402	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$402, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$402, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0f)
	.dwattr DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$402, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$36, DW_AT_name("tag_cylinderstruct")
	.dwattr DW$T$36, DW_AT_byte_size(0x04)
DW$403	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$403, DW_AT_name("status1"), DW_AT_symbol_name("_status1")
	.dwattr DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$403, DW_AT_accessibility(DW_ACCESS_public)
DW$404	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$404, DW_AT_name("status2"), DW_AT_symbol_name("_status2")
	.dwattr DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$404, DW_AT_accessibility(DW_ACCESS_public)
DW$405	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$405, DW_AT_name("average"), DW_AT_symbol_name("_average")
	.dwattr DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$405, DW_AT_accessibility(DW_ACCESS_public)
DW$406	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$406, DW_AT_name("deviation"), DW_AT_symbol_name("_deviation")
	.dwattr DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$406, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$36


DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$40, DW_AT_name("tag_sensorstruct")
	.dwattr DW$T$40, DW_AT_byte_size(0x12)
DW$407	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$38)
	.dwattr DW$407, DW_AT_name("status1"), DW_AT_symbol_name("_status1")
	.dwattr DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$407, DW_AT_accessibility(DW_ACCESS_public)
DW$408	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$408, DW_AT_name("status2"), DW_AT_symbol_name("_status2")
	.dwattr DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$408, DW_AT_accessibility(DW_ACCESS_public)
DW$409	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$409, DW_AT_name("newval"), DW_AT_symbol_name("_newval")
	.dwattr DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$409, DW_AT_accessibility(DW_ACCESS_public)
DW$410	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$410, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$410, DW_AT_accessibility(DW_ACCESS_public)
DW$411	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$411, DW_AT_name("immediateval"), DW_AT_symbol_name("_immediateval")
	.dwattr DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$411, DW_AT_accessibility(DW_ACCESS_public)
DW$412	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$412, DW_AT_name("initialval"), DW_AT_symbol_name("_initialval")
	.dwattr DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$412, DW_AT_accessibility(DW_ACCESS_public)
DW$413	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$413, DW_AT_name("precomp"), DW_AT_symbol_name("_precomp")
	.dwattr DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$413, DW_AT_accessibility(DW_ACCESS_public)
DW$414	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$414, DW_AT_name("postcomp"), DW_AT_symbol_name("_postcomp")
	.dwattr DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$414, DW_AT_accessibility(DW_ACCESS_public)
DW$415	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$415, DW_AT_name("postfilter"), DW_AT_symbol_name("_postfilter")
	.dwattr DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$415, DW_AT_accessibility(DW_ACCESS_public)
DW$416	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$416, DW_AT_name("endresult"), DW_AT_symbol_name("_endresult")
	.dwattr DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$416, DW_AT_accessibility(DW_ACCESS_public)
DW$417	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$417, DW_AT_name("deviation"), DW_AT_symbol_name("_deviation")
	.dwattr DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$417, DW_AT_accessibility(DW_ACCESS_public)
DW$418	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$418, DW_AT_name("min"), DW_AT_symbol_name("_min")
	.dwattr DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$418, DW_AT_accessibility(DW_ACCESS_public)
DW$419	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$419, DW_AT_name("max"), DW_AT_symbol_name("_max")
	.dwattr DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$419, DW_AT_accessibility(DW_ACCESS_public)
DW$420	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$420, DW_AT_name("devmin"), DW_AT_symbol_name("_devmin")
	.dwattr DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$420, DW_AT_accessibility(DW_ACCESS_public)
DW$421	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$421, DW_AT_name("devmax"), DW_AT_symbol_name("_devmax")
	.dwattr DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$421, DW_AT_accessibility(DW_ACCESS_public)
DW$422	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$422, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$422, DW_AT_accessibility(DW_ACCESS_public)
DW$423	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$423, DW_AT_name("prt"), DW_AT_symbol_name("_prt")
	.dwattr DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$423, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40

DW$T$47	.dwtag  DW_TAG_typedef, DW_AT_name("wioalarmstruct"), DW_AT_type(*DW$T$46)
	.dwattr DW$T$47, DW_AT_language(DW_LANG_C)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)

DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$34, DW_AT_byte_size(0x01)
DW$424	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$424, DW_AT_name("alarmack"), DW_AT_symbol_name("_alarmack")
	.dwattr DW$424, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$424, DW_AT_accessibility(DW_ACCESS_public)
DW$425	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$425, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$425, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$425, DW_AT_accessibility(DW_ACCESS_public)
DW$426	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$426, DW_AT_name("unused3"), DW_AT_symbol_name("_unused3")
	.dwattr DW$426, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$426, DW_AT_accessibility(DW_ACCESS_public)
DW$427	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$427, DW_AT_name("unused4"), DW_AT_symbol_name("_unused4")
	.dwattr DW$427, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$427, DW_AT_accessibility(DW_ACCESS_public)
DW$428	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$428, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$428, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$428, DW_AT_accessibility(DW_ACCESS_public)
DW$429	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$429, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$429, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$429, DW_AT_accessibility(DW_ACCESS_public)
DW$430	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$430, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$430, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$430, DW_AT_accessibility(DW_ACCESS_public)
DW$431	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$431, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$431, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$431, DW_AT_accessibility(DW_ACCESS_public)
DW$432	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$432, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$432, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$432, DW_AT_accessibility(DW_ACCESS_public)
DW$433	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$433, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$433, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$433, DW_AT_accessibility(DW_ACCESS_public)
DW$434	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$434, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$434, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$434, DW_AT_accessibility(DW_ACCESS_public)
DW$435	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$435, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$435, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$435, DW_AT_accessibility(DW_ACCESS_public)
DW$436	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$436, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$436, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$436, DW_AT_accessibility(DW_ACCESS_public)
DW$437	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$437, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$437, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$437, DW_AT_accessibility(DW_ACCESS_public)
DW$438	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$438, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$438, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$438, DW_AT_accessibility(DW_ACCESS_public)
DW$439	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$439, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$439, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$439, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34


DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$35, DW_AT_byte_size(0x01)
DW$440	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$440, DW_AT_name("alarm"), DW_AT_symbol_name("_alarm")
	.dwattr DW$440, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$440, DW_AT_accessibility(DW_ACCESS_public)
DW$441	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$441, DW_AT_name("alarmlatched"), DW_AT_symbol_name("_alarmlatched")
	.dwattr DW$441, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$441, DW_AT_accessibility(DW_ACCESS_public)
DW$442	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$442, DW_AT_name("unused3"), DW_AT_symbol_name("_unused3")
	.dwattr DW$442, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$442, DW_AT_accessibility(DW_ACCESS_public)
DW$443	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$443, DW_AT_name("unused4"), DW_AT_symbol_name("_unused4")
	.dwattr DW$443, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$443, DW_AT_accessibility(DW_ACCESS_public)
DW$444	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$444, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$444, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$444, DW_AT_accessibility(DW_ACCESS_public)
DW$445	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$445, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$445, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$445, DW_AT_accessibility(DW_ACCESS_public)
DW$446	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$446, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$446, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$446, DW_AT_accessibility(DW_ACCESS_public)
DW$447	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$447, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$447, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$447, DW_AT_accessibility(DW_ACCESS_public)
DW$448	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$448, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$448, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$448, DW_AT_accessibility(DW_ACCESS_public)
DW$449	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$449, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$449, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$449, DW_AT_accessibility(DW_ACCESS_public)
DW$450	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$450, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$450, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$450, DW_AT_accessibility(DW_ACCESS_public)
DW$451	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$451, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$451, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$451, DW_AT_accessibility(DW_ACCESS_public)
DW$452	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$452, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$452, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$452, DW_AT_accessibility(DW_ACCESS_public)
DW$453	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$453, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$453, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$453, DW_AT_accessibility(DW_ACCESS_public)
DW$454	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$454, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$454, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$454, DW_AT_accessibility(DW_ACCESS_public)
DW$455	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$455, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$455, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$455, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35

DW$T$38	.dwtag  DW_TAG_typedef, DW_AT_name("status1struct"), DW_AT_type(*DW$T$37)
	.dwattr DW$T$38, DW_AT_language(DW_LANG_C)

DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$46, DW_AT_name("tag_wioalarmstruct")
	.dwattr DW$T$46, DW_AT_byte_size(0x01)
DW$456	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$456, DW_AT_name("alarmupper"), DW_AT_symbol_name("_alarmupper")
	.dwattr DW$456, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$456, DW_AT_accessibility(DW_ACCESS_public)
DW$457	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$457, DW_AT_name("alarmupperlatched"), DW_AT_symbol_name("_alarmupperlatched")
	.dwattr DW$457, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$457, DW_AT_accessibility(DW_ACCESS_public)
DW$458	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$458, DW_AT_name("alarm"), DW_AT_symbol_name("_alarm")
	.dwattr DW$458, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$458, DW_AT_accessibility(DW_ACCESS_public)
DW$459	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$459, DW_AT_name("alarmlatched"), DW_AT_symbol_name("_alarmlatched")
	.dwattr DW$459, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$459, DW_AT_accessibility(DW_ACCESS_public)
DW$460	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$460, DW_AT_name("comms"), DW_AT_symbol_name("_comms")
	.dwattr DW$460, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$460, DW_AT_accessibility(DW_ACCESS_public)
DW$461	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$461, DW_AT_name("commslatched"), DW_AT_symbol_name("_commslatched")
	.dwattr DW$461, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$461, DW_AT_accessibility(DW_ACCESS_public)
DW$462	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$462, DW_AT_name("analoglow"), DW_AT_symbol_name("_analoglow")
	.dwattr DW$462, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$462, DW_AT_accessibility(DW_ACCESS_public)
DW$463	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$463, DW_AT_name("analoghigh"), DW_AT_symbol_name("_analoghigh")
	.dwattr DW$463, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$463, DW_AT_accessibility(DW_ACCESS_public)
DW$464	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$464, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$464, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$464, DW_AT_accessibility(DW_ACCESS_public)
DW$465	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$465, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$465, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$465, DW_AT_accessibility(DW_ACCESS_public)
DW$466	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$466, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$466, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$466, DW_AT_accessibility(DW_ACCESS_public)
DW$467	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$467, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$467, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$467, DW_AT_accessibility(DW_ACCESS_public)
DW$468	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$468, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$468, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$468, DW_AT_accessibility(DW_ACCESS_public)
DW$469	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$469, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$469, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$469, DW_AT_accessibility(DW_ACCESS_public)
DW$470	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$470, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$470, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$470, DW_AT_accessibility(DW_ACCESS_public)
DW$471	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$471, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$471, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$471, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$46


DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$37, DW_AT_name("tag_status1struct")
	.dwattr DW$T$37, DW_AT_byte_size(0x01)
DW$472	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$472, DW_AT_name("enabled"), DW_AT_symbol_name("_enabled")
	.dwattr DW$472, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$472, DW_AT_accessibility(DW_ACCESS_public)
DW$473	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$473, DW_AT_name("calmode"), DW_AT_symbol_name("_calmode")
	.dwattr DW$473, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$473, DW_AT_accessibility(DW_ACCESS_public)
DW$474	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$474, DW_AT_name("alarmmask"), DW_AT_symbol_name("_alarmmask")
	.dwattr DW$474, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$474, DW_AT_accessibility(DW_ACCESS_public)
DW$475	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$475, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$475, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$475, DW_AT_accessibility(DW_ACCESS_public)
DW$476	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$476, DW_AT_name("replaced"), DW_AT_symbol_name("_replaced")
	.dwattr DW$476, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$476, DW_AT_accessibility(DW_ACCESS_public)
DW$477	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$477, DW_AT_name("excludeslowroll"), DW_AT_symbol_name("_excludeslowroll")
	.dwattr DW$477, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$477, DW_AT_accessibility(DW_ACCESS_public)
DW$478	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$478, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$478, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$478, DW_AT_accessibility(DW_ACCESS_public)
DW$479	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$479, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$479, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$479, DW_AT_accessibility(DW_ACCESS_public)
DW$480	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$480, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$480, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$480, DW_AT_accessibility(DW_ACCESS_public)
DW$481	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$481, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$481, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$481, DW_AT_accessibility(DW_ACCESS_public)
DW$482	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$482, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$482, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$482, DW_AT_accessibility(DW_ACCESS_public)
DW$483	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$483, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$483, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$483, DW_AT_accessibility(DW_ACCESS_public)
DW$484	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$484, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$484, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$484, DW_AT_accessibility(DW_ACCESS_public)
DW$485	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$485, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$485, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$485, DW_AT_accessibility(DW_ACCESS_public)
DW$486	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$486, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$486, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$486, DW_AT_accessibility(DW_ACCESS_public)
DW$487	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$487, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$487, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$487, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$37


	.dwattr DW$73, DW_AT_external(0x01)
	.dwattr DW$88, DW_AT_external(0x01)
	.dwattr DW$86, DW_AT_external(0x01)
	.dwattr DW$86, DW_AT_type(*DW$T$11)
	.dwattr DW$148, DW_AT_external(0x01)
	.dwattr DW$148, DW_AT_type(*DW$T$10)
	.dwattr DW$146, DW_AT_external(0x01)
	.dwattr DW$146, DW_AT_type(*DW$T$10)
	.dwattr DW$77, DW_AT_external(0x01)
	.dwattr DW$84, DW_AT_external(0x01)
	.dwattr DW$65, DW_AT_external(0x01)
	.dwattr DW$47, DW_AT_external(0x01)
	.dwattr DW$61, DW_AT_external(0x01)
	.dwattr DW$50, DW_AT_external(0x01)
	.dwattr DW$50, DW_AT_type(*DW$T$101)
	.dwattr DW$56, DW_AT_external(0x01)
	.dwattr DW$56, DW_AT_type(*DW$T$11)
	.dwattr DW$42, DW_AT_external(0x01)
	.dwattr DW$72, DW_AT_external(0x01)
	.dwattr DW$72, DW_AT_type(*DW$T$85)
	.dwattr DW$62, DW_AT_external(0x01)
	.dwattr DW$63, DW_AT_external(0x01)
	.dwattr DW$75, DW_AT_external(0x01)
	.dwattr DW$82, DW_AT_external(0x01)
	.dwattr DW$53, DW_AT_external(0x01)
	.dwattr DW$51, DW_AT_external(0x01)
	.dwattr DW$51, DW_AT_type(*DW$T$107)
	.dwattr DW$58, DW_AT_external(0x01)
	.dwattr DW$79, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$488	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$488, DW_AT_location[DW_OP_reg0]
DW$489	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$489, DW_AT_location[DW_OP_reg1]
DW$490	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$490, DW_AT_location[DW_OP_reg2]
DW$491	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$491, DW_AT_location[DW_OP_reg3]
DW$492	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$492, DW_AT_location[DW_OP_reg4]
DW$493	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$493, DW_AT_location[DW_OP_reg5]
DW$494	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$494, DW_AT_location[DW_OP_reg6]
DW$495	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$495, DW_AT_location[DW_OP_reg7]
DW$496	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$496, DW_AT_location[DW_OP_reg8]
DW$497	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$497, DW_AT_location[DW_OP_reg9]
DW$498	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$498, DW_AT_location[DW_OP_reg10]
DW$499	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$499, DW_AT_location[DW_OP_reg11]
DW$500	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$500, DW_AT_location[DW_OP_reg12]
DW$501	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$501, DW_AT_location[DW_OP_reg13]
DW$502	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$502, DW_AT_location[DW_OP_reg14]
DW$503	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$503, DW_AT_location[DW_OP_reg15]
DW$504	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$504, DW_AT_location[DW_OP_reg16]
DW$505	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$505, DW_AT_location[DW_OP_reg17]
DW$506	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$506, DW_AT_location[DW_OP_reg18]
DW$507	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$507, DW_AT_location[DW_OP_reg19]
DW$508	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$508, DW_AT_location[DW_OP_reg20]
DW$509	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$509, DW_AT_location[DW_OP_reg21]
DW$510	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$510, DW_AT_location[DW_OP_reg22]
DW$511	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$511, DW_AT_location[DW_OP_reg23]
DW$512	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$512, DW_AT_location[DW_OP_reg24]
DW$513	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$513, DW_AT_location[DW_OP_reg25]
DW$514	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$514, DW_AT_location[DW_OP_reg26]
DW$515	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$515, DW_AT_location[DW_OP_reg27]
DW$516	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$516, DW_AT_location[DW_OP_reg28]
DW$517	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$517, DW_AT_location[DW_OP_reg29]
DW$518	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$518, DW_AT_location[DW_OP_reg30]
DW$519	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$519, DW_AT_location[DW_OP_reg31]
DW$520	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$520, DW_AT_location[DW_OP_regx 0x20]
DW$521	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$521, DW_AT_location[DW_OP_regx 0x21]
DW$522	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$522, DW_AT_location[DW_OP_regx 0x22]
DW$523	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$523, DW_AT_location[DW_OP_regx 0x23]
DW$524	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$524, DW_AT_location[DW_OP_regx 0x24]
DW$525	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$525, DW_AT_location[DW_OP_regx 0x25]
DW$526	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$526, DW_AT_location[DW_OP_regx 0x26]
DW$527	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$527, DW_AT_location[DW_OP_regx 0x27]
DW$528	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$528, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

