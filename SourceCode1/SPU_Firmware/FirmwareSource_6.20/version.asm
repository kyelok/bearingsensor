;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Tue Sep 20 14:13:26 2016                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("version.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("memset"), DW_AT_symbol_name("_memset")
	.dwattr DW$1, DW_AT_type(*DW$T$3)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$1


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("SaveFirmwareStruct"), DW_AT_symbol_name("_SaveFirmwareStruct")
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_variable, DW_AT_name("allsensors"), DW_AT_symbol_name("_allsensors")
	.dwattr DW$6, DW_AT_type(*DW$T$40)
	.dwattr DW$6, DW_AT_declaration(0x01)
	.dwattr DW$6, DW_AT_external(0x01)
DW$7	.dwtag  DW_TAG_variable, DW_AT_name("slave485mb"), DW_AT_symbol_name("_slave485mb")
	.dwattr DW$7, DW_AT_type(*DW$T$41)
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)
	.global	_versionreg
	.sect	".econst"
	.align	1
_versionreg:
	.field  	1568,16			; _versionreg @ 0

DW$8	.dwtag  DW_TAG_variable, DW_AT_name("versionreg"), DW_AT_symbol_name("_versionreg")
	.dwattr DW$8, DW_AT_location[DW_OP_addr _versionreg]
	.dwattr DW$8, DW_AT_type(*DW$T$39)
	.dwattr DW$8, DW_AT_external(0x01)
	.global	_versionregslave
_versionregslave:	.usect	".ebss",1,1,0
DW$9	.dwtag  DW_TAG_variable, DW_AT_name("versionregslave"), DW_AT_symbol_name("_versionregslave")
	.dwattr DW$9, DW_AT_location[DW_OP_addr _versionregslave]
	.dwattr DW$9, DW_AT_type(*DW$T$11)
	.dwattr DW$9, DW_AT_external(0x01)
	.global	_version
	.sect	".econst"
	.align	1
_version:
	.field  	83,16			; _version[0] @ 0
	.field  	111,16			; _version[1] @ 16
	.field  	102,16			; _version[2] @ 32
	.field  	116,16			; _version[3] @ 48
	.field  	119,16			; _version[4] @ 64
	.field  	97,16			; _version[5] @ 80
	.field  	114,16			; _version[6] @ 96
	.field  	101,16			; _version[7] @ 112
	.field  	32,16			; _version[8] @ 128
	.field  	86,16			; _version[9] @ 144
	.field  	101,16			; _version[10] @ 160
	.field  	114,16			; _version[11] @ 176
	.field  	115,16			; _version[12] @ 192
	.field  	105,16			; _version[13] @ 208
	.field  	111,16			; _version[14] @ 224
	.field  	110,16			; _version[15] @ 240
	.field  	32,16			; _version[16] @ 256
	.field  	54,16			; _version[17] @ 272
	.field  	46,16			; _version[18] @ 288
	.field  	50,16			; _version[19] @ 304
	.field  	48,16			; _version[20] @ 320
	.field  	44,16			; _version[21] @ 336
	.field  	32,16			; _version[22] @ 352
	.field  	82,16			; _version[23] @ 368
	.field  	101,16			; _version[24] @ 384
	.field  	108,16			; _version[25] @ 400
	.field  	101,16			; _version[26] @ 416
	.field  	97,16			; _version[27] @ 432
	.field  	115,16			; _version[28] @ 448
	.field  	101,16			; _version[29] @ 464
	.field  	100,16			; _version[30] @ 480
	.field  	58,16			; _version[31] @ 496
	.field  	32,16			; _version[32] @ 512
	.field  	49,16			; _version[33] @ 528
	.field  	56,16			; _version[34] @ 544
	.field  	116,16			; _version[35] @ 560
	.field  	104,16			; _version[36] @ 576
	.field  	32,16			; _version[37] @ 592
	.field  	65,16			; _version[38] @ 608
	.field  	117,16			; _version[39] @ 624
	.field  	103,16			; _version[40] @ 640
	.field  	117,16			; _version[41] @ 656
	.field  	115,16			; _version[42] @ 672
	.field  	116,16			; _version[43] @ 688
	.field  	32,16			; _version[44] @ 704
	.field  	50,16			; _version[45] @ 720
	.field  	48,16			; _version[46] @ 736
	.field  	49,16			; _version[47] @ 752
	.field  	54,16			; _version[48] @ 768
	.field  	13,16			; _version[49] @ 784
	.field  	10,16			; _version[50] @ 800
	.field  	0,16			; _version[51] @ 816

