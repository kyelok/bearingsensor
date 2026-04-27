;***************************************************************
;* TMS320C2000 C/C++ Codegen                   PC Version 3.07 *
;* Date/Time created: Thu Feb 08 12:00:35 2007                 *
;***************************************************************
FP	.set	XAR2
;	C:\ti\c2000\cgtools\bin\opt2000.exe -m -v28 -q -O1 C:\DOCUME~1\Andy\LOCALS~1\Temp\TI2496_2 C:\DOCUME~1\Andy\LOCALS~1\Temp\TI2496_5 -w C:/Dev/Amot/BearingWear/DSP/Debug 
;	C:\ti\c2000\cgtools\bin\ac2000.exe -@C:\DOCUME~1\Andy\LOCALS~1\Temp\TI2496_4 

	.sect	".text"
	.global	_InitCompensation

;***************************************************************
;* FNAME: _InitCompensation             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_InitCompensation:
        MOVW      DP,#_settings+4
        MOV       @_settings+4,#0       ; |24| 
        MOVW      DP,#_settings+3
        MOV       @_settings+3,#0       ; |25| 
        MOVB      XAR0,#0
L1:    
        MOVL      XAR4,#_inputs+129     ; |29| 
        MOVU      ACC,AR0
        MOV       *+XAR4[AR0],#0        ; |29| 
        LSL       ACC,1                 ; |30| 
        MOVL      XAR4,#_inputs+144     ; |30| 
        ADDL      XAR4,ACC
        MOV       AH,#0
        MOV       AL,#0
        MOVL      *+XAR4[0],ACC         ; |30| 
        MOVL      XAR4,#_inputs+172     ; |31| 
        MOV       *+XAR4[AR0],#0        ; |31| 
        MOVL      XAR4,#_inputs+191     ; |32| 
        MOV       *+XAR4[AR0],#0        ; |32| 
        ADDB      XAR0,#1               ; |33| 
        MOV       AL,AR0                ; |33| 
        CMPB      AL,#14                ; |33| 
        BF        L1,LO                 ; |33| 
        ; branch occurs ; |33| 
        LRETR
        ; return occurs



	.sect	".text"
	.global	_SpeedCompensation

;***************************************************************
;* FNAME: _SpeedCompensation            FR SIZE:  14           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  6 Auto,  6 SOE     *
;***************************************************************

_SpeedCompensation:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#8
        MOVB      XAR1,#0
