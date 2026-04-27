;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Thu Aug 18 12:16:15 2016                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("fat_m.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("memset"), DW_AT_symbol_name("_memset")
	.dwattr DW$1, DW_AT_type(*DW$T$3)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$55)
	.dwendtag DW$1


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_getversion"), DW_AT_symbol_name("_fn_getversion")
	.dwattr DW$5, DW_AT_type(*DW$T$95)
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)

DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_initvolume"), DW_AT_symbol_name("_fn_initvolume")
	.dwattr DW$6, DW_AT_type(*DW$T$10)
	.dwattr DW$6, DW_AT_declaration(0x01)
	.dwattr DW$6, DW_AT_external(0x01)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$80)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$6


DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_delvolume"), DW_AT_symbol_name("_fn_delvolume")
	.dwattr DW$11, DW_AT_type(*DW$T$10)
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)
DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$11


DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_get_volume_count"), DW_AT_symbol_name("_fn_get_volume_count")
	.dwattr DW$13, DW_AT_type(*DW$T$10)
	.dwattr DW$13, DW_AT_declaration(0x01)
	.dwattr DW$13, DW_AT_external(0x01)

DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_get_volume_list"), DW_AT_symbol_name("_fn_get_volume_list")
	.dwattr DW$14, DW_AT_type(*DW$T$10)
	.dwattr DW$14, DW_AT_declaration(0x01)
	.dwattr DW$14, DW_AT_external(0x01)
DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$72)
	.dwendtag DW$14


DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_checkvolume"), DW_AT_symbol_name("_fn_checkvolume")
	.dwattr DW$16, DW_AT_type(*DW$T$10)
	.dwattr DW$16, DW_AT_declaration(0x01)
	.dwattr DW$16, DW_AT_external(0x01)
DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$16


DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_hardformat"), DW_AT_symbol_name("_fn_hardformat")
	.dwattr DW$19, DW_AT_type(*DW$T$10)
	.dwattr DW$19, DW_AT_declaration(0x01)
	.dwattr DW$19, DW_AT_external(0x01)
DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$22	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$19


DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_format"), DW_AT_symbol_name("_fn_format")
	.dwattr DW$23, DW_AT_type(*DW$T$10)
	.dwattr DW$23, DW_AT_declaration(0x01)
	.dwattr DW$23, DW_AT_external(0x01)
DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$23


DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_getcwd"), DW_AT_symbol_name("_fn_getcwd")
	.dwattr DW$27, DW_AT_type(*DW$T$10)
	.dwattr DW$27, DW_AT_declaration(0x01)
	.dwattr DW$27, DW_AT_external(0x01)
DW$28	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$95)
DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$27


DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_getdcwd"), DW_AT_symbol_name("_fn_getdcwd")
	.dwattr DW$31, DW_AT_type(*DW$T$10)
	.dwattr DW$31, DW_AT_declaration(0x01)
	.dwattr DW$31, DW_AT_external(0x01)
DW$32	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$95)
DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$31


DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_chdrive"), DW_AT_symbol_name("_fn_chdrive")
	.dwattr DW$36, DW_AT_type(*DW$T$10)
	.dwattr DW$36, DW_AT_declaration(0x01)
	.dwattr DW$36, DW_AT_external(0x01)
DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$36


DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_getdrive"), DW_AT_symbol_name("_fn_getdrive")
	.dwattr DW$39, DW_AT_type(*DW$T$10)
	.dwattr DW$39, DW_AT_declaration(0x01)
	.dwattr DW$39, DW_AT_external(0x01)
DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
	.dwendtag DW$39


DW$41	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_getfreespace"), DW_AT_symbol_name("_fn_getfreespace")
	.dwattr DW$41, DW_AT_type(*DW$T$10)
	.dwattr DW$41, DW_AT_declaration(0x01)
	.dwattr DW$41, DW_AT_external(0x01)
DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$103)
	.dwendtag DW$41


DW$45	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_chdir"), DW_AT_symbol_name("_fn_chdir")
	.dwattr DW$45, DW_AT_type(*DW$T$10)
	.dwattr DW$45, DW_AT_declaration(0x01)
	.dwattr DW$45, DW_AT_external(0x01)
DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
	.dwendtag DW$45


DW$48	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_mkdir"), DW_AT_symbol_name("_fn_mkdir")
	.dwattr DW$48, DW_AT_type(*DW$T$10)
	.dwattr DW$48, DW_AT_declaration(0x01)
	.dwattr DW$48, DW_AT_external(0x01)
DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$50	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
	.dwendtag DW$48


DW$51	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_rmdir"), DW_AT_symbol_name("_fn_rmdir")
	.dwattr DW$51, DW_AT_type(*DW$T$10)
	.dwattr DW$51, DW_AT_declaration(0x01)
	.dwattr DW$51, DW_AT_external(0x01)
DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
	.dwendtag DW$51


DW$54	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_findfirst"), DW_AT_symbol_name("_fn_findfirst")
	.dwattr DW$54, DW_AT_type(*DW$T$10)
	.dwattr DW$54, DW_AT_declaration(0x01)
	.dwattr DW$54, DW_AT_external(0x01)
DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$56	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$111)
	.dwendtag DW$54


DW$58	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_findnext"), DW_AT_symbol_name("_fn_findnext")
	.dwattr DW$58, DW_AT_type(*DW$T$10)
	.dwattr DW$58, DW_AT_declaration(0x01)
	.dwattr DW$58, DW_AT_external(0x01)
DW$59	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$60	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$111)
	.dwendtag DW$58


DW$61	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_rename"), DW_AT_symbol_name("_fn_rename")
	.dwattr DW$61, DW_AT_type(*DW$T$10)
	.dwattr DW$61, DW_AT_declaration(0x01)
	.dwattr DW$61, DW_AT_external(0x01)
DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$63	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
DW$64	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
	.dwendtag DW$61


DW$65	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_filelength"), DW_AT_symbol_name("_fn_filelength")
	.dwattr DW$65, DW_AT_type(*DW$T$12)
	.dwattr DW$65, DW_AT_declaration(0x01)
	.dwattr DW$65, DW_AT_external(0x01)
DW$66	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$67	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
	.dwendtag DW$65


DW$68	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_close"), DW_AT_symbol_name("_fn_close")
	.dwattr DW$68, DW_AT_type(*DW$T$10)
	.dwattr DW$68, DW_AT_declaration(0x01)
	.dwattr DW$68, DW_AT_external(0x01)
DW$69	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$70	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$119)
	.dwendtag DW$68


DW$71	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_flush"), DW_AT_symbol_name("_fn_flush")
	.dwattr DW$71, DW_AT_type(*DW$T$10)
	.dwattr DW$71, DW_AT_declaration(0x01)
	.dwattr DW$71, DW_AT_external(0x01)
DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$73	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$119)
	.dwendtag DW$71


DW$74	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_open"), DW_AT_symbol_name("_fn_open")
	.dwattr DW$74, DW_AT_type(*DW$T$119)
	.dwattr DW$74, DW_AT_declaration(0x01)
	.dwattr DW$74, DW_AT_external(0x01)
DW$75	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$76	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
DW$77	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
	.dwendtag DW$74


DW$78	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_truncate"), DW_AT_symbol_name("_fn_truncate")
	.dwattr DW$78, DW_AT_type(*DW$T$119)
	.dwattr DW$78, DW_AT_declaration(0x01)
	.dwattr DW$78, DW_AT_external(0x01)
DW$79	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$78


DW$82	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_read"), DW_AT_symbol_name("_fn_read")
	.dwattr DW$82, DW_AT_type(*DW$T$12)
	.dwattr DW$82, DW_AT_declaration(0x01)
	.dwattr DW$82, DW_AT_external(0x01)
DW$83	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$84	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$85	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$86	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$87	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$119)
	.dwendtag DW$82


DW$88	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_write"), DW_AT_symbol_name("_fn_write")
	.dwattr DW$88, DW_AT_type(*DW$T$12)
	.dwattr DW$88, DW_AT_declaration(0x01)
	.dwattr DW$88, DW_AT_external(0x01)
DW$89	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$90	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$60)
DW$91	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$92	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$93	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$119)
	.dwendtag DW$88


DW$94	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_seek"), DW_AT_symbol_name("_fn_seek")
	.dwattr DW$94, DW_AT_type(*DW$T$10)
	.dwattr DW$94, DW_AT_declaration(0x01)
	.dwattr DW$94, DW_AT_external(0x01)
DW$95	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$96	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$119)
DW$97	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$98	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$94


DW$99	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_seteof"), DW_AT_symbol_name("_fn_seteof")
	.dwattr DW$99, DW_AT_type(*DW$T$10)
	.dwattr DW$99, DW_AT_declaration(0x01)
	.dwattr DW$99, DW_AT_external(0x01)
DW$100	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$101	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$119)
	.dwendtag DW$99


DW$102	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_tell"), DW_AT_symbol_name("_fn_tell")
	.dwattr DW$102, DW_AT_type(*DW$T$12)
	.dwattr DW$102, DW_AT_declaration(0x01)
	.dwattr DW$102, DW_AT_external(0x01)
DW$103	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$119)
	.dwendtag DW$102


DW$104	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_getc"), DW_AT_symbol_name("_fn_getc")
	.dwattr DW$104, DW_AT_type(*DW$T$10)
	.dwattr DW$104, DW_AT_declaration(0x01)
	.dwattr DW$104, DW_AT_external(0x01)
DW$105	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$106	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$119)
	.dwendtag DW$104


DW$107	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_putc"), DW_AT_symbol_name("_fn_putc")
	.dwattr DW$107, DW_AT_type(*DW$T$10)
	.dwattr DW$107, DW_AT_declaration(0x01)
	.dwattr DW$107, DW_AT_external(0x01)
DW$108	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$109	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$110	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$119)
	.dwendtag DW$107


DW$111	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_rewind"), DW_AT_symbol_name("_fn_rewind")
	.dwattr DW$111, DW_AT_type(*DW$T$10)
	.dwattr DW$111, DW_AT_declaration(0x01)
	.dwattr DW$111, DW_AT_external(0x01)
DW$112	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$113	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$119)
	.dwendtag DW$111


DW$114	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_eof"), DW_AT_symbol_name("_fn_eof")
	.dwattr DW$114, DW_AT_type(*DW$T$10)
	.dwattr DW$114, DW_AT_declaration(0x01)
	.dwattr DW$114, DW_AT_external(0x01)
DW$115	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$119)
	.dwendtag DW$114


DW$116	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_gettimedate"), DW_AT_symbol_name("_fn_gettimedate")
	.dwattr DW$116, DW_AT_type(*DW$T$10)
	.dwattr DW$116, DW_AT_declaration(0x01)
	.dwattr DW$116, DW_AT_external(0x01)
DW$117	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$118	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
DW$119	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
DW$120	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
	.dwendtag DW$116


DW$121	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_settimedate"), DW_AT_symbol_name("_fn_settimedate")
	.dwattr DW$121, DW_AT_type(*DW$T$10)
	.dwattr DW$121, DW_AT_declaration(0x01)
	.dwattr DW$121, DW_AT_external(0x01)
DW$122	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$123	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
DW$124	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$9)
DW$125	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$9)
	.dwendtag DW$121


DW$126	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_delete"), DW_AT_symbol_name("_fn_delete")
	.dwattr DW$126, DW_AT_type(*DW$T$10)
	.dwattr DW$126, DW_AT_declaration(0x01)
	.dwattr DW$126, DW_AT_external(0x01)
DW$127	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$128	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
	.dwendtag DW$126


DW$129	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_getattr"), DW_AT_symbol_name("_fn_getattr")
	.dwattr DW$129, DW_AT_type(*DW$T$10)
	.dwattr DW$129, DW_AT_declaration(0x01)
	.dwattr DW$129, DW_AT_external(0x01)
DW$130	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$131	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
DW$132	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$66)
	.dwendtag DW$129


DW$133	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_setattr"), DW_AT_symbol_name("_fn_setattr")
	.dwattr DW$133, DW_AT_type(*DW$T$10)
	.dwattr DW$133, DW_AT_declaration(0x01)
	.dwattr DW$133, DW_AT_external(0x01)
DW$134	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$135	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
DW$136	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$6)
	.dwendtag DW$133


DW$137	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_getlabel"), DW_AT_symbol_name("_fn_getlabel")
	.dwattr DW$137, DW_AT_type(*DW$T$10)
	.dwattr DW$137, DW_AT_declaration(0x01)
	.dwattr DW$137, DW_AT_external(0x01)
DW$138	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$139	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$140	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$95)
DW$141	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$137


DW$142	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_setlabel"), DW_AT_symbol_name("_fn_setlabel")
	.dwattr DW$142, DW_AT_type(*DW$T$10)
	.dwattr DW$142, DW_AT_declaration(0x01)
	.dwattr DW$142, DW_AT_external(0x01)
DW$143	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$144	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$145	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
	.dwendtag DW$142


DW$146	.dwtag  DW_TAG_subprogram, DW_AT_name("fn_get_oem"), DW_AT_symbol_name("_fn_get_oem")
	.dwattr DW$146, DW_AT_type(*DW$T$10)
	.dwattr DW$146, DW_AT_declaration(0x01)
	.dwattr DW$146, DW_AT_external(0x01)
DW$147	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$148	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$149	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$95)
DW$150	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$146


DW$151	.dwtag  DW_TAG_subprogram, DW_AT_name("_f_mutex_put"), DW_AT_symbol_name("__f_mutex_put")
	.dwattr DW$151, DW_AT_declaration(0x01)
	.dwattr DW$151, DW_AT_external(0x01)
DW$152	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
	.dwendtag DW$151


DW$153	.dwtag  DW_TAG_subprogram, DW_AT_name("fnSetTask"), DW_AT_symbol_name("_fnSetTask")
	.dwattr DW$153, DW_AT_type(*DW$T$10)
	.dwattr DW$153, DW_AT_declaration(0x01)
	.dwattr DW$153, DW_AT_external(0x01)
DW$154	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$140)
	.dwendtag DW$153

DW$155	.dwtag  DW_TAG_variable, DW_AT_name("g_multi"), DW_AT_symbol_name("_g_multi")
	.dwattr DW$155, DW_AT_type(*DW$T$182)
	.dwattr DW$155, DW_AT_declaration(0x01)
	.dwattr DW$155, DW_AT_external(0x01)
;	C:\CCStudio_v3.3\C2000\cgtools\bin\opt2000.exe C:\Users\Andrew\AppData\Local\Temp\TI0482 C:\Users\Andrew\AppData\Local\Temp\TI0484 
;	C:\CCStudio_v3.3\C2000\cgtools\bin\ac2000.exe -q -D_INLINE -DLARGE_MODEL -IC:/CCStudio_v3.3/C2000/xdais/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/bios/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/rtdx/include/c2000 -IC:/CCStudio_v3.3/C2000/cgtools/include --version=28 --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\Andrew\AppData\Local\Temp\TI0482 --template_info_file C:\Users\Andrew\AppData\Local\Temp\TI0486 --object_file 
	.sect	".text"
	.global	_fm_getversion

DW$156	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_getversion"), DW_AT_symbol_name("_fm_getversion")
	.dwattr DW$156, DW_AT_low_pc(_fm_getversion)
	.dwattr DW$156, DW_AT_high_pc(0x00)
	.dwattr DW$156, DW_AT_begin_file("fat_m.c")
	.dwattr DW$156, DW_AT_begin_line(0x31)
	.dwattr DW$156, DW_AT_begin_column(0x07)
	.dwattr DW$156, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$156, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",49,27

