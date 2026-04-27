;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Thu Aug 18 12:16:31 2016                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("slave485.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("memset"), DW_AT_symbol_name("_memset")
	.dwattr DW$1, DW_AT_type(*DW$T$3)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
	.dwendtag DW$1


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("MastertoSlaveSendBuffer"), DW_AT_symbol_name("_MastertoSlaveSendBuffer")
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$50)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$5


DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("CalcCRC"), DW_AT_symbol_name("_CalcCRC")
	.dwattr DW$8, DW_AT_declaration(0x01)
	.dwattr DW$8, DW_AT_external(0x01)
DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$50)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$50)
	.dwendtag DW$8


DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("SetSlaveVersion"), DW_AT_symbol_name("_SetSlaveVersion")
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)
DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$12


DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("SetRPMChan"), DW_AT_symbol_name("_SetRPMChan")
	.dwattr DW$14, DW_AT_declaration(0x01)
	.dwattr DW$14, DW_AT_external(0x01)
DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$14


DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("GetRPM"), DW_AT_symbol_name("_GetRPM")
	.dwattr DW$17, DW_AT_type(*DW$T$11)
	.dwattr DW$17, DW_AT_declaration(0x01)
	.dwattr DW$17, DW_AT_external(0x01)
DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$17


DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("SetImmScaledValue"), DW_AT_symbol_name("_SetImmScaledValue")
	.dwattr DW$19, DW_AT_declaration(0x01)
	.dwattr DW$19, DW_AT_external(0x01)
DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$19


DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("SetScaledValue"), DW_AT_symbol_name("_SetScaledValue")
	.dwattr DW$22, DW_AT_declaration(0x01)
	.dwattr DW$22, DW_AT_external(0x01)
DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$22


DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("GetScaledValue"), DW_AT_symbol_name("_GetScaledValue")
	.dwattr DW$25, DW_AT_type(*DW$T$10)
	.dwattr DW$25, DW_AT_declaration(0x01)
	.dwattr DW$25, DW_AT_external(0x01)
DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$25


DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("DCModeInit"), DW_AT_symbol_name("_DCModeInit")
	.dwattr DW$27, DW_AT_declaration(0x01)
	.dwattr DW$27, DW_AT_external(0x01)

DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("DCModeClear"), DW_AT_symbol_name("_DCModeClear")
	.dwattr DW$28, DW_AT_declaration(0x01)
	.dwattr DW$28, DW_AT_external(0x01)

DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("Status3Flags"), DW_AT_symbol_name("_Status3Flags")
	.dwattr DW$29, DW_AT_type(*DW$T$93)
	.dwattr DW$29, DW_AT_declaration(0x01)
	.dwattr DW$29, DW_AT_external(0x01)
DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$29


DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("TxRegtoSlave"), DW_AT_symbol_name("_TxRegtoSlave")
	.dwattr DW$31, DW_AT_declaration(0x01)
	.dwattr DW$31, DW_AT_external(0x01)

DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("RxStatusfromSlave"), DW_AT_symbol_name("_RxStatusfromSlave")
	.dwattr DW$32, DW_AT_declaration(0x01)
	.dwattr DW$32, DW_AT_external(0x01)

DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("ProcessReprogrammingTransferral"), DW_AT_symbol_name("_ProcessReprogrammingTransferral")
	.dwattr DW$33, DW_AT_declaration(0x01)
	.dwattr DW$33, DW_AT_external(0x01)
DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$50)
	.dwendtag DW$33


DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("SaveSafeStruct1"), DW_AT_symbol_name("_SaveSafeStruct1")
	.dwattr DW$38, DW_AT_type(*DW$T$10)
	.dwattr DW$38, DW_AT_declaration(0x01)
	.dwattr DW$38, DW_AT_external(0x01)

DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("SaveSafeStruct2"), DW_AT_symbol_name("_SaveSafeStruct2")
	.dwattr DW$39, DW_AT_type(*DW$T$10)
	.dwattr DW$39, DW_AT_declaration(0x01)
	.dwattr DW$39, DW_AT_external(0x01)

DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("NOPDelay"), DW_AT_symbol_name("_NOPDelay")
	.dwattr DW$40, DW_AT_type(*DW$T$10)
	.dwattr DW$40, DW_AT_declaration(0x01)
	.dwattr DW$40, DW_AT_external(0x01)
DW$41	.dwtag  DW_TAG_variable, DW_AT_name("settings"), DW_AT_symbol_name("_settings")
	.dwattr DW$41, DW_AT_type(*DW$T$100)
	.dwattr DW$41, DW_AT_declaration(0x01)
	.dwattr DW$41, DW_AT_external(0x01)
DW$42	.dwtag  DW_TAG_variable, DW_AT_name("safe1"), DW_AT_symbol_name("_safe1")
	.dwattr DW$42, DW_AT_type(*DW$T$101)
	.dwattr DW$42, DW_AT_declaration(0x01)
	.dwattr DW$42, DW_AT_external(0x01)
DW$43	.dwtag  DW_TAG_variable, DW_AT_name("safe2"), DW_AT_symbol_name("_safe2")
	.dwattr DW$43, DW_AT_type(*DW$T$102)
	.dwattr DW$43, DW_AT_declaration(0x01)
	.dwattr DW$43, DW_AT_external(0x01)
DW$44	.dwtag  DW_TAG_variable, DW_AT_name("timers"), DW_AT_symbol_name("_timers")
	.dwattr DW$44, DW_AT_type(*DW$T$104)
	.dwattr DW$44, DW_AT_declaration(0x01)
	.dwattr DW$44, DW_AT_external(0x01)
DW$45	.dwtag  DW_TAG_variable, DW_AT_name("allsensors"), DW_AT_symbol_name("_allsensors")
	.dwattr DW$45, DW_AT_type(*DW$T$106)
	.dwattr DW$45, DW_AT_declaration(0x01)
	.dwattr DW$45, DW_AT_external(0x01)
DW$46	.dwtag  DW_TAG_variable, DW_AT_name("config"), DW_AT_symbol_name("_config")
	.dwattr DW$46, DW_AT_type(*DW$T$108)
	.dwattr DW$46, DW_AT_declaration(0x01)
	.dwattr DW$46, DW_AT_external(0x01)
DW$47	.dwtag  DW_TAG_variable, DW_AT_name("receiveA"), DW_AT_symbol_name("_receiveA")
	.dwattr DW$47, DW_AT_type(*DW$T$109)
	.dwattr DW$47, DW_AT_declaration(0x01)
	.dwattr DW$47, DW_AT_external(0x01)
DW$48	.dwtag  DW_TAG_variable, DW_AT_name("versionreg"), DW_AT_symbol_name("_versionreg")
	.dwattr DW$48, DW_AT_type(*DW$T$88)
	.dwattr DW$48, DW_AT_declaration(0x01)
	.dwattr DW$48, DW_AT_external(0x01)
DW$49	.dwtag  DW_TAG_variable, DW_AT_name("sensor"), DW_AT_symbol_name("_sensor")
	.dwattr DW$49, DW_AT_type(*DW$T$112)
	.dwattr DW$49, DW_AT_declaration(0x01)
	.dwattr DW$49, DW_AT_external(0x01)
DW$50	.dwtag  DW_TAG_variable, DW_AT_name("status3"), DW_AT_symbol_name("_status3")
	.dwattr DW$50, DW_AT_type(*DW$T$95)
	.dwattr DW$50, DW_AT_declaration(0x01)
	.dwattr DW$50, DW_AT_external(0x01)
DW$51	.dwtag  DW_TAG_variable, DW_AT_name("reprogram"), DW_AT_symbol_name("_reprogram")
	.dwattr DW$51, DW_AT_type(*DW$T$115)
	.dwattr DW$51, DW_AT_declaration(0x01)
	.dwattr DW$51, DW_AT_external(0x01)
	.global	_slaveresponsemsg
_slaveresponsemsg:	.usect	".ebss",100,1,0
DW$52	.dwtag  DW_TAG_variable, DW_AT_name("slaveresponsemsg"), DW_AT_symbol_name("_slaveresponsemsg")
	.dwattr DW$52, DW_AT_location[DW_OP_addr _slaveresponsemsg]
	.dwattr DW$52, DW_AT_type(*DW$T$89)
	.dwattr DW$52, DW_AT_external(0x01)
	.global	_receivingmode
_receivingmode:	.usect	".ebss",1,1,0
DW$53	.dwtag  DW_TAG_variable, DW_AT_name("receivingmode"), DW_AT_symbol_name("_receivingmode")
	.dwattr DW$53, DW_AT_location[DW_OP_addr _receivingmode]
	.dwattr DW$53, DW_AT_type(*DW$T$11)
	.dwattr DW$53, DW_AT_external(0x01)
	.global	_slave485mb
_slave485mb:	.usect	".ebss",72,1,0
DW$54	.dwtag  DW_TAG_variable, DW_AT_name("slave485mb"), DW_AT_symbol_name("_slave485mb")
	.dwattr DW$54, DW_AT_location[DW_OP_addr _slave485mb]
	.dwattr DW$54, DW_AT_type(*DW$T$116)
	.dwattr DW$54, DW_AT_external(0x01)
;	C:\CCStudio_v3.3\C2000\cgtools\bin\opt2000.exe C:\Users\Andrew\AppData\Local\Temp\TI7842 C:\Users\Andrew\AppData\Local\Temp\TI7844 
;	C:\CCStudio_v3.3\C2000\cgtools\bin\ac2000.exe -q -D_INLINE -DLARGE_MODEL -IC:/CCStudio_v3.3/C2000/xdais/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/bios/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/rtdx/include/c2000 -IC:/CCStudio_v3.3/C2000/cgtools/include --version=28 --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\Andrew\AppData\Local\Temp\TI7842 --template_info_file C:\Users\Andrew\AppData\Local\Temp\TI7846 --object_file 
	.sect	".text"
	.global	_Slave485Init

DW$55	.dwtag  DW_TAG_subprogram, DW_AT_name("Slave485Init"), DW_AT_symbol_name("_Slave485Init")
	.dwattr DW$55, DW_AT_low_pc(_Slave485Init)
	.dwattr DW$55, DW_AT_high_pc(0x00)
	.dwattr DW$55, DW_AT_begin_file("slave485.c")
	.dwattr DW$55, DW_AT_begin_line(0x3e)
	.dwattr DW$55, DW_AT_begin_column(0x06)
	.dwattr DW$55, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$55, DW_AT_skeletal(0x01)
	.dwpsn	"slave485.c",63,1

