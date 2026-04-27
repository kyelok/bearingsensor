;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Thu Aug 18 12:16:21 2016                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("mmc_mcf.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)
;**************************************************************
;* CINIT RECORDS                                              *
;**************************************************************
	.sect	".cinit"
	.align	1
	.field  	-IR_1,16
	.field  	_MmcDrv+0,32
	.field  	0,16			; _MmcDrv[0]._cs @ 0
	.field  	0,16			; _MmcDrv[0]._use @ 16
	.field  	0,16			; _MmcDrv[0]._active @ 32
	.field  	0,16			; _MmcDrv[0]._initok @ 48
	.field  	0,16			; _MmcDrv[0]._sd @ 64
	.space	16
	.field  	0,32			; _MmcDrv[0]._speed @ 96
	.field  	_carddetectport,32		; _MmcDrv[0]._cd_port @ 128
	.field  	1,32			; _MmcDrv[0]._cd_bit @ 160
	.field  	_wpport,32		; _MmcDrv[0]._wp_port @ 192
	.field  	1,32			; _MmcDrv[0]._wp_bit @ 224
IR_1:	.set	16

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_rxdata+0,32
	.field  	0,32			; _rxdata @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_bitcou+0,32
	.field  	0,32			; _bitcou @ 0


DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("memset"), DW_AT_symbol_name("_memset")
	.dwattr DW$1, DW_AT_type(*DW$T$3)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$80)
	.dwendtag DW$1


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("TransmitByte"), DW_AT_symbol_name("_TransmitByte")
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$5


DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("ReceiveByte"), DW_AT_symbol_name("_ReceiveByte")
	.dwattr DW$7, DW_AT_type(*DW$T$11)
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)

DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadDataFromUart_C"), DW_AT_symbol_name("_ReadDataFromUart_C")
	.dwattr DW$8, DW_AT_type(*DW$T$11)
	.dwattr DW$8, DW_AT_declaration(0x01)
	.dwattr DW$8, DW_AT_external(0x01)

DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("NOPDelay"), DW_AT_symbol_name("_NOPDelay")
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$9

DW$11	.dwtag  DW_TAG_variable, DW_AT_name("gpb"), DW_AT_symbol_name("_gpb")
	.dwattr DW$11, DW_AT_type(*DW$T$135)
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)
DW$12	.dwtag  DW_TAG_variable, DW_AT_name("gpf"), DW_AT_symbol_name("_gpf")
	.dwattr DW$12, DW_AT_type(*DW$T$139)
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)
DW$13	.dwtag  DW_TAG_variable, DW_AT_name("settings"), DW_AT_symbol_name("_settings")
	.dwattr DW$13, DW_AT_type(*DW$T$142)
	.dwattr DW$13, DW_AT_declaration(0x01)
	.dwattr DW$13, DW_AT_external(0x01)
DW$14	.dwtag  DW_TAG_variable, DW_AT_name("timers"), DW_AT_symbol_name("_timers")
	.dwattr DW$14, DW_AT_type(*DW$T$144)
	.dwattr DW$14, DW_AT_declaration(0x01)
	.dwattr DW$14, DW_AT_external(0x01)
DW$15	.dwtag  DW_TAG_variable, DW_AT_name("config"), DW_AT_symbol_name("_config")
	.dwattr DW$15, DW_AT_type(*DW$T$146)
	.dwattr DW$15, DW_AT_declaration(0x01)
	.dwattr DW$15, DW_AT_external(0x01)
DW$16	.dwtag  DW_TAG_variable, DW_AT_name("spiregs"), DW_AT_symbol_name("_spiregs")
	.dwattr DW$16, DW_AT_type(*DW$T$147)
	.dwattr DW$16, DW_AT_declaration(0x01)
	.dwattr DW$16, DW_AT_external(0x01)
DW$17	.dwtag  DW_TAG_variable, DW_AT_name("receiveC"), DW_AT_symbol_name("_receiveC")
	.dwattr DW$17, DW_AT_type(*DW$T$149)
	.dwattr DW$17, DW_AT_declaration(0x01)
	.dwattr DW$17, DW_AT_external(0x01)
_carddetectport:	.usect	".ebss",1,1,0
DW$18	.dwtag  DW_TAG_variable, DW_AT_name("carddetectport"), DW_AT_symbol_name("_carddetectport")
	.dwattr DW$18, DW_AT_type(*DW$T$6)
	.dwattr DW$18, DW_AT_location[DW_OP_addr _carddetectport]
_wpport:	.usect	".ebss",1,1,0
DW$19	.dwtag  DW_TAG_variable, DW_AT_name("wpport"), DW_AT_symbol_name("_wpport")
	.dwattr DW$19, DW_AT_type(*DW$T$6)
	.dwattr DW$19, DW_AT_location[DW_OP_addr _wpport]
	.global	_MmcDrv
_MmcDrv:	.usect	".ebss",16,1,1
DW$20	.dwtag  DW_TAG_variable, DW_AT_name("MmcDrv"), DW_AT_symbol_name("_MmcDrv")
	.dwattr DW$20, DW_AT_location[DW_OP_addr _MmcDrv]
	.dwattr DW$20, DW_AT_type(*DW$T$151)
	.dwattr DW$20, DW_AT_external(0x01)
_g_mmc_type:	.usect	".ebss",66,1,1
DW$21	.dwtag  DW_TAG_variable, DW_AT_name("g_mmc_type"), DW_AT_symbol_name("_g_mmc_type")
	.dwattr DW$21, DW_AT_type(*DW$T$155)
	.dwattr DW$21, DW_AT_location[DW_OP_addr _g_mmc_type]
	.global	_CRCtbl
_CRCtbl:	.usect	".ebss",512,1,1
DW$22	.dwtag  DW_TAG_variable, DW_AT_name("CRCtbl"), DW_AT_symbol_name("_CRCtbl")
	.dwattr DW$22, DW_AT_location[DW_OP_addr _CRCtbl]
	.dwattr DW$22, DW_AT_type(*DW$T$126)
	.dwattr DW$22, DW_AT_external(0x01)
_rxdata:	.usect	".ebss",2,1,1
DW$23	.dwtag  DW_TAG_variable, DW_AT_name("rxdata"), DW_AT_symbol_name("_rxdata")
	.dwattr DW$23, DW_AT_type(*DW$T$13)
	.dwattr DW$23, DW_AT_location[DW_OP_addr _rxdata]
_bitcou:	.usect	".ebss",2,1,1
DW$24	.dwtag  DW_TAG_variable, DW_AT_name("bitcou"), DW_AT_symbol_name("_bitcou")
	.dwattr DW$24, DW_AT_type(*DW$T$13)
	.dwattr DW$24, DW_AT_location[DW_OP_addr _bitcou]
;	C:\CCStudio_v3.3\C2000\cgtools\bin\opt2000.exe C:\Users\Andrew\AppData\Local\Temp\TI3442 C:\Users\Andrew\AppData\Local\Temp\TI3444 
;	C:\CCStudio_v3.3\C2000\cgtools\bin\ac2000.exe -q -D_INLINE -DLARGE_MODEL -IC:/CCStudio_v3.3/C2000/xdais/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/bios/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/rtdx/include/c2000 -IC:/CCStudio_v3.3/C2000/cgtools/include --version=28 --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\Andrew\AppData\Local\Temp\TI3442 --template_info_file C:\Users\Andrew\AppData\Local\Temp\TI3446 --object_file 
	.sect	".text"
	.global	_TestSD

DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("TestSD"), DW_AT_symbol_name("_TestSD")
	.dwattr DW$25, DW_AT_low_pc(_TestSD)
	.dwattr DW$25, DW_AT_high_pc(0x00)
	.dwattr DW$25, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$25, DW_AT_begin_line(0xc7)
	.dwattr DW$25, DW_AT_begin_column(0x05)
	.dwattr DW$25, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$25, DW_AT_skeletal(0x01)
	.dwpsn	"mmc_mcf.c",200,1