DW$10	.dwtag  DW_TAG_variable, DW_AT_name("version"), DW_AT_symbol_name("_version")
	.dwattr DW$10, DW_AT_location[DW_OP_addr _version]
	.dwattr DW$10, DW_AT_type(*DW$T$45)
	.dwattr DW$10, DW_AT_external(0x01)
	.global	_firmware
_firmware:	.usect	".ebss",2,1,0
DW$11	.dwtag  DW_TAG_variable, DW_AT_name("firmware"), DW_AT_symbol_name("_firmware")
	.dwattr DW$11, DW_AT_location[DW_OP_addr _firmware]
	.dwattr DW$11, DW_AT_type(*DW$T$42)
	.dwattr DW$11, DW_AT_external(0x01)
;	C:\CCStudio_v3.3\C2000\cgtools\bin\opt2000.exe C:\Users\Andrew\AppData\Local\Temp\TI9282 C:\Users\Andrew\AppData\Local\Temp\TI9284 
;	C:\CCStudio_v3.3\C2000\cgtools\bin\ac2000.exe -q -D_INLINE -DLARGE_MODEL -IC:/CCStudio_v3.3/C2000/xdais/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/bios/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/rtdx/include/c2000 -IC:/CCStudio_v3.3/C2000/cgtools/include --version=28 --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\Andrew\AppData\Local\Temp\TI9282 --template_info_file C:\Users\Andrew\AppData\Local\Temp\TI9286 --object_file 
	.sect	".text"
	.global	_SetSlaveVersion

DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("SetSlaveVersion"), DW_AT_symbol_name("_SetSlaveVersion")
	.dwattr DW$12, DW_AT_low_pc(_SetSlaveVersion)
	.dwattr DW$12, DW_AT_high_pc(0x00)
	.dwattr DW$12, DW_AT_begin_file("version.c")
	.dwattr DW$12, DW_AT_begin_line(0x28)
	.dwattr DW$12, DW_AT_begin_column(0x06)
	.dwattr DW$12, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$12, DW_AT_skeletal(0x01)
	.dwpsn	"version.c",41,1

;***************************************************************
;* FNAME: _SetSlaveVersion              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SetSlaveVersion:
;* AL    assigned to _ver
DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ver"), DW_AT_symbol_name("_ver")
	.dwattr DW$13, DW_AT_type(*DW$T$11)
	.dwattr DW$13, DW_AT_location[DW_OP_reg0]
        MOVW      DP,#_versionregslave
        MOV       @_versionregslave,AL  ; |42| 
	.dwpsn	"version.c",43,1
        LRETR
        ; return occurs
	.dwattr DW$12, DW_AT_end_file("version.c")
	.dwattr DW$12, DW_AT_end_line(0x2b)
	.dwattr DW$12, DW_AT_end_column(0x01)
	.dwendtag DW$12

	.sect	".text"
	.global	_GetSlaveVersion

DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("GetSlaveVersion"), DW_AT_symbol_name("_GetSlaveVersion")
	.dwattr DW$14, DW_AT_low_pc(_GetSlaveVersion)
	.dwattr DW$14, DW_AT_high_pc(0x00)
	.dwattr DW$14, DW_AT_begin_file("version.c")
	.dwattr DW$14, DW_AT_begin_line(0x2d)
	.dwattr DW$14, DW_AT_begin_column(0x0e)
	.dwattr DW$14, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$14, DW_AT_skeletal(0x01)
	.dwpsn	"version.c",46,1

;***************************************************************
;* FNAME: _GetSlaveVersion              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_GetSlaveVersion:
        MOVW      DP,#_slave485mb+70
        MOV       AL,@_slave485mb+70    ; |48| 
        BF        L1,EQ                 ; |48| 
        ; branchcc occurs ; |48| 
        MOVB      AL,#0
        BF        L2,UNC                ; |48| 
        ; branch occurs ; |48| 