;***************************************************************
;* FNAME: _Slave485Init                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_Slave485Init:
        MOVW      DP,#_slave485mb+69
        MOV       @_slave485mb+69,#0    ; |64| 
        MOVW      DP,#_timers+5
        MOVB      ACC,#140
        MOV       @_timers+5,#0         ; |65| 
        MOVB      XAR5,#0
        MOVW      DP,#_timers+42
        MOVL      XAR4,#_receiveA+9     ; |71| 
        MOV       @_timers+42,#0        ; |66| 
        MOVW      DP,#_receiveA+8
        MOV       @_receiveA+8,#0       ; |67| 
        MOVW      DP,#_receiveA+7
        MOV       @_receiveA+7,#0       ; |68| 
        MOVW      DP,#_slave485mb+70
        MOV       @_slave485mb+70,#0    ; |69| 
        MOVW      DP,#_slave485mb+71
        MOV       @_slave485mb+71,#1    ; |70| 
        LCR       #_memset              ; |71| 
        ; call occurs [#_memset] ; |71| 
        MOVW      DP,#_receivingmode
        MOVB      AL,#0
        MOV       @_receivingmode,#1    ; |72| 
        LCR       #_SetSlaveVersion     ; |73| 
        ; call occurs [#_SetSlaveVersion] ; |73| 
	.dwpsn	"slave485.c",74,1
        LRETR
        ; return occurs
	.dwattr DW$55, DW_AT_end_file("slave485.c")
	.dwattr DW$55, DW_AT_end_line(0x4a)
	.dwattr DW$55, DW_AT_end_column(0x01)
	.dwendtag DW$55

	.sect	".text"
	.global	_Slave485Modbus

DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("Slave485Modbus"), DW_AT_symbol_name("_Slave485Modbus")
	.dwattr DW$56, DW_AT_low_pc(_Slave485Modbus)
	.dwattr DW$56, DW_AT_high_pc(0x00)
	.dwattr DW$56, DW_AT_begin_file("slave485.c")
	.dwattr DW$56, DW_AT_begin_line(0x4d)
	.dwattr DW$56, DW_AT_begin_column(0x06)
	.dwattr DW$56, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$56, DW_AT_skeletal(0x01)
	.dwpsn	"slave485.c",78,1

;***************************************************************
;* FNAME: _Slave485Modbus               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_Slave485Modbus:
        MOVW      DP,#_reprogram+15
        MOV       AL,@_reprogram+15     ; |82| 
        CMPB      AL,#1                 ; |82| 
        BF        L11,EQ                ; |82| 
        ; branchcc occurs ; |82| 
        MOVW      DP,#_settings+17
        MOV       AL,@_settings+17      ; |85| 
        CMPB      AL,#1                 ; |85| 
        BF        L7,NEQ                ; |85| 
        ; branchcc occurs ; |85| 
        MOVW      DP,#_allsensors+2
        MOV       AL,@_allsensors+2     ; |85| 
        BF        L7,EQ                 ; |85| 
        ; branchcc occurs ; |85| 
        MOVW      DP,#_settings+31
        MOV       AL,@_settings+31      ; |85| 
        BF        L7,NEQ                ; |85| 
        ; branchcc occurs ; |85| 
        MOVW      DP,#_slave485mb+69
        MOV       AL,@_slave485mb+69    ; |87| 
        BF        L6,NEQ                ; |87| 
        ; branchcc occurs ; |87| 
        MOVW      DP,#_timers+42
        MOV       AL,@_timers+42        ; |87| 
        BF        L6,NEQ                ; |87| 
        ; branchcc occurs ; |87| 
        MOVW      DP,#_reprogram+13
        MOV       AL,@_reprogram+13     ; |90| 
        CMPB      AL,#1                 ; |90| 
        BF        L3,EQ                 ; |90| 
        ; branchcc occurs ; |90| 
        MOVW      DP,#_reprogram+14
        MOV       AL,@_reprogram+14     ; |91| 
        CMPB      AL,#1                 ; |91| 
        BF        L2,EQ                 ; |91| 
        ; branchcc occurs ; |91| 
        MOVW      DP,#_settings+18
        MOV       AL,@_settings+18      ; |92| 
        CMPB      AL,#1                 ; |92| 
        BF        L1,EQ                 ; |92| 
        ; branchcc occurs ; |92| 
        LCR       #_ReadChannelResults  ; |98| 
        ; call occurs [#_ReadChannelResults] ; |98| 
        BF        L4,UNC                ; |98| 
        ; branch occurs ; |98| 
L1:    
        LCR       #_SendScalingCommand  ; |95| 
        ; call occurs [#_SendScalingCommand] ; |95| 
        MOVW      DP,#_settings+18
        MOV       @_settings+18,#0      ; |96| 
        BF        L4,UNC                ; |97| 
        ; branch occurs ; |97| 
L2:    
        LCR       #_RxStatusfromSlave   ; |91| 
        ; call occurs [#_RxStatusfromSlave] ; |91| 
        BF        L4,UNC                ; |91| 
        ; branch occurs ; |91| 
L3:    
        LCR       #_TxRegtoSlave        ; |90| 
        ; call occurs [#_TxRegtoSlave] ; |90| 
L4:    
        MOVW      DP,#_settings+13
        MOV       AL,@_settings+13      ; |103| 
        CMPB      AL,#1                 ; |103| 
        BF        L5,EQ                 ; |103| 
        ; branchcc occurs ; |103| 
        MOVW      DP,#_timers+42
        MOV       @_timers+42,#60       ; |106| 
        BF        L6,UNC                ; |106| 
        ; branch occurs ; |106| 
L5:    
        MOVW      DP,#_timers+42
        MOV       @_timers+42,#20       ; |104| 
L6:    
        LCR       #_MasterModeReceive   ; |111| 
        ; call occurs [#_MasterModeReceive] ; |111| 
        BF        L11,UNC               ; |112| 
        ; branch occurs ; |112| 
L7:    
        MOVW      DP,#_settings+17
        MOV       AL,@_settings+17      ; |113| 
        BF        L11,NEQ               ; |113| 
        ; branchcc occurs ; |113| 
        MOVW      DP,#_receiveA+7
        MOV       AL,@_receiveA+7       ; |115| 
        BF        L8,EQ                 ; |115| 
        ; branchcc occurs ; |115| 
        MOVW      DP,#_receiveA+8
        CMP       AL,@_receiveA+8       ; |115| 
        BF        L10,NEQ               ; |115| 
        ; branchcc occurs ; |115| 
L8:    
        MOVW      DP,#_timers+6
        MOV       AL,@_timers+6         ; |120| 
        BF        L11,NEQ               ; |120| 
        ; branchcc occurs ; |120| 
        MOVW      DP,#_receiveA+7
        MOV       AL,@_receiveA+7       ; |120| 
        BF        L11,EQ                ; |120| 
        ; branchcc occurs ; |120| 
        LCR       #_ParseSlaveCmd       ; |122| 
        ; call occurs [#_ParseSlaveCmd] ; |122| 
        CMPB      AL,#1                 ; |122| 
        BF        L9,NEQ                ; |122| 
        ; branchcc occurs ; |122| 
        MOVB      ACC,#1
        MOVW      DP,#_config+16
        ADDL      @_config+16,ACC       ; |124| 
        LCR       #_SendSlaveResponse   ; |125| 
        ; call occurs [#_SendSlaveResponse] ; |125| 
L9:    
        MOVB      ACC,#140
        MOVB      XAR5,#0
        MOVL      XAR4,#_receiveA+9     ; |127| 
        LCR       #_memset              ; |127| 
        ; call occurs [#_memset] ; |127| 
        MOVW      DP,#_receiveA+8
        MOV       @_receiveA+8,#0       ; |128| 
        MOVW      DP,#_receiveA+7
        MOV       @_receiveA+7,#0       ; |129| 
        BF        L11,UNC               ; |129| 
        ; branch occurs ; |129| 
L10:    
        MOVW      DP,#_receiveA+8
        MOV       @_receiveA+8,AL       ; |117| 
        MOVW      DP,#_timers+6
        MOV       @_timers+6,#2         ; |118| 
        NOP
        NOP
L11:    
	.dwpsn	"slave485.c",132,1
        LRETR
        ; return occurs
	.dwattr DW$56, DW_AT_end_file("slave485.c")
	.dwattr DW$56, DW_AT_end_line(0x84)
	.dwattr DW$56, DW_AT_end_column(0x01)
	.dwendtag DW$56

	.sect	".text"
	.global	_ParseSlaveCmd

DW$57	.dwtag  DW_TAG_subprogram, DW_AT_name("ParseSlaveCmd"), DW_AT_symbol_name("_ParseSlaveCmd")
	.dwattr DW$57, DW_AT_low_pc(_ParseSlaveCmd)
	.dwattr DW$57, DW_AT_high_pc(0x00)
	.dwattr DW$57, DW_AT_begin_file("slave485.c")
	.dwattr DW$57, DW_AT_begin_line(0x89)
	.dwattr DW$57, DW_AT_begin_column(0x05)
	.dwattr DW$57, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$57, DW_AT_skeletal(0x01)
	.dwpsn	"slave485.c",138,1

;***************************************************************
;* FNAME: _ParseSlaveCmd                FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  4 SOE     *
;***************************************************************

_ParseSlaveCmd:
        MOVL      *SP++,XAR1
        MOVW      DP,#_receiveA+7
        MOVL      *SP++,XAR3
        ADDB      SP,#2
        MOVZ      AR5,SP                ; |144| 
        MOVL      XAR3,#_receiveA+9     ; |144| 
        MOV       AL,@_receiveA+7       ; |144| 
        MOVL      XAR4,XAR3             ; |144| 
        SUBB      XAR5,#2               ; |144| 
        ADDB      AL,#-2
        LCR       #_CalcCRC             ; |144| 
        ; call occurs [#_CalcCRC] ; |144| 
        MOVW      DP,#_receiveA+7
        MOVZ      AR0,@_receiveA+7      ; |145| 
        MOV       AH,AR0                ; |145| 
        ADDB      AH,#-2
        MOVZ      AR1,AH                ; |145| 
        MOV       AH,*-SP[2]            ; |145| 
        CMP       AH,*+XAR3[AR1]        ; |145| 
        BF        L12,NEQ               ; |145| 
        ; branchcc occurs ; |145| 
        MOV       AL,AR0                ; |145| 
        ADDB      AL,#-1
        MOVZ      AR0,AL                ; |145| 
        MOV       AL,*-SP[1]            ; |145| 
        CMP       AL,*+XAR3[AR0]        ; |145| 
        BF        L13,EQ                ; |145| 
        ; branchcc occurs ; |145| 
L12:    
        MOV       AL,#-3                ; |148| 
        BF        L19,UNC               ; |148| 
        ; branch occurs ; |148| 
L13:    
        MOV       AL,*+XAR3[0]          ; |150| 
        CMPB      AL,#1                 ; |150| 
        BF        L14,EQ                ; |150| 
        ; branchcc occurs ; |150| 
        MOV       AL,#-1                ; |203| 
        BF        L19,UNC               ; |203| 
        ; branch occurs ; |203| 
L14:    
        MOVW      DP,#_slave485mb
        MOV       @_slave485mb,AL       ; |153| 
        MOV       AL,*+XAR3[1]          ; |154| 
        MOVW      DP,#_slave485mb+1
        MOV       @_slave485mb+1,AL     ; |154| 
        MOV       AH,*+XAR3[3]          ; |157| 
        MOV       AL,*+XAR3[2]          ; |155| 
        ANDB      AH,#0xff              ; |157| 
        LSL       AL,8                  ; |156| 
        MOVW      DP,#_slave485mb+2
        ADD       AL,AH                 ; |157| 
        MOV       @_slave485mb+2,AL     ; |158| 
        MOV       AH,*+XAR3[5]          ; |161| 
        MOV       AL,*+XAR3[4]          ; |159| 
        ANDB      AH,#0xff              ; |161| 
        LSL       AL,8                  ; |160| 
        MOVW      DP,#_slave485mb+3
        ADD       AL,AH                 ; |161| 
        MOV       @_slave485mb+3,AL     ; |162| 
        MOVW      DP,#_slave485mb+1
        MOV       AL,@_slave485mb+1     ; |163| 
        CMPB      AL,#243               ; |163| 
        BF        L15,EQ                ; |163| 
        ; branchcc occurs ; |163| 
        MOVW      DP,#_settings+13
        MOV       AL,@_settings+13      ; |176| 
        CMPB      AL,#1                 ; |176| 
        BF        L16,NEQ               ; |176| 
        ; branchcc occurs ; |176| 
        LCR       #_DCModeClear         ; |179| 
        ; call occurs [#_DCModeClear] ; |179| 
        BF        L16,UNC               ; |179| 
        ; branch occurs ; |179| 
L15:    
        MOVW      DP,#_settings+13
        MOV       AL,@_settings+13      ; |165| 
        BF        L16,NEQ               ; |165| 
        ; branchcc occurs ; |165| 
        LCR       #_DCModeInit          ; |167| 
        ; call occurs [#_DCModeInit] ; |167| 
L16:    
        MOVW      DP,#_slave485mb+1
        MOV       AL,@_slave485mb+1     ; |185| 
        CMPB      AL,#16                ; |185| 
        BF        L18,NEQ               ; |185| 
        ; branchcc occurs ; |185| 
        MOVL      XAR4,#_receiveA+9     ; |187| 
        MOVW      DP,#_slave485mb+3
        MOV       AH,*+XAR4[5]          ; |189| 
        MOV       AL,*+XAR4[4]          ; |187| 
        ANDB      AH,#0xff              ; |189| 
        LSL       AL,8                  ; |188| 
        ADD       AL,AH                 ; |189| 
        MOV       @_slave485mb+3,AL     ; |190| 
        MOVW      DP,#_slave485mb+4
        MOV       AL,*+XAR4[6]          ; |191| 
        MOV       @_slave485mb+4,AL     ; |191| 
        MOVW      DP,#_slave485mb+3
        MOV       AL,@_slave485mb+3     ; |193| 
        MOVB      XAR1,#7               ; |192| 
        MOVB      XAR4,#0
        BF        L18,EQ                ; |193| 
        ; branchcc occurs ; |193| 
L17:    
DW$L$_ParseSlaveCmd$13$B:
	.dwpsn	"slave485.c",194,0
        MOV       AH,AR1
        MOVB      XAR0,#1               ; |197| 
        ADD       AR0,AH
        MOVL      XAR5,#_receiveA+9     ; |195| 
        MOV       AL,*+XAR5[AR1]        ; |195| 
        MOVW      DP,#_slave485mb+3
        MOV       AH,*+XAR5[AR0]        ; |197| 
        LSL       AL,8                  ; |196| 
        ANDB      AH,#0xff              ; |197| 
        ADDB      XAR1,#2               ; |199| 
        MOVZ      AR0,AR4               ; |198| 
        ADD       AL,AH                 ; |197| 
        MOVL      XAR5,#_slave485mb+5   ; |198| 
        ADDB      XAR4,#1               ; |193| 
        MOV       *+XAR5[AR0],AL        ; |198| 
        MOV       AL,AR4                ; |193| 
        CMP       AL,@_slave485mb+3     ; |193| 
	.dwpsn	"slave485.c",200,0
        BF        L17,LO                ; |193| 
        ; branchcc occurs ; |193| 
DW$L$_ParseSlaveCmd$13$E:
L18:    
        MOVB      AL,#1                 ; |205| 
L19:    
        SUBB      SP,#2                 ; |205| 
        MOVL      XAR3,*--SP            ; |205| 
        MOVL      XAR1,*--SP            ; |205| 
	.dwpsn	"slave485.c",206,1
        LRETR
        ; return occurs

DW$58	.dwtag  DW_TAG_loop
	.dwattr DW$58, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\slave485.asm:L17:1:1471518991")
	.dwattr DW$58, DW_AT_begin_file("slave485.c")
	.dwattr DW$58, DW_AT_begin_line(0xc1)
	.dwattr DW$58, DW_AT_end_line(0xc8)
DW$59	.dwtag  DW_TAG_loop_range
	.dwattr DW$59, DW_AT_low_pc(DW$L$_ParseSlaveCmd$13$B)
	.dwattr DW$59, DW_AT_high_pc(DW$L$_ParseSlaveCmd$13$E)
	.dwendtag DW$58

	.dwattr DW$57, DW_AT_end_file("slave485.c")
	.dwattr DW$57, DW_AT_end_line(0xce)
	.dwattr DW$57, DW_AT_end_column(0x01)
	.dwendtag DW$57

	.sect	".text"
	.global	_SendSlaveResponse

DW$60	.dwtag  DW_TAG_subprogram, DW_AT_name("SendSlaveResponse"), DW_AT_symbol_name("_SendSlaveResponse")
	.dwattr DW$60, DW_AT_low_pc(_SendSlaveResponse)
	.dwattr DW$60, DW_AT_high_pc(0x00)
	.dwattr DW$60, DW_AT_begin_file("slave485.c")
	.dwattr DW$60, DW_AT_begin_line(0xd4)
	.dwattr DW$60, DW_AT_begin_column(0x06)
	.dwattr DW$60, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$60, DW_AT_skeletal(0x01)
	.dwpsn	"slave485.c",213,1

;***************************************************************
;* FNAME: _SendSlaveResponse            FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  4 SOE     *
;***************************************************************

_SendSlaveResponse:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR3
        ADDB      SP,#2
        LCR       #_SlaveRegisters      ; |219| 
        ; call occurs [#_SlaveRegisters] ; |219| 
        MOVB      XAR1,#0
        MOVW      DP,#_slave485mb+1
        MOV       AL,@_slave485mb+1     ; |220| 
        CMPB      AL,#3                 ; |220| 
        BF        L20,EQ                ; |220| 
        ; branchcc occurs ; |220| 
        CMPB      AL,#243               ; |220| 
        BF        L20,EQ                ; |220| 
        ; branchcc occurs ; |220| 
        CMPB      AL,#16                ; |246| 
        BF        L24,NEQ               ; |246| 
        ; branchcc occurs ; |246| 
        MOVW      DP,#_slave485mb
        MOVL      XAR4,#_slaveresponsemsg ; |248| 
        MOV       AH,@_slave485mb       ; |248| 
        MOVW      DP,#_slave485mb+2
        MOV       *+XAR4[0],AH          ; |248| 
        MOVB      XAR1,#6               ; |254| 
        MOV       *+XAR4[1],AL          ; |249| 
        MOV       AL,@_slave485mb+2     ; |250| 
        MOV       AH,AL                 ; |250| 
        LSR       AH,8                  ; |250| 
        ANDB      AL,#255               ; |251| 
        MOV       *+XAR4[2],AH          ; |250| 
        MOVW      DP,#_slave485mb+3
        MOV       *+XAR4[3],AL          ; |251| 
        MOV       AL,@_slave485mb+3     ; |252| 
        MOV       AH,AL                 ; |252| 
        LSR       AH,8                  ; |252| 
        ANDB      AL,#255               ; |253| 
        MOV       *+XAR4[4],AH          ; |252| 
        MOV       *+XAR4[5],AL          ; |253| 
        BF        L24,UNC               ; |254| 
        ; branch occurs ; |254| 
L20:    
        MOVL      XAR4,#_slaveresponsemsg ; |222| 
        MOVW      DP,#_slave485mb+2
        MOV       *+XAR4[0],#1          ; |222| 
        MOV       *+XAR4[1],#3          ; |223| 
        MOV       AL,@_slave485mb+2     ; |226| 
        CMP       AL,#8400              ; |226| 
        BF        L21,LO                ; |226| 
        ; branchcc occurs ; |226| 
        CMP       AL,#8535              ; |226| 
        BF        L21,HI                ; |226| 
        ; branchcc occurs ; |226| 
        MOVW      DP,#_slave485mb+3
        MOVZ      AR6,@_slave485mb+3    ; |228| 
        MOV       ACC,AR6 << #1         ; |229| 
        MOV       *+XAR4[2],AL          ; |229| 
        BF        L22,UNC               ; |230| 
        ; branch occurs ; |230| 
L21:    
        MOVW      DP,#_slaveresponsemsg+2
        MOVB      XAR6,#61              ; |233| 
        MOV       @_slaveresponsemsg+2,#122 ; |234| 
L22:    
        MOV       AL,AR6                ; |238| 
        MOVB      XAR0,#0
        MOVB      XAR1,#3               ; |237| 
        BF        L24,EQ                ; |238| 
        ; branchcc occurs ; |238| 
L23:    
DW$L$_SendSlaveResponse$10$B:
	.dwpsn	"slave485.c",239,0
        MOVL      XAR4,#_slave485mb+5   ; |240| 
        MOV       AH,*+XAR4[AR0]        ; |240| 
        MOV       AL,AH                 ; |240| 
        LSR       AL,8                  ; |240| 
        MOVL      XAR4,#_slaveresponsemsg ; |240| 
        ANDB      AH,#255               ; |242| 
        MOV       *+XAR4[AR1],AL        ; |240| 
        ADDB      XAR0,#1               ; |238| 
        ADDB      XAR1,#1               ; |242| 
        MOV       AL,AR6                ; |238| 
        MOV       *+XAR4[AR1],AH        ; |242| 
        CMP       AL,AR0                ; |238| 
        ADDB      XAR1,#1               ; |243| 
	.dwpsn	"slave485.c",244,0
        BF        L23,HI                ; |238| 
        ; branchcc occurs ; |238| 
DW$L$_SendSlaveResponse$10$E:
L24:    
        MOVZ      AR5,SP                ; |256| 
        MOVL      XAR3,#_slaveresponsemsg ; |256| 
        MOVL      XAR4,XAR3             ; |256| 
        MOV       AL,AR1                ; |256| 
        SUBB      XAR5,#2               ; |256| 
        LCR       #_CalcCRC             ; |256| 
        ; call occurs [#_CalcCRC] ; |256| 
        MOV       AL,*-SP[2]            ; |257| 
        MOV       *+XAR3[AR1],AL        ; |257| 
        MOVB      XAR0,#1               ; |258| 
        MOV       AL,AR1
        ADD       AR0,AL
        MOV       AL,*-SP[1]            ; |258| 
        ADDB      XAR1,#2               ; |260| 
        MOVL      XAR4,XAR3             ; |260| 
        MOV       *+XAR3[AR0],AL        ; |258| 
        MOV       AL,AR1                ; |260| 
        LCR       #_MastertoSlaveSendBuffer ; |260| 
        ; call occurs [#_MastertoSlaveSendBuffer] ; |260| 
        SUBB      SP,#2
        MOVL      XAR3,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"slave485.c",261,1
        LRETR
        ; return occurs

DW$61	.dwtag  DW_TAG_loop
	.dwattr DW$61, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\slave485.asm:L23:1:1471518991")
	.dwattr DW$61, DW_AT_begin_file("slave485.c")
	.dwattr DW$61, DW_AT_begin_line(0xee)
	.dwattr DW$61, DW_AT_end_line(0xf4)
DW$62	.dwtag  DW_TAG_loop_range
	.dwattr DW$62, DW_AT_low_pc(DW$L$_SendSlaveResponse$10$B)
	.dwattr DW$62, DW_AT_high_pc(DW$L$_SendSlaveResponse$10$E)
	.dwendtag DW$61

	.dwattr DW$60, DW_AT_end_file("slave485.c")
	.dwattr DW$60, DW_AT_end_line(0x105)
	.dwattr DW$60, DW_AT_end_column(0x01)
	.dwendtag DW$60

	.sect	".text"
	.global	_SlaveRegisters

DW$63	.dwtag  DW_TAG_subprogram, DW_AT_name("SlaveRegisters"), DW_AT_symbol_name("_SlaveRegisters")
	.dwattr DW$63, DW_AT_low_pc(_SlaveRegisters)
	.dwattr DW$63, DW_AT_high_pc(0x00)
	.dwattr DW$63, DW_AT_begin_file("slave485.c")
	.dwattr DW$63, DW_AT_begin_line(0x109)
	.dwattr DW$63, DW_AT_begin_column(0x06)
	.dwattr DW$63, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$63, DW_AT_skeletal(0x01)
	.dwpsn	"slave485.c",266,1

;***************************************************************
;* FNAME: _SlaveRegisters               FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_SlaveRegisters:
        MOVL      *SP++,XAR1
        MOVW      DP,#_slave485mb+2
        MOVL      *SP++,XAR2
        MOVZ      AR2,@_slave485mb+2    ; |271| 
        MOVW      DP,#_slave485mb+3
        MOV       AL,@_slave485mb+3     ; |273| 
        MOVB      XAR1,#0
        BF        L44,EQ                ; |273| 
        ; branchcc occurs ; |273| 
L25:    
DW$L$_SlaveRegisters$2$B:
	.dwpsn	"slave485.c",274,0
        MOV       AL,AR2
        CMPB      AL,#14                ; |275| 
        BF        L41,LO                ; |275| 
        ; branchcc occurs ; |275| 
DW$L$_SlaveRegisters$2$E:
DW$L$_SlaveRegisters$3$B:
        CMPB      AL,#14                ; |280| 
        BF        L43,LO                ; |280| 
        ; branchcc occurs ; |280| 
DW$L$_SlaveRegisters$3$E:
DW$L$_SlaveRegisters$4$B:
        CMPB      AL,#28                ; |280| 
        BF        L40,LO                ; |280| 
        ; branchcc occurs ; |280| 
DW$L$_SlaveRegisters$4$E:
DW$L$_SlaveRegisters$5$B:
        CMPB      AL,#28                ; |284| 
        BF        L43,LO                ; |284| 
        ; branchcc occurs ; |284| 
DW$L$_SlaveRegisters$5$E:
DW$L$_SlaveRegisters$6$B:
        CMPB      AL,#32                ; |284| 
        BF        L37,LO                ; |284| 
        ; branchcc occurs ; |284| 
DW$L$_SlaveRegisters$6$E:
DW$L$_SlaveRegisters$7$B:
        CMPB      AL,#32                ; |288| 
        BF        L43,LO                ; |288| 
        ; branchcc occurs ; |288| 
DW$L$_SlaveRegisters$7$E:
DW$L$_SlaveRegisters$8$B:
        CMPB      AL,#46                ; |288| 
        BF        L35,LO                ; |288| 
        ; branchcc occurs ; |288| 
DW$L$_SlaveRegisters$8$E:
DW$L$_SlaveRegisters$9$B:
        CMPB      AL,#46                ; |304| 
        BF        L34,EQ                ; |304| 
        ; branchcc occurs ; |304| 
DW$L$_SlaveRegisters$9$E:
DW$L$_SlaveRegisters$10$B:
        CMPB      AL,#47                ; |309| 
        BF        L43,LO                ; |309| 
        ; branchcc occurs ; |309| 
DW$L$_SlaveRegisters$10$E:
DW$L$_SlaveRegisters$11$B:
        CMPB      AL,#61                ; |309| 
        BF        L33,LO                ; |309| 
        ; branchcc occurs ; |309| 
DW$L$_SlaveRegisters$11$E:
DW$L$_SlaveRegisters$12$B:
        CMP       AR2,#1028             ; |314| 
        BF        L30,EQ                ; |314| 
        ; branchcc occurs ; |314| 
DW$L$_SlaveRegisters$12$E:
DW$L$_SlaveRegisters$13$B:
        CMP       AR2,#1029             ; |323| 
        BF        L28,EQ                ; |323| 
        ; branchcc occurs ; |323| 
DW$L$_SlaveRegisters$13$E:
DW$L$_SlaveRegisters$14$B:
        CMP       AR2,#1030             ; |332| 
        BF        L26,EQ                ; |332| 
        ; branchcc occurs ; |332| 
DW$L$_SlaveRegisters$14$E:
DW$L$_SlaveRegisters$15$B:
        CMP       AR2,#8400             ; |343| 
        BF        L43,LO                ; |343| 
        ; branchcc occurs ; |343| 
DW$L$_SlaveRegisters$15$E:
DW$L$_SlaveRegisters$16$B:
        CMP       AR2,#8535             ; |343| 
        BF        L43,HI                ; |343| 
        ; branchcc occurs ; |343| 
DW$L$_SlaveRegisters$16$E:
DW$L$_SlaveRegisters$17$B:
        MOVL      XAR4,#_slave485mb+5   ; |345| 
        MOVW      DP,#_slave485mb+1
        MOVL      ACC,XAR4              ; |345| 
        ADDU      ACC,AR1               ; |345| 
        MOVZ      AR5,@_slave485mb+1    ; |345| 
        MOVL      XAR4,ACC              ; |345| 
        MOV       AL,AR2                ; |345| 
        MOV       AH,AR1                ; |345| 
        LCR       #_ProcessReprogrammingTransferral ; |345| 
        ; call occurs [#_ProcessReprogrammingTransferral] ; |345| 
        MOVB      AL,#20                ; |346| 
        LCR       #_NOPDelay            ; |346| 
        ; call occurs [#_NOPDelay] ; |346| 
        BF        L43,UNC               ; |346| 
        ; branch occurs ; |346| 
DW$L$_SlaveRegisters$17$E:
L26:    
DW$L$_SlaveRegisters$18$B:
        MOVW      DP,#_slave485mb+1
        MOV       AL,@_slave485mb+1     ; |334| 
        CMPB      AL,#16                ; |334| 
        BF        L27,EQ                ; |334| 
        ; branchcc occurs ; |334| 
DW$L$_SlaveRegisters$18$E:
DW$L$_SlaveRegisters$19$B:
        CMPB      AL,#6                 ; |334| 
        BF        L27,EQ                ; |334| 
        ; branchcc occurs ; |334| 
DW$L$_SlaveRegisters$19$E:
DW$L$_SlaveRegisters$20$B:
        MOVW      DP,#_safe2+8
        MOV       AL,@_safe2+8          ; |340| 
        BF        L42,UNC               ; |340| 
        ; branch occurs ; |340| 
DW$L$_SlaveRegisters$20$E:
L27:    
DW$L$_SlaveRegisters$21$B:
        MOVL      XAR4,#_slave485mb+5   ; |337| 
        MOVW      DP,#_safe2+8
        MOV       AL,*+XAR4[AR1]        ; |337| 
        MOV       @_safe2+8,AL          ; |337| 
        MOVW      DP,#_config+5
        MOV       @_config+5,AL         ; |337| 
        LCR       #_SaveSafeStruct2     ; |338| 
        ; call occurs [#_SaveSafeStruct2] ; |338| 
        BF        L43,UNC               ; |339| 
        ; branch occurs ; |339| 
DW$L$_SlaveRegisters$21$E:
L28:    
DW$L$_SlaveRegisters$22$B:
        MOVW      DP,#_slave485mb+1
        MOV       AL,@_slave485mb+1     ; |325| 
        CMPB      AL,#16                ; |325| 
        BF        L29,EQ                ; |325| 
        ; branchcc occurs ; |325| 
DW$L$_SlaveRegisters$22$E:
DW$L$_SlaveRegisters$23$B:
        CMPB      AL,#6                 ; |325| 
        BF        L29,EQ                ; |325| 
        ; branchcc occurs ; |325| 
DW$L$_SlaveRegisters$23$E:
DW$L$_SlaveRegisters$24$B:
        MOVW      DP,#_safe1+1
        MOV       AL,@_safe1+1          ; |330| 
        BF        L42,UNC               ; |330| 
        ; branch occurs ; |330| 
DW$L$_SlaveRegisters$24$E:
L29:    
DW$L$_SlaveRegisters$25$B:
        MOVL      XAR4,#_slave485mb+5   ; |327| 
        MOVW      DP,#_safe1+1
        MOV       AL,*+XAR4[AR1]        ; |327| 
        MOV       @_safe1+1,AL          ; |327| 
        MOVW      DP,#_config+4
        MOV       @_config+4,AL         ; |327| 
        BF        L32,UNC               ; |329| 
        ; branch occurs ; |329| 
DW$L$_SlaveRegisters$25$E:
L30:    
DW$L$_SlaveRegisters$26$B:
        MOVW      DP,#_slave485mb+1
        MOV       AL,@_slave485mb+1     ; |316| 
        CMPB      AL,#16                ; |316| 
        BF        L31,EQ                ; |316| 
        ; branchcc occurs ; |316| 
DW$L$_SlaveRegisters$26$E:
DW$L$_SlaveRegisters$27$B:
        CMPB      AL,#6                 ; |316| 
        BF        L31,EQ                ; |316| 
        ; branchcc occurs ; |316| 
DW$L$_SlaveRegisters$27$E:
DW$L$_SlaveRegisters$28$B:
        MOVW      DP,#_safe1
        MOV       AL,@_safe1            ; |321| 
        BF        L42,UNC               ; |321| 
        ; branch occurs ; |321| 
DW$L$_SlaveRegisters$28$E:
L31:    
DW$L$_SlaveRegisters$29$B:
        MOVL      XAR4,#_slave485mb+5   ; |318| 
        MOVW      DP,#_safe1
        MOV       AL,*+XAR4[AR1]        ; |318| 
        MOV       @_safe1,AL            ; |318| 
        MOVW      DP,#_config+3
        MOV       @_config+3,AL         ; |318| 
DW$L$_SlaveRegisters$29$E:
L32:    
DW$L$_SlaveRegisters$30$B:
        LCR       #_SaveSafeStruct1     ; |319| 
        ; call occurs [#_SaveSafeStruct1] ; |319| 
        BF        L43,UNC               ; |320| 
        ; branch occurs ; |320| 
DW$L$_SlaveRegisters$30$E:
L33:    
DW$L$_SlaveRegisters$31$B:
        MOVL      XAR4,#_sensor+4       ; |311| 
        ADDB      AL,#-47
        BF        L38,UNC               ; |312| 
        ; branch occurs ; |312| 
DW$L$_SlaveRegisters$31$E:
L34:    
DW$L$_SlaveRegisters$32$B:
        MOVW      DP,#_versionreg
        MOV       AL,@_versionreg       ; |306| 
        BF        L42,UNC               ; |307| 
        ; branch occurs ; |307| 
DW$L$_SlaveRegisters$32$E:
L35:    
DW$L$_SlaveRegisters$33$B:
        CMPB      AL,#32                ; |291| 
        BF        L36,NEQ               ; |291| 
        ; branchcc occurs ; |291| 
DW$L$_SlaveRegisters$33$E:
DW$L$_SlaveRegisters$34$B:
        ADDB      AL,#-32
        LCR       #_GetRPM              ; |293| 
        ; call occurs [#_GetRPM] ; |293| 
        MOVW      DP,#_allsensors+16
        TBIT      @_allsensors+16,#0    ; |294| 
        BF        L42,NTC               ; |294| 
        ; branchcc occurs ; |294| 
DW$L$_SlaveRegisters$34$E:
DW$L$_SlaveRegisters$35$B:
        OR        AL,#0x8000            ; |294| 
        BF        L42,UNC               ; |296| 
        ; branch occurs ; |296| 
DW$L$_SlaveRegisters$35$E:
L36:    
DW$L$_SlaveRegisters$36$B:
        MOVW      DP,#_allsensors+16
        AND       @_allsensors+16,#0xfffe ; |299| 
        ADDB      AL,#-32
        LCR       #_GetRPM              ; |300| 
        ; call occurs [#_GetRPM] ; |300| 
        BF        L42,UNC               ; |301| 
        ; branch occurs ; |301| 
DW$L$_SlaveRegisters$36$E:
L37:    
DW$L$_SlaveRegisters$37$B:
        MOVL      XAR4,#_sensor+17      ; |286| 
        ADDB      AL,#-28
DW$L$_SlaveRegisters$37$E:
L38:    
DW$L$_SlaveRegisters$38$B:
        MOV       T,#18                 ; |286| 
        MPYXU     ACC,T,AL              ; |286| 
        ADDL      XAR4,ACC
DW$L$_SlaveRegisters$38$E:
L39:    
DW$L$_SlaveRegisters$39$B:
        MOV       AL,*+XAR4[0]          ; |286| 
        BF        L42,UNC               ; |287| 
        ; branch occurs ; |287| 
DW$L$_SlaveRegisters$39$E:
L40:    
DW$L$_SlaveRegisters$40$B:
        ADDB      AL,#-14
        LCR       #_Status3Flags        ; |282| 
        ; call occurs [#_Status3Flags] ; |282| 
        BF        L39,UNC               ; |283| 
        ; branch occurs ; |283| 
DW$L$_SlaveRegisters$40$E:
L41:    
DW$L$_SlaveRegisters$41$B:
        LCR       #_GetScaledValue      ; |278| 
        ; call occurs [#_GetScaledValue] ; |278| 
DW$L$_SlaveRegisters$41$E:
L42:    
DW$L$_SlaveRegisters$42$B:
        MOVL      XAR4,#_slave485mb+5   ; |278| 
        MOV       *+XAR4[AR1],AL        ; |278| 
DW$L$_SlaveRegisters$42$E:
L43:    
DW$L$_SlaveRegisters$43$B:
        ADDB      XAR1,#1               ; |349| 
        MOVW      DP,#_slave485mb+3
        MOV       AL,AR1                ; |349| 
        ADDB      XAR2,#1               ; |348| 
        CMP       AL,@_slave485mb+3     ; |349| 
	.dwpsn	"slave485.c",350,0
        BF        L25,LO                ; |349| 
        ; branchcc occurs ; |349| 
DW$L$_SlaveRegisters$43$E:
L44:    
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"slave485.c",351,1
        LRETR
        ; return occurs

DW$64	.dwtag  DW_TAG_loop
	.dwattr DW$64, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\slave485.asm:L25:1:1471518991")
	.dwattr DW$64, DW_AT_begin_file("slave485.c")
	.dwattr DW$64, DW_AT_begin_line(0x111)
	.dwattr DW$64, DW_AT_end_line(0x15e)
DW$65	.dwtag  DW_TAG_loop_range
	.dwattr DW$65, DW_AT_low_pc(DW$L$_SlaveRegisters$2$B)
	.dwattr DW$65, DW_AT_high_pc(DW$L$_SlaveRegisters$2$E)
DW$66	.dwtag  DW_TAG_loop_range
	.dwattr DW$66, DW_AT_low_pc(DW$L$_SlaveRegisters$31$B)
	.dwattr DW$66, DW_AT_high_pc(DW$L$_SlaveRegisters$31$E)
DW$67	.dwtag  DW_TAG_loop_range
	.dwattr DW$67, DW_AT_low_pc(DW$L$_SlaveRegisters$37$B)
	.dwattr DW$67, DW_AT_high_pc(DW$L$_SlaveRegisters$37$E)
DW$68	.dwtag  DW_TAG_loop_range
	.dwattr DW$68, DW_AT_low_pc(DW$L$_SlaveRegisters$38$B)
	.dwattr DW$68, DW_AT_high_pc(DW$L$_SlaveRegisters$38$E)
DW$69	.dwtag  DW_TAG_loop_range
	.dwattr DW$69, DW_AT_low_pc(DW$L$_SlaveRegisters$40$B)
	.dwattr DW$69, DW_AT_high_pc(DW$L$_SlaveRegisters$40$E)
DW$70	.dwtag  DW_TAG_loop_range
	.dwattr DW$70, DW_AT_low_pc(DW$L$_SlaveRegisters$33$B)
	.dwattr DW$70, DW_AT_high_pc(DW$L$_SlaveRegisters$33$E)
DW$71	.dwtag  DW_TAG_loop_range
	.dwattr DW$71, DW_AT_low_pc(DW$L$_SlaveRegisters$20$B)
	.dwattr DW$71, DW_AT_high_pc(DW$L$_SlaveRegisters$20$E)
DW$72	.dwtag  DW_TAG_loop_range
	.dwattr DW$72, DW_AT_low_pc(DW$L$_SlaveRegisters$24$B)
	.dwattr DW$72, DW_AT_high_pc(DW$L$_SlaveRegisters$24$E)
DW$73	.dwtag  DW_TAG_loop_range
	.dwattr DW$73, DW_AT_low_pc(DW$L$_SlaveRegisters$28$B)
	.dwattr DW$73, DW_AT_high_pc(DW$L$_SlaveRegisters$28$E)
DW$74	.dwtag  DW_TAG_loop_range
	.dwattr DW$74, DW_AT_low_pc(DW$L$_SlaveRegisters$32$B)
	.dwattr DW$74, DW_AT_high_pc(DW$L$_SlaveRegisters$32$E)
DW$75	.dwtag  DW_TAG_loop_range
	.dwattr DW$75, DW_AT_low_pc(DW$L$_SlaveRegisters$34$B)
	.dwattr DW$75, DW_AT_high_pc(DW$L$_SlaveRegisters$34$E)
DW$76	.dwtag  DW_TAG_loop_range
	.dwattr DW$76, DW_AT_low_pc(DW$L$_SlaveRegisters$35$B)
	.dwattr DW$76, DW_AT_high_pc(DW$L$_SlaveRegisters$35$E)
DW$77	.dwtag  DW_TAG_loop_range
	.dwattr DW$77, DW_AT_low_pc(DW$L$_SlaveRegisters$36$B)
	.dwattr DW$77, DW_AT_high_pc(DW$L$_SlaveRegisters$36$E)
DW$78	.dwtag  DW_TAG_loop_range
	.dwattr DW$78, DW_AT_low_pc(DW$L$_SlaveRegisters$39$B)
	.dwattr DW$78, DW_AT_high_pc(DW$L$_SlaveRegisters$39$E)
DW$79	.dwtag  DW_TAG_loop_range
	.dwattr DW$79, DW_AT_low_pc(DW$L$_SlaveRegisters$41$B)
	.dwattr DW$79, DW_AT_high_pc(DW$L$_SlaveRegisters$41$E)
DW$80	.dwtag  DW_TAG_loop_range
	.dwattr DW$80, DW_AT_low_pc(DW$L$_SlaveRegisters$26$B)
	.dwattr DW$80, DW_AT_high_pc(DW$L$_SlaveRegisters$26$E)
DW$81	.dwtag  DW_TAG_loop_range
	.dwattr DW$81, DW_AT_low_pc(DW$L$_SlaveRegisters$27$B)
	.dwattr DW$81, DW_AT_high_pc(DW$L$_SlaveRegisters$27$E)
DW$82	.dwtag  DW_TAG_loop_range
	.dwattr DW$82, DW_AT_low_pc(DW$L$_SlaveRegisters$22$B)
	.dwattr DW$82, DW_AT_high_pc(DW$L$_SlaveRegisters$22$E)
DW$83	.dwtag  DW_TAG_loop_range
	.dwattr DW$83, DW_AT_low_pc(DW$L$_SlaveRegisters$23$B)
	.dwattr DW$83, DW_AT_high_pc(DW$L$_SlaveRegisters$23$E)
DW$84	.dwtag  DW_TAG_loop_range
	.dwattr DW$84, DW_AT_low_pc(DW$L$_SlaveRegisters$25$B)
	.dwattr DW$84, DW_AT_high_pc(DW$L$_SlaveRegisters$25$E)
DW$85	.dwtag  DW_TAG_loop_range
	.dwattr DW$85, DW_AT_low_pc(DW$L$_SlaveRegisters$29$B)
	.dwattr DW$85, DW_AT_high_pc(DW$L$_SlaveRegisters$29$E)
DW$86	.dwtag  DW_TAG_loop_range
	.dwattr DW$86, DW_AT_low_pc(DW$L$_SlaveRegisters$18$B)
	.dwattr DW$86, DW_AT_high_pc(DW$L$_SlaveRegisters$18$E)
DW$87	.dwtag  DW_TAG_loop_range
	.dwattr DW$87, DW_AT_low_pc(DW$L$_SlaveRegisters$19$B)
	.dwattr DW$87, DW_AT_high_pc(DW$L$_SlaveRegisters$19$E)
DW$88	.dwtag  DW_TAG_loop_range
	.dwattr DW$88, DW_AT_low_pc(DW$L$_SlaveRegisters$11$B)
	.dwattr DW$88, DW_AT_high_pc(DW$L$_SlaveRegisters$11$E)
DW$89	.dwtag  DW_TAG_loop_range
	.dwattr DW$89, DW_AT_low_pc(DW$L$_SlaveRegisters$12$B)
	.dwattr DW$89, DW_AT_high_pc(DW$L$_SlaveRegisters$12$E)
DW$90	.dwtag  DW_TAG_loop_range
	.dwattr DW$90, DW_AT_low_pc(DW$L$_SlaveRegisters$13$B)
	.dwattr DW$90, DW_AT_high_pc(DW$L$_SlaveRegisters$13$E)
DW$91	.dwtag  DW_TAG_loop_range
	.dwattr DW$91, DW_AT_low_pc(DW$L$_SlaveRegisters$14$B)
	.dwattr DW$91, DW_AT_high_pc(DW$L$_SlaveRegisters$14$E)
DW$92	.dwtag  DW_TAG_loop_range
	.dwattr DW$92, DW_AT_low_pc(DW$L$_SlaveRegisters$8$B)
	.dwattr DW$92, DW_AT_high_pc(DW$L$_SlaveRegisters$8$E)
DW$93	.dwtag  DW_TAG_loop_range
	.dwattr DW$93, DW_AT_low_pc(DW$L$_SlaveRegisters$9$B)
	.dwattr DW$93, DW_AT_high_pc(DW$L$_SlaveRegisters$9$E)
DW$94	.dwtag  DW_TAG_loop_range
	.dwattr DW$94, DW_AT_low_pc(DW$L$_SlaveRegisters$6$B)
	.dwattr DW$94, DW_AT_high_pc(DW$L$_SlaveRegisters$6$E)
DW$95	.dwtag  DW_TAG_loop_range
	.dwattr DW$95, DW_AT_low_pc(DW$L$_SlaveRegisters$4$B)
	.dwattr DW$95, DW_AT_high_pc(DW$L$_SlaveRegisters$4$E)
DW$96	.dwtag  DW_TAG_loop_range
	.dwattr DW$96, DW_AT_low_pc(DW$L$_SlaveRegisters$3$B)
	.dwattr DW$96, DW_AT_high_pc(DW$L$_SlaveRegisters$3$E)
DW$97	.dwtag  DW_TAG_loop_range
	.dwattr DW$97, DW_AT_low_pc(DW$L$_SlaveRegisters$5$B)
	.dwattr DW$97, DW_AT_high_pc(DW$L$_SlaveRegisters$5$E)
DW$98	.dwtag  DW_TAG_loop_range
	.dwattr DW$98, DW_AT_low_pc(DW$L$_SlaveRegisters$7$B)
	.dwattr DW$98, DW_AT_high_pc(DW$L$_SlaveRegisters$7$E)
DW$99	.dwtag  DW_TAG_loop_range
	.dwattr DW$99, DW_AT_low_pc(DW$L$_SlaveRegisters$10$B)
	.dwattr DW$99, DW_AT_high_pc(DW$L$_SlaveRegisters$10$E)
DW$100	.dwtag  DW_TAG_loop_range
	.dwattr DW$100, DW_AT_low_pc(DW$L$_SlaveRegisters$15$B)
	.dwattr DW$100, DW_AT_high_pc(DW$L$_SlaveRegisters$15$E)
DW$101	.dwtag  DW_TAG_loop_range
	.dwattr DW$101, DW_AT_low_pc(DW$L$_SlaveRegisters$16$B)
	.dwattr DW$101, DW_AT_high_pc(DW$L$_SlaveRegisters$16$E)
DW$102	.dwtag  DW_TAG_loop_range
	.dwattr DW$102, DW_AT_low_pc(DW$L$_SlaveRegisters$17$B)
	.dwattr DW$102, DW_AT_high_pc(DW$L$_SlaveRegisters$17$E)
DW$103	.dwtag  DW_TAG_loop_range
	.dwattr DW$103, DW_AT_low_pc(DW$L$_SlaveRegisters$21$B)
	.dwattr DW$103, DW_AT_high_pc(DW$L$_SlaveRegisters$21$E)
DW$104	.dwtag  DW_TAG_loop_range
	.dwattr DW$104, DW_AT_low_pc(DW$L$_SlaveRegisters$30$B)
	.dwattr DW$104, DW_AT_high_pc(DW$L$_SlaveRegisters$30$E)
DW$105	.dwtag  DW_TAG_loop_range
	.dwattr DW$105, DW_AT_low_pc(DW$L$_SlaveRegisters$42$B)
	.dwattr DW$105, DW_AT_high_pc(DW$L$_SlaveRegisters$42$E)
DW$106	.dwtag  DW_TAG_loop_range
	.dwattr DW$106, DW_AT_low_pc(DW$L$_SlaveRegisters$43$B)
	.dwattr DW$106, DW_AT_high_pc(DW$L$_SlaveRegisters$43$E)
	.dwendtag DW$64

	.dwattr DW$63, DW_AT_end_file("slave485.c")
	.dwattr DW$63, DW_AT_end_line(0x15f)
	.dwattr DW$63, DW_AT_end_column(0x01)
	.dwendtag DW$63

	.sect	".text"
	.global	_MasterModeReceive

DW$107	.dwtag  DW_TAG_subprogram, DW_AT_name("MasterModeReceive"), DW_AT_symbol_name("_MasterModeReceive")
	.dwattr DW$107, DW_AT_low_pc(_MasterModeReceive)
	.dwattr DW$107, DW_AT_high_pc(0x00)
	.dwattr DW$107, DW_AT_begin_file("slave485.c")
	.dwattr DW$107, DW_AT_begin_line(0x161)
	.dwattr DW$107, DW_AT_begin_column(0x06)
	.dwattr DW$107, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$107, DW_AT_skeletal(0x01)
	.dwpsn	"slave485.c",354,1

;***************************************************************
;* FNAME: _MasterModeReceive            FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  4 SOE     *
;***************************************************************

_MasterModeReceive:
        MOVL      *SP++,XAR1
        MOVW      DP,#_slave485mb+69
        MOVL      *SP++,XAR3
        MOV       AL,@_slave485mb+69    ; |360| 
        ADDB      SP,#2
        BF        L61,EQ                ; |360| 
        ; branchcc occurs ; |360| 
        MOVW      DP,#_timers+5
        MOV       AH,@_timers+5         ; |360| 
        BF        L53,NEQ               ; |360| 
        ; branchcc occurs ; |360| 
        CMPB      AL,#0                 ; |419| 
        BF        L61,EQ                ; |419| 
        ; branchcc occurs ; |419| 
        CMPB      AL,#10                ; |419| 
        BF        L50,HIS               ; |419| 
        ; branchcc occurs ; |419| 
        MOVW      DP,#_timers+5
        MOV       AL,@_timers+5         ; |419| 
        BF        L50,NEQ               ; |419| 
        ; branchcc occurs ; |419| 
        MOVB      ACC,#1
        MOVW      DP,#_config+18
        ADDL      @_config+18,ACC       ; |421| 
        MOVW      DP,#_receiveA+8
        MOV       @_receiveA+8,#0       ; |422| 
        MOVW      DP,#_receiveA+7
        MOV       @_receiveA+7,#0       ; |423| 
        MOVW      DP,#_settings+13
        MOV       AL,@_settings+13      ; |428| 
        CMPB      AL,#1                 ; |428| 
        BF        L45,EQ                ; |428| 
        ; branchcc occurs ; |428| 
        MOVW      DP,#_timers+42
        MOV       @_timers+42,#60       ; |431| 
        BF        L46,UNC               ; |431| 
        ; branch occurs ; |431| 
L45:    
        MOVW      DP,#_timers+42
        MOV       @_timers+42,#20       ; |429| 
L46:    
        MOVW      DP,#_receivingmode
        MOV       AL,@_receivingmode    ; |430| 
        CMPB      AL,#1                 ; |430| 
        BF        L49,EQ                ; |430| 
        ; branchcc occurs ; |430| 
        CMPB      AL,#3                 ; |437| 
        BF        L48,EQ                ; |437| 
        ; branchcc occurs ; |437| 
        CMPB      AL,#4                 ; |438| 
        BF        L47,EQ                ; |438| 
        ; branchcc occurs ; |438| 
        LCR       #_SendScalingCommand  ; |440| 
        ; call occurs [#_SendScalingCommand] ; |440| 
        BF        L63,UNC               ; |440| 
        ; branch occurs ; |440| 
L47:    
        LCR       #_RxStatusfromSlave   ; |438| 
        ; call occurs [#_RxStatusfromSlave] ; |438| 
        BF        L63,UNC               ; |438| 
        ; branch occurs ; |438| 
L48:    
        LCR       #_TxRegtoSlave        ; |437| 
        ; call occurs [#_TxRegtoSlave] ; |437| 
        BF        L63,UNC               ; |437| 
        ; branch occurs ; |437| 
L49:    
        LCR       #_ReadChannelResults  ; |435| 
        ; call occurs [#_ReadChannelResults] ; |435| 
        BF        L63,UNC               ; |435| 
        ; branch occurs ; |435| 
L50:    
        MOVW      DP,#_slave485mb+69
        MOV       AL,@_slave485mb+69    ; |445| 
        CMPB      AL,#10                ; |445| 
        BF        L61,LO                ; |445| 
        ; branchcc occurs ; |445| 
        MOVW      DP,#_reprogram+11
        MOV       @_reprogram+11,#0     ; |448| 
        MOVW      DP,#_receiveA+8
        MOVB      AL,#1                 ; |452| 
        MOV       @_receiveA+8,#0       ; |450| 
        MOVB      XAR1,#0
        MOVW      DP,#_receiveA+7
        MOV       @_receiveA+7,#0       ; |451| 
        MOVW      DP,#_slave485mb+70
        MOV       @_slave485mb+70,AL    ; |452| 
        MOVW      DP,#_slave485mb+71
        MOV       @_slave485mb+71,AL    ; |453| 
        MOVW      DP,#_allsensors+2
        MOV       AL,@_allsensors+2     ; |454| 
        BF        L61,EQ                ; |454| 
        ; branchcc occurs ; |454| 
L51:    
DW$L$_MasterModeReceive$18$B:
	.dwpsn	"slave485.c",455,0
        MOVW      DP,#_allsensors+1
        MOV       AL,@_allsensors+1     ; |457| 
        ADD       AL,AR1                ; |457| 
        MOVB      AH,#0
        LCR       #_SetScaledValue      ; |457| 
        ; call occurs [#_SetScaledValue] ; |457| 
        MOVW      DP,#_allsensors+1
        MOV       AL,@_allsensors+1     ; |458| 
        ADD       AL,AR1                ; |458| 
        MOVB      AH,#0
        LCR       #_SetRPMChan          ; |458| 
        ; call occurs [#_SetRPMChan] ; |458| 
        MOVW      DP,#_allsensors+1
        MOV       AL,@_allsensors+1     ; |459| 
        ADD       AL,AR1                ; |459| 
        MOVZ      AR6,AL                ; |459| 
        MOV       T,#18                 ; |459| 
        MOVL      XAR4,#_sensor         ; |459| 
        MPYXU     ACC,T,AR6             ; |459| 
        ADDL      XAR4,ACC
        MOVB      XAR0,#17              ; |459| 
        MOV       *+XAR4[AR0],#-32765   ; |459| 
        TBIT      *+XAR4[0],#0          ; |461| 
        BF        L52,NTC               ; |461| 
        ; branchcc occurs ; |461| 
DW$L$_MasterModeReceive$18$E:
DW$L$_MasterModeReceive$19$B:
        OR        *+XAR4[1],#0x0003     ; |462| 
        MOVL      XAR4,#_status3        ; |464| 
        MOVL      ACC,XAR4              ; |464| 
        ADDU      ACC,AR6               ; |464| 
        MOVL      XAR4,ACC              ; |464| 
        MOV       AL,*+XAR4[0]          ; |464| 
        ORB       AL,#0x01              ; |464| 
        MOV       AH,#256               ; |465| 
        MOV       *+XAR4[0],AL          ; |464| 
        OR        AH,AL                 ; |465| 
        MOV       *+XAR4[0],AH          ; |465| 
DW$L$_MasterModeReceive$19$E:
L52:    
DW$L$_MasterModeReceive$20$B:
        MOV       AL,AR1
        MOVW      DP,#_allsensors+2
        ADDB      AL,#1                 ; |454| 
        CMP       AL,@_allsensors+2     ; |454| 
        MOVZ      AR1,AL                ; |454| 
	.dwpsn	"slave485.c",468,0
        BF        L51,LO                ; |454| 
        ; branchcc occurs ; |454| 
DW$L$_MasterModeReceive$20$E:
        BF        L61,UNC               ; |454| 
        ; branch occurs ; |454| 
L53:    
        MOVW      DP,#_receiveA+7
        MOV       AL,@_receiveA+7       ; |362| 
        BF        L54,EQ                ; |362| 
        ; branchcc occurs ; |362| 
        MOVW      DP,#_receiveA+8
        CMP       AL,@_receiveA+8       ; |362| 
        BF        L60,NEQ               ; |362| 
        ; branchcc occurs ; |362| 
L54:    
        MOVW      DP,#_timers+6
        MOV       AL,@_timers+6         ; |371| 
        BF        L63,NEQ               ; |371| 
        ; branchcc occurs ; |371| 
        MOVW      DP,#_receiveA+7
        MOVZ      AR6,@_receiveA+7      ; |371| 
        MOV       AL,AR6                ; |371| 
        CMPB      AL,#3                 ; |371| 
        BF        L63,LOS               ; |371| 
        ; branchcc occurs ; |371| 
        MOVB      ACC,#1
        MOVW      DP,#_config+16
        MOVL      XAR3,#_receiveA+9     ; |374| 
        MOVZ      AR5,SP                ; |374| 
        ADDL      @_config+16,ACC       ; |373| 
        MOVL      XAR4,XAR3             ; |374| 
        MOV       AL,AR6                ; |374| 
        SUBB      XAR5,#2               ; |374| 
        ADDB      AL,#-2
        LCR       #_CalcCRC             ; |374| 
        ; call occurs [#_CalcCRC] ; |374| 
        MOVW      DP,#_receiveA+7
        MOVZ      AR0,@_receiveA+7      ; |375| 
        MOV       AH,AR0                ; |375| 
        ADDB      AH,#-2
        MOVZ      AR1,AH                ; |375| 
        MOV       AH,*-SP[2]            ; |375| 
        CMP       AH,*+XAR3[AR1]        ; |375| 
        BF        L59,NEQ               ; |375| 
        ; branchcc occurs ; |375| 
        MOV       AL,AR0                ; |375| 
        ADDB      AL,#-1
        MOVZ      AR0,AL                ; |375| 
        MOV       AL,*-SP[1]            ; |375| 
        CMP       AL,*+XAR3[AR0]        ; |375| 
        BF        L59,NEQ               ; |375| 
        ; branchcc occurs ; |375| 
        MOV       AL,*+XAR3[0]          ; |375| 
        CMPB      AL,#1                 ; |375| 
        BF        L59,NEQ               ; |375| 
        ; branchcc occurs ; |375| 
        MOVW      DP,#_receivingmode
        MOV       AL,@_receivingmode    ; |380| 
        CMPB      AL,#1                 ; |380| 
        BF        L57,NEQ               ; |380| 
        ; branchcc occurs ; |380| 
        MOV       AL,*+XAR3[1]          ; |382| 
        CMPB      AL,#3                 ; |382| 
        BF        L55,EQ                ; |382| 
        ; branchcc occurs ; |382| 
        CMPB      AL,#243               ; |382| 
        BF        L56,NEQ               ; |382| 
        ; branchcc occurs ; |382| 
L55:    
        MOVW      DP,#_receiveA+11
        MOV       AL,@_receiveA+11      ; |382| 
        CMPB      AL,#122               ; |382| 
        BF        L56,NEQ               ; |382| 
        ; branchcc occurs ; |382| 
        LCR       #_ProcessSlaveChanResponse ; |384| 
        ; call occurs [#_ProcessSlaveChanResponse] ; |384| 
L56:    
        MOVW      DP,#_slave485mb+70
        MOV       @_slave485mb+70,#0    ; |386| 
L57:    
        MOVW      DP,#_receivingmode
        MOV       AL,@_receivingmode    ; |389| 
        CMPB      AL,#3                 ; |389| 
        BF        L58,NEQ               ; |389| 
        ; branchcc occurs ; |389| 
        MOVB      AL,#100               ; |391| 
        LCR       #_NOPDelay            ; |391| 
        ; call occurs [#_NOPDelay] ; |391| 
        MOVW      DP,#_reprogram+11
        MOV       @_reprogram+11,#1     ; |392| 
L58:    
        MOVW      DP,#_receivingmode
        MOV       AL,@_receivingmode    ; |394| 
        CMPB      AL,#4                 ; |394| 
        BF        L59,NEQ               ; |394| 
        ; branchcc occurs ; |394| 
        MOVL      XAR4,#_receiveA+9     ; |398| 
        MOVW      DP,#_reprogram+12
        MOV       ACC,*+XAR4[3] << #8   ; |398| 
        MOV       AH,*+XAR4[4]          ; |399| 
        ANDB      AH,#0xff              ; |399| 
        ADD       AL,AH                 ; |399| 
        MOV       @_reprogram+12,AL     ; |402| 
L59:    
        MOVW      DP,#_receivingmode
        MOV       @_receivingmode,#0    ; |413| 
        MOVW      DP,#_receiveA+8
        MOV       @_receiveA+8,#0       ; |415| 
        MOVW      DP,#_receiveA+7
        MOV       @_receiveA+7,#0       ; |416| 
        BF        L62,UNC               ; |416| 
        ; branch occurs ; |416| 
L60:    
        MOVW      DP,#_receiveA+8
        MOV       @_receiveA+8,AL       ; |364| 
        MOVW      DP,#_timers+6
        MOV       @_timers+6,#2         ; |365| 
        BF        L63,UNC               ; |366| 
        ; branch occurs ; |366| 
L61:    
        MOVW      DP,#_timers+5
        MOV       @_timers+5,#0         ; |471| 
L62:    
        MOVW      DP,#_slave485mb+69
        MOV       @_slave485mb+69,#0    ; |470| 
L63:    
        SUBB      SP,#2
        MOVL      XAR3,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"slave485.c",473,1
        LRETR
        ; return occurs

DW$108	.dwtag  DW_TAG_loop
	.dwattr DW$108, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\slave485.asm:L51:1:1471518991")
	.dwattr DW$108, DW_AT_begin_file("slave485.c")
	.dwattr DW$108, DW_AT_begin_line(0x1c6)
	.dwattr DW$108, DW_AT_end_line(0x1d4)
DW$109	.dwtag  DW_TAG_loop_range
	.dwattr DW$109, DW_AT_low_pc(DW$L$_MasterModeReceive$18$B)
	.dwattr DW$109, DW_AT_high_pc(DW$L$_MasterModeReceive$18$E)
DW$110	.dwtag  DW_TAG_loop_range
	.dwattr DW$110, DW_AT_low_pc(DW$L$_MasterModeReceive$19$B)
	.dwattr DW$110, DW_AT_high_pc(DW$L$_MasterModeReceive$19$E)
DW$111	.dwtag  DW_TAG_loop_range
	.dwattr DW$111, DW_AT_low_pc(DW$L$_MasterModeReceive$20$B)
	.dwattr DW$111, DW_AT_high_pc(DW$L$_MasterModeReceive$20$E)
	.dwendtag DW$108

	.dwattr DW$107, DW_AT_end_file("slave485.c")
	.dwattr DW$107, DW_AT_end_line(0x1d9)
	.dwattr DW$107, DW_AT_end_column(0x01)
	.dwendtag DW$107

	.sect	".text"
	.global	_SendScalingCommand

DW$112	.dwtag  DW_TAG_subprogram, DW_AT_name("SendScalingCommand"), DW_AT_symbol_name("_SendScalingCommand")
	.dwattr DW$112, DW_AT_low_pc(_SendScalingCommand)
	.dwattr DW$112, DW_AT_high_pc(0x00)
	.dwattr DW$112, DW_AT_begin_file("slave485.c")
	.dwattr DW$112, DW_AT_begin_line(0x1de)
	.dwattr DW$112, DW_AT_begin_column(0x06)
	.dwattr DW$112, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$112, DW_AT_skeletal(0x01)
	.dwpsn	"slave485.c",479,1

;***************************************************************
;* FNAME: _SendScalingCommand           FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  2 SOE     *
;***************************************************************

_SendScalingCommand:
        MOVL      *SP++,XAR3
        MOVB      AL,#4                 ; |484| 
        MOVL      XAR3,#_slaveresponsemsg ; |482| 
        MOVW      DP,#_config+3
        ADDB      SP,#2
        MOV       *+XAR3[0],#1          ; |482| 
        MOVB      XAR0,#8               ; |491| 
        MOV       *+XAR3[1],#16         ; |483| 
        MOV       *+XAR3[2],AL          ; |484| 
        MOV       *+XAR3[3],AL          ; |485| 
        MOVZ      AR5,SP                ; |499| 
        MOV       *+XAR3[4],#0          ; |486| 
        MOV       *+XAR3[5],#3          ; |487| 
        MOV       *+XAR3[6],#6          ; |488| 
        MOV       AL,@_config+3         ; |490| 
        MOV       AH,AL                 ; |490| 
        MOVL      XAR4,XAR3             ; |499| 
        LSR       AH,8                  ; |490| 
        ANDB      AL,#255               ; |491| 
        MOV       *+XAR3[7],AH          ; |490| 
        MOVW      DP,#_config+4
        MOV       *+XAR3[AR0],AL        ; |491| 
        SUBB      XAR5,#2               ; |499| 
        MOV       AL,@_config+4         ; |493| 
        MOV       AH,AL                 ; |493| 
        MOVB      XAR0,#9               ; |493| 
        LSR       AH,8                  ; |493| 
        MOV       *+XAR3[AR0],AH        ; |493| 
        ANDB      AL,#255               ; |494| 
        MOVB      XAR0,#10              ; |494| 
        MOVW      DP,#_config+5
        MOV       *+XAR3[AR0],AL        ; |494| 
        MOV       AL,@_config+5         ; |496| 
        MOV       AH,AL                 ; |496| 
        MOVB      XAR0,#11              ; |496| 
        LSR       AH,8                  ; |496| 
        MOV       *+XAR3[AR0],AH        ; |496| 
        ANDB      AL,#255               ; |497| 
        MOVB      XAR0,#12              ; |497| 
        MOV       *+XAR3[AR0],AL        ; |497| 
        MOVB      AL,#13                ; |499| 
        LCR       #_CalcCRC             ; |499| 
        ; call occurs [#_CalcCRC] ; |499| 
        MOVB      XAR0,#13              ; |500| 
        MOV       AL,*-SP[2]            ; |500| 
        MOV       *+XAR3[AR0],AL        ; |500| 
        MOVB      XAR0,#14              ; |501| 
        MOV       AL,*-SP[1]            ; |501| 
        MOVL      XAR4,XAR3             ; |502| 
        MOV       *+XAR3[AR0],AL        ; |501| 
        MOVB      AL,#15                ; |502| 
        LCR       #_MastertoSlaveSendBuffer ; |502| 
        ; call occurs [#_MastertoSlaveSendBuffer] ; |502| 
        MOVW      DP,#_slave485mb+69
        INC       @_slave485mb+69       ; |504| 
        MOVW      DP,#_timers+5
        SUBB      SP,#2
        MOV       @_timers+5,#200       ; |505| 
        MOVW      DP,#_receivingmode
        MOV       @_receivingmode,#2    ; |506| 
        MOVL      XAR3,*--SP
	.dwpsn	"slave485.c",507,1
        LRETR
        ; return occurs
	.dwattr DW$112, DW_AT_end_file("slave485.c")
	.dwattr DW$112, DW_AT_end_line(0x1fb)
	.dwattr DW$112, DW_AT_end_column(0x01)
	.dwendtag DW$112

	.sect	".text"
	.global	_ReadChannelResults

DW$113	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadChannelResults"), DW_AT_symbol_name("_ReadChannelResults")
	.dwattr DW$113, DW_AT_low_pc(_ReadChannelResults)
	.dwattr DW$113, DW_AT_high_pc(0x00)
	.dwattr DW$113, DW_AT_begin_file("slave485.c")
	.dwattr DW$113, DW_AT_begin_line(0x202)
	.dwattr DW$113, DW_AT_begin_column(0x06)
	.dwattr DW$113, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$113, DW_AT_skeletal(0x01)
	.dwpsn	"slave485.c",515,1

;***************************************************************
;* FNAME: _ReadChannelResults           FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  2 SOE     *
;***************************************************************

_ReadChannelResults:
        MOVB      ACC,#1
        MOVW      DP,#_config+14
        MOVL      *SP++,XAR3
        ADDL      @_config+14,ACC       ; |518| 
        ADDB      SP,#2
        MOVW      DP,#_settings+13
        MOV       AL,@_settings+13      ; |520| 
        CMPB      AL,#1                 ; |520| 
        BF        L64,NEQ               ; |520| 
        ; branchcc occurs ; |520| 
        MOVB      AL,#243               ; |520| 
        BF        L65,UNC               ; |520| 
        ; branch occurs ; |520| 
L64:    
        MOVB      AL,#3                 ; |520| 
L65:    
        MOVW      DP,#_slaveresponsemsg+1
        MOVL      XAR3,#_slaveresponsemsg ; |524| 
        MOV       @_slaveresponsemsg+1,AL ; |520| 
        MOVZ      AR5,SP                ; |541| 
        MOV       *+XAR3[0],#1          ; |531| 
        MOVB      AL,#6                 ; |541| 
        MOVL      XAR4,XAR3             ; |541| 
        MOV       *+XAR3[2],#0          ; |533| 
        SUBB      XAR5,#2               ; |541| 
        MOV       *+XAR3[3],#0          ; |534| 
        MOV       *+XAR3[4],#0          ; |535| 
        MOV       *+XAR3[5],#61         ; |536| 
        LCR       #_CalcCRC             ; |541| 
        ; call occurs [#_CalcCRC] ; |541| 
        MOV       AL,*-SP[2]            ; |542| 
        MOV       *+XAR3[6],AL          ; |542| 
        MOV       AL,*-SP[1]            ; |543| 
        MOVL      XAR4,XAR3             ; |545| 
        MOV       *+XAR3[7],AL          ; |543| 
        MOVB      AL,#8                 ; |545| 
        LCR       #_MastertoSlaveSendBuffer ; |545| 
        ; call occurs [#_MastertoSlaveSendBuffer] ; |545| 
        MOVW      DP,#_slave485mb+69
        INC       @_slave485mb+69       ; |546| 
        MOVW      DP,#_timers+5
        SUBB      SP,#2
        MOV       @_timers+5,#200       ; |547| 
        MOVW      DP,#_receivingmode
        MOV       @_receivingmode,#1    ; |548| 
        MOVL      XAR3,*--SP
	.dwpsn	"slave485.c",549,1
        LRETR
        ; return occurs
	.dwattr DW$113, DW_AT_end_file("slave485.c")
	.dwattr DW$113, DW_AT_end_line(0x225)
	.dwattr DW$113, DW_AT_end_column(0x01)
	.dwendtag DW$113

	.sect	".text"
	.global	_ProcessSlaveChanResponse

DW$114	.dwtag  DW_TAG_subprogram, DW_AT_name("ProcessSlaveChanResponse"), DW_AT_symbol_name("_ProcessSlaveChanResponse")
	.dwattr DW$114, DW_AT_low_pc(_ProcessSlaveChanResponse)
	.dwattr DW$114, DW_AT_high_pc(0x00)
	.dwattr DW$114, DW_AT_begin_file("slave485.c")
	.dwattr DW$114, DW_AT_begin_line(0x22a)
	.dwattr DW$114, DW_AT_begin_column(0x06)
	.dwattr DW$114, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$114, DW_AT_skeletal(0x01)
	.dwpsn	"slave485.c",555,1

;***************************************************************
;* FNAME: _ProcessSlaveChanResponse     FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_ProcessSlaveChanResponse:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVB      XAR1,#3               ; |562| 
        MOVL      *SP++,XAR3
        MOVB      XAR2,#0
	.dwpsn	"slave485.c",564,0
        MOVB      XAR3,#0
L66:    
DW$L$_ProcessSlaveChanResponse$2$B:
	.dwpsn	"slave485.c",565,0
        MOVL      XAR4,#_receiveA+9     ; |566| 
        MOV       ACC,*+XAR4[AR1] << #8 ; |566| 
        ADDB      XAR1,#1               ; |568| 
        MOVZ      AR6,AL                ; |566| 
        MOVW      DP,#_allsensors+2
        MOV       AL,*+XAR4[AR1]        ; |568| 
        ANDB      AL,#0xff              ; |568| 
        ADD       AR6,AL                ; |568| 
        MOV       AL,AR3                ; |568| 
        CMP       AL,@_allsensors+2     ; |569| 
        BF        L68,HIS               ; |569| 
        ; branchcc occurs ; |569| 
DW$L$_ProcessSlaveChanResponse$2$E:
DW$L$_ProcessSlaveChanResponse$3$B:
        MOV       AH,AR6
        CMP       AH,#32767             ; |572| 
        BF        L67,NEQ               ; |572| 
        ; branchcc occurs ; |572| 
DW$L$_ProcessSlaveChanResponse$3$E:
DW$L$_ProcessSlaveChanResponse$4$B:
        MOVB      XAR2,#1               ; |576| 
        BF        L68,UNC               ; |576| 
        ; branch occurs ; |576| 
DW$L$_ProcessSlaveChanResponse$4$E:
L67:    
DW$L$_ProcessSlaveChanResponse$5$B:
        MOVW      DP,#_allsensors+1
        MOV       AL,@_allsensors+1     ; |574| 
        ADD       AL,AR3                ; |574| 
        LCR       #_SetScaledValue      ; |574| 
        ; call occurs [#_SetScaledValue] ; |574| 
DW$L$_ProcessSlaveChanResponse$5$E:
L68:    
DW$L$_ProcessSlaveChanResponse$6$B:
        ADDB      XAR3,#1               ; |564| 
        MOV       AL,AR3                ; |564| 
        ADDB      XAR1,#1               ; |579| 
        CMPB      AL,#14                ; |564| 
	.dwpsn	"slave485.c",580,0
        BF        L66,LO                ; |564| 
        ; branchcc occurs ; |564| 
DW$L$_ProcessSlaveChanResponse$6$E:
	.dwpsn	"slave485.c",583,0
        MOVB      XAR3,#0
L69:    
DW$L$_ProcessSlaveChanResponse$8$B:
	.dwpsn	"slave485.c",584,0
        MOVL      XAR4,#_receiveA+9     ; |585| 
        MOV       ACC,*+XAR4[AR1] << #8 ; |585| 
        ADDB      XAR1,#1               ; |587| 
        MOVZ      AR6,AL                ; |585| 
        MOVW      DP,#_allsensors+2
        MOV       AL,*+XAR4[AR1]        ; |587| 
        ANDB      AL,#0xff              ; |587| 
        ADD       AR6,AL                ; |587| 
        MOV       AL,AR3                ; |588| 
        ADDB      XAR1,#1               ; |588| 
        CMP       AL,@_allsensors+2     ; |589| 
        BF        L70,HIS               ; |589| 
        ; branchcc occurs ; |589| 
DW$L$_ProcessSlaveChanResponse$8$E:
DW$L$_ProcessSlaveChanResponse$9$B:
        MOVW      DP,#_allsensors+1
        MOV       AL,@_allsensors+1     ; |593| 
        ADD       AL,AR3                ; |593| 
        MOV       AH,AR6                ; |593| 
        LCR       #_StoreSPU2Status     ; |593| 
        ; call occurs [#_StoreSPU2Status] ; |593| 
DW$L$_ProcessSlaveChanResponse$9$E:
L70:    
DW$L$_ProcessSlaveChanResponse$10$B:
        ADDB      XAR3,#1               ; |583| 
        MOV       AL,AR3                ; |583| 
        CMPB      AL,#14                ; |583| 
	.dwpsn	"slave485.c",595,0
        BF        L69,LO                ; |583| 
        ; branchcc occurs ; |583| 
DW$L$_ProcessSlaveChanResponse$10$E:
        MOV       T,#18                 ; |602| 
	.dwpsn	"slave485.c",597,0
        MOVB      XAR3,#0
L71:    
DW$L$_ProcessSlaveChanResponse$12$B:
	.dwpsn	"slave485.c",598,0
        MOVL      XAR4,#_receiveA+9     ; |599| 
        MOV       ACC,*+XAR4[AR1] << #8 ; |599| 
        ADDB      XAR1,#1               ; |601| 
        MOVZ      AR6,AL                ; |599| 
        MOVW      DP,#_allsensors+1
        MOV       AL,*+XAR4[AR1]        ; |601| 
        ANDB      AL,#0xff              ; |601| 
        ADD       AR6,AL                ; |601| 
        MOV       AL,@_allsensors+1     ; |602| 
        ADD       AL,AR3                ; |602| 
        MOVL      XAR4,#_sensor+17      ; |602| 
        MPYXU     ACC,T,AL              ; |602| 
        ADDB      XAR3,#1               ; |597| 
        ADDL      XAR4,ACC
        MOV       AL,AR3                ; |597| 
        ADDB      XAR1,#1               ; |603| 
        CMPB      AL,#4                 ; |597| 
        MOV       *+XAR4[0],AR6         ; |602| 
	.dwpsn	"slave485.c",604,0
        BF        L71,LO                ; |597| 
        ; branchcc occurs ; |597| 
DW$L$_ProcessSlaveChanResponse$12$E:
	.dwpsn	"slave485.c",607,0
        MOVB      XAR3,#0
L72:    
DW$L$_ProcessSlaveChanResponse$14$B:
	.dwpsn	"slave485.c",608,0
        MOVL      XAR4,#_receiveA+9     ; |609| 
        MOV       ACC,*+XAR4[AR1] << #8 ; |609| 
        MOVZ      AR6,AL                ; |609| 
        ADDB      XAR1,#1               ; |611| 
        MOV       AL,*+XAR4[AR1]        ; |611| 
        ANDB      AL,#0xff              ; |611| 
        ADD       AR6,AL                ; |611| 
        MOV       AL,AR3                ; |611| 
        BF        L73,NEQ               ; |612| 
        ; branchcc occurs ; |612| 
DW$L$_ProcessSlaveChanResponse$14$E:
DW$L$_ProcessSlaveChanResponse$15$B:
        MOV       AH,AR6
        AND       AH,AH,#0x8000         ; |612| 
        BF        L73,EQ                ; |612| 
        ; branchcc occurs ; |612| 
DW$L$_ProcessSlaveChanResponse$15$E:
DW$L$_ProcessSlaveChanResponse$16$B:
        MOVW      DP,#_allsensors+16
        OR        @_allsensors+16,#0x0008 ; |614| 
DW$L$_ProcessSlaveChanResponse$16$E:
L73:    
DW$L$_ProcessSlaveChanResponse$17$B:
        MOV       AH,AR6
        MOVW      DP,#_allsensors+2
        AND       AH,#0x7fff            ; |616| 
        CMP       AL,@_allsensors+2     ; |617| 
        BF        L75,HIS               ; |617| 
        ; branchcc occurs ; |617| 
DW$L$_ProcessSlaveChanResponse$17$E:
DW$L$_ProcessSlaveChanResponse$18$B:
        MOV       AL,AR2
        CMPB      AL,#1                 ; |620| 
        BF        L74,NEQ               ; |620| 
        ; branchcc occurs ; |620| 
DW$L$_ProcessSlaveChanResponse$18$E:
DW$L$_ProcessSlaveChanResponse$19$B:
        MOVB      AH,#0
DW$L$_ProcessSlaveChanResponse$19$E:
L74:    
DW$L$_ProcessSlaveChanResponse$20$B:
        MOVW      DP,#_allsensors+1
        MOV       AL,@_allsensors+1     ; |621| 
        ADD       AL,AR3                ; |621| 
        LCR       #_SetRPMChan          ; |621| 
        ; call occurs [#_SetRPMChan] ; |621| 
DW$L$_ProcessSlaveChanResponse$20$E:
L75:    
DW$L$_ProcessSlaveChanResponse$21$B:
        ADDB      XAR3,#1               ; |607| 
        MOV       AL,AR3                ; |607| 
        ADDB      XAR1,#1               ; |623| 
        CMPB      AL,#14                ; |607| 
	.dwpsn	"slave485.c",624,0
        BF        L72,LO                ; |607| 
        ; branchcc occurs ; |607| 
DW$L$_ProcessSlaveChanResponse$21$E:
        MOVL      XAR4,#_receiveA+9     ; |626| 
        MOV       ACC,*+XAR4[AR1] << #8 ; |626| 
        MOVZ      AR6,AL                ; |626| 
        ADDB      XAR1,#1               ; |628| 
        MOV       AL,*+XAR4[AR1]        ; |628| 
        ANDB      AL,#0xff              ; |628| 
        ADD       AL,AR6                ; |628| 
        LCR       #_SetSlaveVersion     ; |630| 
        ; call occurs [#_SetSlaveVersion] ; |630| 
        MOVB      XAR3,#0
	.dwpsn	"slave485.c",632,0
        ADDB      XAR1,#1               ; |631| 
L76:    
DW$L$_ProcessSlaveChanResponse$23$B:
	.dwpsn	"slave485.c",633,0
        MOVL      XAR4,#_receiveA+9     ; |634| 
        MOV       ACC,*+XAR4[AR1] << #8 ; |634| 
        ADDB      XAR1,#1               ; |636| 
        MOVZ      AR6,AL                ; |634| 
        MOVW      DP,#_allsensors+2
        MOV       AL,*+XAR4[AR1]        ; |636| 
        ANDB      AL,#0xff              ; |636| 
        ADD       AR6,AL                ; |636| 
        MOV       AL,AR3                ; |636| 
        CMP       AL,@_allsensors+2     ; |637| 
        BF        L77,HIS               ; |637| 
        ; branchcc occurs ; |637| 
DW$L$_ProcessSlaveChanResponse$23$E:
DW$L$_ProcessSlaveChanResponse$24$B:
        MOV       AH,AR6
        CMP       AH,#32767             ; |637| 
        BF        L77,EQ                ; |637| 
        ; branchcc occurs ; |637| 
DW$L$_ProcessSlaveChanResponse$24$E:
DW$L$_ProcessSlaveChanResponse$25$B:
        MOVW      DP,#_allsensors+1
        MOV       AL,@_allsensors+1     ; |642| 
        ADD       AL,AR3                ; |642| 
        LCR       #_SetImmScaledValue   ; |642| 
        ; call occurs [#_SetImmScaledValue] ; |642| 
DW$L$_ProcessSlaveChanResponse$25$E:
L77:    
DW$L$_ProcessSlaveChanResponse$26$B:
        ADDB      XAR3,#1               ; |632| 
        MOV       AL,AR3                ; |632| 
        ADDB      XAR1,#1               ; |646| 
        CMPB      AL,#14                ; |632| 
	.dwpsn	"slave485.c",647,0
        BF        L76,LO                ; |632| 
        ; branchcc occurs ; |632| 
DW$L$_ProcessSlaveChanResponse$26$E:
        MOVB      AH,#0
        MOV       AL,AR2                ; |650| 
        BF        L78,EQ                ; |650| 
        ; branchcc occurs ; |650| 
        MOVB      AH,#1                 ; |650| 
L78:    
        MOVW      DP,#_slave485mb+71
        MOV       @_slave485mb+71,AH    ; |650| 
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"slave485.c",658,1
        LRETR
        ; return occurs

DW$115	.dwtag  DW_TAG_loop
	.dwattr DW$115, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\slave485.asm:L76:1:1471518991")
	.dwattr DW$115, DW_AT_begin_file("slave485.c")
	.dwattr DW$115, DW_AT_begin_line(0x278)
	.dwattr DW$115, DW_AT_end_line(0x287)
DW$116	.dwtag  DW_TAG_loop_range
	.dwattr DW$116, DW_AT_low_pc(DW$L$_ProcessSlaveChanResponse$23$B)
	.dwattr DW$116, DW_AT_high_pc(DW$L$_ProcessSlaveChanResponse$23$E)
DW$117	.dwtag  DW_TAG_loop_range
	.dwattr DW$117, DW_AT_low_pc(DW$L$_ProcessSlaveChanResponse$24$B)
	.dwattr DW$117, DW_AT_high_pc(DW$L$_ProcessSlaveChanResponse$24$E)
DW$118	.dwtag  DW_TAG_loop_range
	.dwattr DW$118, DW_AT_low_pc(DW$L$_ProcessSlaveChanResponse$25$B)
	.dwattr DW$118, DW_AT_high_pc(DW$L$_ProcessSlaveChanResponse$25$E)
DW$119	.dwtag  DW_TAG_loop_range
	.dwattr DW$119, DW_AT_low_pc(DW$L$_ProcessSlaveChanResponse$26$B)
	.dwattr DW$119, DW_AT_high_pc(DW$L$_ProcessSlaveChanResponse$26$E)
	.dwendtag DW$115


DW$120	.dwtag  DW_TAG_loop
	.dwattr DW$120, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\slave485.asm:L72:1:1471518991")
	.dwattr DW$120, DW_AT_begin_file("slave485.c")
	.dwattr DW$120, DW_AT_begin_line(0x25f)
	.dwattr DW$120, DW_AT_end_line(0x270)
DW$121	.dwtag  DW_TAG_loop_range
	.dwattr DW$121, DW_AT_low_pc(DW$L$_ProcessSlaveChanResponse$14$B)
	.dwattr DW$121, DW_AT_high_pc(DW$L$_ProcessSlaveChanResponse$14$E)
DW$122	.dwtag  DW_TAG_loop_range
	.dwattr DW$122, DW_AT_low_pc(DW$L$_ProcessSlaveChanResponse$18$B)
	.dwattr DW$122, DW_AT_high_pc(DW$L$_ProcessSlaveChanResponse$18$E)
DW$123	.dwtag  DW_TAG_loop_range
	.dwattr DW$123, DW_AT_low_pc(DW$L$_ProcessSlaveChanResponse$19$B)
	.dwattr DW$123, DW_AT_high_pc(DW$L$_ProcessSlaveChanResponse$19$E)
DW$124	.dwtag  DW_TAG_loop_range
	.dwattr DW$124, DW_AT_low_pc(DW$L$_ProcessSlaveChanResponse$15$B)
	.dwattr DW$124, DW_AT_high_pc(DW$L$_ProcessSlaveChanResponse$15$E)
DW$125	.dwtag  DW_TAG_loop_range
	.dwattr DW$125, DW_AT_low_pc(DW$L$_ProcessSlaveChanResponse$16$B)
	.dwattr DW$125, DW_AT_high_pc(DW$L$_ProcessSlaveChanResponse$16$E)
DW$126	.dwtag  DW_TAG_loop_range
	.dwattr DW$126, DW_AT_low_pc(DW$L$_ProcessSlaveChanResponse$17$B)
	.dwattr DW$126, DW_AT_high_pc(DW$L$_ProcessSlaveChanResponse$17$E)
DW$127	.dwtag  DW_TAG_loop_range
	.dwattr DW$127, DW_AT_low_pc(DW$L$_ProcessSlaveChanResponse$20$B)
	.dwattr DW$127, DW_AT_high_pc(DW$L$_ProcessSlaveChanResponse$20$E)
DW$128	.dwtag  DW_TAG_loop_range
	.dwattr DW$128, DW_AT_low_pc(DW$L$_ProcessSlaveChanResponse$21$B)
	.dwattr DW$128, DW_AT_high_pc(DW$L$_ProcessSlaveChanResponse$21$E)
	.dwendtag DW$120


DW$129	.dwtag  DW_TAG_loop
	.dwattr DW$129, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\slave485.asm:L71:1:1471518991")
	.dwattr DW$129, DW_AT_begin_file("slave485.c")
	.dwattr DW$129, DW_AT_begin_line(0x255)
	.dwattr DW$129, DW_AT_end_line(0x25c)
DW$130	.dwtag  DW_TAG_loop_range
	.dwattr DW$130, DW_AT_low_pc(DW$L$_ProcessSlaveChanResponse$12$B)
	.dwattr DW$130, DW_AT_high_pc(DW$L$_ProcessSlaveChanResponse$12$E)
	.dwendtag DW$129


DW$131	.dwtag  DW_TAG_loop
	.dwattr DW$131, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\slave485.asm:L69:1:1471518991")
	.dwattr DW$131, DW_AT_begin_file("slave485.c")
	.dwattr DW$131, DW_AT_begin_line(0x247)
	.dwattr DW$131, DW_AT_end_line(0x253)
DW$132	.dwtag  DW_TAG_loop_range
	.dwattr DW$132, DW_AT_low_pc(DW$L$_ProcessSlaveChanResponse$8$B)
	.dwattr DW$132, DW_AT_high_pc(DW$L$_ProcessSlaveChanResponse$8$E)
DW$133	.dwtag  DW_TAG_loop_range
	.dwattr DW$133, DW_AT_low_pc(DW$L$_ProcessSlaveChanResponse$9$B)
	.dwattr DW$133, DW_AT_high_pc(DW$L$_ProcessSlaveChanResponse$9$E)
DW$134	.dwtag  DW_TAG_loop_range
	.dwattr DW$134, DW_AT_low_pc(DW$L$_ProcessSlaveChanResponse$10$B)
	.dwattr DW$134, DW_AT_high_pc(DW$L$_ProcessSlaveChanResponse$10$E)
	.dwendtag DW$131


DW$135	.dwtag  DW_TAG_loop
	.dwattr DW$135, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\slave485.asm:L66:1:1471518991")
	.dwattr DW$135, DW_AT_begin_file("slave485.c")
	.dwattr DW$135, DW_AT_begin_line(0x234)
	.dwattr DW$135, DW_AT_end_line(0x244)
DW$136	.dwtag  DW_TAG_loop_range
	.dwattr DW$136, DW_AT_low_pc(DW$L$_ProcessSlaveChanResponse$2$B)
	.dwattr DW$136, DW_AT_high_pc(DW$L$_ProcessSlaveChanResponse$2$E)
DW$137	.dwtag  DW_TAG_loop_range
	.dwattr DW$137, DW_AT_low_pc(DW$L$_ProcessSlaveChanResponse$3$B)
	.dwattr DW$137, DW_AT_high_pc(DW$L$_ProcessSlaveChanResponse$3$E)
DW$138	.dwtag  DW_TAG_loop_range
	.dwattr DW$138, DW_AT_low_pc(DW$L$_ProcessSlaveChanResponse$4$B)
	.dwattr DW$138, DW_AT_high_pc(DW$L$_ProcessSlaveChanResponse$4$E)
DW$139	.dwtag  DW_TAG_loop_range
	.dwattr DW$139, DW_AT_low_pc(DW$L$_ProcessSlaveChanResponse$5$B)
	.dwattr DW$139, DW_AT_high_pc(DW$L$_ProcessSlaveChanResponse$5$E)
DW$140	.dwtag  DW_TAG_loop_range
	.dwattr DW$140, DW_AT_low_pc(DW$L$_ProcessSlaveChanResponse$6$B)
	.dwattr DW$140, DW_AT_high_pc(DW$L$_ProcessSlaveChanResponse$6$E)
	.dwendtag DW$135

	.dwattr DW$114, DW_AT_end_file("slave485.c")
	.dwattr DW$114, DW_AT_end_line(0x292)
	.dwattr DW$114, DW_AT_end_column(0x01)
	.dwendtag DW$114

	.sect	".text"
	.global	_StoreSPU2Status

DW$141	.dwtag  DW_TAG_subprogram, DW_AT_name("StoreSPU2Status"), DW_AT_symbol_name("_StoreSPU2Status")
	.dwattr DW$141, DW_AT_low_pc(_StoreSPU2Status)
	.dwattr DW$141, DW_AT_high_pc(0x00)
	.dwattr DW$141, DW_AT_begin_file("slave485.c")
	.dwattr DW$141, DW_AT_begin_line(0x297)
	.dwattr DW$141, DW_AT_begin_column(0x06)
	.dwattr DW$141, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$141, DW_AT_skeletal(0x01)
	.dwpsn	"slave485.c",664,1

;***************************************************************
;* FNAME: _StoreSPU2Status              FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_StoreSPU2Status:
;* AL    assigned to _chan
DW$142	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$142, DW_AT_type(*DW$T$11)
	.dwattr DW$142, DW_AT_location[DW_OP_reg0]
;* AH    assigned to _val
DW$143	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$143, DW_AT_type(*DW$T$11)
	.dwattr DW$143, DW_AT_location[DW_OP_reg1]
        MOVL      *SP++,XAR1
        MOVZ      AR1,AH                ; |664| 
        LCR       #_Status3Flags        ; |669| 
        ; call occurs [#_Status3Flags] ; |669| 
        AND       AL,AR1,#0x0001        ; |671| 
        AND       AH,*+XAR4[0],#0xfffe  ; |671| 
        OR        AL,AH                 ; |671| 
        AND       AH,AL,#0xfffd         ; |672| 
        MOV       *+XAR4[0],AL          ; |671| 
        AND       AL,AR1,#0x0002        ; |672| 
        OR        AL,AH                 ; |672| 
        AND       AH,AL,#0xfffb         ; |673| 
        MOV       *+XAR4[0],AL          ; |672| 
        AND       AL,AR1,#0x0004        ; |673| 
        OR        AL,AH                 ; |673| 
        MOV       *+XAR4[0],AL          ; |673| 
        MOVL      XAR1,*--SP
	.dwpsn	"slave485.c",677,1
        LRETR
        ; return occurs
	.dwattr DW$141, DW_AT_end_file("slave485.c")
	.dwattr DW$141, DW_AT_end_line(0x2a5)
	.dwattr DW$141, DW_AT_end_column(0x01)
	.dwendtag DW$141

;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_memset
	.global	_MastertoSlaveSendBuffer
	.global	_CalcCRC
	.global	_SetSlaveVersion
	.global	_SetRPMChan
	.global	_GetRPM
	.global	_SetImmScaledValue
	.global	_SetScaledValue
	.global	_GetScaledValue
	.global	_DCModeInit
	.global	_DCModeClear
	.global	_Status3Flags
	.global	_TxRegtoSlave
	.global	_RxStatusfromSlave
	.global	_ProcessReprogrammingTransferral
	.global	_SaveSafeStruct1
	.global	_SaveSafeStruct2
	.global	_NOPDelay
	.global	_settings
	.global	_safe1
	.global	_safe2
	.global	_timers
	.global	_allsensors
	.global	_config
	.global	_receiveA
	.global	_versionreg
	.global	_sensor
	.global	_status3
	.global	_reprogram

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x16)

DW$T$64	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$64, DW_AT_language(DW_LANG_C)
DW$144	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$145	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$146	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
	.dwendtag DW$T$64


DW$T$66	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$66, DW_AT_language(DW_LANG_C)
DW$147	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$50)
DW$148	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$66


DW$T$68	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$68, DW_AT_language(DW_LANG_C)
DW$149	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$50)
DW$150	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$151	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$50)
	.dwendtag DW$T$68


DW$T$70	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$70, DW_AT_language(DW_LANG_C)
DW$152	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$70


DW$T$72	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$72, DW_AT_language(DW_LANG_C)
DW$153	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$154	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$72


DW$T$74	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$74, DW_AT_language(DW_LANG_C)
DW$155	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$156	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$74


DW$T$76	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$76, DW_AT_language(DW_LANG_C)

DW$T$78	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$78, DW_AT_language(DW_LANG_C)
DW$157	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$158	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$159	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$160	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$50)
	.dwendtag DW$T$78

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)

DW$T$80	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$80, DW_AT_language(DW_LANG_C)
DW$161	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$80


DW$T$82	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$82, DW_AT_language(DW_LANG_C)

DW$T$84	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$84, DW_AT_language(DW_LANG_C)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)
DW$T$50	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$50, DW_AT_address_class(0x16)

DW$T$86	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$86, DW_AT_language(DW_LANG_C)
DW$162	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$86

DW$163	.dwtag  DW_TAG_far_type
	.dwattr DW$163, DW_AT_type(*DW$T$11)
DW$T$88	.dwtag  DW_TAG_const_type
	.dwattr DW$T$88, DW_AT_type(*DW$163)

DW$T$89	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$89, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$89, DW_AT_byte_size(0x64)
DW$164	.dwtag  DW_TAG_subrange_type
	.dwattr DW$164, DW_AT_upper_bound(0x63)
	.dwendtag DW$T$89

DW$T$63	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$63, DW_AT_language(DW_LANG_C)
DW$T$93	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$92)
	.dwattr DW$T$93, DW_AT_address_class(0x16)

DW$T$94	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$93)
	.dwattr DW$T$94, DW_AT_language(DW_LANG_C)
DW$165	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$94


DW$T$95	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$92)
	.dwattr DW$T$95, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$95, DW_AT_byte_size(0x1c)
DW$166	.dwtag  DW_TAG_subrange_type
	.dwattr DW$166, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$95

DW$T$100	.dwtag  DW_TAG_typedef, DW_AT_name("settingsstruct"), DW_AT_type(*DW$T$21)
	.dwattr DW$T$100, DW_AT_language(DW_LANG_C)
DW$T$101	.dwtag  DW_TAG_typedef, DW_AT_name("safestruct1struct"), DW_AT_type(*DW$T$25)
	.dwattr DW$T$101, DW_AT_language(DW_LANG_C)
DW$T$102	.dwtag  DW_TAG_typedef, DW_AT_name("safestruct2struct"), DW_AT_type(*DW$T$38)
	.dwattr DW$T$102, DW_AT_language(DW_LANG_C)
DW$167	.dwtag  DW_TAG_far_type
	.dwattr DW$167, DW_AT_type(*DW$T$103)
DW$T$104	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$104, DW_AT_type(*DW$167)
DW$T$106	.dwtag  DW_TAG_typedef, DW_AT_name("allsensorstruct"), DW_AT_type(*DW$T$42)
	.dwattr DW$T$106, DW_AT_language(DW_LANG_C)
DW$T$108	.dwtag  DW_TAG_typedef, DW_AT_name("configstruct"), DW_AT_type(*DW$T$49)
	.dwattr DW$T$108, DW_AT_language(DW_LANG_C)
DW$T$109	.dwtag  DW_TAG_typedef, DW_AT_name("uartreadA"), DW_AT_type(*DW$T$53)
	.dwattr DW$T$109, DW_AT_language(DW_LANG_C)

DW$T$112	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$111)
	.dwattr DW$T$112, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$112, DW_AT_byte_size(0x1f8)
DW$168	.dwtag  DW_TAG_subrange_type
	.dwattr DW$168, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$112

DW$T$115	.dwtag  DW_TAG_typedef, DW_AT_name("reprogramstruct"), DW_AT_type(*DW$T$60)
	.dwattr DW$T$115, DW_AT_language(DW_LANG_C)
DW$T$116	.dwtag  DW_TAG_typedef, DW_AT_name("slavecmdstruct"), DW_AT_type(*DW$T$62)
	.dwattr DW$T$116, DW_AT_language(DW_LANG_C)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)
DW$T$92	.dwtag  DW_TAG_typedef, DW_AT_name("status3struct"), DW_AT_type(*DW$T$19)
	.dwattr DW$T$92, DW_AT_language(DW_LANG_C)

DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$21, DW_AT_name("tag_settingsstruct")
	.dwattr DW$T$21, DW_AT_byte_size(0x24)
DW$169	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$169, DW_AT_name("watchdog"), DW_AT_symbol_name("_watchdog")
	.dwattr DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$169, DW_AT_accessibility(DW_ACCESS_public)
DW$170	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$170, DW_AT_name("ledflashflag"), DW_AT_symbol_name("_ledflashflag")
	.dwattr DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$170, DW_AT_accessibility(DW_ACCESS_public)
DW$171	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$171, DW_AT_name("updatesafe"), DW_AT_symbol_name("_updatesafe")
	.dwattr DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$171, DW_AT_accessibility(DW_ACCESS_public)
DW$172	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$172, DW_AT_name("tableconfigtype"), DW_AT_symbol_name("_tableconfigtype")
	.dwattr DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$172, DW_AT_accessibility(DW_ACCESS_public)
DW$173	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$173, DW_AT_name("caltableconfigtype"), DW_AT_symbol_name("_caltableconfigtype")
	.dwattr DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$173, DW_AT_accessibility(DW_ACCESS_public)
DW$174	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$174, DW_AT_name("eventmsgid"), DW_AT_symbol_name("_eventmsgid")
	.dwattr DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$174, DW_AT_accessibility(DW_ACCESS_public)
DW$175	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$175, DW_AT_name("configoperationcomplete"), DW_AT_symbol_name("_configoperationcomplete")
	.dwattr DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$175, DW_AT_accessibility(DW_ACCESS_public)
DW$176	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$176, DW_AT_name("sdcarderr"), DW_AT_symbol_name("_sdcarderr")
	.dwattr DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$176, DW_AT_accessibility(DW_ACCESS_public)
DW$177	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$177, DW_AT_name("sderase"), DW_AT_symbol_name("_sderase")
	.dwattr DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$177, DW_AT_accessibility(DW_ACCESS_public)
DW$178	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$178, DW_AT_name("sdreinit"), DW_AT_symbol_name("_sdreinit")
	.dwattr DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$178, DW_AT_accessibility(DW_ACCESS_public)
DW$179	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$179, DW_AT_name("sdcardupdate"), DW_AT_symbol_name("_sdcardupdate")
	.dwattr DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$179, DW_AT_accessibility(DW_ACCESS_public)
DW$180	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$180, DW_AT_name("cardreadflag"), DW_AT_symbol_name("_cardreadflag")
	.dwattr DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$180, DW_AT_accessibility(DW_ACCESS_public)
DW$181	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$181, DW_AT_name("ignore"), DW_AT_symbol_name("_ignore")
	.dwattr DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$181, DW_AT_accessibility(DW_ACCESS_public)
DW$182	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$182, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$182, DW_AT_accessibility(DW_ACCESS_public)
DW$183	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$183, DW_AT_name("spiinuse"), DW_AT_symbol_name("_spiinuse")
	.dwattr DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$183, DW_AT_accessibility(DW_ACCESS_public)
DW$184	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$184, DW_AT_name("dcpeakhold"), DW_AT_symbol_name("_dcpeakhold")
	.dwattr DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$184, DW_AT_accessibility(DW_ACCESS_public)
DW$185	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$185, DW_AT_name("dcpause"), DW_AT_symbol_name("_dcpause")
	.dwattr DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$185, DW_AT_accessibility(DW_ACCESS_public)
DW$186	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$186, DW_AT_name("mastermode"), DW_AT_symbol_name("_mastermode")
	.dwattr DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$186, DW_AT_accessibility(DW_ACCESS_public)
DW$187	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$187, DW_AT_name("updatescaling"), DW_AT_symbol_name("_updatescaling")
	.dwattr DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$187, DW_AT_accessibility(DW_ACCESS_public)
DW$188	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$188, DW_AT_name("forwardasternflag"), DW_AT_symbol_name("_forwardasternflag")
	.dwattr DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$188, DW_AT_accessibility(DW_ACCESS_public)
DW$189	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$189, DW_AT_name("initprogress"), DW_AT_symbol_name("_initprogress")
	.dwattr DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$189, DW_AT_accessibility(DW_ACCESS_public)
DW$190	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$190, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$190, DW_AT_accessibility(DW_ACCESS_public)
DW$191	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$191, DW_AT_name("slowdowncounter"), DW_AT_symbol_name("_slowdowncounter")
	.dwattr DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$191, DW_AT_accessibility(DW_ACCESS_public)
DW$192	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$192, DW_AT_name("slowdowncondition"), DW_AT_symbol_name("_slowdowncondition")
	.dwattr DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$192, DW_AT_accessibility(DW_ACCESS_public)
DW$193	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$193, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$193, DW_AT_accessibility(DW_ACCESS_public)
DW$194	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$194, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$194, DW_AT_accessibility(DW_ACCESS_public)
DW$195	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$195, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$195, DW_AT_accessibility(DW_ACCESS_public)
DW$196	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$196, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$196, DW_AT_accessibility(DW_ACCESS_public)
DW$197	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$197, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$197, DW_AT_accessibility(DW_ACCESS_public)
DW$198	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$198, DW_AT_name("temperaturealarm"), DW_AT_symbol_name("_temperaturealarm")
	.dwattr DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$198, DW_AT_accessibility(DW_ACCESS_public)
DW$199	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$199, DW_AT_name("temperatureslowdown"), DW_AT_symbol_name("_temperatureslowdown")
	.dwattr DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$199, DW_AT_accessibility(DW_ACCESS_public)
DW$200	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$200, DW_AT_name("anadebug"), DW_AT_symbol_name("_anadebug")
	.dwattr DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$200, DW_AT_accessibility(DW_ACCESS_public)
DW$201	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$201, DW_AT_name("serialdebug"), DW_AT_symbol_name("_serialdebug")
	.dwattr DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr DW$201, DW_AT_accessibility(DW_ACCESS_public)
DW$202	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$202, DW_AT_name("timerrunning"), DW_AT_symbol_name("_timerrunning")
	.dwattr DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$202, DW_AT_accessibility(DW_ACCESS_public)
DW$203	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$203, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$203, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21


DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$25, DW_AT_name("tag_safestruct1struct")
	.dwattr DW$T$25, DW_AT_byte_size(0x1f)
DW$204	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$204, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$204, DW_AT_accessibility(DW_ACCESS_public)
DW$205	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$205, DW_AT_name("watchdog"), DW_AT_symbol_name("_watchdog")
	.dwattr DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$205, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_name("tag_safestruct2struct")
	.dwattr DW$T$38, DW_AT_byte_size(0x1e)
DW$206	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$206, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$206, DW_AT_accessibility(DW_ACCESS_public)
DW$207	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$207, DW_AT_name("log"), DW_AT_symbol_name("_log")
	.dwattr DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$207, DW_AT_accessibility(DW_ACCESS_public)
DW$208	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$208, DW_AT_name("modbus"), DW_AT_symbol_name("_modbus")
	.dwattr DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$208, DW_AT_accessibility(DW_ACCESS_public)
DW$209	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$209, DW_AT_name("filter"), DW_AT_symbol_name("_filter")
	.dwattr DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$209, DW_AT_accessibility(DW_ACCESS_public)
DW$210	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$210, DW_AT_name("alarms"), DW_AT_symbol_name("_alarms")
	.dwattr DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$210, DW_AT_accessibility(DW_ACCESS_public)
DW$211	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$211, DW_AT_name("modbusbaud"), DW_AT_symbol_name("_modbusbaud")
	.dwattr DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$211, DW_AT_accessibility(DW_ACCESS_public)
DW$212	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$212, DW_AT_name("modbus2"), DW_AT_symbol_name("_modbus2")
	.dwattr DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$212, DW_AT_accessibility(DW_ACCESS_public)
DW$213	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$213, DW_AT_name("sync"), DW_AT_symbol_name("_sync")
	.dwattr DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$213, DW_AT_accessibility(DW_ACCESS_public)
DW$214	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$214, DW_AT_name("alarmenable"), DW_AT_symbol_name("_alarmenable")
	.dwattr DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$214, DW_AT_accessibility(DW_ACCESS_public)
DW$215	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$215, DW_AT_name("trendmax"), DW_AT_symbol_name("_trendmax")
	.dwattr DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$215, DW_AT_accessibility(DW_ACCESS_public)
DW$216	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$216, DW_AT_name("tempcomp"), DW_AT_symbol_name("_tempcomp")
	.dwattr DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$216, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38

DW$T$103	.dwtag  DW_TAG_typedef, DW_AT_name("timersstruct"), DW_AT_type(*DW$T$39)
	.dwattr DW$T$103, DW_AT_language(DW_LANG_C)

DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$42, DW_AT_name("tag_allsensorstruct")
	.dwattr DW$T$42, DW_AT_byte_size(0x2d)
DW$217	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$217, DW_AT_name("numsensors"), DW_AT_symbol_name("_numsensors")
	.dwattr DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$217, DW_AT_accessibility(DW_ACCESS_public)
DW$218	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$218, DW_AT_name("numsensorsspu1"), DW_AT_symbol_name("_numsensorsspu1")
	.dwattr DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$218, DW_AT_accessibility(DW_ACCESS_public)
DW$219	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$219, DW_AT_name("numsensorsspu2"), DW_AT_symbol_name("_numsensorsspu2")
	.dwattr DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$219, DW_AT_accessibility(DW_ACCESS_public)
DW$220	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$220, DW_AT_name("nominalspeed"), DW_AT_symbol_name("_nominalspeed")
	.dwattr DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$220, DW_AT_accessibility(DW_ACCESS_public)
DW$221	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$221, DW_AT_name("rpmmin"), DW_AT_symbol_name("_rpmmin")
	.dwattr DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$221, DW_AT_accessibility(DW_ACCESS_public)
DW$222	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$222, DW_AT_name("rpmmax"), DW_AT_symbol_name("_rpmmax")
	.dwattr DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$222, DW_AT_accessibility(DW_ACCESS_public)
DW$223	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$223, DW_AT_name("reflash"), DW_AT_symbol_name("_reflash")
	.dwattr DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$223, DW_AT_accessibility(DW_ACCESS_public)
DW$224	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$224, DW_AT_name("sensorhysteresis"), DW_AT_symbol_name("_sensorhysteresis")
	.dwattr DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$224, DW_AT_accessibility(DW_ACCESS_public)
DW$225	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$225, DW_AT_name("cylinderhysteresis"), DW_AT_symbol_name("_cylinderhysteresis")
	.dwattr DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$225, DW_AT_accessibility(DW_ACCESS_public)
DW$226	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$226, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$226, DW_AT_accessibility(DW_ACCESS_public)
DW$227	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$227, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$227, DW_AT_accessibility(DW_ACCESS_public)
DW$228	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$228, DW_AT_name("slowdowndevcallevel"), DW_AT_symbol_name("_slowdowndevcallevel")
	.dwattr DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$228, DW_AT_accessibility(DW_ACCESS_public)
DW$229	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$229, DW_AT_name("alarmdevcallevel"), DW_AT_symbol_name("_alarmdevcallevel")
	.dwattr DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$229, DW_AT_accessibility(DW_ACCESS_public)
DW$230	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$230, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$230, DW_AT_accessibility(DW_ACCESS_public)
DW$231	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$231, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$231, DW_AT_accessibility(DW_ACCESS_public)
DW$232	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$232, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$232, DW_AT_accessibility(DW_ACCESS_public)
DW$233	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$233, DW_AT_name("flags"), DW_AT_symbol_name("_flags")
	.dwattr DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$233, DW_AT_accessibility(DW_ACCESS_public)
DW$234	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$234, DW_AT_name("slowdownack"), DW_AT_symbol_name("_slowdownack")
	.dwattr DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$234, DW_AT_accessibility(DW_ACCESS_public)
DW$235	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$235, DW_AT_name("alarmack"), DW_AT_symbol_name("_alarmack")
	.dwattr DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$235, DW_AT_accessibility(DW_ACCESS_public)
DW$236	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$236, DW_AT_name("maxmintimer"), DW_AT_symbol_name("_maxmintimer")
	.dwattr DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$236, DW_AT_accessibility(DW_ACCESS_public)
DW$237	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$237, DW_AT_name("enginedircal"), DW_AT_symbol_name("_enginedircal")
	.dwattr DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$237, DW_AT_accessibility(DW_ACCESS_public)
DW$238	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$238, DW_AT_name("dirorder"), DW_AT_symbol_name("_dirorder")
	.dwattr DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$238, DW_AT_accessibility(DW_ACCESS_public)
DW$239	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$239, DW_AT_name("prewarningtimer"), DW_AT_symbol_name("_prewarningtimer")
	.dwattr DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$239, DW_AT_accessibility(DW_ACCESS_public)
DW$240	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$240, DW_AT_name("prewarninglevel"), DW_AT_symbol_name("_prewarninglevel")
	.dwattr DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$240, DW_AT_accessibility(DW_ACCESS_public)
DW$241	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$241, DW_AT_name("rpmlimit"), DW_AT_symbol_name("_rpmlimit")
	.dwattr DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr DW$241, DW_AT_accessibility(DW_ACCESS_public)
DW$242	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$242, DW_AT_name("dsss"), DW_AT_symbol_name("_dsss")
	.dwattr DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$242, DW_AT_accessibility(DW_ACCESS_public)
DW$243	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$243, DW_AT_name("slowdowncallevel"), DW_AT_symbol_name("_slowdowncallevel")
	.dwattr DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$243, DW_AT_accessibility(DW_ACCESS_public)
DW$244	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$244, DW_AT_name("alarmcallevel"), DW_AT_symbol_name("_alarmcallevel")
	.dwattr DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$244, DW_AT_accessibility(DW_ACCESS_public)
DW$245	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$245, DW_AT_name("cylinderalarmcallevel"), DW_AT_symbol_name("_cylinderalarmcallevel")
	.dwattr DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$245, DW_AT_accessibility(DW_ACCESS_public)
DW$246	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$246, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$246, DW_AT_accessibility(DW_ACCESS_public)
DW$247	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$247, DW_AT_name("iBarredVibrationSpeedLow"), DW_AT_symbol_name("_iBarredVibrationSpeedLow")
	.dwattr DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$247, DW_AT_accessibility(DW_ACCESS_public)
DW$248	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$248, DW_AT_name("iBarredVibrationSpeedHigh"), DW_AT_symbol_name("_iBarredVibrationSpeedHigh")
	.dwattr DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$248, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$42


DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$49, DW_AT_name("tag_configstruct")
	.dwattr DW$T$49, DW_AT_byte_size(0x18)
DW$249	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$43)
	.dwattr DW$249, DW_AT_name("filter"), DW_AT_symbol_name("_filter")
	.dwattr DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$249, DW_AT_accessibility(DW_ACCESS_public)
DW$250	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$44)
	.dwattr DW$250, DW_AT_name("alarmenable"), DW_AT_symbol_name("_alarmenable")
	.dwattr DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$250, DW_AT_accessibility(DW_ACCESS_public)
DW$251	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$251, DW_AT_name("trendmax"), DW_AT_symbol_name("_trendmax")
	.dwattr DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$251, DW_AT_accessibility(DW_ACCESS_public)
DW$252	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$252, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$252, DW_AT_accessibility(DW_ACCESS_public)
DW$253	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$253, DW_AT_name("sdsettings"), DW_AT_symbol_name("_sdsettings")
	.dwattr DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$253, DW_AT_accessibility(DW_ACCESS_public)
DW$254	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$254, DW_AT_name("comms"), DW_AT_symbol_name("_comms")
	.dwattr DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$254, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$49


DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$53, DW_AT_name("tag_uartreadA")
	.dwattr DW$T$53, DW_AT_byte_size(0x96)
DW$255	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$255, DW_AT_name("headptr"), DW_AT_symbol_name("_headptr")
	.dwattr DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$255, DW_AT_accessibility(DW_ACCESS_public)
DW$256	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$256, DW_AT_name("tailptr"), DW_AT_symbol_name("_tailptr")
	.dwattr DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$256, DW_AT_accessibility(DW_ACCESS_public)
DW$257	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$257, DW_AT_name("eobuf"), DW_AT_symbol_name("_eobuf")
	.dwattr DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$257, DW_AT_accessibility(DW_ACCESS_public)
DW$258	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$258, DW_AT_name("charcount"), DW_AT_symbol_name("_charcount")
	.dwattr DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$258, DW_AT_accessibility(DW_ACCESS_public)
DW$259	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$259, DW_AT_name("currentcharcount"), DW_AT_symbol_name("_currentcharcount")
	.dwattr DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$259, DW_AT_accessibility(DW_ACCESS_public)
DW$260	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$260, DW_AT_name("previouscharcount"), DW_AT_symbol_name("_previouscharcount")
	.dwattr DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$260, DW_AT_accessibility(DW_ACCESS_public)
DW$261	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$51)
	.dwattr DW$261, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$261, DW_AT_accessibility(DW_ACCESS_public)
DW$262	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$52)
	.dwattr DW$262, DW_AT_name("uartcharrx"), DW_AT_symbol_name("_uartcharrx")
	.dwattr DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x95]
	.dwattr DW$262, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$53

DW$T$111	.dwtag  DW_TAG_typedef, DW_AT_name("sensorstruct"), DW_AT_type(*DW$T$58)
	.dwattr DW$T$111, DW_AT_language(DW_LANG_C)

DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$60, DW_AT_name("tag_reprogramstruct")
	.dwattr DW$T$60, DW_AT_byte_size(0x10)
DW$263	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$59)
	.dwattr DW$263, DW_AT_name("spi"), DW_AT_symbol_name("_spi")
	.dwattr DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$263, DW_AT_accessibility(DW_ACCESS_public)
DW$264	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$264, DW_AT_name("programkey"), DW_AT_symbol_name("_programkey")
	.dwattr DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$264, DW_AT_accessibility(DW_ACCESS_public)
DW$265	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$265, DW_AT_name("reprogramnow"), DW_AT_symbol_name("_reprogramnow")
	.dwattr DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$265, DW_AT_accessibility(DW_ACCESS_public)
DW$266	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$266, DW_AT_name("slavecmdok"), DW_AT_symbol_name("_slavecmdok")
	.dwattr DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$266, DW_AT_accessibility(DW_ACCESS_public)
DW$267	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$267, DW_AT_name("slavestatus"), DW_AT_symbol_name("_slavestatus")
	.dwattr DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$267, DW_AT_accessibility(DW_ACCESS_public)
DW$268	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$268, DW_AT_name("slavetx"), DW_AT_symbol_name("_slavetx")
	.dwattr DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$268, DW_AT_accessibility(DW_ACCESS_public)
DW$269	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$269, DW_AT_name("slaverx"), DW_AT_symbol_name("_slaverx")
	.dwattr DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$269, DW_AT_accessibility(DW_ACCESS_public)
DW$270	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$270, DW_AT_name("slaveset"), DW_AT_symbol_name("_slaveset")
	.dwattr DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$270, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$60


DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$62, DW_AT_name("tag_slavecmdstruct")
	.dwattr DW$T$62, DW_AT_byte_size(0x48)
DW$271	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$271, DW_AT_name("SlaveAddr"), DW_AT_symbol_name("_SlaveAddr")
	.dwattr DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$271, DW_AT_accessibility(DW_ACCESS_public)
DW$272	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$272, DW_AT_name("Func"), DW_AT_symbol_name("_Func")
	.dwattr DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$272, DW_AT_accessibility(DW_ACCESS_public)
DW$273	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$273, DW_AT_name("StartAdd"), DW_AT_symbol_name("_StartAdd")
	.dwattr DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$273, DW_AT_accessibility(DW_ACCESS_public)
DW$274	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$274, DW_AT_name("NoReg"), DW_AT_symbol_name("_NoReg")
	.dwattr DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$274, DW_AT_accessibility(DW_ACCESS_public)
DW$275	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$275, DW_AT_name("ByteCount"), DW_AT_symbol_name("_ByteCount")
	.dwattr DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$275, DW_AT_accessibility(DW_ACCESS_public)
DW$276	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$61)
	.dwattr DW$276, DW_AT_name("Data"), DW_AT_symbol_name("_Data")
	.dwattr DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$276, DW_AT_accessibility(DW_ACCESS_public)
DW$277	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$277, DW_AT_name("txmode"), DW_AT_symbol_name("_txmode")
	.dwattr DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr DW$277, DW_AT_accessibility(DW_ACCESS_public)
DW$278	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$278, DW_AT_name("slavelost"), DW_AT_symbol_name("_slavelost")
	.dwattr DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$278, DW_AT_accessibility(DW_ACCESS_public)
DW$279	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$279, DW_AT_name("slavenotready"), DW_AT_symbol_name("_slavenotready")
	.dwattr DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr DW$279, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$62


DW$T$22	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$22, DW_AT_byte_size(0x0e)
DW$280	.dwtag  DW_TAG_subrange_type
	.dwattr DW$280, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$22


DW$T$51	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$51, DW_AT_byte_size(0x8c)
DW$281	.dwtag  DW_TAG_subrange_type
	.dwattr DW$281, DW_AT_upper_bound(0x8b)
	.dwendtag DW$T$51


DW$T$61	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$61, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$61, DW_AT_byte_size(0x40)
DW$282	.dwtag  DW_TAG_subrange_type
	.dwattr DW$282, DW_AT_upper_bound(0x3f)
	.dwendtag DW$T$61


DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$19, DW_AT_name("tag_status3struct")
	.dwattr DW$T$19, DW_AT_byte_size(0x01)
DW$283	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$283, DW_AT_name("nopulse"), DW_AT_symbol_name("_nopulse")
	.dwattr DW$283, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$283, DW_AT_accessibility(DW_ACCESS_public)
DW$284	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$284, DW_AT_name("low"), DW_AT_symbol_name("_low")
	.dwattr DW$284, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$284, DW_AT_accessibility(DW_ACCESS_public)
DW$285	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$285, DW_AT_name("high"), DW_AT_symbol_name("_high")
	.dwattr DW$285, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$285, DW_AT_accessibility(DW_ACCESS_public)
DW$286	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$286, DW_AT_name("rpmoor"), DW_AT_symbol_name("_rpmoor")
	.dwattr DW$286, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$286, DW_AT_accessibility(DW_ACCESS_public)
DW$287	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$287, DW_AT_name("unused5"), DW_AT_symbol_name("_unused5")
	.dwattr DW$287, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$287, DW_AT_accessibility(DW_ACCESS_public)
DW$288	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$288, DW_AT_name("unused6"), DW_AT_symbol_name("_unused6")
	.dwattr DW$288, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$288, DW_AT_accessibility(DW_ACCESS_public)
DW$289	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$289, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$289, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$289, DW_AT_accessibility(DW_ACCESS_public)
DW$290	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$290, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$290, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$290, DW_AT_accessibility(DW_ACCESS_public)
DW$291	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$291, DW_AT_name("nopulselatched"), DW_AT_symbol_name("_nopulselatched")
	.dwattr DW$291, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$291, DW_AT_accessibility(DW_ACCESS_public)
DW$292	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$292, DW_AT_name("lowlatched"), DW_AT_symbol_name("_lowlatched")
	.dwattr DW$292, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$292, DW_AT_accessibility(DW_ACCESS_public)
DW$293	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$293, DW_AT_name("highlatched"), DW_AT_symbol_name("_highlatched")
	.dwattr DW$293, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$293, DW_AT_accessibility(DW_ACCESS_public)
DW$294	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$294, DW_AT_name("rpmoorlatched"), DW_AT_symbol_name("_rpmoorlatched")
	.dwattr DW$294, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$294, DW_AT_accessibility(DW_ACCESS_public)
DW$295	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$295, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$295, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$295, DW_AT_accessibility(DW_ACCESS_public)
DW$296	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$296, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$296, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$296, DW_AT_accessibility(DW_ACCESS_public)
DW$297	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$297, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$297, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$297, DW_AT_accessibility(DW_ACCESS_public)
DW$298	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$298, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$298, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$298, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$19


DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_byte_size(0x02)
DW$299	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$299, DW_AT_name("enb"), DW_AT_symbol_name("_enb")
	.dwattr DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$299, DW_AT_accessibility(DW_ACCESS_public)
DW$300	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$300, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$300, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$23, DW_AT_byte_size(0x1e)
DW$301	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$301, DW_AT_name("chanlowthreshold"), DW_AT_symbol_name("_chanlowthreshold")
	.dwattr DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$301, DW_AT_accessibility(DW_ACCESS_public)
DW$302	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$302, DW_AT_name("chanhighthreshold"), DW_AT_symbol_name("_chanhighthreshold")
	.dwattr DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$302, DW_AT_accessibility(DW_ACCESS_public)
DW$303	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$303, DW_AT_name("chan18ma"), DW_AT_symbol_name("_chan18ma")
	.dwattr DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$303, DW_AT_accessibility(DW_ACCESS_public)
DW$304	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$304, DW_AT_name("notused"), DW_AT_symbol_name("_notused")
	.dwattr DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$304, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_byte_size(0x01)
DW$305	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$305, DW_AT_name("enabled"), DW_AT_symbol_name("_enabled")
	.dwattr DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$305, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$27, DW_AT_byte_size(0x0b)
DW$306	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$306, DW_AT_name("calprtzero"), DW_AT_symbol_name("_calprtzero")
	.dwattr DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$306, DW_AT_accessibility(DW_ACCESS_public)
DW$307	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$307, DW_AT_name("calprtfullscale"), DW_AT_symbol_name("_calprtfullscale")
	.dwattr DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$307, DW_AT_accessibility(DW_ACCESS_public)
DW$308	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$308, DW_AT_name("sensorscalingfactor"), DW_AT_symbol_name("_sensorscalingfactor")
	.dwattr DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$308, DW_AT_accessibility(DW_ACCESS_public)
DW$309	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$309, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$309, DW_AT_accessibility(DW_ACCESS_public)
DW$310	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$310, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$310, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_byte_size(0x03)
DW$311	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$311, DW_AT_name("mainrate"), DW_AT_symbol_name("_mainrate")
	.dwattr DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$311, DW_AT_accessibility(DW_ACCESS_public)
DW$312	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$312, DW_AT_name("trendrate"), DW_AT_symbol_name("_trendrate")
	.dwattr DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$312, DW_AT_accessibility(DW_ACCESS_public)
DW$313	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$313, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$313, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$29, DW_AT_byte_size(0x01)
DW$314	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$314, DW_AT_name("address"), DW_AT_symbol_name("_address")
	.dwattr DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$314, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$29


DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$30, DW_AT_byte_size(0x02)
DW$315	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$315, DW_AT_name("inputtap"), DW_AT_symbol_name("_inputtap")
	.dwattr DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$315, DW_AT_accessibility(DW_ACCESS_public)
DW$316	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$316, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$316, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30


DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$31, DW_AT_byte_size(0x03)
DW$317	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$317, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$317, DW_AT_accessibility(DW_ACCESS_public)
DW$318	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$318, DW_AT_name("notused2"), DW_AT_symbol_name("_notused2")
	.dwattr DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$318, DW_AT_accessibility(DW_ACCESS_public)
DW$319	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$319, DW_AT_name("notused3"), DW_AT_symbol_name("_notused3")
	.dwattr DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$319, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_byte_size(0x01)
DW$320	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$320, DW_AT_name("rate"), DW_AT_symbol_name("_rate")
	.dwattr DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$320, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$33, DW_AT_byte_size(0x02)
DW$321	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$321, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$321, DW_AT_accessibility(DW_ACCESS_public)
DW$322	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$322, DW_AT_name("notused2"), DW_AT_symbol_name("_notused2")
	.dwattr DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$322, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$34, DW_AT_byte_size(0x04)
DW$323	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$323, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$323, DW_AT_accessibility(DW_ACCESS_public)
DW$324	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$324, DW_AT_name("notused2"), DW_AT_symbol_name("_notused2")
	.dwattr DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$324, DW_AT_accessibility(DW_ACCESS_public)
DW$325	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$325, DW_AT_name("notused3"), DW_AT_symbol_name("_notused3")
	.dwattr DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$325, DW_AT_accessibility(DW_ACCESS_public)
DW$326	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$326, DW_AT_name("notused4"), DW_AT_symbol_name("_notused4")
	.dwattr DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$326, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34


DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$35, DW_AT_byte_size(0x01)
DW$327	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$327, DW_AT_name("bitmap"), DW_AT_symbol_name("_bitmap")
	.dwattr DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$327, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35


DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$36, DW_AT_byte_size(0x01)
DW$328	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$328, DW_AT_name("graphvalue"), DW_AT_symbol_name("_graphvalue")
	.dwattr DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$328, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$36


DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$37, DW_AT_byte_size(0x01)
DW$329	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$329, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$329, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$37


DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$39, DW_AT_name("tag_timers")
	.dwattr DW$T$39, DW_AT_byte_size(0x4c)
DW$330	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$330, DW_AT_name("update"), DW_AT_symbol_name("_update")
	.dwattr DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$330, DW_AT_accessibility(DW_ACCESS_public)
DW$331	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$331, DW_AT_name("general"), DW_AT_symbol_name("_general")
	.dwattr DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$331, DW_AT_accessibility(DW_ACCESS_public)
DW$332	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$332, DW_AT_name("rxcharTimeout"), DW_AT_symbol_name("_rxcharTimeout")
	.dwattr DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$332, DW_AT_accessibility(DW_ACCESS_public)
DW$333	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$333, DW_AT_name("wiorxtimeout"), DW_AT_symbol_name("_wiorxtimeout")
	.dwattr DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$333, DW_AT_accessibility(DW_ACCESS_public)
DW$334	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$334, DW_AT_name("wiomasterrxtimeout"), DW_AT_symbol_name("_wiomasterrxtimeout")
	.dwattr DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$334, DW_AT_accessibility(DW_ACCESS_public)
DW$335	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$335, DW_AT_name("masterrxtimeout"), DW_AT_symbol_name("_masterrxtimeout")
	.dwattr DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$335, DW_AT_accessibility(DW_ACCESS_public)
DW$336	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$336, DW_AT_name("slaverxtimeout"), DW_AT_symbol_name("_slaverxtimeout")
	.dwattr DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$336, DW_AT_accessibility(DW_ACCESS_public)
DW$337	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$337, DW_AT_name("sectick"), DW_AT_symbol_name("_sectick")
	.dwattr DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$337, DW_AT_accessibility(DW_ACCESS_public)
DW$338	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$338, DW_AT_name("ledflash"), DW_AT_symbol_name("_ledflash")
	.dwattr DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$338, DW_AT_accessibility(DW_ACCESS_public)
DW$339	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$339, DW_AT_name("prtsettle"), DW_AT_symbol_name("_prtsettle")
	.dwattr DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$339, DW_AT_accessibility(DW_ACCESS_public)
DW$340	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$340, DW_AT_name("chantimeout"), DW_AT_symbol_name("_chantimeout")
	.dwattr DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$340, DW_AT_accessibility(DW_ACCESS_public)
DW$341	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$341, DW_AT_name("chanwait"), DW_AT_symbol_name("_chanwait")
	.dwattr DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$341, DW_AT_accessibility(DW_ACCESS_public)
DW$342	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$342, DW_AT_name("pcrxtimeout"), DW_AT_symbol_name("_pcrxtimeout")
	.dwattr DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$342, DW_AT_accessibility(DW_ACCESS_public)
DW$343	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$343, DW_AT_name("pctxtimeout"), DW_AT_symbol_name("_pctxtimeout")
	.dwattr DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$343, DW_AT_accessibility(DW_ACCESS_public)
DW$344	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$344, DW_AT_name("spistatus"), DW_AT_symbol_name("_spistatus")
	.dwattr DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$344, DW_AT_accessibility(DW_ACCESS_public)
DW$345	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$345, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$345, DW_AT_accessibility(DW_ACCESS_public)
DW$346	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$346, DW_AT_name("slaverqst"), DW_AT_symbol_name("_slaverqst")
	.dwattr DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$346, DW_AT_accessibility(DW_ACCESS_public)
DW$347	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$347, DW_AT_name("mastermodebutton"), DW_AT_symbol_name("_mastermodebutton")
	.dwattr DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$347, DW_AT_accessibility(DW_ACCESS_public)
DW$348	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$348, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$348, DW_AT_accessibility(DW_ACCESS_public)
DW$349	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$349, DW_AT_name("calibrate"), DW_AT_symbol_name("_calibrate")
	.dwattr DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$349, DW_AT_accessibility(DW_ACCESS_public)
DW$350	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$350, DW_AT_name("calibrate2"), DW_AT_symbol_name("_calibrate2")
	.dwattr DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$350, DW_AT_accessibility(DW_ACCESS_public)
DW$351	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$351, DW_AT_name("alarmreflash"), DW_AT_symbol_name("_alarmreflash")
	.dwattr DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$351, DW_AT_accessibility(DW_ACCESS_public)
DW$352	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$352, DW_AT_name("slowdownreflash"), DW_AT_symbol_name("_slowdownreflash")
	.dwattr DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr DW$352, DW_AT_accessibility(DW_ACCESS_public)
DW$353	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$353, DW_AT_name("wiorqst"), DW_AT_symbol_name("_wiorqst")
	.dwattr DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$353, DW_AT_accessibility(DW_ACCESS_public)
DW$354	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$354, DW_AT_name("rpmtimeout"), DW_AT_symbol_name("_rpmtimeout")
	.dwattr DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr DW$354, DW_AT_accessibility(DW_ACCESS_public)
DW$355	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$355, DW_AT_name("analogoor"), DW_AT_symbol_name("_analogoor")
	.dwattr DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$355, DW_AT_accessibility(DW_ACCESS_public)
DW$356	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$356, DW_AT_name("motioncal"), DW_AT_symbol_name("_motioncal")
	.dwattr DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr DW$356, DW_AT_accessibility(DW_ACCESS_public)
DW$357	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$357, DW_AT_name("framcheck"), DW_AT_symbol_name("_framcheck")
	.dwattr DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$357, DW_AT_accessibility(DW_ACCESS_public)
DW$358	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$358, DW_AT_name("pcmodbus"), DW_AT_symbol_name("_pcmodbus")
	.dwattr DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr DW$358, DW_AT_accessibility(DW_ACCESS_public)
DW$359	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$359, DW_AT_name("statusreflash"), DW_AT_symbol_name("_statusreflash")
	.dwattr DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$359, DW_AT_accessibility(DW_ACCESS_public)
DW$360	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$360, DW_AT_name("prewarn"), DW_AT_symbol_name("_prewarn")
	.dwattr DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$360, DW_AT_accessibility(DW_ACCESS_public)
DW$361	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$361, DW_AT_name("clocktofram"), DW_AT_symbol_name("_clocktofram")
	.dwattr DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr DW$361, DW_AT_accessibility(DW_ACCESS_public)
DW$362	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$362, DW_AT_name("debugrapidfast"), DW_AT_symbol_name("_debugrapidfast")
	.dwattr DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x3f]
	.dwattr DW$362, DW_AT_accessibility(DW_ACCESS_public)
DW$363	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$363, DW_AT_name("debugupdate"), DW_AT_symbol_name("_debugupdate")
	.dwattr DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$363, DW_AT_accessibility(DW_ACCESS_public)
DW$364	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$364, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr DW$364, DW_AT_accessibility(DW_ACCESS_public)
DW$365	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$365, DW_AT_name("startup"), DW_AT_symbol_name("_startup")
	.dwattr DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr DW$365, DW_AT_accessibility(DW_ACCESS_public)
DW$366	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$366, DW_AT_name("analogsettle"), DW_AT_symbol_name("_analogsettle")
	.dwattr DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr DW$366, DW_AT_accessibility(DW_ACCESS_public)
DW$367	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$367, DW_AT_name("reprogram"), DW_AT_symbol_name("_reprogram")
	.dwattr DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr DW$367, DW_AT_accessibility(DW_ACCESS_public)
DW$368	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$368, DW_AT_name("reprogramtimeout"), DW_AT_symbol_name("_reprogramtimeout")
	.dwattr DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr DW$368, DW_AT_accessibility(DW_ACCESS_public)
DW$369	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$369, DW_AT_name("dcmodestayalive"), DW_AT_symbol_name("_dcmodestayalive")
	.dwattr DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$369, DW_AT_accessibility(DW_ACCESS_public)
DW$370	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$370, DW_AT_name("biteventchange"), DW_AT_symbol_name("_biteventchange")
	.dwattr DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr DW$370, DW_AT_accessibility(DW_ACCESS_public)
DW$371	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$371, DW_AT_name("iSensorReplace"), DW_AT_symbol_name("_iSensorReplace")
	.dwattr DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr DW$371, DW_AT_accessibility(DW_ACCESS_public)
DW$372	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$372, DW_AT_name("deltarpm15Delay"), DW_AT_symbol_name("_deltarpm15Delay")
	.dwattr DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr DW$372, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39


DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$40, DW_AT_byte_size(0x01)
DW$373	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$373, DW_AT_name("newval"), DW_AT_symbol_name("_newval")
	.dwattr DW$373, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$373, DW_AT_accessibility(DW_ACCESS_public)
DW$374	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$374, DW_AT_name("calmode"), DW_AT_symbol_name("_calmode")
	.dwattr DW$374, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$374, DW_AT_accessibility(DW_ACCESS_public)
DW$375	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$375, DW_AT_name("startcal"), DW_AT_symbol_name("_startcal")
	.dwattr DW$375, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$375, DW_AT_accessibility(DW_ACCESS_public)
DW$376	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$376, DW_AT_name("newvalspu2"), DW_AT_symbol_name("_newvalspu2")
	.dwattr DW$376, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$376, DW_AT_accessibility(DW_ACCESS_public)
DW$377	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$377, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$377, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$377, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40


DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$41, DW_AT_byte_size(0x01)
DW$378	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$378, DW_AT_name("slowdowncntrl"), DW_AT_symbol_name("_slowdowncntrl")
	.dwattr DW$378, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$378, DW_AT_accessibility(DW_ACCESS_public)
DW$379	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$379, DW_AT_name("unused"), DW_AT_symbol_name("_unused")
	.dwattr DW$379, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0f)
	.dwattr DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$379, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$41


DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$43, DW_AT_byte_size(0x01)
DW$380	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$380, DW_AT_name("inputtap"), DW_AT_symbol_name("_inputtap")
	.dwattr DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$380, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$43


DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$44, DW_AT_byte_size(0x01)
DW$381	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$381, DW_AT_name("bitmap"), DW_AT_symbol_name("_bitmap")
	.dwattr DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$381, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$44


DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$45, DW_AT_byte_size(0x01)
DW$382	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$382, DW_AT_name("graphvalue"), DW_AT_symbol_name("_graphvalue")
	.dwattr DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$382, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$45


DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$46, DW_AT_byte_size(0x03)
DW$383	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$383, DW_AT_name("chanlowthreshold"), DW_AT_symbol_name("_chanlowthreshold")
	.dwattr DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$383, DW_AT_accessibility(DW_ACCESS_public)
DW$384	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$384, DW_AT_name("chanhighthreshold"), DW_AT_symbol_name("_chanhighthreshold")
	.dwattr DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$384, DW_AT_accessibility(DW_ACCESS_public)
DW$385	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$385, DW_AT_name("sensorscalingfactor"), DW_AT_symbol_name("_sensorscalingfactor")
	.dwattr DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$385, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$46


DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$47, DW_AT_byte_size(0x02)
DW$386	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$386, DW_AT_name("shortlrate"), DW_AT_symbol_name("_shortlrate")
	.dwattr DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$386, DW_AT_accessibility(DW_ACCESS_public)
DW$387	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$387, DW_AT_name("longlrate"), DW_AT_symbol_name("_longlrate")
	.dwattr DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$387, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$47


DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$48, DW_AT_byte_size(0x10)
DW$388	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$388, DW_AT_name("wiorequest"), DW_AT_symbol_name("_wiorequest")
	.dwattr DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$388, DW_AT_accessibility(DW_ACCESS_public)
DW$389	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$389, DW_AT_name("wiocancelled"), DW_AT_symbol_name("_wiocancelled")
	.dwattr DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$389, DW_AT_accessibility(DW_ACCESS_public)
DW$390	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$390, DW_AT_name("wioreceived"), DW_AT_symbol_name("_wioreceived")
	.dwattr DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$390, DW_AT_accessibility(DW_ACCESS_public)
DW$391	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$391, DW_AT_name("slaverequest"), DW_AT_symbol_name("_slaverequest")
	.dwattr DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$391, DW_AT_accessibility(DW_ACCESS_public)
DW$392	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$392, DW_AT_name("slavereceived"), DW_AT_symbol_name("_slavereceived")
	.dwattr DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$392, DW_AT_accessibility(DW_ACCESS_public)
DW$393	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$393, DW_AT_name("slaveretry"), DW_AT_symbol_name("_slaveretry")
	.dwattr DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$393, DW_AT_accessibility(DW_ACCESS_public)
DW$394	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$394, DW_AT_name("pcrequest"), DW_AT_symbol_name("_pcrequest")
	.dwattr DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$394, DW_AT_accessibility(DW_ACCESS_public)
DW$395	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$395, DW_AT_name("pcreqtimeout"), DW_AT_symbol_name("_pcreqtimeout")
	.dwattr DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$395, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$48

DW$T$52	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$52, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$52, DW_AT_byte_size(0x01)

DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$58, DW_AT_name("tag_sensorstruct")
	.dwattr DW$T$58, DW_AT_byte_size(0x12)
DW$396	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$56)
	.dwattr DW$396, DW_AT_name("status1"), DW_AT_symbol_name("_status1")
	.dwattr DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$396, DW_AT_accessibility(DW_ACCESS_public)
DW$397	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$57)
	.dwattr DW$397, DW_AT_name("status2"), DW_AT_symbol_name("_status2")
	.dwattr DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$397, DW_AT_accessibility(DW_ACCESS_public)
DW$398	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$398, DW_AT_name("newval"), DW_AT_symbol_name("_newval")
	.dwattr DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$398, DW_AT_accessibility(DW_ACCESS_public)
DW$399	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$399, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$399, DW_AT_accessibility(DW_ACCESS_public)
DW$400	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$400, DW_AT_name("immediateval"), DW_AT_symbol_name("_immediateval")
	.dwattr DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$400, DW_AT_accessibility(DW_ACCESS_public)
DW$401	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$401, DW_AT_name("initialval"), DW_AT_symbol_name("_initialval")
	.dwattr DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$401, DW_AT_accessibility(DW_ACCESS_public)
DW$402	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$402, DW_AT_name("precomp"), DW_AT_symbol_name("_precomp")
	.dwattr DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$402, DW_AT_accessibility(DW_ACCESS_public)
DW$403	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$403, DW_AT_name("postcomp"), DW_AT_symbol_name("_postcomp")
	.dwattr DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$403, DW_AT_accessibility(DW_ACCESS_public)
DW$404	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$404, DW_AT_name("postfilter"), DW_AT_symbol_name("_postfilter")
	.dwattr DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$404, DW_AT_accessibility(DW_ACCESS_public)
DW$405	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$405, DW_AT_name("endresult"), DW_AT_symbol_name("_endresult")
	.dwattr DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$405, DW_AT_accessibility(DW_ACCESS_public)
DW$406	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$406, DW_AT_name("deviation"), DW_AT_symbol_name("_deviation")
	.dwattr DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$406, DW_AT_accessibility(DW_ACCESS_public)
DW$407	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$407, DW_AT_name("min"), DW_AT_symbol_name("_min")
	.dwattr DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$407, DW_AT_accessibility(DW_ACCESS_public)
DW$408	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$408, DW_AT_name("max"), DW_AT_symbol_name("_max")
	.dwattr DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$408, DW_AT_accessibility(DW_ACCESS_public)
DW$409	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$409, DW_AT_name("devmin"), DW_AT_symbol_name("_devmin")
	.dwattr DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$409, DW_AT_accessibility(DW_ACCESS_public)
DW$410	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$410, DW_AT_name("devmax"), DW_AT_symbol_name("_devmax")
	.dwattr DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$410, DW_AT_accessibility(DW_ACCESS_public)
DW$411	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$411, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$411, DW_AT_accessibility(DW_ACCESS_public)
DW$412	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$412, DW_AT_name("prt"), DW_AT_symbol_name("_prt")
	.dwattr DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$412, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$58


DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$59, DW_AT_byte_size(0x08)
DW$413	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$413, DW_AT_name("programgo"), DW_AT_symbol_name("_programgo")
	.dwattr DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$413, DW_AT_accessibility(DW_ACCESS_public)
DW$414	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$414, DW_AT_name("status"), DW_AT_symbol_name("_status")
	.dwattr DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$414, DW_AT_accessibility(DW_ACCESS_public)
DW$415	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$415, DW_AT_name("erase"), DW_AT_symbol_name("_erase")
	.dwattr DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$415, DW_AT_accessibility(DW_ACCESS_public)
DW$416	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$416, DW_AT_name("address"), DW_AT_symbol_name("_address")
	.dwattr DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$416, DW_AT_accessibility(DW_ACCESS_public)
DW$417	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$417, DW_AT_name("size"), DW_AT_symbol_name("_size")
	.dwattr DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$417, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$59


DW$T$26	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$26, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$26, DW_AT_byte_size(0x04)
DW$418	.dwtag  DW_TAG_subrange_type
	.dwattr DW$418, DW_AT_upper_bound(0x03)
	.dwendtag DW$T$26

DW$T$16	.dwtag  DW_TAG_base_type, DW_AT_name("float")
	.dwattr DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$16, DW_AT_byte_size(0x02)
DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("status1struct"), DW_AT_type(*DW$T$54)
	.dwattr DW$T$56, DW_AT_language(DW_LANG_C)
DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("sensoralarmstruct"), DW_AT_type(*DW$T$55)
	.dwattr DW$T$57, DW_AT_language(DW_LANG_C)

DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$54, DW_AT_name("tag_status1struct")
	.dwattr DW$T$54, DW_AT_byte_size(0x01)
DW$419	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$419, DW_AT_name("enabled"), DW_AT_symbol_name("_enabled")
	.dwattr DW$419, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$419, DW_AT_accessibility(DW_ACCESS_public)
DW$420	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$420, DW_AT_name("calmode"), DW_AT_symbol_name("_calmode")
	.dwattr DW$420, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$420, DW_AT_accessibility(DW_ACCESS_public)
DW$421	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$421, DW_AT_name("alarmmask"), DW_AT_symbol_name("_alarmmask")
	.dwattr DW$421, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$421, DW_AT_accessibility(DW_ACCESS_public)
DW$422	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$422, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$422, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$422, DW_AT_accessibility(DW_ACCESS_public)
DW$423	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$423, DW_AT_name("replaced"), DW_AT_symbol_name("_replaced")
	.dwattr DW$423, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$423, DW_AT_accessibility(DW_ACCESS_public)
DW$424	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$424, DW_AT_name("excludeslowroll"), DW_AT_symbol_name("_excludeslowroll")
	.dwattr DW$424, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$424, DW_AT_accessibility(DW_ACCESS_public)
DW$425	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$425, DW_AT_name("unused7"), DW_AT_symbol_name("_unused7")
	.dwattr DW$425, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$425, DW_AT_accessibility(DW_ACCESS_public)
DW$426	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$426, DW_AT_name("unused8"), DW_AT_symbol_name("_unused8")
	.dwattr DW$426, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$426, DW_AT_accessibility(DW_ACCESS_public)
DW$427	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$427, DW_AT_name("unused9"), DW_AT_symbol_name("_unused9")
	.dwattr DW$427, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$427, DW_AT_accessibility(DW_ACCESS_public)
DW$428	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$428, DW_AT_name("unused10"), DW_AT_symbol_name("_unused10")
	.dwattr DW$428, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$428, DW_AT_accessibility(DW_ACCESS_public)
DW$429	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$429, DW_AT_name("unused11"), DW_AT_symbol_name("_unused11")
	.dwattr DW$429, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$429, DW_AT_accessibility(DW_ACCESS_public)
DW$430	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$430, DW_AT_name("unused12"), DW_AT_symbol_name("_unused12")
	.dwattr DW$430, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$430, DW_AT_accessibility(DW_ACCESS_public)
DW$431	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$431, DW_AT_name("unused13"), DW_AT_symbol_name("_unused13")
	.dwattr DW$431, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$431, DW_AT_accessibility(DW_ACCESS_public)
DW$432	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$432, DW_AT_name("unused14"), DW_AT_symbol_name("_unused14")
	.dwattr DW$432, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$432, DW_AT_accessibility(DW_ACCESS_public)
DW$433	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$433, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$433, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$433, DW_AT_accessibility(DW_ACCESS_public)
DW$434	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$434, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$434, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$434, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$54


DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$55, DW_AT_name("tag_sensoralarmstruct")
	.dwattr DW$T$55, DW_AT_byte_size(0x01)
DW$435	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$435, DW_AT_name("failure"), DW_AT_symbol_name("_failure")
	.dwattr DW$435, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$435, DW_AT_accessibility(DW_ACCESS_public)
DW$436	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$436, DW_AT_name("failurelatched"), DW_AT_symbol_name("_failurelatched")
	.dwattr DW$436, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$436, DW_AT_accessibility(DW_ACCESS_public)
DW$437	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$437, DW_AT_name("slowdown"), DW_AT_symbol_name("_slowdown")
	.dwattr DW$437, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$437, DW_AT_accessibility(DW_ACCESS_public)
DW$438	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$438, DW_AT_name("slowdownlatched"), DW_AT_symbol_name("_slowdownlatched")
	.dwattr DW$438, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$438, DW_AT_accessibility(DW_ACCESS_public)
DW$439	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$439, DW_AT_name("alarm"), DW_AT_symbol_name("_alarm")
	.dwattr DW$439, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$439, DW_AT_accessibility(DW_ACCESS_public)
DW$440	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$440, DW_AT_name("alarmlatched"), DW_AT_symbol_name("_alarmlatched")
	.dwattr DW$440, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$440, DW_AT_accessibility(DW_ACCESS_public)
DW$441	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$441, DW_AT_name("devalarm"), DW_AT_symbol_name("_devalarm")
	.dwattr DW$441, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$441, DW_AT_accessibility(DW_ACCESS_public)
DW$442	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$442, DW_AT_name("devalarmlatched"), DW_AT_symbol_name("_devalarmlatched")
	.dwattr DW$442, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$442, DW_AT_accessibility(DW_ACCESS_public)
DW$443	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$443, DW_AT_name("devslow"), DW_AT_symbol_name("_devslow")
	.dwattr DW$443, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$443, DW_AT_accessibility(DW_ACCESS_public)
DW$444	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$444, DW_AT_name("devslowlatched"), DW_AT_symbol_name("_devslowlatched")
	.dwattr DW$444, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$444, DW_AT_accessibility(DW_ACCESS_public)
DW$445	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$445, DW_AT_name("calibration"), DW_AT_symbol_name("_calibration")
	.dwattr DW$445, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$445, DW_AT_accessibility(DW_ACCESS_public)
DW$446	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$446, DW_AT_name("calibrationlatched"), DW_AT_symbol_name("_calibrationlatched")
	.dwattr DW$446, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$446, DW_AT_accessibility(DW_ACCESS_public)
DW$447	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$447, DW_AT_name("prewarning"), DW_AT_symbol_name("_prewarning")
	.dwattr DW$447, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$447, DW_AT_accessibility(DW_ACCESS_public)
DW$448	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$448, DW_AT_name("prewarninglatched"), DW_AT_symbol_name("_prewarninglatched")
	.dwattr DW$448, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$448, DW_AT_accessibility(DW_ACCESS_public)
DW$449	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$449, DW_AT_name("unused15"), DW_AT_symbol_name("_unused15")
	.dwattr DW$449, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$449, DW_AT_accessibility(DW_ACCESS_public)
DW$450	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$450, DW_AT_name("unused16"), DW_AT_symbol_name("_unused16")
	.dwattr DW$450, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$450, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$55


	.dwattr DW$107, DW_AT_external(0x01)
	.dwattr DW$57, DW_AT_external(0x01)
	.dwattr DW$57, DW_AT_type(*DW$T$10)
	.dwattr DW$114, DW_AT_external(0x01)
	.dwattr DW$113, DW_AT_external(0x01)
	.dwattr DW$112, DW_AT_external(0x01)
	.dwattr DW$60, DW_AT_external(0x01)
	.dwattr DW$55, DW_AT_external(0x01)
	.dwattr DW$56, DW_AT_external(0x01)
	.dwattr DW$63, DW_AT_external(0x01)
	.dwattr DW$141, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$451	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$451, DW_AT_location[DW_OP_reg0]
DW$452	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$452, DW_AT_location[DW_OP_reg1]
DW$453	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$453, DW_AT_location[DW_OP_reg2]
DW$454	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$454, DW_AT_location[DW_OP_reg3]
DW$455	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$455, DW_AT_location[DW_OP_reg4]
DW$456	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$456, DW_AT_location[DW_OP_reg5]
DW$457	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$457, DW_AT_location[DW_OP_reg6]
DW$458	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$458, DW_AT_location[DW_OP_reg7]
DW$459	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$459, DW_AT_location[DW_OP_reg8]
DW$460	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$460, DW_AT_location[DW_OP_reg9]
DW$461	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$461, DW_AT_location[DW_OP_reg10]
DW$462	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$462, DW_AT_location[DW_OP_reg11]
DW$463	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$463, DW_AT_location[DW_OP_reg12]
DW$464	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$464, DW_AT_location[DW_OP_reg13]
DW$465	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$465, DW_AT_location[DW_OP_reg14]
DW$466	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$466, DW_AT_location[DW_OP_reg15]
DW$467	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$467, DW_AT_location[DW_OP_reg16]
DW$468	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$468, DW_AT_location[DW_OP_reg17]
DW$469	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$469, DW_AT_location[DW_OP_reg18]
DW$470	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$470, DW_AT_location[DW_OP_reg19]
DW$471	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$471, DW_AT_location[DW_OP_reg20]
DW$472	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$472, DW_AT_location[DW_OP_reg21]
DW$473	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$473, DW_AT_location[DW_OP_reg22]
DW$474	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$474, DW_AT_location[DW_OP_reg23]
DW$475	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$475, DW_AT_location[DW_OP_reg24]
DW$476	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$476, DW_AT_location[DW_OP_reg25]
DW$477	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$477, DW_AT_location[DW_OP_reg26]
DW$478	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$478, DW_AT_location[DW_OP_reg27]
DW$479	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$479, DW_AT_location[DW_OP_reg28]
DW$480	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$480, DW_AT_location[DW_OP_reg29]
DW$481	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$481, DW_AT_location[DW_OP_reg30]
DW$482	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$482, DW_AT_location[DW_OP_reg31]
DW$483	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$483, DW_AT_location[DW_OP_regx 0x20]
DW$484	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$484, DW_AT_location[DW_OP_regx 0x21]
DW$485	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$485, DW_AT_location[DW_OP_regx 0x22]
DW$486	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$486, DW_AT_location[DW_OP_regx 0x23]
DW$487	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$487, DW_AT_location[DW_OP_regx 0x24]
DW$488	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$488, DW_AT_location[DW_OP_regx 0x25]
DW$489	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$489, DW_AT_location[DW_OP_regx 0x26]
DW$490	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$490, DW_AT_location[DW_OP_regx 0x27]
DW$491	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$491, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

