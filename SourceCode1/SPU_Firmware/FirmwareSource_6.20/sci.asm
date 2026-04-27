;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Wed Sep 14 09:00:58 2016                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("sci.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("NOPDelay"), DW_AT_symbol_name("_NOPDelay")
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$1


DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadDataFromUart_D"), DW_AT_symbol_name("_ReadDataFromUart_D")
	.dwattr DW$3, DW_AT_type(*DW$T$10)
	.dwattr DW$3, DW_AT_declaration(0x01)
	.dwattr DW$3, DW_AT_external(0x01)

DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteUartConfig_C"), DW_AT_symbol_name("_WriteUartConfig_C")
	.dwattr DW$4, DW_AT_type(*DW$T$10)
	.dwattr DW$4, DW_AT_declaration(0x01)
	.dwattr DW$4, DW_AT_external(0x01)

DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadDataFromUart_C"), DW_AT_symbol_name("_ReadDataFromUart_C")
	.dwattr DW$5, DW_AT_type(*DW$T$10)
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)

DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteUartConfig_D"), DW_AT_symbol_name("_WriteUartConfig_D")
	.dwattr DW$6, DW_AT_type(*DW$T$10)
	.dwattr DW$6, DW_AT_declaration(0x01)
	.dwattr DW$6, DW_AT_external(0x01)

DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteBytetoUart_C"), DW_AT_symbol_name("_WriteBytetoUart_C")
	.dwattr DW$7, DW_AT_type(*DW$T$10)
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)

DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteBytetoUart_D"), DW_AT_symbol_name("_WriteBytetoUart_D")
	.dwattr DW$8, DW_AT_type(*DW$T$10)
	.dwattr DW$8, DW_AT_declaration(0x01)
	.dwattr DW$8, DW_AT_external(0x01)

DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("WaitforUartTxComplete_C"), DW_AT_symbol_name("_WaitforUartTxComplete_C")
	.dwattr DW$9, DW_AT_type(*DW$T$10)
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)
DW$10	.dwtag  DW_TAG_variable, DW_AT_name("gpa"), DW_AT_symbol_name("_gpa")
	.dwattr DW$10, DW_AT_type(*DW$T$88)
	.dwattr DW$10, DW_AT_declaration(0x01)
	.dwattr DW$10, DW_AT_external(0x01)
DW$11	.dwtag  DW_TAG_variable, DW_AT_name("gpb"), DW_AT_symbol_name("_gpb")
	.dwattr DW$11, DW_AT_type(*DW$T$92)
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)
DW$12	.dwtag  DW_TAG_variable, DW_AT_name("gpf"), DW_AT_symbol_name("_gpf")
	.dwattr DW$12, DW_AT_type(*DW$T$96)
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)
DW$13	.dwtag  DW_TAG_variable, DW_AT_name("settings"), DW_AT_symbol_name("_settings")
	.dwattr DW$13, DW_AT_type(*DW$T$99)
	.dwattr DW$13, DW_AT_declaration(0x01)
	.dwattr DW$13, DW_AT_external(0x01)
DW$14	.dwtag  DW_TAG_variable, DW_AT_name("safe2"), DW_AT_symbol_name("_safe2")
	.dwattr DW$14, DW_AT_type(*DW$T$100)
	.dwattr DW$14, DW_AT_declaration(0x01)
	.dwattr DW$14, DW_AT_external(0x01)
DW$15	.dwtag  DW_TAG_variable, DW_AT_name("timers"), DW_AT_symbol_name("_timers")
	.dwattr DW$15, DW_AT_type(*DW$T$102)
	.dwattr DW$15, DW_AT_declaration(0x01)
	.dwattr DW$15, DW_AT_external(0x01)
DW$16	.dwtag  DW_TAG_variable, DW_AT_name("modbusrxchar"), DW_AT_symbol_name("_modbusrxchar")
	.dwattr DW$16, DW_AT_type(*DW$T$6)
	.dwattr DW$16, DW_AT_declaration(0x01)
	.dwattr DW$16, DW_AT_external(0x01)
DW$17	.dwtag  DW_TAG_variable, DW_AT_name("pcmodbus"), DW_AT_symbol_name("_pcmodbus")
	.dwattr DW$17, DW_AT_type(*DW$T$104)
	.dwattr DW$17, DW_AT_declaration(0x01)
	.dwattr DW$17, DW_AT_external(0x01)
	.global	_sciportA
_sciportA:	.usect	".sciportAregisters",14,0,0
DW$18	.dwtag  DW_TAG_variable, DW_AT_name("sciportA"), DW_AT_symbol_name("_sciportA")
	.dwattr DW$18, DW_AT_location[DW_OP_addr _sciportA]
	.dwattr DW$18, DW_AT_type(*DW$T$106)
	.dwattr DW$18, DW_AT_external(0x01)
	.global	_sciportB
_sciportB:	.usect	".sciportBregisters",14,0,0
DW$19	.dwtag  DW_TAG_variable, DW_AT_name("sciportB"), DW_AT_symbol_name("_sciportB")
	.dwattr DW$19, DW_AT_location[DW_OP_addr _sciportB]
	.dwattr DW$19, DW_AT_type(*DW$T$106)
	.dwattr DW$19, DW_AT_external(0x01)
	.global	_receiveA
_receiveA:	.usect	".commssection1",150,0,1
DW$20	.dwtag  DW_TAG_variable, DW_AT_name("receiveA"), DW_AT_symbol_name("_receiveA")
	.dwattr DW$20, DW_AT_location[DW_OP_addr _receiveA]
	.dwattr DW$20, DW_AT_type(*DW$T$113)
	.dwattr DW$20, DW_AT_external(0x01)
	.global	_transmitA
_transmitA:	.usect	".commssection1",12,0,1
DW$21	.dwtag  DW_TAG_variable, DW_AT_name("transmitA"), DW_AT_symbol_name("_transmitA")
	.dwattr DW$21, DW_AT_location[DW_OP_addr _transmitA]
	.dwattr DW$21, DW_AT_type(*DW$T$115)
	.dwattr DW$21, DW_AT_external(0x01)
	.global	_receiveB
_receiveB:	.usect	".commssection2",150,0,1
DW$22	.dwtag  DW_TAG_variable, DW_AT_name("receiveB"), DW_AT_symbol_name("_receiveB")
	.dwattr DW$22, DW_AT_location[DW_OP_addr _receiveB]
	.dwattr DW$22, DW_AT_type(*DW$T$117)
	.dwattr DW$22, DW_AT_external(0x01)
	.global	_transmitB
_transmitB:	.usect	".commssection2",12,0,1
DW$23	.dwtag  DW_TAG_variable, DW_AT_name("transmitB"), DW_AT_symbol_name("_transmitB")
	.dwattr DW$23, DW_AT_location[DW_OP_addr _transmitB]
	.dwattr DW$23, DW_AT_type(*DW$T$115)
	.dwattr DW$23, DW_AT_external(0x01)
	.global	_receiveC
_receiveC:	.usect	".commssection1",104,0,0
DW$24	.dwtag  DW_TAG_variable, DW_AT_name("receiveC"), DW_AT_symbol_name("_receiveC")
	.dwattr DW$24, DW_AT_location[DW_OP_addr _receiveC]
	.dwattr DW$24, DW_AT_type(*DW$T$119)
	.dwattr DW$24, DW_AT_external(0x01)
	.global	_receiveD
_receiveD:	.usect	".ebss",30,1,1
DW$25	.dwtag  DW_TAG_variable, DW_AT_name("receiveD"), DW_AT_symbol_name("_receiveD")
	.dwattr DW$25, DW_AT_location[DW_OP_addr _receiveD]
	.dwattr DW$25, DW_AT_type(*DW$T$121)
	.dwattr DW$25, DW_AT_external(0x01)
;	C:\CCStudio_v3.3\C2000\cgtools\bin\opt2000.exe C:\Users\Andrew\AppData\Local\Temp\TI5562 C:\Users\Andrew\AppData\Local\Temp\TI5564 
;	C:\CCStudio_v3.3\C2000\cgtools\bin\ac2000.exe -q -D_INLINE -DLARGE_MODEL -IC:/CCStudio_v3.3/C2000/xdais/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/bios/include -IC:/CCStudio_v3.3/bios_5_31_02/packages/ti/rtdx/include/c2000 -IC:/CCStudio_v3.3/C2000/cgtools/include --version=28 --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\Andrew\AppData\Local\Temp\TI5562 --template_info_file C:\Users\Andrew\AppData\Local\Temp\TI5566 --object_file 
	.sect	".text"
	.global	_Init485Drivers

DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("Init485Drivers"), DW_AT_symbol_name("_Init485Drivers")
	.dwattr DW$26, DW_AT_low_pc(_Init485Drivers)
	.dwattr DW$26, DW_AT_high_pc(0x00)
	.dwattr DW$26, DW_AT_begin_file("sci.c")
	.dwattr DW$26, DW_AT_begin_line(0x32)
	.dwattr DW$26, DW_AT_begin_column(0x06)
	.dwattr DW$26, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$26, DW_AT_skeletal(0x01)
	.dwpsn	"sci.c",51,1

;***************************************************************
;* FNAME: _Init485Drivers               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_Init485Drivers:
 eallow             ; Enable accesses to PIE control registers
        MOV       AL,*(0:0x70c1)        ; |53| 
        ORB       AL,#0x1f              ; |53| 
        MOV       *(0:0x70c1),AL        ; |53| 
        NOP
        NOP
        MOV       AL,*(0:0x70c5)        ; |54| 
        OR        AL,#0x0300            ; |54| 
        MOV       *(0:0x70c5),AL        ; |54| 
        NOP
        NOP
        MOV       AL,*(0:0x70d5)        ; |55| 
        OR        AL,#0x1800            ; |55| 
        MOV       *(0:0x70d5),AL        ; |55| 
 edis               ; Disable accesses to PIE control registers
        MOVW      DP,#_gpb
        AND       @_gpb,#0xfdff         ; |57| 
        MOVW      DP,#_gpb
        AND       @_gpb,#0xfeff         ; |58| 
        MOVW      DP,#_gpf
        AND       @_gpf,#0xf7ff         ; |59| 
        MOVW      DP,#_gpf
        AND       @_gpf,#0xefff         ; |60| 
        MOVW      DP,#_gpa
        AND       @_gpa,#0xffef         ; |62| 
        MOVW      DP,#_gpa
        OR        @_gpa,#0x0001         ; |65| 
        SPM       #0
        MOVW      DP,#_gpa
        OR        @_gpa,#0x0002         ; |66| 
        MOVW      DP,#_gpa
        OR        @_gpa,#0x0004         ; |67| 
        MOVW      DP,#_gpa
        OR        @_gpa,#0x0008         ; |68| 
	.dwpsn	"sci.c",71,1
        LRETR
        ; return occurs
	.dwattr DW$26, DW_AT_end_file("sci.c")
	.dwattr DW$26, DW_AT_end_line(0x47)
	.dwattr DW$26, DW_AT_end_column(0x01)
	.dwendtag DW$26

	.sect	".text"
	.global	_SerialPortASetup

DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("SerialPortASetup"), DW_AT_symbol_name("_SerialPortASetup")
	.dwattr DW$27, DW_AT_low_pc(_SerialPortASetup)
	.dwattr DW$27, DW_AT_high_pc(0x00)
	.dwattr DW$27, DW_AT_begin_file("sci.c")
	.dwattr DW$27, DW_AT_begin_line(0x49)
	.dwattr DW$27, DW_AT_begin_column(0x06)
	.dwattr DW$27, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$27, DW_AT_skeletal(0x01)
	.dwpsn	"sci.c",74,1