;***************************************************************
;* FNAME: _TestSD                       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_TestSD:
        MOVW      DP,#_spiregs
        OR        @_spiregs,#0x0040     ; |201| 
        MOVB      AL,#119               ; |202| 
        MOV       *(0:0x7044),AL        ; |202| 
        LCR       #_ReceiveByte         ; |203| 
        ; call occurs [#_ReceiveByte] ; |203| 
        LCR       #_spiInit             ; |204| 
        ; call occurs [#_spiInit] ; |204| 
        MOVL      XAR4,#_MmcDrv         ; |205| 
        LCR       #_spiSDinit           ; |205| 
        ; call occurs [#_spiSDinit] ; |205| 
	.dwpsn	"mmc_mcf.c",206,1
        LRETR
        ; return occurs
	.dwattr DW$25, DW_AT_end_file("mmc_mcf.c")
	.dwattr DW$25, DW_AT_end_line(0xce)
	.dwattr DW$25, DW_AT_end_column(0x01)
	.dwendtag DW$25

	.sect	".text"

DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("spiCSlow"), DW_AT_symbol_name("_spiCSlow")
	.dwattr DW$26, DW_AT_low_pc(_spiCSlow)
	.dwattr DW$26, DW_AT_high_pc(0x00)
	.dwattr DW$26, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$26, DW_AT_begin_line(0xd8)
	.dwattr DW$26, DW_AT_begin_column(0x0d)
	.dwattr DW$26, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$26, DW_AT_skeletal(0x01)
	.dwpsn	"mmc_mcf.c",217,1

;***************************************************************
;* FNAME: _spiCSlow                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_spiCSlow:
        MOVW      DP,#_settings+14
        MOV       @_settings+14,#1      ; |226| 
        MOVW      DP,#_gpf
        AND       @_gpf,#0xfcff         ; |229| 
	.dwpsn	"mmc_mcf.c",230,1
        LRETR
        ; return occurs
	.dwattr DW$26, DW_AT_end_file("mmc_mcf.c")
	.dwattr DW$26, DW_AT_end_line(0xe6)
	.dwattr DW$26, DW_AT_end_column(0x01)
	.dwendtag DW$26

	.sect	".text"

DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("spiCShi"), DW_AT_symbol_name("_spiCShi")
	.dwattr DW$27, DW_AT_low_pc(_spiCShi)
	.dwattr DW$27, DW_AT_high_pc(0x00)
	.dwattr DW$27, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$27, DW_AT_begin_line(0xef)
	.dwattr DW$27, DW_AT_begin_column(0x0d)
	.dwattr DW$27, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$27, DW_AT_skeletal(0x01)
	.dwpsn	"mmc_mcf.c",240,1

;***************************************************************
;* FNAME: _spiCShi                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_spiCShi:
        MOVW      DP,#_gpb
        AND       @_gpb,#0xbfff         ; |242| 
        MOVW      DP,#_gpf
        OR        @_gpf,#0x0700         ; |243| 
        MOVW      DP,#_receiveC
        MOV       AL,@_receiveC         ; |251| 
        CMPB      AL,#1                 ; |251| 
        BF        L1,NEQ                ; |251| 
        ; branchcc occurs ; |251| 
        MOVB      ACC,#1
        MOVW      DP,#_config+10
        ADDL      @_config+10,ACC       ; |254| 
        LCR       #_ReadDataFromUart_C  ; |255| 
        ; call occurs [#_ReadDataFromUart_C] ; |255| 
        LCR       #_ReadDataFromUart_C  ; |256| 
        ; call occurs [#_ReadDataFromUart_C] ; |256| 
        MOVW      DP,#_receiveC
        MOV       @_receiveC,#0         ; |257| 
L1:    
        MOVW      DP,#_settings+14
        MOV       @_settings+14,#0      ; |259| 
	.dwpsn	"mmc_mcf.c",260,1
        LRETR
        ; return occurs
	.dwattr DW$27, DW_AT_end_file("mmc_mcf.c")
	.dwattr DW$27, DW_AT_end_line(0x104)
	.dwattr DW$27, DW_AT_end_column(0x01)
	.dwendtag DW$27

	.sect	".text"
	.global	_crc16

DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("crc16"), DW_AT_symbol_name("_crc16")
	.dwattr DW$28, DW_AT_low_pc(_crc16)
	.dwattr DW$28, DW_AT_high_pc(0x00)
	.dwattr DW$28, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$28, DW_AT_begin_line(0x108)
	.dwattr DW$28, DW_AT_begin_column(0x0f)
	.dwattr DW$28, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$28, DW_AT_skeletal(0x01)
	.dwpsn	"mmc_mcf.c",265,1

;***************************************************************
;* FNAME: _crc16                        FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

_crc16:
;* AL    assigned to _crc
DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_name("crc"), DW_AT_symbol_name("_crc")
	.dwattr DW$29, DW_AT_type(*DW$T$13)
	.dwattr DW$29, DW_AT_location[DW_OP_reg0]
;* AR4   assigned to _c
DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_name("c"), DW_AT_symbol_name("_c")
	.dwattr DW$30, DW_AT_type(*DW$T$6)
	.dwattr DW$30, DW_AT_location[DW_OP_reg12]
        MOVL      P,ACC                 ; |265| 
        CLRC      SXM
        ADDB      SP,#2
        AND       AL,AR4,#0x00ff        ; |270| 
        MOV       ACC,AL << 8           ; |270| 
        MOVB      XAR6,#0
        MOVL      *-SP[2],ACC           ; |270| 
        MOV       AL,PL                 ; |270| 
        MOV       AH,PH                 ; |270| 
        MOV       PL,*-SP[2]            ; |270| 
        MOV       PH,*-SP[1]            ; |270| 
        XOR       AL,PL                 ; |270| 
        XOR       AH,PH                 ; |270| 
        MOV       PL,AL                 ; |270| 
        MOV       PH,AH                 ; |270| 
	.dwpsn	"mmc_mcf.c",272,0
        MOVL      XAR4,#32768           ; |274| 
L2:    
DW$L$_crc16$2$B:
        MOVL      *-SP[2],XAR4          ; |274| 
        MOV       AL,*-SP[2]            ; |274| 
        AND       AL,PL                 ; |274| 
        MOV       *-SP[2],AL            ; |274| 
        MOV       AL,*-SP[1]            ; |274| 
        AND       AL,PH                 ; |274| 
        MOV       *-SP[1],AL            ; |274| 
        MOVL      ACC,*-SP[2]           ; |274| 
        BF        L3,NEQ                ; |274| 
        ; branchcc occurs ; |274| 
DW$L$_crc16$2$E:
DW$L$_crc16$3$B:
        MOVL      ACC,P
        LSL       ACC,1                 ; |277| 
        BF        L4,UNC                ; |277| 
        ; branch occurs ; |277| 
DW$L$_crc16$3$E:
L3:    
DW$L$_crc16$4$B:
        MOVL      ACC,P
        LSL       ACC,1                 ; |275| 
        XOR       AL,#0x1021            ; |275| 
DW$L$_crc16$4$E:
L4:    
DW$L$_crc16$5$B:
        MOVL      P,ACC                 ; |275| 
        MOVL      ACC,XAR6
        ADDB      ACC,#1                ; |272| 
        MOVL      XAR6,ACC              ; |272| 
        MOVB      ACC,#8
        CMPL      ACC,XAR6              ; |272| 
	.dwpsn	"mmc_mcf.c",278,0
        BF        L2,GT                 ; |272| 
        ; branchcc occurs ; |272| 
DW$L$_crc16$5$E:
        MOVL      ACC,P                 ; |279| 
        SUBB      SP,#2                 ; |279| 
	.dwpsn	"mmc_mcf.c",280,1
        LRETR
        ; return occurs

DW$31	.dwtag  DW_TAG_loop
	.dwattr DW$31, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mmc_mcf.asm:L2:1:1471518981")
	.dwattr DW$31, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$31, DW_AT_begin_line(0x110)
	.dwattr DW$31, DW_AT_end_line(0x116)
DW$32	.dwtag  DW_TAG_loop_range
	.dwattr DW$32, DW_AT_low_pc(DW$L$_crc16$2$B)
	.dwattr DW$32, DW_AT_high_pc(DW$L$_crc16$2$E)
DW$33	.dwtag  DW_TAG_loop_range
	.dwattr DW$33, DW_AT_low_pc(DW$L$_crc16$3$B)
	.dwattr DW$33, DW_AT_high_pc(DW$L$_crc16$3$E)
DW$34	.dwtag  DW_TAG_loop_range
	.dwattr DW$34, DW_AT_low_pc(DW$L$_crc16$4$B)
	.dwattr DW$34, DW_AT_high_pc(DW$L$_crc16$4$E)
DW$35	.dwtag  DW_TAG_loop_range
	.dwattr DW$35, DW_AT_low_pc(DW$L$_crc16$5$B)
	.dwattr DW$35, DW_AT_high_pc(DW$L$_crc16$5$E)
	.dwendtag DW$31

	.dwattr DW$28, DW_AT_end_file("mmc_mcf.c")
	.dwattr DW$28, DW_AT_end_line(0x118)
	.dwattr DW$28, DW_AT_end_column(0x01)
	.dwendtag DW$28

	.sect	".text"
	.global	_spitxbyte

DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("spitxbyte"), DW_AT_symbol_name("_spitxbyte")
	.dwattr DW$36, DW_AT_low_pc(_spitxbyte)
	.dwattr DW$36, DW_AT_high_pc(0x00)
	.dwattr DW$36, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$36, DW_AT_begin_line(0x11a)
	.dwattr DW$36, DW_AT_begin_column(0x06)
	.dwattr DW$36, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$36, DW_AT_skeletal(0x01)
	.dwpsn	"mmc_mcf.c",283,1

;***************************************************************
;* FNAME: _spitxbyte                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_spitxbyte:
;* AL    assigned to _ch
DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ch"), DW_AT_symbol_name("_ch")
	.dwattr DW$37, DW_AT_type(*DW$T$6)
	.dwattr DW$37, DW_AT_location[DW_OP_reg0]
        ANDB      AL,#255               ; |287| 
        LCR       #_TransmitByte        ; |287| 
        ; call occurs [#_TransmitByte] ; |287| 
	.dwpsn	"mmc_mcf.c",288,1
        LRETR
        ; return occurs
	.dwattr DW$36, DW_AT_end_file("mmc_mcf.c")
	.dwattr DW$36, DW_AT_end_line(0x120)
	.dwattr DW$36, DW_AT_end_column(0x01)
	.dwendtag DW$36

	.sect	".text"
	.global	_spitxword

DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("spitxword"), DW_AT_symbol_name("_spitxword")
	.dwattr DW$38, DW_AT_low_pc(_spitxword)
	.dwattr DW$38, DW_AT_high_pc(0x00)
	.dwattr DW$38, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$38, DW_AT_begin_line(0x123)
	.dwattr DW$38, DW_AT_begin_column(0x06)
	.dwattr DW$38, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$38, DW_AT_skeletal(0x01)
	.dwpsn	"mmc_mcf.c",292,1

;***************************************************************
;* FNAME: _spitxword                    FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_spitxword:
;* AL    assigned to _data16
DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data16"), DW_AT_symbol_name("_data16")
	.dwattr DW$39, DW_AT_type(*DW$T$9)
	.dwattr DW$39, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVZ      AR1,AL                ; |292| 
        LSR       AL,8                  ; |297| 
        ANDB      AL,#0xff              ; |299| 
        LCR       #_TransmitByte        ; |299| 
        ; call occurs [#_TransmitByte] ; |299| 
        AND       AL,AR1,#0x00ff        ; |302| 
        LCR       #_TransmitByte        ; |302| 
        ; call occurs [#_TransmitByte] ; |302| 
        MOVL      XAR1,*--SP
	.dwpsn	"mmc_mcf.c",303,1
        LRETR
        ; return occurs
	.dwattr DW$38, DW_AT_end_file("mmc_mcf.c")
	.dwattr DW$38, DW_AT_end_line(0x12f)
	.dwattr DW$38, DW_AT_end_column(0x01)
	.dwendtag DW$38

	.sect	".text"
	.global	_spitxlong

DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("spitxlong"), DW_AT_symbol_name("_spitxlong")
	.dwattr DW$40, DW_AT_low_pc(_spitxlong)
	.dwattr DW$40, DW_AT_high_pc(0x00)
	.dwattr DW$40, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$40, DW_AT_begin_line(0x131)
	.dwattr DW$40, DW_AT_begin_column(0x06)
	.dwattr DW$40, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$40, DW_AT_skeletal(0x01)
	.dwpsn	"mmc_mcf.c",306,1

;***************************************************************
;* FNAME: _spitxlong                    FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_spitxlong:
;* AL    assigned to _data32
DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data32"), DW_AT_symbol_name("_data32")
	.dwattr DW$41, DW_AT_type(*DW$T$13)
	.dwattr DW$41, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOV       T,#24                 ; |310| 
        MOVL      XAR1,ACC              ; |306| 
        LSRL      ACC,T                 ; |310| 
        ANDB      AL,#0xff              ; |315| 
        LCR       #_TransmitByte        ; |315| 
        ; call occurs [#_TransmitByte] ; |315| 
        MOVL      ACC,XAR1              ; |317| 
        MOVU      ACC,AH                ; |317| 
        ANDB      AL,#0xff              ; |321| 
        LCR       #_TransmitByte        ; |321| 
        ; call occurs [#_TransmitByte] ; |321| 
        CLRC      SXM
        MOVL      ACC,XAR1              ; |323| 
        SFR       ACC,8                 ; |323| 
        ANDB      AL,#0xff              ; |327| 
        LCR       #_TransmitByte        ; |327| 
        ; call occurs [#_TransmitByte] ; |327| 
        MOVL      ACC,XAR1              ; |331| 
        ANDB      AL,#0xff              ; |331| 
        LCR       #_TransmitByte        ; |331| 
        ; call occurs [#_TransmitByte] ; |331| 
        MOVL      XAR1,*--SP
	.dwpsn	"mmc_mcf.c",332,1
        LRETR
        ; return occurs
	.dwattr DW$40, DW_AT_end_file("mmc_mcf.c")
	.dwattr DW$40, DW_AT_end_line(0x14c)
	.dwattr DW$40, DW_AT_end_column(0x01)
	.dwendtag DW$40

	.sect	".text"
	.global	_spigetbit

DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("spigetbit"), DW_AT_symbol_name("_spigetbit")
	.dwattr DW$42, DW_AT_low_pc(_spigetbit)
	.dwattr DW$42, DW_AT_high_pc(0x00)
	.dwattr DW$42, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$42, DW_AT_begin_line(0x152)
	.dwattr DW$42, DW_AT_begin_column(0x06)
	.dwattr DW$42, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$42, DW_AT_skeletal(0x01)
	.dwpsn	"mmc_mcf.c",338,22

;***************************************************************
;* FNAME: _spigetbit                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_spigetbit:
        MOVW      DP,#_bitcou
        MOVL      ACC,@_bitcou          ; |340| 
        BF        L5,EQ                 ; |340| 
        ; branchcc occurs ; |340| 
        MOVW      DP,#_bitcou
        MOVL      ACC,@_bitcou          ; |347| 
        BF        L6,NEQ                ; |347| 
        ; branchcc occurs ; |347| 
        BF        L7,UNC                ; |356| 
        ; branch occurs ; |356| 
L5:    
        LCR       #_ReceiveByte         ; |342| 
        ; call occurs [#_ReceiveByte] ; |342| 
        MOVB      XAR6,#8
        MOVW      DP,#_bitcou
        MOV       T,#24                 ; |345| 
        MOVU      ACC,AL
        MOVL      @_bitcou,XAR6         ; |344| 
        LSLL      ACC,T                 ; |345| 
        MOVW      DP,#_rxdata
        MOVL      @_rxdata,ACC          ; |345| 
L6:    
        MOVB      ACC,#1
        MOVW      DP,#_bitcou
        SUBL      @_bitcou,ACC          ; |348| 
        MOVW      DP,#_rxdata
        MOVL      ACC,@_rxdata          ; |349| 
        AND       ACC,#32768 << 16      ; |349| 
        BF        L8,EQ                 ; |349| 
        ; branchcc occurs ; |349| 
        MOVW      DP,#_rxdata
        MOVL      ACC,@_rxdata          ; |350| 
        LSL       ACC,1                 ; |350| 
        MOVW      DP,#_rxdata
        MOVL      @_rxdata,ACC          ; |350| 
L7:    
        MOVB      ACC,#1
        BF        L9,UNC                ; |351| 
        ; branch occurs ; |351| 
L8:    
        MOVW      DP,#_rxdata
        MOVL      ACC,@_rxdata          ; |353| 
        MOVW      DP,#_rxdata
        LSL       ACC,1                 ; |353| 
        MOVL      @_rxdata,ACC          ; |353| 
        MOVB      ACC,#0
L9:    
	.dwpsn	"mmc_mcf.c",357,1
        LRETR
        ; return occurs
	.dwattr DW$42, DW_AT_end_file("mmc_mcf.c")
	.dwattr DW$42, DW_AT_end_line(0x165)
	.dwattr DW$42, DW_AT_end_column(0x01)
	.dwendtag DW$42

	.sect	".text"
	.global	_spigetbit32

DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("spigetbit32"), DW_AT_symbol_name("_spigetbit32")
	.dwattr DW$43, DW_AT_low_pc(_spigetbit32)
	.dwattr DW$43, DW_AT_high_pc(0x00)
	.dwattr DW$43, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$43, DW_AT_begin_line(0x168)
	.dwattr DW$43, DW_AT_begin_column(0x0f)
	.dwattr DW$43, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$43, DW_AT_skeletal(0x01)
	.dwpsn	"mmc_mcf.c",360,33

;***************************************************************
;* FNAME: _spigetbit32                  FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

_spigetbit32:
        ADDB      SP,#6
        LCR       #_ReceiveByte         ; |368| 
        ; call occurs [#_ReceiveByte] ; |368| 
        MOVU      ACC,AL
        MOVL      *-SP[2],ACC           ; |368| 
        LCR       #_ReceiveByte         ; |370| 
        ; call occurs [#_ReceiveByte] ; |370| 
        MOVU      ACC,AL
        MOVL      *-SP[4],ACC           ; |370| 
        LCR       #_ReceiveByte         ; |372| 
        ; call occurs [#_ReceiveByte] ; |372| 
        MOVU      ACC,AL
        MOVL      *-SP[6],ACC           ; |372| 
        LCR       #_ReceiveByte         ; |374| 
        ; call occurs [#_ReceiveByte] ; |374| 
        MOV       PL,AL
        MOV       AL,*-SP[4]            ; |374| 
        ANDB      AL,#0xff              ; |377| 
        MOV       *-SP[4],AL            ; |377| 
        MOV       AL,*-SP[2]            ; |377| 
        ANDB      AL,#0xff              ; |377| 
        MOV       *-SP[3],#0            ; |377| 
        MOV       *-SP[2],AL            ; |377| 
        MOVL      XAR7,*-SP[4]          ; |377| 
        MOV       *-SP[1],#0            ; |377| 
        MOVL      ACC,*-SP[2]           ; |377| 
        LSL       ACC,8                 ; |377| 
        ADDL      ACC,XAR7
        LSL       ACC,8                 ; |377| 
        MOVL      XAR6,ACC              ; |377| 
        MOV       AL,*-SP[6]            ; |377| 
        ANDB      AL,#0xff              ; |377| 
        MOV       *-SP[6],AL            ; |377| 
        MOV       *-SP[5],#0            ; |377| 
        MOVL      XAR7,*-SP[6]          ; |377| 
        MOVL      ACC,XAR6              ; |377| 
        ADDL      ACC,XAR7
        LSL       ACC,8                 ; |377| 
        MOVL      XAR6,ACC              ; |377| 
        MOV       AL,PL                 ; |377| 
        ANDB      AL,#0xff              ; |377| 
        MOV       PL,AL                 ; |377| 
        MOVB      AL,#0
        MOV       PH,AL                 ; |377| 
        MOVL      ACC,XAR6              ; |377| 
        ADDL      ACC,P
        MOVW      DP,#_rxdata
        MOVL      @_rxdata,ACC          ; |377| 
        SUBB      SP,#6                 ; |386| 
	.dwpsn	"mmc_mcf.c",387,1
        LRETR
        ; return occurs
	.dwattr DW$43, DW_AT_end_file("mmc_mcf.c")
	.dwattr DW$43, DW_AT_end_line(0x183)
	.dwattr DW$43, DW_AT_end_column(0x01)
	.dwendtag DW$43

	.sect	".text"

DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("spiInit"), DW_AT_symbol_name("_spiInit")
	.dwattr DW$44, DW_AT_low_pc(_spiInit)
	.dwattr DW$44, DW_AT_high_pc(0x00)
	.dwattr DW$44, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$44, DW_AT_begin_line(0x18c)
	.dwattr DW$44, DW_AT_begin_column(0x0d)
	.dwattr DW$44, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$44, DW_AT_skeletal(0x01)
	.dwpsn	"mmc_mcf.c",397,1

;***************************************************************
;* FNAME: _spiInit                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_spiInit:
	.dwpsn	"mmc_mcf.c",400,0
        MOVB      XAR5,#0
L10:    
DW$L$_spiInit$2$B:
	.dwpsn	"mmc_mcf.c",401,0
        MOVZ      AR4,AR5
        MOVB      ACC,#0
        LCR       #_crc16               ; |402| 
        ; call occurs [#_crc16] ; |402| 
        MOVL      XAR6,ACC              ; |402| 
        MOVL      ACC,XAR5              ; |402| 
        MOVL      XAR4,#_CRCtbl         ; |402| 
        LSL       ACC,1                 ; |402| 
        ADDL      XAR4,ACC
        MOVL      ACC,XAR5              ; |402| 
        ADDB      ACC,#1                ; |400| 
        MOVL      XAR5,ACC              ; |400| 
        MOV       ACC,#256              ; |400| 
        CMPL      ACC,XAR5              ; |400| 
        MOVL      *+XAR4[0],XAR6        ; |402| 
	.dwpsn	"mmc_mcf.c",403,0
        BF        L10,GT                ; |400| 
        ; branchcc occurs ; |400| 
DW$L$_spiInit$2$E:
        MOVB      ACC,#66
        MOVB      XAR5,#0
        MOVL      XAR4,#_g_mmc_type     ; |405| 
        LCR       #_memset              ; |405| 
        ; call occurs [#_memset] ; |405| 
        MOVW      DP,#_rxdata
        MOVB      ACC,#0
        MOVL      @_rxdata,ACC          ; |407| 
        MOVW      DP,#_bitcou
        MOVL      @_bitcou,ACC          ; |408| 
        MOVW      DP,#_carddetectport
        MOV       @_carddetectport,#0   ; |409| 
        MOVW      DP,#_wpport
        MOV       @_wpport,#0           ; |410| 
	.dwpsn	"mmc_mcf.c",411,1
        LRETR
        ; return occurs

DW$45	.dwtag  DW_TAG_loop
	.dwattr DW$45, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mmc_mcf.asm:L10:1:1471518981")
	.dwattr DW$45, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$45, DW_AT_begin_line(0x190)
	.dwattr DW$45, DW_AT_end_line(0x193)
DW$46	.dwtag  DW_TAG_loop_range
	.dwattr DW$46, DW_AT_low_pc(DW$L$_spiInit$2$B)
	.dwattr DW$46, DW_AT_high_pc(DW$L$_spiInit$2$E)
	.dwendtag DW$45

	.dwattr DW$44, DW_AT_end_file("mmc_mcf.c")
	.dwattr DW$44, DW_AT_end_line(0x19b)
	.dwattr DW$44, DW_AT_end_column(0x01)
	.dwendtag DW$44

	.sect	".text"
	.global	_spi_drv_change

DW$47	.dwtag  DW_TAG_subprogram, DW_AT_name("spi_drv_change"), DW_AT_symbol_name("_spi_drv_change")
	.dwattr DW$47, DW_AT_low_pc(_spi_drv_change)
	.dwattr DW$47, DW_AT_high_pc(0x00)
	.dwattr DW$47, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$47, DW_AT_begin_line(0x1a1)
	.dwattr DW$47, DW_AT_begin_column(0x06)
	.dwattr DW$47, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$47, DW_AT_skeletal(0x01)
	.dwpsn	"mmc_mcf.c",418,1

;***************************************************************
;* FNAME: _spi_drv_change               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_spi_drv_change:
;* AR4   assigned to _user_ptr
DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_name("user_ptr"), DW_AT_symbol_name("_user_ptr")
	.dwattr DW$48, DW_AT_type(*DW$T$3)
	.dwattr DW$48, DW_AT_location[DW_OP_reg12]
        MOV       *+XAR4[2],#1          ; |437| 
	.dwpsn	"mmc_mcf.c",438,1
        LRETR
        ; return occurs
	.dwattr DW$47, DW_AT_end_file("mmc_mcf.c")
	.dwattr DW$47, DW_AT_end_line(0x1b6)
	.dwattr DW$47, DW_AT_end_column(0x01)
	.dwendtag DW$47

	.sect	".text"

DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("spiDataBits"), DW_AT_symbol_name("_spiDataBits")
	.dwattr DW$49, DW_AT_low_pc(_spiDataBits)
	.dwattr DW$49, DW_AT_high_pc(0x00)
	.dwattr DW$49, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$49, DW_AT_begin_line(0x1ca)
	.dwattr DW$49, DW_AT_begin_column(0x0d)
	.dwattr DW$49, DW_AT_frame_base[DW_OP_breg20 -12]
	.dwattr DW$49, DW_AT_skeletal(0x01)
	.dwpsn	"mmc_mcf.c",458,56

;***************************************************************
;* FNAME: _spiDataBits                  FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  6 SOE     *
;***************************************************************

_spiDataBits:
;* AL    assigned to _bits
DW$50	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$50, DW_AT_type(*DW$T$12)
	.dwattr DW$50, DW_AT_location[DW_OP_reg0]
;* AR4   assigned to _pcrc
DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pcrc"), DW_AT_symbol_name("_pcrc")
	.dwattr DW$51, DW_AT_type(*DW$T$115)
	.dwattr DW$51, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOVL      XAR2,ACC              ; |458| 
        ADDB      SP,#4
        MOVL      XAR3,XAR4             ; |458| 
        MOVB      ACC,#0
        MOVB      XAR1,#0
        MOVL      *-SP[2],ACC           ; |460| 
        MOVL      ACC,*+XAR3[0]         ; |461| 
        MOVL      *-SP[4],ACC           ; |461| 
        MOVL      ACC,XAR2              ; |462| 
        BF        L15,LEQ               ; |462| 
        ; branchcc occurs ; |462| 
L11:    
DW$L$_spiDataBits$2$B:
	.dwpsn	"mmc_mcf.c",462,0
        MOVL      ACC,*-SP[2]
        LSL       ACC,1                 ; |463| 
        MOVL      *-SP[2],ACC           ; |463| 
        LCR       #_spigetbit           ; |465| 
        ; call occurs [#_spigetbit] ; |465| 
        TEST      ACC                   ; |465| 
        BF        L12,EQ                ; |465| 
        ; branchcc occurs ; |465| 
DW$L$_spiDataBits$2$E:
DW$L$_spiDataBits$3$B:
        MOV       AL,*-SP[2]            ; |466| 
        XOR       *-SP[4],#0x8000       ; |466| 
        ORB       AL,#0x01              ; |467| 
        MOV       *-SP[2],AL            ; |467| 
DW$L$_spiDataBits$3$E:
L12:    
DW$L$_spiDataBits$4$B:
        CLRC      SXM
        MOV       ACC,#32768            ; |470| 
        AND       AL,*-SP[4]            ; |470| 
        AND       AH,*-SP[3]            ; |470| 
        TEST      ACC                   ; |470| 
        BF        L13,NEQ               ; |470| 
        ; branchcc occurs ; |470| 
DW$L$_spiDataBits$4$E:
DW$L$_spiDataBits$5$B:
        MOVL      ACC,*-SP[4]
        LSL       ACC,1                 ; |471| 
        BF        L14,UNC               ; |471| 
        ; branch occurs ; |471| 
DW$L$_spiDataBits$5$E:
L13:    
DW$L$_spiDataBits$6$B:
        MOVL      ACC,*-SP[4]
        LSL       ACC,1                 ; |470| 
        XOR       AL,#0x1021            ; |470| 
DW$L$_spiDataBits$6$E:
L14:    
DW$L$_spiDataBits$7$B:
        MOVL      *-SP[4],ACC           ; |470| 
        MOVL      ACC,XAR1
        ADDB      ACC,#1                ; |462| 
        MOVL      XAR1,ACC              ; |462| 
        MOVL      ACC,XAR2              ; |462| 
        CMPL      ACC,XAR1              ; |462| 
	.dwpsn	"mmc_mcf.c",473,0
        BF        L11,GT                ; |462| 
        ; branchcc occurs ; |462| 
DW$L$_spiDataBits$7$E:
L15:    
        MOVL      ACC,*-SP[4]
        MOVL      *+XAR3[0],ACC         ; |475| 
        MOVL      ACC,*-SP[2]           ; |475| 
        SUBB      SP,#4                 ; |477| 
        MOVL      XAR3,*--SP            ; |477| 
        MOVL      XAR2,*--SP            ; |477| 
        MOVL      XAR1,*--SP            ; |477| 
	.dwpsn	"mmc_mcf.c",478,1
        LRETR
        ; return occurs

DW$52	.dwtag  DW_TAG_loop
	.dwattr DW$52, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mmc_mcf.asm:L11:1:1471518981")
	.dwattr DW$52, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$52, DW_AT_begin_line(0x1ce)
	.dwattr DW$52, DW_AT_end_line(0x1d9)
DW$53	.dwtag  DW_TAG_loop_range
	.dwattr DW$53, DW_AT_low_pc(DW$L$_spiDataBits$2$B)
	.dwattr DW$53, DW_AT_high_pc(DW$L$_spiDataBits$2$E)
DW$54	.dwtag  DW_TAG_loop_range
	.dwattr DW$54, DW_AT_low_pc(DW$L$_spiDataBits$3$B)
	.dwattr DW$54, DW_AT_high_pc(DW$L$_spiDataBits$3$E)
DW$55	.dwtag  DW_TAG_loop_range
	.dwattr DW$55, DW_AT_low_pc(DW$L$_spiDataBits$4$B)
	.dwattr DW$55, DW_AT_high_pc(DW$L$_spiDataBits$4$E)
DW$56	.dwtag  DW_TAG_loop_range
	.dwattr DW$56, DW_AT_low_pc(DW$L$_spiDataBits$5$B)
	.dwattr DW$56, DW_AT_high_pc(DW$L$_spiDataBits$5$E)
DW$57	.dwtag  DW_TAG_loop_range
	.dwattr DW$57, DW_AT_low_pc(DW$L$_spiDataBits$6$B)
	.dwattr DW$57, DW_AT_high_pc(DW$L$_spiDataBits$6$E)
DW$58	.dwtag  DW_TAG_loop_range
	.dwattr DW$58, DW_AT_low_pc(DW$L$_spiDataBits$7$B)
	.dwattr DW$58, DW_AT_high_pc(DW$L$_spiDataBits$7$E)
	.dwendtag DW$52

	.dwattr DW$49, DW_AT_end_file("mmc_mcf.c")
	.dwattr DW$49, DW_AT_end_line(0x1de)
	.dwattr DW$49, DW_AT_end_column(0x01)
	.dwendtag DW$49

	.sect	".text"

DW$59	.dwtag  DW_TAG_subprogram, DW_AT_name("spiWaitStartBit"), DW_AT_symbol_name("_spiWaitStartBit")
	.dwattr DW$59, DW_AT_low_pc(_spiWaitStartBit)
	.dwattr DW$59, DW_AT_high_pc(0x00)
	.dwattr DW$59, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$59, DW_AT_begin_line(0x1ec)
	.dwattr DW$59, DW_AT_begin_column(0x0c)
	.dwattr DW$59, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$59, DW_AT_skeletal(0x01)
	.dwpsn	"mmc_mcf.c",492,34

;***************************************************************
;* FNAME: _spiWaitStartBit              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_spiWaitStartBit:
        MOVW      DP,#_timers+40
        MOV       @_timers+40,#51       ; |500| 
        NOP
        MOVW      DP,#_timers+40
        MOV       AL,@_timers+40        ; |501| 
        BF        L18,EQ                ; |501| 
        ; branchcc occurs ; |501| 
L16:    
DW$L$_spiWaitStartBit$2$B:
	.dwpsn	"mmc_mcf.c",502,0
        LCR       #_spigetbit           ; |503| 
        ; call occurs [#_spigetbit] ; |503| 
        TEST      ACC                   ; |503| 
        BF        L17,NEQ               ; |503| 
        ; branchcc occurs ; |503| 
DW$L$_spiWaitStartBit$2$E:
        MOVB      AL,#0
        BF        L19,UNC               ; |503| 
        ; branch occurs ; |503| 
L17:    
DW$L$_spiWaitStartBit$4$B:
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |505| 
        MOVW      DP,#_timers+40
        MOV       AL,@_timers+40        ; |505| 
	.dwpsn	"mmc_mcf.c",506,0
        BF        L16,NEQ               ; |505| 
        ; branchcc occurs ; |505| 
DW$L$_spiWaitStartBit$4$E:
L18:    
        MOVB      AL,#1                 ; |507| 
L19:    
	.dwpsn	"mmc_mcf.c",508,1
        LRETR
        ; return occurs

DW$60	.dwtag  DW_TAG_loop
	.dwattr DW$60, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mmc_mcf.asm:L16:1:1471518981")
	.dwattr DW$60, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$60, DW_AT_begin_line(0x1f5)
	.dwattr DW$60, DW_AT_end_line(0x1fa)
DW$61	.dwtag  DW_TAG_loop_range
	.dwattr DW$61, DW_AT_low_pc(DW$L$_spiWaitStartBit$2$B)
	.dwattr DW$61, DW_AT_high_pc(DW$L$_spiWaitStartBit$2$E)
DW$62	.dwtag  DW_TAG_loop_range
	.dwattr DW$62, DW_AT_low_pc(DW$L$_spiWaitStartBit$4$B)
	.dwattr DW$62, DW_AT_high_pc(DW$L$_spiWaitStartBit$4$E)
	.dwendtag DW$60

	.dwattr DW$59, DW_AT_end_file("mmc_mcf.c")
	.dwattr DW$59, DW_AT_end_line(0x1fc)
	.dwattr DW$59, DW_AT_end_column(0x01)
	.dwendtag DW$59

	.sect	".text"

DW$63	.dwtag  DW_TAG_subprogram, DW_AT_name("spiWaitBusy"), DW_AT_symbol_name("_spiWaitBusy")
	.dwattr DW$63, DW_AT_low_pc(_spiWaitBusy)
	.dwattr DW$63, DW_AT_high_pc(0x00)
	.dwattr DW$63, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$63, DW_AT_begin_line(0x20a)
	.dwattr DW$63, DW_AT_begin_column(0x0c)
	.dwattr DW$63, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$63, DW_AT_skeletal(0x01)
	.dwpsn	"mmc_mcf.c",522,30

;***************************************************************
;* FNAME: _spiWaitBusy                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_spiWaitBusy:
        MOVW      DP,#_timers+40
        MOV       @_timers+40,#51       ; |534| 
        NOP
        MOVW      DP,#_timers+40
        MOV       AL,@_timers+40        ; |535| 
        BF        L22,EQ                ; |535| 
        ; branchcc occurs ; |535| 
L20:    
DW$L$_spiWaitBusy$2$B:
	.dwpsn	"mmc_mcf.c",536,0
        LCR       #_spigetbit           ; |537| 
        ; call occurs [#_spigetbit] ; |537| 
        TEST      ACC                   ; |537| 
        BF        L21,EQ                ; |537| 
        ; branchcc occurs ; |537| 
DW$L$_spiWaitBusy$2$E:
        MOVB      AL,#0
        BF        L23,UNC               ; |537| 
        ; branch occurs ; |537| 
L21:    
DW$L$_spiWaitBusy$4$B:
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |538| 
        MOVW      DP,#_timers+40
        MOV       AL,@_timers+40        ; |538| 
	.dwpsn	"mmc_mcf.c",539,0
        BF        L20,NEQ               ; |538| 
        ; branchcc occurs ; |538| 
DW$L$_spiWaitBusy$4$E:
L22:    
        MOVB      AL,#1                 ; |540| 
L23:    
	.dwpsn	"mmc_mcf.c",541,1
        LRETR
        ; return occurs

DW$64	.dwtag  DW_TAG_loop
	.dwattr DW$64, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mmc_mcf.asm:L20:1:1471518981")
	.dwattr DW$64, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$64, DW_AT_begin_line(0x217)
	.dwattr DW$64, DW_AT_end_line(0x21b)
DW$65	.dwtag  DW_TAG_loop_range
	.dwattr DW$65, DW_AT_low_pc(DW$L$_spiWaitBusy$2$B)
	.dwattr DW$65, DW_AT_high_pc(DW$L$_spiWaitBusy$2$E)
DW$66	.dwtag  DW_TAG_loop_range
	.dwattr DW$66, DW_AT_low_pc(DW$L$_spiWaitBusy$4$B)
	.dwattr DW$66, DW_AT_high_pc(DW$L$_spiWaitBusy$4$E)
	.dwendtag DW$64

	.dwattr DW$63, DW_AT_end_file("mmc_mcf.c")
	.dwattr DW$63, DW_AT_end_line(0x21d)
	.dwattr DW$63, DW_AT_end_column(0x01)
	.dwendtag DW$63

	.sect	".text"

DW$67	.dwtag  DW_TAG_subprogram, DW_AT_name("spiCmd"), DW_AT_symbol_name("_spiCmd")
	.dwattr DW$67, DW_AT_low_pc(_spiCmd)
	.dwattr DW$67, DW_AT_high_pc(0x00)
	.dwattr DW$67, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$67, DW_AT_begin_line(0x231)
	.dwattr DW$67, DW_AT_begin_column(0x0d)
	.dwattr DW$67, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$67, DW_AT_skeletal(0x01)
	.dwpsn	"mmc_mcf.c",561,58

;***************************************************************
;* FNAME: _spiCmd                       FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  2 SOE     *
;***************************************************************

_spiCmd:
;* AL    assigned to _cmd
DW$68	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cmd"), DW_AT_symbol_name("_cmd")
	.dwattr DW$68, DW_AT_type(*DW$T$13)
	.dwattr DW$68, DW_AT_location[DW_OP_reg0]
DW$69	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$69, DW_AT_type(*DW$T$13)
	.dwattr DW$69, DW_AT_location[DW_OP_breg20 -12]
        MOVL      *SP++,XAR1
        ADDB      SP,#6
        MOVL      *-SP[2],ACC           ; |561| 
        MOVL      ACC,*-SP[12]          ; |561| 
        MOVL      *-SP[4],ACC           ; |561| 
        MOVB      ACC,#0
        MOVL      *-SP[6],ACC           ; |563| 
        LCR       #_spiWaitBusy         ; |565| 
        ; call occurs [#_spiWaitBusy] ; |565| 
        CMPB      AL,#0                 ; |565| 
        BF        L32,NEQ               ; |565| 
        ; branchcc occurs ; |565| 
        OR        *-SP[2],#65344        ; |574| 
        OR        *-SP[1],#65535        ; |574| 
        MOVL      ACC,*-SP[2]           ; |574| 
        LCR       #_spitxlong           ; |574| 
        ; call occurs [#_spitxlong] ; |574| 
	.dwpsn	"mmc_mcf.c",576,0
        MOVB      XAR6,#0
L24:    
DW$L$_spiCmd$3$B:
        MOVL      ACC,*-SP[2]
        ANDB      AL,#0x80              ; |578| 
        MOVB      AH,#0
        TEST      ACC                   ; |578| 
        BF        L25,EQ                ; |578| 
        ; branchcc occurs ; |578| 
DW$L$_spiCmd$3$E:
DW$L$_spiCmd$4$B:
        MOV       AL,*-SP[6]
        XORB      AL,#0x40              ; |579| 
        MOV       *-SP[6],AL            ; |579| 
DW$L$_spiCmd$4$E:
L25:    
DW$L$_spiCmd$5$B:
        MOVL      ACC,*-SP[2]
        LSL       ACC,1                 ; |582| 
        MOVL      *-SP[2],ACC           ; |582| 
        MOVL      ACC,*-SP[6]           ; |582| 
        ANDB      AL,#0x40              ; |584| 
        MOVB      AH,#0
        TEST      ACC                   ; |584| 
        BF        L26,NEQ               ; |584| 
        ; branchcc occurs ; |584| 
DW$L$_spiCmd$5$E:
DW$L$_spiCmd$6$B:
        MOVL      ACC,*-SP[6]
        LSL       ACC,1                 ; |585| 
        BF        L27,UNC               ; |585| 
        ; branch occurs ; |585| 
DW$L$_spiCmd$6$E:
L26:    
DW$L$_spiCmd$7$B:
        MOVL      ACC,*-SP[6]
        LSL       ACC,1                 ; |584| 
        XORB      AL,#0x09              ; |584| 
DW$L$_spiCmd$7$E:
L27:    
DW$L$_spiCmd$8$B:
        MOVL      *-SP[6],ACC           ; |584| 
        MOVL      ACC,XAR6
        ADDB      ACC,#1                ; |576| 
        MOVL      XAR6,ACC              ; |576| 
        MOVB      ACC,#8
        CMPL      ACC,XAR6              ; |576| 
	.dwpsn	"mmc_mcf.c",586,0
        BF        L24,GT                ; |576| 
        ; branchcc occurs ; |576| 
DW$L$_spiCmd$8$E:
        MOVL      ACC,*-SP[4]
        LCR       #_spitxlong           ; |588| 
        ; call occurs [#_spitxlong] ; |588| 
	.dwpsn	"mmc_mcf.c",589,0
        MOVB      XAR6,#0
L28:    
DW$L$_spiCmd$10$B:
        MOVL      ACC,*-SP[4]
        AND       ACC,#32768 << 16      ; |590| 
        BF        L29,EQ                ; |590| 
        ; branchcc occurs ; |590| 
DW$L$_spiCmd$10$E:
DW$L$_spiCmd$11$B:
        MOV       AL,*-SP[6]
        XORB      AL,#0x40              ; |591| 
        MOV       *-SP[6],AL            ; |591| 
DW$L$_spiCmd$11$E:
L29:    
DW$L$_spiCmd$12$B:
        MOVL      ACC,*-SP[4]
        LSL       ACC,1                 ; |594| 
        MOVL      *-SP[4],ACC           ; |594| 
        MOVL      ACC,*-SP[6]           ; |594| 
        ANDB      AL,#0x40              ; |596| 
        MOVB      AH,#0
        TEST      ACC                   ; |596| 
        BF        L30,NEQ               ; |596| 
        ; branchcc occurs ; |596| 
DW$L$_spiCmd$12$E:
DW$L$_spiCmd$13$B:
        MOVL      ACC,*-SP[6]
        LSL       ACC,1                 ; |597| 
        BF        L31,UNC               ; |597| 
        ; branch occurs ; |597| 
DW$L$_spiCmd$13$E:
L30:    
DW$L$_spiCmd$14$B:
        MOVL      ACC,*-SP[6]
        LSL       ACC,1                 ; |596| 
        XORB      AL,#0x09              ; |596| 
DW$L$_spiCmd$14$E:
L31:    
DW$L$_spiCmd$15$B:
        MOVL      *-SP[6],ACC           ; |596| 
        MOVL      ACC,XAR6
        ADDB      ACC,#1                ; |589| 
        MOVL      XAR6,ACC              ; |589| 
        MOVB      ACC,#32
        CMPL      ACC,XAR6              ; |589| 
	.dwpsn	"mmc_mcf.c",598,0
        BF        L28,GT                ; |589| 
        ; branchcc occurs ; |589| 
DW$L$_spiCmd$15$E:
        MOVL      ACC,*-SP[6]
        LSL       ACC,1                 ; |600| 
        MOVL      *-SP[6],ACC           ; |600| 
        MOV       AL,*-SP[6]            ; |600| 
        ORB       AL,#0x01              ; |605| 
        MOV       *-SP[6],AL            ; |605| 
        LCR       #_spitxbyte           ; |605| 
        ; call occurs [#_spitxbyte] ; |605| 
        LCR       #_spiWaitStartBit     ; |607| 
        ; call occurs [#_spiWaitStartBit] ; |607| 
        CMPB      AL,#0                 ; |607| 
        BF        L33,EQ                ; |607| 
        ; branchcc occurs ; |607| 
L32:    
        MOVB      ACC,#255
        BF        L35,UNC               ; |618| 
        ; branch occurs ; |618| 
L33:    
	.dwpsn	"mmc_mcf.c",609,0
        MOVB      XAR1,#0
L34:    
DW$L$_spiCmd$19$B:
	.dwpsn	"mmc_mcf.c",610,0
        MOVL      ACC,*-SP[4]
        LSL       ACC,1                 ; |611| 
        MOVL      *-SP[4],ACC           ; |611| 
        LCR       #_spigetbit           ; |612| 
        ; call occurs [#_spigetbit] ; |612| 
        MOVL      P,ACC                 ; |612| 
        MOV       AL,*-SP[4]            ; |612| 
        OR        AL,PL                 ; |612| 
        MOV       *-SP[4],AL            ; |612| 
        MOV       AL,*-SP[3]            ; |612| 
        OR        AL,PH                 ; |612| 
        MOV       *-SP[3],AL            ; |612| 
        MOVL      ACC,XAR1              ; |612| 
        ADDB      ACC,#1                ; |609| 
        MOVL      XAR1,ACC              ; |609| 
        MOVB      ACC,#7
        CMPL      ACC,XAR1              ; |609| 
	.dwpsn	"mmc_mcf.c",613,0
        BF        L34,GT                ; |609| 
        ; branchcc occurs ; |609| 
DW$L$_spiCmd$19$E:
        MOVL      ACC,*-SP[4]
L35:    
        SUBB      SP,#6                 ; |616| 
        MOVL      XAR1,*--SP            ; |616| 
	.dwpsn	"mmc_mcf.c",619,1
        LRETR
        ; return occurs

DW$70	.dwtag  DW_TAG_loop
	.dwattr DW$70, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mmc_mcf.asm:L34:1:1471518981")
	.dwattr DW$70, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$70, DW_AT_begin_line(0x261)
	.dwattr DW$70, DW_AT_end_line(0x265)
DW$71	.dwtag  DW_TAG_loop_range
	.dwattr DW$71, DW_AT_low_pc(DW$L$_spiCmd$19$B)
	.dwattr DW$71, DW_AT_high_pc(DW$L$_spiCmd$19$E)
	.dwendtag DW$70


DW$72	.dwtag  DW_TAG_loop
	.dwattr DW$72, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mmc_mcf.asm:L28:1:1471518981")
	.dwattr DW$72, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$72, DW_AT_begin_line(0x24d)
	.dwattr DW$72, DW_AT_end_line(0x256)
DW$73	.dwtag  DW_TAG_loop_range
	.dwattr DW$73, DW_AT_low_pc(DW$L$_spiCmd$10$B)
	.dwattr DW$73, DW_AT_high_pc(DW$L$_spiCmd$10$E)
DW$74	.dwtag  DW_TAG_loop_range
	.dwattr DW$74, DW_AT_low_pc(DW$L$_spiCmd$11$B)
	.dwattr DW$74, DW_AT_high_pc(DW$L$_spiCmd$11$E)
DW$75	.dwtag  DW_TAG_loop_range
	.dwattr DW$75, DW_AT_low_pc(DW$L$_spiCmd$12$B)
	.dwattr DW$75, DW_AT_high_pc(DW$L$_spiCmd$12$E)
DW$76	.dwtag  DW_TAG_loop_range
	.dwattr DW$76, DW_AT_low_pc(DW$L$_spiCmd$13$B)
	.dwattr DW$76, DW_AT_high_pc(DW$L$_spiCmd$13$E)
DW$77	.dwtag  DW_TAG_loop_range
	.dwattr DW$77, DW_AT_low_pc(DW$L$_spiCmd$14$B)
	.dwattr DW$77, DW_AT_high_pc(DW$L$_spiCmd$14$E)
DW$78	.dwtag  DW_TAG_loop_range
	.dwattr DW$78, DW_AT_low_pc(DW$L$_spiCmd$15$B)
	.dwattr DW$78, DW_AT_high_pc(DW$L$_spiCmd$15$E)
	.dwendtag DW$72


DW$79	.dwtag  DW_TAG_loop
	.dwattr DW$79, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mmc_mcf.asm:L24:1:1471518981")
	.dwattr DW$79, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$79, DW_AT_begin_line(0x240)
	.dwattr DW$79, DW_AT_end_line(0x24a)
DW$80	.dwtag  DW_TAG_loop_range
	.dwattr DW$80, DW_AT_low_pc(DW$L$_spiCmd$3$B)
	.dwattr DW$80, DW_AT_high_pc(DW$L$_spiCmd$3$E)
DW$81	.dwtag  DW_TAG_loop_range
	.dwattr DW$81, DW_AT_low_pc(DW$L$_spiCmd$4$B)
	.dwattr DW$81, DW_AT_high_pc(DW$L$_spiCmd$4$E)
DW$82	.dwtag  DW_TAG_loop_range
	.dwattr DW$82, DW_AT_low_pc(DW$L$_spiCmd$5$B)
	.dwattr DW$82, DW_AT_high_pc(DW$L$_spiCmd$5$E)
DW$83	.dwtag  DW_TAG_loop_range
	.dwattr DW$83, DW_AT_low_pc(DW$L$_spiCmd$6$B)
	.dwattr DW$83, DW_AT_high_pc(DW$L$_spiCmd$6$E)
DW$84	.dwtag  DW_TAG_loop_range
	.dwattr DW$84, DW_AT_low_pc(DW$L$_spiCmd$7$B)
	.dwattr DW$84, DW_AT_high_pc(DW$L$_spiCmd$7$E)
DW$85	.dwtag  DW_TAG_loop_range
	.dwattr DW$85, DW_AT_low_pc(DW$L$_spiCmd$8$B)
	.dwattr DW$85, DW_AT_high_pc(DW$L$_spiCmd$8$E)
	.dwendtag DW$79

	.dwattr DW$67, DW_AT_end_file("mmc_mcf.c")
	.dwattr DW$67, DW_AT_end_line(0x26b)
	.dwattr DW$67, DW_AT_end_column(0x01)
	.dwendtag DW$67

	.sect	".text"

DW$86	.dwtag  DW_TAG_subprogram, DW_AT_name("spiGetDataBlock"), DW_AT_symbol_name("_spiGetDataBlock")
	.dwattr DW$86, DW_AT_low_pc(_spiGetDataBlock)
	.dwattr DW$86, DW_AT_high_pc(0x00)
	.dwattr DW$86, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$86, DW_AT_begin_line(0x27f)
	.dwattr DW$86, DW_AT_begin_column(0x0c)
	.dwattr DW$86, DW_AT_frame_base[DW_OP_breg20 -14]
	.dwattr DW$86, DW_AT_skeletal(0x01)
	.dwpsn	"mmc_mcf.c",639,93

;***************************************************************
;* FNAME: _spiGetDataBlock              FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  4 Auto,  6 SOE     *
;***************************************************************

_spiGetDataBlock:
;* AR4   assigned to _dwaddr
DW$87	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dwaddr"), DW_AT_symbol_name("_dwaddr")
	.dwattr DW$87, DW_AT_type(*DW$T$96)
	.dwattr DW$87, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _addr
DW$88	.dwtag  DW_TAG_formal_parameter, DW_AT_name("addr"), DW_AT_symbol_name("_addr")
	.dwattr DW$88, DW_AT_type(*DW$T$13)
	.dwattr DW$88, DW_AT_location[DW_OP_reg0]
DW$89	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cnt"), DW_AT_symbol_name("_cnt")
	.dwattr DW$89, DW_AT_type(*DW$T$10)
	.dwattr DW$89, DW_AT_location[DW_OP_breg20 -15]
;* AR5   assigned to _user_ptr
DW$90	.dwtag  DW_TAG_formal_parameter, DW_AT_name("user_ptr"), DW_AT_symbol_name("_user_ptr")
	.dwattr DW$90, DW_AT_type(*DW$T$3)
	.dwattr DW$90, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#6
        MOVL      XAR3,ACC              ; |639| 
        MOV       AL,*-SP[15]           ; |639| 
        MOV       *-SP[3],AL            ; |639| 
        LCR       #_spiCSlow            ; |654| 
        ; call occurs [#_spiCSlow] ; |654| 
        MOVL      XAR1,XAR4             ; |639| 
        MOVL      XAR2,XAR5             ; |642| 
        MOVB      AH,#0
        CMPB      AL,#2                 ; |656| 
        BF        L36,LT                ; |656| 
        ; branchcc occurs ; |656| 
        MOVB      AH,#1                 ; |656| 
L36:    
        MOV       *-SP[4],AH            ; |656| 
        LCR       #_spiWaitBusy         ; |656| 
        ; call occurs [#_spiWaitBusy] ; |656| 
        CMPB      AL,#0                 ; |656| 
        BF        L37,EQ                ; |656| 
        ; branchcc occurs ; |656| 
        LCR       #_spiCShi             ; |660| 
        ; call occurs [#_spiCShi] ; |660| 
        MOVB      AL,#105               ; |663| 
        BF        L52,UNC               ; |663| 
        ; branch occurs ; |663| 
L37:    
        MOV       AL,*-SP[4]
        BF        L39,EQ                ; |666| 
        ; branchcc occurs ; |666| 
        MOV       AL,*+XAR2[4]          ; |666| 
        BF        L38,NEQ               ; |666| 
        ; branchcc occurs ; |666| 
        SETC      SXM
        MOV       ACC,*-SP[3]           ; |668| 
        MOVL      *-SP[2],ACC           ; |668| 
        MOVB      ACC,#23
        LCR       #_spiCmd              ; |668| 
        ; call occurs [#_spiCmd] ; |668| 
        TEST      ACC                   ; |668| 
        BF        L50,NEQ               ; |668| 
        ; branchcc occurs ; |668| 
L38:    
        MOV       AL,*-SP[4]
        BF        L39,EQ                ; |678| 
        ; branchcc occurs ; |678| 
        MOVB      ACC,#18
        BF        L40,UNC               ; |678| 
        ; branch occurs ; |678| 
L39:    
        MOVB      ACC,#17
L40:    
        MOVL      *-SP[2],XAR3          ; |678| 
        LCR       #_spiCmd              ; |678| 
        ; call occurs [#_spiCmd] ; |678| 
        TEST      ACC                   ; |678| 
        BF        L50,NEQ               ; |678| 
        ; branchcc occurs ; |678| 
        MOV       AL,*-SP[3]
        BF        L49,EQ                ; |687| 
        ; branchcc occurs ; |687| 
L41:    
DW$L$_spiGetDataBlock$13$B:
	.dwpsn	"mmc_mcf.c",688,0
        MOVB      ACC,#0
        MOVL      *-SP[6],ACC           ; |692| 
        LCR       #_spiWaitStartBit     ; |694| 
        ; call occurs [#_spiWaitStartBit] ; |694| 
        CMPB      AL,#0                 ; |694| 
        BF        L42,EQ                ; |694| 
        ; branchcc occurs ; |694| 
DW$L$_spiGetDataBlock$13$E:
        LCR       #_spiCShi             ; |695| 
        ; call occurs [#_spiCShi] ; |695| 
        MOVB      AL,#104               ; |698| 
        BF        L52,UNC               ; |698| 
        ; branch occurs ; |698| 
L42:    
DW$L$_spiGetDataBlock$15$B:
	.dwpsn	"mmc_mcf.c",701,0
        MOVB      XAR3,#0
DW$L$_spiGetDataBlock$15$E:
L43:    
DW$L$_spiGetDataBlock$16$B:
        LCR       #_spigetbit32         ; |702| 
        ; call occurs [#_spigetbit32] ; |702| 
        MOV       T,#24                 ; |707| 
        MOVL      P,ACC                 ; |702| 
        LSRL      ACC,T                 ; |707| 
        MOV       *XAR1++,AL            ; |707| 
        MOVL      ACC,P                 ; |708| 
        MOVU      ACC,AH                ; |708| 
        CLRC      SXM
        ANDB      AL,#0xff              ; |708| 
        MOV       *XAR1++,AL            ; |708| 
        MOVL      ACC,P                 ; |709| 
        MOVL      XAR4,#_CRCtbl         ; |712| 
        SFR       ACC,8                 ; |709| 
        MOVL      XAR6,ACC              ; |709| 
        ANDB      AL,#0xff              ; |709| 
        MOV       *XAR1++,AL            ; |709| 
        MOVL      ACC,P                 ; |710| 
        ANDB      AL,#0xff              ; |710| 
        MOVL      XAR5,XAR4             ; |712| 
        MOV       *XAR1++,AL            ; |710| 
        MOV       AL,*-SP[6]            ; |712| 
        XOR       AL,PH                 ; |712| 
        MOVU      ACC,AL
        SFR       ACC,8                 ; |712| 
        LSL       ACC,1                 ; |712| 
        ADDL      XAR5,ACC
        MOVL      ACC,*-SP[6]           ; |712| 
        LSL       ACC,8                 ; |712| 
        XOR       AH,*+XAR5[1]          ; |712| 
        XOR       AL,*+XAR5[0]          ; |712| 
        MOVL      *-SP[6],ACC           ; |712| 
        MOV       AH,*-SP[6]            ; |713| 
        XOR       AH,AR6                ; |713| 
        MOVL      XAR5,XAR4             ; |713| 
        MOVU      ACC,AH
        SFR       ACC,8                 ; |713| 
        LSL       ACC,1                 ; |713| 
        ADDL      XAR5,ACC
        MOVL      ACC,*-SP[6]           ; |713| 
        LSL       ACC,8                 ; |713| 
        XOR       AH,*+XAR5[1]          ; |713| 
        XOR       AL,*+XAR5[0]          ; |713| 
        MOVL      *-SP[6],ACC           ; |713| 
        MOV       AH,PL                 ; |714| 
        XOR       AH,*-SP[6]            ; |714| 
        MOVL      XAR5,XAR4             ; |714| 
        MOVU      ACC,AH
        SFR       ACC,8                 ; |714| 
        LSL       ACC,1                 ; |714| 
        ADDL      XAR5,ACC
        MOVL      ACC,*-SP[6]           ; |714| 
        LSL       ACC,8                 ; |714| 
        XOR       AH,*+XAR5[1]          ; |714| 
        XOR       AL,*+XAR5[0]          ; |714| 
        MOVL      *-SP[6],ACC           ; |714| 
        SFR       ACC,8                 ; |715| 
        MOV       AH,AL                 ; |715| 
        MOV       AL,PL                 ; |715| 
        XOR       AL,AH                 ; |715| 
        ANDB      AL,#0xff              ; |715| 
        MOVU      ACC,AL
        LSL       ACC,1                 ; |715| 
        ADDL      XAR4,ACC
        MOVL      ACC,*-SP[6]           ; |715| 
        LSL       ACC,8                 ; |715| 
        XOR       AH,*+XAR4[1]          ; |715| 
        XOR       AL,*+XAR4[0]          ; |715| 
        MOVL      *-SP[6],ACC           ; |715| 
        MOVL      ACC,XAR3              ; |715| 
        ADDB      ACC,#1                ; |701| 
        MOVL      XAR3,ACC              ; |701| 
        MOVB      ACC,#128
        CMPL      ACC,XAR3              ; |701| 
	.dwpsn	"mmc_mcf.c",716,0
        BF        L43,GT                ; |701| 
        ; branchcc occurs ; |701| 
DW$L$_spiGetDataBlock$16$E:
DW$L$_spiGetDataBlock$17$B:
	.dwpsn	"mmc_mcf.c",719,0
        MOVB      XAR3,#0
DW$L$_spiGetDataBlock$17$E:
L44:    
DW$L$_spiGetDataBlock$18$B:
        LCR       #_spigetbit           ; |720| 
        ; call occurs [#_spigetbit] ; |720| 
        TEST      ACC                   ; |720| 
        BF        L45,EQ                ; |720| 
        ; branchcc occurs ; |720| 
DW$L$_spiGetDataBlock$18$E:
DW$L$_spiGetDataBlock$19$B:
        XOR       *-SP[6],#0x8000       ; |721| 
DW$L$_spiGetDataBlock$19$E:
L45:    
DW$L$_spiGetDataBlock$20$B:
        CLRC      SXM
        MOV       ACC,#32768            ; |724| 
        AND       AL,*-SP[6]            ; |724| 
        AND       AH,*-SP[5]            ; |724| 
        TEST      ACC                   ; |724| 
        BF        L46,NEQ               ; |724| 
        ; branchcc occurs ; |724| 
DW$L$_spiGetDataBlock$20$E:
DW$L$_spiGetDataBlock$21$B:
        MOVL      ACC,*-SP[6]
        LSL       ACC,1                 ; |725| 
        BF        L47,UNC               ; |725| 
        ; branch occurs ; |725| 
DW$L$_spiGetDataBlock$21$E:
L46:    
DW$L$_spiGetDataBlock$22$B:
        MOVL      ACC,*-SP[6]
        LSL       ACC,1                 ; |724| 
        XOR       AL,#0x1021            ; |724| 
DW$L$_spiGetDataBlock$22$E:
L47:    
DW$L$_spiGetDataBlock$23$B:
        MOVL      *-SP[6],ACC           ; |724| 
        MOVL      ACC,XAR3
        ADDB      ACC,#1                ; |719| 
        MOVL      XAR3,ACC              ; |719| 
        MOVB      ACC,#16
        CMPL      ACC,XAR3              ; |719| 
	.dwpsn	"mmc_mcf.c",726,0
        BF        L44,GT                ; |719| 
        ; branchcc occurs ; |719| 
DW$L$_spiGetDataBlock$23$E:
DW$L$_spiGetDataBlock$24$B:
        MOVL      ACC,*-SP[6]
        BF        L48,EQ                ; |728| 
        ; branchcc occurs ; |728| 
DW$L$_spiGetDataBlock$24$E:
        LCR       #_spiCShi             ; |730| 
        ; call occurs [#_spiCShi] ; |730| 
        MOVB      AL,#106               ; |733| 
        BF        L52,UNC               ; |733| 
        ; branch occurs ; |733| 
L48:    
DW$L$_spiGetDataBlock$26$B:
        DEC       *-SP[3]               ; |687| 
	.dwpsn	"mmc_mcf.c",735,0
        BF        L41,NEQ               ; |687| 
        ; branchcc occurs ; |687| 
DW$L$_spiGetDataBlock$26$E:
L49:    
        MOV       AL,*-SP[4]
        BF        L51,EQ                ; |737| 
        ; branchcc occurs ; |737| 
        MOV       AL,*+XAR2[4]          ; |737| 
        BF        L51,EQ                ; |737| 
        ; branchcc occurs ; |737| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |739| 
        MOVB      ACC,#12
        LCR       #_spiCmd              ; |739| 
        ; call occurs [#_spiCmd] ; |739| 
        TEST      ACC                   ; |739| 
        BF        L51,EQ                ; |739| 
        ; branchcc occurs ; |739| 
L50:    
        LCR       #_spiCShi             ; |741| 
        ; call occurs [#_spiCShi] ; |741| 
        MOVB      AL,#103               ; |745| 
        MOV       *+XAR2[3],#0          ; |742| 
        BF        L52,UNC               ; |745| 
        ; branch occurs ; |745| 
L51:    
        MOVB      AL,#0
L52:    
        SUBB      SP,#6                 ; |748| 
        MOVL      XAR3,*--SP            ; |748| 
        MOVL      XAR2,*--SP            ; |748| 
        MOVL      XAR1,*--SP            ; |748| 
	.dwpsn	"mmc_mcf.c",749,1
        LRETR
        ; return occurs

DW$91	.dwtag  DW_TAG_loop
	.dwattr DW$91, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mmc_mcf.asm:L41:1:1471518981")
	.dwattr DW$91, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$91, DW_AT_begin_line(0x2af)
	.dwattr DW$91, DW_AT_end_line(0x2df)
DW$92	.dwtag  DW_TAG_loop_range
	.dwattr DW$92, DW_AT_low_pc(DW$L$_spiGetDataBlock$13$B)
	.dwattr DW$92, DW_AT_high_pc(DW$L$_spiGetDataBlock$13$E)
DW$93	.dwtag  DW_TAG_loop_range
	.dwattr DW$93, DW_AT_low_pc(DW$L$_spiGetDataBlock$15$B)
	.dwattr DW$93, DW_AT_high_pc(DW$L$_spiGetDataBlock$15$E)
DW$94	.dwtag  DW_TAG_loop_range
	.dwattr DW$94, DW_AT_low_pc(DW$L$_spiGetDataBlock$17$B)
	.dwattr DW$94, DW_AT_high_pc(DW$L$_spiGetDataBlock$17$E)
DW$95	.dwtag  DW_TAG_loop_range
	.dwattr DW$95, DW_AT_low_pc(DW$L$_spiGetDataBlock$24$B)
	.dwattr DW$95, DW_AT_high_pc(DW$L$_spiGetDataBlock$24$E)
DW$96	.dwtag  DW_TAG_loop_range
	.dwattr DW$96, DW_AT_low_pc(DW$L$_spiGetDataBlock$26$B)
	.dwattr DW$96, DW_AT_high_pc(DW$L$_spiGetDataBlock$26$E)

DW$97	.dwtag  DW_TAG_loop
	.dwattr DW$97, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mmc_mcf.asm:L43:2:1471518981")
	.dwattr DW$97, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$97, DW_AT_begin_line(0x2bd)
	.dwattr DW$97, DW_AT_end_line(0x2cc)
DW$98	.dwtag  DW_TAG_loop_range
	.dwattr DW$98, DW_AT_low_pc(DW$L$_spiGetDataBlock$16$B)
	.dwattr DW$98, DW_AT_high_pc(DW$L$_spiGetDataBlock$16$E)
	.dwendtag DW$97


DW$99	.dwtag  DW_TAG_loop
	.dwattr DW$99, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mmc_mcf.asm:L44:2:1471518981")
	.dwattr DW$99, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$99, DW_AT_begin_line(0x2cf)
	.dwattr DW$99, DW_AT_end_line(0x2d6)
DW$100	.dwtag  DW_TAG_loop_range
	.dwattr DW$100, DW_AT_low_pc(DW$L$_spiGetDataBlock$18$B)
	.dwattr DW$100, DW_AT_high_pc(DW$L$_spiGetDataBlock$18$E)
DW$101	.dwtag  DW_TAG_loop_range
	.dwattr DW$101, DW_AT_low_pc(DW$L$_spiGetDataBlock$19$B)
	.dwattr DW$101, DW_AT_high_pc(DW$L$_spiGetDataBlock$19$E)
DW$102	.dwtag  DW_TAG_loop_range
	.dwattr DW$102, DW_AT_low_pc(DW$L$_spiGetDataBlock$20$B)
	.dwattr DW$102, DW_AT_high_pc(DW$L$_spiGetDataBlock$20$E)
DW$103	.dwtag  DW_TAG_loop_range
	.dwattr DW$103, DW_AT_low_pc(DW$L$_spiGetDataBlock$21$B)
	.dwattr DW$103, DW_AT_high_pc(DW$L$_spiGetDataBlock$21$E)
DW$104	.dwtag  DW_TAG_loop_range
	.dwattr DW$104, DW_AT_low_pc(DW$L$_spiGetDataBlock$22$B)
	.dwattr DW$104, DW_AT_high_pc(DW$L$_spiGetDataBlock$22$E)
DW$105	.dwtag  DW_TAG_loop_range
	.dwattr DW$105, DW_AT_low_pc(DW$L$_spiGetDataBlock$23$B)
	.dwattr DW$105, DW_AT_high_pc(DW$L$_spiGetDataBlock$23$E)
	.dwendtag DW$99

	.dwendtag DW$91

	.dwattr DW$86, DW_AT_end_file("mmc_mcf.c")
	.dwattr DW$86, DW_AT_end_line(0x2ed)
	.dwattr DW$86, DW_AT_end_column(0x01)
	.dwendtag DW$86

	.sect	".text"

DW$106	.dwtag  DW_TAG_subprogram, DW_AT_name("spiSetDataBlock"), DW_AT_symbol_name("_spiSetDataBlock")
	.dwattr DW$106, DW_AT_low_pc(_spiSetDataBlock)
	.dwattr DW$106, DW_AT_high_pc(0x00)
	.dwattr DW$106, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$106, DW_AT_begin_line(0x301)
	.dwattr DW$106, DW_AT_begin_column(0x0c)
	.dwattr DW$106, DW_AT_frame_base[DW_OP_breg20 -16]
	.dwattr DW$106, DW_AT_skeletal(0x01)
	.dwpsn	"mmc_mcf.c",769,93

;***************************************************************
;* FNAME: _spiSetDataBlock              FR SIZE:  14           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  6 Auto,  6 SOE     *
;***************************************************************

_spiSetDataBlock:
;* AR4   assigned to _dwaddr
DW$107	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dwaddr"), DW_AT_symbol_name("_dwaddr")
	.dwattr DW$107, DW_AT_type(*DW$T$96)
	.dwattr DW$107, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _addr
DW$108	.dwtag  DW_TAG_formal_parameter, DW_AT_name("addr"), DW_AT_symbol_name("_addr")
	.dwattr DW$108, DW_AT_type(*DW$T$13)
	.dwattr DW$108, DW_AT_location[DW_OP_reg0]
DW$109	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cnt"), DW_AT_symbol_name("_cnt")
	.dwattr DW$109, DW_AT_type(*DW$T$10)
	.dwattr DW$109, DW_AT_location[DW_OP_breg20 -17]
;* AR5   assigned to _user_ptr
DW$110	.dwtag  DW_TAG_formal_parameter, DW_AT_name("user_ptr"), DW_AT_symbol_name("_user_ptr")
	.dwattr DW$110, DW_AT_type(*DW$T$3)
	.dwattr DW$110, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#8
        MOVL      XAR3,ACC              ; |769| 
        MOV       AL,*-SP[17]           ; |769| 
        MOV       *-SP[3],AL            ; |769| 
        LCR       #_spiCSlow            ; |782| 
        ; call occurs [#_spiCSlow] ; |782| 
        MOVL      XAR1,XAR4             ; |769| 
        MOVL      XAR2,XAR5             ; |772| 
        MOVB      AH,#0
        CMPB      AL,#2                 ; |784| 
        BF        L53,LT                ; |784| 
        ; branchcc occurs ; |784| 
        MOVB      AH,#1                 ; |784| 
L53:    
        MOV       *-SP[4],AH            ; |784| 
        LCR       #_spiWaitBusy         ; |784| 
        ; call occurs [#_spiWaitBusy] ; |784| 
        CMPB      AL,#0                 ; |784| 
        BF        L69,NEQ               ; |784| 
        ; branchcc occurs ; |784| 
        MOV       AL,*-SP[4]
        BF        L55,EQ                ; |794| 
        ; branchcc occurs ; |794| 
        MOV       AL,*+XAR2[4]          ; |794| 
        BF        L54,NEQ               ; |794| 
        ; branchcc occurs ; |794| 
        SETC      SXM
        MOV       ACC,*-SP[3]           ; |796| 
        MOVL      *-SP[2],ACC           ; |796| 
        MOVB      ACC,#23
        LCR       #_spiCmd              ; |796| 
        ; call occurs [#_spiCmd] ; |796| 
        TEST      ACC                   ; |796| 
        BF        L57,NEQ               ; |796| 
        ; branchcc occurs ; |796| 
L54:    
        MOV       AL,*-SP[4]
        BF        L55,EQ                ; |806| 
        ; branchcc occurs ; |806| 
        MOVB      ACC,#25
        BF        L56,UNC               ; |806| 
        ; branch occurs ; |806| 
L55:    
        MOVB      ACC,#24
L56:    
        MOVL      *-SP[2],XAR3          ; |806| 
        LCR       #_spiCmd              ; |806| 
        ; call occurs [#_spiCmd] ; |806| 
        TEST      ACC                   ; |806| 
        BF        L58,EQ                ; |806| 
        ; branchcc occurs ; |806| 
L57:    
        LCR       #_spiCShi             ; |808| 
        ; call occurs [#_spiCShi] ; |808| 
        MOVB      AL,#103               ; |812| 
        MOV       *+XAR2[3],#0          ; |809| 
        BF        L71,UNC               ; |812| 
        ; branch occurs ; |812| 
L58:    
        MOV       AL,*-SP[3]
        BF        L68,EQ                ; |815| 
        ; branchcc occurs ; |815| 
L59:    
DW$L$_spiSetDataBlock$13$B:
	.dwpsn	"mmc_mcf.c",816,0
        MOV       AL,*-SP[4]            ; |821| 
        MOVB      XAR3,#0
        BF        L60,EQ                ; |822| 
        ; branchcc occurs ; |822| 
DW$L$_spiSetDataBlock$13$E:
DW$L$_spiSetDataBlock$14$B:
        MOV       AL,*+XAR2[4]          ; |822| 
        BF        L61,NEQ               ; |822| 
        ; branchcc occurs ; |822| 
DW$L$_spiSetDataBlock$14$E:
L60:    
DW$L$_spiSetDataBlock$15$B:
        MOVB      ACC,#0
        SUBB      ACC,#2
        BF        L62,UNC               ; |823| 
        ; branch occurs ; |823| 
DW$L$_spiSetDataBlock$15$E:
L61:    
DW$L$_spiSetDataBlock$16$B:
        MOVB      ACC,#0
        SUBB      ACC,#4
DW$L$_spiSetDataBlock$16$E:
L62:    
DW$L$_spiSetDataBlock$17$B:
        LCR       #_spitxlong           ; |822| 
        ; call occurs [#_spitxlong] ; |822| 
        MOVB      ACC,#0
	.dwpsn	"mmc_mcf.c",825,0
        MOVL      *-SP[6],ACC           ; |825| 
DW$L$_spiSetDataBlock$17$E:
L63:    
DW$L$_spiSetDataBlock$18$B:
        MOV       AL,*XAR1++            ; |827| 
        MOV       T,#24                 ; |828| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |828| 
        MOVL      *-SP[8],ACC           ; |828| 
        MOVL      XAR6,*-SP[8]          ; |830| 
        CLRC      SXM
        MOV       AL,*XAR1++            ; |829| 
        MOV       ACC,AL << 16          ; |830| 
        ADDL      XAR6,ACC
        MOVL      *-SP[8],XAR6          ; |830| 
        MOV       AL,*XAR1++            ; |831| 
        MOV       ACC,AL << 8           ; |832| 
        ADDL      XAR6,ACC
        MOVL      *-SP[8],XAR6          ; |832| 
        MOV       AL,*XAR1++            ; |833| 
        ANDB      AL,#255               ; |834| 
        MOVZ      AR6,AL                ; |834| 
        MOVL      ACC,*-SP[8]           ; |834| 
        ADDU      ACC,AR6               ; |834| 
        MOVL      *-SP[8],ACC           ; |834| 
        LCR       #_spitxlong           ; |837| 
        ; call occurs [#_spitxlong] ; |837| 
        MOV       AL,AR3                ; |839| 
        MOVL      XAR4,#_CRCtbl         ; |839| 
        XOR       AL,*-SP[7]            ; |839| 
        CLRC      SXM
        MOVL      XAR5,XAR4             ; |839| 
        MOVU      ACC,AL
        SFR       ACC,8                 ; |839| 
        LSL       ACC,1                 ; |839| 
        ADDL      XAR5,ACC
        MOVL      ACC,XAR3              ; |839| 
        LSL       ACC,8                 ; |839| 
        XOR       AH,*+XAR5[1]          ; |839| 
        XOR       AL,*+XAR5[0]          ; |839| 
        MOVL      XAR3,ACC              ; |839| 
        MOVL      ACC,*-SP[8]           ; |839| 
        SFR       ACC,8                 ; |840| 
        MOV       AH,AR3                ; |840| 
        XOR       AH,AL                 ; |840| 
        MOVL      XAR5,XAR4             ; |840| 
        MOVU      ACC,AH
        SFR       ACC,8                 ; |840| 
        LSL       ACC,1                 ; |840| 
        ADDL      XAR5,ACC
        MOVL      ACC,XAR3              ; |840| 
        LSL       ACC,8                 ; |840| 
        XOR       AH,*+XAR5[1]          ; |840| 
        XOR       AL,*+XAR5[0]          ; |840| 
        MOVL      XAR3,ACC              ; |840| 
        MOV       AL,*-SP[8]            ; |841| 
        XOR       AL,AR3                ; |841| 
        MOVL      XAR5,XAR4             ; |841| 
        MOVU      ACC,AL
        SFR       ACC,8                 ; |841| 
        LSL       ACC,1                 ; |841| 
        ADDL      XAR5,ACC
        MOVL      ACC,XAR3              ; |841| 
        LSL       ACC,8                 ; |841| 
        XOR       AH,*+XAR5[1]          ; |841| 
        XOR       AL,*+XAR5[0]          ; |841| 
        MOVL      XAR3,ACC              ; |841| 
        SFR       ACC,8                 ; |842| 
        MOV       AH,*-SP[8]            ; |842| 
        XOR       AH,AL                 ; |842| 
        ANDB      AH,#0xff              ; |842| 
        MOVU      ACC,AH
        LSL       ACC,1                 ; |842| 
        ADDL      XAR4,ACC
        MOVL      ACC,XAR3              ; |842| 
        LSL       ACC,8                 ; |842| 
        XOR       AH,*+XAR4[1]          ; |842| 
        XOR       AL,*+XAR4[0]          ; |842| 
        MOVL      XAR3,ACC              ; |842| 
        MOVL      ACC,*-SP[6]           ; |842| 
        ADDB      ACC,#1                ; |825| 
        MOVL      *-SP[6],ACC           ; |825| 
        MOVL      XAR6,*-SP[6]          ; |825| 
        MOVB      ACC,#128
        CMPL      ACC,XAR6              ; |825| 
	.dwpsn	"mmc_mcf.c",843,0
        BF        L63,GT                ; |825| 
        ; branchcc occurs ; |825| 
DW$L$_spiSetDataBlock$18$E:
DW$L$_spiSetDataBlock$19$B:
        MOV       AL,AR3                ; |845| 
        LCR       #_spitxword           ; |845| 
        ; call occurs [#_spitxword] ; |845| 
        LCR       #_spiWaitStartBit     ; |847| 
        ; call occurs [#_spiWaitStartBit] ; |847| 
        CMPB      AL,#0                 ; |847| 
        BF        L64,EQ                ; |847| 
        ; branchcc occurs ; |847| 
DW$L$_spiSetDataBlock$19$E:
        LCR       #_spiCShi             ; |848| 
        ; call occurs [#_spiCShi] ; |848| 
        MOVB      AL,#104               ; |851| 
        BF        L71,UNC               ; |851| 
        ; branch occurs ; |851| 
L64:    
DW$L$_spiSetDataBlock$21$B:
        MOVB      ACC,#0
        MOVB      XAR3,#0
	.dwpsn	"mmc_mcf.c",855,0
        MOVL      *-SP[8],ACC           ; |854| 
DW$L$_spiSetDataBlock$21$E:
L65:    
DW$L$_spiSetDataBlock$22$B:
        MOVL      ACC,*-SP[8]
        LSL       ACC,1                 ; |856| 
        MOVL      *-SP[8],ACC           ; |856| 
        LCR       #_spigetbit           ; |857| 
        ; call occurs [#_spigetbit] ; |857| 
        TEST      ACC                   ; |857| 
        BF        L66,EQ                ; |857| 
        ; branchcc occurs ; |857| 
DW$L$_spiSetDataBlock$22$E:
DW$L$_spiSetDataBlock$23$B:
        MOV       AL,*-SP[8]
        ORB       AL,#0x01              ; |857| 
        MOV       *-SP[8],AL            ; |857| 
DW$L$_spiSetDataBlock$23$E:
L66:    
DW$L$_spiSetDataBlock$24$B:
        MOVL      ACC,XAR3
        ADDB      ACC,#1                ; |855| 
        MOVL      XAR3,ACC              ; |855| 
        MOVB      ACC,#4
        CMPL      ACC,XAR3              ; |855| 
	.dwpsn	"mmc_mcf.c",858,0
        BF        L65,GT                ; |855| 
        ; branchcc occurs ; |855| 
DW$L$_spiSetDataBlock$24$E:
DW$L$_spiSetDataBlock$25$B:
        MOV       AL,*-SP[8]
        ANDB      AL,#0x1f              ; |860| 
        MOV       *-SP[8],AL            ; |860| 
        MOV       *-SP[7],#0            ; |860| 
        MOVL      XAR6,*-SP[8]          ; |860| 
        MOVB      ACC,#5
        CMPL      ACC,XAR6              ; |860| 
        BF        L67,EQ                ; |860| 
        ; branchcc occurs ; |860| 
DW$L$_spiSetDataBlock$25$E:
        LCR       #_spiCShi             ; |863| 
        ; call occurs [#_spiCShi] ; |863| 
        MOVB      AL,#107               ; |866| 
        BF        L71,UNC               ; |866| 
        ; branch occurs ; |866| 
L67:    
DW$L$_spiSetDataBlock$27$B:
        LCR       #_spiWaitBusy         ; |869| 
        ; call occurs [#_spiWaitBusy] ; |869| 
        CMPB      AL,#0                 ; |869| 
        BF        L69,NEQ               ; |869| 
        ; branchcc occurs ; |869| 
DW$L$_spiSetDataBlock$27$E:
DW$L$_spiSetDataBlock$28$B:
        DEC       *-SP[3]               ; |815| 
	.dwpsn	"mmc_mcf.c",875,0
        BF        L59,NEQ               ; |815| 
        ; branchcc occurs ; |815| 
DW$L$_spiSetDataBlock$28$E:
L68:    
        MOV       AL,*-SP[4]
        BF        L70,EQ                ; |877| 
        ; branchcc occurs ; |877| 
        MOV       AL,*+XAR2[4]          ; |877| 
        BF        L70,EQ                ; |877| 
        ; branchcc occurs ; |877| 
        SETC      SXM
        MOV       ACC,#-513 << 0
        LCR       #_spitxlong           ; |879| 
        ; call occurs [#_spitxlong] ; |879| 
        LCR       #_spiWaitBusy         ; |880| 
        ; call occurs [#_spiWaitBusy] ; |880| 
        CMPB      AL,#0                 ; |880| 
        BF        L70,EQ                ; |880| 
        ; branchcc occurs ; |880| 
L69:    
        LCR       #_spiCShi             ; |882| 
        ; call occurs [#_spiCShi] ; |882| 
        MOVB      AL,#105               ; |885| 
        BF        L71,UNC               ; |885| 
        ; branch occurs ; |885| 
L70:    
        LCR       #_spiCShi             ; |889| 
        ; call occurs [#_spiCShi] ; |889| 
        MOVB      AL,#0
L71:    
        SUBB      SP,#8                 ; |890| 
        MOVL      XAR3,*--SP            ; |890| 
        MOVL      XAR2,*--SP            ; |890| 
        MOVL      XAR1,*--SP            ; |890| 
	.dwpsn	"mmc_mcf.c",891,1
        LRETR
        ; return occurs

DW$111	.dwtag  DW_TAG_loop
	.dwattr DW$111, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mmc_mcf.asm:L59:1:1471518981")
	.dwattr DW$111, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$111, DW_AT_begin_line(0x32f)
	.dwattr DW$111, DW_AT_end_line(0x36b)
DW$112	.dwtag  DW_TAG_loop_range
	.dwattr DW$112, DW_AT_low_pc(DW$L$_spiSetDataBlock$13$B)
	.dwattr DW$112, DW_AT_high_pc(DW$L$_spiSetDataBlock$13$E)
DW$113	.dwtag  DW_TAG_loop_range
	.dwattr DW$113, DW_AT_low_pc(DW$L$_spiSetDataBlock$14$B)
	.dwattr DW$113, DW_AT_high_pc(DW$L$_spiSetDataBlock$14$E)
DW$114	.dwtag  DW_TAG_loop_range
	.dwattr DW$114, DW_AT_low_pc(DW$L$_spiSetDataBlock$15$B)
	.dwattr DW$114, DW_AT_high_pc(DW$L$_spiSetDataBlock$15$E)
DW$115	.dwtag  DW_TAG_loop_range
	.dwattr DW$115, DW_AT_low_pc(DW$L$_spiSetDataBlock$16$B)
	.dwattr DW$115, DW_AT_high_pc(DW$L$_spiSetDataBlock$16$E)
DW$116	.dwtag  DW_TAG_loop_range
	.dwattr DW$116, DW_AT_low_pc(DW$L$_spiSetDataBlock$17$B)
	.dwattr DW$116, DW_AT_high_pc(DW$L$_spiSetDataBlock$17$E)
DW$117	.dwtag  DW_TAG_loop_range
	.dwattr DW$117, DW_AT_low_pc(DW$L$_spiSetDataBlock$19$B)
	.dwattr DW$117, DW_AT_high_pc(DW$L$_spiSetDataBlock$19$E)
DW$118	.dwtag  DW_TAG_loop_range
	.dwattr DW$118, DW_AT_low_pc(DW$L$_spiSetDataBlock$21$B)
	.dwattr DW$118, DW_AT_high_pc(DW$L$_spiSetDataBlock$21$E)
DW$119	.dwtag  DW_TAG_loop_range
	.dwattr DW$119, DW_AT_low_pc(DW$L$_spiSetDataBlock$25$B)
	.dwattr DW$119, DW_AT_high_pc(DW$L$_spiSetDataBlock$25$E)
DW$120	.dwtag  DW_TAG_loop_range
	.dwattr DW$120, DW_AT_low_pc(DW$L$_spiSetDataBlock$27$B)
	.dwattr DW$120, DW_AT_high_pc(DW$L$_spiSetDataBlock$27$E)
DW$121	.dwtag  DW_TAG_loop_range
	.dwattr DW$121, DW_AT_low_pc(DW$L$_spiSetDataBlock$28$B)
	.dwattr DW$121, DW_AT_high_pc(DW$L$_spiSetDataBlock$28$E)

DW$122	.dwtag  DW_TAG_loop
	.dwattr DW$122, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mmc_mcf.asm:L63:2:1471518981")
	.dwattr DW$122, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$122, DW_AT_begin_line(0x339)
	.dwattr DW$122, DW_AT_end_line(0x34b)
DW$123	.dwtag  DW_TAG_loop_range
	.dwattr DW$123, DW_AT_low_pc(DW$L$_spiSetDataBlock$18$B)
	.dwattr DW$123, DW_AT_high_pc(DW$L$_spiSetDataBlock$18$E)
	.dwendtag DW$122


DW$124	.dwtag  DW_TAG_loop
	.dwattr DW$124, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mmc_mcf.asm:L65:2:1471518981")
	.dwattr DW$124, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$124, DW_AT_begin_line(0x357)
	.dwattr DW$124, DW_AT_end_line(0x35a)
DW$125	.dwtag  DW_TAG_loop_range
	.dwattr DW$125, DW_AT_low_pc(DW$L$_spiSetDataBlock$22$B)
	.dwattr DW$125, DW_AT_high_pc(DW$L$_spiSetDataBlock$22$E)
DW$126	.dwtag  DW_TAG_loop_range
	.dwattr DW$126, DW_AT_low_pc(DW$L$_spiSetDataBlock$23$B)
	.dwattr DW$126, DW_AT_high_pc(DW$L$_spiSetDataBlock$23$E)
DW$127	.dwtag  DW_TAG_loop_range
	.dwattr DW$127, DW_AT_low_pc(DW$L$_spiSetDataBlock$24$B)
	.dwattr DW$127, DW_AT_high_pc(DW$L$_spiSetDataBlock$24$E)
	.dwendtag DW$124

	.dwendtag DW$111

	.dwattr DW$106, DW_AT_end_file("mmc_mcf.c")
	.dwattr DW$106, DW_AT_end_line(0x37b)
	.dwattr DW$106, DW_AT_end_column(0x01)
	.dwendtag DW$106

	.sect	".text"
	.global	_mmc_readsector

DW$128	.dwtag  DW_TAG_subprogram, DW_AT_name("mmc_readsector"), DW_AT_symbol_name("_mmc_readsector")
	.dwattr DW$128, DW_AT_low_pc(_mmc_readsector)
	.dwattr DW$128, DW_AT_high_pc(0x00)
	.dwattr DW$128, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$128, DW_AT_begin_line(0x38f)
	.dwattr DW$128, DW_AT_begin_column(0x05)
	.dwattr DW$128, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$128, DW_AT_skeletal(0x01)
	.dwpsn	"mmc_mcf.c",911,61

;***************************************************************
;* FNAME: _mmc_readsector               FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            1 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_mmc_readsector:
;* AR4   assigned to _data
DW$129	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$129, DW_AT_type(*DW$T$3)
	.dwattr DW$129, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _sector
DW$130	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sector"), DW_AT_symbol_name("_sector")
	.dwattr DW$130, DW_AT_type(*DW$T$13)
	.dwattr DW$130, DW_AT_location[DW_OP_reg0]
;* AR5   assigned to _p
DW$131	.dwtag  DW_TAG_formal_parameter, DW_AT_name("p"), DW_AT_symbol_name("_p")
	.dwattr DW$131, DW_AT_type(*DW$T$3)
	.dwattr DW$131, DW_AT_location[DW_OP_reg14]
        ADDB      SP,#2
        LSL       ACC,9                 ; |914| 
        MOV       *-SP[1],#1            ; |914| 
        LCR       #_spiGetDataBlock     ; |914| 
        ; call occurs [#_spiGetDataBlock] ; |914| 
        SUBB      SP,#2                 ; |914| 
	.dwpsn	"mmc_mcf.c",915,1
        LRETR
        ; return occurs
	.dwattr DW$128, DW_AT_end_file("mmc_mcf.c")
	.dwattr DW$128, DW_AT_end_line(0x393)
	.dwattr DW$128, DW_AT_end_column(0x01)
	.dwendtag DW$128

	.sect	".text"
	.global	_mmc_readmultiplesector

DW$132	.dwtag  DW_TAG_subprogram, DW_AT_name("mmc_readmultiplesector"), DW_AT_symbol_name("_mmc_readmultiplesector")
	.dwattr DW$132, DW_AT_low_pc(_mmc_readmultiplesector)
	.dwattr DW$132, DW_AT_high_pc(0x00)
	.dwattr DW$132, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$132, DW_AT_begin_line(0x39c)
	.dwattr DW$132, DW_AT_begin_column(0x05)
	.dwattr DW$132, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$132, DW_AT_skeletal(0x01)
	.dwpsn	"mmc_mcf.c",924,77

;***************************************************************
;* FNAME: _mmc_readmultiplesector       FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            1 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_mmc_readmultiplesector:
;* AR4   assigned to _data
DW$133	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$133, DW_AT_type(*DW$T$3)
	.dwattr DW$133, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _sector
DW$134	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sector"), DW_AT_symbol_name("_sector")
	.dwattr DW$134, DW_AT_type(*DW$T$13)
	.dwattr DW$134, DW_AT_location[DW_OP_reg0]
DW$135	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cnt"), DW_AT_symbol_name("_cnt")
	.dwattr DW$135, DW_AT_type(*DW$T$10)
	.dwattr DW$135, DW_AT_location[DW_OP_breg20 -5]
;* AR5   assigned to _p
DW$136	.dwtag  DW_TAG_formal_parameter, DW_AT_name("p"), DW_AT_symbol_name("_p")
	.dwattr DW$136, DW_AT_type(*DW$T$3)
	.dwattr DW$136, DW_AT_location[DW_OP_reg14]
        ADDB      SP,#2
        MOVZ      AR6,*-SP[5]           ; |924| 
        LSL       ACC,9                 ; |927| 
        MOV       *-SP[1],AR6           ; |927| 
        LCR       #_spiGetDataBlock     ; |927| 
        ; call occurs [#_spiGetDataBlock] ; |927| 
        SUBB      SP,#2                 ; |927| 
	.dwpsn	"mmc_mcf.c",928,1
        LRETR
        ; return occurs
	.dwattr DW$132, DW_AT_end_file("mmc_mcf.c")
	.dwattr DW$132, DW_AT_end_line(0x3a0)
	.dwattr DW$132, DW_AT_end_column(0x01)
	.dwendtag DW$132

	.sect	".text"
	.global	_mmc_writesector

DW$137	.dwtag  DW_TAG_subprogram, DW_AT_name("mmc_writesector"), DW_AT_symbol_name("_mmc_writesector")
	.dwattr DW$137, DW_AT_low_pc(_mmc_writesector)
	.dwattr DW$137, DW_AT_high_pc(0x00)
	.dwattr DW$137, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$137, DW_AT_begin_line(0x3b4)
	.dwattr DW$137, DW_AT_begin_column(0x05)
	.dwattr DW$137, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$137, DW_AT_skeletal(0x01)
	.dwpsn	"mmc_mcf.c",948,62

;***************************************************************
;* FNAME: _mmc_writesector              FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            1 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_mmc_writesector:
;* AR4   assigned to _data
DW$138	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$138, DW_AT_type(*DW$T$3)
	.dwattr DW$138, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _sector
DW$139	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sector"), DW_AT_symbol_name("_sector")
	.dwattr DW$139, DW_AT_type(*DW$T$13)
	.dwattr DW$139, DW_AT_location[DW_OP_reg0]
;* AR5   assigned to _p
DW$140	.dwtag  DW_TAG_formal_parameter, DW_AT_name("p"), DW_AT_symbol_name("_p")
	.dwattr DW$140, DW_AT_type(*DW$T$3)
	.dwattr DW$140, DW_AT_location[DW_OP_reg14]
        ADDB      SP,#2
        LSL       ACC,9                 ; |949| 
        MOV       *-SP[1],#1            ; |949| 
        LCR       #_spiSetDataBlock     ; |949| 
        ; call occurs [#_spiSetDataBlock] ; |949| 
        SUBB      SP,#2                 ; |949| 
	.dwpsn	"mmc_mcf.c",950,1
        LRETR
        ; return occurs
	.dwattr DW$137, DW_AT_end_file("mmc_mcf.c")
	.dwattr DW$137, DW_AT_end_line(0x3b6)
	.dwattr DW$137, DW_AT_end_column(0x01)
	.dwendtag DW$137

	.sect	".text"
	.global	_mmc_writemultiplesector

DW$141	.dwtag  DW_TAG_subprogram, DW_AT_name("mmc_writemultiplesector"), DW_AT_symbol_name("_mmc_writemultiplesector")
	.dwattr DW$141, DW_AT_low_pc(_mmc_writemultiplesector)
	.dwattr DW$141, DW_AT_high_pc(0x00)
	.dwattr DW$141, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$141, DW_AT_begin_line(0x3bf)
	.dwattr DW$141, DW_AT_begin_column(0x05)
	.dwattr DW$141, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$141, DW_AT_skeletal(0x01)
	.dwpsn	"mmc_mcf.c",959,78

;***************************************************************
;* FNAME: _mmc_writemultiplesector      FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            1 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_mmc_writemultiplesector:
;* AR4   assigned to _data
DW$142	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$142, DW_AT_type(*DW$T$3)
	.dwattr DW$142, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _sector
DW$143	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sector"), DW_AT_symbol_name("_sector")
	.dwattr DW$143, DW_AT_type(*DW$T$13)
	.dwattr DW$143, DW_AT_location[DW_OP_reg0]
DW$144	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cnt"), DW_AT_symbol_name("_cnt")
	.dwattr DW$144, DW_AT_type(*DW$T$10)
	.dwattr DW$144, DW_AT_location[DW_OP_breg20 -5]
;* AR5   assigned to _p
DW$145	.dwtag  DW_TAG_formal_parameter, DW_AT_name("p"), DW_AT_symbol_name("_p")
	.dwattr DW$145, DW_AT_type(*DW$T$3)
	.dwattr DW$145, DW_AT_location[DW_OP_reg14]
        ADDB      SP,#2
        MOVZ      AR6,*-SP[5]           ; |959| 
        LSL       ACC,9                 ; |960| 
        MOV       *-SP[1],AR6           ; |960| 
        LCR       #_spiSetDataBlock     ; |960| 
        ; call occurs [#_spiSetDataBlock] ; |960| 
        SUBB      SP,#2                 ; |960| 
	.dwpsn	"mmc_mcf.c",961,1
        LRETR
        ; return occurs
	.dwattr DW$141, DW_AT_end_file("mmc_mcf.c")
	.dwattr DW$141, DW_AT_end_line(0x3c1)
	.dwattr DW$141, DW_AT_end_column(0x01)
	.dwendtag DW$141

	.sect	".text"

DW$146	.dwtag  DW_TAG_subprogram, DW_AT_name("spiCSDBlock"), DW_AT_symbol_name("_spiCSDBlock")
	.dwattr DW$146, DW_AT_low_pc(_spiCSDBlock)
	.dwattr DW$146, DW_AT_high_pc(0x00)
	.dwattr DW$146, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$146, DW_AT_begin_line(0x3d5)
	.dwattr DW$146, DW_AT_begin_column(0x0c)
	.dwattr DW$146, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$146, DW_AT_skeletal(0x01)
	.dwpsn	"mmc_mcf.c",981,40

;***************************************************************
;* FNAME: _spiCSDBlock                  FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  2 Auto,  2 SOE     *
;***************************************************************

_spiCSDBlock:
;* AR4   assigned to _user_ptr
DW$147	.dwtag  DW_TAG_formal_parameter, DW_AT_name("user_ptr"), DW_AT_symbol_name("_user_ptr")
	.dwattr DW$147, DW_AT_type(*DW$T$3)
	.dwattr DW$147, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        ADDB      SP,#4
        LCR       #_spiCSlow            ; |986| 
        ; call occurs [#_spiCSlow] ; |986| 
        MOVL      XAR1,XAR4             ; |984| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |987| 
        MOVB      ACC,#9
        LCR       #_spiCmd              ; |987| 
        ; call occurs [#_spiCmd] ; |987| 
        TEST      ACC                   ; |987| 
        BF        L72,EQ                ; |987| 
        ; branchcc occurs ; |987| 
        LCR       #_spiCShi             ; |988| 
        ; call occurs [#_spiCShi] ; |988| 
        MOVB      AL,#103               ; |989| 
        BF        L105,UNC              ; |989| 
        ; branch occurs ; |989| 
L72:    
        LCR       #_spiWaitStartBit     ; |992| 
        ; call occurs [#_spiWaitStartBit] ; |992| 
        CMPB      AL,#0                 ; |992| 
        BF        L73,EQ                ; |992| 
        ; branchcc occurs ; |992| 
        LCR       #_spiCShi             ; |993| 
        ; call occurs [#_spiCShi] ; |993| 
        MOVB      AL,#104               ; |994| 
        BF        L105,UNC              ; |994| 
        ; branch occurs ; |994| 
L73:    
        MOVZ      AR4,SP                ; |999| 
        MOVB      ACC,#0
        MOVL      *-SP[4],ACC           ; |997| 
        SUBB      XAR4,#4               ; |999| 
        MOVB      ACC,#2
        LCR       #_spiDataBits         ; |999| 
        ; call occurs [#_spiDataBits] ; |999| 
        MOVZ      AR4,SP                ; |1000| 
        MOVW      DP,#_g_mmc_type
        MOVL      @_g_mmc_type,ACC      ; |999| 
        SUBB      XAR4,#4               ; |1000| 
        MOVB      ACC,#4
        LCR       #_spiDataBits         ; |1000| 
        ; call occurs [#_spiDataBits] ; |1000| 
        MOVZ      AR4,SP                ; |1001| 
        MOVW      DP,#_g_mmc_type+2
        MOVL      @_g_mmc_type+2,ACC    ; |1000| 
        SUBB      XAR4,#4               ; |1001| 
        MOVB      ACC,#2
        LCR       #_spiDataBits         ; |1001| 
        ; call occurs [#_spiDataBits] ; |1001| 
        MOVZ      AR4,SP                ; |1003| 
        SUBB      XAR4,#4               ; |1003| 
        MOVB      ACC,#8
        LCR       #_spiDataBits         ; |1003| 
        ; call occurs [#_spiDataBits] ; |1003| 
        MOVZ      AR4,SP                ; |1004| 
        MOVW      DP,#_g_mmc_type+4
        MOVL      @_g_mmc_type+4,ACC    ; |1003| 
        SUBB      XAR4,#4               ; |1004| 
        MOVB      ACC,#8
        LCR       #_spiDataBits         ; |1004| 
        ; call occurs [#_spiDataBits] ; |1004| 
        MOVZ      AR4,SP                ; |1005| 
        MOVW      DP,#_g_mmc_type+6
        MOVL      @_g_mmc_type+6,ACC    ; |1004| 
        SUBB      XAR4,#4               ; |1005| 
        MOVB      ACC,#8
        LCR       #_spiDataBits         ; |1005| 
        ; call occurs [#_spiDataBits] ; |1005| 
        MOVZ      AR4,SP                ; |1008| 
        MOVW      DP,#_g_mmc_type+8
        MOVL      @_g_mmc_type+8,ACC    ; |1005| 
        SUBB      XAR4,#4               ; |1008| 
        MOVB      ACC,#12
        LCR       #_spiDataBits         ; |1008| 
        ; call occurs [#_spiDataBits] ; |1008| 
        MOVZ      AR4,SP                ; |1009| 
        MOVW      DP,#_g_mmc_type+10
        MOVL      @_g_mmc_type+10,ACC   ; |1008| 
        SUBB      XAR4,#4               ; |1009| 
        MOVB      ACC,#4
        LCR       #_spiDataBits         ; |1009| 
        ; call occurs [#_spiDataBits] ; |1009| 
        MOVZ      AR4,SP                ; |1010| 
        MOVW      DP,#_g_mmc_type+12
        MOVL      @_g_mmc_type+12,ACC   ; |1009| 
        SUBB      XAR4,#4               ; |1010| 
        MOVB      ACC,#1
        LCR       #_spiDataBits         ; |1010| 
        ; call occurs [#_spiDataBits] ; |1010| 
        MOVZ      AR4,SP                ; |1011| 
        MOVW      DP,#_g_mmc_type+14
        MOVL      @_g_mmc_type+14,ACC   ; |1010| 
        SUBB      XAR4,#4               ; |1011| 
        MOVB      ACC,#1
        LCR       #_spiDataBits         ; |1011| 
        ; call occurs [#_spiDataBits] ; |1011| 
        MOVZ      AR4,SP                ; |1012| 
        MOVW      DP,#_g_mmc_type+16
        MOVL      @_g_mmc_type+16,ACC   ; |1011| 
        SUBB      XAR4,#4               ; |1012| 
        MOVB      ACC,#1
        LCR       #_spiDataBits         ; |1012| 
        ; call occurs [#_spiDataBits] ; |1012| 
        MOVZ      AR4,SP                ; |1013| 
        MOVW      DP,#_g_mmc_type+18
        MOVL      @_g_mmc_type+18,ACC   ; |1012| 
        MOVB      ACC,#1
        SUBB      XAR4,#4               ; |1013| 
        LCR       #_spiDataBits         ; |1013| 
        ; call occurs [#_spiDataBits] ; |1013| 
        MOVZ      AR4,SP                ; |1014| 
        MOVW      DP,#_g_mmc_type+20
        MOVL      @_g_mmc_type+20,ACC   ; |1013| 
        SUBB      XAR4,#4               ; |1014| 
        MOVB      ACC,#2
        LCR       #_spiDataBits         ; |1014| 
        ; call occurs [#_spiDataBits] ; |1014| 
        MOVZ      AR4,SP                ; |1016| 
        SUBB      XAR4,#4               ; |1016| 
        MOVB      ACC,#12
        LCR       #_spiDataBits         ; |1016| 
        ; call occurs [#_spiDataBits] ; |1016| 
        MOVZ      AR4,SP                ; |1017| 
        MOVW      DP,#_g_mmc_type+22
        MOVL      @_g_mmc_type+22,ACC   ; |1016| 
        SUBB      XAR4,#4               ; |1017| 
        MOVB      ACC,#3
        LCR       #_spiDataBits         ; |1017| 
        ; call occurs [#_spiDataBits] ; |1017| 
        MOVZ      AR4,SP                ; |1018| 
        MOVW      DP,#_g_mmc_type+24
        MOVL      @_g_mmc_type+24,ACC   ; |1017| 
        SUBB      XAR4,#4               ; |1018| 
        MOVB      ACC,#3
        LCR       #_spiDataBits         ; |1018| 
        ; call occurs [#_spiDataBits] ; |1018| 
        MOVZ      AR4,SP                ; |1019| 
        MOVW      DP,#_g_mmc_type+26
        MOVL      @_g_mmc_type+26,ACC   ; |1018| 
        SUBB      XAR4,#4               ; |1019| 
        MOVB      ACC,#3
        LCR       #_spiDataBits         ; |1019| 
        ; call occurs [#_spiDataBits] ; |1019| 
        MOVZ      AR4,SP                ; |1020| 
        MOVW      DP,#_g_mmc_type+28
        MOVL      @_g_mmc_type+28,ACC   ; |1019| 
        SUBB      XAR4,#4               ; |1020| 
        MOVB      ACC,#3
        LCR       #_spiDataBits         ; |1020| 
        ; call occurs [#_spiDataBits] ; |1020| 
        MOVZ      AR4,SP                ; |1021| 
        MOVW      DP,#_g_mmc_type+30
        MOVL      @_g_mmc_type+30,ACC   ; |1020| 
        SUBB      XAR4,#4               ; |1021| 
        MOVB      ACC,#3
        LCR       #_spiDataBits         ; |1021| 
        ; call occurs [#_spiDataBits] ; |1021| 
        MOVZ      AR4,SP                ; |1022| 
        MOVW      DP,#_g_mmc_type+32
        MOVL      @_g_mmc_type+32,ACC   ; |1021| 
        SUBB      XAR4,#4               ; |1022| 
        MOVB      ACC,#5
        LCR       #_spiDataBits         ; |1022| 
        ; call occurs [#_spiDataBits] ; |1022| 
        MOVZ      AR4,SP                ; |1023| 
        MOVW      DP,#_g_mmc_type+34
        MOVL      @_g_mmc_type+34,ACC   ; |1022| 
        SUBB      XAR4,#4               ; |1023| 
        MOVB      ACC,#5
        LCR       #_spiDataBits         ; |1023| 
        ; call occurs [#_spiDataBits] ; |1023| 
        MOVZ      AR4,SP                ; |1024| 
        MOVW      DP,#_g_mmc_type+36
        MOVL      @_g_mmc_type+36,ACC   ; |1023| 
        SUBB      XAR4,#4               ; |1024| 
        MOVB      ACC,#5
        LCR       #_spiDataBits         ; |1024| 
        ; call occurs [#_spiDataBits] ; |1024| 
        MOVZ      AR4,SP                ; |1025| 
        MOVW      DP,#_g_mmc_type+38
        MOVL      @_g_mmc_type+38,ACC   ; |1024| 
        MOVB      ACC,#1
        SUBB      XAR4,#4               ; |1025| 
        LCR       #_spiDataBits         ; |1025| 
        ; call occurs [#_spiDataBits] ; |1025| 
        MOVZ      AR4,SP                ; |1026| 
        MOVW      DP,#_g_mmc_type+40
        MOVL      @_g_mmc_type+40,ACC   ; |1025| 
        SUBB      XAR4,#4               ; |1026| 
        MOVB      ACC,#2
        LCR       #_spiDataBits         ; |1026| 
        ; call occurs [#_spiDataBits] ; |1026| 
        MOVZ      AR4,SP                ; |1027| 
        MOVW      DP,#_g_mmc_type+42
        MOVL      @_g_mmc_type+42,ACC   ; |1026| 
        SUBB      XAR4,#4               ; |1027| 
        MOVB      ACC,#3
        LCR       #_spiDataBits         ; |1027| 
        ; call occurs [#_spiDataBits] ; |1027| 
        MOVZ      AR4,SP                ; |1028| 
        MOVW      DP,#_g_mmc_type+44
        MOVL      @_g_mmc_type+44,ACC   ; |1027| 
        SUBB      XAR4,#4               ; |1028| 
        MOVB      ACC,#4
        LCR       #_spiDataBits         ; |1028| 
        ; call occurs [#_spiDataBits] ; |1028| 
        MOVZ      AR4,SP                ; |1029| 
        MOVW      DP,#_g_mmc_type+46
        MOVL      @_g_mmc_type+46,ACC   ; |1028| 
        SUBB      XAR4,#4               ; |1029| 
        MOVB      ACC,#1
        LCR       #_spiDataBits         ; |1029| 
        ; call occurs [#_spiDataBits] ; |1029| 
        MOVZ      AR4,SP                ; |1030| 
        MOVW      DP,#_g_mmc_type+48
        MOVL      @_g_mmc_type+48,ACC   ; |1029| 
        SUBB      XAR4,#4               ; |1030| 
        MOVB      ACC,#4
        LCR       #_spiDataBits         ; |1030| 
        ; call occurs [#_spiDataBits] ; |1030| 
        MOVZ      AR4,SP                ; |1032| 
        SUBB      XAR4,#4               ; |1032| 
        MOVB      ACC,#1
        LCR       #_spiDataBits         ; |1032| 
        ; call occurs [#_spiDataBits] ; |1032| 
        MOVZ      AR4,SP                ; |1033| 
        MOVW      DP,#_g_mmc_type+50
        MOVL      @_g_mmc_type+50,ACC   ; |1032| 
        SUBB      XAR4,#4               ; |1033| 
        MOVB      ACC,#1
        LCR       #_spiDataBits         ; |1033| 
        ; call occurs [#_spiDataBits] ; |1033| 
        MOVZ      AR4,SP                ; |1034| 
        MOVW      DP,#_g_mmc_type+52
        MOVL      @_g_mmc_type+52,ACC   ; |1033| 
        SUBB      XAR4,#4               ; |1034| 
        MOVB      ACC,#1
        LCR       #_spiDataBits         ; |1034| 
        ; call occurs [#_spiDataBits] ; |1034| 
        MOVZ      AR4,SP                ; |1035| 
        MOVW      DP,#_g_mmc_type+54
        MOVL      @_g_mmc_type+54,ACC   ; |1034| 
        SUBB      XAR4,#4               ; |1035| 
        MOVB      ACC,#1
        LCR       #_spiDataBits         ; |1035| 
        ; call occurs [#_spiDataBits] ; |1035| 
        MOVZ      AR4,SP                ; |1036| 
        MOVW      DP,#_g_mmc_type+56
        MOVL      @_g_mmc_type+56,ACC   ; |1035| 
        SUBB      XAR4,#4               ; |1036| 
        MOVB      ACC,#1
        LCR       #_spiDataBits         ; |1036| 
        ; call occurs [#_spiDataBits] ; |1036| 
        MOVZ      AR4,SP                ; |1037| 
        MOVW      DP,#_g_mmc_type+58
        MOVL      @_g_mmc_type+58,ACC   ; |1036| 
        MOVB      ACC,#2
        SUBB      XAR4,#4               ; |1037| 
        LCR       #_spiDataBits         ; |1037| 
        ; call occurs [#_spiDataBits] ; |1037| 
        MOVZ      AR4,SP                ; |1038| 
        MOVW      DP,#_g_mmc_type+60
        MOVL      @_g_mmc_type+60,ACC   ; |1037| 
        SUBB      XAR4,#4               ; |1038| 
        MOVB      ACC,#2
        LCR       #_spiDataBits         ; |1038| 
        ; call occurs [#_spiDataBits] ; |1038| 
        MOVZ      AR4,SP                ; |1039| 
        MOVW      DP,#_g_mmc_type+62
        MOVL      @_g_mmc_type+62,ACC   ; |1038| 
        SUBB      XAR4,#4               ; |1039| 
        MOVB      ACC,#7
        LCR       #_spiDataBits         ; |1039| 
        ; call occurs [#_spiDataBits] ; |1039| 
        MOVZ      AR4,SP                ; |1040| 
        MOVW      DP,#_g_mmc_type+64
        MOVL      @_g_mmc_type+64,ACC   ; |1039| 
        SUBB      XAR4,#4               ; |1040| 
        MOVB      ACC,#1
        LCR       #_spiDataBits         ; |1040| 
        ; call occurs [#_spiDataBits] ; |1040| 
        MOVZ      AR4,SP                ; |1042| 
        MOVB      ACC,#16
        SUBB      XAR4,#4               ; |1042| 
        LCR       #_spiDataBits         ; |1042| 
        ; call occurs [#_spiDataBits] ; |1042| 
        LCR       #_spiCShi             ; |1044| 
        ; call occurs [#_spiCShi] ; |1044| 
        MOVL      ACC,*-SP[4]           ; |1046| 
        BF        L74,EQ                ; |1046| 
        ; branchcc occurs ; |1046| 
        MOVB      AL,#106               ; |1046| 
        BF        L105,UNC              ; |1046| 
        ; branch occurs ; |1046| 
L74:    
        MOVW      DP,#_g_mmc_type+8
        MOVL      ACC,@_g_mmc_type+8    ; |1048| 
        ANDB      AL,#0x07              ; |1048| 
        MOVB      AH,#0
        TEST      ACC                   ; |1048| 
        MOVL      XAR6,ACC              ; |1048| 
        BF        L77,EQ                ; |1048| 
        ; branchcc occurs ; |1048| 
        MOVB      ACC,#1
        CMPL      ACC,XAR6              ; |1048| 
        BF        L76,EQ                ; |1048| 
        ; branchcc occurs ; |1048| 
        MOVB      ACC,#2
        CMPL      ACC,XAR6              ; |1048| 
        BF        L75,EQ                ; |1048| 
        ; branchcc occurs ; |1048| 
        MOVB      ACC,#3
        CMPL      ACC,XAR6              ; |1048| 
        BF        L104,NEQ              ; |1048| 
        ; branchcc occurs ; |1048| 
        MOVL      XAR4,#1000            ; |1052| 
        MOVL      P,XAR4                ; |1052| 
        BF        L79,UNC               ; |1052| 
        ; branch occurs ; |1052| 
L75:    
        MOV       PL,#100
        BF        L78,UNC               ; |1051| 
        ; branch occurs ; |1051| 
L76:    
        MOV       PL,#10
        BF        L78,UNC               ; |1050| 
        ; branch occurs ; |1050| 
L77:    
        MOV       PL,#1
L78:    
        MOV       PH,#0
L79:    
        MOVW      DP,#_g_mmc_type+8
        SETC      SXM
        MOVL      ACC,@_g_mmc_type+8    ; |1055| 
        SFR       ACC,3                 ; |1055| 
        ANDB      AL,#0x0f              ; |1055| 
        MOVB      AH,#0
        MOVL      XAR6,ACC              ; |1055| 
        MOVB      ACC,#15
        CMPL      ACC,XAR6              ; |1055| 
        BF        L100,LO               ; |1055| 
        ; branchcc occurs ; |1055| 
        MOVL      ACC,XAR6              ; |1055| 
        MOVL      XAR5,#SW1             ; |1055| 
        LSL       ACC,1                 ; |1055| 
        ADDL      ACC,XAR5
        MOVL      XAR7,ACC              ; |1055| 
        PREAD     AL,*XAR7              ; |1055| 
        ADDB      XAR7,#1               ; |1055| 
        PREAD     AH,*XAR7              ; |1055| 
        MOVL      XAR7,ACC              ; |1055| 
        LB        *XAR7                 ; |1055| 
        ; branch occurs ; |1055| 
	.sect	".switch"
SW1:	.long	L104	; 0
	.long	L97	; 1
	.long	L95	; 2
	.long	L93	; 3
	.long	L92	; 4
	.long	L91	; 5
	.long	L90	; 6
	.long	L88	; 7
	.long	L87	; 8
	.long	L86	; 9
	.long	L85	; 10
	.long	L84	; 11
	.long	L83	; 12
	.long	L82	; 13
	.long	L81	; 14
	.long	L80	; 15
	.sect	".text"
L80:    
        MOVL      ACC,P
        LSL       ACC,6                 ; |1071| 
        MOVL      XAR6,ACC              ; |1071| 
        MOVL      ACC,P                 ; |1071| 
        LSL       ACC,4                 ; |1071| 
        BF        L98,UNC               ; |1071| 
        ; branch occurs ; |1071| 
L81:    
        MOVB      ACC,#70
        BF        L94,UNC               ; |1070| 
        ; branch occurs ; |1070| 
L82:    
        MOVL      ACC,P
        LSL       ACC,2                 ; |1069| 
        MOVL      XAR6,ACC              ; |1069| 
        MOVL      ACC,P                 ; |1069| 
        LSL       ACC,6                 ; |1069| 
        BF        L89,UNC               ; |1069| 
        ; branch occurs ; |1069| 
L83:    
        MOVB      ACC,#55
        BF        L94,UNC               ; |1068| 
        ; branch occurs ; |1068| 
L84:    
        MOVB      ACC,#50
        BF        L94,UNC               ; |1067| 
        ; branch occurs ; |1067| 
L85:    
        MOVB      ACC,#45
        BF        L94,UNC               ; |1066| 
        ; branch occurs ; |1066| 
L86:    
        MOVL      ACC,P
        LSL       ACC,5                 ; |1065| 
        MOVL      XAR6,ACC              ; |1065| 
        MOVL      ACC,P                 ; |1065| 
        LSL       ACC,3                 ; |1065| 
        BF        L98,UNC               ; |1065| 
        ; branch occurs ; |1065| 
L87:    
        MOVB      ACC,#35
        BF        L94,UNC               ; |1064| 
        ; branch occurs ; |1064| 
L88:    
        MOVL      ACC,P
        LSL       ACC,1                 ; |1063| 
        MOVL      XAR6,ACC              ; |1063| 
        MOVL      ACC,P                 ; |1063| 
        LSL       ACC,5                 ; |1063| 
L89:    
        SUBL      ACC,XAR6
        BF        L99,UNC               ; |1063| 
        ; branch occurs ; |1063| 
L90:    
        MOVB      ACC,#25
        BF        L94,UNC               ; |1062| 
        ; branch occurs ; |1062| 
L91:    
        MOVL      ACC,P
        LSL       ACC,4                 ; |1061| 
        BF        L96,UNC               ; |1061| 
        ; branch occurs ; |1061| 
L92:    
        MOVL      ACC,P
        LSL       ACC,4                 ; |1060| 
        SUBRL     P,ACC                 ; |1060| 
        BF        L100,UNC              ; |1060| 
        ; branch occurs ; |1060| 
L93:    
        MOVB      ACC,#13
L94:    
        MOVL      XT,ACC                ; |1059| 
        IMPYL     ACC,XT,P              ; |1059| 
        BF        L99,UNC               ; |1059| 
        ; branch occurs ; |1059| 
L95:    
        MOVL      ACC,P
        LSL       ACC,3                 ; |1058| 
L96:    
        MOVL      XAR6,ACC              ; |1058| 
        MOVL      ACC,P                 ; |1058| 
        LSL       ACC,2                 ; |1058| 
        BF        L98,UNC               ; |1058| 
        ; branch occurs ; |1058| 
L97:    
        MOVL      ACC,P
        LSL       ACC,3                 ; |1057| 
        MOVL      XAR6,ACC              ; |1057| 
        MOVL      ACC,P                 ; |1057| 
        LSL       ACC,1                 ; |1057| 
L98:    
        ADDL      ACC,XAR6
L99:    
        MOVL      P,ACC                 ; |1057| 
L100:    
        MOVL      ACC,P
        LSL       ACC,1                 ; |1074| 
        ADD       ACC,#117 << 3         ; |1075| 
        MOVL      XAR6,ACC              ; |1075| 
        MOVL      P,ACC                 ; |1075| 
        MOVB      ACC,#0
        RPT       #31
||     SUBCUL    ACC,XAR6              ; |1075| 
        MOVB      ACC,#2
        CMPL      ACC,P                 ; |1075| 
        BF        L101,HI               ; |1075| 
        ; branchcc occurs ; |1075| 
        MOVB      ACC,#255
        CMPL      ACC,P                 ; |1077| 
        BF        L103,HIS              ; |1077| 
        ; branchcc occurs ; |1077| 
        MOV       PL,#255
        BF        L102,UNC              ; |1077| 
        ; branch occurs ; |1077| 
L101:    
        MOV       PL,#2
L102:    
        MOV       PH,#0
L103:    
        MOVL      ACC,P
        ADD       ACC,#3 << 14          ; |1078| 
        MOVL      *+XAR1[6],ACC         ; |1078| 
L104:    
        MOVB      AL,#0
L105:    
        SUBB      SP,#4                 ; |1081| 
        MOVL      XAR1,*--SP            ; |1081| 
	.dwpsn	"mmc_mcf.c",1082,1
        LRETR
        ; return occurs
	.dwattr DW$146, DW_AT_end_file("mmc_mcf.c")
	.dwattr DW$146, DW_AT_end_line(0x43a)
	.dwattr DW$146, DW_AT_end_column(0x01)
	.dwendtag DW$146

	.sect	".text"

DW$148	.dwtag  DW_TAG_subprogram, DW_AT_name("spiSDinit"), DW_AT_symbol_name("_spiSDinit")
	.dwattr DW$148, DW_AT_low_pc(_spiSDinit)
	.dwattr DW$148, DW_AT_high_pc(0x00)
	.dwattr DW$148, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$148, DW_AT_begin_line(0x448)
	.dwattr DW$148, DW_AT_begin_column(0x0c)
	.dwattr DW$148, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$148, DW_AT_skeletal(0x01)
	.dwpsn	"mmc_mcf.c",1096,38

;***************************************************************
;* FNAME: _spiSDinit                    FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_spiSDinit:
;* AR4   assigned to _user_ptr
DW$149	.dwtag  DW_TAG_formal_parameter, DW_AT_name("user_ptr"), DW_AT_symbol_name("_user_ptr")
	.dwattr DW$149, DW_AT_type(*DW$T$3)
	.dwattr DW$149, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOVL      XAR3,XAR4             ; |1100| 
        MOV       *+XAR3[3],#0          ; |1102| 
        ADDB      SP,#2
 eallow             ; Enable accesses to PIE control registers
        MOVB      AL,#2                 ; |1106| 
        MOV       *(0:0x701b),AL        ; |1106| 
        MOVB      AL,#119               ; |1107| 
        MOV       *(0:0x7044),AL        ; |1107| 
 edis               ; Disable accesses to PIE control registers
        SPM       #0
        MOVB      AL,#100               ; |1109| 
        LCR       #_NOPDelay            ; |1109| 
        ; call occurs [#_NOPDelay] ; |1109| 
        LCR       #_spiCSlow            ; |1113| 
        ; call occurs [#_spiCSlow] ; |1113| 
	.dwpsn	"mmc_mcf.c",1114,0
        MOVB      XAR2,#0
L106:    
DW$L$_spiSDinit$2$B:
        MOVB      ACC,#0
        SUBB      ACC,#1
        LCR       #_spitxlong           ; |1114| 
        ; call occurs [#_spitxlong] ; |1114| 
        MOVL      ACC,XAR2              ; |1114| 
        ADDB      ACC,#1                ; |1114| 
        MOVL      XAR2,ACC              ; |1114| 
        MOV       ACC,#1000             ; |1114| 
        CMPL      ACC,XAR2              ; |1114| 
        BF        L106,GT               ; |1114| 
        ; branchcc occurs ; |1114| 
DW$L$_spiSDinit$2$E:
        MOVB      XAR1,#0
        BF        L108,UNC
        ; branch occurs
L107:    
DW$L$_spiSDinit$4$B:
        MOVB      ACC,#10
        CMPL      ACC,XAR1              ; |1119| 
        BF        L116,EQ               ; |1119| 
        ; branchcc occurs ; |1119| 
DW$L$_spiSDinit$4$E:
DW$L$_spiSDinit$5$B:
        MOVL      ACC,XAR1
        ADDB      ACC,#1                ; |1116| 
        MOVL      XAR1,ACC              ; |1116| 
DW$L$_spiSDinit$5$E:
L108:    
DW$L$_spiSDinit$6$B:
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1117| 
        LCR       #_spiCmd              ; |1117| 
        ; call occurs [#_spiCmd] ; |1117| 
        MOVL      XAR2,ACC              ; |1117| 
        MOVB      ACC,#1
        CMPL      ACC,XAR2              ; |1117| 
        BF        L107,NEQ              ; |1117| 
        ; branchcc occurs ; |1117| 
DW$L$_spiSDinit$6$E:
        MOVB      ACC,#0
        SUBB      ACC,#1
        LCR       #_spitxlong           ; |1126| 
        ; call occurs [#_spitxlong] ; |1126| 
	.dwpsn	"mmc_mcf.c",1130,0
        MOVB      XAR1,#0
L109:    
DW$L$_spiSDinit$8$B:
        LCR       #_spiCSlow            ; |1137| 
        ; call occurs [#_spiCSlow] ; |1137| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1138| 
        MOVB      ACC,#1
        LCR       #_spiCmd              ; |1138| 
        ; call occurs [#_spiCmd] ; |1138| 
        TEST      ACC                   ; |1138| 
        BF        L115,NEQ              ; |1138| 
        ; branchcc occurs ; |1138| 
DW$L$_spiSDinit$8$E:
        LCR       #_spiCShi             ; |1139| 
        ; call occurs [#_spiCShi] ; |1139| 
        LCR       #_spiCSlow            ; |1140| 
        ; call occurs [#_spiCSlow] ; |1140| 
        MOVL      XAR4,#512             ; |1148| 
        MOVL      *-SP[2],XAR4          ; |1148| 
        MOVB      ACC,#16
        LCR       #_spiCmd              ; |1148| 
        ; call occurs [#_spiCmd] ; |1148| 
        TEST      ACC                   ; |1148| 
        BF        L111,EQ               ; |1148| 
        ; branchcc occurs ; |1148| 
        LCR       #_spiCShi             ; |1149| 
        ; call occurs [#_spiCShi] ; |1149| 
L110:    
        MOVB      AL,#103               ; |1150| 
        BF        L117,UNC              ; |1150| 
        ; branch occurs ; |1150| 
L111:    
        MOVB      ACC,#0
        SUBB      ACC,#1
        LCR       #_spitxlong           ; |1153| 
        ; call occurs [#_spitxlong] ; |1153| 
        LCR       #_spiCShi             ; |1154| 
        ; call occurs [#_spiCShi] ; |1154| 
        LCR       #_spiCSlow            ; |1156| 
        ; call occurs [#_spiCSlow] ; |1156| 
        MOVB      ACC,#1
        MOVL      *-SP[2],ACC           ; |1158| 
        MOVB      ACC,#59
        LCR       #_spiCmd              ; |1158| 
        ; call occurs [#_spiCmd] ; |1158| 
        TEST      ACC                   ; |1158| 
        BF        L110,NEQ              ; |1158| 
        ; branchcc occurs ; |1158| 
        MOVB      ACC,#0
        SUBB      ACC,#1
        LCR       #_spitxlong           ; |1162| 
        ; call occurs [#_spitxlong] ; |1162| 
        LCR       #_spiCShi             ; |1163| 
        ; call occurs [#_spiCShi] ; |1163| 
        MOVL      XAR4,XAR3             ; |1165| 
        LCR       #_spiCSDBlock         ; |1165| 
        ; call occurs [#_spiCSDBlock] ; |1165| 
        CMPB      AL,#0                 ; |1165| 
        MOVZ      AR1,AL                ; |1165| 
        BF        L112,EQ               ; |1165| 
        ; branchcc occurs ; |1165| 
        LCR       #_spiCShi             ; |1167| 
        ; call occurs [#_spiCShi] ; |1167| 
        MOV       AL,AR1                ; |1167| 
        BF        L117,UNC              ; |1168| 
        ; branch occurs ; |1168| 
L112:    
        MOVB      ACC,#1
        MOVL      *-SP[2],ACC           ; |1171| 
        MOVB      ACC,#23
        LCR       #_spiCmd              ; |1171| 
        ; call occurs [#_spiCmd] ; |1171| 
        TEST      ACC                   ; |1171| 
        BF        L113,NEQ              ; |1171| 
        ; branchcc occurs ; |1171| 
        MOV       *+XAR3[4],#0          ; |1171| 
        BF        L114,UNC              ; |1171| 
        ; branch occurs ; |1171| 
L113:    
        MOV       *+XAR3[4],#1          ; |1171| 
L114:    
        MOV       *+XAR3[3],#1          ; |1173| 
 eallow             ; Enable accesses to PIE control registers
        MOVB      AL,#2                 ; |1176| 
        MOV       *(0:0x701b),AL        ; |1176| 
        MOVB      AL,#3                 ; |1177| 
        MOV       *(0:0x7044),AL        ; |1177| 
 edis               ; Disable accesses to PIE control registers
        SPM       #0
        MOVB      AL,#100               ; |1179| 
        LCR       #_NOPDelay            ; |1179| 
        ; call occurs [#_NOPDelay] ; |1179| 
        MOVB      AL,#0
        BF        L117,UNC              ; |1180| 
        ; branch occurs ; |1180| 
L115:    
DW$L$_spiSDinit$19$B:
        LCR       #_spiCShi             ; |1143| 
        ; call occurs [#_spiCShi] ; |1143| 
        MOVL      ACC,XAR1              ; |1143| 
        ADDB      ACC,#1                ; |1130| 
        MOVL      XAR1,ACC              ; |1130| 
        MOV       ACC,#1000             ; |1130| 
        CMPL      ACC,XAR1              ; |1130| 
	.dwpsn	"mmc_mcf.c",1144,0
        BF        L109,NEQ              ; |1130| 
        ; branchcc occurs ; |1130| 
DW$L$_spiSDinit$19$E:
L116:    
        LCR       #_spiCShi             ; |1133| 
        ; call occurs [#_spiCShi] ; |1133| 
        MOVB      AL,#102               ; |1134| 
L117:    
        SUBB      SP,#2                 ; |1134| 
        MOVL      XAR3,*--SP            ; |1134| 
        MOVL      XAR2,*--SP            ; |1134| 
        MOVL      XAR1,*--SP            ; |1134| 
	.dwpsn	"mmc_mcf.c",1181,1
        LRETR
        ; return occurs

DW$150	.dwtag  DW_TAG_loop
	.dwattr DW$150, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mmc_mcf.asm:L109:1:1471518981")
	.dwattr DW$150, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$150, DW_AT_begin_line(0x46a)
	.dwattr DW$150, DW_AT_end_line(0x478)
DW$151	.dwtag  DW_TAG_loop_range
	.dwattr DW$151, DW_AT_low_pc(DW$L$_spiSDinit$8$B)
	.dwattr DW$151, DW_AT_high_pc(DW$L$_spiSDinit$8$E)
DW$152	.dwtag  DW_TAG_loop_range
	.dwattr DW$152, DW_AT_low_pc(DW$L$_spiSDinit$19$B)
	.dwattr DW$152, DW_AT_high_pc(DW$L$_spiSDinit$19$E)
	.dwendtag DW$150


DW$153	.dwtag  DW_TAG_loop
	.dwattr DW$153, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mmc_mcf.asm:L108:1:1471518981")
	.dwattr DW$153, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$153, DW_AT_begin_line(0x45c)
	.dwattr DW$153, DW_AT_end_line(0x45f)
DW$154	.dwtag  DW_TAG_loop_range
	.dwattr DW$154, DW_AT_low_pc(DW$L$_spiSDinit$6$B)
	.dwattr DW$154, DW_AT_high_pc(DW$L$_spiSDinit$6$E)
DW$155	.dwtag  DW_TAG_loop_range
	.dwattr DW$155, DW_AT_low_pc(DW$L$_spiSDinit$4$B)
	.dwattr DW$155, DW_AT_high_pc(DW$L$_spiSDinit$4$E)
DW$156	.dwtag  DW_TAG_loop_range
	.dwattr DW$156, DW_AT_low_pc(DW$L$_spiSDinit$5$B)
	.dwattr DW$156, DW_AT_high_pc(DW$L$_spiSDinit$5$E)
	.dwendtag DW$153


DW$157	.dwtag  DW_TAG_loop
	.dwattr DW$157, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\mmc_mcf.asm:L106:1:1471518981")
	.dwattr DW$157, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$157, DW_AT_begin_line(0x45a)
	.dwattr DW$157, DW_AT_end_line(0x45a)
DW$158	.dwtag  DW_TAG_loop_range
	.dwattr DW$158, DW_AT_low_pc(DW$L$_spiSDinit$2$B)
	.dwattr DW$158, DW_AT_high_pc(DW$L$_spiSDinit$2$E)
	.dwendtag DW$157

	.dwattr DW$148, DW_AT_end_file("mmc_mcf.c")
	.dwattr DW$148, DW_AT_end_line(0x49d)
	.dwattr DW$148, DW_AT_end_column(0x01)
	.dwendtag DW$148

	.sect	".text"

DW$159	.dwtag  DW_TAG_subprogram, DW_AT_name("mmc_getstatus"), DW_AT_symbol_name("_mmc_getstatus")
	.dwattr DW$159, DW_AT_low_pc(_mmc_getstatus)
	.dwattr DW$159, DW_AT_high_pc(0x00)
	.dwattr DW$159, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$159, DW_AT_begin_line(0x4aa)
	.dwattr DW$159, DW_AT_begin_column(0x0d)
	.dwattr DW$159, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$159, DW_AT_skeletal(0x01)
	.dwpsn	"mmc_mcf.c",1194,43

;***************************************************************
;* FNAME: _mmc_getstatus                FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  2 Auto,  2 SOE     *
;***************************************************************

_mmc_getstatus:
;* AR4   assigned to _user_ptr
DW$160	.dwtag  DW_TAG_formal_parameter, DW_AT_name("user_ptr"), DW_AT_symbol_name("_user_ptr")
	.dwattr DW$160, DW_AT_type(*DW$T$3)
	.dwattr DW$160, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        ADDB      SP,#4
        MOVL      XAR1,XAR4             ; |1196| 
        MOVB      ACC,#0
        MOVL      *-SP[4],ACC           ; |1195| 
        MOV       AL,*+XAR1[3]          ; |1210| 
        BF        L118,NEQ              ; |1210| 
        ; branchcc occurs ; |1210| 
        LCR       #_spiSDinit           ; |1211| 
        ; call occurs [#_spiSDinit] ; |1211| 
L118:    
        LCR       #_spiCSlow            ; |1214| 
        ; call occurs [#_spiCSlow] ; |1214| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1216| 
        MOVB      ACC,#13
        LCR       #_spiCmd              ; |1216| 
        ; call occurs [#_spiCmd] ; |1216| 
        TEST      ACC                   ; |1216| 
        BF        L119,EQ               ; |1216| 
        ; branchcc occurs ; |1216| 
        MOV       AL,*-SP[4]
        ORB       AL,#0x02              ; |1217| 
        MOV       *-SP[4],AL            ; |1217| 
        LCR       #_spiCShi             ; |1218| 
        ; call occurs [#_spiCShi] ; |1218| 
        MOVL      XAR4,XAR1             ; |1219| 
        LCR       #_spiSDinit           ; |1219| 
        ; call occurs [#_spiSDinit] ; |1219| 
L119:    
        LCR       #_spiCShi             ; |1222| 
        ; call occurs [#_spiCShi] ; |1222| 
        MOV       AL,*+XAR1[3]          ; |1225| 
        BF        L120,NEQ              ; |1225| 
        ; branchcc occurs ; |1225| 
        MOV       AL,*-SP[4]
        ORB       AL,#0x01              ; |1225| 
        MOV       *-SP[4],AL            ; |1225| 
L120:    
        MOVL      ACC,*-SP[4]
        SUBB      SP,#4                 ; |1228| 
        MOVL      XAR1,*--SP            ; |1228| 
	.dwpsn	"mmc_mcf.c",1229,1
        LRETR
        ; return occurs
	.dwattr DW$159, DW_AT_end_file("mmc_mcf.c")
	.dwattr DW$159, DW_AT_end_line(0x4cd)
	.dwattr DW$159, DW_AT_end_column(0x01)
	.dwendtag DW$159

	.sect	".text"

DW$161	.dwtag  DW_TAG_subprogram, DW_AT_name("mmc_getphy"), DW_AT_symbol_name("_mmc_getphy")
	.dwattr DW$161, DW_AT_low_pc(_mmc_getphy)
	.dwattr DW$161, DW_AT_high_pc(0x00)
	.dwattr DW$161, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$161, DW_AT_begin_line(0x4de)
	.dwattr DW$161, DW_AT_begin_column(0x0c)
	.dwattr DW$161, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$161, DW_AT_skeletal(0x01)
	.dwpsn	"mmc_mcf.c",1246,50

;***************************************************************
;* FNAME: _mmc_getphy                   FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_mmc_getphy:
;* AR4   assigned to _phy
DW$162	.dwtag  DW_TAG_formal_parameter, DW_AT_name("phy"), DW_AT_symbol_name("_phy")
	.dwattr DW$162, DW_AT_type(*DW$T$29)
	.dwattr DW$162, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _user_ptr
DW$163	.dwtag  DW_TAG_formal_parameter, DW_AT_name("user_ptr"), DW_AT_symbol_name("_user_ptr")
	.dwattr DW$163, DW_AT_type(*DW$T$3)
	.dwattr DW$163, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        MOV       AL,*+XAR5[2]          ; |1250| 
        MOVL      XAR1,XAR4             ; |1246| 
        BF        L121,NEQ              ; |1250| 
        ; branchcc occurs ; |1250| 
        MOVL      XAR4,XAR5             ; |1250| 
        LCR       #_spi_drv_change      ; |1250| 
        ; call occurs [#_spi_drv_change] ; |1250| 
L121:    
        MOVL      XAR4,XAR5             ; |1252| 
        LCR       #_spiSDinit           ; |1252| 
        ; call occurs [#_spiSDinit] ; |1252| 
        CMPB      AL,#0                 ; |1252| 
        BF        L122,NEQ              ; |1252| 
        ; branchcc occurs ; |1252| 
        MOV       *+XAR1[0],#0          ; |1255| 
        MOVW      DP,#_g_mmc_type+32
        MOVB      ACC,#2
        MOV       *+XAR1[1],#63         ; |1256| 
        MOVB      XAR6,#1
        MOV       *+XAR1[2],#255        ; |1257| 
        CLRC      SXM
        ADDL      ACC,@_g_mmc_type+32   ; |1258| 
        MOV       T,AL                  ; |1258| 
        MOVL      ACC,XAR6              ; |1258| 
        LSLL      ACC,T                 ; |1258| 
        MOVW      DP,#_g_mmc_type+12
        MOVL      XAR6,ACC              ; |1258| 
        MOV       T,@_g_mmc_type+12     ; |1258| 
        MOVB      ACC,#1
        LSLL      ACC,T                 ; |1258| 
        MOVL      XT,ACC                ; |1258| 
        MOVW      DP,#_g_mmc_type+22
        MOVB      ACC,#1
        IMPYXUL   P,XT,XAR6             ; |1258| 
        ADDL      ACC,@_g_mmc_type+22   ; |1258| 
        MOVL      XT,ACC                ; |1258| 
        IMPYL     ACC,XT,P              ; |1258| 
        SFR       ACC,9                 ; |1258| 
        MOVL      *+XAR1[4],ACC         ; |1258| 
        MOVB      AL,#0
        MOV       *+XAR1[6],#240        ; |1259| 
L122:    
        MOVL      XAR1,*--SP            ; |1261| 
	.dwpsn	"mmc_mcf.c",1262,1
        LRETR
        ; return occurs
	.dwattr DW$161, DW_AT_end_file("mmc_mcf.c")
	.dwattr DW$161, DW_AT_end_line(0x4ee)
	.dwattr DW$161, DW_AT_end_column(0x01)
	.dwendtag DW$161

	.sect	".text"

DW$164	.dwtag  DW_TAG_subprogram, DW_AT_name("mmc_delfunc"), DW_AT_symbol_name("_mmc_delfunc")
	.dwattr DW$164, DW_AT_low_pc(_mmc_delfunc)
	.dwattr DW$164, DW_AT_high_pc(0x00)
	.dwattr DW$164, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$164, DW_AT_begin_line(0x4f4)
	.dwattr DW$164, DW_AT_begin_column(0x0c)
	.dwattr DW$164, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$164, DW_AT_skeletal(0x01)
	.dwpsn	"mmc_mcf.c",1269,1

;***************************************************************
;* FNAME: _mmc_delfunc                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_mmc_delfunc:
;* AR4   assigned to _user_ptr
DW$165	.dwtag  DW_TAG_formal_parameter, DW_AT_name("user_ptr"), DW_AT_symbol_name("_user_ptr")
	.dwattr DW$165, DW_AT_type(*DW$T$3)
	.dwattr DW$165, DW_AT_location[DW_OP_reg12]
        MOVB      AL,#0
        MOV       *+XAR4[1],#0          ; |1271| 
        MOV       *+XAR4[2],#0          ; |1272| 
	.dwpsn	"mmc_mcf.c",1274,1
        LRETR
        ; return occurs
	.dwattr DW$164, DW_AT_end_file("mmc_mcf.c")
	.dwattr DW$164, DW_AT_end_line(0x4fa)
	.dwattr DW$164, DW_AT_end_column(0x01)
	.dwendtag DW$164

	.sect	".text"
	.global	_mmc_initfunc

DW$166	.dwtag  DW_TAG_subprogram, DW_AT_name("mmc_initfunc"), DW_AT_symbol_name("_mmc_initfunc")
	.dwattr DW$166, DW_AT_low_pc(_mmc_initfunc)
	.dwattr DW$166, DW_AT_high_pc(0x00)
	.dwattr DW$166, DW_AT_begin_file("mmc_mcf.c")
	.dwattr DW$166, DW_AT_begin_line(0x50c)
	.dwattr DW$166, DW_AT_begin_column(0x05)
	.dwattr DW$166, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$166, DW_AT_skeletal(0x01)
	.dwpsn	"mmc_mcf.c",1292,48

;***************************************************************
;* FNAME: _mmc_initfunc                 FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_mmc_initfunc:
;* AR4   assigned to _func
DW$167	.dwtag  DW_TAG_formal_parameter, DW_AT_name("func"), DW_AT_symbol_name("_func")
	.dwattr DW$167, DW_AT_type(*DW$T$104)
	.dwattr DW$167, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _user_ptr
DW$168	.dwtag  DW_TAG_formal_parameter, DW_AT_name("user_ptr"), DW_AT_symbol_name("_user_ptr")
	.dwattr DW$168, DW_AT_type(*DW$T$3)
	.dwattr DW$168, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR3
        MOVL      XAR1,XAR4             ; |1292| 
        MOVL      XAR3,#_MmcDrv         ; |1298| 
        MOV       *+XAR3[1],#0          ; |1298| 
        MOVL      XAR4,#49407           ; |1301| 
        MOV       *+XAR3[2],#0          ; |1299| 
        MOV       *+XAR3[3],#0          ; |1300| 
        MOVL      *+XAR3[6],XAR4        ; |1301| 
        LCR       #_spiInit             ; |1303| 
        ; call occurs [#_spiInit] ; |1303| 
        MOVL      XAR4,#_mmc_readsector ; |1305| 
        MOVL      *+XAR1[4],XAR4        ; |1305| 
        MOVL      XAR4,#_mmc_writesector ; |1306| 
        MOVL      *+XAR1[0],XAR4        ; |1306| 
        MOVL      XAR4,#_mmc_readmultiplesector ; |1307| 
        MOVL      *+XAR1[6],XAR4        ; |1307| 
        MOVL      XAR4,#_mmc_writemultiplesector ; |1308| 
        MOVB      XAR0,#10              ; |1309| 
        MOVL      *+XAR1[2],XAR4        ; |1308| 
        MOVL      XAR4,#_mmc_getstatus  ; |1309| 
        MOVL      *+XAR1[AR0],XAR4      ; |1309| 
        MOVB      XAR0,#8               ; |1310| 
        MOVL      XAR4,#_mmc_getphy     ; |1310| 
        MOVL      *+XAR1[AR0],XAR4      ; |1310| 
        MOVB      XAR0,#12              ; |1311| 
        MOVB      AL,#0
        MOVL      XAR4,#_mmc_delfunc    ; |1311| 
        MOVL      *+XAR1[AR0],XAR4      ; |1311| 
        MOVB      XAR0,#14              ; |1312| 
        MOVL      *+XAR1[AR0],XAR3      ; |1312| 
        MOVL      XAR3,*--SP            ; |1314| 
        MOVL      XAR1,*--SP            ; |1314| 
	.dwpsn	"mmc_mcf.c",1315,1
        LRETR
        ; return occurs
	.dwattr DW$166, DW_AT_end_file("mmc_mcf.c")
	.dwattr DW$166, DW_AT_end_line(0x523)
	.dwattr DW$166, DW_AT_end_column(0x01)
	.dwendtag DW$166

;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_memset
	.global	_TransmitByte
	.global	_ReceiveByte
	.global	_ReadDataFromUart_C
	.global	_NOPDelay
	.global	_gpb
	.global	_gpf
	.global	_settings
	.global	_timers
	.global	_config
	.global	_spiregs
	.global	_receiveC

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x16)

DW$T$81	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$81, DW_AT_language(DW_LANG_C)
DW$169	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$170	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$171	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$80)
	.dwendtag DW$T$81


DW$T$84	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$84, DW_AT_language(DW_LANG_C)
DW$172	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$84


DW$T$86	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$86, DW_AT_language(DW_LANG_C)

DW$T$88	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$88, DW_AT_language(DW_LANG_C)
DW$173	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$6)
	.dwendtag DW$T$88


DW$T$90	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$90, DW_AT_language(DW_LANG_C)
DW$174	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$9)
	.dwendtag DW$T$90


DW$T$92	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$92, DW_AT_language(DW_LANG_C)
DW$175	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$T$92


DW$T$94	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$94, DW_AT_language(DW_LANG_C)
DW$176	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$94

DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)
DW$T$96	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$96, DW_AT_address_class(0x16)
DW$T$9	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned short")
	.dwattr DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$9, DW_AT_byte_size(0x01)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)

DW$T$20	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$20, DW_AT_language(DW_LANG_C)
DW$177	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$178	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$179	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$20


DW$T$23	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)
DW$180	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$181	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$182	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$183	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$23


DW$T$30	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$30, DW_AT_language(DW_LANG_C)
DW$184	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
DW$185	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$30


DW$T$36	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$36, DW_AT_language(DW_LANG_C)
DW$186	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$36


DW$T$99	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$99, DW_AT_language(DW_LANG_C)

DW$T$101	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$101, DW_AT_language(DW_LANG_C)
DW$187	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$96)
DW$188	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$189	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$190	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$101


DW$T$105	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$105, DW_AT_language(DW_LANG_C)
DW$191	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$104)
DW$192	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$105

DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)

DW$T$108	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$108, DW_AT_language(DW_LANG_C)
DW$T$12	.dwtag  DW_TAG_base_type, DW_AT_name("long")
	.dwattr DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$12, DW_AT_byte_size(0x02)

DW$T$33	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$33, DW_AT_language(DW_LANG_C)
DW$193	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$33


DW$T$113	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$113, DW_AT_language(DW_LANG_C)

DW$T$116	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$116, DW_AT_language(DW_LANG_C)
DW$194	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$195	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$115)
	.dwendtag DW$T$116


DW$T$118	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$118, DW_AT_language(DW_LANG_C)
DW$196	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$197	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$T$118

DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)
DW$T$80	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$80, DW_AT_language(DW_LANG_C)
DW$T$115	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$115, DW_AT_address_class(0x16)

DW$T$122	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$122, DW_AT_language(DW_LANG_C)
DW$198	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$199	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$6)
	.dwendtag DW$T$122


DW$T$124	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$124, DW_AT_language(DW_LANG_C)

DW$T$126	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$126, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$126, DW_AT_byte_size(0x200)
DW$200	.dwtag  DW_TAG_subrange_type
	.dwattr DW$200, DW_AT_upper_bound(0xff)
	.dwendtag DW$T$126

DW$T$29	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$28)
	.dwattr DW$T$29, DW_AT_address_class(0x16)
DW$T$104	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$103)
	.dwattr DW$T$104, DW_AT_address_class(0x16)
DW$201	.dwtag  DW_TAG_far_type
	.dwattr DW$201, DW_AT_type(*DW$T$134)
DW$T$135	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$135, DW_AT_type(*DW$201)
DW$202	.dwtag  DW_TAG_far_type
	.dwattr DW$202, DW_AT_type(*DW$T$138)
DW$T$139	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$139, DW_AT_type(*DW$202)
DW$T$142	.dwtag  DW_TAG_typedef, DW_AT_name("settingsstruct"), DW_AT_type(*DW$T$47)
	.dwattr DW$T$142, DW_AT_language(DW_LANG_C)
DW$203	.dwtag  DW_TAG_far_type
	.dwattr DW$203, DW_AT_type(*DW$T$143)
DW$T$144	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$144, DW_AT_type(*DW$203)
DW$T$146	.dwtag  DW_TAG_typedef, DW_AT_name("configstruct"), DW_AT_type(*DW$T$56)
	.dwattr DW$T$146, DW_AT_language(DW_LANG_C)
DW$204	.dwtag  DW_TAG_far_type
	.dwattr DW$204, DW_AT_type(*DW$T$72)
DW$T$147	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$147, DW_AT_type(*DW$204)
DW$T$149	.dwtag  DW_TAG_typedef, DW_AT_name("uartreadC"), DW_AT_type(*DW$T$75)
	.dwattr DW$T$149, DW_AT_language(DW_LANG_C)

DW$T$151	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$150)
	.dwattr DW$T$151, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$151, DW_AT_byte_size(0x10)
DW$205	.dwtag  DW_TAG_subrange_type
	.dwattr DW$205, DW_AT_upper_bound(0x00)
	.dwendtag DW$T$151

DW$T$155	.dwtag  DW_TAG_typedef, DW_AT_name("MMC_TYPE"), DW_AT_type(*DW$T$79)
	.dwattr DW$T$155, DW_AT_language(DW_LANG_C)
DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("F_PHY"), DW_AT_type(*DW$T$19)
	.dwattr DW$T$28, DW_AT_language(DW_LANG_C)
DW$T$103	.dwtag  DW_TAG_typedef, DW_AT_name("F_FUNC"), DW_AT_type(*DW$T$39)
	.dwattr DW$T$103, DW_AT_language(DW_LANG_C)
DW$T$134	.dwtag  DW_TAG_typedef, DW_AT_name("gpbport"), DW_AT_type(*DW$T$42)
	.dwattr DW$T$134, DW_AT_language(DW_LANG_C)
DW$T$138	.dwtag  DW_TAG_typedef, DW_AT_name("gpfport"), DW_AT_type(*DW$T$45)
	.dwattr DW$T$138, DW_AT_language(DW_LANG_C)

DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$47, DW_AT_name("tag_settingsstruct")
	.dwattr DW$T$47, DW_AT_byte_size(0x24)
DW$206	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$206, DW_AT_name("watchdog"), DW_AT_symbol_name("_watchdog")
	.dwattr DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$206, DW_AT_accessibility(DW_ACCESS_public)
DW$207	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$207, DW_AT_name("ledflashflag"), DW_AT_symbol_name("_ledflashflag")
	.dwattr DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$207, DW_AT_accessibility(DW_ACCESS_public)
DW$208	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$208, DW_AT_name("updatesafe"), DW_AT_symbol_name("_updatesafe")
	.dwattr DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$208, DW_AT_accessibility(DW_ACCESS_public)
DW$209	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$209, DW_AT_name("tableconfigtype"), DW_AT_symbol_name("_tableconfigtype")
	.dwattr DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$209, DW_AT_accessibility(DW_ACCESS_public)
DW$210	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$210, DW_AT_name("caltableconfigtype"), DW_AT_symbol_name("_caltableconfigtype")
	.dwattr DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$210, DW_AT_accessibility(DW_ACCESS_public)
DW$211	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$211, DW_AT_name("eventmsgid"), DW_AT_symbol_name("_eventmsgid")
	.dwattr DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$211, DW_AT_accessibility(DW_ACCESS_public)
DW$212	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$212, DW_AT_name("configoperationcomplete"), DW_AT_symbol_name("_configoperationcomplete")
	.dwattr DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$212, DW_AT_accessibility(DW_ACCESS_public)
DW$213	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$213, DW_AT_name("sdcarderr"), DW_AT_symbol_name("_sdcarderr")
	.dwattr DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$213, DW_AT_accessibility(DW_ACCESS_public)
DW$214	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$214, DW_AT_name("sderase"), DW_AT_symbol_name("_sderase")
	.dwattr DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$214, DW_AT_accessibility(DW_ACCESS_public)
DW$215	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$215, DW_AT_name("sdreinit"), DW_AT_symbol_name("_sdreinit")
	.dwattr DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$215, DW_AT_accessibility(DW_ACCESS_public)
DW$216	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$216, DW_AT_name("sdcardupdate"), DW_AT_symbol_name("_sdcardupdate")
	.dwattr DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$216, DW_AT_accessibility(DW_ACCESS_public)
DW$217	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$217, DW_AT_name("cardreadflag"), DW_AT_symbol_name("_cardreadflag")
	.dwattr DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$217, DW_AT_accessibility(DW_ACCESS_public)
DW$218	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$218, DW_AT_name("ignore"), DW_AT_symbol_name("_ignore")
	.dwattr DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$218, DW_AT_accessibility(DW_ACCESS_public)
DW$219	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$219, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$219, DW_AT_accessibility(DW_ACCESS_public)
DW$220	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$220, DW_AT_name("spiinuse"), DW_AT_symbol_name("_spiinuse")
	.dwattr DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$220, DW_AT_accessibility(DW_ACCESS_public)
DW$221	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$221, DW_AT_name("dcpeakhold"), DW_AT_symbol_name("_dcpeakhold")
	.dwattr DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$221, DW_AT_accessibility(DW_ACCESS_public)
DW$222	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$222, DW_AT_name("dcpause"), DW_AT_symbol_name("_dcpause")
	.dwattr DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$222, DW_AT_accessibility(DW_ACCESS_public)
DW$223	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$223, DW_AT_name("mastermode"), DW_AT_symbol_name("_mastermode")
	.dwattr DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$223, DW_AT_accessibility(DW_ACCESS_public)
DW$224	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$224, DW_AT_name("updatescaling"), DW_AT_symbol_name("_updatescaling")
	.dwattr DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$224, DW_AT_accessibility(DW_ACCESS_public)
DW$225	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$225, DW_AT_name("forwardasternflag"), DW_AT_symbol_name("_forwardasternflag")
	.dwattr DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$225, DW_AT_accessibility(DW_ACCESS_public)
DW$226	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$226, DW_AT_name("initprogress"), DW_AT_symbol_name("_initprogress")
	.dwattr DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$226, DW_AT_accessibility(DW_ACCESS_public)
DW$227	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$227, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$227, DW_AT_accessibility(DW_ACCESS_public)
DW$228	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$228, DW_AT_name("slowdowncounter"), DW_AT_symbol_name("_slowdowncounter")
	.dwattr DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$228, DW_AT_accessibility(DW_ACCESS_public)
DW$229	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$229, DW_AT_name("slowdowncondition"), DW_AT_symbol_name("_slowdowncondition")
	.dwattr DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$229, DW_AT_accessibility(DW_ACCESS_public)
DW$230	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$230, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$230, DW_AT_accessibility(DW_ACCESS_public)
DW$231	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$231, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$231, DW_AT_accessibility(DW_ACCESS_public)
DW$232	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$232, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$232, DW_AT_accessibility(DW_ACCESS_public)
DW$233	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$233, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$233, DW_AT_accessibility(DW_ACCESS_public)
DW$234	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$234, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$234, DW_AT_accessibility(DW_ACCESS_public)
DW$235	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$235, DW_AT_name("temperaturealarm"), DW_AT_symbol_name("_temperaturealarm")
	.dwattr DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$235, DW_AT_accessibility(DW_ACCESS_public)
DW$236	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$236, DW_AT_name("temperatureslowdown"), DW_AT_symbol_name("_temperatureslowdown")
	.dwattr DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$236, DW_AT_accessibility(DW_ACCESS_public)
DW$237	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$237, DW_AT_name("anadebug"), DW_AT_symbol_name("_anadebug")
	.dwattr DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$237, DW_AT_accessibility(DW_ACCESS_public)
DW$238	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$238, DW_AT_name("serialdebug"), DW_AT_symbol_name("_serialdebug")
	.dwattr DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr DW$238, DW_AT_accessibility(DW_ACCESS_public)
DW$239	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$239, DW_AT_name("timerrunning"), DW_AT_symbol_name("_timerrunning")
	.dwattr DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$239, DW_AT_accessibility(DW_ACCESS_public)
DW$240	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$240, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$240, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$47

DW$T$143	.dwtag  DW_TAG_typedef, DW_AT_name("timersstruct"), DW_AT_type(*DW$T$49)
	.dwattr DW$T$143, DW_AT_language(DW_LANG_C)

DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$56, DW_AT_name("tag_configstruct")
	.dwattr DW$T$56, DW_AT_byte_size(0x18)
DW$241	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$241, DW_AT_name("filter"), DW_AT_symbol_name("_filter")
	.dwattr DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$241, DW_AT_accessibility(DW_ACCESS_public)
DW$242	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$51)
	.dwattr DW$242, DW_AT_name("alarmenable"), DW_AT_symbol_name("_alarmenable")
	.dwattr DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$242, DW_AT_accessibility(DW_ACCESS_public)
DW$243	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$52)
	.dwattr DW$243, DW_AT_name("trendmax"), DW_AT_symbol_name("_trendmax")
	.dwattr DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$243, DW_AT_accessibility(DW_ACCESS_public)
DW$244	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$53)
	.dwattr DW$244, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$244, DW_AT_accessibility(DW_ACCESS_public)
DW$245	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$54)
	.dwattr DW$245, DW_AT_name("sdsettings"), DW_AT_symbol_name("_sdsettings")
	.dwattr DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$245, DW_AT_accessibility(DW_ACCESS_public)
DW$246	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$55)
	.dwattr DW$246, DW_AT_name("comms"), DW_AT_symbol_name("_comms")
	.dwattr DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$246, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$56


DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$72, DW_AT_name("SPI_REGS")
	.dwattr DW$T$72, DW_AT_byte_size(0x10)
DW$247	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$58)
	.dwattr DW$247, DW_AT_name("SPICCR"), DW_AT_symbol_name("_SPICCR")
	.dwattr DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$247, DW_AT_accessibility(DW_ACCESS_public)
DW$248	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$60)
	.dwattr DW$248, DW_AT_name("SPICTL"), DW_AT_symbol_name("_SPICTL")
	.dwattr DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$248, DW_AT_accessibility(DW_ACCESS_public)
DW$249	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$62)
	.dwattr DW$249, DW_AT_name("SPISTS"), DW_AT_symbol_name("_SPISTS")
	.dwattr DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$249, DW_AT_accessibility(DW_ACCESS_public)
DW$250	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$250, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$250, DW_AT_accessibility(DW_ACCESS_public)
DW$251	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$251, DW_AT_name("SPIBRR"), DW_AT_symbol_name("_SPIBRR")
	.dwattr DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$251, DW_AT_accessibility(DW_ACCESS_public)
DW$252	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$252, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$252, DW_AT_accessibility(DW_ACCESS_public)
DW$253	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$253, DW_AT_name("SPIRXEMU"), DW_AT_symbol_name("_SPIRXEMU")
	.dwattr DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$253, DW_AT_accessibility(DW_ACCESS_public)
DW$254	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$254, DW_AT_name("SPIRXBUF"), DW_AT_symbol_name("_SPIRXBUF")
	.dwattr DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$254, DW_AT_accessibility(DW_ACCESS_public)
DW$255	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$255, DW_AT_name("SPITXBUF"), DW_AT_symbol_name("_SPITXBUF")
	.dwattr DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$255, DW_AT_accessibility(DW_ACCESS_public)
DW$256	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$256, DW_AT_name("SPIDAT"), DW_AT_symbol_name("_SPIDAT")
	.dwattr DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$256, DW_AT_accessibility(DW_ACCESS_public)
DW$257	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$64)
	.dwattr DW$257, DW_AT_name("SPIFFTX"), DW_AT_symbol_name("_SPIFFTX")
	.dwattr DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$257, DW_AT_accessibility(DW_ACCESS_public)
DW$258	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$66)
	.dwattr DW$258, DW_AT_name("SPIFFRX"), DW_AT_symbol_name("_SPIFFRX")
	.dwattr DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$258, DW_AT_accessibility(DW_ACCESS_public)
DW$259	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$68)
	.dwattr DW$259, DW_AT_name("SPIFFCT"), DW_AT_symbol_name("_SPIFFCT")
	.dwattr DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$259, DW_AT_accessibility(DW_ACCESS_public)
DW$260	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$71)
	.dwattr DW$260, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$260, DW_AT_accessibility(DW_ACCESS_public)
DW$261	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$70)
	.dwattr DW$261, DW_AT_name("SPIPRI"), DW_AT_symbol_name("_SPIPRI")
	.dwattr DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$261, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$72


DW$T$75	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$75, DW_AT_name("tag_uartreadC")
	.dwattr DW$T$75, DW_AT_byte_size(0x68)
DW$262	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$262, DW_AT_name("receiveINTR"), DW_AT_symbol_name("_receiveINTR")
	.dwattr DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$262, DW_AT_accessibility(DW_ACCESS_public)
DW$263	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$263, DW_AT_name("currentcharcount"), DW_AT_symbol_name("_currentcharcount")
	.dwattr DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$263, DW_AT_accessibility(DW_ACCESS_public)
DW$264	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$264, DW_AT_name("previouscharcount"), DW_AT_symbol_name("_previouscharcount")
	.dwattr DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$264, DW_AT_accessibility(DW_ACCESS_public)
DW$265	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$73)
	.dwattr DW$265, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$265, DW_AT_accessibility(DW_ACCESS_public)
DW$266	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$74)
	.dwattr DW$266, DW_AT_name("uartcharrx"), DW_AT_symbol_name("_uartcharrx")
	.dwattr DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x67]
	.dwattr DW$266, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$75

DW$T$150	.dwtag  DW_TAG_typedef, DW_AT_name("t_MmcDrv"), DW_AT_type(*DW$T$78)
	.dwattr DW$T$150, DW_AT_language(DW_LANG_C)

DW$T$79	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$79, DW_AT_byte_size(0x42)
DW$267	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$267, DW_AT_name("CSD_STR"), DW_AT_symbol_name("_CSD_STR")
	.dwattr DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$267, DW_AT_accessibility(DW_ACCESS_public)
DW$268	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$268, DW_AT_name("SPEC_VERS"), DW_AT_symbol_name("_SPEC_VERS")
	.dwattr DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$268, DW_AT_accessibility(DW_ACCESS_public)
DW$269	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$269, DW_AT_name("TAAC"), DW_AT_symbol_name("_TAAC")
	.dwattr DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$269, DW_AT_accessibility(DW_ACCESS_public)
DW$270	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$270, DW_AT_name("NSAC"), DW_AT_symbol_name("_NSAC")
	.dwattr DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$270, DW_AT_accessibility(DW_ACCESS_public)
DW$271	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$271, DW_AT_name("TRANSPEED"), DW_AT_symbol_name("_TRANSPEED")
	.dwattr DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$271, DW_AT_accessibility(DW_ACCESS_public)
DW$272	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$272, DW_AT_name("CCC"), DW_AT_symbol_name("_CCC")
	.dwattr DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$272, DW_AT_accessibility(DW_ACCESS_public)
DW$273	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$273, DW_AT_name("R_BL_LEN"), DW_AT_symbol_name("_R_BL_LEN")
	.dwattr DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$273, DW_AT_accessibility(DW_ACCESS_public)
DW$274	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$274, DW_AT_name("R_BL_PART"), DW_AT_symbol_name("_R_BL_PART")
	.dwattr DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$274, DW_AT_accessibility(DW_ACCESS_public)
DW$275	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$275, DW_AT_name("WR_BL_MIS"), DW_AT_symbol_name("_WR_BL_MIS")
	.dwattr DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$275, DW_AT_accessibility(DW_ACCESS_public)
DW$276	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$276, DW_AT_name("RD_BL_MIS"), DW_AT_symbol_name("_RD_BL_MIS")
	.dwattr DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$276, DW_AT_accessibility(DW_ACCESS_public)
DW$277	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$277, DW_AT_name("DSR_IMP"), DW_AT_symbol_name("_DSR_IMP")
	.dwattr DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$277, DW_AT_accessibility(DW_ACCESS_public)
DW$278	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$278, DW_AT_name("CSIZE"), DW_AT_symbol_name("_CSIZE")
	.dwattr DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$278, DW_AT_accessibility(DW_ACCESS_public)
DW$279	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$279, DW_AT_name("RC_MIN"), DW_AT_symbol_name("_RC_MIN")
	.dwattr DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$279, DW_AT_accessibility(DW_ACCESS_public)
DW$280	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$280, DW_AT_name("RC_MAX"), DW_AT_symbol_name("_RC_MAX")
	.dwattr DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$280, DW_AT_accessibility(DW_ACCESS_public)
DW$281	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$281, DW_AT_name("WC_MAX"), DW_AT_symbol_name("_WC_MAX")
	.dwattr DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$281, DW_AT_accessibility(DW_ACCESS_public)
DW$282	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$282, DW_AT_name("WC_MIN"), DW_AT_symbol_name("_WC_MIN")
	.dwattr DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$282, DW_AT_accessibility(DW_ACCESS_public)
DW$283	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$283, DW_AT_name("C_SIZE_M"), DW_AT_symbol_name("_C_SIZE_M")
	.dwattr DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$283, DW_AT_accessibility(DW_ACCESS_public)
DW$284	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$284, DW_AT_name("ERASE_G_S"), DW_AT_symbol_name("_ERASE_G_S")
	.dwattr DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$284, DW_AT_accessibility(DW_ACCESS_public)
DW$285	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$285, DW_AT_name("ERASE_G_M"), DW_AT_symbol_name("_ERASE_G_M")
	.dwattr DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$285, DW_AT_accessibility(DW_ACCESS_public)
DW$286	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$286, DW_AT_name("WP_G_S"), DW_AT_symbol_name("_WP_G_S")
	.dwattr DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$286, DW_AT_accessibility(DW_ACCESS_public)
DW$287	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$287, DW_AT_name("WP_G_EN"), DW_AT_symbol_name("_WP_G_EN")
	.dwattr DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$287, DW_AT_accessibility(DW_ACCESS_public)
DW$288	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$288, DW_AT_name("DEF_ECC"), DW_AT_symbol_name("_DEF_ECC")
	.dwattr DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$288, DW_AT_accessibility(DW_ACCESS_public)
DW$289	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$289, DW_AT_name("R2W_FACT"), DW_AT_symbol_name("_R2W_FACT")
	.dwattr DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$289, DW_AT_accessibility(DW_ACCESS_public)
DW$290	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$290, DW_AT_name("WR_BL_LEN"), DW_AT_symbol_name("_WR_BL_LEN")
	.dwattr DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$290, DW_AT_accessibility(DW_ACCESS_public)
DW$291	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$291, DW_AT_name("WR_BL_PAR"), DW_AT_symbol_name("_WR_BL_PAR")
	.dwattr DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$291, DW_AT_accessibility(DW_ACCESS_public)
DW$292	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$292, DW_AT_name("C_PR_APP"), DW_AT_symbol_name("_C_PR_APP")
	.dwattr DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$292, DW_AT_accessibility(DW_ACCESS_public)
DW$293	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$293, DW_AT_name("F_FORMATG"), DW_AT_symbol_name("_F_FORMATG")
	.dwattr DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$293, DW_AT_accessibility(DW_ACCESS_public)
DW$294	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$294, DW_AT_name("COPY"), DW_AT_symbol_name("_COPY")
	.dwattr DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$294, DW_AT_accessibility(DW_ACCESS_public)
DW$295	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$295, DW_AT_name("P_WR_PROT"), DW_AT_symbol_name("_P_WR_PROT")
	.dwattr DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$295, DW_AT_accessibility(DW_ACCESS_public)
DW$296	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$296, DW_AT_name("T_WR_PROT"), DW_AT_symbol_name("_T_WR_PROT")
	.dwattr DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$296, DW_AT_accessibility(DW_ACCESS_public)
DW$297	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$297, DW_AT_name("F_FORMAT"), DW_AT_symbol_name("_F_FORMAT")
	.dwattr DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$297, DW_AT_accessibility(DW_ACCESS_public)
DW$298	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$298, DW_AT_name("ECC"), DW_AT_symbol_name("_ECC")
	.dwattr DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr DW$298, DW_AT_accessibility(DW_ACCESS_public)
DW$299	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$299, DW_AT_name("CRC7"), DW_AT_symbol_name("_CRC7")
	.dwattr DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$299, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$79


DW$T$71	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$71, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$71, DW_AT_byte_size(0x02)
DW$300	.dwtag  DW_TAG_subrange_type
	.dwattr DW$300, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$71


DW$T$73	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$73, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$73, DW_AT_byte_size(0x64)
DW$301	.dwtag  DW_TAG_subrange_type
	.dwattr DW$301, DW_AT_upper_bound(0x63)
	.dwendtag DW$T$73


DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$19, DW_AT_byte_size(0x08)
DW$302	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$302, DW_AT_name("number_of_cylinders"), DW_AT_symbol_name("_number_of_cylinders")
	.dwattr DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$302, DW_AT_accessibility(DW_ACCESS_public)
DW$303	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$303, DW_AT_name("sector_per_track"), DW_AT_symbol_name("_sector_per_track")
	.dwattr DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$303, DW_AT_accessibility(DW_ACCESS_public)
DW$304	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$304, DW_AT_name("number_of_heads"), DW_AT_symbol_name("_number_of_heads")
	.dwattr DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$304, DW_AT_accessibility(DW_ACCESS_public)
DW$305	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$305, DW_AT_name("number_of_sectors"), DW_AT_symbol_name("_number_of_sectors")
	.dwattr DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$305, DW_AT_accessibility(DW_ACCESS_public)
DW$306	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$6)
	.dwattr DW$306, DW_AT_name("media_descriptor"), DW_AT_symbol_name("_media_descriptor")
	.dwattr DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$306, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$19


DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$39, DW_AT_byte_size(0x10)
DW$307	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$307, DW_AT_name("writesector"), DW_AT_symbol_name("_writesector")
	.dwattr DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$307, DW_AT_accessibility(DW_ACCESS_public)
DW$308	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$308, DW_AT_name("writemultiplesector"), DW_AT_symbol_name("_writemultiplesector")
	.dwattr DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$308, DW_AT_accessibility(DW_ACCESS_public)
DW$309	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$309, DW_AT_name("readsector"), DW_AT_symbol_name("_readsector")
	.dwattr DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$309, DW_AT_accessibility(DW_ACCESS_public)
DW$310	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$310, DW_AT_name("readmultiplesector"), DW_AT_symbol_name("_readmultiplesector")
	.dwattr DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$310, DW_AT_accessibility(DW_ACCESS_public)
DW$311	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$311, DW_AT_name("getphy"), DW_AT_symbol_name("_getphy")
	.dwattr DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$311, DW_AT_accessibility(DW_ACCESS_public)
DW$312	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$312, DW_AT_name("getstatus"), DW_AT_symbol_name("_getstatus")
	.dwattr DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$312, DW_AT_accessibility(DW_ACCESS_public)
DW$313	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$38)
	.dwattr DW$313, DW_AT_name("delfunc"), DW_AT_symbol_name("_delfunc")
	.dwattr DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$313, DW_AT_accessibility(DW_ACCESS_public)
DW$314	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$3)
	.dwattr DW$314, DW_AT_name("user_ptr"), DW_AT_symbol_name("_user_ptr")
	.dwattr DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$314, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39


DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$42, DW_AT_name("taggpbport")
	.dwattr DW$T$42, DW_AT_byte_size(0x01)
DW$315	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$315, DW_AT_name("selunion"), DW_AT_symbol_name("_selunion")
	.dwattr DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$315, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$42


DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$45, DW_AT_name("taggpfport")
	.dwattr DW$T$45, DW_AT_byte_size(0x01)
DW$316	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$44)
	.dwattr DW$316, DW_AT_name("selunion"), DW_AT_symbol_name("_selunion")
	.dwattr DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$316, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$45


DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$46, DW_AT_byte_size(0x02)
DW$317	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$317, DW_AT_name("enb"), DW_AT_symbol_name("_enb")
	.dwattr DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$317, DW_AT_accessibility(DW_ACCESS_public)
DW$318	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$318, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$318, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$46


DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$49, DW_AT_name("tag_timers")
	.dwattr DW$T$49, DW_AT_byte_size(0x4c)
DW$319	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$319, DW_AT_name("update"), DW_AT_symbol_name("_update")
	.dwattr DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$319, DW_AT_accessibility(DW_ACCESS_public)
DW$320	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$320, DW_AT_name("general"), DW_AT_symbol_name("_general")
	.dwattr DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$320, DW_AT_accessibility(DW_ACCESS_public)
DW$321	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$321, DW_AT_name("rxcharTimeout"), DW_AT_symbol_name("_rxcharTimeout")
	.dwattr DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$321, DW_AT_accessibility(DW_ACCESS_public)
DW$322	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$322, DW_AT_name("wiorxtimeout"), DW_AT_symbol_name("_wiorxtimeout")
	.dwattr DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$322, DW_AT_accessibility(DW_ACCESS_public)
DW$323	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$323, DW_AT_name("wiomasterrxtimeout"), DW_AT_symbol_name("_wiomasterrxtimeout")
	.dwattr DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$323, DW_AT_accessibility(DW_ACCESS_public)
DW$324	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$324, DW_AT_name("masterrxtimeout"), DW_AT_symbol_name("_masterrxtimeout")
	.dwattr DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$324, DW_AT_accessibility(DW_ACCESS_public)
DW$325	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$325, DW_AT_name("slaverxtimeout"), DW_AT_symbol_name("_slaverxtimeout")
	.dwattr DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$325, DW_AT_accessibility(DW_ACCESS_public)
DW$326	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$326, DW_AT_name("sectick"), DW_AT_symbol_name("_sectick")
	.dwattr DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$326, DW_AT_accessibility(DW_ACCESS_public)
DW$327	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$327, DW_AT_name("ledflash"), DW_AT_symbol_name("_ledflash")
	.dwattr DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$327, DW_AT_accessibility(DW_ACCESS_public)
DW$328	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$328, DW_AT_name("prtsettle"), DW_AT_symbol_name("_prtsettle")
	.dwattr DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$328, DW_AT_accessibility(DW_ACCESS_public)
DW$329	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$329, DW_AT_name("chantimeout"), DW_AT_symbol_name("_chantimeout")
	.dwattr DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$329, DW_AT_accessibility(DW_ACCESS_public)
DW$330	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$330, DW_AT_name("chanwait"), DW_AT_symbol_name("_chanwait")
	.dwattr DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$330, DW_AT_accessibility(DW_ACCESS_public)
DW$331	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$331, DW_AT_name("pcrxtimeout"), DW_AT_symbol_name("_pcrxtimeout")
	.dwattr DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$331, DW_AT_accessibility(DW_ACCESS_public)
DW$332	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$332, DW_AT_name("pctxtimeout"), DW_AT_symbol_name("_pctxtimeout")
	.dwattr DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$332, DW_AT_accessibility(DW_ACCESS_public)
DW$333	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$333, DW_AT_name("spistatus"), DW_AT_symbol_name("_spistatus")
	.dwattr DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$333, DW_AT_accessibility(DW_ACCESS_public)
DW$334	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$334, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$334, DW_AT_accessibility(DW_ACCESS_public)
DW$335	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$335, DW_AT_name("slaverqst"), DW_AT_symbol_name("_slaverqst")
	.dwattr DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$335, DW_AT_accessibility(DW_ACCESS_public)
DW$336	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$336, DW_AT_name("mastermodebutton"), DW_AT_symbol_name("_mastermodebutton")
	.dwattr DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$336, DW_AT_accessibility(DW_ACCESS_public)
DW$337	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$337, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$337, DW_AT_accessibility(DW_ACCESS_public)
DW$338	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$338, DW_AT_name("calibrate"), DW_AT_symbol_name("_calibrate")
	.dwattr DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$338, DW_AT_accessibility(DW_ACCESS_public)
DW$339	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$339, DW_AT_name("calibrate2"), DW_AT_symbol_name("_calibrate2")
	.dwattr DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$339, DW_AT_accessibility(DW_ACCESS_public)
DW$340	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$340, DW_AT_name("alarmreflash"), DW_AT_symbol_name("_alarmreflash")
	.dwattr DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$340, DW_AT_accessibility(DW_ACCESS_public)
DW$341	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$341, DW_AT_name("slowdownreflash"), DW_AT_symbol_name("_slowdownreflash")
	.dwattr DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr DW$341, DW_AT_accessibility(DW_ACCESS_public)
DW$342	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$342, DW_AT_name("wiorqst"), DW_AT_symbol_name("_wiorqst")
	.dwattr DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$342, DW_AT_accessibility(DW_ACCESS_public)
DW$343	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$343, DW_AT_name("rpmtimeout"), DW_AT_symbol_name("_rpmtimeout")
	.dwattr DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr DW$343, DW_AT_accessibility(DW_ACCESS_public)
DW$344	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$344, DW_AT_name("analogoor"), DW_AT_symbol_name("_analogoor")
	.dwattr DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$344, DW_AT_accessibility(DW_ACCESS_public)
DW$345	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$345, DW_AT_name("motioncal"), DW_AT_symbol_name("_motioncal")
	.dwattr DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr DW$345, DW_AT_accessibility(DW_ACCESS_public)
DW$346	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$346, DW_AT_name("framcheck"), DW_AT_symbol_name("_framcheck")
	.dwattr DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$346, DW_AT_accessibility(DW_ACCESS_public)
DW$347	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$347, DW_AT_name("pcmodbus"), DW_AT_symbol_name("_pcmodbus")
	.dwattr DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr DW$347, DW_AT_accessibility(DW_ACCESS_public)
DW$348	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$348, DW_AT_name("statusreflash"), DW_AT_symbol_name("_statusreflash")
	.dwattr DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$348, DW_AT_accessibility(DW_ACCESS_public)
DW$349	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$349, DW_AT_name("prewarn"), DW_AT_symbol_name("_prewarn")
	.dwattr DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$349, DW_AT_accessibility(DW_ACCESS_public)
DW$350	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$350, DW_AT_name("clocktofram"), DW_AT_symbol_name("_clocktofram")
	.dwattr DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr DW$350, DW_AT_accessibility(DW_ACCESS_public)
DW$351	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$351, DW_AT_name("debugrapidfast"), DW_AT_symbol_name("_debugrapidfast")
	.dwattr DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x3f]
	.dwattr DW$351, DW_AT_accessibility(DW_ACCESS_public)
DW$352	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$352, DW_AT_name("debugupdate"), DW_AT_symbol_name("_debugupdate")
	.dwattr DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$352, DW_AT_accessibility(DW_ACCESS_public)
DW$353	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$353, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr DW$353, DW_AT_accessibility(DW_ACCESS_public)
DW$354	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$354, DW_AT_name("startup"), DW_AT_symbol_name("_startup")
	.dwattr DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr DW$354, DW_AT_accessibility(DW_ACCESS_public)
DW$355	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$355, DW_AT_name("analogsettle"), DW_AT_symbol_name("_analogsettle")
	.dwattr DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr DW$355, DW_AT_accessibility(DW_ACCESS_public)
DW$356	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$356, DW_AT_name("reprogram"), DW_AT_symbol_name("_reprogram")
	.dwattr DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr DW$356, DW_AT_accessibility(DW_ACCESS_public)
DW$357	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$357, DW_AT_name("reprogramtimeout"), DW_AT_symbol_name("_reprogramtimeout")
	.dwattr DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr DW$357, DW_AT_accessibility(DW_ACCESS_public)
DW$358	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$358, DW_AT_name("dcmodestayalive"), DW_AT_symbol_name("_dcmodestayalive")
	.dwattr DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$358, DW_AT_accessibility(DW_ACCESS_public)
DW$359	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$359, DW_AT_name("biteventchange"), DW_AT_symbol_name("_biteventchange")
	.dwattr DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr DW$359, DW_AT_accessibility(DW_ACCESS_public)
DW$360	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$360, DW_AT_name("iSensorReplace"), DW_AT_symbol_name("_iSensorReplace")
	.dwattr DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr DW$360, DW_AT_accessibility(DW_ACCESS_public)
DW$361	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$361, DW_AT_name("deltarpm15Delay"), DW_AT_symbol_name("_deltarpm15Delay")
	.dwattr DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr DW$361, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$49


DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$50, DW_AT_byte_size(0x01)
DW$362	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$362, DW_AT_name("inputtap"), DW_AT_symbol_name("_inputtap")
	.dwattr DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$362, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$50


DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$51, DW_AT_byte_size(0x01)
DW$363	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$363, DW_AT_name("bitmap"), DW_AT_symbol_name("_bitmap")
	.dwattr DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$363, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$51


DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$52, DW_AT_byte_size(0x01)
DW$364	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$364, DW_AT_name("graphvalue"), DW_AT_symbol_name("_graphvalue")
	.dwattr DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$364, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$52


DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$53, DW_AT_byte_size(0x03)
DW$365	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$365, DW_AT_name("chanlowthreshold"), DW_AT_symbol_name("_chanlowthreshold")
	.dwattr DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$365, DW_AT_accessibility(DW_ACCESS_public)
DW$366	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$366, DW_AT_name("chanhighthreshold"), DW_AT_symbol_name("_chanhighthreshold")
	.dwattr DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$366, DW_AT_accessibility(DW_ACCESS_public)
DW$367	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$367, DW_AT_name("sensorscalingfactor"), DW_AT_symbol_name("_sensorscalingfactor")
	.dwattr DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$367, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$53


DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$54, DW_AT_byte_size(0x02)
DW$368	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$368, DW_AT_name("shortlrate"), DW_AT_symbol_name("_shortlrate")
	.dwattr DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$368, DW_AT_accessibility(DW_ACCESS_public)
DW$369	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$369, DW_AT_name("longlrate"), DW_AT_symbol_name("_longlrate")
	.dwattr DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$369, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$54


DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$55, DW_AT_byte_size(0x10)
DW$370	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$370, DW_AT_name("wiorequest"), DW_AT_symbol_name("_wiorequest")
	.dwattr DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$370, DW_AT_accessibility(DW_ACCESS_public)
DW$371	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$371, DW_AT_name("wiocancelled"), DW_AT_symbol_name("_wiocancelled")
	.dwattr DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$371, DW_AT_accessibility(DW_ACCESS_public)
DW$372	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$372, DW_AT_name("wioreceived"), DW_AT_symbol_name("_wioreceived")
	.dwattr DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$372, DW_AT_accessibility(DW_ACCESS_public)
DW$373	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$373, DW_AT_name("slaverequest"), DW_AT_symbol_name("_slaverequest")
	.dwattr DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$373, DW_AT_accessibility(DW_ACCESS_public)
DW$374	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$374, DW_AT_name("slavereceived"), DW_AT_symbol_name("_slavereceived")
	.dwattr DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$374, DW_AT_accessibility(DW_ACCESS_public)
DW$375	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$375, DW_AT_name("slaveretry"), DW_AT_symbol_name("_slaveretry")
	.dwattr DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$375, DW_AT_accessibility(DW_ACCESS_public)
DW$376	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$376, DW_AT_name("pcrequest"), DW_AT_symbol_name("_pcrequest")
	.dwattr DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$376, DW_AT_accessibility(DW_ACCESS_public)
DW$377	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$377, DW_AT_name("pcreqtimeout"), DW_AT_symbol_name("_pcreqtimeout")
	.dwattr DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$377, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$55


DW$T$58	.dwtag  DW_TAG_union_type
	.dwattr DW$T$58, DW_AT_name("SPICCR_REG")
	.dwattr DW$T$58, DW_AT_byte_size(0x01)
DW$378	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$378, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$378, DW_AT_accessibility(DW_ACCESS_public)
DW$379	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$57)
	.dwattr DW$379, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$379, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$58


DW$T$60	.dwtag  DW_TAG_union_type
	.dwattr DW$T$60, DW_AT_name("SPICTL_REG")
	.dwattr DW$T$60, DW_AT_byte_size(0x01)
DW$380	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$380, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$380, DW_AT_accessibility(DW_ACCESS_public)
DW$381	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$59)
	.dwattr DW$381, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$381, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$60


DW$T$62	.dwtag  DW_TAG_union_type
	.dwattr DW$T$62, DW_AT_name("SPISTS_REG")
	.dwattr DW$T$62, DW_AT_byte_size(0x01)
DW$382	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$382, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$382, DW_AT_accessibility(DW_ACCESS_public)
DW$383	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$61)
	.dwattr DW$383, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$383, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$62


DW$T$64	.dwtag  DW_TAG_union_type
	.dwattr DW$T$64, DW_AT_name("SPIFFTX_REG")
	.dwattr DW$T$64, DW_AT_byte_size(0x01)
DW$384	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$384, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$384, DW_AT_accessibility(DW_ACCESS_public)
DW$385	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$63)
	.dwattr DW$385, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$385, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$64


DW$T$66	.dwtag  DW_TAG_union_type
	.dwattr DW$T$66, DW_AT_name("SPIFFRX_REG")
	.dwattr DW$T$66, DW_AT_byte_size(0x01)
DW$386	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$386, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$386, DW_AT_accessibility(DW_ACCESS_public)
DW$387	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$65)
	.dwattr DW$387, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$387, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$66


DW$T$68	.dwtag  DW_TAG_union_type
	.dwattr DW$T$68, DW_AT_name("SPIFFCT_REG")
	.dwattr DW$T$68, DW_AT_byte_size(0x01)
DW$388	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$388, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$388, DW_AT_accessibility(DW_ACCESS_public)
DW$389	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$67)
	.dwattr DW$389, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$389, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$68


DW$T$70	.dwtag  DW_TAG_union_type
	.dwattr DW$T$70, DW_AT_name("SPIPRI_REG")
	.dwattr DW$T$70, DW_AT_byte_size(0x01)
DW$390	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$390, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$390, DW_AT_accessibility(DW_ACCESS_public)
DW$391	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$391, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$391, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$70

DW$T$74	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$74, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$74, DW_AT_byte_size(0x01)

DW$T$78	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$78, DW_AT_byte_size(0x10)
DW$392	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$392, DW_AT_name("cs"), DW_AT_symbol_name("_cs")
	.dwattr DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$392, DW_AT_accessibility(DW_ACCESS_public)
DW$393	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$393, DW_AT_name("use"), DW_AT_symbol_name("_use")
	.dwattr DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$393, DW_AT_accessibility(DW_ACCESS_public)
DW$394	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$394, DW_AT_name("active"), DW_AT_symbol_name("_active")
	.dwattr DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$394, DW_AT_accessibility(DW_ACCESS_public)
DW$395	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$395, DW_AT_name("initok"), DW_AT_symbol_name("_initok")
	.dwattr DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$395, DW_AT_accessibility(DW_ACCESS_public)
DW$396	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$396, DW_AT_name("sd"), DW_AT_symbol_name("_sd")
	.dwattr DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$396, DW_AT_accessibility(DW_ACCESS_public)
DW$397	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$397, DW_AT_name("speed"), DW_AT_symbol_name("_speed")
	.dwattr DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$397, DW_AT_accessibility(DW_ACCESS_public)
DW$398	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$77)
	.dwattr DW$398, DW_AT_name("cd_port"), DW_AT_symbol_name("_cd_port")
	.dwattr DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$398, DW_AT_accessibility(DW_ACCESS_public)
DW$399	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$399, DW_AT_name("cd_bit"), DW_AT_symbol_name("_cd_bit")
	.dwattr DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$399, DW_AT_accessibility(DW_ACCESS_public)
DW$400	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$77)
	.dwattr DW$400, DW_AT_name("wp_port"), DW_AT_symbol_name("_wp_port")
	.dwattr DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$400, DW_AT_accessibility(DW_ACCESS_public)
DW$401	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$401, DW_AT_name("wp_bit"), DW_AT_symbol_name("_wp_bit")
	.dwattr DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$401, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$78

DW$T$77	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$76)
	.dwattr DW$T$77, DW_AT_address_class(0x16)
DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("F_WRITESECTOR"), DW_AT_type(*DW$T$21)
	.dwattr DW$T$22, DW_AT_language(DW_LANG_C)
DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("F_READSECTOR"), DW_AT_type(*DW$T$21)
	.dwattr DW$T$26, DW_AT_language(DW_LANG_C)
DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("F_WRITEMULTIPLESECTOR"), DW_AT_type(*DW$T$24)
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("F_READMULTIPLESECTOR"), DW_AT_type(*DW$T$24)
	.dwattr DW$T$27, DW_AT_language(DW_LANG_C)
DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("F_GETPHY"), DW_AT_type(*DW$T$31)
	.dwattr DW$T$32, DW_AT_language(DW_LANG_C)
DW$T$38	.dwtag  DW_TAG_typedef, DW_AT_name("F_DELFUNC"), DW_AT_type(*DW$T$37)
	.dwattr DW$T$38, DW_AT_language(DW_LANG_C)

DW$T$48	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$48, DW_AT_byte_size(0x0e)
DW$402	.dwtag  DW_TAG_subrange_type
	.dwattr DW$402, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$48

DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("F_GETSTATUS"), DW_AT_type(*DW$T$34)
	.dwattr DW$T$35, DW_AT_language(DW_LANG_C)

DW$T$41	.dwtag  DW_TAG_union_type
	.dwattr DW$T$41, DW_AT_byte_size(0x01)
DW$403	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$403, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$403, DW_AT_accessibility(DW_ACCESS_public)
DW$404	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$404, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$404, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$41


DW$T$44	.dwtag  DW_TAG_union_type
	.dwattr DW$T$44, DW_AT_byte_size(0x01)
DW$405	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$405, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$405, DW_AT_accessibility(DW_ACCESS_public)
DW$406	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$43)
	.dwattr DW$406, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$406, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$44


DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$57, DW_AT_name("SPICCR_BITS")
	.dwattr DW$T$57, DW_AT_byte_size(0x01)
DW$407	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$407, DW_AT_name("SPICHAR"), DW_AT_symbol_name("_SPICHAR")
	.dwattr DW$407, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$407, DW_AT_accessibility(DW_ACCESS_public)
DW$408	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$408, DW_AT_name("SPILBK"), DW_AT_symbol_name("_SPILBK")
	.dwattr DW$408, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$408, DW_AT_accessibility(DW_ACCESS_public)
DW$409	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$409, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$409, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$409, DW_AT_accessibility(DW_ACCESS_public)
DW$410	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$410, DW_AT_name("CLKPOLARITY"), DW_AT_symbol_name("_CLKPOLARITY")
	.dwattr DW$410, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$410, DW_AT_accessibility(DW_ACCESS_public)
DW$411	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$411, DW_AT_name("SPISWRESET"), DW_AT_symbol_name("_SPISWRESET")
	.dwattr DW$411, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$411, DW_AT_accessibility(DW_ACCESS_public)
DW$412	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$412, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$412, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$412, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$57


DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$59, DW_AT_name("SPICTL_BITS")
	.dwattr DW$T$59, DW_AT_byte_size(0x01)
DW$413	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$413, DW_AT_name("SPIINTENA"), DW_AT_symbol_name("_SPIINTENA")
	.dwattr DW$413, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$413, DW_AT_accessibility(DW_ACCESS_public)
DW$414	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$414, DW_AT_name("TALK"), DW_AT_symbol_name("_TALK")
	.dwattr DW$414, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$414, DW_AT_accessibility(DW_ACCESS_public)
DW$415	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$415, DW_AT_name("MASTER_SLAVE"), DW_AT_symbol_name("_MASTER_SLAVE")
	.dwattr DW$415, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$415, DW_AT_accessibility(DW_ACCESS_public)
DW$416	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$416, DW_AT_name("CLK_PHASE"), DW_AT_symbol_name("_CLK_PHASE")
	.dwattr DW$416, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$416, DW_AT_accessibility(DW_ACCESS_public)
DW$417	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$417, DW_AT_name("OVERRUNINTENA"), DW_AT_symbol_name("_OVERRUNINTENA")
	.dwattr DW$417, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$417, DW_AT_accessibility(DW_ACCESS_public)
DW$418	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$418, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$418, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0b)
	.dwattr DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$418, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$59


DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$61, DW_AT_name("SPISTS_BITS")
	.dwattr DW$T$61, DW_AT_byte_size(0x01)
DW$419	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$419, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$419, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x05)
	.dwattr DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$419, DW_AT_accessibility(DW_ACCESS_public)
DW$420	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$420, DW_AT_name("BUFFULL_FLAG"), DW_AT_symbol_name("_BUFFULL_FLAG")
	.dwattr DW$420, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$420, DW_AT_accessibility(DW_ACCESS_public)
DW$421	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$421, DW_AT_name("INT_FLAG"), DW_AT_symbol_name("_INT_FLAG")
	.dwattr DW$421, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$421, DW_AT_accessibility(DW_ACCESS_public)
DW$422	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$422, DW_AT_name("OVERRUN_FLAG"), DW_AT_symbol_name("_OVERRUN_FLAG")
	.dwattr DW$422, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$422, DW_AT_accessibility(DW_ACCESS_public)
DW$423	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$423, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$423, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$423, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$61


DW$T$63	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$63, DW_AT_name("SPIFFTX_BITS")
	.dwattr DW$T$63, DW_AT_byte_size(0x01)
DW$424	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$424, DW_AT_name("TXFFIL"), DW_AT_symbol_name("_TXFFIL")
	.dwattr DW$424, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x05)
	.dwattr DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$424, DW_AT_accessibility(DW_ACCESS_public)
DW$425	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$425, DW_AT_name("TXFFIENA"), DW_AT_symbol_name("_TXFFIENA")
	.dwattr DW$425, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$425, DW_AT_accessibility(DW_ACCESS_public)
DW$426	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$426, DW_AT_name("TXFFINTCLR"), DW_AT_symbol_name("_TXFFINTCLR")
	.dwattr DW$426, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$426, DW_AT_accessibility(DW_ACCESS_public)
DW$427	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$427, DW_AT_name("TXFFINT"), DW_AT_symbol_name("_TXFFINT")
	.dwattr DW$427, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$427, DW_AT_accessibility(DW_ACCESS_public)
DW$428	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$428, DW_AT_name("TXFFST"), DW_AT_symbol_name("_TXFFST")
	.dwattr DW$428, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x05)
	.dwattr DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$428, DW_AT_accessibility(DW_ACCESS_public)
DW$429	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$429, DW_AT_name("TXFIFO"), DW_AT_symbol_name("_TXFIFO")
	.dwattr DW$429, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$429, DW_AT_accessibility(DW_ACCESS_public)
DW$430	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$430, DW_AT_name("SPIFFENA"), DW_AT_symbol_name("_SPIFFENA")
	.dwattr DW$430, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$430, DW_AT_accessibility(DW_ACCESS_public)
DW$431	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$431, DW_AT_name("SPIRST"), DW_AT_symbol_name("_SPIRST")
	.dwattr DW$431, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$431, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$63


DW$T$65	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$65, DW_AT_name("SPIFFRX_BITS")
	.dwattr DW$T$65, DW_AT_byte_size(0x01)
DW$432	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$432, DW_AT_name("RXFFIL"), DW_AT_symbol_name("_RXFFIL")
	.dwattr DW$432, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x05)
	.dwattr DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$432, DW_AT_accessibility(DW_ACCESS_public)
DW$433	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$433, DW_AT_name("RXFFIENA"), DW_AT_symbol_name("_RXFFIENA")
	.dwattr DW$433, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$433, DW_AT_accessibility(DW_ACCESS_public)
DW$434	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$434, DW_AT_name("RXFFINTCLR"), DW_AT_symbol_name("_RXFFINTCLR")
	.dwattr DW$434, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$434, DW_AT_accessibility(DW_ACCESS_public)
DW$435	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$435, DW_AT_name("RXFFINT"), DW_AT_symbol_name("_RXFFINT")
	.dwattr DW$435, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$435, DW_AT_accessibility(DW_ACCESS_public)
DW$436	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$436, DW_AT_name("RXFFST"), DW_AT_symbol_name("_RXFFST")
	.dwattr DW$436, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x05)
	.dwattr DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$436, DW_AT_accessibility(DW_ACCESS_public)
DW$437	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$437, DW_AT_name("RXFIFORESET"), DW_AT_symbol_name("_RXFIFORESET")
	.dwattr DW$437, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$437, DW_AT_accessibility(DW_ACCESS_public)
DW$438	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$438, DW_AT_name("RXFFOVFCLR"), DW_AT_symbol_name("_RXFFOVFCLR")
	.dwattr DW$438, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$438, DW_AT_accessibility(DW_ACCESS_public)
DW$439	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$439, DW_AT_name("RXFFOVF"), DW_AT_symbol_name("_RXFFOVF")
	.dwattr DW$439, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$439, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$65


DW$T$67	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$67, DW_AT_name("SPIFFCT_BITS")
	.dwattr DW$T$67, DW_AT_byte_size(0x01)
DW$440	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$440, DW_AT_name("TXDLY"), DW_AT_symbol_name("_TXDLY")
	.dwattr DW$440, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$440, DW_AT_accessibility(DW_ACCESS_public)
DW$441	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$441, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$441, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$441, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$67


DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$69, DW_AT_name("SPIPRI_BITS")
	.dwattr DW$T$69, DW_AT_byte_size(0x01)
DW$442	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$442, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$442, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$442, DW_AT_accessibility(DW_ACCESS_public)
DW$443	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$443, DW_AT_name("FREE"), DW_AT_symbol_name("_FREE")
	.dwattr DW$443, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$443, DW_AT_accessibility(DW_ACCESS_public)
DW$444	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$444, DW_AT_name("SOFT"), DW_AT_symbol_name("_SOFT")
	.dwattr DW$444, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$444, DW_AT_accessibility(DW_ACCESS_public)
DW$445	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$445, DW_AT_name("PRIORITY"), DW_AT_symbol_name("_PRIORITY")
	.dwattr DW$445, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$445, DW_AT_accessibility(DW_ACCESS_public)
DW$446	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$446, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$446, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x09)
	.dwattr DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$446, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$69

DW$447	.dwtag  DW_TAG_far_type
	.dwattr DW$447, DW_AT_type(*DW$T$6)
DW$T$76	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$76, DW_AT_type(*DW$447)
DW$T$21	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$20)
	.dwattr DW$T$21, DW_AT_address_class(0x16)
DW$T$24	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$23)
	.dwattr DW$T$24, DW_AT_address_class(0x16)
DW$T$31	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$30)
	.dwattr DW$T$31, DW_AT_address_class(0x16)
DW$T$37	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$36)
	.dwattr DW$T$37, DW_AT_address_class(0x16)
DW$T$34	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$33)
	.dwattr DW$T$34, DW_AT_address_class(0x16)

DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$40, DW_AT_byte_size(0x01)
DW$448	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$448, DW_AT_name("s12"), DW_AT_symbol_name("_s12")
	.dwattr DW$448, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$448, DW_AT_accessibility(DW_ACCESS_public)
DW$449	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$449, DW_AT_name("s13"), DW_AT_symbol_name("_s13")
	.dwattr DW$449, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$449, DW_AT_accessibility(DW_ACCESS_public)
DW$450	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$450, DW_AT_name("s14"), DW_AT_symbol_name("_s14")
	.dwattr DW$450, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$450, DW_AT_accessibility(DW_ACCESS_public)
DW$451	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$451, DW_AT_name("s15"), DW_AT_symbol_name("_s15")
	.dwattr DW$451, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$451, DW_AT_accessibility(DW_ACCESS_public)
DW$452	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$452, DW_AT_name("s16"), DW_AT_symbol_name("_s16")
	.dwattr DW$452, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$452, DW_AT_accessibility(DW_ACCESS_public)
DW$453	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$453, DW_AT_name("s17"), DW_AT_symbol_name("_s17")
	.dwattr DW$453, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$453, DW_AT_accessibility(DW_ACCESS_public)
DW$454	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$454, DW_AT_name("s18"), DW_AT_symbol_name("_s18")
	.dwattr DW$454, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$454, DW_AT_accessibility(DW_ACCESS_public)
DW$455	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$455, DW_AT_name("s19"), DW_AT_symbol_name("_s19")
	.dwattr DW$455, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$455, DW_AT_accessibility(DW_ACCESS_public)
DW$456	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$456, DW_AT_name("disp485txen"), DW_AT_symbol_name("_disp485txen")
	.dwattr DW$456, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$456, DW_AT_accessibility(DW_ACCESS_public)
DW$457	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$457, DW_AT_name("disp485rxen"), DW_AT_symbol_name("_disp485rxen")
	.dwattr DW$457, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$457, DW_AT_accessibility(DW_ACCESS_public)
DW$458	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$458, DW_AT_name("gpio1"), DW_AT_symbol_name("_gpio1")
	.dwattr DW$458, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$458, DW_AT_accessibility(DW_ACCESS_public)
DW$459	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$459, DW_AT_name("gpio2"), DW_AT_symbol_name("_gpio2")
	.dwattr DW$459, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$459, DW_AT_accessibility(DW_ACCESS_public)
DW$460	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$460, DW_AT_name("gpio3"), DW_AT_symbol_name("_gpio3")
	.dwattr DW$460, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$460, DW_AT_accessibility(DW_ACCESS_public)
DW$461	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$461, DW_AT_name("gpio4"), DW_AT_symbol_name("_gpio4")
	.dwattr DW$461, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$461, DW_AT_accessibility(DW_ACCESS_public)
DW$462	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$462, DW_AT_name("rtccs"), DW_AT_symbol_name("_rtccs")
	.dwattr DW$462, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$462, DW_AT_accessibility(DW_ACCESS_public)
DW$463	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$463, DW_AT_name("op3"), DW_AT_symbol_name("_op3")
	.dwattr DW$463, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$463, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40


DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$43, DW_AT_byte_size(0x01)
DW$464	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$464, DW_AT_name("spimo"), DW_AT_symbol_name("_spimo")
	.dwattr DW$464, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$464, DW_AT_accessibility(DW_ACCESS_public)
DW$465	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$465, DW_AT_name("spimi"), DW_AT_symbol_name("_spimi")
	.dwattr DW$465, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$465, DW_AT_accessibility(DW_ACCESS_public)
DW$466	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$466, DW_AT_name("spiclk"), DW_AT_symbol_name("_spiclk")
	.dwattr DW$466, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$466, DW_AT_accessibility(DW_ACCESS_public)
DW$467	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$467, DW_AT_name("spiste"), DW_AT_symbol_name("_spiste")
	.dwattr DW$467, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$467, DW_AT_accessibility(DW_ACCESS_public)
DW$468	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$468, DW_AT_name("scitxa"), DW_AT_symbol_name("_scitxa")
	.dwattr DW$468, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$468, DW_AT_accessibility(DW_ACCESS_public)
DW$469	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$469, DW_AT_name("scirxa"), DW_AT_symbol_name("_scirxa")
	.dwattr DW$469, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$469, DW_AT_accessibility(DW_ACCESS_public)
DW$470	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$470, DW_AT_name("op1"), DW_AT_symbol_name("_op1")
	.dwattr DW$470, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$470, DW_AT_accessibility(DW_ACCESS_public)
DW$471	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$471, DW_AT_name("op2"), DW_AT_symbol_name("_op2")
	.dwattr DW$471, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$471, DW_AT_accessibility(DW_ACCESS_public)
DW$472	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$472, DW_AT_name("spiselect1"), DW_AT_symbol_name("_spiselect1")
	.dwattr DW$472, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$472, DW_AT_accessibility(DW_ACCESS_public)
DW$473	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$473, DW_AT_name("spiselect2"), DW_AT_symbol_name("_spiselect2")
	.dwattr DW$473, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$473, DW_AT_accessibility(DW_ACCESS_public)
DW$474	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$474, DW_AT_name("spiselect3"), DW_AT_symbol_name("_spiselect3")
	.dwattr DW$474, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$474, DW_AT_accessibility(DW_ACCESS_public)
DW$475	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$475, DW_AT_name("pc485rxen"), DW_AT_symbol_name("_pc485rxen")
	.dwattr DW$475, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$475, DW_AT_accessibility(DW_ACCESS_public)
DW$476	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$476, DW_AT_name("pc485txen"), DW_AT_symbol_name("_pc485txen")
	.dwattr DW$476, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$476, DW_AT_accessibility(DW_ACCESS_public)
DW$477	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$477, DW_AT_name("modeselect"), DW_AT_symbol_name("_modeselect")
	.dwattr DW$477, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$477, DW_AT_accessibility(DW_ACCESS_public)
DW$478	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$478, DW_AT_name("xf_xplldis"), DW_AT_symbol_name("_xf_xplldis")
	.dwattr DW$478, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$478, DW_AT_accessibility(DW_ACCESS_public)
DW$479	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$479, DW_AT_name("notused3"), DW_AT_symbol_name("_notused3")
	.dwattr DW$479, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$479, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$43


	.dwattr DW$25, DW_AT_external(0x01)
	.dwattr DW$25, DW_AT_type(*DW$T$10)
	.dwattr DW$28, DW_AT_external(0x01)
	.dwattr DW$28, DW_AT_type(*DW$T$13)
	.dwattr DW$164, DW_AT_type(*DW$T$10)
	.dwattr DW$161, DW_AT_type(*DW$T$10)
	.dwattr DW$159, DW_AT_type(*DW$T$12)
	.dwattr DW$166, DW_AT_external(0x01)
	.dwattr DW$166, DW_AT_type(*DW$T$10)
	.dwattr DW$132, DW_AT_external(0x01)
	.dwattr DW$132, DW_AT_type(*DW$T$10)
	.dwattr DW$128, DW_AT_external(0x01)
	.dwattr DW$128, DW_AT_type(*DW$T$10)
	.dwattr DW$141, DW_AT_external(0x01)
	.dwattr DW$141, DW_AT_type(*DW$T$10)
	.dwattr DW$137, DW_AT_external(0x01)
	.dwattr DW$137, DW_AT_type(*DW$T$10)
	.dwattr DW$146, DW_AT_type(*DW$T$10)
	.dwattr DW$67, DW_AT_type(*DW$T$12)
	.dwattr DW$49, DW_AT_type(*DW$T$12)
	.dwattr DW$86, DW_AT_type(*DW$T$10)
	.dwattr DW$148, DW_AT_type(*DW$T$10)
	.dwattr DW$106, DW_AT_type(*DW$T$10)
	.dwattr DW$63, DW_AT_type(*DW$T$10)
	.dwattr DW$59, DW_AT_type(*DW$T$10)
	.dwattr DW$47, DW_AT_external(0x01)
	.dwattr DW$42, DW_AT_external(0x01)
	.dwattr DW$42, DW_AT_type(*DW$T$12)
	.dwattr DW$43, DW_AT_external(0x01)
	.dwattr DW$43, DW_AT_type(*DW$T$13)
	.dwattr DW$36, DW_AT_external(0x01)
	.dwattr DW$40, DW_AT_external(0x01)
	.dwattr DW$38, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$480	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$480, DW_AT_location[DW_OP_reg0]
DW$481	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$481, DW_AT_location[DW_OP_reg1]
DW$482	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$482, DW_AT_location[DW_OP_reg2]
DW$483	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$483, DW_AT_location[DW_OP_reg3]
DW$484	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$484, DW_AT_location[DW_OP_reg4]
DW$485	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$485, DW_AT_location[DW_OP_reg5]
DW$486	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$486, DW_AT_location[DW_OP_reg6]
DW$487	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$487, DW_AT_location[DW_OP_reg7]
DW$488	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$488, DW_AT_location[DW_OP_reg8]
DW$489	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$489, DW_AT_location[DW_OP_reg9]
DW$490	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$490, DW_AT_location[DW_OP_reg10]
DW$491	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$491, DW_AT_location[DW_OP_reg11]
DW$492	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$492, DW_AT_location[DW_OP_reg12]
DW$493	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$493, DW_AT_location[DW_OP_reg13]
DW$494	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$494, DW_AT_location[DW_OP_reg14]
DW$495	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$495, DW_AT_location[DW_OP_reg15]
DW$496	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$496, DW_AT_location[DW_OP_reg16]
DW$497	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$497, DW_AT_location[DW_OP_reg17]
DW$498	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$498, DW_AT_location[DW_OP_reg18]
DW$499	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$499, DW_AT_location[DW_OP_reg19]
DW$500	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$500, DW_AT_location[DW_OP_reg20]
DW$501	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$501, DW_AT_location[DW_OP_reg21]
DW$502	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$502, DW_AT_location[DW_OP_reg22]
DW$503	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$503, DW_AT_location[DW_OP_reg23]
DW$504	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$504, DW_AT_location[DW_OP_reg24]
DW$505	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$505, DW_AT_location[DW_OP_reg25]
DW$506	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$506, DW_AT_location[DW_OP_reg26]
DW$507	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$507, DW_AT_location[DW_OP_reg27]
DW$508	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$508, DW_AT_location[DW_OP_reg28]
DW$509	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$509, DW_AT_location[DW_OP_reg29]
DW$510	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$510, DW_AT_location[DW_OP_reg30]
DW$511	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$511, DW_AT_location[DW_OP_reg31]
DW$512	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$512, DW_AT_location[DW_OP_regx 0x20]
DW$513	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$513, DW_AT_location[DW_OP_regx 0x21]
DW$514	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$514, DW_AT_location[DW_OP_regx 0x22]
DW$515	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$515, DW_AT_location[DW_OP_regx 0x23]
DW$516	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$516, DW_AT_location[DW_OP_regx 0x24]
DW$517	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$517, DW_AT_location[DW_OP_regx 0x25]
DW$518	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$518, DW_AT_location[DW_OP_regx 0x26]
DW$519	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$519, DW_AT_location[DW_OP_regx 0x27]
DW$520	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$520, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

