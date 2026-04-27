;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Thu Aug 18 12:16:35 2016                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("wio.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("memset"), DW_AT_symbol_name("_memset")
	.dwattr DW$1, DW_AT_type(*DW$T$3)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$39)
	.dwendtag DW$1


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteNVMemory"), DW_AT_symbol_name("_WriteNVMemory")
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$42)
DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$5


DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadNVMemory"), DW_AT_symbol_name("_ReadNVMemory")
	.dwattr DW$10, DW_AT_declaration(0x01)
	.dwattr DW$10, DW_AT_external(0x01)
DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$42)
DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$10


DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("SetAlarmEvent"), DW_AT_symbol_name("_SetAlarmEvent")
	.dwattr DW$15, DW_AT_declaration(0x01)
	.dwattr DW$15, DW_AT_external(0x01)
DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$15


DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearAlarmEvent"), DW_AT_symbol_name("_ClearAlarmEvent")
	.dwattr DW$17, DW_AT_declaration(0x01)
	.dwattr DW$17, DW_AT_external(0x01)
DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$17


DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("CheckAlarmBitSet"), DW_AT_symbol_name("_CheckAlarmBitSet")
	.dwattr DW$19, DW_AT_type(*DW$T$10)
	.dwattr DW$19, DW_AT_declaration(0x01)
	.dwattr DW$19, DW_AT_external(0x01)
DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$19


DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("DebugStringOut"), DW_AT_symbol_name("_DebugStringOut")
	.dwattr DW$21, DW_AT_type(*DW$T$10)
	.dwattr DW$21, DW_AT_declaration(0x01)
	.dwattr DW$21, DW_AT_external(0x01)
DW$22	.dwtag  DW_TAG_variable, DW_AT_name("settings"), DW_AT_symbol_name("_settings")
	.dwattr DW$22, DW_AT_type(*DW$T$73)
	.dwattr DW$22, DW_AT_declaration(0x01)
	.dwattr DW$22, DW_AT_external(0x01)
DW$23	.dwtag  DW_TAG_variable, DW_AT_name("timers"), DW_AT_symbol_name("_timers")
	.dwattr DW$23, DW_AT_type(*DW$T$75)
	.dwattr DW$23, DW_AT_declaration(0x01)
	.dwattr DW$23, DW_AT_external(0x01)
DW$24	.dwtag  DW_TAG_variable, DW_AT_name("wiolost"), DW_AT_symbol_name("_wiolost")
	.dwattr DW$24, DW_AT_type(*DW$T$11)
	.dwattr DW$24, DW_AT_declaration(0x01)
	.dwattr DW$24, DW_AT_external(0x01)
DW$25	.dwtag  DW_TAG_variable, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$25, DW_AT_type(*DW$T$78)
	.dwattr DW$25, DW_AT_declaration(0x01)
	.dwattr DW$25, DW_AT_external(0x01)
	.global	_wio_OORflag
_wio_OORflag:	.usect	".ebss",1,1,0
DW$26	.dwtag  DW_TAG_variable, DW_AT_name("wio_OORflag"), DW_AT_symbol_name("_wio_OORflag")
	.dwattr DW$26, DW_AT_location[DW_OP_addr _wio_OORflag]
	.dwattr DW$26, DW_AT_type(*DW$T$10)
	.dwattr DW$26, DW_AT_external(0x01)
	.global	_waterinoil
_waterinoil:	.usect	".ebss",12,1,1
DW$27	.dwtag  DW_TAG_variable, DW_AT_name("waterinoil"), DW_AT_symbol_name("_waterinoil")
	.dwattr DW$27, DW_AT_location[DW_OP_addr _waterinoil]
	.dwattr DW$27, DW_AT_type(*DW$T$68)
	.dwattr DW$27, DW_AT_external(0x01)
	.global	_wiosettings
_wiosettings:	.usect	".ebss",10,1,0
DW$28	.dwtag  DW_TAG_variable, DW_AT_name("wiosettings"), DW_AT_symbol_name("_wiosettings")
	.dwattr DW$28, DW_AT_location[DW_OP_addr _wiosettings]
	.dwattr DW$28, DW_AT_type(*DW$T$63)
	.dwattr DW$28, DW_AT_external(0x01)
_wio_oorcount$1:	.usect	".ebss",1,1,0
;	C:\CCStudio_v3.3\C2000\cgtools\bin\opt2000.exe C:\Users\Andrew\AppData\Local\Temp\TI2842 C:\Users\Andrew\AppData\Local\Temp\TI2844 
;	C:\CCStudio_v3.3\C2000\cgtools\bin\ac2000.exe -q -D_INLINE -DLARGE_MODEL -IC:/CCStudio_v3.3/C2000/xdais/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/bios/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/rtdx/include/c2000 -IC:/CCStudio_v3.3/C2000/cgtools/include --version=28 --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\Andrew\AppData\Local\Temp\TI2842 --template_info_file C:\Users\Andrew\AppData\Local\Temp\TI2846 --object_file 
	.sect	".text"
	.global	_WIOInit

DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("WIOInit"), DW_AT_symbol_name("_WIOInit")
	.dwattr DW$29, DW_AT_low_pc(_WIOInit)
	.dwattr DW$29, DW_AT_high_pc(0x00)
	.dwattr DW$29, DW_AT_begin_file("wio.c")
	.dwattr DW$29, DW_AT_begin_line(0x1e)
	.dwattr DW$29, DW_AT_begin_column(0x06)
	.dwattr DW$29, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$29, DW_AT_skeletal(0x01)
	.dwpsn	"wio.c",31,1