;***************************************************************
;* FNAME: _SerialPortASetup             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SerialPortASetup:
 eallow             ; Enable accesses to PIE control registers
        MOV       AL,*(0:0x70d5)        ; |77| 
        ORB       AL,#0x10              ; |77| 
        MOV       *(0:0x70d5),AL        ; |77| 
        NOP
        NOP
        MOV       AL,*(0:0x70d4)        ; |78| 
        ORB       AL,#0x30              ; |78| 
        MOV       *(0:0x70d4),AL        ; |78| 
        NOP
        NOP
        MOV       AL,*(0:0x701c)        ; |79| 
        OR        AL,#0x0400            ; |79| 
        MOV       *(0:0x701c),AL        ; |79| 
        MOVB      AL,#2                 ; |83| 
        MOV       *(0:0x701b),AL        ; |83| 
 edis               ; Disable accesses to PIE control registers
        SPM       #0
        MOV       AL,#600               ; |85| 
        LCR       #_NOPDelay            ; |85| 
        ; call occurs [#_NOPDelay] ; |85| 
        MOVW      DP,#_sciportA
        MOV       @_sciportA,#7         ; |86| 
        MOVW      DP,#_sciportA+1
        MOV       @_sciportA+1,#35      ; |88| 
        MOVW      DP,#_sciportA+2
        MOV       @_sciportA+2,#0       ; |93| 
        MOVW      DP,#_sciportA+3
        MOV       @_sciportA+3,#121     ; |94| 
        MOVW      DP,#_sciportA+10
        MOV       @_sciportA+10,#32768  ; |96| 
        MOVW      DP,#_sciportA+11
        MOV       @_sciportA+11,#0      ; |97| 
        MOVW      DP,#_sciportA+12
        MOV       @_sciportA+12,#0      ; |98| 
        MOVW      DP,#_sciportA+13
        MOV       @_sciportA+13,#0      ; |99| 
        MOVW      DP,#_sciportA+4
        OR        @_sciportA+4,#0x0002  ; |101| 
        MOVL      XAR4,#_receiveA+9     ; |103| 
        MOVW      DP,#_receiveA+2
        MOVB      ACC,#140
        MOVL      @_receiveA+2,XAR4     ; |103| 
        MOVW      DP,#_receiveA
        ADDL      ACC,XAR4
        MOVL      @_receiveA,XAR4       ; |103| 
        MOVW      DP,#_receiveA+4
        MOVL      @_receiveA+4,ACC      ; |104| 
        MOVW      DP,#_receiveA+7
        MOV       @_receiveA+7,#0       ; |106| 
        MOVW      DP,#_receiveA+8
        MOVL      XAR4,#_transmitA+6    ; |109| 
        MOVB      ACC,#5
        MOV       @_receiveA+8,#0       ; |107| 
        ADDL      ACC,XAR4
        MOVW      DP,#_transmitA+2
        MOVL      @_transmitA+2,XAR4    ; |109| 
        MOVW      DP,#_transmitA
        MOVL      @_transmitA,XAR4      ; |109| 
        MOVW      DP,#_transmitA+4
        MOVL      @_transmitA+4,ACC     ; |110| 
	.dwpsn	"sci.c",112,1
        LRETR
        ; return occurs
	.dwattr DW$27, DW_AT_end_file("sci.c")
	.dwattr DW$27, DW_AT_end_line(0x70)
	.dwattr DW$27, DW_AT_end_column(0x01)
	.dwendtag DW$27

	.sect	".text"
	.global	_SerialPortBSetup

DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("SerialPortBSetup"), DW_AT_symbol_name("_SerialPortBSetup")
	.dwattr DW$28, DW_AT_low_pc(_SerialPortBSetup)
	.dwattr DW$28, DW_AT_high_pc(0x00)
	.dwattr DW$28, DW_AT_begin_file("sci.c")
	.dwattr DW$28, DW_AT_begin_line(0x73)
	.dwattr DW$28, DW_AT_begin_column(0x06)
	.dwattr DW$28, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$28, DW_AT_skeletal(0x01)
	.dwpsn	"sci.c",116,1

;***************************************************************
;* FNAME: _SerialPortBSetup             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SerialPortBSetup:
 eallow             ; Enable accesses to PIE control registers
        MOV       AL,*(0:0x70d9)        ; |119| 
        ORB       AL,#0x10              ; |119| 
        MOV       *(0:0x70d9),AL        ; |119| 
        NOP
        NOP
        MOV       AL,*(0:0x70d8)        ; |120| 
        ORB       AL,#0x30              ; |120| 
        MOV       *(0:0x70d8),AL        ; |120| 
        NOP
        NOP
        MOV       AL,*(0:0x701c)        ; |121| 
        OR        AL,#0x0800            ; |121| 
        MOV       *(0:0x701c),AL        ; |121| 
        MOVB      AL,#2                 ; |125| 
        MOV       *(0:0x701b),AL        ; |125| 
 edis               ; Disable accesses to PIE control registers
        SPM       #0
        MOV       AL,#600               ; |127| 
        LCR       #_NOPDelay            ; |127| 
        ; call occurs [#_NOPDelay] ; |127| 
        MOVW      DP,#_sciportB
        MOV       @_sciportB,#7         ; |128| 
        MOVW      DP,#_sciportB+1
        MOV       @_sciportB+1,#35      ; |130| 
        MOVW      DP,#_sciportB+2
        MOV       @_sciportB+2,#0       ; |143| 
        MOVW      DP,#_sciportB+3
        MOV       @_sciportB+3,#40      ; |144| 
        MOVW      DP,#_sciportB+10
        MOV       @_sciportB+10,#32768  ; |146| 
        MOVW      DP,#_sciportB+11
        MOV       @_sciportB+11,#0      ; |147| 
        MOVW      DP,#_sciportB+12
        MOV       @_sciportB+12,#0      ; |148| 
        MOVW      DP,#_sciportB+13
        MOV       @_sciportB+13,#0      ; |149| 
        MOVW      DP,#_sciportB+4
        OR        @_sciportB+4,#0x0003  ; |151| 
        MOVW      DP,#_sciportB+4
        OR        @_sciportB+4,#0x0002  ; |153| 
        MOVL      XAR4,#_receiveB+9     ; |155| 
        MOVW      DP,#_receiveB+2
        MOVB      ACC,#140
        MOVL      @_receiveB+2,XAR4     ; |155| 
        MOVW      DP,#_receiveB
        ADDL      ACC,XAR4
        MOVL      @_receiveB,XAR4       ; |155| 
        MOVW      DP,#_receiveB+4
        MOVL      @_receiveB+4,ACC      ; |156| 
        MOVW      DP,#_receiveB+6
        MOV       @_receiveB+6,#0       ; |157| 
        MOVL      XAR4,#_transmitB+6    ; |159| 
        MOVW      DP,#_transmitB+2
        MOVL      @_transmitB+2,XAR4    ; |159| 
        MOVW      DP,#_transmitB
        MOVB      ACC,#5
        MOVL      @_transmitB,XAR4      ; |159| 
        ADDL      ACC,XAR4
        MOVW      DP,#_transmitB+4
        MOVL      @_transmitB+4,ACC     ; |160| 
        MOVW      DP,#_timers+57
        MOV       @_timers+57,#6000     ; |162| 
        MOVW      DP,#_pcmodbus+271
        MOV       @_pcmodbus+271,#0     ; |163| 
        MOVW      DP,#_safe2+14
        MOV       @_safe2+14,#1         ; |165| 
	.dwpsn	"sci.c",167,1
        LRETR
        ; return occurs
	.dwattr DW$28, DW_AT_end_file("sci.c")
	.dwattr DW$28, DW_AT_end_line(0xa7)
	.dwattr DW$28, DW_AT_end_column(0x01)
	.dwendtag DW$28

	.sect	".text"
	.global	_PerformSciTxIntA

DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("PerformSciTxIntA"), DW_AT_symbol_name("_PerformSciTxIntA")
	.dwattr DW$29, DW_AT_low_pc(_PerformSciTxIntA)
	.dwattr DW$29, DW_AT_high_pc(0x00)
	.dwattr DW$29, DW_AT_begin_file("sci.c")
	.dwattr DW$29, DW_AT_begin_line(0xab)
	.dwattr DW$29, DW_AT_begin_column(0x06)
	.dwattr DW$29, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$29, DW_AT_skeletal(0x01)
	.dwpsn	"sci.c",172,1

;***************************************************************
;* FNAME: _PerformSciTxIntA             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_PerformSciTxIntA:
        MOVW      DP,#_sciportA+4
        TBIT      @_sciportA+4,#7       ; |174| 
        BF        L1,NTC                ; |174| 
        ; branchcc occurs ; |174| 
        MOVW      DP,#_transmitA+2
        MOVL      XAR4,@_transmitA+2    ; |176| 
        MOVW      DP,#_transmitA
        MOVL      XAR6,@_transmitA      ; |176| 
        MOVL      ACC,XAR4              ; |176| 
        CMPL      ACC,XAR6              ; |176| 
        BF        L1,EQ                 ; |176| 
        ; branchcc occurs ; |176| 
        MOV       AL,*+XAR4[0]          ; |178| 
        MOVW      DP,#_sciportA+9
        MOV       @_sciportA+9,AL       ; |178| 
        MOVB      ACC,#1
        ADDL      ACC,XAR4
        MOVL      XAR6,ACC              ; |179| 
        MOVW      DP,#_transmitA+2
        MOVL      @_transmitA+2,ACC     ; |179| 
        MOVW      DP,#_transmitA+4
        MOVL      ACC,@_transmitA+4     ; |179| 
        CMPL      ACC,XAR6              ; |179| 
        BF        L1,NEQ                ; |179| 
        ; branchcc occurs ; |179| 
        MOVL      XAR4,#_transmitA+6    ; |179| 
        MOVW      DP,#_transmitA+2
        MOVL      @_transmitA+2,XAR4    ; |179| 
L1:    
	.dwpsn	"sci.c",183,1
        LRETR
        ; return occurs
	.dwattr DW$29, DW_AT_end_file("sci.c")
	.dwattr DW$29, DW_AT_end_line(0xb7)
	.dwattr DW$29, DW_AT_end_column(0x01)
	.dwendtag DW$29

	.sect	".text"
	.global	_PerformSciRxIntA

DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("PerformSciRxIntA"), DW_AT_symbol_name("_PerformSciRxIntA")
	.dwattr DW$30, DW_AT_low_pc(_PerformSciRxIntA)
	.dwattr DW$30, DW_AT_high_pc(0x00)
	.dwattr DW$30, DW_AT_begin_file("sci.c")
	.dwattr DW$30, DW_AT_begin_line(0xba)
	.dwattr DW$30, DW_AT_begin_column(0x06)
	.dwattr DW$30, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$30, DW_AT_skeletal(0x01)
	.dwpsn	"sci.c",187,1

;***************************************************************
;* FNAME: _PerformSciRxIntA             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_PerformSciRxIntA:
        MOVW      DP,#_gpb
        TBIT      @_gpb,#13             ; |191| 
        BF        L4,TC                 ; |191| 
        ; branchcc occurs ; |191| 
        MOVW      DP,#_sciportA+5
        TBIT      @_sciportA+5,#7       ; |193| 
        BF        L3,TC                 ; |193| 
        ; branchcc occurs ; |193| 
        MOVW      DP,#_receiveA+7
        MOVZ      AR0,@_receiveA+7      ; |201| 
        MOVL      XAR4,#_receiveA+9     ; |201| 
        MOVW      DP,#_sciportA+7
        MOV       AL,@_sciportA+7       ; |201| 
        MOVW      DP,#_receiveA+7
        MOV       *+XAR4[AR0],AL        ; |201| 
        INC       @_receiveA+7          ; |204| 
        MOVW      DP,#_receiveA+7
        MOV       AL,@_receiveA+7       ; |204| 
        CMPB      AL,#140               ; |204| 
        BF        L2,LO                 ; |204| 
        ; branchcc occurs ; |204| 
        MOVW      DP,#_receiveA+7
        MOV       @_receiveA+7,#0       ; |204| 
L2:    
        MOVW      DP,#_receiveA
        MOVL      ACC,@_receiveA        ; |206| 
        ADDB      ACC,#1                ; |206| 
        MOVL      XAR6,ACC              ; |206| 
        MOVW      DP,#_receiveA
        MOVL      @_receiveA,ACC        ; |206| 
        MOVW      DP,#_receiveA+4
        MOVL      ACC,@_receiveA+4      ; |206| 
        CMPL      ACC,XAR6              ; |206| 
        BF        L4,NEQ                ; |206| 
        ; branchcc occurs ; |206| 
        MOVW      DP,#_receiveA
        MOVL      @_receiveA,XAR4       ; |206| 
        BF        L4,UNC                ; |206| 
        ; branch occurs ; |206| 
L3:    
        MOVW      DP,#_sciportA+1
        AND       @_sciportA+1,#0xffdf  ; |196| 
        MOVW      DP,#_sciportA+1
        OR        @_sciportA+1,#0x0020  ; |197| 
L4:    
	.dwpsn	"sci.c",209,1
        LRETR
        ; return occurs
	.dwattr DW$30, DW_AT_end_file("sci.c")
	.dwattr DW$30, DW_AT_end_line(0xd1)
	.dwattr DW$30, DW_AT_end_column(0x01)
	.dwendtag DW$30

	.sect	".text"
	.global	_PerformSciTxIntB

DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("PerformSciTxIntB"), DW_AT_symbol_name("_PerformSciTxIntB")
	.dwattr DW$31, DW_AT_low_pc(_PerformSciTxIntB)
	.dwattr DW$31, DW_AT_high_pc(0x00)
	.dwattr DW$31, DW_AT_begin_file("sci.c")
	.dwattr DW$31, DW_AT_begin_line(0xd5)
	.dwattr DW$31, DW_AT_begin_column(0x06)
	.dwattr DW$31, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$31, DW_AT_skeletal(0x01)
	.dwpsn	"sci.c",214,1

;***************************************************************
;* FNAME: _PerformSciTxIntB             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_PerformSciTxIntB:
        MOVW      DP,#_sciportB+4
        TBIT      @_sciportB+4,#7       ; |216| 
        BF        L5,NTC                ; |216| 
        ; branchcc occurs ; |216| 
        MOVW      DP,#_transmitB+2
        MOVL      XAR4,@_transmitB+2    ; |218| 
        MOVW      DP,#_transmitB
        MOVL      XAR6,@_transmitB      ; |218| 
        MOVL      ACC,XAR4              ; |218| 
        CMPL      ACC,XAR6              ; |218| 
        BF        L5,EQ                 ; |218| 
        ; branchcc occurs ; |218| 
        MOV       AL,*+XAR4[0]          ; |220| 
        MOVW      DP,#_sciportB+9
        MOV       @_sciportB+9,AL       ; |220| 
        MOVB      ACC,#1
        ADDL      ACC,XAR4
        MOVL      XAR6,ACC              ; |221| 
        MOVW      DP,#_transmitB+2
        MOVL      @_transmitB+2,ACC     ; |221| 
        MOVW      DP,#_transmitB+4
        MOVL      ACC,@_transmitB+4     ; |221| 
        CMPL      ACC,XAR6              ; |221| 
        BF        L5,NEQ                ; |221| 
        ; branchcc occurs ; |221| 
        MOVL      XAR4,#_transmitB+6    ; |221| 
        MOVW      DP,#_transmitB+2
        MOVL      @_transmitB+2,XAR4    ; |221| 
L5:    
	.dwpsn	"sci.c",225,1
        LRETR
        ; return occurs
	.dwattr DW$31, DW_AT_end_file("sci.c")
	.dwattr DW$31, DW_AT_end_line(0xe1)
	.dwattr DW$31, DW_AT_end_column(0x01)
	.dwendtag DW$31

	.sect	".text"
	.global	_PerformSciRxIntB

DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("PerformSciRxIntB"), DW_AT_symbol_name("_PerformSciRxIntB")
	.dwattr DW$32, DW_AT_low_pc(_PerformSciRxIntB)
	.dwattr DW$32, DW_AT_high_pc(0x00)
	.dwattr DW$32, DW_AT_begin_file("sci.c")
	.dwattr DW$32, DW_AT_begin_line(0xe4)
	.dwattr DW$32, DW_AT_begin_column(0x06)
	.dwattr DW$32, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$32, DW_AT_skeletal(0x01)
	.dwpsn	"sci.c",229,1

;***************************************************************
;* FNAME: _PerformSciRxIntB             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_PerformSciRxIntB:
        MOVW      DP,#_gpf
        TBIT      @_gpf,#12             ; |233| 
        BF        L8,TC                 ; |233| 
        ; branchcc occurs ; |233| 
        MOVW      DP,#_sciportB+5
        TBIT      @_sciportB+5,#7       ; |235| 
        BF        L7,TC                 ; |235| 
        ; branchcc occurs ; |235| 
        MOVW      DP,#_receiveB
        MOVL      XAR4,@_receiveB       ; |243| 
        MOVW      DP,#_sciportB+7
        MOV       AL,@_sciportB+7       ; |243| 
        MOVW      DP,#_receiveB+7
        MOV       *+XAR4[0],AL          ; |243| 
        INC       @_receiveB+7          ; |244| 
        MOVW      DP,#_receiveB
        MOVL      ACC,@_receiveB        ; |246| 
        ADDB      ACC,#1                ; |246| 
        MOVW      DP,#_receiveB
        MOVL      XAR6,ACC              ; |246| 
        MOVL      @_receiveB,ACC        ; |246| 
        MOVW      DP,#_receiveB+4
        MOVL      ACC,@_receiveB+4      ; |246| 
        CMPL      ACC,XAR6              ; |246| 
        BF        L6,NEQ                ; |246| 
        ; branchcc occurs ; |246| 
        MOVL      XAR4,#_receiveB+9     ; |246| 
        MOVW      DP,#_receiveB
        MOVL      @_receiveB,XAR4       ; |246| 
L6:    
        MOVW      DP,#_timers+39
        MOV       @_timers+39,#200      ; |249| 
        NOP
        BF        L8,UNC                ; |249| 
        ; branch occurs ; |249| 
L7:    
        MOVW      DP,#_sciportB+1
        AND       @_sciportB+1,#0xffdf  ; |238| 
        MOVW      DP,#_sciportB+1
        OR        @_sciportB+1,#0x0020  ; |239| 
L8:    
	.dwpsn	"sci.c",253,1
        LRETR
        ; return occurs
	.dwattr DW$32, DW_AT_end_file("sci.c")
	.dwattr DW$32, DW_AT_end_line(0xfd)
	.dwattr DW$32, DW_AT_end_column(0x01)
	.dwendtag DW$32

	.sect	".text"
	.global	_PerformSciRxIntD

DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("PerformSciRxIntD"), DW_AT_symbol_name("_PerformSciRxIntD")
	.dwattr DW$33, DW_AT_low_pc(_PerformSciRxIntD)
	.dwattr DW$33, DW_AT_high_pc(0x00)
	.dwattr DW$33, DW_AT_begin_file("sci.c")
	.dwattr DW$33, DW_AT_begin_line(0x101)
	.dwattr DW$33, DW_AT_begin_column(0x06)
	.dwattr DW$33, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$33, DW_AT_skeletal(0x01)
	.dwpsn	"sci.c",258,1

;***************************************************************
;* FNAME: _PerformSciRxIntD             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_PerformSciRxIntD:
        MOVW      DP,#_gpb
        TBIT      @_gpb,#12             ; |260| 
        BF        L9,TC                 ; |260| 
        ; branchcc occurs ; |260| 
        LCR       #_ReadDataFromUart_D  ; |262| 
        ; call occurs [#_ReadDataFromUart_D] ; |262| 
        MOVW      DP,#_receiveD
        MOVL      XAR4,@_receiveD       ; |262| 
        ANDB      AL,#255               ; |262| 
        MOVW      DP,#_receiveD+7
        MOV       *+XAR4[0],AL          ; |262| 
        INC       @_receiveD+7          ; |263| 
        MOVW      DP,#_receiveD
        MOVL      ACC,@_receiveD        ; |265| 
        ADDB      ACC,#1                ; |265| 
        MOVL      XAR6,ACC              ; |265| 
        MOVW      DP,#_receiveD
        MOVL      @_receiveD,ACC        ; |265| 
        MOVW      DP,#_receiveD+4
        MOVL      ACC,@_receiveD+4      ; |265| 
        CMPL      ACC,XAR6              ; |265| 
        BF        L9,NEQ                ; |265| 
        ; branchcc occurs ; |265| 
        MOVL      XAR4,#_receiveD+9     ; |265| 
        MOVW      DP,#_receiveD
        MOVL      @_receiveD,XAR4       ; |265| 
L9:    
	.dwpsn	"sci.c",268,1
        LRETR
        ; return occurs
	.dwattr DW$33, DW_AT_end_file("sci.c")
	.dwattr DW$33, DW_AT_end_line(0x10c)
	.dwattr DW$33, DW_AT_end_column(0x01)
	.dwendtag DW$33

	.sect	".text"
	.global	_SendChar

DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("SendChar"), DW_AT_symbol_name("_SendChar")
	.dwattr DW$34, DW_AT_low_pc(_SendChar)
	.dwattr DW$34, DW_AT_high_pc(0x00)
	.dwattr DW$34, DW_AT_begin_file("sci.c")
	.dwattr DW$34, DW_AT_begin_line(0x10e)
	.dwattr DW$34, DW_AT_begin_column(0x06)
	.dwattr DW$34, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$34, DW_AT_skeletal(0x01)
	.dwpsn	"sci.c",271,1

;***************************************************************
;* FNAME: _SendChar                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SendChar:
;* AL    assigned to _c
DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_name("c"), DW_AT_symbol_name("_c")
	.dwattr DW$35, DW_AT_type(*DW$T$51)
	.dwattr DW$35, DW_AT_location[DW_OP_reg0]
        MOVW      DP,#_sciportA+1
        OR        @_sciportA+1,#0x0002  ; |272| 
        MOVW      DP,#_transmitA
        MOVL      XAR4,@_transmitA      ; |273| 
        MOVZ      AR6,AL                ; |271| 
        MOVW      DP,#_transmitA
        MOV       *+XAR4[0],AL          ; |273| 
        MOVL      ACC,@_transmitA       ; |274| 
        ADDB      ACC,#1                ; |274| 
        MOVW      DP,#_transmitA
        MOVL      XAR7,ACC              ; |274| 
        MOVL      @_transmitA,ACC       ; |274| 
        MOVW      DP,#_transmitA+4
        MOVL      ACC,@_transmitA+4     ; |274| 
        CMPL      ACC,XAR7              ; |274| 
        BF        L10,NEQ               ; |274| 
        ; branchcc occurs ; |274| 
        MOVL      XAR4,#_transmitA+6    ; |274| 
        MOVW      DP,#_transmitA
        MOVL      @_transmitA,XAR4      ; |274| 
L10:    
        MOVW      DP,#_sciportA+4
        TBIT      @_sciportA+4,#7       ; |276| 
        BF        L12,TC                ; |276| 
        ; branchcc occurs ; |276| 
L11:    
DW$L$_SendChar$4$B:
	.dwpsn	"sci.c",276,0
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |276| 
        MOVW      DP,#_sciportA+4
        TBIT      @_sciportA+4,#7       ; |276| 
        BF        L11,NTC               ; |276| 
        ; branchcc occurs ; |276| 
DW$L$_SendChar$4$E:
L12:    
        MOVW      DP,#_sciportA+4
        TBIT      @_sciportA+4,#7       ; |277| 
        BF        L13,NTC               ; |277| 
        ; branchcc occurs ; |277| 
        MOVW      DP,#_sciportA+4
        AND       @_sciportA+4,#0xfffe  ; |279| 
        MOVW      DP,#_transmitA+2
        MOVL      XAR4,@_transmitA+2    ; |284| 
        MOVW      DP,#_sciportA+9
        MOV       AL,*+XAR4[0]          ; |284| 
        MOV       @_sciportA+9,AL       ; |284| 
        MOVB      ACC,#1
        ADDL      ACC,XAR4
        MOVW      DP,#_transmitA+2
        MOVL      XAR7,ACC              ; |285| 
        MOVL      @_transmitA+2,ACC     ; |285| 
        MOVW      DP,#_transmitA+4
        MOVL      ACC,@_transmitA+4     ; |285| 
        CMPL      ACC,XAR7              ; |285| 
        BF        L13,NEQ               ; |285| 
        ; branchcc occurs ; |285| 
        MOVL      XAR4,#_transmitA+6    ; |285| 
        MOVW      DP,#_transmitA+2
        MOVL      @_transmitA+2,XAR4    ; |285| 
L13:    
        MOV       AL,AR6                ; |287| 
	.dwpsn	"sci.c",288,1
        LRETR
        ; return occurs

DW$36	.dwtag  DW_TAG_loop
	.dwattr DW$36, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sci.asm:L11:1:1473840058")
	.dwattr DW$36, DW_AT_begin_file("sci.c")
	.dwattr DW$36, DW_AT_begin_line(0x114)
	.dwattr DW$36, DW_AT_end_line(0x114)
DW$37	.dwtag  DW_TAG_loop_range
	.dwattr DW$37, DW_AT_low_pc(DW$L$_SendChar$4$B)
	.dwattr DW$37, DW_AT_high_pc(DW$L$_SendChar$4$E)
	.dwendtag DW$36

	.dwattr DW$34, DW_AT_end_file("sci.c")
	.dwattr DW$34, DW_AT_end_line(0x120)
	.dwattr DW$34, DW_AT_end_column(0x01)
	.dwendtag DW$34

	.sect	".text"
	.global	_SendCharB

DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("SendCharB"), DW_AT_symbol_name("_SendCharB")
	.dwattr DW$38, DW_AT_low_pc(_SendCharB)
	.dwattr DW$38, DW_AT_high_pc(0x00)
	.dwattr DW$38, DW_AT_begin_file("sci.c")
	.dwattr DW$38, DW_AT_begin_line(0x122)
	.dwattr DW$38, DW_AT_begin_column(0x06)
	.dwattr DW$38, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$38, DW_AT_skeletal(0x01)
	.dwpsn	"sci.c",291,1

;***************************************************************
;* FNAME: _SendCharB                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SendCharB:
;* AL    assigned to _c
DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_name("c"), DW_AT_symbol_name("_c")
	.dwattr DW$39, DW_AT_type(*DW$T$51)
	.dwattr DW$39, DW_AT_location[DW_OP_reg0]
        MOVW      DP,#_sciportB+1
        OR        @_sciportB+1,#0x0002  ; |292| 
        MOVW      DP,#_transmitB
        MOVL      XAR4,@_transmitB      ; |293| 
        MOVZ      AR6,AL                ; |291| 
        MOVW      DP,#_transmitB
        MOV       *+XAR4[0],AL          ; |293| 
        MOVL      ACC,@_transmitB       ; |294| 
        ADDB      ACC,#1                ; |294| 
        MOVW      DP,#_transmitB
        MOVL      XAR7,ACC              ; |294| 
        MOVL      @_transmitB,ACC       ; |294| 
        MOVW      DP,#_transmitB+4
        MOVL      ACC,@_transmitB+4     ; |294| 
        CMPL      ACC,XAR7              ; |294| 
        BF        L14,NEQ               ; |294| 
        ; branchcc occurs ; |294| 
        MOVL      XAR4,#_transmitB+6    ; |294| 
        MOVW      DP,#_transmitB
        MOVL      @_transmitB,XAR4      ; |294| 
L14:    
        MOVW      DP,#_sciportB+4
        TBIT      @_sciportB+4,#7       ; |297| 
        BF        L16,TC                ; |297| 
        ; branchcc occurs ; |297| 
L15:    
DW$L$_SendCharB$4$B:
	.dwpsn	"sci.c",297,0
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |297| 
        MOVW      DP,#_sciportB+4
        TBIT      @_sciportB+4,#7       ; |297| 
        BF        L15,NTC               ; |297| 
        ; branchcc occurs ; |297| 
DW$L$_SendCharB$4$E:
L16:    
        MOVW      DP,#_sciportB+4
        TBIT      @_sciportB+4,#7       ; |299| 
        BF        L17,NTC               ; |299| 
        ; branchcc occurs ; |299| 
        MOVW      DP,#_sciportB+4
        AND       @_sciportB+4,#0xfffe  ; |301| 
        MOVW      DP,#_transmitB+2
        MOVL      XAR4,@_transmitB+2    ; |306| 
        MOVW      DP,#_sciportB+9
        MOV       AL,*+XAR4[0]          ; |306| 
        MOV       @_sciportB+9,AL       ; |306| 
        MOVB      ACC,#1
        ADDL      ACC,XAR4
        MOVW      DP,#_transmitB+2
        MOVL      XAR7,ACC              ; |307| 
        MOVL      @_transmitB+2,ACC     ; |307| 
        MOVW      DP,#_transmitB+4
        MOVL      ACC,@_transmitB+4     ; |307| 
        CMPL      ACC,XAR7              ; |307| 
        BF        L17,NEQ               ; |307| 
        ; branchcc occurs ; |307| 
        MOVL      XAR4,#_transmitB+6    ; |307| 
        MOVW      DP,#_transmitB+2
        MOVL      @_transmitB+2,XAR4    ; |307| 
L17:    
        MOV       AL,AR6                ; |311| 
        MOVW      DP,#_timers+57
        MOV       @_timers+57,#6000     ; |309| 
        MOVW      DP,#_pcmodbus+271
        MOV       @_pcmodbus+271,#0     ; |310| 
	.dwpsn	"sci.c",312,1
        LRETR
        ; return occurs

DW$40	.dwtag  DW_TAG_loop
	.dwattr DW$40, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sci.asm:L15:1:1473840058")
	.dwattr DW$40, DW_AT_begin_file("sci.c")
	.dwattr DW$40, DW_AT_begin_line(0x129)
	.dwattr DW$40, DW_AT_end_line(0x129)
DW$41	.dwtag  DW_TAG_loop_range
	.dwattr DW$41, DW_AT_low_pc(DW$L$_SendCharB$4$B)
	.dwattr DW$41, DW_AT_high_pc(DW$L$_SendCharB$4$E)
	.dwendtag DW$40

	.dwattr DW$38, DW_AT_end_file("sci.c")
	.dwattr DW$38, DW_AT_end_line(0x138)
	.dwattr DW$38, DW_AT_end_column(0x01)
	.dwendtag DW$38

	.sect	".text"
	.global	_SendCLIChar

DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("SendCLIChar"), DW_AT_symbol_name("_SendCLIChar")
	.dwattr DW$42, DW_AT_low_pc(_SendCLIChar)
	.dwattr DW$42, DW_AT_high_pc(0x00)
	.dwattr DW$42, DW_AT_begin_file("sci.c")
	.dwattr DW$42, DW_AT_begin_line(0x13b)
	.dwattr DW$42, DW_AT_begin_column(0x06)
	.dwattr DW$42, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$42, DW_AT_skeletal(0x01)
	.dwpsn	"sci.c",316,1

;***************************************************************
;* FNAME: _SendCLIChar                  FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_SendCLIChar:
;* AL    assigned to _c
DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_name("c"), DW_AT_symbol_name("_c")
	.dwattr DW$43, DW_AT_type(*DW$T$51)
	.dwattr DW$43, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVZ      AR1,AL                ; |316| 
        LCR       #_SendCharD           ; |317| 
        ; call occurs [#_SendCharD] ; |317| 
        MOV       AL,AR1                ; |317| 
        MOVL      XAR1,*--SP            ; |317| 
	.dwpsn	"sci.c",320,1
        LRETR
        ; return occurs
	.dwattr DW$42, DW_AT_end_file("sci.c")
	.dwattr DW$42, DW_AT_end_line(0x140)
	.dwattr DW$42, DW_AT_end_column(0x01)
	.dwendtag DW$42

	.sect	".text"
	.global	_CLITransmitBuffer

DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("CLITransmitBuffer"), DW_AT_symbol_name("_CLITransmitBuffer")
	.dwattr DW$44, DW_AT_low_pc(_CLITransmitBuffer)
	.dwattr DW$44, DW_AT_high_pc(0x00)
	.dwattr DW$44, DW_AT_begin_file("sci.c")
	.dwattr DW$44, DW_AT_begin_line(0x142)
	.dwattr DW$44, DW_AT_begin_column(0x06)
	.dwattr DW$44, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$44, DW_AT_skeletal(0x01)
	.dwpsn	"sci.c",323,1

;***************************************************************
;* FNAME: _CLITransmitBuffer            FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_CLITransmitBuffer:
;* AR4   assigned to _ptr
DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$45, DW_AT_type(*DW$T$65)
	.dwattr DW$45, DW_AT_location[DW_OP_reg12]
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      XAR2,XAR4             ; |323| 
        MOV       AL,*+XAR2[0]          ; |326| 
        MOVB      XAR1,#0
        BF        L19,EQ                ; |326| 
        ; branchcc occurs ; |326| 
L18:    
DW$L$_CLITransmitBuffer$2$B:
	.dwpsn	"sci.c",327,0
        MOV       AL,*+XAR2[AR1]        ; |328| 
        LCR       #_SendCharD           ; |328| 
        ; call occurs [#_SendCharD] ; |328| 
        ADDB      XAR1,#1               ; |332| 
        MOVW      DP,#_settings
        MOV       @_settings,#1         ; |332| 
        MOV       AL,*+XAR2[AR1]        ; |332| 
	.dwpsn	"sci.c",333,0
        BF        L18,NEQ               ; |332| 
        ; branchcc occurs ; |332| 
DW$L$_CLITransmitBuffer$2$E:
L19:    
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"sci.c",334,1
        LRETR
        ; return occurs

DW$46	.dwtag  DW_TAG_loop
	.dwattr DW$46, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sci.asm:L18:1:1473840058")
	.dwattr DW$46, DW_AT_begin_file("sci.c")
	.dwattr DW$46, DW_AT_begin_line(0x146)
	.dwattr DW$46, DW_AT_end_line(0x14d)
DW$47	.dwtag  DW_TAG_loop_range
	.dwattr DW$47, DW_AT_low_pc(DW$L$_CLITransmitBuffer$2$B)
	.dwattr DW$47, DW_AT_high_pc(DW$L$_CLITransmitBuffer$2$E)
	.dwendtag DW$46

	.dwattr DW$44, DW_AT_end_file("sci.c")
	.dwattr DW$44, DW_AT_end_line(0x14e)
	.dwattr DW$44, DW_AT_end_column(0x01)
	.dwendtag DW$44

	.sect	".text"
	.global	_DebugStringOut

DW$48	.dwtag  DW_TAG_subprogram, DW_AT_name("DebugStringOut"), DW_AT_symbol_name("_DebugStringOut")
	.dwattr DW$48, DW_AT_low_pc(_DebugStringOut)
	.dwattr DW$48, DW_AT_high_pc(0x00)
	.dwattr DW$48, DW_AT_begin_file("sci.c")
	.dwattr DW$48, DW_AT_begin_line(0x151)
	.dwattr DW$48, DW_AT_begin_column(0x06)
	.dwattr DW$48, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$48, DW_AT_skeletal(0x01)
	.dwpsn	"sci.c",338,1

;***************************************************************
;* FNAME: _DebugStringOut               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_DebugStringOut:
;* AR4   assigned to _ptr
DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$49, DW_AT_type(*DW$T$65)
	.dwattr DW$49, DW_AT_location[DW_OP_reg12]
        MOVW      DP,#_settings+33
        CMP       @_settings+33,#21930  ; |339| 
        BF        L20,NEQ               ; |339| 
        ; branchcc occurs ; |339| 
        LCR       #_CLITransmitBuffer   ; |342| 
        ; call occurs [#_CLITransmitBuffer] ; |342| 
L20:    
	.dwpsn	"sci.c",344,1
        LRETR
        ; return occurs
	.dwattr DW$48, DW_AT_end_file("sci.c")
	.dwattr DW$48, DW_AT_end_line(0x158)
	.dwattr DW$48, DW_AT_end_column(0x01)
	.dwendtag DW$48

	.sect	".text"
	.global	_MastertoSlaveSendBuffer

DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("MastertoSlaveSendBuffer"), DW_AT_symbol_name("_MastertoSlaveSendBuffer")
	.dwattr DW$50, DW_AT_low_pc(_MastertoSlaveSendBuffer)
	.dwattr DW$50, DW_AT_high_pc(0x00)
	.dwattr DW$50, DW_AT_begin_file("sci.c")
	.dwattr DW$50, DW_AT_begin_line(0x15d)
	.dwattr DW$50, DW_AT_begin_column(0x06)
	.dwattr DW$50, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$50, DW_AT_skeletal(0x01)
	.dwpsn	"sci.c",350,1

;***************************************************************
;* FNAME: _MastertoSlaveSendBuffer      FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_MastertoSlaveSendBuffer:
;* AR4   assigned to _ptr
DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$51, DW_AT_type(*DW$T$49)
	.dwattr DW$51, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _count
DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_name("count"), DW_AT_symbol_name("_count")
	.dwattr DW$52, DW_AT_type(*DW$T$11)
	.dwattr DW$52, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVW      DP,#_gpb
        MOVL      *SP++,XAR2
        MOVZ      AR1,AL                ; |350| 
        OR        @_gpb,#0x2000         ; |353| 
        MOVL      XAR2,XAR4             ; |350| 
        MOV       AL,#600               ; |355| 
        LCR       #_NOPDelay            ; |355| 
        ; call occurs [#_NOPDelay] ; |355| 
        MOV       AL,#600               ; |356| 
        LCR       #_NOPDelay            ; |356| 
        ; call occurs [#_NOPDelay] ; |356| 
        MOV       AL,#600               ; |357| 
        LCR       #_NOPDelay            ; |357| 
        ; call occurs [#_NOPDelay] ; |357| 
        MOV       AL,AR1                ; |359| 
        MOVB      XAR0,#0
        BF        L22,EQ                ; |359| 
        ; branchcc occurs ; |359| 
L21:    
DW$L$_MastertoSlaveSendBuffer$2$B:
	.dwpsn	"sci.c",360,0
        MOV       AL,*+XAR2[AR0]        ; |361| 
        LCR       #_SendChar            ; |361| 
        ; call occurs [#_SendChar] ; |361| 
        ADDB      XAR0,#1               ; |359| 
        MOV       AL,AR1                ; |359| 
        MOVW      DP,#_settings
        CMP       AL,AR0                ; |359| 
        MOV       @_settings,#1         ; |362| 
	.dwpsn	"sci.c",363,0
        BF        L21,HI                ; |359| 
        ; branchcc occurs ; |359| 
DW$L$_MastertoSlaveSendBuffer$2$E:
L22:    
        MOV       AL,#600               ; |369| 
        LCR       #_NOPDelay            ; |369| 
        ; call occurs [#_NOPDelay] ; |369| 
        MOV       AL,#600               ; |370| 
        LCR       #_NOPDelay            ; |370| 
        ; call occurs [#_NOPDelay] ; |370| 
        MOV       AL,#600               ; |371| 
        LCR       #_NOPDelay            ; |371| 
        ; call occurs [#_NOPDelay] ; |371| 
        MOV       AL,#600               ; |372| 
        LCR       #_NOPDelay            ; |372| 
        ; call occurs [#_NOPDelay] ; |372| 
        MOVW      DP,#_gpb
        AND       @_gpb,#0xdfff         ; |374| 
        MOVW      DP,#_sciportA+1
        AND       @_sciportA+1,#0xffdf  ; |379| 
        MOVW      DP,#_sciportA+1
        OR        @_sciportA+1,#0x0020  ; |380| 
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"sci.c",383,1
        LRETR
        ; return occurs

DW$53	.dwtag  DW_TAG_loop
	.dwattr DW$53, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sci.asm:L21:1:1473840058")
	.dwattr DW$53, DW_AT_begin_file("sci.c")
	.dwattr DW$53, DW_AT_begin_line(0x167)
	.dwattr DW$53, DW_AT_end_line(0x16b)
DW$54	.dwtag  DW_TAG_loop_range
	.dwattr DW$54, DW_AT_low_pc(DW$L$_MastertoSlaveSendBuffer$2$B)
	.dwattr DW$54, DW_AT_high_pc(DW$L$_MastertoSlaveSendBuffer$2$E)
	.dwendtag DW$53

	.dwattr DW$50, DW_AT_end_file("sci.c")
	.dwattr DW$50, DW_AT_end_line(0x17f)
	.dwattr DW$50, DW_AT_end_column(0x01)
	.dwendtag DW$50

	.sect	".text"
	.global	_LoadSendBufferB

DW$55	.dwtag  DW_TAG_subprogram, DW_AT_name("LoadSendBufferB"), DW_AT_symbol_name("_LoadSendBufferB")
	.dwattr DW$55, DW_AT_low_pc(_LoadSendBufferB)
	.dwattr DW$55, DW_AT_high_pc(0x00)
	.dwattr DW$55, DW_AT_begin_file("sci.c")
	.dwattr DW$55, DW_AT_begin_line(0x181)
	.dwattr DW$55, DW_AT_begin_column(0x06)
	.dwattr DW$55, DW_AT_frame_base[DW_OP_breg20 -6]
	.dwattr DW$55, DW_AT_skeletal(0x01)
	.dwpsn	"sci.c",386,1

;***************************************************************
;* FNAME: _LoadSendBufferB              FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_LoadSendBufferB:
;* AR4   assigned to _ptr
DW$56	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$56, DW_AT_type(*DW$T$49)
	.dwattr DW$56, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _count
DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_name("count"), DW_AT_symbol_name("_count")
	.dwattr DW$57, DW_AT_type(*DW$T$11)
	.dwattr DW$57, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVW      DP,#_gpf
        MOVL      *SP++,XAR2
        MOVZ      AR1,AL                ; |386| 
        OR        @_gpf,#0x0800         ; |389| 
        MOVW      DP,#_gpf
        MOVL      XAR2,XAR4             ; |386| 
        OR        @_gpf,#0x1000         ; |390| 
        MOV       AL,#600               ; |391| 
        LCR       #_NOPDelay            ; |391| 
        ; call occurs [#_NOPDelay] ; |391| 
        MOV       AL,#600               ; |392| 
        LCR       #_NOPDelay            ; |392| 
        ; call occurs [#_NOPDelay] ; |392| 
        MOV       AL,#600               ; |393| 
        LCR       #_NOPDelay            ; |393| 
        ; call occurs [#_NOPDelay] ; |393| 
        MOV       AL,AR1                ; |395| 
        MOVB      XAR0,#0
        BF        L24,EQ                ; |395| 
        ; branchcc occurs ; |395| 
L23:    
DW$L$_LoadSendBufferB$2$B:
	.dwpsn	"sci.c",396,0
        MOV       AL,*+XAR2[AR0]        ; |397| 
        LCR       #_SendCharB           ; |397| 
        ; call occurs [#_SendCharB] ; |397| 
        ADDB      XAR0,#1               ; |395| 
        MOV       AL,AR1                ; |395| 
        MOVW      DP,#_settings
        CMP       AL,AR0                ; |395| 
        MOV       @_settings,#1         ; |398| 
	.dwpsn	"sci.c",399,0
        BF        L23,HI                ; |395| 
        ; branchcc occurs ; |395| 
DW$L$_LoadSendBufferB$2$E:
L24:    
        MOV       AL,#600               ; |405| 
        LCR       #_NOPDelay            ; |405| 
        ; call occurs [#_NOPDelay] ; |405| 
        MOV       AL,#600               ; |406| 
        LCR       #_NOPDelay            ; |406| 
        ; call occurs [#_NOPDelay] ; |406| 
        MOV       AL,#600               ; |407| 
        LCR       #_NOPDelay            ; |407| 
        ; call occurs [#_NOPDelay] ; |407| 
        MOV       AL,#600               ; |408| 
        LCR       #_NOPDelay            ; |408| 
        ; call occurs [#_NOPDelay] ; |408| 
        MOVW      DP,#_gpf
        AND       @_gpf,#0xefff         ; |409| 
        MOVW      DP,#_gpf
        AND       @_gpf,#0xf7ff         ; |410| 
        MOV       AL,#300               ; |411| 
        LCR       #_NOPDelay            ; |411| 
        ; call occurs [#_NOPDelay] ; |411| 
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"sci.c",419,1
        LRETR
        ; return occurs

DW$58	.dwtag  DW_TAG_loop
	.dwattr DW$58, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sci.asm:L23:1:1473840058")
	.dwattr DW$58, DW_AT_begin_file("sci.c")
	.dwattr DW$58, DW_AT_begin_line(0x18b)
	.dwattr DW$58, DW_AT_end_line(0x18f)
DW$59	.dwtag  DW_TAG_loop_range
	.dwattr DW$59, DW_AT_low_pc(DW$L$_LoadSendBufferB$2$B)
	.dwattr DW$59, DW_AT_high_pc(DW$L$_LoadSendBufferB$2$E)
	.dwendtag DW$58

	.dwattr DW$55, DW_AT_end_file("sci.c")
	.dwattr DW$55, DW_AT_end_line(0x1a3)
	.dwattr DW$55, DW_AT_end_column(0x01)
	.dwendtag DW$55

	.sect	".text"
	.global	_ReadCLIChar

DW$60	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadCLIChar"), DW_AT_symbol_name("_ReadCLIChar")
	.dwattr DW$60, DW_AT_low_pc(_ReadCLIChar)
	.dwattr DW$60, DW_AT_high_pc(0x00)
	.dwattr DW$60, DW_AT_begin_file("sci.c")
	.dwattr DW$60, DW_AT_begin_line(0x1a6)
	.dwattr DW$60, DW_AT_begin_column(0x06)
	.dwattr DW$60, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$60, DW_AT_skeletal(0x01)
	.dwpsn	"sci.c",423,1

;***************************************************************
;* FNAME: _ReadCLIChar                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadCLIChar:
        LCR       #_ReadCharfromUartD   ; |426| 
        ; call occurs [#_ReadCharfromUartD] ; |426| 
        CMPB      AL,#1                 ; |426| 
        BF        L25,EQ                ; |426| 
        ; branchcc occurs ; |426| 
        MOVB      AL,#0
        BF        L26,UNC               ; |436| 
        ; branch occurs ; |436| 
L25:    
        MOVW      DP,#_receiveD+29
        MOV       AL,@_receiveD+29      ; |435| 
        MOV       AH,AL                 ; |152| 
        ADDB      AH,#-97
        CMPB      AH,#25                ; |152| 
        BF        L26,HI                ; |152| 
        ; branchcc occurs ; |152| 
        ADDB      AL,#-32
L26:    
	.dwpsn	"sci.c",439,1
        LRETR
        ; return occurs
	.dwattr DW$60, DW_AT_end_file("sci.c")
	.dwattr DW$60, DW_AT_end_line(0x1b7)
	.dwattr DW$60, DW_AT_end_column(0x01)
	.dwendtag DW$60

	.sect	".text"
	.global	_ReadCharfromUartA

DW$61	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadCharfromUartA"), DW_AT_symbol_name("_ReadCharfromUartA")
	.dwattr DW$61, DW_AT_low_pc(_ReadCharfromUartA)
	.dwattr DW$61, DW_AT_high_pc(0x00)
	.dwattr DW$61, DW_AT_begin_file("sci.c")
	.dwattr DW$61, DW_AT_begin_line(0x1bb)
	.dwattr DW$61, DW_AT_begin_column(0x06)
	.dwattr DW$61, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$61, DW_AT_skeletal(0x01)
	.dwpsn	"sci.c",444,1

;***************************************************************
;* FNAME: _ReadCharfromUartA            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadCharfromUartA:
        MOVW      DP,#_receiveA+2
        MOVL      ACC,@_receiveA+2      ; |447| 
        MOVW      DP,#_receiveA
        MOVL      XAR6,@_receiveA       ; |447| 
        MOVB      XAR4,#0
        CMPL      ACC,XAR6              ; |447| 
        BF        L27,EQ                ; |447| 
        ; branchcc occurs ; |447| 
        MOVL      XAR5,ACC              ; |449| 
        MOVW      DP,#_receiveA+149
        MOV       AL,*+XAR5[0]          ; |450| 
        MOV       @_receiveA+149,AL     ; |450| 
        MOVW      DP,#_receiveA+2
        MOVL      ACC,@_receiveA+2      ; |451| 
        ADDB      ACC,#1                ; |451| 
        MOVW      DP,#_receiveA+2
        MOVL      XAR6,ACC              ; |451| 
        MOVL      @_receiveA+2,ACC      ; |451| 
        MOVW      DP,#_receiveA+4
        MOVL      ACC,@_receiveA+4      ; |451| 
        CMPL      ACC,XAR6              ; |451| 
        MOVB      XAR4,#1               ; |449| 
        BF        L27,NEQ               ; |451| 
        ; branchcc occurs ; |451| 
        MOVL      XAR5,#_receiveA+9     ; |451| 
        MOVW      DP,#_receiveA+2
        MOVL      @_receiveA+2,XAR5     ; |451| 
L27:    
        MOV       AL,AR4                ; |453| 
	.dwpsn	"sci.c",454,1
        LRETR
        ; return occurs
	.dwattr DW$61, DW_AT_end_file("sci.c")
	.dwattr DW$61, DW_AT_end_line(0x1c6)
	.dwattr DW$61, DW_AT_end_column(0x01)
	.dwendtag DW$61

	.sect	".text"
	.global	_ReadCharfromUartB

DW$62	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadCharfromUartB"), DW_AT_symbol_name("_ReadCharfromUartB")
	.dwattr DW$62, DW_AT_low_pc(_ReadCharfromUartB)
	.dwattr DW$62, DW_AT_high_pc(0x00)
	.dwattr DW$62, DW_AT_begin_file("sci.c")
	.dwattr DW$62, DW_AT_begin_line(0x1cb)
	.dwattr DW$62, DW_AT_begin_column(0x06)
	.dwattr DW$62, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$62, DW_AT_skeletal(0x01)
	.dwpsn	"sci.c",460,1

;***************************************************************
;* FNAME: _ReadCharfromUartB            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReadCharfromUartB:
        MOVW      DP,#_receiveB+2
        MOVL      XAR5,@_receiveB+2     ; |463| 
        MOVW      DP,#_receiveB
        MOVL      XAR6,@_receiveB       ; |463| 
        MOVB      XAR4,#0
        MOVL      ACC,XAR5              ; |463| 
        CMPL      ACC,XAR6              ; |463| 
        BF        L28,EQ                ; |463| 
        ; branchcc occurs ; |463| 
        MOV       AL,*+XAR5[0]          ; |466| 
        MOVW      DP,#_modbusrxchar
        MOV       @_modbusrxchar,AL     ; |466| 
        MOVB      ACC,#1
        ADDL      ACC,XAR5
        MOVW      DP,#_receiveB+2
        MOVL      XAR6,ACC              ; |467| 
        MOVL      @_receiveB+2,ACC      ; |467| 
        MOVW      DP,#_receiveB+4
        MOVL      ACC,@_receiveB+4      ; |467| 
        CMPL      ACC,XAR6              ; |467| 
        MOVB      XAR4,#1               ; |465| 
        BF        L28,NEQ               ; |467| 
        ; branchcc occurs ; |467| 
        MOVL      XAR5,#_receiveB+9     ; |467| 
        MOVW      DP,#_receiveB+2
        MOVL      @_receiveB+2,XAR5     ; |467| 
L28:    
        MOV       AL,AR4                ; |469| 
	.dwpsn	"sci.c",470,1
        LRETR
        ; return occurs
	.dwattr DW$62, DW_AT_end_file("sci.c")
	.dwattr DW$62, DW_AT_end_line(0x1d6)
	.dwattr DW$62, DW_AT_end_column(0x01)
	.dwendtag DW$62

	.sect	".text"
	.global	_ReadCharfromUartD

DW$63	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadCharfromUartD"), DW_AT_symbol_name("_ReadCharfromUartD")
	.dwattr DW$63, DW_AT_low_pc(_ReadCharfromUartD)
	.dwattr DW$63, DW_AT_high_pc(0x00)
	.dwattr DW$63, DW_AT_begin_file("sci.c")
	.dwattr DW$63, DW_AT_begin_line(0x1d9)
	.dwattr DW$63, DW_AT_begin_column(0x06)
	.dwattr DW$63, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$63, DW_AT_skeletal(0x01)
	.dwpsn	"sci.c",474,1

;***************************************************************
;* FNAME: _ReadCharfromUartD            FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_ReadCharfromUartD:
        MOVL      *SP++,XAR1
        LCR       #_PerformSciRxIntD    ; |480| 
        ; call occurs [#_PerformSciRxIntD] ; |480| 
        MOVW      DP,#_receiveD+2
        MOVL      ACC,@_receiveD+2      ; |482| 
        MOVW      DP,#_receiveD
        MOVL      XAR6,@_receiveD       ; |482| 
        CMPL      ACC,XAR6              ; |482| 
        MOVB      XAR1,#0
        BF        L29,EQ                ; |482| 
        ; branchcc occurs ; |482| 
        MOVL      XAR4,ACC              ; |484| 
        MOVW      DP,#_receiveD+29
        MOV       AL,*+XAR4[0]          ; |485| 
        MOV       @_receiveD+29,AL      ; |485| 
        MOVW      DP,#_receiveD+2
        MOVL      ACC,@_receiveD+2      ; |486| 
        ADDB      ACC,#1                ; |486| 
        MOVW      DP,#_receiveD+2
        MOVL      XAR6,ACC              ; |486| 
        MOVL      @_receiveD+2,ACC      ; |486| 
        MOVW      DP,#_receiveD+4
        MOVL      ACC,@_receiveD+4      ; |486| 
        CMPL      ACC,XAR6              ; |486| 
        MOVB      XAR1,#1               ; |484| 
        BF        L29,NEQ               ; |486| 
        ; branchcc occurs ; |486| 
        MOVL      XAR4,#_receiveD+9     ; |486| 
        MOVW      DP,#_receiveD+2
        MOVL      @_receiveD+2,XAR4     ; |486| 
L29:    
        MOV       AL,AR1                ; |488| 
        MOVL      XAR1,*--SP            ; |488| 
	.dwpsn	"sci.c",489,1
        LRETR
        ; return occurs
	.dwattr DW$63, DW_AT_end_file("sci.c")
	.dwattr DW$63, DW_AT_end_line(0x1e9)
	.dwattr DW$63, DW_AT_end_column(0x01)
	.dwendtag DW$63

	.sect	".text"
	.global	_SerialPortCSetup

DW$64	.dwtag  DW_TAG_subprogram, DW_AT_name("SerialPortCSetup"), DW_AT_symbol_name("_SerialPortCSetup")
	.dwattr DW$64, DW_AT_low_pc(_SerialPortCSetup)
	.dwattr DW$64, DW_AT_high_pc(0x00)
	.dwattr DW$64, DW_AT_begin_file("sci.c")
	.dwattr DW$64, DW_AT_begin_line(0x1eb)
	.dwattr DW$64, DW_AT_begin_column(0x06)
	.dwattr DW$64, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$64, DW_AT_skeletal(0x01)
	.dwpsn	"sci.c",492,1

;***************************************************************
;* FNAME: _SerialPortCSetup             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SerialPortCSetup:
        MOVW      DP,#_receiveC+1
        MOV       @_receiveC+1,#0       ; |493| 
        MOVW      DP,#_receiveC+2
        MOV       @_receiveC+2,#0       ; |494| 
        MOVW      DP,#_gpb
        AND       @_gpb,#0xfeff         ; |495| 
        MOVW      DP,#_gpb
        AND       @_gpb,#0xfdff         ; |496| 
        MOVB      AL,#0
        LCR       #_WriteUartConfig_C   ; |497| 
        ; call occurs [#_WriteUartConfig_C] ; |497| 
        LCR       #_ReadDataFromUart_C  ; |498| 
        ; call occurs [#_ReadDataFromUart_C] ; |498| 
        MOVW      DP,#_receiveC
        MOV       @_receiveC,#0         ; |499| 
        MOVW      DP,#_receiveC+1
        MOV       @_receiveC+1,#0       ; |500| 
        MOVW      DP,#_receiveC+2
        MOV       @_receiveC+2,#0       ; |501| 
	.dwpsn	"sci.c",502,1
        LRETR
        ; return occurs
	.dwattr DW$64, DW_AT_end_file("sci.c")
	.dwattr DW$64, DW_AT_end_line(0x1f6)
	.dwattr DW$64, DW_AT_end_column(0x01)
	.dwendtag DW$64

	.sect	".text"
	.global	_SerialPortDSetup

DW$65	.dwtag  DW_TAG_subprogram, DW_AT_name("SerialPortDSetup"), DW_AT_symbol_name("_SerialPortDSetup")
	.dwattr DW$65, DW_AT_low_pc(_SerialPortDSetup)
	.dwattr DW$65, DW_AT_high_pc(0x00)
	.dwattr DW$65, DW_AT_begin_file("sci.c")
	.dwattr DW$65, DW_AT_begin_line(0x1f8)
	.dwattr DW$65, DW_AT_begin_column(0x06)
	.dwattr DW$65, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$65, DW_AT_skeletal(0x01)
	.dwpsn	"sci.c",505,1

;***************************************************************
;* FNAME: _SerialPortDSetup             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SerialPortDSetup:
        MOVW      DP,#_receiveD+7
        MOV       @_receiveD+7,#0       ; |506| 
        MOVB      AL,#0
        MOVW      DP,#_receiveD+8
        MOV       @_receiveD+8,#0       ; |507| 
        LCR       #_WriteUartConfig_D   ; |508| 
        ; call occurs [#_WriteUartConfig_D] ; |508| 
        LCR       #_ReadDataFromUart_D  ; |509| 
        ; call occurs [#_ReadDataFromUart_D] ; |509| 
        MOVW      DP,#_receiveD+6
        MOV       @_receiveD+6,#0       ; |510| 
        MOVW      DP,#_receiveD+7
        MOV       @_receiveD+7,#0       ; |511| 
        MOVW      DP,#_receiveD+8
        MOVL      XAR4,#_receiveD+9     ; |514| 
        MOVB      ACC,#20
        MOV       @_receiveD+8,#0       ; |512| 
        ADDL      ACC,XAR4
        MOVW      DP,#_receiveD+2
        MOVL      @_receiveD+2,XAR4     ; |514| 
        MOVW      DP,#_receiveD
        MOVL      @_receiveD,XAR4       ; |514| 
        MOVW      DP,#_receiveD+4
        MOVL      @_receiveD+4,ACC      ; |515| 
	.dwpsn	"sci.c",516,1
        LRETR
        ; return occurs
	.dwattr DW$65, DW_AT_end_file("sci.c")
	.dwattr DW$65, DW_AT_end_line(0x204)
	.dwattr DW$65, DW_AT_end_column(0x01)
	.dwendtag DW$65

	.sect	".text"
	.global	_SendCharC

DW$66	.dwtag  DW_TAG_subprogram, DW_AT_name("SendCharC"), DW_AT_symbol_name("_SendCharC")
	.dwattr DW$66, DW_AT_low_pc(_SendCharC)
	.dwattr DW$66, DW_AT_high_pc(0x00)
	.dwattr DW$66, DW_AT_begin_file("sci.c")
	.dwattr DW$66, DW_AT_begin_line(0x207)
	.dwattr DW$66, DW_AT_begin_column(0x0e)
	.dwattr DW$66, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$66, DW_AT_skeletal(0x01)
	.dwpsn	"sci.c",520,1

;***************************************************************
;* FNAME: _SendCharC                    FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_SendCharC:
;* AL    assigned to _c
DW$67	.dwtag  DW_TAG_formal_parameter, DW_AT_name("c"), DW_AT_symbol_name("_c")
	.dwattr DW$67, DW_AT_type(*DW$T$11)
	.dwattr DW$67, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVZ      AR1,AL                ; |520| 
        LCR       #_WriteBytetoUart_C   ; |521| 
        ; call occurs [#_WriteBytetoUart_C] ; |521| 
        MOV       AL,AR1                ; |522| 
        MOVL      XAR1,*--SP            ; |522| 
	.dwpsn	"sci.c",523,1
        LRETR
        ; return occurs
	.dwattr DW$66, DW_AT_end_file("sci.c")
	.dwattr DW$66, DW_AT_end_line(0x20b)
	.dwattr DW$66, DW_AT_end_column(0x01)
	.dwendtag DW$66

	.sect	".text"
	.global	_SendCharD

DW$68	.dwtag  DW_TAG_subprogram, DW_AT_name("SendCharD"), DW_AT_symbol_name("_SendCharD")
	.dwattr DW$68, DW_AT_low_pc(_SendCharD)
	.dwattr DW$68, DW_AT_high_pc(0x00)
	.dwattr DW$68, DW_AT_begin_file("sci.c")
	.dwattr DW$68, DW_AT_begin_line(0x20e)
	.dwattr DW$68, DW_AT_begin_column(0x0e)
	.dwattr DW$68, DW_AT_frame_base[DW_OP_breg20 -4]
	.dwattr DW$68, DW_AT_skeletal(0x01)
	.dwpsn	"sci.c",527,1

;***************************************************************
;* FNAME: _SendCharD                    FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_SendCharD:
;* AL    assigned to _c
DW$69	.dwtag  DW_TAG_formal_parameter, DW_AT_name("c"), DW_AT_symbol_name("_c")
	.dwattr DW$69, DW_AT_type(*DW$T$11)
	.dwattr DW$69, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVZ      AR1,AL                ; |527| 
        LCR       #_WriteBytetoUart_D   ; |528| 
        ; call occurs [#_WriteBytetoUart_D] ; |528| 
        MOV       AL,AR1                ; |529| 
        MOVL      XAR1,*--SP            ; |529| 
	.dwpsn	"sci.c",530,1
        LRETR
        ; return occurs
	.dwattr DW$68, DW_AT_end_file("sci.c")
	.dwattr DW$68, DW_AT_end_line(0x212)
	.dwattr DW$68, DW_AT_end_column(0x01)
	.dwendtag DW$68

	.sect	".text"
	.global	_LoadSendBufferC

DW$70	.dwtag  DW_TAG_subprogram, DW_AT_name("LoadSendBufferC"), DW_AT_symbol_name("_LoadSendBufferC")
	.dwattr DW$70, DW_AT_low_pc(_LoadSendBufferC)
	.dwattr DW$70, DW_AT_high_pc(0x00)
	.dwattr DW$70, DW_AT_begin_file("sci.c")
	.dwattr DW$70, DW_AT_begin_line(0x214)
	.dwattr DW$70, DW_AT_begin_column(0x06)
	.dwattr DW$70, DW_AT_frame_base[DW_OP_breg20 -8]
	.dwattr DW$70, DW_AT_skeletal(0x01)
	.dwpsn	"sci.c",533,1

;***************************************************************
;* FNAME: _LoadSendBufferC              FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_LoadSendBufferC:
;* AR4   assigned to _ptr
DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$71, DW_AT_type(*DW$T$49)
	.dwattr DW$71, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _count
DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_name("count"), DW_AT_symbol_name("_count")
	.dwattr DW$72, DW_AT_type(*DW$T$11)
	.dwattr DW$72, DW_AT_location[DW_OP_reg0]
        MOVL      *SP++,XAR1
        MOVW      DP,#_gpb
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        OR        @_gpb,#0x0100         ; |536| 
        MOVZ      AR3,AL                ; |533| 
        MOVW      DP,#_gpb
        MOVL      XAR2,XAR4             ; |533| 
        OR        @_gpb,#0x0200         ; |537| 
        MOV       AL,#600               ; |538| 
        LCR       #_NOPDelay            ; |538| 
        ; call occurs [#_NOPDelay] ; |538| 
        MOV       AL,#600               ; |539| 
        LCR       #_NOPDelay            ; |539| 
        ; call occurs [#_NOPDelay] ; |539| 
        MOV       AL,#600               ; |540| 
        LCR       #_NOPDelay            ; |540| 
        ; call occurs [#_NOPDelay] ; |540| 
        MOVB      XAR1,#0
        MOV       AL,AR3                ; |541| 
        BF        L31,EQ                ; |541| 
        ; branchcc occurs ; |541| 
L30:    
DW$L$_LoadSendBufferC$2$B:
	.dwpsn	"sci.c",542,0
        MOV       AL,*+XAR2[AR1]        ; |543| 
        LCR       #_SendCharC           ; |543| 
        ; call occurs [#_SendCharC] ; |543| 
        ADDB      XAR1,#1               ; |541| 
        MOV       AL,AR3                ; |541| 
        MOVW      DP,#_settings
        CMP       AL,AR1                ; |541| 
        MOV       @_settings,#1         ; |544| 
	.dwpsn	"sci.c",545,0
        BF        L30,HI                ; |541| 
        ; branchcc occurs ; |541| 
DW$L$_LoadSendBufferC$2$E:
L31:    
        LCR       #_WaitforUartTxComplete_C ; |546| 
        ; call occurs [#_WaitforUartTxComplete_C] ; |546| 
        MOV       AL,#600               ; |547| 
        LCR       #_NOPDelay            ; |547| 
        ; call occurs [#_NOPDelay] ; |547| 
        MOV       AL,#600               ; |548| 
        LCR       #_NOPDelay            ; |548| 
        ; call occurs [#_NOPDelay] ; |548| 
        MOV       AL,#600               ; |549| 
        LCR       #_NOPDelay            ; |549| 
        ; call occurs [#_NOPDelay] ; |549| 
        MOV       AL,#600               ; |550| 
        LCR       #_NOPDelay            ; |550| 
        ; call occurs [#_NOPDelay] ; |550| 
        MOVW      DP,#_gpb
        AND       @_gpb,#0xfeff         ; |551| 
        MOVW      DP,#_gpb
        AND       @_gpb,#0xfdff         ; |552| 
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
	.dwpsn	"sci.c",553,1
        LRETR
        ; return occurs

DW$73	.dwtag  DW_TAG_loop
	.dwattr DW$73, DW_AT_name("D:\DEV\Amot\BearingWear\XTSW_V6_20\sci.asm:L30:1:1473840058")
	.dwattr DW$73, DW_AT_begin_file("sci.c")
	.dwattr DW$73, DW_AT_begin_line(0x21d)
	.dwattr DW$73, DW_AT_end_line(0x221)
DW$74	.dwtag  DW_TAG_loop_range
	.dwattr DW$74, DW_AT_low_pc(DW$L$_LoadSendBufferC$2$B)
	.dwattr DW$74, DW_AT_high_pc(DW$L$_LoadSendBufferC$2$E)
	.dwendtag DW$73

	.dwattr DW$70, DW_AT_end_file("sci.c")
	.dwattr DW$70, DW_AT_end_line(0x229)
	.dwattr DW$70, DW_AT_end_column(0x01)
	.dwendtag DW$70

	.sect	".text"
	.global	_PerformSciRxIntC

DW$75	.dwtag  DW_TAG_subprogram, DW_AT_name("PerformSciRxIntC"), DW_AT_symbol_name("_PerformSciRxIntC")
	.dwattr DW$75, DW_AT_low_pc(_PerformSciRxIntC)
	.dwattr DW$75, DW_AT_high_pc(0x00)
	.dwattr DW$75, DW_AT_begin_file("sci.c")
	.dwattr DW$75, DW_AT_begin_line(0x22c)
	.dwattr DW$75, DW_AT_begin_column(0x06)
	.dwattr DW$75, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$75, DW_AT_skeletal(0x01)
	.dwpsn	"sci.c",557,1

;***************************************************************
;* FNAME: _PerformSciRxIntC             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_PerformSciRxIntC:
        LCR       #_ReadDataFromUart_C  ; |558| 
        ; call occurs [#_ReadDataFromUart_C] ; |558| 
        MOVW      DP,#_receiveC+1
        MOVZ      AR0,@_receiveC+1      ; |558| 
        ANDB      AL,#255               ; |558| 
        MOVL      XAR4,#_receiveC+3     ; |558| 
        MOVW      DP,#_receiveC+1
        MOV       *+XAR4[AR0],AL        ; |558| 
        INC       @_receiveC+1          ; |562| 
        MOVW      DP,#_receiveC+1
        MOV       AL,@_receiveC+1       ; |562| 
        CMPB      AL,#100               ; |562| 
        BF        L32,LO                ; |562| 
        ; branchcc occurs ; |562| 
        MOVW      DP,#_receiveC+1
        MOV       @_receiveC+1,#0       ; |562| 
L32:    
	.dwpsn	"sci.c",563,1
        LRETR
        ; return occurs
	.dwattr DW$75, DW_AT_end_file("sci.c")
	.dwattr DW$75, DW_AT_end_line(0x233)
	.dwattr DW$75, DW_AT_end_column(0x01)
	.dwendtag DW$75

	.sect	".text"
	.global	_clearCommsErrors

DW$76	.dwtag  DW_TAG_subprogram, DW_AT_name("clearCommsErrors"), DW_AT_symbol_name("_clearCommsErrors")
	.dwattr DW$76, DW_AT_low_pc(_clearCommsErrors)
	.dwattr DW$76, DW_AT_high_pc(0x00)
	.dwattr DW$76, DW_AT_begin_file("sci.c")
	.dwattr DW$76, DW_AT_begin_line(0x237)
	.dwattr DW$76, DW_AT_begin_column(0x06)
	.dwattr DW$76, DW_AT_frame_base[DW_OP_breg20 -2]
	.dwattr DW$76, DW_AT_skeletal(0x01)
	.dwpsn	"sci.c",568,1

;***************************************************************
;* FNAME: _clearCommsErrors             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_clearCommsErrors:
        MOVW      DP,#_sciportA+5
        TBIT      @_sciportA+5,#7       ; |570| 
        BF        L33,NTC               ; |570| 
        ; branchcc occurs ; |570| 
        MOVL      XAR4,#FSL1            ; |572| 
        LCR       #_DebugStringOut      ; |572| 
        ; call occurs [#_DebugStringOut] ; |572| 
        MOVW      DP,#_sciportA+1
        AND       @_sciportA+1,#0xffdf  ; |574| 
        MOVW      DP,#_sciportA+1
        OR        @_sciportA+1,#0x0020  ; |575| 
L33:    
        MOVW      DP,#_sciportB+5
        TBIT      @_sciportB+5,#7       ; |578| 
        BF        L34,NTC               ; |578| 
        ; branchcc occurs ; |578| 
        MOVL      XAR4,#FSL2            ; |580| 
        LCR       #_DebugStringOut      ; |580| 
        ; call occurs [#_DebugStringOut] ; |580| 
        MOVW      DP,#_sciportB+1
        AND       @_sciportB+1,#0xffdf  ; |582| 
        MOVW      DP,#_sciportB+1
        OR        @_sciportB+1,#0x0020  ; |583| 
L34:    
	.dwpsn	"sci.c",585,1
        LRETR
        ; return occurs
	.dwattr DW$76, DW_AT_end_file("sci.c")
	.dwattr DW$76, DW_AT_end_line(0x249)
	.dwattr DW$76, DW_AT_end_column(0x01)
	.dwendtag DW$76

;***************************************************************
;* FAR STRINGS                                                 *
;***************************************************************
	.sect	".econst"
	.align	2
FSL1:	.string	"Reset Port A",13,10,0
	.align	2
FSL2:	.string	"Reset Port B",13,10,0
;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_NOPDelay
	.global	_ReadDataFromUart_D
	.global	_WriteUartConfig_C
	.global	_ReadDataFromUart_C
	.global	_WriteUartConfig_D
	.global	_WriteBytetoUart_C
	.global	_WriteBytetoUart_D
	.global	_WaitforUartTxComplete_C
	.global	_gpa
	.global	_gpb
	.global	_gpf
	.global	_settings
	.global	_safe2
	.global	_timers
	.global	_modbusrxchar
	.global	_pcmodbus

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

DW$T$61	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$61, DW_AT_language(DW_LANG_C)
DW$77	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$61


DW$T$63	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$63, DW_AT_language(DW_LANG_C)

DW$T$66	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$66, DW_AT_language(DW_LANG_C)
DW$78	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$65)
	.dwendtag DW$T$66


DW$T$68	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$68, DW_AT_language(DW_LANG_C)
DW$79	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$49)
DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$68

DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)

DW$T$71	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$71, DW_AT_language(DW_LANG_C)
DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$71


DW$T$72	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$72, DW_AT_language(DW_LANG_C)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)
DW$T$49	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$49, DW_AT_address_class(0x16)

DW$T$80	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$80, DW_AT_language(DW_LANG_C)
DW$82	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$80

DW$83	.dwtag  DW_TAG_far_type
	.dwattr DW$83, DW_AT_type(*DW$T$87)
DW$T$88	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$88, DW_AT_type(*DW$83)
DW$84	.dwtag  DW_TAG_far_type
	.dwattr DW$84, DW_AT_type(*DW$T$91)
DW$T$92	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$92, DW_AT_type(*DW$84)
DW$85	.dwtag  DW_TAG_far_type
	.dwattr DW$85, DW_AT_type(*DW$T$95)
DW$T$96	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$96, DW_AT_type(*DW$85)
DW$T$99	.dwtag  DW_TAG_typedef, DW_AT_name("settingsstruct"), DW_AT_type(*DW$T$29)
	.dwattr DW$T$99, DW_AT_language(DW_LANG_C)
DW$T$100	.dwtag  DW_TAG_typedef, DW_AT_name("safestruct2struct"), DW_AT_type(*DW$T$42)
	.dwattr DW$T$100, DW_AT_language(DW_LANG_C)
DW$86	.dwtag  DW_TAG_far_type
	.dwattr DW$86, DW_AT_type(*DW$T$101)
DW$T$102	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$102, DW_AT_type(*DW$86)
DW$T$104	.dwtag  DW_TAG_typedef, DW_AT_name("PCCmdStruct"), DW_AT_type(*DW$T$46)
	.dwattr DW$T$104, DW_AT_language(DW_LANG_C)
DW$87	.dwtag  DW_TAG_far_type
	.dwattr DW$87, DW_AT_type(*DW$T$105)
DW$T$106	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$106, DW_AT_type(*DW$87)
DW$T$51	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$51, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$51, DW_AT_byte_size(0x01)
DW$T$65	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$51)
	.dwattr DW$T$65, DW_AT_address_class(0x16)

DW$T$110	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$51)
	.dwattr DW$T$110, DW_AT_language(DW_LANG_C)
DW$88	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$51)
	.dwendtag DW$T$110


DW$T$111	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$51)
	.dwattr DW$T$111, DW_AT_language(DW_LANG_C)
DW$T$113	.dwtag  DW_TAG_typedef, DW_AT_name("uartreadA"), DW_AT_type(*DW$T$52)
	.dwattr DW$T$113, DW_AT_language(DW_LANG_C)
DW$T$115	.dwtag  DW_TAG_typedef, DW_AT_name("uartwrite"), DW_AT_type(*DW$T$55)
	.dwattr DW$T$115, DW_AT_language(DW_LANG_C)
DW$T$117	.dwtag  DW_TAG_typedef, DW_AT_name("uartreadB"), DW_AT_type(*DW$T$56)
	.dwattr DW$T$117, DW_AT_language(DW_LANG_C)
DW$T$119	.dwtag  DW_TAG_typedef, DW_AT_name("uartreadC"), DW_AT_type(*DW$T$58)
	.dwattr DW$T$119, DW_AT_language(DW_LANG_C)
DW$T$121	.dwtag  DW_TAG_typedef, DW_AT_name("uartreadD"), DW_AT_type(*DW$T$60)
	.dwattr DW$T$121, DW_AT_language(DW_LANG_C)
DW$T$87	.dwtag  DW_TAG_typedef, DW_AT_name("gpaport"), DW_AT_type(*DW$T$21)
	.dwattr DW$T$87, DW_AT_language(DW_LANG_C)
DW$T$91	.dwtag  DW_TAG_typedef, DW_AT_name("gpbport"), DW_AT_type(*DW$T$24)
	.dwattr DW$T$91, DW_AT_language(DW_LANG_C)
DW$T$95	.dwtag  DW_TAG_typedef, DW_AT_name("gpfport"), DW_AT_type(*DW$T$27)
	.dwattr DW$T$95, DW_AT_language(DW_LANG_C)

DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$29, DW_AT_name("tag_settingsstruct")
	.dwattr DW$T$29, DW_AT_byte_size(0x24)
DW$89	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$89, DW_AT_name("watchdog"), DW_AT_symbol_name("_watchdog")
	.dwattr DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$89, DW_AT_accessibility(DW_ACCESS_public)
DW$90	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$90, DW_AT_name("ledflashflag"), DW_AT_symbol_name("_ledflashflag")
	.dwattr DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$90, DW_AT_accessibility(DW_ACCESS_public)
DW$91	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$91, DW_AT_name("updatesafe"), DW_AT_symbol_name("_updatesafe")
	.dwattr DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$91, DW_AT_accessibility(DW_ACCESS_public)
DW$92	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$92, DW_AT_name("tableconfigtype"), DW_AT_symbol_name("_tableconfigtype")
	.dwattr DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$92, DW_AT_accessibility(DW_ACCESS_public)
DW$93	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$93, DW_AT_name("caltableconfigtype"), DW_AT_symbol_name("_caltableconfigtype")
	.dwattr DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$93, DW_AT_accessibility(DW_ACCESS_public)
DW$94	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$94, DW_AT_name("eventmsgid"), DW_AT_symbol_name("_eventmsgid")
	.dwattr DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$94, DW_AT_accessibility(DW_ACCESS_public)
DW$95	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$95, DW_AT_name("configoperationcomplete"), DW_AT_symbol_name("_configoperationcomplete")
	.dwattr DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$95, DW_AT_accessibility(DW_ACCESS_public)
DW$96	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$96, DW_AT_name("sdcarderr"), DW_AT_symbol_name("_sdcarderr")
	.dwattr DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$96, DW_AT_accessibility(DW_ACCESS_public)
DW$97	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$97, DW_AT_name("sderase"), DW_AT_symbol_name("_sderase")
	.dwattr DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$97, DW_AT_accessibility(DW_ACCESS_public)
DW$98	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$98, DW_AT_name("sdreinit"), DW_AT_symbol_name("_sdreinit")
	.dwattr DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$98, DW_AT_accessibility(DW_ACCESS_public)
DW$99	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$99, DW_AT_name("sdcardupdate"), DW_AT_symbol_name("_sdcardupdate")
	.dwattr DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$99, DW_AT_accessibility(DW_ACCESS_public)
DW$100	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$100, DW_AT_name("cardreadflag"), DW_AT_symbol_name("_cardreadflag")
	.dwattr DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$100, DW_AT_accessibility(DW_ACCESS_public)
DW$101	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$101, DW_AT_name("ignore"), DW_AT_symbol_name("_ignore")
	.dwattr DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$101, DW_AT_accessibility(DW_ACCESS_public)
DW$102	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$102, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$102, DW_AT_accessibility(DW_ACCESS_public)
DW$103	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$103, DW_AT_name("spiinuse"), DW_AT_symbol_name("_spiinuse")
	.dwattr DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$103, DW_AT_accessibility(DW_ACCESS_public)
DW$104	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$104, DW_AT_name("dcpeakhold"), DW_AT_symbol_name("_dcpeakhold")
	.dwattr DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$104, DW_AT_accessibility(DW_ACCESS_public)
DW$105	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$105, DW_AT_name("dcpause"), DW_AT_symbol_name("_dcpause")
	.dwattr DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$105, DW_AT_accessibility(DW_ACCESS_public)
DW$106	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$106, DW_AT_name("mastermode"), DW_AT_symbol_name("_mastermode")
	.dwattr DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$106, DW_AT_accessibility(DW_ACCESS_public)
DW$107	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$107, DW_AT_name("updatescaling"), DW_AT_symbol_name("_updatescaling")
	.dwattr DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$107, DW_AT_accessibility(DW_ACCESS_public)
DW$108	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$108, DW_AT_name("forwardasternflag"), DW_AT_symbol_name("_forwardasternflag")
	.dwattr DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$108, DW_AT_accessibility(DW_ACCESS_public)
DW$109	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$109, DW_AT_name("initprogress"), DW_AT_symbol_name("_initprogress")
	.dwattr DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$109, DW_AT_accessibility(DW_ACCESS_public)
DW$110	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$110, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$110, DW_AT_accessibility(DW_ACCESS_public)
DW$111	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$111, DW_AT_name("slowdowncounter"), DW_AT_symbol_name("_slowdowncounter")
	.dwattr DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$111, DW_AT_accessibility(DW_ACCESS_public)
DW$112	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$112, DW_AT_name("slowdowncondition"), DW_AT_symbol_name("_slowdowncondition")
	.dwattr DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$112, DW_AT_accessibility(DW_ACCESS_public)
DW$113	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$113, DW_AT_name("slowdownlevel"), DW_AT_symbol_name("_slowdownlevel")
	.dwattr DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$113, DW_AT_accessibility(DW_ACCESS_public)
DW$114	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$114, DW_AT_name("alarmlevel"), DW_AT_symbol_name("_alarmlevel")
	.dwattr DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$114, DW_AT_accessibility(DW_ACCESS_public)
DW$115	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$115, DW_AT_name("slowdowndevlevel"), DW_AT_symbol_name("_slowdowndevlevel")
	.dwattr DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$115, DW_AT_accessibility(DW_ACCESS_public)
DW$116	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$116, DW_AT_name("alarmdevlevel"), DW_AT_symbol_name("_alarmdevlevel")
	.dwattr DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$116, DW_AT_accessibility(DW_ACCESS_public)
DW$117	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$117, DW_AT_name("cylinderalarmlevel"), DW_AT_symbol_name("_cylinderalarmlevel")
	.dwattr DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$117, DW_AT_accessibility(DW_ACCESS_public)
DW$118	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$118, DW_AT_name("temperaturealarm"), DW_AT_symbol_name("_temperaturealarm")
	.dwattr DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$118, DW_AT_accessibility(DW_ACCESS_public)
DW$119	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$119, DW_AT_name("temperatureslowdown"), DW_AT_symbol_name("_temperatureslowdown")
	.dwattr DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$119, DW_AT_accessibility(DW_ACCESS_public)
DW$120	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$120, DW_AT_name("anadebug"), DW_AT_symbol_name("_anadebug")
	.dwattr DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$120, DW_AT_accessibility(DW_ACCESS_public)
DW$121	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$121, DW_AT_name("serialdebug"), DW_AT_symbol_name("_serialdebug")
	.dwattr DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr DW$121, DW_AT_accessibility(DW_ACCESS_public)
DW$122	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$122, DW_AT_name("timerrunning"), DW_AT_symbol_name("_timerrunning")
	.dwattr DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$122, DW_AT_accessibility(DW_ACCESS_public)
DW$123	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$123, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr DW$123, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$29


DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$42, DW_AT_name("tag_safestruct2struct")
	.dwattr DW$T$42, DW_AT_byte_size(0x1e)
DW$124	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$124, DW_AT_name("inputs"), DW_AT_symbol_name("_inputs")
	.dwattr DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$124, DW_AT_accessibility(DW_ACCESS_public)
DW$125	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$125, DW_AT_name("log"), DW_AT_symbol_name("_log")
	.dwattr DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$125, DW_AT_accessibility(DW_ACCESS_public)
DW$126	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$126, DW_AT_name("modbus"), DW_AT_symbol_name("_modbus")
	.dwattr DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$126, DW_AT_accessibility(DW_ACCESS_public)
DW$127	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$127, DW_AT_name("filter"), DW_AT_symbol_name("_filter")
	.dwattr DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$127, DW_AT_accessibility(DW_ACCESS_public)
DW$128	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$128, DW_AT_name("alarms"), DW_AT_symbol_name("_alarms")
	.dwattr DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$128, DW_AT_accessibility(DW_ACCESS_public)
DW$129	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$129, DW_AT_name("modbusbaud"), DW_AT_symbol_name("_modbusbaud")
	.dwattr DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$129, DW_AT_accessibility(DW_ACCESS_public)
DW$130	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$130, DW_AT_name("modbus2"), DW_AT_symbol_name("_modbus2")
	.dwattr DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$130, DW_AT_accessibility(DW_ACCESS_public)
DW$131	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$38)
	.dwattr DW$131, DW_AT_name("sync"), DW_AT_symbol_name("_sync")
	.dwattr DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$131, DW_AT_accessibility(DW_ACCESS_public)
DW$132	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$132, DW_AT_name("alarmenable"), DW_AT_symbol_name("_alarmenable")
	.dwattr DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$132, DW_AT_accessibility(DW_ACCESS_public)
DW$133	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$133, DW_AT_name("trendmax"), DW_AT_symbol_name("_trendmax")
	.dwattr DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$133, DW_AT_accessibility(DW_ACCESS_public)
DW$134	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$134, DW_AT_name("tempcomp"), DW_AT_symbol_name("_tempcomp")
	.dwattr DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$134, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$42

DW$T$101	.dwtag  DW_TAG_typedef, DW_AT_name("timersstruct"), DW_AT_type(*DW$T$44)
	.dwattr DW$T$101, DW_AT_language(DW_LANG_C)

DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$46, DW_AT_name("tag_PCCmdStruct")
	.dwattr DW$T$46, DW_AT_byte_size(0x110)
DW$135	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$6)
	.dwattr DW$135, DW_AT_name("SlaveAddr"), DW_AT_symbol_name("_SlaveAddr")
	.dwattr DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$135, DW_AT_accessibility(DW_ACCESS_public)
DW$136	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$6)
	.dwattr DW$136, DW_AT_name("Func"), DW_AT_symbol_name("_Func")
	.dwattr DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$136, DW_AT_accessibility(DW_ACCESS_public)
DW$137	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$137, DW_AT_name("StartAdd"), DW_AT_symbol_name("_StartAdd")
	.dwattr DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$137, DW_AT_accessibility(DW_ACCESS_public)
DW$138	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$138, DW_AT_name("NoReg"), DW_AT_symbol_name("_NoReg")
	.dwattr DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$138, DW_AT_accessibility(DW_ACCESS_public)
DW$139	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$139, DW_AT_name("ByteCount"), DW_AT_symbol_name("_ByteCount")
	.dwattr DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$139, DW_AT_accessibility(DW_ACCESS_public)
DW$140	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$140, DW_AT_name("Data"), DW_AT_symbol_name("_Data")
	.dwattr DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$140, DW_AT_accessibility(DW_ACCESS_public)
DW$141	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$141, DW_AT_name("errorflag"), DW_AT_symbol_name("_errorflag")
	.dwattr DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x10f]
	.dwattr DW$141, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$46

DW$T$105	.dwtag  DW_TAG_typedef, DW_AT_name("sciport"), DW_AT_type(*DW$T$48)
	.dwattr DW$T$105, DW_AT_language(DW_LANG_C)

DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$52, DW_AT_name("tag_uartreadA")
	.dwattr DW$T$52, DW_AT_byte_size(0x96)
DW$142	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$142, DW_AT_name("headptr"), DW_AT_symbol_name("_headptr")
	.dwattr DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$142, DW_AT_accessibility(DW_ACCESS_public)
DW$143	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$143, DW_AT_name("tailptr"), DW_AT_symbol_name("_tailptr")
	.dwattr DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$143, DW_AT_accessibility(DW_ACCESS_public)
DW$144	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$144, DW_AT_name("eobuf"), DW_AT_symbol_name("_eobuf")
	.dwattr DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$144, DW_AT_accessibility(DW_ACCESS_public)
DW$145	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$145, DW_AT_name("charcount"), DW_AT_symbol_name("_charcount")
	.dwattr DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$145, DW_AT_accessibility(DW_ACCESS_public)
DW$146	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$146, DW_AT_name("currentcharcount"), DW_AT_symbol_name("_currentcharcount")
	.dwattr DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$146, DW_AT_accessibility(DW_ACCESS_public)
DW$147	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$147, DW_AT_name("previouscharcount"), DW_AT_symbol_name("_previouscharcount")
	.dwattr DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$147, DW_AT_accessibility(DW_ACCESS_public)
DW$148	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$148, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$148, DW_AT_accessibility(DW_ACCESS_public)
DW$149	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$51)
	.dwattr DW$149, DW_AT_name("uartcharrx"), DW_AT_symbol_name("_uartcharrx")
	.dwattr DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x95]
	.dwattr DW$149, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$52


DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$55, DW_AT_name("tag_uartwrite")
	.dwattr DW$T$55, DW_AT_byte_size(0x0c)
DW$150	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$53)
	.dwattr DW$150, DW_AT_name("headptr"), DW_AT_symbol_name("_headptr")
	.dwattr DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$150, DW_AT_accessibility(DW_ACCESS_public)
DW$151	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$53)
	.dwattr DW$151, DW_AT_name("tailptr"), DW_AT_symbol_name("_tailptr")
	.dwattr DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$151, DW_AT_accessibility(DW_ACCESS_public)
DW$152	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$53)
	.dwattr DW$152, DW_AT_name("eobuf"), DW_AT_symbol_name("_eobuf")
	.dwattr DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$152, DW_AT_accessibility(DW_ACCESS_public)
DW$153	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$54)
	.dwattr DW$153, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$153, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$55


DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$56, DW_AT_name("tag_uartreadB")
	.dwattr DW$T$56, DW_AT_byte_size(0x96)
DW$154	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$154, DW_AT_name("headptr"), DW_AT_symbol_name("_headptr")
	.dwattr DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$154, DW_AT_accessibility(DW_ACCESS_public)
DW$155	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$155, DW_AT_name("tailptr"), DW_AT_symbol_name("_tailptr")
	.dwattr DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$155, DW_AT_accessibility(DW_ACCESS_public)
DW$156	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$156, DW_AT_name("eobuf"), DW_AT_symbol_name("_eobuf")
	.dwattr DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$156, DW_AT_accessibility(DW_ACCESS_public)
DW$157	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$157, DW_AT_name("charcount"), DW_AT_symbol_name("_charcount")
	.dwattr DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$157, DW_AT_accessibility(DW_ACCESS_public)
DW$158	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$158, DW_AT_name("currentcharcount"), DW_AT_symbol_name("_currentcharcount")
	.dwattr DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$158, DW_AT_accessibility(DW_ACCESS_public)
DW$159	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$159, DW_AT_name("previouscharcount"), DW_AT_symbol_name("_previouscharcount")
	.dwattr DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$159, DW_AT_accessibility(DW_ACCESS_public)
DW$160	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$160, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$160, DW_AT_accessibility(DW_ACCESS_public)
DW$161	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$51)
	.dwattr DW$161, DW_AT_name("uartcharrx"), DW_AT_symbol_name("_uartcharrx")
	.dwattr DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x95]
	.dwattr DW$161, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$56


DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$58, DW_AT_name("tag_uartreadC")
	.dwattr DW$T$58, DW_AT_byte_size(0x68)
DW$162	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$162, DW_AT_name("receiveINTR"), DW_AT_symbol_name("_receiveINTR")
	.dwattr DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$162, DW_AT_accessibility(DW_ACCESS_public)
DW$163	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$163, DW_AT_name("currentcharcount"), DW_AT_symbol_name("_currentcharcount")
	.dwattr DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$163, DW_AT_accessibility(DW_ACCESS_public)
DW$164	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$164, DW_AT_name("previouscharcount"), DW_AT_symbol_name("_previouscharcount")
	.dwattr DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$164, DW_AT_accessibility(DW_ACCESS_public)
DW$165	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$57)
	.dwattr DW$165, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$165, DW_AT_accessibility(DW_ACCESS_public)
DW$166	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$51)
	.dwattr DW$166, DW_AT_name("uartcharrx"), DW_AT_symbol_name("_uartcharrx")
	.dwattr DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x67]
	.dwattr DW$166, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$58


DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$60, DW_AT_name("tag_uartreadD")
	.dwattr DW$T$60, DW_AT_byte_size(0x1e)
DW$167	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$167, DW_AT_name("headptr"), DW_AT_symbol_name("_headptr")
	.dwattr DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$167, DW_AT_accessibility(DW_ACCESS_public)
DW$168	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$168, DW_AT_name("tailptr"), DW_AT_symbol_name("_tailptr")
	.dwattr DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$168, DW_AT_accessibility(DW_ACCESS_public)
DW$169	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$169, DW_AT_name("eobuf"), DW_AT_symbol_name("_eobuf")
	.dwattr DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$169, DW_AT_accessibility(DW_ACCESS_public)
DW$170	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$170, DW_AT_name("receiveINTR"), DW_AT_symbol_name("_receiveINTR")
	.dwattr DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$170, DW_AT_accessibility(DW_ACCESS_public)
DW$171	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$171, DW_AT_name("currentcharcount"), DW_AT_symbol_name("_currentcharcount")
	.dwattr DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$171, DW_AT_accessibility(DW_ACCESS_public)
DW$172	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$172, DW_AT_name("previouscharcount"), DW_AT_symbol_name("_previouscharcount")
	.dwattr DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$172, DW_AT_accessibility(DW_ACCESS_public)
DW$173	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$59)
	.dwattr DW$173, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$173, DW_AT_accessibility(DW_ACCESS_public)
DW$174	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$51)
	.dwattr DW$174, DW_AT_name("uartcharrx"), DW_AT_symbol_name("_uartcharrx")
	.dwattr DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$174, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$60

DW$T$53	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$53, DW_AT_address_class(0x16)

DW$T$54	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$54, DW_AT_byte_size(0x05)
DW$175	.dwtag  DW_TAG_subrange_type
	.dwattr DW$175, DW_AT_upper_bound(0x04)
	.dwendtag DW$T$54


DW$T$45	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$45, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$45, DW_AT_byte_size(0x10a)
DW$176	.dwtag  DW_TAG_subrange_type
	.dwattr DW$176, DW_AT_upper_bound(0x109)
	.dwendtag DW$T$45


DW$T$50	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$50, DW_AT_byte_size(0x8c)
DW$177	.dwtag  DW_TAG_subrange_type
	.dwattr DW$177, DW_AT_upper_bound(0x8b)
	.dwendtag DW$T$50


DW$T$57	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$57, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$57, DW_AT_byte_size(0x64)
DW$178	.dwtag  DW_TAG_subrange_type
	.dwattr DW$178, DW_AT_upper_bound(0x63)
	.dwendtag DW$T$57


DW$T$59	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$59, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$59, DW_AT_byte_size(0x14)
DW$179	.dwtag  DW_TAG_subrange_type
	.dwattr DW$179, DW_AT_upper_bound(0x13)
	.dwendtag DW$T$59


DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$21, DW_AT_name("taggpaport")
	.dwattr DW$T$21, DW_AT_byte_size(0x01)
DW$180	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$180, DW_AT_name("selunion"), DW_AT_symbol_name("_selunion")
	.dwattr DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$180, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21


DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_name("taggpbport")
	.dwattr DW$T$24, DW_AT_byte_size(0x01)
DW$181	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$181, DW_AT_name("selunion"), DW_AT_symbol_name("_selunion")
	.dwattr DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$181, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$27, DW_AT_name("taggpfport")
	.dwattr DW$T$27, DW_AT_byte_size(0x01)
DW$182	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$182, DW_AT_name("selunion"), DW_AT_symbol_name("_selunion")
	.dwattr DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$182, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_byte_size(0x02)
DW$183	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$183, DW_AT_name("enb"), DW_AT_symbol_name("_enb")
	.dwattr DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$183, DW_AT_accessibility(DW_ACCESS_public)
DW$184	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$184, DW_AT_name("chan"), DW_AT_symbol_name("_chan")
	.dwattr DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$184, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$31, DW_AT_byte_size(0x0b)
DW$185	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$185, DW_AT_name("calprtzero"), DW_AT_symbol_name("_calprtzero")
	.dwattr DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$185, DW_AT_accessibility(DW_ACCESS_public)
DW$186	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$186, DW_AT_name("calprtfullscale"), DW_AT_symbol_name("_calprtfullscale")
	.dwattr DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$186, DW_AT_accessibility(DW_ACCESS_public)
DW$187	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$187, DW_AT_name("sensorscalingfactor"), DW_AT_symbol_name("_sensorscalingfactor")
	.dwattr DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$187, DW_AT_accessibility(DW_ACCESS_public)
DW$188	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$188, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$188, DW_AT_accessibility(DW_ACCESS_public)
DW$189	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$189, DW_AT_name("unused2"), DW_AT_symbol_name("_unused2")
	.dwattr DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$189, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_byte_size(0x03)
DW$190	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$190, DW_AT_name("mainrate"), DW_AT_symbol_name("_mainrate")
	.dwattr DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$190, DW_AT_accessibility(DW_ACCESS_public)
DW$191	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$191, DW_AT_name("trendrate"), DW_AT_symbol_name("_trendrate")
	.dwattr DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$191, DW_AT_accessibility(DW_ACCESS_public)
DW$192	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$192, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$192, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$33, DW_AT_byte_size(0x01)
DW$193	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$193, DW_AT_name("address"), DW_AT_symbol_name("_address")
	.dwattr DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$193, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$34, DW_AT_byte_size(0x02)
DW$194	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$194, DW_AT_name("inputtap"), DW_AT_symbol_name("_inputtap")
	.dwattr DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$194, DW_AT_accessibility(DW_ACCESS_public)
DW$195	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$195, DW_AT_name("unused1"), DW_AT_symbol_name("_unused1")
	.dwattr DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$195, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34


DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$35, DW_AT_byte_size(0x03)
DW$196	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$196, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$196, DW_AT_accessibility(DW_ACCESS_public)
DW$197	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$197, DW_AT_name("notused2"), DW_AT_symbol_name("_notused2")
	.dwattr DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$197, DW_AT_accessibility(DW_ACCESS_public)
DW$198	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$198, DW_AT_name("notused3"), DW_AT_symbol_name("_notused3")
	.dwattr DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$198, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35


DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$36, DW_AT_byte_size(0x01)
DW$199	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$199, DW_AT_name("rate"), DW_AT_symbol_name("_rate")
	.dwattr DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$199, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$36


DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$37, DW_AT_byte_size(0x02)
DW$200	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$200, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$200, DW_AT_accessibility(DW_ACCESS_public)
DW$201	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$201, DW_AT_name("notused2"), DW_AT_symbol_name("_notused2")
	.dwattr DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$201, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$37


DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_byte_size(0x04)
DW$202	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$202, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$202, DW_AT_accessibility(DW_ACCESS_public)
DW$203	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$203, DW_AT_name("notused2"), DW_AT_symbol_name("_notused2")
	.dwattr DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$203, DW_AT_accessibility(DW_ACCESS_public)
DW$204	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$204, DW_AT_name("notused3"), DW_AT_symbol_name("_notused3")
	.dwattr DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$204, DW_AT_accessibility(DW_ACCESS_public)
DW$205	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$205, DW_AT_name("notused4"), DW_AT_symbol_name("_notused4")
	.dwattr DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$205, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38


DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$39, DW_AT_byte_size(0x01)
DW$206	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$206, DW_AT_name("bitmap"), DW_AT_symbol_name("_bitmap")
	.dwattr DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$206, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39


DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$40, DW_AT_byte_size(0x01)
DW$207	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$207, DW_AT_name("graphvalue"), DW_AT_symbol_name("_graphvalue")
	.dwattr DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$207, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40


DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$41, DW_AT_byte_size(0x01)
DW$208	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$208, DW_AT_name("notused1"), DW_AT_symbol_name("_notused1")
	.dwattr DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$208, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$41


DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$44, DW_AT_name("tag_timers")
	.dwattr DW$T$44, DW_AT_byte_size(0x4c)
DW$209	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$209, DW_AT_name("update"), DW_AT_symbol_name("_update")
	.dwattr DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$209, DW_AT_accessibility(DW_ACCESS_public)
DW$210	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$210, DW_AT_name("general"), DW_AT_symbol_name("_general")
	.dwattr DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$210, DW_AT_accessibility(DW_ACCESS_public)
DW$211	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$211, DW_AT_name("rxcharTimeout"), DW_AT_symbol_name("_rxcharTimeout")
	.dwattr DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$211, DW_AT_accessibility(DW_ACCESS_public)
DW$212	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$212, DW_AT_name("wiorxtimeout"), DW_AT_symbol_name("_wiorxtimeout")
	.dwattr DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$212, DW_AT_accessibility(DW_ACCESS_public)
DW$213	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$213, DW_AT_name("wiomasterrxtimeout"), DW_AT_symbol_name("_wiomasterrxtimeout")
	.dwattr DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$213, DW_AT_accessibility(DW_ACCESS_public)
DW$214	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$214, DW_AT_name("masterrxtimeout"), DW_AT_symbol_name("_masterrxtimeout")
	.dwattr DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$214, DW_AT_accessibility(DW_ACCESS_public)
DW$215	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$215, DW_AT_name("slaverxtimeout"), DW_AT_symbol_name("_slaverxtimeout")
	.dwattr DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$215, DW_AT_accessibility(DW_ACCESS_public)
DW$216	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$216, DW_AT_name("sectick"), DW_AT_symbol_name("_sectick")
	.dwattr DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$216, DW_AT_accessibility(DW_ACCESS_public)
DW$217	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$217, DW_AT_name("ledflash"), DW_AT_symbol_name("_ledflash")
	.dwattr DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$217, DW_AT_accessibility(DW_ACCESS_public)
DW$218	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$218, DW_AT_name("prtsettle"), DW_AT_symbol_name("_prtsettle")
	.dwattr DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$218, DW_AT_accessibility(DW_ACCESS_public)
DW$219	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$43)
	.dwattr DW$219, DW_AT_name("chantimeout"), DW_AT_symbol_name("_chantimeout")
	.dwattr DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$219, DW_AT_accessibility(DW_ACCESS_public)
DW$220	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$43)
	.dwattr DW$220, DW_AT_name("chanwait"), DW_AT_symbol_name("_chanwait")
	.dwattr DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$220, DW_AT_accessibility(DW_ACCESS_public)
DW$221	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$221, DW_AT_name("pcrxtimeout"), DW_AT_symbol_name("_pcrxtimeout")
	.dwattr DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$221, DW_AT_accessibility(DW_ACCESS_public)
DW$222	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$222, DW_AT_name("pctxtimeout"), DW_AT_symbol_name("_pctxtimeout")
	.dwattr DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr DW$222, DW_AT_accessibility(DW_ACCESS_public)
DW$223	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$223, DW_AT_name("spistatus"), DW_AT_symbol_name("_spistatus")
	.dwattr DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$223, DW_AT_accessibility(DW_ACCESS_public)
DW$224	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$224, DW_AT_name("rpm"), DW_AT_symbol_name("_rpm")
	.dwattr DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr DW$224, DW_AT_accessibility(DW_ACCESS_public)
DW$225	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$225, DW_AT_name("slaverqst"), DW_AT_symbol_name("_slaverqst")
	.dwattr DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$225, DW_AT_accessibility(DW_ACCESS_public)
DW$226	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$226, DW_AT_name("mastermodebutton"), DW_AT_symbol_name("_mastermodebutton")
	.dwattr DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr DW$226, DW_AT_accessibility(DW_ACCESS_public)
DW$227	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$227, DW_AT_name("dcmode"), DW_AT_symbol_name("_dcmode")
	.dwattr DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$227, DW_AT_accessibility(DW_ACCESS_public)
DW$228	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$228, DW_AT_name("calibrate"), DW_AT_symbol_name("_calibrate")
	.dwattr DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$228, DW_AT_accessibility(DW_ACCESS_public)
DW$229	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$229, DW_AT_name("calibrate2"), DW_AT_symbol_name("_calibrate2")
	.dwattr DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$229, DW_AT_accessibility(DW_ACCESS_public)
DW$230	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$230, DW_AT_name("alarmreflash"), DW_AT_symbol_name("_alarmreflash")
	.dwattr DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$230, DW_AT_accessibility(DW_ACCESS_public)
DW$231	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$231, DW_AT_name("slowdownreflash"), DW_AT_symbol_name("_slowdownreflash")
	.dwattr DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr DW$231, DW_AT_accessibility(DW_ACCESS_public)
DW$232	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$232, DW_AT_name("wiorqst"), DW_AT_symbol_name("_wiorqst")
	.dwattr DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$232, DW_AT_accessibility(DW_ACCESS_public)
DW$233	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$233, DW_AT_name("rpmtimeout"), DW_AT_symbol_name("_rpmtimeout")
	.dwattr DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr DW$233, DW_AT_accessibility(DW_ACCESS_public)
DW$234	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$234, DW_AT_name("analogoor"), DW_AT_symbol_name("_analogoor")
	.dwattr DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$234, DW_AT_accessibility(DW_ACCESS_public)
DW$235	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$235, DW_AT_name("motioncal"), DW_AT_symbol_name("_motioncal")
	.dwattr DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr DW$235, DW_AT_accessibility(DW_ACCESS_public)
DW$236	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$236, DW_AT_name("framcheck"), DW_AT_symbol_name("_framcheck")
	.dwattr DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$236, DW_AT_accessibility(DW_ACCESS_public)
DW$237	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$237, DW_AT_name("pcmodbus"), DW_AT_symbol_name("_pcmodbus")
	.dwattr DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr DW$237, DW_AT_accessibility(DW_ACCESS_public)
DW$238	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$238, DW_AT_name("statusreflash"), DW_AT_symbol_name("_statusreflash")
	.dwattr DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$238, DW_AT_accessibility(DW_ACCESS_public)
DW$239	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$239, DW_AT_name("prewarn"), DW_AT_symbol_name("_prewarn")
	.dwattr DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$239, DW_AT_accessibility(DW_ACCESS_public)
DW$240	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$240, DW_AT_name("clocktofram"), DW_AT_symbol_name("_clocktofram")
	.dwattr DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr DW$240, DW_AT_accessibility(DW_ACCESS_public)
DW$241	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$241, DW_AT_name("debugrapidfast"), DW_AT_symbol_name("_debugrapidfast")
	.dwattr DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x3f]
	.dwattr DW$241, DW_AT_accessibility(DW_ACCESS_public)
DW$242	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$242, DW_AT_name("debugupdate"), DW_AT_symbol_name("_debugupdate")
	.dwattr DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$242, DW_AT_accessibility(DW_ACCESS_public)
DW$243	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$243, DW_AT_name("dircountdown"), DW_AT_symbol_name("_dircountdown")
	.dwattr DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr DW$243, DW_AT_accessibility(DW_ACCESS_public)
DW$244	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$244, DW_AT_name("startup"), DW_AT_symbol_name("_startup")
	.dwattr DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr DW$244, DW_AT_accessibility(DW_ACCESS_public)
DW$245	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$245, DW_AT_name("analogsettle"), DW_AT_symbol_name("_analogsettle")
	.dwattr DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr DW$245, DW_AT_accessibility(DW_ACCESS_public)
DW$246	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$246, DW_AT_name("reprogram"), DW_AT_symbol_name("_reprogram")
	.dwattr DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr DW$246, DW_AT_accessibility(DW_ACCESS_public)
DW$247	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$247, DW_AT_name("reprogramtimeout"), DW_AT_symbol_name("_reprogramtimeout")
	.dwattr DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr DW$247, DW_AT_accessibility(DW_ACCESS_public)
DW$248	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$248, DW_AT_name("dcmodestayalive"), DW_AT_symbol_name("_dcmodestayalive")
	.dwattr DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$248, DW_AT_accessibility(DW_ACCESS_public)
DW$249	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$249, DW_AT_name("biteventchange"), DW_AT_symbol_name("_biteventchange")
	.dwattr DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr DW$249, DW_AT_accessibility(DW_ACCESS_public)
DW$250	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$250, DW_AT_name("iSensorReplace"), DW_AT_symbol_name("_iSensorReplace")
	.dwattr DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr DW$250, DW_AT_accessibility(DW_ACCESS_public)
DW$251	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$251, DW_AT_name("deltarpm15Delay"), DW_AT_symbol_name("_deltarpm15Delay")
	.dwattr DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr DW$251, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$44


DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$48, DW_AT_name("tag_sciport")
	.dwattr DW$T$48, DW_AT_byte_size(0x0e)
DW$252	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$252, DW_AT_name("sciccr"), DW_AT_symbol_name("_sciccr")
	.dwattr DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$252, DW_AT_accessibility(DW_ACCESS_public)
DW$253	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$253, DW_AT_name("scictl1"), DW_AT_symbol_name("_scictl1")
	.dwattr DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$253, DW_AT_accessibility(DW_ACCESS_public)
DW$254	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$254, DW_AT_name("scihbaud"), DW_AT_symbol_name("_scihbaud")
	.dwattr DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$254, DW_AT_accessibility(DW_ACCESS_public)
DW$255	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$255, DW_AT_name("scilbaud"), DW_AT_symbol_name("_scilbaud")
	.dwattr DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$255, DW_AT_accessibility(DW_ACCESS_public)
DW$256	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$256, DW_AT_name("scictl2"), DW_AT_symbol_name("_scictl2")
	.dwattr DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$256, DW_AT_accessibility(DW_ACCESS_public)
DW$257	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$257, DW_AT_name("scirxst"), DW_AT_symbol_name("_scirxst")
	.dwattr DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$257, DW_AT_accessibility(DW_ACCESS_public)
DW$258	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$258, DW_AT_name("scirxemu"), DW_AT_symbol_name("_scirxemu")
	.dwattr DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$258, DW_AT_accessibility(DW_ACCESS_public)
DW$259	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$259, DW_AT_name("scirxbuf"), DW_AT_symbol_name("_scirxbuf")
	.dwattr DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$259, DW_AT_accessibility(DW_ACCESS_public)
DW$260	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$260, DW_AT_name("dummy"), DW_AT_symbol_name("_dummy")
	.dwattr DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$260, DW_AT_accessibility(DW_ACCESS_public)
DW$261	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$261, DW_AT_name("scitxbuf"), DW_AT_symbol_name("_scitxbuf")
	.dwattr DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$261, DW_AT_accessibility(DW_ACCESS_public)
DW$262	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$262, DW_AT_name("scifftx"), DW_AT_symbol_name("_scifftx")
	.dwattr DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$262, DW_AT_accessibility(DW_ACCESS_public)
DW$263	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$263, DW_AT_name("sciffrx"), DW_AT_symbol_name("_sciffrx")
	.dwattr DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$263, DW_AT_accessibility(DW_ACCESS_public)
DW$264	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$264, DW_AT_name("sciffct"), DW_AT_symbol_name("_sciffct")
	.dwattr DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$264, DW_AT_accessibility(DW_ACCESS_public)
DW$265	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$265, DW_AT_name("scipri"), DW_AT_symbol_name("_scipri")
	.dwattr DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$265, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$48

DW$T$47	.dwtag  DW_TAG_typedef, DW_AT_name("uint16"), DW_AT_type(*DW$T$9)
	.dwattr DW$T$47, DW_AT_language(DW_LANG_C)

DW$T$30	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$30, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$30, DW_AT_byte_size(0x04)
DW$266	.dwtag  DW_TAG_subrange_type
	.dwattr DW$266, DW_AT_upper_bound(0x03)
	.dwendtag DW$T$30


DW$T$43	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$43, DW_AT_byte_size(0x0e)
DW$267	.dwtag  DW_TAG_subrange_type
	.dwattr DW$267, DW_AT_upper_bound(0x0d)
	.dwendtag DW$T$43

DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)

DW$T$20	.dwtag  DW_TAG_union_type
	.dwattr DW$T$20, DW_AT_byte_size(0x01)
DW$268	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$268, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$268, DW_AT_accessibility(DW_ACCESS_public)
DW$269	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$269, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$269, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$23	.dwtag  DW_TAG_union_type
	.dwattr DW$T$23, DW_AT_byte_size(0x01)
DW$270	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$270, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$270, DW_AT_accessibility(DW_ACCESS_public)
DW$271	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$271, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$271, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$26	.dwtag  DW_TAG_union_type
	.dwattr DW$T$26, DW_AT_byte_size(0x01)
DW$272	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$272, DW_AT_name("port"), DW_AT_symbol_name("_port")
	.dwattr DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$272, DW_AT_accessibility(DW_ACCESS_public)
DW$273	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$273, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$273, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26

DW$T$9	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned short")
	.dwattr DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$9, DW_AT_byte_size(0x01)

DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$19, DW_AT_byte_size(0x01)
DW$274	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$274, DW_AT_name("anain_select1"), DW_AT_symbol_name("_anain_select1")
	.dwattr DW$274, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$274, DW_AT_accessibility(DW_ACCESS_public)
DW$275	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$275, DW_AT_name("anain_select2"), DW_AT_symbol_name("_anain_select2")
	.dwattr DW$275, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$275, DW_AT_accessibility(DW_ACCESS_public)
DW$276	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$276, DW_AT_name("anain_select3"), DW_AT_symbol_name("_anain_select3")
	.dwattr DW$276, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$276, DW_AT_accessibility(DW_ACCESS_public)
DW$277	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$277, DW_AT_name("program_cs"), DW_AT_symbol_name("_program_cs")
	.dwattr DW$277, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$277, DW_AT_accessibility(DW_ACCESS_public)
DW$278	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$278, DW_AT_name("com_select"), DW_AT_symbol_name("_com_select")
	.dwattr DW$278, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$278, DW_AT_accessibility(DW_ACCESS_public)
DW$279	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$279, DW_AT_name("s1"), DW_AT_symbol_name("_s1")
	.dwattr DW$279, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$279, DW_AT_accessibility(DW_ACCESS_public)
DW$280	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$280, DW_AT_name("s2"), DW_AT_symbol_name("_s2")
	.dwattr DW$280, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$280, DW_AT_accessibility(DW_ACCESS_public)
DW$281	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$281, DW_AT_name("s3"), DW_AT_symbol_name("_s3")
	.dwattr DW$281, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$281, DW_AT_accessibility(DW_ACCESS_public)
DW$282	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$282, DW_AT_name("s4"), DW_AT_symbol_name("_s4")
	.dwattr DW$282, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$282, DW_AT_accessibility(DW_ACCESS_public)
DW$283	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$283, DW_AT_name("s5"), DW_AT_symbol_name("_s5")
	.dwattr DW$283, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$283, DW_AT_accessibility(DW_ACCESS_public)
DW$284	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$284, DW_AT_name("s6"), DW_AT_symbol_name("_s6")
	.dwattr DW$284, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$284, DW_AT_accessibility(DW_ACCESS_public)
DW$285	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$285, DW_AT_name("s7"), DW_AT_symbol_name("_s7")
	.dwattr DW$285, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$285, DW_AT_accessibility(DW_ACCESS_public)
DW$286	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$286, DW_AT_name("s8"), DW_AT_symbol_name("_s8")
	.dwattr DW$286, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$286, DW_AT_accessibility(DW_ACCESS_public)
DW$287	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$287, DW_AT_name("s9"), DW_AT_symbol_name("_s9")
	.dwattr DW$287, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$287, DW_AT_accessibility(DW_ACCESS_public)
DW$288	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$288, DW_AT_name("s10"), DW_AT_symbol_name("_s10")
	.dwattr DW$288, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$288, DW_AT_accessibility(DW_ACCESS_public)
DW$289	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$289, DW_AT_name("s11"), DW_AT_symbol_name("_s11")
	.dwattr DW$289, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$289, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$19


DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_byte_size(0x01)
DW$290	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$290, DW_AT_name("s12"), DW_AT_symbol_name("_s12")
	.dwattr DW$290, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$290, DW_AT_accessibility(DW_ACCESS_public)
DW$291	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$291, DW_AT_name("s13"), DW_AT_symbol_name("_s13")
	.dwattr DW$291, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$291, DW_AT_accessibility(DW_ACCESS_public)
DW$292	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$292, DW_AT_name("s14"), DW_AT_symbol_name("_s14")
	.dwattr DW$292, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$292, DW_AT_accessibility(DW_ACCESS_public)
DW$293	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$293, DW_AT_name("s15"), DW_AT_symbol_name("_s15")
	.dwattr DW$293, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$293, DW_AT_accessibility(DW_ACCESS_public)
DW$294	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$294, DW_AT_name("s16"), DW_AT_symbol_name("_s16")
	.dwattr DW$294, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$294, DW_AT_accessibility(DW_ACCESS_public)
DW$295	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$295, DW_AT_name("s17"), DW_AT_symbol_name("_s17")
	.dwattr DW$295, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$295, DW_AT_accessibility(DW_ACCESS_public)
DW$296	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$296, DW_AT_name("s18"), DW_AT_symbol_name("_s18")
	.dwattr DW$296, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$296, DW_AT_accessibility(DW_ACCESS_public)
DW$297	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$297, DW_AT_name("s19"), DW_AT_symbol_name("_s19")
	.dwattr DW$297, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$297, DW_AT_accessibility(DW_ACCESS_public)
DW$298	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$298, DW_AT_name("disp485txen"), DW_AT_symbol_name("_disp485txen")
	.dwattr DW$298, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$298, DW_AT_accessibility(DW_ACCESS_public)
DW$299	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$299, DW_AT_name("disp485rxen"), DW_AT_symbol_name("_disp485rxen")
	.dwattr DW$299, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$299, DW_AT_accessibility(DW_ACCESS_public)
DW$300	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$300, DW_AT_name("gpio1"), DW_AT_symbol_name("_gpio1")
	.dwattr DW$300, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$300, DW_AT_accessibility(DW_ACCESS_public)
DW$301	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$301, DW_AT_name("gpio2"), DW_AT_symbol_name("_gpio2")
	.dwattr DW$301, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$301, DW_AT_accessibility(DW_ACCESS_public)
DW$302	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$302, DW_AT_name("gpio3"), DW_AT_symbol_name("_gpio3")
	.dwattr DW$302, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$302, DW_AT_accessibility(DW_ACCESS_public)
DW$303	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$303, DW_AT_name("gpio4"), DW_AT_symbol_name("_gpio4")
	.dwattr DW$303, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$303, DW_AT_accessibility(DW_ACCESS_public)
DW$304	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$304, DW_AT_name("rtccs"), DW_AT_symbol_name("_rtccs")
	.dwattr DW$304, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$304, DW_AT_accessibility(DW_ACCESS_public)
DW$305	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$305, DW_AT_name("op3"), DW_AT_symbol_name("_op3")
	.dwattr DW$305, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$305, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$25, DW_AT_byte_size(0x01)
DW$306	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$306, DW_AT_name("spimo"), DW_AT_symbol_name("_spimo")
	.dwattr DW$306, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$306, DW_AT_accessibility(DW_ACCESS_public)
DW$307	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$307, DW_AT_name("spimi"), DW_AT_symbol_name("_spimi")
	.dwattr DW$307, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$307, DW_AT_accessibility(DW_ACCESS_public)
DW$308	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$308, DW_AT_name("spiclk"), DW_AT_symbol_name("_spiclk")
	.dwattr DW$308, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$308, DW_AT_accessibility(DW_ACCESS_public)
DW$309	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$309, DW_AT_name("spiste"), DW_AT_symbol_name("_spiste")
	.dwattr DW$309, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$309, DW_AT_accessibility(DW_ACCESS_public)
DW$310	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$310, DW_AT_name("scitxa"), DW_AT_symbol_name("_scitxa")
	.dwattr DW$310, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$310, DW_AT_accessibility(DW_ACCESS_public)
DW$311	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$311, DW_AT_name("scirxa"), DW_AT_symbol_name("_scirxa")
	.dwattr DW$311, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$311, DW_AT_accessibility(DW_ACCESS_public)
DW$312	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$312, DW_AT_name("op1"), DW_AT_symbol_name("_op1")
	.dwattr DW$312, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$312, DW_AT_accessibility(DW_ACCESS_public)
DW$313	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$313, DW_AT_name("op2"), DW_AT_symbol_name("_op2")
	.dwattr DW$313, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$313, DW_AT_accessibility(DW_ACCESS_public)
DW$314	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$314, DW_AT_name("spiselect1"), DW_AT_symbol_name("_spiselect1")
	.dwattr DW$314, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$314, DW_AT_accessibility(DW_ACCESS_public)
DW$315	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$315, DW_AT_name("spiselect2"), DW_AT_symbol_name("_spiselect2")
	.dwattr DW$315, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$315, DW_AT_accessibility(DW_ACCESS_public)
DW$316	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$316, DW_AT_name("spiselect3"), DW_AT_symbol_name("_spiselect3")
	.dwattr DW$316, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$316, DW_AT_accessibility(DW_ACCESS_public)
DW$317	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$317, DW_AT_name("pc485rxen"), DW_AT_symbol_name("_pc485rxen")
	.dwattr DW$317, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$317, DW_AT_accessibility(DW_ACCESS_public)
DW$318	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$318, DW_AT_name("pc485txen"), DW_AT_symbol_name("_pc485txen")
	.dwattr DW$318, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$318, DW_AT_accessibility(DW_ACCESS_public)
DW$319	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$319, DW_AT_name("modeselect"), DW_AT_symbol_name("_modeselect")
	.dwattr DW$319, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$319, DW_AT_accessibility(DW_ACCESS_public)
DW$320	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$320, DW_AT_name("xf_xplldis"), DW_AT_symbol_name("_xf_xplldis")
	.dwattr DW$320, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$320, DW_AT_accessibility(DW_ACCESS_public)
DW$321	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$321, DW_AT_name("notused3"), DW_AT_symbol_name("_notused3")
	.dwattr DW$321, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$321, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


	.dwattr DW$44, DW_AT_external(0x01)
	.dwattr DW$48, DW_AT_external(0x01)
	.dwattr DW$26, DW_AT_external(0x01)
	.dwattr DW$55, DW_AT_external(0x01)
	.dwattr DW$70, DW_AT_external(0x01)
	.dwattr DW$50, DW_AT_external(0x01)
	.dwattr DW$30, DW_AT_external(0x01)
	.dwattr DW$32, DW_AT_external(0x01)
	.dwattr DW$75, DW_AT_external(0x01)
	.dwattr DW$33, DW_AT_external(0x01)
	.dwattr DW$29, DW_AT_external(0x01)
	.dwattr DW$31, DW_AT_external(0x01)
	.dwattr DW$60, DW_AT_external(0x01)
	.dwattr DW$60, DW_AT_type(*DW$T$51)
	.dwattr DW$61, DW_AT_external(0x01)
	.dwattr DW$61, DW_AT_type(*DW$T$51)
	.dwattr DW$62, DW_AT_external(0x01)
	.dwattr DW$62, DW_AT_type(*DW$T$51)
	.dwattr DW$63, DW_AT_external(0x01)
	.dwattr DW$63, DW_AT_type(*DW$T$51)
	.dwattr DW$42, DW_AT_external(0x01)
	.dwattr DW$42, DW_AT_type(*DW$T$51)
	.dwattr DW$34, DW_AT_external(0x01)
	.dwattr DW$34, DW_AT_type(*DW$T$51)
	.dwattr DW$38, DW_AT_external(0x01)
	.dwattr DW$38, DW_AT_type(*DW$T$51)
	.dwattr DW$66, DW_AT_external(0x01)
	.dwattr DW$66, DW_AT_type(*DW$T$11)
	.dwattr DW$68, DW_AT_external(0x01)
	.dwattr DW$68, DW_AT_type(*DW$T$11)
	.dwattr DW$27, DW_AT_external(0x01)
	.dwattr DW$28, DW_AT_external(0x01)
	.dwattr DW$64, DW_AT_external(0x01)
	.dwattr DW$65, DW_AT_external(0x01)
	.dwattr DW$76, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$322	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$322, DW_AT_location[DW_OP_reg0]
DW$323	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$323, DW_AT_location[DW_OP_reg1]
DW$324	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$324, DW_AT_location[DW_OP_reg2]
DW$325	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$325, DW_AT_location[DW_OP_reg3]
DW$326	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$326, DW_AT_location[DW_OP_reg4]
DW$327	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$327, DW_AT_location[DW_OP_reg5]
DW$328	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$328, DW_AT_location[DW_OP_reg6]
DW$329	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$329, DW_AT_location[DW_OP_reg7]
DW$330	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$330, DW_AT_location[DW_OP_reg8]
DW$331	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$331, DW_AT_location[DW_OP_reg9]
DW$332	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$332, DW_AT_location[DW_OP_reg10]
DW$333	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$333, DW_AT_location[DW_OP_reg11]
DW$334	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$334, DW_AT_location[DW_OP_reg12]
DW$335	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$335, DW_AT_location[DW_OP_reg13]
DW$336	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$336, DW_AT_location[DW_OP_reg14]
DW$337	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$337, DW_AT_location[DW_OP_reg15]
DW$338	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$338, DW_AT_location[DW_OP_reg16]
DW$339	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$339, DW_AT_location[DW_OP_reg17]
DW$340	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$340, DW_AT_location[DW_OP_reg18]
DW$341	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$341, DW_AT_location[DW_OP_reg19]
DW$342	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$342, DW_AT_location[DW_OP_reg20]
DW$343	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$343, DW_AT_location[DW_OP_reg21]
DW$344	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$344, DW_AT_location[DW_OP_reg22]
DW$345	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$345, DW_AT_location[DW_OP_reg23]
DW$346	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$346, DW_AT_location[DW_OP_reg24]
DW$347	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$347, DW_AT_location[DW_OP_reg25]
DW$348	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$348, DW_AT_location[DW_OP_reg26]
DW$349	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$349, DW_AT_location[DW_OP_reg27]
DW$350	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$350, DW_AT_location[DW_OP_reg28]
DW$351	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$351, DW_AT_location[DW_OP_reg29]
DW$352	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$352, DW_AT_location[DW_OP_reg30]
DW$353	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$353, DW_AT_location[DW_OP_reg31]
DW$354	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$354, DW_AT_location[DW_OP_regx 0x20]
DW$355	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$355, DW_AT_location[DW_OP_regx 0x21]
DW$356	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$356, DW_AT_location[DW_OP_regx 0x22]
DW$357	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$357, DW_AT_location[DW_OP_regx 0x23]
DW$358	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$358, DW_AT_location[DW_OP_regx 0x24]
DW$359	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$359, DW_AT_location[DW_OP_regx 0x25]
DW$360	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$360, DW_AT_location[DW_OP_regx 0x26]
DW$361	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$361, DW_AT_location[DW_OP_regx 0x27]
DW$362	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$362, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

