;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Thu Aug 18 12:16:07 2016                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("common.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)
;**************************************************************
;* CINIT RECORDS                                              *
;**************************************************************
	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_MagicNumber+0,32
	.field  	0,32			; _MagicNumber @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_f_filesystem_initialized+0,32
	.field  	0,16			; _f_filesystem_initialized @ 0


DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("memcpy"), DW_AT_symbol_name("_memcpy")
	.dwattr DW$1, DW_AT_type(*DW$T$3)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$81)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$1


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("memset"), DW_AT_symbol_name("_memset")
	.dwattr DW$5, DW_AT_type(*DW$T$3)
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$83)
	.dwendtag DW$5


DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_getdirsector"), DW_AT_symbol_name("__f_getdirsector")
	.dwattr DW$9, DW_AT_type(*DW$T$10)
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$92)
DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$9


DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("f_getrand"), DW_AT_symbol_name("_f_getrand")
	.dwattr DW$12, DW_AT_type(*DW$T$13)
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)
DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$12


DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("f_getdate"), DW_AT_symbol_name("_f_getdate")
	.dwattr DW$14, DW_AT_type(*DW$T$9)
	.dwattr DW$14, DW_AT_declaration(0x01)
	.dwattr DW$14, DW_AT_external(0x01)

DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("f_gettime"), DW_AT_symbol_name("_f_gettime")
	.dwattr DW$15, DW_AT_type(*DW$T$9)
	.dwattr DW$15, DW_AT_declaration(0x01)
	.dwattr DW$15, DW_AT_external(0x01)

DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("f_mutex_get"), DW_AT_symbol_name("_f_mutex_get")
	.dwattr DW$16, DW_AT_type(*DW$T$10)
	.dwattr DW$16, DW_AT_declaration(0x01)
	.dwattr DW$16, DW_AT_external(0x01)
DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
	.dwendtag DW$16


DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("f_mutex_put"), DW_AT_symbol_name("_f_mutex_put")
	.dwattr DW$18, DW_AT_type(*DW$T$10)
	.dwattr DW$18, DW_AT_declaration(0x01)
	.dwattr DW$18, DW_AT_external(0x01)
DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
	.dwendtag DW$18


DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("f_mutex_create"), DW_AT_symbol_name("_f_mutex_create")
	.dwattr DW$20, DW_AT_type(*DW$T$10)
	.dwattr DW$20, DW_AT_declaration(0x01)
	.dwattr DW$20, DW_AT_external(0x01)
DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
	.dwendtag DW$20


DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("f_mutex_delete"), DW_AT_symbol_name("_f_mutex_delete")
	.dwattr DW$22, DW_AT_type(*DW$T$10)
	.dwattr DW$22, DW_AT_declaration(0x01)
	.dwattr DW$22, DW_AT_external(0x01)
DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
	.dwendtag DW$22


DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_gettaskID"), DW_AT_symbol_name("_fn_gettaskID")
	.dwattr DW$24, DW_AT_type(*DW$T$12)
	.dwattr DW$24, DW_AT_declaration(0x01)
	.dwattr DW$24, DW_AT_external(0x01)

DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_writedirsector"), DW_AT_symbol_name("__f_writedirsector")
	.dwattr DW$25, DW_AT_type(*DW$T$10)
	.dwattr DW$25, DW_AT_declaration(0x01)
	.dwattr DW$25, DW_AT_external(0x01)
DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$92)
	.dwendtag DW$25

DW$27	.dwtag  DW_TAG_variable, DW_AT_name("truncate_tmp"), DW_AT_symbol_name("_truncate_tmp")
	.dwattr DW$27, DW_AT_type(*DW$T$260)
	.dwattr DW$27, DW_AT_declaration(0x01)
	.dwattr DW$27, DW_AT_external(0x01)
	.global	_f_filesystem
_f_filesystem:	.usect	".filesystem",2634,0,1
DW$28	.dwtag  DW_TAG_variable, DW_AT_name("f_filesystem"), DW_AT_symbol_name("_f_filesystem")
	.dwattr DW$28, DW_AT_location[DW_OP_addr _f_filesystem]
	.dwattr DW$28, DW_AT_type(*DW$T$299)
	.dwattr DW$28, DW_AT_external(0x01)
	.global	_MagicNumber
_MagicNumber:	.usect	".ebss",2,1,1
DW$29	.dwtag  DW_TAG_variable, DW_AT_name("MagicNumber"), DW_AT_symbol_name("_MagicNumber")
	.dwattr DW$29, DW_AT_location[DW_OP_addr _MagicNumber]
	.dwattr DW$29, DW_AT_type(*DW$T$13)
	.dwattr DW$29, DW_AT_external(0x01)
	.global	_f_filesystem_initialized
_f_filesystem_initialized:	.usect	".ebss",1,1,0
DW$30	.dwtag  DW_TAG_variable, DW_AT_name("f_filesystem_initialized"), DW_AT_symbol_name("_f_filesystem_initialized")
	.dwattr DW$30, DW_AT_location[DW_OP_addr _f_filesystem_initialized]
	.dwattr DW$30, DW_AT_type(*DW$T$6)
	.dwattr DW$30, DW_AT_external(0x01)
	.global	_g_multi
_g_multi:	.usect	".ebss",26,1,1
DW$31	.dwtag  DW_TAG_variable, DW_AT_name("g_multi"), DW_AT_symbol_name("_g_multi")
	.dwattr DW$31, DW_AT_location[DW_OP_addr _g_multi]
	.dwattr DW$31, DW_AT_type(*DW$T$273)
	.dwattr DW$31, DW_AT_external(0x01)
	.sect	".econst"
	.align	2
_FAT32_CS:
	.field  	131072,32			; _FAT32_CS[0]._max_sectors @ 0
	.field  	1,16			; _FAT32_CS[0]._sector_per_cluster @ 32
	.space	16
	.field  	262144,32			; _FAT32_CS[1]._max_sectors @ 64
	.field  	2,16			; _FAT32_CS[1]._sector_per_cluster @ 96
	.space	16
	.field  	524288,32			; _FAT32_CS[2]._max_sectors @ 128
	.field  	4,16			; _FAT32_CS[2]._sector_per_cluster @ 160
	.space	16
	.field  	16777216,32			; _FAT32_CS[3]._max_sectors @ 192
	.field  	8,16			; _FAT32_CS[3]._sector_per_cluster @ 224
	.space	16
	.field  	33554432,32			; _FAT32_CS[4]._max_sectors @ 256
	.field  	16,16			; _FAT32_CS[4]._sector_per_cluster @ 288
	.space	16
	.field  	268435440,32			; _FAT32_CS[5]._max_sectors @ 320
	.field  	32,16			; _FAT32_CS[5]._sector_per_cluster @ 352
	.space	16

DW$32	.dwtag  DW_TAG_variable, DW_AT_name("FAT32_CS"), DW_AT_symbol_name("_FAT32_CS")
	.dwattr DW$32, DW_AT_type(*DW$T$303)
	.dwattr DW$32, DW_AT_location[DW_OP_addr _FAT32_CS]
	.sect	".econst"
	.align	1
_$T0$1:
	.field  	0,16			; _$T0$1[0] @ 0
	.field  	2,16			; _$T0$1[1] @ 16
	.field  	3,16			; _$T0$1[2] @ 32
	.field  	7,16			; _$T0$1[3] @ 48

DW$33	.dwtag  DW_TAG_variable, DW_AT_name("$T0$1"), DW_AT_symbol_name("_$T0$1")
	.dwattr DW$33, DW_AT_type(*DW$T$122)
	.dwattr DW$33, DW_AT_location[DW_OP_addr _$T0$1]
;	C:\CCStudio_v3.3\C2000\cgtools\bin\opt2000.exe C:\Users\Andrew\AppData\Local\Temp\TI2882 C:\Users\Andrew\AppData\Local\Temp\TI2884 
;	C:\CCStudio_v3.3\C2000\cgtools\bin\ac2000.exe -q -D_INLINE -DLARGE_MODEL -IC:/CCStudio_v3.3/C2000/xdais/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/bios/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/rtdx/include/c2000 -IC:/CCStudio_v3.3/C2000/cgtools/include --version=28 --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\Andrew\AppData\Local\Temp\TI2882 --template_info_file C:\Users\Andrew\AppData\Local\Temp\TI2886 --object_file 
	.sect	".text"
	.global	_fn_getversion

DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_getversion"), DW_AT_symbol_name("_fn_getversion")
	.dwattr DW$34, DW_AT_low_pc(_fn_getversion)
	.dwattr DW$34, DW_AT_high_pc(0x00)
	.dwattr DW$34, DW_AT_begin_file("common.c")
	.dwattr DW$34, DW_AT_begin_line(0x54)
	.dwattr DW$34, DW_AT_begin_column(0x07)
	.dwattr DW$34, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$34, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",84,27

;***************************************************************
;* FNAME: _fn_getversion                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_fn_getversion:
        MOVL      XAR4,#FSL1            ; |87| 
	.dwpsn	"common.c",94,1
        LRETR
        ; return occurs
	.dwattr DW$34, DW_AT_end_file("common.c")
	.dwattr DW$34, DW_AT_end_line(0x5e)
	.dwattr DW$34, DW_AT_end_column(0x01)
	.dwendtag DW$34

	.sect	".text"
	.global	__f_getword

DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_getword"), DW_AT_symbol_name("__f_getword")
	.dwattr DW$35, DW_AT_low_pc(__f_getword)
	.dwattr DW$35, DW_AT_high_pc(0x00)
	.dwattr DW$35, DW_AT_begin_file("common.c")
	.dwattr DW$35, DW_AT_begin_line(0x71)
	.dwattr DW$35, DW_AT_begin_column(0x10)
	.dwattr DW$35, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$35, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",113,38

;***************************************************************
;* FNAME: __f_getword                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

__f_getword:
;* AR4   assigned to _ptr
DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$36, DW_AT_type(*DW$T$3)
	.dwattr DW$36, DW_AT_location[DW_OP_reg12]
        MOV       AH,*+XAR4[0]          ; |118| 
        ANDB      AH,#0xff              ; |118| 
        AND       AL,*+XAR4[1],#0x00ff  ; |116| 
        LSL       AL,8                  ; |117| 
        OR        AL,AH                 ; |118| 
	.dwpsn	"common.c",120,1
        LRETR
        ; return occurs
	.dwattr DW$35, DW_AT_end_file("common.c")
	.dwattr DW$35, DW_AT_end_line(0x78)
	.dwattr DW$35, DW_AT_end_column(0x01)
	.dwendtag DW$35

	.sect	".text"
	.global	__f_setword

DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_setword"), DW_AT_symbol_name("__f_setword")
	.dwattr DW$37, DW_AT_low_pc(__f_setword)
	.dwattr DW$37, DW_AT_high_pc(0x00)
	.dwattr DW$37, DW_AT_begin_file("common.c")
	.dwattr DW$37, DW_AT_begin_line(0x87)
	.dwattr DW$37, DW_AT_begin_column(0x06)
	.dwattr DW$37, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$37, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",135,47

;***************************************************************
;* FNAME: __f_setword                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

__f_setword:
;* AR4   assigned to _ptr
DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$38, DW_AT_type(*DW$T$3)
	.dwattr DW$38, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _num
DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num"), DW_AT_symbol_name("_num")
	.dwattr DW$39, DW_AT_type(*DW$T$9)
	.dwattr DW$39, DW_AT_location[DW_OP_reg0]
        MOV       AH,AL                 ; |137| 
        LSR       AH,8                  ; |137| 
        ANDB      AL,#255               ; |138| 
        MOV       *+XAR4[1],AH          ; |137| 
        MOV       *+XAR4[0],AL          ; |138| 
	.dwpsn	"common.c",139,1
        LRETR
        ; return occurs
	.dwattr DW$37, DW_AT_end_file("common.c")
	.dwattr DW$37, DW_AT_end_line(0x8b)
	.dwattr DW$37, DW_AT_end_column(0x01)
	.dwendtag DW$37

	.sect	".text"
	.global	__f_getlong

DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_getlong"), DW_AT_symbol_name("__f_getlong")
	.dwattr DW$40, DW_AT_low_pc(__f_getlong)
	.dwattr DW$40, DW_AT_high_pc(0x00)
	.dwattr DW$40, DW_AT_begin_file("common.c")
	.dwattr DW$40, DW_AT_begin_line(0x9d)
	.dwattr DW$40, DW_AT_begin_column(0x0f)
	.dwattr DW$40, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$40, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",157,37

;***************************************************************
;* FNAME: __f_getlong                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

__f_getlong:
;* AR4   assigned to _ptr
DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$41, DW_AT_type(*DW$T$3)
	.dwattr DW$41, DW_AT_location[DW_OP_reg12]
        MOV       AL,*+XAR4[3]          ; |160| 
        ANDB      AL,#0xff              ; |160| 
        MOVZ      AR7,AL
        MOVL      ACC,XAR7              ; |160| 
        LSL       ACC,8                 ; |161| 
        MOVL      XAR7,ACC              ; |161| 
        MOV       AL,*+XAR4[2]          ; |162| 
        ANDB      AL,#0xff              ; |162| 
        MOVZ      AR6,AL                ; |162| 
        MOVL      ACC,XAR7              ; |162| 
        OR        ACC,AR6               ; |162| 
        LSL       ACC,8                 ; |163| 
        MOVL      XAR7,ACC              ; |163| 
        MOV       AL,*+XAR4[1]          ; |164| 
        ANDB      AL,#0xff              ; |164| 
        MOVZ      AR6,AL                ; |164| 
        MOVL      ACC,XAR7              ; |164| 
        OR        ACC,AR6               ; |164| 
        LSL       ACC,8                 ; |165| 
        MOVL      XAR7,ACC              ; |165| 
        MOV       AL,*+XAR4[0]          ; |166| 
        ANDB      AL,#0xff              ; |166| 
        MOVZ      AR6,AL                ; |166| 
        MOVL      ACC,XAR7              ; |166| 
        OR        ACC,AR6               ; |166| 
	.dwpsn	"common.c",168,1
        LRETR
        ; return occurs
	.dwattr DW$40, DW_AT_end_file("common.c")
	.dwattr DW$40, DW_AT_end_line(0xa8)
	.dwattr DW$40, DW_AT_end_column(0x01)
	.dwendtag DW$40

	.sect	".text"
	.global	__f_setlong

DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_setlong"), DW_AT_symbol_name("__f_setlong")
	.dwattr DW$42, DW_AT_low_pc(__f_setlong)
	.dwattr DW$42, DW_AT_high_pc(0x00)
	.dwattr DW$42, DW_AT_begin_file("common.c")
	.dwattr DW$42, DW_AT_begin_line(0xb7)
	.dwattr DW$42, DW_AT_begin_column(0x06)
	.dwattr DW$42, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$42, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",183,46

;***************************************************************
;* FNAME: __f_setlong                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

__f_setlong:
;* AR4   assigned to _ptr
DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$43, DW_AT_type(*DW$T$3)
	.dwattr DW$43, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _num
DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num"), DW_AT_symbol_name("_num")
	.dwattr DW$44, DW_AT_type(*DW$T$13)
	.dwattr DW$44, DW_AT_location[DW_OP_reg0]
        MOVL      XAR6,ACC              ; |183| 
        MOV       T,#24                 ; |185| 
        LSRL      ACC,T                 ; |185| 
        CLRC      SXM
        MOV       *+XAR4[3],AL          ; |185| 
        MOVL      ACC,XAR6              ; |186| 
        MOVU      ACC,AH                ; |186| 
        ANDB      AL,#0xff              ; |186| 
        MOV       *+XAR4[2],AL          ; |186| 
        MOVL      ACC,XAR6              ; |187| 
        SFR       ACC,8                 ; |187| 
        ANDB      AL,#0xff              ; |187| 
        MOV       *+XAR4[1],AL          ; |187| 
        MOVL      ACC,XAR6              ; |188| 
        ANDB      AL,#0xff              ; |188| 
        MOV       *+XAR4[0],AL          ; |188| 
	.dwpsn	"common.c",189,1
        LRETR
        ; return occurs
	.dwattr DW$42, DW_AT_end_file("common.c")
	.dwattr DW$42, DW_AT_end_line(0xbd)
	.dwattr DW$42, DW_AT_end_column(0x01)
	.dwendtag DW$42

	.sect	".text"

DW$45	.dwtag  DW_TAG_subprogram, DW_AT_name("_getchar"), DW_AT_symbol_name("__getchar")
	.dwattr DW$45, DW_AT_low_pc(__getchar)
	.dwattr DW$45, DW_AT_high_pc(0x00)
	.dwattr DW$45, DW_AT_begin_file("common.c")
	.dwattr DW$45, DW_AT_begin_line(0xd1)
	.dwattr DW$45, DW_AT_begin_column(0x17)
	.dwattr DW$45, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$45, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",209,82

;***************************************************************
;* FNAME: __getchar                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

__getchar:
;* AR4   assigned to _array
DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_name("array"), DW_AT_symbol_name("_array")
	.dwattr DW$46, DW_AT_type(*DW$T$112)
	.dwattr DW$46, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _num
DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num"), DW_AT_symbol_name("_num")
	.dwattr DW$47, DW_AT_type(*DW$T$12)
	.dwattr DW$47, DW_AT_location[DW_OP_reg0]
;* AR5   assigned to _ptr
DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$48, DW_AT_type(*DW$T$112)
	.dwattr DW$48, DW_AT_location[DW_OP_reg14]
        MOVL      XAR6,ACC              ; |209| 
        MOVL      ACC,XAR4              ; |209| 
        BF        L1,NEQ                ; |211| 
        ; branchcc occurs ; |211| 
        MOVL      ACC,XAR5              ; |211| 
        ADDL      ACC,XAR6
        MOVL      XAR5,ACC              ; |211| 
        BF        L3,UNC                ; |211| 
        ; branch occurs ; |211| 
L1:    
        MOVL      ACC,XAR6
        BF        L3,EQ                 ; |213| 
        ; branchcc occurs ; |213| 
L2:    
DW$L$__getchar$4$B:
	.dwpsn	"common.c",213,0
        MOV       AL,*XAR5++            ; |214| 
        SUBB      XAR6,#1               ; |215| 
        MOV       *XAR4++,AL            ; |214| 
        MOVL      ACC,XAR6              ; |215| 
	.dwpsn	"common.c",215,0
        BF        L2,NEQ                ; |215| 
        ; branchcc occurs ; |215| 
DW$L$__getchar$4$E:
L3:    
        MOVL      XAR4,XAR5             ; |216| 
	.dwpsn	"common.c",217,1
        LRETR
        ; return occurs

DW$49	.dwtag  DW_TAG_loop
	.dwattr DW$49, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L2:1:1471518967")
	.dwattr DW$49, DW_AT_begin_file("common.c")
	.dwattr DW$49, DW_AT_begin_line(0xd5)
	.dwattr DW$49, DW_AT_end_line(0xd7)
DW$50	.dwtag  DW_TAG_loop_range
	.dwattr DW$50, DW_AT_low_pc(DW$L$__getchar$4$B)
	.dwattr DW$50, DW_AT_high_pc(DW$L$__getchar$4$E)
	.dwendtag DW$49

	.dwattr DW$45, DW_AT_end_file("common.c")
	.dwattr DW$45, DW_AT_end_line(0xd9)
	.dwattr DW$45, DW_AT_end_column(0x01)
	.dwendtag DW$45

	.sect	".text"

DW$51	.dwtag  DW_TAG_subprogram, DW_AT_name("_getword"), DW_AT_symbol_name("__getword")
	.dwattr DW$51, DW_AT_low_pc(__getword)
	.dwattr DW$51, DW_AT_high_pc(0x00)
	.dwattr DW$51, DW_AT_begin_file("common.c")
	.dwattr DW$51, DW_AT_begin_line(0xec)
	.dwattr DW$51, DW_AT_begin_column(0x17)
	.dwattr DW$51, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$51, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",236,72

;***************************************************************
;* FNAME: __getword                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

__getword:
;* AR4   assigned to _num
DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num"), DW_AT_symbol_name("_num")
	.dwattr DW$52, DW_AT_type(*DW$T$114)
	.dwattr DW$52, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _ptr
DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$53, DW_AT_type(*DW$T$112)
	.dwattr DW$53, DW_AT_location[DW_OP_reg14]
        MOVL      XAR6,XAR4             ; |236| 
        MOVL      XAR4,XAR5             ; |236| 
        LCR       #__f_getword          ; |237| 
        ; call occurs [#__f_getword] ; |237| 
        MOV       *+XAR6[0],AL          ; |237| 
        MOVB      ACC,#2
        ADDL      ACC,XAR4
        MOVL      XAR4,ACC              ; |238| 
	.dwpsn	"common.c",239,1
        LRETR
        ; return occurs
	.dwattr DW$51, DW_AT_end_file("common.c")
	.dwattr DW$51, DW_AT_end_line(0xef)
	.dwattr DW$51, DW_AT_end_column(0x01)
	.dwendtag DW$51

	.sect	".text"

DW$54	.dwtag  DW_TAG_subprogram, DW_AT_name("_getlong"), DW_AT_symbol_name("__getlong")
	.dwattr DW$54, DW_AT_low_pc(__getlong)
	.dwattr DW$54, DW_AT_high_pc(0x00)
	.dwattr DW$54, DW_AT_begin_file("common.c")
	.dwattr DW$54, DW_AT_begin_line(0x102)
	.dwattr DW$54, DW_AT_begin_column(0x17)
	.dwattr DW$54, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$54, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",258,71

;***************************************************************
;* FNAME: __getlong                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

__getlong:
;* AR4   assigned to _num
DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num"), DW_AT_symbol_name("_num")
	.dwattr DW$55, DW_AT_type(*DW$T$59)
	.dwattr DW$55, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _ptr
DW$56	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$56, DW_AT_type(*DW$T$112)
	.dwattr DW$56, DW_AT_location[DW_OP_reg14]
        MOVL      XAR0,XAR4             ; |258| 
        MOVL      XAR4,XAR5             ; |258| 
        LCR       #__f_getlong          ; |259| 
        ; call occurs [#__f_getlong] ; |259| 
        MOVL      *+XAR0[0],ACC         ; |259| 
        MOVB      ACC,#4
        ADDL      ACC,XAR4
        MOVL      XAR4,ACC              ; |260| 
	.dwpsn	"common.c",261,1
        LRETR
        ; return occurs
	.dwattr DW$54, DW_AT_end_file("common.c")
	.dwattr DW$54, DW_AT_end_line(0x105)
	.dwattr DW$54, DW_AT_end_column(0x01)
	.dwendtag DW$54

	.sect	".text"
	.global	__f_checkstatus

DW$57	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_checkstatus"), DW_AT_symbol_name("__f_checkstatus")
	.dwattr DW$57, DW_AT_low_pc(__f_checkstatus)
	.dwattr DW$57, DW_AT_high_pc(0x00)
	.dwattr DW$57, DW_AT_begin_file("common.c")
	.dwattr DW$57, DW_AT_begin_line(0x117)
	.dwattr DW$57, DW_AT_begin_column(0x05)
	.dwattr DW$57, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$57, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",279,34

;***************************************************************
;* FNAME: __f_checkstatus               FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

__f_checkstatus:
;* AR4   assigned to _vi
DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$58, DW_AT_type(*DW$T$92)
	.dwattr DW$58, DW_AT_location[DW_OP_reg12]
        MOVL      XAR0,#1128            ; |280| 
        MOVL      *SP++,XAR1
        MOVL      XAR1,XAR4             ; |279| 
        MOVL      ACC,*+XAR1[AR0]       ; |280| 
        BF        L4,EQ                 ; |280| 
        ; branchcc occurs ; |280| 
        MOVL      XAR0,#1132            ; |281| 
        MOVL      XAR7,ACC              ; |281| 
        MOVL      XAR4,*+XAR1[AR0]      ; |281| 
        LCR       *XAR7                 ; |281| 
        ; call occurs [XAR7] ; |281| 
        ANDB      AL,#0x03              ; |282| 
        MOVB      AH,#0
        TEST      ACC                   ; |282| 
        BF        L4,EQ                 ; |282| 
        ; branchcc occurs ; |282| 
        MOVB      ACC,#1
        MOVL      *+XAR1[0],ACC         ; |283| 
L4:    
        MOVL      XAR1,*--SP            ; |288| 
        MOVB      AL,#0
	.dwpsn	"common.c",289,1
        LRETR
        ; return occurs
	.dwattr DW$57, DW_AT_end_file("common.c")
	.dwattr DW$57, DW_AT_end_line(0x121)
	.dwattr DW$57, DW_AT_end_column(0x01)
	.dwendtag DW$57

	.sect	".text"
	.global	__f_writesector

DW$59	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_writesector"), DW_AT_symbol_name("__f_writesector")
	.dwattr DW$59, DW_AT_low_pc(__f_writesector)
	.dwattr DW$59, DW_AT_high_pc(0x00)
	.dwattr DW$59, DW_AT_begin_file("common.c")
	.dwattr DW$59, DW_AT_begin_line(0x137)
	.dwattr DW$59, DW_AT_begin_column(0x05)
	.dwattr DW$59, DW_AT_frame_base[DW_OP_breg20 -14]
	.dwattr DW$59, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",311,76

;***************************************************************
;* FNAME: __f_writesector               FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            1 Parameter,  5 Auto,  6 SOE     *
;***************************************************************

__f_writesector:
;* AR4   assigned to _vi
DW$60	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$60, DW_AT_type(*DW$T$92)
	.dwattr DW$60, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _data
DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$61, DW_AT_type(*DW$T$3)
	.dwattr DW$61, DW_AT_location[DW_OP_reg14]
;* AL    assigned to _sector
DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sector"), DW_AT_symbol_name("_sector")
	.dwattr DW$62, DW_AT_type(*DW$T$13)
	.dwattr DW$62, DW_AT_location[DW_OP_reg0]
DW$63	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cnt"), DW_AT_symbol_name("_cnt")
	.dwattr DW$63, DW_AT_type(*DW$T$10)
	.dwattr DW$63, DW_AT_location[DW_OP_breg20 -15]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#6
        MOVL      XAR1,ACC              ; |311| 
        MOV       AL,*-SP[15]           ; |311| 
        MOVL      *-SP[6],XAR4          ; |311| 
        MOV       *-SP[2],AL            ; |311| 
        MOVL      XAR3,XAR5             ; |311| 
        MOVL      ACC,*-SP[6]           ; |311| 
        BF        L5,NEQ                ; |316| 
        ; branchcc occurs ; |316| 
        MOVB      AL,#1                 ; |316| 
        BF        L20,UNC               ; |316| 
        ; branch occurs ; |316| 
L5:    
        MOVL      XAR0,#1118            ; |318| 
        MOVL      XAR4,*-SP[6]          ; |318| 
        MOVL      ACC,*+XAR4[AR0]       ; |318| 
        BF        L6,NEQ                ; |318| 
        ; branchcc occurs ; |318| 
        MOVL      XAR4,*-SP[6]          ; |319| 
        MOVB      ACC,#1
        MOVL      *+XAR4[0],ACC         ; |319| 
        MOVB      AL,#13                ; |320| 
        BF        L20,UNC               ; |320| 
        ; branch occurs ; |320| 
L6:    
        MOVL      XAR0,#1128            ; |324| 
        MOVL      XAR4,*-SP[6]          ; |324| 
        MOVL      ACC,*+XAR4[AR0]       ; |324| 
        BF        L7,EQ                 ; |324| 
        ; branchcc occurs ; |324| 
        MOVL      XAR0,#1132            ; |325| 
        MOVL      XAR4,*-SP[6]          ; |325| 
        MOVL      XAR7,ACC              ; |325| 
        MOVL      XAR4,*+XAR4[AR0]      ; |325| 
        LCR       *XAR7                 ; |325| 
        ; call occurs [XAR7] ; |325| 
        MOVL      XAR6,ACC              ; |325| 
        ANDB      AL,#0x03              ; |326| 
        MOVB      AH,#0
        TEST      ACC                   ; |326| 
        BF        L17,NEQ               ; |326| 
        ; branchcc occurs ; |326| 
        MOVL      ACC,XAR6              ; |330| 
        ANDB      AL,#0x04              ; |330| 
        MOVB      AH,#0
        TEST      ACC                   ; |330| 
        BF        L7,EQ                 ; |330| 
        ; branchcc occurs ; |330| 
        MOVL      XAR4,*-SP[6]          ; |331| 
        MOVB      ACC,#1
        MOVL      *+XAR4[0],ACC         ; |331| 
        MOVB      AL,#23                ; |332| 
        BF        L20,UNC               ; |332| 
        ; branch occurs ; |332| 
L7:    
        MOVL      XAR0,#1120            ; |336| 
        MOVL      XAR4,*-SP[6]          ; |336| 
        MOVL      ACC,*+XAR4[AR0]       ; |336| 
        BF        L8,EQ                 ; |336| 
        ; branchcc occurs ; |336| 
        MOV       AL,*-SP[2]
        CMPB      AL,#1                 ; |336| 
        BF        L13,NEQ               ; |336| 
        ; branchcc occurs ; |336| 
L8:    
        MOV       AL,*-SP[2]            ; |338| 
        MOV       *-SP[3],#0            ; |338| 
        BF        L12,LEQ               ; |338| 
        ; branchcc occurs ; |338| 
L9:    
DW$L$__f_writesector$12$B:
	.dwpsn	"common.c",339,0
	.dwpsn	"common.c",340,0
        MOVB      XAR2,#3               ; |340| 
DW$L$__f_writesector$12$E:
L10:    
DW$L$__f_writesector$13$B:
        MOVL      XAR0,#1118            ; |341| 
        MOVL      XAR4,*-SP[6]          ; |341| 
        MOV       AL,*-SP[3]            ; |341| 
        SETC      SXM
        MOVL      XAR5,*-SP[6]          ; |341| 
        MOVL      XAR7,*+XAR4[AR0]      ; |341| 
        MOVL      XAR4,XAR3             ; |341| 
        MOVL      XAR0,#1132            ; |341| 
        MOV       ACC,AL << #9          ; |341| 
        MOV       ACC,AL                ; |341| 
        ADDL      XAR4,ACC
        MOVL      XAR5,*+XAR5[AR0]      ; |341| 
        MOV       ACC,*-SP[3]           ; |341| 
        ADDL      ACC,XAR1
        LCR       *XAR7                 ; |341| 
        ; call occurs [XAR7] ; |341| 
        CMPB      AL,#0                 ; |341| 
        BF        L11,EQ                ; |341| 
        ; branchcc occurs ; |341| 
DW$L$__f_writesector$13$E:
DW$L$__f_writesector$14$B:
        CMP       AL,#-1                ; |343| 
        BF        L17,EQ                ; |343| 
        ; branchcc occurs ; |343| 
DW$L$__f_writesector$14$E:
DW$L$__f_writesector$15$B:
        MOV       AH,AR2
        ADDB      AH,#-1
        MOVZ      AR2,AH                ; |340| 
	.dwpsn	"common.c",347,0
        BF        L10,NEQ               ; |340| 
        ; branchcc occurs ; |340| 
DW$L$__f_writesector$15$E:
DW$L$__f_writesector$16$B:
        CMPB      AL,#0                 ; |348| 
        BF        L12,NEQ               ; |348| 
        ; branchcc occurs ; |348| 
DW$L$__f_writesector$16$E:
L11:    
DW$L$__f_writesector$17$B:
        INC       *-SP[3]               ; |338| 
        MOV       AH,*-SP[3]            ; |338| 
        MOV       AL,*-SP[2]            ; |338| 
        CMP       AL,AH                 ; |338| 
	.dwpsn	"common.c",349,0
        BF        L9,GT                 ; |338| 
        ; branchcc occurs ; |338| 
DW$L$__f_writesector$17$E:
L12:    
        MOV       AH,*-SP[3]
        MOV       AL,*-SP[2]
        CMP       AL,AH                 ; |351| 
        BF        L15,EQ                ; |351| 
        ; branchcc occurs ; |351| 
        BF        L19,UNC               ; |351| 
        ; branch occurs ; |351| 
L13:    
	.dwpsn	"common.c",355,0
        MOVB      XAR2,#3               ; |355| 
L14:    
DW$L$__f_writesector$21$B:
        MOVL      XAR0,#1120            ; |356| 
        MOVL      XAR4,*-SP[6]          ; |356| 
        MOVL      XAR7,*+XAR4[AR0]      ; |356| 
        MOVL      XAR0,#1132            ; |356| 
        MOV       AL,*-SP[2]            ; |356| 
        MOV       *-SP[1],AL            ; |356| 
        MOVL      XAR4,*-SP[6]          ; |356| 
        MOVL      XAR5,*+XAR4[AR0]      ; |356| 
        MOVL      XAR4,XAR3             ; |356| 
        MOVL      ACC,XAR1              ; |356| 
        LCR       *XAR7                 ; |356| 
        ; call occurs [XAR7] ; |356| 
        CMPB      AL,#0                 ; |356| 
        BF        L16,NEQ               ; |356| 
        ; branchcc occurs ; |356| 
DW$L$__f_writesector$21$E:
L15:    
        MOVB      AL,#0
        BF        L20,UNC               ; |357| 
        ; branch occurs ; |357| 
L16:    
DW$L$__f_writesector$23$B:
        CMP       AL,#-1                ; |358| 
        BF        L18,NEQ               ; |358| 
        ; branchcc occurs ; |358| 
DW$L$__f_writesector$23$E:
L17:    
        MOVL      XAR4,*-SP[6]          ; |359| 
        MOVB      ACC,#1
        MOVL      *+XAR4[0],ACC         ; |359| 
        MOVB      AL,#16                ; |360| 
        BF        L20,UNC               ; |360| 
        ; branch occurs ; |360| 
L18:    
DW$L$__f_writesector$25$B:
        MOV       AL,AR2
        ADDB      AL,#-1
        MOVZ      AR2,AL                ; |355| 
	.dwpsn	"common.c",362,0
        BF        L14,NEQ               ; |355| 
        ; branchcc occurs ; |355| 
DW$L$__f_writesector$25$E:
L19:    
        MOVL      XAR4,*-SP[6]
        LCR       #__f_checkstatus      ; |365| 
        ; call occurs [#__f_checkstatus] ; |365| 
        CMPB      AL,#0                 ; |365| 
        BF        L20,NEQ               ; |365| 
        ; branchcc occurs ; |365| 
        MOVB      AL,#17                ; |365| 
L20:    
        SUBB      SP,#6                 ; |365| 
        MOVL      XAR3,*--SP            ; |365| 
        MOVL      XAR2,*--SP            ; |365| 
        MOVL      XAR1,*--SP            ; |365| 
	.dwpsn	"common.c",369,1
        LRETR
        ; return occurs

DW$64	.dwtag  DW_TAG_loop
	.dwattr DW$64, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L14:1:1471518967")
	.dwattr DW$64, DW_AT_begin_file("common.c")
	.dwattr DW$64, DW_AT_begin_line(0x163)
	.dwattr DW$64, DW_AT_end_line(0x16a)
DW$65	.dwtag  DW_TAG_loop_range
	.dwattr DW$65, DW_AT_low_pc(DW$L$__f_writesector$21$B)
	.dwattr DW$65, DW_AT_high_pc(DW$L$__f_writesector$21$E)
DW$66	.dwtag  DW_TAG_loop_range
	.dwattr DW$66, DW_AT_low_pc(DW$L$__f_writesector$23$B)
	.dwattr DW$66, DW_AT_high_pc(DW$L$__f_writesector$23$E)
DW$67	.dwtag  DW_TAG_loop_range
	.dwattr DW$67, DW_AT_low_pc(DW$L$__f_writesector$25$B)
	.dwattr DW$67, DW_AT_high_pc(DW$L$__f_writesector$25$E)
	.dwendtag DW$64


DW$68	.dwtag  DW_TAG_loop
	.dwattr DW$68, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L9:1:1471518967")
	.dwattr DW$68, DW_AT_begin_file("common.c")
	.dwattr DW$68, DW_AT_begin_line(0x152)
	.dwattr DW$68, DW_AT_end_line(0x15d)
DW$69	.dwtag  DW_TAG_loop_range
	.dwattr DW$69, DW_AT_low_pc(DW$L$__f_writesector$12$B)
	.dwattr DW$69, DW_AT_high_pc(DW$L$__f_writesector$12$E)
DW$70	.dwtag  DW_TAG_loop_range
	.dwattr DW$70, DW_AT_low_pc(DW$L$__f_writesector$16$B)
	.dwattr DW$70, DW_AT_high_pc(DW$L$__f_writesector$16$E)
DW$71	.dwtag  DW_TAG_loop_range
	.dwattr DW$71, DW_AT_low_pc(DW$L$__f_writesector$17$B)
	.dwattr DW$71, DW_AT_high_pc(DW$L$__f_writesector$17$E)

DW$72	.dwtag  DW_TAG_loop
	.dwattr DW$72, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L10:2:1471518967")
	.dwattr DW$72, DW_AT_begin_file("common.c")
	.dwattr DW$72, DW_AT_begin_line(0x154)
	.dwattr DW$72, DW_AT_end_line(0x15b)
DW$73	.dwtag  DW_TAG_loop_range
	.dwattr DW$73, DW_AT_low_pc(DW$L$__f_writesector$13$B)
	.dwattr DW$73, DW_AT_high_pc(DW$L$__f_writesector$13$E)
DW$74	.dwtag  DW_TAG_loop_range
	.dwattr DW$74, DW_AT_low_pc(DW$L$__f_writesector$14$B)
	.dwattr DW$74, DW_AT_high_pc(DW$L$__f_writesector$14$E)
DW$75	.dwtag  DW_TAG_loop_range
	.dwattr DW$75, DW_AT_low_pc(DW$L$__f_writesector$15$B)
	.dwattr DW$75, DW_AT_high_pc(DW$L$__f_writesector$15$E)
	.dwendtag DW$72

	.dwendtag DW$68

	.dwattr DW$59, DW_AT_end_file("common.c")
	.dwattr DW$59, DW_AT_end_line(0x171)
	.dwattr DW$59, DW_AT_end_column(0x01)
	.dwendtag DW$59

	.sect	".text"
	.global	__f_readsector

DW$76	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_readsector"), DW_AT_symbol_name("__f_readsector")
	.dwattr DW$76, DW_AT_low_pc(__f_readsector)
	.dwattr DW$76, DW_AT_high_pc(0x00)
	.dwattr DW$76, DW_AT_begin_file("common.c")
	.dwattr DW$76, DW_AT_begin_line(0x186)
	.dwattr DW$76, DW_AT_begin_column(0x05)
	.dwattr DW$76, DW_AT_frame_base[DW_OP_breg20 -14]
	.dwattr DW$76, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",391,1

;***************************************************************
;* FNAME: __f_readsector                FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            1 Parameter,  5 Auto,  6 SOE     *
;***************************************************************

__f_readsector:
;* AR4   assigned to _vi
DW$77	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$77, DW_AT_type(*DW$T$92)
	.dwattr DW$77, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _data
DW$78	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$78, DW_AT_type(*DW$T$3)
	.dwattr DW$78, DW_AT_location[DW_OP_reg14]
;* AL    assigned to _sector
DW$79	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sector"), DW_AT_symbol_name("_sector")
	.dwattr DW$79, DW_AT_type(*DW$T$13)
	.dwattr DW$79, DW_AT_location[DW_OP_reg0]
DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cnt"), DW_AT_symbol_name("_cnt")
	.dwattr DW$80, DW_AT_type(*DW$T$10)
	.dwattr DW$80, DW_AT_location[DW_OP_breg20 -15]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#6
        MOVL      XAR1,ACC              ; |391| 
        MOV       AL,*-SP[15]           ; |391| 
        MOVL      *-SP[6],XAR4          ; |391| 
        MOV       *-SP[2],AL            ; |391| 
        MOVL      XAR3,XAR5             ; |391| 
        MOVL      ACC,*-SP[6]           ; |391| 
        BF        L21,NEQ               ; |396| 
        ; branchcc occurs ; |396| 
        MOVB      AL,#1                 ; |396| 
        BF        L35,UNC               ; |396| 
        ; branch occurs ; |396| 
L21:    
        MOVL      XAR0,#1122            ; |398| 
        MOVL      XAR4,*-SP[6]          ; |398| 
        MOVL      ACC,*+XAR4[AR0]       ; |398| 
        BF        L22,NEQ               ; |398| 
        ; branchcc occurs ; |398| 
        MOVB      AL,#13                ; |398| 
        BF        L35,UNC               ; |398| 
        ; branch occurs ; |398| 
L22:    
        MOVL      XAR4,*-SP[6]
        LCR       #__f_checkstatus      ; |400| 
        ; call occurs [#__f_checkstatus] ; |400| 
        CMPB      AL,#0                 ; |400| 
        BF        L35,NEQ               ; |400| 
        ; branchcc occurs ; |400| 
        MOVL      XAR0,#1124            ; |403| 
        MOVL      XAR4,*-SP[6]          ; |403| 
        MOVL      ACC,*+XAR4[AR0]       ; |403| 
        BF        L23,EQ                ; |403| 
        ; branchcc occurs ; |403| 
        MOV       AL,*-SP[2]
        CMPB      AL,#1                 ; |403| 
        BF        L28,NEQ               ; |403| 
        ; branchcc occurs ; |403| 
L23:    
        MOV       AL,*-SP[2]            ; |405| 
        MOV       *-SP[3],#0            ; |405| 
        BF        L27,LEQ               ; |405| 
        ; branchcc occurs ; |405| 
L24:    
DW$L$__f_readsector$9$B:
	.dwpsn	"common.c",406,0
	.dwpsn	"common.c",407,0
        MOVB      XAR2,#3               ; |407| 
DW$L$__f_readsector$9$E:
L25:    
DW$L$__f_readsector$10$B:
	.dwpsn	"common.c",408,0
        MOVL      XAR0,#1122            ; |409| 
        MOVL      XAR4,*-SP[6]          ; |409| 
        MOV       AL,*-SP[3]            ; |409| 
        SETC      SXM
        MOVL      XAR5,*-SP[6]          ; |409| 
        MOVL      XAR7,*+XAR4[AR0]      ; |409| 
        MOVL      XAR4,XAR3             ; |409| 
        MOVL      XAR0,#1132            ; |409| 
        MOV       ACC,AL << #9          ; |409| 
        MOV       ACC,AL                ; |409| 
        ADDL      XAR4,ACC
        MOVL      XAR5,*+XAR5[AR0]      ; |409| 
        MOV       ACC,*-SP[3]           ; |409| 
        ADDL      ACC,XAR1
        LCR       *XAR7                 ; |409| 
        ; call occurs [XAR7] ; |409| 
        CMPB      AL,#0                 ; |409| 
        BF        L26,EQ                ; |409| 
        ; branchcc occurs ; |409| 
DW$L$__f_readsector$10$E:
DW$L$__f_readsector$11$B:
        CMP       AL,#-1                ; |412| 
        BF        L32,EQ                ; |412| 
        ; branchcc occurs ; |412| 
DW$L$__f_readsector$11$E:
DW$L$__f_readsector$12$B:
        MOV       AH,AR2
        ADDB      AH,#-1
        MOVZ      AR2,AH                ; |407| 
	.dwpsn	"common.c",417,0
        BF        L25,NEQ               ; |407| 
        ; branchcc occurs ; |407| 
DW$L$__f_readsector$12$E:
DW$L$__f_readsector$13$B:
        CMPB      AL,#0                 ; |418| 
        BF        L27,NEQ               ; |418| 
        ; branchcc occurs ; |418| 
DW$L$__f_readsector$13$E:
L26:    
DW$L$__f_readsector$14$B:
        INC       *-SP[3]               ; |405| 
        MOV       AH,*-SP[3]            ; |405| 
        MOV       AL,*-SP[2]            ; |405| 
        CMP       AL,AH                 ; |405| 
	.dwpsn	"common.c",419,0
        BF        L24,GT                ; |405| 
        ; branchcc occurs ; |405| 
DW$L$__f_readsector$14$E:
L27:    
        MOV       AH,*-SP[3]
        MOV       AL,*-SP[2]
        CMP       AL,AH                 ; |421| 
        BF        L30,EQ                ; |421| 
        ; branchcc occurs ; |421| 
        BF        L34,UNC               ; |421| 
        ; branch occurs ; |421| 
L28:    
	.dwpsn	"common.c",425,0
        MOVB      XAR2,#3               ; |425| 
L29:    
DW$L$__f_readsector$18$B:
	.dwpsn	"common.c",426,0
        MOVL      XAR0,#1124            ; |427| 
        MOVL      XAR4,*-SP[6]          ; |427| 
        MOVL      XAR7,*+XAR4[AR0]      ; |427| 
        MOVL      XAR0,#1132            ; |427| 
        MOV       AL,*-SP[2]            ; |427| 
        MOV       *-SP[1],AL            ; |427| 
        MOVL      XAR4,*-SP[6]          ; |427| 
        MOVL      XAR5,*+XAR4[AR0]      ; |427| 
        MOVL      XAR4,XAR3             ; |427| 
        MOVL      ACC,XAR1              ; |427| 
        LCR       *XAR7                 ; |427| 
        ; call occurs [XAR7] ; |427| 
        CMPB      AL,#0                 ; |427| 
        BF        L31,NEQ               ; |427| 
        ; branchcc occurs ; |427| 
DW$L$__f_readsector$18$E:
L30:    
        MOVB      AL,#0
        BF        L35,UNC               ; |428| 
        ; branch occurs ; |428| 
L31:    
DW$L$__f_readsector$20$B:
        CMP       AL,#-1                ; |429| 
        BF        L33,NEQ               ; |429| 
        ; branchcc occurs ; |429| 
DW$L$__f_readsector$20$E:
L32:    
        MOVL      XAR4,*-SP[6]          ; |431| 
        MOVB      ACC,#1
        MOVL      *+XAR4[0],ACC         ; |431| 
        MOVB      AL,#16                ; |432| 
        BF        L35,UNC               ; |432| 
        ; branch occurs ; |432| 
L33:    
DW$L$__f_readsector$22$B:
        MOV       AL,AR2
        ADDB      AL,#-1
        MOVZ      AR2,AL                ; |425| 
	.dwpsn	"common.c",434,0
        BF        L29,NEQ               ; |425| 
        ; branchcc occurs ; |425| 
DW$L$__f_readsector$22$E:
L34:    
        MOVL      XAR4,*-SP[6]
        LCR       #__f_checkstatus      ; |437| 
        ; call occurs [#__f_checkstatus] ; |437| 
        CMPB      AL,#0                 ; |437| 
        BF        L35,NEQ               ; |437| 
        ; branchcc occurs ; |437| 
        MOVB      AL,#17                ; |440| 
L35:    
        SUBB      SP,#6                 ; |440| 
        MOVL      XAR3,*--SP            ; |440| 
        MOVL      XAR2,*--SP            ; |440| 
        MOVL      XAR1,*--SP            ; |440| 
	.dwpsn	"common.c",441,1
        LRETR
        ; return occurs

DW$81	.dwtag  DW_TAG_loop
	.dwattr DW$81, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L29:1:1471518967")
	.dwattr DW$81, DW_AT_begin_file("common.c")
	.dwattr DW$81, DW_AT_begin_line(0x1a9)
	.dwattr DW$81, DW_AT_end_line(0x1b2)
DW$82	.dwtag  DW_TAG_loop_range
	.dwattr DW$82, DW_AT_low_pc(DW$L$__f_readsector$18$B)
	.dwattr DW$82, DW_AT_high_pc(DW$L$__f_readsector$18$E)
DW$83	.dwtag  DW_TAG_loop_range
	.dwattr DW$83, DW_AT_low_pc(DW$L$__f_readsector$20$B)
	.dwattr DW$83, DW_AT_high_pc(DW$L$__f_readsector$20$E)
DW$84	.dwtag  DW_TAG_loop_range
	.dwattr DW$84, DW_AT_low_pc(DW$L$__f_readsector$22$B)
	.dwattr DW$84, DW_AT_high_pc(DW$L$__f_readsector$22$E)
	.dwendtag DW$81


DW$85	.dwtag  DW_TAG_loop
	.dwattr DW$85, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L24:1:1471518967")
	.dwattr DW$85, DW_AT_begin_file("common.c")
	.dwattr DW$85, DW_AT_begin_line(0x195)
	.dwattr DW$85, DW_AT_end_line(0x1a3)
DW$86	.dwtag  DW_TAG_loop_range
	.dwattr DW$86, DW_AT_low_pc(DW$L$__f_readsector$9$B)
	.dwattr DW$86, DW_AT_high_pc(DW$L$__f_readsector$9$E)
DW$87	.dwtag  DW_TAG_loop_range
	.dwattr DW$87, DW_AT_low_pc(DW$L$__f_readsector$13$B)
	.dwattr DW$87, DW_AT_high_pc(DW$L$__f_readsector$13$E)
DW$88	.dwtag  DW_TAG_loop_range
	.dwattr DW$88, DW_AT_low_pc(DW$L$__f_readsector$14$B)
	.dwattr DW$88, DW_AT_high_pc(DW$L$__f_readsector$14$E)

DW$89	.dwtag  DW_TAG_loop
	.dwattr DW$89, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L25:2:1471518967")
	.dwattr DW$89, DW_AT_begin_file("common.c")
	.dwattr DW$89, DW_AT_begin_line(0x197)
	.dwattr DW$89, DW_AT_end_line(0x1a1)
DW$90	.dwtag  DW_TAG_loop_range
	.dwattr DW$90, DW_AT_low_pc(DW$L$__f_readsector$10$B)
	.dwattr DW$90, DW_AT_high_pc(DW$L$__f_readsector$10$E)
DW$91	.dwtag  DW_TAG_loop_range
	.dwattr DW$91, DW_AT_low_pc(DW$L$__f_readsector$11$B)
	.dwattr DW$91, DW_AT_high_pc(DW$L$__f_readsector$11$E)
DW$92	.dwtag  DW_TAG_loop_range
	.dwattr DW$92, DW_AT_low_pc(DW$L$__f_readsector$12$B)
	.dwattr DW$92, DW_AT_high_pc(DW$L$__f_readsector$12$E)
	.dwendtag DW$89

	.dwendtag DW$85

	.dwattr DW$76, DW_AT_end_file("common.c")
	.dwattr DW$76, DW_AT_end_line(0x1b9)
	.dwattr DW$76, DW_AT_end_column(0x01)
	.dwendtag DW$76

	.sect	".text"
	.global	__f_getmaxcluster

DW$93	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_getmaxcluster"), DW_AT_symbol_name("__f_getmaxcluster")
	.dwattr DW$93, DW_AT_low_pc(__f_getmaxcluster)
	.dwattr DW$93, DW_AT_high_pc(0x00)
	.dwattr DW$93, DW_AT_begin_file("common.c")
	.dwattr DW$93, DW_AT_begin_line(0x1fd)
	.dwattr DW$93, DW_AT_begin_column(0x0f)
	.dwattr DW$93, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$93, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",509,46

;***************************************************************
;* FNAME: __f_getmaxcluster             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

__f_getmaxcluster:
;* AR4   assigned to _vi
DW$94	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$94, DW_AT_type(*DW$T$92)
	.dwattr DW$94, DW_AT_location[DW_OP_reg12]
        MOVB      XAR0,#18              ; |510| 
        MOV       AL,*+XAR4[AR0]        ; |510| 
        MOV       PH,#0
        MOV       PL,AL
        BF        L36,NEQ               ; |511| 
        ; branchcc occurs ; |511| 
        MOVB      XAR0,#26              ; |511| 
        MOVL      P,*+XAR4[AR0]         ; |511| 
L36:    
        MOVB      XAR0,#82              ; |512| 
        MOVL      ACC,P                 ; |512| 
        SUBL      ACC,*+XAR4[AR0]       ; |512| 
        MOVB      XAR0,#24              ; |513| 
        ADDL      ACC,*+XAR4[AR0]       ; |513| 
        MOVB      XAR0,#14              ; |514| 
        MOVZ      AR6,*+XAR4[AR0]
        MOVL      P,ACC                 ; |513| 
        MOVB      ACC,#0
        RPT       #31
||     SUBCUL    ACC,XAR6              ; |514| 
        MOVL      ACC,P                 ; |516| 
	.dwpsn	"common.c",517,1
        LRETR
        ; return occurs
	.dwattr DW$93, DW_AT_end_file("common.c")
	.dwattr DW$93, DW_AT_end_line(0x205)
	.dwattr DW$93, DW_AT_end_column(0x01)
	.dwendtag DW$93

	.sect	".text"

DW$95	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_buildsectors"), DW_AT_symbol_name("__f_buildsectors")
	.dwattr DW$95, DW_AT_low_pc(__f_buildsectors)
	.dwattr DW$95, DW_AT_high_pc(0x00)
	.dwattr DW$95, DW_AT_begin_file("common.c")
	.dwattr DW$95, DW_AT_begin_line(0x213)
	.dwattr DW$95, DW_AT_begin_column(0x0d)
	.dwattr DW$95, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$95, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",531,43

;***************************************************************
;* FNAME: __f_buildsectors              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

__f_buildsectors:
;* AR4   assigned to _vi
DW$96	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$96, DW_AT_type(*DW$T$92)
	.dwattr DW$96, DW_AT_location[DW_OP_reg12]
        MOVB      ACC,#2
        MOVL      XAR0,#1136            ; |535| 
        ADDL      ACC,XAR4
        MOVL      XAR5,ACC              ; |533| 
        MOVB      ACC,#0
        MOVL      *+XAR4[AR0],ACC       ; |535| 
        MOVB      XAR0,#13              ; |537| 
        MOVU      ACC,*+XAR5[AR0]
        MOVB      XAR0,#74              ; |537| 
        MOVL      *+XAR4[AR0],ACC       ; |537| 
        MOVB      ACC,#74
        ADDL      ACC,XAR4
        MOVL      XAR6,ACC              ; |538| 
        MOVB      XAR0,#22              ; |538| 
        MOVL      ACC,*+XAR5[AR0]       ; |538| 
        MOVB      XAR0,#18              ; |540| 
        ADDL      *+XAR6[0],ACC         ; |538| 
        MOV       AL,*+XAR5[AR0]        ; |540| 
        BF        L39,NEQ               ; |540| 
        ; branchcc occurs ; |540| 
        MOVB      XAR0,#26              ; |556| 
        MOVL      ACC,*+XAR5[AR0]       ; |556| 
        MOVB      XAR0,#76              ; |556| 
        MOVB      XAR7,#0
        MOVL      *+XAR4[AR0],ACC       ; |556| 
        MOVB      XAR0,#74              ; |558| 
        MOVL      ACC,*+XAR4[AR0]       ; |558| 
        MOVB      XAR0,#82              ; |558| 
        MOVL      *+XAR4[AR0],ACC       ; |558| 
        MOVB      XAR0,#14              ; |559| 
        MOV       AL,*+XAR5[AR0]        ; |559| 
        BF        L38,EQ                ; |559| 
        ; branchcc occurs ; |559| 
L37:    
DW$L$__f_buildsectors$3$B:
	.dwpsn	"common.c",559,0
        MOVB      ACC,#82
        ADDL      ACC,XAR4
        MOVL      XAR6,ACC              ; |560| 
        MOVB      XAR0,#76              ; |560| 
        ADDB      XAR7,#1               ; |559| 
        MOVL      ACC,*+XAR4[AR0]       ; |560| 
        ADDL      *+XAR6[0],ACC         ; |560| 
        MOVB      XAR0,#14              ; |559| 
        MOV       AL,AR7                ; |559| 
        CMP       AL,*+XAR5[AR0]        ; |559| 
	.dwpsn	"common.c",561,0
        BF        L37,LO                ; |559| 
        ; branchcc occurs ; |559| 
DW$L$__f_buildsectors$3$E:
L38:    
        MOVB      ACC,#0
        MOVB      XAR0,#84              ; |562| 
        MOVL      *+XAR4[AR0],ACC       ; |562| 
        MOVB      XAR0,#12              ; |565| 
        MOVZ      AR7,*+XAR5[AR0]       ; |565| 
        MOVB      XAR0,#30              ; |566| 
        MOVL      ACC,*+XAR5[AR0]       ; |566| 
        MOVB      XAR0,#78              ; |566| 
        MOVL      *+XAR4[AR0],ACC       ; |566| 
        MOVB      ACC,#78
        ADDL      ACC,XAR4
        MOVL      XAR6,ACC              ; |567| 
        MOVB      ACC,#2
        SUBL      *+XAR6[0],ACC         ; |567| 
        MOVB      ACC,#78
        ADDL      ACC,XAR4
        MOVL      XAR6,ACC              ; |568| 
        MOVU      ACC,AR7
        MOVL      XT,ACC                ; |568| 
        MOVB      ACC,#78
        IMPYXUL   P,XT,*+XAR6[0]        ; |568| 
        ADDL      ACC,XAR4
        MOVL      *+XAR6[0],P           ; |568| 
        MOVL      XAR6,ACC              ; |569| 
        MOVB      XAR0,#82              ; |569| 
        MOVL      ACC,*+XAR4[AR0]       ; |569| 
        MOVB      XAR0,#12              ; |570| 
        ADDL      *+XAR6[0],ACC         ; |569| 
        MOVU      ACC,*+XAR5[AR0]
        MOVB      XAR0,#80              ; |570| 
        BF        L42,UNC               ; |570| 
        ; branch occurs ; |570| 
L39:    
        MOVU      ACC,*+XAR5[AR0]
        MOVB      XAR0,#76              ; |541| 
        MOVB      XAR7,#0
        MOVL      *+XAR4[AR0],ACC       ; |541| 
        MOVB      XAR0,#74              ; |543| 
        MOVL      ACC,*+XAR4[AR0]       ; |543| 
        MOVB      XAR0,#78              ; |543| 
        MOVL      *+XAR4[AR0],ACC       ; |543| 
        MOVB      XAR0,#14              ; |544| 
        MOV       AL,*+XAR5[AR0]        ; |544| 
        BF        L41,EQ                ; |544| 
        ; branchcc occurs ; |544| 
L40:    
DW$L$__f_buildsectors$6$B:
	.dwpsn	"common.c",544,0
        MOVB      ACC,#78
        ADDL      ACC,XAR4
        MOVL      XAR6,ACC              ; |545| 
        MOVB      XAR0,#76              ; |545| 
        ADDB      XAR7,#1               ; |544| 
        MOVL      ACC,*+XAR4[AR0]       ; |545| 
        ADDL      *+XAR6[0],ACC         ; |545| 
        MOVB      XAR0,#14              ; |544| 
        MOV       AL,AR7                ; |544| 
        CMP       AL,*+XAR5[AR0]        ; |544| 
	.dwpsn	"common.c",546,0
        BF        L40,LO                ; |544| 
        ; branchcc occurs ; |544| 
DW$L$__f_buildsectors$6$E:
L41:    
        MOVB      XAR0,#15              ; |548| 
        MOVU      ACC,*+XAR5[AR0]
        MOVB      XAR0,#80              ; |548| 
        MOVL      *+XAR4[AR0],ACC       ; |548| 
        MOVB      ACC,#80
        ADDL      ACC,XAR4
        MOVL      XAR5,ACC              ; |549| 
        MOVL      ACC,*+XAR5[0]         ; |549| 
        LSL       ACC,5                 ; |549| 
        MOVL      *+XAR5[0],ACC         ; |549| 
        MOVB      ACC,#80
        ADDL      ACC,XAR4
        MOVL      XAR5,ACC              ; |550| 
        CLRC      SXM
        MOVL      ACC,*+XAR5[0]         ; |550| 
        SFR       ACC,9                 ; |550| 
        MOVL      *+XAR5[0],ACC         ; |550| 
        MOVL      ACC,*+XAR4[AR0]       ; |552| 
        MOVB      XAR0,#78              ; |552| 
        ADDL      ACC,*+XAR4[AR0]       ; |552| 
        MOVB      XAR0,#82              ; |552| 
        MOVL      *+XAR4[AR0],ACC       ; |552| 
        MOVB      ACC,#0
        MOVB      XAR0,#84              ; |553| 
L42:    
        MOVL      *+XAR4[AR0],ACC       ; |553| 
        LCR       #__f_getmaxcluster    ; |574| 
        ; call occurs [#__f_getmaxcluster] ; |574| 
        MOVL      XAR6,ACC              ; |574| 
        MOV       ACC,#4080             ; |574| 
        CMPL      ACC,XAR6              ; |574| 
        BF        L44,HI                ; |574| 
        ; branchcc occurs ; |574| 
        LCR       #__f_getmaxcluster    ; |577| 
        ; call occurs [#__f_getmaxcluster] ; |577| 
        MOVL      XAR6,ACC              ; |577| 
        CLRC      SXM
        MOV       ACC,#65520            ; |577| 
        CMPL      ACC,XAR6              ; |577| 
        BF        L43,HI                ; |577| 
        ; branchcc occurs ; |577| 
        MOVB      ACC,#3
        BF        L45,UNC               ; |581| 
        ; branch occurs ; |581| 
L43:    
        MOVB      ACC,#2
        BF        L45,UNC               ; |579| 
        ; branch occurs ; |579| 
L44:    
        MOVB      ACC,#1
L45:    
        MOVL      XAR0,#1136            ; |575| 
        MOVL      *+XAR4[AR0],ACC       ; |575| 
	.dwpsn	"common.c",583,1
        LRETR
        ; return occurs

DW$97	.dwtag  DW_TAG_loop
	.dwattr DW$97, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L40:1:1471518967")
	.dwattr DW$97, DW_AT_begin_file("common.c")
	.dwattr DW$97, DW_AT_begin_line(0x220)
	.dwattr DW$97, DW_AT_end_line(0x222)
DW$98	.dwtag  DW_TAG_loop_range
	.dwattr DW$98, DW_AT_low_pc(DW$L$__f_buildsectors$6$B)
	.dwattr DW$98, DW_AT_high_pc(DW$L$__f_buildsectors$6$E)
	.dwendtag DW$97


DW$99	.dwtag  DW_TAG_loop
	.dwattr DW$99, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L37:1:1471518967")
	.dwattr DW$99, DW_AT_begin_file("common.c")
	.dwattr DW$99, DW_AT_begin_line(0x22f)
	.dwattr DW$99, DW_AT_end_line(0x231)
DW$100	.dwtag  DW_TAG_loop_range
	.dwattr DW$100, DW_AT_low_pc(DW$L$__f_buildsectors$3$B)
	.dwattr DW$100, DW_AT_high_pc(DW$L$__f_buildsectors$3$E)
	.dwendtag DW$99

	.dwattr DW$95, DW_AT_end_file("common.c")
	.dwattr DW$95, DW_AT_end_line(0x247)
	.dwattr DW$95, DW_AT_end_column(0x01)
	.dwendtag DW$95

	.sect	".text"

DW$101	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_readbootrecord"), DW_AT_symbol_name("__f_readbootrecord")
	.dwattr DW$101, DW_AT_low_pc(__f_readbootrecord)
	.dwattr DW$101, DW_AT_high_pc(0x00)
	.dwattr DW$101, DW_AT_begin_file("common.c")
	.dwattr DW$101, DW_AT_begin_line(0x25c)
	.dwattr DW$101, DW_AT_begin_column(0x0c)
	.dwattr DW$101, DW_AT_frame_base[DW_OP_breg20 -12]
	.dwattr DW$101, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",604,44

;***************************************************************
;* FNAME: __f_readbootrecord            FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            1 Parameter,  3 Auto,  6 SOE     *
;***************************************************************

__f_readbootrecord:
;* AR4   assigned to _vi
DW$102	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$102, DW_AT_type(*DW$T$92)
	.dwattr DW$102, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      XAR2,XAR4             ; |604| 
        MOVB      ACC,#2
        MOVB      XAR5,#0
        MOVL      *SP++,XAR3
        ADDL      ACC,XAR2
        ADDB      SP,#4
        MOVL      XAR1,ACC              ; |607| 
        MOVL      XAR4,ACC              ; |607| 
        MOVB      ACC,#0
        MOVL      *-SP[4],ACC           ; |608| 
        MOVB      ACC,#72
        LCR       #_memset              ; |610| 
        ; call occurs [#_memset] ; |610| 
        MOVL      XAR3,#_f_filesystem+2122 ; |606| 
        MOVL      XAR5,XAR3             ; |612| 
        MOVL      XAR4,XAR2             ; |612| 
        MOV       *-SP[1],#1            ; |612| 
        MOVB      ACC,#0
        LCR       #__f_readsector       ; |612| 
        ; call occurs [#__f_readsector] ; |612| 
        CMPB      AL,#0                 ; |612| 
        BF        L56,NEQ               ; |612| 
        ; branchcc occurs ; |612| 
        MOVL      XAR0,#510             ; |615| 
        MOV       AL,*+XAR3[AR0]        ; |615| 
        ANDB      AL,#0xff              ; |615| 
        CMPB      AL,#85                ; |615| 
        BF        L46,EQ                ; |615| 
        ; branchcc occurs ; |615| 
        MOVL      XAR0,#511             ; |615| 
        MOV       AL,*+XAR3[AR0]        ; |615| 
        ANDB      AL,#0xff              ; |615| 
        CMPB      AL,#170               ; |615| 
        BF        L55,NEQ               ; |615| 
        ; branchcc occurs ; |615| 
L46:    
        MOV       AL,*+XAR3[0]          ; |617| 
        CMPB      AL,#235               ; |617| 
        BF        L48,EQ                ; |617| 
        ; branchcc occurs ; |617| 
        CMPB      AL,#233               ; |617| 
        BF        L48,EQ                ; |617| 
        ; branchcc occurs ; |617| 
        MOVL      ACC,XAR3
        MOVL      XAR4,#454             ; |619| 
        ADDL      XAR4,ACC
        LCR       #__f_getlong          ; |619| 
        ; call occurs [#__f_getlong] ; |619| 
        MOVL      XAR5,XAR3             ; |621| 
        MOVL      *-SP[4],ACC           ; |619| 
        MOVL      XAR4,XAR2             ; |621| 
        MOV       *-SP[1],#1            ; |621| 
        MOVL      ACC,*-SP[4]           ; |621| 
        LCR       #__f_readsector       ; |621| 
        ; call occurs [#__f_readsector] ; |621| 
        CMPB      AL,#0                 ; |621| 
        BF        L56,NEQ               ; |621| 
        ; branchcc occurs ; |621| 
        MOVL      XAR0,#510             ; |625| 
        MOV       AL,*+XAR3[AR0]        ; |625| 
        CMPB      AL,#85                ; |625| 
        BF        L47,EQ                ; |625| 
        ; branchcc occurs ; |625| 
        MOVL      XAR0,#511             ; |625| 
        MOV       AL,*+XAR3[AR0]        ; |625| 
        CMPB      AL,#170               ; |625| 
        BF        L55,NEQ               ; |625| 
        ; branchcc occurs ; |625| 
L47:    
        MOV       AL,*+XAR3[0]          ; |627| 
        CMPB      AL,#235               ; |627| 
        BF        L48,EQ                ; |627| 
        ; branchcc occurs ; |627| 
        CMPB      AL,#233               ; |627| 
        BF        L55,NEQ               ; |627| 
        ; branchcc occurs ; |627| 
L48:    
        MOVL      XAR5,XAR3             ; |630| 
        MOVL      XAR4,XAR1             ; |630| 
        MOVB      ACC,#3
        LCR       #__getchar            ; |630| 
        ; call occurs [#__getchar] ; |630| 
        MOVB      ACC,#3
        MOVL      XAR5,XAR4             ; |630| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |631| 
        MOVB      ACC,#8
        LCR       #__getchar            ; |631| 
        ; call occurs [#__getchar] ; |631| 
        MOVB      ACC,#11
        MOVL      XAR5,XAR4             ; |631| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |632| 
        LCR       #__getword            ; |632| 
        ; call occurs [#__getword] ; |632| 
        MOVB      XAR0,#11              ; |633| 
        CMP       *+XAR1[AR0],#512      ; |633| 
        MOVL      XAR3,XAR4             ; |632| 
        BF        L49,EQ                ; |633| 
        ; branchcc occurs ; |633| 
        MOVL      XAR0,#1136            ; |634| 
        MOVB      ACC,#0
        MOVL      *+XAR2[AR0],ACC       ; |634| 
        MOVB      AL,#27                ; |635| 
        BF        L56,UNC               ; |635| 
        ; branch occurs ; |635| 
L49:    
        MOV       AL,*XAR3++            ; |638| 
        MOVB      XAR0,#12              ; |638| 
        MOV       *+XAR1[AR0],AL        ; |638| 
        MOVB      ACC,#13
        MOVL      XAR5,XAR3             ; |639| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |639| 
        LCR       #__getword            ; |639| 
        ; call occurs [#__getword] ; |639| 
        MOVL      XAR3,XAR4             ; |639| 
        MOVB      XAR0,#14              ; |640| 
        MOV       AL,*XAR3++            ; |640| 
        MOV       *+XAR1[AR0],AL        ; |640| 
        MOVB      ACC,#15
        MOVL      XAR5,XAR3             ; |641| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |641| 
        LCR       #__getword            ; |641| 
        ; call occurs [#__getword] ; |641| 
        MOVB      ACC,#16
        MOVL      XAR5,XAR4             ; |641| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |642| 
        LCR       #__getword            ; |642| 
        ; call occurs [#__getword] ; |642| 
        MOVL      XAR3,XAR4             ; |642| 
        MOVB      XAR0,#17              ; |643| 
        MOV       AL,*XAR3++            ; |643| 
        MOV       *+XAR1[AR0],AL        ; |643| 
        MOVB      ACC,#18
        MOVL      XAR5,XAR3             ; |644| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |644| 
        LCR       #__getword            ; |644| 
        ; call occurs [#__getword] ; |644| 
        MOVB      ACC,#19
        MOVL      XAR5,XAR4             ; |644| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |645| 
        LCR       #__getword            ; |645| 
        ; call occurs [#__getword] ; |645| 
        MOVB      ACC,#20
        MOVL      XAR5,XAR4             ; |645| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |646| 
        LCR       #__getword            ; |646| 
        ; call occurs [#__getword] ; |646| 
        MOVB      ACC,#22
        MOVL      XAR5,XAR4             ; |646| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |647| 
        LCR       #__getlong            ; |647| 
        ; call occurs [#__getlong] ; |647| 
        MOVB      XAR0,#22              ; |649| 
        MOVL      ACC,*-SP[4]           ; |649| 
        MOVL      XAR3,XAR4             ; |647| 
        CMPL      ACC,*+XAR1[AR0]       ; |649| 
        BF        L50,LOS               ; |649| 
        ; branchcc occurs ; |649| 
        MOVL      ACC,*-SP[4]           ; |651| 
        MOVL      *+XAR1[AR0],ACC       ; |651| 
L50:    
        MOVB      ACC,#24
        MOVL      XAR5,XAR3             ; |654| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |654| 
        LCR       #__getlong            ; |654| 
        ; call occurs [#__getlong] ; |654| 
        MOVB      XAR0,#18              ; |656| 
        MOV       AL,*+XAR1[AR0]        ; |656| 
        MOVL      XAR3,XAR4             ; |654| 
        BF        L51,EQ                ; |656| 
        ; branchcc occurs ; |656| 
        MOVL      XAR4,XAR2             ; |657| 
        LCR       #__f_buildsectors     ; |657| 
        ; call occurs [#__f_buildsectors] ; |657| 
        MOVL      XAR0,#1136            ; |658| 
        MOVB      ACC,#3
        CMPL      ACC,*+XAR2[AR0]       ; |658| 
        BF        L52,EQ                ; |658| 
        ; branchcc occurs ; |658| 
        MOVB      ACC,#46
        MOVL      XAR5,XAR3             ; |679| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |679| 
        LCR       #__getword            ; |679| 
        ; call occurs [#__getword] ; |679| 
        MOVL      XAR3,XAR4             ; |679| 
        MOVB      XAR0,#47              ; |680| 
        MOV       AL,*XAR3++            ; |680| 
        MOV       *+XAR1[AR0],AL        ; |680| 
        MOVB      ACC,#48
        MOVL      XAR5,XAR3             ; |681| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |681| 
        LCR       #__getlong            ; |681| 
        ; call occurs [#__getlong] ; |681| 
        MOVB      ACC,#50
        MOVL      XAR5,XAR4             ; |681| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |682| 
        MOVB      ACC,#11
        LCR       #__getchar            ; |682| 
        ; call occurs [#__getchar] ; |682| 
        MOVB      ACC,#61
        MOVL      XAR5,XAR4             ; |682| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |683| 
        MOVB      ACC,#8
        LCR       #__getchar            ; |683| 
        ; call occurs [#__getchar] ; |683| 
        MOV       ACC,#7 << 6
        BF        L53,UNC               ; |685| 
        ; branch occurs ; |685| 
L51:    
        MOVL      XAR0,#1136            ; |659| 
        MOVB      ACC,#3
        MOVL      *+XAR2[AR0],ACC       ; |659| 
L52:    
        MOVB      ACC,#26
        MOVL      XAR5,XAR3             ; |662| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |662| 
        LCR       #__getlong            ; |662| 
        ; call occurs [#__getlong] ; |662| 
        MOVB      ACC,#28
        MOVL      XAR5,XAR4             ; |662| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |663| 
        LCR       #__getword            ; |663| 
        ; call occurs [#__getword] ; |663| 
        MOVB      ACC,#29
        MOVL      XAR5,XAR4             ; |663| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |664| 
        LCR       #__getword            ; |664| 
        ; call occurs [#__getword] ; |664| 
        MOVB      ACC,#30
        MOVL      XAR5,XAR4             ; |664| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |665| 
        LCR       #__getlong            ; |665| 
        ; call occurs [#__getlong] ; |665| 
        MOVB      ACC,#32
        MOVL      XAR5,XAR4             ; |665| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |666| 
        LCR       #__getword            ; |666| 
        ; call occurs [#__getword] ; |666| 
        MOVB      ACC,#33
        MOVL      XAR5,XAR4             ; |666| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |667| 
        LCR       #__getword            ; |667| 
        ; call occurs [#__getword] ; |667| 
        MOVB      ACC,#34
        MOVL      XAR5,XAR4             ; |667| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |668| 
        MOVB      ACC,#12
        LCR       #__getchar            ; |668| 
        ; call occurs [#__getchar] ; |668| 
        MOVB      ACC,#46
        MOVL      XAR5,XAR4             ; |668| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |670| 
        LCR       #__getword            ; |670| 
        ; call occurs [#__getword] ; |670| 
        MOVL      XAR3,XAR4             ; |670| 
        MOVB      XAR0,#47              ; |671| 
        MOV       AL,*XAR3++            ; |671| 
        MOV       *+XAR1[AR0],AL        ; |671| 
        MOVB      ACC,#48
        MOVL      XAR5,XAR3             ; |672| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |672| 
        LCR       #__getlong            ; |672| 
        ; call occurs [#__getlong] ; |672| 
        MOVB      ACC,#50
        MOVL      XAR5,XAR4             ; |672| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |673| 
        MOVB      ACC,#11
        LCR       #__getchar            ; |673| 
        ; call occurs [#__getchar] ; |673| 
        MOVB      ACC,#61
        MOVL      XAR5,XAR4             ; |673| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |674| 
        MOVB      ACC,#8
        LCR       #__getchar            ; |674| 
        ; call occurs [#__getchar] ; |674| 
        MOV       ACC,#105 << 2
L53:    
        MOVL      XAR5,XAR4             ; |674| 
        MOVB      XAR4,#0
        LCR       #__getchar            ; |675| 
        ; call occurs [#__getchar] ; |675| 
        MOVB      ACC,#69
        ADDL      ACC,XAR1
        MOVL      XAR5,XAR4             ; |675| 
        MOVL      XAR4,ACC              ; |676| 
        MOVB      ACC,#2
        LCR       #__getchar            ; |676| 
        ; call occurs [#__getchar] ; |676| 
        MOVB      XAR0,#17              ; |677| 
        MOV       AL,*+XAR1[AR0]        ; |677| 
        CMPB      AL,#248               ; |677| 
        BF        L54,EQ                ; |677| 
        ; branchcc occurs ; |677| 
        MOV       AL,*+XAR1[AR0]        ; |677| 
        CMPB      AL,#240               ; |677| 
        BF        L55,NEQ               ; |677| 
        ; branchcc occurs ; |677| 
L54:    
        MOVB      AL,#0
        BF        L56,UNC               ; |694| 
        ; branch occurs ; |694| 
L55:    
        MOVB      AL,#2                 ; |690| 
L56:    
        SUBB      SP,#4                 ; |690| 
        MOVL      XAR3,*--SP            ; |690| 
        MOVL      XAR2,*--SP            ; |690| 
        MOVL      XAR1,*--SP            ; |690| 
	.dwpsn	"common.c",695,1
        LRETR
        ; return occurs
	.dwattr DW$101, DW_AT_end_file("common.c")
	.dwattr DW$101, DW_AT_end_line(0x2b7)
	.dwattr DW$101, DW_AT_end_column(0x01)
	.dwendtag DW$101

	.sect	".text"

DW$103	.dwtag  DW_TAG_subprogram, DW_AT_name("_setcharzero"), DW_AT_symbol_name("__setcharzero")
	.dwattr DW$103, DW_AT_low_pc(__setcharzero)
	.dwattr DW$103, DW_AT_high_pc(0x00)
	.dwattr DW$103, DW_AT_begin_file("common.c")
	.dwattr DW$103, DW_AT_begin_line(0x2ca)
	.dwattr DW$103, DW_AT_begin_column(0x17)
	.dwattr DW$103, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$103, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",714,65

;***************************************************************
;* FNAME: __setcharzero                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

__setcharzero:
;* AL    assigned to _num
DW$104	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num"), DW_AT_symbol_name("_num")
	.dwattr DW$104, DW_AT_type(*DW$T$12)
	.dwattr DW$104, DW_AT_location[DW_OP_reg0]
;* AR4   assigned to _ptr
DW$105	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$105, DW_AT_type(*DW$T$112)
	.dwattr DW$105, DW_AT_location[DW_OP_reg12]
        TEST      ACC                   ; |715| 
        BF        L58,EQ                ; |715| 
        ; branchcc occurs ; |715| 
L57:    
DW$L$__setcharzero$2$B:
	.dwpsn	"common.c",715,0
        SUBB      ACC,#1                ; |717| 
        MOV       *XAR4++,#0            ; |716| 
	.dwpsn	"common.c",717,0
        BF        L57,NEQ               ; |717| 
        ; branchcc occurs ; |717| 
DW$L$__setcharzero$2$E:
L58:    
	.dwpsn	"common.c",719,1
        LRETR
        ; return occurs

DW$106	.dwtag  DW_TAG_loop
	.dwattr DW$106, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L57:1:1471518967")
	.dwattr DW$106, DW_AT_begin_file("common.c")
	.dwattr DW$106, DW_AT_begin_line(0x2cb)
	.dwattr DW$106, DW_AT_end_line(0x2cd)
DW$107	.dwtag  DW_TAG_loop_range
	.dwattr DW$107, DW_AT_low_pc(DW$L$__setcharzero$2$B)
	.dwattr DW$107, DW_AT_high_pc(DW$L$__setcharzero$2$E)
	.dwendtag DW$106

	.dwattr DW$103, DW_AT_end_file("common.c")
	.dwattr DW$103, DW_AT_end_line(0x2cf)
	.dwattr DW$103, DW_AT_end_column(0x01)
	.dwendtag DW$103

	.sect	".text"

DW$108	.dwtag  DW_TAG_subprogram, DW_AT_name("_setchar"), DW_AT_symbol_name("__setchar")
	.dwattr DW$108, DW_AT_low_pc(__setchar)
	.dwattr DW$108, DW_AT_high_pc(0x00)
	.dwattr DW$108, DW_AT_begin_file("common.c")
	.dwattr DW$108, DW_AT_begin_line(0x2e3)
	.dwattr DW$108, DW_AT_begin_column(0x17)
	.dwattr DW$108, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$108, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",739,82

;***************************************************************
;* FNAME: __setchar                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

__setchar:
;* AR4   assigned to _array
DW$109	.dwtag  DW_TAG_formal_parameter, DW_AT_name("array"), DW_AT_symbol_name("_array")
	.dwattr DW$109, DW_AT_type(*DW$T$112)
	.dwattr DW$109, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _num
DW$110	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num"), DW_AT_symbol_name("_num")
	.dwattr DW$110, DW_AT_type(*DW$T$12)
	.dwattr DW$110, DW_AT_location[DW_OP_reg0]
;* AR5   assigned to _ptr
DW$111	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$111, DW_AT_type(*DW$T$112)
	.dwattr DW$111, DW_AT_location[DW_OP_reg14]
        MOVL      XAR6,ACC              ; |739| 
        MOVL      ACC,XAR4              ; |739| 
        BF        L59,NEQ               ; |741| 
        ; branchcc occurs ; |741| 
        MOVL      XAR4,XAR5             ; |741| 
        MOVL      ACC,XAR6
        LCR       #__setcharzero        ; |741| 
        ; call occurs [#__setcharzero] ; |741| 
        MOVL      XAR5,XAR4             ; |741| 
        BF        L61,UNC               ; |741| 
        ; branch occurs ; |741| 
L59:    
        MOVL      ACC,XAR6
        BF        L61,EQ                ; |743| 
        ; branchcc occurs ; |743| 
L60:    
DW$L$__setchar$4$B:
	.dwpsn	"common.c",743,0
        MOV       AL,*XAR4++            ; |744| 
        SUBB      XAR6,#1               ; |745| 
        MOV       *XAR5++,AL            ; |744| 
        MOVL      ACC,XAR6              ; |744| 
	.dwpsn	"common.c",745,0
        BF        L60,NEQ               ; |745| 
        ; branchcc occurs ; |745| 
DW$L$__setchar$4$E:
L61:    
        MOVL      XAR4,XAR5             ; |746| 
	.dwpsn	"common.c",747,1
        LRETR
        ; return occurs

DW$112	.dwtag  DW_TAG_loop
	.dwattr DW$112, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L60:1:1471518967")
	.dwattr DW$112, DW_AT_begin_file("common.c")
	.dwattr DW$112, DW_AT_begin_line(0x2e7)
	.dwattr DW$112, DW_AT_end_line(0x2e9)
DW$113	.dwtag  DW_TAG_loop_range
	.dwattr DW$113, DW_AT_low_pc(DW$L$__setchar$4$B)
	.dwattr DW$113, DW_AT_high_pc(DW$L$__setchar$4$E)
	.dwendtag DW$112

	.dwattr DW$108, DW_AT_end_file("common.c")
	.dwattr DW$108, DW_AT_end_line(0x2eb)
	.dwattr DW$108, DW_AT_end_column(0x01)
	.dwendtag DW$108

	.sect	".text"

DW$114	.dwtag  DW_TAG_subprogram, DW_AT_name("_setword"), DW_AT_symbol_name("__setword")
	.dwattr DW$114, DW_AT_low_pc(__setword)
	.dwattr DW$114, DW_AT_high_pc(0x00)
	.dwattr DW$114, DW_AT_begin_file("common.c")
	.dwattr DW$114, DW_AT_begin_line(0x2ff)
	.dwattr DW$114, DW_AT_begin_column(0x17)
	.dwattr DW$114, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$114, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",767,71

;***************************************************************
;* FNAME: __setword                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

__setword:
;* AL    assigned to _num
DW$115	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num"), DW_AT_symbol_name("_num")
	.dwattr DW$115, DW_AT_type(*DW$T$9)
	.dwattr DW$115, DW_AT_location[DW_OP_reg0]
;* AR4   assigned to _ptr
DW$116	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$116, DW_AT_type(*DW$T$112)
	.dwattr DW$116, DW_AT_location[DW_OP_reg12]
        LCR       #__f_setword          ; |768| 
        ; call occurs [#__f_setword] ; |768| 
        MOVB      ACC,#2
        ADDL      ACC,XAR4
        MOVL      XAR4,ACC              ; |769| 
	.dwpsn	"common.c",770,1
        LRETR
        ; return occurs
	.dwattr DW$114, DW_AT_end_file("common.c")
	.dwattr DW$114, DW_AT_end_line(0x302)
	.dwattr DW$114, DW_AT_end_column(0x01)
	.dwendtag DW$114

	.sect	".text"

DW$117	.dwtag  DW_TAG_subprogram, DW_AT_name("_setlong"), DW_AT_symbol_name("__setlong")
	.dwattr DW$117, DW_AT_low_pc(__setlong)
	.dwattr DW$117, DW_AT_high_pc(0x00)
	.dwattr DW$117, DW_AT_begin_file("common.c")
	.dwattr DW$117, DW_AT_begin_line(0x315)
	.dwattr DW$117, DW_AT_begin_column(0x17)
	.dwattr DW$117, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$117, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",789,70

;***************************************************************
;* FNAME: __setlong                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

__setlong:
;* AL    assigned to _num
DW$118	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num"), DW_AT_symbol_name("_num")
	.dwattr DW$118, DW_AT_type(*DW$T$13)
	.dwattr DW$118, DW_AT_location[DW_OP_reg0]
;* AR4   assigned to _ptr
DW$119	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$119, DW_AT_type(*DW$T$112)
	.dwattr DW$119, DW_AT_location[DW_OP_reg12]
        LCR       #__f_setlong          ; |790| 
        ; call occurs [#__f_setlong] ; |790| 
        MOVB      ACC,#4
        ADDL      ACC,XAR4
        MOVL      XAR4,ACC              ; |791| 
	.dwpsn	"common.c",792,1
        LRETR
        ; return occurs
	.dwattr DW$117, DW_AT_end_file("common.c")
	.dwattr DW$117, DW_AT_end_line(0x318)
	.dwattr DW$117, DW_AT_end_column(0x01)
	.dwendtag DW$117

	.sect	".text"

DW$120	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_writebootrecord"), DW_AT_symbol_name("__f_writebootrecord")
	.dwattr DW$120, DW_AT_low_pc(__f_writebootrecord)
	.dwattr DW$120, DW_AT_high_pc(0x00)
	.dwattr DW$120, DW_AT_begin_file("common.c")
	.dwattr DW$120, DW_AT_begin_line(0x32b)
	.dwattr DW$120, DW_AT_begin_column(0x0c)
	.dwattr DW$120, DW_AT_frame_base[DW_OP_breg20 -12]
	.dwattr DW$120, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",811,45

;***************************************************************
;* FNAME: __f_writebootrecord           FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            1 Parameter,  3 Auto,  6 SOE     *
;***************************************************************

__f_writebootrecord:
;* AR4   assigned to _vi
DW$121	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$121, DW_AT_type(*DW$T$92)
	.dwattr DW$121, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#4
        MOVL      *-SP[4],XAR4          ; |811| 
        MOVL      XAR6,*-SP[4]          ; |813| 
        MOVB      ACC,#2
        MOVL      XAR0,#1136            ; |816| 
        ADDL      ACC,XAR6
        MOVL      XAR3,#_f_filesystem+2122 ; |812| 
        MOVL      XAR1,ACC              ; |813| 
        MOVB      ACC,#3
        CMPL      ACC,*+XAR4[AR0]       ; |816| 
        BF        L64,NEQ               ; |816| 
        ; branchcc occurs ; |816| 
        MOVL      XAR4,XAR3             ; |819| 
        MOV       ACC,#1 << 9
        MOVB      XAR5,#0
        LCR       #_memset              ; |819| 
        ; call occurs [#_memset] ; |819| 
        MOVB      XAR2,#0
        MOVB      XAR0,#13              ; |821| 
        MOV       AL,*+XAR1[AR0]        ; |821| 
        BF        L63,EQ                ; |821| 
        ; branchcc occurs ; |821| 
L62:    
DW$L$__f_writebootrecord$3$B:
	.dwpsn	"common.c",821,0
        MOV       *-SP[1],#1            ; |822| 
        MOVU      ACC,AR2
        MOVB      XAR0,#22              ; |822| 
        MOVL      XAR4,*-SP[4]          ; |822| 
        MOVL      XAR5,#_f_filesystem+2122 ; |822| 
        ADDL      ACC,*+XAR1[AR0]       ; |822| 
        LCR       #__f_writesector      ; |822| 
        ; call occurs [#__f_writesector] ; |822| 
        CMPB      AL,#0                 ; |822| 
        BF        L67,NEQ               ; |822| 
        ; branchcc occurs ; |822| 
DW$L$__f_writebootrecord$3$E:
DW$L$__f_writebootrecord$4$B:
        ADDB      XAR2,#1               ; |821| 
        MOVB      XAR0,#13              ; |821| 
        MOV       AL,AR2                ; |821| 
        CMP       AL,*+XAR1[AR0]        ; |821| 
	.dwpsn	"common.c",824,0
        BF        L62,LO                ; |821| 
        ; branchcc occurs ; |821| 
DW$L$__f_writebootrecord$4$E:
L63:    
        MOVL      XAR4,XAR3             ; |826| 
        MOV       AL,#21074
        MOV       AH,#16737
        LCR       #__setlong            ; |826| 
        ; call occurs [#__setlong] ; |826| 
        MOV       ACC,#15 << 5
        LCR       #__setcharzero        ; |827| 
        ; call occurs [#__setcharzero] ; |827| 
        MOV       AL,#29298
        MOV       AH,#24897
        LCR       #__setlong            ; |828| 
        ; call occurs [#__setlong] ; |828| 
        MOVB      ACC,#0
        SUBB      ACC,#1
        LCR       #__setlong            ; |829| 
        ; call occurs [#__setlong] ; |829| 
        MOVB      ACC,#0
        SUBB      ACC,#1
        LCR       #__setlong            ; |830| 
        ; call occurs [#__setlong] ; |830| 
        MOVB      ACC,#12
        LCR       #__setcharzero        ; |831| 
        ; call occurs [#__setcharzero] ; |831| 
        MOV       AL,#0
        MOV       AH,#43605
        LCR       #__setlong            ; |832| 
        ; call occurs [#__setlong] ; |832| 
        MOVB      XAR0,#32              ; |834| 
        MOVL      XAR5,#_f_filesystem+2122 ; |834| 
        MOV       *-SP[1],#1            ; |834| 
        MOVU      ACC,*+XAR1[AR0]
        MOVL      XAR4,*-SP[4]          ; |834| 
        MOVB      XAR0,#22              ; |834| 
        ADDL      ACC,*+XAR1[AR0]       ; |834| 
        LCR       #__f_writesector      ; |834| 
        ; call occurs [#__f_writesector] ; |834| 
        CMPB      AL,#0                 ; |834| 
        BF        L67,NEQ               ; |834| 
        ; branchcc occurs ; |834| 
        MOVB      XAR0,#32              ; |837| 
        MOV       *-SP[1],#1            ; |837| 
        MOVU      ACC,*+XAR1[AR0]
        MOVL      XAR5,#_f_filesystem+2122 ; |837| 
        MOVB      XAR0,#22              ; |837| 
        MOVL      XAR4,*-SP[4]          ; |837| 
        ADDL      ACC,*+XAR1[AR0]       ; |837| 
        MOVB      XAR0,#33              ; |837| 
        ADDU      ACC,*+XAR1[AR0]       ; |837| 
        LCR       #__f_writesector      ; |837| 
        ; call occurs [#__f_writesector] ; |837| 
        CMPB      AL,#0                 ; |837| 
        BF        L67,NEQ               ; |837| 
        ; branchcc occurs ; |837| 
L64:    
        MOVL      XAR7,#_f_filesystem+2122 ; |844| 
        MOVL      XAR4,XAR1             ; |844| 
        MOVL      XAR5,XAR7             ; |844| 
        MOVB      ACC,#3
        LCR       #__setchar            ; |844| 
        ; call occurs [#__setchar] ; |844| 
        MOVB      ACC,#3
        MOVL      XAR5,XAR4             ; |844| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |845| 
        MOVB      ACC,#8
        LCR       #__setchar            ; |845| 
        ; call occurs [#__setchar] ; |845| 
        MOVB      XAR0,#11              ; |846| 
        MOV       AL,*+XAR1[AR0]        ; |846| 
        LCR       #__setword            ; |846| 
        ; call occurs [#__setword] ; |846| 
        MOVL      XAR3,XAR4             ; |846| 
        MOVB      XAR0,#12              ; |847| 
        MOV       AL,*+XAR1[AR0]        ; |847| 
        MOV       *XAR3++,AL            ; |847| 
        MOVL      XAR4,XAR3             ; |848| 
        MOVB      XAR0,#13              ; |848| 
        MOV       AL,*+XAR1[AR0]        ; |848| 
        LCR       #__setword            ; |848| 
        ; call occurs [#__setword] ; |848| 
        MOVL      XAR3,XAR4             ; |848| 
        MOVB      XAR0,#14              ; |849| 
        MOV       AL,*+XAR1[AR0]        ; |849| 
        MOV       *XAR3++,AL            ; |849| 
        MOVL      XAR4,XAR3             ; |850| 
        MOVB      XAR0,#15              ; |850| 
        MOV       AL,*+XAR1[AR0]        ; |850| 
        LCR       #__setword            ; |850| 
        ; call occurs [#__setword] ; |850| 
        MOVB      XAR0,#16              ; |851| 
        MOV       AL,*+XAR1[AR0]        ; |851| 
        LCR       #__setword            ; |851| 
        ; call occurs [#__setword] ; |851| 
        MOVL      XAR3,XAR4             ; |851| 
        MOVB      XAR0,#17              ; |852| 
        MOV       AL,*+XAR1[AR0]        ; |852| 
        MOV       *XAR3++,AL            ; |852| 
        MOVL      XAR4,XAR3             ; |853| 
        MOVB      XAR0,#18              ; |853| 
        MOV       AL,*+XAR1[AR0]        ; |853| 
        LCR       #__setword            ; |853| 
        ; call occurs [#__setword] ; |853| 
        MOVB      XAR0,#19              ; |854| 
        MOV       AL,*+XAR1[AR0]        ; |854| 
        LCR       #__setword            ; |854| 
        ; call occurs [#__setword] ; |854| 
        MOVB      XAR0,#20              ; |855| 
        MOV       AL,*+XAR1[AR0]        ; |855| 
        LCR       #__setword            ; |855| 
        ; call occurs [#__setword] ; |855| 
        MOVB      XAR0,#22              ; |856| 
        MOVL      ACC,*+XAR1[AR0]       ; |856| 
        LCR       #__setlong            ; |856| 
        ; call occurs [#__setlong] ; |856| 
        MOVB      XAR0,#24              ; |857| 
        MOVL      ACC,*+XAR1[AR0]       ; |857| 
        LCR       #__setlong            ; |857| 
        ; call occurs [#__setlong] ; |857| 
        MOVL      XAR0,#1136            ; |859| 
        MOVL      XAR3,XAR4             ; |857| 
        MOVL      XAR4,*-SP[4]          ; |859| 
        MOVB      ACC,#3
        CMPL      ACC,*+XAR4[AR0]       ; |859| 
        BF        L65,NEQ               ; |859| 
        ; branchcc occurs ; |859| 
        MOVL      XAR4,XAR3             ; |861| 
        MOVB      XAR0,#26              ; |861| 
        MOVL      ACC,*+XAR1[AR0]       ; |861| 
        LCR       #__setlong            ; |861| 
        ; call occurs [#__setlong] ; |861| 
        MOVB      XAR0,#28              ; |862| 
        MOV       AL,*+XAR1[AR0]        ; |862| 
        LCR       #__setword            ; |862| 
        ; call occurs [#__setword] ; |862| 
        MOVB      XAR0,#29              ; |863| 
        MOV       AL,*+XAR1[AR0]        ; |863| 
        LCR       #__setword            ; |863| 
        ; call occurs [#__setword] ; |863| 
        MOVB      XAR0,#30              ; |864| 
        MOVL      ACC,*+XAR1[AR0]       ; |864| 
        LCR       #__setlong            ; |864| 
        ; call occurs [#__setlong] ; |864| 
        MOVB      XAR0,#32              ; |865| 
        MOV       AL,*+XAR1[AR0]        ; |865| 
        LCR       #__setword            ; |865| 
        ; call occurs [#__setword] ; |865| 
        MOVB      XAR0,#33              ; |866| 
        MOV       AL,*+XAR1[AR0]        ; |866| 
        LCR       #__setword            ; |866| 
        ; call occurs [#__setword] ; |866| 
        MOVB      ACC,#34
        MOVL      XAR5,XAR4             ; |866| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |867| 
        MOVB      ACC,#12
        LCR       #__setchar            ; |867| 
        ; call occurs [#__setchar] ; |867| 
        MOVB      XAR0,#46              ; |869| 
        MOV       AL,*+XAR1[AR0]        ; |869| 
        LCR       #__setword            ; |869| 
        ; call occurs [#__setword] ; |869| 
        MOVL      XAR3,XAR4             ; |869| 
        MOVB      XAR0,#47              ; |870| 
        MOV       AL,*+XAR1[AR0]        ; |870| 
        MOV       *XAR3++,AL            ; |870| 
        MOVL      XAR4,XAR3             ; |871| 
        MOVB      XAR0,#48              ; |871| 
        MOVL      ACC,*+XAR1[AR0]       ; |871| 
        LCR       #__setlong            ; |871| 
        ; call occurs [#__setlong] ; |871| 
        MOVB      ACC,#50
        MOVL      XAR5,XAR4             ; |871| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |872| 
        MOVB      ACC,#11
        LCR       #__setchar            ; |872| 
        ; call occurs [#__setchar] ; |872| 
        MOVB      ACC,#61
        MOVL      XAR5,XAR4             ; |872| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |873| 
        MOVB      ACC,#8
        LCR       #__setchar            ; |873| 
        ; call occurs [#__setchar] ; |873| 
        MOVL      XAR5,XAR4             ; |873| 
        MOVB      XAR4,#0
        MOV       ACC,#105 << 2
        LCR       #__setchar            ; |874| 
        ; call occurs [#__setchar] ; |874| 
        MOVB      ACC,#69
        MOVL      XAR5,XAR4             ; |874| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |875| 
        MOVB      ACC,#2
        LCR       #__setchar            ; |875| 
        ; call occurs [#__setchar] ; |875| 
        MOVB      XAR0,#33              ; |877| 
        MOV       *-SP[1],#1            ; |877| 
        MOVU      ACC,*+XAR1[AR0]
        MOVL      XAR4,*-SP[4]          ; |877| 
        MOVL      XAR5,XAR7             ; |877| 
        MOVB      XAR0,#22              ; |877| 
        ADDL      ACC,*+XAR1[AR0]       ; |877| 
        LCR       #__f_writesector      ; |877| 
        ; call occurs [#__f_writesector] ; |877| 
        CMPB      AL,#0                 ; |877| 
        BF        L66,EQ                ; |877| 
        ; branchcc occurs ; |877| 
        BF        L67,UNC               ; |878| 
        ; branch occurs ; |878| 
L65:    
        MOVL      XAR4,XAR3             ; |881| 
        MOVB      XAR0,#46              ; |881| 
        MOV       AL,*+XAR1[AR0]        ; |881| 
        LCR       #__setword            ; |881| 
        ; call occurs [#__setword] ; |881| 
        MOVL      XAR3,XAR4             ; |881| 
        MOVB      XAR0,#47              ; |882| 
        MOV       AL,*+XAR1[AR0]        ; |882| 
        MOV       *XAR3++,AL            ; |882| 
        MOVL      XAR4,XAR3             ; |883| 
        MOVB      XAR0,#48              ; |883| 
        MOVL      ACC,*+XAR1[AR0]       ; |883| 
        LCR       #__setlong            ; |883| 
        ; call occurs [#__setlong] ; |883| 
        MOVB      ACC,#50
        MOVL      XAR5,XAR4             ; |883| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |884| 
        MOVB      ACC,#11
        LCR       #__setchar            ; |884| 
        ; call occurs [#__setchar] ; |884| 
        MOVB      ACC,#61
        MOVL      XAR5,XAR4             ; |884| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |885| 
        MOVB      ACC,#8
        LCR       #__setchar            ; |885| 
        ; call occurs [#__setchar] ; |885| 
        MOVL      XAR5,XAR4             ; |885| 
        MOVB      XAR4,#0
        MOV       ACC,#7 << 6
        LCR       #__setchar            ; |886| 
        ; call occurs [#__setchar] ; |886| 
        MOVB      ACC,#69
        MOVL      XAR5,XAR4             ; |886| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |887| 
        MOVB      ACC,#2
        LCR       #__setchar            ; |887| 
        ; call occurs [#__setchar] ; |887| 
L66:    
        MOV       *-SP[1],#1            ; |890| 
        MOVB      XAR0,#22              ; |890| 
        MOVL      XAR4,*-SP[4]          ; |890| 
        MOVL      XAR5,#_f_filesystem+2122 ; |890| 
        MOVL      ACC,*+XAR1[AR0]       ; |890| 
        LCR       #__f_writesector      ; |890| 
        ; call occurs [#__f_writesector] ; |890| 
L67:    
        SUBB      SP,#4                 ; |890| 
        MOVL      XAR3,*--SP            ; |890| 
        MOVL      XAR2,*--SP            ; |890| 
        MOVL      XAR1,*--SP            ; |890| 
	.dwpsn	"common.c",891,1
        LRETR
        ; return occurs

DW$122	.dwtag  DW_TAG_loop
	.dwattr DW$122, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L62:1:1471518967")
	.dwattr DW$122, DW_AT_begin_file("common.c")
	.dwattr DW$122, DW_AT_begin_line(0x335)
	.dwattr DW$122, DW_AT_end_line(0x338)
DW$123	.dwtag  DW_TAG_loop_range
	.dwattr DW$123, DW_AT_low_pc(DW$L$__f_writebootrecord$3$B)
	.dwattr DW$123, DW_AT_high_pc(DW$L$__f_writebootrecord$3$E)
DW$124	.dwtag  DW_TAG_loop_range
	.dwattr DW$124, DW_AT_low_pc(DW$L$__f_writebootrecord$4$B)
	.dwattr DW$124, DW_AT_high_pc(DW$L$__f_writebootrecord$4$E)
	.dwendtag DW$122

	.dwattr DW$120, DW_AT_end_file("common.c")
	.dwattr DW$120, DW_AT_end_line(0x37b)
	.dwattr DW$120, DW_AT_end_column(0x01)
	.dwendtag DW$120

	.sect	".text"
	.global	__f_writefatsector

DW$125	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_writefatsector"), DW_AT_symbol_name("__f_writefatsector")
	.dwattr DW$125, DW_AT_low_pc(__f_writefatsector)
	.dwattr DW$125, DW_AT_high_pc(0x00)
	.dwattr DW$125, DW_AT_begin_file("common.c")
	.dwattr DW$125, DW_AT_begin_line(0x435)
	.dwattr DW$125, DW_AT_begin_column(0x05)
	.dwattr DW$125, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$125, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",1077,37

;***************************************************************
;* FNAME: __f_writefatsector            FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            1 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

__f_writefatsector:
;* AR4   assigned to _vi
DW$126	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$126, DW_AT_type(*DW$T$92)
	.dwattr DW$126, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        MOVL      XAR0,#600             ; |1078| 
        MOVL      *SP++,XAR2
        MOVL      XAR2,XAR4             ; |1077| 
        MOVL      *SP++,XAR3
        ADDB      SP,#2
        MOVL      ACC,*+XAR2[AR0]       ; |1078| 
        BF        L71,EQ                ; |1078| 
        ; branchcc occurs ; |1078| 
        MOVL      XAR0,#598             ; |1079| 
        MOVL      XAR6,*+XAR2[AR0]      ; |1079| 
        MOVB      XAR0,#74              ; |1079| 
        MOVL      ACC,XAR6              ; |1079| 
        ADDL      ACC,*+XAR2[AR0]       ; |1079| 
        MOVL      XAR1,ACC              ; |1079| 
        MOVB      XAR0,#76              ; |1082| 
        MOVL      ACC,XAR6              ; |1082| 
        CMPL      ACC,*+XAR2[AR0]       ; |1082| 
        BF        L68,LO                ; |1082| 
        ; branchcc occurs ; |1082| 
        MOVB      AL,#18                ; |1083| 
        BF        L72,UNC               ; |1083| 
        ; branch occurs ; |1083| 
L68:    
        MOVB      XAR0,#16              ; |1086| 
        MOVB      XAR3,#0
        MOV       AL,*+XAR2[AR0]        ; |1086| 
        BF        L70,EQ                ; |1086| 
        ; branchcc occurs ; |1086| 
L69:    
DW$L$__f_writefatsector$5$B:
	.dwpsn	"common.c",1086,0
        MOVB      ACC,#86
        MOVL      XAR4,XAR2             ; |1087| 
        ADDL      ACC,XAR2
        MOVL      XAR5,ACC              ; |1087| 
        MOV       *-SP[1],#1            ; |1087| 
        MOVL      ACC,XAR1              ; |1087| 
        LCR       #__f_writesector      ; |1087| 
        ; call occurs [#__f_writesector] ; |1087| 
        CMPB      AL,#0                 ; |1087| 
        BF        L72,NEQ               ; |1087| 
        ; branchcc occurs ; |1087| 
DW$L$__f_writefatsector$5$E:
DW$L$__f_writefatsector$6$B:
        MOVB      XAR0,#76              ; |1090| 
        MOVL      ACC,XAR1              ; |1090| 
        ADDB      XAR3,#1               ; |1086| 
        ADDL      ACC,*+XAR2[AR0]       ; |1090| 
        MOVL      XAR1,ACC              ; |1090| 
        MOVB      XAR0,#16              ; |1086| 
        MOV       AL,AR3                ; |1086| 
        CMP       AL,*+XAR2[AR0]        ; |1086| 
	.dwpsn	"common.c",1091,0
        BF        L69,LO                ; |1086| 
        ; branchcc occurs ; |1086| 
DW$L$__f_writefatsector$6$E:
L70:    
        MOVL      XAR0,#600             ; |1093| 
        MOVB      ACC,#0
        MOVL      *+XAR2[AR0],ACC       ; |1093| 
L71:    
        MOVB      AL,#0
L72:    
        SUBB      SP,#2                 ; |1097| 
        MOVL      XAR3,*--SP            ; |1097| 
        MOVL      XAR2,*--SP            ; |1097| 
        MOVL      XAR1,*--SP            ; |1097| 
	.dwpsn	"common.c",1098,1
        LRETR
        ; return occurs

DW$127	.dwtag  DW_TAG_loop
	.dwattr DW$127, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L69:1:1471518967")
	.dwattr DW$127, DW_AT_begin_file("common.c")
	.dwattr DW$127, DW_AT_begin_line(0x43e)
	.dwattr DW$127, DW_AT_end_line(0x443)
DW$128	.dwtag  DW_TAG_loop_range
	.dwattr DW$128, DW_AT_low_pc(DW$L$__f_writefatsector$5$B)
	.dwattr DW$128, DW_AT_high_pc(DW$L$__f_writefatsector$5$E)
DW$129	.dwtag  DW_TAG_loop_range
	.dwattr DW$129, DW_AT_low_pc(DW$L$__f_writefatsector$6$B)
	.dwattr DW$129, DW_AT_high_pc(DW$L$__f_writefatsector$6$E)
	.dwendtag DW$127

	.dwattr DW$125, DW_AT_end_file("common.c")
	.dwattr DW$125, DW_AT_end_line(0x44a)
	.dwattr DW$125, DW_AT_end_column(0x01)
	.dwendtag DW$125

	.sect	".text"

DW$130	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_getfatsector"), DW_AT_symbol_name("__f_getfatsector")
	.dwattr DW$130, DW_AT_low_pc(__f_getfatsector)
	.dwattr DW$130, DW_AT_high_pc(0x00)
	.dwattr DW$130, DW_AT_begin_file("common.c")
	.dwattr DW$130, DW_AT_begin_line(0x45d)
	.dwattr DW$130, DW_AT_begin_column(0x0c)
	.dwattr DW$130, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$130, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",1117,63

;***************************************************************
;* FNAME: __f_getfatsector              FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            1 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

__f_getfatsector:
;* AR4   assigned to _vi
DW$131	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$131, DW_AT_type(*DW$T$92)
	.dwattr DW$131, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _sector
DW$132	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sector"), DW_AT_symbol_name("_sector")
	.dwattr DW$132, DW_AT_type(*DW$T$13)
	.dwattr DW$132, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      XAR0,#598             ; |1119| 
        MOVL      *SP++,XAR2
        MOVL      XAR1,XAR4             ; |1117| 
        MOVL      *SP++,XAR3
        MOVL      XAR2,ACC              ; |1117| 
        ADDB      SP,#2
        CMPL      ACC,*+XAR1[AR0]       ; |1119| 
        BF        L76,EQ                ; |1119| 
        ; branchcc occurs ; |1119| 
        MOVL      XAR0,#600             ; |1123| 
        MOVL      ACC,*+XAR1[AR0]       ; |1123| 
        BF        L73,EQ                ; |1123| 
        ; branchcc occurs ; |1123| 
        MOVL      XAR4,XAR1             ; |1124| 
        LCR       #__f_writefatsector   ; |1124| 
        ; call occurs [#__f_writefatsector] ; |1124| 
        CMPB      AL,#0                 ; |1124| 
        BF        L79,NEQ               ; |1124| 
        ; branchcc occurs ; |1124| 
L73:    
        MOVL      XAR0,#598             ; |1128| 
        MOVL      ACC,XAR2              ; |1130| 
        MOVL      *+XAR1[AR0],XAR2      ; |1128| 
        MOVB      XAR0,#76              ; |1130| 
        CMPL      ACC,*+XAR1[AR0]       ; |1130| 
        BF        L74,LO                ; |1130| 
        ; branchcc occurs ; |1130| 
        MOVB      AL,#18                ; |1131| 
        BF        L79,UNC               ; |1131| 
        ; branch occurs ; |1131| 
L74:    
        MOVL      ACC,XAR2              ; |1134| 
        MOVB      XAR0,#74              ; |1134| 
        MOVB      XAR3,#0
        ADDL      ACC,*+XAR1[AR0]       ; |1134| 
        MOVB      XAR0,#16              ; |1136| 
        MOVL      XAR2,ACC              ; |1134| 
        MOV       AL,*+XAR1[AR0]        ; |1136| 
        BF        L78,EQ                ; |1136| 
        ; branchcc occurs ; |1136| 
L75:    
DW$L$__f_getfatsector$7$B:
	.dwpsn	"common.c",1136,0
        MOVB      ACC,#86
        MOVL      XAR4,XAR1             ; |1137| 
        ADDL      ACC,XAR1
        MOVL      XAR5,ACC              ; |1137| 
        MOV       *-SP[1],#1            ; |1137| 
        MOVL      ACC,XAR2              ; |1137| 
        LCR       #__f_readsector       ; |1137| 
        ; call occurs [#__f_readsector] ; |1137| 
        CMPB      AL,#0                 ; |1137| 
        BF        L77,NEQ               ; |1137| 
        ; branchcc occurs ; |1137| 
DW$L$__f_getfatsector$7$E:
L76:    
        MOVB      AL,#0
        BF        L79,UNC               ; |1138| 
        ; branch occurs ; |1138| 
L77:    
DW$L$__f_getfatsector$9$B:
        MOVB      XAR0,#76              ; |1140| 
        MOVL      ACC,XAR2              ; |1140| 
        ADDB      XAR3,#1               ; |1136| 
        ADDL      ACC,*+XAR1[AR0]       ; |1140| 
        MOVL      XAR2,ACC              ; |1140| 
        MOVB      XAR0,#16              ; |1136| 
        MOV       AL,AR3                ; |1136| 
        CMP       AL,*+XAR1[AR0]        ; |1136| 
	.dwpsn	"common.c",1141,0
        BF        L75,LO                ; |1136| 
        ; branchcc occurs ; |1136| 
DW$L$__f_getfatsector$9$E:
L78:    
        MOVB      AL,#19                ; |1142| 
L79:    
        SUBB      SP,#2                 ; |1142| 
        MOVL      XAR3,*--SP            ; |1142| 
        MOVL      XAR2,*--SP            ; |1142| 
        MOVL      XAR1,*--SP            ; |1142| 
	.dwpsn	"common.c",1146,1
        LRETR
        ; return occurs

DW$133	.dwtag  DW_TAG_loop
	.dwattr DW$133, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L75:1:1471518967")
	.dwattr DW$133, DW_AT_begin_file("common.c")
	.dwattr DW$133, DW_AT_begin_line(0x470)
	.dwattr DW$133, DW_AT_end_line(0x475)
DW$134	.dwtag  DW_TAG_loop_range
	.dwattr DW$134, DW_AT_low_pc(DW$L$__f_getfatsector$7$B)
	.dwattr DW$134, DW_AT_high_pc(DW$L$__f_getfatsector$7$E)
DW$135	.dwtag  DW_TAG_loop_range
	.dwattr DW$135, DW_AT_low_pc(DW$L$__f_getfatsector$9$B)
	.dwattr DW$135, DW_AT_high_pc(DW$L$__f_getfatsector$9$E)
	.dwendtag DW$133

	.dwattr DW$130, DW_AT_end_file("common.c")
	.dwattr DW$130, DW_AT_end_line(0x47a)
	.dwattr DW$130, DW_AT_end_column(0x01)
	.dwendtag DW$130

	.sect	".text"
	.global	__f_setclustervalue

DW$136	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_setclustervalue"), DW_AT_symbol_name("__f_setclustervalue")
	.dwattr DW$136, DW_AT_low_pc(__f_setclustervalue)
	.dwattr DW$136, DW_AT_high_pc(0x00)
	.dwattr DW$136, DW_AT_begin_file("common.c")
	.dwattr DW$136, DW_AT_begin_line(0x490)
	.dwattr DW$136, DW_AT_begin_column(0x05)
	.dwattr DW$136, DW_AT_frame_base[DW_OP_breg20 -14]
	.dwattr DW$136, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",1168,80

;***************************************************************
;* FNAME: __f_setclustervalue           FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  6 SOE     *
;***************************************************************

__f_setclustervalue:
;* AR4   assigned to _vi
DW$137	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$137, DW_AT_type(*DW$T$92)
	.dwattr DW$137, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _cluster
DW$138	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cluster"), DW_AT_symbol_name("_cluster")
	.dwattr DW$138, DW_AT_type(*DW$T$13)
	.dwattr DW$138, DW_AT_location[DW_OP_reg0]
DW$139	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$139, DW_AT_type(*DW$T$13)
	.dwattr DW$139, DW_AT_location[DW_OP_breg20 -16]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#6
        MOVL      XAR0,#1136            ; |1170| 
        MOVL      XAR3,XAR4             ; |1168| 
        MOVL      XAR1,ACC              ; |1168| 
        MOVL      ACC,*-SP[16]          ; |1168| 
        MOVL      *-SP[4],ACC           ; |1168| 
        MOVL      XAR6,*+XAR3[AR0]      ; |1170| 
        MOVB      ACC,#2
        CMPL      ACC,XAR6              ; |1170| 
        BF        L87,EQ                ; |1170| 
        ; branchcc occurs ; |1170| 
        MOVB      ACC,#1
        CMPL      ACC,XAR6              ; |1185| 
        BF        L81,EQ                ; |1185| 
        ; branchcc occurs ; |1185| 
        MOVB      ACC,#3
        CMPL      ACC,XAR6              ; |1229| 
        BF        L80,EQ                ; |1229| 
        ; branchcc occurs ; |1229| 
        MOVB      AL,#21                ; |1252| 
        BF        L90,UNC               ; |1252| 
        ; branch occurs ; |1252| 
L80:    
        CLRC      SXM
        MOVL      ACC,XAR1
        SFR       ACC,7                 ; |1234| 
        MOVL      XAR6,ACC              ; |1234| 
        LSL       ACC,7                 ; |1234| 
        MOVL      XAR7,ACC              ; |1234| 
        MOVL      XAR4,XAR3             ; |1236| 
        MOVL      ACC,XAR1              ; |1234| 
        SUBL      ACC,XAR7
        MOVL      XAR1,ACC              ; |1234| 
        MOVL      ACC,XAR6              ; |1236| 
        LCR       #__f_getfatsector     ; |1236| 
        ; call occurs [#__f_getfatsector] ; |1236| 
        CMPB      AL,#0                 ; |1236| 
        BF        L90,NEQ               ; |1236| 
        ; branchcc occurs ; |1236| 
        MOVL      XAR4,XAR3             ; |1239| 
        MOVL      ACC,XAR1
        LSL       ACC,2                 ; |1239| 
        ADDL      XAR4,ACC
        ADDB      XAR4,#86              ; |1239| 
        LCR       #__f_getlong          ; |1239| 
        ; call occurs [#__f_getlong] ; |1239| 
        MOVL      XAR6,ACC              ; |1239| 
        AND       ACC,#61440 << 16      ; |1242| 
        AND       *-SP[3],#4095         ; |1241| 
        MOVL      P,ACC                 ; |1242| 
        MOV       AL,*-SP[4]            ; |1242| 
        OR        AL,PL                 ; |1242| 
        MOV       *-SP[4],AL            ; |1242| 
        MOV       AL,*-SP[3]            ; |1242| 
        OR        AL,PH                 ; |1242| 
        MOV       *-SP[3],AL            ; |1242| 
        MOVL      XAR7,*-SP[4]          ; |1242| 
        MOVL      ACC,XAR6              ; |1242| 
        CMPL      ACC,XAR7              ; |1244| 
        BF        L89,EQ                ; |1244| 
        ; branchcc occurs ; |1244| 
        MOVL      ACC,*-SP[4]           ; |1245| 
        LCR       #__f_setlong          ; |1245| 
        ; call occurs [#__f_setlong] ; |1245| 
        BF        L88,UNC               ; |1246| 
        ; branch occurs ; |1246| 
L81:    
        MOV       ACC,#4095             ; |1189| 
        MOVL      *-SP[6],XAR1          ; |1187| 
        AND       AL,*-SP[4]            ; |1189| 
        MOVZ      AR6,AL                ; |1189| 
        MOVL      ACC,*-SP[6]           ; |1189| 
        ANDB      AL,#0x01              ; |1191| 
        MOVB      AH,#0
        TEST      ACC                   ; |1191| 
        BF        L82,EQ                ; |1191| 
        ; branchcc occurs ; |1191| 
        MOV       AL,AR6
        LSL       AL,4                  ; |1191| 
        MOVZ      AR6,AL                ; |1191| 
L82:    
        MOVZ      AR4,SP                ; |1193| 
        MOV       AL,AR6                ; |1193| 
        SUBB      XAR4,#2               ; |1193| 
        LCR       #__f_setword          ; |1193| 
        ; call occurs [#__f_setword] ; |1193| 
        MOVL      XAR6,*-SP[6]          ; |1195| 
        CLRC      SXM
        MOVL      ACC,*-SP[6]           ; |1193| 
        SFR       ACC,1                 ; |1195| 
        ADDL      XAR6,ACC
        MOVL      XAR4,#511             ; |1196| 
        MOVL      *-SP[4],XAR4          ; |1196| 
        MOV       AH,*-SP[4]            ; |1196| 
        MOVL      *-SP[6],XAR6          ; |1195| 
        AND       AH,*-SP[6]            ; |1196| 
        MOV       *-SP[4],AH            ; |1196| 
        MOV       AL,*-SP[3]            ; |1196| 
        AND       AL,*-SP[5]            ; |1196| 
        MOV       *-SP[3],AL            ; |1196| 
        MOVL      ACC,*-SP[6]           ; |1196| 
        MOVL      XAR4,XAR3             ; |1199| 
        SFR       ACC,9                 ; |1199| 
        MOVL      XAR2,*-SP[4]          ; |1196| 
        MOVL      *-SP[6],ACC           ; |1199| 
        LCR       #__f_getfatsector     ; |1199| 
        ; call occurs [#__f_getfatsector] ; |1199| 
        CMPB      AL,#0                 ; |1199| 
        BF        L90,NEQ               ; |1199| 
        ; branchcc occurs ; |1199| 
        MOVL      ACC,XAR1
        ANDB      AL,#0x01              ; |1202| 
        MOVB      AH,#0
        TEST      ACC                   ; |1202| 
        BF        L83,EQ                ; |1202| 
        ; branchcc occurs ; |1202| 
        MOVL      XAR4,XAR3             ; |1203| 
        MOVL      ACC,XAR2              ; |1203| 
        ADDL      XAR4,ACC
        MOVB      XAR0,#86              ; |1203| 
        MOV       AL,*+XAR4[AR0]        ; |1203| 
        ANDB      AL,#0x0f              ; |1203| 
        OR        *-SP[2],AL            ; |1203| 
L83:    
        MOVL      ACC,XAR3              ; |1206| 
        MOVZ      AR6,*-SP[2]           ; |1206| 
        ADDL      ACC,XAR2
        ADDB      ACC,#86               ; |1206| 
        MOVL      XAR4,ACC              ; |1206| 
        MOV       AL,AR6                ; |1206| 
        CMP       AL,*+XAR4[0]          ; |1206| 
        BF        L84,EQ                ; |1206| 
        ; branchcc occurs ; |1206| 
        MOVL      XAR0,#600             ; |1208| 
        MOVB      ACC,#1
        MOV       *+XAR4[0],AR6         ; |1207| 
        MOVL      *+XAR3[AR0],ACC       ; |1208| 
L84:    
        MOV       ACC,#512              ; |1211| 
        ADDB      XAR2,#1               ; |1211| 
        CMPL      ACC,XAR2              ; |1211| 
        BF        L85,HI                ; |1211| 
        ; branchcc occurs ; |1211| 
        MOVL      XAR6,*-SP[6]          ; |1213| 
        MOVL      XAR4,XAR3             ; |1213| 
        MOVB      ACC,#1
        ADDL      ACC,XAR6
        LCR       #__f_getfatsector     ; |1213| 
        ; call occurs [#__f_getfatsector] ; |1213| 
        CMPB      AL,#0                 ; |1213| 
        BF        L90,NEQ               ; |1213| 
        ; branchcc occurs ; |1213| 
        MOVB      XAR2,#0
L85:    
        MOVL      ACC,XAR1
        ANDB      AL,#0x01              ; |1218| 
        BF        L86,NEQ               ; |1218| 
        ; branchcc occurs ; |1218| 
        MOVL      XAR4,XAR3             ; |1219| 
        MOVL      ACC,XAR2              ; |1219| 
        ADDL      XAR4,ACC
        MOVB      XAR0,#86              ; |1219| 
        MOV       AL,*+XAR4[AR0]        ; |1219| 
        ANDB      AL,#0xf0              ; |1219| 
        OR        *-SP[1],AL            ; |1219| 
L86:    
        MOVL      ACC,XAR3              ; |1222| 
        MOVZ      AR6,*-SP[1]           ; |1222| 
        ADDL      ACC,XAR2
        ADDB      ACC,#86               ; |1222| 
        MOVL      XAR4,ACC              ; |1222| 
        MOV       AL,AR6                ; |1222| 
        CMP       AL,*+XAR4[0]          ; |1222| 
        BF        L89,EQ                ; |1222| 
        ; branchcc occurs ; |1222| 
        MOV       *+XAR4[0],AR6         ; |1223| 
        BF        L88,UNC               ; |1224| 
        ; branch occurs ; |1224| 
L87:    
        CLRC      SXM
        MOVL      ACC,XAR1
        SFR       ACC,8                 ; |1175| 
        MOVL      XAR6,ACC              ; |1175| 
        LSL       ACC,8                 ; |1175| 
        MOVL      XAR7,ACC              ; |1175| 
        MOVL      XAR4,XAR3             ; |1177| 
        MOVZ      AR2,*-SP[4]           ; |1171| 
        MOVL      ACC,XAR1              ; |1175| 
        SUBL      ACC,XAR7
        MOVL      XAR1,ACC              ; |1175| 
        MOVL      ACC,XAR6              ; |1177| 
        LCR       #__f_getfatsector     ; |1177| 
        ; call occurs [#__f_getfatsector] ; |1177| 
        CMPB      AL,#0                 ; |1177| 
        BF        L90,NEQ               ; |1177| 
        ; branchcc occurs ; |1177| 
        MOVL      XAR4,XAR3             ; |1180| 
        MOVL      ACC,XAR1
        LSL       ACC,1                 ; |1180| 
        ADDL      XAR4,ACC
        ADDB      XAR4,#86              ; |1180| 
        LCR       #__f_getword          ; |1180| 
        ; call occurs [#__f_getword] ; |1180| 
        MOV       AH,AR2                ; |1180| 
        CMP       AH,AL                 ; |1180| 
        BF        L89,EQ                ; |1180| 
        ; branchcc occurs ; |1180| 
        MOV       AL,AR2                ; |1181| 
        LCR       #__f_setword          ; |1181| 
        ; call occurs [#__f_setword] ; |1181| 
L88:    
        MOVL      XAR0,#600             ; |1182| 
        MOVB      ACC,#1
        MOVL      *+XAR3[AR0],ACC       ; |1182| 
L89:    
        MOVB      AL,#0
L90:    
        SUBB      SP,#6                 ; |1255| 
        MOVL      XAR3,*--SP            ; |1255| 
        MOVL      XAR2,*--SP            ; |1255| 
        MOVL      XAR1,*--SP            ; |1255| 
	.dwpsn	"common.c",1256,1
        LRETR
        ; return occurs
	.dwattr DW$136, DW_AT_end_file("common.c")
	.dwattr DW$136, DW_AT_end_line(0x4e8)
	.dwattr DW$136, DW_AT_end_column(0x01)
	.dwendtag DW$136

	.sect	".text"
	.global	__f_getclustervalue

DW$140	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_getclustervalue"), DW_AT_symbol_name("__f_getclustervalue")
	.dwattr DW$140, DW_AT_low_pc(__f_getclustervalue)
	.dwattr DW$140, DW_AT_high_pc(0x00)
	.dwattr DW$140, DW_AT_begin_file("common.c")
	.dwattr DW$140, DW_AT_begin_line(0x4fc)
	.dwattr DW$140, DW_AT_begin_column(0x05)
	.dwattr DW$140, DW_AT_frame_base[DW_OP_breg20 -16]
	.dwattr DW$140, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",1276,82

;***************************************************************
;* FNAME: __f_getclustervalue           FR SIZE:  14           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  8 Auto,  6 SOE     *
;***************************************************************

__f_getclustervalue:
;* AR4   assigned to _vi
DW$141	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$141, DW_AT_type(*DW$T$92)
	.dwattr DW$141, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _cluster
DW$142	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cluster"), DW_AT_symbol_name("_cluster")
	.dwattr DW$142, DW_AT_type(*DW$T$13)
	.dwattr DW$142, DW_AT_location[DW_OP_reg0]
;* AR5   assigned to _pvalue
DW$143	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pvalue"), DW_AT_symbol_name("_pvalue")
	.dwattr DW$143, DW_AT_type(*DW$T$59)
	.dwattr DW$143, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#8
        MOVL      XAR0,#1136            ; |1279| 
        MOVL      XAR2,XAR4             ; |1276| 
        MOVL      *-SP[4],XAR5          ; |1276| 
        MOVL      XAR6,*+XAR2[AR0]      ; |1279| 
        MOVL      XAR1,ACC              ; |1276| 
        MOVB      ACC,#2
        CMPL      ACC,XAR6              ; |1279| 
        BF        L95,EQ                ; |1279| 
        ; branchcc occurs ; |1279| 
        MOVB      ACC,#1
        CMPL      ACC,XAR6              ; |1294| 
        BF        L92,EQ                ; |1294| 
        ; branchcc occurs ; |1294| 
        MOVB      ACC,#3
        CMPL      ACC,XAR6              ; |1331| 
        BF        L91,EQ                ; |1331| 
        ; branchcc occurs ; |1331| 
        MOVB      AL,#21                ; |1344| 
        BF        L99,UNC               ; |1344| 
        ; branch occurs ; |1344| 
L91:    
        CLRC      SXM
        MOVL      ACC,XAR1
        SFR       ACC,7                 ; |1334| 
        MOVL      XAR6,ACC              ; |1334| 
        LSL       ACC,7                 ; |1334| 
        MOVL      XAR7,ACC              ; |1334| 
        MOVL      XAR4,XAR2             ; |1336| 
        MOVL      ACC,XAR1              ; |1334| 
        SUBL      ACC,XAR7
        MOVL      XAR1,ACC              ; |1334| 
        MOVL      ACC,XAR6              ; |1336| 
        LCR       #__f_getfatsector     ; |1336| 
        ; call occurs [#__f_getfatsector] ; |1336| 
        CMPB      AL,#0                 ; |1336| 
        BF        L99,NEQ               ; |1336| 
        ; branchcc occurs ; |1336| 
        MOVL      ACC,*-SP[4]
        BF        L98,EQ                ; |1339| 
        ; branchcc occurs ; |1339| 
        MOVL      ACC,XAR1
        LSL       ACC,2                 ; |1339| 
        ADDL      XAR2,ACC
        ADDB      XAR2,#86              ; |1339| 
        MOVL      XAR4,XAR2             ; |1339| 
        LCR       #__f_getlong          ; |1339| 
        ; call occurs [#__f_getlong] ; |1339| 
        MOVL      XAR4,*-SP[4]          ; |1339| 
        AND       AH,#4095              ; |1339| 
        MOVL      *+XAR4[0],ACC         ; |1339| 
        BF        L98,UNC               ; |1339| 
        ; branch occurs ; |1339| 
L92:    
        MOVL      *-SP[6],XAR1          ; |1296| 
        MOVL      XAR6,*-SP[6]          ; |1299| 
        CLRC      SXM
        MOVL      ACC,XAR1              ; |1296| 
        SFR       ACC,1                 ; |1299| 
        ADDL      XAR6,ACC
        MOVL      XAR4,#511             ; |1300| 
        MOVL      *-SP[8],XAR4          ; |1300| 
        MOV       AH,*-SP[8]            ; |1300| 
        MOVL      *-SP[6],XAR6          ; |1299| 
        AND       AH,*-SP[6]            ; |1300| 
        MOV       *-SP[8],AH            ; |1300| 
        MOV       AL,*-SP[7]            ; |1300| 
        AND       AL,*-SP[5]            ; |1300| 
        MOVL      XAR4,XAR2             ; |1303| 
        MOV       *-SP[7],AL            ; |1300| 
        MOVL      ACC,*-SP[6]           ; |1300| 
        SFR       ACC,9                 ; |1303| 
        MOVL      XAR3,*-SP[8]          ; |1300| 
        MOVL      *-SP[6],ACC           ; |1303| 
        LCR       #__f_getfatsector     ; |1303| 
        ; call occurs [#__f_getfatsector] ; |1303| 
        CMPB      AL,#0                 ; |1303| 
        BF        L99,NEQ               ; |1303| 
        ; branchcc occurs ; |1303| 
        MOVL      XAR4,XAR2             ; |1306| 
        MOVL      ACC,XAR3              ; |1306| 
        ADDL      XAR4,ACC
        MOVB      XAR0,#86              ; |1306| 
        ADDB      XAR3,#1               ; |1306| 
        MOV       AL,*+XAR4[AR0]        ; |1306| 
        MOV       *-SP[2],AL            ; |1306| 
        MOV       ACC,#512              ; |1306| 
        CMPL      ACC,XAR3              ; |1306| 
        BF        L93,HI                ; |1306| 
        ; branchcc occurs ; |1306| 
        MOVL      XAR6,*-SP[6]          ; |1309| 
        MOVL      XAR4,XAR2             ; |1309| 
        MOVB      ACC,#1
        ADDL      ACC,XAR6
        LCR       #__f_getfatsector     ; |1309| 
        ; call occurs [#__f_getfatsector] ; |1309| 
        CMPB      AL,#0                 ; |1309| 
        BF        L99,NEQ               ; |1309| 
        ; branchcc occurs ; |1309| 
        MOVB      XAR3,#0
L93:    
        MOVZ      AR4,SP                ; |1316| 
        MOVL      ACC,XAR3              ; |1314| 
        ADDL      XAR2,ACC
        MOVB      XAR0,#86              ; |1314| 
        SUBB      XAR4,#2               ; |1316| 
        MOV       AL,*+XAR2[AR0]        ; |1314| 
        MOV       *-SP[1],AL            ; |1314| 
        LCR       #__f_getword          ; |1316| 
        ; call occurs [#__f_getword] ; |1316| 
        XOR       AR1,#0xffff           ; |1318| 
        MOV       PH,#0
        MOV       PL,AL
        MOVB      ACC,#1
        AND       ACC,AR1               ; |1318| 
        BF        L94,EQ                ; |1318| 
        ; branchcc occurs ; |1318| 
        AND       PL,#0x0fff            ; |1322| 
        MOV       PH,#0                 ; |1322| 
        MOV       ACC,#4080             ; |1322| 
        CMPL      ACC,P                 ; |1322| 
        BF        L96,LOS               ; |1322| 
        ; branchcc occurs ; |1322| 
        BF        L97,UNC               ; |1322| 
        ; branch occurs ; |1322| 
L94:    
        CLRC      SXM
        MOVL      ACC,P
        SFR       ACC,4                 ; |1319| 
        MOVL      P,ACC                 ; |1319| 
        MOV       ACC,#4080             ; |1319| 
        CMPL      ACC,P                 ; |1319| 
        BF        L96,LOS               ; |1319| 
        ; branchcc occurs ; |1319| 
        BF        L97,UNC               ; |1319| 
        ; branch occurs ; |1319| 
L95:    
        CLRC      SXM
        MOVL      ACC,XAR1
        SFR       ACC,8                 ; |1282| 
        MOVL      XAR6,ACC              ; |1282| 
        LSL       ACC,8                 ; |1282| 
        MOVL      XAR7,ACC              ; |1282| 
        MOVL      XAR4,XAR2             ; |1284| 
        MOVL      ACC,XAR1              ; |1282| 
        SUBL      ACC,XAR7
        MOVL      XAR1,ACC              ; |1282| 
        MOVL      ACC,XAR6              ; |1284| 
        LCR       #__f_getfatsector     ; |1284| 
        ; call occurs [#__f_getfatsector] ; |1284| 
        CMPB      AL,#0                 ; |1284| 
        BF        L99,NEQ               ; |1284| 
        ; branchcc occurs ; |1284| 
        MOVL      ACC,XAR1
        LSL       ACC,1                 ; |1287| 
        ADDL      XAR2,ACC
        ADDB      XAR2,#86              ; |1287| 
        MOVL      XAR4,XAR2             ; |1287| 
        LCR       #__f_getword          ; |1287| 
        ; call occurs [#__f_getword] ; |1287| 
        CLRC      SXM
        MOV       PH,#0
        MOV       PL,AL
        MOV       ACC,#65520            ; |1287| 
        CMPL      ACC,P                 ; |1287| 
        BF        L97,HI                ; |1287| 
        ; branchcc occurs ; |1287| 
L96:    
        MOVL      ACC,P
        OR        ACC,#65535 << 12      ; |1288| 
        MOVL      P,ACC                 ; |1288| 
L97:    
        MOVL      ACC,*-SP[4]
        BF        L98,EQ                ; |1290| 
        ; branchcc occurs ; |1290| 
        MOVL      XAR4,*-SP[4]
        MOVL      *+XAR4[0],P           ; |1290| 
L98:    
        MOVB      AL,#0
L99:    
        SUBB      SP,#8                 ; |1292| 
        MOVL      XAR3,*--SP            ; |1292| 
        MOVL      XAR2,*--SP            ; |1292| 
        MOVL      XAR1,*--SP            ; |1292| 
	.dwpsn	"common.c",1346,1
        LRETR
        ; return occurs
	.dwattr DW$140, DW_AT_end_file("common.c")
	.dwattr DW$140, DW_AT_end_line(0x542)
	.dwattr DW$140, DW_AT_end_column(0x01)
	.dwendtag DW$140

	.sect	".text"

DW$144	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_close_drive_files"), DW_AT_symbol_name("__f_close_drive_files")
	.dwattr DW$144, DW_AT_low_pc(__f_close_drive_files)
	.dwattr DW$144, DW_AT_high_pc(0x00)
	.dwattr DW$144, DW_AT_begin_file("common.c")
	.dwattr DW$144, DW_AT_begin_line(0x548)
	.dwattr DW$144, DW_AT_begin_column(0x0d)
	.dwattr DW$144, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$144, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",1353,1

;***************************************************************
;* FNAME: __f_close_drive_files         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

__f_close_drive_files:
;* AL    assigned to _drivenum
DW$145	.dwtag  DW_TAG_formal_parameter, DW_AT_name("drivenum"), DW_AT_symbol_name("_drivenum")
	.dwattr DW$145, DW_AT_type(*DW$T$10)
	.dwattr DW$145, DW_AT_location[DW_OP_reg0]
        MOVZ      AR7,AL                ; |1353| 
	.dwpsn	"common.c",1356,0
        MOVB      XAR6,#0
L100:    
DW$L$__f_close_drive_files$2$B:
	.dwpsn	"common.c",1357,0
        MOV       T,AR6
;       MOV       T,T Implicitly done by - MPY ACC,OP,#IMM ; |1359| 
        MOVL      XAR4,#_f_filesystem+1148 ; |1359| 
        MPY       P,AR6,#974            ; |1359| 
        MOVL      ACC,P                 ; |1359| 
        ADDL      XAR4,ACC
        MOV       AL,AR7                ; |1359| 
        CMP       AL,*+XAR4[5]          ; |1359| 
        BF        L101,NEQ              ; |1359| 
        ; branchcc occurs ; |1359| 
DW$L$__f_close_drive_files$2$E:
DW$L$__f_close_drive_files$3$B:
        MOV       AH,*+XAR4[4]          ; |1359| 
        BF        L101,EQ               ; |1359| 
        ; branchcc occurs ; |1359| 
DW$L$__f_close_drive_files$3$E:
DW$L$__f_close_drive_files$4$B:
        MOV       *+XAR4[4],#0          ; |1361| 
DW$L$__f_close_drive_files$4$E:
L101:    
DW$L$__f_close_drive_files$5$B:
        MOV       AH,AR6
        ADDB      AH,#1                 ; |1356| 
        MOVZ      AR6,AH                ; |1356| 
	.dwpsn	"common.c",1363,0
        BF        L100,LEQ              ; |1356| 
        ; branchcc occurs ; |1356| 
DW$L$__f_close_drive_files$5$E:
	.dwpsn	"common.c",1364,1
        LRETR
        ; return occurs

DW$146	.dwtag  DW_TAG_loop
	.dwattr DW$146, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L100:1:1471518967")
	.dwattr DW$146, DW_AT_begin_file("common.c")
	.dwattr DW$146, DW_AT_begin_line(0x54c)
	.dwattr DW$146, DW_AT_end_line(0x553)
DW$147	.dwtag  DW_TAG_loop_range
	.dwattr DW$147, DW_AT_low_pc(DW$L$__f_close_drive_files$2$B)
	.dwattr DW$147, DW_AT_high_pc(DW$L$__f_close_drive_files$2$E)
DW$148	.dwtag  DW_TAG_loop_range
	.dwattr DW$148, DW_AT_low_pc(DW$L$__f_close_drive_files$3$B)
	.dwattr DW$148, DW_AT_high_pc(DW$L$__f_close_drive_files$3$E)
DW$149	.dwtag  DW_TAG_loop_range
	.dwattr DW$149, DW_AT_low_pc(DW$L$__f_close_drive_files$4$B)
	.dwattr DW$149, DW_AT_high_pc(DW$L$__f_close_drive_files$4$E)
DW$150	.dwtag  DW_TAG_loop_range
	.dwattr DW$150, DW_AT_low_pc(DW$L$__f_close_drive_files$5$B)
	.dwattr DW$150, DW_AT_high_pc(DW$L$__f_close_drive_files$5$E)
	.dwendtag DW$146

	.dwattr DW$144, DW_AT_end_file("common.c")
	.dwattr DW$144, DW_AT_end_line(0x554)
	.dwattr DW$144, DW_AT_end_column(0x01)
	.dwendtag DW$144

	.sect	".text"
	.global	__f_getvolume

DW$151	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_getvolume"), DW_AT_symbol_name("__f_getvolume")
	.dwattr DW$151, DW_AT_low_pc(__f_getvolume)
	.dwattr DW$151, DW_AT_high_pc(0x00)
	.dwattr DW$151, DW_AT_begin_file("common.c")
	.dwattr DW$151, DW_AT_begin_line(0x569)
	.dwattr DW$151, DW_AT_begin_column(0x05)
	.dwattr DW$151, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$151, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",1385,59

;***************************************************************
;* FNAME: __f_getvolume                 FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  6 SOE     *
;***************************************************************

__f_getvolume:
;* AR4   assigned to _fm
DW$152	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$152, DW_AT_type(*DW$T$106)
	.dwattr DW$152, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _drivenum
DW$153	.dwtag  DW_TAG_formal_parameter, DW_AT_name("drivenum"), DW_AT_symbol_name("_drivenum")
	.dwattr DW$153, DW_AT_type(*DW$T$10)
	.dwattr DW$153, DW_AT_location[DW_OP_reg0]
;* AR5   assigned to _pvi
DW$154	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pvi"), DW_AT_symbol_name("_pvi")
	.dwattr DW$154, DW_AT_type(*DW$T$142)
	.dwattr DW$154, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#2
        MOVZ      AR1,AL                ; |1385| 
        CMPB      AL,#0                 ; |1389| 
        MOVL      XAR3,XAR4             ; |1385| 
        MOVL      *-SP[2],XAR5          ; |1385| 
        BF        L104,LT               ; |1389| 
        ; branchcc occurs ; |1389| 
        CMPB      AL,#0                 ; |1389| 
        BF        L104,GT               ; |1389| 
        ; branchcc occurs ; |1389| 
        MOV       T,AR1
        MOVL      XAR4,#_f_filesystem   ; |1391| 
;       MOV       T,T Implicitly done by - MPY ACC,OP,#IMM ; |1391| 
        MPY       ACC,AR1,#1148         ; |1391| 
        ADDL      XAR4,ACC
        MOVL      XAR5,XAR4             ; |1391| 
        MOVL      XAR2,XAR4             ; |1391| 
        MOVL      XAR4,XAR3             ; |1393| 
        LCR       #__f_mutex_get        ; |1393| 
        ; call occurs [#__f_mutex_get] ; |1393| 
        CMPB      AL,#0                 ; |1393| 
        BF        L112,NEQ              ; |1393| 
        ; branchcc occurs ; |1393| 
        MOV       T,AR1
        MOVL      ACC,XAR3              ; |1396| 
        MOVL      XAR0,#1134            ; |1396| 
        MPYB      P,T,#20               ; |1396| 
        ADDL      ACC,P
        ADDB      ACC,#3                ; |1396| 
        MOVL      *+XAR2[AR0],ACC       ; |1396| 
        MOVL      ACC,*-SP[2]           ; |1396| 
        BF        L102,EQ               ; |1398| 
        ; branchcc occurs ; |1398| 
        MOVL      XAR4,*-SP[2]
        MOVL      *+XAR4[0],XAR2        ; |1398| 
L102:    
        MOVL      XAR6,*+XAR2[0]        ; |1400| 
        MOVL      ACC,XAR6              ; |1400| 
        BF        L103,EQ               ; |1400| 
        ; branchcc occurs ; |1400| 
        MOVB      ACC,#1
        CMPL      ACC,XAR6              ; |1400| 
        BF        L106,EQ               ; |1400| 
        ; branchcc occurs ; |1400| 
        MOVB      ACC,#2
        CMPL      ACC,XAR6              ; |1400| 
        BF        L105,EQ               ; |1400| 
        ; branchcc occurs ; |1400| 
        BF        L104,UNC              ; |1400| 
        ; branch occurs ; |1400| 
L103:    
        MOV       AL,AR1
        LCR       #__f_close_drive_files ; |1403| 
        ; call occurs [#__f_close_drive_files] ; |1403| 
L104:    
        MOVB      AL,#1                 ; |1472| 
        BF        L112,UNC              ; |1472| 
        ; branch occurs ; |1472| 
L105:    
        MOVL      XAR4,XAR2             ; |1407| 
        LCR       #__f_checkstatus      ; |1407| 
        ; call occurs [#__f_checkstatus] ; |1407| 
        CMPB      AL,#0                 ; |1407| 
        BF        L111,EQ               ; |1407| 
        ; branchcc occurs ; |1407| 
L106:    
        MOVL      XAR0,#600             ; |1425| 
        MOVB      ACC,#0
        MOVL      *+XAR2[AR0],ACC       ; |1425| 
        MOVL      XAR0,#598             ; |1426| 
        SUBB      ACC,#1
        MOVL      *+XAR2[AR0],ACC       ; |1426| 
        MOVL      XAR0,#1114            ; |1427| 
        MOVB      ACC,#0
        SUBB      ACC,#1
        MOVL      *+XAR2[AR0],ACC       ; |1427| 
        MOVL      XAR0,#1116            ; |1428| 
        MOVB      ACC,#0
        MOVL      *+XAR2[AR0],ACC       ; |1428| 
        MOVL      XAR0,#1144            ; |1429| 
        MOV       AL,AR1                ; |1429| 
        MOV       *+XAR2[AR0],#0        ; |1429| 
        LCR       #__f_close_drive_files ; |1431| 
        ; call occurs [#__f_close_drive_files] ; |1431| 
        MOVL      XAR0,#1134            ; |1433| 
        MOVL      ACC,*+XAR2[AR0]       ; |1433| 
        BF        L107,EQ               ; |1433| 
        ; branchcc occurs ; |1433| 
        MOVL      XAR4,ACC
        MOV       *+XAR4[0],#0          ; |1433| 
L107:    
        MOVL      XAR0,#1136            ; |1434| 
        MOVB      ACC,#0
        MOVL      *+XAR2[AR0],ACC       ; |1434| 
        MOVL      XAR0,#1128            ; |1436| 
        MOVL      ACC,*+XAR2[AR0]       ; |1436| 
        BF        L108,EQ               ; |1436| 
        ; branchcc occurs ; |1436| 
        MOVL      XAR0,#1132            ; |1437| 
        MOVL      XAR7,ACC              ; |1437| 
        MOVL      XAR4,*+XAR2[AR0]      ; |1437| 
        LCR       *XAR7                 ; |1437| 
        ; call occurs [XAR7] ; |1437| 
        ANDB      AL,#0x01              ; |1438| 
        MOVB      AH,#0
        TEST      ACC                   ; |1438| 
        BF        L108,EQ               ; |1438| 
        ; branchcc occurs ; |1438| 
        MOVB      ACC,#1
        MOVL      *+XAR2[0],ACC         ; |1439| 
        MOVB      AL,#16                ; |1440| 
        BF        L112,UNC              ; |1440| 
        ; branch occurs ; |1440| 
L108:    
        MOVL      XAR4,XAR2             ; |1443| 
        LCR       #__f_readbootrecord   ; |1443| 
        ; call occurs [#__f_readbootrecord] ; |1443| 
        CMPB      AL,#0                 ; |1443| 
        BF        L109,EQ               ; |1443| 
        ; branchcc occurs ; |1443| 
        MOVB      XAR6,#0
        MOVL      XAR0,#1136            ; |1466| 
        MOVL      *+XAR2[AR0],XAR6      ; |1466| 
        BF        L112,UNC              ; |1467| 
        ; branch occurs ; |1467| 
L109:    
        MOVL      XAR4,XAR2             ; |1445| 
        LCR       #__f_buildsectors     ; |1445| 
        ; call occurs [#__f_buildsectors] ; |1445| 
        MOVW      DP,#_MagicNumber
        MOVB      ACC,#1
        ADDL      @_MagicNumber,ACC     ; |1447| 
        MOVW      DP,#_MagicNumber
        MOVL      ACC,@_MagicNumber     ; |1448| 
        LSL       ACC,4                 ; |1448| 
        BF        L110,NEQ              ; |1448| 
        ; branchcc occurs ; |1448| 
        MOVB      ACC,#1
        MOVW      DP,#_MagicNumber
        MOVL      @_MagicNumber,ACC     ; |1448| 
L110:    
        MOVB      ACC,#2
        MOVL      *+XAR2[0],ACC         ; |1462| 
L111:    
        MOVB      AL,#0
L112:    
        SUBB      SP,#2                 ; |1463| 
        MOVL      XAR3,*--SP            ; |1463| 
        MOVL      XAR2,*--SP            ; |1463| 
        MOVL      XAR1,*--SP            ; |1463| 
	.dwpsn	"common.c",1473,1
        LRETR
        ; return occurs
	.dwattr DW$151, DW_AT_end_file("common.c")
	.dwattr DW$151, DW_AT_end_line(0x5c1)
	.dwattr DW$151, DW_AT_end_column(0x01)
	.dwendtag DW$151

	.sect	".text"
	.global	_fn_initvolume

DW$155	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_initvolume"), DW_AT_symbol_name("_fn_initvolume")
	.dwattr DW$155, DW_AT_low_pc(_fn_initvolume)
	.dwattr DW$155, DW_AT_high_pc(0x00)
	.dwattr DW$155, DW_AT_begin_file("common.c")
	.dwattr DW$155, DW_AT_begin_line(0x5d6)
	.dwattr DW$155, DW_AT_begin_column(0x05)
	.dwattr DW$155, DW_AT_frame_base[DW_OP_breg20 -14]
	.dwattr DW$155, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",1494,78

;***************************************************************
;* FNAME: _fn_initvolume                FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  6 SOE     *
;***************************************************************

_fn_initvolume:
;* AR4   assigned to _fm
DW$156	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$156, DW_AT_type(*DW$T$106)
	.dwattr DW$156, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _drvnumber
DW$157	.dwtag  DW_TAG_formal_parameter, DW_AT_name("drvnumber"), DW_AT_symbol_name("_drvnumber")
	.dwattr DW$157, DW_AT_type(*DW$T$10)
	.dwattr DW$157, DW_AT_location[DW_OP_reg0]
;* AR5   assigned to _pfunc
DW$158	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pfunc"), DW_AT_symbol_name("_pfunc")
	.dwattr DW$158, DW_AT_type(*DW$T$148)
	.dwattr DW$158, DW_AT_location[DW_OP_reg14]
DW$159	.dwtag  DW_TAG_formal_parameter, DW_AT_name("user_ptr"), DW_AT_symbol_name("_user_ptr")
	.dwattr DW$159, DW_AT_type(*DW$T$3)
	.dwattr DW$159, DW_AT_location[DW_OP_breg20 -16]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#6
        CMPB      AL,#0                 ; |1497| 
        MOVL      *-SP[6],XAR4          ; |1494| 
        MOV       *-SP[1],AL            ; |1494| 
        MOVL      *-SP[4],XAR5          ; |1494| 
        MOVL      XAR3,*-SP[16]         ; |1494| 
        BF        L113,LT               ; |1497| 
        ; branchcc occurs ; |1497| 
        CMPB      AL,#0                 ; |1497| 
        BF        L114,LEQ              ; |1497| 
        ; branchcc occurs ; |1497| 
L113:    
        MOVB      AL,#1                 ; |1497| 
        BF        L119,UNC              ; |1497| 
        ; branch occurs ; |1497| 
L114:    
        MOVW      DP,#_f_filesystem_initialized
        MOV       AL,@_f_filesystem_initialized ; |1499| 
        BF        L115,NEQ              ; |1499| 
        ; branchcc occurs ; |1499| 
        MOV       ACC,#1317 << 1
        MOVB      XAR5,#0
        MOVL      XAR4,#_f_filesystem   ; |1501| 
        LCR       #_memset              ; |1501| 
        ; call occurs [#_memset] ; |1501| 
        MOVB      XAR5,#0
        MOVL      XAR4,#_g_multi        ; |1504| 
        MOVB      ACC,#26
        LCR       #_memset              ; |1504| 
        ; call occurs [#_memset] ; |1504| 
        MOVW      DP,#_f_filesystem_initialized
        MOV       @_f_filesystem_initialized,#1 ; |1507| 
L115:    
        MOV       T,*-SP[1]
        MOV       AL,*-SP[1]            ; |1511| 
        MOVL      XAR4,#_f_filesystem   ; |1511| 
;       MOV       T,T Implicitly done by - MPY ACC,OP,#IMM ; |1511| 
        MPY       ACC,AL,#1148          ; |1511| 
        ADDL      XAR4,ACC
        MOVL      XAR1,XAR4             ; |1511| 
        MOVL      ACC,*+XAR1[0]         ; |1511| 
        BF        L116,EQ               ; |1511| 
        ; branchcc occurs ; |1511| 
        MOVB      AL,#29                ; |1511| 
        BF        L119,UNC              ; |1511| 
        ; branch occurs ; |1511| 
L116:    
        MOVB      ACC,#0
        MOVL      *+XAR1[0],ACC         ; |1546| 
        MOVL      ACC,*-SP[4]           ; |1546| 
        BF        L117,EQ               ; |1548| 
        ; branchcc occurs ; |1548| 
        MOVL      ACC,XAR1
        MOVL      XAR4,#1118            ; |1552| 
        ADDL      XAR4,ACC
        MOVB      XAR5,#0
        MOVB      ACC,#16
        MOVL      XAR2,XAR4             ; |1552| 
        LCR       #_memset              ; |1552| 
        ; call occurs [#_memset] ; |1552| 
        MOVL      XAR7,*-SP[4]          ; |1554| 
        MOVL      XAR5,XAR3             ; |1554| 
        MOVL      XAR4,XAR2             ; |1554| 
        LCR       *XAR7                 ; |1554| 
        ; call occurs [XAR7] ; |1554| 
        CMPB      AL,#0                 ; |1554| 
        BF        L117,NEQ              ; |1554| 
        ; branchcc occurs ; |1554| 
        MOVL      ACC,XAR1
        MOVL      XAR4,#1146            ; |1557| 
        ADDL      XAR4,ACC
        LCR       #_f_mutex_create      ; |1557| 
        ; call occurs [#_f_mutex_create] ; |1557| 
        CMPB      AL,#0                 ; |1557| 
        BF        L118,EQ               ; |1557| 
        ; branchcc occurs ; |1557| 
L117:    
        MOVB      AL,#15                ; |1558| 
        BF        L119,UNC              ; |1558| 
        ; branch occurs ; |1558| 
L118:    
        MOVB      ACC,#1
        MOVB      XAR5,#0
        MOVL      *+XAR1[0],ACC         ; |1564| 
        MOVL      XAR4,*-SP[6]          ; |1564| 
        MOV       AL,*-SP[1]            ; |1565| 
        LCR       #__f_getvolume        ; |1565| 
        ; call occurs [#__f_getvolume] ; |1565| 
L119:    
        SUBB      SP,#6                 ; |1569| 
        MOVL      XAR3,*--SP            ; |1569| 
        MOVL      XAR2,*--SP            ; |1569| 
        MOVL      XAR1,*--SP            ; |1569| 
	.dwpsn	"common.c",1570,1
        LRETR
        ; return occurs
	.dwattr DW$155, DW_AT_end_file("common.c")
	.dwattr DW$155, DW_AT_end_line(0x622)
	.dwattr DW$155, DW_AT_end_column(0x01)
	.dwendtag DW$155

	.sect	".text"
	.global	_fn_checkvolume

DW$160	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_checkvolume"), DW_AT_symbol_name("_fn_checkvolume")
	.dwattr DW$160, DW_AT_low_pc(_fn_checkvolume)
	.dwattr DW$160, DW_AT_high_pc(0x00)
	.dwattr DW$160, DW_AT_begin_file("common.c")
	.dwattr DW$160, DW_AT_begin_line(0x62c)
	.dwattr DW$160, DW_AT_begin_column(0x05)
	.dwattr DW$160, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$160, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",1580,47

;***************************************************************
;* FNAME: _fn_checkvolume               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_fn_checkvolume:
;* AR4   assigned to _fm
DW$161	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$161, DW_AT_type(*DW$T$106)
	.dwattr DW$161, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _drvnumber
DW$162	.dwtag  DW_TAG_formal_parameter, DW_AT_name("drvnumber"), DW_AT_symbol_name("_drvnumber")
	.dwattr DW$162, DW_AT_type(*DW$T$10)
	.dwattr DW$162, DW_AT_location[DW_OP_reg0]
        MOVB      XAR5,#0
        LCR       #__f_getvolume        ; |1581| 
        ; call occurs [#__f_getvolume] ; |1581| 
	.dwpsn	"common.c",1582,1
        LRETR
        ; return occurs
	.dwattr DW$160, DW_AT_end_file("common.c")
	.dwattr DW$160, DW_AT_end_line(0x62e)
	.dwattr DW$160, DW_AT_end_column(0x01)
	.dwendtag DW$160

	.sect	".text"
	.global	_fn_delvolume

DW$163	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_delvolume"), DW_AT_symbol_name("_fn_delvolume")
	.dwattr DW$163, DW_AT_low_pc(_fn_delvolume)
	.dwattr DW$163, DW_AT_high_pc(0x00)
	.dwattr DW$163, DW_AT_begin_file("common.c")
	.dwattr DW$163, DW_AT_begin_line(0x638)
	.dwattr DW$163, DW_AT_begin_column(0x05)
	.dwattr DW$163, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$163, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",1593,1

;***************************************************************
;* FNAME: _fn_delvolume                 FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_fn_delvolume:
;* AL    assigned to _drvnumber
DW$164	.dwtag  DW_TAG_formal_parameter, DW_AT_name("drvnumber"), DW_AT_symbol_name("_drvnumber")
	.dwattr DW$164, DW_AT_type(*DW$T$10)
	.dwattr DW$164, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        CMPB      AL,#0                 ; |1597| 
        MOVB      XAR1,#0
        MOVL      *SP++,XAR2
        BF        L121,LT               ; |1597| 
        ; branchcc occurs ; |1597| 
        CMPB      AL,#0                 ; |1597| 
        BF        L121,GT               ; |1597| 
        ; branchcc occurs ; |1597| 
;       MOV       T,AL Implicitly done by - MPY ACC,OP,#IMM ; |1603| 
        MOVL      XAR4,#_f_filesystem   ; |1603| 
        MPY       ACC,AL,#1148          ; |1603| 
        ADDL      XAR4,ACC
        MOVL      XAR2,XAR4             ; |1603| 
        MOVL      ACC,*+XAR2[0]         ; |1604| 
        BF        L122,EQ               ; |1604| 
        ; branchcc occurs ; |1604| 
        MOVL      XAR0,#1130            ; |1611| 
        MOVB      ACC,#0
        MOVL      *+XAR2[0],ACC         ; |1610| 
        MOVL      ACC,*+XAR2[AR0]       ; |1611| 
        BF        L120,EQ               ; |1611| 
        ; branchcc occurs ; |1611| 
        MOVL      XAR0,#1132            ; |1613| 
        MOVL      XAR7,ACC              ; |1613| 
        MOVL      XAR4,*+XAR2[AR0]      ; |1613| 
        LCR       *XAR7                 ; |1613| 
        ; call occurs [XAR7] ; |1613| 
        CMPB      AL,#0                 ; |1613| 
        MOVZ      AR1,AL                ; |1613| 
        BF        L120,EQ               ; |1613| 
        ; branchcc occurs ; |1613| 
        MOVB      XAR1,#32              ; |1614| 
L120:    
        MOVL      ACC,XAR2
        MOVL      XAR4,#1146            ; |1633| 
        ADDL      XAR4,ACC
        LCR       #_f_mutex_delete      ; |1633| 
        ; call occurs [#_f_mutex_delete] ; |1633| 
        BF        L122,UNC              ; |1633| 
        ; branch occurs ; |1633| 
L121:    
        MOVB      XAR1,#1               ; |1599| 
L122:    
        MOVL      XAR2,*--SP            ; |1637| 
        MOV       AL,AR1
        MOVL      XAR1,*--SP            ; |1637| 
	.dwpsn	"common.c",1638,1
        LRETR
        ; return occurs
	.dwattr DW$163, DW_AT_end_file("common.c")
	.dwattr DW$163, DW_AT_end_line(0x666)
	.dwattr DW$163, DW_AT_end_column(0x01)
	.dwendtag DW$163

	.sect	".text"
	.global	_fn_get_volume_count

DW$165	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_get_volume_count"), DW_AT_symbol_name("_fn_get_volume_count")
	.dwattr DW$165, DW_AT_low_pc(_fn_get_volume_count)
	.dwattr DW$165, DW_AT_high_pc(0x00)
	.dwattr DW$165, DW_AT_begin_file("common.c")
	.dwattr DW$165, DW_AT_begin_line(0x66b)
	.dwattr DW$165, DW_AT_begin_column(0x05)
	.dwattr DW$165, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$165, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",1644,1

;***************************************************************
;* FNAME: _fn_get_volume_count          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_fn_get_volume_count:
        MOVB      XAR7,#0
	.dwpsn	"common.c",1649,0
        MOVB      XAR6,#0
L123:    
DW$L$_fn_get_volume_count$2$B:
	.dwpsn	"common.c",1650,0
        MOV       T,AR6
        MOVL      XAR4,#_f_filesystem   ; |1652| 
;       MOV       T,T Implicitly done by - MPY ACC,OP,#IMM ; |1652| 
        MPY       ACC,AR6,#1148         ; |1652| 
        ADDL      XAR4,ACC
        MOVL      ACC,*+XAR4[0]         ; |1652| 
        BF        L124,EQ               ; |1652| 
        ; branchcc occurs ; |1652| 
DW$L$_fn_get_volume_count$2$E:
DW$L$_fn_get_volume_count$3$B:
        MOV       AL,AR7
        ADDB      AL,#1                 ; |1652| 
        MOVZ      AR7,AL                ; |1652| 
DW$L$_fn_get_volume_count$3$E:
L124:    
DW$L$_fn_get_volume_count$4$B:
        MOV       AH,AR6
        ADDB      AH,#1                 ; |1649| 
        MOVZ      AR6,AH                ; |1649| 
	.dwpsn	"common.c",1653,0
        BF        L123,LEQ              ; |1649| 
        ; branchcc occurs ; |1649| 
DW$L$_fn_get_volume_count$4$E:
        MOV       AL,AR7
	.dwpsn	"common.c",1656,1
        LRETR
        ; return occurs

DW$166	.dwtag  DW_TAG_loop
	.dwattr DW$166, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L123:1:1471518967")
	.dwattr DW$166, DW_AT_begin_file("common.c")
	.dwattr DW$166, DW_AT_begin_line(0x671)
	.dwattr DW$166, DW_AT_end_line(0x675)
DW$167	.dwtag  DW_TAG_loop_range
	.dwattr DW$167, DW_AT_low_pc(DW$L$_fn_get_volume_count$2$B)
	.dwattr DW$167, DW_AT_high_pc(DW$L$_fn_get_volume_count$2$E)
DW$168	.dwtag  DW_TAG_loop_range
	.dwattr DW$168, DW_AT_low_pc(DW$L$_fn_get_volume_count$3$B)
	.dwattr DW$168, DW_AT_high_pc(DW$L$_fn_get_volume_count$3$E)
DW$169	.dwtag  DW_TAG_loop_range
	.dwattr DW$169, DW_AT_low_pc(DW$L$_fn_get_volume_count$4$B)
	.dwattr DW$169, DW_AT_high_pc(DW$L$_fn_get_volume_count$4$E)
	.dwendtag DW$166

	.dwattr DW$165, DW_AT_end_file("common.c")
	.dwattr DW$165, DW_AT_end_line(0x678)
	.dwattr DW$165, DW_AT_end_column(0x01)
	.dwendtag DW$165

	.sect	".text"
	.global	_fn_get_volume_list

DW$170	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_get_volume_list"), DW_AT_symbol_name("_fn_get_volume_list")
	.dwattr DW$170, DW_AT_low_pc(_fn_get_volume_list)
	.dwattr DW$170, DW_AT_high_pc(0x00)
	.dwattr DW$170, DW_AT_begin_file("common.c")
	.dwattr DW$170, DW_AT_begin_line(0x67d)
	.dwattr DW$170, DW_AT_begin_column(0x05)
	.dwattr DW$170, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$170, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",1662,1

;***************************************************************
;* FNAME: _fn_get_volume_list           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_fn_get_volume_list:
;* AR4   assigned to _buf
DW$171	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$171, DW_AT_type(*DW$T$127)
	.dwattr DW$171, DW_AT_location[DW_OP_reg12]
        MOVB      XAR7,#0
	.dwpsn	"common.c",1667,0
        MOVB      XAR6,#0
L125:    
DW$L$_fn_get_volume_list$2$B:
	.dwpsn	"common.c",1668,0
        MOV       T,AR6
        MOVL      XAR5,#_f_filesystem   ; |1670| 
;       MOV       T,T Implicitly done by - MPY ACC,OP,#IMM ; |1670| 
        MPY       ACC,AR6,#1148         ; |1670| 
        ADDL      XAR5,ACC
        MOVL      ACC,*+XAR5[0]         ; |1670| 
        BF        L126,EQ               ; |1670| 
        ; branchcc occurs ; |1670| 
DW$L$_fn_get_volume_list$2$E:
DW$L$_fn_get_volume_list$3$B:
        MOV       AL,AR7
        ADDB      AL,#1                 ; |1672| 
        MOVZ      AR7,AL                ; |1672| 
        MOVL      ACC,XAR4              ; |1672| 
        BF        L126,EQ               ; |1673| 
        ; branchcc occurs ; |1673| 
DW$L$_fn_get_volume_list$3$E:
DW$L$_fn_get_volume_list$4$B:
        MOV       *XAR4++,AR6           ; |1673| 
DW$L$_fn_get_volume_list$4$E:
L126:    
DW$L$_fn_get_volume_list$5$B:
        MOV       AL,AR6
        ADDB      AL,#1                 ; |1667| 
        MOVZ      AR6,AL                ; |1667| 
	.dwpsn	"common.c",1675,0
        BF        L125,LEQ              ; |1667| 
        ; branchcc occurs ; |1667| 
DW$L$_fn_get_volume_list$5$E:
        MOV       AL,AR7
	.dwpsn	"common.c",1678,1
        LRETR
        ; return occurs

DW$172	.dwtag  DW_TAG_loop
	.dwattr DW$172, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L125:1:1471518967")
	.dwattr DW$172, DW_AT_begin_file("common.c")
	.dwattr DW$172, DW_AT_begin_line(0x683)
	.dwattr DW$172, DW_AT_end_line(0x68b)
DW$173	.dwtag  DW_TAG_loop_range
	.dwattr DW$173, DW_AT_low_pc(DW$L$_fn_get_volume_list$2$B)
	.dwattr DW$173, DW_AT_high_pc(DW$L$_fn_get_volume_list$2$E)
DW$174	.dwtag  DW_TAG_loop_range
	.dwattr DW$174, DW_AT_low_pc(DW$L$_fn_get_volume_list$3$B)
	.dwattr DW$174, DW_AT_high_pc(DW$L$_fn_get_volume_list$3$E)
DW$175	.dwtag  DW_TAG_loop_range
	.dwattr DW$175, DW_AT_low_pc(DW$L$_fn_get_volume_list$4$B)
	.dwattr DW$175, DW_AT_high_pc(DW$L$_fn_get_volume_list$4$E)
DW$176	.dwtag  DW_TAG_loop_range
	.dwattr DW$176, DW_AT_low_pc(DW$L$_fn_get_volume_list$5$B)
	.dwattr DW$176, DW_AT_high_pc(DW$L$_fn_get_volume_list$5$E)
	.dwendtag DW$172

	.dwattr DW$170, DW_AT_end_file("common.c")
	.dwattr DW$170, DW_AT_end_line(0x68e)
	.dwattr DW$170, DW_AT_end_column(0x01)
	.dwendtag DW$170

	.sect	".text"
	.global	__f_clustertopos

DW$177	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_clustertopos"), DW_AT_symbol_name("__f_clustertopos")
	.dwattr DW$177, DW_AT_low_pc(__f_clustertopos)
	.dwattr DW$177, DW_AT_high_pc(0x00)
	.dwattr DW$177, DW_AT_begin_file("common.c")
	.dwattr DW$177, DW_AT_begin_line(0x69e)
	.dwattr DW$177, DW_AT_begin_column(0x06)
	.dwattr DW$177, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$177, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",1694,70

;***************************************************************
;* FNAME: __f_clustertopos              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

__f_clustertopos:
;* AR4   assigned to _vi
DW$178	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$178, DW_AT_type(*DW$T$92)
	.dwattr DW$178, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _cluster
DW$179	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cluster"), DW_AT_symbol_name("_cluster")
	.dwattr DW$179, DW_AT_type(*DW$T$13)
	.dwattr DW$179, DW_AT_location[DW_OP_reg0]
;* AR5   assigned to _pos
DW$180	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pos"), DW_AT_symbol_name("_pos")
	.dwattr DW$180, DW_AT_type(*DW$T$64)
	.dwattr DW$180, DW_AT_location[DW_OP_reg14]
        MOVL      XAR6,ACC              ; |1694| 
        MOVL      ACC,*+XAR5[0]         ; |1695| 
        MOVL      *+XAR5[2],ACC         ; |1695| 
        MOVL      ACC,XAR6              ; |1696| 
        MOVL      *+XAR5[0],XAR6        ; |1696| 
        BF        L127,NEQ              ; |1698| 
        ; branchcc occurs ; |1698| 
        MOVB      XAR0,#80              ; |1699| 
        MOVL      ACC,*+XAR4[AR0]       ; |1699| 
        MOVB      XAR0,#78              ; |1700| 
        MOVL      XAR7,*+XAR4[AR0]      ; |1700| 
        MOVL      *+XAR5[6],XAR7        ; |1700| 
        BF        L128,UNC              ; |1702| 
        ; branch occurs ; |1702| 
L127:    
        MOVB      XAR0,#14              ; |1704| 
        MOVL      ACC,*+XAR5[0]         ; |1705| 
        MOVZ      AR7,*+XAR4[AR0]       ; |1704| 
        MOVL      *+XAR5[6],ACC         ; |1705| 
        MOVB      ACC,#2
        SUBL      *+XAR5[6],ACC         ; |1706| 
        MOVB      XAR0,#82              ; |1708| 
        MOVU      ACC,AR7
        MOVL      XT,ACC                ; |1707| 
        IMPYXUL   P,XT,*+XAR5[6]        ; |1707| 
        MOVL      *+XAR5[6],P           ; |1707| 
        MOVL      ACC,*+XAR4[AR0]       ; |1708| 
        ADDL      *+XAR5[6],ACC         ; |1708| 
        MOVU      ACC,AR7
L128:    
        ADDL      ACC,*+XAR5[6]         ; |1709| 
        MOVB      XAR0,#8               ; |1709| 
        MOVL      *+XAR5[AR0],ACC       ; |1709| 
        MOV       AL,#65520
        MOV       AH,#4095
        CMPL      ACC,XAR6              ; |1709| 
        BF        L129,HI               ; |1709| 
        ; branchcc occurs ; |1709| 
        MOVB      ACC,#0
        MOVL      *+XAR5[AR0],ACC       ; |1713| 
L129:    
        MOVL      ACC,*+XAR5[6]         ; |1716| 
        MOVL      *+XAR5[4],ACC         ; |1716| 
        MOVB      ACC,#0
        MOVB      XAR0,#10              ; |1718| 
        MOVL      *+XAR5[AR0],ACC       ; |1718| 
	.dwpsn	"common.c",1719,1
        LRETR
        ; return occurs
	.dwattr DW$177, DW_AT_end_file("common.c")
	.dwattr DW$177, DW_AT_end_line(0x6b7)
	.dwattr DW$177, DW_AT_end_column(0x01)
	.dwendtag DW$177

	.sect	".text"

DW$181	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_prepareformat"), DW_AT_symbol_name("__f_prepareformat")
	.dwattr DW$181, DW_AT_low_pc(__f_prepareformat)
	.dwattr DW$181, DW_AT_high_pc(0x00)
	.dwattr DW$181, DW_AT_begin_file("common.c")
	.dwattr DW$181, DW_AT_begin_line(0x6cd)
	.dwattr DW$181, DW_AT_begin_column(0x0c)
	.dwattr DW$181, DW_AT_frame_base[DW_OP_breg20 -12]
	.dwattr DW$181, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",1741,120

;***************************************************************
;* FNAME: __f_prepareformat             FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  2 Auto,  6 SOE     *
;***************************************************************

__f_prepareformat:
;* AR4   assigned to _phy
DW$182	.dwtag  DW_TAG_formal_parameter, DW_AT_name("phy"), DW_AT_symbol_name("_phy")
	.dwattr DW$182, DW_AT_type(*DW$T$36)
	.dwattr DW$182, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _f_bootrecord
DW$183	.dwtag  DW_TAG_formal_parameter, DW_AT_name("f_bootrecord"), DW_AT_symbol_name("_f_bootrecord")
	.dwattr DW$183, DW_AT_type(*DW$T$156)
	.dwattr DW$183, DW_AT_location[DW_OP_reg14]
;* AL    assigned to _number_of_hidden_sectors
DW$184	.dwtag  DW_TAG_formal_parameter, DW_AT_name("number_of_hidden_sectors"), DW_AT_symbol_name("_number_of_hidden_sectors")
	.dwattr DW$184, DW_AT_type(*DW$T$13)
	.dwattr DW$184, DW_AT_location[DW_OP_reg0]
DW$185	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fattype"), DW_AT_symbol_name("_fattype")
	.dwattr DW$185, DW_AT_type(*DW$T$12)
	.dwattr DW$185, DW_AT_location[DW_OP_breg20 -14]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#4
        MOVL      XAR3,XAR4             ; |1741| 
        MOVL      XAR1,XAR5             ; |1741| 
        MOVL      *-SP[4],ACC           ; |1741| 
        MOVL      ACC,*+XAR3[4]         ; |1742| 
        MOVL      XAR2,*-SP[14]         ; |1741| 
        BF        L130,NEQ              ; |1742| 
        ; branchcc occurs ; |1742| 
        MOVB      AL,#18                ; |1742| 
        BF        L150,UNC              ; |1742| 
        ; branch occurs ; |1742| 
L130:    
        MOV       *+XAR1[0],#235        ; |1744| 
        MOVB      ACC,#3
        MOVL      XAR5,#FSL2            ; |1748| 
        MOV       *+XAR1[1],#60         ; |1745| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |1748| 
        MOV       *+XAR1[2],#144        ; |1746| 
        MOVB      ACC,#8
        LCR       #___memcpy_ff         ; |1748| 
        ; call occurs [#___memcpy_ff] ; |1748| 
        MOVB      XAR0,#11              ; |1749| 
        MOV       *+XAR1[AR0],#512      ; |1749| 
        MOVB      ACC,#3
        MOVB      XAR0,#14              ; |1751| 
        CMPL      ACC,XAR2              ; |1753| 
        MOV       *+XAR1[AR0],#2        ; |1751| 
        BF        L131,EQ               ; |1753| 
        ; branchcc occurs ; |1753| 
        MOVB      XAR0,#13              ; |1758| 
        MOV       *+XAR1[AR0],#1        ; |1758| 
        MOVB      XAR0,#15              ; |1759| 
        MOV       *+XAR1[AR0],#512      ; |1759| 
        BF        L132,UNC              ; |1759| 
        ; branch occurs ; |1759| 
L131:    
        MOVB      XAR0,#13              ; |1754| 
        MOV       *+XAR1[AR0],#36       ; |1754| 
        MOVB      XAR0,#15              ; |1755| 
        MOV       *+XAR1[AR0],#0        ; |1755| 
L132:    
        MOV       AL,*+XAR3[6]          ; |1756| 
        BF        L133,NEQ              ; |1756| 
        ; branchcc occurs ; |1756| 
        MOV       *+XAR3[6],#240        ; |1762| 
L133:    
        MOV       AL,*+XAR3[6]          ; |1763| 
        MOVB      XAR0,#17              ; |1763| 
        MOV       *+XAR1[AR0],AL        ; |1763| 
        MOVB      XAR0,#19              ; |1765| 
        MOV       AL,*+XAR3[1]          ; |1765| 
        MOVL      XAR5,#FSL3            ; |1773| 
        MOV       *+XAR1[AR0],AL        ; |1765| 
        MOVB      XAR0,#20              ; |1766| 
        MOV       AL,*+XAR3[2]          ; |1766| 
        MOV       *+XAR1[AR0],AL        ; |1766| 
        MOVB      XAR0,#22              ; |1768| 
        MOVL      ACC,*-SP[4]           ; |1768| 
        MOVL      *+XAR1[AR0],ACC       ; |1768| 
        MOVB      ACC,#50
        MOVB      XAR0,#46              ; |1769| 
        ADDL      ACC,XAR1
        MOV       *+XAR1[AR0],#0        ; |1769| 
        MOVL      XAR4,ACC              ; |1773| 
        MOVB      XAR0,#47              ; |1771| 
        MOVB      ACC,#11
        MOV       *+XAR1[AR0],#41       ; |1771| 
        LCR       #___memcpy_ff         ; |1773| 
        ; call occurs [#___memcpy_ff] ; |1773| 
        MOVB      ACC,#69
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |1775| 
        MOV       *+XAR4[0],#85         ; |1775| 
        MOVB      XAR0,#48              ; |1778| 
        MOV       *+XAR4[1],#170        ; |1776| 
        MOVL      ACC,*+XAR1[AR0]       ; |1778| 
        XOR       AL,*+XAR3[4]          ; |1778| 
        XOR       AH,*+XAR3[5]          ; |1778| 
        LCR       #_f_getrand           ; |1778| 
        ; call occurs [#_f_getrand] ; |1778| 
        MOVB      XAR0,#48              ; |1778| 
        MOVL      XAR4,#65536           ; |1780| 
        MOVL      *+XAR1[AR0],ACC       ; |1778| 
        MOVL      ACC,XAR4              ; |1780| 
        CMPL      ACC,*+XAR3[4]         ; |1780| 
        BF        L134,LOS              ; |1780| 
        ; branchcc occurs ; |1780| 
        MOVB      ACC,#3
        CMPL      ACC,XAR2              ; |1780| 
        BF        L134,EQ               ; |1780| 
        ; branchcc occurs ; |1780| 
        MOV       AL,*+XAR3[4]          ; |1781| 
        MOVB      XAR0,#16              ; |1781| 
        MOV       *+XAR1[AR0],AL        ; |1781| 
        MOVB      ACC,#0
        BF        L135,UNC              ; |1783| 
        ; branch occurs ; |1783| 
L134:    
        MOVB      XAR0,#16              ; |1785| 
        MOV       *+XAR1[AR0],#0        ; |1785| 
        MOVL      ACC,*+XAR3[4]         ; |1786| 
L135:    
        MOVB      XAR0,#24              ; |1786| 
        MOVL      *+XAR1[AR0],ACC       ; |1786| 
        MOVB      ACC,#1
        CMPL      ACC,XAR2              ; |1783| 
        BF        L141,EQ               ; |1783| 
        ; branchcc occurs ; |1783| 
        MOVB      ACC,#2
        CMPL      ACC,XAR2              ; |1798| 
        BF        L139,EQ               ; |1798| 
        ; branchcc occurs ; |1798| 
        MOVB      ACC,#3
        CMPL      ACC,XAR2              ; |1807| 
        BF        L136,EQ               ; |1807| 
        ; branchcc occurs ; |1807| 
        MOVB      AL,#24                ; |1813| 
        BF        L150,UNC              ; |1813| 
        ; branch occurs ; |1813| 
L136:    
	.dwpsn	"common.c",1810,0
        MOVB      XAR5,#0
L137:    
DW$L$__f_prepareformat$17$B:
        MOVU      ACC,AR5
        MOVL      XAR4,#_FAT32_CS       ; |1810| 
        LSL       ACC,2                 ; |1810| 
        ADDL      XAR4,ACC
        MOVL      ACC,*+XAR4[0]         ; |1810| 
        CMPL      ACC,*+XAR3[4]         ; |1810| 
        BF        L138,HIS              ; |1810| 
        ; branchcc occurs ; |1810| 
DW$L$__f_prepareformat$17$E:
DW$L$__f_prepareformat$18$B:
        ADDB      XAR5,#1               ; |1810| 
        MOV       AL,AR5                ; |1810| 
        CMPB      AL,#5                 ; |1810| 
        BF        L137,LO               ; |1810| 
        ; branchcc occurs ; |1810| 
DW$L$__f_prepareformat$18$E:
L138:    
        MOVU      ACC,AR5
        MOVL      XAR4,#_FAT32_CS+2     ; |1811| 
        LSL       ACC,2                 ; |1811| 
        ADDL      XAR4,ACC
        MOVB      XAR0,#12              ; |1811| 
        MOV       AL,*+XAR4[0]          ; |1811| 
        MOV       *+XAR1[AR0],AL        ; |1811| 
        BF        L145,NEQ              ; |1812| 
        ; branchcc occurs ; |1812| 
        MOVB      AL,#21                ; |1815| 
        BF        L150,UNC              ; |1815| 
        ; branch occurs ; |1815| 
L139:    
        MOVB      XAR0,#12              ; |1800| 
        CLRC      SXM
	.dwpsn	"common.c",1801,0
        MOV       *+XAR1[AR0],#1        ; |1800| 
L140:    
DW$L$__f_prepareformat$22$B:
        MOVZ      AR6,*+XAR1[AR0]
        MOVB      ACC,#0
        MOVL      P,*+XAR3[4]           ; |1802| 
        RPT       #31
||     SUBCUL    ACC,XAR6              ; |1802| 
        MOV       ACC,#65520            ; |1802| 
        CMPL      ACC,P                 ; |1802| 
        BF        L143,HI               ; |1802| 
        ; branchcc occurs ; |1802| 
DW$L$__f_prepareformat$22$E:
DW$L$__f_prepareformat$23$B:
        MOVB      ACC,#12
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |1803| 
        MOV       ACC,*+XAR4[0] << #1   ; |1803| 
        MOV       *+XAR4[0],AL          ; |1803| 
        MOV       AL,*+XAR1[AR0]        ; |1803| 
	.dwpsn	"common.c",1804,0
        BF        L140,NEQ              ; |1803| 
        ; branchcc occurs ; |1803| 
DW$L$__f_prepareformat$23$E:
        BF        L144,UNC              ; |1803| 
        ; branch occurs ; |1803| 
L141:    
        MOVB      XAR0,#12              ; |1791| 
	.dwpsn	"common.c",1792,0
        MOV       *+XAR1[AR0],#1        ; |1791| 
L142:    
DW$L$__f_prepareformat$26$B:
        MOVZ      AR6,*+XAR1[AR0]
        MOVB      ACC,#0
        MOVL      P,*+XAR3[4]           ; |1793| 
        RPT       #31
||     SUBCUL    ACC,XAR6              ; |1793| 
        MOV       ACC,#4080             ; |1793| 
        CMPL      ACC,P                 ; |1793| 
        BF        L143,HI               ; |1793| 
        ; branchcc occurs ; |1793| 
DW$L$__f_prepareformat$26$E:
DW$L$__f_prepareformat$27$B:
        MOVB      ACC,#12
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |1794| 
        MOV       ACC,*+XAR4[0] << #1   ; |1794| 
        MOV       *+XAR4[0],AL          ; |1794| 
        MOV       AL,*+XAR1[AR0]        ; |1794| 
	.dwpsn	"common.c",1795,0
        BF        L142,NEQ              ; |1794| 
        ; branchcc occurs ; |1794| 
DW$L$__f_prepareformat$27$E:
        BF        L144,UNC              ; |1794| 
        ; branch occurs ; |1794| 
L143:    
        MOV       AL,*+XAR1[AR0]        ; |1796| 
        BF        L145,NEQ              ; |1796| 
        ; branchcc occurs ; |1796| 
L144:    
        MOVB      AL,#26                ; |1796| 
        BF        L150,UNC              ; |1796| 
        ; branch occurs ; |1796| 
L145:    
        MOVZ      AR6,*+XAR1[AR0]       ; |1818| 
        MOVB      XAR0,#14              ; |1819| 
        MOV       PH,#0
        MOVZ      AR7,*+XAR1[AR0]       ; |1819| 
        CLRC      SXM
        MOVB      XAR0,#15              ; |1823| 
        MOV       PL,*+XAR1[AR0]
        MOVL      ACC,P                 ; |1823| 
        LSL       ACC,5                 ; |1824| 
        SFR       ACC,9                 ; |1825| 
        MOVZ      AR4,AR6
        MOVL      P,ACC                 ; |1825| 
        MOVZ      AR5,AR7
        MOVB      ACC,#3
        CMPL      ACC,XAR2              ; |1827| 
        BF        L148,EQ               ; |1827| 
        ; branchcc occurs ; |1827| 
        MOVB      ACC,#2
        CMPL      ACC,XAR2              ; |1843| 
        BF        L146,NEQ              ; |1843| 
        ; branchcc occurs ; |1843| 
        MOVU      ACC,AR6
        MOVB      XAR0,#13              ; |1844| 
        LSL       ACC,8                 ; |1844| 
        MOVL      XAR5,ACC              ; |1844| 
        MOVL      ACC,*+XAR3[4]         ; |1844| 
        SUBU      ACC,*+XAR1[AR0]       ; |1844| 
        SUBL      ACC,P
        MOVL      XAR4,ACC              ; |1844| 
        MOV       ACC,AR6 << 1          ; |1844| 
        ADDL      ACC,XAR4
        ADDU      ACC,AR7               ; |1844| 
        ADDL      ACC,XAR5
        SUBB      ACC,#1                ; |1844| 
        MOVL      XAR4,ACC              ; |1844| 
        MOVU      ACC,AR7
        ADDL      ACC,XAR5
        MOVL      *-SP[2],ACC           ; |1846| 
        MOVL      ACC,XAR4              ; |1846| 
        BF        L147,UNC              ; |1849| 
        ; branch occurs ; |1849| 
L146:    
        MOVB      ACC,#1
        CMPL      ACC,XAR2              ; |1850| 
        BF        L149,NEQ              ; |1850| 
        ; branchcc occurs ; |1850| 
        MOVL      ACC,XAR4              ; |1851| 
        LSL       ACC,10                ; |1851| 
        MOVL      XAR6,ACC              ; |1851| 
        MOVB      XAR0,#13              ; |1851| 
        MOVL      ACC,XAR5              ; |1851| 
        LSL       ACC,1                 ; |1851| 
        ADDL      ACC,XAR6
        ADDL      ACC,XAR5
        MOVL      XAR6,ACC              ; |1851| 
        MOVL      ACC,*+XAR3[4]         ; |1851| 
        SUBU      ACC,*+XAR1[AR0]       ; |1851| 
        SUBL      ACC,P
        MOVL      XAR7,ACC              ; |1851| 
        MOVL      ACC,XAR4              ; |1851| 
        LSL       ACC,1                 ; |1851| 
        ADDL      ACC,XAR7
        MOVL      XAR7,ACC              ; |1851| 
        LSL       ACC,1                 ; |1851| 
        ADDL      ACC,XAR7
        ADDL      ACC,XAR6
        MOVL      *-SP[2],XAR6          ; |1853| 
        SUBB      ACC,#1                ; |1851| 
L147:    
        FFC       XAR7,#L$$DIV          ; |1853| 
        ; call occurs [#L$$DIV] ; |1853| 
        MOVL      XAR4,ACC              ; |1853| 
        MOVB      XAR0,#18              ; |1855| 
        MOV       *+XAR1[AR0],AR4       ; |1855| 
        BF        L149,UNC              ; |1855| 
        ; branch occurs ; |1855| 
L148:    
        MOVL      ACC,XAR4              ; |1828| 
        MOVB      XAR0,#13              ; |1828| 
        LSL       ACC,7                 ; |1828| 
        MOVL      XAR7,ACC              ; |1828| 
        MOVL      ACC,*+XAR3[4]         ; |1828| 
        SUBU      ACC,*+XAR1[AR0]       ; |1828| 
        MOVL      XAR6,ACC              ; |1828| 
        MOVL      ACC,XAR4              ; |1828| 
        LSL       ACC,1                 ; |1828| 
        ADDL      ACC,XAR6
        ADDL      ACC,XAR7
        ADDL      ACC,XAR5
        SUBB      ACC,#1                ; |1828| 
        MOVL      XAR4,ACC              ; |1828| 
        MOVL      ACC,XAR5              ; |1830| 
        ADDL      ACC,XAR7
        MOVL      *-SP[2],ACC           ; |1830| 
        MOVL      ACC,XAR4              ; |1830| 
        FFC       XAR7,#L$$DIV          ; |1830| 
        ; call occurs [#L$$DIV] ; |1830| 
        MOVB      XAR0,#26              ; |1832| 
        MOVL      *+XAR1[AR0],ACC       ; |1832| 
        MOVB      XAR0,#18              ; |1833| 
        MOV       *+XAR1[AR0],#0        ; |1833| 
        MOVB      XAR0,#28              ; |1835| 
        MOV       *+XAR1[AR0],#0        ; |1835| 
        MOVB      XAR0,#29              ; |1836| 
        MOV       *+XAR1[AR0],#0        ; |1836| 
        MOVB      ACC,#2
        MOVB      XAR0,#30              ; |1837| 
        MOVL      *+XAR1[AR0],ACC       ; |1837| 
        MOVB      XAR0,#32              ; |1838| 
        MOVB      ACC,#34
        MOV       *+XAR1[AR0],#1        ; |1838| 
        ADDL      ACC,XAR1
        MOVB      XAR0,#33              ; |1839| 
        MOVB      XAR5,#0
        MOVL      XAR4,ACC              ; |1841| 
        MOV       *+XAR1[AR0],#6        ; |1839| 
        MOVB      ACC,#12
        LCR       #_memset              ; |1841| 
        ; call occurs [#_memset] ; |1841| 
L149:    
        MOVB      AL,#0
L150:    
        SUBB      SP,#4                 ; |1859| 
        MOVL      XAR3,*--SP            ; |1859| 
        MOVL      XAR2,*--SP            ; |1859| 
        MOVL      XAR1,*--SP            ; |1859| 
	.dwpsn	"common.c",1861,1
        LRETR
        ; return occurs

DW$186	.dwtag  DW_TAG_loop
	.dwattr DW$186, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L142:1:1471518967")
	.dwattr DW$186, DW_AT_begin_file("common.c")
	.dwattr DW$186, DW_AT_begin_line(0x700)
	.dwattr DW$186, DW_AT_end_line(0x703)
DW$187	.dwtag  DW_TAG_loop_range
	.dwattr DW$187, DW_AT_low_pc(DW$L$__f_prepareformat$26$B)
	.dwattr DW$187, DW_AT_high_pc(DW$L$__f_prepareformat$26$E)
DW$188	.dwtag  DW_TAG_loop_range
	.dwattr DW$188, DW_AT_low_pc(DW$L$__f_prepareformat$27$B)
	.dwattr DW$188, DW_AT_high_pc(DW$L$__f_prepareformat$27$E)
	.dwendtag DW$186


DW$189	.dwtag  DW_TAG_loop
	.dwattr DW$189, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L140:1:1471518967")
	.dwattr DW$189, DW_AT_begin_file("common.c")
	.dwattr DW$189, DW_AT_begin_line(0x709)
	.dwattr DW$189, DW_AT_end_line(0x70c)
DW$190	.dwtag  DW_TAG_loop_range
	.dwattr DW$190, DW_AT_low_pc(DW$L$__f_prepareformat$22$B)
	.dwattr DW$190, DW_AT_high_pc(DW$L$__f_prepareformat$22$E)
DW$191	.dwtag  DW_TAG_loop_range
	.dwattr DW$191, DW_AT_low_pc(DW$L$__f_prepareformat$23$B)
	.dwattr DW$191, DW_AT_high_pc(DW$L$__f_prepareformat$23$E)
	.dwendtag DW$189


DW$192	.dwtag  DW_TAG_loop
	.dwattr DW$192, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L137:1:1471518967")
	.dwattr DW$192, DW_AT_begin_file("common.c")
	.dwattr DW$192, DW_AT_begin_line(0x712)
	.dwattr DW$192, DW_AT_end_line(0x712)
DW$193	.dwtag  DW_TAG_loop_range
	.dwattr DW$193, DW_AT_low_pc(DW$L$__f_prepareformat$17$B)
	.dwattr DW$193, DW_AT_high_pc(DW$L$__f_prepareformat$17$E)
DW$194	.dwtag  DW_TAG_loop_range
	.dwattr DW$194, DW_AT_low_pc(DW$L$__f_prepareformat$18$B)
	.dwattr DW$194, DW_AT_high_pc(DW$L$__f_prepareformat$18$E)
	.dwendtag DW$192

	.dwattr DW$181, DW_AT_end_file("common.c")
	.dwattr DW$181, DW_AT_end_line(0x745)
	.dwattr DW$181, DW_AT_end_column(0x01)
	.dwendtag DW$181

	.sect	".text"

DW$195	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_postformat"), DW_AT_symbol_name("__f_postformat")
	.dwattr DW$195, DW_AT_low_pc(__f_postformat)
	.dwattr DW$195, DW_AT_high_pc(0x00)
	.dwattr DW$195, DW_AT_begin_file("common.c")
	.dwattr DW$195, DW_AT_begin_line(0x758)
	.dwattr DW$195, DW_AT_begin_column(0x0c)
	.dwattr DW$195, DW_AT_frame_base[DW_OP_breg20 -18]
	.dwattr DW$195, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",1880,53

;***************************************************************
;* FNAME: __f_postformat                FR SIZE:  16           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            1 Parameter,  9 Auto,  6 SOE     *
;***************************************************************

__f_postformat:
;* AR4   assigned to _vi
DW$196	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$196, DW_AT_type(*DW$T$92)
	.dwattr DW$196, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _fattype
DW$197	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fattype"), DW_AT_symbol_name("_fattype")
	.dwattr DW$197, DW_AT_type(*DW$T$12)
	.dwattr DW$197, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#10
        MOVL      XAR2,ACC              ; |1880| 
        LCR       #__f_buildsectors     ; |1884| 
        ; call occurs [#__f_buildsectors] ; |1884| 
        MOVL      XAR1,XAR4             ; |1880| 
        MOVL      XAR0,#1136            ; |1885| 
        MOVL      XAR6,*+XAR1[AR0]      ; |1885| 
        MOVL      ACC,XAR2              ; |1885| 
        CMPL      ACC,XAR6              ; |1885| 
        BF        L151,EQ               ; |1885| 
        ; branchcc occurs ; |1885| 
        MOVB      AL,#25                ; |1885| 
        BF        L164,UNC              ; |1885| 
        ; branch occurs ; |1885| 
L151:    
        MOVB      ACC,#1
        CMPL      ACC,XAR6              ; |1887| 
        BF        L154,EQ               ; |1887| 
        ; branchcc occurs ; |1887| 
        MOVB      ACC,#2
        CMPL      ACC,XAR6              ; |1890| 
        BF        L153,EQ               ; |1890| 
        ; branchcc occurs ; |1890| 
        MOVB      ACC,#3
        CMPL      ACC,XAR6              ; |1893| 
        BF        L152,EQ               ; |1893| 
        ; branchcc occurs ; |1893| 
        MOVB      AL,#21                ; |1896| 
        BF        L164,UNC              ; |1896| 
        ; branch occurs ; |1896| 
L152:    
        MOVL      XAR5,#FSL4            ; |1894| 
        BF        L155,UNC              ; |1895| 
        ; branch occurs ; |1895| 
L153:    
        MOVL      XAR5,#FSL5            ; |1891| 
        BF        L155,UNC              ; |1892| 
        ; branch occurs ; |1892| 
L154:    
        MOVL      XAR5,#FSL6            ; |1888| 
L155:    
        MOVB      ACC,#63
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |1888| 
        MOVB      ACC,#8
        LCR       #___memcpy_ff         ; |1888| 
        ; call occurs [#___memcpy_ff] ; |1888| 
        MOVL      XAR0,#600             ; |1898| 
        MOVB      ACC,#0
        MOVL      *+XAR1[AR0],ACC       ; |1898| 
        MOVL      XAR0,#598             ; |1899| 
        SUBB      ACC,#1
        MOVL      *+XAR1[AR0],ACC       ; |1899| 
        MOVL      XAR0,#1114            ; |1900| 
        MOVB      ACC,#0
        SUBB      ACC,#1
        MOVL      XAR4,#_f_filesystem+2122 ; |1903| 
        MOVL      *+XAR1[AR0],ACC       ; |1900| 
        MOVL      *-SP[8],XAR4          ; |1903| 
        MOVZ      AR4,SP                ; |1904| 
        MOVL      XAR5,#_$T0$1          ; |1904| 
        MOVB      ACC,#4
        SUBB      XAR4,#5               ; |1904| 
        LCR       #___memcpy_ff         ; |1904| 
        ; call occurs [#___memcpy_ff] ; |1904| 
        MOVL      XAR4,*-SP[8]          ; |1904| 
        MOVB      XAR5,#0
        MOV       ACC,#1 << 9
        LCR       #_memset              ; |1908| 
        ; call occurs [#_memset] ; |1908| 
        MOVL      XAR4,*-SP[8]          ; |1909| 
        MOV       *+XAR4[0],#248        ; |1909| 
        MOVL      XAR6,*-SP[8]          ; |1910| 
        MOVZ      AR5,SP                ; |1910| 
        MOVB      ACC,#1
        ADDL      ACC,XAR6
        MOVL      XAR0,#1136            ; |1910| 
        SUBB      XAR5,#5               ; |1910| 
        MOVL      XAR4,ACC              ; |1910| 
        MOVL      ACC,XAR5              ; |1910| 
        ADDL      ACC,*+XAR1[AR0]       ; |1910| 
        MOVL      XAR5,ACC              ; |1910| 
        MOVU      ACC,*+XAR5[0]
        MOVB      XAR5,#255             ; |1910| 
        LCR       #_memset              ; |1910| 
        ; call occurs [#_memset] ; |1910| 
        MOVL      XAR0,#1136            ; |1911| 
        MOVB      ACC,#3
        CMPL      ACC,*+XAR1[AR0]       ; |1911| 
        BF        L156,NEQ              ; |1911| 
        ; branchcc occurs ; |1911| 
        MOVL      XAR4,*-SP[8]          ; |1913| 
        MOVB      XAR0,#8               ; |1913| 
        MOV       *+XAR4[AR0],#248      ; |1913| 
        MOVL      XAR4,*-SP[8]          ; |1913| 
        MOVB      AL,#255               ; |1913| 
        MOVB      XAR0,#9               ; |1913| 
        MOV       *+XAR4[AR0],AL        ; |1913| 
        MOVL      XAR4,*-SP[8]          ; |1913| 
        MOVB      XAR0,#10              ; |1913| 
        MOV       *+XAR4[AR0],AL        ; |1913| 
        MOVL      XAR4,*-SP[8]          ; |1913| 
        MOVB      XAR0,#11              ; |1913| 
        MOV       *+XAR4[AR0],#15       ; |1913| 
L156:    
        MOV       *-SP[1],#1            ; |1915| 
        MOVL      XAR4,XAR1             ; |1915| 
        MOVL      XAR5,*-SP[8]          ; |1915| 
        MOVB      XAR0,#74              ; |1915| 
        MOVL      ACC,*+XAR1[AR0]       ; |1915| 
        LCR       #__f_writesector      ; |1915| 
        ; call occurs [#__f_writesector] ; |1915| 
        MOVB      XAR0,#76              ; |1916| 
        MOV       *-SP[1],#1            ; |1916| 
        MOVL      ACC,*+XAR1[AR0]       ; |1916| 
        MOVL      XAR5,*-SP[8]          ; |1916| 
        MOVL      XAR4,XAR1             ; |1916| 
        MOVB      XAR0,#74              ; |1916| 
        ADDL      ACC,*+XAR1[AR0]       ; |1916| 
        LCR       #__f_writesector      ; |1916| 
        ; call occurs [#__f_writesector] ; |1916| 
        MOVL      XAR4,*-SP[8]          ; |1916| 
        MOVB      XAR5,#0
        MOV       ACC,#1 << 9
        LCR       #_memset              ; |1919| 
        ; call occurs [#_memset] ; |1919| 
        MOVB      XAR3,#0
        MOVB      XAR0,#16              ; |1920| 
        MOV       AL,*+XAR1[AR0]        ; |1920| 
        BF        L160,EQ               ; |1920| 
        ; branchcc occurs ; |1920| 
L157:    
DW$L$__f_postformat$13$B:
	.dwpsn	"common.c",1921,0
        MOVB      XAR0,#76              ; |1922| 
        MOVL      XAR6,*+XAR1[AR0]      ; |1922| 
        MOVU      ACC,AR3
        MOVL      XT,ACC                ; |1922| 
        MOVB      XAR0,#74              ; |1922| 
        IMPYL     ACC,XT,XAR6           ; |1922| 
        ADDL      ACC,*+XAR1[AR0]       ; |1922| 
        ADDB      ACC,#1                ; |1922| 
        MOVL      XAR2,ACC              ; |1922| 
        MOVB      ACC,#1
        CMPL      ACC,XAR6              ; |1923| 
        MOVL      *-SP[10],ACC          ; |1923| 
        BF        L159,HIS              ; |1923| 
        ; branchcc occurs ; |1923| 
DW$L$__f_postformat$13$E:
L158:    
DW$L$__f_postformat$14$B:
	.dwpsn	"common.c",1924,0
        MOV       *-SP[1],#1            ; |1925| 
        MOVL      XAR6,XAR2             ; |1925| 
        MOVB      ACC,#1
        MOVL      XAR4,XAR1             ; |1925| 
        MOVL      XAR5,*-SP[8]          ; |1925| 
        ADDL      ACC,XAR6
        MOVL      XAR2,ACC              ; |1925| 
        MOVL      ACC,XAR6              ; |1925| 
        LCR       #__f_writesector      ; |1925| 
        ; call occurs [#__f_writesector] ; |1925| 
        MOVL      ACC,*-SP[10]          ; |1925| 
        ADDB      ACC,#1                ; |1923| 
        MOVB      XAR0,#76              ; |1923| 
        MOVL      *-SP[10],ACC          ; |1923| 
        CMPL      ACC,*+XAR1[AR0]       ; |1923| 
	.dwpsn	"common.c",1926,0
        BF        L158,LO               ; |1923| 
        ; branchcc occurs ; |1923| 
DW$L$__f_postformat$14$E:
L159:    
DW$L$__f_postformat$15$B:
        ADDB      XAR3,#1               ; |1920| 
        MOVB      XAR0,#16              ; |1920| 
        MOV       AL,AR3                ; |1920| 
        CMP       AL,*+XAR1[AR0]        ; |1920| 
	.dwpsn	"common.c",1927,0
        BF        L157,LO               ; |1920| 
        ; branchcc occurs ; |1920| 
DW$L$__f_postformat$15$E:
L160:    
        MOVL      XAR3,#_f_filesystem+2122 ; |1931| 
        MOVL      XAR4,XAR3             ; |1931| 
        MOV       ACC,#1 << 9
        MOVB      XAR5,#0
        LCR       #_memset              ; |1931| 
        ; call occurs [#_memset] ; |1931| 
        MOVB      XAR0,#76              ; |1933| 
        MOVL      XAR6,*+XAR1[AR0]      ; |1933| 
        MOVB      ACC,#1
        CMPL      ACC,XAR6              ; |1933| 
        BF        L161,HIS              ; |1933| 
        ; branchcc occurs ; |1933| 
        MOVL      ACC,XAR6              ; |1935| 
        MOVB      XAR0,#74              ; |1935| 
        MOV       *-SP[1],#1            ; |1935| 
        MOVL      XAR5,XAR3             ; |1935| 
        MOVL      XAR4,XAR1             ; |1935| 
        ADDL      ACC,*+XAR1[AR0]       ; |1935| 
        SUBB      ACC,#1                ; |1935| 
        LCR       #__f_writesector      ; |1935| 
        ; call occurs [#__f_writesector] ; |1935| 
        MOVB      XAR0,#76              ; |1936| 
        MOV       *-SP[1],#1            ; |1936| 
        MOVL      ACC,*+XAR1[AR0]       ; |1936| 
        MOVB      XAR0,#74              ; |1936| 
        LSL       ACC,1                 ; |1936| 
        MOVL      XAR5,XAR3             ; |1936| 
        MOVL      XAR4,XAR1             ; |1936| 
        ADDL      ACC,*+XAR1[AR0]       ; |1936| 
        SUBB      ACC,#1                ; |1936| 
        LCR       #__f_writesector      ; |1936| 
        ; call occurs [#__f_writesector] ; |1936| 
L161:    
        MOVB      XAR2,#0
        MOVB      XAR0,#80              ; |1939| 
        MOVL      ACC,*+XAR1[AR0]       ; |1939| 
        BF        L163,EQ               ; |1939| 
        ; branchcc occurs ; |1939| 
L162:    
DW$L$__f_postformat$19$B:
	.dwpsn	"common.c",1939,0
        MOVL      ACC,XAR2              ; |1940| 
        MOVB      XAR0,#78              ; |1940| 
        MOV       *-SP[1],#1            ; |1940| 
        MOVL      XAR4,XAR1             ; |1940| 
        MOVL      XAR5,#_f_filesystem+2122 ; |1940| 
        ADDL      ACC,*+XAR1[AR0]       ; |1940| 
        LCR       #__f_writesector      ; |1940| 
        ; call occurs [#__f_writesector] ; |1940| 
        CMPB      AL,#0                 ; |1940| 
        BF        L164,NEQ              ; |1940| 
        ; branchcc occurs ; |1940| 
DW$L$__f_postformat$19$E:
DW$L$__f_postformat$20$B:
        ADDB      XAR2,#1               ; |1939| 
        MOVB      XAR0,#80              ; |1939| 
        MOVL      ACC,XAR2              ; |1939| 
        CMPL      ACC,*+XAR1[AR0]       ; |1939| 
	.dwpsn	"common.c",1942,0
        BF        L162,LO               ; |1939| 
        ; branchcc occurs ; |1939| 
DW$L$__f_postformat$20$E:
L163:    
        MOVL      XAR4,XAR1             ; |1944| 
        LCR       #__f_writebootrecord  ; |1944| 
        ; call occurs [#__f_writebootrecord] ; |1944| 
L164:    
        SUBB      SP,#10                ; |1944| 
        MOVL      XAR3,*--SP            ; |1944| 
        MOVL      XAR2,*--SP            ; |1944| 
        MOVL      XAR1,*--SP            ; |1944| 
	.dwpsn	"common.c",1945,1
        LRETR
        ; return occurs

DW$198	.dwtag  DW_TAG_loop
	.dwattr DW$198, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L162:1:1471518967")
	.dwattr DW$198, DW_AT_begin_file("common.c")
	.dwattr DW$198, DW_AT_begin_line(0x793)
	.dwattr DW$198, DW_AT_end_line(0x796)
DW$199	.dwtag  DW_TAG_loop_range
	.dwattr DW$199, DW_AT_low_pc(DW$L$__f_postformat$19$B)
	.dwattr DW$199, DW_AT_high_pc(DW$L$__f_postformat$19$E)
DW$200	.dwtag  DW_TAG_loop_range
	.dwattr DW$200, DW_AT_low_pc(DW$L$__f_postformat$20$B)
	.dwattr DW$200, DW_AT_high_pc(DW$L$__f_postformat$20$E)
	.dwendtag DW$198


DW$201	.dwtag  DW_TAG_loop
	.dwattr DW$201, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L157:1:1471518967")
	.dwattr DW$201, DW_AT_begin_file("common.c")
	.dwattr DW$201, DW_AT_begin_line(0x780)
	.dwattr DW$201, DW_AT_end_line(0x787)
DW$202	.dwtag  DW_TAG_loop_range
	.dwattr DW$202, DW_AT_low_pc(DW$L$__f_postformat$13$B)
	.dwattr DW$202, DW_AT_high_pc(DW$L$__f_postformat$13$E)
DW$203	.dwtag  DW_TAG_loop_range
	.dwattr DW$203, DW_AT_low_pc(DW$L$__f_postformat$15$B)
	.dwattr DW$203, DW_AT_high_pc(DW$L$__f_postformat$15$E)

DW$204	.dwtag  DW_TAG_loop
	.dwattr DW$204, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L158:2:1471518967")
	.dwattr DW$204, DW_AT_begin_file("common.c")
	.dwattr DW$204, DW_AT_begin_line(0x783)
	.dwattr DW$204, DW_AT_end_line(0x786)
DW$205	.dwtag  DW_TAG_loop_range
	.dwattr DW$205, DW_AT_low_pc(DW$L$__f_postformat$14$B)
	.dwattr DW$205, DW_AT_high_pc(DW$L$__f_postformat$14$E)
	.dwendtag DW$204

	.dwendtag DW$201

	.dwattr DW$195, DW_AT_end_file("common.c")
	.dwattr DW$195, DW_AT_end_line(0x799)
	.dwattr DW$195, DW_AT_end_column(0x01)
	.dwendtag DW$195

	.sect	".text"
	.global	_fn_hardformat

DW$206	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_hardformat"), DW_AT_symbol_name("_fn_hardformat")
	.dwattr DW$206, DW_AT_low_pc(_fn_hardformat)
	.dwattr DW$206, DW_AT_high_pc(0x00)
	.dwattr DW$206, DW_AT_begin_file("common.c")
	.dwattr DW$206, DW_AT_begin_line(0x7ad)
	.dwattr DW$206, DW_AT_begin_column(0x05)
	.dwattr DW$206, DW_AT_frame_base[DW_OP_breg20 -20]
	.dwattr DW$206, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",1965,58

;***************************************************************
;* FNAME: _fn_hardformat                FR SIZE:  18           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 10 Auto,  6 SOE     *
;***************************************************************

_fn_hardformat:
;* AR4   assigned to _fm
DW$207	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$207, DW_AT_type(*DW$T$106)
	.dwattr DW$207, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _drivenum
DW$208	.dwtag  DW_TAG_formal_parameter, DW_AT_name("drivenum"), DW_AT_symbol_name("_drivenum")
	.dwattr DW$208, DW_AT_type(*DW$T$10)
	.dwattr DW$208, DW_AT_location[DW_OP_reg14]
;* AL    assigned to _fattype
DW$209	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fattype"), DW_AT_symbol_name("_fattype")
	.dwattr DW$209, DW_AT_type(*DW$T$12)
	.dwattr DW$209, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      XAR1,ACC              ; |1965| 
        MOVL      *SP++,XAR2
        MOV       AL,AR5                ; |1965| 
        MOVL      *SP++,XAR3
        ADDB      SP,#12
        MOVZ      AR5,SP                ; |1970| 
        SUBB      XAR5,#4               ; |1970| 
        LCR       #__f_getvolume        ; |1970| 
        ; call occurs [#__f_getvolume] ; |1970| 
        CMPB      AL,#0                 ; |1970| 
        BF        L165,EQ               ; |1970| 
        ; branchcc occurs ; |1970| 
        CMPB      AL,#2                 ; |1970| 
        BF        L175,NEQ              ; |1970| 
        ; branchcc occurs ; |1970| 
L165:    
        MOVL      XAR4,*-SP[4]          ; |1973| 
        MOVB      ACC,#1
        MOVL      *+XAR4[0],ACC         ; |1973| 
        MOVZ      AR4,SP                ; |1975| 
        MOVB      XAR5,#0
        MOVB      ACC,#8
        SUBB      XAR4,#12              ; |1975| 
        LCR       #_memset              ; |1975| 
        ; call occurs [#_memset] ; |1975| 
        MOVL      XAR0,#1126            ; |1976| 
        MOVL      XAR4,*-SP[4]          ; |1976| 
        MOVL      ACC,*+XAR4[AR0]       ; |1976| 
        BF        L166,NEQ              ; |1976| 
        ; branchcc occurs ; |1976| 
        MOVB      AL,#15                ; |1980| 
        BF        L175,UNC              ; |1980| 
        ; branch occurs ; |1980| 
L166:    
        MOVL      XAR0,#1132            ; |1977| 
        MOVL      XAR4,*-SP[4]          ; |1977| 
        MOVL      XAR5,*+XAR4[AR0]      ; |1977| 
        MOVZ      AR4,SP                ; |1977| 
        MOVL      XAR7,ACC              ; |1977| 
        SUBB      XAR4,#12              ; |1977| 
        LCR       *XAR7                 ; |1977| 
        ; call occurs [XAR7] ; |1977| 
        CMPB      AL,#0                 ; |1977| 
        BF        L167,EQ               ; |1977| 
        ; branchcc occurs ; |1977| 
        MOVB      AL,#1                 ; |1978| 
        BF        L175,UNC              ; |1978| 
        ; branch occurs ; |1978| 
L167:    
        MOV       AL,*-SP[6]            ; |1982| 
        CMPB      AL,#248               ; |1982| 
        BF        L168,EQ               ; |1982| 
        ; branchcc occurs ; |1982| 
        MOVZ      AR4,SP                ; |2019| 
        MOVL      *-SP[2],XAR1          ; |2019| 
        MOVL      XAR5,*-SP[4]          ; |2019| 
        MOVB      ACC,#0
        SUBB      XAR4,#12              ; |2019| 
        ADDB      XAR5,#2               ; |2019| 
        LCR       #__f_prepareformat    ; |2019| 
        ; call occurs [#__f_prepareformat] ; |2019| 
        CMPB      AL,#0                 ; |2019| 
        BF        L175,NEQ              ; |2019| 
        ; branchcc occurs ; |2019| 
        BF        L174,UNC              ; |2019| 
        ; branch occurs ; |2019| 
L168:    
        MOVL      XAR4,*-SP[4]          ; |1984| 
        MOVB      XAR0,#18              ; |1984| 
        MOVZ      AR2,*+XAR4[AR0]
        MOVZ      AR4,SP                ; |1987| 
        MOVL      *-SP[2],XAR1          ; |1987| 
        MOVL      XAR5,*-SP[4]          ; |1987| 
        MOVB      ACC,#1
        SUBB      XAR4,#12              ; |1987| 
        ADDB      XAR5,#2               ; |1987| 
        LCR       #__f_prepareformat    ; |1987| 
        ; call occurs [#__f_prepareformat] ; |1987| 
        CMPB      AL,#0                 ; |1987| 
        MOVL      XAR3,#_f_filesystem+2122 ; |1985| 
        BF        L175,NEQ              ; |1987| 
        ; branchcc occurs ; |1987| 
        MOVL      XAR4,XAR3             ; |1991| 
        MOV       ACC,#223 << 1
        LCR       #__setcharzero        ; |1991| 
        ; call occurs [#__setcharzero] ; |1991| 
        MOV       AL,#128
        MOV       AH,#1
        LCR       #__setlong            ; |1992| 
        ; call occurs [#__setlong] ; |1992| 
        MOVB      ACC,#1
        CMPL      ACC,XAR1              ; |1993| 
        MOVL      XAR3,XAR4             ; |1992| 
        BF        L171,EQ               ; |1993| 
        ; branchcc occurs ; |1993| 
        MOVB      ACC,#2
        CMPL      ACC,XAR1              ; |1997| 
        BF        L170,NEQ              ; |1997| 
        ; branchcc occurs ; |1997| 
        MOVL      ACC,XAR2
        BF        L169,NEQ              ; |1999| 
        ; branchcc occurs ; |1999| 
        MOV       *XAR3++,#6            ; |2000| 
        BF        L172,UNC              ; |2000| 
        ; branch occurs ; |2000| 
L169:    
        MOV       *XAR3++,#4            ; |1999| 
        BF        L172,UNC              ; |1999| 
        ; branch occurs ; |1999| 
L170:    
        MOV       *XAR3++,#11           ; |2004| 
        BF        L172,UNC              ; |2004| 
        ; branch occurs ; |2004| 
L171:    
        MOV       *XAR3++,#1            ; |1995| 
L172:    
        MOVB      AL,#255               ; |2006| 
        MOV       *XAR3++,AL            ; |2006| 
        MOV       *XAR3++,AL            ; |2007| 
        MOV       *XAR3++,AL            ; |2008| 
        MOVL      XAR4,XAR3             ; |2009| 
        MOVB      ACC,#1
        LCR       #__setlong            ; |2009| 
        ; call occurs [#__setlong] ; |2009| 
        MOVL      ACC,XAR2              ; |2009| 
        MOVL      XAR3,XAR4             ; |2009| 
        BF        L173,NEQ              ; |2010| 
        ; branchcc occurs ; |2010| 
        MOVL      XAR4,*-SP[4]          ; |2010| 
        MOVB      XAR0,#26              ; |2010| 
        MOVL      XAR2,*+XAR4[AR0]      ; |2010| 
L173:    
        MOVL      XAR4,XAR3             ; |2011| 
        MOVL      ACC,XAR2
        LCR       #__setlong            ; |2011| 
        ; call occurs [#__setlong] ; |2011| 
        MOVB      ACC,#48
        LCR       #__setcharzero        ; |2012| 
        ; call occurs [#__setcharzero] ; |2012| 
        MOV       AL,#43605             ; |2013| 
        LCR       #__setword            ; |2013| 
        ; call occurs [#__setword] ; |2013| 
        MOV       *-SP[1],#1            ; |2014| 
        MOVL      XAR4,*-SP[4]          ; |2014| 
        MOVL      XAR5,#_f_filesystem+2122 ; |2014| 
        MOVB      ACC,#0
        LCR       #__f_writesector      ; |2014| 
        ; call occurs [#__f_writesector] ; |2014| 
        CMPB      AL,#0                 ; |2014| 
        BF        L175,NEQ              ; |2014| 
        ; branchcc occurs ; |2014| 
L174:    
        MOVL      XAR4,*-SP[4]          ; |2024| 
        MOVL      ACC,XAR1              ; |2024| 
        LCR       #__f_postformat       ; |2024| 
        ; call occurs [#__f_postformat] ; |2024| 
L175:    
        SUBB      SP,#12                ; |2024| 
        MOVL      XAR3,*--SP            ; |2024| 
        MOVL      XAR2,*--SP            ; |2024| 
        MOVL      XAR1,*--SP            ; |2024| 
	.dwpsn	"common.c",2025,1
        LRETR
        ; return occurs
	.dwattr DW$206, DW_AT_end_file("common.c")
	.dwattr DW$206, DW_AT_end_line(0x7e9)
	.dwattr DW$206, DW_AT_end_column(0x01)
	.dwendtag DW$206

	.sect	".text"
	.global	_fn_format

DW$210	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_format"), DW_AT_symbol_name("_fn_format")
	.dwattr DW$210, DW_AT_low_pc(_fn_format)
	.dwattr DW$210, DW_AT_high_pc(0x00)
	.dwattr DW$210, DW_AT_begin_file("common.c")
	.dwattr DW$210, DW_AT_begin_line(0x7fd)
	.dwattr DW$210, DW_AT_begin_column(0x05)
	.dwattr DW$210, DW_AT_frame_base[DW_OP_breg20 -22]
	.dwattr DW$210, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",2045,54

;***************************************************************
;* FNAME: _fn_format                    FR SIZE:  20           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 12 Auto,  6 SOE     *
;***************************************************************

_fn_format:
;* AR4   assigned to _fm
DW$211	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$211, DW_AT_type(*DW$T$106)
	.dwattr DW$211, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _drivenum
DW$212	.dwtag  DW_TAG_formal_parameter, DW_AT_name("drivenum"), DW_AT_symbol_name("_drivenum")
	.dwattr DW$212, DW_AT_type(*DW$T$10)
	.dwattr DW$212, DW_AT_location[DW_OP_reg14]
;* AL    assigned to _fattype
DW$213	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fattype"), DW_AT_symbol_name("_fattype")
	.dwattr DW$213, DW_AT_type(*DW$T$12)
	.dwattr DW$213, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      XAR2,ACC              ; |2045| 
        MOVL      *SP++,XAR3
        MOV       AL,AR5                ; |2045| 
        ADDB      SP,#14
        MOVZ      AR5,SP                ; |2051| 
        SUBB      XAR5,#4               ; |2051| 
        LCR       #__f_getvolume        ; |2051| 
        ; call occurs [#__f_getvolume] ; |2051| 
        CMPB      AL,#0                 ; |2051| 
        BF        L176,EQ               ; |2051| 
        ; branchcc occurs ; |2051| 
        CMPB      AL,#2                 ; |2051| 
        BF        L183,NEQ              ; |2051| 
        ; branchcc occurs ; |2051| 
L176:    
        MOVB      XAR6,#1
        MOVL      XAR4,*-SP[4]          ; |2054| 
        MOVL      *+XAR4[0],XAR6        ; |2054| 
        MOVL      XAR1,*-SP[4]          ; |2056| 
        CMPB      AL,#0                 ; |2058| 
        ADDB      XAR1,#2               ; |2056| 
        BF        L178,NEQ              ; |2058| 
        ; branchcc occurs ; |2058| 
        MOVB      XAR0,#20              ; |2060| 
        MOV       AL,*+XAR1[AR0]        ; |2060| 
        MOVB      XAR0,#19              ; |2061| 
        MOV       *-SP[10],AL           ; |2060| 
        MOV       AL,*+XAR1[AR0]        ; |2061| 
        MOV       *-SP[11],AL           ; |2061| 
        MOVL      XAR4,*-SP[4]          ; |2063| 
        MOVB      XAR0,#18              ; |2063| 
        MOVU      ACC,*+XAR4[AR0]
        MOVL      *-SP[8],ACC           ; |2063| 
        MOVL      ACC,*-SP[8]           ; |2064| 
        BF        L177,NEQ              ; |2064| 
        ; branchcc occurs ; |2064| 
        MOVL      XAR4,*-SP[4]          ; |2064| 
        MOVB      XAR0,#26              ; |2064| 
        MOVL      ACC,*+XAR4[AR0]       ; |2064| 
        MOVL      *-SP[8],ACC           ; |2064| 
L177:    
        MOVL      XAR4,*-SP[4]          ; |2066| 
        MOVB      XAR0,#19              ; |2066| 
        MOVL      XAR5,XAR1             ; |2069| 
        MOV       AL,*+XAR4[AR0]        ; |2066| 
        MOVZ      AR4,SP                ; |2069| 
        MOV       *-SP[6],AL            ; |2066| 
        MOVB      XAR0,#22              ; |2069| 
        MOVL      *-SP[2],XAR2          ; |2069| 
        SUBB      XAR4,#12              ; |2069| 
        MOVL      ACC,*+XAR1[AR0]       ; |2069| 
        LCR       #__f_prepareformat    ; |2069| 
        ; call occurs [#__f_prepareformat] ; |2069| 
        CMPB      AL,#0                 ; |2069| 
        BF        L183,NEQ              ; |2069| 
        ; branchcc occurs ; |2069| 
        BF        L182,UNC              ; |2069| 
        ; branch occurs ; |2069| 
L178:    
        CMPB      AL,#2                 ; |2073| 
        BF        L182,NEQ              ; |2073| 
        ; branchcc occurs ; |2073| 
        MOVB      ACC,#0
        MOVB      XAR5,#0
        MOVL      XAR4,XAR1             ; |2077| 
        MOVL      *-SP[14],ACC          ; |2075| 
        MOVB      ACC,#72
        LCR       #_memset              ; |2077| 
        ; call occurs [#_memset] ; |2077| 
        MOVZ      AR4,SP                ; |2078| 
        MOVB      XAR5,#0
        MOVB      ACC,#8
        SUBB      XAR4,#12              ; |2078| 
        LCR       #_memset              ; |2078| 
        ; call occurs [#_memset] ; |2078| 
        MOVL      XAR0,#1126            ; |2080| 
        MOVL      XAR4,*-SP[4]          ; |2080| 
        MOVL      XAR3,#_f_filesystem+2122 ; |2074| 
        MOVL      ACC,*+XAR4[AR0]       ; |2080| 
        BF        L179,NEQ              ; |2080| 
        ; branchcc occurs ; |2080| 
        MOVB      AL,#15                ; |2084| 
        BF        L183,UNC              ; |2084| 
        ; branch occurs ; |2084| 
L179:    
        MOVL      XAR0,#1132            ; |2081| 
        MOVL      XAR4,*-SP[4]          ; |2081| 
        MOVL      XAR5,*+XAR4[AR0]      ; |2081| 
        MOVZ      AR4,SP                ; |2081| 
        MOVL      XAR7,ACC              ; |2081| 
        SUBB      XAR4,#12              ; |2081| 
        LCR       *XAR7                 ; |2081| 
        ; call occurs [XAR7] ; |2081| 
        CMPB      AL,#0                 ; |2081| 
        BF        L180,EQ               ; |2081| 
        ; branchcc occurs ; |2081| 
        MOVB      AL,#1                 ; |2082| 
        BF        L183,UNC              ; |2082| 
        ; branch occurs ; |2082| 
L180:    
        MOV       *-SP[1],#1            ; |2086| 
        MOVL      XAR5,XAR3             ; |2086| 
        MOVL      XAR4,*-SP[4]          ; |2086| 
        MOVB      ACC,#0
        LCR       #__f_readsector       ; |2086| 
        ; call occurs [#__f_readsector] ; |2086| 
        CMPB      AL,#0                 ; |2086| 
        BF        L183,NEQ              ; |2086| 
        ; branchcc occurs ; |2086| 
        MOVL      XAR0,#510             ; |2089| 
        MOV       AL,*+XAR3[AR0]        ; |2089| 
        CMPB      AL,#85                ; |2089| 
        BF        L181,NEQ              ; |2089| 
        ; branchcc occurs ; |2089| 
        MOVL      XAR0,#511             ; |2089| 
        MOV       AL,*+XAR3[AR0]        ; |2089| 
        CMPB      AL,#170               ; |2089| 
        BF        L181,NEQ              ; |2089| 
        ; branchcc occurs ; |2089| 
        MOV       AL,*+XAR3[0]          ; |2090| 
        CMPB      AL,#235               ; |2090| 
        BF        L181,EQ               ; |2090| 
        ; branchcc occurs ; |2090| 
        CMPB      AL,#233               ; |2090| 
        BF        L181,EQ               ; |2090| 
        ; branchcc occurs ; |2090| 
        MOVL      XAR0,#446             ; |2090| 
        MOV       AL,*+XAR3[AR0]        ; |2090| 
        CMPB      AL,#128               ; |2090| 
        BF        L181,NEQ              ; |2090| 
        ; branchcc occurs ; |2090| 
        MOVL      ACC,XAR3
        MOVL      XAR4,#454             ; |2092| 
        ADDL      XAR4,ACC
        LCR       #__f_getlong          ; |2092| 
        ; call occurs [#__f_getlong] ; |2092| 
        MOVL      *-SP[14],ACC          ; |2092| 
        MOVL      XAR4,#458             ; |2093| 
        MOVL      ACC,XAR3
        ADDL      XAR4,ACC
        LCR       #__f_getlong          ; |2093| 
        ; call occurs [#__f_getlong] ; |2093| 
        MOVL      *-SP[8],ACC           ; |2093| 
L181:    
        MOVZ      AR4,SP                ; |2099| 
        MOVL      *-SP[2],XAR2          ; |2099| 
        MOVL      XAR5,XAR1             ; |2099| 
        MOVL      ACC,*-SP[14]          ; |2099| 
        SUBB      XAR4,#12              ; |2099| 
        LCR       #__f_prepareformat    ; |2099| 
        ; call occurs [#__f_prepareformat] ; |2099| 
        CMPB      AL,#0                 ; |2099| 
        BF        L183,NEQ              ; |2099| 
        ; branchcc occurs ; |2099| 
L182:    
        MOVL      XAR4,*-SP[4]          ; |2103| 
        MOVL      ACC,XAR2              ; |2103| 
        LCR       #__f_postformat       ; |2103| 
        ; call occurs [#__f_postformat] ; |2103| 
L183:    
        SUBB      SP,#14                ; |2103| 
        MOVL      XAR3,*--SP            ; |2103| 
        MOVL      XAR2,*--SP            ; |2103| 
        MOVL      XAR1,*--SP            ; |2103| 
	.dwpsn	"common.c",2104,1
        LRETR
        ; return occurs
	.dwattr DW$210, DW_AT_end_file("common.c")
	.dwattr DW$210, DW_AT_end_line(0x838)
	.dwattr DW$210, DW_AT_end_column(0x01)
	.dwendtag DW$210

	.sect	".text"
	.global	__f_getcurrsector

DW$214	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_getcurrsector"), DW_AT_symbol_name("__f_getcurrsector")
	.dwattr DW$214, DW_AT_low_pc(__f_getcurrsector)
	.dwattr DW$214, DW_AT_high_pc(0x00)
	.dwattr DW$214, DW_AT_begin_file("common.c")
	.dwattr DW$214, DW_AT_begin_line(0x84b)
	.dwattr DW$214, DW_AT_begin_column(0x05)
	.dwattr DW$214, DW_AT_frame_base[DW_OP_breg20 -16]
	.dwattr DW$214, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",2123,68

;***************************************************************
;* FNAME: __f_getcurrsector             FR SIZE:  14           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            1 Parameter,  7 Auto,  6 SOE     *
;***************************************************************

__f_getcurrsector:
;* AR4   assigned to _vi
DW$215	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$215, DW_AT_type(*DW$T$92)
	.dwattr DW$215, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _f
DW$216	.dwtag  DW_TAG_formal_parameter, DW_AT_name("f"), DW_AT_symbol_name("_f")
	.dwattr DW$216, DW_AT_type(*DW$T$108)
	.dwattr DW$216, DW_AT_location[DW_OP_reg14]
DW$217	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$217, DW_AT_type(*DW$T$53)
	.dwattr DW$217, DW_AT_location[DW_OP_breg20 -18]
DW$218	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cnt"), DW_AT_symbol_name("_cnt")
	.dwattr DW$218, DW_AT_type(*DW$T$127)
	.dwattr DW$218, DW_AT_location[DW_OP_breg20 -20]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#8
        MOVL      XAR0,#916             ; |2128| 
        MOVL      ACC,*-SP[20]          ; |2123| 
        MOVL      XAR3,XAR5             ; |2123| 
        MOVL      *-SP[8],ACC           ; |2123| 
        MOVL      *-SP[6],XAR4          ; |2123| 
        MOVB      ACC,#2
        MOVL      XAR2,*-SP[18]         ; |2123| 
        CMPL      ACC,*+XAR3[AR0]       ; |2128| 
        BF        L185,HI               ; |2128| 
        ; branchcc occurs ; |2128| 
L184:    
DW$L$__f_getcurrsector$2$B:
	.dwpsn	"common.c",2128,0
        MOVL      XAR6,*+XAR3[AR0]      ; |2128| 
        MOV       AL,#65520
        MOV       AH,#4095
        CMPL      ACC,XAR6              ; |2128| 
        BF        L185,LOS              ; |2128| 
        ; branchcc occurs ; |2128| 
DW$L$__f_getcurrsector$2$E:
DW$L$__f_getcurrsector$3$B:
        MOVL      XAR0,#924             ; |2130| 
        MOVL      ACC,*+XAR3[AR0]       ; |2130| 
        MOVL      XAR0,#922             ; |2130| 
        CMPL      ACC,*+XAR3[AR0]       ; |2130| 
        BF        L186,HI               ; |2130| 
        ; branchcc occurs ; |2130| 
DW$L$__f_getcurrsector$3$E:
DW$L$__f_getcurrsector$4$B:
        MOVZ      AR5,SP                ; |2148| 
        MOVL      XAR4,*-SP[6]
        MOVL      ACC,XAR6              ; |2148| 
        SUBB      XAR5,#4               ; |2148| 
        LCR       #__f_getclustervalue  ; |2148| 
        ; call occurs [#__f_getclustervalue] ; |2148| 
        CMPB      AL,#0                 ; |2148| 
        BF        L189,NEQ              ; |2148| 
        ; branchcc occurs ; |2148| 
DW$L$__f_getcurrsector$4$E:
DW$L$__f_getcurrsector$5$B:
        MOVB      ACC,#2
        CMPL      ACC,*-SP[4]           ; |2151| 
        BF        L185,HI               ; |2151| 
        ; branchcc occurs ; |2151| 
DW$L$__f_getcurrsector$5$E:
DW$L$__f_getcurrsector$6$B:
        MOV       AL,#65520
        MOV       AH,#4095
        CMPL      ACC,*-SP[4]           ; |2151| 
        BF        L185,LOS              ; |2151| 
        ; branchcc occurs ; |2151| 
DW$L$__f_getcurrsector$6$E:
DW$L$__f_getcurrsector$7$B:
        MOVL      ACC,XAR3
        MOVL      XAR5,#916             ; |2152| 
        MOVL      XAR4,*-SP[6]          ; |2152| 
        ADDL      XAR5,ACC
        MOVL      ACC,*-SP[4]           ; |2152| 
        LCR       #__f_clustertopos     ; |2152| 
        ; call occurs [#__f_clustertopos] ; |2152| 
        MOVL      XAR0,#916             ; |2152| 
        MOVB      ACC,#2
        CMPL      ACC,*+XAR3[AR0]       ; |2152| 
	.dwpsn	"common.c",2153,0
        BF        L184,LOS              ; |2152| 
        ; branchcc occurs ; |2152| 
DW$L$__f_getcurrsector$7$E:
L185:    
        MOVB      AL,#9                 ; |2155| 
        BF        L189,UNC              ; |2155| 
        ; branch occurs ; |2155| 
L186:    
        MOVL      ACC,XAR2
        BF        L187,EQ               ; |2131| 
        ; branchcc occurs ; |2131| 
        MOVL      XAR4,*-SP[8]
        MOVL      XAR1,#924             ; |2139| 
        MOVZ      AR4,*+XAR4[0]         ; |2138| 
        MOVL      ACC,*+XAR3[AR1]       ; |2139| 
        SUBL      ACC,*+XAR3[AR0]       ; |2139| 
        CMP       AL,AR4                ; |2139| 
        BF        L188,GEQ              ; |2139| 
        ; branchcc occurs ; |2139| 
        MOVL      XAR5,*-SP[8]          ; |2141| 
        MOVZ      AR4,AL                ; |2141| 
        MOV       *+XAR5[0],AL          ; |2142| 
        BF        L188,UNC              ; |2142| 
        ; branch occurs ; |2142| 
L187:    
        MOVB      ACC,#12
        MOVB      XAR4,#1               ; |2134| 
        ADDL      ACC,XAR3
        MOVL      XAR2,ACC              ; |2133| 
L188:    
        MOV       *-SP[1],AR4           ; |2145| 
        MOVL      XAR5,XAR2             ; |2145| 
        MOVL      XAR4,*-SP[6]          ; |2145| 
        MOVL      ACC,*+XAR3[AR0]       ; |2145| 
        LCR       #__f_readsector       ; |2145| 
        ; call occurs [#__f_readsector] ; |2145| 
L189:    
        SUBB      SP,#8                 ; |2145| 
        MOVL      XAR3,*--SP            ; |2145| 
        MOVL      XAR2,*--SP            ; |2145| 
        MOVL      XAR1,*--SP            ; |2145| 
	.dwpsn	"common.c",2156,1
        LRETR
        ; return occurs

DW$219	.dwtag  DW_TAG_loop
	.dwattr DW$219, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L184:1:1471518967")
	.dwattr DW$219, DW_AT_begin_file("common.c")
	.dwattr DW$219, DW_AT_begin_line(0x850)
	.dwattr DW$219, DW_AT_end_line(0x869)
DW$220	.dwtag  DW_TAG_loop_range
	.dwattr DW$220, DW_AT_low_pc(DW$L$__f_getcurrsector$2$B)
	.dwattr DW$220, DW_AT_high_pc(DW$L$__f_getcurrsector$2$E)
DW$221	.dwtag  DW_TAG_loop_range
	.dwattr DW$221, DW_AT_low_pc(DW$L$__f_getcurrsector$3$B)
	.dwattr DW$221, DW_AT_high_pc(DW$L$__f_getcurrsector$3$E)
DW$222	.dwtag  DW_TAG_loop_range
	.dwattr DW$222, DW_AT_low_pc(DW$L$__f_getcurrsector$4$B)
	.dwattr DW$222, DW_AT_high_pc(DW$L$__f_getcurrsector$4$E)
DW$223	.dwtag  DW_TAG_loop_range
	.dwattr DW$223, DW_AT_low_pc(DW$L$__f_getcurrsector$5$B)
	.dwattr DW$223, DW_AT_high_pc(DW$L$__f_getcurrsector$5$E)
DW$224	.dwtag  DW_TAG_loop_range
	.dwattr DW$224, DW_AT_low_pc(DW$L$__f_getcurrsector$6$B)
	.dwattr DW$224, DW_AT_high_pc(DW$L$__f_getcurrsector$6$E)
DW$225	.dwtag  DW_TAG_loop_range
	.dwattr DW$225, DW_AT_low_pc(DW$L$__f_getcurrsector$7$B)
	.dwattr DW$225, DW_AT_high_pc(DW$L$__f_getcurrsector$7$E)
	.dwendtag DW$219

	.dwattr DW$214, DW_AT_end_file("common.c")
	.dwattr DW$214, DW_AT_end_line(0x86c)
	.dwattr DW$214, DW_AT_end_column(0x01)
	.dwendtag DW$214

	.sect	".text"
	.global	__f_getdecluster

DW$226	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_getdecluster"), DW_AT_symbol_name("__f_getdecluster")
	.dwattr DW$226, DW_AT_low_pc(__f_getdecluster)
	.dwattr DW$226, DW_AT_high_pc(0x00)
	.dwattr DW$226, DW_AT_begin_file("common.c")
	.dwattr DW$226, DW_AT_begin_line(0x87f)
	.dwattr DW$226, DW_AT_begin_column(0x0f)
	.dwattr DW$226, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$226, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",2175,60

;***************************************************************
;* FNAME: __f_getdecluster              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

__f_getdecluster:
;* AR4   assigned to _vi
DW$227	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$227, DW_AT_type(*DW$T$92)
	.dwattr DW$227, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _de
DW$228	.dwtag  DW_TAG_formal_parameter, DW_AT_name("de"), DW_AT_symbol_name("_de")
	.dwattr DW$228, DW_AT_type(*DW$T$100)
	.dwattr DW$228, DW_AT_location[DW_OP_reg14]
        MOVL      XAR0,#1136            ; |2177| 
        MOVB      ACC,#3
        CMPL      ACC,*+XAR4[AR0]       ; |2177| 
        BF        L190,NEQ              ; |2177| 
        ; branchcc occurs ; |2177| 
        MOVB      ACC,#20
        ADDL      ACC,XAR5
        MOVL      XAR4,ACC              ; |2178| 
        LCR       #__f_getword          ; |2178| 
        ; call occurs [#__f_getword] ; |2178| 
        MOVZ      AR7,AL
        MOVL      ACC,XAR7              ; |2178| 
        LSL       ACC,16                ; |2179| 
        MOVL      XAR7,ACC              ; |2179| 
        MOVB      ACC,#26
        ADDL      ACC,XAR5
        MOVL      XAR4,ACC              ; |2180| 
        LCR       #__f_getword          ; |2180| 
        ; call occurs [#__f_getword] ; |2180| 
        MOVZ      AR6,AL                ; |2180| 
        MOVL      ACC,XAR7              ; |2180| 
        OR        ACC,AR6               ; |2180| 
        BF        L191,UNC              ; |2181| 
        ; branch occurs ; |2181| 
L190:    
        MOVB      ACC,#26
        ADDL      ACC,XAR5
        MOVL      XAR4,ACC              ; |2184| 
        LCR       #__f_getword          ; |2184| 
        ; call occurs [#__f_getword] ; |2184| 
        MOVU      ACC,AL
L191:    
	.dwpsn	"common.c",2185,1
        LRETR
        ; return occurs
	.dwattr DW$226, DW_AT_end_file("common.c")
	.dwattr DW$226, DW_AT_end_line(0x889)
	.dwattr DW$226, DW_AT_end_column(0x01)
	.dwendtag DW$226

	.sect	".text"
	.global	__f_setdecluster

DW$229	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_setdecluster"), DW_AT_symbol_name("__f_setdecluster")
	.dwattr DW$229, DW_AT_low_pc(__f_setdecluster)
	.dwattr DW$229, DW_AT_high_pc(0x00)
	.dwattr DW$229, DW_AT_begin_file("common.c")
	.dwattr DW$229, DW_AT_begin_line(0x899)
	.dwattr DW$229, DW_AT_begin_column(0x06)
	.dwattr DW$229, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$229, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",2201,73

;***************************************************************
;* FNAME: __f_setdecluster              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

__f_setdecluster:
;* AR4   assigned to _vi
DW$230	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$230, DW_AT_type(*DW$T$92)
	.dwattr DW$230, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _de
DW$231	.dwtag  DW_TAG_formal_parameter, DW_AT_name("de"), DW_AT_symbol_name("_de")
	.dwattr DW$231, DW_AT_type(*DW$T$100)
	.dwattr DW$231, DW_AT_location[DW_OP_reg14]
;* AL    assigned to _cluster
DW$232	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cluster"), DW_AT_symbol_name("_cluster")
	.dwattr DW$232, DW_AT_type(*DW$T$13)
	.dwattr DW$232, DW_AT_location[DW_OP_reg0]
        MOVL      XAR7,ACC              ; |2201| 
        MOVL      XAR6,XAR4             ; |2201| 
        MOVB      ACC,#26
        ADDL      ACC,XAR5
        MOVL      XAR4,ACC              ; |2202| 
        MOV       AL,AR7                ; |2202| 
        LCR       #__f_setword          ; |2202| 
        ; call occurs [#__f_setword] ; |2202| 
        MOVL      XAR0,#1136            ; |2204| 
        MOVB      ACC,#3
        CMPL      ACC,*+XAR6[AR0]       ; |2204| 
        BF        L192,EQ               ; |2204| 
        ; branchcc occurs ; |2204| 
        MOVB      ACC,#20
        ADDL      ACC,XAR5
        MOVL      XAR4,ACC              ; |2208| 
        MOVB      AL,#0
        BF        L193,UNC              ; |2208| 
        ; branch occurs ; |2208| 
L192:    
        MOVB      ACC,#20
        ADDL      ACC,XAR5
        MOVL      XAR4,ACC              ; |2205| 
        MOVL      ACC,XAR7              ; |2205| 
        MOVU      ACC,AH                ; |2205| 
L193:    
        LCR       #__f_setword          ; |2205| 
        ; call occurs [#__f_setword] ; |2205| 
	.dwpsn	"common.c",2210,1
        LRETR
        ; return occurs
	.dwattr DW$229, DW_AT_end_file("common.c")
	.dwattr DW$229, DW_AT_end_line(0x8a2)
	.dwattr DW$229, DW_AT_end_column(0x01)
	.dwendtag DW$229

	.sect	".text"
	.global	_fn_getdrive

DW$233	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_getdrive"), DW_AT_symbol_name("_fn_getdrive")
	.dwattr DW$233, DW_AT_low_pc(_fn_getdrive)
	.dwattr DW$233, DW_AT_high_pc(0x00)
	.dwattr DW$233, DW_AT_begin_file("common.c")
	.dwattr DW$233, DW_AT_begin_line(0x8b0)
	.dwattr DW$233, DW_AT_begin_column(0x05)
	.dwattr DW$233, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$233, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",2224,30

;***************************************************************
;* FNAME: _fn_getdrive                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_fn_getdrive:
;* AR4   assigned to _fm
DW$234	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$234, DW_AT_type(*DW$T$106)
	.dwattr DW$234, DW_AT_location[DW_OP_reg12]
        MOV       AL,*+XAR4[2]          ; |2225| 
	.dwpsn	"common.c",2226,1
        LRETR
        ; return occurs
	.dwattr DW$233, DW_AT_end_file("common.c")
	.dwattr DW$233, DW_AT_end_line(0x8b2)
	.dwattr DW$233, DW_AT_end_column(0x01)
	.dwendtag DW$233

	.sect	".text"
	.global	_fn_chdrive

DW$235	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_chdrive"), DW_AT_symbol_name("_fn_chdrive")
	.dwattr DW$235, DW_AT_low_pc(_fn_chdrive)
	.dwattr DW$235, DW_AT_high_pc(0x00)
	.dwattr DW$235, DW_AT_begin_file("common.c")
	.dwattr DW$235, DW_AT_begin_line(0x8c5)
	.dwattr DW$235, DW_AT_begin_column(0x05)
	.dwattr DW$235, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$235, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",2245,42

;***************************************************************
;* FNAME: _fn_chdrive                   FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_fn_chdrive:
;* AR4   assigned to _fm
DW$236	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$236, DW_AT_type(*DW$T$106)
	.dwattr DW$236, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _drivenum
DW$237	.dwtag  DW_TAG_formal_parameter, DW_AT_name("drivenum"), DW_AT_symbol_name("_drivenum")
	.dwattr DW$237, DW_AT_type(*DW$T$10)
	.dwattr DW$237, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVB      XAR5,#0
        MOVL      *SP++,XAR2
        MOVZ      AR1,AL                ; |2245| 
        MOVL      XAR2,XAR4             ; |2245| 
        LCR       #__f_getvolume        ; |2246| 
        ; call occurs [#__f_getvolume] ; |2246| 
        CMPB      AL,#0                 ; |2246| 
        BF        L194,EQ               ; |2246| 
        ; branchcc occurs ; |2246| 
        CMPB      AL,#2                 ; |2246| 
        BF        L195,NEQ              ; |2246| 
        ; branchcc occurs ; |2246| 
L194:    
        MOVB      AL,#0
        MOV       *+XAR2[2],AR1         ; |2249| 
L195:    
        MOVL      XAR2,*--SP            ; |2247| 
        MOVL      XAR1,*--SP            ; |2247| 
	.dwpsn	"common.c",2252,1
        LRETR
        ; return occurs
	.dwattr DW$235, DW_AT_end_file("common.c")
	.dwattr DW$235, DW_AT_end_line(0x8cc)
	.dwattr DW$235, DW_AT_end_column(0x01)
	.dwendtag DW$235

	.sect	".text"
	.global	__f_initentry

DW$238	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_initentry"), DW_AT_symbol_name("__f_initentry")
	.dwattr DW$238, DW_AT_low_pc(__f_initentry)
	.dwattr DW$238, DW_AT_high_pc(0x00)
	.dwattr DW$238, DW_AT_begin_file("common.c")
	.dwattr DW$238, DW_AT_begin_line(0x8dc)
	.dwattr DW$238, DW_AT_begin_column(0x06)
	.dwattr DW$238, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$238, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",2268,57

;***************************************************************
;* FNAME: __f_initentry                 FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

__f_initentry:
;* AR4   assigned to _de
DW$239	.dwtag  DW_TAG_formal_parameter, DW_AT_name("de"), DW_AT_symbol_name("_de")
	.dwattr DW$239, DW_AT_type(*DW$T$100)
	.dwattr DW$239, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _name
DW$240	.dwtag  DW_TAG_formal_parameter, DW_AT_name("name"), DW_AT_symbol_name("_name")
	.dwattr DW$240, DW_AT_type(*DW$T$53)
	.dwattr DW$240, DW_AT_location[DW_OP_reg14]
DW$241	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ext"), DW_AT_symbol_name("_ext")
	.dwattr DW$241, DW_AT_type(*DW$T$53)
	.dwattr DW$241, DW_AT_location[DW_OP_breg20 -10]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVB      ACC,#32
        MOVL      *SP++,XAR3
        MOVL      XAR1,XAR4             ; |2268| 
        MOVL      XAR3,XAR5             ; |2268| 
        MOVL      XAR2,*-SP[10]         ; |2268| 
        MOVB      XAR5,#0
        LCR       #_memset              ; |2270| 
        ; call occurs [#_memset] ; |2270| 
        MOVL      XAR5,XAR3             ; |2272| 
        MOVL      XAR4,XAR1             ; |2272| 
        MOVB      ACC,#8
        LCR       #___memcpy_ff         ; |2272| 
        ; call occurs [#___memcpy_ff] ; |2272| 
        MOVB      ACC,#8
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |2273| 
        MOVL      XAR5,XAR2             ; |2273| 
        MOVB      ACC,#3
        LCR       #___memcpy_ff         ; |2273| 
        ; call occurs [#___memcpy_ff] ; |2273| 
        LCR       #_f_getdate           ; |2275| 
        ; call occurs [#_f_getdate] ; |2275| 
        MOVZ      AR6,AL                ; |2275| 
        MOVB      ACC,#24
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |2275| 
        MOV       AL,AR6                ; |2275| 
        LCR       #__f_setword          ; |2275| 
        ; call occurs [#__f_setword] ; |2275| 
        LCR       #_f_gettime           ; |2276| 
        ; call occurs [#_f_gettime] ; |2276| 
        MOVZ      AR6,AL                ; |2276| 
        MOVB      ACC,#22
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |2276| 
        MOV       AL,AR6                ; |2276| 
        LCR       #__f_setword          ; |2276| 
        ; call occurs [#__f_setword] ; |2276| 
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"common.c",2278,1
        LRETR
        ; return occurs
	.dwattr DW$238, DW_AT_end_file("common.c")
	.dwattr DW$238, DW_AT_end_line(0x8e6)
	.dwattr DW$238, DW_AT_end_column(0x01)
	.dwendtag DW$238

	.sect	".text"
	.global	__f_alloccluster

DW$242	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_alloccluster"), DW_AT_symbol_name("__f_alloccluster")
	.dwattr DW$242, DW_AT_low_pc(__f_alloccluster)
	.dwattr DW$242, DW_AT_high_pc(0x00)
	.dwattr DW$242, DW_AT_begin_file("common.c")
	.dwattr DW$242, DW_AT_begin_line(0x8f9)
	.dwattr DW$242, DW_AT_begin_column(0x05)
	.dwattr DW$242, DW_AT_frame_base[DW_OP_breg20 -18]
	.dwattr DW$242, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",2297,59

;***************************************************************
;* FNAME: __f_alloccluster              FR SIZE:  16           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 10 Auto,  6 SOE     *
;***************************************************************

__f_alloccluster:
;* AR4   assigned to _vi
DW$243	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$243, DW_AT_type(*DW$T$92)
	.dwattr DW$243, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _pcluster
DW$244	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pcluster"), DW_AT_symbol_name("_pcluster")
	.dwattr DW$244, DW_AT_type(*DW$T$59)
	.dwattr DW$244, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#10
        MOVL      *-SP[4],XAR5          ; |2297| 
        LCR       #__f_getmaxcluster    ; |2298| 
        ; call occurs [#__f_getmaxcluster] ; |2298| 
        MOVL      XAR2,XAR4             ; |2297| 
        MOVL      XAR0,#1116            ; |2301| 
        MOVL      *-SP[6],ACC           ; |2298| 
        MOVL      XAR1,*+XAR2[AR0]      ; |2301| 
        MOVL      XAR0,#1136            ; |2305| 
        MOVB      ACC,#3
        CMPL      ACC,*+XAR2[AR0]       ; |2305| 
        BF        L199,EQ               ; |2305| 
        ; branchcc occurs ; |2305| 
        MOVL      ACC,*-SP[6]           ; |2368| 
        MOVB      XAR3,#0
        BF        L207,EQ               ; |2368| 
        ; branchcc occurs ; |2368| 
L196:    
DW$L$__f_alloccluster$3$B:
	.dwpsn	"common.c",2368,0
        MOVL      ACC,*-SP[6]
        CMPL      ACC,XAR1              ; |2370| 
        BF        L197,HI               ; |2370| 
        ; branchcc occurs ; |2370| 
DW$L$__f_alloccluster$3$E:
DW$L$__f_alloccluster$4$B:
        MOVB      XAR1,#0
DW$L$__f_alloccluster$4$E:
L197:    
DW$L$__f_alloccluster$5$B:
        MOVZ      AR5,SP                ; |2372| 
        MOVL      XAR4,XAR2             ; |2372| 
        MOVL      ACC,XAR1              ; |2372| 
        SUBB      XAR5,#2               ; |2372| 
        LCR       #__f_getclustervalue  ; |2372| 
        ; call occurs [#__f_getclustervalue] ; |2372| 
        CMPB      AL,#0                 ; |2372| 
        BF        L208,NEQ              ; |2372| 
        ; branchcc occurs ; |2372| 
DW$L$__f_alloccluster$5$E:
DW$L$__f_alloccluster$6$B:
        MOVL      ACC,*-SP[2]           ; |2375| 
        BF        L198,NEQ              ; |2375| 
        ; branchcc occurs ; |2375| 
DW$L$__f_alloccluster$6$E:
        MOVL      XAR0,#1116            ; |2376| 
        MOVB      ACC,#1
        ADDL      ACC,XAR1
        MOVL      *+XAR2[AR0],ACC       ; |2376| 
        MOVL      ACC,*-SP[4]           ; |2376| 
        BF        L203,EQ               ; |2377| 
        ; branchcc occurs ; |2377| 
        MOVL      XAR4,*-SP[4]
        MOVL      *+XAR4[0],XAR1        ; |2377| 
        BF        L203,UNC              ; |2377| 
        ; branch occurs ; |2377| 
L198:    
DW$L$__f_alloccluster$9$B:
        MOVL      ACC,*-SP[6]           ; |2368| 
        ADDB      XAR3,#1               ; |2368| 
        ADDB      XAR1,#1               ; |2387| 
        CMPL      ACC,XAR3              ; |2368| 
	.dwpsn	"common.c",2388,0
        BF        L196,HI               ; |2368| 
        ; branchcc occurs ; |2368| 
DW$L$__f_alloccluster$9$E:
        BF        L207,UNC              ; |2368| 
        ; branch occurs ; |2368| 
L199:    
        MOVB      XAR0,#76              ; |2307| 
        MOVL      *-SP[8],XAR1          ; |2306| 
        CLRC      SXM
        MOVL      ACC,*+XAR2[AR0]       ; |2307| 
        MOVB      XAR3,#0
        MOVL      *-SP[10],ACC          ; |2307| 
        MOVL      ACC,*-SP[8]           ; |2307| 
        SFR       ACC,7                 ; |2309| 
        MOVL      *-SP[8],ACC           ; |2309| 
        LSL       ACC,7                 ; |2309| 
        SUBL      XAR1,ACC
        MOVL      ACC,*-SP[10]          ; |2311| 
        BF        L207,EQ               ; |2311| 
        ; branchcc occurs ; |2311| 
L200:    
DW$L$__f_alloccluster$12$B:
	.dwpsn	"common.c",2311,0
        MOVL      XAR6,*-SP[8]
        MOVL      ACC,*-SP[10]
        CMPL      ACC,XAR6              ; |2314| 
        BF        L201,HI               ; |2314| 
        ; branchcc occurs ; |2314| 
DW$L$__f_alloccluster$12$E:
DW$L$__f_alloccluster$13$B:
        MOVB      ACC,#0
        MOVL      *-SP[8],ACC           ; |2314| 
DW$L$__f_alloccluster$13$E:
L201:    
DW$L$__f_alloccluster$14$B:
        MOVL      XAR4,XAR2             ; |2318| 
        MOVL      ACC,*-SP[8]           ; |2318| 
        LCR       #__f_getfatsector     ; |2318| 
        ; call occurs [#__f_getfatsector] ; |2318| 
        CMPB      AL,#0                 ; |2318| 
        BF        L208,NEQ              ; |2318| 
        ; branchcc occurs ; |2318| 
DW$L$__f_alloccluster$14$E:
DW$L$__f_alloccluster$15$B:
        MOVB      ACC,#86
        ADDL      ACC,XAR2
        MOVL      XAR7,ACC              ; |2321| 
        MOVL      ACC,XAR1              ; |2322| 
        LSL       ACC,1                 ; |2322| 
        ADDL      XAR7,ACC
        MOVB      ACC,#128
        CMPL      ACC,XAR1              ; |2324| 
        BF        L206,LOS              ; |2324| 
        ; branchcc occurs ; |2324| 
DW$L$__f_alloccluster$15$E:
L202:    
DW$L$__f_alloccluster$16$B:
	.dwpsn	"common.c",2324,0
        MOVL      ACC,XAR7              ; |2325| 
        MOVB      XAR4,#2               ; |2325| 
        ADDU      ACC,AR4               ; |2325| 
        MOVL      XAR4,ACC              ; |2325| 
        MOVL      XAR7,ACC              ; |2325| 
        SUBB      XAR4,#2               ; |2325| 
        MOVL      ACC,*+XAR4[0]         ; |2325| 
        BF        L205,NEQ              ; |2325| 
        ; branchcc occurs ; |2325| 
DW$L$__f_alloccluster$16$E:
DW$L$__f_alloccluster$17$B:
        MOVL      ACC,*-SP[8]
        LSL       ACC,7                 ; |2328| 
        ADDL      ACC,XAR1
        MOVL      XAR6,ACC              ; |2328| 
        MOVL      ACC,*-SP[6]           ; |2328| 
        CMPL      ACC,XAR6              ; |2328| 
        BF        L205,LOS              ; |2328| 
        ; branchcc occurs ; |2328| 
DW$L$__f_alloccluster$17$E:
        MOVL      XAR0,#1116            ; |2330| 
        MOVB      ACC,#1
        ADDL      ACC,XAR6
        MOVL      *+XAR2[AR0],ACC       ; |2330| 
        MOVL      ACC,*-SP[4]           ; |2330| 
        BF        L203,EQ               ; |2331| 
        ; branchcc occurs ; |2331| 
        MOVL      XAR4,*-SP[4]
        MOVL      *+XAR4[0],XAR6        ; |2331| 
L203:    
        MOVL      XAR0,#1144            ; |2333| 
        MOV       AL,*+XAR2[AR0]        ; |2333| 
        BF        L204,EQ               ; |2333| 
        ; branchcc occurs ; |2333| 
        MOVL      ACC,XAR2
        MOVL      XAR4,#1138            ; |2334| 
        ADDL      XAR4,ACC
        MOVB      ACC,#1
        SUBL      *+XAR4[0],ACC         ; |2334| 
        MOVL      ACC,XAR2
        MOVL      XAR4,#1140            ; |2335| 
        ADDL      XAR4,ACC
        MOVB      ACC,#1
        ADDL      *+XAR4[0],ACC         ; |2335| 
L204:    
        MOVB      AL,#0
        BF        L208,UNC              ; |2352| 
        ; branch occurs ; |2352| 
L205:    
DW$L$__f_alloccluster$23$B:
        MOVB      ACC,#128
        ADDB      XAR1,#1               ; |2324| 
        CMPL      ACC,XAR1              ; |2324| 
	.dwpsn	"common.c",2354,0
        BF        L202,HI               ; |2324| 
        ; branchcc occurs ; |2324| 
DW$L$__f_alloccluster$23$E:
L206:    
DW$L$__f_alloccluster$24$B:
        MOVL      ACC,*-SP[8]           ; |2360| 
        ADDB      XAR3,#1               ; |2311| 
        ADDB      ACC,#1                ; |2361| 
        MOVB      XAR1,#0
        MOVL      *-SP[8],ACC           ; |2361| 
        MOVL      ACC,*-SP[10]          ; |2311| 
        CMPL      ACC,XAR3              ; |2311| 
	.dwpsn	"common.c",2362,0
        BF        L200,HI               ; |2311| 
        ; branchcc occurs ; |2311| 
DW$L$__f_alloccluster$24$E:
L207:    
        MOVB      AL,#7                 ; |2364| 
L208:    
        SUBB      SP,#10                ; |2364| 
        MOVL      XAR3,*--SP            ; |2364| 
        MOVL      XAR2,*--SP            ; |2364| 
        MOVL      XAR1,*--SP            ; |2364| 
	.dwpsn	"common.c",2391,1
        LRETR
        ; return occurs

DW$245	.dwtag  DW_TAG_loop
	.dwattr DW$245, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L200:1:1471518967")
	.dwattr DW$245, DW_AT_begin_file("common.c")
	.dwattr DW$245, DW_AT_begin_line(0x907)
	.dwattr DW$245, DW_AT_end_line(0x93a)
DW$246	.dwtag  DW_TAG_loop_range
	.dwattr DW$246, DW_AT_low_pc(DW$L$__f_alloccluster$12$B)
	.dwattr DW$246, DW_AT_high_pc(DW$L$__f_alloccluster$12$E)
DW$247	.dwtag  DW_TAG_loop_range
	.dwattr DW$247, DW_AT_low_pc(DW$L$__f_alloccluster$13$B)
	.dwattr DW$247, DW_AT_high_pc(DW$L$__f_alloccluster$13$E)
DW$248	.dwtag  DW_TAG_loop_range
	.dwattr DW$248, DW_AT_low_pc(DW$L$__f_alloccluster$14$B)
	.dwattr DW$248, DW_AT_high_pc(DW$L$__f_alloccluster$14$E)
DW$249	.dwtag  DW_TAG_loop_range
	.dwattr DW$249, DW_AT_low_pc(DW$L$__f_alloccluster$15$B)
	.dwattr DW$249, DW_AT_high_pc(DW$L$__f_alloccluster$15$E)
DW$250	.dwtag  DW_TAG_loop_range
	.dwattr DW$250, DW_AT_low_pc(DW$L$__f_alloccluster$24$B)
	.dwattr DW$250, DW_AT_high_pc(DW$L$__f_alloccluster$24$E)

DW$251	.dwtag  DW_TAG_loop
	.dwattr DW$251, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L202:2:1471518967")
	.dwattr DW$251, DW_AT_begin_file("common.c")
	.dwattr DW$251, DW_AT_begin_line(0x914)
	.dwattr DW$251, DW_AT_end_line(0x932)
DW$252	.dwtag  DW_TAG_loop_range
	.dwattr DW$252, DW_AT_low_pc(DW$L$__f_alloccluster$16$B)
	.dwattr DW$252, DW_AT_high_pc(DW$L$__f_alloccluster$16$E)
DW$253	.dwtag  DW_TAG_loop_range
	.dwattr DW$253, DW_AT_low_pc(DW$L$__f_alloccluster$17$B)
	.dwattr DW$253, DW_AT_high_pc(DW$L$__f_alloccluster$17$E)
DW$254	.dwtag  DW_TAG_loop_range
	.dwattr DW$254, DW_AT_low_pc(DW$L$__f_alloccluster$23$B)
	.dwattr DW$254, DW_AT_high_pc(DW$L$__f_alloccluster$23$E)
	.dwendtag DW$251

	.dwendtag DW$245


DW$255	.dwtag  DW_TAG_loop
	.dwattr DW$255, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L196:1:1471518967")
	.dwattr DW$255, DW_AT_begin_file("common.c")
	.dwattr DW$255, DW_AT_begin_line(0x940)
	.dwattr DW$255, DW_AT_end_line(0x954)
DW$256	.dwtag  DW_TAG_loop_range
	.dwattr DW$256, DW_AT_low_pc(DW$L$__f_alloccluster$3$B)
	.dwattr DW$256, DW_AT_high_pc(DW$L$__f_alloccluster$3$E)
DW$257	.dwtag  DW_TAG_loop_range
	.dwattr DW$257, DW_AT_low_pc(DW$L$__f_alloccluster$4$B)
	.dwattr DW$257, DW_AT_high_pc(DW$L$__f_alloccluster$4$E)
DW$258	.dwtag  DW_TAG_loop_range
	.dwattr DW$258, DW_AT_low_pc(DW$L$__f_alloccluster$5$B)
	.dwattr DW$258, DW_AT_high_pc(DW$L$__f_alloccluster$5$E)
DW$259	.dwtag  DW_TAG_loop_range
	.dwattr DW$259, DW_AT_low_pc(DW$L$__f_alloccluster$6$B)
	.dwattr DW$259, DW_AT_high_pc(DW$L$__f_alloccluster$6$E)
DW$260	.dwtag  DW_TAG_loop_range
	.dwattr DW$260, DW_AT_low_pc(DW$L$__f_alloccluster$9$B)
	.dwattr DW$260, DW_AT_high_pc(DW$L$__f_alloccluster$9$E)
	.dwendtag DW$255

	.dwattr DW$242, DW_AT_end_file("common.c")
	.dwattr DW$242, DW_AT_end_line(0x957)
	.dwattr DW$242, DW_AT_end_column(0x01)
	.dwendtag DW$242

	.sect	".text"
	.global	__f_dobadblock

DW$261	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_dobadblock"), DW_AT_symbol_name("__f_dobadblock")
	.dwattr DW$261, DW_AT_low_pc(__f_dobadblock)
	.dwattr DW$261, DW_AT_high_pc(0x00)
	.dwattr DW$261, DW_AT_begin_file("common.c")
	.dwattr DW$261, DW_AT_begin_line(0x96d)
	.dwattr DW$261, DW_AT_begin_column(0x05)
	.dwattr DW$261, DW_AT_frame_base[DW_OP_breg20 -38]
	.dwattr DW$261, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",2413,46

;***************************************************************
;* FNAME: __f_dobadblock                FR SIZE:  36           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 28 Auto,  6 SOE     *
;***************************************************************

__f_dobadblock:
;* AR4   assigned to _vi
DW$262	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$262, DW_AT_type(*DW$T$92)
	.dwattr DW$262, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _f
DW$263	.dwtag  DW_TAG_formal_parameter, DW_AT_name("f"), DW_AT_symbol_name("_f")
	.dwattr DW$263, DW_AT_type(*DW$T$108)
	.dwattr DW$263, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      XAR1,#924             ; |2418| 
        MOVL      *SP++,XAR3
        MOVL      XAR3,XAR5             ; |2413| 
        MOVL      XAR0,#922             ; |2418| 
        ADDB      SP,#30
        MOVL      ACC,*+XAR3[AR1]       ; |2418| 
        MOVZ      AR5,SP                ; |2421| 
        SUBL      ACC,*+XAR3[AR0]       ; |2418| 
        MOVL      XAR0,#916             ; |2421| 
        MOVL      XAR2,XAR4             ; |2413| 
        SUBB      XAR5,#6               ; |2421| 
        MOVL      XAR1,ACC              ; |2418| 
        MOVL      ACC,*+XAR3[AR0]       ; |2421| 
        LCR       #__f_getclustervalue  ; |2421| 
        ; call occurs [#__f_getclustervalue] ; |2421| 
        CMPB      AL,#0                 ; |2421| 
        MOVZ      AR6,AL                ; |2421| 
        BF        L214,NEQ              ; |2421| 
        ; branchcc occurs ; |2421| 
        MOV       PH,#4095
        MOVL      XAR0,#916             ; |2424| 
        MOV       PL,#65527
        MOVL      XAR4,XAR2             ; |2424| 
        MOVL      *-SP[2],P             ; |2424| 
        MOVL      ACC,*+XAR3[AR0]       ; |2424| 
        LCR       #__f_setclustervalue  ; |2424| 
        ; call occurs [#__f_setclustervalue] ; |2424| 
        MOVZ      AR6,AL                ; |2424| 
        CMPB      AL,#0                 ; |2424| 
        BF        L214,NEQ              ; |2424| 
        ; branchcc occurs ; |2424| 
L209:    
DW$L$__f_dobadblock$3$B:
        MOVL      XAR0,#1144            ; |2429| 
        MOV       AL,*+XAR2[AR0]        ; |2429| 
        BF        L210,EQ               ; |2429| 
        ; branchcc occurs ; |2429| 
DW$L$__f_dobadblock$3$E:
DW$L$__f_dobadblock$4$B:
        MOVL      ACC,XAR2
        MOVL      XAR4,#1140            ; |2430| 
        ADDL      XAR4,ACC
        MOVB      ACC,#1
        SUBL      *+XAR4[0],ACC         ; |2430| 
        MOVL      ACC,XAR2
        MOVL      XAR4,#1142            ; |2431| 
        ADDL      XAR4,ACC
        MOVB      ACC,#1
        ADDL      *+XAR4[0],ACC         ; |2431| 
DW$L$__f_dobadblock$4$E:
L210:    
DW$L$__f_dobadblock$5$B:
        MOVZ      AR5,SP                ; |2434| 
        MOVL      XAR4,XAR2             ; |2434| 
        SUBB      XAR5,#4               ; |2434| 
        LCR       #__f_alloccluster     ; |2434| 
        ; call occurs [#__f_alloccluster] ; |2434| 
        CMPB      AL,#0                 ; |2434| 
        MOVZ      AR6,AL                ; |2434| 
        BF        L214,NEQ              ; |2434| 
        ; branchcc occurs ; |2434| 
DW$L$__f_dobadblock$5$E:
DW$L$__f_dobadblock$6$B:
        MOVL      ACC,*-SP[6]           ; |2437| 
        MOVL      XAR4,XAR2             ; |2437| 
        MOVL      *-SP[2],ACC           ; |2437| 
        MOVL      ACC,*-SP[4]           ; |2437| 
        LCR       #__f_setclustervalue  ; |2437| 
        ; call occurs [#__f_setclustervalue] ; |2437| 
        CMPB      AL,#0                 ; |2437| 
        MOVZ      AR6,AL                ; |2437| 
        BF        L214,NEQ              ; |2437| 
        ; branchcc occurs ; |2437| 
DW$L$__f_dobadblock$6$E:
DW$L$__f_dobadblock$7$B:
        MOVZ      AR5,SP                ; |2440| 
        MOVL      XAR4,XAR2             ; |2440| 
        MOVL      ACC,*-SP[4]           ; |2440| 
        SUBB      XAR5,#30              ; |2440| 
        LCR       #__f_clustertopos     ; |2440| 
        ; call occurs [#__f_clustertopos] ; |2440| 
        MOVZ      AR5,SP                ; |2441| 
        MOVL      XAR0,#916             ; |2441| 
        MOVL      XAR4,XAR2             ; |2441| 
        SUBB      XAR5,#18              ; |2441| 
        MOVL      ACC,*+XAR3[AR0]       ; |2441| 
        LCR       #__f_clustertopos     ; |2441| 
        ; call occurs [#__f_clustertopos] ; |2441| 
        MOVL      ACC,*-SP[22]          ; |2444| 
        CMPL      ACC,*-SP[24]          ; |2444| 
        BF        L212,LOS              ; |2444| 
        ; branchcc occurs ; |2444| 
DW$L$__f_dobadblock$7$E:
L211:    
DW$L$__f_dobadblock$8$B:
	.dwpsn	"common.c",2444,0
        MOV       *-SP[1],#1            ; |2446| 
        MOVL      XAR4,XAR2             ; |2446| 
        MOVL      XAR5,#_f_filesystem+2122 ; |2446| 
        MOVL      ACC,*-SP[12]          ; |2446| 
        LCR       #__f_readsector       ; |2446| 
        ; call occurs [#__f_readsector] ; |2446| 
        CMPB      AL,#0                 ; |2446| 
        MOVZ      AR6,AL                ; |2446| 
        BF        L214,NEQ              ; |2446| 
        ; branchcc occurs ; |2446| 
DW$L$__f_dobadblock$8$E:
DW$L$__f_dobadblock$9$B:
        MOV       *-SP[1],#1            ; |2449| 
        MOVL      XAR4,XAR2             ; |2449| 
        MOVL      XAR5,#_f_filesystem+2122 ; |2449| 
        MOVL      ACC,*-SP[24]          ; |2449| 
        LCR       #__f_writesector      ; |2449| 
        ; call occurs [#__f_writesector] ; |2449| 
        CMPB      AL,#0                 ; |2449| 
        MOVZ      AR6,AL                ; |2449| 
        BF        L213,NEQ              ; |2449| 
        ; branchcc occurs ; |2449| 
DW$L$__f_dobadblock$9$E:
DW$L$__f_dobadblock$10$B:
        MOVB      ACC,#1
        ADDL      ACC,*-SP[24]          ; |2444| 
        MOVL      *-SP[24],ACC          ; |2444| 
        MOVB      ACC,#1
        ADDL      ACC,*-SP[12]          ; |2444| 
        MOVL      *-SP[12],ACC          ; |2444| 
        MOVL      ACC,*-SP[22]          ; |2444| 
        CMPL      ACC,*-SP[24]          ; |2444| 
	.dwpsn	"common.c",2458,0
        BF        L211,HI               ; |2444| 
        ; branchcc occurs ; |2444| 
DW$L$__f_dobadblock$10$E:
L212:    
        MOVL      ACC,XAR3
        MOVL      XAR5,#916             ; |2460| 
        MOVL      XAR4,XAR2             ; |2460| 
        ADDL      XAR5,ACC
        MOVL      ACC,*-SP[4]           ; |2460| 
        LCR       #__f_clustertopos     ; |2460| 
        ; call occurs [#__f_clustertopos] ; |2460| 
        MOVL      XAR0,#924             ; |2461| 
        MOVL      ACC,*+XAR3[AR0]       ; |2461| 
        MOVL      XAR0,#922             ; |2461| 
        SUBL      ACC,XAR1
        MOVL      *+XAR3[AR0],ACC       ; |2461| 
        MOVB      AL,#0
        BF        L215,UNC              ; |2463| 
        ; branch occurs ; |2463| 
L213:    
DW$L$__f_dobadblock$12$B:
        MOVB      ACC,#2
        CMPL      ACC,*+XAR2[0]         ; |2451| 
        BF        L214,NEQ              ; |2451| 
        ; branchcc occurs ; |2451| 
DW$L$__f_dobadblock$12$E:
DW$L$__f_dobadblock$13$B:
        MOV       PH,#4095
        MOV       PL,#65527
        MOVL      XAR4,XAR2             ; |2453| 
        MOVL      *-SP[2],P             ; |2453| 
        MOVL      ACC,*-SP[4]           ; |2453| 
        LCR       #__f_setclustervalue  ; |2453| 
        ; call occurs [#__f_setclustervalue] ; |2453| 
        CMPB      AL,#0                 ; |2453| 
        MOVZ      AR6,AL                ; |2453| 
        BF        L209,EQ               ; |2453| 
        ; branchcc occurs ; |2453| 
DW$L$__f_dobadblock$13$E:
L214:    
        MOV       AL,AR6
L215:    
        SUBB      SP,#30                ; |2454| 
        MOVL      XAR3,*--SP            ; |2454| 
        MOVL      XAR2,*--SP            ; |2454| 
        MOVL      XAR1,*--SP            ; |2454| 
	.dwpsn	"common.c",2464,1
        LRETR
        ; return occurs

DW$264	.dwtag  DW_TAG_loop
	.dwattr DW$264, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L209:1:1471518967")
	.dwattr DW$264, DW_AT_begin_file("common.c")
	.dwattr DW$264, DW_AT_begin_line(0x978)
	.dwattr DW$264, DW_AT_end_line(0x995)
DW$265	.dwtag  DW_TAG_loop_range
	.dwattr DW$265, DW_AT_low_pc(DW$L$__f_dobadblock$3$B)
	.dwattr DW$265, DW_AT_high_pc(DW$L$__f_dobadblock$3$E)
DW$266	.dwtag  DW_TAG_loop_range
	.dwattr DW$266, DW_AT_low_pc(DW$L$__f_dobadblock$4$B)
	.dwattr DW$266, DW_AT_high_pc(DW$L$__f_dobadblock$4$E)
DW$267	.dwtag  DW_TAG_loop_range
	.dwattr DW$267, DW_AT_low_pc(DW$L$__f_dobadblock$5$B)
	.dwattr DW$267, DW_AT_high_pc(DW$L$__f_dobadblock$5$E)
DW$268	.dwtag  DW_TAG_loop_range
	.dwattr DW$268, DW_AT_low_pc(DW$L$__f_dobadblock$6$B)
	.dwattr DW$268, DW_AT_high_pc(DW$L$__f_dobadblock$6$E)
DW$269	.dwtag  DW_TAG_loop_range
	.dwattr DW$269, DW_AT_low_pc(DW$L$__f_dobadblock$7$B)
	.dwattr DW$269, DW_AT_high_pc(DW$L$__f_dobadblock$7$E)
DW$270	.dwtag  DW_TAG_loop_range
	.dwattr DW$270, DW_AT_low_pc(DW$L$__f_dobadblock$12$B)
	.dwattr DW$270, DW_AT_high_pc(DW$L$__f_dobadblock$12$E)
DW$271	.dwtag  DW_TAG_loop_range
	.dwattr DW$271, DW_AT_low_pc(DW$L$__f_dobadblock$13$B)
	.dwattr DW$271, DW_AT_high_pc(DW$L$__f_dobadblock$13$E)

DW$272	.dwtag  DW_TAG_loop
	.dwattr DW$272, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L211:2:1471518967")
	.dwattr DW$272, DW_AT_begin_file("common.c")
	.dwattr DW$272, DW_AT_begin_line(0x98c)
	.dwattr DW$272, DW_AT_end_line(0x99a)
DW$273	.dwtag  DW_TAG_loop_range
	.dwattr DW$273, DW_AT_low_pc(DW$L$__f_dobadblock$8$B)
	.dwattr DW$273, DW_AT_high_pc(DW$L$__f_dobadblock$8$E)
DW$274	.dwtag  DW_TAG_loop_range
	.dwattr DW$274, DW_AT_low_pc(DW$L$__f_dobadblock$9$B)
	.dwattr DW$274, DW_AT_high_pc(DW$L$__f_dobadblock$9$E)
DW$275	.dwtag  DW_TAG_loop_range
	.dwattr DW$275, DW_AT_low_pc(DW$L$__f_dobadblock$10$B)
	.dwattr DW$275, DW_AT_high_pc(DW$L$__f_dobadblock$10$E)
	.dwendtag DW$272

	.dwendtag DW$264

	.dwattr DW$261, DW_AT_end_file("common.c")
	.dwattr DW$261, DW_AT_end_line(0x9a0)
	.dwattr DW$261, DW_AT_end_column(0x01)
	.dwendtag DW$261

	.sect	".text"
	.global	__f_checklocked

DW$276	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_checklocked"), DW_AT_symbol_name("__f_checklocked")
	.dwattr DW$276, DW_AT_low_pc(__f_checklocked)
	.dwattr DW$276, DW_AT_high_pc(0x00)
	.dwattr DW$276, DW_AT_begin_file("common.c")
	.dwattr DW$276, DW_AT_begin_line(0x9b4)
	.dwattr DW$276, DW_AT_begin_column(0x05)
	.dwattr DW$276, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$276, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",2484,44

;***************************************************************
;* FNAME: __f_checklocked               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

__f_checklocked:
;* AL    assigned to _drvnum
DW$277	.dwtag  DW_TAG_formal_parameter, DW_AT_name("drvnum"), DW_AT_symbol_name("_drvnum")
	.dwattr DW$277, DW_AT_type(*DW$T$12)
	.dwattr DW$277, DW_AT_location[DW_OP_reg0]
;* AR4   assigned to _pos
DW$278	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pos"), DW_AT_symbol_name("_pos")
	.dwattr DW$278, DW_AT_type(*DW$T$64)
	.dwattr DW$278, DW_AT_location[DW_OP_reg12]
        SETC      SXM
        MOVL      XAR7,ACC              ; |2484| 
	.dwpsn	"common.c",2486,0
        MOVB      XAR6,#0
L216:    
DW$L$__f_checklocked$2$B:
        MOV       T,AR6
        MOVL      XAR5,#_f_filesystem+1148 ; |2488| 
;       MOV       T,T Implicitly done by - MPY ACC,OP,#IMM ; |2488| 
        MPY       ACC,AR6,#974          ; |2488| 
        ADDL      XAR5,ACC
        MOV       AL,*+XAR5[4]          ; |2488| 
        BF        L217,EQ               ; |2488| 
        ; branchcc occurs ; |2488| 
DW$L$__f_checklocked$2$E:
DW$L$__f_checklocked$3$B:
        MOV       ACC,*+XAR5[5]         ; |2488| 
        CMPL      ACC,XAR7              ; |2488| 
        BF        L217,NEQ              ; |2488| 
        ; branchcc occurs ; |2488| 
DW$L$__f_checklocked$3$E:
DW$L$__f_checklocked$4$B:
        MOVB      XAR0,#10              ; |2488| 
        MOVL      ACC,*+XAR4[AR0]       ; |2488| 
        MOVL      XAR0,#938             ; |2488| 
        CMPL      ACC,*+XAR5[AR0]       ; |2488| 
        BF        L217,NEQ              ; |2488| 
        ; branchcc occurs ; |2488| 
DW$L$__f_checklocked$4$E:
DW$L$__f_checklocked$5$B:
        MOVL      XAR0,#934             ; |2488| 
        MOVL      ACC,*+XAR4[6]         ; |2488| 
        CMPL      ACC,*+XAR5[AR0]       ; |2488| 
        BF        L217,NEQ              ; |2488| 
        ; branchcc occurs ; |2488| 
DW$L$__f_checklocked$5$E:
        MOVB      AL,#12                ; |2489| 
        BF        L218,UNC              ; |2489| 
        ; branch occurs ; |2489| 
L217:    
DW$L$__f_checklocked$7$B:
        MOV       AL,AR6
        ADDB      AL,#1                 ; |2486| 
        MOVZ      AR6,AL                ; |2486| 
	.dwpsn	"common.c",2491,0
        BF        L216,LEQ              ; |2486| 
        ; branchcc occurs ; |2486| 
DW$L$__f_checklocked$7$E:
        MOVB      AL,#0
L218:    
	.dwpsn	"common.c",2493,1
        LRETR
        ; return occurs

DW$279	.dwtag  DW_TAG_loop
	.dwattr DW$279, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L216:1:1471518967")
	.dwattr DW$279, DW_AT_begin_file("common.c")
	.dwattr DW$279, DW_AT_begin_line(0x9b6)
	.dwattr DW$279, DW_AT_end_line(0x9bb)
DW$280	.dwtag  DW_TAG_loop_range
	.dwattr DW$280, DW_AT_low_pc(DW$L$__f_checklocked$2$B)
	.dwattr DW$280, DW_AT_high_pc(DW$L$__f_checklocked$2$E)
DW$281	.dwtag  DW_TAG_loop_range
	.dwattr DW$281, DW_AT_low_pc(DW$L$__f_checklocked$3$B)
	.dwattr DW$281, DW_AT_high_pc(DW$L$__f_checklocked$3$E)
DW$282	.dwtag  DW_TAG_loop_range
	.dwattr DW$282, DW_AT_low_pc(DW$L$__f_checklocked$4$B)
	.dwattr DW$282, DW_AT_high_pc(DW$L$__f_checklocked$4$E)
DW$283	.dwtag  DW_TAG_loop_range
	.dwattr DW$283, DW_AT_low_pc(DW$L$__f_checklocked$5$B)
	.dwattr DW$283, DW_AT_high_pc(DW$L$__f_checklocked$5$E)
DW$284	.dwtag  DW_TAG_loop_range
	.dwattr DW$284, DW_AT_low_pc(DW$L$__f_checklocked$7$B)
	.dwattr DW$284, DW_AT_high_pc(DW$L$__f_checklocked$7$E)
	.dwendtag DW$279

	.dwattr DW$276, DW_AT_end_file("common.c")
	.dwattr DW$276, DW_AT_end_line(0x9bd)
	.dwattr DW$276, DW_AT_end_column(0x01)
	.dwendtag DW$276

	.sect	".text"
	.global	__f_checkreadlocked

DW$285	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_checkreadlocked"), DW_AT_symbol_name("__f_checkreadlocked")
	.dwattr DW$285, DW_AT_low_pc(__f_checkreadlocked)
	.dwattr DW$285, DW_AT_high_pc(0x00)
	.dwattr DW$285, DW_AT_begin_file("common.c")
	.dwattr DW$285, DW_AT_begin_line(0x9d1)
	.dwattr DW$285, DW_AT_begin_column(0x05)
	.dwattr DW$285, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$285, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",2513,48

;***************************************************************
;* FNAME: __f_checkreadlocked           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

__f_checkreadlocked:
;* AL    assigned to _drvnum
DW$286	.dwtag  DW_TAG_formal_parameter, DW_AT_name("drvnum"), DW_AT_symbol_name("_drvnum")
	.dwattr DW$286, DW_AT_type(*DW$T$12)
	.dwattr DW$286, DW_AT_location[DW_OP_reg0]
;* AR4   assigned to _pos
DW$287	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pos"), DW_AT_symbol_name("_pos")
	.dwattr DW$287, DW_AT_type(*DW$T$64)
	.dwattr DW$287, DW_AT_location[DW_OP_reg12]
        SETC      SXM
        MOVL      P,ACC                 ; |2513| 
	.dwpsn	"common.c",2515,0
        MOVB      XAR6,#0
L219:    
DW$L$__f_checkreadlocked$2$B:
        MOV       T,AR6
        MOVL      XAR5,#_f_filesystem+1148 ; |2517| 
;       MOV       T,T Implicitly done by - MPY ACC,OP,#IMM ; |2517| 
        MPY       ACC,AR6,#974          ; |2517| 
        ADDL      XAR5,ACC
        MOVZ      AR7,*+XAR5[4]         ; |2517| 
        MOV       AL,AR7                ; |2517| 
        BF        L220,EQ               ; |2517| 
        ; branchcc occurs ; |2517| 
DW$L$__f_checkreadlocked$2$E:
DW$L$__f_checkreadlocked$3$B:
        MOV       ACC,*+XAR5[5]         ; |2517| 
        CMPL      ACC,P                 ; |2517| 
        BF        L220,NEQ              ; |2517| 
        ; branchcc occurs ; |2517| 
DW$L$__f_checkreadlocked$3$E:
DW$L$__f_checkreadlocked$4$B:
        MOVB      XAR0,#10              ; |2517| 
        MOVL      ACC,*+XAR4[AR0]       ; |2517| 
        MOVL      XAR0,#938             ; |2517| 
        CMPL      ACC,*+XAR5[AR0]       ; |2517| 
        BF        L220,NEQ              ; |2517| 
        ; branchcc occurs ; |2517| 
DW$L$__f_checkreadlocked$4$E:
DW$L$__f_checkreadlocked$5$B:
        MOVL      XAR0,#934             ; |2517| 
        MOVL      ACC,*+XAR4[6]         ; |2517| 
        CMPL      ACC,*+XAR5[AR0]       ; |2517| 
        BF        L220,NEQ              ; |2517| 
        ; branchcc occurs ; |2517| 
DW$L$__f_checkreadlocked$5$E:
DW$L$__f_checkreadlocked$6$B:
        MOV       AL,AR7
        CMPB      AL,#1                 ; |2517| 
        BF        L220,EQ               ; |2517| 
        ; branchcc occurs ; |2517| 
DW$L$__f_checkreadlocked$6$E:
        MOVB      AL,#12                ; |2519| 
        BF        L221,UNC              ; |2519| 
        ; branch occurs ; |2519| 
L220:    
DW$L$__f_checkreadlocked$8$B:
        MOV       AL,AR6
        ADDB      AL,#1                 ; |2515| 
        MOVZ      AR6,AL                ; |2515| 
	.dwpsn	"common.c",2522,0
        BF        L219,LEQ              ; |2515| 
        ; branchcc occurs ; |2515| 
DW$L$__f_checkreadlocked$8$E:
        MOVB      AL,#0
L221:    
	.dwpsn	"common.c",2524,1
        LRETR
        ; return occurs

DW$288	.dwtag  DW_TAG_loop
	.dwattr DW$288, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L219:1:1471518967")
	.dwattr DW$288, DW_AT_begin_file("common.c")
	.dwattr DW$288, DW_AT_begin_line(0x9d3)
	.dwattr DW$288, DW_AT_end_line(0x9da)
DW$289	.dwtag  DW_TAG_loop_range
	.dwattr DW$289, DW_AT_low_pc(DW$L$__f_checkreadlocked$2$B)
	.dwattr DW$289, DW_AT_high_pc(DW$L$__f_checkreadlocked$2$E)
DW$290	.dwtag  DW_TAG_loop_range
	.dwattr DW$290, DW_AT_low_pc(DW$L$__f_checkreadlocked$3$B)
	.dwattr DW$290, DW_AT_high_pc(DW$L$__f_checkreadlocked$3$E)
DW$291	.dwtag  DW_TAG_loop_range
	.dwattr DW$291, DW_AT_low_pc(DW$L$__f_checkreadlocked$4$B)
	.dwattr DW$291, DW_AT_high_pc(DW$L$__f_checkreadlocked$4$E)
DW$292	.dwtag  DW_TAG_loop_range
	.dwattr DW$292, DW_AT_low_pc(DW$L$__f_checkreadlocked$5$B)
	.dwattr DW$292, DW_AT_high_pc(DW$L$__f_checkreadlocked$5$E)
DW$293	.dwtag  DW_TAG_loop_range
	.dwattr DW$293, DW_AT_low_pc(DW$L$__f_checkreadlocked$6$B)
	.dwattr DW$293, DW_AT_high_pc(DW$L$__f_checkreadlocked$6$E)
DW$294	.dwtag  DW_TAG_loop_range
	.dwattr DW$294, DW_AT_low_pc(DW$L$__f_checkreadlocked$8$B)
	.dwattr DW$294, DW_AT_high_pc(DW$L$__f_checkreadlocked$8$E)
	.dwendtag DW$288

	.dwattr DW$285, DW_AT_end_file("common.c")
	.dwattr DW$285, DW_AT_end_line(0x9dc)
	.dwattr DW$285, DW_AT_end_column(0x01)
	.dwendtag DW$285

	.sect	".text"
	.global	_fn_getfreespace

DW$295	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_getfreespace"), DW_AT_symbol_name("_fn_getfreespace")
	.dwattr DW$295, DW_AT_low_pc(_fn_getfreespace)
	.dwattr DW$295, DW_AT_high_pc(0x00)
	.dwattr DW$295, DW_AT_begin_file("common.c")
	.dwattr DW$295, DW_AT_begin_line(0x9ee)
	.dwattr DW$295, DW_AT_begin_column(0x05)
	.dwattr DW$295, DW_AT_frame_base[DW_OP_breg20 -18]
	.dwattr DW$295, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",2542,64

;***************************************************************
;* FNAME: _fn_getfreespace              FR SIZE:  16           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 10 Auto,  6 SOE     *
;***************************************************************

_fn_getfreespace:
;* AR4   assigned to _fm
DW$296	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$296, DW_AT_type(*DW$T$106)
	.dwattr DW$296, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _drivenum
DW$297	.dwtag  DW_TAG_formal_parameter, DW_AT_name("drivenum"), DW_AT_symbol_name("_drivenum")
	.dwattr DW$297, DW_AT_type(*DW$T$10)
	.dwattr DW$297, DW_AT_location[DW_OP_reg0]
;* AR5   assigned to _pspace
DW$298	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pspace"), DW_AT_symbol_name("_pspace")
	.dwattr DW$298, DW_AT_type(*DW$T$171)
	.dwattr DW$298, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      XAR1,XAR5             ; |2542| 
        MOVL      *SP++,XAR3
        ADDB      SP,#10
        MOVZ      AR5,SP                ; |2550| 
        SUBB      XAR5,#4               ; |2550| 
        LCR       #__f_getvolume        ; |2550| 
        ; call occurs [#__f_getvolume] ; |2550| 
        CMPB      AL,#0                 ; |2550| 
        BF        L237,NEQ              ; |2550| 
        ; branchcc occurs ; |2550| 
        MOVL      XAR4,*-SP[4]          ; |2553| 
        LCR       #__f_getmaxcluster    ; |2553| 
        ; call occurs [#__f_getmaxcluster] ; |2553| 
        MOVL      *-SP[6],ACC           ; |2553| 
        MOVL      *+XAR1[0],ACC         ; |2555| 
        MOVB      ACC,#0
        MOVL      *+XAR1[2],ACC         ; |2556| 
        MOVL      XAR0,#1144            ; |2561| 
        MOVL      *+XAR1[4],ACC         ; |2557| 
        MOVL      *+XAR1[6],ACC         ; |2558| 
        MOVL      XAR4,*-SP[4]          ; |2561| 
        MOV       AL,*+XAR4[AR0]        ; |2561| 
        BF        L234,NEQ              ; |2561| 
        ; branchcc occurs ; |2561| 
        MOVL      XAR0,#1136            ; |2562| 
        MOVL      XAR4,*-SP[4]          ; |2562| 
        MOVB      ACC,#3
        CMPL      ACC,*+XAR4[AR0]       ; |2562| 
        BF        L226,EQ               ; |2562| 
        ; branchcc occurs ; |2562| 
        MOVL      ACC,*-SP[6]           ; |2599| 
        MOVB      XAR2,#0
        BF        L233,EQ               ; |2599| 
        ; branchcc occurs ; |2599| 
L222:    
DW$L$_fn_getfreespace$5$B:
	.dwpsn	"common.c",2599,0
        MOVZ      AR5,SP                ; |2601| 
        MOVB      ACC,#2
        MOVL      XAR4,*-SP[4]          ; |2601| 
        SUBB      XAR5,#2               ; |2601| 
        ADDL      ACC,XAR2
        LCR       #__f_getclustervalue  ; |2601| 
        ; call occurs [#__f_getclustervalue] ; |2601| 
        CMPB      AL,#0                 ; |2601| 
        BF        L237,NEQ              ; |2601| 
        ; branchcc occurs ; |2601| 
DW$L$_fn_getfreespace$5$E:
DW$L$_fn_getfreespace$6$B:
        MOVL      ACC,*-SP[2]           ; |2604| 
        BF        L224,EQ               ; |2604| 
        ; branchcc occurs ; |2604| 
DW$L$_fn_getfreespace$6$E:
DW$L$_fn_getfreespace$7$B:
        MOV       AL,#65527
        MOV       AH,#4095
        CMPL      ACC,*-SP[2]           ; |2605| 
        BF        L223,EQ               ; |2605| 
        ; branchcc occurs ; |2605| 
DW$L$_fn_getfreespace$7$E:
DW$L$_fn_getfreespace$8$B:
        MOVB      ACC,#1
        ADDL      *+XAR1[4],ACC         ; |2606| 
        BF        L225,UNC              ; |2606| 
        ; branch occurs ; |2606| 
DW$L$_fn_getfreespace$8$E:
L223:    
DW$L$_fn_getfreespace$9$B:
        MOVB      ACC,#1
        ADDL      *+XAR1[6],ACC         ; |2605| 
        BF        L225,UNC              ; |2605| 
        ; branch occurs ; |2605| 
DW$L$_fn_getfreespace$9$E:
L224:    
DW$L$_fn_getfreespace$10$B:
        MOVB      ACC,#1
        ADDL      *+XAR1[2],ACC         ; |2604| 
DW$L$_fn_getfreespace$10$E:
L225:    
DW$L$_fn_getfreespace$11$B:
        MOVL      ACC,*-SP[6]           ; |2599| 
        ADDB      XAR2,#1               ; |2599| 
        CMPL      ACC,XAR2              ; |2599| 
	.dwpsn	"common.c",2607,0
        BF        L222,HI               ; |2599| 
        ; branchcc occurs ; |2599| 
DW$L$_fn_getfreespace$11$E:
        BF        L233,UNC              ; |2599| 
        ; branch occurs ; |2599| 
L226:    
        MOVB      ACC,#0
        MOVB      XAR0,#76              ; |2564| 
        MOVL      XAR4,*-SP[4]          ; |2564| 
        MOVB      XAR3,#0
        MOVB      XAR2,#0
        MOVL      *-SP[8],ACC           ; |2563| 
        MOVL      ACC,*+XAR4[AR0]       ; |2564| 
        MOVL      *-SP[10],ACC          ; |2564| 
        BF        L233,EQ               ; |2568| 
        ; branchcc occurs ; |2568| 
L227:    
DW$L$_fn_getfreespace$14$B:
	.dwpsn	"common.c",2568,0
        MOVL      ACC,*-SP[6]
        CMPL      ACC,XAR2              ; |2597| 
        BF        L233,LOS              ; |2597| 
        ; branchcc occurs ; |2597| 
DW$L$_fn_getfreespace$14$E:
DW$L$_fn_getfreespace$15$B:
        MOVL      XAR4,*-SP[4]          ; |2573| 
        MOVL      ACC,*-SP[8]           ; |2573| 
        LCR       #__f_getfatsector     ; |2573| 
        ; call occurs [#__f_getfatsector] ; |2573| 
        CMPB      AL,#0                 ; |2573| 
        BF        L237,NEQ              ; |2573| 
        ; branchcc occurs ; |2573| 
DW$L$_fn_getfreespace$15$E:
DW$L$_fn_getfreespace$16$B:
        MOVL      XAR4,*-SP[4]          ; |2576| 
        MOVB      XAR5,#0
	.dwpsn	"common.c",2578,0
        ADDB      XAR4,#86              ; |2576| 
DW$L$_fn_getfreespace$16$E:
L228:    
DW$L$_fn_getfreespace$17$B:
        MOVL      XAR6,XAR2             ; |2578| 
        MOVB      ACC,#1
        ADDL      ACC,XAR6
        MOVL      XAR2,ACC              ; |2578| 
        MOVL      ACC,*-SP[6]           ; |2578| 
        CMPL      ACC,XAR6              ; |2578| 
        BF        L232,LOS              ; |2578| 
        ; branchcc occurs ; |2578| 
DW$L$_fn_getfreespace$17$E:
DW$L$_fn_getfreespace$18$B:
        MOVL      ACC,*XAR4++           ; |2579| 
        AND       AH,#4095              ; |2579| 
        TEST      ACC                   ; |2579| 
        MOVL      XAR6,ACC              ; |2579| 
        BF        L230,EQ               ; |2579| 
        ; branchcc occurs ; |2579| 
DW$L$_fn_getfreespace$18$E:
DW$L$_fn_getfreespace$19$B:
        MOV       AL,#65527
        MOV       AH,#4095
        CMPL      ACC,XAR6              ; |2587| 
        BF        L229,EQ               ; |2587| 
        ; branchcc occurs ; |2587| 
DW$L$_fn_getfreespace$19$E:
DW$L$_fn_getfreespace$20$B:
        MOVB      ACC,#1
        ADDL      *+XAR1[4],ACC         ; |2588| 
        BF        L231,UNC              ; |2588| 
        ; branch occurs ; |2588| 
DW$L$_fn_getfreespace$20$E:
L229:    
DW$L$_fn_getfreespace$21$B:
        MOVB      ACC,#1
        ADDL      *+XAR1[6],ACC         ; |2587| 
        BF        L231,UNC              ; |2587| 
        ; branch occurs ; |2587| 
DW$L$_fn_getfreespace$21$E:
L230:    
DW$L$_fn_getfreespace$22$B:
        MOVB      ACC,#1
        ADDL      *+XAR1[2],ACC         ; |2582| 
DW$L$_fn_getfreespace$22$E:
L231:    
DW$L$_fn_getfreespace$23$B:
        MOVB      ACC,#128
        ADDB      XAR5,#1               ; |2578| 
        CMPL      ACC,XAR5              ; |2578| 
	.dwpsn	"common.c",2589,0
        BF        L228,HI               ; |2578| 
        ; branchcc occurs ; |2578| 
DW$L$_fn_getfreespace$23$E:
L232:    
DW$L$_fn_getfreespace$24$B:
        MOVL      ACC,*-SP[8]
        ADDB      XAR3,#1               ; |2568| 
        ADDB      ACC,#1                ; |2595| 
        MOVL      *-SP[8],ACC           ; |2595| 
        MOVL      ACC,*-SP[10]          ; |2568| 
        CMPL      ACC,XAR3              ; |2568| 
	.dwpsn	"common.c",2596,0
        BF        L227,HI               ; |2568| 
        ; branchcc occurs ; |2568| 
DW$L$_fn_getfreespace$24$E:
L233:    
        MOVL      XAR0,#1138            ; |2610| 
        MOVL      XAR4,*-SP[4]          ; |2610| 
        MOVL      ACC,*+XAR1[2]         ; |2610| 
        MOVL      *+XAR4[AR0],ACC       ; |2610| 
        MOVL      XAR0,#1140            ; |2611| 
        MOVL      XAR4,*-SP[4]          ; |2611| 
        MOVL      ACC,*+XAR1[4]         ; |2611| 
        MOVL      *+XAR4[AR0],ACC       ; |2611| 
        MOVL      XAR0,#1142            ; |2612| 
        MOVL      XAR4,*-SP[4]          ; |2612| 
        MOVL      ACC,*+XAR1[6]         ; |2612| 
        MOVL      *+XAR4[AR0],ACC       ; |2612| 
        MOVL      XAR0,#1144            ; |2613| 
        MOVL      XAR4,*-SP[4]          ; |2613| 
        MOV       *+XAR4[AR0],#1        ; |2613| 
        BF        L235,UNC              ; |2614| 
        ; branch occurs ; |2614| 
L234:    
        MOVL      XAR0,#1138            ; |2616| 
        MOVL      XAR4,*-SP[4]          ; |2616| 
        MOVL      ACC,*+XAR4[AR0]       ; |2616| 
        MOVL      XAR0,#1140            ; |2617| 
        MOVL      *+XAR1[2],ACC         ; |2616| 
        MOVL      XAR4,*-SP[4]          ; |2617| 
        MOVL      ACC,*+XAR4[AR0]       ; |2617| 
        MOVL      XAR0,#1142            ; |2618| 
        MOVL      *+XAR1[4],ACC         ; |2617| 
        MOVL      XAR4,*-SP[4]          ; |2618| 
        MOVL      ACC,*+XAR4[AR0]       ; |2618| 
        MOVL      *+XAR1[6],ACC         ; |2618| 
L235:    
        MOVL      XAR4,*-SP[4]          ; |2622| 
        MOVB      XAR0,#14              ; |2622| 
        MOVZ      AR6,*+XAR4[AR0]
        MOVL      ACC,XAR6              ; |2625| 
        LSL       ACC,9                 ; |2625| 
        MOVL      XAR6,ACC              ; |2625| 
        CLRC      SXM
	.dwpsn	"common.c",2625,0
        MOVB      XAR2,#0
L236:    
DW$L$_fn_getfreespace$28$B:
        MOVL      ACC,XAR6              ; |2625| 
        SFR       ACC,1                 ; |2625| 
        MOVL      XAR6,ACC              ; |2625| 
        ADDB      XAR2,#1               ; |2625| 
        ANDB      AL,#0x01              ; |2625| 
        BF        L236,EQ               ; |2625| 
        ; branchcc occurs ; |2625| 
DW$L$_fn_getfreespace$28$E:
        MOVB      ACC,#32
        SUBL      ACC,XAR2
        MOVL      XAR6,ACC              ; |2626| 
        MOVB      XAR0,#8               ; |2626| 
        MOV       T,AR6                 ; |2626| 
        MOVL      ACC,*+XAR1[0]         ; |2626| 
        LSRL      ACC,T                 ; |2626| 
        MOVL      *+XAR1[AR0],ACC       ; |2626| 
        MOV       T,AR2                 ; |2627| 
        MOVL      ACC,*+XAR1[0]         ; |2627| 
        LSLL      ACC,T                 ; |2627| 
        MOVL      *+XAR1[0],ACC         ; |2627| 
        MOV       T,AR6                 ; |2628| 
        MOVL      ACC,*+XAR1[2]         ; |2628| 
        MOVB      XAR0,#10              ; |2628| 
        LSRL      ACC,T                 ; |2628| 
        MOVL      *+XAR1[AR0],ACC       ; |2628| 
        MOV       T,AR2                 ; |2629| 
        MOVL      ACC,*+XAR1[2]         ; |2629| 
        LSLL      ACC,T                 ; |2629| 
        MOVL      *+XAR1[2],ACC         ; |2629| 
        MOV       T,AR6                 ; |2630| 
        MOVL      ACC,*+XAR1[4]         ; |2630| 
        MOVB      XAR0,#12              ; |2630| 
        LSRL      ACC,T                 ; |2630| 
        MOVL      *+XAR1[AR0],ACC       ; |2630| 
        MOV       T,AR2                 ; |2631| 
        MOVL      ACC,*+XAR1[4]         ; |2631| 
        LSLL      ACC,T                 ; |2631| 
        MOVL      *+XAR1[4],ACC         ; |2631| 
        MOV       T,AR6                 ; |2632| 
        MOVL      ACC,*+XAR1[6]         ; |2632| 
        MOVB      XAR0,#14              ; |2632| 
        LSRL      ACC,T                 ; |2632| 
        MOVL      *+XAR1[AR0],ACC       ; |2632| 
        MOV       T,AR2                 ; |2633| 
        MOVL      ACC,*+XAR1[6]         ; |2633| 
        LSLL      ACC,T                 ; |2633| 
        MOVL      *+XAR1[6],ACC         ; |2633| 
        MOVB      AL,#0
L237:    
        SUBB      SP,#10                ; |2635| 
        MOVL      XAR3,*--SP            ; |2635| 
        MOVL      XAR2,*--SP            ; |2635| 
        MOVL      XAR1,*--SP            ; |2635| 
	.dwpsn	"common.c",2636,1
        LRETR
        ; return occurs

DW$299	.dwtag  DW_TAG_loop
	.dwattr DW$299, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L236:1:1471518967")
	.dwattr DW$299, DW_AT_begin_file("common.c")
	.dwattr DW$299, DW_AT_begin_line(0xa41)
	.dwattr DW$299, DW_AT_end_line(0xa41)
DW$300	.dwtag  DW_TAG_loop_range
	.dwattr DW$300, DW_AT_low_pc(DW$L$_fn_getfreespace$28$B)
	.dwattr DW$300, DW_AT_high_pc(DW$L$_fn_getfreespace$28$E)
	.dwendtag DW$299


DW$301	.dwtag  DW_TAG_loop
	.dwattr DW$301, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L227:1:1471518967")
	.dwattr DW$301, DW_AT_begin_file("common.c")
	.dwattr DW$301, DW_AT_begin_line(0xa08)
	.dwattr DW$301, DW_AT_end_line(0xa24)
DW$302	.dwtag  DW_TAG_loop_range
	.dwattr DW$302, DW_AT_low_pc(DW$L$_fn_getfreespace$14$B)
	.dwattr DW$302, DW_AT_high_pc(DW$L$_fn_getfreespace$14$E)
DW$303	.dwtag  DW_TAG_loop_range
	.dwattr DW$303, DW_AT_low_pc(DW$L$_fn_getfreespace$15$B)
	.dwattr DW$303, DW_AT_high_pc(DW$L$_fn_getfreespace$15$E)
DW$304	.dwtag  DW_TAG_loop_range
	.dwattr DW$304, DW_AT_low_pc(DW$L$_fn_getfreespace$16$B)
	.dwattr DW$304, DW_AT_high_pc(DW$L$_fn_getfreespace$16$E)
DW$305	.dwtag  DW_TAG_loop_range
	.dwattr DW$305, DW_AT_low_pc(DW$L$_fn_getfreespace$24$B)
	.dwattr DW$305, DW_AT_high_pc(DW$L$_fn_getfreespace$24$E)

DW$306	.dwtag  DW_TAG_loop
	.dwattr DW$306, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L228:2:1471518967")
	.dwattr DW$306, DW_AT_begin_file("common.c")
	.dwattr DW$306, DW_AT_begin_line(0xa12)
	.dwattr DW$306, DW_AT_end_line(0xa1d)
DW$307	.dwtag  DW_TAG_loop_range
	.dwattr DW$307, DW_AT_low_pc(DW$L$_fn_getfreespace$17$B)
	.dwattr DW$307, DW_AT_high_pc(DW$L$_fn_getfreespace$17$E)
DW$308	.dwtag  DW_TAG_loop_range
	.dwattr DW$308, DW_AT_low_pc(DW$L$_fn_getfreespace$18$B)
	.dwattr DW$308, DW_AT_high_pc(DW$L$_fn_getfreespace$18$E)
DW$309	.dwtag  DW_TAG_loop_range
	.dwattr DW$309, DW_AT_low_pc(DW$L$_fn_getfreespace$19$B)
	.dwattr DW$309, DW_AT_high_pc(DW$L$_fn_getfreespace$19$E)
DW$310	.dwtag  DW_TAG_loop_range
	.dwattr DW$310, DW_AT_low_pc(DW$L$_fn_getfreespace$20$B)
	.dwattr DW$310, DW_AT_high_pc(DW$L$_fn_getfreespace$20$E)
DW$311	.dwtag  DW_TAG_loop_range
	.dwattr DW$311, DW_AT_low_pc(DW$L$_fn_getfreespace$21$B)
	.dwattr DW$311, DW_AT_high_pc(DW$L$_fn_getfreespace$21$E)
DW$312	.dwtag  DW_TAG_loop_range
	.dwattr DW$312, DW_AT_low_pc(DW$L$_fn_getfreespace$22$B)
	.dwattr DW$312, DW_AT_high_pc(DW$L$_fn_getfreespace$22$E)
DW$313	.dwtag  DW_TAG_loop_range
	.dwattr DW$313, DW_AT_low_pc(DW$L$_fn_getfreespace$23$B)
	.dwattr DW$313, DW_AT_high_pc(DW$L$_fn_getfreespace$23$E)
	.dwendtag DW$306

	.dwendtag DW$301


DW$314	.dwtag  DW_TAG_loop
	.dwattr DW$314, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L222:1:1471518967")
	.dwattr DW$314, DW_AT_begin_file("common.c")
	.dwattr DW$314, DW_AT_begin_line(0xa27)
	.dwattr DW$314, DW_AT_end_line(0xa2f)
DW$315	.dwtag  DW_TAG_loop_range
	.dwattr DW$315, DW_AT_low_pc(DW$L$_fn_getfreespace$5$B)
	.dwattr DW$315, DW_AT_high_pc(DW$L$_fn_getfreespace$5$E)
DW$316	.dwtag  DW_TAG_loop_range
	.dwattr DW$316, DW_AT_low_pc(DW$L$_fn_getfreespace$6$B)
	.dwattr DW$316, DW_AT_high_pc(DW$L$_fn_getfreespace$6$E)
DW$317	.dwtag  DW_TAG_loop_range
	.dwattr DW$317, DW_AT_low_pc(DW$L$_fn_getfreespace$7$B)
	.dwattr DW$317, DW_AT_high_pc(DW$L$_fn_getfreespace$7$E)
DW$318	.dwtag  DW_TAG_loop_range
	.dwattr DW$318, DW_AT_low_pc(DW$L$_fn_getfreespace$8$B)
	.dwattr DW$318, DW_AT_high_pc(DW$L$_fn_getfreespace$8$E)
DW$319	.dwtag  DW_TAG_loop_range
	.dwattr DW$319, DW_AT_low_pc(DW$L$_fn_getfreespace$9$B)
	.dwattr DW$319, DW_AT_high_pc(DW$L$_fn_getfreespace$9$E)
DW$320	.dwtag  DW_TAG_loop_range
	.dwattr DW$320, DW_AT_low_pc(DW$L$_fn_getfreespace$10$B)
	.dwattr DW$320, DW_AT_high_pc(DW$L$_fn_getfreespace$10$E)
DW$321	.dwtag  DW_TAG_loop_range
	.dwattr DW$321, DW_AT_low_pc(DW$L$_fn_getfreespace$11$B)
	.dwattr DW$321, DW_AT_high_pc(DW$L$_fn_getfreespace$11$E)
	.dwendtag DW$314

	.dwattr DW$295, DW_AT_end_file("common.c")
	.dwattr DW$295, DW_AT_end_line(0xa4c)
	.dwattr DW$295, DW_AT_end_column(0x01)
	.dwendtag DW$295

	.sect	".text"
	.global	__f_emptywritecache

DW$322	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_emptywritecache"), DW_AT_symbol_name("__f_emptywritecache")
	.dwattr DW$322, DW_AT_low_pc(__f_emptywritecache)
	.dwattr DW$322, DW_AT_high_pc(0x00)
	.dwattr DW$322, DW_AT_begin_file("common.c")
	.dwattr DW$322, DW_AT_begin_line(0xa5b)
	.dwattr DW$322, DW_AT_begin_column(0x05)
	.dwattr DW$322, DW_AT_frame_base[DW_OP_breg20 -24]
	.dwattr DW$322, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",2652,1

;***************************************************************
;* FNAME: __f_emptywritecache           FR SIZE:  22           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 13 Auto,  6 SOE     *
;***************************************************************

__f_emptywritecache:
;* AR4   assigned to _vi
DW$323	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$323, DW_AT_type(*DW$T$92)
	.dwattr DW$323, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _f
DW$324	.dwtag  DW_TAG_formal_parameter, DW_AT_name("f"), DW_AT_symbol_name("_f")
	.dwattr DW$324, DW_AT_type(*DW$T$108)
	.dwattr DW$324, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#16
        MOVB      XAR6,#0
        MOVL      XAR2,XAR5             ; |2652| 
        MOVL      XAR0,#524             ; |2659| 
        MOV       *-SP[15],#0           ; |2656| 
        MOVL      XAR3,XAR4             ; |2652| 
        MOV       AH,*+XAR2[AR0]        ; |2659| 
        BF        L241,LEQ              ; |2659| 
        ; branchcc occurs ; |2659| 
L238:    
DW$L$__f_emptywritecache$2$B:
	.dwpsn	"common.c",2660,0
        MOVB      AL,#1                 ; |2661| 
        ADD       AL,*-SP[15]           ; |2661| 
        CMP       AL,*+XAR2[AR0]        ; |2661| 
        MOVZ      AR1,AL                ; |2661| 
        BF        L240,GEQ              ; |2661| 
        ; branchcc occurs ; |2661| 
DW$L$__f_emptywritecache$2$E:
L239:    
DW$L$__f_emptywritecache$3$B:
        MOVL      XAR0,#528             ; |2661| 
        MOVL      XAR4,*+XAR2[AR0]      ; |2661| 
        MOV       T,AR1
        MOVL      XAR5,XAR4             ; |2661| 
        MPYB      ACC,T,#12             ; |2661| 
        ADDL      XAR4,ACC
        MOV       PH,#65535
        ADDL      XAR5,ACC
        MOV       PL,#65535
        SUBB      XAR4,#6               ; |2661| 
        MOVL      ACC,*+XAR4[0]         ; |2661| 
        SUBL      ACC,*+XAR5[6]         ; |2661| 
        CMPL      ACC,P                 ; |2661| 
        BF        L240,NEQ              ; |2661| 
        ; branchcc occurs ; |2661| 
DW$L$__f_emptywritecache$3$E:
DW$L$__f_emptywritecache$4$B:
        MOV       AL,AR1
        SUB       AL,*-SP[15]           ; |2661| 
        CMP       AL,#256               ; |2661| 
        BF        L240,HIS              ; |2661| 
        ; branchcc occurs ; |2661| 
DW$L$__f_emptywritecache$4$E:
DW$L$__f_emptywritecache$5$B:
        MOVL      XAR0,#524             ; |2661| 
        MOV       AL,AR1                ; |2661| 
        ADDB      AL,#1                 ; |2661| 
        CMP       AL,*+XAR2[AR0]        ; |2661| 
        MOVZ      AR1,AL                ; |2661| 
        BF        L239,LT               ; |2661| 
        ; branchcc occurs ; |2661| 
DW$L$__f_emptywritecache$5$E:
L240:    
DW$L$__f_emptywritecache$6$B:
        MOVL      XAR0,#526             ; |2662| 
        MOV       AL,AR1
        SUB       AL,*-SP[15]           ; |2662| 
        MOV       *-SP[1],AL            ; |2662| 
        MOVL      XAR5,*+XAR2[AR0]      ; |2662| 
        MOV       AL,*-SP[15]           ; |2662| 
        MOVL      XAR0,#528             ; |2662| 
        SETC      SXM
        MOV       ACC,AL << #9          ; |2662| 
        MOV       ACC,AL                ; |2662| 
        MOVL      XAR4,*+XAR2[AR0]      ; |2662| 
        MOV       T,*-SP[15]            ; |2662| 
        ADDL      XAR5,ACC
        MPYB      ACC,T,#12             ; |2662| 
        ADDL      XAR4,ACC
        MOVL      ACC,*+XAR4[6]         ; |2662| 
        MOVL      XAR4,XAR3             ; |2662| 
        LCR       #__f_writesector      ; |2662| 
        ; call occurs [#__f_writesector] ; |2662| 
        CMPB      AL,#0                 ; |2662| 
        MOVZ      AR6,AL                ; |2662| 
        BF        L242,NEQ              ; |2662| 
        ; branchcc occurs ; |2662| 
DW$L$__f_emptywritecache$6$E:
DW$L$__f_emptywritecache$7$B:
        MOVL      XAR0,#524             ; |2664| 
        MOV       *-SP[15],AR1          ; |2664| 
        MOV       AH,*-SP[15]           ; |2664| 
        CMP       AH,*+XAR2[AR0]        ; |2664| 
	.dwpsn	"common.c",2665,0
        BF        L238,LT               ; |2664| 
        ; branchcc occurs ; |2664| 
DW$L$__f_emptywritecache$7$E:
L241:    
        MOV       AL,AR6
        BF        L253,EQ               ; |2667| 
        ; branchcc occurs ; |2667| 
L242:    
        MOVZ      AR4,SP                ; |2669| 
        MOVL      ACC,XAR2
        MOVL      XAR5,#916             ; |2669| 
        ADDL      XAR5,ACC
        SUBB      XAR4,#14              ; |2669| 
        MOVB      ACC,#12
        LCR       #___memcpy_ff         ; |2669| 
        ; call occurs [#___memcpy_ff] ; |2669| 
        BF        L247,UNC              ; |2671| 
        ; branch occurs ; |2671| 
L243:    
DW$L$__f_emptywritecache$10$B:
        MOV       AL,AR1
        BF        L246,EQ               ; |2700| 
        ; branchcc occurs ; |2700| 
DW$L$__f_emptywritecache$10$E:
DW$L$__f_emptywritecache$11$B:
        MOVL      XAR0,#528             ; |2702| 
        MOV       T,*-SP[15]            ; |2702| 
        MOVL      ACC,*+XAR2[AR0]       ; |2702| 
        MOVL      XAR0,#524             ; |2704| 
        MPYB      P,T,#12               ; |2702| 
        ADDL      ACC,P
        MOVL      XAR5,ACC              ; |2702| 
        MOV       AL,*+XAR2[AR0]        ; |2704| 
        ADDB      AL,#-1
        MOVZ      AR1,AL                ; |2704| 
        MOV       AL,*-SP[15]           ; |2704| 
        CMP       AL,AR1                ; |2704| 
        BF        L246,GT               ; |2704| 
        ; branchcc occurs ; |2704| 
DW$L$__f_emptywritecache$11$E:
L244:    
DW$L$__f_emptywritecache$12$B:
	.dwpsn	"common.c",2705,0
        MOVL      XAR0,#528             ; |2706| 
        MOV       T,AR1                 ; |2706| 
        MPYB      P,T,#12               ; |2706| 
        MOVL      ACC,*+XAR2[AR0]       ; |2706| 
        ADDL      ACC,P
        MOVL      XAR4,ACC              ; |2706| 
        MOVL      ACC,*+XAR5[0]         ; |2708| 
        CMPL      ACC,*+XAR4[0]         ; |2708| 
        BF        L245,NEQ              ; |2708| 
        ; branchcc occurs ; |2708| 
DW$L$__f_emptywritecache$12$E:
DW$L$__f_emptywritecache$13$B:
        MOVL      XAR0,#916             ; |2710| 
        MOVL      ACC,*+XAR2[AR0]       ; |2710| 
        MOVL      XAR0,#918             ; |2711| 
        MOVL      *+XAR4[0],ACC         ; |2710| 
        MOVL      ACC,*+XAR2[AR0]       ; |2711| 
        MOVL      XAR0,#920             ; |2712| 
        MOVL      *+XAR4[2],ACC         ; |2711| 
        MOVL      ACC,*+XAR2[AR0]       ; |2712| 
        MOVL      XAR0,#924             ; |2713| 
        MOVL      *+XAR4[4],ACC         ; |2712| 
        MOVL      ACC,*+XAR2[AR0]       ; |2713| 
        MOVB      XAR0,#8               ; |2713| 
        MOVL      *+XAR4[AR0],ACC       ; |2713| 
DW$L$__f_emptywritecache$13$E:
L245:    
DW$L$__f_emptywritecache$14$B:
        MOV       AL,AR1
        ADDB      AL,#-1
        MOVZ      AR1,AL                ; |2704| 
        MOV       AL,*-SP[15]           ; |2704| 
        CMP       AL,AR1                ; |2704| 
	.dwpsn	"common.c",2715,0
        BF        L244,LEQ              ; |2704| 
        ; branchcc occurs ; |2704| 
DW$L$__f_emptywritecache$14$E:
L246:    
DW$L$__f_emptywritecache$15$B:
        INC       *-SP[15]              ; |2671| 
DW$L$__f_emptywritecache$15$E:
L247:    
DW$L$__f_emptywritecache$16$B:
        MOVL      XAR0,#524             ; |2671| 
        MOV       AL,*-SP[15]           ; |2671| 
        CMP       AL,*+XAR2[AR0]        ; |2671| 
        BF        L252,GEQ              ; |2671| 
        ; branchcc occurs ; |2671| 
DW$L$__f_emptywritecache$16$E:
DW$L$__f_emptywritecache$17$B:
        MOV       T,*-SP[15]            ; |2675| 
        MOVL      ACC,XAR2
        MOVL      XAR0,#528             ; |2675| 
        MOVL      XAR4,#916             ; |2675| 
        MPYB      P,T,#12               ; |2675| 
        ADDL      XAR4,ACC
        MOVL      ACC,*+XAR2[AR0]       ; |2675| 
        ADDL      ACC,P
        MOVL      XAR5,ACC              ; |2675| 
        MOVB      ACC,#12
        LCR       #___memcpy_ff         ; |2675| 
        ; call occurs [#___memcpy_ff] ; |2675| 
        MOVB      XAR1,#0
DW$L$__f_emptywritecache$17$E:
L248:    
DW$L$__f_emptywritecache$18$B:
        MOVL      XAR0,#526             ; |2678| 
        MOV       *-SP[1],#1            ; |2678| 
        SETC      SXM
        MOV       AL,*-SP[15]           ; |2678| 
        MOVL      XAR5,*+XAR2[AR0]      ; |2678| 
        MOV       ACC,AL << #9          ; |2678| 
        MOVL      XAR0,#922             ; |2678| 
        MOVL      XAR4,XAR3             ; |2678| 
        MOV       ACC,AL                ; |2678| 
        ADDL      XAR5,ACC
        MOVL      ACC,*+XAR2[AR0]       ; |2678| 
        LCR       #__f_writesector      ; |2678| 
        ; call occurs [#__f_writesector] ; |2678| 
        CMPB      AL,#0                 ; |2678| 
        MOVZ      AR6,AL                ; |2678| 
        BF        L243,EQ               ; |2678| 
        ; branchcc occurs ; |2678| 
DW$L$__f_emptywritecache$18$E:
DW$L$__f_emptywritecache$19$B:
        MOVB      ACC,#2
        CMPL      ACC,*+XAR3[0]         ; |2681| 
        BF        L249,NEQ              ; |2681| 
        ; branchcc occurs ; |2681| 
DW$L$__f_emptywritecache$19$E:
DW$L$__f_emptywritecache$20$B:
        MOVL      XAR5,XAR2             ; |2683| 
        MOVL      XAR4,XAR3             ; |2683| 
        LCR       #__f_dobadblock       ; |2683| 
        ; call occurs [#__f_dobadblock] ; |2683| 
        CMPB      AL,#0                 ; |2683| 
        MOVZ      AR6,AL                ; |2683| 
        BF        L249,NEQ              ; |2683| 
        ; branchcc occurs ; |2683| 
DW$L$__f_emptywritecache$20$E:
DW$L$__f_emptywritecache$21$B:
        MOVL      XAR0,#918             ; |2686| 
        MOVL      ACC,*+XAR2[AR0]       ; |2686| 
        BF        L250,EQ               ; |2686| 
        ; branchcc occurs ; |2686| 
DW$L$__f_emptywritecache$21$E:
DW$L$__f_emptywritecache$22$B:
        MOVL      XAR0,#916             ; |2692| 
        MOVL      XAR6,*+XAR2[AR0]      ; |2692| 
        MOVL      XAR4,XAR3             ; |2692| 
        MOVL      *-SP[2],XAR6          ; |2692| 
        LCR       #__f_setclustervalue  ; |2692| 
        ; call occurs [#__f_setclustervalue] ; |2692| 
        CMPB      AL,#0                 ; |2692| 
        MOVZ      AR6,AL                ; |2692| 
        BF        L251,EQ               ; |2692| 
        ; branchcc occurs ; |2692| 
DW$L$__f_emptywritecache$22$E:
L249:    
        MOV       AL,AR6
        BF        L254,UNC              ; |2693| 
        ; branch occurs ; |2693| 
L250:    
DW$L$__f_emptywritecache$24$B:
        MOVL      XAR0,#916             ; |2688| 
        MOVL      ACC,*+XAR2[AR0]       ; |2688| 
        MOVL      XAR0,#914             ; |2688| 
        MOVL      *+XAR2[AR0],ACC       ; |2688| 
DW$L$__f_emptywritecache$24$E:
L251:    
DW$L$__f_emptywritecache$25$B:
        MOVB      XAR1,#1               ; |2696| 
        BF        L248,UNC              ; |2697| 
        ; branch occurs ; |2697| 
DW$L$__f_emptywritecache$25$E:
L252:    
        MOVZ      AR5,SP                ; |2719| 
        MOVL      ACC,XAR2
        MOVL      XAR4,#916             ; |2719| 
        ADDL      XAR4,ACC
        SUBB      XAR5,#14              ; |2719| 
        MOVB      ACC,#12
        LCR       #___memcpy_ff         ; |2719| 
        ; call occurs [#___memcpy_ff] ; |2719| 
L253:    
        MOVL      XAR0,#524             ; |2722| 
        MOV       *+XAR2[AR0],#0        ; |2722| 
        MOVB      AL,#0
L254:    
        SUBB      SP,#16                ; |2724| 
        MOVL      XAR3,*--SP            ; |2724| 
        MOVL      XAR2,*--SP            ; |2724| 
        MOVL      XAR1,*--SP            ; |2724| 
	.dwpsn	"common.c",2725,1
        LRETR
        ; return occurs

DW$325	.dwtag  DW_TAG_loop
	.dwattr DW$325, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L247:1:1471518967")
	.dwattr DW$325, DW_AT_begin_file("common.c")
	.dwattr DW$325, DW_AT_begin_line(0xa6f)
	.dwattr DW$325, DW_AT_end_line(0xa90)
DW$326	.dwtag  DW_TAG_loop_range
	.dwattr DW$326, DW_AT_low_pc(DW$L$__f_emptywritecache$16$B)
	.dwattr DW$326, DW_AT_high_pc(DW$L$__f_emptywritecache$16$E)
DW$327	.dwtag  DW_TAG_loop_range
	.dwattr DW$327, DW_AT_low_pc(DW$L$__f_emptywritecache$17$B)
	.dwattr DW$327, DW_AT_high_pc(DW$L$__f_emptywritecache$17$E)
DW$328	.dwtag  DW_TAG_loop_range
	.dwattr DW$328, DW_AT_low_pc(DW$L$__f_emptywritecache$10$B)
	.dwattr DW$328, DW_AT_high_pc(DW$L$__f_emptywritecache$10$E)
DW$329	.dwtag  DW_TAG_loop_range
	.dwattr DW$329, DW_AT_low_pc(DW$L$__f_emptywritecache$11$B)
	.dwattr DW$329, DW_AT_high_pc(DW$L$__f_emptywritecache$11$E)
DW$330	.dwtag  DW_TAG_loop_range
	.dwattr DW$330, DW_AT_low_pc(DW$L$__f_emptywritecache$15$B)
	.dwattr DW$330, DW_AT_high_pc(DW$L$__f_emptywritecache$15$E)

DW$331	.dwtag  DW_TAG_loop
	.dwattr DW$331, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L248:2:1471518967")
	.dwattr DW$331, DW_AT_begin_file("common.c")
	.dwattr DW$331, DW_AT_begin_line(0xa73)
	.dwattr DW$331, DW_AT_end_line(0xa89)
DW$332	.dwtag  DW_TAG_loop_range
	.dwattr DW$332, DW_AT_low_pc(DW$L$__f_emptywritecache$18$B)
	.dwattr DW$332, DW_AT_high_pc(DW$L$__f_emptywritecache$18$E)
DW$333	.dwtag  DW_TAG_loop_range
	.dwattr DW$333, DW_AT_low_pc(DW$L$__f_emptywritecache$19$B)
	.dwattr DW$333, DW_AT_high_pc(DW$L$__f_emptywritecache$19$E)
DW$334	.dwtag  DW_TAG_loop_range
	.dwattr DW$334, DW_AT_low_pc(DW$L$__f_emptywritecache$20$B)
	.dwattr DW$334, DW_AT_high_pc(DW$L$__f_emptywritecache$20$E)
DW$335	.dwtag  DW_TAG_loop_range
	.dwattr DW$335, DW_AT_low_pc(DW$L$__f_emptywritecache$21$B)
	.dwattr DW$335, DW_AT_high_pc(DW$L$__f_emptywritecache$21$E)
DW$336	.dwtag  DW_TAG_loop_range
	.dwattr DW$336, DW_AT_low_pc(DW$L$__f_emptywritecache$22$B)
	.dwattr DW$336, DW_AT_high_pc(DW$L$__f_emptywritecache$22$E)
DW$337	.dwtag  DW_TAG_loop_range
	.dwattr DW$337, DW_AT_low_pc(DW$L$__f_emptywritecache$24$B)
	.dwattr DW$337, DW_AT_high_pc(DW$L$__f_emptywritecache$24$E)
DW$338	.dwtag  DW_TAG_loop_range
	.dwattr DW$338, DW_AT_low_pc(DW$L$__f_emptywritecache$25$B)
	.dwattr DW$338, DW_AT_high_pc(DW$L$__f_emptywritecache$25$E)
	.dwendtag DW$331


DW$339	.dwtag  DW_TAG_loop
	.dwattr DW$339, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L244:2:1471518967")
	.dwattr DW$339, DW_AT_begin_file("common.c")
	.dwattr DW$339, DW_AT_begin_line(0xa90)
	.dwattr DW$339, DW_AT_end_line(0xa9b)
DW$340	.dwtag  DW_TAG_loop_range
	.dwattr DW$340, DW_AT_low_pc(DW$L$__f_emptywritecache$12$B)
	.dwattr DW$340, DW_AT_high_pc(DW$L$__f_emptywritecache$12$E)
DW$341	.dwtag  DW_TAG_loop_range
	.dwattr DW$341, DW_AT_low_pc(DW$L$__f_emptywritecache$13$B)
	.dwattr DW$341, DW_AT_high_pc(DW$L$__f_emptywritecache$13$E)
DW$342	.dwtag  DW_TAG_loop_range
	.dwattr DW$342, DW_AT_low_pc(DW$L$__f_emptywritecache$14$B)
	.dwattr DW$342, DW_AT_high_pc(DW$L$__f_emptywritecache$14$E)
	.dwendtag DW$339

	.dwendtag DW$325


DW$343	.dwtag  DW_TAG_loop
	.dwattr DW$343, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L238:1:1471518967")
	.dwattr DW$343, DW_AT_begin_file("common.c")
	.dwattr DW$343, DW_AT_begin_line(0xa63)
	.dwattr DW$343, DW_AT_end_line(0xa69)
DW$344	.dwtag  DW_TAG_loop_range
	.dwattr DW$344, DW_AT_low_pc(DW$L$__f_emptywritecache$2$B)
	.dwattr DW$344, DW_AT_high_pc(DW$L$__f_emptywritecache$2$E)
DW$345	.dwtag  DW_TAG_loop_range
	.dwattr DW$345, DW_AT_low_pc(DW$L$__f_emptywritecache$6$B)
	.dwattr DW$345, DW_AT_high_pc(DW$L$__f_emptywritecache$6$E)
DW$346	.dwtag  DW_TAG_loop_range
	.dwattr DW$346, DW_AT_low_pc(DW$L$__f_emptywritecache$7$B)
	.dwattr DW$346, DW_AT_high_pc(DW$L$__f_emptywritecache$7$E)

DW$347	.dwtag  DW_TAG_loop
	.dwattr DW$347, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L239:2:1471518967")
	.dwattr DW$347, DW_AT_begin_file("common.c")
	.dwattr DW$347, DW_AT_begin_line(0xa65)
	.dwattr DW$347, DW_AT_end_line(0xa65)
DW$348	.dwtag  DW_TAG_loop_range
	.dwattr DW$348, DW_AT_low_pc(DW$L$__f_emptywritecache$3$B)
	.dwattr DW$348, DW_AT_high_pc(DW$L$__f_emptywritecache$3$E)
DW$349	.dwtag  DW_TAG_loop_range
	.dwattr DW$349, DW_AT_low_pc(DW$L$__f_emptywritecache$4$B)
	.dwattr DW$349, DW_AT_high_pc(DW$L$__f_emptywritecache$4$E)
DW$350	.dwtag  DW_TAG_loop_range
	.dwattr DW$350, DW_AT_low_pc(DW$L$__f_emptywritecache$5$B)
	.dwattr DW$350, DW_AT_high_pc(DW$L$__f_emptywritecache$5$E)
	.dwendtag DW$347

	.dwendtag DW$343

	.dwattr DW$322, DW_AT_end_file("common.c")
	.dwattr DW$322, DW_AT_end_line(0xaa5)
	.dwattr DW$322, DW_AT_end_column(0x01)
	.dwendtag DW$322

	.sect	".text"
	.global	__f_emptywritebuffer

DW$351	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_emptywritebuffer"), DW_AT_symbol_name("__f_emptywritebuffer")
	.dwattr DW$351, DW_AT_low_pc(__f_emptywritebuffer)
	.dwattr DW$351, DW_AT_high_pc(0x00)
	.dwattr DW$351, DW_AT_begin_file("common.c")
	.dwattr DW$351, DW_AT_begin_line(0xab8)
	.dwattr DW$351, DW_AT_begin_column(0x05)
	.dwattr DW$351, DW_AT_frame_base[DW_OP_breg20 -14]
	.dwattr DW$351, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",2744,62

;***************************************************************
;* FNAME: __f_emptywritebuffer          FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  4 Auto,  6 SOE     *
;***************************************************************

__f_emptywritebuffer:
;* AR4   assigned to _vi
DW$352	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$352, DW_AT_type(*DW$T$92)
	.dwattr DW$352, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _f
DW$353	.dwtag  DW_TAG_formal_parameter, DW_AT_name("f"), DW_AT_symbol_name("_f")
	.dwattr DW$353, DW_AT_type(*DW$T$108)
	.dwattr DW$353, DW_AT_location[DW_OP_reg14]
DW$354	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$354, DW_AT_type(*DW$T$53)
	.dwattr DW$354, DW_AT_location[DW_OP_breg20 -16]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      XAR1,XAR5             ; |2744| 
        MOVL      *SP++,XAR3
        ADDB      SP,#6
        MOVL      XAR3,XAR4             ; |2744| 
        MOVL      ACC,*+XAR1[2]         ; |2747| 
        MOVL      XAR2,*-SP[16]         ; |2744| 
        BF        L266,EQ               ; |2747| 
        ; branchcc occurs ; |2747| 
        MOVL      XAR0,#924             ; |2749| 
        MOVL      ACC,*+XAR1[AR0]       ; |2749| 
        MOVL      XAR0,#922             ; |2749| 
        CMPL      ACC,*+XAR1[AR0]       ; |2749| 
        BF        L258,HI               ; |2749| 
        ; branchcc occurs ; |2749| 
        MOVL      XAR0,#914             ; |2750| 
        MOVL      ACC,*+XAR1[AR0]       ; |2750| 
        BF        L255,NEQ              ; |2750| 
        ; branchcc occurs ; |2750| 
        MOVL      ACC,XAR1
        MOVL      XAR4,XAR3             ; |2751| 
        MOVL      XAR5,#914             ; |2751| 
        ADDL      XAR5,ACC
        LCR       #__f_alloccluster     ; |2751| 
        ; call occurs [#__f_alloccluster] ; |2751| 
        MOVZ      AR6,AL                ; |2751| 
        CMPB      AL,#0                 ; |2751| 
        BF        L262,NEQ              ; |2751| 
        ; branchcc occurs ; |2751| 
        MOVL      XAR0,#914             ; |2754| 
        MOVL      ACC,XAR1
        MOVL      XAR6,*+XAR1[AR0]      ; |2754| 
        MOVL      XAR5,#916             ; |2754| 
        MOVL      XAR4,XAR3             ; |2754| 
        ADDL      XAR5,ACC
        MOVL      ACC,XAR6              ; |2754| 
        LCR       #__f_clustertopos     ; |2754| 
        ; call occurs [#__f_clustertopos] ; |2754| 
        MOV       PH,#4095
        MOVL      XAR0,#914             ; |2756| 
        MOV       PL,#65528
        MOVL      XAR4,XAR3             ; |2756| 
        MOVL      *-SP[2],P             ; |2756| 
        MOVL      ACC,*+XAR1[AR0]       ; |2756| 
        LCR       #__f_setclustervalue  ; |2756| 
        ; call occurs [#__f_setclustervalue] ; |2756| 
        CMPB      AL,#0                 ; |2756| 
        MOVZ      AR6,AL                ; |2756| 
        BF        L258,EQ               ; |2756| 
        ; branchcc occurs ; |2756| 
        BF        L262,UNC              ; |2756| 
        ; branch occurs ; |2756| 
L255:    
        MOVL      XAR0,#916             ; |2761| 
        MOVZ      AR5,SP                ; |2761| 
        MOVL      XAR4,XAR3             ; |2761| 
        MOVL      ACC,*+XAR1[AR0]       ; |2761| 
        SUBB      XAR5,#4               ; |2761| 
        LCR       #__f_getclustervalue  ; |2761| 
        ; call occurs [#__f_getclustervalue] ; |2761| 
        CMPB      AL,#0                 ; |2761| 
        MOVZ      AR6,AL                ; |2761| 
        BF        L262,NEQ              ; |2761| 
        ; branchcc occurs ; |2761| 
        MOV       AL,#65520
        MOV       AH,#4095
        CMPL      ACC,*-SP[4]           ; |2764| 
        BF        L256,HI               ; |2764| 
        ; branchcc occurs ; |2764| 
        MOVZ      AR5,SP                ; |2770| 
        MOVL      XAR4,XAR3             ; |2770| 
        SUBB      XAR5,#6               ; |2770| 
        LCR       #__f_alloccluster     ; |2770| 
        ; call occurs [#__f_alloccluster] ; |2770| 
        CMPB      AL,#0                 ; |2770| 
        MOVZ      AR6,AL                ; |2770| 
        BF        L262,NEQ              ; |2770| 
        ; branchcc occurs ; |2770| 
        MOV       PH,#4095
        MOV       PL,#65528
        MOVL      XAR4,XAR3             ; |2773| 
        MOVL      *-SP[2],P             ; |2773| 
        MOVL      ACC,*-SP[6]           ; |2773| 
        LCR       #__f_setclustervalue  ; |2773| 
        ; call occurs [#__f_setclustervalue] ; |2773| 
        CMPB      AL,#0                 ; |2773| 
        MOVZ      AR6,AL                ; |2773| 
        BF        L262,NEQ              ; |2773| 
        ; branchcc occurs ; |2773| 
        MOVL      XAR0,#916             ; |2776| 
        MOVL      ACC,*-SP[6]           ; |2776| 
        MOVL      XAR4,XAR3             ; |2776| 
        MOVL      *-SP[2],ACC           ; |2776| 
        MOVL      ACC,*+XAR1[AR0]       ; |2776| 
        LCR       #__f_setclustervalue  ; |2776| 
        ; call occurs [#__f_setclustervalue] ; |2776| 
        MOVZ      AR6,AL                ; |2776| 
        CMPB      AL,#0                 ; |2776| 
        BF        L262,NEQ              ; |2776| 
        ; branchcc occurs ; |2776| 
        MOVL      ACC,XAR1
        MOVL      XAR5,#916             ; |2779| 
        ADDL      XAR5,ACC
        MOVL      ACC,*-SP[6]           ; |2779| 
        BF        L257,UNC              ; |2779| 
        ; branch occurs ; |2779| 
L256:    
        MOVL      ACC,XAR1
        MOVL      XAR5,#916             ; |2765| 
        ADDL      XAR5,ACC
        MOVL      ACC,*-SP[4]           ; |2765| 
L257:    
        MOVL      XAR4,XAR3             ; |2765| 
        LCR       #__f_clustertopos     ; |2765| 
        ; call occurs [#__f_clustertopos] ; |2765| 
L258:    
        MOVL      ACC,XAR2
        BF        L261,NEQ              ; |2784| 
        ; branchcc occurs ; |2784| 
L259:    
DW$L$__f_emptywritebuffer$16$B:
        MOVB      ACC,#12
        MOVL      XAR0,#922             ; |2799| 
        MOVL      XAR4,XAR3             ; |2799| 
        ADDL      ACC,XAR1
        MOVL      XAR5,ACC              ; |2799| 
        MOV       *-SP[1],#1            ; |2799| 
        MOVL      ACC,*+XAR1[AR0]       ; |2799| 
        LCR       #__f_writesector      ; |2799| 
        ; call occurs [#__f_writesector] ; |2799| 
        CMPB      AL,#0                 ; |2799| 
        MOVZ      AR6,AL                ; |2799| 
        BF        L265,EQ               ; |2799| 
        ; branchcc occurs ; |2799| 
DW$L$__f_emptywritebuffer$16$E:
DW$L$__f_emptywritebuffer$17$B:
        MOVB      ACC,#2
        CMPL      ACC,*+XAR3[0]         ; |2801| 
        BF        L262,NEQ              ; |2801| 
        ; branchcc occurs ; |2801| 
DW$L$__f_emptywritebuffer$17$E:
DW$L$__f_emptywritebuffer$18$B:
        MOVL      XAR5,XAR1             ; |2803| 
        MOVL      XAR4,XAR3             ; |2803| 
        LCR       #__f_dobadblock       ; |2803| 
        ; call occurs [#__f_dobadblock] ; |2803| 
        CMPB      AL,#0                 ; |2803| 
        MOVZ      AR6,AL                ; |2803| 
        BF        L262,NEQ              ; |2803| 
        ; branchcc occurs ; |2803| 
DW$L$__f_emptywritebuffer$18$E:
DW$L$__f_emptywritebuffer$19$B:
        MOVL      XAR0,#918             ; |2806| 
        MOVL      ACC,*+XAR1[AR0]       ; |2806| 
        BF        L260,EQ               ; |2806| 
        ; branchcc occurs ; |2806| 
DW$L$__f_emptywritebuffer$19$E:
DW$L$__f_emptywritebuffer$20$B:
        MOVL      XAR0,#916             ; |2810| 
        MOVL      XAR6,*+XAR1[AR0]      ; |2810| 
        MOVL      XAR4,XAR3             ; |2810| 
        MOVL      *-SP[2],XAR6          ; |2810| 
        LCR       #__f_setclustervalue  ; |2810| 
        ; call occurs [#__f_setclustervalue] ; |2810| 
        CMPB      AL,#0                 ; |2810| 
        MOVZ      AR6,AL                ; |2810| 
        BF        L259,EQ               ; |2810| 
        ; branchcc occurs ; |2810| 
DW$L$__f_emptywritebuffer$20$E:
        BF        L262,UNC              ; |2810| 
        ; branch occurs ; |2810| 
L260:    
DW$L$__f_emptywritebuffer$22$B:
        MOVL      XAR0,#916             ; |2807| 
        MOVL      ACC,*+XAR1[AR0]       ; |2807| 
        MOVL      XAR0,#914             ; |2807| 
        MOVL      *+XAR1[AR0],ACC       ; |2807| 
        BF        L259,UNC              ; |2808| 
        ; branch occurs ; |2808| 
DW$L$__f_emptywritebuffer$22$E:
L261:    
        MOVL      XAR0,#524             ; |2786| 
        MOV       AL,*+XAR1[AR0]        ; |2786| 
        CMPB      AL,#32                ; |2786| 
        BF        L263,NEQ              ; |2786| 
        ; branchcc occurs ; |2786| 
        MOVL      XAR5,XAR1             ; |2788| 
        MOVL      XAR4,XAR3             ; |2788| 
        LCR       #__f_emptywritecache  ; |2788| 
        ; call occurs [#__f_emptywritecache] ; |2788| 
        MOVZ      AR6,AL                ; |2788| 
        CMPB      AL,#0                 ; |2788| 
        BF        L263,EQ               ; |2788| 
        ; branchcc occurs ; |2788| 
L262:    
        MOV       AL,AR6
        BF        L267,UNC              ; |2789| 
        ; branch occurs ; |2789| 
L263:    
        MOVL      XAR0,#524             ; |2792| 
        MOV       AL,*+XAR1[AR0]        ; |2792| 
        BF        L264,NEQ              ; |2792| 
        ; branchcc occurs ; |2792| 
        MOVL      XAR0,#526             ; |2792| 
        MOVL      *+XAR1[AR0],XAR2      ; |2792| 
L264:    
        MOVL      XAR0,#524             ; |2794| 
        MOV       T,*+XAR1[AR0]         ; |2794| 
        MOVL      XAR0,#528             ; |2794| 
        MOVL      XAR5,#916             ; |2794| 
        MPYB      P,T,#12               ; |2794| 
        MOVL      ACC,*+XAR1[AR0]       ; |2794| 
        ADDL      ACC,P
        MOVL      XAR4,ACC              ; |2794| 
        MOVL      ACC,XAR1
        ADDL      XAR5,ACC
        MOVB      ACC,#12
        LCR       #___memcpy_ff         ; |2794| 
        ; call occurs [#___memcpy_ff] ; |2794| 
        MOVL      ACC,XAR1
        MOVL      XAR4,#524             ; |2794| 
        ADDL      XAR4,ACC
        INC       *+XAR4[0]             ; |2794| 
L265:    
        MOVB      ACC,#0
        MOVL      *+XAR1[2],ACC         ; |2818| 
L266:    
        MOVB      AL,#0
L267:    
        SUBB      SP,#6                 ; |2820| 
        MOVL      XAR3,*--SP            ; |2820| 
        MOVL      XAR2,*--SP            ; |2820| 
        MOVL      XAR1,*--SP            ; |2820| 
	.dwpsn	"common.c",2821,1
        LRETR
        ; return occurs

DW$355	.dwtag  DW_TAG_loop
	.dwattr DW$355, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L259:1:1471518967")
	.dwattr DW$355, DW_AT_begin_file("common.c")
	.dwattr DW$355, DW_AT_begin_line(0xae0)
	.dwattr DW$355, DW_AT_end_line(0xafa)
DW$356	.dwtag  DW_TAG_loop_range
	.dwattr DW$356, DW_AT_low_pc(DW$L$__f_emptywritebuffer$16$B)
	.dwattr DW$356, DW_AT_high_pc(DW$L$__f_emptywritebuffer$16$E)
DW$357	.dwtag  DW_TAG_loop_range
	.dwattr DW$357, DW_AT_low_pc(DW$L$__f_emptywritebuffer$17$B)
	.dwattr DW$357, DW_AT_high_pc(DW$L$__f_emptywritebuffer$17$E)
DW$358	.dwtag  DW_TAG_loop_range
	.dwattr DW$358, DW_AT_low_pc(DW$L$__f_emptywritebuffer$18$B)
	.dwattr DW$358, DW_AT_high_pc(DW$L$__f_emptywritebuffer$18$E)
DW$359	.dwtag  DW_TAG_loop_range
	.dwattr DW$359, DW_AT_low_pc(DW$L$__f_emptywritebuffer$19$B)
	.dwattr DW$359, DW_AT_high_pc(DW$L$__f_emptywritebuffer$19$E)
DW$360	.dwtag  DW_TAG_loop_range
	.dwattr DW$360, DW_AT_low_pc(DW$L$__f_emptywritebuffer$22$B)
	.dwattr DW$360, DW_AT_high_pc(DW$L$__f_emptywritebuffer$22$E)
DW$361	.dwtag  DW_TAG_loop_range
	.dwattr DW$361, DW_AT_low_pc(DW$L$__f_emptywritebuffer$20$B)
	.dwattr DW$361, DW_AT_high_pc(DW$L$__f_emptywritebuffer$20$E)
	.dwendtag DW$355

	.dwattr DW$351, DW_AT_end_file("common.c")
	.dwattr DW$351, DW_AT_end_line(0xb05)
	.dwattr DW$351, DW_AT_end_column(0x01)
	.dwendtag DW$351

	.sect	".text"
	.global	__f_fseek

DW$362	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_fseek"), DW_AT_symbol_name("__f_fseek")
	.dwattr DW$362, DW_AT_low_pc(__f_fseek)
	.dwattr DW$362, DW_AT_high_pc(0x00)
	.dwattr DW$362, DW_AT_begin_file("common.c")
	.dwattr DW$362, DW_AT_begin_line(0xb1a)
	.dwattr DW$362, DW_AT_begin_column(0x05)
	.dwattr DW$362, DW_AT_frame_base[DW_OP_breg20 -20]
	.dwattr DW$362, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",2842,65

;***************************************************************
;* FNAME: __f_fseek                     FR SIZE:  18           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  8 Auto,  6 SOE     *
;***************************************************************

__f_fseek:
;* AR4   assigned to _vi
DW$363	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$363, DW_AT_type(*DW$T$92)
	.dwattr DW$363, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _fm
DW$364	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$364, DW_AT_type(*DW$T$106)
	.dwattr DW$364, DW_AT_location[DW_OP_reg14]
DW$365	.dwtag  DW_TAG_formal_parameter, DW_AT_name("f"), DW_AT_symbol_name("_f")
	.dwattr DW$365, DW_AT_type(*DW$T$108)
	.dwattr DW$365, DW_AT_location[DW_OP_breg20 -22]
;* AL    assigned to _offset
DW$366	.dwtag  DW_TAG_formal_parameter, DW_AT_name("offset"), DW_AT_symbol_name("_offset")
	.dwattr DW$366, DW_AT_type(*DW$T$12)
	.dwattr DW$366, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#12
        MOVL      XAR3,ACC              ; |2842| 
        MOVB      ACC,#0
        MOVL      XAR1,XAR4             ; |2842| 
        MOVL      *-SP[10],ACC          ; |2846| 
        MOVL      *-SP[8],XAR5          ; |2842| 
        MOVL      ACC,XAR3              ; |2846| 
        MOVL      XAR2,*-SP[22]         ; |2842| 
        BF        L270,LT               ; |2847| 
        ; branchcc occurs ; |2847| 
        MOVL      ACC,XAR3              ; |2848| 
        MOVB      XAR0,#10              ; |2848| 
        CMPL      ACC,*+XAR2[AR0]       ; |2848| 
        BF        L269,LOS              ; |2848| 
        ; branchcc occurs ; |2848| 
        MOV       AL,*+XAR2[4]          ; |2849| 
        CMPB      AL,#4                 ; |2849| 
        BF        L268,EQ               ; |2849| 
        ; branchcc occurs ; |2849| 
        CMPB      AL,#2                 ; |2849| 
        BF        L268,EQ               ; |2849| 
        ; branchcc occurs ; |2849| 
        CMPB      AL,#5                 ; |2849| 
        BF        L268,EQ               ; |2849| 
        ; branchcc occurs ; |2849| 
        CMPB      AL,#3                 ; |2849| 
        BF        L268,EQ               ; |2849| 
        ; branchcc occurs ; |2849| 
        CMPB      AL,#6                 ; |2849| 
        BF        L268,EQ               ; |2849| 
        ; branchcc occurs ; |2849| 
        MOVB      AL,#8                 ; |2849| 
        BF        L290,UNC              ; |2849| 
        ; branch occurs ; |2849| 
L268:    
        MOVL      XAR6,*+XAR2[AR0]      ; |2850| 
        MOVL      ACC,XAR3              ; |2850| 
        SUBL      ACC,XAR6
        MOVL      *-SP[10],ACC          ; |2850| 
        MOVL      XAR3,XAR6             ; |2851| 
L269:    
        MOVL      ACC,XAR3
        CMPL      ACC,*+XAR2[6]         ; |2854| 
        BF        L271,GEQ              ; |2854| 
        ; branchcc occurs ; |2854| 
        BF        L272,UNC              ; |2854| 
        ; branch occurs ; |2854| 
L270:    
        MOVL      ACC,*+XAR2[6]         ; |2847| 
        MOVB      XAR3,#0
        BF        L272,GT               ; |2847| 
        ; branchcc occurs ; |2847| 
L271:    
        MOVL      XAR6,*+XAR2[6]        ; |2854| 
        MOVL      ACC,XAR6              ; |2854| 
        ADD       ACC,#1 << 9           ; |2854| 
        CMPL      ACC,XAR3              ; |2854| 
        BF        L272,LEQ              ; |2854| 
        ; branchcc occurs ; |2854| 
        MOVL      ACC,*-SP[10]
        BF        L272,NEQ              ; |2854| 
        ; branchcc occurs ; |2854| 
        MOVL      ACC,XAR3              ; |2855| 
        MOVB      XAR0,#8               ; |2855| 
        SUBL      ACC,XAR6
        MOVL      *+XAR2[AR0],ACC       ; |2855| 
        BF        L289,UNC              ; |2856| 
        ; branch occurs ; |2856| 
L272:    
        MOVL      ACC,*+XAR2[2]         ; |2859| 
        BF        L273,EQ               ; |2859| 
        ; branchcc occurs ; |2859| 
        MOVL      XAR5,XAR2             ; |2861| 
        MOVL      XAR4,XAR1             ; |2861| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |2861| 
        LCR       #__f_emptywritebuffer ; |2861| 
        ; call occurs [#__f_emptywritebuffer] ; |2861| 
        CMPB      AL,#0                 ; |2861| 
        BF        L287,NEQ              ; |2861| 
        ; branchcc occurs ; |2861| 
        MOVL      XAR4,XAR1             ; |2867| 
        LCR       #__f_writefatsector   ; |2867| 
        ; call occurs [#__f_writefatsector] ; |2867| 
        CMPB      AL,#0                 ; |2867| 
        BF        L287,NEQ              ; |2867| 
        ; branchcc occurs ; |2867| 
        MOVL      XAR4,XAR2             ; |2874| 
        LCR       #__fn_updateseekpos   ; |2874| 
        ; call occurs [#__fn_updateseekpos] ; |2874| 
L273:    
        MOVB      ACC,#0
        MOVB      XAR0,#8               ; |2879| 
        MOVL      *+XAR2[6],ACC         ; |2878| 
        MOVL      *+XAR2[AR0],ACC       ; |2879| 
        MOVL      XAR0,#918             ; |2880| 
        MOVL      *+XAR2[AR0],ACC       ; |2880| 
        MOVL      XAR0,#914             ; |2881| 
        MOVL      ACC,*+XAR2[AR0]       ; |2881| 
        MOVL      XAR0,#916             ; |2881| 
        MOVL      *+XAR2[AR0],ACC       ; |2881| 
        MOVB      XAR0,#14              ; |2883| 
        MOVU      ACC,*+XAR1[AR0]
        MOVL      *-SP[12],ACC          ; |2883| 
        MOVL      XAR0,#972             ; |2890| 
        LSL       ACC,9                 ; |2884| 
        MOVL      *-SP[12],ACC          ; |2884| 
        MOVL      ACC,XAR3              ; |2890| 
        MOV       T,*+XAR2[AR0]         ; |2890| 
        ASRL      ACC,T                 ; |2890| 
        SUBB      ACC,#1                ; |2890| 
        MOVL      XAR6,ACC              ; |2890| 
        MOVB      ACC,#8
        CMPL      ACC,XAR6              ; |2890| 
        BF        L274,GT               ; |2890| 
        ; branchcc occurs ; |2890| 
        MOVB      XAR6,#7
L274:    
        MOVL      ACC,XAR6
        BF        L277,LT               ; |2894| 
        ; branchcc occurs ; |2894| 
L275:    
DW$L$__f_fseek$23$B:
	.dwpsn	"common.c",2894,0
        MOVL      XAR4,XAR2             ; |2895| 
        MOVL      ACC,XAR6
        MOVL      XAR0,#940             ; |2895| 
        LSL       ACC,1                 ; |2895| 
        ADDL      XAR4,ACC
        MOVB      ACC,#0
        SUBB      ACC,#1
        CMPL      ACC,*+XAR4[AR0]       ; |2895| 
        BF        L276,NEQ              ; |2895| 
        ; branchcc occurs ; |2895| 
DW$L$__f_fseek$23$E:
DW$L$__f_fseek$24$B:
        SUBB      XAR6,#1               ; |2894| 
        MOVL      ACC,XAR6              ; |2894| 
	.dwpsn	"common.c",2902,0
        BF        L275,GEQ              ; |2894| 
        ; branchcc occurs ; |2894| 
DW$L$__f_fseek$24$E:
        BF        L277,UNC              ; |2894| 
        ; branch occurs ; |2894| 
L276:    
        MOVL      XAR4,XAR2             ; |2896| 
        MOVL      ACC,XAR6
        LSL       ACC,1                 ; |2896| 
        ADDL      XAR4,ACC
        MOVL      XAR7,*+XAR4[AR0]      ; |2896| 
        MOVL      XAR0,#916             ; |2896| 
        MOVL      XAR4,XAR2             ; |2897| 
        MOVL      *+XAR2[AR0],XAR7      ; |2896| 
        MOVL      XAR0,#956             ; |2897| 
        ADDL      XAR4,ACC
        MOVL      ACC,*+XAR4[AR0]       ; |2897| 
        MOVL      XAR0,#918             ; |2897| 
        MOVL      *+XAR2[AR0],ACC       ; |2897| 
        MOVL      XAR0,#972             ; |2898| 
        MOVL      ACC,XAR6              ; |2898| 
        ADDB      ACC,#1                ; |2898| 
        MOV       T,*+XAR2[AR0]         ; |2898| 
        LSLL      ACC,T                 ; |2898| 
        SUBL      XAR3,ACC
        ADDL      *+XAR2[6],ACC         ; |2899| 
L277:    
        MOVL      ACC,*-SP[12]
        CMPL      ACC,XAR3              ; |2907| 
        BF        L279,GT               ; |2907| 
        ; branchcc occurs ; |2907| 
L278:    
DW$L$__f_fseek$28$B:
	.dwpsn	"common.c",2907,0
        MOVL      XAR0,#916             ; |2908| 
        MOVZ      AR5,SP                ; |2908| 
        MOVL      XAR4,XAR1             ; |2908| 
        MOVL      ACC,*+XAR2[AR0]       ; |2908| 
        SUBB      XAR5,#6               ; |2908| 
        LCR       #__f_getclustervalue  ; |2908| 
        ; call occurs [#__f_getclustervalue] ; |2908| 
        CMPB      AL,#0                 ; |2908| 
        BF        L287,NEQ              ; |2908| 
        ; branchcc occurs ; |2908| 
DW$L$__f_fseek$28$E:
DW$L$__f_fseek$29$B:
        MOVL      ACC,*-SP[12]
        MOVL      P,XAR3
        SUBL      P,ACC
        MOVL      ACC,*-SP[12]          ; |2914| 
        ADDL      *+XAR2[6],ACC         ; |2915| 
        MOV       AL,#65520
        MOV       AH,#4095
        MOVL      XAR3,P                ; |2914| 
        CMPL      ACC,*-SP[6]           ; |2917| 
        BF        L282,LOS              ; |2917| 
        ; branchcc occurs ; |2917| 
DW$L$__f_fseek$29$E:
DW$L$__f_fseek$30$B:
        MOVL      XAR0,#916             ; |2929| 
        MOVL      ACC,*+XAR2[AR0]       ; |2929| 
        MOVL      XAR0,#918             ; |2929| 
        MOVL      *+XAR2[AR0],ACC       ; |2929| 
        MOVL      XAR0,#916             ; |2930| 
        MOVL      XAR4,XAR2             ; |2933| 
        MOVL      ACC,*-SP[6]           ; |2930| 
        MOVL      *+XAR2[AR0],ACC       ; |2930| 
        LCR       #__fn_updateseekpos   ; |2933| 
        ; call occurs [#__fn_updateseekpos] ; |2933| 
        MOVL      ACC,*-SP[12]          ; |2933| 
        CMPL      ACC,XAR3              ; |2907| 
	.dwpsn	"common.c",2935,0
        BF        L278,LEQ              ; |2907| 
        ; branchcc occurs ; |2907| 
DW$L$__f_fseek$30$E:
L279:    
        MOVL      ACC,XAR2
        MOVL      XAR0,#916             ; |2937| 
        MOVL      XAR5,#916             ; |2937| 
        MOVL      XAR4,XAR1             ; |2937| 
        ADDL      XAR5,ACC
        MOVL      ACC,*+XAR2[AR0]       ; |2937| 
        LCR       #__f_clustertopos     ; |2937| 
        ; call occurs [#__f_clustertopos] ; |2937| 
        MOV       ACC,#512              ; |2939| 
        CMPL      ACC,XAR3              ; |2939| 
        BF        L281,GT               ; |2939| 
        ; branchcc occurs ; |2939| 
L280:    
DW$L$__f_fseek$32$B:
	.dwpsn	"common.c",2939,0
        MOVL      ACC,XAR2
        MOVL      XAR4,#922             ; |2940| 
        ADDL      XAR4,ACC
        MOVB      ACC,#1
        ADDL      *+XAR4[0],ACC         ; |2940| 
        MOVL      XAR4,#512             ; |2943| 
        MOVL      ACC,XAR4              ; |2943| 
        ADDL      *+XAR2[6],ACC         ; |2943| 
        MOVL      ACC,XAR3              ; |2943| 
        SUB       ACC,#1 << 9           ; |2939| 
        MOVL      XAR3,ACC              ; |2939| 
        MOVL      ACC,XAR4              ; |2939| 
        CMPL      ACC,XAR3              ; |2939| 
	.dwpsn	"common.c",2944,0
        BF        L280,LEQ              ; |2939| 
        ; branchcc occurs ; |2939| 
DW$L$__f_fseek$32$E:
L281:    
        MOVB      XAR0,#8               ; |2946| 
        MOVB      ACC,#0
        MOVL      XAR5,XAR2             ; |2948| 
        MOVL      *+XAR2[AR0],XAR3      ; |2946| 
        MOVL      XAR4,XAR1             ; |2948| 
        MOVL      *-SP[2],ACC           ; |2948| 
        MOVL      *-SP[4],ACC           ; |2948| 
        LCR       #__f_getcurrsector    ; |2948| 
        ; call occurs [#__f_getcurrsector] ; |2948| 
        CMPB      AL,#0                 ; |2948| 
        BF        L290,NEQ              ; |2948| 
        ; branchcc occurs ; |2948| 
        MOVL      XAR4,XAR2             ; |2952| 
        LCR       #__fn_updateseekpos   ; |2952| 
        ; call occurs [#__fn_updateseekpos] ; |2952| 
        BF        L284,UNC              ; |2952| 
        ; branch occurs ; |2952| 
L282:    
        MOVL      ACC,XAR3
        BF        L283,EQ               ; |2918| 
        ; branchcc occurs ; |2918| 
        MOVB      AL,#18                ; |2926| 
        BF        L287,UNC              ; |2926| 
        ; branch occurs ; |2926| 
L283:    
        MOVL      ACC,XAR2
        MOVL      XAR0,#916             ; |2919| 
        MOVL      XAR5,#916             ; |2919| 
        MOVL      XAR4,XAR1             ; |2919| 
        ADDL      XAR5,ACC
        MOVL      ACC,*+XAR2[AR0]       ; |2919| 
        LCR       #__f_clustertopos     ; |2919| 
        ; call occurs [#__f_clustertopos] ; |2919| 
        MOVL      XAR0,#924             ; |2920| 
        MOVL      ACC,*+XAR2[AR0]       ; |2920| 
        MOVL      XAR0,#922             ; |2920| 
        MOVL      *+XAR2[AR0],ACC       ; |2920| 
L284:    
        MOVL      ACC,*-SP[10]
        BF        L289,EQ               ; |2921| 
        ; branchcc occurs ; |2921| 
        MOV       ACC,#1 << 9
        MOVB      XAR5,#0
        MOVL      XAR4,#_truncate_tmp   ; |2957| 
        LCR       #_memset              ; |2957| 
        ; call occurs [#_memset] ; |2957| 
        MOVL      ACC,*-SP[10]          ; |2957| 
        BF        L289,EQ               ; |2959| 
        ; branchcc occurs ; |2959| 
L285:    
DW$L$__f_fseek$40$B:
	.dwpsn	"common.c",2959,0
        MOVL      XAR3,*-SP[10]
        MOV       ACC,#512              ; |2960| 
        CMPL      ACC,XAR3              ; |2960| 
        BF        L286,GEQ              ; |2960| 
        ; branchcc occurs ; |2960| 
DW$L$__f_fseek$40$E:
DW$L$__f_fseek$41$B:
        MOVL      XAR3,#512             ; |2961| 
DW$L$__f_fseek$41$E:
L286:    
DW$L$__f_fseek$42$B:
        MOVL      *-SP[2],XAR3          ; |2963| 
        MOVL      ACC,*+XAR2[0]         ; |2963| 
        MOVL      *-SP[4],ACC           ; |2963| 
        MOVL      XAR4,*-SP[8]          ; |2963| 
        MOVL      XAR5,#_truncate_tmp   ; |2963| 
        MOVB      ACC,#1
        LCR       #_fn_write            ; |2963| 
        ; call occurs [#_fn_write] ; |2963| 
        CMPL      ACC,XAR3              ; |2963| 
        BF        L288,EQ               ; |2963| 
        ; branchcc occurs ; |2963| 
DW$L$__f_fseek$42$E:
        MOVB      AL,#20                ; |2965| 
L287:    
        MOV       *+XAR2[4],#0          ; |2964| 
        BF        L290,UNC              ; |2965| 
        ; branch occurs ; |2965| 
L288:    
DW$L$__f_fseek$45$B:
        MOVL      ACC,*-SP[10]
        SUBL      ACC,XAR3
        MOVL      *-SP[10],ACC          ; |2967| 
	.dwpsn	"common.c",2968,0
        BF        L285,NEQ              ; |2967| 
        ; branchcc occurs ; |2967| 
DW$L$__f_fseek$45$E:
L289:    
        MOVB      AL,#0
L290:    
        SUBB      SP,#12                ; |2971| 
        MOVL      XAR3,*--SP            ; |2971| 
        MOVL      XAR2,*--SP            ; |2971| 
        MOVL      XAR1,*--SP            ; |2971| 
	.dwpsn	"common.c",2972,1
        LRETR
        ; return occurs

DW$367	.dwtag  DW_TAG_loop
	.dwattr DW$367, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L285:1:1471518967")
	.dwattr DW$367, DW_AT_begin_file("common.c")
	.dwattr DW$367, DW_AT_begin_line(0xb8f)
	.dwattr DW$367, DW_AT_end_line(0xb98)
DW$368	.dwtag  DW_TAG_loop_range
	.dwattr DW$368, DW_AT_low_pc(DW$L$__f_fseek$40$B)
	.dwattr DW$368, DW_AT_high_pc(DW$L$__f_fseek$40$E)
DW$369	.dwtag  DW_TAG_loop_range
	.dwattr DW$369, DW_AT_low_pc(DW$L$__f_fseek$41$B)
	.dwattr DW$369, DW_AT_high_pc(DW$L$__f_fseek$41$E)
DW$370	.dwtag  DW_TAG_loop_range
	.dwattr DW$370, DW_AT_low_pc(DW$L$__f_fseek$42$B)
	.dwattr DW$370, DW_AT_high_pc(DW$L$__f_fseek$42$E)
DW$371	.dwtag  DW_TAG_loop_range
	.dwattr DW$371, DW_AT_low_pc(DW$L$__f_fseek$45$B)
	.dwattr DW$371, DW_AT_high_pc(DW$L$__f_fseek$45$E)
	.dwendtag DW$367


DW$372	.dwtag  DW_TAG_loop
	.dwattr DW$372, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L280:1:1471518967")
	.dwattr DW$372, DW_AT_begin_file("common.c")
	.dwattr DW$372, DW_AT_begin_line(0xb7b)
	.dwattr DW$372, DW_AT_end_line(0xb80)
DW$373	.dwtag  DW_TAG_loop_range
	.dwattr DW$373, DW_AT_low_pc(DW$L$__f_fseek$32$B)
	.dwattr DW$373, DW_AT_high_pc(DW$L$__f_fseek$32$E)
	.dwendtag DW$372


DW$374	.dwtag  DW_TAG_loop
	.dwattr DW$374, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L278:1:1471518967")
	.dwattr DW$374, DW_AT_begin_file("common.c")
	.dwattr DW$374, DW_AT_begin_line(0xb5b)
	.dwattr DW$374, DW_AT_end_line(0xb77)
DW$375	.dwtag  DW_TAG_loop_range
	.dwattr DW$375, DW_AT_low_pc(DW$L$__f_fseek$28$B)
	.dwattr DW$375, DW_AT_high_pc(DW$L$__f_fseek$28$E)
DW$376	.dwtag  DW_TAG_loop_range
	.dwattr DW$376, DW_AT_low_pc(DW$L$__f_fseek$29$B)
	.dwattr DW$376, DW_AT_high_pc(DW$L$__f_fseek$29$E)
DW$377	.dwtag  DW_TAG_loop_range
	.dwattr DW$377, DW_AT_low_pc(DW$L$__f_fseek$30$B)
	.dwattr DW$377, DW_AT_high_pc(DW$L$__f_fseek$30$E)
	.dwendtag DW$374


DW$378	.dwtag  DW_TAG_loop
	.dwattr DW$378, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L275:1:1471518967")
	.dwattr DW$378, DW_AT_begin_file("common.c")
	.dwattr DW$378, DW_AT_begin_line(0xb4e)
	.dwattr DW$378, DW_AT_end_line(0xb56)
DW$379	.dwtag  DW_TAG_loop_range
	.dwattr DW$379, DW_AT_low_pc(DW$L$__f_fseek$23$B)
	.dwattr DW$379, DW_AT_high_pc(DW$L$__f_fseek$23$E)
DW$380	.dwtag  DW_TAG_loop_range
	.dwattr DW$380, DW_AT_low_pc(DW$L$__f_fseek$24$B)
	.dwattr DW$380, DW_AT_high_pc(DW$L$__f_fseek$24$E)
	.dwendtag DW$378

	.dwattr DW$362, DW_AT_end_file("common.c")
	.dwattr DW$362, DW_AT_end_line(0xb9c)
	.dwattr DW$362, DW_AT_end_column(0x01)
	.dwendtag DW$362

	.sect	".text"
	.global	__f_removechain

DW$381	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_removechain"), DW_AT_symbol_name("__f_removechain")
	.dwattr DW$381, DW_AT_low_pc(__f_removechain)
	.dwattr DW$381, DW_AT_high_pc(0x00)
	.dwattr DW$381, DW_AT_begin_file("common.c")
	.dwattr DW$381, DW_AT_begin_line(0xbb1)
	.dwattr DW$381, DW_AT_begin_column(0x05)
	.dwattr DW$381, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$381, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",2993,56

;***************************************************************
;* FNAME: __f_removechain               FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  2 Auto,  4 SOE     *
;***************************************************************

__f_removechain:
;* AR4   assigned to _vi
DW$382	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$382, DW_AT_type(*DW$T$92)
	.dwattr DW$382, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _cluster
DW$383	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cluster"), DW_AT_symbol_name("_cluster")
	.dwattr DW$383, DW_AT_type(*DW$T$13)
	.dwattr DW$383, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      XAR0,#1116            ; |2996| 
        MOVL      *SP++,XAR2
        MOVL      XAR2,XAR4             ; |2993| 
        MOVL      XAR1,ACC              ; |2993| 
        ADDB      SP,#4
        CMPL      ACC,*+XAR2[AR0]       ; |2996| 
        BF        L291,HIS              ; |2996| 
        ; branchcc occurs ; |2996| 
        MOVL      *+XAR2[AR0],XAR1      ; |2997| 
L291:    
        MOV       AL,#65520
        MOV       AH,#4095
        CMPL      ACC,XAR1              ; |3000| 
        BF        L294,LOS              ; |3000| 
        ; branchcc occurs ; |3000| 
L292:    
DW$L$__f_removechain$4$B:
	.dwpsn	"common.c",3000,0
        MOVB      ACC,#2
        CMPL      ACC,XAR1              ; |3000| 
        BF        L294,HI               ; |3000| 
        ; branchcc occurs ; |3000| 
DW$L$__f_removechain$4$E:
DW$L$__f_removechain$5$B:
        MOVZ      AR5,SP                ; |3003| 
        MOVL      XAR4,XAR2             ; |3003| 
        MOVL      ACC,XAR1              ; |3003| 
        SUBB      XAR5,#4               ; |3003| 
        LCR       #__f_getclustervalue  ; |3003| 
        ; call occurs [#__f_getclustervalue] ; |3003| 
        CMPB      AL,#0                 ; |3003| 
        BF        L295,NEQ              ; |3003| 
        ; branchcc occurs ; |3003| 
DW$L$__f_removechain$5$E:
DW$L$__f_removechain$6$B:
        MOVB      ACC,#0
        MOVL      XAR4,XAR2             ; |3006| 
        MOVL      *-SP[2],ACC           ; |3006| 
        MOVL      ACC,XAR1              ; |3006| 
        LCR       #__f_setclustervalue  ; |3006| 
        ; call occurs [#__f_setclustervalue] ; |3006| 
        CMPB      AL,#0                 ; |3006| 
        BF        L295,NEQ              ; |3006| 
        ; branchcc occurs ; |3006| 
DW$L$__f_removechain$6$E:
DW$L$__f_removechain$7$B:
        MOVL      XAR0,#1144            ; |3009| 
        MOV       AL,*+XAR2[AR0]        ; |3009| 
        BF        L293,EQ               ; |3009| 
        ; branchcc occurs ; |3009| 
DW$L$__f_removechain$7$E:
DW$L$__f_removechain$8$B:
        MOVL      ACC,XAR2
        MOVL      XAR4,#1140            ; |3010| 
        ADDL      XAR4,ACC
        MOVB      ACC,#1
        SUBL      *+XAR4[0],ACC         ; |3010| 
        MOVL      ACC,XAR2
        MOVL      XAR4,#1138            ; |3011| 
        ADDL      XAR4,ACC
        MOVB      ACC,#1
        ADDL      *+XAR4[0],ACC         ; |3011| 
DW$L$__f_removechain$8$E:
L293:    
DW$L$__f_removechain$9$B:
        MOVL      XAR1,*-SP[4]          ; |3022| 
        MOV       AL,#65520
        MOV       AH,#4095
        CMPL      ACC,XAR1              ; |3022| 
	.dwpsn	"common.c",3023,0
        BF        L292,HI               ; |3022| 
        ; branchcc occurs ; |3022| 
DW$L$__f_removechain$9$E:
L294:    
        MOVL      XAR4,XAR2             ; |3025| 
        LCR       #__f_writefatsector   ; |3025| 
        ; call occurs [#__f_writefatsector] ; |3025| 
L295:    
        SUBB      SP,#4                 ; |3025| 
        MOVL      XAR2,*--SP            ; |3025| 
        MOVL      XAR1,*--SP            ; |3025| 
	.dwpsn	"common.c",3026,1
        LRETR
        ; return occurs

DW$384	.dwtag  DW_TAG_loop
	.dwattr DW$384, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L292:1:1471518967")
	.dwattr DW$384, DW_AT_begin_file("common.c")
	.dwattr DW$384, DW_AT_begin_line(0xbb8)
	.dwattr DW$384, DW_AT_end_line(0xbcf)
DW$385	.dwtag  DW_TAG_loop_range
	.dwattr DW$385, DW_AT_low_pc(DW$L$__f_removechain$4$B)
	.dwattr DW$385, DW_AT_high_pc(DW$L$__f_removechain$4$E)
DW$386	.dwtag  DW_TAG_loop_range
	.dwattr DW$386, DW_AT_low_pc(DW$L$__f_removechain$5$B)
	.dwattr DW$386, DW_AT_high_pc(DW$L$__f_removechain$5$E)
DW$387	.dwtag  DW_TAG_loop_range
	.dwattr DW$387, DW_AT_low_pc(DW$L$__f_removechain$6$B)
	.dwattr DW$387, DW_AT_high_pc(DW$L$__f_removechain$6$E)
DW$388	.dwtag  DW_TAG_loop_range
	.dwattr DW$388, DW_AT_low_pc(DW$L$__f_removechain$7$B)
	.dwattr DW$388, DW_AT_high_pc(DW$L$__f_removechain$7$E)
DW$389	.dwtag  DW_TAG_loop_range
	.dwattr DW$389, DW_AT_low_pc(DW$L$__f_removechain$8$B)
	.dwattr DW$389, DW_AT_high_pc(DW$L$__f_removechain$8$E)
DW$390	.dwtag  DW_TAG_loop_range
	.dwattr DW$390, DW_AT_low_pc(DW$L$__f_removechain$9$B)
	.dwattr DW$390, DW_AT_high_pc(DW$L$__f_removechain$9$E)
	.dwendtag DW$384

	.dwattr DW$381, DW_AT_end_file("common.c")
	.dwattr DW$381, DW_AT_end_line(0xbd2)
	.dwattr DW$381, DW_AT_end_column(0x01)
	.dwendtag DW$381

	.sect	".text"
	.global	__f_updatefileentry

DW$391	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_updatefileentry"), DW_AT_symbol_name("__f_updatefileentry")
	.dwattr DW$391, DW_AT_low_pc(__f_updatefileentry)
	.dwattr DW$391, DW_AT_high_pc(0x00)
	.dwattr DW$391, DW_AT_begin_file("common.c")
	.dwattr DW$391, DW_AT_begin_line(0xbde)
	.dwattr DW$391, DW_AT_begin_column(0x05)
	.dwattr DW$391, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$391, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",3039,1

;***************************************************************
;* FNAME: __f_updatefileentry           FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  6 SOE     *
;***************************************************************

__f_updatefileentry:
;* AR4   assigned to _vi
DW$392	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$392, DW_AT_type(*DW$T$92)
	.dwattr DW$392, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _f
DW$393	.dwtag  DW_TAG_formal_parameter, DW_AT_name("f"), DW_AT_symbol_name("_f")
	.dwattr DW$393, DW_AT_type(*DW$T$108)
	.dwattr DW$393, DW_AT_location[DW_OP_reg14]
;* AL    assigned to _remove
DW$394	.dwtag  DW_TAG_formal_parameter, DW_AT_name("remove"), DW_AT_symbol_name("_remove")
	.dwattr DW$394, DW_AT_type(*DW$T$10)
	.dwattr DW$394, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#2
        MOVL      XAR0,#938             ; |3042| 
        MOVL      XAR2,XAR5             ; |3039| 
        MOVL      P,XAR4                ; |3039| 
        MOV       *-SP[1],AL            ; |3039| 
        MOVL      XAR3,XAR4             ; |3039| 
        MOVL      ACC,*+XAR2[AR0]       ; |3042| 
        LSL       ACC,5                 ; |3042| 
        MOVL      XAR4,#602             ; |3042| 
        ADDL      P,ACC
        MOVL      XAR0,#934             ; |3044| 
        ADDUL     P,XAR4
        MOVL      XAR4,XAR3             ; |3044| 
        MOVL      XAR1,P                ; |3042| 
        MOVL      ACC,*+XAR2[AR0]       ; |3044| 
        LCR       #__f_getdirsector     ; |3044| 
        ; call occurs [#__f_getdirsector] ; |3044| 
        CMPB      AL,#0                 ; |3044| 
        BF        L296,NEQ              ; |3044| 
        ; branchcc occurs ; |3044| 
        MOV       AL,*-SP[1]
        BF        L297,EQ               ; |3044| 
        ; branchcc occurs ; |3044| 
L296:    
        MOVL      XAR0,#914             ; |3046| 
        MOVL      XAR4,XAR3             ; |3046| 
        MOVL      ACC,*+XAR2[AR0]       ; |3046| 
        LCR       #__f_removechain      ; |3046| 
        ; call occurs [#__f_removechain] ; |3046| 
        MOVL      XAR5,XAR1             ; |3047| 
        MOVL      XAR4,XAR3             ; |3047| 
        MOVB      ACC,#0
        LCR       #__f_setdecluster     ; |3047| 
        ; call occurs [#__f_setdecluster] ; |3047| 
        MOVB      ACC,#28
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |3048| 
        MOVB      ACC,#0
        LCR       #__f_setlong          ; |3048| 
        ; call occurs [#__f_setlong] ; |3048| 
        MOVL      XAR4,XAR3             ; |3049| 
        LCR       #__f_writedirsector   ; |3049| 
        ; call occurs [#__f_writedirsector] ; |3049| 
        MOVB      AL,#20                ; |3050| 
        BF        L300,UNC              ; |3050| 
        ; branch occurs ; |3050| 
L297:    
        MOVB      ACC,#28
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |3053| 
        LCR       #__f_getlong          ; |3053| 
        ; call occurs [#__f_getlong] ; |3053| 
        MOVB      XAR0,#10              ; |3053| 
        CMPL      ACC,*+XAR2[AR0]       ; |3053| 
        BF        L298,NEQ              ; |3053| 
        ; branchcc occurs ; |3053| 
        MOVL      XAR5,XAR1             ; |3053| 
        MOVL      XAR4,XAR3             ; |3053| 
        LCR       #__f_getdecluster     ; |3053| 
        ; call occurs [#__f_getdecluster] ; |3053| 
        MOVL      XAR0,#914             ; |3053| 
        CMPL      ACC,*+XAR2[AR0]       ; |3053| 
        BF        L298,NEQ              ; |3053| 
        ; branchcc occurs ; |3053| 
        MOVB      AL,#0
        BF        L300,UNC              ; |3054| 
        ; branch occurs ; |3054| 
L298:    
        MOVL      XAR0,#914             ; |3056| 
        MOVL      XAR5,XAR1             ; |3056| 
        MOVL      XAR4,XAR3             ; |3056| 
        MOVL      ACC,*+XAR2[AR0]       ; |3056| 
        LCR       #__f_setdecluster     ; |3056| 
        ; call occurs [#__f_setdecluster] ; |3056| 
        MOVB      ACC,#28
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |3057| 
        MOVB      XAR0,#10              ; |3057| 
        MOVL      ACC,*+XAR2[AR0]       ; |3057| 
        LCR       #__f_setlong          ; |3057| 
        ; call occurs [#__f_setlong] ; |3057| 
        LCR       #_f_getdate           ; |3058| 
        ; call occurs [#_f_getdate] ; |3058| 
        MOVZ      AR6,AL                ; |3058| 
        MOVB      ACC,#24
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |3058| 
        MOV       AL,AR6                ; |3058| 
        LCR       #__f_setword          ; |3058| 
        ; call occurs [#__f_setword] ; |3058| 
        LCR       #_f_gettime           ; |3059| 
        ; call occurs [#_f_gettime] ; |3059| 
        MOVZ      AR6,AL                ; |3059| 
        MOVB      ACC,#22
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |3059| 
        MOV       AL,AR6                ; |3059| 
        LCR       #__f_setword          ; |3059| 
        ; call occurs [#__f_setword] ; |3059| 
        MOVL      XAR0,#1136            ; |3061| 
        MOVB      ACC,#3
        CMPL      ACC,*+XAR3[AR0]       ; |3061| 
        BF        L299,NEQ              ; |3061| 
        ; branchcc occurs ; |3061| 
        LCR       #_f_getdate           ; |3063| 
        ; call occurs [#_f_getdate] ; |3063| 
        MOVZ      AR6,AL                ; |3063| 
        MOVB      ACC,#18
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |3063| 
        MOV       AL,AR6                ; |3063| 
        LCR       #__f_setword          ; |3063| 
        ; call occurs [#__f_setword] ; |3063| 
L299:    
        MOVL      XAR4,XAR3             ; |3066| 
        LCR       #__f_writedirsector   ; |3066| 
        ; call occurs [#__f_writedirsector] ; |3066| 
L300:    
        SUBB      SP,#2                 ; |3066| 
        MOVL      XAR3,*--SP            ; |3066| 
        MOVL      XAR2,*--SP            ; |3066| 
        MOVL      XAR1,*--SP            ; |3066| 
	.dwpsn	"common.c",3067,1
        LRETR
        ; return occurs
	.dwattr DW$391, DW_AT_end_file("common.c")
	.dwattr DW$391, DW_AT_end_line(0xbfb)
	.dwattr DW$391, DW_AT_end_column(0x01)
	.dwendtag DW$391

	.sect	".text"
	.global	__f_check_handle

DW$395	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_check_handle"), DW_AT_symbol_name("__f_check_handle")
	.dwattr DW$395, DW_AT_low_pc(__f_check_handle)
	.dwattr DW$395, DW_AT_high_pc(0x00)
	.dwattr DW$395, DW_AT_begin_file("common.c")
	.dwattr DW$395, DW_AT_begin_line(0xc0f)
	.dwattr DW$395, DW_AT_begin_column(0x0c)
	.dwattr DW$395, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$395, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",3087,48

;***************************************************************
;* FNAME: __f_check_handle              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

__f_check_handle:
;* AR4   assigned to _filehandle
DW$396	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filehandle"), DW_AT_symbol_name("_filehandle")
	.dwattr DW$396, DW_AT_type(*DW$T$179)
	.dwattr DW$396, DW_AT_location[DW_OP_reg12]
        MOV       AL,AR4                ; |3091| 
        ANDB      AL,#0x0f              ; |3091| 
        BF        L301,NEQ              ; |3091| 
        ; branchcc occurs ; |3091| 
;       MOV       T,AL Implicitly done by - MPY ACC,OP,#IMM ; |3091| 
        MOVL      XAR5,#_f_filesystem+1148 ; |3091| 
        MPY       ACC,AL,#974           ; |3091| 
        ADDL      XAR5,ACC
        MOVL      ACC,*+XAR5[0]         ; |3091| 
        CMPL      ACC,XAR4              ; |3091| 
        BF        L302,EQ               ; |3091| 
        ; branchcc occurs ; |3091| 
L301:    
        MOVB      XAR4,#0
        BF        L303,UNC              ; |3091| 
        ; branch occurs ; |3091| 
L302:    
        MOV       AL,AR4                ; |3091| 
        ANDB      AL,#0x0f              ; |3091| 
;       MOV       T,AL Implicitly done by - MPY ACC,OP,#IMM ; |3091| 
        MPY       ACC,AL,#974           ; |3091| 
        MOVL      XAR4,#_f_filesystem+1148 ; |3091| 
        ADDL      XAR4,ACC
L303:    
	.dwpsn	"common.c",3096,1
        LRETR
        ; return occurs
	.dwattr DW$395, DW_AT_end_file("common.c")
	.dwattr DW$395, DW_AT_end_line(0xc18)
	.dwattr DW$395, DW_AT_end_column(0x01)
	.dwendtag DW$395

	.sect	".text"
	.global	_fn_close

DW$397	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_close"), DW_AT_symbol_name("_fn_close")
	.dwattr DW$397, DW_AT_low_pc(_fn_close)
	.dwattr DW$397, DW_AT_high_pc(0x00)
	.dwattr DW$397, DW_AT_begin_file("common.c")
	.dwattr DW$397, DW_AT_begin_line(0xc2a)
	.dwattr DW$397, DW_AT_begin_column(0x05)
	.dwattr DW$397, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$397, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",3114,46

;***************************************************************
;* FNAME: _fn_close                     FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  2 Auto,  4 SOE     *
;***************************************************************

_fn_close:
;* AR4   assigned to _fm
DW$398	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$398, DW_AT_type(*DW$T$106)
	.dwattr DW$398, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _filehandle
DW$399	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filehandle"), DW_AT_symbol_name("_filehandle")
	.dwattr DW$399, DW_AT_type(*DW$T$179)
	.dwattr DW$399, DW_AT_location[DW_OP_reg14]
        MOVL      XAR6,XAR4             ; |3114| 
        MOVL      *SP++,XAR1
        MOVL      XAR4,XAR5             ; |3116| 
        MOVL      *SP++,XAR2
        ADDB      SP,#4
        LCR       #__f_check_handle     ; |3116| 
        ; call occurs [#__f_check_handle] ; |3116| 
        MOVB      XAR1,#8               ; |3118| 
        MOVL      ACC,XAR4              ; |3116| 
        MOVL      XAR2,XAR4             ; |3116| 
        BF        L304,EQ               ; |3120| 
        ; branchcc occurs ; |3120| 
        MOVZ      AR5,SP                ; |3122| 
        MOVL      XAR4,XAR6             ; |3122| 
        MOV       AL,*+XAR2[5]          ; |3122| 
        SUBB      XAR5,#4               ; |3122| 
        LCR       #__f_getvolume        ; |3122| 
        ; call occurs [#__f_getvolume] ; |3122| 
        CMPB      AL,#0                 ; |3122| 
        BF        L310,NEQ              ; |3122| 
        ; branchcc occurs ; |3122| 
        MOV       AL,*+XAR2[4]          ; |3125| 
        BF        L304,EQ               ; |3125| 
        ; branchcc occurs ; |3125| 
        CMPB      AL,#1                 ; |3125| 
        BF        L308,EQ               ; |3125| 
        ; branchcc occurs ; |3125| 
        ADDB      AL,#-2
        CMPB      AL,#4                 ; |3125| 
        BF        L305,LOS              ; |3125| 
        ; branchcc occurs ; |3125| 
        BF        L309,UNC              ; |3125| 
        ; branch occurs ; |3125| 
L304:    
        MOVB      AL,#8                 ; |3126| 
        BF        L310,UNC              ; |3126| 
        ; branch occurs ; |3126| 
L305:    
        MOVB      ACC,#0
        MOV       *+XAR2[4],#0          ; |3137| 
        MOVL      XAR5,XAR2             ; |3139| 
        MOVL      *-SP[2],ACC           ; |3139| 
        MOVL      XAR4,*-SP[4]          ; |3139| 
        LCR       #__f_emptywritebuffer ; |3139| 
        ; call occurs [#__f_emptywritebuffer] ; |3139| 
        CMPB      AL,#0                 ; |3139| 
        BF        L306,NEQ              ; |3139| 
        ; branchcc occurs ; |3139| 
        MOVL      XAR4,*-SP[4]          ; |3145| 
        LCR       #__f_writefatsector   ; |3145| 
        ; call occurs [#__f_writefatsector] ; |3145| 
        CMPB      AL,#0                 ; |3145| 
        BF        L307,EQ               ; |3145| 
        ; branchcc occurs ; |3145| 
L306:    
        MOVL      XAR4,*-SP[4]          ; |3146| 
        MOVL      XAR5,XAR2             ; |3146| 
        MOVB      AL,#1                 ; |3146| 
        LCR       #__f_updatefileentry  ; |3146| 
        ; call occurs [#__f_updatefileentry] ; |3146| 
        MOVB      AL,#20                ; |3148| 
        BF        L310,UNC              ; |3148| 
        ; branch occurs ; |3148| 
L307:    
        MOVL      XAR4,*-SP[4]          ; |3158| 
        MOVL      XAR5,XAR2             ; |3158| 
        MOVB      AL,#0
        LCR       #__f_updatefileentry  ; |3158| 
        ; call occurs [#__f_updatefileentry] ; |3158| 
        BF        L310,UNC              ; |3159| 
        ; branch occurs ; |3159| 
L308:    
        MOV       *+XAR2[4],#0          ; |3129| 
        MOVB      XAR1,#0
L309:    
        MOV       AL,AR1                ; |3166| 
L310:    
        SUBB      SP,#4                 ; |3166| 
        MOVL      XAR2,*--SP            ; |3166| 
        MOVL      XAR1,*--SP            ; |3166| 
	.dwpsn	"common.c",3167,1
        LRETR
        ; return occurs
	.dwattr DW$397, DW_AT_end_file("common.c")
	.dwattr DW$397, DW_AT_end_line(0xc5f)
	.dwattr DW$397, DW_AT_end_column(0x01)
	.dwendtag DW$397

	.sect	".text"
	.global	_fn_flush

DW$400	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_flush"), DW_AT_symbol_name("_fn_flush")
	.dwattr DW$400, DW_AT_low_pc(_fn_flush)
	.dwattr DW$400, DW_AT_high_pc(0x00)
	.dwattr DW$400, DW_AT_begin_file("common.c")
	.dwattr DW$400, DW_AT_begin_line(0xc73)
	.dwattr DW$400, DW_AT_begin_column(0x05)
	.dwattr DW$400, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$400, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",3187,46

;***************************************************************
;* FNAME: _fn_flush                     FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  2 Auto,  2 SOE     *
;***************************************************************

_fn_flush:
;* AR4   assigned to _fm
DW$401	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$401, DW_AT_type(*DW$T$106)
	.dwattr DW$401, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _filehandle
DW$402	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filehandle"), DW_AT_symbol_name("_filehandle")
	.dwattr DW$402, DW_AT_type(*DW$T$179)
	.dwattr DW$402, DW_AT_location[DW_OP_reg14]
        MOVL      XAR6,XAR4             ; |3187| 
        MOVL      XAR4,XAR5             ; |3189| 
        MOVL      *SP++,XAR1
        ADDB      SP,#4
        LCR       #__f_check_handle     ; |3189| 
        ; call occurs [#__f_check_handle] ; |3189| 
        MOVL      ACC,XAR4              ; |3189| 
        MOVL      XAR1,XAR4             ; |3189| 
        BF        L311,EQ               ; |3189| 
        ; branchcc occurs ; |3189| 
        MOVZ      AR5,SP                ; |3194| 
        MOVL      XAR4,XAR6             ; |3194| 
        MOV       AL,*+XAR1[5]          ; |3194| 
        SUBB      XAR5,#4               ; |3194| 
        LCR       #__f_getvolume        ; |3194| 
        ; call occurs [#__f_getvolume] ; |3194| 
        CMPB      AL,#0                 ; |3194| 
        BF        L315,NEQ              ; |3194| 
        ; branchcc occurs ; |3194| 
        MOV       AL,*+XAR1[4]          ; |3197| 
        ADDB      AL,#-2
        CMPB      AL,#4                 ; |3197| 
        BF        L312,LOS              ; |3197| 
        ; branchcc occurs ; |3197| 
L311:    
        MOVB      AL,#8                 ; |3223| 
        BF        L315,UNC              ; |3223| 
        ; branch occurs ; |3223| 
L312:    
        MOVB      ACC,#0
        MOVL      XAR5,XAR1             ; |3204| 
        MOVL      *-SP[2],ACC           ; |3204| 
        MOVL      XAR4,*-SP[4]          ; |3204| 
        LCR       #__f_emptywritebuffer ; |3204| 
        ; call occurs [#__f_emptywritebuffer] ; |3204| 
        CMPB      AL,#0                 ; |3204| 
        BF        L313,NEQ              ; |3204| 
        ; branchcc occurs ; |3204| 
        MOVL      XAR4,*-SP[4]          ; |3209| 
        LCR       #__f_writefatsector   ; |3209| 
        ; call occurs [#__f_writefatsector] ; |3209| 
        CMPB      AL,#0                 ; |3209| 
        BF        L314,EQ               ; |3209| 
        ; branchcc occurs ; |3209| 
L313:    
        MOVL      XAR4,*-SP[4]          ; |3210| 
        MOVL      XAR5,XAR1             ; |3210| 
        MOVB      AL,#1                 ; |3210| 
        LCR       #__f_updatefileentry  ; |3210| 
        ; call occurs [#__f_updatefileentry] ; |3210| 
        MOVB      AL,#20                ; |3211| 
        BF        L315,UNC              ; |3211| 
        ; branch occurs ; |3211| 
L314:    
        MOVL      XAR4,*-SP[4]          ; |3220| 
        MOVB      AL,#0
        MOVL      XAR5,XAR1             ; |3220| 
        LCR       #__f_updatefileentry  ; |3220| 
        ; call occurs [#__f_updatefileentry] ; |3220| 
L315:    
        SUBB      SP,#4                 ; |3220| 
        MOVL      XAR1,*--SP            ; |3220| 
	.dwpsn	"common.c",3224,1
        LRETR
        ; return occurs
	.dwattr DW$400, DW_AT_end_file("common.c")
	.dwattr DW$400, DW_AT_end_line(0xc98)
	.dwattr DW$400, DW_AT_end_column(0x01)
	.dwendtag DW$400

	.sect	".text"
	.global	_fn_read

DW$403	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_read"), DW_AT_symbol_name("_fn_read")
	.dwattr DW$403, DW_AT_low_pc(_fn_read)
	.dwattr DW$403, DW_AT_high_pc(0x00)
	.dwattr DW$403, DW_AT_begin_file("common.c")
	.dwattr DW$403, DW_AT_begin_line(0xcad)
	.dwattr DW$403, DW_AT_begin_column(0x06)
	.dwattr DW$403, DW_AT_frame_base[DW_OP_breg20 -24]
	.dwattr DW$403, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",3245,79

;***************************************************************
;* FNAME: _fn_read                      FR SIZE:  22           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter, 12 Auto,  6 SOE     *
;***************************************************************

_fn_read:
;* AR4   assigned to _fm
DW$404	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$404, DW_AT_type(*DW$T$106)
	.dwattr DW$404, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _buf
DW$405	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$405, DW_AT_type(*DW$T$3)
	.dwattr DW$405, DW_AT_location[DW_OP_reg14]
;* AL    assigned to _size
DW$406	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size"), DW_AT_symbol_name("_size")
	.dwattr DW$406, DW_AT_type(*DW$T$12)
	.dwattr DW$406, DW_AT_location[DW_OP_reg0]
DW$407	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size_st"), DW_AT_symbol_name("_size_st")
	.dwattr DW$407, DW_AT_type(*DW$T$12)
	.dwattr DW$407, DW_AT_location[DW_OP_breg20 -26]
DW$408	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filehandle"), DW_AT_symbol_name("_filehandle")
	.dwattr DW$408, DW_AT_type(*DW$T$179)
	.dwattr DW$408, DW_AT_location[DW_OP_breg20 -28]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#16
        MOVL      XAR6,XAR4             ; |3245| 
        MOVL      XAR2,XAR5             ; |3245| 
        MOVL      XAR4,*-SP[28]         ; |3245| 
        MOVL      *-SP[12],ACC          ; |3245| 
        MOVL      XAR7,*-SP[26]         ; |3245| 
        LCR       #__f_check_handle     ; |3247| 
        ; call occurs [#__f_check_handle] ; |3247| 
        MOVB      ACC,#0
        MOVL      *-SP[14],ACC          ; |3249| 
        MOV       *-SP[8],#0            ; |3252| 
        MOV       *-SP[7],#0            ; |3251| 
        MOVL      ACC,XAR4              ; |3247| 
        MOVL      XAR3,*-SP[12]         ; |3252| 
        MOVL      XAR1,XAR4             ; |3247| 
        BF        L318,EQ               ; |3255| 
        ; branchcc occurs ; |3255| 
        MOV       AL,*+XAR1[4]          ; |3257| 
        CMPB      AL,#1                 ; |3257| 
        BF        L316,EQ               ; |3257| 
        ; branchcc occurs ; |3257| 
        CMPB      AL,#4                 ; |3257| 
        BF        L316,EQ               ; |3257| 
        ; branchcc occurs ; |3257| 
        CMPB      AL,#5                 ; |3257| 
        BF        L316,EQ               ; |3257| 
        ; branchcc occurs ; |3257| 
        CMPB      AL,#6                 ; |3257| 
        BF        L318,NEQ              ; |3257| 
        ; branchcc occurs ; |3257| 
L316:    
        MOVL      ACC,*-SP[12]          ; |3259| 
        MOVL      XT,XAR7               ; |3259| 
        MOVZ      AR5,SP                ; |3261| 
        MOVL      XAR4,XAR6             ; |3261| 
        IMPYL     ACC,XT,ACC            ; |3259| 
        MOVL      *-SP[12],ACC          ; |3259| 
        SUBB      XAR5,#6               ; |3261| 
        MOV       AL,*+XAR1[5]          ; |3261| 
        LCR       #__f_getvolume        ; |3261| 
        ; call occurs [#__f_getvolume] ; |3261| 
        CMPB      AL,#0                 ; |3261| 
        BF        L318,NEQ              ; |3261| 
        ; branchcc occurs ; |3261| 
        MOVB      XAR0,#10              ; |3263| 
        MOVL      ACC,*+XAR1[AR0]       ; |3263| 
        MOVB      XAR0,#8               ; |3263| 
        MOVL      XAR4,*+XAR1[AR0]      ; |3263| 
        MOVL      XAR6,*-SP[12]         ; |3263| 
        MOVL      XAR7,*+XAR1[6]        ; |3263| 
        MOVL      P,XAR4                ; |3263| 
        ADDUL     P,XAR6
        ADDUL     P,XAR7
        CMPL      ACC,P                 ; |3263| 
        BF        L317,HI               ; |3263| 
        ; branchcc occurs ; |3263| 
        SUBL      ACC,XAR4
        SUBL      ACC,XAR7
        MOVL      *-SP[12],ACC          ; |3264| 
L317:    
        MOVL      ACC,*-SP[12]
        BF        L319,GT               ; |3267| 
        ; branchcc occurs ; |3267| 
L318:    
        MOVB      ACC,#0
        BF        L331,UNC              ; |3267| 
        ; branch occurs ; |3267| 
L319:    
        MOVL      ACC,*-SP[12]
        BF        L330,EQ               ; |3269| 
        ; branchcc occurs ; |3269| 
L320:    
DW$L$_fn_read$12$B:
	.dwpsn	"common.c",3269,0
        MOVL      ACC,*-SP[12]
        MOVB      XAR0,#8               ; |3272| 
        MOVL      *-SP[16],ACC          ; |3270| 
        MOV       ACC,#512              ; |3272| 
        CMPL      ACC,*+XAR1[AR0]       ; |3272| 
        BF        L327,NEQ              ; |3272| 
        ; branchcc occurs ; |3272| 
DW$L$_fn_read$12$E:
DW$L$_fn_read$13$B:
        MOVL      ACC,*+XAR1[2]         ; |3273| 
        BF        L321,EQ               ; |3273| 
        ; branchcc occurs ; |3273| 
DW$L$_fn_read$13$E:
DW$L$_fn_read$14$B:
        MOVB      ACC,#0
        MOVL      XAR5,XAR1             ; |3275| 
        MOVL      *-SP[2],ACC           ; |3275| 
        MOVL      XAR4,*-SP[6]          ; |3275| 
        LCR       #__f_emptywritebuffer ; |3275| 
        ; call occurs [#__f_emptywritebuffer] ; |3275| 
        CMPB      AL,#0                 ; |3275| 
        MOV       *-SP[9],AL            ; |3275| 
        BF        L326,NEQ              ; |3275| 
        ; branchcc occurs ; |3275| 
DW$L$_fn_read$14$E:
DW$L$_fn_read$15$B:
        MOVL      XAR4,*-SP[6]          ; |3281| 
        LCR       #__f_writefatsector   ; |3281| 
        ; call occurs [#__f_writefatsector] ; |3281| 
        CMPB      AL,#0                 ; |3281| 
        MOV       *-SP[9],AL            ; |3281| 
        BF        L326,NEQ              ; |3281| 
        ; branchcc occurs ; |3281| 
DW$L$_fn_read$15$E:
DW$L$_fn_read$16$B:
        MOVL      XAR4,XAR1
        LCR       #__fn_updateseekpos   ; |3287| 
        ; call occurs [#__fn_updateseekpos] ; |3287| 
DW$L$_fn_read$16$E:
L321:    
DW$L$_fn_read$17$B:
        MOVB      XAR0,#8               ; |3291| 
        MOVL      ACC,*+XAR1[AR0]       ; |3291| 
        MOVL      XAR4,#922             ; |3294| 
        ADDL      *+XAR1[6],ACC         ; |3291| 
        MOVB      ACC,#0
        MOVL      *+XAR1[AR0],ACC       ; |3292| 
        MOVL      ACC,XAR1              ; |3294| 
        ADDL      XAR4,ACC
        MOVB      ACC,#1
        ADDL      *+XAR4[0],ACC         ; |3294| 
        MOVL      XAR6,*-SP[12]         ; |3296| 
        MOV       ACC,#512              ; |3296| 
        CMPL      ACC,XAR6              ; |3296| 
        BF        L323,GEQ              ; |3296| 
        ; branchcc occurs ; |3296| 
DW$L$_fn_read$17$E:
DW$L$_fn_read$18$B:
        SETC      SXM
        MOVL      ACC,*-SP[12]          ; |3298| 
        MOV       T,#23                 ; |3299| 
        MOVZ      AR4,SP                ; |3300| 
        MOVL      XAR6,*-SP[12]         ; |3299| 
        MOV       *-SP[8],#1            ; |3298| 
        SFR       ACC,8                 ; |3299| 
        MOVL      XAR5,XAR1             ; |3300| 
        LSRL      ACC,T                 ; |3299| 
        SUBB      XAR4,#7               ; |3300| 
        ADDL      ACC,XAR6
        MOVH      *-SP[7],ACC << 7      ; |3299| 
        MOVL      *-SP[2],XAR2          ; |3300| 
        MOVL      *-SP[4],XAR4          ; |3300| 
        MOVL      XAR4,*-SP[6]          ; |3300| 
        LCR       #__f_getcurrsector    ; |3300| 
        ; call occurs [#__f_getcurrsector] ; |3300| 
        MOV       *-SP[9],AL            ; |3300| 
        MOVL      XAR6,*-SP[12]         ; |3301| 
        SETC      SXM
        MOV       ACC,*-SP[7] << #9     ; |3301| 
        MOV       ACC,AL                ; |3301| 
        CMPL      ACC,XAR6              ; |3301| 
        BF        L322,NEQ              ; |3301| 
        ; branchcc occurs ; |3301| 
DW$L$_fn_read$18$E:
DW$L$_fn_read$19$B:
        SUB       AL,#512               ; |3301| 
        MOV       PH,#0
        MOVL      XAR5,XAR2             ; |3301| 
        MOV       PL,#12
        MOV       ACC,AL                ; |3301| 
        ADDUL     P,XAR1
        ADDL      XAR5,ACC
        MOVL      XAR4,P                ; |3301| 
        MOV       ACC,#1 << 9
        LCR       #___memcpy_ff         ; |3301| 
        ; call occurs [#___memcpy_ff] ; |3301| 
DW$L$_fn_read$19$E:
L322:    
DW$L$_fn_read$20$B:
        MOVL      ACC,XAR1              ; |3303| 
        MOVL      XAR4,#922             ; |3303| 
        ADDL      XAR4,ACC
        SETC      SXM
        DEC       *-SP[7]               ; |3302| 
        MOV       ACC,*-SP[7]           ; |3303| 
        ADDL      *+XAR4[0],ACC         ; |3303| 
        MOV       ACC,*-SP[7] << #9     ; |3304| 
        MOV       *-SP[7],AL            ; |3304| 
        MOV       ACC,*-SP[7]           ; |3305| 
        ADDL      XAR2,ACC
        MOVL      ACC,*-SP[12]          ; |3305| 
        SUB       ACC,*-SP[7]           ; |3306| 
        MOVL      *-SP[12],ACC          ; |3306| 
        MOVL      ACC,*-SP[14]          ; |3306| 
        ADD       ACC,*-SP[7]           ; |3307| 
        MOVL      *-SP[14],ACC          ; |3307| 
        MOV       ACC,*-SP[7]           ; |3308| 
        ADDL      *+XAR1[6],ACC         ; |3308| 
        BF        L324,UNC              ; |3309| 
        ; branch occurs ; |3309| 
DW$L$_fn_read$20$E:
L323:    
DW$L$_fn_read$21$B:
        MOVB      ACC,#0
        MOV       *-SP[8],#0            ; |3312| 
        MOVL      XAR5,XAR1             ; |3313| 
        MOVL      *-SP[2],ACC           ; |3313| 
        MOVL      *-SP[4],ACC           ; |3313| 
        MOVL      XAR4,*-SP[6]          ; |3313| 
        LCR       #__f_getcurrsector    ; |3313| 
        ; call occurs [#__f_getcurrsector] ; |3313| 
        MOV       *-SP[9],AL            ; |3313| 
DW$L$_fn_read$21$E:
L324:    
DW$L$_fn_read$22$B:
        MOVL      XAR4,XAR1
        LCR       #__fn_updateseekpos   ; |3317| 
        ; call occurs [#__fn_updateseekpos] ; |3317| 
        MOV       AL,*-SP[9]            ; |3317| 
        CMPB      AL,#9                 ; |3320| 
        BF        L325,NEQ              ; |3320| 
        ; branchcc occurs ; |3320| 
DW$L$_fn_read$22$E:
DW$L$_fn_read$23$B:
        MOVL      ACC,*-SP[12]
        BF        L330,EQ               ; |3320| 
        ; branchcc occurs ; |3320| 
DW$L$_fn_read$23$E:
L325:    
DW$L$_fn_read$24$B:
        MOV       AL,*-SP[9]
        BF        L327,EQ               ; |3325| 
        ; branchcc occurs ; |3325| 
DW$L$_fn_read$24$E:
L326:    
        MOV       *+XAR1[4],#0          ; |3326| 
        BF        L330,UNC              ; |3327| 
        ; branch occurs ; |3327| 
L327:    
DW$L$_fn_read$26$B:
        MOVL      XAR6,*-SP[16]         ; |3331| 
        MOV       ACC,#512              ; |3331| 
        MOVB      XAR0,#8               ; |3331| 
        SUBL      ACC,*+XAR1[AR0]       ; |3331| 
        CMPL      ACC,XAR6              ; |3331| 
        BF        L328,HI               ; |3331| 
        ; branchcc occurs ; |3331| 
DW$L$_fn_read$26$E:
DW$L$_fn_read$27$B:
        MOVL      *-SP[16],ACC          ; |3332| 
DW$L$_fn_read$27$E:
L328:    
DW$L$_fn_read$28$B:
        MOV       AL,*-SP[8]
        BF        L329,NEQ              ; |3335| 
        ; branchcc occurs ; |3335| 
DW$L$_fn_read$28$E:
DW$L$_fn_read$29$B:
        MOVL      ACC,XAR1              ; |3335| 
        ADDL      ACC,*+XAR1[AR0]       ; |3335| 
        MOVL      XAR4,XAR2             ; |3335| 
        ADDB      ACC,#12               ; |3335| 
        MOVL      XAR5,ACC              ; |3335| 
        MOVL      ACC,*-SP[16]          ; |3335| 
        LCR       #___memcpy_ff         ; |3335| 
        ; call occurs [#___memcpy_ff] ; |3335| 
DW$L$_fn_read$29$E:
L329:    
DW$L$_fn_read$30$B:
        MOVL      XAR6,*-SP[16]         ; |3337| 
        MOVL      ACC,XAR2              ; |3337| 
        ADDL      ACC,XAR6
        MOVL      XAR2,ACC              ; |3337| 
        MOVB      ACC,#8
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |3338| 
        MOVL      ACC,*-SP[16]          ; |3338| 
        ADDL      *+XAR4[0],ACC         ; |3338| 
        MOVL      P,*-SP[12]            ; |3338| 
        MOVL      XAR6,*-SP[16]         ; |3339| 
        MOVL      ACC,*-SP[16]          ; |3338| 
        SUBL      P,ACC
        MOVL      ACC,*-SP[14]          ; |3339| 
        ADDL      ACC,XAR6
        MOVL      *-SP[12],P            ; |3339| 
        MOVL      *-SP[14],ACC          ; |3340| 
        MOVL      ACC,*-SP[12]          ; |3340| 
	.dwpsn	"common.c",3342,0
        BF        L320,NEQ              ; |3342| 
        ; branchcc occurs ; |3342| 
DW$L$_fn_read$30$E:
L330:    
        MOVL      *-SP[2],XAR3          ; |3344| 
        MOVL      ACC,*-SP[14]          ; |3344| 
        FFC       XAR7,#L$$DIV          ; |3344| 
        ; call occurs [#L$$DIV] ; |3344| 
L331:    
        SUBB      SP,#16                ; |3344| 
        MOVL      XAR3,*--SP            ; |3344| 
        MOVL      XAR2,*--SP            ; |3344| 
        MOVL      XAR1,*--SP            ; |3344| 
	.dwpsn	"common.c",3346,1
        LRETR
        ; return occurs

DW$409	.dwtag  DW_TAG_loop
	.dwattr DW$409, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L320:1:1471518967")
	.dwattr DW$409, DW_AT_begin_file("common.c")
	.dwattr DW$409, DW_AT_begin_line(0xcc5)
	.dwattr DW$409, DW_AT_end_line(0xd0e)
DW$410	.dwtag  DW_TAG_loop_range
	.dwattr DW$410, DW_AT_low_pc(DW$L$_fn_read$12$B)
	.dwattr DW$410, DW_AT_high_pc(DW$L$_fn_read$12$E)
DW$411	.dwtag  DW_TAG_loop_range
	.dwattr DW$411, DW_AT_low_pc(DW$L$_fn_read$14$B)
	.dwattr DW$411, DW_AT_high_pc(DW$L$_fn_read$14$E)
DW$412	.dwtag  DW_TAG_loop_range
	.dwattr DW$412, DW_AT_low_pc(DW$L$_fn_read$15$B)
	.dwattr DW$412, DW_AT_high_pc(DW$L$_fn_read$15$E)
DW$413	.dwtag  DW_TAG_loop_range
	.dwattr DW$413, DW_AT_low_pc(DW$L$_fn_read$13$B)
	.dwattr DW$413, DW_AT_high_pc(DW$L$_fn_read$13$E)
DW$414	.dwtag  DW_TAG_loop_range
	.dwattr DW$414, DW_AT_low_pc(DW$L$_fn_read$16$B)
	.dwattr DW$414, DW_AT_high_pc(DW$L$_fn_read$16$E)
DW$415	.dwtag  DW_TAG_loop_range
	.dwattr DW$415, DW_AT_low_pc(DW$L$_fn_read$17$B)
	.dwattr DW$415, DW_AT_high_pc(DW$L$_fn_read$17$E)
DW$416	.dwtag  DW_TAG_loop_range
	.dwattr DW$416, DW_AT_low_pc(DW$L$_fn_read$18$B)
	.dwattr DW$416, DW_AT_high_pc(DW$L$_fn_read$18$E)
DW$417	.dwtag  DW_TAG_loop_range
	.dwattr DW$417, DW_AT_low_pc(DW$L$_fn_read$19$B)
	.dwattr DW$417, DW_AT_high_pc(DW$L$_fn_read$19$E)
DW$418	.dwtag  DW_TAG_loop_range
	.dwattr DW$418, DW_AT_low_pc(DW$L$_fn_read$20$B)
	.dwattr DW$418, DW_AT_high_pc(DW$L$_fn_read$20$E)
DW$419	.dwtag  DW_TAG_loop_range
	.dwattr DW$419, DW_AT_low_pc(DW$L$_fn_read$21$B)
	.dwattr DW$419, DW_AT_high_pc(DW$L$_fn_read$21$E)
DW$420	.dwtag  DW_TAG_loop_range
	.dwattr DW$420, DW_AT_low_pc(DW$L$_fn_read$22$B)
	.dwattr DW$420, DW_AT_high_pc(DW$L$_fn_read$22$E)
DW$421	.dwtag  DW_TAG_loop_range
	.dwattr DW$421, DW_AT_low_pc(DW$L$_fn_read$23$B)
	.dwattr DW$421, DW_AT_high_pc(DW$L$_fn_read$23$E)
DW$422	.dwtag  DW_TAG_loop_range
	.dwattr DW$422, DW_AT_low_pc(DW$L$_fn_read$24$B)
	.dwattr DW$422, DW_AT_high_pc(DW$L$_fn_read$24$E)
DW$423	.dwtag  DW_TAG_loop_range
	.dwattr DW$423, DW_AT_low_pc(DW$L$_fn_read$26$B)
	.dwattr DW$423, DW_AT_high_pc(DW$L$_fn_read$26$E)
DW$424	.dwtag  DW_TAG_loop_range
	.dwattr DW$424, DW_AT_low_pc(DW$L$_fn_read$27$B)
	.dwattr DW$424, DW_AT_high_pc(DW$L$_fn_read$27$E)
DW$425	.dwtag  DW_TAG_loop_range
	.dwattr DW$425, DW_AT_low_pc(DW$L$_fn_read$28$B)
	.dwattr DW$425, DW_AT_high_pc(DW$L$_fn_read$28$E)
DW$426	.dwtag  DW_TAG_loop_range
	.dwattr DW$426, DW_AT_low_pc(DW$L$_fn_read$29$B)
	.dwattr DW$426, DW_AT_high_pc(DW$L$_fn_read$29$E)
DW$427	.dwtag  DW_TAG_loop_range
	.dwattr DW$427, DW_AT_low_pc(DW$L$_fn_read$30$B)
	.dwattr DW$427, DW_AT_high_pc(DW$L$_fn_read$30$E)
	.dwendtag DW$409

	.dwattr DW$403, DW_AT_end_file("common.c")
	.dwattr DW$403, DW_AT_end_line(0xd12)
	.dwattr DW$403, DW_AT_end_column(0x01)
	.dwendtag DW$403

	.sect	".text"
	.global	_fn_write

DW$428	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_write"), DW_AT_symbol_name("_fn_write")
	.dwattr DW$428, DW_AT_low_pc(_fn_write)
	.dwattr DW$428, DW_AT_high_pc(0x00)
	.dwattr DW$428, DW_AT_begin_file("common.c")
	.dwattr DW$428, DW_AT_begin_line(0xd27)
	.dwattr DW$428, DW_AT_begin_column(0x06)
	.dwattr DW$428, DW_AT_frame_base[DW_OP_breg20 -22]
	.dwattr DW$428, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",3367,86

;***************************************************************
;* FNAME: _fn_write                     FR SIZE:  20           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter, 10 Auto,  6 SOE     *
;***************************************************************

_fn_write:
;* AR4   assigned to _fm
DW$429	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$429, DW_AT_type(*DW$T$106)
	.dwattr DW$429, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _buf
DW$430	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$430, DW_AT_type(*DW$T$81)
	.dwattr DW$430, DW_AT_location[DW_OP_reg14]
;* AL    assigned to _size
DW$431	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size"), DW_AT_symbol_name("_size")
	.dwattr DW$431, DW_AT_type(*DW$T$12)
	.dwattr DW$431, DW_AT_location[DW_OP_reg0]
DW$432	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size_st"), DW_AT_symbol_name("_size_st")
	.dwattr DW$432, DW_AT_type(*DW$T$12)
	.dwattr DW$432, DW_AT_location[DW_OP_breg20 -24]
DW$433	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filehandle"), DW_AT_symbol_name("_filehandle")
	.dwattr DW$433, DW_AT_type(*DW$T$179)
	.dwattr DW$433, DW_AT_location[DW_OP_breg20 -26]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#14
        MOVL      XAR6,XAR4             ; |3367| 
        MOVL      XAR2,XAR5             ; |3367| 
        MOVL      XAR4,*-SP[26]         ; |3367| 
        MOVL      *-SP[8],ACC           ; |3367| 
        MOVL      XAR7,*-SP[24]         ; |3367| 
        LCR       #__f_check_handle     ; |3369| 
        ; call occurs [#__f_check_handle] ; |3369| 
        MOVB      ACC,#0
        MOVB      XAR3,#0
        MOVL      *-SP[10],ACC          ; |3371| 
        MOVL      ACC,*-SP[8]           ; |3373| 
        MOVL      *-SP[12],ACC          ; |3374| 
        MOVL      ACC,XAR4              ; |3369| 
        MOVL      XAR1,XAR4             ; |3369| 
        BF        L343,EQ               ; |3376| 
        ; branchcc occurs ; |3376| 
        MOV       AL,*+XAR1[4]          ; |3378| 
        CMPB      AL,#2                 ; |3378| 
        BF        L332,EQ               ; |3378| 
        ; branchcc occurs ; |3378| 
        CMPB      AL,#3                 ; |3378| 
        BF        L332,EQ               ; |3378| 
        ; branchcc occurs ; |3378| 
        CMPB      AL,#4                 ; |3378| 
        BF        L332,EQ               ; |3378| 
        ; branchcc occurs ; |3378| 
        CMPB      AL,#5                 ; |3378| 
        BF        L332,EQ               ; |3378| 
        ; branchcc occurs ; |3378| 
        CMPB      AL,#6                 ; |3378| 
        BF        L343,NEQ              ; |3378| 
        ; branchcc occurs ; |3378| 
L332:    
        MOVL      ACC,*-SP[8]           ; |3380| 
        MOVL      XT,XAR7               ; |3380| 
        MOVZ      AR5,SP                ; |3382| 
        MOVL      XAR4,XAR6             ; |3382| 
        IMPYL     ACC,XT,ACC            ; |3380| 
        MOVL      *-SP[8],ACC           ; |3380| 
        SUBB      XAR5,#6               ; |3382| 
        MOV       AL,*+XAR1[5]          ; |3382| 
        LCR       #__f_getvolume        ; |3382| 
        ; call occurs [#__f_getvolume] ; |3382| 
        CMPB      AL,#0                 ; |3382| 
        BF        L343,NEQ              ; |3382| 
        ; branchcc occurs ; |3382| 
        MOVL      ACC,*-SP[8]
        BF        L340,EQ               ; |3384| 
        ; branchcc occurs ; |3384| 
L333:    
DW$L$_fn_write$9$B:
	.dwpsn	"common.c",3384,0
        MOVL      ACC,*-SP[8]
        MOVB      XAR0,#8               ; |3387| 
        MOVL      *-SP[14],ACC          ; |3385| 
        MOV       ACC,#512              ; |3387| 
        CMPL      ACC,*+XAR1[AR0]       ; |3387| 
        BF        L335,NEQ              ; |3387| 
        ; branchcc occurs ; |3387| 
DW$L$_fn_write$9$E:
DW$L$_fn_write$10$B:
        MOVL      XAR5,XAR1             ; |3388| 
        MOVL      *-SP[2],XAR3          ; |3388| 
        MOVL      XAR4,*-SP[6]          ; |3388| 
        LCR       #__f_emptywritebuffer ; |3388| 
        ; call occurs [#__f_emptywritebuffer] ; |3388| 
        CMPB      AL,#0                 ; |3388| 
        BF        L341,NEQ              ; |3388| 
        ; branchcc occurs ; |3388| 
DW$L$_fn_write$10$E:
DW$L$_fn_write$11$B:
        MOVL      XAR4,XAR1
        LCR       #__fn_updateseekpos   ; |3404| 
        ; call occurs [#__fn_updateseekpos] ; |3404| 
        MOVB      XAR0,#8               ; |3406| 
        MOVL      ACC,*+XAR1[AR0]       ; |3406| 
        ADDL      *+XAR1[6],ACC         ; |3406| 
        MOVB      ACC,#0
        MOVL      XAR4,#922             ; |3409| 
        MOVL      *+XAR1[AR0],ACC       ; |3407| 
        MOVL      ACC,XAR1              ; |3409| 
        ADDL      XAR4,ACC
        MOVB      ACC,#1
        ADDL      *+XAR4[0],ACC         ; |3409| 
        MOVL      XAR6,*-SP[8]          ; |3410| 
        MOV       ACC,#512              ; |3410| 
        CMPL      ACC,XAR6              ; |3410| 
        BF        L335,LOS              ; |3410| 
        ; branchcc occurs ; |3410| 
DW$L$_fn_write$11$E:
DW$L$_fn_write$12$B:
        MOVB      ACC,#0
        MOVL      XAR5,XAR1             ; |3412| 
        MOVL      *-SP[2],ACC           ; |3412| 
        MOVL      *-SP[4],ACC           ; |3412| 
        MOVL      XAR4,*-SP[6]          ; |3412| 
        LCR       #__f_getcurrsector    ; |3412| 
        ; call occurs [#__f_getcurrsector] ; |3412| 
        CMPB      AL,#0                 ; |3412| 
        BF        L335,EQ               ; |3412| 
        ; branchcc occurs ; |3412| 
DW$L$_fn_write$12$E:
DW$L$_fn_write$13$B:
        CMPB      AL,#9                 ; |3412| 
        BF        L335,EQ               ; |3412| 
        ; branchcc occurs ; |3412| 
DW$L$_fn_write$13$E:
        MOV       *+XAR1[4],#0          ; |3416| 
L334:    
        MOVL      ACC,*-SP[12]          ; |3416| 
        MOVL      *-SP[2],ACC           ; |3417| 
        MOVL      ACC,*-SP[10]          ; |3417| 
        FFC       XAR7,#L$$DIV          ; |3417| 
        ; call occurs [#L$$DIV] ; |3417| 
        BF        L344,UNC              ; |3417| 
        ; branch occurs ; |3417| 
L335:    
DW$L$_fn_write$16$B:
        MOVL      XAR4,#512             ; |3423| 
        MOVL      XAR6,*-SP[14]         ; |3423| 
        MOVB      XAR0,#8               ; |3423| 
        MOVL      ACC,XAR4              ; |3423| 
        SUBL      ACC,*+XAR1[AR0]       ; |3423| 
        CMPL      ACC,XAR6              ; |3423| 
        BF        L336,HI               ; |3423| 
        ; branchcc occurs ; |3423| 
DW$L$_fn_write$16$E:
DW$L$_fn_write$17$B:
        MOVL      *-SP[14],ACC          ; |3424| 
DW$L$_fn_write$17$E:
L336:    
DW$L$_fn_write$18$B:
        MOVL      XAR6,*-SP[14]         ; |3427| 
        MOVL      ACC,XAR4              ; |3427| 
        CMPL      ACC,XAR6              ; |3427| 
        BF        L337,NEQ              ; |3427| 
        ; branchcc occurs ; |3427| 
DW$L$_fn_write$18$E:
DW$L$_fn_write$19$B:
        MOVL      XAR6,*-SP[8]
        MOVL      ACC,*-SP[14]
        CMPL      ACC,XAR6              ; |3427| 
        BF        L337,EQ               ; |3427| 
        ; branchcc occurs ; |3427| 
DW$L$_fn_write$19$E:
DW$L$_fn_write$20$B:
        MOVL      XAR3,XAR2             ; |3428| 
        BF        L338,UNC              ; |3428| 
        ; branch occurs ; |3428| 
DW$L$_fn_write$20$E:
L337:    
DW$L$_fn_write$21$B:
        MOVL      ACC,XAR1              ; |3430| 
        ADDL      ACC,*+XAR1[AR0]       ; |3430| 
        MOVL      XAR5,XAR2             ; |3430| 
        ADDB      ACC,#12               ; |3430| 
        MOVL      XAR4,ACC              ; |3430| 
        MOVL      ACC,*-SP[14]          ; |3430| 
        LCR       #___memcpy_ff         ; |3430| 
        ; call occurs [#___memcpy_ff] ; |3430| 
DW$L$_fn_write$21$E:
L338:    
DW$L$_fn_write$22$B:
        MOVB      ACC,#1
        MOVL      *+XAR1[2],ACC         ; |3432| 
        MOVL      XAR6,*-SP[14]         ; |3434| 
        MOVL      ACC,XAR2              ; |3434| 
        ADDL      ACC,XAR6
        MOVL      XAR2,ACC              ; |3434| 
        MOVB      ACC,#8
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |3435| 
        MOVL      ACC,*-SP[14]          ; |3435| 
        ADDL      *+XAR4[0],ACC         ; |3435| 
        MOVL      P,*-SP[8]             ; |3435| 
        MOVL      ACC,*-SP[14]          ; |3435| 
        MOVL      XAR6,*-SP[14]         ; |3436| 
        MOVB      XAR0,#8               ; |3439| 
        SUBL      P,ACC
        MOVL      ACC,*-SP[10]          ; |3436| 
        ADDL      ACC,XAR6
        MOVL      *-SP[8],P             ; |3436| 
        MOVL      *-SP[10],ACC          ; |3437| 
        MOVL      ACC,*+XAR1[AR0]       ; |3439| 
        MOVB      XAR0,#10              ; |3439| 
        ADDL      ACC,*+XAR1[6]         ; |3439| 
        CMPL      ACC,*+XAR1[AR0]       ; |3439| 
        BF        L339,LOS              ; |3439| 
        ; branchcc occurs ; |3439| 
DW$L$_fn_write$22$E:
DW$L$_fn_write$23$B:
        MOVL      *+XAR1[AR0],ACC       ; |3440| 
DW$L$_fn_write$23$E:
L339:    
DW$L$_fn_write$24$B:
        MOVL      ACC,*-SP[8]
	.dwpsn	"common.c",3442,0
        BF        L333,NEQ              ; |3442| 
        ; branchcc occurs ; |3442| 
DW$L$_fn_write$24$E:
L340:    
        MOVL      XAR4,*-SP[6]          ; |3444| 
        MOVL      XAR5,XAR1             ; |3444| 
        LCR       #__f_emptywritecache  ; |3444| 
        ; call occurs [#__f_emptywritecache] ; |3444| 
        CMPB      AL,#0                 ; |3444| 
        BF        L334,EQ               ; |3444| 
        ; branchcc occurs ; |3444| 
        MOVL      XAR0,#914             ; |3446| 
        MOV       *+XAR1[4],#0          ; |3445| 
        MOVL      XAR4,*-SP[6]          ; |3446| 
        MOVL      ACC,*+XAR1[AR0]       ; |3446| 
        LCR       #__f_removechain      ; |3446| 
        ; call occurs [#__f_removechain] ; |3446| 
        BF        L343,UNC              ; |3447| 
        ; branch occurs ; |3447| 
L341:    
        MOVL      XAR5,XAR1             ; |3391| 
        MOV       *+XAR1[4],#0          ; |3389| 
        MOVL      XAR4,*-SP[6]          ; |3391| 
        LCR       #__f_emptywritecache  ; |3391| 
        ; call occurs [#__f_emptywritecache] ; |3391| 
        CMPB      AL,#0                 ; |3391| 
        BF        L342,NEQ              ; |3391| 
        ; branchcc occurs ; |3391| 
        MOVL      XAR0,#914             ; |3391| 
        MOVL      ACC,*+XAR1[AR0]       ; |3391| 
        BF        L342,EQ               ; |3391| 
        ; branchcc occurs ; |3391| 
        MOVL      XAR4,*-SP[6]          ; |3393| 
        MOVL      XAR5,XAR1             ; |3393| 
        MOVB      AL,#0
        LCR       #__f_updatefileentry  ; |3393| 
        ; call occurs [#__f_updatefileentry] ; |3393| 
        CMPB      AL,#0                 ; |3393| 
        BF        L343,NEQ              ; |3393| 
        ; branchcc occurs ; |3393| 
        BF        L334,UNC              ; |3393| 
        ; branch occurs ; |3393| 
L342:    
        MOVL      XAR4,*-SP[6]          ; |3397| 
        MOVL      XAR5,XAR1             ; |3397| 
        MOVB      AL,#1                 ; |3397| 
        LCR       #__f_updatefileentry  ; |3397| 
        ; call occurs [#__f_updatefileentry] ; |3397| 
L343:    
        MOVB      ACC,#0
L344:    
        SUBB      SP,#14                ; |3400| 
        MOVL      XAR3,*--SP            ; |3400| 
        MOVL      XAR2,*--SP            ; |3400| 
        MOVL      XAR1,*--SP            ; |3400| 
	.dwpsn	"common.c",3451,1
        LRETR
        ; return occurs

DW$434	.dwtag  DW_TAG_loop
	.dwattr DW$434, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L333:1:1471518967")
	.dwattr DW$434, DW_AT_begin_file("common.c")
	.dwattr DW$434, DW_AT_begin_line(0xd38)
	.dwattr DW$434, DW_AT_end_line(0xd72)
DW$435	.dwtag  DW_TAG_loop_range
	.dwattr DW$435, DW_AT_low_pc(DW$L$_fn_write$9$B)
	.dwattr DW$435, DW_AT_high_pc(DW$L$_fn_write$9$E)
DW$436	.dwtag  DW_TAG_loop_range
	.dwattr DW$436, DW_AT_low_pc(DW$L$_fn_write$10$B)
	.dwattr DW$436, DW_AT_high_pc(DW$L$_fn_write$10$E)
DW$437	.dwtag  DW_TAG_loop_range
	.dwattr DW$437, DW_AT_low_pc(DW$L$_fn_write$11$B)
	.dwattr DW$437, DW_AT_high_pc(DW$L$_fn_write$11$E)
DW$438	.dwtag  DW_TAG_loop_range
	.dwattr DW$438, DW_AT_low_pc(DW$L$_fn_write$12$B)
	.dwattr DW$438, DW_AT_high_pc(DW$L$_fn_write$12$E)
DW$439	.dwtag  DW_TAG_loop_range
	.dwattr DW$439, DW_AT_low_pc(DW$L$_fn_write$13$B)
	.dwattr DW$439, DW_AT_high_pc(DW$L$_fn_write$13$E)
DW$440	.dwtag  DW_TAG_loop_range
	.dwattr DW$440, DW_AT_low_pc(DW$L$_fn_write$16$B)
	.dwattr DW$440, DW_AT_high_pc(DW$L$_fn_write$16$E)
DW$441	.dwtag  DW_TAG_loop_range
	.dwattr DW$441, DW_AT_low_pc(DW$L$_fn_write$17$B)
	.dwattr DW$441, DW_AT_high_pc(DW$L$_fn_write$17$E)
DW$442	.dwtag  DW_TAG_loop_range
	.dwattr DW$442, DW_AT_low_pc(DW$L$_fn_write$18$B)
	.dwattr DW$442, DW_AT_high_pc(DW$L$_fn_write$18$E)
DW$443	.dwtag  DW_TAG_loop_range
	.dwattr DW$443, DW_AT_low_pc(DW$L$_fn_write$19$B)
	.dwattr DW$443, DW_AT_high_pc(DW$L$_fn_write$19$E)
DW$444	.dwtag  DW_TAG_loop_range
	.dwattr DW$444, DW_AT_low_pc(DW$L$_fn_write$20$B)
	.dwattr DW$444, DW_AT_high_pc(DW$L$_fn_write$20$E)
DW$445	.dwtag  DW_TAG_loop_range
	.dwattr DW$445, DW_AT_low_pc(DW$L$_fn_write$21$B)
	.dwattr DW$445, DW_AT_high_pc(DW$L$_fn_write$21$E)
DW$446	.dwtag  DW_TAG_loop_range
	.dwattr DW$446, DW_AT_low_pc(DW$L$_fn_write$22$B)
	.dwattr DW$446, DW_AT_high_pc(DW$L$_fn_write$22$E)
DW$447	.dwtag  DW_TAG_loop_range
	.dwattr DW$447, DW_AT_low_pc(DW$L$_fn_write$23$B)
	.dwattr DW$447, DW_AT_high_pc(DW$L$_fn_write$23$E)
DW$448	.dwtag  DW_TAG_loop_range
	.dwattr DW$448, DW_AT_low_pc(DW$L$_fn_write$24$B)
	.dwattr DW$448, DW_AT_high_pc(DW$L$_fn_write$24$E)
	.dwendtag DW$434

	.dwattr DW$428, DW_AT_end_file("common.c")
	.dwattr DW$428, DW_AT_end_line(0xd7b)
	.dwattr DW$428, DW_AT_end_column(0x01)
	.dwendtag DW$428

	.sect	".text"
	.global	_fn_seek

DW$449	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_seek"), DW_AT_symbol_name("_fn_seek")
	.dwattr DW$449, DW_AT_low_pc(_fn_seek)
	.dwattr DW$449, DW_AT_high_pc(0x00)
	.dwattr DW$449, DW_AT_begin_file("common.c")
	.dwattr DW$449, DW_AT_begin_line(0xd90)
	.dwattr DW$449, DW_AT_begin_column(0x05)
	.dwattr DW$449, DW_AT_frame_base[DW_OP_breg20 -14]
	.dwattr DW$449, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",3472,69

;***************************************************************
;* FNAME: _fn_seek                      FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  4 Auto,  6 SOE     *
;***************************************************************

_fn_seek:
;* AR4   assigned to _fm
DW$450	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$450, DW_AT_type(*DW$T$106)
	.dwattr DW$450, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _filehandle
DW$451	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filehandle"), DW_AT_symbol_name("_filehandle")
	.dwattr DW$451, DW_AT_type(*DW$T$179)
	.dwattr DW$451, DW_AT_location[DW_OP_reg14]
;* AL    assigned to _offset
DW$452	.dwtag  DW_TAG_formal_parameter, DW_AT_name("offset"), DW_AT_symbol_name("_offset")
	.dwattr DW$452, DW_AT_type(*DW$T$12)
	.dwattr DW$452, DW_AT_location[DW_OP_reg0]
DW$453	.dwtag  DW_TAG_formal_parameter, DW_AT_name("whence"), DW_AT_symbol_name("_whence")
	.dwattr DW$453, DW_AT_type(*DW$T$12)
	.dwattr DW$453, DW_AT_location[DW_OP_breg20 -16]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#6
        MOVL      XAR3,XAR4             ; |3472| 
        MOVL      XAR4,XAR5             ; |3473| 
        MOVL      XAR1,ACC              ; |3472| 
        MOVL      XAR2,*-SP[16]         ; |3472| 
        LCR       #__f_check_handle     ; |3473| 
        ; call occurs [#__f_check_handle] ; |3473| 
        MOVL      *-SP[6],XAR4          ; |3473| 
        MOVL      ACC,*-SP[6]           ; |3473| 
        BF        L345,EQ               ; |3473| 
        ; branchcc occurs ; |3473| 
        MOVL      XAR4,*-SP[6]
        MOV       AL,*+XAR4[4]          ; |3479| 
        CMPB      AL,#1                 ; |3479| 
        BF        L346,EQ               ; |3479| 
        ; branchcc occurs ; |3479| 
        CMPB      AL,#2                 ; |3479| 
        BF        L346,EQ               ; |3479| 
        ; branchcc occurs ; |3479| 
        CMPB      AL,#3                 ; |3479| 
        BF        L346,EQ               ; |3479| 
        ; branchcc occurs ; |3479| 
        CMPB      AL,#4                 ; |3479| 
        BF        L346,EQ               ; |3479| 
        ; branchcc occurs ; |3479| 
        CMPB      AL,#5                 ; |3479| 
        BF        L346,EQ               ; |3479| 
        ; branchcc occurs ; |3479| 
        CMPB      AL,#6                 ; |3479| 
        BF        L346,EQ               ; |3479| 
        ; branchcc occurs ; |3479| 
L345:    
        MOVB      AL,#8                 ; |3479| 
        BF        L352,UNC              ; |3479| 
        ; branch occurs ; |3479| 
L346:    
        MOVL      XAR4,*-SP[6]
        MOVZ      AR5,SP                ; |3481| 
        MOV       AL,*+XAR4[5]          ; |3481| 
        MOVL      XAR4,XAR3             ; |3481| 
        SUBB      XAR5,#4               ; |3481| 
        LCR       #__f_getvolume        ; |3481| 
        ; call occurs [#__f_getvolume] ; |3481| 
        CMPB      AL,#0                 ; |3481| 
        BF        L352,NEQ              ; |3481| 
        ; branchcc occurs ; |3481| 
        MOVL      ACC,XAR2              ; |3484| 
        BF        L347,EQ               ; |3484| 
        ; branchcc occurs ; |3484| 
        MOVB      ACC,#1
        CMPL      ACC,XAR2              ; |3484| 
        BF        L349,EQ               ; |3484| 
        ; branchcc occurs ; |3484| 
        MOVB      ACC,#2
        CMPL      ACC,XAR2              ; |3484| 
        BF        L350,EQ               ; |3484| 
        ; branchcc occurs ; |3484| 
        BF        L351,UNC              ; |3484| 
        ; branch occurs ; |3484| 
L347:    
        MOVL      ACC,*-SP[6]
        MOVL      *-SP[2],ACC           ; |3487| 
        MOVL      ACC,XAR1              ; |3487| 
L348:    
        MOVL      XAR4,*-SP[4]          ; |3487| 
        MOVL      XAR5,XAR3             ; |3487| 
        LCR       #__f_fseek            ; |3487| 
        ; call occurs [#__f_fseek] ; |3487| 
        BF        L352,UNC              ; |3487| 
        ; branch occurs ; |3487| 
L349:    
        MOVL      ACC,*-SP[6]
        MOVL      *-SP[2],ACC           ; |3485| 
        MOVL      XAR4,*-SP[6]          ; |3485| 
        MOVB      XAR0,#8               ; |3485| 
        MOVL      ACC,*+XAR4[AR0]       ; |3485| 
        MOVL      XAR4,*-SP[6]          ; |3485| 
        ADDL      ACC,*+XAR4[6]         ; |3485| 
        ADDL      ACC,XAR1
        BF        L348,UNC              ; |3485| 
        ; branch occurs ; |3485| 
L350:    
        MOVL      ACC,*-SP[6]
        MOVL      *-SP[2],ACC           ; |3486| 
        MOVL      XAR4,*-SP[6]          ; |3486| 
        MOVB      XAR0,#10              ; |3486| 
        MOVL      ACC,XAR1              ; |3486| 
        ADDL      ACC,*+XAR4[AR0]       ; |3486| 
        BF        L348,UNC              ; |3486| 
        ; branch occurs ; |3486| 
L351:    
        MOVB      AL,#11                ; |3489| 
L352:    
        SUBB      SP,#6                 ; |3489| 
        MOVL      XAR3,*--SP            ; |3489| 
        MOVL      XAR2,*--SP            ; |3489| 
        MOVL      XAR1,*--SP            ; |3489| 
	.dwpsn	"common.c",3490,1
        LRETR
        ; return occurs
	.dwattr DW$449, DW_AT_end_file("common.c")
	.dwattr DW$449, DW_AT_end_line(0xda2)
	.dwattr DW$449, DW_AT_end_column(0x01)
	.dwendtag DW$449

	.sect	".text"
	.global	_fn_tell

DW$454	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_tell"), DW_AT_symbol_name("_fn_tell")
	.dwattr DW$454, DW_AT_low_pc(_fn_tell)
	.dwattr DW$454, DW_AT_high_pc(0x00)
	.dwattr DW$454, DW_AT_begin_file("common.c")
	.dwattr DW$454, DW_AT_begin_line(0xdb4)
	.dwattr DW$454, DW_AT_begin_column(0x06)
	.dwattr DW$454, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$454, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",3508,34

;***************************************************************
;* FNAME: _fn_tell                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_fn_tell:
;* AR4   assigned to _filehandle
DW$455	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filehandle"), DW_AT_symbol_name("_filehandle")
	.dwattr DW$455, DW_AT_type(*DW$T$179)
	.dwattr DW$455, DW_AT_location[DW_OP_reg12]
        LCR       #__f_check_handle     ; |3509| 
        ; call occurs [#__f_check_handle] ; |3509| 
        MOVL      ACC,XAR4              ; |3509| 
        BF        L354,EQ               ; |3509| 
        ; branchcc occurs ; |3509| 
        MOV       AL,*+XAR4[4]          ; |3513| 
        CMPB      AL,#1                 ; |3513| 
        BF        L353,EQ               ; |3513| 
        ; branchcc occurs ; |3513| 
        CMPB      AL,#2                 ; |3513| 
        BF        L353,EQ               ; |3513| 
        ; branchcc occurs ; |3513| 
        CMPB      AL,#3                 ; |3513| 
        BF        L353,EQ               ; |3513| 
        ; branchcc occurs ; |3513| 
        CMPB      AL,#4                 ; |3513| 
        BF        L353,EQ               ; |3513| 
        ; branchcc occurs ; |3513| 
        CMPB      AL,#5                 ; |3513| 
        BF        L353,EQ               ; |3513| 
        ; branchcc occurs ; |3513| 
        CMPB      AL,#6                 ; |3513| 
        BF        L354,NEQ              ; |3513| 
        ; branchcc occurs ; |3513| 
L353:    
        MOVB      XAR0,#8               ; |3515| 
        MOVL      ACC,*+XAR4[AR0]       ; |3515| 
        ADDL      ACC,*+XAR4[6]         ; |3515| 
        BF        L355,UNC              ; |3515| 
        ; branch occurs ; |3515| 
L354:    
        MOVB      ACC,#0
L355:    
	.dwpsn	"common.c",3516,1
        LRETR
        ; return occurs
	.dwattr DW$454, DW_AT_end_file("common.c")
	.dwattr DW$454, DW_AT_end_line(0xdbc)
	.dwattr DW$454, DW_AT_end_column(0x01)
	.dwendtag DW$454

	.sect	".text"
	.global	_fn_eof

DW$456	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_eof"), DW_AT_symbol_name("_fn_eof")
	.dwattr DW$456, DW_AT_low_pc(_fn_eof)
	.dwattr DW$456, DW_AT_high_pc(0x00)
	.dwattr DW$456, DW_AT_begin_file("common.c")
	.dwattr DW$456, DW_AT_begin_line(0xdd0)
	.dwattr DW$456, DW_AT_begin_column(0x05)
	.dwattr DW$456, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$456, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",3536,32

;***************************************************************
;* FNAME: _fn_eof                       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_fn_eof:
;* AR4   assigned to _filehandle
DW$457	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filehandle"), DW_AT_symbol_name("_filehandle")
	.dwattr DW$457, DW_AT_type(*DW$T$179)
	.dwattr DW$457, DW_AT_location[DW_OP_reg12]
        LCR       #__f_check_handle     ; |3537| 
        ; call occurs [#__f_check_handle] ; |3537| 
        MOVL      ACC,XAR4              ; |3537| 
        BF        L357,EQ               ; |3537| 
        ; branchcc occurs ; |3537| 
        MOVB      XAR0,#8               ; |3537| 
        MOVL      ACC,*+XAR4[AR0]       ; |3537| 
        MOVB      XAR0,#10              ; |3537| 
        ADDL      ACC,*+XAR4[6]         ; |3537| 
        CMPL      ACC,*+XAR4[AR0]       ; |3537| 
        BF        L356,HIS              ; |3537| 
        ; branchcc occurs ; |3537| 
        MOVB      AL,#0
        BF        L358,UNC              ; |3537| 
        ; branch occurs ; |3537| 
L356:    
        MOVB      AL,#9                 ; |3537| 
        BF        L358,UNC              ; |3537| 
        ; branch occurs ; |3537| 
L357:    
        MOVB      AL,#8                 ; |3537| 
L358:    
	.dwpsn	"common.c",3542,1
        LRETR
        ; return occurs
	.dwattr DW$456, DW_AT_end_file("common.c")
	.dwattr DW$456, DW_AT_end_line(0xdd6)
	.dwattr DW$456, DW_AT_end_column(0x01)
	.dwendtag DW$456

	.sect	".text"
	.global	_fn_rewind

DW$458	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_rewind"), DW_AT_symbol_name("_fn_rewind")
	.dwattr DW$458, DW_AT_low_pc(_fn_rewind)
	.dwattr DW$458, DW_AT_high_pc(0x00)
	.dwattr DW$458, DW_AT_begin_file("common.c")
	.dwattr DW$458, DW_AT_begin_line(0xde9)
	.dwattr DW$458, DW_AT_begin_column(0x05)
	.dwattr DW$458, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$458, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",3561,47

;***************************************************************
;* FNAME: _fn_rewind                    FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_fn_rewind:
;* AR4   assigned to _fm
DW$459	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$459, DW_AT_type(*DW$T$106)
	.dwattr DW$459, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _filehandle
DW$460	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filehandle"), DW_AT_symbol_name("_filehandle")
	.dwattr DW$460, DW_AT_type(*DW$T$179)
	.dwattr DW$460, DW_AT_location[DW_OP_reg14]
        ADDB      SP,#2
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |3562| 
        LCR       #_fn_seek             ; |3562| 
        ; call occurs [#_fn_seek] ; |3562| 
        SUBB      SP,#2                 ; |3562| 
	.dwpsn	"common.c",3563,1
        LRETR
        ; return occurs
	.dwattr DW$458, DW_AT_end_file("common.c")
	.dwattr DW$458, DW_AT_end_line(0xdeb)
	.dwattr DW$458, DW_AT_end_column(0x01)
	.dwendtag DW$458

	.sect	".text"
	.global	_fn_putc

DW$461	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_putc"), DW_AT_symbol_name("_fn_putc")
	.dwattr DW$461, DW_AT_low_pc(_fn_putc)
	.dwattr DW$461, DW_AT_high_pc(0x00)
	.dwattr DW$461, DW_AT_begin_file("common.c")
	.dwattr DW$461, DW_AT_begin_line(0xdfe)
	.dwattr DW$461, DW_AT_begin_column(0x05)
	.dwattr DW$461, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$461, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",3582,52

;***************************************************************
;* FNAME: _fn_putc                      FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_fn_putc:
;* AR4   assigned to _fm
DW$462	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$462, DW_AT_type(*DW$T$106)
	.dwattr DW$462, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _ch
DW$463	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ch"), DW_AT_symbol_name("_ch")
	.dwattr DW$463, DW_AT_type(*DW$T$10)
	.dwattr DW$463, DW_AT_location[DW_OP_reg0]
;* AR5   assigned to _filehandle
DW$464	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filehandle"), DW_AT_symbol_name("_filehandle")
	.dwattr DW$464, DW_AT_type(*DW$T$179)
	.dwattr DW$464, DW_AT_location[DW_OP_reg14]
        ADDB      SP,#6
        MOV       *-SP[5],AL            ; |3583| 
        MOVB      ACC,#1
        MOVL      *-SP[2],ACC           ; |3584| 
        MOVL      *-SP[4],XAR5          ; |3584| 
        MOVZ      AR5,SP                ; |3584| 
        SUBB      XAR5,#5               ; |3584| 
        LCR       #_fn_write            ; |3584| 
        ; call occurs [#_fn_write] ; |3584| 
        MOVL      XAR6,ACC              ; |3584| 
        MOVB      ACC,#1
        CMPL      ACC,XAR6              ; |3584| 
        BF        L359,NEQ              ; |3584| 
        ; branchcc occurs ; |3584| 
        MOV       AL,*-SP[5]            ; |3584| 
        BF        L360,UNC              ; |3584| 
        ; branch occurs ; |3584| 
L359:    
        MOV       AL,#-1                ; |3584| 
L360:    
        SUBB      SP,#6                 ; |3584| 
	.dwpsn	"common.c",3586,1
        LRETR
        ; return occurs
	.dwattr DW$461, DW_AT_end_file("common.c")
	.dwattr DW$461, DW_AT_end_line(0xe02)
	.dwattr DW$461, DW_AT_end_column(0x01)
	.dwendtag DW$461

	.sect	".text"
	.global	_fn_getc

DW$465	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_getc"), DW_AT_symbol_name("_fn_getc")
	.dwattr DW$465, DW_AT_low_pc(_fn_getc)
	.dwattr DW$465, DW_AT_high_pc(0x00)
	.dwattr DW$465, DW_AT_begin_file("common.c")
	.dwattr DW$465, DW_AT_begin_line(0xe14)
	.dwattr DW$465, DW_AT_begin_column(0x05)
	.dwattr DW$465, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$465, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",3604,45

;***************************************************************
;* FNAME: _fn_getc                      FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_fn_getc:
;* AR4   assigned to _fm
DW$466	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$466, DW_AT_type(*DW$T$106)
	.dwattr DW$466, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _filehandle
DW$467	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filehandle"), DW_AT_symbol_name("_filehandle")
	.dwattr DW$467, DW_AT_type(*DW$T$179)
	.dwattr DW$467, DW_AT_location[DW_OP_reg14]
        ADDB      SP,#6
        MOVB      ACC,#1
        MOVL      *-SP[2],ACC           ; |3606| 
        MOVL      *-SP[4],XAR5          ; |3606| 
        MOVZ      AR5,SP                ; |3606| 
        SUBB      XAR5,#5               ; |3606| 
        LCR       #_fn_read             ; |3606| 
        ; call occurs [#_fn_read] ; |3606| 
        MOVL      XAR6,ACC              ; |3606| 
        MOVB      ACC,#1
        CMPL      ACC,XAR6              ; |3606| 
        BF        L361,NEQ              ; |3606| 
        ; branchcc occurs ; |3606| 
        MOV       AL,*-SP[5]            ; |3606| 
        BF        L362,UNC              ; |3606| 
        ; branch occurs ; |3606| 
L361:    
        MOV       AL,#-1                ; |3606| 
L362:    
        SUBB      SP,#6                 ; |3606| 
	.dwpsn	"common.c",3608,1
        LRETR
        ; return occurs
	.dwattr DW$465, DW_AT_end_file("common.c")
	.dwattr DW$465, DW_AT_end_line(0xe18)
	.dwattr DW$465, DW_AT_end_column(0x01)
	.dwendtag DW$465

	.sect	".text"
	.global	_fnSetTask

DW$468	.dwtag  DW_TAG_subprogram, DW_AT_name("fnSetTask"), DW_AT_symbol_name("_fnSetTask")
	.dwattr DW$468, DW_AT_low_pc(_fnSetTask)
	.dwattr DW$468, DW_AT_high_pc(0x00)
	.dwattr DW$468, DW_AT_begin_file("common.c")
	.dwattr DW$468, DW_AT_begin_line(0xe2e)
	.dwattr DW$468, DW_AT_begin_column(0x05)
	.dwattr DW$468, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$468, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",3630,29

;***************************************************************
;* FNAME: _fnSetTask                    FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_fnSetTask:
;* AR4   assigned to _fm
DW$469	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$469, DW_AT_type(*DW$T$185)
	.dwattr DW$469, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        MOVL      XAR1,XAR4             ; |3630| 
        LCR       #_fn_gettaskID        ; |3632| 
        ; call occurs [#_fn_gettaskID] ; |3632| 
        MOVL      XAR7,ACC              ; |3632| 
	.dwpsn	"common.c",3634,0
        MOVB      XAR6,#0
L363:    
DW$L$_fnSetTask$2$B:
        MOV       T,AR6
        MOVL      XAR4,#_g_multi        ; |3642| 
        MPYB      ACC,T,#26             ; |3642| 
        ADDL      XAR4,ACC
        MOVL      ACC,XAR7              ; |3642| 
        CMPL      ACC,*+XAR4[0]         ; |3642| 
        BF        L367,EQ               ; |3642| 
        ; branchcc occurs ; |3642| 
DW$L$_fnSetTask$2$E:
DW$L$_fnSetTask$3$B:
        MOV       AL,AR6
        ADDB      AL,#1                 ; |3634| 
        MOVZ      AR6,AL                ; |3634| 
	.dwpsn	"common.c",3648,0
        BF        L363,LEQ              ; |3634| 
        ; branchcc occurs ; |3634| 
DW$L$_fnSetTask$3$E:
	.dwpsn	"common.c",3650,0
        MOVB      XAR6,#0
L364:    
DW$L$_fnSetTask$5$B:
        MOV       T,AR6
        MOVL      XAR4,#_g_multi        ; |3668| 
        MPYB      ACC,T,#26             ; |3668| 
        ADDL      XAR4,ACC
        MOVL      ACC,*+XAR4[0]         ; |3668| 
        BF        L365,EQ               ; |3668| 
        ; branchcc occurs ; |3668| 
DW$L$_fnSetTask$5$E:
DW$L$_fnSetTask$6$B:
        MOV       AL,AR6
        ADDB      AL,#1                 ; |3650| 
        MOVZ      AR6,AL                ; |3650| 
	.dwpsn	"common.c",3680,0
        BF        L364,LEQ              ; |3650| 
        ; branchcc occurs ; |3650| 
DW$L$_fnSetTask$6$E:
        MOVB      AL,#1                 ; |3682| 
        BF        L368,UNC              ; |3682| 
        ; branch occurs ; |3682| 
L365:    
        MPYB      ACC,T,#26             ; |3669| 
        MOVL      XAR4,#_g_multi        ; |3669| 
        ADDL      XAR4,ACC
        MOVL      *+XAR4[0],XAR7        ; |3669| 
        MOVB      XAR7,#0
	.dwpsn	"common.c",3671,0
        MOV       *+XAR4[2],#0          ; |3670| 
L366:    
DW$L$_fnSetTask$9$B:
        MOV       T,AR6
        MOVL      XAR4,#_g_multi+3      ; |3672| 
        MPYB      ACC,T,#26             ; |3672| 
        ADDL      XAR4,ACC
        MOV       T,AR7                 ; |3672| 
        MPYB      ACC,T,#20             ; |3672| 
        ADDL      XAR4,ACC
        MOV       AL,AR7                ; |3672| 
        ADDB      AL,#1                 ; |3671| 
        MOVZ      AR7,AL                ; |3671| 
        MOV       *+XAR4[0],#0          ; |3672| 
	.dwpsn	"common.c",3673,0
        BF        L366,LEQ              ; |3671| 
        ; branchcc occurs ; |3671| 
DW$L$_fnSetTask$9$E:
        MOV       T,AR6
        MOVL      XAR4,#_g_multi        ; |3674| 
        MPYB      ACC,T,#26             ; |3674| 
        ADDL      XAR4,ACC
L367:    
        MOVB      ACC,#0
        MOVB      XAR0,#24              ; |3675| 
        MOVL      *+XAR1[0],XAR4        ; |3674| 
        MOVL      *+XAR4[AR0],ACC       ; |3675| 
        MOVB      AL,#0
L368:    
        MOVL      XAR1,*--SP            ; |3677| 
	.dwpsn	"common.c",3683,1
        LRETR
        ; return occurs

DW$470	.dwtag  DW_TAG_loop
	.dwattr DW$470, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L366:1:1471518967")
	.dwattr DW$470, DW_AT_begin_file("common.c")
	.dwattr DW$470, DW_AT_begin_line(0xe57)
	.dwattr DW$470, DW_AT_end_line(0xe59)
DW$471	.dwtag  DW_TAG_loop_range
	.dwattr DW$471, DW_AT_low_pc(DW$L$_fnSetTask$9$B)
	.dwattr DW$471, DW_AT_high_pc(DW$L$_fnSetTask$9$E)
	.dwendtag DW$470


DW$472	.dwtag  DW_TAG_loop
	.dwattr DW$472, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L364:1:1471518967")
	.dwattr DW$472, DW_AT_begin_file("common.c")
	.dwattr DW$472, DW_AT_begin_line(0xe42)
	.dwattr DW$472, DW_AT_end_line(0xe60)
DW$473	.dwtag  DW_TAG_loop_range
	.dwattr DW$473, DW_AT_low_pc(DW$L$_fnSetTask$5$B)
	.dwattr DW$473, DW_AT_high_pc(DW$L$_fnSetTask$5$E)
DW$474	.dwtag  DW_TAG_loop_range
	.dwattr DW$474, DW_AT_low_pc(DW$L$_fnSetTask$6$B)
	.dwattr DW$474, DW_AT_high_pc(DW$L$_fnSetTask$6$E)
	.dwendtag DW$472


DW$475	.dwtag  DW_TAG_loop
	.dwattr DW$475, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L363:1:1471518967")
	.dwattr DW$475, DW_AT_begin_file("common.c")
	.dwattr DW$475, DW_AT_begin_line(0xe32)
	.dwattr DW$475, DW_AT_end_line(0xe40)
DW$476	.dwtag  DW_TAG_loop_range
	.dwattr DW$476, DW_AT_low_pc(DW$L$_fnSetTask$2$B)
	.dwattr DW$476, DW_AT_high_pc(DW$L$_fnSetTask$2$E)
DW$477	.dwtag  DW_TAG_loop_range
	.dwattr DW$477, DW_AT_low_pc(DW$L$_fnSetTask$3$B)
	.dwattr DW$477, DW_AT_high_pc(DW$L$_fnSetTask$3$E)
	.dwendtag DW$475

	.dwattr DW$468, DW_AT_end_file("common.c")
	.dwattr DW$468, DW_AT_end_line(0xe63)
	.dwattr DW$468, DW_AT_end_column(0x01)
	.dwendtag DW$468

	.sect	".text"
	.global	_f_releaseFS

DW$478	.dwtag  DW_TAG_subprogram, DW_AT_name("f_releaseFS"), DW_AT_symbol_name("_f_releaseFS")
	.dwattr DW$478, DW_AT_low_pc(_f_releaseFS)
	.dwattr DW$478, DW_AT_high_pc(0x00)
	.dwattr DW$478, DW_AT_begin_file("common.c")
	.dwattr DW$478, DW_AT_begin_line(0xe73)
	.dwattr DW$478, DW_AT_begin_column(0x06)
	.dwattr DW$478, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$478, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",3699,27

;***************************************************************
;* FNAME: _f_releaseFS                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_f_releaseFS:
;* AL    assigned to _ID
DW$479	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ID"), DW_AT_symbol_name("_ID")
	.dwattr DW$479, DW_AT_type(*DW$T$12)
	.dwattr DW$479, DW_AT_location[DW_OP_reg0]
        MOVL      XAR7,ACC              ; |3699| 
	.dwpsn	"common.c",3701,0
        MOVB      XAR6,#0
L369:    
DW$L$_f_releaseFS$2$B:
        MOV       T,AR6
        MOVL      XAR4,#_g_multi        ; |3709| 
        MPYB      P,T,#26               ; |3709| 
        MOVL      ACC,P                 ; |3709| 
        ADDL      XAR4,ACC
        MOVL      ACC,XAR7              ; |3709| 
        CMPL      ACC,*+XAR4[0]         ; |3709| 
        BF        L370,EQ               ; |3709| 
        ; branchcc occurs ; |3709| 
DW$L$_f_releaseFS$2$E:
DW$L$_f_releaseFS$3$B:
        MOV       AL,AR6
        ADDB      AL,#1                 ; |3701| 
        MOVZ      AR6,AL                ; |3701| 
	.dwpsn	"common.c",3714,0
        BF        L369,LEQ              ; |3701| 
        ; branchcc occurs ; |3701| 
DW$L$_f_releaseFS$3$E:
        BF        L371,UNC              ; |3701| 
        ; branch occurs ; |3701| 
L370:    
        MPYB      ACC,T,#26             ; |3710| 
        MOVL      XAR4,#_g_multi        ; |3710| 
        ADDL      XAR4,ACC
        MOVB      ACC,#0
        MOVL      *+XAR4[0],ACC         ; |3710| 
L371:    
	.dwpsn	"common.c",3715,1
        LRETR
        ; return occurs

DW$480	.dwtag  DW_TAG_loop
	.dwattr DW$480, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L369:1:1471518967")
	.dwattr DW$480, DW_AT_begin_file("common.c")
	.dwattr DW$480, DW_AT_begin_line(0xe75)
	.dwattr DW$480, DW_AT_end_line(0xe82)
DW$481	.dwtag  DW_TAG_loop_range
	.dwattr DW$481, DW_AT_low_pc(DW$L$_f_releaseFS$2$B)
	.dwattr DW$481, DW_AT_high_pc(DW$L$_f_releaseFS$2$E)
DW$482	.dwtag  DW_TAG_loop_range
	.dwattr DW$482, DW_AT_low_pc(DW$L$_f_releaseFS$3$B)
	.dwattr DW$482, DW_AT_high_pc(DW$L$_f_releaseFS$3$E)
	.dwendtag DW$480

	.dwattr DW$478, DW_AT_end_file("common.c")
	.dwattr DW$478, DW_AT_end_line(0xe83)
	.dwattr DW$478, DW_AT_end_column(0x01)
	.dwendtag DW$478

	.sect	".text"
	.global	__f_mutex_get

DW$483	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_mutex_get"), DW_AT_symbol_name("__f_mutex_get")
	.dwattr DW$483, DW_AT_low_pc(__f_mutex_get)
	.dwattr DW$483, DW_AT_high_pc(0x00)
	.dwattr DW$483, DW_AT_begin_file("common.c")
	.dwattr DW$483, DW_AT_begin_line(0xe94)
	.dwattr DW$483, DW_AT_begin_column(0x05)
	.dwattr DW$483, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$483, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",3732,44

;***************************************************************
;* FNAME: __f_mutex_get                 FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

__f_mutex_get:
;* AR4   assigned to _fm
DW$484	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$484, DW_AT_type(*DW$T$106)
	.dwattr DW$484, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _vi
DW$485	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$485, DW_AT_type(*DW$T$92)
	.dwattr DW$485, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        MOVL      ACC,XAR5              ; |3732| 
        MOVL      *SP++,XAR2
        MOVL      XAR2,XAR4             ; |3732| 
        MOVL      XAR4,#1146            ; |3733| 
        ADDL      XAR4,ACC
        MOVB      XAR0,#24              ; |3733| 
        MOVL      XAR6,*+XAR2[AR0]      ; |3733| 
        MOVL      ACC,XAR4              ; |3733| 
        CMPL      ACC,XAR6              ; |3733| 
        MOVL      XAR1,XAR4             ; |3733| 
        BF        L373,EQ               ; |3733| 
        ; branchcc occurs ; |3733| 
        MOVL      XAR4,XAR1
        LCR       #_f_mutex_get         ; |3737| 
        ; call occurs [#_f_mutex_get] ; |3737| 
        CMPB      AL,#0                 ; |3737| 
        BF        L372,EQ               ; |3737| 
        ; branchcc occurs ; |3737| 
        MOVB      AL,#22                ; |3742| 
        BF        L374,UNC              ; |3742| 
        ; branch occurs ; |3742| 
L372:    
        MOVB      XAR0,#24              ; |3738| 
        MOVL      *+XAR2[AR0],XAR1      ; |3738| 
L373:    
        MOVB      AL,#0
L374:    
        MOVL      XAR2,*--SP            ; |3739| 
        MOVL      XAR1,*--SP            ; |3739| 
	.dwpsn	"common.c",3743,1
        LRETR
        ; return occurs
	.dwattr DW$483, DW_AT_end_file("common.c")
	.dwattr DW$483, DW_AT_end_line(0xe9f)
	.dwattr DW$483, DW_AT_end_column(0x01)
	.dwendtag DW$483

	.sect	".text"
	.global	__f_mutex_put

DW$486	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_mutex_put"), DW_AT_symbol_name("__f_mutex_put")
	.dwattr DW$486, DW_AT_low_pc(__f_mutex_put)
	.dwattr DW$486, DW_AT_high_pc(0x00)
	.dwattr DW$486, DW_AT_begin_file("common.c")
	.dwattr DW$486, DW_AT_begin_line(0xeaa)
	.dwattr DW$486, DW_AT_begin_column(0x06)
	.dwattr DW$486, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$486, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",3754,32

;***************************************************************
;* FNAME: __f_mutex_put                 FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

__f_mutex_put:
;* AR4   assigned to _fm
DW$487	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$487, DW_AT_type(*DW$T$106)
	.dwattr DW$487, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        MOVL      XAR1,XAR4             ; |3754| 
        MOVB      XAR0,#24              ; |3755| 
        MOVL      ACC,*+XAR1[AR0]       ; |3755| 
        BF        L375,EQ               ; |3755| 
        ; branchcc occurs ; |3755| 
        MOVL      XAR4,ACC              ; |3756| 
        LCR       #_f_mutex_put         ; |3756| 
        ; call occurs [#_f_mutex_put] ; |3756| 
        MOVB      ACC,#0
        MOVB      XAR0,#24              ; |3757| 
        MOVL      *+XAR1[AR0],ACC       ; |3757| 
L375:    
        MOVL      XAR1,*--SP
	.dwpsn	"common.c",3759,1
        LRETR
        ; return occurs
	.dwattr DW$486, DW_AT_end_file("common.c")
	.dwattr DW$486, DW_AT_end_line(0xeaf)
	.dwattr DW$486, DW_AT_end_column(0x01)
	.dwendtag DW$486

	.sect	".text"
	.global	_fn_get_oem

DW$488	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_get_oem"), DW_AT_symbol_name("_fn_get_oem")
	.dwattr DW$488, DW_AT_low_pc(_fn_get_oem)
	.dwattr DW$488, DW_AT_high_pc(0x00)
	.dwattr DW$488, DW_AT_begin_file("common.c")
	.dwattr DW$488, DW_AT_begin_line(0xeb9)
	.dwattr DW$488, DW_AT_begin_column(0x05)
	.dwattr DW$488, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$488, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",3770,1

;***************************************************************
;* FNAME: _fn_get_oem                   FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  4 SOE     *
;***************************************************************

_fn_get_oem:
;* AR4   assigned to _fm
DW$489	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$489, DW_AT_type(*DW$T$106)
	.dwattr DW$489, DW_AT_location[DW_OP_reg12]
DW$490	.dwtag  DW_TAG_formal_parameter, DW_AT_name("drivenum"), DW_AT_symbol_name("_drivenum")
	.dwattr DW$490, DW_AT_type(*DW$T$10)
	.dwattr DW$490, DW_AT_location[DW_OP_breg20 -9]
;* AR5   assigned to _str
DW$491	.dwtag  DW_TAG_formal_parameter, DW_AT_name("str"), DW_AT_symbol_name("_str")
	.dwattr DW$491, DW_AT_type(*DW$T$53)
	.dwattr DW$491, DW_AT_location[DW_OP_reg14]
;* AL    assigned to _maxlen
DW$492	.dwtag  DW_TAG_formal_parameter, DW_AT_name("maxlen"), DW_AT_symbol_name("_maxlen")
	.dwattr DW$492, DW_AT_type(*DW$T$12)
	.dwattr DW$492, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR3
        ADDB      SP,#2
        MOVL      XAR3,XAR5             ; |3770| 
        MOVZ      AR5,SP                ; |3775| 
        MOVL      XAR1,ACC              ; |3770| 
        MOV       AL,*-SP[9]            ; |3770| 
        SUBB      XAR5,#2               ; |3775| 
        LCR       #__f_getvolume        ; |3775| 
        ; call occurs [#__f_getvolume] ; |3775| 
        CMPB      AL,#0                 ; |3775| 
        BF        L381,NEQ              ; |3775| 
        ; branchcc occurs ; |3775| 
        MOVL      ACC,XAR1
        BF        L380,EQ               ; |3777| 
        ; branchcc occurs ; |3777| 
        MOVB      ACC,#8
        CMPL      ACC,XAR1              ; |3779| 
        BF        L376,HIS              ; |3779| 
        ; branchcc occurs ; |3779| 
        MOVB      XAR1,#8
        BF        L377,UNC              ; |3779| 
        ; branch occurs ; |3779| 
L376:    
        SUBB      XAR1,#1               ; |3779| 
L377:    
        MOVL      ACC,XAR1              ; |3779| 
        MOVB      XAR6,#0
        BF        L379,LEQ              ; |3781| 
        ; branchcc occurs ; |3781| 
L378:    
DW$L$_fn_get_oem$7$B:
	.dwpsn	"common.c",3781,0
        MOVL      XAR4,*-SP[2]          ; |3781| 
        SETC      SXM
        MOV       AL,AR6
        MOV       ACC,AL                ; |3781| 
        ADDL      XAR4,ACC
        MOVZ      AR7,*+XAR4[5]         ; |3781| 
        MOVL      XAR4,XAR3             ; |3781| 
        MOV       AL,AR6                ; |3781| 
        MOV       ACC,AL                ; |3781| 
        ADDL      XAR4,ACC
        MOV       AL,AR6                ; |3781| 
        ADDB      AL,#1                 ; |3781| 
        MOVZ      AR6,AL                ; |3781| 
        MOV       ACC,AL                ; |3781| 
        CMPL      ACC,XAR1              ; |3781| 
        MOV       *+XAR4[0],AR7         ; |3781| 
        BF        L378,LT               ; |3781| 
        ; branchcc occurs ; |3781| 
DW$L$_fn_get_oem$7$E:
L379:    
        MOV       AL,AR6
        SETC      SXM
        MOV       ACC,AL                ; |3782| 
        ADDL      XAR3,ACC
        MOV       *+XAR3[0],#0          ; |3782| 
L380:    
        MOVB      AL,#0
L381:    
        SUBB      SP,#2                 ; |3784| 
        MOVL      XAR3,*--SP            ; |3784| 
        MOVL      XAR1,*--SP            ; |3784| 
	.dwpsn	"common.c",3785,1
        LRETR
        ; return occurs

DW$493	.dwtag  DW_TAG_loop
	.dwattr DW$493, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L378:1:1471518967")
	.dwattr DW$493, DW_AT_begin_file("common.c")
	.dwattr DW$493, DW_AT_begin_line(0xec5)
	.dwattr DW$493, DW_AT_end_line(0xec5)
DW$494	.dwtag  DW_TAG_loop_range
	.dwattr DW$494, DW_AT_low_pc(DW$L$_fn_get_oem$7$B)
	.dwattr DW$494, DW_AT_high_pc(DW$L$_fn_get_oem$7$E)
	.dwendtag DW$493

	.dwattr DW$488, DW_AT_end_file("common.c")
	.dwattr DW$488, DW_AT_end_line(0xec9)
	.dwattr DW$488, DW_AT_end_column(0x01)
	.dwendtag DW$488

	.sect	".text"
	.global	_fn_seteof

DW$495	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_seteof"), DW_AT_symbol_name("_fn_seteof")
	.dwattr DW$495, DW_AT_low_pc(_fn_seteof)
	.dwattr DW$495, DW_AT_high_pc(0x00)
	.dwattr DW$495, DW_AT_begin_file("common.c")
	.dwattr DW$495, DW_AT_begin_line(0xedc)
	.dwattr DW$495, DW_AT_begin_column(0x05)
	.dwattr DW$495, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$495, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",3804,47

;***************************************************************
;* FNAME: _fn_seteof                    FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  4 Auto,  2 SOE     *
;***************************************************************

_fn_seteof:
;* AR4   assigned to _fm
DW$496	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$496, DW_AT_type(*DW$T$106)
	.dwattr DW$496, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _filehandle
DW$497	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filehandle"), DW_AT_symbol_name("_filehandle")
	.dwattr DW$497, DW_AT_type(*DW$T$179)
	.dwattr DW$497, DW_AT_location[DW_OP_reg14]
        MOVL      XAR6,XAR4             ; |3804| 
        MOVL      XAR4,XAR5             ; |3805| 
        MOVL      *SP++,XAR1
        ADDB      SP,#6
        LCR       #__f_check_handle     ; |3805| 
        ; call occurs [#__f_check_handle] ; |3805| 
        MOVL      ACC,XAR4              ; |3805| 
        MOVL      XAR1,XAR4             ; |3805| 
        BF        L382,EQ               ; |3805| 
        ; branchcc occurs ; |3805| 
        MOV       AL,*+XAR1[4]          ; |3812| 
        CMPB      AL,#2                 ; |3812| 
        BF        L383,EQ               ; |3812| 
        ; branchcc occurs ; |3812| 
        CMPB      AL,#4                 ; |3812| 
        BF        L383,EQ               ; |3812| 
        ; branchcc occurs ; |3812| 
        CMPB      AL,#5                 ; |3812| 
        BF        L383,EQ               ; |3812| 
        ; branchcc occurs ; |3812| 
L382:    
        MOVB      AL,#8                 ; |3812| 
        BF        L386,UNC              ; |3812| 
        ; branch occurs ; |3812| 
L383:    
        MOVZ      AR5,SP                ; |3814| 
        MOVL      XAR4,XAR6             ; |3814| 
        MOV       AL,*+XAR1[5]          ; |3814| 
        SUBB      XAR5,#4               ; |3814| 
        LCR       #__f_getvolume        ; |3814| 
        ; call occurs [#__f_getvolume] ; |3814| 
        CMPB      AL,#0                 ; |3814| 
        BF        L386,NEQ              ; |3814| 
        ; branchcc occurs ; |3814| 
        MOVL      XAR0,#916             ; |3818| 
        MOVZ      AR5,SP                ; |3818| 
        MOVL      XAR4,*-SP[4]          ; |3818| 
        MOVL      ACC,*+XAR1[AR0]       ; |3818| 
        SUBB      XAR5,#6               ; |3818| 
        LCR       #__f_getclustervalue  ; |3818| 
        ; call occurs [#__f_getclustervalue] ; |3818| 
        CMPB      AL,#0                 ; |3818| 
        BF        L386,NEQ              ; |3818| 
        ; branchcc occurs ; |3818| 
        MOVL      XAR4,*-SP[4]          ; |3821| 
        MOVL      ACC,*-SP[6]           ; |3821| 
        LCR       #__f_removechain      ; |3821| 
        ; call occurs [#__f_removechain] ; |3821| 
        CMPB      AL,#0                 ; |3821| 
        BF        L386,NEQ              ; |3821| 
        ; branchcc occurs ; |3821| 
        MOV       PH,#4095
        MOVL      XAR0,#916             ; |3824| 
        MOV       PL,#65528
        MOVL      *-SP[2],P             ; |3824| 
        MOVL      XAR4,*-SP[4]          ; |3824| 
        MOVL      ACC,*+XAR1[AR0]       ; |3824| 
        LCR       #__f_setclustervalue  ; |3824| 
        ; call occurs [#__f_setclustervalue] ; |3824| 
        CMPB      AL,#0                 ; |3824| 
        BF        L386,NEQ              ; |3824| 
        ; branchcc occurs ; |3824| 
        MOVB      XAR0,#8               ; |3827| 
        MOVL      ACC,*+XAR1[AR0]       ; |3827| 
        MOVB      XAR0,#10              ; |3827| 
        ADDL      ACC,*+XAR1[6]         ; |3827| 
        MOVL      *+XAR1[AR0],ACC       ; |3827| 
        MOVL      ACC,*+XAR1[AR0]       ; |3829| 
        BF        L385,NEQ              ; |3829| 
        ; branchcc occurs ; |3829| 
        MOVL      XAR0,#914             ; |3830| 
        MOVL      XAR6,*+XAR1[AR0]      ; |3830| 
        MOVB      ACC,#2
        CMPL      ACC,XAR6              ; |3830| 
        BF        L384,HI               ; |3830| 
        ; branchcc occurs ; |3830| 
        MOV       AL,#65520
        MOV       AH,#4095
        CMPL      ACC,XAR6              ; |3830| 
        BF        L384,LOS              ; |3830| 
        ; branchcc occurs ; |3830| 
        MOVL      XAR4,*-SP[4]          ; |3831| 
        MOVL      ACC,XAR6              ; |3831| 
        LCR       #__f_removechain      ; |3831| 
        ; call occurs [#__f_removechain] ; |3831| 
        CMPB      AL,#0                 ; |3831| 
        BF        L386,NEQ              ; |3831| 
        ; branchcc occurs ; |3831| 
L384:    
        MOVL      XAR0,#914             ; |3834| 
        MOVB      ACC,#0
        MOVL      *+XAR1[AR0],ACC       ; |3834| 
        MOVL      *+XAR1[2],ACC         ; |3835| 
L385:    
        MOVL      XAR4,XAR1
        LCR       #__fn_removeseekpos   ; |3839| 
        ; call occurs [#__fn_removeseekpos] ; |3839| 
        MOVB      AL,#0
L386:    
        SUBB      SP,#6                 ; |3842| 
        MOVL      XAR1,*--SP            ; |3842| 
	.dwpsn	"common.c",3843,1
        LRETR
        ; return occurs
	.dwattr DW$495, DW_AT_end_file("common.c")
	.dwattr DW$495, DW_AT_end_line(0xf03)
	.dwattr DW$495, DW_AT_end_column(0x01)
	.dwendtag DW$495

	.sect	".text"
	.global	__fn_initseekdivisor

DW$498	.dwtag  DW_TAG_subprogram, DW_AT_name("_fn_initseekdivisor"), DW_AT_symbol_name("__fn_initseekdivisor")
	.dwattr DW$498, DW_AT_low_pc(__fn_initseekdivisor)
	.dwattr DW$498, DW_AT_high_pc(0x00)
	.dwattr DW$498, DW_AT_begin_file("common.c")
	.dwattr DW$498, DW_AT_begin_line(0xf13)
	.dwattr DW$498, DW_AT_begin_column(0x06)
	.dwattr DW$498, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$498, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",3859,53

;***************************************************************
;* FNAME: __fn_initseekdivisor          FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

__fn_initseekdivisor:
;* AR4   assigned to _f
DW$499	.dwtag  DW_TAG_formal_parameter, DW_AT_name("f"), DW_AT_symbol_name("_f")
	.dwattr DW$499, DW_AT_type(*DW$T$108)
	.dwattr DW$499, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _vi
DW$500	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$500, DW_AT_type(*DW$T$92)
	.dwattr DW$500, DW_AT_location[DW_OP_reg14]
        MOVB      XAR0,#14              ; |3864| 
        ADDB      SP,#2
        MOVU      ACC,*+XAR5[AR0]
        CLRC      SXM
        SPM       #-1
        LSL       ACC,9                 ; |3865| 
        MOVB      XAR0,#10              ; |3867| 
        MOVL      XT,ACC                ; |3865| 
        MOVL      P,ACC                 ; |3865| 
        MOVL      *-SP[2],ACC           ; |3867| 
        MOVL      ACC,*+XAR4[AR0]       ; |3867| 
        SFR       ACC,3                 ; |3867| 
        ADDL      ACC,P << PM           ; |3867| 
        SPM       #0
        FFC       XAR7,#L$$DIV          ; |3867| 
        ; call occurs [#L$$DIV] ; |3867| 
        TEST      ACC                   ; |3867| 
        MOVL      XAR7,ACC              ; |3867| 
        BF        L387,NEQ              ; |3867| 
        ; branchcc occurs ; |3867| 
        MOVB      XAR7,#1
L387:    
        IMPYL     ACC,XT,XAR7           ; |3871| 
        MOVL      XAR0,#972             ; |3873| 
        MOVB      XAR6,#0
        MOVL      XAR5,#512             ; |3874| 
        MOVL      P,ACC                 ; |3871| 
        MOVB      ACC,#9
        MOVL      *+XAR4[AR0],ACC       ; |3873| 
	.dwpsn	"common.c",3875,0
        MOVL      XAR7,XAR5             ; |3874| 
L388:    
DW$L$__fn_initseekdivisor$4$B:
        MOVL      ACC,P
        CMPL      ACC,XAR7              ; |3876| 
        BF        L389,LEQ              ; |3876| 
        ; branchcc occurs ; |3876| 
DW$L$__fn_initseekdivisor$4$E:
DW$L$__fn_initseekdivisor$5$B:
        MOVL      ACC,XAR7
        MOVL      XAR5,#972             ; |3878| 
        LSL       ACC,1                 ; |3877| 
        MOVL      XAR7,ACC              ; |3877| 
        MOVL      ACC,XAR4
        ADDL      XAR5,ACC
        MOVB      ACC,#1
        ADDL      *+XAR5[0],ACC         ; |3878| 
        MOV       AL,AR6                ; |3878| 
        ADDB      AL,#1                 ; |3875| 
        CMPB      AL,#31                ; |3875| 
        MOVZ      AR6,AL                ; |3875| 
	.dwpsn	"common.c",3879,0
        BF        L388,LT               ; |3875| 
        ; branchcc occurs ; |3875| 
DW$L$__fn_initseekdivisor$5$E:
L389:    
        MOVB      XAR6,#0
        MOVL      XAR0,#940             ; |3882| 
	.dwpsn	"common.c",3881,0
        SETC      SXM
L390:    
DW$L$__fn_initseekdivisor$7$B:
        MOVL      XAR5,XAR4             ; |3882| 
        MOV       ACC,AR6 << 1          ; |3882| 
        ADDL      XAR5,ACC
        MOVB      ACC,#0
        SUBB      ACC,#1
        MOVL      *+XAR5[AR0],ACC       ; |3882| 
        MOV       AL,AR6                ; |3882| 
        ADDB      AL,#1                 ; |3881| 
        MOVZ      AR6,AL                ; |3881| 
        CMPB      AL,#8                 ; |3881| 
	.dwpsn	"common.c",3883,0
        BF        L390,LT               ; |3881| 
        ; branchcc occurs ; |3881| 
DW$L$__fn_initseekdivisor$7$E:
        SUBB      SP,#2
	.dwpsn	"common.c",3884,1
        LRETR
        ; return occurs

DW$501	.dwtag  DW_TAG_loop
	.dwattr DW$501, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L390:1:1471518967")
	.dwattr DW$501, DW_AT_begin_file("common.c")
	.dwattr DW$501, DW_AT_begin_line(0xf29)
	.dwattr DW$501, DW_AT_end_line(0xf2b)
DW$502	.dwtag  DW_TAG_loop_range
	.dwattr DW$502, DW_AT_low_pc(DW$L$__fn_initseekdivisor$7$B)
	.dwattr DW$502, DW_AT_high_pc(DW$L$__fn_initseekdivisor$7$E)
	.dwendtag DW$501


DW$503	.dwtag  DW_TAG_loop
	.dwattr DW$503, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L388:1:1471518967")
	.dwattr DW$503, DW_AT_begin_file("common.c")
	.dwattr DW$503, DW_AT_begin_line(0xf23)
	.dwattr DW$503, DW_AT_end_line(0xf27)
DW$504	.dwtag  DW_TAG_loop_range
	.dwattr DW$504, DW_AT_low_pc(DW$L$__fn_initseekdivisor$4$B)
	.dwattr DW$504, DW_AT_high_pc(DW$L$__fn_initseekdivisor$4$E)
DW$505	.dwtag  DW_TAG_loop_range
	.dwattr DW$505, DW_AT_low_pc(DW$L$__fn_initseekdivisor$5$B)
	.dwattr DW$505, DW_AT_high_pc(DW$L$__fn_initseekdivisor$5$E)
	.dwendtag DW$503

	.dwattr DW$498, DW_AT_end_file("common.c")
	.dwattr DW$498, DW_AT_end_line(0xf2c)
	.dwattr DW$498, DW_AT_end_column(0x01)
	.dwendtag DW$498

	.sect	".text"
	.global	__fn_updateseekpos

DW$506	.dwtag  DW_TAG_subprogram, DW_AT_name("_fn_updateseekpos"), DW_AT_symbol_name("__fn_updateseekpos")
	.dwattr DW$506, DW_AT_low_pc(__fn_updateseekpos)
	.dwattr DW$506, DW_AT_high_pc(0x00)
	.dwattr DW$506, DW_AT_begin_file("common.c")
	.dwattr DW$506, DW_AT_begin_line(0xf3c)
	.dwattr DW$506, DW_AT_begin_column(0x06)
	.dwattr DW$506, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$506, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",3900,38

;***************************************************************
;* FNAME: __fn_updateseekpos            FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

__fn_updateseekpos:
;* AR4   assigned to _f
DW$507	.dwtag  DW_TAG_formal_parameter, DW_AT_name("f"), DW_AT_symbol_name("_f")
	.dwattr DW$507, DW_AT_type(*DW$T$108)
	.dwattr DW$507, DW_AT_location[DW_OP_reg12]
        MOVL      XAR0,#972             ; |3902| 
        MOVL      *SP++,XAR1
        MOV       T,*+XAR4[AR0]         ; |3902| 
        MOVL      ACC,*+XAR4[6]         ; |3902| 
        LSRL      ACC,T                 ; |3902| 
        SUBB      ACC,#1                ; |3902| 
        MOVL      XAR6,ACC              ; |3902| 
        BF        L391,LT               ; |3902| 
        ; branchcc occurs ; |3902| 
        MOVB      ACC,#8
        CMPL      ACC,XAR6              ; |3902| 
        BF        L391,LEQ              ; |3902| 
        ; branchcc occurs ; |3902| 
        MOVL      ACC,XAR6
        LSL       ACC,1                 ; |3905| 
        MOVL      XAR6,ACC              ; |3905| 
        MOVL      XAR5,#940             ; |3905| 
        MOVL      ACC,XAR4              ; |3905| 
        ADDL      ACC,XAR6
        ADDL      ACC,XAR5
        MOVL      XAR5,ACC              ; |3905| 
        MOVB      ACC,#0
        SUBB      ACC,#1
        CMPL      ACC,*+XAR5[0]         ; |3905| 
        BF        L391,NEQ              ; |3905| 
        ; branchcc occurs ; |3905| 
        MOVL      XAR0,#916             ; |3906| 
        MOVL      ACC,*+XAR4[AR0]       ; |3906| 
        MOVL      XAR1,#956             ; |3907| 
        MOVL      *+XAR5[0],ACC         ; |3906| 
        MOVL      XAR5,XAR4             ; |3907| 
        MOVL      XAR0,#918             ; |3907| 
        MOVL      ACC,XAR6              ; |3907| 
        ADDL      XAR5,ACC
        MOVL      ACC,*+XAR4[AR0]       ; |3907| 
        MOVL      *+XAR5[AR1],ACC       ; |3907| 
L391:    
        MOVL      XAR1,*--SP
	.dwpsn	"common.c",3910,1
        LRETR
        ; return occurs
	.dwattr DW$506, DW_AT_end_file("common.c")
	.dwattr DW$506, DW_AT_end_line(0xf46)
	.dwattr DW$506, DW_AT_end_column(0x01)
	.dwendtag DW$506

	.sect	".text"
	.global	__fn_removeseekpos

DW$508	.dwtag  DW_TAG_subprogram, DW_AT_name("_fn_removeseekpos"), DW_AT_symbol_name("__fn_removeseekpos")
	.dwattr DW$508, DW_AT_low_pc(__fn_removeseekpos)
	.dwattr DW$508, DW_AT_high_pc(0x00)
	.dwattr DW$508, DW_AT_begin_file("common.c")
	.dwattr DW$508, DW_AT_begin_line(0xf56)
	.dwattr DW$508, DW_AT_begin_column(0x06)
	.dwattr DW$508, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$508, DW_AT_skeletal(0x01)
	.dwpsn	"common.c",3926,38

;***************************************************************
;* FNAME: __fn_removeseekpos            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

__fn_removeseekpos:
;* AR4   assigned to _f
DW$509	.dwtag  DW_TAG_formal_parameter, DW_AT_name("f"), DW_AT_symbol_name("_f")
	.dwattr DW$509, DW_AT_type(*DW$T$108)
	.dwattr DW$509, DW_AT_location[DW_OP_reg12]
        MOVL      XAR0,#972             ; |3928| 
        MOVL      P,*+XAR4[AR0]         ; |3928| 
        MOVB      XAR0,#10              ; |3928| 
        MOVL      XAR5,*+XAR4[AR0]      ; |3928| 
        MOV       T,PL                  ; |3928| 
        MOVL      ACC,XAR5              ; |3928| 
        LSRL      ACC,T                 ; |3928| 
        MOVL      XAR6,ACC              ; |3928| 
        MOVL      XAR7,ACC              ; |3928| 
        LSLL      ACC,T                 ; |3930| 
        CMPL      ACC,XAR5              ; |3930| 
        BF        L392,NEQ              ; |3930| 
        ; branchcc occurs ; |3930| 
        MOVL      XAR6,XAR7             ; |3930| 
        SUBB      XAR6,#1               ; |3930| 
L392:    
        MOVL      ACC,XAR6
        BF        L393,GEQ              ; |3932| 
        ; branchcc occurs ; |3932| 
        MOVB      XAR6,#0
L393:    
        MOVB      ACC,#8
        CMPL      ACC,XAR6              ; |3934| 
        BF        L395,LEQ              ; |3934| 
        ; branchcc occurs ; |3934| 
L394:    
DW$L$__fn_removeseekpos$6$B:
	.dwpsn	"common.c",3934,0
        MOVL      XAR5,XAR4             ; |3935| 
        MOVL      ACC,XAR6
        MOVL      XAR0,#940             ; |3935| 
        LSL       ACC,1                 ; |3935| 
        ADDL      XAR5,ACC
        MOVB      ACC,#0
        SUBB      ACC,#1
        MOVL      *+XAR5[AR0],ACC       ; |3935| 
        MOVL      ACC,XAR6              ; |3935| 
        ADDB      ACC,#1                ; |3934| 
        MOVL      XAR6,ACC              ; |3934| 
        MOVB      ACC,#8
        CMPL      ACC,XAR6              ; |3934| 
	.dwpsn	"common.c",3936,0
        BF        L394,GT               ; |3934| 
        ; branchcc occurs ; |3934| 
DW$L$__fn_removeseekpos$6$E:
L395:    
	.dwpsn	"common.c",3937,1
        LRETR
        ; return occurs

DW$510	.dwtag  DW_TAG_loop
	.dwattr DW$510, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\common.asm:L394:1:1471518967")
	.dwattr DW$510, DW_AT_begin_file("common.c")
	.dwattr DW$510, DW_AT_begin_line(0xf5e)
	.dwattr DW$510, DW_AT_end_line(0xf60)
DW$511	.dwtag  DW_TAG_loop_range
	.dwattr DW$511, DW_AT_low_pc(DW$L$__fn_removeseekpos$6$B)
	.dwattr DW$511, DW_AT_high_pc(DW$L$__fn_removeseekpos$6$E)
	.dwendtag DW$510

	.dwattr DW$508, DW_AT_end_file("common.c")
	.dwattr DW$508, DW_AT_end_line(0xf61)
	.dwattr DW$508, DW_AT_end_column(0x01)
	.dwendtag DW$508

;***************************************************************
;* FAR STRINGS                                                 *
;***************************************************************
	.sect	".econst"
	.align	2
FSL1:	.string	"HCC_FAT ver:2.85",0
	.align	2
FSL2:	.string	"MSDOS5.0",0
	.align	2
FSL3:	.string	"NO NAME    ",0
	.align	2
FSL4:	.string	"FAT32   ",0
	.align	2
FSL5:	.string	"FAT16   ",0
	.align	2
FSL6:	.string	"FAT12   ",0
;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_memset
	.global	__f_getdirsector
	.global	_f_getrand
	.global	_f_getdate
	.global	_f_gettime
	.global	_f_mutex_get
	.global	_f_mutex_put
	.global	_f_mutex_create
	.global	_f_mutex_delete
	.global	_fn_gettaskID
	.global	__f_writedirsector
	.global	_truncate_tmp
	.global	___memcpy_ff
	.global	L$$DIV

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x16)

DW$T$82	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$82, DW_AT_language(DW_LANG_C)
DW$512	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$513	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$81)
DW$514	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$T$82


DW$T$84	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$84, DW_AT_language(DW_LANG_C)
DW$515	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$516	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$517	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$83)
	.dwendtag DW$T$84

DW$T$81	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$80)
	.dwattr DW$T$81, DW_AT_address_class(0x16)

DW$T$88	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$88, DW_AT_language(DW_LANG_C)
DW$518	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$519	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$9)
	.dwendtag DW$T$88


DW$T$90	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$90, DW_AT_language(DW_LANG_C)
DW$520	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$521	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$T$90


DW$T$93	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$93, DW_AT_language(DW_LANG_C)
DW$522	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$92)
	.dwendtag DW$T$93


DW$T$95	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$95, DW_AT_language(DW_LANG_C)
DW$523	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$95


DW$T$97	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$97, DW_AT_language(DW_LANG_C)
DW$524	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$92)
DW$525	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$526	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$64)
	.dwendtag DW$T$97


DW$T$101	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$101, DW_AT_language(DW_LANG_C)
DW$527	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$92)
DW$528	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$100)
DW$529	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$T$101


DW$T$103	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$103, DW_AT_language(DW_LANG_C)
DW$530	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$100)
DW$531	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$53)
DW$532	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$53)
	.dwendtag DW$T$103


DW$T$104	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$104, DW_AT_language(DW_LANG_C)
DW$533	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$T$104


DW$T$107	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$107, DW_AT_language(DW_LANG_C)
DW$534	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$106)
	.dwendtag DW$T$107


DW$T$109	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$109, DW_AT_language(DW_LANG_C)
DW$535	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$108)
DW$536	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$92)
	.dwendtag DW$T$109


DW$T$110	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$110, DW_AT_language(DW_LANG_C)
DW$537	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$108)
	.dwendtag DW$T$110

DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)
DW$T$112	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$112, DW_AT_address_class(0x16)

DW$T$113	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$112)
	.dwattr DW$T$113, DW_AT_language(DW_LANG_C)
DW$538	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$112)
DW$539	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$540	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$112)
	.dwendtag DW$T$113


DW$T$115	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$112)
	.dwattr DW$T$115, DW_AT_language(DW_LANG_C)
DW$541	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$114)
DW$542	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$112)
	.dwendtag DW$T$115


DW$T$116	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$112)
	.dwattr DW$T$116, DW_AT_language(DW_LANG_C)
DW$543	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
DW$544	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$112)
	.dwendtag DW$T$116


DW$T$117	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$112)
	.dwattr DW$T$117, DW_AT_language(DW_LANG_C)
DW$545	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$546	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$112)
	.dwendtag DW$T$117


DW$T$118	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$112)
	.dwattr DW$T$118, DW_AT_language(DW_LANG_C)
DW$547	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$9)
DW$548	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$112)
	.dwendtag DW$T$118


DW$T$119	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$112)
	.dwattr DW$T$119, DW_AT_language(DW_LANG_C)
DW$549	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$550	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$112)
	.dwendtag DW$T$119


DW$T$122	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$121)
	.dwattr DW$T$122, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$122, DW_AT_byte_size(0x04)
DW$551	.dwtag  DW_TAG_subrange_type
	.dwattr DW$551, DW_AT_upper_bound(0x03)
	.dwendtag DW$T$122

DW$T$9	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned short")
	.dwattr DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$9, DW_AT_byte_size(0x01)
DW$T$114	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$9)
	.dwattr DW$T$114, DW_AT_address_class(0x16)

DW$T$124	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$9)
	.dwattr DW$T$124, DW_AT_language(DW_LANG_C)

DW$T$125	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$9)
	.dwattr DW$T$125, DW_AT_language(DW_LANG_C)
DW$552	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$125

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)
DW$T$127	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$127, DW_AT_address_class(0x16)

DW$T$130	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$130, DW_AT_language(DW_LANG_C)
DW$553	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$92)
DW$554	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$T$130


DW$T$132	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$132, DW_AT_language(DW_LANG_C)
DW$555	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
	.dwendtag DW$T$132


DW$T$134	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$134, DW_AT_language(DW_LANG_C)
DW$556	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$92)
	.dwendtag DW$T$134


DW$T$136	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$136, DW_AT_language(DW_LANG_C)
DW$557	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$92)
DW$558	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$559	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$560	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$136


DW$T$138	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$138, DW_AT_language(DW_LANG_C)
DW$561	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$92)
DW$562	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$563	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$T$138


DW$T$140	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$140, DW_AT_language(DW_LANG_C)
DW$564	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$92)
DW$565	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$566	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
	.dwendtag DW$T$140


DW$T$143	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$143, DW_AT_language(DW_LANG_C)
DW$567	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$106)
DW$568	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$569	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$142)
	.dwendtag DW$T$143

DW$T$148	.dwtag  DW_TAG_typedef, DW_AT_name("F_INITFUNC"), DW_AT_type(*DW$T$147)
	.dwattr DW$T$148, DW_AT_language(DW_LANG_C)

DW$T$151	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$151, DW_AT_language(DW_LANG_C)
DW$570	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$106)
DW$571	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$572	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$148)
DW$573	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$151


DW$T$152	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$152, DW_AT_language(DW_LANG_C)
DW$574	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$106)
DW$575	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$152


DW$T$153	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$153, DW_AT_language(DW_LANG_C)
DW$576	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$153


DW$T$154	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$154, DW_AT_language(DW_LANG_C)

DW$T$155	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$155, DW_AT_language(DW_LANG_C)
DW$577	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$127)
	.dwendtag DW$T$155


DW$T$157	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$157, DW_AT_language(DW_LANG_C)
DW$578	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$36)
DW$579	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$156)
DW$580	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$581	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$T$157


DW$T$159	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$159, DW_AT_language(DW_LANG_C)
DW$582	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$92)
DW$583	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$T$159


DW$T$161	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$161, DW_AT_language(DW_LANG_C)
DW$584	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$106)
DW$585	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$586	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$T$161


DW$T$162	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$162, DW_AT_language(DW_LANG_C)
DW$587	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$92)
DW$588	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$108)
DW$589	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$53)
DW$590	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$127)
	.dwendtag DW$T$162


DW$T$164	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$164, DW_AT_language(DW_LANG_C)
DW$591	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$106)
	.dwendtag DW$T$164


DW$T$165	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$165, DW_AT_language(DW_LANG_C)
DW$592	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$92)
DW$593	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
	.dwendtag DW$T$165


DW$T$167	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$167, DW_AT_language(DW_LANG_C)
DW$594	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$92)
DW$595	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$108)
	.dwendtag DW$T$167


DW$T$169	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$169, DW_AT_language(DW_LANG_C)
DW$596	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$597	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$64)
	.dwendtag DW$T$169


DW$T$172	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$172, DW_AT_language(DW_LANG_C)
DW$598	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$106)
DW$599	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$600	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$171)
	.dwendtag DW$T$172


DW$T$173	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$173, DW_AT_language(DW_LANG_C)
DW$601	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$92)
DW$602	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$108)
DW$603	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$53)
	.dwendtag DW$T$173


DW$T$175	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$175, DW_AT_language(DW_LANG_C)
DW$604	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$92)
DW$605	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$106)
DW$606	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$108)
DW$607	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$T$175


DW$T$177	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$177, DW_AT_language(DW_LANG_C)
DW$608	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$92)
DW$609	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$108)
DW$610	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$177


DW$T$180	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$180, DW_AT_language(DW_LANG_C)
DW$611	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$106)
DW$612	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$179)
	.dwendtag DW$T$180


DW$T$181	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$181, DW_AT_language(DW_LANG_C)
DW$613	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$106)
DW$614	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$179)
DW$615	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$616	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$T$181


DW$T$183	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$183, DW_AT_language(DW_LANG_C)
DW$617	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$179)
	.dwendtag DW$T$183


DW$T$184	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$184, DW_AT_language(DW_LANG_C)
DW$618	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$106)
DW$619	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$620	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$179)
	.dwendtag DW$T$184


DW$T$186	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$186, DW_AT_language(DW_LANG_C)
DW$621	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$185)
	.dwendtag DW$T$186


DW$T$187	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$187, DW_AT_language(DW_LANG_C)
DW$622	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$106)
DW$623	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$92)
	.dwendtag DW$T$187


DW$T$189	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$189, DW_AT_language(DW_LANG_C)
DW$624	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$106)
DW$625	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$626	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$53)
DW$627	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$T$189

DW$T$12	.dwtag  DW_TAG_base_type, DW_AT_name("long")
	.dwattr DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$12, DW_AT_byte_size(0x02)

DW$T$232	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$232, DW_AT_language(DW_LANG_C)

DW$T$234	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$234, DW_AT_language(DW_LANG_C)
DW$628	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$106)
DW$629	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$630	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$631	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$632	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$179)
	.dwendtag DW$T$234


DW$T$236	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$236, DW_AT_language(DW_LANG_C)
DW$633	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$106)
DW$634	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$81)
DW$635	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$636	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$637	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$179)
	.dwendtag DW$T$236


DW$T$238	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$238, DW_AT_language(DW_LANG_C)
DW$638	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$179)
	.dwendtag DW$T$238

DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)
DW$T$59	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$59, DW_AT_address_class(0x16)
DW$T$83	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$83, DW_AT_language(DW_LANG_C)

DW$T$242	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$242, DW_AT_language(DW_LANG_C)
DW$639	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$T$242


DW$T$244	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$244, DW_AT_language(DW_LANG_C)
DW$640	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$244


DW$T$246	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$246, DW_AT_language(DW_LANG_C)
DW$641	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$92)
	.dwendtag DW$T$246


DW$T$248	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$248, DW_AT_language(DW_LANG_C)
DW$642	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$92)
DW$643	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$100)
	.dwendtag DW$T$248

DW$T$156	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$48)
	.dwattr DW$T$156, DW_AT_address_class(0x16)
DW$T$36	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$35)
	.dwattr DW$T$36, DW_AT_address_class(0x16)
DW$T$53	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$52)
	.dwattr DW$T$53, DW_AT_address_class(0x16)

DW$T$258	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$53)
	.dwattr DW$T$258, DW_AT_language(DW_LANG_C)

DW$T$260	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$52)
	.dwattr DW$T$260, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$260, DW_AT_byte_size(0x200)
DW$644	.dwtag  DW_TAG_subrange_type
	.dwattr DW$644, DW_AT_upper_bound(0x1ff)
	.dwendtag DW$T$260

DW$T$92	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$74)
	.dwattr DW$T$92, DW_AT_address_class(0x16)
DW$T$142	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$92)
	.dwattr DW$T$142, DW_AT_address_class(0x16)
DW$T$106	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$105)
	.dwattr DW$T$106, DW_AT_address_class(0x16)
DW$T$185	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$106)
	.dwattr DW$T$185, DW_AT_address_class(0x16)

DW$T$273	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$105)
	.dwattr DW$T$273, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$273, DW_AT_byte_size(0x1a)
DW$645	.dwtag  DW_TAG_subrange_type
	.dwattr DW$645, DW_AT_upper_bound(0x00)
	.dwendtag DW$T$273

DW$T$64	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$63)
	.dwattr DW$T$64, DW_AT_address_class(0x16)
DW$T$179	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$67)
	.dwattr DW$T$179, DW_AT_address_class(0x16)
DW$T$108	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$76)
	.dwattr DW$T$108, DW_AT_address_class(0x16)

DW$T$285	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$108)
	.dwattr DW$T$285, DW_AT_language(DW_LANG_C)
DW$646	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$179)
	.dwendtag DW$T$285

DW$T$100	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$99)
	.dwattr DW$T$100, DW_AT_address_class(0x16)
DW$T$171	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$170)
	.dwattr DW$T$171, DW_AT_address_class(0x16)
DW$T$299	.dwtag  DW_TAG_typedef, DW_AT_name("F_FILESYSTEM"), DW_AT_type(*DW$T$78)
	.dwattr DW$T$299, DW_AT_language(DW_LANG_C)

DW$T$303	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$302)
	.dwattr DW$T$303, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$303, DW_AT_byte_size(0x18)
DW$647	.dwtag  DW_TAG_subrange_type
	.dwattr DW$647, DW_AT_upper_bound(0x05)
	.dwendtag DW$T$303

DW$648	.dwtag  DW_TAG_far_type
DW$T$80	.dwtag  DW_TAG_const_type
	.dwattr DW$T$80, DW_AT_type(*DW$648)
DW$649	.dwtag  DW_TAG_far_type
	.dwattr DW$649, DW_AT_type(*DW$T$6)
DW$T$121	.dwtag  DW_TAG_const_type
	.dwattr DW$T$121, DW_AT_type(*DW$649)
DW$T$147	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$146)
	.dwattr DW$T$147, DW_AT_address_class(0x16)
DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("F_BOOTRECORD"), DW_AT_type(*DW$T$24)
	.dwattr DW$T$48, DW_AT_language(DW_LANG_C)
DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("F_PHY"), DW_AT_type(*DW$T$26)
	.dwattr DW$T$35, DW_AT_language(DW_LANG_C)
DW$T$52	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$52, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$52, DW_AT_byte_size(0x01)
DW$T$74	.dwtag  DW_TAG_typedef, DW_AT_name("F_VOLUME"), DW_AT_type(*DW$T$55)
	.dwattr DW$T$74, DW_AT_language(DW_LANG_C)
DW$T$105	.dwtag  DW_TAG_typedef, DW_AT_name("F_MULTI"), DW_AT_type(*DW$T$60)
	.dwattr DW$T$105, DW_AT_language(DW_LANG_C)
DW$T$63	.dwtag  DW_TAG_typedef, DW_AT_name("F_POS"), DW_AT_type(*DW$T$61)
	.dwattr DW$T$63, DW_AT_language(DW_LANG_C)
DW$T$67	.dwtag  DW_TAG_typedef, DW_AT_name("F_FILE"), DW_AT_type(*DW$T$62)
	.dwattr DW$T$67, DW_AT_language(DW_LANG_C)
DW$T$76	.dwtag  DW_TAG_typedef, DW_AT_name("F_FILEINT"), DW_AT_type(*DW$T$70)
	.dwattr DW$T$76, DW_AT_language(DW_LANG_C)
DW$T$99	.dwtag  DW_TAG_typedef, DW_AT_name("F_DIRENTRY"), DW_AT_type(*DW$T$72)
	.dwattr DW$T$99, DW_AT_language(DW_LANG_C)
DW$T$170	.dwtag  DW_TAG_typedef, DW_AT_name("F_SPACE"), DW_AT_type(*DW$T$73)
	.dwattr DW$T$170, DW_AT_language(DW_LANG_C)

DW$T$78	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$78, DW_AT_byte_size(0xa4a)
DW$650	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$75)
	.dwattr DW$650, DW_AT_name("volumes"), DW_AT_symbol_name("_volumes")
	.dwattr DW$650, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$650, DW_AT_accessibility(DW_ACCESS_public)
DW$651	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$77)
	.dwattr DW$651, DW_AT_name("files"), DW_AT_symbol_name("_files")
	.dwattr DW$651, DW_AT_data_member_location[DW_OP_plus_uconst 0x47c]
	.dwattr DW$651, DW_AT_accessibility(DW_ACCESS_public)
DW$652	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$652, DW_AT_name("sectorbuffer"), DW_AT_symbol_name("_sectorbuffer")
	.dwattr DW$652, DW_AT_data_member_location[DW_OP_plus_uconst 0x84a]
	.dwattr DW$652, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$78

DW$653	.dwtag  DW_TAG_far_type
	.dwattr DW$653, DW_AT_type(*DW$T$301)
DW$T$302	.dwtag  DW_TAG_const_type
	.dwattr DW$T$302, DW_AT_type(*DW$653)

DW$T$50	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$50, DW_AT_byte_size(0x200)
DW$654	.dwtag  DW_TAG_subrange_type
	.dwattr DW$654, DW_AT_upper_bound(0x1ff)
	.dwendtag DW$T$50


DW$T$146	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$146, DW_AT_language(DW_LANG_C)
DW$655	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$145)
DW$656	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$146


DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_byte_size(0x48)
DW$657	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$657, DW_AT_name("jump_code"), DW_AT_symbol_name("_jump_code")
	.dwattr DW$657, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$657, DW_AT_accessibility(DW_ACCESS_public)
DW$658	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$658, DW_AT_name("OEM_name"), DW_AT_symbol_name("_OEM_name")
	.dwattr DW$658, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$658, DW_AT_accessibility(DW_ACCESS_public)
DW$659	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$659, DW_AT_name("bytes_per_sector"), DW_AT_symbol_name("_bytes_per_sector")
	.dwattr DW$659, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$659, DW_AT_accessibility(DW_ACCESS_public)
DW$660	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$6)
	.dwattr DW$660, DW_AT_name("sector_per_cluster"), DW_AT_symbol_name("_sector_per_cluster")
	.dwattr DW$660, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$660, DW_AT_accessibility(DW_ACCESS_public)
DW$661	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$661, DW_AT_name("reserved_sectors"), DW_AT_symbol_name("_reserved_sectors")
	.dwattr DW$661, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$661, DW_AT_accessibility(DW_ACCESS_public)
DW$662	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$6)
	.dwattr DW$662, DW_AT_name("number_of_FATs"), DW_AT_symbol_name("_number_of_FATs")
	.dwattr DW$662, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$662, DW_AT_accessibility(DW_ACCESS_public)
DW$663	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$663, DW_AT_name("max_root_entry"), DW_AT_symbol_name("_max_root_entry")
	.dwattr DW$663, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$663, DW_AT_accessibility(DW_ACCESS_public)
DW$664	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$664, DW_AT_name("number_of_sectors_less32"), DW_AT_symbol_name("_number_of_sectors_less32")
	.dwattr DW$664, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$664, DW_AT_accessibility(DW_ACCESS_public)
DW$665	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$6)
	.dwattr DW$665, DW_AT_name("media_descriptor"), DW_AT_symbol_name("_media_descriptor")
	.dwattr DW$665, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$665, DW_AT_accessibility(DW_ACCESS_public)
DW$666	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$666, DW_AT_name("sector_per_FAT"), DW_AT_symbol_name("_sector_per_FAT")
	.dwattr DW$666, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$666, DW_AT_accessibility(DW_ACCESS_public)
DW$667	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$667, DW_AT_name("sector_per_Track"), DW_AT_symbol_name("_sector_per_Track")
	.dwattr DW$667, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$667, DW_AT_accessibility(DW_ACCESS_public)
DW$668	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$668, DW_AT_name("number_of_heads"), DW_AT_symbol_name("_number_of_heads")
	.dwattr DW$668, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$668, DW_AT_accessibility(DW_ACCESS_public)
DW$669	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$669, DW_AT_name("number_of_hidden_sectors"), DW_AT_symbol_name("_number_of_hidden_sectors")
	.dwattr DW$669, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$669, DW_AT_accessibility(DW_ACCESS_public)
DW$670	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$670, DW_AT_name("number_of_sectors"), DW_AT_symbol_name("_number_of_sectors")
	.dwattr DW$670, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$670, DW_AT_accessibility(DW_ACCESS_public)
DW$671	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$671, DW_AT_name("sector_per_FAT32"), DW_AT_symbol_name("_sector_per_FAT32")
	.dwattr DW$671, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$671, DW_AT_accessibility(DW_ACCESS_public)
DW$672	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$672, DW_AT_name("extflags"), DW_AT_symbol_name("_extflags")
	.dwattr DW$672, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$672, DW_AT_accessibility(DW_ACCESS_public)
DW$673	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$673, DW_AT_name("fsversion"), DW_AT_symbol_name("_fsversion")
	.dwattr DW$673, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$673, DW_AT_accessibility(DW_ACCESS_public)
DW$674	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$674, DW_AT_name("rootcluster"), DW_AT_symbol_name("_rootcluster")
	.dwattr DW$674, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$674, DW_AT_accessibility(DW_ACCESS_public)
DW$675	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$675, DW_AT_name("fsinfo"), DW_AT_symbol_name("_fsinfo")
	.dwattr DW$675, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$675, DW_AT_accessibility(DW_ACCESS_public)
DW$676	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$676, DW_AT_name("bkbootsec"), DW_AT_symbol_name("_bkbootsec")
	.dwattr DW$676, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr DW$676, DW_AT_accessibility(DW_ACCESS_public)
DW$677	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$677, DW_AT_name("reserved"), DW_AT_symbol_name("_reserved")
	.dwattr DW$677, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$677, DW_AT_accessibility(DW_ACCESS_public)
DW$678	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$678, DW_AT_name("logical_drive_num"), DW_AT_symbol_name("_logical_drive_num")
	.dwattr DW$678, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$678, DW_AT_accessibility(DW_ACCESS_public)
DW$679	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$6)
	.dwattr DW$679, DW_AT_name("extended_signature"), DW_AT_symbol_name("_extended_signature")
	.dwattr DW$679, DW_AT_data_member_location[DW_OP_plus_uconst 0x2f]
	.dwattr DW$679, DW_AT_accessibility(DW_ACCESS_public)
DW$680	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$680, DW_AT_name("serial_number"), DW_AT_symbol_name("_serial_number")
	.dwattr DW$680, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$680, DW_AT_accessibility(DW_ACCESS_public)
DW$681	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$681, DW_AT_name("volume_name"), DW_AT_symbol_name("_volume_name")
	.dwattr DW$681, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$681, DW_AT_accessibility(DW_ACCESS_public)
DW$682	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$682, DW_AT_name("FAT_name"), DW_AT_symbol_name("_FAT_name")
	.dwattr DW$682, DW_AT_data_member_location[DW_OP_plus_uconst 0x3d]
	.dwattr DW$682, DW_AT_accessibility(DW_ACCESS_public)
DW$683	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$683, DW_AT_name("executable_marker"), DW_AT_symbol_name("_executable_marker")
	.dwattr DW$683, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr DW$683, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_byte_size(0x08)
DW$684	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$684, DW_AT_name("number_of_cylinders"), DW_AT_symbol_name("_number_of_cylinders")
	.dwattr DW$684, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$684, DW_AT_accessibility(DW_ACCESS_public)
DW$685	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$685, DW_AT_name("sector_per_track"), DW_AT_symbol_name("_sector_per_track")
	.dwattr DW$685, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$685, DW_AT_accessibility(DW_ACCESS_public)
DW$686	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$686, DW_AT_name("number_of_heads"), DW_AT_symbol_name("_number_of_heads")
	.dwattr DW$686, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$686, DW_AT_accessibility(DW_ACCESS_public)
DW$687	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$687, DW_AT_name("number_of_sectors"), DW_AT_symbol_name("_number_of_sectors")
	.dwattr DW$687, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$687, DW_AT_accessibility(DW_ACCESS_public)
DW$688	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$6)
	.dwattr DW$688, DW_AT_name("media_descriptor"), DW_AT_symbol_name("_media_descriptor")
	.dwattr DW$688, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$688, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26

DW$T$145	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$51)
	.dwattr DW$T$145, DW_AT_address_class(0x16)

DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$55, DW_AT_byte_size(0x47c)
DW$689	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$689, DW_AT_name("state"), DW_AT_symbol_name("_state")
	.dwattr DW$689, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$689, DW_AT_accessibility(DW_ACCESS_public)
DW$690	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$690, DW_AT_name("bootrecord"), DW_AT_symbol_name("_bootrecord")
	.dwattr DW$690, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$690, DW_AT_accessibility(DW_ACCESS_public)
DW$691	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$691, DW_AT_name("firstfat"), DW_AT_symbol_name("_firstfat")
	.dwattr DW$691, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr DW$691, DW_AT_accessibility(DW_ACCESS_public)
DW$692	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$692, DW_AT_name("root"), DW_AT_symbol_name("_root")
	.dwattr DW$692, DW_AT_data_member_location[DW_OP_plus_uconst 0x4e]
	.dwattr DW$692, DW_AT_accessibility(DW_ACCESS_public)
DW$693	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$693, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$693, DW_AT_data_member_location[DW_OP_plus_uconst 0x52]
	.dwattr DW$693, DW_AT_accessibility(DW_ACCESS_public)
DW$694	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$694, DW_AT_name("fat"), DW_AT_symbol_name("_fat")
	.dwattr DW$694, DW_AT_data_member_location[DW_OP_plus_uconst 0x56]
	.dwattr DW$694, DW_AT_accessibility(DW_ACCESS_public)
DW$695	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$695, DW_AT_name("fatsector"), DW_AT_symbol_name("_fatsector")
	.dwattr DW$695, DW_AT_data_member_location[DW_OP_plus_uconst 0x256]
	.dwattr DW$695, DW_AT_accessibility(DW_ACCESS_public)
DW$696	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$696, DW_AT_name("fatmodified"), DW_AT_symbol_name("_fatmodified")
	.dwattr DW$696, DW_AT_data_member_location[DW_OP_plus_uconst 0x258]
	.dwattr DW$696, DW_AT_accessibility(DW_ACCESS_public)
DW$697	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$697, DW_AT_name("direntry"), DW_AT_symbol_name("_direntry")
	.dwattr DW$697, DW_AT_data_member_location[DW_OP_plus_uconst 0x25a]
	.dwattr DW$697, DW_AT_accessibility(DW_ACCESS_public)
DW$698	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$698, DW_AT_name("direntrysector"), DW_AT_symbol_name("_direntrysector")
	.dwattr DW$698, DW_AT_data_member_location[DW_OP_plus_uconst 0x45a]
	.dwattr DW$698, DW_AT_accessibility(DW_ACCESS_public)
DW$699	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$699, DW_AT_name("lastalloccluster"), DW_AT_symbol_name("_lastalloccluster")
	.dwattr DW$699, DW_AT_data_member_location[DW_OP_plus_uconst 0x45c]
	.dwattr DW$699, DW_AT_accessibility(DW_ACCESS_public)
DW$700	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$51)
	.dwattr DW$700, DW_AT_name("func"), DW_AT_symbol_name("_func")
	.dwattr DW$700, DW_AT_data_member_location[DW_OP_plus_uconst 0x45e]
	.dwattr DW$700, DW_AT_accessibility(DW_ACCESS_public)
DW$701	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$53)
	.dwattr DW$701, DW_AT_name("cwd"), DW_AT_symbol_name("_cwd")
	.dwattr DW$701, DW_AT_data_member_location[DW_OP_plus_uconst 0x46e]
	.dwattr DW$701, DW_AT_accessibility(DW_ACCESS_public)
DW$702	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$702, DW_AT_name("mediatype"), DW_AT_symbol_name("_mediatype")
	.dwattr DW$702, DW_AT_data_member_location[DW_OP_plus_uconst 0x470]
	.dwattr DW$702, DW_AT_accessibility(DW_ACCESS_public)
DW$703	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$54)
	.dwattr DW$703, DW_AT_name("clspace"), DW_AT_symbol_name("_clspace")
	.dwattr DW$703, DW_AT_data_member_location[DW_OP_plus_uconst 0x472]
	.dwattr DW$703, DW_AT_accessibility(DW_ACCESS_public)
DW$704	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$52)
	.dwattr DW$704, DW_AT_name("cspaceok"), DW_AT_symbol_name("_cspaceok")
	.dwattr DW$704, DW_AT_data_member_location[DW_OP_plus_uconst 0x478]
	.dwattr DW$704, DW_AT_accessibility(DW_ACCESS_public)
DW$705	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$705, DW_AT_name("mutex"), DW_AT_symbol_name("_mutex")
	.dwattr DW$705, DW_AT_data_member_location[DW_OP_plus_uconst 0x47a]
	.dwattr DW$705, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$55


DW$T$75	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$74)
	.dwattr DW$T$75, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$75, DW_AT_byte_size(0x47c)
DW$706	.dwtag  DW_TAG_subrange_type
	.dwattr DW$706, DW_AT_upper_bound(0x00)
	.dwendtag DW$T$75


DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$60, DW_AT_byte_size(0x1a)
DW$707	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$707, DW_AT_name("ID"), DW_AT_symbol_name("_ID")
	.dwattr DW$707, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$707, DW_AT_accessibility(DW_ACCESS_public)
DW$708	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$708, DW_AT_name("f_curdrive"), DW_AT_symbol_name("_f_curdrive")
	.dwattr DW$708, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$708, DW_AT_accessibility(DW_ACCESS_public)
DW$709	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$58)
	.dwattr DW$709, DW_AT_name("f_vols"), DW_AT_symbol_name("_f_vols")
	.dwattr DW$709, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$709, DW_AT_accessibility(DW_ACCESS_public)
DW$710	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$59)
	.dwattr DW$710, DW_AT_name("pmutex"), DW_AT_symbol_name("_pmutex")
	.dwattr DW$710, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$710, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$60


DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$61, DW_AT_byte_size(0x0c)
DW$711	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$711, DW_AT_name("cluster"), DW_AT_symbol_name("_cluster")
	.dwattr DW$711, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$711, DW_AT_accessibility(DW_ACCESS_public)
DW$712	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$712, DW_AT_name("prevcluster"), DW_AT_symbol_name("_prevcluster")
	.dwattr DW$712, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$712, DW_AT_accessibility(DW_ACCESS_public)
DW$713	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$713, DW_AT_name("sectorbegin"), DW_AT_symbol_name("_sectorbegin")
	.dwattr DW$713, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$713, DW_AT_accessibility(DW_ACCESS_public)
DW$714	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$714, DW_AT_name("sector"), DW_AT_symbol_name("_sector")
	.dwattr DW$714, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$714, DW_AT_accessibility(DW_ACCESS_public)
DW$715	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$715, DW_AT_name("sectorend"), DW_AT_symbol_name("_sectorend")
	.dwattr DW$715, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$715, DW_AT_accessibility(DW_ACCESS_public)
DW$716	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$716, DW_AT_name("pos"), DW_AT_symbol_name("_pos")
	.dwattr DW$716, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$716, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$61


DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$62, DW_AT_byte_size(0x02)
DW$717	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$3)
	.dwattr DW$717, DW_AT_name("reference"), DW_AT_symbol_name("_reference")
	.dwattr DW$717, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$717, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$62


DW$T$70	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$70, DW_AT_byte_size(0x3ce)
DW$718	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$67)
	.dwattr DW$718, DW_AT_name("file"), DW_AT_symbol_name("_file")
	.dwattr DW$718, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$718, DW_AT_accessibility(DW_ACCESS_public)
DW$719	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$719, DW_AT_name("modified"), DW_AT_symbol_name("_modified")
	.dwattr DW$719, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$719, DW_AT_accessibility(DW_ACCESS_public)
DW$720	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$52)
	.dwattr DW$720, DW_AT_name("mode"), DW_AT_symbol_name("_mode")
	.dwattr DW$720, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$720, DW_AT_accessibility(DW_ACCESS_public)
DW$721	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$721, DW_AT_name("drivenum"), DW_AT_symbol_name("_drivenum")
	.dwattr DW$721, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$721, DW_AT_accessibility(DW_ACCESS_public)
DW$722	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$722, DW_AT_name("abspos"), DW_AT_symbol_name("_abspos")
	.dwattr DW$722, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$722, DW_AT_accessibility(DW_ACCESS_public)
DW$723	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$723, DW_AT_name("relpos"), DW_AT_symbol_name("_relpos")
	.dwattr DW$723, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$723, DW_AT_accessibility(DW_ACCESS_public)
DW$724	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$724, DW_AT_name("filesize"), DW_AT_symbol_name("_filesize")
	.dwattr DW$724, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$724, DW_AT_accessibility(DW_ACCESS_public)
DW$725	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$725, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$725, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$725, DW_AT_accessibility(DW_ACCESS_public)
DW$726	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$68)
	.dwattr DW$726, DW_AT_name("WrDataCache"), DW_AT_symbol_name("_WrDataCache")
	.dwattr DW$726, DW_AT_data_member_location[DW_OP_plus_uconst 0x20c]
	.dwattr DW$726, DW_AT_accessibility(DW_ACCESS_public)
DW$727	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$727, DW_AT_name("startcluster"), DW_AT_symbol_name("_startcluster")
	.dwattr DW$727, DW_AT_data_member_location[DW_OP_plus_uconst 0x392]
	.dwattr DW$727, DW_AT_accessibility(DW_ACCESS_public)
DW$728	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$63)
	.dwattr DW$728, DW_AT_name("pos"), DW_AT_symbol_name("_pos")
	.dwattr DW$728, DW_AT_data_member_location[DW_OP_plus_uconst 0x394]
	.dwattr DW$728, DW_AT_accessibility(DW_ACCESS_public)
DW$729	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$63)
	.dwattr DW$729, DW_AT_name("dirpos"), DW_AT_symbol_name("_dirpos")
	.dwattr DW$729, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a0]
	.dwattr DW$729, DW_AT_accessibility(DW_ACCESS_public)
DW$730	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$730, DW_AT_name("seekpos"), DW_AT_symbol_name("_seekpos")
	.dwattr DW$730, DW_AT_data_member_location[DW_OP_plus_uconst 0x3ac]
	.dwattr DW$730, DW_AT_accessibility(DW_ACCESS_public)
DW$731	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$731, DW_AT_name("seekprev"), DW_AT_symbol_name("_seekprev")
	.dwattr DW$731, DW_AT_data_member_location[DW_OP_plus_uconst 0x3bc]
	.dwattr DW$731, DW_AT_accessibility(DW_ACCESS_public)
DW$732	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$732, DW_AT_name("seekshift"), DW_AT_symbol_name("_seekshift")
	.dwattr DW$732, DW_AT_data_member_location[DW_OP_plus_uconst 0x3cc]
	.dwattr DW$732, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$70


DW$T$77	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$76)
	.dwattr DW$T$77, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$77, DW_AT_byte_size(0x3ce)
DW$733	.dwtag  DW_TAG_subrange_type
	.dwattr DW$733, DW_AT_upper_bound(0x00)
	.dwendtag DW$T$77


DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$72, DW_AT_byte_size(0x20)
DW$734	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$734, DW_AT_name("name"), DW_AT_symbol_name("_name")
	.dwattr DW$734, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$734, DW_AT_accessibility(DW_ACCESS_public)
DW$735	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$735, DW_AT_name("ext"), DW_AT_symbol_name("_ext")
	.dwattr DW$735, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$735, DW_AT_accessibility(DW_ACCESS_public)
DW$736	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$6)
	.dwattr DW$736, DW_AT_name("attr"), DW_AT_symbol_name("_attr")
	.dwattr DW$736, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$736, DW_AT_accessibility(DW_ACCESS_public)
DW$737	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$6)
	.dwattr DW$737, DW_AT_name("ntres"), DW_AT_symbol_name("_ntres")
	.dwattr DW$737, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$737, DW_AT_accessibility(DW_ACCESS_public)
DW$738	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$6)
	.dwattr DW$738, DW_AT_name("crttimetenth"), DW_AT_symbol_name("_crttimetenth")
	.dwattr DW$738, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$738, DW_AT_accessibility(DW_ACCESS_public)
DW$739	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$739, DW_AT_name("crttime"), DW_AT_symbol_name("_crttime")
	.dwattr DW$739, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$739, DW_AT_accessibility(DW_ACCESS_public)
DW$740	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$740, DW_AT_name("crtdate"), DW_AT_symbol_name("_crtdate")
	.dwattr DW$740, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$740, DW_AT_accessibility(DW_ACCESS_public)
DW$741	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$741, DW_AT_name("lastaccessdate"), DW_AT_symbol_name("_lastaccessdate")
	.dwattr DW$741, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$741, DW_AT_accessibility(DW_ACCESS_public)
DW$742	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$742, DW_AT_name("clusterhi"), DW_AT_symbol_name("_clusterhi")
	.dwattr DW$742, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$742, DW_AT_accessibility(DW_ACCESS_public)
DW$743	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$743, DW_AT_name("ctime"), DW_AT_symbol_name("_ctime")
	.dwattr DW$743, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$743, DW_AT_accessibility(DW_ACCESS_public)
DW$744	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$744, DW_AT_name("cdate"), DW_AT_symbol_name("_cdate")
	.dwattr DW$744, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$744, DW_AT_accessibility(DW_ACCESS_public)
DW$745	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$745, DW_AT_name("clusterlo"), DW_AT_symbol_name("_clusterlo")
	.dwattr DW$745, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$745, DW_AT_accessibility(DW_ACCESS_public)
DW$746	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$71)
	.dwattr DW$746, DW_AT_name("filesize"), DW_AT_symbol_name("_filesize")
	.dwattr DW$746, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$746, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$72


DW$T$73	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$73, DW_AT_byte_size(0x10)
DW$747	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$747, DW_AT_name("total"), DW_AT_symbol_name("_total")
	.dwattr DW$747, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$747, DW_AT_accessibility(DW_ACCESS_public)
DW$748	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$748, DW_AT_name("free"), DW_AT_symbol_name("_free")
	.dwattr DW$748, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$748, DW_AT_accessibility(DW_ACCESS_public)
DW$749	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$749, DW_AT_name("used"), DW_AT_symbol_name("_used")
	.dwattr DW$749, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$749, DW_AT_accessibility(DW_ACCESS_public)
DW$750	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$750, DW_AT_name("bad"), DW_AT_symbol_name("_bad")
	.dwattr DW$750, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$750, DW_AT_accessibility(DW_ACCESS_public)
DW$751	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$751, DW_AT_name("total_high"), DW_AT_symbol_name("_total_high")
	.dwattr DW$751, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$751, DW_AT_accessibility(DW_ACCESS_public)
DW$752	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$752, DW_AT_name("free_high"), DW_AT_symbol_name("_free_high")
	.dwattr DW$752, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$752, DW_AT_accessibility(DW_ACCESS_public)
DW$753	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$753, DW_AT_name("used_high"), DW_AT_symbol_name("_used_high")
	.dwattr DW$753, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$753, DW_AT_accessibility(DW_ACCESS_public)
DW$754	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$754, DW_AT_name("bad_high"), DW_AT_symbol_name("_bad_high")
	.dwattr DW$754, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$754, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$73

DW$T$301	.dwtag  DW_TAG_typedef, DW_AT_name("t_FAT32_CS"), DW_AT_type(*DW$T$79)
	.dwattr DW$T$301, DW_AT_language(DW_LANG_C)

DW$T$19	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$19, DW_AT_byte_size(0x03)
DW$755	.dwtag  DW_TAG_subrange_type
	.dwattr DW$755, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$19


DW$T$20	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$20, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$20, DW_AT_byte_size(0x08)
DW$756	.dwtag  DW_TAG_subrange_type
	.dwattr DW$756, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$20


DW$T$21	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$21, DW_AT_byte_size(0x0c)
DW$757	.dwtag  DW_TAG_subrange_type
	.dwattr DW$757, DW_AT_upper_bound(0x0b)
	.dwendtag DW$T$21


DW$T$22	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$22, DW_AT_byte_size(0x0b)
DW$758	.dwtag  DW_TAG_subrange_type
	.dwattr DW$758, DW_AT_upper_bound(0x0a)
	.dwendtag DW$T$22


DW$T$23	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$23, DW_AT_byte_size(0x02)
DW$759	.dwtag  DW_TAG_subrange_type
	.dwattr DW$759, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$23


DW$T$71	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$71, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$71, DW_AT_byte_size(0x04)
DW$760	.dwtag  DW_TAG_subrange_type
	.dwattr DW$760, DW_AT_upper_bound(0x03)
	.dwendtag DW$T$71


DW$T$69	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$69, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$69, DW_AT_byte_size(0x10)
DW$761	.dwtag  DW_TAG_subrange_type
	.dwattr DW$761, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$69

DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("F_SECTOR"), DW_AT_type(*DW$T$25)
	.dwattr DW$T$49, DW_AT_language(DW_LANG_C)
DW$T$51	.dwtag  DW_TAG_typedef, DW_AT_name("F_FUNC"), DW_AT_type(*DW$T$46)
	.dwattr DW$T$51, DW_AT_language(DW_LANG_C)
DW$T$54	.dwtag  DW_TAG_typedef, DW_AT_name("F_CLSPACE"), DW_AT_type(*DW$T$47)
	.dwattr DW$T$54, DW_AT_language(DW_LANG_C)

DW$T$58	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$57)
	.dwattr DW$T$58, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$58, DW_AT_byte_size(0x14)
DW$762	.dwtag  DW_TAG_subrange_type
	.dwattr DW$762, DW_AT_upper_bound(0x00)
	.dwendtag DW$T$58

DW$T$68	.dwtag  DW_TAG_typedef, DW_AT_name("t_WrDataCache"), DW_AT_type(*DW$T$66)
	.dwattr DW$T$68, DW_AT_language(DW_LANG_C)

DW$T$79	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$79, DW_AT_byte_size(0x04)
DW$763	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$763, DW_AT_name("max_sectors"), DW_AT_symbol_name("_max_sectors")
	.dwattr DW$763, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$763, DW_AT_accessibility(DW_ACCESS_public)
DW$764	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$6)
	.dwattr DW$764, DW_AT_name("sector_per_cluster"), DW_AT_symbol_name("_sector_per_cluster")
	.dwattr DW$764, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$764, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$79


DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$25, DW_AT_byte_size(0x04)
DW$765	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$765, DW_AT_name("sector"), DW_AT_symbol_name("_sector")
	.dwattr DW$765, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$765, DW_AT_accessibility(DW_ACCESS_public)
DW$766	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$766, DW_AT_name("num"), DW_AT_symbol_name("_num")
	.dwattr DW$766, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$766, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$46, DW_AT_byte_size(0x10)
DW$767	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$767, DW_AT_name("writesector"), DW_AT_symbol_name("_writesector")
	.dwattr DW$767, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$767, DW_AT_accessibility(DW_ACCESS_public)
DW$768	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$768, DW_AT_name("writemultiplesector"), DW_AT_symbol_name("_writemultiplesector")
	.dwattr DW$768, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$768, DW_AT_accessibility(DW_ACCESS_public)
DW$769	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$769, DW_AT_name("readsector"), DW_AT_symbol_name("_readsector")
	.dwattr DW$769, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$769, DW_AT_accessibility(DW_ACCESS_public)
DW$770	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$770, DW_AT_name("readmultiplesector"), DW_AT_symbol_name("_readmultiplesector")
	.dwattr DW$770, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$770, DW_AT_accessibility(DW_ACCESS_public)
DW$771	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$771, DW_AT_name("getphy"), DW_AT_symbol_name("_getphy")
	.dwattr DW$771, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$771, DW_AT_accessibility(DW_ACCESS_public)
DW$772	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$772, DW_AT_name("getstatus"), DW_AT_symbol_name("_getstatus")
	.dwattr DW$772, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$772, DW_AT_accessibility(DW_ACCESS_public)
DW$773	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$773, DW_AT_name("delfunc"), DW_AT_symbol_name("_delfunc")
	.dwattr DW$773, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$773, DW_AT_accessibility(DW_ACCESS_public)
DW$774	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$3)
	.dwattr DW$774, DW_AT_name("user_ptr"), DW_AT_symbol_name("_user_ptr")
	.dwattr DW$774, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$774, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$46


DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$47, DW_AT_byte_size(0x06)
DW$775	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$775, DW_AT_name("clfree"), DW_AT_symbol_name("_clfree")
	.dwattr DW$775, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$775, DW_AT_accessibility(DW_ACCESS_public)
DW$776	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$776, DW_AT_name("clused"), DW_AT_symbol_name("_clused")
	.dwattr DW$776, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$776, DW_AT_accessibility(DW_ACCESS_public)
DW$777	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$777, DW_AT_name("clbad"), DW_AT_symbol_name("_clbad")
	.dwattr DW$777, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$777, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$47


DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$57, DW_AT_byte_size(0x14)
DW$778	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$56)
	.dwattr DW$778, DW_AT_name("cwd"), DW_AT_symbol_name("_cwd")
	.dwattr DW$778, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$778, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$57


DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$66, DW_AT_byte_size(0x186)
DW$779	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$779, DW_AT_name("N"), DW_AT_symbol_name("_N")
	.dwattr DW$779, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$779, DW_AT_accessibility(DW_ACCESS_public)
DW$780	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$53)
	.dwattr DW$780, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$780, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$780, DW_AT_accessibility(DW_ACCESS_public)
DW$781	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$64)
	.dwattr DW$781, DW_AT_name("pos"), DW_AT_symbol_name("_pos")
	.dwattr DW$781, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$781, DW_AT_accessibility(DW_ACCESS_public)
DW$782	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$65)
	.dwattr DW$782, DW_AT_name("posbuf"), DW_AT_symbol_name("_posbuf")
	.dwattr DW$782, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$782, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$66

DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("F_WRITESECTOR"), DW_AT_type(*DW$T$28)
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("F_READSECTOR"), DW_AT_type(*DW$T$28)
	.dwattr DW$T$33, DW_AT_language(DW_LANG_C)
DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("F_WRITEMULTIPLESECTOR"), DW_AT_type(*DW$T$31)
	.dwattr DW$T$32, DW_AT_language(DW_LANG_C)
DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("F_READMULTIPLESECTOR"), DW_AT_type(*DW$T$31)
	.dwattr DW$T$34, DW_AT_language(DW_LANG_C)
DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("F_GETPHY"), DW_AT_type(*DW$T$38)
	.dwattr DW$T$39, DW_AT_language(DW_LANG_C)
DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("F_DELFUNC"), DW_AT_type(*DW$T$44)
	.dwattr DW$T$45, DW_AT_language(DW_LANG_C)
DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("F_GETSTATUS"), DW_AT_type(*DW$T$41)
	.dwattr DW$T$42, DW_AT_language(DW_LANG_C)

DW$T$56	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$52)
	.dwattr DW$T$56, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$56, DW_AT_byte_size(0x14)
DW$783	.dwtag  DW_TAG_subrange_type
	.dwattr DW$783, DW_AT_upper_bound(0x13)
	.dwendtag DW$T$56


DW$T$65	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$63)
	.dwattr DW$T$65, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$65, DW_AT_byte_size(0x180)
DW$784	.dwtag  DW_TAG_subrange_type
	.dwattr DW$784, DW_AT_upper_bound(0x1f)
	.dwendtag DW$T$65

DW$T$28	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$27)
	.dwattr DW$T$28, DW_AT_address_class(0x16)
DW$T$31	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$30)
	.dwattr DW$T$31, DW_AT_address_class(0x16)
DW$T$38	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$37)
	.dwattr DW$T$38, DW_AT_address_class(0x16)
DW$T$44	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$43)
	.dwattr DW$T$44, DW_AT_address_class(0x16)
DW$T$41	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$40)
	.dwattr DW$T$41, DW_AT_address_class(0x16)

DW$T$27	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$27, DW_AT_language(DW_LANG_C)
DW$785	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$786	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$787	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$27


DW$T$30	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$30, DW_AT_language(DW_LANG_C)
DW$788	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$789	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$790	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$791	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$30


DW$T$37	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$37, DW_AT_language(DW_LANG_C)
DW$792	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$36)
DW$793	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$37


DW$T$43	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$43, DW_AT_language(DW_LANG_C)
DW$794	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$43


DW$T$40	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$40, DW_AT_language(DW_LANG_C)
DW$795	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$40


	.dwattr DW$242, DW_AT_external(0x01)
	.dwattr DW$242, DW_AT_type(*DW$T$10)
	.dwattr DW$395, DW_AT_external(0x01)
	.dwattr DW$395, DW_AT_type(*DW$T$108)
	.dwattr DW$276, DW_AT_external(0x01)
	.dwattr DW$276, DW_AT_type(*DW$T$10)
	.dwattr DW$285, DW_AT_external(0x01)
	.dwattr DW$285, DW_AT_type(*DW$T$10)
	.dwattr DW$57, DW_AT_external(0x01)
	.dwattr DW$57, DW_AT_type(*DW$T$10)
	.dwattr DW$177, DW_AT_external(0x01)
	.dwattr DW$261, DW_AT_external(0x01)
	.dwattr DW$261, DW_AT_type(*DW$T$10)
	.dwattr DW$351, DW_AT_external(0x01)
	.dwattr DW$351, DW_AT_type(*DW$T$10)
	.dwattr DW$322, DW_AT_external(0x01)
	.dwattr DW$322, DW_AT_type(*DW$T$10)
	.dwattr DW$362, DW_AT_external(0x01)
	.dwattr DW$362, DW_AT_type(*DW$T$10)
	.dwattr DW$140, DW_AT_external(0x01)
	.dwattr DW$140, DW_AT_type(*DW$T$10)
	.dwattr DW$214, DW_AT_external(0x01)
	.dwattr DW$214, DW_AT_type(*DW$T$10)
	.dwattr DW$226, DW_AT_external(0x01)
	.dwattr DW$226, DW_AT_type(*DW$T$13)
	.dwattr DW$130, DW_AT_type(*DW$T$10)
	.dwattr DW$40, DW_AT_external(0x01)
	.dwattr DW$40, DW_AT_type(*DW$T$13)
	.dwattr DW$93, DW_AT_external(0x01)
	.dwattr DW$93, DW_AT_type(*DW$T$13)
	.dwattr DW$151, DW_AT_external(0x01)
	.dwattr DW$151, DW_AT_type(*DW$T$10)
	.dwattr DW$35, DW_AT_external(0x01)
	.dwattr DW$35, DW_AT_type(*DW$T$9)
	.dwattr DW$238, DW_AT_external(0x01)
	.dwattr DW$483, DW_AT_external(0x01)
	.dwattr DW$483, DW_AT_type(*DW$T$10)
	.dwattr DW$486, DW_AT_external(0x01)
	.dwattr DW$195, DW_AT_type(*DW$T$10)
	.dwattr DW$181, DW_AT_type(*DW$T$10)
	.dwattr DW$101, DW_AT_type(*DW$T$10)
	.dwattr DW$76, DW_AT_external(0x01)
	.dwattr DW$76, DW_AT_type(*DW$T$10)
	.dwattr DW$381, DW_AT_external(0x01)
	.dwattr DW$381, DW_AT_type(*DW$T$10)
	.dwattr DW$136, DW_AT_external(0x01)
	.dwattr DW$136, DW_AT_type(*DW$T$10)
	.dwattr DW$229, DW_AT_external(0x01)
	.dwattr DW$42, DW_AT_external(0x01)
	.dwattr DW$37, DW_AT_external(0x01)
	.dwattr DW$391, DW_AT_external(0x01)
	.dwattr DW$391, DW_AT_type(*DW$T$10)
	.dwattr DW$120, DW_AT_type(*DW$T$10)
	.dwattr DW$125, DW_AT_external(0x01)
	.dwattr DW$125, DW_AT_type(*DW$T$10)
	.dwattr DW$59, DW_AT_external(0x01)
	.dwattr DW$59, DW_AT_type(*DW$T$10)
	.dwattr DW$498, DW_AT_external(0x01)
	.dwattr DW$508, DW_AT_external(0x01)
	.dwattr DW$506, DW_AT_external(0x01)
	.dwattr DW$45, DW_AT_type(*DW$T$112)
	.dwattr DW$54, DW_AT_type(*DW$T$112)
	.dwattr DW$51, DW_AT_type(*DW$T$112)
	.dwattr DW$108, DW_AT_type(*DW$T$112)
	.dwattr DW$103, DW_AT_type(*DW$T$112)
	.dwattr DW$117, DW_AT_type(*DW$T$112)
	.dwattr DW$114, DW_AT_type(*DW$T$112)
	.dwattr DW$478, DW_AT_external(0x01)
	.dwattr DW$468, DW_AT_external(0x01)
	.dwattr DW$468, DW_AT_type(*DW$T$10)
	.dwattr DW$235, DW_AT_external(0x01)
	.dwattr DW$235, DW_AT_type(*DW$T$10)
	.dwattr DW$160, DW_AT_external(0x01)
	.dwattr DW$160, DW_AT_type(*DW$T$10)
	.dwattr DW$397, DW_AT_external(0x01)
	.dwattr DW$397, DW_AT_type(*DW$T$10)
	.dwattr DW$163, DW_AT_external(0x01)
	.dwattr DW$163, DW_AT_type(*DW$T$10)
	.dwattr DW$456, DW_AT_external(0x01)
	.dwattr DW$456, DW_AT_type(*DW$T$10)
	.dwattr DW$400, DW_AT_external(0x01)
	.dwattr DW$400, DW_AT_type(*DW$T$10)
	.dwattr DW$210, DW_AT_external(0x01)
	.dwattr DW$210, DW_AT_type(*DW$T$10)
	.dwattr DW$488, DW_AT_external(0x01)
	.dwattr DW$488, DW_AT_type(*DW$T$10)
	.dwattr DW$165, DW_AT_external(0x01)
	.dwattr DW$165, DW_AT_type(*DW$T$10)
	.dwattr DW$170, DW_AT_external(0x01)
	.dwattr DW$170, DW_AT_type(*DW$T$10)
	.dwattr DW$465, DW_AT_external(0x01)
	.dwattr DW$465, DW_AT_type(*DW$T$10)
	.dwattr DW$233, DW_AT_external(0x01)
	.dwattr DW$233, DW_AT_type(*DW$T$10)
	.dwattr DW$295, DW_AT_external(0x01)
	.dwattr DW$295, DW_AT_type(*DW$T$10)
	.dwattr DW$34, DW_AT_external(0x01)
	.dwattr DW$34, DW_AT_type(*DW$T$53)
	.dwattr DW$206, DW_AT_external(0x01)
	.dwattr DW$206, DW_AT_type(*DW$T$10)
	.dwattr DW$155, DW_AT_external(0x01)
	.dwattr DW$155, DW_AT_type(*DW$T$10)
	.dwattr DW$461, DW_AT_external(0x01)
	.dwattr DW$461, DW_AT_type(*DW$T$10)
	.dwattr DW$403, DW_AT_external(0x01)
	.dwattr DW$403, DW_AT_type(*DW$T$12)
	.dwattr DW$458, DW_AT_external(0x01)
	.dwattr DW$458, DW_AT_type(*DW$T$10)
	.dwattr DW$449, DW_AT_external(0x01)
	.dwattr DW$449, DW_AT_type(*DW$T$10)
	.dwattr DW$495, DW_AT_external(0x01)
	.dwattr DW$495, DW_AT_type(*DW$T$10)
	.dwattr DW$454, DW_AT_external(0x01)
	.dwattr DW$454, DW_AT_type(*DW$T$12)
	.dwattr DW$428, DW_AT_external(0x01)
	.dwattr DW$428, DW_AT_type(*DW$T$12)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$796	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$796, DW_AT_location[DW_OP_reg0]
DW$797	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$797, DW_AT_location[DW_OP_reg1]
DW$798	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$798, DW_AT_location[DW_OP_reg2]
DW$799	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$799, DW_AT_location[DW_OP_reg3]
DW$800	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$800, DW_AT_location[DW_OP_reg4]
DW$801	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$801, DW_AT_location[DW_OP_reg5]
DW$802	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$802, DW_AT_location[DW_OP_reg6]
DW$803	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$803, DW_AT_location[DW_OP_reg7]
DW$804	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$804, DW_AT_location[DW_OP_reg8]
DW$805	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$805, DW_AT_location[DW_OP_reg9]
DW$806	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$806, DW_AT_location[DW_OP_reg10]
DW$807	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$807, DW_AT_location[DW_OP_reg11]
DW$808	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$808, DW_AT_location[DW_OP_reg12]
DW$809	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$809, DW_AT_location[DW_OP_reg13]
DW$810	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$810, DW_AT_location[DW_OP_reg14]
DW$811	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$811, DW_AT_location[DW_OP_reg15]
DW$812	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$812, DW_AT_location[DW_OP_reg16]
DW$813	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$813, DW_AT_location[DW_OP_reg17]
DW$814	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$814, DW_AT_location[DW_OP_reg18]
DW$815	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$815, DW_AT_location[DW_OP_reg19]
DW$816	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$816, DW_AT_location[DW_OP_reg20]
DW$817	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$817, DW_AT_location[DW_OP_reg21]
DW$818	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$818, DW_AT_location[DW_OP_reg22]
DW$819	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$819, DW_AT_location[DW_OP_reg23]
DW$820	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$820, DW_AT_location[DW_OP_reg24]
DW$821	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$821, DW_AT_location[DW_OP_reg25]
DW$822	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$822, DW_AT_location[DW_OP_reg26]
DW$823	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$823, DW_AT_location[DW_OP_reg27]
DW$824	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$824, DW_AT_location[DW_OP_reg28]
DW$825	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$825, DW_AT_location[DW_OP_reg29]
DW$826	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$826, DW_AT_location[DW_OP_reg30]
DW$827	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$827, DW_AT_location[DW_OP_reg31]
DW$828	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$828, DW_AT_location[DW_OP_regx 0x20]
DW$829	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$829, DW_AT_location[DW_OP_regx 0x21]
DW$830	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$830, DW_AT_location[DW_OP_regx 0x22]
DW$831	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$831, DW_AT_location[DW_OP_regx 0x23]
DW$832	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$832, DW_AT_location[DW_OP_regx 0x24]
DW$833	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$833, DW_AT_location[DW_OP_regx 0x25]
DW$834	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$834, DW_AT_location[DW_OP_regx 0x26]
DW$835	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$835, DW_AT_location[DW_OP_regx 0x27]
DW$836	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$836, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

