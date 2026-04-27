;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Thu Aug 18 12:16:11 2016                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("digout.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("CheckBitSet"), DW_AT_symbol_name("_CheckBitSet")
	.dwattr DW$1, DW_AT_type(*DW$T$10)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$1


DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("BitSet"), DW_AT_symbol_name("_BitSet")
	.dwattr DW$4, DW_AT_type(*DW$T$11)
	.dwattr DW$4, DW_AT_declaration(0x01)
	.dwattr DW$4, DW_AT_external(0x01)
DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$4


DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("BitClear"), DW_AT_symbol_name("_BitClear")
	.dwattr DW$7, DW_AT_type(*DW$T$11)
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$7


DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("GetStatus2Flags"), DW_AT_symbol_name("_GetStatus2Flags")
	.dwattr DW$10, DW_AT_type(*DW$T$66)
	.dwattr DW$10, DW_AT_declaration(0x01)
	.dwattr DW$10, DW_AT_external(0x01)
DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$10


DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("WioStructPtr"), DW_AT_symbol_name("_WioStructPtr")
	.dwattr DW$12, DW_AT_type(*DW$T$74)
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)

DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("WIOEnabled"), DW_AT_symbol_name("_WIOEnabled")
	.dwattr DW$13, DW_AT_type(*DW$T$10)
	.dwattr DW$13, DW_AT_declaration(0x01)
	.dwattr DW$13, DW_AT_external(0x01)
DW$14	.dwtag  DW_TAG_variable, DW_AT_name("gpb"), DW_AT_symbol_name("_gpb")
	.dwattr DW$14, DW_AT_type(*DW$T$80)
	.dwattr DW$14, DW_AT_declaration(0x01)
	.dwattr DW$14, DW_AT_external(0x01)
DW$15	.dwtag  DW_TAG_variable, DW_AT_name("gpf"), DW_AT_symbol_name("_gpf")
	.dwattr DW$15, DW_AT_type(*DW$T$84)
	.dwattr DW$15, DW_AT_declaration(0x01)
	.dwattr DW$15, DW_AT_external(0x01)
DW$16	.dwtag  DW_TAG_variable, DW_AT_name("settings"), DW_AT_symbol_name("_settings")
	.dwattr DW$16, DW_AT_type(*DW$T$87)
	.dwattr DW$16, DW_AT_declaration(0x01)
	.dwattr DW$16, DW_AT_external(0x01)
DW$17	.dwtag  DW_TAG_variable, DW_AT_name("timers"), DW_AT_symbol_name("_timers")
	.dwattr DW$17, DW_AT_type(*DW$T$89)
	.dwattr DW$17, DW_AT_declaration(0x01)
	.dwattr DW$17, DW_AT_external(0x01)
DW$18	.dwtag  DW_TAG_variable, DW_AT_name("allsensors"), DW_AT_symbol_name("_allsensors")
	.dwattr DW$18, DW_AT_type(*DW$T$91)
	.dwattr DW$18, DW_AT_declaration(0x01)
	.dwattr DW$18, DW_AT_external(0x01)
DW$19	.dwtag  DW_TAG_variable, DW_AT_name("cylinders"), DW_AT_symbol_name("_cylinders")
	.dwattr DW$19, DW_AT_type(*DW$T$93)
	.dwattr DW$19, DW_AT_declaration(0x01)
	.dwattr DW$19, DW_AT_external(0x01)
DW$20	.dwtag  DW_TAG_variable, DW_AT_name("config"), DW_AT_symbol_name("_config")
	.dwattr DW$20, DW_AT_type(*DW$T$96)
	.dwattr DW$20, DW_AT_declaration(0x01)
	.dwattr DW$20, DW_AT_external(0x01)
DW$21	.dwtag  DW_TAG_variable, DW_AT_name("damalarms"), DW_AT_symbol_name("_damalarms")
	.dwattr DW$21, DW_AT_type(*DW$T$97)
	.dwattr DW$21, DW_AT_declaration(0x01)
	.dwattr DW$21, DW_AT_external(0x01)
DW$22	.dwtag  DW_TAG_variable, DW_AT_name("alarms"), DW_AT_symbol_name("_alarms")
	.dwattr DW$22, DW_AT_type(*DW$T$99)
	.dwattr DW$22, DW_AT_declaration(0x01)
	.dwattr DW$22, DW_AT_external(0x01)
DW$23	.dwtag  DW_TAG_variable, DW_AT_name("waterinoil"), DW_AT_symbol_name("_waterinoil")
	.dwattr DW$23, DW_AT_type(*DW$T$73)
	.dwattr DW$23, DW_AT_declaration(0x01)
	.dwattr DW$23, DW_AT_external(0x01)
DW$24	.dwtag  DW_TAG_variable, DW_AT_name("slowdownblipstate"), DW_AT_symbol_name("_slowdownblipstate")
	.dwattr DW$24, DW_AT_type(*DW$T$11)
	.dwattr DW$24, DW_AT_declaration(0x01)
	.dwattr DW$24, DW_AT_external(0x01)
DW$25	.dwtag  DW_TAG_variable, DW_AT_name("slem"), DW_AT_symbol_name("_slem")
	.dwattr DW$25, DW_AT_type(*DW$T$101)
	.dwattr DW$25, DW_AT_declaration(0x01)
	.dwattr DW$25, DW_AT_external(0x01)
DW$26	.dwtag  DW_TAG_variable, DW_AT_name("rtcbat"), DW_AT_symbol_name("_rtcbat")
	.dwattr DW$26, DW_AT_type(*DW$T$103)
	.dwattr DW$26, DW_AT_declaration(0x01)
	.dwattr DW$26, DW_AT_external(0x01)
	.global	_digout
_digout:	.usect	".ebss",7,1,0
DW$27	.dwtag  DW_TAG_variable, DW_AT_name("digout"), DW_AT_symbol_name("_digout")
	.dwattr DW$27, DW_AT_location[DW_OP_addr _digout]
	.dwattr DW$27, DW_AT_type(*DW$T$104)
	.dwattr DW$27, DW_AT_external(0x01)
	.global	_statusprevious
_statusprevious:	.usect	".ebss",28,1,0
DW$28	.dwtag  DW_TAG_variable, DW_AT_name("statusprevious"), DW_AT_symbol_name("_statusprevious")
	.dwattr DW$28, DW_AT_location[DW_OP_addr _statusprevious]
	.dwattr DW$28, DW_AT_type(*DW$T$68)
	.dwattr DW$28, DW_AT_external(0x01)
	.global	_cylinderalarm
_cylinderalarm:	.usect	".ebss",14,1,0
DW$29	.dwtag  DW_TAG_variable, DW_AT_name("cylinderalarm"), DW_AT_symbol_name("_cylinderalarm")
	.dwattr DW$29, DW_AT_location[DW_OP_addr _cylinderalarm]
	.dwattr DW$29, DW_AT_type(*DW$T$31)
	.dwattr DW$29, DW_AT_external(0x01)
	.global	_wioalarmprev
_wioalarmprev:	.usect	".ebss",1,1,0
DW$30	.dwtag  DW_TAG_variable, DW_AT_name("wioalarmprev"), DW_AT_symbol_name("_wioalarmprev")
	.dwattr DW$30, DW_AT_location[DW_OP_addr _wioalarmprev]
	.dwattr DW$30, DW_AT_type(*DW$T$11)
	.dwattr DW$30, DW_AT_external(0x01)
	.global	_wioalarmupperprev
_wioalarmupperprev:	.usect	".ebss",1,1,0
DW$31	.dwtag  DW_TAG_variable, DW_AT_name("wioalarmupperprev"), DW_AT_symbol_name("_wioalarmupperprev")
	.dwattr DW$31, DW_AT_location[DW_OP_addr _wioalarmupperprev]
	.dwattr DW$31, DW_AT_type(*DW$T$11)
	.dwattr DW$31, DW_AT_external(0x01)
	.global	_sdcardprev
_sdcardprev:	.usect	".ebss",1,1,0
DW$32	.dwtag  DW_TAG_variable, DW_AT_name("sdcardprev"), DW_AT_symbol_name("_sdcardprev")
	.dwattr DW$32, DW_AT_location[DW_OP_addr _sdcardprev]
	.dwattr DW$32, DW_AT_type(*DW$T$11)
	.dwattr DW$32, DW_AT_external(0x01)
	.global	_slavefailureprev
_slavefailureprev:	.usect	".ebss",1,1,0
DW$33	.dwtag  DW_TAG_variable, DW_AT_name("slavefailureprev"), DW_AT_symbol_name("_slavefailureprev")
	.dwattr DW$33, DW_AT_location[DW_OP_addr _slavefailureprev]
	.dwattr DW$33, DW_AT_type(*DW$T$11)
	.dwattr DW$33, DW_AT_external(0x01)
	.global	_framfailprev
_framfailprev:	.usect	".ebss",1,1,0
DW$34	.dwtag  DW_TAG_variable, DW_AT_name("framfailprev"), DW_AT_symbol_name("_framfailprev")
	.dwattr DW$34, DW_AT_location[DW_OP_addr _framfailprev]
	.dwattr DW$34, DW_AT_type(*DW$T$11)
	.dwattr DW$34, DW_AT_external(0x01)
	.global	_pccommsfailureprev
_pccommsfailureprev:	.usect	".ebss",1,1,0
DW$35	.dwtag  DW_TAG_variable, DW_AT_name("pccommsfailureprev"), DW_AT_symbol_name("_pccommsfailureprev")
	.dwattr DW$35, DW_AT_location[DW_OP_addr _pccommsfailureprev]
	.dwattr DW$35, DW_AT_type(*DW$T$11)
	.dwattr DW$35, DW_AT_external(0x01)
	.global	_wiocommsprev
_wiocommsprev:	.usect	".ebss",1,1,0
DW$36	.dwtag  DW_TAG_variable, DW_AT_name("wiocommsprev"), DW_AT_symbol_name("_wiocommsprev")
	.dwattr DW$36, DW_AT_location[DW_OP_addr _wiocommsprev]
	.dwattr DW$36, DW_AT_type(*DW$T$11)
	.dwattr DW$36, DW_AT_external(0x01)
	.global	_wioanaloglowprev
_wioanaloglowprev:	.usect	".ebss",1,1,0
DW$37	.dwtag  DW_TAG_variable, DW_AT_name("wioanaloglowprev"), DW_AT_symbol_name("_wioanaloglowprev")
	.dwattr DW$37, DW_AT_location[DW_OP_addr _wioanaloglowprev]
	.dwattr DW$37, DW_AT_type(*DW$T$11)
	.dwattr DW$37, DW_AT_external(0x01)
	.global	_wioanaloghighprev
_wioanaloghighprev:	.usect	".ebss",1,1,0
DW$38	.dwtag  DW_TAG_variable, DW_AT_name("wioanaloghighprev"), DW_AT_symbol_name("_wioanaloghighprev")
	.dwattr DW$38, DW_AT_location[DW_OP_addr _wioanaloghighprev]
	.dwattr DW$38, DW_AT_type(*DW$T$11)
	.dwattr DW$38, DW_AT_external(0x01)
	.global	_slemprev
_slemprev:	.usect	".ebss",1,1,0
DW$39	.dwtag  DW_TAG_variable, DW_AT_name("slemprev"), DW_AT_symbol_name("_slemprev")
	.dwattr DW$39, DW_AT_location[DW_OP_addr _slemprev]
	.dwattr DW$39, DW_AT_type(*DW$T$11)
	.dwattr DW$39, DW_AT_external(0x01)
	.global	_slemoorprev
_slemoorprev:	.usect	".ebss",1,1,0
DW$40	.dwtag  DW_TAG_variable, DW_AT_name("slemoorprev"), DW_AT_symbol_name("_slemoorprev")
	.dwattr DW$40, DW_AT_location[DW_OP_addr _slemoorprev]
	.dwattr DW$40, DW_AT_type(*DW$T$11)
	.dwattr DW$40, DW_AT_external(0x01)
	.global	_damagesingleprev
_damagesingleprev:	.usect	".ebss",2,1,0
DW$41	.dwtag  DW_TAG_variable, DW_AT_name("damagesingleprev"), DW_AT_symbol_name("_damagesingleprev")
	.dwattr DW$41, DW_AT_location[DW_OP_addr _damagesingleprev]
	.dwattr DW$41, DW_AT_type(*DW$T$46)
	.dwattr DW$41, DW_AT_external(0x01)
	.global	_damagecylprev
_damagecylprev:	.usect	".ebss",1,1,0
DW$42	.dwtag  DW_TAG_variable, DW_AT_name("damagecylprev"), DW_AT_symbol_name("_damagecylprev")
	.dwattr DW$42, DW_AT_location[DW_OP_addr _damagecylprev]
	.dwattr DW$42, DW_AT_type(*DW$T$11)
	.dwattr DW$42, DW_AT_external(0x01)
	.global	_damagembnprev
_damagembnprev:	.usect	".ebss",1,1,0
DW$43	.dwtag  DW_TAG_variable, DW_AT_name("damagembnprev"), DW_AT_symbol_name("_damagembnprev")
	.dwattr DW$43, DW_AT_location[DW_OP_addr _damagembnprev]
	.dwattr DW$43, DW_AT_type(*DW$T$11)
	.dwattr DW$43, DW_AT_external(0x01)
	.global	_rtcbatprev
_rtcbatprev:	.usect	".ebss",1,1,0
DW$44	.dwtag  DW_TAG_variable, DW_AT_name("rtcbatprev"), DW_AT_symbol_name("_rtcbatprev")
	.dwattr DW$44, DW_AT_location[DW_OP_addr _rtcbatprev]
	.dwattr DW$44, DW_AT_type(*DW$T$11)
	.dwattr DW$44, DW_AT_external(0x01)
	.global	_tempprev
_tempprev:	.usect	".ebss",1,1,0
DW$45	.dwtag  DW_TAG_variable, DW_AT_name("tempprev"), DW_AT_symbol_name("_tempprev")
	.dwattr DW$45, DW_AT_location[DW_OP_addr _tempprev]
	.dwattr DW$45, DW_AT_type(*DW$T$11)
	.dwattr DW$45, DW_AT_external(0x01)
;	C:\CCStudio_v3.3\C2000\cgtools\bin\opt2000.exe C:\Users\Andrew\AppData\Local\Temp\TI0362 C:\Users\Andrew\AppData\Local\Temp\TI0364 
;	C:\CCStudio_v3.3\C2000\cgtools\bin\ac2000.exe -q -D_INLINE -DLARGE_MODEL -IC:/CCStudio_v3.3/C2000/xdais/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/bios/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/rtdx/include/c2000 -IC:/CCStudio_v3.3/C2000/cgtools/include --version=28 --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\Andrew\AppData\Local\Temp\TI0362 --template_info_file C:\Users\Andrew\AppData\Local\Temp\TI0366 --object_file 
	.sect	".text"
	.global	_InitOP

DW$46	.dwtag  DW_TAG_subprogram, DW_AT_name("InitOP"), DW_AT_symbol_name("_InitOP")
	.dwattr DW$46, DW_AT_low_pc(_InitOP)
	.dwattr DW$46, DW_AT_high_pc(0x00)
	.dwattr DW$46, DW_AT_begin_file("digout.c")
	.dwattr DW$46, DW_AT_begin_line(0x36)
	.dwattr DW$46, DW_AT_begin_column(0x06)
	.dwattr DW$46, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$46, DW_AT_skeletal(0x01)
	.dwpsn	"digout.c",55,1

;***************************************************************
;* FNAME: _InitOP                       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_InitOP:
 eallow             ; Enable accesses to PIE control registers
        MOV       AL,*(0:0x70d5)        ; |60| 
        ORB       AL,#0xc0              ; |60| 
        MOV       *(0:0x70d5),AL        ; |60| 
        NOP
        NOP
        MOV       AL,*(0:0x70c5)        ; |61| 
        OR        AL,#0x8000            ; |61| 
        MOV       *(0:0x70c5),AL        ; |61| 
 edis               ; Disable accesses to PIE control registers
        MOVW      DP,#_gpf
        OR        @_gpf,#0x0040         ; |64| 
        MOVW      DP,#_gpf
        OR        @_gpf,#0x0080         ; |65| 
        MOVW      DP,#_gpb
        AND       @_gpb,#0x7fff         ; |66| 
        MOVW      DP,#_digout
        MOV       @_digout,#0           ; |68| 
        MOVW      DP,#_digout+1
        MOV       @_digout+1,#0         ; |69| 
        MOVW      DP,#_digout+2
        MOV       @_digout+2,#0         ; |70| 
        MOVW      DP,#_digout+3
        MOV       @_digout+3,#0         ; |71| 
        MOVW      DP,#_digout+4
        MOV       @_digout+4,#0         ; |72| 
        MOVW      DP,#_digout+5
        MOV       @_digout+5,#0         ; |73| 
        MOVW      DP,#_timers+50
        MOVB      AL,#0
        MOV       @_timers+50,#0        ; |75| 
	.dwpsn	"digout.c",77,0
        SETC      SXM