;***************************************************************
;* FNAME: _fm_getversion                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_fm_getversion:
        LCR       #_fn_getversion       ; |50| 
        ; call occurs [#_fn_getversion] ; |50| 
	.dwpsn	"fat_m.c",51,1
        LRETR
        ; return occurs
	.dwattr DW$156, DW_AT_end_file("fat_m.c")
	.dwattr DW$156, DW_AT_end_line(0x33)
	.dwattr DW$156, DW_AT_end_column(0x01)
	.dwendtag DW$156

	.sect	".text"
	.global	_fm_initvolume

DW$157	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_initvolume"), DW_AT_symbol_name("_fm_initvolume")
	.dwattr DW$157, DW_AT_low_pc(_fm_initvolume)
	.dwattr DW$157, DW_AT_high_pc(0x00)
	.dwattr DW$157, DW_AT_begin_file("fat_m.c")
	.dwattr DW$157, DW_AT_begin_line(0x48)
	.dwattr DW$157, DW_AT_begin_column(0x05)
	.dwattr DW$157, DW_AT_frame_base[DW_OP_breg20 -12]
	.dwattr DW$157, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",72,66

;***************************************************************
;* FNAME: _fm_initvolume                FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  2 Auto,  6 SOE     *
;***************************************************************

_fm_initvolume:
;* AL    assigned to _drvnumber
DW$158	.dwtag  DW_TAG_formal_parameter, DW_AT_name("drvnumber"), DW_AT_symbol_name("_drvnumber")
	.dwattr DW$158, DW_AT_type(*DW$T$10)
	.dwattr DW$158, DW_AT_location[DW_OP_reg0]
;* AR4   assigned to _pfunc
DW$159	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pfunc"), DW_AT_symbol_name("_pfunc")
	.dwattr DW$159, DW_AT_type(*DW$T$80)
	.dwattr DW$159, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _user_ptr
DW$160	.dwtag  DW_TAG_formal_parameter, DW_AT_name("user_ptr"), DW_AT_symbol_name("_user_ptr")
	.dwattr DW$160, DW_AT_type(*DW$T$3)
	.dwattr DW$160, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      XAR1,XAR5             ; |72| 
        MOVL      *SP++,XAR3
        MOVL      XAR2,XAR4             ; |72| 
        MOVB      XAR5,#0
        MOVZ      AR3,AL                ; |72| 
        ADDB      SP,#4
        MOVL      XAR4,#_g_multi        ; |76| 
        MOVB      ACC,#26
        LCR       #_memset              ; |76| 
        ; call occurs [#_memset] ; |76| 
        MOVZ      AR4,SP                ; |78| 
        SUBB      XAR4,#4               ; |78| 
        LCR       #_fnSetTask           ; |78| 
        ; call occurs [#_fnSetTask] ; |78| 
        CMPB      AL,#0                 ; |78| 
        BF        L1,EQ                 ; |78| 
        ; branchcc occurs ; |78| 
        MOVB      AL,#22                ; |78| 
        BF        L2,UNC                ; |78| 
        ; branch occurs ; |78| 
L1:    
        MOVL      *-SP[2],XAR1          ; |79| 
        MOVL      XAR5,XAR2             ; |79| 
        MOVL      XAR4,*-SP[4]          ; |79| 
        MOV       AL,AR3                ; |79| 
        LCR       #_fn_initvolume       ; |79| 
        ; call occurs [#_fn_initvolume] ; |79| 
        MOVL      XAR4,*-SP[4]          ; |81| 
        MOVZ      AR1,AL                ; |79| 
        LCR       #__f_mutex_put        ; |81| 
        ; call occurs [#__f_mutex_put] ; |81| 
        MOV       AL,AR1                ; |82| 
L2:    
        SUBB      SP,#4                 ; |82| 
        MOVL      XAR3,*--SP            ; |82| 
        MOVL      XAR2,*--SP            ; |82| 
        MOVL      XAR1,*--SP            ; |82| 
	.dwpsn	"fat_m.c",83,1
        LRETR
        ; return occurs
	.dwattr DW$157, DW_AT_end_file("fat_m.c")
	.dwattr DW$157, DW_AT_end_line(0x53)
	.dwattr DW$157, DW_AT_end_column(0x01)
	.dwendtag DW$157

	.sect	".text"
	.global	_fm_checkvolume

DW$161	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_checkvolume"), DW_AT_symbol_name("_fm_checkvolume")
	.dwattr DW$161, DW_AT_low_pc(_fm_checkvolume)
	.dwattr DW$161, DW_AT_high_pc(0x00)
	.dwattr DW$161, DW_AT_begin_file("fat_m.c")
	.dwattr DW$161, DW_AT_begin_line(0x5d)
	.dwattr DW$161, DW_AT_begin_column(0x05)
	.dwattr DW$161, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$161, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",94,1

;***************************************************************
;* FNAME: _fm_checkvolume               FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  2 SOE     *
;***************************************************************

_fm_checkvolume:
;* AL    assigned to _drvnumber
DW$162	.dwtag  DW_TAG_formal_parameter, DW_AT_name("drvnumber"), DW_AT_symbol_name("_drvnumber")
	.dwattr DW$162, DW_AT_type(*DW$T$10)
	.dwattr DW$162, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        ADDB      SP,#2
        MOVZ      AR4,SP                ; |98| 
        MOVZ      AR1,AL                ; |94| 
        SUBB      XAR4,#2               ; |98| 
        LCR       #_fnSetTask           ; |98| 
        ; call occurs [#_fnSetTask] ; |98| 
        CMPB      AL,#0                 ; |98| 
        BF        L3,EQ                 ; |98| 
        ; branchcc occurs ; |98| 
        MOVB      AL,#22                ; |98| 
        BF        L4,UNC                ; |98| 
        ; branch occurs ; |98| 
L3:    
        MOVL      XAR4,*-SP[2]          ; |100| 
        MOV       AL,AR1                ; |100| 
        LCR       #_fn_checkvolume      ; |100| 
        ; call occurs [#_fn_checkvolume] ; |100| 
        MOVL      XAR4,*-SP[2]          ; |102| 
        MOVZ      AR1,AL                ; |100| 
        LCR       #__f_mutex_put        ; |102| 
        ; call occurs [#__f_mutex_put] ; |102| 
        MOV       AL,AR1                ; |103| 
L4:    
        SUBB      SP,#2                 ; |103| 
        MOVL      XAR1,*--SP            ; |103| 
	.dwpsn	"fat_m.c",104,1
        LRETR
        ; return occurs
	.dwattr DW$161, DW_AT_end_file("fat_m.c")
	.dwattr DW$161, DW_AT_end_line(0x68)
	.dwattr DW$161, DW_AT_end_column(0x01)
	.dwendtag DW$161

	.sect	".text"
	.global	_fm_delvolume

DW$163	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_delvolume"), DW_AT_symbol_name("_fm_delvolume")
	.dwattr DW$163, DW_AT_low_pc(_fm_delvolume)
	.dwattr DW$163, DW_AT_high_pc(0x00)
	.dwattr DW$163, DW_AT_begin_file("fat_m.c")
	.dwattr DW$163, DW_AT_begin_line(0x71)
	.dwattr DW$163, DW_AT_begin_column(0x05)
	.dwattr DW$163, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$163, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",114,1

;***************************************************************
;* FNAME: _fm_delvolume                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_fm_delvolume:
;* AL    assigned to _drvnumber
DW$164	.dwtag  DW_TAG_formal_parameter, DW_AT_name("drvnumber"), DW_AT_symbol_name("_drvnumber")
	.dwattr DW$164, DW_AT_type(*DW$T$10)
	.dwattr DW$164, DW_AT_location[DW_OP_reg0]
        LCR       #_fn_delvolume        ; |116| 
        ; call occurs [#_fn_delvolume] ; |116| 
	.dwpsn	"fat_m.c",118,1
        LRETR
        ; return occurs
	.dwattr DW$163, DW_AT_end_file("fat_m.c")
	.dwattr DW$163, DW_AT_end_line(0x76)
	.dwattr DW$163, DW_AT_end_column(0x01)
	.dwendtag DW$163

	.sect	".text"
	.global	_fm_get_volume_count

DW$165	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_get_volume_count"), DW_AT_symbol_name("_fm_get_volume_count")
	.dwattr DW$165, DW_AT_low_pc(_fm_get_volume_count)
	.dwattr DW$165, DW_AT_high_pc(0x00)
	.dwattr DW$165, DW_AT_begin_file("fat_m.c")
	.dwattr DW$165, DW_AT_begin_line(0x7c)
	.dwattr DW$165, DW_AT_begin_column(0x05)
	.dwattr DW$165, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$165, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",125,1

;***************************************************************
;* FNAME: _fm_get_volume_count          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_fm_get_volume_count:
        LCR       #_fn_get_volume_count ; |127| 
        ; call occurs [#_fn_get_volume_count] ; |127| 
	.dwpsn	"fat_m.c",129,1
        LRETR
        ; return occurs
	.dwattr DW$165, DW_AT_end_file("fat_m.c")
	.dwattr DW$165, DW_AT_end_line(0x81)
	.dwattr DW$165, DW_AT_end_column(0x01)
	.dwendtag DW$165

	.sect	".text"
	.global	_fm_get_volume_list

DW$166	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_get_volume_list"), DW_AT_symbol_name("_fm_get_volume_list")
	.dwattr DW$166, DW_AT_low_pc(_fm_get_volume_list)
	.dwattr DW$166, DW_AT_high_pc(0x00)
	.dwattr DW$166, DW_AT_begin_file("fat_m.c")
	.dwattr DW$166, DW_AT_begin_line(0x86)
	.dwattr DW$166, DW_AT_begin_column(0x05)
	.dwattr DW$166, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$166, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",135,1

;***************************************************************
;* FNAME: _fm_get_volume_list           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_fm_get_volume_list:
;* AR4   assigned to _buf
DW$167	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$167, DW_AT_type(*DW$T$72)
	.dwattr DW$167, DW_AT_location[DW_OP_reg12]
        LCR       #_fn_get_volume_list  ; |137| 
        ; call occurs [#_fn_get_volume_list] ; |137| 
	.dwpsn	"fat_m.c",139,1
        LRETR
        ; return occurs
	.dwattr DW$166, DW_AT_end_file("fat_m.c")
	.dwattr DW$166, DW_AT_end_line(0x8b)
	.dwattr DW$166, DW_AT_end_column(0x01)
	.dwendtag DW$166

	.sect	".text"
	.global	_fm_hardformat

DW$168	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_hardformat"), DW_AT_symbol_name("_fm_hardformat")
	.dwattr DW$168, DW_AT_low_pc(_fm_hardformat)
	.dwattr DW$168, DW_AT_high_pc(0x00)
	.dwattr DW$168, DW_AT_begin_file("fat_m.c")
	.dwattr DW$168, DW_AT_begin_line(0x9f)
	.dwattr DW$168, DW_AT_begin_column(0x05)
	.dwattr DW$168, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$168, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",159,46

;***************************************************************
;* FNAME: _fm_hardformat                FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  4 SOE     *
;***************************************************************

_fm_hardformat:
;* AR4   assigned to _drivenum
DW$169	.dwtag  DW_TAG_formal_parameter, DW_AT_name("drivenum"), DW_AT_symbol_name("_drivenum")
	.dwattr DW$169, DW_AT_type(*DW$T$10)
	.dwattr DW$169, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _fattype
DW$170	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fattype"), DW_AT_symbol_name("_fattype")
	.dwattr DW$170, DW_AT_type(*DW$T$12)
	.dwattr DW$170, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVZ      AR1,AR4               ; |159| 
        MOVL      *SP++,XAR2
        ADDB      SP,#2
        MOVZ      AR4,SP                ; |163| 
        MOVL      XAR2,ACC              ; |159| 
        SUBB      XAR4,#2               ; |163| 
        LCR       #_fnSetTask           ; |163| 
        ; call occurs [#_fnSetTask] ; |163| 
        CMPB      AL,#0                 ; |163| 
        BF        L5,EQ                 ; |163| 
        ; branchcc occurs ; |163| 
        MOVB      AL,#22                ; |163| 
        BF        L6,UNC                ; |163| 
        ; branch occurs ; |163| 
L5:    
        MOVL      XAR4,*-SP[2]          ; |165| 
        MOVZ      AR5,AR1               ; |165| 
        MOVL      ACC,XAR2              ; |165| 
        LCR       #_fn_hardformat       ; |165| 
        ; call occurs [#_fn_hardformat] ; |165| 
        MOVL      XAR4,*-SP[2]          ; |167| 
        MOVZ      AR1,AL                ; |165| 
        LCR       #__f_mutex_put        ; |167| 
        ; call occurs [#__f_mutex_put] ; |167| 
        MOV       AL,AR1                ; |169| 
L6:    
        SUBB      SP,#2                 ; |169| 
        MOVL      XAR2,*--SP            ; |169| 
        MOVL      XAR1,*--SP            ; |169| 
	.dwpsn	"fat_m.c",170,1
        LRETR
        ; return occurs
	.dwattr DW$168, DW_AT_end_file("fat_m.c")
	.dwattr DW$168, DW_AT_end_line(0xaa)
	.dwattr DW$168, DW_AT_end_column(0x01)
	.dwendtag DW$168

	.sect	".text"
	.global	_fm_format

DW$171	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_format"), DW_AT_symbol_name("_fm_format")
	.dwattr DW$171, DW_AT_low_pc(_fm_format)
	.dwattr DW$171, DW_AT_high_pc(0x00)
	.dwattr DW$171, DW_AT_begin_file("fat_m.c")
	.dwattr DW$171, DW_AT_begin_line(0xbe)
	.dwattr DW$171, DW_AT_begin_column(0x05)
	.dwattr DW$171, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$171, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",190,42

;***************************************************************
;* FNAME: _fm_format                    FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  4 SOE     *
;***************************************************************

_fm_format:
;* AR4   assigned to _drivenum
DW$172	.dwtag  DW_TAG_formal_parameter, DW_AT_name("drivenum"), DW_AT_symbol_name("_drivenum")
	.dwattr DW$172, DW_AT_type(*DW$T$10)
	.dwattr DW$172, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _fattype
DW$173	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fattype"), DW_AT_symbol_name("_fattype")
	.dwattr DW$173, DW_AT_type(*DW$T$12)
	.dwattr DW$173, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVZ      AR1,AR4               ; |190| 
        MOVL      *SP++,XAR2
        ADDB      SP,#2
        MOVZ      AR4,SP                ; |194| 
        MOVL      XAR2,ACC              ; |190| 
        SUBB      XAR4,#2               ; |194| 
        LCR       #_fnSetTask           ; |194| 
        ; call occurs [#_fnSetTask] ; |194| 
        CMPB      AL,#0                 ; |194| 
        BF        L7,EQ                 ; |194| 
        ; branchcc occurs ; |194| 
        MOVB      AL,#22                ; |194| 
        BF        L8,UNC                ; |194| 
        ; branch occurs ; |194| 
L7:    
        MOVL      XAR4,*-SP[2]          ; |196| 
        MOVZ      AR5,AR1               ; |196| 
        MOVL      ACC,XAR2              ; |196| 
        LCR       #_fn_format           ; |196| 
        ; call occurs [#_fn_format] ; |196| 
        MOVL      XAR4,*-SP[2]          ; |198| 
        MOVZ      AR1,AL                ; |196| 
        LCR       #__f_mutex_put        ; |198| 
        ; call occurs [#__f_mutex_put] ; |198| 
        MOV       AL,AR1                ; |200| 
L8:    
        SUBB      SP,#2                 ; |200| 
        MOVL      XAR2,*--SP            ; |200| 
        MOVL      XAR1,*--SP            ; |200| 
	.dwpsn	"fat_m.c",201,1
        LRETR
        ; return occurs
	.dwattr DW$171, DW_AT_end_file("fat_m.c")
	.dwattr DW$171, DW_AT_end_line(0xc9)
	.dwattr DW$171, DW_AT_end_column(0x01)
	.dwendtag DW$171

	.sect	".text"
	.global	_fm_getcwd

DW$174	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_getcwd"), DW_AT_symbol_name("_fm_getcwd")
	.dwattr DW$174, DW_AT_low_pc(_fm_getcwd)
	.dwattr DW$174, DW_AT_high_pc(0x00)
	.dwattr DW$174, DW_AT_begin_file("fat_m.c")
	.dwattr DW$174, DW_AT_begin_line(0xdc)
	.dwattr DW$174, DW_AT_begin_column(0x05)
	.dwattr DW$174, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$174, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",220,42

;***************************************************************
;* FNAME: _fm_getcwd                    FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  4 SOE     *
;***************************************************************

_fm_getcwd:
;* AR4   assigned to _buffer
DW$175	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buffer"), DW_AT_symbol_name("_buffer")
	.dwattr DW$175, DW_AT_type(*DW$T$95)
	.dwattr DW$175, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _maxlen
DW$176	.dwtag  DW_TAG_formal_parameter, DW_AT_name("maxlen"), DW_AT_symbol_name("_maxlen")
	.dwattr DW$176, DW_AT_type(*DW$T$10)
	.dwattr DW$176, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        ADDB      SP,#2
        MOVL      XAR2,XAR4             ; |220| 
        MOVZ      AR4,SP                ; |224| 
        MOVZ      AR1,AL                ; |220| 
        SUBB      XAR4,#2               ; |224| 
        LCR       #_fnSetTask           ; |224| 
        ; call occurs [#_fnSetTask] ; |224| 
        CMPB      AL,#0                 ; |224| 
        BF        L9,EQ                 ; |224| 
        ; branchcc occurs ; |224| 
        MOVB      AL,#22                ; |224| 
        BF        L10,UNC               ; |224| 
        ; branch occurs ; |224| 
L9:    
        MOVL      XAR4,*-SP[2]          ; |226| 
        MOVL      XAR5,XAR2             ; |226| 
        MOV       AL,AR1                ; |226| 
        LCR       #_fn_getcwd           ; |226| 
        ; call occurs [#_fn_getcwd] ; |226| 
        MOVL      XAR4,*-SP[2]          ; |228| 
        MOVZ      AR1,AL                ; |226| 
        LCR       #__f_mutex_put        ; |228| 
        ; call occurs [#__f_mutex_put] ; |228| 
        MOV       AL,AR1                ; |230| 
L10:    
        SUBB      SP,#2                 ; |230| 
        MOVL      XAR2,*--SP            ; |230| 
        MOVL      XAR1,*--SP            ; |230| 
	.dwpsn	"fat_m.c",231,1
        LRETR
        ; return occurs
	.dwattr DW$174, DW_AT_end_file("fat_m.c")
	.dwattr DW$174, DW_AT_end_line(0xe7)
	.dwattr DW$174, DW_AT_end_column(0x01)
	.dwendtag DW$174

	.sect	".text"
	.global	_fm_getdcwd

DW$177	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_getdcwd"), DW_AT_symbol_name("_fm_getdcwd")
	.dwattr DW$177, DW_AT_low_pc(_fm_getdcwd)
	.dwattr DW$177, DW_AT_high_pc(0x00)
	.dwattr DW$177, DW_AT_begin_file("fat_m.c")
	.dwattr DW$177, DW_AT_begin_line(0x10b)
	.dwattr DW$177, DW_AT_begin_column(0x05)
	.dwattr DW$177, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$177, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",267,57

;***************************************************************
;* FNAME: _fm_getdcwd                   FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  6 SOE     *
;***************************************************************

_fm_getdcwd:
;* AL    assigned to _drivenum
DW$178	.dwtag  DW_TAG_formal_parameter, DW_AT_name("drivenum"), DW_AT_symbol_name("_drivenum")
	.dwattr DW$178, DW_AT_type(*DW$T$10)
	.dwattr DW$178, DW_AT_location[DW_OP_reg0]
;* AR4   assigned to _buffer
DW$179	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buffer"), DW_AT_symbol_name("_buffer")
	.dwattr DW$179, DW_AT_type(*DW$T$95)
	.dwattr DW$179, DW_AT_location[DW_OP_reg12]
;* AH    assigned to _maxlen
DW$180	.dwtag  DW_TAG_formal_parameter, DW_AT_name("maxlen"), DW_AT_symbol_name("_maxlen")
	.dwattr DW$180, DW_AT_type(*DW$T$10)
	.dwattr DW$180, DW_AT_location[DW_OP_reg1]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOVL      XAR2,XAR4             ; |267| 
        ADDB      SP,#2
        MOVZ      AR4,SP                ; |271| 
        MOVZ      AR1,AH                ; |267| 
        MOVZ      AR3,AL                ; |267| 
        SUBB      XAR4,#2               ; |271| 
        LCR       #_fnSetTask           ; |271| 
        ; call occurs [#_fnSetTask] ; |271| 
        CMPB      AL,#0                 ; |271| 
        BF        L11,EQ                ; |271| 
        ; branchcc occurs ; |271| 
        MOVB      AL,#22                ; |271| 
        BF        L12,UNC               ; |271| 
        ; branch occurs ; |271| 
L11:    
        MOVL      XAR4,*-SP[2]          ; |273| 
        MOVL      XAR5,XAR2             ; |273| 
        MOV       AL,AR3                ; |273| 
        MOV       AH,AR1                ; |273| 
        LCR       #_fn_getdcwd          ; |273| 
        ; call occurs [#_fn_getdcwd] ; |273| 
        MOVL      XAR4,*-SP[2]          ; |275| 
        MOVZ      AR1,AL                ; |273| 
        LCR       #__f_mutex_put        ; |275| 
        ; call occurs [#__f_mutex_put] ; |275| 
        MOV       AL,AR1                ; |277| 
L12:    
        SUBB      SP,#2                 ; |277| 
        MOVL      XAR3,*--SP            ; |277| 
        MOVL      XAR2,*--SP            ; |277| 
        MOVL      XAR1,*--SP            ; |277| 
	.dwpsn	"fat_m.c",278,1
        LRETR
        ; return occurs
	.dwattr DW$177, DW_AT_end_file("fat_m.c")
	.dwattr DW$177, DW_AT_end_line(0x116)
	.dwattr DW$177, DW_AT_end_column(0x01)
	.dwendtag DW$177

	.sect	".text"
	.global	_fm_chdrive

DW$181	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_chdrive"), DW_AT_symbol_name("_fm_chdrive")
	.dwattr DW$181, DW_AT_low_pc(_fm_chdrive)
	.dwattr DW$181, DW_AT_high_pc(0x00)
	.dwattr DW$181, DW_AT_begin_file("fat_m.c")
	.dwattr DW$181, DW_AT_begin_line(0x139)
	.dwattr DW$181, DW_AT_begin_column(0x05)
	.dwattr DW$181, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$181, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",313,30

;***************************************************************
;* FNAME: _fm_chdrive                   FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  2 SOE     *
;***************************************************************

_fm_chdrive:
;* AL    assigned to _drivenum
DW$182	.dwtag  DW_TAG_formal_parameter, DW_AT_name("drivenum"), DW_AT_symbol_name("_drivenum")
	.dwattr DW$182, DW_AT_type(*DW$T$10)
	.dwattr DW$182, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        ADDB      SP,#2
        MOVZ      AR4,SP                ; |317| 
        MOVZ      AR1,AL                ; |313| 
        SUBB      XAR4,#2               ; |317| 
        LCR       #_fnSetTask           ; |317| 
        ; call occurs [#_fnSetTask] ; |317| 
        CMPB      AL,#0                 ; |317| 
        BF        L13,EQ                ; |317| 
        ; branchcc occurs ; |317| 
        MOVB      AL,#22                ; |317| 
        BF        L14,UNC               ; |317| 
        ; branch occurs ; |317| 
L13:    
        MOVL      XAR4,*-SP[2]          ; |319| 
        MOV       AL,AR1                ; |319| 
        LCR       #_fn_chdrive          ; |319| 
        ; call occurs [#_fn_chdrive] ; |319| 
        MOVL      XAR4,*-SP[2]          ; |321| 
        MOVZ      AR1,AL                ; |319| 
        LCR       #__f_mutex_put        ; |321| 
        ; call occurs [#__f_mutex_put] ; |321| 
        MOV       AL,AR1                ; |323| 
L14:    
        SUBB      SP,#2                 ; |323| 
        MOVL      XAR1,*--SP            ; |323| 
	.dwpsn	"fat_m.c",324,1
        LRETR
        ; return occurs
	.dwattr DW$181, DW_AT_end_file("fat_m.c")
	.dwattr DW$181, DW_AT_end_line(0x144)
	.dwattr DW$181, DW_AT_end_column(0x01)
	.dwendtag DW$181

	.sect	".text"
	.global	_fm_getdrive

DW$183	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_getdrive"), DW_AT_symbol_name("_fm_getdrive")
	.dwattr DW$183, DW_AT_low_pc(_fm_getdrive)
	.dwattr DW$183, DW_AT_high_pc(0x00)
	.dwattr DW$183, DW_AT_begin_file("fat_m.c")
	.dwattr DW$183, DW_AT_begin_line(0x152)
	.dwattr DW$183, DW_AT_begin_column(0x05)
	.dwattr DW$183, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$183, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",338,23

;***************************************************************
;* FNAME: _fm_getdrive                  FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  2 SOE     *
;***************************************************************

_fm_getdrive:
        MOVL      *SP++,XAR1
        ADDB      SP,#2
        MOVZ      AR4,SP                ; |342| 
        SUBB      XAR4,#2               ; |342| 
        LCR       #_fnSetTask           ; |342| 
        ; call occurs [#_fnSetTask] ; |342| 
        CMPB      AL,#0                 ; |342| 
        BF        L15,EQ                ; |342| 
        ; branchcc occurs ; |342| 
        MOV       AL,#-1                ; |342| 
        BF        L16,UNC               ; |342| 
        ; branch occurs ; |342| 
L15:    
        MOVL      XAR4,*-SP[2]          ; |344| 
        LCR       #_fn_getdrive         ; |344| 
        ; call occurs [#_fn_getdrive] ; |344| 
        MOVL      XAR4,*-SP[2]          ; |346| 
        MOVZ      AR1,AL                ; |344| 
        LCR       #__f_mutex_put        ; |346| 
        ; call occurs [#__f_mutex_put] ; |346| 
        MOV       AL,AR1                ; |348| 
L16:    
        SUBB      SP,#2                 ; |348| 
        MOVL      XAR1,*--SP            ; |348| 
	.dwpsn	"fat_m.c",349,1
        LRETR
        ; return occurs
	.dwattr DW$183, DW_AT_end_file("fat_m.c")
	.dwattr DW$183, DW_AT_end_line(0x15d)
	.dwattr DW$183, DW_AT_end_column(0x01)
	.dwendtag DW$183

	.sect	".text"
	.global	_fm_getfreespace

DW$184	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_getfreespace"), DW_AT_symbol_name("_fm_getfreespace")
	.dwattr DW$184, DW_AT_low_pc(_fm_getfreespace)
	.dwattr DW$184, DW_AT_high_pc(0x00)
	.dwattr DW$184, DW_AT_begin_file("fat_m.c")
	.dwattr DW$184, DW_AT_begin_line(0x16f)
	.dwattr DW$184, DW_AT_begin_column(0x05)
	.dwattr DW$184, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$184, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",367,51

;***************************************************************
;* FNAME: _fm_getfreespace              FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  4 SOE     *
;***************************************************************

_fm_getfreespace:
;* AL    assigned to _drivenum
DW$185	.dwtag  DW_TAG_formal_parameter, DW_AT_name("drivenum"), DW_AT_symbol_name("_drivenum")
	.dwattr DW$185, DW_AT_type(*DW$T$10)
	.dwattr DW$185, DW_AT_location[DW_OP_reg0]
;* AR4   assigned to _pspace
DW$186	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pspace"), DW_AT_symbol_name("_pspace")
	.dwattr DW$186, DW_AT_type(*DW$T$103)
	.dwattr DW$186, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        ADDB      SP,#2
        MOVL      XAR2,XAR4             ; |367| 
        MOVZ      AR4,SP                ; |371| 
        MOVZ      AR1,AL                ; |367| 
        SUBB      XAR4,#2               ; |371| 
        LCR       #_fnSetTask           ; |371| 
        ; call occurs [#_fnSetTask] ; |371| 
        CMPB      AL,#0                 ; |371| 
        BF        L17,EQ                ; |371| 
        ; branchcc occurs ; |371| 
        MOVB      AL,#22                ; |371| 
        BF        L18,UNC               ; |371| 
        ; branch occurs ; |371| 
L17:    
        MOVL      XAR4,*-SP[2]          ; |373| 
        MOVL      XAR5,XAR2             ; |373| 
        MOV       AL,AR1                ; |373| 
        LCR       #_fn_getfreespace     ; |373| 
        ; call occurs [#_fn_getfreespace] ; |373| 
        MOVL      XAR4,*-SP[2]          ; |375| 
        MOVZ      AR1,AL                ; |373| 
        LCR       #__f_mutex_put        ; |375| 
        ; call occurs [#__f_mutex_put] ; |375| 
        MOV       AL,AR1                ; |377| 
L18:    
        SUBB      SP,#2                 ; |377| 
        MOVL      XAR2,*--SP            ; |377| 
        MOVL      XAR1,*--SP            ; |377| 
	.dwpsn	"fat_m.c",378,1
        LRETR
        ; return occurs
	.dwattr DW$184, DW_AT_end_file("fat_m.c")
	.dwattr DW$184, DW_AT_end_line(0x17a)
	.dwattr DW$184, DW_AT_end_column(0x01)
	.dwendtag DW$184

	.sect	".text"
	.global	_fm_chdir

DW$187	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_chdir"), DW_AT_symbol_name("_fm_chdir")
	.dwattr DW$187, DW_AT_low_pc(_fm_chdir)
	.dwattr DW$187, DW_AT_high_pc(0x00)
	.dwattr DW$187, DW_AT_begin_file("fat_m.c")
	.dwattr DW$187, DW_AT_begin_line(0x18d)
	.dwattr DW$187, DW_AT_begin_column(0x05)
	.dwattr DW$187, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$187, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",397,35

;***************************************************************
;* FNAME: _fm_chdir                     FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  2 SOE     *
;***************************************************************

_fm_chdir:
;* AR4   assigned to _dirname
DW$188	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dirname"), DW_AT_symbol_name("_dirname")
	.dwattr DW$188, DW_AT_type(*DW$T$107)
	.dwattr DW$188, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        ADDB      SP,#2
        MOVL      XAR1,XAR4             ; |397| 
        MOVZ      AR4,SP                ; |401| 
        SUBB      XAR4,#2               ; |401| 
        LCR       #_fnSetTask           ; |401| 
        ; call occurs [#_fnSetTask] ; |401| 
        CMPB      AL,#0                 ; |401| 
        BF        L19,EQ                ; |401| 
        ; branchcc occurs ; |401| 
        MOVB      AL,#22                ; |401| 
        BF        L20,UNC               ; |401| 
        ; branch occurs ; |401| 
L19:    
        MOVL      XAR4,*-SP[2]          ; |403| 
        MOVL      XAR5,XAR1             ; |403| 
        LCR       #_fn_chdir            ; |403| 
        ; call occurs [#_fn_chdir] ; |403| 
        MOVL      XAR4,*-SP[2]          ; |405| 
        MOVZ      AR1,AL                ; |403| 
        LCR       #__f_mutex_put        ; |405| 
        ; call occurs [#__f_mutex_put] ; |405| 
        MOV       AL,AR1                ; |407| 
L20:    
        SUBB      SP,#2                 ; |407| 
        MOVL      XAR1,*--SP            ; |407| 
	.dwpsn	"fat_m.c",408,1
        LRETR
        ; return occurs
	.dwattr DW$187, DW_AT_end_file("fat_m.c")
	.dwattr DW$187, DW_AT_end_line(0x198)
	.dwattr DW$187, DW_AT_end_column(0x01)
	.dwendtag DW$187

	.sect	".text"
	.global	_fm_mkdir

DW$189	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_mkdir"), DW_AT_symbol_name("_fm_mkdir")
	.dwattr DW$189, DW_AT_low_pc(_fm_mkdir)
	.dwattr DW$189, DW_AT_high_pc(0x00)
	.dwattr DW$189, DW_AT_begin_file("fat_m.c")
	.dwattr DW$189, DW_AT_begin_line(0x1ba)
	.dwattr DW$189, DW_AT_begin_column(0x05)
	.dwattr DW$189, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$189, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",442,35

;***************************************************************
;* FNAME: _fm_mkdir                     FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  2 SOE     *
;***************************************************************

_fm_mkdir:
;* AR4   assigned to _dirname
DW$190	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dirname"), DW_AT_symbol_name("_dirname")
	.dwattr DW$190, DW_AT_type(*DW$T$107)
	.dwattr DW$190, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        ADDB      SP,#2
        MOVL      XAR1,XAR4             ; |442| 
        MOVZ      AR4,SP                ; |446| 
        SUBB      XAR4,#2               ; |446| 
        LCR       #_fnSetTask           ; |446| 
        ; call occurs [#_fnSetTask] ; |446| 
        CMPB      AL,#0                 ; |446| 
        BF        L21,EQ                ; |446| 
        ; branchcc occurs ; |446| 
        MOVB      AL,#22                ; |446| 
        BF        L22,UNC               ; |446| 
        ; branch occurs ; |446| 
L21:    
        MOVL      XAR4,*-SP[2]          ; |448| 
        MOVL      XAR5,XAR1             ; |448| 
        LCR       #_fn_mkdir            ; |448| 
        ; call occurs [#_fn_mkdir] ; |448| 
        MOVL      XAR4,*-SP[2]          ; |450| 
        MOVZ      AR1,AL                ; |448| 
        LCR       #__f_mutex_put        ; |450| 
        ; call occurs [#__f_mutex_put] ; |450| 
        MOV       AL,AR1                ; |452| 
L22:    
        SUBB      SP,#2                 ; |452| 
        MOVL      XAR1,*--SP            ; |452| 
	.dwpsn	"fat_m.c",453,1
        LRETR
        ; return occurs
	.dwattr DW$189, DW_AT_end_file("fat_m.c")
	.dwattr DW$189, DW_AT_end_line(0x1c5)
	.dwattr DW$189, DW_AT_end_column(0x01)
	.dwendtag DW$189

	.sect	".text"
	.global	_fm_rmdir

DW$191	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_rmdir"), DW_AT_symbol_name("_fm_rmdir")
	.dwattr DW$191, DW_AT_low_pc(_fm_rmdir)
	.dwattr DW$191, DW_AT_high_pc(0x00)
	.dwattr DW$191, DW_AT_begin_file("fat_m.c")
	.dwattr DW$191, DW_AT_begin_line(0x1e8)
	.dwattr DW$191, DW_AT_begin_column(0x05)
	.dwattr DW$191, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$191, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",488,35

;***************************************************************
;* FNAME: _fm_rmdir                     FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  2 SOE     *
;***************************************************************

_fm_rmdir:
;* AR4   assigned to _dirname
DW$192	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dirname"), DW_AT_symbol_name("_dirname")
	.dwattr DW$192, DW_AT_type(*DW$T$107)
	.dwattr DW$192, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        ADDB      SP,#2
        MOVL      XAR1,XAR4             ; |488| 
        MOVZ      AR4,SP                ; |492| 
        SUBB      XAR4,#2               ; |492| 
        LCR       #_fnSetTask           ; |492| 
        ; call occurs [#_fnSetTask] ; |492| 
        CMPB      AL,#0                 ; |492| 
        BF        L23,EQ                ; |492| 
        ; branchcc occurs ; |492| 
        MOVB      AL,#22                ; |492| 
        BF        L24,UNC               ; |492| 
        ; branch occurs ; |492| 
L23:    
        MOVL      XAR4,*-SP[2]          ; |494| 
        MOVL      XAR5,XAR1             ; |494| 
        LCR       #_fn_rmdir            ; |494| 
        ; call occurs [#_fn_rmdir] ; |494| 
        MOVL      XAR4,*-SP[2]          ; |496| 
        MOVZ      AR1,AL                ; |494| 
        LCR       #__f_mutex_put        ; |496| 
        ; call occurs [#__f_mutex_put] ; |496| 
        MOV       AL,AR1                ; |498| 
L24:    
        SUBB      SP,#2                 ; |498| 
        MOVL      XAR1,*--SP            ; |498| 
	.dwpsn	"fat_m.c",499,1
        LRETR
        ; return occurs
	.dwattr DW$191, DW_AT_end_file("fat_m.c")
	.dwattr DW$191, DW_AT_end_line(0x1f3)
	.dwattr DW$191, DW_AT_end_column(0x01)
	.dwendtag DW$191

	.sect	".text"
	.global	_fm_findfirst

DW$193	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_findfirst"), DW_AT_symbol_name("_fm_findfirst")
	.dwattr DW$193, DW_AT_low_pc(_fm_findfirst)
	.dwattr DW$193, DW_AT_high_pc(0x00)
	.dwattr DW$193, DW_AT_begin_file("fat_m.c")
	.dwattr DW$193, DW_AT_begin_line(0x216)
	.dwattr DW$193, DW_AT_begin_column(0x05)
	.dwattr DW$193, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$193, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",534,53

;***************************************************************
;* FNAME: _fm_findfirst                 FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  2 Auto,  4 SOE     *
;***************************************************************

_fm_findfirst:
;* AR4   assigned to _filename
DW$194	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filename"), DW_AT_symbol_name("_filename")
	.dwattr DW$194, DW_AT_type(*DW$T$107)
	.dwattr DW$194, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _find
DW$195	.dwtag  DW_TAG_formal_parameter, DW_AT_name("find"), DW_AT_symbol_name("_find")
	.dwattr DW$195, DW_AT_type(*DW$T$111)
	.dwattr DW$195, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        ADDB      SP,#4
        MOVL      XAR2,XAR4             ; |534| 
        MOVZ      AR4,SP                ; |538| 
        MOVL      XAR1,XAR5             ; |534| 
        SUBB      XAR4,#4               ; |538| 
        LCR       #_fnSetTask           ; |538| 
        ; call occurs [#_fnSetTask] ; |538| 
        CMPB      AL,#0                 ; |538| 
        BF        L25,EQ                ; |538| 
        ; branchcc occurs ; |538| 
        MOVB      AL,#22                ; |538| 
        BF        L26,UNC               ; |538| 
        ; branch occurs ; |538| 
L25:    
        MOVL      XAR5,XAR2             ; |540| 
        MOVL      *-SP[2],XAR1          ; |540| 
        MOVL      XAR4,*-SP[4]          ; |540| 
        LCR       #_fn_findfirst        ; |540| 
        ; call occurs [#_fn_findfirst] ; |540| 
        MOVL      XAR4,*-SP[4]          ; |542| 
        MOVZ      AR1,AL                ; |540| 
        LCR       #__f_mutex_put        ; |542| 
        ; call occurs [#__f_mutex_put] ; |542| 
        MOV       AL,AR1                ; |544| 
L26:    
        SUBB      SP,#4                 ; |544| 
        MOVL      XAR2,*--SP            ; |544| 
        MOVL      XAR1,*--SP            ; |544| 
	.dwpsn	"fat_m.c",545,1
        LRETR
        ; return occurs
	.dwattr DW$193, DW_AT_end_file("fat_m.c")
	.dwattr DW$193, DW_AT_end_line(0x221)
	.dwattr DW$193, DW_AT_end_column(0x01)
	.dwendtag DW$193

	.sect	".text"
	.global	_fm_findnext

DW$196	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_findnext"), DW_AT_symbol_name("_fm_findnext")
	.dwattr DW$196, DW_AT_low_pc(_fm_findnext)
	.dwattr DW$196, DW_AT_high_pc(0x00)
	.dwattr DW$196, DW_AT_begin_file("fat_m.c")
	.dwattr DW$196, DW_AT_begin_line(0x242)
	.dwattr DW$196, DW_AT_begin_column(0x05)
	.dwattr DW$196, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$196, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",578,31

;***************************************************************
;* FNAME: _fm_findnext                  FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  2 SOE     *
;***************************************************************

_fm_findnext:
;* AR4   assigned to _find
DW$197	.dwtag  DW_TAG_formal_parameter, DW_AT_name("find"), DW_AT_symbol_name("_find")
	.dwattr DW$197, DW_AT_type(*DW$T$111)
	.dwattr DW$197, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        ADDB      SP,#2
        MOVL      XAR1,XAR4             ; |578| 
        MOVZ      AR4,SP                ; |582| 
        SUBB      XAR4,#2               ; |582| 
        LCR       #_fnSetTask           ; |582| 
        ; call occurs [#_fnSetTask] ; |582| 
        CMPB      AL,#0                 ; |582| 
        BF        L27,EQ                ; |582| 
        ; branchcc occurs ; |582| 
        MOVB      AL,#22                ; |582| 
        BF        L28,UNC               ; |582| 
        ; branch occurs ; |582| 
L27:    
        MOVL      XAR4,*-SP[2]          ; |584| 
        MOVL      XAR5,XAR1             ; |584| 
        LCR       #_fn_findnext         ; |584| 
        ; call occurs [#_fn_findnext] ; |584| 
        MOVL      XAR4,*-SP[2]          ; |586| 
        MOVZ      AR1,AL                ; |584| 
        LCR       #__f_mutex_put        ; |586| 
        ; call occurs [#__f_mutex_put] ; |586| 
        MOV       AL,AR1                ; |588| 
L28:    
        SUBB      SP,#2                 ; |588| 
        MOVL      XAR1,*--SP            ; |588| 
	.dwpsn	"fat_m.c",589,1
        LRETR
        ; return occurs
	.dwattr DW$196, DW_AT_end_file("fat_m.c")
	.dwattr DW$196, DW_AT_end_line(0x24d)
	.dwattr DW$196, DW_AT_end_column(0x01)
	.dwendtag DW$196

	.sect	".text"
	.global	_fm_rename

DW$198	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_rename"), DW_AT_symbol_name("_fm_rename")
	.dwattr DW$198, DW_AT_low_pc(_fm_rename)
	.dwattr DW$198, DW_AT_high_pc(0x00)
	.dwattr DW$198, DW_AT_begin_file("fat_m.c")
	.dwattr DW$198, DW_AT_begin_line(0x270)
	.dwattr DW$198, DW_AT_begin_column(0x05)
	.dwattr DW$198, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$198, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",624,58

;***************************************************************
;* FNAME: _fm_rename                    FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  2 Auto,  4 SOE     *
;***************************************************************

_fm_rename:
;* AR4   assigned to _filename
DW$199	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filename"), DW_AT_symbol_name("_filename")
	.dwattr DW$199, DW_AT_type(*DW$T$107)
	.dwattr DW$199, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _newname
DW$200	.dwtag  DW_TAG_formal_parameter, DW_AT_name("newname"), DW_AT_symbol_name("_newname")
	.dwattr DW$200, DW_AT_type(*DW$T$107)
	.dwattr DW$200, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        ADDB      SP,#4
        MOVL      XAR2,XAR4             ; |624| 
        MOVZ      AR4,SP                ; |628| 
        MOVL      XAR1,XAR5             ; |624| 
        SUBB      XAR4,#4               ; |628| 
        LCR       #_fnSetTask           ; |628| 
        ; call occurs [#_fnSetTask] ; |628| 
        CMPB      AL,#0                 ; |628| 
        BF        L29,EQ                ; |628| 
        ; branchcc occurs ; |628| 
        MOVB      AL,#22                ; |628| 
        BF        L30,UNC               ; |628| 
        ; branch occurs ; |628| 
L29:    
        MOVL      XAR5,XAR2             ; |630| 
        MOVL      *-SP[2],XAR1          ; |630| 
        MOVL      XAR4,*-SP[4]          ; |630| 
        LCR       #_fn_rename           ; |630| 
        ; call occurs [#_fn_rename] ; |630| 
        MOVL      XAR4,*-SP[4]          ; |632| 
        MOVZ      AR1,AL                ; |630| 
        LCR       #__f_mutex_put        ; |632| 
        ; call occurs [#__f_mutex_put] ; |632| 
        MOV       AL,AR1                ; |634| 
L30:    
        SUBB      SP,#4                 ; |634| 
        MOVL      XAR2,*--SP            ; |634| 
        MOVL      XAR1,*--SP            ; |634| 
	.dwpsn	"fat_m.c",635,1
        LRETR
        ; return occurs
	.dwattr DW$198, DW_AT_end_file("fat_m.c")
	.dwattr DW$198, DW_AT_end_line(0x27b)
	.dwattr DW$198, DW_AT_end_column(0x01)
	.dwendtag DW$198

	.sect	".text"
	.global	_fm_filelength

DW$201	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_filelength"), DW_AT_symbol_name("_fm_filelength")
	.dwattr DW$201, DW_AT_low_pc(_fm_filelength)
	.dwattr DW$201, DW_AT_high_pc(0x00)
	.dwattr DW$201, DW_AT_begin_file("fat_m.c")
	.dwattr DW$201, DW_AT_begin_line(0x29d)
	.dwattr DW$201, DW_AT_begin_column(0x06)
	.dwattr DW$201, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$201, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",669,42

;***************************************************************
;* FNAME: _fm_filelength                FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  2 SOE     *
;***************************************************************

_fm_filelength:
;* AR4   assigned to _filename
DW$202	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filename"), DW_AT_symbol_name("_filename")
	.dwattr DW$202, DW_AT_type(*DW$T$107)
	.dwattr DW$202, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        ADDB      SP,#2
        MOVL      XAR1,XAR4             ; |669| 
        MOVZ      AR4,SP                ; |673| 
        SUBB      XAR4,#2               ; |673| 
        LCR       #_fnSetTask           ; |673| 
        ; call occurs [#_fnSetTask] ; |673| 
        CMPB      AL,#0                 ; |673| 
        BF        L31,EQ                ; |673| 
        ; branchcc occurs ; |673| 
        MOVB      ACC,#0
        BF        L32,UNC               ; |673| 
        ; branch occurs ; |673| 
L31:    
        MOVL      XAR4,*-SP[2]          ; |675| 
        MOVL      XAR5,XAR1             ; |675| 
        LCR       #_fn_filelength       ; |675| 
        ; call occurs [#_fn_filelength] ; |675| 
        MOVL      XAR4,*-SP[2]          ; |677| 
        MOVL      XAR1,ACC              ; |675| 
        LCR       #__f_mutex_put        ; |677| 
        ; call occurs [#__f_mutex_put] ; |677| 
        MOVL      ACC,XAR1              ; |679| 
L32:    
        SUBB      SP,#2                 ; |679| 
        MOVL      XAR1,*--SP            ; |679| 
	.dwpsn	"fat_m.c",680,1
        LRETR
        ; return occurs
	.dwattr DW$201, DW_AT_end_file("fat_m.c")
	.dwattr DW$201, DW_AT_end_line(0x2a8)
	.dwattr DW$201, DW_AT_end_column(0x01)
	.dwendtag DW$201

	.sect	".text"
	.global	_fm_close

DW$203	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_close"), DW_AT_symbol_name("_fm_close")
	.dwattr DW$203, DW_AT_low_pc(_fm_close)
	.dwattr DW$203, DW_AT_high_pc(0x00)
	.dwattr DW$203, DW_AT_begin_file("fat_m.c")
	.dwattr DW$203, DW_AT_begin_line(0x2ca)
	.dwattr DW$203, DW_AT_begin_column(0x05)
	.dwattr DW$203, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$203, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",714,34

;***************************************************************
;* FNAME: _fm_close                     FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  2 SOE     *
;***************************************************************

_fm_close:
;* AR4   assigned to _filehandle
DW$204	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filehandle"), DW_AT_symbol_name("_filehandle")
	.dwattr DW$204, DW_AT_type(*DW$T$119)
	.dwattr DW$204, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        ADDB      SP,#2
        MOVL      XAR1,XAR4             ; |714| 
        MOVZ      AR4,SP                ; |718| 
        SUBB      XAR4,#2               ; |718| 
        LCR       #_fnSetTask           ; |718| 
        ; call occurs [#_fnSetTask] ; |718| 
        CMPB      AL,#0                 ; |718| 
        BF        L33,EQ                ; |718| 
        ; branchcc occurs ; |718| 
        MOVB      AL,#22                ; |718| 
        BF        L34,UNC               ; |718| 
        ; branch occurs ; |718| 
L33:    
        MOVL      XAR4,*-SP[2]          ; |720| 
        MOVL      XAR5,XAR1             ; |720| 
        LCR       #_fn_close            ; |720| 
        ; call occurs [#_fn_close] ; |720| 
        MOVL      XAR4,*-SP[2]          ; |722| 
        MOVZ      AR1,AL                ; |720| 
        LCR       #__f_mutex_put        ; |722| 
        ; call occurs [#__f_mutex_put] ; |722| 
        MOV       AL,AR1                ; |724| 
L34:    
        SUBB      SP,#2                 ; |724| 
        MOVL      XAR1,*--SP            ; |724| 
	.dwpsn	"fat_m.c",725,1
        LRETR
        ; return occurs
	.dwattr DW$203, DW_AT_end_file("fat_m.c")
	.dwattr DW$203, DW_AT_end_line(0x2d5)
	.dwattr DW$203, DW_AT_end_column(0x01)
	.dwendtag DW$203

	.sect	".text"
	.global	_fm_flush

DW$205	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_flush"), DW_AT_symbol_name("_fm_flush")
	.dwattr DW$205, DW_AT_low_pc(_fm_flush)
	.dwattr DW$205, DW_AT_high_pc(0x00)
	.dwattr DW$205, DW_AT_begin_file("fat_m.c")
	.dwattr DW$205, DW_AT_begin_line(0x2e8)
	.dwattr DW$205, DW_AT_begin_column(0x05)
	.dwattr DW$205, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$205, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",744,34

;***************************************************************
;* FNAME: _fm_flush                     FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  2 SOE     *
;***************************************************************

_fm_flush:
;* AR4   assigned to _filehandle
DW$206	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filehandle"), DW_AT_symbol_name("_filehandle")
	.dwattr DW$206, DW_AT_type(*DW$T$119)
	.dwattr DW$206, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        ADDB      SP,#2
        MOVL      XAR1,XAR4             ; |744| 
        MOVZ      AR4,SP                ; |748| 
        SUBB      XAR4,#2               ; |748| 
        LCR       #_fnSetTask           ; |748| 
        ; call occurs [#_fnSetTask] ; |748| 
        CMPB      AL,#0                 ; |748| 
        BF        L35,EQ                ; |748| 
        ; branchcc occurs ; |748| 
        MOVB      AL,#22                ; |748| 
        BF        L36,UNC               ; |748| 
        ; branch occurs ; |748| 
L35:    
        MOVL      XAR4,*-SP[2]          ; |750| 
        MOVL      XAR5,XAR1             ; |750| 
        LCR       #_fn_flush            ; |750| 
        ; call occurs [#_fn_flush] ; |750| 
        MOVL      XAR4,*-SP[2]          ; |752| 
        MOVZ      AR1,AL                ; |750| 
        LCR       #__f_mutex_put        ; |752| 
        ; call occurs [#__f_mutex_put] ; |752| 
        MOV       AL,AR1                ; |754| 
L36:    
        SUBB      SP,#2                 ; |754| 
        MOVL      XAR1,*--SP            ; |754| 
	.dwpsn	"fat_m.c",755,1
        LRETR
        ; return occurs
	.dwattr DW$205, DW_AT_end_file("fat_m.c")
	.dwattr DW$205, DW_AT_end_line(0x2f3)
	.dwattr DW$205, DW_AT_end_column(0x01)
	.dwendtag DW$205

	.sect	".text"
	.global	_fm_open

DW$207	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_open"), DW_AT_symbol_name("_fm_open")
	.dwattr DW$207, DW_AT_low_pc(_fm_open)
	.dwattr DW$207, DW_AT_high_pc(0x00)
	.dwattr DW$207, DW_AT_begin_file("fat_m.c")
	.dwattr DW$207, DW_AT_begin_line(0x308)
	.dwattr DW$207, DW_AT_begin_column(0x09)
	.dwattr DW$207, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$207, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",776,56

;***************************************************************
;* FNAME: _fm_open                      FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  2 Auto,  4 SOE     *
;***************************************************************

_fm_open:
;* AR4   assigned to _filename
DW$208	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filename"), DW_AT_symbol_name("_filename")
	.dwattr DW$208, DW_AT_type(*DW$T$107)
	.dwattr DW$208, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _mode
DW$209	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mode"), DW_AT_symbol_name("_mode")
	.dwattr DW$209, DW_AT_type(*DW$T$107)
	.dwattr DW$209, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        ADDB      SP,#4
        MOVL      XAR2,XAR4             ; |776| 
        MOVZ      AR4,SP                ; |780| 
        MOVL      XAR1,XAR5             ; |776| 
        SUBB      XAR4,#4               ; |780| 
        LCR       #_fnSetTask           ; |780| 
        ; call occurs [#_fnSetTask] ; |780| 
        CMPB      AL,#0                 ; |780| 
        BF        L37,EQ                ; |780| 
        ; branchcc occurs ; |780| 
        MOVB      XAR4,#0
        BF        L38,UNC               ; |780| 
        ; branch occurs ; |780| 
L37:    
        MOVL      XAR5,XAR2             ; |782| 
        MOVL      *-SP[2],XAR1          ; |782| 
        MOVL      XAR4,*-SP[4]          ; |782| 
        LCR       #_fn_open             ; |782| 
        ; call occurs [#_fn_open] ; |782| 
        MOVL      XAR1,XAR4             ; |782| 
        MOVL      XAR4,*-SP[4]          ; |784| 
        LCR       #__f_mutex_put        ; |784| 
        ; call occurs [#__f_mutex_put] ; |784| 
        MOVL      XAR4,XAR1             ; |786| 
L38:    
        SUBB      SP,#4                 ; |786| 
        MOVL      XAR2,*--SP            ; |786| 
        MOVL      XAR1,*--SP            ; |786| 
	.dwpsn	"fat_m.c",787,1
        LRETR
        ; return occurs
	.dwattr DW$207, DW_AT_end_file("fat_m.c")
	.dwattr DW$207, DW_AT_end_line(0x313)
	.dwattr DW$207, DW_AT_end_column(0x01)
	.dwendtag DW$207

	.sect	".text"
	.global	_fm_read

DW$210	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_read"), DW_AT_symbol_name("_fm_read")
	.dwattr DW$210, DW_AT_low_pc(_fm_read)
	.dwattr DW$210, DW_AT_high_pc(0x00)
	.dwattr DW$210, DW_AT_begin_file("fat_m.c")
	.dwattr DW$210, DW_AT_begin_line(0x338)
	.dwattr DW$210, DW_AT_begin_column(0x06)
	.dwattr DW$210, DW_AT_frame_base[DW_OP_breg20 -16]
	.dwattr DW$210, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",824,67

;***************************************************************
;* FNAME: _fm_read                      FR SIZE:  14           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  6 SOE     *
;***************************************************************

_fm_read:
;* AR4   assigned to _buf
DW$211	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$211, DW_AT_type(*DW$T$3)
	.dwattr DW$211, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _size
DW$212	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size"), DW_AT_symbol_name("_size")
	.dwattr DW$212, DW_AT_type(*DW$T$12)
	.dwattr DW$212, DW_AT_location[DW_OP_reg0]
DW$213	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size_st"), DW_AT_symbol_name("_size_st")
	.dwattr DW$213, DW_AT_type(*DW$T$12)
	.dwattr DW$213, DW_AT_location[DW_OP_breg20 -18]
;* AR5   assigned to _filehandle
DW$214	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filehandle"), DW_AT_symbol_name("_filehandle")
	.dwattr DW$214, DW_AT_type(*DW$T$119)
	.dwattr DW$214, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#8
        MOVL      *-SP[8],XAR4          ; |824| 
        MOVZ      AR4,SP                ; |828| 
        MOVL      XAR1,XAR5             ; |824| 
        MOVL      XAR3,ACC              ; |824| 
        MOVL      XAR2,*-SP[18]         ; |824| 
        SUBB      XAR4,#6               ; |828| 
        LCR       #_fnSetTask           ; |828| 
        ; call occurs [#_fnSetTask] ; |828| 
        CMPB      AL,#0                 ; |828| 
        BF        L39,EQ                ; |828| 
        ; branchcc occurs ; |828| 
        MOVB      ACC,#0
        BF        L40,UNC               ; |828| 
        ; branch occurs ; |828| 
L39:    
        MOVL      *-SP[2],XAR2          ; |830| 
        MOVL      *-SP[4],XAR1          ; |830| 
        MOVL      XAR4,*-SP[6]          ; |830| 
        MOVL      XAR5,*-SP[8]          ; |830| 
        MOVL      ACC,XAR3              ; |830| 
        LCR       #_fn_read             ; |830| 
        ; call occurs [#_fn_read] ; |830| 
        MOVL      XAR4,*-SP[6]          ; |832| 
        MOVL      XAR1,ACC              ; |830| 
        LCR       #__f_mutex_put        ; |832| 
        ; call occurs [#__f_mutex_put] ; |832| 
        MOVL      ACC,XAR1              ; |834| 
L40:    
        SUBB      SP,#8                 ; |834| 
        MOVL      XAR3,*--SP            ; |834| 
        MOVL      XAR2,*--SP            ; |834| 
        MOVL      XAR1,*--SP            ; |834| 
	.dwpsn	"fat_m.c",835,1
        LRETR
        ; return occurs
	.dwattr DW$210, DW_AT_end_file("fat_m.c")
	.dwattr DW$210, DW_AT_end_line(0x343)
	.dwattr DW$210, DW_AT_end_column(0x01)
	.dwendtag DW$210

	.sect	".text"
	.global	_fm_write

DW$215	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_write"), DW_AT_symbol_name("_fm_write")
	.dwattr DW$215, DW_AT_low_pc(_fm_write)
	.dwattr DW$215, DW_AT_high_pc(0x00)
	.dwattr DW$215, DW_AT_begin_file("fat_m.c")
	.dwattr DW$215, DW_AT_begin_line(0x358)
	.dwattr DW$215, DW_AT_begin_column(0x06)
	.dwattr DW$215, DW_AT_frame_base[DW_OP_breg20 -16]
	.dwattr DW$215, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",856,74

;***************************************************************
;* FNAME: _fm_write                     FR SIZE:  14           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  6 SOE     *
;***************************************************************

_fm_write:
;* AR4   assigned to _buf
DW$216	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$216, DW_AT_type(*DW$T$60)
	.dwattr DW$216, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _size
DW$217	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size"), DW_AT_symbol_name("_size")
	.dwattr DW$217, DW_AT_type(*DW$T$12)
	.dwattr DW$217, DW_AT_location[DW_OP_reg0]
DW$218	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size_st"), DW_AT_symbol_name("_size_st")
	.dwattr DW$218, DW_AT_type(*DW$T$12)
	.dwattr DW$218, DW_AT_location[DW_OP_breg20 -18]
;* AR5   assigned to _filehandle
DW$219	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filehandle"), DW_AT_symbol_name("_filehandle")
	.dwattr DW$219, DW_AT_type(*DW$T$119)
	.dwattr DW$219, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#8
        MOVL      *-SP[8],XAR4          ; |856| 
        MOVZ      AR4,SP                ; |860| 
        MOVL      XAR1,XAR5             ; |856| 
        MOVL      XAR3,ACC              ; |856| 
        MOVL      XAR2,*-SP[18]         ; |856| 
        SUBB      XAR4,#6               ; |860| 
        LCR       #_fnSetTask           ; |860| 
        ; call occurs [#_fnSetTask] ; |860| 
        CMPB      AL,#0                 ; |860| 
        BF        L41,EQ                ; |860| 
        ; branchcc occurs ; |860| 
        MOVB      ACC,#0
        BF        L42,UNC               ; |860| 
        ; branch occurs ; |860| 
L41:    
        MOVL      *-SP[2],XAR2          ; |862| 
        MOVL      *-SP[4],XAR1          ; |862| 
        MOVL      XAR4,*-SP[6]          ; |862| 
        MOVL      XAR5,*-SP[8]          ; |862| 
        MOVL      ACC,XAR3              ; |862| 
        LCR       #_fn_write            ; |862| 
        ; call occurs [#_fn_write] ; |862| 
        MOVL      XAR4,*-SP[6]          ; |864| 
        MOVL      XAR1,ACC              ; |862| 
        LCR       #__f_mutex_put        ; |864| 
        ; call occurs [#__f_mutex_put] ; |864| 
        MOVL      ACC,XAR1              ; |866| 
L42:    
        SUBB      SP,#8                 ; |866| 
        MOVL      XAR3,*--SP            ; |866| 
        MOVL      XAR2,*--SP            ; |866| 
        MOVL      XAR1,*--SP            ; |866| 
	.dwpsn	"fat_m.c",867,1
        LRETR
        ; return occurs
	.dwattr DW$215, DW_AT_end_file("fat_m.c")
	.dwattr DW$215, DW_AT_end_line(0x363)
	.dwattr DW$215, DW_AT_end_column(0x01)
	.dwendtag DW$215

	.sect	".text"
	.global	_fm_seek

DW$220	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_seek"), DW_AT_symbol_name("_fm_seek")
	.dwattr DW$220, DW_AT_low_pc(_fm_seek)
	.dwattr DW$220, DW_AT_high_pc(0x00)
	.dwattr DW$220, DW_AT_begin_file("fat_m.c")
	.dwattr DW$220, DW_AT_begin_line(0x378)
	.dwattr DW$220, DW_AT_begin_column(0x05)
	.dwattr DW$220, DW_AT_frame_base[DW_OP_breg20 -12]
	.dwattr DW$220, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",888,57

;***************************************************************
;* FNAME: _fm_seek                      FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  2 Auto,  6 SOE     *
;***************************************************************

_fm_seek:
;* AR4   assigned to _filehandle
DW$221	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filehandle"), DW_AT_symbol_name("_filehandle")
	.dwattr DW$221, DW_AT_type(*DW$T$119)
	.dwattr DW$221, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _offset
DW$222	.dwtag  DW_TAG_formal_parameter, DW_AT_name("offset"), DW_AT_symbol_name("_offset")
	.dwattr DW$222, DW_AT_type(*DW$T$12)
	.dwattr DW$222, DW_AT_location[DW_OP_reg0]
DW$223	.dwtag  DW_TAG_formal_parameter, DW_AT_name("whence"), DW_AT_symbol_name("_whence")
	.dwattr DW$223, DW_AT_type(*DW$T$12)
	.dwattr DW$223, DW_AT_location[DW_OP_breg20 -14]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#4
        MOVL      XAR3,XAR4             ; |888| 
        MOVZ      AR4,SP                ; |892| 
        MOVL      XAR1,ACC              ; |888| 
        MOVL      XAR2,*-SP[14]         ; |888| 
        SUBB      XAR4,#4               ; |892| 
        LCR       #_fnSetTask           ; |892| 
        ; call occurs [#_fnSetTask] ; |892| 
        CMPB      AL,#0                 ; |892| 
        BF        L43,EQ                ; |892| 
        ; branchcc occurs ; |892| 
        MOVB      AL,#22                ; |892| 
        BF        L44,UNC               ; |892| 
        ; branch occurs ; |892| 
L43:    
        MOVL      *-SP[2],XAR2          ; |894| 
        MOVL      XAR5,XAR3             ; |894| 
        MOVL      XAR4,*-SP[4]          ; |894| 
        MOVL      ACC,XAR1              ; |894| 
        LCR       #_fn_seek             ; |894| 
        ; call occurs [#_fn_seek] ; |894| 
        MOVL      XAR4,*-SP[4]          ; |896| 
        MOVZ      AR1,AL                ; |894| 
        LCR       #__f_mutex_put        ; |896| 
        ; call occurs [#__f_mutex_put] ; |896| 
        MOV       AL,AR1                ; |898| 
L44:    
        SUBB      SP,#4                 ; |898| 
        MOVL      XAR3,*--SP            ; |898| 
        MOVL      XAR2,*--SP            ; |898| 
        MOVL      XAR1,*--SP            ; |898| 
	.dwpsn	"fat_m.c",899,1
        LRETR
        ; return occurs
	.dwattr DW$220, DW_AT_end_file("fat_m.c")
	.dwattr DW$220, DW_AT_end_line(0x383)
	.dwattr DW$220, DW_AT_end_column(0x01)
	.dwendtag DW$220

	.sect	".text"
	.global	_fm_tell

DW$224	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_tell"), DW_AT_symbol_name("_fm_tell")
	.dwattr DW$224, DW_AT_low_pc(_fm_tell)
	.dwattr DW$224, DW_AT_high_pc(0x00)
	.dwattr DW$224, DW_AT_begin_file("fat_m.c")
	.dwattr DW$224, DW_AT_begin_line(0x395)
	.dwattr DW$224, DW_AT_begin_column(0x06)
	.dwattr DW$224, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$224, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",917,34

;***************************************************************
;* FNAME: _fm_tell                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_fm_tell:
;* AR4   assigned to _filehandle
DW$225	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filehandle"), DW_AT_symbol_name("_filehandle")
	.dwattr DW$225, DW_AT_type(*DW$T$119)
	.dwattr DW$225, DW_AT_location[DW_OP_reg12]
        LCR       #_fn_tell             ; |919| 
        ; call occurs [#_fn_tell] ; |919| 
	.dwpsn	"fat_m.c",921,1
        LRETR
        ; return occurs
	.dwattr DW$224, DW_AT_end_file("fat_m.c")
	.dwattr DW$224, DW_AT_end_line(0x399)
	.dwattr DW$224, DW_AT_end_column(0x01)
	.dwendtag DW$224

	.sect	".text"
	.global	_fm_getc

DW$226	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_getc"), DW_AT_symbol_name("_fm_getc")
	.dwattr DW$226, DW_AT_low_pc(_fm_getc)
	.dwattr DW$226, DW_AT_high_pc(0x00)
	.dwattr DW$226, DW_AT_begin_file("fat_m.c")
	.dwattr DW$226, DW_AT_begin_line(0x3ab)
	.dwattr DW$226, DW_AT_begin_column(0x05)
	.dwattr DW$226, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$226, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",939,33

;***************************************************************
;* FNAME: _fm_getc                      FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  2 SOE     *
;***************************************************************

_fm_getc:
;* AR4   assigned to _filehandle
DW$227	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filehandle"), DW_AT_symbol_name("_filehandle")
	.dwattr DW$227, DW_AT_type(*DW$T$119)
	.dwattr DW$227, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        ADDB      SP,#2
        MOVL      XAR1,XAR4             ; |939| 
        MOVZ      AR4,SP                ; |943| 
        SUBB      XAR4,#2               ; |943| 
        LCR       #_fnSetTask           ; |943| 
        ; call occurs [#_fnSetTask] ; |943| 
        CMPB      AL,#0                 ; |943| 
        BF        L45,EQ                ; |943| 
        ; branchcc occurs ; |943| 
        MOV       AL,#-1                ; |943| 
        BF        L46,UNC               ; |943| 
        ; branch occurs ; |943| 
L45:    
        MOVL      XAR4,*-SP[2]          ; |945| 
        MOVL      XAR5,XAR1             ; |945| 
        LCR       #_fn_getc             ; |945| 
        ; call occurs [#_fn_getc] ; |945| 
        MOVL      XAR4,*-SP[2]          ; |947| 
        MOVZ      AR1,AL                ; |945| 
        LCR       #__f_mutex_put        ; |947| 
        ; call occurs [#__f_mutex_put] ; |947| 
        MOV       AL,AR1                ; |949| 
L46:    
        SUBB      SP,#2                 ; |949| 
        MOVL      XAR1,*--SP            ; |949| 
	.dwpsn	"fat_m.c",950,1
        LRETR
        ; return occurs
	.dwattr DW$226, DW_AT_end_file("fat_m.c")
	.dwattr DW$226, DW_AT_end_line(0x3b6)
	.dwattr DW$226, DW_AT_end_column(0x01)
	.dwendtag DW$226

	.sect	".text"
	.global	_fm_putc

DW$228	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_putc"), DW_AT_symbol_name("_fm_putc")
	.dwattr DW$228, DW_AT_low_pc(_fm_putc)
	.dwattr DW$228, DW_AT_high_pc(0x00)
	.dwattr DW$228, DW_AT_begin_file("fat_m.c")
	.dwattr DW$228, DW_AT_begin_line(0x3c9)
	.dwattr DW$228, DW_AT_begin_column(0x05)
	.dwattr DW$228, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$228, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",969,40

;***************************************************************
;* FNAME: _fm_putc                      FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  4 SOE     *
;***************************************************************

_fm_putc:
;* AL    assigned to _ch
DW$229	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ch"), DW_AT_symbol_name("_ch")
	.dwattr DW$229, DW_AT_type(*DW$T$10)
	.dwattr DW$229, DW_AT_location[DW_OP_reg0]
;* AR4   assigned to _filehandle
DW$230	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filehandle"), DW_AT_symbol_name("_filehandle")
	.dwattr DW$230, DW_AT_type(*DW$T$119)
	.dwattr DW$230, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        ADDB      SP,#2
        MOVL      XAR2,XAR4             ; |969| 
        MOVZ      AR4,SP                ; |973| 
        MOVZ      AR1,AL                ; |969| 
        SUBB      XAR4,#2               ; |973| 
        LCR       #_fnSetTask           ; |973| 
        ; call occurs [#_fnSetTask] ; |973| 
        CMPB      AL,#0                 ; |973| 
        BF        L47,EQ                ; |973| 
        ; branchcc occurs ; |973| 
        MOV       AL,#-1                ; |973| 
        BF        L48,UNC               ; |973| 
        ; branch occurs ; |973| 
L47:    
        MOVL      XAR4,*-SP[2]          ; |975| 
        MOVL      XAR5,XAR2             ; |975| 
        MOV       AL,AR1                ; |975| 
        LCR       #_fn_putc             ; |975| 
        ; call occurs [#_fn_putc] ; |975| 
        MOVL      XAR4,*-SP[2]          ; |977| 
        MOVZ      AR1,AL                ; |975| 
        LCR       #__f_mutex_put        ; |977| 
        ; call occurs [#__f_mutex_put] ; |977| 
        MOV       AL,AR1                ; |979| 
L48:    
        SUBB      SP,#2                 ; |979| 
        MOVL      XAR2,*--SP            ; |979| 
        MOVL      XAR1,*--SP            ; |979| 
	.dwpsn	"fat_m.c",980,1
        LRETR
        ; return occurs
	.dwattr DW$228, DW_AT_end_file("fat_m.c")
	.dwattr DW$228, DW_AT_end_line(0x3d4)
	.dwattr DW$228, DW_AT_end_column(0x01)
	.dwendtag DW$228

	.sect	".text"
	.global	_fm_rewind

DW$231	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_rewind"), DW_AT_symbol_name("_fm_rewind")
	.dwattr DW$231, DW_AT_low_pc(_fm_rewind)
	.dwattr DW$231, DW_AT_high_pc(0x00)
	.dwattr DW$231, DW_AT_begin_file("fat_m.c")
	.dwattr DW$231, DW_AT_begin_line(0x3e6)
	.dwattr DW$231, DW_AT_begin_column(0x05)
	.dwattr DW$231, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$231, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",998,35

;***************************************************************
;* FNAME: _fm_rewind                    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  2 SOE     *
;***************************************************************

_fm_rewind:
;* AR4   assigned to _filehandle
DW$232	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filehandle"), DW_AT_symbol_name("_filehandle")
	.dwattr DW$232, DW_AT_type(*DW$T$119)
	.dwattr DW$232, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        ADDB      SP,#2
        MOVL      XAR1,XAR4             ; |998| 
        MOVZ      AR4,SP                ; |1002| 
        SUBB      XAR4,#2               ; |1002| 
        LCR       #_fnSetTask           ; |1002| 
        ; call occurs [#_fnSetTask] ; |1002| 
        CMPB      AL,#0                 ; |1002| 
        BF        L49,EQ                ; |1002| 
        ; branchcc occurs ; |1002| 
        MOVB      AL,#22                ; |1002| 
        BF        L50,UNC               ; |1002| 
        ; branch occurs ; |1002| 
L49:    
        MOVL      XAR4,*-SP[2]          ; |1004| 
        MOVL      XAR5,XAR1             ; |1004| 
        LCR       #_fn_rewind           ; |1004| 
        ; call occurs [#_fn_rewind] ; |1004| 
        MOVL      XAR4,*-SP[2]          ; |1006| 
        MOVZ      AR1,AL                ; |1004| 
        LCR       #__f_mutex_put        ; |1006| 
        ; call occurs [#__f_mutex_put] ; |1006| 
        MOV       AL,AR1                ; |1008| 
L50:    
        SUBB      SP,#2                 ; |1008| 
        MOVL      XAR1,*--SP            ; |1008| 
	.dwpsn	"fat_m.c",1009,1
        LRETR
        ; return occurs
	.dwattr DW$231, DW_AT_end_file("fat_m.c")
	.dwattr DW$231, DW_AT_end_line(0x3f1)
	.dwattr DW$231, DW_AT_end_column(0x01)
	.dwendtag DW$231

	.sect	".text"
	.global	_fm_eof

DW$233	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_eof"), DW_AT_symbol_name("_fm_eof")
	.dwattr DW$233, DW_AT_low_pc(_fm_eof)
	.dwattr DW$233, DW_AT_high_pc(0x00)
	.dwattr DW$233, DW_AT_begin_file("fat_m.c")
	.dwattr DW$233, DW_AT_begin_line(0x404)
	.dwattr DW$233, DW_AT_begin_column(0x05)
	.dwattr DW$233, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$233, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",1028,32

;***************************************************************
;* FNAME: _fm_eof                       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_fm_eof:
;* AR4   assigned to _filehandle
DW$234	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filehandle"), DW_AT_symbol_name("_filehandle")
	.dwattr DW$234, DW_AT_type(*DW$T$119)
	.dwattr DW$234, DW_AT_location[DW_OP_reg12]
        LCR       #_fn_eof              ; |1030| 
        ; call occurs [#_fn_eof] ; |1030| 
	.dwpsn	"fat_m.c",1032,1
        LRETR
        ; return occurs
	.dwattr DW$233, DW_AT_end_file("fat_m.c")
	.dwattr DW$233, DW_AT_end_line(0x408)
	.dwattr DW$233, DW_AT_end_column(0x01)
	.dwendtag DW$233

	.sect	".text"
	.global	_fm_gettimedate

DW$235	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_gettimedate"), DW_AT_symbol_name("_fm_gettimedate")
	.dwattr DW$235, DW_AT_low_pc(_fm_gettimedate)
	.dwattr DW$235, DW_AT_high_pc(0x00)
	.dwattr DW$235, DW_AT_begin_file("fat_m.c")
	.dwattr DW$235, DW_AT_begin_line(0x41d)
	.dwattr DW$235, DW_AT_begin_column(0x05)
	.dwattr DW$235, DW_AT_frame_base[DW_OP_breg20 -14]
	.dwattr DW$235, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",1053,88

;***************************************************************
;* FNAME: _fm_gettimedate               FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  2 Auto,  6 SOE     *
;***************************************************************

_fm_gettimedate:
;* AR4   assigned to _filename
DW$236	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filename"), DW_AT_symbol_name("_filename")
	.dwattr DW$236, DW_AT_type(*DW$T$107)
	.dwattr DW$236, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _pctime
DW$237	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pctime"), DW_AT_symbol_name("_pctime")
	.dwattr DW$237, DW_AT_type(*DW$T$69)
	.dwattr DW$237, DW_AT_location[DW_OP_reg14]
DW$238	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pcdate"), DW_AT_symbol_name("_pcdate")
	.dwattr DW$238, DW_AT_type(*DW$T$69)
	.dwattr DW$238, DW_AT_location[DW_OP_breg20 -16]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#6
        MOVL      XAR3,XAR4             ; |1053| 
        MOVZ      AR4,SP                ; |1057| 
        MOVL      XAR1,XAR5             ; |1053| 
        MOVL      XAR2,*-SP[16]         ; |1053| 
        SUBB      XAR4,#6               ; |1057| 
        LCR       #_fnSetTask           ; |1057| 
        ; call occurs [#_fnSetTask] ; |1057| 
        CMPB      AL,#0                 ; |1057| 
        BF        L51,EQ                ; |1057| 
        ; branchcc occurs ; |1057| 
        MOVB      AL,#22                ; |1057| 
        BF        L52,UNC               ; |1057| 
        ; branch occurs ; |1057| 
L51:    
        MOVL      *-SP[2],XAR1          ; |1059| 
        MOVL      XAR5,XAR3             ; |1059| 
        MOVL      *-SP[4],XAR2          ; |1059| 
        MOVL      XAR4,*-SP[6]          ; |1059| 
        LCR       #_fn_gettimedate      ; |1059| 
        ; call occurs [#_fn_gettimedate] ; |1059| 
        MOVL      XAR4,*-SP[6]          ; |1061| 
        MOVZ      AR1,AL                ; |1059| 
        LCR       #__f_mutex_put        ; |1061| 
        ; call occurs [#__f_mutex_put] ; |1061| 
        MOV       AL,AR1                ; |1063| 
L52:    
        SUBB      SP,#6                 ; |1063| 
        MOVL      XAR3,*--SP            ; |1063| 
        MOVL      XAR2,*--SP            ; |1063| 
        MOVL      XAR1,*--SP            ; |1063| 
	.dwpsn	"fat_m.c",1064,1
        LRETR
        ; return occurs
	.dwattr DW$235, DW_AT_end_file("fat_m.c")
	.dwattr DW$235, DW_AT_end_line(0x428)
	.dwattr DW$235, DW_AT_end_column(0x01)
	.dwendtag DW$235

	.sect	".text"
	.global	_fm_settimedate

DW$239	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_settimedate"), DW_AT_symbol_name("_fm_settimedate")
	.dwattr DW$239, DW_AT_low_pc(_fm_settimedate)
	.dwattr DW$239, DW_AT_high_pc(0x00)
	.dwattr DW$239, DW_AT_begin_file("fat_m.c")
	.dwattr DW$239, DW_AT_begin_line(0x44d)
	.dwattr DW$239, DW_AT_begin_column(0x05)
	.dwattr DW$239, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$239, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",1101,84

;***************************************************************
;* FNAME: _fm_settimedate               FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  6 SOE     *
;***************************************************************

_fm_settimedate:
;* AR4   assigned to _filename
DW$240	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filename"), DW_AT_symbol_name("_filename")
	.dwattr DW$240, DW_AT_type(*DW$T$107)
	.dwattr DW$240, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _ctime
DW$241	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ctime"), DW_AT_symbol_name("_ctime")
	.dwattr DW$241, DW_AT_type(*DW$T$9)
	.dwattr DW$241, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _cdate
DW$242	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cdate"), DW_AT_symbol_name("_cdate")
	.dwattr DW$242, DW_AT_type(*DW$T$9)
	.dwattr DW$242, DW_AT_location[DW_OP_reg1]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOVL      XAR2,XAR4             ; |1101| 
        ADDB      SP,#2
        MOVZ      AR4,SP                ; |1105| 
        MOVZ      AR1,AH                ; |1101| 
        MOVZ      AR3,AL                ; |1101| 
        SUBB      XAR4,#2               ; |1105| 
        LCR       #_fnSetTask           ; |1105| 
        ; call occurs [#_fnSetTask] ; |1105| 
        CMPB      AL,#0                 ; |1105| 
        BF        L53,EQ                ; |1105| 
        ; branchcc occurs ; |1105| 
        MOVB      AL,#22                ; |1105| 
        BF        L54,UNC               ; |1105| 
        ; branch occurs ; |1105| 
L53:    
        MOVL      XAR4,*-SP[2]          ; |1107| 
        MOVL      XAR5,XAR2             ; |1107| 
        MOV       AL,AR3                ; |1107| 
        MOV       AH,AR1                ; |1107| 
        LCR       #_fn_settimedate      ; |1107| 
        ; call occurs [#_fn_settimedate] ; |1107| 
        MOVL      XAR4,*-SP[2]          ; |1109| 
        MOVZ      AR1,AL                ; |1107| 
        LCR       #__f_mutex_put        ; |1109| 
        ; call occurs [#__f_mutex_put] ; |1109| 
        MOV       AL,AR1                ; |1111| 
L54:    
        SUBB      SP,#2                 ; |1111| 
        MOVL      XAR3,*--SP            ; |1111| 
        MOVL      XAR2,*--SP            ; |1111| 
        MOVL      XAR1,*--SP            ; |1111| 
	.dwpsn	"fat_m.c",1112,1
        LRETR
        ; return occurs
	.dwattr DW$239, DW_AT_end_file("fat_m.c")
	.dwattr DW$239, DW_AT_end_line(0x458)
	.dwattr DW$239, DW_AT_end_column(0x01)
	.dwendtag DW$239

	.sect	".text"
	.global	_fm_delete

DW$243	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_delete"), DW_AT_symbol_name("_fm_delete")
	.dwattr DW$243, DW_AT_low_pc(_fm_delete)
	.dwattr DW$243, DW_AT_high_pc(0x00)
	.dwattr DW$243, DW_AT_begin_file("fat_m.c")
	.dwattr DW$243, DW_AT_begin_line(0x47b)
	.dwattr DW$243, DW_AT_begin_column(0x05)
	.dwattr DW$243, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$243, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",1147,37

;***************************************************************
;* FNAME: _fm_delete                    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  2 SOE     *
;***************************************************************

_fm_delete:
;* AR4   assigned to _filename
DW$244	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filename"), DW_AT_symbol_name("_filename")
	.dwattr DW$244, DW_AT_type(*DW$T$107)
	.dwattr DW$244, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        ADDB      SP,#2
        MOVL      XAR1,XAR4             ; |1147| 
        MOVZ      AR4,SP                ; |1151| 
        SUBB      XAR4,#2               ; |1151| 
        LCR       #_fnSetTask           ; |1151| 
        ; call occurs [#_fnSetTask] ; |1151| 
        CMPB      AL,#0                 ; |1151| 
        BF        L55,EQ                ; |1151| 
        ; branchcc occurs ; |1151| 
        MOVB      AL,#22                ; |1151| 
        BF        L56,UNC               ; |1151| 
        ; branch occurs ; |1151| 
L55:    
        MOVL      XAR4,*-SP[2]          ; |1153| 
        MOVL      XAR5,XAR1             ; |1153| 
        LCR       #_fn_delete           ; |1153| 
        ; call occurs [#_fn_delete] ; |1153| 
        MOVL      XAR4,*-SP[2]          ; |1155| 
        MOVZ      AR1,AL                ; |1153| 
        LCR       #__f_mutex_put        ; |1155| 
        ; call occurs [#__f_mutex_put] ; |1155| 
        MOV       AL,AR1                ; |1157| 
L56:    
        SUBB      SP,#2                 ; |1157| 
        MOVL      XAR1,*--SP            ; |1157| 
	.dwpsn	"fat_m.c",1158,1
        LRETR
        ; return occurs
	.dwattr DW$243, DW_AT_end_file("fat_m.c")
	.dwattr DW$243, DW_AT_end_line(0x486)
	.dwattr DW$243, DW_AT_end_column(0x01)
	.dwendtag DW$243

	.sect	".text"
	.global	_fm_getattr

DW$245	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_getattr"), DW_AT_symbol_name("_fm_getattr")
	.dwattr DW$245, DW_AT_low_pc(_fm_getattr)
	.dwattr DW$245, DW_AT_high_pc(0x00)
	.dwattr DW$245, DW_AT_begin_file("fat_m.c")
	.dwattr DW$245, DW_AT_begin_line(0x4a9)
	.dwattr DW$245, DW_AT_begin_column(0x05)
	.dwattr DW$245, DW_AT_frame_base[DW_OP_breg20 -10]
	.dwattr DW$245, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",1193,58

;***************************************************************
;* FNAME: _fm_getattr                   FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  2 Auto,  4 SOE     *
;***************************************************************

_fm_getattr:
;* AR4   assigned to _filename
DW$246	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filename"), DW_AT_symbol_name("_filename")
	.dwattr DW$246, DW_AT_type(*DW$T$107)
	.dwattr DW$246, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _attr
DW$247	.dwtag  DW_TAG_formal_parameter, DW_AT_name("attr"), DW_AT_symbol_name("_attr")
	.dwattr DW$247, DW_AT_type(*DW$T$66)
	.dwattr DW$247, DW_AT_location[DW_OP_reg14]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        ADDB      SP,#4
        MOVL      XAR2,XAR4             ; |1193| 
        MOVZ      AR4,SP                ; |1197| 
        MOVL      XAR1,XAR5             ; |1193| 
        SUBB      XAR4,#4               ; |1197| 
        LCR       #_fnSetTask           ; |1197| 
        ; call occurs [#_fnSetTask] ; |1197| 
        CMPB      AL,#0                 ; |1197| 
        BF        L57,EQ                ; |1197| 
        ; branchcc occurs ; |1197| 
        MOVB      AL,#22                ; |1197| 
        BF        L58,UNC               ; |1197| 
        ; branch occurs ; |1197| 
L57:    
        MOVL      XAR5,XAR2             ; |1199| 
        MOVL      *-SP[2],XAR1          ; |1199| 
        MOVL      XAR4,*-SP[4]          ; |1199| 
        LCR       #_fn_getattr          ; |1199| 
        ; call occurs [#_fn_getattr] ; |1199| 
        MOVL      XAR4,*-SP[4]          ; |1201| 
        MOVZ      AR1,AL                ; |1199| 
        LCR       #__f_mutex_put        ; |1201| 
        ; call occurs [#__f_mutex_put] ; |1201| 
        MOV       AL,AR1                ; |1203| 
L58:    
        SUBB      SP,#4                 ; |1203| 
        MOVL      XAR2,*--SP            ; |1203| 
        MOVL      XAR1,*--SP            ; |1203| 
	.dwpsn	"fat_m.c",1204,1
        LRETR
        ; return occurs
	.dwattr DW$245, DW_AT_end_file("fat_m.c")
	.dwattr DW$245, DW_AT_end_line(0x4b4)
	.dwattr DW$245, DW_AT_end_column(0x01)
	.dwendtag DW$245

	.sect	".text"
	.global	_fm_setattr

DW$248	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_setattr"), DW_AT_symbol_name("_fm_setattr")
	.dwattr DW$248, DW_AT_low_pc(_fm_setattr)
	.dwattr DW$248, DW_AT_high_pc(0x00)
	.dwattr DW$248, DW_AT_begin_file("fat_m.c")
	.dwattr DW$248, DW_AT_begin_line(0x4d7)
	.dwattr DW$248, DW_AT_begin_column(0x05)
	.dwattr DW$248, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$248, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",1239,57

;***************************************************************
;* FNAME: _fm_setattr                   FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  4 SOE     *
;***************************************************************

_fm_setattr:
;* AR4   assigned to _filename
DW$249	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filename"), DW_AT_symbol_name("_filename")
	.dwattr DW$249, DW_AT_type(*DW$T$107)
	.dwattr DW$249, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _attr
DW$250	.dwtag  DW_TAG_formal_parameter, DW_AT_name("attr"), DW_AT_symbol_name("_attr")
	.dwattr DW$250, DW_AT_type(*DW$T$6)
	.dwattr DW$250, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        ADDB      SP,#2
        MOVL      XAR2,XAR4             ; |1239| 
        MOVZ      AR4,SP                ; |1243| 
        MOVZ      AR1,AL                ; |1239| 
        SUBB      XAR4,#2               ; |1243| 
        LCR       #_fnSetTask           ; |1243| 
        ; call occurs [#_fnSetTask] ; |1243| 
        CMPB      AL,#0                 ; |1243| 
        BF        L59,EQ                ; |1243| 
        ; branchcc occurs ; |1243| 
        MOVB      AL,#22                ; |1243| 
        BF        L60,UNC               ; |1243| 
        ; branch occurs ; |1243| 
L59:    
        MOVL      XAR4,*-SP[2]          ; |1245| 
        MOVL      XAR5,XAR2             ; |1245| 
        MOV       AL,AR1                ; |1245| 
        LCR       #_fn_setattr          ; |1245| 
        ; call occurs [#_fn_setattr] ; |1245| 
        MOVL      XAR4,*-SP[2]          ; |1247| 
        MOVZ      AR1,AL                ; |1245| 
        LCR       #__f_mutex_put        ; |1247| 
        ; call occurs [#__f_mutex_put] ; |1247| 
        MOV       AL,AR1                ; |1249| 
L60:    
        SUBB      SP,#2                 ; |1249| 
        MOVL      XAR2,*--SP            ; |1249| 
        MOVL      XAR1,*--SP            ; |1249| 
	.dwpsn	"fat_m.c",1250,1
        LRETR
        ; return occurs
	.dwattr DW$248, DW_AT_end_file("fat_m.c")
	.dwattr DW$248, DW_AT_end_line(0x4e2)
	.dwattr DW$248, DW_AT_end_column(0x01)
	.dwendtag DW$248

	.sect	".text"
	.global	_fm_getlabel

DW$251	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_getlabel"), DW_AT_symbol_name("_fm_getlabel")
	.dwattr DW$251, DW_AT_low_pc(_fm_getlabel)
	.dwattr DW$251, DW_AT_high_pc(0x00)
	.dwattr DW$251, DW_AT_begin_file("fat_m.c")
	.dwattr DW$251, DW_AT_begin_line(0x507)
	.dwattr DW$251, DW_AT_begin_column(0x05)
	.dwattr DW$251, DW_AT_frame_base[DW_OP_breg20 -12]
	.dwattr DW$251, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",1287,54

;***************************************************************
;* FNAME: _fm_getlabel                  FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            1 Parameter,  3 Auto,  6 SOE     *
;***************************************************************

_fm_getlabel:
;* AR5   assigned to _drivenum
DW$252	.dwtag  DW_TAG_formal_parameter, DW_AT_name("drivenum"), DW_AT_symbol_name("_drivenum")
	.dwattr DW$252, DW_AT_type(*DW$T$10)
	.dwattr DW$252, DW_AT_location[DW_OP_reg14]
;* AR4   assigned to _label
DW$253	.dwtag  DW_TAG_formal_parameter, DW_AT_name("label"), DW_AT_symbol_name("_label")
	.dwattr DW$253, DW_AT_type(*DW$T$95)
	.dwattr DW$253, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _len
DW$254	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$254, DW_AT_type(*DW$T$12)
	.dwattr DW$254, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOVL      XAR2,XAR4             ; |1287| 
        ADDB      SP,#4
        MOVZ      AR4,SP                ; |1291| 
        MOVL      XAR1,ACC              ; |1287| 
        MOVZ      AR3,AR5               ; |1287| 
        SUBB      XAR4,#4               ; |1291| 
        LCR       #_fnSetTask           ; |1291| 
        ; call occurs [#_fnSetTask] ; |1291| 
        CMPB      AL,#0                 ; |1291| 
        BF        L61,EQ                ; |1291| 
        ; branchcc occurs ; |1291| 
        MOVB      AL,#22                ; |1291| 
        BF        L62,UNC               ; |1291| 
        ; branch occurs ; |1291| 
L61:    
        MOV       *-SP[1],AR3           ; |1293| 
        MOVL      XAR5,XAR2             ; |1293| 
        MOVL      XAR4,*-SP[4]          ; |1293| 
        MOVL      ACC,XAR1              ; |1293| 
        LCR       #_fn_getlabel         ; |1293| 
        ; call occurs [#_fn_getlabel] ; |1293| 
        MOVL      XAR4,*-SP[4]          ; |1295| 
        MOVZ      AR1,AL                ; |1293| 
        LCR       #__f_mutex_put        ; |1295| 
        ; call occurs [#__f_mutex_put] ; |1295| 
        MOV       AL,AR1                ; |1297| 
L62:    
        SUBB      SP,#4                 ; |1297| 
        MOVL      XAR3,*--SP            ; |1297| 
        MOVL      XAR2,*--SP            ; |1297| 
        MOVL      XAR1,*--SP            ; |1297| 
	.dwpsn	"fat_m.c",1298,1
        LRETR
        ; return occurs
	.dwattr DW$251, DW_AT_end_file("fat_m.c")
	.dwattr DW$251, DW_AT_end_line(0x512)
	.dwattr DW$251, DW_AT_end_column(0x01)
	.dwendtag DW$251

	.sect	".text"
	.global	_fm_setlabel

DW$255	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_setlabel"), DW_AT_symbol_name("_fm_setlabel")
	.dwattr DW$255, DW_AT_low_pc(_fm_setlabel)
	.dwattr DW$255, DW_AT_high_pc(0x00)
	.dwattr DW$255, DW_AT_begin_file("fat_m.c")
	.dwattr DW$255, DW_AT_begin_line(0x525)
	.dwattr DW$255, DW_AT_begin_column(0x05)
	.dwattr DW$255, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$255, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",1317,50

;***************************************************************
;* FNAME: _fm_setlabel                  FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  4 SOE     *
;***************************************************************

_fm_setlabel:
;* AL    assigned to _drivenum
DW$256	.dwtag  DW_TAG_formal_parameter, DW_AT_name("drivenum"), DW_AT_symbol_name("_drivenum")
	.dwattr DW$256, DW_AT_type(*DW$T$10)
	.dwattr DW$256, DW_AT_location[DW_OP_reg0]
;* AR4   assigned to _label
DW$257	.dwtag  DW_TAG_formal_parameter, DW_AT_name("label"), DW_AT_symbol_name("_label")
	.dwattr DW$257, DW_AT_type(*DW$T$107)
	.dwattr DW$257, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        ADDB      SP,#2
        MOVL      XAR2,XAR4             ; |1317| 
        MOVZ      AR4,SP                ; |1321| 
        MOVZ      AR1,AL                ; |1317| 
        SUBB      XAR4,#2               ; |1321| 
        LCR       #_fnSetTask           ; |1321| 
        ; call occurs [#_fnSetTask] ; |1321| 
        CMPB      AL,#0                 ; |1321| 
        BF        L63,EQ                ; |1321| 
        ; branchcc occurs ; |1321| 
        MOVB      AL,#22                ; |1321| 
        BF        L64,UNC               ; |1321| 
        ; branch occurs ; |1321| 
L63:    
        MOVL      XAR4,*-SP[2]          ; |1323| 
        MOVL      XAR5,XAR2             ; |1323| 
        MOV       AL,AR1                ; |1323| 
        LCR       #_fn_setlabel         ; |1323| 
        ; call occurs [#_fn_setlabel] ; |1323| 
        MOVL      XAR4,*-SP[2]          ; |1325| 
        MOVZ      AR1,AL                ; |1323| 
        LCR       #__f_mutex_put        ; |1325| 
        ; call occurs [#__f_mutex_put] ; |1325| 
        MOV       AL,AR1                ; |1327| 
L64:    
        SUBB      SP,#2                 ; |1327| 
        MOVL      XAR2,*--SP            ; |1327| 
        MOVL      XAR1,*--SP            ; |1327| 
	.dwpsn	"fat_m.c",1328,1
        LRETR
        ; return occurs
	.dwattr DW$255, DW_AT_end_file("fat_m.c")
	.dwattr DW$255, DW_AT_end_line(0x530)
	.dwattr DW$255, DW_AT_end_column(0x01)
	.dwendtag DW$255

	.sect	".text"
	.global	_fm_truncate

DW$258	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_truncate"), DW_AT_symbol_name("_fm_truncate")
	.dwattr DW$258, DW_AT_low_pc(_fm_truncate)
	.dwattr DW$258, DW_AT_high_pc(0x00)
	.dwattr DW$258, DW_AT_begin_file("fat_m.c")
	.dwattr DW$258, DW_AT_begin_line(0x544)
	.dwattr DW$258, DW_AT_begin_column(0x09)
	.dwattr DW$258, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$258, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",1348,64

;***************************************************************
;* FNAME: _fm_truncate                  FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  4 SOE     *
;***************************************************************

_fm_truncate:
;* AR4   assigned to _filename
DW$259	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filename"), DW_AT_symbol_name("_filename")
	.dwattr DW$259, DW_AT_type(*DW$T$107)
	.dwattr DW$259, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _length
DW$260	.dwtag  DW_TAG_formal_parameter, DW_AT_name("length"), DW_AT_symbol_name("_length")
	.dwattr DW$260, DW_AT_type(*DW$T$13)
	.dwattr DW$260, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        ADDB      SP,#2
        MOVL      XAR2,XAR4             ; |1348| 
        MOVZ      AR4,SP                ; |1352| 
        MOVL      XAR1,ACC              ; |1348| 
        SUBB      XAR4,#2               ; |1352| 
        LCR       #_fnSetTask           ; |1352| 
        ; call occurs [#_fnSetTask] ; |1352| 
        CMPB      AL,#0                 ; |1352| 
        BF        L65,EQ                ; |1352| 
        ; branchcc occurs ; |1352| 
        MOVB      XAR4,#0
        BF        L66,UNC               ; |1352| 
        ; branch occurs ; |1352| 
L65:    
        MOVL      XAR4,*-SP[2]          ; |1354| 
        MOVL      XAR5,XAR2             ; |1354| 
        MOVL      ACC,XAR1              ; |1354| 
        LCR       #_fn_truncate         ; |1354| 
        ; call occurs [#_fn_truncate] ; |1354| 
        MOVL      XAR1,XAR4             ; |1354| 
        MOVL      XAR4,*-SP[2]          ; |1356| 
        LCR       #__f_mutex_put        ; |1356| 
        ; call occurs [#__f_mutex_put] ; |1356| 
        MOVL      XAR4,XAR1             ; |1358| 
L66:    
        SUBB      SP,#2                 ; |1358| 
        MOVL      XAR2,*--SP            ; |1358| 
        MOVL      XAR1,*--SP            ; |1358| 
	.dwpsn	"fat_m.c",1359,1
        LRETR
        ; return occurs
	.dwattr DW$258, DW_AT_end_file("fat_m.c")
	.dwattr DW$258, DW_AT_end_line(0x54f)
	.dwattr DW$258, DW_AT_end_column(0x01)
	.dwendtag DW$258

	.sect	".text"
	.global	_fm_get_oem

DW$261	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_get_oem"), DW_AT_symbol_name("_fm_get_oem")
	.dwattr DW$261, DW_AT_low_pc(_fm_get_oem)
	.dwattr DW$261, DW_AT_high_pc(0x00)
	.dwattr DW$261, DW_AT_begin_file("fat_m.c")
	.dwattr DW$261, DW_AT_begin_line(0x568)
	.dwattr DW$261, DW_AT_begin_column(0x05)
	.dwattr DW$261, DW_AT_frame_base[DW_OP_breg20 -12]
	.dwattr DW$261, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",1385,1

;***************************************************************
;* FNAME: _fm_get_oem                   FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            1 Parameter,  3 Auto,  6 SOE     *
;***************************************************************

_fm_get_oem:
;* AR5   assigned to _drivenum
DW$262	.dwtag  DW_TAG_formal_parameter, DW_AT_name("drivenum"), DW_AT_symbol_name("_drivenum")
	.dwattr DW$262, DW_AT_type(*DW$T$10)
	.dwattr DW$262, DW_AT_location[DW_OP_reg14]
;* AR4   assigned to _str
DW$263	.dwtag  DW_TAG_formal_parameter, DW_AT_name("str"), DW_AT_symbol_name("_str")
	.dwattr DW$263, DW_AT_type(*DW$T$95)
	.dwattr DW$263, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _maxlen
DW$264	.dwtag  DW_TAG_formal_parameter, DW_AT_name("maxlen"), DW_AT_symbol_name("_maxlen")
	.dwattr DW$264, DW_AT_type(*DW$T$12)
	.dwattr DW$264, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOVL      XAR2,XAR4             ; |1385| 
        ADDB      SP,#4
        MOVZ      AR4,SP                ; |1389| 
        MOVL      XAR1,ACC              ; |1385| 
        MOVZ      AR3,AR5               ; |1385| 
        SUBB      XAR4,#4               ; |1389| 
        LCR       #_fnSetTask           ; |1389| 
        ; call occurs [#_fnSetTask] ; |1389| 
        CMPB      AL,#0                 ; |1389| 
        BF        L67,EQ                ; |1389| 
        ; branchcc occurs ; |1389| 
        MOVB      AL,#0
        BF        L68,UNC               ; |1389| 
        ; branch occurs ; |1389| 
L67:    
        MOV       *-SP[1],AR3           ; |1390| 
        MOVL      XAR5,XAR2             ; |1390| 
        MOVL      XAR4,*-SP[4]          ; |1390| 
        MOVL      ACC,XAR1              ; |1390| 
        LCR       #_fn_get_oem          ; |1390| 
        ; call occurs [#_fn_get_oem] ; |1390| 
        MOVL      XAR4,*-SP[4]          ; |1391| 
        MOVZ      AR1,AL                ; |1390| 
        LCR       #__f_mutex_put        ; |1391| 
        ; call occurs [#__f_mutex_put] ; |1391| 
        MOV       AL,AR1                ; |1392| 
L68:    
        SUBB      SP,#4                 ; |1392| 
        MOVL      XAR3,*--SP            ; |1392| 
        MOVL      XAR2,*--SP            ; |1392| 
        MOVL      XAR1,*--SP            ; |1392| 
	.dwpsn	"fat_m.c",1393,1
        LRETR
        ; return occurs
	.dwattr DW$261, DW_AT_end_file("fat_m.c")
	.dwattr DW$261, DW_AT_end_line(0x571)
	.dwattr DW$261, DW_AT_end_column(0x01)
	.dwendtag DW$261

	.sect	".text"
	.global	_fm_seteof

DW$265	.dwtag  DW_TAG_subprogram, DW_AT_name("fm_seteof"), DW_AT_symbol_name("_fm_seteof")
	.dwattr DW$265, DW_AT_low_pc(_fm_seteof)
	.dwattr DW$265, DW_AT_high_pc(0x00)
	.dwattr DW$265, DW_AT_begin_file("fat_m.c")
	.dwattr DW$265, DW_AT_begin_line(0x584)
	.dwattr DW$265, DW_AT_begin_column(0x05)
	.dwattr DW$265, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$265, DW_AT_skeletal(0x01)
	.dwpsn	"fat_m.c",1412,35

;***************************************************************
;* FNAME: _fm_seteof                    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  2 SOE     *
;***************************************************************

_fm_seteof:
;* AR4   assigned to _filehandle
DW$266	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filehandle"), DW_AT_symbol_name("_filehandle")
	.dwattr DW$266, DW_AT_type(*DW$T$119)
	.dwattr DW$266, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        ADDB      SP,#2
        MOVL      XAR1,XAR4             ; |1412| 
        MOVZ      AR4,SP                ; |1416| 
        SUBB      XAR4,#2               ; |1416| 
        LCR       #_fnSetTask           ; |1416| 
        ; call occurs [#_fnSetTask] ; |1416| 
        CMPB      AL,#0                 ; |1416| 
        BF        L69,EQ                ; |1416| 
        ; branchcc occurs ; |1416| 
        MOVB      AL,#22                ; |1416| 
        BF        L70,UNC               ; |1416| 
        ; branch occurs ; |1416| 
L69:    
        MOVL      XAR4,*-SP[2]          ; |1418| 
        MOVL      XAR5,XAR1             ; |1418| 
        LCR       #_fn_seteof           ; |1418| 
        ; call occurs [#_fn_seteof] ; |1418| 
        MOVL      XAR4,*-SP[2]          ; |1420| 
        MOVZ      AR1,AL                ; |1418| 
        LCR       #__f_mutex_put        ; |1420| 
        ; call occurs [#__f_mutex_put] ; |1420| 
        MOV       AL,AR1                ; |1422| 
L70:    
        SUBB      SP,#2                 ; |1422| 
        MOVL      XAR1,*--SP            ; |1422| 
	.dwpsn	"fat_m.c",1423,1
        LRETR
        ; return occurs
	.dwattr DW$265, DW_AT_end_file("fat_m.c")
	.dwattr DW$265, DW_AT_end_line(0x58f)
	.dwattr DW$265, DW_AT_end_column(0x01)
	.dwendtag DW$265

;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_memset
	.global	_fn_getversion
	.global	_fn_initvolume
	.global	_fn_delvolume
	.global	_fn_get_volume_count
	.global	_fn_get_volume_list
	.global	_fn_checkvolume
	.global	_fn_hardformat
	.global	_fn_format
	.global	_fn_getcwd
	.global	_fn_getdcwd
	.global	_fn_chdrive
	.global	_fn_getdrive
	.global	_fn_getfreespace
	.global	_fn_chdir
	.global	_fn_mkdir
	.global	_fn_rmdir
	.global	_fn_findfirst
	.global	_fn_findnext
	.global	_fn_rename
	.global	_fn_filelength
	.global	_fn_close
	.global	_fn_flush
	.global	_fn_open
	.global	_fn_truncate
	.global	_fn_read
	.global	_fn_write
	.global	_fn_seek
	.global	_fn_seteof
	.global	_fn_tell
	.global	_fn_getc
	.global	_fn_putc
	.global	_fn_rewind
	.global	_fn_eof
	.global	_fn_gettimedate
	.global	_fn_settimedate
	.global	_fn_delete
	.global	_fn_getattr
	.global	_fn_setattr
	.global	_fn_getlabel
	.global	_fn_setlabel
	.global	_fn_get_oem
	.global	__f_mutex_put
	.global	_fnSetTask
	.global	_g_multi

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x16)

DW$T$56	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$56, DW_AT_language(DW_LANG_C)
DW$267	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$268	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$269	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$55)
	.dwendtag DW$T$56

DW$T$60	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$59)
	.dwattr DW$T$60, DW_AT_address_class(0x16)

DW$T$64	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$64, DW_AT_language(DW_LANG_C)
DW$270	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
	.dwendtag DW$T$64

DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)
DW$T$66	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$66, DW_AT_address_class(0x16)
DW$T$9	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned short")
	.dwattr DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$9, DW_AT_byte_size(0x01)
DW$T$69	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$9)
	.dwattr DW$T$69, DW_AT_address_class(0x16)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)
DW$T$72	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$72, DW_AT_address_class(0x16)
DW$T$80	.dwtag  DW_TAG_typedef, DW_AT_name("F_INITFUNC"), DW_AT_type(*DW$T$79)
	.dwattr DW$T$80, DW_AT_language(DW_LANG_C)

DW$T$83	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$83, DW_AT_language(DW_LANG_C)
DW$271	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$272	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$273	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$80)
DW$274	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$83


DW$T$85	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$85, DW_AT_language(DW_LANG_C)
DW$275	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$85


DW$T$87	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$87, DW_AT_language(DW_LANG_C)

DW$T$89	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$89, DW_AT_language(DW_LANG_C)
DW$276	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$72)
	.dwendtag DW$T$89


DW$T$91	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$91, DW_AT_language(DW_LANG_C)
DW$277	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$278	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$91


DW$T$93	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$93, DW_AT_language(DW_LANG_C)
DW$279	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$280	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$281	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$T$93


DW$T$96	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$96, DW_AT_language(DW_LANG_C)
DW$282	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$283	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$95)
DW$284	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$96


DW$T$98	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$98, DW_AT_language(DW_LANG_C)
DW$285	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$286	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$287	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$95)
DW$288	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$98


DW$T$100	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$100, DW_AT_language(DW_LANG_C)
DW$289	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
	.dwendtag DW$T$100


DW$T$104	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$104, DW_AT_language(DW_LANG_C)
DW$290	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$291	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$292	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$103)
	.dwendtag DW$T$104


DW$T$108	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$108, DW_AT_language(DW_LANG_C)
DW$293	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$294	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
	.dwendtag DW$T$108


DW$T$112	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$112, DW_AT_language(DW_LANG_C)
DW$295	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$296	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
DW$297	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$111)
	.dwendtag DW$T$112


DW$T$114	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$114, DW_AT_language(DW_LANG_C)
DW$298	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$299	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$111)
	.dwendtag DW$T$114


DW$T$116	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$116, DW_AT_language(DW_LANG_C)
DW$300	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$301	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
DW$302	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
	.dwendtag DW$T$116


DW$T$120	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$120, DW_AT_language(DW_LANG_C)
DW$303	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$304	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$119)
	.dwendtag DW$T$120


DW$T$122	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$122, DW_AT_language(DW_LANG_C)
DW$305	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$306	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$119)
DW$307	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$308	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$T$122


DW$T$124	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$124, DW_AT_language(DW_LANG_C)
DW$309	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$310	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$311	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$119)
	.dwendtag DW$T$124


DW$T$126	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$126, DW_AT_language(DW_LANG_C)
DW$312	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$119)
	.dwendtag DW$T$126


DW$T$128	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$128, DW_AT_language(DW_LANG_C)
DW$313	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$314	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
DW$315	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
DW$316	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
	.dwendtag DW$T$128


DW$T$130	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$130, DW_AT_language(DW_LANG_C)
DW$317	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$318	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
DW$319	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$9)
DW$320	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$9)
	.dwendtag DW$T$130


DW$T$132	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$132, DW_AT_language(DW_LANG_C)
DW$321	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$322	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
DW$323	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$66)
	.dwendtag DW$T$132


DW$T$134	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$134, DW_AT_language(DW_LANG_C)
DW$324	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$325	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
DW$326	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$6)
	.dwendtag DW$T$134


DW$T$136	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$136, DW_AT_language(DW_LANG_C)
DW$327	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$328	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$329	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$95)
DW$330	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$T$136


DW$T$138	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$138, DW_AT_language(DW_LANG_C)
DW$331	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$332	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$333	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
	.dwendtag DW$T$138


DW$T$141	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$141, DW_AT_language(DW_LANG_C)
DW$334	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$140)
	.dwendtag DW$T$141


DW$T$143	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$143, DW_AT_language(DW_LANG_C)
DW$335	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$336	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$80)
DW$337	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$143


DW$T$144	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$144, DW_AT_language(DW_LANG_C)
DW$338	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$339	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$T$144


DW$T$145	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$145, DW_AT_language(DW_LANG_C)
DW$340	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$95)
DW$341	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$145


DW$T$146	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$146, DW_AT_language(DW_LANG_C)
DW$342	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$343	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$95)
DW$344	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$146


DW$T$147	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$147, DW_AT_language(DW_LANG_C)
DW$345	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$346	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$103)
	.dwendtag DW$T$147


DW$T$148	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$148, DW_AT_language(DW_LANG_C)
DW$347	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
	.dwendtag DW$T$148


DW$T$149	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$149, DW_AT_language(DW_LANG_C)
DW$348	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
DW$349	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$111)
	.dwendtag DW$T$149


DW$T$150	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$150, DW_AT_language(DW_LANG_C)
DW$350	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$111)
	.dwendtag DW$T$150


DW$T$151	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$151, DW_AT_language(DW_LANG_C)
DW$351	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
DW$352	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
	.dwendtag DW$T$151


DW$T$152	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$152, DW_AT_language(DW_LANG_C)
DW$353	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$119)
DW$354	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$355	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$T$152


DW$T$153	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$153, DW_AT_language(DW_LANG_C)
DW$356	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$357	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$119)
	.dwendtag DW$T$153


DW$T$154	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$154, DW_AT_language(DW_LANG_C)
DW$358	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
DW$359	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
DW$360	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
	.dwendtag DW$T$154


DW$T$155	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$155, DW_AT_language(DW_LANG_C)
DW$361	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
DW$362	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$9)
DW$363	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$9)
	.dwendtag DW$T$155


DW$T$156	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$156, DW_AT_language(DW_LANG_C)
DW$364	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
DW$365	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$66)
	.dwendtag DW$T$156


DW$T$157	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$157, DW_AT_language(DW_LANG_C)
DW$366	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
DW$367	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$6)
	.dwendtag DW$T$157


DW$T$158	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$158, DW_AT_language(DW_LANG_C)
DW$368	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$369	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$95)
DW$370	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$T$158


DW$T$159	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$159, DW_AT_language(DW_LANG_C)
DW$371	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$372	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
	.dwendtag DW$T$159

DW$T$12	.dwtag  DW_TAG_base_type, DW_AT_name("long")
	.dwattr DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$12, DW_AT_byte_size(0x02)

DW$T$166	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$166, DW_AT_language(DW_LANG_C)
DW$373	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$374	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
	.dwendtag DW$T$166


DW$T$168	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$168, DW_AT_language(DW_LANG_C)
DW$375	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$376	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$377	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$378	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$379	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$119)
	.dwendtag DW$T$168


DW$T$170	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$170, DW_AT_language(DW_LANG_C)
DW$380	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$381	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$60)
DW$382	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$383	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$384	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$119)
	.dwendtag DW$T$170


DW$T$172	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$172, DW_AT_language(DW_LANG_C)
DW$385	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$119)
	.dwendtag DW$T$172


DW$T$174	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$174, DW_AT_language(DW_LANG_C)
DW$386	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
	.dwendtag DW$T$174


DW$T$175	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$175, DW_AT_language(DW_LANG_C)
DW$387	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$388	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$389	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$390	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$119)
	.dwendtag DW$T$175


DW$T$176	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$176, DW_AT_language(DW_LANG_C)
DW$391	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$60)
DW$392	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$393	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$394	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$119)
	.dwendtag DW$T$176

DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)
DW$T$55	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$55, DW_AT_language(DW_LANG_C)
DW$T$95	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$95, DW_AT_address_class(0x16)

DW$T$179	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$95)
	.dwattr DW$T$179, DW_AT_language(DW_LANG_C)
DW$T$107	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$106)
	.dwattr DW$T$107, DW_AT_address_class(0x16)
DW$T$63	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$62)
	.dwattr DW$T$63, DW_AT_address_class(0x16)
DW$T$140	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$63)
	.dwattr DW$T$140, DW_AT_address_class(0x16)

DW$T$182	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$62)
	.dwattr DW$T$182, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$182, DW_AT_byte_size(0x1a)
DW$395	.dwtag  DW_TAG_subrange_type
	.dwattr DW$395, DW_AT_upper_bound(0x00)
	.dwendtag DW$T$182

DW$T$103	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$102)
	.dwattr DW$T$103, DW_AT_address_class(0x16)
DW$T$111	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$110)
	.dwattr DW$T$111, DW_AT_address_class(0x16)
DW$T$119	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$118)
	.dwattr DW$T$119, DW_AT_address_class(0x16)

DW$T$192	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$119)
	.dwattr DW$T$192, DW_AT_language(DW_LANG_C)
DW$396	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$397	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
DW$398	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
	.dwendtag DW$T$192


DW$T$193	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$119)
	.dwattr DW$T$193, DW_AT_language(DW_LANG_C)
DW$399	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$400	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
DW$401	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$T$193


DW$T$194	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$119)
	.dwattr DW$T$194, DW_AT_language(DW_LANG_C)
DW$402	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
DW$403	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
	.dwendtag DW$T$194


DW$T$195	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$119)
	.dwattr DW$T$195, DW_AT_language(DW_LANG_C)
DW$404	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
DW$405	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$T$195

DW$406	.dwtag  DW_TAG_far_type
DW$T$59	.dwtag  DW_TAG_const_type
	.dwattr DW$T$59, DW_AT_type(*DW$406)
DW$T$79	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$78)
	.dwattr DW$T$79, DW_AT_address_class(0x16)
DW$T$19	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$19, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$19, DW_AT_byte_size(0x01)
DW$407	.dwtag  DW_TAG_far_type
	.dwattr DW$407, DW_AT_type(*DW$T$19)
DW$T$106	.dwtag  DW_TAG_const_type
	.dwattr DW$T$106, DW_AT_type(*DW$407)
DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("F_MULTI"), DW_AT_type(*DW$T$24)
	.dwattr DW$T$62, DW_AT_language(DW_LANG_C)
DW$T$102	.dwtag  DW_TAG_typedef, DW_AT_name("F_SPACE"), DW_AT_type(*DW$T$46)
	.dwattr DW$T$102, DW_AT_language(DW_LANG_C)
DW$T$110	.dwtag  DW_TAG_typedef, DW_AT_name("F_FIND"), DW_AT_type(*DW$T$53)
	.dwattr DW$T$110, DW_AT_language(DW_LANG_C)
DW$T$118	.dwtag  DW_TAG_typedef, DW_AT_name("F_FILE"), DW_AT_type(*DW$T$54)
	.dwattr DW$T$118, DW_AT_language(DW_LANG_C)

DW$T$78	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$78, DW_AT_language(DW_LANG_C)
DW$408	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$77)
DW$409	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$78


DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_byte_size(0x1a)
DW$410	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$410, DW_AT_name("ID"), DW_AT_symbol_name("_ID")
	.dwattr DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$410, DW_AT_accessibility(DW_ACCESS_public)
DW$411	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$411, DW_AT_name("f_curdrive"), DW_AT_symbol_name("_f_curdrive")
	.dwattr DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$411, DW_AT_accessibility(DW_ACCESS_public)
DW$412	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$412, DW_AT_name("f_vols"), DW_AT_symbol_name("_f_vols")
	.dwattr DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$412, DW_AT_accessibility(DW_ACCESS_public)
DW$413	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$413, DW_AT_name("pmutex"), DW_AT_symbol_name("_pmutex")
	.dwattr DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$413, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24

DW$T$77	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$76)
	.dwattr DW$T$77, DW_AT_address_class(0x16)

DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$46, DW_AT_byte_size(0x10)
DW$414	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$414, DW_AT_name("total"), DW_AT_symbol_name("_total")
	.dwattr DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$414, DW_AT_accessibility(DW_ACCESS_public)
DW$415	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$415, DW_AT_name("free"), DW_AT_symbol_name("_free")
	.dwattr DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$415, DW_AT_accessibility(DW_ACCESS_public)
DW$416	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$416, DW_AT_name("used"), DW_AT_symbol_name("_used")
	.dwattr DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$416, DW_AT_accessibility(DW_ACCESS_public)
DW$417	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$417, DW_AT_name("bad"), DW_AT_symbol_name("_bad")
	.dwattr DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$417, DW_AT_accessibility(DW_ACCESS_public)
DW$418	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$418, DW_AT_name("total_high"), DW_AT_symbol_name("_total_high")
	.dwattr DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$418, DW_AT_accessibility(DW_ACCESS_public)
DW$419	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$419, DW_AT_name("free_high"), DW_AT_symbol_name("_free_high")
	.dwattr DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$419, DW_AT_accessibility(DW_ACCESS_public)
DW$420	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$420, DW_AT_name("used_high"), DW_AT_symbol_name("_used_high")
	.dwattr DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$420, DW_AT_accessibility(DW_ACCESS_public)
DW$421	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$421, DW_AT_name("bad_high"), DW_AT_symbol_name("_bad_high")
	.dwattr DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$421, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$46


DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$53, DW_AT_byte_size(0x52)
DW$422	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$422, DW_AT_name("filename"), DW_AT_symbol_name("_filename")
	.dwattr DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$422, DW_AT_accessibility(DW_ACCESS_public)
DW$423	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$423, DW_AT_name("name"), DW_AT_symbol_name("_name")
	.dwattr DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$423, DW_AT_accessibility(DW_ACCESS_public)
DW$424	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$424, DW_AT_name("ext"), DW_AT_symbol_name("_ext")
	.dwattr DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$424, DW_AT_accessibility(DW_ACCESS_public)
DW$425	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$425, DW_AT_name("attr"), DW_AT_symbol_name("_attr")
	.dwattr DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$425, DW_AT_accessibility(DW_ACCESS_public)
DW$426	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$426, DW_AT_name("ctime"), DW_AT_symbol_name("_ctime")
	.dwattr DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$426, DW_AT_accessibility(DW_ACCESS_public)
DW$427	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$427, DW_AT_name("cdate"), DW_AT_symbol_name("_cdate")
	.dwattr DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr DW$427, DW_AT_accessibility(DW_ACCESS_public)
DW$428	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$428, DW_AT_name("cluster"), DW_AT_symbol_name("_cluster")
	.dwattr DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$428, DW_AT_accessibility(DW_ACCESS_public)
DW$429	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$12)
	.dwattr DW$429, DW_AT_name("filesize"), DW_AT_symbol_name("_filesize")
	.dwattr DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$429, DW_AT_accessibility(DW_ACCESS_public)
DW$430	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$51)
	.dwattr DW$430, DW_AT_name("findfsname"), DW_AT_symbol_name("_findfsname")
	.dwattr DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$430, DW_AT_accessibility(DW_ACCESS_public)
DW$431	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$52)
	.dwattr DW$431, DW_AT_name("pos"), DW_AT_symbol_name("_pos")
	.dwattr DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$431, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$53


DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$54, DW_AT_byte_size(0x02)
DW$432	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$3)
	.dwattr DW$432, DW_AT_name("reference"), DW_AT_symbol_name("_reference")
	.dwattr DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$432, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$54

DW$T$23	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$13)
	.dwattr DW$T$23, DW_AT_address_class(0x16)

DW$T$20	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$20, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$20, DW_AT_byte_size(0x14)
DW$433	.dwtag  DW_TAG_subrange_type
	.dwattr DW$433, DW_AT_upper_bound(0x13)
	.dwendtag DW$T$20


DW$T$47	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$47, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$47, DW_AT_byte_size(0x08)
DW$434	.dwtag  DW_TAG_subrange_type
	.dwattr DW$434, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$47


DW$T$48	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$48, DW_AT_byte_size(0x03)
DW$435	.dwtag  DW_TAG_subrange_type
	.dwattr DW$435, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$48


DW$T$22	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$21)
	.dwattr DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$22, DW_AT_byte_size(0x14)
DW$436	.dwtag  DW_TAG_subrange_type
	.dwattr DW$436, DW_AT_upper_bound(0x00)
	.dwendtag DW$T$22

DW$T$76	.dwtag  DW_TAG_typedef, DW_AT_name("F_FUNC"), DW_AT_type(*DW$T$45)
	.dwattr DW$T$76, DW_AT_language(DW_LANG_C)
DW$T$51	.dwtag  DW_TAG_typedef, DW_AT_name("F_NAME"), DW_AT_type(*DW$T$49)
	.dwattr DW$T$51, DW_AT_language(DW_LANG_C)
DW$T$52	.dwtag  DW_TAG_typedef, DW_AT_name("F_POS"), DW_AT_type(*DW$T$50)
	.dwattr DW$T$52, DW_AT_language(DW_LANG_C)

DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$21, DW_AT_byte_size(0x14)
DW$437	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$437, DW_AT_name("cwd"), DW_AT_symbol_name("_cwd")
	.dwattr DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$437, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21


DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$45, DW_AT_byte_size(0x10)
DW$438	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$438, DW_AT_name("writesector"), DW_AT_symbol_name("_writesector")
	.dwattr DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$438, DW_AT_accessibility(DW_ACCESS_public)
DW$439	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$439, DW_AT_name("writemultiplesector"), DW_AT_symbol_name("_writemultiplesector")
	.dwattr DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$439, DW_AT_accessibility(DW_ACCESS_public)
DW$440	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$440, DW_AT_name("readsector"), DW_AT_symbol_name("_readsector")
	.dwattr DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$440, DW_AT_accessibility(DW_ACCESS_public)
DW$441	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$441, DW_AT_name("readmultiplesector"), DW_AT_symbol_name("_readmultiplesector")
	.dwattr DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$441, DW_AT_accessibility(DW_ACCESS_public)
DW$442	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$38)
	.dwattr DW$442, DW_AT_name("getphy"), DW_AT_symbol_name("_getphy")
	.dwattr DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$442, DW_AT_accessibility(DW_ACCESS_public)
DW$443	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$443, DW_AT_name("getstatus"), DW_AT_symbol_name("_getstatus")
	.dwattr DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$443, DW_AT_accessibility(DW_ACCESS_public)
DW$444	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$44)
	.dwattr DW$444, DW_AT_name("delfunc"), DW_AT_symbol_name("_delfunc")
	.dwattr DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$444, DW_AT_accessibility(DW_ACCESS_public)
DW$445	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$3)
	.dwattr DW$445, DW_AT_name("user_ptr"), DW_AT_symbol_name("_user_ptr")
	.dwattr DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$445, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$45


DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$49, DW_AT_byte_size(0x20)
DW$446	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$446, DW_AT_name("drivenum"), DW_AT_symbol_name("_drivenum")
	.dwattr DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$446, DW_AT_accessibility(DW_ACCESS_public)
DW$447	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$447, DW_AT_name("path"), DW_AT_symbol_name("_path")
	.dwattr DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$447, DW_AT_accessibility(DW_ACCESS_public)
DW$448	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$448, DW_AT_name("filename"), DW_AT_symbol_name("_filename")
	.dwattr DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$448, DW_AT_accessibility(DW_ACCESS_public)
DW$449	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$449, DW_AT_name("fileext"), DW_AT_symbol_name("_fileext")
	.dwattr DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$449, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$49


DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$50, DW_AT_byte_size(0x0c)
DW$450	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$450, DW_AT_name("cluster"), DW_AT_symbol_name("_cluster")
	.dwattr DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$450, DW_AT_accessibility(DW_ACCESS_public)
DW$451	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$451, DW_AT_name("prevcluster"), DW_AT_symbol_name("_prevcluster")
	.dwattr DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$451, DW_AT_accessibility(DW_ACCESS_public)
DW$452	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$452, DW_AT_name("sectorbegin"), DW_AT_symbol_name("_sectorbegin")
	.dwattr DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$452, DW_AT_accessibility(DW_ACCESS_public)
DW$453	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$453, DW_AT_name("sector"), DW_AT_symbol_name("_sector")
	.dwattr DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$453, DW_AT_accessibility(DW_ACCESS_public)
DW$454	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$454, DW_AT_name("sectorend"), DW_AT_symbol_name("_sectorend")
	.dwattr DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$454, DW_AT_accessibility(DW_ACCESS_public)
DW$455	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$455, DW_AT_name("pos"), DW_AT_symbol_name("_pos")
	.dwattr DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$455, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$50

DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("F_WRITESECTOR"), DW_AT_type(*DW$T$27)
	.dwattr DW$T$28, DW_AT_language(DW_LANG_C)
DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("F_READSECTOR"), DW_AT_type(*DW$T$27)
	.dwattr DW$T$32, DW_AT_language(DW_LANG_C)
DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("F_WRITEMULTIPLESECTOR"), DW_AT_type(*DW$T$30)
	.dwattr DW$T$31, DW_AT_language(DW_LANG_C)
DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("F_READMULTIPLESECTOR"), DW_AT_type(*DW$T$30)
	.dwattr DW$T$33, DW_AT_language(DW_LANG_C)
DW$T$38	.dwtag  DW_TAG_typedef, DW_AT_name("F_GETPHY"), DW_AT_type(*DW$T$37)
	.dwattr DW$T$38, DW_AT_language(DW_LANG_C)
DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("F_DELFUNC"), DW_AT_type(*DW$T$43)
	.dwattr DW$T$44, DW_AT_language(DW_LANG_C)
DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("F_GETSTATUS"), DW_AT_type(*DW$T$40)
	.dwattr DW$T$41, DW_AT_language(DW_LANG_C)
DW$T$27	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$26)
	.dwattr DW$T$27, DW_AT_address_class(0x16)
DW$T$30	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$29)
	.dwattr DW$T$30, DW_AT_address_class(0x16)
DW$T$37	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$36)
	.dwattr DW$T$37, DW_AT_address_class(0x16)
DW$T$43	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$42)
	.dwattr DW$T$43, DW_AT_address_class(0x16)
DW$T$40	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$39)
	.dwattr DW$T$40, DW_AT_address_class(0x16)

DW$T$26	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$26, DW_AT_language(DW_LANG_C)
DW$456	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$457	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$458	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$26


DW$T$29	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
DW$459	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$460	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$461	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$462	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$29


DW$T$36	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$36, DW_AT_language(DW_LANG_C)
DW$463	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$35)
DW$464	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$36


DW$T$42	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$42, DW_AT_language(DW_LANG_C)
DW$465	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$42


DW$T$39	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$39, DW_AT_language(DW_LANG_C)
DW$466	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$39

DW$T$35	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$34)
	.dwattr DW$T$35, DW_AT_address_class(0x16)
DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("F_PHY"), DW_AT_type(*DW$T$25)
	.dwattr DW$T$34, DW_AT_language(DW_LANG_C)

DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$25, DW_AT_byte_size(0x08)
DW$467	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$467, DW_AT_name("number_of_cylinders"), DW_AT_symbol_name("_number_of_cylinders")
	.dwattr DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$467, DW_AT_accessibility(DW_ACCESS_public)
DW$468	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$468, DW_AT_name("sector_per_track"), DW_AT_symbol_name("_sector_per_track")
	.dwattr DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$468, DW_AT_accessibility(DW_ACCESS_public)
DW$469	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$9)
	.dwattr DW$469, DW_AT_name("number_of_heads"), DW_AT_symbol_name("_number_of_heads")
	.dwattr DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$469, DW_AT_accessibility(DW_ACCESS_public)
DW$470	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$470, DW_AT_name("number_of_sectors"), DW_AT_symbol_name("_number_of_sectors")
	.dwattr DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$470, DW_AT_accessibility(DW_ACCESS_public)
DW$471	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$6)
	.dwattr DW$471, DW_AT_name("media_descriptor"), DW_AT_symbol_name("_media_descriptor")
	.dwattr DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$471, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


	.dwattr DW$187, DW_AT_external(0x01)
	.dwattr DW$187, DW_AT_type(*DW$T$10)
	.dwattr DW$181, DW_AT_external(0x01)
	.dwattr DW$181, DW_AT_type(*DW$T$10)
	.dwattr DW$161, DW_AT_external(0x01)
	.dwattr DW$161, DW_AT_type(*DW$T$10)
	.dwattr DW$203, DW_AT_external(0x01)
	.dwattr DW$203, DW_AT_type(*DW$T$10)
	.dwattr DW$243, DW_AT_external(0x01)
	.dwattr DW$243, DW_AT_type(*DW$T$10)
	.dwattr DW$163, DW_AT_external(0x01)
	.dwattr DW$163, DW_AT_type(*DW$T$10)
	.dwattr DW$233, DW_AT_external(0x01)
	.dwattr DW$233, DW_AT_type(*DW$T$10)
	.dwattr DW$201, DW_AT_external(0x01)
	.dwattr DW$201, DW_AT_type(*DW$T$12)
	.dwattr DW$193, DW_AT_external(0x01)
	.dwattr DW$193, DW_AT_type(*DW$T$10)
	.dwattr DW$196, DW_AT_external(0x01)
	.dwattr DW$196, DW_AT_type(*DW$T$10)
	.dwattr DW$205, DW_AT_external(0x01)
	.dwattr DW$205, DW_AT_type(*DW$T$10)
	.dwattr DW$171, DW_AT_external(0x01)
	.dwattr DW$171, DW_AT_type(*DW$T$10)
	.dwattr DW$261, DW_AT_external(0x01)
	.dwattr DW$261, DW_AT_type(*DW$T$10)
	.dwattr DW$165, DW_AT_external(0x01)
	.dwattr DW$165, DW_AT_type(*DW$T$10)
	.dwattr DW$166, DW_AT_external(0x01)
	.dwattr DW$166, DW_AT_type(*DW$T$10)
	.dwattr DW$245, DW_AT_external(0x01)
	.dwattr DW$245, DW_AT_type(*DW$T$10)
	.dwattr DW$226, DW_AT_external(0x01)
	.dwattr DW$226, DW_AT_type(*DW$T$10)
	.dwattr DW$174, DW_AT_external(0x01)
	.dwattr DW$174, DW_AT_type(*DW$T$10)
	.dwattr DW$177, DW_AT_external(0x01)
	.dwattr DW$177, DW_AT_type(*DW$T$10)
	.dwattr DW$183, DW_AT_external(0x01)
	.dwattr DW$183, DW_AT_type(*DW$T$10)
	.dwattr DW$184, DW_AT_external(0x01)
	.dwattr DW$184, DW_AT_type(*DW$T$10)
	.dwattr DW$251, DW_AT_external(0x01)
	.dwattr DW$251, DW_AT_type(*DW$T$10)
	.dwattr DW$235, DW_AT_external(0x01)
	.dwattr DW$235, DW_AT_type(*DW$T$10)
	.dwattr DW$156, DW_AT_external(0x01)
	.dwattr DW$156, DW_AT_type(*DW$T$95)
	.dwattr DW$168, DW_AT_external(0x01)
	.dwattr DW$168, DW_AT_type(*DW$T$10)
	.dwattr DW$157, DW_AT_external(0x01)
	.dwattr DW$157, DW_AT_type(*DW$T$10)
	.dwattr DW$189, DW_AT_external(0x01)
	.dwattr DW$189, DW_AT_type(*DW$T$10)
	.dwattr DW$207, DW_AT_external(0x01)
	.dwattr DW$207, DW_AT_type(*DW$T$119)
	.dwattr DW$228, DW_AT_external(0x01)
	.dwattr DW$228, DW_AT_type(*DW$T$10)
	.dwattr DW$210, DW_AT_external(0x01)
	.dwattr DW$210, DW_AT_type(*DW$T$12)
	.dwattr DW$198, DW_AT_external(0x01)
	.dwattr DW$198, DW_AT_type(*DW$T$10)
	.dwattr DW$231, DW_AT_external(0x01)
	.dwattr DW$231, DW_AT_type(*DW$T$10)
	.dwattr DW$191, DW_AT_external(0x01)
	.dwattr DW$191, DW_AT_type(*DW$T$10)
	.dwattr DW$220, DW_AT_external(0x01)
	.dwattr DW$220, DW_AT_type(*DW$T$10)
	.dwattr DW$248, DW_AT_external(0x01)
	.dwattr DW$248, DW_AT_type(*DW$T$10)
	.dwattr DW$265, DW_AT_external(0x01)
	.dwattr DW$265, DW_AT_type(*DW$T$10)
	.dwattr DW$255, DW_AT_external(0x01)
	.dwattr DW$255, DW_AT_type(*DW$T$10)
	.dwattr DW$239, DW_AT_external(0x01)
	.dwattr DW$239, DW_AT_type(*DW$T$10)
	.dwattr DW$224, DW_AT_external(0x01)
	.dwattr DW$224, DW_AT_type(*DW$T$12)
	.dwattr DW$258, DW_AT_external(0x01)
	.dwattr DW$258, DW_AT_type(*DW$T$119)
	.dwattr DW$215, DW_AT_external(0x01)
	.dwattr DW$215, DW_AT_type(*DW$T$12)
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

