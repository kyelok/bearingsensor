;***************************************************************
;* TMS320C2000 C/C++ Codegen                   PC Version 3.07 *
;* Date/Time created: Mon Sep 26 11:03:55 2005                 *
;***************************************************************
FP	.set	XAR2
_chkdsk_log:	.usect	".ebss",2,1,1
_chkdsk_log_pos:	.usect	".ebss",2,1,1

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_chkdsk_log_dir+0,32
	.field  	0,16			; _chkdsk_log_dir @ 0

	.sect	".text"
_chkdsk_log_dir:	.usect	".ebss",1,1,0
_chkdsk_dir:	.usect	".ebss",2,1,1
_de:	.usect	".ebss",512,1,0
_full_path:	.usect	".ebss",2,1,1
_lost_pos:	.usect	".ebss",1,1,0
_dirlevel:	.usect	".ebss",1,1,0

	.sect	".cinit"
	.align	1
	.field  	-IR_1,16
	.field  	_chkdsk_logmsg+0,32
	.field  	FSL1,32		; _chkdsk_logmsg[0] @ 0
	.field  	FSL2,32		; _chkdsk_logmsg[1] @ 32
	.field  	FSL3,32		; _chkdsk_logmsg[2] @ 64
	.field  	FSL4,32		; _chkdsk_logmsg[3] @ 96
	.field  	FSL5,32		; _chkdsk_logmsg[4] @ 128
	.field  	FSL6,32		; _chkdsk_logmsg[5] @ 160
	.field  	FSL7,32		; _chkdsk_logmsg[6] @ 192
	.field  	FSL8,32		; _chkdsk_logmsg[7] @ 224
	.field  	FSL9,32		; _chkdsk_logmsg[8] @ 256
	.field  	FSL10,32		; _chkdsk_logmsg[9] @ 288
	.field  	FSL11,32		; _chkdsk_logmsg[10] @ 320
	.field  	FSL12,32		; _chkdsk_logmsg[11] @ 352
	.field  	FSL13,32		; _chkdsk_logmsg[12] @ 384
	.field  	FSL14,32		; _chkdsk_logmsg[13] @ 416
	.field  	FSL15,32		; _chkdsk_logmsg[14] @ 448
	.field  	FSL16,32		; _chkdsk_logmsg[15] @ 480
	.field  	FSL17,32		; _chkdsk_logmsg[16] @ 512
	.field  	FSL18,32		; _chkdsk_logmsg[17] @ 544
IR_1:	.set	36

	.sect	".text"
_chkdsk_logmsg:	.usect	".ebss",36,1,1

	.sect	".econst"
	.align	1
_$T0$1:
	.field  	76,16			; _$T0$1[0] @ 0
	.field  	79,16			; _$T0$1[1] @ 16
	.field  	71,16			; _$T0$1[2] @ 32
	.field  	95,16			; _$T0$1[3] @ 48
	.field  	48,16			; _$T0$1[4] @ 64
	.field  	48,16			; _$T0$1[5] @ 80
	.field  	48,16			; _$T0$1[6] @ 96
	.field  	48,16			; _$T0$1[7] @ 112
	.field  	46,16			; _$T0$1[8] @ 128
	.field  	84,16			; _$T0$1[9] @ 144
	.field  	88,16			; _$T0$1[10] @ 160
	.field  	84,16			; _$T0$1[11] @ 176
	.field  	0,16			; _$T0$1[12] @ 192

	.sect	".text"

	.sect	".econst"
	.align	1
_$T1$2:
	.field  	76,16			; _$T1$2[0] @ 0
	.field  	79,16			; _$T1$2[1] @ 16
	.field  	83,16			; _$T1$2[2] @ 32
	.field  	84,16			; _$T1$2[3] @ 48
	.field  	0,16			; _$T1$2[4] @ 64

	.sect	".text"
;	C:\ti\c2000\cgtools\bin\opt2000.exe -m -v28 -q -O1 C:\DOCUME~1\ANDREW~1\LOCALS~1\Temp\TI568_2 C:\DOCUME~1\ANDREW~1\LOCALS~1\Temp\TI568_5 -w C:/Dev/Amot/BearingWear/DSP/Debug 
;	C:\ti\c2000\cgtools\bin\ac2000.exe -@C:\DOCUME~1\ANDREW~1\LOCALS~1\Temp\TI568_4 

	.sect	".text"

;***************************************************************
;* FNAME: _chkdsk_setnamecnt            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_chkdsk_setnamecnt:
        MOV       PL,AL                 ; |100| 
        MOVB      AL,#7                 ; |103| 
        MOVL      XAR0,XAR4             ; |100| 
        MOV       PH,AL                 ; |103| 
        MOV       AL,PL                 ; |103| 
        BF        L2,EQ                 ; |104| 
        ; branch occurs ; |104| 