L1:    
DW$L$_InitOP$2$B:
	.dwpsn	"digout.c",78,0
        MOV       ACC,AL                ; |80| 
        MOVL      XAR4,#_statusprevious ; |80| 
        ADDL      XAR4,ACC
        ADDB      AL,#1                 ; |77| 
        CMPB      AL,#28                ; |77| 
        MOV       *+XAR4[0],#0          ; |80| 
	.dwpsn	"digout.c",81,0
        BF        L1,LT                 ; |77| 
        ; branchcc occurs ; |77| 
DW$L$_InitOP$2$E:
        MOVB      AL,#0
	.dwpsn	"digout.c",83,0
        SETC      SXM
L2:    
DW$L$_InitOP$4$B:
	.dwpsn	"digout.c",84,0
        MOV       ACC,AL                ; |85| 
        MOVL      XAR4,#_cylinderalarm  ; |85| 
        ADDL      XAR4,ACC
        ADDB      AL,#1                 ; |83| 
        CMPB      AL,#14                ; |83| 
        MOV       *+XAR4[0],#0          ; |85| 
	.dwpsn	"digout.c",86,0
        BF        L2,LT                 ; |83| 
        ; branchcc occurs ; |83| 
DW$L$_InitOP$4$E:
        MOVL      XAR4,#_damagesingleprev ; |88| 
        MOVW      DP,#_damagecylprev
        MOV       *+XAR4[0],#0          ; |88| 
        MOV       *+XAR4[1],#0          ; |89| 
        MOV       @_damagecylprev,#0    ; |90| 
        MOVW      DP,#_damagembnprev
        MOV       @_damagembnprev,#0    ; |91| 
        SPM       #0
        MOVW      DP,#_wioalarmprev
        MOV       @_wioalarmprev,#0     ; |93| 
        MOVW      DP,#_wioalarmupperprev
        MOV       @_wioalarmupperprev,#0 ; |94| 
        MOVW      DP,#_sdcardprev
        MOV       @_sdcardprev,#0       ; |95| 
        MOVW      DP,#_slavefailureprev
        MOV       @_slavefailureprev,#0 ; |96| 
        MOVW      DP,#_framfailprev
        MOV       @_framfailprev,#0     ; |97| 
        MOVW      DP,#_pccommsfailureprev
        MOV       @_pccommsfailureprev,#0 ; |98| 
        MOVW      DP,#_wiocommsprev
        MOV       @_wiocommsprev,#0     ; |99| 
        MOVW      DP,#_slemprev
        MOV       @_slemprev,#0         ; |100| 
        MOVW      DP,#_slemoorprev
        MOV       @_slemoorprev,#0      ; |101| 
        MOVW      DP,#_wioanaloglowprev
        MOV       @_wioanaloglowprev,#0 ; |103| 
        MOVW      DP,#_wioanaloghighprev
        MOV       @_wioanaloghighprev,#0 ; |104| 
        MOVW      DP,#_settings+22
        MOV       @_settings+22,#15000  ; |108| 
        MOVW      DP,#_settings+23
        MOV       @_settings+23,#0      ; |109| 
	.dwpsn	"digout.c",110,1
        LRETR
        ; return occurs

DW$47	.dwtag  DW_TAG_loop
	.dwattr DW$47, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\digout.asm:L2:1:1471518971")
	.dwattr DW$47, DW_AT_begin_file("digout.c")
	.dwattr DW$47, DW_AT_begin_line(0x53)
	.dwattr DW$47, DW_AT_end_line(0x56)
DW$48	.dwtag  DW_TAG_loop_range
	.dwattr DW$48, DW_AT_low_pc(DW$L$_InitOP$4$B)
	.dwattr DW$48, DW_AT_high_pc(DW$L$_InitOP$4$E)
	.dwendtag DW$47


DW$49	.dwtag  DW_TAG_loop
	.dwattr DW$49, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\digout.asm:L1:1:1471518971")
	.dwattr DW$49, DW_AT_begin_file("digout.c")
	.dwattr DW$49, DW_AT_begin_line(0x4d)
	.dwattr DW$49, DW_AT_end_line(0x51)
DW$50	.dwtag  DW_TAG_loop_range
	.dwattr DW$50, DW_AT_low_pc(DW$L$_InitOP$2$B)
	.dwattr DW$50, DW_AT_high_pc(DW$L$_InitOP$2$E)
	.dwendtag DW$49

	.dwattr DW$46, DW_AT_end_file("digout.c")
	.dwattr DW$46, DW_AT_end_line(0x6e)
	.dwattr DW$46, DW_AT_end_column(0x01)
	.dwendtag DW$46

	.sect	".text"
	.global	_ProcessDigitalOP

DW$51	.dwtag  DW_TAG_subprogram, DW_AT_name("ProcessDigitalOP"), DW_AT_symbol_name("_ProcessDigitalOP")
	.dwattr DW$51, DW_AT_low_pc(_ProcessDigitalOP)
	.dwattr DW$51, DW_AT_high_pc(0x00)
	.dwattr DW$51, DW_AT_begin_file("digout.c")
	.dwattr DW$51, DW_AT_begin_line(0x72)
	.dwattr DW$51, DW_AT_begin_column(0x06)
	.dwattr DW$51, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$51, DW_AT_skeletal(0x01)
	.dwpsn	"digout.c",115,1

