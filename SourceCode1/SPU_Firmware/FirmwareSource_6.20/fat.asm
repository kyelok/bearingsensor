;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Thu Aug 18 12:16:13 2016                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("fat.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("memcpy"), DW_AT_symbol_name("_memcpy")
	.dwattr DW$1, DW_AT_type(*DW$T$3)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$84)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$1


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("memset"), DW_AT_symbol_name("_memset")
	.dwattr DW$5, DW_AT_type(*DW$T$3)
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$86)
	.dwendtag DW$5


DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_getdrive"), DW_AT_symbol_name("_fn_getdrive")
	.dwattr DW$9, DW_AT_type(*DW$T$10)
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$117)
	.dwendtag DW$9


DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_write"), DW_AT_symbol_name("_fn_write")
	.dwattr DW$11, DW_AT_type(*DW$T$12)
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)
DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$117)
DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$84)
DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$210)
	.dwendtag DW$11


DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("f_getdate"), DW_AT_symbol_name("_f_getdate")
	.dwattr DW$17, DW_AT_type(*DW$T$9)
	.dwattr DW$17, DW_AT_declaration(0x01)
	.dwattr DW$17, DW_AT_external(0x01)

DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("f_gettime"), DW_AT_symbol_name("_f_gettime")
	.dwattr DW$18, DW_AT_type(*DW$T$9)
	.dwattr DW$18, DW_AT_declaration(0x01)
	.dwattr DW$18, DW_AT_external(0x01)

DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_readsector"), DW_AT_symbol_name("__f_readsector")
	.dwattr DW$19, DW_AT_type(*DW$T$10)
	.dwattr DW$19, DW_AT_declaration(0x01)
	.dwattr DW$19, DW_AT_external(0x01)
DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$22	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$19


DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_writesector"), DW_AT_symbol_name("__f_writesector")
	.dwattr DW$24, DW_AT_type(*DW$T$10)
	.dwattr DW$24, DW_AT_declaration(0x01)
	.dwattr DW$24, DW_AT_external(0x01)
DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$28	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$24


DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_getclustervalue"), DW_AT_symbol_name("__f_getclustervalue")
	.dwattr DW$29, DW_AT_type(*DW$T$10)
	.dwattr DW$29, DW_AT_declaration(0x01)
	.dwattr DW$29, DW_AT_external(0x01)
DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$32	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$23)
	.dwendtag DW$29


DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_clustertopos"), DW_AT_symbol_name("__f_clustertopos")
	.dwattr DW$33, DW_AT_declaration(0x01)
	.dwattr DW$33, DW_AT_external(0x01)
DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$66)
	.dwendtag DW$33


DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_getdecluster"), DW_AT_symbol_name("__f_getdecluster")
	.dwattr DW$37, DW_AT_type(*DW$T$13)
	.dwattr DW$37, DW_AT_declaration(0x01)
	.dwattr DW$37, DW_AT_external(0x01)
DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$93)
	.dwendtag DW$37


DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_checkstatus"), DW_AT_symbol_name("__f_checkstatus")
	.dwattr DW$40, DW_AT_type(*DW$T$10)
	.dwattr DW$40, DW_AT_declaration(0x01)
	.dwattr DW$40, DW_AT_external(0x01)
DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
	.dwendtag DW$40


DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_getvolume"), DW_AT_symbol_name("__f_getvolume")
	.dwattr DW$42, DW_AT_type(*DW$T$10)
	.dwattr DW$42, DW_AT_declaration(0x01)
	.dwattr DW$42, DW_AT_external(0x01)
DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$117)
DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$126)
	.dwendtag DW$42


DW$46	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_getword"), DW_AT_symbol_name("__f_getword")
	.dwattr DW$46, DW_AT_type(*DW$T$9)
	.dwattr DW$46, DW_AT_declaration(0x01)
	.dwattr DW$46, DW_AT_external(0x01)
DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$46


DW$48	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_getlong"), DW_AT_symbol_name("__f_getlong")
	.dwattr DW$48, DW_AT_type(*DW$T$13)
	.dwattr DW$48, DW_AT_declaration(0x01)
	.dwattr DW$48, DW_AT_external(0x01)
DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$48


DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_checklocked"), DW_AT_symbol_name("__f_checklocked")
	.dwattr DW$50, DW_AT_type(*DW$T$10)
	.dwattr DW$50, DW_AT_declaration(0x01)
	.dwattr DW$50, DW_AT_external(0x01)
DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$66)
	.dwendtag DW$50


DW$53	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_checkreadlocked"), DW_AT_symbol_name("__f_checkreadlocked")
	.dwattr DW$53, DW_AT_type(*DW$T$10)
	.dwattr DW$53, DW_AT_declaration(0x01)
	.dwattr DW$53, DW_AT_external(0x01)
DW$54	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$66)
	.dwendtag DW$53


DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_initentry"), DW_AT_symbol_name("__f_initentry")
	.dwattr DW$56, DW_AT_declaration(0x01)
	.dwattr DW$56, DW_AT_external(0x01)
DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$93)
DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
DW$59	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
	.dwendtag DW$56


DW$60	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_setword"), DW_AT_symbol_name("__f_setword")
	.dwattr DW$60, DW_AT_declaration(0x01)
	.dwattr DW$60, DW_AT_external(0x01)
DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$9)
	.dwendtag DW$60


DW$63	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_alloccluster"), DW_AT_symbol_name("__f_alloccluster")
	.dwattr DW$63, DW_AT_type(*DW$T$10)
	.dwattr DW$63, DW_AT_declaration(0x01)
	.dwattr DW$63, DW_AT_external(0x01)
DW$64	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$65	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$23)
	.dwendtag DW$63


DW$66	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_dobadblock"), DW_AT_symbol_name("__f_dobadblock")
	.dwattr DW$66, DW_AT_type(*DW$T$10)
	.dwattr DW$66, DW_AT_declaration(0x01)
	.dwattr DW$66, DW_AT_external(0x01)
DW$67	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$68	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$100)
	.dwendtag DW$66


DW$69	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_setclustervalue"), DW_AT_symbol_name("__f_setclustervalue")
	.dwattr DW$69, DW_AT_type(*DW$T$10)
	.dwattr DW$69, DW_AT_declaration(0x01)
	.dwattr DW$69, DW_AT_external(0x01)
DW$70	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$69


DW$73	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_writefatsector"), DW_AT_symbol_name("__f_writefatsector")
	.dwattr DW$73, DW_AT_type(*DW$T$10)
	.dwattr DW$73, DW_AT_declaration(0x01)
	.dwattr DW$73, DW_AT_external(0x01)
DW$74	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
	.dwendtag DW$73


DW$75	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_setdecluster"), DW_AT_symbol_name("__f_setdecluster")
	.dwattr DW$75, DW_AT_declaration(0x01)
	.dwattr DW$75, DW_AT_external(0x01)
DW$76	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$77	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$93)
DW$78	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$75


DW$79	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_fseek"), DW_AT_symbol_name("__f_fseek")
	.dwattr DW$79, DW_AT_type(*DW$T$10)
	.dwattr DW$79, DW_AT_declaration(0x01)
	.dwattr DW$79, DW_AT_external(0x01)
DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$117)
DW$82	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$100)
DW$83	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$79


DW$84	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_getcurrsector"), DW_AT_symbol_name("__f_getcurrsector")
	.dwattr DW$84, DW_AT_type(*DW$T$10)
	.dwattr DW$84, DW_AT_declaration(0x01)
	.dwattr DW$84, DW_AT_external(0x01)
DW$85	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$86	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$100)
DW$87	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
DW$88	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$114)
	.dwendtag DW$84


DW$89	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_removechain"), DW_AT_symbol_name("__f_removechain")
	.dwattr DW$89, DW_AT_type(*DW$T$10)
	.dwattr DW$89, DW_AT_declaration(0x01)
	.dwattr DW$89, DW_AT_external(0x01)
DW$90	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$91	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$89


DW$92	.dwtag  DW_TAG_subprogram, DW_AT_name("_fn_removeseekpos"), DW_AT_symbol_name("__fn_removeseekpos")
	.dwattr DW$92, DW_AT_declaration(0x01)
	.dwattr DW$92, DW_AT_external(0x01)
DW$93	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$100)
	.dwendtag DW$92


DW$94	.dwtag  DW_TAG_subprogram, DW_AT_name("_fn_initseekdivisor"), DW_AT_symbol_name("__fn_initseekdivisor")
	.dwattr DW$94, DW_AT_declaration(0x01)
	.dwattr DW$94, DW_AT_external(0x01)
DW$95	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$100)
DW$96	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
	.dwendtag DW$94


DW$97	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_mutex_get"), DW_AT_symbol_name("__f_mutex_get")
	.dwattr DW$97, DW_AT_type(*DW$T$10)
	.dwattr DW$97, DW_AT_declaration(0x01)
	.dwattr DW$97, DW_AT_external(0x01)
DW$98	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$117)
DW$99	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
	.dwendtag DW$97

DW$100	.dwtag  DW_TAG_variable, DW_AT_name("f_filesystem"), DW_AT_symbol_name("_f_filesystem")
	.dwattr DW$100, DW_AT_type(*DW$T$264)
	.dwattr DW$100, DW_AT_declaration(0x01)
	.dwattr DW$100, DW_AT_external(0x01)
DW$101	.dwtag  DW_TAG_variable, DW_AT_name("MagicNumber"), DW_AT_symbol_name("_MagicNumber")
	.dwattr DW$101, DW_AT_type(*DW$T$13)
	.dwattr DW$101, DW_AT_declaration(0x01)
	.dwattr DW$101, DW_AT_external(0x01)
	.global	_truncate_tmp
_truncate_tmp:	.usect	".ebss",512,1,0
DW$102	.dwtag  DW_TAG_variable, DW_AT_name("truncate_tmp"), DW_AT_symbol_name("_truncate_tmp")
	.dwattr DW$102, DW_AT_location[DW_OP_addr _truncate_tmp]
	.dwattr DW$102, DW_AT_type(*DW$T$223)
	.dwattr DW$102, DW_AT_external(0x01)
;	C:\CCStudio_v3.3\C2000\cgtools\bin\opt2000.exe C:\Users\Andrew\AppData\Local\Temp\TI4162 C:\Users\Andrew\AppData\Local\Temp\TI4164 
;	C:\CCStudio_v3.3\C2000\cgtools\bin\ac2000.exe -q -D_INLINE -DLARGE_MODEL -IC:/CCStudio_v3.3/C2000/xdais/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/bios/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/rtdx/include/c2000 -IC:/CCStudio_v3.3/C2000/cgtools/include --version=28 --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\Andrew\AppData\Local\Temp\TI4162 --template_info_file C:\Users\Andrew\AppData\Local\Temp\TI4166 --object_file 
	.sect	".text"
	.global	__f_getdirsector

DW$103	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_getdirsector"), DW_AT_symbol_name("__f_getdirsector")
	.dwattr DW$103, DW_AT_low_pc(__f_getdirsector)
	.dwattr DW$103, DW_AT_high_pc(0x00)
	.dwattr DW$103, DW_AT_begin_file("fat.c")
	.dwattr DW$103, DW_AT_begin_line(0x3a)
	.dwattr DW$103, DW_AT_begin_column(0x05)
	.dwattr DW$103, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$103, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",58,56

;***************************************************************
;* FNAME: __f_getdirsector              FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            1 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

__f_getdirsector:
;* AR4   assigned to _vi
DW$104	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$104, DW_AT_type(*DW$T$89)
	.dwattr DW$104, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _sector
DW$105	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sector"), DW_AT_symbol_name("_sector")
	.dwattr DW$105, DW_AT_type(*DW$T$13)
	.dwattr DW$105, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      XAR0,#1114            ; |60| 
        MOVL      *SP++,XAR2
        MOVL      XAR1,XAR4             ; |58| 
        MOVB      XAR6,#0
        ADDB      SP,#2
        MOVL      XAR2,ACC              ; |58| 
        CMPL      ACC,*+XAR1[AR0]       ; |60| 
        BF        L2,EQ                 ; |60| 
        ; branchcc occurs ; |60| 
        MOVL      ACC,XAR1
        MOVL      XAR5,#602             ; |61| 
        MOVL      XAR4,XAR1             ; |61| 
        ADDL      XAR5,ACC
        MOV       *-SP[1],#1            ; |61| 
        MOVL      ACC,XAR2              ; |61| 
        LCR       #__f_readsector       ; |61| 
        ; call occurs [#__f_readsector] ; |61| 
        CMPB      AL,#0                 ; |61| 
        MOVZ      AR6,AL                ; |61| 
        BF        L1,NEQ                ; |61| 
        ; branchcc occurs ; |61| 
        MOVL      XAR0,#1114            ; |63| 
        MOVL      *+XAR1[AR0],XAR2      ; |63| 
        BF        L3,UNC                ; |63| 
        ; branch occurs ; |63| 
L1:    
        MOVL      XAR0,#1114            ; |64| 
        MOVB      ACC,#0
        SUBB      ACC,#1
        MOVL      *+XAR1[AR0],ACC       ; |64| 
L2:    
        MOV       AL,AR6
L3:    
        SUBB      SP,#2                 ; |66| 
        MOVL      XAR2,*--SP            ; |66| 
        MOVL      XAR1,*--SP            ; |66| 
	.dwpsn	"fat.c",67,1
        LRETR
        ; return occurs
	.dwattr DW$103, DW_AT_end_file("fat.c")
	.dwattr DW$103, DW_AT_end_line(0x43)
	.dwattr DW$103, DW_AT_end_column(0x01)
	.dwendtag DW$103

	.sect	".text"
	.global	__f_writedirsector

DW$106	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_writedirsector"), DW_AT_symbol_name("__f_writedirsector")
	.dwattr DW$106, DW_AT_low_pc(__f_writedirsector)
	.dwattr DW$106, DW_AT_high_pc(0x00)
	.dwattr DW$106, DW_AT_begin_file("fat.c")
	.dwattr DW$106, DW_AT_begin_line(0x54)
	.dwattr DW$106, DW_AT_begin_column(0x05)
	.dwattr DW$106, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$106, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",84,37

;***************************************************************
;* FNAME: __f_writedirsector            FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            1 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

__f_writedirsector:
;* AR4   assigned to _vi
DW$107	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$107, DW_AT_type(*DW$T$89)
	.dwattr DW$107, DW_AT_location[DW_OP_reg12]
        MOVL      XAR0,#1114            ; |85| 
        MOVL      XAR6,*+XAR4[AR0]      ; |85| 
        ADDB      SP,#2
        MOVB      ACC,#0
        SUBB      ACC,#1
        CMPL      ACC,XAR6              ; |85| 
        BF        L4,EQ                 ; |85| 
        ; branchcc occurs ; |85| 
        MOVL      ACC,XAR4
        MOVL      XAR5,#602             ; |85| 
        ADDL      XAR5,ACC
        MOVL      ACC,XAR6              ; |85| 
        MOV       *-SP[1],#1            ; |85| 
        LCR       #__f_writesector      ; |85| 
        ; call occurs [#__f_writesector] ; |85| 
        BF        L5,UNC                ; |85| 
        ; branch occurs ; |85| 
L4:    
        MOVB      AL,#18                ; |85| 
L5:    
        SUBB      SP,#2                 ; |85| 
	.dwpsn	"fat.c",89,1
        LRETR
        ; return occurs
	.dwattr DW$106, DW_AT_end_file("fat.c")
	.dwattr DW$106, DW_AT_end_line(0x59)
	.dwattr DW$106, DW_AT_end_column(0x01)
	.dwendtag DW$106

	.sect	".text"

DW$108	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_checkname"), DW_AT_symbol_name("__f_checkname")
	.dwattr DW$108, DW_AT_low_pc(__f_checkname)
	.dwattr DW$108, DW_AT_high_pc(0x00)
	.dwattr DW$108, DW_AT_begin_file("fat.c")
	.dwattr DW$108, DW_AT_begin_line(0x6d)
	.dwattr DW$108, DW_AT_begin_column(0x0d)
	.dwattr DW$108, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$108, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",109,48

;***************************************************************
;* FNAME: __f_checkname                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

__f_checkname:
;* AR4   assigned to _name
DW$109	.dwtag  DW_TAG_formal_parameter, DW_AT_name("name"), DW_AT_symbol_name("_name")
	.dwattr DW$109, DW_AT_type(*DW$T$59)
	.dwattr DW$109, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _ext
DW$110	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ext"), DW_AT_symbol_name("_ext")
	.dwattr DW$110, DW_AT_type(*DW$T$59)
	.dwattr DW$110, DW_AT_location[DW_OP_reg14]
        MOVB      XAR7,#0
        SETC      SXM
	.dwpsn	"fat.c",112,0
        MOV       P,#0
L6:    
DW$L$__f_checkname$2$B:
        MOVL      XAR6,XAR4             ; |113| 
        MOV       AL,AR7
        MOV       ACC,AL                ; |113| 
        ADDL      XAR6,ACC
        MOVL      ACC,P                 ; |113| 
        MOVZ      AR6,*+XAR6[0]         ; |113| 
        BF        L8,NEQ                ; |114| 
        ; branchcc occurs ; |114| 
DW$L$__f_checkname$2$E:
DW$L$__f_checkname$3$B:
        MOV       AL,AR6
        CMPB      AL,#32                ; |115| 
        BF        L7,NEQ                ; |115| 
        ; branchcc occurs ; |115| 
DW$L$__f_checkname$3$E:
DW$L$__f_checkname$4$B:
        MOV       PH,#0
        MOV       PL,#1
DW$L$__f_checkname$4$E:
L7:    
DW$L$__f_checkname$5$B:
        CMPB      AL,#0                 ; |116| 
        BF        L9,LEQ                ; |116| 
        ; branchcc occurs ; |116| 
DW$L$__f_checkname$5$E:
DW$L$__f_checkname$6$B:
        CMPB      AL,#32                ; |116| 
        BF        L13,LT                ; |116| 
        ; branchcc occurs ; |116| 
DW$L$__f_checkname$6$E:
DW$L$__f_checkname$7$B:
        CMPB      AL,#124               ; |116| 
        BF        L13,EQ                ; |116| 
        ; branchcc occurs ; |116| 
DW$L$__f_checkname$7$E:
DW$L$__f_checkname$8$B:
        CMPB      AL,#91                ; |116| 
        BF        L13,EQ                ; |116| 
        ; branchcc occurs ; |116| 
DW$L$__f_checkname$8$E:
DW$L$__f_checkname$9$B:
        CMPB      AL,#93                ; |116| 
        BF        L13,EQ                ; |116| 
        ; branchcc occurs ; |116| 
DW$L$__f_checkname$9$E:
DW$L$__f_checkname$10$B:
        CMPB      AL,#60                ; |116| 
        BF        L13,EQ                ; |116| 
        ; branchcc occurs ; |116| 
DW$L$__f_checkname$10$E:
DW$L$__f_checkname$11$B:
        CMPB      AL,#62                ; |116| 
        BF        L13,EQ                ; |116| 
        ; branchcc occurs ; |116| 
DW$L$__f_checkname$11$E:
DW$L$__f_checkname$12$B:
        CMPB      AL,#47                ; |116| 
        BF        L13,EQ                ; |116| 
        ; branchcc occurs ; |116| 
DW$L$__f_checkname$12$E:
DW$L$__f_checkname$13$B:
        CMPB      AL,#92                ; |116| 
        BF        L13,EQ                ; |116| 
        ; branchcc occurs ; |116| 
DW$L$__f_checkname$13$E:
DW$L$__f_checkname$14$B:
        CMPB      AL,#58                ; |116| 
        BF        L9,NEQ                ; |116| 
        ; branchcc occurs ; |116| 
DW$L$__f_checkname$14$E:
        BF        L13,UNC               ; |116| 
        ; branch occurs ; |116| 
L8:    
DW$L$__f_checkname$16$B:
        MOV       AL,AR6
        CMPB      AL,#32                ; |126| 
        BF        L13,NEQ               ; |126| 
        ; branchcc occurs ; |126| 
DW$L$__f_checkname$16$E:
L9:    
DW$L$__f_checkname$17$B:
        MOV       AL,AR7
        ADDB      AL,#1                 ; |112| 
        MOVZ      AR7,AL                ; |112| 
        CMPB      AL,#8                 ; |112| 
	.dwpsn	"fat.c",127,0
        BF        L6,LT                 ; |112| 
        ; branchcc occurs ; |112| 
DW$L$__f_checkname$17$E:
        MOVB      XAR7,#0
        SETC      SXM
	.dwpsn	"fat.c",130,0
        MOV       P,#0
L10:    
DW$L$__f_checkname$19$B:
        MOVL      XAR4,XAR5             ; |131| 
        MOV       AL,AR7
        MOV       ACC,AL                ; |131| 
        ADDL      XAR4,ACC
        MOVL      ACC,P                 ; |131| 
        MOVZ      AR6,*+XAR4[0]         ; |131| 
        BF        L12,NEQ               ; |132| 
        ; branchcc occurs ; |132| 
DW$L$__f_checkname$19$E:
DW$L$__f_checkname$20$B:
        MOV       AL,AR6
        CMPB      AL,#32                ; |133| 
        BF        L11,NEQ               ; |133| 
        ; branchcc occurs ; |133| 
DW$L$__f_checkname$20$E:
DW$L$__f_checkname$21$B:
        MOV       PH,#0
        MOV       PL,#1
DW$L$__f_checkname$21$E:
L11:    
DW$L$__f_checkname$22$B:
        CMPB      AL,#0                 ; |134| 
        BF        L14,LEQ               ; |134| 
        ; branchcc occurs ; |134| 
DW$L$__f_checkname$22$E:
DW$L$__f_checkname$23$B:
        CMPB      AL,#32                ; |134| 
        BF        L13,LT                ; |134| 
        ; branchcc occurs ; |134| 
DW$L$__f_checkname$23$E:
DW$L$__f_checkname$24$B:
        CMPB      AL,#124               ; |134| 
        BF        L13,EQ                ; |134| 
        ; branchcc occurs ; |134| 
DW$L$__f_checkname$24$E:
DW$L$__f_checkname$25$B:
        CMPB      AL,#91                ; |134| 
        BF        L13,EQ                ; |134| 
        ; branchcc occurs ; |134| 
DW$L$__f_checkname$25$E:
DW$L$__f_checkname$26$B:
        CMPB      AL,#93                ; |134| 
        BF        L13,EQ                ; |134| 
        ; branchcc occurs ; |134| 
DW$L$__f_checkname$26$E:
DW$L$__f_checkname$27$B:
        CMPB      AL,#60                ; |134| 
        BF        L13,EQ                ; |134| 
        ; branchcc occurs ; |134| 
DW$L$__f_checkname$27$E:
DW$L$__f_checkname$28$B:
        CMPB      AL,#62                ; |134| 
        BF        L13,EQ                ; |134| 
        ; branchcc occurs ; |134| 
DW$L$__f_checkname$28$E:
DW$L$__f_checkname$29$B:
        CMPB      AL,#47                ; |134| 
        BF        L13,EQ                ; |134| 
        ; branchcc occurs ; |134| 
DW$L$__f_checkname$29$E:
DW$L$__f_checkname$30$B:
        CMPB      AL,#92                ; |134| 
        BF        L13,EQ                ; |134| 
        ; branchcc occurs ; |134| 
DW$L$__f_checkname$30$E:
DW$L$__f_checkname$31$B:
        CMPB      AL,#58                ; |134| 
        BF        L13,EQ                ; |134| 
        ; branchcc occurs ; |134| 
DW$L$__f_checkname$31$E:
DW$L$__f_checkname$32$B:
        BF        L14,UNC               ; |134| 
        ; branch occurs ; |134| 
DW$L$__f_checkname$32$E:
L12:    
DW$L$__f_checkname$33$B:
        MOV       AL,AR6
        CMPB      AL,#32                ; |144| 
        BF        L14,EQ                ; |144| 
        ; branchcc occurs ; |144| 
DW$L$__f_checkname$33$E:
L13:    
        MOVB      ACC,#1
        BF        L15,UNC               ; |144| 
        ; branch occurs ; |144| 
L14:    
DW$L$__f_checkname$35$B:
        MOV       AL,AR7
        ADDB      AL,#1                 ; |130| 
        MOVZ      AR7,AL                ; |130| 
        CMPB      AL,#3                 ; |130| 
	.dwpsn	"fat.c",145,0
        BF        L10,LT                ; |130| 
        ; branchcc occurs ; |130| 
DW$L$__f_checkname$35$E:
        MOVB      ACC,#0
L15:    
	.dwpsn	"fat.c",147,1
        LRETR
        ; return occurs

DW$111	.dwtag  DW_TAG_loop
	.dwattr DW$111, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L10:1:1471518973")
	.dwattr DW$111, DW_AT_begin_file("fat.c")
	.dwattr DW$111, DW_AT_begin_line(0x82)
	.dwattr DW$111, DW_AT_end_line(0x91)
DW$112	.dwtag  DW_TAG_loop_range
	.dwattr DW$112, DW_AT_low_pc(DW$L$__f_checkname$19$B)
	.dwattr DW$112, DW_AT_high_pc(DW$L$__f_checkname$19$E)
DW$113	.dwtag  DW_TAG_loop_range
	.dwattr DW$113, DW_AT_low_pc(DW$L$__f_checkname$23$B)
	.dwattr DW$113, DW_AT_high_pc(DW$L$__f_checkname$23$E)
DW$114	.dwtag  DW_TAG_loop_range
	.dwattr DW$114, DW_AT_low_pc(DW$L$__f_checkname$24$B)
	.dwattr DW$114, DW_AT_high_pc(DW$L$__f_checkname$24$E)
DW$115	.dwtag  DW_TAG_loop_range
	.dwattr DW$115, DW_AT_low_pc(DW$L$__f_checkname$25$B)
	.dwattr DW$115, DW_AT_high_pc(DW$L$__f_checkname$25$E)
DW$116	.dwtag  DW_TAG_loop_range
	.dwattr DW$116, DW_AT_low_pc(DW$L$__f_checkname$26$B)
	.dwattr DW$116, DW_AT_high_pc(DW$L$__f_checkname$26$E)
DW$117	.dwtag  DW_TAG_loop_range
	.dwattr DW$117, DW_AT_low_pc(DW$L$__f_checkname$27$B)
	.dwattr DW$117, DW_AT_high_pc(DW$L$__f_checkname$27$E)
DW$118	.dwtag  DW_TAG_loop_range
	.dwattr DW$118, DW_AT_low_pc(DW$L$__f_checkname$28$B)
	.dwattr DW$118, DW_AT_high_pc(DW$L$__f_checkname$28$E)
DW$119	.dwtag  DW_TAG_loop_range
	.dwattr DW$119, DW_AT_low_pc(DW$L$__f_checkname$29$B)
	.dwattr DW$119, DW_AT_high_pc(DW$L$__f_checkname$29$E)
DW$120	.dwtag  DW_TAG_loop_range
	.dwattr DW$120, DW_AT_low_pc(DW$L$__f_checkname$30$B)
	.dwattr DW$120, DW_AT_high_pc(DW$L$__f_checkname$30$E)
DW$121	.dwtag  DW_TAG_loop_range
	.dwattr DW$121, DW_AT_low_pc(DW$L$__f_checkname$31$B)
	.dwattr DW$121, DW_AT_high_pc(DW$L$__f_checkname$31$E)
DW$122	.dwtag  DW_TAG_loop_range
	.dwattr DW$122, DW_AT_low_pc(DW$L$__f_checkname$20$B)
	.dwattr DW$122, DW_AT_high_pc(DW$L$__f_checkname$20$E)
DW$123	.dwtag  DW_TAG_loop_range
	.dwattr DW$123, DW_AT_low_pc(DW$L$__f_checkname$21$B)
	.dwattr DW$123, DW_AT_high_pc(DW$L$__f_checkname$21$E)
DW$124	.dwtag  DW_TAG_loop_range
	.dwattr DW$124, DW_AT_low_pc(DW$L$__f_checkname$22$B)
	.dwattr DW$124, DW_AT_high_pc(DW$L$__f_checkname$22$E)
DW$125	.dwtag  DW_TAG_loop_range
	.dwattr DW$125, DW_AT_low_pc(DW$L$__f_checkname$32$B)
	.dwattr DW$125, DW_AT_high_pc(DW$L$__f_checkname$32$E)
DW$126	.dwtag  DW_TAG_loop_range
	.dwattr DW$126, DW_AT_low_pc(DW$L$__f_checkname$33$B)
	.dwattr DW$126, DW_AT_high_pc(DW$L$__f_checkname$33$E)
DW$127	.dwtag  DW_TAG_loop_range
	.dwattr DW$127, DW_AT_low_pc(DW$L$__f_checkname$35$B)
	.dwattr DW$127, DW_AT_high_pc(DW$L$__f_checkname$35$E)
	.dwendtag DW$111


DW$128	.dwtag  DW_TAG_loop
	.dwattr DW$128, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L6:1:1471518973")
	.dwattr DW$128, DW_AT_begin_file("fat.c")
	.dwattr DW$128, DW_AT_begin_line(0x70)
	.dwattr DW$128, DW_AT_end_line(0x7f)
DW$129	.dwtag  DW_TAG_loop_range
	.dwattr DW$129, DW_AT_low_pc(DW$L$__f_checkname$2$B)
	.dwattr DW$129, DW_AT_high_pc(DW$L$__f_checkname$2$E)
DW$130	.dwtag  DW_TAG_loop_range
	.dwattr DW$130, DW_AT_low_pc(DW$L$__f_checkname$6$B)
	.dwattr DW$130, DW_AT_high_pc(DW$L$__f_checkname$6$E)
DW$131	.dwtag  DW_TAG_loop_range
	.dwattr DW$131, DW_AT_low_pc(DW$L$__f_checkname$7$B)
	.dwattr DW$131, DW_AT_high_pc(DW$L$__f_checkname$7$E)
DW$132	.dwtag  DW_TAG_loop_range
	.dwattr DW$132, DW_AT_low_pc(DW$L$__f_checkname$8$B)
	.dwattr DW$132, DW_AT_high_pc(DW$L$__f_checkname$8$E)
DW$133	.dwtag  DW_TAG_loop_range
	.dwattr DW$133, DW_AT_low_pc(DW$L$__f_checkname$9$B)
	.dwattr DW$133, DW_AT_high_pc(DW$L$__f_checkname$9$E)
DW$134	.dwtag  DW_TAG_loop_range
	.dwattr DW$134, DW_AT_low_pc(DW$L$__f_checkname$10$B)
	.dwattr DW$134, DW_AT_high_pc(DW$L$__f_checkname$10$E)
DW$135	.dwtag  DW_TAG_loop_range
	.dwattr DW$135, DW_AT_low_pc(DW$L$__f_checkname$11$B)
	.dwattr DW$135, DW_AT_high_pc(DW$L$__f_checkname$11$E)
DW$136	.dwtag  DW_TAG_loop_range
	.dwattr DW$136, DW_AT_low_pc(DW$L$__f_checkname$12$B)
	.dwattr DW$136, DW_AT_high_pc(DW$L$__f_checkname$12$E)
DW$137	.dwtag  DW_TAG_loop_range
	.dwattr DW$137, DW_AT_low_pc(DW$L$__f_checkname$13$B)
	.dwattr DW$137, DW_AT_high_pc(DW$L$__f_checkname$13$E)
DW$138	.dwtag  DW_TAG_loop_range
	.dwattr DW$138, DW_AT_low_pc(DW$L$__f_checkname$3$B)
	.dwattr DW$138, DW_AT_high_pc(DW$L$__f_checkname$3$E)
DW$139	.dwtag  DW_TAG_loop_range
	.dwattr DW$139, DW_AT_low_pc(DW$L$__f_checkname$4$B)
	.dwattr DW$139, DW_AT_high_pc(DW$L$__f_checkname$4$E)
DW$140	.dwtag  DW_TAG_loop_range
	.dwattr DW$140, DW_AT_low_pc(DW$L$__f_checkname$5$B)
	.dwattr DW$140, DW_AT_high_pc(DW$L$__f_checkname$5$E)
DW$141	.dwtag  DW_TAG_loop_range
	.dwattr DW$141, DW_AT_low_pc(DW$L$__f_checkname$14$B)
	.dwattr DW$141, DW_AT_high_pc(DW$L$__f_checkname$14$E)
DW$142	.dwtag  DW_TAG_loop_range
	.dwattr DW$142, DW_AT_low_pc(DW$L$__f_checkname$16$B)
	.dwattr DW$142, DW_AT_high_pc(DW$L$__f_checkname$16$E)
DW$143	.dwtag  DW_TAG_loop_range
	.dwattr DW$143, DW_AT_low_pc(DW$L$__f_checkname$17$B)
	.dwattr DW$143, DW_AT_high_pc(DW$L$__f_checkname$17$E)
	.dwendtag DW$128

	.dwattr DW$108, DW_AT_end_file("fat.c")
	.dwattr DW$108, DW_AT_end_line(0x93)
	.dwattr DW$108, DW_AT_end_column(0x01)
	.dwendtag DW$108

	.sect	".text"

DW$144	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_checknamewc"), DW_AT_symbol_name("__f_checknamewc")
	.dwattr DW$144, DW_AT_low_pc(__f_checknamewc)
	.dwattr DW$144, DW_AT_high_pc(0x00)
	.dwattr DW$144, DW_AT_begin_file("fat.c")
	.dwattr DW$144, DW_AT_begin_line(0xa7)
	.dwattr DW$144, DW_AT_begin_column(0x0d)
	.dwattr DW$144, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$144, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",167,50

;***************************************************************
;* FNAME: __f_checknamewc               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

__f_checknamewc:
;* AR4   assigned to _name
DW$145	.dwtag  DW_TAG_formal_parameter, DW_AT_name("name"), DW_AT_symbol_name("_name")
	.dwattr DW$145, DW_AT_type(*DW$T$59)
	.dwattr DW$145, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _ext
DW$146	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ext"), DW_AT_symbol_name("_ext")
	.dwattr DW$146, DW_AT_type(*DW$T$59)
	.dwattr DW$146, DW_AT_location[DW_OP_reg14]
        SETC      SXM
	.dwpsn	"fat.c",169,0
        MOVB      AL,#0
L16:    
DW$L$__f_checknamewc$2$B:
        MOVL      XAR6,XAR4             ; |171| 
        MOV       ACC,AL                ; |171| 
        ADDL      XAR6,ACC
        MOV       AH,*+XAR6[0]          ; |171| 
        CMPB      AH,#63                ; |171| 
        BF        L18,EQ                ; |171| 
        ; branchcc occurs ; |171| 
DW$L$__f_checknamewc$2$E:
DW$L$__f_checknamewc$3$B:
        CMPB      AH,#42                ; |171| 
        BF        L18,EQ                ; |171| 
        ; branchcc occurs ; |171| 
DW$L$__f_checknamewc$3$E:
DW$L$__f_checknamewc$4$B:
        ADDB      AL,#1                 ; |169| 
        CMPB      AL,#8                 ; |169| 
	.dwpsn	"fat.c",173,0
        BF        L16,LT                ; |169| 
        ; branchcc occurs ; |169| 
DW$L$__f_checknamewc$4$E:
        SETC      SXM
	.dwpsn	"fat.c",174,0
        MOVB      AL,#0
L17:    
DW$L$__f_checknamewc$6$B:
        MOVL      XAR6,XAR5             ; |176| 
        MOV       ACC,AL                ; |176| 
        ADDL      XAR6,ACC
        MOV       AH,*+XAR6[0]          ; |176| 
        CMPB      AH,#63                ; |176| 
        BF        L18,EQ                ; |176| 
        ; branchcc occurs ; |176| 
DW$L$__f_checknamewc$6$E:
DW$L$__f_checknamewc$7$B:
        CMPB      AH,#42                ; |176| 
        BF        L19,NEQ               ; |176| 
        ; branchcc occurs ; |176| 
DW$L$__f_checknamewc$7$E:
L18:    
        MOVB      ACC,#1
        BF        L20,UNC               ; |177| 
        ; branch occurs ; |177| 
L19:    
DW$L$__f_checknamewc$9$B:
        ADDB      AL,#1                 ; |174| 
        CMPB      AL,#3                 ; |174| 
	.dwpsn	"fat.c",178,0
        BF        L17,LT                ; |174| 
        ; branchcc occurs ; |174| 
DW$L$__f_checknamewc$9$E:
        LCR       #__f_checkname        ; |179| 
        ; call occurs [#__f_checkname] ; |179| 
L20:    
	.dwpsn	"fat.c",180,1
        LRETR
        ; return occurs

DW$147	.dwtag  DW_TAG_loop
	.dwattr DW$147, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L17:1:1471518973")
	.dwattr DW$147, DW_AT_begin_file("fat.c")
	.dwattr DW$147, DW_AT_begin_line(0xae)
	.dwattr DW$147, DW_AT_end_line(0xb2)
DW$148	.dwtag  DW_TAG_loop_range
	.dwattr DW$148, DW_AT_low_pc(DW$L$__f_checknamewc$6$B)
	.dwattr DW$148, DW_AT_high_pc(DW$L$__f_checknamewc$6$E)
DW$149	.dwtag  DW_TAG_loop_range
	.dwattr DW$149, DW_AT_low_pc(DW$L$__f_checknamewc$7$B)
	.dwattr DW$149, DW_AT_high_pc(DW$L$__f_checknamewc$7$E)
DW$150	.dwtag  DW_TAG_loop_range
	.dwattr DW$150, DW_AT_low_pc(DW$L$__f_checknamewc$9$B)
	.dwattr DW$150, DW_AT_high_pc(DW$L$__f_checknamewc$9$E)
	.dwendtag DW$147


DW$151	.dwtag  DW_TAG_loop
	.dwattr DW$151, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L16:1:1471518973")
	.dwattr DW$151, DW_AT_begin_file("fat.c")
	.dwattr DW$151, DW_AT_begin_line(0xa9)
	.dwattr DW$151, DW_AT_end_line(0xad)
DW$152	.dwtag  DW_TAG_loop_range
	.dwattr DW$152, DW_AT_low_pc(DW$L$__f_checknamewc$2$B)
	.dwattr DW$152, DW_AT_high_pc(DW$L$__f_checknamewc$2$E)
DW$153	.dwtag  DW_TAG_loop_range
	.dwattr DW$153, DW_AT_low_pc(DW$L$__f_checknamewc$3$B)
	.dwattr DW$153, DW_AT_high_pc(DW$L$__f_checknamewc$3$E)
DW$154	.dwtag  DW_TAG_loop_range
	.dwattr DW$154, DW_AT_low_pc(DW$L$__f_checknamewc$4$B)
	.dwattr DW$154, DW_AT_high_pc(DW$L$__f_checknamewc$4$E)
	.dwendtag DW$151

	.dwattr DW$144, DW_AT_end_file("fat.c")
	.dwattr DW$144, DW_AT_end_line(0xb4)
	.dwattr DW$144, DW_AT_end_column(0x01)
	.dwendtag DW$144

	.sect	".text"

DW$155	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_setnameext"), DW_AT_symbol_name("__f_setnameext")
	.dwattr DW$155, DW_AT_low_pc(__f_setnameext)
	.dwattr DW$155, DW_AT_high_pc(0x00)
	.dwattr DW$155, DW_AT_begin_file("fat.c")
	.dwattr DW$155, DW_AT_begin_line(0xca)
	.dwattr DW$155, DW_AT_begin_column(0x0c)
	.dwattr DW$155, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$155, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",202,64

;***************************************************************
;* FNAME: __f_setnameext                FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

__f_setnameext:
;* AR4   assigned to _s
DW$156	.dwtag  DW_TAG_formal_parameter, DW_AT_name("s"), DW_AT_symbol_name("_s")
	.dwattr DW$156, DW_AT_type(*DW$T$146)
	.dwattr DW$156, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _name
DW$157	.dwtag  DW_TAG_formal_parameter, DW_AT_name("name"), DW_AT_symbol_name("_name")
	.dwattr DW$157, DW_AT_type(*DW$T$59)
	.dwattr DW$157, DW_AT_location[DW_OP_reg14]
DW$158	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ext"), DW_AT_symbol_name("_ext")
	.dwattr DW$158, DW_AT_type(*DW$T$59)
	.dwattr DW$158, DW_AT_location[DW_OP_breg20 -6]
        MOVL      *SP++,XAR2
        MOVB      XAR0,#0
        SETC      SXM
        MOV       T,#0                  ; |203| 
        MOVL      XAR2,*-SP[6]          ; |202| 
        BF        L22,UNC
        ; branch occurs
L21:    
DW$L$__f_setnameext$2$B:
        MOV       AH,AR0
        ADDB      AH,#1                 ; |211| 
        MOVZ      AR0,AH                ; |211| 
DW$L$__f_setnameext$2$E:
L22:    
DW$L$__f_setnameext$3$B:
        MOVL      XAR6,XAR4             ; |209| 
        MOV       AL,AR0
        MOV       ACC,AL                ; |209| 
        ADDL      XAR6,ACC
        MOV       AH,*+XAR6[0]          ; |209| 
        BF        L23,EQ                ; |209| 
        ; branchcc occurs ; |209| 
DW$L$__f_setnameext$3$E:
DW$L$__f_setnameext$4$B:
        CMPB      AH,#92                ; |209| 
        BF        L23,EQ                ; |209| 
        ; branchcc occurs ; |209| 
DW$L$__f_setnameext$4$E:
DW$L$__f_setnameext$5$B:
        CMPB      AH,#47                ; |209| 
        BF        L21,NEQ               ; |209| 
        ; branchcc occurs ; |209| 
DW$L$__f_setnameext$5$E:
L23:    
        MOV       AH,AR0
        BF        L24,EQ                ; |214| 
        ; branchcc occurs ; |214| 
        MOV       AH,*+XAR4[0]          ; |214| 
        CMPB      AH,#46                ; |214| 
        BF        L24,NEQ               ; |214| 
        ; branchcc occurs ; |214| 
        MOV       AH,AR0
        CMPB      AH,#1                 ; |214| 
        BF        L31,EQ                ; |214| 
        ; branchcc occurs ; |214| 
        MOV       AH,*+XAR4[1]          ; |214| 
        CMPB      AH,#46                ; |214| 
        BF        L31,EQ                ; |214| 
        ; branchcc occurs ; |214| 
L24:    
        MOVZ      AR7,AR0
        MOV       AH,AR7                ; |222| 
        BF        L31,LEQ               ; |222| 
        ; branchcc occurs ; |222| 
L25:    
DW$L$__f_setnameext$11$B:
	.dwpsn	"fat.c",222,0
        ADDB      AH,#-1
        MOVL      XAR6,XAR4             ; |223| 
        SETC      SXM
        MOV       AL,AH                 ; |223| 
        MOV       ACC,AL                ; |223| 
        ADDL      XAR6,ACC
        MOV       AH,*+XAR6[0]          ; |223| 
        CMPB      AH,#46                ; |223| 
        BF        L26,EQ                ; |223| 
        ; branchcc occurs ; |223| 
DW$L$__f_setnameext$11$E:
DW$L$__f_setnameext$12$B:
        MOVZ      AR7,AL                ; |222| 
        MOV       AH,AR7                ; |222| 
	.dwpsn	"fat.c",240,0
        BF        L25,GT                ; |222| 
        ; branchcc occurs ; |222| 
DW$L$__f_setnameext$12$E:
        BF        L31,UNC               ; |222| 
        ; branch occurs ; |222| 
L26:    
        MOV       AL,AR0
        MOV       AH,AR7                ; |225| 
        SUB       AL,AR7                ; |225| 
        MOV       PL,#0                 ; |228| 
        ADDB      AL,#1                 ; |225| 
        ADDB      AH,#-1
        MOVZ      AR0,AH                ; |226| 
	.dwpsn	"fat.c",228,0
        MOV       T,AL                  ; |225| 
L27:    
DW$L$__f_setnameext$15$B:
        MOV       AH,T                  ; |229| 
        ADDB      AH,#-1
        CMP       AH,PL                 ; |229| 
        BF        L29,LEQ               ; |229| 
        ; branchcc occurs ; |229| 
DW$L$__f_setnameext$15$E:
DW$L$__f_setnameext$16$B:
        MOVL      XAR6,XAR4             ; |230| 
        SETC      SXM
        MOV       AL,AR7
        MOV       ACC,AL                ; |230| 
        ADDL      XAR6,ACC
        MOV       AH,AR7                ; |230| 
        ADDB      AH,#1                 ; |230| 
        MOV       PH,*+XAR6[0]          ; |230| 
        MOVZ      AR7,AH                ; |230| 
        MOV       AH,PH                 ; |230| 
        CMPB      AH,#97                ; |231| 
        BF        L28,LT                ; |231| 
        ; branchcc occurs ; |231| 
DW$L$__f_setnameext$16$E:
DW$L$__f_setnameext$17$B:
        CMPB      AH,#122               ; |231| 
        BF        L28,GT                ; |231| 
        ; branchcc occurs ; |231| 
DW$L$__f_setnameext$17$E:
DW$L$__f_setnameext$18$B:
        ADDB      AH,#-32
        MOV       PH,AH                 ; |231| 
DW$L$__f_setnameext$18$E:
L28:    
DW$L$__f_setnameext$19$B:
        MOVL      XAR6,XAR2             ; |233| 
        MOV       AL,PL
        MOV       ACC,AL                ; |233| 
        ADDL      XAR6,ACC
        MOVH      *+XAR6[0],P           ; |233| 
        BF        L30,UNC               ; |234| 
        ; branch occurs ; |234| 
DW$L$__f_setnameext$19$E:
L29:    
DW$L$__f_setnameext$20$B:
        MOVL      XAR6,XAR2             ; |235| 
        SETC      SXM
        MOV       AL,PL
        MOV       ACC,AL                ; |235| 
        ADDL      XAR6,ACC
        MOV       *+XAR6[0],#32         ; |235| 
DW$L$__f_setnameext$20$E:
L30:    
DW$L$__f_setnameext$21$B:
        MOV       AH,PL
        ADDB      AH,#1                 ; |228| 
        CMPB      AH,#3                 ; |228| 
        MOV       PL,AH                 ; |228| 
	.dwpsn	"fat.c",236,0
        BF        L27,LT                ; |228| 
        ; branchcc occurs ; |228| 
DW$L$__f_setnameext$21$E:
        BF        L33,UNC               ; |228| 
        ; branch occurs ; |228| 
L31:    
        MOVB      XAR7,#0
	.dwpsn	"fat.c",244,0
        SETC      SXM
L32:    
DW$L$__f_setnameext$24$B:
        MOVL      XAR6,XAR2             ; |245| 
        MOV       AL,AR7
        MOV       ACC,AL                ; |245| 
        ADDL      XAR6,ACC
        MOV       AH,AR7                ; |245| 
        ADDB      AH,#1                 ; |244| 
        MOVZ      AR7,AH                ; |244| 
        CMPB      AH,#3                 ; |244| 
        MOV       *+XAR6[0],#32         ; |245| 
	.dwpsn	"fat.c",246,0
        BF        L32,LT                ; |244| 
        ; branchcc occurs ; |244| 
DW$L$__f_setnameext$24$E:
L33:    
	.dwpsn	"fat.c",249,0
        MOVB      XAR7,#0
L34:    
DW$L$__f_setnameext$26$B:
        MOV       AH,AR0
        CMP       AH,AR7                ; |250| 
        BF        L36,LEQ               ; |250| 
        ; branchcc occurs ; |250| 
DW$L$__f_setnameext$26$E:
DW$L$__f_setnameext$27$B:
        MOVL      XAR6,XAR4             ; |251| 
        SETC      SXM
        MOV       AL,AR7
        MOV       ACC,AL                ; |251| 
        ADDL      XAR6,ACC
        MOV       PL,*+XAR6[0]          ; |251| 
        MOV       AH,PL                 ; |251| 
        CMPB      AH,#97                ; |251| 
        BF        L35,LT                ; |251| 
        ; branchcc occurs ; |251| 
DW$L$__f_setnameext$27$E:
DW$L$__f_setnameext$28$B:
        CMPB      AH,#122               ; |251| 
        BF        L35,GT                ; |251| 
        ; branchcc occurs ; |251| 
DW$L$__f_setnameext$28$E:
DW$L$__f_setnameext$29$B:
        ADDB      AH,#-32
        MOV       PL,AH                 ; |252| 
DW$L$__f_setnameext$29$E:
L35:    
DW$L$__f_setnameext$30$B:
        MOVL      XAR6,XAR5             ; |253| 
        MOV       AL,AR7
        MOV       ACC,AL                ; |253| 
        ADDL      XAR6,ACC
        MOV       *+XAR6[0],P           ; |253| 
        BF        L37,UNC               ; |254| 
        ; branch occurs ; |254| 
DW$L$__f_setnameext$30$E:
L36:    
DW$L$__f_setnameext$31$B:
        MOVL      XAR6,XAR5             ; |255| 
        SETC      SXM
        MOV       AL,AR7
        MOV       ACC,AL                ; |255| 
        ADDL      XAR6,ACC
        MOV       *+XAR6[0],#32         ; |255| 
DW$L$__f_setnameext$31$E:
L37:    
DW$L$__f_setnameext$32$B:
        MOV       AH,AR7
        ADDB      AH,#1                 ; |249| 
        MOVZ      AR7,AH                ; |249| 
        CMPB      AH,#8                 ; |249| 
	.dwpsn	"fat.c",256,0
        BF        L34,LT                ; |249| 
        ; branchcc occurs ; |249| 
DW$L$__f_setnameext$32$E:
        MOVL      XAR2,*--SP            ; |258| 
        MOV       AL,T                  ; |258| 
        ADD       AL,AR0                ; |258| 
	.dwpsn	"fat.c",259,1
        LRETR
        ; return occurs

DW$159	.dwtag  DW_TAG_loop
	.dwattr DW$159, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L34:1:1471518973")
	.dwattr DW$159, DW_AT_begin_file("fat.c")
	.dwattr DW$159, DW_AT_begin_line(0xf9)
	.dwattr DW$159, DW_AT_end_line(0x100)
DW$160	.dwtag  DW_TAG_loop_range
	.dwattr DW$160, DW_AT_low_pc(DW$L$__f_setnameext$26$B)
	.dwattr DW$160, DW_AT_high_pc(DW$L$__f_setnameext$26$E)
DW$161	.dwtag  DW_TAG_loop_range
	.dwattr DW$161, DW_AT_low_pc(DW$L$__f_setnameext$27$B)
	.dwattr DW$161, DW_AT_high_pc(DW$L$__f_setnameext$27$E)
DW$162	.dwtag  DW_TAG_loop_range
	.dwattr DW$162, DW_AT_low_pc(DW$L$__f_setnameext$28$B)
	.dwattr DW$162, DW_AT_high_pc(DW$L$__f_setnameext$28$E)
DW$163	.dwtag  DW_TAG_loop_range
	.dwattr DW$163, DW_AT_low_pc(DW$L$__f_setnameext$29$B)
	.dwattr DW$163, DW_AT_high_pc(DW$L$__f_setnameext$29$E)
DW$164	.dwtag  DW_TAG_loop_range
	.dwattr DW$164, DW_AT_low_pc(DW$L$__f_setnameext$30$B)
	.dwattr DW$164, DW_AT_high_pc(DW$L$__f_setnameext$30$E)
DW$165	.dwtag  DW_TAG_loop_range
	.dwattr DW$165, DW_AT_low_pc(DW$L$__f_setnameext$31$B)
	.dwattr DW$165, DW_AT_high_pc(DW$L$__f_setnameext$31$E)
DW$166	.dwtag  DW_TAG_loop_range
	.dwattr DW$166, DW_AT_low_pc(DW$L$__f_setnameext$32$B)
	.dwattr DW$166, DW_AT_high_pc(DW$L$__f_setnameext$32$E)
	.dwendtag DW$159


DW$167	.dwtag  DW_TAG_loop
	.dwattr DW$167, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L32:1:1471518973")
	.dwattr DW$167, DW_AT_begin_file("fat.c")
	.dwattr DW$167, DW_AT_begin_line(0xf4)
	.dwattr DW$167, DW_AT_end_line(0xf6)
DW$168	.dwtag  DW_TAG_loop_range
	.dwattr DW$168, DW_AT_low_pc(DW$L$__f_setnameext$24$B)
	.dwattr DW$168, DW_AT_high_pc(DW$L$__f_setnameext$24$E)
	.dwendtag DW$167


DW$169	.dwtag  DW_TAG_loop
	.dwattr DW$169, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L27:1:1471518973")
	.dwattr DW$169, DW_AT_begin_file("fat.c")
	.dwattr DW$169, DW_AT_begin_line(0xe4)
	.dwattr DW$169, DW_AT_end_line(0xec)
DW$170	.dwtag  DW_TAG_loop_range
	.dwattr DW$170, DW_AT_low_pc(DW$L$__f_setnameext$15$B)
	.dwattr DW$170, DW_AT_high_pc(DW$L$__f_setnameext$15$E)
DW$171	.dwtag  DW_TAG_loop_range
	.dwattr DW$171, DW_AT_low_pc(DW$L$__f_setnameext$16$B)
	.dwattr DW$171, DW_AT_high_pc(DW$L$__f_setnameext$16$E)
DW$172	.dwtag  DW_TAG_loop_range
	.dwattr DW$172, DW_AT_low_pc(DW$L$__f_setnameext$17$B)
	.dwattr DW$172, DW_AT_high_pc(DW$L$__f_setnameext$17$E)
DW$173	.dwtag  DW_TAG_loop_range
	.dwattr DW$173, DW_AT_low_pc(DW$L$__f_setnameext$18$B)
	.dwattr DW$173, DW_AT_high_pc(DW$L$__f_setnameext$18$E)
DW$174	.dwtag  DW_TAG_loop_range
	.dwattr DW$174, DW_AT_low_pc(DW$L$__f_setnameext$19$B)
	.dwattr DW$174, DW_AT_high_pc(DW$L$__f_setnameext$19$E)
DW$175	.dwtag  DW_TAG_loop_range
	.dwattr DW$175, DW_AT_low_pc(DW$L$__f_setnameext$20$B)
	.dwattr DW$175, DW_AT_high_pc(DW$L$__f_setnameext$20$E)
DW$176	.dwtag  DW_TAG_loop_range
	.dwattr DW$176, DW_AT_low_pc(DW$L$__f_setnameext$21$B)
	.dwattr DW$176, DW_AT_high_pc(DW$L$__f_setnameext$21$E)
	.dwendtag DW$169


DW$177	.dwtag  DW_TAG_loop
	.dwattr DW$177, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L25:1:1471518973")
	.dwattr DW$177, DW_AT_begin_file("fat.c")
	.dwattr DW$177, DW_AT_begin_line(0xde)
	.dwattr DW$177, DW_AT_end_line(0xf0)
DW$178	.dwtag  DW_TAG_loop_range
	.dwattr DW$178, DW_AT_low_pc(DW$L$__f_setnameext$11$B)
	.dwattr DW$178, DW_AT_high_pc(DW$L$__f_setnameext$11$E)
DW$179	.dwtag  DW_TAG_loop_range
	.dwattr DW$179, DW_AT_low_pc(DW$L$__f_setnameext$12$B)
	.dwattr DW$179, DW_AT_high_pc(DW$L$__f_setnameext$12$E)
	.dwendtag DW$177


DW$180	.dwtag  DW_TAG_loop
	.dwattr DW$180, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L22:1:1471518973")
	.dwattr DW$180, DW_AT_begin_file("fat.c")
	.dwattr DW$180, DW_AT_begin_line(0xd1)
	.dwattr DW$180, DW_AT_end_line(0xd3)
DW$181	.dwtag  DW_TAG_loop_range
	.dwattr DW$181, DW_AT_low_pc(DW$L$__f_setnameext$3$B)
	.dwattr DW$181, DW_AT_high_pc(DW$L$__f_setnameext$3$E)
DW$182	.dwtag  DW_TAG_loop_range
	.dwattr DW$182, DW_AT_low_pc(DW$L$__f_setnameext$4$B)
	.dwattr DW$182, DW_AT_high_pc(DW$L$__f_setnameext$4$E)
DW$183	.dwtag  DW_TAG_loop_range
	.dwattr DW$183, DW_AT_low_pc(DW$L$__f_setnameext$5$B)
	.dwattr DW$183, DW_AT_high_pc(DW$L$__f_setnameext$5$E)
DW$184	.dwtag  DW_TAG_loop_range
	.dwattr DW$184, DW_AT_low_pc(DW$L$__f_setnameext$2$B)
	.dwattr DW$184, DW_AT_high_pc(DW$L$__f_setnameext$2$E)
	.dwendtag DW$180

	.dwattr DW$155, DW_AT_end_file("fat.c")
	.dwattr DW$155, DW_AT_end_line(0x103)
	.dwattr DW$155, DW_AT_end_column(0x01)
	.dwendtag DW$155

	.sect	".text"

DW$185	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_setfsname"), DW_AT_symbol_name("__f_setfsname")
	.dwattr DW$185, DW_AT_low_pc(__f_setfsname)
	.dwattr DW$185, DW_AT_high_pc(0x00)
	.dwattr DW$185, DW_AT_begin_file("fat.c")
	.dwattr DW$185, DW_AT_begin_line(0x117)
	.dwattr DW$185, DW_AT_begin_column(0x0c)
	.dwattr DW$185, DW_AT_frame_base[DW_OP_breg20 -36]
	.dwattr DW$185, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",279,70

;***************************************************************
;* FNAME: __f_setfsname                 FR SIZE:  34           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 26 Auto,  6 SOE     *
;***************************************************************

__f_setfsname:
;* AR4   assigned to _fm
DW$186	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$186, DW_AT_type(*DW$T$117)
	.dwattr DW$186, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _name
DW$187	.dwtag  DW_TAG_formal_parameter, DW_AT_name("name"), DW_AT_symbol_name("_name")
	.dwattr DW$187, DW_AT_type(*DW$T$146)
	.dwattr DW$187, DW_AT_location[DW_OP_reg14]
DW$188	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fsname"), DW_AT_symbol_name("_fsname")
	.dwattr DW$188, DW_AT_type(*DW$T$149)
	.dwattr DW$188, DW_AT_location[DW_OP_breg20 -38]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#28
        MOVL      *-SP[28],XAR4         ; |279| 
        MOVL      *-SP[26],XAR5         ; |279| 
        MOVL      XAR2,*-SP[38]         ; |279| 
        MOVL      XAR4,*-SP[26]         ; |285| 
        MOV       *-SP[23],#0           ; |281| 
        MOV       *-SP[22],#0           ; |285| 
        MOVB      XAR1,#0
        MOV       AL,*+XAR4[0]          ; |287| 
        BF        L58,EQ                ; |287| 
        ; branchcc occurs ; |287| 
        MOVL      XAR4,*-SP[26]
        MOV       AL,*+XAR4[1]          ; |289| 
        CMPB      AL,#58                ; |289| 
        BF        L40,NEQ               ; |289| 
        ; branchcc occurs ; |289| 
        MOVL      XAR4,*-SP[26]
        MOV       AL,*+XAR4[0]          ; |290| 
        CMPB      AL,#97                ; |290| 
        BF        L38,LT                ; |290| 
        ; branchcc occurs ; |290| 
        CMPB      AL,#122               ; |290| 
        BF        L38,GT                ; |290| 
        ; branchcc occurs ; |290| 
        MOVL      XAR4,*-SP[26]
        MOV       AL,*+XAR4[0]          ; |290| 
        ADDB      AL,#-32
        CMPB      AL,#65                ; |290| 
        BF        L39,GEQ               ; |290| 
        ; branchcc occurs ; |290| 
        BF        L58,UNC               ; |290| 
        ; branch occurs ; |290| 
L38:    
        MOVL      XAR4,*-SP[26]
        MOV       AL,*+XAR4[0]          ; |290| 
        CMPB      AL,#65                ; |290| 
        BF        L58,LT                ; |290| 
        ; branchcc occurs ; |290| 
L39:    
        CMPB      AL,#90                ; |291| 
        BF        L58,GT                ; |291| 
        ; branchcc occurs ; |291| 
        ADDB      AL,#-65
        MOVB      XAR4,#2               ; |293| 
        MOV       *+XAR2[0],AL          ; |292| 
        MOVL      ACC,*-SP[26]          ; |293| 
        ADDU      ACC,AR4               ; |293| 
        MOVL      *-SP[26],ACC          ; |293| 
        BF        L41,UNC               ; |294| 
        ; branch occurs ; |294| 
L40:    
        MOVL      XAR4,*-SP[28]
        LCR       #_fn_getdrive         ; |298| 
        ; call occurs [#_fn_getdrive] ; |298| 
        MOV       *+XAR2[0],AL          ; |298| 
L41:    
        MOVL      XAR4,*-SP[26]
        MOV       AL,*+XAR4[0]          ; |294| 
        CMPB      AL,#47                ; |294| 
        BF        L47,EQ                ; |294| 
        ; branchcc occurs ; |294| 
        MOVL      XAR4,*-SP[26]
        MOV       AL,*+XAR4[0]          ; |294| 
        CMPB      AL,#92                ; |294| 
        BF        L47,EQ                ; |294| 
        ; branchcc occurs ; |294| 
        MOVB      ACC,#1
        ADDL      ACC,XAR2
        MOVL      XAR4,*-SP[28]         ; |303| 
        MOVL      XAR3,ACC              ; |303| 
        MOVL      XAR5,ACC              ; |303| 
        MOV       AL,*+XAR2[0]          ; |303| 
        MOVB      AH,#20                ; |303| 
        LCR       #_fn_getdcwd          ; |303| 
        ; call occurs [#_fn_getdcwd] ; |303| 
        CMPB      AL,#0                 ; |303| 
        BF        L58,NEQ               ; |303| 
        ; branchcc occurs ; |303| 
        MOV       *-SP[23],#0           ; |304| 
        MOV       AL,*+XAR3[0]          ; |304| 
        BF        L47,EQ                ; |304| 
        ; branchcc occurs ; |304| 
L42:    
DW$L$__f_setfsname$15$B:
	.dwpsn	"fat.c",304,0
        INC       *-SP[23]              ; |304| 
        MOVZ      AR6,*-SP[23]          ; |304| 
        MOVL      ACC,XAR2              ; |304| 
        ADDU      ACC,AR6               ; |304| 
        MOVL      XAR4,ACC              ; |304| 
        MOV       AL,*+XAR4[1]          ; |304| 
        BF        L42,NEQ               ; |304| 
        ; branchcc occurs ; |304| 
DW$L$__f_setfsname$15$E:
        BF        L47,UNC
        ; branch occurs
L43:    
DW$L$__f_setfsname$17$B:
        MOVZ      AR6,*-SP[23]          ; |332| 
        MOVZ      AR5,SP                ; |332| 
        MOVL      ACC,XAR2              ; |332| 
        ADDU      ACC,AR6               ; |332| 
        MOVL      XAR4,ACC              ; |332| 
        SUBB      XAR5,#22              ; |332| 
        MOVZ      AR6,*+XAR5[AR0]       ; |332| 
        MOV       *+XAR4[1],AR6         ; |332| 
        ADDB      XAR0,#1               ; |330| 
        INC       *-SP[23]              ; |332| 
        MOV       AL,AR1                ; |330| 
        CMP       AL,AR0                ; |330| 
	.dwpsn	"fat.c",333,0
        BF        L57,HI                ; |330| 
        ; branchcc occurs ; |330| 
DW$L$__f_setfsname$17$E:
L44:    
DW$L$__f_setfsname$18$B:
        MOVB      XAR1,#0
        BF        L47,UNC               ; |335| 
        ; branch occurs ; |335| 
DW$L$__f_setfsname$18$E:
L45:    
DW$L$__f_setfsname$19$B:
        CMPB      AH,#32                ; |338| 
        BF        L46,NEQ               ; |338| 
        ; branchcc occurs ; |338| 
DW$L$__f_setfsname$19$E:
DW$L$__f_setfsname$20$B:
        MOV       AL,AR1
        BF        L47,EQ                ; |338| 
        ; branchcc occurs ; |338| 
DW$L$__f_setfsname$20$E:
L46:    
DW$L$__f_setfsname$21$B:
        MOV       AL,AR1
        CMPB      AL,#18                ; |340| 
        BF        L58,HIS               ; |340| 
        ; branchcc occurs ; |340| 
DW$L$__f_setfsname$21$E:
DW$L$__f_setfsname$22$B:
        MOVZ      AR4,SP                ; |341| 
        SUBB      XAR4,#22              ; |341| 
        MOV       *+XAR4[AR1],AH        ; |341| 
        ADDB      XAR1,#1               ; |341| 
DW$L$__f_setfsname$22$E:
L47:    
DW$L$__f_setfsname$23$B:
        MOVL      XAR4,*-SP[26]
        MOV       AH,*XAR4++            ; |309| 
        CMPB      AH,#97                ; |309| 
        MOVL      *-SP[26],XAR4         ; |309| 
        BF        L48,LT                ; |309| 
        ; branchcc occurs ; |309| 
DW$L$__f_setfsname$23$E:
DW$L$__f_setfsname$24$B:
        CMPB      AH,#122               ; |309| 
        BF        L48,GT                ; |309| 
        ; branchcc occurs ; |309| 
DW$L$__f_setfsname$24$E:
DW$L$__f_setfsname$25$B:
        ADDB      AH,#-32
DW$L$__f_setfsname$25$E:
L48:    
DW$L$__f_setfsname$26$B:
        CMPB      AH,#0                 ; |312| 
        BF        L52,NEQ               ; |312| 
        ; branchcc occurs ; |312| 
DW$L$__f_setfsname$26$E:
        MOVZ      AR4,SP                ; |344| 
        SUBB      XAR4,#22              ; |344| 
        MOV       *+XAR4[AR1],#0        ; |344| 
        MOVZ      AR6,*-SP[23]          ; |345| 
        MOVL      ACC,XAR2              ; |345| 
        ADDU      ACC,AR6               ; |345| 
        MOVL      XAR4,ACC              ; |345| 
        MOV       AL,AR1                ; |345| 
        MOV       *+XAR4[1],#0          ; |345| 
        BF        L50,EQ                ; |347| 
        ; branchcc occurs ; |347| 
L49:    
DW$L$__f_setfsname$28$B:
	.dwpsn	"fat.c",347,0
        MOVZ      AR4,SP                ; |348| 
        ADDB      AL,#-1
        MOVZ      AR6,AL                ; |348| 
        SUBB      XAR4,#22              ; |348| 
        MOVL      ACC,XAR4              ; |348| 
        ADDU      ACC,AR6               ; |348| 
        MOVL      XAR4,ACC              ; |348| 
        MOV       AL,*+XAR4[0]          ; |348| 
        CMPB      AL,#32                ; |348| 
        BF        L50,NEQ               ; |348| 
        ; branchcc occurs ; |348| 
DW$L$__f_setfsname$28$E:
DW$L$__f_setfsname$29$B:
        SUBB      XAR1,#1               ; |350| 
        MOV       *+XAR4[0],#0          ; |349| 
        MOV       AL,AR1                ; |350| 
	.dwpsn	"fat.c",351,0
        BF        L49,NEQ               ; |350| 
        ; branchcc occurs ; |350| 
DW$L$__f_setfsname$29$E:
L50:    
        MOVB      ACC,#21
        MOVZ      AR4,SP                ; |353| 
        ADDL      ACC,XAR2
        MOVL      XAR5,ACC              ; |353| 
        MOVB      ACC,#29
        SUBB      XAR4,#22              ; |353| 
        ADDL      ACC,XAR2
        MOVL      *-SP[2],ACC           ; |353| 
        LCR       #__f_setnameext       ; |353| 
        ; call occurs [#__f_setnameext] ; |353| 
        CMPB      AL,#0                 ; |353| 
        BF        L51,NEQ               ; |353| 
        ; branchcc occurs ; |353| 
        MOVB      AL,#2                 ; |353| 
        BF        L59,UNC               ; |353| 
        ; branch occurs ; |353| 
L51:    
        MOV       AL,*+XAR5[0]          ; |355| 
        CMPB      AL,#32                ; |355| 
        BF        L58,EQ                ; |355| 
        ; branchcc occurs ; |355| 
        MOVB      AL,#0
        BF        L59,UNC               ; |357| 
        ; branch occurs ; |357| 
L52:    
DW$L$__f_setfsname$34$B:
        CMPB      AH,#58                ; |314| 
        BF        L58,EQ                ; |314| 
        ; branchcc occurs ; |314| 
DW$L$__f_setfsname$34$E:
DW$L$__f_setfsname$35$B:
        CMPB      AH,#47                ; |316| 
        BF        L53,EQ                ; |316| 
        ; branchcc occurs ; |316| 
DW$L$__f_setfsname$35$E:
DW$L$__f_setfsname$36$B:
        CMPB      AH,#92                ; |316| 
        BF        L45,NEQ               ; |316| 
        ; branchcc occurs ; |316| 
DW$L$__f_setfsname$36$E:
L53:    
DW$L$__f_setfsname$37$B:
        MOV       AL,*-SP[23]
        BF        L54,EQ                ; |317| 
        ; branchcc occurs ; |317| 
DW$L$__f_setfsname$37$E:
DW$L$__f_setfsname$38$B:
        MOVB      ACC,#1
        ADDL      ACC,XAR2
        MOVL      XAR4,ACC              ; |318| 
        MOV       AL,*-SP[23]           ; |318| 
        ADDB      AL,#-1
        MOVZ      AR0,AL                ; |318| 
        MOV       AL,*+XAR4[AR0]        ; |318| 
        CMPB      AL,#47                ; |318| 
        BF        L58,EQ                ; |318| 
        ; branchcc occurs ; |318| 
DW$L$__f_setfsname$38$E:
DW$L$__f_setfsname$39$B:
        CMPB      AL,#92                ; |318| 
        BF        L58,EQ                ; |318| 
        ; branchcc occurs ; |318| 
DW$L$__f_setfsname$39$E:
DW$L$__f_setfsname$40$B:
        MOV       AL,*-SP[23]
        CMPB      AL,#18                ; |318| 
        BF        L58,HIS               ; |318| 
        ; branchcc occurs ; |318| 
DW$L$__f_setfsname$40$E:
DW$L$__f_setfsname$41$B:
        MOVZ      AR0,*-SP[23]          ; |322| 
        MOV       *+XAR4[AR0],#47       ; |322| 
        INC       *-SP[23]              ; |322| 
DW$L$__f_setfsname$41$E:
L54:    
DW$L$__f_setfsname$42$B:
        MOV       AL,AR1
        BF        L56,EQ                ; |325| 
        ; branchcc occurs ; |325| 
DW$L$__f_setfsname$42$E:
L55:    
DW$L$__f_setfsname$43$B:
	.dwpsn	"fat.c",325,0
        MOVZ      AR4,SP                ; |326| 
        ADDB      AL,#-1
        MOVZ      AR0,AL                ; |326| 
        SUBB      XAR4,#22              ; |326| 
        MOV       AL,*+XAR4[AR0]        ; |326| 
        CMPB      AL,#32                ; |326| 
        BF        L56,NEQ               ; |326| 
        ; branchcc occurs ; |326| 
DW$L$__f_setfsname$43$E:
DW$L$__f_setfsname$44$B:
        SUBB      XAR1,#1               ; |327| 
        MOV       AL,AR1                ; |327| 
	.dwpsn	"fat.c",328,0
        BF        L55,NEQ               ; |327| 
        ; branchcc occurs ; |327| 
DW$L$__f_setfsname$44$E:
L56:    
DW$L$__f_setfsname$45$B:
        MOV       AL,AR1                ; |330| 
        MOVB      XAR0,#0
        BF        L44,EQ                ; |330| 
        ; branchcc occurs ; |330| 
DW$L$__f_setfsname$45$E:
L57:    
DW$L$__f_setfsname$46$B:
	.dwpsn	"fat.c",330,0
        MOV       AL,*-SP[23]
        CMPB      AL,#18                ; |331| 
        BF        L43,LO                ; |331| 
        ; branchcc occurs ; |331| 
DW$L$__f_setfsname$46$E:
L58:    
        MOVB      AL,#1                 ; |331| 
L59:    
        SUBB      SP,#28                ; |331| 
        MOVL      XAR3,*--SP            ; |331| 
        MOVL      XAR2,*--SP            ; |331| 
        MOVL      XAR1,*--SP            ; |331| 
	.dwpsn	"fat.c",358,1
        LRETR
        ; return occurs

DW$189	.dwtag  DW_TAG_loop
	.dwattr DW$189, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L49:1:1471518973")
	.dwattr DW$189, DW_AT_begin_file("fat.c")
	.dwattr DW$189, DW_AT_begin_line(0x15b)
	.dwattr DW$189, DW_AT_end_line(0x15f)
DW$190	.dwtag  DW_TAG_loop_range
	.dwattr DW$190, DW_AT_low_pc(DW$L$__f_setfsname$28$B)
	.dwattr DW$190, DW_AT_high_pc(DW$L$__f_setfsname$28$E)
DW$191	.dwtag  DW_TAG_loop_range
	.dwattr DW$191, DW_AT_low_pc(DW$L$__f_setfsname$29$B)
	.dwattr DW$191, DW_AT_high_pc(DW$L$__f_setfsname$29$E)
	.dwendtag DW$189


DW$192	.dwtag  DW_TAG_loop
	.dwattr DW$192, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L47:1:1471518973")
	.dwattr DW$192, DW_AT_begin_file("fat.c")
	.dwattr DW$192, DW_AT_begin_line(0x135)
	.dwattr DW$192, DW_AT_end_line(0x155)
DW$193	.dwtag  DW_TAG_loop_range
	.dwattr DW$193, DW_AT_low_pc(DW$L$__f_setfsname$23$B)
	.dwattr DW$193, DW_AT_high_pc(DW$L$__f_setfsname$23$E)
DW$194	.dwtag  DW_TAG_loop_range
	.dwattr DW$194, DW_AT_low_pc(DW$L$__f_setfsname$21$B)
	.dwattr DW$194, DW_AT_high_pc(DW$L$__f_setfsname$21$E)
DW$195	.dwtag  DW_TAG_loop_range
	.dwattr DW$195, DW_AT_low_pc(DW$L$__f_setfsname$19$B)
	.dwattr DW$195, DW_AT_high_pc(DW$L$__f_setfsname$19$E)
DW$196	.dwtag  DW_TAG_loop_range
	.dwattr DW$196, DW_AT_low_pc(DW$L$__f_setfsname$38$B)
	.dwattr DW$196, DW_AT_high_pc(DW$L$__f_setfsname$38$E)
DW$197	.dwtag  DW_TAG_loop_range
	.dwattr DW$197, DW_AT_low_pc(DW$L$__f_setfsname$39$B)
	.dwattr DW$197, DW_AT_high_pc(DW$L$__f_setfsname$39$E)
DW$198	.dwtag  DW_TAG_loop_range
	.dwattr DW$198, DW_AT_low_pc(DW$L$__f_setfsname$40$B)
	.dwattr DW$198, DW_AT_high_pc(DW$L$__f_setfsname$40$E)
DW$199	.dwtag  DW_TAG_loop_range
	.dwattr DW$199, DW_AT_low_pc(DW$L$__f_setfsname$24$B)
	.dwattr DW$199, DW_AT_high_pc(DW$L$__f_setfsname$24$E)
DW$200	.dwtag  DW_TAG_loop_range
	.dwattr DW$200, DW_AT_low_pc(DW$L$__f_setfsname$25$B)
	.dwattr DW$200, DW_AT_high_pc(DW$L$__f_setfsname$25$E)
DW$201	.dwtag  DW_TAG_loop_range
	.dwattr DW$201, DW_AT_low_pc(DW$L$__f_setfsname$26$B)
	.dwattr DW$201, DW_AT_high_pc(DW$L$__f_setfsname$26$E)
DW$202	.dwtag  DW_TAG_loop_range
	.dwattr DW$202, DW_AT_low_pc(DW$L$__f_setfsname$34$B)
	.dwattr DW$202, DW_AT_high_pc(DW$L$__f_setfsname$34$E)
DW$203	.dwtag  DW_TAG_loop_range
	.dwattr DW$203, DW_AT_low_pc(DW$L$__f_setfsname$35$B)
	.dwattr DW$203, DW_AT_high_pc(DW$L$__f_setfsname$35$E)
DW$204	.dwtag  DW_TAG_loop_range
	.dwattr DW$204, DW_AT_low_pc(DW$L$__f_setfsname$36$B)
	.dwattr DW$204, DW_AT_high_pc(DW$L$__f_setfsname$36$E)
DW$205	.dwtag  DW_TAG_loop_range
	.dwattr DW$205, DW_AT_low_pc(DW$L$__f_setfsname$37$B)
	.dwattr DW$205, DW_AT_high_pc(DW$L$__f_setfsname$37$E)
DW$206	.dwtag  DW_TAG_loop_range
	.dwattr DW$206, DW_AT_low_pc(DW$L$__f_setfsname$41$B)
	.dwattr DW$206, DW_AT_high_pc(DW$L$__f_setfsname$41$E)
DW$207	.dwtag  DW_TAG_loop_range
	.dwattr DW$207, DW_AT_low_pc(DW$L$__f_setfsname$42$B)
	.dwattr DW$207, DW_AT_high_pc(DW$L$__f_setfsname$42$E)
DW$208	.dwtag  DW_TAG_loop_range
	.dwattr DW$208, DW_AT_low_pc(DW$L$__f_setfsname$45$B)
	.dwattr DW$208, DW_AT_high_pc(DW$L$__f_setfsname$45$E)
DW$209	.dwtag  DW_TAG_loop_range
	.dwattr DW$209, DW_AT_low_pc(DW$L$__f_setfsname$22$B)
	.dwattr DW$209, DW_AT_high_pc(DW$L$__f_setfsname$22$E)
DW$210	.dwtag  DW_TAG_loop_range
	.dwattr DW$210, DW_AT_low_pc(DW$L$__f_setfsname$20$B)
	.dwattr DW$210, DW_AT_high_pc(DW$L$__f_setfsname$20$E)
DW$211	.dwtag  DW_TAG_loop_range
	.dwattr DW$211, DW_AT_low_pc(DW$L$__f_setfsname$18$B)
	.dwattr DW$211, DW_AT_high_pc(DW$L$__f_setfsname$18$E)

DW$212	.dwtag  DW_TAG_loop
	.dwattr DW$212, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L55:2:1471518973")
	.dwattr DW$212, DW_AT_begin_file("fat.c")
	.dwattr DW$212, DW_AT_begin_line(0x145)
	.dwattr DW$212, DW_AT_end_line(0x148)
DW$213	.dwtag  DW_TAG_loop_range
	.dwattr DW$213, DW_AT_low_pc(DW$L$__f_setfsname$43$B)
	.dwattr DW$213, DW_AT_high_pc(DW$L$__f_setfsname$43$E)
DW$214	.dwtag  DW_TAG_loop_range
	.dwattr DW$214, DW_AT_low_pc(DW$L$__f_setfsname$44$B)
	.dwattr DW$214, DW_AT_high_pc(DW$L$__f_setfsname$44$E)
	.dwendtag DW$212


DW$215	.dwtag  DW_TAG_loop
	.dwattr DW$215, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L57:2:1471518973")
	.dwattr DW$215, DW_AT_begin_file("fat.c")
	.dwattr DW$215, DW_AT_begin_line(0x14a)
	.dwattr DW$215, DW_AT_end_line(0x14d)
DW$216	.dwtag  DW_TAG_loop_range
	.dwattr DW$216, DW_AT_low_pc(DW$L$__f_setfsname$46$B)
	.dwattr DW$216, DW_AT_high_pc(DW$L$__f_setfsname$46$E)
DW$217	.dwtag  DW_TAG_loop_range
	.dwattr DW$217, DW_AT_low_pc(DW$L$__f_setfsname$17$B)
	.dwattr DW$217, DW_AT_high_pc(DW$L$__f_setfsname$17$E)
	.dwendtag DW$215

	.dwendtag DW$192


DW$218	.dwtag  DW_TAG_loop
	.dwattr DW$218, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L42:1:1471518973")
	.dwattr DW$218, DW_AT_begin_file("fat.c")
	.dwattr DW$218, DW_AT_begin_line(0x130)
	.dwattr DW$218, DW_AT_end_line(0x130)
DW$219	.dwtag  DW_TAG_loop_range
	.dwattr DW$219, DW_AT_low_pc(DW$L$__f_setfsname$15$B)
	.dwattr DW$219, DW_AT_high_pc(DW$L$__f_setfsname$15$E)
	.dwendtag DW$218

	.dwattr DW$185, DW_AT_end_file("fat.c")
	.dwattr DW$185, DW_AT_end_line(0x166)
	.dwattr DW$185, DW_AT_end_column(0x01)
	.dwendtag DW$185

	.sect	".text"

DW$220	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_findfile"), DW_AT_symbol_name("__f_findfile")
	.dwattr DW$220, DW_AT_low_pc(__f_findfile)
	.dwattr DW$220, DW_AT_high_pc(0x00)
	.dwattr DW$220, DW_AT_begin_file("fat.c")
	.dwattr DW$220, DW_AT_begin_line(0x17e)
	.dwattr DW$220, DW_AT_begin_column(0x0c)
	.dwattr DW$220, DW_AT_frame_base[DW_OP_breg20 -18]
	.dwattr DW$220, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",382,88

;***************************************************************
;* FNAME: __f_findfile                  FR SIZE:  16           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 10 Auto,  6 SOE     *
;***************************************************************

__f_findfile:
;* AR4   assigned to _vi
DW$221	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$221, DW_AT_type(*DW$T$89)
	.dwattr DW$221, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _name
DW$222	.dwtag  DW_TAG_formal_parameter, DW_AT_name("name"), DW_AT_symbol_name("_name")
	.dwattr DW$222, DW_AT_type(*DW$T$59)
	.dwattr DW$222, DW_AT_location[DW_OP_reg14]
DW$223	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ext"), DW_AT_symbol_name("_ext")
	.dwattr DW$223, DW_AT_type(*DW$T$59)
	.dwattr DW$223, DW_AT_location[DW_OP_breg20 -20]
DW$224	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pos"), DW_AT_symbol_name("_pos")
	.dwattr DW$224, DW_AT_type(*DW$T$66)
	.dwattr DW$224, DW_AT_location[DW_OP_breg20 -22]
DW$225	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pde"), DW_AT_symbol_name("_pde")
	.dwattr DW$225, DW_AT_type(*DW$T$152)
	.dwattr DW$225, DW_AT_location[DW_OP_breg20 -24]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#10
        MOVL      ACC,*-SP[24]          ; |382| 
        MOVL      *-SP[8],ACC           ; |382| 
        MOVL      *-SP[4],XAR5          ; |382| 
        MOV       AL,#65520
        MOVL      XAR3,*-SP[22]         ; |382| 
        MOVL      *-SP[6],XAR4          ; |382| 
        MOV       AH,#4095
        MOVL      XAR2,*-SP[20]         ; |382| 
        CMPL      ACC,*+XAR3[0]         ; |384| 
        BF        L70,LOS               ; |384| 
        ; branchcc occurs ; |384| 
L60:    
DW$L$__f_findfile$2$B:
	.dwpsn	"fat.c",384,0
        MOVB      XAR0,#8               ; |386| 
        MOVL      ACC,*+XAR3[AR0]       ; |386| 
        CMPL      ACC,*+XAR3[6]         ; |386| 
        BF        L68,LOS               ; |386| 
        ; branchcc occurs ; |386| 
DW$L$__f_findfile$2$E:
L61:    
DW$L$__f_findfile$3$B:
	.dwpsn	"fat.c",386,0
        MOVB      XAR0,#10              ; |387| 
        MOVL      P,*-SP[6]             ; |387| 
        MOVL      ACC,*+XAR3[AR0]       ; |387| 
        MOVL      XAR4,#602             ; |387| 
        LSL       ACC,5                 ; |387| 
        ADDL      P,ACC
        ADDUL     P,XAR4
        MOVL      XAR4,*-SP[6]          ; |389| 
        MOVL      *-SP[10],P            ; |387| 
        MOVL      ACC,*+XAR3[6]         ; |389| 
        LCR       #__f_getdirsector     ; |389| 
        ; call occurs [#__f_getdirsector] ; |389| 
        CMPB      AL,#0                 ; |389| 
        BF        L70,NEQ               ; |389| 
        ; branchcc occurs ; |389| 
DW$L$__f_findfile$3$E:
DW$L$__f_findfile$4$B:
        MOVB      ACC,#16
        MOVB      XAR0,#10              ; |391| 
        CMPL      ACC,*+XAR3[AR0]       ; |391| 
        BF        L67,LOS               ; |391| 
        ; branchcc occurs ; |391| 
DW$L$__f_findfile$4$E:
L62:    
DW$L$__f_findfile$5$B:
	.dwpsn	"fat.c",391,0
        MOVL      XAR4,*-SP[10]
        MOV       AL,*+XAR4[0]          ; |394| 
        BF        L66,EQ                ; |394| 
        ; branchcc occurs ; |394| 
DW$L$__f_findfile$5$E:
DW$L$__f_findfile$6$B:
        CMPB      AL,#229               ; |394| 
        BF        L66,EQ                ; |394| 
        ; branchcc occurs ; |394| 
DW$L$__f_findfile$6$E:
DW$L$__f_findfile$7$B:
        MOVL      XAR4,*-SP[10]         ; |394| 
        MOVB      XAR0,#11              ; |394| 
        TBIT      *+XAR4[AR0],#3        ; |394| 
        BF        L66,TC                ; |394| 
        ; branchcc occurs ; |394| 
DW$L$__f_findfile$7$E:
DW$L$__f_findfile$8$B:
	.dwpsn	"fat.c",398,0
        MOVB      XAR0,#0
DW$L$__f_findfile$8$E:
L63:    
DW$L$__f_findfile$9$B:
        MOVL      XAR4,*-SP[4]
        MOV       AL,*+XAR4[AR0]        ; |399| 
        MOVL      XAR4,*-SP[10]         ; |399| 
        CMP       AL,*+XAR4[AR0]        ; |399| 
        BF        L66,NEQ               ; |399| 
        ; branchcc occurs ; |399| 
DW$L$__f_findfile$9$E:
DW$L$__f_findfile$10$B:
        ADDB      XAR0,#1               ; |398| 
        MOV       AL,AR0                ; |398| 
        CMPB      AL,#8                 ; |398| 
	.dwpsn	"fat.c",403,0
        BF        L63,LO                ; |398| 
        ; branchcc occurs ; |398| 
DW$L$__f_findfile$10$E:
DW$L$__f_findfile$11$B:
        MOVB      AL,#1                 ; |398| 
        BF        L66,EQ                ; |405| 
        ; branchcc occurs ; |405| 
DW$L$__f_findfile$11$E:
DW$L$__f_findfile$12$B:
        MOVB      XAR0,#0
	.dwpsn	"fat.c",407,0
        MOVB      XAR1,#8               ; |408| 
DW$L$__f_findfile$12$E:
L64:    
DW$L$__f_findfile$13$B:
        MOVL      ACC,*-SP[10]          ; |408| 
        ADDU      ACC,AR0               ; |408| 
        MOVL      XAR4,ACC              ; |408| 
        MOV       AL,*+XAR2[AR0]        ; |408| 
        CMP       AL,*+XAR4[AR1]        ; |408| 
        BF        L66,NEQ               ; |408| 
        ; branchcc occurs ; |408| 
DW$L$__f_findfile$13$E:
DW$L$__f_findfile$14$B:
        ADDB      XAR0,#1               ; |407| 
        MOV       AL,AR0                ; |407| 
        CMPB      AL,#3                 ; |407| 
	.dwpsn	"fat.c",412,0
        BF        L64,LO                ; |407| 
        ; branchcc occurs ; |407| 
DW$L$__f_findfile$14$E:
DW$L$__f_findfile$15$B:
        MOVB      AL,#1                 ; |398| 
        BF        L66,EQ                ; |414| 
        ; branchcc occurs ; |414| 
DW$L$__f_findfile$15$E:
        MOVL      ACC,*-SP[8]
        BF        L65,EQ                ; |415| 
        ; branchcc occurs ; |415| 
        MOVL      XAR4,*-SP[8]
        MOVL      ACC,*-SP[10]
        MOVL      *+XAR4[0],ACC         ; |415| 
L65:    
        MOVB      AL,#1                 ; |416| 
        BF        L71,UNC               ; |416| 
        ; branch occurs ; |416| 
L66:    
DW$L$__f_findfile$19$B:
        MOVL      ACC,*-SP[10]          ; |391| 
        MOVB      XAR4,#32              ; |391| 
        ADDU      ACC,AR4               ; |391| 
        MOVL      *-SP[10],ACC          ; |391| 
        MOVB      ACC,#10
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |391| 
        MOVB      XAR0,#10              ; |391| 
        MOVB      ACC,#1
        ADDL      *+XAR4[0],ACC         ; |391| 
        MOVB      ACC,#16
        CMPL      ACC,*+XAR3[AR0]       ; |391| 
	.dwpsn	"fat.c",418,0
        BF        L62,HI                ; |391| 
        ; branchcc occurs ; |391| 
DW$L$__f_findfile$19$E:
L67:    
DW$L$__f_findfile$20$B:
        MOVB      ACC,#0
        MOVL      *+XAR3[AR0],ACC       ; |420| 
        MOVB      ACC,#1
        MOVB      XAR0,#8               ; |386| 
        ADDL      *+XAR3[6],ACC         ; |386| 
        MOVL      ACC,*+XAR3[AR0]       ; |386| 
        CMPL      ACC,*+XAR3[6]         ; |386| 
	.dwpsn	"fat.c",421,0
        BF        L61,HI                ; |386| 
        ; branchcc occurs ; |386| 
DW$L$__f_findfile$20$E:
L68:    
DW$L$__f_findfile$21$B:
        MOVL      ACC,*+XAR3[0]         ; |423| 
        BF        L69,NEQ               ; |423| 
        ; branchcc occurs ; |423| 
DW$L$__f_findfile$21$E:
DW$L$__f_findfile$22$B:
        MOVL      XAR0,#1136            ; |424| 
        MOVL      XAR4,*-SP[6]          ; |424| 
        MOVB      ACC,#3
        CMPL      ACC,*+XAR4[AR0]       ; |424| 
        BF        L70,NEQ               ; |424| 
        ; branchcc occurs ; |424| 
DW$L$__f_findfile$22$E:
DW$L$__f_findfile$23$B:
        MOVL      XAR4,*-SP[6]          ; |425| 
        MOVB      XAR0,#32              ; |425| 
        MOVL      ACC,*+XAR4[AR0]       ; |425| 
        MOVL      *+XAR3[0],ACC         ; |425| 
DW$L$__f_findfile$23$E:
L69:    
DW$L$__f_findfile$24$B:
        MOVZ      AR5,SP                ; |432| 
        MOVL      XAR4,*-SP[6]          ; |432| 
        MOVL      ACC,*+XAR3[0]         ; |432| 
        SUBB      XAR5,#2               ; |432| 
        LCR       #__f_getclustervalue  ; |432| 
        ; call occurs [#__f_getclustervalue] ; |432| 
        CMPB      AL,#0                 ; |432| 
        BF        L70,NEQ               ; |432| 
        ; branchcc occurs ; |432| 
DW$L$__f_findfile$24$E:
DW$L$__f_findfile$25$B:
        MOVB      ACC,#2
        CMPL      ACC,*-SP[2]           ; |432| 
        BF        L70,HI                ; |432| 
        ; branchcc occurs ; |432| 
DW$L$__f_findfile$25$E:
DW$L$__f_findfile$26$B:
        MOV       AL,#65520
        MOV       AH,#4095
        CMPL      ACC,*-SP[2]           ; |432| 
        BF        L70,LOS               ; |432| 
        ; branchcc occurs ; |432| 
DW$L$__f_findfile$26$E:
DW$L$__f_findfile$27$B:
        MOVL      XAR4,*-SP[6]
        MOVL      XAR5,XAR3             ; |436| 
        MOVL      ACC,*-SP[2]           ; |436| 
        LCR       #__f_clustertopos     ; |436| 
        ; call occurs [#__f_clustertopos] ; |436| 
        MOV       AL,#65520
        MOV       AH,#4095
        CMPL      ACC,*+XAR3[0]         ; |436| 
	.dwpsn	"fat.c",439,0
        BF        L60,HI                ; |436| 
        ; branchcc occurs ; |436| 
DW$L$__f_findfile$27$E:
L70:    
        MOVB      AL,#0
L71:    
        SUBB      SP,#10                ; |441| 
        MOVL      XAR3,*--SP            ; |441| 
        MOVL      XAR2,*--SP            ; |441| 
        MOVL      XAR1,*--SP            ; |441| 
	.dwpsn	"fat.c",442,1
        LRETR
        ; return occurs

DW$226	.dwtag  DW_TAG_loop
	.dwattr DW$226, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L60:1:1471518973")
	.dwattr DW$226, DW_AT_begin_file("fat.c")
	.dwattr DW$226, DW_AT_begin_line(0x180)
	.dwattr DW$226, DW_AT_end_line(0x1b7)
DW$227	.dwtag  DW_TAG_loop_range
	.dwattr DW$227, DW_AT_low_pc(DW$L$__f_findfile$2$B)
	.dwattr DW$227, DW_AT_high_pc(DW$L$__f_findfile$2$E)
DW$228	.dwtag  DW_TAG_loop_range
	.dwattr DW$228, DW_AT_low_pc(DW$L$__f_findfile$22$B)
	.dwattr DW$228, DW_AT_high_pc(DW$L$__f_findfile$22$E)
DW$229	.dwtag  DW_TAG_loop_range
	.dwattr DW$229, DW_AT_low_pc(DW$L$__f_findfile$21$B)
	.dwattr DW$229, DW_AT_high_pc(DW$L$__f_findfile$21$E)
DW$230	.dwtag  DW_TAG_loop_range
	.dwattr DW$230, DW_AT_low_pc(DW$L$__f_findfile$23$B)
	.dwattr DW$230, DW_AT_high_pc(DW$L$__f_findfile$23$E)
DW$231	.dwtag  DW_TAG_loop_range
	.dwattr DW$231, DW_AT_low_pc(DW$L$__f_findfile$24$B)
	.dwattr DW$231, DW_AT_high_pc(DW$L$__f_findfile$24$E)
DW$232	.dwtag  DW_TAG_loop_range
	.dwattr DW$232, DW_AT_low_pc(DW$L$__f_findfile$25$B)
	.dwattr DW$232, DW_AT_high_pc(DW$L$__f_findfile$25$E)
DW$233	.dwtag  DW_TAG_loop_range
	.dwattr DW$233, DW_AT_low_pc(DW$L$__f_findfile$26$B)
	.dwattr DW$233, DW_AT_high_pc(DW$L$__f_findfile$26$E)
DW$234	.dwtag  DW_TAG_loop_range
	.dwattr DW$234, DW_AT_low_pc(DW$L$__f_findfile$27$B)
	.dwattr DW$234, DW_AT_high_pc(DW$L$__f_findfile$27$E)

DW$235	.dwtag  DW_TAG_loop
	.dwattr DW$235, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L61:2:1471518973")
	.dwattr DW$235, DW_AT_begin_file("fat.c")
	.dwattr DW$235, DW_AT_begin_line(0x182)
	.dwattr DW$235, DW_AT_end_line(0x1a5)
DW$236	.dwtag  DW_TAG_loop_range
	.dwattr DW$236, DW_AT_low_pc(DW$L$__f_findfile$3$B)
	.dwattr DW$236, DW_AT_high_pc(DW$L$__f_findfile$3$E)
DW$237	.dwtag  DW_TAG_loop_range
	.dwattr DW$237, DW_AT_low_pc(DW$L$__f_findfile$4$B)
	.dwattr DW$237, DW_AT_high_pc(DW$L$__f_findfile$4$E)
DW$238	.dwtag  DW_TAG_loop_range
	.dwattr DW$238, DW_AT_low_pc(DW$L$__f_findfile$20$B)
	.dwattr DW$238, DW_AT_high_pc(DW$L$__f_findfile$20$E)

DW$239	.dwtag  DW_TAG_loop
	.dwattr DW$239, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L62:3:1471518973")
	.dwattr DW$239, DW_AT_begin_file("fat.c")
	.dwattr DW$239, DW_AT_begin_line(0x187)
	.dwattr DW$239, DW_AT_end_line(0x1a2)
DW$240	.dwtag  DW_TAG_loop_range
	.dwattr DW$240, DW_AT_low_pc(DW$L$__f_findfile$5$B)
	.dwattr DW$240, DW_AT_high_pc(DW$L$__f_findfile$5$E)
DW$241	.dwtag  DW_TAG_loop_range
	.dwattr DW$241, DW_AT_low_pc(DW$L$__f_findfile$12$B)
	.dwattr DW$241, DW_AT_high_pc(DW$L$__f_findfile$12$E)
DW$242	.dwtag  DW_TAG_loop_range
	.dwattr DW$242, DW_AT_low_pc(DW$L$__f_findfile$8$B)
	.dwattr DW$242, DW_AT_high_pc(DW$L$__f_findfile$8$E)
DW$243	.dwtag  DW_TAG_loop_range
	.dwattr DW$243, DW_AT_low_pc(DW$L$__f_findfile$6$B)
	.dwattr DW$243, DW_AT_high_pc(DW$L$__f_findfile$6$E)
DW$244	.dwtag  DW_TAG_loop_range
	.dwattr DW$244, DW_AT_low_pc(DW$L$__f_findfile$7$B)
	.dwattr DW$244, DW_AT_high_pc(DW$L$__f_findfile$7$E)
DW$245	.dwtag  DW_TAG_loop_range
	.dwattr DW$245, DW_AT_low_pc(DW$L$__f_findfile$11$B)
	.dwattr DW$245, DW_AT_high_pc(DW$L$__f_findfile$11$E)
DW$246	.dwtag  DW_TAG_loop_range
	.dwattr DW$246, DW_AT_low_pc(DW$L$__f_findfile$15$B)
	.dwattr DW$246, DW_AT_high_pc(DW$L$__f_findfile$15$E)
DW$247	.dwtag  DW_TAG_loop_range
	.dwattr DW$247, DW_AT_low_pc(DW$L$__f_findfile$19$B)
	.dwattr DW$247, DW_AT_high_pc(DW$L$__f_findfile$19$E)

DW$248	.dwtag  DW_TAG_loop
	.dwattr DW$248, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L63:4:1471518973")
	.dwattr DW$248, DW_AT_begin_file("fat.c")
	.dwattr DW$248, DW_AT_begin_line(0x18e)
	.dwattr DW$248, DW_AT_end_line(0x193)
DW$249	.dwtag  DW_TAG_loop_range
	.dwattr DW$249, DW_AT_low_pc(DW$L$__f_findfile$9$B)
	.dwattr DW$249, DW_AT_high_pc(DW$L$__f_findfile$9$E)
DW$250	.dwtag  DW_TAG_loop_range
	.dwattr DW$250, DW_AT_low_pc(DW$L$__f_findfile$10$B)
	.dwattr DW$250, DW_AT_high_pc(DW$L$__f_findfile$10$E)
	.dwendtag DW$248


DW$251	.dwtag  DW_TAG_loop
	.dwattr DW$251, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L64:4:1471518973")
	.dwattr DW$251, DW_AT_begin_file("fat.c")
	.dwattr DW$251, DW_AT_begin_line(0x197)
	.dwattr DW$251, DW_AT_end_line(0x19c)
DW$252	.dwtag  DW_TAG_loop_range
	.dwattr DW$252, DW_AT_low_pc(DW$L$__f_findfile$13$B)
	.dwattr DW$252, DW_AT_high_pc(DW$L$__f_findfile$13$E)
DW$253	.dwtag  DW_TAG_loop_range
	.dwattr DW$253, DW_AT_low_pc(DW$L$__f_findfile$14$B)
	.dwattr DW$253, DW_AT_high_pc(DW$L$__f_findfile$14$E)
	.dwendtag DW$251

	.dwendtag DW$239

	.dwendtag DW$235

	.dwendtag DW$226

	.dwattr DW$220, DW_AT_end_file("fat.c")
	.dwattr DW$220, DW_AT_end_line(0x1ba)
	.dwattr DW$220, DW_AT_end_column(0x01)
	.dwendtag DW$220

	.sect	".text"
	.global	__f_cmp_wname

DW$254	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_cmp_wname"), DW_AT_symbol_name("__f_cmp_wname")
	.dwattr DW$254, DW_AT_low_pc(__f_cmp_wname)
	.dwattr DW$254, DW_AT_high_pc(0x00)
	.dwattr DW$254, DW_AT_begin_file("fat.c")
	.dwattr DW$254, DW_AT_begin_line(0x1cf)
	.dwattr DW$254, DW_AT_begin_column(0x05)
	.dwattr DW$254, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$254, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",464,1

;***************************************************************
;* FNAME: __f_cmp_wname                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

__f_cmp_wname:
;* AR4   assigned to _wname
DW$255	.dwtag  DW_TAG_formal_parameter, DW_AT_name("wname"), DW_AT_symbol_name("_wname")
	.dwattr DW$255, DW_AT_type(*DW$T$146)
	.dwattr DW$255, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _name
DW$256	.dwtag  DW_TAG_formal_parameter, DW_AT_name("name"), DW_AT_symbol_name("_name")
	.dwattr DW$256, DW_AT_type(*DW$T$146)
	.dwattr DW$256, DW_AT_location[DW_OP_reg14]
        MOVB      XAR0,#0
        MOV       PL,#0                 ; |471| 
        BF        L78,UNC
        ; branch occurs
L72:    
DW$L$__f_cmp_wname$2$B:
        MOV       AL,PL
        BF        L76,NEQ               ; |484| 
        ; branchcc occurs ; |484| 
DW$L$__f_cmp_wname$2$E:
DW$L$__f_cmp_wname$3$B:
        MOV       AH,*+XAR4[0]          ; |496| 
        CMPB      AH,#42                ; |496| 
        BF        L73,EQ                ; |496| 
        ; branchcc occurs ; |496| 
DW$L$__f_cmp_wname$3$E:
DW$L$__f_cmp_wname$4$B:
        CMPB      AH,#63                ; |503| 
        BF        L77,EQ                ; |503| 
        ; branchcc occurs ; |503| 
DW$L$__f_cmp_wname$4$E:
DW$L$__f_cmp_wname$5$B:
        MOV       AL,AR7
        CMP       AL,AH                 ; |503| 
        BF        L77,EQ                ; |503| 
        ; branchcc occurs ; |503| 
DW$L$__f_cmp_wname$5$E:
DW$L$__f_cmp_wname$6$B:
        MOVL      ACC,XAR0
        BF        L82,EQ                ; |505| 
        ; branchcc occurs ; |505| 
DW$L$__f_cmp_wname$6$E:
DW$L$__f_cmp_wname$7$B:
        MOVB      AL,#1                 ; |507| 
        MOVL      XAR5,XAR0             ; |508| 
        MOVL      XAR4,XT               ; |508| 
        MOV       PL,AL                 ; |507| 
        BF        L78,UNC               ; |510| 
        ; branch occurs ; |510| 
DW$L$__f_cmp_wname$7$E:
L73:    
DW$L$__f_cmp_wname$8$B:
        MOV       AL,*+XAR4[0]          ; |499| 
        MOVB      XAR6,#1               ; |498| 
        CMPB      AL,#42                ; |499| 
        MOV       PL,AR6                ; |498| 
        BF        L75,NEQ               ; |499| 
        ; branchcc occurs ; |499| 
DW$L$__f_cmp_wname$8$E:
L74:    
DW$L$__f_cmp_wname$9$B:
	.dwpsn	"fat.c",499,0
        MOVL      ACC,XAR4              ; |499| 
        ADDU      ACC,AR6               ; |499| 
        MOVL      XAR4,ACC              ; |499| 
        MOV       AL,*+XAR4[0]          ; |499| 
        CMPB      AL,#42                ; |499| 
        BF        L74,EQ                ; |499| 
        ; branchcc occurs ; |499| 
DW$L$__f_cmp_wname$9$E:
L75:    
DW$L$__f_cmp_wname$10$B:
        MOV       PH,*+XAR4[0]          ; |500| 
DW$L$__f_cmp_wname$10$E:
L76:    
DW$L$__f_cmp_wname$11$B:
        MOV       AL,PH
        CMP       AL,AR7                ; |487| 
        BF        L78,NEQ               ; |487| 
        ; branchcc occurs ; |487| 
DW$L$__f_cmp_wname$11$E:
DW$L$__f_cmp_wname$12$B:
        MOVL      XAR0,XAR5             ; |491| 
        MOVL      XT,XAR4               ; |490| 
        MOV       PL,#0                 ; |489| 
DW$L$__f_cmp_wname$12$E:
L77:    
DW$L$__f_cmp_wname$13$B:
        MOVL      ACC,XAR4              ; |490| 
        MOVB      XAR6,#1               ; |490| 
        ADDU      ACC,AR6               ; |490| 
        MOVL      XAR4,ACC              ; |490| 
DW$L$__f_cmp_wname$13$E:
L78:    
DW$L$__f_cmp_wname$14$B:
        MOVZ      AR7,*XAR5++           ; |475| 
        MOV       AL,AR7                ; |475| 
        CMPB      AL,#97                ; |475| 
        BF        L79,LT                ; |475| 
        ; branchcc occurs ; |475| 
DW$L$__f_cmp_wname$14$E:
DW$L$__f_cmp_wname$15$B:
        CMPB      AL,#122               ; |475| 
        BF        L79,GT                ; |475| 
        ; branchcc occurs ; |475| 
DW$L$__f_cmp_wname$15$E:
DW$L$__f_cmp_wname$16$B:
        ADDB      AL,#-32
        MOVZ      AR7,AL                ; |476| 
DW$L$__f_cmp_wname$16$E:
L79:    
DW$L$__f_cmp_wname$17$B:
        CMPB      AL,#0                 ; |477| 
        BF        L72,NEQ               ; |477| 
        ; branchcc occurs ; |477| 
DW$L$__f_cmp_wname$17$E:
        MOVB      XAR5,#1               ; |479| 
        BF        L81,UNC               ; |479| 
        ; branch occurs ; |479| 
L80:    
DW$L$__f_cmp_wname$19$B:
        MOVL      ACC,XAR4              ; |479| 
        ADDU      ACC,AR5               ; |479| 
        MOVL      XAR4,ACC              ; |479| 
DW$L$__f_cmp_wname$19$E:
L81:    
DW$L$__f_cmp_wname$20$B:
        MOV       AL,*+XAR4[0]          ; |479| 
        CMPB      AL,#63                ; |479| 
        BF        L80,EQ                ; |479| 
        ; branchcc occurs ; |479| 
DW$L$__f_cmp_wname$20$E:
DW$L$__f_cmp_wname$21$B:
        MOV       AL,*+XAR4[0]          ; |479| 
        CMPB      AL,#42                ; |479| 
        BF        L80,EQ                ; |479| 
        ; branchcc occurs ; |479| 
DW$L$__f_cmp_wname$21$E:
        MOV       AL,*+XAR4[0]          ; |480| 
        BF        L83,EQ                ; |480| 
        ; branchcc occurs ; |480| 
L82:    
        MOVB      AL,#0
        BF        L84,UNC               ; |511| 
        ; branch occurs ; |511| 
L83:    
        MOVB      AL,#1                 ; |519| 
L84:    
	.dwpsn	"fat.c",520,1
        LRETR
        ; return occurs

DW$257	.dwtag  DW_TAG_loop
	.dwattr DW$257, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L81:1:1471518973")
	.dwattr DW$257, DW_AT_begin_file("fat.c")
	.dwattr DW$257, DW_AT_begin_line(0x1df)
	.dwattr DW$257, DW_AT_end_line(0x1df)
DW$258	.dwtag  DW_TAG_loop_range
	.dwattr DW$258, DW_AT_low_pc(DW$L$__f_cmp_wname$20$B)
	.dwattr DW$258, DW_AT_high_pc(DW$L$__f_cmp_wname$20$E)
DW$259	.dwtag  DW_TAG_loop_range
	.dwattr DW$259, DW_AT_low_pc(DW$L$__f_cmp_wname$21$B)
	.dwattr DW$259, DW_AT_high_pc(DW$L$__f_cmp_wname$21$E)
DW$260	.dwtag  DW_TAG_loop_range
	.dwattr DW$260, DW_AT_low_pc(DW$L$__f_cmp_wname$19$B)
	.dwattr DW$260, DW_AT_high_pc(DW$L$__f_cmp_wname$19$E)
	.dwendtag DW$257


DW$261	.dwtag  DW_TAG_loop
	.dwattr DW$261, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L78:1:1471518973")
	.dwattr DW$261, DW_AT_begin_file("fat.c")
	.dwattr DW$261, DW_AT_begin_line(0x1db)
	.dwattr DW$261, DW_AT_end_line(0x1fe)
DW$262	.dwtag  DW_TAG_loop_range
	.dwattr DW$262, DW_AT_low_pc(DW$L$__f_cmp_wname$14$B)
	.dwattr DW$262, DW_AT_high_pc(DW$L$__f_cmp_wname$14$E)
DW$263	.dwtag  DW_TAG_loop_range
	.dwattr DW$263, DW_AT_low_pc(DW$L$__f_cmp_wname$12$B)
	.dwattr DW$263, DW_AT_high_pc(DW$L$__f_cmp_wname$12$E)
DW$264	.dwtag  DW_TAG_loop_range
	.dwattr DW$264, DW_AT_low_pc(DW$L$__f_cmp_wname$8$B)
	.dwattr DW$264, DW_AT_high_pc(DW$L$__f_cmp_wname$8$E)
DW$265	.dwtag  DW_TAG_loop_range
	.dwattr DW$265, DW_AT_low_pc(DW$L$__f_cmp_wname$10$B)
	.dwattr DW$265, DW_AT_high_pc(DW$L$__f_cmp_wname$10$E)
DW$266	.dwtag  DW_TAG_loop_range
	.dwattr DW$266, DW_AT_low_pc(DW$L$__f_cmp_wname$15$B)
	.dwattr DW$266, DW_AT_high_pc(DW$L$__f_cmp_wname$15$E)
DW$267	.dwtag  DW_TAG_loop_range
	.dwattr DW$267, DW_AT_low_pc(DW$L$__f_cmp_wname$16$B)
	.dwattr DW$267, DW_AT_high_pc(DW$L$__f_cmp_wname$16$E)
DW$268	.dwtag  DW_TAG_loop_range
	.dwattr DW$268, DW_AT_low_pc(DW$L$__f_cmp_wname$17$B)
	.dwattr DW$268, DW_AT_high_pc(DW$L$__f_cmp_wname$17$E)
DW$269	.dwtag  DW_TAG_loop_range
	.dwattr DW$269, DW_AT_low_pc(DW$L$__f_cmp_wname$2$B)
	.dwattr DW$269, DW_AT_high_pc(DW$L$__f_cmp_wname$2$E)
DW$270	.dwtag  DW_TAG_loop_range
	.dwattr DW$270, DW_AT_low_pc(DW$L$__f_cmp_wname$3$B)
	.dwattr DW$270, DW_AT_high_pc(DW$L$__f_cmp_wname$3$E)
DW$271	.dwtag  DW_TAG_loop_range
	.dwattr DW$271, DW_AT_low_pc(DW$L$__f_cmp_wname$4$B)
	.dwattr DW$271, DW_AT_high_pc(DW$L$__f_cmp_wname$4$E)
DW$272	.dwtag  DW_TAG_loop_range
	.dwattr DW$272, DW_AT_low_pc(DW$L$__f_cmp_wname$5$B)
	.dwattr DW$272, DW_AT_high_pc(DW$L$__f_cmp_wname$5$E)
DW$273	.dwtag  DW_TAG_loop_range
	.dwattr DW$273, DW_AT_low_pc(DW$L$__f_cmp_wname$6$B)
	.dwattr DW$273, DW_AT_high_pc(DW$L$__f_cmp_wname$6$E)
DW$274	.dwtag  DW_TAG_loop_range
	.dwattr DW$274, DW_AT_low_pc(DW$L$__f_cmp_wname$13$B)
	.dwattr DW$274, DW_AT_high_pc(DW$L$__f_cmp_wname$13$E)
DW$275	.dwtag  DW_TAG_loop_range
	.dwattr DW$275, DW_AT_low_pc(DW$L$__f_cmp_wname$11$B)
	.dwattr DW$275, DW_AT_high_pc(DW$L$__f_cmp_wname$11$E)
DW$276	.dwtag  DW_TAG_loop_range
	.dwattr DW$276, DW_AT_low_pc(DW$L$__f_cmp_wname$7$B)
	.dwattr DW$276, DW_AT_high_pc(DW$L$__f_cmp_wname$7$E)

DW$277	.dwtag  DW_TAG_loop
	.dwattr DW$277, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L74:2:1471518973")
	.dwattr DW$277, DW_AT_begin_file("fat.c")
	.dwattr DW$277, DW_AT_begin_line(0x1f3)
	.dwattr DW$277, DW_AT_end_line(0x1f3)
DW$278	.dwtag  DW_TAG_loop_range
	.dwattr DW$278, DW_AT_low_pc(DW$L$__f_cmp_wname$9$B)
	.dwattr DW$278, DW_AT_high_pc(DW$L$__f_cmp_wname$9$E)
	.dwendtag DW$277

	.dwendtag DW$261

	.dwattr DW$254, DW_AT_end_file("fat.c")
	.dwattr DW$254, DW_AT_end_line(0x208)
	.dwattr DW$254, DW_AT_end_column(0x01)
	.dwendtag DW$254

	.sect	".text"

DW$279	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_to_string"), DW_AT_symbol_name("__f_to_string")
	.dwattr DW$279, DW_AT_low_pc(__f_to_string)
	.dwattr DW$279, DW_AT_high_pc(0x00)
	.dwattr DW$279, DW_AT_begin_file("fat.c")
	.dwattr DW$279, DW_AT_begin_line(0x20f)
	.dwattr DW$279, DW_AT_begin_column(0x0d)
	.dwattr DW$279, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$279, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",528,1

;***************************************************************
;* FNAME: __f_to_string                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

__f_to_string:
;* AR4   assigned to _r
DW$280	.dwtag  DW_TAG_formal_parameter, DW_AT_name("r"), DW_AT_symbol_name("_r")
	.dwattr DW$280, DW_AT_type(*DW$T$59)
	.dwattr DW$280, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _name
DW$281	.dwtag  DW_TAG_formal_parameter, DW_AT_name("name"), DW_AT_symbol_name("_name")
	.dwattr DW$281, DW_AT_type(*DW$T$59)
	.dwattr DW$281, DW_AT_location[DW_OP_reg14]
DW$282	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ext"), DW_AT_symbol_name("_ext")
	.dwattr DW$282, DW_AT_type(*DW$T$59)
	.dwattr DW$282, DW_AT_location[DW_OP_breg20 -4]
        SETC      SXM
        MOVL      XAR0,*-SP[4]          ; |528| 
        MOV       PL,#0                 ; |530| 
	.dwpsn	"fat.c",530,0
        MOVZ      AR7,PL                ; |530| 
L85:    
DW$L$__f_to_string$2$B:
        MOVL      XAR6,XAR5             ; |530| 
        MOV       AL,AR7
        MOV       ACC,AL                ; |530| 
        ADDL      XAR6,ACC
        MOV       PH,*+XAR6[0]          ; |530| 
        MOV       AL,PH                 ; |530| 
        CMPB      AL,#32                ; |530| 
        BF        L86,EQ                ; |530| 
        ; branchcc occurs ; |530| 
DW$L$__f_to_string$2$E:
DW$L$__f_to_string$3$B:
        MOVL      XAR6,XAR4             ; |530| 
        MOV       AL,PL
        MOV       ACC,AL                ; |530| 
        ADDL      XAR6,ACC
        MOV       AL,PL                 ; |530| 
        ADDB      AL,#1                 ; |530| 
        MOV       PL,AL                 ; |530| 
        MOV       AL,AR7                ; |530| 
        ADDB      AL,#1                 ; |530| 
        CMPB      AL,#8                 ; |530| 
        MOVZ      AR7,AL                ; |530| 
        MOVH      *+XAR6[0],P           ; |530| 
        BF        L85,LT                ; |530| 
        ; branchcc occurs ; |530| 
DW$L$__f_to_string$3$E:
L86:    
        MOVL      XAR5,XAR4             ; |531| 
        MOV       AL,PL
        MOV       ACC,AL                ; |531| 
        MOVB      XAR7,#0
        ADDL      XAR5,ACC
        SETC      SXM
        MOV       AL,PL                 ; |531| 
        ADDB      AL,#1                 ; |531| 
        MOV       *+XAR5[0],#46         ; |531| 
	.dwpsn	"fat.c",532,0
        MOV       PL,AL                 ; |531| 
L87:    
DW$L$__f_to_string$5$B:
        MOVL      XAR5,XAR0             ; |532| 
        MOV       AL,AR7
        MOV       ACC,AL                ; |532| 
        ADDL      XAR5,ACC
        MOVZ      AR6,*+XAR5[0]         ; |532| 
        MOV       AL,AR6                ; |532| 
        CMPB      AL,#32                ; |532| 
        BF        L88,EQ                ; |532| 
        ; branchcc occurs ; |532| 
DW$L$__f_to_string$5$E:
DW$L$__f_to_string$6$B:
        MOVL      XAR5,XAR4             ; |532| 
        MOV       AL,PL
        MOV       ACC,AL                ; |532| 
        ADDL      XAR5,ACC
        MOV       AL,PL                 ; |532| 
        ADDB      AL,#1                 ; |532| 
        MOV       PL,AL                 ; |532| 
        MOV       AL,AR7                ; |532| 
        ADDB      AL,#1                 ; |532| 
        CMPB      AL,#3                 ; |532| 
        MOVZ      AR7,AL                ; |532| 
        MOV       *+XAR5[0],AR6         ; |532| 
        BF        L87,LT                ; |532| 
        ; branchcc occurs ; |532| 
DW$L$__f_to_string$6$E:
L88:    
        MOV       AL,PL
        MOV       ACC,AL                ; |533| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#0          ; |533| 
	.dwpsn	"fat.c",534,1
        LRETR
        ; return occurs

DW$283	.dwtag  DW_TAG_loop
	.dwattr DW$283, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L87:1:1471518973")
	.dwattr DW$283, DW_AT_begin_file("fat.c")
	.dwattr DW$283, DW_AT_begin_line(0x214)
	.dwattr DW$283, DW_AT_end_line(0x214)
DW$284	.dwtag  DW_TAG_loop_range
	.dwattr DW$284, DW_AT_low_pc(DW$L$__f_to_string$5$B)
	.dwattr DW$284, DW_AT_high_pc(DW$L$__f_to_string$5$E)
DW$285	.dwtag  DW_TAG_loop_range
	.dwattr DW$285, DW_AT_low_pc(DW$L$__f_to_string$6$B)
	.dwattr DW$285, DW_AT_high_pc(DW$L$__f_to_string$6$E)
	.dwendtag DW$283


DW$286	.dwtag  DW_TAG_loop
	.dwattr DW$286, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L85:1:1471518973")
	.dwattr DW$286, DW_AT_begin_file("fat.c")
	.dwattr DW$286, DW_AT_begin_line(0x212)
	.dwattr DW$286, DW_AT_end_line(0x212)
DW$287	.dwtag  DW_TAG_loop_range
	.dwattr DW$287, DW_AT_low_pc(DW$L$__f_to_string$2$B)
	.dwattr DW$287, DW_AT_high_pc(DW$L$__f_to_string$2$E)
DW$288	.dwtag  DW_TAG_loop_range
	.dwattr DW$288, DW_AT_low_pc(DW$L$__f_to_string$3$B)
	.dwattr DW$288, DW_AT_high_pc(DW$L$__f_to_string$3$E)
	.dwendtag DW$286

	.dwattr DW$279, DW_AT_end_file("fat.c")
	.dwattr DW$279, DW_AT_end_line(0x216)
	.dwattr DW$279, DW_AT_end_column(0x01)
	.dwendtag DW$279

	.sect	".text"

DW$289	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_findfilewc"), DW_AT_symbol_name("__f_findfilewc")
	.dwattr DW$289, DW_AT_low_pc(__f_findfilewc)
	.dwattr DW$289, DW_AT_high_pc(0x00)
	.dwattr DW$289, DW_AT_begin_file("fat.c")
	.dwattr DW$289, DW_AT_begin_line(0x22e)
	.dwattr DW$289, DW_AT_begin_column(0x0c)
	.dwattr DW$289, DW_AT_frame_base[DW_OP_breg20 -44]
	.dwattr DW$289, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",558,90

;***************************************************************
;* FNAME: __f_findfilewc                FR SIZE:  42           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 34 Auto,  6 SOE     *
;***************************************************************

__f_findfilewc:
;* AR4   assigned to _vi
DW$290	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$290, DW_AT_type(*DW$T$89)
	.dwattr DW$290, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _name
DW$291	.dwtag  DW_TAG_formal_parameter, DW_AT_name("name"), DW_AT_symbol_name("_name")
	.dwattr DW$291, DW_AT_type(*DW$T$59)
	.dwattr DW$291, DW_AT_location[DW_OP_reg14]
DW$292	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ext"), DW_AT_symbol_name("_ext")
	.dwattr DW$292, DW_AT_type(*DW$T$59)
	.dwattr DW$292, DW_AT_location[DW_OP_breg20 -46]
DW$293	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pos"), DW_AT_symbol_name("_pos")
	.dwattr DW$293, DW_AT_type(*DW$T$66)
	.dwattr DW$293, DW_AT_location[DW_OP_breg20 -48]
DW$294	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pde"), DW_AT_symbol_name("_pde")
	.dwattr DW$294, DW_AT_type(*DW$T$152)
	.dwattr DW$294, DW_AT_location[DW_OP_breg20 -50]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#36
        MOVL      ACC,*-SP[50]          ; |558| 
        MOVL      XAR1,XAR4             ; |558| 
        MOVL      *-SP[34],ACC          ; |558| 
        MOV       AL,#65520
        MOVL      XAR3,*-SP[48]         ; |558| 
        MOVL      *-SP[32],XAR5         ; |558| 
        MOV       AH,#4095
        MOVL      XAR2,*-SP[46]         ; |558| 
        CMPL      ACC,*+XAR3[0]         ; |560| 
        BF        L97,LOS               ; |560| 
        ; branchcc occurs ; |560| 
L89:    
DW$L$__f_findfilewc$2$B:
	.dwpsn	"fat.c",560,0
        MOVB      XAR0,#8               ; |562| 
        MOVL      ACC,*+XAR3[AR0]       ; |562| 
        CMPL      ACC,*+XAR3[6]         ; |562| 
        BF        L95,LOS               ; |562| 
        ; branchcc occurs ; |562| 
DW$L$__f_findfilewc$2$E:
L90:    
DW$L$__f_findfilewc$3$B:
	.dwpsn	"fat.c",562,0
        MOVB      XAR0,#10              ; |563| 
        MOVL      P,XAR1                ; |563| 
        MOVL      ACC,*+XAR3[AR0]       ; |563| 
        MOVL      XAR4,#602             ; |563| 
        LSL       ACC,5                 ; |563| 
        ADDL      P,ACC
        ADDUL     P,XAR4
        MOVL      XAR4,XAR1             ; |565| 
        MOVL      *-SP[36],P            ; |563| 
        MOVL      ACC,*+XAR3[6]         ; |565| 
        LCR       #__f_getdirsector     ; |565| 
        ; call occurs [#__f_getdirsector] ; |565| 
        CMPB      AL,#0                 ; |565| 
        BF        L97,NEQ               ; |565| 
        ; branchcc occurs ; |565| 
DW$L$__f_findfilewc$3$E:
DW$L$__f_findfilewc$4$B:
        MOVB      ACC,#16
        MOVB      XAR0,#10              ; |567| 
        CMPL      ACC,*+XAR3[AR0]       ; |567| 
        BF        L94,LOS               ; |567| 
        ; branchcc occurs ; |567| 
DW$L$__f_findfilewc$4$E:
L91:    
DW$L$__f_findfilewc$5$B:
	.dwpsn	"fat.c",567,0
        MOVL      XAR5,*-SP[36]
        MOV       AL,*+XAR5[0]          ; |569| 
        BF        L93,EQ                ; |569| 
        ; branchcc occurs ; |569| 
DW$L$__f_findfilewc$5$E:
DW$L$__f_findfilewc$6$B:
        CMPB      AL,#229               ; |569| 
        BF        L93,EQ                ; |569| 
        ; branchcc occurs ; |569| 
DW$L$__f_findfilewc$6$E:
DW$L$__f_findfilewc$7$B:
        MOVL      XAR4,*-SP[36]         ; |569| 
        MOVB      XAR0,#11              ; |569| 
        TBIT      *+XAR4[AR0],#3        ; |569| 
        BF        L93,TC                ; |569| 
        ; branchcc occurs ; |569| 
DW$L$__f_findfilewc$7$E:
DW$L$__f_findfilewc$8$B:
        MOVL      XAR6,*-SP[36]         ; |576| 
        MOVZ      AR4,SP                ; |576| 
        MOVB      ACC,#8
        ADDL      ACC,XAR6
        SUBB      XAR4,#17              ; |576| 
        MOVL      *-SP[2],ACC           ; |576| 
        LCR       #__f_to_string        ; |576| 
        ; call occurs [#__f_to_string] ; |576| 
        MOVZ      AR4,SP                ; |577| 
        MOVL      *-SP[2],XAR2          ; |577| 
        MOVL      XAR5,*-SP[32]         ; |577| 
        SUBB      XAR4,#30              ; |577| 
        LCR       #__f_to_string        ; |577| 
        ; call occurs [#__f_to_string] ; |577| 
        MOVZ      AR5,SP                ; |578| 
        MOVZ      AR4,SP                ; |578| 
        SUBB      XAR5,#17              ; |578| 
        SUBB      XAR4,#30              ; |578| 
        LCR       #__f_cmp_wname        ; |578| 
        ; call occurs [#__f_cmp_wname] ; |578| 
        CMPB      AL,#0                 ; |578| 
        BF        L93,EQ                ; |578| 
        ; branchcc occurs ; |578| 
DW$L$__f_findfilewc$8$E:
        MOVL      ACC,*-SP[34]
        BF        L92,EQ                ; |580| 
        ; branchcc occurs ; |580| 
        MOVL      XAR4,*-SP[34]
        MOVL      ACC,*-SP[36]
        MOVL      *+XAR4[0],ACC         ; |580| 
L92:    
        MOVB      AL,#1                 ; |581| 
        BF        L98,UNC               ; |581| 
        ; branch occurs ; |581| 
L93:    
DW$L$__f_findfilewc$12$B:
        MOVL      ACC,*-SP[36]          ; |567| 
        MOVB      XAR4,#32              ; |567| 
        ADDU      ACC,AR4               ; |567| 
        MOVL      *-SP[36],ACC          ; |567| 
        MOVB      ACC,#10
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |567| 
        MOVB      XAR0,#10              ; |567| 
        MOVB      ACC,#1
        ADDL      *+XAR4[0],ACC         ; |567| 
        MOVB      ACC,#16
        CMPL      ACC,*+XAR3[AR0]       ; |567| 
	.dwpsn	"fat.c",584,0
        BF        L91,HI                ; |567| 
        ; branchcc occurs ; |567| 
DW$L$__f_findfilewc$12$E:
L94:    
DW$L$__f_findfilewc$13$B:
        MOVB      ACC,#0
        MOVL      *+XAR3[AR0],ACC       ; |586| 
        MOVB      ACC,#1
        MOVB      XAR0,#8               ; |562| 
        ADDL      *+XAR3[6],ACC         ; |562| 
        MOVL      ACC,*+XAR3[AR0]       ; |562| 
        CMPL      ACC,*+XAR3[6]         ; |562| 
	.dwpsn	"fat.c",587,0
        BF        L90,HI                ; |562| 
        ; branchcc occurs ; |562| 
DW$L$__f_findfilewc$13$E:
L95:    
DW$L$__f_findfilewc$14$B:
        MOVL      ACC,*+XAR3[0]         ; |589| 
        BF        L96,NEQ               ; |589| 
        ; branchcc occurs ; |589| 
DW$L$__f_findfilewc$14$E:
DW$L$__f_findfilewc$15$B:
        MOVL      XAR0,#1136            ; |590| 
        MOVB      ACC,#3
        CMPL      ACC,*+XAR1[AR0]       ; |590| 
        BF        L97,NEQ               ; |590| 
        ; branchcc occurs ; |590| 
DW$L$__f_findfilewc$15$E:
DW$L$__f_findfilewc$16$B:
        MOVB      XAR0,#32              ; |591| 
        MOVL      ACC,*+XAR1[AR0]       ; |591| 
        MOVL      *+XAR3[0],ACC         ; |591| 
DW$L$__f_findfilewc$16$E:
L96:    
DW$L$__f_findfilewc$17$B:
        MOVZ      AR5,SP                ; |598| 
        MOVL      XAR4,XAR1             ; |598| 
        MOVL      ACC,*+XAR3[0]         ; |598| 
        SUBB      XAR5,#4               ; |598| 
        LCR       #__f_getclustervalue  ; |598| 
        ; call occurs [#__f_getclustervalue] ; |598| 
        CMPB      AL,#0                 ; |598| 
        BF        L97,NEQ               ; |598| 
        ; branchcc occurs ; |598| 
DW$L$__f_findfilewc$17$E:
DW$L$__f_findfilewc$18$B:
        MOVB      ACC,#2
        CMPL      ACC,*-SP[4]           ; |598| 
        BF        L97,HI                ; |598| 
        ; branchcc occurs ; |598| 
DW$L$__f_findfilewc$18$E:
DW$L$__f_findfilewc$19$B:
        MOV       AL,#65520
        MOV       AH,#4095
        CMPL      ACC,*-SP[4]           ; |598| 
        BF        L97,LOS               ; |598| 
        ; branchcc occurs ; |598| 
DW$L$__f_findfilewc$19$E:
DW$L$__f_findfilewc$20$B:
        MOVL      XAR5,XAR3             ; |602| 
        MOVL      XAR4,XAR1             ; |602| 
        MOVL      ACC,*-SP[4]           ; |602| 
        LCR       #__f_clustertopos     ; |602| 
        ; call occurs [#__f_clustertopos] ; |602| 
        MOV       AL,#65520
        MOV       AH,#4095
        CMPL      ACC,*+XAR3[0]         ; |602| 
	.dwpsn	"fat.c",604,0
        BF        L89,HI                ; |602| 
        ; branchcc occurs ; |602| 
DW$L$__f_findfilewc$20$E:
L97:    
        MOVB      AL,#0
L98:    
        SUBB      SP,#36                ; |606| 
        MOVL      XAR3,*--SP            ; |606| 
        MOVL      XAR2,*--SP            ; |606| 
        MOVL      XAR1,*--SP            ; |606| 
	.dwpsn	"fat.c",607,1
        LRETR
        ; return occurs

DW$295	.dwtag  DW_TAG_loop
	.dwattr DW$295, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L89:1:1471518973")
	.dwattr DW$295, DW_AT_begin_file("fat.c")
	.dwattr DW$295, DW_AT_begin_line(0x230)
	.dwattr DW$295, DW_AT_end_line(0x25c)
DW$296	.dwtag  DW_TAG_loop_range
	.dwattr DW$296, DW_AT_low_pc(DW$L$__f_findfilewc$2$B)
	.dwattr DW$296, DW_AT_high_pc(DW$L$__f_findfilewc$2$E)
DW$297	.dwtag  DW_TAG_loop_range
	.dwattr DW$297, DW_AT_low_pc(DW$L$__f_findfilewc$15$B)
	.dwattr DW$297, DW_AT_high_pc(DW$L$__f_findfilewc$15$E)
DW$298	.dwtag  DW_TAG_loop_range
	.dwattr DW$298, DW_AT_low_pc(DW$L$__f_findfilewc$14$B)
	.dwattr DW$298, DW_AT_high_pc(DW$L$__f_findfilewc$14$E)
DW$299	.dwtag  DW_TAG_loop_range
	.dwattr DW$299, DW_AT_low_pc(DW$L$__f_findfilewc$16$B)
	.dwattr DW$299, DW_AT_high_pc(DW$L$__f_findfilewc$16$E)
DW$300	.dwtag  DW_TAG_loop_range
	.dwattr DW$300, DW_AT_low_pc(DW$L$__f_findfilewc$17$B)
	.dwattr DW$300, DW_AT_high_pc(DW$L$__f_findfilewc$17$E)
DW$301	.dwtag  DW_TAG_loop_range
	.dwattr DW$301, DW_AT_low_pc(DW$L$__f_findfilewc$18$B)
	.dwattr DW$301, DW_AT_high_pc(DW$L$__f_findfilewc$18$E)
DW$302	.dwtag  DW_TAG_loop_range
	.dwattr DW$302, DW_AT_low_pc(DW$L$__f_findfilewc$19$B)
	.dwattr DW$302, DW_AT_high_pc(DW$L$__f_findfilewc$19$E)
DW$303	.dwtag  DW_TAG_loop_range
	.dwattr DW$303, DW_AT_low_pc(DW$L$__f_findfilewc$20$B)
	.dwattr DW$303, DW_AT_high_pc(DW$L$__f_findfilewc$20$E)

DW$304	.dwtag  DW_TAG_loop
	.dwattr DW$304, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L90:2:1471518973")
	.dwattr DW$304, DW_AT_begin_file("fat.c")
	.dwattr DW$304, DW_AT_begin_line(0x232)
	.dwattr DW$304, DW_AT_end_line(0x24b)
DW$305	.dwtag  DW_TAG_loop_range
	.dwattr DW$305, DW_AT_low_pc(DW$L$__f_findfilewc$3$B)
	.dwattr DW$305, DW_AT_high_pc(DW$L$__f_findfilewc$3$E)
DW$306	.dwtag  DW_TAG_loop_range
	.dwattr DW$306, DW_AT_low_pc(DW$L$__f_findfilewc$4$B)
	.dwattr DW$306, DW_AT_high_pc(DW$L$__f_findfilewc$4$E)
DW$307	.dwtag  DW_TAG_loop_range
	.dwattr DW$307, DW_AT_low_pc(DW$L$__f_findfilewc$13$B)
	.dwattr DW$307, DW_AT_high_pc(DW$L$__f_findfilewc$13$E)

DW$308	.dwtag  DW_TAG_loop
	.dwattr DW$308, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L91:3:1471518973")
	.dwattr DW$308, DW_AT_begin_file("fat.c")
	.dwattr DW$308, DW_AT_begin_line(0x237)
	.dwattr DW$308, DW_AT_end_line(0x248)
DW$309	.dwtag  DW_TAG_loop_range
	.dwattr DW$309, DW_AT_low_pc(DW$L$__f_findfilewc$5$B)
	.dwattr DW$309, DW_AT_high_pc(DW$L$__f_findfilewc$5$E)
DW$310	.dwtag  DW_TAG_loop_range
	.dwattr DW$310, DW_AT_low_pc(DW$L$__f_findfilewc$6$B)
	.dwattr DW$310, DW_AT_high_pc(DW$L$__f_findfilewc$6$E)
DW$311	.dwtag  DW_TAG_loop_range
	.dwattr DW$311, DW_AT_low_pc(DW$L$__f_findfilewc$7$B)
	.dwattr DW$311, DW_AT_high_pc(DW$L$__f_findfilewc$7$E)
DW$312	.dwtag  DW_TAG_loop_range
	.dwattr DW$312, DW_AT_low_pc(DW$L$__f_findfilewc$8$B)
	.dwattr DW$312, DW_AT_high_pc(DW$L$__f_findfilewc$8$E)
DW$313	.dwtag  DW_TAG_loop_range
	.dwattr DW$313, DW_AT_low_pc(DW$L$__f_findfilewc$12$B)
	.dwattr DW$313, DW_AT_high_pc(DW$L$__f_findfilewc$12$E)
	.dwendtag DW$308

	.dwendtag DW$304

	.dwendtag DW$295

	.dwattr DW$289, DW_AT_end_file("fat.c")
	.dwattr DW$289, DW_AT_end_line(0x25f)
	.dwattr DW$289, DW_AT_end_column(0x01)
	.dwendtag DW$289

	.sect	".text"

DW$314	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_getfilename"), DW_AT_symbol_name("__f_getfilename")
	.dwattr DW$314, DW_AT_low_pc(__f_getfilename)
	.dwattr DW$314, DW_AT_high_pc(0x00)
	.dwattr DW$314, DW_AT_begin_file("fat.c")
	.dwattr DW$314, DW_AT_begin_line(0x26f)
	.dwattr DW$314, DW_AT_begin_column(0x0d)
	.dwattr DW$314, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$314, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",623,62

;***************************************************************
;* FNAME: __f_getfilename               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

__f_getfilename:
;* AR4   assigned to _dest
DW$315	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dest"), DW_AT_symbol_name("_dest")
	.dwattr DW$315, DW_AT_type(*DW$T$59)
	.dwattr DW$315, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _name
DW$316	.dwtag  DW_TAG_formal_parameter, DW_AT_name("name"), DW_AT_symbol_name("_name")
	.dwattr DW$316, DW_AT_type(*DW$T$59)
	.dwattr DW$316, DW_AT_location[DW_OP_reg14]
DW$317	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ext"), DW_AT_symbol_name("_ext")
	.dwattr DW$317, DW_AT_type(*DW$T$59)
	.dwattr DW$317, DW_AT_location[DW_OP_breg20 -4]
        MOVB      AL,#8                 ; |626| 
        SETC      SXM
        MOVL      XAR7,*-SP[4]          ; |623| 
	.dwpsn	"fat.c",626,0
        MOV       PL,AL                 ; |626| 
L99:    
DW$L$__f_getfilename$2$B:
        MOVL      XAR6,XAR5             ; |627| 
        ADDB      AL,#-1
        MOV       PH,AL                 ; |627| 
        MOV       ACC,PH                ; |627| 
        ADDL      XAR6,ACC
        MOV       AL,*+XAR6[0]          ; |627| 
        CMPB      AL,#32                ; |627| 
        BF        L100,NEQ              ; |627| 
        ; branchcc occurs ; |627| 
DW$L$__f_getfilename$2$E:
DW$L$__f_getfilename$3$B:
        MOV       AL,PH                 ; |626| 
        MOV       AH,PL                 ; |626| 
        ADDB      AH,#-1
        CMPB      AL,#0                 ; |626| 
        MOV       PL,AH                 ; |626| 
	.dwpsn	"fat.c",628,0
        BF        L99,NEQ               ; |626| 
        ; branchcc occurs ; |626| 
DW$L$__f_getfilename$3$E:
L100:    
        MOVB      AL,#0
        MOV       AH,PL                 ; |629| 
        BF        L102,LEQ              ; |629| 
        ; branchcc occurs ; |629| 
L101:    
DW$L$__f_getfilename$5$B:
	.dwpsn	"fat.c",629,0
        MOV       AH,*XAR5++            ; |629| 
        ADDB      AL,#1                 ; |629| 
        MOV       *XAR4++,AH            ; |629| 
        MOV       AH,PL                 ; |629| 
        CMP       AH,AL                 ; |629| 
        BF        L101,GT               ; |629| 
        ; branchcc occurs ; |629| 
DW$L$__f_getfilename$5$E:
L102:    
        MOVB      AL,#3                 ; |632| 
        SETC      SXM
	.dwpsn	"fat.c",632,0
        MOV       PL,AL                 ; |632| 
L103:    
DW$L$__f_getfilename$7$B:
        MOVL      XAR5,XAR7             ; |633| 
        ADDB      AL,#-1
        MOV       PH,AL                 ; |633| 
        MOV       ACC,PH                ; |633| 
        ADDL      XAR5,ACC
        MOV       AL,*+XAR5[0]          ; |633| 
        CMPB      AL,#32                ; |633| 
        BF        L104,NEQ              ; |633| 
        ; branchcc occurs ; |633| 
DW$L$__f_getfilename$7$E:
DW$L$__f_getfilename$8$B:
        MOV       AL,PH                 ; |632| 
        MOV       AH,PL                 ; |632| 
        ADDB      AH,#-1
        CMPB      AL,#0                 ; |632| 
        MOV       PL,AH                 ; |632| 
	.dwpsn	"fat.c",634,0
        BF        L103,NEQ              ; |632| 
        ; branchcc occurs ; |632| 
DW$L$__f_getfilename$8$E:
L104:    
        MOV       AL,PL
        BF        L105,EQ               ; |635| 
        ; branchcc occurs ; |635| 
        MOV       *XAR4++,#46           ; |635| 
L105:    
        MOVB      AL,#0
        MOV       AH,PL                 ; |637| 
        BF        L107,LEQ              ; |637| 
        ; branchcc occurs ; |637| 
L106:    
DW$L$__f_getfilename$12$B:
	.dwpsn	"fat.c",637,0
        MOV       AH,*XAR7++            ; |637| 
        ADDB      AL,#1                 ; |637| 
        MOV       *XAR4++,AH            ; |637| 
        MOV       AH,PL                 ; |637| 
        CMP       AH,AL                 ; |637| 
        BF        L106,GT               ; |637| 
        ; branchcc occurs ; |637| 
DW$L$__f_getfilename$12$E:
L107:    
        MOV       *+XAR4[0],#0          ; |639| 
	.dwpsn	"fat.c",640,1
        LRETR
        ; return occurs

DW$318	.dwtag  DW_TAG_loop
	.dwattr DW$318, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L106:1:1471518973")
	.dwattr DW$318, DW_AT_begin_file("fat.c")
	.dwattr DW$318, DW_AT_begin_line(0x27d)
	.dwattr DW$318, DW_AT_end_line(0x27d)
DW$319	.dwtag  DW_TAG_loop_range
	.dwattr DW$319, DW_AT_low_pc(DW$L$__f_getfilename$12$B)
	.dwattr DW$319, DW_AT_high_pc(DW$L$__f_getfilename$12$E)
	.dwendtag DW$318


DW$320	.dwtag  DW_TAG_loop
	.dwattr DW$320, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L103:1:1471518973")
	.dwattr DW$320, DW_AT_begin_file("fat.c")
	.dwattr DW$320, DW_AT_begin_line(0x278)
	.dwattr DW$320, DW_AT_end_line(0x27a)
DW$321	.dwtag  DW_TAG_loop_range
	.dwattr DW$321, DW_AT_low_pc(DW$L$__f_getfilename$7$B)
	.dwattr DW$321, DW_AT_high_pc(DW$L$__f_getfilename$7$E)
DW$322	.dwtag  DW_TAG_loop_range
	.dwattr DW$322, DW_AT_low_pc(DW$L$__f_getfilename$8$B)
	.dwattr DW$322, DW_AT_high_pc(DW$L$__f_getfilename$8$E)
	.dwendtag DW$320


DW$323	.dwtag  DW_TAG_loop
	.dwattr DW$323, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L101:1:1471518973")
	.dwattr DW$323, DW_AT_begin_file("fat.c")
	.dwattr DW$323, DW_AT_begin_line(0x275)
	.dwattr DW$323, DW_AT_end_line(0x275)
DW$324	.dwtag  DW_TAG_loop_range
	.dwattr DW$324, DW_AT_low_pc(DW$L$__f_getfilename$5$B)
	.dwattr DW$324, DW_AT_high_pc(DW$L$__f_getfilename$5$E)
	.dwendtag DW$323


DW$325	.dwtag  DW_TAG_loop
	.dwattr DW$325, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L99:1:1471518973")
	.dwattr DW$325, DW_AT_begin_file("fat.c")
	.dwattr DW$325, DW_AT_begin_line(0x272)
	.dwattr DW$325, DW_AT_end_line(0x274)
DW$326	.dwtag  DW_TAG_loop_range
	.dwattr DW$326, DW_AT_low_pc(DW$L$__f_getfilename$2$B)
	.dwattr DW$326, DW_AT_high_pc(DW$L$__f_getfilename$2$E)
DW$327	.dwtag  DW_TAG_loop_range
	.dwattr DW$327, DW_AT_low_pc(DW$L$__f_getfilename$3$B)
	.dwattr DW$327, DW_AT_high_pc(DW$L$__f_getfilename$3$E)
	.dwendtag DW$325

	.dwattr DW$314, DW_AT_end_file("fat.c")
	.dwattr DW$314, DW_AT_end_line(0x280)
	.dwattr DW$314, DW_AT_end_column(0x01)
	.dwendtag DW$314

	.sect	".text"

DW$328	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_findpath"), DW_AT_symbol_name("__f_findpath")
	.dwattr DW$328, DW_AT_low_pc(__f_findpath)
	.dwattr DW$328, DW_AT_high_pc(0x00)
	.dwattr DW$328, DW_AT_begin_file("fat.c")
	.dwattr DW$328, DW_AT_begin_line(0x297)
	.dwattr DW$328, DW_AT_begin_column(0x0c)
	.dwattr DW$328, DW_AT_frame_base[DW_OP_breg20 -32]
	.dwattr DW$328, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",663,64

;***************************************************************
;* FNAME: __f_findpath                  FR SIZE:  30           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            6 Parameter, 18 Auto,  6 SOE     *
;***************************************************************

__f_findpath:
;* AR4   assigned to _vi
DW$329	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$329, DW_AT_type(*DW$T$89)
	.dwattr DW$329, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _fsname
DW$330	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fsname"), DW_AT_symbol_name("_fsname")
	.dwattr DW$330, DW_AT_type(*DW$T$149)
	.dwattr DW$330, DW_AT_location[DW_OP_reg14]
DW$331	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pos"), DW_AT_symbol_name("_pos")
	.dwattr DW$331, DW_AT_type(*DW$T$66)
	.dwattr DW$331, DW_AT_location[DW_OP_breg20 -34]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#24
        MOVL      XAR1,XAR5             ; |663| 
        MOVB      ACC,#1
        MOVL      XAR2,*-SP[34]         ; |663| 
        ADDL      ACC,XAR1
        MOVL      *-SP[22],ACC          ; |664| 
        MOVL      *-SP[24],ACC          ; |665| 
        MOVL      XAR5,XAR2             ; |668| 
        MOVL      XAR3,XAR4             ; |663| 
        MOVB      ACC,#0
        LCR       #__f_clustertopos     ; |668| 
        ; call occurs [#__f_clustertopos] ; |668| 
        BF        L113,UNC              ; |670| 
        ; branch occurs ; |670| 
L108:    
DW$L$__f_findpath$2$B:
        MOVL      ACC,*-SP[22]          ; |695| 
        MOVB      XAR4,#1               ; |695| 
        ADDU      ACC,AR4               ; |695| 
        MOVL      *-SP[22],ACC          ; |695| 
        BF        L113,UNC              ; |696| 
        ; branch occurs ; |696| 
DW$L$__f_findpath$2$E:
L109:    
DW$L$__f_findpath$3$B:
        MOVL      XAR6,*-SP[22]
        MOVL      ACC,*-SP[24]
        CMPL      ACC,XAR6              ; |725| 
        BF        L111,EQ               ; |725| 
        ; branchcc occurs ; |725| 
DW$L$__f_findpath$3$E:
DW$L$__f_findpath$4$B:
        MOVB      AH,#0
        MOV       AL,*-SP[20]           ; |731| 
        BF        L112,LEQ              ; |731| 
        ; branchcc occurs ; |731| 
DW$L$__f_findpath$4$E:
L110:    
DW$L$__f_findpath$5$B:
	.dwpsn	"fat.c",731,0
        MOVL      XAR4,*-SP[22]
        MOV       AL,*XAR4++            ; |731| 
        MOVL      *-SP[22],XAR4         ; |731| 
        MOVL      XAR4,*-SP[24]         ; |731| 
        ADDB      AH,#1                 ; |731| 
        MOV       *XAR4++,AL            ; |731| 
        MOV       AL,*-SP[20]           ; |731| 
        CMP       AL,AH                 ; |731| 
        MOVL      *-SP[24],XAR4         ; |731| 
        BF        L110,GT               ; |731| 
        ; branchcc occurs ; |731| 
DW$L$__f_findpath$5$E:
DW$L$__f_findpath$6$B:
        BF        L112,UNC              ; |731| 
        ; branch occurs ; |731| 
DW$L$__f_findpath$6$E:
L111:    
DW$L$__f_findpath$7$B:
        MOVL      XAR6,*-SP[22]         ; |726| 
        SETC      SXM
        MOV       ACC,*-SP[20]          ; |726| 
        ADDL      XAR6,ACC
        MOVL      *-SP[22],XAR6         ; |726| 
        MOVL      XAR6,*-SP[24]         ; |727| 
        MOV       ACC,*-SP[20]          ; |727| 
        ADDL      XAR6,ACC
        MOVL      *-SP[24],XAR6         ; |727| 
DW$L$__f_findpath$7$E:
L112:    
DW$L$__f_findpath$8$B:
        MOVL      XAR4,*-SP[22]
        MOV       AL,*+XAR4[0]          ; |735| 
        BF        L122,EQ               ; |735| 
        ; branchcc occurs ; |735| 
DW$L$__f_findpath$8$E:
DW$L$__f_findpath$9$B:
        MOVL      ACC,*-SP[22]          ; |736| 
        MOVB      XAR4,#1               ; |736| 
        ADDU      ACC,AR4               ; |736| 
        MOVL      XAR4,*-SP[24]         ; |737| 
        MOVL      *-SP[22],ACC          ; |736| 
        MOV       *XAR4++,#47           ; |737| 
        MOVL      *-SP[24],XAR4         ; |737| 
DW$L$__f_findpath$9$E:
L113:    
DW$L$__f_findpath$10$B:
        MOVL      XAR4,*-SP[22]
        MOV       AL,*+XAR4[0]          ; |738| 
        BF        L122,EQ               ; |738| 
        ; branchcc occurs ; |738| 
DW$L$__f_findpath$10$E:
DW$L$__f_findpath$11$B:
        MOVZ      AR4,SP                ; |674| 
        MOVZ      AR5,SP                ; |674| 
        SUBB      XAR4,#19              ; |674| 
        MOVL      *-SP[2],XAR4          ; |674| 
        MOVL      XAR4,*-SP[22]         ; |674| 
        SUBB      XAR5,#16              ; |674| 
        LCR       #__f_setnameext       ; |674| 
        ; call occurs [#__f_setnameext] ; |674| 
        MOV       *-SP[20],AL           ; |674| 
        MOVL      ACC,*+XAR2[0]         ; |676| 
        BF        L114,NEQ              ; |676| 
        ; branchcc occurs ; |676| 
DW$L$__f_findpath$11$E:
DW$L$__f_findpath$12$B:
        MOV       AL,*-SP[20]
        CMPB      AL,#1                 ; |676| 
        BF        L114,NEQ              ; |676| 
        ; branchcc occurs ; |676| 
DW$L$__f_findpath$12$E:
DW$L$__f_findpath$13$B:
        MOV       AL,*-SP[16]           ; |676| 
        CMPB      AL,#46                ; |676| 
        BF        L115,EQ               ; |676| 
        ; branchcc occurs ; |676| 
DW$L$__f_findpath$13$E:
L114:    
DW$L$__f_findpath$14$B:
        MOVZ      AR4,SP                ; |680| 
        SUBB      XAR4,#19              ; |680| 
        MOVL      *-SP[2],XAR4          ; |680| 
        MOVZ      AR4,SP                ; |680| 
        MOVZ      AR5,SP                ; |680| 
        MOVL      *-SP[4],XAR2          ; |680| 
        SUBB      XAR4,#8               ; |680| 
        MOVL      *-SP[6],XAR4          ; |680| 
        MOVL      XAR4,XAR3             ; |680| 
        SUBB      XAR5,#16              ; |680| 
        LCR       #__f_findfile         ; |680| 
        ; call occurs [#__f_findfile] ; |680| 
        CMPB      AL,#0                 ; |680| 
        BF        L117,EQ               ; |680| 
        ; branchcc occurs ; |680| 
DW$L$__f_findpath$14$E:
DW$L$__f_findpath$15$B:
        MOVL      XAR4,*-SP[8]          ; |680| 
        MOVB      XAR0,#11              ; |680| 
        TBIT      *+XAR4[AR0],#4        ; |680| 
        BF        L117,NTC              ; |680| 
        ; branchcc occurs ; |680| 
DW$L$__f_findpath$15$E:
DW$L$__f_findpath$16$B:
        MOVL      XAR5,*-SP[8]          ; |683| 
        MOVL      XAR4,XAR3             ; |683| 
        LCR       #__f_getdecluster     ; |683| 
        ; call occurs [#__f_getdecluster] ; |683| 
        BF        L116,UNC              ; |683| 
        ; branch occurs ; |683| 
DW$L$__f_findpath$16$E:
L115:    
DW$L$__f_findpath$17$B:
        MOVB      ACC,#0
DW$L$__f_findpath$17$E:
L116:    
DW$L$__f_findpath$18$B:
        MOVL      XAR5,XAR2             ; |677| 
        MOVL      XAR4,XAR3             ; |677| 
        LCR       #__f_clustertopos     ; |677| 
        ; call occurs [#__f_clustertopos] ; |677| 
        MOV       AL,*-SP[16]           ; |683| 
        CMPB      AL,#46                ; |683| 
        BF        L109,NEQ              ; |683| 
        ; branchcc occurs ; |683| 
DW$L$__f_findpath$18$E:
DW$L$__f_findpath$19$B:
        MOV       AL,*-SP[20]
        CMPB      AL,#1                 ; |688| 
        BF        L120,EQ               ; |688| 
        ; branchcc occurs ; |688| 
DW$L$__f_findpath$19$E:
DW$L$__f_findpath$20$B:
        MOV       AL,*-SP[15]           ; |699| 
        CMPB      AL,#46                ; |699| 
        BF        L117,NEQ              ; |699| 
        ; branchcc occurs ; |699| 
DW$L$__f_findpath$20$E:
DW$L$__f_findpath$21$B:
        MOV       AL,*-SP[20]
        CMPB      AL,#2                 ; |699| 
        BF        L117,NEQ              ; |699| 
        ; branchcc occurs ; |699| 
DW$L$__f_findpath$21$E:
DW$L$__f_findpath$22$B:
        MOVL      XAR6,*-SP[22]         ; |702| 
        SETC      SXM
        MOV       ACC,AL                ; |702| 
        ADDL      XAR6,ACC
        MOVL      *-SP[22],XAR6         ; |702| 
        MOVL      XAR6,*-SP[24]         ; |704| 
        MOVB      XAR4,#1               ; |704| 
        MOVL      ACC,XAR1              ; |704| 
        ADDU      ACC,AR4               ; |704| 
        CMPL      ACC,XAR6              ; |704| 
        BF        L118,NEQ              ; |704| 
        ; branchcc occurs ; |704| 
DW$L$__f_findpath$22$E:
L117:    
        MOVB      AL,#0
        BF        L123,UNC              ; |704| 
        ; branch occurs ; |704| 
L118:    
DW$L$__f_findpath$24$B:
        MOVL      ACC,*-SP[24]
        SUBB      ACC,#1                ; |706| 
	.dwpsn	"fat.c",707,0
        MOVL      *-SP[24],ACC          ; |706| 
DW$L$__f_findpath$24$E:
L119:    
DW$L$__f_findpath$25$B:
        MOVL      XAR6,*-SP[24]         ; |708| 
        MOVL      ACC,XAR1              ; |708| 
        MOVB      XAR4,#1               ; |708| 
        ADDU      ACC,AR4               ; |708| 
        CMPL      ACC,XAR6              ; |708| 
        BF        L121,EQ               ; |708| 
        ; branchcc occurs ; |708| 
DW$L$__f_findpath$25$E:
DW$L$__f_findpath$26$B:
        MOVL      XAR4,*-SP[24]
        MOV       AL,*--XAR4            ; |710| 
        CMPB      AL,#47                ; |710| 
        MOVL      *-SP[24],XAR4         ; |710| 
	.dwpsn	"fat.c",714,0
        BF        L119,NEQ              ; |710| 
        ; branchcc occurs ; |710| 
DW$L$__f_findpath$26$E:
DW$L$__f_findpath$27$B:
        MOVL      ACC,*-SP[24]          ; |711| 
        MOVB      XAR4,#1               ; |711| 
        ADDU      ACC,AR4               ; |711| 
        MOVL      *-SP[24],ACC          ; |711| 
        BF        L121,UNC              ; |712| 
        ; branch occurs ; |712| 
DW$L$__f_findpath$27$E:
L120:    
DW$L$__f_findpath$28$B:
        MOVL      XAR6,*-SP[22]         ; |689| 
        SETC      SXM
        MOV       ACC,AL                ; |689| 
        ADDL      XAR6,ACC
        MOVL      *-SP[22],XAR6         ; |689| 
DW$L$__f_findpath$28$E:
L121:    
DW$L$__f_findpath$29$B:
        MOVL      XAR4,*-SP[22]
        MOV       AL,*+XAR4[0]          ; |691| 
        BF        L108,NEQ              ; |691| 
        ; branchcc occurs ; |691| 
DW$L$__f_findpath$29$E:
        MOVL      XAR6,*-SP[24]         ; |692| 
        MOVL      ACC,XAR1              ; |692| 
        MOVB      XAR4,#1               ; |692| 
        ADDU      ACC,AR4               ; |692| 
        CMPL      ACC,XAR6              ; |692| 
        BF        L122,EQ               ; |692| 
        ; branchcc occurs ; |692| 
        MOVL      ACC,*-SP[24]
        SUBB      ACC,#1                ; |692| 
        MOVL      *-SP[24],ACC          ; |692| 
L122:    
        MOVL      XAR4,*-SP[24]
        MOV       *+XAR4[0],#0          ; |740| 
        MOVB      AL,#1                 ; |741| 
L123:    
        SUBB      SP,#24                ; |741| 
        MOVL      XAR3,*--SP            ; |741| 
        MOVL      XAR2,*--SP            ; |741| 
        MOVL      XAR1,*--SP            ; |741| 
	.dwpsn	"fat.c",742,1
        LRETR
        ; return occurs

DW$332	.dwtag  DW_TAG_loop
	.dwattr DW$332, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L113:1:1471518973")
	.dwattr DW$332, DW_AT_begin_file("fat.c")
	.dwattr DW$332, DW_AT_begin_line(0x29e)
	.dwattr DW$332, DW_AT_end_line(0x2e2)
DW$333	.dwtag  DW_TAG_loop_range
	.dwattr DW$333, DW_AT_low_pc(DW$L$__f_findpath$10$B)
	.dwattr DW$333, DW_AT_high_pc(DW$L$__f_findpath$10$E)
DW$334	.dwtag  DW_TAG_loop_range
	.dwattr DW$334, DW_AT_low_pc(DW$L$__f_findpath$3$B)
	.dwattr DW$334, DW_AT_high_pc(DW$L$__f_findpath$3$E)
DW$335	.dwtag  DW_TAG_loop_range
	.dwattr DW$335, DW_AT_low_pc(DW$L$__f_findpath$4$B)
	.dwattr DW$335, DW_AT_high_pc(DW$L$__f_findpath$4$E)
DW$336	.dwtag  DW_TAG_loop_range
	.dwattr DW$336, DW_AT_low_pc(DW$L$__f_findpath$6$B)
	.dwattr DW$336, DW_AT_high_pc(DW$L$__f_findpath$6$E)
DW$337	.dwtag  DW_TAG_loop_range
	.dwattr DW$337, DW_AT_low_pc(DW$L$__f_findpath$7$B)
	.dwattr DW$337, DW_AT_high_pc(DW$L$__f_findpath$7$E)
DW$338	.dwtag  DW_TAG_loop_range
	.dwattr DW$338, DW_AT_low_pc(DW$L$__f_findpath$8$B)
	.dwattr DW$338, DW_AT_high_pc(DW$L$__f_findpath$8$E)
DW$339	.dwtag  DW_TAG_loop_range
	.dwattr DW$339, DW_AT_low_pc(DW$L$__f_findpath$11$B)
	.dwattr DW$339, DW_AT_high_pc(DW$L$__f_findpath$11$E)
DW$340	.dwtag  DW_TAG_loop_range
	.dwattr DW$340, DW_AT_low_pc(DW$L$__f_findpath$12$B)
	.dwattr DW$340, DW_AT_high_pc(DW$L$__f_findpath$12$E)
DW$341	.dwtag  DW_TAG_loop_range
	.dwattr DW$341, DW_AT_low_pc(DW$L$__f_findpath$13$B)
	.dwattr DW$341, DW_AT_high_pc(DW$L$__f_findpath$13$E)
DW$342	.dwtag  DW_TAG_loop_range
	.dwattr DW$342, DW_AT_low_pc(DW$L$__f_findpath$14$B)
	.dwattr DW$342, DW_AT_high_pc(DW$L$__f_findpath$14$E)
DW$343	.dwtag  DW_TAG_loop_range
	.dwattr DW$343, DW_AT_low_pc(DW$L$__f_findpath$15$B)
	.dwattr DW$343, DW_AT_high_pc(DW$L$__f_findpath$15$E)
DW$344	.dwtag  DW_TAG_loop_range
	.dwattr DW$344, DW_AT_low_pc(DW$L$__f_findpath$16$B)
	.dwattr DW$344, DW_AT_high_pc(DW$L$__f_findpath$16$E)
DW$345	.dwtag  DW_TAG_loop_range
	.dwattr DW$345, DW_AT_low_pc(DW$L$__f_findpath$17$B)
	.dwattr DW$345, DW_AT_high_pc(DW$L$__f_findpath$17$E)
DW$346	.dwtag  DW_TAG_loop_range
	.dwattr DW$346, DW_AT_low_pc(DW$L$__f_findpath$18$B)
	.dwattr DW$346, DW_AT_high_pc(DW$L$__f_findpath$18$E)
DW$347	.dwtag  DW_TAG_loop_range
	.dwattr DW$347, DW_AT_low_pc(DW$L$__f_findpath$19$B)
	.dwattr DW$347, DW_AT_high_pc(DW$L$__f_findpath$19$E)
DW$348	.dwtag  DW_TAG_loop_range
	.dwattr DW$348, DW_AT_low_pc(DW$L$__f_findpath$20$B)
	.dwattr DW$348, DW_AT_high_pc(DW$L$__f_findpath$20$E)
DW$349	.dwtag  DW_TAG_loop_range
	.dwattr DW$349, DW_AT_low_pc(DW$L$__f_findpath$21$B)
	.dwattr DW$349, DW_AT_high_pc(DW$L$__f_findpath$21$E)
DW$350	.dwtag  DW_TAG_loop_range
	.dwattr DW$350, DW_AT_low_pc(DW$L$__f_findpath$22$B)
	.dwattr DW$350, DW_AT_high_pc(DW$L$__f_findpath$22$E)
DW$351	.dwtag  DW_TAG_loop_range
	.dwattr DW$351, DW_AT_low_pc(DW$L$__f_findpath$24$B)
	.dwattr DW$351, DW_AT_high_pc(DW$L$__f_findpath$24$E)
DW$352	.dwtag  DW_TAG_loop_range
	.dwattr DW$352, DW_AT_low_pc(DW$L$__f_findpath$27$B)
	.dwattr DW$352, DW_AT_high_pc(DW$L$__f_findpath$27$E)
DW$353	.dwtag  DW_TAG_loop_range
	.dwattr DW$353, DW_AT_low_pc(DW$L$__f_findpath$28$B)
	.dwattr DW$353, DW_AT_high_pc(DW$L$__f_findpath$28$E)
DW$354	.dwtag  DW_TAG_loop_range
	.dwattr DW$354, DW_AT_low_pc(DW$L$__f_findpath$29$B)
	.dwattr DW$354, DW_AT_high_pc(DW$L$__f_findpath$29$E)
DW$355	.dwtag  DW_TAG_loop_range
	.dwattr DW$355, DW_AT_low_pc(DW$L$__f_findpath$9$B)
	.dwattr DW$355, DW_AT_high_pc(DW$L$__f_findpath$9$E)
DW$356	.dwtag  DW_TAG_loop_range
	.dwattr DW$356, DW_AT_low_pc(DW$L$__f_findpath$2$B)
	.dwattr DW$356, DW_AT_high_pc(DW$L$__f_findpath$2$E)

DW$357	.dwtag  DW_TAG_loop
	.dwattr DW$357, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L110:2:1471518973")
	.dwattr DW$357, DW_AT_begin_file("fat.c")
	.dwattr DW$357, DW_AT_begin_line(0x2db)
	.dwattr DW$357, DW_AT_end_line(0x2db)
DW$358	.dwtag  DW_TAG_loop_range
	.dwattr DW$358, DW_AT_low_pc(DW$L$__f_findpath$5$B)
	.dwattr DW$358, DW_AT_high_pc(DW$L$__f_findpath$5$E)
	.dwendtag DW$357


DW$359	.dwtag  DW_TAG_loop
	.dwattr DW$359, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L119:2:1471518973")
	.dwattr DW$359, DW_AT_begin_file("fat.c")
	.dwattr DW$359, DW_AT_begin_line(0x2c3)
	.dwattr DW$359, DW_AT_end_line(0x2ca)
DW$360	.dwtag  DW_TAG_loop_range
	.dwattr DW$360, DW_AT_low_pc(DW$L$__f_findpath$25$B)
	.dwattr DW$360, DW_AT_high_pc(DW$L$__f_findpath$25$E)
DW$361	.dwtag  DW_TAG_loop_range
	.dwattr DW$361, DW_AT_low_pc(DW$L$__f_findpath$26$B)
	.dwattr DW$361, DW_AT_high_pc(DW$L$__f_findpath$26$E)
	.dwendtag DW$359

	.dwendtag DW$332

	.dwattr DW$328, DW_AT_end_file("fat.c")
	.dwattr DW$328, DW_AT_end_line(0x2e6)
	.dwattr DW$328, DW_AT_end_column(0x01)
	.dwendtag DW$328

	.sect	".text"
	.global	_fn_getdcwd

DW$362	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_getdcwd"), DW_AT_symbol_name("_fn_getdcwd")
	.dwattr DW$362, DW_AT_low_pc(_fn_getdcwd)
	.dwattr DW$362, DW_AT_high_pc(0x00)
	.dwattr DW$362, DW_AT_begin_file("fat.c")
	.dwattr DW$362, DW_AT_begin_line(0x2fc)
	.dwattr DW$362, DW_AT_begin_column(0x05)
	.dwattr DW$362, DW_AT_frame_base[DW_OP_breg20 -12]
	.dwattr DW$362, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",764,69

;***************************************************************
;* FNAME: _fn_getdcwd                   FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  6 SOE     *
;***************************************************************

_fn_getdcwd:
;* AR4   assigned to _fm
DW$363	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$363, DW_AT_type(*DW$T$117)
	.dwattr DW$363, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _drivenum
DW$364	.dwtag  DW_TAG_formal_parameter, DW_AT_name("drivenum"), DW_AT_symbol_name("_drivenum")
	.dwattr DW$364, DW_AT_type(*DW$T$10)
	.dwattr DW$364, DW_AT_location[DW_OP_reg0]
;* AR5   assigned to _buffer
DW$365	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buffer"), DW_AT_symbol_name("_buffer")
	.dwattr DW$365, DW_AT_type(*DW$T$59)
	.dwattr DW$365, DW_AT_location[DW_OP_reg14]
;* AH    assigned to _maxlen
DW$366	.dwtag  DW_TAG_formal_parameter, DW_AT_name("maxlen"), DW_AT_symbol_name("_maxlen")
	.dwattr DW$366, DW_AT_type(*DW$T$10)
	.dwattr DW$366, DW_AT_location[DW_OP_reg1]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#4
        MOVL      XAR1,XAR5             ; |764| 
        CMPB      AL,#0                 ; |769| 
        MOVL      XAR2,XAR4             ; |764| 
        MOV       *-SP[2],AL            ; |764| 
        MOV       *-SP[1],AH            ; |764| 
        BF        L124,LT               ; |769| 
        ; branchcc occurs ; |769| 
        CMPB      AL,#0                 ; |769| 
        BF        L125,LEQ              ; |769| 
        ; branchcc occurs ; |769| 
L124:    
        MOVB      AL,#1                 ; |769| 
        BF        L130,UNC              ; |769| 
        ; branch occurs ; |769| 
L125:    
        MOV       T,*-SP[2]
        MOVL      XAR4,#_f_filesystem   ; |770| 
;       MOV       T,T Implicitly done by - MPY ACC,OP,#IMM ; |770| 
        MPY       ACC,AL,#1148          ; |770| 
        ADDL      XAR4,ACC
        MOV       T,*-SP[2]             ; |770| 
        MPYB      P,T,#20               ; |772| 
        MOVL      ACC,XAR2              ; |772| 
        MOVL      *-SP[4],XAR4          ; |770| 
        ADDL      ACC,P
        MOVL      XAR5,*-SP[4]          ; |774| 
        MOVL      XAR4,XAR2             ; |774| 
        ADDB      ACC,#3                ; |772| 
        MOVL      XAR3,ACC              ; |772| 
        LCR       #__f_mutex_get        ; |774| 
        ; call occurs [#__f_mutex_get] ; |774| 
        CMPB      AL,#0                 ; |774| 
        BF        L130,NEQ              ; |774| 
        ; branchcc occurs ; |774| 
        MOVL      XAR4,*-SP[4]
        LCR       #__f_checkstatus      ; |777| 
        ; call occurs [#__f_checkstatus] ; |777| 
        CMPB      AL,#0                 ; |777| 
        BF        L126,EQ               ; |777| 
        ; branchcc occurs ; |777| 
        MOV       T,*-SP[2]
        MPYB      ACC,T,#20             ; |778| 
        ADDL      XAR2,ACC
        MOV       *+XAR2[3],#0          ; |778| 
        MOVL      XAR4,*-SP[4]          ; |779| 
        MOVB      ACC,#1
        MOVL      *+XAR4[0],ACC         ; |779| 
L126:    
        MOV       AL,*-SP[1]
        BF        L129,EQ               ; |782| 
        ; branchcc occurs ; |782| 
        ADDB      AL,#-1
        MOVB      XAR6,#0
        MOV       *-SP[1],AL            ; |786| 
        BF        L128,LEQ              ; |786| 
        ; branchcc occurs ; |786| 
L127:    
DW$L$_fn_getdcwd$9$B:
	.dwpsn	"fat.c",786,0
        MOVL      XAR4,XAR3             ; |787| 
        SETC      SXM
        MOV       AL,AR6
        MOV       ACC,AL                ; |787| 
        ADDL      XAR4,ACC
        MOVZ      AR7,*+XAR4[0]         ; |787| 
        MOVL      XAR4,XAR1             ; |788| 
        MOV       AL,AR6                ; |787| 
        MOV       ACC,AL                ; |788| 
        ADDL      XAR4,ACC
        MOV       AL,AR7                ; |788| 
        MOV       *+XAR4[0],AR7         ; |788| 
        BF        L128,EQ               ; |789| 
        ; branchcc occurs ; |789| 
DW$L$_fn_getdcwd$9$E:
DW$L$_fn_getdcwd$10$B:
        MOV       AL,AR6
        ADDB      AL,#1                 ; |786| 
        MOVZ      AR6,AL                ; |786| 
        MOV       AL,*-SP[1]            ; |786| 
        CMP       AL,AR6                ; |786| 
	.dwpsn	"fat.c",790,0
        BF        L127,GT               ; |786| 
        ; branchcc occurs ; |786| 
DW$L$_fn_getdcwd$10$E:
L128:    
        MOV       AL,AR6
        SETC      SXM
        MOV       ACC,AL                ; |792| 
        ADDL      XAR1,ACC
        MOV       *+XAR1[0],#0          ; |792| 
L129:    
        MOVB      AL,#0
L130:    
        SUBB      SP,#4                 ; |794| 
        MOVL      XAR3,*--SP            ; |794| 
        MOVL      XAR2,*--SP            ; |794| 
        MOVL      XAR1,*--SP            ; |794| 
	.dwpsn	"fat.c",795,1
        LRETR
        ; return occurs

DW$367	.dwtag  DW_TAG_loop
	.dwattr DW$367, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L127:1:1471518973")
	.dwattr DW$367, DW_AT_begin_file("fat.c")
	.dwattr DW$367, DW_AT_begin_line(0x312)
	.dwattr DW$367, DW_AT_end_line(0x316)
DW$368	.dwtag  DW_TAG_loop_range
	.dwattr DW$368, DW_AT_low_pc(DW$L$_fn_getdcwd$9$B)
	.dwattr DW$368, DW_AT_high_pc(DW$L$_fn_getdcwd$9$E)
DW$369	.dwtag  DW_TAG_loop_range
	.dwattr DW$369, DW_AT_low_pc(DW$L$_fn_getdcwd$10$B)
	.dwattr DW$369, DW_AT_high_pc(DW$L$_fn_getdcwd$10$E)
	.dwendtag DW$367

	.dwattr DW$362, DW_AT_end_file("fat.c")
	.dwattr DW$362, DW_AT_end_line(0x31b)
	.dwattr DW$362, DW_AT_end_column(0x01)
	.dwendtag DW$362

	.sect	".text"
	.global	_fn_getcwd

DW$370	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_getcwd"), DW_AT_symbol_name("_fn_getcwd")
	.dwattr DW$370, DW_AT_low_pc(_fn_getcwd)
	.dwattr DW$370, DW_AT_high_pc(0x00)
	.dwattr DW$370, DW_AT_begin_file("fat.c")
	.dwattr DW$370, DW_AT_begin_line(0x32e)
	.dwattr DW$370, DW_AT_begin_column(0x05)
	.dwattr DW$370, DW_AT_frame_base[DW_OP_breg20 -12]
	.dwattr DW$370, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",814,54

;***************************************************************
;* FNAME: _fn_getcwd                    FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  6 SOE     *
;***************************************************************

_fn_getcwd:
;* AR4   assigned to _fm
DW$371	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$371, DW_AT_type(*DW$T$117)
	.dwattr DW$371, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _buffer
DW$372	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buffer"), DW_AT_symbol_name("_buffer")
	.dwattr DW$372, DW_AT_type(*DW$T$59)
	.dwattr DW$372, DW_AT_location[DW_OP_reg14]
;* AL    assigned to _maxlen
DW$373	.dwtag  DW_TAG_formal_parameter, DW_AT_name("maxlen"), DW_AT_symbol_name("_maxlen")
	.dwattr DW$373, DW_AT_type(*DW$T$10)
	.dwattr DW$373, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#4
        MOVL      XAR1,XAR5             ; |814| 
        MOVL      XAR2,XAR4             ; |814| 
        MOV       *-SP[1],AL            ; |814| 
        LCR       #_fn_getdrive         ; |821| 
        ; call occurs [#_fn_getdrive] ; |821| 
        CMPB      AL,#0                 ; |821| 
        MOV       *-SP[2],AL            ; |821| 
        BF        L131,LT               ; |821| 
        ; branchcc occurs ; |821| 
        CMPB      AL,#0                 ; |821| 
        BF        L132,LEQ              ; |821| 
        ; branchcc occurs ; |821| 
L131:    
        MOVB      AL,#1                 ; |822| 
        BF        L138,UNC              ; |822| 
        ; branch occurs ; |822| 
L132:    
        MOV       T,*-SP[2]
        MOVL      XAR4,#_f_filesystem   ; |823| 
;       MOV       T,T Implicitly done by - MPY ACC,OP,#IMM ; |823| 
        MPY       ACC,AL,#1148          ; |823| 
        ADDL      XAR4,ACC
        MOV       T,*-SP[2]             ; |823| 
        MPYB      P,T,#20               ; |825| 
        MOVL      ACC,XAR2              ; |825| 
        MOVL      *-SP[4],XAR4          ; |823| 
        ADDL      ACC,P
        MOVL      XAR5,*-SP[4]          ; |827| 
        MOVL      XAR4,XAR2             ; |827| 
        ADDB      ACC,#3                ; |825| 
        MOVL      XAR3,ACC              ; |825| 
        LCR       #__f_mutex_get        ; |827| 
        ; call occurs [#__f_mutex_get] ; |827| 
        CMPB      AL,#0                 ; |827| 
        BF        L138,NEQ              ; |827| 
        ; branchcc occurs ; |827| 
        MOVL      XAR4,*-SP[4]
        LCR       #__f_checkstatus      ; |830| 
        ; call occurs [#__f_checkstatus] ; |830| 
        CMPB      AL,#0                 ; |830| 
        BF        L133,EQ               ; |830| 
        ; branchcc occurs ; |830| 
        MOV       T,*-SP[2]
        MPYB      ACC,T,#20             ; |831| 
        ADDL      XAR2,ACC
        MOV       *+XAR2[3],#0          ; |831| 
        MOVL      XAR4,*-SP[4]          ; |832| 
        MOVB      ACC,#1
        MOVL      *+XAR4[0],ACC         ; |832| 
L133:    
        MOV       AL,*-SP[1]
        BF        L137,EQ               ; |835| 
        ; branchcc occurs ; |835| 
        ADDB      AL,#-1
        MOV       *-SP[1],AL            ; |837| 
        BF        L134,EQ               ; |837| 
        ; branchcc occurs ; |837| 
        MOV       *XAR1++,#47           ; |841| 
        MOV       AL,*-SP[1]            ; |841| 
        ADDB      AL,#-1
        MOV       *-SP[1],AL            ; |842| 
L134:    
        CMPB      AL,#0                 ; |846| 
        MOVB      XAR6,#0
        BF        L136,LEQ              ; |846| 
        ; branchcc occurs ; |846| 
L135:    
DW$L$_fn_getcwd$11$B:
	.dwpsn	"fat.c",846,0
        MOVL      XAR4,XAR3             ; |847| 
        SETC      SXM
        MOV       AL,AR6
        MOV       ACC,AL                ; |847| 
        ADDL      XAR4,ACC
        MOVZ      AR7,*+XAR4[0]         ; |847| 
        MOVL      XAR4,XAR1             ; |848| 
        MOV       AL,AR6                ; |847| 
        MOV       ACC,AL                ; |848| 
        ADDL      XAR4,ACC
        MOV       AL,AR7                ; |848| 
        MOV       *+XAR4[0],AR7         ; |848| 
        BF        L136,EQ               ; |849| 
        ; branchcc occurs ; |849| 
DW$L$_fn_getcwd$11$E:
DW$L$_fn_getcwd$12$B:
        MOV       AL,AR6
        ADDB      AL,#1                 ; |846| 
        MOVZ      AR6,AL                ; |846| 
        MOV       AL,*-SP[1]            ; |846| 
        CMP       AL,AR6                ; |846| 
	.dwpsn	"fat.c",850,0
        BF        L135,GT               ; |846| 
        ; branchcc occurs ; |846| 
DW$L$_fn_getcwd$12$E:
L136:    
        MOV       AL,AR6
        SETC      SXM
        MOV       ACC,AL                ; |852| 
        ADDL      XAR1,ACC
        MOV       *+XAR1[0],#0          ; |852| 
L137:    
        MOVB      AL,#0
L138:    
        SUBB      SP,#4                 ; |854| 
        MOVL      XAR3,*--SP            ; |854| 
        MOVL      XAR2,*--SP            ; |854| 
        MOVL      XAR1,*--SP            ; |854| 
	.dwpsn	"fat.c",855,1
        LRETR
        ; return occurs

DW$374	.dwtag  DW_TAG_loop
	.dwattr DW$374, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L135:1:1471518973")
	.dwattr DW$374, DW_AT_begin_file("fat.c")
	.dwattr DW$374, DW_AT_begin_line(0x34e)
	.dwattr DW$374, DW_AT_end_line(0x352)
DW$375	.dwtag  DW_TAG_loop_range
	.dwattr DW$375, DW_AT_low_pc(DW$L$_fn_getcwd$11$B)
	.dwattr DW$375, DW_AT_high_pc(DW$L$_fn_getcwd$11$E)
DW$376	.dwtag  DW_TAG_loop_range
	.dwattr DW$376, DW_AT_low_pc(DW$L$_fn_getcwd$12$B)
	.dwattr DW$376, DW_AT_high_pc(DW$L$_fn_getcwd$12$E)
	.dwendtag DW$374

	.dwattr DW$370, DW_AT_end_file("fat.c")
	.dwattr DW$370, DW_AT_end_line(0x357)
	.dwattr DW$370, DW_AT_end_column(0x01)
	.dwendtag DW$370

	.sect	".text"
	.global	_fn_findfirst

DW$377	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_findfirst"), DW_AT_symbol_name("_fn_findfirst")
	.dwattr DW$377, DW_AT_low_pc(_fn_findfirst)
	.dwattr DW$377, DW_AT_high_pc(0x00)
	.dwattr DW$377, DW_AT_begin_file("fat.c")
	.dwattr DW$377, DW_AT_begin_line(0x36b)
	.dwattr DW$377, DW_AT_begin_column(0x05)
	.dwattr DW$377, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$377, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",875,65

;***************************************************************
;* FNAME: _fn_findfirst                 FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  2 Auto,  4 SOE     *
;***************************************************************

_fn_findfirst:
;* AR4   assigned to _fm
DW$378	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$378, DW_AT_type(*DW$T$117)
	.dwattr DW$378, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _filename
DW$379	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filename"), DW_AT_symbol_name("_filename")
	.dwattr DW$379, DW_AT_type(*DW$T$146)
	.dwattr DW$379, DW_AT_location[DW_OP_reg14]
DW$380	.dwtag  DW_TAG_formal_parameter, DW_AT_name("find"), DW_AT_symbol_name("_find")
	.dwattr DW$380, DW_AT_type(*DW$T$163)
	.dwattr DW$380, DW_AT_location[DW_OP_breg20 -12]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        ADDB      SP,#4
        MOVL      XAR2,*-SP[12]         ; |875| 
        MOVB      ACC,#38
        MOVL      XAR1,XAR4             ; |875| 
        ADDL      ACC,XAR2
        MOVL      *-SP[2],ACC           ; |879| 
        LCR       #__f_setfsname        ; |879| 
        ; call occurs [#__f_setfsname] ; |879| 
        CMPB      AL,#0                 ; |879| 
        BF        L139,NEQ              ; |879| 
        ; branchcc occurs ; |879| 
        MOVB      ACC,#59
        ADDL      ACC,XAR2
        MOVL      XAR4,ACC              ; |880| 
        MOVB      ACC,#67
        ADDL      ACC,XAR2
        MOVL      XAR5,ACC              ; |880| 
        LCR       #__f_checkname        ; |880| 
        ; call occurs [#__f_checkname] ; |880| 
        TEST      ACC                   ; |880| 
        BF        L140,EQ               ; |880| 
        ; branchcc occurs ; |880| 
L139:    
        MOVB      AL,#4                 ; |880| 
        BF        L142,UNC              ; |880| 
        ; branch occurs ; |880| 
L140:    
        MOVZ      AR5,SP                ; |882| 
        MOVB      XAR0,#38              ; |882| 
        MOVL      XAR4,XAR1             ; |882| 
        MOV       AL,*+XAR2[AR0]        ; |882| 
        SUBB      XAR5,#4               ; |882| 
        LCR       #__f_getvolume        ; |882| 
        ; call occurs [#__f_getvolume] ; |882| 
        CMPB      AL,#0                 ; |882| 
        BF        L142,NEQ              ; |882| 
        ; branchcc occurs ; |882| 
        MOVB      ACC,#70
        ADDL      ACC,XAR2
        MOVL      *-SP[2],ACC           ; |882| 
        MOVB      ACC,#38
        MOVL      XAR4,*-SP[4]          ; |882| 
        ADDL      ACC,XAR2
        MOVL      XAR5,ACC              ; |882| 
        LCR       #__f_findpath         ; |882| 
        ; call occurs [#__f_findpath] ; |882| 
        CMPB      AL,#0                 ; |882| 
        BF        L141,EQ               ; |882| 
        ; branchcc occurs ; |882| 
        MOVL      XAR5,XAR2             ; |882| 
        MOVL      XAR4,XAR1             ; |882| 
        LCR       #_fn_findnext         ; |882| 
        ; call occurs [#_fn_findnext] ; |882| 
        BF        L142,UNC              ; |882| 
        ; branch occurs ; |882| 
L141:    
        MOVB      AL,#3                 ; |882| 
L142:    
        SUBB      SP,#4                 ; |882| 
        MOVL      XAR2,*--SP            ; |882| 
        MOVL      XAR1,*--SP            ; |882| 
	.dwpsn	"fat.c",888,1
        LRETR
        ; return occurs
	.dwattr DW$377, DW_AT_end_file("fat.c")
	.dwattr DW$377, DW_AT_end_line(0x378)
	.dwattr DW$377, DW_AT_end_column(0x01)
	.dwendtag DW$377

	.sect	".text"
	.global	_fn_findnext

DW$381	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_findnext"), DW_AT_symbol_name("_fn_findnext")
	.dwattr DW$381, DW_AT_low_pc(_fn_findnext)
	.dwattr DW$381, DW_AT_high_pc(0x00)
	.dwattr DW$381, DW_AT_begin_file("fat.c")
	.dwattr DW$381, DW_AT_begin_line(0x38b)
	.dwattr DW$381, DW_AT_begin_column(0x05)
	.dwattr DW$381, DW_AT_frame_base[DW_OP_breg20 -14]
	.dwattr DW$381, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",907,43

;***************************************************************
;* FNAME: _fn_findnext                  FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            6 Parameter,  4 Auto,  2 SOE     *
;***************************************************************

_fn_findnext:
;* AR4   assigned to _fm
DW$382	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$382, DW_AT_type(*DW$T$117)
	.dwattr DW$382, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _find
DW$383	.dwtag  DW_TAG_formal_parameter, DW_AT_name("find"), DW_AT_symbol_name("_find")
	.dwattr DW$383, DW_AT_type(*DW$T$163)
	.dwattr DW$383, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        ADDB      SP,#10
        MOVL      XAR1,XAR5             ; |907| 
        MOVZ      AR5,SP                ; |913| 
        MOVB      XAR0,#38              ; |913| 
        SUBB      XAR5,#10              ; |913| 
        MOV       AL,*+XAR1[AR0]        ; |913| 
        LCR       #__f_getvolume        ; |913| 
        ; call occurs [#__f_getvolume] ; |913| 
        CMPB      AL,#0                 ; |913| 
        BF        L146,NEQ              ; |913| 
        ; branchcc occurs ; |913| 
        MOVB      ACC,#67
        MOVZ      AR4,SP                ; |916| 
        ADDL      ACC,XAR1
        MOVL      *-SP[2],ACC           ; |916| 
        MOVB      ACC,#70
        SUBB      XAR4,#8               ; |916| 
        ADDL      ACC,XAR1
        MOVL      *-SP[4],ACC           ; |916| 
        MOVL      *-SP[6],XAR4          ; |916| 
        MOVB      ACC,#59
        MOVL      XAR4,*-SP[10]         ; |916| 
        ADDL      ACC,XAR1
        MOVL      XAR5,ACC              ; |916| 
        LCR       #__f_findfilewc       ; |916| 
        ; call occurs [#__f_findfilewc] ; |916| 
        CMPB      AL,#0                 ; |916| 
        BF        L143,NEQ              ; |916| 
        ; branchcc occurs ; |916| 
        MOVB      AL,#5                 ; |916| 
        BF        L146,UNC              ; |916| 
        ; branch occurs ; |916| 
L143:    
        MOVB      XAR0,#20              ; |918| 
        SETC      SXM
	.dwpsn	"fat.c",918,0
        MOVB      AL,#0
L144:    
DW$L$_fn_findnext$5$B:
        MOVL      XAR4,*-SP[8]          ; |918| 
        MOV       ACC,AL                ; |918| 
        ADDL      XAR4,ACC
        MOVZ      AR6,*+XAR4[0]         ; |918| 
        MOVL      XAR4,XAR1             ; |918| 
        MOV       ACC,AL                ; |918| 
        ADDL      XAR4,ACC
        ADDB      AL,#1                 ; |918| 
        CMPB      AL,#8                 ; |918| 
        MOV       *+XAR4[AR0],AR6       ; |918| 
        BF        L144,LT               ; |918| 
        ; branchcc occurs ; |918| 
DW$L$_fn_findnext$5$E:
        SETC      SXM
	.dwpsn	"fat.c",919,0
        MOVB      AL,#0
L145:    
DW$L$_fn_findnext$7$B:
        MOVL      XAR4,*-SP[8]          ; |919| 
        MOV       ACC,AL                ; |919| 
        ADDL      XAR4,ACC
        MOVB      XAR0,#8               ; |919| 
        MOVZ      AR6,*+XAR4[AR0]       ; |919| 
        MOVL      XAR4,XAR1             ; |919| 
        MOV       ACC,AL                ; |919| 
        ADDL      XAR4,ACC
        ADDB      AL,#1                 ; |919| 
        MOVB      XAR0,#28              ; |919| 
        CMPB      AL,#3                 ; |919| 
        MOV       *+XAR4[AR0],AR6       ; |919| 
        BF        L145,LT               ; |919| 
        ; branchcc occurs ; |919| 
DW$L$_fn_findnext$7$E:
        MOVL      ACC,*-SP[8]           ; |921| 
        MOVL      XAR4,XAR1             ; |921| 
        ADDB      ACC,#8                ; |921| 
        MOVL      *-SP[2],ACC           ; |921| 
        MOVL      XAR5,*-SP[8]          ; |921| 
        LCR       #__f_getfilename      ; |921| 
        ; call occurs [#__f_getfilename] ; |921| 
        MOVL      XAR4,*-SP[8]          ; |923| 
        MOVB      XAR0,#11              ; |923| 
        MOV       AL,*+XAR4[AR0]        ; |923| 
        MOVB      XAR0,#31              ; |923| 
        MOV       *+XAR1[AR0],AL        ; |923| 
        MOVL      XAR4,*-SP[8]          ; |924| 
        ADDB      XAR4,#24              ; |924| 
        LCR       #__f_getword          ; |924| 
        ; call occurs [#__f_getword] ; |924| 
        MOVB      XAR0,#33              ; |924| 
        MOV       *+XAR1[AR0],AL        ; |924| 
        MOVL      XAR4,*-SP[8]          ; |925| 
        ADDB      XAR4,#22              ; |925| 
        LCR       #__f_getword          ; |925| 
        ; call occurs [#__f_getword] ; |925| 
        MOVB      XAR0,#32              ; |925| 
        MOV       *+XAR1[AR0],AL        ; |925| 
        MOVL      XAR4,*-SP[8]          ; |926| 
        ADDB      XAR4,#28              ; |926| 
        LCR       #__f_getlong          ; |926| 
        ; call occurs [#__f_getlong] ; |926| 
        MOVB      XAR0,#36              ; |926| 
        MOVL      *+XAR1[AR0],ACC       ; |926| 
        MOVL      XAR4,*-SP[10]         ; |927| 
        MOVL      XAR5,*-SP[8]          ; |927| 
        LCR       #__f_getdecluster     ; |927| 
        ; call occurs [#__f_getdecluster] ; |927| 
        MOVB      XAR0,#34              ; |927| 
        MOVL      *+XAR1[AR0],ACC       ; |927| 
        MOVB      ACC,#80
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |928| 
        MOVB      ACC,#1
        ADDL      *+XAR4[0],ACC         ; |928| 
        MOVB      AL,#0
L146:    
        SUBB      SP,#10                ; |930| 
        MOVL      XAR1,*--SP            ; |930| 
	.dwpsn	"fat.c",931,1
        LRETR
        ; return occurs

DW$384	.dwtag  DW_TAG_loop
	.dwattr DW$384, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L145:1:1471518973")
	.dwattr DW$384, DW_AT_begin_file("fat.c")
	.dwattr DW$384, DW_AT_begin_line(0x397)
	.dwattr DW$384, DW_AT_end_line(0x397)
DW$385	.dwtag  DW_TAG_loop_range
	.dwattr DW$385, DW_AT_low_pc(DW$L$_fn_findnext$7$B)
	.dwattr DW$385, DW_AT_high_pc(DW$L$_fn_findnext$7$E)
	.dwendtag DW$384


DW$386	.dwtag  DW_TAG_loop
	.dwattr DW$386, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L144:1:1471518973")
	.dwattr DW$386, DW_AT_begin_file("fat.c")
	.dwattr DW$386, DW_AT_begin_line(0x396)
	.dwattr DW$386, DW_AT_end_line(0x396)
DW$387	.dwtag  DW_TAG_loop_range
	.dwattr DW$387, DW_AT_low_pc(DW$L$_fn_findnext$5$B)
	.dwattr DW$387, DW_AT_high_pc(DW$L$_fn_findnext$5$E)
	.dwendtag DW$386

	.dwattr DW$381, DW_AT_end_file("fat.c")
	.dwattr DW$381, DW_AT_end_line(0x3a3)
	.dwattr DW$381, DW_AT_end_column(0x01)
	.dwendtag DW$381

	.sect	".text"
	.global	_fn_chdir

DW$388	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_chdir"), DW_AT_symbol_name("_fn_chdir")
	.dwattr DW$388, DW_AT_low_pc(_fn_chdir)
	.dwattr DW$388, DW_AT_high_pc(0x00)
	.dwattr DW$388, DW_AT_begin_file("fat.c")
	.dwattr DW$388, DW_AT_begin_line(0x3b6)
	.dwattr DW$388, DW_AT_begin_column(0x05)
	.dwattr DW$388, DW_AT_frame_base[DW_OP_breg20 -52]
	.dwattr DW$388, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",950,47

;***************************************************************
;* FNAME: _fn_chdir                     FR SIZE:  50           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 46 Auto,  2 SOE     *
;***************************************************************

_fn_chdir:
;* AR4   assigned to _fm
DW$389	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$389, DW_AT_type(*DW$T$117)
	.dwattr DW$389, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _dirname
DW$390	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dirname"), DW_AT_symbol_name("_dirname")
	.dwattr DW$390, DW_AT_type(*DW$T$146)
	.dwattr DW$390, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        ADDB      SP,#48
        MOVL      XAR1,XAR4             ; |950| 
        MOVZ      AR4,SP                ; |958| 
        SUBB      XAR4,#48              ; |958| 
        MOVL      *-SP[2],XAR4          ; |958| 
        MOVL      XAR4,XAR1             ; |958| 
        LCR       #__f_setfsname        ; |958| 
        ; call occurs [#__f_setfsname] ; |958| 
        CMPB      AL,#1                 ; |958| 
        BF        L147,EQ               ; |958| 
        ; branchcc occurs ; |958| 
        MOVZ      AR5,SP                ; |961| 
        MOVZ      AR4,SP                ; |961| 
        SUBB      XAR5,#19              ; |961| 
        SUBB      XAR4,#27              ; |961| 
        LCR       #__f_checknamewc      ; |961| 
        ; call occurs [#__f_checknamewc] ; |961| 
        TEST      ACC                   ; |961| 
        BF        L148,EQ               ; |961| 
        ; branchcc occurs ; |961| 
L147:    
        MOVB      AL,#4                 ; |961| 
        BF        L155,UNC              ; |961| 
        ; branch occurs ; |961| 
L148:    
        MOVZ      AR5,SP                ; |963| 
        MOVL      XAR4,XAR1             ; |963| 
        MOV       AL,*-SP[48]           ; |963| 
        SUBB      XAR5,#4               ; |963| 
        LCR       #__f_getvolume        ; |963| 
        ; call occurs [#__f_getvolume] ; |963| 
        CMPB      AL,#0                 ; |963| 
        BF        L155,NEQ              ; |963| 
        ; branchcc occurs ; |963| 
        MOVB      AL,#0
        MOV       AH,*-SP[47]           ; |966| 
        BF        L150,EQ               ; |966| 
        ; branchcc occurs ; |966| 
L149:    
DW$L$_fn_chdir$6$B:
	.dwpsn	"fat.c",966,0
        MOVZ      AR4,SP                ; |966| 
        SETC      SXM
        ADDB      AL,#1                 ; |966| 
        MOV       ACC,AL                ; |966| 
        SUBB      XAR4,#47              ; |966| 
        ADDL      XAR4,ACC
        MOV       AH,*+XAR4[0]          ; |966| 
        BF        L149,NEQ              ; |966| 
        ; branchcc occurs ; |966| 
DW$L$_fn_chdir$6$E:
L150:    
        CMPB      AL,#0                 ; |967| 
        BF        L152,EQ               ; |967| 
        ; branchcc occurs ; |967| 
        MOV       AH,*-SP[27]           ; |967| 
        CMPB      AH,#32                ; |967| 
        BF        L151,NEQ              ; |967| 
        ; branchcc occurs ; |967| 
        MOV       AH,*-SP[19]           ; |967| 
        CMPB      AH,#32                ; |967| 
        BF        L152,EQ               ; |967| 
        ; branchcc occurs ; |967| 
L151:    
        MOVZ      AR4,SP                ; |967| 
        SETC      SXM
        MOV       ACC,AL                ; |967| 
        SUBB      XAR4,#47              ; |967| 
        ADDL      XAR4,ACC
        ADDB      AL,#1                 ; |967| 
        MOV       *+XAR4[0],#47         ; |967| 
L152:    
        MOVZ      AR4,SP                ; |969| 
        SUBB      XAR4,#19              ; |969| 
        MOVL      *-SP[2],XAR4          ; |969| 
        MOVZ      AR4,SP                ; |969| 
        SETC      SXM
        MOVZ      AR5,SP                ; |969| 
        MOV       ACC,AL                ; |969| 
        SUBB      XAR4,#47              ; |969| 
        ADDL      XAR4,ACC
        SUBB      XAR5,#27              ; |969| 
        LCR       #__f_getfilename      ; |969| 
        ; call occurs [#__f_getfilename] ; |969| 
        MOVZ      AR4,SP                ; |971| 
        MOVZ      AR5,SP                ; |971| 
        SUBB      XAR4,#16              ; |971| 
        MOVL      *-SP[2],XAR4          ; |971| 
        MOVL      XAR4,*-SP[4]          ; |971| 
        SUBB      XAR5,#48              ; |971| 
        LCR       #__f_findpath         ; |971| 
        ; call occurs [#__f_findpath] ; |971| 
        CMPB      AL,#0                 ; |971| 
        BF        L153,NEQ              ; |971| 
        ; branchcc occurs ; |971| 
        MOVB      AL,#5                 ; |971| 
        BF        L155,UNC              ; |971| 
        ; branch occurs ; |971| 
L153:    
        MOVL      XAR0,#1134            ; |973| 
        SETC      SXM
	.dwpsn	"fat.c",973,0
        MOVB      AL,#0
L154:    
DW$L$_fn_chdir$14$B:
        MOVZ      AR4,SP                ; |973| 
        MOV       ACC,AL                ; |973| 
        SUBB      XAR4,#47              ; |973| 
        ADDL      XAR4,ACC
        MOVZ      AR6,*+XAR4[0]         ; |973| 
        MOVL      XAR4,*-SP[4]          ; |973| 
        MOVL      XAR4,*+XAR4[AR0]      ; |973| 
        MOV       ACC,AL                ; |973| 
        ADDL      XAR4,ACC
        ADDB      AL,#1                 ; |973| 
        CMPB      AL,#20                ; |973| 
        MOV       *+XAR4[0],AR6         ; |973| 
        BF        L154,LT               ; |973| 
        ; branchcc occurs ; |973| 
DW$L$_fn_chdir$14$E:
        MOVB      AL,#0
L155:    
        SUBB      SP,#48                ; |975| 
        MOVL      XAR1,*--SP            ; |975| 
	.dwpsn	"fat.c",976,1
        LRETR
        ; return occurs

DW$391	.dwtag  DW_TAG_loop
	.dwattr DW$391, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L154:1:1471518973")
	.dwattr DW$391, DW_AT_begin_file("fat.c")
	.dwattr DW$391, DW_AT_begin_line(0x3cd)
	.dwattr DW$391, DW_AT_end_line(0x3cd)
DW$392	.dwtag  DW_TAG_loop_range
	.dwattr DW$392, DW_AT_low_pc(DW$L$_fn_chdir$14$B)
	.dwattr DW$392, DW_AT_high_pc(DW$L$_fn_chdir$14$E)
	.dwendtag DW$391


DW$393	.dwtag  DW_TAG_loop
	.dwattr DW$393, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L149:1:1471518973")
	.dwattr DW$393, DW_AT_begin_file("fat.c")
	.dwattr DW$393, DW_AT_begin_line(0x3c6)
	.dwattr DW$393, DW_AT_end_line(0x3c6)
DW$394	.dwtag  DW_TAG_loop_range
	.dwattr DW$394, DW_AT_low_pc(DW$L$_fn_chdir$6$B)
	.dwattr DW$394, DW_AT_high_pc(DW$L$_fn_chdir$6$E)
	.dwendtag DW$393

	.dwattr DW$388, DW_AT_end_file("fat.c")
	.dwattr DW$388, DW_AT_end_line(0x3d0)
	.dwattr DW$388, DW_AT_end_column(0x01)
	.dwendtag DW$388

	.sect	".text"
	.global	_fn_rename

DW$395	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_rename"), DW_AT_symbol_name("_fn_rename")
	.dwattr DW$395, DW_AT_low_pc(_fn_rename)
	.dwattr DW$395, DW_AT_high_pc(0x00)
	.dwattr DW$395, DW_AT_begin_file("fat.c")
	.dwattr DW$395, DW_AT_begin_line(0x3e6)
	.dwattr DW$395, DW_AT_begin_column(0x05)
	.dwattr DW$395, DW_AT_frame_base[DW_OP_breg20 -86]
	.dwattr DW$395, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",998,70

;***************************************************************
;* FNAME: _fn_rename                    FR SIZE:  84           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            6 Parameter, 71 Auto,  6 SOE     *
;***************************************************************

_fn_rename:
;* AR4   assigned to _fm
DW$396	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$396, DW_AT_type(*DW$T$117)
	.dwattr DW$396, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _filename
DW$397	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filename"), DW_AT_symbol_name("_filename")
	.dwattr DW$397, DW_AT_type(*DW$T$146)
	.dwattr DW$397, DW_AT_location[DW_OP_reg14]
DW$398	.dwtag  DW_TAG_formal_parameter, DW_AT_name("newname"), DW_AT_symbol_name("_newname")
	.dwattr DW$398, DW_AT_type(*DW$T$146)
	.dwattr DW$398, DW_AT_location[DW_OP_breg20 -88]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOVZ      AR2,SP
        MOVL      XAR1,XAR4             ; |998| 
        ADDB      SP,#78
        MOVZ      AR4,SP                ; |1009| 
        SUBB      FP,#10
        SUBB      XAR4,#66              ; |1009| 
        MOVL      XAR3,*+FP[0]          ; |998| 
        MOVL      *-SP[2],XAR4          ; |1009| 
        MOVL      XAR4,XAR1             ; |1009| 
        LCR       #__f_setfsname        ; |1009| 
        ; call occurs [#__f_setfsname] ; |1009| 
        CMPB      AL,#0                 ; |1009| 
        BF        L163,NEQ              ; |1009| 
        ; branchcc occurs ; |1009| 
        MOVZ      AR5,SP                ; |1010| 
        MOVZ      AR4,SP                ; |1010| 
        SUBB      XAR5,#37              ; |1010| 
        SUBB      XAR4,#45              ; |1010| 
        LCR       #__f_checknamewc      ; |1010| 
        ; call occurs [#__f_checknamewc] ; |1010| 
        TEST      ACC                   ; |1010| 
        BF        L163,NEQ              ; |1010| 
        ; branchcc occurs ; |1010| 
        MOVL      XAR0,#22              ; |1012| 
        MOVZ      AR5,SP                ; |1012| 
        MOVL      XAR4,XAR1             ; |1012| 
        MOV       AL,*+FP[AR0]          ; |1012| 
        SUBB      XAR5,#10              ; |1012| 
        LCR       #__f_getvolume        ; |1012| 
        ; call occurs [#__f_getvolume] ; |1012| 
        CMPB      AL,#0                 ; |1012| 
        BF        L168,NEQ              ; |1012| 
        ; branchcc occurs ; |1012| 
        MOVZ      AR4,SP                ; |1015| 
        MOVZ      AR5,SP                ; |1015| 
        SUBB      XAR4,#22              ; |1015| 
        MOVL      *-SP[2],XAR4          ; |1015| 
        MOVL      XAR4,*-SP[10]         ; |1015| 
        SUBB      XAR5,#66              ; |1015| 
        LCR       #__f_findpath         ; |1015| 
        ; call occurs [#__f_findpath] ; |1015| 
        CMPB      AL,#0                 ; |1015| 
        BF        L156,NEQ              ; |1015| 
        ; branchcc occurs ; |1015| 
        MOVB      AL,#3                 ; |1015| 
        BF        L168,UNC              ; |1015| 
        ; branch occurs ; |1015| 
L156:    
        MOVL      ACC,*-SP[22]          ; |1017| 
        MOVL      *-SP[34],ACC          ; |1017| 
        MOVL      ACC,*-SP[16]          ; |1018| 
        MOVL      *-SP[28],ACC          ; |1018| 
        MOVL      ACC,*-SP[14]          ; |1019| 
        MOVL      *-SP[26],ACC          ; |1019| 
        MOVL      ACC,*-SP[12]          ; |1020| 
        MOVL      *-SP[24],ACC          ; |1020| 
        MOV       AL,*-SP[45]           ; |1022| 
        CMPB      AL,#46                ; |1022| 
        BF        L157,EQ               ; |1022| 
        ; branchcc occurs ; |1022| 
        MOVZ      AR4,SP                ; |1024| 
        SUBB      XAR4,#37              ; |1024| 
        MOVL      *-SP[2],XAR4          ; |1024| 
        MOVZ      AR4,SP                ; |1024| 
        SUBB      XAR4,#34              ; |1024| 
        MOVL      *-SP[4],XAR4          ; |1024| 
        MOVZ      AR4,SP                ; |1024| 
        MOVZ      AR5,SP                ; |1024| 
        SUBB      XAR4,#8               ; |1024| 
        MOVL      *-SP[6],XAR4          ; |1024| 
        MOVL      XAR4,*-SP[10]         ; |1024| 
        SUBB      XAR5,#45              ; |1024| 
        LCR       #__f_findfile         ; |1024| 
        ; call occurs [#__f_findfile] ; |1024| 
        CMPB      AL,#0                 ; |1024| 
        BF        L158,NEQ              ; |1024| 
        ; branchcc occurs ; |1024| 
L157:    
        MOVB      AL,#5                 ; |1024| 
        BF        L168,UNC              ; |1024| 
        ; branch occurs ; |1024| 
L158:    
        MOVL      XAR4,*-SP[8]          ; |1026| 
        MOVB      XAR0,#11              ; |1026| 
        TBIT      *+XAR4[AR0],#0        ; |1026| 
        BF        L159,NTC              ; |1026| 
        ; branchcc occurs ; |1026| 
        MOVB      AL,#13                ; |1026| 
        BF        L168,UNC              ; |1026| 
        ; branch occurs ; |1026| 
L159:    
        MOVZ      AR4,SP                ; |1028| 
        MOVL      XAR0,#22              ; |1028| 
        SETC      SXM
        SUBB      XAR4,#34              ; |1028| 
        MOV       ACC,*+FP[AR0]         ; |1028| 
        LCR       #__f_checklocked      ; |1028| 
        ; call occurs [#__f_checklocked] ; |1028| 
        CMPB      AL,#0                 ; |1028| 
        BF        L160,EQ               ; |1028| 
        ; branchcc occurs ; |1028| 
        MOVB      AL,#12                ; |1028| 
        BF        L168,UNC              ; |1028| 
        ; branch occurs ; |1028| 
L160:    
        MOVZ      AR4,SP                ; |1030| 
        MOVZ      AR5,SP                ; |1030| 
        SUBB      XAR4,#77              ; |1030| 
        MOVL      *-SP[2],XAR4          ; |1030| 
        MOVL      XAR4,XAR3             ; |1030| 
        SUBB      XAR5,#74              ; |1030| 
        LCR       #__f_setnameext       ; |1030| 
        ; call occurs [#__f_setnameext] ; |1030| 
        CMPB      AL,#0                 ; |1030| 
        BF        L161,EQ               ; |1030| 
        ; branchcc occurs ; |1030| 
        MOVZ      AR5,SP                ; |1031| 
        MOVZ      AR4,SP                ; |1031| 
        SUBB      XAR5,#77              ; |1031| 
        SUBB      XAR4,#74              ; |1031| 
        LCR       #__f_checknamewc      ; |1031| 
        ; call occurs [#__f_checknamewc] ; |1031| 
        TEST      ACC                   ; |1031| 
        BF        L162,EQ               ; |1031| 
        ; branchcc occurs ; |1031| 
L161:    
        MOVB      AL,#0
        BF        L168,UNC              ; |1031| 
        ; branch occurs ; |1031| 
L162:    
        MOVL      XAR0,#14              ; |1033| 
        MOV       AL,*+FP[AR0]          ; |1033| 
        CMPB      AL,#46                ; |1033| 
        BF        L163,EQ               ; |1033| 
        ; branchcc occurs ; |1033| 
        CMPB      AL,#32                ; |1033| 
        BF        L164,NEQ              ; |1033| 
        ; branchcc occurs ; |1033| 
L163:    
        MOVB      AL,#4                 ; |1034| 
        BF        L168,UNC              ; |1034| 
        ; branch occurs ; |1034| 
L164:    
        MOVZ      AR4,SP                ; |1036| 
        SUBB      XAR4,#77              ; |1036| 
        MOVL      *-SP[2],XAR4          ; |1036| 
        MOVZ      AR4,SP                ; |1036| 
        MOVZ      AR5,SP                ; |1036| 
        MOVB      ACC,#0
        SUBB      XAR4,#22              ; |1036| 
        MOVL      *-SP[4],XAR4          ; |1036| 
        MOVL      *-SP[6],ACC           ; |1036| 
        MOVL      XAR4,*-SP[10]         ; |1036| 
        SUBB      XAR5,#74              ; |1036| 
        LCR       #__f_findfile         ; |1036| 
        ; call occurs [#__f_findfile] ; |1036| 
        CMPB      AL,#0                 ; |1036| 
        BF        L165,EQ               ; |1036| 
        ; branchcc occurs ; |1036| 
        MOVB      AL,#6                 ; |1036| 
        BF        L168,UNC              ; |1036| 
        ; branch occurs ; |1036| 
L165:    
        MOVL      XAR4,*-SP[10]         ; |1038| 
        MOVL      ACC,*-SP[28]          ; |1038| 
        LCR       #__f_getdirsector     ; |1038| 
        ; call occurs [#__f_getdirsector] ; |1038| 
        CMPB      AL,#0                 ; |1038| 
        BF        L168,NEQ              ; |1038| 
        ; branchcc occurs ; |1038| 
        SETC      SXM
	.dwpsn	"fat.c",1041,0
        MOVB      AL,#0
L166:    
DW$L$_fn_rename$23$B:
        MOVZ      AR4,SP                ; |1041| 
        MOV       ACC,AL                ; |1041| 
        SUBB      XAR4,#74              ; |1041| 
        ADDL      XAR4,ACC
        MOVZ      AR6,*+XAR4[0]         ; |1041| 
        MOVL      XAR4,*-SP[8]          ; |1041| 
        MOV       ACC,AL                ; |1041| 
        ADDL      XAR4,ACC
        ADDB      AL,#1                 ; |1041| 
        CMPB      AL,#8                 ; |1041| 
        MOV       *+XAR4[0],AR6         ; |1041| 
        BF        L166,LT               ; |1041| 
        ; branchcc occurs ; |1041| 
DW$L$_fn_rename$23$E:
        MOVB      XAR0,#8               ; |1042| 
        SETC      SXM
	.dwpsn	"fat.c",1042,0
        MOVB      AL,#0
L167:    
DW$L$_fn_rename$25$B:
        MOVZ      AR4,SP                ; |1042| 
        MOV       ACC,AL                ; |1042| 
        SUBB      XAR4,#77              ; |1042| 
        ADDL      XAR4,ACC
        MOVZ      AR6,*+XAR4[0]         ; |1042| 
        MOVL      XAR4,*-SP[8]          ; |1042| 
        MOV       ACC,AL                ; |1042| 
        ADDL      XAR4,ACC
        ADDB      AL,#1                 ; |1042| 
        CMPB      AL,#3                 ; |1042| 
        MOV       *+XAR4[AR0],AR6       ; |1042| 
        BF        L167,LT               ; |1042| 
        ; branchcc occurs ; |1042| 
DW$L$_fn_rename$25$E:
        MOVL      XAR4,*-SP[10]         ; |1044| 
        LCR       #__f_writedirsector   ; |1044| 
        ; call occurs [#__f_writedirsector] ; |1044| 
L168:    
        SUBB      SP,#78                ; |1044| 
        MOVL      XAR3,*--SP            ; |1044| 
        MOVL      XAR2,*--SP            ; |1044| 
        MOVL      XAR1,*--SP            ; |1044| 
	.dwpsn	"fat.c",1045,1
        LRETR
        ; return occurs

DW$399	.dwtag  DW_TAG_loop
	.dwattr DW$399, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L167:1:1471518973")
	.dwattr DW$399, DW_AT_begin_file("fat.c")
	.dwattr DW$399, DW_AT_begin_line(0x412)
	.dwattr DW$399, DW_AT_end_line(0x412)
DW$400	.dwtag  DW_TAG_loop_range
	.dwattr DW$400, DW_AT_low_pc(DW$L$_fn_rename$25$B)
	.dwattr DW$400, DW_AT_high_pc(DW$L$_fn_rename$25$E)
	.dwendtag DW$399


DW$401	.dwtag  DW_TAG_loop
	.dwattr DW$401, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L166:1:1471518973")
	.dwattr DW$401, DW_AT_begin_file("fat.c")
	.dwattr DW$401, DW_AT_begin_line(0x411)
	.dwattr DW$401, DW_AT_end_line(0x411)
DW$402	.dwtag  DW_TAG_loop_range
	.dwattr DW$402, DW_AT_low_pc(DW$L$_fn_rename$23$B)
	.dwattr DW$402, DW_AT_high_pc(DW$L$_fn_rename$23$E)
	.dwendtag DW$401

	.dwattr DW$395, DW_AT_end_file("fat.c")
	.dwattr DW$395, DW_AT_end_line(0x415)
	.dwattr DW$395, DW_AT_end_column(0x01)
	.dwendtag DW$395

	.sect	".text"

DW$403	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_getintfile"), DW_AT_symbol_name("__f_getintfile")
	.dwattr DW$403, DW_AT_low_pc(__f_getintfile)
	.dwattr DW$403, DW_AT_high_pc(0x00)
	.dwattr DW$403, DW_AT_begin_file("fat.c")
	.dwattr DW$403, DW_AT_begin_line(0x425)
	.dwattr DW$403, DW_AT_begin_column(0x13)
	.dwattr DW$403, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$403, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",1061,39

;***************************************************************
;* FNAME: __f_getintfile                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

__f_getintfile:
	.dwpsn	"fat.c",1063,0
        MOVB      XAR6,#0
L169:    
DW$L$__f_getintfile$2$B:
        MOV       T,AR6
;       MOV       T,T Implicitly done by - MPY ACC,OP,#IMM ; |1064| 
        MOVL      XAR4,#_f_filesystem+1148 ; |1064| 
        MPY       P,AR6,#974            ; |1064| 
        MOVL      ACC,P                 ; |1064| 
        ADDL      XAR4,ACC
        MOV       AH,*+XAR4[4]          ; |1064| 
        BF        L170,NEQ              ; |1064| 
        ; branchcc occurs ; |1064| 
DW$L$__f_getintfile$2$E:
        MOVW      DP,#_MagicNumber
        MOVL      ACC,@_MagicNumber     ; |1067| 
        SETC      SXM
        LSL       ACC,4                 ; |1067| 
        MOVL      XAR7,ACC              ; |1067| 
        MOVL      XAR0,#524             ; |1070| 
        MOV       AL,AR6                ; |1067| 
        MOV       ACC,AL                ; |1067| 
        ADDL      ACC,XAR7
        MOVL      *+XAR4[0],ACC         ; |1067| 
        MOVB      ACC,#0
        MOV       *+XAR4[AR0],#0        ; |1070| 
        MOVL      XAR0,#526             ; |1071| 
        MOVL      *+XAR4[AR0],ACC       ; |1071| 
        BF        L171,UNC              ; |1073| 
        ; branch occurs ; |1073| 
L170:    
DW$L$__f_getintfile$4$B:
        MOV       AL,AR6
        ADDB      AL,#1                 ; |1063| 
        MOVZ      AR6,AL                ; |1063| 
	.dwpsn	"fat.c",1075,0
        BF        L169,LEQ              ; |1063| 
        ; branchcc occurs ; |1063| 
DW$L$__f_getintfile$4$E:
        MOVB      XAR4,#0
L171:    
	.dwpsn	"fat.c",1077,1
        LRETR
        ; return occurs

DW$404	.dwtag  DW_TAG_loop
	.dwattr DW$404, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L169:1:1471518973")
	.dwattr DW$404, DW_AT_begin_file("fat.c")
	.dwattr DW$404, DW_AT_begin_line(0x427)
	.dwattr DW$404, DW_AT_end_line(0x433)
DW$405	.dwtag  DW_TAG_loop_range
	.dwattr DW$405, DW_AT_low_pc(DW$L$__f_getintfile$2$B)
	.dwattr DW$405, DW_AT_high_pc(DW$L$__f_getintfile$2$E)
DW$406	.dwtag  DW_TAG_loop_range
	.dwattr DW$406, DW_AT_low_pc(DW$L$__f_getintfile$4$B)
	.dwattr DW$406, DW_AT_high_pc(DW$L$__f_getintfile$4$E)
	.dwendtag DW$404

	.dwattr DW$403, DW_AT_end_file("fat.c")
	.dwattr DW$403, DW_AT_end_line(0x435)
	.dwattr DW$403, DW_AT_end_column(0x01)
	.dwendtag DW$403

	.sect	".text"
	.global	__f_addentry

DW$407	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_addentry"), DW_AT_symbol_name("__f_addentry")
	.dwattr DW$407, DW_AT_low_pc(__f_addentry)
	.dwattr DW$407, DW_AT_high_pc(0x00)
	.dwattr DW$407, DW_AT_begin_file("fat.c")
	.dwattr DW$407, DW_AT_begin_line(0x44d)
	.dwattr DW$407, DW_AT_begin_column(0x05)
	.dwattr DW$407, DW_AT_frame_base[DW_OP_breg20 -16]
	.dwattr DW$407, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",1101,74

;***************************************************************
;* FNAME: __f_addentry                  FR SIZE:  14           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  6 Auto,  6 SOE     *
;***************************************************************

__f_addentry:
;* AR4   assigned to _vi
DW$408	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vi"), DW_AT_symbol_name("_vi")
	.dwattr DW$408, DW_AT_type(*DW$T$89)
	.dwattr DW$408, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _fsname
DW$409	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fsname"), DW_AT_symbol_name("_fsname")
	.dwattr DW$409, DW_AT_type(*DW$T$149)
	.dwattr DW$409, DW_AT_location[DW_OP_reg14]
DW$410	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pos"), DW_AT_symbol_name("_pos")
	.dwattr DW$410, DW_AT_type(*DW$T$66)
	.dwattr DW$410, DW_AT_location[DW_OP_breg20 -18]
DW$411	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pde"), DW_AT_symbol_name("_pde")
	.dwattr DW$411, DW_AT_type(*DW$T$152)
	.dwattr DW$411, DW_AT_location[DW_OP_breg20 -20]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#8
        MOVL      XAR1,XAR4             ; |1101| 
        MOVB      XAR0,#21              ; |1104| 
        MOVL      XAR3,XAR5             ; |1101| 
        MOVL      ACC,*-SP[20]          ; |1101| 
        MOVL      *-SP[6],ACC           ; |1101| 
        MOVL      XAR2,*-SP[18]         ; |1101| 
        MOV       AL,*+XAR3[AR0]        ; |1104| 
        BF        L172,EQ               ; |1104| 
        ; branchcc occurs ; |1104| 
        CMPB      AL,#46                ; |1104| 
        BF        L176,NEQ              ; |1104| 
        ; branchcc occurs ; |1104| 
L172:    
        MOVB      AL,#4                 ; |1105| 
        BF        L192,UNC              ; |1105| 
        ; branch occurs ; |1105| 
L173:    
DW$L$__f_addentry$4$B:
        MOVL      XAR0,#916             ; |1184| 
        MOVL      XAR4,*-SP[8]          ; |1184| 
        MOVL      ACC,*+XAR4[AR0]       ; |1184| 
        BF        L175,UNC              ; |1185| 
        ; branch occurs ; |1185| 
DW$L$__f_addentry$4$E:
L174:    
DW$L$__f_addentry$5$B:
        MOVL      ACC,*-SP[4]           ; |1147| 
DW$L$__f_addentry$5$E:
L175:    
DW$L$__f_addentry$6$B:
        MOVL      XAR5,XAR2             ; |1147| 
        MOVL      XAR4,XAR1             ; |1147| 
        LCR       #__f_clustertopos     ; |1147| 
        ; call occurs [#__f_clustertopos] ; |1147| 
DW$L$__f_addentry$6$E:
L176:    
DW$L$__f_addentry$7$B:
        MOV       AL,#65520
        MOV       AH,#4095
        CMPL      ACC,*+XAR2[0]         ; |1107| 
        BF        L186,LOS              ; |1107| 
        ; branchcc occurs ; |1107| 
DW$L$__f_addentry$7$E:
DW$L$__f_addentry$8$B:
        MOVB      XAR0,#8               ; |1109| 
        MOVL      ACC,*+XAR2[AR0]       ; |1109| 
        CMPL      ACC,*+XAR2[6]         ; |1109| 
        BF        L184,LOS              ; |1109| 
        ; branchcc occurs ; |1109| 
DW$L$__f_addentry$8$E:
L177:    
DW$L$__f_addentry$9$B:
	.dwpsn	"fat.c",1109,0
        MOVB      XAR0,#10              ; |1110| 
        MOVL      P,XAR1                ; |1110| 
        MOVL      ACC,*+XAR2[AR0]       ; |1110| 
        MOVL      XAR4,#602             ; |1110| 
        LSL       ACC,5                 ; |1110| 
        ADDL      P,ACC
        ADDUL     P,XAR4
        MOVL      XAR4,XAR1             ; |1112| 
        MOVL      *-SP[8],P             ; |1110| 
        MOVL      ACC,*+XAR2[6]         ; |1112| 
        LCR       #__f_getdirsector     ; |1112| 
        ; call occurs [#__f_getdirsector] ; |1112| 
        CMPB      AL,#0                 ; |1112| 
        MOVZ      AR6,AL                ; |1112| 
        BF        L191,NEQ              ; |1112| 
        ; branchcc occurs ; |1112| 
DW$L$__f_addentry$9$E:
DW$L$__f_addentry$10$B:
        MOVB      XAR0,#10              ; |1115| 
        BF        L183,UNC              ; |1115| 
        ; branch occurs ; |1115| 
DW$L$__f_addentry$10$E:
L178:    
DW$L$__f_addentry$11$B:
        MOVL      XAR4,*-SP[8]
        MOV       AL,*+XAR4[0]          ; |1116| 
        BF        L179,EQ               ; |1116| 
        ; branchcc occurs ; |1116| 
DW$L$__f_addentry$11$E:
DW$L$__f_addentry$12$B:
        CMPB      AL,#229               ; |1116| 
        BF        L182,NEQ              ; |1116| 
        ; branchcc occurs ; |1116| 
DW$L$__f_addentry$12$E:
L179:    
        MOVB      ACC,#29
        ADDL      ACC,XAR3
        MOVL      *-SP[2],ACC           ; |1117| 
        MOVB      ACC,#21
        MOVL      XAR4,*-SP[8]          ; |1117| 
        ADDL      ACC,XAR3
        MOVL      XAR5,ACC              ; |1117| 
        LCR       #__f_initentry        ; |1117| 
        ; call occurs [#__f_initentry] ; |1117| 
        MOVL      XAR0,#1136            ; |1119| 
        MOVB      ACC,#3
        CMPL      ACC,*+XAR1[AR0]       ; |1119| 
        BF        L180,NEQ              ; |1119| 
        ; branchcc occurs ; |1119| 
        LCR       #_f_getdate           ; |1120| 
        ; call occurs [#_f_getdate] ; |1120| 
        MOVL      XAR7,*-SP[8]          ; |1120| 
        MOVZ      AR6,AL                ; |1120| 
        MOVB      ACC,#16
        ADDL      ACC,XAR7
        MOVL      XAR4,ACC              ; |1120| 
        MOV       AL,AR6                ; |1120| 
        LCR       #__f_setword          ; |1120| 
        ; call occurs [#__f_setword] ; |1120| 
        LCR       #_f_gettime           ; |1121| 
        ; call occurs [#_f_gettime] ; |1121| 
        MOVL      XAR7,*-SP[8]          ; |1121| 
        MOVZ      AR6,AL                ; |1121| 
        MOVB      ACC,#14
        ADDL      ACC,XAR7
        MOVL      XAR4,ACC              ; |1121| 
        MOV       AL,AR6                ; |1121| 
        LCR       #__f_setword          ; |1121| 
        ; call occurs [#__f_setword] ; |1121| 
        LCR       #_f_getdate           ; |1122| 
        ; call occurs [#_f_getdate] ; |1122| 
        MOVL      XAR7,*-SP[8]          ; |1122| 
        MOVZ      AR6,AL                ; |1122| 
        MOVB      ACC,#18
        ADDL      ACC,XAR7
        MOVL      XAR4,ACC              ; |1122| 
        MOV       AL,AR6                ; |1122| 
        LCR       #__f_setword          ; |1122| 
        ; call occurs [#__f_setword] ; |1122| 
L180:    
        MOVL      ACC,*-SP[6]
        BF        L181,EQ               ; |1125| 
        ; branchcc occurs ; |1125| 
        MOVL      XAR4,*-SP[6]
        MOVL      ACC,*-SP[8]
        MOVL      *+XAR4[0],ACC         ; |1125| 
L181:    
        MOVB      AL,#0
        BF        L192,UNC              ; |1126| 
        ; branch occurs ; |1126| 
L182:    
DW$L$__f_addentry$18$B:
        MOVL      ACC,*-SP[8]           ; |1115| 
        MOVB      XAR4,#32              ; |1115| 
        ADDU      ACC,AR4               ; |1115| 
        MOVL      *-SP[8],ACC           ; |1115| 
        MOVB      ACC,#10
        ADDL      ACC,XAR2
        MOVL      XAR4,ACC              ; |1115| 
        MOVB      ACC,#1
        ADDL      *+XAR4[0],ACC         ; |1115| 
DW$L$__f_addentry$18$E:
L183:    
DW$L$__f_addentry$19$B:
        MOVB      ACC,#16
        CMPL      ACC,*+XAR2[AR0]       ; |1115| 
        BF        L178,HI               ; |1115| 
        ; branchcc occurs ; |1115| 
DW$L$__f_addentry$19$E:
DW$L$__f_addentry$20$B:
        MOVB      ACC,#0
        MOVL      *+XAR2[AR0],ACC       ; |1130| 
        MOVB      ACC,#1
        MOVB      XAR0,#8               ; |1109| 
        ADDL      *+XAR2[6],ACC         ; |1109| 
        MOVL      ACC,*+XAR2[AR0]       ; |1109| 
        CMPL      ACC,*+XAR2[6]         ; |1109| 
	.dwpsn	"fat.c",1131,0
        BF        L177,HI               ; |1109| 
        ; branchcc occurs ; |1109| 
DW$L$__f_addentry$20$E:
L184:    
DW$L$__f_addentry$21$B:
        MOVL      ACC,*+XAR2[0]         ; |1133| 
        BF        L185,NEQ              ; |1133| 
        ; branchcc occurs ; |1133| 
DW$L$__f_addentry$21$E:
DW$L$__f_addentry$22$B:
        MOVL      XAR0,#1136            ; |1134| 
        MOVB      ACC,#3
        CMPL      ACC,*+XAR1[AR0]       ; |1134| 
        BF        L186,NEQ              ; |1134| 
        ; branchcc occurs ; |1134| 
DW$L$__f_addentry$22$E:
DW$L$__f_addentry$23$B:
        MOVB      XAR0,#32              ; |1135| 
        MOVL      ACC,*+XAR1[AR0]       ; |1135| 
        MOVL      *+XAR2[0],ACC         ; |1135| 
DW$L$__f_addentry$23$E:
L185:    
DW$L$__f_addentry$24$B:
        MOVZ      AR5,SP                ; |1143| 
        MOVL      XAR4,XAR1             ; |1143| 
        MOVL      ACC,*+XAR2[0]         ; |1143| 
        SUBB      XAR5,#4               ; |1143| 
        LCR       #__f_getclustervalue  ; |1143| 
        ; call occurs [#__f_getclustervalue] ; |1143| 
        CMPB      AL,#0                 ; |1143| 
        MOVZ      AR6,AL                ; |1143| 
        BF        L191,NEQ              ; |1143| 
        ; branchcc occurs ; |1143| 
DW$L$__f_addentry$24$E:
DW$L$__f_addentry$25$B:
        MOV       AL,#65520
        MOV       AH,#4095
        CMPL      ACC,*-SP[4]           ; |1146| 
        BF        L174,HI               ; |1146| 
        ; branchcc occurs ; |1146| 
DW$L$__f_addentry$25$E:
DW$L$__f_addentry$26$B:
        MOVZ      AR5,SP                ; |1150| 
        MOVL      XAR4,XAR1             ; |1150| 
        SUBB      XAR5,#4               ; |1150| 
        LCR       #__f_alloccluster     ; |1150| 
        ; call occurs [#__f_alloccluster] ; |1150| 
        CMPB      AL,#0                 ; |1150| 
        MOVZ      AR6,AL                ; |1150| 
        BF        L191,NEQ              ; |1150| 
        ; branchcc occurs ; |1150| 
DW$L$__f_addentry$26$E:
DW$L$__f_addentry$27$B:
        MOV       AL,#65520
        MOV       AH,#4095
        CMPL      ACC,*-SP[4]           ; |1153| 
        BF        L186,LOS              ; |1153| 
        ; branchcc occurs ; |1153| 
DW$L$__f_addentry$27$E:
DW$L$__f_addentry$28$B:
        LCR       #__f_getintfile       ; |1154| 
        ; call occurs [#__f_getintfile] ; |1154| 
        MOVL      *-SP[8],XAR4          ; |1154| 
        MOVL      ACC,*-SP[8]           ; |1154| 
        BF        L187,NEQ              ; |1154| 
        ; branchcc occurs ; |1154| 
DW$L$__f_addentry$28$E:
L186:    
        MOVB      AL,#7                 ; |1155| 
        BF        L192,UNC              ; |1155| 
        ; branch occurs ; |1155| 
L187:    
DW$L$__f_addentry$30$B:
        MOVL      ACC,*-SP[8]           ; |1157| 
        MOVL      XAR5,#916             ; |1157| 
        MOVL      XAR4,XAR1             ; |1157| 
        ADDL      XAR5,ACC
        MOVL      ACC,*-SP[4]           ; |1157| 
        LCR       #__f_clustertopos     ; |1157| 
        ; call occurs [#__f_clustertopos] ; |1157| 
        MOVL      XAR6,*-SP[8]          ; |1160| 
        MOVB      ACC,#12
        ADDL      ACC,XAR6
        MOVL      XAR4,ACC              ; |1160| 
        MOVB      XAR5,#0
        MOV       ACC,#1 << 9
        LCR       #_memset              ; |1160| 
        ; call occurs [#_memset] ; |1160| 
        BF        L190,UNC              ; |1161| 
        ; branch occurs ; |1161| 
DW$L$__f_addentry$30$E:
L188:    
DW$L$__f_addentry$31$B:
	.dwpsn	"fat.c",1161,0
        MOV       *-SP[1],#1            ; |1163| 
        MOVL      XAR6,*-SP[8]          ; |1163| 
        MOVL      XAR0,#922             ; |1163| 
        MOVL      XAR4,*-SP[8]          ; |1163| 
        MOVB      ACC,#12
        ADDL      ACC,XAR6
        MOVL      XAR5,ACC              ; |1163| 
        MOVL      ACC,*+XAR4[AR0]       ; |1163| 
        MOVL      XAR4,XAR1             ; |1163| 
        LCR       #__f_writesector      ; |1163| 
        ; call occurs [#__f_writesector] ; |1163| 
        CMPB      AL,#0                 ; |1163| 
        MOVZ      AR6,AL                ; |1163| 
        BF        L189,EQ               ; |1163| 
        ; branchcc occurs ; |1163| 
DW$L$__f_addentry$31$E:
DW$L$__f_addentry$32$B:
        MOVB      ACC,#2
        CMPL      ACC,*+XAR1[0]         ; |1165| 
        BF        L191,NEQ              ; |1165| 
        ; branchcc occurs ; |1165| 
DW$L$__f_addentry$32$E:
DW$L$__f_addentry$33$B:
        MOVL      XAR5,*-SP[8]          ; |1167| 
        MOVL      XAR4,XAR1             ; |1167| 
        LCR       #__f_dobadblock       ; |1167| 
        ; call occurs [#__f_dobadblock] ; |1167| 
        CMPB      AL,#0                 ; |1167| 
        MOVZ      AR6,AL                ; |1167| 
	.dwpsn	"fat.c",1173,0
        BF        L188,EQ               ; |1167| 
        ; branchcc occurs ; |1167| 
DW$L$__f_addentry$33$E:
        BF        L191,UNC              ; |1167| 
        ; branch occurs ; |1167| 
L189:    
DW$L$__f_addentry$35$B:
        MOVL      ACC,*-SP[8]           ; |1172| 
        MOVL      XAR4,#922             ; |1172| 
        ADDL      XAR4,ACC
        MOVB      ACC,#1
        ADDL      *+XAR4[0],ACC         ; |1172| 
DW$L$__f_addentry$35$E:
L190:    
DW$L$__f_addentry$36$B:
        MOVL      XAR0,#924             ; |1161| 
        MOVL      XAR4,*-SP[8]          ; |1161| 
        MOVL      ACC,*+XAR4[AR0]       ; |1161| 
        MOVL      XAR0,#922             ; |1161| 
        MOVL      XAR4,*-SP[8]          ; |1161| 
        CMPL      ACC,*+XAR4[AR0]       ; |1161| 
        BF        L188,HI               ; |1161| 
        ; branchcc occurs ; |1161| 
DW$L$__f_addentry$36$E:
DW$L$__f_addentry$37$B:
        MOV       PH,#4095
        MOVL      XAR0,#916             ; |1175| 
        MOV       PL,#65528
        MOVL      *-SP[2],P             ; |1175| 
        MOVL      XAR4,*-SP[8]          ; |1175| 
        MOVL      ACC,*+XAR4[AR0]       ; |1175| 
        MOVL      XAR4,XAR1             ; |1175| 
        LCR       #__f_setclustervalue  ; |1175| 
        ; call occurs [#__f_setclustervalue] ; |1175| 
        CMPB      AL,#0                 ; |1175| 
        MOVZ      AR6,AL                ; |1175| 
        BF        L191,NEQ              ; |1175| 
        ; branchcc occurs ; |1175| 
DW$L$__f_addentry$37$E:
DW$L$__f_addentry$38$B:
        MOVL      XAR0,#916             ; |1178| 
        MOVL      XAR4,*-SP[8]          ; |1178| 
        MOVL      ACC,*+XAR4[AR0]       ; |1178| 
        MOVL      XAR4,XAR1             ; |1178| 
        MOVL      *-SP[2],ACC           ; |1178| 
        MOVL      ACC,*+XAR2[0]         ; |1178| 
        LCR       #__f_setclustervalue  ; |1178| 
        ; call occurs [#__f_setclustervalue] ; |1178| 
        CMPB      AL,#0                 ; |1178| 
        MOVZ      AR6,AL                ; |1178| 
        BF        L191,NEQ              ; |1178| 
        ; branchcc occurs ; |1178| 
DW$L$__f_addentry$38$E:
DW$L$__f_addentry$39$B:
        MOVL      XAR4,XAR1             ; |1181| 
        LCR       #__f_writefatsector   ; |1181| 
        ; call occurs [#__f_writefatsector] ; |1181| 
        CMPB      AL,#0                 ; |1181| 
        MOVZ      AR6,AL                ; |1181| 
        BF        L173,EQ               ; |1181| 
        ; branchcc occurs ; |1181| 
DW$L$__f_addentry$39$E:
L191:    
        MOV       AL,AR6
L192:    
        SUBB      SP,#8                 ; |1182| 
        MOVL      XAR3,*--SP            ; |1182| 
        MOVL      XAR2,*--SP            ; |1182| 
        MOVL      XAR1,*--SP            ; |1182| 
	.dwpsn	"fat.c",1193,1
        LRETR
        ; return occurs

DW$412	.dwtag  DW_TAG_loop
	.dwattr DW$412, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L176:1:1471518973")
	.dwattr DW$412, DW_AT_begin_file("fat.c")
	.dwattr DW$412, DW_AT_begin_line(0x453)
	.dwattr DW$412, DW_AT_end_line(0x4a1)
DW$413	.dwtag  DW_TAG_loop_range
	.dwattr DW$413, DW_AT_low_pc(DW$L$__f_addentry$7$B)
	.dwattr DW$413, DW_AT_high_pc(DW$L$__f_addentry$7$E)
DW$414	.dwtag  DW_TAG_loop_range
	.dwattr DW$414, DW_AT_low_pc(DW$L$__f_addentry$22$B)
	.dwattr DW$414, DW_AT_high_pc(DW$L$__f_addentry$22$E)
DW$415	.dwtag  DW_TAG_loop_range
	.dwattr DW$415, DW_AT_low_pc(DW$L$__f_addentry$8$B)
	.dwattr DW$415, DW_AT_high_pc(DW$L$__f_addentry$8$E)
DW$416	.dwtag  DW_TAG_loop_range
	.dwattr DW$416, DW_AT_low_pc(DW$L$__f_addentry$21$B)
	.dwattr DW$416, DW_AT_high_pc(DW$L$__f_addentry$21$E)
DW$417	.dwtag  DW_TAG_loop_range
	.dwattr DW$417, DW_AT_low_pc(DW$L$__f_addentry$23$B)
	.dwattr DW$417, DW_AT_high_pc(DW$L$__f_addentry$23$E)
DW$418	.dwtag  DW_TAG_loop_range
	.dwattr DW$418, DW_AT_low_pc(DW$L$__f_addentry$24$B)
	.dwattr DW$418, DW_AT_high_pc(DW$L$__f_addentry$24$E)
DW$419	.dwtag  DW_TAG_loop_range
	.dwattr DW$419, DW_AT_low_pc(DW$L$__f_addentry$25$B)
	.dwattr DW$419, DW_AT_high_pc(DW$L$__f_addentry$25$E)
DW$420	.dwtag  DW_TAG_loop_range
	.dwattr DW$420, DW_AT_low_pc(DW$L$__f_addentry$26$B)
	.dwattr DW$420, DW_AT_high_pc(DW$L$__f_addentry$26$E)
DW$421	.dwtag  DW_TAG_loop_range
	.dwattr DW$421, DW_AT_low_pc(DW$L$__f_addentry$27$B)
	.dwattr DW$421, DW_AT_high_pc(DW$L$__f_addentry$27$E)
DW$422	.dwtag  DW_TAG_loop_range
	.dwattr DW$422, DW_AT_low_pc(DW$L$__f_addentry$28$B)
	.dwattr DW$422, DW_AT_high_pc(DW$L$__f_addentry$28$E)
DW$423	.dwtag  DW_TAG_loop_range
	.dwattr DW$423, DW_AT_low_pc(DW$L$__f_addentry$30$B)
	.dwattr DW$423, DW_AT_high_pc(DW$L$__f_addentry$30$E)
DW$424	.dwtag  DW_TAG_loop_range
	.dwattr DW$424, DW_AT_low_pc(DW$L$__f_addentry$37$B)
	.dwattr DW$424, DW_AT_high_pc(DW$L$__f_addentry$37$E)
DW$425	.dwtag  DW_TAG_loop_range
	.dwattr DW$425, DW_AT_low_pc(DW$L$__f_addentry$38$B)
	.dwattr DW$425, DW_AT_high_pc(DW$L$__f_addentry$38$E)
DW$426	.dwtag  DW_TAG_loop_range
	.dwattr DW$426, DW_AT_low_pc(DW$L$__f_addentry$39$B)
	.dwattr DW$426, DW_AT_high_pc(DW$L$__f_addentry$39$E)
DW$427	.dwtag  DW_TAG_loop_range
	.dwattr DW$427, DW_AT_low_pc(DW$L$__f_addentry$4$B)
	.dwattr DW$427, DW_AT_high_pc(DW$L$__f_addentry$4$E)
DW$428	.dwtag  DW_TAG_loop_range
	.dwattr DW$428, DW_AT_low_pc(DW$L$__f_addentry$5$B)
	.dwattr DW$428, DW_AT_high_pc(DW$L$__f_addentry$5$E)
DW$429	.dwtag  DW_TAG_loop_range
	.dwattr DW$429, DW_AT_low_pc(DW$L$__f_addentry$6$B)
	.dwattr DW$429, DW_AT_high_pc(DW$L$__f_addentry$6$E)

DW$430	.dwtag  DW_TAG_loop
	.dwattr DW$430, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L177:2:1471518973")
	.dwattr DW$430, DW_AT_begin_file("fat.c")
	.dwattr DW$430, DW_AT_begin_line(0x455)
	.dwattr DW$430, DW_AT_end_line(0x46b)
DW$431	.dwtag  DW_TAG_loop_range
	.dwattr DW$431, DW_AT_low_pc(DW$L$__f_addentry$9$B)
	.dwattr DW$431, DW_AT_high_pc(DW$L$__f_addentry$9$E)
DW$432	.dwtag  DW_TAG_loop_range
	.dwattr DW$432, DW_AT_low_pc(DW$L$__f_addentry$10$B)
	.dwattr DW$432, DW_AT_high_pc(DW$L$__f_addentry$10$E)
DW$433	.dwtag  DW_TAG_loop_range
	.dwattr DW$433, DW_AT_low_pc(DW$L$__f_addentry$20$B)
	.dwattr DW$433, DW_AT_high_pc(DW$L$__f_addentry$20$E)

DW$434	.dwtag  DW_TAG_loop
	.dwattr DW$434, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L183:3:1471518973")
	.dwattr DW$434, DW_AT_begin_file("fat.c")
	.dwattr DW$434, DW_AT_begin_line(0x45b)
	.dwattr DW$434, DW_AT_end_line(0x45c)
DW$435	.dwtag  DW_TAG_loop_range
	.dwattr DW$435, DW_AT_low_pc(DW$L$__f_addentry$19$B)
	.dwattr DW$435, DW_AT_high_pc(DW$L$__f_addentry$19$E)
DW$436	.dwtag  DW_TAG_loop_range
	.dwattr DW$436, DW_AT_low_pc(DW$L$__f_addentry$11$B)
	.dwattr DW$436, DW_AT_high_pc(DW$L$__f_addentry$11$E)
DW$437	.dwtag  DW_TAG_loop_range
	.dwattr DW$437, DW_AT_low_pc(DW$L$__f_addentry$12$B)
	.dwattr DW$437, DW_AT_high_pc(DW$L$__f_addentry$12$E)
DW$438	.dwtag  DW_TAG_loop_range
	.dwattr DW$438, DW_AT_low_pc(DW$L$__f_addentry$18$B)
	.dwattr DW$438, DW_AT_high_pc(DW$L$__f_addentry$18$E)
	.dwendtag DW$434

	.dwendtag DW$430


DW$439	.dwtag  DW_TAG_loop
	.dwattr DW$439, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L190:2:1471518973")
	.dwattr DW$439, DW_AT_begin_file("fat.c")
	.dwattr DW$439, DW_AT_begin_line(0x489)
	.dwattr DW$439, DW_AT_end_line(0x494)
DW$440	.dwtag  DW_TAG_loop_range
	.dwattr DW$440, DW_AT_low_pc(DW$L$__f_addentry$36$B)
	.dwattr DW$440, DW_AT_high_pc(DW$L$__f_addentry$36$E)
DW$441	.dwtag  DW_TAG_loop_range
	.dwattr DW$441, DW_AT_low_pc(DW$L$__f_addentry$35$B)
	.dwattr DW$441, DW_AT_high_pc(DW$L$__f_addentry$35$E)

DW$442	.dwtag  DW_TAG_loop
	.dwattr DW$442, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L188:3:1471518973")
	.dwattr DW$442, DW_AT_begin_file("fat.c")
	.dwattr DW$442, DW_AT_begin_line(0x489)
	.dwattr DW$442, DW_AT_end_line(0x495)
DW$443	.dwtag  DW_TAG_loop_range
	.dwattr DW$443, DW_AT_low_pc(DW$L$__f_addentry$31$B)
	.dwattr DW$443, DW_AT_high_pc(DW$L$__f_addentry$31$E)
DW$444	.dwtag  DW_TAG_loop_range
	.dwattr DW$444, DW_AT_low_pc(DW$L$__f_addentry$32$B)
	.dwattr DW$444, DW_AT_high_pc(DW$L$__f_addentry$32$E)
DW$445	.dwtag  DW_TAG_loop_range
	.dwattr DW$445, DW_AT_low_pc(DW$L$__f_addentry$33$B)
	.dwattr DW$445, DW_AT_high_pc(DW$L$__f_addentry$33$E)
	.dwendtag DW$442

	.dwendtag DW$439

	.dwendtag DW$412

	.dwattr DW$407, DW_AT_end_file("fat.c")
	.dwattr DW$407, DW_AT_end_line(0x4a9)
	.dwattr DW$407, DW_AT_end_column(0x01)
	.dwendtag DW$407

	.sect	".text"
	.global	_fn_mkdir

DW$446	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_mkdir"), DW_AT_symbol_name("_fn_mkdir")
	.dwattr DW$446, DW_AT_low_pc(_fn_mkdir)
	.dwattr DW$446, DW_AT_high_pc(0x00)
	.dwattr DW$446, DW_AT_begin_file("fat.c")
	.dwattr DW$446, DW_AT_begin_line(0x4bc)
	.dwattr DW$446, DW_AT_begin_column(0x05)
	.dwattr DW$446, DW_AT_frame_base[DW_OP_breg20 -76]
	.dwattr DW$446, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",1212,47

;***************************************************************
;* FNAME: _fn_mkdir                     FR SIZE:  74           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            6 Parameter, 62 Auto,  6 SOE     *
;***************************************************************

_fn_mkdir:
;* AR4   assigned to _fm
DW$447	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$447, DW_AT_type(*DW$T$117)
	.dwattr DW$447, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _dirname
DW$448	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dirname"), DW_AT_symbol_name("_dirname")
	.dwattr DW$448, DW_AT_type(*DW$T$146)
	.dwattr DW$448, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOVZ      AR2,SP
        ADDB      SP,#68
        MOVL      XAR1,XAR4             ; |1212| 
        MOVZ      AR4,SP                ; |1223| 
        SUBB      XAR4,#68              ; |1223| 
        MOVL      *-SP[2],XAR4          ; |1223| 
        MOVL      XAR4,XAR1             ; |1223| 
        LCR       #__f_setfsname        ; |1223| 
        ; call occurs [#__f_setfsname] ; |1223| 
        SUBB      FP,#8
        CMPB      AL,#0                 ; |1223| 
        BF        L193,NEQ              ; |1223| 
        ; branchcc occurs ; |1223| 
        MOVZ      AR5,SP                ; |1224| 
        MOVZ      AR4,SP                ; |1224| 
        SUBB      XAR5,#39              ; |1224| 
        SUBB      XAR4,#47              ; |1224| 
        LCR       #__f_checknamewc      ; |1224| 
        ; call occurs [#__f_checknamewc] ; |1224| 
        TEST      ACC                   ; |1224| 
        BF        L194,EQ               ; |1224| 
        ; branchcc occurs ; |1224| 
L193:    
        MOVB      AL,#4                 ; |1224| 
        BF        L206,UNC              ; |1224| 
        ; branch occurs ; |1224| 
L194:    
        MOVL      XAR0,#8               ; |1226| 
        MOVZ      AR5,SP                ; |1226| 
        MOVL      XAR4,XAR1             ; |1226| 
        MOV       AL,*+FP[AR0]          ; |1226| 
        SUBB      XAR5,#10              ; |1226| 
        LCR       #__f_getvolume        ; |1226| 
        ; call occurs [#__f_getvolume] ; |1226| 
        CMPB      AL,#0                 ; |1226| 
        MOVZ      AR6,AL                ; |1226| 
        BF        L205,NEQ              ; |1226| 
        ; branchcc occurs ; |1226| 
        MOVZ      AR4,SP                ; |1229| 
        MOVZ      AR5,SP                ; |1229| 
        SUBB      XAR4,#24              ; |1229| 
        MOVL      *-SP[2],XAR4          ; |1229| 
        MOVL      XAR4,*-SP[10]         ; |1229| 
        SUBB      XAR5,#68              ; |1229| 
        LCR       #__f_findpath         ; |1229| 
        ; call occurs [#__f_findpath] ; |1229| 
        CMPB      AL,#0                 ; |1229| 
        BF        L195,NEQ              ; |1229| 
        ; branchcc occurs ; |1229| 
        MOVB      AL,#3                 ; |1229| 
        BF        L206,UNC              ; |1229| 
        ; branch occurs ; |1229| 
L195:    
        MOVL      ACC,*-SP[24]          ; |1231| 
        MOVL      *-SP[36],ACC          ; |1231| 
        MOVL      ACC,*-SP[18]          ; |1232| 
        MOVL      *-SP[30],ACC          ; |1232| 
        MOVL      ACC,*-SP[16]          ; |1233| 
        MOVL      *-SP[28],ACC          ; |1233| 
        MOVL      ACC,*-SP[14]          ; |1234| 
        MOVL      *-SP[26],ACC          ; |1234| 
        MOV       AL,*-SP[47]           ; |1236| 
        CMPB      AL,#46                ; |1236| 
        BF        L196,NEQ              ; |1236| 
        ; branchcc occurs ; |1236| 
        MOVB      AL,#5                 ; |1236| 
        BF        L206,UNC              ; |1236| 
        ; branch occurs ; |1236| 
L196:    
        MOVZ      AR4,SP                ; |1237| 
        SUBB      XAR4,#39              ; |1237| 
        MOVL      *-SP[2],XAR4          ; |1237| 
        MOVZ      AR4,SP                ; |1237| 
        SUBB      XAR4,#36              ; |1237| 
        MOVL      *-SP[4],XAR4          ; |1237| 
        MOVZ      AR4,SP                ; |1237| 
        MOVZ      AR5,SP                ; |1237| 
        SUBB      XAR4,#12              ; |1237| 
        MOVL      *-SP[6],XAR4          ; |1237| 
        MOVL      XAR4,*-SP[10]         ; |1237| 
        SUBB      XAR5,#47              ; |1237| 
        LCR       #__f_findfile         ; |1237| 
        ; call occurs [#__f_findfile] ; |1237| 
        CMPB      AL,#0                 ; |1237| 
        BF        L197,EQ               ; |1237| 
        ; branchcc occurs ; |1237| 
        MOVB      AL,#6                 ; |1237| 
        BF        L206,UNC              ; |1237| 
        ; branch occurs ; |1237| 
L197:    
        MOVL      ACC,*-SP[24]          ; |1239| 
        MOVL      *-SP[36],ACC          ; |1239| 
        MOVZ      AR5,SP                ; |1244| 
        MOVL      ACC,*-SP[18]          ; |1240| 
        MOVL      *-SP[30],ACC          ; |1240| 
        MOVL      ACC,*-SP[16]          ; |1241| 
        MOVL      *-SP[28],ACC          ; |1241| 
        MOVL      ACC,*-SP[14]          ; |1242| 
        MOVL      *-SP[26],ACC          ; |1242| 
        MOVL      XAR4,*-SP[10]         ; |1244| 
        SUBB      XAR5,#8               ; |1244| 
        LCR       #__f_alloccluster     ; |1244| 
        ; call occurs [#__f_alloccluster] ; |1244| 
        CMPB      AL,#0                 ; |1244| 
        MOVZ      AR6,AL                ; |1244| 
        BF        L205,NEQ              ; |1244| 
        ; branchcc occurs ; |1244| 
        MOVZ      AR4,SP                ; |1247| 
        SUBB      XAR4,#36              ; |1247| 
        MOVL      *-SP[2],XAR4          ; |1247| 
        MOVZ      AR4,SP                ; |1247| 
        MOVZ      AR5,SP                ; |1247| 
        SUBB      XAR4,#12              ; |1247| 
        MOVL      *-SP[4],XAR4          ; |1247| 
        MOVL      XAR4,*-SP[10]         ; |1247| 
        SUBB      XAR5,#68              ; |1247| 
        LCR       #__f_addentry         ; |1247| 
        ; call occurs [#__f_addentry] ; |1247| 
        CMPB      AL,#0                 ; |1247| 
        MOVZ      AR6,AL                ; |1247| 
        BF        L205,NEQ              ; |1247| 
        ; branchcc occurs ; |1247| 
        MOVL      XAR4,*-SP[12]         ; |1250| 
        ADDB      XAR4,#11              ; |1250| 
        OR        *+XAR4[0],#0x0010     ; |1250| 
        LCR       #__f_getintfile       ; |1255| 
        ; call occurs [#__f_getintfile] ; |1255| 
        MOVL      ACC,XAR4              ; |1255| 
        MOVL      XAR1,XAR4             ; |1255| 
        BF        L198,NEQ              ; |1255| 
        ; branchcc occurs ; |1255| 
        MOVB      AL,#7                 ; |1257| 
        BF        L206,UNC              ; |1257| 
        ; branch occurs ; |1257| 
L198:    
        MOVL      ACC,XAR1              ; |1259| 
        MOVL      XAR5,#916             ; |1259| 
        MOVL      XAR4,*-SP[10]         ; |1259| 
        ADDL      XAR5,ACC
        MOVL      ACC,*-SP[8]           ; |1259| 
        LCR       #__f_clustertopos     ; |1259| 
        ; call occurs [#__f_clustertopos] ; |1259| 
        MOVL      XAR4,*-SP[10]         ; |1261| 
        MOVL      XAR5,*-SP[12]         ; |1261| 
        MOVL      ACC,*-SP[8]           ; |1261| 
        LCR       #__f_setdecluster     ; |1261| 
        ; call occurs [#__f_setdecluster] ; |1261| 
        MOVB      ACC,#12
        ADDL      ACC,XAR1
        MOVL      XAR4,#FSL1            ; |1267| 
        MOVL      *-SP[12],ACC          ; |1265| 
        MOVL      *-SP[2],XAR4          ; |1267| 
        MOVL      XAR4,*-SP[12]         ; |1267| 
        MOVL      XAR5,#FSL2            ; |1267| 
        LCR       #__f_initentry        ; |1267| 
        ; call occurs [#__f_initentry] ; |1267| 
        MOVL      XAR4,*-SP[12]         ; |1268| 
        MOVB      XAR0,#11              ; |1268| 
        MOV       *+XAR4[AR0],#16       ; |1268| 
        MOVL      XAR4,*-SP[10]         ; |1269| 
        MOVL      XAR5,*-SP[12]         ; |1269| 
        MOVL      ACC,*-SP[8]           ; |1269| 
        LCR       #__f_setdecluster     ; |1269| 
        ; call occurs [#__f_setdecluster] ; |1269| 
        MOVB      ACC,#32
        MOVL      XAR4,#FSL1            ; |1272| 
        ADDL      *-SP[12],ACC          ; |1270| 
        MOVL      *-SP[2],XAR4          ; |1272| 
        MOVL      XAR4,*-SP[12]         ; |1272| 
        MOVL      XAR5,#FSL3            ; |1272| 
        LCR       #__f_initentry        ; |1272| 
        ; call occurs [#__f_initentry] ; |1272| 
        MOVL      XAR4,*-SP[12]         ; |1273| 
        MOVB      XAR0,#11              ; |1273| 
        MOV       *+XAR4[AR0],#16       ; |1273| 
        MOVL      XAR4,*-SP[10]         ; |1274| 
        MOVL      XAR5,*-SP[12]         ; |1274| 
        MOVL      ACC,*-SP[24]          ; |1274| 
        LCR       #__f_setdecluster     ; |1274| 
        ; call occurs [#__f_setdecluster] ; |1274| 
        MOVB      XAR3,#2               ; |1277| 
        MOVB      ACC,#32
	.dwpsn	"fat.c",1277,0
        ADDL      *-SP[12],ACC          ; |1275| 
L199:    
DW$L$_fn_mkdir$16$B:
        MOVL      XAR4,*-SP[12]         ; |1278| 
        MOVB      ACC,#32
        MOVB      XAR5,#0
        LCR       #_memset              ; |1278| 
        ; call occurs [#_memset] ; |1278| 
        ADDB      XAR3,#1               ; |1277| 
        MOVB      ACC,#32
        ADDL      *-SP[12],ACC          ; |1277| 
        MOV       AL,AR3                ; |1277| 
        CMPB      AL,#16                ; |1277| 
	.dwpsn	"fat.c",1279,0
        BF        L199,LO               ; |1277| 
        ; branchcc occurs ; |1277| 
DW$L$_fn_mkdir$16$E:
        MOVB      ACC,#12
        MOV       *-SP[1],#1            ; |1281| 
        MOVL      XAR0,#922             ; |1281| 
        ADDL      ACC,XAR1
        MOVL      XAR4,*-SP[10]         ; |1281| 
        MOVL      XAR5,ACC              ; |1281| 
        MOVL      ACC,*+XAR1[AR0]       ; |1281| 
        LCR       #__f_writesector      ; |1281| 
        ; call occurs [#__f_writesector] ; |1281| 
        CMPB      AL,#0                 ; |1281| 
        MOVZ      AR6,AL                ; |1281| 
        BF        L205,NEQ              ; |1281| 
        ; branchcc occurs ; |1281| 
        MOVL      ACC,XAR1              ; |1284| 
        MOVL      XAR4,#922             ; |1284| 
        ADDL      XAR4,ACC
        MOVB      XAR3,#0
        MOVB      ACC,#1
        ADDL      *+XAR4[0],ACC         ; |1284| 
        MOVB      ACC,#12
        ADDL      ACC,XAR1
	.dwpsn	"fat.c",1288,0
        MOVL      *-SP[12],ACC          ; |1286| 
L200:    
DW$L$_fn_mkdir$19$B:
        MOVL      XAR4,*-SP[12]         ; |1289| 
        MOVB      ACC,#32
        MOVB      XAR5,#0
        LCR       #_memset              ; |1289| 
        ; call occurs [#_memset] ; |1289| 
        ADDB      XAR3,#1               ; |1288| 
        MOVB      ACC,#32
        ADDL      *-SP[12],ACC          ; |1288| 
        MOV       AL,AR3                ; |1288| 
        CMPB      AL,#2                 ; |1288| 
	.dwpsn	"fat.c",1290,0
        BF        L200,LO               ; |1288| 
        ; branchcc occurs ; |1288| 
DW$L$_fn_mkdir$19$E:
        MOVL      XAR0,#924             ; |1292| 
        MOVL      ACC,*+XAR1[AR0]       ; |1292| 
        MOVL      XAR0,#922             ; |1292| 
        CMPL      ACC,*+XAR1[AR0]       ; |1292| 
        BF        L203,LOS              ; |1292| 
        ; branchcc occurs ; |1292| 
L201:    
DW$L$_fn_mkdir$21$B:
	.dwpsn	"fat.c",1292,0
        MOVB      ACC,#12
        ADDL      ACC,XAR1
        MOVL      *-SP[12],ACC          ; |1293| 
DW$L$_fn_mkdir$21$E:
L202:    
DW$L$_fn_mkdir$22$B:
        MOVB      ACC,#12
        MOV       *-SP[1],#1            ; |1296| 
        MOVL      XAR0,#922             ; |1296| 
        ADDL      ACC,XAR1
        MOVL      XAR4,*-SP[10]         ; |1296| 
        MOVL      XAR5,ACC              ; |1296| 
        MOVL      ACC,*+XAR1[AR0]       ; |1296| 
        LCR       #__f_writesector      ; |1296| 
        ; call occurs [#__f_writesector] ; |1296| 
        CMPB      AL,#0                 ; |1296| 
        MOVZ      AR6,AL                ; |1296| 
        BF        L204,NEQ              ; |1296| 
        ; branchcc occurs ; |1296| 
DW$L$_fn_mkdir$22$E:
DW$L$_fn_mkdir$23$B:
        MOVL      ACC,XAR1              ; |1306| 
        MOVL      XAR4,#922             ; |1306| 
        ADDL      XAR4,ACC
        MOVL      XAR0,#924             ; |1306| 
        MOVB      ACC,#1
        ADDL      *+XAR4[0],ACC         ; |1306| 
        MOVL      ACC,*+XAR1[AR0]       ; |1306| 
        MOVL      XAR0,#922             ; |1306| 
        CMPL      ACC,*+XAR1[AR0]       ; |1306| 
	.dwpsn	"fat.c",1307,0
        BF        L201,HI               ; |1306| 
        ; branchcc occurs ; |1306| 
DW$L$_fn_mkdir$23$E:
L203:    
        MOV       PH,#4095
        MOVL      XAR0,#916             ; |1309| 
        MOV       PL,#65528
        MOVL      *-SP[2],P             ; |1309| 
        MOVL      XAR4,*-SP[10]         ; |1309| 
        MOVL      ACC,*+XAR1[AR0]       ; |1309| 
        LCR       #__f_setclustervalue  ; |1309| 
        ; call occurs [#__f_setclustervalue] ; |1309| 
        CMPB      AL,#0                 ; |1309| 
        MOVZ      AR6,AL                ; |1309| 
        BF        L205,NEQ              ; |1309| 
        ; branchcc occurs ; |1309| 
        MOVL      XAR4,*-SP[10]         ; |1312| 
        LCR       #__f_writefatsector   ; |1312| 
        ; call occurs [#__f_writefatsector] ; |1312| 
        CMPB      AL,#0                 ; |1312| 
        MOVZ      AR6,AL                ; |1312| 
        BF        L205,NEQ              ; |1312| 
        ; branchcc occurs ; |1312| 
        MOVL      XAR4,*-SP[10]         ; |1319| 
        LCR       #__f_writedirsector   ; |1319| 
        ; call occurs [#__f_writedirsector] ; |1319| 
        BF        L206,UNC              ; |1319| 
        ; branch occurs ; |1319| 
L204:    
DW$L$_fn_mkdir$27$B:
        MOVL      XAR4,*-SP[10]         ; |1298| 
        MOVB      ACC,#2
        CMPL      ACC,*+XAR4[0]         ; |1298| 
        BF        L205,NEQ              ; |1298| 
        ; branchcc occurs ; |1298| 
DW$L$_fn_mkdir$27$E:
DW$L$_fn_mkdir$28$B:
        MOVL      XAR4,*-SP[10]         ; |1300| 
        MOVL      XAR5,XAR1             ; |1300| 
        LCR       #__f_dobadblock       ; |1300| 
        ; call occurs [#__f_dobadblock] ; |1300| 
        CMPB      AL,#0                 ; |1300| 
        MOVZ      AR6,AL                ; |1300| 
        BF        L202,EQ               ; |1300| 
        ; branchcc occurs ; |1300| 
DW$L$_fn_mkdir$28$E:
L205:    
        MOV       AL,AR6
L206:    
        SUBB      SP,#68                ; |1301| 
        MOVL      XAR3,*--SP            ; |1301| 
        MOVL      XAR2,*--SP            ; |1301| 
        MOVL      XAR1,*--SP            ; |1301| 
	.dwpsn	"fat.c",1320,1
        LRETR
        ; return occurs

DW$449	.dwtag  DW_TAG_loop
	.dwattr DW$449, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L201:1:1471518973")
	.dwattr DW$449, DW_AT_begin_file("fat.c")
	.dwattr DW$449, DW_AT_begin_line(0x50c)
	.dwattr DW$449, DW_AT_end_line(0x51b)
DW$450	.dwtag  DW_TAG_loop_range
	.dwattr DW$450, DW_AT_low_pc(DW$L$_fn_mkdir$21$B)
	.dwattr DW$450, DW_AT_high_pc(DW$L$_fn_mkdir$21$E)
DW$451	.dwtag  DW_TAG_loop_range
	.dwattr DW$451, DW_AT_low_pc(DW$L$_fn_mkdir$23$B)
	.dwattr DW$451, DW_AT_high_pc(DW$L$_fn_mkdir$23$E)

DW$452	.dwtag  DW_TAG_loop
	.dwattr DW$452, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L202:2:1471518973")
	.dwattr DW$452, DW_AT_begin_file("fat.c")
	.dwattr DW$452, DW_AT_begin_line(0x50d)
	.dwattr DW$452, DW_AT_end_line(0x514)
DW$453	.dwtag  DW_TAG_loop_range
	.dwattr DW$453, DW_AT_low_pc(DW$L$_fn_mkdir$22$B)
	.dwattr DW$453, DW_AT_high_pc(DW$L$_fn_mkdir$22$E)
DW$454	.dwtag  DW_TAG_loop_range
	.dwattr DW$454, DW_AT_low_pc(DW$L$_fn_mkdir$27$B)
	.dwattr DW$454, DW_AT_high_pc(DW$L$_fn_mkdir$27$E)
DW$455	.dwtag  DW_TAG_loop_range
	.dwattr DW$455, DW_AT_low_pc(DW$L$_fn_mkdir$28$B)
	.dwattr DW$455, DW_AT_high_pc(DW$L$_fn_mkdir$28$E)
	.dwendtag DW$452

	.dwendtag DW$449


DW$456	.dwtag  DW_TAG_loop
	.dwattr DW$456, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L200:1:1471518973")
	.dwattr DW$456, DW_AT_begin_file("fat.c")
	.dwattr DW$456, DW_AT_begin_line(0x508)
	.dwattr DW$456, DW_AT_end_line(0x50a)
DW$457	.dwtag  DW_TAG_loop_range
	.dwattr DW$457, DW_AT_low_pc(DW$L$_fn_mkdir$19$B)
	.dwattr DW$457, DW_AT_high_pc(DW$L$_fn_mkdir$19$E)
	.dwendtag DW$456


DW$458	.dwtag  DW_TAG_loop
	.dwattr DW$458, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L199:1:1471518973")
	.dwattr DW$458, DW_AT_begin_file("fat.c")
	.dwattr DW$458, DW_AT_begin_line(0x4fd)
	.dwattr DW$458, DW_AT_end_line(0x4ff)
DW$459	.dwtag  DW_TAG_loop_range
	.dwattr DW$459, DW_AT_low_pc(DW$L$_fn_mkdir$16$B)
	.dwattr DW$459, DW_AT_high_pc(DW$L$_fn_mkdir$16$E)
	.dwendtag DW$458

	.dwattr DW$446, DW_AT_end_file("fat.c")
	.dwattr DW$446, DW_AT_end_line(0x528)
	.dwattr DW$446, DW_AT_end_column(0x01)
	.dwendtag DW$446

	.sect	".text"
	.global	_fn_filelength

DW$460	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_filelength"), DW_AT_symbol_name("_fn_filelength")
	.dwattr DW$460, DW_AT_low_pc(_fn_filelength)
	.dwattr DW$460, DW_AT_high_pc(0x00)
	.dwattr DW$460, DW_AT_begin_file("fat.c")
	.dwattr DW$460, DW_AT_begin_line(0x53b)
	.dwattr DW$460, DW_AT_begin_column(0x06)
	.dwattr DW$460, DW_AT_frame_base[DW_OP_breg20 -58]
	.dwattr DW$460, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",1339,54

;***************************************************************
;* FNAME: _fn_filelength                FR SIZE:  56           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            6 Parameter, 48 Auto,  2 SOE     *
;***************************************************************

_fn_filelength:
;* AR4   assigned to _fm
DW$461	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$461, DW_AT_type(*DW$T$117)
	.dwattr DW$461, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _filename
DW$462	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filename"), DW_AT_symbol_name("_filename")
	.dwattr DW$462, DW_AT_type(*DW$T$146)
	.dwattr DW$462, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        ADDB      SP,#54
        MOVL      XAR1,XAR4             ; |1339| 
        MOVZ      AR4,SP                ; |1345| 
        SUBB      XAR4,#54              ; |1345| 
        MOVL      *-SP[2],XAR4          ; |1345| 
        MOVL      XAR4,XAR1             ; |1345| 
        LCR       #__f_setfsname        ; |1345| 
        ; call occurs [#__f_setfsname] ; |1345| 
        CMPB      AL,#0                 ; |1345| 
        BF        L207,NEQ              ; |1345| 
        ; branchcc occurs ; |1345| 
        MOVZ      AR5,SP                ; |1346| 
        MOVZ      AR4,SP                ; |1346| 
        SUBB      XAR5,#25              ; |1346| 
        SUBB      XAR4,#33              ; |1346| 
        LCR       #__f_checknamewc      ; |1346| 
        ; call occurs [#__f_checknamewc] ; |1346| 
        TEST      ACC                   ; |1346| 
        BF        L207,NEQ              ; |1346| 
        ; branchcc occurs ; |1346| 
        MOVZ      AR5,SP                ; |1348| 
        MOVL      XAR4,XAR1             ; |1348| 
        MOV       AL,*-SP[54]           ; |1348| 
        SUBB      XAR5,#8               ; |1348| 
        LCR       #__f_getvolume        ; |1348| 
        ; call occurs [#__f_getvolume] ; |1348| 
        CMPB      AL,#0                 ; |1348| 
        BF        L207,NEQ              ; |1348| 
        ; branchcc occurs ; |1348| 
        MOVZ      AR4,SP                ; |1350| 
        MOVZ      AR5,SP                ; |1350| 
        SUBB      XAR4,#22              ; |1350| 
        MOVL      *-SP[2],XAR4          ; |1350| 
        MOVL      XAR4,*-SP[8]          ; |1350| 
        SUBB      XAR5,#54              ; |1350| 
        LCR       #__f_findpath         ; |1350| 
        ; call occurs [#__f_findpath] ; |1350| 
        CMPB      AL,#0                 ; |1350| 
        BF        L207,EQ               ; |1350| 
        ; branchcc occurs ; |1350| 
        MOVZ      AR4,SP                ; |1351| 
        SUBB      XAR4,#25              ; |1351| 
        MOVL      *-SP[2],XAR4          ; |1351| 
        MOVZ      AR4,SP                ; |1351| 
        SUBB      XAR4,#22              ; |1351| 
        MOVL      *-SP[4],XAR4          ; |1351| 
        MOVZ      AR4,SP                ; |1351| 
        MOVZ      AR5,SP                ; |1351| 
        SUBB      XAR4,#10              ; |1351| 
        MOVL      *-SP[6],XAR4          ; |1351| 
        MOVL      XAR4,*-SP[8]          ; |1351| 
        SUBB      XAR5,#33              ; |1351| 
        LCR       #__f_findfile         ; |1351| 
        ; call occurs [#__f_findfile] ; |1351| 
        CMPB      AL,#0                 ; |1351| 
        BF        L207,EQ               ; |1351| 
        ; branchcc occurs ; |1351| 
        MOVL      XAR4,*-SP[10]         ; |1351| 
        MOVB      XAR0,#11              ; |1351| 
        TBIT      *+XAR4[AR0],#4        ; |1351| 
        BF        L208,NTC              ; |1351| 
        ; branchcc occurs ; |1351| 
L207:    
        MOVB      ACC,#0
        BF        L209,UNC              ; |1353| 
        ; branch occurs ; |1353| 
L208:    
        MOVL      XAR4,*-SP[10]         ; |1355| 
        ADDB      XAR4,#28              ; |1355| 
        LCR       #__f_getlong          ; |1355| 
        ; call occurs [#__f_getlong] ; |1355| 
L209:    
        SUBB      SP,#54                ; |1355| 
        MOVL      XAR1,*--SP            ; |1355| 
	.dwpsn	"fat.c",1356,1
        LRETR
        ; return occurs
	.dwattr DW$460, DW_AT_end_file("fat.c")
	.dwattr DW$460, DW_AT_end_line(0x54c)
	.dwattr DW$460, DW_AT_end_column(0x01)
	.dwendtag DW$460

	.sect	".text"
	.global	_fn_open

DW$463	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_open"), DW_AT_symbol_name("_fn_open")
	.dwattr DW$463, DW_AT_low_pc(_fn_open)
	.dwattr DW$463, DW_AT_high_pc(0x00)
	.dwattr DW$463, DW_AT_begin_file("fat.c")
	.dwattr DW$463, DW_AT_begin_line(0x560)
	.dwattr DW$463, DW_AT_begin_column(0x09)
	.dwattr DW$463, DW_AT_frame_base[DW_OP_breg20 -52]
	.dwattr DW$463, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",1376,68

;***************************************************************
;* FNAME: _fn_open                      FR SIZE:  50           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            6 Parameter, 37 Auto,  6 SOE     *
;***************************************************************

_fn_open:
;* AR4   assigned to _fm
DW$464	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$464, DW_AT_type(*DW$T$117)
	.dwattr DW$464, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _filename
DW$465	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filename"), DW_AT_symbol_name("_filename")
	.dwattr DW$465, DW_AT_type(*DW$T$146)
	.dwattr DW$465, DW_AT_location[DW_OP_reg14]
DW$466	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mode"), DW_AT_symbol_name("_mode")
	.dwattr DW$466, DW_AT_type(*DW$T$146)
	.dwattr DW$466, DW_AT_location[DW_OP_breg20 -54]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#44
        MOVL      XAR1,XAR4             ; |1376| 
        MOVL      XAR4,*-SP[54]         ; |1376| 
        MOV       *-SP[43],#0           ; |1380| 
        MOV       AL,*+XAR4[0]          ; |1383| 
        CMPB      AL,#114               ; |1383| 
        BF        L210,NEQ              ; |1383| 
        ; branchcc occurs ; |1383| 
        MOV       AL,*+XAR4[1]          ; |1383| 
        BF        L210,NEQ              ; |1383| 
        ; branchcc occurs ; |1383| 
        MOV       *-SP[43],#1           ; |1383| 
L210:    
        MOV       AL,*+XAR4[0]          ; |1384| 
        CMPB      AL,#119               ; |1384| 
        BF        L211,NEQ              ; |1384| 
        ; branchcc occurs ; |1384| 
        MOV       AL,*+XAR4[1]          ; |1384| 
        BF        L211,NEQ              ; |1384| 
        ; branchcc occurs ; |1384| 
        MOV       *-SP[43],#2           ; |1384| 
L211:    
        MOV       AL,*+XAR4[0]          ; |1385| 
        CMPB      AL,#97                ; |1385| 
        BF        L212,NEQ              ; |1385| 
        ; branchcc occurs ; |1385| 
        MOV       AL,*+XAR4[1]          ; |1385| 
        BF        L212,NEQ              ; |1385| 
        ; branchcc occurs ; |1385| 
        MOV       *-SP[43],#3           ; |1385| 
L212:    
        MOV       AL,*+XAR4[0]          ; |1386| 
        CMPB      AL,#114               ; |1386| 
        BF        L213,NEQ              ; |1386| 
        ; branchcc occurs ; |1386| 
        MOV       AL,*+XAR4[1]          ; |1386| 
        CMPB      AL,#43                ; |1386| 
        BF        L213,NEQ              ; |1386| 
        ; branchcc occurs ; |1386| 
        MOV       AL,*+XAR4[2]          ; |1386| 
        BF        L213,NEQ              ; |1386| 
        ; branchcc occurs ; |1386| 
        MOV       *-SP[43],#4           ; |1386| 
L213:    
        MOV       AL,*+XAR4[0]          ; |1387| 
        CMPB      AL,#119               ; |1387| 
        BF        L214,NEQ              ; |1387| 
        ; branchcc occurs ; |1387| 
        MOV       AL,*+XAR4[1]          ; |1387| 
        CMPB      AL,#43                ; |1387| 
        BF        L214,NEQ              ; |1387| 
        ; branchcc occurs ; |1387| 
        MOV       AL,*+XAR4[2]          ; |1387| 
        BF        L214,NEQ              ; |1387| 
        ; branchcc occurs ; |1387| 
        MOV       *-SP[43],#5           ; |1387| 
L214:    
        MOV       AL,*+XAR4[0]          ; |1388| 
        CMPB      AL,#97                ; |1388| 
        BF        L215,NEQ              ; |1388| 
        ; branchcc occurs ; |1388| 
        MOV       AL,*+XAR4[1]          ; |1388| 
        CMPB      AL,#43                ; |1388| 
        BF        L215,NEQ              ; |1388| 
        ; branchcc occurs ; |1388| 
        MOV       AL,*+XAR4[2]          ; |1388| 
        BF        L216,EQ               ; |1388| 
        ; branchcc occurs ; |1388| 
L215:    
        MOV       AL,*-SP[43]
        BF        L217,NEQ              ; |1390| 
        ; branchcc occurs ; |1390| 
        BF        L221,UNC              ; |1390| 
        ; branch occurs ; |1390| 
L216:    
        MOV       *-SP[43],#6           ; |1388| 
L217:    
        MOVZ      AR4,SP                ; |1392| 
        SUBB      XAR4,#42              ; |1392| 
        MOVL      *-SP[2],XAR4          ; |1392| 
        MOVL      XAR4,XAR1             ; |1392| 
        LCR       #__f_setfsname        ; |1392| 
        ; call occurs [#__f_setfsname] ; |1392| 
        CMPB      AL,#0                 ; |1392| 
        BF        L221,NEQ              ; |1392| 
        ; branchcc occurs ; |1392| 
        MOVZ      AR5,SP                ; |1393| 
        MOVZ      AR4,SP                ; |1393| 
        SUBB      XAR5,#13              ; |1393| 
        SUBB      XAR4,#21              ; |1393| 
        LCR       #__f_checknamewc      ; |1393| 
        ; call occurs [#__f_checknamewc] ; |1393| 
        TEST      ACC                   ; |1393| 
        BF        L221,NEQ              ; |1393| 
        ; branchcc occurs ; |1393| 
        MOVZ      AR5,SP                ; |1395| 
        MOVL      XAR4,XAR1             ; |1395| 
        MOV       AL,*-SP[42]           ; |1395| 
        SUBB      XAR5,#10              ; |1395| 
        LCR       #__f_getvolume        ; |1395| 
        ; call occurs [#__f_getvolume] ; |1395| 
        CMPB      AL,#0                 ; |1395| 
        BF        L221,NEQ              ; |1395| 
        ; branchcc occurs ; |1395| 
        LCR       #__f_getintfile       ; |1397| 
        ; call occurs [#__f_getintfile] ; |1397| 
        MOVL      ACC,XAR4              ; |1397| 
        MOVL      XAR2,XAR4             ; |1397| 
        BF        L221,EQ               ; |1397| 
        ; branchcc occurs ; |1397| 
        MOV       AL,*-SP[42]           ; |1401| 
        MOVB      XAR0,#8               ; |1402| 
        MOV       *+XAR2[5],AL          ; |1401| 
        MOVB      ACC,#0
        MOVL      *+XAR2[AR0],ACC       ; |1402| 
        MOVB      XAR0,#10              ; |1404| 
        MOVL      *+XAR2[6],ACC         ; |1403| 
        MOVL      *+XAR2[AR0],ACC       ; |1404| 
        MOVL      XAR0,#918             ; |1405| 
        MOVL      *+XAR2[AR0],ACC       ; |1405| 
        MOVL      *+XAR2[2],ACC         ; |1406| 
        MOV       AL,*-SP[21]           ; |1408| 
        CMPB      AL,#46                ; |1408| 
        BF        L221,EQ               ; |1408| 
        ; branchcc occurs ; |1408| 
        MOV       AL,*-SP[43]
        CMPB      AL,#4                 ; |1410| 
        BF        L218,GT               ; |1410| 
        ; branchcc occurs ; |1410| 
        CMPB      AL,#4                 ; |1410| 
        BF        L228,EQ               ; |1410| 
        ; branchcc occurs ; |1410| 
        CMPB      AL,#1                 ; |1410| 
        BF        L228,EQ               ; |1410| 
        ; branchcc occurs ; |1410| 
        CMPB      AL,#2                 ; |1410| 
        BF        L223,EQ               ; |1410| 
        ; branchcc occurs ; |1410| 
        CMPB      AL,#3                 ; |1410| 
        BF        L219,EQ               ; |1410| 
        ; branchcc occurs ; |1410| 
        BF        L221,UNC              ; |1410| 
        ; branch occurs ; |1410| 
L218:    
        CMPB      AL,#5                 ; |1410| 
        BF        L223,EQ               ; |1410| 
        ; branchcc occurs ; |1410| 
        CMPB      AL,#6                 ; |1410| 
        BF        L221,NEQ              ; |1410| 
        ; branchcc occurs ; |1410| 
L219:    
        MOVL      ACC,XAR2              ; |1449| 
        MOVL      XAR3,#928             ; |1449| 
        ADDL      XAR3,ACC
        MOVZ      AR5,SP                ; |1449| 
        MOVL      *-SP[2],XAR3          ; |1449| 
        MOVL      XAR4,*-SP[10]         ; |1449| 
        SUBB      XAR5,#42              ; |1449| 
        LCR       #__f_findpath         ; |1449| 
        ; call occurs [#__f_findpath] ; |1449| 
        CMPB      AL,#0                 ; |1449| 
        BF        L221,EQ               ; |1449| 
        ; branchcc occurs ; |1449| 
        MOVL      XAR0,#928             ; |1451| 
        MOVL      ACC,*+XAR2[AR0]       ; |1451| 
        MOVL      XAR0,#916             ; |1451| 
        MOVL      *+XAR2[AR0],ACC       ; |1451| 
        MOVL      XAR0,#938             ; |1452| 
        MOVL      ACC,*+XAR2[AR0]       ; |1452| 
        MOVL      XAR0,#926             ; |1452| 
        MOVL      *+XAR2[AR0],ACC       ; |1452| 
        MOVL      XAR0,#934             ; |1453| 
        MOVL      ACC,*+XAR2[AR0]       ; |1453| 
        MOVL      XAR0,#922             ; |1453| 
        MOVL      *+XAR2[AR0],ACC       ; |1453| 
        MOVL      XAR0,#936             ; |1454| 
        MOVZ      AR4,SP                ; |1456| 
        MOVL      ACC,*+XAR2[AR0]       ; |1454| 
        MOVL      XAR0,#924             ; |1454| 
        SUBB      XAR4,#13              ; |1456| 
        MOVL      *+XAR2[AR0],ACC       ; |1454| 
        MOVL      *-SP[2],XAR4          ; |1456| 
        MOVZ      AR4,SP                ; |1456| 
        MOVZ      AR5,SP                ; |1456| 
        SUBB      XAR4,#8               ; |1456| 
        MOVL      *-SP[4],XAR3          ; |1456| 
        MOVL      *-SP[6],XAR4          ; |1456| 
        MOVL      XAR4,*-SP[10]         ; |1456| 
        SUBB      XAR5,#21              ; |1456| 
        LCR       #__f_findfile         ; |1456| 
        ; call occurs [#__f_findfile] ; |1456| 
        CMPB      AL,#0                 ; |1456| 
        BF        L220,NEQ              ; |1456| 
        ; branchcc occurs ; |1456| 
        MOVL      XAR0,#916             ; |1485| 
        MOVL      ACC,*+XAR2[AR0]       ; |1485| 
        MOVL      XAR0,#928             ; |1485| 
        MOVL      *+XAR2[AR0],ACC       ; |1485| 
        MOVL      XAR0,#926             ; |1486| 
        MOVL      ACC,*+XAR2[AR0]       ; |1486| 
        MOVL      XAR0,#938             ; |1486| 
        MOVL      *+XAR2[AR0],ACC       ; |1486| 
        MOVL      XAR0,#922             ; |1487| 
        MOVL      ACC,*+XAR2[AR0]       ; |1487| 
        MOVL      XAR0,#934             ; |1487| 
        MOVL      *+XAR2[AR0],ACC       ; |1487| 
        MOVL      XAR0,#924             ; |1488| 
        MOVL      ACC,*+XAR2[AR0]       ; |1488| 
        MOVL      XAR0,#936             ; |1488| 
        MOVL      XAR5,#916             ; |1490| 
        MOVL      *+XAR2[AR0],ACC       ; |1488| 
        MOVL      XAR0,#928             ; |1490| 
        MOVL      ACC,XAR2              ; |1490| 
        ADDL      XAR5,ACC
        MOVL      XAR4,*-SP[10]         ; |1490| 
        MOVL      ACC,*+XAR2[AR0]       ; |1490| 
        LCR       #__f_clustertopos     ; |1490| 
        ; call occurs [#__f_clustertopos] ; |1490| 
        MOVZ      AR4,SP                ; |1492| 
        MOVL      *-SP[2],XAR3          ; |1492| 
        MOVZ      AR5,SP                ; |1492| 
        SUBB      XAR4,#8               ; |1492| 
        MOVL      *-SP[4],XAR4          ; |1492| 
        MOVL      XAR4,*-SP[10]         ; |1492| 
        SUBB      XAR5,#42              ; |1492| 
        LCR       #__f_addentry         ; |1492| 
        ; call occurs [#__f_addentry] ; |1492| 
        CMPB      AL,#0                 ; |1492| 
        BF        L224,EQ               ; |1492| 
        ; branchcc occurs ; |1492| 
        BF        L221,UNC              ; |1492| 
        ; branch occurs ; |1492| 
L220:    
        MOVL      XAR4,*-SP[8]          ; |1458| 
        MOVB      XAR0,#11              ; |1458| 
        MOV       AL,*+XAR4[AR0]        ; |1458| 
        AND       AH,AL,#0x0010         ; |1458| 
        ANDB      AL,#1                 ; |1458| 
        OR        AL,AH                 ; |1458| 
        BF        L221,NEQ              ; |1458| 
        ; branchcc occurs ; |1458| 
        SETC      SXM
        MOV       ACC,*-SP[42]          ; |1461| 
        MOVL      XAR6,ACC              ; |1461| 
        MOVL      XAR4,#928             ; |1461| 
        MOVL      ACC,XAR2              ; |1461| 
        ADDL      XAR4,ACC
        MOVL      ACC,XAR6              ; |1461| 
        LCR       #__f_checklocked      ; |1461| 
        ; call occurs [#__f_checklocked] ; |1461| 
        CMPB      AL,#0                 ; |1461| 
        BF        L221,NEQ              ; |1461| 
        ; branchcc occurs ; |1461| 
        MOVL      XAR4,*-SP[10]         ; |1463| 
        MOVL      XAR5,*-SP[8]          ; |1463| 
        LCR       #__f_getdecluster     ; |1463| 
        ; call occurs [#__f_getdecluster] ; |1463| 
        MOVL      XAR0,#914             ; |1463| 
        MOVL      *+XAR2[AR0],ACC       ; |1463| 
        MOVL      XAR4,*-SP[8]          ; |1465| 
        ADDB      XAR4,#28              ; |1465| 
        LCR       #__f_getlong          ; |1465| 
        ; call occurs [#__f_getlong] ; |1465| 
        MOVB      XAR0,#10              ; |1465| 
        MOVL      *+XAR2[AR0],ACC       ; |1465| 
        MOVL      XAR5,*-SP[10]         ; |1467| 
        MOVL      XAR4,XAR2             ; |1465| 
        LCR       #__fn_initseekdivisor ; |1467| 
        ; call occurs [#__fn_initseekdivisor] ; |1467| 
        MOVL      XAR0,#914             ; |1470| 
        MOVL      XAR6,*+XAR2[AR0]      ; |1470| 
        MOVL      ACC,XAR6              ; |1470| 
        BF        L222,EQ               ; |1470| 
        ; branchcc occurs ; |1470| 
        MOVL      ACC,XAR2              ; |1471| 
        MOVL      XAR5,#916             ; |1471| 
        MOVL      XAR4,*-SP[10]         ; |1471| 
        ADDL      XAR5,ACC
        MOVL      ACC,XAR6              ; |1471| 
        LCR       #__f_clustertopos     ; |1471| 
        ; call occurs [#__f_clustertopos] ; |1471| 
        MOV       PH,#65535
        MOV       PL,#65024
        MOVL      *+XAR2[6],P           ; |1472| 
        MOVL      *-SP[2],XAR2          ; |1473| 
        MOVL      XAR5,XAR1             ; |1473| 
        MOVL      XAR4,*-SP[10]         ; |1473| 
        MOVB      XAR0,#10              ; |1473| 
        MOVL      ACC,*+XAR2[AR0]       ; |1473| 
        LCR       #__f_fseek            ; |1473| 
        ; call occurs [#__f_fseek] ; |1473| 
        CMPB      AL,#0                 ; |1473| 
        BF        L234,EQ               ; |1473| 
        ; branchcc occurs ; |1473| 
        MOV       *+XAR2[4],#0          ; |1474| 
L221:    
        MOVB      XAR4,#0
        BF        L235,UNC              ; |1475| 
        ; branch occurs ; |1475| 
L222:    
        MOVL      XAR0,#922             ; |1479| 
        MOVB      ACC,#0
        MOVL      *+XAR2[AR0],ACC       ; |1479| 
        MOVL      XAR0,#924             ; |1480| 
        MOVL      *+XAR2[AR0],ACC       ; |1480| 
        BF        L234,UNC              ; |1480| 
        ; branch occurs ; |1480| 
L223:    
        MOVL      ACC,XAR2              ; |1509| 
        MOVL      XAR4,#928             ; |1509| 
        ADDL      XAR4,ACC
        MOVZ      AR5,SP                ; |1509| 
        MOVL      XAR1,XAR4             ; |1509| 
        MOVL      *-SP[2],XAR4          ; |1509| 
        MOVL      XAR4,*-SP[10]         ; |1509| 
        SUBB      XAR5,#42              ; |1509| 
        LCR       #__f_findpath         ; |1509| 
        ; call occurs [#__f_findpath] ; |1509| 
        CMPB      AL,#0                 ; |1509| 
        BF        L221,EQ               ; |1509| 
        ; branchcc occurs ; |1509| 
        MOVL      ACC,XAR2              ; |1511| 
        MOVL      XAR3,#916             ; |1511| 
        ADDL      XAR3,ACC
        MOVL      XAR0,#928             ; |1511| 
        MOVL      XAR4,*-SP[10]         ; |1511| 
        MOVL      XAR5,XAR3             ; |1511| 
        MOVL      ACC,*+XAR2[AR0]       ; |1511| 
        LCR       #__f_clustertopos     ; |1511| 
        ; call occurs [#__f_clustertopos] ; |1511| 
        MOVZ      AR4,SP                ; |1512| 
        SUBB      XAR4,#13              ; |1512| 
        MOVL      *-SP[2],XAR4          ; |1512| 
        MOVZ      AR4,SP                ; |1512| 
        SUBB      XAR4,#8               ; |1512| 
        MOVZ      AR5,SP                ; |1512| 
        MOVL      *-SP[4],XAR3          ; |1512| 
        MOVL      *-SP[6],XAR4          ; |1512| 
        MOVL      XAR4,*-SP[10]         ; |1512| 
        SUBB      XAR5,#21              ; |1512| 
        LCR       #__f_findfile         ; |1512| 
        ; call occurs [#__f_findfile] ; |1512| 
        CMPB      AL,#0                 ; |1512| 
        BF        L225,NEQ              ; |1512| 
        ; branchcc occurs ; |1512| 
        MOVZ      AR4,SP                ; |1547| 
        MOVL      *-SP[2],XAR1          ; |1547| 
        MOVZ      AR5,SP                ; |1547| 
        SUBB      XAR4,#8               ; |1547| 
        MOVL      *-SP[4],XAR4          ; |1547| 
        MOVL      XAR4,*-SP[10]         ; |1547| 
        SUBB      XAR5,#42              ; |1547| 
        LCR       #__f_addentry         ; |1547| 
        ; call occurs [#__f_addentry] ; |1547| 
        CMPB      AL,#0                 ; |1547| 
        BF        L221,NEQ              ; |1547| 
        ; branchcc occurs ; |1547| 
L224:    
        MOVL      XAR4,*-SP[8]          ; |1549| 
        ADDB      XAR4,#11              ; |1549| 
        OR        *+XAR4[0],#0x0020     ; |1549| 
        MOVL      XAR4,*-SP[10]         ; |1550| 
        LCR       #__f_writedirsector   ; |1550| 
        ; call occurs [#__f_writedirsector] ; |1550| 
        CMPB      AL,#0                 ; |1550| 
        BF        L227,EQ               ; |1550| 
        ; branchcc occurs ; |1550| 
        BF        L221,UNC              ; |1550| 
        ; branch occurs ; |1550| 
L225:    
        MOVL      XAR4,*-SP[10]         ; |1513| 
        MOVL      XAR5,*-SP[8]          ; |1513| 
        LCR       #__f_getdecluster     ; |1513| 
        ; call occurs [#__f_getdecluster] ; |1513| 
        MOVL      XAR4,*-SP[8]          ; |1515| 
        MOVB      XAR0,#11              ; |1515| 
        MOVL      XAR1,ACC              ; |1513| 
        MOV       AL,*+XAR4[AR0]        ; |1515| 
        AND       AH,AL,#0x0010         ; |1515| 
        ANDB      AL,#1                 ; |1515| 
        OR        AL,AH                 ; |1515| 
        BF        L221,NEQ              ; |1515| 
        ; branchcc occurs ; |1515| 
        MOVL      XAR0,#916             ; |1518| 
        MOVL      ACC,*+XAR2[AR0]       ; |1518| 
        MOVL      XAR0,#928             ; |1518| 
        MOVL      *+XAR2[AR0],ACC       ; |1518| 
        MOVL      XAR0,#926             ; |1519| 
        MOVL      ACC,*+XAR2[AR0]       ; |1519| 
        MOVL      XAR0,#938             ; |1519| 
        MOVL      *+XAR2[AR0],ACC       ; |1519| 
        MOVL      XAR0,#922             ; |1520| 
        MOVL      ACC,*+XAR2[AR0]       ; |1520| 
        MOVL      XAR0,#934             ; |1520| 
        MOVL      *+XAR2[AR0],ACC       ; |1520| 
        MOVL      XAR0,#924             ; |1521| 
        MOVL      ACC,*+XAR2[AR0]       ; |1521| 
        MOVL      XAR0,#936             ; |1521| 
        SETC      SXM
        MOVL      *+XAR2[AR0],ACC       ; |1521| 
        MOV       ACC,*-SP[42]          ; |1523| 
        MOVL      XAR6,ACC              ; |1523| 
        MOVL      XAR4,#928             ; |1523| 
        MOVL      ACC,XAR2              ; |1523| 
        ADDL      XAR4,ACC
        MOVL      ACC,XAR6              ; |1523| 
        LCR       #__f_checklocked      ; |1523| 
        ; call occurs [#__f_checklocked] ; |1523| 
        CMPB      AL,#0                 ; |1523| 
        BF        L221,NEQ              ; |1523| 
        ; branchcc occurs ; |1523| 
        MOVL      XAR4,*-SP[8]          ; |1525| 
        ADDB      XAR4,#28              ; |1525| 
        MOV       *+XAR4[0],#0          ; |1525| 
        MOV       *+XAR4[1],#0          ; |1526| 
        MOV       *+XAR4[2],#0          ; |1527| 
        MOV       *+XAR4[3],#0          ; |1528| 
        MOVL      XAR4,*-SP[8]          ; |1530| 
        ADDB      XAR4,#11              ; |1530| 
        OR        *+XAR4[0],#0x0020     ; |1530| 
        MOVL      XAR4,*-SP[8]          ; |1531| 
        ADDB      XAR4,#26              ; |1531| 
        MOV       *+XAR4[0],#0          ; |1531| 
        MOV       *+XAR4[1],#0          ; |1532| 
        MOVL      XAR4,*-SP[8]          ; |1533| 
        MOVL      XAR0,#1136            ; |1536| 
        ADDB      XAR4,#20              ; |1533| 
        MOV       *+XAR4[0],#0          ; |1533| 
        MOV       *+XAR4[1],#0          ; |1534| 
        MOVL      XAR4,*-SP[10]         ; |1536| 
        MOVB      ACC,#3
        CMPL      ACC,*+XAR4[AR0]       ; |1536| 
        BF        L226,NEQ              ; |1536| 
        ; branchcc occurs ; |1536| 
        LCR       #_f_getdate           ; |1537| 
        ; call occurs [#_f_getdate] ; |1537| 
        MOVL      XAR4,*-SP[8]          ; |1537| 
        ADDB      XAR4,#16              ; |1537| 
        LCR       #__f_setword          ; |1537| 
        ; call occurs [#__f_setword] ; |1537| 
        LCR       #_f_gettime           ; |1538| 
        ; call occurs [#_f_gettime] ; |1538| 
        MOVL      XAR4,*-SP[8]          ; |1538| 
        ADDB      XAR4,#14              ; |1538| 
        LCR       #__f_setword          ; |1538| 
        ; call occurs [#__f_setword] ; |1538| 
        LCR       #_f_getdate           ; |1539| 
        ; call occurs [#_f_getdate] ; |1539| 
        MOVL      XAR4,*-SP[8]          ; |1539| 
        ADDB      XAR4,#18              ; |1539| 
        LCR       #__f_setword          ; |1539| 
        ; call occurs [#__f_setword] ; |1539| 
L226:    
        MOVL      XAR4,*-SP[10]         ; |1542| 
        LCR       #__f_writedirsector   ; |1542| 
        ; call occurs [#__f_writedirsector] ; |1542| 
        CMPB      AL,#0                 ; |1542| 
        BF        L221,NEQ              ; |1542| 
        ; branchcc occurs ; |1542| 
        MOVL      XAR4,*-SP[10]         ; |1544| 
        MOVL      ACC,XAR1              ; |1544| 
        LCR       #__f_removechain      ; |1544| 
        ; call occurs [#__f_removechain] ; |1544| 
        CMPB      AL,#0                 ; |1544| 
        BF        L221,NEQ              ; |1544| 
        ; branchcc occurs ; |1544| 
L227:    
        MOVL      XAR0,#914             ; |1554| 
        MOVB      ACC,#0
        MOVL      *+XAR2[AR0],ACC       ; |1554| 
        BF        L232,UNC              ; |1561| 
        ; branch occurs ; |1561| 
L228:    
        MOVL      ACC,XAR2              ; |1414| 
        MOVL      XAR3,#928             ; |1414| 
        ADDL      XAR3,ACC
        MOVZ      AR5,SP                ; |1414| 
        MOVL      *-SP[2],XAR3          ; |1414| 
        MOVL      XAR4,*-SP[10]         ; |1414| 
        SUBB      XAR5,#42              ; |1414| 
        LCR       #__f_findpath         ; |1414| 
        ; call occurs [#__f_findpath] ; |1414| 
        CMPB      AL,#0                 ; |1414| 
        BF        L221,EQ               ; |1414| 
        ; branchcc occurs ; |1414| 
        MOVZ      AR4,SP                ; |1415| 
        SUBB      XAR4,#13              ; |1415| 
        MOVL      *-SP[2],XAR4          ; |1415| 
        MOVZ      AR4,SP                ; |1415| 
        MOVZ      AR5,SP                ; |1415| 
        MOVL      *-SP[4],XAR3          ; |1415| 
        SUBB      XAR4,#8               ; |1415| 
        MOVL      *-SP[6],XAR4          ; |1415| 
        MOVL      XAR4,*-SP[10]         ; |1415| 
        SUBB      XAR5,#21              ; |1415| 
        LCR       #__f_findfile         ; |1415| 
        ; call occurs [#__f_findfile] ; |1415| 
        CMPB      AL,#0                 ; |1415| 
        BF        L221,EQ               ; |1415| 
        ; branchcc occurs ; |1415| 
        MOVL      XAR4,*-SP[8]          ; |1415| 
        MOVB      XAR0,#11              ; |1415| 
        TBIT      *+XAR4[AR0],#4        ; |1415| 
        BF        L221,TC               ; |1415| 
        ; branchcc occurs ; |1415| 
        MOV       AL,*-SP[43]
        CMPB      AL,#4                 ; |1418| 
        BF        L229,EQ               ; |1418| 
        ; branchcc occurs ; |1418| 
        MOVL      XAR4,XAR3             ; |1423| 
        SETC      SXM
        MOV       ACC,*-SP[42]          ; |1423| 
        LCR       #__f_checkreadlocked  ; |1423| 
        ; call occurs [#__f_checkreadlocked] ; |1423| 
        CMPB      AL,#0                 ; |1423| 
        BF        L230,EQ               ; |1423| 
        ; branchcc occurs ; |1423| 
        BF        L221,UNC              ; |1423| 
        ; branch occurs ; |1423| 
L229:    
        MOVL      XAR4,*-SP[8]          ; |1419| 
        TBIT      *+XAR4[AR0],#0        ; |1419| 
        BF        L221,TC               ; |1419| 
        ; branchcc occurs ; |1419| 
        SETC      SXM
        MOV       ACC,*-SP[42]          ; |1420| 
        MOVL      XAR6,ACC              ; |1420| 
        MOVL      XAR4,#928             ; |1420| 
        MOVL      ACC,XAR2              ; |1420| 
        ADDL      XAR4,ACC
        MOVL      ACC,XAR6              ; |1420| 
        LCR       #__f_checklocked      ; |1420| 
        ; call occurs [#__f_checklocked] ; |1420| 
        CMPB      AL,#0                 ; |1420| 
        BF        L221,NEQ              ; |1420| 
        ; branchcc occurs ; |1420| 
L230:    
        MOVL      XAR4,*-SP[10]         ; |1426| 
        MOVL      XAR5,*-SP[8]          ; |1426| 
        LCR       #__f_getdecluster     ; |1426| 
        ; call occurs [#__f_getdecluster] ; |1426| 
        MOVL      XAR0,#914             ; |1426| 
        MOVL      *+XAR2[AR0],ACC       ; |1426| 
        MOVL      XAR6,*+XAR2[AR0]      ; |1428| 
        MOVL      ACC,XAR6              ; |1428| 
        BF        L231,EQ               ; |1428| 
        ; branchcc occurs ; |1428| 
        MOVL      ACC,XAR2              ; |1429| 
        MOVL      XAR5,#916             ; |1429| 
        MOVL      XAR4,*-SP[10]         ; |1429| 
        ADDL      XAR5,ACC
        MOVL      ACC,XAR6              ; |1429| 
        LCR       #__f_clustertopos     ; |1429| 
        ; call occurs [#__f_clustertopos] ; |1429| 
        MOVL      XAR4,*-SP[8]          ; |1431| 
        ADDB      XAR4,#28              ; |1431| 
        LCR       #__f_getlong          ; |1431| 
        ; call occurs [#__f_getlong] ; |1431| 
        MOVB      XAR0,#10              ; |1431| 
        MOV       PH,#65535
        MOV       PL,#65024
        MOVL      *+XAR2[AR0],ACC       ; |1431| 
        MOVL      *+XAR2[6],P           ; |1433| 
        MOVL      *-SP[2],XAR2          ; |1434| 
        MOVL      XAR4,*-SP[10]         ; |1434| 
        MOVL      XAR5,XAR1             ; |1434| 
        MOVB      ACC,#0
        LCR       #__f_fseek            ; |1434| 
        ; call occurs [#__f_fseek] ; |1434| 
        CMPB      AL,#0                 ; |1434| 
        BF        L233,EQ               ; |1434| 
        ; branchcc occurs ; |1434| 
        BF        L221,UNC              ; |1434| 
        ; branch occurs ; |1434| 
L231:    
        MOVB      ACC,#0
L232:    
        MOVL      XAR0,#922             ; |1437| 
        MOVL      *+XAR2[AR0],ACC       ; |1437| 
        MOVL      XAR0,#924             ; |1438| 
        MOVL      *+XAR2[AR0],ACC       ; |1438| 
L233:    
        MOVL      XAR5,*-SP[10]         ; |1442| 
        MOVL      XAR4,XAR2
        LCR       #__fn_initseekdivisor ; |1442| 
        ; call occurs [#__fn_initseekdivisor] ; |1442| 
L234:    
        MOVL      XAR0,#528             ; |1570| 
        MOVL      ACC,XAR2              ; |1570| 
        MOVL      XAR4,#530             ; |1570| 
        ADDL      XAR4,ACC
        MOVL      *+XAR2[AR0],XAR4      ; |1570| 
        MOV       AL,*-SP[43]           ; |1570| 
        MOV       *+XAR2[4],AL          ; |1572| 
        MOVL      XAR4,*+XAR2[0]        ; |1574| 
L235:    
        SUBB      SP,#44                ; |1574| 
        MOVL      XAR3,*--SP            ; |1574| 
        MOVL      XAR2,*--SP            ; |1574| 
        MOVL      XAR1,*--SP            ; |1574| 
	.dwpsn	"fat.c",1575,1
        LRETR
        ; return occurs
	.dwattr DW$463, DW_AT_end_file("fat.c")
	.dwattr DW$463, DW_AT_end_line(0x627)
	.dwattr DW$463, DW_AT_end_column(0x01)
	.dwendtag DW$463

	.sect	".text"
	.global	_fn_settimedate

DW$467	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_settimedate"), DW_AT_symbol_name("_fn_settimedate")
	.dwattr DW$467, DW_AT_low_pc(_fn_settimedate)
	.dwattr DW$467, DW_AT_high_pc(0x00)
	.dwattr DW$467, DW_AT_begin_file("fat.c")
	.dwattr DW$467, DW_AT_begin_line(0x63c)
	.dwattr DW$467, DW_AT_begin_column(0x05)
	.dwattr DW$467, DW_AT_frame_base[DW_OP_breg20 -62]
	.dwattr DW$467, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",1596,96

;***************************************************************
;* FNAME: _fn_settimedate               FR SIZE:  60           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            6 Parameter, 49 Auto,  4 SOE     *
;***************************************************************

_fn_settimedate:
;* AR4   assigned to _fm
DW$468	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$468, DW_AT_type(*DW$T$117)
	.dwattr DW$468, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _filename
DW$469	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filename"), DW_AT_symbol_name("_filename")
	.dwattr DW$469, DW_AT_type(*DW$T$146)
	.dwattr DW$469, DW_AT_location[DW_OP_reg14]
;* AL    assigned to _ctime
DW$470	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ctime"), DW_AT_symbol_name("_ctime")
	.dwattr DW$470, DW_AT_type(*DW$T$9)
	.dwattr DW$470, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _cdate
DW$471	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cdate"), DW_AT_symbol_name("_cdate")
	.dwattr DW$471, DW_AT_type(*DW$T$9)
	.dwattr DW$471, DW_AT_location[DW_OP_reg1]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR3
        ADDB      SP,#56
        MOVL      XAR1,XAR4             ; |1596| 
        MOVZ      AR4,SP                ; |1603| 
        SUBB      XAR4,#54              ; |1603| 
        MOVL      *-SP[2],XAR4          ; |1603| 
        MOVL      XAR4,XAR1             ; |1603| 
        MOV       *-SP[55],AH           ; |1596| 
        MOVZ      AR3,AL                ; |1596| 
        LCR       #__f_setfsname        ; |1603| 
        ; call occurs [#__f_setfsname] ; |1603| 
        CMPB      AL,#0                 ; |1603| 
        BF        L236,NEQ              ; |1603| 
        ; branchcc occurs ; |1603| 
        MOVZ      AR5,SP                ; |1604| 
        MOVZ      AR4,SP                ; |1604| 
        SUBB      XAR5,#25              ; |1604| 
        SUBB      XAR4,#33              ; |1604| 
        LCR       #__f_checknamewc      ; |1604| 
        ; call occurs [#__f_checknamewc] ; |1604| 
        TEST      ACC                   ; |1604| 
        BF        L237,EQ               ; |1604| 
        ; branchcc occurs ; |1604| 
L236:    
        MOVB      AL,#4                 ; |1604| 
        BF        L240,UNC              ; |1604| 
        ; branch occurs ; |1604| 
L237:    
        MOVZ      AR5,SP                ; |1606| 
        MOVL      XAR4,XAR1             ; |1606| 
        MOV       AL,*-SP[54]           ; |1606| 
        SUBB      XAR5,#10              ; |1606| 
        LCR       #__f_getvolume        ; |1606| 
        ; call occurs [#__f_getvolume] ; |1606| 
        CMPB      AL,#0                 ; |1606| 
        BF        L240,NEQ              ; |1606| 
        ; branchcc occurs ; |1606| 
        MOVZ      AR4,SP                ; |1609| 
        MOVZ      AR5,SP                ; |1609| 
        SUBB      XAR4,#22              ; |1609| 
        MOVL      *-SP[2],XAR4          ; |1609| 
        MOVL      XAR4,*-SP[10]         ; |1609| 
        SUBB      XAR5,#54              ; |1609| 
        LCR       #__f_findpath         ; |1609| 
        ; call occurs [#__f_findpath] ; |1609| 
        CMPB      AL,#0                 ; |1609| 
        BF        L238,NEQ              ; |1609| 
        ; branchcc occurs ; |1609| 
        MOVB      AL,#3                 ; |1609| 
        BF        L240,UNC              ; |1609| 
        ; branch occurs ; |1609| 
L238:    
        MOVZ      AR4,SP                ; |1610| 
        SUBB      XAR4,#25              ; |1610| 
        MOVL      *-SP[2],XAR4          ; |1610| 
        MOVZ      AR4,SP                ; |1610| 
        SUBB      XAR4,#22              ; |1610| 
        MOVL      *-SP[4],XAR4          ; |1610| 
        MOVZ      AR4,SP                ; |1610| 
        MOVZ      AR5,SP                ; |1610| 
        SUBB      XAR4,#8               ; |1610| 
        MOVL      *-SP[6],XAR4          ; |1610| 
        MOVL      XAR4,*-SP[10]         ; |1610| 
        SUBB      XAR5,#33              ; |1610| 
        LCR       #__f_findfile         ; |1610| 
        ; call occurs [#__f_findfile] ; |1610| 
        CMPB      AL,#0                 ; |1610| 
        BF        L239,EQ               ; |1610| 
        ; branchcc occurs ; |1610| 
        MOVL      XAR4,*-SP[8]          ; |1612| 
        MOV       AL,AR3                ; |1612| 
        ADDB      XAR4,#22              ; |1612| 
        LCR       #__f_setword          ; |1612| 
        ; call occurs [#__f_setword] ; |1612| 
        MOVL      XAR4,*-SP[8]          ; |1613| 
        MOV       AL,*-SP[55]           ; |1613| 
        ADDB      XAR4,#24              ; |1613| 
        LCR       #__f_setword          ; |1613| 
        ; call occurs [#__f_setword] ; |1613| 
        MOVL      XAR4,*-SP[10]         ; |1615| 
        LCR       #__f_writedirsector   ; |1615| 
        ; call occurs [#__f_writedirsector] ; |1615| 
        BF        L240,UNC              ; |1615| 
        ; branch occurs ; |1615| 
L239:    
        MOVB      AL,#5                 ; |1610| 
L240:    
        SUBB      SP,#56                ; |1610| 
        MOVL      XAR3,*--SP            ; |1610| 
        MOVL      XAR1,*--SP            ; |1610| 
	.dwpsn	"fat.c",1616,1
        LRETR
        ; return occurs
	.dwattr DW$467, DW_AT_end_file("fat.c")
	.dwattr DW$467, DW_AT_end_line(0x650)
	.dwattr DW$467, DW_AT_end_column(0x01)
	.dwendtag DW$467

	.sect	".text"
	.global	_fn_gettimedate

DW$472	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_gettimedate"), DW_AT_symbol_name("_fn_gettimedate")
	.dwattr DW$472, DW_AT_low_pc(_fn_gettimedate)
	.dwattr DW$472, DW_AT_high_pc(0x00)
	.dwattr DW$472, DW_AT_begin_file("fat.c")
	.dwattr DW$472, DW_AT_begin_line(0x664)
	.dwattr DW$472, DW_AT_begin_column(0x05)
	.dwattr DW$472, DW_AT_frame_base[DW_OP_breg20 -64]
	.dwattr DW$472, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",1636,100

;***************************************************************
;* FNAME: _fn_gettimedate               FR SIZE:  62           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            6 Parameter, 50 Auto,  6 SOE     *
;***************************************************************

_fn_gettimedate:
;* AR4   assigned to _fm
DW$473	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$473, DW_AT_type(*DW$T$117)
	.dwattr DW$473, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _filename
DW$474	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filename"), DW_AT_symbol_name("_filename")
	.dwattr DW$474, DW_AT_type(*DW$T$146)
	.dwattr DW$474, DW_AT_location[DW_OP_reg14]
DW$475	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pctime"), DW_AT_symbol_name("_pctime")
	.dwattr DW$475, DW_AT_type(*DW$T$109)
	.dwattr DW$475, DW_AT_location[DW_OP_breg20 -66]
DW$476	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pcdate"), DW_AT_symbol_name("_pcdate")
	.dwattr DW$476, DW_AT_type(*DW$T$109)
	.dwattr DW$476, DW_AT_location[DW_OP_breg20 -68]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOVZ      AR2,SP
        MOVL      XAR3,XAR4             ; |1636| 
        ADDB      SP,#56
        MOVZ      AR4,SP                ; |1643| 
        SUBB      FP,#12
        SUBB      XAR4,#54              ; |1643| 
        MOVL      ACC,*+FP[2]           ; |1636| 
        MOVL      XAR1,*+FP[0]          ; |1636| 
        MOVL      *-SP[2],XAR4          ; |1643| 
        MOVL      XAR4,XAR3             ; |1643| 
        MOVL      *-SP[56],ACC          ; |1636| 
        LCR       #__f_setfsname        ; |1643| 
        ; call occurs [#__f_setfsname] ; |1643| 
        CMPB      AL,#0                 ; |1643| 
        BF        L241,NEQ              ; |1643| 
        ; branchcc occurs ; |1643| 
        MOVZ      AR5,SP                ; |1644| 
        MOVZ      AR4,SP                ; |1644| 
        SUBB      XAR5,#25              ; |1644| 
        SUBB      XAR4,#33              ; |1644| 
        LCR       #__f_checknamewc      ; |1644| 
        ; call occurs [#__f_checknamewc] ; |1644| 
        TEST      ACC                   ; |1644| 
        BF        L242,EQ               ; |1644| 
        ; branchcc occurs ; |1644| 
L241:    
        MOVB      AL,#4                 ; |1644| 
        BF        L247,UNC              ; |1644| 
        ; branch occurs ; |1644| 
L242:    
        MOVZ      AR5,SP                ; |1646| 
        MOVL      XAR4,XAR3             ; |1646| 
        MOV       AL,*-SP[54]           ; |1646| 
        SUBB      XAR5,#8               ; |1646| 
        LCR       #__f_getvolume        ; |1646| 
        ; call occurs [#__f_getvolume] ; |1646| 
        CMPB      AL,#0                 ; |1646| 
        BF        L247,NEQ              ; |1646| 
        ; branchcc occurs ; |1646| 
        MOVZ      AR4,SP                ; |1649| 
        MOVZ      AR5,SP                ; |1649| 
        SUBB      XAR4,#22              ; |1649| 
        MOVL      *-SP[2],XAR4          ; |1649| 
        MOVL      XAR4,*-SP[8]          ; |1649| 
        SUBB      XAR5,#54              ; |1649| 
        LCR       #__f_findpath         ; |1649| 
        ; call occurs [#__f_findpath] ; |1649| 
        CMPB      AL,#0                 ; |1649| 
        BF        L243,NEQ              ; |1649| 
        ; branchcc occurs ; |1649| 
        MOVB      AL,#3                 ; |1649| 
        BF        L247,UNC              ; |1649| 
        ; branch occurs ; |1649| 
L243:    
        MOVZ      AR4,SP                ; |1650| 
        SUBB      XAR4,#25              ; |1650| 
        MOVL      *-SP[2],XAR4          ; |1650| 
        MOVZ      AR4,SP                ; |1650| 
        SUBB      XAR4,#22              ; |1650| 
        MOVL      *-SP[4],XAR4          ; |1650| 
        MOVZ      AR4,SP                ; |1650| 
        MOVZ      AR5,SP                ; |1650| 
        SUBB      XAR4,#10              ; |1650| 
        MOVL      *-SP[6],XAR4          ; |1650| 
        MOVL      XAR4,*-SP[8]          ; |1650| 
        SUBB      XAR5,#33              ; |1650| 
        LCR       #__f_findfile         ; |1650| 
        ; call occurs [#__f_findfile] ; |1650| 
        CMPB      AL,#0                 ; |1650| 
        BF        L244,NEQ              ; |1650| 
        ; branchcc occurs ; |1650| 
        MOVB      AL,#5                 ; |1650| 
        BF        L247,UNC              ; |1650| 
        ; branch occurs ; |1650| 
L244:    
        MOVL      ACC,*-SP[56]
        BF        L245,EQ               ; |1653| 
        ; branchcc occurs ; |1653| 
        MOVL      XAR4,*-SP[10]         ; |1653| 
        ADDB      XAR4,#22              ; |1653| 
        LCR       #__f_getword          ; |1653| 
        ; call occurs [#__f_getword] ; |1653| 
        MOVL      XAR4,*-SP[56]         ; |1653| 
        MOV       *+XAR4[0],AL          ; |1653| 
L245:    
        MOVL      ACC,XAR1
        BF        L246,EQ               ; |1654| 
        ; branchcc occurs ; |1654| 
        MOVL      XAR4,*-SP[10]         ; |1654| 
        ADDB      XAR4,#24              ; |1654| 
        LCR       #__f_getword          ; |1654| 
        ; call occurs [#__f_getword] ; |1654| 
        MOV       *+XAR1[0],AL          ; |1654| 
L246:    
        MOVB      AL,#0
L247:    
        SUBB      SP,#56                ; |1656| 
        MOVL      XAR3,*--SP            ; |1656| 
        MOVL      XAR2,*--SP            ; |1656| 
        MOVL      XAR1,*--SP            ; |1656| 
	.dwpsn	"fat.c",1657,1
        LRETR
        ; return occurs
	.dwattr DW$472, DW_AT_end_file("fat.c")
	.dwattr DW$472, DW_AT_end_line(0x679)
	.dwattr DW$472, DW_AT_end_column(0x01)
	.dwendtag DW$472

	.sect	".text"
	.global	_fn_delete

DW$477	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_delete"), DW_AT_symbol_name("_fn_delete")
	.dwattr DW$477, DW_AT_low_pc(_fn_delete)
	.dwattr DW$477, DW_AT_high_pc(0x00)
	.dwattr DW$477, DW_AT_begin_file("fat.c")
	.dwattr DW$477, DW_AT_begin_line(0x68b)
	.dwattr DW$477, DW_AT_begin_column(0x05)
	.dwattr DW$477, DW_AT_frame_base[DW_OP_breg20 -58]
	.dwattr DW$477, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",1675,49

;***************************************************************
;* FNAME: _fn_delete                    FR SIZE:  56           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            6 Parameter, 48 Auto,  2 SOE     *
;***************************************************************

_fn_delete:
;* AR4   assigned to _fm
DW$478	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$478, DW_AT_type(*DW$T$117)
	.dwattr DW$478, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _filename
DW$479	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filename"), DW_AT_symbol_name("_filename")
	.dwattr DW$479, DW_AT_type(*DW$T$146)
	.dwattr DW$479, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        ADDB      SP,#54
        MOVL      XAR1,XAR4             ; |1675| 
        MOVZ      AR4,SP                ; |1682| 
        SUBB      XAR4,#54              ; |1682| 
        MOVL      *-SP[2],XAR4          ; |1682| 
        MOVL      XAR4,XAR1             ; |1682| 
        LCR       #__f_setfsname        ; |1682| 
        ; call occurs [#__f_setfsname] ; |1682| 
        CMPB      AL,#0                 ; |1682| 
        BF        L248,NEQ              ; |1682| 
        ; branchcc occurs ; |1682| 
        MOVZ      AR5,SP                ; |1683| 
        MOVZ      AR4,SP                ; |1683| 
        SUBB      XAR5,#25              ; |1683| 
        SUBB      XAR4,#33              ; |1683| 
        LCR       #__f_checknamewc      ; |1683| 
        ; call occurs [#__f_checknamewc] ; |1683| 
        TEST      ACC                   ; |1683| 
        BF        L249,EQ               ; |1683| 
        ; branchcc occurs ; |1683| 
L248:    
        MOVB      AL,#4                 ; |1683| 
        BF        L256,UNC              ; |1683| 
        ; branch occurs ; |1683| 
L249:    
        MOVZ      AR5,SP                ; |1685| 
        MOVL      XAR4,XAR1             ; |1685| 
        MOV       AL,*-SP[54]           ; |1685| 
        SUBB      XAR5,#10              ; |1685| 
        LCR       #__f_getvolume        ; |1685| 
        ; call occurs [#__f_getvolume] ; |1685| 
        CMPB      AL,#0                 ; |1685| 
        BF        L256,NEQ              ; |1685| 
        ; branchcc occurs ; |1685| 
        MOV       AL,*-SP[33]           ; |1688| 
        CMPB      AL,#46                ; |1688| 
        BF        L250,EQ               ; |1688| 
        ; branchcc occurs ; |1688| 
        MOVZ      AR4,SP                ; |1689| 
        MOVZ      AR5,SP                ; |1689| 
        SUBB      XAR4,#22              ; |1689| 
        MOVL      *-SP[2],XAR4          ; |1689| 
        MOVL      XAR4,*-SP[10]         ; |1689| 
        SUBB      XAR5,#54              ; |1689| 
        LCR       #__f_findpath         ; |1689| 
        ; call occurs [#__f_findpath] ; |1689| 
        CMPB      AL,#0                 ; |1689| 
        BF        L252,EQ               ; |1689| 
        ; branchcc occurs ; |1689| 
        MOVZ      AR4,SP                ; |1690| 
        SUBB      XAR4,#25              ; |1690| 
        MOVL      *-SP[2],XAR4          ; |1690| 
        MOVZ      AR4,SP                ; |1690| 
        SUBB      XAR4,#22              ; |1690| 
        MOVL      *-SP[4],XAR4          ; |1690| 
        MOVZ      AR4,SP                ; |1690| 
        MOVZ      AR5,SP                ; |1690| 
        SUBB      XAR4,#8               ; |1690| 
        MOVL      *-SP[6],XAR4          ; |1690| 
        MOVL      XAR4,*-SP[10]         ; |1690| 
        SUBB      XAR5,#33              ; |1690| 
        LCR       #__f_findfile         ; |1690| 
        ; call occurs [#__f_findfile] ; |1690| 
        CMPB      AL,#0                 ; |1690| 
        BF        L251,NEQ              ; |1690| 
        ; branchcc occurs ; |1690| 
L250:    
        MOVB      AL,#5                 ; |1690| 
        BF        L256,UNC              ; |1690| 
        ; branch occurs ; |1690| 
L251:    
        MOVL      XAR4,*-SP[8]          ; |1692| 
        MOVB      XAR0,#11              ; |1692| 
        MOV       AL,*+XAR4[AR0]        ; |1692| 
        AND       AH,AL,#0x0010         ; |1692| 
        BF        L253,EQ               ; |1692| 
        ; branchcc occurs ; |1692| 
L252:    
        MOVB      AL,#3                 ; |1692| 
        BF        L256,UNC              ; |1692| 
        ; branch occurs ; |1692| 
L253:    
        ANDB      AL,#1                 ; |1693| 
        BF        L254,EQ               ; |1693| 
        ; branchcc occurs ; |1693| 
        MOVB      AL,#13                ; |1693| 
        BF        L256,UNC              ; |1693| 
        ; branch occurs ; |1693| 
L254:    
        MOVZ      AR4,SP                ; |1695| 
        SETC      SXM
        MOV       ACC,*-SP[54]          ; |1695| 
        SUBB      XAR4,#22              ; |1695| 
        LCR       #__f_checklocked      ; |1695| 
        ; call occurs [#__f_checklocked] ; |1695| 
        CMPB      AL,#0                 ; |1695| 
        BF        L255,EQ               ; |1695| 
        ; branchcc occurs ; |1695| 
        MOVB      AL,#12                ; |1695| 
        BF        L256,UNC              ; |1695| 
        ; branch occurs ; |1695| 
L255:    
        MOVL      XAR4,*-SP[8]          ; |1697| 
        MOV       *+XAR4[0],#229        ; |1697| 
        MOVL      XAR4,*-SP[10]         ; |1699| 
        LCR       #__f_writedirsector   ; |1699| 
        ; call occurs [#__f_writedirsector] ; |1699| 
        CMPB      AL,#0                 ; |1699| 
        BF        L256,NEQ              ; |1699| 
        ; branchcc occurs ; |1699| 
        MOVL      XAR4,*-SP[10]         ; |1702| 
        MOVL      XAR5,*-SP[8]          ; |1702| 
        LCR       #__f_getdecluster     ; |1702| 
        ; call occurs [#__f_getdecluster] ; |1702| 
        MOVL      XAR4,*-SP[10]         ; |1702| 
        LCR       #__f_removechain      ; |1702| 
        ; call occurs [#__f_removechain] ; |1702| 
L256:    
        SUBB      SP,#54                ; |1708| 
        MOVL      XAR1,*--SP            ; |1708| 
	.dwpsn	"fat.c",1709,1
        LRETR
        ; return occurs
	.dwattr DW$477, DW_AT_end_file("fat.c")
	.dwattr DW$477, DW_AT_end_line(0x6ad)
	.dwattr DW$477, DW_AT_end_column(0x01)
	.dwendtag DW$477

	.sect	".text"
	.global	_fn_getattr

DW$480	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_getattr"), DW_AT_symbol_name("_fn_getattr")
	.dwattr DW$480, DW_AT_low_pc(_fn_getattr)
	.dwattr DW$480, DW_AT_high_pc(0x00)
	.dwattr DW$480, DW_AT_begin_file("fat.c")
	.dwattr DW$480, DW_AT_begin_line(0x6c1)
	.dwattr DW$480, DW_AT_begin_column(0x05)
	.dwattr DW$480, DW_AT_frame_base[DW_OP_breg20 -62]
	.dwattr DW$480, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",1729,70

;***************************************************************
;* FNAME: _fn_getattr                   FR SIZE:  60           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            6 Parameter, 48 Auto,  6 SOE     *
;***************************************************************

_fn_getattr:
;* AR4   assigned to _fm
DW$481	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$481, DW_AT_type(*DW$T$117)
	.dwattr DW$481, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _filename
DW$482	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filename"), DW_AT_symbol_name("_filename")
	.dwattr DW$482, DW_AT_type(*DW$T$146)
	.dwattr DW$482, DW_AT_location[DW_OP_reg14]
DW$483	.dwtag  DW_TAG_formal_parameter, DW_AT_name("attr"), DW_AT_symbol_name("_attr")
	.dwattr DW$483, DW_AT_type(*DW$T$107)
	.dwattr DW$483, DW_AT_location[DW_OP_breg20 -64]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOVZ      AR2,SP
        MOVL      XAR3,XAR4             ; |1729| 
        ADDB      SP,#54
        MOVZ      AR4,SP                ; |1736| 
        SUBB      FP,#10
        SUBB      XAR4,#54              ; |1736| 
        MOVL      XAR1,*+FP[0]          ; |1729| 
        MOVL      *-SP[2],XAR4          ; |1736| 
        MOVL      XAR4,XAR3             ; |1736| 
        LCR       #__f_setfsname        ; |1736| 
        ; call occurs [#__f_setfsname] ; |1736| 
        CMPB      AL,#0                 ; |1736| 
        BF        L257,NEQ              ; |1736| 
        ; branchcc occurs ; |1736| 
        MOVZ      AR5,SP                ; |1737| 
        MOVZ      AR4,SP                ; |1737| 
        SUBB      XAR5,#25              ; |1737| 
        SUBB      XAR4,#33              ; |1737| 
        LCR       #__f_checknamewc      ; |1737| 
        ; call occurs [#__f_checknamewc] ; |1737| 
        TEST      ACC                   ; |1737| 
        BF        L258,EQ               ; |1737| 
        ; branchcc occurs ; |1737| 
L257:    
        MOVB      AL,#4                 ; |1737| 
        BF        L262,UNC              ; |1737| 
        ; branch occurs ; |1737| 
L258:    
        MOVZ      AR5,SP                ; |1739| 
        MOVL      XAR4,XAR3             ; |1739| 
        MOV       AL,*-SP[54]           ; |1739| 
        SUBB      XAR5,#8               ; |1739| 
        LCR       #__f_getvolume        ; |1739| 
        ; call occurs [#__f_getvolume] ; |1739| 
        CMPB      AL,#0                 ; |1739| 
        BF        L262,NEQ              ; |1739| 
        ; branchcc occurs ; |1739| 
        MOVZ      AR4,SP                ; |1742| 
        MOVZ      AR5,SP                ; |1742| 
        SUBB      XAR4,#22              ; |1742| 
        MOVL      *-SP[2],XAR4          ; |1742| 
        MOVL      XAR4,*-SP[8]          ; |1742| 
        SUBB      XAR5,#54              ; |1742| 
        LCR       #__f_findpath         ; |1742| 
        ; call occurs [#__f_findpath] ; |1742| 
        CMPB      AL,#0                 ; |1742| 
        BF        L259,NEQ              ; |1742| 
        ; branchcc occurs ; |1742| 
        MOVB      AL,#3                 ; |1742| 
        BF        L262,UNC              ; |1742| 
        ; branch occurs ; |1742| 
L259:    
        MOVZ      AR4,SP                ; |1743| 
        SUBB      XAR4,#25              ; |1743| 
        MOVL      *-SP[2],XAR4          ; |1743| 
        MOVZ      AR4,SP                ; |1743| 
        SUBB      XAR4,#22              ; |1743| 
        MOVL      *-SP[4],XAR4          ; |1743| 
        MOVZ      AR4,SP                ; |1743| 
        MOVZ      AR5,SP                ; |1743| 
        SUBB      XAR4,#10              ; |1743| 
        MOVL      *-SP[6],XAR4          ; |1743| 
        MOVL      XAR4,*-SP[8]          ; |1743| 
        SUBB      XAR5,#33              ; |1743| 
        LCR       #__f_findfile         ; |1743| 
        ; call occurs [#__f_findfile] ; |1743| 
        CMPB      AL,#0                 ; |1743| 
        BF        L260,NEQ              ; |1743| 
        ; branchcc occurs ; |1743| 
        MOVB      AL,#5                 ; |1743| 
        BF        L262,UNC              ; |1743| 
        ; branch occurs ; |1743| 
L260:    
        MOVL      ACC,XAR1
        BF        L261,EQ               ; |1745| 
        ; branchcc occurs ; |1745| 
        MOVL      XAR4,*-SP[10]         ; |1745| 
        MOVB      XAR0,#11              ; |1745| 
        MOV       AL,*+XAR4[AR0]        ; |1745| 
        MOV       *+XAR1[0],AL          ; |1745| 
L261:    
        MOVB      AL,#0
L262:    
        SUBB      SP,#54                ; |1747| 
        MOVL      XAR3,*--SP            ; |1747| 
        MOVL      XAR2,*--SP            ; |1747| 
        MOVL      XAR1,*--SP            ; |1747| 
	.dwpsn	"fat.c",1748,1
        LRETR
        ; return occurs
	.dwattr DW$480, DW_AT_end_file("fat.c")
	.dwattr DW$480, DW_AT_end_line(0x6d4)
	.dwattr DW$480, DW_AT_end_column(0x01)
	.dwendtag DW$480

	.sect	".text"
	.global	_fn_setattr

DW$484	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_setattr"), DW_AT_symbol_name("_fn_setattr")
	.dwattr DW$484, DW_AT_low_pc(_fn_setattr)
	.dwattr DW$484, DW_AT_high_pc(0x00)
	.dwattr DW$484, DW_AT_begin_file("fat.c")
	.dwattr DW$484, DW_AT_begin_line(0x6e7)
	.dwattr DW$484, DW_AT_begin_column(0x05)
	.dwattr DW$484, DW_AT_frame_base[DW_OP_breg20 -60]
	.dwattr DW$484, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",1767,69

;***************************************************************
;* FNAME: _fn_setattr                   FR SIZE:  58           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            6 Parameter, 48 Auto,  4 SOE     *
;***************************************************************

_fn_setattr:
;* AR4   assigned to _fm
DW$485	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$485, DW_AT_type(*DW$T$117)
	.dwattr DW$485, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _filename
DW$486	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filename"), DW_AT_symbol_name("_filename")
	.dwattr DW$486, DW_AT_type(*DW$T$146)
	.dwattr DW$486, DW_AT_location[DW_OP_reg14]
;* AL    assigned to _attr
DW$487	.dwtag  DW_TAG_formal_parameter, DW_AT_name("attr"), DW_AT_symbol_name("_attr")
	.dwattr DW$487, DW_AT_type(*DW$T$6)
	.dwattr DW$487, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        ADDB      SP,#54
        MOVL      XAR2,XAR4             ; |1767| 
        MOVZ      AR4,SP                ; |1774| 
        SUBB      XAR4,#54              ; |1774| 
        MOVL      *-SP[2],XAR4          ; |1774| 
        MOVL      XAR4,XAR2             ; |1774| 
        MOVZ      AR1,AL                ; |1767| 
        LCR       #__f_setfsname        ; |1774| 
        ; call occurs [#__f_setfsname] ; |1774| 
        CMPB      AL,#0                 ; |1774| 
        BF        L263,NEQ              ; |1774| 
        ; branchcc occurs ; |1774| 
        MOVZ      AR5,SP                ; |1775| 
        MOVZ      AR4,SP                ; |1775| 
        SUBB      XAR5,#25              ; |1775| 
        SUBB      XAR4,#33              ; |1775| 
        LCR       #__f_checknamewc      ; |1775| 
        ; call occurs [#__f_checknamewc] ; |1775| 
        TEST      ACC                   ; |1775| 
        BF        L264,EQ               ; |1775| 
        ; branchcc occurs ; |1775| 
L263:    
        MOVB      AL,#4                 ; |1775| 
        BF        L268,UNC              ; |1775| 
        ; branch occurs ; |1775| 
L264:    
        MOVZ      AR5,SP                ; |1777| 
        MOVL      XAR4,XAR2             ; |1777| 
        MOV       AL,*-SP[54]           ; |1777| 
        SUBB      XAR5,#10              ; |1777| 
        LCR       #__f_getvolume        ; |1777| 
        ; call occurs [#__f_getvolume] ; |1777| 
        CMPB      AL,#0                 ; |1777| 
        BF        L268,NEQ              ; |1777| 
        ; branchcc occurs ; |1777| 
        MOVZ      AR4,SP                ; |1780| 
        MOVZ      AR5,SP                ; |1780| 
        SUBB      XAR4,#22              ; |1780| 
        MOVL      *-SP[2],XAR4          ; |1780| 
        MOVL      XAR4,*-SP[10]         ; |1780| 
        SUBB      XAR5,#54              ; |1780| 
        LCR       #__f_findpath         ; |1780| 
        ; call occurs [#__f_findpath] ; |1780| 
        CMPB      AL,#0                 ; |1780| 
        BF        L265,NEQ              ; |1780| 
        ; branchcc occurs ; |1780| 
        MOVB      AL,#3                 ; |1780| 
        BF        L268,UNC              ; |1780| 
        ; branch occurs ; |1780| 
L265:    
        MOVZ      AR4,SP                ; |1781| 
        SUBB      XAR4,#25              ; |1781| 
        MOVL      *-SP[2],XAR4          ; |1781| 
        MOVZ      AR4,SP                ; |1781| 
        SUBB      XAR4,#22              ; |1781| 
        MOVL      *-SP[4],XAR4          ; |1781| 
        MOVZ      AR4,SP                ; |1781| 
        MOVZ      AR5,SP                ; |1781| 
        SUBB      XAR4,#8               ; |1781| 
        MOVL      *-SP[6],XAR4          ; |1781| 
        MOVL      XAR4,*-SP[10]         ; |1781| 
        SUBB      XAR5,#33              ; |1781| 
        LCR       #__f_findfile         ; |1781| 
        ; call occurs [#__f_findfile] ; |1781| 
        CMPB      AL,#0                 ; |1781| 
        BF        L266,NEQ              ; |1781| 
        ; branchcc occurs ; |1781| 
        MOVB      AL,#5                 ; |1781| 
        BF        L268,UNC              ; |1781| 
        ; branch occurs ; |1781| 
L266:    
        MOV       AL,AR1
        MOVL      XAR4,*-SP[8]          ; |1785| 
        ANDB      AL,#0x27              ; |1783| 
        MOVZ      AR1,AL                ; |1783| 
        MOVB      XAR0,#11              ; |1785| 
        MOV       AH,*+XAR4[AR0]        ; |1785| 
        AND       AL,AH,#0x0018         ; |1785| 
        OR        AR1,AL                ; |1785| 
        MOV       AL,AR1                ; |1785| 
        CMP       AL,AH                 ; |1787| 
        BF        L267,NEQ              ; |1787| 
        ; branchcc occurs ; |1787| 
        MOVB      AL,#0
        BF        L268,UNC              ; |1787| 
        ; branch occurs ; |1787| 
L267:    
        MOVL      XAR4,*-SP[8]          ; |1789| 
        MOV       *+XAR4[AR0],AR1       ; |1789| 
        MOVL      XAR4,*-SP[10]         ; |1791| 
        LCR       #__f_writedirsector   ; |1791| 
        ; call occurs [#__f_writedirsector] ; |1791| 
L268:    
        SUBB      SP,#54                ; |1791| 
        MOVL      XAR2,*--SP            ; |1791| 
        MOVL      XAR1,*--SP            ; |1791| 
	.dwpsn	"fat.c",1792,1
        LRETR
        ; return occurs
	.dwattr DW$484, DW_AT_end_file("fat.c")
	.dwattr DW$484, DW_AT_end_line(0x700)
	.dwattr DW$484, DW_AT_end_column(0x01)
	.dwendtag DW$484

	.sect	".text"
	.global	_fn_rmdir

DW$488	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_rmdir"), DW_AT_symbol_name("_fn_rmdir")
	.dwattr DW$488, DW_AT_low_pc(_fn_rmdir)
	.dwattr DW$488, DW_AT_high_pc(0x00)
	.dwattr DW$488, DW_AT_begin_file("fat.c")
	.dwattr DW$488, DW_AT_begin_line(0x712)
	.dwattr DW$488, DW_AT_begin_column(0x05)
	.dwattr DW$488, DW_AT_frame_base[DW_OP_breg20 -58]
	.dwattr DW$488, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",1810,47

;***************************************************************
;* FNAME: _fn_rmdir                     FR SIZE:  56           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            6 Parameter, 48 Auto,  2 SOE     *
;***************************************************************

_fn_rmdir:
;* AR4   assigned to _fm
DW$489	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$489, DW_AT_type(*DW$T$117)
	.dwattr DW$489, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _dirname
DW$490	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dirname"), DW_AT_symbol_name("_dirname")
	.dwattr DW$490, DW_AT_type(*DW$T$146)
	.dwattr DW$490, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        ADDB      SP,#54
        MOVL      XAR1,XAR4             ; |1810| 
        MOVZ      AR4,SP                ; |1819| 
        SUBB      XAR4,#54              ; |1819| 
        MOVL      *-SP[2],XAR4          ; |1819| 
        MOVL      XAR4,XAR1             ; |1819| 
        LCR       #__f_setfsname        ; |1819| 
        ; call occurs [#__f_setfsname] ; |1819| 
        CMPB      AL,#0                 ; |1819| 
        BF        L269,NEQ              ; |1819| 
        ; branchcc occurs ; |1819| 
        MOVZ      AR5,SP                ; |1820| 
        MOVZ      AR4,SP                ; |1820| 
        SUBB      XAR5,#25              ; |1820| 
        SUBB      XAR4,#33              ; |1820| 
        LCR       #__f_checknamewc      ; |1820| 
        ; call occurs [#__f_checknamewc] ; |1820| 
        TEST      ACC                   ; |1820| 
        BF        L270,EQ               ; |1820| 
        ; branchcc occurs ; |1820| 
L269:    
        MOVB      AL,#4                 ; |1820| 
        BF        L281,UNC              ; |1820| 
        ; branch occurs ; |1820| 
L270:    
        MOVZ      AR5,SP                ; |1822| 
        MOVL      XAR4,XAR1             ; |1822| 
        MOV       AL,*-SP[54]           ; |1822| 
        SUBB      XAR5,#8               ; |1822| 
        LCR       #__f_getvolume        ; |1822| 
        ; call occurs [#__f_getvolume] ; |1822| 
        CMPB      AL,#0                 ; |1822| 
        BF        L281,NEQ              ; |1822| 
        ; branchcc occurs ; |1822| 
        MOVZ      AR4,SP                ; |1825| 
        MOVZ      AR5,SP                ; |1825| 
        SUBB      XAR4,#22              ; |1825| 
        MOVL      *-SP[2],XAR4          ; |1825| 
        MOVL      XAR4,*-SP[8]          ; |1825| 
        SUBB      XAR5,#54              ; |1825| 
        LCR       #__f_findpath         ; |1825| 
        ; call occurs [#__f_findpath] ; |1825| 
        CMPB      AL,#0                 ; |1825| 
        BF        L271,EQ               ; |1825| 
        ; branchcc occurs ; |1825| 
        MOVZ      AR4,SP                ; |1826| 
        SUBB      XAR4,#25              ; |1826| 
        MOVL      *-SP[2],XAR4          ; |1826| 
        MOVZ      AR4,SP                ; |1826| 
        SUBB      XAR4,#22              ; |1826| 
        MOVL      *-SP[4],XAR4          ; |1826| 
        MOVZ      AR4,SP                ; |1826| 
        MOVZ      AR5,SP                ; |1826| 
        SUBB      XAR4,#10              ; |1826| 
        MOVL      *-SP[6],XAR4          ; |1826| 
        MOVL      XAR4,*-SP[8]          ; |1826| 
        SUBB      XAR5,#33              ; |1826| 
        LCR       #__f_findfile         ; |1826| 
        ; call occurs [#__f_findfile] ; |1826| 
        CMPB      AL,#0                 ; |1826| 
        BF        L273,EQ               ; |1826| 
        ; branchcc occurs ; |1826| 
        MOVL      XAR4,*-SP[10]         ; |1828| 
        MOVB      XAR0,#11              ; |1828| 
        TBIT      *+XAR4[AR0],#4        ; |1828| 
        BF        L272,TC               ; |1828| 
        ; branchcc occurs ; |1828| 
L271:    
        MOVB      AL,#3                 ; |1828| 
        BF        L281,UNC              ; |1828| 
        ; branch occurs ; |1828| 
L272:    
        MOV       AL,*-SP[33]           ; |1830| 
        CMPB      AL,#46                ; |1830| 
        BF        L274,NEQ              ; |1830| 
        ; branchcc occurs ; |1830| 
L273:    
        MOVB      AL,#5                 ; |1830| 
        BF        L281,UNC              ; |1830| 
        ; branch occurs ; |1830| 
L274:    
        LCR       #__f_getintfile       ; |1832| 
        ; call occurs [#__f_getintfile] ; |1832| 
        MOVL      ACC,XAR4              ; |1832| 
        MOVL      XAR1,XAR4             ; |1832| 
        BF        L275,NEQ              ; |1832| 
        ; branchcc occurs ; |1832| 
        MOVB      AL,#7                 ; |1834| 
        BF        L281,UNC              ; |1834| 
        ; branch occurs ; |1834| 
L275:    
        MOVL      XAR4,*-SP[8]          ; |1836| 
        MOVL      XAR5,*-SP[10]         ; |1836| 
        LCR       #__f_getdecluster     ; |1836| 
        ; call occurs [#__f_getdecluster] ; |1836| 
        MOVL      XAR6,ACC              ; |1836| 
        MOVL      XAR5,#916             ; |1836| 
        MOVL      ACC,XAR1              ; |1836| 
        ADDL      XAR5,ACC
        MOVL      XAR4,*-SP[8]          ; |1836| 
        MOVL      ACC,XAR6              ; |1836| 
        LCR       #__f_clustertopos     ; |1836| 
        ; call occurs [#__f_clustertopos] ; |1836| 
        BF        L280,UNC
        ; branch occurs
L276:    
DW$L$_fn_rmdir$14$B:
        CMPB      AL,#0                 ; |1843| 
        BF        L281,NEQ              ; |1843| 
        ; branchcc occurs ; |1843| 
DW$L$_fn_rmdir$14$E:
DW$L$_fn_rmdir$15$B:
        MOVB      ACC,#12
        MOVB      XAR6,#32              ; |1847| 
        MOVB      XAR5,#0
        ADDL      ACC,XAR1
	.dwpsn	"fat.c",1847,0
        MOVL      XAR4,ACC              ; |1845| 
DW$L$_fn_rmdir$15$E:
L277:    
DW$L$_fn_rmdir$16$B:
        MOV       AL,*+XAR4[0]          ; |1848| 
        BF        L279,EQ               ; |1848| 
        ; branchcc occurs ; |1848| 
DW$L$_fn_rmdir$16$E:
DW$L$_fn_rmdir$17$B:
        CMPB      AL,#229               ; |1850| 
        BF        L278,EQ               ; |1850| 
        ; branchcc occurs ; |1850| 
DW$L$_fn_rmdir$17$E:
DW$L$_fn_rmdir$18$B:
        CMPB      AL,#46                ; |1850| 
        BF        L278,EQ               ; |1850| 
        ; branchcc occurs ; |1850| 
DW$L$_fn_rmdir$18$E:
        MOVB      AL,#14                ; |1852| 
        BF        L281,UNC              ; |1852| 
        ; branch occurs ; |1852| 
L278:    
DW$L$_fn_rmdir$20$B:
        MOVL      ACC,XAR4              ; |1847| 
        ADDB      XAR5,#1               ; |1847| 
        ADDU      ACC,AR6               ; |1847| 
        MOVL      XAR4,ACC              ; |1847| 
        MOV       AL,AR5                ; |1847| 
        CMPB      AL,#16                ; |1847| 
	.dwpsn	"fat.c",1853,0
        BF        L277,LO               ; |1847| 
        ; branchcc occurs ; |1847| 
DW$L$_fn_rmdir$20$E:
L279:    
DW$L$_fn_rmdir$21$B:
        MOVL      ACC,XAR1              ; |1854| 
        MOVL      XAR4,#922             ; |1854| 
        ADDL      XAR4,ACC
        MOVB      ACC,#1
        ADDL      *+XAR4[0],ACC         ; |1854| 
DW$L$_fn_rmdir$21$E:
L280:    
DW$L$_fn_rmdir$22$B:
        MOVB      ACC,#0
        MOVL      XAR5,XAR1             ; |1840| 
        MOVL      *-SP[2],ACC           ; |1840| 
        MOVL      *-SP[4],ACC           ; |1840| 
        MOVL      XAR4,*-SP[8]          ; |1840| 
        LCR       #__f_getcurrsector    ; |1840| 
        ; call occurs [#__f_getcurrsector] ; |1840| 
        CMPB      AL,#9                 ; |1840| 
        BF        L276,NEQ              ; |1840| 
        ; branchcc occurs ; |1840| 
DW$L$_fn_rmdir$22$E:
        MOVL      XAR4,*-SP[10]         ; |1857| 
        MOV       *+XAR4[0],#229        ; |1857| 
        MOVL      XAR4,*-SP[8]          ; |1859| 
        LCR       #__f_writedirsector   ; |1859| 
        ; call occurs [#__f_writedirsector] ; |1859| 
        CMPB      AL,#0                 ; |1859| 
        BF        L281,NEQ              ; |1859| 
        ; branchcc occurs ; |1859| 
        MOVL      XAR4,*-SP[8]          ; |1862| 
        MOVL      XAR5,*-SP[10]         ; |1862| 
        LCR       #__f_getdecluster     ; |1862| 
        ; call occurs [#__f_getdecluster] ; |1862| 
        MOVL      XAR4,*-SP[8]          ; |1862| 
        LCR       #__f_removechain      ; |1862| 
        ; call occurs [#__f_removechain] ; |1862| 
L281:    
        SUBB      SP,#54                ; |1868| 
        MOVL      XAR1,*--SP            ; |1868| 
	.dwpsn	"fat.c",1869,1
        LRETR
        ; return occurs

DW$491	.dwtag  DW_TAG_loop
	.dwattr DW$491, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L280:1:1471518973")
	.dwattr DW$491, DW_AT_begin_file("fat.c")
	.dwattr DW$491, DW_AT_begin_line(0x730)
	.dwattr DW$491, DW_AT_end_line(0x73e)
DW$492	.dwtag  DW_TAG_loop_range
	.dwattr DW$492, DW_AT_low_pc(DW$L$_fn_rmdir$22$B)
	.dwattr DW$492, DW_AT_high_pc(DW$L$_fn_rmdir$22$E)
DW$493	.dwtag  DW_TAG_loop_range
	.dwattr DW$493, DW_AT_low_pc(DW$L$_fn_rmdir$14$B)
	.dwattr DW$493, DW_AT_high_pc(DW$L$_fn_rmdir$14$E)
DW$494	.dwtag  DW_TAG_loop_range
	.dwattr DW$494, DW_AT_low_pc(DW$L$_fn_rmdir$15$B)
	.dwattr DW$494, DW_AT_high_pc(DW$L$_fn_rmdir$15$E)
DW$495	.dwtag  DW_TAG_loop_range
	.dwattr DW$495, DW_AT_low_pc(DW$L$_fn_rmdir$21$B)
	.dwattr DW$495, DW_AT_high_pc(DW$L$_fn_rmdir$21$E)

DW$496	.dwtag  DW_TAG_loop
	.dwattr DW$496, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L277:2:1471518973")
	.dwattr DW$496, DW_AT_begin_file("fat.c")
	.dwattr DW$496, DW_AT_begin_line(0x737)
	.dwattr DW$496, DW_AT_end_line(0x73d)
DW$497	.dwtag  DW_TAG_loop_range
	.dwattr DW$497, DW_AT_low_pc(DW$L$_fn_rmdir$16$B)
	.dwattr DW$497, DW_AT_high_pc(DW$L$_fn_rmdir$16$E)
DW$498	.dwtag  DW_TAG_loop_range
	.dwattr DW$498, DW_AT_low_pc(DW$L$_fn_rmdir$17$B)
	.dwattr DW$498, DW_AT_high_pc(DW$L$_fn_rmdir$17$E)
DW$499	.dwtag  DW_TAG_loop_range
	.dwattr DW$499, DW_AT_low_pc(DW$L$_fn_rmdir$18$B)
	.dwattr DW$499, DW_AT_high_pc(DW$L$_fn_rmdir$18$E)
DW$500	.dwtag  DW_TAG_loop_range
	.dwattr DW$500, DW_AT_low_pc(DW$L$_fn_rmdir$20$B)
	.dwattr DW$500, DW_AT_high_pc(DW$L$_fn_rmdir$20$E)
	.dwendtag DW$496

	.dwendtag DW$491

	.dwattr DW$488, DW_AT_end_file("fat.c")
	.dwattr DW$488, DW_AT_end_line(0x74d)
	.dwattr DW$488, DW_AT_end_column(0x01)
	.dwendtag DW$488

	.sect	".text"
	.global	_fn_getlabel

DW$501	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_getlabel"), DW_AT_symbol_name("_fn_getlabel")
	.dwattr DW$501, DW_AT_low_pc(_fn_getlabel)
	.dwattr DW$501, DW_AT_high_pc(0x00)
	.dwattr DW$501, DW_AT_begin_file("fat.c")
	.dwattr DW$501, DW_AT_begin_line(0x762)
	.dwattr DW$501, DW_AT_begin_column(0x05)
	.dwattr DW$501, DW_AT_frame_base[DW_OP_breg20 -36]
	.dwattr DW$501, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",1890,66

;***************************************************************
;* FNAME: _fn_getlabel                  FR SIZE:  34           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 28 Auto,  6 SOE     *
;***************************************************************

_fn_getlabel:
;* AR4   assigned to _fm
DW$502	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$502, DW_AT_type(*DW$T$117)
	.dwattr DW$502, DW_AT_location[DW_OP_reg12]
DW$503	.dwtag  DW_TAG_formal_parameter, DW_AT_name("drivenum"), DW_AT_symbol_name("_drivenum")
	.dwattr DW$503, DW_AT_type(*DW$T$10)
	.dwattr DW$503, DW_AT_location[DW_OP_breg20 -37]
;* AR5   assigned to _label
DW$504	.dwtag  DW_TAG_formal_parameter, DW_AT_name("label"), DW_AT_symbol_name("_label")
	.dwattr DW$504, DW_AT_type(*DW$T$59)
	.dwattr DW$504, DW_AT_location[DW_OP_reg14]
;* AL    assigned to _len
DW$505	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$505, DW_AT_type(*DW$T$12)
	.dwattr DW$505, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#28
        MOVL      XAR1,XAR5             ; |1890| 
        TEST      ACC                   ; |1896| 
        MOVL      XAR3,ACC              ; |1890| 
        MOVZ      AR6,*-SP[37]          ; |1890| 
        BF        L294,EQ               ; |1896| 
        ; branchcc occurs ; |1896| 
        MOVZ      AR5,SP                ; |1898| 
        MOV       AL,AR6                ; |1898| 
        SUBB      XAR5,#4               ; |1898| 
        LCR       #__f_getvolume        ; |1898| 
        ; call occurs [#__f_getvolume] ; |1898| 
        CMPB      AL,#0                 ; |1898| 
        BF        L295,NEQ              ; |1898| 
        ; branchcc occurs ; |1898| 
        MOVZ      AR5,SP                ; |1901| 
        MOVL      XAR4,*-SP[4]          ; |1901| 
        MOVB      ACC,#0
        SUBB      XAR5,#28              ; |1901| 
        LCR       #__f_clustertopos     ; |1901| 
        ; call occurs [#__f_clustertopos] ; |1901| 
        MOVZ      AR4,SP                ; |1902| 
        MOVL      XAR5,*-SP[4]          ; |1902| 
        MOVB      ACC,#11
        SUBB      XAR4,#15              ; |1902| 
        ADDB      XAR5,#52              ; |1902| 
        LCR       #___memcpy_ff         ; |1902| 
        ; call occurs [#___memcpy_ff] ; |1902| 
        MOV       AL,#65520
        MOV       AH,#4095
        CMPL      ACC,*-SP[28]          ; |1904| 
        BF        L290,LOS              ; |1904| 
        ; branchcc occurs ; |1904| 
L282:    
DW$L$_fn_getlabel$4$B:
	.dwpsn	"fat.c",1904,0
        MOVL      ACC,*-SP[20]          ; |1905| 
        CMPL      ACC,*-SP[22]          ; |1905| 
        BF        L288,LOS              ; |1905| 
        ; branchcc occurs ; |1905| 
DW$L$_fn_getlabel$4$E:
L283:    
DW$L$_fn_getlabel$5$B:
	.dwpsn	"fat.c",1905,0
        MOVL      ACC,*-SP[4]           ; |1906| 
        MOVL      XAR4,#602             ; |1906| 
        ADDL      XAR4,ACC
        MOVL      XAR2,XAR4             ; |1906| 
        MOVL      XAR4,*-SP[4]          ; |1908| 
        MOVL      ACC,*-SP[22]          ; |1908| 
        LCR       #__f_getdirsector     ; |1908| 
        ; call occurs [#__f_getdirsector] ; |1908| 
        CMPB      AL,#0                 ; |1908| 
        BF        L295,NEQ              ; |1908| 
        ; branchcc occurs ; |1908| 
DW$L$_fn_getlabel$5$E:
DW$L$_fn_getlabel$6$B:
        MOVB      ACC,#0
        MOVL      *-SP[18],ACC          ; |1911| 
        MOVB      ACC,#16
        CMPL      ACC,*-SP[18]          ; |1911| 
        BF        L287,LOS              ; |1911| 
        ; branchcc occurs ; |1911| 
DW$L$_fn_getlabel$6$E:
L284:    
DW$L$_fn_getlabel$7$B:
	.dwpsn	"fat.c",1911,0
        MOVL      XAR5,XAR2
        MOV       AL,*+XAR5[0]          ; |1913| 
        BF        L285,EQ               ; |1913| 
        ; branchcc occurs ; |1913| 
DW$L$_fn_getlabel$7$E:
DW$L$_fn_getlabel$8$B:
        CMPB      AL,#229               ; |1913| 
        BF        L285,EQ               ; |1913| 
        ; branchcc occurs ; |1913| 
DW$L$_fn_getlabel$8$E:
DW$L$_fn_getlabel$9$B:
        MOVB      XAR0,#11              ; |1913| 
        MOV       AL,*+XAR2[AR0]        ; |1913| 
        CMPB      AL,#8                 ; |1913| 
        BF        L286,EQ               ; |1913| 
        ; branchcc occurs ; |1913| 
DW$L$_fn_getlabel$9$E:
L285:    
DW$L$_fn_getlabel$10$B:
        MOVL      ACC,XAR2              ; |1911| 
        MOVB      XAR4,#32              ; |1911| 
        ADDU      ACC,AR4               ; |1911| 
        MOVL      XAR2,ACC              ; |1911| 
        MOVB      ACC,#1
        ADDL      ACC,*-SP[18]          ; |1911| 
        MOVL      *-SP[18],ACC          ; |1911| 
        MOVB      ACC,#16
        CMPL      ACC,*-SP[18]          ; |1911| 
	.dwpsn	"fat.c",1920,0
        BF        L284,HI               ; |1911| 
        ; branchcc occurs ; |1911| 
DW$L$_fn_getlabel$10$E:
DW$L$_fn_getlabel$11$B:
        BF        L287,UNC              ; |1911| 
        ; branch occurs ; |1911| 
DW$L$_fn_getlabel$11$E:
L286:    
        MOVZ      AR4,SP                ; |1916| 
        MOVB      ACC,#8
        SUBB      XAR4,#15              ; |1916| 
        LCR       #___memcpy_ff         ; |1916| 
        ; call occurs [#___memcpy_ff] ; |1916| 
        MOVZ      AR4,SP                ; |1917| 
        MOVB      ACC,#8
        ADDL      ACC,XAR2
        MOVL      XAR5,ACC              ; |1917| 
        SUBB      XAR4,#7               ; |1917| 
        MOVB      ACC,#3
        LCR       #___memcpy_ff         ; |1917| 
        ; call occurs [#___memcpy_ff] ; |1917| 
        BF        L290,UNC              ; |1918| 
        ; branch occurs ; |1918| 
L287:    
DW$L$_fn_getlabel$13$B:
        MOVB      ACC,#1
        ADDL      ACC,*-SP[22]          ; |1905| 
        MOVL      *-SP[22],ACC          ; |1905| 
        MOVL      ACC,*-SP[20]          ; |1905| 
        CMPL      ACC,*-SP[22]          ; |1905| 
	.dwpsn	"fat.c",1921,0
        BF        L283,HI               ; |1905| 
        ; branchcc occurs ; |1905| 
DW$L$_fn_getlabel$13$E:
L288:    
DW$L$_fn_getlabel$14$B:
        MOVL      ACC,*-SP[28]          ; |1923| 
        BF        L289,NEQ              ; |1923| 
        ; branchcc occurs ; |1923| 
DW$L$_fn_getlabel$14$E:
DW$L$_fn_getlabel$15$B:
        MOVL      XAR0,#1136            ; |1924| 
        MOVL      XAR4,*-SP[4]          ; |1924| 
        MOVB      ACC,#3
        CMPL      ACC,*+XAR4[AR0]       ; |1924| 
        BF        L290,NEQ              ; |1924| 
        ; branchcc occurs ; |1924| 
DW$L$_fn_getlabel$15$E:
DW$L$_fn_getlabel$16$B:
        MOVL      XAR4,*-SP[4]          ; |1925| 
        MOVB      XAR0,#32              ; |1925| 
        MOVL      ACC,*+XAR4[AR0]       ; |1925| 
        MOVL      *-SP[28],ACC          ; |1925| 
DW$L$_fn_getlabel$16$E:
L289:    
DW$L$_fn_getlabel$17$B:
        MOVZ      AR5,SP                ; |1932| 
        MOVL      XAR4,*-SP[4]          ; |1932| 
        MOVL      ACC,*-SP[28]          ; |1932| 
        SUBB      XAR5,#2               ; |1932| 
        LCR       #__f_getclustervalue  ; |1932| 
        ; call occurs [#__f_getclustervalue] ; |1932| 
        CMPB      AL,#0                 ; |1932| 
        BF        L290,NEQ              ; |1932| 
        ; branchcc occurs ; |1932| 
DW$L$_fn_getlabel$17$E:
DW$L$_fn_getlabel$18$B:
        MOV       AL,#65520
        MOV       AH,#4095
        CMPL      ACC,*-SP[2]           ; |1932| 
        BF        L290,LOS              ; |1932| 
        ; branchcc occurs ; |1932| 
DW$L$_fn_getlabel$18$E:
DW$L$_fn_getlabel$19$B:
        MOVZ      AR5,SP                ; |1936| 
        MOVL      XAR4,*-SP[4]          ; |1936| 
        MOVL      ACC,*-SP[2]           ; |1936| 
        SUBB      XAR5,#28              ; |1936| 
        LCR       #__f_clustertopos     ; |1936| 
        ; call occurs [#__f_clustertopos] ; |1936| 
        MOV       AL,#65520
        MOV       AH,#4095
        CMPL      ACC,*-SP[28]          ; |1936| 
	.dwpsn	"fat.c",1938,0
        BF        L282,HI               ; |1936| 
        ; branchcc occurs ; |1936| 
DW$L$_fn_getlabel$19$E:
L290:    
        MOVB      XAR6,#0
	.dwpsn	"fat.c",1942,0
        SUBB      XAR3,#1               ; |1941| 
L291:    
DW$L$_fn_getlabel$21$B:
        MOVL      ACC,XAR3
        CMPL      ACC,XAR6              ; |1942| 
        BF        L292,LEQ              ; |1942| 
        ; branchcc occurs ; |1942| 
DW$L$_fn_getlabel$21$E:
DW$L$_fn_getlabel$22$B:
        MOVZ      AR4,SP                ; |1944| 
        MOVL      ACC,XAR6              ; |1944| 
        SUBB      XAR4,#15              ; |1944| 
        ADDL      XAR4,ACC
        MOVZ      AR7,*+XAR4[0]         ; |1944| 
        MOVL      XAR4,XAR1             ; |1944| 
        MOVL      ACC,XAR6              ; |1944| 
        ADDL      XAR4,ACC
        MOVL      ACC,XAR6              ; |1944| 
        ADDB      ACC,#1                ; |1942| 
        MOVL      XAR6,ACC              ; |1942| 
        MOVB      ACC,#11
        CMPL      ACC,XAR6              ; |1942| 
        MOV       *+XAR4[0],AR7         ; |1944| 
	.dwpsn	"fat.c",1946,0
        BF        L291,GT               ; |1942| 
        ; branchcc occurs ; |1942| 
DW$L$_fn_getlabel$22$E:
L292:    
        MOVL      XAR4,XAR1             ; |1947| 
        MOVL      ACC,XAR6              ; |1947| 
        ADDL      XAR4,ACC
        MOVL      ACC,XAR6              ; |1947| 
        MOV       *+XAR4[0],#0          ; |1947| 
        BF        L294,LT               ; |1949| 
        ; branchcc occurs ; |1949| 
L293:    
DW$L$_fn_getlabel$24$B:
	.dwpsn	"fat.c",1949,0
        MOVL      ACC,XAR1              ; |1950| 
        ADDL      ACC,XAR6
        MOVL      XAR4,ACC              ; |1950| 
        MOV       AL,*+XAR4[0]          ; |1950| 
        CMPB      AL,#32                ; |1950| 
        BF        L294,GT               ; |1950| 
        ; branchcc occurs ; |1950| 
DW$L$_fn_getlabel$24$E:
DW$L$_fn_getlabel$25$B:
        SUBB      XAR6,#1               ; |1950| 
        MOV       *+XAR4[0],#0          ; |1950| 
        MOVL      ACC,XAR6              ; |1950| 
	.dwpsn	"fat.c",1952,0
        BF        L293,GEQ              ; |1950| 
        ; branchcc occurs ; |1950| 
DW$L$_fn_getlabel$25$E:
L294:    
        MOVB      AL,#0
L295:    
        SUBB      SP,#28                ; |1954| 
        MOVL      XAR3,*--SP            ; |1954| 
        MOVL      XAR2,*--SP            ; |1954| 
        MOVL      XAR1,*--SP            ; |1954| 
	.dwpsn	"fat.c",1955,1
        LRETR
        ; return occurs

DW$506	.dwtag  DW_TAG_loop
	.dwattr DW$506, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L293:1:1471518973")
	.dwattr DW$506, DW_AT_begin_file("fat.c")
	.dwattr DW$506, DW_AT_begin_line(0x79d)
	.dwattr DW$506, DW_AT_end_line(0x7a0)
DW$507	.dwtag  DW_TAG_loop_range
	.dwattr DW$507, DW_AT_low_pc(DW$L$_fn_getlabel$24$B)
	.dwattr DW$507, DW_AT_high_pc(DW$L$_fn_getlabel$24$E)
DW$508	.dwtag  DW_TAG_loop_range
	.dwattr DW$508, DW_AT_low_pc(DW$L$_fn_getlabel$25$B)
	.dwattr DW$508, DW_AT_high_pc(DW$L$_fn_getlabel$25$E)
	.dwendtag DW$506


DW$509	.dwtag  DW_TAG_loop
	.dwattr DW$509, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L291:1:1471518973")
	.dwattr DW$509, DW_AT_begin_file("fat.c")
	.dwattr DW$509, DW_AT_begin_line(0x796)
	.dwattr DW$509, DW_AT_end_line(0x79a)
DW$510	.dwtag  DW_TAG_loop_range
	.dwattr DW$510, DW_AT_low_pc(DW$L$_fn_getlabel$21$B)
	.dwattr DW$510, DW_AT_high_pc(DW$L$_fn_getlabel$21$E)
DW$511	.dwtag  DW_TAG_loop_range
	.dwattr DW$511, DW_AT_low_pc(DW$L$_fn_getlabel$22$B)
	.dwattr DW$511, DW_AT_high_pc(DW$L$_fn_getlabel$22$E)
	.dwendtag DW$509


DW$512	.dwtag  DW_TAG_loop
	.dwattr DW$512, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L282:1:1471518973")
	.dwattr DW$512, DW_AT_begin_file("fat.c")
	.dwattr DW$512, DW_AT_begin_line(0x770)
	.dwattr DW$512, DW_AT_end_line(0x792)
DW$513	.dwtag  DW_TAG_loop_range
	.dwattr DW$513, DW_AT_low_pc(DW$L$_fn_getlabel$4$B)
	.dwattr DW$513, DW_AT_high_pc(DW$L$_fn_getlabel$4$E)
DW$514	.dwtag  DW_TAG_loop_range
	.dwattr DW$514, DW_AT_low_pc(DW$L$_fn_getlabel$15$B)
	.dwattr DW$514, DW_AT_high_pc(DW$L$_fn_getlabel$15$E)
DW$515	.dwtag  DW_TAG_loop_range
	.dwattr DW$515, DW_AT_low_pc(DW$L$_fn_getlabel$14$B)
	.dwattr DW$515, DW_AT_high_pc(DW$L$_fn_getlabel$14$E)
DW$516	.dwtag  DW_TAG_loop_range
	.dwattr DW$516, DW_AT_low_pc(DW$L$_fn_getlabel$16$B)
	.dwattr DW$516, DW_AT_high_pc(DW$L$_fn_getlabel$16$E)
DW$517	.dwtag  DW_TAG_loop_range
	.dwattr DW$517, DW_AT_low_pc(DW$L$_fn_getlabel$17$B)
	.dwattr DW$517, DW_AT_high_pc(DW$L$_fn_getlabel$17$E)
DW$518	.dwtag  DW_TAG_loop_range
	.dwattr DW$518, DW_AT_low_pc(DW$L$_fn_getlabel$18$B)
	.dwattr DW$518, DW_AT_high_pc(DW$L$_fn_getlabel$18$E)
DW$519	.dwtag  DW_TAG_loop_range
	.dwattr DW$519, DW_AT_low_pc(DW$L$_fn_getlabel$19$B)
	.dwattr DW$519, DW_AT_high_pc(DW$L$_fn_getlabel$19$E)

DW$520	.dwtag  DW_TAG_loop
	.dwattr DW$520, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L283:2:1471518973")
	.dwattr DW$520, DW_AT_begin_file("fat.c")
	.dwattr DW$520, DW_AT_begin_line(0x771)
	.dwattr DW$520, DW_AT_end_line(0x781)
DW$521	.dwtag  DW_TAG_loop_range
	.dwattr DW$521, DW_AT_low_pc(DW$L$_fn_getlabel$5$B)
	.dwattr DW$521, DW_AT_high_pc(DW$L$_fn_getlabel$5$E)
DW$522	.dwtag  DW_TAG_loop_range
	.dwattr DW$522, DW_AT_low_pc(DW$L$_fn_getlabel$6$B)
	.dwattr DW$522, DW_AT_high_pc(DW$L$_fn_getlabel$6$E)
DW$523	.dwtag  DW_TAG_loop_range
	.dwattr DW$523, DW_AT_low_pc(DW$L$_fn_getlabel$11$B)
	.dwattr DW$523, DW_AT_high_pc(DW$L$_fn_getlabel$11$E)
DW$524	.dwtag  DW_TAG_loop_range
	.dwattr DW$524, DW_AT_low_pc(DW$L$_fn_getlabel$13$B)
	.dwattr DW$524, DW_AT_high_pc(DW$L$_fn_getlabel$13$E)

DW$525	.dwtag  DW_TAG_loop
	.dwattr DW$525, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L284:3:1471518973")
	.dwattr DW$525, DW_AT_begin_file("fat.c")
	.dwattr DW$525, DW_AT_begin_line(0x777)
	.dwattr DW$525, DW_AT_end_line(0x780)
DW$526	.dwtag  DW_TAG_loop_range
	.dwattr DW$526, DW_AT_low_pc(DW$L$_fn_getlabel$7$B)
	.dwattr DW$526, DW_AT_high_pc(DW$L$_fn_getlabel$7$E)
DW$527	.dwtag  DW_TAG_loop_range
	.dwattr DW$527, DW_AT_low_pc(DW$L$_fn_getlabel$8$B)
	.dwattr DW$527, DW_AT_high_pc(DW$L$_fn_getlabel$8$E)
DW$528	.dwtag  DW_TAG_loop_range
	.dwattr DW$528, DW_AT_low_pc(DW$L$_fn_getlabel$9$B)
	.dwattr DW$528, DW_AT_high_pc(DW$L$_fn_getlabel$9$E)
DW$529	.dwtag  DW_TAG_loop_range
	.dwattr DW$529, DW_AT_low_pc(DW$L$_fn_getlabel$10$B)
	.dwattr DW$529, DW_AT_high_pc(DW$L$_fn_getlabel$10$E)
	.dwendtag DW$525

	.dwendtag DW$520

	.dwendtag DW$512

	.dwattr DW$501, DW_AT_end_file("fat.c")
	.dwattr DW$501, DW_AT_end_line(0x7a3)
	.dwattr DW$501, DW_AT_end_column(0x01)
	.dwendtag DW$501

	.sect	".text"
	.global	_fn_setlabel

DW$530	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_setlabel"), DW_AT_symbol_name("_fn_setlabel")
	.dwattr DW$530, DW_AT_low_pc(_fn_setlabel)
	.dwattr DW$530, DW_AT_high_pc(0x00)
	.dwattr DW$530, DW_AT_begin_file("fat.c")
	.dwattr DW$530, DW_AT_begin_line(0x7b6)
	.dwattr DW$530, DW_AT_begin_column(0x05)
	.dwattr DW$530, DW_AT_frame_base[DW_OP_breg20 -74]
	.dwattr DW$530, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",1974,62

;***************************************************************
;* FNAME: _fn_setlabel                  FR SIZE:  72           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter, 62 Auto,  6 SOE     *
;***************************************************************

_fn_setlabel:
;* AR4   assigned to _fm
DW$531	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$531, DW_AT_type(*DW$T$117)
	.dwattr DW$531, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _drivenum
DW$532	.dwtag  DW_TAG_formal_parameter, DW_AT_name("drivenum"), DW_AT_symbol_name("_drivenum")
	.dwattr DW$532, DW_AT_type(*DW$T$10)
	.dwattr DW$532, DW_AT_location[DW_OP_reg0]
;* AR5   assigned to _label
DW$533	.dwtag  DW_TAG_formal_parameter, DW_AT_name("label"), DW_AT_symbol_name("_label")
	.dwattr DW$533, DW_AT_type(*DW$T$146)
	.dwattr DW$533, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      XAR1,XAR5             ; |1974| 
        MOVL      *SP++,XAR3
        MOVZ      AR2,SP
        ADDB      SP,#66
        MOVZ      AR5,SP                ; |1983| 
        MOVZ      AR3,AL                ; |1974| 
        SUBB      XAR5,#10              ; |1983| 
        LCR       #__f_getvolume        ; |1983| 
        ; call occurs [#__f_getvolume] ; |1983| 
        CMPB      AL,#0                 ; |1983| 
        SUBB      FP,#8
        BF        L310,NEQ              ; |1983| 
        ; branchcc occurs ; |1983| 
        MOVZ      AR5,SP                ; |1986| 
        MOVL      XAR4,*-SP[10]         ; |1986| 
        MOVB      ACC,#0
        SUBB      XAR5,#66              ; |1986| 
        LCR       #__f_clustertopos     ; |1986| 
        ; call occurs [#__f_clustertopos] ; |1986| 
        MOVB      XAR7,#0
        SETC      SXM
	.dwpsn	"fat.c",1988,0
        MOVZ      AR6,AR7               ; |1988| 
L296:    
DW$L$_fn_setlabel$3$B:
        MOVL      XAR4,XAR1             ; |1989| 
        MOV       AL,AR7
        MOV       ACC,AL                ; |1989| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |1989| 
        CMPB      AL,#97                ; |1989| 
        MOV       PL,AL                 ; |1989| 
        BF        L297,LT               ; |1989| 
        ; branchcc occurs ; |1989| 
DW$L$_fn_setlabel$3$E:
DW$L$_fn_setlabel$4$B:
        CMPB      AL,#122               ; |1989| 
        BF        L297,GT               ; |1989| 
        ; branchcc occurs ; |1989| 
DW$L$_fn_setlabel$4$E:
DW$L$_fn_setlabel$5$B:
        ADDB      AL,#-32
        MOV       PL,AL                 ; |1990| 
DW$L$_fn_setlabel$5$E:
L297:    
DW$L$_fn_setlabel$6$B:
        CMPB      AL,#32                ; |1992| 
        BF        L298,GEQ              ; |1992| 
        ; branchcc occurs ; |1992| 
DW$L$_fn_setlabel$6$E:
DW$L$_fn_setlabel$7$B:
        MOVB      AL,#32                ; |1993| 
        MOV       PL,AL                 ; |1993| 
        BF        L299,UNC              ; |1993| 
        ; branch occurs ; |1993| 
DW$L$_fn_setlabel$7$E:
L298:    
DW$L$_fn_setlabel$8$B:
        MOV       AL,AR7
        ADDB      AL,#1                 ; |1992| 
        MOVZ      AR7,AL                ; |1992| 
DW$L$_fn_setlabel$8$E:
L299:    
DW$L$_fn_setlabel$9$B:
        MOVZ      AR4,SP                ; |1995| 
        MOV       AL,AR6
        MOV       ACC,AL                ; |1995| 
        SUBB      XAR4,#53              ; |1995| 
        ADDL      XAR4,ACC
        MOV       AL,AR6                ; |1995| 
        ADDB      AL,#1                 ; |1988| 
        CMPB      AL,#11                ; |1988| 
        MOV       *+XAR4[0],P           ; |1995| 
        MOVZ      AR6,AL                ; |1988| 
	.dwpsn	"fat.c",1996,0
        BF        L296,LT               ; |1988| 
        ; branchcc occurs ; |1988| 
DW$L$_fn_setlabel$9$E:
        MOVL      XAR0,#8               ; |1998| 
        MOV       AL,#65520
        MOV       AH,#4095
        CMPL      ACC,*+FP[AR0]         ; |1998| 
        BF        L307,LOS              ; |1998| 
        ; branchcc occurs ; |1998| 
L300:    
DW$L$_fn_setlabel$11$B:
	.dwpsn	"fat.c",1998,0
        MOVL      ACC,*-SP[58]          ; |1999| 
        CMPL      ACC,*-SP[60]          ; |1999| 
        BF        L305,LOS              ; |1999| 
        ; branchcc occurs ; |1999| 
DW$L$_fn_setlabel$11$E:
L301:    
DW$L$_fn_setlabel$12$B:
	.dwpsn	"fat.c",1999,0
        MOVL      ACC,*-SP[10]          ; |2000| 
        MOVL      XAR4,#602             ; |2000| 
        ADDL      XAR4,ACC
        MOVL      *-SP[8],XAR4          ; |2000| 
        MOVL      XAR4,*-SP[10]         ; |2002| 
        MOVL      ACC,*-SP[60]          ; |2002| 
        LCR       #__f_getdirsector     ; |2002| 
        ; call occurs [#__f_getdirsector] ; |2002| 
        CMPB      AL,#0                 ; |2002| 
        BF        L310,NEQ              ; |2002| 
        ; branchcc occurs ; |2002| 
DW$L$_fn_setlabel$12$E:
DW$L$_fn_setlabel$13$B:
        MOVB      ACC,#0
        MOVL      *-SP[56],ACC          ; |2005| 
        MOVB      ACC,#16
        CMPL      ACC,*-SP[56]          ; |2005| 
        BF        L304,LOS              ; |2005| 
        ; branchcc occurs ; |2005| 
DW$L$_fn_setlabel$13$E:
L302:    
DW$L$_fn_setlabel$14$B:
	.dwpsn	"fat.c",2005,0
        MOVL      XAR4,*-SP[8]          ; |2007| 
        MOV       AL,*+XAR4[0]          ; |2007| 
        BF        L303,EQ               ; |2007| 
        ; branchcc occurs ; |2007| 
DW$L$_fn_setlabel$14$E:
DW$L$_fn_setlabel$15$B:
        CMPB      AL,#229               ; |2007| 
        BF        L303,EQ               ; |2007| 
        ; branchcc occurs ; |2007| 
DW$L$_fn_setlabel$15$E:
DW$L$_fn_setlabel$16$B:
        MOVL      XAR5,*-SP[8]          ; |2007| 
        MOVB      XAR0,#11              ; |2007| 
        MOV       AL,*+XAR5[AR0]        ; |2007| 
        CMPB      AL,#8                 ; |2007| 
        BF        L303,NEQ              ; |2007| 
        ; branchcc occurs ; |2007| 
DW$L$_fn_setlabel$16$E:
        MOVZ      AR5,SP                ; |2010| 
        MOVB      ACC,#8
        SUBB      XAR5,#53              ; |2010| 
        LCR       #___memcpy_ff         ; |2010| 
        ; call occurs [#___memcpy_ff] ; |2010| 
        MOVZ      AR5,SP                ; |2011| 
        MOVL      XAR4,*-SP[8]          ; |2011| 
        MOVB      ACC,#3
        SUBB      XAR5,#45              ; |2011| 
        ADDB      XAR4,#8               ; |2011| 
        LCR       #___memcpy_ff         ; |2011| 
        ; call occurs [#___memcpy_ff] ; |2011| 
        BF        L309,UNC              ; |2012| 
        ; branch occurs ; |2012| 
L303:    
DW$L$_fn_setlabel$18$B:
        MOVB      ACC,#32
        ADDL      *-SP[8],ACC           ; |2005| 
        MOVB      ACC,#1
        ADDL      ACC,*-SP[56]          ; |2005| 
        MOVL      *-SP[56],ACC          ; |2005| 
        MOVB      ACC,#16
        CMPL      ACC,*-SP[56]          ; |2005| 
	.dwpsn	"fat.c",2014,0
        BF        L302,HI               ; |2005| 
        ; branchcc occurs ; |2005| 
DW$L$_fn_setlabel$18$E:
L304:    
DW$L$_fn_setlabel$19$B:
        MOVB      ACC,#1
        ADDL      ACC,*-SP[60]          ; |1999| 
        MOVL      *-SP[60],ACC          ; |1999| 
        MOVL      ACC,*-SP[58]          ; |1999| 
        CMPL      ACC,*-SP[60]          ; |1999| 
	.dwpsn	"fat.c",2015,0
        BF        L301,HI               ; |1999| 
        ; branchcc occurs ; |1999| 
DW$L$_fn_setlabel$19$E:
L305:    
DW$L$_fn_setlabel$20$B:
        MOVL      XAR0,#8               ; |2017| 
        MOVL      ACC,*+FP[AR0]         ; |2017| 
        BF        L306,NEQ              ; |2017| 
        ; branchcc occurs ; |2017| 
DW$L$_fn_setlabel$20$E:
DW$L$_fn_setlabel$21$B:
        MOVL      XAR0,#1136            ; |2018| 
        MOVL      XAR4,*-SP[10]         ; |2018| 
        MOVB      ACC,#3
        CMPL      ACC,*+XAR4[AR0]       ; |2018| 
        BF        L307,NEQ              ; |2018| 
        ; branchcc occurs ; |2018| 
DW$L$_fn_setlabel$21$E:
DW$L$_fn_setlabel$22$B:
        MOVL      XAR4,*-SP[10]         ; |2019| 
        MOVB      XAR0,#32              ; |2019| 
        MOVL      ACC,*+XAR4[AR0]       ; |2019| 
        MOVL      XAR0,#8               ; |2019| 
        MOVL      *+FP[AR0],ACC         ; |2019| 
DW$L$_fn_setlabel$22$E:
L306:    
DW$L$_fn_setlabel$23$B:
        MOVL      XAR0,#8               ; |2026| 
        MOVZ      AR5,SP                ; |2026| 
        MOVL      XAR4,*-SP[10]         ; |2026| 
        MOVL      ACC,*+FP[AR0]         ; |2026| 
        SUBB      XAR5,#6               ; |2026| 
        LCR       #__f_getclustervalue  ; |2026| 
        ; call occurs [#__f_getclustervalue] ; |2026| 
        CMPB      AL,#0                 ; |2026| 
        BF        L307,NEQ              ; |2026| 
        ; branchcc occurs ; |2026| 
DW$L$_fn_setlabel$23$E:
DW$L$_fn_setlabel$24$B:
        MOV       AL,#65520
        MOV       AH,#4095
        CMPL      ACC,*-SP[6]           ; |2026| 
        BF        L307,LOS              ; |2026| 
        ; branchcc occurs ; |2026| 
DW$L$_fn_setlabel$24$E:
DW$L$_fn_setlabel$25$B:
        MOVZ      AR5,SP                ; |2030| 
        MOVL      XAR4,*-SP[10]         ; |2030| 
        MOVL      ACC,*-SP[6]           ; |2030| 
        SUBB      XAR5,#66              ; |2030| 
        LCR       #__f_clustertopos     ; |2030| 
        ; call occurs [#__f_clustertopos] ; |2030| 
        MOVL      XAR0,#8               ; |2030| 
        MOV       AL,#65520
        MOV       AH,#4095
        CMPL      ACC,*+FP[AR0]         ; |2030| 
	.dwpsn	"fat.c",2032,0
        BF        L300,HI               ; |2030| 
        ; branchcc occurs ; |2030| 
DW$L$_fn_setlabel$25$E:
L307:    
        MOVZ      AR5,SP                ; |2034| 
        MOVL      XAR4,*-SP[10]         ; |2034| 
        MOVB      ACC,#0
        SUBB      XAR5,#66              ; |2034| 
        LCR       #__f_clustertopos     ; |2034| 
        ; call occurs [#__f_clustertopos] ; |2034| 
        MOVZ      AR5,SP                ; |2037| 
        MOVZ      AR4,SP                ; |2037| 
        MOV       *-SP[42],AR3          ; |2036| 
        MOVB      ACC,#8
        SUBB      XAR5,#53              ; |2037| 
        SUBB      XAR4,#21              ; |2037| 
        LCR       #___memcpy_ff         ; |2037| 
        ; call occurs [#___memcpy_ff] ; |2037| 
        MOVZ      AR5,SP                ; |2038| 
        MOVZ      AR4,SP                ; |2038| 
        MOVB      ACC,#3
        SUBB      XAR5,#45              ; |2038| 
        SUBB      XAR4,#13              ; |2038| 
        LCR       #___memcpy_ff         ; |2038| 
        ; call occurs [#___memcpy_ff] ; |2038| 
        MOVZ      AR4,SP                ; |2040| 
        SUBB      XAR4,#66              ; |2040| 
        MOVL      *-SP[2],XAR4          ; |2040| 
        MOVZ      AR4,SP                ; |2040| 
        MOVZ      AR5,SP                ; |2040| 
        SUBB      XAR4,#8               ; |2040| 
        MOVL      *-SP[4],XAR4          ; |2040| 
        MOVL      XAR4,*-SP[10]         ; |2040| 
        SUBB      XAR5,#42              ; |2040| 
        LCR       #__f_addentry         ; |2040| 
        ; call occurs [#__f_addentry] ; |2040| 
        CMPB      AL,#0                 ; |2040| 
        BF        L308,EQ               ; |2040| 
        ; branchcc occurs ; |2040| 
        MOVB      AL,#7                 ; |2040| 
        BF        L310,UNC              ; |2040| 
        ; branch occurs ; |2040| 
L308:    
        MOVL      XAR4,*-SP[8]          ; |2042| 
        MOVB      XAR0,#11              ; |2042| 
        MOV       *+XAR4[AR0],#8        ; |2042| 
L309:    
        MOVL      XAR4,*-SP[10]         ; |2043| 
        LCR       #__f_writedirsector   ; |2043| 
        ; call occurs [#__f_writedirsector] ; |2043| 
L310:    
        SUBB      SP,#66                ; |2043| 
        MOVL      XAR3,*--SP            ; |2043| 
        MOVL      XAR2,*--SP            ; |2043| 
        MOVL      XAR1,*--SP            ; |2043| 
	.dwpsn	"fat.c",2044,1
        LRETR
        ; return occurs

DW$534	.dwtag  DW_TAG_loop
	.dwattr DW$534, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L300:1:1471518973")
	.dwattr DW$534, DW_AT_begin_file("fat.c")
	.dwattr DW$534, DW_AT_begin_line(0x7ce)
	.dwattr DW$534, DW_AT_end_line(0x7f0)
DW$535	.dwtag  DW_TAG_loop_range
	.dwattr DW$535, DW_AT_low_pc(DW$L$_fn_setlabel$11$B)
	.dwattr DW$535, DW_AT_high_pc(DW$L$_fn_setlabel$11$E)
DW$536	.dwtag  DW_TAG_loop_range
	.dwattr DW$536, DW_AT_low_pc(DW$L$_fn_setlabel$21$B)
	.dwattr DW$536, DW_AT_high_pc(DW$L$_fn_setlabel$21$E)
DW$537	.dwtag  DW_TAG_loop_range
	.dwattr DW$537, DW_AT_low_pc(DW$L$_fn_setlabel$20$B)
	.dwattr DW$537, DW_AT_high_pc(DW$L$_fn_setlabel$20$E)
DW$538	.dwtag  DW_TAG_loop_range
	.dwattr DW$538, DW_AT_low_pc(DW$L$_fn_setlabel$22$B)
	.dwattr DW$538, DW_AT_high_pc(DW$L$_fn_setlabel$22$E)
DW$539	.dwtag  DW_TAG_loop_range
	.dwattr DW$539, DW_AT_low_pc(DW$L$_fn_setlabel$23$B)
	.dwattr DW$539, DW_AT_high_pc(DW$L$_fn_setlabel$23$E)
DW$540	.dwtag  DW_TAG_loop_range
	.dwattr DW$540, DW_AT_low_pc(DW$L$_fn_setlabel$24$B)
	.dwattr DW$540, DW_AT_high_pc(DW$L$_fn_setlabel$24$E)
DW$541	.dwtag  DW_TAG_loop_range
	.dwattr DW$541, DW_AT_low_pc(DW$L$_fn_setlabel$25$B)
	.dwattr DW$541, DW_AT_high_pc(DW$L$_fn_setlabel$25$E)

DW$542	.dwtag  DW_TAG_loop
	.dwattr DW$542, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L301:2:1471518973")
	.dwattr DW$542, DW_AT_begin_file("fat.c")
	.dwattr DW$542, DW_AT_begin_line(0x7cf)
	.dwattr DW$542, DW_AT_end_line(0x7df)
DW$543	.dwtag  DW_TAG_loop_range
	.dwattr DW$543, DW_AT_low_pc(DW$L$_fn_setlabel$12$B)
	.dwattr DW$543, DW_AT_high_pc(DW$L$_fn_setlabel$12$E)
DW$544	.dwtag  DW_TAG_loop_range
	.dwattr DW$544, DW_AT_low_pc(DW$L$_fn_setlabel$13$B)
	.dwattr DW$544, DW_AT_high_pc(DW$L$_fn_setlabel$13$E)
DW$545	.dwtag  DW_TAG_loop_range
	.dwattr DW$545, DW_AT_low_pc(DW$L$_fn_setlabel$19$B)
	.dwattr DW$545, DW_AT_high_pc(DW$L$_fn_setlabel$19$E)

DW$546	.dwtag  DW_TAG_loop
	.dwattr DW$546, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L302:3:1471518973")
	.dwattr DW$546, DW_AT_begin_file("fat.c")
	.dwattr DW$546, DW_AT_begin_line(0x7d5)
	.dwattr DW$546, DW_AT_end_line(0x7de)
DW$547	.dwtag  DW_TAG_loop_range
	.dwattr DW$547, DW_AT_low_pc(DW$L$_fn_setlabel$14$B)
	.dwattr DW$547, DW_AT_high_pc(DW$L$_fn_setlabel$14$E)
DW$548	.dwtag  DW_TAG_loop_range
	.dwattr DW$548, DW_AT_low_pc(DW$L$_fn_setlabel$15$B)
	.dwattr DW$548, DW_AT_high_pc(DW$L$_fn_setlabel$15$E)
DW$549	.dwtag  DW_TAG_loop_range
	.dwattr DW$549, DW_AT_low_pc(DW$L$_fn_setlabel$16$B)
	.dwattr DW$549, DW_AT_high_pc(DW$L$_fn_setlabel$16$E)
DW$550	.dwtag  DW_TAG_loop_range
	.dwattr DW$550, DW_AT_low_pc(DW$L$_fn_setlabel$18$B)
	.dwattr DW$550, DW_AT_high_pc(DW$L$_fn_setlabel$18$E)
	.dwendtag DW$546

	.dwendtag DW$542

	.dwendtag DW$534


DW$551	.dwtag  DW_TAG_loop
	.dwattr DW$551, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L296:1:1471518973")
	.dwattr DW$551, DW_AT_begin_file("fat.c")
	.dwattr DW$551, DW_AT_begin_line(0x7c4)
	.dwattr DW$551, DW_AT_end_line(0x7cc)
DW$552	.dwtag  DW_TAG_loop_range
	.dwattr DW$552, DW_AT_low_pc(DW$L$_fn_setlabel$3$B)
	.dwattr DW$552, DW_AT_high_pc(DW$L$_fn_setlabel$3$E)
DW$553	.dwtag  DW_TAG_loop_range
	.dwattr DW$553, DW_AT_low_pc(DW$L$_fn_setlabel$4$B)
	.dwattr DW$553, DW_AT_high_pc(DW$L$_fn_setlabel$4$E)
DW$554	.dwtag  DW_TAG_loop_range
	.dwattr DW$554, DW_AT_low_pc(DW$L$_fn_setlabel$5$B)
	.dwattr DW$554, DW_AT_high_pc(DW$L$_fn_setlabel$5$E)
DW$555	.dwtag  DW_TAG_loop_range
	.dwattr DW$555, DW_AT_low_pc(DW$L$_fn_setlabel$6$B)
	.dwattr DW$555, DW_AT_high_pc(DW$L$_fn_setlabel$6$E)
DW$556	.dwtag  DW_TAG_loop_range
	.dwattr DW$556, DW_AT_low_pc(DW$L$_fn_setlabel$7$B)
	.dwattr DW$556, DW_AT_high_pc(DW$L$_fn_setlabel$7$E)
DW$557	.dwtag  DW_TAG_loop_range
	.dwattr DW$557, DW_AT_low_pc(DW$L$_fn_setlabel$8$B)
	.dwattr DW$557, DW_AT_high_pc(DW$L$_fn_setlabel$8$E)
DW$558	.dwtag  DW_TAG_loop_range
	.dwattr DW$558, DW_AT_low_pc(DW$L$_fn_setlabel$9$B)
	.dwattr DW$558, DW_AT_high_pc(DW$L$_fn_setlabel$9$E)
	.dwendtag DW$551

	.dwattr DW$530, DW_AT_end_file("fat.c")
	.dwattr DW$530, DW_AT_end_line(0x7fc)
	.dwattr DW$530, DW_AT_end_column(0x01)
	.dwendtag DW$530

	.sect	".text"
	.global	_fn_truncate

DW$559	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_truncate"), DW_AT_symbol_name("_fn_truncate")
	.dwattr DW$559, DW_AT_low_pc(_fn_truncate)
	.dwattr DW$559, DW_AT_high_pc(0x00)
	.dwattr DW$559, DW_AT_begin_file("fat.c")
	.dwattr DW$559, DW_AT_begin_line(0x812)
	.dwattr DW$559, DW_AT_begin_column(0x09)
	.dwattr DW$559, DW_AT_frame_base[DW_OP_breg20 -54]
	.dwattr DW$559, DW_AT_skeletal(0x01)
	.dwpsn	"fat.c",2066,76

;***************************************************************
;* FNAME: _fn_truncate                  FR SIZE:  52           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            6 Parameter, 40 Auto,  6 SOE     *
;***************************************************************

_fn_truncate:
;* AR4   assigned to _fm
DW$560	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fm"), DW_AT_symbol_name("_fm")
	.dwattr DW$560, DW_AT_type(*DW$T$117)
	.dwattr DW$560, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _filename
DW$561	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filename"), DW_AT_symbol_name("_filename")
	.dwattr DW$561, DW_AT_type(*DW$T$146)
	.dwattr DW$561, DW_AT_location[DW_OP_reg14]
;* AL    assigned to _length
DW$562	.dwtag  DW_TAG_formal_parameter, DW_AT_name("length"), DW_AT_symbol_name("_length")
	.dwattr DW$562, DW_AT_type(*DW$T$13)
	.dwattr DW$562, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#46
        TEST      ACC                   ; |2073| 
        MOVL      XAR2,XAR4             ; |2066| 
        MOVL      *-SP[46],ACC          ; |2066| 
        BF        L311,NEQ              ; |2073| 
        ; branchcc occurs ; |2073| 
        MOVL      XAR4,#FSL4            ; |2073| 
        MOVL      *-SP[2],XAR4          ; |2073| 
        MOVL      XAR4,XAR2             ; |2073| 
        LCR       #_fn_open             ; |2073| 
        ; call occurs [#_fn_open] ; |2073| 
        BF        L322,UNC              ; |2073| 
        ; branch occurs ; |2073| 
L311:    
        MOVZ      AR4,SP                ; |2075| 
        SUBB      XAR4,#44              ; |2075| 
        MOVL      *-SP[2],XAR4          ; |2075| 
        MOVL      XAR4,XAR2             ; |2075| 
        LCR       #__f_setfsname        ; |2075| 
        ; call occurs [#__f_setfsname] ; |2075| 
        CMPB      AL,#0                 ; |2075| 
        BF        L318,NEQ              ; |2075| 
        ; branchcc occurs ; |2075| 
        MOVZ      AR5,SP                ; |2076| 
        MOVZ      AR4,SP                ; |2076| 
        SUBB      XAR5,#15              ; |2076| 
        SUBB      XAR4,#23              ; |2076| 
        LCR       #__f_checknamewc      ; |2076| 
        ; call occurs [#__f_checknamewc] ; |2076| 
        TEST      ACC                   ; |2076| 
        BF        L318,NEQ              ; |2076| 
        ; branchcc occurs ; |2076| 
        MOVZ      AR5,SP                ; |2078| 
        MOVL      XAR4,XAR2             ; |2078| 
        MOV       AL,*-SP[44]           ; |2078| 
        SUBB      XAR5,#10              ; |2078| 
        LCR       #__f_getvolume        ; |2078| 
        ; call occurs [#__f_getvolume] ; |2078| 
        CMPB      AL,#0                 ; |2078| 
        BF        L318,NEQ              ; |2078| 
        ; branchcc occurs ; |2078| 
        LCR       #__f_getintfile       ; |2080| 
        ; call occurs [#__f_getintfile] ; |2080| 
        MOVL      ACC,XAR4              ; |2080| 
        MOVL      XAR1,XAR4             ; |2080| 
        BF        L318,EQ               ; |2080| 
        ; branchcc occurs ; |2080| 
        MOV       AL,*-SP[44]           ; |2083| 
        MOVB      XAR0,#8               ; |2084| 
        MOV       *+XAR1[5],AL          ; |2083| 
        MOVB      ACC,#0
        MOVL      *+XAR1[AR0],ACC       ; |2084| 
        MOVB      XAR0,#10              ; |2086| 
        MOVL      *+XAR1[6],ACC         ; |2085| 
        MOVL      *+XAR1[AR0],ACC       ; |2086| 
        MOVL      XAR0,#918             ; |2087| 
        MOVL      *+XAR1[AR0],ACC       ; |2087| 
        MOVL      *+XAR1[2],ACC         ; |2088| 
        MOV       AL,*-SP[23]           ; |2090| 
        CMPB      AL,#46                ; |2090| 
        BF        L318,EQ               ; |2090| 
        ; branchcc occurs ; |2090| 
        MOVL      ACC,XAR1              ; |2092| 
        MOVL      XAR3,#928             ; |2092| 
        ADDL      XAR3,ACC
        MOVZ      AR5,SP                ; |2092| 
        MOVL      *-SP[2],XAR3          ; |2092| 
        MOVL      XAR4,*-SP[10]         ; |2092| 
        SUBB      XAR5,#44              ; |2092| 
        LCR       #__f_findpath         ; |2092| 
        ; call occurs [#__f_findpath] ; |2092| 
        CMPB      AL,#0                 ; |2092| 
        BF        L318,EQ               ; |2092| 
        ; branchcc occurs ; |2092| 
        MOVZ      AR4,SP                ; |2093| 
        SUBB      XAR4,#15              ; |2093| 
        MOVL      *-SP[2],XAR4          ; |2093| 
        MOVZ      AR4,SP                ; |2093| 
        MOVZ      AR5,SP                ; |2093| 
        MOVL      *-SP[4],XAR3          ; |2093| 
        SUBB      XAR4,#8               ; |2093| 
        MOVL      *-SP[6],XAR4          ; |2093| 
        MOVL      XAR4,*-SP[10]         ; |2093| 
        SUBB      XAR5,#23              ; |2093| 
        LCR       #__f_findfile         ; |2093| 
        ; call occurs [#__f_findfile] ; |2093| 
        CMPB      AL,#0                 ; |2093| 
        BF        L318,EQ               ; |2093| 
        ; branchcc occurs ; |2093| 
        MOVL      XAR4,XAR3             ; |2094| 
        SETC      SXM
        MOV       ACC,*-SP[44]          ; |2094| 
        LCR       #__f_checklocked      ; |2094| 
        ; call occurs [#__f_checklocked] ; |2094| 
        CMPB      AL,#0                 ; |2094| 
        BF        L318,NEQ              ; |2094| 
        ; branchcc occurs ; |2094| 
        MOVL      XAR4,*-SP[8]          ; |2094| 
        MOVB      XAR0,#11              ; |2094| 
        TBIT      *+XAR4[AR0],#4        ; |2094| 
        BF        L318,TC               ; |2094| 
        ; branchcc occurs ; |2094| 
        MOVL      XAR4,*-SP[10]         ; |2098| 
        MOVL      XAR5,*-SP[8]          ; |2098| 
        LCR       #__f_getdecluster     ; |2098| 
        ; call occurs [#__f_getdecluster] ; |2098| 
        MOVL      XAR0,#914             ; |2098| 
        MOVL      *+XAR1[AR0],ACC       ; |2098| 
        MOVL      XAR6,*+XAR1[AR0]      ; |2100| 
        MOVL      ACC,XAR6              ; |2100| 
        BF        L314,EQ               ; |2100| 
        ; branchcc occurs ; |2100| 
        MOVL      ACC,XAR1              ; |2103| 
        MOVL      XAR5,#916             ; |2103| 
        MOVL      XAR4,*-SP[10]         ; |2103| 
        ADDL      XAR5,ACC
        MOVL      ACC,XAR6              ; |2103| 
        LCR       #__f_clustertopos     ; |2103| 
        ; call occurs [#__f_clustertopos] ; |2103| 
        MOVL      XAR4,*-SP[8]          ; |2105| 
        ADDB      XAR4,#28              ; |2105| 
        LCR       #__f_getlong          ; |2105| 
        ; call occurs [#__f_getlong] ; |2105| 
        MOVB      XAR0,#10              ; |2105| 
        MOVL      *+XAR1[AR0],ACC       ; |2105| 
        MOVL      XAR5,*-SP[10]         ; |2107| 
        MOVL      XAR4,XAR1             ; |2105| 
        LCR       #__fn_initseekdivisor ; |2107| 
        ; call occurs [#__fn_initseekdivisor] ; |2107| 
        MOV       PH,#65535
        MOV       PL,#65024
        MOVL      *+XAR1[6],P           ; |2110| 
        MOVB      XAR0,#10              ; |2112| 
        MOVL      ACC,*-SP[46]          ; |2112| 
        CMPL      ACC,*+XAR1[AR0]       ; |2112| 
        BF        L312,LOS              ; |2112| 
        ; branchcc occurs ; |2112| 
        MOVL      ACC,*+XAR1[AR0]       ; |2112| 
        BF        L313,UNC              ; |2112| 
        ; branch occurs ; |2112| 
L312:    
        MOVL      ACC,*-SP[46]
L313:    
        MOVL      XAR5,XAR2             ; |2112| 
        MOVL      *-SP[2],XAR1          ; |2112| 
        MOVL      XAR4,*-SP[10]         ; |2112| 
        LCR       #__f_fseek            ; |2112| 
        ; call occurs [#__f_fseek] ; |2112| 
        CMPB      AL,#0                 ; |2112| 
        BF        L315,EQ               ; |2112| 
        ; branchcc occurs ; |2112| 
        BF        L318,UNC              ; |2112| 
        ; branch occurs ; |2112| 
L314:    
        MOVL      XAR0,#922             ; |2118| 
        MOVB      ACC,#0
        MOVL      *+XAR1[AR0],ACC       ; |2118| 
        MOVL      XAR0,#924             ; |2119| 
        MOVL      XAR4,XAR1             ; |2119| 
        MOVL      *+XAR1[AR0],ACC       ; |2119| 
        MOVL      XAR5,*-SP[10]         ; |2121| 
        LCR       #__fn_initseekdivisor ; |2121| 
        ; call occurs [#__fn_initseekdivisor] ; |2121| 
L315:    
        MOVL      XAR6,*-SP[46]         ; |2125| 
        MOVB      XAR0,#10              ; |2125| 
        MOVL      ACC,*+XAR1[AR0]       ; |2125| 
        CMPL      ACC,XAR6              ; |2125| 
        BF        L320,HI               ; |2125| 
        ; branchcc occurs ; |2125| 
        MOVL      XAR6,*-SP[46]
        CMPL      ACC,XAR6              ; |2142| 
        BF        L321,HIS              ; |2142| 
        ; branchcc occurs ; |2142| 
        MOVL      XAR6,*-SP[46]
        SUBL      XAR6,ACC
        MOVB      XAR5,#0
        MOVL      XAR4,#_truncate_tmp   ; |2146| 
        MOVL      *-SP[46],XAR6         ; |2143| 
        MOV       ACC,#1 << 9
        MOV       *+XAR1[4],#5          ; |2145| 
        LCR       #_memset              ; |2146| 
        ; call occurs [#_memset] ; |2146| 
        MOVL      ACC,*-SP[46]          ; |2146| 
        BF        L321,EQ               ; |2148| 
        ; branchcc occurs ; |2148| 
L316:    
DW$L$_fn_truncate$22$B:
	.dwpsn	"fat.c",2148,0
        MOVL      XAR3,*-SP[46]
        MOV       ACC,#512              ; |2149| 
        CMPL      ACC,XAR3              ; |2149| 
        BF        L317,GEQ              ; |2149| 
        ; branchcc occurs ; |2149| 
DW$L$_fn_truncate$22$E:
DW$L$_fn_truncate$23$B:
        MOVL      XAR3,#512             ; |2150| 
DW$L$_fn_truncate$23$E:
L317:    
DW$L$_fn_truncate$24$B:
        MOVL      *-SP[2],XAR3          ; |2152| 
        MOVL      XAR5,#_truncate_tmp   ; |2152| 
        MOVL      ACC,*+XAR1[0]         ; |2152| 
        MOVL      XAR4,XAR2             ; |2152| 
        MOVL      *-SP[4],ACC           ; |2152| 
        MOVB      ACC,#1
        LCR       #_fn_write            ; |2152| 
        ; call occurs [#_fn_write] ; |2152| 
        CMPL      ACC,XAR3              ; |2152| 
        BF        L319,EQ               ; |2152| 
        ; branchcc occurs ; |2152| 
DW$L$_fn_truncate$24$E:
        MOV       *+XAR1[4],#0          ; |2153| 
L318:    
        MOVB      XAR4,#0
        BF        L322,UNC              ; |2154| 
        ; branch occurs ; |2154| 
L319:    
DW$L$_fn_truncate$27$B:
        MOVL      ACC,*-SP[46]
        SUBL      ACC,XAR3
        MOVL      *-SP[46],ACC          ; |2156| 
	.dwpsn	"fat.c",2157,0
        BF        L316,NEQ              ; |2156| 
        ; branchcc occurs ; |2156| 
DW$L$_fn_truncate$27$E:
        BF        L321,UNC              ; |2156| 
        ; branch occurs ; |2156| 
L320:    
        MOVL      XAR0,#916             ; |2129| 
        MOVZ      AR5,SP                ; |2129| 
        MOVL      XAR4,*-SP[10]         ; |2129| 
        MOVL      ACC,*+XAR1[AR0]       ; |2129| 
        SUBB      XAR5,#12              ; |2129| 
        LCR       #__f_getclustervalue  ; |2129| 
        ; call occurs [#__f_getclustervalue] ; |2129| 
        CMPB      AL,#0                 ; |2129| 
        BF        L318,NEQ              ; |2129| 
        ; branchcc occurs ; |2129| 
        MOVL      XAR4,*-SP[10]         ; |2132| 
        MOVL      ACC,*-SP[12]          ; |2132| 
        LCR       #__f_removechain      ; |2132| 
        ; call occurs [#__f_removechain] ; |2132| 
        CMPB      AL,#0                 ; |2132| 
        BF        L318,NEQ              ; |2132| 
        ; branchcc occurs ; |2132| 
        MOV       PH,#4095
        MOVL      XAR0,#916             ; |2134| 
        MOV       PL,#65528
        MOVL      *-SP[2],P             ; |2134| 
        MOVL      XAR4,*-SP[10]         ; |2134| 
        MOVL      ACC,*+XAR1[AR0]       ; |2134| 
        LCR       #__f_setclustervalue  ; |2134| 
        ; call occurs [#__f_setclustervalue] ; |2134| 
        CMPB      AL,#0                 ; |2134| 
        BF        L318,NEQ              ; |2134| 
        ; branchcc occurs ; |2134| 
        MOVL      ACC,*-SP[46]          ; |2137| 
        MOVL      XAR4,XAR1             ; |2137| 
        MOVB      XAR0,#10              ; |2137| 
        MOVL      *+XAR1[AR0],ACC       ; |2137| 
        LCR       #__fn_removeseekpos   ; |2139| 
        ; call occurs [#__fn_removeseekpos] ; |2139| 
L321:    
        MOVL      ACC,XAR1              ; |2166| 
        MOVL      XAR0,#528             ; |2166| 
        MOVL      XAR4,#530             ; |2166| 
        ADDL      XAR4,ACC
        MOV       *+XAR1[4],#5          ; |2160| 
        MOVL      *+XAR1[AR0],XAR4      ; |2166| 
        MOVL      XAR4,*+XAR1[0]        ; |2169| 
L322:    
        SUBB      SP,#46                ; |2169| 
        MOVL      XAR3,*--SP            ; |2169| 
        MOVL      XAR2,*--SP            ; |2169| 
        MOVL      XAR1,*--SP            ; |2169| 
	.dwpsn	"fat.c",2170,1
        LRETR
        ; return occurs

DW$563	.dwtag  DW_TAG_loop
	.dwattr DW$563, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\fat.asm:L316:1:1471518973")
	.dwattr DW$563, DW_AT_begin_file("fat.c")
	.dwattr DW$563, DW_AT_begin_line(0x864)
	.dwattr DW$563, DW_AT_end_line(0x86d)
DW$564	.dwtag  DW_TAG_loop_range
	.dwattr DW$564, DW_AT_low_pc(DW$L$_fn_truncate$22$B)
	.dwattr DW$564, DW_AT_high_pc(DW$L$_fn_truncate$22$E)
DW$565	.dwtag  DW_TAG_loop_range
	.dwattr DW$565, DW_AT_low_pc(DW$L$_fn_truncate$23$B)
	.dwattr DW$565, DW_AT_high_pc(DW$L$_fn_truncate$23$E)
DW$566	.dwtag  DW_TAG_loop_range
	.dwattr DW$566, DW_AT_low_pc(DW$L$_fn_truncate$24$B)
	.dwattr DW$566, DW_AT_high_pc(DW$L$_fn_truncate$24$E)
DW$567	.dwtag  DW_TAG_loop_range
	.dwattr DW$567, DW_AT_low_pc(DW$L$_fn_truncate$27$B)
	.dwattr DW$567, DW_AT_high_pc(DW$L$_fn_truncate$27$E)
	.dwendtag DW$563

	.dwattr DW$559, DW_AT_end_file("fat.c")
	.dwattr DW$559, DW_AT_end_line(0x87a)
	.dwattr DW$559, DW_AT_end_column(0x01)
	.dwendtag DW$559

;***************************************************************
;* FAR STRINGS                                                 *
;***************************************************************
	.sect	".econst"
	.align	2
FSL1:	.string	"   ",0
	.align	2
FSL2:	.string	".       ",0
	.align	2
FSL3:	.string	"..      ",0
	.align	2
FSL4:	.string	"w+",0
;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_memset
	.global	_fn_getdrive
	.global	_fn_write
	.global	_f_getdate
	.global	_f_gettime
	.global	__f_readsector
	.global	__f_writesector
	.global	__f_getclustervalue
	.global	__f_clustertopos
	.global	__f_getdecluster
	.global	__f_checkstatus
	.global	__f_getvolume
	.global	__f_getword
	.global	__f_getlong
	.global	__f_checklocked
	.global	__f_checkreadlocked
	.global	__f_initentry
	.global	__f_setword
	.global	__f_alloccluster
	.global	__f_dobadblock
	.global	__f_setclustervalue
	.global	__f_writefatsector
	.global	__f_setdecluster
	.global	__f_fseek
	.global	__f_getcurrsector
	.global	__f_removechain
	.global	__fn_removeseekpos
	.global	__fn_initseekdivisor
	.global	__f_mutex_get
	.global	_f_filesystem
	.global	_MagicNumber
	.global	___memcpy_ff

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x16)

DW$T$85	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$85, DW_AT_language(DW_LANG_C)
DW$568	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$569	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$84)
DW$570	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$T$85


DW$T$87	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$87, DW_AT_language(DW_LANG_C)
DW$571	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$572	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$573	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$86)
	.dwendtag DW$T$87

DW$T$84	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$83)
	.dwattr DW$T$84, DW_AT_address_class(0x16)

DW$T$90	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$90, DW_AT_language(DW_LANG_C)
DW$574	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$575	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$576	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$66)
	.dwendtag DW$T$90


DW$T$94	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$94, DW_AT_language(DW_LANG_C)
DW$577	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$93)
DW$578	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
DW$579	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
	.dwendtag DW$T$94


DW$T$96	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$96, DW_AT_language(DW_LANG_C)
DW$580	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$581	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$9)
	.dwendtag DW$T$96


DW$T$98	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$98, DW_AT_language(DW_LANG_C)
DW$582	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$583	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$93)
DW$584	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$T$98


DW$T$101	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$101, DW_AT_language(DW_LANG_C)
DW$585	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$100)
	.dwendtag DW$T$101


DW$T$103	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$103, DW_AT_language(DW_LANG_C)
DW$586	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$100)
DW$587	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
	.dwendtag DW$T$103


DW$T$105	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$105, DW_AT_language(DW_LANG_C)
DW$588	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
DW$589	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
DW$590	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
	.dwendtag DW$T$105

DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)
DW$T$107	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$107, DW_AT_address_class(0x16)
DW$T$9	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned short")
	.dwattr DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$9, DW_AT_byte_size(0x01)
DW$T$109	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$9)
	.dwattr DW$T$109, DW_AT_address_class(0x16)

DW$T$111	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$9)
	.dwattr DW$T$111, DW_AT_language(DW_LANG_C)

DW$T$112	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$9)
	.dwattr DW$T$112, DW_AT_language(DW_LANG_C)
DW$591	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$112

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)
DW$T$114	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$114, DW_AT_address_class(0x16)

DW$T$118	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$118, DW_AT_language(DW_LANG_C)
DW$592	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$117)
	.dwendtag DW$T$118


DW$T$120	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$120, DW_AT_language(DW_LANG_C)
DW$593	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$594	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$595	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$596	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$120


DW$T$122	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$122, DW_AT_language(DW_LANG_C)
DW$597	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$598	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$599	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$23)
	.dwendtag DW$T$122


DW$T$124	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$124, DW_AT_language(DW_LANG_C)
DW$600	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
	.dwendtag DW$T$124


DW$T$127	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$127, DW_AT_language(DW_LANG_C)
DW$601	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$117)
DW$602	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$603	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$126)
	.dwendtag DW$T$127


DW$T$129	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$129, DW_AT_language(DW_LANG_C)
DW$604	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$605	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$66)
	.dwendtag DW$T$129


DW$T$131	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$131, DW_AT_language(DW_LANG_C)
DW$606	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$607	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$23)
	.dwendtag DW$T$131


DW$T$133	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$133, DW_AT_language(DW_LANG_C)
DW$608	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$609	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$100)
	.dwendtag DW$T$133


DW$T$135	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$135, DW_AT_language(DW_LANG_C)
DW$610	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$611	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$612	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$T$135


DW$T$137	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$137, DW_AT_language(DW_LANG_C)
DW$613	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$614	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$117)
DW$615	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$100)
DW$616	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$T$137


DW$T$139	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$139, DW_AT_language(DW_LANG_C)
DW$617	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$618	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$100)
DW$619	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
DW$620	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$114)
	.dwendtag DW$T$139


DW$T$141	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$141, DW_AT_language(DW_LANG_C)
DW$621	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$622	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$T$141


DW$T$143	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$143, DW_AT_language(DW_LANG_C)
DW$623	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$117)
DW$624	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
	.dwendtag DW$T$143


DW$T$147	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$147, DW_AT_language(DW_LANG_C)
DW$625	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$146)
DW$626	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
DW$627	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
	.dwendtag DW$T$147


DW$T$150	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$150, DW_AT_language(DW_LANG_C)
DW$628	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$117)
DW$629	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$146)
DW$630	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
	.dwendtag DW$T$150


DW$T$153	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$153, DW_AT_language(DW_LANG_C)
DW$631	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$632	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
DW$633	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
DW$634	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$66)
DW$635	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$152)
	.dwendtag DW$T$153


DW$T$155	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$155, DW_AT_language(DW_LANG_C)
DW$636	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$146)
DW$637	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$146)
	.dwendtag DW$T$155


DW$T$157	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$157, DW_AT_language(DW_LANG_C)
DW$638	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$639	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
DW$640	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$66)
	.dwendtag DW$T$157


DW$T$159	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$159, DW_AT_language(DW_LANG_C)
DW$641	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$117)
DW$642	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$643	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
DW$644	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$159


DW$T$161	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$161, DW_AT_language(DW_LANG_C)
DW$645	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$117)
DW$646	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
DW$647	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$161


DW$T$164	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$164, DW_AT_language(DW_LANG_C)
DW$648	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$117)
DW$649	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$146)
DW$650	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$163)
	.dwendtag DW$T$164


DW$T$165	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$165, DW_AT_language(DW_LANG_C)
DW$651	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$117)
DW$652	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$163)
	.dwendtag DW$T$165


DW$T$167	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$167, DW_AT_language(DW_LANG_C)
DW$653	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$117)
DW$654	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$146)
	.dwendtag DW$T$167


DW$T$168	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$168, DW_AT_language(DW_LANG_C)
DW$655	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$117)
DW$656	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$146)
DW$657	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$146)
	.dwendtag DW$T$168


DW$T$169	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$169, DW_AT_language(DW_LANG_C)
DW$658	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$659	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$149)
DW$660	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$66)
DW$661	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$152)
	.dwendtag DW$T$169


DW$T$171	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$171, DW_AT_language(DW_LANG_C)
DW$662	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$117)
DW$663	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$146)
DW$664	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$9)
DW$665	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$9)
	.dwendtag DW$T$171


DW$T$172	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$172, DW_AT_language(DW_LANG_C)
DW$666	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$117)
DW$667	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$146)
DW$668	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$109)
DW$669	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$109)
	.dwendtag DW$T$172


DW$T$173	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$173, DW_AT_language(DW_LANG_C)
DW$670	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$117)
DW$671	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$146)
DW$672	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
	.dwendtag DW$T$173


DW$T$174	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$174, DW_AT_language(DW_LANG_C)
DW$673	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$117)
DW$674	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$146)
DW$675	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$6)
	.dwendtag DW$T$174


DW$T$175	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$175, DW_AT_language(DW_LANG_C)
DW$676	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$117)
DW$677	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$678	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
DW$679	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$T$175


DW$T$176	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$176, DW_AT_language(DW_LANG_C)
DW$680	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$117)
DW$681	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$682	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$146)
	.dwendtag DW$T$176

DW$T$12	.dwtag  DW_TAG_base_type, DW_AT_name("long")
	.dwattr DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$12, DW_AT_byte_size(0x02)

DW$T$211	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$211, DW_AT_language(DW_LANG_C)
DW$683	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$117)
DW$684	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$84)
DW$685	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$686	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$687	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$210)
	.dwendtag DW$T$211


DW$T$213	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$213, DW_AT_language(DW_LANG_C)
DW$688	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
DW$689	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
	.dwendtag DW$T$213


DW$T$215	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$215, DW_AT_language(DW_LANG_C)
DW$690	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$117)
DW$691	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$146)
	.dwendtag DW$T$215

DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)
DW$T$23	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$23, DW_AT_address_class(0x16)
DW$T$86	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$86, DW_AT_language(DW_LANG_C)

DW$T$216	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$216, DW_AT_language(DW_LANG_C)
DW$692	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$89)
DW$693	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$93)
	.dwendtag DW$T$216


DW$T$218	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$218, DW_AT_language(DW_LANG_C)
DW$694	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$218

DW$T$59	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$59, DW_AT_address_class(0x16)
DW$T$146	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$145)
	.dwattr DW$T$146, DW_AT_address_class(0x16)

DW$T$223	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$223, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$223, DW_AT_byte_size(0x200)
DW$695	.dwtag  DW_TAG_subrange_type
	.dwattr DW$695, DW_AT_upper_bound(0x1ff)
	.dwendtag DW$T$223

DW$T$117	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$116)
	.dwattr DW$T$117, DW_AT_address_class(0x16)
DW$T$210	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$69)
	.dwattr DW$T$210, DW_AT_address_class(0x16)

DW$T$231	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$210)
	.dwattr DW$T$231, DW_AT_language(DW_LANG_C)
DW$696	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$117)
DW$697	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$146)
DW$698	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$146)
	.dwendtag DW$T$231


DW$T$232	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$210)
	.dwattr DW$T$232, DW_AT_language(DW_LANG_C)
DW$699	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$117)
DW$700	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$146)
DW$701	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$T$232

DW$T$89	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$78)
	.dwattr DW$T$89, DW_AT_address_class(0x16)
DW$T$126	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$89)
	.dwattr DW$T$126, DW_AT_address_class(0x16)
DW$T$66	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$65)
	.dwattr DW$T$66, DW_AT_address_class(0x16)
DW$T$93	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$92)
	.dwattr DW$T$93, DW_AT_address_class(0x16)
DW$T$152	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$93)
	.dwattr DW$T$152, DW_AT_address_class(0x16)
DW$T$100	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$80)
	.dwattr DW$T$100, DW_AT_address_class(0x16)

DW$T$252	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$100)
	.dwattr DW$T$252, DW_AT_language(DW_LANG_C)
DW$T$149	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$76)
	.dwattr DW$T$149, DW_AT_address_class(0x16)
DW$T$163	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$162)
	.dwattr DW$T$163, DW_AT_address_class(0x16)
DW$T$264	.dwtag  DW_TAG_typedef, DW_AT_name("F_FILESYSTEM"), DW_AT_type(*DW$T$82)
	.dwattr DW$T$264, DW_AT_language(DW_LANG_C)
DW$702	.dwtag  DW_TAG_far_type
DW$T$83	.dwtag  DW_TAG_const_type
	.dwattr DW$T$83, DW_AT_type(*DW$702)
DW$T$19	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$19, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$19, DW_AT_byte_size(0x01)
DW$703	.dwtag  DW_TAG_far_type
	.dwattr DW$703, DW_AT_type(*DW$T$19)
DW$T$145	.dwtag  DW_TAG_const_type
	.dwattr DW$T$145, DW_AT_type(*DW$703)
DW$T$116	.dwtag  DW_TAG_typedef, DW_AT_name("F_MULTI"), DW_AT_type(*DW$T$24)
	.dwattr DW$T$116, DW_AT_language(DW_LANG_C)
DW$T$69	.dwtag  DW_TAG_typedef, DW_AT_name("F_FILE"), DW_AT_type(*DW$T$25)
	.dwattr DW$T$69, DW_AT_language(DW_LANG_C)
DW$T$78	.dwtag  DW_TAG_typedef, DW_AT_name("F_VOLUME"), DW_AT_type(*DW$T$61)
	.dwattr DW$T$78, DW_AT_language(DW_LANG_C)
DW$T$65	.dwtag  DW_TAG_typedef, DW_AT_name("F_POS"), DW_AT_type(*DW$T$62)
	.dwattr DW$T$65, DW_AT_language(DW_LANG_C)
DW$T$92	.dwtag  DW_TAG_typedef, DW_AT_name("F_DIRENTRY"), DW_AT_type(*DW$T$64)
	.dwattr DW$T$92, DW_AT_language(DW_LANG_C)
DW$T$80	.dwtag  DW_TAG_typedef, DW_AT_name("F_FILEINT"), DW_AT_type(*DW$T$72)
	.dwattr DW$T$80, DW_AT_language(DW_LANG_C)
DW$T$76	.dwtag  DW_TAG_typedef, DW_AT_name("F_NAME"), DW_AT_type(*DW$T$75)
	.dwattr DW$T$76, DW_AT_language(DW_LANG_C)
DW$T$162	.dwtag  DW_TAG_typedef, DW_AT_name("F_FIND"), DW_AT_type(*DW$T$77)
	.dwattr DW$T$162, DW_AT_language(DW_LANG_C)

DW$T$82	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$82, DW_AT_byte_size(0xa4a)
DW$704	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$79)
	.dwattr DW$704, DW_AT_name("volumes"), DW_AT_symbol_name("_volumes")
	.dwattr DW$704, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$704, DW_AT_accessibility(DW_ACCESS_public)
DW$705	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$81)
	.dwattr DW$705, DW_AT_name("files"), DW_AT_symbol_name("_files")
	.dwattr DW$705, DW_AT_data_member_location[DW_OP_plus_uconst 0x47c]
	.dwattr DW$705, DW_AT_accessibility(DW_ACCESS_public)
DW$706	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$57)
	.dwattr DW$706, DW_AT_name("sectorbuffer"), DW_AT_symbol_name("_sectorbuffer")
	.dwattr DW$706, DW_AT_data_member_location[DW_OP_plus_uconst 0x84a]
	.dwattr DW$706, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$82


DW$T$57	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$57, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$57, DW_AT_byte_size(0x200)
DW$707	.dwtag  DW_TAG_subrange_type
	.dwattr DW$707, DW_AT_upper_bound(0x1ff)
	.dwendtag DW$T$57


DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_byte_size(0x1a)
DW$708	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$708, DW_AT_name("ID"), DW_AT_symbol_name("_ID")
	.dwattr DW$708, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$708, DW_AT_accessibility(DW_ACCESS_public)
DW$709	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$709, DW_AT_name("f_curdrive"), DW_AT_symbol_name("_f_curdrive")
	.dwattr DW$709, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$709, DW_AT_accessibility(DW_ACCESS_public)
DW$710	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$710, DW_AT_name("f_vols"), DW_AT_symbol_name("_f_vols")
	.dwattr DW$710, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$710, DW_AT_accessibility(DW_ACCESS_public)
DW$711	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$711, DW_AT_name("pmutex"), DW_AT_symbol_name("_pmutex")
	.dwattr DW$711, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$711, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$25, DW_AT_byte_size(0x02)
DW$712	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$3)
	.dwattr DW$712, DW_AT_name("reference"), DW_AT_symbol_name("_reference")
	.dwattr DW$712, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$712, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$61, DW_AT_byte_size(0x47c)
DW$713	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$713, DW_AT_name("state"), DW_AT_symbol_name("_state")
	.dwattr DW$713, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$713, DW_AT_accessibility(DW_ACCESS_public)
DW$714	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$55)
	.dwattr DW$714, DW_AT_name("bootrecord"), DW_AT_symbol_name("_bootrecord")
	.dwattr DW$714, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$714, DW_AT_accessibility(DW_ACCESS_public)
DW$715	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$56)
	.dwattr DW$715, DW_AT_name("firstfat"), DW_AT_symbol_name("_firstfat")
	.dwattr DW$715, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr DW$715, DW_AT_accessibility(DW_ACCESS_public)
DW$716	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$56)
	.dwattr DW$716, DW_AT_name("root"), DW_AT_symbol_name("_root")
	.dwattr DW$716, DW_AT_data_member_location[DW_OP_plus_uconst 0x4e]
	.dwattr DW$716, DW_AT_accessibility(DW_ACCESS_public)
DW$717	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$56)
	.dwattr DW$717, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$717, DW_AT_data_member_location[DW_OP_plus_uconst 0x52]
	.dwattr DW$717, DW_AT_accessibility(DW_ACCESS_public)
DW$718	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$57)
	.dwattr DW$718, DW_AT_name("fat"), DW_AT_symbol_name("_fat")
	.dwattr DW$718, DW_AT_data_member_location[DW_OP_plus_uconst 0x56]
	.dwattr DW$718, DW_AT_accessibility(DW_ACCESS_public)
DW$719	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$719, DW_AT_name("fatsector"), DW_AT_symbol_name("_fatsector")
	.dwattr DW$719, DW_AT_data_member_location[DW_OP_plus_uconst 0x256]
	.dwattr DW$719, DW_AT_accessibility(DW_ACCESS_public)
DW$720	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$720, DW_AT_name("fatmodified"), DW_AT_symbol_name("_fatmodified")
	.dwattr DW$720, DW_AT_data_member_location[DW_OP_plus_uconst 0x258]
	.dwattr DW$720, DW_AT_accessibility(DW_ACCESS_public)
DW$721	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$57)
	.dwattr DW$721, DW_AT_name("direntry"), DW_AT_symbol_name("_direntry")
	.dwattr DW$721, DW_AT_data_member_location[DW_OP_plus_uconst 0x25a]
	.dwattr DW$721, DW_AT_accessibility(DW_ACCESS_public)
DW$722	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$722, DW_AT_name("direntrysector"), DW_AT_symbol_name("_direntrysector")
	.dwattr DW$722, DW_AT_data_member_location[DW_OP_plus_uconst 0x45a]
	.dwattr DW$722, DW_AT_accessibility(DW_ACCESS_public)
DW$723	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$723, DW_AT_name("lastalloccluster"), DW_AT_symbol_name("_lastalloccluster")
	.dwattr DW$723, DW_AT_data_member_location[DW_OP_plus_uconst 0x45c]
	.dwattr DW$723, DW_AT_accessibility(DW_ACCESS_public)
DW$724	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$58)
	.dwattr DW$724, DW_AT_name("func"), DW_AT_symbol_name("_func")
	.dwattr DW$724, DW_AT_data_member_location[DW_OP_plus_uconst 0x45e]
	.dwattr DW$724, DW_AT_accessibility(DW_ACCESS_public)
DW$725	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$59)
	.dwattr DW$725, DW_AT_name("cwd"), DW_AT_symbol_name("_cwd")
	.dwattr DW$725, DW_AT_data_member_location[DW_OP_plus_uconst 0x46e]
	.dwattr DW$725, DW_AT_accessibility(DW_ACCESS_public)
DW$726	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$726, DW_AT_name("mediatype"), DW_AT_symbol_name("_mediatype")
	.dwattr DW$726, DW_AT_data_member_location[DW_OP_plus_uconst 0x470]
	.dwattr DW$726, DW_AT_accessibility(DW_ACCESS_public)
DW$727	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$60)
	.dwattr DW$727, DW_AT_name("clspace"), DW_AT_symbol_name("_clspace")
	.dwattr DW$727, DW_AT_data_member_location[DW_OP_plus_uconst 0x472]
	.dwattr DW$727, DW_AT_accessibility(DW_ACCESS_public)
DW$728	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$728, DW_AT_name("cspaceok"), DW_AT_symbol_name("_cspaceok")
	.dwattr DW$728, DW_AT_data_member_location[DW_OP_plus_uconst 0x478]
	.dwattr DW$728, DW_AT_accessibility(DW_ACCESS_public)
DW$729	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$729, DW_AT_name("mutex"), DW_AT_symbol_name("_mutex")
	.dwattr DW$729, DW_AT_data_member_location[DW_OP_plus_uconst 0x47a]
	.dwattr DW$729, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$61


DW$T$79	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$78)
	.dwattr DW$T$79, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$79, DW_AT_byte_size(0x47c)
DW$730	.dwtag  DW_TAG_subrange_type
	.dwattr DW$730, DW_AT_upper_bound(0x00)
	.dwendtag DW$T$79


DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$62, DW_AT_byte_size(0x0c)
DW$731	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$731, DW_AT_name("cluster"), DW_AT_symbol_name("_cluster")
	.dwattr DW$731, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$731, DW_AT_accessibility(DW_ACCESS_public)
DW$732	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$732, DW_AT_name("prevcluster"), DW_AT_symbol_name("_prevcluster")
	.dwattr DW$732, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$732, DW_AT_accessibility(DW_ACCESS_public)
DW$733	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$733, DW_AT_name("sectorbegin"), DW_AT_symbol_name("_sectorbegin")
	.dwattr DW$733, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$733, DW_AT_accessibility(DW_ACCESS_public)
DW$734	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$734, DW_AT_name("sector"), DW_AT_symbol_name("_sector")
	.dwattr DW$734, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$734, DW_AT_accessibility(DW_ACCESS_public)
DW$735	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$735, DW_AT_name("sectorend"), DW_AT_symbol_name("_sectorend")
	.dwattr DW$735, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$735, DW_AT_accessibility(DW_ACCESS_public)
DW$736	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$736, DW_AT_name("pos"), DW_AT_symbol_name("_pos")
	.dwattr DW$736, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$736, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$62


DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$64, DW_AT_byte_size(0x20)
DW$737	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$737, DW_AT_name("name"), DW_AT_symbol_name("_name")
	.dwattr DW$737, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$737, DW_AT_accessibility(DW_ACCESS_public)
DW$738	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$738, DW_AT_name("ext"), DW_AT_symbol_name("_ext")
	.dwattr DW$738, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$738, DW_AT_accessibility(DW_ACCESS_public)
DW$739	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$6)
	.dwattr DW$739, DW_AT_name("attr"), DW_AT_symbol_name("_attr")
	.dwattr DW$739, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$739, DW_AT_accessibility(DW_ACCESS_public)
DW$740	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$6)
	.dwattr DW$740, DW_AT_name("ntres"), DW_AT_symbol_name("_ntres")
	.dwattr DW$740, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$740, DW_AT_accessibility(DW_ACCESS_public)
DW$741	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$6)
	.dwattr DW$741, DW_AT_name("crttimetenth"), DW_AT_symbol_name("_crttimetenth")
	.dwattr DW$741, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$741, DW_AT_accessibility(DW_ACCESS_public)
DW$742	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$742, DW_AT_name("crttime"), DW_AT_symbol_name("_crttime")
	.dwattr DW$742, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$742, DW_AT_accessibility(DW_ACCESS_public)
DW$743	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$743, DW_AT_name("crtdate"), DW_AT_symbol_name("_crtdate")
	.dwattr DW$743, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$743, DW_AT_accessibility(DW_ACCESS_public)
DW$744	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$744, DW_AT_name("lastaccessdate"), DW_AT_symbol_name("_lastaccessdate")
	.dwattr DW$744, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$744, DW_AT_accessibility(DW_ACCESS_public)
DW$745	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$745, DW_AT_name("clusterhi"), DW_AT_symbol_name("_clusterhi")
	.dwattr DW$745, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$745, DW_AT_accessibility(DW_ACCESS_public)
DW$746	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$746, DW_AT_name("ctime"), DW_AT_symbol_name("_ctime")
	.dwattr DW$746, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$746, DW_AT_accessibility(DW_ACCESS_public)
DW$747	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$747, DW_AT_name("cdate"), DW_AT_symbol_name("_cdate")
	.dwattr DW$747, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$747, DW_AT_accessibility(DW_ACCESS_public)
DW$748	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$748, DW_AT_name("clusterlo"), DW_AT_symbol_name("_clusterlo")
	.dwattr DW$748, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$748, DW_AT_accessibility(DW_ACCESS_public)
DW$749	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$63)
	.dwattr DW$749, DW_AT_name("filesize"), DW_AT_symbol_name("_filesize")
	.dwattr DW$749, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$749, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$64


DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$72, DW_AT_byte_size(0x3ce)
DW$750	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$750, DW_AT_name("file"), DW_AT_symbol_name("_file")
	.dwattr DW$750, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$750, DW_AT_accessibility(DW_ACCESS_public)
DW$751	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$751, DW_AT_name("modified"), DW_AT_symbol_name("_modified")
	.dwattr DW$751, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$751, DW_AT_accessibility(DW_ACCESS_public)
DW$752	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$752, DW_AT_name("mode"), DW_AT_symbol_name("_mode")
	.dwattr DW$752, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$752, DW_AT_accessibility(DW_ACCESS_public)
DW$753	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$753, DW_AT_name("drivenum"), DW_AT_symbol_name("_drivenum")
	.dwattr DW$753, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$753, DW_AT_accessibility(DW_ACCESS_public)
DW$754	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$754, DW_AT_name("abspos"), DW_AT_symbol_name("_abspos")
	.dwattr DW$754, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$754, DW_AT_accessibility(DW_ACCESS_public)
DW$755	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$755, DW_AT_name("relpos"), DW_AT_symbol_name("_relpos")
	.dwattr DW$755, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$755, DW_AT_accessibility(DW_ACCESS_public)
DW$756	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$756, DW_AT_name("filesize"), DW_AT_symbol_name("_filesize")
	.dwattr DW$756, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$756, DW_AT_accessibility(DW_ACCESS_public)
DW$757	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$57)
	.dwattr DW$757, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$757, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$757, DW_AT_accessibility(DW_ACCESS_public)
DW$758	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$70)
	.dwattr DW$758, DW_AT_name("WrDataCache"), DW_AT_symbol_name("_WrDataCache")
	.dwattr DW$758, DW_AT_data_member_location[DW_OP_plus_uconst 0x20c]
	.dwattr DW$758, DW_AT_accessibility(DW_ACCESS_public)
DW$759	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$759, DW_AT_name("startcluster"), DW_AT_symbol_name("_startcluster")
	.dwattr DW$759, DW_AT_data_member_location[DW_OP_plus_uconst 0x392]
	.dwattr DW$759, DW_AT_accessibility(DW_ACCESS_public)
DW$760	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$65)
	.dwattr DW$760, DW_AT_name("pos"), DW_AT_symbol_name("_pos")
	.dwattr DW$760, DW_AT_data_member_location[DW_OP_plus_uconst 0x394]
	.dwattr DW$760, DW_AT_accessibility(DW_ACCESS_public)
DW$761	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$65)
	.dwattr DW$761, DW_AT_name("dirpos"), DW_AT_symbol_name("_dirpos")
	.dwattr DW$761, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a0]
	.dwattr DW$761, DW_AT_accessibility(DW_ACCESS_public)
DW$762	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$71)
	.dwattr DW$762, DW_AT_name("seekpos"), DW_AT_symbol_name("_seekpos")
	.dwattr DW$762, DW_AT_data_member_location[DW_OP_plus_uconst 0x3ac]
	.dwattr DW$762, DW_AT_accessibility(DW_ACCESS_public)
DW$763	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$71)
	.dwattr DW$763, DW_AT_name("seekprev"), DW_AT_symbol_name("_seekprev")
	.dwattr DW$763, DW_AT_data_member_location[DW_OP_plus_uconst 0x3bc]
	.dwattr DW$763, DW_AT_accessibility(DW_ACCESS_public)
DW$764	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$764, DW_AT_name("seekshift"), DW_AT_symbol_name("_seekshift")
	.dwattr DW$764, DW_AT_data_member_location[DW_OP_plus_uconst 0x3cc]
	.dwattr DW$764, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$72


DW$T$81	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$80)
	.dwattr DW$T$81, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$81, DW_AT_byte_size(0x3ce)
DW$765	.dwtag  DW_TAG_subrange_type
	.dwattr DW$765, DW_AT_upper_bound(0x00)
	.dwendtag DW$T$81


DW$T$75	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$75, DW_AT_byte_size(0x20)
DW$766	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$766, DW_AT_name("drivenum"), DW_AT_symbol_name("_drivenum")
	.dwattr DW$766, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$766, DW_AT_accessibility(DW_ACCESS_public)
DW$767	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$767, DW_AT_name("path"), DW_AT_symbol_name("_path")
	.dwattr DW$767, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$767, DW_AT_accessibility(DW_ACCESS_public)
DW$768	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$73)
	.dwattr DW$768, DW_AT_name("filename"), DW_AT_symbol_name("_filename")
	.dwattr DW$768, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$768, DW_AT_accessibility(DW_ACCESS_public)
DW$769	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$74)
	.dwattr DW$769, DW_AT_name("fileext"), DW_AT_symbol_name("_fileext")
	.dwattr DW$769, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$769, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$75


DW$T$77	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$77, DW_AT_byte_size(0x52)
DW$770	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$770, DW_AT_name("filename"), DW_AT_symbol_name("_filename")
	.dwattr DW$770, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$770, DW_AT_accessibility(DW_ACCESS_public)
DW$771	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$73)
	.dwattr DW$771, DW_AT_name("name"), DW_AT_symbol_name("_name")
	.dwattr DW$771, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$771, DW_AT_accessibility(DW_ACCESS_public)
DW$772	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$74)
	.dwattr DW$772, DW_AT_name("ext"), DW_AT_symbol_name("_ext")
	.dwattr DW$772, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$772, DW_AT_accessibility(DW_ACCESS_public)
DW$773	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$773, DW_AT_name("attr"), DW_AT_symbol_name("_attr")
	.dwattr DW$773, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$773, DW_AT_accessibility(DW_ACCESS_public)
DW$774	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$774, DW_AT_name("ctime"), DW_AT_symbol_name("_ctime")
	.dwattr DW$774, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$774, DW_AT_accessibility(DW_ACCESS_public)
DW$775	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$775, DW_AT_name("cdate"), DW_AT_symbol_name("_cdate")
	.dwattr DW$775, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr DW$775, DW_AT_accessibility(DW_ACCESS_public)
DW$776	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$776, DW_AT_name("cluster"), DW_AT_symbol_name("_cluster")
	.dwattr DW$776, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$776, DW_AT_accessibility(DW_ACCESS_public)
DW$777	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$777, DW_AT_name("filesize"), DW_AT_symbol_name("_filesize")
	.dwattr DW$777, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$777, DW_AT_accessibility(DW_ACCESS_public)
DW$778	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$76)
	.dwattr DW$778, DW_AT_name("findfsname"), DW_AT_symbol_name("_findfsname")
	.dwattr DW$778, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$778, DW_AT_accessibility(DW_ACCESS_public)
DW$779	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$65)
	.dwattr DW$779, DW_AT_name("pos"), DW_AT_symbol_name("_pos")
	.dwattr DW$779, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$779, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$77


DW$T$26	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$26, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$26, DW_AT_byte_size(0x03)
DW$780	.dwtag  DW_TAG_subrange_type
	.dwattr DW$780, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$26


DW$T$27	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$27, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$27, DW_AT_byte_size(0x08)
DW$781	.dwtag  DW_TAG_subrange_type
	.dwattr DW$781, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$27


DW$T$30	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$30, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$30, DW_AT_byte_size(0x02)
DW$782	.dwtag  DW_TAG_subrange_type
	.dwattr DW$782, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$30


DW$T$63	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$63, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$63, DW_AT_byte_size(0x04)
DW$783	.dwtag  DW_TAG_subrange_type
	.dwattr DW$783, DW_AT_upper_bound(0x03)
	.dwendtag DW$T$63


DW$T$71	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$71, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$71, DW_AT_byte_size(0x10)
DW$784	.dwtag  DW_TAG_subrange_type
	.dwattr DW$784, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$71


DW$T$20	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$20, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$20, DW_AT_byte_size(0x14)
DW$785	.dwtag  DW_TAG_subrange_type
	.dwattr DW$785, DW_AT_upper_bound(0x13)
	.dwendtag DW$T$20


DW$T$73	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$73, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$73, DW_AT_byte_size(0x08)
DW$786	.dwtag  DW_TAG_subrange_type
	.dwattr DW$786, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$73


DW$T$74	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$74, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$74, DW_AT_byte_size(0x03)
DW$787	.dwtag  DW_TAG_subrange_type
	.dwattr DW$787, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$74


DW$T$22	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$21)
	.dwattr DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$22, DW_AT_byte_size(0x14)
DW$788	.dwtag  DW_TAG_subrange_type
	.dwattr DW$788, DW_AT_upper_bound(0x00)
	.dwendtag DW$T$22

DW$T$55	.dwtag  DW_TAG_typedef, DW_AT_name("F_BOOTRECORD"), DW_AT_type(*DW$T$31)
	.dwattr DW$T$55, DW_AT_language(DW_LANG_C)
DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("F_SECTOR"), DW_AT_type(*DW$T$32)
	.dwattr DW$T$56, DW_AT_language(DW_LANG_C)
DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("F_FUNC"), DW_AT_type(*DW$T$53)
	.dwattr DW$T$58, DW_AT_language(DW_LANG_C)
DW$T$60	.dwtag  DW_TAG_typedef, DW_AT_name("F_CLSPACE"), DW_AT_type(*DW$T$54)
	.dwattr DW$T$60, DW_AT_language(DW_LANG_C)
DW$T$70	.dwtag  DW_TAG_typedef, DW_AT_name("t_WrDataCache"), DW_AT_type(*DW$T$68)
	.dwattr DW$T$70, DW_AT_language(DW_LANG_C)

DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$21, DW_AT_byte_size(0x14)
DW$789	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$789, DW_AT_name("cwd"), DW_AT_symbol_name("_cwd")
	.dwattr DW$789, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$789, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21


DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$31, DW_AT_byte_size(0x48)
DW$790	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$790, DW_AT_name("jump_code"), DW_AT_symbol_name("_jump_code")
	.dwattr DW$790, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$790, DW_AT_accessibility(DW_ACCESS_public)
DW$791	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$791, DW_AT_name("OEM_name"), DW_AT_symbol_name("_OEM_name")
	.dwattr DW$791, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$791, DW_AT_accessibility(DW_ACCESS_public)
DW$792	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$792, DW_AT_name("bytes_per_sector"), DW_AT_symbol_name("_bytes_per_sector")
	.dwattr DW$792, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$792, DW_AT_accessibility(DW_ACCESS_public)
DW$793	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$6)
	.dwattr DW$793, DW_AT_name("sector_per_cluster"), DW_AT_symbol_name("_sector_per_cluster")
	.dwattr DW$793, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$793, DW_AT_accessibility(DW_ACCESS_public)
DW$794	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$794, DW_AT_name("reserved_sectors"), DW_AT_symbol_name("_reserved_sectors")
	.dwattr DW$794, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$794, DW_AT_accessibility(DW_ACCESS_public)
DW$795	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$6)
	.dwattr DW$795, DW_AT_name("number_of_FATs"), DW_AT_symbol_name("_number_of_FATs")
	.dwattr DW$795, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$795, DW_AT_accessibility(DW_ACCESS_public)
DW$796	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$796, DW_AT_name("max_root_entry"), DW_AT_symbol_name("_max_root_entry")
	.dwattr DW$796, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$796, DW_AT_accessibility(DW_ACCESS_public)
DW$797	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$797, DW_AT_name("number_of_sectors_less32"), DW_AT_symbol_name("_number_of_sectors_less32")
	.dwattr DW$797, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$797, DW_AT_accessibility(DW_ACCESS_public)
DW$798	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$6)
	.dwattr DW$798, DW_AT_name("media_descriptor"), DW_AT_symbol_name("_media_descriptor")
	.dwattr DW$798, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$798, DW_AT_accessibility(DW_ACCESS_public)
DW$799	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$799, DW_AT_name("sector_per_FAT"), DW_AT_symbol_name("_sector_per_FAT")
	.dwattr DW$799, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$799, DW_AT_accessibility(DW_ACCESS_public)
DW$800	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$800, DW_AT_name("sector_per_Track"), DW_AT_symbol_name("_sector_per_Track")
	.dwattr DW$800, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$800, DW_AT_accessibility(DW_ACCESS_public)
DW$801	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$801, DW_AT_name("number_of_heads"), DW_AT_symbol_name("_number_of_heads")
	.dwattr DW$801, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$801, DW_AT_accessibility(DW_ACCESS_public)
DW$802	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$802, DW_AT_name("number_of_hidden_sectors"), DW_AT_symbol_name("_number_of_hidden_sectors")
	.dwattr DW$802, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$802, DW_AT_accessibility(DW_ACCESS_public)
DW$803	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$803, DW_AT_name("number_of_sectors"), DW_AT_symbol_name("_number_of_sectors")
	.dwattr DW$803, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$803, DW_AT_accessibility(DW_ACCESS_public)
DW$804	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$804, DW_AT_name("sector_per_FAT32"), DW_AT_symbol_name("_sector_per_FAT32")
	.dwattr DW$804, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$804, DW_AT_accessibility(DW_ACCESS_public)
DW$805	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$805, DW_AT_name("extflags"), DW_AT_symbol_name("_extflags")
	.dwattr DW$805, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$805, DW_AT_accessibility(DW_ACCESS_public)
DW$806	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$806, DW_AT_name("fsversion"), DW_AT_symbol_name("_fsversion")
	.dwattr DW$806, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$806, DW_AT_accessibility(DW_ACCESS_public)
DW$807	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$807, DW_AT_name("rootcluster"), DW_AT_symbol_name("_rootcluster")
	.dwattr DW$807, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$807, DW_AT_accessibility(DW_ACCESS_public)
DW$808	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$808, DW_AT_name("fsinfo"), DW_AT_symbol_name("_fsinfo")
	.dwattr DW$808, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$808, DW_AT_accessibility(DW_ACCESS_public)
DW$809	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$809, DW_AT_name("bkbootsec"), DW_AT_symbol_name("_bkbootsec")
	.dwattr DW$809, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr DW$809, DW_AT_accessibility(DW_ACCESS_public)
DW$810	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$810, DW_AT_name("reserved"), DW_AT_symbol_name("_reserved")
	.dwattr DW$810, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$810, DW_AT_accessibility(DW_ACCESS_public)
DW$811	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$811, DW_AT_name("logical_drive_num"), DW_AT_symbol_name("_logical_drive_num")
	.dwattr DW$811, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$811, DW_AT_accessibility(DW_ACCESS_public)
DW$812	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$6)
	.dwattr DW$812, DW_AT_name("extended_signature"), DW_AT_symbol_name("_extended_signature")
	.dwattr DW$812, DW_AT_data_member_location[DW_OP_plus_uconst 0x2f]
	.dwattr DW$812, DW_AT_accessibility(DW_ACCESS_public)
DW$813	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$813, DW_AT_name("serial_number"), DW_AT_symbol_name("_serial_number")
	.dwattr DW$813, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$813, DW_AT_accessibility(DW_ACCESS_public)
DW$814	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$814, DW_AT_name("volume_name"), DW_AT_symbol_name("_volume_name")
	.dwattr DW$814, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$814, DW_AT_accessibility(DW_ACCESS_public)
DW$815	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$815, DW_AT_name("FAT_name"), DW_AT_symbol_name("_FAT_name")
	.dwattr DW$815, DW_AT_data_member_location[DW_OP_plus_uconst 0x3d]
	.dwattr DW$815, DW_AT_accessibility(DW_ACCESS_public)
DW$816	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$816, DW_AT_name("executable_marker"), DW_AT_symbol_name("_executable_marker")
	.dwattr DW$816, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr DW$816, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_byte_size(0x04)
DW$817	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$817, DW_AT_name("sector"), DW_AT_symbol_name("_sector")
	.dwattr DW$817, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$817, DW_AT_accessibility(DW_ACCESS_public)
DW$818	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$818, DW_AT_name("num"), DW_AT_symbol_name("_num")
	.dwattr DW$818, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$818, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$53, DW_AT_byte_size(0x10)
DW$819	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$819, DW_AT_name("writesector"), DW_AT_symbol_name("_writesector")
	.dwattr DW$819, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$819, DW_AT_accessibility(DW_ACCESS_public)
DW$820	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$820, DW_AT_name("writemultiplesector"), DW_AT_symbol_name("_writemultiplesector")
	.dwattr DW$820, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$820, DW_AT_accessibility(DW_ACCESS_public)
DW$821	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$821, DW_AT_name("readsector"), DW_AT_symbol_name("_readsector")
	.dwattr DW$821, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$821, DW_AT_accessibility(DW_ACCESS_public)
DW$822	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$822, DW_AT_name("readmultiplesector"), DW_AT_symbol_name("_readmultiplesector")
	.dwattr DW$822, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$822, DW_AT_accessibility(DW_ACCESS_public)
DW$823	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$823, DW_AT_name("getphy"), DW_AT_symbol_name("_getphy")
	.dwattr DW$823, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$823, DW_AT_accessibility(DW_ACCESS_public)
DW$824	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$824, DW_AT_name("getstatus"), DW_AT_symbol_name("_getstatus")
	.dwattr DW$824, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$824, DW_AT_accessibility(DW_ACCESS_public)
DW$825	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$52)
	.dwattr DW$825, DW_AT_name("delfunc"), DW_AT_symbol_name("_delfunc")
	.dwattr DW$825, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$825, DW_AT_accessibility(DW_ACCESS_public)
DW$826	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$3)
	.dwattr DW$826, DW_AT_name("user_ptr"), DW_AT_symbol_name("_user_ptr")
	.dwattr DW$826, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$826, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$53


DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$54, DW_AT_byte_size(0x06)
DW$827	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$827, DW_AT_name("clfree"), DW_AT_symbol_name("_clfree")
	.dwattr DW$827, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$827, DW_AT_accessibility(DW_ACCESS_public)
DW$828	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$828, DW_AT_name("clused"), DW_AT_symbol_name("_clused")
	.dwattr DW$828, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$828, DW_AT_accessibility(DW_ACCESS_public)
DW$829	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$829, DW_AT_name("clbad"), DW_AT_symbol_name("_clbad")
	.dwattr DW$829, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$829, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$54


DW$T$68	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$68, DW_AT_byte_size(0x186)
DW$830	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$830, DW_AT_name("N"), DW_AT_symbol_name("_N")
	.dwattr DW$830, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$830, DW_AT_accessibility(DW_ACCESS_public)
DW$831	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$59)
	.dwattr DW$831, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$831, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$831, DW_AT_accessibility(DW_ACCESS_public)
DW$832	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$66)
	.dwattr DW$832, DW_AT_name("pos"), DW_AT_symbol_name("_pos")
	.dwattr DW$832, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$832, DW_AT_accessibility(DW_ACCESS_public)
DW$833	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$67)
	.dwattr DW$833, DW_AT_name("posbuf"), DW_AT_symbol_name("_posbuf")
	.dwattr DW$833, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$833, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$68


DW$T$28	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$28, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$28, DW_AT_byte_size(0x0c)
DW$834	.dwtag  DW_TAG_subrange_type
	.dwattr DW$834, DW_AT_upper_bound(0x0b)
	.dwendtag DW$T$28


DW$T$29	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$29, DW_AT_byte_size(0x0b)
DW$835	.dwtag  DW_TAG_subrange_type
	.dwattr DW$835, DW_AT_upper_bound(0x0a)
	.dwendtag DW$T$29

DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("F_WRITESECTOR"), DW_AT_type(*DW$T$35)
	.dwattr DW$T$36, DW_AT_language(DW_LANG_C)
DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("F_READSECTOR"), DW_AT_type(*DW$T$35)
	.dwattr DW$T$40, DW_AT_language(DW_LANG_C)
DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("F_WRITEMULTIPLESECTOR"), DW_AT_type(*DW$T$38)
	.dwattr DW$T$39, DW_AT_language(DW_LANG_C)
DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("F_READMULTIPLESECTOR"), DW_AT_type(*DW$T$38)
	.dwattr DW$T$41, DW_AT_language(DW_LANG_C)
DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("F_GETPHY"), DW_AT_type(*DW$T$45)
	.dwattr DW$T$46, DW_AT_language(DW_LANG_C)
DW$T$52	.dwtag  DW_TAG_typedef, DW_AT_name("F_DELFUNC"), DW_AT_type(*DW$T$51)
	.dwattr DW$T$52, DW_AT_language(DW_LANG_C)
DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("F_GETSTATUS"), DW_AT_type(*DW$T$48)
	.dwattr DW$T$49, DW_AT_language(DW_LANG_C)

DW$T$67	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$65)
	.dwattr DW$T$67, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$67, DW_AT_byte_size(0x180)
DW$836	.dwtag  DW_TAG_subrange_type
	.dwattr DW$836, DW_AT_upper_bound(0x1f)
	.dwendtag DW$T$67

DW$T$35	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$34)
	.dwattr DW$T$35, DW_AT_address_class(0x16)
DW$T$38	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$37)
	.dwattr DW$T$38, DW_AT_address_class(0x16)
DW$T$45	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$44)
	.dwattr DW$T$45, DW_AT_address_class(0x16)
DW$T$51	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$50)
	.dwattr DW$T$51, DW_AT_address_class(0x16)
DW$T$48	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$47)
	.dwattr DW$T$48, DW_AT_address_class(0x16)

DW$T$34	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$34, DW_AT_language(DW_LANG_C)
DW$837	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$838	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$839	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$34


DW$T$37	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$37, DW_AT_language(DW_LANG_C)
DW$840	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$841	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$842	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$843	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$37


DW$T$44	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$44, DW_AT_language(DW_LANG_C)
DW$844	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$43)
DW$845	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$44


DW$T$50	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$50, DW_AT_language(DW_LANG_C)
DW$846	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$50


DW$T$47	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$47, DW_AT_language(DW_LANG_C)
DW$847	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$47

DW$T$43	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$42)
	.dwattr DW$T$43, DW_AT_address_class(0x16)
DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("F_PHY"), DW_AT_type(*DW$T$33)
	.dwattr DW$T$42, DW_AT_language(DW_LANG_C)

DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$33, DW_AT_byte_size(0x08)
DW$848	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$848, DW_AT_name("number_of_cylinders"), DW_AT_symbol_name("_number_of_cylinders")
	.dwattr DW$848, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$848, DW_AT_accessibility(DW_ACCESS_public)
DW$849	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$849, DW_AT_name("sector_per_track"), DW_AT_symbol_name("_sector_per_track")
	.dwattr DW$849, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$849, DW_AT_accessibility(DW_ACCESS_public)
DW$850	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$850, DW_AT_name("number_of_heads"), DW_AT_symbol_name("_number_of_heads")
	.dwattr DW$850, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$850, DW_AT_accessibility(DW_ACCESS_public)
DW$851	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$851, DW_AT_name("number_of_sectors"), DW_AT_symbol_name("_number_of_sectors")
	.dwattr DW$851, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$851, DW_AT_accessibility(DW_ACCESS_public)
DW$852	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$6)
	.dwattr DW$852, DW_AT_name("media_descriptor"), DW_AT_symbol_name("_media_descriptor")
	.dwattr DW$852, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$852, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


	.dwattr DW$407, DW_AT_external(0x01)
	.dwattr DW$407, DW_AT_type(*DW$T$10)
	.dwattr DW$108, DW_AT_type(*DW$T$12)
	.dwattr DW$144, DW_AT_type(*DW$T$12)
	.dwattr DW$254, DW_AT_external(0x01)
	.dwattr DW$254, DW_AT_type(*DW$T$10)
	.dwattr DW$220, DW_AT_type(*DW$T$10)
	.dwattr DW$289, DW_AT_type(*DW$T$10)
	.dwattr DW$328, DW_AT_type(*DW$T$10)
	.dwattr DW$103, DW_AT_external(0x01)
	.dwattr DW$103, DW_AT_type(*DW$T$10)
	.dwattr DW$403, DW_AT_type(*DW$T$100)
	.dwattr DW$185, DW_AT_type(*DW$T$10)
	.dwattr DW$155, DW_AT_type(*DW$T$10)
	.dwattr DW$106, DW_AT_external(0x01)
	.dwattr DW$106, DW_AT_type(*DW$T$10)
	.dwattr DW$388, DW_AT_external(0x01)
	.dwattr DW$388, DW_AT_type(*DW$T$10)
	.dwattr DW$477, DW_AT_external(0x01)
	.dwattr DW$477, DW_AT_type(*DW$T$10)
	.dwattr DW$460, DW_AT_external(0x01)
	.dwattr DW$460, DW_AT_type(*DW$T$12)
	.dwattr DW$377, DW_AT_external(0x01)
	.dwattr DW$377, DW_AT_type(*DW$T$10)
	.dwattr DW$381, DW_AT_external(0x01)
	.dwattr DW$381, DW_AT_type(*DW$T$10)
	.dwattr DW$480, DW_AT_external(0x01)
	.dwattr DW$480, DW_AT_type(*DW$T$10)
	.dwattr DW$370, DW_AT_external(0x01)
	.dwattr DW$370, DW_AT_type(*DW$T$10)
	.dwattr DW$362, DW_AT_external(0x01)
	.dwattr DW$362, DW_AT_type(*DW$T$10)
	.dwattr DW$501, DW_AT_external(0x01)
	.dwattr DW$501, DW_AT_type(*DW$T$10)
	.dwattr DW$472, DW_AT_external(0x01)
	.dwattr DW$472, DW_AT_type(*DW$T$10)
	.dwattr DW$446, DW_AT_external(0x01)
	.dwattr DW$446, DW_AT_type(*DW$T$10)
	.dwattr DW$463, DW_AT_external(0x01)
	.dwattr DW$463, DW_AT_type(*DW$T$210)
	.dwattr DW$395, DW_AT_external(0x01)
	.dwattr DW$395, DW_AT_type(*DW$T$10)
	.dwattr DW$488, DW_AT_external(0x01)
	.dwattr DW$488, DW_AT_type(*DW$T$10)
	.dwattr DW$484, DW_AT_external(0x01)
	.dwattr DW$484, DW_AT_type(*DW$T$10)
	.dwattr DW$530, DW_AT_external(0x01)
	.dwattr DW$530, DW_AT_type(*DW$T$10)
	.dwattr DW$467, DW_AT_external(0x01)
	.dwattr DW$467, DW_AT_type(*DW$T$10)
	.dwattr DW$559, DW_AT_external(0x01)
	.dwattr DW$559, DW_AT_type(*DW$T$210)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$853	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$853, DW_AT_location[DW_OP_reg0]
DW$854	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$854, DW_AT_location[DW_OP_reg1]
DW$855	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$855, DW_AT_location[DW_OP_reg2]
DW$856	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$856, DW_AT_location[DW_OP_reg3]
DW$857	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$857, DW_AT_location[DW_OP_reg4]
DW$858	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$858, DW_AT_location[DW_OP_reg5]
DW$859	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$859, DW_AT_location[DW_OP_reg6]
DW$860	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$860, DW_AT_location[DW_OP_reg7]
DW$861	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$861, DW_AT_location[DW_OP_reg8]
DW$862	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$862, DW_AT_location[DW_OP_reg9]
DW$863	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$863, DW_AT_location[DW_OP_reg10]
DW$864	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$864, DW_AT_location[DW_OP_reg11]
DW$865	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$865, DW_AT_location[DW_OP_reg12]
DW$866	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$866, DW_AT_location[DW_OP_reg13]
DW$867	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$867, DW_AT_location[DW_OP_reg14]
DW$868	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$868, DW_AT_location[DW_OP_reg15]
DW$869	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$869, DW_AT_location[DW_OP_reg16]
DW$870	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$870, DW_AT_location[DW_OP_reg17]
DW$871	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$871, DW_AT_location[DW_OP_reg18]
DW$872	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$872, DW_AT_location[DW_OP_reg19]
DW$873	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$873, DW_AT_location[DW_OP_reg20]
DW$874	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$874, DW_AT_location[DW_OP_reg21]
DW$875	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$875, DW_AT_location[DW_OP_reg22]
DW$876	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$876, DW_AT_location[DW_OP_reg23]
DW$877	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$877, DW_AT_location[DW_OP_reg24]
DW$878	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$878, DW_AT_location[DW_OP_reg25]
DW$879	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$879, DW_AT_location[DW_OP_reg26]
DW$880	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$880, DW_AT_location[DW_OP_reg27]
DW$881	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$881, DW_AT_location[DW_OP_reg28]
DW$882	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$882, DW_AT_location[DW_OP_reg29]
DW$883	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$883, DW_AT_location[DW_OP_reg30]
DW$884	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$884, DW_AT_location[DW_OP_reg31]
DW$885	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$885, DW_AT_location[DW_OP_regx 0x20]
DW$886	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$886, DW_AT_location[DW_OP_regx 0x21]
DW$887	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$887, DW_AT_location[DW_OP_regx 0x22]
DW$888	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$888, DW_AT_location[DW_OP_regx 0x23]
DW$889	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$889, DW_AT_location[DW_OP_regx 0x24]
DW$890	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$890, DW_AT_location[DW_OP_regx 0x25]
DW$891	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$891, DW_AT_location[DW_OP_regx 0x26]
DW$892	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$892, DW_AT_location[DW_OP_regx 0x27]
DW$893	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$893, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