L1:    
        MOVW      DP,#_versionregslave
        MOV       AL,@_versionregslave  ; |48| 
L2:    
	.dwpsn	"version.c",54,1
        LRETR
        ; return occurs
	.dwattr DW$14, DW_AT_end_file("version.c")
	.dwattr DW$14, DW_AT_end_line(0x36)
	.dwattr DW$14, DW_AT_end_column(0x01)
	.dwendtag DW$14

	.sect	".text"
	.global	_FirmwareComparison

DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("FirmwareComparison"), DW_AT_symbol_name("_FirmwareComparison")
	.dwattr DW$15, DW_AT_low_pc(_FirmwareComparison)
	.dwattr DW$15, DW_AT_high_pc(0x00)
	.dwattr DW$15, DW_AT_begin_file("version.c")
	.dwattr DW$15, DW_AT_begin_line(0x39)
	.dwattr DW$15, DW_AT_begin_column(0x06)
	.dwattr DW$15, DW_AT_frame_base[DW_OP_breg20 -32]
	.dwattr DW$15, DW_AT_skeletal(0x01)
	.dwpsn	"version.c",58,1

;***************************************************************
;* FNAME: _FirmwareComparison           FR SIZE:  30           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 30 Auto,  0 SOE     *
;***************************************************************

_FirmwareComparison:
        ADDB      SP,#30
        MOVZ      AR4,SP                ; |62| 
        MOVB      ACC,#30
        MOVB      XAR5,#0
        SUBB      XAR4,#30              ; |62| 
        LCR       #_memset              ; |62| 
        ; call occurs [#_memset] ; |62| 
        MOVW      DP,#_firmware+1
        CMP       @_firmware+1,#1568    ; |64| 
        BF        L3,EQ                 ; |64| 
        ; branchcc occurs ; |64| 
        MOVW      DP,#_firmware+1
        MOV       @_firmware+1,#1568    ; |68| 
        LCR       #_SaveFirmwareStruct  ; |69| 
        ; call occurs [#_SaveFirmwareStruct] ; |69| 
L3:    
        MOVW      DP,#_allsensors+2
        MOV       AL,@_allsensors+2     ; |71| 
        BF        L4,EQ                 ; |71| 
        ; branchcc occurs ; |71| 
        LCR       #_GetSlaveVersion     ; |73| 
        ; call occurs [#_GetSlaveVersion] ; |73| 
        MOVW      DP,#_firmware
        CMP       AL,@_firmware         ; |74| 
        BF        L4,EQ                 ; |74| 
        ; branchcc occurs ; |74| 
        CMPB      AL,#0                 ; |74| 
        BF        L4,EQ                 ; |74| 
        ; branchcc occurs ; |74| 
        MOVW      DP,#_firmware
        MOV       @_firmware,AL         ; |79| 
        LCR       #_SaveFirmwareStruct  ; |80| 
        ; call occurs [#_SaveFirmwareStruct] ; |80| 
L4:    
        SUBB      SP,#30
	.dwpsn	"version.c",83,1
        LRETR
        ; return occurs
	.dwattr DW$15, DW_AT_end_file("version.c")
	.dwattr DW$15, DW_AT_end_line(0x53)
	.dwattr DW$15, DW_AT_end_column(0x01)
	.dwendtag DW$15

	.sect	".text"
	.global	_DummyFunction

DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("DummyFunction"), DW_AT_symbol_name("_DummyFunction")
	.dwattr DW$16, DW_AT_low_pc(_DummyFunction)
	.dwattr DW$16, DW_AT_high_pc(0x00)
	.dwattr DW$16, DW_AT_begin_file("version.c")
	.dwattr DW$16, DW_AT_begin_line(0x56)
	.dwattr DW$16, DW_AT_begin_column(0x06)
	.dwattr DW$16, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$16, DW_AT_skeletal(0x01)
	.dwpsn	"version.c",87,1

;***************************************************************
;* FNAME: _DummyFunction                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_DummyFunction:
	.dwpsn	"version.c",92,0
        MOVB      AH,#0
L5:    
DW$L$_DummyFunction$2$B:
	.dwpsn	"version.c",93,0
        CMP       AL,AL                 ; |94| 
        ADDB      AH,#1                 ; |92| 
        CMPB      AH,#200               ; |92| 
	.dwpsn	"version.c",95,0
        BF        L5,LT                 ; |92| 
        ; branchcc occurs ; |92| 
DW$L$_DummyFunction$2$E:
	.dwpsn	"version.c",96,1
        LRETR
        ; return occurs

DW$17	.dwtag  DW_TAG_loop
	.dwattr DW$17, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\version.asm:L5:1:1474377206")
	.dwattr DW$17, DW_AT_begin_file("version.c")
	.dwattr DW$17, DW_AT_begin_line(0x5c)
	.dwattr DW$17, DW_AT_end_line(0x5f)
DW$18	.dwtag  DW_TAG_loop_range
	.dwattr DW$18, DW_AT_low_pc(DW$L$_DummyFunction$2$B)
	.dwattr DW$18, DW_AT_high_pc(DW$L$_DummyFunction$2$E)
	.dwendtag DW$17

	.dwattr DW$16, DW_AT_end_file("version.c")
	.dwattr DW$16, DW_AT_end_line(0x60)
	.dwattr DW$16, DW_AT_end_column(0x01)
	.dwendtag DW$16

;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_memset
	.global	_SaveFirmwareStruct
	.global	_allsensors
	.global	_slave485mb

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x16)

DW$T$27	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$27, DW_AT_language(DW_LANG_C)
DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$T$27


DW$T$29	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)

DW$T$31	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$31, DW_AT_language(DW_LANG_C)
DW$22	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$31

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)

DW$T$37	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$37, DW_AT_language(DW_LANG_C)
DW$23	.dwtag  DW_TAG_far_type
	.dwattr DW$23, DW_AT_type(*DW$T$11)
DW$T$39	.dwtag  DW_TAG_const_type
	.dwattr DW$T$39, DW_AT_type(*DW$23)
DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$26, DW_AT_language(DW_LANG_C)
DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("allsensorstruct"), DW_AT_type(*DW$T$22)
	.dwattr DW$T$40, DW_AT_language(DW_LANG_C)
DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("slavecmdstruct"), DW_AT_type(*DW$T$24)
	.dwattr DW$T$41, DW_AT_language(DW_LANG_C)
DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("firmwarestruct"), DW_AT_type(*DW$T$25)
	.dwattr DW$T$42, DW_AT_language(DW_LANG_C)

DW$T$45	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$44)
	.dwattr DW$T$45, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$45, DW_AT_byte_size(0x34)
