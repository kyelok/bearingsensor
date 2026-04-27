;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Thu Aug 18 12:16:32 2016                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("spi.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("DebugStringOut"), DW_AT_symbol_name("_DebugStringOut")
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$79)
	.dwendtag DW$1


DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("NOPDelay"), DW_AT_symbol_name("_NOPDelay")
	.dwattr DW$3, DW_AT_declaration(0x01)
	.dwattr DW$3, DW_AT_external(0x01)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$3


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("DateTimetoInt"), DW_AT_symbol_name("_DateTimetoInt")
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)

DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("SaveTimetoFram"), DW_AT_symbol_name("_SaveTimetoFram")
	.dwattr DW$6, DW_AT_declaration(0x01)
	.dwattr DW$6, DW_AT_external(0x01)

DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("BuildTimeStamp"), DW_AT_symbol_name("_BuildTimeStamp")
	.dwattr DW$7, DW_AT_type(*DW$T$13)
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)

DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("ClearAlarmEvent"), DW_AT_symbol_name("_ClearAlarmEvent")
	.dwattr DW$8, DW_AT_declaration(0x01)
	.dwattr DW$8, DW_AT_external(0x01)
DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$8

DW$10	.dwtag  DW_TAG_variable, DW_AT_name("settings"), DW_AT_symbol_name("_settings")
	.dwattr DW$10, DW_AT_type(*DW$T$103)
	.dwattr DW$10, DW_AT_declaration(0x01)
	.dwattr DW$10, DW_AT_external(0x01)
DW$11	.dwtag  DW_TAG_variable, DW_AT_name("safe1"), DW_AT_symbol_name("_safe1")
	.dwattr DW$11, DW_AT_type(*DW$T$104)
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)
DW$12	.dwtag  DW_TAG_variable, DW_AT_name("safe2"), DW_AT_symbol_name("_safe2")
	.dwattr DW$12, DW_AT_type(*DW$T$106)
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)
DW$13	.dwtag  DW_TAG_variable, DW_AT_name("xtswplusanacal"), DW_AT_symbol_name("_xtswplusanacal")
	.dwattr DW$13, DW_AT_type(*DW$T$108)
	.dwattr DW$13, DW_AT_declaration(0x01)
	.dwattr DW$13, DW_AT_external(0x01)
DW$14	.dwtag  DW_TAG_variable, DW_AT_name("clocktime"), DW_AT_symbol_name("_clocktime")
	.dwattr DW$14, DW_AT_type(*DW$T$110)
	.dwattr DW$14, DW_AT_declaration(0x01)
	.dwattr DW$14, DW_AT_external(0x01)
DW$15	.dwtag  DW_TAG_variable, DW_AT_name("timers"), DW_AT_symbol_name("_timers")
	.dwattr DW$15, DW_AT_type(*DW$T$112)
	.dwattr DW$15, DW_AT_declaration(0x01)
	.dwattr DW$15, DW_AT_external(0x01)
DW$16	.dwtag  DW_TAG_variable, DW_AT_name("config"), DW_AT_symbol_name("_config")
	.dwattr DW$16, DW_AT_type(*DW$T$114)
	.dwattr DW$16, DW_AT_declaration(0x01)
	.dwattr DW$16, DW_AT_external(0x01)
DW$17	.dwtag  DW_TAG_variable, DW_AT_name("gpb"), DW_AT_symbol_name("_gpb")
	.dwattr DW$17, DW_AT_type(*DW$T$116)
	.dwattr DW$17, DW_AT_declaration(0x01)
	.dwattr DW$17, DW_AT_external(0x01)
DW$18	.dwtag  DW_TAG_variable, DW_AT_name("gpf"), DW_AT_symbol_name("_gpf")
	.dwattr DW$18, DW_AT_type(*DW$T$120)
	.dwattr DW$18, DW_AT_declaration(0x01)
	.dwattr DW$18, DW_AT_external(0x01)
DW$19	.dwtag  DW_TAG_variable, DW_AT_name("receiveC"), DW_AT_symbol_name("_receiveC")
	.dwattr DW$19, DW_AT_type(*DW$T$123)
	.dwattr DW$19, DW_AT_declaration(0x01)
	.dwattr DW$19, DW_AT_external(0x01)
DW$20	.dwtag  DW_TAG_variable, DW_AT_name("sdsettings"), DW_AT_symbol_name("_sdsettings")
	.dwattr DW$20, DW_AT_type(*DW$T$124)
	.dwattr DW$20, DW_AT_declaration(0x01)
	.dwattr DW$20, DW_AT_external(0x01)
DW$21	.dwtag  DW_TAG_variable, DW_AT_name("alarms"), DW_AT_symbol_name("_alarms")
	.dwattr DW$21, DW_AT_type(*DW$T$126)
	.dwattr DW$21, DW_AT_declaration(0x01)
	.dwattr DW$21, DW_AT_external(0x01)
DW$22	.dwtag  DW_TAG_variable, DW_AT_name("firmware"), DW_AT_symbol_name("_firmware")
	.dwattr DW$22, DW_AT_type(*DW$T$128)
	.dwattr DW$22, DW_AT_declaration(0x01)
	.dwattr DW$22, DW_AT_external(0x01)
	.global	_spiregs
_spiregs:	.usect	".spiregisters",16,0,0
DW$23	.dwtag  DW_TAG_variable, DW_AT_name("spiregs"), DW_AT_symbol_name("_spiregs")
	.dwattr DW$23, DW_AT_location[DW_OP_addr _spiregs]
	.dwattr DW$23, DW_AT_type(*DW$T$130)
	.dwattr DW$23, DW_AT_external(0x01)
	.global	_dummy
_dummy:	.usect	".ebss",1,1,0
DW$24	.dwtag  DW_TAG_variable, DW_AT_name("dummy"), DW_AT_symbol_name("_dummy")
	.dwattr DW$24, DW_AT_location[DW_OP_addr _dummy]
	.dwattr DW$24, DW_AT_type(*DW$T$11)
	.dwattr DW$24, DW_AT_external(0x01)
	.global	_flashaddr
_flashaddr:	.usect	".ebss",4,1,1
DW$25	.dwtag  DW_TAG_variable, DW_AT_name("flashaddr"), DW_AT_symbol_name("_flashaddr")
	.dwattr DW$25, DW_AT_location[DW_OP_addr _flashaddr]
	.dwattr DW$25, DW_AT_type(*DW$T$132)
	.dwattr DW$25, DW_AT_external(0x01)
	.global	_flashcheck
_flashcheck:	.usect	".ebss",4,1,0
DW$26	.dwtag  DW_TAG_variable, DW_AT_name("flashcheck"), DW_AT_symbol_name("_flashcheck")
	.dwattr DW$26, DW_AT_location[DW_OP_addr _flashcheck]
	.dwattr DW$26, DW_AT_type(*DW$T$133)
	.dwattr DW$26, DW_AT_external(0x01)
;	C:\CCStudio_v3.3\C2000\cgtools\bin\opt2000.exe C:\Users\Andrew\AppData\Local\Temp\TI3762 C:\Users\Andrew\AppData\Local\Temp\TI3764 
;	C:\CCStudio_v3.3\C2000\cgtools\bin\ac2000.exe -q -D_INLINE -DLARGE_MODEL -IC:/CCStudio_v3.3/C2000/xdais/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/bios/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/rtdx/include/c2000 -IC:/CCStudio_v3.3/C2000/cgtools/include --version=28 --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\Andrew\AppData\Local\Temp\TI3762 --template_info_file C:\Users\Andrew\AppData\Local\Temp\TI3766 --object_file 
	.sect	".text"
	.global	_InitSPI

DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("InitSPI"), DW_AT_symbol_name("_InitSPI")
	.dwattr DW$27, DW_AT_low_pc(_InitSPI)
	.dwattr DW$27, DW_AT_high_pc(0x00)
	.dwattr DW$27, DW_AT_begin_file("spi.c")
	.dwattr DW$27, DW_AT_begin_line(0x40)
	.dwattr DW$27, DW_AT_begin_column(0x06)
	.dwattr DW$27, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$27, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",65,1

