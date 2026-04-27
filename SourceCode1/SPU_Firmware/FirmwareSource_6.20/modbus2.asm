;***************************************************************
;* TMS320C2000 C/C++ Codegen                   PC Version 3.07 *
;* Date/Time created: Thu Nov 27 11:59:03 2008                 *
;***************************************************************
FP	.set	XAR2
	.global	_wioresponsemsg
_wioresponsemsg:	.usect	".ebss",10,1,0
	.global	_txmode
_txmode:	.usect	".ebss",1,1,0
	.global	_wiolost
_wiolost:	.usect	".ebss",1,1,0
;	C:\ti\c2000\cgtools\bin\opt2000.exe -m -v28 -q -O1 C:\DOCUME~1\ANDREW\LOCALS~1\Temp\TI3548_2 C:\DOCUME~1\ANDREW\LOCALS~1\Temp\TI3548_5 -w C:/Dev/Amot/BearingWear/DSPV1_5/Debug 
;	C:\ti\c2000\cgtools\bin\ac2000.exe -@C:\DOCUME~1\ANDREW\LOCALS~1\Temp\TI3548_4 

	.sect	".text"
	.global	_WIO485Init

;***************************************************************
;* FNAME: _WIO485Init                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WIO485Init:
        MOVW      DP,#_txmode
        MOV       @_txmode,#0           ; |57| 
        MOVB      ACC,#100
        MOVW      DP,#_timers+8
        MOVB      XAR5,#0
        MOV       @_timers+8,#0         ; |58| 
        MOVL      XAR4,#_receiveC+3     ; |62| 
        MOVW      DP,#_timers+57
        MOV       @_timers+57,#0        ; |59| 
        MOVW      DP,#_receiveC+2
        MOV       @_receiveC+2,#0       ; |60| 
        MOVW      DP,#_receiveC+1
        MOV       @_receiveC+1,#0       ; |61| 
        LCR       #_memset              ; |62| 
        ; call occurs [#_memset] ; |62| 
        LRETR
        ; return occurs



	.sect	".text"
	.global	_WaterinOil

;***************************************************************
;* FNAME: _WaterinOil                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_WaterinOil:
        LCR       #_WIOEnabled          ; |69| 
        ; call occurs [#_WIOEnabled] ; |69| 
        CMPB      AL,#1                 ; |69| 
        BF        L2,NEQ                ; |69| 
        ; branch occurs ; |69| 
        MOVW      DP,#_txmode
        MOV       AL,@_txmode           ; |71| 
        BF        L1,NEQ                ; |71| 
        ; branch occurs ; |71| 
        MOVW      DP,#_timers+57
        MOV       AL,@_timers+57        ; |71| 
        BF        L1,NEQ                ; |71| 
        ; branch occurs ; |71| 
        LCR       #_ReadWaterinOilintoBuf ; |74| 
        ; call occurs [#_ReadWaterinOilintoBuf] ; |74| 
        MOVW      DP,#_timers+57
        MOV       @_timers+57,#1000     ; |75| 
L1:    
        LCR       #_WIOReceive          ; |77| 
        ; call occurs [#_WIOReceive] ; |77| 
L2:    
        LRETR
        ; return occurs



	.sect	".text"
	.global	_ReadWaterinOilintoBuf

;***************************************************************
;* FNAME: _ReadWaterinOilintoBuf        FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_ReadWaterinOilintoBuf:
        MOVL      *SP++,XAR3
        MOVB      AL,#1                 ; |93| 
        LCR       #_WriteUartConfig_C   ; |93| 
        ; call occurs [#_WriteUartConfig_C] ; |93| 
        MOVL      XAR3,#_wioresponsemsg ; |97| 
        MOV       *+XAR3[0],#0          ; |97| 
        MOV       *+XAR3[1],#0          ; |98| 
        MOV       *+XAR3[2],#103        ; |103| 
        MOVL      XAR4,XAR3             ; |111| 
        MOV       *+XAR3[3],#3          ; |104| 
        MOVB      AL,#7                 ; |111| 
        MOV       *+XAR3[4],#0          ; |106| 
        MOV       *+XAR3[5],#13         ; |108| 
        MOV       *+XAR3[6],#14         ; |109| 
        LCR       #_CalcSingleByteChecksum ; |111| 
        ; call occurs [#_CalcSingleByteChecksum] ; |111| 
        MOVL      XAR4,XAR3             ; |116| 
        MOV       *+XAR3[7],AL          ; |111| 
        MOVB      AL,#8                 ; |116| 
        LCR       #_LoadSendBufferC     ; |116| 
        ; call occurs [#_LoadSendBufferC] ; |116| 
        MOVW      DP,#_txmode
        INC       @_txmode              ; |117| 
        MOVW      DP,#_timers+8
        MOV       @_timers+8,#200       ; |118| 
        MOVL      XAR3,*--SP
        LRETR
        ; return occurs



	.sect	".text"
	.global	_WIOReceive

;***************************************************************
;* FNAME: _WIOReceive                   FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            3 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_WIOReceive:
        MOVL      *SP++,XAR3
        MOVW      DP,#_txmode
        ADDB      SP,#4
        MOV       AL,@_txmode           ; |126| 
        BF        L8,EQ                 ; |126| 
        ; branch occurs ; |126| 
        MOVW      DP,#_timers+8
        MOV       AL,@_timers+8         ; |126| 
        BF        L5,NEQ                ; |126| 
        ; branch occurs ; |126| 
        MOVW      DP,#_txmode
        MOV       AL,@_txmode           ; |147| 
        BF        L8,EQ                 ; |147| 
        ; branch occurs ; |147| 
        CMPB      AL,#30                ; |147| 
        BF        L3,HIS                ; |147| 
        ; branch occurs ; |147| 
        MOVW      DP,#_timers+8
        MOV       AL,@_timers+8         ; |147| 
        BF        L4,EQ                 ; |147| 
        ; branch occurs ; |147| 
L3:    
        MOVW      DP,#_txmode
        MOV       AL,@_txmode           ; |161| 
        CMPB      AL,#30                ; |161| 
        BF        L8,LO                 ; |161| 
        ; branch occurs ; |161| 
        MOVL      XAR4,#FSL1            ; |163| 
        MOVL      XAR3,#_stringbuffer   ; |163| 
        MOVL      *-SP[2],XAR4          ; |163| 
        MOVL      XAR4,XAR3             ; |163| 
        LCR       #_sprintf             ; |163| 
        ; call occurs [#_sprintf] ; |163| 
        MOVL      XAR4,XAR3             ; |164| 
        LCR       #_DebugStringOut      ; |164| 
        ; call occurs [#_DebugStringOut] ; |164| 
        MOVW      DP,#_wiolost
        MOV       @_wiolost,#1          ; |165| 
        BF        L8,UNC                ; |165| 
        ; branch occurs ; |165| 
L4:    
        MOVL      XAR4,#FSL2            ; |149| 
        MOVL      XAR3,#_stringbuffer   ; |149| 
        MOVW      DP,#_txmode
        MOVL      *-SP[2],XAR4          ; |149| 
        MOVL      XAR4,XAR3             ; |149| 
        MOV       AL,@_txmode           ; |149| 
        MOV       *-SP[3],AL            ; |149| 
        LCR       #_sprintf             ; |149| 
        ; call occurs [#_sprintf] ; |149| 
        MOVL      XAR4,XAR3             ; |150| 
        LCR       #_DebugStringOut      ; |150| 
        ; call occurs [#_DebugStringOut] ; |150| 
        MOVB      XAR5,#0
        MOVB      ACC,#100
        MOVL      XAR4,#_receiveC+3     ; |152| 
        LCR       #_memset              ; |152| 
        ; call occurs [#_memset] ; |152| 
        MOVW      DP,#_receiveC+2
        MOV       @_receiveC+2,#0       ; |153| 
        MOVW      DP,#_receiveC+1
        MOV       @_receiveC+1,#0       ; |154| 
        MOVW      DP,#_timers+7
        MOV       @_timers+7,#40        ; |155| 
        MOVW      DP,#_timers+57
        MOV       @_timers+57,#1000     ; |156| 
        LCR       #_ReadWaterinOilintoBuf ; |157| 
        ; call occurs [#_ReadWaterinOilintoBuf] ; |157| 
        BF        L9,UNC                ; |158| 
        ; branch occurs ; |158| 
L5:    
        MOVW      DP,#_receiveC+1
        MOV       AL,@_receiveC+1       ; |128| 
        BF        L6,EQ                 ; |128| 
        ; branch occurs ; |128| 
        MOVW      DP,#_receiveC+2
        CMP       AL,@_receiveC+2       ; |128| 
        BF        L7,NEQ                ; |128| 
        ; branch occurs ; |128| 
L6:    
        MOVW      DP,#_timers+7
        MOV       AL,@_timers+7         ; |135| 
        BF        L9,NEQ                ; |135| 
        ; branch occurs ; |135| 
        MOVW      DP,#_receiveC+1
        MOV       AL,@_receiveC+1       ; |135| 
        BF        L9,EQ                 ; |135| 
        ; branch occurs ; |135| 
        LCR       #_WaterInOilResponse  ; |139| 
        ; call occurs [#_WaterInOilResponse] ; |139| 
        MOVW      DP,#_wiolost
        MOVB      XAR5,#0
        MOVL      XAR4,#_receiveC+3     ; |141| 
        MOV       @_wiolost,#0          ; |140| 
        MOVB      ACC,#100
        LCR       #_memset              ; |141| 
        ; call occurs [#_memset] ; |141| 
        MOVW      DP,#_receiveC+2
        MOV       @_receiveC+2,#0       ; |143| 
        MOVW      DP,#_receiveC+1
        MOV       @_receiveC+1,#0       ; |144| 
        BF        L9,UNC                ; |144| 
        ; branch occurs ; |144| 
L7:    
        MOVW      DP,#_receiveC+2
        MOV       @_receiveC+2,AL       ; |132| 
        MOVW      DP,#_timers+7
        MOV       @_timers+7,#40        ; |133| 
        BF        L9,UNC                ; |134| 
        ; branch occurs ; |134| 
L8:    
        MOVW      DP,#_txmode
        MOV       @_txmode,#0           ; |167| 
        MOVW      DP,#_timers+8
        MOV       @_timers+8,#0         ; |168| 
L9:    
        SUBB      SP,#4
        MOVL      XAR3,*--SP
        LRETR
        ; return occurs



	.sect	".text"
	.global	_WaterInOilResponse

;***************************************************************
;* FNAME: _WaterInOilResponse           FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_WaterInOilResponse:
        MOVL      *SP++,XAR1
        MOVW      DP,#_receiveC+1
        MOVL      *SP++,XAR3
        MOV       AL,@_receiveC+1       ; |200| 
        CMPB      AL,#19                ; |200| 
        BF        L12,NEQ               ; |200| 
        ; branch occurs ; |200| 
        MOVL      XAR3,#_receiveC+3     ; |202| 
        MOVL      XAR4,XAR3             ; |202| 
        MOVB      AL,#18                ; |202| 
        LCR       #_CalcSingleByteChecksum ; |202| 
        ; call occurs [#_CalcSingleByteChecksum] ; |202| 
        MOVB      XAR0,#18              ; |205| 
        CMP       AL,*+XAR3[AR0]        ; |205| 
        BF        L12,NEQ               ; |205| 
        ; branch occurs ; |205| 
        MOV       AL,*+XAR3[4]          ; |205| 
        CMPB      AL,#6                 ; |205| 
        BF        L12,NEQ               ; |205| 
        ; branch occurs ; |205| 
        LCR       #_WioStructPtr        ; |217| 
        ; call occurs [#_WioStructPtr] ; |217| 
        MOVB      XAR1,#0
        MOV       AL,*+XAR3[5]          ; |223| 
        ADDB      XAR4,#2               ; |218| 
        BF        L11,NEQ               ; |223| 
        ; branch occurs ; |223| 
        MOVB      XAR6,#0
        MOVB      XAR0,#6               ; |225| 
L10:    
        MOVL      XAR5,#_receiveC+3     ; |231| 
        AND       AL,*+XAR5[AR0],#0x00ff ; |231| 
        MOVZ      AR7,AL                ; |231| 
        ADDB      XAR0,#1               ; |233| 
        MOV       ACC,*+XAR5[AR0] << #8 ; |233| 
        ADD       AR7,AL                ; |233| 
        ADDB      XAR0,#1               ; |237| 
        MOV       *+XAR4[AR1],AR7       ; |235| 
        AND       AL,*+XAR5[AR0],#0x00ff ; |237| 
        MOVZ      AR7,AL                ; |237| 
        ADDB      XAR0,#1               ; |239| 
        MOV       ACC,*+XAR5[AR0] << #8 ; |239| 
        ADD       AR7,AL                ; |239| 
        ADDB      XAR1,#1               ; |241| 
        ADDB      XAR6,#1               ; |243| 
        MOV       *+XAR4[AR1],AR7       ; |241| 
        ADDB      XAR0,#1               ; |240| 
        MOV       AL,AR6                ; |243| 
        ADDB      XAR1,#1               ; |242| 
        CMPB      AL,#3                 ; |243| 
        BF        L10,LO                ; |243| 
        ; branch occurs ; |243| 
L11:    
        MOVW      DP,#_txmode
        MOV       @_txmode,#0           ; |246| 
L12:    
        MOVL      XAR3,*--SP
        MOVL      XAR1,*--SP
        LRETR
        ; return occurs



	.sect	".text"
	.global	_CalcSingleByteChecksum

;***************************************************************
;* FNAME: _CalcSingleByteChecksum       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CalcSingleByteChecksum:
        MOVZ      AR5,AL                ; |260| 
        MOVB      AL,#0
        MOV       AH,AR5                ; |263| 
        BF        L14,EQ                ; |264| 
        ; branch occurs ; |264| 
L13:    
        MOV       AH,*XAR4++            ; |266| 
        SUBB      XAR5,#1               ; |268| 
        ANDB      AH,#0xff              ; |266| 
        ADD       AL,AH                 ; |266| 
        MOV       AH,AR5                ; |268| 
        BF        L13,NEQ               ; |268| 
        ; branch occurs ; |268| 
L14:    
        ANDB      AL,#0xff              ; |270| 
        LRETR
        ; return occurs


;***************************************************************
;* FAR STRINGS                                                 *
;***************************************************************
	.sect	".econst"
	.align	2
FSL1:	.string	"WIO failure",13,10,0
	.align	2
FSL2:	.string	"WIO retry: %u",13,10,0
;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_sprintf
	.global	_memset
	.global	_DebugStringOut
	.global	_LoadSendBufferC
	.global	_WioStructPtr
	.global	_WIOEnabled
	.global	_WriteUartConfig_C
	.global	_timers
	.global	_receiveC
	.global	_stringbuffer