DW$24	.dwtag  DW_TAG_subrange_type
	.dwattr DW$24, DW_AT_upper_bound(0x33)
	.dwendtag DW$T$45

DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)

DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_name("tag_allsensorstruct")
	.dwattr DW$T$22, DW_AT_byte_size(0x2d)
DW$25	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$25, DW_AT_name("numsensors"), DW_AT_symbol_name("_numsensors")
	.dwattr DW$25, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$25, DW_AT_accessibility(DW_ACCESS_public)
DW$26	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$26, DW_AT_name("numsensorsspu1"), DW_AT_symbol_name("_numsensorsspu1")
	.dwattr DW$26, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$26, DW_AT_accessibility(DW_ACCESS_public)
DW$27	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$27, DW_AT_name("numsensorsspu2"), DW_AT_symbol_name("_numsensorsspu2")
	.dwattr DW$27, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$27, DW_AT_accessibility(DW_ACCESS_public)
DW$28	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$28, DW_AT_name("nominalspeed"), DW_AT_symbol_name("_nominalspeed")
	.dwattr DW$28, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$28, DW_AT_accessibility(DW_ACCESS_public)
DW$29	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$29, DW_AT_name("rpmmin"), DW_AT_symbol_name("_rpmmin")
	.dwattr DW$29, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$29, DW_AT_accessibility(DW_ACCESS_public)
