;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Thu Aug 18 12:16:17 2016                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("logging.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("SDEventLogDelete"), DW_AT_symbol_name("_SDEventLogDelete")
	.dwattr DW$1, DW_AT_type(*DW$T$10)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)

DW$2	.dwtag  DW_TAG_subprogram, DW_AT_name("SDReadEvent"), DW_AT_symbol_name("_SDReadEvent")
	.dwattr DW$2, DW_AT_type(*DW$T$10)
	.dwattr DW$2, DW_AT_declaration(0x01)
	.dwattr DW$2, DW_AT_external(0x01)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$33)
	.dwendtag DW$2


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteNVMemory"), DW_AT_symbol_name("_WriteNVMemory")
	.dwattr DW$5, DW_AT_type(*DW$T$10)
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)

DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadNVMemory"), DW_AT_symbol_name("_ReadNVMemory")
	.dwattr DW$6, DW_AT_type(*DW$T$10)
	.dwattr DW$6, DW_AT_declaration(0x01)
	.dwattr DW$6, DW_AT_external(0x01)

DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearEventCodeListArea"), DW_AT_symbol_name("_ClearEventCodeListArea")
	.dwattr DW$7, DW_AT_type(*DW$T$10)
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)
DW$8	.dwtag  DW_TAG_variable, DW_AT_name("settings"), DW_AT_symbol_name("_settings")
	.dwattr DW$8, DW_AT_type(*DW$T$42)
	.dwattr DW$8, DW_AT_declaration(0x01)
	.dwattr DW$8, DW_AT_external(0x01)
DW$9	.dwtag  DW_TAG_variable, DW_AT_name("transferbuffer"), DW_AT_symbol_name("_transferbuffer")
	.dwattr DW$9, DW_AT_type(*DW$T$40)
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)
	.global	_logging
_logging:	.usect	".ebss",1,1,0
DW$10	.dwtag  DW_TAG_variable, DW_AT_name("logging"), DW_AT_symbol_name("_logging")
	.dwattr DW$10, DW_AT_location[DW_OP_addr _logging]
	.dwattr DW$10, DW_AT_type(*DW$T$43)
	.dwattr DW$10, DW_AT_external(0x01)
	.global	_eventlogvars
_eventlogvars:	.usect	".ebss",3,1,0
DW$11	.dwtag  DW_TAG_variable, DW_AT_name("eventlogvars"), DW_AT_symbol_name("_eventlogvars")
	.dwattr DW$11, DW_AT_location[DW_OP_addr _eventlogvars]
	.dwattr DW$11, DW_AT_type(*DW$T$44)
	.dwattr DW$11, DW_AT_external(0x01)
	.global	_eventlogentry
_eventlogentry:	.usect	".ebss",68,1,0
DW$12	.dwtag  DW_TAG_variable, DW_AT_name("eventlogentry"), DW_AT_symbol_name("_eventlogentry")
	.dwattr DW$12, DW_AT_location[DW_OP_addr _eventlogentry]
	.dwattr DW$12, DW_AT_type(*DW$T$46)
	.dwattr DW$12, DW_AT_external(0x01)
;	C:\CCStudio_v3.3\C2000\cgtools\bin\opt2000.exe C:\Users\Andrew\AppData\Local\Temp\TI1482 C:\Users\Andrew\AppData\Local\Temp\TI1484 
;	C:\CCStudio_v3.3\C2000\cgtools\bin\ac2000.exe -q -D_INLINE -DLARGE_MODEL -IC:/CCStudio_v3.3/C2000/xdais/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/bios/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/rtdx/include/c2000 -IC:/CCStudio_v3.3/C2000/cgtools/include --version=28 --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\Andrew\AppData\Local\Temp\TI1482 --template_info_file C:\Users\Andrew\AppData\Local\Temp\TI1486 --object_file 
	.sect	".text"
	.global	_WriteEventLogVarsStructtoNVMEM

DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteEventLogVarsStructtoNVMEM"), DW_AT_symbol_name("_WriteEventLogVarsStructtoNVMEM")
	.dwattr DW$13, DW_AT_low_pc(_WriteEventLogVarsStructtoNVMEM)
	.dwattr DW$13, DW_AT_high_pc(0x00)
	.dwattr DW$13, DW_AT_begin_file("logging.c")
	.dwattr DW$13, DW_AT_begin_line(0x2a)
	.dwattr DW$13, DW_AT_begin_column(0x06)
	.dwattr DW$13, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$13, DW_AT_skeletal(0x01)
	.dwpsn	"logging.c",43,1