L2:    
        MOVW      DP,#_inputs+109
        MOVL      XAR3,#_safe5+14       ; |58| 
        MOV       AL,@_inputs+109       ; |58| 
        MOV       *-SP[3],AL            ; |58| 
        CMP       AL,*+XAR3[1]          ; |58| 
        BF        L11,LOS               ; |58| 
        ; branch occurs ; |58| 
        CMP       AL,*+XAR3[2]          ; |67| 
        BF        L10,LOS               ; |67| 
        ; branch occurs ; |67| 
        CMP       AL,*+XAR3[3]          ; |76| 
        BF        L9,LOS                ; |76| 
        ; branch occurs ; |76| 
        CMP       AL,*+XAR3[4]          ; |85| 
        BF        L8,LOS                ; |85| 
        ; branch occurs ; |85| 
        CMP       AL,*+XAR3[5]          ; |94| 
        BF        L7,LOS                ; |94| 
        ; branch occurs ; |94| 
        CMP       AL,*+XAR3[6]          ; |103| 
        BF        L6,LOS                ; |103| 
        ; branch occurs ; |103| 
        CMP       AL,*+XAR3[7]          ; |112| 
        BF        L5,LOS                ; |112| 
        ; branch occurs ; |112| 
        MOVB      XAR0,#8               ; |121| 
        MOV       AL,*+XAR3[AR0]        ; |121| 
        CMP       AL,*-SP[3]            ; |121| 
        MOV       *-SP[4],AL            ; |121| 
        BF        L3,HIS                ; |121| 
        ; branch occurs ; |121| 
        MOVU      ACC,AR1
        MOVL      XAR4,#_speedcomp      ; |135| 
        LSL       ACC,4                 ; |135| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[AR0]        ; |135| 
        MOVB      XAR0,#9               ; |135| 
        MOV       *-SP[5],AL            ; |135| 
        MOV       AL,*+XAR4[AR0]        ; |135| 
        LCR       #I$$TOFS              ; |135| 
        ; call occurs [#I$$TOFS] ; |135| 
        MOVL      XAR2,ACC              ; |135| 
        MOV       AL,*-SP[5]            ; |135| 
        LCR       #I$$TOFS              ; |135| 
        ; call occurs [#I$$TOFS] ; |135| 
        MOVL      *-SP[2],ACC           ; |135| 
        MOVL      ACC,XAR2              ; |135| 
        LCR       #FS$$SUB              ; |135| 
        ; call occurs [#FS$$SUB] ; |135| 
        MOVB      XAR0,#9               ; |135| 
        MOVL      XAR2,ACC              ; |135| 
        MOV       AL,*+XAR3[AR0]        ; |135| 
        SUB       AL,*-SP[4]            ; |135| 
        LCR       #U$$TOFS              ; |135| 
        ; call occurs [#U$$TOFS] ; |135| 
        MOVL      *-SP[2],ACC           ; |135| 
        MOVL      ACC,XAR2              ; |135| 
        LCR       #FS$$DIV              ; |135| 
        ; call occurs [#FS$$DIV] ; |135| 
        MOVL      XAR2,ACC              ; |135| 
        MOV       AL,*-SP[3]            ; |135| 
        SUB       AL,*-SP[4]            ; |135| 
        LCR       #U$$TOFS              ; |135| 
        ; call occurs [#U$$TOFS] ; |135| 
        MOVL      *-SP[2],ACC           ; |135| 
        MOVL      ACC,XAR2              ; |135| 
        BF        L13,UNC               ; |138| 
        ; branch occurs ; |138| 
L3:    
        MOVL      XAR4,#_safe5+14       ; |125| 
        MOVU      ACC,AR1
        MOVL      *-SP[8],XAR4          ; |125| 
        LSL       ACC,4                 ; |125| 
        MOVZ      AR3,*+XAR4[7]         ; |125| 
        MOVL      XAR4,#_speedcomp      ; |125| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[7]          ; |125| 
        MOV       *-SP[5],AL            ; |125| 
        MOV       AL,*+XAR4[AR0]        ; |125| 
        LCR       #I$$TOFS              ; |125| 
        ; call occurs [#I$$TOFS] ; |125| 
        MOVL      XAR2,ACC              ; |125| 
        MOV       AL,*-SP[5]            ; |125| 
        LCR       #I$$TOFS              ; |125| 
        ; call occurs [#I$$TOFS] ; |125| 
        MOVL      *-SP[2],ACC           ; |125| 
        MOVL      ACC,XAR2              ; |125| 
        LCR       #FS$$SUB              ; |125| 
        ; call occurs [#FS$$SUB] ; |125| 
        MOVL      XAR4,*-SP[8]          ; |125| 
        MOVL      XAR2,ACC              ; |125| 
        MOVB      XAR0,#8               ; |125| 
        MOV       AL,*+XAR4[AR0]        ; |125| 
L4:    
        SUB       AL,AR3                ; |125| 
        LCR       #U$$TOFS              ; |125| 
        ; call occurs [#U$$TOFS] ; |125| 
        MOVL      *-SP[2],ACC           ; |125| 
        MOVL      ACC,XAR2              ; |125| 
        LCR       #FS$$DIV              ; |125| 
        ; call occurs [#FS$$DIV] ; |125| 
        MOVW      DP,#_inputs+109
        MOVL      *-SP[8],ACC           ; |125| 
        MOV       AL,@_inputs+109       ; |127| 
        SUB       AL,AR3                ; |127| 
        LCR       #U$$TOFS              ; |127| 
        ; call occurs [#U$$TOFS] ; |127| 
        BF        L12,UNC               ; |129| 
        ; branch occurs ; |129| 
L5:    
        MOVL      XAR4,#_safe5+14       ; |116| 
        MOVU      ACC,AR1
        MOVL      *-SP[8],XAR4          ; |116| 
        LSL       ACC,4                 ; |116| 
        MOVZ      AR3,*+XAR4[6]         ; |116| 
        MOVL      XAR4,#_speedcomp      ; |116| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[6]          ; |116| 
        MOV       *-SP[5],AL            ; |116| 
        MOV       AL,*+XAR4[7]          ; |116| 
        LCR       #I$$TOFS              ; |116| 
        ; call occurs [#I$$TOFS] ; |116| 
        MOVL      XAR2,ACC              ; |116| 
        MOV       AL,*-SP[5]            ; |116| 
        LCR       #I$$TOFS              ; |116| 
        ; call occurs [#I$$TOFS] ; |116| 
        MOVL      *-SP[2],ACC           ; |116| 
        MOVL      ACC,XAR2              ; |116| 
        LCR       #FS$$SUB              ; |116| 
        ; call occurs [#FS$$SUB] ; |116| 
        MOVL      XAR4,*-SP[8]          ; |116| 
        MOVL      XAR2,ACC              ; |116| 
        MOV       AL,*+XAR4[7]          ; |116| 
        BF        L4,UNC                ; |120| 
        ; branch occurs ; |120| 
L6:    
        MOVL      XAR4,#_safe5+14       ; |107| 
        MOVU      ACC,AR1
        MOVL      *-SP[8],XAR4          ; |107| 
        LSL       ACC,4                 ; |107| 
        MOVZ      AR3,*+XAR4[5]         ; |107| 
        MOVL      XAR4,#_speedcomp      ; |107| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[5]          ; |107| 
        MOV       *-SP[5],AL            ; |107| 
        MOV       AL,*+XAR4[6]          ; |107| 
        LCR       #I$$TOFS              ; |107| 
        ; call occurs [#I$$TOFS] ; |107| 
        MOVL      XAR2,ACC              ; |107| 
        MOV       AL,*-SP[5]            ; |107| 
        LCR       #I$$TOFS              ; |107| 
        ; call occurs [#I$$TOFS] ; |107| 
        MOVL      *-SP[2],ACC           ; |107| 
        MOVL      ACC,XAR2              ; |107| 
        LCR       #FS$$SUB              ; |107| 
        ; call occurs [#FS$$SUB] ; |107| 
        MOVL      XAR4,*-SP[8]          ; |107| 
        MOVL      XAR2,ACC              ; |107| 
        MOV       AL,*+XAR4[6]          ; |107| 
        BF        L4,UNC                ; |111| 
        ; branch occurs ; |111| 
L7:    
        MOVL      XAR4,#_safe5+14       ; |98| 
        MOVU      ACC,AR1
        MOVL      *-SP[8],XAR4          ; |98| 
        LSL       ACC,4                 ; |98| 
        MOVZ      AR3,*+XAR4[4]         ; |98| 
        MOVL      XAR4,#_speedcomp      ; |98| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[4]          ; |98| 
        MOV       *-SP[5],AL            ; |98| 
        MOV       AL,*+XAR4[5]          ; |98| 
        LCR       #I$$TOFS              ; |98| 
        ; call occurs [#I$$TOFS] ; |98| 
        MOVL      XAR2,ACC              ; |98| 
        MOV       AL,*-SP[5]            ; |98| 
        LCR       #I$$TOFS              ; |98| 
        ; call occurs [#I$$TOFS] ; |98| 
        MOVL      *-SP[2],ACC           ; |98| 
        MOVL      ACC,XAR2              ; |98| 
        LCR       #FS$$SUB              ; |98| 
        ; call occurs [#FS$$SUB] ; |98| 
        MOVL      XAR4,*-SP[8]          ; |98| 
        MOVL      XAR2,ACC              ; |98| 
        MOV       AL,*+XAR4[5]          ; |98| 
        BF        L4,UNC                ; |102| 
        ; branch occurs ; |102| 
L8:    
        MOVL      XAR4,#_safe5+14       ; |89| 
        MOVU      ACC,AR1
        MOVL      *-SP[8],XAR4          ; |89| 
        LSL       ACC,4                 ; |89| 
        MOVZ      AR3,*+XAR4[3]         ; |89| 
        MOVL      XAR4,#_speedcomp      ; |89| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[3]          ; |89| 
        MOV       *-SP[5],AL            ; |89| 
        MOV       AL,*+XAR4[4]          ; |89| 
        LCR       #I$$TOFS              ; |89| 
        ; call occurs [#I$$TOFS] ; |89| 
        MOVL      XAR2,ACC              ; |89| 
        MOV       AL,*-SP[5]            ; |89| 
        LCR       #I$$TOFS              ; |89| 
        ; call occurs [#I$$TOFS] ; |89| 
        MOVL      *-SP[2],ACC           ; |89| 
        MOVL      ACC,XAR2              ; |89| 
        LCR       #FS$$SUB              ; |89| 
        ; call occurs [#FS$$SUB] ; |89| 
        MOVL      XAR4,*-SP[8]          ; |89| 
        MOVL      XAR2,ACC              ; |89| 
        MOV       AL,*+XAR4[4]          ; |89| 
        BF        L4,UNC                ; |93| 
        ; branch occurs ; |93| 
L9:    
        MOVL      XAR4,#_safe5+14       ; |80| 
        MOVU      ACC,AR1
        MOVL      *-SP[8],XAR4          ; |80| 
        LSL       ACC,4                 ; |80| 
        MOVZ      AR3,*+XAR4[2]         ; |80| 
        MOVL      XAR4,#_speedcomp      ; |80| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[2]          ; |80| 
        MOV       *-SP[5],AL            ; |80| 
        MOV       AL,*+XAR4[3]          ; |80| 
        LCR       #I$$TOFS              ; |80| 
        ; call occurs [#I$$TOFS] ; |80| 
        MOVL      XAR2,ACC              ; |80| 
        MOV       AL,*-SP[5]            ; |80| 
        LCR       #I$$TOFS              ; |80| 
        ; call occurs [#I$$TOFS] ; |80| 
        MOVL      *-SP[2],ACC           ; |80| 
        MOVL      ACC,XAR2              ; |80| 
        LCR       #FS$$SUB              ; |80| 
        ; call occurs [#FS$$SUB] ; |80| 
        MOVL      XAR4,*-SP[8]          ; |80| 
        MOVL      XAR2,ACC              ; |80| 
        MOV       AL,*+XAR4[3]          ; |80| 
        BF        L4,UNC                ; |84| 
        ; branch occurs ; |84| 
L10:    
        MOVL      XAR4,#_safe5+14       ; |71| 
        MOVU      ACC,AR1
        MOVL      *-SP[8],XAR4          ; |71| 
        LSL       ACC,4                 ; |71| 
        MOVZ      AR3,*+XAR4[1]         ; |71| 
        MOVL      XAR4,#_speedcomp      ; |71| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[1]          ; |71| 
        MOV       *-SP[5],AL            ; |71| 
        MOV       AL,*+XAR4[2]          ; |71| 
        LCR       #I$$TOFS              ; |71| 
        ; call occurs [#I$$TOFS] ; |71| 
        MOVL      XAR2,ACC              ; |71| 
        MOV       AL,*-SP[5]            ; |71| 
        LCR       #I$$TOFS              ; |71| 
        ; call occurs [#I$$TOFS] ; |71| 
        MOVL      *-SP[2],ACC           ; |71| 
        MOVL      ACC,XAR2              ; |71| 
        LCR       #FS$$SUB              ; |71| 
        ; call occurs [#FS$$SUB] ; |71| 
        MOVL      XAR4,*-SP[8]          ; |71| 
        MOVL      XAR2,ACC              ; |71| 
        MOV       AL,*+XAR4[2]          ; |71| 
        BF        L4,UNC                ; |75| 
        ; branch occurs ; |75| 
L11:    
        MOVL      XAR4,#_safe5+14       ; |62| 
        MOVU      ACC,AR1
        MOVL      *-SP[8],XAR4          ; |62| 
        LSL       ACC,4                 ; |62| 
        MOVZ      AR3,*+XAR4[0]         ; |62| 
        MOVL      XAR4,#_speedcomp      ; |62| 
        ADDL      XAR4,ACC
        MOV       AL,*+XAR4[0]          ; |62| 
        MOV       *-SP[5],AL            ; |62| 
        MOV       AL,*+XAR4[1]          ; |62| 
        LCR       #I$$TOFS              ; |62| 
        ; call occurs [#I$$TOFS] ; |62| 
        MOVL      XAR2,ACC              ; |62| 
        MOV       AL,*-SP[5]            ; |62| 
        LCR       #I$$TOFS              ; |62| 
        ; call occurs [#I$$TOFS] ; |62| 
        MOVL      *-SP[2],ACC           ; |62| 
        MOVL      ACC,XAR2              ; |62| 
        LCR       #FS$$SUB              ; |62| 
        ; call occurs [#FS$$SUB] ; |62| 
        MOVL      XAR4,*-SP[8]          ; |62| 
        MOVL      XAR2,ACC              ; |62| 
        MOV       AL,*+XAR4[1]          ; |62| 
        SUB       AL,AR3                ; |62| 
        LCR       #U$$TOFS              ; |62| 
        ; call occurs [#U$$TOFS] ; |62| 
        MOVL      *-SP[2],ACC           ; |62| 
        MOVL      ACC,XAR2              ; |62| 
        LCR       #FS$$DIV              ; |62| 
        ; call occurs [#FS$$DIV] ; |62| 
        MOVW      DP,#_inputs+109
        MOVL      *-SP[8],ACC           ; |62| 
        MOV       AL,@_inputs+109       ; |64| 
        LCR       #U$$TOFS              ; |64| 
        ; call occurs [#U$$TOFS] ; |64| 
        MOVL      XAR2,ACC              ; |64| 
        MOV       AL,AR3                ; |64| 
        LCR       #U$$TOFS              ; |64| 
        ; call occurs [#U$$TOFS] ; |64| 
        MOVL      *-SP[2],ACC           ; |64| 
        MOVL      ACC,XAR2              ; |64| 
        LCR       #FS$$SUB              ; |64| 
        ; call occurs [#FS$$SUB] ; |64| 
L12:    
        MOVL      XAR6,*-SP[8]          ; |64| 
        MOVL      *-SP[2],XAR6          ; |64| 
L13:    
        LCR       #FS$$MPY              ; |64| 
        ; call occurs [#FS$$MPY] ; |64| 
        MOVL      XAR2,ACC              ; |64| 
        MOV       AL,*-SP[5]            ; |64| 
        LCR       #I$$TOFS              ; |64| 
        ; call occurs [#I$$TOFS] ; |64| 
        MOVL      *-SP[2],ACC           ; |64| 
        MOVL      ACC,XAR2              ; |64| 
        LCR       #FS$$ADD              ; |64| 
        ; call occurs [#FS$$ADD] ; |64| 
        MOVL      *-SP[8],ACC           ; |64| 
        MOV       ACC,#32256 << 15
        MOVL      *-SP[2],ACC           ; |151| 
        MOVL      ACC,*-SP[8]           ; |151| 
        LCR       #FS$$ADD              ; |151| 
        ; call occurs [#FS$$ADD] ; |151| 
        MOVL      *-SP[8],ACC           ; |151| 
        LCR       #FS$$TOI              ; |151| 
        ; call occurs [#FS$$TOI] ; |151| 
        MOVL      XAR4,#_inputs+110     ; |151| 
        MOV       AH,*+XAR4[AR1]        ; |151| 
        ADD       AH,AL                 ; |151| 
        MOVL      XAR4,#_inputs+129     ; |151| 
        MOV       *+XAR4[AR1],AH        ; |151| 
        ADDB      XAR1,#1               ; |154| 
        MOV       AL,AR1                ; |154| 
        CMPB      AL,#14                ; |154| 
        BF        L2,LO                 ; |154| 
        ; branch occurs ; |154| 
        SUBB      SP,#8
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
        LRETR
        ; return occurs



	.sect	".text"
	.global	_TempCompensation

;***************************************************************
;* FNAME: _TempCompensation             FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  4 Auto,  6 SOE     *
;***************************************************************

_TempCompensation:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#6
        MOVB      XAR1,#0
L14:    
        MOVB      AL,#1                 ; |166| 
        MOV       T,AR1                 ; |166| 
        MOVW      DP,#_inputs+18
        LSL       AL,T                  ; |166| 
        AND       AL,@_inputs+18        ; |166| 
        BF        L16,NEQ               ; |166| 
        ; branch occurs ; |166| 
        MOVW      DP,#_inputs+105
        MOV       AL,@_inputs+105       ; |173| 
        LCR       #U$$TOFS              ; |173| 
        ; call occurs [#U$$TOFS] ; |173| 
        MOVL      XAR6,ACC              ; |173| 
        MOV       AL,#0
        MOV       AH,#16672
        MOVL      *-SP[2],ACC           ; |173| 
        MOVL      ACC,XAR6              ; |173| 
        LCR       #FS$$DIV              ; |173| 
        ; call occurs [#FS$$DIV] ; |173| 
        MOVL      XAR2,ACC              ; |173| 
        MOVU      ACC,AR1
        LSL       ACC,1                 ; |174| 
        MOVL      XAR4,#_inputs+144     ; |174| 
        ADDL      XAR4,ACC
        MOVL      *-SP[6],XAR4          ; |174| 
        MOVL      *-SP[4],ACC           ; |174| 
        MOVL      ACC,*+XAR4[0]         ; |174| 
        MOVL      *-SP[2],ACC           ; |174| 
        MOVL      ACC,XAR2              ; |174| 
        LCR       #FS$$SUB              ; |174| 
        ; call occurs [#FS$$SUB] ; |174| 
        MOVL      XAR3,ACC              ; |174| 
        MOVL      ACC,*-SP[4]           ; |174| 
        MOVL      XAR4,#_safe3          ; |174| 
        ADDL      XAR4,ACC
        MOVL      ACC,*+XAR4[0]         ; |174| 
        LCR       #L$$TOFS              ; |174| 
        ; call occurs [#L$$TOFS] ; |174| 
        MOVL      *-SP[2],ACC           ; |174| 
        MOV       ACC,#32512 << 15
        LCR       #FS$$DIV              ; |174| 
        ; call occurs [#FS$$DIV] ; |174| 
        MOVL      XAR6,ACC              ; |174| 
        MOV       AL,#55050
        MOV       AH,#48547
        MOVL      *-SP[2],ACC           ; |174| 
        MOVL      ACC,XAR6              ; |174| 
        LCR       #FS$$MPY              ; |174| 
        ; call occurs [#FS$$MPY] ; |174| 
        LCR       #_exp                 ; |174| 
        ; call occurs [#_exp] ; |174| 
        MOVL      *-SP[2],ACC           ; |174| 
        MOVL      ACC,XAR3              ; |174| 
        LCR       #FS$$MPY              ; |174| 
        ; call occurs [#FS$$MPY] ; |174| 
        MOVL      *-SP[2],ACC           ; |174| 
        MOVL      ACC,XAR2              ; |174| 
        LCR       #FS$$SUB              ; |174| 
        ; call occurs [#FS$$SUB] ; |174| 
        MOVL      XAR4,*-SP[6]          ; |174| 
        MOVL      *+XAR4[0],ACC         ; |174| 
        MOVL      XAR3,ACC              ; |174| 
        MOV       AL,#0
        MOV       AH,#17096
        MOVL      *-SP[2],ACC           ; |176| 
        MOVL      ACC,XAR3              ; |176| 
        LCR       #FS$$CMP              ; |176| 
        ; call occurs [#FS$$CMP] ; |176| 
        CMPB      AL,#0                 ; |176| 
        BF        L15,GT                ; |176| 
        ; branch occurs ; |176| 
        MOV       AL,#0
        MOV       AH,#16544
        MOVL      *-SP[2],ACC           ; |176| 
        MOVL      ACC,XAR3              ; |176| 
        LCR       #FS$$CMP              ; |176| 
        ; call occurs [#FS$$CMP] ; |176| 
        CMPB      AL,#0                 ; |176| 
        BF        L16,GEQ               ; |176| 
        ; branch occurs ; |176| 
L15:    
        MOVU      ACC,AR1
        MOVL      XAR4,#_inputs+144     ; |178| 
        LSL       ACC,1                 ; |178| 
        ADDL      XAR4,ACC
        MOVL      *+XAR4[0],XAR2        ; |178| 
L16:    
        ADDB      XAR1,#1               ; |181| 
        MOV       AL,AR1                ; |181| 
        CMPB      AL,#14                ; |181| 
        BF        L14,LO                ; |181| 
        ; branch occurs ; |181| 
        SUBB      SP,#6
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
        LRETR
        ; return occurs



	.sect	".text"
	.global	_ApplySpeedTempCompensation

;***************************************************************
;* FNAME: _ApplySpeedTempCompensation   FR SIZE:  16           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  8 Auto,  6 SOE     *
;***************************************************************

_ApplySpeedTempCompensation:
        MOVL      *SP++,XAR1
        MOVW      DP,#_safe2+10
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOV       AL,@_safe2+10         ; |192| 
        ADDB      SP,#10
        BF        L27,NEQ               ; |192| 
        ; branch occurs ; |192| 
        LCR       #_SpeedCompensation   ; |194| 
        ; call occurs [#_SpeedCompensation] ; |194| 
        MOVW      DP,#_safe2+9
        MOV       AL,@_safe2+9          ; |195| 
        MOVW      DP,#_inputs+109
        CMP       AL,@_inputs+109       ; |195| 
        BF        L18,LOS               ; |195| 
        ; branch occurs ; |195| 
        MOVB      XAR1,#0
L17:    
        MOVL      XAR4,#_inputs+191     ; |252| 
        MOV       AL,*+XAR4[AR1]        ; |252| 
        MOVL      XAR4,#_inputs+172     ; |252| 
        MOV       *+XAR4[AR1],AL        ; |252| 
        ADDB      XAR1,#1               ; |253| 
        MOV       AL,AR1                ; |253| 
        CMPB      AL,#14                ; |253| 
        BF        L17,LO                ; |253| 
        ; branch occurs ; |253| 
        BF        L29,UNC               ; |253| 
        ; branch occurs ; |253| 
L18:    
        MOVB      XAR1,#0
        MOV       *-SP[3],#1            ; |197| 
L19:    
        MOVW      DP,#_safe2+20
        MOV       AL,@_safe2+20         ; |200| 
        AND       AL,*-SP[3]            ; |200| 
        BF        L25,EQ                ; |200| 
        ; branch occurs ; |200| 
        MOVB      AL,#1                 ; |207| 
        MOV       T,AR1                 ; |207| 
        MOVW      DP,#_inputs+18
        LSL       AL,T                  ; |207| 
        AND       AL,@_inputs+18        ; |207| 
        BF        L26,NEQ               ; |207| 
        ; branch occurs ; |207| 
        MOVL      XAR4,#_safe4          ; |209| 
        MOV       AL,*+XAR4[AR1]        ; |209| 
        LCR       #U$$TOFS              ; |209| 
        ; call occurs [#U$$TOFS] ; |209| 
        MOVL      *-SP[2],ACC           ; |209| 
        MOV       ACC,#32512 << 15
        LCR       #FS$$DIV              ; |209| 
        ; call occurs [#FS$$DIV] ; |209| 
        MOVL      XAR6,ACC              ; |209| 
        MOV       AL,#0
        MOV       AH,#17530
        MOVL      *-SP[2],ACC           ; |209| 
        MOVL      ACC,XAR6              ; |209| 
        LCR       #FS$$MPY              ; |209| 
        ; call occurs [#FS$$MPY] ; |209| 
        MOVL      *-SP[6],ACC           ; |209| 
        MOVL      XAR4,#_safe5          ; |210| 
        MOVZ      AR2,*+XAR4[AR1]       ; |210| 
        MOV       AL,AR2                ; |210| 
        LCR       #I$$TOFS              ; |210| 
        ; call occurs [#I$$TOFS] ; |210| 
        MOVL      XAR4,#_inputs+129     ; |211| 
        MOVL      *-SP[8],ACC           ; |210| 
        MOVZ      AR3,*+XAR4[AR1]       ; |211| 
        MOV       AL,AR3                ; |211| 
        LCR       #I$$TOFS              ; |211| 
        ; call occurs [#I$$TOFS] ; |211| 
        MOVL      *-SP[10],ACC          ; |211| 
        MOVW      DP,#_safe2+30
        MOV       AL,@_safe2+30         ; |217| 
        BF        L20,EQ                ; |217| 
        ; branch occurs ; |217| 
        MOVL      ACC,*-SP[6]
        MOVL      XAR4,#_inputs+144     ; |217| 
        MOVL      *-SP[2],ACC           ; |217| 
        MOVU      ACC,AR1
        LSL       ACC,1                 ; |217| 
        ADDL      XAR4,ACC
        MOVL      ACC,*+XAR4[0]         ; |217| 
        LCR       #FS$$MPY              ; |217| 
        ; call occurs [#FS$$MPY] ; |217| 
        MOVL      *-SP[2],ACC           ; |217| 
        MOVL      ACC,*-SP[10]          ; |217| 
        LCR       #FS$$SUB              ; |217| 
        ; call occurs [#FS$$SUB] ; |217| 
        MOVL      XAR6,*-SP[8]          ; |217| 
        MOVL      *-SP[2],XAR6          ; |217| 
        BF        L21,UNC               ; |217| 
        ; branch occurs ; |217| 
L20:    
        MOV       AL,AR3                ; |217| 
        LCR       #I$$TOFS              ; |217| 
        ; call occurs [#I$$TOFS] ; |217| 
        MOVL      XAR3,ACC              ; |217| 
        MOV       AL,AR2                ; |217| 
        LCR       #I$$TOFS              ; |217| 
        ; call occurs [#I$$TOFS] ; |217| 
        MOVL      *-SP[2],ACC           ; |217| 
        MOVL      ACC,XAR3              ; |217| 
L21:    
        LCR       #FS$$ADD              ; |217| 
        ; call occurs [#FS$$ADD] ; |217| 
        MOVL      XAR2,ACC              ; |217| 
        MOV       ACC,#32256 << 15
        MOVL      *-SP[2],ACC           ; |224| 
        MOVL      ACC,XAR2              ; |224| 
        LCR       #FS$$ADD              ; |224| 
        ; call occurs [#FS$$ADD] ; |224| 
        MOVL      XAR2,ACC              ; |224| 
        SETC      SXM
        MOV       ACC,#-31600 << 15
        MOVL      *-SP[2],ACC           ; |224| 
        MOVL      ACC,XAR2              ; |224| 
        LCR       #FS$$CMP              ; |224| 
        ; call occurs [#FS$$CMP] ; |224| 
        CMPB      AL,#0                 ; |224| 
        BF        L22,GT                ; |224| 
        ; branch occurs ; |224| 
        MOVW      DP,#_safe2+29
        MOV       AL,@_safe2+29         ; |230| 
        BF        L22,EQ                ; |230| 
        ; branch occurs ; |230| 
        CMPB      AL,#1                 ; |236| 
        BF        L24,NEQ               ; |236| 
        ; branch occurs ; |236| 
        MOV       AL,#-50               ; |238| 
        MOVL      XAR4,#_inputs+191     ; |238| 
        MOV       *+XAR4[AR1],AL        ; |238| 
        MOVL      XAR4,#_inputs+172     ; |238| 
        BF        L23,UNC               ; |238| 
        ; branch occurs ; |238| 
L22:    
        MOVL      ACC,XAR2              ; |226| 
        LCR       #FS$$TOI              ; |226| 
        ; call occurs [#FS$$TOI] ; |226| 
        MOVL      XAR4,#_inputs+172     ; |226| 
        MOV       *+XAR4[AR1],AL        ; |226| 
        MOVL      XAR4,#_inputs+191     ; |228| 
L23:    
        MOV       *+XAR4[AR1],AL        ; |228| 
L24:    
        LCR       #_ZeroAveraging       ; |242| 
        ; call occurs [#_ZeroAveraging] ; |242| 
        BF        L26,UNC               ; |242| 
        ; branch occurs ; |242| 
L25:    
        MOVB      AL,#0
        MOVL      XAR4,#_inputs+191     ; |205| 
        MOV       *+XAR4[AR1],AL        ; |205| 
        MOVL      XAR4,#_inputs+172     ; |205| 
        MOV       *+XAR4[AR1],AL        ; |205| 
L26:    
        MOV       AL,*-SP[3]
        ADDB      XAR1,#1               ; |245| 
        LSL       AL,1                  ; |244| 
        MOV       *-SP[3],AL            ; |244| 
        MOV       AL,AR1                ; |245| 
        CMPB      AL,#14                ; |245| 
        BF        L19,LO                ; |245| 
        ; branch occurs ; |245| 
        BF        L29,UNC               ; |245| 
        ; branch occurs ; |245| 
L27:    
        MOVB      XAR1,#0
L28:    
        MOVL      XAR4,#_inputs+110     ; |260| 
        MOV       AL,*+XAR4[AR1]        ; |260| 
        MOVL      XAR4,#_inputs+191     ; |260| 
        MOV       *+XAR4[AR1],AL        ; |260| 
        MOVL      XAR4,#_inputs+172     ; |260| 
        MOV       *+XAR4[AR1],AL        ; |260| 
        ADDB      XAR1,#1               ; |261| 
        MOV       AL,AR1                ; |261| 
        CMPB      AL,#14                ; |261| 
        BF        L28,LO                ; |261| 
        ; branch occurs ; |261| 
L29:    
        SUBB      SP,#10
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
        LRETR
        ; return occurs



	.sect	".text"
	.global	_ZeroAveraging

;***************************************************************
;* FNAME: _ZeroAveraging                FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ZeroAveraging:
        MOVW      DP,#_inputs+26
        MOV       AL,@_inputs+26        ; |271| 
        ADDB      SP,#2
        CMPB      AL,#1                 ; |271| 
        BF        L37,EQ                ; |271| 
        ; branch occurs ; |271| 
        MOVW      DP,#_inputs+27
        MOV       AL,@_inputs+27        ; |291| 
        CMPB      AL,#1                 ; |291| 
        BF        L41,NEQ               ; |291| 
        ; branch occurs ; |291| 
        MOVW      DP,#_timers+47
        MOV       AL,@_timers+47        ; |293| 
        BF        L41,NEQ               ; |293| 
        ; branch occurs ; |293| 
        MOVW      DP,#_timers+47
        MOV       @_timers+47,#400      ; |295| 
        NOP
        MOVW      DP,#_timers+48
        MOVL      ACC,@_timers+48       ; |297| 
        BF        L34,NEQ               ; |297| 
        ; branch occurs ; |297| 
        MOVW      DP,#_inputs+27
        MOV       @_inputs+27,#0        ; |310| 
        MOVB      XAR0,#0
L30:    
        MOVB      AL,#1                 ; |313| 
        MOV       T,AR0                 ; |313| 
        MOVW      DP,#_inputs+17
        LSL       AL,T                  ; |313| 
        AND       AL,@_inputs+17        ; |313| 
        BF        L33,EQ                ; |313| 
        ; branch occurs ; |313| 
        MOVL      XAR4,#_safe5          ; |315| 
        MOVW      DP,#_inputs+234
        MOVL      ACC,XAR4              ; |315| 
        MOVL      XAR5,#_inputs+206     ; |315| 
        ADDU      ACC,AR0               ; |315| 
        MOVL      XAR4,ACC              ; |315| 
        MOVL      ACC,@_inputs+234      ; |315| 
        MOVL      *-SP[2],ACC           ; |315| 
        MOVU      ACC,AR0
        LSL       ACC,1                 ; |315| 
        ADDL      XAR5,ACC
        MOVL      ACC,*+XAR5[0]         ; |315| 
        FFC       XAR7,#L$$DIV          ; |315| 
        ; call occurs [#L$$DIV] ; |315| 
        CMPB      AL,#100               ; |317| 
        MOV       *+XAR4[0],AL          ; |315| 
        BF        L31,GT                ; |317| 
        ; branch occurs ; |317| 
        CMP       AL,#-100              ; |318| 
        BF        L32,GEQ               ; |318| 
        ; branch occurs ; |318| 
        MOV       *+XAR4[0],#-100       ; |318| 
        BF        L32,UNC               ; |318| 
        ; branch occurs ; |318| 
L31:    
        MOVL      XAR4,#_safe5          ; |317| 
        MOV       *+XAR4[AR0],#100      ; |317| 
L32:    
        MOVL      XAR4,#_safe5          ; |319| 
        MOVL      ACC,XAR4              ; |319| 
        ADDU      ACC,AR0               ; |319| 
        MOVL      XAR4,ACC              ; |319| 
        MOV       AL,*+XAR4[0]          ; |319| 
        NEG       AL                    ; |319| 
        MOV       *+XAR4[0],AL          ; |319| 
L33:    
        ADDB      XAR0,#1               ; |321| 
        MOV       AL,AR0                ; |321| 
        CMPB      AL,#14                ; |321| 
        BF        L30,LO                ; |321| 
        ; branch occurs ; |321| 
        BF        L40,UNC               ; |322| 
        ; branch occurs ; |322| 
L34:    
        MOVB      ACC,#1
        MOVW      DP,#_inputs+234
        ADDL      ACC,@_inputs+234      ; |299| 
        MOVW      DP,#_inputs+234
        MOVL      @_inputs+234,ACC      ; |299| 
        MOVB      XAR0,#0
L35:    
        MOVB      AL,#1                 ; |302| 
        MOV       T,AR0                 ; |302| 
        MOVW      DP,#_inputs+17
        LSL       AL,T                  ; |302| 
        AND       AL,@_inputs+17        ; |302| 
        BF        L36,EQ                ; |302| 
        ; branch occurs ; |302| 
        MOVU      ACC,AR0
        MOVL      XAR4,#_inputs+206     ; |304| 
        LSL       ACC,1                 ; |304| 
        ADDL      XAR4,ACC
        SETC      SXM
        MOVL      XAR5,#_inputs+172     ; |304| 
        MOV       ACC,*+XAR5[AR0]       ; |304| 
        ADDL      *+XAR4[0],ACC         ; |304| 
L36:    
        ADDB      XAR0,#1               ; |306| 
        MOV       AL,AR0                ; |306| 
        CMPB      AL,#14                ; |306| 
        BF        L35,LO                ; |306| 
        ; branch occurs ; |306| 
        BF        L41,UNC               ; |306| 
        ; branch occurs ; |306| 
L37:    
        MOVW      DP,#_inputs+26
        MOV       @_inputs+26,#0        ; |273| 
        MOVB      ACC,#0
        MOVW      DP,#_inputs+27
        MOV       @_inputs+27,#1        ; |274| 
        MOVW      DP,#_inputs+234
        MOVL      @_inputs+234,ACC      ; |275| 
        MOVB      XAR0,#0
L38:    
        MOVU      ACC,AR0
        MOVL      XAR4,#_inputs+206     ; |278| 
        LSL       ACC,1                 ; |278| 
        ADDL      XAR4,ACC
        MOV       T,AR0                 ; |279| 
        MOVW      DP,#_inputs+17
        MOVB      ACC,#0
        MOVL      *+XAR4[0],ACC         ; |278| 
        MOVB      AL,#1                 ; |279| 
        LSL       AL,T                  ; |279| 
        AND       AL,@_inputs+17        ; |279| 
        BF        L39,EQ                ; |279| 
        ; branch occurs ; |279| 
        MOVL      XAR4,#_safe5          ; |281| 
        MOV       *+XAR4[AR0],#0        ; |281| 
L39:    
        ADDB      XAR0,#1               ; |283| 
        MOV       AL,AR0                ; |283| 
        CMPB      AL,#14                ; |283| 
        BF        L38,LO                ; |283| 
        ; branch occurs ; |283| 
        MOVL      XAR4,#720000          ; |286| 
        MOVW      DP,#_timers+48
        MOVL      @_timers+48,XAR4      ; |286| 
        MOVW      DP,#_timers+47
        MOV       @_timers+47,#400      ; |287| 
L40:    
        MOVW      DP,#_settings+2
        MOV       @_settings+2,#5       ; |288| 
L41:    
        SUBB      SP,#2
        LRETR
        ; return occurs


;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_exp
	.global	_settings
	.global	_inputs
	.global	_safe2
	.global	_safe3
	.global	_safe4
	.global	_safe5
	.global	_speedcomp
	.global	_timers
	.global	I$$TOFS
	.global	FS$$SUB
	.global	U$$TOFS
	.global	FS$$DIV
	.global	FS$$MPY
	.global	FS$$ADD
	.global	FS$$TOI
	.global	L$$TOFS
	.global	FS$$CMP
	.global	L$$DIV