DW$30	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$30, DW_AT_name("rpmmax"), DW_AT_symbol_name("_rpmmax")
	.dwattr DW$30, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$30, DW_AT_accessibility(DW_ACCESS_public)
DW$31	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$31, DW_AT_name("reflash"), DW_AT_symbol_name("_reflash")
	.dwattr DW$31, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$31, DW_AT_accessibility(DW_ACCESS_public)
DW$32	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$32, DW_AT_name("sensorhysteresis"), DW_AT_symbol_name("_sensorhysteresis")
	.dwattr DW$32, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$32, DW_AT_accessibility(DW_ACCESS_public)
DW$33	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$33, DW_AT_name("cylinderhysteresis"), DW_AT_symbol_name("_cylinderhysteresis")
	.dwattr DW$33, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$33, DW_AT_accessibility(DW_ACCESS_public)
DW$34	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$34, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$34, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$34, DW_AT_accessibility(DW_ACCESS_public)
DW$35	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$35, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$35, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$35, DW_AT_accessibility(DW_ACCESS_public)
DW$36	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$36, DW_AT_name("slowdowndevcallevel"), DW_AT_symbol_name("_slowdowndevcallevel")
	.dwattr DW$36, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$36, DW_AT_accessibility(DW_ACCESS_public)
DW$37	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$37, DW_AT_name("alarmdevcallevel"), DW_AT_symbol_name("_alarmdevcallevel")
	.dwattr DW$37, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$37, DW_AT_accessibility(DW_ACCESS_public)
DW$38	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$38, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$38, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$38, DW_AT_accessibility(DW_ACCESS_public)
DW$39	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$39, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$39, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$39, DW_AT_accessibility(DW_ACCESS_public)
DW$40	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$40, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$40, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$40, DW_AT_accessibility(DW_ACCESS_public)
DW$41	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$41, DW_AT_name("flags"), DW_AT_symbol_name("_flags")
	.dwattr DW$41, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$41, DW_AT_accessibility(DW_ACCESS_public)
DW$42	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$42, DW_AT_name("slowdownack"), DW_AT_symbol_name("_slowdownack")
	.dwattr DW$42, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$42, DW_AT_accessibility(DW_ACCESS_public)
DW$43	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$43, DW_AT_name("alarmack"), DW_AT_symbol_name("_alarmack")
	.dwattr DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$43, DW_AT_accessibility(DW_ACCESS_public)
DW$44	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$44, DW_AT_name("maxmintimer"), DW_AT_symbol_name("_maxmintimer")
	.dwattr DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$44, DW_AT_accessibility(DW_ACCESS_public)
DW$45	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$45, DW_AT_name("enginedircal"), DW_AT_symbol_name("_enginedircal")
	.dwattr DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$45, DW_AT_accessibility(DW_ACCESS_public)
DW$46	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$46, DW_AT_name("dirorder"), DW_AT_symbol_name("_dirorder")
	.dwattr DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$46, DW_AT_accessibility(DW_ACCESS_public)
DW$47	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$47, DW_AT_name("prewarningtimer"), DW_AT_symbol_name("_prewarningtimer")
	.dwattr DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$47, DW_AT_accessibility(DW_ACCESS_public)
DW$48	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$48, DW_AT_name("prewarninglevel"), DW_AT_symbol_name("_prewarninglevel")
	.dwattr DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$48, DW_AT_accessibility(DW_ACCESS_public)
DW$49	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$49, DW_AT_name("rpmlimit"), DW_AT_symbol_name("_rpmlimit")
	.dwattr DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr DW$49, DW_AT_accessibility(DW_ACCESS_public)
DW$50	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$50, DW_AT_name("dsss"), DW_AT_symbol_name("_dsss")
	.dwattr DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$50, DW_AT_accessibility(DW_ACCESS_public)
DW$51	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$51, DW_AT_name("slowdowncallevel"), DW_AT_symbol_name("_slowdowncallevel")
	.dwattr DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$51, DW_AT_accessibility(DW_ACCESS_public)
DW$52	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$52, DW_AT_name("alarmcallevel"), DW_AT_symbol_name("_alarmcallevel")
	.dwattr DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$52, DW_AT_accessibility(DW_ACCESS_public)