;***************************************************************
;* FNAME: _WriteEventLogVarsStructtoNVMEM FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WriteEventLogVarsStructtoNVMEM:
        MOVB      AL,#0
        MOVB      XAR5,#3               ; |53| 
        MOVL      XAR4,#_eventlogvars   ; |53| 
        MOV       AH,#28208             ; |53| 
        LCR       #_WriteNVMemory       ; |53| 
        ; call occurs [#_WriteNVMemory] ; |53| 
	.dwpsn	"logging.c",54,1
        LRETR
        ; return occurs
	.dwattr DW$13, DW_AT_end_file("logging.c")
	.dwattr DW$13, DW_AT_end_line(0x36)
	.dwattr DW$13, DW_AT_end_column(0x01)
	.dwendtag DW$13

	.sect	".text"
	.global	_ReadEventLogVarsStructfromNVMEM

DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadEventLogVarsStructfromNVMEM"), DW_AT_symbol_name("_ReadEventLogVarsStructfromNVMEM")
	.dwattr DW$14, DW_AT_low_pc(_ReadEventLogVarsStructfromNVMEM)
	.dwattr DW$14, DW_AT_high_pc(0x00)
	.dwattr DW$14, DW_AT_begin_file("logging.c")
	.dwattr DW$14, DW_AT_begin_line(0x3a)
	.dwattr DW$14, DW_AT_begin_column(0x06)
	.dwattr DW$14, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$14, DW_AT_skeletal(0x01)
	.dwpsn	"logging.c",59,1

;***************************************************************
;* FNAME: _ReadEventLogVarsStructfromNVMEM FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadEventLogVarsStructfromNVMEM:
        MOVB      AL,#0
        MOVB      XAR5,#3               ; |70| 
        MOVL      XAR4,#_eventlogvars   ; |70| 
        MOV       AH,#28208             ; |70| 
        LCR       #_ReadNVMemory        ; |70| 
        ; call occurs [#_ReadNVMemory] ; |70| 
	.dwpsn	"logging.c",71,1
        LRETR
        ; return occurs
	.dwattr DW$14, DW_AT_end_file("logging.c")
	.dwattr DW$14, DW_AT_end_line(0x47)
	.dwattr DW$14, DW_AT_end_column(0x01)
	.dwendtag DW$14

	.sect	".text"
	.global	_ClearMSGQueue

DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearMSGQueue"), DW_AT_symbol_name("_ClearMSGQueue")
	.dwattr DW$15, DW_AT_low_pc(_ClearMSGQueue)
	.dwattr DW$15, DW_AT_high_pc(0x00)
	.dwattr DW$15, DW_AT_begin_file("logging.c")
	.dwattr DW$15, DW_AT_begin_line(0x8c)
	.dwattr DW$15, DW_AT_begin_column(0x06)
	.dwattr DW$15, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$15, DW_AT_skeletal(0x01)
	.dwpsn	"logging.c",141,1

;***************************************************************
;* FNAME: _ClearMSGQueue                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ClearMSGQueue:
        MOVW      DP,#_eventlogvars+1
        MOV       @_eventlogvars+1,#0   ; |142| 
        LCR       #_WriteEventLogVarsStructtoNVMEM ; |143| 
        ; call occurs [#_WriteEventLogVarsStructtoNVMEM] ; |143| 
	.dwpsn	"logging.c",144,1
        LRETR
        ; return occurs
	.dwattr DW$15, DW_AT_end_file("logging.c")
	.dwattr DW$15, DW_AT_end_line(0x90)
	.dwattr DW$15, DW_AT_end_column(0x01)
	.dwendtag DW$15

	.sect	".text"
	.global	_MSGQueueNumfromPC

DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("MSGQueueNumfromPC"), DW_AT_symbol_name("_MSGQueueNumfromPC")
	.dwattr DW$16, DW_AT_low_pc(_MSGQueueNumfromPC)
	.dwattr DW$16, DW_AT_high_pc(0x00)
	.dwattr DW$16, DW_AT_begin_file("logging.c")
	.dwattr DW$16, DW_AT_begin_line(0x94)
	.dwattr DW$16, DW_AT_begin_column(0x06)
	.dwattr DW$16, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$16, DW_AT_skeletal(0x01)
	.dwpsn	"logging.c",149,1

;***************************************************************
;* FNAME: _MSGQueueNumfromPC            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_MSGQueueNumfromPC:
;* AL    assigned to _val
DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$17, DW_AT_type(*DW$T$11)
	.dwattr DW$17, DW_AT_location[DW_OP_reg0]
        MOVW      DP,#_eventlogvars+1
        CMP       AL,@_eventlogvars+1   ; |150| 
        BF        L1,LOS                ; |150| 
        ; branchcc occurs ; |150| 
        MOVW      DP,#_eventlogvars+1
        MOV       @_eventlogvars+1,#0   ; |156| 
        BF        L2,UNC                ; |156| 
        ; branch occurs ; |156| 
L1:    
        MOVW      DP,#_eventlogvars+1
        SUB       @_eventlogvars+1,AL   ; |152| 
L2:    
        LCR       #_WriteEventLogVarsStructtoNVMEM ; |158| 
        ; call occurs [#_WriteEventLogVarsStructtoNVMEM] ; |158| 
	.dwpsn	"logging.c",160,1
        LRETR
        ; return occurs
	.dwattr DW$16, DW_AT_end_file("logging.c")
	.dwattr DW$16, DW_AT_end_line(0xa0)
	.dwattr DW$16, DW_AT_end_column(0x01)
	.dwendtag DW$16

	.sect	".text"
	.global	_ClearAlarmListandEventLog

DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearAlarmListandEventLog"), DW_AT_symbol_name("_ClearAlarmListandEventLog")
	.dwattr DW$18, DW_AT_low_pc(_ClearAlarmListandEventLog)
	.dwattr DW$18, DW_AT_high_pc(0x00)
	.dwattr DW$18, DW_AT_begin_file("logging.c")
	.dwattr DW$18, DW_AT_begin_line(0xa3)
	.dwattr DW$18, DW_AT_begin_column(0x06)
	.dwattr DW$18, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$18, DW_AT_skeletal(0x01)
	.dwpsn	"logging.c",164,1

;***************************************************************
;* FNAME: _ClearAlarmListandEventLog    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ClearAlarmListandEventLog:
        LCR       #_ClearEventCodeListArea ; |167| 
        ; call occurs [#_ClearEventCodeListArea] ; |167| 
        MOVW      DP,#_eventlogvars
        MOV       @_eventlogvars,#0     ; |169| 
        MOVW      DP,#_eventlogvars+1
        MOV       @_eventlogvars+1,#0   ; |170| 
        LCR       #_WriteEventLogVarsStructtoNVMEM ; |171| 
        ; call occurs [#_WriteEventLogVarsStructtoNVMEM] ; |171| 
        LCR       #_SDEventLogDelete    ; |172| 
        ; call occurs [#_SDEventLogDelete] ; |172| 
	.dwpsn	"logging.c",176,1
        LRETR
        ; return occurs
	.dwattr DW$18, DW_AT_end_file("logging.c")
	.dwattr DW$18, DW_AT_end_line(0xb0)
	.dwattr DW$18, DW_AT_end_column(0x01)
	.dwendtag DW$18

	.sect	".text"
	.global	_ReadEventLogID

DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadEventLogID"), DW_AT_symbol_name("_ReadEventLogID")
	.dwattr DW$19, DW_AT_low_pc(_ReadEventLogID)
	.dwattr DW$19, DW_AT_high_pc(0x00)
	.dwattr DW$19, DW_AT_begin_file("logging.c")
	.dwattr DW$19, DW_AT_begin_line(0xb3)
	.dwattr DW$19, DW_AT_begin_column(0x0e)
	.dwattr DW$19, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$19, DW_AT_skeletal(0x01)
	.dwpsn	"logging.c",180,1

;***************************************************************
;* FNAME: _ReadEventLogID               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadEventLogID:
        MOVW      DP,#_eventlogvars
        MOV       AL,@_eventlogvars     ; |180| 
	.dwpsn	"logging.c",180,36
        LRETR
        ; return occurs
	.dwattr DW$19, DW_AT_end_file("logging.c")
	.dwattr DW$19, DW_AT_end_line(0xb4)
	.dwattr DW$19, DW_AT_end_column(0x24)
	.dwendtag DW$19

	.sect	".text"
	.global	_ReadMSGQueueNum

DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadMSGQueueNum"), DW_AT_symbol_name("_ReadMSGQueueNum")
	.dwattr DW$20, DW_AT_low_pc(_ReadMSGQueueNum)
	.dwattr DW$20, DW_AT_high_pc(0x00)
	.dwattr DW$20, DW_AT_begin_file("logging.c")
	.dwattr DW$20, DW_AT_begin_line(0xb7)
	.dwattr DW$20, DW_AT_begin_column(0x0e)
	.dwattr DW$20, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$20, DW_AT_skeletal(0x01)
	.dwpsn	"logging.c",184,1

;***************************************************************
;* FNAME: _ReadMSGQueueNum              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadMSGQueueNum:
        MOVW      DP,#_eventlogvars+1
        MOV       AL,@_eventlogvars+1   ; |184| 
	.dwpsn	"logging.c",184,33
        LRETR
        ; return occurs
	.dwattr DW$20, DW_AT_end_file("logging.c")
	.dwattr DW$20, DW_AT_end_line(0xb8)
	.dwattr DW$20, DW_AT_end_column(0x21)
	.dwendtag DW$20

	.sect	".text"
	.global	_ReadLastEventID

DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadLastEventID"), DW_AT_symbol_name("_ReadLastEventID")
	.dwattr DW$21, DW_AT_low_pc(_ReadLastEventID)
	.dwattr DW$21, DW_AT_high_pc(0x00)
	.dwattr DW$21, DW_AT_begin_file("logging.c")
	.dwattr DW$21, DW_AT_begin_line(0xbc)
	.dwattr DW$21, DW_AT_begin_column(0x0e)
	.dwattr DW$21, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$21, DW_AT_skeletal(0x01)
	.dwpsn	"logging.c",189,1

;***************************************************************
;* FNAME: _ReadLastEventID              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadLastEventID:
        MOVW      DP,#_eventlogvars
        MOV       AL,@_eventlogvars     ; |189| 
        ADDB      AL,#-1
	.dwpsn	"logging.c",189,38
        LRETR
        ; return occurs
	.dwattr DW$21, DW_AT_end_file("logging.c")
	.dwattr DW$21, DW_AT_end_line(0xbd)
	.dwattr DW$21, DW_AT_end_column(0x26)
	.dwendtag DW$21

	.sect	".text"
	.global	_SetupEventReadBack

DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("SetupEventReadBack"), DW_AT_symbol_name("_SetupEventReadBack")
	.dwattr DW$22, DW_AT_low_pc(_SetupEventReadBack)
	.dwattr DW$22, DW_AT_high_pc(0x00)
	.dwattr DW$22, DW_AT_begin_file("logging.c")
	.dwattr DW$22, DW_AT_begin_line(0x119)
	.dwattr DW$22, DW_AT_begin_column(0x06)
	.dwattr DW$22, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$22, DW_AT_skeletal(0x01)
	.dwpsn	"logging.c",282,1

;***************************************************************
;* FNAME: _SetupEventReadBack           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SetupEventReadBack:
;* AL    assigned to _eventid
DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_name("eventid"), DW_AT_symbol_name("_eventid")
	.dwattr DW$23, DW_AT_type(*DW$T$11)
	.dwattr DW$23, DW_AT_location[DW_OP_reg0]
        MOVW      DP,#_settings+7
        MOV       AH,@_settings+7       ; |285| 
        BF        L3,NEQ                ; |285| 
        ; branchcc occurs ; |285| 
        MOVL      XAR4,#_transferbuffer ; |287| 
        LCR       #_SDReadEvent         ; |287| 
        ; call occurs [#_SDReadEvent] ; |287| 
        BF        L5,UNC                ; |288| 
        ; branch occurs ; |288| 
L3:    
        MOVB      AL,#0
	.dwpsn	"logging.c",291,0
        SETC      SXM
L4:    
DW$L$_SetupEventReadBack$4$B:
        MOV       ACC,AL                ; |291| 
        MOVL      XAR4,#_transferbuffer ; |291| 
        ADDL      XAR4,ACC
        ADDB      AL,#1                 ; |291| 
        CMPB      AL,#128               ; |291| 
        MOV       *+XAR4[0],#45         ; |291| 
        BF        L4,LT                 ; |291| 
        ; branchcc occurs ; |291| 
DW$L$_SetupEventReadBack$4$E:
L5:    
	.dwpsn	"logging.c",294,1
        LRETR
        ; return occurs

DW$24	.dwtag  DW_TAG_loop
	.dwattr DW$24, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\logging.asm:L4:1:1471518977")
	.dwattr DW$24, DW_AT_begin_file("logging.c")
	.dwattr DW$24, DW_AT_begin_line(0x123)
	.dwattr DW$24, DW_AT_end_line(0x123)
DW$25	.dwtag  DW_TAG_loop_range
	.dwattr DW$25, DW_AT_low_pc(DW$L$_SetupEventReadBack$4$B)
	.dwattr DW$25, DW_AT_high_pc(DW$L$_SetupEventReadBack$4$E)
	.dwendtag DW$24

	.dwattr DW$22, DW_AT_end_file("logging.c")
	.dwattr DW$22, DW_AT_end_line(0x126)
	.dwattr DW$22, DW_AT_end_column(0x01)
	.dwendtag DW$22

	.sect	".text"
	.global	_ReadEvent

DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadEvent"), DW_AT_symbol_name("_ReadEvent")
	.dwattr DW$26, DW_AT_low_pc(_ReadEvent)
	.dwattr DW$26, DW_AT_high_pc(0x00)
	.dwattr DW$26, DW_AT_begin_file("logging.c")
	.dwattr DW$26, DW_AT_begin_line(0x12a)
	.dwattr DW$26, DW_AT_begin_column(0x0e)
	.dwattr DW$26, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$26, DW_AT_skeletal(0x01)
	.dwpsn	"logging.c",299,1

;***************************************************************
;* FNAME: _ReadEvent                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadEvent:
;* AL    assigned to _add
DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_name("add"), DW_AT_symbol_name("_add")
	.dwattr DW$27, DW_AT_type(*DW$T$11)
	.dwattr DW$27, DW_AT_location[DW_OP_reg0]
        CMPB      AL,#64                ; |300| 
        MOVZ      AR0,AL                ; |299| 
        BF        L6,LOS                ; |300| 
        ; branchcc occurs ; |300| 
        MOVB      AL,#0
        BF        L7,UNC                ; |300| 
        ; branch occurs ; |300| 
L6:    
        MOVL      XAR4,#_transferbuffer ; |300| 
        MOV       AL,*+XAR4[AR0]        ; |300| 
L7:    
	.dwpsn	"logging.c",303,1
        LRETR
        ; return occurs
	.dwattr DW$26, DW_AT_end_file("logging.c")
	.dwattr DW$26, DW_AT_end_line(0x12f)
	.dwattr DW$26, DW_AT_end_column(0x01)
	.dwendtag DW$26

;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_SDEventLogDelete
	.global	_SDReadEvent
	.global	_WriteNVMemory
	.global	_ReadNVMemory
	.global	_ClearEventCodeListArea
	.global	_settings
	.global	_transferbuffer

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

DW$T$28	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$28, DW_AT_language(DW_LANG_C)

DW$T$30	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$30, DW_AT_language(DW_LANG_C)
DW$28	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$30

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)

DW$T$31	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$31, DW_AT_language(DW_LANG_C)

DW$T$34	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$34, DW_AT_language(DW_LANG_C)
DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$33)
	.dwendtag DW$T$34


DW$T$36	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$36, DW_AT_language(DW_LANG_C)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)
DW$T$33	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$33, DW_AT_address_class(0x16)

DW$T$38	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$38, DW_AT_language(DW_LANG_C)

DW$T$39	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$39, DW_AT_language(DW_LANG_C)
DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$39


DW$T$40	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$40, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$40, DW_AT_byte_size(0x80)
DW$32	.dwtag  DW_TAG_subrange_type
	.dwattr DW$32, DW_AT_upper_bound(0x7f)
	.dwendtag DW$T$40

DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("settingsstruct"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$42, DW_AT_language(DW_LANG_C)
DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("loggingstruct"), DW_AT_type(*DW$T$21)
	.dwattr DW$T$43, DW_AT_language(DW_LANG_C)
DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("eventlogvarsstruct"), DW_AT_type(*DW$T$22)
	.dwattr DW$T$44, DW_AT_language(DW_LANG_C)
DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("eventlogstruct"), DW_AT_type(*DW$T$27)
	.dwattr DW$T$46, DW_AT_language(DW_LANG_C)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("tag_settingsstruct")
	.dwattr DW$T$20, DW_AT_byte_size(0x24)
DW$33	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$33, DW_AT_name("watchdog"), DW_AT_symbol_name("_watchdog")
	.dwattr DW$33, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$33, DW_AT_accessibility(DW_ACCESS_public)
DW$34	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$34, DW_AT_name("ledflashflag"), DW_AT_symbol_name("_ledflashflag")
	.dwattr DW$34, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$34, DW_AT_accessibility(DW_ACCESS_public)
DW$35	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$35, DW_AT_name("updatesafe"), DW_AT_symbol_name("_updatesafe")
	.dwattr DW$35, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$35, DW_AT_accessibility(DW_ACCESS_public)
DW$36	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$36, DW_AT_name("tableconfigtype"), DW_AT_symbol_name("_tableconfigtype")
	.dwattr DW$36, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$36, DW_AT_accessibility(DW_ACCESS_public)
DW$37	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$37, DW_AT_name("caltableconfigtype"), DW_AT_symbol_name("_caltableconfigtype")
	.dwattr DW$37, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$37, DW_AT_accessibility(DW_ACCESS_public)
DW$38	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$38, DW_AT_name("eventmsgid"), DW_AT_symbol_name("_eventmsgid")
	.dwattr DW$38, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$38, DW_AT_accessibility(DW_ACCESS_public)
DW$39	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$39, DW_AT_name("configoperationcomplete"), DW_AT_symbol_name("_configoperationcomplete")
	.dwattr DW$39, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$39, DW_AT_accessibility(DW_ACCESS_public)
DW$40	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$40, DW_AT_name("sdcarderr"), DW_AT_symbol_name("_sdcarderr")
	.dwattr DW$40, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$40, DW_AT_accessibility(DW_ACCESS_public)
DW$41	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$41, DW_AT_name("sderase"), DW_AT_symbol_name("_sderase")
	.dwattr DW$41, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$41, DW_AT_accessibility(DW_ACCESS_public)
DW$42	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$42, DW_AT_name("sdreinit"), DW_AT_symbol_name("_sdreinit")
	.dwattr DW$42, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$42, DW_AT_accessibility(DW_ACCESS_public)
DW$43	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$43, DW_AT_name("sdcardupdate"), DW_AT_symbol_name("_sdcardupdate")
	.dwattr DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$43, DW_AT_accessibility(DW_ACCESS_public)
DW$44	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$44, DW_AT_name("cardreadflag"), DW_AT_symbol_name("_cardreadflag")
	.dwattr DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$44, DW_AT_accessibility(DW_ACCESS_public)
DW$45	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$45, DW_AT_name("ignore"), DW_AT_symbol_name("_ignore")
	.dwattr DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$45, DW_AT_accessibility(DW_ACCESS_public)
DW$46	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$46, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$46, DW_AT_accessibility(DW_ACCESS_public)
DW$47	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$47, DW_AT_name("spiinuse"), DW_AT_symbol_name("_spiinuse")
	.dwattr DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$47, DW_AT_accessibility(DW_ACCESS_public)
DW$48	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$48, DW_AT_name("dcpeakhold"), DW_AT_symbol_name("_dcpeakhold")
	.dwattr DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$48, DW_AT_accessibility(DW_ACCESS_public)
DW$49	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$49, DW_AT_name("dcpause"), DW_AT_symbol_name("_dcpause")
	.dwattr DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$49, DW_AT_accessibility(DW_ACCESS_public)
DW$50	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$50, DW_AT_name("mastermode"), DW_AT_symbol_name("_mastermode")
	.dwattr DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$50, DW_AT_accessibility(DW_ACCESS_public)
DW$51	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$51, DW_AT_name("updatescaling"), DW_AT_symbol_name("_updatescaling")
	.dwattr DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$51, DW_AT_accessibility(DW_ACCESS_public)
DW$52	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$52, DW_AT_name("forwardasternflag"), DW_AT_symbol_name("_forwardasternflag")
	.dwattr DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$52, DW_AT_accessibility(DW_ACCESS_public)
DW$53	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$53, DW_AT_name("initprogress"), DW_AT_symbol_name("_initprogress")
	.dwattr DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$53, DW_AT_accessibility(DW_ACCESS_public)
DW$54	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$54, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$54, DW_AT_accessibility(DW_ACCESS_public)
DW$55	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$55, DW_AT_name("slowdowncounter"), DW_AT_symbol_name("_slowdowncounter")
	.dwattr DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$55, DW_AT_accessibility(DW_ACCESS_public)
DW$56	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$56, DW_AT_name("slowdowncondition"), DW_AT_symbol_name("_slowdowncondition")
	.dwattr DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$56, DW_AT_accessibility(DW_ACCESS_public)
DW$57	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$57, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$57, DW_AT_accessibility(DW_ACCESS_public)
DW$58	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$58, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$58, DW_AT_accessibility(DW_ACCESS_public)
DW$59	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$59, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$59, DW_AT_accessibility(DW_ACCESS_public)
DW$60	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$60, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$60, DW_AT_accessibility(DW_ACCESS_public)
DW$61	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$61, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$61, DW_AT_accessibility(DW_ACCESS_public)
DW$62	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$62, DW_AT_name("temperaturealarm"), DW_AT_symbol_name("_temperaturealarm")
	.dwattr DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$62, DW_AT_accessibility(DW_ACCESS_public)
DW$63	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$63, DW_AT_name("temperatureslowdown"), DW_AT_symbol_name("_temperatureslowdown")
	.dwattr DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$63, DW_AT_accessibility(DW_ACCESS_public)
DW$64	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$64, DW_AT_name("anadebug"), DW_AT_symbol_name("_anadebug")
	.dwattr DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$64, DW_AT_accessibility(DW_ACCESS_public)
DW$65	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$65, DW_AT_name("serialdebug"), DW_AT_symbol_name("_serialdebug")
	.dwattr DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr DW$65, DW_AT_accessibility(DW_ACCESS_public)
DW$66	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$66, DW_AT_name("timerrunning"), DW_AT_symbol_name("_timerrunning")
	.dwattr DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$66, DW_AT_accessibility(DW_ACCESS_public)
DW$67	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$67, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$67, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$21, DW_AT_name("tag_loggingstruct")
	.dwattr DW$T$21, DW_AT_byte_size(0x01)
DW$68	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$68, DW_AT_name("nothing"), DW_AT_symbol_name("_nothing")
	.dwattr DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$68, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21


DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_name("tag_eventlogvarsstruct")
	.dwattr DW$T$22, DW_AT_byte_size(0x03)
DW$69	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$69, DW_AT_name("eventlogid"), DW_AT_symbol_name("_eventlogid")
	.dwattr DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$69, DW_AT_accessibility(DW_ACCESS_public)
DW$70	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$70, DW_AT_name("msgqueue"), DW_AT_symbol_name("_msgqueue")
	.dwattr DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$70, DW_AT_accessibility(DW_ACCESS_public)
DW$71	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$71, DW_AT_name("eventlogwrapflag"), DW_AT_symbol_name("_eventlogwrapflag")
	.dwattr DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$71, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$27, DW_AT_name("tag_eventlogstruct")
	.dwattr DW$T$27, DW_AT_byte_size(0x44)
DW$72	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$72, DW_AT_name("eventid"), DW_AT_symbol_name("_eventid")
	.dwattr DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$72, DW_AT_accessibility(DW_ACCESS_public)
DW$73	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$73, DW_AT_name("datetime"), DW_AT_symbol_name("_datetime")
	.dwattr DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$73, DW_AT_accessibility(DW_ACCESS_public)
DW$74	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$74, DW_AT_name("msgstring"), DW_AT_symbol_name("_msgstring")
	.dwattr DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$74, DW_AT_accessibility(DW_ACCESS_public)
DW$75	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$75, DW_AT_name("msgstring2"), DW_AT_symbol_name("_msgstring2")
	.dwattr DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$75, DW_AT_accessibility(DW_ACCESS_public)
DW$76	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$76, DW_AT_name("ackdatetime"), DW_AT_symbol_name("_ackdatetime")
	.dwattr DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr DW$76, DW_AT_accessibility(DW_ACCESS_public)
DW$77	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$77, DW_AT_name("ackstring"), DW_AT_symbol_name("_ackstring")
	.dwattr DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$77, DW_AT_accessibility(DW_ACCESS_public)
DW$78	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$78, DW_AT_name("newalarmeventflag"), DW_AT_symbol_name("_newalarmeventflag")
	.dwattr DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x3f]
	.dwattr DW$78, DW_AT_accessibility(DW_ACCESS_public)
DW$79	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$79, DW_AT_name("eventcodestatus"), DW_AT_symbol_name("_eventcodestatus")
	.dwattr DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$79, DW_AT_accessibility(DW_ACCESS_public)
DW$80	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$80, DW_AT_name("eventcode"), DW_AT_symbol_name("_eventcode")
	.dwattr DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr DW$80, DW_AT_accessibility(DW_ACCESS_public)
DW$81	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$81, DW_AT_name("currentindex"), DW_AT_symbol_name("_currentindex")
	.dwattr DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr DW$81, DW_AT_accessibility(DW_ACCESS_public)
DW$82	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$82, DW_AT_name("txalarmevents"), DW_AT_symbol_name("_txalarmevents")
	.dwattr DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr DW$82, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$23	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$23, DW_AT_byte_size(0x09)
DW$83	.dwtag  DW_TAG_subrange_type
	.dwattr DW$83, DW_AT_upper_bound(0x08)
	.dwendtag DW$T$23


DW$T$24	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$24, DW_AT_byte_size(0x18)
DW$84	.dwtag  DW_TAG_subrange_type
	.dwattr DW$84, DW_AT_upper_bound(0x17)
	.dwendtag DW$T$24


DW$T$25	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$25, DW_AT_byte_size(0x0f)
DW$85	.dwtag  DW_TAG_subrange_type
	.dwattr DW$85, DW_AT_upper_bound(0x0e)
	.dwendtag DW$T$25


DW$T$26	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$26, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$26, DW_AT_byte_size(0x05)
DW$86	.dwtag  DW_TAG_subrange_type
	.dwattr DW$86, DW_AT_upper_bound(0x04)
	.dwendtag DW$T$26


DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$19, DW_AT_byte_size(0x02)
DW$87	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$87, DW_AT_name("enb"), DW_AT_symbol_name("_enb")
	.dwattr DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$87, DW_AT_accessibility(DW_ACCESS_public)
DW$88	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$88, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$88, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$19


	.dwattr DW$18, DW_AT_external(0x01)
	.dwattr DW$15, DW_AT_external(0x01)
	.dwattr DW$16, DW_AT_external(0x01)
	.dwattr DW$26, DW_AT_external(0x01)
	.dwattr DW$26, DW_AT_type(*DW$T$11)
	.dwattr DW$19, DW_AT_external(0x01)
	.dwattr DW$19, DW_AT_type(*DW$T$11)
	.dwattr DW$14, DW_AT_external(0x01)
	.dwattr DW$21, DW_AT_external(0x01)
	.dwattr DW$21, DW_AT_type(*DW$T$11)
	.dwattr DW$20, DW_AT_external(0x01)
	.dwattr DW$20, DW_AT_type(*DW$T$11)
	.dwattr DW$22, DW_AT_external(0x01)
	.dwattr DW$13, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$89	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$89, DW_AT_location[DW_OP_reg0]
DW$90	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$90, DW_AT_location[DW_OP_reg1]
DW$91	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$91, DW_AT_location[DW_OP_reg2]
DW$92	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$92, DW_AT_location[DW_OP_reg3]
DW$93	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$93, DW_AT_location[DW_OP_reg4]
DW$94	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$94, DW_AT_location[DW_OP_reg5]
DW$95	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$95, DW_AT_location[DW_OP_reg6]
DW$96	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$96, DW_AT_location[DW_OP_reg7]
DW$97	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$97, DW_AT_location[DW_OP_reg8]
DW$98	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$98, DW_AT_location[DW_OP_reg9]
DW$99	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$99, DW_AT_location[DW_OP_reg10]
DW$100	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$100, DW_AT_location[DW_OP_reg11]
DW$101	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$101, DW_AT_location[DW_OP_reg12]
DW$102	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$102, DW_AT_location[DW_OP_reg13]
DW$103	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$103, DW_AT_location[DW_OP_reg14]
DW$104	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$104, DW_AT_location[DW_OP_reg15]
DW$105	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$105, DW_AT_location[DW_OP_reg16]
DW$106	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$106, DW_AT_location[DW_OP_reg17]
DW$107	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$107, DW_AT_location[DW_OP_reg18]
DW$108	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$108, DW_AT_location[DW_OP_reg19]
DW$109	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$109, DW_AT_location[DW_OP_reg20]
DW$110	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$110, DW_AT_location[DW_OP_reg21]
DW$111	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$111, DW_AT_location[DW_OP_reg22]
DW$112	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$112, DW_AT_location[DW_OP_reg23]
DW$113	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$113, DW_AT_location[DW_OP_reg24]
DW$114	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$114, DW_AT_location[DW_OP_reg25]
DW$115	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$115, DW_AT_location[DW_OP_reg26]
DW$116	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$116, DW_AT_location[DW_OP_reg27]
DW$117	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$117, DW_AT_location[DW_OP_reg28]
DW$118	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$118, DW_AT_location[DW_OP_reg29]
DW$119	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$119, DW_AT_location[DW_OP_reg30]
DW$120	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$120, DW_AT_location[DW_OP_reg31]
DW$121	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$121, DW_AT_location[DW_OP_regx 0x20]
DW$122	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$122, DW_AT_location[DW_OP_regx 0x21]
DW$123	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$123, DW_AT_location[DW_OP_regx 0x22]
DW$124	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$124, DW_AT_location[DW_OP_regx 0x23]
DW$125	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$125, DW_AT_location[DW_OP_regx 0x24]
DW$126	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$126, DW_AT_location[DW_OP_regx 0x25]
DW$127	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$127, DW_AT_location[DW_OP_regx 0x26]
DW$128	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$128, DW_AT_location[DW_OP_regx 0x27]
DW$129	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$129, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

