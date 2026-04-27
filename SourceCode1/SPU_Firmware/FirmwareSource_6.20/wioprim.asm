;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Thu Aug 18 12:16:36 2016                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("wioprim.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("memset"), DW_AT_symbol_name("_memset")
	.dwattr DW$1, DW_AT_type(*DW$T$3)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$1


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("LoadSendBufferC"), DW_AT_symbol_name("_LoadSendBufferC")
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$5


DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("SetBitEvent"), DW_AT_symbol_name("_SetBitEvent")
	.dwattr DW$8, DW_AT_declaration(0x01)
	.dwattr DW$8, DW_AT_external(0x01)
DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$8


DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("WioStructPtr"), DW_AT_symbol_name("_WioStructPtr")
	.dwattr DW$10, DW_AT_type(*DW$T$53)
	.dwattr DW$10, DW_AT_declaration(0x01)
	.dwattr DW$10, DW_AT_external(0x01)

DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("WIOEnabled"), DW_AT_symbol_name("_WIOEnabled")
	.dwattr DW$11, DW_AT_type(*DW$T$10)
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)

DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteUartConfig_C"), DW_AT_symbol_name("_WriteUartConfig_C")
	.dwattr DW$12, DW_AT_type(*DW$T$10)
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)
DW$13	.dwtag  DW_TAG_variable, DW_AT_name("timers"), DW_AT_symbol_name("_timers")
	.dwattr DW$13, DW_AT_type(*DW$T$59)
	.dwattr DW$13, DW_AT_declaration(0x01)
	.dwattr DW$13, DW_AT_external(0x01)
DW$14	.dwtag  DW_TAG_variable, DW_AT_name("config"), DW_AT_symbol_name("_config")
	.dwattr DW$14, DW_AT_type(*DW$T$61)
	.dwattr DW$14, DW_AT_declaration(0x01)
	.dwattr DW$14, DW_AT_external(0x01)
DW$15	.dwtag  DW_TAG_variable, DW_AT_name("receiveC"), DW_AT_symbol_name("_receiveC")
	.dwattr DW$15, DW_AT_type(*DW$T$62)
	.dwattr DW$15, DW_AT_declaration(0x01)
	.dwattr DW$15, DW_AT_external(0x01)
	.global	_wioresponsemsg
_wioresponsemsg:	.usect	".ebss",10,1,0
DW$16	.dwtag  DW_TAG_variable, DW_AT_name("wioresponsemsg"), DW_AT_symbol_name("_wioresponsemsg")
	.dwattr DW$16, DW_AT_location[DW_OP_addr _wioresponsemsg]
	.dwattr DW$16, DW_AT_type(*DW$T$50)
	.dwattr DW$16, DW_AT_external(0x01)
	.global	_txmode
_txmode:	.usect	".ebss",1,1,0
DW$17	.dwtag  DW_TAG_variable, DW_AT_name("txmode"), DW_AT_symbol_name("_txmode")
	.dwattr DW$17, DW_AT_location[DW_OP_addr _txmode]
	.dwattr DW$17, DW_AT_type(*DW$T$11)
	.dwattr DW$17, DW_AT_external(0x01)
	.global	_wiolost
_wiolost:	.usect	".ebss",1,1,0
DW$18	.dwtag  DW_TAG_variable, DW_AT_name("wiolost"), DW_AT_symbol_name("_wiolost")
	.dwattr DW$18, DW_AT_location[DW_OP_addr _wiolost]
	.dwattr DW$18, DW_AT_type(*DW$T$11)
	.dwattr DW$18, DW_AT_external(0x01)
	.global	_wioerrorcode
_wioerrorcode:	.usect	".ebss",1,1,0
DW$19	.dwtag  DW_TAG_variable, DW_AT_name("wioerrorcode"), DW_AT_symbol_name("_wioerrorcode")
	.dwattr DW$19, DW_AT_location[DW_OP_addr _wioerrorcode]
	.dwattr DW$19, DW_AT_type(*DW$T$11)
	.dwattr DW$19, DW_AT_external(0x01)
_wio_errorflag$1:	.usect	".ebss",1,1,0
;	C:\CCStudio_v3.3\C2000\cgtools\bin\opt2000.exe C:\Users\Andrew\AppData\Local\Temp\TI6242 C:\Users\Andrew\AppData\Local\Temp\TI6244 
;	C:\CCStudio_v3.3\C2000\cgtools\bin\ac2000.exe -q -D_INLINE -DLARGE_MODEL -IC:/CCStudio_v3.3/C2000/xdais/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/bios/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/rtdx/include/c2000 -IC:/CCStudio_v3.3/C2000/cgtools/include --version=28 --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\Andrew\AppData\Local\Temp\TI6242 --template_info_file C:\Users\Andrew\AppData\Local\Temp\TI6246 --object_file 
	.sect	".text"
	.global	_WIO485Init

DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("WIO485Init"), DW_AT_symbol_name("_WIO485Init")
	.dwattr DW$20, DW_AT_low_pc(_WIO485Init)
	.dwattr DW$20, DW_AT_high_pc(0x00)
	.dwattr DW$20, DW_AT_begin_file("wioprim.c")
	.dwattr DW$20, DW_AT_begin_line(0x3a)
	.dwattr DW$20, DW_AT_begin_column(0x06)
	.dwattr DW$20, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$20, DW_AT_skeletal(0x01)
	.dwpsn	"wioprim.c",59,1