DW$53	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$53, DW_AT_name("cylinderalarmcallevel"), DW_AT_symbol_name("_cylinderalarmcallevel")
	.dwattr DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$53, DW_AT_accessibility(DW_ACCESS_public)
DW$54	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$54, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$54, DW_AT_accessibility(DW_ACCESS_public)
DW$55	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$55, DW_AT_name("iBarredVibrationSpeedLow"), DW_AT_symbol_name("_iBarredVibrationSpeedLow")
	.dwattr DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$55, DW_AT_accessibility(DW_ACCESS_public)
DW$56	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$56, DW_AT_name("iBarredVibrationSpeedHigh"), DW_AT_symbol_name("_iBarredVibrationSpeedHigh")
	.dwattr DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$56, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_name("tag_slavecmdstruct")
	.dwattr DW$T$24, DW_AT_byte_size(0x48)
DW$57	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$57, DW_AT_name("SlaveAddr"), DW_AT_symbol_name("_SlaveAddr")
	.dwattr DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$57, DW_AT_accessibility(DW_ACCESS_public)
DW$58	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$58, DW_AT_name("Func"), DW_AT_symbol_name("_Func")
	.dwattr DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$58, DW_AT_accessibility(DW_ACCESS_public)
DW$59	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$59, DW_AT_name("StartAdd"), DW_AT_symbol_name("_StartAdd")
	.dwattr DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$59, DW_AT_accessibility(DW_ACCESS_public)
DW$60	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$60, DW_AT_name("NoReg"), DW_AT_symbol_name("_NoReg")
	.dwattr DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$60, DW_AT_accessibility(DW_ACCESS_public)
DW$61	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$61, DW_AT_name("ByteCount"), DW_AT_symbol_name("_ByteCount")
	.dwattr DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$61, DW_AT_accessibility(DW_ACCESS_public)
DW$62	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$62, DW_AT_name("Data"), DW_AT_symbol_name("_Data")
	.dwattr DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$62, DW_AT_accessibility(DW_ACCESS_public)
DW$63	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$63, DW_AT_name("txmode"), DW_AT_symbol_name("_txmode")
	.dwattr DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr DW$63, DW_AT_accessibility(DW_ACCESS_public)
DW$64	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$64, DW_AT_name("slavelost"), DW_AT_symbol_name("_slavelost")
	.dwattr DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$64, DW_AT_accessibility(DW_ACCESS_public)
DW$65	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$65, DW_AT_name("slavenotready"), DW_AT_symbol_name("_slavenotready")
	.dwattr DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr DW$65, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$25, DW_AT_name("tag_firmwarestruct")
	.dwattr DW$T$25, DW_AT_byte_size(0x02)
DW$66	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$66, DW_AT_name("spu2"), DW_AT_symbol_name("_spu2")
	.dwattr DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$66, DW_AT_accessibility(DW_ACCESS_public)
DW$67	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$67, DW_AT_name("spu1"), DW_AT_symbol_name("_spu1")
	.dwattr DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$67, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25

DW$68	.dwtag  DW_TAG_far_type
	.dwattr DW$68, DW_AT_type(*DW$T$43)
DW$T$44	.dwtag  DW_TAG_const_type
	.dwattr DW$T$44, DW_AT_type(*DW$68)

DW$T$21	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$21, DW_AT_byte_size(0x0e)
DW$69	.dwtag  DW_TAG_subrange_type
	.dwattr DW$69, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$21


DW$T$23	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$23, DW_AT_byte_size(0x40)
DW$70	.dwtag  DW_TAG_subrange_type
	.dwattr DW$70, DW_AT_upper_bound(0x3f)
	.dwendtag DW$T$23


DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$19, DW_AT_byte_size(0x01)
DW$71	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$71, DW_AT_name("newval"), DW_AT_symbol_name("_newval")
	.dwattr DW$71, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$71, DW_AT_accessibility(DW_ACCESS_public)
DW$72	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$72, DW_AT_name("calmode"), DW_AT_symbol_name("_calmode")
	.dwattr DW$72, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$72, DW_AT_accessibility(DW_ACCESS_public)
