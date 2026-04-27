;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Thu Aug 18 12:16:26 2016                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("port.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)
;**************************************************************
;* CINIT RECORDS                                              *
;**************************************************************
	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_dwrand+0,32
	.field  	1922731955,32			; _dwrand @ 0


DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("BCDtoInt"), DW_AT_symbol_name("_BCDtoInt")
	.dwattr DW$1, DW_AT_type(*DW$T$11)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$1

DW$3	.dwtag  DW_TAG_variable, DW_AT_name("clocktime"), DW_AT_symbol_name("_clocktime")
	.dwattr DW$3, DW_AT_type(*DW$T$30)
	.dwattr DW$3, DW_AT_declaration(0x01)
	.dwattr DW$3, DW_AT_external(0x01)
_dwrand:	.usect	".ebss",2,1,1
DW$4	.dwtag  DW_TAG_variable, DW_AT_name("dwrand"), DW_AT_symbol_name("_dwrand")
	.dwattr DW$4, DW_AT_type(*DW$T$13)
	.dwattr DW$4, DW_AT_location[DW_OP_addr _dwrand]
;	C:\CCStudio_v3.3\C2000\cgtools\bin\opt2000.exe C:\Users\Andrew\AppData\Local\Temp\TI2402 C:\Users\Andrew\AppData\Local\Temp\TI2404 
;	C:\CCStudio_v3.3\C2000\cgtools\bin\ac2000.exe -q -D_INLINE -DLARGE_MODEL -IC:/CCStudio_v3.3/C2000/xdais/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/bios/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/rtdx/include/c2000 -IC:/CCStudio_v3.3/C2000/cgtools/include --version=28 --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\Andrew\AppData\Local\Temp\TI2402 --template_info_file C:\Users\Andrew\AppData\Local\Temp\TI2406 --object_file 
	.sect	".text"
	.global	_f_getrand

DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("f_getrand"), DW_AT_symbol_name("_f_getrand")
	.dwattr DW$5, DW_AT_low_pc(_f_getrand)
	.dwattr DW$5, DW_AT_high_pc(0x00)
	.dwattr DW$5, DW_AT_begin_file("port.c")
	.dwattr DW$5, DW_AT_begin_line(0x1f)
	.dwattr DW$5, DW_AT_begin_column(0x0f)
	.dwattr DW$5, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$5, DW_AT_skeletal(0x01)
	.dwpsn	"port.c",31,45

;***************************************************************
;* FNAME: _f_getrand                    FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_f_getrand:
;* AL    assigned to _rand
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rand"), DW_AT_symbol_name("_rand")
	.dwattr DW$6, DW_AT_type(*DW$T$13)
	.dwattr DW$6, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      XAR1,ACC              ; |31| 
        LCR       #_f_gettime           ; |34| 
        ; call occurs [#_f_gettime] ; |34| 
        MOVW      DP,#_dwrand
        MOVU      ACC,AL
        CLRC      SXM
        XOR       @_dwrand,AL           ; |34| 
        MOVB      XAR6,#0
        MOVW      DP,#_dwrand+1
	.dwpsn	"port.c",36,0
        XOR       @_dwrand+1,AH         ; |34| 
L1:    
DW$L$_f_getrand$2$B:
        MOVL      ACC,XAR1
        ANDB      AL,#0x01              ; |37| 
        MOVB      AH,#0
        TEST      ACC                   ; |37| 
        BF        L2,EQ                 ; |37| 
        ; branchcc occurs ; |37| 
DW$L$_f_getrand$2$E:
DW$L$_f_getrand$3$B:
        MOVW      DP,#_dwrand
        XOR       @_dwrand,#35778       ; |38| 
        MOVW      DP,#_dwrand+1
        XOR       @_dwrand+1,#13321     ; |38| 
DW$L$_f_getrand$3$E:
L2:    
DW$L$_f_getrand$4$B:
        MOVW      DP,#_dwrand
        MOVL      ACC,@_dwrand          ; |40| 
        AND       ACC,#2048 << 16       ; |40| 
        BF        L3,NEQ                ; |40| 
        ; branchcc occurs ; |40| 
DW$L$_f_getrand$4$E:
DW$L$_f_getrand$5$B:
        MOVW      DP,#_dwrand
        MOVL      ACC,@_dwrand          ; |44| 
        LSL       ACC,1                 ; |44| 
        BF        L4,UNC                ; |44| 
        ; branch occurs ; |44| 
DW$L$_f_getrand$5$E:
L3:    
DW$L$_f_getrand$6$B:
        MOVW      DP,#_dwrand
        MOVL      ACC,@_dwrand          ; |41| 
        LSL       ACC,1                 ; |41| 
        ORB       AL,#0x01              ; |41| 
DW$L$_f_getrand$6$E:
L4:    
DW$L$_f_getrand$7$B:
        MOVW      DP,#_dwrand
        MOVL      @_dwrand,ACC          ; |41| 
        MOVL      ACC,XAR1
        SFR       ACC,1                 ; |45| 
        MOVL      XAR1,ACC              ; |45| 
        MOVL      ACC,XAR6              ; |45| 
        ADDB      ACC,#1                ; |36| 
        MOVL      XAR6,ACC              ; |36| 
        MOVB      ACC,#32
        CMPL      ACC,XAR6              ; |36| 
	.dwpsn	"port.c",46,0
        BF        L1,GT                 ; |36| 
        ; branchcc occurs ; |36| 
DW$L$_f_getrand$7$E:
        MOVL      XAR1,*--SP            ; |48| 
        MOVW      DP,#_dwrand
        MOVL      ACC,@_dwrand          ; |48| 
	.dwpsn	"port.c",49,1
        LRETR
        ; return occurs

DW$7	.dwtag  DW_TAG_loop
	.dwattr DW$7, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\port.asm:L1:1:1471518986")
	.dwattr DW$7, DW_AT_begin_file("port.c")
	.dwattr DW$7, DW_AT_begin_line(0x24)
	.dwattr DW$7, DW_AT_end_line(0x2e)
DW$8	.dwtag  DW_TAG_loop_range
	.dwattr DW$8, DW_AT_low_pc(DW$L$_f_getrand$2$B)
	.dwattr DW$8, DW_AT_high_pc(DW$L$_f_getrand$2$E)
DW$9	.dwtag  DW_TAG_loop_range
	.dwattr DW$9, DW_AT_low_pc(DW$L$_f_getrand$3$B)
	.dwattr DW$9, DW_AT_high_pc(DW$L$_f_getrand$3$E)
DW$10	.dwtag  DW_TAG_loop_range
	.dwattr DW$10, DW_AT_low_pc(DW$L$_f_getrand$4$B)
	.dwattr DW$10, DW_AT_high_pc(DW$L$_f_getrand$4$E)
DW$11	.dwtag  DW_TAG_loop_range
	.dwattr DW$11, DW_AT_low_pc(DW$L$_f_getrand$5$B)
	.dwattr DW$11, DW_AT_high_pc(DW$L$_f_getrand$5$E)
DW$12	.dwtag  DW_TAG_loop_range
	.dwattr DW$12, DW_AT_low_pc(DW$L$_f_getrand$6$B)
	.dwattr DW$12, DW_AT_high_pc(DW$L$_f_getrand$6$E)
DW$13	.dwtag  DW_TAG_loop_range
	.dwattr DW$13, DW_AT_low_pc(DW$L$_f_getrand$7$B)
	.dwattr DW$13, DW_AT_high_pc(DW$L$_f_getrand$7$E)
	.dwendtag DW$7

	.dwattr DW$5, DW_AT_end_file("port.c")
	.dwattr DW$5, DW_AT_end_line(0x31)
	.dwattr DW$5, DW_AT_end_column(0x01)
	.dwendtag DW$5

	.sect	".text"
	.global	_f_getdate

DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("f_getdate"), DW_AT_symbol_name("_f_getdate")
	.dwattr DW$14, DW_AT_low_pc(_f_getdate)
	.dwattr DW$14, DW_AT_high_pc(0x00)
	.dwattr DW$14, DW_AT_begin_file("port.c")
	.dwattr DW$14, DW_AT_begin_line(0x40)
	.dwattr DW$14, DW_AT_begin_column(0x10)
	.dwattr DW$14, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$14, DW_AT_skeletal(0x01)
	.dwpsn	"port.c",64,32

;***************************************************************
;* FNAME: _f_getdate                    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_f_getdate:
        MOVL      *SP++,XAR1
        MOVW      DP,#_clocktime+7
        MOVL      *SP++,XAR2
        MOV       AL,@_clocktime+7      ; |70| 
        LCR       #_BCDtoInt            ; |70| 
        ; call occurs [#_BCDtoInt] ; |70| 
        MOV       AH,#2000              ; |70| 
        ADD       AH,AL                 ; |70| 
        MOVW      DP,#_clocktime+6
        MOVZ      AR2,AH                ; |70| 
        MOV       AL,@_clocktime+6      ; |71| 
        LCR       #_BCDtoInt            ; |71| 
        ; call occurs [#_BCDtoInt] ; |71| 
        MOVZ      AR1,AL                ; |71| 
        MOVW      DP,#_clocktime+5
        MOV       AL,@_clocktime+5      ; |72| 
        LCR       #_BCDtoInt            ; |72| 
        ; call occurs [#_BCDtoInt] ; |72| 
        SUB       AR2,#1980             ; |76| 
        MOVZ      AR6,AL                ; |72| 
        MOV       ACC,AR2 << #9         ; |76| 
        MOVL      XAR2,*--SP            ; |76| 
        AND       AH,AR1,#0x000f        ; |76| 
        LSL       AH,5                  ; |76| 
        OR        AH,AL                 ; |76| 
        MOVL      XAR1,*--SP            ; |76| 
        AND       AL,AR6,#0x001f        ; |76| 
        OR        AL,AH                 ; |76| 
	.dwpsn	"port.c",77,1
        LRETR
        ; return occurs
	.dwattr DW$14, DW_AT_end_file("port.c")
	.dwattr DW$14, DW_AT_end_line(0x4d)
	.dwattr DW$14, DW_AT_end_column(0x01)
	.dwendtag DW$14

	.sect	".text"
	.global	_f_gettime

DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("f_gettime"), DW_AT_symbol_name("_f_gettime")
	.dwattr DW$15, DW_AT_low_pc(_f_gettime)
	.dwattr DW$15, DW_AT_high_pc(0x00)
	.dwattr DW$15, DW_AT_begin_file("port.c")
	.dwattr DW$15, DW_AT_begin_line(0x5c)
	.dwattr DW$15, DW_AT_begin_column(0x10)
	.dwattr DW$15, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$15, DW_AT_skeletal(0x01)
	.dwpsn	"port.c",92,32

;***************************************************************
;* FNAME: _f_gettime                    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_f_gettime:
        MOVL      *SP++,XAR1
        MOVW      DP,#_clocktime+3
        MOVL      *SP++,XAR2
        MOV       AL,@_clocktime+3      ; |98| 
        LCR       #_BCDtoInt            ; |98| 
        ; call occurs [#_BCDtoInt] ; |98| 
        MOVZ      AR2,AL                ; |98| 
        MOVW      DP,#_clocktime+2
        MOV       AL,@_clocktime+2      ; |99| 
        LCR       #_BCDtoInt            ; |99| 
        ; call occurs [#_BCDtoInt] ; |99| 
        MOVZ      AR1,AL                ; |99| 
        MOVW      DP,#_clocktime+1
        MOV       AL,@_clocktime+1      ; |100| 
        LCR       #_BCDtoInt            ; |100| 
        ; call occurs [#_BCDtoInt] ; |100| 
        MOVZ      AR6,AL                ; |100| 
        MOV       ACC,AR2 << #11        ; |105| 
        AND       AH,AR1,#0x003f        ; |105| 
        LSL       AH,5                  ; |105| 
        MOVL      XAR2,*--SP            ; |105| 
        OR        AH,AL                 ; |105| 
        MOVL      XAR1,*--SP            ; |105| 
        MOV       AL,AR6                ; |105| 
        LSR       AL,1                  ; |105| 
        ANDB      AL,#0x1f              ; |105| 
        OR        AL,AH                 ; |105| 
	.dwpsn	"port.c",106,1
        LRETR
        ; return occurs
	.dwattr DW$15, DW_AT_end_file("port.c")
	.dwattr DW$15, DW_AT_end_line(0x6a)
	.dwattr DW$15, DW_AT_end_column(0x01)
	.dwendtag DW$15

	.sect	".text"
	.global	_f_mutex_create

DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("f_mutex_create"), DW_AT_symbol_name("_f_mutex_create")
	.dwattr DW$16, DW_AT_low_pc(_f_mutex_create)
	.dwattr DW$16, DW_AT_high_pc(0x00)
	.dwattr DW$16, DW_AT_begin_file("port.c")
	.dwattr DW$16, DW_AT_begin_line(0x79)
	.dwattr DW$16, DW_AT_begin_column(0x05)
	.dwattr DW$16, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$16, DW_AT_skeletal(0x01)
	.dwpsn	"port.c",122,1

;***************************************************************
;* FNAME: _f_mutex_create               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_f_mutex_create:
;* AR4   assigned to _mutex
DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mutex"), DW_AT_symbol_name("_mutex")
	.dwattr DW$17, DW_AT_type(*DW$T$21)
	.dwattr DW$17, DW_AT_location[DW_OP_reg12]
        MOVB      ACC,#0
        MOVL      *+XAR4[0],ACC         ; |123| 
        MOVB      AL,#0
	.dwpsn	"port.c",125,1
        LRETR
        ; return occurs
	.dwattr DW$16, DW_AT_end_file("port.c")
	.dwattr DW$16, DW_AT_end_line(0x7d)
	.dwattr DW$16, DW_AT_end_column(0x01)
	.dwendtag DW$16

	.sect	".text"
	.global	_f_mutex_delete

DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("f_mutex_delete"), DW_AT_symbol_name("_f_mutex_delete")
	.dwattr DW$18, DW_AT_low_pc(_f_mutex_delete)
	.dwattr DW$18, DW_AT_high_pc(0x00)
	.dwattr DW$18, DW_AT_begin_file("port.c")
	.dwattr DW$18, DW_AT_begin_line(0x8d)
	.dwattr DW$18, DW_AT_begin_column(0x05)
	.dwattr DW$18, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$18, DW_AT_skeletal(0x01)
	.dwpsn	"port.c",142,1

;***************************************************************
;* FNAME: _f_mutex_delete               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_f_mutex_delete:
;* AR4   assigned to _mutex
DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mutex"), DW_AT_symbol_name("_mutex")
	.dwattr DW$19, DW_AT_type(*DW$T$21)
	.dwattr DW$19, DW_AT_location[DW_OP_reg12]
        MOVB      ACC,#0
        MOVL      *+XAR4[0],ACC         ; |143| 
        MOVB      AL,#0
	.dwpsn	"port.c",145,1
        LRETR
        ; return occurs
	.dwattr DW$18, DW_AT_end_file("port.c")
	.dwattr DW$18, DW_AT_end_line(0x91)
	.dwattr DW$18, DW_AT_end_column(0x01)
	.dwendtag DW$18

	.sect	".text"
	.global	_f_mutex_get

DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("f_mutex_get"), DW_AT_symbol_name("_f_mutex_get")
	.dwattr DW$20, DW_AT_low_pc(_f_mutex_get)
	.dwattr DW$20, DW_AT_high_pc(0x00)
	.dwattr DW$20, DW_AT_begin_file("port.c")
	.dwattr DW$20, DW_AT_begin_line(0xa1)
	.dwattr DW$20, DW_AT_begin_column(0x05)
	.dwattr DW$20, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$20, DW_AT_skeletal(0x01)
	.dwpsn	"port.c",162,1

;***************************************************************
;* FNAME: _f_mutex_get                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_f_mutex_get:
;* AR4   assigned to _mutex
DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mutex"), DW_AT_symbol_name("_mutex")
	.dwattr DW$21, DW_AT_type(*DW$T$21)
	.dwattr DW$21, DW_AT_location[DW_OP_reg12]
        MOVL      ACC,*+XAR4[0]         ; |163| 
        BF        L5,EQ                 ; |163| 
        ; branchcc occurs ; |163| 
        MOVB      AL,#1                 ; |163| 
        BF        L6,UNC                ; |163| 
        ; branch occurs ; |163| 
L5:    
        MOVB      ACC,#1
        MOVL      *+XAR4[0],ACC         ; |165| 
        MOVB      AL,#0
L6:    
	.dwpsn	"port.c",168,1
        LRETR
        ; return occurs
	.dwattr DW$20, DW_AT_end_file("port.c")
	.dwattr DW$20, DW_AT_end_line(0xa8)
	.dwattr DW$20, DW_AT_end_column(0x01)
	.dwendtag DW$20

	.sect	".text"
	.global	_f_mutex_put

DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("f_mutex_put"), DW_AT_symbol_name("_f_mutex_put")
	.dwattr DW$22, DW_AT_low_pc(_f_mutex_put)
	.dwattr DW$22, DW_AT_high_pc(0x00)
	.dwattr DW$22, DW_AT_begin_file("port.c")
	.dwattr DW$22, DW_AT_begin_line(0xb8)
	.dwattr DW$22, DW_AT_begin_column(0x05)
	.dwattr DW$22, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$22, DW_AT_skeletal(0x01)
	.dwpsn	"port.c",185,1

;***************************************************************
;* FNAME: _f_mutex_put                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_f_mutex_put:
;* AR4   assigned to _mutex
DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mutex"), DW_AT_symbol_name("_mutex")
	.dwattr DW$23, DW_AT_type(*DW$T$21)
	.dwattr DW$23, DW_AT_location[DW_OP_reg12]
        MOVB      ACC,#0
        MOVL      *+XAR4[0],ACC         ; |186| 
        MOVB      AL,#0
	.dwpsn	"port.c",188,1
        LRETR
        ; return occurs
	.dwattr DW$22, DW_AT_end_file("port.c")
	.dwattr DW$22, DW_AT_end_line(0xbc)
	.dwattr DW$22, DW_AT_end_column(0x01)
	.dwendtag DW$22

	.sect	".text"
	.global	_fn_gettaskID

DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_gettaskID"), DW_AT_symbol_name("_fn_gettaskID")
	.dwattr DW$24, DW_AT_low_pc(_fn_gettaskID)
	.dwattr DW$24, DW_AT_high_pc(0x00)
	.dwattr DW$24, DW_AT_begin_file("port.c")
	.dwattr DW$24, DW_AT_begin_line(0xcd)
	.dwattr DW$24, DW_AT_begin_column(0x06)
	.dwattr DW$24, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$24, DW_AT_skeletal(0x01)
	.dwpsn	"port.c",206,1

;***************************************************************
;* FNAME: _fn_gettaskID                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_fn_gettaskID:
        MOVB      ACC,#1
	.dwpsn	"port.c",208,1
        LRETR
        ; return occurs
	.dwattr DW$24, DW_AT_end_file("port.c")
	.dwattr DW$24, DW_AT_end_line(0xd0)
	.dwattr DW$24, DW_AT_end_column(0x01)
	.dwendtag DW$24

;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_BCDtoInt
	.global	_clocktime

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

DW$T$20	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$9)
	.dwattr DW$T$20, DW_AT_language(DW_LANG_C)

DW$T$22	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$22, DW_AT_language(DW_LANG_C)
DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
	.dwendtag DW$T$22

DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)

DW$T$23	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)
DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$23


DW$T$27	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$27, DW_AT_language(DW_LANG_C)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)
DW$T$21	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$21, DW_AT_address_class(0x16)

DW$T$29	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$T$29

DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("clockstruct"), DW_AT_type(*DW$T$19)
	.dwattr DW$T$30, DW_AT_language(DW_LANG_C)
DW$T$9	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned short")
	.dwattr DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$9, DW_AT_byte_size(0x01)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)
DW$T$12	.dwtag  DW_TAG_base_type, DW_AT_name("long")
	.dwattr DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$12, DW_AT_byte_size(0x02)

DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$19, DW_AT_name("tag_clockstruct")
	.dwattr DW$T$19, DW_AT_byte_size(0x0e)
DW$28	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$28, DW_AT_name("WPstate"), DW_AT_symbol_name("_WPstate")
	.dwattr DW$28, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$28, DW_AT_accessibility(DW_ACCESS_public)
DW$29	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$29, DW_AT_name("seconds"), DW_AT_symbol_name("_seconds")
	.dwattr DW$29, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$29, DW_AT_accessibility(DW_ACCESS_public)
DW$30	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$30, DW_AT_name("minutes"), DW_AT_symbol_name("_minutes")
	.dwattr DW$30, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$30, DW_AT_accessibility(DW_ACCESS_public)
DW$31	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$31, DW_AT_name("hours"), DW_AT_symbol_name("_hours")
	.dwattr DW$31, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$31, DW_AT_accessibility(DW_ACCESS_public)
DW$32	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$32, DW_AT_name("day"), DW_AT_symbol_name("_day")
	.dwattr DW$32, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$32, DW_AT_accessibility(DW_ACCESS_public)
DW$33	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$33, DW_AT_name("date"), DW_AT_symbol_name("_date")
	.dwattr DW$33, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$33, DW_AT_accessibility(DW_ACCESS_public)
DW$34	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$34, DW_AT_name("month"), DW_AT_symbol_name("_month")
	.dwattr DW$34, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$34, DW_AT_accessibility(DW_ACCESS_public)
DW$35	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$35, DW_AT_name("year"), DW_AT_symbol_name("_year")
	.dwattr DW$35, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$35, DW_AT_accessibility(DW_ACCESS_public)
DW$36	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$36, DW_AT_name("control"), DW_AT_symbol_name("_control")
	.dwattr DW$36, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$36, DW_AT_accessibility(DW_ACCESS_public)
DW$37	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$37, DW_AT_name("framstamp"), DW_AT_symbol_name("_framstamp")
	.dwattr DW$37, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$37, DW_AT_accessibility(DW_ACCESS_public)
DW$38	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$38, DW_AT_name("clockerr"), DW_AT_symbol_name("_clockerr")
	.dwattr DW$38, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$38, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$19


	.dwattr DW$14, DW_AT_external(0x01)
	.dwattr DW$14, DW_AT_type(*DW$T$9)
	.dwattr DW$5, DW_AT_external(0x01)
	.dwattr DW$5, DW_AT_type(*DW$T$13)
	.dwattr DW$15, DW_AT_external(0x01)
	.dwattr DW$15, DW_AT_type(*DW$T$9)
	.dwattr DW$16, DW_AT_external(0x01)
	.dwattr DW$16, DW_AT_type(*DW$T$10)
	.dwattr DW$18, DW_AT_external(0x01)
	.dwattr DW$18, DW_AT_type(*DW$T$10)
	.dwattr DW$20, DW_AT_external(0x01)
	.dwattr DW$20, DW_AT_type(*DW$T$10)
	.dwattr DW$22, DW_AT_external(0x01)
	.dwattr DW$22, DW_AT_type(*DW$T$10)
	.dwattr DW$24, DW_AT_external(0x01)
	.dwattr DW$24, DW_AT_type(*DW$T$12)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$39	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$39, DW_AT_location[DW_OP_reg0]
DW$40	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$40, DW_AT_location[DW_OP_reg1]
DW$41	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$41, DW_AT_location[DW_OP_reg2]
DW$42	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$42, DW_AT_location[DW_OP_reg3]
DW$43	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$43, DW_AT_location[DW_OP_reg4]
DW$44	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$44, DW_AT_location[DW_OP_reg5]
DW$45	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$45, DW_AT_location[DW_OP_reg6]
DW$46	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$46, DW_AT_location[DW_OP_reg7]
DW$47	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$47, DW_AT_location[DW_OP_reg8]
DW$48	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$48, DW_AT_location[DW_OP_reg9]
DW$49	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$49, DW_AT_location[DW_OP_reg10]
DW$50	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$50, DW_AT_location[DW_OP_reg11]
DW$51	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$51, DW_AT_location[DW_OP_reg12]
DW$52	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$52, DW_AT_location[DW_OP_reg13]
DW$53	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$53, DW_AT_location[DW_OP_reg14]
DW$54	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$54, DW_AT_location[DW_OP_reg15]
DW$55	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$55, DW_AT_location[DW_OP_reg16]
DW$56	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$56, DW_AT_location[DW_OP_reg17]
DW$57	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$57, DW_AT_location[DW_OP_reg18]
DW$58	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$58, DW_AT_location[DW_OP_reg19]
DW$59	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$59, DW_AT_location[DW_OP_reg20]
DW$60	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$60, DW_AT_location[DW_OP_reg21]
DW$61	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$61, DW_AT_location[DW_OP_reg22]
DW$62	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$62, DW_AT_location[DW_OP_reg23]
DW$63	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$63, DW_AT_location[DW_OP_reg24]
DW$64	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$64, DW_AT_location[DW_OP_reg25]
DW$65	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$65, DW_AT_location[DW_OP_reg26]
DW$66	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$66, DW_AT_location[DW_OP_reg27]
DW$67	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$67, DW_AT_location[DW_OP_reg28]
DW$68	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$68, DW_AT_location[DW_OP_reg29]
DW$69	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$69, DW_AT_location[DW_OP_reg30]
DW$70	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$70, DW_AT_location[DW_OP_reg31]
DW$71	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$71, DW_AT_location[DW_OP_regx 0x20]
DW$72	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$72, DW_AT_location[DW_OP_regx 0x21]
DW$73	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$73, DW_AT_location[DW_OP_regx 0x22]
DW$74	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$74, DW_AT_location[DW_OP_regx 0x23]
DW$75	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$75, DW_AT_location[DW_OP_regx 0x24]
DW$76	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$76, DW_AT_location[DW_OP_regx 0x25]
DW$77	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$77, DW_AT_location[DW_OP_regx 0x26]
DW$78	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$78, DW_AT_location[DW_OP_regx 0x27]
DW$79	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$79, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