;***************************************************************
;* FNAME: _WIO485Init                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WIO485Init:
        MOVW      DP,#_txmode
        MOV       @_txmode,#0           ; |60| 
        MOVB      ACC,#100
        MOVW      DP,#_timers+4
        MOVB      XAR5,#0
        MOV       @_timers+4,#0         ; |61| 
        MOVL      XAR4,#_receiveC+3     ; |65| 
        MOVW      DP,#_timers+52
        MOV       @_timers+52,#0        ; |62| 
        MOVW      DP,#_receiveC+2
        MOV       @_receiveC+2,#0       ; |63| 
        MOVW      DP,#_receiveC+1
        MOV       @_receiveC+1,#0       ; |64| 
        LCR       #_memset              ; |65| 
        ; call occurs [#_memset] ; |65| 
	.dwpsn	"wioprim.c",66,1
        LRETR
        ; return occurs
	.dwattr DW$20, DW_AT_end_file("wioprim.c")
	.dwattr DW$20, DW_AT_end_line(0x42)
	.dwattr DW$20, DW_AT_end_column(0x01)
	.dwendtag DW$20

	.sect	".text"
	.global	_WaterinOil

DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("WaterinOil"), DW_AT_symbol_name("_WaterinOil")
	.dwattr DW$21, DW_AT_low_pc(_WaterinOil)
	.dwattr DW$21, DW_AT_high_pc(0x00)
	.dwattr DW$21, DW_AT_begin_file("wioprim.c")
	.dwattr DW$21, DW_AT_begin_line(0x45)
	.dwattr DW$21, DW_AT_begin_column(0x06)
	.dwattr DW$21, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$21, DW_AT_skeletal(0x01)
	.dwpsn	"wioprim.c",70,1

;***************************************************************
;* FNAME: _WaterinOil                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WaterinOil:
        LCR       #_WIOEnabled          ; |72| 
        ; call occurs [#_WIOEnabled] ; |72| 
        CMPB      AL,#1                 ; |72| 
        BF        L2,NEQ                ; |72| 
        ; branchcc occurs ; |72| 
        MOVW      DP,#_txmode
        MOV       AL,@_txmode           ; |74| 
        BF        L1,NEQ                ; |74| 
        ; branchcc occurs ; |74| 
        MOVW      DP,#_timers+52
        MOV       AL,@_timers+52        ; |74| 
        BF        L1,NEQ                ; |74| 
        ; branchcc occurs ; |74| 
        MOVB      ACC,#1
        MOVW      DP,#_config+8
        ADDL      @_config+8,ACC        ; |76| 
        LCR       #_ReadWaterinOilintoBuf ; |77| 
        ; call occurs [#_ReadWaterinOilintoBuf] ; |77| 
        MOVW      DP,#_timers+52
        MOV       @_timers+52,#1000     ; |78| 
L1:    
        LCR       #_WIOReceive          ; |80| 
        ; call occurs [#_WIOReceive] ; |80| 
L2:    
	.dwpsn	"wioprim.c",82,1
        LRETR
        ; return occurs
	.dwattr DW$21, DW_AT_end_file("wioprim.c")
	.dwattr DW$21, DW_AT_end_line(0x52)
	.dwattr DW$21, DW_AT_end_column(0x01)
	.dwendtag DW$21

	.sect	".text"
	.global	_ReadWaterinOilintoBuf

DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadWaterinOilintoBuf"), DW_AT_symbol_name("_ReadWaterinOilintoBuf")
	.dwattr DW$22, DW_AT_low_pc(_ReadWaterinOilintoBuf)
	.dwattr DW$22, DW_AT_high_pc(0x00)
	.dwattr DW$22, DW_AT_begin_file("wioprim.c")
	.dwattr DW$22, DW_AT_begin_line(0x5d)
	.dwattr DW$22, DW_AT_begin_column(0x06)
	.dwattr DW$22, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$22, DW_AT_skeletal(0x01)
	.dwpsn	"wioprim.c",94,1

;***************************************************************
;* FNAME: _ReadWaterinOilintoBuf        FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_ReadWaterinOilintoBuf:
        MOVL      *SP++,XAR3
        MOVB      AL,#1                 ; |96| 
        LCR       #_WriteUartConfig_C   ; |96| 
        ; call occurs [#_WriteUartConfig_C] ; |96| 
        MOVL      XAR3,#_wioresponsemsg ; |98| 
        MOV       *+XAR3[0],#0          ; |98| 
        MOV       *+XAR3[1],#0          ; |99| 
        MOV       *+XAR3[2],#103        ; |101| 
        MOV       *+XAR3[3],#3          ; |102| 
        MOVB      AL,#7                 ; |109| 
        MOV       *+XAR3[4],#0          ; |104| 
        MOVL      XAR4,XAR3             ; |109| 
        MOV       *+XAR3[5],#13         ; |106| 
        MOV       *+XAR3[6],#14         ; |107| 
        LCR       #_CalcSingleByteChecksum ; |109| 
        ; call occurs [#_CalcSingleByteChecksum] ; |109| 
        MOVL      XAR4,XAR3             ; |111| 
        MOV       *+XAR3[7],AL          ; |109| 
        MOVB      AL,#8                 ; |111| 
        LCR       #_LoadSendBufferC     ; |111| 
        ; call occurs [#_LoadSendBufferC] ; |111| 
        MOVW      DP,#_txmode
        INC       @_txmode              ; |112| 
        MOVW      DP,#_timers+4
        MOV       @_timers+4,#200       ; |113| 
        NOP
        MOVL      XAR3,*--SP
	.dwpsn	"wioprim.c",115,1
        LRETR
        ; return occurs
	.dwattr DW$22, DW_AT_end_file("wioprim.c")
	.dwattr DW$22, DW_AT_end_line(0x73)
	.dwattr DW$22, DW_AT_end_column(0x01)
	.dwendtag DW$22

	.sect	".text"
	.global	_WIOReceive

DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("WIOReceive"), DW_AT_symbol_name("_WIOReceive")
	.dwattr DW$23, DW_AT_low_pc(_WIOReceive)
	.dwattr DW$23, DW_AT_high_pc(0x00)
	.dwattr DW$23, DW_AT_begin_file("wioprim.c")
	.dwattr DW$23, DW_AT_begin_line(0x76)
	.dwattr DW$23, DW_AT_begin_column(0x06)
	.dwattr DW$23, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$23, DW_AT_skeletal(0x01)
	.dwpsn	"wioprim.c",119,1

;***************************************************************
;* FNAME: _WIOReceive                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WIOReceive:
        MOVW      DP,#_txmode
        MOV       AL,@_txmode           ; |121| 
        BF        L8,EQ                 ; |121| 
        ; branchcc occurs ; |121| 
        MOVW      DP,#_timers+4
        MOV       AL,@_timers+4         ; |121| 
        BF        L5,NEQ                ; |121| 
        ; branchcc occurs ; |121| 
        MOVW      DP,#_txmode
        MOV       AL,@_txmode           ; |138| 
        BF        L8,EQ                 ; |138| 
        ; branchcc occurs ; |138| 
        CMPB      AL,#30                ; |138| 
        BF        L3,HIS                ; |138| 
        ; branchcc occurs ; |138| 
        MOVW      DP,#_timers+4
        MOV       AL,@_timers+4         ; |138| 
        BF        L4,EQ                 ; |138| 
        ; branchcc occurs ; |138| 
L3:    
        MOVW      DP,#_txmode
        MOV       AL,@_txmode           ; |150| 
        CMPB      AL,#30                ; |150| 
        BF        L8,LO                 ; |150| 
        ; branchcc occurs ; |150| 
        MOVW      DP,#_wiolost
        MOV       @_wiolost,#1          ; |152| 
        BF        L8,UNC                ; |152| 
        ; branch occurs ; |152| 
L4:    
        MOVB      ACC,#100
        MOVB      XAR5,#0
        MOVL      XAR4,#_receiveC+3     ; |141| 
        LCR       #_memset              ; |141| 
        ; call occurs [#_memset] ; |141| 
        MOVW      DP,#_receiveC+2
        MOV       @_receiveC+2,#0       ; |142| 
        MOVW      DP,#_receiveC+1
        MOV       @_receiveC+1,#0       ; |143| 
        MOVW      DP,#_timers+3
        MOV       @_timers+3,#40        ; |144| 
        MOVW      DP,#_timers+52
        MOV       @_timers+52,#1000     ; |145| 
        LCR       #_ReadWaterinOilintoBuf ; |146| 
        ; call occurs [#_ReadWaterinOilintoBuf] ; |146| 
        BF        L9,UNC                ; |147| 
        ; branch occurs ; |147| 
L5:    
        MOVW      DP,#_receiveC+1
        MOV       AL,@_receiveC+1       ; |123| 
        BF        L6,EQ                 ; |123| 
        ; branchcc occurs ; |123| 
        MOVW      DP,#_receiveC+2
        CMP       AL,@_receiveC+2       ; |123| 
        BF        L7,NEQ                ; |123| 
        ; branchcc occurs ; |123| 
L6:    
        MOVW      DP,#_timers+3
        MOV       AL,@_timers+3         ; |128| 
        BF        L9,NEQ                ; |128| 
        ; branchcc occurs ; |128| 
        MOVW      DP,#_receiveC+1
        MOV       AL,@_receiveC+1       ; |128| 
        BF        L9,EQ                 ; |128| 
        ; branchcc occurs ; |128| 
        LCR       #_WaterInOilResponse  ; |130| 
        ; call occurs [#_WaterInOilResponse] ; |130| 
        MOVW      DP,#_wiolost
        MOVB      XAR5,#0
        MOVL      XAR4,#_receiveC+3     ; |132| 
        MOVB      ACC,#100
        MOV       @_wiolost,#0          ; |131| 
        LCR       #_memset              ; |132| 
        ; call occurs [#_memset] ; |132| 
        MOVW      DP,#_receiveC+2
        MOV       @_receiveC+2,#0       ; |134| 
        MOVW      DP,#_receiveC+1
        MOV       @_receiveC+1,#0       ; |135| 
        BF        L9,UNC                ; |135| 
        ; branch occurs ; |135| 
L7:    
        MOVW      DP,#_receiveC+2
        MOV       @_receiveC+2,AL       ; |125| 
        MOVW      DP,#_timers+3
        MOV       @_timers+3,#40        ; |126| 
        NOP
        BF        L9,UNC                ; |127| 
        ; branch occurs ; |127| 
L8:    
        MOVW      DP,#_txmode
        MOV       @_txmode,#0           ; |154| 
        MOVW      DP,#_timers+4
        MOV       @_timers+4,#0         ; |155| 
        NOP
        NOP
L9:    
	.dwpsn	"wioprim.c",158,1
        LRETR
        ; return occurs
	.dwattr DW$23, DW_AT_end_file("wioprim.c")
	.dwattr DW$23, DW_AT_end_line(0x9e)
	.dwattr DW$23, DW_AT_end_column(0x01)
	.dwendtag DW$23

	.sect	".text"
	.global	_WaterInOilResponse

DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("WaterInOilResponse"), DW_AT_symbol_name("_WaterInOilResponse")
	.dwattr DW$24, DW_AT_low_pc(_WaterInOilResponse)
	.dwattr DW$24, DW_AT_high_pc(0x00)
	.dwattr DW$24, DW_AT_begin_file("wioprim.c")
	.dwattr DW$24, DW_AT_begin_line(0xac)
	.dwattr DW$24, DW_AT_begin_column(0x06)
	.dwattr DW$24, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$24, DW_AT_skeletal(0x01)
	.dwpsn	"wioprim.c",173,1
DW$25	.dwtag  DW_TAG_variable, DW_AT_name("wio_errorflag"), DW_AT_symbol_name("_wio_errorflag$1")
	.dwattr DW$25, DW_AT_type(*DW$T$10)
	.dwattr DW$25, DW_AT_location[DW_OP_addr _wio_errorflag$1]

;***************************************************************
;* FNAME: _WaterInOilResponse           FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_WaterInOilResponse:
        MOVL      *SP++,XAR1
        MOVW      DP,#_receiveC+1
        MOVL      *SP++,XAR3
        MOV       AL,@_receiveC+1       ; |189| 
        CMPB      AL,#19                ; |189| 
        BF        L10,EQ                ; |189| 
        ; branchcc occurs ; |189| 
        CMPB      AL,#7                 ; |236| 
        BF        L13,NEQ               ; |236| 
        ; branchcc occurs ; |236| 
        MOVL      XAR3,#_receiveC+3     ; |238| 
        MOVL      XAR4,XAR3             ; |238| 
        MOVB      AL,#6                 ; |238| 
        LCR       #_CalcSingleByteChecksum ; |238| 
        ; call occurs [#_CalcSingleByteChecksum] ; |238| 
        CMP       AL,*+XAR3[6]          ; |239| 
        BF        L13,NEQ               ; |239| 
        ; branchcc occurs ; |239| 
        MOV       AL,*+XAR3[4]          ; |239| 
        CMPB      AL,#21                ; |239| 
        BF        L13,NEQ               ; |239| 
        ; branchcc occurs ; |239| 
        MOVB      ACC,#1
        MOVW      DP,#_config+12
        ADDL      @_config+12,ACC       ; |244| 
        MOVW      DP,#_txmode
        MOV       @_txmode,#0           ; |245| 
        MOVW      DP,#_wio_errorflag$1
        MOV       AL,@_wio_errorflag$1  ; |247| 
        BF        L13,NEQ               ; |247| 
        ; branchcc occurs ; |247| 
        MOVW      DP,#_wio_errorflag$1
        MOV       @_wio_errorflag$1,#1  ; |249| 
        MOV       AL,*+XAR3[5]          ; |255| 
        MOVW      DP,#_wioerrorcode
        MOV       @_wioerrorcode,AL     ; |255| 
        MOVB      AL,#39                ; |256| 
        LCR       #_SetBitEvent         ; |256| 
        ; call occurs [#_SetBitEvent] ; |256| 
        BF        L13,UNC               ; |256| 
        ; branch occurs ; |256| 
L10:    
        MOVL      XAR3,#_receiveC+3     ; |191| 
        MOVL      XAR4,XAR3             ; |191| 
        MOVB      AL,#18                ; |191| 
        LCR       #_CalcSingleByteChecksum ; |191| 
        ; call occurs [#_CalcSingleByteChecksum] ; |191| 
        MOVB      XAR0,#18              ; |192| 
        CMP       AL,*+XAR3[AR0]        ; |192| 
        BF        L13,NEQ               ; |192| 
        ; branchcc occurs ; |192| 
        MOV       AL,*+XAR3[4]          ; |192| 
        CMPB      AL,#6                 ; |192| 
        BF        L13,NEQ               ; |192| 
        ; branchcc occurs ; |192| 
        MOVW      DP,#_wio_errorflag$1
        MOVB      ACC,#1
        MOV       @_wio_errorflag$1,#0  ; |196| 
        MOVW      DP,#_config+12
        ADDL      @_config+12,ACC       ; |198| 
        LCR       #_WioStructPtr        ; |203| 
        ; call occurs [#_WioStructPtr] ; |203| 
        MOVB      ACC,#2
        ADDL      ACC,XAR4
        MOVL      XAR4,ACC              ; |204| 
        MOV       AL,*+XAR3[5]          ; |209| 
        MOVB      XAR1,#0
        BF        L12,NEQ               ; |209| 
        ; branchcc occurs ; |209| 
        MOVB      XAR5,#0
        MOVL      XAR6,#_receiveC+3     ; |217| 
	.dwpsn	"wioprim.c",212,0
        MOVB      XAR0,#6               ; |211| 
L11:    
DW$L$_WaterInOilResponse$11$B:
	.dwpsn	"wioprim.c",213,0
        AND       AL,*+XAR6[AR0],#0x00ff ; |217| 
        MOVZ      AR7,AL                ; |217| 
        ADDB      XAR0,#1               ; |219| 
        MOV       ACC,*+XAR6[AR0] << #8 ; |219| 
        ADD       AR7,AL                ; |219| 
        ADDB      XAR0,#1               ; |223| 
        MOV       *+XAR4[AR1],AR7       ; |221| 
        AND       AL,*+XAR6[AR0],#0x00ff ; |223| 
        MOVZ      AR7,AL                ; |223| 
        ADDB      XAR0,#1               ; |225| 
        MOV       ACC,*+XAR6[AR0] << #8 ; |225| 
        ADD       AR7,AL                ; |225| 
        ADDB      XAR5,#1               ; |212| 
        ADDB      XAR1,#1               ; |227| 
        MOV       AL,AR5                ; |212| 
        MOV       *+XAR4[AR1],AR7       ; |227| 
        CMPB      AL,#3                 ; |212| 
        ADDB      XAR0,#1               ; |226| 
        ADDB      XAR1,#1               ; |228| 
	.dwpsn	"wioprim.c",229,0
        BF        L11,LO                ; |212| 
        ; branchcc occurs ; |212| 
DW$L$_WaterInOilResponse$11$E:
L12:    
        MOVW      DP,#_txmode
        MOV       @_txmode,#0           ; |232| 
L13:    
        MOVL      XAR3,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"wioprim.c",261,1
        LRETR
        ; return occurs

DW$26	.dwtag  DW_TAG_loop
	.dwattr DW$26, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\wioprim.asm:L11:1:1471518996")
	.dwattr DW$26, DW_AT_begin_file("wioprim.c")
	.dwattr DW$26, DW_AT_begin_line(0xd4)
	.dwattr DW$26, DW_AT_end_line(0xe5)
DW$27	.dwtag  DW_TAG_loop_range
	.dwattr DW$27, DW_AT_low_pc(DW$L$_WaterInOilResponse$11$B)
	.dwattr DW$27, DW_AT_high_pc(DW$L$_WaterInOilResponse$11$E)
	.dwendtag DW$26

	.dwattr DW$24, DW_AT_end_file("wioprim.c")
	.dwattr DW$24, DW_AT_end_line(0x105)
	.dwattr DW$24, DW_AT_end_column(0x01)
	.dwendtag DW$24

	.sect	".text"
	.global	_CalcSingleByteChecksum

DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("CalcSingleByteChecksum"), DW_AT_symbol_name("_CalcSingleByteChecksum")
	.dwattr DW$28, DW_AT_low_pc(_CalcSingleByteChecksum)
	.dwattr DW$28, DW_AT_high_pc(0x00)
	.dwattr DW$28, DW_AT_begin_file("wioprim.c")
	.dwattr DW$28, DW_AT_begin_line(0x10c)
	.dwattr DW$28, DW_AT_begin_column(0x0e)
	.dwattr DW$28, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$28, DW_AT_skeletal(0x01)
	.dwpsn	"wioprim.c",269,1

;***************************************************************
;* FNAME: _CalcSingleByteChecksum       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CalcSingleByteChecksum:
;* AR4   assigned to _ptr
DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$29, DW_AT_type(*DW$T$37)
	.dwattr DW$29, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _len
DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$30, DW_AT_type(*DW$T$11)
	.dwattr DW$30, DW_AT_location[DW_OP_reg0]
        MOVZ      AR5,AL                ; |269| 
        MOVB      AL,#0
        MOV       AH,AR5                ; |272| 
        BF        L15,EQ                ; |273| 
        ; branchcc occurs ; |273| 
L14:    
DW$L$_CalcSingleByteChecksum$2$B:
	.dwpsn	"wioprim.c",274,0
        MOV       AH,*XAR4++            ; |275| 
        SUBB      XAR5,#1               ; |277| 
        ANDB      AH,#0xff              ; |275| 
        ADD       AL,AH                 ; |275| 
        MOV       AH,AR5                ; |277| 
	.dwpsn	"wioprim.c",277,0
        BF        L14,NEQ               ; |277| 
        ; branchcc occurs ; |277| 
DW$L$_CalcSingleByteChecksum$2$E:
L15:    
        ANDB      AL,#0xff              ; |279| 
	.dwpsn	"wioprim.c",280,1
        LRETR
        ; return occurs

DW$31	.dwtag  DW_TAG_loop
	.dwattr DW$31, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\wioprim.asm:L14:1:1471518996")
	.dwattr DW$31, DW_AT_begin_file("wioprim.c")
	.dwattr DW$31, DW_AT_begin_line(0x111)
	.dwattr DW$31, DW_AT_end_line(0x115)
DW$32	.dwtag  DW_TAG_loop_range
	.dwattr DW$32, DW_AT_low_pc(DW$L$_CalcSingleByteChecksum$2$B)
	.dwattr DW$32, DW_AT_high_pc(DW$L$_CalcSingleByteChecksum$2$E)
	.dwendtag DW$31

	.dwattr DW$28, DW_AT_end_file("wioprim.c")
	.dwattr DW$28, DW_AT_end_line(0x118)
	.dwattr DW$28, DW_AT_end_column(0x01)
	.dwendtag DW$28

;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_memset
	.global	_LoadSendBufferC
	.global	_SetBitEvent
	.global	_WioStructPtr
	.global	_WIOEnabled
	.global	_WriteUartConfig_C
	.global	_timers
	.global	_config
	.global	_receiveC

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x16)

DW$T$35	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$35, DW_AT_language(DW_LANG_C)
DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$T$35


DW$T$38	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$38, DW_AT_language(DW_LANG_C)
DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$38


DW$T$40	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$40, DW_AT_language(DW_LANG_C)
DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$40


DW$T$42	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$42, DW_AT_language(DW_LANG_C)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)

DW$T$44	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$44, DW_AT_language(DW_LANG_C)

DW$T$46	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$46, DW_AT_language(DW_LANG_C)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)
DW$T$37	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$37, DW_AT_address_class(0x16)

DW$T$48	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$48, DW_AT_language(DW_LANG_C)
DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$48


DW$T$50	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$50, DW_AT_byte_size(0x0a)
DW$41	.dwtag  DW_TAG_subrange_type
	.dwattr DW$41, DW_AT_upper_bound(0x09)
	.dwendtag DW$T$50

DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$34, DW_AT_language(DW_LANG_C)
DW$T$53	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$52)
	.dwattr DW$T$53, DW_AT_address_class(0x16)

DW$T$54	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$53)
	.dwattr DW$T$54, DW_AT_language(DW_LANG_C)
DW$42	.dwtag  DW_TAG_far_type
	.dwattr DW$42, DW_AT_type(*DW$T$58)
DW$T$59	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$59, DW_AT_type(*DW$42)
DW$T$61	.dwtag  DW_TAG_typedef, DW_AT_name("configstruct"), DW_AT_type(*DW$T$30)
	.dwattr DW$T$61, DW_AT_language(DW_LANG_C)
DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("uartreadC"), DW_AT_type(*DW$T$33)
	.dwattr DW$T$62, DW_AT_language(DW_LANG_C)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)
DW$T$52	.dwtag  DW_TAG_typedef, DW_AT_name("waterinoilstruct"), DW_AT_type(*DW$T$21)
	.dwattr DW$T$52, DW_AT_language(DW_LANG_C)
DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("timersstruct"), DW_AT_type(*DW$T$23)
	.dwattr DW$T$58, DW_AT_language(DW_LANG_C)

DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$30, DW_AT_name("tag_configstruct")
	.dwattr DW$T$30, DW_AT_byte_size(0x18)
DW$43	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$43, DW_AT_name("filter"), DW_AT_symbol_name("_filter")
	.dwattr DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$43, DW_AT_accessibility(DW_ACCESS_public)
DW$44	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$44, DW_AT_name("alarmenable"), DW_AT_symbol_name("_alarmenable")
	.dwattr DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$44, DW_AT_accessibility(DW_ACCESS_public)
DW$45	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$45, DW_AT_name("trendmax"), DW_AT_symbol_name("_trendmax")
	.dwattr DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$45, DW_AT_accessibility(DW_ACCESS_public)
DW$46	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$46, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$46, DW_AT_accessibility(DW_ACCESS_public)
DW$47	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$47, DW_AT_name("sdsettings"), DW_AT_symbol_name("_sdsettings")
	.dwattr DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$47, DW_AT_accessibility(DW_ACCESS_public)
DW$48	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$48, DW_AT_name("comms"), DW_AT_symbol_name("_comms")
	.dwattr DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$48, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30


DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$33, DW_AT_name("tag_uartreadC")
	.dwattr DW$T$33, DW_AT_byte_size(0x68)
DW$49	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$49, DW_AT_name("receiveINTR"), DW_AT_symbol_name("_receiveINTR")
	.dwattr DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$49, DW_AT_accessibility(DW_ACCESS_public)
DW$50	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$50, DW_AT_name("currentcharcount"), DW_AT_symbol_name("_currentcharcount")
	.dwattr DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$50, DW_AT_accessibility(DW_ACCESS_public)
DW$51	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$51, DW_AT_name("previouscharcount"), DW_AT_symbol_name("_previouscharcount")
	.dwattr DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$51, DW_AT_accessibility(DW_ACCESS_public)
DW$52	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$52, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$52, DW_AT_accessibility(DW_ACCESS_public)
DW$53	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$53, DW_AT_name("uartcharrx"), DW_AT_symbol_name("_uartcharrx")
	.dwattr DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x67]
	.dwattr DW$53, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$31	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$31, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$31, DW_AT_byte_size(0x64)
DW$54	.dwtag  DW_TAG_subrange_type
	.dwattr DW$54, DW_AT_upper_bound(0x63)
	.dwendtag DW$T$31


DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$21, DW_AT_name("tag_waterinoilstruct")
	.dwattr DW$T$21, DW_AT_byte_size(0x0c)
DW$55	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$55, DW_AT_name("netadd"), DW_AT_symbol_name("_netadd")
	.dwattr DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$55, DW_AT_accessibility(DW_ACCESS_public)
DW$56	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$56, DW_AT_name("temperature"), DW_AT_symbol_name("_temperature")
	.dwattr DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$56, DW_AT_accessibility(DW_ACCESS_public)
DW$57	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$57, DW_AT_name("activity"), DW_AT_symbol_name("_activity")
	.dwattr DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$57, DW_AT_accessibility(DW_ACCESS_public)
DW$58	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$58, DW_AT_name("content"), DW_AT_symbol_name("_content")
	.dwattr DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$58, DW_AT_accessibility(DW_ACCESS_public)
DW$59	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$59, DW_AT_name("temperature_int"), DW_AT_symbol_name("_temperature_int")
	.dwattr DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$59, DW_AT_accessibility(DW_ACCESS_public)
DW$60	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$60, DW_AT_name("activity_int"), DW_AT_symbol_name("_activity_int")
	.dwattr DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$60, DW_AT_accessibility(DW_ACCESS_public)
DW$61	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$61, DW_AT_name("content_int"), DW_AT_symbol_name("_content_int")
	.dwattr DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$61, DW_AT_accessibility(DW_ACCESS_public)
DW$62	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$62, DW_AT_name("wioalarms"), DW_AT_symbol_name("_wioalarms")
	.dwattr DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$62, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21


DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$23, DW_AT_name("tag_timers")
	.dwattr DW$T$23, DW_AT_byte_size(0x4c)
DW$63	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$63, DW_AT_name("update"), DW_AT_symbol_name("_update")
	.dwattr DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$63, DW_AT_accessibility(DW_ACCESS_public)
DW$64	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$64, DW_AT_name("general"), DW_AT_symbol_name("_general")
	.dwattr DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$64, DW_AT_accessibility(DW_ACCESS_public)
DW$65	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$65, DW_AT_name("rxcharTimeout"), DW_AT_symbol_name("_rxcharTimeout")
	.dwattr DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$65, DW_AT_accessibility(DW_ACCESS_public)
DW$66	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$66, DW_AT_name("wiorxtimeout"), DW_AT_symbol_name("_wiorxtimeout")
	.dwattr DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$66, DW_AT_accessibility(DW_ACCESS_public)
DW$67	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$67, DW_AT_name("wiomasterrxtimeout"), DW_AT_symbol_name("_wiomasterrxtimeout")
	.dwattr DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$67, DW_AT_accessibility(DW_ACCESS_public)
DW$68	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$68, DW_AT_name("masterrxtimeout"), DW_AT_symbol_name("_masterrxtimeout")
	.dwattr DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$68, DW_AT_accessibility(DW_ACCESS_public)
DW$69	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$69, DW_AT_name("slaverxtimeout"), DW_AT_symbol_name("_slaverxtimeout")
	.dwattr DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$69, DW_AT_accessibility(DW_ACCESS_public)
DW$70	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$70, DW_AT_name("sectick"), DW_AT_symbol_name("_sectick")
	.dwattr DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$70, DW_AT_accessibility(DW_ACCESS_public)
DW$71	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$71, DW_AT_name("ledflash"), DW_AT_symbol_name("_ledflash")
	.dwattr DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$71, DW_AT_accessibility(DW_ACCESS_public)
DW$72	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$72, DW_AT_name("prtsettle"), DW_AT_symbol_name("_prtsettle")
	.dwattr DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$72, DW_AT_accessibility(DW_ACCESS_public)
DW$73	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$73, DW_AT_name("chantimeout"), DW_AT_symbol_name("_chantimeout")
	.dwattr DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$73, DW_AT_accessibility(DW_ACCESS_public)
DW$74	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$74, DW_AT_name("chanwait"), DW_AT_symbol_name("_chanwait")
	.dwattr DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$74, DW_AT_accessibility(DW_ACCESS_public)
DW$75	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$75, DW_AT_name("pcrxtimeout"), DW_AT_symbol_name("_pcrxtimeout")
	.dwattr DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$75, DW_AT_accessibility(DW_ACCESS_public)
DW$76	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$76, DW_AT_name("pctxtimeout"), DW_AT_symbol_name("_pctxtimeout")
	.dwattr DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$76, DW_AT_accessibility(DW_ACCESS_public)
DW$77	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$77, DW_AT_name("spistatus"), DW_AT_symbol_name("_spistatus")
	.dwattr DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$77, DW_AT_accessibility(DW_ACCESS_public)
DW$78	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$78, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$78, DW_AT_accessibility(DW_ACCESS_public)
DW$79	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$79, DW_AT_name("slaverqst"), DW_AT_symbol_name("_slaverqst")
	.dwattr DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$79, DW_AT_accessibility(DW_ACCESS_public)
DW$80	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$80, DW_AT_name("mastermodebutton"), DW_AT_symbol_name("_mastermodebutton")
	.dwattr DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$80, DW_AT_accessibility(DW_ACCESS_public)
DW$81	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$81, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$81, DW_AT_accessibility(DW_ACCESS_public)
DW$82	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$82, DW_AT_name("calibrate"), DW_AT_symbol_name("_calibrate")
	.dwattr DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$82, DW_AT_accessibility(DW_ACCESS_public)
DW$83	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$83, DW_AT_name("calibrate2"), DW_AT_symbol_name("_calibrate2")
	.dwattr DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$83, DW_AT_accessibility(DW_ACCESS_public)
DW$84	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$84, DW_AT_name("alarmreflash"), DW_AT_symbol_name("_alarmreflash")
	.dwattr DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$84, DW_AT_accessibility(DW_ACCESS_public)
DW$85	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$85, DW_AT_name("slowdownreflash"), DW_AT_symbol_name("_slowdownreflash")
	.dwattr DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr DW$85, DW_AT_accessibility(DW_ACCESS_public)
DW$86	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$86, DW_AT_name("wiorqst"), DW_AT_symbol_name("_wiorqst")
	.dwattr DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$86, DW_AT_accessibility(DW_ACCESS_public)
DW$87	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$87, DW_AT_name("rpmtimeout"), DW_AT_symbol_name("_rpmtimeout")
	.dwattr DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr DW$87, DW_AT_accessibility(DW_ACCESS_public)
DW$88	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$88, DW_AT_name("analogoor"), DW_AT_symbol_name("_analogoor")
	.dwattr DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$88, DW_AT_accessibility(DW_ACCESS_public)
DW$89	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$89, DW_AT_name("motioncal"), DW_AT_symbol_name("_motioncal")
	.dwattr DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr DW$89, DW_AT_accessibility(DW_ACCESS_public)
DW$90	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$90, DW_AT_name("framcheck"), DW_AT_symbol_name("_framcheck")
	.dwattr DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$90, DW_AT_accessibility(DW_ACCESS_public)
DW$91	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$91, DW_AT_name("pcmodbus"), DW_AT_symbol_name("_pcmodbus")
	.dwattr DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr DW$91, DW_AT_accessibility(DW_ACCESS_public)
DW$92	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$92, DW_AT_name("statusreflash"), DW_AT_symbol_name("_statusreflash")
	.dwattr DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$92, DW_AT_accessibility(DW_ACCESS_public)
DW$93	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$93, DW_AT_name("prewarn"), DW_AT_symbol_name("_prewarn")
	.dwattr DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$93, DW_AT_accessibility(DW_ACCESS_public)
DW$94	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$94, DW_AT_name("clocktofram"), DW_AT_symbol_name("_clocktofram")
	.dwattr DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr DW$94, DW_AT_accessibility(DW_ACCESS_public)
DW$95	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$95, DW_AT_name("debugrapidfast"), DW_AT_symbol_name("_debugrapidfast")
	.dwattr DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x3f]
	.dwattr DW$95, DW_AT_accessibility(DW_ACCESS_public)
DW$96	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$96, DW_AT_name("debugupdate"), DW_AT_symbol_name("_debugupdate")
	.dwattr DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$96, DW_AT_accessibility(DW_ACCESS_public)
DW$97	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$97, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr DW$97, DW_AT_accessibility(DW_ACCESS_public)
DW$98	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$98, DW_AT_name("startup"), DW_AT_symbol_name("_startup")
	.dwattr DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr DW$98, DW_AT_accessibility(DW_ACCESS_public)
DW$99	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$99, DW_AT_name("analogsettle"), DW_AT_symbol_name("_analogsettle")
	.dwattr DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr DW$99, DW_AT_accessibility(DW_ACCESS_public)
DW$100	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$100, DW_AT_name("reprogram"), DW_AT_symbol_name("_reprogram")
	.dwattr DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr DW$100, DW_AT_accessibility(DW_ACCESS_public)
DW$101	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$101, DW_AT_name("reprogramtimeout"), DW_AT_symbol_name("_reprogramtimeout")
	.dwattr DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr DW$101, DW_AT_accessibility(DW_ACCESS_public)
DW$102	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$102, DW_AT_name("dcmodestayalive"), DW_AT_symbol_name("_dcmodestayalive")
	.dwattr DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$102, DW_AT_accessibility(DW_ACCESS_public)
DW$103	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$103, DW_AT_name("biteventchange"), DW_AT_symbol_name("_biteventchange")
	.dwattr DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr DW$103, DW_AT_accessibility(DW_ACCESS_public)
DW$104	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$104, DW_AT_name("iSensorReplace"), DW_AT_symbol_name("_iSensorReplace")
	.dwattr DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr DW$104, DW_AT_accessibility(DW_ACCESS_public)
DW$105	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$105, DW_AT_name("deltarpm15Delay"), DW_AT_symbol_name("_deltarpm15Delay")
	.dwattr DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr DW$105, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_byte_size(0x01)
DW$106	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$106, DW_AT_name("inputtap"), DW_AT_symbol_name("_inputtap")
	.dwattr DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$106, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$25, DW_AT_byte_size(0x01)
DW$107	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$107, DW_AT_name("bitmap"), DW_AT_symbol_name("_bitmap")
	.dwattr DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$107, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_byte_size(0x01)
DW$108	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$108, DW_AT_name("graphvalue"), DW_AT_symbol_name("_graphvalue")
	.dwattr DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$108, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$27, DW_AT_byte_size(0x03)
DW$109	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$109, DW_AT_name("chanlowthreshold"), DW_AT_symbol_name("_chanlowthreshold")
	.dwattr DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$109, DW_AT_accessibility(DW_ACCESS_public)
DW$110	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$110, DW_AT_name("chanhighthreshold"), DW_AT_symbol_name("_chanhighthreshold")
	.dwattr DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$110, DW_AT_accessibility(DW_ACCESS_public)
DW$111	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$111, DW_AT_name("sensorscalingfactor"), DW_AT_symbol_name("_sensorscalingfactor")
	.dwattr DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$111, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_byte_size(0x02)
DW$112	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$112, DW_AT_name("shortlrate"), DW_AT_symbol_name("_shortlrate")
	.dwattr DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$112, DW_AT_accessibility(DW_ACCESS_public)
DW$113	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$113, DW_AT_name("longlrate"), DW_AT_symbol_name("_longlrate")
	.dwattr DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$113, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$29, DW_AT_byte_size(0x10)
DW$114	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$114, DW_AT_name("wiorequest"), DW_AT_symbol_name("_wiorequest")
	.dwattr DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$114, DW_AT_accessibility(DW_ACCESS_public)
DW$115	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$115, DW_AT_name("wiocancelled"), DW_AT_symbol_name("_wiocancelled")
	.dwattr DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$115, DW_AT_accessibility(DW_ACCESS_public)
DW$116	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$116, DW_AT_name("wioreceived"), DW_AT_symbol_name("_wioreceived")
	.dwattr DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$116, DW_AT_accessibility(DW_ACCESS_public)
DW$117	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$117, DW_AT_name("slaverequest"), DW_AT_symbol_name("_slaverequest")
	.dwattr DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$117, DW_AT_accessibility(DW_ACCESS_public)
DW$118	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$118, DW_AT_name("slavereceived"), DW_AT_symbol_name("_slavereceived")
	.dwattr DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$118, DW_AT_accessibility(DW_ACCESS_public)
DW$119	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$119, DW_AT_name("slaveretry"), DW_AT_symbol_name("_slaveretry")
	.dwattr DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$119, DW_AT_accessibility(DW_ACCESS_public)
DW$120	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$120, DW_AT_name("pcrequest"), DW_AT_symbol_name("_pcrequest")
	.dwattr DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$120, DW_AT_accessibility(DW_ACCESS_public)
DW$121	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$121, DW_AT_name("pcreqtimeout"), DW_AT_symbol_name("_pcreqtimeout")
	.dwattr DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$121, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$29

DW$T$32	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$32, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$32, DW_AT_byte_size(0x01)

DW$T$22	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$22, DW_AT_byte_size(0x0e)
DW$122	.dwtag  DW_TAG_subrange_type
	.dwattr DW$122, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$22

DW$T$16	.dwtag  DW_TAG_base_type, DW_AT_name("float")
	.dwattr DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$16, DW_AT_byte_size(0x02)
DW$T$20	.dwtag  DW_TAG_typedef, DW_AT_name("wioalarmstruct"), DW_AT_type(*DW$T$19)
	.dwattr DW$T$20, DW_AT_language(DW_LANG_C)

DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$19, DW_AT_name("tag_wioalarmstruct")
	.dwattr DW$T$19, DW_AT_byte_size(0x01)
DW$123	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$123, DW_AT_name("alarmupper"), DW_AT_symbol_name("_alarmupper")
	.dwattr DW$123, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$123, DW_AT_accessibility(DW_ACCESS_public)
DW$124	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$124, DW_AT_name("alarmupperlatched"), DW_AT_symbol_name("_alarmupperlatched")
	.dwattr DW$124, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$124, DW_AT_accessibility(DW_ACCESS_public)
DW$125	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$125, DW_AT_name("alarm"), DW_AT_symbol_name("_alarm")
	.dwattr DW$125, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$125, DW_AT_accessibility(DW_ACCESS_public)
DW$126	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$126, DW_AT_name("alarmlatched"), DW_AT_symbol_name("_alarmlatched")
	.dwattr DW$126, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$126, DW_AT_accessibility(DW_ACCESS_public)
DW$127	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$127, DW_AT_name("comms"), DW_AT_symbol_name("_comms")
	.dwattr DW$127, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$127, DW_AT_accessibility(DW_ACCESS_public)
DW$128	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$128, DW_AT_name("commslatched"), DW_AT_symbol_name("_commslatched")
	.dwattr DW$128, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$128, DW_AT_accessibility(DW_ACCESS_public)
DW$129	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$129, DW_AT_name("analoglow"), DW_AT_symbol_name("_analoglow")
	.dwattr DW$129, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$129, DW_AT_accessibility(DW_ACCESS_public)
DW$130	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$130, DW_AT_name("analoghigh"), DW_AT_symbol_name("_analoghigh")
	.dwattr DW$130, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$130, DW_AT_accessibility(DW_ACCESS_public)
DW$131	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$131, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$131, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$131, DW_AT_accessibility(DW_ACCESS_public)
DW$132	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$132, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$132, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$132, DW_AT_accessibility(DW_ACCESS_public)
DW$133	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$133, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$133, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$133, DW_AT_accessibility(DW_ACCESS_public)
DW$134	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$134, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$134, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$134, DW_AT_accessibility(DW_ACCESS_public)
DW$135	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$135, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$135, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$135, DW_AT_accessibility(DW_ACCESS_public)
DW$136	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$136, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$136, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$136, DW_AT_accessibility(DW_ACCESS_public)
DW$137	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$137, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$137, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$137, DW_AT_accessibility(DW_ACCESS_public)
DW$138	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$138, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$138, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$138, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$19


	.dwattr DW$28, DW_AT_external(0x01)
	.dwattr DW$28, DW_AT_type(*DW$T$11)
	.dwattr DW$22, DW_AT_external(0x01)
	.dwattr DW$20, DW_AT_external(0x01)
	.dwattr DW$23, DW_AT_external(0x01)
	.dwattr DW$24, DW_AT_external(0x01)
	.dwattr DW$21, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$139	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$139, DW_AT_location[DW_OP_reg0]
DW$140	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$140, DW_AT_location[DW_OP_reg1]
DW$141	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$141, DW_AT_location[DW_OP_reg2]
DW$142	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$142, DW_AT_location[DW_OP_reg3]
DW$143	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$143, DW_AT_location[DW_OP_reg4]
DW$144	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$144, DW_AT_location[DW_OP_reg5]
DW$145	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$145, DW_AT_location[DW_OP_reg6]
DW$146	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$146, DW_AT_location[DW_OP_reg7]
DW$147	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$147, DW_AT_location[DW_OP_reg8]
DW$148	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$148, DW_AT_location[DW_OP_reg9]
DW$149	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$149, DW_AT_location[DW_OP_reg10]
DW$150	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$150, DW_AT_location[DW_OP_reg11]
DW$151	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$151, DW_AT_location[DW_OP_reg12]
DW$152	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$152, DW_AT_location[DW_OP_reg13]
DW$153	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$153, DW_AT_location[DW_OP_reg14]
DW$154	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$154, DW_AT_location[DW_OP_reg15]
DW$155	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$155, DW_AT_location[DW_OP_reg16]
DW$156	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$156, DW_AT_location[DW_OP_reg17]
DW$157	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$157, DW_AT_location[DW_OP_reg18]
DW$158	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$158, DW_AT_location[DW_OP_reg19]
DW$159	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$159, DW_AT_location[DW_OP_reg20]
DW$160	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$160, DW_AT_location[DW_OP_reg21]
DW$161	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$161, DW_AT_location[DW_OP_reg22]
DW$162	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$162, DW_AT_location[DW_OP_reg23]
DW$163	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$163, DW_AT_location[DW_OP_reg24]
DW$164	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$164, DW_AT_location[DW_OP_reg25]
DW$165	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$165, DW_AT_location[DW_OP_reg26]
DW$166	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$166, DW_AT_location[DW_OP_reg27]
DW$167	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$167, DW_AT_location[DW_OP_reg28]
DW$168	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$168, DW_AT_location[DW_OP_reg29]
DW$169	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$169, DW_AT_location[DW_OP_reg30]
DW$170	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$170, DW_AT_location[DW_OP_reg31]
DW$171	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$171, DW_AT_location[DW_OP_regx 0x20]
DW$172	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$172, DW_AT_location[DW_OP_regx 0x21]
DW$173	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$173, DW_AT_location[DW_OP_regx 0x22]
DW$174	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$174, DW_AT_location[DW_OP_regx 0x23]
DW$175	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$175, DW_AT_location[DW_OP_regx 0x24]
DW$176	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$176, DW_AT_location[DW_OP_regx 0x25]
DW$177	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$177, DW_AT_location[DW_OP_regx 0x26]
DW$178	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$178, DW_AT_location[DW_OP_regx 0x27]
DW$179	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$179, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