L1:    
        MOVB      AH,#10                ; |106| 
        FFC       XAR7,#I$$MOD          ; |106| 
        ; call occurs [#I$$MOD] ; |106| 
        SETC      SXM
        MOVB      AH,#48                ; |106| 
        ADD       AH,AL                 ; |106| 
        MOVZ      AR6,AH                ; |106| 
        MOV       AL,PH                 ; |106| 
        MOV       ACC,AL                ; |106| 
        ADDL      ACC,XAR0
        MOVL      XAR4,ACC              ; |106| 
        MOV       AL,PH                 ; |106| 
        ADDB      AL,#-1
        MOV       PH,AL                 ; |106| 
        MOV       AL,PL                 ; |106| 
        MOV       *+XAR4[0],AR6         ; |106| 
        MOVB      AH,#10                ; |107| 
        FFC       XAR7,#I$$DIV          ; |107| 
        ; call occurs [#I$$DIV] ; |107| 
        CMPB      AL,#0                 ; |107| 
        MOV       PL,AL                 ; |107| 
        BF        L1,NEQ                ; |107| 
        ; branch occurs ; |107| 
L2:    
        LRETR
        ; return occurs



	.sect	".text"

;***************************************************************
;* FNAME: _chkdsk_putlog                FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  6 SOE     *
;***************************************************************

_chkdsk_putlog:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVB      XAR1,#1
        MOVL      *SP++,XAR3
        MOVZ      AR3,AL                ; |122| 
        MOVL      XAR2,XAR4             ; |122| 
        MOVL      ACC,XAR4              ; |122| 
        ADDB      SP,#2
        BF        L3,EQ                 ; |127| 
        ; branch occurs ; |127| 
        MOVL      XAR4,XAR2
        LCR       #_strlen              ; |127| 
        ; call occurs [#_strlen] ; |127| 
        MOVL      XAR6,ACC              ; |127| 
        MOVL      ACC,XAR1              ; |127| 
        ADDL      ACC,XAR6
        MOVL      XAR1,ACC              ; |127| 
L3:    
        MOVB      ACC,#1
        MOVW      DP,#_chkdsk_log_dir
        ADDL      ACC,XAR1
        MOVL      *-SP[2],ACC           ; |128| 
        MOV       AL,@_chkdsk_log_dir   ; |129| 
        BF        L4,NEQ                ; |129| 
        ; branch occurs ; |129| 
        MOVW      DP,#_chkdsk_dir
        MOVL      XAR4,@_chkdsk_dir     ; |129| 
        LCR       #_strlen              ; |129| 
        ; call occurs [#_strlen] ; |129| 
        MOVL      XAR6,ACC              ; |129| 
        MOVL      ACC,XAR1              ; |129| 
        ADDL      ACC,XAR6
        ADDB      ACC,#3                ; |129| 
        MOVL      *-SP[2],ACC           ; |129| 
L4:    
        MOVW      DP,#_chkdsk_log_pos
        MOVL      XAR4,#8192            ; |131| 
        MOVL      ACC,@_chkdsk_log_pos  ; |131| 
        SUBL      XAR4,ACC
        MOVL      ACC,*-SP[2]           ; |131| 
        CMPL      ACC,XAR4              ; |131| 
        BF        L8,HI                 ; |131| 
        ; branch occurs ; |131| 
        MOVW      DP,#_chkdsk_log
        MOVL      ACC,@_chkdsk_log      ; |133| 
        MOVW      DP,#_chkdsk_log_pos
        ADDL      ACC,@_chkdsk_log_pos  ; |133| 
        MOVW      DP,#_chkdsk_log_dir
        MOVL      XAR1,ACC              ; |133| 
        MOV       AL,@_chkdsk_log_dir   ; |134| 
        BF        L5,NEQ                ; |134| 
        ; branch occurs ; |134| 
        MOVW      DP,#_chkdsk_dir
        MOV       *+XAR1[0],#1          ; |136| 
        MOVL      XAR5,@_chkdsk_dir     ; |138| 
        ADDB      XAR1,#1               ; |138| 
        MOVL      XAR4,XAR1             ; |138| 
        LCR       #_strcpy              ; |138| 
        ; call occurs [#_strcpy] ; |138| 
        MOVW      DP,#_chkdsk_dir
        MOVL      XAR4,@_chkdsk_dir     ; |139| 
        LCR       #_strlen              ; |139| 
        ; call occurs [#_strlen] ; |139| 
        MOVL      XAR6,ACC              ; |139| 
        MOVW      DP,#_chkdsk_log_dir
        MOVL      ACC,XAR1              ; |139| 
        ADDL      ACC,XAR6
        ADDB      ACC,#1                ; |139| 
        MOVL      XAR1,ACC              ; |139| 
        MOV       @_chkdsk_log_dir,#1   ; |140| 
L5:    
        MOV       *+XAR1[0],AR3         ; |142| 
        MOVL      ACC,XAR2              ; |143| 
        ADDB      XAR1,#1               ; |143| 
        BF        L6,NEQ                ; |144| 
        ; branch occurs ; |144| 
        MOV       *+XAR1[0],#0          ; |145| 
        BF        L7,UNC                ; |145| 
        ; branch occurs ; |145| 
L6:    
        MOVL      XAR5,XAR2             ; |144| 
        MOVL      XAR4,XAR1             ; |144| 
        LCR       #_strcpy              ; |144| 
        ; call occurs [#_strcpy] ; |144| 
L7:    
        MOVL      XAR6,*-SP[2]          ; |146| 
        MOVW      DP,#_chkdsk_log_pos
        MOVL      ACC,@_chkdsk_log_pos  ; |146| 
        MOVW      DP,#_chkdsk_log_pos
        ADDL      ACC,XAR6
        MOVL      @_chkdsk_log_pos,ACC  ; |146| 
L8:    
        SUBB      SP,#2
        MOVL      XAR3,*--SP
        MOVL      XAR2,*--SP
        MOVL      XAR1,*--SP
        LRETR
        ; return occurs



	.sect	".text"

;***************************************************************
;* FNAME: _chkdsk_savelog               FR SIZE: 110           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter, 100 Auto,  6 SOE     *
;***************************************************************

_chkdsk_savelog:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      XAR1,XAR4             ; |160| 
        MOVL      *SP++,XAR3
        MOVZ      AR2,SP
        ADDB      SP,#104
        MOVZ      AR4,SP                ; |161| 
        MOVB      ACC,#13
        MOVL      XAR5,#_$T0$1          ; |161| 
        SUBB      XAR4,#17              ; |161| 
        LCR       #___memcpy_ff         ; |161| 
        ; call occurs [#___memcpy_ff] ; |161| 
        SUBB      FP,#8
        MOVW      DP,#_chkdsk_log_pos
        MOVL      ACC,@_chkdsk_log_pos  ; |169| 
        BF        L14,EQ                ; |169| 
        ; branch occurs ; |169| 
        MOVB      XAR3,#0
L9:    
        MOVZ      AR4,SP                ; |173| 
        MOV       AL,AR3                ; |173| 
        MOVB      AH,#1                 ; |173| 
        ADD       AH,AL                 ; |173| 
        SUBB      XAR4,#17              ; |173| 
        MOVZ      AR3,AH                ; |173| 
        LCR       #_chkdsk_setnamecnt   ; |173| 
        ; call occurs [#_chkdsk_setnamecnt] ; |173| 
        MOVZ      AR4,SP                ; |174| 
        MOVZ      AR5,SP                ; |174| 
        SUBB      XAR4,#100             ; |174| 
        MOVL      *-SP[2],XAR4          ; |174| 
        MOVL      XAR4,XAR1             ; |174| 
        SUBB      XAR5,#17              ; |174| 
        LCR       #_fn_findfirst        ; |174| 
        ; call occurs [#_fn_findfirst] ; |174| 
        CMPB      AL,#0                 ; |174| 
        BF        L10,NEQ               ; |174| 
        ; branch occurs ; |174| 
        CMP       AR3,#10000            ; |174| 
        BF        L9,LT                 ; |174| 
        ; branch occurs ; |174| 
L10:    
        CMP       AR3,#10000            ; |176| 
        BF        L14,GEQ               ; |176| 
        ; branch occurs ; |176| 
        MOVZ      AR5,SP                ; |178| 
        MOVL      XAR4,#FSL19           ; |178| 
        MOVL      *-SP[2],XAR4          ; |178| 
        MOVL      XAR4,XAR1             ; |178| 
        SUBB      XAR5,#17              ; |178| 
        LCR       #_fn_open             ; |178| 
        ; call occurs [#_fn_open] ; |178| 
        MOVL      XAR0,#10              ; |178| 
        MOVL      *+FP[AR0],XAR4        ; |178| 
        MOVL      XAR0,#10              ; |178| 
        MOVL      ACC,*+FP[AR0]         ; |178| 
        BF        L11,NEQ               ; |179| 
        ; branch occurs ; |179| 
        MOVB      AL,#50                ; |196| 
        BF        L15,UNC               ; |196| 
        ; branch occurs ; |196| 
L11:    
        MOVW      DP,#_chkdsk_log
        MOVL      XAR3,@_chkdsk_log     ; |181| 
        MOVW      DP,#_chkdsk_log_pos
        MOVL      ACC,@_chkdsk_log_pos  ; |182| 
        BF        L13,EQ                ; |182| 
        ; branch occurs ; |182| 
L12:    
        MOV       AL,*+XAR3[0]          ; |184| 
        MOVL      XAR4,#_chkdsk_logmsg  ; |186| 
        MOVU      ACC,AL
        MOVL      XAR0,#8               ; |186| 
        SUBB      ACC,#1                ; |186| 
        LSL       ACC,1                 ; |186| 
        ADDL      XAR4,ACC
        MOVL      *+FP[AR0],XAR4        ; |186| 
        MOVL      XAR0,#8               ; |186| 
        MOVL      XAR4,*+FP[AR0]        ; |186| 
        MOVL      XAR4,*+XAR4[0]        ; |186| 
        LCR       #_strlen              ; |186| 
        ; call occurs [#_strlen] ; |186| 
        MOVL      XAR0,#10              ; |186| 
        MOVL      *-SP[2],ACC           ; |186| 
        MOVL      ACC,*+FP[AR0]         ; |186| 
        MOVL      XAR0,#8               ; |186| 
        MOVL      *-SP[4],ACC           ; |186| 
        MOVL      XAR4,*+FP[AR0]        ; |186| 
        MOVL      XAR5,*+XAR4[0]        ; |186| 
        MOVL      XAR4,XAR1             ; |186| 
        MOVB      ACC,#1
        LCR       #_fn_write            ; |186| 
        ; call occurs [#_fn_write] ; |186| 
        ADDB      XAR3,#1               ; |185| 
        MOVL      XAR4,XAR3             ; |187| 
        LCR       #_strlen              ; |187| 
        ; call occurs [#_strlen] ; |187| 
        MOVL      XAR0,#10              ; |187| 
        MOVL      *-SP[2],ACC           ; |187| 
        MOVL      XAR5,XAR3             ; |187| 
        MOVL      ACC,*+FP[AR0]         ; |187| 
        MOVL      XAR4,XAR1             ; |187| 
        MOVL      *-SP[4],ACC           ; |187| 
        MOVB      ACC,#1
        LCR       #_fn_write            ; |187| 
        ; call occurs [#_fn_write] ; |187| 
        MOVL      XAR0,#10              ; |188| 
        MOVL      XAR4,XAR1             ; |188| 
        MOVL      XAR5,*+FP[AR0]        ; |188| 
        MOVB      AL,#10                ; |188| 
        LCR       #_fn_putc             ; |188| 
        ; call occurs [#_fn_putc] ; |188| 
        MOVL      XAR4,XAR3             ; |189| 
        LCR       #_strlen              ; |189| 
        ; call occurs [#_strlen] ; |189| 
        MOVL      XAR6,ACC              ; |189| 
        MOVL      ACC,XAR3              ; |189| 
        ADDL      ACC,XAR6
        MOVW      DP,#_chkdsk_log
        MOVL      XAR6,@_chkdsk_log     ; |189| 
        ADDB      ACC,#1                ; |189| 
        MOVL      XAR3,ACC              ; |189| 
        SUBL      ACC,XAR6
        MOVW      DP,#_chkdsk_log_pos
        CMPL      ACC,@_chkdsk_log_pos  ; |189| 
        BF        L12,LO                ; |189| 
        ; branch occurs ; |189| 
L13:    
        MOVL      XAR0,#10              ; |191| 
        MOVL      XAR4,XAR1             ; |191| 
        MOVL      XAR5,*+FP[AR0]        ; |191| 
        MOVB      AL,#10                ; |191| 
        LCR       #_fn_putc             ; |191| 
        ; call occurs [#_fn_putc] ; |191| 
        MOVL      XAR0,#10              ; |192| 
        MOVL      XAR4,XAR1             ; |192| 
        MOVL      XAR5,*+FP[AR0]        ; |192| 
        MOVB      AL,#10                ; |192| 
        LCR       #_fn_putc             ; |192| 
        ; call occurs [#_fn_putc] ; |192| 
        MOVL      XAR0,#10              ; |194| 
        MOVL      XAR4,XAR1             ; |194| 
        MOVL      XAR5,*+FP[AR0]        ; |194| 
        LCR       #_fn_close            ; |194| 
        ; call occurs [#_fn_close] ; |194| 
L14:    
        MOVB      AL,#0
L15:    
        SUBB      SP,#104               ; |199| 
        MOVL      XAR3,*--SP            ; |199| 
        MOVL      XAR2,*--SP            ; |199| 
        MOVL      XAR1,*--SP            ; |199| 
        LRETR
        ; return occurs



	.sect	".text"

;***************************************************************
;* FNAME: _chkdsk_getlostname           FR SIZE:  90           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 82 Auto,  6 SOE     *
;***************************************************************

_chkdsk_getlostname:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOVZ      AR2,SP
        SUBB      FP,#10
        ADDB      SP,#84
        MOVL      XAR1,*+FP[0]          ; |219| 
        MOVL      XAR3,XAR4             ; |219| 
        LCR       #_fn_chdir            ; |223| 
        ; call occurs [#_fn_chdir] ; |223| 
        MOV       AL,*+XAR1[0]          ; |225| 
        BF        L16,EQ                ; |225| 
        ; branch occurs ; |225| 
        MOVZ      AR4,SP                ; |225| 
        MOVL      XAR5,XAR1             ; |225| 
        SUBB      XAR4,#84              ; |225| 
        MOVL      *-SP[2],XAR4          ; |225| 
        MOVL      XAR4,XAR3             ; |225| 
        LCR       #_fn_findfirst        ; |225| 
        ; call occurs [#_fn_findfirst] ; |225| 
        CMPB      AL,#0                 ; |225| 
        BF        L19,NEQ               ; |225| 
        ; branch occurs ; |225| 
L16:    
        MOVL      XAR4,XAR1             ; |227| 
        MOVL      XAR5,#FSL20           ; |227| 
        LCR       #_strcpy              ; |227| 
        ; call occurs [#_strcpy] ; |227| 
L17:    
        MOVW      DP,#_lost_pos
        MOV       AL,@_lost_pos         ; |229| 
        MOVL      XAR4,XAR1             ; |229| 
        MOVW      DP,#_lost_pos
        INC       @_lost_pos            ; |229| 
        LCR       #_chkdsk_setnamecnt   ; |229| 
        ; call occurs [#_chkdsk_setnamecnt] ; |229| 
        MOVZ      AR4,SP                ; |231| 
        SUBB      XAR4,#84              ; |231| 
        MOVL      XAR5,XAR1             ; |231| 
        MOVL      *-SP[2],XAR4          ; |231| 
        MOVL      XAR4,XAR3             ; |231| 
        LCR       #_fn_findfirst        ; |231| 
        ; call occurs [#_fn_findfirst] ; |231| 
        CMPB      AL,#0                 ; |231| 
        BF        L18,NEQ               ; |231| 
        ; branch occurs ; |231| 
        MOVW      DP,#_lost_pos
        CMP       @_lost_pos,#10000     ; |231| 
        BF        L17,LT                ; |231| 
        ; branch occurs ; |231| 
L18:    
        MOVW      DP,#_lost_pos
        CMP       @_lost_pos,#10000     ; |234| 
        BF        L20,GEQ               ; |234| 
        ; branch occurs ; |234| 
L19:    
        MOVB      AL,#0
        BF        L21,UNC               ; |234| 
        ; branch occurs ; |234| 
L20:    
        MOVB      AL,#106               ; |235| 
L21:    
        SUBB      SP,#84                ; |235| 
        MOVL      XAR3,*--SP            ; |235| 
        MOVL      XAR2,*--SP            ; |235| 
        MOVL      XAR1,*--SP            ; |235| 
        LRETR
        ; return occurs



	.sect	".text"

;***************************************************************
;* FNAME: _chkdsk_checklostname         FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  5 Auto,  4 SOE     *
;***************************************************************

_chkdsk_checklostname:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        ADDB      SP,#8
        MOVL      XAR2,XAR4             ; |248| 
        MOVZ      AR4,SP                ; |250| 
        MOVB      ACC,#5
        MOVL      XAR5,#_$T1$2          ; |250| 
        SUBB      XAR4,#7               ; |250| 
        LCR       #___memcpy_ff         ; |250| 
        ; call occurs [#___memcpy_ff] ; |250| 
        MOVB      XAR1,#0
        BF        L23,UNC               ; |252| 
        ; branch occurs ; |252| 
L22:    
        ADDB      XAR1,#1               ; |252| 
L23:    
        MOVZ      AR4,SP                ; |252| 
        SUBB      XAR4,#7               ; |252| 
        LCR       #_strlen              ; |252| 
        ; call occurs [#_strlen] ; |252| 
        MOVZ      AR6,AR1
        CMPL      ACC,XAR6              ; |252| 
        BF        L24,LOS               ; |252| 
        ; branch occurs ; |252| 
        MOVZ      AR4,SP                ; |252| 
        SUBB      XAR4,#7               ; |252| 
        MOV       AL,*+XAR4[AR1]        ; |252| 
        CMP       AL,*+XAR2[AR1]        ; |252| 
        BF        L22,EQ                ; |252| 
        ; branch occurs ; |252| 
L24:    
        MOVZ      AR4,SP                ; |253| 
        SUBB      XAR4,#7               ; |253| 
        LCR       #_strlen              ; |253| 
        ; call occurs [#_strlen] ; |253| 
        MOVZ      AR6,AR1
        CMPL      ACC,XAR6              ; |253| 
        BF        L27,NEQ               ; |253| 
        ; branch occurs ; |253| 
        MOVB      XAR1,#4               ; |255| 
L25:    
        MOV       AL,*+XAR2[AR1]        ; |255| 
        CMPB      AL,#48                ; |255| 
        BF        L26,LT                ; |255| 
        ; branch occurs ; |255| 
        CMPB      AL,#58                ; |255| 
        BF        L26,GEQ               ; |255| 
        ; branch occurs ; |255| 
        ADDB      XAR1,#1               ; |255| 
        MOV       AL,AR1                ; |255| 
        CMPB      AL,#8                 ; |255| 
        BF        L25,LO                ; |255| 
        ; branch occurs ; |255| 
L26:    
        MOV       AL,AR1
        CMPB      AL,#8                 ; |256| 
        BF        L27,NEQ               ; |256| 
        ; branch occurs ; |256| 
        MOVB      XAR0,#8               ; |256| 
        MOV       AL,*+XAR2[AR0]        ; |256| 
        BF        L28,EQ                ; |256| 
        ; branch occurs ; |256| 
L27:    
        MOVB      AL,#106               ; |262| 
        BF        L29,UNC               ; |262| 
        ; branch occurs ; |262| 
L28:    
        MOVB      AL,#0
L29:    
        SUBB      SP,#8                 ; |258| 
        MOVL      XAR2,*--SP            ; |258| 
        MOVL      XAR1,*--SP            ; |258| 
        LRETR
        ; return occurs



	.sect	".text"

;***************************************************************
;* FNAME: _chkdsk_getname               FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_chkdsk_getname:
        MOVL      *SP++,XAR2
        MOVB      XAR7,#0
        MOVL      XAR2,XAR5             ; |276| 
        MOV       T,#0                  ; |277| 
L30:    
        SETC      SXM
        MOV       AL,AR7
        MOV       ACC,AL                ; |279| 
        MOVL      XAR6,ACC              ; |279| 
        MOVL      P,ACC                 ; |279| 
        MOVL      ACC,XAR4
        ADDL      XAR6,ACC
        MOVZ      AR6,*+XAR6[0]         ; |279| 
        MOV       AL,AR6                ; |279| 
        CMPB      AL,#32                ; |279| 
        BF        L31,EQ                ; |279| 
        ; branch occurs ; |279| 
        MOVL      XAR5,XAR2
        MOVL      ACC,P                 ; |279| 
        ADDL      XAR5,ACC
        MOV       AL,AR7                ; |279| 
        ADDB      AL,#1                 ; |279| 
        MOV       *+XAR5[0],AR6         ; |279| 
        MOVZ      AR7,AL                ; |279| 
        CMPB      AL,#8                 ; |279| 
        BF        L30,LT                ; |279| 
        ; branch occurs ; |279| 
L31:    
        MOVB      XAR0,#8               ; |280| 
        MOV       AL,*+XAR4[AR0]        ; |280| 
        CMPB      AL,#32                ; |280| 
        BF        L33,EQ                ; |280| 
        ; branch occurs ; |280| 
        MOVL      XAR5,XAR2             ; |282| 
        MOV       AL,AR7
        MOV       ACC,AL                ; |282| 
        ADDL      ACC,XAR5
        MOVL      XAR6,ACC              ; |282| 
        MOV       AL,AR7                ; |282| 
        ADDB      AL,#1                 ; |283| 
        MOV       T,AL                  ; |283| 
        MOV       *+XAR6[0],#46         ; |282| 
        MOVB      XAR7,#0
L32:    
        SETC      SXM
        MOV       AL,AR7
        MOV       ACC,AL                ; |283| 
        ADDL      ACC,XAR4
        MOVL      XAR6,ACC              ; |283| 
        MOV       PL,*+XAR6[AR0]        ; |283| 
        MOV       AL,PL                 ; |283| 
        BF        L33,EQ                ; |283| 
        ; branch occurs ; |283| 
        MOV       AL,AR7
        ADD       AL,T                  ; |283| 
        MOV       ACC,AL                ; |283| 
        ADDL      ACC,XAR2
        MOVL      XAR6,ACC              ; |283| 
        MOV       AL,AR7                ; |283| 
        ADDB      AL,#1                 ; |283| 
        MOV       *+XAR6[0],P           ; |283| 
        MOVZ      AR7,AL                ; |283| 
        CMPB      AL,#3                 ; |283| 
        BF        L32,LT                ; |283| 
        ; branch occurs ; |283| 
L33:    
        MOVL      XAR5,XAR2             ; |285| 
        MOV       AL,AR7
        ADD       AL,T                  ; |285| 
        MOV       ACC,AL                ; |285| 
        ADDL      ACC,XAR5
        MOVL      XAR4,ACC              ; |285| 
        MOV       *+XAR4[0],#0          ; |285| 
        MOVL      XAR2,*--SP
        LRETR
        ; return occurs



	.sect	".text"

;***************************************************************
;* FNAME: _chkdsk_checkclusters         FR SIZE:  16           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  8 Auto,  6 SOE     *
;***************************************************************

_chkdsk_checkclusters:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#10
        MOVL      XAR1,ACC              ; |311| 
        MOVL      XAR0,#1136            ; |317| 
        MOV       AL,*-SP[21]           ; |311| 
        MOVL      XAR3,XAR4             ; |311| 
        MOV       *-SP[7],AL            ; |311| 
        MOVL      *-SP[6],XAR5          ; |311| 
        MOV       *-SP[8],#0            ; |313| 
        MOVB      ACC,#2
        MOVL      XAR2,*-SP[20]         ; |311| 
        MOVL      *-SP[10],ACC          ; |316| 
        MOVB      ACC,#3
        CMPL      ACC,*+XAR3[AR0]       ; |317| 
        BF        L34,NEQ               ; |317| 
        ; branch occurs ; |317| 
        MOVL      *-SP[10],ACC          ; |317| 
L34:    
        MOVB      ACC,#0
        MOVL      *+XAR2[0],ACC         ; |318| 
        MOVL      ACC,*-SP[10]          ; |318| 
        CMPL      ACC,XAR1              ; |320| 
        BF        L44,HI                ; |320| 
        ; branch occurs ; |320| 
        MOV       AL,#65520
        MOV       AH,#4095
        CMPL      ACC,XAR1              ; |320| 
        BF        L44,EQ                ; |320| 
        ; branch occurs ; |320| 
        MOV       AL,#65527
        CMPL      ACC,XAR1              ; |320| 
        BF        L44,EQ                ; |320| 
        ; branch occurs ; |320| 
        MOVB      ACC,#0
        MOVL      XAR6,ACC              ; |322| 
        BF        L36,UNC
        ; branch occurs
L35:    
        MOV       AL,#65520
        CMPL      ACC,*-SP[4]           ; |358| 
        BF        L45,LOS               ; |358| 
        ; branch occurs ; |358| 
        MOVL      XAR6,XAR1             ; |360| 
        MOVL      XAR1,*-SP[4]          ; |361| 
L36:    
        MOVL      XAR7,*-SP[6]
        CLRC      SXM
        MOVL      ACC,XAR1
        SFR       ACC,3
        ADDL      ACC,XAR7
        MOVL      XAR4,ACC
        MOVL      ACC,XAR1
        ANDB      AL,#0x07
        MOV       T,AL
        MOVB      AL,#1
        LSL       AL,T
        AND       AL,*+XAR4[0]
        BF        L39,NEQ
        ; branch occurs
        MOVL      XAR6,*-SP[6]          ; |337| 
        MOVL      ACC,XAR1              ; |337| 
        SFR       ACC,3                 ; |337| 
        MOVZ      AR5,SP                ; |339| 
        ADDL      ACC,XAR6
        MOVL      XAR4,ACC              ; |337| 
        MOVL      ACC,XAR1              ; |337| 
        ANDB      AL,#0x07              ; |337| 
        MOV       T,AL                  ; |337| 
        MOVB      AH,#1                 ; |337| 
        LSL       AH,T                  ; |337| 
        OR        *+XAR4[0],AH          ; |337| 
        MOVL      XAR4,XAR3             ; |339| 
        SUBB      XAR5,#4               ; |339| 
        MOVL      ACC,XAR1              ; |339| 
        LCR       #__f_getclustervalue  ; |339| 
        ; call occurs [#__f_getclustervalue] ; |339| 
        CMPB      AL,#0                 ; |339| 
        BF        L42,NEQ               ; |339| 
        ; branch occurs ; |339| 
        MOVL      ACC,*+XAR2[0]         ; |344| 
        ADDB      ACC,#1                ; |344| 
        MOVL      *+XAR2[0],ACC         ; |344| 
        MOVL      ACC,*-SP[10]          ; |344| 
        CMPL      ACC,*-SP[4]           ; |346| 
        BF        L37,HI                ; |346| 
        ; branch occurs ; |346| 
        MOV       AL,#65520
        MOV       AH,#4095
        CMPL      ACC,*-SP[4]           ; |346| 
        BF        L37,EQ                ; |346| 
        ; branch occurs ; |346| 
        MOV       AL,#65527
        CMPL      ACC,*-SP[4]           ; |346| 
        BF        L35,NEQ               ; |346| 
        ; branch occurs ; |346| 
L37:    
        MOV       AL,*-SP[7]
        ANDB      AL,#1                 ; |350| 
        BF        L38,EQ                ; |350| 
        ; branch occurs ; |350| 
        MOVB      AL,#100               ; |355| 
        BF        L46,UNC               ; |355| 
        ; branch occurs ; |355| 
L38:    
        MOV       AL,#65528
        MOV       AH,#4095
        MOVL      XAR4,XAR3             ; |352| 
        MOVL      *-SP[2],ACC           ; |352| 
        MOVL      ACC,XAR1              ; |352| 
        LCR       #__f_setclustervalue  ; |352| 
        ; call occurs [#__f_setclustervalue] ; |352| 
        CMPB      AL,#0                 ; |352| 
        BF        L42,NEQ               ; |352| 
        ; branch occurs ; |352| 
        BF        L43,UNC               ; |352| 
        ; branch occurs ; |352| 
L39:    
        MOVL      ACC,XAR6
        BF        L40,EQ                ; |328| 
        ; branch occurs ; |328| 
        MOV       AL,*-SP[7]
        ANDB      AL,#1                 ; |328| 
        BF        L41,EQ                ; |328| 
        ; branch occurs ; |328| 
L40:    
        MOVB      AL,#101               ; |334| 
        BF        L46,UNC               ; |334| 
        ; branch occurs ; |334| 
L41:    
        MOV       AL,#65528
        MOV       AH,#4095
        MOVL      XAR4,XAR3             ; |331| 
        MOVL      *-SP[2],ACC           ; |331| 
        MOVL      ACC,XAR6              ; |331| 
        LCR       #__f_setclustervalue  ; |331| 
        ; call occurs [#__f_setclustervalue] ; |331| 
        CMPB      AL,#0                 ; |331| 
        BF        L43,EQ                ; |331| 
        ; branch occurs ; |331| 
L42:    
        MOVB      AL,#52                ; |331| 
        BF        L46,UNC               ; |331| 
        ; branch occurs ; |331| 
L43:    
        MOVB      AL,#102               ; |332| 
        BF        L46,UNC               ; |332| 
        ; branch occurs ; |332| 
L44:    
        MOV       *-SP[8],#100          ; |364| 
L45:    
        MOV       AL,*-SP[8]
L46:    
        SUBB      SP,#10                ; |366| 
        MOVL      XAR3,*--SP            ; |366| 
        MOVL      XAR2,*--SP            ; |366| 
        MOVL      XAR1,*--SP            ; |366| 
        LRETR
        ; return occurs



	.sect	".text"

;***************************************************************
;* FNAME: _chkdsk_removechain           FR SIZE:  14           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  5 Auto,  6 SOE     *
;***************************************************************

_chkdsk_removechain:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#8
        MOVL      XAR1,ACC              ; |388| 
        MOV       AL,*-SP[19]           ; |388| 
        MOVL      XAR2,*-SP[18]         ; |388| 
        MOVL      XAR3,XAR4             ; |388| 
        MOV       *-SP[7],AL            ; |388| 
        MOVL      *-SP[6],XAR5          ; |388| 
        MOVL      ACC,XAR2              ; |388| 
        BF        L52,EQ                ; |390| 
        ; branch occurs ; |390| 
L47:    
        MOVZ      AR5,SP                ; |392| 
        MOVL      XAR4,XAR3             ; |392| 
        MOVL      ACC,XAR1              ; |392| 
        SUBB      XAR5,#4               ; |392| 
        LCR       #__f_getclustervalue  ; |392| 
        ; call occurs [#__f_getclustervalue] ; |392| 
        SUBB      XAR2,#1               ; |397| 
        CMPB      AL,#0                 ; |392| 
        BF        L48,NEQ               ; |392| 
        ; branch occurs ; |392| 
        MOVB      ACC,#0
        MOVL      XAR4,XAR3             ; |393| 
        MOVL      *-SP[2],ACC           ; |393| 
        MOVL      ACC,XAR1              ; |393| 
        LCR       #__f_setclustervalue  ; |393| 
        ; call occurs [#__f_setclustervalue] ; |393| 
        CMPB      AL,#0                 ; |393| 
        BF        L49,EQ                ; |393| 
        ; branch occurs ; |393| 
L48:    
        MOVB      AL,#52                ; |393| 
        BF        L53,UNC               ; |393| 
        ; branch occurs ; |393| 
L49:    
        MOV       AL,*-SP[7]
        BF        L50,NEQ               ; |394| 
        ; branch occurs ; |394| 
        MOVL      XAR6,*-SP[6]          ; |395| 
        CLRC      SXM
        MOVL      ACC,XAR1              ; |395| 
        SFR       ACC,3                 ; |395| 
        ADDL      ACC,XAR6
        MOVL      XAR4,ACC              ; |395| 
        MOVL      ACC,XAR1              ; |395| 
        ANDB      AL,#0x07              ; |395| 
        MOV       T,AL                  ; |395| 
        MOVB      AL,#1                 ; |395| 
        LSL       AL,T                  ; |395| 
        NOT       AL                    ; |395| 
        AND       *+XAR4[0],AL          ; |395| 
        BF        L51,UNC               ; |395| 
        ; branch occurs ; |395| 
L50:    
        MOVL      XAR6,*-SP[6]          ; |394| 
        CLRC      SXM
        MOVL      ACC,XAR1              ; |394| 
        SFR       ACC,3                 ; |394| 
        ADDL      ACC,XAR6
        MOVL      XAR4,ACC              ; |394| 
        MOVL      ACC,XAR1              ; |394| 
        ANDB      AL,#0x07              ; |394| 
        MOV       T,AL                  ; |394| 
        MOVB      AH,#1                 ; |394| 
        LSL       AH,T                  ; |394| 
        OR        *+XAR4[0],AH          ; |394| 
L51:    
        MOVL      ACC,XAR2              ; |396| 
        MOVL      XAR1,*-SP[4]          ; |396| 
        BF        L47,NEQ               ; |397| 
        ; branch occurs ; |397| 
L52:    
        MOVB      AL,#0
L53:    
        SUBB      SP,#8                 ; |398| 
        MOVL      XAR3,*--SP            ; |398| 
        MOVL      XAR2,*--SP            ; |398| 
        MOVL      XAR1,*--SP            ; |398| 
        LRETR
        ; return occurs



	.sect	".text"

;***************************************************************
;* FNAME: _chkdsk_getnextentry          FR SIZE:  16           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            1 Parameter,  9 Auto,  6 SOE     *
;***************************************************************

_chkdsk_getnextentry:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#10
        MOVL      XAR1,XAR5             ; |424| 
        MOVL      ACC,*-SP[26]          ; |424| 
        MOVL      *-SP[6],ACC           ; |424| 
        MOVL      XAR3,XAR4             ; |424| 
        MOVL      ACC,*-SP[24]          ; |424| 
        MOVL      XAR2,*-SP[20]         ; |424| 
        MOVL      *-SP[8],ACC           ; |424| 
        MOVL      ACC,*-SP[22]          ; |424| 
        MOVL      *-SP[10],ACC          ; |424| 
        MOV       AL,#65520
        MOV       AH,#4095
        CMPL      ACC,*+XAR1[0]         ; |425| 
        BF        L66,LOS               ; |425| 
        ; branch occurs ; |425| 
L54:    
        MOVB      XAR0,#8               ; |427| 
        MOVL      ACC,*+XAR1[AR0]       ; |427| 
        CMPL      ACC,*+XAR1[6]         ; |427| 
        BF        L63,LOS               ; |427| 
        ; branch occurs ; |427| 
L55:    
        MOVL      XAR4,*-SP[8]          ; |429| 
        MOVL      ACC,*+XAR1[6]         ; |429| 
        CMPL      ACC,*+XAR4[0]         ; |429| 
        BF        L57,EQ                ; |429| 
        ; branch occurs ; |429| 
        MOVL      XAR5,XAR2             ; |431| 
        MOVL      XAR4,XAR3             ; |431| 
        MOV       *-SP[1],#1            ; |431| 
        MOVL      ACC,*+XAR1[6]         ; |431| 
        LCR       #__f_readsector       ; |431| 
        ; call occurs [#__f_readsector] ; |431| 
        CMPB      AL,#0                 ; |431| 
        BF        L56,EQ                ; |431| 
        ; branch occurs ; |431| 
        MOVB      AL,#51                ; |431| 
        BF        L67,UNC               ; |431| 
        ; branch occurs ; |431| 
L56:    
        MOVL      XAR4,*-SP[8]          ; |432| 
        MOVL      ACC,*+XAR1[6]         ; |432| 
        MOVL      *+XAR4[0],ACC         ; |432| 
L57:    
        MOVB      ACC,#16
        MOVB      XAR0,#10              ; |435| 
        CMPL      ACC,*+XAR1[AR0]       ; |435| 
        BF        L60,LOS               ; |435| 
        ; branch occurs ; |435| 
L58:    
        MOVL      ACC,*+XAR1[AR0]       ; |439| 
        LSL       ACC,5                 ; |439| 
        ADDL      ACC,XAR2
        MOVL      XAR4,ACC              ; |439| 
        MOV       AL,*+XAR4[0]          ; |439| 
        BF        L59,EQ                ; |439| 
        ; branch occurs ; |439| 
        CMPB      AL,#229               ; |439| 
        BF        L59,EQ                ; |439| 
        ; branch occurs ; |439| 
        MOVL      XAR5,*-SP[10]
        ADDB      XAR1,#10              ; |442| 
        MOVL      *+XAR5[0],XAR4        ; |441| 
        MOVL      ACC,*+XAR1[0]         ; |442| 
        ADDB      ACC,#1                ; |442| 
        MOVL      *+XAR1[0],ACC         ; |442| 
        MOVB      AL,#0
        BF        L67,UNC               ; |443| 
        ; branch occurs ; |443| 
L59:    
        MOVL      XAR4,XAR1             ; |445| 
        ADDB      XAR4,#10              ; |445| 
        MOVL      ACC,*+XAR4[0]         ; |445| 
        ADDB      ACC,#1                ; |445| 
        MOVL      *+XAR4[0],ACC         ; |445| 
        MOVB      ACC,#16
        CMPL      ACC,*+XAR1[AR0]       ; |445| 
        BF        L58,HI                ; |445| 
        ; branch occurs ; |445| 
L60:    
        MOVL      XAR4,*-SP[6]
        MOV       AL,*+XAR4[0]          ; |447| 
        BF        L62,EQ                ; |447| 
        ; branch occurs ; |447| 
        MOVL      XAR5,XAR2             ; |449| 
        MOVL      XAR4,XAR3             ; |449| 
        MOV       *-SP[1],#1            ; |449| 
        MOVL      ACC,*+XAR1[6]         ; |449| 
        LCR       #__f_writesector      ; |449| 
        ; call occurs [#__f_writesector] ; |449| 
        CMPB      AL,#0                 ; |449| 
        BF        L61,EQ                ; |449| 
        ; branch occurs ; |449| 
        MOVB      AL,#50                ; |449| 
        BF        L67,UNC               ; |449| 
        ; branch occurs ; |449| 
L61:    
        MOVL      XAR4,*-SP[6]
        MOV       *+XAR4[0],#0          ; |450| 
L62:    
        MOVB      ACC,#0
        MOVB      XAR0,#10              ; |453| 
        MOVL      *+XAR1[AR0],ACC       ; |453| 
        MOVL      ACC,*+XAR1[6]         ; |454| 
        MOVB      XAR0,#8               ; |454| 
        ADDB      ACC,#1                ; |454| 
        MOVL      *+XAR1[6],ACC         ; |454| 
        MOVL      ACC,*+XAR1[AR0]       ; |454| 
        CMPL      ACC,*+XAR1[6]         ; |454| 
        BF        L55,HI                ; |454| 
        ; branch occurs ; |454| 
L63:    
        MOVL      ACC,*+XAR1[0]         ; |456| 
        BF        L64,NEQ               ; |456| 
        ; branch occurs ; |456| 
        MOVL      XAR0,#1136            ; |458| 
        MOVB      ACC,#3
        CMPL      ACC,*+XAR3[AR0]       ; |458| 
        BF        L66,NEQ               ; |458| 
        ; branch occurs ; |458| 
        MOVB      XAR0,#32              ; |458| 
        MOVL      ACC,*+XAR3[AR0]       ; |458| 
        MOVL      *+XAR1[0],ACC         ; |458| 
L64:    
        MOVZ      AR5,SP                ; |464| 
        MOVL      XAR4,XAR3             ; |464| 
        MOVL      ACC,*+XAR1[0]         ; |464| 
        SUBB      XAR5,#4               ; |464| 
        LCR       #__f_getclustervalue  ; |464| 
        ; call occurs [#__f_getclustervalue] ; |464| 
        CMPB      AL,#0                 ; |464| 
        BF        L65,EQ                ; |464| 
        ; branch occurs ; |464| 
        MOVB      AL,#52                ; |464| 
        BF        L67,UNC               ; |464| 
        ; branch occurs ; |464| 
L65:    
        MOV       AL,#65520
        MOV       AH,#4095
        CMPL      ACC,*-SP[4]           ; |465| 
        BF        L66,LOS               ; |465| 
        ; branch occurs ; |465| 
        MOVL      XAR5,XAR1             ; |466| 
        MOVL      XAR4,XAR3             ; |466| 
        MOVL      ACC,*-SP[4]           ; |466| 
        LCR       #__f_clustertopos     ; |466| 
        ; call occurs [#__f_clustertopos] ; |466| 
        MOV       AL,#65520
        MOV       AH,#4095
        CMPL      ACC,*+XAR1[0]         ; |466| 
        BF        L54,HI                ; |466| 
        ; branch occurs ; |466| 
L66:    
        MOVB      AL,#106               ; |470| 
L67:    
        SUBB      SP,#10                ; |470| 
        MOVL      XAR3,*--SP            ; |470| 
        MOVL      XAR2,*--SP            ; |470| 
        MOVL      XAR1,*--SP            ; |470| 
        LRETR
        ; return occurs



	.sect	".text"

;***************************************************************
;* FNAME: _chkdsk_lost_changebackdir    FR SIZE: 1082           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            8 Parameter, 1067 Auto,  6 SOE     *
;***************************************************************

_chkdsk_lost_changebackdir:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOVZ      AR2,SP
        ADD       SP,#1076
        MOVB      ACC,#0
        MOVZ      AR5,SP                ; |544| 
        SUBB      ACC,#1
        MOVL      *-SP[12],ACC          ; |542| 
        MOVB      ACC,#0
        ADD       AR5,#-1050            ; |544| 
        MOVL      XAR3,XAR4             ; |530| 
        MOV       *-SP[9],#0            ; |543| 
        LCR       #__f_clustertopos     ; |544| 
        ; call occurs [#__f_clustertopos] ; |544| 
        SUBB      FP,#8
        BF        L71,UNC               ; |545| 
        ; branch occurs ; |545| 
L68:    
        MOVL      XAR4,*-SP[14]         ; |547| 
        MOVB      XAR0,#11              ; |547| 
        TBIT      *+XAR4[AR0],#3        ; |547| 
        BF        L71,TC                ; |547| 
        ; branch occurs ; |547| 
        MOVL      XAR4,*-SP[14]         ; |547| 
        TBIT      *+XAR4[AR0],#4        ; |547| 
        BF        L71,NTC               ; |547| 
        ; branch occurs ; |547| 
        MOVZ      AR5,SP                ; |550| 
        MOVL      XAR4,*-SP[14]         ; |550| 
        ADD       AR5,#-1075            ; |550| 
        LCR       #_chkdsk_getname      ; |550| 
        ; call occurs [#_chkdsk_getname] ; |550| 
        MOVL      XAR5,*-SP[14]         ; |551| 
        MOVL      XAR4,XAR3             ; |551| 
        LCR       #__f_getdecluster     ; |551| 
        ; call occurs [#__f_getdecluster] ; |551| 
        MOVZ      AR4,SP                ; |553| 
        ADD       AR4,#-1075            ; |553| 
        MOVL      XAR1,ACC              ; |551| 
        LCR       #_chkdsk_checklostname ; |553| 
        ; call occurs [#_chkdsk_checklostname] ; |553| 
        CMPB      AL,#0                 ; |553| 
        BF        L71,NEQ               ; |553| 
        ; branch occurs ; |553| 
        MOVZ      AR5,SP                ; |555| 
        MOVL      XAR4,XAR3             ; |555| 
        MOVL      ACC,XAR1              ; |555| 
        ADD       AR5,#-1062            ; |555| 
        LCR       #__f_clustertopos     ; |555| 
        ; call occurs [#__f_clustertopos] ; |555| 
        MOVZ      AR5,SP                ; |556| 
        MOVL      XAR0,#28              ; |556| 
        ADD       AR5,#-1038            ; |556| 
        MOVL      XAR4,XAR3             ; |556| 
        MOV       *-SP[1],#1            ; |556| 
        MOVL      ACC,*+FP[AR0]         ; |556| 
        LCR       #__f_readsector       ; |556| 
        ; call occurs [#__f_readsector] ; |556| 
        CMPB      AL,#0                 ; |556| 
        BF        L69,EQ                ; |556| 
        ; branch occurs ; |556| 
        MOVB      AL,#51                ; |556| 
        BF        L72,UNC               ; |556| 
        ; branch occurs ; |556| 
L69:    
        MOVZ      AR5,SP                ; |557| 
        MOVL      XAR4,XAR3             ; |557| 
        ADD       AR5,#-1006            ; |557| 
        LCR       #__f_getdecluster     ; |557| 
        ; call occurs [#__f_getdecluster] ; |557| 
        TEST      ACC                   ; |557| 
        BF        L71,EQ                ; |557| 
        ; branch occurs ; |557| 
        MOVZ      AR5,SP                ; |561| 
        MOVL      XAR4,XAR3             ; |561| 
        ADD       AR5,#-1006            ; |561| 
        MOVB      ACC,#0
        LCR       #__f_setdecluster     ; |561| 
        ; call occurs [#__f_setdecluster] ; |561| 
        MOVZ      AR5,SP                ; |562| 
        MOVL      XAR0,#28              ; |562| 
        ADD       AR5,#-1038            ; |562| 
        MOVL      XAR4,XAR3             ; |562| 
        MOV       *-SP[1],#1            ; |562| 
        MOVL      ACC,*+FP[AR0]         ; |562| 
        LCR       #__f_writesector      ; |562| 
        ; call occurs [#__f_writesector] ; |562| 
        CMPB      AL,#0                 ; |562| 
        BF        L70,EQ                ; |562| 
        ; branch occurs ; |562| 
        MOVB      AL,#50                ; |562| 
        BF        L72,UNC               ; |562| 
        ; branch occurs ; |562| 
L70:    
        MOVZ      AR4,SP                ; |564| 
        MOVB      AL,#13                ; |564| 
        ADD       AR4,#-1075            ; |564| 
        LCR       #_chkdsk_putlog       ; |564| 
        ; call occurs [#_chkdsk_putlog] ; |564| 
L71:    
        MOVZ      AR4,SP                ; |568| 
        ADD       AR4,#-526             ; |568| 
        MOVL      *-SP[2],XAR4          ; |568| 
        MOVZ      AR4,SP                ; |568| 
        SUBB      XAR4,#14              ; |568| 
        MOVL      *-SP[4],XAR4          ; |568| 
        MOVZ      AR4,SP                ; |568| 
        MOVZ      AR5,SP                ; |568| 
        SUBB      XAR4,#12              ; |568| 
        MOVL      *-SP[6],XAR4          ; |568| 
        MOVZ      AR4,SP                ; |568| 
        ADD       AR5,#-1050            ; |568| 
        SUBB      XAR4,#9               ; |568| 
        MOVL      *-SP[8],XAR4          ; |568| 
        MOVL      XAR4,XAR3             ; |568| 
        LCR       #_chkdsk_getnextentry ; |568| 
        ; call occurs [#_chkdsk_getnextentry] ; |568| 
        CMPB      AL,#0                 ; |568| 
        BF        L68,EQ                ; |568| 
        ; branch occurs ; |568| 
        CMPB      AL,#106               ; |570| 
        BF        L72,NEQ               ; |570| 
        ; branch occurs ; |570| 
        MOVB      AL,#0
L72:    
        ADD       SP,#-1076             ; |571| 
        MOVL      XAR3,*--SP            ; |571| 
        MOVL      XAR2,*--SP            ; |571| 
        MOVL      XAR1,*--SP            ; |571| 
        LRETR
        ; return occurs



	.sect	".text"

;***************************************************************
;* FNAME: _chkdsk_lost_checkcluster     FR SIZE: 560           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            8 Parameter, 546 Auto,  6 SOE     *
;***************************************************************

_chkdsk_lost_checkcluster:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOVZ      AR2,SP
        ADD       SP,#554
        MOVL      XAR0,#8               ; |591| 
        SUBB      FP,#8
        MOVL      *+FP[AR0],ACC         ; |591| 
        MOVZ      AR5,SP                ; |605| 
        MOVB      ACC,#0
        SUBB      ACC,#1
        MOVL      *-SP[12],ACC          ; |603| 
        MOVB      ACC,#0
        ADD       AR5,#-538             ; |605| 
        MOVL      XAR1,XAR4             ; |591| 
        MOV       *-SP[9],#0            ; |604| 
        LCR       #__f_clustertopos     ; |605| 
        ; call occurs [#__f_clustertopos] ; |605| 
L73:    
        MOVZ      AR4,SP                ; |625| 
        ADD       AR4,#-526             ; |625| 
        MOVL      *-SP[2],XAR4          ; |625| 
        MOVZ      AR4,SP                ; |625| 
        SUBB      XAR4,#14              ; |625| 
        MOVL      *-SP[4],XAR4          ; |625| 
        MOVZ      AR4,SP                ; |625| 
        MOVZ      AR5,SP                ; |625| 
        SUBB      XAR4,#12              ; |625| 
        MOVL      *-SP[6],XAR4          ; |625| 
        MOVZ      AR4,SP                ; |625| 
        ADD       AR5,#-538             ; |625| 
        SUBB      XAR4,#9               ; |625| 
        MOVL      *-SP[8],XAR4          ; |625| 
        MOVL      XAR4,XAR1             ; |625| 
        LCR       #_chkdsk_getnextentry ; |625| 
        ; call occurs [#_chkdsk_getnextentry] ; |625| 
        CMPB      AL,#0                 ; |625| 
        BF        L75,NEQ               ; |625| 
        ; branch occurs ; |625| 
        MOVL      XAR4,*-SP[14]         ; |608| 
        MOVB      XAR0,#11              ; |608| 
        TBIT      *+XAR4[AR0],#3        ; |608| 
        BF        L73,TC                ; |608| 
        ; branch occurs ; |608| 
        MOVZ      AR5,SP                ; |610| 
        MOVL      XAR4,*-SP[14]         ; |610| 
        ADD       AR5,#-551             ; |610| 
        LCR       #_chkdsk_getname      ; |610| 
        ; call occurs [#_chkdsk_getname] ; |610| 
        MOVL      XAR5,*-SP[14]         ; |611| 
        MOVL      XAR4,XAR1             ; |611| 
        LCR       #__f_getdecluster     ; |611| 
        ; call occurs [#__f_getdecluster] ; |611| 
        MOVZ      AR4,SP                ; |613| 
        ADD       AR4,#-551             ; |613| 
        MOVL      XAR3,ACC              ; |611| 
        LCR       #_chkdsk_checklostname ; |613| 
        ; call occurs [#_chkdsk_checklostname] ; |613| 
        CMPB      AL,#0                 ; |613| 
        BF        L73,NEQ               ; |613| 
        ; branch occurs ; |613| 
        MOVL      XAR0,#8
        MOVL      ACC,*+FP[AR0]
        CMPL      ACC,XAR3              ; |613| 
        BF        L73,NEQ               ; |613| 
        ; branch occurs ; |613| 
        MOVL      XAR4,*-SP[14]         ; |617| 
        MOVZ      AR5,SP                ; |618| 
        MOVL      XAR0,#30              ; |618| 
        MOV       *+XAR4[0],#229        ; |617| 
        ADD       AR5,#-526             ; |618| 
        MOVL      XAR4,XAR1             ; |618| 
        MOV       *-SP[1],#1            ; |618| 
        MOVL      ACC,*+FP[AR0]         ; |618| 
        LCR       #__f_writesector      ; |618| 
        ; call occurs [#__f_writesector] ; |618| 
        CMPB      AL,#0                 ; |618| 
        BF        L74,EQ                ; |618| 
        ; branch occurs ; |618| 
        MOVB      AL,#50                ; |618| 
        BF        L75,UNC               ; |618| 
        ; branch occurs ; |618| 
L74:    
        MOVZ      AR4,SP                ; |620| 
        MOVB      AL,#3                 ; |620| 
        ADD       AR4,#-551             ; |620| 
        LCR       #_chkdsk_putlog       ; |620| 
        ; call occurs [#_chkdsk_putlog] ; |620| 
        MOVB      AL,#0
L75:    
        ADD       SP,#-554              ; |622| 
        MOVL      XAR3,*--SP            ; |622| 
        MOVL      XAR2,*--SP            ; |622| 
        MOVL      XAR1,*--SP            ; |622| 
        LRETR
        ; return occurs



	.sect	".text"

;***************************************************************
;* FNAME: _chkdsk_lost_movelostdir      FR SIZE: 1162           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            8 Parameter, 1148 Auto,  6 SOE     *
;***************************************************************

_chkdsk_lost_movelostdir:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOVZ      AR2,SP
        ADD       SP,#1156
        MOVB      ACC,#0
        MOVL      XAR0,#12              ; |648| 
        SUBB      FP,#10
        MOVL      XAR1,XAR5             ; |648| 
        SUBB      ACC,#1
        MOVL      *+FP[AR0],XAR4        ; |648| 
        MOVL      XAR4,XAR5             ; |648| 
        MOVZ      AR5,SP                ; |664| 
        MOVL      XAR3,*+FP[0]          ; |648| 
        MOVL      *-SP[12],ACC          ; |662| 
        MOVB      ACC,#0
        ADD       AR5,#-1082            ; |664| 
        MOV       *-SP[13],#0           ; |663| 
        LCR       #__f_clustertopos     ; |664| 
        ; call occurs [#__f_clustertopos] ; |664| 
L76:    
        MOVZ      AR4,SP                ; |718| 
        ADD       AR4,#-525             ; |718| 
        MOVL      *-SP[2],XAR4          ; |718| 
        MOVZ      AR4,SP                ; |718| 
        SUBB      XAR4,#10              ; |718| 
        MOVL      *-SP[4],XAR4          ; |718| 
        MOVZ      AR4,SP                ; |718| 
        MOVZ      AR5,SP                ; |718| 
        SUBB      XAR4,#12              ; |718| 
        MOVL      *-SP[6],XAR4          ; |718| 
        MOVZ      AR4,SP                ; |718| 
        ADD       AR5,#-1082            ; |718| 
        SUBB      XAR4,#13              ; |718| 
        MOVL      *-SP[8],XAR4          ; |718| 
        MOVL      XAR4,XAR1             ; |718| 
        LCR       #_chkdsk_getnextentry ; |718| 
        ; call occurs [#_chkdsk_getnextentry] ; |718| 
        CMPB      AL,#0                 ; |718| 
        BF        L82,NEQ               ; |718| 
        ; branch occurs ; |718| 
        MOVL      XAR4,*-SP[10]         ; |667| 
        MOVB      XAR0,#11              ; |667| 
        TBIT      *+XAR4[AR0],#3        ; |667| 
        BF        L76,TC                ; |667| 
        ; branch occurs ; |667| 
        MOVL      XAR4,*-SP[10]         ; |667| 
        TBIT      *+XAR4[AR0],#4        ; |667| 
        BF        L76,NTC               ; |667| 
        ; branch occurs ; |667| 
        MOVZ      AR5,SP                ; |670| 
        MOVL      XAR4,*-SP[10]         ; |670| 
        ADD       AR5,#-1107            ; |670| 
        LCR       #_chkdsk_getname      ; |670| 
        ; call occurs [#_chkdsk_getname] ; |670| 
        MOVL      XAR5,*-SP[10]         ; |671| 
        MOVL      XAR4,XAR1             ; |671| 
        LCR       #__f_getdecluster     ; |671| 
        ; call occurs [#__f_getdecluster] ; |671| 
        MOVZ      AR4,SP                ; |673| 
        MOVL      XAR0,#10              ; |671| 
        ADD       AR4,#-1107            ; |673| 
        MOVL      *+FP[AR0],ACC         ; |671| 
        LCR       #_chkdsk_checklostname ; |673| 
        ; call occurs [#_chkdsk_checklostname] ; |673| 
        CMPB      AL,#0                 ; |673| 
        BF        L76,NEQ               ; |673| 
        ; branch occurs ; |673| 
        MOVB      XAR6,#0
L77:    
        MOVZ      AR4,SP                ; |675| 
        MOVB      AL,#1                 ; |675| 
        SETC      SXM
        ADD       AL,AR6                ; |675| 
        ADD       AR4,#-1107            ; |675| 
        MOVZ      AR7,AL                ; |675| 
        MOV       AL,AR6                ; |675| 
        MOV       ACC,AL                ; |675| 
        ADDL      XAR4,ACC
        MOVW      DP,#_full_path
        MOV       PL,*+XAR4[0]          ; |675| 
        MOVL      XAR4,@_full_path      ; |675| 
        MOV       ACC,AR7               ; |675| 
        ADDL      XAR4,ACC
        MOV       AL,PL                 ; |675| 
        CMP       AL,*+XAR4[0]          ; |675| 
        BF        L78,NEQ               ; |675| 
        ; branch occurs ; |675| 
        MOVZ      AR6,AR7               ; |675| 
        MOV       AL,AR6                ; |675| 
        CMPB      AL,#8                 ; |675| 
        BF        L77,LT                ; |675| 
        ; branch occurs ; |675| 
L78:    
        MOV       AL,AR6
        CMPB      AL,#8                 ; |677| 
        BF        L76,GEQ               ; |677| 
        ; branch occurs ; |677| 
        MOVL      XAR0,#10              ; |679| 
        MOVZ      AR5,SP                ; |679| 
        MOVL      XAR4,XAR1             ; |679| 
        MOVL      ACC,*+FP[AR0]         ; |679| 
        ADD       AR5,#-1094            ; |679| 
        LCR       #__f_clustertopos     ; |679| 
        ; call occurs [#__f_clustertopos] ; |679| 
        MOVZ      AR5,SP                ; |680| 
        MOVL      XAR0,#78              ; |680| 
        ADD       AR5,#-1037            ; |680| 
        MOVL      XAR4,XAR1             ; |680| 
        MOV       *-SP[1],#1            ; |680| 
        MOVL      ACC,*+FP[AR0]         ; |680| 
        LCR       #__f_readsector       ; |680| 
        ; call occurs [#__f_readsector] ; |680| 
        CMPB      AL,#0                 ; |680| 
        BF        L79,EQ                ; |680| 
        ; branch occurs ; |680| 
        MOVB      AL,#51                ; |680| 
        BF        L84,UNC               ; |680| 
        ; branch occurs ; |680| 
L79:    
        MOVZ      AR5,SP                ; |681| 
        MOVL      XAR4,XAR1             ; |681| 
        ADD       AR5,#-1005            ; |681| 
        LCR       #__f_getdecluster     ; |681| 
        ; call occurs [#__f_getdecluster] ; |681| 
        MOVL      XAR0,#10              ; |681| 
        MOVL      *+FP[AR0],ACC         ; |681| 
        MOVL      XAR0,#10              ; |681| 
        MOVL      ACC,*+FP[AR0]         ; |681| 
        CMPL      ACC,*+XAR3[0]         ; |682| 
        BF        L76,NEQ               ; |682| 
        ; branch occurs ; |682| 
        MOVZ      AR4,SP                ; |688| 
        MOVL      XAR5,*-SP[10]         ; |688| 
        ADD       AR4,#-1069            ; |688| 
        MOVB      ACC,#32
        LCR       #___memcpy_ff         ; |688| 
        ; call occurs [#___memcpy_ff] ; |688| 
        MOVZ      AR5,SP                ; |690| 
        MOVL      XAR4,*-SP[10]         ; |689| 
        MOVL      XAR0,#90              ; |690| 
        ADD       AR5,#-525             ; |690| 
        MOV       *+XAR4[0],#229        ; |689| 
        MOVL      XAR4,XAR1             ; |690| 
        MOV       *-SP[1],#1            ; |690| 
        MOVL      ACC,*+FP[AR0]         ; |690| 
        LCR       #__f_writesector      ; |690| 
        ; call occurs [#__f_writesector] ; |690| 
        CMPB      AL,#0                 ; |690| 
        BF        L80,NEQ               ; |690| 
        ; branch occurs ; |690| 
        MOVZ      AR4,SP                ; |692| 
        MOVZ      AR5,SP                ; |692| 
        ADD       AR4,#-1152            ; |692| 
        ADD       AR5,#-1107            ; |692| 
        LCR       #_strcpy              ; |692| 
        ; call occurs [#_strcpy] ; |692| 
        MOVZ      AR4,SP                ; |693| 
        ADD       AR4,#-1152            ; |693| 
        MOVL      XAR0,#12              ; |693| 
        MOVW      DP,#_full_path
        MOVL      XAR5,@_full_path      ; |693| 
        MOVL      *-SP[2],XAR4          ; |693| 
        MOVL      XAR4,*+FP[AR0]        ; |693| 
        LCR       #_chkdsk_getlostname  ; |693| 
        ; call occurs [#_chkdsk_getlostname] ; |693| 
        CMPB      AL,#0                 ; |693| 
        BF        L81,NEQ               ; |693| 
        ; branch occurs ; |693| 
        MOVZ      AR4,SP                ; |699| 
        MOVZ      AR5,SP                ; |699| 
        ADD       AR4,#-1118            ; |699| 
        ADD       AR5,#-1152            ; |699| 
        MOVB      ACC,#8
        LCR       #___memcpy_ff         ; |699| 
        ; call occurs [#___memcpy_ff] ; |699| 
        MOVZ      AR4,SP                ; |700| 
        ADD       AR4,#-1110            ; |700| 
        MOVB      XAR5,#32              ; |700| 
        MOVB      ACC,#3
        LCR       #_memset              ; |700| 
        ; call occurs [#_memset] ; |700| 
        MOVZ      AR4,SP                ; |702| 
        MOVL      *-SP[2],XAR3          ; |702| 
        MOVZ      AR5,SP                ; |702| 
        SUBB      XAR4,#10              ; |702| 
        MOVL      *-SP[4],XAR4          ; |702| 
        MOVL      XAR4,XAR1             ; |702| 
        ADD       AR5,#-1139            ; |702| 
        LCR       #__f_addentry         ; |702| 
        ; call occurs [#__f_addentry] ; |702| 
        CMPB      AL,#0                 ; |702| 
        BF        L80,NEQ               ; |702| 
        ; branch occurs ; |702| 
        MOVZ      AR5,SP                ; |704| 
        MOVL      XAR4,*-SP[10]         ; |704| 
        ADD       AR5,#-1058            ; |704| 
        MOVB      ACC,#21
        ADDB      XAR4,#11              ; |704| 
        LCR       #___memcpy_ff         ; |704| 
        ; call occurs [#___memcpy_ff] ; |704| 
        MOVL      XAR4,XAR1             ; |705| 
        LCR       #__f_writedirsector   ; |705| 
        ; call occurs [#__f_writedirsector] ; |705| 
        CMPB      AL,#0                 ; |705| 
        BF        L81,EQ                ; |705| 
        ; branch occurs ; |705| 
L80:    
        MOVB      AL,#50                ; |705| 
        BF        L84,UNC               ; |705| 
        ; branch occurs ; |705| 
L81:    
        MOVW      DP,#_full_path
        MOVL      XAR4,@_full_path      ; |711| 
        MOVB      AL,#1                 ; |711| 
        LCR       #_chkdsk_putlog       ; |711| 
        ; call occurs [#_chkdsk_putlog] ; |711| 
        MOVZ      AR4,SP                ; |712| 
        MOVB      AL,#12                ; |712| 
        ADD       AR4,#-1107            ; |712| 
        LCR       #_chkdsk_putlog       ; |712| 
        ; call occurs [#_chkdsk_putlog] ; |712| 
        BF        L83,UNC               ; |714| 
        ; branch occurs ; |714| 
L82:    
        CMPB      AL,#106               ; |720| 
        BF        L84,NEQ               ; |720| 
        ; branch occurs ; |720| 
L83:    
        MOVB      AL,#0
L84:    
        ADD       SP,#-1156             ; |721| 
        MOVL      XAR3,*--SP            ; |721| 
        MOVL      XAR2,*--SP            ; |721| 
        MOVL      XAR1,*--SP            ; |721| 
        LRETR
        ; return occurs



	.sect	".text"

;***************************************************************
;* FNAME: _chkdsk_files                 FR SIZE: 138           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            8 Parameter, 124 Auto,  6 SOE     *
;***************************************************************

_chkdsk_files:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOVZ      AR2,SP
        ADD       SP,#132
        MOVL      XAR0,#31              ; |750| 
        SUBB      FP,#13
        MOV       *+FP[AR0],AH          ; |750| 
        MOVL      XAR0,#30              ; |750| 
        MOV       *+FP[AR0],AL          ; |750| 
        MOVL      XAR0,#27              ; |750| 
        MOVL      *+FP[AR0],XAR5        ; |750| 
        MOVL      XAR0,#25              ; |750| 
        MOVL      *+FP[AR0],XAR4        ; |750| 
        MOVL      XAR0,#24              ; |750| 
        MOV       AL,*+FP[0]            ; |750| 
        MOV       *+FP[AR0],AL          ; |750| 
        MOVL      XAR0,#21              ; |750| 
        MOVL      ACC,*+FP[1]           ; |750| 
        MOVL      *+FP[AR0],ACC         ; |750| 
        MOVL      XAR0,#20              ; |760| 
        MOVL      XAR3,*+FP[3]          ; |750| 
        MOV       *+FP[AR0],#0          ; |760| 
        MOVL      XAR0,#24              ; |769| 
        MOVW      DP,#_chkdsk_log_dir
        MOVB      ACC,#0
        MOVL      *-SP[10],ACC          ; |755| 
        MOV       AL,*+FP[AR0]          ; |769| 
        CMPB      AL,#64                ; |772| 
        MOV       @_chkdsk_log_dir,#0   ; |769| 
        BF        L85,LEQ               ; |772| 
        ; branch occurs ; |772| 
        MOVB      AL,#15                ; |774| 
        MOVB      XAR4,#0
        LCR       #_chkdsk_putlog       ; |774| 
        ; call occurs [#_chkdsk_putlog] ; |774| 
        MOVB      AL,#106               ; |775| 
        BF        L116,UNC              ; |775| 
        ; branch occurs ; |775| 
L85:    
        MOVZ      AR4,SP                ; |778| 
        MOVL      XAR5,XAR3             ; |778| 
        MOVB      ACC,#12
        SUBB      XAR4,#36              ; |778| 
        LCR       #___memcpy_ff         ; |778| 
        ; call occurs [#___memcpy_ff] ; |778| 
        MOV       AL,#65520
        MOV       AH,#4095
        CMPL      ACC,*+XAR3[0]         ; |780| 
        BF        L115,LOS              ; |780| 
        ; branch occurs ; |780| 
L86:    
        MOVB      XAR0,#8               ; |782| 
        MOVL      ACC,*+XAR3[AR0]       ; |782| 
        CMPL      ACC,*+XAR3[6]         ; |782| 
        BF        L112,LOS              ; |782| 
        ; branch occurs ; |782| 
L87:    
        MOVL      XAR0,#25              ; |784| 
        MOV       *-SP[1],#1            ; |784| 
        MOVL      XAR4,*+FP[AR0]        ; |784| 
        MOVL      XAR5,#_de             ; |784| 
        MOVL      ACC,*+XAR3[6]         ; |784| 
        LCR       #__f_readsector       ; |784| 
        ; call occurs [#__f_readsector] ; |784| 
        CMPB      AL,#0                 ; |784| 
        BF        L101,NEQ              ; |784| 
        ; branch occurs ; |784| 
        MOVB      ACC,#16
        MOVB      XAR0,#10              ; |786| 
        CMPL      ACC,*+XAR3[AR0]       ; |786| 
        BF        L108,LOS              ; |786| 
        ; branch occurs ; |786| 
L88:    
        MOVL      ACC,*+XAR3[AR0]       ; |788| 
        MOVL      XAR0,#13              ; |788| 
        MOVL      XAR4,#_de             ; |788| 
        LSL       ACC,5                 ; |788| 
        ADDL      XAR4,ACC
        MOVL      *+FP[AR0],XAR4        ; |788| 
        MOVL      XAR0,#13              ; |788| 
        MOVL      XAR4,*+FP[AR0]        ; |788| 
        MOV       AL,*+XAR4[0]          ; |790| 
        BF        L107,EQ               ; |790| 
        ; branch occurs ; |790| 
        CMPB      AL,#229               ; |790| 
        BF        L107,EQ               ; |790| 
        ; branch occurs ; |790| 
        MOVL      XAR0,#13              ; |790| 
        MOVL      XAR4,*+FP[AR0]        ; |790| 
        MOVB      XAR1,#11              ; |790| 
        TBIT      *+XAR4[AR1],#3        ; |790| 
        BF        L107,TC               ; |790| 
        ; branch occurs ; |790| 
        MOVL      XAR0,#13
        MOVZ      AR5,SP                ; |792| 
        MOVL      XAR4,*+FP[AR0]
        SUBB      XAR5,#49              ; |792| 
        LCR       #_chkdsk_getname      ; |792| 
        ; call occurs [#_chkdsk_getname] ; |792| 
        MOVL      XAR0,#25              ; |792| 
        MOVL      XAR4,*+FP[AR0]        ; |792| 
        MOVL      XAR0,#13              ; |793| 
        MOVL      XAR5,*+FP[AR0]        ; |793| 
        LCR       #__f_getdecluster     ; |793| 
        ; call occurs [#__f_getdecluster] ; |793| 
        MOVL      XAR1,#13              ; |795| 
        MOVL      XAR0,#17              ; |793| 
        MOVL      XAR4,*+FP[AR1]        ; |795| 
        MOVL      *+FP[AR0],ACC         ; |793| 
        MOVB      XAR0,#11              ; |795| 
        TBIT      *+XAR4[AR0],#4        ; |795| 
        BF        L89,NTC               ; |795| 
        ; branch occurs ; |795| 
        MOV       AL,*-SP[49]           ; |795| 
        CMPB      AL,#46                ; |795| 
        BF        L95,EQ                ; |795| 
        ; branch occurs ; |795| 
L89:    
        MOVL      XAR0,#30
        MOV       AL,*+FP[AR0]
        BF        L90,EQ                ; |797| 
        ; branch occurs ; |797| 
        MOVL      XAR0,#25
        MOVL      XAR4,*+FP[AR0]
        MOVL      XAR0,#17              ; |799| 
        MOVL      ACC,*+FP[AR0]         ; |799| 
        LCR       #_chkdsk_lost_checkcluster ; |799| 
        ; call occurs [#_chkdsk_lost_checkcluster] ; |799| 
        MOVL      XAR0,#16              ; |799| 
        CMPB      AL,#0                 ; |799| 
        MOV       *+FP[AR0],AL          ; |799| 
        BF        L107,EQ               ; |799| 
        ; branch occurs ; |799| 
        CMPB      AL,#106               ; |801| 
        BF        L116,NEQ              ; |801| 
        ; branch occurs ; |801| 
L90:    
        MOVZ      AR4,SP                ; |805| 
        MOVL      XAR0,#31              ; |805| 
        SUBB      XAR4,#10              ; |805| 
        MOVL      *-SP[2],XAR4          ; |805| 
        MOV       AL,*+FP[AR0]          ; |805| 
        MOVL      XAR0,#25              ; |805| 
        MOV       *-SP[3],AL            ; |805| 
        MOVL      XAR4,*+FP[AR0]        ; |805| 
        MOVL      XAR0,#27              ; |805| 
        MOVL      XAR5,*+FP[AR0]        ; |805| 
        MOVL      XAR0,#17              ; |805| 
        MOVL      ACC,*+FP[AR0]         ; |805| 
        LCR       #_chkdsk_checkclusters ; |805| 
        ; call occurs [#_chkdsk_checkclusters] ; |805| 
        MOVL      XAR0,#16              ; |805| 
        CMPB      AL,#100               ; |805| 
        MOV       *+FP[AR0],AL          ; |805| 
        BF        L92,EQ                ; |805| 
        ; branch occurs ; |805| 
        CMPB      AL,#101               ; |818| 
        BF        L91,EQ                ; |818| 
        ; branch occurs ; |818| 
        CMPB      AL,#102               ; |828| 
        BF        L94,NEQ               ; |828| 
        ; branch occurs ; |828| 
        MOVZ      AR4,SP                ; |831| 
        MOVB      AL,#11                ; |831| 
        SUBB      XAR4,#49              ; |831| 
        LCR       #_chkdsk_putlog       ; |831| 
        ; call occurs [#_chkdsk_putlog] ; |831| 
        BF        L95,UNC               ; |833| 
        ; branch occurs ; |833| 
L91:    
        MOVL      XAR0,#30              ; |821| 
        MOVL      ACC,*-SP[10]          ; |821| 
        MOVL      *-SP[2],ACC           ; |821| 
        MOV       AL,*+FP[AR0]          ; |821| 
        MOVL      XAR0,#25              ; |821| 
        MOV       *-SP[3],AL            ; |821| 
        MOVL      XAR4,*+FP[AR0]        ; |821| 
        MOVL      XAR0,#27              ; |821| 
        MOVL      XAR5,*+FP[AR0]        ; |821| 
        MOVL      XAR0,#17              ; |821| 
        MOVL      ACC,*+FP[AR0]         ; |821| 
        LCR       #_chkdsk_removechain  ; |821| 
        ; call occurs [#_chkdsk_removechain] ; |821| 
        MOVB      AL,#7                 ; |825| 
        BF        L93,UNC               ; |827| 
        ; branch occurs ; |827| 
L92:    
        MOVL      XAR0,#30              ; |811| 
        MOVL      ACC,*-SP[10]          ; |811| 
        MOVL      *-SP[2],ACC           ; |811| 
        MOV       AL,*+FP[AR0]          ; |811| 
        MOVL      XAR0,#25              ; |811| 
        MOV       *-SP[3],AL            ; |811| 
        MOVL      XAR4,*+FP[AR0]        ; |811| 
        MOVL      XAR0,#27              ; |811| 
        MOVL      XAR5,*+FP[AR0]        ; |811| 
        MOVL      XAR0,#17              ; |811| 
        MOVL      ACC,*+FP[AR0]         ; |811| 
        LCR       #_chkdsk_removechain  ; |811| 
        ; call occurs [#_chkdsk_removechain] ; |811| 
        MOVB      AL,#4                 ; |815| 
L93:    
        MOVL      XAR0,#13              ; |812| 
        MOVL      XAR4,*+FP[AR0]        ; |812| 
        MOV       *+XAR4[0],#229        ; |812| 
        MOVZ      AR4,SP                ; |815| 
        MOVL      XAR0,#20              ; |813| 
        SUBB      XAR4,#49              ; |815| 
        MOV       *+FP[AR0],#1          ; |813| 
        LCR       #_chkdsk_putlog       ; |815| 
        ; call occurs [#_chkdsk_putlog] ; |815| 
L94:    
        MOVL      XAR0,#16
        MOV       AL,*+FP[AR0]
        BF        L107,NEQ              ; |817| 
        ; branch occurs ; |817| 
L95:    
        MOVL      XAR0,#13              ; |841| 
        MOVL      XAR4,*+FP[AR0]        ; |841| 
        MOVB      XAR1,#11              ; |841| 
        TBIT      *+XAR4[AR1],#4        ; |841| 
        BF        L96,TC                ; |841| 
        ; branch occurs ; |841| 
        MOVL      XAR0,#25              ; |919| 
        MOVL      XAR4,*+FP[AR0]        ; |919| 
        MOVL      XAR0,#16              ; |919| 
        MOVB      XAR1,#14              ; |919| 
        MOV       ACC,*+XAR4[AR1] << #9 ; |919| 
        MOV       *+FP[AR0],AL          ; |919| 
        MOVL      XAR0,#13              ; |920| 
        MOVL      XAR1,*+FP[AR0]        ; |920| 
        MOVU      ACC,AL
        ADDB      XAR1,#28              ; |921| 
        MOVL      XT,ACC                ; |920| 
        MOVL      XAR4,XAR1             ; |921| 
        IMPYXUL   P,XT,*-SP[10]         ; |920| 
        MOVL      *-SP[10],P            ; |920| 
        LCR       #__f_getlong          ; |921| 
        ; call occurs [#__f_getlong] ; |921| 
        MOVL      XAR6,ACC              ; |921| 
        MOVL      XAR0,#16              ; |922| 
        MOVL      ACC,*-SP[10]          ; |922| 
        SUBL      ACC,XAR6
        MOVL      XAR7,ACC              ; |922| 
        MOV       AL,*+FP[AR0]          ; |922| 
        MOVU      ACC,AL
        CMPL      ACC,XAR7              ; |922| 
        BF        L107,HI               ; |922| 
        ; branch occurs ; |922| 
        MOVL      XAR4,#FSL21           ; |927| 
        MOVL      *-SP[2],XAR4          ; |927| 
        MOVZ      AR4,SP                ; |927| 
        SUBB      XAR4,#49              ; |927| 
        MOVL      *-SP[4],XAR4          ; |927| 
        MOVZ      AR4,SP                ; |927| 
        MOVL      *-SP[6],XAR6          ; |927| 
        MOVL      ACC,*-SP[10]          ; |927| 
        SUBB      XAR4,#113             ; |927| 
        MOVL      *-SP[8],ACC           ; |927| 
        LCR       #_sprintf             ; |927| 
        ; call occurs [#_sprintf] ; |927| 
        MOVZ      AR4,SP                ; |928| 
        MOVB      AL,#5                 ; |928| 
        SUBB      XAR4,#113             ; |928| 
        LCR       #_chkdsk_putlog       ; |928| 
        ; call occurs [#_chkdsk_putlog] ; |928| 
        MOVL      XAR4,XAR1             ; |930| 
        MOVL      ACC,*-SP[10]          ; |930| 
        LCR       #__f_setlong          ; |930| 
        ; call occurs [#__f_setlong] ; |930| 
        BF        L106,UNC              ; |931| 
        ; branch occurs ; |931| 
L96:    
        MOV       AL,*-SP[49]           ; |843| 
        CMPB      AL,#46                ; |843| 
        BF        L102,EQ               ; |843| 
        ; branch occurs ; |843| 
        MOVL      XAR0,#20
        MOV       AL,*+FP[AR0]
        BF        L97,EQ                ; |884| 
        ; branch occurs ; |884| 
        MOVL      XAR0,#25              ; |886| 
        MOV       *-SP[1],#1            ; |886| 
        MOVL      XAR4,*+FP[AR0]        ; |886| 
        MOVL      XAR5,#_de             ; |886| 
        MOVL      ACC,*+XAR3[6]         ; |886| 
        LCR       #__f_writesector      ; |886| 
        ; call occurs [#__f_writesector] ; |886| 
        CMPB      AL,#0                 ; |886| 
        BF        L109,NEQ              ; |886| 
        ; branch occurs ; |886| 
        MOVL      XAR0,#20              ; |887| 
        MOV       *+FP[AR0],#0          ; |887| 
L97:    
        MOVL      XAR0,#25
        MOVZ      AR5,SP                ; |890| 
        MOVL      XAR4,*+FP[AR0]
        MOVL      XAR0,#17              ; |890| 
        SUBB      XAR5,#24              ; |890| 
        MOVL      ACC,*+FP[AR0]         ; |890| 
        LCR       #__f_clustertopos     ; |890| 
        ; call occurs [#__f_clustertopos] ; |890| 
        MOVW      DP,#_chkdsk_dir
        MOVL      XAR4,@_chkdsk_dir     ; |892| 
        LCR       #_strlen              ; |892| 
        ; call occurs [#_strlen] ; |892| 
        MOVZ      AR4,SP                ; |893| 
        MOVZ      AR1,AL                ; |892| 
        SUBB      XAR4,#49              ; |893| 
        LCR       #_strlen              ; |893| 
        ; call occurs [#_strlen] ; |893| 
        MOVL      XAR6,ACC              ; |893| 
        SETC      SXM
        MOV       ACC,AR1               ; |893| 
        ADDL      ACC,XAR6
        ADDB      ACC,#2                ; |893| 
        MOVB      XAR6,#19
        CMPL      ACC,XAR6              ; |893| 
        BF        L99,HIS               ; |893| 
        ; branch occurs ; |893| 
        MOVL      XAR0,#21
        MOVL      ACC,*+FP[AR0]
        BF        L98,EQ                ; |895| 
        ; branch occurs ; |895| 
        MOVW      DP,#_chkdsk_dir
        MOVL      XAR4,@_chkdsk_dir     ; |895| 
        MOVL      XAR5,#FSL22           ; |895| 
        LCR       #_strcat              ; |895| 
        ; call occurs [#_strcat] ; |895| 
L98:    
        MOVZ      AR5,SP                ; |896| 
        SUBB      XAR5,#49              ; |896| 
        BF        L100,UNC              ; |897| 
        ; branch occurs ; |897| 
L99:    
        MOVL      XAR5,#FSL23           ; |900| 
L100:    
        MOVW      DP,#_chkdsk_dir
        MOVL      XAR4,@_chkdsk_dir     ; |900| 
        LCR       #_strcat              ; |900| 
        ; call occurs [#_strcat] ; |900| 
        MOVZ      AR4,SP                ; |904| 
        SUBB      XAR4,#24              ; |904| 
        MOVL      *-SP[2],XAR4          ; |904| 
        MOVZ      AR4,SP                ; |904| 
        MOVL      XAR0,#24              ; |904| 
        SUBB      XAR4,#36              ; |904| 
        MOVL      *-SP[4],XAR4          ; |904| 
        MOV       AL,*+FP[AR0]          ; |904| 
        MOVL      XAR0,#24              ; |904| 
        ADDB      AL,#1                 ; |904| 
        MOV       *+FP[AR0],AL          ; |904| 
        MOVL      XAR0,#25              ; |904| 
        MOV       *-SP[5],AL            ; |904| 
        MOVL      XAR4,*+FP[AR0]        ; |904| 
        MOVL      XAR0,#27              ; |904| 
        MOVL      XAR5,*+FP[AR0]        ; |904| 
        MOVL      XAR0,#30              ; |904| 
        MOV       AL,*+FP[AR0]          ; |904| 
        MOVL      XAR0,#31              ; |904| 
        MOV       AH,*+FP[AR0]          ; |904| 
        LCR       #_chkdsk_files        ; |904| 
        ; call occurs [#_chkdsk_files] ; |904| 
        MOVL      XAR0,#16              ; |904| 
        MOV       *+FP[AR0],AL          ; |904| 
        MOVL      XAR0,#24              ; |904| 
        MOV       AL,*+FP[AR0]          ; |904| 
        MOVL      XAR0,#24              ; |905| 
        ADDB      AL,#-1
        MOV       *+FP[AR0],AL          ; |905| 
        MOVL      XAR0,#16              ; |905| 
        MOV       AL,*+FP[AR0]          ; |905| 
        BF        L116,NEQ              ; |906| 
        ; branch occurs ; |906| 
        MOVW      DP,#_chkdsk_dir
        MOVL      XAR4,@_chkdsk_dir     ; |909| 
        SETC      SXM
        MOV       ACC,AR1               ; |909| 
        ADDL      XAR4,ACC
        MOVL      XAR0,#25              ; |912| 
        MOVW      DP,#_chkdsk_log_dir
        MOV       *+XAR4[0],#0          ; |909| 
        MOV       *-SP[1],#1            ; |912| 
        MOV       @_chkdsk_log_dir,#0   ; |910| 
        MOVL      XAR4,*+FP[AR0]        ; |912| 
        MOVL      XAR5,#_de             ; |912| 
        MOVL      ACC,*+XAR3[6]         ; |912| 
        LCR       #__f_readsector       ; |912| 
        ; call occurs [#__f_readsector] ; |912| 
        CMPB      AL,#0                 ; |912| 
        BF        L107,EQ               ; |912| 
        ; branch occurs ; |912| 
L101:    
        MOVB      AL,#51                ; |912| 
        BF        L116,UNC              ; |912| 
        ; branch occurs ; |912| 
L102:    
        MOVL      XAR0,#21
        MOVL      ACC,*+FP[AR0]
        BF        L105,EQ               ; |845| 
        ; branch occurs ; |845| 
        MOV       AL,*-SP[48]           ; |847| 
        CMPB      AL,#46                ; |847| 
        BF        L103,EQ               ; |847| 
        ; branch occurs ; |847| 
        MOVL      XAR0,#17
        MOVL      ACC,*+FP[AR0]
        CMPL      ACC,*+XAR3[0]         ; |861| 
        BF        L107,EQ               ; |861| 
        ; branch occurs ; |861| 
        MOVZ      AR4,SP                ; |865| 
        MOVB      AL,#6                 ; |865| 
        SUBB      XAR4,#49              ; |865| 
        LCR       #_chkdsk_putlog       ; |865| 
        ; call occurs [#_chkdsk_putlog] ; |865| 
        MOVL      ACC,*+XAR3[0]         ; |867| 
        BF        L104,UNC              ; |868| 
        ; branch occurs ; |868| 
L103:    
        MOVL      XAR0,#17
        MOVL      ACC,*+FP[AR0]
        MOVL      XAR0,#21
        MOVL      XAR4,*+FP[AR0]
        CMPL      ACC,*+XAR4[0]         ; |849| 
        BF        L107,EQ               ; |849| 
        ; branch occurs ; |849| 
        MOVZ      AR4,SP                ; |853| 
        MOVB      AL,#6                 ; |853| 
        SUBB      XAR4,#49              ; |853| 
        LCR       #_chkdsk_putlog       ; |853| 
        ; call occurs [#_chkdsk_putlog] ; |853| 
        MOVL      XAR0,#21              ; |853| 
        MOVL      XAR4,*+FP[AR0]        ; |853| 
        MOVL      ACC,*+XAR4[0]         ; |855| 
L104:    
        MOVL      XAR0,#25              ; |855| 
        MOVL      XAR4,*+FP[AR0]        ; |855| 
        MOVL      XAR0,#13              ; |855| 
        MOVL      XAR5,*+FP[AR0]        ; |855| 
        LCR       #__f_setdecluster     ; |855| 
        ; call occurs [#__f_setdecluster] ; |855| 
        BF        L106,UNC              ; |856| 
        ; branch occurs ; |856| 
L105:    
        MOVZ      AR4,SP                ; |876| 
        MOVB      AL,#2                 ; |876| 
        SUBB      XAR4,#49              ; |876| 
        LCR       #_chkdsk_putlog       ; |876| 
        ; call occurs [#_chkdsk_putlog] ; |876| 
        MOVL      XAR0,#13              ; |878| 
        MOVL      XAR4,*+FP[AR0]        ; |878| 
        MOV       *+XAR4[0],#229        ; |878| 
L106:    
        MOVL      XAR0,#20              ; |879| 
        MOV       *+FP[AR0],#1          ; |879| 
L107:    
        MOVL      XAR4,XAR3             ; |935| 
        MOVB      XAR0,#10              ; |935| 
        ADDB      XAR4,#10              ; |935| 
        MOVL      ACC,*+XAR4[0]         ; |935| 
        ADDB      ACC,#1                ; |935| 
        MOVL      *+XAR4[0],ACC         ; |935| 
        MOVB      ACC,#16
        CMPL      ACC,*+XAR3[AR0]       ; |935| 
        BF        L88,HI                ; |935| 
        ; branch occurs ; |935| 
L108:    
        MOVL      XAR0,#20
        MOV       AL,*+FP[AR0]
        BF        L111,EQ               ; |937| 
        ; branch occurs ; |937| 
        MOVL      XAR0,#25              ; |939| 
        MOV       *-SP[1],#1            ; |939| 
        MOVL      XAR4,*+FP[AR0]        ; |939| 
        MOVL      XAR5,#_de             ; |939| 
        MOVL      ACC,*+XAR3[6]         ; |939| 
        LCR       #__f_writesector      ; |939| 
        ; call occurs [#__f_writesector] ; |939| 
        CMPB      AL,#0                 ; |939| 
        BF        L110,EQ               ; |939| 
        ; branch occurs ; |939| 
L109:    
        MOVB      AL,#50                ; |939| 
        BF        L116,UNC              ; |939| 
        ; branch occurs ; |939| 
L110:    
        MOVL      XAR0,#20              ; |940| 
        MOV       *+FP[AR0],#0          ; |940| 
L111:    
        MOVB      ACC,#0
        MOVB      XAR0,#10              ; |943| 
        MOVL      *+XAR3[AR0],ACC       ; |943| 
        MOVL      ACC,*+XAR3[6]         ; |944| 
        MOVB      XAR0,#8               ; |944| 
        ADDB      ACC,#1                ; |944| 
        MOVL      *+XAR3[6],ACC         ; |944| 
        MOVL      ACC,*+XAR3[AR0]       ; |944| 
        CMPL      ACC,*+XAR3[6]         ; |944| 
        BF        L87,HI                ; |944| 
        ; branch occurs ; |944| 
L112:    
        MOVL      ACC,*+XAR3[0]         ; |947| 
        BF        L113,NEQ              ; |947| 
        ; branch occurs ; |947| 
        MOVL      XAR1,#25              ; |949| 
        MOVL      XAR0,#1136            ; |949| 
        MOVL      XAR4,*+FP[AR1]        ; |949| 
        MOVB      ACC,#3
        CMPL      ACC,*+XAR4[AR0]       ; |949| 
        BF        L115,NEQ              ; |949| 
        ; branch occurs ; |949| 
        MOVL      XAR1,#25              ; |949| 
        MOVL      XAR4,*+FP[AR1]        ; |949| 
        MOVB      XAR0,#32              ; |949| 
        MOVL      ACC,*+XAR4[AR0]       ; |949| 
        MOVL      *+XAR3[0],ACC         ; |949| 
L113:    
        MOVL      XAR0,#25              ; |955| 
        MOVZ      AR5,SP                ; |955| 
        MOVL      XAR4,*+FP[AR0]        ; |955| 
        MOVL      ACC,*+XAR3[0]         ; |955| 
        SUBB      XAR5,#12              ; |955| 
        LCR       #__f_getclustervalue  ; |955| 
        ; call occurs [#__f_getclustervalue] ; |955| 
        CMPB      AL,#0                 ; |955| 
        BF        L114,EQ               ; |955| 
        ; branch occurs ; |955| 
        MOVB      AL,#52                ; |955| 
        BF        L116,UNC              ; |955| 
        ; branch occurs ; |955| 
L114:    
        MOV       AL,#65520
        MOV       AH,#4095
        CMPL      ACC,*-SP[12]          ; |956| 
        BF        L115,LOS              ; |956| 
        ; branch occurs ; |956| 
        MOVL      XAR0,#25
        MOVL      XAR5,XAR3             ; |957| 
        MOVL      XAR4,*+FP[AR0]
        MOVL      ACC,*-SP[12]          ; |957| 
        LCR       #__f_clustertopos     ; |957| 
        ; call occurs [#__f_clustertopos] ; |957| 
        MOV       AL,#65520
        MOV       AH,#4095
        CMPL      ACC,*+XAR3[0]         ; |957| 
        BF        L86,HI                ; |957| 
        ; branch occurs ; |957| 
L115:    
        MOVB      AL,#0
L116:    
        ADD       SP,#-132              ; |961| 
        MOVL      XAR3,*--SP            ; |961| 
        MOVL      XAR2,*--SP            ; |961| 
        MOVL      XAR1,*--SP            ; |961| 
        LRETR
        ; return occurs



	.sect	".text"

;***************************************************************
;* FNAME: _chkdsk_findlostdir           FR SIZE:  50           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 41 Auto,  6 SOE     *
;***************************************************************

_chkdsk_findlostdir:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#44
        MOVL      XAR1,XAR4             ; |1161| 
        MOVL      *-SP[36],ACC          ; |1161| 
        MOV       AL,*-SP[54]           ; |1161| 
        MOV       *-SP[37],AL           ; |1161| 
        MOVL      XAR3,XAR5             ; |1161| 
        MOV       AL,*-SP[53]           ; |1161| 
        MOV       *-SP[38],AL           ; |1161| 
        MOV       AL,*-SP[37]           ; |1161| 
        CMPB      AL,#64                ; |1169| 
        BF        L117,LEQ              ; |1169| 
        ; branch occurs ; |1169| 
        MOVB      AL,#15                ; |1171| 
        BF        L121,UNC              ; |1172| 
        ; branch occurs ; |1172| 
L117:    
        MOVZ      AR5,SP                ; |1175| 
        MOVL      XAR4,XAR3             ; |1175| 
        MOVB      ACC,#0
        SUBB      XAR5,#22              ; |1175| 
        LCR       #__f_clustertopos     ; |1175| 
        ; call occurs [#__f_clustertopos] ; |1175| 
        MOV       AL,*-SP[38]           ; |1175| 
        BF        L118,NEQ              ; |1176| 
        ; branch occurs ; |1176| 
        MOVL      ACC,*-SP[36]
        BF        L119,NEQ              ; |1183| 
        ; branch occurs ; |1183| 
        BF        L128,UNC              ; |1183| 
        ; branch occurs ; |1183| 
L118:    
        MOVL      ACC,*-SP[36]
        BF        L119,NEQ              ; |1176| 
        ; branch occurs ; |1176| 
        MOVZ      AR4,SP                ; |1178| 
        MOVL      XAR5,#FSL24           ; |1178| 
        SUBB      XAR4,#10              ; |1178| 
        LCR       #_strcpy              ; |1178| 
        ; call occurs [#_strcpy] ; |1178| 
        MOVL      ACC,*-SP[36]          ; |1178| 
        ADDB      ACC,#1                ; |1179| 
        MOVL      *-SP[36],ACC          ; |1179| 
        BF        L120,UNC              ; |1180| 
        ; branch occurs ; |1180| 
L119:    
        MOVZ      AR4,SP                ; |1184| 
        MOVL      XAR5,#FSL25           ; |1184| 
        SUBB      XAR4,#10              ; |1184| 
        LCR       #_strcpy              ; |1184| 
        ; call occurs [#_strcpy] ; |1184| 
L120:    
        MOVB      ACC,#82
        LCR       #_malloc              ; |1188| 
        ; call occurs [#_malloc] ; |1188| 
        MOVL      *-SP[40],XAR4         ; |1188| 
        MOVL      ACC,*-SP[40]          ; |1188| 
        BF        L122,NEQ              ; |1188| 
        ; branch occurs ; |1188| 
        MOVB      AL,#16                ; |1191| 
L121:    
        MOVB      XAR4,#0
        LCR       #_chkdsk_putlog       ; |1191| 
        ; call occurs [#_chkdsk_putlog] ; |1191| 
        BF        L136,UNC              ; |1192| 
        ; branch occurs ; |1192| 
L122:    
        MOVZ      AR5,SP                ; |1195| 
        MOVL      ACC,*-SP[40]
        MOVL      XAR4,XAR1             ; |1195| 
        MOVL      *-SP[2],ACC           ; |1195| 
        SUBB      XAR5,#10              ; |1195| 
        LCR       #_fn_findfirst        ; |1195| 
        ; call occurs [#_fn_findfirst] ; |1195| 
        CMPB      AL,#0                 ; |1195| 
        BF        L135,NEQ              ; |1195| 
        ; branch occurs ; |1195| 
L123:    
        MOVL      XAR4,*-SP[40]         ; |1198| 
        MOVB      XAR0,#31              ; |1198| 
        TBIT      *+XAR4[AR0],#4        ; |1198| 
        BF        L134,NTC              ; |1198| 
        ; branch occurs ; |1198| 
        MOVL      ACC,*-SP[40]
        MOVL      *-SP[42],ACC          ; |1200| 
        MOVL      XAR4,*-SP[42]         ; |1200| 
        MOV       AL,*+XAR4[0]          ; |1200| 
        CMPB      AL,#46                ; |1200| 
        BF        L134,EQ               ; |1200| 
        ; branch occurs ; |1200| 
        MOVW      DP,#_full_path
        MOVL      XAR4,@_full_path      ; |1202| 
        LCR       #_strlen              ; |1202| 
        ; call occurs [#_strlen] ; |1202| 
        MOVL      XAR4,*-SP[42]         ; |1202| 
        MOVZ      AR2,AL                ; |1202| 
        LCR       #_strlen              ; |1203| 
        ; call occurs [#_strlen] ; |1203| 
        MOVL      XAR6,ACC              ; |1203| 
        SETC      SXM
        MOV       ACC,AR2               ; |1203| 
        ADDL      ACC,XAR6
        ADDB      ACC,#2                ; |1203| 
        MOVB      XAR6,#19
        CMPL      ACC,XAR6              ; |1203| 
        BF        L125,HIS              ; |1203| 
        ; branch occurs ; |1203| 
        MOVW      DP,#_full_path
        MOVL      XAR4,@_full_path      ; |1205| 
        MOV       AL,*+XAR4[1]          ; |1205| 
        BF        L124,EQ               ; |1205| 
        ; branch occurs ; |1205| 
        MOVL      XAR5,#FSL22           ; |1205| 
        LCR       #_strcat              ; |1205| 
        ; call occurs [#_strcat] ; |1205| 
L124:    
        MOVL      XAR5,*-SP[40]         ; |1206| 
        BF        L126,UNC              ; |1207| 
        ; branch occurs ; |1207| 
L125:    
        MOVL      XAR5,#FSL23           ; |1210| 
L126:    
        MOVW      DP,#_full_path
        MOVL      XAR4,@_full_path      ; |1210| 
        LCR       #_strcat              ; |1210| 
        ; call occurs [#_strcat] ; |1210| 
        MOV       AL,*-SP[38]
        BF        L129,NEQ              ; |1207| 
        ; branch occurs ; |1207| 
        MOVL      XAR4,*-SP[40]         ; |1242| 
        MOVL      ACC,*-SP[36]          ; |1242| 
        MOVB      XAR0,#34              ; |1242| 
        CMPL      ACC,*+XAR4[AR0]       ; |1242| 
        BF        L127,EQ               ; |1242| 
        ; branch occurs ; |1242| 
        MOVL      XAR5,*-SP[40]         ; |1244| 
        MOVL      XAR4,XAR1             ; |1244| 
        LCR       #_fn_chdir            ; |1244| 
        ; call occurs [#_fn_chdir] ; |1244| 
        MOVW      DP,#_dirlevel
        MOV       AL,*-SP[38]           ; |1245| 
        INC       *-SP[37]              ; |1247| 
        INC       @_dirlevel            ; |1245| 
        MOV       *-SP[1],AL            ; |1247| 
        MOVL      XAR5,XAR3             ; |1247| 
        MOVL      XAR4,XAR1             ; |1247| 
        MOV       AL,*-SP[37]           ; |1247| 
        MOV       *-SP[2],AL            ; |1247| 
        MOVL      ACC,*-SP[36]          ; |1247| 
        LCR       #_chkdsk_findlostdir  ; |1247| 
        ; call occurs [#_chkdsk_findlostdir] ; |1247| 
        DEC       *-SP[37]              ; |1248| 
        CMPB      AL,#0                 ; |1249| 
        MOV       *-SP[43],AL           ; |1247| 
        BF        L131,NEQ              ; |1249| 
        ; branch occurs ; |1249| 
L127:    
        MOVL      XAR4,*-SP[40]
        LCR       #_free                ; |1251| 
        ; call occurs [#_free] ; |1251| 
L128:    
        MOVB      AL,#0
        BF        L137,UNC              ; |1252| 
        ; branch occurs ; |1252| 
L129:    
        MOVL      XAR4,*-SP[40]         ; |1215| 
        MOVZ      AR5,SP                ; |1215| 
        MOVB      XAR0,#34              ; |1215| 
        MOVL      ACC,*+XAR4[AR0]       ; |1215| 
        MOVL      XAR4,XAR3             ; |1215| 
        SUBB      XAR5,#34              ; |1215| 
        LCR       #__f_clustertopos     ; |1215| 
        ; call occurs [#__f_clustertopos] ; |1215| 
        MOVZ      AR4,SP                ; |1216| 
        SUBB      XAR4,#34              ; |1216| 
        MOVL      XAR5,XAR3             ; |1216| 
        MOVL      *-SP[2],XAR4          ; |1216| 
        MOVL      XAR4,XAR1             ; |1216| 
        LCR       #_chkdsk_lost_movelostdir ; |1216| 
        ; call occurs [#_chkdsk_lost_movelostdir] ; |1216| 
        CMPB      AL,#0                 ; |1216| 
        MOV       *-SP[43],AL           ; |1216| 
        BF        L130,NEQ              ; |1216| 
        ; branch occurs ; |1216| 
        MOVL      XAR5,*-SP[40]         ; |1219| 
        MOVL      XAR4,XAR1             ; |1219| 
        LCR       #_fn_chdir            ; |1219| 
        ; call occurs [#_fn_chdir] ; |1219| 
        MOVW      DP,#_dirlevel
        MOV       AL,*-SP[38]           ; |1220| 
        INC       *-SP[37]              ; |1222| 
        INC       @_dirlevel            ; |1220| 
        MOV       *-SP[1],AL            ; |1222| 
        MOVL      XAR5,XAR3             ; |1222| 
        MOVL      XAR4,XAR1             ; |1222| 
        MOV       AL,*-SP[37]           ; |1222| 
        MOV       *-SP[2],AL            ; |1222| 
        MOVL      ACC,*-SP[36]          ; |1222| 
        LCR       #_chkdsk_findlostdir  ; |1222| 
        ; call occurs [#_chkdsk_findlostdir] ; |1222| 
        DEC       *-SP[37]              ; |1223| 
        CMPB      AL,#0                 ; |1224| 
        MOV       *-SP[43],AL           ; |1222| 
        BF        L131,EQ               ; |1224| 
        ; branch occurs ; |1224| 
        CMPB      AL,#106               ; |1224| 
        BF        L131,EQ               ; |1224| 
        ; branch occurs ; |1224| 
L130:    
        MOVL      XAR4,*-SP[40]
        LCR       #_free                ; |1226| 
        ; call occurs [#_free] ; |1226| 
        MOV       AL,*-SP[43]           ; |1226| 
        BF        L137,UNC              ; |1227| 
        ; branch occurs ; |1227| 
L131:    
        MOVW      DP,#_dirlevel
        DEC       @_dirlevel            ; |1229| 
        BF        L132,NEQ              ; |1229| 
        ; branch occurs ; |1229| 
        MOVL      XAR5,#FSL22           ; |1231| 
        BF        L133,UNC              ; |1231| 
        ; branch occurs ; |1231| 
L132:    
        MOVL      XAR5,#FSL26           ; |1230| 
L133:    
        MOVL      XAR4,XAR1             ; |1230| 
        LCR       #_fn_chdir            ; |1230| 
        ; call occurs [#_fn_chdir] ; |1230| 
        MOVW      DP,#_full_path
        MOVL      XAR4,@_full_path      ; |1232| 
        SETC      SXM
        MOV       ACC,AR2               ; |1232| 
        ADDL      XAR4,ACC
        MOV       *+XAR4[0],#0          ; |1232| 
L134:    
        MOVL      XAR5,*-SP[40]         ; |1267| 
        MOVL      XAR4,XAR1             ; |1267| 
        LCR       #_fn_findnext         ; |1267| 
        ; call occurs [#_fn_findnext] ; |1267| 
        CMPB      AL,#0                 ; |1267| 
        BF        L123,EQ               ; |1267| 
        ; branch occurs ; |1267| 
L135:    
        MOVL      XAR4,*-SP[40]
        LCR       #_free                ; |1270| 
        ; call occurs [#_free] ; |1270| 
L136:    
        MOVB      AL,#106               ; |1271| 
L137:    
        SUBB      SP,#44                ; |1271| 
        MOVL      XAR3,*--SP            ; |1271| 
        MOVL      XAR2,*--SP            ; |1271| 
        MOVL      XAR1,*--SP            ; |1271| 
        LRETR
        ; return occurs



	.sect	".text"

;***************************************************************
;* FNAME: _chkdsk_savelostchain         FR SIZE: 110           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            5 Parameter, 98 Auto,  6 SOE     *
;***************************************************************

_chkdsk_savelostchain:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        MOVZ      AR2,SP
        ADDB      SP,#104
        MOVL      XAR0,#29              ; |1296| 
        SUBB      FP,#13
        MOVL      *+FP[AR0],ACC         ; |1296| 
        MOVL      XAR0,#27              ; |1296| 
        MOVL      *+FP[AR0],XAR4        ; |1296| 
        MOVL      XAR0,#26              ; |1296| 
        MOV       AL,*+FP[0]            ; |1296| 
        MOV       *+FP[AR0],AL          ; |1296| 
        MOVL      XAR0,#23              ; |1296| 
        MOVL      ACC,*+FP[1]           ; |1296| 
        MOVL      *+FP[AR0],ACC         ; |1296| 
        MOVL      XAR0,#21              ; |1296| 
        MOVL      ACC,*+FP[3]           ; |1296| 
        MOVL      *+FP[AR0],ACC         ; |1296| 
        MOVL      XAR0,#20              ; |1306| 
        MOVW      DP,#_full_path
        MOVL      XAR4,@_full_path      ; |1311| 
        MOVW      DP,#_full_path
        MOV       *+FP[AR0],#0          ; |1306| 
        MOV       *+XAR4[0],#47         ; |1311| 
        MOVL      XAR4,@_full_path      ; |1312| 
        MOVL      XAR0,#44              ; |1313| 
        MOV       *+XAR4[1],#0          ; |1312| 
        MOV       *+FP[AR0],#0          ; |1313| 
        MOVL      XAR0,#14              ; |1314| 
        MOVZ      AR4,SP                ; |1316| 
        MOV       *+FP[AR0],#32         ; |1314| 
        MOVL      XAR0,#27              ; |1316| 
        SUBB      XAR4,#73              ; |1316| 
        MOVL      *-SP[2],XAR4          ; |1316| 
        MOVL      XAR4,*+FP[AR0]        ; |1316| 
        MOVL      XAR3,XAR5             ; |1296| 
        MOVL      XAR5,#FSL22           ; |1316| 
        LCR       #_chkdsk_getlostname  ; |1316| 
        ; call occurs [#_chkdsk_getlostname] ; |1316| 
        CMPB      AL,#0                 ; |1316| 
        BF        L147,NEQ              ; |1316| 
        ; branch occurs ; |1316| 
        MOVL      XAR0,#29              ; |1318| 
        MOVZ      AR5,SP                ; |1318| 
        MOVL      XAR4,XAR3             ; |1318| 
        MOVL      ACC,*+FP[AR0]         ; |1318| 
        SUBB      XAR5,#20              ; |1318| 
        LCR       #__f_clustertopos     ; |1318| 
        ; call occurs [#__f_clustertopos] ; |1318| 
        MOVL      XAR0,#17              ; |1319| 
        MOVL      XAR4,#_de             ; |1319| 
        MOVL      *+FP[AR0],XAR4        ; |1319| 
        MOVL      XAR0,#17              ; |1319| 
        MOV       *-SP[1],#1            ; |1319| 
        MOVL      XAR4,XAR3             ; |1319| 
        MOVL      XAR5,*+FP[AR0]        ; |1319| 
        MOVL      ACC,*-SP[14]          ; |1319| 
        LCR       #__f_readsector       ; |1319| 
        ; call occurs [#__f_readsector] ; |1319| 
        CMPB      AL,#0                 ; |1319| 
        BF        L138,EQ               ; |1319| 
        ; branch occurs ; |1319| 
        MOVB      AL,#51                ; |1319| 
        BF        L148,UNC              ; |1319| 
        ; branch occurs ; |1319| 
L138:    
        MOVL      XAR0,#17
        MOVZ      AR5,SP                ; |1321| 
        MOVL      XAR4,*+FP[AR0]
        SUBB      XAR5,#86              ; |1321| 
        LCR       #_chkdsk_getname      ; |1321| 
        ; call occurs [#_chkdsk_getname] ; |1321| 
        MOVL      XAR0,#31              ; |1322| 
        MOV       AL,*+FP[AR0]          ; |1322| 
        CMPB      AL,#46                ; |1322| 
        BF        L140,NEQ              ; |1322| 
        ; branch occurs ; |1322| 
        MOVL      XAR0,#32              ; |1322| 
        MOV       AL,*+FP[AR0]          ; |1322| 
        BF        L140,NEQ              ; |1322| 
        ; branch occurs ; |1322| 
        MOVL      XAR0,#17              ; |1322| 
        MOVL      XAR4,*+FP[AR0]        ; |1322| 
        MOVB      XAR1,#11              ; |1322| 
        TBIT      *+XAR4[AR1],#4        ; |1322| 
        BF        L140,NTC              ; |1322| 
        ; branch occurs ; |1322| 
        MOVL      XAR0,#17              ; |1324| 
        MOVL      XAR4,XAR3             ; |1324| 
        MOVL      XAR5,*+FP[AR0]        ; |1324| 
        LCR       #__f_getdecluster     ; |1324| 
        ; call occurs [#__f_getdecluster] ; |1324| 
        MOVL      XAR0,#29              ; |1324| 
        MOVL      XAR6,ACC              ; |1324| 
        MOVL      ACC,*+FP[AR0]         ; |1324| 
        CMPL      ACC,XAR6              ; |1324| 
        BF        L140,NEQ              ; |1324| 
        ; branch occurs ; |1324| 
        MOVL      XAR0,#17
        MOVL      ACC,*+FP[AR0]
        MOVL      XAR0,#15              ; |1326| 
        ADDB      ACC,#32               ; |1326| 
        MOVL      *+FP[AR0],ACC         ; |1326| 
        MOVL      XAR0,#15              ; |1326| 
        MOVZ      AR5,SP                ; |1326| 
        MOVL      XAR4,*+FP[AR0]        ; |1326| 
        SUBB      XAR5,#86              ; |1326| 
        LCR       #_chkdsk_getname      ; |1326| 
        ; call occurs [#_chkdsk_getname] ; |1326| 
        MOVL      XAR0,#31              ; |1327| 
        MOV       AL,*+FP[AR0]          ; |1327| 
        CMPB      AL,#46                ; |1327| 
        BF        L140,NEQ              ; |1327| 
        ; branch occurs ; |1327| 
        MOVL      XAR0,#32              ; |1327| 
        MOV       AL,*+FP[AR0]          ; |1327| 
        CMPB      AL,#46                ; |1327| 
        BF        L140,NEQ              ; |1327| 
        ; branch occurs ; |1327| 
        MOVL      XAR0,#33              ; |1327| 
        MOV       AL,*+FP[AR0]          ; |1327| 
        BF        L140,NEQ              ; |1327| 
        ; branch occurs ; |1327| 
        MOVL      XAR0,#17              ; |1327| 
        MOVL      XAR4,*+FP[AR0]        ; |1327| 
        MOVB      XAR1,#43              ; |1327| 
        TBIT      *+XAR4[AR1],#4        ; |1327| 
        BF        L140,NTC              ; |1327| 
        ; branch occurs ; |1327| 
        MOVL      XAR0,#15              ; |1329| 
        MOVL      XAR4,XAR3             ; |1329| 
        MOVL      XAR5,*+FP[AR0]        ; |1329| 
        LCR       #__f_getdecluster     ; |1329| 
        ; call occurs [#__f_getdecluster] ; |1329| 
        MOVL      XAR0,#15              ; |1329| 
        MOVZ      AR5,SP                ; |1330| 
        MOVL      *+FP[AR0],ACC         ; |1329| 
        MOVL      XAR0,#15              ; |1330| 
        MOVL      XAR4,XAR3             ; |1330| 
        SUBB      XAR5,#32              ; |1330| 
        MOVL      ACC,*+FP[AR0]         ; |1330| 
        LCR       #__f_clustertopos     ; |1330| 
        ; call occurs [#__f_clustertopos] ; |1330| 
        MOVW      DP,#_chkdsk_dir
        MOVL      XAR4,@_chkdsk_dir     ; |1332| 
        LCR       #_strlen              ; |1332| 
        ; call occurs [#_strlen] ; |1332| 
        MOVZ      AR5,SP                ; |1333| 
        MOVW      DP,#_chkdsk_dir
        MOVL      XAR4,@_chkdsk_dir     ; |1333| 
        SUBB      XAR5,#73              ; |1333| 
        MOVZ      AR1,AL                ; |1332| 
        LCR       #_strcat              ; |1333| 
        ; call occurs [#_strcat] ; |1333| 
        MOVZ      AR4,SP                ; |1335| 
        SUBB      XAR4,#20              ; |1335| 
        MOVL      *-SP[2],XAR4          ; |1335| 
        MOVZ      AR4,SP                ; |1335| 
        MOVL      XAR0,#21              ; |1335| 
        SUBB      XAR4,#32              ; |1335| 
        MOVL      *-SP[4],XAR4          ; |1335| 
        MOV       *-SP[5],#0            ; |1335| 
        MOVL      XAR5,*+FP[AR0]        ; |1335| 
        MOVL      XAR0,#26              ; |1335| 
        MOVL      XAR4,XAR3             ; |1335| 
        MOVB      AL,#1                 ; |1335| 
        MOV       AH,*+FP[AR0]          ; |1335| 
        LCR       #_chkdsk_files        ; |1335| 
        ; call occurs [#_chkdsk_files] ; |1335| 
        MOVW      DP,#_chkdsk_dir
        MOVL      XAR4,@_chkdsk_dir     ; |1337| 
        MOVZ      AR6,AL                ; |1335| 
        SETC      SXM
        MOV       ACC,AR1               ; |1337| 
        ADDL      XAR4,ACC
        MOV       AL,AR6                ; |1337| 
        MOV       *+XAR4[0],#0          ; |1337| 
        BF        L148,NEQ              ; |1339| 
        ; branch occurs ; |1339| 
        MOVL      XAR0,#27
        MOVL      XAR4,*+FP[AR0]
        MOVL      XAR5,#FSL22           ; |1341| 
        LCR       #_fn_chdir            ; |1341| 
        ; call occurs [#_fn_chdir] ; |1341| 
        MOVL      XAR0,#27              ; |1342| 
        MOV       *-SP[1],#0            ; |1342| 
        MOV       *-SP[2],#0            ; |1342| 
        MOVL      XAR4,*+FP[AR0]        ; |1342| 
        MOVL      XAR0,#15              ; |1342| 
        MOVL      XAR5,XAR3             ; |1342| 
        MOVL      ACC,*+FP[AR0]         ; |1342| 
        LCR       #_chkdsk_findlostdir  ; |1342| 
        ; call occurs [#_chkdsk_findlostdir] ; |1342| 
        CMPB      AL,#0                 ; |1342| 
        BF        L139,NEQ              ; |1342| 
        ; branch occurs ; |1342| 
        MOVL      XAR0,#20              ; |1342| 
        MOV       *+FP[AR0],#1          ; |1342| 
L139:    
        MOVL      XAR0,#14              ; |1343| 
        MOV       *+FP[AR0],#16         ; |1343| 
L140:    
        MOVL      XAR0,#20
        MOV       AL,*+FP[AR0]
        BF        L141,NEQ              ; |1348| 
        ; branch occurs ; |1348| 
        MOVZ      AR5,SP                ; |1348| 
        MOVL      XAR4,XAR3             ; |1348| 
        MOVB      ACC,#0
        SUBB      XAR5,#32              ; |1348| 
        LCR       #__f_clustertopos     ; |1348| 
        ; call occurs [#__f_clustertopos] ; |1348| 
L141:    
        MOVZ      AR5,SP                ; |1354| 
        MOVZ      AR4,SP                ; |1354| 
        MOVB      ACC,#8
        SUBB      XAR5,#73              ; |1354| 
        SUBB      XAR4,#43              ; |1354| 
        LCR       #___memcpy_ff         ; |1354| 
        ; call occurs [#___memcpy_ff] ; |1354| 
        MOVZ      AR4,SP                ; |1355| 
        MOVB      XAR5,#32              ; |1355| 
        SUBB      XAR4,#35              ; |1355| 
        MOVB      ACC,#3
        LCR       #_memset              ; |1355| 
        ; call occurs [#_memset] ; |1355| 
        MOVZ      AR4,SP                ; |1358| 
        SUBB      XAR4,#32              ; |1358| 
        MOVL      *-SP[2],XAR4          ; |1358| 
        MOVZ      AR4,SP                ; |1358| 
        MOVZ      AR5,SP                ; |1358| 
        SUBB      XAR4,#8               ; |1358| 
        MOVL      *-SP[4],XAR4          ; |1358| 
        MOVL      XAR4,XAR3             ; |1358| 
        SUBB      XAR5,#64              ; |1358| 
        LCR       #__f_addentry         ; |1358| 
        ; call occurs [#__f_addentry] ; |1358| 
        CMPB      AL,#0                 ; |1358| 
        BF        L143,NEQ              ; |1358| 
        ; branch occurs ; |1358| 
        MOVL      XAR1,#14              ; |1360| 
        MOVL      XAR4,*-SP[8]          ; |1360| 
        MOVB      XAR0,#11              ; |1360| 
        MOV       AL,*+FP[AR1]          ; |1360| 
        MOV       *+XAR4[AR0],AL        ; |1360| 
        ANDB      AL,#16                ; |1361| 
        BF        L142,NEQ              ; |1361| 
        ; branch occurs ; |1361| 
        MOVB      XAR0,#14              ; |1361| 
        MOVU      ACC,*+XAR3[AR0]
        MOVL      XAR0,#23              ; |1361| 
        MOVL      XAR4,*-SP[8]          ; |1361| 
        MOVL      XT,ACC                ; |1361| 
        MOVL      ACC,*+FP[AR0]         ; |1361| 
        ADDB      XAR4,#28              ; |1361| 
        IMPYXUL   P,XT,ACC              ; |1361| 
        MOVL      ACC,P                 ; |1361| 
        LSL       ACC,9                 ; |1361| 
        LCR       #__f_setlong          ; |1361| 
        ; call occurs [#__f_setlong] ; |1361| 
L142:    
        MOVL      XAR0,#29              ; |1363| 
        MOVL      XAR5,*-SP[8]          ; |1363| 
        MOVL      XAR4,XAR3             ; |1363| 
        MOVL      ACC,*+FP[AR0]         ; |1363| 
        LCR       #__f_setdecluster     ; |1363| 
        ; call occurs [#__f_setdecluster] ; |1363| 
        LCR       #_f_getdate           ; |1364| 
        ; call occurs [#_f_getdate] ; |1364| 
        MOVL      XAR4,*-SP[8]          ; |1364| 
        ADDB      XAR4,#24              ; |1364| 
        LCR       #__f_setword          ; |1364| 
        ; call occurs [#__f_setword] ; |1364| 
        LCR       #_f_gettime           ; |1365| 
        ; call occurs [#_f_gettime] ; |1365| 
        MOVL      XAR4,*-SP[8]          ; |1365| 
        ADDB      XAR4,#22              ; |1365| 
        LCR       #__f_setword          ; |1365| 
        ; call occurs [#__f_setword] ; |1365| 
        MOVL      XAR4,XAR3             ; |1366| 
        LCR       #__f_writedirsector   ; |1366| 
        ; call occurs [#__f_writedirsector] ; |1366| 
        CMPB      AL,#0                 ; |1366| 
        BF        L144,EQ               ; |1366| 
        ; branch occurs ; |1366| 
L143:    
        MOVB      AL,#50                ; |1366| 
        BF        L148,UNC              ; |1366| 
        ; branch occurs ; |1366| 
L144:    
        MOVL      XAR0,#14
        MOV       AL,*+FP[AR0]
        ANDB      AL,#16                ; |1371| 
        BF        L145,NEQ              ; |1371| 
        ; branch occurs ; |1371| 
        MOVB      AL,#9                 ; |1378| 
        BF        L146,UNC              ; |1378| 
        ; branch occurs ; |1378| 
L145:    
        MOVW      DP,#_full_path
        MOVL      XAR4,@_full_path      ; |1373| 
        MOVB      AL,#1                 ; |1373| 
        LCR       #_chkdsk_putlog       ; |1373| 
        ; call occurs [#_chkdsk_putlog] ; |1373| 
        MOVB      AL,#8                 ; |1374| 
L146:    
        MOVZ      AR4,SP                ; |1374| 
        SUBB      XAR4,#73              ; |1374| 
        LCR       #_chkdsk_putlog       ; |1374| 
        ; call occurs [#_chkdsk_putlog] ; |1374| 
L147:    
        MOVB      AL,#0
L148:    
        SUBB      SP,#104               ; |1383| 
        MOVL      XAR3,*--SP            ; |1383| 
        MOVL      XAR2,*--SP            ; |1383| 
        MOVL      XAR1,*--SP            ; |1383| 
        LRETR
        ; return occurs



	.sect	".text"
	.global	_chkdsk_buildlostchains

;***************************************************************
;* FNAME: _chkdsk_buildlostchains       FR SIZE:  50           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            6 Parameter, 38 Auto,  6 SOE     *
;***************************************************************

_chkdsk_buildlostchains:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#44
        MOVL      XAR0,#1136            ; |1422| 
        MOVL      *-SP[26],ACC          ; |1408| 
        MOVL      *-SP[30],XAR4         ; |1408| 
        MOVL      *-SP[28],XAR5         ; |1408| 
        MOVL      ACC,*-SP[54]          ; |1408| 
        MOVL      *-SP[32],ACC          ; |1408| 
        MOVL      XAR4,*-SP[28]         ; |1422| 
        MOVB      ACC,#2
        MOVL      *-SP[34],ACC          ; |1421| 
        MOVB      ACC,#3
        CMPL      ACC,*+XAR4[AR0]       ; |1422| 
        BF        L149,NEQ              ; |1422| 
        ; branch occurs ; |1422| 
        MOVL      *-SP[34],ACC          ; |1422| 
L149:    
        MOVL      XAR4,*-SP[28]
        LCR       #__f_getmaxcluster    ; |1423| 
        ; call occurs [#__f_getmaxcluster] ; |1423| 
        MOVL      *-SP[36],ACC          ; |1423| 
        MOV       *-SP[37],#0           ; |1426| 
        MOV       AL,*-SP[26]           ; |1426| 
        BF        L165,LEQ              ; |1426| 
        ; branch occurs ; |1426| 
        BF        L160,UNC              ; |1428| 
        ; branch occurs ; |1428| 
L150:    
        MOV       AL,#65528
        MOV       AH,#4095
        CMPL      ACC,*-SP[8]           ; |1452| 
        BF        L152,EQ               ; |1452| 
        ; branch occurs ; |1452| 
        MOV       AL,*-SP[25]
        ANDB      AL,#4                 ; |1454| 
        BF        L151,NEQ              ; |1454| 
        ; branch occurs ; |1454| 
        MOV       AL,#65528
        MOVL      *-SP[2],ACC           ; |1456| 
        MOVL      XAR4,*-SP[28]         ; |1456| 
        MOVL      ACC,XAR1              ; |1456| 
        LCR       #__f_setclustervalue  ; |1456| 
        ; call occurs [#__f_setclustervalue] ; |1456| 
        CMPB      AL,#0                 ; |1456| 
        BF        L152,EQ               ; |1456| 
        ; branch occurs ; |1456| 
        BF        L155,UNC              ; |1456| 
        ; branch occurs ; |1456| 
L151:    
        MOV       *-SP[38],#1           ; |1458| 
L152:    
        MOVL      XAR6,*-SP[40]         ; |1465| 
        MOVB      ACC,#1
        ADDL      ACC,XAR6
        MOVL      XAR6,*-SP[36]         ; |1466| 
        MOVB      XAR3,#0
        MOVL      XAR1,ACC              ; |1465| 
        MOVL      ACC,*-SP[34]          ; |1466| 
        CMPL      ACC,XAR6              ; |1466| 
        BF        L158,EQ               ; |1466| 
        ; branch occurs ; |1466| 
L153:    
        MOVL      ACC,*-SP[36]
        CMPL      ACC,XAR1              ; |1468| 
        BF        L154,HI               ; |1468| 
        ; branch occurs ; |1468| 
        MOVL      XAR1,*-SP[34]
L154:    
        MOVL      ACC,XAR1              ; |1469| 
        ANDB      AL,#0x07              ; |1469| 
        CLRC      SXM
        MOVB      AH,#1                 ; |1469| 
        MOV       T,AL                  ; |1469| 
        MOVL      XAR6,*-SP[32]         ; |1469| 
        LSL       AH,T                  ; |1469| 
        MOV       *-SP[41],AH           ; |1469| 
        MOVL      ACC,XAR1              ; |1469| 
        SFR       ACC,3                 ; |1469| 
        ADDL      ACC,XAR6
        MOVL      *-SP[44],ACC          ; |1469| 
        MOVL      XAR4,*-SP[44]         ; |1469| 
        MOV       AL,*+XAR4[0]          ; |1469| 
        AND       AL,*-SP[41]           ; |1469| 
        BF        L157,NEQ              ; |1469| 
        ; branch occurs ; |1469| 
        MOVZ      AR5,SP                ; |1471| 
        MOVL      XAR4,*-SP[28]
        MOVL      ACC,XAR1              ; |1471| 
        SUBB      XAR5,#8               ; |1471| 
        LCR       #__f_getclustervalue  ; |1471| 
        ; call occurs [#__f_getclustervalue] ; |1471| 
        CMPB      AL,#0                 ; |1471| 
        BF        L156,EQ               ; |1471| 
        ; branch occurs ; |1471| 
L155:    
        MOVB      AL,#52                ; |1471| 
        BF        L167,UNC              ; |1471| 
        ; branch occurs ; |1471| 
L156:    
        MOVL      ACC,*-SP[40]
        CMPL      ACC,*-SP[8]           ; |1472| 
        BF        L157,NEQ              ; |1472| 
        ; branch occurs ; |1472| 
        MOVL      XAR4,*-SP[44]
        MOV       AL,*-SP[41]
        MOVB      XAR3,#0
        OR        *+XAR4[0],AL          ; |1474| 
        MOVL      *-SP[40],XAR1         ; |1475| 
        ADDB      XAR2,#1               ; |1476| 
L157:    
        MOVL      XAR6,*-SP[34]         ; |1481| 
        MOVL      ACC,*-SP[36]          ; |1480| 
        ADDB      XAR3,#1               ; |1481| 
        ADDB      XAR1,#1               ; |1480| 
        SUBL      ACC,XAR6
        CMPL      ACC,XAR3              ; |1481| 
        BF        L153,HI               ; |1481| 
        ; branch occurs ; |1481| 
L158:    
        MOV       AL,*-SP[38]
        BF        L159,NEQ              ; |1483| 
        ; branch occurs ; |1483| 
        MOVL      ACC,*-SP[32]
        MOVL      *-SP[2],ACC           ; |1497| 
        MOVL      *-SP[4],XAR2          ; |1497| 
        MOV       AL,*-SP[25]           ; |1497| 
        MOV       *-SP[5],AL            ; |1497| 
        MOVL      XAR4,*-SP[30]         ; |1497| 
        MOVL      XAR5,*-SP[28]         ; |1497| 
        MOVL      ACC,*-SP[40]          ; |1497| 
        LCR       #_chkdsk_savelostchain ; |1497| 
        ; call occurs [#_chkdsk_savelostchain] ; |1497| 
        CMPB      AL,#0                 ; |1497| 
        BF        L160,EQ               ; |1497| 
        ; branch occurs ; |1497| 
        BF        L167,UNC              ; |1497| 
        ; branch occurs ; |1497| 
L159:    
        MOVL      *-SP[2],XAR2          ; |1485| 
        MOV       *-SP[3],#1            ; |1485| 
        MOVL      XAR4,*-SP[28]         ; |1485| 
        MOVL      XAR5,*-SP[32]         ; |1485| 
        MOVL      ACC,*-SP[40]          ; |1485| 
        LCR       #_chkdsk_removechain  ; |1485| 
        ; call occurs [#_chkdsk_removechain] ; |1485| 
        CMPB      AL,#0                 ; |1485| 
        BF        L167,NEQ              ; |1485| 
        ; branch occurs ; |1485| 
        MOVL      XAR4,#FSL27           ; |1490| 
        MOVL      *-SP[2],XAR4          ; |1490| 
        MOVZ      AR4,SP                ; |1490| 
        MOVL      ACC,*-SP[40]          ; |1490| 
        MOVL      *-SP[4],ACC           ; |1490| 
        MOVL      *-SP[6],XAR2          ; |1490| 
        SUBB      XAR4,#24              ; |1490| 
        LCR       #_sprintf             ; |1490| 
        ; call occurs [#_sprintf] ; |1490| 
        MOVZ      AR4,SP                ; |1491| 
        MOVB      AL,#10                ; |1491| 
        SUBB      XAR4,#24              ; |1491| 
        LCR       #_chkdsk_putlog       ; |1491| 
        ; call occurs [#_chkdsk_putlog] ; |1491| 
L160:    
        MOVL      XAR6,*-SP[32]         ; |1500| 
        SETC      SXM
        MOV       ACC,*-SP[37]          ; |1500| 
        ADDL      ACC,XAR6
        MOVL      XAR4,ACC              ; |1500| 
        MOV       AL,*+XAR4[0]          ; |1500| 
        CMPB      AL,#255               ; |1500| 
        BF        L164,EQ               ; |1500| 
        ; branch occurs ; |1500| 
        MOVZ      AR6,AL                ; |1431| 
        MOV       AL,*-SP[37]           ; |1431| 
        MOV       ACC,AL << #3          ; |1432| 
        MOV       ACC,AL                ; |1432| 
        MOVL      *-SP[40],ACC          ; |1432| 
        MOV       AL,AR6                ; |1432| 
        ANDB      AL,#1                 ; |1434| 
        BF        L162,EQ               ; |1434| 
        ; branch occurs ; |1434| 
L161:    
        MOVL      ACC,*-SP[40]
        ADDB      ACC,#1                ; |1436| 
        MOVL      *-SP[40],ACC          ; |1436| 
        MOV       AL,AR6                ; |1436| 
        LSR       AL,1                  ; |1437| 
        MOVZ      AR6,AL                ; |1437| 
        ANDB      AL,#1                 ; |1437| 
        BF        L161,NEQ              ; |1437| 
        ; branch occurs ; |1437| 
L162:    
        MOV       AL,*-SP[25]           ; |1442| 
        ASR       AL,1                  ; |1443| 
        MOVL      XAR1,*-SP[40]         ; |1441| 
        ANDB      AL,#0x01              ; |1443| 
        MOV       *-SP[38],AL           ; |1443| 
        MOVB      XAR2,#0
L163:    
        CLRC      SXM
        MOVL      XAR6,*-SP[32]         ; |1447| 
        MOVL      ACC,XAR1              ; |1447| 
        SFR       ACC,3                 ; |1447| 
        MOVZ      AR5,SP                ; |1449| 
        ADDL      ACC,XAR6
        MOVL      XAR4,ACC              ; |1447| 
        MOVL      ACC,XAR1              ; |1447| 
        ANDB      AL,#0x07              ; |1447| 
        MOV       T,AL                  ; |1447| 
        MOVB      AH,#1                 ; |1447| 
        LSL       AH,T                  ; |1447| 
        OR        *+XAR4[0],AH          ; |1447| 
        MOVL      XAR4,*-SP[28]         ; |1448| 
        SUBB      XAR5,#8               ; |1449| 
        MOVL      ACC,XAR1              ; |1449| 
        LCR       #__f_getclustervalue  ; |1449| 
        ; call occurs [#__f_getclustervalue] ; |1449| 
        ADDB      XAR2,#1               ; |1448| 
        CMPB      AL,#0                 ; |1449| 
        BF        L155,NEQ              ; |1449| 
        ; branch occurs ; |1449| 
        MOVL      ACC,*-SP[34]
        CMPL      ACC,*-SP[8]           ; |1450| 
        BF        L150,HI               ; |1450| 
        ; branch occurs ; |1450| 
        MOVL      ACC,*-SP[36]
        CMPL      ACC,*-SP[8]           ; |1450| 
        BF        L150,LOS              ; |1450| 
        ; branch occurs ; |1450| 
        MOVL      XAR6,*-SP[32]         ; |1450| 
        CLRC      SXM
        MOVL      ACC,*-SP[8]           ; |1450| 
        SFR       ACC,3                 ; |1450| 
        ADDL      ACC,XAR6
        MOVL      XAR4,ACC              ; |1450| 
        MOVL      ACC,*-SP[8]           ; |1450| 
        ANDB      AL,#0x07              ; |1450| 
        MOV       T,AL                  ; |1450| 
        MOVB      AL,#1                 ; |1450| 
        LSL       AL,T                  ; |1450| 
        AND       AL,*+XAR4[0]          ; |1450| 
        BF        L150,NEQ              ; |1450| 
        ; branch occurs ; |1450| 
        MOVL      XAR1,*-SP[8]          ; |1462| 
        BF        L163,UNC              ; |1463| 
        ; branch occurs ; |1463| 
L164:    
        INC       *-SP[37]              ; |1501| 
        MOV       AH,*-SP[37]           ; |1501| 
        MOV       AL,*-SP[26]           ; |1501| 
        CMP       AL,AH                 ; |1501| 
        BF        L160,GT               ; |1501| 
        ; branch occurs ; |1501| 
L165:    
        MOV       *-SP[1],#1            ; |1503| 
        MOV       *-SP[2],#0            ; |1503| 
        MOVL      XAR4,*-SP[30]         ; |1503| 
        MOVL      XAR5,*-SP[28]         ; |1503| 
        MOVB      ACC,#0
        LCR       #_chkdsk_findlostdir  ; |1503| 
        ; call occurs [#_chkdsk_findlostdir] ; |1503| 
        CMPB      AL,#0                 ; |1503| 
        BF        L166,EQ               ; |1503| 
        ; branch occurs ; |1503| 
        CMPB      AL,#106               ; |1503| 
        BF        L167,NEQ              ; |1503| 
        ; branch occurs ; |1503| 
L166:    
        MOVL      XAR4,*-SP[28]
        LCR       #_chkdsk_lost_changebackdir ; |1506| 
        ; call occurs [#_chkdsk_lost_changebackdir] ; |1506| 
L167:    
        SUBB      SP,#44                ; |1509| 
        MOVL      XAR3,*--SP            ; |1509| 
        MOVL      XAR2,*--SP            ; |1509| 
        MOVL      XAR1,*--SP            ; |1509| 
        LRETR
        ; return occurs



	.sect	".text"

;***************************************************************
;* FNAME: _chkdsk_cmpfat                FR SIZE:  20           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            1 Parameter, 12 Auto,  6 SOE     *
;***************************************************************

_chkdsk_cmpfat:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#14
        MOVL      XAR2,XAR4             ; |1528| 
        MOVB      XAR0,#76              ; |1537| 
        MOV       *-SP[2],#0            ; |1536| 
        MOVL      XAR6,*+XAR2[AR0]      ; |1537| 
        CLRC      SXM
        SFR       ACC,10                ; |1538| 
        MOVL      *-SP[6],ACC           ; |1538| 
        MOVL      *-SP[4],XAR6          ; |1537| 
        BF        L169,NEQ              ; |1538| 
        ; branch occurs ; |1538| 
        MOV       ACC,#1 << 9
        LCR       #_malloc              ; |1542| 
        ; call occurs [#_malloc] ; |1542| 
        MOVL      XAR3,#_de             ; |1541| 
        MOVL      *-SP[8],XAR4          ; |1542| 
        MOVL      ACC,*-SP[8]           ; |1542| 
        BF        L168,NEQ              ; |1542| 
        ; branch occurs ; |1542| 
        MOVB      AL,#53                ; |1543| 
        BF        L180,UNC              ; |1543| 
        ; branch occurs ; |1543| 
L168:    
        MOVB      ACC,#1
        MOV       *-SP[9],#1            ; |1545| 
        MOVL      *-SP[6],ACC           ; |1544| 
        BF        L171,UNC              ; |1546| 
        ; branch occurs ; |1546| 
L169:    
        MOVL      XAR6,*-SP[6]          ; |1549| 
        MOV       ACC,#256              ; |1549| 
        CMPL      ACC,XAR6              ; |1549| 
        BF        L170,HIS              ; |1549| 
        ; branch occurs ; |1549| 
        MOVL      XAR4,#256             ; |1549| 
        MOVL      *-SP[6],XAR4          ; |1549| 
L170:    
        MOVL      XAR3,XAR5             ; |1550| 
        MOVL      ACC,*-SP[6]           ; |1550| 
        LSL       ACC,9                 ; |1551| 
        ADDL      ACC,XAR3
        MOVL      *-SP[8],ACC           ; |1551| 
        MOV       *-SP[9],#0            ; |1552| 
L171:    
        MOVB      ACC,#0
        MOVL      *-SP[12],ACC          ; |1555| 
        MOVL      ACC,*-SP[4]           ; |1555| 
        BF        L178,EQ               ; |1555| 
        ; branch occurs ; |1555| 
L172:    
        MOVL      XAR6,*-SP[12]         ; |1557| 
        MOVL      ACC,*-SP[4]
        SUBL      ACC,XAR6
        MOVL      XAR6,*-SP[6]          ; |1557| 
        CMPL      ACC,XAR6              ; |1557| 
        BF        L173,HIS              ; |1557| 
        ; branch occurs ; |1557| 
        MOVL      XAR6,*-SP[12]         ; |1557| 
        MOVL      ACC,*-SP[4]
        SUBL      ACC,XAR6
        MOVL      XAR1,ACC              ; |1557| 
        BF        L174,UNC              ; |1557| 
        ; branch occurs ; |1557| 
L173:    
        MOVL      XAR1,*-SP[6]
L174:    
        MOV       *-SP[1],AR1           ; |1557| 
        MOVB      XAR0,#74              ; |1557| 
        MOVL      XAR6,*-SP[12]         ; |1557| 
        MOVL      XAR5,XAR3             ; |1557| 
        MOVL      XAR4,XAR2             ; |1557| 
        MOVL      ACC,*+XAR2[AR0]       ; |1557| 
        ADDL      ACC,XAR6
        LCR       #__f_readsector       ; |1557| 
        ; call occurs [#__f_readsector] ; |1557| 
        MOV       *-SP[13],AL           ; |1557| 
        MOV       *-SP[1],AR1           ; |1561| 
        MOVL      XAR6,*-SP[4]          ; |1561| 
        MOVB      XAR0,#74              ; |1561| 
        MOVL      ACC,*+XAR2[AR0]       ; |1561| 
        ADDL      ACC,XAR6
        MOVL      XAR6,*-SP[12]         ; |1561| 
        MOVL      XAR4,XAR2             ; |1561| 
        MOVL      XAR5,*-SP[8]          ; |1561| 
        ADDL      ACC,XAR6
        LCR       #__f_readsector       ; |1561| 
        ; call occurs [#__f_readsector] ; |1561| 
        MOV       AH,*-SP[13]           ; |1561| 
        BF        L175,EQ               ; |1563| 
        ; branch occurs ; |1563| 
        CMPB      AL,#0                 ; |1563| 
        BF        L177,NEQ              ; |1563| 
        ; branch occurs ; |1563| 
        CMPB      AH,#0                 ; |1569| 
        BF        L176,NEQ              ; |1569| 
        ; branch occurs ; |1569| 
L175:    
        CMPB      AL,#0                 ; |1569| 
        BF        L176,NEQ              ; |1569| 
        ; branch occurs ; |1569| 
        MOVL      XAR5,*-SP[8]          ; |1571| 
        MOVL      XAR4,XAR3             ; |1571| 
        MOVL      ACC,XAR1              ; |1571| 
        LSL       ACC,9                 ; |1571| 
        LCR       #_memcmp              ; |1571| 
        ; call occurs [#_memcmp] ; |1571| 
        CMPB      AL,#0                 ; |1571| 
        BF        L176,EQ               ; |1571| 
        ; branch occurs ; |1571| 
        MOV       *-SP[1],AR1           ; |1573| 
        MOVL      XAR6,*-SP[4]          ; |1573| 
        MOVB      XAR0,#74              ; |1573| 
        MOVL      ACC,*+XAR2[AR0]       ; |1573| 
        ADDL      ACC,XAR6
        MOVL      XAR6,*-SP[12]         ; |1573| 
        MOVL      XAR5,XAR3             ; |1573| 
        MOVL      XAR4,XAR2             ; |1573| 
        ADDL      ACC,XAR6
        LCR       #__f_writesector      ; |1573| 
        ; call occurs [#__f_writesector] ; |1573| 
        MOVB      AL,#14                ; |1575| 
        MOVB      XAR4,#0
        LCR       #_chkdsk_putlog       ; |1575| 
        ; call occurs [#_chkdsk_putlog] ; |1575| 
L176:    
        MOVL      ACC,*-SP[12]
        ADDL      ACC,XAR1
        MOVL      *-SP[12],ACC          ; |1580| 
        MOVL      XAR6,*-SP[12]         ; |1580| 
        MOVL      ACC,*-SP[4]           ; |1580| 
        CMPL      ACC,XAR6              ; |1581| 
        BF        L172,HI               ; |1581| 
        ; branch occurs ; |1581| 
        BF        L178,UNC              ; |1581| 
        ; branch occurs ; |1581| 
L177:    
        MOV       *-SP[2],#51           ; |1565| 
L178:    
        MOV       AL,*-SP[9]
        BF        L179,EQ               ; |1583| 
        ; branch occurs ; |1583| 
        MOVL      XAR4,*-SP[8]
        LCR       #_free                ; |1583| 
        ; call occurs [#_free] ; |1583| 
L179:    
        MOV       AL,*-SP[2]
L180:    
        SUBB      SP,#14                ; |1585| 
        MOVL      XAR3,*--SP            ; |1585| 
        MOVL      XAR2,*--SP            ; |1585| 
        MOVL      XAR1,*--SP            ; |1585| 
        LRETR
        ; return occurs



	.sect	".text"

;***************************************************************
;* FNAME: _fn_checkdisk                 FR SIZE:  36           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            5 Parameter, 25 Auto,  6 SOE     *
;***************************************************************

_fn_checkdisk:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#30
        MOVZ      AR5,SP                ; |1624| 
        MOVZ      AR1,AH                ; |1610| 
        MOVL      XAR2,XAR4             ; |1610| 
        MOVZ      AR3,AL                ; |1610| 
        SUBB      XAR5,#10              ; |1624| 
        LCR       #__f_getvolume        ; |1624| 
        ; call occurs [#__f_getvolume] ; |1624| 
        CMPB      AL,#0                 ; |1624| 
        MOV       *-SP[23],AL           ; |1624| 
        BF        L194,NEQ              ; |1624| 
        ; branch occurs ; |1624| 
        MOVL      XAR4,XAR2             ; |1627| 
        MOV       AL,AR3                ; |1627| 
        LCR       #_fn_chdrive          ; |1627| 
        ; call occurs [#_fn_chdrive] ; |1627| 
        CMPB      AL,#0                 ; |1627| 
        MOV       *-SP[23],AL           ; |1627| 
        BF        L194,NEQ              ; |1627| 
        ; branch occurs ; |1627| 
        MOV       ACC,#2053 << 2
        LCR       #_malloc              ; |1631| 
        ; call occurs [#_malloc] ; |1631| 
        MOVW      DP,#_chkdsk_log
        MOVL      ACC,XAR4              ; |1631| 
        MOVL      @_chkdsk_log,XAR4     ; |1631| 
        BF        L181,EQ               ; |1632| 
        ; branch occurs ; |1632| 
        MOVL      XAR4,ACC              ; |1633| 
        MOVB      XAR5,#0
        MOV       ACC,#2053 << 2
        LCR       #_memset              ; |1633| 
        ; call occurs [#_memset] ; |1633| 
        MOVW      DP,#_chkdsk_log
        MOVL      XAR5,@_chkdsk_log     ; |1634| 
        MOVL      XAR4,#8192            ; |1634| 
        MOVL      ACC,XAR5
        ADDL      XAR4,ACC
        MOVL      XAR0,#8192            ; |1635| 
        MOVW      DP,#_chkdsk_dir
        MOVL      @_chkdsk_dir,XAR4     ; |1634| 
        MOV       *+XAR5[AR0],#47       ; |1635| 
        MOVW      DP,#_chkdsk_log_pos
        MOVB      ACC,#0
        MOV       *+XAR4[1],#0          ; |1636| 
        MOVL      @_chkdsk_log_pos,ACC  ; |1637| 
        MOVB      ACC,#20
        LCR       #_malloc              ; |1640| 
        ; call occurs [#_malloc] ; |1640| 
        MOVW      DP,#_full_path
        MOVL      ACC,XAR4              ; |1640| 
        MOVL      @_full_path,XAR4      ; |1640| 
        BF        L181,EQ               ; |1641| 
        ; branch occurs ; |1641| 
        MOVL      XAR4,ACC              ; |1642| 
        MOVB      XAR5,#0
        MOVB      ACC,#20
        LCR       #_memset              ; |1642| 
        ; call occurs [#_memset] ; |1642| 
        MOVL      XAR4,*-SP[10]         ; |1644| 
        LCR       #__f_getmaxcluster    ; |1644| 
        ; call occurs [#__f_getmaxcluster] ; |1644| 
        CLRC      SXM
        MOVL      *-SP[26],ACC          ; |1644| 
        SFR       ACC,3                 ; |1645| 
        ADDB      ACC,#1                ; |1645| 
        MOVL      *-SP[28],ACC          ; |1645| 
        LCR       #_malloc              ; |1646| 
        ; call occurs [#_malloc] ; |1646| 
        MOVL      *-SP[30],XAR4         ; |1646| 
        MOVL      ACC,*-SP[30]          ; |1646| 
        BF        L182,NEQ              ; |1646| 
        ; branch occurs ; |1646| 
L181:    
        MOVB      AL,#53                ; |1647| 
        BF        L194,UNC              ; |1647| 
        ; branch occurs ; |1647| 
L182:    
        MOVL      XAR4,*-SP[10]         ; |1649| 
        MOVL      XAR5,*-SP[30]         ; |1649| 
        MOVL      ACC,*-SP[28]          ; |1649| 
        LCR       #_chkdsk_cmpfat       ; |1649| 
        ; call occurs [#_chkdsk_cmpfat] ; |1649| 
        CMPB      AL,#0                 ; |1649| 
        MOV       *-SP[23],AL           ; |1649| 
        BF        L192,NEQ              ; |1649| 
        ; branch occurs ; |1649| 
        MOVL      XAR4,*-SP[30]
        MOVL      ACC,*-SP[28]          ; |1652| 
        MOVB      XAR5,#0
        LCR       #_memset              ; |1652| 
        ; call occurs [#_memset] ; |1652| 
        MOVL      XAR0,#1136            ; |1653| 
        MOVL      XAR4,*-SP[10]         ; |1653| 
        MOVB      ACC,#3
        CMPL      ACC,*+XAR4[AR0]       ; |1653| 
        BF        L183,NEQ              ; |1653| 
        ; branch occurs ; |1653| 
        MOVB      AL,#7                 ; |1653| 
        BF        L184,UNC              ; |1653| 
        ; branch occurs ; |1653| 
L183:    
        MOVB      AL,#3                 ; |1653| 
L184:    
        MOVL      XAR4,*-SP[30]
        MOVZ      AR5,SP                ; |1653| 
        MOV       *+XAR4[0],AL          ; |1653| 
        MOVL      XAR4,*-SP[10]         ; |1653| 
        SUBB      XAR5,#22              ; |1653| 
        MOVB      ACC,#0
        LCR       #__f_clustertopos     ; |1653| 
        ; call occurs [#__f_clustertopos] ; |1653| 
        MOVZ      AR4,SP                ; |1658| 
        SUBB      XAR4,#22              ; |1658| 
        MOVL      *-SP[2],XAR4          ; |1658| 
        MOVB      ACC,#0
        MOVL      *-SP[4],ACC           ; |1658| 
        MOV       *-SP[5],#0            ; |1658| 
        MOVL      XAR5,*-SP[30]         ; |1658| 
        MOVL      XAR4,*-SP[10]         ; |1658| 
        MOVB      AL,#0
        MOV       AH,AR1                ; |1658| 
        LCR       #_chkdsk_files        ; |1658| 
        ; call occurs [#_chkdsk_files] ; |1658| 
        CMPB      AL,#0                 ; |1658| 
        MOV       *-SP[23],AL           ; |1658| 
        BF        L192,NEQ              ; |1658| 
        ; branch occurs ; |1658| 
        MOVB      XAR3,#0
        MOVL      ACC,*-SP[26]          ; |1664| 
        BF        L189,EQ               ; |1664| 
        ; branch occurs ; |1664| 
L185:    
        MOVZ      AR5,SP                ; |1668| 
        MOVL      XAR4,*-SP[10]         ; |1668| 
        MOVL      ACC,XAR3              ; |1668| 
        SUBB      XAR5,#8               ; |1668| 
        LCR       #__f_getclustervalue  ; |1668| 
        ; call occurs [#__f_getclustervalue] ; |1668| 
        CMPB      AL,#0                 ; |1668| 
        BF        L188,NEQ              ; |1668| 
        ; branch occurs ; |1668| 
        MOVL      ACC,*-SP[8]           ; |1674| 
        BF        L187,EQ               ; |1674| 
        ; branch occurs ; |1674| 
        MOV       AL,#65527
        MOV       AH,#4095
        CMPL      ACC,*-SP[8]           ; |1674| 
        BF        L187,EQ               ; |1674| 
        ; branch occurs ; |1674| 
        MOV       AL,#65520
        CMPL      ACC,*-SP[8]           ; |1674| 
        BF        L187,EQ               ; |1674| 
        ; branch occurs ; |1674| 
        MOVL      ACC,XAR3              ; |1676| 
        ANDB      AL,#0x07              ; |1676| 
        CLRC      SXM
        MOVB      AH,#1                 ; |1676| 
        MOV       T,AL                  ; |1676| 
        MOVL      XAR7,*-SP[30]         ; |1676| 
        LSL       AH,T                  ; |1676| 
        MOVZ      AR6,AH                ; |1676| 
        MOVL      ACC,XAR3              ; |1676| 
        SFR       ACC,3                 ; |1676| 
        ADDL      ACC,XAR7
        MOVL      XAR4,ACC              ; |1676| 
        MOV       AL,*+XAR4[0]          ; |1676| 
        MOV       AH,AR6                ; |1676| 
        AND       AH,AL                 ; |1676| 
        BF        L186,NEQ              ; |1676| 
        ; branch occurs ; |1676| 
        OR        AL,AR6                ; |1677| 
        MOV       *+XAR4[0],AL          ; |1677| 
        BF        L187,UNC              ; |1677| 
        ; branch occurs ; |1677| 
L186:    
        MOVL      XAR6,*-SP[30]         ; |1676| 
        MOVL      ACC,XAR3              ; |1676| 
        SFR       ACC,3                 ; |1676| 
        ADDL      ACC,XAR6
        MOVL      XAR4,ACC              ; |1676| 
        MOVL      ACC,XAR3              ; |1676| 
        ANDB      AL,#0x07              ; |1676| 
        MOV       T,AL                  ; |1676| 
        MOVB      AL,#1                 ; |1676| 
        LSL       AL,T                  ; |1676| 
        NOT       AL                    ; |1676| 
        AND       *+XAR4[0],AL          ; |1676| 
L187:    
        MOVL      ACC,*-SP[26]          ; |1679| 
        ADDB      XAR3,#1               ; |1679| 
        CMPL      ACC,XAR3              ; |1679| 
        BF        L185,HI               ; |1679| 
        ; branch occurs ; |1679| 
        BF        L189,UNC              ; |1679| 
        ; branch occurs ; |1679| 
L188:    
        MOV       *-SP[23],#52          ; |1670| 
L189:    
        MOVL      ACC,*-SP[26]
        CMPL      ACC,XAR3              ; |1681| 
        BF        L192,NEQ              ; |1681| 
        ; branch occurs ; |1681| 
        MOVB      XAR3,#0
        MOVL      ACC,*-SP[28]          ; |1683| 
        BF        L191,EQ               ; |1683| 
        ; branch occurs ; |1683| 
L190:    
        MOVL      ACC,*-SP[30]
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |1683| 
        ADDB      XAR3,#1               ; |1683| 
        XOR       *+XAR4[0],#0x00ff     ; |1683| 
        MOVL      ACC,*-SP[28]          ; |1683| 
        CMPL      ACC,XAR3              ; |1683| 
        BF        L190,HI               ; |1683| 
        ; branch occurs ; |1683| 
L191:    
        MOVW      DP,#_lost_pos
        MOVL      ACC,*-SP[30]          ; |1685| 
        MOV       @_lost_pos,#0         ; |1684| 
        MOVL      XAR4,XAR2             ; |1686| 
        MOVL      *-SP[2],ACC           ; |1686| 
        MOVW      DP,#_dirlevel
        MOV       AL,*-SP[28]           ; |1686| 
        MOVL      XAR5,*-SP[10]         ; |1686| 
        MOV       @_dirlevel,#0         ; |1685| 
        MOV       AH,AR1                ; |1686| 
        LCR       #_chkdsk_buildlostchains ; |1686| 
        ; call occurs [#_chkdsk_buildlostchains] ; |1686| 
        MOV       *-SP[23],AL           ; |1686| 
L192:    
        MOVW      DP,#_full_path
        MOVL      XAR4,@_full_path      ; |1711| 
        LCR       #_free                ; |1711| 
        ; call occurs [#_free] ; |1711| 
        MOVL      XAR4,*-SP[30]         ; |1711| 
        LCR       #_free                ; |1712| 
        ; call occurs [#_free] ; |1712| 
        MOV       AL,*-SP[23]           ; |1712| 
        BF        L193,NEQ              ; |1715| 
        ; branch occurs ; |1715| 
        MOVL      XAR4,XAR2             ; |1715| 
        LCR       #_chkdsk_savelog      ; |1715| 
        ; call occurs [#_chkdsk_savelog] ; |1715| 
        MOV       *-SP[23],AL           ; |1715| 
L193:    
        MOVW      DP,#_chkdsk_log
        MOVL      XAR4,@_chkdsk_log     ; |1716| 
        LCR       #_free                ; |1716| 
        ; call occurs [#_free] ; |1716| 
        MOV       AL,*-SP[23]           ; |1716| 
L194:    
        SUBB      SP,#30                ; |1723| 
        MOVL      XAR3,*--SP            ; |1723| 
        MOVL      XAR2,*--SP            ; |1723| 
        MOVL      XAR1,*--SP            ; |1723| 
        LRETR
        ; return occurs



	.sect	".text"
	.global	_f_checkdisk

;***************************************************************
;* FNAME: _f_checkdisk                  FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  4 SOE     *
;***************************************************************

_f_checkdisk:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        ADDB      SP,#2
        MOVZ      AR4,SP                ; |1748| 
        MOVZ      AR1,AH                ; |1744| 
        MOVZ      AR2,AL                ; |1744| 
        SUBB      XAR4,#2               ; |1748| 
        LCR       #_fnSetTask           ; |1748| 
        ; call occurs [#_fnSetTask] ; |1748| 
        CMPB      AL,#0                 ; |1748| 
        BF        L195,EQ               ; |1748| 
        ; branch occurs ; |1748| 
        MOVB      AL,#22                ; |1748| 
        BF        L196,UNC              ; |1748| 
        ; branch occurs ; |1748| 
L195:    
        MOVL      XAR4,*-SP[2]          ; |1750| 
        MOV       AL,AR2                ; |1750| 
        MOV       AH,AR1                ; |1750| 
        LCR       #_fn_checkdisk        ; |1750| 
        ; call occurs [#_fn_checkdisk] ; |1750| 
        MOVL      XAR4,*-SP[2]          ; |1752| 
        MOVZ      AR1,AL                ; |1750| 
        LCR       #__f_mutex_put        ; |1752| 
        ; call occurs [#__f_mutex_put] ; |1752| 
        MOV       AL,AR1                ; |1753| 
L196:    
        SUBB      SP,#2                 ; |1753| 
        MOVL      XAR2,*--SP            ; |1753| 
        MOVL      XAR1,*--SP            ; |1753| 
        LRETR
        ; return occurs


;***************************************************************
;* FAR STRINGS                                                 *
;***************************************************************
	.sect	".econst"
	.align	2
FSL1:	.string	10,"Directory: ",0
	.align	2
FSL2:	.string	"  Directory entry deleted: ",0
	.align	2
FSL3:	.string	"  Lost entry deleted (found in a subdirectory): /",0
	.align	2
FSL4:	.string	"  Entry deleted (reserved/bad cluster): ",0
	.align	2
FSL5:	.string	"  File size changed: ",0
	.align	2
FSL6:	.string	"  Start cluster changed: ",0
	.align	2
FSL7:	.string	"  Entry deleted (cross linked chain): ",0
	.align	2
FSL8:	.string	"  Lost directory chain saved: ",0
	.align	2
FSL9:	.string	"  Lost file chain saved: ",0
	.align	2
FSL10:	.string	"  Lost chain removed (first cluster/cnt): ",0
	.align	2
FSL11:	.string	"  Last cluster changed (bad next cluster value): ",0
	.align	2
FSL12:	.string	"  Moving lost directory: /",0
	.align	2
FSL13:	.string	"  '..' changed to root: ",0
	.align	2
FSL14:	.string	"FAT2 updated according to FAT1.",0
	.align	2
FSL15:	.string	"  Maximum directory depth exceeded.",0
	.align	2
FSL16:	.string	"  Not enough memory to complete operation.",0
	.align	2
FSL17:	.string	"  file: ",0
	.align	2
FSL18:	.string	0,0
	.align	2
FSL19:	.string	"w",0
	.align	2
FSL20:	.string	"LOST0000",0
	.align	2
FSL21:	.string	"%s  orig.size:%ld  new size:%ld",0
	.align	2
FSL22:	.string	"/",0
	.align	2
FSL23:	.string	"-",0
	.align	2
FSL24:	.string	"LOST*.*",0
	.align	2
FSL25:	.string	"*.*",0
	.align	2
FSL26:	.string	"..",0
	.align	2
FSL27:	.string	"%ld/%ld",0
;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_sprintf
	.global	_malloc
	.global	_free
	.global	_strlen
	.global	_strcpy
	.global	_strcat
	.global	_memcmp
	.global	_memset
	.global	_fn_chdrive
	.global	_fn_chdir
	.global	_fn_findfirst
	.global	_fn_findnext
	.global	_fn_close
	.global	_fn_open
	.global	_fn_write
	.global	_fn_putc
	.global	__f_addentry
	.global	__f_readsector
	.global	__f_writesector
	.global	__f_getclustervalue
	.global	__f_clustertopos
	.global	__f_getdecluster
	.global	__f_getvolume
	.global	__f_getlong
	.global	__f_setword
	.global	__f_setclustervalue
	.global	__f_setdecluster
	.global	__f_writedirsector
	.global	__f_setlong
	.global	__f_getmaxcluster
	.global	__f_mutex_put
	.global	_fnSetTask
	.global	_f_getdate
	.global	_f_gettime
	.global	I$$MOD
	.global	I$$DIV
	.global	___memcpy_ff