;***************************************************************
;* FNAME: _WIOInit                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WIOInit:
        MOV       AH,#0
        MOV       AL,#0
        MOVW      DP,#_waterinoil+2
        MOVL      @_waterinoil+2,ACC    ; |32| 
        MOVL      XAR4,#_waterinoil+11  ; |41| 
        MOV       AH,#0
        MOV       AL,#0
        MOVW      DP,#_waterinoil+4
        MOVB      XAR5,#1               ; |43| 
        MOVL      @_waterinoil+4,ACC    ; |33| 
        MOV       AH,#0
        MOV       AL,#0
        MOVW      DP,#_waterinoil+6
        MOVL      @_waterinoil+6,ACC    ; |34| 
        MOVW      DP,#_waterinoil+8
        MOV       @_waterinoil+8,#0     ; |35| 
        MOVW      DP,#_waterinoil+9
        MOV       @_waterinoil+9,#0     ; |36| 
        MOVW      DP,#_waterinoil+10
        MOV       @_waterinoil+10,#0    ; |37| 
        MOVW      DP,#_wio_OORflag
        MOVB      AL,#0
        MOV       @_wio_OORflag,#0      ; |39| 
        MOV       AH,#28850             ; |43| 
        MOV       *+XAR4[0],#0          ; |41| 
        LCR       #_ReadNVMemory        ; |43| 
        ; call occurs [#_ReadNVMemory] ; |43| 
	.dwpsn	"wio.c",44,1
        LRETR
        ; return occurs
	.dwattr DW$29, DW_AT_end_file("wio.c")
	.dwattr DW$29, DW_AT_end_line(0x2c)
	.dwattr DW$29, DW_AT_end_column(0x01)
	.dwendtag DW$29

	.sect	".text"
	.global	_WioSettingsStructPtr

DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("WioSettingsStructPtr"), DW_AT_symbol_name("_WioSettingsStructPtr")
	.dwattr DW$30, DW_AT_low_pc(_WioSettingsStructPtr)
	.dwattr DW$30, DW_AT_high_pc(0x00)
	.dwattr DW$30, DW_AT_begin_file("wio.c")
	.dwattr DW$30, DW_AT_begin_line(0x30)
	.dwattr DW$30, DW_AT_begin_column(0x15)
	.dwattr DW$30, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$30, DW_AT_skeletal(0x01)
	.dwpsn	"wio.c",49,1

;***************************************************************
;* FNAME: _WioSettingsStructPtr         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WioSettingsStructPtr:
        MOVL      XAR4,#_wiosettings    ; |49| 
	.dwpsn	"wio.c",49,25
        LRETR
        ; return occurs
	.dwattr DW$30, DW_AT_end_file("wio.c")
	.dwattr DW$30, DW_AT_end_line(0x31)
	.dwattr DW$30, DW_AT_end_column(0x19)
	.dwendtag DW$30

	.sect	".text"
	.global	_WioStructPtr

DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("WioStructPtr"), DW_AT_symbol_name("_WioStructPtr")
	.dwattr DW$31, DW_AT_low_pc(_WioStructPtr)
	.dwattr DW$31, DW_AT_high_pc(0x00)
	.dwattr DW$31, DW_AT_begin_file("wio.c")
	.dwattr DW$31, DW_AT_begin_line(0x35)
	.dwattr DW$31, DW_AT_begin_column(0x14)
	.dwattr DW$31, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$31, DW_AT_skeletal(0x01)
	.dwpsn	"wio.c",54,1

;***************************************************************
;* FNAME: _WioStructPtr                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WioStructPtr:
        MOVL      XAR4,#_waterinoil     ; |54| 
	.dwpsn	"wio.c",54,24
        LRETR
        ; return occurs
	.dwattr DW$31, DW_AT_end_file("wio.c")
	.dwattr DW$31, DW_AT_end_line(0x36)
	.dwattr DW$31, DW_AT_end_column(0x18)
	.dwendtag DW$31

	.sect	".text"
	.global	_WIOAnalog

DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("WIOAnalog"), DW_AT_symbol_name("_WIOAnalog")
	.dwattr DW$32, DW_AT_low_pc(_WIOAnalog)
	.dwattr DW$32, DW_AT_high_pc(0x00)
	.dwattr DW$32, DW_AT_begin_file("wio.c")
	.dwattr DW$32, DW_AT_begin_line(0x39)
	.dwattr DW$32, DW_AT_begin_column(0x06)
	.dwattr DW$32, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$32, DW_AT_skeletal(0x01)
	.dwpsn	"wio.c",58,1

;***************************************************************
;* FNAME: _WIOAnalog                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WIOAnalog:
        MOVW      DP,#_wiosettings
        MOV       AL,@_wiosettings      ; |60| 
        CMPB      AL,#2                 ; |60| 
        BF        L1,NEQ                ; |60| 
        ; branchcc occurs ; |60| 
        MOVW      DP,#_waterinoil+11
        TBIT      @_waterinoil+11,#6    ; |60| 
        BF        L1,TC                 ; |60| 
        ; branchcc occurs ; |60| 
        MOVW      DP,#_waterinoil+11
        TBIT      @_waterinoil+11,#7    ; |60| 
        BF        L1,TC                 ; |60| 
        ; branchcc occurs ; |60| 
        LCR       #_WIOAnalogInput      ; |65| 
        ; call occurs [#_WIOAnalogInput] ; |65| 
L1:    
	.dwpsn	"wio.c",68,1
        LRETR
        ; return occurs
	.dwattr DW$32, DW_AT_end_file("wio.c")
	.dwattr DW$32, DW_AT_end_line(0x44)
	.dwattr DW$32, DW_AT_end_column(0x01)
	.dwendtag DW$32

	.sect	".text"
	.global	_WIOAnalogInput

DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("WIOAnalogInput"), DW_AT_symbol_name("_WIOAnalogInput")
	.dwattr DW$33, DW_AT_low_pc(_WIOAnalogInput)
	.dwattr DW$33, DW_AT_high_pc(0x00)
	.dwattr DW$33, DW_AT_begin_file("wio.c")
	.dwattr DW$33, DW_AT_begin_line(0x4a)
	.dwattr DW$33, DW_AT_begin_column(0x06)
	.dwattr DW$33, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$33, DW_AT_skeletal(0x01)
	.dwpsn	"wio.c",75,1

;***************************************************************
;* FNAME: _WIOAnalogInput               FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_WIOAnalogInput:
        MOVL      *SP++,XAR1
        MOVW      DP,#_inputs+228
        ADDB      SP,#2
        MOV       AL,@_inputs+228       ; |80| 
        LCR       #I$$TOFS              ; |80| 
        ; call occurs [#I$$TOFS] ; |80| 
        MOVL      XAR1,ACC              ; |80| 
        MOV       AL,#49152
        MOV       AH,#17484
        MOVL      *-SP[2],ACC           ; |81| 
        MOVL      ACC,XAR1              ; |81| 
        LCR       #FS$$CMP              ; |81| 
        ; call occurs [#FS$$CMP] ; |81| 
        CMPB      AL,#0                 ; |81| 
        BF        L2,LEQ                ; |81| 
        ; branchcc occurs ; |81| 
        MOV       AL,#61440
        MOV       AH,#17791
        MOVL      *-SP[2],ACC           ; |84| 
        MOVL      ACC,XAR1              ; |84| 
        LCR       #FS$$DIV              ; |84| 
        ; call occurs [#FS$$DIV] ; |84| 
        MOVL      XAR1,ACC              ; |84| 
        MOV       AL,#0
        MOV       AH,#16800
        MOVL      *-SP[2],ACC           ; |85| 
        MOVL      ACC,XAR1              ; |85| 
        LCR       #FS$$MPY              ; |85| 
        ; call occurs [#FS$$MPY] ; |85| 
        MOVL      XAR1,ACC              ; |85| 
        MOV       AL,#0
        MOV       AH,#16512
        MOVL      *-SP[2],ACC           ; |86| 
        MOVL      ACC,XAR1              ; |86| 
        LCR       #FS$$SUB              ; |86| 
        ; call occurs [#FS$$SUB] ; |86| 
        MOVL      XAR1,ACC              ; |86| 
        MOV       ACC,#31488 << 15
        MOVL      *-SP[2],ACC           ; |87| 
        MOVL      ACC,XAR1              ; |87| 
        LCR       #FS$$MPY              ; |87| 
        ; call occurs [#FS$$MPY] ; |87| 
        BF        L3,UNC                ; |87| 
        ; branch occurs ; |87| 
L2:    
        MOV       AH,#0
        MOV       AL,#0
L3:    
        MOVL      XAR1,ACC              ; |81| 
        SUBB      SP,#2
        MOVW      DP,#_waterinoil+4
        MOVL      @_waterinoil+4,XAR1   ; |92| 
        MOVL      XAR1,*--SP
	.dwpsn	"wio.c",95,1
        LRETR
        ; return occurs
	.dwattr DW$33, DW_AT_end_file("wio.c")
	.dwattr DW$33, DW_AT_end_line(0x5f)
	.dwattr DW$33, DW_AT_end_column(0x01)
	.dwendtag DW$33

	.sect	".text"
	.global	_CheckWIORange

DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("CheckWIORange"), DW_AT_symbol_name("_CheckWIORange")
	.dwattr DW$34, DW_AT_low_pc(_CheckWIORange)
	.dwattr DW$34, DW_AT_high_pc(0x00)
	.dwattr DW$34, DW_AT_begin_file("wio.c")
	.dwattr DW$34, DW_AT_begin_line(0x64)
	.dwattr DW$34, DW_AT_begin_column(0x06)
	.dwattr DW$34, DW_AT_frame_base[DW_OP_breg20 -36]
	.dwattr DW$34, DW_AT_skeletal(0x01)
	.dwpsn	"wio.c",101,1

;***************************************************************
;* FNAME: _CheckWIORange                FR SIZE:  34           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 30 Auto,  2 SOE     *
;***************************************************************

_CheckWIORange:
        MOVL      *SP++,XAR1
        ADDB      SP,#32
        MOVZ      AR4,SP                ; |105| 
        MOVB      ACC,#30
        MOVB      XAR5,#0
        SUBB      XAR4,#32              ; |105| 
        LCR       #_memset              ; |105| 
        ; call occurs [#_memset] ; |105| 
        MOVW      DP,#_wiosettings
        MOV       AL,@_wiosettings      ; |107| 
        CMPB      AL,#2                 ; |107| 
        BF        L10,NEQ               ; |107| 
        ; branchcc occurs ; |107| 
        MOVW      DP,#_timers+66
        MOV       AL,@_timers+66        ; |107| 
        BF        L10,NEQ               ; |107| 
        ; branchcc occurs ; |107| 
        MOVW      DP,#_inputs+228
        MOV       AL,@_inputs+228       ; |110| 
        LCR       #I$$TOFS              ; |110| 
        ; call occurs [#I$$TOFS] ; |110| 
        MOVL      XAR1,ACC              ; |110| 
        MOV       AL,#61440
        MOV       AH,#17791
        MOVL      *-SP[2],ACC           ; |111| 
        MOVL      ACC,XAR1              ; |111| 
        LCR       #FS$$DIV              ; |111| 
        ; call occurs [#FS$$DIV] ; |111| 
        MOVL      XAR1,ACC              ; |111| 
        MOV       AL,#0
        MOV       AH,#16800
        MOVL      *-SP[2],ACC           ; |114| 
        MOVL      ACC,XAR1              ; |114| 
        LCR       #FS$$MPY              ; |114| 
        ; call occurs [#FS$$MPY] ; |114| 
        MOVL      XAR1,ACC              ; |114| 
        MOV       AL,#0
        MOV       AH,#16808
        MOVL      *-SP[2],ACC           ; |114| 
        MOVL      ACC,XAR1              ; |114| 
        LCR       #FS$$CMP              ; |114| 
        ; call occurs [#FS$$CMP] ; |114| 
        CMPB      AL,#0                 ; |114| 
        BF        L4,GEQ                ; |114| 
        ; branchcc occurs ; |114| 
        MOV       AL,#0
        MOV       AH,#16448
        MOVL      *-SP[2],ACC           ; |114| 
        MOVL      ACC,XAR1              ; |114| 
        LCR       #FS$$CMP              ; |114| 
        ; call occurs [#FS$$CMP] ; |114| 
        CMPB      AL,#0                 ; |114| 
        BF        L5,LEQ                ; |114| 
        ; branchcc occurs ; |114| 
        MOVW      DP,#_wio_OORflag
        MOV       AL,@_wio_OORflag      ; |153| 
        CMPB      AL,#1                 ; |153| 
        BF        L10,NEQ               ; |153| 
        ; branchcc occurs ; |153| 
        MOV       AL,#359               ; |159| 
        LCR       #_ClearAlarmEvent     ; |159| 
        ; call occurs [#_ClearAlarmEvent] ; |159| 
        MOV       AL,#360               ; |160| 
        LCR       #_ClearAlarmEvent     ; |160| 
        ; call occurs [#_ClearAlarmEvent] ; |160| 
        MOVW      DP,#_wio_OORflag
        MOV       @_wio_OORflag,#0      ; |162| 
        MOVW      DP,#_wiolost
        MOV       @_wiolost,#0          ; |163| 
        MOVW      DP,#_waterinoil+11
        AND       @_waterinoil+11,#0xff3f ; |164| 
        MOVB      AL,#0
        MOVB      XAR5,#1               ; |166| 
        MOVL      XAR4,#_waterinoil+11  ; |166| 
        MOV       AH,#28850             ; |166| 
        LCR       #_WriteNVMemory       ; |166| 
        ; call occurs [#_WriteNVMemory] ; |166| 
        MOVL      XAR4,#FSL1            ; |167| 
        LCR       #_DebugStringOut      ; |167| 
        ; call occurs [#_DebugStringOut] ; |167| 
        BF        L10,UNC               ; |167| 
        ; branch occurs ; |167| 
L4:    
        MOV       AL,#0
        MOV       AH,#16448
        MOVL      *-SP[2],ACC           ; |116| 
        MOVL      ACC,XAR1              ; |116| 
        LCR       #FS$$CMP              ; |116| 
        ; call occurs [#FS$$CMP] ; |116| 
        CMPB      AL,#0                 ; |116| 
        BF        L6,GT                 ; |116| 
        ; branchcc occurs ; |116| 
L5:    
        MOVW      DP,#_waterinoil+11
        OR        @_waterinoil+11,#0x0040 ; |119| 
        MOV       AL,#0
        MOVW      DP,#_waterinoil+9
        MOV       @_waterinoil+9,#-32765 ; |121| 
        MOV       AH,#49024
        MOVW      DP,#_waterinoil+4
        MOVL      @_waterinoil+4,ACC    ; |122| 
L6:    
        MOV       AL,#0
        MOV       AH,#16808
        MOVL      *-SP[2],ACC           ; |125| 
        MOVL      ACC,XAR1              ; |125| 
        LCR       #FS$$CMP              ; |125| 
        ; call occurs [#FS$$CMP] ; |125| 
        CMPB      AL,#0                 ; |125| 
        BF        L7,LT                 ; |125| 
        ; branchcc occurs ; |125| 
        MOVW      DP,#_waterinoil+11
        MOV       AH,#49024
        OR        @_waterinoil+11,#0x0080 ; |127| 
        MOV       AL,#0
        MOVW      DP,#_waterinoil+9
        MOV       @_waterinoil+9,#-32764 ; |129| 
        MOVW      DP,#_waterinoil+4
        MOVL      @_waterinoil+4,ACC    ; |130| 
L7:    
        MOVW      DP,#_wio_OORflag
        MOV       AL,@_wio_OORflag      ; |134| 
        BF        L10,NEQ               ; |134| 
        ; branchcc occurs ; |134| 
        MOVW      DP,#_wio_OORflag
        MOV       @_wio_OORflag,#1      ; |137| 
        MOVW      DP,#_waterinoil+11
        TBIT      @_waterinoil+11,#6    ; |139| 
        BF        L8,TC                 ; |139| 
        ; branchcc occurs ; |139| 
        MOV       AL,#360               ; |143| 
        LCR       #_SetAlarmEvent       ; |143| 
        ; call occurs [#_SetAlarmEvent] ; |143| 
        BF        L9,UNC                ; |143| 
        ; branch occurs ; |143| 
L8:    
        MOV       AL,#359               ; |140| 
        LCR       #_SetAlarmEvent       ; |140| 
        ; call occurs [#_SetAlarmEvent] ; |140| 
        MOVL      XAR4,#FSL2            ; |141| 
        LCR       #_DebugStringOut      ; |141| 
        ; call occurs [#_DebugStringOut] ; |141| 
L9:    
        MOVB      AL,#0
        MOVB      XAR5,#1               ; |148| 
        MOVL      XAR4,#_waterinoil+11  ; |148| 
        MOV       AH,#28850             ; |148| 
        LCR       #_WriteNVMemory       ; |148| 
        ; call occurs [#_WriteNVMemory] ; |148| 
L10:    
        MOVW      DP,#_wiosettings
        MOV       AL,@_wiosettings      ; |173| 
        BF        L11,NEQ               ; |173| 
        ; branchcc occurs ; |173| 
        MOVW      DP,#_timers+66
        MOV       AL,@_timers+66        ; |173| 
        BF        L11,NEQ               ; |173| 
        ; branchcc occurs ; |173| 
        MOVW      DP,#_wio_OORflag
        MOV       AL,@_wio_OORflag      ; |173| 
        CMPB      AL,#1                 ; |173| 
        BF        L11,NEQ               ; |173| 
        ; branchcc occurs ; |173| 
        LCR       #_WIOCommsOORClearDown ; |177| 
        ; call occurs [#_WIOCommsOORClearDown] ; |177| 
L11:    
        SUBB      SP,#32
        MOVL      XAR1,*--SP
	.dwpsn	"wio.c",180,1
        LRETR
        ; return occurs
	.dwattr DW$34, DW_AT_end_file("wio.c")
	.dwattr DW$34, DW_AT_end_line(0xb4)
	.dwattr DW$34, DW_AT_end_column(0x01)
	.dwendtag DW$34

	.sect	".text"
	.global	_WIOCommsOORClearDown

DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("WIOCommsOORClearDown"), DW_AT_symbol_name("_WIOCommsOORClearDown")
	.dwattr DW$35, DW_AT_low_pc(_WIOCommsOORClearDown)
	.dwattr DW$35, DW_AT_high_pc(0x00)
	.dwattr DW$35, DW_AT_begin_file("wio.c")
	.dwattr DW$35, DW_AT_begin_line(0xb8)
	.dwattr DW$35, DW_AT_begin_column(0x06)
	.dwattr DW$35, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$35, DW_AT_skeletal(0x01)
	.dwpsn	"wio.c",185,1

;***************************************************************
;* FNAME: _WIOCommsOORClearDown         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WIOCommsOORClearDown:
        MOV       AL,#267               ; |186| 
        LCR       #_ClearAlarmEvent     ; |186| 
        ; call occurs [#_ClearAlarmEvent] ; |186| 
        MOV       AL,#359               ; |188| 
        LCR       #_ClearAlarmEvent     ; |188| 
        ; call occurs [#_ClearAlarmEvent] ; |188| 
        MOV       AL,#360               ; |189| 
        LCR       #_ClearAlarmEvent     ; |189| 
        ; call occurs [#_ClearAlarmEvent] ; |189| 
        MOVW      DP,#_wio_OORflag
        MOV       @_wio_OORflag,#0      ; |193| 
        MOVW      DP,#_wiolost
        MOV       @_wiolost,#0          ; |194| 
        MOVW      DP,#_waterinoil+11
        AND       @_waterinoil+11,#0xff0f ; |195| 
        MOVB      AL,#0
        MOVB      XAR5,#1               ; |201| 
        MOVL      XAR4,#_waterinoil+11  ; |201| 
        MOV       AH,#28850             ; |201| 
        LCR       #_WriteNVMemory       ; |201| 
        ; call occurs [#_WriteNVMemory] ; |201| 
        MOVL      XAR4,#FSL3            ; |203| 
        LCR       #_DebugStringOut      ; |203| 
        ; call occurs [#_DebugStringOut] ; |203| 
	.dwpsn	"wio.c",204,1
        LRETR
        ; return occurs
	.dwattr DW$35, DW_AT_end_file("wio.c")
	.dwattr DW$35, DW_AT_end_line(0xcc)
	.dwattr DW$35, DW_AT_end_column(0x01)
	.dwendtag DW$35

	.sect	".text"
	.global	_WIOTemperatureWord

DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("WIOTemperatureWord"), DW_AT_symbol_name("_WIOTemperatureWord")
	.dwattr DW$36, DW_AT_low_pc(_WIOTemperatureWord)
	.dwattr DW$36, DW_AT_high_pc(0x00)
	.dwattr DW$36, DW_AT_begin_file("wio.c")
	.dwattr DW$36, DW_AT_begin_line(0xcf)
	.dwattr DW$36, DW_AT_begin_column(0x05)
	.dwattr DW$36, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$36, DW_AT_skeletal(0x01)
	.dwpsn	"wio.c",208,1

;***************************************************************
;* FNAME: _WIOTemperatureWord           FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_WIOTemperatureWord:
        MOVW      DP,#_wiosettings
        MOVL      *SP++,XAR1
        MOV       AL,@_wiosettings      ; |210| 
        ADDB      SP,#2
        CMPB      AL,#1                 ; |210| 
        BF        L12,NEQ               ; |210| 
        ; branchcc occurs ; |210| 
        MOVW      DP,#_waterinoil+11
        TBIT      @_waterinoil+11,#5    ; |210| 
        BF        L12,TC                ; |210| 
        ; branchcc occurs ; |210| 
        MOVW      DP,#_waterinoil+2
        MOVL      XAR1,@_waterinoil+2   ; |213| 
        MOV       AL,#0
        MOV       AH,#17224
        MOVL      *-SP[2],ACC           ; |213| 
        MOVL      ACC,XAR1              ; |213| 
        LCR       #FS$$CMP              ; |213| 
        ; call occurs [#FS$$CMP] ; |213| 
        CMPB      AL,#0                 ; |213| 
        BF        L12,GEQ               ; |213| 
        ; branchcc occurs ; |213| 
        MOV       AL,#0
        MOV       AH,#0
        MOVL      *-SP[2],ACC           ; |213| 
        MOVL      ACC,XAR1              ; |213| 
        LCR       #FS$$CMP              ; |213| 
        ; call occurs [#FS$$CMP] ; |213| 
        CMPB      AL,#0                 ; |213| 
        BF        L12,LT                ; |213| 
        ; branchcc occurs ; |213| 
        MOV       AL,#0
        MOV       AH,#16672
        MOVL      *-SP[2],ACC           ; |217| 
        MOVL      ACC,XAR1              ; |217| 
        LCR       #FS$$MPY              ; |217| 
        ; call occurs [#FS$$MPY] ; |217| 
        LCR       #FS$$TOI              ; |217| 
        ; call occurs [#FS$$TOI] ; |217| 
        MOVW      DP,#_waterinoil+8
        MOV       @_waterinoil+8,AL     ; |217| 
L12:    
        MOVW      DP,#_wiosettings
        MOV       AL,@_wiosettings      ; |223| 
        BF        L13,NEQ               ; |223| 
        ; branchcc occurs ; |223| 
        MOVW      DP,#_waterinoil+8
        MOV       @_waterinoil+8,#0     ; |224| 
L13:    
        SUBB      SP,#2                 ; |226| 
        MOVL      XAR1,*--SP            ; |226| 
        MOVW      DP,#_waterinoil+8
        MOV       AL,@_waterinoil+8     ; |226| 
	.dwpsn	"wio.c",228,1
        LRETR
        ; return occurs
	.dwattr DW$36, DW_AT_end_file("wio.c")
	.dwattr DW$36, DW_AT_end_line(0xe4)
	.dwattr DW$36, DW_AT_end_column(0x01)
	.dwendtag DW$36

	.sect	".text"
	.global	_WIOActivityWord

DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("WIOActivityWord"), DW_AT_symbol_name("_WIOActivityWord")
	.dwattr DW$37, DW_AT_low_pc(_WIOActivityWord)
	.dwattr DW$37, DW_AT_high_pc(0x00)
	.dwattr DW$37, DW_AT_begin_file("wio.c")
	.dwattr DW$37, DW_AT_begin_line(0xe8)
	.dwattr DW$37, DW_AT_begin_column(0x05)
	.dwattr DW$37, DW_AT_frame_base[DW_OP_breg20 -36]
	.dwattr DW$37, DW_AT_skeletal(0x01)
	.dwpsn	"wio.c",233,1
DW$38	.dwtag  DW_TAG_variable, DW_AT_name("wio_oorcount"), DW_AT_symbol_name("_wio_oorcount$1")
	.dwattr DW$38, DW_AT_type(*DW$T$10)
	.dwattr DW$38, DW_AT_location[DW_OP_addr _wio_oorcount$1]

;***************************************************************
;* FNAME: _WIOActivityWord              FR SIZE:  34           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 30 Auto,  2 SOE     *
;***************************************************************

_WIOActivityWord:
        MOVL      *SP++,XAR1
        MOVW      DP,#_wiosettings
        ADDB      SP,#32
        MOV       AL,@_wiosettings      ; |239| 
        BF        L17,EQ                ; |239| 
        ; branchcc occurs ; |239| 
        MOVW      DP,#_waterinoil+11
        TBIT      @_waterinoil+11,#5    ; |239| 
        BF        L16,TC                ; |239| 
        ; branchcc occurs ; |239| 
        MOVZ      AR4,SP                ; |242| 
        MOVB      ACC,#30
        MOVB      XAR5,#0
        SUBB      XAR4,#32              ; |242| 
        LCR       #_memset              ; |242| 
        ; call occurs [#_memset] ; |242| 
        MOVW      DP,#_waterinoil+4
        MOVL      XAR1,@_waterinoil+4   ; |245| 
        MOV       ACC,#32512 << 15
        MOVL      *-SP[2],ACC           ; |245| 
        MOVL      ACC,XAR1              ; |245| 
        LCR       #FS$$CMP              ; |245| 
        ; call occurs [#FS$$CMP] ; |245| 
        CMPB      AL,#0                 ; |245| 
        BF        L14,GT                ; |245| 
        ; branchcc occurs ; |245| 
        MOV       AL,#0
        MOV       AH,#0
        MOVL      *-SP[2],ACC           ; |245| 
        MOVL      ACC,XAR1              ; |245| 
        LCR       #FS$$CMP              ; |245| 
        ; call occurs [#FS$$CMP] ; |245| 
        CMPB      AL,#0                 ; |245| 
        BF        L15,GEQ               ; |245| 
        ; branchcc occurs ; |245| 
L14:    
        MOVW      DP,#_wio_oorcount$1
        INC       @_wio_oorcount$1      ; |257| 
        MOVW      DP,#_wio_OORflag
        MOV       AL,@_wio_OORflag      ; |258| 
        BF        L16,NEQ               ; |258| 
        ; branchcc occurs ; |258| 
        MOVW      DP,#_wio_OORflag
        MOV       @_wio_OORflag,#1      ; |261| 
        BF        L16,UNC               ; |261| 
        ; branch occurs ; |261| 
L15:    
        MOVW      DP,#_wio_OORflag
        MOV       AL,#16384
        MOV       @_wio_OORflag,#0      ; |247| 
        MOVW      DP,#_wio_oorcount$1
        MOV       AH,#17948
        MOV       @_wio_oorcount$1,#0   ; |248| 
        MOVL      *-SP[2],ACC           ; |252| 
        MOVW      DP,#_waterinoil+4
        MOVL      ACC,@_waterinoil+4    ; |252| 
        LCR       #FS$$MPY              ; |252| 
        ; call occurs [#FS$$MPY] ; |252| 
        LCR       #FS$$TOI              ; |252| 
        ; call occurs [#FS$$TOI] ; |252| 
        MOVW      DP,#_waterinoil+9
        MOV       @_waterinoil+9,AL     ; |252| 
L16:    
        MOVW      DP,#_wiosettings
        MOV       AL,@_wiosettings      ; |275| 
        BF        L18,NEQ               ; |275| 
        ; branchcc occurs ; |275| 
L17:    
        MOVW      DP,#_waterinoil+9
        MOV       @_waterinoil+9,#0     ; |276| 
L18:    
        SUBB      SP,#32                ; |278| 
        MOVL      XAR1,*--SP            ; |278| 
        MOVW      DP,#_waterinoil+9
        MOV       AL,@_waterinoil+9     ; |278| 
	.dwpsn	"wio.c",279,1
        LRETR
        ; return occurs
	.dwattr DW$37, DW_AT_end_file("wio.c")
	.dwattr DW$37, DW_AT_end_line(0x117)
	.dwattr DW$37, DW_AT_end_column(0x01)
	.dwendtag DW$37

	.sect	".text"
	.global	_WIOPPMWord

DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("WIOPPMWord"), DW_AT_symbol_name("_WIOPPMWord")
	.dwattr DW$39, DW_AT_low_pc(_WIOPPMWord)
	.dwattr DW$39, DW_AT_high_pc(0x00)
	.dwattr DW$39, DW_AT_begin_file("wio.c")
	.dwattr DW$39, DW_AT_begin_line(0x11c)
	.dwattr DW$39, DW_AT_begin_column(0x05)
	.dwattr DW$39, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$39, DW_AT_skeletal(0x01)
	.dwpsn	"wio.c",285,1

;***************************************************************
;* FNAME: _WIOPPMWord                   FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_WIOPPMWord:
        MOVW      DP,#_wiosettings
        MOVL      *SP++,XAR1
        MOV       AL,@_wiosettings      ; |288| 
        ADDB      SP,#2
        CMPB      AL,#1                 ; |288| 
        BF        L19,NEQ               ; |288| 
        ; branchcc occurs ; |288| 
        MOVW      DP,#_waterinoil+11
        TBIT      @_waterinoil+11,#5    ; |288| 
        BF        L19,TC                ; |288| 
        ; branchcc occurs ; |288| 
        MOVW      DP,#_waterinoil+6
        MOVL      XAR1,@_waterinoil+6   ; |291| 
        MOV       AL,#16384
        MOV       AH,#17948
        MOVL      *-SP[2],ACC           ; |291| 
        MOVL      ACC,XAR1              ; |291| 
        LCR       #FS$$CMP              ; |291| 
        ; call occurs [#FS$$CMP] ; |291| 
        CMPB      AL,#0                 ; |291| 
        BF        L19,GEQ               ; |291| 
        ; branchcc occurs ; |291| 
        MOV       AL,#0
        MOV       AH,#0
        MOVL      *-SP[2],ACC           ; |291| 
        MOVL      ACC,XAR1              ; |291| 
        LCR       #FS$$CMP              ; |291| 
        ; call occurs [#FS$$CMP] ; |291| 
        CMPB      AL,#0                 ; |291| 
        BF        L19,LT                ; |291| 
        ; branchcc occurs ; |291| 
        MOVL      ACC,XAR1              ; |295| 
        LCR       #FS$$TOI              ; |295| 
        ; call occurs [#FS$$TOI] ; |295| 
        MOVW      DP,#_waterinoil+10
        MOV       @_waterinoil+10,AL    ; |295| 
L19:    
        MOVW      DP,#_wiosettings
        MOV       AL,@_wiosettings      ; |301| 
        BF        L20,NEQ               ; |301| 
        ; branchcc occurs ; |301| 
        MOVW      DP,#_waterinoil+10
        MOV       @_waterinoil+10,#0    ; |302| 
L20:    
        SUBB      SP,#2                 ; |304| 
        MOVL      XAR1,*--SP            ; |304| 
        MOVW      DP,#_waterinoil+10
        MOV       AL,@_waterinoil+10    ; |304| 
	.dwpsn	"wio.c",305,1
        LRETR
        ; return occurs
	.dwattr DW$39, DW_AT_end_file("wio.c")
	.dwattr DW$39, DW_AT_end_line(0x131)
	.dwattr DW$39, DW_AT_end_column(0x01)
	.dwendtag DW$39

	.sect	".text"
	.global	_WIOEnabled

DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("WIOEnabled"), DW_AT_symbol_name("_WIOEnabled")
	.dwattr DW$40, DW_AT_low_pc(_WIOEnabled)
	.dwattr DW$40, DW_AT_high_pc(0x00)
	.dwattr DW$40, DW_AT_begin_file("wio.c")
	.dwattr DW$40, DW_AT_begin_line(0x133)
	.dwattr DW$40, DW_AT_begin_column(0x05)
	.dwattr DW$40, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$40, DW_AT_skeletal(0x01)
	.dwpsn	"wio.c",308,1

;***************************************************************
;* FNAME: _WIOEnabled                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WIOEnabled:
        MOVW      DP,#_wiosettings
        MOV       AL,@_wiosettings      ; |310| 
	.dwpsn	"wio.c",311,1
        LRETR
        ; return occurs
	.dwattr DW$40, DW_AT_end_file("wio.c")
	.dwattr DW$40, DW_AT_end_line(0x137)
	.dwattr DW$40, DW_AT_end_column(0x01)
	.dwendtag DW$40

	.sect	".text"
	.global	_SetWIOAlarmMask

DW$41	.dwtag  DW_TAG_subprogram, DW_AT_name("SetWIOAlarmMask"), DW_AT_symbol_name("_SetWIOAlarmMask")
	.dwattr DW$41, DW_AT_low_pc(_SetWIOAlarmMask)
	.dwattr DW$41, DW_AT_high_pc(0x00)
	.dwattr DW$41, DW_AT_begin_file("wio.c")
	.dwattr DW$41, DW_AT_begin_line(0x13b)
	.dwattr DW$41, DW_AT_begin_column(0x06)
	.dwattr DW$41, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$41, DW_AT_skeletal(0x01)
	.dwpsn	"wio.c",316,1

;***************************************************************
;* FNAME: _SetWIOAlarmMask              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SetWIOAlarmMask:
;* AL    assigned to _val
DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$42, DW_AT_type(*DW$T$10)
	.dwattr DW$42, DW_AT_location[DW_OP_reg0]
        MOVB      AH,#0
        CMPB      AL,#1                 ; |317| 
        BF        L21,NEQ               ; |317| 
        ; branchcc occurs ; |317| 
        MOVB      AH,#1                 ; |317| 
L21:    
        MOVW      DP,#_wiosettings+1
        MOV       @_wiosettings+1,AH    ; |317| 
        LCR       #_WriteWIOSettingstoNVMEM ; |317| 
        ; call occurs [#_WriteWIOSettingstoNVMEM] ; |317| 
	.dwpsn	"wio.c",320,1
        LRETR
        ; return occurs
	.dwattr DW$41, DW_AT_end_file("wio.c")
	.dwattr DW$41, DW_AT_end_line(0x140)
	.dwattr DW$41, DW_AT_end_column(0x01)
	.dwendtag DW$41

	.sect	".text"
	.global	_WIOChecks

DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("WIOChecks"), DW_AT_symbol_name("_WIOChecks")
	.dwattr DW$43, DW_AT_low_pc(_WIOChecks)
	.dwattr DW$43, DW_AT_high_pc(0x00)
	.dwattr DW$43, DW_AT_begin_file("wio.c")
	.dwattr DW$43, DW_AT_begin_line(0x143)
	.dwattr DW$43, DW_AT_begin_column(0x06)
	.dwattr DW$43, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$43, DW_AT_skeletal(0x01)
	.dwpsn	"wio.c",324,1

;***************************************************************
;* FNAME: _WIOChecks                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WIOChecks:
        LCR       #_WIOAnalog           ; |325| 
        ; call occurs [#_WIOAnalog] ; |325| 
        LCR       #_WIOAlarm            ; |326| 
        ; call occurs [#_WIOAlarm] ; |326| 
        LCR       #_WIOUpperAlarm       ; |327| 
        ; call occurs [#_WIOUpperAlarm] ; |327| 
        LCR       #_WIOCommsLost        ; |328| 
        ; call occurs [#_WIOCommsLost] ; |328| 
	.dwpsn	"wio.c",329,1
        LRETR
        ; return occurs
	.dwattr DW$43, DW_AT_end_file("wio.c")
	.dwattr DW$43, DW_AT_end_line(0x149)
	.dwattr DW$43, DW_AT_end_column(0x01)
	.dwendtag DW$43

	.sect	".text"
	.global	_WIOUpperAlarm

DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("WIOUpperAlarm"), DW_AT_symbol_name("_WIOUpperAlarm")
	.dwattr DW$44, DW_AT_low_pc(_WIOUpperAlarm)
	.dwattr DW$44, DW_AT_high_pc(0x00)
	.dwattr DW$44, DW_AT_begin_file("wio.c")
	.dwattr DW$44, DW_AT_begin_line(0x14d)
	.dwattr DW$44, DW_AT_begin_column(0x06)
	.dwattr DW$44, DW_AT_frame_base[DW_OP_breg20 -32]
	.dwattr DW$44, DW_AT_skeletal(0x01)
	.dwpsn	"wio.c",334,1

;***************************************************************
;* FNAME: _WIOUpperAlarm                FR SIZE:  30           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 30 Auto,  0 SOE     *
;***************************************************************

_WIOUpperAlarm:
        ADDB      SP,#30
        MOVZ      AR4,SP                ; |341| 
        MOVB      ACC,#30
        MOVB      XAR5,#0
        SUBB      XAR4,#30              ; |341| 
        LCR       #_memset              ; |341| 
        ; call occurs [#_memset] ; |341| 
        LCR       #_WIOEnabled          ; |343| 
        ; call occurs [#_WIOEnabled] ; |343| 
        CMPB      AL,#0                 ; |343| 
        BF        L23,EQ                ; |343| 
        ; branchcc occurs ; |343| 
        MOVW      DP,#_wiosettings+1
        MOV       AL,@_wiosettings+1    ; |343| 
        BF        L23,NEQ               ; |343| 
        ; branchcc occurs ; |343| 
        MOVW      DP,#_waterinoil+11
        TBIT      @_waterinoil+11,#5    ; |343| 
        BF        L23,TC                ; |343| 
        ; branchcc occurs ; |343| 
        LCR       #_WIOActivityWord     ; |346| 
        ; call occurs [#_WIOActivityWord] ; |346| 
        CMP       AL,#-32767            ; |346| 
        BF        L26,EQ                ; |346| 
        ; branchcc occurs ; |346| 
        CMP       AL,#-32765            ; |346| 
        BF        L26,EQ                ; |346| 
        ; branchcc occurs ; |346| 
        CMP       AL,#-32764            ; |346| 
        BF        L26,EQ                ; |346| 
        ; branchcc occurs ; |346| 
        MOVW      DP,#_wiosettings+2
        MOV       AH,@_wiosettings+2    ; |353| 
        CMP       AH,AL                 ; |353| 
        BF        L22,LOS               ; |353| 
        ; branchcc occurs ; |353| 
        MOVW      DP,#_wiosettings+4
        SUB       AH,@_wiosettings+4    ; |366| 
        CMP       AH,AL                 ; |366| 
        BF        L23,GT                ; |366| 
        ; branchcc occurs ; |366| 
        BF        L26,UNC               ; |366| 
        ; branch occurs ; |366| 
L22:    
        MOVW      DP,#_waterinoil+11
        OR        @_waterinoil+11,#0x0001 ; |355| 
        MOVW      DP,#_waterinoil+11
        TBIT      @_waterinoil+11,#1    ; |356| 
        BF        L26,TC                ; |356| 
        ; branchcc occurs ; |356| 
        MOV       AL,#299               ; |359| 
        LCR       #_SetAlarmEvent       ; |359| 
        ; call occurs [#_SetAlarmEvent] ; |359| 
        MOVW      DP,#_waterinoil+11
        OR        @_waterinoil+11,#0x0002 ; |360| 
        BF        L25,UNC               ; |363| 
        ; branch occurs ; |363| 
L23:    
        MOV       AL,#299               ; |382| 
        LCR       #_CheckAlarmBitSet    ; |382| 
        ; call occurs [#_CheckAlarmBitSet] ; |382| 
        CMPB      AL,#1                 ; |382| 
        BF        L24,EQ                ; |382| 
        ; branchcc occurs ; |382| 
        MOVW      DP,#_waterinoil+11
        TBIT      @_waterinoil+11,#1    ; |382| 
        BF        L26,NTC               ; |382| 
        ; branchcc occurs ; |382| 
L24:    
        MOV       AL,#299               ; |384| 
        LCR       #_ClearAlarmEvent     ; |384| 
        ; call occurs [#_ClearAlarmEvent] ; |384| 
        MOVW      DP,#_waterinoil+11
        AND       @_waterinoil+11,#0xfffc ; |385| 
L25:    
        MOVB      AL,#0
        MOV       AH,#28850             ; |387| 
        MOVB      XAR5,#1               ; |387| 
        MOVL      XAR4,#_waterinoil+11  ; |387| 
        LCR       #_WriteNVMemory       ; |387| 
        ; call occurs [#_WriteNVMemory] ; |387| 
L26:    
        SUBB      SP,#30
	.dwpsn	"wio.c",390,1
        LRETR
        ; return occurs
	.dwattr DW$44, DW_AT_end_file("wio.c")
	.dwattr DW$44, DW_AT_end_line(0x186)
	.dwattr DW$44, DW_AT_end_column(0x01)
	.dwendtag DW$44

	.sect	".text"
	.global	_WIOAlarm

DW$45	.dwtag  DW_TAG_subprogram, DW_AT_name("WIOAlarm"), DW_AT_symbol_name("_WIOAlarm")
	.dwattr DW$45, DW_AT_low_pc(_WIOAlarm)
	.dwattr DW$45, DW_AT_high_pc(0x00)
	.dwattr DW$45, DW_AT_begin_file("wio.c")
	.dwattr DW$45, DW_AT_begin_line(0x18b)
	.dwattr DW$45, DW_AT_begin_column(0x06)
	.dwattr DW$45, DW_AT_frame_base[DW_OP_breg20 -32]
	.dwattr DW$45, DW_AT_skeletal(0x01)
	.dwpsn	"wio.c",396,1

;***************************************************************
;* FNAME: _WIOAlarm                     FR SIZE:  30           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 30 Auto,  0 SOE     *
;***************************************************************

_WIOAlarm:
        ADDB      SP,#30
        MOVZ      AR4,SP                ; |403| 
        MOVB      ACC,#30
        MOVB      XAR5,#0
        SUBB      XAR4,#30              ; |403| 
        LCR       #_memset              ; |403| 
        ; call occurs [#_memset] ; |403| 
        LCR       #_WIOEnabled          ; |406| 
        ; call occurs [#_WIOEnabled] ; |406| 
        CMPB      AL,#0                 ; |406| 
        BF        L28,EQ                ; |406| 
        ; branchcc occurs ; |406| 
        MOVW      DP,#_wiosettings+1
        MOV       AL,@_wiosettings+1    ; |406| 
        BF        L28,NEQ               ; |406| 
        ; branchcc occurs ; |406| 
        MOVW      DP,#_waterinoil+11
        TBIT      @_waterinoil+11,#5    ; |406| 
        BF        L28,TC                ; |406| 
        ; branchcc occurs ; |406| 
        LCR       #_WIOActivityWord     ; |409| 
        ; call occurs [#_WIOActivityWord] ; |409| 
        CMP       AL,#-32767            ; |409| 
        BF        L31,EQ                ; |409| 
        ; branchcc occurs ; |409| 
        CMP       AL,#-32765            ; |409| 
        BF        L31,EQ                ; |409| 
        ; branchcc occurs ; |409| 
        CMP       AL,#-32764            ; |409| 
        BF        L31,EQ                ; |409| 
        ; branchcc occurs ; |409| 
        MOVW      DP,#_wiosettings+3
        MOV       AH,@_wiosettings+3    ; |416| 
        CMP       AH,AL                 ; |416| 
        BF        L27,LOS               ; |416| 
        ; branchcc occurs ; |416| 
        MOVW      DP,#_wiosettings+4
        SUB       AH,@_wiosettings+4    ; |429| 
        CMP       AH,AL                 ; |429| 
        BF        L31,LEQ               ; |429| 
        ; branchcc occurs ; |429| 
        MOVW      DP,#_waterinoil+11
        TBIT      @_waterinoil+11,#3    ; |429| 
        BF        L29,TC                ; |429| 
        ; branchcc occurs ; |429| 
        BF        L31,UNC               ; |429| 
        ; branch occurs ; |429| 
L27:    
        MOVW      DP,#_waterinoil+11
        OR        @_waterinoil+11,#0x0004 ; |418| 
        MOVW      DP,#_waterinoil+11
        TBIT      @_waterinoil+11,#3    ; |419| 
        BF        L31,TC                ; |419| 
        ; branchcc occurs ; |419| 
        MOV       AL,#266               ; |422| 
        LCR       #_SetAlarmEvent       ; |422| 
        ; call occurs [#_SetAlarmEvent] ; |422| 
        MOVW      DP,#_waterinoil+11
        OR        @_waterinoil+11,#0x0008 ; |423| 
        BF        L30,UNC               ; |426| 
        ; branch occurs ; |426| 
L28:    
        MOV       AL,#266               ; |443| 
        LCR       #_CheckAlarmBitSet    ; |443| 
        ; call occurs [#_CheckAlarmBitSet] ; |443| 
        CMPB      AL,#1                 ; |443| 
        BF        L29,EQ                ; |443| 
        ; branchcc occurs ; |443| 
        MOVW      DP,#_waterinoil+11
        TBIT      @_waterinoil+11,#3    ; |443| 
        BF        L31,NTC               ; |443| 
        ; branchcc occurs ; |443| 
L29:    
        MOV       AL,#266               ; |445| 
        LCR       #_ClearAlarmEvent     ; |445| 
        ; call occurs [#_ClearAlarmEvent] ; |445| 
        MOVW      DP,#_waterinoil+11
        AND       @_waterinoil+11,#0xfff3 ; |446| 
L30:    
        MOVB      AL,#0
        MOV       AH,#28850             ; |448| 
        MOVB      XAR5,#1               ; |448| 
        MOVL      XAR4,#_waterinoil+11  ; |448| 
        LCR       #_WriteNVMemory       ; |448| 
        ; call occurs [#_WriteNVMemory] ; |448| 
L31:    
        SUBB      SP,#30
	.dwpsn	"wio.c",451,1
        LRETR
        ; return occurs
	.dwattr DW$45, DW_AT_end_file("wio.c")
	.dwattr DW$45, DW_AT_end_line(0x1c3)
	.dwattr DW$45, DW_AT_end_column(0x01)
	.dwendtag DW$45

	.sect	".text"
	.global	_WIOCommsLost

DW$46	.dwtag  DW_TAG_subprogram, DW_AT_name("WIOCommsLost"), DW_AT_symbol_name("_WIOCommsLost")
	.dwattr DW$46, DW_AT_low_pc(_WIOCommsLost)
	.dwattr DW$46, DW_AT_high_pc(0x00)
	.dwattr DW$46, DW_AT_begin_file("wio.c")
	.dwattr DW$46, DW_AT_begin_line(0x1c6)
	.dwattr DW$46, DW_AT_begin_column(0x06)
	.dwattr DW$46, DW_AT_frame_base[DW_OP_breg20 -32]
	.dwattr DW$46, DW_AT_skeletal(0x01)
	.dwpsn	"wio.c",455,1

;***************************************************************
;* FNAME: _WIOCommsLost                 FR SIZE:  30           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 30 Auto,  0 SOE     *
;***************************************************************

_WIOCommsLost:
        ADDB      SP,#30
        MOVZ      AR4,SP                ; |458| 
        MOVB      ACC,#30
        MOVB      XAR5,#0
        SUBB      XAR4,#30              ; |458| 
        LCR       #_memset              ; |458| 
        ; call occurs [#_memset] ; |458| 
        LCR       #_WIOEnabled          ; |460| 
        ; call occurs [#_WIOEnabled] ; |460| 
        CMPB      AL,#0                 ; |460| 
        BF        L35,EQ                ; |460| 
        ; branchcc occurs ; |460| 
        MOVW      DP,#_wiosettings+1
        MOV       AL,@_wiosettings+1    ; |460| 
        BF        L35,NEQ               ; |460| 
        ; branchcc occurs ; |460| 
        MOVW      DP,#_wiolost
        MOV       AL,@_wiolost          ; |462| 
        CMPB      AL,#1                 ; |462| 
        BF        L33,EQ                ; |462| 
        ; branchcc occurs ; |462| 
        CMPB      AL,#0                 ; |482| 
        BF        L36,NEQ               ; |482| 
        ; branchcc occurs ; |482| 
        MOV       AL,#267               ; |484| 
        LCR       #_CheckAlarmBitSet    ; |484| 
        ; call occurs [#_CheckAlarmBitSet] ; |484| 
        CMPB      AL,#1                 ; |484| 
        BF        L32,EQ                ; |484| 
        ; branchcc occurs ; |484| 
        MOVW      DP,#_waterinoil+11
        TBIT      @_waterinoil+11,#5    ; |484| 
        BF        L36,NTC               ; |484| 
        ; branchcc occurs ; |484| 
L32:    
        MOV       AL,#267               ; |488| 
        LCR       #_ClearAlarmEvent     ; |488| 
        ; call occurs [#_ClearAlarmEvent] ; |488| 
        MOVW      DP,#_waterinoil+11
        AND       @_waterinoil+11,#0xffcf ; |489| 
        BF        L34,UNC               ; |491| 
        ; branch occurs ; |491| 
L33:    
        MOVW      DP,#_waterinoil+11
        OR        @_waterinoil+11,#0x0010 ; |464| 
        MOVW      DP,#_waterinoil+11
        TBIT      @_waterinoil+11,#5    ; |465| 
        BF        L36,TC                ; |465| 
        ; branchcc occurs ; |465| 
        MOV       AL,#267               ; |468| 
        LCR       #_SetAlarmEvent       ; |468| 
        ; call occurs [#_SetAlarmEvent] ; |468| 
        MOVW      DP,#_waterinoil+4
        MOV       AH,#0
        MOV       AL,#0
        MOVL      @_waterinoil+4,ACC    ; |470| 
        MOVW      DP,#_waterinoil+2
        MOV       AH,#0
        MOV       AL,#0
        MOVL      @_waterinoil+2,ACC    ; |471| 
        MOVW      DP,#_waterinoil+6
        MOV       AH,#0
        MOV       AL,#0
        MOVL      @_waterinoil+6,ACC    ; |472| 
        MOVW      DP,#_waterinoil+9
        MOV       @_waterinoil+9,#-32767 ; |474| 
        MOVW      DP,#_waterinoil+8
        MOV       @_waterinoil+8,#-32767 ; |475| 
        MOVW      DP,#_waterinoil+10
        MOV       @_waterinoil+10,#-32767 ; |476| 
        MOVW      DP,#_waterinoil+11
        OR        @_waterinoil+11,#0x0020 ; |477| 
L34:    
        MOVB      AL,#0
        MOV       AH,#28850             ; |479| 
        MOVB      XAR5,#1               ; |479| 
        MOVL      XAR4,#_waterinoil+11  ; |479| 
        LCR       #_WriteNVMemory       ; |479| 
        ; call occurs [#_WriteNVMemory] ; |479| 
        BF        L36,UNC               ; |479| 
        ; branch occurs ; |479| 
L35:    
        MOVW      DP,#_waterinoil+11
        TBIT      @_waterinoil+11,#5    ; |495| 
        BF        L36,NTC               ; |495| 
        ; branchcc occurs ; |495| 
        LCR       #_WIOCommsOORClearDown ; |497| 
        ; call occurs [#_WIOCommsOORClearDown] ; |497| 
L36:    
        SUBB      SP,#30
	.dwpsn	"wio.c",499,1
        LRETR
        ; return occurs
	.dwattr DW$46, DW_AT_end_file("wio.c")
	.dwattr DW$46, DW_AT_end_line(0x1f3)
	.dwattr DW$46, DW_AT_end_column(0x01)
	.dwendtag DW$46

	.sect	".text"
	.global	_WriteWIOSettingstoNVMEM

DW$47	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteWIOSettingstoNVMEM"), DW_AT_symbol_name("_WriteWIOSettingstoNVMEM")
	.dwattr DW$47, DW_AT_low_pc(_WriteWIOSettingstoNVMEM)
	.dwattr DW$47, DW_AT_high_pc(0x00)
	.dwattr DW$47, DW_AT_begin_file("wio.c")
	.dwattr DW$47, DW_AT_begin_line(0x1f6)
	.dwattr DW$47, DW_AT_begin_column(0x06)
	.dwattr DW$47, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$47, DW_AT_skeletal(0x01)
	.dwpsn	"wio.c",503,1

;***************************************************************
;* FNAME: _WriteWIOSettingstoNVMEM      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WriteWIOSettingstoNVMEM:
        MOVB      AL,#0
        MOVB      XAR5,#10              ; |513| 
        MOVL      XAR4,#_wiosettings    ; |513| 
        MOV       AH,#28272             ; |513| 
        LCR       #_WriteNVMemory       ; |513| 
        ; call occurs [#_WriteNVMemory] ; |513| 
        MOVW      DP,#_settings+10
        MOV       @_settings+10,#1      ; |515| 
	.dwpsn	"wio.c",516,1
        LRETR
        ; return occurs
	.dwattr DW$47, DW_AT_end_file("wio.c")
	.dwattr DW$47, DW_AT_end_line(0x204)
	.dwattr DW$47, DW_AT_end_column(0x01)
	.dwendtag DW$47

	.sect	".text"
	.global	_ReadWIOSettingsfromNVMEM

DW$48	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadWIOSettingsfromNVMEM"), DW_AT_symbol_name("_ReadWIOSettingsfromNVMEM")
	.dwattr DW$48, DW_AT_low_pc(_ReadWIOSettingsfromNVMEM)
	.dwattr DW$48, DW_AT_high_pc(0x00)
	.dwattr DW$48, DW_AT_begin_file("wio.c")
	.dwattr DW$48, DW_AT_begin_line(0x208)
	.dwattr DW$48, DW_AT_begin_column(0x06)
	.dwattr DW$48, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$48, DW_AT_skeletal(0x01)
	.dwpsn	"wio.c",521,1

;***************************************************************
;* FNAME: _ReadWIOSettingsfromNVMEM     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadWIOSettingsfromNVMEM:
        MOVB      AL,#0
        MOVB      XAR5,#10              ; |532| 
        MOVL      XAR4,#_wiosettings    ; |532| 
        MOV       AH,#28272             ; |532| 
        LCR       #_ReadNVMemory        ; |532| 
        ; call occurs [#_ReadNVMemory] ; |532| 
	.dwpsn	"wio.c",533,1
        LRETR
        ; return occurs
	.dwattr DW$48, DW_AT_end_file("wio.c")
	.dwattr DW$48, DW_AT_end_line(0x215)
	.dwattr DW$48, DW_AT_end_column(0x01)
	.dwendtag DW$48

;***************************************************************
;* FAR STRINGS                                                 *
;***************************************************************
	.sect	".econst"
	.align	2
FSL1:	.string	"WIO: BACK IN 4-20mA Range",10,0
	.align	2
FSL2:	.string	"WIO: OOR LOW",10,0
	.align	2
FSL3:	.string	"WIO: COMMS & OOR Clear",10,0
;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_memset
	.global	_WriteNVMemory
	.global	_ReadNVMemory
	.global	_SetAlarmEvent
	.global	_ClearAlarmEvent
	.global	_CheckAlarmBitSet
	.global	_DebugStringOut
	.global	_settings
	.global	_timers
	.global	_wiolost
	.global	_inputs
	.global	I$$TOFS
	.global	FS$$CMP
	.global	FS$$DIV
	.global	FS$$MPY
	.global	FS$$SUB
	.global	FS$$TOI

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x16)

DW$T$40	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$40, DW_AT_language(DW_LANG_C)
DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$50	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$39)
	.dwendtag DW$T$40


DW$T$43	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$43, DW_AT_language(DW_LANG_C)
DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$54	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$42)
DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$43


DW$T$45	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$45, DW_AT_language(DW_LANG_C)
DW$56	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$45


DW$T$47	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$47, DW_AT_language(DW_LANG_C)

DW$T$49	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$49, DW_AT_language(DW_LANG_C)
DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$49

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)

DW$T$51	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$51, DW_AT_language(DW_LANG_C)
DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$51


DW$T$53	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$53, DW_AT_language(DW_LANG_C)

DW$T$55	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$55, DW_AT_language(DW_LANG_C)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)
DW$T$42	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$42, DW_AT_address_class(0x16)
DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$39, DW_AT_language(DW_LANG_C)
DW$T$63	.dwtag  DW_TAG_typedef, DW_AT_name("wiosettingsstruct"), DW_AT_type(*DW$T$19)
	.dwattr DW$T$63, DW_AT_language(DW_LANG_C)

DW$T$65	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$64)
	.dwattr DW$T$65, DW_AT_language(DW_LANG_C)
DW$T$68	.dwtag  DW_TAG_typedef, DW_AT_name("waterinoilstruct"), DW_AT_type(*DW$T$22)
	.dwattr DW$T$68, DW_AT_language(DW_LANG_C)

DW$T$70	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$69)
	.dwattr DW$T$70, DW_AT_language(DW_LANG_C)
DW$T$73	.dwtag  DW_TAG_typedef, DW_AT_name("settingsstruct"), DW_AT_type(*DW$T$24)
	.dwattr DW$T$73, DW_AT_language(DW_LANG_C)
DW$59	.dwtag  DW_TAG_far_type
	.dwattr DW$59, DW_AT_type(*DW$T$74)
DW$T$75	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$75, DW_AT_type(*DW$59)
DW$60	.dwtag  DW_TAG_far_type
	.dwattr DW$60, DW_AT_type(*DW$T$77)
DW$T$78	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$78, DW_AT_type(*DW$60)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)

DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$19, DW_AT_name("tag_wiosettingsstruct")
	.dwattr DW$T$19, DW_AT_byte_size(0x0a)
DW$61	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$61, DW_AT_name("enabled"), DW_AT_symbol_name("_enabled")
	.dwattr DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$61, DW_AT_accessibility(DW_ACCESS_public)
DW$62	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$62, DW_AT_name("alarmmask"), DW_AT_symbol_name("_alarmmask")
	.dwattr DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$62, DW_AT_accessibility(DW_ACCESS_public)
DW$63	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$63, DW_AT_name("alarmupperlevel"), DW_AT_symbol_name("_alarmupperlevel")
	.dwattr DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$63, DW_AT_accessibility(DW_ACCESS_public)
DW$64	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$64, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$64, DW_AT_accessibility(DW_ACCESS_public)
DW$65	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$65, DW_AT_name("hysteresis"), DW_AT_symbol_name("_hysteresis")
	.dwattr DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$65, DW_AT_accessibility(DW_ACCESS_public)
DW$66	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$66, DW_AT_name("scaledmin"), DW_AT_symbol_name("_scaledmin")
	.dwattr DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$66, DW_AT_accessibility(DW_ACCESS_public)
DW$67	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$67, DW_AT_name("scaledmax"), DW_AT_symbol_name("_scaledmax")
	.dwattr DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$67, DW_AT_accessibility(DW_ACCESS_public)
DW$68	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$68, DW_AT_name("units"), DW_AT_symbol_name("_units")
	.dwattr DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$68, DW_AT_accessibility(DW_ACCESS_public)
DW$69	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$69, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$69, DW_AT_accessibility(DW_ACCESS_public)
DW$70	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$70, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$70, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$19

DW$T$64	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$63)
	.dwattr DW$T$64, DW_AT_address_class(0x16)

DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_name("tag_waterinoilstruct")
	.dwattr DW$T$22, DW_AT_byte_size(0x0c)
DW$71	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$71, DW_AT_name("netadd"), DW_AT_symbol_name("_netadd")
	.dwattr DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$71, DW_AT_accessibility(DW_ACCESS_public)
DW$72	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$72, DW_AT_name("temperature"), DW_AT_symbol_name("_temperature")
	.dwattr DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$72, DW_AT_accessibility(DW_ACCESS_public)
DW$73	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$73, DW_AT_name("activity"), DW_AT_symbol_name("_activity")
	.dwattr DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$73, DW_AT_accessibility(DW_ACCESS_public)
DW$74	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$74, DW_AT_name("content"), DW_AT_symbol_name("_content")
	.dwattr DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$74, DW_AT_accessibility(DW_ACCESS_public)
DW$75	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$75, DW_AT_name("temperature_int"), DW_AT_symbol_name("_temperature_int")
	.dwattr DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$75, DW_AT_accessibility(DW_ACCESS_public)
DW$76	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$76, DW_AT_name("activity_int"), DW_AT_symbol_name("_activity_int")
	.dwattr DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$76, DW_AT_accessibility(DW_ACCESS_public)
DW$77	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$77, DW_AT_name("content_int"), DW_AT_symbol_name("_content_int")
	.dwattr DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$77, DW_AT_accessibility(DW_ACCESS_public)
DW$78	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$78, DW_AT_name("wioalarms"), DW_AT_symbol_name("_wioalarms")
	.dwattr DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$78, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22

DW$T$69	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$68)
	.dwattr DW$T$69, DW_AT_address_class(0x16)

DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_name("tag_settingsstruct")
	.dwattr DW$T$24, DW_AT_byte_size(0x24)
DW$79	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$79, DW_AT_name("watchdog"), DW_AT_symbol_name("_watchdog")
	.dwattr DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$79, DW_AT_accessibility(DW_ACCESS_public)
DW$80	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$80, DW_AT_name("ledflashflag"), DW_AT_symbol_name("_ledflashflag")
	.dwattr DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$80, DW_AT_accessibility(DW_ACCESS_public)
DW$81	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$81, DW_AT_name("updatesafe"), DW_AT_symbol_name("_updatesafe")
	.dwattr DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$81, DW_AT_accessibility(DW_ACCESS_public)
DW$82	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$82, DW_AT_name("tableconfigtype"), DW_AT_symbol_name("_tableconfigtype")
	.dwattr DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$82, DW_AT_accessibility(DW_ACCESS_public)
DW$83	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$83, DW_AT_name("caltableconfigtype"), DW_AT_symbol_name("_caltableconfigtype")
	.dwattr DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$83, DW_AT_accessibility(DW_ACCESS_public)
DW$84	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$84, DW_AT_name("eventmsgid"), DW_AT_symbol_name("_eventmsgid")
	.dwattr DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$84, DW_AT_accessibility(DW_ACCESS_public)
DW$85	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$85, DW_AT_name("configoperationcomplete"), DW_AT_symbol_name("_configoperationcomplete")
	.dwattr DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$85, DW_AT_accessibility(DW_ACCESS_public)
DW$86	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$86, DW_AT_name("sdcarderr"), DW_AT_symbol_name("_sdcarderr")
	.dwattr DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$86, DW_AT_accessibility(DW_ACCESS_public)
DW$87	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$87, DW_AT_name("sderase"), DW_AT_symbol_name("_sderase")
	.dwattr DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$87, DW_AT_accessibility(DW_ACCESS_public)
DW$88	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$88, DW_AT_name("sdreinit"), DW_AT_symbol_name("_sdreinit")
	.dwattr DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$88, DW_AT_accessibility(DW_ACCESS_public)
DW$89	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$89, DW_AT_name("sdcardupdate"), DW_AT_symbol_name("_sdcardupdate")
	.dwattr DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$89, DW_AT_accessibility(DW_ACCESS_public)
DW$90	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$90, DW_AT_name("cardreadflag"), DW_AT_symbol_name("_cardreadflag")
	.dwattr DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$90, DW_AT_accessibility(DW_ACCESS_public)
DW$91	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$91, DW_AT_name("ignore"), DW_AT_symbol_name("_ignore")
	.dwattr DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$91, DW_AT_accessibility(DW_ACCESS_public)
DW$92	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$92, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$92, DW_AT_accessibility(DW_ACCESS_public)
DW$93	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$93, DW_AT_name("spiinuse"), DW_AT_symbol_name("_spiinuse")
	.dwattr DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$93, DW_AT_accessibility(DW_ACCESS_public)
DW$94	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$94, DW_AT_name("dcpeakhold"), DW_AT_symbol_name("_dcpeakhold")
	.dwattr DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$94, DW_AT_accessibility(DW_ACCESS_public)
DW$95	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$95, DW_AT_name("dcpause"), DW_AT_symbol_name("_dcpause")
	.dwattr DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$95, DW_AT_accessibility(DW_ACCESS_public)
DW$96	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$96, DW_AT_name("mastermode"), DW_AT_symbol_name("_mastermode")
	.dwattr DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$96, DW_AT_accessibility(DW_ACCESS_public)
DW$97	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$97, DW_AT_name("updatescaling"), DW_AT_symbol_name("_updatescaling")
	.dwattr DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$97, DW_AT_accessibility(DW_ACCESS_public)
DW$98	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$98, DW_AT_name("forwardasternflag"), DW_AT_symbol_name("_forwardasternflag")
	.dwattr DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$98, DW_AT_accessibility(DW_ACCESS_public)
DW$99	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$99, DW_AT_name("initprogress"), DW_AT_symbol_name("_initprogress")
	.dwattr DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$99, DW_AT_accessibility(DW_ACCESS_public)
DW$100	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$100, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$100, DW_AT_accessibility(DW_ACCESS_public)
DW$101	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$101, DW_AT_name("slowdowncounter"), DW_AT_symbol_name("_slowdowncounter")
	.dwattr DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$101, DW_AT_accessibility(DW_ACCESS_public)
DW$102	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$102, DW_AT_name("slowdowncondition"), DW_AT_symbol_name("_slowdowncondition")
	.dwattr DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$102, DW_AT_accessibility(DW_ACCESS_public)
DW$103	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$103, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$103, DW_AT_accessibility(DW_ACCESS_public)
DW$104	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$104, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$104, DW_AT_accessibility(DW_ACCESS_public)
DW$105	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$105, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$105, DW_AT_accessibility(DW_ACCESS_public)
DW$106	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$106, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$106, DW_AT_accessibility(DW_ACCESS_public)
DW$107	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$107, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$107, DW_AT_accessibility(DW_ACCESS_public)
DW$108	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$108, DW_AT_name("temperaturealarm"), DW_AT_symbol_name("_temperaturealarm")
	.dwattr DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$108, DW_AT_accessibility(DW_ACCESS_public)
DW$109	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$109, DW_AT_name("temperatureslowdown"), DW_AT_symbol_name("_temperatureslowdown")
	.dwattr DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$109, DW_AT_accessibility(DW_ACCESS_public)
DW$110	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$110, DW_AT_name("anadebug"), DW_AT_symbol_name("_anadebug")
	.dwattr DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$110, DW_AT_accessibility(DW_ACCESS_public)
DW$111	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$111, DW_AT_name("serialdebug"), DW_AT_symbol_name("_serialdebug")
	.dwattr DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr DW$111, DW_AT_accessibility(DW_ACCESS_public)
DW$112	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$112, DW_AT_name("timerrunning"), DW_AT_symbol_name("_timerrunning")
	.dwattr DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$112, DW_AT_accessibility(DW_ACCESS_public)
DW$113	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$113, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$113, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24

DW$T$74	.dwtag  DW_TAG_typedef, DW_AT_name("timersstruct"), DW_AT_type(*DW$T$26)
	.dwattr DW$T$74, DW_AT_language(DW_LANG_C)
DW$T$77	.dwtag  DW_TAG_typedef, DW_AT_name("inputstruct"), DW_AT_type(*DW$T$38)
	.dwattr DW$T$77, DW_AT_language(DW_LANG_C)
DW$T$16	.dwtag  DW_TAG_base_type, DW_AT_name("float")
	.dwattr DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$16, DW_AT_byte_size(0x02)
DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("wioalarmstruct"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)

DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$23, DW_AT_byte_size(0x02)
DW$114	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$114, DW_AT_name("enb"), DW_AT_symbol_name("_enb")
	.dwattr DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$114, DW_AT_accessibility(DW_ACCESS_public)
DW$115	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$115, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$115, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_name("tag_timers")
	.dwattr DW$T$26, DW_AT_byte_size(0x4c)
DW$116	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$116, DW_AT_name("update"), DW_AT_symbol_name("_update")
	.dwattr DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$116, DW_AT_accessibility(DW_ACCESS_public)
DW$117	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$117, DW_AT_name("general"), DW_AT_symbol_name("_general")
	.dwattr DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$117, DW_AT_accessibility(DW_ACCESS_public)
DW$118	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$118, DW_AT_name("rxcharTimeout"), DW_AT_symbol_name("_rxcharTimeout")
	.dwattr DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$118, DW_AT_accessibility(DW_ACCESS_public)
DW$119	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$119, DW_AT_name("wiorxtimeout"), DW_AT_symbol_name("_wiorxtimeout")
	.dwattr DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$119, DW_AT_accessibility(DW_ACCESS_public)
DW$120	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$120, DW_AT_name("wiomasterrxtimeout"), DW_AT_symbol_name("_wiomasterrxtimeout")
	.dwattr DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$120, DW_AT_accessibility(DW_ACCESS_public)
DW$121	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$121, DW_AT_name("masterrxtimeout"), DW_AT_symbol_name("_masterrxtimeout")
	.dwattr DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$121, DW_AT_accessibility(DW_ACCESS_public)
DW$122	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$122, DW_AT_name("slaverxtimeout"), DW_AT_symbol_name("_slaverxtimeout")
	.dwattr DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$122, DW_AT_accessibility(DW_ACCESS_public)
DW$123	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$123, DW_AT_name("sectick"), DW_AT_symbol_name("_sectick")
	.dwattr DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$123, DW_AT_accessibility(DW_ACCESS_public)
DW$124	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$124, DW_AT_name("ledflash"), DW_AT_symbol_name("_ledflash")
	.dwattr DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$124, DW_AT_accessibility(DW_ACCESS_public)
DW$125	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$125, DW_AT_name("prtsettle"), DW_AT_symbol_name("_prtsettle")
	.dwattr DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$125, DW_AT_accessibility(DW_ACCESS_public)
DW$126	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$126, DW_AT_name("chantimeout"), DW_AT_symbol_name("_chantimeout")
	.dwattr DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$126, DW_AT_accessibility(DW_ACCESS_public)
DW$127	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$127, DW_AT_name("chanwait"), DW_AT_symbol_name("_chanwait")
	.dwattr DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$127, DW_AT_accessibility(DW_ACCESS_public)
DW$128	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$128, DW_AT_name("pcrxtimeout"), DW_AT_symbol_name("_pcrxtimeout")
	.dwattr DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$128, DW_AT_accessibility(DW_ACCESS_public)
DW$129	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$129, DW_AT_name("pctxtimeout"), DW_AT_symbol_name("_pctxtimeout")
	.dwattr DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$129, DW_AT_accessibility(DW_ACCESS_public)
DW$130	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$130, DW_AT_name("spistatus"), DW_AT_symbol_name("_spistatus")
	.dwattr DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$130, DW_AT_accessibility(DW_ACCESS_public)
DW$131	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$131, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$131, DW_AT_accessibility(DW_ACCESS_public)
DW$132	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$132, DW_AT_name("slaverqst"), DW_AT_symbol_name("_slaverqst")
	.dwattr DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$132, DW_AT_accessibility(DW_ACCESS_public)
DW$133	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$133, DW_AT_name("mastermodebutton"), DW_AT_symbol_name("_mastermodebutton")
	.dwattr DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$133, DW_AT_accessibility(DW_ACCESS_public)
DW$134	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$134, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$134, DW_AT_accessibility(DW_ACCESS_public)
DW$135	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$135, DW_AT_name("calibrate"), DW_AT_symbol_name("_calibrate")
	.dwattr DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$135, DW_AT_accessibility(DW_ACCESS_public)
DW$136	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$136, DW_AT_name("calibrate2"), DW_AT_symbol_name("_calibrate2")
	.dwattr DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$136, DW_AT_accessibility(DW_ACCESS_public)
DW$137	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$137, DW_AT_name("alarmreflash"), DW_AT_symbol_name("_alarmreflash")
	.dwattr DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$137, DW_AT_accessibility(DW_ACCESS_public)
DW$138	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$138, DW_AT_name("slowdownreflash"), DW_AT_symbol_name("_slowdownreflash")
	.dwattr DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr DW$138, DW_AT_accessibility(DW_ACCESS_public)
DW$139	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$139, DW_AT_name("wiorqst"), DW_AT_symbol_name("_wiorqst")
	.dwattr DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$139, DW_AT_accessibility(DW_ACCESS_public)
DW$140	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$140, DW_AT_name("rpmtimeout"), DW_AT_symbol_name("_rpmtimeout")
	.dwattr DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr DW$140, DW_AT_accessibility(DW_ACCESS_public)
DW$141	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$141, DW_AT_name("analogoor"), DW_AT_symbol_name("_analogoor")
	.dwattr DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$141, DW_AT_accessibility(DW_ACCESS_public)
DW$142	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$142, DW_AT_name("motioncal"), DW_AT_symbol_name("_motioncal")
	.dwattr DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr DW$142, DW_AT_accessibility(DW_ACCESS_public)
DW$143	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$143, DW_AT_name("framcheck"), DW_AT_symbol_name("_framcheck")
	.dwattr DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$143, DW_AT_accessibility(DW_ACCESS_public)
DW$144	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$144, DW_AT_name("pcmodbus"), DW_AT_symbol_name("_pcmodbus")
	.dwattr DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr DW$144, DW_AT_accessibility(DW_ACCESS_public)
DW$145	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$145, DW_AT_name("statusreflash"), DW_AT_symbol_name("_statusreflash")
	.dwattr DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$145, DW_AT_accessibility(DW_ACCESS_public)
DW$146	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$146, DW_AT_name("prewarn"), DW_AT_symbol_name("_prewarn")
	.dwattr DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$146, DW_AT_accessibility(DW_ACCESS_public)
DW$147	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$147, DW_AT_name("clocktofram"), DW_AT_symbol_name("_clocktofram")
	.dwattr DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr DW$147, DW_AT_accessibility(DW_ACCESS_public)
DW$148	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$148, DW_AT_name("debugrapidfast"), DW_AT_symbol_name("_debugrapidfast")
	.dwattr DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x3f]
	.dwattr DW$148, DW_AT_accessibility(DW_ACCESS_public)
DW$149	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$149, DW_AT_name("debugupdate"), DW_AT_symbol_name("_debugupdate")
	.dwattr DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$149, DW_AT_accessibility(DW_ACCESS_public)
DW$150	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$150, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr DW$150, DW_AT_accessibility(DW_ACCESS_public)
DW$151	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$151, DW_AT_name("startup"), DW_AT_symbol_name("_startup")
	.dwattr DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr DW$151, DW_AT_accessibility(DW_ACCESS_public)
DW$152	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$152, DW_AT_name("analogsettle"), DW_AT_symbol_name("_analogsettle")
	.dwattr DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr DW$152, DW_AT_accessibility(DW_ACCESS_public)
DW$153	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$153, DW_AT_name("reprogram"), DW_AT_symbol_name("_reprogram")
	.dwattr DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr DW$153, DW_AT_accessibility(DW_ACCESS_public)
DW$154	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$154, DW_AT_name("reprogramtimeout"), DW_AT_symbol_name("_reprogramtimeout")
	.dwattr DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr DW$154, DW_AT_accessibility(DW_ACCESS_public)
DW$155	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$155, DW_AT_name("dcmodestayalive"), DW_AT_symbol_name("_dcmodestayalive")
	.dwattr DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$155, DW_AT_accessibility(DW_ACCESS_public)
DW$156	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$156, DW_AT_name("biteventchange"), DW_AT_symbol_name("_biteventchange")
	.dwattr DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr DW$156, DW_AT_accessibility(DW_ACCESS_public)
DW$157	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$157, DW_AT_name("iSensorReplace"), DW_AT_symbol_name("_iSensorReplace")
	.dwattr DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr DW$157, DW_AT_accessibility(DW_ACCESS_public)
DW$158	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$158, DW_AT_name("deltarpm15Delay"), DW_AT_symbol_name("_deltarpm15Delay")
	.dwattr DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr DW$158, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_name("tag_inputstruct")
	.dwattr DW$T$38, DW_AT_byte_size(0xfe)
DW$159	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$159, DW_AT_name("flags"), DW_AT_symbol_name("_flags")
	.dwattr DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$159, DW_AT_accessibility(DW_ACCESS_public)
DW$160	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$160, DW_AT_name("scale"), DW_AT_symbol_name("_scale")
	.dwattr DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$160, DW_AT_accessibility(DW_ACCESS_public)
DW$161	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$161, DW_AT_name("rawresults"), DW_AT_symbol_name("_rawresults")
	.dwattr DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr DW$161, DW_AT_accessibility(DW_ACCESS_public)
DW$162	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$162, DW_AT_name("amps"), DW_AT_symbol_name("_amps")
	.dwattr DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0xc6]
	.dwattr DW$162, DW_AT_accessibility(DW_ACCESS_public)
DW$163	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$163, DW_AT_name("prtchan"), DW_AT_symbol_name("_prtchan")
	.dwattr DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0xe2]
	.dwattr DW$163, DW_AT_accessibility(DW_ACCESS_public)
DW$164	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$164, DW_AT_name("analog"), DW_AT_symbol_name("_analog")
	.dwattr DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0xe4]
	.dwattr DW$164, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38


DW$T$25	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$25, DW_AT_byte_size(0x0e)
DW$165	.dwtag  DW_TAG_subrange_type
	.dwattr DW$165, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$25


DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("tag_wioalarmstruct")
	.dwattr DW$T$20, DW_AT_byte_size(0x01)
DW$166	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$166, DW_AT_name("alarmupper"), DW_AT_symbol_name("_alarmupper")
	.dwattr DW$166, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$166, DW_AT_accessibility(DW_ACCESS_public)
DW$167	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$167, DW_AT_name("alarmupperlatched"), DW_AT_symbol_name("_alarmupperlatched")
	.dwattr DW$167, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$167, DW_AT_accessibility(DW_ACCESS_public)
DW$168	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$168, DW_AT_name("alarm"), DW_AT_symbol_name("_alarm")
	.dwattr DW$168, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$168, DW_AT_accessibility(DW_ACCESS_public)
DW$169	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$169, DW_AT_name("alarmlatched"), DW_AT_symbol_name("_alarmlatched")
	.dwattr DW$169, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$169, DW_AT_accessibility(DW_ACCESS_public)
DW$170	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$170, DW_AT_name("comms"), DW_AT_symbol_name("_comms")
	.dwattr DW$170, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$170, DW_AT_accessibility(DW_ACCESS_public)
DW$171	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$171, DW_AT_name("commslatched"), DW_AT_symbol_name("_commslatched")
	.dwattr DW$171, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$171, DW_AT_accessibility(DW_ACCESS_public)
DW$172	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$172, DW_AT_name("analoglow"), DW_AT_symbol_name("_analoglow")
	.dwattr DW$172, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$172, DW_AT_accessibility(DW_ACCESS_public)
DW$173	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$173, DW_AT_name("analoghigh"), DW_AT_symbol_name("_analoghigh")
	.dwattr DW$173, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$173, DW_AT_accessibility(DW_ACCESS_public)
DW$174	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$174, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$174, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$174, DW_AT_accessibility(DW_ACCESS_public)
DW$175	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$175, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$175, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$175, DW_AT_accessibility(DW_ACCESS_public)
DW$176	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$176, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$176, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$176, DW_AT_accessibility(DW_ACCESS_public)
DW$177	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$177, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$177, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$177, DW_AT_accessibility(DW_ACCESS_public)
DW$178	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$178, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$178, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$178, DW_AT_accessibility(DW_ACCESS_public)
DW$179	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$179, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$179, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$179, DW_AT_accessibility(DW_ACCESS_public)
DW$180	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$180, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$180, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$180, DW_AT_accessibility(DW_ACCESS_public)
DW$181	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$181, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$181, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$181, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$27, DW_AT_byte_size(0x39)
DW$182	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$182, DW_AT_name("ready"), DW_AT_symbol_name("_ready")
	.dwattr DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$182, DW_AT_accessibility(DW_ACCESS_public)
DW$183	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$183, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$183, DW_AT_accessibility(DW_ACCESS_public)
DW$184	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$184, DW_AT_name("newrpm"), DW_AT_symbol_name("_newrpm")
	.dwattr DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$184, DW_AT_accessibility(DW_ACCESS_public)
DW$185	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$185, DW_AT_name("rpmstart"), DW_AT_symbol_name("_rpmstart")
	.dwattr DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$185, DW_AT_accessibility(DW_ACCESS_public)
DW$186	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$186, DW_AT_name("startupcounter"), DW_AT_symbol_name("_startupcounter")
	.dwattr DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$186, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$30, DW_AT_byte_size(0x2a)
DW$187	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$187, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$187, DW_AT_accessibility(DW_ACCESS_public)
DW$188	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$188, DW_AT_name("peakoffset"), DW_AT_symbol_name("_peakoffset")
	.dwattr DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$188, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30


DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_byte_size(0x62)
DW$189	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$189, DW_AT_name("current"), DW_AT_symbol_name("_current")
	.dwattr DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$189, DW_AT_accessibility(DW_ACCESS_public)
DW$190	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$190, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$190, DW_AT_accessibility(DW_ACCESS_public)
DW$191	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$191, DW_AT_name("counterA"), DW_AT_symbol_name("_counterA")
	.dwattr DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$191, DW_AT_accessibility(DW_ACCESS_public)
DW$192	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$192, DW_AT_name("counterB"), DW_AT_symbol_name("_counterB")
	.dwattr DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$192, DW_AT_accessibility(DW_ACCESS_public)
DW$193	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$193, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr DW$193, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$34, DW_AT_byte_size(0x1c)
DW$194	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$194, DW_AT_name("value"), DW_AT_symbol_name("_value")
	.dwattr DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$194, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34


DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$37, DW_AT_byte_size(0x1a)
DW$195	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$195, DW_AT_name("value"), DW_AT_symbol_name("_value")
	.dwattr DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$195, DW_AT_accessibility(DW_ACCESS_public)
DW$196	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$196, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$196, DW_AT_accessibility(DW_ACCESS_public)
DW$197	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$197, DW_AT_name("scalefactor"), DW_AT_symbol_name("_scalefactor")
	.dwattr DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$197, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$37


DW$T$29	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$29, DW_AT_byte_size(0x0e)
DW$198	.dwtag  DW_TAG_subrange_type
	.dwattr DW$198, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$29


DW$T$35	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$35, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$35, DW_AT_byte_size(0x08)
DW$199	.dwtag  DW_TAG_subrange_type
	.dwattr DW$199, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$35


DW$T$33	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$33, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$33, DW_AT_byte_size(0x1c)
DW$200	.dwtag  DW_TAG_subrange_type
	.dwattr DW$200, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$33


DW$T$31	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$31, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$31, DW_AT_byte_size(0x1c)
DW$201	.dwtag  DW_TAG_subrange_type
	.dwattr DW$201, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$31


DW$T$28	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$16)
	.dwattr DW$T$28, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$28, DW_AT_byte_size(0x1c)
DW$202	.dwtag  DW_TAG_subrange_type
	.dwattr DW$202, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$28


DW$T$36	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$16)
	.dwattr DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$36, DW_AT_byte_size(0x10)
DW$203	.dwtag  DW_TAG_subrange_type
	.dwattr DW$203, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$36


	.dwattr DW$34, DW_AT_external(0x01)
	.dwattr DW$48, DW_AT_external(0x01)
	.dwattr DW$41, DW_AT_external(0x01)
	.dwattr DW$37, DW_AT_external(0x01)
	.dwattr DW$37, DW_AT_type(*DW$T$10)
	.dwattr DW$45, DW_AT_external(0x01)
	.dwattr DW$32, DW_AT_external(0x01)
	.dwattr DW$33, DW_AT_external(0x01)
	.dwattr DW$43, DW_AT_external(0x01)
	.dwattr DW$46, DW_AT_external(0x01)
	.dwattr DW$35, DW_AT_external(0x01)
	.dwattr DW$40, DW_AT_external(0x01)
	.dwattr DW$40, DW_AT_type(*DW$T$10)
	.dwattr DW$29, DW_AT_external(0x01)
	.dwattr DW$39, DW_AT_external(0x01)
	.dwattr DW$39, DW_AT_type(*DW$T$10)
	.dwattr DW$36, DW_AT_external(0x01)
	.dwattr DW$36, DW_AT_type(*DW$T$10)
	.dwattr DW$44, DW_AT_external(0x01)
	.dwattr DW$30, DW_AT_external(0x01)
	.dwattr DW$30, DW_AT_type(*DW$T$64)
	.dwattr DW$31, DW_AT_external(0x01)
	.dwattr DW$31, DW_AT_type(*DW$T$69)
	.dwattr DW$47, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$204	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$204, DW_AT_location[DW_OP_reg0]
DW$205	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$205, DW_AT_location[DW_OP_reg1]
DW$206	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$206, DW_AT_location[DW_OP_reg2]
DW$207	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$207, DW_AT_location[DW_OP_reg3]
DW$208	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$208, DW_AT_location[DW_OP_reg4]
DW$209	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$209, DW_AT_location[DW_OP_reg5]
DW$210	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$210, DW_AT_location[DW_OP_reg6]
DW$211	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$211, DW_AT_location[DW_OP_reg7]
DW$212	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$212, DW_AT_location[DW_OP_reg8]
DW$213	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$213, DW_AT_location[DW_OP_reg9]
DW$214	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$214, DW_AT_location[DW_OP_reg10]
DW$215	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$215, DW_AT_location[DW_OP_reg11]
DW$216	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$216, DW_AT_location[DW_OP_reg12]
DW$217	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$217, DW_AT_location[DW_OP_reg13]
DW$218	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$218, DW_AT_location[DW_OP_reg14]
DW$219	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$219, DW_AT_location[DW_OP_reg15]
DW$220	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$220, DW_AT_location[DW_OP_reg16]
DW$221	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$221, DW_AT_location[DW_OP_reg17]
DW$222	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$222, DW_AT_location[DW_OP_reg18]
DW$223	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$223, DW_AT_location[DW_OP_reg19]
DW$224	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$224, DW_AT_location[DW_OP_reg20]
DW$225	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$225, DW_AT_location[DW_OP_reg21]
DW$226	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$226, DW_AT_location[DW_OP_reg22]
DW$227	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$227, DW_AT_location[DW_OP_reg23]
DW$228	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$228, DW_AT_location[DW_OP_reg24]
DW$229	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$229, DW_AT_location[DW_OP_reg25]
DW$230	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$230, DW_AT_location[DW_OP_reg26]
DW$231	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$231, DW_AT_location[DW_OP_reg27]
DW$232	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$232, DW_AT_location[DW_OP_reg28]
DW$233	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$233, DW_AT_location[DW_OP_reg29]
DW$234	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$234, DW_AT_location[DW_OP_reg30]
DW$235	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$235, DW_AT_location[DW_OP_reg31]
DW$236	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$236, DW_AT_location[DW_OP_regx 0x20]
DW$237	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$237, DW_AT_location[DW_OP_regx 0x21]
DW$238	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$238, DW_AT_location[DW_OP_regx 0x22]
DW$239	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$239, DW_AT_location[DW_OP_regx 0x23]
DW$240	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$240, DW_AT_location[DW_OP_regx 0x24]
DW$241	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$241, DW_AT_location[DW_OP_regx 0x25]
DW$242	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$242, DW_AT_location[DW_OP_regx 0x26]
DW$243	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$243, DW_AT_location[DW_OP_regx 0x27]
DW$244	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$244, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