;***************************************************************
;* FNAME: _ProcessDigitalOP             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ProcessDigitalOP:
        LCR       #_AliveStatus         ; |119| 
        ; call occurs [#_AliveStatus] ; |119| 
        LCR       #_AlarmLevelOP        ; |120| 
        ; call occurs [#_AlarmLevelOP] ; |120| 
        LCR       #_SlowDownLevelOP     ; |121| 
        ; call occurs [#_SlowDownLevelOP] ; |121| 
	.dwpsn	"digout.c",122,1
        LRETR
        ; return occurs
	.dwattr DW$51, DW_AT_end_file("digout.c")
	.dwattr DW$51, DW_AT_end_line(0x7a)
	.dwattr DW$51, DW_AT_end_column(0x01)
	.dwendtag DW$51

	.sect	".text"
	.global	_SlowDownBlipControl

DW$52	.dwtag  DW_TAG_subprogram, DW_AT_name("SlowDownBlipControl"), DW_AT_symbol_name("_SlowDownBlipControl")
	.dwattr DW$52, DW_AT_low_pc(_SlowDownBlipControl)
	.dwattr DW$52, DW_AT_high_pc(0x00)
	.dwattr DW$52, DW_AT_begin_file("digout.c")
	.dwattr DW$52, DW_AT_begin_line(0x7f)
	.dwattr DW$52, DW_AT_begin_column(0x06)
	.dwattr DW$52, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$52, DW_AT_skeletal(0x01)
	.dwpsn	"digout.c",128,1

;***************************************************************
;* FNAME: _SlowDownBlipControl          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SlowDownBlipControl:
        MOVW      DP,#_slowdownblipstate
        MOV       @_slowdownblipstate,#0 ; |129| 
        MOVW      DP,#_settings+10
        MOV       @_settings+10,#1      ; |130| 
	.dwpsn	"digout.c",131,1
        LRETR
        ; return occurs
	.dwattr DW$52, DW_AT_end_file("digout.c")
	.dwattr DW$52, DW_AT_end_line(0x83)
	.dwattr DW$52, DW_AT_end_column(0x01)
	.dwendtag DW$52

	.sect	".text"
	.global	_AliveStatus

DW$53	.dwtag  DW_TAG_subprogram, DW_AT_name("AliveStatus"), DW_AT_symbol_name("_AliveStatus")
	.dwattr DW$53, DW_AT_low_pc(_AliveStatus)
	.dwattr DW$53, DW_AT_high_pc(0x00)
	.dwattr DW$53, DW_AT_begin_file("digout.c")
	.dwattr DW$53, DW_AT_begin_line(0xa0)
	.dwattr DW$53, DW_AT_begin_column(0x06)
	.dwattr DW$53, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$53, DW_AT_skeletal(0x01)
	.dwpsn	"digout.c",161,1

;***************************************************************
;* FNAME: _AliveStatus                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_AliveStatus:
        MOVW      DP,#_digout
        MOV       AL,@_digout           ; |165| 
        CMPB      AL,#1                 ; |165| 
        BF        L33,EQ                ; |165| 
        ; branchcc occurs ; |165| 
        MOVW      DP,#_config+1
        TBIT      @_config+1,#0         ; |167| 
        BF        L32,NTC               ; |167| 
        ; branchcc occurs ; |167| 
        MOVW      DP,#_timers+58
        MOV       AL,@_timers+58        ; |169| 
        BF        L33,NEQ               ; |169| 
        ; branchcc occurs ; |169| 
        MOVB      AH,#1                 ; |172| 
        MOVW      DP,#_settings+7
        MOVB      XAR6,#0
        MOV       AL,@_settings+7       ; |173| 
        BF        L4,EQ                 ; |173| 
        ; branchcc occurs ; |173| 
        MOVB      AH,#0
        MOVW      DP,#_sdcardprev
        MOV       AL,@_sdcardprev       ; |176| 
        BF        L3,NEQ                ; |176| 
        ; branchcc occurs ; |176| 
        MOVB      XAR6,#1               ; |176| 
L3:    
        MOVW      DP,#_sdcardprev
        MOV       @_sdcardprev,#1       ; |176| 
        BF        L5,UNC                ; |177| 
        ; branch occurs ; |177| 
L4:    
        MOVW      DP,#_sdcardprev
        MOV       @_sdcardprev,#0       ; |178| 
L5:    
        MOVW      DP,#_alarms
        TBIT      @_alarms,#1           ; |177| 
        BF        L7,NTC                ; |177| 
        ; branchcc occurs ; |177| 
        MOVB      AH,#0
        MOVW      DP,#_slavefailureprev
        MOV       AL,@_slavefailureprev ; |182| 
        BF        L6,NEQ                ; |182| 
        ; branchcc occurs ; |182| 
        MOVB      XAR6,#1               ; |182| 
L6:    
        MOVW      DP,#_slavefailureprev
        MOV       @_slavefailureprev,#1 ; |182| 
        BF        L8,UNC                ; |183| 
        ; branch occurs ; |183| 
L7:    
        MOVW      DP,#_slavefailureprev
        MOV       @_slavefailureprev,#0 ; |184| 
L8:    
        MOVW      DP,#_alarms
        TBIT      @_alarms,#3           ; |183| 
        BF        L10,NTC               ; |183| 
        ; branchcc occurs ; |183| 
        MOVB      AH,#0
        MOVW      DP,#_framfailprev
        MOV       AL,@_framfailprev     ; |189| 
        BF        L9,NEQ                ; |189| 
        ; branchcc occurs ; |189| 
        MOVB      XAR6,#1               ; |189| 
L9:    
        MOVW      DP,#_framfailprev
        MOV       @_framfailprev,#1     ; |189| 
        BF        L11,UNC               ; |190| 
        ; branch occurs ; |190| 
L10:    
        MOVW      DP,#_framfailprev
        MOV       @_framfailprev,#0     ; |191| 
L11:    
        MOVW      DP,#_alarms
        TBIT      @_alarms,#5           ; |190| 
        BF        L13,NTC               ; |190| 
        ; branchcc occurs ; |190| 
        MOVB      AH,#0
        MOVW      DP,#_pccommsfailureprev
        MOV       AL,@_pccommsfailureprev ; |195| 
        BF        L12,NEQ               ; |195| 
        ; branchcc occurs ; |195| 
        MOVB      XAR6,#1               ; |195| 
L12:    
        MOVW      DP,#_pccommsfailureprev
        MOV       @_pccommsfailureprev,#1 ; |195| 
        BF        L14,UNC               ; |196| 
        ; branch occurs ; |196| 
L13:    
        MOVW      DP,#_pccommsfailureprev
        MOV       @_pccommsfailureprev,#0 ; |197| 
L14:    
        MOVW      DP,#_waterinoil+11
        TBIT      @_waterinoil+11,#5    ; |196| 
        BF        L16,NTC               ; |196| 
        ; branchcc occurs ; |196| 
        MOVB      AH,#0
        MOVW      DP,#_wiocommsprev
        MOV       AL,@_wiocommsprev     ; |201| 
        BF        L15,NEQ               ; |201| 
        ; branchcc occurs ; |201| 
        MOVB      XAR6,#1               ; |201| 
L15:    
        MOVW      DP,#_wiocommsprev
        MOV       @_wiocommsprev,#1     ; |201| 
        BF        L17,UNC               ; |202| 
        ; branch occurs ; |202| 
L16:    
        MOVW      DP,#_wiocommsprev
        MOV       @_wiocommsprev,#0     ; |203| 
L17:    
        MOVW      DP,#_waterinoil+11
        TBIT      @_waterinoil+11,#6    ; |202| 
        BF        L19,NTC               ; |202| 
        ; branchcc occurs ; |202| 
        MOVB      AH,#0
        MOVW      DP,#_wioanaloglowprev
        MOV       AL,@_wioanaloglowprev ; |208| 
        BF        L18,NEQ               ; |208| 
        ; branchcc occurs ; |208| 
        MOVB      XAR6,#1               ; |208| 
L18:    
        MOVW      DP,#_wioanaloglowprev
        MOV       @_wioanaloglowprev,#1 ; |208| 
        BF        L20,UNC               ; |209| 
        ; branch occurs ; |209| 
L19:    
        MOVW      DP,#_wioanaloglowprev
        MOV       @_wioanaloglowprev,#0 ; |210| 
L20:    
        MOVW      DP,#_waterinoil+11
        TBIT      @_waterinoil+11,#7    ; |209| 
        BF        L22,NTC               ; |209| 
        ; branchcc occurs ; |209| 
        MOVB      AH,#0
        MOVW      DP,#_wioanaloghighprev
        MOV       AL,@_wioanaloghighprev ; |214| 
        BF        L21,NEQ               ; |214| 
        ; branchcc occurs ; |214| 
        MOVB      XAR6,#1               ; |214| 
L21:    
        MOVW      DP,#_wioanaloghighprev
        MOV       @_wioanaloghighprev,#1 ; |214| 
        BF        L23,UNC               ; |215| 
        ; branch occurs ; |215| 
L22:    
        MOVW      DP,#_wioanaloghighprev
        MOV       @_wioanaloghighprev,#0 ; |216| 
L23:    
        MOVW      DP,#_slem+1
        TBIT      @_slem+1,#0           ; |215| 
        BF        L25,NTC               ; |215| 
        ; branchcc occurs ; |215| 
        MOVB      AH,#0
        MOVW      DP,#_slemoorprev
        MOV       AL,@_slemoorprev      ; |223| 
        BF        L24,NEQ               ; |223| 
        ; branchcc occurs ; |223| 
        MOVB      XAR6,#1               ; |223| 
L24:    
        MOVW      DP,#_slemoorprev
        MOV       @_slemoorprev,#1      ; |223| 
        BF        L26,UNC               ; |224| 
        ; branch occurs ; |224| 
L25:    
        MOVW      DP,#_slemoorprev
        MOV       @_slemoorprev,#0      ; |225| 
L26:    
        MOVW      DP,#_rtcbat+1
        MOV       AL,@_rtcbat+1         ; |224| 
        CMPB      AL,#1                 ; |224| 
        BF        L28,NEQ               ; |224| 
        ; branchcc occurs ; |224| 
        MOVB      AH,#0
        MOVW      DP,#_rtcbatprev
        MOV       AL,@_rtcbatprev       ; |231| 
        BF        L27,NEQ               ; |231| 
        ; branchcc occurs ; |231| 
        MOVB      XAR6,#1               ; |231| 
L27:    
        MOVW      DP,#_rtcbatprev
        MOV       @_rtcbatprev,#1       ; |231| 
        BF        L29,UNC               ; |232| 
        ; branch occurs ; |232| 
L28:    
        MOVW      DP,#_rtcbatprev
        MOV       @_rtcbatprev,#0       ; |233| 
L29:    
        MOV       AL,AR6
        CMPB      AL,#1                 ; |232| 
        BF        L30,EQ                ; |232| 
        ; branchcc occurs ; |232| 
        CMPB      AH,#1                 ; |244| 
        BF        L31,NEQ               ; |244| 
        ; branchcc occurs ; |244| 
        BF        L32,UNC               ; |244| 
        ; branch occurs ; |244| 
L30:    
        MOVW      DP,#_gpf
        TBIT      @_gpf,#6              ; |237| 
        BF        L31,TC                ; |237| 
        ; branchcc occurs ; |237| 
        MOVW      DP,#_gpf
        OR        @_gpf,#0x0040         ; |240| 
        MOVW      DP,#_allsensors+6
        MOV       T,@_allsensors+6      ; |241| 
        MPYB      ACC,T,#200            ; |241| 
        MOVW      DP,#_timers+58
        MOV       @_timers+58,AL        ; |241| 
        NOP
        BF        L33,UNC               ; |241| 
        ; branch occurs ; |241| 
L31:    
        MOVW      DP,#_gpf
        AND       @_gpf,#0xffbf         ; |237| 
        BF        L33,UNC               ; |237| 
        ; branch occurs ; |237| 
L32:    
        MOVW      DP,#_gpf
        OR        @_gpf,#0x0040         ; |248| 
L33:    
	.dwpsn	"digout.c",250,1
        LRETR
        ; return occurs
	.dwattr DW$53, DW_AT_end_file("digout.c")
	.dwattr DW$53, DW_AT_end_line(0xfa)
	.dwattr DW$53, DW_AT_end_column(0x01)
	.dwendtag DW$53

	.sect	".text"
	.global	_AlarmLevelOP

DW$54	.dwtag  DW_TAG_subprogram, DW_AT_name("AlarmLevelOP"), DW_AT_symbol_name("_AlarmLevelOP")
	.dwattr DW$54, DW_AT_low_pc(_AlarmLevelOP)
	.dwattr DW$54, DW_AT_high_pc(0x00)
	.dwattr DW$54, DW_AT_begin_file("digout.c")
	.dwattr DW$54, DW_AT_begin_line(0x100)
	.dwattr DW$54, DW_AT_begin_column(0x06)
	.dwattr DW$54, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$54, DW_AT_skeletal(0x01)
	.dwpsn	"digout.c",257,1

;***************************************************************
;* FNAME: _AlarmLevelOP                 FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_AlarmLevelOP:
        MOVL      *SP++,XAR1
        MOVW      DP,#_digout
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOV       AL,@_digout           ; |264| 
        CMPB      AL,#1                 ; |264| 
        BF        L68,EQ                ; |264| 
        ; branchcc occurs ; |264| 
        MOVW      DP,#_config+1
        TBIT      @_config+1,#1         ; |267| 
        BF        L67,NTC               ; |267| 
        ; branchcc occurs ; |267| 
        MOVW      DP,#_settings+29
        MOV       AL,@_settings+29      ; |270| 
        CMPB      AL,#1                 ; |270| 
        BF        L66,EQ                ; |270| 
        ; branchcc occurs ; |270| 
        MOVW      DP,#_timers+50
        MOV       AL,@_timers+50        ; |276| 
        BF        L68,NEQ               ; |276| 
        ; branchcc occurs ; |276| 
        MOVW      DP,#_allsensors
        MOVB      XAR3,#0
        MOVB      XAR2,#1               ; |278| 
        MOVB      XAR1,#0
        MOV       AL,@_allsensors       ; |280| 
        BF        L50,EQ                ; |280| 
        ; branchcc occurs ; |280| 
L34:    
DW$L$_AlarmLevelOP$6$B:
	.dwpsn	"digout.c",281,0
        MOV       AL,AR1                ; |282| 
        LCR       #_GetStatus2Flags     ; |282| 
        ; call occurs [#_GetStatus2Flags] ; |282| 
        MOV       AL,*+XAR4[0]          ; |282| 
        AND       AH,AL,#0x0020         ; |285| 
        BF        L36,EQ                ; |285| 
        ; branchcc occurs ; |285| 
DW$L$_AlarmLevelOP$6$E:
DW$L$_AlarmLevelOP$7$B:
        MOVL      XAR4,#_statusprevious ; |288| 
        MOVB      XAR2,#0
        TBIT      *+XAR4[AR1],#5        ; |288| 
        BF        L35,TC                ; |288| 
        ; branchcc occurs ; |288| 
DW$L$_AlarmLevelOP$7$E:
DW$L$_AlarmLevelOP$8$B:
        MOVB      XAR3,#1               ; |288| 
DW$L$_AlarmLevelOP$8$E:
L35:    
DW$L$_AlarmLevelOP$9$B:
        OR        *+XAR4[AR1],#0x0020   ; |288| 
        BF        L37,UNC               ; |289| 
        ; branch occurs ; |289| 
DW$L$_AlarmLevelOP$9$E:
L36:    
DW$L$_AlarmLevelOP$10$B:
        MOVL      XAR4,#_statusprevious ; |290| 
        AND       *+XAR4[AR1],#0xffdf   ; |290| 
DW$L$_AlarmLevelOP$10$E:
L37:    
DW$L$_AlarmLevelOP$11$B:
        AND       AH,AL,#0x0080         ; |289| 
        BF        L39,EQ                ; |289| 
        ; branchcc occurs ; |289| 
DW$L$_AlarmLevelOP$11$E:
DW$L$_AlarmLevelOP$12$B:
        TBIT      *+XAR4[AR1],#7        ; |294| 
        MOVB      XAR2,#0
        BF        L38,TC                ; |294| 
        ; branchcc occurs ; |294| 
DW$L$_AlarmLevelOP$12$E:
DW$L$_AlarmLevelOP$13$B:
        MOVB      XAR3,#1               ; |294| 
DW$L$_AlarmLevelOP$13$E:
L38:    
DW$L$_AlarmLevelOP$14$B:
        OR        *+XAR4[AR1],#0x0080   ; |294| 
        BF        L40,UNC               ; |295| 
        ; branch occurs ; |295| 
DW$L$_AlarmLevelOP$14$E:
L39:    
DW$L$_AlarmLevelOP$15$B:
        AND       *+XAR4[AR1],#0xff7f   ; |296| 
DW$L$_AlarmLevelOP$15$E:
L40:    
DW$L$_AlarmLevelOP$16$B:
        AND       AH,AL,#0x0002         ; |295| 
        BF        L42,EQ                ; |295| 
        ; branchcc occurs ; |295| 
DW$L$_AlarmLevelOP$16$E:
DW$L$_AlarmLevelOP$17$B:
        TBIT      *+XAR4[AR1],#1        ; |300| 
        MOVB      XAR2,#0
        BF        L41,TC                ; |300| 
        ; branchcc occurs ; |300| 
DW$L$_AlarmLevelOP$17$E:
DW$L$_AlarmLevelOP$18$B:
        MOVB      XAR3,#1               ; |300| 
DW$L$_AlarmLevelOP$18$E:
L41:    
DW$L$_AlarmLevelOP$19$B:
        OR        *+XAR4[AR1],#0x0002   ; |300| 
        BF        L43,UNC               ; |301| 
        ; branch occurs ; |301| 
DW$L$_AlarmLevelOP$19$E:
L42:    
DW$L$_AlarmLevelOP$20$B:
        AND       *+XAR4[AR1],#0xfffd   ; |302| 
DW$L$_AlarmLevelOP$20$E:
L43:    
DW$L$_AlarmLevelOP$21$B:
        AND       AH,AL,#0x0800         ; |301| 
        BF        L45,EQ                ; |301| 
        ; branchcc occurs ; |301| 
DW$L$_AlarmLevelOP$21$E:
DW$L$_AlarmLevelOP$22$B:
        TBIT      *+XAR4[AR1],#11       ; |306| 
        MOVB      XAR2,#0
        BF        L44,TC                ; |306| 
        ; branchcc occurs ; |306| 
DW$L$_AlarmLevelOP$22$E:
DW$L$_AlarmLevelOP$23$B:
        MOVB      XAR3,#1               ; |306| 
DW$L$_AlarmLevelOP$23$E:
L44:    
DW$L$_AlarmLevelOP$24$B:
        OR        *+XAR4[AR1],#0x0800   ; |306| 
        BF        L46,UNC               ; |307| 
        ; branch occurs ; |307| 
DW$L$_AlarmLevelOP$24$E:
L45:    
DW$L$_AlarmLevelOP$25$B:
        AND       *+XAR4[AR1],#0xf7ff   ; |308| 
DW$L$_AlarmLevelOP$25$E:
L46:    
DW$L$_AlarmLevelOP$26$B:
        AND       AL,AL,#0x2000         ; |307| 
        BF        L48,EQ                ; |307| 
        ; branchcc occurs ; |307| 
DW$L$_AlarmLevelOP$26$E:
DW$L$_AlarmLevelOP$27$B:
        TBIT      *+XAR4[AR1],#13       ; |312| 
        MOVB      XAR2,#0
        BF        L47,TC                ; |312| 
        ; branchcc occurs ; |312| 
DW$L$_AlarmLevelOP$27$E:
DW$L$_AlarmLevelOP$28$B:
        MOVB      XAR3,#1               ; |312| 
DW$L$_AlarmLevelOP$28$E:
L47:    
DW$L$_AlarmLevelOP$29$B:
        OR        *+XAR4[AR1],#0x2000   ; |312| 
        BF        L49,UNC               ; |313| 
        ; branch occurs ; |313| 
DW$L$_AlarmLevelOP$29$E:
L48:    
DW$L$_AlarmLevelOP$30$B:
        AND       *+XAR4[AR1],#0xdfff   ; |314| 
DW$L$_AlarmLevelOP$30$E:
L49:    
DW$L$_AlarmLevelOP$31$B:
        ADDB      XAR1,#1               ; |280| 
        MOVW      DP,#_allsensors
        MOV       AL,AR1                ; |280| 
        CMP       AL,@_allsensors       ; |280| 
	.dwpsn	"digout.c",315,0
        BF        L34,LO                ; |280| 
        ; branchcc occurs ; |280| 
DW$L$_AlarmLevelOP$31$E:
L50:    
        MOVW      DP,#_allsensors
        MOVB      XAR1,#0
        AND       AL,@_allsensors,#0xfffe ; |316| 
        BF        L55,EQ                ; |316| 
        ; branchcc occurs ; |316| 
L51:    
DW$L$_AlarmLevelOP$33$B:
	.dwpsn	"digout.c",317,0
        MOVU      ACC,AR1
        MOVL      XAR4,#_cylinders+1    ; |318| 
        LSL       ACC,2                 ; |318| 
        ADDL      XAR4,ACC
        TBIT      *+XAR4[0],#1          ; |318| 
        BF        L53,NTC               ; |318| 
        ; branchcc occurs ; |318| 
DW$L$_AlarmLevelOP$33$E:
DW$L$_AlarmLevelOP$34$B:
        MOVL      XAR4,#_cylinderalarm  ; |321| 
        MOVB      XAR2,#0
        MOV       AL,*+XAR4[AR1]        ; |321| 
        BF        L52,NEQ               ; |321| 
        ; branchcc occurs ; |321| 
DW$L$_AlarmLevelOP$34$E:
DW$L$_AlarmLevelOP$35$B:
        MOVB      XAR3,#1               ; |321| 
DW$L$_AlarmLevelOP$35$E:
L52:    
DW$L$_AlarmLevelOP$36$B:
        MOV       *+XAR4[AR1],#1        ; |321| 
        BF        L54,UNC               ; |322| 
        ; branch occurs ; |322| 
DW$L$_AlarmLevelOP$36$E:
L53:    
DW$L$_AlarmLevelOP$37$B:
        MOVL      XAR4,#_cylinderalarm  ; |323| 
        MOV       *+XAR4[AR1],#0        ; |323| 
DW$L$_AlarmLevelOP$37$E:
L54:    
DW$L$_AlarmLevelOP$38$B:
        MOVW      DP,#_allsensors
        ADDB      XAR1,#1               ; |316| 
        MOV       AL,@_allsensors       ; |316| 
        LSR       AL,1                  ; |316| 
        CMP       AL,AR1                ; |316| 
	.dwpsn	"digout.c",324,0
        BF        L51,HI                ; |316| 
        ; branchcc occurs ; |316| 
DW$L$_AlarmLevelOP$38$E:
L55:    
        LCR       #_WIOEnabled          ; |325| 
        ; call occurs [#_WIOEnabled] ; |325| 
        CMPB      AL,#0                 ; |325| 
        BF        L61,EQ                ; |325| 
        ; branchcc occurs ; |325| 
        LCR       #_WioStructPtr        ; |327| 
        ; call occurs [#_WioStructPtr] ; |327| 
        MOVB      XAR0,#11              ; |328| 
        MOV       AL,*+XAR4[AR0]        ; |328| 
        AND       AH,AL,#0x0008         ; |328| 
        BF        L56,NEQ               ; |328| 
        ; branchcc occurs ; |328| 
        MOVW      DP,#_wioalarmprev
        ANDB      AL,#2                 ; |333| 
        MOV       @_wioalarmprev,#0     ; |333| 
        BF        L58,NEQ               ; |333| 
        ; branchcc occurs ; |333| 
        BF        L60,UNC               ; |333| 
        ; branch occurs ; |333| 
L56:    
        MOVW      DP,#_wioalarmprev
        MOVB      XAR2,#0
        MOV       AL,@_wioalarmprev     ; |331| 
        BF        L57,NEQ               ; |331| 
        ; branchcc occurs ; |331| 
        MOVB      XAR3,#1               ; |331| 
L57:    
        MOVW      DP,#_wioalarmprev
        MOV       @_wioalarmprev,#1     ; |331| 
        TBIT      *+XAR4[AR0],#1        ; |332| 
        BF        L60,NTC               ; |332| 
        ; branchcc occurs ; |332| 
L58:    
        MOVW      DP,#_wioalarmupperprev
        MOVB      XAR2,#0
        MOV       AL,@_wioalarmupperprev ; |337| 
        BF        L59,NEQ               ; |337| 
        ; branchcc occurs ; |337| 
        MOVB      XAR3,#1               ; |337| 
L59:    
        MOVW      DP,#_wioalarmupperprev
        MOV       @_wioalarmupperprev,#1 ; |337| 
        BF        L61,UNC               ; |338| 
        ; branch occurs ; |338| 
L60:    
        MOVW      DP,#_wioalarmupperprev
        MOV       @_wioalarmupperprev,#0 ; |339| 
L61:    
        MOVW      DP,#_slem+1
        TBIT      @_slem+1,#1           ; |342| 
        BF        L63,NTC               ; |342| 
        ; branchcc occurs ; |342| 
        MOVW      DP,#_slemprev
        MOVB      XAR2,#0
        MOV       AL,@_slemprev         ; |345| 
        BF        L62,NEQ               ; |345| 
        ; branchcc occurs ; |345| 
        MOVB      XAR3,#1               ; |345| 
L62:    
        MOVW      DP,#_slemprev
        MOV       @_slemprev,#1         ; |345| 
        BF        L64,UNC               ; |346| 
        ; branch occurs ; |346| 
L63:    
        MOVW      DP,#_slemprev
        MOV       @_slemprev,#0         ; |347| 
L64:    
        MOV       AL,AR3
        CMPB      AL,#1                 ; |346| 
        BF        L65,EQ                ; |346| 
        ; branchcc occurs ; |346| 
        MOV       AL,AR2
        CMPB      AL,#1                 ; |362| 
        BF        L66,NEQ               ; |362| 
        ; branchcc occurs ; |362| 
        BF        L67,UNC               ; |362| 
        ; branch occurs ; |362| 
L65:    
        MOVW      DP,#_gpf
        TBIT      @_gpf,#7              ; |352| 
        BF        L66,TC                ; |352| 
        ; branchcc occurs ; |352| 
        MOVW      DP,#_gpf
        OR        @_gpf,#0x0080         ; |358| 
        MOVW      DP,#_allsensors+6
        MOV       T,@_allsensors+6      ; |359| 
        MPYB      ACC,T,#200            ; |359| 
        MOVW      DP,#_timers+50
        MOV       @_timers+50,AL        ; |359| 
        BF        L68,UNC               ; |359| 
        ; branch occurs ; |359| 
L66:    
        MOVW      DP,#_gpf
        AND       @_gpf,#0xff7f         ; |272| 
        BF        L68,UNC               ; |273| 
        ; branch occurs ; |273| 
L67:    
        MOVW      DP,#_gpf
        OR        @_gpf,#0x0080         ; |367| 
L68:    
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"digout.c",369,1
        LRETR
        ; return occurs

DW$55	.dwtag  DW_TAG_loop
	.dwattr DW$55, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\digout.asm:L51:1:1471518971")
	.dwattr DW$55, DW_AT_begin_file("digout.c")
	.dwattr DW$55, DW_AT_begin_line(0x13c)
	.dwattr DW$55, DW_AT_end_line(0x144)
DW$56	.dwtag  DW_TAG_loop_range
	.dwattr DW$56, DW_AT_low_pc(DW$L$_AlarmLevelOP$33$B)
	.dwattr DW$56, DW_AT_high_pc(DW$L$_AlarmLevelOP$33$E)
DW$57	.dwtag  DW_TAG_loop_range
	.dwattr DW$57, DW_AT_low_pc(DW$L$_AlarmLevelOP$34$B)
	.dwattr DW$57, DW_AT_high_pc(DW$L$_AlarmLevelOP$34$E)
DW$58	.dwtag  DW_TAG_loop_range
	.dwattr DW$58, DW_AT_low_pc(DW$L$_AlarmLevelOP$35$B)
	.dwattr DW$58, DW_AT_high_pc(DW$L$_AlarmLevelOP$35$E)
DW$59	.dwtag  DW_TAG_loop_range
	.dwattr DW$59, DW_AT_low_pc(DW$L$_AlarmLevelOP$36$B)
	.dwattr DW$59, DW_AT_high_pc(DW$L$_AlarmLevelOP$36$E)
DW$60	.dwtag  DW_TAG_loop_range
	.dwattr DW$60, DW_AT_low_pc(DW$L$_AlarmLevelOP$37$B)
	.dwattr DW$60, DW_AT_high_pc(DW$L$_AlarmLevelOP$37$E)
DW$61	.dwtag  DW_TAG_loop_range
	.dwattr DW$61, DW_AT_low_pc(DW$L$_AlarmLevelOP$38$B)
	.dwattr DW$61, DW_AT_high_pc(DW$L$_AlarmLevelOP$38$E)
	.dwendtag DW$55


DW$62	.dwtag  DW_TAG_loop
	.dwattr DW$62, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\digout.asm:L34:1:1471518971")
	.dwattr DW$62, DW_AT_begin_file("digout.c")
	.dwattr DW$62, DW_AT_begin_line(0x118)
	.dwattr DW$62, DW_AT_end_line(0x13b)
DW$63	.dwtag  DW_TAG_loop_range
	.dwattr DW$63, DW_AT_low_pc(DW$L$_AlarmLevelOP$6$B)
	.dwattr DW$63, DW_AT_high_pc(DW$L$_AlarmLevelOP$6$E)
DW$64	.dwtag  DW_TAG_loop_range
	.dwattr DW$64, DW_AT_low_pc(DW$L$_AlarmLevelOP$7$B)
	.dwattr DW$64, DW_AT_high_pc(DW$L$_AlarmLevelOP$7$E)
DW$65	.dwtag  DW_TAG_loop_range
	.dwattr DW$65, DW_AT_low_pc(DW$L$_AlarmLevelOP$8$B)
	.dwattr DW$65, DW_AT_high_pc(DW$L$_AlarmLevelOP$8$E)
DW$66	.dwtag  DW_TAG_loop_range
	.dwattr DW$66, DW_AT_low_pc(DW$L$_AlarmLevelOP$9$B)
	.dwattr DW$66, DW_AT_high_pc(DW$L$_AlarmLevelOP$9$E)
DW$67	.dwtag  DW_TAG_loop_range
	.dwattr DW$67, DW_AT_low_pc(DW$L$_AlarmLevelOP$10$B)
	.dwattr DW$67, DW_AT_high_pc(DW$L$_AlarmLevelOP$10$E)
DW$68	.dwtag  DW_TAG_loop_range
	.dwattr DW$68, DW_AT_low_pc(DW$L$_AlarmLevelOP$11$B)
	.dwattr DW$68, DW_AT_high_pc(DW$L$_AlarmLevelOP$11$E)
DW$69	.dwtag  DW_TAG_loop_range
	.dwattr DW$69, DW_AT_low_pc(DW$L$_AlarmLevelOP$12$B)
	.dwattr DW$69, DW_AT_high_pc(DW$L$_AlarmLevelOP$12$E)
DW$70	.dwtag  DW_TAG_loop_range
	.dwattr DW$70, DW_AT_low_pc(DW$L$_AlarmLevelOP$13$B)
	.dwattr DW$70, DW_AT_high_pc(DW$L$_AlarmLevelOP$13$E)
DW$71	.dwtag  DW_TAG_loop_range
	.dwattr DW$71, DW_AT_low_pc(DW$L$_AlarmLevelOP$14$B)
	.dwattr DW$71, DW_AT_high_pc(DW$L$_AlarmLevelOP$14$E)
DW$72	.dwtag  DW_TAG_loop_range
	.dwattr DW$72, DW_AT_low_pc(DW$L$_AlarmLevelOP$15$B)
	.dwattr DW$72, DW_AT_high_pc(DW$L$_AlarmLevelOP$15$E)
DW$73	.dwtag  DW_TAG_loop_range
	.dwattr DW$73, DW_AT_low_pc(DW$L$_AlarmLevelOP$16$B)
	.dwattr DW$73, DW_AT_high_pc(DW$L$_AlarmLevelOP$16$E)
DW$74	.dwtag  DW_TAG_loop_range
	.dwattr DW$74, DW_AT_low_pc(DW$L$_AlarmLevelOP$17$B)
	.dwattr DW$74, DW_AT_high_pc(DW$L$_AlarmLevelOP$17$E)
DW$75	.dwtag  DW_TAG_loop_range
	.dwattr DW$75, DW_AT_low_pc(DW$L$_AlarmLevelOP$18$B)
	.dwattr DW$75, DW_AT_high_pc(DW$L$_AlarmLevelOP$18$E)
DW$76	.dwtag  DW_TAG_loop_range
	.dwattr DW$76, DW_AT_low_pc(DW$L$_AlarmLevelOP$19$B)
	.dwattr DW$76, DW_AT_high_pc(DW$L$_AlarmLevelOP$19$E)
DW$77	.dwtag  DW_TAG_loop_range
	.dwattr DW$77, DW_AT_low_pc(DW$L$_AlarmLevelOP$20$B)
	.dwattr DW$77, DW_AT_high_pc(DW$L$_AlarmLevelOP$20$E)
DW$78	.dwtag  DW_TAG_loop_range
	.dwattr DW$78, DW_AT_low_pc(DW$L$_AlarmLevelOP$21$B)
	.dwattr DW$78, DW_AT_high_pc(DW$L$_AlarmLevelOP$21$E)
DW$79	.dwtag  DW_TAG_loop_range
	.dwattr DW$79, DW_AT_low_pc(DW$L$_AlarmLevelOP$22$B)
	.dwattr DW$79, DW_AT_high_pc(DW$L$_AlarmLevelOP$22$E)
DW$80	.dwtag  DW_TAG_loop_range
	.dwattr DW$80, DW_AT_low_pc(DW$L$_AlarmLevelOP$23$B)
	.dwattr DW$80, DW_AT_high_pc(DW$L$_AlarmLevelOP$23$E)
DW$81	.dwtag  DW_TAG_loop_range
	.dwattr DW$81, DW_AT_low_pc(DW$L$_AlarmLevelOP$24$B)
	.dwattr DW$81, DW_AT_high_pc(DW$L$_AlarmLevelOP$24$E)
DW$82	.dwtag  DW_TAG_loop_range
	.dwattr DW$82, DW_AT_low_pc(DW$L$_AlarmLevelOP$25$B)
	.dwattr DW$82, DW_AT_high_pc(DW$L$_AlarmLevelOP$25$E)
DW$83	.dwtag  DW_TAG_loop_range
	.dwattr DW$83, DW_AT_low_pc(DW$L$_AlarmLevelOP$26$B)
	.dwattr DW$83, DW_AT_high_pc(DW$L$_AlarmLevelOP$26$E)
DW$84	.dwtag  DW_TAG_loop_range
	.dwattr DW$84, DW_AT_low_pc(DW$L$_AlarmLevelOP$27$B)
	.dwattr DW$84, DW_AT_high_pc(DW$L$_AlarmLevelOP$27$E)
DW$85	.dwtag  DW_TAG_loop_range
	.dwattr DW$85, DW_AT_low_pc(DW$L$_AlarmLevelOP$28$B)
	.dwattr DW$85, DW_AT_high_pc(DW$L$_AlarmLevelOP$28$E)
DW$86	.dwtag  DW_TAG_loop_range
	.dwattr DW$86, DW_AT_low_pc(DW$L$_AlarmLevelOP$29$B)
	.dwattr DW$86, DW_AT_high_pc(DW$L$_AlarmLevelOP$29$E)
DW$87	.dwtag  DW_TAG_loop_range
	.dwattr DW$87, DW_AT_low_pc(DW$L$_AlarmLevelOP$30$B)
	.dwattr DW$87, DW_AT_high_pc(DW$L$_AlarmLevelOP$30$E)
DW$88	.dwtag  DW_TAG_loop_range
	.dwattr DW$88, DW_AT_low_pc(DW$L$_AlarmLevelOP$31$B)
	.dwattr DW$88, DW_AT_high_pc(DW$L$_AlarmLevelOP$31$E)
	.dwendtag DW$62

	.dwattr DW$54, DW_AT_end_file("digout.c")
	.dwattr DW$54, DW_AT_end_line(0x171)
	.dwattr DW$54, DW_AT_end_column(0x01)
	.dwendtag DW$54

	.sect	".text"
	.global	_SlowDownLevelOP

DW$89	.dwtag  DW_TAG_subprogram, DW_AT_name("SlowDownLevelOP"), DW_AT_symbol_name("_SlowDownLevelOP")
	.dwattr DW$89, DW_AT_low_pc(_SlowDownLevelOP)
	.dwattr DW$89, DW_AT_high_pc(0x00)
	.dwattr DW$89, DW_AT_begin_file("digout.c")
	.dwattr DW$89, DW_AT_begin_line(0x178)
	.dwattr DW$89, DW_AT_begin_column(0x06)
	.dwattr DW$89, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$89, DW_AT_skeletal(0x01)
	.dwpsn	"digout.c",377,1

;***************************************************************
;* FNAME: _SlowDownLevelOP              FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  6 SOE     *
;***************************************************************

_SlowDownLevelOP:
        MOVL      *SP++,XAR1
        MOVW      DP,#_digout
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOV       AL,@_digout           ; |383| 
        CMPB      AL,#1                 ; |383| 
        ADDB      SP,#2
        BF        L96,EQ                ; |383| 
        ; branchcc occurs ; |383| 
        MOVW      DP,#_config+1
        TBIT      @_config+1,#2         ; |386| 
        BF        L95,NTC               ; |386| 
        ; branchcc occurs ; |386| 
        MOVW      DP,#_settings+30
        MOV       AL,@_settings+30      ; |389| 
        CMPB      AL,#1                 ; |389| 
        BF        L94,EQ                ; |389| 
        ; branchcc occurs ; |389| 
        MOVW      DP,#_timers+51
        MOV       AL,@_timers+51        ; |395| 
        BF        L96,NEQ               ; |395| 
        ; branchcc occurs ; |395| 
        MOVW      DP,#_allsensors
        MOV       *-SP[1],#0            ; |398| 
        MOVB      XAR2,#1               ; |397| 
        MOVB      XAR1,#0
        MOV       AL,@_allsensors       ; |399| 
        BF        L84,EQ                ; |399| 
        ; branchcc occurs ; |399| 
L69:    
DW$L$_SlowDownLevelOP$6$B:
	.dwpsn	"digout.c",400,0
        MOV       AL,AR1                ; |401| 
        LCR       #_GetStatus2Flags     ; |401| 
        ; call occurs [#_GetStatus2Flags] ; |401| 
        MOV       AL,*+XAR4[0]          ; |401| 
        AND       AH,AL,#0x0008         ; |403| 
        BF        L71,EQ                ; |403| 
        ; branchcc occurs ; |403| 
DW$L$_SlowDownLevelOP$6$E:
DW$L$_SlowDownLevelOP$7$B:
        MOVL      XAR4,#_statusprevious ; |406| 
        MOVB      XAR2,#0
        TBIT      *+XAR4[AR1],#3        ; |406| 
        BF        L70,TC                ; |406| 
        ; branchcc occurs ; |406| 
DW$L$_SlowDownLevelOP$7$E:
DW$L$_SlowDownLevelOP$8$B:
        MOV       *-SP[1],#1            ; |406| 
DW$L$_SlowDownLevelOP$8$E:
L70:    
DW$L$_SlowDownLevelOP$9$B:
        OR        *+XAR4[AR1],#0x0008   ; |406| 
        BF        L72,UNC               ; |407| 
        ; branch occurs ; |407| 
DW$L$_SlowDownLevelOP$9$E:
L71:    
DW$L$_SlowDownLevelOP$10$B:
        MOVL      XAR4,#_statusprevious ; |408| 
        AND       *+XAR4[AR1],#0xfff7   ; |408| 
DW$L$_SlowDownLevelOP$10$E:
L72:    
DW$L$_SlowDownLevelOP$11$B:
        AND       AL,AL,#0x0200         ; |407| 
        BF        L74,EQ                ; |407| 
        ; branchcc occurs ; |407| 
DW$L$_SlowDownLevelOP$11$E:
DW$L$_SlowDownLevelOP$12$B:
        TBIT      *+XAR4[AR1],#9        ; |412| 
        MOVB      XAR2,#0
        BF        L73,TC                ; |412| 
        ; branchcc occurs ; |412| 
DW$L$_SlowDownLevelOP$12$E:
DW$L$_SlowDownLevelOP$13$B:
        MOV       *-SP[1],#1            ; |412| 
DW$L$_SlowDownLevelOP$13$E:
L73:    
DW$L$_SlowDownLevelOP$14$B:
        OR        *+XAR4[AR1],#0x0200   ; |412| 
        BF        L75,UNC               ; |413| 
        ; branch occurs ; |413| 
DW$L$_SlowDownLevelOP$14$E:
L74:    
DW$L$_SlowDownLevelOP$15$B:
        AND       *+XAR4[AR1],#0xfdff   ; |414| 
DW$L$_SlowDownLevelOP$15$E:
L75:    
DW$L$_SlowDownLevelOP$16$B:
        MOV       AL,AR1
        CMPB      AL,#16                ; |413| 
        BF        L79,LO                ; |413| 
        ; branchcc occurs ; |413| 
DW$L$_SlowDownLevelOP$16$E:
DW$L$_SlowDownLevelOP$17$B:
        ADDB      AL,#-16
        MOVZ      AR3,AL                ; |429| 
        MOVW      DP,#_damalarms+1
        MOV       AL,@_damalarms+1      ; |429| 
        MOV       AH,AR3                ; |429| 
        LCR       #_CheckBitSet         ; |429| 
        ; call occurs [#_CheckBitSet] ; |429| 
        CMPB      AL,#1                 ; |429| 
        BF        L77,NEQ               ; |429| 
        ; branchcc occurs ; |429| 
DW$L$_SlowDownLevelOP$17$E:
DW$L$_SlowDownLevelOP$18$B:
        MOVW      DP,#_damagesingleprev+1
        MOV       AL,@_damagesingleprev+1 ; |432| 
        MOV       AH,AR3                ; |432| 
        LCR       #_CheckBitSet         ; |432| 
        ; call occurs [#_CheckBitSet] ; |432| 
        MOVB      XAR2,#0
        CMPB      AL,#0                 ; |432| 
        BF        L76,NEQ               ; |432| 
        ; branchcc occurs ; |432| 
DW$L$_SlowDownLevelOP$18$E:
DW$L$_SlowDownLevelOP$19$B:
        MOV       *-SP[1],#1            ; |432| 
DW$L$_SlowDownLevelOP$19$E:
L76:    
DW$L$_SlowDownLevelOP$20$B:
        MOVW      DP,#_damagesingleprev+1
        MOV       AL,@_damagesingleprev+1 ; |432| 
        MOV       AH,AR1                ; |432| 
        ADDB      AH,#-16
        LCR       #_BitSet              ; |432| 
        ; call occurs [#_BitSet] ; |432| 
        BF        L78,UNC               ; |433| 
        ; branch occurs ; |433| 
DW$L$_SlowDownLevelOP$20$E:
L77:    
DW$L$_SlowDownLevelOP$21$B:
        MOVW      DP,#_damagesingleprev+1
        MOV       AL,@_damagesingleprev+1 ; |434| 
        MOV       AH,AR1                ; |434| 
        ADDB      AH,#-16
        LCR       #_BitClear            ; |434| 
        ; call occurs [#_BitClear] ; |434| 
DW$L$_SlowDownLevelOP$21$E:
L78:    
DW$L$_SlowDownLevelOP$22$B:
        MOVW      DP,#_damagesingleprev+1
        MOV       @_damagesingleprev+1,AL ; |434| 
        BF        L83,UNC               ; |434| 
        ; branch occurs ; |434| 
DW$L$_SlowDownLevelOP$22$E:
L79:    
DW$L$_SlowDownLevelOP$23$B:
        MOVW      DP,#_damalarms
        MOV       AL,@_damalarms        ; |419| 
        MOV       AH,AR1                ; |419| 
        LCR       #_CheckBitSet         ; |419| 
        ; call occurs [#_CheckBitSet] ; |419| 
        CMPB      AL,#1                 ; |419| 
        BF        L81,NEQ               ; |419| 
        ; branchcc occurs ; |419| 
DW$L$_SlowDownLevelOP$23$E:
DW$L$_SlowDownLevelOP$24$B:
        MOVW      DP,#_damagesingleprev
        MOV       AL,@_damagesingleprev ; |422| 
        MOV       AH,AR1                ; |422| 
        LCR       #_CheckBitSet         ; |422| 
        ; call occurs [#_CheckBitSet] ; |422| 
        MOVB      XAR2,#0
        CMPB      AL,#0                 ; |422| 
        BF        L80,NEQ               ; |422| 
        ; branchcc occurs ; |422| 
DW$L$_SlowDownLevelOP$24$E:
DW$L$_SlowDownLevelOP$25$B:
        MOV       *-SP[1],#1            ; |422| 
DW$L$_SlowDownLevelOP$25$E:
L80:    
DW$L$_SlowDownLevelOP$26$B:
        MOVW      DP,#_damagesingleprev
        MOV       AL,@_damagesingleprev ; |422| 
        MOV       AH,AR1                ; |422| 
        LCR       #_BitSet              ; |422| 
        ; call occurs [#_BitSet] ; |422| 
        BF        L82,UNC               ; |423| 
        ; branch occurs ; |423| 
DW$L$_SlowDownLevelOP$26$E:
L81:    
DW$L$_SlowDownLevelOP$27$B:
        MOVW      DP,#_damagesingleprev
        MOV       AL,@_damagesingleprev ; |424| 
        MOV       AH,AR1                ; |424| 
        LCR       #_BitClear            ; |424| 
        ; call occurs [#_BitClear] ; |424| 
DW$L$_SlowDownLevelOP$27$E:
L82:    
DW$L$_SlowDownLevelOP$28$B:
        MOVW      DP,#_damagesingleprev
        MOV       @_damagesingleprev,AL ; |424| 
DW$L$_SlowDownLevelOP$28$E:
L83:    
DW$L$_SlowDownLevelOP$29$B:
        ADDB      XAR1,#1               ; |399| 
        MOVW      DP,#_allsensors
        MOV       AL,AR1                ; |399| 
        CMP       AL,@_allsensors       ; |399| 
	.dwpsn	"digout.c",437,0
        BF        L69,LO                ; |399| 
        ; branchcc occurs ; |399| 
DW$L$_SlowDownLevelOP$29$E:
L84:    
        MOVW      DP,#_allsensors
        MOVB      XAR1,#0
        AND       AL,@_allsensors,#0xfffe ; |439| 
        BF        L92,EQ                ; |439| 
        ; branchcc occurs ; |439| 
L85:    
DW$L$_SlowDownLevelOP$31$B:
	.dwpsn	"digout.c",440,0
        MOVW      DP,#_damalarms+2
        MOV       AL,@_damalarms+2      ; |441| 
        MOV       AH,AR1                ; |441| 
        LCR       #_CheckBitSet         ; |441| 
        ; call occurs [#_CheckBitSet] ; |441| 
        CMPB      AL,#1                 ; |441| 
        BF        L87,NEQ               ; |441| 
        ; branchcc occurs ; |441| 
DW$L$_SlowDownLevelOP$31$E:
DW$L$_SlowDownLevelOP$32$B:
        MOVW      DP,#_damagecylprev
        MOV       AL,@_damagecylprev    ; |444| 
        MOV       AH,AR1                ; |444| 
        LCR       #_CheckBitSet         ; |444| 
        ; call occurs [#_CheckBitSet] ; |444| 
        MOVB      XAR2,#0
        CMPB      AL,#0                 ; |444| 
        BF        L86,NEQ               ; |444| 
        ; branchcc occurs ; |444| 
DW$L$_SlowDownLevelOP$32$E:
DW$L$_SlowDownLevelOP$33$B:
        MOV       *-SP[1],#1            ; |444| 
DW$L$_SlowDownLevelOP$33$E:
L86:    
DW$L$_SlowDownLevelOP$34$B:
        MOVW      DP,#_damagecylprev
        MOV       AL,@_damagecylprev    ; |444| 
        MOV       AH,AR1                ; |444| 
        LCR       #_BitSet              ; |444| 
        ; call occurs [#_BitSet] ; |444| 
        BF        L88,UNC               ; |445| 
        ; branch occurs ; |445| 
DW$L$_SlowDownLevelOP$34$E:
L87:    
DW$L$_SlowDownLevelOP$35$B:
        MOVW      DP,#_damagecylprev
        MOV       AL,@_damagecylprev    ; |446| 
        MOV       AH,AR1                ; |446| 
        LCR       #_BitClear            ; |446| 
        ; call occurs [#_BitClear] ; |446| 
DW$L$_SlowDownLevelOP$35$E:
L88:    
DW$L$_SlowDownLevelOP$36$B:
        MOVW      DP,#_damagecylprev
        MOV       @_damagecylprev,AL    ; |446| 
        MOVW      DP,#_damalarms+3
        MOV       AL,@_damalarms+3      ; |447| 
        MOV       AH,AR1                ; |447| 
        LCR       #_CheckBitSet         ; |447| 
        ; call occurs [#_CheckBitSet] ; |447| 
        CMPB      AL,#1                 ; |447| 
        BF        L90,NEQ               ; |447| 
        ; branchcc occurs ; |447| 
DW$L$_SlowDownLevelOP$36$E:
DW$L$_SlowDownLevelOP$37$B:
        MOVW      DP,#_damagembnprev
        MOV       AL,@_damagembnprev    ; |450| 
        MOV       AH,AR1                ; |450| 
        LCR       #_CheckBitSet         ; |450| 
        ; call occurs [#_CheckBitSet] ; |450| 
        MOVB      XAR2,#0
        CMPB      AL,#0                 ; |450| 
        BF        L89,NEQ               ; |450| 
        ; branchcc occurs ; |450| 
DW$L$_SlowDownLevelOP$37$E:
DW$L$_SlowDownLevelOP$38$B:
        MOV       *-SP[1],#1            ; |450| 
DW$L$_SlowDownLevelOP$38$E:
L89:    
DW$L$_SlowDownLevelOP$39$B:
        MOVW      DP,#_damagembnprev
        MOV       AL,@_damagembnprev    ; |450| 
        MOV       AH,AR1                ; |450| 
        LCR       #_BitSet              ; |450| 
        ; call occurs [#_BitSet] ; |450| 
        BF        L91,UNC               ; |451| 
        ; branch occurs ; |451| 
DW$L$_SlowDownLevelOP$39$E:
L90:    
DW$L$_SlowDownLevelOP$40$B:
        MOVW      DP,#_damagembnprev
        MOV       AL,@_damagembnprev    ; |452| 
        MOV       AH,AR1                ; |452| 
        LCR       #_BitClear            ; |452| 
        ; call occurs [#_BitClear] ; |452| 
DW$L$_SlowDownLevelOP$40$E:
L91:    
DW$L$_SlowDownLevelOP$41$B:
        MOVW      DP,#_damagembnprev
        MOV       @_damagembnprev,AL    ; |452| 
        ADDB      XAR1,#1               ; |439| 
        MOVW      DP,#_allsensors
        MOV       AL,@_allsensors       ; |439| 
        LSR       AL,1                  ; |439| 
        CMP       AL,AR1                ; |439| 
	.dwpsn	"digout.c",454,0
        BF        L85,HI                ; |439| 
        ; branchcc occurs ; |439| 
DW$L$_SlowDownLevelOP$41$E:
L92:    
        MOV       AL,*-SP[1]
        CMPB      AL,#1                 ; |456| 
        BF        L93,EQ                ; |456| 
        ; branchcc occurs ; |456| 
        MOV       AL,AR2
        CMPB      AL,#1                 ; |466| 
        BF        L94,NEQ               ; |466| 
        ; branchcc occurs ; |466| 
        BF        L95,UNC               ; |466| 
        ; branch occurs ; |466| 
L93:    
        MOVW      DP,#_settings+23
        MOV       AL,@_settings+23      ; |458| 
        BF        L94,EQ                ; |458| 
        ; branchcc occurs ; |458| 
        MOVW      DP,#_allsensors+6
        MOV       T,@_allsensors+6      ; |463| 
        MPYB      ACC,T,#200            ; |463| 
        MOVW      DP,#_timers+51
        MOV       @_timers+51,AL        ; |463| 
        BF        L95,UNC               ; |463| 
        ; branch occurs ; |463| 
L94:    
        MOVW      DP,#_settings+23
        MOV       @_settings+23,#1      ; |391| 
        BF        L96,UNC               ; |392| 
        ; branch occurs ; |392| 
L95:    
        MOVW      DP,#_settings+23
        MOV       @_settings+23,#0      ; |477| 
L96:    
        SUBB      SP,#2
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"digout.c",482,1
        LRETR
        ; return occurs

DW$90	.dwtag  DW_TAG_loop
	.dwattr DW$90, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\digout.asm:L85:1:1471518971")
	.dwattr DW$90, DW_AT_begin_file("digout.c")
	.dwattr DW$90, DW_AT_begin_line(0x1b7)
	.dwattr DW$90, DW_AT_end_line(0x1c6)
DW$91	.dwtag  DW_TAG_loop_range
	.dwattr DW$91, DW_AT_low_pc(DW$L$_SlowDownLevelOP$31$B)
	.dwattr DW$91, DW_AT_high_pc(DW$L$_SlowDownLevelOP$31$E)
DW$92	.dwtag  DW_TAG_loop_range
	.dwattr DW$92, DW_AT_low_pc(DW$L$_SlowDownLevelOP$32$B)
	.dwattr DW$92, DW_AT_high_pc(DW$L$_SlowDownLevelOP$32$E)
DW$93	.dwtag  DW_TAG_loop_range
	.dwattr DW$93, DW_AT_low_pc(DW$L$_SlowDownLevelOP$33$B)
	.dwattr DW$93, DW_AT_high_pc(DW$L$_SlowDownLevelOP$33$E)
DW$94	.dwtag  DW_TAG_loop_range
	.dwattr DW$94, DW_AT_low_pc(DW$L$_SlowDownLevelOP$34$B)
	.dwattr DW$94, DW_AT_high_pc(DW$L$_SlowDownLevelOP$34$E)
DW$95	.dwtag  DW_TAG_loop_range
	.dwattr DW$95, DW_AT_low_pc(DW$L$_SlowDownLevelOP$35$B)
	.dwattr DW$95, DW_AT_high_pc(DW$L$_SlowDownLevelOP$35$E)
DW$96	.dwtag  DW_TAG_loop_range
	.dwattr DW$96, DW_AT_low_pc(DW$L$_SlowDownLevelOP$36$B)
	.dwattr DW$96, DW_AT_high_pc(DW$L$_SlowDownLevelOP$36$E)
DW$97	.dwtag  DW_TAG_loop_range
	.dwattr DW$97, DW_AT_low_pc(DW$L$_SlowDownLevelOP$37$B)
	.dwattr DW$97, DW_AT_high_pc(DW$L$_SlowDownLevelOP$37$E)
DW$98	.dwtag  DW_TAG_loop_range
	.dwattr DW$98, DW_AT_low_pc(DW$L$_SlowDownLevelOP$38$B)
	.dwattr DW$98, DW_AT_high_pc(DW$L$_SlowDownLevelOP$38$E)
DW$99	.dwtag  DW_TAG_loop_range
	.dwattr DW$99, DW_AT_low_pc(DW$L$_SlowDownLevelOP$39$B)
	.dwattr DW$99, DW_AT_high_pc(DW$L$_SlowDownLevelOP$39$E)
DW$100	.dwtag  DW_TAG_loop_range
	.dwattr DW$100, DW_AT_low_pc(DW$L$_SlowDownLevelOP$40$B)
	.dwattr DW$100, DW_AT_high_pc(DW$L$_SlowDownLevelOP$40$E)
DW$101	.dwtag  DW_TAG_loop_range
	.dwattr DW$101, DW_AT_low_pc(DW$L$_SlowDownLevelOP$41$B)
	.dwattr DW$101, DW_AT_high_pc(DW$L$_SlowDownLevelOP$41$E)
	.dwendtag DW$90


DW$102	.dwtag  DW_TAG_loop
	.dwattr DW$102, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\digout.asm:L69:1:1471518971")
	.dwattr DW$102, DW_AT_begin_file("digout.c")
	.dwattr DW$102, DW_AT_begin_line(0x18f)
	.dwattr DW$102, DW_AT_end_line(0x1b5)
DW$103	.dwtag  DW_TAG_loop_range
	.dwattr DW$103, DW_AT_low_pc(DW$L$_SlowDownLevelOP$6$B)
	.dwattr DW$103, DW_AT_high_pc(DW$L$_SlowDownLevelOP$6$E)
DW$104	.dwtag  DW_TAG_loop_range
	.dwattr DW$104, DW_AT_low_pc(DW$L$_SlowDownLevelOP$23$B)
	.dwattr DW$104, DW_AT_high_pc(DW$L$_SlowDownLevelOP$23$E)
DW$105	.dwtag  DW_TAG_loop_range
	.dwattr DW$105, DW_AT_low_pc(DW$L$_SlowDownLevelOP$24$B)
	.dwattr DW$105, DW_AT_high_pc(DW$L$_SlowDownLevelOP$24$E)
DW$106	.dwtag  DW_TAG_loop_range
	.dwattr DW$106, DW_AT_low_pc(DW$L$_SlowDownLevelOP$25$B)
	.dwattr DW$106, DW_AT_high_pc(DW$L$_SlowDownLevelOP$25$E)
DW$107	.dwtag  DW_TAG_loop_range
	.dwattr DW$107, DW_AT_low_pc(DW$L$_SlowDownLevelOP$26$B)
	.dwattr DW$107, DW_AT_high_pc(DW$L$_SlowDownLevelOP$26$E)
DW$108	.dwtag  DW_TAG_loop_range
	.dwattr DW$108, DW_AT_low_pc(DW$L$_SlowDownLevelOP$27$B)
	.dwattr DW$108, DW_AT_high_pc(DW$L$_SlowDownLevelOP$27$E)
DW$109	.dwtag  DW_TAG_loop_range
	.dwattr DW$109, DW_AT_low_pc(DW$L$_SlowDownLevelOP$7$B)
	.dwattr DW$109, DW_AT_high_pc(DW$L$_SlowDownLevelOP$7$E)
DW$110	.dwtag  DW_TAG_loop_range
	.dwattr DW$110, DW_AT_low_pc(DW$L$_SlowDownLevelOP$8$B)
	.dwattr DW$110, DW_AT_high_pc(DW$L$_SlowDownLevelOP$8$E)
DW$111	.dwtag  DW_TAG_loop_range
	.dwattr DW$111, DW_AT_low_pc(DW$L$_SlowDownLevelOP$9$B)
	.dwattr DW$111, DW_AT_high_pc(DW$L$_SlowDownLevelOP$9$E)
DW$112	.dwtag  DW_TAG_loop_range
	.dwattr DW$112, DW_AT_low_pc(DW$L$_SlowDownLevelOP$10$B)
	.dwattr DW$112, DW_AT_high_pc(DW$L$_SlowDownLevelOP$10$E)
DW$113	.dwtag  DW_TAG_loop_range
	.dwattr DW$113, DW_AT_low_pc(DW$L$_SlowDownLevelOP$11$B)
	.dwattr DW$113, DW_AT_high_pc(DW$L$_SlowDownLevelOP$11$E)
DW$114	.dwtag  DW_TAG_loop_range
	.dwattr DW$114, DW_AT_low_pc(DW$L$_SlowDownLevelOP$12$B)
	.dwattr DW$114, DW_AT_high_pc(DW$L$_SlowDownLevelOP$12$E)
DW$115	.dwtag  DW_TAG_loop_range
	.dwattr DW$115, DW_AT_low_pc(DW$L$_SlowDownLevelOP$13$B)
	.dwattr DW$115, DW_AT_high_pc(DW$L$_SlowDownLevelOP$13$E)
DW$116	.dwtag  DW_TAG_loop_range
	.dwattr DW$116, DW_AT_low_pc(DW$L$_SlowDownLevelOP$14$B)
	.dwattr DW$116, DW_AT_high_pc(DW$L$_SlowDownLevelOP$14$E)
DW$117	.dwtag  DW_TAG_loop_range
	.dwattr DW$117, DW_AT_low_pc(DW$L$_SlowDownLevelOP$15$B)
	.dwattr DW$117, DW_AT_high_pc(DW$L$_SlowDownLevelOP$15$E)
DW$118	.dwtag  DW_TAG_loop_range
	.dwattr DW$118, DW_AT_low_pc(DW$L$_SlowDownLevelOP$16$B)
	.dwattr DW$118, DW_AT_high_pc(DW$L$_SlowDownLevelOP$16$E)
DW$119	.dwtag  DW_TAG_loop_range
	.dwattr DW$119, DW_AT_low_pc(DW$L$_SlowDownLevelOP$17$B)
	.dwattr DW$119, DW_AT_high_pc(DW$L$_SlowDownLevelOP$17$E)
DW$120	.dwtag  DW_TAG_loop_range
	.dwattr DW$120, DW_AT_low_pc(DW$L$_SlowDownLevelOP$18$B)
	.dwattr DW$120, DW_AT_high_pc(DW$L$_SlowDownLevelOP$18$E)
DW$121	.dwtag  DW_TAG_loop_range
	.dwattr DW$121, DW_AT_low_pc(DW$L$_SlowDownLevelOP$19$B)
	.dwattr DW$121, DW_AT_high_pc(DW$L$_SlowDownLevelOP$19$E)
DW$122	.dwtag  DW_TAG_loop_range
	.dwattr DW$122, DW_AT_low_pc(DW$L$_SlowDownLevelOP$20$B)
	.dwattr DW$122, DW_AT_high_pc(DW$L$_SlowDownLevelOP$20$E)
DW$123	.dwtag  DW_TAG_loop_range
	.dwattr DW$123, DW_AT_low_pc(DW$L$_SlowDownLevelOP$21$B)
	.dwattr DW$123, DW_AT_high_pc(DW$L$_SlowDownLevelOP$21$E)
DW$124	.dwtag  DW_TAG_loop_range
	.dwattr DW$124, DW_AT_low_pc(DW$L$_SlowDownLevelOP$22$B)
	.dwattr DW$124, DW_AT_high_pc(DW$L$_SlowDownLevelOP$22$E)
DW$125	.dwtag  DW_TAG_loop_range
	.dwattr DW$125, DW_AT_low_pc(DW$L$_SlowDownLevelOP$28$B)
	.dwattr DW$125, DW_AT_high_pc(DW$L$_SlowDownLevelOP$28$E)
DW$126	.dwtag  DW_TAG_loop_range
	.dwattr DW$126, DW_AT_low_pc(DW$L$_SlowDownLevelOP$29$B)
	.dwattr DW$126, DW_AT_high_pc(DW$L$_SlowDownLevelOP$29$E)
	.dwendtag DW$102

	.dwattr DW$89, DW_AT_end_file("digout.c")
	.dwattr DW$89, DW_AT_end_line(0x1e2)
	.dwattr DW$89, DW_AT_end_column(0x01)
	.dwendtag DW$89

	.sect	".text"
	.global	_InitOffboardGPIO

DW$127	.dwtag  DW_TAG_subprogram, DW_AT_name("InitOffboardGPIO"), DW_AT_symbol_name("_InitOffboardGPIO")
	.dwattr DW$127, DW_AT_low_pc(_InitOffboardGPIO)
	.dwattr DW$127, DW_AT_high_pc(0x00)
	.dwattr DW$127, DW_AT_begin_file("digout.c")
	.dwattr DW$127, DW_AT_begin_line(0x1e7)
	.dwattr DW$127, DW_AT_begin_column(0x06)
	.dwattr DW$127, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$127, DW_AT_skeletal(0x01)
	.dwpsn	"digout.c",488,1

;***************************************************************
;* FNAME: _InitOffboardGPIO             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_InitOffboardGPIO:
 eallow             ; Enable accesses to PIE control registers
        MOV       AL,*(0:0x70c5)        ; |492| 
        OR        AL,#0x2c00            ; |492| 
        MOV       *(0:0x70c5),AL        ; |492| 
 edis               ; Disable accesses to PIE control registers
        SPM       #0
        MOVW      DP,#_gpb
        OR        @_gpb,#0x0400         ; |496| 
        MOVW      DP,#_gpb
        OR        @_gpb,#0x0800         ; |497| 
        MOVW      DP,#_gpb
        AND       @_gpb,#0xdfff         ; |499| 
	.dwpsn	"digout.c",501,1
        LRETR
        ; return occurs
	.dwattr DW$127, DW_AT_end_file("digout.c")
	.dwattr DW$127, DW_AT_end_line(0x1f5)
	.dwattr DW$127, DW_AT_end_column(0x01)
	.dwendtag DW$127

;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_CheckBitSet
	.global	_BitSet
	.global	_BitClear
	.global	_GetStatus2Flags
	.global	_WioStructPtr
	.global	_WIOEnabled
	.global	_gpb
	.global	_gpf
	.global	_settings
	.global	_timers
	.global	_allsensors
	.global	_cylinders
	.global	_config
	.global	_damalarms
	.global	_alarms
	.global	_waterinoil
	.global	_slowdownblipstate
	.global	_slem
	.global	_rtcbat

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

DW$T$54	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$54, DW_AT_language(DW_LANG_C)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)

DW$T$56	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$56, DW_AT_language(DW_LANG_C)
DW$128	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$129	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$56


DW$T$58	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$58, DW_AT_language(DW_LANG_C)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)

DW$T$31	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$31, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$31, DW_AT_byte_size(0x0e)
DW$130	.dwtag  DW_TAG_subrange_type
	.dwattr DW$130, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$31


DW$T$46	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$46, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$46, DW_AT_byte_size(0x02)
DW$131	.dwtag  DW_TAG_subrange_type
	.dwattr DW$131, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$46


DW$T$61	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$61, DW_AT_language(DW_LANG_C)
DW$132	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$133	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$61

DW$T$66	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$65)
	.dwattr DW$T$66, DW_AT_address_class(0x16)

DW$T$67	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$66)
	.dwattr DW$T$67, DW_AT_language(DW_LANG_C)
DW$134	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$67


DW$T$68	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$65)
	.dwattr DW$T$68, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$68, DW_AT_byte_size(0x1c)
DW$135	.dwtag  DW_TAG_subrange_type
	.dwattr DW$135, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$68

DW$T$73	.dwtag  DW_TAG_typedef, DW_AT_name("waterinoilstruct"), DW_AT_type(*DW$T$22)
	.dwattr DW$T$73, DW_AT_language(DW_LANG_C)
DW$T$74	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$73)
	.dwattr DW$T$74, DW_AT_address_class(0x16)

DW$T$75	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$74)
	.dwattr DW$T$75, DW_AT_language(DW_LANG_C)
DW$136	.dwtag  DW_TAG_far_type
	.dwattr DW$136, DW_AT_type(*DW$T$79)
DW$T$80	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$80, DW_AT_type(*DW$136)
DW$137	.dwtag  DW_TAG_far_type
	.dwattr DW$137, DW_AT_type(*DW$T$83)
DW$T$84	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$84, DW_AT_type(*DW$137)
DW$T$87	.dwtag  DW_TAG_typedef, DW_AT_name("settingsstruct"), DW_AT_type(*DW$T$30)
	.dwattr DW$T$87, DW_AT_language(DW_LANG_C)
DW$138	.dwtag  DW_TAG_far_type
	.dwattr DW$138, DW_AT_type(*DW$T$88)
DW$T$89	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$89, DW_AT_type(*DW$138)
DW$T$91	.dwtag  DW_TAG_typedef, DW_AT_name("allsensorstruct"), DW_AT_type(*DW$T$35)
	.dwattr DW$T$91, DW_AT_language(DW_LANG_C)

DW$T$93	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$92)
	.dwattr DW$T$93, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$93, DW_AT_byte_size(0x38)
DW$139	.dwtag  DW_TAG_subrange_type
	.dwattr DW$139, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$93

DW$T$96	.dwtag  DW_TAG_typedef, DW_AT_name("configstruct"), DW_AT_type(*DW$T$45)
	.dwattr DW$T$96, DW_AT_language(DW_LANG_C)
DW$T$97	.dwtag  DW_TAG_typedef, DW_AT_name("damalarmsstruct"), DW_AT_type(*DW$T$47)
	.dwattr DW$T$97, DW_AT_language(DW_LANG_C)
DW$T$99	.dwtag  DW_TAG_typedef, DW_AT_name("alarmsstruct"), DW_AT_type(*DW$T$48)
	.dwattr DW$T$99, DW_AT_language(DW_LANG_C)
DW$T$101	.dwtag  DW_TAG_typedef, DW_AT_name("slemstruct"), DW_AT_type(*DW$T$50)
	.dwattr DW$T$101, DW_AT_language(DW_LANG_C)
DW$T$103	.dwtag  DW_TAG_typedef, DW_AT_name("rtcbatstruct"), DW_AT_type(*DW$T$52)
	.dwattr DW$T$103, DW_AT_language(DW_LANG_C)
DW$T$104	.dwtag  DW_TAG_typedef, DW_AT_name("digoutstruct"), DW_AT_type(*DW$T$53)
	.dwattr DW$T$104, DW_AT_language(DW_LANG_C)
DW$T$65	.dwtag  DW_TAG_typedef, DW_AT_name("sensoralarmstruct"), DW_AT_type(*DW$T$19)
	.dwattr DW$T$65, DW_AT_language(DW_LANG_C)

DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_name("tag_waterinoilstruct")
	.dwattr DW$T$22, DW_AT_byte_size(0x0c)
DW$140	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$140, DW_AT_name("netadd"), DW_AT_symbol_name("_netadd")
	.dwattr DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$140, DW_AT_accessibility(DW_ACCESS_public)
DW$141	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$141, DW_AT_name("temperature"), DW_AT_symbol_name("_temperature")
	.dwattr DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$141, DW_AT_accessibility(DW_ACCESS_public)
DW$142	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$142, DW_AT_name("activity"), DW_AT_symbol_name("_activity")
	.dwattr DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$142, DW_AT_accessibility(DW_ACCESS_public)
DW$143	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$143, DW_AT_name("content"), DW_AT_symbol_name("_content")
	.dwattr DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$143, DW_AT_accessibility(DW_ACCESS_public)
DW$144	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$144, DW_AT_name("temperature_int"), DW_AT_symbol_name("_temperature_int")
	.dwattr DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$144, DW_AT_accessibility(DW_ACCESS_public)
DW$145	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$145, DW_AT_name("activity_int"), DW_AT_symbol_name("_activity_int")
	.dwattr DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$145, DW_AT_accessibility(DW_ACCESS_public)
DW$146	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$146, DW_AT_name("content_int"), DW_AT_symbol_name("_content_int")
	.dwattr DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$146, DW_AT_accessibility(DW_ACCESS_public)
DW$147	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$147, DW_AT_name("wioalarms"), DW_AT_symbol_name("_wioalarms")
	.dwattr DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$147, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22

DW$T$79	.dwtag  DW_TAG_typedef, DW_AT_name("gpbport"), DW_AT_type(*DW$T$25)
	.dwattr DW$T$79, DW_AT_language(DW_LANG_C)
DW$T$83	.dwtag  DW_TAG_typedef, DW_AT_name("gpfport"), DW_AT_type(*DW$T$28)
	.dwattr DW$T$83, DW_AT_language(DW_LANG_C)

DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$30, DW_AT_name("tag_settingsstruct")
	.dwattr DW$T$30, DW_AT_byte_size(0x24)
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
DW$179	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
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
	.dwendtag DW$T$30

DW$T$88	.dwtag  DW_TAG_typedef, DW_AT_name("timersstruct"), DW_AT_type(*DW$T$32)
	.dwattr DW$T$88, DW_AT_language(DW_LANG_C)

DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$35, DW_AT_name("tag_allsensorstruct")
	.dwattr DW$T$35, DW_AT_byte_size(0x2d)
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
DW$199	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
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
DW$204	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
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
DW$212	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
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
	.dwendtag DW$T$35

DW$T$92	.dwtag  DW_TAG_typedef, DW_AT_name("cylinderstruct"), DW_AT_type(*DW$T$38)
	.dwattr DW$T$92, DW_AT_language(DW_LANG_C)

DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$45, DW_AT_name("tag_configstruct")
	.dwattr DW$T$45, DW_AT_byte_size(0x18)
DW$215	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$215, DW_AT_name("filter"), DW_AT_symbol_name("_filter")
	.dwattr DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$215, DW_AT_accessibility(DW_ACCESS_public)
DW$216	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$216, DW_AT_name("alarmenable"), DW_AT_symbol_name("_alarmenable")
	.dwattr DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$216, DW_AT_accessibility(DW_ACCESS_public)
DW$217	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$217, DW_AT_name("trendmax"), DW_AT_symbol_name("_trendmax")
	.dwattr DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$217, DW_AT_accessibility(DW_ACCESS_public)
DW$218	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$218, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$218, DW_AT_accessibility(DW_ACCESS_public)
DW$219	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$43)
	.dwattr DW$219, DW_AT_name("sdsettings"), DW_AT_symbol_name("_sdsettings")
	.dwattr DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$219, DW_AT_accessibility(DW_ACCESS_public)
DW$220	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$44)
	.dwattr DW$220, DW_AT_name("comms"), DW_AT_symbol_name("_comms")
	.dwattr DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$220, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$45


DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$47, DW_AT_name("tag_damalarmsstruct")
	.dwattr DW$T$47, DW_AT_byte_size(0x04)
DW$221	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$221, DW_AT_name("single"), DW_AT_symbol_name("_single")
	.dwattr DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$221, DW_AT_accessibility(DW_ACCESS_public)
DW$222	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$222, DW_AT_name("cylinder"), DW_AT_symbol_name("_cylinder")
	.dwattr DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$222, DW_AT_accessibility(DW_ACCESS_public)
DW$223	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$223, DW_AT_name("mbneighbour"), DW_AT_symbol_name("_mbneighbour")
	.dwattr DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$223, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$47


DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$48, DW_AT_name("tag_alarmsstruct")
	.dwattr DW$T$48, DW_AT_byte_size(0x01)
DW$224	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$224, DW_AT_name("slavefailure"), DW_AT_symbol_name("_slavefailure")
	.dwattr DW$224, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$224, DW_AT_accessibility(DW_ACCESS_public)
DW$225	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$225, DW_AT_name("slavefailurelatched"), DW_AT_symbol_name("_slavefailurelatched")
	.dwattr DW$225, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$225, DW_AT_accessibility(DW_ACCESS_public)
DW$226	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$226, DW_AT_name("framfailure"), DW_AT_symbol_name("_framfailure")
	.dwattr DW$226, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$226, DW_AT_accessibility(DW_ACCESS_public)
DW$227	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$227, DW_AT_name("framfailurelatched"), DW_AT_symbol_name("_framfailurelatched")
	.dwattr DW$227, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$227, DW_AT_accessibility(DW_ACCESS_public)
DW$228	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$228, DW_AT_name("pccommsfailure"), DW_AT_symbol_name("_pccommsfailure")
	.dwattr DW$228, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$228, DW_AT_accessibility(DW_ACCESS_public)
DW$229	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$229, DW_AT_name("pccommsfailurelatched"), DW_AT_symbol_name("_pccommsfailurelatched")
	.dwattr DW$229, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$229, DW_AT_accessibility(DW_ACCESS_public)
DW$230	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$230, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$230, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$230, DW_AT_accessibility(DW_ACCESS_public)
DW$231	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$231, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$231, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$231, DW_AT_accessibility(DW_ACCESS_public)
DW$232	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$232, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$232, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$232, DW_AT_accessibility(DW_ACCESS_public)
DW$233	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$233, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$233, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$233, DW_AT_accessibility(DW_ACCESS_public)
DW$234	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$234, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$234, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$234, DW_AT_accessibility(DW_ACCESS_public)
DW$235	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$235, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$235, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$235, DW_AT_accessibility(DW_ACCESS_public)
DW$236	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$236, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$236, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$236, DW_AT_accessibility(DW_ACCESS_public)
DW$237	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$237, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$237, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$237, DW_AT_accessibility(DW_ACCESS_public)
DW$238	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$238, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$238, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$238, DW_AT_accessibility(DW_ACCESS_public)
DW$239	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$239, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$239, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$239, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$48


DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$50, DW_AT_name("tag_slemsstruct")
	.dwattr DW$T$50, DW_AT_byte_size(0x03)
DW$240	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$240, DW_AT_name("mV"), DW_AT_symbol_name("_mV")
	.dwattr DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$240, DW_AT_accessibility(DW_ACCESS_public)
DW$241	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$241, DW_AT_name("alarms"), DW_AT_symbol_name("_alarms")
	.dwattr DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$241, DW_AT_accessibility(DW_ACCESS_public)
DW$242	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$242, DW_AT_name("levelcount"), DW_AT_symbol_name("_levelcount")
	.dwattr DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$242, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$50


DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$52, DW_AT_name("tag_rtcbatstruct")
	.dwattr DW$T$52, DW_AT_byte_size(0x02)
DW$243	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$243, DW_AT_name("mV"), DW_AT_symbol_name("_mV")
	.dwattr DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$243, DW_AT_accessibility(DW_ACCESS_public)
DW$244	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$51)
	.dwattr DW$244, DW_AT_name("alarms"), DW_AT_symbol_name("_alarms")
	.dwattr DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$244, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$52


DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$53, DW_AT_byte_size(0x07)
DW$245	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$245, DW_AT_name("outputtestmode"), DW_AT_symbol_name("_outputtestmode")
	.dwattr DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$245, DW_AT_accessibility(DW_ACCESS_public)
DW$246	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$246, DW_AT_name("previousstatus"), DW_AT_symbol_name("_previousstatus")
	.dwattr DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$246, DW_AT_accessibility(DW_ACCESS_public)
DW$247	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$247, DW_AT_name("previousslowdown"), DW_AT_symbol_name("_previousslowdown")
	.dwattr DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$247, DW_AT_accessibility(DW_ACCESS_public)
DW$248	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$248, DW_AT_name("previousalarm"), DW_AT_symbol_name("_previousalarm")
	.dwattr DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$248, DW_AT_accessibility(DW_ACCESS_public)
DW$249	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$249, DW_AT_name("slowdownreflash"), DW_AT_symbol_name("_slowdownreflash")
	.dwattr DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$249, DW_AT_accessibility(DW_ACCESS_public)
DW$250	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$250, DW_AT_name("alarmreflash"), DW_AT_symbol_name("_alarmreflash")
	.dwattr DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$250, DW_AT_accessibility(DW_ACCESS_public)
DW$251	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$251, DW_AT_name("statusreflash"), DW_AT_symbol_name("_statusreflash")
	.dwattr DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$251, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$53

DW$T$16	.dwtag  DW_TAG_base_type, DW_AT_name("float")
	.dwattr DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$16, DW_AT_byte_size(0x02)

DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$19, DW_AT_name("tag_sensoralarmstruct")
	.dwattr DW$T$19, DW_AT_byte_size(0x01)
DW$252	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$252, DW_AT_name("failure"), DW_AT_symbol_name("_failure")
	.dwattr DW$252, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$252, DW_AT_accessibility(DW_ACCESS_public)
DW$253	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$253, DW_AT_name("failurelatched"), DW_AT_symbol_name("_failurelatched")
	.dwattr DW$253, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$253, DW_AT_accessibility(DW_ACCESS_public)
DW$254	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$254, DW_AT_name("slowdown"), DW_AT_symbol_name("_slowdown")
	.dwattr DW$254, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$254, DW_AT_accessibility(DW_ACCESS_public)
DW$255	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$255, DW_AT_name("slowdownlatched"), DW_AT_symbol_name("_slowdownlatched")
	.dwattr DW$255, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$255, DW_AT_accessibility(DW_ACCESS_public)
DW$256	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$256, DW_AT_name("alarm"), DW_AT_symbol_name("_alarm")
	.dwattr DW$256, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$256, DW_AT_accessibility(DW_ACCESS_public)
DW$257	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$257, DW_AT_name("alarmlatched"), DW_AT_symbol_name("_alarmlatched")
	.dwattr DW$257, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$257, DW_AT_accessibility(DW_ACCESS_public)
DW$258	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$258, DW_AT_name("devalarm"), DW_AT_symbol_name("_devalarm")
	.dwattr DW$258, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$258, DW_AT_accessibility(DW_ACCESS_public)
DW$259	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$259, DW_AT_name("devalarmlatched"), DW_AT_symbol_name("_devalarmlatched")
	.dwattr DW$259, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$259, DW_AT_accessibility(DW_ACCESS_public)
DW$260	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$260, DW_AT_name("devslow"), DW_AT_symbol_name("_devslow")
	.dwattr DW$260, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$260, DW_AT_accessibility(DW_ACCESS_public)
DW$261	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$261, DW_AT_name("devslowlatched"), DW_AT_symbol_name("_devslowlatched")
	.dwattr DW$261, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$261, DW_AT_accessibility(DW_ACCESS_public)
DW$262	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$262, DW_AT_name("calibration"), DW_AT_symbol_name("_calibration")
	.dwattr DW$262, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$262, DW_AT_accessibility(DW_ACCESS_public)
DW$263	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$263, DW_AT_name("calibrationlatched"), DW_AT_symbol_name("_calibrationlatched")
	.dwattr DW$263, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$263, DW_AT_accessibility(DW_ACCESS_public)
DW$264	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$264, DW_AT_name("prewarning"), DW_AT_symbol_name("_prewarning")
	.dwattr DW$264, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$264, DW_AT_accessibility(DW_ACCESS_public)
DW$265	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$265, DW_AT_name("prewarninglatched"), DW_AT_symbol_name("_prewarninglatched")
	.dwattr DW$265, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$265, DW_AT_accessibility(DW_ACCESS_public)
DW$266	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$266, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$266, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$266, DW_AT_accessibility(DW_ACCESS_public)
DW$267	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$267, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$267, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$267, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$19

DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("wioalarmstruct"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)

DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$25, DW_AT_name("taggpbport")
	.dwattr DW$T$25, DW_AT_byte_size(0x01)
DW$268	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$268, DW_AT_name("selunion"), DW_AT_symbol_name("_selunion")
	.dwattr DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$268, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_name("taggpfport")
	.dwattr DW$T$28, DW_AT_byte_size(0x01)
DW$269	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$269, DW_AT_name("selunion"), DW_AT_symbol_name("_selunion")
	.dwattr DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$269, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$29, DW_AT_byte_size(0x02)
DW$270	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$270, DW_AT_name("enb"), DW_AT_symbol_name("_enb")
	.dwattr DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$270, DW_AT_accessibility(DW_ACCESS_public)
DW$271	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$271, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$271, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$29


DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_name("tag_timers")
	.dwattr DW$T$32, DW_AT_byte_size(0x4c)
DW$272	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$272, DW_AT_name("update"), DW_AT_symbol_name("_update")
	.dwattr DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$272, DW_AT_accessibility(DW_ACCESS_public)
DW$273	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$273, DW_AT_name("general"), DW_AT_symbol_name("_general")
	.dwattr DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$273, DW_AT_accessibility(DW_ACCESS_public)
DW$274	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$274, DW_AT_name("rxcharTimeout"), DW_AT_symbol_name("_rxcharTimeout")
	.dwattr DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$274, DW_AT_accessibility(DW_ACCESS_public)
DW$275	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$275, DW_AT_name("wiorxtimeout"), DW_AT_symbol_name("_wiorxtimeout")
	.dwattr DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$275, DW_AT_accessibility(DW_ACCESS_public)
DW$276	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$276, DW_AT_name("wiomasterrxtimeout"), DW_AT_symbol_name("_wiomasterrxtimeout")
	.dwattr DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$276, DW_AT_accessibility(DW_ACCESS_public)
DW$277	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$277, DW_AT_name("masterrxtimeout"), DW_AT_symbol_name("_masterrxtimeout")
	.dwattr DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$277, DW_AT_accessibility(DW_ACCESS_public)
DW$278	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$278, DW_AT_name("slaverxtimeout"), DW_AT_symbol_name("_slaverxtimeout")
	.dwattr DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$278, DW_AT_accessibility(DW_ACCESS_public)
DW$279	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$279, DW_AT_name("sectick"), DW_AT_symbol_name("_sectick")
	.dwattr DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$279, DW_AT_accessibility(DW_ACCESS_public)
DW$280	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$280, DW_AT_name("ledflash"), DW_AT_symbol_name("_ledflash")
	.dwattr DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$280, DW_AT_accessibility(DW_ACCESS_public)
DW$281	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$281, DW_AT_name("prtsettle"), DW_AT_symbol_name("_prtsettle")
	.dwattr DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$281, DW_AT_accessibility(DW_ACCESS_public)
DW$282	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$282, DW_AT_name("chantimeout"), DW_AT_symbol_name("_chantimeout")
	.dwattr DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$282, DW_AT_accessibility(DW_ACCESS_public)
DW$283	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$283, DW_AT_name("chanwait"), DW_AT_symbol_name("_chanwait")
	.dwattr DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$283, DW_AT_accessibility(DW_ACCESS_public)
DW$284	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$284, DW_AT_name("pcrxtimeout"), DW_AT_symbol_name("_pcrxtimeout")
	.dwattr DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$284, DW_AT_accessibility(DW_ACCESS_public)
DW$285	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$285, DW_AT_name("pctxtimeout"), DW_AT_symbol_name("_pctxtimeout")
	.dwattr DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$285, DW_AT_accessibility(DW_ACCESS_public)
DW$286	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$286, DW_AT_name("spistatus"), DW_AT_symbol_name("_spistatus")
	.dwattr DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$286, DW_AT_accessibility(DW_ACCESS_public)
DW$287	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$287, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$287, DW_AT_accessibility(DW_ACCESS_public)
DW$288	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$288, DW_AT_name("slaverqst"), DW_AT_symbol_name("_slaverqst")
	.dwattr DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$288, DW_AT_accessibility(DW_ACCESS_public)
DW$289	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$289, DW_AT_name("mastermodebutton"), DW_AT_symbol_name("_mastermodebutton")
	.dwattr DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$289, DW_AT_accessibility(DW_ACCESS_public)
DW$290	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$290, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$290, DW_AT_accessibility(DW_ACCESS_public)
DW$291	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$291, DW_AT_name("calibrate"), DW_AT_symbol_name("_calibrate")
	.dwattr DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$291, DW_AT_accessibility(DW_ACCESS_public)
DW$292	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$292, DW_AT_name("calibrate2"), DW_AT_symbol_name("_calibrate2")
	.dwattr DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$292, DW_AT_accessibility(DW_ACCESS_public)
DW$293	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$293, DW_AT_name("alarmreflash"), DW_AT_symbol_name("_alarmreflash")
	.dwattr DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$293, DW_AT_accessibility(DW_ACCESS_public)
DW$294	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$294, DW_AT_name("slowdownreflash"), DW_AT_symbol_name("_slowdownreflash")
	.dwattr DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr DW$294, DW_AT_accessibility(DW_ACCESS_public)
DW$295	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$295, DW_AT_name("wiorqst"), DW_AT_symbol_name("_wiorqst")
	.dwattr DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$295, DW_AT_accessibility(DW_ACCESS_public)
DW$296	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$296, DW_AT_name("rpmtimeout"), DW_AT_symbol_name("_rpmtimeout")
	.dwattr DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr DW$296, DW_AT_accessibility(DW_ACCESS_public)
DW$297	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$297, DW_AT_name("analogoor"), DW_AT_symbol_name("_analogoor")
	.dwattr DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$297, DW_AT_accessibility(DW_ACCESS_public)
DW$298	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$298, DW_AT_name("motioncal"), DW_AT_symbol_name("_motioncal")
	.dwattr DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr DW$298, DW_AT_accessibility(DW_ACCESS_public)
DW$299	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$299, DW_AT_name("framcheck"), DW_AT_symbol_name("_framcheck")
	.dwattr DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$299, DW_AT_accessibility(DW_ACCESS_public)
DW$300	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$300, DW_AT_name("pcmodbus"), DW_AT_symbol_name("_pcmodbus")
	.dwattr DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr DW$300, DW_AT_accessibility(DW_ACCESS_public)
DW$301	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$301, DW_AT_name("statusreflash"), DW_AT_symbol_name("_statusreflash")
	.dwattr DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$301, DW_AT_accessibility(DW_ACCESS_public)
DW$302	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$302, DW_AT_name("prewarn"), DW_AT_symbol_name("_prewarn")
	.dwattr DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$302, DW_AT_accessibility(DW_ACCESS_public)
DW$303	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$303, DW_AT_name("clocktofram"), DW_AT_symbol_name("_clocktofram")
	.dwattr DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr DW$303, DW_AT_accessibility(DW_ACCESS_public)
DW$304	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$304, DW_AT_name("debugrapidfast"), DW_AT_symbol_name("_debugrapidfast")
	.dwattr DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x3f]
	.dwattr DW$304, DW_AT_accessibility(DW_ACCESS_public)
DW$305	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$305, DW_AT_name("debugupdate"), DW_AT_symbol_name("_debugupdate")
	.dwattr DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$305, DW_AT_accessibility(DW_ACCESS_public)
DW$306	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$306, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr DW$306, DW_AT_accessibility(DW_ACCESS_public)
DW$307	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$307, DW_AT_name("startup"), DW_AT_symbol_name("_startup")
	.dwattr DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr DW$307, DW_AT_accessibility(DW_ACCESS_public)
DW$308	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$308, DW_AT_name("analogsettle"), DW_AT_symbol_name("_analogsettle")
	.dwattr DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr DW$308, DW_AT_accessibility(DW_ACCESS_public)
DW$309	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$309, DW_AT_name("reprogram"), DW_AT_symbol_name("_reprogram")
	.dwattr DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr DW$309, DW_AT_accessibility(DW_ACCESS_public)
DW$310	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$310, DW_AT_name("reprogramtimeout"), DW_AT_symbol_name("_reprogramtimeout")
	.dwattr DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr DW$310, DW_AT_accessibility(DW_ACCESS_public)
DW$311	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$311, DW_AT_name("dcmodestayalive"), DW_AT_symbol_name("_dcmodestayalive")
	.dwattr DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$311, DW_AT_accessibility(DW_ACCESS_public)
DW$312	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$312, DW_AT_name("biteventchange"), DW_AT_symbol_name("_biteventchange")
	.dwattr DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr DW$312, DW_AT_accessibility(DW_ACCESS_public)
DW$313	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$313, DW_AT_name("iSensorReplace"), DW_AT_symbol_name("_iSensorReplace")
	.dwattr DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr DW$313, DW_AT_accessibility(DW_ACCESS_public)
DW$314	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$314, DW_AT_name("deltarpm15Delay"), DW_AT_symbol_name("_deltarpm15Delay")
	.dwattr DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr DW$314, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$33, DW_AT_byte_size(0x01)
DW$315	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$315, DW_AT_name("newval"), DW_AT_symbol_name("_newval")
	.dwattr DW$315, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$315, DW_AT_accessibility(DW_ACCESS_public)
DW$316	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$316, DW_AT_name("calmode"), DW_AT_symbol_name("_calmode")
	.dwattr DW$316, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$316, DW_AT_accessibility(DW_ACCESS_public)
DW$317	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$317, DW_AT_name("startcal"), DW_AT_symbol_name("_startcal")
	.dwattr DW$317, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$317, DW_AT_accessibility(DW_ACCESS_public)
DW$318	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$318, DW_AT_name("newvalspu2"), DW_AT_symbol_name("_newvalspu2")
	.dwattr DW$318, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$318, DW_AT_accessibility(DW_ACCESS_public)
DW$319	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$319, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$319, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$319, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$34, DW_AT_byte_size(0x01)
DW$320	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$320, DW_AT_name("slowdowncntrl"), DW_AT_symbol_name("_slowdowncntrl")
	.dwattr DW$320, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$320, DW_AT_accessibility(DW_ACCESS_public)
DW$321	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$321, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$321, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0f)
	.dwattr DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$321, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34


DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_name("tag_cylinderstruct")
	.dwattr DW$T$38, DW_AT_byte_size(0x04)
DW$322	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$322, DW_AT_name("status1"), DW_AT_symbol_name("_status1")
	.dwattr DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$322, DW_AT_accessibility(DW_ACCESS_public)
DW$323	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$323, DW_AT_name("status2"), DW_AT_symbol_name("_status2")
	.dwattr DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$323, DW_AT_accessibility(DW_ACCESS_public)
DW$324	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$324, DW_AT_name("average"), DW_AT_symbol_name("_average")
	.dwattr DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$324, DW_AT_accessibility(DW_ACCESS_public)
DW$325	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$325, DW_AT_name("deviation"), DW_AT_symbol_name("_deviation")
	.dwattr DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$325, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38


DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$39, DW_AT_byte_size(0x01)
DW$326	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$326, DW_AT_name("inputtap"), DW_AT_symbol_name("_inputtap")
	.dwattr DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$326, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39


DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$40, DW_AT_byte_size(0x01)
DW$327	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$327, DW_AT_name("bitmap"), DW_AT_symbol_name("_bitmap")
	.dwattr DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$327, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40


DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$41, DW_AT_byte_size(0x01)
DW$328	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$328, DW_AT_name("graphvalue"), DW_AT_symbol_name("_graphvalue")
	.dwattr DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$328, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$41


DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$42, DW_AT_byte_size(0x03)
DW$329	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$329, DW_AT_name("chanlowthreshold"), DW_AT_symbol_name("_chanlowthreshold")
	.dwattr DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$329, DW_AT_accessibility(DW_ACCESS_public)
DW$330	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$330, DW_AT_name("chanhighthreshold"), DW_AT_symbol_name("_chanhighthreshold")
	.dwattr DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$330, DW_AT_accessibility(DW_ACCESS_public)
DW$331	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$331, DW_AT_name("sensorscalingfactor"), DW_AT_symbol_name("_sensorscalingfactor")
	.dwattr DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$331, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$42


DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$43, DW_AT_byte_size(0x02)
DW$332	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$332, DW_AT_name("shortlrate"), DW_AT_symbol_name("_shortlrate")
	.dwattr DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$332, DW_AT_accessibility(DW_ACCESS_public)
DW$333	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$333, DW_AT_name("longlrate"), DW_AT_symbol_name("_longlrate")
	.dwattr DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$333, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$43


DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$44, DW_AT_byte_size(0x10)
DW$334	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$334, DW_AT_name("wiorequest"), DW_AT_symbol_name("_wiorequest")
	.dwattr DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$334, DW_AT_accessibility(DW_ACCESS_public)
DW$335	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$335, DW_AT_name("wiocancelled"), DW_AT_symbol_name("_wiocancelled")
	.dwattr DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$335, DW_AT_accessibility(DW_ACCESS_public)
DW$336	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$336, DW_AT_name("wioreceived"), DW_AT_symbol_name("_wioreceived")
	.dwattr DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$336, DW_AT_accessibility(DW_ACCESS_public)
DW$337	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$337, DW_AT_name("slaverequest"), DW_AT_symbol_name("_slaverequest")
	.dwattr DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$337, DW_AT_accessibility(DW_ACCESS_public)
DW$338	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$338, DW_AT_name("slavereceived"), DW_AT_symbol_name("_slavereceived")
	.dwattr DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$338, DW_AT_accessibility(DW_ACCESS_public)
DW$339	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$339, DW_AT_name("slaveretry"), DW_AT_symbol_name("_slaveretry")
	.dwattr DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$339, DW_AT_accessibility(DW_ACCESS_public)
DW$340	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$340, DW_AT_name("pcrequest"), DW_AT_symbol_name("_pcrequest")
	.dwattr DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$340, DW_AT_accessibility(DW_ACCESS_public)
DW$341	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$341, DW_AT_name("pcreqtimeout"), DW_AT_symbol_name("_pcreqtimeout")
	.dwattr DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$341, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$44


DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$49, DW_AT_byte_size(0x01)
DW$342	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$342, DW_AT_name("oor"), DW_AT_symbol_name("_oor")
	.dwattr DW$342, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$342, DW_AT_accessibility(DW_ACCESS_public)
DW$343	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$343, DW_AT_name("alarm"), DW_AT_symbol_name("_alarm")
	.dwattr DW$343, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$343, DW_AT_accessibility(DW_ACCESS_public)
DW$344	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$344, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$344, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0e)
	.dwattr DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$344, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$49


DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$51, DW_AT_byte_size(0x01)
DW$345	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$345, DW_AT_name("low"), DW_AT_symbol_name("_low")
	.dwattr DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$345, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$51

DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("tag_wioalarmstruct")
	.dwattr DW$T$20, DW_AT_byte_size(0x01)
DW$346	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$346, DW_AT_name("alarmupper"), DW_AT_symbol_name("_alarmupper")
	.dwattr DW$346, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$346, DW_AT_accessibility(DW_ACCESS_public)
DW$347	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$347, DW_AT_name("alarmupperlatched"), DW_AT_symbol_name("_alarmupperlatched")
	.dwattr DW$347, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$347, DW_AT_accessibility(DW_ACCESS_public)
DW$348	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$348, DW_AT_name("alarm"), DW_AT_symbol_name("_alarm")
	.dwattr DW$348, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$348, DW_AT_accessibility(DW_ACCESS_public)
DW$349	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$349, DW_AT_name("alarmlatched"), DW_AT_symbol_name("_alarmlatched")
	.dwattr DW$349, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$349, DW_AT_accessibility(DW_ACCESS_public)
DW$350	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$350, DW_AT_name("comms"), DW_AT_symbol_name("_comms")
	.dwattr DW$350, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$350, DW_AT_accessibility(DW_ACCESS_public)
DW$351	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$351, DW_AT_name("commslatched"), DW_AT_symbol_name("_commslatched")
	.dwattr DW$351, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$351, DW_AT_accessibility(DW_ACCESS_public)
DW$352	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$352, DW_AT_name("analoglow"), DW_AT_symbol_name("_analoglow")
	.dwattr DW$352, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$352, DW_AT_accessibility(DW_ACCESS_public)
DW$353	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$353, DW_AT_name("analoghigh"), DW_AT_symbol_name("_analoghigh")
	.dwattr DW$353, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$353, DW_AT_accessibility(DW_ACCESS_public)
DW$354	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$354, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$354, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$354, DW_AT_accessibility(DW_ACCESS_public)
DW$355	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$355, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$355, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$355, DW_AT_accessibility(DW_ACCESS_public)
DW$356	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$356, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$356, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$356, DW_AT_accessibility(DW_ACCESS_public)
DW$357	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$357, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$357, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$357, DW_AT_accessibility(DW_ACCESS_public)
DW$358	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$358, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$358, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$358, DW_AT_accessibility(DW_ACCESS_public)
DW$359	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$359, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$359, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$359, DW_AT_accessibility(DW_ACCESS_public)
DW$360	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$360, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$360, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$360, DW_AT_accessibility(DW_ACCESS_public)
DW$361	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$361, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$361, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$361, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$24	.dwtag  DW_TAG_union_type
	.dwattr DW$T$24, DW_AT_byte_size(0x01)
DW$362	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$362, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$362, DW_AT_accessibility(DW_ACCESS_public)
DW$363	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$363, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$363, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr DW$T$27, DW_AT_byte_size(0x01)
DW$364	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$364, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$364, DW_AT_accessibility(DW_ACCESS_public)
DW$365	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$365, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$365, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$36, DW_AT_byte_size(0x01)
DW$366	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$366, DW_AT_name("alarmack"), DW_AT_symbol_name("_alarmack")
	.dwattr DW$366, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$366, DW_AT_accessibility(DW_ACCESS_public)
DW$367	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$367, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$367, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$367, DW_AT_accessibility(DW_ACCESS_public)
DW$368	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$368, DW_AT_name("unused3"), DW_AT_symbol_name("_unused3")
	.dwattr DW$368, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$368, DW_AT_accessibility(DW_ACCESS_public)
DW$369	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$369, DW_AT_name("unused4"), DW_AT_symbol_name("_unused4")
	.dwattr DW$369, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$369, DW_AT_accessibility(DW_ACCESS_public)
DW$370	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$370, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$370, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$370, DW_AT_accessibility(DW_ACCESS_public)
DW$371	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$371, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$371, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$371, DW_AT_accessibility(DW_ACCESS_public)
DW$372	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$372, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$372, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$372, DW_AT_accessibility(DW_ACCESS_public)
DW$373	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$373, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$373, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$373, DW_AT_accessibility(DW_ACCESS_public)
DW$374	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$374, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$374, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$374, DW_AT_accessibility(DW_ACCESS_public)
DW$375	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$375, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$375, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$375, DW_AT_accessibility(DW_ACCESS_public)
DW$376	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$376, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$376, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$376, DW_AT_accessibility(DW_ACCESS_public)
DW$377	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$377, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$377, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$377, DW_AT_accessibility(DW_ACCESS_public)
DW$378	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$378, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$378, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$378, DW_AT_accessibility(DW_ACCESS_public)
DW$379	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$379, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$379, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$379, DW_AT_accessibility(DW_ACCESS_public)
DW$380	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$380, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$380, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$380, DW_AT_accessibility(DW_ACCESS_public)
DW$381	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$381, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$381, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$381, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$36


DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$37, DW_AT_byte_size(0x01)
DW$382	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$382, DW_AT_name("alarm"), DW_AT_symbol_name("_alarm")
	.dwattr DW$382, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$382, DW_AT_accessibility(DW_ACCESS_public)
DW$383	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$383, DW_AT_name("alarmlatched"), DW_AT_symbol_name("_alarmlatched")
	.dwattr DW$383, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$383, DW_AT_accessibility(DW_ACCESS_public)
DW$384	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$384, DW_AT_name("unused3"), DW_AT_symbol_name("_unused3")
	.dwattr DW$384, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$384, DW_AT_accessibility(DW_ACCESS_public)
DW$385	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$385, DW_AT_name("unused4"), DW_AT_symbol_name("_unused4")
	.dwattr DW$385, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$385, DW_AT_accessibility(DW_ACCESS_public)
DW$386	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$386, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$386, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$386, DW_AT_accessibility(DW_ACCESS_public)
DW$387	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$387, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$387, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$387, DW_AT_accessibility(DW_ACCESS_public)
DW$388	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$388, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$388, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$388, DW_AT_accessibility(DW_ACCESS_public)
DW$389	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$389, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$389, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$389, DW_AT_accessibility(DW_ACCESS_public)
DW$390	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$390, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$390, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$390, DW_AT_accessibility(DW_ACCESS_public)
DW$391	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$391, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$391, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$391, DW_AT_accessibility(DW_ACCESS_public)
DW$392	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$392, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$392, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$392, DW_AT_accessibility(DW_ACCESS_public)
DW$393	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$393, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$393, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$393, DW_AT_accessibility(DW_ACCESS_public)
DW$394	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$394, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$394, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$394, DW_AT_accessibility(DW_ACCESS_public)
DW$395	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$395, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$395, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$395, DW_AT_accessibility(DW_ACCESS_public)
DW$396	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$396, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$396, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$396, DW_AT_accessibility(DW_ACCESS_public)
DW$397	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$397, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$397, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$397, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$37


DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$23, DW_AT_byte_size(0x01)
DW$398	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$398, DW_AT_name("s12"), DW_AT_symbol_name("_s12")
	.dwattr DW$398, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$398, DW_AT_accessibility(DW_ACCESS_public)
DW$399	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$399, DW_AT_name("s13"), DW_AT_symbol_name("_s13")
	.dwattr DW$399, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$399, DW_AT_accessibility(DW_ACCESS_public)
DW$400	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$400, DW_AT_name("s14"), DW_AT_symbol_name("_s14")
	.dwattr DW$400, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$400, DW_AT_accessibility(DW_ACCESS_public)
DW$401	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$401, DW_AT_name("s15"), DW_AT_symbol_name("_s15")
	.dwattr DW$401, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$401, DW_AT_accessibility(DW_ACCESS_public)
DW$402	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$402, DW_AT_name("s16"), DW_AT_symbol_name("_s16")
	.dwattr DW$402, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$402, DW_AT_accessibility(DW_ACCESS_public)
DW$403	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$403, DW_AT_name("s17"), DW_AT_symbol_name("_s17")
	.dwattr DW$403, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$403, DW_AT_accessibility(DW_ACCESS_public)
DW$404	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$404, DW_AT_name("s18"), DW_AT_symbol_name("_s18")
	.dwattr DW$404, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$404, DW_AT_accessibility(DW_ACCESS_public)
DW$405	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$405, DW_AT_name("s19"), DW_AT_symbol_name("_s19")
	.dwattr DW$405, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$405, DW_AT_accessibility(DW_ACCESS_public)
DW$406	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$406, DW_AT_name("disp485txen"), DW_AT_symbol_name("_disp485txen")
	.dwattr DW$406, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$406, DW_AT_accessibility(DW_ACCESS_public)
DW$407	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$407, DW_AT_name("disp485rxen"), DW_AT_symbol_name("_disp485rxen")
	.dwattr DW$407, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$407, DW_AT_accessibility(DW_ACCESS_public)
DW$408	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$408, DW_AT_name("gpio1"), DW_AT_symbol_name("_gpio1")
	.dwattr DW$408, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$408, DW_AT_accessibility(DW_ACCESS_public)
DW$409	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$409, DW_AT_name("gpio2"), DW_AT_symbol_name("_gpio2")
	.dwattr DW$409, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$409, DW_AT_accessibility(DW_ACCESS_public)
DW$410	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$410, DW_AT_name("gpio3"), DW_AT_symbol_name("_gpio3")
	.dwattr DW$410, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$410, DW_AT_accessibility(DW_ACCESS_public)
DW$411	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$411, DW_AT_name("gpio4"), DW_AT_symbol_name("_gpio4")
	.dwattr DW$411, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$411, DW_AT_accessibility(DW_ACCESS_public)
DW$412	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$412, DW_AT_name("rtccs"), DW_AT_symbol_name("_rtccs")
	.dwattr DW$412, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$412, DW_AT_accessibility(DW_ACCESS_public)
DW$413	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$413, DW_AT_name("op3"), DW_AT_symbol_name("_op3")
	.dwattr DW$413, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$413, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_byte_size(0x01)
DW$414	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$414, DW_AT_name("spimo"), DW_AT_symbol_name("_spimo")
	.dwattr DW$414, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$414, DW_AT_accessibility(DW_ACCESS_public)
DW$415	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$415, DW_AT_name("spimi"), DW_AT_symbol_name("_spimi")
	.dwattr DW$415, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$415, DW_AT_accessibility(DW_ACCESS_public)
DW$416	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$416, DW_AT_name("spiclk"), DW_AT_symbol_name("_spiclk")
	.dwattr DW$416, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$416, DW_AT_accessibility(DW_ACCESS_public)
DW$417	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$417, DW_AT_name("spiste"), DW_AT_symbol_name("_spiste")
	.dwattr DW$417, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$417, DW_AT_accessibility(DW_ACCESS_public)
DW$418	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$418, DW_AT_name("scitxa"), DW_AT_symbol_name("_scitxa")
	.dwattr DW$418, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$418, DW_AT_accessibility(DW_ACCESS_public)
DW$419	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$419, DW_AT_name("scirxa"), DW_AT_symbol_name("_scirxa")
	.dwattr DW$419, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$419, DW_AT_accessibility(DW_ACCESS_public)
DW$420	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$420, DW_AT_name("op1"), DW_AT_symbol_name("_op1")
	.dwattr DW$420, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$420, DW_AT_accessibility(DW_ACCESS_public)
DW$421	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$421, DW_AT_name("op2"), DW_AT_symbol_name("_op2")
	.dwattr DW$421, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$421, DW_AT_accessibility(DW_ACCESS_public)
DW$422	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$422, DW_AT_name("spiselect1"), DW_AT_symbol_name("_spiselect1")
	.dwattr DW$422, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$422, DW_AT_accessibility(DW_ACCESS_public)
DW$423	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$423, DW_AT_name("spiselect2"), DW_AT_symbol_name("_spiselect2")
	.dwattr DW$423, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$423, DW_AT_accessibility(DW_ACCESS_public)
DW$424	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$424, DW_AT_name("spiselect3"), DW_AT_symbol_name("_spiselect3")
	.dwattr DW$424, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$424, DW_AT_accessibility(DW_ACCESS_public)
DW$425	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$425, DW_AT_name("pc485rxen"), DW_AT_symbol_name("_pc485rxen")
	.dwattr DW$425, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$425, DW_AT_accessibility(DW_ACCESS_public)
DW$426	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$426, DW_AT_name("pc485txen"), DW_AT_symbol_name("_pc485txen")
	.dwattr DW$426, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$426, DW_AT_accessibility(DW_ACCESS_public)
DW$427	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$427, DW_AT_name("modeselect"), DW_AT_symbol_name("_modeselect")
	.dwattr DW$427, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$427, DW_AT_accessibility(DW_ACCESS_public)
DW$428	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$428, DW_AT_name("xf_xplldis"), DW_AT_symbol_name("_xf_xplldis")
	.dwattr DW$428, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$428, DW_AT_accessibility(DW_ACCESS_public)
DW$429	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$429, DW_AT_name("notused3"), DW_AT_symbol_name("_notused3")
	.dwattr DW$429, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$429, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


	.dwattr DW$54, DW_AT_external(0x01)
	.dwattr DW$53, DW_AT_external(0x01)
	.dwattr DW$46, DW_AT_external(0x01)
	.dwattr DW$127, DW_AT_external(0x01)
	.dwattr DW$51, DW_AT_external(0x01)
	.dwattr DW$52, DW_AT_external(0x01)
	.dwattr DW$89, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$430	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$430, DW_AT_location[DW_OP_reg0]
DW$431	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$431, DW_AT_location[DW_OP_reg1]
DW$432	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$432, DW_AT_location[DW_OP_reg2]
DW$433	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$433, DW_AT_location[DW_OP_reg3]
DW$434	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$434, DW_AT_location[DW_OP_reg4]
DW$435	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$435, DW_AT_location[DW_OP_reg5]
DW$436	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$436, DW_AT_location[DW_OP_reg6]
DW$437	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$437, DW_AT_location[DW_OP_reg7]
DW$438	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$438, DW_AT_location[DW_OP_reg8]
DW$439	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$439, DW_AT_location[DW_OP_reg9]
DW$440	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$440, DW_AT_location[DW_OP_reg10]
DW$441	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$441, DW_AT_location[DW_OP_reg11]
DW$442	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$442, DW_AT_location[DW_OP_reg12]
DW$443	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$443, DW_AT_location[DW_OP_reg13]
DW$444	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$444, DW_AT_location[DW_OP_reg14]
DW$445	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$445, DW_AT_location[DW_OP_reg15]
DW$446	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$446, DW_AT_location[DW_OP_reg16]
DW$447	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$447, DW_AT_location[DW_OP_reg17]
DW$448	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$448, DW_AT_location[DW_OP_reg18]
DW$449	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$449, DW_AT_location[DW_OP_reg19]
DW$450	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$450, DW_AT_location[DW_OP_reg20]
DW$451	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$451, DW_AT_location[DW_OP_reg21]
DW$452	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$452, DW_AT_location[DW_OP_reg22]
DW$453	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$453, DW_AT_location[DW_OP_reg23]
DW$454	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$454, DW_AT_location[DW_OP_reg24]
DW$455	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$455, DW_AT_location[DW_OP_reg25]
DW$456	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$456, DW_AT_location[DW_OP_reg26]
DW$457	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$457, DW_AT_location[DW_OP_reg27]
DW$458	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$458, DW_AT_location[DW_OP_reg28]
DW$459	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$459, DW_AT_location[DW_OP_reg29]
DW$460	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$460, DW_AT_location[DW_OP_reg30]
DW$461	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$461, DW_AT_location[DW_OP_reg31]
DW$462	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$462, DW_AT_location[DW_OP_regx 0x20]
DW$463	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$463, DW_AT_location[DW_OP_regx 0x21]
DW$464	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$464, DW_AT_location[DW_OP_regx 0x22]
DW$465	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$465, DW_AT_location[DW_OP_regx 0x23]
DW$466	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$466, DW_AT_location[DW_OP_regx 0x24]
DW$467	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$467, DW_AT_location[DW_OP_regx 0x25]
DW$468	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$468, DW_AT_location[DW_OP_regx 0x26]
DW$469	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$469, DW_AT_location[DW_OP_regx 0x27]
DW$470	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$470, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