DW$73	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$73, DW_AT_name("startcal"), DW_AT_symbol_name("_startcal")
	.dwattr DW$73, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$73, DW_AT_accessibility(DW_ACCESS_public)
DW$74	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$74, DW_AT_name("newvalspu2"), DW_AT_symbol_name("_newvalspu2")
	.dwattr DW$74, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$74, DW_AT_accessibility(DW_ACCESS_public)
DW$75	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$75, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$75, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$75, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$19


DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_byte_size(0x01)
DW$76	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$76, DW_AT_name("slowdowncntrl"), DW_AT_symbol_name("_slowdowncntrl")
	.dwattr DW$76, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$76, DW_AT_accessibility(DW_ACCESS_public)
DW$77	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$77, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$77, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0f)
	.dwattr DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$77, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20

DW$T$43	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$43, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$43, DW_AT_byte_size(0x01)

	.dwattr DW$16, DW_AT_external(0x01)
	.dwattr DW$15, DW_AT_external(0x01)
	.dwattr DW$14, DW_AT_external(0x01)
	.dwattr DW$14, DW_AT_type(*DW$T$11)
	.dwattr DW$12, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$78	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$78, DW_AT_location[DW_OP_reg0]
DW$79	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$79, DW_AT_location[DW_OP_reg1]
DW$80	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$80, DW_AT_location[DW_OP_reg2]
DW$81	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$81, DW_AT_location[DW_OP_reg3]
DW$82	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$82, DW_AT_location[DW_OP_reg4]
DW$83	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$83, DW_AT_location[DW_OP_reg5]
DW$84	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$84, DW_AT_location[DW_OP_reg6]
DW$85	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$85, DW_AT_location[DW_OP_reg7]
DW$86	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$86, DW_AT_location[DW_OP_reg8]
DW$87	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$87, DW_AT_location[DW_OP_reg9]
DW$88	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$88, DW_AT_location[DW_OP_reg10]
DW$89	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$89, DW_AT_location[DW_OP_reg11]
DW$90	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$90, DW_AT_location[DW_OP_reg12]
DW$91	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$91, DW_AT_location[DW_OP_reg13]
DW$92	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$92, DW_AT_location[DW_OP_reg14]
DW$93	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$93, DW_AT_location[DW_OP_reg15]
DW$94	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$94, DW_AT_location[DW_OP_reg16]
DW$95	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$95, DW_AT_location[DW_OP_reg17]
DW$96	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$96, DW_AT_location[DW_OP_reg18]
DW$97	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$97, DW_AT_location[DW_OP_reg19]
DW$98	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$98, DW_AT_location[DW_OP_reg20]
DW$99	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$99, DW_AT_location[DW_OP_reg21]
DW$100	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$100, DW_AT_location[DW_OP_reg22]
DW$101	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$101, DW_AT_location[DW_OP_reg23]
DW$102	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$102, DW_AT_location[DW_OP_reg24]
DW$103	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$103, DW_AT_location[DW_OP_reg25]
DW$104	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$104, DW_AT_location[DW_OP_reg26]
DW$105	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$105, DW_AT_location[DW_OP_reg27]
DW$106	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$106, DW_AT_location[DW_OP_reg28]
DW$107	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$107, DW_AT_location[DW_OP_reg29]
DW$108	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$108, DW_AT_location[DW_OP_reg30]
DW$109	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$109, DW_AT_location[DW_OP_reg31]
DW$110	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$110, DW_AT_location[DW_OP_regx 0x20]
DW$111	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$111, DW_AT_location[DW_OP_regx 0x21]
DW$112	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$112, DW_AT_location[DW_OP_regx 0x22]
DW$113	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$113, DW_AT_location[DW_OP_regx 0x23]
DW$114	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$114, DW_AT_location[DW_OP_regx 0x24]
DW$115	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$115, DW_AT_location[DW_OP_regx 0x25]
DW$116	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$116, DW_AT_location[DW_OP_regx 0x26]
DW$117	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$117, DW_AT_location[DW_OP_regx 0x27]
DW$118	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$118, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