;***************************************************************
;* FNAME: _InitSPI                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_InitSPI:
 eallow             ; Enable accesses to PIE control registers
        MOV       AL,*(0:0x70d4)        ; |68| 
        ORB       AL,#0x07              ; |68| 
        MOV       *(0:0x70d4),AL        ; |68| 
        NOP
        NOP
        MOV       AL,*(0:0x70c5)        ; |69| 
        OR        AL,#0x4000            ; |69| 
        MOV       *(0:0x70c5),AL        ; |69| 
        MOVW      DP,#_gpf
        SPM       #0
        MOV       AL,*(0:0x70d5)        ; |70| 
        OR        AL,#0x070d            ; |70| 
        MOV       *(0:0x70d5),AL        ; |70| 
        AND       @_gpf,#0xfff7         ; |74| 
        LCR       #_DeselectSPI         ; |75| 
        ; call occurs [#_DeselectSPI] ; |75| 
        MOV       AL,*(0:0x701c)        ; |76| 
        OR        AL,#0x0100            ; |76| 
        MOVL      XAR4,#_spiregs        ; |78| 
        MOV       *(0:0x701c),AL        ; |76| 
        AND       *+XAR4[0],#0xff7f     ; |78| 
        AND       *+XAR4[0],#0xffbf     ; |79| 
        AND       *+XAR4[0],#0xffef     ; |80| 
        AND       AL,*+XAR4[0],#0xfff0  ; |81| 
        ORB       AL,#0x07              ; |81| 
        MOV       *+XAR4[0],AL          ; |81| 
        MOVW      DP,#_spiregs+1
        AND       *+XAR4[1],#0xffef     ; |82| 
        AND       @_spiregs+1,#0xfff7   ; |83| 
        MOVW      DP,#_spiregs+1
        OR        @_spiregs+1,#0x0004   ; |84| 
        MOVW      DP,#_spiregs+1
        OR        @_spiregs+1,#0x0002   ; |85| 
        MOVW      DP,#_spiregs+1
        AND       @_spiregs+1,#0xfffe   ; |86| 
        MOVB      AL,#61                ; |96| 
        MOVW      DP,#_spiregs
        MOV       *(0:0x7044),AL        ; |96| 
        OR        @_spiregs,#0x0080     ; |98| 
 edis               ; Disable accesses to PIE control registers
        MOVW      DP,#_clocktime
        MOV       @_clocktime,#0        ; |102| 
        MOVW      DP,#_flashaddr
        MOVB      ACC,#0
        MOVL      @_flashaddr,ACC       ; |106| 
        SPM       #0
        MOVW      DP,#_flashaddr+2
        MOV       @_flashaddr+2,#0      ; |107| 
        MOVW      DP,#_settings+2
        MOV       @_settings+2,#0       ; |109| 
        MOVW      DP,#_settings+14
        MOV       @_settings+14,#0      ; |111| 
	.dwpsn	"spi.c",113,1
        LRETR
        ; return occurs
	.dwattr DW$27, DW_AT_end_file("spi.c")
	.dwattr DW$27, DW_AT_end_line(0x71)
	.dwattr DW$27, DW_AT_end_column(0x01)
	.dwendtag DW$27

	.sect	".text"
	.global	_SaveSafeGeneric

DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("SaveSafeGeneric"), DW_AT_symbol_name("_SaveSafeGeneric")
	.dwattr DW$28, DW_AT_low_pc(_SaveSafeGeneric)
	.dwattr DW$28, DW_AT_high_pc(0x00)
	.dwattr DW$28, DW_AT_begin_file("spi.c")
	.dwattr DW$28, DW_AT_begin_line(0x75)
	.dwattr DW$28, DW_AT_begin_column(0x06)
	.dwattr DW$28, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$28, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",118,1

;***************************************************************
;* FNAME: _SaveSafeGeneric              FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  6 SOE     *
;***************************************************************

_SaveSafeGeneric:
;* AL    assigned to _start
DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_name("start"), DW_AT_symbol_name("_start")
	.dwattr DW$29, DW_AT_type(*DW$T$11)
	.dwattr DW$29, DW_AT_location[DW_OP_reg0]
;* AR4   assigned to _ptr
DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$30, DW_AT_type(*DW$T$86)
	.dwattr DW$30, DW_AT_location[DW_OP_reg12]
;* AH    assigned to _size
DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size"), DW_AT_symbol_name("_size")
	.dwattr DW$31, DW_AT_type(*DW$T$11)
	.dwattr DW$31, DW_AT_location[DW_OP_reg1]
        MOVL      *SP++,XAR1
        MOVW      DP,#_settings
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOVZ      AR1,AL                ; |118| 
        ADDB      SP,#2
        MOV       @_settings,#1         ; |124| 
        MOVL      XAR2,XAR4             ; |118| 
        MOVW      DP,#_timers+40
        MOV       *-SP[1],AH            ; |118| 
	.dwpsn	"spi.c",126,0
        MOV       @_timers+40,#3        ; |125| 
L1:    
DW$L$_SaveSafeGeneric$2$B:
	.dwpsn	"spi.c",127,0
        LCR       #_ReadEEprom1StatusReg ; |128| 
        ; call occurs [#_ReadEEprom1StatusReg] ; |128| 
        MOVW      DP,#_settings
        ANDB      AL,#1                 ; |130| 
        MOV       @_settings,#1         ; |129| 
        BF        L2,EQ                 ; |130| 
        ; branchcc occurs ; |130| 
DW$L$_SaveSafeGeneric$2$E:
DW$L$_SaveSafeGeneric$3$B:
        MOVW      DP,#_timers+40
        MOV       AL,@_timers+40        ; |130| 
	.dwpsn	"spi.c",130,0
        BF        L1,NEQ                ; |130| 
        ; branchcc occurs ; |130| 
DW$L$_SaveSafeGeneric$3$E:
L2:    
        MOV       AL,AR1                ; |131| 
        LCR       #_WritetoMemoryEEprom1 ; |131| 
        ; call occurs [#_WritetoMemoryEEprom1] ; |131| 
        MOVB      XAR3,#0
        MOV       AL,*-SP[1]            ; |132| 
        BF        L4,EQ                 ; |132| 
        ; branchcc occurs ; |132| 
L3:    
DW$L$_SaveSafeGeneric$5$B:
	.dwpsn	"spi.c",133,0
        MOV       AL,*XAR2++            ; |135| 
        AND       AH,AL,#0x00ff         ; |135| 
        MOVZ      AR1,AH                ; |135| 
        LSR       AL,8                  ; |136| 
        LCR       #_TransmitByte        ; |136| 
        ; call occurs [#_TransmitByte] ; |136| 
        MOV       AL,AR1                ; |136| 
        LCR       #_TransmitByte        ; |137| 
        ; call occurs [#_TransmitByte] ; |137| 
        ADDB      XAR3,#1               ; |132| 
        MOV       AL,*-SP[1]            ; |132| 
        CMP       AL,AR3                ; |132| 
	.dwpsn	"spi.c",139,0
        BF        L3,HI                 ; |132| 
        ; branchcc occurs ; |132| 
DW$L$_SaveSafeGeneric$5$E:
L4:    
        LCR       #_DeselectSPI         ; |140| 
        ; call occurs [#_DeselectSPI] ; |140| 
        SUBB      SP,#2
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"spi.c",141,1
        LRETR
        ; return occurs

DW$32	.dwtag  DW_TAG_loop
	.dwattr DW$32, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\spi.asm:L3:1:1471518992")
	.dwattr DW$32, DW_AT_begin_file("spi.c")
	.dwattr DW$32, DW_AT_begin_line(0x84)
	.dwattr DW$32, DW_AT_end_line(0x8b)
DW$33	.dwtag  DW_TAG_loop_range
	.dwattr DW$33, DW_AT_low_pc(DW$L$_SaveSafeGeneric$5$B)
	.dwattr DW$33, DW_AT_high_pc(DW$L$_SaveSafeGeneric$5$E)
	.dwendtag DW$32


DW$34	.dwtag  DW_TAG_loop
	.dwattr DW$34, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\spi.asm:L1:1:1471518992")
	.dwattr DW$34, DW_AT_begin_file("spi.c")
	.dwattr DW$34, DW_AT_begin_line(0x7e)
	.dwattr DW$34, DW_AT_end_line(0x82)
DW$35	.dwtag  DW_TAG_loop_range
	.dwattr DW$35, DW_AT_low_pc(DW$L$_SaveSafeGeneric$2$B)
	.dwattr DW$35, DW_AT_high_pc(DW$L$_SaveSafeGeneric$2$E)
DW$36	.dwtag  DW_TAG_loop_range
	.dwattr DW$36, DW_AT_low_pc(DW$L$_SaveSafeGeneric$3$B)
	.dwattr DW$36, DW_AT_high_pc(DW$L$_SaveSafeGeneric$3$E)
	.dwendtag DW$34

	.dwattr DW$28, DW_AT_end_file("spi.c")
	.dwattr DW$28, DW_AT_end_line(0x8d)
	.dwattr DW$28, DW_AT_end_column(0x01)
	.dwendtag DW$28

	.sect	".text"
	.global	_SaveFirmwareStruct

DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("SaveFirmwareStruct"), DW_AT_symbol_name("_SaveFirmwareStruct")
	.dwattr DW$37, DW_AT_low_pc(_SaveFirmwareStruct)
	.dwattr DW$37, DW_AT_high_pc(0x00)
	.dwattr DW$37, DW_AT_begin_file("spi.c")
	.dwattr DW$37, DW_AT_begin_line(0x92)
	.dwattr DW$37, DW_AT_begin_column(0x06)
	.dwattr DW$37, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$37, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",147,1

;***************************************************************
;* FNAME: _SaveFirmwareStruct           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SaveFirmwareStruct:
        MOV       AL,#16380             ; |155| 
        MOVL      XAR4,#_firmware       ; |155| 
        MOVB      AH,#2                 ; |155| 
        LCR       #_SaveSafeGeneric     ; |155| 
        ; call occurs [#_SaveSafeGeneric] ; |155| 
	.dwpsn	"spi.c",156,1
        LRETR
        ; return occurs
	.dwattr DW$37, DW_AT_end_file("spi.c")
	.dwattr DW$37, DW_AT_end_line(0x9c)
	.dwattr DW$37, DW_AT_end_column(0x01)
	.dwendtag DW$37

	.sect	".text"
	.global	_SaveSafeStruct1

DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("SaveSafeStruct1"), DW_AT_symbol_name("_SaveSafeStruct1")
	.dwattr DW$38, DW_AT_low_pc(_SaveSafeStruct1)
	.dwattr DW$38, DW_AT_high_pc(0x00)
	.dwattr DW$38, DW_AT_begin_file("spi.c")
	.dwattr DW$38, DW_AT_begin_line(0xa1)
	.dwattr DW$38, DW_AT_begin_column(0x06)
	.dwattr DW$38, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$38, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",162,1

;***************************************************************
;* FNAME: _SaveSafeStruct1              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SaveSafeStruct1:
        MOVB      AL,#0
        MOVL      XAR4,#_safe1          ; |170| 
        MOVB      AH,#31                ; |170| 
        LCR       #_SaveSafeGeneric     ; |170| 
        ; call occurs [#_SaveSafeGeneric] ; |170| 
	.dwpsn	"spi.c",171,1
        LRETR
        ; return occurs
	.dwattr DW$38, DW_AT_end_file("spi.c")
	.dwattr DW$38, DW_AT_end_line(0xab)
	.dwattr DW$38, DW_AT_end_column(0x01)
	.dwendtag DW$38

	.sect	".text"
	.global	_SaveXtswplusAnaCal

DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("SaveXtswplusAnaCal"), DW_AT_symbol_name("_SaveXtswplusAnaCal")
	.dwattr DW$39, DW_AT_low_pc(_SaveXtswplusAnaCal)
	.dwattr DW$39, DW_AT_high_pc(0x00)
	.dwattr DW$39, DW_AT_begin_file("spi.c")
	.dwattr DW$39, DW_AT_begin_line(0xaf)
	.dwattr DW$39, DW_AT_begin_column(0x06)
	.dwattr DW$39, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$39, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",176,1

;***************************************************************
;* FNAME: _SaveXtswplusAnaCal           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SaveXtswplusAnaCal:
        MOV       AL,#384               ; |184| 
        MOVL      XAR4,#_xtswplusanacal ; |184| 
        MOVB      AH,#14                ; |184| 
        LCR       #_SaveSafeGeneric     ; |184| 
        ; call occurs [#_SaveSafeGeneric] ; |184| 
	.dwpsn	"spi.c",185,1
        LRETR
        ; return occurs
	.dwattr DW$39, DW_AT_end_file("spi.c")
	.dwattr DW$39, DW_AT_end_line(0xb9)
	.dwattr DW$39, DW_AT_end_column(0x01)
	.dwendtag DW$39

	.sect	".text"
	.global	_SaveSafeStruct2

DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("SaveSafeStruct2"), DW_AT_symbol_name("_SaveSafeStruct2")
	.dwattr DW$40, DW_AT_low_pc(_SaveSafeStruct2)
	.dwattr DW$40, DW_AT_high_pc(0x00)
	.dwattr DW$40, DW_AT_begin_file("spi.c")
	.dwattr DW$40, DW_AT_begin_line(0xbc)
	.dwattr DW$40, DW_AT_begin_column(0x06)
	.dwattr DW$40, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$40, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",189,1

;***************************************************************
;* FNAME: _SaveSafeStruct2              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SaveSafeStruct2:
        MOVB      AL,#64                ; |197| 
        MOVL      XAR4,#_safe2          ; |197| 
        MOVB      AH,#30                ; |197| 
        LCR       #_SaveSafeGeneric     ; |197| 
        ; call occurs [#_SaveSafeGeneric] ; |197| 
	.dwpsn	"spi.c",198,1
        LRETR
        ; return occurs
	.dwattr DW$40, DW_AT_end_file("spi.c")
	.dwattr DW$40, DW_AT_end_line(0xc6)
	.dwattr DW$40, DW_AT_end_column(0x01)
	.dwendtag DW$40

	.sect	".text"
	.global	_ReadAllFromEEPROM

DW$41	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadAllFromEEPROM"), DW_AT_symbol_name("_ReadAllFromEEPROM")
	.dwattr DW$41, DW_AT_low_pc(_ReadAllFromEEPROM)
	.dwattr DW$41, DW_AT_high_pc(0x00)
	.dwattr DW$41, DW_AT_begin_file("spi.c")
	.dwattr DW$41, DW_AT_begin_line(0xc9)
	.dwattr DW$41, DW_AT_begin_column(0x06)
	.dwattr DW$41, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$41, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",202,1

;***************************************************************
;* FNAME: _ReadAllFromEEPROM            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadAllFromEEPROM:
        MOVB      AL,#0
        MOVL      XAR4,#_safe1          ; |210| 
        MOVB      AH,#31                ; |210| 
        LCR       #_ReadEEPROMStruct    ; |210| 
        ; call occurs [#_ReadEEPROMStruct] ; |210| 
        MOVB      AL,#64                ; |215| 
        MOVL      XAR4,#_safe2          ; |215| 
        MOVB      AH,#30                ; |215| 
        LCR       #_ReadEEPROMStruct    ; |215| 
        ; call occurs [#_ReadEEPROMStruct] ; |215| 
        MOV       AL,#320               ; |221| 
        MOVL      XAR4,#_sdsettings     ; |221| 
        MOVB      AH,#4                 ; |221| 
        LCR       #_ReadEEPROMStruct    ; |221| 
        ; call occurs [#_ReadEEPROMStruct] ; |221| 
        MOV       AL,#384               ; |227| 
        MOVL      XAR4,#_xtswplusanacal ; |227| 
        MOVB      AH,#14                ; |227| 
        LCR       #_ReadEEPROMStruct    ; |227| 
        ; call occurs [#_ReadEEPROMStruct] ; |227| 
        MOV       AL,#16380             ; |233| 
        MOVL      XAR4,#_firmware       ; |233| 
        MOVB      AH,#2                 ; |233| 
        LCR       #_ReadEEPROMStruct    ; |233| 
        ; call occurs [#_ReadEEPROMStruct] ; |233| 
	.dwpsn	"spi.c",235,1
        LRETR
        ; return occurs
	.dwattr DW$41, DW_AT_end_file("spi.c")
	.dwattr DW$41, DW_AT_end_line(0xeb)
	.dwattr DW$41, DW_AT_end_column(0x01)
	.dwendtag DW$41

	.sect	".text"
	.global	_ReadEEPROMStruct

DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadEEPROMStruct"), DW_AT_symbol_name("_ReadEEPROMStruct")
	.dwattr DW$42, DW_AT_low_pc(_ReadEEPROMStruct)
	.dwattr DW$42, DW_AT_high_pc(0x00)
	.dwattr DW$42, DW_AT_begin_file("spi.c")
	.dwattr DW$42, DW_AT_begin_line(0xf0)
	.dwattr DW$42, DW_AT_begin_column(0x06)
	.dwattr DW$42, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$42, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",241,1

;***************************************************************
;* FNAME: _ReadEEPROMStruct             FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  6 SOE     *
;***************************************************************

_ReadEEPROMStruct:
;* AL    assigned to _pos
DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pos"), DW_AT_symbol_name("_pos")
	.dwattr DW$43, DW_AT_type(*DW$T$11)
	.dwattr DW$43, DW_AT_location[DW_OP_reg0]
;* AR4   assigned to _ptr
DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$44, DW_AT_type(*DW$T$86)
	.dwattr DW$44, DW_AT_location[DW_OP_reg12]
;* AH    assigned to _len
DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$45, DW_AT_type(*DW$T$11)
	.dwattr DW$45, DW_AT_location[DW_OP_reg1]
        MOVL      *SP++,XAR1
        MOVW      DP,#_settings
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOVZ      AR1,AL                ; |241| 
        ADDB      SP,#2
        MOV       @_settings,#1         ; |247| 
        MOVL      XAR2,XAR4             ; |241| 
        MOVW      DP,#_timers+40
        MOV       *-SP[1],AH            ; |241| 
	.dwpsn	"spi.c",249,0
        MOV       @_timers+40,#3        ; |248| 
L5:    
DW$L$_ReadEEPROMStruct$2$B:
	.dwpsn	"spi.c",250,0
        LCR       #_ReadEEprom1StatusReg ; |251| 
        ; call occurs [#_ReadEEprom1StatusReg] ; |251| 
        MOVW      DP,#_settings
        ANDB      AL,#1                 ; |253| 
        MOV       @_settings,#1         ; |252| 
        BF        L6,EQ                 ; |253| 
        ; branchcc occurs ; |253| 
DW$L$_ReadEEPROMStruct$2$E:
DW$L$_ReadEEPROMStruct$3$B:
        MOVW      DP,#_timers+40
        MOV       AL,@_timers+40        ; |253| 
	.dwpsn	"spi.c",253,0
        BF        L5,NEQ                ; |253| 
        ; branchcc occurs ; |253| 
DW$L$_ReadEEPROMStruct$3$E:
L6:    
        MOV       AL,AR1                ; |254| 
        LCR       #_ReadMemoryEEprom1   ; |254| 
        ; call occurs [#_ReadMemoryEEprom1] ; |254| 
        MOVB      XAR3,#0
        MOV       AL,*-SP[1]            ; |255| 
        BF        L8,EQ                 ; |255| 
        ; branchcc occurs ; |255| 
L7:    
DW$L$_ReadEEPROMStruct$5$B:
	.dwpsn	"spi.c",256,0
        LCR       #_ReceiveByte         ; |257| 
        ; call occurs [#_ReceiveByte] ; |257| 
        MOVZ      AR1,AL                ; |257| 
        LCR       #_ReceiveByte         ; |258| 
        ; call occurs [#_ReceiveByte] ; |258| 
        ADDB      XAR3,#1               ; |255| 
        MOVB      AL.MSB,AR1            ; |259| 
        MOV       *XAR2++,AL            ; |259| 
        MOV       AL,*-SP[1]            ; |255| 
        CMP       AL,AR3                ; |255| 
	.dwpsn	"spi.c",261,0
        BF        L7,HI                 ; |255| 
        ; branchcc occurs ; |255| 
DW$L$_ReadEEPROMStruct$5$E:
L8:    
        LCR       #_DeselectSPI         ; |262| 
        ; call occurs [#_DeselectSPI] ; |262| 
        SUBB      SP,#2
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"spi.c",263,1
        LRETR
        ; return occurs

DW$46	.dwtag  DW_TAG_loop
	.dwattr DW$46, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\spi.asm:L7:1:1471518992")
	.dwattr DW$46, DW_AT_begin_file("spi.c")
	.dwattr DW$46, DW_AT_begin_line(0xff)
	.dwattr DW$46, DW_AT_end_line(0x105)
DW$47	.dwtag  DW_TAG_loop_range
	.dwattr DW$47, DW_AT_low_pc(DW$L$_ReadEEPROMStruct$5$B)
	.dwattr DW$47, DW_AT_high_pc(DW$L$_ReadEEPROMStruct$5$E)
	.dwendtag DW$46


DW$48	.dwtag  DW_TAG_loop
	.dwattr DW$48, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\spi.asm:L5:1:1471518992")
	.dwattr DW$48, DW_AT_begin_file("spi.c")
	.dwattr DW$48, DW_AT_begin_line(0xf9)
	.dwattr DW$48, DW_AT_end_line(0xfd)
DW$49	.dwtag  DW_TAG_loop_range
	.dwattr DW$49, DW_AT_low_pc(DW$L$_ReadEEPROMStruct$2$B)
	.dwattr DW$49, DW_AT_high_pc(DW$L$_ReadEEPROMStruct$2$E)
DW$50	.dwtag  DW_TAG_loop_range
	.dwattr DW$50, DW_AT_low_pc(DW$L$_ReadEEPROMStruct$3$B)
	.dwattr DW$50, DW_AT_high_pc(DW$L$_ReadEEPROMStruct$3$E)
	.dwendtag DW$48

	.dwattr DW$42, DW_AT_end_file("spi.c")
	.dwattr DW$42, DW_AT_end_line(0x107)
	.dwattr DW$42, DW_AT_end_column(0x01)
	.dwendtag DW$42

	.sect	".text"
	.global	_ReadClockControl

DW$51	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadClockControl"), DW_AT_symbol_name("_ReadClockControl")
	.dwattr DW$51, DW_AT_low_pc(_ReadClockControl)
	.dwattr DW$51, DW_AT_high_pc(0x00)
	.dwattr DW$51, DW_AT_begin_file("spi.c")
	.dwattr DW$51, DW_AT_begin_line(0x18d)
	.dwattr DW$51, DW_AT_begin_column(0x06)
	.dwattr DW$51, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$51, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",398,1

;***************************************************************
;* FNAME: _ReadClockControl             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadClockControl:
        LCR       #_SelectRTC           ; |399| 
        ; call occurs [#_SelectRTC] ; |399| 
        MOVB      AL,#15                ; |400| 
        LCR       #_TransmitByte        ; |400| 
        ; call occurs [#_TransmitByte] ; |400| 
        LCR       #_ReceiveByte         ; |401| 
        ; call occurs [#_ReceiveByte] ; |401| 
        MOVW      DP,#_clocktime+8
        MOV       @_clocktime+8,AL      ; |401| 
        LCR       #_DeselectSPI         ; |402| 
        ; call occurs [#_DeselectSPI] ; |402| 
	.dwpsn	"spi.c",403,1
        LRETR
        ; return occurs
	.dwattr DW$51, DW_AT_end_file("spi.c")
	.dwattr DW$51, DW_AT_end_line(0x193)
	.dwattr DW$51, DW_AT_end_column(0x01)
	.dwendtag DW$51

	.sect	".text"
	.global	_ReadClockData

DW$52	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadClockData"), DW_AT_symbol_name("_ReadClockData")
	.dwattr DW$52, DW_AT_low_pc(_ReadClockData)
	.dwattr DW$52, DW_AT_high_pc(0x00)
	.dwattr DW$52, DW_AT_begin_file("spi.c")
	.dwattr DW$52, DW_AT_begin_line(0x197)
	.dwattr DW$52, DW_AT_begin_column(0x06)
	.dwattr DW$52, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$52, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",408,1

;***************************************************************
;* FNAME: _ReadClockData                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadClockData:
        MOVW      DP,#_timers+7
        MOV       AL,@_timers+7         ; |409| 
        BF        L9,NEQ                ; |409| 
        ; branchcc occurs ; |409| 
        MOVW      DP,#_timers+7
        MOV       @_timers+7,#200       ; |411| 
        LCR       #_SelectRTC           ; |412| 
        ; call occurs [#_SelectRTC] ; |412| 
        MOVB      AL,#0
        LCR       #_TransmitByte        ; |413| 
        ; call occurs [#_TransmitByte] ; |413| 
        LCR       #_ReceiveByte         ; |415| 
        ; call occurs [#_ReceiveByte] ; |415| 
        MOVW      DP,#_clocktime+1
        MOV       @_clocktime+1,AL      ; |415| 
        LCR       #_ReceiveByte         ; |416| 
        ; call occurs [#_ReceiveByte] ; |416| 
        MOVW      DP,#_clocktime+2
        MOV       @_clocktime+2,AL      ; |416| 
        LCR       #_ReceiveByte         ; |417| 
        ; call occurs [#_ReceiveByte] ; |417| 
        MOVW      DP,#_clocktime+3
        MOV       @_clocktime+3,AL      ; |417| 
        LCR       #_ReceiveByte         ; |418| 
        ; call occurs [#_ReceiveByte] ; |418| 
        MOVW      DP,#_clocktime+4
        MOV       @_clocktime+4,AL      ; |418| 
        LCR       #_ReceiveByte         ; |419| 
        ; call occurs [#_ReceiveByte] ; |419| 
        MOVW      DP,#_clocktime+5
        MOV       @_clocktime+5,AL      ; |419| 
        LCR       #_ReceiveByte         ; |420| 
        ; call occurs [#_ReceiveByte] ; |420| 
        MOVW      DP,#_clocktime+6
        MOV       @_clocktime+6,AL      ; |420| 
        LCR       #_ReceiveByte         ; |421| 
        ; call occurs [#_ReceiveByte] ; |421| 
        MOVW      DP,#_clocktime+7
        MOV       @_clocktime+7,AL      ; |421| 
        LCR       #_DeselectSPI         ; |422| 
        ; call occurs [#_DeselectSPI] ; |422| 
        LCR       #_DateTimetoInt       ; |423| 
        ; call occurs [#_DateTimetoInt] ; |423| 
L9:    
	.dwpsn	"spi.c",425,1
        LRETR
        ; return occurs
	.dwattr DW$52, DW_AT_end_file("spi.c")
	.dwattr DW$52, DW_AT_end_line(0x1a9)
	.dwattr DW$52, DW_AT_end_column(0x01)
	.dwendtag DW$52

	.sect	".text"
	.global	_WriteClockData

DW$53	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteClockData"), DW_AT_symbol_name("_WriteClockData")
	.dwattr DW$53, DW_AT_low_pc(_WriteClockData)
	.dwattr DW$53, DW_AT_high_pc(0x00)
	.dwattr DW$53, DW_AT_begin_file("spi.c")
	.dwattr DW$53, DW_AT_begin_line(0x1ab)
	.dwattr DW$53, DW_AT_begin_column(0x06)
	.dwattr DW$53, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$53, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",428,1

;***************************************************************
;* FNAME: _WriteClockData               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WriteClockData:
        MOVL      XAR4,#FSL1            ; |429| 
        LCR       #_DebugStringOut      ; |429| 
        ; call occurs [#_DebugStringOut] ; |429| 
        MOVW      DP,#_clocktime
        MOV       AL,@_clocktime        ; |431| 
        BF        L10,NEQ               ; |431| 
        ; branchcc occurs ; |431| 
        LCR       #_SelectRTC           ; |433| 
        ; call occurs [#_SelectRTC] ; |433| 
        MOVB      AL,#143               ; |434| 
        LCR       #_TransmitByte        ; |434| 
        ; call occurs [#_TransmitByte] ; |434| 
        MOVB      AL,#0
        LCR       #_TransmitByte        ; |435| 
        ; call occurs [#_TransmitByte] ; |435| 
        LCR       #_DeselectSPI         ; |436| 
        ; call occurs [#_DeselectSPI] ; |436| 
        MOVW      DP,#_clocktime
        MOV       AL,#600               ; |438| 
        MOV       @_clocktime,#1        ; |437| 
        LCR       #_NOPDelay            ; |438| 
        ; call occurs [#_NOPDelay] ; |438| 
L10:    
        LCR       #_SelectRTC           ; |440| 
        ; call occurs [#_SelectRTC] ; |440| 
        MOVB      AL,#128               ; |441| 
        LCR       #_TransmitByte        ; |441| 
        ; call occurs [#_TransmitByte] ; |441| 
        MOVW      DP,#_clocktime+1
        MOV       AL,@_clocktime+1      ; |442| 
        LCR       #_TransmitByte        ; |442| 
        ; call occurs [#_TransmitByte] ; |442| 
        MOVW      DP,#_clocktime+2
        MOV       AL,@_clocktime+2      ; |443| 
        LCR       #_TransmitByte        ; |443| 
        ; call occurs [#_TransmitByte] ; |443| 
        MOVW      DP,#_clocktime+3
        MOV       AL,@_clocktime+3      ; |444| 
        LCR       #_TransmitByte        ; |444| 
        ; call occurs [#_TransmitByte] ; |444| 
        MOVW      DP,#_clocktime+4
        MOV       AL,@_clocktime+4      ; |445| 
        LCR       #_TransmitByte        ; |445| 
        ; call occurs [#_TransmitByte] ; |445| 
        MOVW      DP,#_clocktime+5
        MOV       AL,@_clocktime+5      ; |446| 
        LCR       #_TransmitByte        ; |446| 
        ; call occurs [#_TransmitByte] ; |446| 
        MOVW      DP,#_clocktime+6
        MOV       AL,@_clocktime+6      ; |447| 
        LCR       #_TransmitByte        ; |447| 
        ; call occurs [#_TransmitByte] ; |447| 
        MOVW      DP,#_clocktime+7
        MOV       AL,@_clocktime+7      ; |448| 
        LCR       #_TransmitByte        ; |448| 
        ; call occurs [#_TransmitByte] ; |448| 
        LCR       #_DeselectSPI         ; |449| 
        ; call occurs [#_DeselectSPI] ; |449| 
        LCR       #_BuildTimeStamp      ; |450| 
        ; call occurs [#_BuildTimeStamp] ; |450| 
        MOVW      DP,#_clocktime+10
        MOVL      @_clocktime+10,ACC    ; |450| 
        MOVW      DP,#_clocktime+12
        MOV       @_clocktime+12,#0     ; |451| 
        LCR       #_SaveTimetoFram      ; |452| 
        ; call occurs [#_SaveTimetoFram] ; |452| 
	.dwpsn	"spi.c",455,1
        LRETR
        ; return occurs
	.dwattr DW$53, DW_AT_end_file("spi.c")
	.dwattr DW$53, DW_AT_end_line(0x1c7)
	.dwattr DW$53, DW_AT_end_column(0x01)
	.dwendtag DW$53

	.sect	".text"
	.global	_WriteYrMnthData

DW$54	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteYrMnthData"), DW_AT_symbol_name("_WriteYrMnthData")
	.dwattr DW$54, DW_AT_low_pc(_WriteYrMnthData)
	.dwattr DW$54, DW_AT_high_pc(0x00)
	.dwattr DW$54, DW_AT_begin_file("spi.c")
	.dwattr DW$54, DW_AT_begin_line(0x1c9)
	.dwattr DW$54, DW_AT_begin_column(0x06)
	.dwattr DW$54, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$54, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",458,1

;***************************************************************
;* FNAME: _WriteYrMnthData              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WriteYrMnthData:
        MOVL      XAR4,#FSL2            ; |460| 
        LCR       #_DebugStringOut      ; |460| 
        ; call occurs [#_DebugStringOut] ; |460| 
        MOVW      DP,#_clocktime
        MOV       AL,@_clocktime        ; |462| 
        BF        L11,NEQ               ; |462| 
        ; branchcc occurs ; |462| 
        LCR       #_SelectRTC           ; |464| 
        ; call occurs [#_SelectRTC] ; |464| 
        MOVB      AL,#143               ; |465| 
        LCR       #_TransmitByte        ; |465| 
        ; call occurs [#_TransmitByte] ; |465| 
        MOVB      AL,#0
        LCR       #_TransmitByte        ; |466| 
        ; call occurs [#_TransmitByte] ; |466| 
        LCR       #_DeselectSPI         ; |467| 
        ; call occurs [#_DeselectSPI] ; |467| 
        MOVW      DP,#_clocktime
        MOV       AL,#600               ; |469| 
        MOV       @_clocktime,#1        ; |468| 
        LCR       #_NOPDelay            ; |469| 
        ; call occurs [#_NOPDelay] ; |469| 
L11:    
        LCR       #_SelectRTC           ; |471| 
        ; call occurs [#_SelectRTC] ; |471| 
        MOVB      AL,#133               ; |472| 
        LCR       #_TransmitByte        ; |472| 
        ; call occurs [#_TransmitByte] ; |472| 
        MOVW      DP,#_clocktime+6
        MOV       AL,@_clocktime+6      ; |473| 
        LCR       #_TransmitByte        ; |473| 
        ; call occurs [#_TransmitByte] ; |473| 
        MOVW      DP,#_clocktime+7
        MOV       AL,@_clocktime+7      ; |474| 
        LCR       #_TransmitByte        ; |474| 
        ; call occurs [#_TransmitByte] ; |474| 
        LCR       #_DeselectSPI         ; |475| 
        ; call occurs [#_DeselectSPI] ; |475| 
        LCR       #_BuildTimeStamp      ; |476| 
        ; call occurs [#_BuildTimeStamp] ; |476| 
        MOVW      DP,#_clocktime+10
        MOVL      @_clocktime+10,ACC    ; |476| 
        MOVW      DP,#_clocktime+12
        MOV       @_clocktime+12,#0     ; |477| 
        LCR       #_SaveTimetoFram      ; |478| 
        ; call occurs [#_SaveTimetoFram] ; |478| 
        MOV       AL,#269               ; |479| 
        LCR       #_ClearAlarmEvent     ; |479| 
        ; call occurs [#_ClearAlarmEvent] ; |479| 
	.dwpsn	"spi.c",480,1
        LRETR
        ; return occurs
	.dwattr DW$54, DW_AT_end_file("spi.c")
	.dwattr DW$54, DW_AT_end_line(0x1e0)
	.dwattr DW$54, DW_AT_end_column(0x01)
	.dwendtag DW$54

	.sect	".text"
	.global	_WriteDateHrsData

DW$55	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteDateHrsData"), DW_AT_symbol_name("_WriteDateHrsData")
	.dwattr DW$55, DW_AT_low_pc(_WriteDateHrsData)
	.dwattr DW$55, DW_AT_high_pc(0x00)
	.dwattr DW$55, DW_AT_begin_file("spi.c")
	.dwattr DW$55, DW_AT_begin_line(0x1e2)
	.dwattr DW$55, DW_AT_begin_column(0x06)
	.dwattr DW$55, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$55, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",483,1

;***************************************************************
;* FNAME: _WriteDateHrsData             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WriteDateHrsData:
        MOVL      XAR4,#FSL3            ; |485| 
        LCR       #_DebugStringOut      ; |485| 
        ; call occurs [#_DebugStringOut] ; |485| 
        MOVW      DP,#_clocktime
        MOV       AL,@_clocktime        ; |487| 
        BF        L12,NEQ               ; |487| 
        ; branchcc occurs ; |487| 
        LCR       #_SelectRTC           ; |489| 
        ; call occurs [#_SelectRTC] ; |489| 
        MOVB      AL,#143               ; |490| 
        LCR       #_TransmitByte        ; |490| 
        ; call occurs [#_TransmitByte] ; |490| 
        MOVB      AL,#0
        LCR       #_TransmitByte        ; |491| 
        ; call occurs [#_TransmitByte] ; |491| 
        LCR       #_DeselectSPI         ; |492| 
        ; call occurs [#_DeselectSPI] ; |492| 
        MOVW      DP,#_clocktime
        MOV       AL,#600               ; |494| 
        MOV       @_clocktime,#1        ; |493| 
        LCR       #_NOPDelay            ; |494| 
        ; call occurs [#_NOPDelay] ; |494| 
L12:    
        LCR       #_SelectRTC           ; |496| 
        ; call occurs [#_SelectRTC] ; |496| 
        MOVB      AL,#130               ; |497| 
        LCR       #_TransmitByte        ; |497| 
        ; call occurs [#_TransmitByte] ; |497| 
        MOVW      DP,#_clocktime+3
        MOV       AL,@_clocktime+3      ; |498| 
        LCR       #_TransmitByte        ; |498| 
        ; call occurs [#_TransmitByte] ; |498| 
        MOVW      DP,#_clocktime+4
        MOV       AL,@_clocktime+4      ; |499| 
        LCR       #_TransmitByte        ; |499| 
        ; call occurs [#_TransmitByte] ; |499| 
        MOVW      DP,#_clocktime+5
        MOV       AL,@_clocktime+5      ; |500| 
        LCR       #_TransmitByte        ; |500| 
        ; call occurs [#_TransmitByte] ; |500| 
        LCR       #_DeselectSPI         ; |501| 
        ; call occurs [#_DeselectSPI] ; |501| 
        LCR       #_BuildTimeStamp      ; |502| 
        ; call occurs [#_BuildTimeStamp] ; |502| 
        MOVW      DP,#_clocktime+10
        MOVL      @_clocktime+10,ACC    ; |502| 
        MOVW      DP,#_clocktime+12
        MOV       @_clocktime+12,#0     ; |503| 
        LCR       #_SaveTimetoFram      ; |504| 
        ; call occurs [#_SaveTimetoFram] ; |504| 
        MOV       AL,#269               ; |505| 
        LCR       #_ClearAlarmEvent     ; |505| 
        ; call occurs [#_ClearAlarmEvent] ; |505| 
	.dwpsn	"spi.c",506,1
        LRETR
        ; return occurs
	.dwattr DW$55, DW_AT_end_file("spi.c")
	.dwattr DW$55, DW_AT_end_line(0x1fa)
	.dwattr DW$55, DW_AT_end_column(0x01)
	.dwendtag DW$55

	.sect	".text"
	.global	_WriteMinsSecsData

DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteMinsSecsData"), DW_AT_symbol_name("_WriteMinsSecsData")
	.dwattr DW$56, DW_AT_low_pc(_WriteMinsSecsData)
	.dwattr DW$56, DW_AT_high_pc(0x00)
	.dwattr DW$56, DW_AT_begin_file("spi.c")
	.dwattr DW$56, DW_AT_begin_line(0x1fc)
	.dwattr DW$56, DW_AT_begin_column(0x06)
	.dwattr DW$56, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$56, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",509,1

;***************************************************************
;* FNAME: _WriteMinsSecsData            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WriteMinsSecsData:
        MOVL      XAR4,#FSL4            ; |511| 
        LCR       #_DebugStringOut      ; |511| 
        ; call occurs [#_DebugStringOut] ; |511| 
        MOVW      DP,#_clocktime
        MOV       AL,@_clocktime        ; |513| 
        BF        L13,NEQ               ; |513| 
        ; branchcc occurs ; |513| 
        LCR       #_SelectRTC           ; |515| 
        ; call occurs [#_SelectRTC] ; |515| 
        MOVB      AL,#143               ; |516| 
        LCR       #_TransmitByte        ; |516| 
        ; call occurs [#_TransmitByte] ; |516| 
        MOVB      AL,#0
        LCR       #_TransmitByte        ; |517| 
        ; call occurs [#_TransmitByte] ; |517| 
        LCR       #_DeselectSPI         ; |518| 
        ; call occurs [#_DeselectSPI] ; |518| 
        MOVW      DP,#_clocktime
        MOV       AL,#600               ; |520| 
        MOV       @_clocktime,#1        ; |519| 
        LCR       #_NOPDelay            ; |520| 
        ; call occurs [#_NOPDelay] ; |520| 
L13:    
        LCR       #_SelectRTC           ; |522| 
        ; call occurs [#_SelectRTC] ; |522| 
        MOVB      AL,#128               ; |523| 
        LCR       #_TransmitByte        ; |523| 
        ; call occurs [#_TransmitByte] ; |523| 
        MOVW      DP,#_clocktime+1
        MOV       AL,@_clocktime+1      ; |524| 
        LCR       #_TransmitByte        ; |524| 
        ; call occurs [#_TransmitByte] ; |524| 
        MOVW      DP,#_clocktime+2
        MOV       AL,@_clocktime+2      ; |525| 
        LCR       #_TransmitByte        ; |525| 
        ; call occurs [#_TransmitByte] ; |525| 
        LCR       #_DeselectSPI         ; |526| 
        ; call occurs [#_DeselectSPI] ; |526| 
        LCR       #_BuildTimeStamp      ; |527| 
        ; call occurs [#_BuildTimeStamp] ; |527| 
        MOVW      DP,#_clocktime+10
        MOVL      @_clocktime+10,ACC    ; |527| 
        MOVW      DP,#_clocktime+12
        MOV       @_clocktime+12,#0     ; |528| 
        LCR       #_SaveTimetoFram      ; |529| 
        ; call occurs [#_SaveTimetoFram] ; |529| 
        MOV       AL,#269               ; |530| 
        LCR       #_ClearAlarmEvent     ; |530| 
        ; call occurs [#_ClearAlarmEvent] ; |530| 
	.dwpsn	"spi.c",531,1
        LRETR
        ; return occurs
	.dwattr DW$56, DW_AT_end_file("spi.c")
	.dwattr DW$56, DW_AT_end_line(0x213)
	.dwattr DW$56, DW_AT_end_column(0x01)
	.dwendtag DW$56

	.sect	".text"
	.global	_CheckFlash

DW$57	.dwtag  DW_TAG_subprogram, DW_AT_name("CheckFlash"), DW_AT_symbol_name("_CheckFlash")
	.dwattr DW$57, DW_AT_low_pc(_CheckFlash)
	.dwattr DW$57, DW_AT_high_pc(0x00)
	.dwattr DW$57, DW_AT_begin_file("spi.c")
	.dwattr DW$57, DW_AT_begin_line(0x218)
	.dwattr DW$57, DW_AT_begin_column(0x06)
	.dwattr DW$57, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$57, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",537,1

;***************************************************************
;* FNAME: _CheckFlash                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CheckFlash:
        MOVW      DP,#_spiregs
        OR        @_spiregs,#0x0040     ; |538| 
        MOVB      AL,#3                 ; |540| 
        MOV       *(0:0x7044),AL        ; |540| 
        LCR       #_ReceiveByte         ; |542| 
        ; call occurs [#_ReceiveByte] ; |542| 
        LCR       #_SelectFlash1        ; |544| 
        ; call occurs [#_SelectFlash1] ; |544| 
        MOVB      AL,#159               ; |545| 
        LCR       #_TransmitByte        ; |545| 
        ; call occurs [#_TransmitByte] ; |545| 
        LCR       #_ReceiveByte         ; |546| 
        ; call occurs [#_ReceiveByte] ; |546| 
        LCR       #_ReceiveByte         ; |547| 
        ; call occurs [#_ReceiveByte] ; |547| 
        MOVW      DP,#_flashcheck
        MOV       @_flashcheck,AL       ; |547| 
        LCR       #_ReceiveByte         ; |548| 
        ; call occurs [#_ReceiveByte] ; |548| 
        LCR       #_ReceiveByte         ; |549| 
        ; call occurs [#_ReceiveByte] ; |549| 
        LCR       #_ReceiveByte         ; |550| 
        ; call occurs [#_ReceiveByte] ; |550| 
        LCR       #_ReceiveByte         ; |551| 
        ; call occurs [#_ReceiveByte] ; |551| 
        LCR       #_DeselectSPI         ; |552| 
        ; call occurs [#_DeselectSPI] ; |552| 
        LCR       #_SelectFlash2        ; |554| 
        ; call occurs [#_SelectFlash2] ; |554| 
        MOVB      AL,#159               ; |555| 
        LCR       #_TransmitByte        ; |555| 
        ; call occurs [#_TransmitByte] ; |555| 
        LCR       #_ReceiveByte         ; |556| 
        ; call occurs [#_ReceiveByte] ; |556| 
        LCR       #_ReceiveByte         ; |557| 
        ; call occurs [#_ReceiveByte] ; |557| 
        MOVW      DP,#_flashcheck+1
        MOV       @_flashcheck+1,AL     ; |557| 
        LCR       #_ReceiveByte         ; |558| 
        ; call occurs [#_ReceiveByte] ; |558| 
        LCR       #_ReceiveByte         ; |559| 
        ; call occurs [#_ReceiveByte] ; |559| 
        LCR       #_ReceiveByte         ; |560| 
        ; call occurs [#_ReceiveByte] ; |560| 
        LCR       #_ReceiveByte         ; |561| 
        ; call occurs [#_ReceiveByte] ; |561| 
        LCR       #_DeselectSPI         ; |562| 
        ; call occurs [#_DeselectSPI] ; |562| 
        LCR       #_SelectFlash3        ; |564| 
        ; call occurs [#_SelectFlash3] ; |564| 
        MOVB      AL,#159               ; |565| 
        LCR       #_TransmitByte        ; |565| 
        ; call occurs [#_TransmitByte] ; |565| 
        LCR       #_ReceiveByte         ; |566| 
        ; call occurs [#_ReceiveByte] ; |566| 
        LCR       #_ReceiveByte         ; |567| 
        ; call occurs [#_ReceiveByte] ; |567| 
        MOVW      DP,#_flashcheck+2
        MOV       @_flashcheck+2,AL     ; |567| 
        LCR       #_ReceiveByte         ; |568| 
        ; call occurs [#_ReceiveByte] ; |568| 
        LCR       #_ReceiveByte         ; |569| 
        ; call occurs [#_ReceiveByte] ; |569| 
        LCR       #_ReceiveByte         ; |570| 
        ; call occurs [#_ReceiveByte] ; |570| 
        LCR       #_ReceiveByte         ; |571| 
        ; call occurs [#_ReceiveByte] ; |571| 
        LCR       #_DeselectSPI         ; |572| 
        ; call occurs [#_DeselectSPI] ; |572| 
        LCR       #_SelectFlash4        ; |574| 
        ; call occurs [#_SelectFlash4] ; |574| 
        MOVB      AL,#159               ; |575| 
        LCR       #_TransmitByte        ; |575| 
        ; call occurs [#_TransmitByte] ; |575| 
        LCR       #_ReceiveByte         ; |576| 
        ; call occurs [#_ReceiveByte] ; |576| 
        LCR       #_ReceiveByte         ; |577| 
        ; call occurs [#_ReceiveByte] ; |577| 
        MOVW      DP,#_flashcheck+3
        MOV       @_flashcheck+3,AL     ; |577| 
        LCR       #_ReceiveByte         ; |578| 
        ; call occurs [#_ReceiveByte] ; |578| 
        LCR       #_ReceiveByte         ; |579| 
        ; call occurs [#_ReceiveByte] ; |579| 
        LCR       #_ReceiveByte         ; |580| 
        ; call occurs [#_ReceiveByte] ; |580| 
        LCR       #_ReceiveByte         ; |581| 
        ; call occurs [#_ReceiveByte] ; |581| 
        LCR       #_DeselectSPI         ; |582| 
        ; call occurs [#_DeselectSPI] ; |582| 
	.dwpsn	"spi.c",583,1
        LRETR
        ; return occurs
	.dwattr DW$57, DW_AT_end_file("spi.c")
	.dwattr DW$57, DW_AT_end_line(0x247)
	.dwattr DW$57, DW_AT_end_column(0x01)
	.dwendtag DW$57

	.sect	".text"
	.global	_WriteEnableEEprom1

DW$58	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteEnableEEprom1"), DW_AT_symbol_name("_WriteEnableEEprom1")
	.dwattr DW$58, DW_AT_low_pc(_WriteEnableEEprom1)
	.dwattr DW$58, DW_AT_high_pc(0x00)
	.dwattr DW$58, DW_AT_begin_file("spi.c")
	.dwattr DW$58, DW_AT_begin_line(0x24b)
	.dwattr DW$58, DW_AT_begin_column(0x06)
	.dwattr DW$58, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$58, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",588,1

;***************************************************************
;* FNAME: _WriteEnableEEprom1           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WriteEnableEEprom1:
        LCR       #_SelectEEprom1       ; |589| 
        ; call occurs [#_SelectEEprom1] ; |589| 
        MOVB      AL,#6                 ; |590| 
        LCR       #_TransmitByte        ; |590| 
        ; call occurs [#_TransmitByte] ; |590| 
        LCR       #_DeselectSPI         ; |591| 
        ; call occurs [#_DeselectSPI] ; |591| 
	.dwpsn	"spi.c",592,1
        LRETR
        ; return occurs
	.dwattr DW$58, DW_AT_end_file("spi.c")
	.dwattr DW$58, DW_AT_end_line(0x250)
	.dwattr DW$58, DW_AT_end_column(0x01)
	.dwendtag DW$58

	.sect	".text"
	.global	_WriteStatusRegEEprom1

DW$59	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteStatusRegEEprom1"), DW_AT_symbol_name("_WriteStatusRegEEprom1")
	.dwattr DW$59, DW_AT_low_pc(_WriteStatusRegEEprom1)
	.dwattr DW$59, DW_AT_high_pc(0x00)
	.dwattr DW$59, DW_AT_begin_file("spi.c")
	.dwattr DW$59, DW_AT_begin_line(0x253)
	.dwattr DW$59, DW_AT_begin_column(0x06)
	.dwattr DW$59, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$59, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",596,1

;***************************************************************
;* FNAME: _WriteStatusRegEEprom1        FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_WriteStatusRegEEprom1:
;* AL    assigned to _wrbyte
DW$60	.dwtag  DW_TAG_formal_parameter, DW_AT_name("wrbyte"), DW_AT_symbol_name("_wrbyte")
	.dwattr DW$60, DW_AT_type(*DW$T$11)
	.dwattr DW$60, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVZ      AR1,AL                ; |596| 
        LCR       #_SelectEEprom1       ; |597| 
        ; call occurs [#_SelectEEprom1] ; |597| 
        MOVB      AL,#1                 ; |598| 
        LCR       #_TransmitByte        ; |598| 
        ; call occurs [#_TransmitByte] ; |598| 
        MOV       AL,AR1                ; |599| 
        LCR       #_TransmitByte        ; |599| 
        ; call occurs [#_TransmitByte] ; |599| 
        LCR       #_DeselectSPI         ; |600| 
        ; call occurs [#_DeselectSPI] ; |600| 
        MOVL      XAR1,*--SP
	.dwpsn	"spi.c",601,1
        LRETR
        ; return occurs
	.dwattr DW$59, DW_AT_end_file("spi.c")
	.dwattr DW$59, DW_AT_end_line(0x259)
	.dwattr DW$59, DW_AT_end_column(0x01)
	.dwendtag DW$59

	.sect	".text"
	.global	_WritetoMemoryEEprom1

DW$61	.dwtag  DW_TAG_subprogram, DW_AT_name("WritetoMemoryEEprom1"), DW_AT_symbol_name("_WritetoMemoryEEprom1")
	.dwattr DW$61, DW_AT_low_pc(_WritetoMemoryEEprom1)
	.dwattr DW$61, DW_AT_high_pc(0x00)
	.dwattr DW$61, DW_AT_begin_file("spi.c")
	.dwattr DW$61, DW_AT_begin_line(0x25c)
	.dwattr DW$61, DW_AT_begin_column(0x06)
	.dwattr DW$61, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$61, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",605,1

;***************************************************************
;* FNAME: _WritetoMemoryEEprom1         FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_WritetoMemoryEEprom1:
;* AL    assigned to _addy
DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_name("addy"), DW_AT_symbol_name("_addy")
	.dwattr DW$62, DW_AT_type(*DW$T$11)
	.dwattr DW$62, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVZ      AR1,AL                ; |605| 
        LCR       #_WriteEnableEEprom1  ; |609| 
        ; call occurs [#_WriteEnableEEprom1] ; |609| 
        LCR       #_SelectEEprom1       ; |612| 
        ; call occurs [#_SelectEEprom1] ; |612| 
        MOVB      AL,#2                 ; |613| 
        LCR       #_TransmitByte        ; |613| 
        ; call occurs [#_TransmitByte] ; |613| 
        MOV       AL,AR1                ; |614| 
        LSR       AL,8                  ; |614| 
        LCR       #_TransmitByte        ; |614| 
        ; call occurs [#_TransmitByte] ; |614| 
        AND       AL,AR1,#0x00ff        ; |615| 
        LCR       #_TransmitByte        ; |615| 
        ; call occurs [#_TransmitByte] ; |615| 
        MOVL      XAR1,*--SP
	.dwpsn	"spi.c",616,1
        LRETR
        ; return occurs
	.dwattr DW$61, DW_AT_end_file("spi.c")
	.dwattr DW$61, DW_AT_end_line(0x268)
	.dwattr DW$61, DW_AT_end_column(0x01)
	.dwendtag DW$61

	.sect	".text"
	.global	_ReadEEprom1StatusReg

DW$63	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadEEprom1StatusReg"), DW_AT_symbol_name("_ReadEEprom1StatusReg")
	.dwattr DW$63, DW_AT_low_pc(_ReadEEprom1StatusReg)
	.dwattr DW$63, DW_AT_high_pc(0x00)
	.dwattr DW$63, DW_AT_begin_file("spi.c")
	.dwattr DW$63, DW_AT_begin_line(0x26b)
	.dwattr DW$63, DW_AT_begin_column(0x0e)
	.dwattr DW$63, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$63, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",620,1

;***************************************************************
;* FNAME: _ReadEEprom1StatusReg         FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_ReadEEprom1StatusReg:
        MOVL      *SP++,XAR1
        LCR       #_SelectEEprom1       ; |623| 
        ; call occurs [#_SelectEEprom1] ; |623| 
        MOVB      AL,#5                 ; |624| 
        LCR       #_TransmitByte        ; |624| 
        ; call occurs [#_TransmitByte] ; |624| 
        LCR       #_ReceiveByte         ; |625| 
        ; call occurs [#_ReceiveByte] ; |625| 
        MOVZ      AR1,AL                ; |625| 
        LCR       #_DeselectSPI         ; |626| 
        ; call occurs [#_DeselectSPI] ; |626| 
        MOV       AL,AR1                ; |627| 
        MOVL      XAR1,*--SP            ; |627| 
	.dwpsn	"spi.c",628,1
        LRETR
        ; return occurs
	.dwattr DW$63, DW_AT_end_file("spi.c")
	.dwattr DW$63, DW_AT_end_line(0x274)
	.dwattr DW$63, DW_AT_end_column(0x01)
	.dwendtag DW$63

	.sect	".text"
	.global	_WriteNVMemory

DW$64	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteNVMemory"), DW_AT_symbol_name("_WriteNVMemory")
	.dwattr DW$64, DW_AT_low_pc(_WriteNVMemory)
	.dwattr DW$64, DW_AT_high_pc(0x00)
	.dwattr DW$64, DW_AT_begin_file("spi.c")
	.dwattr DW$64, DW_AT_begin_line(0x27d)
	.dwattr DW$64, DW_AT_begin_column(0x06)
	.dwattr DW$64, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$64, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",638,1

;***************************************************************
;* FNAME: _WriteNVMemory                FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  6 SOE     *
;***************************************************************

_WriteNVMemory:
;* AL    assigned to _choice
DW$65	.dwtag  DW_TAG_formal_parameter, DW_AT_name("choice"), DW_AT_symbol_name("_choice")
	.dwattr DW$65, DW_AT_type(*DW$T$11)
	.dwattr DW$65, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _position
DW$66	.dwtag  DW_TAG_formal_parameter, DW_AT_name("position"), DW_AT_symbol_name("_position")
	.dwattr DW$66, DW_AT_type(*DW$T$11)
	.dwattr DW$66, DW_AT_location[DW_OP_reg1]
;* AR4   assigned to _ptr
DW$67	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$67, DW_AT_type(*DW$T$86)
	.dwattr DW$67, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _len
DW$68	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$68, DW_AT_type(*DW$T$11)
	.dwattr DW$68, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#2
        MOVL      XAR2,XAR4             ; |638| 
        MOV       *-SP[1],AR5           ; |638| 
        LCR       #_WritetoMemoryFRAM   ; |643| 
        ; call occurs [#_WritetoMemoryFRAM] ; |643| 
        MOVB      XAR3,#0
        MOV       AL,*-SP[1]            ; |644| 
        BF        L15,EQ                ; |644| 
        ; branchcc occurs ; |644| 
L14:    
DW$L$_WriteNVMemory$2$B:
	.dwpsn	"spi.c",645,0
        MOV       AL,*XAR2++            ; |647| 
        AND       AH,AL,#0x00ff         ; |647| 
        MOVZ      AR1,AH                ; |647| 
        LSR       AL,8                  ; |648| 
        LCR       #_TransmitByte        ; |648| 
        ; call occurs [#_TransmitByte] ; |648| 
        MOV       AL,AR1                ; |648| 
        LCR       #_TransmitByte        ; |649| 
        ; call occurs [#_TransmitByte] ; |649| 
        ADDB      XAR3,#1               ; |644| 
        MOV       AL,*-SP[1]            ; |644| 
        CMP       AL,AR3                ; |644| 
	.dwpsn	"spi.c",651,0
        BF        L14,HI                ; |644| 
        ; branchcc occurs ; |644| 
DW$L$_WriteNVMemory$2$E:
L15:    
        LCR       #_DeselectSPI         ; |652| 
        ; call occurs [#_DeselectSPI] ; |652| 
        SUBB      SP,#2
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"spi.c",654,1
        LRETR
        ; return occurs

DW$69	.dwtag  DW_TAG_loop
	.dwattr DW$69, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\spi.asm:L14:1:1471518992")
	.dwattr DW$69, DW_AT_begin_file("spi.c")
	.dwattr DW$69, DW_AT_begin_line(0x284)
	.dwattr DW$69, DW_AT_end_line(0x28b)
DW$70	.dwtag  DW_TAG_loop_range
	.dwattr DW$70, DW_AT_low_pc(DW$L$_WriteNVMemory$2$B)
	.dwattr DW$70, DW_AT_high_pc(DW$L$_WriteNVMemory$2$E)
	.dwendtag DW$69

	.dwattr DW$64, DW_AT_end_file("spi.c")
	.dwattr DW$64, DW_AT_end_line(0x28e)
	.dwattr DW$64, DW_AT_end_column(0x01)
	.dwendtag DW$64

	.sect	".text"
	.global	_ReadNVMemory

DW$71	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadNVMemory"), DW_AT_symbol_name("_ReadNVMemory")
	.dwattr DW$71, DW_AT_low_pc(_ReadNVMemory)
	.dwattr DW$71, DW_AT_high_pc(0x00)
	.dwattr DW$71, DW_AT_begin_file("spi.c")
	.dwattr DW$71, DW_AT_begin_line(0x294)
	.dwattr DW$71, DW_AT_begin_column(0x06)
	.dwattr DW$71, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$71, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",661,1

;***************************************************************
;* FNAME: _ReadNVMemory                 FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  6 SOE     *
;***************************************************************

_ReadNVMemory:
;* AL    assigned to _choice
DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_name("choice"), DW_AT_symbol_name("_choice")
	.dwattr DW$72, DW_AT_type(*DW$T$11)
	.dwattr DW$72, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _position
DW$73	.dwtag  DW_TAG_formal_parameter, DW_AT_name("position"), DW_AT_symbol_name("_position")
	.dwattr DW$73, DW_AT_type(*DW$T$11)
	.dwattr DW$73, DW_AT_location[DW_OP_reg1]
;* AR4   assigned to _ptr
DW$74	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$74, DW_AT_type(*DW$T$86)
	.dwattr DW$74, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _len
DW$75	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$75, DW_AT_type(*DW$T$11)
	.dwattr DW$75, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#2
        MOVL      XAR2,XAR4             ; |661| 
        MOV       *-SP[1],AR5           ; |661| 
        LCR       #_ReadfromMemoryFRAM  ; |667| 
        ; call occurs [#_ReadfromMemoryFRAM] ; |667| 
        MOVB      XAR3,#0
        MOV       AL,*-SP[1]            ; |668| 
        BF        L17,EQ                ; |668| 
        ; branchcc occurs ; |668| 
L16:    
DW$L$_ReadNVMemory$2$B:
	.dwpsn	"spi.c",669,0
        LCR       #_ReceiveByte         ; |670| 
        ; call occurs [#_ReceiveByte] ; |670| 
        MOVZ      AR1,AL                ; |670| 
        LCR       #_ReceiveByte         ; |671| 
        ; call occurs [#_ReceiveByte] ; |671| 
        ADDB      XAR3,#1               ; |668| 
        MOVB      AL.MSB,AR1            ; |672| 
        MOV       *XAR2++,AL            ; |672| 
        MOV       AL,*-SP[1]            ; |668| 
        CMP       AL,AR3                ; |668| 
	.dwpsn	"spi.c",675,0
        BF        L16,HI                ; |668| 
        ; branchcc occurs ; |668| 
DW$L$_ReadNVMemory$2$E:
L17:    
        LCR       #_DeselectSPI         ; |676| 
        ; call occurs [#_DeselectSPI] ; |676| 
        SUBB      SP,#2
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"spi.c",677,1
        LRETR
        ; return occurs

DW$76	.dwtag  DW_TAG_loop
	.dwattr DW$76, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\spi.asm:L16:1:1471518992")
	.dwattr DW$76, DW_AT_begin_file("spi.c")
	.dwattr DW$76, DW_AT_begin_line(0x29c)
	.dwattr DW$76, DW_AT_end_line(0x2a3)
DW$77	.dwtag  DW_TAG_loop_range
	.dwattr DW$77, DW_AT_low_pc(DW$L$_ReadNVMemory$2$B)
	.dwattr DW$77, DW_AT_high_pc(DW$L$_ReadNVMemory$2$E)
	.dwendtag DW$76

	.dwattr DW$71, DW_AT_end_file("spi.c")
	.dwattr DW$71, DW_AT_end_line(0x2a5)
	.dwattr DW$71, DW_AT_end_column(0x01)
	.dwendtag DW$71

	.sect	".text"
	.global	_Fram1ChipCheck

DW$78	.dwtag  DW_TAG_subprogram, DW_AT_name("Fram1ChipCheck"), DW_AT_symbol_name("_Fram1ChipCheck")
	.dwattr DW$78, DW_AT_low_pc(_Fram1ChipCheck)
	.dwattr DW$78, DW_AT_high_pc(0x00)
	.dwattr DW$78, DW_AT_begin_file("spi.c")
	.dwattr DW$78, DW_AT_begin_line(0x2a9)
	.dwattr DW$78, DW_AT_begin_column(0x06)
	.dwattr DW$78, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$78, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",682,1

;***************************************************************
;* FNAME: _Fram1ChipCheck               FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

_Fram1ChipCheck:
        ADDB      SP,#2
        MOVW      DP,#_timers+56
        MOV       AL,@_timers+56        ; |686| 
        BF        L19,NEQ               ; |686| 
        ; branchcc occurs ; |686| 
        MOV       *-SP[2],#0            ; |688| 
        MOVW      DP,#_timers+56
        MOVB      AL,#0
        MOVZ      AR4,SP                ; |691| 
        MOVB      XAR5,#1               ; |691| 
        MOV       *-SP[1],#85           ; |689| 
        MOV       @_timers+56,#12000    ; |690| 
        MOV       AH,#32766             ; |691| 
        SUBB      XAR4,#1               ; |691| 
        LCR       #_WriteNVMemory       ; |691| 
        ; call occurs [#_WriteNVMemory] ; |691| 
        MOVZ      AR4,SP                ; |692| 
        MOVB      AL,#0
        MOVB      XAR5,#1               ; |692| 
        SUBB      XAR4,#2               ; |692| 
        MOV       AH,#32766             ; |692| 
        LCR       #_ReadNVMemory        ; |692| 
        ; call occurs [#_ReadNVMemory] ; |692| 
        MOV       AL,*-SP[2]            ; |693| 
        CMP       AL,*-SP[1]            ; |693| 
        BF        L18,NEQ               ; |693| 
        ; branchcc occurs ; |693| 
        MOVW      DP,#_alarms
        AND       @_alarms,#0xfffb      ; |694| 
        BF        L19,UNC               ; |694| 
        ; branch occurs ; |694| 
L18:    
        MOVW      DP,#_alarms
        OR        @_alarms,#0x0004      ; |693| 
L19:    
        SUBB      SP,#2
	.dwpsn	"spi.c",696,1
        LRETR
        ; return occurs
	.dwattr DW$78, DW_AT_end_file("spi.c")
	.dwattr DW$78, DW_AT_end_line(0x2b8)
	.dwattr DW$78, DW_AT_end_column(0x01)
	.dwendtag DW$78

	.sect	".text"
	.global	_Fram1MagicNumberRead

DW$79	.dwtag  DW_TAG_subprogram, DW_AT_name("Fram1MagicNumberRead"), DW_AT_symbol_name("_Fram1MagicNumberRead")
	.dwattr DW$79, DW_AT_low_pc(_Fram1MagicNumberRead)
	.dwattr DW$79, DW_AT_high_pc(0x00)
	.dwattr DW$79, DW_AT_begin_file("spi.c")
	.dwattr DW$79, DW_AT_begin_line(0x2bc)
	.dwattr DW$79, DW_AT_begin_column(0x05)
	.dwattr DW$79, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$79, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",701,1

;***************************************************************
;* FNAME: _Fram1MagicNumberRead         FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

_Fram1MagicNumberRead:
        ADDB      SP,#2
        MOVB      ACC,#0
        MOVZ      AR4,SP                ; |705| 
        MOVB      XAR5,#2               ; |705| 
        MOVL      *-SP[2],ACC           ; |704| 
        MOVB      AL,#0
        SUBB      XAR4,#2               ; |705| 
        MOV       AH,#32762             ; |705| 
        LCR       #_ReadNVMemory        ; |705| 
        ; call occurs [#_ReadNVMemory] ; |705| 
        MOV       AL,#22136
        MOV       AH,#4660
        CMPL      ACC,*-SP[2]           ; |706| 
        BF        L20,EQ                ; |706| 
        ; branchcc occurs ; |706| 
        MOV       AL,#-1                ; |706| 
        BF        L21,UNC               ; |706| 
        ; branch occurs ; |706| 
L20:    
        MOVB      AL,#0
L21:    
        SUBB      SP,#2                 ; |706| 
	.dwpsn	"spi.c",712,1
        LRETR
        ; return occurs
	.dwattr DW$79, DW_AT_end_file("spi.c")
	.dwattr DW$79, DW_AT_end_line(0x2c8)
	.dwattr DW$79, DW_AT_end_column(0x01)
	.dwendtag DW$79

	.sect	".text"
	.global	_Fram1MagicNumberWrite

DW$80	.dwtag  DW_TAG_subprogram, DW_AT_name("Fram1MagicNumberWrite"), DW_AT_symbol_name("_Fram1MagicNumberWrite")
	.dwattr DW$80, DW_AT_low_pc(_Fram1MagicNumberWrite)
	.dwattr DW$80, DW_AT_high_pc(0x00)
	.dwattr DW$80, DW_AT_begin_file("spi.c")
	.dwattr DW$80, DW_AT_begin_line(0x2cd)
	.dwattr DW$80, DW_AT_begin_column(0x06)
	.dwattr DW$80, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$80, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",718,1

;***************************************************************
;* FNAME: _Fram1MagicNumberWrite        FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_Fram1MagicNumberWrite:
        ADDB      SP,#4
        MOVB      ACC,#0
        MOV       PH,#4660
        MOV       PL,#22136
        MOVZ      AR4,SP                ; |724| 
        MOVB      XAR5,#2               ; |724| 
        MOVL      *-SP[4],ACC           ; |722| 
        MOVB      AL,#0
        SUBB      XAR4,#2               ; |724| 
        MOVL      *-SP[2],P             ; |723| 
        MOV       AH,#32762             ; |724| 
        LCR       #_WriteNVMemory       ; |724| 
        ; call occurs [#_WriteNVMemory] ; |724| 
        MOVZ      AR4,SP                ; |725| 
        MOVB      AL,#0
        MOVB      XAR5,#2               ; |725| 
        SUBB      XAR4,#4               ; |725| 
        MOV       AH,#32762             ; |725| 
        LCR       #_ReadNVMemory        ; |725| 
        ; call occurs [#_ReadNVMemory] ; |725| 
        MOVL      ACC,*-SP[4]           ; |727| 
        CMPL      ACC,*-SP[2]           ; |727| 
        BF        L22,EQ                ; |727| 
        ; branchcc occurs ; |727| 
        MOVW      DP,#_alarms
        OR        @_alarms,#0x0004      ; |727| 
L22:    
        SUBB      SP,#4
	.dwpsn	"spi.c",728,1
        LRETR
        ; return occurs
	.dwattr DW$80, DW_AT_end_file("spi.c")
	.dwattr DW$80, DW_AT_end_line(0x2d8)
	.dwattr DW$80, DW_AT_end_column(0x01)
	.dwendtag DW$80

	.sect	".text"
	.global	_ReadfromMemoryFRAM

DW$81	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadfromMemoryFRAM"), DW_AT_symbol_name("_ReadfromMemoryFRAM")
	.dwattr DW$81, DW_AT_low_pc(_ReadfromMemoryFRAM)
	.dwattr DW$81, DW_AT_high_pc(0x00)
	.dwattr DW$81, DW_AT_begin_file("spi.c")
	.dwattr DW$81, DW_AT_begin_line(0x2db)
	.dwattr DW$81, DW_AT_begin_column(0x06)
	.dwattr DW$81, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$81, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",732,1

;***************************************************************
;* FNAME: _ReadfromMemoryFRAM           FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_ReadfromMemoryFRAM:
;* AL    assigned to _choice
DW$82	.dwtag  DW_TAG_formal_parameter, DW_AT_name("choice"), DW_AT_symbol_name("_choice")
	.dwattr DW$82, DW_AT_type(*DW$T$11)
	.dwattr DW$82, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _addy
DW$83	.dwtag  DW_TAG_formal_parameter, DW_AT_name("addy"), DW_AT_symbol_name("_addy")
	.dwattr DW$83, DW_AT_type(*DW$T$11)
	.dwattr DW$83, DW_AT_location[DW_OP_reg1]
        MOVL      *SP++,XAR1
        MOVZ      AR1,AH                ; |732| 
        MOVZ      AR6,AL                ; |732| 
        MOV       AL,AR1                ; |736| 
        MOVL      *SP++,XAR2
        LSR       AL,8                  ; |736| 
        MOVZ      AR2,AL                ; |736| 
        AND       AH,AR1,#0x00ff        ; |737| 
        MOV       AL,AR6                ; |738| 
        MOVZ      AR1,AH                ; |737| 
        BF        L23,EQ                ; |738| 
        ; branchcc occurs ; |738| 
        CMPB      AL,#1                 ; |738| 
        BF        L24,NEQ               ; |738| 
        ; branchcc occurs ; |738| 
        LCR       #_SelectFram2         ; |744| 
        ; call occurs [#_SelectFram2] ; |744| 
        BF        L24,UNC               ; |745| 
        ; branch occurs ; |745| 
L23:    
        LCR       #_SelectFram1         ; |741| 
        ; call occurs [#_SelectFram1] ; |741| 
L24:    
        MOVB      AL,#3                 ; |747| 
        LCR       #_TransmitByte        ; |747| 
        ; call occurs [#_TransmitByte] ; |747| 
        MOV       AL,AR2                ; |748| 
        LCR       #_TransmitByte        ; |748| 
        ; call occurs [#_TransmitByte] ; |748| 
        MOV       AL,AR1                ; |748| 
        LCR       #_TransmitByte        ; |749| 
        ; call occurs [#_TransmitByte] ; |749| 
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"spi.c",750,1
        LRETR
        ; return occurs
	.dwattr DW$81, DW_AT_end_file("spi.c")
	.dwattr DW$81, DW_AT_end_line(0x2ee)
	.dwattr DW$81, DW_AT_end_column(0x01)
	.dwendtag DW$81

	.sect	".text"
	.global	_ReadMemoryEEprom1

DW$84	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadMemoryEEprom1"), DW_AT_symbol_name("_ReadMemoryEEprom1")
	.dwattr DW$84, DW_AT_low_pc(_ReadMemoryEEprom1)
	.dwattr DW$84, DW_AT_high_pc(0x00)
	.dwattr DW$84, DW_AT_begin_file("spi.c")
	.dwattr DW$84, DW_AT_begin_line(0x2f1)
	.dwattr DW$84, DW_AT_begin_column(0x06)
	.dwattr DW$84, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$84, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",754,1

;***************************************************************
;* FNAME: _ReadMemoryEEprom1            FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_ReadMemoryEEprom1:
;* AL    assigned to _addy
DW$85	.dwtag  DW_TAG_formal_parameter, DW_AT_name("addy"), DW_AT_symbol_name("_addy")
	.dwattr DW$85, DW_AT_type(*DW$T$11)
	.dwattr DW$85, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVZ      AR1,AL                ; |754| 
        LCR       #_SelectEEprom1       ; |760| 
        ; call occurs [#_SelectEEprom1] ; |760| 
        MOVB      AL,#3                 ; |761| 
        LCR       #_TransmitByte        ; |761| 
        ; call occurs [#_TransmitByte] ; |761| 
        MOV       AL,AR1                ; |762| 
        LSR       AL,8                  ; |762| 
        LCR       #_TransmitByte        ; |762| 
        ; call occurs [#_TransmitByte] ; |762| 
        AND       AL,AR1,#0x00ff        ; |763| 
        LCR       #_TransmitByte        ; |763| 
        ; call occurs [#_TransmitByte] ; |763| 
        MOVL      XAR1,*--SP
	.dwpsn	"spi.c",764,1
        LRETR
        ; return occurs
	.dwattr DW$84, DW_AT_end_file("spi.c")
	.dwattr DW$84, DW_AT_end_line(0x2fc)
	.dwattr DW$84, DW_AT_end_column(0x01)
	.dwendtag DW$84

	.sect	".text"
	.global	_WriteEnableFram1

DW$86	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteEnableFram1"), DW_AT_symbol_name("_WriteEnableFram1")
	.dwattr DW$86, DW_AT_low_pc(_WriteEnableFram1)
	.dwattr DW$86, DW_AT_high_pc(0x00)
	.dwattr DW$86, DW_AT_begin_file("spi.c")
	.dwattr DW$86, DW_AT_begin_line(0x2fe)
	.dwattr DW$86, DW_AT_begin_column(0x06)
	.dwattr DW$86, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$86, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",767,1

;***************************************************************
;* FNAME: _WriteEnableFram1             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WriteEnableFram1:
        LCR       #_SelectFram1         ; |768| 
        ; call occurs [#_SelectFram1] ; |768| 
        MOVB      AL,#6                 ; |769| 
        LCR       #_TransmitByte        ; |769| 
        ; call occurs [#_TransmitByte] ; |769| 
        LCR       #_DeselectSPI         ; |770| 
        ; call occurs [#_DeselectSPI] ; |770| 
	.dwpsn	"spi.c",771,1
        LRETR
        ; return occurs
	.dwattr DW$86, DW_AT_end_file("spi.c")
	.dwattr DW$86, DW_AT_end_line(0x303)
	.dwattr DW$86, DW_AT_end_column(0x01)
	.dwendtag DW$86

	.sect	".text"
	.global	_WriteEnableFram2

DW$87	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteEnableFram2"), DW_AT_symbol_name("_WriteEnableFram2")
	.dwattr DW$87, DW_AT_low_pc(_WriteEnableFram2)
	.dwattr DW$87, DW_AT_high_pc(0x00)
	.dwattr DW$87, DW_AT_begin_file("spi.c")
	.dwattr DW$87, DW_AT_begin_line(0x305)
	.dwattr DW$87, DW_AT_begin_column(0x06)
	.dwattr DW$87, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$87, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",774,1

;***************************************************************
;* FNAME: _WriteEnableFram2             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WriteEnableFram2:
        LCR       #_SelectFram2         ; |775| 
        ; call occurs [#_SelectFram2] ; |775| 
        MOVB      AL,#6                 ; |776| 
        LCR       #_TransmitByte        ; |776| 
        ; call occurs [#_TransmitByte] ; |776| 
        LCR       #_DeselectSPI         ; |777| 
        ; call occurs [#_DeselectSPI] ; |777| 
	.dwpsn	"spi.c",778,1
        LRETR
        ; return occurs
	.dwattr DW$87, DW_AT_end_file("spi.c")
	.dwattr DW$87, DW_AT_end_line(0x30a)
	.dwattr DW$87, DW_AT_end_column(0x01)
	.dwendtag DW$87

	.sect	".text"
	.global	_WritetoMemoryFRAM

DW$88	.dwtag  DW_TAG_subprogram, DW_AT_name("WritetoMemoryFRAM"), DW_AT_symbol_name("_WritetoMemoryFRAM")
	.dwattr DW$88, DW_AT_low_pc(_WritetoMemoryFRAM)
	.dwattr DW$88, DW_AT_high_pc(0x00)
	.dwattr DW$88, DW_AT_begin_file("spi.c")
	.dwattr DW$88, DW_AT_begin_line(0x30c)
	.dwattr DW$88, DW_AT_begin_column(0x06)
	.dwattr DW$88, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$88, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",781,1

;***************************************************************
;* FNAME: _WritetoMemoryFRAM            FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_WritetoMemoryFRAM:
;* AL    assigned to _choice
DW$89	.dwtag  DW_TAG_formal_parameter, DW_AT_name("choice"), DW_AT_symbol_name("_choice")
	.dwattr DW$89, DW_AT_type(*DW$T$11)
	.dwattr DW$89, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _addy
DW$90	.dwtag  DW_TAG_formal_parameter, DW_AT_name("addy"), DW_AT_symbol_name("_addy")
	.dwattr DW$90, DW_AT_type(*DW$T$11)
	.dwattr DW$90, DW_AT_location[DW_OP_reg1]
        MOVL      *SP++,XAR1
        CMPB      AL,#0                 ; |785| 
        MOVZ      AR1,AH                ; |781| 
        BF        L25,EQ                ; |785| 
        ; branchcc occurs ; |785| 
        CMPB      AL,#1                 ; |785| 
        BF        L26,NEQ               ; |785| 
        ; branchcc occurs ; |785| 
        LCR       #_WriteEnableFram2    ; |792| 
        ; call occurs [#_WriteEnableFram2] ; |792| 
        LCR       #_SelectFram2         ; |793| 
        ; call occurs [#_SelectFram2] ; |793| 
        BF        L26,UNC               ; |794| 
        ; branch occurs ; |794| 
L25:    
        LCR       #_WriteEnableFram1    ; |788| 
        ; call occurs [#_WriteEnableFram1] ; |788| 
        LCR       #_SelectFram1         ; |789| 
        ; call occurs [#_SelectFram1] ; |789| 
L26:    
        MOVB      AL,#2                 ; |799| 
        LCR       #_TransmitByte        ; |799| 
        ; call occurs [#_TransmitByte] ; |799| 
        MOV       AL,AR1                ; |800| 
        LSR       AL,8                  ; |800| 
        LCR       #_TransmitByte        ; |800| 
        ; call occurs [#_TransmitByte] ; |800| 
        AND       AL,AR1,#0x00ff        ; |801| 
        LCR       #_TransmitByte        ; |801| 
        ; call occurs [#_TransmitByte] ; |801| 
        MOVL      XAR1,*--SP
	.dwpsn	"spi.c",802,1
        LRETR
        ; return occurs
	.dwattr DW$88, DW_AT_end_file("spi.c")
	.dwattr DW$88, DW_AT_end_line(0x322)
	.dwattr DW$88, DW_AT_end_column(0x01)
	.dwendtag DW$88

	.sect	".text"
	.global	_SelectFram1

DW$91	.dwtag  DW_TAG_subprogram, DW_AT_name("SelectFram1"), DW_AT_symbol_name("_SelectFram1")
	.dwattr DW$91, DW_AT_low_pc(_SelectFram1)
	.dwattr DW$91, DW_AT_high_pc(0x00)
	.dwattr DW$91, DW_AT_begin_file("spi.c")
	.dwattr DW$91, DW_AT_begin_line(0x324)
	.dwattr DW$91, DW_AT_begin_column(0x06)
	.dwattr DW$91, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$91, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",805,1

;***************************************************************
;* FNAME: _SelectFram1                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SelectFram1:
        MOVB      AL,#36                ; |808| 
        MOVW      DP,#_settings+14
        MOV       @_settings+14,#1      ; |807| 
        MOV       *(0:0x7044),AL        ; |808| 
        MOVW      DP,#_gpb
        AND       @_gpb,#0xf3ff         ; |809| 
	.dwpsn	"spi.c",810,1
        LRETR
        ; return occurs
	.dwattr DW$91, DW_AT_end_file("spi.c")
	.dwattr DW$91, DW_AT_end_line(0x32a)
	.dwattr DW$91, DW_AT_end_column(0x01)
	.dwendtag DW$91

	.sect	".text"
	.global	_SelectFram2

DW$92	.dwtag  DW_TAG_subprogram, DW_AT_name("SelectFram2"), DW_AT_symbol_name("_SelectFram2")
	.dwattr DW$92, DW_AT_low_pc(_SelectFram2)
	.dwattr DW$92, DW_AT_high_pc(0x00)
	.dwattr DW$92, DW_AT_begin_file("spi.c")
	.dwattr DW$92, DW_AT_begin_line(0x32c)
	.dwattr DW$92, DW_AT_begin_column(0x06)
	.dwattr DW$92, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$92, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",813,1

;***************************************************************
;* FNAME: _SelectFram2                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SelectFram2:
        MOVB      AL,#36                ; |816| 
        MOVW      DP,#_settings+14
        MOV       @_settings+14,#1      ; |815| 
        MOV       *(0:0x7044),AL        ; |816| 
        MOVW      DP,#_gpb
        AND       @_gpb,#0xf7ff         ; |817| 
	.dwpsn	"spi.c",818,1
        LRETR
        ; return occurs
	.dwattr DW$92, DW_AT_end_file("spi.c")
	.dwattr DW$92, DW_AT_end_line(0x332)
	.dwattr DW$92, DW_AT_end_column(0x01)
	.dwendtag DW$92

	.sect	".text"
	.global	_SelectEEprom1

DW$93	.dwtag  DW_TAG_subprogram, DW_AT_name("SelectEEprom1"), DW_AT_symbol_name("_SelectEEprom1")
	.dwattr DW$93, DW_AT_low_pc(_SelectEEprom1)
	.dwattr DW$93, DW_AT_high_pc(0x00)
	.dwattr DW$93, DW_AT_begin_file("spi.c")
	.dwattr DW$93, DW_AT_begin_line(0x334)
	.dwattr DW$93, DW_AT_begin_column(0x06)
	.dwattr DW$93, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$93, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",821,1

;***************************************************************
;* FNAME: _SelectEEprom1                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SelectEEprom1:
        MOVW      DP,#_settings+14
        MOV       @_settings+14,#1      ; |822| 
        MOVW      DP,#_spiregs
        OR        @_spiregs,#0x0040     ; |825| 
        MOVB      AL,#36                ; |827| 
        MOV       *(0:0x7044),AL        ; |827| 
        LCR       #_ReceiveByte         ; |828| 
        ; call occurs [#_ReceiveByte] ; |828| 
        MOVW      DP,#_gpf
        AND       @_gpf,#0xfeff         ; |830| 
	.dwpsn	"spi.c",831,1
        LRETR
        ; return occurs
	.dwattr DW$93, DW_AT_end_file("spi.c")
	.dwattr DW$93, DW_AT_end_line(0x33f)
	.dwattr DW$93, DW_AT_end_column(0x01)
	.dwendtag DW$93

	.sect	".text"
	.global	_SelectFlash1

DW$94	.dwtag  DW_TAG_subprogram, DW_AT_name("SelectFlash1"), DW_AT_symbol_name("_SelectFlash1")
	.dwattr DW$94, DW_AT_low_pc(_SelectFlash1)
	.dwattr DW$94, DW_AT_high_pc(0x00)
	.dwattr DW$94, DW_AT_begin_file("spi.c")
	.dwattr DW$94, DW_AT_begin_line(0x341)
	.dwattr DW$94, DW_AT_begin_column(0x06)
	.dwattr DW$94, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$94, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",834,1

;***************************************************************
;* FNAME: _SelectFlash1                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SelectFlash1:
        MOVW      DP,#_settings+14
        MOV       @_settings+14,#1      ; |835| 
        MOVW      DP,#_gpf
        AND       @_gpf,#0xf8ff         ; |837| 
	.dwpsn	"spi.c",838,1
        LRETR
        ; return occurs
	.dwattr DW$94, DW_AT_end_file("spi.c")
	.dwattr DW$94, DW_AT_end_line(0x346)
	.dwattr DW$94, DW_AT_end_column(0x01)
	.dwendtag DW$94

	.sect	".text"
	.global	_SelectFlash2

DW$95	.dwtag  DW_TAG_subprogram, DW_AT_name("SelectFlash2"), DW_AT_symbol_name("_SelectFlash2")
	.dwattr DW$95, DW_AT_low_pc(_SelectFlash2)
	.dwattr DW$95, DW_AT_high_pc(0x00)
	.dwattr DW$95, DW_AT_begin_file("spi.c")
	.dwattr DW$95, DW_AT_begin_line(0x348)
	.dwattr DW$95, DW_AT_begin_column(0x06)
	.dwattr DW$95, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$95, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",841,1

;***************************************************************
;* FNAME: _SelectFlash2                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SelectFlash2:
        MOVW      DP,#_settings+14
        MOV       @_settings+14,#1      ; |842| 
        MOVW      DP,#_gpf
        AND       @_gpf,#0xf9ff         ; |844| 
	.dwpsn	"spi.c",845,1
        LRETR
        ; return occurs
	.dwattr DW$95, DW_AT_end_file("spi.c")
	.dwattr DW$95, DW_AT_end_line(0x34d)
	.dwattr DW$95, DW_AT_end_column(0x01)
	.dwendtag DW$95

	.sect	".text"
	.global	_SelectFlash3

DW$96	.dwtag  DW_TAG_subprogram, DW_AT_name("SelectFlash3"), DW_AT_symbol_name("_SelectFlash3")
	.dwattr DW$96, DW_AT_low_pc(_SelectFlash3)
	.dwattr DW$96, DW_AT_high_pc(0x00)
	.dwattr DW$96, DW_AT_begin_file("spi.c")
	.dwattr DW$96, DW_AT_begin_line(0x34f)
	.dwattr DW$96, DW_AT_begin_column(0x06)
	.dwattr DW$96, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$96, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",848,1

;***************************************************************
;* FNAME: _SelectFlash3                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SelectFlash3:
        MOVW      DP,#_settings+14
        MOV       @_settings+14,#1      ; |849| 
        MOVW      DP,#_gpf
        AND       @_gpf,#0xfaff         ; |851| 
	.dwpsn	"spi.c",852,1
        LRETR
        ; return occurs
	.dwattr DW$96, DW_AT_end_file("spi.c")
	.dwattr DW$96, DW_AT_end_line(0x354)
	.dwattr DW$96, DW_AT_end_column(0x01)
	.dwendtag DW$96

	.sect	".text"
	.global	_SelectFlash4

DW$97	.dwtag  DW_TAG_subprogram, DW_AT_name("SelectFlash4"), DW_AT_symbol_name("_SelectFlash4")
	.dwattr DW$97, DW_AT_low_pc(_SelectFlash4)
	.dwattr DW$97, DW_AT_high_pc(0x00)
	.dwattr DW$97, DW_AT_begin_file("spi.c")
	.dwattr DW$97, DW_AT_begin_line(0x356)
	.dwattr DW$97, DW_AT_begin_column(0x06)
	.dwattr DW$97, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$97, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",855,1

;***************************************************************
;* FNAME: _SelectFlash4                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SelectFlash4:
        MOVW      DP,#_settings+14
        MOV       @_settings+14,#1      ; |856| 
        MOVW      DP,#_gpf
        AND       @_gpf,#0xfbff         ; |858| 
	.dwpsn	"spi.c",859,1
        LRETR
        ; return occurs
	.dwattr DW$97, DW_AT_end_file("spi.c")
	.dwattr DW$97, DW_AT_end_line(0x35b)
	.dwattr DW$97, DW_AT_end_column(0x01)
	.dwendtag DW$97

	.sect	".text"
	.global	_SelectRTC

DW$98	.dwtag  DW_TAG_subprogram, DW_AT_name("SelectRTC"), DW_AT_symbol_name("_SelectRTC")
	.dwattr DW$98, DW_AT_low_pc(_SelectRTC)
	.dwattr DW$98, DW_AT_high_pc(0x00)
	.dwattr DW$98, DW_AT_begin_file("spi.c")
	.dwattr DW$98, DW_AT_begin_line(0x35e)
	.dwattr DW$98, DW_AT_begin_column(0x06)
	.dwattr DW$98, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$98, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",863,1

;***************************************************************
;* FNAME: _SelectRTC                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SelectRTC:
        MOVW      DP,#_settings+14
        MOV       @_settings+14,#1      ; |864| 
        MOVW      DP,#_spiregs
        AND       @_spiregs,#0xffbf     ; |865| 
        MOVB      AL,#61                ; |867| 
        MOV       *(0:0x7044),AL        ; |867| 
        LCR       #_ReceiveByte         ; |869| 
        ; call occurs [#_ReceiveByte] ; |869| 
        MOVW      DP,#_gpb
        OR        @_gpb,#0x4000         ; |871| 
        MOV       AL,#600               ; |872| 
        LCR       #_NOPDelay            ; |872| 
        ; call occurs [#_NOPDelay] ; |872| 
	.dwpsn	"spi.c",873,1
        LRETR
        ; return occurs
	.dwattr DW$98, DW_AT_end_file("spi.c")
	.dwattr DW$98, DW_AT_end_line(0x369)
	.dwattr DW$98, DW_AT_end_column(0x01)
	.dwendtag DW$98

	.sect	".text"
	.global	_DeselectSPI

DW$99	.dwtag  DW_TAG_subprogram, DW_AT_name("DeselectSPI"), DW_AT_symbol_name("_DeselectSPI")
	.dwattr DW$99, DW_AT_low_pc(_DeselectSPI)
	.dwattr DW$99, DW_AT_high_pc(0x00)
	.dwattr DW$99, DW_AT_begin_file("spi.c")
	.dwattr DW$99, DW_AT_begin_line(0x36c)
	.dwattr DW$99, DW_AT_begin_column(0x06)
	.dwattr DW$99, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$99, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",877,1

;***************************************************************
;* FNAME: _DeselectSPI                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_DeselectSPI:
        MOVW      DP,#_gpb
        AND       @_gpb,#0xbfff         ; |878| 
        MOVW      DP,#_gpf
        OR        @_gpf,#0x0700         ; |879| 
        MOVW      DP,#_gpb
        OR        @_gpb,#0x0c00         ; |881| 
        MOVB      AL,#3                 ; |883| 
        MOVW      DP,#_spiregs
        MOV       *(0:0x7044),AL        ; |883| 
        OR        @_spiregs,#0x0040     ; |886| 
        LCR       #_ReceiveByte         ; |888| 
        ; call occurs [#_ReceiveByte] ; |888| 
        MOVW      DP,#_receiveC
        MOV       AL,@_receiveC         ; |892| 
        CMPB      AL,#1                 ; |892| 
        BF        L27,NEQ               ; |892| 
        ; branchcc occurs ; |892| 
        LCR       #_ReadDataFromUart_C  ; |894| 
        ; call occurs [#_ReadDataFromUart_C] ; |894| 
        LCR       #_ReadDataFromUart_C  ; |895| 
        ; call occurs [#_ReadDataFromUart_C] ; |895| 
        MOVW      DP,#_config+10
        MOVB      ACC,#1
        ADDL      @_config+10,ACC       ; |896| 
        MOVW      DP,#_receiveC
        MOV       @_receiveC,#0         ; |897| 
L27:    
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |900| 
        MOVW      DP,#_settings+14
        MOV       @_settings+14,#0      ; |901| 
	.dwpsn	"spi.c",902,1
        LRETR
        ; return occurs
	.dwattr DW$99, DW_AT_end_file("spi.c")
	.dwattr DW$99, DW_AT_end_line(0x386)
	.dwattr DW$99, DW_AT_end_column(0x01)
	.dwendtag DW$99

	.sect	".text"
	.global	_TransmitByte

DW$100	.dwtag  DW_TAG_subprogram, DW_AT_name("TransmitByte"), DW_AT_symbol_name("_TransmitByte")
	.dwattr DW$100, DW_AT_low_pc(_TransmitByte)
	.dwattr DW$100, DW_AT_high_pc(0x00)
	.dwattr DW$100, DW_AT_begin_file("spi.c")
	.dwattr DW$100, DW_AT_begin_line(0x389)
	.dwattr DW$100, DW_AT_begin_column(0x06)
	.dwattr DW$100, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$100, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",906,1

;***************************************************************
;* FNAME: _TransmitByte                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_TransmitByte:
;* AL    assigned to _byteout
DW$101	.dwtag  DW_TAG_formal_parameter, DW_AT_name("byteout"), DW_AT_symbol_name("_byteout")
	.dwattr DW$101, DW_AT_type(*DW$T$11)
	.dwattr DW$101, DW_AT_location[DW_OP_reg0]
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |909| 
        ANDB      AL,#255               ; |912| 
        MOVW      DP,#_spiregs+7
        MOV       T,#257                ; |912| 
        MOV       AH,@_spiregs+7        ; |910| 
        MOVW      DP,#_dummy
        MOV       @_dummy,AH            ; |910| 
        MOVW      DP,#_timers+1
        MOV       @_timers+1,#2         ; |911| 
        MPY       ACC,T,AL              ; |912| 
        MOVW      DP,#_spiregs+8
        MOV       @_spiregs+8,AL        ; |912| 
        NOP
  NOP
  NOP
        MOVW      DP,#_spiregs+2
        TBIT      @_spiregs+2,#6        ; |915| 
        BF        L29,TC                ; |915| 
        ; branchcc occurs ; |915| 
L28:    
DW$L$_TransmitByte$2$B:
	.dwpsn	"spi.c",916,0
        MOVW      DP,#_timers+1
        MOV       AL,@_timers+1         ; |915| 
        BF        L29,EQ                ; |915| 
        ; branchcc occurs ; |915| 
DW$L$_TransmitByte$2$E:
DW$L$_TransmitByte$3$B:
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |917| 
        MOVW      DP,#_spiregs+2
        TBIT      @_spiregs+2,#6        ; |917| 
	.dwpsn	"spi.c",918,0
        BF        L28,NTC               ; |917| 
        ; branchcc occurs ; |917| 
DW$L$_TransmitByte$3$E:
L29:    
  NOP
  NOP
        MOVW      DP,#_spiregs+7
        MOV       AL,@_spiregs+7        ; |921| 
        SPM       #0
        MOVW      DP,#_dummy
        MOV       @_dummy,AL            ; |921| 
	.dwpsn	"spi.c",922,1
        LRETR
        ; return occurs

DW$102	.dwtag  DW_TAG_loop
	.dwattr DW$102, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\spi.asm:L28:1:1471518992")
	.dwattr DW$102, DW_AT_begin_file("spi.c")
	.dwattr DW$102, DW_AT_begin_line(0x393)
	.dwattr DW$102, DW_AT_end_line(0x396)
DW$103	.dwtag  DW_TAG_loop_range
	.dwattr DW$103, DW_AT_low_pc(DW$L$_TransmitByte$2$B)
	.dwattr DW$103, DW_AT_high_pc(DW$L$_TransmitByte$2$E)
DW$104	.dwtag  DW_TAG_loop_range
	.dwattr DW$104, DW_AT_low_pc(DW$L$_TransmitByte$3$B)
	.dwattr DW$104, DW_AT_high_pc(DW$L$_TransmitByte$3$E)
	.dwendtag DW$102

	.dwattr DW$100, DW_AT_end_file("spi.c")
	.dwattr DW$100, DW_AT_end_line(0x39a)
	.dwattr DW$100, DW_AT_end_column(0x01)
	.dwendtag DW$100

	.sect	".text"
	.global	_ReceiveByte

DW$105	.dwtag  DW_TAG_subprogram, DW_AT_name("ReceiveByte"), DW_AT_symbol_name("_ReceiveByte")
	.dwattr DW$105, DW_AT_low_pc(_ReceiveByte)
	.dwattr DW$105, DW_AT_high_pc(0x00)
	.dwattr DW$105, DW_AT_begin_file("spi.c")
	.dwattr DW$105, DW_AT_begin_line(0x39c)
	.dwattr DW$105, DW_AT_begin_column(0x0e)
	.dwattr DW$105, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$105, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",925,1

;***************************************************************
;* FNAME: _ReceiveByte                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReceiveByte:
        MOVW      DP,#_settings
        MOVL      XAR4,#_spiregs        ; |929| 
        MOV       @_settings,#1         ; |926| 
        MOVW      DP,#_spiregs+8
        OR        *+XAR4[1],#0x0002     ; |929| 
        MOV       @_spiregs+8,#65535    ; |930| 
        MOVW      DP,#_timers+1
        MOV       @_timers+1,#2         ; |932| 
        NOP
        NOP
  NOP
  NOP
        TBIT      *+XAR4[2],#6          ; |935| 
        BF        L31,TC                ; |935| 
        ; branchcc occurs ; |935| 
L30:    
DW$L$_ReceiveByte$2$B:
	.dwpsn	"spi.c",936,0
        MOVW      DP,#_timers+1
        MOV       AL,@_timers+1         ; |935| 
        BF        L31,EQ                ; |935| 
        ; branchcc occurs ; |935| 
DW$L$_ReceiveByte$2$E:
DW$L$_ReceiveByte$3$B:
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |937| 
        MOVW      DP,#_spiregs+2
        TBIT      @_spiregs+2,#6        ; |937| 
	.dwpsn	"spi.c",938,0
        BF        L30,NTC               ; |937| 
        ; branchcc occurs ; |937| 
DW$L$_ReceiveByte$3$E:
L31:    
  NOP
  NOP
        SPM       #0
        MOVW      DP,#_spiregs+1
        OR        @_spiregs+1,#0x0002   ; |941| 
        MOVW      DP,#_spiregs+7
        AND       AL,@_spiregs+7,#0x00ff ; |942| 
	.dwpsn	"spi.c",943,1
        LRETR
        ; return occurs

DW$106	.dwtag  DW_TAG_loop
	.dwattr DW$106, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\spi.asm:L30:1:1471518992")
	.dwattr DW$106, DW_AT_begin_file("spi.c")
	.dwattr DW$106, DW_AT_begin_line(0x3a7)
	.dwattr DW$106, DW_AT_end_line(0x3aa)
DW$107	.dwtag  DW_TAG_loop_range
	.dwattr DW$107, DW_AT_low_pc(DW$L$_ReceiveByte$2$B)
	.dwattr DW$107, DW_AT_high_pc(DW$L$_ReceiveByte$2$E)
DW$108	.dwtag  DW_TAG_loop_range
	.dwattr DW$108, DW_AT_low_pc(DW$L$_ReceiveByte$3$B)
	.dwattr DW$108, DW_AT_high_pc(DW$L$_ReceiveByte$3$E)
	.dwendtag DW$106

	.dwattr DW$105, DW_AT_end_file("spi.c")
	.dwattr DW$105, DW_AT_end_line(0x3af)
	.dwattr DW$105, DW_AT_end_column(0x01)
	.dwendtag DW$105

	.sect	".text"
	.global	_SelectUart_C

DW$109	.dwtag  DW_TAG_subprogram, DW_AT_name("SelectUart_C"), DW_AT_symbol_name("_SelectUart_C")
	.dwattr DW$109, DW_AT_low_pc(_SelectUart_C)
	.dwattr DW$109, DW_AT_high_pc(0x00)
	.dwattr DW$109, DW_AT_begin_file("spi.c")
	.dwattr DW$109, DW_AT_begin_line(0x3b6)
	.dwattr DW$109, DW_AT_begin_column(0x06)
	.dwattr DW$109, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$109, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",951,1

;***************************************************************
;* FNAME: _SelectUart_C                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SelectUart_C:
        MOVB      AL,#36                ; |953| 
        MOV       *(0:0x7044),AL        ; |953| 
        MOVW      DP,#_gpf
        AND       @_gpf,#0xfdff         ; |954| 
	.dwpsn	"spi.c",955,1
        LRETR
        ; return occurs
	.dwattr DW$109, DW_AT_end_file("spi.c")
	.dwattr DW$109, DW_AT_end_line(0x3bb)
	.dwattr DW$109, DW_AT_end_column(0x01)
	.dwendtag DW$109

	.sect	".text"
	.global	_DeselectUart_C

DW$110	.dwtag  DW_TAG_subprogram, DW_AT_name("DeselectUart_C"), DW_AT_symbol_name("_DeselectUart_C")
	.dwattr DW$110, DW_AT_low_pc(_DeselectUart_C)
	.dwattr DW$110, DW_AT_high_pc(0x00)
	.dwattr DW$110, DW_AT_begin_file("spi.c")
	.dwattr DW$110, DW_AT_begin_line(0x3bf)
	.dwattr DW$110, DW_AT_begin_column(0x06)
	.dwattr DW$110, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$110, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",960,1

;***************************************************************
;* FNAME: _DeselectUart_C               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_DeselectUart_C:
        MOVW      DP,#_gpb
        AND       @_gpb,#0xbfff         ; |961| 
        MOVW      DP,#_gpf
        OR        @_gpf,#0x0700         ; |962| 
        MOVB      AL,#3                 ; |964| 
        MOV       *(0:0x7044),AL        ; |964| 
        MOVW      DP,#_spiregs
        OR        @_spiregs,#0x0040     ; |966| 
        LCR       #_ReceiveByte         ; |968| 
        ; call occurs [#_ReceiveByte] ; |968| 
	.dwpsn	"spi.c",969,1
        LRETR
        ; return occurs
	.dwattr DW$110, DW_AT_end_file("spi.c")
	.dwattr DW$110, DW_AT_end_line(0x3c9)
	.dwattr DW$110, DW_AT_end_column(0x01)
	.dwendtag DW$110

	.sect	".text"
	.global	_WriteUartConfig_C

DW$111	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteUartConfig_C"), DW_AT_symbol_name("_WriteUartConfig_C")
	.dwattr DW$111, DW_AT_low_pc(_WriteUartConfig_C)
	.dwattr DW$111, DW_AT_high_pc(0x00)
	.dwattr DW$111, DW_AT_begin_file("spi.c")
	.dwattr DW$111, DW_AT_begin_line(0x3cf)
	.dwattr DW$111, DW_AT_begin_column(0x06)
	.dwattr DW$111, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$111, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",976,1

;***************************************************************
;* FNAME: _WriteUartConfig_C            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WriteUartConfig_C:
;* AL    assigned to _num
DW$112	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num"), DW_AT_symbol_name("_num")
	.dwattr DW$112, DW_AT_type(*DW$T$11)
	.dwattr DW$112, DW_AT_location[DW_OP_reg0]
        LCR       #_SelectUart_C        ; |977| 
        ; call occurs [#_SelectUart_C] ; |977| 
        MOVB      AL,#228               ; |980| 
        LCR       #_TransmitByte        ; |980| 
        ; call occurs [#_TransmitByte] ; |980| 
        MOVB      AL,#11                ; |982| 
        LCR       #_TransmitByte        ; |982| 
        ; call occurs [#_TransmitByte] ; |982| 
        LCR       #_DeselectUart_C      ; |983| 
        ; call occurs [#_DeselectUart_C] ; |983| 
	.dwpsn	"spi.c",984,1
        LRETR
        ; return occurs
	.dwattr DW$111, DW_AT_end_file("spi.c")
	.dwattr DW$111, DW_AT_end_line(0x3d8)
	.dwattr DW$111, DW_AT_end_column(0x01)
	.dwendtag DW$111

	.sect	".text"
	.global	_WaitforUartTxComplete_C

DW$113	.dwtag  DW_TAG_subprogram, DW_AT_name("WaitforUartTxComplete_C"), DW_AT_symbol_name("_WaitforUartTxComplete_C")
	.dwattr DW$113, DW_AT_low_pc(_WaitforUartTxComplete_C)
	.dwattr DW$113, DW_AT_high_pc(0x00)
	.dwattr DW$113, DW_AT_begin_file("spi.c")
	.dwattr DW$113, DW_AT_begin_line(0x3da)
	.dwattr DW$113, DW_AT_begin_column(0x06)
	.dwattr DW$113, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$113, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",987,1

;***************************************************************
;* FNAME: _WaitforUartTxComplete_C      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WaitforUartTxComplete_C:
        MOVW      DP,#_timers+40
	.dwpsn	"spi.c",991,0
        MOV       @_timers+40,#4        ; |990| 
L32:    
DW$L$_WaitforUartTxComplete_C$2$B:
	.dwpsn	"spi.c",992,0
        LCR       #_ReadDataFromUart_C  ; |993| 
        ; call occurs [#_ReadDataFromUart_C] ; |993| 
        MOVW      DP,#_settings
        AND       AL,AL,#0x4000         ; |995| 
        MOV       @_settings,#1         ; |994| 
        BF        L33,NEQ               ; |995| 
        ; branchcc occurs ; |995| 
DW$L$_WaitforUartTxComplete_C$2$E:
DW$L$_WaitforUartTxComplete_C$3$B:
        MOVW      DP,#_timers+40
        MOV       AL,@_timers+40        ; |995| 
	.dwpsn	"spi.c",995,0
        BF        L32,NEQ               ; |995| 
        ; branchcc occurs ; |995| 
DW$L$_WaitforUartTxComplete_C$3$E:
L33:    
	.dwpsn	"spi.c",996,1
        LRETR
        ; return occurs

DW$114	.dwtag  DW_TAG_loop
	.dwattr DW$114, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\spi.asm:L32:1:1471518992")
	.dwattr DW$114, DW_AT_begin_file("spi.c")
	.dwattr DW$114, DW_AT_begin_line(0x3df)
	.dwattr DW$114, DW_AT_end_line(0x3e3)
DW$115	.dwtag  DW_TAG_loop_range
	.dwattr DW$115, DW_AT_low_pc(DW$L$_WaitforUartTxComplete_C$2$B)
	.dwattr DW$115, DW_AT_high_pc(DW$L$_WaitforUartTxComplete_C$2$E)
DW$116	.dwtag  DW_TAG_loop_range
	.dwattr DW$116, DW_AT_low_pc(DW$L$_WaitforUartTxComplete_C$3$B)
	.dwattr DW$116, DW_AT_high_pc(DW$L$_WaitforUartTxComplete_C$3$E)
	.dwendtag DW$114

	.dwattr DW$113, DW_AT_end_file("spi.c")
	.dwattr DW$113, DW_AT_end_line(0x3e4)
	.dwattr DW$113, DW_AT_end_column(0x01)
	.dwendtag DW$113

	.sect	".text"
	.global	_WriteBytetoUart_C

DW$117	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteBytetoUart_C"), DW_AT_symbol_name("_WriteBytetoUart_C")
	.dwattr DW$117, DW_AT_low_pc(_WriteBytetoUart_C)
	.dwattr DW$117, DW_AT_high_pc(0x00)
	.dwattr DW$117, DW_AT_begin_file("spi.c")
	.dwattr DW$117, DW_AT_begin_line(0x3e7)
	.dwattr DW$117, DW_AT_begin_column(0x06)
	.dwattr DW$117, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$117, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",1000,1

;***************************************************************
;* FNAME: _WriteBytetoUart_C            FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_WriteBytetoUart_C:
;* AL    assigned to _databyte
DW$118	.dwtag  DW_TAG_formal_parameter, DW_AT_name("databyte"), DW_AT_symbol_name("_databyte")
	.dwattr DW$118, DW_AT_type(*DW$T$11)
	.dwattr DW$118, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVW      DP,#_timers+40
        MOVZ      AR1,AL                ; |1000| 
	.dwpsn	"spi.c",1004,0
        MOV       @_timers+40,#4        ; |1003| 
L34:    
DW$L$_WriteBytetoUart_C$2$B:
	.dwpsn	"spi.c",1005,0
        LCR       #_ReadDataFromUart_C  ; |1006| 
        ; call occurs [#_ReadDataFromUart_C] ; |1006| 
        MOVW      DP,#_settings
        AND       AL,AL,#0x4000         ; |1008| 
        MOV       @_settings,#1         ; |1007| 
        BF        L35,NEQ               ; |1008| 
        ; branchcc occurs ; |1008| 
DW$L$_WriteBytetoUart_C$2$E:
DW$L$_WriteBytetoUart_C$3$B:
        MOVW      DP,#_timers+40
        MOV       AL,@_timers+40        ; |1008| 
	.dwpsn	"spi.c",1008,0
        BF        L34,NEQ               ; |1008| 
        ; branchcc occurs ; |1008| 
DW$L$_WriteBytetoUart_C$3$E:
L35:    
        MOVW      DP,#_timers+40
        MOV       AL,@_timers+40        ; |1009| 
        BF        L36,NEQ               ; |1009| 
        ; branchcc occurs ; |1009| 
        LCR       #_WriteUartConfig_C   ; |1012| 
        ; call occurs [#_WriteUartConfig_C] ; |1012| 
L36:    
        LCR       #_SelectUart_C        ; |1014| 
        ; call occurs [#_SelectUart_C] ; |1014| 
        MOVB      AL,#128               ; |1016| 
        LCR       #_TransmitByte        ; |1016| 
        ; call occurs [#_TransmitByte] ; |1016| 
        MOV       AL,AR1                ; |1017| 
        LCR       #_TransmitByte        ; |1017| 
        ; call occurs [#_TransmitByte] ; |1017| 
        LCR       #_DeselectUart_C      ; |1018| 
        ; call occurs [#_DeselectUart_C] ; |1018| 
        MOVL      XAR1,*--SP
	.dwpsn	"spi.c",1019,1
        LRETR
        ; return occurs

DW$119	.dwtag  DW_TAG_loop
	.dwattr DW$119, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\spi.asm:L34:1:1471518992")
	.dwattr DW$119, DW_AT_begin_file("spi.c")
	.dwattr DW$119, DW_AT_begin_line(0x3ec)
	.dwattr DW$119, DW_AT_end_line(0x3f0)
DW$120	.dwtag  DW_TAG_loop_range
	.dwattr DW$120, DW_AT_low_pc(DW$L$_WriteBytetoUart_C$2$B)
	.dwattr DW$120, DW_AT_high_pc(DW$L$_WriteBytetoUart_C$2$E)
DW$121	.dwtag  DW_TAG_loop_range
	.dwattr DW$121, DW_AT_low_pc(DW$L$_WriteBytetoUart_C$3$B)
	.dwattr DW$121, DW_AT_high_pc(DW$L$_WriteBytetoUart_C$3$E)
	.dwendtag DW$119

	.dwattr DW$117, DW_AT_end_file("spi.c")
	.dwattr DW$117, DW_AT_end_line(0x3fb)
	.dwattr DW$117, DW_AT_end_column(0x01)
	.dwendtag DW$117

	.sect	".text"
	.global	_ReadDataFromUart_C

DW$122	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadDataFromUart_C"), DW_AT_symbol_name("_ReadDataFromUart_C")
	.dwattr DW$122, DW_AT_low_pc(_ReadDataFromUart_C)
	.dwattr DW$122, DW_AT_high_pc(0x00)
	.dwattr DW$122, DW_AT_begin_file("spi.c")
	.dwattr DW$122, DW_AT_begin_line(0x3fe)
	.dwattr DW$122, DW_AT_begin_column(0x0e)
	.dwattr DW$122, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$122, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",1023,1

;***************************************************************
;* FNAME: _ReadDataFromUart_C           FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_ReadDataFromUart_C:
        MOVL      *SP++,XAR1
        LCR       #_SelectUart_C        ; |1028| 
        ; call occurs [#_SelectUart_C] ; |1028| 
        LCR       #_ReceiveByteUART     ; |1030| 
        ; call occurs [#_ReceiveByteUART] ; |1030| 
        MOVZ      AR1,AL                ; |1030| 
        LCR       #_ReceiveByteUART     ; |1031| 
        ; call occurs [#_ReceiveByteUART] ; |1031| 
        MOVZ      AR6,AL                ; |1031| 
        MOV       ACC,AR1 << #8         ; |1032| 
        ADD       AR6,AL                ; |1032| 
        LCR       #_DeselectUart_C      ; |1033| 
        ; call occurs [#_DeselectUart_C] ; |1033| 
        MOVL      XAR1,*--SP            ; |1034| 
        MOV       AL,AR6                ; |1034| 
	.dwpsn	"spi.c",1035,1
        LRETR
        ; return occurs
	.dwattr DW$122, DW_AT_end_file("spi.c")
	.dwattr DW$122, DW_AT_end_line(0x40b)
	.dwattr DW$122, DW_AT_end_column(0x01)
	.dwendtag DW$122

	.sect	".text"
	.global	_ReceiveByteUART

DW$123	.dwtag  DW_TAG_subprogram, DW_AT_name("ReceiveByteUART"), DW_AT_symbol_name("_ReceiveByteUART")
	.dwattr DW$123, DW_AT_low_pc(_ReceiveByteUART)
	.dwattr DW$123, DW_AT_high_pc(0x00)
	.dwattr DW$123, DW_AT_begin_file("spi.c")
	.dwattr DW$123, DW_AT_begin_line(0x40f)
	.dwattr DW$123, DW_AT_begin_column(0x0e)
	.dwattr DW$123, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$123, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",1040,1

;***************************************************************
;* FNAME: _ReceiveByteUART              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReceiveByteUART:
        MOVW      DP,#_settings
        MOVL      XAR4,#_spiregs        ; |1042| 
        MOV       @_settings,#1         ; |1041| 
        MOVW      DP,#_spiregs+8
        OR        *+XAR4[1],#0x0002     ; |1042| 
        MOV       @_spiregs+8,#0        ; |1043| 
        MOVW      DP,#_timers+1
        MOV       @_timers+1,#2         ; |1045| 
        NOP
        NOP
  NOP
  NOP
        TBIT      *+XAR4[2],#6          ; |1048| 
        BF        L38,TC                ; |1048| 
        ; branchcc occurs ; |1048| 
L37:    
DW$L$_ReceiveByteUART$2$B:
	.dwpsn	"spi.c",1049,0
        MOVW      DP,#_timers+1
        MOV       AL,@_timers+1         ; |1048| 
        BF        L38,EQ                ; |1048| 
        ; branchcc occurs ; |1048| 
DW$L$_ReceiveByteUART$2$E:
DW$L$_ReceiveByteUART$3$B:
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |1050| 
        MOVW      DP,#_spiregs+2
        TBIT      @_spiregs+2,#6        ; |1050| 
	.dwpsn	"spi.c",1051,0
        BF        L37,NTC               ; |1050| 
        ; branchcc occurs ; |1050| 
DW$L$_ReceiveByteUART$3$E:
L38:    
  NOP
  NOP
        SPM       #0
        MOVW      DP,#_spiregs+1
        OR        @_spiregs+1,#0x0002   ; |1054| 
        MOVW      DP,#_spiregs+7
        AND       AL,@_spiregs+7,#0x00ff ; |1055| 
	.dwpsn	"spi.c",1056,1
        LRETR
        ; return occurs

DW$124	.dwtag  DW_TAG_loop
	.dwattr DW$124, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\spi.asm:L37:1:1471518992")
	.dwattr DW$124, DW_AT_begin_file("spi.c")
	.dwattr DW$124, DW_AT_begin_line(0x418)
	.dwattr DW$124, DW_AT_end_line(0x41b)
DW$125	.dwtag  DW_TAG_loop_range
	.dwattr DW$125, DW_AT_low_pc(DW$L$_ReceiveByteUART$2$B)
	.dwattr DW$125, DW_AT_high_pc(DW$L$_ReceiveByteUART$2$E)
DW$126	.dwtag  DW_TAG_loop_range
	.dwattr DW$126, DW_AT_low_pc(DW$L$_ReceiveByteUART$3$B)
	.dwattr DW$126, DW_AT_high_pc(DW$L$_ReceiveByteUART$3$E)
	.dwendtag DW$124

	.dwattr DW$123, DW_AT_end_file("spi.c")
	.dwattr DW$123, DW_AT_end_line(0x420)
	.dwattr DW$123, DW_AT_end_column(0x01)
	.dwendtag DW$123

	.sect	".text"
	.global	_SelectUart_D

DW$127	.dwtag  DW_TAG_subprogram, DW_AT_name("SelectUart_D"), DW_AT_symbol_name("_SelectUart_D")
	.dwattr DW$127, DW_AT_low_pc(_SelectUart_D)
	.dwattr DW$127, DW_AT_high_pc(0x00)
	.dwattr DW$127, DW_AT_begin_file("spi.c")
	.dwattr DW$127, DW_AT_begin_line(0x428)
	.dwattr DW$127, DW_AT_begin_column(0x06)
	.dwattr DW$127, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$127, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",1065,1

;***************************************************************
;* FNAME: _SelectUart_D                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SelectUart_D:
        MOVB      AL,#36                ; |1067| 
        MOV       *(0:0x7044),AL        ; |1067| 
        MOVW      DP,#_gpb
        AND       @_gpb,#0xfbff         ; |1068| 
	.dwpsn	"spi.c",1069,1
        LRETR
        ; return occurs
	.dwattr DW$127, DW_AT_end_file("spi.c")
	.dwattr DW$127, DW_AT_end_line(0x42d)
	.dwattr DW$127, DW_AT_end_column(0x01)
	.dwendtag DW$127

	.sect	".text"
	.global	_DeselectUart_D

DW$128	.dwtag  DW_TAG_subprogram, DW_AT_name("DeselectUart_D"), DW_AT_symbol_name("_DeselectUart_D")
	.dwattr DW$128, DW_AT_low_pc(_DeselectUart_D)
	.dwattr DW$128, DW_AT_high_pc(0x00)
	.dwattr DW$128, DW_AT_begin_file("spi.c")
	.dwattr DW$128, DW_AT_begin_line(0x431)
	.dwattr DW$128, DW_AT_begin_column(0x06)
	.dwattr DW$128, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$128, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",1074,1

;***************************************************************
;* FNAME: _DeselectUart_D               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_DeselectUart_D:
        MOVW      DP,#_gpb
        OR        @_gpb,#0x0c00         ; |1076| 
        MOVB      AL,#3                 ; |1078| 
        MOV       *(0:0x7044),AL        ; |1078| 
        MOVW      DP,#_spiregs
        OR        @_spiregs,#0x0040     ; |1080| 
        LCR       #_ReceiveByte         ; |1082| 
        ; call occurs [#_ReceiveByte] ; |1082| 
	.dwpsn	"spi.c",1083,1
        LRETR
        ; return occurs
	.dwattr DW$128, DW_AT_end_file("spi.c")
	.dwattr DW$128, DW_AT_end_line(0x43b)
	.dwattr DW$128, DW_AT_end_column(0x01)
	.dwendtag DW$128

	.sect	".text"
	.global	_WriteUartConfig_D

DW$129	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteUartConfig_D"), DW_AT_symbol_name("_WriteUartConfig_D")
	.dwattr DW$129, DW_AT_low_pc(_WriteUartConfig_D)
	.dwattr DW$129, DW_AT_high_pc(0x00)
	.dwattr DW$129, DW_AT_begin_file("spi.c")
	.dwattr DW$129, DW_AT_begin_line(0x440)
	.dwattr DW$129, DW_AT_begin_column(0x06)
	.dwattr DW$129, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$129, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",1089,1

;***************************************************************
;* FNAME: _WriteUartConfig_D            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WriteUartConfig_D:
;* AL    assigned to _num
DW$130	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num"), DW_AT_symbol_name("_num")
	.dwattr DW$130, DW_AT_type(*DW$T$11)
	.dwattr DW$130, DW_AT_location[DW_OP_reg0]
        LCR       #_SelectUart_D        ; |1090| 
        ; call occurs [#_SelectUart_D] ; |1090| 
        MOVB      AL,#228               ; |1093| 
        LCR       #_TransmitByte        ; |1093| 
        ; call occurs [#_TransmitByte] ; |1093| 
        MOVB      AL,#9                 ; |1095| 
        LCR       #_TransmitByte        ; |1095| 
        ; call occurs [#_TransmitByte] ; |1095| 
        LCR       #_DeselectUart_D      ; |1096| 
        ; call occurs [#_DeselectUart_D] ; |1096| 
	.dwpsn	"spi.c",1097,1
        LRETR
        ; return occurs
	.dwattr DW$129, DW_AT_end_file("spi.c")
	.dwattr DW$129, DW_AT_end_line(0x449)
	.dwattr DW$129, DW_AT_end_column(0x01)
	.dwendtag DW$129

	.sect	".text"
	.global	_WaitforUartTxComplete_D

DW$131	.dwtag  DW_TAG_subprogram, DW_AT_name("WaitforUartTxComplete_D"), DW_AT_symbol_name("_WaitforUartTxComplete_D")
	.dwattr DW$131, DW_AT_low_pc(_WaitforUartTxComplete_D)
	.dwattr DW$131, DW_AT_high_pc(0x00)
	.dwattr DW$131, DW_AT_begin_file("spi.c")
	.dwattr DW$131, DW_AT_begin_line(0x44b)
	.dwattr DW$131, DW_AT_begin_column(0x06)
	.dwattr DW$131, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$131, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",1100,1

;***************************************************************
;* FNAME: _WaitforUartTxComplete_D      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WaitforUartTxComplete_D:
        MOVW      DP,#_timers+40
	.dwpsn	"spi.c",1104,0
        MOV       @_timers+40,#4        ; |1103| 
L39:    
DW$L$_WaitforUartTxComplete_D$2$B:
	.dwpsn	"spi.c",1105,0
        LCR       #_ReadDataFromUart_D  ; |1106| 
        ; call occurs [#_ReadDataFromUart_D] ; |1106| 
        MOVW      DP,#_settings
        AND       AL,AL,#0x4000         ; |1108| 
        MOV       @_settings,#1         ; |1107| 
        BF        L40,NEQ               ; |1108| 
        ; branchcc occurs ; |1108| 
DW$L$_WaitforUartTxComplete_D$2$E:
DW$L$_WaitforUartTxComplete_D$3$B:
        MOVW      DP,#_timers+40
        MOV       AL,@_timers+40        ; |1108| 
	.dwpsn	"spi.c",1108,0
        BF        L39,NEQ               ; |1108| 
        ; branchcc occurs ; |1108| 
DW$L$_WaitforUartTxComplete_D$3$E:
L40:    
	.dwpsn	"spi.c",1109,1
        LRETR
        ; return occurs

DW$132	.dwtag  DW_TAG_loop
	.dwattr DW$132, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\spi.asm:L39:1:1471518992")
	.dwattr DW$132, DW_AT_begin_file("spi.c")
	.dwattr DW$132, DW_AT_begin_line(0x450)
	.dwattr DW$132, DW_AT_end_line(0x454)
DW$133	.dwtag  DW_TAG_loop_range
	.dwattr DW$133, DW_AT_low_pc(DW$L$_WaitforUartTxComplete_D$2$B)
	.dwattr DW$133, DW_AT_high_pc(DW$L$_WaitforUartTxComplete_D$2$E)
DW$134	.dwtag  DW_TAG_loop_range
	.dwattr DW$134, DW_AT_low_pc(DW$L$_WaitforUartTxComplete_D$3$B)
	.dwattr DW$134, DW_AT_high_pc(DW$L$_WaitforUartTxComplete_D$3$E)
	.dwendtag DW$132

	.dwattr DW$131, DW_AT_end_file("spi.c")
	.dwattr DW$131, DW_AT_end_line(0x455)
	.dwattr DW$131, DW_AT_end_column(0x01)
	.dwendtag DW$131

	.sect	".text"
	.global	_WriteBytetoUart_D

DW$135	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteBytetoUart_D"), DW_AT_symbol_name("_WriteBytetoUart_D")
	.dwattr DW$135, DW_AT_low_pc(_WriteBytetoUart_D)
	.dwattr DW$135, DW_AT_high_pc(0x00)
	.dwattr DW$135, DW_AT_begin_file("spi.c")
	.dwattr DW$135, DW_AT_begin_line(0x458)
	.dwattr DW$135, DW_AT_begin_column(0x06)
	.dwattr DW$135, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$135, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",1113,1

;***************************************************************
;* FNAME: _WriteBytetoUart_D            FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_WriteBytetoUart_D:
;* AL    assigned to _databyte
DW$136	.dwtag  DW_TAG_formal_parameter, DW_AT_name("databyte"), DW_AT_symbol_name("_databyte")
	.dwattr DW$136, DW_AT_type(*DW$T$11)
	.dwattr DW$136, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVW      DP,#_timers+40
        MOVZ      AR1,AL                ; |1113| 
	.dwpsn	"spi.c",1117,0
        MOV       @_timers+40,#4        ; |1116| 
L41:    
DW$L$_WriteBytetoUart_D$2$B:
	.dwpsn	"spi.c",1118,0
        LCR       #_ReadDataFromUart_D  ; |1119| 
        ; call occurs [#_ReadDataFromUart_D] ; |1119| 
        MOVW      DP,#_settings
        AND       AL,AL,#0x4000         ; |1121| 
        MOV       @_settings,#1         ; |1120| 
        BF        L42,NEQ               ; |1121| 
        ; branchcc occurs ; |1121| 
DW$L$_WriteBytetoUart_D$2$E:
DW$L$_WriteBytetoUart_D$3$B:
        MOVW      DP,#_timers+40
        MOV       AL,@_timers+40        ; |1121| 
	.dwpsn	"spi.c",1121,0
        BF        L41,NEQ               ; |1121| 
        ; branchcc occurs ; |1121| 
DW$L$_WriteBytetoUart_D$3$E:
L42:    
        MOVW      DP,#_timers+40
        MOV       AL,@_timers+40        ; |1122| 
        BF        L43,NEQ               ; |1122| 
        ; branchcc occurs ; |1122| 
        LCR       #_WriteUartConfig_D   ; |1124| 
        ; call occurs [#_WriteUartConfig_D] ; |1124| 
L43:    
        LCR       #_SelectUart_D        ; |1126| 
        ; call occurs [#_SelectUart_D] ; |1126| 
        MOVB      AL,#128               ; |1128| 
        LCR       #_TransmitByte        ; |1128| 
        ; call occurs [#_TransmitByte] ; |1128| 
        MOV       AL,AR1                ; |1129| 
        LCR       #_TransmitByte        ; |1129| 
        ; call occurs [#_TransmitByte] ; |1129| 
        LCR       #_DeselectUart_D      ; |1130| 
        ; call occurs [#_DeselectUart_D] ; |1130| 
        MOVL      XAR1,*--SP
	.dwpsn	"spi.c",1131,1
        LRETR
        ; return occurs

DW$137	.dwtag  DW_TAG_loop
	.dwattr DW$137, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\spi.asm:L41:1:1471518992")
	.dwattr DW$137, DW_AT_begin_file("spi.c")
	.dwattr DW$137, DW_AT_begin_line(0x45d)
	.dwattr DW$137, DW_AT_end_line(0x461)
DW$138	.dwtag  DW_TAG_loop_range
	.dwattr DW$138, DW_AT_low_pc(DW$L$_WriteBytetoUart_D$2$B)
	.dwattr DW$138, DW_AT_high_pc(DW$L$_WriteBytetoUart_D$2$E)
DW$139	.dwtag  DW_TAG_loop_range
	.dwattr DW$139, DW_AT_low_pc(DW$L$_WriteBytetoUart_D$3$B)
	.dwattr DW$139, DW_AT_high_pc(DW$L$_WriteBytetoUart_D$3$E)
	.dwendtag DW$137

	.dwattr DW$135, DW_AT_end_file("spi.c")
	.dwattr DW$135, DW_AT_end_line(0x46b)
	.dwattr DW$135, DW_AT_end_column(0x01)
	.dwendtag DW$135

	.sect	".text"
	.global	_ReadDataFromUart_D

DW$140	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadDataFromUart_D"), DW_AT_symbol_name("_ReadDataFromUart_D")
	.dwattr DW$140, DW_AT_low_pc(_ReadDataFromUart_D)
	.dwattr DW$140, DW_AT_high_pc(0x00)
	.dwattr DW$140, DW_AT_begin_file("spi.c")
	.dwattr DW$140, DW_AT_begin_line(0x46e)
	.dwattr DW$140, DW_AT_begin_column(0x0e)
	.dwattr DW$140, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$140, DW_AT_skeletal(0x01)
	.dwpsn	"spi.c",1135,1

;***************************************************************
;* FNAME: _ReadDataFromUart_D           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadDataFromUart_D:
        LCR       #_SelectUart_D        ; |1140| 
        ; call occurs [#_SelectUart_D] ; |1140| 
        LCR       #_ReceiveByteUART     ; |1142| 
        ; call occurs [#_ReceiveByteUART] ; |1142| 
        MOV       AH,AL                 ; |1142| 
        LCR       #_ReceiveByteUART     ; |1143| 
        ; call occurs [#_ReceiveByteUART] ; |1143| 
        MOVZ      AR6,AL                ; |1143| 
        MOV       ACC,AH << #8          ; |1144| 
        ADD       AR6,AL                ; |1144| 
        LCR       #_DeselectUart_D      ; |1145| 
        ; call occurs [#_DeselectUart_D] ; |1145| 
        MOV       AL,AR6                ; |1146| 
	.dwpsn	"spi.c",1147,1
        LRETR
        ; return occurs
	.dwattr DW$140, DW_AT_end_file("spi.c")
	.dwattr DW$140, DW_AT_end_line(0x47b)
	.dwattr DW$140, DW_AT_end_column(0x01)
	.dwendtag DW$140

;***************************************************************
;* FAR STRINGS                                                 *
;***************************************************************
	.sect	".econst"
	.align	2
FSL1:	.string	"Code - WriteClockData",13,10,0
	.align	2
FSL2:	.string	"Code - WriteYrMnthData",13,10,0
	.align	2
FSL3:	.string	"Code - WriteDateHrsData",13,10,0
	.align	2
FSL4:	.string	"Code - WriteMinsSecsData",13,10,0
;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_DebugStringOut
	.global	_NOPDelay
	.global	_DateTimetoInt
	.global	_SaveTimetoFram
	.global	_BuildTimeStamp
	.global	_ClearAlarmEvent
	.global	_settings
	.global	_safe1
	.global	_safe2
	.global	_xtswplusanacal
	.global	_clocktime
	.global	_timers
	.global	_config
	.global	_gpb
	.global	_gpf
	.global	_receiveC
	.global	_sdsettings
	.global	_alarms
	.global	_firmware

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

DW$T$80	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$80, DW_AT_language(DW_LANG_C)
DW$141	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$79)
	.dwendtag DW$T$80


DW$T$82	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$82, DW_AT_language(DW_LANG_C)
DW$142	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$82


DW$T$84	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$84, DW_AT_language(DW_LANG_C)

DW$T$87	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$87, DW_AT_language(DW_LANG_C)
DW$143	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$144	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$86)
DW$145	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$87


DW$T$89	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$89, DW_AT_language(DW_LANG_C)
DW$146	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$147	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$148	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$86)
DW$149	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$89


DW$T$91	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$91, DW_AT_language(DW_LANG_C)
DW$150	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$151	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$91


DW$T$94	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$94, DW_AT_language(DW_LANG_C)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)
DW$T$86	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$86, DW_AT_address_class(0x16)

DW$T$95	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$95, DW_AT_language(DW_LANG_C)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)

DW$T$100	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$100, DW_AT_language(DW_LANG_C)
DW$T$103	.dwtag  DW_TAG_typedef, DW_AT_name("settingsstruct"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$103, DW_AT_language(DW_LANG_C)
DW$T$104	.dwtag  DW_TAG_typedef, DW_AT_name("safestruct1struct"), DW_AT_type(*DW$T$24)
	.dwattr DW$T$104, DW_AT_language(DW_LANG_C)
DW$T$106	.dwtag  DW_TAG_typedef, DW_AT_name("safestruct2struct"), DW_AT_type(*DW$T$37)
	.dwattr DW$T$106, DW_AT_language(DW_LANG_C)
DW$T$108	.dwtag  DW_TAG_typedef, DW_AT_name("xtswplusanastruct"), DW_AT_type(*DW$T$38)
	.dwattr DW$T$108, DW_AT_language(DW_LANG_C)
DW$T$110	.dwtag  DW_TAG_typedef, DW_AT_name("clockstruct"), DW_AT_type(*DW$T$39)
	.dwattr DW$T$110, DW_AT_language(DW_LANG_C)
DW$152	.dwtag  DW_TAG_far_type
	.dwattr DW$152, DW_AT_type(*DW$T$111)
DW$T$112	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$112, DW_AT_type(*DW$152)
DW$T$114	.dwtag  DW_TAG_typedef, DW_AT_name("configstruct"), DW_AT_type(*DW$T$47)
	.dwattr DW$T$114, DW_AT_language(DW_LANG_C)
DW$153	.dwtag  DW_TAG_far_type
	.dwattr DW$153, DW_AT_type(*DW$T$115)
DW$T$116	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$116, DW_AT_type(*DW$153)
DW$154	.dwtag  DW_TAG_far_type
	.dwattr DW$154, DW_AT_type(*DW$T$119)
DW$T$120	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$120, DW_AT_type(*DW$154)
DW$T$79	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$55)
	.dwattr DW$T$79, DW_AT_address_class(0x16)
DW$T$123	.dwtag  DW_TAG_typedef, DW_AT_name("uartreadC"), DW_AT_type(*DW$T$56)
	.dwattr DW$T$123, DW_AT_language(DW_LANG_C)
DW$T$124	.dwtag  DW_TAG_typedef, DW_AT_name("sdsettingsstruct"), DW_AT_type(*DW$T$58)
	.dwattr DW$T$124, DW_AT_language(DW_LANG_C)
DW$T$126	.dwtag  DW_TAG_typedef, DW_AT_name("alarmsstruct"), DW_AT_type(*DW$T$59)
	.dwattr DW$T$126, DW_AT_language(DW_LANG_C)
DW$T$128	.dwtag  DW_TAG_typedef, DW_AT_name("firmwarestruct"), DW_AT_type(*DW$T$60)
	.dwattr DW$T$128, DW_AT_language(DW_LANG_C)
DW$155	.dwtag  DW_TAG_far_type
	.dwattr DW$155, DW_AT_type(*DW$T$76)
DW$T$130	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$130, DW_AT_type(*DW$155)
DW$T$132	.dwtag  DW_TAG_typedef, DW_AT_name("flashaddrstruct"), DW_AT_type(*DW$T$77)
	.dwattr DW$T$132, DW_AT_language(DW_LANG_C)
DW$T$133	.dwtag  DW_TAG_typedef, DW_AT_name("flashflags"), DW_AT_type(*DW$T$78)
	.dwattr DW$T$133, DW_AT_language(DW_LANG_C)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("tag_settingsstruct")
	.dwattr DW$T$20, DW_AT_byte_size(0x24)
DW$156	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$156, DW_AT_name("watchdog"), DW_AT_symbol_name("_watchdog")
	.dwattr DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$156, DW_AT_accessibility(DW_ACCESS_public)
DW$157	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$157, DW_AT_name("ledflashflag"), DW_AT_symbol_name("_ledflashflag")
	.dwattr DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$157, DW_AT_accessibility(DW_ACCESS_public)
DW$158	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$158, DW_AT_name("updatesafe"), DW_AT_symbol_name("_updatesafe")
	.dwattr DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$158, DW_AT_accessibility(DW_ACCESS_public)
DW$159	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$159, DW_AT_name("tableconfigtype"), DW_AT_symbol_name("_tableconfigtype")
	.dwattr DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$159, DW_AT_accessibility(DW_ACCESS_public)
DW$160	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$160, DW_AT_name("caltableconfigtype"), DW_AT_symbol_name("_caltableconfigtype")
	.dwattr DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$160, DW_AT_accessibility(DW_ACCESS_public)
DW$161	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$161, DW_AT_name("eventmsgid"), DW_AT_symbol_name("_eventmsgid")
	.dwattr DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$161, DW_AT_accessibility(DW_ACCESS_public)
DW$162	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$162, DW_AT_name("configoperationcomplete"), DW_AT_symbol_name("_configoperationcomplete")
	.dwattr DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$162, DW_AT_accessibility(DW_ACCESS_public)
DW$163	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$163, DW_AT_name("sdcarderr"), DW_AT_symbol_name("_sdcarderr")
	.dwattr DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$163, DW_AT_accessibility(DW_ACCESS_public)
DW$164	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$164, DW_AT_name("sderase"), DW_AT_symbol_name("_sderase")
	.dwattr DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$164, DW_AT_accessibility(DW_ACCESS_public)
DW$165	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$165, DW_AT_name("sdreinit"), DW_AT_symbol_name("_sdreinit")
	.dwattr DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$165, DW_AT_accessibility(DW_ACCESS_public)
DW$166	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$166, DW_AT_name("sdcardupdate"), DW_AT_symbol_name("_sdcardupdate")
	.dwattr DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$166, DW_AT_accessibility(DW_ACCESS_public)
DW$167	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$167, DW_AT_name("cardreadflag"), DW_AT_symbol_name("_cardreadflag")
	.dwattr DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$167, DW_AT_accessibility(DW_ACCESS_public)
DW$168	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$168, DW_AT_name("ignore"), DW_AT_symbol_name("_ignore")
	.dwattr DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$168, DW_AT_accessibility(DW_ACCESS_public)
DW$169	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$169, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$169, DW_AT_accessibility(DW_ACCESS_public)
DW$170	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$170, DW_AT_name("spiinuse"), DW_AT_symbol_name("_spiinuse")
	.dwattr DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$170, DW_AT_accessibility(DW_ACCESS_public)
DW$171	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$171, DW_AT_name("dcpeakhold"), DW_AT_symbol_name("_dcpeakhold")
	.dwattr DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$171, DW_AT_accessibility(DW_ACCESS_public)
DW$172	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$172, DW_AT_name("dcpause"), DW_AT_symbol_name("_dcpause")
	.dwattr DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$172, DW_AT_accessibility(DW_ACCESS_public)
DW$173	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$173, DW_AT_name("mastermode"), DW_AT_symbol_name("_mastermode")
	.dwattr DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$173, DW_AT_accessibility(DW_ACCESS_public)
DW$174	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$174, DW_AT_name("updatescaling"), DW_AT_symbol_name("_updatescaling")
	.dwattr DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$174, DW_AT_accessibility(DW_ACCESS_public)
DW$175	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$175, DW_AT_name("forwardasternflag"), DW_AT_symbol_name("_forwardasternflag")
	.dwattr DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$175, DW_AT_accessibility(DW_ACCESS_public)
DW$176	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$176, DW_AT_name("initprogress"), DW_AT_symbol_name("_initprogress")
	.dwattr DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$176, DW_AT_accessibility(DW_ACCESS_public)
DW$177	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$177, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$177, DW_AT_accessibility(DW_ACCESS_public)
DW$178	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$178, DW_AT_name("slowdowncounter"), DW_AT_symbol_name("_slowdowncounter")
	.dwattr DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$178, DW_AT_accessibility(DW_ACCESS_public)
DW$179	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$179, DW_AT_name("slowdowncondition"), DW_AT_symbol_name("_slowdowncondition")
	.dwattr DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$179, DW_AT_accessibility(DW_ACCESS_public)
DW$180	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$180, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$180, DW_AT_accessibility(DW_ACCESS_public)
DW$181	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$181, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$181, DW_AT_accessibility(DW_ACCESS_public)
DW$182	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$182, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$182, DW_AT_accessibility(DW_ACCESS_public)
DW$183	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$183, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$183, DW_AT_accessibility(DW_ACCESS_public)
DW$184	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$184, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$184, DW_AT_accessibility(DW_ACCESS_public)
DW$185	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$185, DW_AT_name("temperaturealarm"), DW_AT_symbol_name("_temperaturealarm")
	.dwattr DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$185, DW_AT_accessibility(DW_ACCESS_public)
DW$186	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$186, DW_AT_name("temperatureslowdown"), DW_AT_symbol_name("_temperatureslowdown")
	.dwattr DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$186, DW_AT_accessibility(DW_ACCESS_public)
DW$187	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$187, DW_AT_name("anadebug"), DW_AT_symbol_name("_anadebug")
	.dwattr DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$187, DW_AT_accessibility(DW_ACCESS_public)
DW$188	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$188, DW_AT_name("serialdebug"), DW_AT_symbol_name("_serialdebug")
	.dwattr DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr DW$188, DW_AT_accessibility(DW_ACCESS_public)
DW$189	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$189, DW_AT_name("timerrunning"), DW_AT_symbol_name("_timerrunning")
	.dwattr DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$189, DW_AT_accessibility(DW_ACCESS_public)
DW$190	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$190, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$190, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_name("tag_safestruct1struct")
	.dwattr DW$T$24, DW_AT_byte_size(0x1f)
DW$191	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$191, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$191, DW_AT_accessibility(DW_ACCESS_public)
DW$192	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$192, DW_AT_name("watchdog"), DW_AT_symbol_name("_watchdog")
	.dwattr DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$192, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$37, DW_AT_name("tag_safestruct2struct")
	.dwattr DW$T$37, DW_AT_byte_size(0x1e)
DW$193	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$193, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$193, DW_AT_accessibility(DW_ACCESS_public)
DW$194	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$194, DW_AT_name("log"), DW_AT_symbol_name("_log")
	.dwattr DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$194, DW_AT_accessibility(DW_ACCESS_public)
DW$195	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$195, DW_AT_name("modbus"), DW_AT_symbol_name("_modbus")
	.dwattr DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$195, DW_AT_accessibility(DW_ACCESS_public)
DW$196	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$196, DW_AT_name("filter"), DW_AT_symbol_name("_filter")
	.dwattr DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$196, DW_AT_accessibility(DW_ACCESS_public)
DW$197	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$197, DW_AT_name("alarms"), DW_AT_symbol_name("_alarms")
	.dwattr DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$197, DW_AT_accessibility(DW_ACCESS_public)
DW$198	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$198, DW_AT_name("modbusbaud"), DW_AT_symbol_name("_modbusbaud")
	.dwattr DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$198, DW_AT_accessibility(DW_ACCESS_public)
DW$199	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$199, DW_AT_name("modbus2"), DW_AT_symbol_name("_modbus2")
	.dwattr DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$199, DW_AT_accessibility(DW_ACCESS_public)
DW$200	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$200, DW_AT_name("sync"), DW_AT_symbol_name("_sync")
	.dwattr DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$200, DW_AT_accessibility(DW_ACCESS_public)
DW$201	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$201, DW_AT_name("alarmenable"), DW_AT_symbol_name("_alarmenable")
	.dwattr DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$201, DW_AT_accessibility(DW_ACCESS_public)
DW$202	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$202, DW_AT_name("trendmax"), DW_AT_symbol_name("_trendmax")
	.dwattr DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$202, DW_AT_accessibility(DW_ACCESS_public)
DW$203	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$203, DW_AT_name("tempcomp"), DW_AT_symbol_name("_tempcomp")
	.dwattr DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$203, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$37


DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_name("tag_xtswplusanastruct")
	.dwattr DW$T$38, DW_AT_byte_size(0x0e)
DW$204	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$204, DW_AT_name("analog18ma"), DW_AT_symbol_name("_analog18ma")
	.dwattr DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$204, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38


DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$39, DW_AT_name("tag_clockstruct")
	.dwattr DW$T$39, DW_AT_byte_size(0x0e)
DW$205	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$205, DW_AT_name("WPstate"), DW_AT_symbol_name("_WPstate")
	.dwattr DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$205, DW_AT_accessibility(DW_ACCESS_public)
DW$206	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$206, DW_AT_name("seconds"), DW_AT_symbol_name("_seconds")
	.dwattr DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$206, DW_AT_accessibility(DW_ACCESS_public)
DW$207	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$207, DW_AT_name("minutes"), DW_AT_symbol_name("_minutes")
	.dwattr DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$207, DW_AT_accessibility(DW_ACCESS_public)
DW$208	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$208, DW_AT_name("hours"), DW_AT_symbol_name("_hours")
	.dwattr DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$208, DW_AT_accessibility(DW_ACCESS_public)
DW$209	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$209, DW_AT_name("day"), DW_AT_symbol_name("_day")
	.dwattr DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$209, DW_AT_accessibility(DW_ACCESS_public)
DW$210	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$210, DW_AT_name("date"), DW_AT_symbol_name("_date")
	.dwattr DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$210, DW_AT_accessibility(DW_ACCESS_public)
DW$211	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$211, DW_AT_name("month"), DW_AT_symbol_name("_month")
	.dwattr DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$211, DW_AT_accessibility(DW_ACCESS_public)
DW$212	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$212, DW_AT_name("year"), DW_AT_symbol_name("_year")
	.dwattr DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$212, DW_AT_accessibility(DW_ACCESS_public)
DW$213	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$213, DW_AT_name("control"), DW_AT_symbol_name("_control")
	.dwattr DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$213, DW_AT_accessibility(DW_ACCESS_public)
DW$214	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$214, DW_AT_name("framstamp"), DW_AT_symbol_name("_framstamp")
	.dwattr DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$214, DW_AT_accessibility(DW_ACCESS_public)
DW$215	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$215, DW_AT_name("clockerr"), DW_AT_symbol_name("_clockerr")
	.dwattr DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$215, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39

DW$T$111	.dwtag  DW_TAG_typedef, DW_AT_name("timersstruct"), DW_AT_type(*DW$T$40)
	.dwattr DW$T$111, DW_AT_language(DW_LANG_C)

DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$47, DW_AT_name("tag_configstruct")
	.dwattr DW$T$47, DW_AT_byte_size(0x18)
DW$216	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$216, DW_AT_name("filter"), DW_AT_symbol_name("_filter")
	.dwattr DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$216, DW_AT_accessibility(DW_ACCESS_public)
DW$217	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$217, DW_AT_name("alarmenable"), DW_AT_symbol_name("_alarmenable")
	.dwattr DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$217, DW_AT_accessibility(DW_ACCESS_public)
DW$218	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$43)
	.dwattr DW$218, DW_AT_name("trendmax"), DW_AT_symbol_name("_trendmax")
	.dwattr DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$218, DW_AT_accessibility(DW_ACCESS_public)
DW$219	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$44)
	.dwattr DW$219, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$219, DW_AT_accessibility(DW_ACCESS_public)
DW$220	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$220, DW_AT_name("sdsettings"), DW_AT_symbol_name("_sdsettings")
	.dwattr DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$220, DW_AT_accessibility(DW_ACCESS_public)
DW$221	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$221, DW_AT_name("comms"), DW_AT_symbol_name("_comms")
	.dwattr DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$221, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$47

DW$T$115	.dwtag  DW_TAG_typedef, DW_AT_name("gpbport"), DW_AT_type(*DW$T$50)
	.dwattr DW$T$115, DW_AT_language(DW_LANG_C)
DW$T$119	.dwtag  DW_TAG_typedef, DW_AT_name("gpfport"), DW_AT_type(*DW$T$53)
	.dwattr DW$T$119, DW_AT_language(DW_LANG_C)
DW$T$55	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$55, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$55, DW_AT_byte_size(0x01)

DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$56, DW_AT_name("tag_uartreadC")
	.dwattr DW$T$56, DW_AT_byte_size(0x68)
DW$222	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$222, DW_AT_name("receiveINTR"), DW_AT_symbol_name("_receiveINTR")
	.dwattr DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$222, DW_AT_accessibility(DW_ACCESS_public)
DW$223	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$223, DW_AT_name("currentcharcount"), DW_AT_symbol_name("_currentcharcount")
	.dwattr DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$223, DW_AT_accessibility(DW_ACCESS_public)
DW$224	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$224, DW_AT_name("previouscharcount"), DW_AT_symbol_name("_previouscharcount")
	.dwattr DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$224, DW_AT_accessibility(DW_ACCESS_public)
DW$225	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$54)
	.dwattr DW$225, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$225, DW_AT_accessibility(DW_ACCESS_public)
DW$226	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$55)
	.dwattr DW$226, DW_AT_name("uartcharrx"), DW_AT_symbol_name("_uartcharrx")
	.dwattr DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x67]
	.dwattr DW$226, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$56


DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$58, DW_AT_name("tag_sdsettingsstruct")
	.dwattr DW$T$58, DW_AT_byte_size(0x04)
DW$227	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$227, DW_AT_name("present"), DW_AT_symbol_name("_present")
	.dwattr DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$227, DW_AT_accessibility(DW_ACCESS_public)
DW$228	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$228, DW_AT_name("sequence"), DW_AT_symbol_name("_sequence")
	.dwattr DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$228, DW_AT_accessibility(DW_ACCESS_public)
DW$229	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$229, DW_AT_name("errornum"), DW_AT_symbol_name("_errornum")
	.dwattr DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$229, DW_AT_accessibility(DW_ACCESS_public)
DW$230	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$57)
	.dwattr DW$230, DW_AT_name("readstatus"), DW_AT_symbol_name("_readstatus")
	.dwattr DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$230, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$58


DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$59, DW_AT_name("tag_alarmsstruct")
	.dwattr DW$T$59, DW_AT_byte_size(0x01)
DW$231	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$231, DW_AT_name("slavefailure"), DW_AT_symbol_name("_slavefailure")
	.dwattr DW$231, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$231, DW_AT_accessibility(DW_ACCESS_public)
DW$232	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$232, DW_AT_name("slavefailurelatched"), DW_AT_symbol_name("_slavefailurelatched")
	.dwattr DW$232, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$232, DW_AT_accessibility(DW_ACCESS_public)
DW$233	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$233, DW_AT_name("framfailure"), DW_AT_symbol_name("_framfailure")
	.dwattr DW$233, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$233, DW_AT_accessibility(DW_ACCESS_public)
DW$234	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$234, DW_AT_name("framfailurelatched"), DW_AT_symbol_name("_framfailurelatched")
	.dwattr DW$234, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$234, DW_AT_accessibility(DW_ACCESS_public)
DW$235	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$235, DW_AT_name("pccommsfailure"), DW_AT_symbol_name("_pccommsfailure")
	.dwattr DW$235, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$235, DW_AT_accessibility(DW_ACCESS_public)
DW$236	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$236, DW_AT_name("pccommsfailurelatched"), DW_AT_symbol_name("_pccommsfailurelatched")
	.dwattr DW$236, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$236, DW_AT_accessibility(DW_ACCESS_public)
DW$237	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$237, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$237, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$237, DW_AT_accessibility(DW_ACCESS_public)
DW$238	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$238, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$238, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$238, DW_AT_accessibility(DW_ACCESS_public)
DW$239	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$239, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$239, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$239, DW_AT_accessibility(DW_ACCESS_public)
DW$240	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$240, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$240, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$240, DW_AT_accessibility(DW_ACCESS_public)
DW$241	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$241, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$241, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$241, DW_AT_accessibility(DW_ACCESS_public)
DW$242	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$242, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$242, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$242, DW_AT_accessibility(DW_ACCESS_public)
DW$243	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$243, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$243, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$243, DW_AT_accessibility(DW_ACCESS_public)
DW$244	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$244, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$244, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$244, DW_AT_accessibility(DW_ACCESS_public)
DW$245	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$245, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$245, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$245, DW_AT_accessibility(DW_ACCESS_public)
DW$246	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$246, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$246, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$246, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$59


DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$60, DW_AT_name("tag_firmwarestruct")
	.dwattr DW$T$60, DW_AT_byte_size(0x02)
DW$247	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$247, DW_AT_name("spu2"), DW_AT_symbol_name("_spu2")
	.dwattr DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$247, DW_AT_accessibility(DW_ACCESS_public)
DW$248	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$248, DW_AT_name("spu1"), DW_AT_symbol_name("_spu1")
	.dwattr DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$248, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$60


DW$T$76	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$76, DW_AT_name("SPI_REGS")
	.dwattr DW$T$76, DW_AT_byte_size(0x10)
DW$249	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$62)
	.dwattr DW$249, DW_AT_name("SPICCR"), DW_AT_symbol_name("_SPICCR")
	.dwattr DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$249, DW_AT_accessibility(DW_ACCESS_public)
DW$250	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$64)
	.dwattr DW$250, DW_AT_name("SPICTL"), DW_AT_symbol_name("_SPICTL")
	.dwattr DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$250, DW_AT_accessibility(DW_ACCESS_public)
DW$251	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$66)
	.dwattr DW$251, DW_AT_name("SPISTS"), DW_AT_symbol_name("_SPISTS")
	.dwattr DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$251, DW_AT_accessibility(DW_ACCESS_public)
DW$252	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$252, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$252, DW_AT_accessibility(DW_ACCESS_public)
DW$253	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$253, DW_AT_name("SPIBRR"), DW_AT_symbol_name("_SPIBRR")
	.dwattr DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$253, DW_AT_accessibility(DW_ACCESS_public)
DW$254	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$254, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$254, DW_AT_accessibility(DW_ACCESS_public)
DW$255	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$255, DW_AT_name("SPIRXEMU"), DW_AT_symbol_name("_SPIRXEMU")
	.dwattr DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$255, DW_AT_accessibility(DW_ACCESS_public)
DW$256	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$256, DW_AT_name("SPIRXBUF"), DW_AT_symbol_name("_SPIRXBUF")
	.dwattr DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$256, DW_AT_accessibility(DW_ACCESS_public)
DW$257	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$257, DW_AT_name("SPITXBUF"), DW_AT_symbol_name("_SPITXBUF")
	.dwattr DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$257, DW_AT_accessibility(DW_ACCESS_public)
DW$258	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$258, DW_AT_name("SPIDAT"), DW_AT_symbol_name("_SPIDAT")
	.dwattr DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$258, DW_AT_accessibility(DW_ACCESS_public)
DW$259	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$68)
	.dwattr DW$259, DW_AT_name("SPIFFTX"), DW_AT_symbol_name("_SPIFFTX")
	.dwattr DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$259, DW_AT_accessibility(DW_ACCESS_public)
DW$260	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$70)
	.dwattr DW$260, DW_AT_name("SPIFFRX"), DW_AT_symbol_name("_SPIFFRX")
	.dwattr DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$260, DW_AT_accessibility(DW_ACCESS_public)
DW$261	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$72)
	.dwattr DW$261, DW_AT_name("SPIFFCT"), DW_AT_symbol_name("_SPIFFCT")
	.dwattr DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$261, DW_AT_accessibility(DW_ACCESS_public)
DW$262	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$75)
	.dwattr DW$262, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$262, DW_AT_accessibility(DW_ACCESS_public)
DW$263	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$74)
	.dwattr DW$263, DW_AT_name("SPIPRI"), DW_AT_symbol_name("_SPIPRI")
	.dwattr DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$263, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$76


DW$T$77	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$77, DW_AT_name("tag_addressstruct")
	.dwattr DW$T$77, DW_AT_byte_size(0x04)
DW$264	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$264, DW_AT_name("page"), DW_AT_symbol_name("_page")
	.dwattr DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$264, DW_AT_accessibility(DW_ACCESS_public)
DW$265	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$265, DW_AT_name("byteaddr"), DW_AT_symbol_name("_byteaddr")
	.dwattr DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$265, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$77


DW$T$78	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$78, DW_AT_name("tag_flashflags")
	.dwattr DW$T$78, DW_AT_byte_size(0x04)
DW$266	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$266, DW_AT_name("flash1"), DW_AT_symbol_name("_flash1")
	.dwattr DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$266, DW_AT_accessibility(DW_ACCESS_public)
DW$267	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$267, DW_AT_name("flash2"), DW_AT_symbol_name("_flash2")
	.dwattr DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$267, DW_AT_accessibility(DW_ACCESS_public)
DW$268	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$268, DW_AT_name("flash3"), DW_AT_symbol_name("_flash3")
	.dwattr DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$268, DW_AT_accessibility(DW_ACCESS_public)
DW$269	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$269, DW_AT_name("flash4"), DW_AT_symbol_name("_flash4")
	.dwattr DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$269, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$78


DW$T$21	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$21, DW_AT_byte_size(0x0e)
DW$270	.dwtag  DW_TAG_subrange_type
	.dwattr DW$270, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$21


DW$T$54	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$54, DW_AT_byte_size(0x64)
DW$271	.dwtag  DW_TAG_subrange_type
	.dwattr DW$271, DW_AT_upper_bound(0x63)
	.dwendtag DW$T$54


DW$T$75	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$75, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$75, DW_AT_byte_size(0x02)
DW$272	.dwtag  DW_TAG_subrange_type
	.dwattr DW$272, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$75


DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$19, DW_AT_byte_size(0x02)
DW$273	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$273, DW_AT_name("enb"), DW_AT_symbol_name("_enb")
	.dwattr DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$273, DW_AT_accessibility(DW_ACCESS_public)
DW$274	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$274, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$274, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$19


DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_byte_size(0x1e)
DW$275	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$275, DW_AT_name("chanlowthreshold"), DW_AT_symbol_name("_chanlowthreshold")
	.dwattr DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$275, DW_AT_accessibility(DW_ACCESS_public)
DW$276	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$276, DW_AT_name("chanhighthreshold"), DW_AT_symbol_name("_chanhighthreshold")
	.dwattr DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$276, DW_AT_accessibility(DW_ACCESS_public)
DW$277	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$277, DW_AT_name("chan18ma"), DW_AT_symbol_name("_chan18ma")
	.dwattr DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$277, DW_AT_accessibility(DW_ACCESS_public)
DW$278	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$278, DW_AT_name("notused"), DW_AT_symbol_name("_notused")
	.dwattr DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$278, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$23, DW_AT_byte_size(0x01)
DW$279	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$279, DW_AT_name("enabled"), DW_AT_symbol_name("_enabled")
	.dwattr DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$279, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_byte_size(0x0b)
DW$280	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$280, DW_AT_name("calprtzero"), DW_AT_symbol_name("_calprtzero")
	.dwattr DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$280, DW_AT_accessibility(DW_ACCESS_public)
DW$281	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$281, DW_AT_name("calprtfullscale"), DW_AT_symbol_name("_calprtfullscale")
	.dwattr DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$281, DW_AT_accessibility(DW_ACCESS_public)
DW$282	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$282, DW_AT_name("sensorscalingfactor"), DW_AT_symbol_name("_sensorscalingfactor")
	.dwattr DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$282, DW_AT_accessibility(DW_ACCESS_public)
DW$283	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$283, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$283, DW_AT_accessibility(DW_ACCESS_public)
DW$284	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$284, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$284, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$27, DW_AT_byte_size(0x03)
DW$285	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$285, DW_AT_name("mainrate"), DW_AT_symbol_name("_mainrate")
	.dwattr DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$285, DW_AT_accessibility(DW_ACCESS_public)
DW$286	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$286, DW_AT_name("trendrate"), DW_AT_symbol_name("_trendrate")
	.dwattr DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$286, DW_AT_accessibility(DW_ACCESS_public)
DW$287	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$287, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$287, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_byte_size(0x01)
DW$288	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$288, DW_AT_name("address"), DW_AT_symbol_name("_address")
	.dwattr DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$288, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$29, DW_AT_byte_size(0x02)
DW$289	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$289, DW_AT_name("inputtap"), DW_AT_symbol_name("_inputtap")
	.dwattr DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$289, DW_AT_accessibility(DW_ACCESS_public)
DW$290	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$290, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$290, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$29


DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$30, DW_AT_byte_size(0x03)
DW$291	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$291, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$291, DW_AT_accessibility(DW_ACCESS_public)
DW$292	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$292, DW_AT_name("notused2"), DW_AT_symbol_name("_notused2")
	.dwattr DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$292, DW_AT_accessibility(DW_ACCESS_public)
DW$293	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$293, DW_AT_name("notused3"), DW_AT_symbol_name("_notused3")
	.dwattr DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$293, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30


DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$31, DW_AT_byte_size(0x01)
DW$294	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$294, DW_AT_name("rate"), DW_AT_symbol_name("_rate")
	.dwattr DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$294, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_byte_size(0x02)
DW$295	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$295, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$295, DW_AT_accessibility(DW_ACCESS_public)
DW$296	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$296, DW_AT_name("notused2"), DW_AT_symbol_name("_notused2")
	.dwattr DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$296, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$33, DW_AT_byte_size(0x04)
DW$297	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$297, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$297, DW_AT_accessibility(DW_ACCESS_public)
DW$298	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$298, DW_AT_name("notused2"), DW_AT_symbol_name("_notused2")
	.dwattr DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$298, DW_AT_accessibility(DW_ACCESS_public)
DW$299	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$299, DW_AT_name("notused3"), DW_AT_symbol_name("_notused3")
	.dwattr DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$299, DW_AT_accessibility(DW_ACCESS_public)
DW$300	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$300, DW_AT_name("notused4"), DW_AT_symbol_name("_notused4")
	.dwattr DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$300, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$34, DW_AT_byte_size(0x01)
DW$301	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$301, DW_AT_name("bitmap"), DW_AT_symbol_name("_bitmap")
	.dwattr DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$301, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34


DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$35, DW_AT_byte_size(0x01)
DW$302	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$302, DW_AT_name("graphvalue"), DW_AT_symbol_name("_graphvalue")
	.dwattr DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$302, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35


DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$36, DW_AT_byte_size(0x01)
DW$303	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$303, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$303, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$36


DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$40, DW_AT_name("tag_timers")
	.dwattr DW$T$40, DW_AT_byte_size(0x4c)
DW$304	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$304, DW_AT_name("update"), DW_AT_symbol_name("_update")
	.dwattr DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$304, DW_AT_accessibility(DW_ACCESS_public)
DW$305	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$305, DW_AT_name("general"), DW_AT_symbol_name("_general")
	.dwattr DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$305, DW_AT_accessibility(DW_ACCESS_public)
DW$306	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$306, DW_AT_name("rxcharTimeout"), DW_AT_symbol_name("_rxcharTimeout")
	.dwattr DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$306, DW_AT_accessibility(DW_ACCESS_public)
DW$307	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$307, DW_AT_name("wiorxtimeout"), DW_AT_symbol_name("_wiorxtimeout")
	.dwattr DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$307, DW_AT_accessibility(DW_ACCESS_public)
DW$308	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$308, DW_AT_name("wiomasterrxtimeout"), DW_AT_symbol_name("_wiomasterrxtimeout")
	.dwattr DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$308, DW_AT_accessibility(DW_ACCESS_public)
DW$309	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$309, DW_AT_name("masterrxtimeout"), DW_AT_symbol_name("_masterrxtimeout")
	.dwattr DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$309, DW_AT_accessibility(DW_ACCESS_public)
DW$310	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$310, DW_AT_name("slaverxtimeout"), DW_AT_symbol_name("_slaverxtimeout")
	.dwattr DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$310, DW_AT_accessibility(DW_ACCESS_public)
DW$311	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$311, DW_AT_name("sectick"), DW_AT_symbol_name("_sectick")
	.dwattr DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$311, DW_AT_accessibility(DW_ACCESS_public)
DW$312	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$312, DW_AT_name("ledflash"), DW_AT_symbol_name("_ledflash")
	.dwattr DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$312, DW_AT_accessibility(DW_ACCESS_public)
DW$313	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$313, DW_AT_name("prtsettle"), DW_AT_symbol_name("_prtsettle")
	.dwattr DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$313, DW_AT_accessibility(DW_ACCESS_public)
DW$314	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$314, DW_AT_name("chantimeout"), DW_AT_symbol_name("_chantimeout")
	.dwattr DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$314, DW_AT_accessibility(DW_ACCESS_public)
DW$315	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$315, DW_AT_name("chanwait"), DW_AT_symbol_name("_chanwait")
	.dwattr DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$315, DW_AT_accessibility(DW_ACCESS_public)
DW$316	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$316, DW_AT_name("pcrxtimeout"), DW_AT_symbol_name("_pcrxtimeout")
	.dwattr DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$316, DW_AT_accessibility(DW_ACCESS_public)
DW$317	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$317, DW_AT_name("pctxtimeout"), DW_AT_symbol_name("_pctxtimeout")
	.dwattr DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$317, DW_AT_accessibility(DW_ACCESS_public)
DW$318	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$318, DW_AT_name("spistatus"), DW_AT_symbol_name("_spistatus")
	.dwattr DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$318, DW_AT_accessibility(DW_ACCESS_public)
DW$319	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$319, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$319, DW_AT_accessibility(DW_ACCESS_public)
DW$320	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$320, DW_AT_name("slaverqst"), DW_AT_symbol_name("_slaverqst")
	.dwattr DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$320, DW_AT_accessibility(DW_ACCESS_public)
DW$321	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$321, DW_AT_name("mastermodebutton"), DW_AT_symbol_name("_mastermodebutton")
	.dwattr DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$321, DW_AT_accessibility(DW_ACCESS_public)
DW$322	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$322, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$322, DW_AT_accessibility(DW_ACCESS_public)
DW$323	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$323, DW_AT_name("calibrate"), DW_AT_symbol_name("_calibrate")
	.dwattr DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$323, DW_AT_accessibility(DW_ACCESS_public)
DW$324	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$324, DW_AT_name("calibrate2"), DW_AT_symbol_name("_calibrate2")
	.dwattr DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$324, DW_AT_accessibility(DW_ACCESS_public)
DW$325	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$325, DW_AT_name("alarmreflash"), DW_AT_symbol_name("_alarmreflash")
	.dwattr DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$325, DW_AT_accessibility(DW_ACCESS_public)
DW$326	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$326, DW_AT_name("slowdownreflash"), DW_AT_symbol_name("_slowdownreflash")
	.dwattr DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr DW$326, DW_AT_accessibility(DW_ACCESS_public)
DW$327	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$327, DW_AT_name("wiorqst"), DW_AT_symbol_name("_wiorqst")
	.dwattr DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$327, DW_AT_accessibility(DW_ACCESS_public)
DW$328	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$328, DW_AT_name("rpmtimeout"), DW_AT_symbol_name("_rpmtimeout")
	.dwattr DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr DW$328, DW_AT_accessibility(DW_ACCESS_public)
DW$329	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$329, DW_AT_name("analogoor"), DW_AT_symbol_name("_analogoor")
	.dwattr DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$329, DW_AT_accessibility(DW_ACCESS_public)
DW$330	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$330, DW_AT_name("motioncal"), DW_AT_symbol_name("_motioncal")
	.dwattr DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr DW$330, DW_AT_accessibility(DW_ACCESS_public)
DW$331	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$331, DW_AT_name("framcheck"), DW_AT_symbol_name("_framcheck")
	.dwattr DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$331, DW_AT_accessibility(DW_ACCESS_public)
DW$332	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$332, DW_AT_name("pcmodbus"), DW_AT_symbol_name("_pcmodbus")
	.dwattr DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr DW$332, DW_AT_accessibility(DW_ACCESS_public)
DW$333	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$333, DW_AT_name("statusreflash"), DW_AT_symbol_name("_statusreflash")
	.dwattr DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$333, DW_AT_accessibility(DW_ACCESS_public)
DW$334	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$334, DW_AT_name("prewarn"), DW_AT_symbol_name("_prewarn")
	.dwattr DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$334, DW_AT_accessibility(DW_ACCESS_public)
DW$335	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$335, DW_AT_name("clocktofram"), DW_AT_symbol_name("_clocktofram")
	.dwattr DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr DW$335, DW_AT_accessibility(DW_ACCESS_public)
DW$336	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$336, DW_AT_name("debugrapidfast"), DW_AT_symbol_name("_debugrapidfast")
	.dwattr DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x3f]
	.dwattr DW$336, DW_AT_accessibility(DW_ACCESS_public)
DW$337	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$337, DW_AT_name("debugupdate"), DW_AT_symbol_name("_debugupdate")
	.dwattr DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$337, DW_AT_accessibility(DW_ACCESS_public)
DW$338	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$338, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr DW$338, DW_AT_accessibility(DW_ACCESS_public)
DW$339	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$339, DW_AT_name("startup"), DW_AT_symbol_name("_startup")
	.dwattr DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr DW$339, DW_AT_accessibility(DW_ACCESS_public)
DW$340	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$340, DW_AT_name("analogsettle"), DW_AT_symbol_name("_analogsettle")
	.dwattr DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr DW$340, DW_AT_accessibility(DW_ACCESS_public)
DW$341	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$341, DW_AT_name("reprogram"), DW_AT_symbol_name("_reprogram")
	.dwattr DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr DW$341, DW_AT_accessibility(DW_ACCESS_public)
DW$342	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$342, DW_AT_name("reprogramtimeout"), DW_AT_symbol_name("_reprogramtimeout")
	.dwattr DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr DW$342, DW_AT_accessibility(DW_ACCESS_public)
DW$343	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$343, DW_AT_name("dcmodestayalive"), DW_AT_symbol_name("_dcmodestayalive")
	.dwattr DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$343, DW_AT_accessibility(DW_ACCESS_public)
DW$344	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$344, DW_AT_name("biteventchange"), DW_AT_symbol_name("_biteventchange")
	.dwattr DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr DW$344, DW_AT_accessibility(DW_ACCESS_public)
DW$345	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$345, DW_AT_name("iSensorReplace"), DW_AT_symbol_name("_iSensorReplace")
	.dwattr DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr DW$345, DW_AT_accessibility(DW_ACCESS_public)
DW$346	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$346, DW_AT_name("deltarpm15Delay"), DW_AT_symbol_name("_deltarpm15Delay")
	.dwattr DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr DW$346, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40


DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$41, DW_AT_byte_size(0x01)
DW$347	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$347, DW_AT_name("inputtap"), DW_AT_symbol_name("_inputtap")
	.dwattr DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$347, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$41


DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$42, DW_AT_byte_size(0x01)
DW$348	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$348, DW_AT_name("bitmap"), DW_AT_symbol_name("_bitmap")
	.dwattr DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$348, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$42


DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$43, DW_AT_byte_size(0x01)
DW$349	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$349, DW_AT_name("graphvalue"), DW_AT_symbol_name("_graphvalue")
	.dwattr DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$349, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$43


DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$44, DW_AT_byte_size(0x03)
DW$350	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$350, DW_AT_name("chanlowthreshold"), DW_AT_symbol_name("_chanlowthreshold")
	.dwattr DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$350, DW_AT_accessibility(DW_ACCESS_public)
DW$351	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$351, DW_AT_name("chanhighthreshold"), DW_AT_symbol_name("_chanhighthreshold")
	.dwattr DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$351, DW_AT_accessibility(DW_ACCESS_public)
DW$352	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$352, DW_AT_name("sensorscalingfactor"), DW_AT_symbol_name("_sensorscalingfactor")
	.dwattr DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$352, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$44


DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$45, DW_AT_byte_size(0x02)
DW$353	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$353, DW_AT_name("shortlrate"), DW_AT_symbol_name("_shortlrate")
	.dwattr DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$353, DW_AT_accessibility(DW_ACCESS_public)
DW$354	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$354, DW_AT_name("longlrate"), DW_AT_symbol_name("_longlrate")
	.dwattr DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$354, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$45


DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$46, DW_AT_byte_size(0x10)
DW$355	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$355, DW_AT_name("wiorequest"), DW_AT_symbol_name("_wiorequest")
	.dwattr DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$355, DW_AT_accessibility(DW_ACCESS_public)
DW$356	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$356, DW_AT_name("wiocancelled"), DW_AT_symbol_name("_wiocancelled")
	.dwattr DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$356, DW_AT_accessibility(DW_ACCESS_public)
DW$357	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$357, DW_AT_name("wioreceived"), DW_AT_symbol_name("_wioreceived")
	.dwattr DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$357, DW_AT_accessibility(DW_ACCESS_public)
DW$358	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$358, DW_AT_name("slaverequest"), DW_AT_symbol_name("_slaverequest")
	.dwattr DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$358, DW_AT_accessibility(DW_ACCESS_public)
DW$359	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$359, DW_AT_name("slavereceived"), DW_AT_symbol_name("_slavereceived")
	.dwattr DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$359, DW_AT_accessibility(DW_ACCESS_public)
DW$360	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$360, DW_AT_name("slaveretry"), DW_AT_symbol_name("_slaveretry")
	.dwattr DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$360, DW_AT_accessibility(DW_ACCESS_public)
DW$361	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$361, DW_AT_name("pcrequest"), DW_AT_symbol_name("_pcrequest")
	.dwattr DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$361, DW_AT_accessibility(DW_ACCESS_public)
DW$362	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$362, DW_AT_name("pcreqtimeout"), DW_AT_symbol_name("_pcreqtimeout")
	.dwattr DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$362, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$46


DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$50, DW_AT_name("taggpbport")
	.dwattr DW$T$50, DW_AT_byte_size(0x01)
DW$363	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$363, DW_AT_name("selunion"), DW_AT_symbol_name("_selunion")
	.dwattr DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$363, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$50


DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$53, DW_AT_name("taggpfport")
	.dwattr DW$T$53, DW_AT_byte_size(0x01)
DW$364	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$52)
	.dwattr DW$364, DW_AT_name("selunion"), DW_AT_symbol_name("_selunion")
	.dwattr DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$364, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$53


DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$57, DW_AT_byte_size(0x01)
DW$365	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$365, DW_AT_name("settings"), DW_AT_symbol_name("_settings")
	.dwattr DW$365, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$365, DW_AT_accessibility(DW_ACCESS_public)
DW$366	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$366, DW_AT_name("sensorstatus"), DW_AT_symbol_name("_sensorstatus")
	.dwattr DW$366, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$366, DW_AT_accessibility(DW_ACCESS_public)
DW$367	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$367, DW_AT_name("offsets"), DW_AT_symbol_name("_offsets")
	.dwattr DW$367, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$367, DW_AT_accessibility(DW_ACCESS_public)
DW$368	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$368, DW_AT_name("mantable"), DW_AT_symbol_name("_mantable")
	.dwattr DW$368, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$368, DW_AT_accessibility(DW_ACCESS_public)
DW$369	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$369, DW_AT_name("calibtd"), DW_AT_symbol_name("_calibtd")
	.dwattr DW$369, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$369, DW_AT_accessibility(DW_ACCESS_public)
DW$370	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$370, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$370, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$370, DW_AT_accessibility(DW_ACCESS_public)
DW$371	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$371, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$371, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$371, DW_AT_accessibility(DW_ACCESS_public)
DW$372	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$372, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$372, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$372, DW_AT_accessibility(DW_ACCESS_public)
DW$373	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$373, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$373, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$373, DW_AT_accessibility(DW_ACCESS_public)
DW$374	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$374, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$374, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$374, DW_AT_accessibility(DW_ACCESS_public)
DW$375	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$375, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$375, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$375, DW_AT_accessibility(DW_ACCESS_public)
DW$376	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$376, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$376, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$376, DW_AT_accessibility(DW_ACCESS_public)
DW$377	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$377, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$377, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$377, DW_AT_accessibility(DW_ACCESS_public)
DW$378	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$378, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$378, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$378, DW_AT_accessibility(DW_ACCESS_public)
DW$379	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$379, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$379, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$379, DW_AT_accessibility(DW_ACCESS_public)
DW$380	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$380, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$380, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$380, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$57


DW$T$62	.dwtag  DW_TAG_union_type
	.dwattr DW$T$62, DW_AT_name("SPICCR_REG")
	.dwattr DW$T$62, DW_AT_byte_size(0x01)
DW$381	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$381, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$381, DW_AT_accessibility(DW_ACCESS_public)
DW$382	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$61)
	.dwattr DW$382, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$382, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$62


DW$T$64	.dwtag  DW_TAG_union_type
	.dwattr DW$T$64, DW_AT_name("SPICTL_REG")
	.dwattr DW$T$64, DW_AT_byte_size(0x01)
DW$383	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$383, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$383, DW_AT_accessibility(DW_ACCESS_public)
DW$384	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$63)
	.dwattr DW$384, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$384, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$64


DW$T$66	.dwtag  DW_TAG_union_type
	.dwattr DW$T$66, DW_AT_name("SPISTS_REG")
	.dwattr DW$T$66, DW_AT_byte_size(0x01)
DW$385	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$385, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$385, DW_AT_accessibility(DW_ACCESS_public)
DW$386	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$65)
	.dwattr DW$386, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$386, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$66


DW$T$68	.dwtag  DW_TAG_union_type
	.dwattr DW$T$68, DW_AT_name("SPIFFTX_REG")
	.dwattr DW$T$68, DW_AT_byte_size(0x01)
DW$387	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$387, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$387, DW_AT_accessibility(DW_ACCESS_public)
DW$388	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$67)
	.dwattr DW$388, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$388, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$68


DW$T$70	.dwtag  DW_TAG_union_type
	.dwattr DW$T$70, DW_AT_name("SPIFFRX_REG")
	.dwattr DW$T$70, DW_AT_byte_size(0x01)
DW$389	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$389, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$389, DW_AT_accessibility(DW_ACCESS_public)
DW$390	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$390, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$390, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$70


DW$T$72	.dwtag  DW_TAG_union_type
	.dwattr DW$T$72, DW_AT_name("SPIFFCT_REG")
	.dwattr DW$T$72, DW_AT_byte_size(0x01)
DW$391	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$391, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$391, DW_AT_accessibility(DW_ACCESS_public)
DW$392	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$71)
	.dwattr DW$392, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$392, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$72


DW$T$74	.dwtag  DW_TAG_union_type
	.dwattr DW$T$74, DW_AT_name("SPIPRI_REG")
	.dwattr DW$T$74, DW_AT_byte_size(0x01)
DW$393	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$393, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$393, DW_AT_accessibility(DW_ACCESS_public)
DW$394	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$73)
	.dwattr DW$394, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$394, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$74


DW$T$25	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$25, DW_AT_byte_size(0x04)
DW$395	.dwtag  DW_TAG_subrange_type
	.dwattr DW$395, DW_AT_upper_bound(0x03)
	.dwendtag DW$T$25


DW$T$49	.dwtag  DW_TAG_union_type
	.dwattr DW$T$49, DW_AT_byte_size(0x01)
DW$396	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$396, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$396, DW_AT_accessibility(DW_ACCESS_public)
DW$397	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$397, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$397, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$49


DW$T$52	.dwtag  DW_TAG_union_type
	.dwattr DW$T$52, DW_AT_byte_size(0x01)
DW$398	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$398, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$398, DW_AT_accessibility(DW_ACCESS_public)
DW$399	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$51)
	.dwattr DW$399, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$399, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$52


DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$61, DW_AT_name("SPICCR_BITS")
	.dwattr DW$T$61, DW_AT_byte_size(0x01)
DW$400	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$400, DW_AT_name("SPICHAR"), DW_AT_symbol_name("_SPICHAR")
	.dwattr DW$400, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$400, DW_AT_accessibility(DW_ACCESS_public)
DW$401	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$401, DW_AT_name("SPILBK"), DW_AT_symbol_name("_SPILBK")
	.dwattr DW$401, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$401, DW_AT_accessibility(DW_ACCESS_public)
DW$402	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$402, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$402, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$402, DW_AT_accessibility(DW_ACCESS_public)
DW$403	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$403, DW_AT_name("CLKPOLARITY"), DW_AT_symbol_name("_CLKPOLARITY")
	.dwattr DW$403, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$403, DW_AT_accessibility(DW_ACCESS_public)
DW$404	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$404, DW_AT_name("SPISWRESET"), DW_AT_symbol_name("_SPISWRESET")
	.dwattr DW$404, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$404, DW_AT_accessibility(DW_ACCESS_public)
DW$405	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$405, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$405, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$405, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$61


DW$T$63	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$63, DW_AT_name("SPICTL_BITS")
	.dwattr DW$T$63, DW_AT_byte_size(0x01)
DW$406	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$406, DW_AT_name("SPIINTENA"), DW_AT_symbol_name("_SPIINTENA")
	.dwattr DW$406, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$406, DW_AT_accessibility(DW_ACCESS_public)
DW$407	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$407, DW_AT_name("TALK"), DW_AT_symbol_name("_TALK")
	.dwattr DW$407, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$407, DW_AT_accessibility(DW_ACCESS_public)
DW$408	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$408, DW_AT_name("MASTER_SLAVE"), DW_AT_symbol_name("_MASTER_SLAVE")
	.dwattr DW$408, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$408, DW_AT_accessibility(DW_ACCESS_public)
DW$409	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$409, DW_AT_name("CLK_PHASE"), DW_AT_symbol_name("_CLK_PHASE")
	.dwattr DW$409, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$409, DW_AT_accessibility(DW_ACCESS_public)
DW$410	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$410, DW_AT_name("OVERRUNINTENA"), DW_AT_symbol_name("_OVERRUNINTENA")
	.dwattr DW$410, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$410, DW_AT_accessibility(DW_ACCESS_public)
DW$411	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$411, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$411, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0b)
	.dwattr DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$411, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$63


DW$T$65	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$65, DW_AT_name("SPISTS_BITS")
	.dwattr DW$T$65, DW_AT_byte_size(0x01)
DW$412	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$412, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$412, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x05)
	.dwattr DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$412, DW_AT_accessibility(DW_ACCESS_public)
DW$413	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$413, DW_AT_name("BUFFULL_FLAG"), DW_AT_symbol_name("_BUFFULL_FLAG")
	.dwattr DW$413, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$413, DW_AT_accessibility(DW_ACCESS_public)
DW$414	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$414, DW_AT_name("INT_FLAG"), DW_AT_symbol_name("_INT_FLAG")
	.dwattr DW$414, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$414, DW_AT_accessibility(DW_ACCESS_public)
DW$415	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$415, DW_AT_name("OVERRUN_FLAG"), DW_AT_symbol_name("_OVERRUN_FLAG")
	.dwattr DW$415, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$415, DW_AT_accessibility(DW_ACCESS_public)
DW$416	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$416, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$416, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$416, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$65


DW$T$67	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$67, DW_AT_name("SPIFFTX_BITS")
	.dwattr DW$T$67, DW_AT_byte_size(0x01)
DW$417	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$417, DW_AT_name("TXFFIL"), DW_AT_symbol_name("_TXFFIL")
	.dwattr DW$417, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x05)
	.dwattr DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$417, DW_AT_accessibility(DW_ACCESS_public)
DW$418	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$418, DW_AT_name("TXFFIENA"), DW_AT_symbol_name("_TXFFIENA")
	.dwattr DW$418, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$418, DW_AT_accessibility(DW_ACCESS_public)
DW$419	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$419, DW_AT_name("TXFFINTCLR"), DW_AT_symbol_name("_TXFFINTCLR")
	.dwattr DW$419, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$419, DW_AT_accessibility(DW_ACCESS_public)
DW$420	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$420, DW_AT_name("TXFFINT"), DW_AT_symbol_name("_TXFFINT")
	.dwattr DW$420, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$420, DW_AT_accessibility(DW_ACCESS_public)
DW$421	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$421, DW_AT_name("TXFFST"), DW_AT_symbol_name("_TXFFST")
	.dwattr DW$421, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x05)
	.dwattr DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$421, DW_AT_accessibility(DW_ACCESS_public)
DW$422	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$422, DW_AT_name("TXFIFO"), DW_AT_symbol_name("_TXFIFO")
	.dwattr DW$422, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$422, DW_AT_accessibility(DW_ACCESS_public)
DW$423	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$423, DW_AT_name("SPIFFENA"), DW_AT_symbol_name("_SPIFFENA")
	.dwattr DW$423, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$423, DW_AT_accessibility(DW_ACCESS_public)
DW$424	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$424, DW_AT_name("SPIRST"), DW_AT_symbol_name("_SPIRST")
	.dwattr DW$424, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$424, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$67


DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$69, DW_AT_name("SPIFFRX_BITS")
	.dwattr DW$T$69, DW_AT_byte_size(0x01)
DW$425	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$425, DW_AT_name("RXFFIL"), DW_AT_symbol_name("_RXFFIL")
	.dwattr DW$425, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x05)
	.dwattr DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$425, DW_AT_accessibility(DW_ACCESS_public)
DW$426	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$426, DW_AT_name("RXFFIENA"), DW_AT_symbol_name("_RXFFIENA")
	.dwattr DW$426, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$426, DW_AT_accessibility(DW_ACCESS_public)
DW$427	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$427, DW_AT_name("RXFFINTCLR"), DW_AT_symbol_name("_RXFFINTCLR")
	.dwattr DW$427, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$427, DW_AT_accessibility(DW_ACCESS_public)
DW$428	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$428, DW_AT_name("RXFFINT"), DW_AT_symbol_name("_RXFFINT")
	.dwattr DW$428, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$428, DW_AT_accessibility(DW_ACCESS_public)
DW$429	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$429, DW_AT_name("RXFFST"), DW_AT_symbol_name("_RXFFST")
	.dwattr DW$429, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x05)
	.dwattr DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$429, DW_AT_accessibility(DW_ACCESS_public)
DW$430	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$430, DW_AT_name("RXFIFORESET"), DW_AT_symbol_name("_RXFIFORESET")
	.dwattr DW$430, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$430, DW_AT_accessibility(DW_ACCESS_public)
DW$431	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$431, DW_AT_name("RXFFOVFCLR"), DW_AT_symbol_name("_RXFFOVFCLR")
	.dwattr DW$431, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$431, DW_AT_accessibility(DW_ACCESS_public)
DW$432	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$432, DW_AT_name("RXFFOVF"), DW_AT_symbol_name("_RXFFOVF")
	.dwattr DW$432, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$432, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$69


DW$T$71	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$71, DW_AT_name("SPIFFCT_BITS")
	.dwattr DW$T$71, DW_AT_byte_size(0x01)
DW$433	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$433, DW_AT_name("TXDLY"), DW_AT_symbol_name("_TXDLY")
	.dwattr DW$433, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$433, DW_AT_accessibility(DW_ACCESS_public)
DW$434	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$434, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$434, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$434, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$71


DW$T$73	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$73, DW_AT_name("SPIPRI_BITS")
	.dwattr DW$T$73, DW_AT_byte_size(0x01)
DW$435	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$435, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$435, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$435, DW_AT_accessibility(DW_ACCESS_public)
DW$436	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$436, DW_AT_name("FREE"), DW_AT_symbol_name("_FREE")
	.dwattr DW$436, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$436, DW_AT_accessibility(DW_ACCESS_public)
DW$437	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$437, DW_AT_name("SOFT"), DW_AT_symbol_name("_SOFT")
	.dwattr DW$437, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$437, DW_AT_accessibility(DW_ACCESS_public)
DW$438	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$438, DW_AT_name("PRIORITY"), DW_AT_symbol_name("_PRIORITY")
	.dwattr DW$438, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$438, DW_AT_accessibility(DW_ACCESS_public)
DW$439	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$439, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$439, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x09)
	.dwattr DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$439, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$73


DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$48, DW_AT_byte_size(0x01)
DW$440	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$440, DW_AT_name("s12"), DW_AT_symbol_name("_s12")
	.dwattr DW$440, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$440, DW_AT_accessibility(DW_ACCESS_public)
DW$441	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$441, DW_AT_name("s13"), DW_AT_symbol_name("_s13")
	.dwattr DW$441, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$441, DW_AT_accessibility(DW_ACCESS_public)
DW$442	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$442, DW_AT_name("s14"), DW_AT_symbol_name("_s14")
	.dwattr DW$442, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$442, DW_AT_accessibility(DW_ACCESS_public)
DW$443	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$443, DW_AT_name("s15"), DW_AT_symbol_name("_s15")
	.dwattr DW$443, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$443, DW_AT_accessibility(DW_ACCESS_public)
DW$444	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$444, DW_AT_name("s16"), DW_AT_symbol_name("_s16")
	.dwattr DW$444, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$444, DW_AT_accessibility(DW_ACCESS_public)
DW$445	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$445, DW_AT_name("s17"), DW_AT_symbol_name("_s17")
	.dwattr DW$445, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$445, DW_AT_accessibility(DW_ACCESS_public)
DW$446	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$446, DW_AT_name("s18"), DW_AT_symbol_name("_s18")
	.dwattr DW$446, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$446, DW_AT_accessibility(DW_ACCESS_public)
DW$447	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$447, DW_AT_name("s19"), DW_AT_symbol_name("_s19")
	.dwattr DW$447, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$447, DW_AT_accessibility(DW_ACCESS_public)
DW$448	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$448, DW_AT_name("disp485txen"), DW_AT_symbol_name("_disp485txen")
	.dwattr DW$448, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$448, DW_AT_accessibility(DW_ACCESS_public)
DW$449	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$449, DW_AT_name("disp485rxen"), DW_AT_symbol_name("_disp485rxen")
	.dwattr DW$449, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$449, DW_AT_accessibility(DW_ACCESS_public)
DW$450	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$450, DW_AT_name("gpio1"), DW_AT_symbol_name("_gpio1")
	.dwattr DW$450, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$450, DW_AT_accessibility(DW_ACCESS_public)
DW$451	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$451, DW_AT_name("gpio2"), DW_AT_symbol_name("_gpio2")
	.dwattr DW$451, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$451, DW_AT_accessibility(DW_ACCESS_public)
DW$452	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$452, DW_AT_name("gpio3"), DW_AT_symbol_name("_gpio3")
	.dwattr DW$452, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$452, DW_AT_accessibility(DW_ACCESS_public)
DW$453	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$453, DW_AT_name("gpio4"), DW_AT_symbol_name("_gpio4")
	.dwattr DW$453, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$453, DW_AT_accessibility(DW_ACCESS_public)
DW$454	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$454, DW_AT_name("rtccs"), DW_AT_symbol_name("_rtccs")
	.dwattr DW$454, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$454, DW_AT_accessibility(DW_ACCESS_public)
DW$455	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$455, DW_AT_name("op3"), DW_AT_symbol_name("_op3")
	.dwattr DW$455, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$455, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$48


DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$51, DW_AT_byte_size(0x01)
DW$456	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$456, DW_AT_name("spimo"), DW_AT_symbol_name("_spimo")
	.dwattr DW$456, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$456, DW_AT_accessibility(DW_ACCESS_public)
DW$457	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$457, DW_AT_name("spimi"), DW_AT_symbol_name("_spimi")
	.dwattr DW$457, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$457, DW_AT_accessibility(DW_ACCESS_public)
DW$458	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$458, DW_AT_name("spiclk"), DW_AT_symbol_name("_spiclk")
	.dwattr DW$458, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$458, DW_AT_accessibility(DW_ACCESS_public)
DW$459	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$459, DW_AT_name("spiste"), DW_AT_symbol_name("_spiste")
	.dwattr DW$459, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$459, DW_AT_accessibility(DW_ACCESS_public)
DW$460	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$460, DW_AT_name("scitxa"), DW_AT_symbol_name("_scitxa")
	.dwattr DW$460, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$460, DW_AT_accessibility(DW_ACCESS_public)
DW$461	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$461, DW_AT_name("scirxa"), DW_AT_symbol_name("_scirxa")
	.dwattr DW$461, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$461, DW_AT_accessibility(DW_ACCESS_public)
DW$462	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$462, DW_AT_name("op1"), DW_AT_symbol_name("_op1")
	.dwattr DW$462, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$462, DW_AT_accessibility(DW_ACCESS_public)
DW$463	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$463, DW_AT_name("op2"), DW_AT_symbol_name("_op2")
	.dwattr DW$463, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$463, DW_AT_accessibility(DW_ACCESS_public)
DW$464	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$464, DW_AT_name("spiselect1"), DW_AT_symbol_name("_spiselect1")
	.dwattr DW$464, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$464, DW_AT_accessibility(DW_ACCESS_public)
DW$465	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$465, DW_AT_name("spiselect2"), DW_AT_symbol_name("_spiselect2")
	.dwattr DW$465, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$465, DW_AT_accessibility(DW_ACCESS_public)
DW$466	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$466, DW_AT_name("spiselect3"), DW_AT_symbol_name("_spiselect3")
	.dwattr DW$466, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$466, DW_AT_accessibility(DW_ACCESS_public)
DW$467	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$467, DW_AT_name("pc485rxen"), DW_AT_symbol_name("_pc485rxen")
	.dwattr DW$467, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$467, DW_AT_accessibility(DW_ACCESS_public)
DW$468	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$468, DW_AT_name("pc485txen"), DW_AT_symbol_name("_pc485txen")
	.dwattr DW$468, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$468, DW_AT_accessibility(DW_ACCESS_public)
DW$469	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$469, DW_AT_name("modeselect"), DW_AT_symbol_name("_modeselect")
	.dwattr DW$469, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$469, DW_AT_accessibility(DW_ACCESS_public)
DW$470	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$470, DW_AT_name("xf_xplldis"), DW_AT_symbol_name("_xf_xplldis")
	.dwattr DW$470, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$470, DW_AT_accessibility(DW_ACCESS_public)
DW$471	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$471, DW_AT_name("notused3"), DW_AT_symbol_name("_notused3")
	.dwattr DW$471, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$471, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$51


	.dwattr DW$57, DW_AT_external(0x01)
	.dwattr DW$99, DW_AT_external(0x01)
	.dwattr DW$110, DW_AT_external(0x01)
	.dwattr DW$128, DW_AT_external(0x01)
	.dwattr DW$78, DW_AT_external(0x01)
	.dwattr DW$79, DW_AT_external(0x01)
	.dwattr DW$79, DW_AT_type(*DW$T$10)
	.dwattr DW$80, DW_AT_external(0x01)
	.dwattr DW$27, DW_AT_external(0x01)
	.dwattr DW$41, DW_AT_external(0x01)
	.dwattr DW$51, DW_AT_external(0x01)
	.dwattr DW$52, DW_AT_external(0x01)
	.dwattr DW$122, DW_AT_external(0x01)
	.dwattr DW$122, DW_AT_type(*DW$T$11)
	.dwattr DW$140, DW_AT_external(0x01)
	.dwattr DW$140, DW_AT_type(*DW$T$11)
	.dwattr DW$42, DW_AT_external(0x01)
	.dwattr DW$63, DW_AT_external(0x01)
	.dwattr DW$63, DW_AT_type(*DW$T$11)
	.dwattr DW$84, DW_AT_external(0x01)
	.dwattr DW$71, DW_AT_external(0x01)
	.dwattr DW$81, DW_AT_external(0x01)
	.dwattr DW$105, DW_AT_external(0x01)
	.dwattr DW$105, DW_AT_type(*DW$T$11)
	.dwattr DW$123, DW_AT_external(0x01)
	.dwattr DW$123, DW_AT_type(*DW$T$11)
	.dwattr DW$37, DW_AT_external(0x01)
	.dwattr DW$28, DW_AT_external(0x01)
	.dwattr DW$38, DW_AT_external(0x01)
	.dwattr DW$40, DW_AT_external(0x01)
	.dwattr DW$39, DW_AT_external(0x01)
	.dwattr DW$93, DW_AT_external(0x01)
	.dwattr DW$94, DW_AT_external(0x01)
	.dwattr DW$95, DW_AT_external(0x01)
	.dwattr DW$96, DW_AT_external(0x01)
	.dwattr DW$97, DW_AT_external(0x01)
	.dwattr DW$91, DW_AT_external(0x01)
	.dwattr DW$92, DW_AT_external(0x01)
	.dwattr DW$98, DW_AT_external(0x01)
	.dwattr DW$109, DW_AT_external(0x01)
	.dwattr DW$127, DW_AT_external(0x01)
	.dwattr DW$100, DW_AT_external(0x01)
	.dwattr DW$113, DW_AT_external(0x01)
	.dwattr DW$131, DW_AT_external(0x01)
	.dwattr DW$117, DW_AT_external(0x01)
	.dwattr DW$135, DW_AT_external(0x01)
	.dwattr DW$53, DW_AT_external(0x01)
	.dwattr DW$55, DW_AT_external(0x01)
	.dwattr DW$58, DW_AT_external(0x01)
	.dwattr DW$86, DW_AT_external(0x01)
	.dwattr DW$87, DW_AT_external(0x01)
	.dwattr DW$56, DW_AT_external(0x01)
	.dwattr DW$64, DW_AT_external(0x01)
	.dwattr DW$59, DW_AT_external(0x01)
	.dwattr DW$111, DW_AT_external(0x01)
	.dwattr DW$129, DW_AT_external(0x01)
	.dwattr DW$54, DW_AT_external(0x01)
	.dwattr DW$61, DW_AT_external(0x01)
	.dwattr DW$88, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$472	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$472, DW_AT_location[DW_OP_reg0]
DW$473	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$473, DW_AT_location[DW_OP_reg1]
DW$474	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$474, DW_AT_location[DW_OP_reg2]
DW$475	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$475, DW_AT_location[DW_OP_reg3]
DW$476	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$476, DW_AT_location[DW_OP_reg4]
DW$477	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$477, DW_AT_location[DW_OP_reg5]
DW$478	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$478, DW_AT_location[DW_OP_reg6]
DW$479	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$479, DW_AT_location[DW_OP_reg7]
DW$480	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$480, DW_AT_location[DW_OP_reg8]
DW$481	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$481, DW_AT_location[DW_OP_reg9]
DW$482	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$482, DW_AT_location[DW_OP_reg10]
DW$483	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$483, DW_AT_location[DW_OP_reg11]
DW$484	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$484, DW_AT_location[DW_OP_reg12]
DW$485	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$485, DW_AT_location[DW_OP_reg13]
DW$486	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$486, DW_AT_location[DW_OP_reg14]
DW$487	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$487, DW_AT_location[DW_OP_reg15]
DW$488	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$488, DW_AT_location[DW_OP_reg16]
DW$489	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$489, DW_AT_location[DW_OP_reg17]
DW$490	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$490, DW_AT_location[DW_OP_reg18]
DW$491	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$491, DW_AT_location[DW_OP_reg19]
DW$492	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$492, DW_AT_location[DW_OP_reg20]
DW$493	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$493, DW_AT_location[DW_OP_reg21]
DW$494	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$494, DW_AT_location[DW_OP_reg22]
DW$495	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$495, DW_AT_location[DW_OP_reg23]
DW$496	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$496, DW_AT_location[DW_OP_reg24]
DW$497	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$497, DW_AT_location[DW_OP_reg25]
DW$498	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$498, DW_AT_location[DW_OP_reg26]
DW$499	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$499, DW_AT_location[DW_OP_reg27]
DW$500	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$500, DW_AT_location[DW_OP_reg28]
DW$501	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$501, DW_AT_location[DW_OP_reg29]
DW$502	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$502, DW_AT_location[DW_OP_reg30]
DW$503	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$503, DW_AT_location[DW_OP_reg31]
DW$504	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$504, DW_AT_location[DW_OP_regx 0x20]
DW$505	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$505, DW_AT_location[DW_OP_regx 0x21]
DW$506	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$506, DW_AT_location[DW_OP_regx 0x22]
DW$507	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$507, DW_AT_location[DW_OP_regx 0x23]
DW$508	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$508, DW_AT_location[DW_OP_regx 0x24]
DW$509	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$509, DW_AT_location[DW_OP_regx 0x25]
DW$510	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$510, DW_AT_location[DW_OP_regx 0x26]
DW$511	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$511, DW_AT_location[DW_OP_regx 0x27]
DW$512	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$512, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

